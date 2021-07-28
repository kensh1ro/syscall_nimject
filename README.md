# syscall_nimject
using nim to inject shellcode via direct syscalls


Compile `generate.nim`:

`nim c generate.nim`

## Usage:

generate a raw shellcode using msfvenom or cobalt strile..

`generate.exe -f shellcode.bin`

this will produce a "main.exe" which is the backdoor, place it whereever you want.

## NOTE: Make sure to turn off Defender's Automatic Sample Upload, AND DO NOT UPLOAD TO VIRUS TOTAL.


### Special thanks to @ajpc500 for NimlineWhispers <3.

### A small note ⚠️ compiling the backdoor with `-d:release` or `-d:danger` switches somehow ruins `NtWriteVirtualMemory` needs more investigation.
