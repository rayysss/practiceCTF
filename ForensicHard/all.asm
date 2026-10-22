
no_auth_mistery:     file format elf64-x86-64


Disassembly of section .init:

0000000000000968 <_init>:
 968:	48 83 ec 08          	sub    rsp,0x8
 96c:	48 8b 05 75 16 20 00 	mov    rax,QWORD PTR [rip+0x201675]        # 201fe8 <__gmon_start__>
 973:	48 85 c0             	test   rax,rax
 976:	74 02                	je     97a <_init+0x12>
 978:	ff d0                	call   rax
 97a:	48 83 c4 08          	add    rsp,0x8
 97e:	c3                   	ret

Disassembly of section .plt:

0000000000000980 <recv@plt-0x10>:
 980:	ff 35 82 16 20 00    	push   QWORD PTR [rip+0x201682]        # 202008 <_GLOBAL_OFFSET_TABLE_+0x8>
 986:	ff 25 84 16 20 00    	jmp    QWORD PTR [rip+0x201684]        # 202010 <_GLOBAL_OFFSET_TABLE_+0x10>
 98c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

0000000000000990 <recv@plt>:
 990:	ff 25 82 16 20 00    	jmp    QWORD PTR [rip+0x201682]        # 202018 <recv@GLIBC_2.2.5>
 996:	68 00 00 00 00       	push   0x0
 99b:	e9 e0 ff ff ff       	jmp    980 <_init+0x18>

00000000000009a0 <puts@plt>:
 9a0:	ff 25 7a 16 20 00    	jmp    QWORD PTR [rip+0x20167a]        # 202020 <puts@GLIBC_2.2.5>
 9a6:	68 01 00 00 00       	push   0x1
 9ab:	e9 d0 ff ff ff       	jmp    980 <_init+0x18>

00000000000009b0 <fread@plt>:
 9b0:	ff 25 72 16 20 00    	jmp    QWORD PTR [rip+0x201672]        # 202028 <fread@GLIBC_2.2.5>
 9b6:	68 02 00 00 00       	push   0x2
 9bb:	e9 c0 ff ff ff       	jmp    980 <_init+0x18>

00000000000009c0 <fclose@plt>:
 9c0:	ff 25 6a 16 20 00    	jmp    QWORD PTR [rip+0x20166a]        # 202030 <fclose@GLIBC_2.2.5>
 9c6:	68 03 00 00 00       	push   0x3
 9cb:	e9 b0 ff ff ff       	jmp    980 <_init+0x18>

00000000000009d0 <shutdown@plt>:
 9d0:	ff 25 62 16 20 00    	jmp    QWORD PTR [rip+0x201662]        # 202038 <shutdown@GLIBC_2.2.5>
 9d6:	68 04 00 00 00       	push   0x4
 9db:	e9 a0 ff ff ff       	jmp    980 <_init+0x18>

00000000000009e0 <htons@plt>:
 9e0:	ff 25 5a 16 20 00    	jmp    QWORD PTR [rip+0x20165a]        # 202040 <htons@GLIBC_2.2.5>
 9e6:	68 05 00 00 00       	push   0x5
 9eb:	e9 90 ff ff ff       	jmp    980 <_init+0x18>

00000000000009f0 <send@plt>:
 9f0:	ff 25 52 16 20 00    	jmp    QWORD PTR [rip+0x201652]        # 202048 <send@GLIBC_2.2.5>
 9f6:	68 06 00 00 00       	push   0x6
 9fb:	e9 80 ff ff ff       	jmp    980 <_init+0x18>

0000000000000a00 <printf@plt>:
 a00:	ff 25 4a 16 20 00    	jmp    QWORD PTR [rip+0x20164a]        # 202050 <printf@GLIBC_2.2.5>
 a06:	68 07 00 00 00       	push   0x7
 a0b:	e9 70 ff ff ff       	jmp    980 <_init+0x18>

0000000000000a10 <fputc@plt>:
 a10:	ff 25 42 16 20 00    	jmp    QWORD PTR [rip+0x201642]        # 202058 <fputc@GLIBC_2.2.5>
 a16:	68 08 00 00 00       	push   0x8
 a1b:	e9 60 ff ff ff       	jmp    980 <_init+0x18>

0000000000000a20 <strcmp@plt>:
 a20:	ff 25 3a 16 20 00    	jmp    QWORD PTR [rip+0x20163a]        # 202060 <strcmp@GLIBC_2.2.5>
 a26:	68 09 00 00 00       	push   0x9
 a2b:	e9 50 ff ff ff       	jmp    980 <_init+0x18>

0000000000000a30 <gethostbyname@plt>:
 a30:	ff 25 32 16 20 00    	jmp    QWORD PTR [rip+0x201632]        # 202068 <gethostbyname@GLIBC_2.2.5>
 a36:	68 0a 00 00 00       	push   0xa
 a3b:	e9 40 ff ff ff       	jmp    980 <_init+0x18>

0000000000000a40 <ftell@plt>:
 a40:	ff 25 2a 16 20 00    	jmp    QWORD PTR [rip+0x20162a]        # 202070 <ftell@GLIBC_2.2.5>
 a46:	68 0b 00 00 00       	push   0xb
 a4b:	e9 30 ff ff ff       	jmp    980 <_init+0x18>

0000000000000a50 <malloc@plt>:
 a50:	ff 25 22 16 20 00    	jmp    QWORD PTR [rip+0x201622]        # 202078 <malloc@GLIBC_2.2.5>
 a56:	68 0c 00 00 00       	push   0xc
 a5b:	e9 20 ff ff ff       	jmp    980 <_init+0x18>

0000000000000a60 <fseek@plt>:
 a60:	ff 25 1a 16 20 00    	jmp    QWORD PTR [rip+0x20161a]        # 202080 <fseek@GLIBC_2.2.5>
 a66:	68 0d 00 00 00       	push   0xd
 a6b:	e9 10 ff ff ff       	jmp    980 <_init+0x18>

0000000000000a70 <bcopy@plt>:
 a70:	ff 25 12 16 20 00    	jmp    QWORD PTR [rip+0x201612]        # 202088 <bcopy@GLIBC_2.2.5>
 a76:	68 0e 00 00 00       	push   0xe
 a7b:	e9 00 ff ff ff       	jmp    980 <_init+0x18>

0000000000000a80 <fopen@plt>:
 a80:	ff 25 0a 16 20 00    	jmp    QWORD PTR [rip+0x20160a]        # 202090 <fopen@GLIBC_2.2.5>
 a86:	68 0f 00 00 00       	push   0xf
 a8b:	e9 f0 fe ff ff       	jmp    980 <_init+0x18>

0000000000000a90 <exit@plt>:
 a90:	ff 25 02 16 20 00    	jmp    QWORD PTR [rip+0x201602]        # 202098 <exit@GLIBC_2.2.5>
 a96:	68 10 00 00 00       	push   0x10
 a9b:	e9 e0 fe ff ff       	jmp    980 <_init+0x18>

0000000000000aa0 <connect@plt>:
 aa0:	ff 25 fa 15 20 00    	jmp    QWORD PTR [rip+0x2015fa]        # 2020a0 <connect@GLIBC_2.2.5>
 aa6:	68 11 00 00 00       	push   0x11
 aab:	e9 d0 fe ff ff       	jmp    980 <_init+0x18>

0000000000000ab0 <fwrite@plt>:
 ab0:	ff 25 f2 15 20 00    	jmp    QWORD PTR [rip+0x2015f2]        # 2020a8 <fwrite@GLIBC_2.2.5>
 ab6:	68 12 00 00 00       	push   0x12
 abb:	e9 c0 fe ff ff       	jmp    980 <_init+0x18>

0000000000000ac0 <socket@plt>:
 ac0:	ff 25 ea 15 20 00    	jmp    QWORD PTR [rip+0x2015ea]        # 2020b0 <socket@GLIBC_2.2.5>
 ac6:	68 13 00 00 00       	push   0x13
 acb:	e9 b0 fe ff ff       	jmp    980 <_init+0x18>

Disassembly of section .plt.got:

0000000000000ad0 <__cxa_finalize@plt>:
 ad0:	ff 25 22 15 20 00    	jmp    QWORD PTR [rip+0x201522]        # 201ff8 <__cxa_finalize@GLIBC_2.2.5>
 ad6:	66 90                	xchg   ax,ax

Disassembly of section .text:

0000000000000ae0 <_start>:
     ae0:	31 ed                	xor    ebp,ebp
     ae2:	49 89 d1             	mov    r9,rdx
     ae5:	5e                   	pop    rsi
     ae6:	48 89 e2             	mov    rdx,rsp
     ae9:	48 83 e4 f0          	and    rsp,0xfffffffffffffff0
     aed:	50                   	push   rax
     aee:	54                   	push   rsp
     aef:	4c 8d 05 da 07 00 00 	lea    r8,[rip+0x7da]        # 12d0 <__libc_csu_fini>
     af6:	48 8d 0d 73 07 00 00 	lea    rcx,[rip+0x773]        # 1270 <__libc_csu_init>
     afd:	48 8d 3d 4e 05 00 00 	lea    rdi,[rip+0x54e]        # 1052 <main>
     b04:	ff 15 d6 14 20 00    	call   QWORD PTR [rip+0x2014d6]        # 201fe0 <__libc_start_main@GLIBC_2.2.5>
     b0a:	f4                   	hlt
     b0b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

0000000000000b10 <deregister_tm_clones>:
     b10:	48 8d 3d b1 15 20 00 	lea    rdi,[rip+0x2015b1]        # 2020c8 <__TMC_END__>
     b17:	55                   	push   rbp
     b18:	48 8d 05 a9 15 20 00 	lea    rax,[rip+0x2015a9]        # 2020c8 <__TMC_END__>
     b1f:	48 39 f8             	cmp    rax,rdi
     b22:	48 89 e5             	mov    rbp,rsp
     b25:	74 19                	je     b40 <deregister_tm_clones+0x30>
     b27:	48 8b 05 aa 14 20 00 	mov    rax,QWORD PTR [rip+0x2014aa]        # 201fd8 <_ITM_deregisterTMCloneTable>
     b2e:	48 85 c0             	test   rax,rax
     b31:	74 0d                	je     b40 <deregister_tm_clones+0x30>
     b33:	5d                   	pop    rbp
     b34:	ff e0                	jmp    rax
     b36:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
     b3d:	00 00 00 
     b40:	5d                   	pop    rbp
     b41:	c3                   	ret
     b42:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
     b46:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
     b4d:	00 00 00 

0000000000000b50 <register_tm_clones>:
     b50:	48 8d 3d 71 15 20 00 	lea    rdi,[rip+0x201571]        # 2020c8 <__TMC_END__>
     b57:	48 8d 35 6a 15 20 00 	lea    rsi,[rip+0x20156a]        # 2020c8 <__TMC_END__>
     b5e:	55                   	push   rbp
     b5f:	48 29 fe             	sub    rsi,rdi
     b62:	48 89 e5             	mov    rbp,rsp
     b65:	48 c1 fe 03          	sar    rsi,0x3
     b69:	48 89 f0             	mov    rax,rsi
     b6c:	48 c1 e8 3f          	shr    rax,0x3f
     b70:	48 01 c6             	add    rsi,rax
     b73:	48 d1 fe             	sar    rsi,1
     b76:	74 18                	je     b90 <register_tm_clones+0x40>
     b78:	48 8b 05 71 14 20 00 	mov    rax,QWORD PTR [rip+0x201471]        # 201ff0 <_ITM_registerTMCloneTable>
     b7f:	48 85 c0             	test   rax,rax
     b82:	74 0c                	je     b90 <register_tm_clones+0x40>
     b84:	5d                   	pop    rbp
     b85:	ff e0                	jmp    rax
     b87:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
     b8e:	00 00 
     b90:	5d                   	pop    rbp
     b91:	c3                   	ret
     b92:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
     b96:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
     b9d:	00 00 00 

0000000000000ba0 <__do_global_dtors_aux>:
     ba0:	80 3d 41 15 20 00 00 	cmp    BYTE PTR [rip+0x201541],0x0        # 2020e8 <completed.7090>
     ba7:	75 2f                	jne    bd8 <__do_global_dtors_aux+0x38>
     ba9:	48 83 3d 47 14 20 00 	cmp    QWORD PTR [rip+0x201447],0x0        # 201ff8 <__cxa_finalize@GLIBC_2.2.5>
     bb0:	00 
     bb1:	55                   	push   rbp
     bb2:	48 89 e5             	mov    rbp,rsp
     bb5:	74 0c                	je     bc3 <__do_global_dtors_aux+0x23>
     bb7:	48 8b 3d 02 15 20 00 	mov    rdi,QWORD PTR [rip+0x201502]        # 2020c0 <__dso_handle>
     bbe:	e8 0d ff ff ff       	call   ad0 <__cxa_finalize@plt>
     bc3:	e8 48 ff ff ff       	call   b10 <deregister_tm_clones>
     bc8:	c6 05 19 15 20 00 01 	mov    BYTE PTR [rip+0x201519],0x1        # 2020e8 <completed.7090>
     bcf:	5d                   	pop    rbp
     bd0:	c3                   	ret
     bd1:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
     bd8:	f3 c3                	repz ret
     bda:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

0000000000000be0 <frame_dummy>:
     be0:	55                   	push   rbp
     be1:	48 89 e5             	mov    rbp,rsp
     be4:	5d                   	pop    rbp
     be5:	e9 66 ff ff ff       	jmp    b50 <register_tm_clones>

0000000000000bea <lower>:
     bea:	55                   	push   rbp
     beb:	48 89 e5             	mov    rbp,rsp
     bee:	89 f8                	mov    eax,edi
     bf0:	88 45 fc             	mov    BYTE PTR [rbp-0x4],al
     bf3:	80 7d fc 40          	cmp    BYTE PTR [rbp-0x4],0x40
     bf7:	7e 0f                	jle    c08 <lower+0x1e>
     bf9:	80 7d fc 5a          	cmp    BYTE PTR [rbp-0x4],0x5a
     bfd:	7f 09                	jg     c08 <lower+0x1e>
     bff:	0f b6 45 fc          	movzx  eax,BYTE PTR [rbp-0x4]
     c03:	83 c0 20             	add    eax,0x20
     c06:	eb 04                	jmp    c0c <lower+0x22>
     c08:	0f b6 45 fc          	movzx  eax,BYTE PTR [rbp-0x4]
     c0c:	5d                   	pop    rbp
     c0d:	c3                   	ret

0000000000000c0e <isValid>:
     c0e:	55                   	push   rbp
     c0f:	48 89 e5             	mov    rbp,rsp
     c12:	89 f8                	mov    eax,edi
     c14:	88 45 fc             	mov    BYTE PTR [rbp-0x4],al
     c17:	80 7d fc 60          	cmp    BYTE PTR [rbp-0x4],0x60
     c1b:	7e 0d                	jle    c2a <isValid+0x1c>
     c1d:	80 7d fc 7a          	cmp    BYTE PTR [rbp-0x4],0x7a
     c21:	7f 07                	jg     c2a <isValid+0x1c>
     c23:	b8 01 00 00 00       	mov    eax,0x1
     c28:	eb 25                	jmp    c4f <isValid+0x41>
     c2a:	80 7d fc 40          	cmp    BYTE PTR [rbp-0x4],0x40
     c2e:	7e 0d                	jle    c3d <isValid+0x2f>
     c30:	80 7d fc 5a          	cmp    BYTE PTR [rbp-0x4],0x5a
     c34:	7f 07                	jg     c3d <isValid+0x2f>
     c36:	b8 01 00 00 00       	mov    eax,0x1
     c3b:	eb 12                	jmp    c4f <isValid+0x41>
     c3d:	80 7d fc 20          	cmp    BYTE PTR [rbp-0x4],0x20
     c41:	75 07                	jne    c4a <isValid+0x3c>
     c43:	b8 01 00 00 00       	mov    eax,0x1
     c48:	eb 05                	jmp    c4f <isValid+0x41>
     c4a:	b8 00 00 00 00       	mov    eax,0x0
     c4f:	5d                   	pop    rbp
     c50:	c3                   	ret

0000000000000c51 <getValue>:
     c51:	55                   	push   rbp
     c52:	48 89 e5             	mov    rbp,rsp
     c55:	89 7d ec             	mov    DWORD PTR [rbp-0x14],edi
     c58:	8b 45 ec             	mov    eax,DWORD PTR [rbp-0x14]
     c5b:	8d 50 07             	lea    edx,[rax+0x7]
     c5e:	85 c0                	test   eax,eax
     c60:	0f 48 c2             	cmovs  eax,edx
     c63:	c1 f8 03             	sar    eax,0x3
     c66:	89 45 fc             	mov    DWORD PTR [rbp-0x4],eax
     c69:	8b 45 ec             	mov    eax,DWORD PTR [rbp-0x14]
     c6c:	99                   	cdq
     c6d:	c1 ea 1d             	shr    edx,0x1d
     c70:	01 d0                	add    eax,edx
     c72:	83 e0 07             	and    eax,0x7
     c75:	29 d0                	sub    eax,edx
     c77:	89 45 f8             	mov    DWORD PTR [rbp-0x8],eax
     c7a:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
     c7d:	48 63 d0             	movsxd rdx,eax
     c80:	48 8d 05 79 06 00 00 	lea    rax,[rip+0x679]        # 1300 <secret>
     c87:	0f b6 04 02          	movzx  eax,BYTE PTR [rdx+rax*1]
     c8b:	88 45 f7             	mov    BYTE PTR [rbp-0x9],al
     c8e:	0f b6 55 f7          	movzx  edx,BYTE PTR [rbp-0x9]
     c92:	b8 07 00 00 00       	mov    eax,0x7
     c97:	2b 45 f8             	sub    eax,DWORD PTR [rbp-0x8]
     c9a:	89 c1                	mov    ecx,eax
     c9c:	d3 fa                	sar    edx,cl
     c9e:	89 d0                	mov    eax,edx
     ca0:	88 45 f7             	mov    BYTE PTR [rbp-0x9],al
     ca3:	0f b6 45 f7          	movzx  eax,BYTE PTR [rbp-0x9]
     ca7:	83 e0 01             	and    eax,0x1
     caa:	5d                   	pop    rbp
     cab:	c3                   	ret

0000000000000cac <save>:
     cac:	55                   	push   rbp
     cad:	48 89 e5             	mov    rbp,rsp
     cb0:	48 83 ec 10          	sub    rsp,0x10
     cb4:	89 7d fc             	mov    DWORD PTR [rbp-0x4],edi
     cb7:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
     cba:	89 c2                	mov    edx,eax
     cbc:	0f b6 05 2d 14 20 00 	movzx  eax,BYTE PTR [rip+0x20142d]        # 2020f0 <buffChar>
     cc3:	09 d0                	or     eax,edx
     cc5:	88 05 25 14 20 00    	mov    BYTE PTR [rip+0x201425],al        # 2020f0 <buffChar>
     ccb:	8b 05 3f 14 20 00    	mov    eax,DWORD PTR [rip+0x20143f]        # 202110 <remain>
     cd1:	85 c0                	test   eax,eax
     cd3:	75 2e                	jne    d03 <save+0x57>
     cd5:	c7 05 31 14 20 00 07 	mov    DWORD PTR [rip+0x201431],0x7        # 202110 <remain>
     cdc:	00 00 00 
     cdf:	48 8b 15 22 14 20 00 	mov    rdx,QWORD PTR [rip+0x201422]        # 202108 <output>
     ce6:	0f b6 05 03 14 20 00 	movzx  eax,BYTE PTR [rip+0x201403]        # 2020f0 <buffChar>
     ced:	0f be c0             	movsx  eax,al
     cf0:	48 89 d6             	mov    rsi,rdx
     cf3:	89 c7                	mov    edi,eax
     cf5:	e8 16 fd ff ff       	call   a10 <fputc@plt>
     cfa:	c6 05 ef 13 20 00 00 	mov    BYTE PTR [rip+0x2013ef],0x0        # 2020f0 <buffChar>
     d01:	eb 21                	jmp    d24 <save+0x78>
     d03:	0f b6 05 e6 13 20 00 	movzx  eax,BYTE PTR [rip+0x2013e6]        # 2020f0 <buffChar>
     d0a:	0f be c0             	movsx  eax,al
     d0d:	01 c0                	add    eax,eax
     d0f:	88 05 db 13 20 00    	mov    BYTE PTR [rip+0x2013db],al        # 2020f0 <buffChar>
     d15:	8b 05 f5 13 20 00    	mov    eax,DWORD PTR [rip+0x2013f5]        # 202110 <remain>
     d1b:	83 e8 01             	sub    eax,0x1
     d1e:	89 05 ec 13 20 00    	mov    DWORD PTR [rip+0x2013ec],eax        # 202110 <remain>
     d24:	90                   	nop
     d25:	c9                   	leave
     d26:	c3                   	ret

0000000000000d27 <encode>:
     d27:	55                   	push   rbp
     d28:	48 89 e5             	mov    rbp,rsp
     d2b:	48 83 ec 10          	sub    rsp,0x10
     d2f:	c6 45 ff 20          	mov    BYTE PTR [rbp-0x1],0x20
     d33:	e9 17 01 00 00       	jmp    e4f <encode+0x128>
     d38:	48 8b 15 d9 13 20 00 	mov    rdx,QWORD PTR [rip+0x2013d9]        # 202118 <flag>
     d3f:	48 8b 05 b2 13 20 00 	mov    rax,QWORD PTR [rip+0x2013b2]        # 2020f8 <flag_index>
     d46:	8b 00                	mov    eax,DWORD PTR [rax]
     d48:	48 98                	cdqe
     d4a:	48 01 d0             	add    rax,rdx
     d4d:	0f b6 00             	movzx  eax,BYTE PTR [rax]
     d50:	88 45 ff             	mov    BYTE PTR [rbp-0x1],al
     d53:	0f be 45 ff          	movsx  eax,BYTE PTR [rbp-0x1]
     d57:	89 c7                	mov    edi,eax
     d59:	e8 8c fe ff ff       	call   bea <lower>
     d5e:	88 45 ff             	mov    BYTE PTR [rbp-0x1],al
     d61:	80 7d ff 20          	cmp    BYTE PTR [rbp-0x1],0x20
     d65:	75 06                	jne    d6d <encode+0x46>
     d67:	c6 45 ff 85          	mov    BYTE PTR [rbp-0x1],0x85
     d6b:	eb 16                	jmp    d83 <encode+0x5c>
     d6d:	80 7d ff 2f          	cmp    BYTE PTR [rbp-0x1],0x2f
     d71:	7e 10                	jle    d83 <encode+0x5c>
     d73:	80 7d ff 39          	cmp    BYTE PTR [rbp-0x1],0x39
     d77:	7f 0a                	jg     d83 <encode+0x5c>
     d79:	0f b6 45 ff          	movzx  eax,BYTE PTR [rbp-0x1]
     d7d:	83 c0 4b             	add    eax,0x4b
     d80:	88 45 ff             	mov    BYTE PTR [rbp-0x1],al
     d83:	0f b6 45 ff          	movzx  eax,BYTE PTR [rbp-0x1]
     d87:	83 e8 61             	sub    eax,0x61
     d8a:	88 45 ff             	mov    BYTE PTR [rbp-0x1],al
     d8d:	80 7d ff 00          	cmp    BYTE PTR [rbp-0x1],0x0
     d91:	78 06                	js     d99 <encode+0x72>
     d93:	80 7d ff 24          	cmp    BYTE PTR [rbp-0x1],0x24
     d97:	7e 07                	jle    da0 <encode+0x79>
     d99:	c6 05 60 13 20 00 01 	mov    BYTE PTR [rip+0x201360],0x1        # 202100 <badChars>
     da0:	80 7d ff 24          	cmp    BYTE PTR [rbp-0x1],0x24
     da4:	74 36                	je     ddc <encode+0xb5>
     da6:	0f be 45 ff          	movsx  eax,BYTE PTR [rbp-0x1]
     daa:	8d 48 12             	lea    ecx,[rax+0x12]
     dad:	ba 39 8e e3 38       	mov    edx,0x38e38e39
     db2:	89 c8                	mov    eax,ecx
     db4:	f7 ea                	imul   edx
     db6:	c1 fa 03             	sar    edx,0x3
     db9:	89 c8                	mov    eax,ecx
     dbb:	c1 f8 1f             	sar    eax,0x1f
     dbe:	29 c2                	sub    edx,eax
     dc0:	89 d0                	mov    eax,edx
     dc2:	c1 e0 03             	shl    eax,0x3
     dc5:	01 d0                	add    eax,edx
     dc7:	c1 e0 02             	shl    eax,0x2
     dca:	29 c1                	sub    ecx,eax
     dcc:	89 ca                	mov    edx,ecx
     dce:	89 d1                	mov    ecx,edx
     dd0:	c1 f9 1f             	sar    ecx,0x1f
     dd3:	89 d0                	mov    eax,edx
     dd5:	31 c8                	xor    eax,ecx
     dd7:	29 c8                	sub    eax,ecx
     dd9:	88 45 ff             	mov    BYTE PTR [rbp-0x1],al
     ddc:	0f be 45 ff          	movsx  eax,BYTE PTR [rbp-0x1]
     de0:	48 98                	cdqe
     de2:	48 8d 14 85 00 00 00 	lea    rdx,[rax*4+0x0]
     de9:	00 
     dea:	48 8d 05 6f 05 00 00 	lea    rax,[rip+0x56f]        # 1360 <indexTable>
     df1:	8b 04 02             	mov    eax,DWORD PTR [rdx+rax*1]
     df4:	89 45 f8             	mov    DWORD PTR [rbp-0x8],eax
     df7:	0f be 45 ff          	movsx  eax,BYTE PTR [rbp-0x1]
     dfb:	83 c0 01             	add    eax,0x1
     dfe:	48 98                	cdqe
     e00:	48 8d 14 85 00 00 00 	lea    rdx,[rax*4+0x0]
     e07:	00 
     e08:	48 8d 05 51 05 00 00 	lea    rax,[rip+0x551]        # 1360 <indexTable>
     e0f:	8b 04 02             	mov    eax,DWORD PTR [rdx+rax*1]
     e12:	89 45 f4             	mov    DWORD PTR [rbp-0xc],eax
     e15:	eb 1b                	jmp    e32 <encode+0x10b>
     e17:	8b 45 f8             	mov    eax,DWORD PTR [rbp-0x8]
     e1a:	89 c7                	mov    edi,eax
     e1c:	e8 30 fe ff ff       	call   c51 <getValue>
     e21:	89 45 f0             	mov    DWORD PTR [rbp-0x10],eax
     e24:	8b 45 f0             	mov    eax,DWORD PTR [rbp-0x10]
     e27:	89 c7                	mov    edi,eax
     e29:	e8 7e fe ff ff       	call   cac <save>
     e2e:	83 45 f8 01          	add    DWORD PTR [rbp-0x8],0x1
     e32:	8b 45 f8             	mov    eax,DWORD PTR [rbp-0x8]
     e35:	3b 45 f4             	cmp    eax,DWORD PTR [rbp-0xc]
     e38:	7c dd                	jl     e17 <encode+0xf0>
     e3a:	48 8b 05 b7 12 20 00 	mov    rax,QWORD PTR [rip+0x2012b7]        # 2020f8 <flag_index>
     e41:	8b 10                	mov    edx,DWORD PTR [rax]
     e43:	48 8b 05 ae 12 20 00 	mov    rax,QWORD PTR [rip+0x2012ae]        # 2020f8 <flag_index>
     e4a:	83 c2 01             	add    edx,0x1
     e4d:	89 10                	mov    DWORD PTR [rax],edx
     e4f:	48 8b 05 a2 12 20 00 	mov    rax,QWORD PTR [rip+0x2012a2]        # 2020f8 <flag_index>
     e56:	8b 10                	mov    edx,DWORD PTR [rax]
     e58:	8b 05 b6 12 20 00    	mov    eax,DWORD PTR [rip+0x2012b6]        # 202114 <flag_size>
     e5e:	39 c2                	cmp    edx,eax
     e60:	0f 8c d2 fe ff ff    	jl     d38 <encode+0x11>
     e66:	eb 0a                	jmp    e72 <encode+0x14b>
     e68:	bf 00 00 00 00       	mov    edi,0x0
     e6d:	e8 3a fe ff ff       	call   cac <save>
     e72:	8b 05 98 12 20 00    	mov    eax,DWORD PTR [rip+0x201298]        # 202110 <remain>
     e78:	83 f8 07             	cmp    eax,0x7
     e7b:	75 eb                	jne    e68 <encode+0x141>
     e7d:	90                   	nop
     e7e:	c9                   	leave
     e7f:	c3                   	ret

0000000000000e80 <login>:
     e80:	55                   	push   rbp
     e81:	48 89 e5             	mov    rbp,rsp
     e84:	48 81 ec c0 00 00 00 	sub    rsp,0xc0
     e8b:	48 8d 3d 66 05 00 00 	lea    rdi,[rip+0x566]        # 13f8 <indexTable+0x98>
     e92:	e8 99 fb ff ff       	call   a30 <gethostbyname@plt>
     e97:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
     e9b:	ba 00 00 00 00       	mov    edx,0x0
     ea0:	be 01 00 00 00       	mov    esi,0x1
     ea5:	bf 02 00 00 00       	mov    edi,0x2
     eaa:	e8 11 fc ff ff       	call   ac0 <socket@plt>
     eaf:	89 45 f4             	mov    DWORD PTR [rbp-0xc],eax
     eb2:	66 c7 45 e0 02 00    	mov    WORD PTR [rbp-0x20],0x2
     eb8:	bf 29 09 00 00       	mov    edi,0x929
     ebd:	e8 1e fb ff ff       	call   9e0 <htons@plt>
     ec2:	66 89 45 e2          	mov    WORD PTR [rbp-0x1e],ax
     ec6:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
     eca:	8b 40 14             	mov    eax,DWORD PTR [rax+0x14]
     ecd:	48 63 d0             	movsxd rdx,eax
     ed0:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
     ed4:	48 8b 40 18          	mov    rax,QWORD PTR [rax+0x18]
     ed8:	48 8b 00             	mov    rax,QWORD PTR [rax]
     edb:	48 8d 4d e0          	lea    rcx,[rbp-0x20]
     edf:	48 83 c1 04          	add    rcx,0x4
     ee3:	48 89 ce             	mov    rsi,rcx
     ee6:	48 89 c7             	mov    rdi,rax
     ee9:	e8 82 fb ff ff       	call   a70 <bcopy@plt>
     eee:	48 8d 4d e0          	lea    rcx,[rbp-0x20]
     ef2:	8b 45 f4             	mov    eax,DWORD PTR [rbp-0xc]
     ef5:	ba 10 00 00 00       	mov    edx,0x10
     efa:	48 89 ce             	mov    rsi,rcx
     efd:	89 c7                	mov    edi,eax
     eff:	e8 9c fb ff ff       	call   aa0 <connect@plt>
     f04:	89 45 f0             	mov    DWORD PTR [rbp-0x10],eax
     f07:	83 7d f0 ff          	cmp    DWORD PTR [rbp-0x10],0xffffffff
     f0b:	75 0c                	jne    f19 <login+0x99>
     f0d:	48 8d 3d fc 04 00 00 	lea    rdi,[rip+0x4fc]        # 1410 <indexTable+0xb0>
     f14:	e8 87 fa ff ff       	call   9a0 <puts@plt>
     f19:	48 b8 41 75 74 68 3a 	movabs rax,0x6e43203a68747541
     f20:	20 43 6e 
     f23:	48 ba 56 7a 5a 57 78 	movabs rdx,0x33636c78575a7a56
     f2a:	6c 63 33 
     f2d:	48 89 85 40 ff ff ff 	mov    QWORD PTR [rbp-0xc0],rax
     f34:	48 89 95 48 ff ff ff 	mov    QWORD PTR [rbp-0xb8],rdx
     f3b:	48 b8 4d 67 5a 47 46 	movabs rax,0x53593046475a674d
     f42:	30 59 53 
     f45:	48 ba 42 71 59 57 70 	movabs rdx,0x6d61687057597142
     f4c:	68 61 6d 
     f4f:	48 89 85 50 ff ff ff 	mov    QWORD PTR [rbp-0xb0],rax
     f56:	48 89 95 58 ff ff ff 	mov    QWORD PTR [rbp-0xa8],rdx
     f5d:	48 c7 85 60 ff ff ff 	mov    QWORD PTR [rbp-0xa0],0x4b45
     f64:	45 4b 00 00 
     f68:	48 c7 85 68 ff ff ff 	mov    QWORD PTR [rbp-0x98],0x0
     f6f:	00 00 00 00 
     f73:	48 c7 85 70 ff ff ff 	mov    QWORD PTR [rbp-0x90],0x0
     f7a:	00 00 00 00 
     f7e:	48 c7 85 78 ff ff ff 	mov    QWORD PTR [rbp-0x88],0x0
     f85:	00 00 00 00 
     f89:	48 c7 45 80 00 00 00 	mov    QWORD PTR [rbp-0x80],0x0
     f90:	00 
     f91:	48 c7 45 88 00 00 00 	mov    QWORD PTR [rbp-0x78],0x0
     f98:	00 
     f99:	48 c7 45 90 00 00 00 	mov    QWORD PTR [rbp-0x70],0x0
     fa0:	00 
     fa1:	48 c7 45 98 00 00 00 	mov    QWORD PTR [rbp-0x68],0x0
     fa8:	00 
     fa9:	c7 45 a0 00 00 00 00 	mov    DWORD PTR [rbp-0x60],0x0
     fb0:	48 8d b5 40 ff ff ff 	lea    rsi,[rbp-0xc0]
     fb7:	8b 45 f4             	mov    eax,DWORD PTR [rbp-0xc]
     fba:	b9 00 00 00 00       	mov    ecx,0x0
     fbf:	ba 64 00 00 00       	mov    edx,0x64
     fc4:	89 c7                	mov    edi,eax
     fc6:	e8 25 fa ff ff       	call   9f0 <send@plt>
     fcb:	48 8d 75 b0          	lea    rsi,[rbp-0x50]
     fcf:	8b 45 f4             	mov    eax,DWORD PTR [rbp-0xc]
     fd2:	b9 00 00 00 00       	mov    ecx,0x0
     fd7:	ba 21 00 00 00       	mov    edx,0x21
     fdc:	89 c7                	mov    edi,eax
     fde:	e8 ad f9 ff ff       	call   990 <recv@plt>
     fe3:	48 8d 45 b0          	lea    rax,[rbp-0x50]
     fe7:	48 8d 35 4a 04 00 00 	lea    rsi,[rip+0x44a]        # 1438 <indexTable+0xd8>
     fee:	48 89 c7             	mov    rdi,rax
     ff1:	e8 2a fa ff ff       	call   a20 <strcmp@plt>
     ff6:	85 c0                	test   eax,eax
     ff8:	74 2e                	je     1028 <login+0x1a8>
     ffa:	48 8d 3d 5f 04 00 00 	lea    rdi,[rip+0x45f]        # 1460 <indexTable+0x100>
    1001:	e8 9a f9 ff ff       	call   9a0 <puts@plt>
    1006:	48 8d 45 b0          	lea    rax,[rbp-0x50]
    100a:	48 89 c6             	mov    rsi,rax
    100d:	48 8d 3d 74 04 00 00 	lea    rdi,[rip+0x474]        # 1488 <indexTable+0x128>
    1014:	b8 00 00 00 00       	mov    eax,0x0
    1019:	e8 e2 f9 ff ff       	call   a00 <printf@plt>
    101e:	bf 01 00 00 00       	mov    edi,0x1
    1023:	e8 68 fa ff ff       	call   a90 <exit@plt>
    1028:	48 8d 45 b0          	lea    rax,[rbp-0x50]
    102c:	48 89 c6             	mov    rsi,rax
    102f:	48 8d 3d 52 04 00 00 	lea    rdi,[rip+0x452]        # 1488 <indexTable+0x128>
    1036:	b8 00 00 00 00       	mov    eax,0x0
    103b:	e8 c0 f9 ff ff       	call   a00 <printf@plt>
    1040:	8b 45 f4             	mov    eax,DWORD PTR [rbp-0xc]
    1043:	be 02 00 00 00       	mov    esi,0x2
    1048:	89 c7                	mov    edi,eax
    104a:	e8 81 f9 ff ff       	call   9d0 <shutdown@plt>
    104f:	90                   	nop
    1050:	c9                   	leave
    1051:	c3                   	ret

0000000000001052 <main>:
    1052:	55                   	push   rbp
    1053:	48 89 e5             	mov    rbp,rsp
    1056:	48 83 ec 20          	sub    rsp,0x20
    105a:	89 7d ec             	mov    DWORD PTR [rbp-0x14],edi
    105d:	48 89 75 e0          	mov    QWORD PTR [rbp-0x20],rsi
    1061:	c6 05 98 10 20 00 00 	mov    BYTE PTR [rip+0x201098],0x0        # 202100 <badChars>
    1068:	48 8d 35 26 04 00 00 	lea    rsi,[rip+0x426]        # 1495 <indexTable+0x135>
    106f:	48 8d 3d 21 04 00 00 	lea    rdi,[rip+0x421]        # 1497 <indexTable+0x137>
    1076:	e8 05 fa ff ff       	call   a80 <fopen@plt>
    107b:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
    107f:	48 83 7d f8 00       	cmp    QWORD PTR [rbp-0x8],0x0
    1084:	75 2a                	jne    10b0 <main+0x5e>
    1086:	48 8b 05 53 10 20 00 	mov    rax,QWORD PTR [rip+0x201053]        # 2020e0 <stderr@GLIBC_2.2.5>
    108d:	48 89 c1             	mov    rcx,rax
    1090:	ba 21 00 00 00       	mov    edx,0x21
    1095:	be 01 00 00 00       	mov    esi,0x1
    109a:	48 8d 3d ff 03 00 00 	lea    rdi,[rip+0x3ff]        # 14a0 <indexTable+0x140>
    10a1:	e8 0a fa ff ff       	call   ab0 <fwrite@plt>
    10a6:	bf 01 00 00 00       	mov    edi,0x1
    10ab:	e8 e0 f9 ff ff       	call   a90 <exit@plt>
    10b0:	c7 05 5a 10 20 00 00 	mov    DWORD PTR [rip+0x20105a],0x0        # 202114 <flag_size>
    10b7:	00 00 00 
    10ba:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
    10be:	ba 02 00 00 00       	mov    edx,0x2
    10c3:	be 00 00 00 00       	mov    esi,0x0
    10c8:	48 89 c7             	mov    rdi,rax
    10cb:	e8 90 f9 ff ff       	call   a60 <fseek@plt>
    10d0:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
    10d4:	48 89 c7             	mov    rdi,rax
    10d7:	e8 64 f9 ff ff       	call   a40 <ftell@plt>
    10dc:	89 05 32 10 20 00    	mov    DWORD PTR [rip+0x201032],eax        # 202114 <flag_size>
    10e2:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
    10e6:	ba 00 00 00 00       	mov    edx,0x0
    10eb:	be 00 00 00 00       	mov    esi,0x0
    10f0:	48 89 c7             	mov    rdi,rax
    10f3:	e8 68 f9 ff ff       	call   a60 <fseek@plt>
    10f8:	8b 05 16 10 20 00    	mov    eax,DWORD PTR [rip+0x201016]        # 202114 <flag_size>
    10fe:	3d fe ff 00 00       	cmp    eax,0xfffe
    1103:	7e 2a                	jle    112f <main+0xdd>
    1105:	48 8b 05 d4 0f 20 00 	mov    rax,QWORD PTR [rip+0x200fd4]        # 2020e0 <stderr@GLIBC_2.2.5>
    110c:	48 89 c1             	mov    rcx,rax
    110f:	ba 1e 00 00 00       	mov    edx,0x1e
    1114:	be 01 00 00 00       	mov    esi,0x1
    1119:	48 8d 3d a8 03 00 00 	lea    rdi,[rip+0x3a8]        # 14c8 <indexTable+0x168>
    1120:	e8 8b f9 ff ff       	call   ab0 <fwrite@plt>
    1125:	bf 01 00 00 00       	mov    edi,0x1
    112a:	e8 61 f9 ff ff       	call   a90 <exit@plt>
    112f:	8b 05 df 0f 20 00    	mov    eax,DWORD PTR [rip+0x200fdf]        # 202114 <flag_size>
    1135:	83 f8 09             	cmp    eax,0x9
    1138:	7f 2a                	jg     1164 <main+0x112>
    113a:	48 8b 05 9f 0f 20 00 	mov    rax,QWORD PTR [rip+0x200f9f]        # 2020e0 <stderr@GLIBC_2.2.5>
    1141:	48 89 c1             	mov    rcx,rax
    1144:	ba 30 00 00 00       	mov    edx,0x30
    1149:	be 01 00 00 00       	mov    esi,0x1
    114e:	48 8d 3d 93 03 00 00 	lea    rdi,[rip+0x393]        # 14e8 <indexTable+0x188>
    1155:	e8 56 f9 ff ff       	call   ab0 <fwrite@plt>
    115a:	bf 01 00 00 00       	mov    edi,0x1
    115f:	e8 2c f9 ff ff       	call   a90 <exit@plt>
    1164:	8b 05 aa 0f 20 00    	mov    eax,DWORD PTR [rip+0x200faa]        # 202114 <flag_size>
    116a:	48 98                	cdqe
    116c:	48 89 c7             	mov    rdi,rax
    116f:	e8 dc f8 ff ff       	call   a50 <malloc@plt>
    1174:	48 89 05 9d 0f 20 00 	mov    QWORD PTR [rip+0x200f9d],rax        # 202118 <flag>
    117b:	8b 05 93 0f 20 00    	mov    eax,DWORD PTR [rip+0x200f93]        # 202114 <flag_size>
    1181:	48 63 d0             	movsxd rdx,eax
    1184:	48 8b 05 8d 0f 20 00 	mov    rax,QWORD PTR [rip+0x200f8d]        # 202118 <flag>
    118b:	48 8b 4d f8          	mov    rcx,QWORD PTR [rbp-0x8]
    118f:	be 01 00 00 00       	mov    esi,0x1
    1194:	48 89 c7             	mov    rdi,rax
    1197:	e8 14 f8 ff ff       	call   9b0 <fread@plt>
    119c:	89 45 f4             	mov    DWORD PTR [rbp-0xc],eax
    119f:	83 7d f4 00          	cmp    DWORD PTR [rbp-0xc],0x0
    11a3:	7f 0a                	jg     11af <main+0x15d>
    11a5:	bf 00 00 00 00       	mov    edi,0x0
    11aa:	e8 e1 f8 ff ff       	call   a90 <exit@plt>
    11af:	c7 45 f0 00 00 00 00 	mov    DWORD PTR [rbp-0x10],0x0
    11b6:	48 8d 45 f0          	lea    rax,[rbp-0x10]
    11ba:	48 89 05 37 0f 20 00 	mov    QWORD PTR [rip+0x200f37],rax        # 2020f8 <flag_index>
    11c1:	48 8d 35 51 03 00 00 	lea    rsi,[rip+0x351]        # 1519 <indexTable+0x1b9>
    11c8:	48 8d 3d 4c 03 00 00 	lea    rdi,[rip+0x34c]        # 151b <indexTable+0x1bb>
    11cf:	e8 ac f8 ff ff       	call   a80 <fopen@plt>
    11d4:	48 89 05 2d 0f 20 00 	mov    QWORD PTR [rip+0x200f2d],rax        # 202108 <output>
    11db:	c6 05 0e 0f 20 00 00 	mov    BYTE PTR [rip+0x200f0e],0x0        # 2020f0 <buffChar>
    11e2:	c7 05 24 0f 20 00 07 	mov    DWORD PTR [rip+0x200f24],0x7        # 202110 <remain>
    11e9:	00 00 00 
    11ec:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
    11f0:	48 89 c7             	mov    rdi,rax
    11f3:	e8 c8 f7 ff ff       	call   9c0 <fclose@plt>
    11f8:	b8 00 00 00 00       	mov    eax,0x0
    11fd:	e8 25 fb ff ff       	call   d27 <encode>
    1202:	48 8b 05 ff 0e 20 00 	mov    rax,QWORD PTR [rip+0x200eff]        # 202108 <output>
    1209:	48 89 c7             	mov    rdi,rax
    120c:	e8 af f7 ff ff       	call   9c0 <fclose@plt>
    1211:	0f b6 05 e8 0e 20 00 	movzx  eax,BYTE PTR [rip+0x200ee8]        # 202100 <badChars>
    1218:	83 f0 01             	xor    eax,0x1
    121b:	84 c0                	test   al,al
    121d:	74 22                	je     1241 <main+0x1ef>
    121f:	48 8b 05 ba 0e 20 00 	mov    rax,QWORD PTR [rip+0x200eba]        # 2020e0 <stderr@GLIBC_2.2.5>
    1226:	48 89 c1             	mov    rcx,rax
    1229:	ba 1e 00 00 00       	mov    edx,0x1e
    122e:	be 01 00 00 00       	mov    esi,0x1
    1233:	48 8d 3d ee 02 00 00 	lea    rdi,[rip+0x2ee]        # 1528 <indexTable+0x1c8>
    123a:	e8 71 f8 ff ff       	call   ab0 <fwrite@plt>
    123f:	eb 20                	jmp    1261 <main+0x20f>
    1241:	48 8b 05 98 0e 20 00 	mov    rax,QWORD PTR [rip+0x200e98]        # 2020e0 <stderr@GLIBC_2.2.5>
    1248:	48 89 c1             	mov    rcx,rax
    124b:	ba 35 00 00 00       	mov    edx,0x35
    1250:	be 01 00 00 00       	mov    esi,0x1
    1255:	48 8d 3d ec 02 00 00 	lea    rdi,[rip+0x2ec]        # 1548 <indexTable+0x1e8>
    125c:	e8 4f f8 ff ff       	call   ab0 <fwrite@plt>
    1261:	b8 00 00 00 00       	mov    eax,0x0
    1266:	c9                   	leave
    1267:	c3                   	ret
    1268:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
    126f:	00 

0000000000001270 <__libc_csu_init>:
    1270:	41 57                	push   r15
    1272:	49 89 d7             	mov    r15,rdx
    1275:	41 56                	push   r14
    1277:	49 89 f6             	mov    r14,rsi
    127a:	41 55                	push   r13
    127c:	41 89 fd             	mov    r13d,edi
    127f:	41 54                	push   r12
    1281:	4c 8d 25 60 0b 20 00 	lea    r12,[rip+0x200b60]        # 201de8 <__frame_dummy_init_array_entry>
    1288:	55                   	push   rbp
    1289:	48 8d 2d 60 0b 20 00 	lea    rbp,[rip+0x200b60]        # 201df0 <__do_global_dtors_aux_fini_array_entry>
    1290:	53                   	push   rbx
    1291:	4c 29 e5             	sub    rbp,r12
    1294:	48 83 ec 08          	sub    rsp,0x8
    1298:	e8 cb f6 ff ff       	call   968 <_init>
    129d:	48 c1 fd 03          	sar    rbp,0x3
    12a1:	74 1b                	je     12be <__libc_csu_init+0x4e>
    12a3:	31 db                	xor    ebx,ebx
    12a5:	0f 1f 00             	nop    DWORD PTR [rax]
    12a8:	4c 89 fa             	mov    rdx,r15
    12ab:	4c 89 f6             	mov    rsi,r14
    12ae:	44 89 ef             	mov    edi,r13d
    12b1:	41 ff 14 dc          	call   QWORD PTR [r12+rbx*8]
    12b5:	48 83 c3 01          	add    rbx,0x1
    12b9:	48 39 dd             	cmp    rbp,rbx
    12bc:	75 ea                	jne    12a8 <__libc_csu_init+0x38>
    12be:	48 83 c4 08          	add    rsp,0x8
    12c2:	5b                   	pop    rbx
    12c3:	5d                   	pop    rbp
    12c4:	41 5c                	pop    r12
    12c6:	41 5d                	pop    r13
    12c8:	41 5e                	pop    r14
    12ca:	41 5f                	pop    r15
    12cc:	c3                   	ret
    12cd:	0f 1f 00             	nop    DWORD PTR [rax]

00000000000012d0 <__libc_csu_fini>:
    12d0:	c3                   	ret

Disassembly of section .fini:

00000000000012d4 <_fini>:
    12d4:	48 83 ec 08          	sub    rsp,0x8
    12d8:	48 83 c4 08          	add    rsp,0x8
    12dc:	c3                   	ret
