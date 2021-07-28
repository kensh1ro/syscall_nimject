{.passC: "-masm=intel".}
include "structs.nim"
# NtAllocateVirtualMemory -> jXqvrXZAnszpxgAQ
# NtWriteVirtualMemory -> KgnsbNKJvLjCzCdw
# NtCreateThreadEx -> RgsaByzRzNoIffDM
# NtClose -> qTBdyplOmaCsBBJV
# NtOpenProcess -> RxkzcQmUAYLRVNPU

proc jXqvrXZAnszpxgAQ*(ProcessHandle: HANDLE, BaseAddress: PVOID,
        ZeroBits: ULONG, RegionSize: PSIZE_T, AllocationType: ULONG,
        Protect: ULONG): NTSTATUS {.asmNoStackFrame.} =
    asm """
	mov rax, gs:[0x60]                                 
jXqvrXZAnszpxgAQ_Check_X_X_XXXX:               
	cmp dword ptr [rax+0x118], 6
	je  jXqvrXZAnszpxgAQ_Check_6_X_XXXX
	cmp dword ptr [rax+0x118], 10
	je  jXqvrXZAnszpxgAQ_Check_10_0_XXXX
	jmp jXqvrXZAnszpxgAQ_SystemCall_Unknown
jXqvrXZAnszpxgAQ_Check_6_X_XXXX:               
	cmp dword ptr [rax+0x11c], 1
	je  jXqvrXZAnszpxgAQ_Check_6_1_XXXX
	cmp dword ptr [rax+0x11c], 2
	je  jXqvrXZAnszpxgAQ_SystemCall_6_2_XXXX
	cmp dword ptr [rax+0x11c], 3
	je  jXqvrXZAnszpxgAQ_SystemCall_6_3_XXXX
	jmp jXqvrXZAnszpxgAQ_SystemCall_Unknown
jXqvrXZAnszpxgAQ_Check_6_1_XXXX:               
	cmp word ptr [rax+0x120], 7600
	je  jXqvrXZAnszpxgAQ_SystemCall_6_1_7600
	cmp word ptr [rax+0x120], 7601
	je  jXqvrXZAnszpxgAQ_SystemCall_6_1_7601
	jmp jXqvrXZAnszpxgAQ_SystemCall_Unknown
jXqvrXZAnszpxgAQ_Check_10_0_XXXX:              
	cmp word ptr [rax+0x120], 10240
	je  jXqvrXZAnszpxgAQ_SystemCall_10_0_10240
	cmp word ptr [rax+0x120], 10586
	je  jXqvrXZAnszpxgAQ_SystemCall_10_0_10586
	cmp word ptr [rax+0x120], 14393
	je  jXqvrXZAnszpxgAQ_SystemCall_10_0_14393
	cmp word ptr [rax+0x120], 15063
	je  jXqvrXZAnszpxgAQ_SystemCall_10_0_15063
	cmp word ptr [rax+0x120], 16299
	je  jXqvrXZAnszpxgAQ_SystemCall_10_0_16299
	cmp word ptr [rax+0x120], 17134
	je  jXqvrXZAnszpxgAQ_SystemCall_10_0_17134
	cmp word ptr [rax+0x120], 17763
	je  jXqvrXZAnszpxgAQ_SystemCall_10_0_17763
	cmp word ptr [rax+0x120], 18362
	je  jXqvrXZAnszpxgAQ_SystemCall_10_0_18362
	cmp word ptr [rax+0x120], 18363
	je  jXqvrXZAnszpxgAQ_SystemCall_10_0_18363
	cmp word ptr [rax+0x120], 19041
	je  jXqvrXZAnszpxgAQ_SystemCall_10_0_19041
	cmp word ptr [rax+0x120], 19042
	je  jXqvrXZAnszpxgAQ_SystemCall_10_0_19042
	jmp jXqvrXZAnszpxgAQ_SystemCall_Unknown
jXqvrXZAnszpxgAQ_SystemCall_6_1_7600:          
	mov eax, 0x0015
	jmp jXqvrXZAnszpxgAQ_Epilogue
jXqvrXZAnszpxgAQ_SystemCall_6_1_7601:          
	mov eax, 0x0015
	jmp jXqvrXZAnszpxgAQ_Epilogue
jXqvrXZAnszpxgAQ_SystemCall_6_2_XXXX:          
	mov eax, 0x0016
	jmp jXqvrXZAnszpxgAQ_Epilogue
jXqvrXZAnszpxgAQ_SystemCall_6_3_XXXX:          
	mov eax, 0x0017
	jmp jXqvrXZAnszpxgAQ_Epilogue
jXqvrXZAnszpxgAQ_SystemCall_10_0_10240:        
	mov eax, 0x0018
	jmp jXqvrXZAnszpxgAQ_Epilogue
jXqvrXZAnszpxgAQ_SystemCall_10_0_10586:        
	mov eax, 0x0018
	jmp jXqvrXZAnszpxgAQ_Epilogue
jXqvrXZAnszpxgAQ_SystemCall_10_0_14393:        
	mov eax, 0x0018
	jmp jXqvrXZAnszpxgAQ_Epilogue
jXqvrXZAnszpxgAQ_SystemCall_10_0_15063:        
	mov eax, 0x0018
	jmp jXqvrXZAnszpxgAQ_Epilogue
jXqvrXZAnszpxgAQ_SystemCall_10_0_16299:        
	mov eax, 0x0018
	jmp jXqvrXZAnszpxgAQ_Epilogue
jXqvrXZAnszpxgAQ_SystemCall_10_0_17134:        
	mov eax, 0x0018
	jmp jXqvrXZAnszpxgAQ_Epilogue
jXqvrXZAnszpxgAQ_SystemCall_10_0_17763:        
	mov eax, 0x0018
	jmp jXqvrXZAnszpxgAQ_Epilogue
jXqvrXZAnszpxgAQ_SystemCall_10_0_18362:        
	mov eax, 0x0018
	jmp jXqvrXZAnszpxgAQ_Epilogue
jXqvrXZAnszpxgAQ_SystemCall_10_0_18363:        
	mov eax, 0x0018
	jmp jXqvrXZAnszpxgAQ_Epilogue
jXqvrXZAnszpxgAQ_SystemCall_10_0_19041:        
	mov eax, 0x0018
	jmp jXqvrXZAnszpxgAQ_Epilogue
jXqvrXZAnszpxgAQ_SystemCall_10_0_19042:        
	mov eax, 0x0018
	jmp jXqvrXZAnszpxgAQ_Epilogue
jXqvrXZAnszpxgAQ_SystemCall_Unknown:           
	ret
jXqvrXZAnszpxgAQ_Epilogue:
	mov r10, rcx
	syscall
	ret
    """

proc qTBdyplOmaCsBBJV*(Handle: HANDLE): NTSTATUS {.asmNoStackFrame.} =
    asm """
	mov rax, gs:[0x60]                 
qTBdyplOmaCsBBJV_Check_X_X_XXXX:               
	cmp dword ptr [rax+0x118], 6
	je  qTBdyplOmaCsBBJV_Check_6_X_XXXX
	cmp dword ptr [rax+0x118], 10
	je  qTBdyplOmaCsBBJV_Check_10_0_XXXX
	jmp qTBdyplOmaCsBBJV_SystemCall_Unknown
qTBdyplOmaCsBBJV_Check_6_X_XXXX:               
	cmp dword ptr [rax+0x11c], 1
	je  qTBdyplOmaCsBBJV_Check_6_1_XXXX
	cmp dword ptr [rax+0x11c], 2
	je  qTBdyplOmaCsBBJV_SystemCall_6_2_XXXX
	cmp dword ptr [rax+0x11c], 3
	je  qTBdyplOmaCsBBJV_SystemCall_6_3_XXXX
	jmp qTBdyplOmaCsBBJV_SystemCall_Unknown
qTBdyplOmaCsBBJV_Check_6_1_XXXX:               
	cmp word ptr [rax+0x120], 7600
	je  qTBdyplOmaCsBBJV_SystemCall_6_1_7600
	cmp word ptr [rax+0x120], 7601
	je  qTBdyplOmaCsBBJV_SystemCall_6_1_7601
	jmp qTBdyplOmaCsBBJV_SystemCall_Unknown
qTBdyplOmaCsBBJV_Check_10_0_XXXX:              
	cmp word ptr [rax+0x120], 10240
	je  qTBdyplOmaCsBBJV_SystemCall_10_0_10240
	cmp word ptr [rax+0x120], 10586
	je  qTBdyplOmaCsBBJV_SystemCall_10_0_10586
	cmp word ptr [rax+0x120], 14393
	je  qTBdyplOmaCsBBJV_SystemCall_10_0_14393
	cmp word ptr [rax+0x120], 15063
	je  qTBdyplOmaCsBBJV_SystemCall_10_0_15063
	cmp word ptr [rax+0x120], 16299
	je  qTBdyplOmaCsBBJV_SystemCall_10_0_16299
	cmp word ptr [rax+0x120], 17134
	je  qTBdyplOmaCsBBJV_SystemCall_10_0_17134
	cmp word ptr [rax+0x120], 17763
	je  qTBdyplOmaCsBBJV_SystemCall_10_0_17763
	cmp word ptr [rax+0x120], 18362
	je  qTBdyplOmaCsBBJV_SystemCall_10_0_18362
	cmp word ptr [rax+0x120], 18363
	je  qTBdyplOmaCsBBJV_SystemCall_10_0_18363
	cmp word ptr [rax+0x120], 19041
	je  qTBdyplOmaCsBBJV_SystemCall_10_0_19041
	cmp word ptr [rax+0x120], 19042
	je  qTBdyplOmaCsBBJV_SystemCall_10_0_19042
	jmp qTBdyplOmaCsBBJV_SystemCall_Unknown
qTBdyplOmaCsBBJV_SystemCall_6_1_7600:          
	mov eax, 0x000c
	jmp qTBdyplOmaCsBBJV_Epilogue
qTBdyplOmaCsBBJV_SystemCall_6_1_7601:          
	mov eax, 0x000c
	jmp qTBdyplOmaCsBBJV_Epilogue
qTBdyplOmaCsBBJV_SystemCall_6_2_XXXX:          
	mov eax, 0x000d
	jmp qTBdyplOmaCsBBJV_Epilogue
qTBdyplOmaCsBBJV_SystemCall_6_3_XXXX:          
	mov eax, 0x000e
	jmp qTBdyplOmaCsBBJV_Epilogue
qTBdyplOmaCsBBJV_SystemCall_10_0_10240:        
	mov eax, 0x000f
	jmp qTBdyplOmaCsBBJV_Epilogue
qTBdyplOmaCsBBJV_SystemCall_10_0_10586:        
	mov eax, 0x000f
	jmp qTBdyplOmaCsBBJV_Epilogue
qTBdyplOmaCsBBJV_SystemCall_10_0_14393:        
	mov eax, 0x000f
	jmp qTBdyplOmaCsBBJV_Epilogue
qTBdyplOmaCsBBJV_SystemCall_10_0_15063:        
	mov eax, 0x000f
	jmp qTBdyplOmaCsBBJV_Epilogue
qTBdyplOmaCsBBJV_SystemCall_10_0_16299:        
	mov eax, 0x000f
	jmp qTBdyplOmaCsBBJV_Epilogue
qTBdyplOmaCsBBJV_SystemCall_10_0_17134:        
	mov eax, 0x000f
	jmp qTBdyplOmaCsBBJV_Epilogue
qTBdyplOmaCsBBJV_SystemCall_10_0_17763:        
	mov eax, 0x000f
	jmp qTBdyplOmaCsBBJV_Epilogue
qTBdyplOmaCsBBJV_SystemCall_10_0_18362:        
	mov eax, 0x000f
	jmp qTBdyplOmaCsBBJV_Epilogue
qTBdyplOmaCsBBJV_SystemCall_10_0_18363:        
	mov eax, 0x000f
	jmp qTBdyplOmaCsBBJV_Epilogue
qTBdyplOmaCsBBJV_SystemCall_10_0_19041:        
	mov eax, 0x000f
	jmp qTBdyplOmaCsBBJV_Epilogue
qTBdyplOmaCsBBJV_SystemCall_10_0_19042:        
	mov eax, 0x000f
	jmp qTBdyplOmaCsBBJV_Epilogue
qTBdyplOmaCsBBJV_SystemCall_Unknown:           
	ret
qTBdyplOmaCsBBJV_Epilogue:
	mov r10, rcx
	syscall
	ret
    """

proc RgsaByzRzNoIffDM*(ThreadHandle: PHANDLE, DesiredAccess: ACCESS_MASK,
        ObjectAttributes: POBJECT_ATTRIBUTES, ProcessHandle: HANDLE,
        StartRoutine: PVOID, Argument: PVOID, CreateFlags: ULONG,
        ZeroBits: SIZE_T, StackSize: SIZE_T, MaximumStackSize: SIZE_T,
        AttributeList: PPS_ATTRIBUTE_LIST): NTSTATUS {.asmNoStackFrame.} =
    asm """
	mov rax, gs:[0x60]                          
RgsaByzRzNoIffDM_Check_X_X_XXXX:               
	cmp dword ptr [rax+0x118], 6
	je  RgsaByzRzNoIffDM_Check_6_X_XXXX
	cmp dword ptr [rax+0x118], 10
	je  RgsaByzRzNoIffDM_Check_10_0_XXXX
	jmp RgsaByzRzNoIffDM_SystemCall_Unknown
RgsaByzRzNoIffDM_Check_6_X_XXXX:               
	cmp dword ptr [rax+0x11c], 1
	je  RgsaByzRzNoIffDM_Check_6_1_XXXX
	cmp dword ptr [rax+0x11c], 2
	je  RgsaByzRzNoIffDM_SystemCall_6_2_XXXX
	cmp dword ptr [rax+0x11c], 3
	je  RgsaByzRzNoIffDM_SystemCall_6_3_XXXX
	jmp RgsaByzRzNoIffDM_SystemCall_Unknown
RgsaByzRzNoIffDM_Check_6_1_XXXX:               
	cmp word ptr [rax+0x120], 7600
	je  RgsaByzRzNoIffDM_SystemCall_6_1_7600
	cmp word ptr [rax+0x120], 7601
	je  RgsaByzRzNoIffDM_SystemCall_6_1_7601
	jmp RgsaByzRzNoIffDM_SystemCall_Unknown
RgsaByzRzNoIffDM_Check_10_0_XXXX:              
	cmp word ptr [rax+0x120], 10240
	je  RgsaByzRzNoIffDM_SystemCall_10_0_10240
	cmp word ptr [rax+0x120], 10586
	je  RgsaByzRzNoIffDM_SystemCall_10_0_10586
	cmp word ptr [rax+0x120], 14393
	je  RgsaByzRzNoIffDM_SystemCall_10_0_14393
	cmp word ptr [rax+0x120], 15063
	je  RgsaByzRzNoIffDM_SystemCall_10_0_15063
	cmp word ptr [rax+0x120], 16299
	je  RgsaByzRzNoIffDM_SystemCall_10_0_16299
	cmp word ptr [rax+0x120], 17134
	je  RgsaByzRzNoIffDM_SystemCall_10_0_17134
	cmp word ptr [rax+0x120], 17763
	je  RgsaByzRzNoIffDM_SystemCall_10_0_17763
	cmp word ptr [rax+0x120], 18362
	je  RgsaByzRzNoIffDM_SystemCall_10_0_18362
	cmp word ptr [rax+0x120], 18363
	je  RgsaByzRzNoIffDM_SystemCall_10_0_18363
	cmp word ptr [rax+0x120], 19041
	je  RgsaByzRzNoIffDM_SystemCall_10_0_19041
	cmp word ptr [rax+0x120], 19042
	je  RgsaByzRzNoIffDM_SystemCall_10_0_19042
	jmp RgsaByzRzNoIffDM_SystemCall_Unknown
RgsaByzRzNoIffDM_SystemCall_6_1_7600:          
	mov eax, 0x00a5
	jmp RgsaByzRzNoIffDM_Epilogue
RgsaByzRzNoIffDM_SystemCall_6_1_7601:          
	mov eax, 0x00a5
	jmp RgsaByzRzNoIffDM_Epilogue
RgsaByzRzNoIffDM_SystemCall_6_2_XXXX:          
	mov eax, 0x00af
	jmp RgsaByzRzNoIffDM_Epilogue
RgsaByzRzNoIffDM_SystemCall_6_3_XXXX:          
	mov eax, 0x00b0
	jmp RgsaByzRzNoIffDM_Epilogue
RgsaByzRzNoIffDM_SystemCall_10_0_10240:        
	mov eax, 0x00b3
	jmp RgsaByzRzNoIffDM_Epilogue
RgsaByzRzNoIffDM_SystemCall_10_0_10586:        
	mov eax, 0x00b4
	jmp RgsaByzRzNoIffDM_Epilogue
RgsaByzRzNoIffDM_SystemCall_10_0_14393:        
	mov eax, 0x00b6
	jmp RgsaByzRzNoIffDM_Epilogue
RgsaByzRzNoIffDM_SystemCall_10_0_15063:        
	mov eax, 0x00b9
	jmp RgsaByzRzNoIffDM_Epilogue
RgsaByzRzNoIffDM_SystemCall_10_0_16299:        
	mov eax, 0x00ba
	jmp RgsaByzRzNoIffDM_Epilogue
RgsaByzRzNoIffDM_SystemCall_10_0_17134:        
	mov eax, 0x00bb
	jmp RgsaByzRzNoIffDM_Epilogue
RgsaByzRzNoIffDM_SystemCall_10_0_17763:        
	mov eax, 0x00bc
	jmp RgsaByzRzNoIffDM_Epilogue
RgsaByzRzNoIffDM_SystemCall_10_0_18362:        
	mov eax, 0x00bd
	jmp RgsaByzRzNoIffDM_Epilogue
RgsaByzRzNoIffDM_SystemCall_10_0_18363:        
	mov eax, 0x00bd
	jmp RgsaByzRzNoIffDM_Epilogue
RgsaByzRzNoIffDM_SystemCall_10_0_19041:        
	mov eax, 0x00c1
	jmp RgsaByzRzNoIffDM_Epilogue
RgsaByzRzNoIffDM_SystemCall_10_0_19042:        
	mov eax, 0x00c1
	jmp RgsaByzRzNoIffDM_Epilogue
RgsaByzRzNoIffDM_SystemCall_Unknown:           
	ret
RgsaByzRzNoIffDM_Epilogue:
	mov r10, rcx
	syscall
	ret
    """

proc RxkzcQmUAYLRVNPU*(ProcessHandle: PHANDLE, DesiredAccess: ACCESS_MASK,
        ObjectAttributes: POBJECT_ATTRIBUTES, ClientId: PCLIENT_ID): NTSTATUS {.
        asmNoStackFrame.} =
    asm """
	mov rax, gs:[0x60]                       
RxkzcQmUAYLRVNPU_Check_X_X_XXXX:               
	cmp dword ptr [rax+0x118], 6
	je  RxkzcQmUAYLRVNPU_Check_6_X_XXXX
	cmp dword ptr [rax+0x118], 10
	je  RxkzcQmUAYLRVNPU_Check_10_0_XXXX
	jmp RxkzcQmUAYLRVNPU_SystemCall_Unknown
RxkzcQmUAYLRVNPU_Check_6_X_XXXX:               
	cmp dword ptr [rax+0x11c], 1
	je  RxkzcQmUAYLRVNPU_Check_6_1_XXXX
	cmp dword ptr [rax+0x11c], 2
	je  RxkzcQmUAYLRVNPU_SystemCall_6_2_XXXX
	cmp dword ptr [rax+0x11c], 3
	je  RxkzcQmUAYLRVNPU_SystemCall_6_3_XXXX
	jmp RxkzcQmUAYLRVNPU_SystemCall_Unknown
RxkzcQmUAYLRVNPU_Check_6_1_XXXX:               
	cmp word ptr [rax+0x120], 7600
	je  RxkzcQmUAYLRVNPU_SystemCall_6_1_7600
	cmp word ptr [rax+0x120], 7601
	je  RxkzcQmUAYLRVNPU_SystemCall_6_1_7601
	jmp RxkzcQmUAYLRVNPU_SystemCall_Unknown
RxkzcQmUAYLRVNPU_Check_10_0_XXXX:              
	cmp word ptr [rax+0x120], 10240
	je  RxkzcQmUAYLRVNPU_SystemCall_10_0_10240
	cmp word ptr [rax+0x120], 10586
	je  RxkzcQmUAYLRVNPU_SystemCall_10_0_10586
	cmp word ptr [rax+0x120], 14393
	je  RxkzcQmUAYLRVNPU_SystemCall_10_0_14393
	cmp word ptr [rax+0x120], 15063
	je  RxkzcQmUAYLRVNPU_SystemCall_10_0_15063
	cmp word ptr [rax+0x120], 16299
	je  RxkzcQmUAYLRVNPU_SystemCall_10_0_16299
	cmp word ptr [rax+0x120], 17134
	je  RxkzcQmUAYLRVNPU_SystemCall_10_0_17134
	cmp word ptr [rax+0x120], 17763
	je  RxkzcQmUAYLRVNPU_SystemCall_10_0_17763
	cmp word ptr [rax+0x120], 18362
	je  RxkzcQmUAYLRVNPU_SystemCall_10_0_18362
	cmp word ptr [rax+0x120], 18363
	je  RxkzcQmUAYLRVNPU_SystemCall_10_0_18363
	cmp word ptr [rax+0x120], 19041
	je  RxkzcQmUAYLRVNPU_SystemCall_10_0_19041
	cmp word ptr [rax+0x120], 19042
	je  RxkzcQmUAYLRVNPU_SystemCall_10_0_19042
	jmp RxkzcQmUAYLRVNPU_SystemCall_Unknown
RxkzcQmUAYLRVNPU_SystemCall_6_1_7600:          
	mov eax, 0x0023
	jmp RxkzcQmUAYLRVNPU_Epilogue
RxkzcQmUAYLRVNPU_SystemCall_6_1_7601:          
	mov eax, 0x0023
	jmp RxkzcQmUAYLRVNPU_Epilogue
RxkzcQmUAYLRVNPU_SystemCall_6_2_XXXX:          
	mov eax, 0x0024
	jmp RxkzcQmUAYLRVNPU_Epilogue
RxkzcQmUAYLRVNPU_SystemCall_6_3_XXXX:          
	mov eax, 0x0025
	jmp RxkzcQmUAYLRVNPU_Epilogue
RxkzcQmUAYLRVNPU_SystemCall_10_0_10240:        
	mov eax, 0x0026
	jmp RxkzcQmUAYLRVNPU_Epilogue
RxkzcQmUAYLRVNPU_SystemCall_10_0_10586:        
	mov eax, 0x0026
	jmp RxkzcQmUAYLRVNPU_Epilogue
RxkzcQmUAYLRVNPU_SystemCall_10_0_14393:        
	mov eax, 0x0026
	jmp RxkzcQmUAYLRVNPU_Epilogue
RxkzcQmUAYLRVNPU_SystemCall_10_0_15063:        
	mov eax, 0x0026
	jmp RxkzcQmUAYLRVNPU_Epilogue
RxkzcQmUAYLRVNPU_SystemCall_10_0_16299:        
	mov eax, 0x0026
	jmp RxkzcQmUAYLRVNPU_Epilogue
RxkzcQmUAYLRVNPU_SystemCall_10_0_17134:        
	mov eax, 0x0026
	jmp RxkzcQmUAYLRVNPU_Epilogue
RxkzcQmUAYLRVNPU_SystemCall_10_0_17763:        
	mov eax, 0x0026
	jmp RxkzcQmUAYLRVNPU_Epilogue
RxkzcQmUAYLRVNPU_SystemCall_10_0_18362:        
	mov eax, 0x0026
	jmp RxkzcQmUAYLRVNPU_Epilogue
RxkzcQmUAYLRVNPU_SystemCall_10_0_18363:        
	mov eax, 0x0026
	jmp RxkzcQmUAYLRVNPU_Epilogue
RxkzcQmUAYLRVNPU_SystemCall_10_0_19041:        
	mov eax, 0x0026
	jmp RxkzcQmUAYLRVNPU_Epilogue
RxkzcQmUAYLRVNPU_SystemCall_10_0_19042:        
	mov eax, 0x0026
	jmp RxkzcQmUAYLRVNPU_Epilogue
RxkzcQmUAYLRVNPU_SystemCall_Unknown:           
	ret
RxkzcQmUAYLRVNPU_Epilogue:
	mov r10, rcx
	syscall
	ret
    """

proc KgnsbNKJvLjCzCdw*(ProcessHandle: HANDLE, BaseAddress: PVOID, Buffer: PVOID,
        NumberOfBytesToWrite: SIZE_T,
        NumberOfBytesWritten: PSIZE_T): NTSTATUS {.asmNoStackFrame.} =
    asm """
	mov rax, gs:[0x60]                              
KgnsbNKJvLjCzCdw_Check_X_X_XXXX:               
	cmp dword ptr [rax+0x118], 6
	je  KgnsbNKJvLjCzCdw_Check_6_X_XXXX
	cmp dword ptr [rax+0x118], 10
	je  KgnsbNKJvLjCzCdw_Check_10_0_XXXX
	jmp KgnsbNKJvLjCzCdw_SystemCall_Unknown
KgnsbNKJvLjCzCdw_Check_6_X_XXXX:               
	cmp dword ptr [rax+0x11c], 1
	je  KgnsbNKJvLjCzCdw_Check_6_1_XXXX
	cmp dword ptr [rax+0x11c], 2
	je  KgnsbNKJvLjCzCdw_SystemCall_6_2_XXXX
	cmp dword ptr [rax+0x11c], 3
	je  KgnsbNKJvLjCzCdw_SystemCall_6_3_XXXX
	jmp KgnsbNKJvLjCzCdw_SystemCall_Unknown
KgnsbNKJvLjCzCdw_Check_6_1_XXXX:               
	cmp word ptr [rax+0x120], 7600
	je  KgnsbNKJvLjCzCdw_SystemCall_6_1_7600
	cmp word ptr [rax+0x120], 7601
	je  KgnsbNKJvLjCzCdw_SystemCall_6_1_7601
	jmp KgnsbNKJvLjCzCdw_SystemCall_Unknown
KgnsbNKJvLjCzCdw_Check_10_0_XXXX:              
	cmp word ptr [rax+0x120], 10240
	je  KgnsbNKJvLjCzCdw_SystemCall_10_0_10240
	cmp word ptr [rax+0x120], 10586
	je  KgnsbNKJvLjCzCdw_SystemCall_10_0_10586
	cmp word ptr [rax+0x120], 14393
	je  KgnsbNKJvLjCzCdw_SystemCall_10_0_14393
	cmp word ptr [rax+0x120], 15063
	je  KgnsbNKJvLjCzCdw_SystemCall_10_0_15063
	cmp word ptr [rax+0x120], 16299
	je  KgnsbNKJvLjCzCdw_SystemCall_10_0_16299
	cmp word ptr [rax+0x120], 17134
	je  KgnsbNKJvLjCzCdw_SystemCall_10_0_17134
	cmp word ptr [rax+0x120], 17763
	je  KgnsbNKJvLjCzCdw_SystemCall_10_0_17763
	cmp word ptr [rax+0x120], 18362
	je  KgnsbNKJvLjCzCdw_SystemCall_10_0_18362
	cmp word ptr [rax+0x120], 18363
	je  KgnsbNKJvLjCzCdw_SystemCall_10_0_18363
	cmp word ptr [rax+0x120], 19041
	je  KgnsbNKJvLjCzCdw_SystemCall_10_0_19041
	cmp word ptr [rax+0x120], 19042
	je  KgnsbNKJvLjCzCdw_SystemCall_10_0_19042
	jmp KgnsbNKJvLjCzCdw_SystemCall_Unknown
KgnsbNKJvLjCzCdw_SystemCall_6_1_7600:          
	mov eax, 0x0037
	jmp KgnsbNKJvLjCzCdw_Epilogue
KgnsbNKJvLjCzCdw_SystemCall_6_1_7601:          
	mov eax, 0x0037
	jmp KgnsbNKJvLjCzCdw_Epilogue
KgnsbNKJvLjCzCdw_SystemCall_6_2_XXXX:          
	mov eax, 0x0038
	jmp KgnsbNKJvLjCzCdw_Epilogue
KgnsbNKJvLjCzCdw_SystemCall_6_3_XXXX:          
	mov eax, 0x0039
	jmp KgnsbNKJvLjCzCdw_Epilogue
KgnsbNKJvLjCzCdw_SystemCall_10_0_10240:        
	mov eax, 0x003a
	jmp KgnsbNKJvLjCzCdw_Epilogue
KgnsbNKJvLjCzCdw_SystemCall_10_0_10586:        
	mov eax, 0x003a
	jmp KgnsbNKJvLjCzCdw_Epilogue
KgnsbNKJvLjCzCdw_SystemCall_10_0_14393:        
	mov eax, 0x003a
	jmp KgnsbNKJvLjCzCdw_Epilogue
KgnsbNKJvLjCzCdw_SystemCall_10_0_15063:        
	mov eax, 0x003a
	jmp KgnsbNKJvLjCzCdw_Epilogue
KgnsbNKJvLjCzCdw_SystemCall_10_0_16299:        
	mov eax, 0x003a
	jmp KgnsbNKJvLjCzCdw_Epilogue
KgnsbNKJvLjCzCdw_SystemCall_10_0_17134:        
	mov eax, 0x003a
	jmp KgnsbNKJvLjCzCdw_Epilogue
KgnsbNKJvLjCzCdw_SystemCall_10_0_17763:        
	mov eax, 0x003a
	jmp KgnsbNKJvLjCzCdw_Epilogue
KgnsbNKJvLjCzCdw_SystemCall_10_0_18362:        
	mov eax, 0x003a
	jmp KgnsbNKJvLjCzCdw_Epilogue
KgnsbNKJvLjCzCdw_SystemCall_10_0_18363:        
	mov eax, 0x003a
	jmp KgnsbNKJvLjCzCdw_Epilogue
KgnsbNKJvLjCzCdw_SystemCall_10_0_19041:        
	mov eax, 0x003a
	jmp KgnsbNKJvLjCzCdw_Epilogue
KgnsbNKJvLjCzCdw_SystemCall_10_0_19042:        
	mov eax, 0x003a
	jmp KgnsbNKJvLjCzCdw_Epilogue
KgnsbNKJvLjCzCdw_SystemCall_Unknown:           
	ret
KgnsbNKJvLjCzCdw_Epilogue:
	mov r10, rcx
	syscall
	ret
    """

