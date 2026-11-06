
/tmp/error-d-cost-qu14csl9/kernels.o:     file format elf64-x86-64


Disassembly of section .text._D7kernels7computeFNaNbNiNfkZm:

0000000000000000 <kernels.compute(uint)>:
   0:	8b c7                	mov    %edi,%eax
   2:	48 b9 87 ca eb 85 b1 79 37 9e 	movabs $0x9e3779b185ebca87,%rcx
   c:	48 f7 e1             	mul    %rcx
   f:	8b d7                	mov    %edi,%edx
  11:	c1 ea 07             	shr    $0x7,%edx
  14:	8b d2                	mov    %edx,%edx
  16:	48 33 c2             	xor    %rdx,%rax
  19:	c3                   	ret
	...

Disassembly of section .text.result_small:

0000000000000000 <result_small>:
   0:	48 83 ec 48          	sub    $0x48,%rsp
   4:	48 89 5c 24 08       	mov    %rbx,0x8(%rsp)
   9:	8b cf                	mov    %edi,%ecx
   b:	81 e1 ff 00 00 00    	and    $0xff,%ecx
  11:	3b ce                	cmp    %esi,%ecx
  13:	73 2f                	jae    44 <result_small+0x44>
  15:	c7 44 24 10 01 00 00 00 	movl   $0x1,0x10(%rsp)
  1d:	89 7c 24 14          	mov    %edi,0x14(%rsp)
  21:	48 8b 4c 24 10       	mov    0x10(%rsp),%rcx
  26:	48 89 4c 24 20       	mov    %rcx,0x20(%rsp)
  2b:	c6 44 24 28 02       	movb   $0x2,0x28(%rsp)
  30:	48 8b 44 24 20       	mov    0x20(%rsp),%rax
  35:	48 8b 54 24 28       	mov    0x28(%rsp),%rdx
  3a:	48 8b 5c 24 08       	mov    0x8(%rsp),%rbx
  3f:	48 83 c4 48          	add    $0x48,%rsp
  43:	c3                   	ret
  44:	8b c7                	mov    %edi,%eax
  46:	48 bb 87 ca eb 85 b1 79 37 9e 	movabs $0x9e3779b185ebca87,%rbx
  50:	48 f7 e3             	mul    %rbx
  53:	8b d7                	mov    %edi,%edx
  55:	c1 ea 07             	shr    $0x7,%edx
  58:	8b d2                	mov    %edx,%edx
  5a:	48 33 c2             	xor    %rdx,%rax
  5d:	48 89 44 24 30       	mov    %rax,0x30(%rsp)
  62:	c6 44 24 38 01       	movb   $0x1,0x38(%rsp)
  67:	48 8b 44 24 30       	mov    0x30(%rsp),%rax
  6c:	48 8b 54 24 38       	mov    0x38(%rsp),%rdx
  71:	48 8b 5c 24 08       	mov    0x8(%rsp),%rbx
  76:	48 83 c4 48          	add    $0x48,%rsp
  7a:	c3                   	ret
	...

Disassembly of section .text.status_out_small:

0000000000000000 <status_out_small>:
   0:	48 83 ec 18          	sub    $0x18,%rsp
   4:	48 89 5c 24 08       	mov    %rbx,0x8(%rsp)
   9:	49 89 d1             	mov    %rdx,%r9
   c:	49 c7 01 00 00 00 00 	movq   $0x0,(%r9)
  13:	48 c7 01 00 00 00 00 	movq   $0x0,(%rcx)
  1a:	44 8b c7             	mov    %edi,%r8d
  1d:	41 81 e0 ff 00 00 00 	and    $0xff,%r8d
  24:	44 3b c6             	cmp    %esi,%r8d
  27:	73 20                	jae    49 <status_out_small+0x49>
  29:	c7 44 24 10 01 00 00 00 	movl   $0x1,0x10(%rsp)
  31:	89 7c 24 14          	mov    %edi,0x14(%rsp)
  35:	48 8b 5c 24 10       	mov    0x10(%rsp),%rbx
  3a:	48 89 19             	mov    %rbx,(%rcx)
  3d:	31 c0                	xor    %eax,%eax
  3f:	48 8b 5c 24 08       	mov    0x8(%rsp),%rbx
  44:	48 83 c4 18          	add    $0x18,%rsp
  48:	c3                   	ret
  49:	8b c7                	mov    %edi,%eax
  4b:	48 b9 87 ca eb 85 b1 79 37 9e 	movabs $0x9e3779b185ebca87,%rcx
  55:	48 f7 e1             	mul    %rcx
  58:	8b d7                	mov    %edi,%edx
  5a:	c1 ea 07             	shr    $0x7,%edx
  5d:	8b d2                	mov    %edx,%edx
  5f:	48 33 c2             	xor    %rdx,%rax
  62:	49 89 01             	mov    %rax,(%r9)
  65:	b8 01 00 00 00       	mov    $0x1,%eax
  6a:	48 8b 5c 24 08       	mov    0x8(%rsp),%rbx
  6f:	48 83 c4 18          	add    $0x18,%rsp
  73:	c3                   	ret

Disassembly of section .text.status_ref_small:

0000000000000000 <status_ref_small>:
   0:	48 83 ec 18          	sub    $0x18,%rsp
   4:	48 89 5c 24 08       	mov    %rbx,0x8(%rsp)
   9:	49 89 d1             	mov    %rdx,%r9
   c:	44 8b c7             	mov    %edi,%r8d
   f:	41 81 e0 ff 00 00 00 	and    $0xff,%r8d
  16:	44 3b c6             	cmp    %esi,%r8d
  19:	73 20                	jae    3b <status_ref_small+0x3b>
  1b:	c7 44 24 10 01 00 00 00 	movl   $0x1,0x10(%rsp)
  23:	89 7c 24 14          	mov    %edi,0x14(%rsp)
  27:	48 8b 5c 24 10       	mov    0x10(%rsp),%rbx
  2c:	48 89 19             	mov    %rbx,(%rcx)
  2f:	31 c0                	xor    %eax,%eax
  31:	48 8b 5c 24 08       	mov    0x8(%rsp),%rbx
  36:	48 83 c4 18          	add    $0x18,%rsp
  3a:	c3                   	ret
  3b:	8b c7                	mov    %edi,%eax
  3d:	48 b9 87 ca eb 85 b1 79 37 9e 	movabs $0x9e3779b185ebca87,%rcx
  47:	48 f7 e1             	mul    %rcx
  4a:	8b d7                	mov    %edi,%edx
  4c:	c1 ea 07             	shr    $0x7,%edx
  4f:	8b d2                	mov    %edx,%edx
  51:	48 33 c2             	xor    %rdx,%rax
  54:	49 89 01             	mov    %rax,(%r9)
  57:	b8 01 00 00 00       	mov    $0x1,%eax
  5c:	48 8b 5c 24 08       	mov    0x8(%rsp),%rbx
  61:	48 83 c4 18          	add    $0x18,%rsp
  65:	c3                   	ret
	...

Disassembly of section .text._D7kernels5blockFNaNbNiNfkZSQBa5Block:

0000000000000000 <kernels.block(uint)>:
   0:	49 89 f9             	mov    %rdi,%r9
   3:	49 89 f3             	mov    %rsi,%r11
   6:	31 c0                	xor    %eax,%eax
   8:	49 8b f9             	mov    %r9,%rdi
   b:	b9 20 00 00 00       	mov    $0x20,%ecx
  10:	f3 48 ab             	rep stos %rax,(%rdi)
  13:	31 f6                	xor    %esi,%esi
  15:	49 8d 3c f1          	lea    (%r9,%rsi,8),%rdi
  19:	46 8d 04 1e          	lea    (%rsi,%r11,1),%r8d
  1d:	41 8b c0             	mov    %r8d,%eax
  20:	49 ba 87 ca eb 85 b1 79 37 9e 	movabs $0x9e3779b185ebca87,%r10
  2a:	49 f7 e2             	mul    %r10
  2d:	41 8b d0             	mov    %r8d,%edx
  30:	c1 ea 07             	shr    $0x7,%edx
  33:	8b d2                	mov    %edx,%edx
  35:	48 33 c2             	xor    %rdx,%rax
  38:	48 89 07             	mov    %rax,(%rdi)
  3b:	48 ff c6             	inc    %rsi
  3e:	48 83 fe 20          	cmp    $0x20,%rsi
  42:	72 d1                	jb     15 <kernels.block(uint)+0x15>
  44:	49 8b c1             	mov    %r9,%rax
  47:	c3                   	ret

Disassembly of section .text.result_large:

0000000000000000 <result_large>:
   0:	55                   	push   %rbp
   1:	48 8b ec             	mov    %rsp,%rbp
   4:	48 81 ec 40 04 00 00 	sub    $0x440,%rsp
   b:	48 89 7d f0          	mov    %rdi,-0x10(%rbp)
   f:	89 75 f8             	mov    %esi,-0x8(%rbp)
  12:	4c 8b 45 f0          	mov    -0x10(%rbp),%r8
  16:	44 8b 4d f8          	mov    -0x8(%rbp),%r9d
  1a:	41 8b c1             	mov    %r9d,%eax
  1d:	25 ff 00 00 00       	and    $0xff,%eax
  22:	3b c2                	cmp    %edx,%eax
  24:	73 40                	jae    66 <result_large+0x66>
  26:	c7 85 c8 fb ff ff 01 00 00 00 	movl   $0x1,-0x438(%rbp)
  30:	44 89 8d cc fb ff ff 	mov    %r9d,-0x434(%rbp)
  37:	48 8b 8d c8 fb ff ff 	mov    -0x438(%rbp),%rcx
  3e:	48 89 8d d8 fb ff ff 	mov    %rcx,-0x428(%rbp)
  45:	c6 85 d8 fc ff ff 02 	movb   $0x2,-0x328(%rbp)
  4c:	48 8d b5 d8 fb ff ff 	lea    -0x428(%rbp),%rsi
  53:	49 8b f8             	mov    %r8,%rdi
  56:	b9 21 00 00 00       	mov    $0x21,%ecx
  5b:	f3 48 a5             	rep movsq (%rsi),(%rdi)
  5e:	49 8b c0             	mov    %r8,%rax
  61:	48 8b e5             	mov    %rbp,%rsp
  64:	5d                   	pop    %rbp
  65:	c3                   	ret
  66:	4c 89 45 f0          	mov    %r8,-0x10(%rbp)
  6a:	44 89 4d f8          	mov    %r9d,-0x8(%rbp)
  6e:	8b 75 f8             	mov    -0x8(%rbp),%esi
  71:	48 8d bd e8 fd ff ff 	lea    -0x218(%rbp),%rdi
  78:	e8 00 00 00 00       	call   7d <result_large+0x7d>	79: R_X86_64_PLT32	kernels.block(uint)-0x4
  7d:	48 89 c6             	mov    %rax,%rsi
  80:	48 8d bd e8 fc ff ff 	lea    -0x318(%rbp),%rdi
  87:	b9 20 00 00 00       	mov    $0x20,%ecx
  8c:	f3 48 a5             	rep movsq (%rsi),(%rdi)
  8f:	48 8d b5 e8 fc ff ff 	lea    -0x318(%rbp),%rsi
  96:	48 8d bd e8 fe ff ff 	lea    -0x118(%rbp),%rdi
  9d:	b9 20 00 00 00       	mov    $0x20,%ecx
  a2:	f3 48 a5             	rep movsq (%rsi),(%rdi)
  a5:	c6 45 e8 01          	movb   $0x1,-0x18(%rbp)
  a9:	48 8d b5 e8 fe ff ff 	lea    -0x118(%rbp),%rsi
  b0:	48 8b 7d f0          	mov    -0x10(%rbp),%rdi
  b4:	b9 21 00 00 00       	mov    $0x21,%ecx
  b9:	f3 48 a5             	rep movsq (%rsi),(%rdi)
  bc:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  c0:	48 8b e5             	mov    %rbp,%rsp
  c3:	5d                   	pop    %rbp
  c4:	c3                   	ret
  c5:	00 00                	add    %al,(%rax)
	...

Disassembly of section .text.status_out_large:

0000000000000000 <status_out_large>:
   0:	55                   	push   %rbp
   1:	48 8b ec             	mov    %rsp,%rbp
   4:	48 81 ec 20 01 00 00 	sub    $0x120,%rsp
   b:	89 7d f0             	mov    %edi,-0x10(%rbp)
   e:	48 89 55 f8          	mov    %rdx,-0x8(%rbp)
  12:	49 89 c8             	mov    %rcx,%r8
  15:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
  19:	31 c0                	xor    %eax,%eax
  1b:	48 8b fa             	mov    %rdx,%rdi
  1e:	b9 20 00 00 00       	mov    $0x20,%ecx
  23:	f3 48 ab             	rep stos %rax,(%rdi)
  26:	8b 7d f0             	mov    -0x10(%rbp),%edi
  29:	49 89 00             	mov    %rax,(%r8)
  2c:	44 8b cf             	mov    %edi,%r9d
  2f:	41 81 e1 ff 00 00 00 	and    $0xff,%r9d
  36:	44 3b ce             	cmp    %esi,%r9d
  39:	73 1f                	jae    5a <status_out_large+0x5a>
  3b:	c7 85 e0 fe ff ff 01 00 00 00 	movl   $0x1,-0x120(%rbp)
  45:	89 bd e4 fe ff ff    	mov    %edi,-0x11c(%rbp)
  4b:	48 8b 8d e0 fe ff ff 	mov    -0x120(%rbp),%rcx
  52:	49 89 08             	mov    %rcx,(%r8)
  55:	48 8b e5             	mov    %rbp,%rsp
  58:	5d                   	pop    %rbp
  59:	c3                   	ret
  5a:	89 7d f0             	mov    %edi,-0x10(%rbp)
  5d:	48 89 55 f8          	mov    %rdx,-0x8(%rbp)
  61:	8b 75 f0             	mov    -0x10(%rbp),%esi
  64:	48 8d bd f0 fe ff ff 	lea    -0x110(%rbp),%rdi
  6b:	e8 00 00 00 00       	call   70 <status_out_large+0x70>	6c: R_X86_64_PLT32	kernels.block(uint)-0x4
  70:	48 89 c6             	mov    %rax,%rsi
  73:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
  77:	b9 20 00 00 00       	mov    $0x20,%ecx
  7c:	f3 48 a5             	rep movsq (%rsi),(%rdi)
  7f:	b8 01 00 00 00       	mov    $0x1,%eax
  84:	48 8b e5             	mov    %rbp,%rsp
  87:	5d                   	pop    %rbp
  88:	c3                   	ret
  89:	00 00                	add    %al,(%rax)
	...

Disassembly of section .text.status_ref_large:

0000000000000000 <status_ref_large>:
   0:	55                   	push   %rbp
   1:	48 8b ec             	mov    %rsp,%rbp
   4:	48 81 ec 30 01 00 00 	sub    $0x130,%rsp
   b:	48 89 9d d8 fe ff ff 	mov    %rbx,-0x128(%rbp)
  12:	89 7d f0             	mov    %edi,-0x10(%rbp)
  15:	48 89 55 f8          	mov    %rdx,-0x8(%rbp)
  19:	8b 7d f0             	mov    -0x10(%rbp),%edi
  1c:	44 8b c7             	mov    %edi,%r8d
  1f:	41 81 e0 ff 00 00 00 	and    $0xff,%r8d
  26:	44 3b c6             	cmp    %esi,%r8d
  29:	73 28                	jae    53 <status_ref_large+0x53>
  2b:	c7 85 e0 fe ff ff 01 00 00 00 	movl   $0x1,-0x120(%rbp)
  35:	89 bd e4 fe ff ff    	mov    %edi,-0x11c(%rbp)
  3b:	48 8b 9d e0 fe ff ff 	mov    -0x120(%rbp),%rbx
  42:	48 89 19             	mov    %rbx,(%rcx)
  45:	31 c0                	xor    %eax,%eax
  47:	48 8b 9d d8 fe ff ff 	mov    -0x128(%rbp),%rbx
  4e:	48 8b e5             	mov    %rbp,%rsp
  51:	5d                   	pop    %rbp
  52:	c3                   	ret
  53:	89 7d f0             	mov    %edi,-0x10(%rbp)
  56:	8b 75 f0             	mov    -0x10(%rbp),%esi
  59:	48 8d bd f0 fe ff ff 	lea    -0x110(%rbp),%rdi
  60:	e8 00 00 00 00       	call   65 <status_ref_large+0x65>	61: R_X86_64_PLT32	kernels.block(uint)-0x4
  65:	48 89 c6             	mov    %rax,%rsi
  68:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
  6c:	b9 20 00 00 00       	mov    $0x20,%ecx
  71:	f3 48 a5             	rep movsq (%rsi),(%rdi)
  74:	b8 01 00 00 00       	mov    $0x1,%eax
  79:	48 8b 9d d8 fe ff ff 	mov    -0x128(%rbp),%rbx
  80:	48 8b e5             	mov    %rbp,%rsp
  83:	5d                   	pop    %rbp
  84:	c3                   	ret
  85:	00 00                	add    %al,(%rax)
	...

Disassembly of section .text._D7kernels11localResultFNaNbNiNfkkZS7error_d__T6ResultTmTSQCe11DomainErrorZQBc:

0000000000000000 <kernels.localResult(uint, uint)>:
   0:	48 83 ec 48          	sub    $0x48,%rsp
   4:	48 89 5c 24 08       	mov    %rbx,0x8(%rsp)
   9:	8b ce                	mov    %esi,%ecx
   b:	81 e1 ff 00 00 00    	and    $0xff,%ecx
  11:	3b cf                	cmp    %edi,%ecx
  13:	73 2f                	jae    44 <kernels.localResult(uint, uint)+0x44>
  15:	c7 44 24 10 01 00 00 00 	movl   $0x1,0x10(%rsp)
  1d:	89 74 24 14          	mov    %esi,0x14(%rsp)
  21:	48 8b 4c 24 10       	mov    0x10(%rsp),%rcx
  26:	48 89 4c 24 20       	mov    %rcx,0x20(%rsp)
  2b:	c6 44 24 28 02       	movb   $0x2,0x28(%rsp)
  30:	48 8b 44 24 20       	mov    0x20(%rsp),%rax
  35:	48 8b 54 24 28       	mov    0x28(%rsp),%rdx
  3a:	48 8b 5c 24 08       	mov    0x8(%rsp),%rbx
  3f:	48 83 c4 48          	add    $0x48,%rsp
  43:	c3                   	ret
  44:	8b c6                	mov    %esi,%eax
  46:	48 bb 87 ca eb 85 b1 79 37 9e 	movabs $0x9e3779b185ebca87,%rbx
  50:	48 f7 e3             	mul    %rbx
  53:	8b d6                	mov    %esi,%edx
  55:	c1 ea 07             	shr    $0x7,%edx
  58:	8b d2                	mov    %edx,%edx
  5a:	48 33 c2             	xor    %rdx,%rax
  5d:	48 89 44 24 30       	mov    %rax,0x30(%rsp)
  62:	c6 44 24 38 01       	movb   $0x1,0x38(%rsp)
  67:	48 8b 44 24 30       	mov    0x30(%rsp),%rax
  6c:	48 8b 54 24 38       	mov    0x38(%rsp),%rdx
  71:	48 8b 5c 24 08       	mov    0x8(%rsp),%rbx
  76:	48 83 c4 48          	add    $0x48,%rsp
  7a:	c3                   	ret
	...

Disassembly of section .text.pipeline_result:

0000000000000000 <pipeline_result>:
   0:	55                   	push   %rbp
   1:	48 8b ec             	mov    %rsp,%rbp
   4:	48 81 ec b0 00 00 00 	sub    $0xb0,%rsp
   b:	48 89 9d 58 ff ff ff 	mov    %rbx,-0xa8(%rbp)
  12:	89 7d f0             	mov    %edi,-0x10(%rbp)
  15:	89 75 f8             	mov    %esi,-0x8(%rbp)
  18:	81 e7 ff 00 00 00    	and    $0xff,%edi
  1e:	3b 7d f8             	cmp    -0x8(%rbp),%edi
  21:	73 2c                	jae    4f <pipeline_result+0x4f>
  23:	c7 85 70 ff ff ff 01 00 00 00 	movl   $0x1,-0x90(%rbp)
  2d:	8b 45 f0             	mov    -0x10(%rbp),%eax
  30:	89 85 74 ff ff ff    	mov    %eax,-0x8c(%rbp)
  36:	48 8b 8d 70 ff ff ff 	mov    -0x90(%rbp),%rcx
  3d:	48 89 4d 80          	mov    %rcx,-0x80(%rbp)
  41:	c6 45 88 02          	movb   $0x2,-0x78(%rbp)
  45:	48 8b 7d 80          	mov    -0x80(%rbp),%rdi
  49:	48 8b 55 88          	mov    -0x78(%rbp),%rdx
  4d:	eb 2b                	jmp    7a <pipeline_result+0x7a>
  4f:	8b 45 f0             	mov    -0x10(%rbp),%eax
  52:	48 bb 87 ca eb 85 b1 79 37 9e 	movabs $0x9e3779b185ebca87,%rbx
  5c:	48 f7 e3             	mul    %rbx
  5f:	8b 4d f0             	mov    -0x10(%rbp),%ecx
  62:	c1 e9 07             	shr    $0x7,%ecx
  65:	8b c9                	mov    %ecx,%ecx
  67:	48 33 c1             	xor    %rcx,%rax
  6a:	48 89 45 90          	mov    %rax,-0x70(%rbp)
  6e:	c6 45 98 01          	movb   $0x1,-0x68(%rbp)
  72:	48 8b 7d 90          	mov    -0x70(%rbp),%rdi
  76:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
  7a:	48 89 bd 60 ff ff ff 	mov    %rdi,-0xa0(%rbp)
  81:	48 89 95 68 ff ff ff 	mov    %rdx,-0x98(%rbp)
  88:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # 8f <pipeline_result+0x8f>	8b: R_X86_64_GOTPCREL	kernels.pipeline_result(uint, uint).__lambda_L54_C14(ulong)-0x4
  8f:	8a 9d 68 ff ff ff    	mov    -0x98(%rbp),%bl
  95:	b9 02 00 00 00       	mov    $0x2,%ecx
  9a:	3a d9                	cmp    %cl,%bl
  9c:	75 02                	jne    a0 <pipeline_result+0xa0>
  9e:	eb 45                	jmp    e5 <pipeline_result+0xe5>
  a0:	41 b8 01 00 00 00    	mov    $0x1,%r8d
  a6:	41 3a d8             	cmp    %r8b,%bl
  a9:	75 25                	jne    d0 <pipeline_result+0xd0>
  ab:	41 3a d8             	cmp    %r8b,%bl
  ae:	0f 85 00 00 00 00    	jne    b4 <pipeline_result+0xb4>	b0: R_X86_64_PLT32	error_d.badAccess()-0x4
  b4:	48 8b bd 60 ff ff ff 	mov    -0xa0(%rbp),%rdi
  bb:	48 ff d0             	rex.W call *%rax
  be:	48 89 45 b0          	mov    %rax,-0x50(%rbp)
  c2:	c6 45 b8 01          	movb   $0x1,-0x48(%rbp)
  c6:	48 8b 7d b0          	mov    -0x50(%rbp),%rdi
  ca:	48 8b 55 b8          	mov    -0x48(%rbp),%rdx
  ce:	eb 15                	jmp    e5 <pipeline_result+0xe5>
  d0:	45 31 c9             	xor    %r9d,%r9d
  d3:	44 89 4d c8          	mov    %r9d,-0x38(%rbp)
  d7:	44 89 4d cc          	mov    %r9d,-0x34(%rbp)
  db:	44 88 4d c8          	mov    %r9b,-0x38(%rbp)
  df:	48 8b 55 c8          	mov    -0x38(%rbp),%rdx
  e3:	31 ff                	xor    %edi,%edi
  e5:	48 89 7d a0          	mov    %rdi,-0x60(%rbp)
  e9:	48 89 55 a8          	mov    %rdx,-0x58(%rbp)
  ed:	48 89 e8             	mov    %rbp,%rax
  f0:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
  f4:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # fb <pipeline_result+0xfb>	f7: R_X86_64_GOTPCREL	kernels.pipeline_result(uint, uint).__lambda_L55_C18(ulong)-0x4
  fb:	48 89 4d d8          	mov    %rcx,-0x28(%rbp)
  ff:	8a 5d a8             	mov    -0x58(%rbp),%bl
 102:	80 fb 02             	cmp    $0x2,%bl
 105:	75 05                	jne    10c <pipeline_result+0x10c>
 107:	48 89 f8             	mov    %rdi,%rax
 10a:	eb 32                	jmp    13e <pipeline_result+0x13e>
 10c:	be 01 00 00 00       	mov    $0x1,%esi
 111:	40 3a de             	cmp    %sil,%bl
 114:	75 17                	jne    12d <pipeline_result+0x12d>
 116:	40 3a de             	cmp    %sil,%bl
 119:	0f 85 00 00 00 00    	jne    11f <pipeline_result+0x11f>	11b: R_X86_64_PLT32	error_d.badAccess()-0x4
 11f:	48 8b 75 a0          	mov    -0x60(%rbp),%rsi
 123:	48 8b 7d d0          	mov    -0x30(%rbp),%rdi
 127:	48 ff 55 d8          	rex.W call *-0x28(%rbp)
 12b:	eb 11                	jmp    13e <pipeline_result+0x13e>
 12d:	31 c9                	xor    %ecx,%ecx
 12f:	89 4d e8             	mov    %ecx,-0x18(%rbp)
 132:	89 4d ec             	mov    %ecx,-0x14(%rbp)
 135:	88 4d e8             	mov    %cl,-0x18(%rbp)
 138:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
 13c:	31 c0                	xor    %eax,%eax
 13e:	48 8b 9d 58 ff ff ff 	mov    -0xa8(%rbp),%rbx
 145:	48 8b e5             	mov    %rbp,%rsp
 148:	5d                   	pop    %rbp
 149:	c3                   	ret
	...

Disassembly of section .text._D7kernels15pipeline_resultUNaNbNiNfkkZ16__lambda_L54_C14FNaNbNiNfmZm:

0000000000000000 <kernels.pipeline_result(uint, uint).__lambda_L54_C14(ulong)>:
   0:	48 8b c7             	mov    %rdi,%rax
   3:	48 b9 f0 de bc 9a 78 56 34 12 	movabs $0x123456789abcdef0,%rcx
   d:	48 33 c1             	xor    %rcx,%rax
  10:	c3                   	ret
  11:	00 00                	add    %al,(%rax)
	...

Disassembly of section .text._D7kernels15pipeline_resultUNaNbNiNfkkZ16__lambda_L55_C18MFNaNbNiNfmZS7error_d__T6ResultTmTSQDm11DomainErrorZQBc:

0000000000000000 <kernels.pipeline_result(uint, uint).__lambda_L55_C18(ulong)>:
   0:	55                   	push   %rbp
   1:	48 8b ec             	mov    %rsp,%rbp
   4:	48 83 ec 20          	sub    $0x20,%rsp
   8:	48 89 7d f0          	mov    %rdi,-0x10(%rbp)
   c:	48 89 75 f8          	mov    %rsi,-0x8(%rbp)
  10:	f6 45 f8 0f          	testb  $0xf,-0x8(%rbp)
  14:	74 0f                	je     25 <kernels.pipeline_result(uint, uint).__lambda_L55_C18(ulong)+0x25>
  16:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
  1a:	48 8d 3c 7f          	lea    (%rdi,%rdi,2),%rdi
  1e:	e8 00 00 00 00       	call   23 <kernels.pipeline_result(uint, uint).__lambda_L55_C18(ulong)+0x23>	1f: R_X86_64_PLT32	error_d.Result!(ulong, kernels.DomainError).Result.success!().success(ulong)-0x4
  23:	eb 1a                	jmp    3f <kernels.pipeline_result(uint, uint).__lambda_L55_C18(ulong)+0x3f>
  25:	c7 45 e8 02 00 00 00 	movl   $0x2,-0x18(%rbp)
  2c:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  30:	8b 48 f0             	mov    -0x10(%rax),%ecx
  33:	89 4d ec             	mov    %ecx,-0x14(%rbp)
  36:	48 8b 7d e8          	mov    -0x18(%rbp),%rdi
  3a:	e8 00 00 00 00       	call   3f <kernels.pipeline_result(uint, uint).__lambda_L55_C18(ulong)+0x3f>	3b: R_X86_64_PLT32	error_d.Result!(ulong, kernels.DomainError).Result.failure!().failure(kernels.DomainError)-0x4
  3f:	48 8b e5             	mov    %rbp,%rsp
  42:	5d                   	pop    %rbp
  43:	c3                   	ret

Disassembly of section .text.pipeline_status:

0000000000000000 <pipeline_status>:
   0:	48 83 ec 18          	sub    $0x18,%rsp
   4:	48 89 1c 24          	mov    %rbx,(%rsp)
   8:	49 89 d1             	mov    %rdx,%r9
   b:	49 c7 01 00 00 00 00 	movq   $0x0,(%r9)
  12:	48 c7 01 00 00 00 00 	movq   $0x0,(%rcx)
  19:	44 8b c7             	mov    %edi,%r8d
  1c:	41 81 e0 ff 00 00 00 	and    $0xff,%r8d
  23:	44 3b c6             	cmp    %esi,%r8d
  26:	73 16                	jae    3e <pipeline_status+0x3e>
  28:	c7 44 24 08 01 00 00 00 	movl   $0x1,0x8(%rsp)
  30:	89 7c 24 0c          	mov    %edi,0xc(%rsp)
  34:	48 8b 74 24 08       	mov    0x8(%rsp),%rsi
  39:	48 89 31             	mov    %rsi,(%rcx)
  3c:	eb 43                	jmp    81 <pipeline_status+0x81>
  3e:	8b c7                	mov    %edi,%eax
  40:	49 ba 87 ca eb 85 b1 79 37 9e 	movabs $0x9e3779b185ebca87,%r10
  4a:	49 f7 e2             	mul    %r10
  4d:	48 89 c6             	mov    %rax,%rsi
  50:	8b d7                	mov    %edi,%edx
  52:	c1 ea 07             	shr    $0x7,%edx
  55:	8b d2                	mov    %edx,%edx
  57:	48 33 f2             	xor    %rdx,%rsi
  5a:	49 bb f0 de bc 9a 78 56 34 12 	movabs $0x123456789abcdef0,%r11
  64:	49 33 f3             	xor    %r11,%rsi
  67:	40 f6 c6 0f          	test   $0xf,%sil
  6b:	75 1f                	jne    8c <pipeline_status+0x8c>
  6d:	c7 44 24 10 02 00 00 00 	movl   $0x2,0x10(%rsp)
  75:	89 7c 24 14          	mov    %edi,0x14(%rsp)
  79:	48 8b 5c 24 10       	mov    0x10(%rsp),%rbx
  7e:	48 89 19             	mov    %rbx,(%rcx)
  81:	31 c0                	xor    %eax,%eax
  83:	48 8b 1c 24          	mov    (%rsp),%rbx
  87:	48 83 c4 18          	add    $0x18,%rsp
  8b:	c3                   	ret
  8c:	48 8b c6             	mov    %rsi,%rax
  8f:	48 8d 04 40          	lea    (%rax,%rax,2),%rax
  93:	49 89 01             	mov    %rax,(%r9)
  96:	b8 01 00 00 00       	mov    $0x1,%eax
  9b:	48 8b 1c 24          	mov    (%rsp),%rbx
  9f:	48 83 c4 18          	add    $0x18,%rsp
  a3:	c3                   	ret

Disassembly of section .text._D7error_d__T6ResultTmTS7kernels11DomainErrorZQBh11requireLiveMxFNaNbNiNfZv:

0000000000000000 <error_d.Result!(ulong, kernels.DomainError).Result.requireLive() const>:
   0:	c3                   	ret
   1:	00 00                	add    %al,(%rax)
	...

Disassembly of section .text._D7error_d__T6ResultTmTS7kernels11DomainErrorZQBh6__ctorMFNaNbNcNiNfSQCp__T12PlainStorageTSQDl__T7SuccessTmZQlTSQEg__T7FailureTQEaZQnZQChZSQFh__TQFcTmTQEyZQFm:

0000000000000000 <error_d.Result!(ulong, kernels.DomainError).Result.this(error_d.PlainStorage!(error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).PlainStorage)>:
   0:	55                   	push   %rbp
   1:	48 8b ec             	mov    %rsp,%rbp
   4:	48 83 ec 30          	sub    $0x30,%rsp
   8:	48 89 7d e0          	mov    %rdi,-0x20(%rbp)
   c:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
  10:	48 89 55 f8          	mov    %rdx,-0x8(%rbp)
  14:	48 8d 75 d0          	lea    -0x30(%rbp),%rsi
  18:	48 8d 7d f0          	lea    -0x10(%rbp),%rdi
  1c:	e8 00 00 00 00       	call   21 <error_d.Result!(ulong, kernels.DomainError).Result.this(error_d.PlainStorage!(error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).PlainStorage)+0x21>	1d: R_X86_64_PLT32	_D4core8lifetime__T15moveEmplaceImplTS7error_d__T12PlainStorageTSQBb__T7SuccessTmZQlTSQBw__T7FailureTS7kernels11DomainErrorZQBgZQDbZQEjFNaNbNiNfMKQEfNkMKQEmZv-0x4
  21:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
  25:	48 8b 4d d8          	mov    -0x28(%rbp),%rcx
  29:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
  2d:	48 89 02             	mov    %rax,(%rdx)
  30:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
  34:	48 8b 7d e0          	mov    -0x20(%rbp),%rdi
  38:	48 89 d0             	mov    %rdx,%rax
  3b:	48 8b e5             	mov    %rbp,%rsp
  3e:	5d                   	pop    %rbp
  3f:	c3                   	ret

Disassembly of section .text._D7error_d__T6ResultTmTS7kernels11DomainErrorZQBh12plainSuccessFNaNbNiNemZSQCv__TQCqTmTQCmZQDa:

0000000000000000 <error_d.Result!(ulong, kernels.DomainError).Result.plainSuccess(ulong)>:
   0:	48 83 ec 18          	sub    $0x18,%rsp
   4:	48 89 3c 24          	mov    %rdi,(%rsp)
   8:	c6 44 24 08 01       	movb   $0x1,0x8(%rsp)
   d:	48 8b 54 24 08       	mov    0x8(%rsp),%rdx
  12:	48 8b 04 24          	mov    (%rsp),%rax
  16:	48 83 c4 18          	add    $0x18,%rsp
  1a:	c3                   	ret
	...

Disassembly of section .text._D7error_d__T6ResultTmTS7kernels11DomainErrorZQBh12plainFailureFNaNbNiNeQBxZSQCx__TQCsTmTQCoZQDc:

0000000000000000 <error_d.Result!(ulong, kernels.DomainError).Result.plainFailure(kernels.DomainError)>:
   0:	48 83 ec 18          	sub    $0x18,%rsp
   4:	48 89 3c 24          	mov    %rdi,(%rsp)
   8:	c6 44 24 08 02       	movb   $0x2,0x8(%rsp)
   d:	48 8b 54 24 08       	mov    0x8(%rsp),%rdx
  12:	48 8b 04 24          	mov    (%rsp),%rax
  16:	48 83 c4 18          	add    $0x18,%rsp
  1a:	c3                   	ret
	...

Disassembly of section .text._D7error_d__T6ResultTmTS7kernels11DomainErrorZQBh5stateMxFNaNbNiNfZEQCo11ResultState:

0000000000000000 <error_d.Result!(ulong, kernels.DomainError).Result.state() const>:
   0:	0f b6 47 08          	movzbl 0x8(%rdi),%eax
   4:	c3                   	ret
   5:	00 00                	add    %al,(%rax)
	...

Disassembly of section .text._D7error_d__T6ResultTmTS7kernels11DomainErrorZQBh8hasValueMxFNaNbNiNfZb:

0000000000000000 <error_d.Result!(ulong, kernels.DomainError).Result.hasValue() const>:
   0:	80 7f 08 01          	cmpb   $0x1,0x8(%rdi)
   4:	0f 94 c0             	sete   %al
   7:	c3                   	ret

Disassembly of section .text._D7error_d__T6ResultTmTS7kernels11DomainErrorZQBh8hasErrorMxFNaNbNiNfZb:

0000000000000000 <error_d.Result!(ulong, kernels.DomainError).Result.hasError() const>:
   0:	80 7f 08 02          	cmpb   $0x2,0x8(%rdi)
   4:	0f 94 c0             	sete   %al
   7:	c3                   	ret

Disassembly of section .text._D7error_d__T6ResultTmTS7kernels11DomainErrorZQBh7isEmptyMxFNaNbNiNfZb:

0000000000000000 <error_d.Result!(ulong, kernels.DomainError).Result.isEmpty() const>:
   0:	80 7f 08 00          	cmpb   $0x0,0x8(%rdi)
   4:	0f 94 c0             	sete   %al
   7:	c3                   	ret

Disassembly of section .text._D7error_d__T6ResultTmTS7kernels11DomainErrorZQBh8opAssignMFNaNbNiNfSQCp__TQCkTmTQCgZQCuZv:

0000000000000000 <error_d.Result!(ulong, kernels.DomainError).Result.opAssign(error_d.Result!(ulong, kernels.DomainError).Result)>:
   0:	48 83 ec 18          	sub    $0x18,%rsp
   4:	48 89 74 24 08       	mov    %rsi,0x8(%rsp)
   9:	48 89 54 24 10       	mov    %rdx,0x10(%rsp)
   e:	48 8b 4c 24 10       	mov    0x10(%rsp),%rcx
  13:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
  18:	48 89 07             	mov    %rax,(%rdi)
  1b:	48 89 4f 08          	mov    %rcx,0x8(%rdi)
  1f:	48 83 c4 18          	add    $0x18,%rsp
  23:	c3                   	ret

Disassembly of section .text._D7error_d__T6ResultTmTS7kernels11DomainErrorZQBh7replaceMFNaNbNiNeKSQCp__T12PlainStorageTSQDl__T7SuccessTmZQlTSQEg__T7FailureTQEaZQnZQChZv:

0000000000000000 <error_d.Result!(ulong, kernels.DomainError).Result.replace(ref error_d.PlainStorage!(error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).PlainStorage)>:
   0:	55                   	push   %rbp
   1:	48 8b ec             	mov    %rsp,%rbp
   4:	48 83 ec 40          	sub    $0x40,%rsp
   8:	48 89 5d c8          	mov    %rbx,-0x38(%rbp)
   c:	48 89 75 f8          	mov    %rsi,-0x8(%rbp)
  10:	48 89 fb             	mov    %rdi,%rbx
  13:	48 8d 75 d0          	lea    -0x30(%rbp),%rsi
  17:	48 8b fb             	mov    %rbx,%rdi
  1a:	e8 00 00 00 00       	call   1f <error_d.Result!(ulong, kernels.DomainError).Result.replace(ref error_d.PlainStorage!(error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).PlainStorage)+0x1f>	1b: R_X86_64_PLT32	_D4core8lifetime__T15moveEmplaceImplTS7error_d__T12PlainStorageTSQBb__T7SuccessTmZQlTSQBw__T7FailureTS7kernels11DomainErrorZQBgZQDbZQEjFNaNbNiNfMKQEfNkMKQEmZv-0x4
  1f:	31 c0                	xor    %eax,%eax
  21:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
  25:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
  29:	48 8b f3             	mov    %rbx,%rsi
  2c:	48 8d 7d e0          	lea    -0x20(%rbp),%rdi
  30:	e8 00 00 00 00       	call   35 <error_d.Result!(ulong, kernels.DomainError).Result.replace(ref error_d.PlainStorage!(error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).PlainStorage)+0x35>	31: R_X86_64_PLT32	_D4core8lifetime__T8moveImplTS7error_d__T12PlainStorageTSQBb__T7SuccessTmZQlTSQBw__T7FailureTS7kernels11DomainErrorZQBgZQDbZQEbFNaNbNiNfMKQEfNkMKQEmZv-0x4
  35:	48 8b f3             	mov    %rbx,%rsi
  38:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
  3c:	e8 00 00 00 00       	call   41 <error_d.Result!(ulong, kernels.DomainError).Result.replace(ref error_d.PlainStorage!(error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).PlainStorage)+0x41>	3d: R_X86_64_PLT32	_D4core8lifetime__T8moveImplTS7error_d__T12PlainStorageTSQBb__T7SuccessTmZQlTSQBw__T7FailureTS7kernels11DomainErrorZQBgZQDbZQEbFNaNbNiNfMKQEfNkMKQEmZv-0x4
  41:	48 8b 5d c8          	mov    -0x38(%rbp),%rbx
  45:	48 8b e5             	mov    %rbp,%rsp
  48:	5d                   	pop    %rbp
  49:	c3                   	ret
	...

Disassembly of section .text._D7error_d__T6ResultTmTS7kernels11DomainErrorZQBh11takeStorageMFNaNbNiNeZSQCu__T12PlainStorageTSQDq__T7SuccessTmZQlTSQEl__T7FailureTQEfZQnZQCh:

0000000000000000 <error_d.Result!(ulong, kernels.DomainError).Result.takeStorage()>:
   0:	55                   	push   %rbp
   1:	48 8b ec             	mov    %rsp,%rbp
   4:	48 83 ec 50          	sub    $0x50,%rsp
   8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
   c:	48 8d 75 c0          	lea    -0x40(%rbp),%rsi
  10:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
  14:	e8 00 00 00 00       	call   19 <error_d.Result!(ulong, kernels.DomainError).Result.takeStorage()+0x19>	15: R_X86_64_PLT32	_D4core8lifetime__T15moveEmplaceImplTS7error_d__T12PlainStorageTSQBb__T7SuccessTmZQlTSQBw__T7FailureTS7kernels11DomainErrorZQBgZQDbZQEjFNaNbNiNfMKQEfNkMKQEmZv-0x4
  19:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
  1d:	48 89 45 b0          	mov    %rax,-0x50(%rbp)
  21:	48 8b 4d c8          	mov    -0x38(%rbp),%rcx
  25:	48 89 4d b8          	mov    %rcx,-0x48(%rbp)
  29:	31 d2                	xor    %edx,%edx
  2b:	48 89 55 d0          	mov    %rdx,-0x30(%rbp)
  2f:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
  33:	48 8b 75 f8          	mov    -0x8(%rbp),%rsi
  37:	48 8d 7d d0          	lea    -0x30(%rbp),%rdi
  3b:	e8 00 00 00 00       	call   40 <error_d.Result!(ulong, kernels.DomainError).Result.takeStorage()+0x40>	3c: R_X86_64_PLT32	_D4core8lifetime__T8moveImplTS7error_d__T12PlainStorageTSQBb__T7SuccessTmZQlTSQBw__T7FailureTS7kernels11DomainErrorZQBgZQDbZQEbFNaNbNiNfMKQEfNkMKQEmZv-0x4
  40:	48 8d 75 e0          	lea    -0x20(%rbp),%rsi
  44:	48 8d 7d b0          	lea    -0x50(%rbp),%rdi
  48:	e8 00 00 00 00       	call   4d <error_d.Result!(ulong, kernels.DomainError).Result.takeStorage()+0x4d>	49: R_X86_64_PLT32	_D4core8lifetime__T15moveEmplaceImplTS7error_d__T12PlainStorageTSQBb__T7SuccessTmZQlTSQBw__T7FailureTS7kernels11DomainErrorZQBgZQDbZQEjFNaNbNiNfMKQEfNkMKQEmZv-0x4
  4d:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  51:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
  55:	48 8b e5             	mov    %rbp,%rsp
  58:	5d                   	pop    %rbp
  59:	c3                   	ret
	...

Disassembly of section .text._D7error_d__T6ResultTS7kernels5BlockTSQq11DomainErrorZQBp11requireLiveMxFNaNbNiNfZv:

0000000000000000 <error_d.Result!(kernels.Block, kernels.DomainError).Result.requireLive() const>:
   0:	c3                   	ret
   1:	00 00                	add    %al,(%rax)
	...

Disassembly of section .text._D7error_d__T6ResultTS7kernels5BlockTSQq11DomainErrorZQBp6__ctorMFNaNbNcNiNfSQCx__T12PlainStorageTSQDt__T7SuccessTQDpZQnTSQEq__T7FailureTQDwZQnZQCjZSQFr__TQFmTQFiTQEwZQFy:

0000000000000000 <error_d.Result!(kernels.Block, kernels.DomainError).Result.this(error_d.PlainStorage!(error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).PlainStorage)>:
   0:	55                   	push   %rbp
   1:	48 8b ec             	mov    %rsp,%rbp
   4:	48 81 ec 10 01 00 00 	sub    $0x110,%rsp
   b:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
   f:	48 8d b5 f0 fe ff ff 	lea    -0x110(%rbp),%rsi
  16:	48 8d 7d 10          	lea    0x10(%rbp),%rdi
  1a:	e8 00 00 00 00       	call   1f <error_d.Result!(kernels.Block, kernels.DomainError).Result.this(error_d.PlainStorage!(error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).PlainStorage)+0x1f>	1b: R_X86_64_PLT32	_D4core8lifetime__T15moveEmplaceImplTS7error_d__T12PlainStorageTSQBb__T7SuccessTS7kernels5BlockZQzTSQCk__T7FailureTSQBj11DomainErrorZQBbZQDkZQEsFNaNbNiNfMKQEoNkMKQEvZv-0x4
  1f:	48 8d b5 f0 fe ff ff 	lea    -0x110(%rbp),%rsi
  26:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
  2a:	b9 21 00 00 00       	mov    $0x21,%ecx
  2f:	f3 48 a5             	rep movsq (%rsi),(%rdi)
  32:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
  36:	48 8b c7             	mov    %rdi,%rax
  39:	48 8b e5             	mov    %rbp,%rsp
  3c:	5d                   	pop    %rbp
  3d:	c3                   	ret
	...

Disassembly of section .text._D7error_d__T6ResultTS7kernels5BlockTSQq11DomainErrorZQBp12plainSuccessFNaNbNiNeQChZSQDf__TQDaTQCwTQCkZQDm:

0000000000000000 <error_d.Result!(kernels.Block, kernels.DomainError).Result.plainSuccess(kernels.Block)>:
   0:	48 89 f8             	mov    %rdi,%rax
   3:	48 8d 74 24 08       	lea    0x8(%rsp),%rsi
   8:	48 8b f8             	mov    %rax,%rdi
   b:	b9 20 00 00 00       	mov    $0x20,%ecx
  10:	f3 48 a5             	rep movsq (%rsi),(%rdi)
  13:	c6 80 00 01 00 00 01 	movb   $0x1,0x100(%rax)
  1a:	c3                   	ret
	...

Disassembly of section .text._D7error_d__T6ResultTS7kernels5BlockTSQq11DomainErrorZQBp12plainFailureFNaNbNiNeQBrZSQDf__TQDaTQCwTQCkZQDm:

0000000000000000 <error_d.Result!(kernels.Block, kernels.DomainError).Result.plainFailure(kernels.DomainError)>:
   0:	48 89 f8             	mov    %rdi,%rax
   3:	48 89 30             	mov    %rsi,(%rax)
   6:	c6 80 00 01 00 00 02 	movb   $0x2,0x100(%rax)
   d:	c3                   	ret
	...

Disassembly of section .text._D7error_d__T6ResultTS7kernels5BlockTSQq11DomainErrorZQBp5stateMxFNaNbNiNfZEQCw11ResultState:

0000000000000000 <error_d.Result!(kernels.Block, kernels.DomainError).Result.state() const>:
   0:	0f b6 87 00 01 00 00 	movzbl 0x100(%rdi),%eax
   7:	c3                   	ret

Disassembly of section .text._D7error_d__T6ResultTS7kernels5BlockTSQq11DomainErrorZQBp8hasValueMxFNaNbNiNfZb:

0000000000000000 <error_d.Result!(kernels.Block, kernels.DomainError).Result.hasValue() const>:
   0:	80 bf 00 01 00 00 01 	cmpb   $0x1,0x100(%rdi)
   7:	0f 94 c0             	sete   %al
   a:	c3                   	ret
	...

Disassembly of section .text._D7error_d__T6ResultTS7kernels5BlockTSQq11DomainErrorZQBp8hasErrorMxFNaNbNiNfZb:

0000000000000000 <error_d.Result!(kernels.Block, kernels.DomainError).Result.hasError() const>:
   0:	80 bf 00 01 00 00 02 	cmpb   $0x2,0x100(%rdi)
   7:	0f 94 c0             	sete   %al
   a:	c3                   	ret
	...

Disassembly of section .text._D7error_d__T6ResultTS7kernels5BlockTSQq11DomainErrorZQBp7isEmptyMxFNaNbNiNfZb:

0000000000000000 <error_d.Result!(kernels.Block, kernels.DomainError).Result.isEmpty() const>:
   0:	80 bf 00 01 00 00 00 	cmpb   $0x0,0x100(%rdi)
   7:	0f 94 c0             	sete   %al
   a:	c3                   	ret
	...

Disassembly of section .text._D7error_d__T6ResultTS7kernels5BlockTSQq11DomainErrorZQBp8opAssignMFNaNbNiNfSQCx__TQCsTQCoTQCcZQDeZv:

0000000000000000 <error_d.Result!(kernels.Block, kernels.DomainError).Result.opAssign(error_d.Result!(kernels.Block, kernels.DomainError).Result)>:
   0:	48 89 f8             	mov    %rdi,%rax
   3:	48 8d 74 24 08       	lea    0x8(%rsp),%rsi
   8:	48 8b f8             	mov    %rax,%rdi
   b:	b9 21 00 00 00       	mov    $0x21,%ecx
  10:	f3 48 a5             	rep movsq (%rsi),(%rdi)
  13:	c3                   	ret

Disassembly of section .text._D7error_d__T6ResultTS7kernels5BlockTSQq11DomainErrorZQBp7replaceMFNaNbNiNeKSQCx__T12PlainStorageTSQDt__T7SuccessTQDpZQnTSQEq__T7FailureTQDwZQnZQCjZv:

0000000000000000 <error_d.Result!(kernels.Block, kernels.DomainError).Result.replace(ref error_d.PlainStorage!(error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).PlainStorage)>:
   0:	55                   	push   %rbp
   1:	48 8b ec             	mov    %rsp,%rbp
   4:	48 81 ec 60 05 00 00 	sub    $0x560,%rsp
   b:	48 89 7d f0          	mov    %rdi,-0x10(%rbp)
   f:	48 89 75 f8          	mov    %rsi,-0x8(%rbp)
  13:	48 8d b5 d8 fd ff ff 	lea    -0x228(%rbp),%rsi
  1a:	48 8b 7d f0          	mov    -0x10(%rbp),%rdi
  1e:	e8 00 00 00 00       	call   23 <error_d.Result!(kernels.Block, kernels.DomainError).Result.replace(ref error_d.PlainStorage!(error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).PlainStorage)+0x23>	1f: R_X86_64_PLT32	_D4core8lifetime__T15moveEmplaceImplTS7error_d__T12PlainStorageTSQBb__T7SuccessTS7kernels5BlockZQzTSQCk__T7FailureTSQBj11DomainErrorZQBbZQDkZQEsFNaNbNiNfMKQEoNkMKQEvZv-0x4
  23:	48 8d b5 d8 fd ff ff 	lea    -0x228(%rbp),%rsi
  2a:	48 8d bd c8 fc ff ff 	lea    -0x338(%rbp),%rdi
  31:	b9 21 00 00 00       	mov    $0x21,%ecx
  36:	f3 48 a5             	rep movsq (%rsi),(%rdi)
  39:	48 8d b5 d8 fd ff ff 	lea    -0x228(%rbp),%rsi
  40:	48 8d bd b8 fb ff ff 	lea    -0x448(%rbp),%rdi
  47:	b9 21 00 00 00       	mov    $0x21,%ecx
  4c:	f3 48 a5             	rep movsq (%rsi),(%rdi)
  4f:	48 8d b5 d8 fd ff ff 	lea    -0x228(%rbp),%rsi
  56:	48 8d bd a8 fa ff ff 	lea    -0x558(%rbp),%rdi
  5d:	b9 21 00 00 00       	mov    $0x21,%ecx
  62:	f3 48 a5             	rep movsq (%rsi),(%rdi)
  65:	31 c0                	xor    %eax,%eax
  67:	48 8d bd e8 fe ff ff 	lea    -0x118(%rbp),%rdi
  6e:	b9 21 00 00 00       	mov    $0x21,%ecx
  73:	f3 48 ab             	rep stos %rax,(%rdi)
  76:	48 8b 75 f0          	mov    -0x10(%rbp),%rsi
  7a:	48 8d bd e8 fe ff ff 	lea    -0x118(%rbp),%rdi
  81:	e8 00 00 00 00       	call   86 <error_d.Result!(kernels.Block, kernels.DomainError).Result.replace(ref error_d.PlainStorage!(error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).PlainStorage)+0x86>	82: R_X86_64_PLT32	_D4core8lifetime__T8moveImplTS7error_d__T12PlainStorageTSQBb__T7SuccessTS7kernels5BlockZQzTSQCk__T7FailureTSQBj11DomainErrorZQBbZQDkZQEkFNaNbNiNfMKQEoNkMKQEvZv-0x4
  86:	48 8b 75 f0          	mov    -0x10(%rbp),%rsi
  8a:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
  8e:	e8 00 00 00 00       	call   93 <error_d.Result!(kernels.Block, kernels.DomainError).Result.replace(ref error_d.PlainStorage!(error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).PlainStorage)+0x93>	8f: R_X86_64_PLT32	_D4core8lifetime__T8moveImplTS7error_d__T12PlainStorageTSQBb__T7SuccessTS7kernels5BlockZQzTSQCk__T7FailureTSQBj11DomainErrorZQBbZQDkZQEkFNaNbNiNfMKQEoNkMKQEvZv-0x4
  93:	48 8b e5             	mov    %rbp,%rsp
  96:	5d                   	pop    %rbp
  97:	c3                   	ret

Disassembly of section .text._D7error_d__T6ResultTS7kernels5BlockTSQq11DomainErrorZQBp11takeStorageMFNaNbNiNeZSQDc__T12PlainStorageTSQDy__T7SuccessTQDuZQnTSQEv__T7FailureTQEbZQnZQCj:

0000000000000000 <error_d.Result!(kernels.Block, kernels.DomainError).Result.takeStorage()>:
   0:	55                   	push   %rbp
   1:	48 8b ec             	mov    %rsp,%rbp
   4:	48 81 ec 70 06 00 00 	sub    $0x670,%rsp
   b:	48 89 7d f0          	mov    %rdi,-0x10(%rbp)
   f:	48 89 75 f8          	mov    %rsi,-0x8(%rbp)
  13:	48 8d b5 c8 fc ff ff 	lea    -0x338(%rbp),%rsi
  1a:	48 8b 7d f0          	mov    -0x10(%rbp),%rdi
  1e:	e8 00 00 00 00       	call   23 <error_d.Result!(kernels.Block, kernels.DomainError).Result.takeStorage()+0x23>	1f: R_X86_64_PLT32	_D4core8lifetime__T15moveEmplaceImplTS7error_d__T12PlainStorageTSQBb__T7SuccessTS7kernels5BlockZQzTSQCk__T7FailureTSQBj11DomainErrorZQBbZQDkZQEsFNaNbNiNfMKQEoNkMKQEvZv-0x4
  23:	48 8d b5 c8 fc ff ff 	lea    -0x338(%rbp),%rsi
  2a:	48 8d bd b8 fb ff ff 	lea    -0x448(%rbp),%rdi
  31:	b9 21 00 00 00       	mov    $0x21,%ecx
  36:	f3 48 a5             	rep movsq (%rsi),(%rdi)
  39:	48 8d b5 c8 fc ff ff 	lea    -0x338(%rbp),%rsi
  40:	48 8d bd a8 fa ff ff 	lea    -0x558(%rbp),%rdi
  47:	b9 21 00 00 00       	mov    $0x21,%ecx
  4c:	f3 48 a5             	rep movsq (%rsi),(%rdi)
  4f:	48 8d b5 c8 fc ff ff 	lea    -0x338(%rbp),%rsi
  56:	48 8d bd 98 f9 ff ff 	lea    -0x668(%rbp),%rdi
  5d:	b9 21 00 00 00       	mov    $0x21,%ecx
  62:	f3 48 a5             	rep movsq (%rsi),(%rdi)
  65:	31 c0                	xor    %eax,%eax
  67:	48 8d bd d8 fd ff ff 	lea    -0x228(%rbp),%rdi
  6e:	b9 21 00 00 00       	mov    $0x21,%ecx
  73:	f3 48 ab             	rep stos %rax,(%rdi)
  76:	48 8b 75 f0          	mov    -0x10(%rbp),%rsi
  7a:	48 8d bd d8 fd ff ff 	lea    -0x228(%rbp),%rdi
  81:	e8 00 00 00 00       	call   86 <error_d.Result!(kernels.Block, kernels.DomainError).Result.takeStorage()+0x86>	82: R_X86_64_PLT32	_D4core8lifetime__T8moveImplTS7error_d__T12PlainStorageTSQBb__T7SuccessTS7kernels5BlockZQzTSQCk__T7FailureTSQBj11DomainErrorZQBbZQDkZQEkFNaNbNiNfMKQEoNkMKQEvZv-0x4
  86:	48 8d b5 e8 fe ff ff 	lea    -0x118(%rbp),%rsi
  8d:	48 8d bd 98 f9 ff ff 	lea    -0x668(%rbp),%rdi
  94:	e8 00 00 00 00       	call   99 <error_d.Result!(kernels.Block, kernels.DomainError).Result.takeStorage()+0x99>	95: R_X86_64_PLT32	_D4core8lifetime__T15moveEmplaceImplTS7error_d__T12PlainStorageTSQBb__T7SuccessTS7kernels5BlockZQzTSQCk__T7FailureTSQBj11DomainErrorZQBbZQDkZQEsFNaNbNiNfMKQEoNkMKQEvZv-0x4
  99:	48 8d b5 e8 fe ff ff 	lea    -0x118(%rbp),%rsi
  a0:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
  a4:	b9 21 00 00 00       	mov    $0x21,%ecx
  a9:	f3 48 a5             	rep movsq (%rsi),(%rdi)
  ac:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  b0:	48 8b e5             	mov    %rbp,%rsp
  b3:	5d                   	pop    %rbp
  b4:	c3                   	ret
  b5:	00 00                	add    %al,(%rax)
	...

Disassembly of section .text._D7error_d__T6ResultTmTS7kernels11DomainErrorZQBh__T7failureZQjFNaNbNiNfQBxZSQCx__TQCsTmTQCoZQDc:

0000000000000000 <error_d.Result!(ulong, kernels.DomainError).Result.failure!().failure(kernels.DomainError)>:
   0:	48 83 ec 18          	sub    $0x18,%rsp
   4:	48 89 3c 24          	mov    %rdi,(%rsp)
   8:	c6 44 24 08 02       	movb   $0x2,0x8(%rsp)
   d:	48 8b 54 24 08       	mov    0x8(%rsp),%rdx
  12:	48 8b 04 24          	mov    (%rsp),%rax
  16:	48 83 c4 18          	add    $0x18,%rsp
  1a:	c3                   	ret
	...

Disassembly of section .text._D7error_d__T6ResultTmTS7kernels11DomainErrorZQBh__T7successZQjFNaNbNiNfmZSQCv__TQCqTmTQCmZQDa:

0000000000000000 <error_d.Result!(ulong, kernels.DomainError).Result.success!().success(ulong)>:
   0:	48 83 ec 18          	sub    $0x18,%rsp
   4:	48 89 3c 24          	mov    %rdi,(%rsp)
   8:	c6 44 24 08 01       	movb   $0x1,0x8(%rsp)
   d:	48 8b 54 24 08       	mov    0x8(%rsp),%rdx
  12:	48 8b 04 24          	mov    (%rsp),%rax
  16:	48 83 c4 18          	add    $0x18,%rsp
  1a:	c3                   	ret
	...

Disassembly of section .text._D7error_d__T6ResultTS7kernels5BlockTSQq11DomainErrorZQBp__T7failureZQjFNaNbNiNfQBrZSQDf__TQDaTQCwTQCkZQDm:

0000000000000000 <error_d.Result!(kernels.Block, kernels.DomainError).Result.failure!().failure(kernels.DomainError)>:
   0:	48 81 ec 08 01 00 00 	sub    $0x108,%rsp
   7:	48 89 f8             	mov    %rdi,%rax
   a:	48 89 34 24          	mov    %rsi,(%rsp)
   e:	c6 84 24 00 01 00 00 02 	movb   $0x2,0x100(%rsp)
  16:	48 8d 34 24          	lea    (%rsp),%rsi
  1a:	48 8b f8             	mov    %rax,%rdi
  1d:	b9 21 00 00 00       	mov    $0x21,%ecx
  22:	f3 48 a5             	rep movsq (%rsi),(%rdi)
  25:	48 81 c4 08 01 00 00 	add    $0x108,%rsp
  2c:	c3                   	ret
  2d:	00 00                	add    %al,(%rax)
	...

Disassembly of section .text._D7error_d__T6ResultTS7kernels5BlockTSQq11DomainErrorZQBp__T7successZQjFNaNbNiNfQChZSQDf__TQDaTQCwTQCkZQDm:

0000000000000000 <error_d.Result!(kernels.Block, kernels.DomainError).Result.success!().success(kernels.Block)>:
   0:	48 81 ec 08 01 00 00 	sub    $0x108,%rsp
   7:	48 89 f8             	mov    %rdi,%rax
   a:	48 8d b4 24 10 01 00 00 	lea    0x110(%rsp),%rsi
  12:	48 8d 3c 24          	lea    (%rsp),%rdi
  16:	b9 20 00 00 00       	mov    $0x20,%ecx
  1b:	f3 48 a5             	rep movsq (%rsi),(%rdi)
  1e:	c6 84 24 00 01 00 00 01 	movb   $0x1,0x100(%rsp)
  26:	48 8d 34 24          	lea    (%rsp),%rsi
  2a:	48 8b f8             	mov    %rax,%rdi
  2d:	b9 21 00 00 00       	mov    $0x21,%ecx
  32:	f3 48 a5             	rep movsq (%rsi),(%rdi)
  35:	48 81 c4 08 01 00 00 	add    $0x108,%rsp
  3c:	c3                   	ret
  3d:	00 00                	add    %al,(%rax)
	...

Disassembly of section .text._D7error_d__T6ResultTmTS7kernels11DomainErrorZQBh__T3mapTPFNaNbNiNfmZmTSQCs__TQCnTmTQCjZQCxZQBoMFNaNbNiNfMQBxZQBn:

0000000000000000 <error_d.Result!(ulong, kernels.DomainError).Result.map!(ulong(ulong) pure nothrow @nogc @safe function, error_d.Result!(ulong, kernels.DomainError).Result).map(scope ulong(ulong) pure nothrow @nogc @safe function)>:
   0:	55                   	push   %rbp
   1:	48 8b ec             	mov    %rsp,%rbp
   4:	48 83 ec 40          	sub    $0x40,%rsp
   8:	48 89 5d c8          	mov    %rbx,-0x38(%rbp)
   c:	48 89 7d f0          	mov    %rdi,-0x10(%rbp)
  10:	48 89 75 f8          	mov    %rsi,-0x8(%rbp)
  14:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  18:	0f b6 48 08          	movzbl 0x8(%rax),%ecx
  1c:	80 f9 02             	cmp    $0x2,%cl
  1f:	75 0d                	jne    2e <error_d.Result!(ulong, kernels.DomainError).Result.map!(ulong(ulong) pure nothrow @nogc @safe function, error_d.Result!(ulong, kernels.DomainError).Result).map(scope ulong(ulong) pure nothrow @nogc @safe function)+0x2e>
  21:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
  25:	48 8b 02             	mov    (%rdx),%rax
  28:	48 8b 52 08          	mov    0x8(%rdx),%rdx
  2c:	eb 3e                	jmp    6c <error_d.Result!(ulong, kernels.DomainError).Result.map!(ulong(ulong) pure nothrow @nogc @safe function, error_d.Result!(ulong, kernels.DomainError).Result).map(scope ulong(ulong) pure nothrow @nogc @safe function)+0x6c>
  2e:	bb 01 00 00 00       	mov    $0x1,%ebx
  33:	3a cb                	cmp    %bl,%cl
  35:	75 20                	jne    57 <error_d.Result!(ulong, kernels.DomainError).Result.map!(ulong(ulong) pure nothrow @nogc @safe function, error_d.Result!(ulong, kernels.DomainError).Result).map(scope ulong(ulong) pure nothrow @nogc @safe function)+0x57>
  37:	3a cb                	cmp    %bl,%cl
  39:	0f 85 00 00 00 00    	jne    3f <error_d.Result!(ulong, kernels.DomainError).Result.map!(ulong(ulong) pure nothrow @nogc @safe function, error_d.Result!(ulong, kernels.DomainError).Result).map(scope ulong(ulong) pure nothrow @nogc @safe function)+0x3f>	3b: R_X86_64_PLT32	error_d.badAccess()-0x4
  3f:	48 8b 38             	mov    (%rax),%rdi
  42:	48 ff 55 f8          	rex.W call *-0x8(%rbp)
  46:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
  4a:	88 5d d8             	mov    %bl,-0x28(%rbp)
  4d:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
  51:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
  55:	eb 15                	jmp    6c <error_d.Result!(ulong, kernels.DomainError).Result.map!(ulong(ulong) pure nothrow @nogc @safe function, error_d.Result!(ulong, kernels.DomainError).Result).map(scope ulong(ulong) pure nothrow @nogc @safe function)+0x6c>
  57:	45 31 c0             	xor    %r8d,%r8d
  5a:	44 89 45 e8          	mov    %r8d,-0x18(%rbp)
  5e:	44 89 45 ec          	mov    %r8d,-0x14(%rbp)
  62:	44 88 45 e8          	mov    %r8b,-0x18(%rbp)
  66:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
  6a:	31 c0                	xor    %eax,%eax
  6c:	48 8b 5d c8          	mov    -0x38(%rbp),%rbx
  70:	48 8b e5             	mov    %rbp,%rsp
  73:	5d                   	pop    %rbp
  74:	c3                   	ret
  75:	00 00                	add    %al,(%rax)
	...

Disassembly of section .text._D7error_d__T6ResultTmTS7kernels11DomainErrorZQBh__T5valueTSQCg__TQCbTmTQBxZQClZQBcMFNaNbNiNfZm:

0000000000000000 <error_d.Result!(ulong, kernels.DomainError).Result.value!(error_d.Result!(ulong, kernels.DomainError).Result).value()>:
   0:	55                   	push   %rbp
   1:	48 8b ec             	mov    %rsp,%rbp
   4:	80 7f 08 01          	cmpb   $0x1,0x8(%rdi)
   8:	0f 85 00 00 00 00    	jne    e <error_d.Result!(ulong, kernels.DomainError).Result.value!(error_d.Result!(ulong, kernels.DomainError).Result).value()+0xe>	a: R_X86_64_PLT32	error_d.badAccess()-0x4
   e:	48 8b 07             	mov    (%rdi),%rax
  11:	5d                   	pop    %rbp
  12:	c3                   	ret
	...

Disassembly of section .text._D7error_d__T6ResultTmTS7kernels11DomainErrorZQBh__T10plainValueTSQCm__TQChTmTQCdZQCrZQBiMFNaNbNiNeZm:

0000000000000000 <error_d.Result!(ulong, kernels.DomainError).Result.plainValue!(error_d.Result!(ulong, kernels.DomainError).Result).plainValue()>:
   0:	55                   	push   %rbp
   1:	48 8b ec             	mov    %rsp,%rbp
   4:	80 7f 08 01          	cmpb   $0x1,0x8(%rdi)
   8:	75 05                	jne    f <error_d.Result!(ulong, kernels.DomainError).Result.plainValue!(error_d.Result!(ulong, kernels.DomainError).Result).plainValue()+0xf>
   a:	48 8b 07             	mov    (%rdi),%rax
   d:	5d                   	pop    %rbp
   e:	c3                   	ret
   f:	e8 00 00 00 00       	call   14 <error_d.Result!(ulong, kernels.DomainError).Result.plainValue!(error_d.Result!(ulong, kernels.DomainError).Result).plainValue()+0x14>	10: R_X86_64_PLT32	error_d.badAccess()-0x4
  14:	5d                   	pop    %rbp
  15:	c3                   	ret
	...

Disassembly of section .text._D7error_d__T6ResultTmTS7kernels11DomainErrorZQBh__T5errorTSQCg__TQCbTmTQBxZQClZQBcMFNaNbNiNfZQCt:

0000000000000000 <error_d.Result!(ulong, kernels.DomainError).Result.error!(error_d.Result!(ulong, kernels.DomainError).Result).error()>:
   0:	55                   	push   %rbp
   1:	48 8b ec             	mov    %rsp,%rbp
   4:	80 7f 08 02          	cmpb   $0x2,0x8(%rdi)
   8:	0f 85 00 00 00 00    	jne    e <error_d.Result!(ulong, kernels.DomainError).Result.error!(error_d.Result!(ulong, kernels.DomainError).Result).error()+0xe>	a: R_X86_64_PLT32	error_d.badAccess()-0x4
   e:	48 8b 07             	mov    (%rdi),%rax
  11:	5d                   	pop    %rbp
  12:	c3                   	ret
	...

Disassembly of section .text._D7error_d__T6ResultTmTS7kernels11DomainErrorZQBh__T10plainErrorTSQCm__TQChTmTQCdZQCrZQBiMFNaNbNiNeZQCz:

0000000000000000 <error_d.Result!(ulong, kernels.DomainError).Result.plainError!(error_d.Result!(ulong, kernels.DomainError).Result).plainError()>:
   0:	55                   	push   %rbp
   1:	48 8b ec             	mov    %rsp,%rbp
   4:	80 7f 08 02          	cmpb   $0x2,0x8(%rdi)
   8:	75 05                	jne    f <error_d.Result!(ulong, kernels.DomainError).Result.plainError!(error_d.Result!(ulong, kernels.DomainError).Result).plainError()+0xf>
   a:	48 8b 07             	mov    (%rdi),%rax
   d:	5d                   	pop    %rbp
   e:	c3                   	ret
   f:	e8 00 00 00 00       	call   14 <error_d.Result!(ulong, kernels.DomainError).Result.plainError!(error_d.Result!(ulong, kernels.DomainError).Result).plainError()+0x14>	10: R_X86_64_PLT32	error_d.badAccess()-0x4
  14:	5d                   	pop    %rbp
  15:	c3                   	ret
	...

Disassembly of section .text._D7error_d__T6ResultTmTS7kernels11DomainErrorZQBh__T7andThenTDFNaNbNiNfmZSQCu__TQCpTmTQClZQCzTQvZQBtMFNaNbNiNfMQByZQBq:

0000000000000000 <error_d.Result!(ulong, kernels.DomainError).Result.andThen!(error_d.Result!(ulong, kernels.DomainError).Result(ulong) pure nothrow @nogc @safe delegate, error_d.Result!(ulong, kernels.DomainError).Result).andThen(scope error_d.Result!(ulong, kernels.DomainError).Result(ulong) pure nothrow @nogc @safe delegate)>:
   0:	55                   	push   %rbp
   1:	48 8b ec             	mov    %rsp,%rbp
   4:	48 83 ec 40          	sub    $0x40,%rsp
   8:	48 89 5d c8          	mov    %rbx,-0x38(%rbp)
   c:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  10:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
  14:	48 89 55 f8          	mov    %rdx,-0x8(%rbp)
  18:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  1c:	0f b6 48 08          	movzbl 0x8(%rax),%ecx
  20:	80 f9 02             	cmp    $0x2,%cl
  23:	75 0d                	jne    32 <error_d.Result!(ulong, kernels.DomainError).Result.andThen!(error_d.Result!(ulong, kernels.DomainError).Result(ulong) pure nothrow @nogc @safe delegate, error_d.Result!(ulong, kernels.DomainError).Result).andThen(scope error_d.Result!(ulong, kernels.DomainError).Result(ulong) pure nothrow @nogc @safe delegate)+0x32>
  25:	48 8b 5d e8          	mov    -0x18(%rbp),%rbx
  29:	48 8b 53 08          	mov    0x8(%rbx),%rdx
  2d:	48 8b 03             	mov    (%rbx),%rax
  30:	eb 32                	jmp    64 <error_d.Result!(ulong, kernels.DomainError).Result.andThen!(error_d.Result!(ulong, kernels.DomainError).Result(ulong) pure nothrow @nogc @safe delegate, error_d.Result!(ulong, kernels.DomainError).Result).andThen(scope error_d.Result!(ulong, kernels.DomainError).Result(ulong) pure nothrow @nogc @safe delegate)+0x64>
  32:	41 b8 01 00 00 00    	mov    $0x1,%r8d
  38:	41 3a c8             	cmp    %r8b,%cl
  3b:	75 16                	jne    53 <error_d.Result!(ulong, kernels.DomainError).Result.andThen!(error_d.Result!(ulong, kernels.DomainError).Result(ulong) pure nothrow @nogc @safe delegate, error_d.Result!(ulong, kernels.DomainError).Result).andThen(scope error_d.Result!(ulong, kernels.DomainError).Result(ulong) pure nothrow @nogc @safe delegate)+0x53>
  3d:	41 3a c8             	cmp    %r8b,%cl
  40:	0f 85 00 00 00 00    	jne    46 <error_d.Result!(ulong, kernels.DomainError).Result.andThen!(error_d.Result!(ulong, kernels.DomainError).Result(ulong) pure nothrow @nogc @safe delegate, error_d.Result!(ulong, kernels.DomainError).Result).andThen(scope error_d.Result!(ulong, kernels.DomainError).Result(ulong) pure nothrow @nogc @safe delegate)+0x46>	42: R_X86_64_PLT32	error_d.badAccess()-0x4
  46:	48 8b 30             	mov    (%rax),%rsi
  49:	48 8b 7d f0          	mov    -0x10(%rbp),%rdi
  4d:	48 ff 55 f8          	rex.W call *-0x8(%rbp)
  51:	eb 11                	jmp    64 <error_d.Result!(ulong, kernels.DomainError).Result.andThen!(error_d.Result!(ulong, kernels.DomainError).Result(ulong) pure nothrow @nogc @safe delegate, error_d.Result!(ulong, kernels.DomainError).Result).andThen(scope error_d.Result!(ulong, kernels.DomainError).Result(ulong) pure nothrow @nogc @safe delegate)+0x64>
  53:	31 db                	xor    %ebx,%ebx
  55:	89 5d d8             	mov    %ebx,-0x28(%rbp)
  58:	89 5d dc             	mov    %ebx,-0x24(%rbp)
  5b:	88 5d d8             	mov    %bl,-0x28(%rbp)
  5e:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
  62:	31 c0                	xor    %eax,%eax
  64:	48 8b 5d c8          	mov    -0x38(%rbp),%rbx
  68:	48 8b e5             	mov    %rbp,%rsp
  6b:	5d                   	pop    %rbp
  6c:	c3                   	ret
  6d:	00 00                	add    %al,(%rax)
	...

Disassembly of section .text._D4core8lifetime__T4moveTS7error_d__T12PlainStorageTSQBb__T7SuccessTmZQlTSQBw__T7FailureTS7kernels11DomainErrorZQBgZQDbZQDxFNaNbNiNfNkMKQEhZQEl:

0000000000000000 <_D4core8lifetime__T4moveTS7error_d__T12PlainStorageTSQBb__T7SuccessTmZQlTSQBw__T7FailureTS7kernels11DomainErrorZQBgZQDbZQDxFNaNbNiNfNkMKQEhZQEl>:
   0:	55                   	push   %rbp
   1:	48 8b ec             	mov    %rsp,%rbp
   4:	48 83 ec 20          	sub    $0x20,%rsp
   8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
   c:	48 8d 75 e0          	lea    -0x20(%rbp),%rsi
  10:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
  14:	e8 00 00 00 00       	call   19 <_D4core8lifetime__T4moveTS7error_d__T12PlainStorageTSQBb__T7SuccessTmZQlTSQBw__T7FailureTS7kernels11DomainErrorZQBgZQDbZQDxFNaNbNiNfNkMKQEhZQEl+0x19>	15: R_X86_64_PLT32	_D4core8lifetime__T15moveEmplaceImplTS7error_d__T12PlainStorageTSQBb__T7SuccessTmZQlTSQBw__T7FailureTS7kernels11DomainErrorZQBgZQDbZQEjFNaNbNiNfMKQEfNkMKQEmZv-0x4
  19:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  1d:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
  21:	48 8b e5             	mov    %rbp,%rsp
  24:	5d                   	pop    %rbp
  25:	c3                   	ret
	...

Disassembly of section .text._D4core8lifetime__T8moveImplTS7error_d__T12PlainStorageTSQBb__T7SuccessTmZQlTSQBw__T7FailureTS7kernels11DomainErrorZQBgZQDbZQEbFNaNbNiNfNkMKQEhZQEl:

0000000000000000 <_D4core8lifetime__T8moveImplTS7error_d__T12PlainStorageTSQBb__T7SuccessTmZQlTSQBw__T7FailureTS7kernels11DomainErrorZQBgZQDbZQEbFNaNbNiNfNkMKQEhZQEl>:
   0:	55                   	push   %rbp
   1:	48 8b ec             	mov    %rsp,%rbp
   4:	48 83 ec 20          	sub    $0x20,%rsp
   8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
   c:	48 8d 75 e0          	lea    -0x20(%rbp),%rsi
  10:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
  14:	e8 00 00 00 00       	call   19 <_D4core8lifetime__T8moveImplTS7error_d__T12PlainStorageTSQBb__T7SuccessTmZQlTSQBw__T7FailureTS7kernels11DomainErrorZQBgZQDbZQEbFNaNbNiNfNkMKQEhZQEl+0x19>	15: R_X86_64_PLT32	_D4core8lifetime__T15moveEmplaceImplTS7error_d__T12PlainStorageTSQBb__T7SuccessTmZQlTSQBw__T7FailureTS7kernels11DomainErrorZQBgZQDbZQEjFNaNbNiNfMKQEfNkMKQEmZv-0x4
  19:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
  1d:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  21:	48 8b e5             	mov    %rbp,%rsp
  24:	5d                   	pop    %rbp
  25:	c3                   	ret
	...

Disassembly of section .text._D4core8lifetime__T15moveEmplaceImplTS7error_d__T12PlainStorageTSQBb__T7SuccessTmZQlTSQBw__T7FailureTS7kernels11DomainErrorZQBgZQDbZQEjFNaNbNiNfMKQEfNkMKQEmZv:

0000000000000000 <_D4core8lifetime__T15moveEmplaceImplTS7error_d__T12PlainStorageTSQBb__T7SuccessTmZQlTSQBw__T7FailureTS7kernels11DomainErrorZQBgZQDbZQEjFNaNbNiNfMKQEfNkMKQEmZv>:
   0:	48 83 ec 18          	sub    $0x18,%rsp
   4:	48 89 7c 24 08       	mov    %rdi,0x8(%rsp)
   9:	48 89 74 24 10       	mov    %rsi,0x10(%rsp)
   e:	48 8b 57 08          	mov    0x8(%rdi),%rdx
  12:	48 8b 07             	mov    (%rdi),%rax
  15:	48 89 06             	mov    %rax,(%rsi)
  18:	48 89 56 08          	mov    %rdx,0x8(%rsi)
  1c:	48 83 c4 18          	add    $0x18,%rsp
  20:	c3                   	ret
  21:	00 00                	add    %al,(%rax)
	...

Disassembly of section .text._D4core8lifetime__T15trustedMoveImplTS7error_d__T12PlainStorageTSQBb__T7SuccessTmZQlTSQBw__T7FailureTS7kernels11DomainErrorZQBgZQDbZQEjFNaNbNiNeNkMKQEhZQEl:

0000000000000000 <_D4core8lifetime__T15trustedMoveImplTS7error_d__T12PlainStorageTSQBb__T7SuccessTmZQlTSQBw__T7FailureTS7kernels11DomainErrorZQBgZQDbZQEjFNaNbNiNeNkMKQEhZQEl>:
   0:	55                   	push   %rbp
   1:	48 8b ec             	mov    %rsp,%rbp
   4:	48 83 ec 20          	sub    $0x20,%rsp
   8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
   c:	48 8d 75 e0          	lea    -0x20(%rbp),%rsi
  10:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
  14:	e8 00 00 00 00       	call   19 <_D4core8lifetime__T15trustedMoveImplTS7error_d__T12PlainStorageTSQBb__T7SuccessTmZQlTSQBw__T7FailureTS7kernels11DomainErrorZQBgZQDbZQEjFNaNbNiNeNkMKQEhZQEl+0x19>	15: R_X86_64_PLT32	_D4core8lifetime__T15moveEmplaceImplTS7error_d__T12PlainStorageTSQBb__T7SuccessTmZQlTSQBw__T7FailureTS7kernels11DomainErrorZQBgZQDbZQEjFNaNbNiNfMKQEfNkMKQEmZv-0x4
  19:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
  1d:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  21:	48 8b e5             	mov    %rbp,%rsp
  24:	5d                   	pop    %rbp
  25:	c3                   	ret
	...

Disassembly of section .text._D4core8lifetime__T4moveTS7error_d__T12PlainStorageTSQBb__T7SuccessTmZQlTSQBw__T7FailureTS7kernels11DomainErrorZQBgZQDbZQDxFNaNbNiNfKQEeKQEiZv:

0000000000000000 <core.lifetime.move!(error_d.PlainStorage!(error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).PlainStorage).move(ref error_d.PlainStorage!(error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).PlainStorage, ref error_d.PlainStorage!(error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).PlainStorage)>:
   0:	55                   	push   %rbp
   1:	48 8b ec             	mov    %rsp,%rbp
   4:	48 83 ec 10          	sub    $0x10,%rsp
   8:	48 89 7d f0          	mov    %rdi,-0x10(%rbp)
   c:	48 89 75 f8          	mov    %rsi,-0x8(%rbp)
  10:	48 8b 75 f0          	mov    -0x10(%rbp),%rsi
  14:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
  18:	e8 00 00 00 00       	call   1d <core.lifetime.move!(error_d.PlainStorage!(error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).PlainStorage).move(ref error_d.PlainStorage!(error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).PlainStorage, ref error_d.PlainStorage!(error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).PlainStorage)+0x1d>	19: R_X86_64_PLT32	_D4core8lifetime__T8moveImplTS7error_d__T12PlainStorageTSQBb__T7SuccessTmZQlTSQBw__T7FailureTS7kernels11DomainErrorZQBgZQDbZQEbFNaNbNiNfMKQEfNkMKQEmZv-0x4
  1d:	48 8b e5             	mov    %rbp,%rsp
  20:	5d                   	pop    %rbp
  21:	c3                   	ret
	...

Disassembly of section .text._D4core8lifetime__T8moveImplTS7error_d__T12PlainStorageTSQBb__T7SuccessTmZQlTSQBw__T7FailureTS7kernels11DomainErrorZQBgZQDbZQEbFNaNbNiNfMKQEfNkMKQEmZv:

0000000000000000 <_D4core8lifetime__T8moveImplTS7error_d__T12PlainStorageTSQBb__T7SuccessTmZQlTSQBw__T7FailureTS7kernels11DomainErrorZQBgZQDbZQEbFNaNbNiNfMKQEfNkMKQEmZv>:
   0:	55                   	push   %rbp
   1:	48 8b ec             	mov    %rsp,%rbp
   4:	48 83 ec 10          	sub    $0x10,%rsp
   8:	48 89 7d f0          	mov    %rdi,-0x10(%rbp)
   c:	48 89 75 f8          	mov    %rsi,-0x8(%rbp)
  10:	48 39 f7             	cmp    %rsi,%rdi
  13:	74 05                	je     1a <_D4core8lifetime__T8moveImplTS7error_d__T12PlainStorageTSQBb__T7SuccessTmZQlTSQBw__T7FailureTS7kernels11DomainErrorZQBgZQDbZQEbFNaNbNiNfMKQEfNkMKQEmZv+0x1a>
  15:	e8 00 00 00 00       	call   1a <_D4core8lifetime__T8moveImplTS7error_d__T12PlainStorageTSQBb__T7SuccessTmZQlTSQBw__T7FailureTS7kernels11DomainErrorZQBgZQDbZQEbFNaNbNiNfMKQEfNkMKQEmZv+0x1a>	16: R_X86_64_PLT32	_D4core8lifetime__T15moveEmplaceImplTS7error_d__T12PlainStorageTSQBb__T7SuccessTmZQlTSQBw__T7FailureTS7kernels11DomainErrorZQBgZQDbZQEjFNaNbNiNfMKQEfNkMKQEmZv-0x4
  1a:	48 8b e5             	mov    %rbp,%rsp
  1d:	5d                   	pop    %rbp
  1e:	c3                   	ret
	...

Disassembly of section .text._D4core8lifetime__T4moveTS7error_d__T12PlainStorageTSQBb__T7SuccessTS7kernels5BlockZQzTSQCk__T7FailureTSQBj11DomainErrorZQBbZQDkZQEgFNaNbNiNfNkMKQEqZQEu:

0000000000000000 <_D4core8lifetime__T4moveTS7error_d__T12PlainStorageTSQBb__T7SuccessTS7kernels5BlockZQzTSQCk__T7FailureTSQBj11DomainErrorZQBbZQDkZQEgFNaNbNiNfNkMKQEqZQEu>:
   0:	55                   	push   %rbp
   1:	48 8b ec             	mov    %rsp,%rbp
   4:	48 81 ec 20 01 00 00 	sub    $0x120,%rsp
   b:	48 89 7d f0          	mov    %rdi,-0x10(%rbp)
   f:	48 89 75 f8          	mov    %rsi,-0x8(%rbp)
  13:	48 8d b5 e8 fe ff ff 	lea    -0x118(%rbp),%rsi
  1a:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
  1e:	e8 00 00 00 00       	call   23 <_D4core8lifetime__T4moveTS7error_d__T12PlainStorageTSQBb__T7SuccessTS7kernels5BlockZQzTSQCk__T7FailureTSQBj11DomainErrorZQBbZQDkZQEgFNaNbNiNfNkMKQEqZQEu+0x23>	1f: R_X86_64_PLT32	_D4core8lifetime__T15moveEmplaceImplTS7error_d__T12PlainStorageTSQBb__T7SuccessTS7kernels5BlockZQzTSQCk__T7FailureTSQBj11DomainErrorZQBbZQDkZQEsFNaNbNiNfMKQEoNkMKQEvZv-0x4
  23:	48 8d b5 e8 fe ff ff 	lea    -0x118(%rbp),%rsi
  2a:	48 8b 7d f0          	mov    -0x10(%rbp),%rdi
  2e:	b9 21 00 00 00       	mov    $0x21,%ecx
  33:	f3 48 a5             	rep movsq (%rsi),(%rdi)
  36:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  3a:	48 8b e5             	mov    %rbp,%rsp
  3d:	5d                   	pop    %rbp
  3e:	c3                   	ret
	...

Disassembly of section .text._D4core8lifetime__T8moveImplTS7error_d__T12PlainStorageTSQBb__T7SuccessTS7kernels5BlockZQzTSQCk__T7FailureTSQBj11DomainErrorZQBbZQDkZQEkFNaNbNiNfNkMKQEqZQEu:

0000000000000000 <_D4core8lifetime__T8moveImplTS7error_d__T12PlainStorageTSQBb__T7SuccessTS7kernels5BlockZQzTSQCk__T7FailureTSQBj11DomainErrorZQBbZQDkZQEkFNaNbNiNfNkMKQEqZQEu>:
   0:	55                   	push   %rbp
   1:	48 8b ec             	mov    %rsp,%rbp
   4:	48 81 ec 20 01 00 00 	sub    $0x120,%rsp
   b:	48 89 7d f0          	mov    %rdi,-0x10(%rbp)
   f:	48 89 75 f8          	mov    %rsi,-0x8(%rbp)
  13:	48 8d b5 e8 fe ff ff 	lea    -0x118(%rbp),%rsi
  1a:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
  1e:	e8 00 00 00 00       	call   23 <_D4core8lifetime__T8moveImplTS7error_d__T12PlainStorageTSQBb__T7SuccessTS7kernels5BlockZQzTSQCk__T7FailureTSQBj11DomainErrorZQBbZQDkZQEkFNaNbNiNfNkMKQEqZQEu+0x23>	1f: R_X86_64_PLT32	_D4core8lifetime__T15moveEmplaceImplTS7error_d__T12PlainStorageTSQBb__T7SuccessTS7kernels5BlockZQzTSQCk__T7FailureTSQBj11DomainErrorZQBbZQDkZQEsFNaNbNiNfMKQEoNkMKQEvZv-0x4
  23:	48 8d b5 e8 fe ff ff 	lea    -0x118(%rbp),%rsi
  2a:	48 8b 7d f0          	mov    -0x10(%rbp),%rdi
  2e:	b9 21 00 00 00       	mov    $0x21,%ecx
  33:	f3 48 a5             	rep movsq (%rsi),(%rdi)
  36:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  3a:	48 8b e5             	mov    %rbp,%rsp
  3d:	5d                   	pop    %rbp
  3e:	c3                   	ret
	...

Disassembly of section .text._D4core8lifetime__T15moveEmplaceImplTS7error_d__T12PlainStorageTSQBb__T7SuccessTS7kernels5BlockZQzTSQCk__T7FailureTSQBj11DomainErrorZQBbZQDkZQEsFNaNbNiNfMKQEoNkMKQEvZv:

0000000000000000 <_D4core8lifetime__T15moveEmplaceImplTS7error_d__T12PlainStorageTSQBb__T7SuccessTS7kernels5BlockZQzTSQCk__T7FailureTSQBj11DomainErrorZQBbZQDkZQEsFNaNbNiNfMKQEoNkMKQEvZv>:
   0:	48 83 ec 18          	sub    $0x18,%rsp
   4:	48 89 7c 24 08       	mov    %rdi,0x8(%rsp)
   9:	48 89 74 24 10       	mov    %rsi,0x10(%rsp)
   e:	48 89 fe             	mov    %rdi,%rsi
  11:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
  16:	b9 21 00 00 00       	mov    $0x21,%ecx
  1b:	f3 48 a5             	rep movsq (%rsi),(%rdi)
  1e:	48 83 c4 18          	add    $0x18,%rsp
  22:	c3                   	ret
	...

Disassembly of section .text._D4core8lifetime__T15trustedMoveImplTS7error_d__T12PlainStorageTSQBb__T7SuccessTS7kernels5BlockZQzTSQCk__T7FailureTSQBj11DomainErrorZQBbZQDkZQEsFNaNbNiNeNkMKQEqZQEu:

0000000000000000 <_D4core8lifetime__T15trustedMoveImplTS7error_d__T12PlainStorageTSQBb__T7SuccessTS7kernels5BlockZQzTSQCk__T7FailureTSQBj11DomainErrorZQBbZQDkZQEsFNaNbNiNeNkMKQEqZQEu>:
   0:	55                   	push   %rbp
   1:	48 8b ec             	mov    %rsp,%rbp
   4:	48 83 ec 10          	sub    $0x10,%rsp
   8:	48 89 7d f0          	mov    %rdi,-0x10(%rbp)
   c:	48 89 75 f8          	mov    %rsi,-0x8(%rbp)
  10:	48 8b 75 f0          	mov    -0x10(%rbp),%rsi
  14:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
  18:	e8 00 00 00 00       	call   1d <_D4core8lifetime__T15trustedMoveImplTS7error_d__T12PlainStorageTSQBb__T7SuccessTS7kernels5BlockZQzTSQCk__T7FailureTSQBj11DomainErrorZQBbZQDkZQEsFNaNbNiNeNkMKQEqZQEu+0x1d>	19: R_X86_64_PLT32	_D4core8lifetime__T15moveEmplaceImplTS7error_d__T12PlainStorageTSQBb__T7SuccessTS7kernels5BlockZQzTSQCk__T7FailureTSQBj11DomainErrorZQBbZQDkZQEsFNaNbNiNfMKQEoNkMKQEvZv-0x4
  1d:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  21:	48 8b e5             	mov    %rbp,%rsp
  24:	5d                   	pop    %rbp
  25:	c3                   	ret
	...

Disassembly of section .text._D4core8lifetime__T4moveTS7error_d__T12PlainStorageTSQBb__T7SuccessTS7kernels5BlockZQzTSQCk__T7FailureTSQBj11DomainErrorZQBbZQDkZQEgFNaNbNiNfKQEnKQErZv:

0000000000000000 <core.lifetime.move!(error_d.PlainStorage!(error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).PlainStorage).move(ref error_d.PlainStorage!(error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).PlainStorage, ref error_d.PlainStorage!(error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).PlainStorage)>:
   0:	55                   	push   %rbp
   1:	48 8b ec             	mov    %rsp,%rbp
   4:	48 83 ec 10          	sub    $0x10,%rsp
   8:	48 89 7d f0          	mov    %rdi,-0x10(%rbp)
   c:	48 89 75 f8          	mov    %rsi,-0x8(%rbp)
  10:	48 8b 75 f0          	mov    -0x10(%rbp),%rsi
  14:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
  18:	e8 00 00 00 00       	call   1d <core.lifetime.move!(error_d.PlainStorage!(error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).PlainStorage).move(ref error_d.PlainStorage!(error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).PlainStorage, ref error_d.PlainStorage!(error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).PlainStorage)+0x1d>	19: R_X86_64_PLT32	_D4core8lifetime__T8moveImplTS7error_d__T12PlainStorageTSQBb__T7SuccessTS7kernels5BlockZQzTSQCk__T7FailureTSQBj11DomainErrorZQBbZQDkZQEkFNaNbNiNfMKQEoNkMKQEvZv-0x4
  1d:	48 8b e5             	mov    %rbp,%rsp
  20:	5d                   	pop    %rbp
  21:	c3                   	ret
	...

Disassembly of section .text._D4core8lifetime__T8moveImplTS7error_d__T12PlainStorageTSQBb__T7SuccessTS7kernels5BlockZQzTSQCk__T7FailureTSQBj11DomainErrorZQBbZQDkZQEkFNaNbNiNfMKQEoNkMKQEvZv:

0000000000000000 <_D4core8lifetime__T8moveImplTS7error_d__T12PlainStorageTSQBb__T7SuccessTS7kernels5BlockZQzTSQCk__T7FailureTSQBj11DomainErrorZQBbZQDkZQEkFNaNbNiNfMKQEoNkMKQEvZv>:
   0:	55                   	push   %rbp
   1:	48 8b ec             	mov    %rsp,%rbp
   4:	48 83 ec 10          	sub    $0x10,%rsp
   8:	48 89 7d f0          	mov    %rdi,-0x10(%rbp)
   c:	48 89 75 f8          	mov    %rsi,-0x8(%rbp)
  10:	48 39 f7             	cmp    %rsi,%rdi
  13:	74 05                	je     1a <_D4core8lifetime__T8moveImplTS7error_d__T12PlainStorageTSQBb__T7SuccessTS7kernels5BlockZQzTSQCk__T7FailureTSQBj11DomainErrorZQBbZQDkZQEkFNaNbNiNfMKQEoNkMKQEvZv+0x1a>
  15:	e8 00 00 00 00       	call   1a <_D4core8lifetime__T8moveImplTS7error_d__T12PlainStorageTSQBb__T7SuccessTS7kernels5BlockZQzTSQCk__T7FailureTSQBj11DomainErrorZQBbZQDkZQEkFNaNbNiNfMKQEoNkMKQEvZv+0x1a>	16: R_X86_64_PLT32	_D4core8lifetime__T15moveEmplaceImplTS7error_d__T12PlainStorageTSQBb__T7SuccessTS7kernels5BlockZQzTSQCk__T7FailureTSQBj11DomainErrorZQBbZQDkZQEsFNaNbNiNfMKQEoNkMKQEvZv-0x4
  1a:	48 8b e5             	mov    %rbp,%rsp
  1d:	5d                   	pop    %rbp
  1e:	c3                   	ret
	...

Disassembly of section .text.d_dso_init:

0000000000000000 <.text.d_dso_init>:
   0:	55                   	push   %rbp
   1:	48 8b ec             	mov    %rsp,%rbp
   4:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # b <.text.d_dso_init+0xb>	7: R_X86_64_PC32	__stop_minfo-0x4
   b:	50                   	push   %rax
   c:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 13 <.text.d_dso_init+0x13>	f: R_X86_64_PC32	__start_minfo-0x4
  13:	50                   	push   %rax
  14:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 1b <.text.d_dso_init+0x1b>	17: R_X86_64_PC32	.data.d_dso_rec-0x4
  1b:	50                   	push   %rax
  1c:	6a 01                	push   $0x1
  1e:	48 8b fc             	mov    %rsp,%rdi
  21:	e8 00 00 00 00       	call   26 <.text.d_dso_init+0x26>	22: R_X86_64_PLT32	_d_dso_registry-0x4
  26:	c9                   	leave
  27:	c3                   	ret
