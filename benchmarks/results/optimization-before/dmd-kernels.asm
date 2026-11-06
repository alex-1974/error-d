
/tmp/error-d-cost-vu6p6fzm/kernels.o:     file format elf64-x86-64


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
   0:	55                   	push   %rbp
   1:	48 8b ec             	mov    %rsp,%rbp
   4:	48 81 ec a0 00 00 00 	sub    $0xa0,%rsp
   b:	48 89 9d 60 ff ff ff 	mov    %rbx,-0xa0(%rbp)
  12:	4c 89 a5 68 ff ff ff 	mov    %r12,-0x98(%rbp)
  19:	48 89 fb             	mov    %rdi,%rbx
  1c:	49 89 f4             	mov    %rsi,%r12
  1f:	41 8b c4             	mov    %r12d,%eax
  22:	25 ff 00 00 00       	and    $0xff,%eax
  27:	3b c2                	cmp    %edx,%eax
  29:	0f 83 8b 00 00 00    	jae    ba <result_small+0xba>
  2f:	c7 85 70 ff ff ff 01 00 00 00 	movl   $0x1,-0x90(%rbp)
  39:	44 89 a5 74 ff ff ff 	mov    %r12d,-0x8c(%rbp)
  40:	31 d2                	xor    %edx,%edx
  42:	89 55 98             	mov    %edx,-0x68(%rbp)
  45:	89 55 9c             	mov    %edx,-0x64(%rbp)
  48:	89 55 a0             	mov    %edx,-0x60(%rbp)
  4b:	89 55 a4             	mov    %edx,-0x5c(%rbp)
  4e:	88 55 a0             	mov    %dl,-0x60(%rbp)
  51:	4c 8b 45 a0          	mov    -0x60(%rbp),%r8
  55:	4c 89 45 90          	mov    %r8,-0x70(%rbp)
  59:	88 55 98             	mov    %dl,-0x68(%rbp)
  5c:	48 8d 75 a8          	lea    -0x58(%rbp),%rsi
  60:	48 8d bd 70 ff ff ff 	lea    -0x90(%rbp),%rdi
  67:	e8 00 00 00 00       	call   6c <result_small+0x6c>	68: R_X86_64_PLT32	_D4core8lifetime__T15moveEmplaceImplTS7kernels11DomainErrorZQBpFNaNbNiNfMKQBlNkMKQBsZv-0x4
  6c:	48 8b 75 a8          	mov    -0x58(%rbp),%rsi
  70:	48 8d 7d 90          	lea    -0x70(%rbp),%rdi
  74:	e8 00 00 00 00       	call   79 <result_small+0x79>	75: R_X86_64_PLT32	std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.this(error_d.Failure!(kernels.DomainError).Failure)-0x4
  79:	48 8b 50 08          	mov    0x8(%rax),%rdx
  7d:	48 8b 00             	mov    (%rax),%rax
  80:	48 89 45 80          	mov    %rax,-0x80(%rbp)
  84:	48 89 55 88          	mov    %rdx,-0x78(%rbp)
  88:	48 8d 75 b0          	lea    -0x50(%rbp),%rsi
  8c:	48 8d 7d 80          	lea    -0x80(%rbp),%rdi
  90:	e8 00 00 00 00       	call   95 <result_small+0x95>	91: R_X86_64_PLT32	_D4core8lifetime__T15moveEmplaceImplTS3std7sumtype__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTmZQlTSQBk__T7FailureTS7kernels11DomainErrorZQBgZQDkZQEwFNaNbNiNfMKQEsNkMKQEzZv-0x4
  95:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
  99:	48 8b 4d b8          	mov    -0x48(%rbp),%rcx
  9d:	48 89 03             	mov    %rax,(%rbx)
  a0:	48 89 4b 08          	mov    %rcx,0x8(%rbx)
  a4:	48 8b c3             	mov    %rbx,%rax
  a7:	48 8b 9d 60 ff ff ff 	mov    -0xa0(%rbp),%rbx
  ae:	4c 8b a5 68 ff ff ff 	mov    -0x98(%rbp),%r12
  b5:	48 8b e5             	mov    %rbp,%rsp
  b8:	5d                   	pop    %rbp
  b9:	c3                   	ret
  ba:	31 c9                	xor    %ecx,%ecx
  bc:	89 4d d8             	mov    %ecx,-0x28(%rbp)
  bf:	89 4d dc             	mov    %ecx,-0x24(%rbp)
  c2:	89 4d e0             	mov    %ecx,-0x20(%rbp)
  c5:	89 4d e4             	mov    %ecx,-0x1c(%rbp)
  c8:	88 4d e0             	mov    %cl,-0x20(%rbp)
  cb:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
  cf:	48 89 55 d0          	mov    %rdx,-0x30(%rbp)
  d3:	88 4d d8             	mov    %cl,-0x28(%rbp)
  d6:	41 8b c4             	mov    %r12d,%eax
  d9:	49 b8 87 ca eb 85 b1 79 37 9e 	movabs $0x9e3779b185ebca87,%r8
  e3:	49 f7 e0             	mul    %r8
  e6:	48 89 c6             	mov    %rax,%rsi
  e9:	41 8b cc             	mov    %r12d,%ecx
  ec:	c1 e9 07             	shr    $0x7,%ecx
  ef:	8b c9                	mov    %ecx,%ecx
  f1:	48 33 f1             	xor    %rcx,%rsi
  f4:	48 8d 7d d0          	lea    -0x30(%rbp),%rdi
  f8:	e8 00 00 00 00       	call   fd <result_small+0xfd>	f9: R_X86_64_PLT32	std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.this(error_d.Success!(ulong).Success)-0x4
  fd:	48 8b 50 08          	mov    0x8(%rax),%rdx
 101:	48 8b 00             	mov    (%rax),%rax
 104:	48 89 45 c0          	mov    %rax,-0x40(%rbp)
 108:	48 89 55 c8          	mov    %rdx,-0x38(%rbp)
 10c:	48 8d 75 f0          	lea    -0x10(%rbp),%rsi
 110:	48 8d 7d c0          	lea    -0x40(%rbp),%rdi
 114:	e8 00 00 00 00       	call   119 <result_small+0x119>	115: R_X86_64_PLT32	_D4core8lifetime__T15moveEmplaceImplTS3std7sumtype__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTmZQlTSQBk__T7FailureTS7kernels11DomainErrorZQBgZQDkZQEwFNaNbNiNfMKQEsNkMKQEzZv-0x4
 119:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
 11d:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
 121:	48 89 03             	mov    %rax,(%rbx)
 124:	48 89 4b 08          	mov    %rcx,0x8(%rbx)
 128:	48 8b c3             	mov    %rbx,%rax
 12b:	48 8b 9d 60 ff ff ff 	mov    -0xa0(%rbp),%rbx
 132:	4c 8b a5 68 ff ff ff 	mov    -0x98(%rbp),%r12
 139:	48 8b e5             	mov    %rbp,%rsp
 13c:	5d                   	pop    %rbp
 13d:	c3                   	ret
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
   4:	48 81 ec c0 10 00 00 	sub    $0x10c0,%rsp
   b:	48 89 9d 40 ef ff ff 	mov    %rbx,-0x10c0(%rbp)
  12:	48 89 7d f0          	mov    %rdi,-0x10(%rbp)
  16:	89 75 f8             	mov    %esi,-0x8(%rbp)
  19:	48 8b 5d f0          	mov    -0x10(%rbp),%rbx
  1d:	8b 45 f8             	mov    -0x8(%rbp),%eax
  20:	25 ff 00 00 00       	and    $0xff,%eax
  25:	3b c2                	cmp    %edx,%eax
  27:	0f 83 56 02 00 00    	jae    283 <result_large+0x283>
  2d:	c7 85 48 ef ff ff 01 00 00 00 	movl   $0x1,-0x10b8(%rbp)
  37:	8b 4d f8             	mov    -0x8(%rbp),%ecx
  3a:	89 8d 4c ef ff ff    	mov    %ecx,-0x10b4(%rbp)
  40:	31 d2                	xor    %edx,%edx
  42:	89 95 68 f0 ff ff    	mov    %edx,-0xf98(%rbp)
  48:	89 95 6c f0 ff ff    	mov    %edx,-0xf94(%rbp)
  4e:	89 95 70 f0 ff ff    	mov    %edx,-0xf90(%rbp)
  54:	89 95 74 f0 ff ff    	mov    %edx,-0xf8c(%rbp)
  5a:	89 95 78 f0 ff ff    	mov    %edx,-0xf88(%rbp)
  60:	89 95 7c f0 ff ff    	mov    %edx,-0xf84(%rbp)
  66:	89 95 80 f0 ff ff    	mov    %edx,-0xf80(%rbp)
  6c:	89 95 84 f0 ff ff    	mov    %edx,-0xf7c(%rbp)
  72:	89 95 88 f0 ff ff    	mov    %edx,-0xf78(%rbp)
  78:	89 95 8c f0 ff ff    	mov    %edx,-0xf74(%rbp)
  7e:	89 95 90 f0 ff ff    	mov    %edx,-0xf70(%rbp)
  84:	89 95 94 f0 ff ff    	mov    %edx,-0xf6c(%rbp)
  8a:	89 95 98 f0 ff ff    	mov    %edx,-0xf68(%rbp)
  90:	89 95 9c f0 ff ff    	mov    %edx,-0xf64(%rbp)
  96:	89 95 a0 f0 ff ff    	mov    %edx,-0xf60(%rbp)
  9c:	89 95 a4 f0 ff ff    	mov    %edx,-0xf5c(%rbp)
  a2:	89 95 a8 f0 ff ff    	mov    %edx,-0xf58(%rbp)
  a8:	89 95 ac f0 ff ff    	mov    %edx,-0xf54(%rbp)
  ae:	89 95 b0 f0 ff ff    	mov    %edx,-0xf50(%rbp)
  b4:	89 95 b4 f0 ff ff    	mov    %edx,-0xf4c(%rbp)
  ba:	89 95 b8 f0 ff ff    	mov    %edx,-0xf48(%rbp)
  c0:	89 95 bc f0 ff ff    	mov    %edx,-0xf44(%rbp)
  c6:	89 95 c0 f0 ff ff    	mov    %edx,-0xf40(%rbp)
  cc:	89 95 c4 f0 ff ff    	mov    %edx,-0xf3c(%rbp)
  d2:	89 95 c8 f0 ff ff    	mov    %edx,-0xf38(%rbp)
  d8:	89 95 cc f0 ff ff    	mov    %edx,-0xf34(%rbp)
  de:	89 95 d0 f0 ff ff    	mov    %edx,-0xf30(%rbp)
  e4:	89 95 d4 f0 ff ff    	mov    %edx,-0xf2c(%rbp)
  ea:	89 95 d8 f0 ff ff    	mov    %edx,-0xf28(%rbp)
  f0:	89 95 dc f0 ff ff    	mov    %edx,-0xf24(%rbp)
  f6:	89 95 e0 f0 ff ff    	mov    %edx,-0xf20(%rbp)
  fc:	89 95 e4 f0 ff ff    	mov    %edx,-0xf1c(%rbp)
 102:	89 95 e8 f0 ff ff    	mov    %edx,-0xf18(%rbp)
 108:	89 95 ec f0 ff ff    	mov    %edx,-0xf14(%rbp)
 10e:	89 95 f0 f0 ff ff    	mov    %edx,-0xf10(%rbp)
 114:	89 95 f4 f0 ff ff    	mov    %edx,-0xf0c(%rbp)
 11a:	89 95 f8 f0 ff ff    	mov    %edx,-0xf08(%rbp)
 120:	89 95 fc f0 ff ff    	mov    %edx,-0xf04(%rbp)
 126:	89 95 00 f1 ff ff    	mov    %edx,-0xf00(%rbp)
 12c:	89 95 04 f1 ff ff    	mov    %edx,-0xefc(%rbp)
 132:	89 95 08 f1 ff ff    	mov    %edx,-0xef8(%rbp)
 138:	89 95 0c f1 ff ff    	mov    %edx,-0xef4(%rbp)
 13e:	89 95 10 f1 ff ff    	mov    %edx,-0xef0(%rbp)
 144:	89 95 14 f1 ff ff    	mov    %edx,-0xeec(%rbp)
 14a:	89 95 18 f1 ff ff    	mov    %edx,-0xee8(%rbp)
 150:	89 95 1c f1 ff ff    	mov    %edx,-0xee4(%rbp)
 156:	89 95 20 f1 ff ff    	mov    %edx,-0xee0(%rbp)
 15c:	89 95 24 f1 ff ff    	mov    %edx,-0xedc(%rbp)
 162:	89 95 28 f1 ff ff    	mov    %edx,-0xed8(%rbp)
 168:	89 95 2c f1 ff ff    	mov    %edx,-0xed4(%rbp)
 16e:	89 95 30 f1 ff ff    	mov    %edx,-0xed0(%rbp)
 174:	89 95 34 f1 ff ff    	mov    %edx,-0xecc(%rbp)
 17a:	89 95 38 f1 ff ff    	mov    %edx,-0xec8(%rbp)
 180:	89 95 3c f1 ff ff    	mov    %edx,-0xec4(%rbp)
 186:	89 95 40 f1 ff ff    	mov    %edx,-0xec0(%rbp)
 18c:	89 95 44 f1 ff ff    	mov    %edx,-0xebc(%rbp)
 192:	89 95 48 f1 ff ff    	mov    %edx,-0xeb8(%rbp)
 198:	89 95 4c f1 ff ff    	mov    %edx,-0xeb4(%rbp)
 19e:	89 95 50 f1 ff ff    	mov    %edx,-0xeb0(%rbp)
 1a4:	89 95 54 f1 ff ff    	mov    %edx,-0xeac(%rbp)
 1aa:	89 95 58 f1 ff ff    	mov    %edx,-0xea8(%rbp)
 1b0:	89 95 5c f1 ff ff    	mov    %edx,-0xea4(%rbp)
 1b6:	89 95 60 f1 ff ff    	mov    %edx,-0xea0(%rbp)
 1bc:	89 95 64 f1 ff ff    	mov    %edx,-0xe9c(%rbp)
 1c2:	89 95 68 f1 ff ff    	mov    %edx,-0xe98(%rbp)
 1c8:	89 95 6c f1 ff ff    	mov    %edx,-0xe94(%rbp)
 1ce:	45 31 c0             	xor    %r8d,%r8d
 1d1:	44 88 85 68 f1 ff ff 	mov    %r8b,-0xe98(%rbp)
 1d8:	48 8d b5 68 f0 ff ff 	lea    -0xf98(%rbp),%rsi
 1df:	48 8d bd 58 ef ff ff 	lea    -0x10a8(%rbp),%rdi
 1e6:	b9 21 00 00 00       	mov    $0x21,%ecx
 1eb:	f3 48 a5             	rep movsq (%rsi),(%rdi)
 1ee:	89 95 88 f3 ff ff    	mov    %edx,-0xc78(%rbp)
 1f4:	89 95 8c f3 ff ff    	mov    %edx,-0xc74(%rbp)
 1fa:	48 8b 35 00 00 00 00 	mov    0x0(%rip),%rsi        # 201 <result_large+0x201>	1fd: R_X86_64_GOTPCREL	initializer for std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.Storage-0x4
 201:	48 8d bd 88 f2 ff ff 	lea    -0xd78(%rbp),%rdi
 208:	b9 20 00 00 00       	mov    $0x20,%ecx
 20d:	f3 48 a5             	rep movsq (%rsi),(%rdi)
 210:	44 88 85 88 f3 ff ff 	mov    %r8b,-0xc78(%rbp)
 217:	48 8d b5 90 f3 ff ff 	lea    -0xc70(%rbp),%rsi
 21e:	48 8d bd 48 ef ff ff 	lea    -0x10b8(%rbp),%rdi
 225:	e8 00 00 00 00       	call   22a <result_large+0x22a>	226: R_X86_64_PLT32	_D4core8lifetime__T15moveEmplaceImplTS7kernels11DomainErrorZQBpFNaNbNiNfMKQBlNkMKQBsZv-0x4
 22a:	48 8b b5 90 f3 ff ff 	mov    -0xc70(%rbp),%rsi
 231:	48 8d bd 88 f2 ff ff 	lea    -0xd78(%rbp),%rdi
 238:	e8 00 00 00 00       	call   23d <result_large+0x23d>	239: R_X86_64_PLT32	std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.this(error_d.Failure!(kernels.DomainError).Failure)-0x4
 23d:	48 89 c6             	mov    %rax,%rsi
 240:	48 8d bd 78 f1 ff ff 	lea    -0xe88(%rbp),%rdi
 247:	b9 21 00 00 00       	mov    $0x21,%ecx
 24c:	f3 48 a5             	rep movsq (%rsi),(%rdi)
 24f:	48 8d b5 98 f3 ff ff 	lea    -0xc68(%rbp),%rsi
 256:	48 8d bd 78 f1 ff ff 	lea    -0xe88(%rbp),%rdi
 25d:	e8 00 00 00 00       	call   262 <result_large+0x262>	25e: R_X86_64_PLT32	_D4core8lifetime__T15moveEmplaceImplTS3std7sumtype__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTS7kernels5BlockZQzTSQBy__T7FailureTSQBj11DomainErrorZQBbZQDtZQFfFNaNbNiNfMKQFbNkMKQFiZv-0x4
 262:	48 8d b5 98 f3 ff ff 	lea    -0xc68(%rbp),%rsi
 269:	48 8b fb             	mov    %rbx,%rdi
 26c:	b9 21 00 00 00       	mov    $0x21,%ecx
 271:	f3 48 a5             	rep movsq (%rsi),(%rdi)
 274:	48 8b c3             	mov    %rbx,%rax
 277:	48 8b 9d 40 ef ff ff 	mov    -0x10c0(%rbp),%rbx
 27e:	48 8b e5             	mov    %rbp,%rsp
 281:	5d                   	pop    %rbp
 282:	c3                   	ret
 283:	48 89 5d f0          	mov    %rbx,-0x10(%rbp)
 287:	8b 75 f8             	mov    -0x8(%rbp),%esi
 28a:	48 8d bd a8 f5 ff ff 	lea    -0xa58(%rbp),%rdi
 291:	e8 00 00 00 00       	call   296 <result_large+0x296>	292: R_X86_64_PLT32	kernels.block(uint)-0x4
 296:	48 89 c6             	mov    %rax,%rsi
 299:	48 8d bd a8 f4 ff ff 	lea    -0xb58(%rbp),%rdi
 2a0:	b9 20 00 00 00       	mov    $0x20,%ecx
 2a5:	f3 48 a5             	rep movsq (%rsi),(%rdi)
 2a8:	31 c0                	xor    %eax,%eax
 2aa:	89 85 b8 f7 ff ff    	mov    %eax,-0x848(%rbp)
 2b0:	89 85 bc f7 ff ff    	mov    %eax,-0x844(%rbp)
 2b6:	89 85 c0 f7 ff ff    	mov    %eax,-0x840(%rbp)
 2bc:	89 85 c4 f7 ff ff    	mov    %eax,-0x83c(%rbp)
 2c2:	89 85 c8 f7 ff ff    	mov    %eax,-0x838(%rbp)
 2c8:	89 85 cc f7 ff ff    	mov    %eax,-0x834(%rbp)
 2ce:	89 85 d0 f7 ff ff    	mov    %eax,-0x830(%rbp)
 2d4:	89 85 d4 f7 ff ff    	mov    %eax,-0x82c(%rbp)
 2da:	89 85 d8 f7 ff ff    	mov    %eax,-0x828(%rbp)
 2e0:	89 85 dc f7 ff ff    	mov    %eax,-0x824(%rbp)
 2e6:	89 85 e0 f7 ff ff    	mov    %eax,-0x820(%rbp)
 2ec:	89 85 e4 f7 ff ff    	mov    %eax,-0x81c(%rbp)
 2f2:	89 85 e8 f7 ff ff    	mov    %eax,-0x818(%rbp)
 2f8:	89 85 ec f7 ff ff    	mov    %eax,-0x814(%rbp)
 2fe:	89 85 f0 f7 ff ff    	mov    %eax,-0x810(%rbp)
 304:	89 85 f4 f7 ff ff    	mov    %eax,-0x80c(%rbp)
 30a:	89 85 f8 f7 ff ff    	mov    %eax,-0x808(%rbp)
 310:	89 85 fc f7 ff ff    	mov    %eax,-0x804(%rbp)
 316:	89 85 00 f8 ff ff    	mov    %eax,-0x800(%rbp)
 31c:	89 85 04 f8 ff ff    	mov    %eax,-0x7fc(%rbp)
 322:	89 85 08 f8 ff ff    	mov    %eax,-0x7f8(%rbp)
 328:	89 85 0c f8 ff ff    	mov    %eax,-0x7f4(%rbp)
 32e:	89 85 10 f8 ff ff    	mov    %eax,-0x7f0(%rbp)
 334:	89 85 14 f8 ff ff    	mov    %eax,-0x7ec(%rbp)
 33a:	89 85 18 f8 ff ff    	mov    %eax,-0x7e8(%rbp)
 340:	89 85 1c f8 ff ff    	mov    %eax,-0x7e4(%rbp)
 346:	89 85 20 f8 ff ff    	mov    %eax,-0x7e0(%rbp)
 34c:	89 85 24 f8 ff ff    	mov    %eax,-0x7dc(%rbp)
 352:	89 85 28 f8 ff ff    	mov    %eax,-0x7d8(%rbp)
 358:	89 85 2c f8 ff ff    	mov    %eax,-0x7d4(%rbp)
 35e:	89 85 30 f8 ff ff    	mov    %eax,-0x7d0(%rbp)
 364:	89 85 34 f8 ff ff    	mov    %eax,-0x7cc(%rbp)
 36a:	89 85 38 f8 ff ff    	mov    %eax,-0x7c8(%rbp)
 370:	89 85 3c f8 ff ff    	mov    %eax,-0x7c4(%rbp)
 376:	89 85 40 f8 ff ff    	mov    %eax,-0x7c0(%rbp)
 37c:	89 85 44 f8 ff ff    	mov    %eax,-0x7bc(%rbp)
 382:	89 85 48 f8 ff ff    	mov    %eax,-0x7b8(%rbp)
 388:	89 85 4c f8 ff ff    	mov    %eax,-0x7b4(%rbp)
 38e:	89 85 50 f8 ff ff    	mov    %eax,-0x7b0(%rbp)
 394:	89 85 54 f8 ff ff    	mov    %eax,-0x7ac(%rbp)
 39a:	89 85 58 f8 ff ff    	mov    %eax,-0x7a8(%rbp)
 3a0:	89 85 5c f8 ff ff    	mov    %eax,-0x7a4(%rbp)
 3a6:	89 85 60 f8 ff ff    	mov    %eax,-0x7a0(%rbp)
 3ac:	89 85 64 f8 ff ff    	mov    %eax,-0x79c(%rbp)
 3b2:	89 85 68 f8 ff ff    	mov    %eax,-0x798(%rbp)
 3b8:	89 85 6c f8 ff ff    	mov    %eax,-0x794(%rbp)
 3be:	89 85 70 f8 ff ff    	mov    %eax,-0x790(%rbp)
 3c4:	89 85 74 f8 ff ff    	mov    %eax,-0x78c(%rbp)
 3ca:	89 85 78 f8 ff ff    	mov    %eax,-0x788(%rbp)
 3d0:	89 85 7c f8 ff ff    	mov    %eax,-0x784(%rbp)
 3d6:	89 85 80 f8 ff ff    	mov    %eax,-0x780(%rbp)
 3dc:	89 85 84 f8 ff ff    	mov    %eax,-0x77c(%rbp)
 3e2:	89 85 88 f8 ff ff    	mov    %eax,-0x778(%rbp)
 3e8:	89 85 8c f8 ff ff    	mov    %eax,-0x774(%rbp)
 3ee:	89 85 90 f8 ff ff    	mov    %eax,-0x770(%rbp)
 3f4:	89 85 94 f8 ff ff    	mov    %eax,-0x76c(%rbp)
 3fa:	89 85 98 f8 ff ff    	mov    %eax,-0x768(%rbp)
 400:	89 85 9c f8 ff ff    	mov    %eax,-0x764(%rbp)
 406:	89 85 a0 f8 ff ff    	mov    %eax,-0x760(%rbp)
 40c:	89 85 a4 f8 ff ff    	mov    %eax,-0x75c(%rbp)
 412:	89 85 a8 f8 ff ff    	mov    %eax,-0x758(%rbp)
 418:	89 85 ac f8 ff ff    	mov    %eax,-0x754(%rbp)
 41e:	89 85 b0 f8 ff ff    	mov    %eax,-0x750(%rbp)
 424:	89 85 b4 f8 ff ff    	mov    %eax,-0x74c(%rbp)
 42a:	89 85 b8 f8 ff ff    	mov    %eax,-0x748(%rbp)
 430:	89 85 bc f8 ff ff    	mov    %eax,-0x744(%rbp)
 436:	88 8d b8 f8 ff ff    	mov    %cl,-0x748(%rbp)
 43c:	48 8d b5 b8 f7 ff ff 	lea    -0x848(%rbp),%rsi
 443:	48 8d bd a8 f6 ff ff 	lea    -0x958(%rbp),%rdi
 44a:	b9 21 00 00 00       	mov    $0x21,%ecx
 44f:	f3 48 a5             	rep movsq (%rsi),(%rdi)
 452:	89 85 d8 fa ff ff    	mov    %eax,-0x528(%rbp)
 458:	89 85 dc fa ff ff    	mov    %eax,-0x524(%rbp)
 45e:	48 8b 35 00 00 00 00 	mov    0x0(%rip),%rsi        # 465 <result_large+0x465>	461: R_X86_64_GOTPCREL	initializer for std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.Storage-0x4
 465:	48 8d bd d8 f9 ff ff 	lea    -0x628(%rbp),%rdi
 46c:	b9 20 00 00 00       	mov    $0x20,%ecx
 471:	f3 48 a5             	rep movsq (%rsi),(%rdi)
 474:	88 85 d8 fa ff ff    	mov    %al,-0x528(%rbp)
 47a:	48 8d b5 e8 fd ff ff 	lea    -0x218(%rbp),%rsi
 481:	48 8d bd a8 f4 ff ff 	lea    -0xb58(%rbp),%rdi
 488:	e8 00 00 00 00       	call   48d <result_large+0x48d>	489: R_X86_64_PLT32	_D4core8lifetime__T15moveEmplaceImplTS7kernels5BlockZQBiFNaNbNiNfMKQBeNkMKQBlZv-0x4
 48d:	48 8d b5 e8 fd ff ff 	lea    -0x218(%rbp),%rsi
 494:	48 8d bd e8 fc ff ff 	lea    -0x318(%rbp),%rdi
 49b:	b9 20 00 00 00       	mov    $0x20,%ecx
 4a0:	f3 48 a5             	rep movsq (%rsi),(%rdi)
 4a3:	48 8d b5 e8 fd ff ff 	lea    -0x218(%rbp),%rsi
 4aa:	48 8d bd e8 fb ff ff 	lea    -0x418(%rbp),%rdi
 4b1:	b9 20 00 00 00       	mov    $0x20,%ecx
 4b6:	f3 48 a5             	rep movsq (%rsi),(%rdi)
 4b9:	48 8d b5 e8 fd ff ff 	lea    -0x218(%rbp),%rsi
 4c0:	48 8d bd e8 fa ff ff 	lea    -0x518(%rbp),%rdi
 4c7:	b9 20 00 00 00       	mov    $0x20,%ecx
 4cc:	f3 48 a5             	rep movsq (%rsi),(%rdi)
 4cf:	48 8d 9d e0 fe ff ff 	lea    -0x120(%rbp),%rbx
 4d6:	b9 20 00 00 00       	mov    $0x20,%ecx
 4db:	ff 33                	push   (%rbx)
 4dd:	48 83 eb 08          	sub    $0x8,%rbx
 4e1:	ff c9                	dec    %ecx
 4e3:	75 f6                	jne    4db <result_large+0x4db>
 4e5:	48 8d bd d8 f9 ff ff 	lea    -0x628(%rbp),%rdi
 4ec:	e8 00 00 00 00       	call   4f1 <result_large+0x4f1>	4ed: R_X86_64_PLT32	std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.this(error_d.Success!(kernels.Block).Success)-0x4
 4f1:	48 81 c4 00 01 00 00 	add    $0x100,%rsp
 4f8:	48 89 c6             	mov    %rax,%rsi
 4fb:	48 8d bd c8 f8 ff ff 	lea    -0x738(%rbp),%rdi
 502:	b9 21 00 00 00       	mov    $0x21,%ecx
 507:	f3 48 a5             	rep movsq (%rsi),(%rdi)
 50a:	48 8d b5 e8 fe ff ff 	lea    -0x118(%rbp),%rsi
 511:	48 8d bd c8 f8 ff ff 	lea    -0x738(%rbp),%rdi
 518:	e8 00 00 00 00       	call   51d <result_large+0x51d>	519: R_X86_64_PLT32	_D4core8lifetime__T15moveEmplaceImplTS3std7sumtype__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTS7kernels5BlockZQzTSQBy__T7FailureTSQBj11DomainErrorZQBbZQDtZQFfFNaNbNiNfMKQFbNkMKQFiZv-0x4
 51d:	48 8d b5 e8 fe ff ff 	lea    -0x118(%rbp),%rsi
 524:	48 8b 7d f0          	mov    -0x10(%rbp),%rdi
 528:	b9 21 00 00 00       	mov    $0x21,%ecx
 52d:	f3 48 a5             	rep movsq (%rsi),(%rdi)
 530:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
 534:	48 8b 9d 40 ef ff ff 	mov    -0x10c0(%rbp),%rbx
 53b:	48 8b e5             	mov    %rbp,%rsp
 53e:	5d                   	pop    %rbp
 53f:	c3                   	ret

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
   0:	55                   	push   %rbp
   1:	48 8b ec             	mov    %rsp,%rbp
   4:	48 81 ec a0 00 00 00 	sub    $0xa0,%rsp
   b:	48 89 9d 60 ff ff ff 	mov    %rbx,-0xa0(%rbp)
  12:	4c 89 a5 68 ff ff ff 	mov    %r12,-0x98(%rbp)
  19:	48 89 fb             	mov    %rdi,%rbx
  1c:	49 89 d4             	mov    %rdx,%r12
  1f:	41 8b cc             	mov    %r12d,%ecx
  22:	81 e1 ff 00 00 00    	and    $0xff,%ecx
  28:	3b ce                	cmp    %esi,%ecx
  2a:	0f 83 8d 00 00 00    	jae    bd <kernels.localResult(uint, uint)+0xbd>
  30:	c7 85 70 ff ff ff 01 00 00 00 	movl   $0x1,-0x90(%rbp)
  3a:	44 89 a5 74 ff ff ff 	mov    %r12d,-0x8c(%rbp)
  41:	31 f6                	xor    %esi,%esi
  43:	89 75 98             	mov    %esi,-0x68(%rbp)
  46:	89 75 9c             	mov    %esi,-0x64(%rbp)
  49:	89 75 a0             	mov    %esi,-0x60(%rbp)
  4c:	89 75 a4             	mov    %esi,-0x5c(%rbp)
  4f:	40 88 75 a0          	mov    %sil,-0x60(%rbp)
  53:	4c 8b 45 a0          	mov    -0x60(%rbp),%r8
  57:	4c 89 45 90          	mov    %r8,-0x70(%rbp)
  5b:	40 88 75 98          	mov    %sil,-0x68(%rbp)
  5f:	48 8d 75 a8          	lea    -0x58(%rbp),%rsi
  63:	48 8d bd 70 ff ff ff 	lea    -0x90(%rbp),%rdi
  6a:	e8 00 00 00 00       	call   6f <kernels.localResult(uint, uint)+0x6f>	6b: R_X86_64_PLT32	_D4core8lifetime__T15moveEmplaceImplTS7kernels11DomainErrorZQBpFNaNbNiNfMKQBlNkMKQBsZv-0x4
  6f:	48 8b 75 a8          	mov    -0x58(%rbp),%rsi
  73:	48 8d 7d 90          	lea    -0x70(%rbp),%rdi
  77:	e8 00 00 00 00       	call   7c <kernels.localResult(uint, uint)+0x7c>	78: R_X86_64_PLT32	std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.this(error_d.Failure!(kernels.DomainError).Failure)-0x4
  7c:	48 8b 50 08          	mov    0x8(%rax),%rdx
  80:	48 8b 00             	mov    (%rax),%rax
  83:	48 89 45 80          	mov    %rax,-0x80(%rbp)
  87:	48 89 55 88          	mov    %rdx,-0x78(%rbp)
  8b:	48 8d 75 b0          	lea    -0x50(%rbp),%rsi
  8f:	48 8d 7d 80          	lea    -0x80(%rbp),%rdi
  93:	e8 00 00 00 00       	call   98 <kernels.localResult(uint, uint)+0x98>	94: R_X86_64_PLT32	_D4core8lifetime__T15moveEmplaceImplTS3std7sumtype__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTmZQlTSQBk__T7FailureTS7kernels11DomainErrorZQBgZQDkZQEwFNaNbNiNfMKQEsNkMKQEzZv-0x4
  98:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
  9c:	48 8b 4d b8          	mov    -0x48(%rbp),%rcx
  a0:	48 89 03             	mov    %rax,(%rbx)
  a3:	48 89 4b 08          	mov    %rcx,0x8(%rbx)
  a7:	48 8b c3             	mov    %rbx,%rax
  aa:	48 8b 9d 60 ff ff ff 	mov    -0xa0(%rbp),%rbx
  b1:	4c 8b a5 68 ff ff ff 	mov    -0x98(%rbp),%r12
  b8:	48 8b e5             	mov    %rbp,%rsp
  bb:	5d                   	pop    %rbp
  bc:	c3                   	ret
  bd:	31 c0                	xor    %eax,%eax
  bf:	89 45 d8             	mov    %eax,-0x28(%rbp)
  c2:	89 45 dc             	mov    %eax,-0x24(%rbp)
  c5:	89 45 e0             	mov    %eax,-0x20(%rbp)
  c8:	89 45 e4             	mov    %eax,-0x1c(%rbp)
  cb:	88 45 e0             	mov    %al,-0x20(%rbp)
  ce:	48 8b 75 e0          	mov    -0x20(%rbp),%rsi
  d2:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
  d6:	88 45 d8             	mov    %al,-0x28(%rbp)
  d9:	41 8b c4             	mov    %r12d,%eax
  dc:	49 b8 87 ca eb 85 b1 79 37 9e 	movabs $0x9e3779b185ebca87,%r8
  e6:	49 f7 e0             	mul    %r8
  e9:	48 89 c6             	mov    %rax,%rsi
  ec:	41 8b cc             	mov    %r12d,%ecx
  ef:	c1 e9 07             	shr    $0x7,%ecx
  f2:	8b c9                	mov    %ecx,%ecx
  f4:	48 33 f1             	xor    %rcx,%rsi
  f7:	48 8d 7d d0          	lea    -0x30(%rbp),%rdi
  fb:	e8 00 00 00 00       	call   100 <kernels.localResult(uint, uint)+0x100>	fc: R_X86_64_PLT32	std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.this(error_d.Success!(ulong).Success)-0x4
 100:	48 8b 50 08          	mov    0x8(%rax),%rdx
 104:	48 8b 00             	mov    (%rax),%rax
 107:	48 89 45 c0          	mov    %rax,-0x40(%rbp)
 10b:	48 89 55 c8          	mov    %rdx,-0x38(%rbp)
 10f:	48 8d 75 f0          	lea    -0x10(%rbp),%rsi
 113:	48 8d 7d c0          	lea    -0x40(%rbp),%rdi
 117:	e8 00 00 00 00       	call   11c <kernels.localResult(uint, uint)+0x11c>	118: R_X86_64_PLT32	_D4core8lifetime__T15moveEmplaceImplTS3std7sumtype__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTmZQlTSQBk__T7FailureTS7kernels11DomainErrorZQBgZQDkZQEwFNaNbNiNfMKQEsNkMKQEzZv-0x4
 11c:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
 120:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
 124:	48 89 03             	mov    %rax,(%rbx)
 127:	48 89 4b 08          	mov    %rcx,0x8(%rbx)
 12b:	48 8b c3             	mov    %rbx,%rax
 12e:	48 8b 9d 60 ff ff ff 	mov    -0xa0(%rbp),%rbx
 135:	4c 8b a5 68 ff ff ff 	mov    -0x98(%rbp),%r12
 13c:	48 8b e5             	mov    %rbp,%rsp
 13f:	5d                   	pop    %rbp
 140:	c3                   	ret
 141:	00 00                	add    %al,(%rax)
	...

Disassembly of section .text.pipeline_result:

0000000000000000 <pipeline_result>:
   0:	55                   	push   %rbp
   1:	48 8b ec             	mov    %rsp,%rbp
   4:	48 83 ec 40          	sub    $0x40,%rsp
   8:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
   c:	89 75 f0             	mov    %esi,-0x10(%rbp)
   f:	89 55 f8             	mov    %edx,-0x8(%rbp)
  12:	89 f2                	mov    %esi,%edx
  14:	8b 75 f8             	mov    -0x8(%rbp),%esi
  17:	48 8d 7d c0          	lea    -0x40(%rbp),%rdi
  1b:	e8 00 00 00 00       	call   20 <pipeline_result+0x20>	1c: R_X86_64_PLT32	kernels.localResult(uint, uint)-0x4
  20:	48 8b 15 00 00 00 00 	mov    0x0(%rip),%rdx        # 27 <pipeline_result+0x27>	23: R_X86_64_GOTPCREL	kernels.pipeline_result(uint, uint).__lambda_L54_C14(ulong)-0x4
  27:	48 8d 75 d0          	lea    -0x30(%rbp),%rsi
  2b:	48 89 c7             	mov    %rax,%rdi
  2e:	e8 00 00 00 00       	call   33 <pipeline_result+0x33>	2f: R_X86_64_PLT32	error_d.Result!(ulong, kernels.DomainError).Result.map!(ulong(ulong) pure nothrow @nogc @safe function, error_d.Result!(ulong, kernels.DomainError).Result).map(scope ulong(ulong) pure nothrow @nogc @safe function)-0x4
  33:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
  37:	48 89 e8             	mov    %rbp,%rax
  3a:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # 41 <pipeline_result+0x41>	3d: R_X86_64_GOTPCREL	kernels.pipeline_result(uint, uint).__lambda_L55_C18(ulong)-0x4
  41:	48 89 c2             	mov    %rax,%rdx
  44:	48 8b 75 e8          	mov    -0x18(%rbp),%rsi
  48:	48 8b 7d e0          	mov    -0x20(%rbp),%rdi
  4c:	e8 00 00 00 00       	call   51 <pipeline_result+0x51>	4d: R_X86_64_PLT32	error_d.Result!(ulong, kernels.DomainError).Result.andThen!(error_d.Result!(ulong, kernels.DomainError).Result(ulong) pure nothrow @nogc @safe delegate, error_d.Result!(ulong, kernels.DomainError).Result).andThen(scope error_d.Result!(ulong, kernels.DomainError).Result(ulong) pure nothrow @nogc @safe delegate)-0x4
  51:	48 8b e5             	mov    %rbp,%rsp
  54:	5d                   	pop    %rbp
  55:	c3                   	ret
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
   4:	48 83 ec 60          	sub    $0x60,%rsp
   8:	48 89 5d a8          	mov    %rbx,-0x58(%rbp)
   c:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  10:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
  14:	48 89 55 f8          	mov    %rdx,-0x8(%rbp)
  18:	f6 45 f8 0f          	testb  $0xf,-0x8(%rbp)
  1c:	74 13                	je     31 <kernels.pipeline_result(uint, uint).__lambda_L55_C18(ulong)+0x31>
  1e:	48 8b 75 f8          	mov    -0x8(%rbp),%rsi
  22:	48 8d 34 76          	lea    (%rsi,%rsi,2),%rsi
  26:	48 8d 7d d0          	lea    -0x30(%rbp),%rdi
  2a:	e8 00 00 00 00       	call   2f <kernels.pipeline_result(uint, uint).__lambda_L55_C18(ulong)+0x2f>	2b: R_X86_64_PLT32	error_d.Result!(ulong, kernels.DomainError).Result.success!().success(ulong)-0x4
  2f:	eb 1e                	jmp    4f <kernels.pipeline_result(uint, uint).__lambda_L55_C18(ulong)+0x4f>
  31:	c7 45 b0 02 00 00 00 	movl   $0x2,-0x50(%rbp)
  38:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  3c:	8b 48 f0             	mov    -0x10(%rax),%ecx
  3f:	89 4d b4             	mov    %ecx,-0x4c(%rbp)
  42:	48 8b 75 b0          	mov    -0x50(%rbp),%rsi
  46:	48 8d 7d c0          	lea    -0x40(%rbp),%rdi
  4a:	e8 00 00 00 00       	call   4f <kernels.pipeline_result(uint, uint).__lambda_L55_C18(ulong)+0x4f>	4b: R_X86_64_PLT32	error_d.Result!(ulong, kernels.DomainError).Result.failure!().failure(kernels.DomainError)-0x4
  4f:	48 8b 50 08          	mov    0x8(%rax),%rdx
  53:	48 8b 00             	mov    (%rax),%rax
  56:	48 8b 5d f0          	mov    -0x10(%rbp),%rbx
  5a:	48 89 03             	mov    %rax,(%rbx)
  5d:	48 89 53 08          	mov    %rdx,0x8(%rbx)
  61:	48 89 d8             	mov    %rbx,%rax
  64:	48 8b 5d a8          	mov    -0x58(%rbp),%rbx
  68:	48 8b e5             	mov    %rbp,%rsp
  6b:	5d                   	pop    %rbp
  6c:	c3                   	ret
  6d:	00 00                	add    %al,(%rax)
	...

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

Disassembly of section .text._D4core8lifetime__T4moveTmZQiFNaNbNiNfNkMKmZm:

0000000000000000 <_D4core8lifetime__T4moveTmZQiFNaNbNiNfNkMKmZm>:
   0:	48 8b 07             	mov    (%rdi),%rax
   3:	c3                   	ret

Disassembly of section .text._D4core8lifetime__T8moveImplTmZQmFNaNbNiNfNkMKmZm:

0000000000000000 <_D4core8lifetime__T8moveImplTmZQmFNaNbNiNfNkMKmZm>:
   0:	48 8b 07             	mov    (%rdi),%rax
   3:	c3                   	ret

Disassembly of section .text._D4core8lifetime__T15moveEmplaceImplTmZQuFNaNbNiNfMKmNkMKmZv:

0000000000000000 <_D4core8lifetime__T15moveEmplaceImplTmZQuFNaNbNiNfMKmNkMKmZv>:
   0:	48 8b 0f             	mov    (%rdi),%rcx
   3:	48 89 0e             	mov    %rcx,(%rsi)
   6:	c3                   	ret
	...

Disassembly of section .text._D4core8lifetime__T15trustedMoveImplTmZQuFNaNbNiNeNkMKmZm:

0000000000000000 <_D4core8lifetime__T15trustedMoveImplTmZQuFNaNbNiNeNkMKmZm>:
   0:	48 8b 07             	mov    (%rdi),%rax
   3:	c3                   	ret

Disassembly of section .text._D4core8lifetime__T4moveTS7kernels11DomainErrorZQBdFNaNbNiNfNkMKQBnZQBr:

0000000000000000 <_D4core8lifetime__T4moveTS7kernels11DomainErrorZQBdFNaNbNiNfNkMKQBnZQBr>:
   0:	55                   	push   %rbp
   1:	48 8b ec             	mov    %rsp,%rbp
   4:	48 83 ec 10          	sub    $0x10,%rsp
   8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
   c:	48 8d 75 f0          	lea    -0x10(%rbp),%rsi
  10:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
  14:	e8 00 00 00 00       	call   19 <_D4core8lifetime__T4moveTS7kernels11DomainErrorZQBdFNaNbNiNfNkMKQBnZQBr+0x19>	15: R_X86_64_PLT32	_D4core8lifetime__T15moveEmplaceImplTS7kernels11DomainErrorZQBpFNaNbNiNfMKQBlNkMKQBsZv-0x4
  19:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  1d:	48 8b e5             	mov    %rbp,%rsp
  20:	5d                   	pop    %rbp
  21:	c3                   	ret
	...

Disassembly of section .text._D4core8lifetime__T8moveImplTS7kernels11DomainErrorZQBhFNaNbNiNfNkMKQBnZQBr:

0000000000000000 <_D4core8lifetime__T8moveImplTS7kernels11DomainErrorZQBhFNaNbNiNfNkMKQBnZQBr>:
   0:	55                   	push   %rbp
   1:	48 8b ec             	mov    %rsp,%rbp
   4:	48 83 ec 10          	sub    $0x10,%rsp
   8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
   c:	48 8d 75 f0          	lea    -0x10(%rbp),%rsi
  10:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
  14:	e8 00 00 00 00       	call   19 <_D4core8lifetime__T8moveImplTS7kernels11DomainErrorZQBhFNaNbNiNfNkMKQBnZQBr+0x19>	15: R_X86_64_PLT32	_D4core8lifetime__T15moveEmplaceImplTS7kernels11DomainErrorZQBpFNaNbNiNfMKQBlNkMKQBsZv-0x4
  19:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  1d:	48 8b e5             	mov    %rbp,%rsp
  20:	5d                   	pop    %rbp
  21:	c3                   	ret
	...

Disassembly of section .text._D4core8lifetime__T15moveEmplaceImplTS7kernels11DomainErrorZQBpFNaNbNiNfMKQBlNkMKQBsZv:

0000000000000000 <_D4core8lifetime__T15moveEmplaceImplTS7kernels11DomainErrorZQBpFNaNbNiNfMKQBlNkMKQBsZv>:
   0:	48 83 ec 18          	sub    $0x18,%rsp
   4:	48 89 7c 24 08       	mov    %rdi,0x8(%rsp)
   9:	48 89 74 24 10       	mov    %rsi,0x10(%rsp)
   e:	48 8b 07             	mov    (%rdi),%rax
  11:	48 89 06             	mov    %rax,(%rsi)
  14:	48 83 c4 18          	add    $0x18,%rsp
  18:	c3                   	ret
  19:	00 00                	add    %al,(%rax)
	...

Disassembly of section .text._D4core8lifetime__T15trustedMoveImplTS7kernels11DomainErrorZQBpFNaNbNiNeNkMKQBnZQBr:

0000000000000000 <_D4core8lifetime__T15trustedMoveImplTS7kernels11DomainErrorZQBpFNaNbNiNeNkMKQBnZQBr>:
   0:	55                   	push   %rbp
   1:	48 8b ec             	mov    %rsp,%rbp
   4:	48 83 ec 10          	sub    $0x10,%rsp
   8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
   c:	48 8d 75 f0          	lea    -0x10(%rbp),%rsi
  10:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
  14:	e8 00 00 00 00       	call   19 <_D4core8lifetime__T15trustedMoveImplTS7kernels11DomainErrorZQBpFNaNbNiNeNkMKQBnZQBr+0x19>	15: R_X86_64_PLT32	_D4core8lifetime__T15moveEmplaceImplTS7kernels11DomainErrorZQBpFNaNbNiNfMKQBlNkMKQBsZv-0x4
  19:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  1d:	48 8b e5             	mov    %rbp,%rsp
  20:	5d                   	pop    %rbp
  21:	c3                   	ret
	...

Disassembly of section .text._D7error_d__T6ResultTmTS7kernels11DomainErrorZQBh11requireLiveMxFNaNbNiNfZv:

0000000000000000 <error_d.Result!(ulong, kernels.DomainError).Result.requireLive() const>:
   0:	c3                   	ret
   1:	00 00                	add    %al,(%rax)
	...

Disassembly of section .text._D7error_d__T6ResultTmTS7kernels11DomainErrorZQBh6__ctorMFNaNbNcNiNfKSQCq__TQClTmTQChZQCvZQv:

0000000000000000 <error_d.Result!(ulong, kernels.DomainError).Result.this(ref error_d.Result!(ulong, kernels.DomainError).Result)>:
   0:	55                   	push   %rbp
   1:	48 8b ec             	mov    %rsp,%rbp
   4:	48 83 ec 10          	sub    $0x10,%rsp
   8:	48 89 7d f0          	mov    %rdi,-0x10(%rbp)
   c:	48 89 75 f8          	mov    %rsi,-0x8(%rbp)
  10:	48 8b 75 f8          	mov    -0x8(%rbp),%rsi
  14:	48 8b 7d f0          	mov    -0x10(%rbp),%rdi
  18:	e8 00 00 00 00       	call   1d <error_d.Result!(ulong, kernels.DomainError).Result.this(ref error_d.Result!(ulong, kernels.DomainError).Result)+0x1d>	19: R_X86_64_PLT32	error_d.Result!(ulong, kernels.DomainError).Result.copyStorage!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).copyStorage(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)-0x4
  1d:	48 8b 7d f0          	mov    -0x10(%rbp),%rdi
  21:	48 8b c7             	mov    %rdi,%rax
  24:	48 8b e5             	mov    %rbp,%rsp
  27:	5d                   	pop    %rbp
  28:	c3                   	ret
  29:	00 00                	add    %al,(%rax)
	...

Disassembly of section .text._D7error_d__T6ResultTmTS7kernels11DomainErrorZQBh6__ctorMxFNaNbNcNiNfKxSQCs__TQCnTmTQCjZQCxZxQw:

0000000000000000 <error_d.Result!(ulong, kernels.DomainError).Result.this(ref const(error_d.Result!(ulong, kernels.DomainError).Result)) const>:
   0:	55                   	push   %rbp
   1:	48 8b ec             	mov    %rsp,%rbp
   4:	48 83 ec 10          	sub    $0x10,%rsp
   8:	48 89 7d f0          	mov    %rdi,-0x10(%rbp)
   c:	48 89 75 f8          	mov    %rsi,-0x8(%rbp)
  10:	48 8b 75 f8          	mov    -0x8(%rbp),%rsi
  14:	48 8b 7d f0          	mov    -0x10(%rbp),%rdi
  18:	e8 00 00 00 00       	call   1d <error_d.Result!(ulong, kernels.DomainError).Result.this(ref const(error_d.Result!(ulong, kernels.DomainError).Result)) const+0x1d>	19: R_X86_64_PLT32	error_d.Result!(ulong, kernels.DomainError).Result.copyStorage!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).copyStorage(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType))-0x4
  1d:	48 8b 7d f0          	mov    -0x10(%rbp),%rdi
  21:	48 8b c7             	mov    %rdi,%rax
  24:	48 8b e5             	mov    %rbp,%rsp
  27:	5d                   	pop    %rbp
  28:	c3                   	ret
  29:	00 00                	add    %al,(%rax)
	...

Disassembly of section .text._D7error_d__T6ResultTmTS7kernels11DomainErrorZQBh6__ctorMyFNaNbNcNiNfKySQCs__TQCnTmTQCjZQCxZyQw:

0000000000000000 <error_d.Result!(ulong, kernels.DomainError).Result.this(ref immutable(error_d.Result!(ulong, kernels.DomainError).Result)) immutable>:
   0:	55                   	push   %rbp
   1:	48 8b ec             	mov    %rsp,%rbp
   4:	48 83 ec 10          	sub    $0x10,%rsp
   8:	48 89 7d f0          	mov    %rdi,-0x10(%rbp)
   c:	48 89 75 f8          	mov    %rsi,-0x8(%rbp)
  10:	48 8b 75 f8          	mov    -0x8(%rbp),%rsi
  14:	48 8b 7d f0          	mov    -0x10(%rbp),%rdi
  18:	e8 00 00 00 00       	call   1d <error_d.Result!(ulong, kernels.DomainError).Result.this(ref immutable(error_d.Result!(ulong, kernels.DomainError).Result)) immutable+0x1d>	19: R_X86_64_PLT32	error_d.Result!(ulong, kernels.DomainError).Result.copyStorage!(immutable(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).copyStorage(ref immutable(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType))-0x4
  1d:	48 8b 7d f0          	mov    -0x10(%rbp),%rdi
  21:	48 8b c7             	mov    %rdi,%rax
  24:	48 8b e5             	mov    %rbp,%rsp
  27:	5d                   	pop    %rbp
  28:	c3                   	ret
  29:	00 00                	add    %al,(%rax)
	...

Disassembly of section .text._D7error_d__T6ResultTmTS7kernels11DomainErrorZQBh6__ctorMFNaNbNcNiNfS3std7sumtype__T7SumTypeTSQDo5EmptyTSQDz__T7SuccessTmZQlTSQEu__T7FailureTQEoZQnZQCmZSQFv__TQFqTmTQFmZQGa:

0000000000000000 <error_d.Result!(ulong, kernels.DomainError).Result.this(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)>:
   0:	55                   	push   %rbp
   1:	48 8b ec             	mov    %rsp,%rbp
   4:	48 83 ec 20          	sub    $0x20,%rsp
   8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
   c:	48 8d 75 e0          	lea    -0x20(%rbp),%rsi
  10:	48 8d 7d 10          	lea    0x10(%rbp),%rdi
  14:	e8 00 00 00 00       	call   19 <error_d.Result!(ulong, kernels.DomainError).Result.this(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)+0x19>	15: R_X86_64_PLT32	_D4core8lifetime__T15moveEmplaceImplTS3std7sumtype__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTmZQlTSQBk__T7FailureTS7kernels11DomainErrorZQBgZQDkZQEwFNaNbNiNfMKQEsNkMKQEzZv-0x4
  19:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  1d:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
  21:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
  25:	48 89 02             	mov    %rax,(%rdx)
  28:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
  2c:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
  30:	48 89 d0             	mov    %rdx,%rax
  33:	48 8b e5             	mov    %rbp,%rsp
  36:	5d                   	pop    %rbp
  37:	c3                   	ret

Disassembly of section .text._D7error_d__T6ResultTmTS7kernels11DomainErrorZQBh5stateMxFNaNbNiNfZEQCo11ResultState:

0000000000000000 <error_d.Result!(ulong, kernels.DomainError).Result.state() const>:
   0:	55                   	push   %rbp
   1:	48 8b ec             	mov    %rsp,%rbp
   4:	48 83 ec 10          	sub    $0x10,%rsp
   8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
   c:	48 8b 75 f8          	mov    -0x8(%rbp),%rsi
  10:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
  14:	e8 00 00 00 00       	call   19 <error_d.Result!(ulong, kernels.DomainError).Result.state() const+0x19>	15: R_X86_64_PLT32	std.sumtype.match!(error_d.Result!(ulong, kernels.DomainError).Result.state().__lambda_L162_C31).match!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).match(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType))-0x4
  19:	48 8b e5             	mov    %rbp,%rsp
  1c:	5d                   	pop    %rbp
  1d:	c3                   	ret
	...

Disassembly of section .text._D7error_d__T6ResultTmTS7kernels11DomainErrorZQBh8hasValueMxFNaNbNiNfZb:

0000000000000000 <error_d.Result!(ulong, kernels.DomainError).Result.hasValue() const>:
   0:	55                   	push   %rbp
   1:	48 8b ec             	mov    %rsp,%rbp
   4:	48 83 ec 10          	sub    $0x10,%rsp
   8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
   c:	48 8b 75 f8          	mov    -0x8(%rbp),%rsi
  10:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
  14:	e8 00 00 00 00       	call   19 <error_d.Result!(ulong, kernels.DomainError).Result.hasValue() const+0x19>	15: R_X86_64_PLT32	std.sumtype.match!(error_d.Result!(ulong, kernels.DomainError).Result.state().__lambda_L162_C31).match!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).match(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType))-0x4
  19:	83 f8 01             	cmp    $0x1,%eax
  1c:	0f 94 c0             	sete   %al
  1f:	48 8b e5             	mov    %rbp,%rsp
  22:	5d                   	pop    %rbp
  23:	c3                   	ret

Disassembly of section .text._D7error_d__T6ResultTmTS7kernels11DomainErrorZQBh8hasErrorMxFNaNbNiNfZb:

0000000000000000 <error_d.Result!(ulong, kernels.DomainError).Result.hasError() const>:
   0:	55                   	push   %rbp
   1:	48 8b ec             	mov    %rsp,%rbp
   4:	48 83 ec 10          	sub    $0x10,%rsp
   8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
   c:	48 8b 75 f8          	mov    -0x8(%rbp),%rsi
  10:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
  14:	e8 00 00 00 00       	call   19 <error_d.Result!(ulong, kernels.DomainError).Result.hasError() const+0x19>	15: R_X86_64_PLT32	std.sumtype.match!(error_d.Result!(ulong, kernels.DomainError).Result.state().__lambda_L162_C31).match!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).match(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType))-0x4
  19:	83 f8 02             	cmp    $0x2,%eax
  1c:	0f 94 c0             	sete   %al
  1f:	48 8b e5             	mov    %rbp,%rsp
  22:	5d                   	pop    %rbp
  23:	c3                   	ret

Disassembly of section .text._D7error_d__T6ResultTmTS7kernels11DomainErrorZQBh7isEmptyMxFNaNbNiNfZb:

0000000000000000 <error_d.Result!(ulong, kernels.DomainError).Result.isEmpty() const>:
   0:	55                   	push   %rbp
   1:	48 8b ec             	mov    %rsp,%rbp
   4:	48 83 ec 10          	sub    $0x10,%rsp
   8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
   c:	48 8b 75 f8          	mov    -0x8(%rbp),%rsi
  10:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
  14:	e8 00 00 00 00       	call   19 <error_d.Result!(ulong, kernels.DomainError).Result.isEmpty() const+0x19>	15: R_X86_64_PLT32	std.sumtype.match!(error_d.Result!(ulong, kernels.DomainError).Result.state().__lambda_L162_C31).match!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).match(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType))-0x4
  19:	85 c0                	test   %eax,%eax
  1b:	0f 94 c0             	sete   %al
  1e:	48 8b e5             	mov    %rbp,%rsp
  21:	5d                   	pop    %rbp
  22:	c3                   	ret
	...

Disassembly of section .text._D7error_d__T6ResultTmTS7kernels11DomainErrorZQBh8opAssignMFNaNbNiNfSQCp__TQCkTmTQCgZQCuZv:

0000000000000000 <error_d.Result!(ulong, kernels.DomainError).Result.opAssign(error_d.Result!(ulong, kernels.DomainError).Result)>:
   0:	55                   	push   %rbp
   1:	48 8b ec             	mov    %rsp,%rbp
   4:	48 83 ec 40          	sub    $0x40,%rsp
   8:	48 89 5d c8          	mov    %rbx,-0x38(%rbp)
   c:	48 89 75 f8          	mov    %rsi,-0x8(%rbp)
  10:	48 89 fb             	mov    %rdi,%rbx
  13:	48 8d 75 d0          	lea    -0x30(%rbp),%rsi
  17:	48 8b fb             	mov    %rbx,%rdi
  1a:	e8 00 00 00 00       	call   1f <error_d.Result!(ulong, kernels.DomainError).Result.opAssign(error_d.Result!(ulong, kernels.DomainError).Result)+0x1f>	1b: R_X86_64_PLT32	_D4core8lifetime__T15moveEmplaceImplTS3std7sumtype__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTmZQlTSQBk__T7FailureTS7kernels11DomainErrorZQBgZQDkZQEwFNaNbNiNfMKQEsNkMKQEzZv-0x4
  1f:	31 c0                	xor    %eax,%eax
  21:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
  25:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
  29:	48 8b f3             	mov    %rbx,%rsi
  2c:	48 8d 7d e0          	lea    -0x20(%rbp),%rdi
  30:	e8 00 00 00 00       	call   35 <error_d.Result!(ulong, kernels.DomainError).Result.opAssign(error_d.Result!(ulong, kernels.DomainError).Result)+0x35>	31: R_X86_64_PLT32	_D4core8lifetime__T8moveImplTS3std7sumtype__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTmZQlTSQBk__T7FailureTS7kernels11DomainErrorZQBgZQDkZQEoFNaNbNiNfMKQEsNkMKQEzZv-0x4
  35:	48 8b f3             	mov    %rbx,%rsi
  38:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
  3c:	e8 00 00 00 00       	call   41 <error_d.Result!(ulong, kernels.DomainError).Result.opAssign(error_d.Result!(ulong, kernels.DomainError).Result)+0x41>	3d: R_X86_64_PLT32	_D4core8lifetime__T8moveImplTS3std7sumtype__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTmZQlTSQBk__T7FailureTS7kernels11DomainErrorZQBgZQDkZQEoFNaNbNiNfMKQEsNkMKQEzZv-0x4
  41:	48 8b 5d c8          	mov    -0x38(%rbp),%rbx
  45:	48 8b e5             	mov    %rbp,%rsp
  48:	5d                   	pop    %rbp
  49:	c3                   	ret
	...

Disassembly of section .text._D7error_d__T6ResultTmTS7kernels11DomainErrorZQBh7replaceMFNaNbNiNeKS3std7sumtype__T7SumTypeTSQDo5EmptyTSQDz__T7SuccessTmZQlTSQEu__T7FailureTQEoZQnZQCmZv:

0000000000000000 <error_d.Result!(ulong, kernels.DomainError).Result.replace(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)>:
   0:	55                   	push   %rbp
   1:	48 8b ec             	mov    %rsp,%rbp
   4:	48 83 ec 40          	sub    $0x40,%rsp
   8:	48 89 5d c8          	mov    %rbx,-0x38(%rbp)
   c:	48 89 75 f8          	mov    %rsi,-0x8(%rbp)
  10:	48 89 fb             	mov    %rdi,%rbx
  13:	48 8d 75 d0          	lea    -0x30(%rbp),%rsi
  17:	48 8b fb             	mov    %rbx,%rdi
  1a:	e8 00 00 00 00       	call   1f <error_d.Result!(ulong, kernels.DomainError).Result.replace(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)+0x1f>	1b: R_X86_64_PLT32	_D4core8lifetime__T15moveEmplaceImplTS3std7sumtype__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTmZQlTSQBk__T7FailureTS7kernels11DomainErrorZQBgZQDkZQEwFNaNbNiNfMKQEsNkMKQEzZv-0x4
  1f:	31 c0                	xor    %eax,%eax
  21:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
  25:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
  29:	48 8b f3             	mov    %rbx,%rsi
  2c:	48 8d 7d e0          	lea    -0x20(%rbp),%rdi
  30:	e8 00 00 00 00       	call   35 <error_d.Result!(ulong, kernels.DomainError).Result.replace(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)+0x35>	31: R_X86_64_PLT32	_D4core8lifetime__T8moveImplTS3std7sumtype__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTmZQlTSQBk__T7FailureTS7kernels11DomainErrorZQBgZQDkZQEoFNaNbNiNfMKQEsNkMKQEzZv-0x4
  35:	48 8b f3             	mov    %rbx,%rsi
  38:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
  3c:	e8 00 00 00 00       	call   41 <error_d.Result!(ulong, kernels.DomainError).Result.replace(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)+0x41>	3d: R_X86_64_PLT32	_D4core8lifetime__T8moveImplTS3std7sumtype__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTmZQlTSQBk__T7FailureTS7kernels11DomainErrorZQBgZQDkZQEoFNaNbNiNfMKQEsNkMKQEzZv-0x4
  41:	48 8b 5d c8          	mov    -0x38(%rbp),%rbx
  45:	48 8b e5             	mov    %rbp,%rsp
  48:	5d                   	pop    %rbp
  49:	c3                   	ret
	...

Disassembly of section .text._D7error_d__T6ResultTmTS7kernels11DomainErrorZQBh11takeStorageMFNaNbNiNeZS3std7sumtype__T7SumTypeTSQDt5EmptyTSQEe__T7SuccessTmZQlTSQEz__T7FailureTQEtZQnZQCm:

0000000000000000 <error_d.Result!(ulong, kernels.DomainError).Result.takeStorage()>:
   0:	55                   	push   %rbp
   1:	48 8b ec             	mov    %rsp,%rbp
   4:	48 83 ec 50          	sub    $0x50,%rsp
   8:	48 89 7d f0          	mov    %rdi,-0x10(%rbp)
   c:	48 89 75 f8          	mov    %rsi,-0x8(%rbp)
  10:	48 8d 75 c0          	lea    -0x40(%rbp),%rsi
  14:	48 8b 7d f0          	mov    -0x10(%rbp),%rdi
  18:	e8 00 00 00 00       	call   1d <error_d.Result!(ulong, kernels.DomainError).Result.takeStorage()+0x1d>	19: R_X86_64_PLT32	_D4core8lifetime__T15moveEmplaceImplTS3std7sumtype__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTmZQlTSQBk__T7FailureTS7kernels11DomainErrorZQBgZQDkZQEwFNaNbNiNfMKQEsNkMKQEzZv-0x4
  1d:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
  21:	48 89 45 b0          	mov    %rax,-0x50(%rbp)
  25:	48 8b 4d c8          	mov    -0x38(%rbp),%rcx
  29:	48 89 4d b8          	mov    %rcx,-0x48(%rbp)
  2d:	31 d2                	xor    %edx,%edx
  2f:	48 89 55 d0          	mov    %rdx,-0x30(%rbp)
  33:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
  37:	48 8b 75 f0          	mov    -0x10(%rbp),%rsi
  3b:	48 8d 7d d0          	lea    -0x30(%rbp),%rdi
  3f:	e8 00 00 00 00       	call   44 <error_d.Result!(ulong, kernels.DomainError).Result.takeStorage()+0x44>	40: R_X86_64_PLT32	_D4core8lifetime__T8moveImplTS3std7sumtype__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTmZQlTSQBk__T7FailureTS7kernels11DomainErrorZQBgZQDkZQEoFNaNbNiNfMKQEsNkMKQEzZv-0x4
  44:	48 8d 75 e0          	lea    -0x20(%rbp),%rsi
  48:	48 8d 7d b0          	lea    -0x50(%rbp),%rdi
  4c:	e8 00 00 00 00       	call   51 <error_d.Result!(ulong, kernels.DomainError).Result.takeStorage()+0x51>	4d: R_X86_64_PLT32	_D4core8lifetime__T15moveEmplaceImplTS3std7sumtype__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTmZQlTSQBk__T7FailureTS7kernels11DomainErrorZQBgZQDkZQEwFNaNbNiNfMKQEsNkMKQEzZv-0x4
  51:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  55:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
  59:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
  5d:	48 89 02             	mov    %rax,(%rdx)
  60:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
  64:	48 89 d0             	mov    %rdx,%rax
  67:	48 8b e5             	mov    %rbp,%rsp
  6a:	5d                   	pop    %rbp
  6b:	c3                   	ret

Disassembly of section .text._D7error_d__T6ResultTmTS7kernels11DomainErrorZQBh11__xopEqualsMxFKxSQCo__TQCjTmTQCfZQCtZb:

0000000000000000 <error_d.Result!(ulong, kernels.DomainError).Result.__xopEquals(ref const(error_d.Result!(ulong, kernels.DomainError).Result)) const>:
   0:	55                   	push   %rbp
   1:	48 8b ec             	mov    %rsp,%rbp
   4:	48 83 ec 10          	sub    $0x10,%rsp
   8:	48 89 7d f0          	mov    %rdi,-0x10(%rbp)
   c:	48 89 75 f8          	mov    %rsi,-0x8(%rbp)
  10:	48 8b 75 f8          	mov    -0x8(%rbp),%rsi
  14:	48 8b 7d f0          	mov    -0x10(%rbp),%rdi
  18:	e8 00 00 00 00       	call   1d <error_d.Result!(ulong, kernels.DomainError).Result.__xopEquals(ref const(error_d.Result!(ulong, kernels.DomainError).Result)) const+0x1d>	19: R_X86_64_PLT32	std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opEquals!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType), const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).opEquals(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)) const-0x4
  1d:	48 8b e5             	mov    %rbp,%rsp
  20:	5d                   	pop    %rbp
  21:	c3                   	ret
	...

Disassembly of section .text._D7error_d__T6ResultTmTS7kernels11DomainErrorZQBh9__xtoHashFNbNeKxSQCn__TQCiTmTQCeZQCsZm:

0000000000000000 <error_d.Result!(ulong, kernels.DomainError).Result.__xtoHash(ref const(error_d.Result!(ulong, kernels.DomainError).Result))>:
   0:	55                   	push   %rbp
   1:	48 8b ec             	mov    %rsp,%rbp
   4:	48 83 ec 10          	sub    $0x10,%rsp
   8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
   c:	48 8b 75 f8          	mov    -0x8(%rbp),%rsi
  10:	48 8b 3d 00 00 00 00 	mov    0x0(%rip),%rdi        # 17 <error_d.Result!(ulong, kernels.DomainError).Result.__xtoHash(ref const(error_d.Result!(ulong, kernels.DomainError).Result))+0x17>	13: R_X86_64_GOTPCREL	initializer for TypeInfo_xS3std7sumtype__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTmZQlTSQBk__T7FailureTS7kernels11DomainErrorZQBgZQDk-0x4
  17:	48 8b 07             	mov    (%rdi),%rax
  1a:	48 ff 50 30          	rex.W call *0x30(%rax)
  1e:	48 8b e5             	mov    %rbp,%rsp
  21:	5d                   	pop    %rbp
  22:	c3                   	ret
	...

Disassembly of section .text._D3std7sumtype__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTmZQlTSQBk__T7FailureTS7kernels11DomainErrorZQBgZQDk6__ctorMFNaNbNcNiNfQDxZSQFaQEz__TQEuTQEpTQEdTQDnZQFk:

0000000000000000 <std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.this(error_d.Empty)>:
   0:	55                   	push   %rbp
   1:	48 8b ec             	mov    %rsp,%rbp
   4:	48 83 ec 10          	sub    $0x10,%rsp
   8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
   c:	48 8d 75 f0          	lea    -0x10(%rbp),%rsi
  10:	48 8d 7d 10          	lea    0x10(%rbp),%rdi
  14:	e8 00 00 00 00       	call   19 <std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.this(error_d.Empty)+0x19>	15: R_X86_64_PLT32	_D4core8lifetime__T15moveEmplaceImplTS7error_d5EmptyZQBiFNaNbNiNfMKQBeNkMKQBlZv-0x4
  19:	8a 45 f0             	mov    -0x10(%rbp),%al
  1c:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
  20:	88 01                	mov    %al,(%rcx)
  22:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
  26:	c6 47 08 00          	movb   $0x0,0x8(%rdi)
  2a:	48 89 c8             	mov    %rcx,%rax
  2d:	48 8b e5             	mov    %rbp,%rsp
  30:	5d                   	pop    %rbp
  31:	c3                   	ret
	...

Disassembly of section .text._D3std7sumtype__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTmZQlTSQBk__T7FailureTS7kernels11DomainErrorZQBgZQDk6__ctorMxFNaNbNcNiNfxSQDzQDuZxSQFhQFg__TQFbTQEwTQEkTQDuZQFr:

0000000000000000 <std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.this(const(error_d.Empty)) const>:
   0:	8a 44 24 08          	mov    0x8(%rsp),%al
   4:	88 07                	mov    %al,(%rdi)
   6:	c6 47 08 00          	movb   $0x0,0x8(%rdi)
   a:	48 8b c7             	mov    %rdi,%rax
   d:	c3                   	ret
	...

Disassembly of section .text._D3std7sumtype__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTmZQlTSQBk__T7FailureTS7kernels11DomainErrorZQBgZQDk6__ctorMyFNaNbNcNiNfySQDzQDuZySQFhQFg__TQFbTQEwTQEkTQDuZQFr:

0000000000000000 <std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.this(immutable(error_d.Empty)) immutable>:
   0:	8a 44 24 08          	mov    0x8(%rsp),%al
   4:	88 07                	mov    %al,(%rdi)
   6:	c6 47 08 00          	movb   $0x0,0x8(%rdi)
   a:	48 8b c7             	mov    %rdi,%rax
   d:	c3                   	ret
	...

Disassembly of section .text._D3std7sumtype__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTmZQlTSQBk__T7FailureTS7kernels11DomainErrorZQBgZQDk6__ctorMFNaNbNcNiNfQDhZSQFaQEz__TQEuTQEpTQEdTQDnZQFk:

0000000000000000 <std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.this(error_d.Success!(ulong).Success)>:
   0:	55                   	push   %rbp
   1:	48 8b ec             	mov    %rsp,%rbp
   4:	48 83 ec 20          	sub    $0x20,%rsp
   8:	48 89 7d f0          	mov    %rdi,-0x10(%rbp)
   c:	48 89 75 f8          	mov    %rsi,-0x8(%rbp)
  10:	48 8d 75 e8          	lea    -0x18(%rbp),%rsi
  14:	48 8d 7d f8          	lea    -0x8(%rbp),%rdi
  18:	e8 00 00 00 00       	call   1d <std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.this(error_d.Success!(ulong).Success)+0x1d>	19: R_X86_64_PLT32	_D4core8lifetime__T15moveEmplaceImplTS7error_d__T7SuccessTmZQlZQBsFNaNbNiNfMKQBoNkMKQBvZv-0x4
  1d:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  21:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  25:	48 89 01             	mov    %rax,(%rcx)
  28:	48 8b 7d f0          	mov    -0x10(%rbp),%rdi
  2c:	c6 47 08 01          	movb   $0x1,0x8(%rdi)
  30:	48 89 c8             	mov    %rcx,%rax
  33:	48 8b e5             	mov    %rbp,%rsp
  36:	5d                   	pop    %rbp
  37:	c3                   	ret

Disassembly of section .text._D3std7sumtype__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTmZQlTSQBk__T7FailureTS7kernels11DomainErrorZQBgZQDk6__ctorMxFNaNbNcNiNfxSQDz__TQDkTmZQDqZxSQFqQFp__TQFkTQFfTQEtTQEdZQGa:

0000000000000000 <std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.this(const(error_d.Success!(ulong).Success)) const>:
   0:	48 89 f8             	mov    %rdi,%rax
   3:	48 89 30             	mov    %rsi,(%rax)
   6:	c6 40 08 01          	movb   $0x1,0x8(%rax)
   a:	c3                   	ret
	...

Disassembly of section .text._D3std7sumtype__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTmZQlTSQBk__T7FailureTS7kernels11DomainErrorZQBgZQDk6__ctorMyFNaNbNcNiNfySQDz__TQDkTmZQDqZySQFqQFp__TQFkTQFfTQEtTQEdZQGa:

0000000000000000 <std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.this(immutable(error_d.Success!(ulong).Success)) immutable>:
   0:	48 89 f8             	mov    %rdi,%rax
   3:	48 89 30             	mov    %rsi,(%rax)
   6:	c6 40 08 01          	movb   $0x1,0x8(%rax)
   a:	c3                   	ret
	...

Disassembly of section .text._D3std7sumtype__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTmZQlTSQBk__T7FailureTS7kernels11DomainErrorZQBgZQDk6__ctorMFNaNbNcNiNfQCnZSQFaQEz__TQEuTQEpTQEdTQDnZQFk:

0000000000000000 <std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.this(error_d.Failure!(kernels.DomainError).Failure)>:
   0:	55                   	push   %rbp
   1:	48 8b ec             	mov    %rsp,%rbp
   4:	48 83 ec 20          	sub    $0x20,%rsp
   8:	48 89 7d f0          	mov    %rdi,-0x10(%rbp)
   c:	48 89 75 f8          	mov    %rsi,-0x8(%rbp)
  10:	48 8d 75 e8          	lea    -0x18(%rbp),%rsi
  14:	48 8d 7d f8          	lea    -0x8(%rbp),%rdi
  18:	e8 00 00 00 00       	call   1d <std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.this(error_d.Failure!(kernels.DomainError).Failure)+0x1d>	19: R_X86_64_PLT32	_D4core8lifetime__T15moveEmplaceImplTS7error_d__T7FailureTS7kernels11DomainErrorZQBgZQCoFNaNbNiNfMKQCkNkMKQCrZv-0x4
  1d:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  21:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  25:	48 89 01             	mov    %rax,(%rcx)
  28:	48 8b 7d f0          	mov    -0x10(%rbp),%rdi
  2c:	c6 47 08 02          	movb   $0x2,0x8(%rdi)
  30:	48 89 c8             	mov    %rcx,%rax
  33:	48 8b e5             	mov    %rbp,%rsp
  36:	5d                   	pop    %rbp
  37:	c3                   	ret

Disassembly of section .text._D3std7sumtype__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTmZQlTSQBk__T7FailureTS7kernels11DomainErrorZQBgZQDk6__ctorMxFNaNbNcNiNfxSQDz__TQCpTQCkZQCxZxSQFsQFr__TQFmTQFhTQEvTQEfZQGc:

0000000000000000 <std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.this(const(error_d.Failure!(kernels.DomainError).Failure)) const>:
   0:	48 89 f8             	mov    %rdi,%rax
   3:	48 89 30             	mov    %rsi,(%rax)
   6:	c6 40 08 02          	movb   $0x2,0x8(%rax)
   a:	c3                   	ret
	...

Disassembly of section .text._D3std7sumtype__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTmZQlTSQBk__T7FailureTS7kernels11DomainErrorZQBgZQDk6__ctorMyFNaNbNcNiNfySQDz__TQCpTQCkZQCxZySQFsQFr__TQFmTQFhTQEvTQEfZQGc:

0000000000000000 <std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.this(immutable(error_d.Failure!(kernels.DomainError).Failure)) immutable>:
   0:	48 89 f8             	mov    %rdi,%rax
   3:	48 89 30             	mov    %rsi,(%rax)
   6:	c6 40 08 02          	movb   $0x2,0x8(%rax)
   a:	c3                   	ret
	...

Disassembly of section .text._D3std7sumtype__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTmZQlTSQBk__T7FailureTS7kernels11DomainErrorZQBgZQDk8opAssignMFNaNbNcNiNfQDzZSQFcQFb__TQEwTQErTQEfTQDpZQFm:

0000000000000000 <std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(error_d.Empty)>:
   0:	55                   	push   %rbp
   1:	48 8b ec             	mov    %rsp,%rbp
   4:	48 83 ec 20          	sub    $0x20,%rsp
   8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
   c:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
  10:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  14:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
  18:	e8 00 00 00 00       	call   1d <std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(error_d.Empty)+0x1d>	19: R_X86_64_PLT32	std.sumtype.matchImpl!(1, std.sumtype.destroyIfOwner).matchImpl!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).matchImpl(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)-0x4
  1d:	31 c0                	xor    %eax,%eax
  1f:	89 45 e8             	mov    %eax,-0x18(%rbp)
  22:	89 45 ec             	mov    %eax,-0x14(%rbp)
  25:	48 8d 75 f0          	lea    -0x10(%rbp),%rsi
  29:	48 8d 7d 10          	lea    0x10(%rbp),%rdi
  2d:	e8 00 00 00 00       	call   32 <std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(error_d.Empty)+0x32>	2e: R_X86_64_PLT32	_D4core8lifetime__T15moveEmplaceImplTS7error_d5EmptyZQBiFNaNbNiNfMKQBeNkMKQBlZv-0x4
  32:	8a 4d f0             	mov    -0x10(%rbp),%cl
  35:	88 4d e8             	mov    %cl,-0x18(%rbp)
  38:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
  3c:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
  40:	48 89 17             	mov    %rdx,(%rdi)
  43:	c6 47 08 00          	movb   $0x0,0x8(%rdi)
  47:	48 8b c7             	mov    %rdi,%rax
  4a:	48 8b e5             	mov    %rbp,%rsp
  4d:	5d                   	pop    %rbp
  4e:	c3                   	ret
	...

Disassembly of section .text._D3std7sumtype__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTmZQlTSQBk__T7FailureTS7kernels11DomainErrorZQBgZQDk8opAssignMFNaNbNcNiNfQDjZSQFcQFb__TQEwTQErTQEfTQDpZQFm:

0000000000000000 <std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(error_d.Success!(ulong).Success)>:
   0:	55                   	push   %rbp
   1:	48 8b ec             	mov    %rsp,%rbp
   4:	48 83 ec 20          	sub    $0x20,%rsp
   8:	48 89 7d f0          	mov    %rdi,-0x10(%rbp)
   c:	48 89 75 f8          	mov    %rsi,-0x8(%rbp)
  10:	48 8b 7d f0          	mov    -0x10(%rbp),%rdi
  14:	48 89 7d f0          	mov    %rdi,-0x10(%rbp)
  18:	48 8b 7d f0          	mov    -0x10(%rbp),%rdi
  1c:	e8 00 00 00 00       	call   21 <std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(error_d.Success!(ulong).Success)+0x21>	1d: R_X86_64_PLT32	std.sumtype.matchImpl!(1, std.sumtype.destroyIfOwner).matchImpl!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).matchImpl(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)-0x4
  21:	48 8d 75 e8          	lea    -0x18(%rbp),%rsi
  25:	48 8d 7d f8          	lea    -0x8(%rbp),%rdi
  29:	e8 00 00 00 00       	call   2e <std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(error_d.Success!(ulong).Success)+0x2e>	2a: R_X86_64_PLT32	_D4core8lifetime__T15moveEmplaceImplTS7error_d__T7SuccessTmZQlZQBsFNaNbNiNfMKQBoNkMKQBvZv-0x4
  2e:	48 8b 7d f0          	mov    -0x10(%rbp),%rdi
  32:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  36:	48 89 07             	mov    %rax,(%rdi)
  39:	c6 47 08 01          	movb   $0x1,0x8(%rdi)
  3d:	48 8b c7             	mov    %rdi,%rax
  40:	48 8b e5             	mov    %rbp,%rsp
  43:	5d                   	pop    %rbp
  44:	c3                   	ret
  45:	00 00                	add    %al,(%rax)
	...

Disassembly of section .text._D3std7sumtype__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTmZQlTSQBk__T7FailureTS7kernels11DomainErrorZQBgZQDk8opAssignMFNaNbNcNiNfQCpZSQFcQFb__TQEwTQErTQEfTQDpZQFm:

0000000000000000 <std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(error_d.Failure!(kernels.DomainError).Failure)>:
   0:	55                   	push   %rbp
   1:	48 8b ec             	mov    %rsp,%rbp
   4:	48 83 ec 20          	sub    $0x20,%rsp
   8:	48 89 7d f0          	mov    %rdi,-0x10(%rbp)
   c:	48 89 75 f8          	mov    %rsi,-0x8(%rbp)
  10:	48 8b 7d f0          	mov    -0x10(%rbp),%rdi
  14:	48 89 7d f0          	mov    %rdi,-0x10(%rbp)
  18:	48 8b 7d f0          	mov    -0x10(%rbp),%rdi
  1c:	e8 00 00 00 00       	call   21 <std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(error_d.Failure!(kernels.DomainError).Failure)+0x21>	1d: R_X86_64_PLT32	std.sumtype.matchImpl!(1, std.sumtype.destroyIfOwner).matchImpl!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).matchImpl(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)-0x4
  21:	48 8d 75 e8          	lea    -0x18(%rbp),%rsi
  25:	48 8d 7d f8          	lea    -0x8(%rbp),%rdi
  29:	e8 00 00 00 00       	call   2e <std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(error_d.Failure!(kernels.DomainError).Failure)+0x2e>	2a: R_X86_64_PLT32	_D4core8lifetime__T15moveEmplaceImplTS7error_d__T7FailureTS7kernels11DomainErrorZQBgZQCoFNaNbNiNfMKQCkNkMKQCrZv-0x4
  2e:	48 8b 7d f0          	mov    -0x10(%rbp),%rdi
  32:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  36:	48 89 07             	mov    %rax,(%rdi)
  39:	c6 47 08 02          	movb   $0x2,0x8(%rdi)
  3d:	48 8b c7             	mov    %rdi,%rax
  40:	48 8b e5             	mov    %rbp,%rsp
  43:	5d                   	pop    %rbp
  44:	c3                   	ret
  45:	00 00                	add    %al,(%rax)
	...

Disassembly of section .text._D3std7sumtype__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTmZQlTSQBk__T7FailureTS7kernels11DomainErrorZQBgZQDk8opAssignMFNaNbNcNiNfKSQEzQEy__TQEtTQEoTQEcTQDmZQFjZQBe:

0000000000000000 <std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)>:
   0:	55                   	push   %rbp
   1:	48 8b ec             	mov    %rsp,%rbp
   4:	48 83 ec 10          	sub    $0x10,%rsp
   8:	48 89 7d f0          	mov    %rdi,-0x10(%rbp)
   c:	48 89 75 f8          	mov    %rsi,-0x8(%rbp)
  10:	48 8b 75 f8          	mov    -0x8(%rbp),%rsi
  14:	48 8d 7d f0          	lea    -0x10(%rbp),%rdi
  18:	e8 00 00 00 00       	call   1d <std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)+0x1d>	19: R_X86_64_PLT32	std.sumtype.match!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).__lambda_L679_C28).match!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).match(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)-0x4
  1d:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  21:	48 8b e5             	mov    %rbp,%rsp
  24:	5d                   	pop    %rbp
  25:	c3                   	ret
	...

Disassembly of section .text._D3std7sumtype__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTmZQlTSQBk__T7FailureTS7kernels11DomainErrorZQBgZQDk8opAssignMFNaNbNcNiNfSQEyQEx__TQEsTQEnTQEbTQDlZQFiZQBe:

0000000000000000 <std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)>:
   0:	55                   	push   %rbp
   1:	48 8b ec             	mov    %rsp,%rbp
   4:	48 83 ec 10          	sub    $0x10,%rsp
   8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
   c:	48 8d 75 10          	lea    0x10(%rbp),%rsi
  10:	48 8d 7d f8          	lea    -0x8(%rbp),%rdi
  14:	e8 00 00 00 00       	call   19 <std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)+0x19>	15: R_X86_64_PLT32	std.sumtype.match!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).__lambda_L697_C24).match!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).match(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)-0x4
  19:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  1d:	48 8b e5             	mov    %rbp,%rsp
  20:	5d                   	pop    %rbp
  21:	c3                   	ret
	...

Disassembly of section .text._D3std7sumtype__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTmZQlTSQBk__T7FailureTS7kernels11DomainErrorZQBgZQDk6toHashMxFNaNbNiNfZm:

0000000000000000 <std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.toHash() const>:
   0:	55                   	push   %rbp
   1:	48 8b ec             	mov    %rsp,%rbp
   4:	48 83 ec 10          	sub    $0x10,%rsp
   8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
   c:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
  10:	e8 00 00 00 00       	call   15 <std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.toHash() const+0x15>	11: R_X86_64_PLT32	std.sumtype.matchImpl!(1, core.internal.hash.hashOf).matchImpl!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).matchImpl(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType))-0x4
  15:	48 8b e5             	mov    %rbp,%rsp
  18:	5d                   	pop    %rbp
  19:	c3                   	ret
	...

Disassembly of section .text._D3std7sumtype__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTmZQlTSQBk__T7FailureTS7kernels11DomainErrorZQBgZQDk11__xopEqualsMxFKxSQEvQEu__TQEpTQEkTQDyTQDiZQFfZb:

0000000000000000 <std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.__xopEquals(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)) const>:
   0:	55                   	push   %rbp
   1:	48 8b ec             	mov    %rsp,%rbp
   4:	48 83 ec 10          	sub    $0x10,%rsp
   8:	48 89 7d f0          	mov    %rdi,-0x10(%rbp)
   c:	48 89 75 f8          	mov    %rsi,-0x8(%rbp)
  10:	48 8b 75 f8          	mov    -0x8(%rbp),%rsi
  14:	48 8b 7d f0          	mov    -0x10(%rbp),%rdi
  18:	e8 00 00 00 00       	call   1d <std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.__xopEquals(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)) const+0x1d>	19: R_X86_64_PLT32	std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opEquals!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType), const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).opEquals(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)) const-0x4
  1d:	48 8b e5             	mov    %rbp,%rsp
  20:	5d                   	pop    %rbp
  21:	c3                   	ret
	...

Disassembly of section .text._D4core8internal4hash__T6hashOfTmZQkFNaNbNiNeMxmmZm:

0000000000000000 <core.internal.hash.hashOf!(ulong).hashOf(scope const(ulong), ulong)>:
   0:	53                   	push   %rbx
   1:	49 89 f0             	mov    %rsi,%r8
   4:	49 8b c0             	mov    %r8,%rax
   7:	48 b9 d5 53 42 11 91 7b c3 87 	movabs $0x87c37b91114253d5,%rcx
  11:	48 f7 e1             	mul    %rcx
  14:	48 89 c6             	mov    %rax,%rsi
  17:	48 8b d6             	mov    %rsi,%rdx
  1a:	48 c1 c2 1f          	rol    $0x1f,%rdx
  1e:	48 89 d6             	mov    %rdx,%rsi
  21:	48 89 d0             	mov    %rdx,%rax
  24:	49 b8 7f 93 45 27 43 ad f5 4c 	movabs $0x4cf5ad432745937f,%r8
  2e:	49 f7 e0             	mul    %r8
  31:	48 89 c6             	mov    %rax,%rsi
  34:	48 33 f7             	xor    %rdi,%rsi
  37:	48 8b de             	mov    %rsi,%rbx
  3a:	48 c1 c3 1b          	rol    $0x1b,%rbx
  3e:	48 89 de             	mov    %rbx,%rsi
  41:	48 8d 84 b6 29 e7 dc 52 	lea    0x52dce729(%rsi,%rsi,4),%rax
  49:	5b                   	pop    %rbx
  4a:	c3                   	ret
	...

Disassembly of section .text._D4core8internal7convert__T7toUbyteTS7kernels11DomainErrorZQBgFNaNbNiNeMNkKxSQBoQBjZAxh:

0000000000000000 <core.internal.convert.toUbyte!(kernels.DomainError).toUbyte(scope return ref const(kernels.DomainError))>:
   0:	50                   	push   %rax
   1:	48 89 3c 24          	mov    %rdi,(%rsp)
   5:	48 89 fa             	mov    %rdi,%rdx
   8:	b8 08 00 00 00       	mov    $0x8,%eax
   d:	59                   	pop    %rcx
   e:	c3                   	ret
	...

Disassembly of section .text._D4core8internal7convert__T7toUbyteTkZQlFNaNbNiNeMKxkZAxh:

0000000000000000 <core.internal.convert.toUbyte!(uint).toUbyte(scope ref const(uint))>:
   0:	48 8b d7             	mov    %rdi,%rdx
   3:	b8 04 00 00 00       	mov    $0x4,%eax
   8:	c3                   	ret
   9:	00 00                	add    %al,(%rax)
	...

Disassembly of section .text._D4core8internal4hash__T3fnvZQfFNaNbNiNfMAxhmZm:

0000000000000000 <core.internal.hash.fnv!().fnv(scope const(ubyte)[], ulong)>:
   0:	49 89 f8             	mov    %rdi,%r8
   3:	49 89 f3             	mov    %rsi,%r11
   6:	49 89 d1             	mov    %rdx,%r9
   9:	31 f6                	xor    %esi,%esi
   b:	4d 85 db             	test   %r11,%r11
   e:	74 25                	je     35 <core.internal.hash.fnv!().fnv(scope const(ubyte)[], ulong)+0x35>
  10:	42 0f b6 3c 0e       	movzbl (%rsi,%r9,1),%edi
  15:	31 c0                	xor    %eax,%eax
  17:	40 8a c7             	mov    %dil,%al
  1a:	49 33 c0             	xor    %r8,%rax
  1d:	48 b9 b3 01 00 00 00 01 00 00 	movabs $0x100000001b3,%rcx
  27:	48 f7 e1             	mul    %rcx
  2a:	49 89 c0             	mov    %rax,%r8
  2d:	48 ff c6             	inc    %rsi
  30:	4c 39 de             	cmp    %r11,%rsi
  33:	72 db                	jb     10 <core.internal.hash.fnv!().fnv(scope const(ubyte)[], ulong)+0x10>
  35:	49 8b c0             	mov    %r8,%rax
  38:	c3                   	ret
  39:	00 00                	add    %al,(%rax)
	...

Disassembly of section .text._D4core8lifetime__T4moveTS7kernels5BlockZQwFNaNbNiNfNkMKQBfZQBj:

0000000000000000 <_D4core8lifetime__T4moveTS7kernels5BlockZQwFNaNbNiNfNkMKQBfZQBj>:
   0:	55                   	push   %rbp
   1:	48 8b ec             	mov    %rsp,%rbp
   4:	48 81 ec 10 01 00 00 	sub    $0x110,%rsp
   b:	48 89 7d f0          	mov    %rdi,-0x10(%rbp)
   f:	48 89 75 f8          	mov    %rsi,-0x8(%rbp)
  13:	48 8d b5 f0 fe ff ff 	lea    -0x110(%rbp),%rsi
  1a:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
  1e:	e8 00 00 00 00       	call   23 <_D4core8lifetime__T4moveTS7kernels5BlockZQwFNaNbNiNfNkMKQBfZQBj+0x23>	1f: R_X86_64_PLT32	_D4core8lifetime__T15moveEmplaceImplTS7kernels5BlockZQBiFNaNbNiNfMKQBeNkMKQBlZv-0x4
  23:	48 8d b5 f0 fe ff ff 	lea    -0x110(%rbp),%rsi
  2a:	48 8b 7d f0          	mov    -0x10(%rbp),%rdi
  2e:	b9 20 00 00 00       	mov    $0x20,%ecx
  33:	f3 48 a5             	rep movsq (%rsi),(%rdi)
  36:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  3a:	48 8b e5             	mov    %rbp,%rsp
  3d:	5d                   	pop    %rbp
  3e:	c3                   	ret
	...

Disassembly of section .text._D4core8lifetime__T8moveImplTS7kernels5BlockZQBaFNaNbNiNfNkMKQBgZQBk:

0000000000000000 <_D4core8lifetime__T8moveImplTS7kernels5BlockZQBaFNaNbNiNfNkMKQBgZQBk>:
   0:	55                   	push   %rbp
   1:	48 8b ec             	mov    %rsp,%rbp
   4:	48 81 ec 10 01 00 00 	sub    $0x110,%rsp
   b:	48 89 7d f0          	mov    %rdi,-0x10(%rbp)
   f:	48 89 75 f8          	mov    %rsi,-0x8(%rbp)
  13:	48 8d b5 f0 fe ff ff 	lea    -0x110(%rbp),%rsi
  1a:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
  1e:	e8 00 00 00 00       	call   23 <_D4core8lifetime__T8moveImplTS7kernels5BlockZQBaFNaNbNiNfNkMKQBgZQBk+0x23>	1f: R_X86_64_PLT32	_D4core8lifetime__T15moveEmplaceImplTS7kernels5BlockZQBiFNaNbNiNfMKQBeNkMKQBlZv-0x4
  23:	48 8d b5 f0 fe ff ff 	lea    -0x110(%rbp),%rsi
  2a:	48 8b 7d f0          	mov    -0x10(%rbp),%rdi
  2e:	b9 20 00 00 00       	mov    $0x20,%ecx
  33:	f3 48 a5             	rep movsq (%rsi),(%rdi)
  36:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  3a:	48 8b e5             	mov    %rbp,%rsp
  3d:	5d                   	pop    %rbp
  3e:	c3                   	ret
	...

Disassembly of section .text._D4core8lifetime__T15moveEmplaceImplTS7kernels5BlockZQBiFNaNbNiNfMKQBeNkMKQBlZv:

0000000000000000 <_D4core8lifetime__T15moveEmplaceImplTS7kernels5BlockZQBiFNaNbNiNfMKQBeNkMKQBlZv>:
   0:	48 83 ec 18          	sub    $0x18,%rsp
   4:	48 89 7c 24 08       	mov    %rdi,0x8(%rsp)
   9:	48 89 74 24 10       	mov    %rsi,0x10(%rsp)
   e:	48 89 fe             	mov    %rdi,%rsi
  11:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
  16:	b9 20 00 00 00       	mov    $0x20,%ecx
  1b:	f3 48 a5             	rep movsq (%rsi),(%rdi)
  1e:	48 83 c4 18          	add    $0x18,%rsp
  22:	c3                   	ret
	...

Disassembly of section .text._D4core8lifetime__T15trustedMoveImplTS7kernels5BlockZQBiFNaNbNiNeNkMKQBgZQBk:

0000000000000000 <_D4core8lifetime__T15trustedMoveImplTS7kernels5BlockZQBiFNaNbNiNeNkMKQBgZQBk>:
   0:	55                   	push   %rbp
   1:	48 8b ec             	mov    %rsp,%rbp
   4:	48 83 ec 10          	sub    $0x10,%rsp
   8:	48 89 7d f0          	mov    %rdi,-0x10(%rbp)
   c:	48 89 75 f8          	mov    %rsi,-0x8(%rbp)
  10:	48 8b 75 f0          	mov    -0x10(%rbp),%rsi
  14:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
  18:	e8 00 00 00 00       	call   1d <_D4core8lifetime__T15trustedMoveImplTS7kernels5BlockZQBiFNaNbNiNeNkMKQBgZQBk+0x1d>	19: R_X86_64_PLT32	_D4core8lifetime__T15moveEmplaceImplTS7kernels5BlockZQBiFNaNbNiNfMKQBeNkMKQBlZv-0x4
  1d:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  21:	48 8b e5             	mov    %rbp,%rsp
  24:	5d                   	pop    %rbp
  25:	c3                   	ret
	...

Disassembly of section .text._D7error_d__T6ResultTS7kernels5BlockTSQq11DomainErrorZQBp11requireLiveMxFNaNbNiNfZv:

0000000000000000 <error_d.Result!(kernels.Block, kernels.DomainError).Result.requireLive() const>:
   0:	c3                   	ret
   1:	00 00                	add    %al,(%rax)
	...

Disassembly of section .text._D7error_d__T6ResultTS7kernels5BlockTSQq11DomainErrorZQBp6__ctorMFNaNbNcNiNfKSQCy__TQCtTQCpTQCdZQDfZQx:

0000000000000000 <error_d.Result!(kernels.Block, kernels.DomainError).Result.this(ref error_d.Result!(kernels.Block, kernels.DomainError).Result)>:
   0:	55                   	push   %rbp
   1:	48 8b ec             	mov    %rsp,%rbp
   4:	48 83 ec 10          	sub    $0x10,%rsp
   8:	48 89 7d f0          	mov    %rdi,-0x10(%rbp)
   c:	48 89 75 f8          	mov    %rsi,-0x8(%rbp)
  10:	48 8b 75 f8          	mov    -0x8(%rbp),%rsi
  14:	48 8b 7d f0          	mov    -0x10(%rbp),%rdi
  18:	e8 00 00 00 00       	call   1d <error_d.Result!(kernels.Block, kernels.DomainError).Result.this(ref error_d.Result!(kernels.Block, kernels.DomainError).Result)+0x1d>	19: R_X86_64_PLT32	error_d.Result!(kernels.Block, kernels.DomainError).Result.copyStorage!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).copyStorage(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)-0x4
  1d:	48 8b 7d f0          	mov    -0x10(%rbp),%rdi
  21:	48 8b c7             	mov    %rdi,%rax
  24:	48 8b e5             	mov    %rbp,%rsp
  27:	5d                   	pop    %rbp
  28:	c3                   	ret
  29:	00 00                	add    %al,(%rax)
	...

Disassembly of section .text._D7error_d__T6ResultTS7kernels5BlockTSQq11DomainErrorZQBp6__ctorMxFNaNbNcNiNfKxSQDa__TQCvTQCrTQCfZQDhZxQy:

0000000000000000 <error_d.Result!(kernels.Block, kernels.DomainError).Result.this(ref const(error_d.Result!(kernels.Block, kernels.DomainError).Result)) const>:
   0:	55                   	push   %rbp
   1:	48 8b ec             	mov    %rsp,%rbp
   4:	48 83 ec 10          	sub    $0x10,%rsp
   8:	48 89 7d f0          	mov    %rdi,-0x10(%rbp)
   c:	48 89 75 f8          	mov    %rsi,-0x8(%rbp)
  10:	48 8b 75 f8          	mov    -0x8(%rbp),%rsi
  14:	48 8b 7d f0          	mov    -0x10(%rbp),%rdi
  18:	e8 00 00 00 00       	call   1d <error_d.Result!(kernels.Block, kernels.DomainError).Result.this(ref const(error_d.Result!(kernels.Block, kernels.DomainError).Result)) const+0x1d>	19: R_X86_64_PLT32	error_d.Result!(kernels.Block, kernels.DomainError).Result.copyStorage!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).copyStorage(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType))-0x4
  1d:	48 8b 7d f0          	mov    -0x10(%rbp),%rdi
  21:	48 8b c7             	mov    %rdi,%rax
  24:	48 8b e5             	mov    %rbp,%rsp
  27:	5d                   	pop    %rbp
  28:	c3                   	ret
  29:	00 00                	add    %al,(%rax)
	...

Disassembly of section .text._D7error_d__T6ResultTS7kernels5BlockTSQq11DomainErrorZQBp6__ctorMyFNaNbNcNiNfKySQDa__TQCvTQCrTQCfZQDhZyQy:

0000000000000000 <error_d.Result!(kernels.Block, kernels.DomainError).Result.this(ref immutable(error_d.Result!(kernels.Block, kernels.DomainError).Result)) immutable>:
   0:	55                   	push   %rbp
   1:	48 8b ec             	mov    %rsp,%rbp
   4:	48 83 ec 10          	sub    $0x10,%rsp
   8:	48 89 7d f0          	mov    %rdi,-0x10(%rbp)
   c:	48 89 75 f8          	mov    %rsi,-0x8(%rbp)
  10:	48 8b 75 f8          	mov    -0x8(%rbp),%rsi
  14:	48 8b 7d f0          	mov    -0x10(%rbp),%rdi
  18:	e8 00 00 00 00       	call   1d <error_d.Result!(kernels.Block, kernels.DomainError).Result.this(ref immutable(error_d.Result!(kernels.Block, kernels.DomainError).Result)) immutable+0x1d>	19: R_X86_64_PLT32	error_d.Result!(kernels.Block, kernels.DomainError).Result.copyStorage!(immutable(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).copyStorage(ref immutable(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType))-0x4
  1d:	48 8b 7d f0          	mov    -0x10(%rbp),%rdi
  21:	48 8b c7             	mov    %rdi,%rax
  24:	48 8b e5             	mov    %rbp,%rsp
  27:	5d                   	pop    %rbp
  28:	c3                   	ret
  29:	00 00                	add    %al,(%rax)
	...

Disassembly of section .text._D7error_d__T6ResultTS7kernels5BlockTSQq11DomainErrorZQBp6__ctorMFNaNbNcNiNfS3std7sumtype__T7SumTypeTSQDw5EmptyTSQEh__T7SuccessTQEdZQnTSQFe__T7FailureTQEkZQnZQCoZSQGf__TQGaTQFwTQFkZQGm:

0000000000000000 <error_d.Result!(kernels.Block, kernels.DomainError).Result.this(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)>:
   0:	55                   	push   %rbp
   1:	48 8b ec             	mov    %rsp,%rbp
   4:	48 81 ec 10 01 00 00 	sub    $0x110,%rsp
   b:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
   f:	48 8d b5 f0 fe ff ff 	lea    -0x110(%rbp),%rsi
  16:	48 8d 7d 10          	lea    0x10(%rbp),%rdi
  1a:	e8 00 00 00 00       	call   1f <error_d.Result!(kernels.Block, kernels.DomainError).Result.this(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)+0x1f>	1b: R_X86_64_PLT32	_D4core8lifetime__T15moveEmplaceImplTS3std7sumtype__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTS7kernels5BlockZQzTSQBy__T7FailureTSQBj11DomainErrorZQBbZQDtZQFfFNaNbNiNfMKQFbNkMKQFiZv-0x4
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

Disassembly of section .text._D7error_d__T6ResultTS7kernels5BlockTSQq11DomainErrorZQBp5stateMxFNaNbNiNfZEQCw11ResultState:

0000000000000000 <error_d.Result!(kernels.Block, kernels.DomainError).Result.state() const>:
   0:	55                   	push   %rbp
   1:	48 8b ec             	mov    %rsp,%rbp
   4:	48 83 ec 10          	sub    $0x10,%rsp
   8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
   c:	48 8b 75 f8          	mov    -0x8(%rbp),%rsi
  10:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
  14:	e8 00 00 00 00       	call   19 <error_d.Result!(kernels.Block, kernels.DomainError).Result.state() const+0x19>	15: R_X86_64_PLT32	std.sumtype.match!(error_d.Result!(kernels.Block, kernels.DomainError).Result.state().__lambda_L162_C31).match!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).match(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType))-0x4
  19:	48 8b e5             	mov    %rbp,%rsp
  1c:	5d                   	pop    %rbp
  1d:	c3                   	ret
	...

Disassembly of section .text._D7error_d__T6ResultTS7kernels5BlockTSQq11DomainErrorZQBp8hasValueMxFNaNbNiNfZb:

0000000000000000 <error_d.Result!(kernels.Block, kernels.DomainError).Result.hasValue() const>:
   0:	55                   	push   %rbp
   1:	48 8b ec             	mov    %rsp,%rbp
   4:	48 83 ec 10          	sub    $0x10,%rsp
   8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
   c:	48 8b 75 f8          	mov    -0x8(%rbp),%rsi
  10:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
  14:	e8 00 00 00 00       	call   19 <error_d.Result!(kernels.Block, kernels.DomainError).Result.hasValue() const+0x19>	15: R_X86_64_PLT32	std.sumtype.match!(error_d.Result!(kernels.Block, kernels.DomainError).Result.state().__lambda_L162_C31).match!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).match(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType))-0x4
  19:	83 f8 01             	cmp    $0x1,%eax
  1c:	0f 94 c0             	sete   %al
  1f:	48 8b e5             	mov    %rbp,%rsp
  22:	5d                   	pop    %rbp
  23:	c3                   	ret

Disassembly of section .text._D7error_d__T6ResultTS7kernels5BlockTSQq11DomainErrorZQBp8hasErrorMxFNaNbNiNfZb:

0000000000000000 <error_d.Result!(kernels.Block, kernels.DomainError).Result.hasError() const>:
   0:	55                   	push   %rbp
   1:	48 8b ec             	mov    %rsp,%rbp
   4:	48 83 ec 10          	sub    $0x10,%rsp
   8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
   c:	48 8b 75 f8          	mov    -0x8(%rbp),%rsi
  10:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
  14:	e8 00 00 00 00       	call   19 <error_d.Result!(kernels.Block, kernels.DomainError).Result.hasError() const+0x19>	15: R_X86_64_PLT32	std.sumtype.match!(error_d.Result!(kernels.Block, kernels.DomainError).Result.state().__lambda_L162_C31).match!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).match(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType))-0x4
  19:	83 f8 02             	cmp    $0x2,%eax
  1c:	0f 94 c0             	sete   %al
  1f:	48 8b e5             	mov    %rbp,%rsp
  22:	5d                   	pop    %rbp
  23:	c3                   	ret

Disassembly of section .text._D7error_d__T6ResultTS7kernels5BlockTSQq11DomainErrorZQBp7isEmptyMxFNaNbNiNfZb:

0000000000000000 <error_d.Result!(kernels.Block, kernels.DomainError).Result.isEmpty() const>:
   0:	55                   	push   %rbp
   1:	48 8b ec             	mov    %rsp,%rbp
   4:	48 83 ec 10          	sub    $0x10,%rsp
   8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
   c:	48 8b 75 f8          	mov    -0x8(%rbp),%rsi
  10:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
  14:	e8 00 00 00 00       	call   19 <error_d.Result!(kernels.Block, kernels.DomainError).Result.isEmpty() const+0x19>	15: R_X86_64_PLT32	std.sumtype.match!(error_d.Result!(kernels.Block, kernels.DomainError).Result.state().__lambda_L162_C31).match!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).match(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType))-0x4
  19:	85 c0                	test   %eax,%eax
  1b:	0f 94 c0             	sete   %al
  1e:	48 8b e5             	mov    %rbp,%rsp
  21:	5d                   	pop    %rbp
  22:	c3                   	ret
	...

Disassembly of section .text._D7error_d__T6ResultTS7kernels5BlockTSQq11DomainErrorZQBp8opAssignMFNaNbNiNfSQCx__TQCsTQCoTQCcZQDeZv:

0000000000000000 <error_d.Result!(kernels.Block, kernels.DomainError).Result.opAssign(error_d.Result!(kernels.Block, kernels.DomainError).Result)>:
   0:	55                   	push   %rbp
   1:	48 8b ec             	mov    %rsp,%rbp
   4:	48 81 ec 60 05 00 00 	sub    $0x560,%rsp
   b:	48 89 9d a8 fa ff ff 	mov    %rbx,-0x558(%rbp)
  12:	48 89 75 f8          	mov    %rsi,-0x8(%rbp)
  16:	48 89 fb             	mov    %rdi,%rbx
  19:	48 8d b5 e0 fd ff ff 	lea    -0x220(%rbp),%rsi
  20:	48 8b fb             	mov    %rbx,%rdi
  23:	e8 00 00 00 00       	call   28 <error_d.Result!(kernels.Block, kernels.DomainError).Result.opAssign(error_d.Result!(kernels.Block, kernels.DomainError).Result)+0x28>	24: R_X86_64_PLT32	_D4core8lifetime__T15moveEmplaceImplTS3std7sumtype__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTS7kernels5BlockZQzTSQBy__T7FailureTSQBj11DomainErrorZQBbZQDtZQFfFNaNbNiNfMKQFbNkMKQFiZv-0x4
  28:	48 8d b5 e0 fd ff ff 	lea    -0x220(%rbp),%rsi
  2f:	48 8d bd d0 fc ff ff 	lea    -0x330(%rbp),%rdi
  36:	b9 21 00 00 00       	mov    $0x21,%ecx
  3b:	f3 48 a5             	rep movsq (%rsi),(%rdi)
  3e:	48 8d b5 e0 fd ff ff 	lea    -0x220(%rbp),%rsi
  45:	48 8d bd c0 fb ff ff 	lea    -0x440(%rbp),%rdi
  4c:	b9 21 00 00 00       	mov    $0x21,%ecx
  51:	f3 48 a5             	rep movsq (%rsi),(%rdi)
  54:	48 8d b5 e0 fd ff ff 	lea    -0x220(%rbp),%rsi
  5b:	48 8d bd b0 fa ff ff 	lea    -0x550(%rbp),%rdi
  62:	b9 21 00 00 00       	mov    $0x21,%ecx
  67:	f3 48 a5             	rep movsq (%rsi),(%rdi)
  6a:	31 c0                	xor    %eax,%eax
  6c:	48 8d bd f0 fe ff ff 	lea    -0x110(%rbp),%rdi
  73:	b9 21 00 00 00       	mov    $0x21,%ecx
  78:	f3 48 ab             	rep stos %rax,(%rdi)
  7b:	48 8b f3             	mov    %rbx,%rsi
  7e:	48 8d bd f0 fe ff ff 	lea    -0x110(%rbp),%rdi
  85:	e8 00 00 00 00       	call   8a <error_d.Result!(kernels.Block, kernels.DomainError).Result.opAssign(error_d.Result!(kernels.Block, kernels.DomainError).Result)+0x8a>	86: R_X86_64_PLT32	_D4core8lifetime__T8moveImplTS3std7sumtype__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTS7kernels5BlockZQzTSQBy__T7FailureTSQBj11DomainErrorZQBbZQDtZQExFNaNbNiNfMKQFbNkMKQFiZv-0x4
  8a:	48 8b f3             	mov    %rbx,%rsi
  8d:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
  91:	e8 00 00 00 00       	call   96 <error_d.Result!(kernels.Block, kernels.DomainError).Result.opAssign(error_d.Result!(kernels.Block, kernels.DomainError).Result)+0x96>	92: R_X86_64_PLT32	_D4core8lifetime__T8moveImplTS3std7sumtype__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTS7kernels5BlockZQzTSQBy__T7FailureTSQBj11DomainErrorZQBbZQDtZQExFNaNbNiNfMKQFbNkMKQFiZv-0x4
  96:	48 8b 9d a8 fa ff ff 	mov    -0x558(%rbp),%rbx
  9d:	48 8b e5             	mov    %rbp,%rsp
  a0:	5d                   	pop    %rbp
  a1:	c3                   	ret
	...

Disassembly of section .text._D7error_d__T6ResultTS7kernels5BlockTSQq11DomainErrorZQBp7replaceMFNaNbNiNeKS3std7sumtype__T7SumTypeTSQDw5EmptyTSQEh__T7SuccessTQEdZQnTSQFe__T7FailureTQEkZQnZQCoZv:

0000000000000000 <error_d.Result!(kernels.Block, kernels.DomainError).Result.replace(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)>:
   0:	55                   	push   %rbp
   1:	48 8b ec             	mov    %rsp,%rbp
   4:	48 81 ec 60 05 00 00 	sub    $0x560,%rsp
   b:	48 89 7d f0          	mov    %rdi,-0x10(%rbp)
   f:	48 89 75 f8          	mov    %rsi,-0x8(%rbp)
  13:	48 8d b5 d8 fd ff ff 	lea    -0x228(%rbp),%rsi
  1a:	48 8b 7d f0          	mov    -0x10(%rbp),%rdi
  1e:	e8 00 00 00 00       	call   23 <error_d.Result!(kernels.Block, kernels.DomainError).Result.replace(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)+0x23>	1f: R_X86_64_PLT32	_D4core8lifetime__T15moveEmplaceImplTS3std7sumtype__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTS7kernels5BlockZQzTSQBy__T7FailureTSQBj11DomainErrorZQBbZQDtZQFfFNaNbNiNfMKQFbNkMKQFiZv-0x4
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
  81:	e8 00 00 00 00       	call   86 <error_d.Result!(kernels.Block, kernels.DomainError).Result.replace(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)+0x86>	82: R_X86_64_PLT32	_D4core8lifetime__T8moveImplTS3std7sumtype__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTS7kernels5BlockZQzTSQBy__T7FailureTSQBj11DomainErrorZQBbZQDtZQExFNaNbNiNfMKQFbNkMKQFiZv-0x4
  86:	48 8b 75 f0          	mov    -0x10(%rbp),%rsi
  8a:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
  8e:	e8 00 00 00 00       	call   93 <error_d.Result!(kernels.Block, kernels.DomainError).Result.replace(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)+0x93>	8f: R_X86_64_PLT32	_D4core8lifetime__T8moveImplTS3std7sumtype__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTS7kernels5BlockZQzTSQBy__T7FailureTSQBj11DomainErrorZQBbZQDtZQExFNaNbNiNfMKQFbNkMKQFiZv-0x4
  93:	48 8b e5             	mov    %rbp,%rsp
  96:	5d                   	pop    %rbp
  97:	c3                   	ret

Disassembly of section .text._D7error_d__T6ResultTS7kernels5BlockTSQq11DomainErrorZQBp11takeStorageMFNaNbNiNeZS3std7sumtype__T7SumTypeTSQEb5EmptyTSQEm__T7SuccessTQEiZQnTSQFj__T7FailureTQEpZQnZQCo:

0000000000000000 <error_d.Result!(kernels.Block, kernels.DomainError).Result.takeStorage()>:
   0:	55                   	push   %rbp
   1:	48 8b ec             	mov    %rsp,%rbp
   4:	48 81 ec 70 06 00 00 	sub    $0x670,%rsp
   b:	48 89 7d f0          	mov    %rdi,-0x10(%rbp)
   f:	48 89 75 f8          	mov    %rsi,-0x8(%rbp)
  13:	48 8d b5 c8 fc ff ff 	lea    -0x338(%rbp),%rsi
  1a:	48 8b 7d f0          	mov    -0x10(%rbp),%rdi
  1e:	e8 00 00 00 00       	call   23 <error_d.Result!(kernels.Block, kernels.DomainError).Result.takeStorage()+0x23>	1f: R_X86_64_PLT32	_D4core8lifetime__T15moveEmplaceImplTS3std7sumtype__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTS7kernels5BlockZQzTSQBy__T7FailureTSQBj11DomainErrorZQBbZQDtZQFfFNaNbNiNfMKQFbNkMKQFiZv-0x4
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
  81:	e8 00 00 00 00       	call   86 <error_d.Result!(kernels.Block, kernels.DomainError).Result.takeStorage()+0x86>	82: R_X86_64_PLT32	_D4core8lifetime__T8moveImplTS3std7sumtype__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTS7kernels5BlockZQzTSQBy__T7FailureTSQBj11DomainErrorZQBbZQDtZQExFNaNbNiNfMKQFbNkMKQFiZv-0x4
  86:	48 8d b5 e8 fe ff ff 	lea    -0x118(%rbp),%rsi
  8d:	48 8d bd 98 f9 ff ff 	lea    -0x668(%rbp),%rdi
  94:	e8 00 00 00 00       	call   99 <error_d.Result!(kernels.Block, kernels.DomainError).Result.takeStorage()+0x99>	95: R_X86_64_PLT32	_D4core8lifetime__T15moveEmplaceImplTS3std7sumtype__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTS7kernels5BlockZQzTSQBy__T7FailureTSQBj11DomainErrorZQBbZQDtZQFfFNaNbNiNfMKQFbNkMKQFiZv-0x4
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

Disassembly of section .text._D7error_d__T6ResultTS7kernels5BlockTSQq11DomainErrorZQBp11__xopEqualsMxFKxSQCw__TQCrTQCnTQCbZQDdZb:

0000000000000000 <error_d.Result!(kernels.Block, kernels.DomainError).Result.__xopEquals(ref const(error_d.Result!(kernels.Block, kernels.DomainError).Result)) const>:
   0:	55                   	push   %rbp
   1:	48 8b ec             	mov    %rsp,%rbp
   4:	48 83 ec 10          	sub    $0x10,%rsp
   8:	48 89 7d f0          	mov    %rdi,-0x10(%rbp)
   c:	48 89 75 f8          	mov    %rsi,-0x8(%rbp)
  10:	48 8b 75 f8          	mov    -0x8(%rbp),%rsi
  14:	48 8b 7d f0          	mov    -0x10(%rbp),%rdi
  18:	e8 00 00 00 00       	call   1d <error_d.Result!(kernels.Block, kernels.DomainError).Result.__xopEquals(ref const(error_d.Result!(kernels.Block, kernels.DomainError).Result)) const+0x1d>	19: R_X86_64_PLT32	std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opEquals!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType), const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).opEquals(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)) const-0x4
  1d:	48 8b e5             	mov    %rbp,%rsp
  20:	5d                   	pop    %rbp
  21:	c3                   	ret
	...

Disassembly of section .text._D7error_d__T6ResultTS7kernels5BlockTSQq11DomainErrorZQBp9__xtoHashFNbNeKxSQCv__TQCqTQCmTQCaZQDcZm:

0000000000000000 <error_d.Result!(kernels.Block, kernels.DomainError).Result.__xtoHash(ref const(error_d.Result!(kernels.Block, kernels.DomainError).Result))>:
   0:	55                   	push   %rbp
   1:	48 8b ec             	mov    %rsp,%rbp
   4:	48 83 ec 10          	sub    $0x10,%rsp
   8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
   c:	48 8b 75 f8          	mov    -0x8(%rbp),%rsi
  10:	48 8b 3d 00 00 00 00 	mov    0x0(%rip),%rdi        # 17 <error_d.Result!(kernels.Block, kernels.DomainError).Result.__xtoHash(ref const(error_d.Result!(kernels.Block, kernels.DomainError).Result))+0x17>	13: R_X86_64_GOTPCREL	initializer for TypeInfo_xS3std7sumtype__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTS7kernels5BlockZQzTSQBy__T7FailureTSQBj11DomainErrorZQBbZQDt-0x4
  17:	48 8b 07             	mov    (%rdi),%rax
  1a:	48 ff 50 30          	rex.W call *0x30(%rax)
  1e:	48 8b e5             	mov    %rbp,%rsp
  21:	5d                   	pop    %rbp
  22:	c3                   	ret
	...

Disassembly of section .text._D3std7sumtype__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTS7kernels5BlockZQzTSQBy__T7FailureTSQBj11DomainErrorZQBbZQDt6__ctorMFNaNbNcNiNfQEgZSQFjQFi__TQFdTQEyTQEmTQDiZQFt:

0000000000000000 <std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.this(error_d.Empty)>:
   0:	55                   	push   %rbp
   1:	48 8b ec             	mov    %rsp,%rbp
   4:	48 83 ec 10          	sub    $0x10,%rsp
   8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
   c:	48 8d 75 f0          	lea    -0x10(%rbp),%rsi
  10:	48 8d 7d 10          	lea    0x10(%rbp),%rdi
  14:	e8 00 00 00 00       	call   19 <std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.this(error_d.Empty)+0x19>	15: R_X86_64_PLT32	_D4core8lifetime__T15moveEmplaceImplTS7error_d5EmptyZQBiFNaNbNiNfMKQBeNkMKQBlZv-0x4
  19:	8a 45 f0             	mov    -0x10(%rbp),%al
  1c:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
  20:	88 01                	mov    %al,(%rcx)
  22:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
  26:	c6 87 00 01 00 00 00 	movb   $0x0,0x100(%rdi)
  2d:	48 89 c8             	mov    %rcx,%rax
  30:	48 8b e5             	mov    %rbp,%rsp
  33:	5d                   	pop    %rbp
  34:	c3                   	ret
  35:	00 00                	add    %al,(%rax)
	...

Disassembly of section .text._D3std7sumtype__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTS7kernels5BlockZQzTSQBy__T7FailureTSQBj11DomainErrorZQBbZQDt6__ctorMxFNaNbNcNiNfxSQEiQEdZxSQFqQFp__TQFkTQFfTQEtTQDpZQGa:

0000000000000000 <std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.this(const(error_d.Empty)) const>:
   0:	8a 44 24 08          	mov    0x8(%rsp),%al
   4:	88 07                	mov    %al,(%rdi)
   6:	c6 87 00 01 00 00 00 	movb   $0x0,0x100(%rdi)
   d:	48 8b c7             	mov    %rdi,%rax
  10:	c3                   	ret
  11:	00 00                	add    %al,(%rax)
	...

Disassembly of section .text._D3std7sumtype__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTS7kernels5BlockZQzTSQBy__T7FailureTSQBj11DomainErrorZQBbZQDt6__ctorMyFNaNbNcNiNfySQEiQEdZySQFqQFp__TQFkTQFfTQEtTQDpZQGa:

0000000000000000 <std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.this(immutable(error_d.Empty)) immutable>:
   0:	8a 44 24 08          	mov    0x8(%rsp),%al
   4:	88 07                	mov    %al,(%rdi)
   6:	c6 87 00 01 00 00 00 	movb   $0x0,0x100(%rdi)
   d:	48 8b c7             	mov    %rdi,%rax
  10:	c3                   	ret
  11:	00 00                	add    %al,(%rax)
	...

Disassembly of section .text._D3std7sumtype__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTS7kernels5BlockZQzTSQBy__T7FailureTSQBj11DomainErrorZQBbZQDt6__ctorMFNaNbNcNiNfQDqZSQFjQFi__TQFdTQEyTQEmTQDiZQFt:

0000000000000000 <std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.this(error_d.Success!(kernels.Block).Success)>:
   0:	55                   	push   %rbp
   1:	48 8b ec             	mov    %rsp,%rbp
   4:	48 81 ec 10 01 00 00 	sub    $0x110,%rsp
   b:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
   f:	48 8d b5 f8 fe ff ff 	lea    -0x108(%rbp),%rsi
  16:	48 8d 7d 10          	lea    0x10(%rbp),%rdi
  1a:	e8 00 00 00 00       	call   1f <std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.this(error_d.Success!(kernels.Block).Success)+0x1f>	1b: R_X86_64_PLT32	_D4core8lifetime__T15moveEmplaceImplTS7error_d__T7SuccessTS7kernels5BlockZQzZQCgFNaNbNiNfMKQCcNkMKQCjZv-0x4
  1f:	48 8d b5 f8 fe ff ff 	lea    -0x108(%rbp),%rsi
  26:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
  2a:	b9 20 00 00 00       	mov    $0x20,%ecx
  2f:	f3 48 a5             	rep movsq (%rsi),(%rdi)
  32:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
  36:	c6 87 00 01 00 00 01 	movb   $0x1,0x100(%rdi)
  3d:	48 8b c7             	mov    %rdi,%rax
  40:	48 8b e5             	mov    %rbp,%rsp
  43:	5d                   	pop    %rbp
  44:	c3                   	ret
  45:	00 00                	add    %al,(%rax)
	...

Disassembly of section .text._D3std7sumtype__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTS7kernels5BlockZQzTSQBy__T7FailureTSQBj11DomainErrorZQBbZQDt6__ctorMxFNaNbNcNiNfxSQEi__TQDtTQDoZQEbZxSQGbQGa__TQFvTQFqTQFeTQEaZQGl:

0000000000000000 <std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.this(const(error_d.Success!(kernels.Block).Success)) const>:
   0:	48 89 f8             	mov    %rdi,%rax
   3:	48 8d 74 24 08       	lea    0x8(%rsp),%rsi
   8:	48 8b f8             	mov    %rax,%rdi
   b:	b9 20 00 00 00       	mov    $0x20,%ecx
  10:	f3 48 a5             	rep movsq (%rsi),(%rdi)
  13:	c6 80 00 01 00 00 01 	movb   $0x1,0x100(%rax)
  1a:	c3                   	ret
	...

Disassembly of section .text._D3std7sumtype__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTS7kernels5BlockZQzTSQBy__T7FailureTSQBj11DomainErrorZQBbZQDt6__ctorMyFNaNbNcNiNfySQEi__TQDtTQDoZQEbZySQGbQGa__TQFvTQFqTQFeTQEaZQGl:

0000000000000000 <std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.this(immutable(error_d.Success!(kernels.Block).Success)) immutable>:
   0:	48 89 f8             	mov    %rdi,%rax
   3:	48 8d 74 24 08       	lea    0x8(%rsp),%rsi
   8:	48 8b f8             	mov    %rax,%rdi
   b:	b9 20 00 00 00       	mov    $0x20,%ecx
  10:	f3 48 a5             	rep movsq (%rsi),(%rdi)
  13:	c6 80 00 01 00 00 01 	movb   $0x1,0x100(%rax)
  1a:	c3                   	ret
	...

Disassembly of section .text._D3std7sumtype__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTS7kernels5BlockZQzTSQBy__T7FailureTSQBj11DomainErrorZQBbZQDt6__ctorMFNaNbNcNiNfQCiZSQFjQFi__TQFdTQEyTQEmTQDiZQFt:

0000000000000000 <std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.this(error_d.Failure!(kernels.DomainError).Failure)>:
   0:	55                   	push   %rbp
   1:	48 8b ec             	mov    %rsp,%rbp
   4:	48 83 ec 20          	sub    $0x20,%rsp
   8:	48 89 7d f0          	mov    %rdi,-0x10(%rbp)
   c:	48 89 75 f8          	mov    %rsi,-0x8(%rbp)
  10:	48 8d 75 e8          	lea    -0x18(%rbp),%rsi
  14:	48 8d 7d f8          	lea    -0x8(%rbp),%rdi
  18:	e8 00 00 00 00       	call   1d <std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.this(error_d.Failure!(kernels.DomainError).Failure)+0x1d>	19: R_X86_64_PLT32	_D4core8lifetime__T15moveEmplaceImplTS7error_d__T7FailureTS7kernels11DomainErrorZQBgZQCoFNaNbNiNfMKQCkNkMKQCrZv-0x4
  1d:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  21:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  25:	48 89 01             	mov    %rax,(%rcx)
  28:	48 8b 7d f0          	mov    -0x10(%rbp),%rdi
  2c:	c6 87 00 01 00 00 02 	movb   $0x2,0x100(%rdi)
  33:	48 89 c8             	mov    %rcx,%rax
  36:	48 8b e5             	mov    %rbp,%rsp
  39:	5d                   	pop    %rbp
  3a:	c3                   	ret
	...

Disassembly of section .text._D3std7sumtype__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTS7kernels5BlockZQzTSQBy__T7FailureTSQBj11DomainErrorZQBbZQDt6__ctorMxFNaNbNcNiNfxSQEi__TQCkTQCfZQCsZxSQGbQGa__TQFvTQFqTQFeTQEaZQGl:

0000000000000000 <std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.this(const(error_d.Failure!(kernels.DomainError).Failure)) const>:
   0:	48 89 f8             	mov    %rdi,%rax
   3:	48 89 30             	mov    %rsi,(%rax)
   6:	c6 80 00 01 00 00 02 	movb   $0x2,0x100(%rax)
   d:	c3                   	ret
	...

Disassembly of section .text._D3std7sumtype__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTS7kernels5BlockZQzTSQBy__T7FailureTSQBj11DomainErrorZQBbZQDt6__ctorMyFNaNbNcNiNfySQEi__TQCkTQCfZQCsZySQGbQGa__TQFvTQFqTQFeTQEaZQGl:

0000000000000000 <std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.this(immutable(error_d.Failure!(kernels.DomainError).Failure)) immutable>:
   0:	48 89 f8             	mov    %rdi,%rax
   3:	48 89 30             	mov    %rsi,(%rax)
   6:	c6 80 00 01 00 00 02 	movb   $0x2,0x100(%rax)
   d:	c3                   	ret
	...

Disassembly of section .text._D3std7sumtype__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTS7kernels5BlockZQzTSQBy__T7FailureTSQBj11DomainErrorZQBbZQDt8opAssignMFNaNbNcNiNfQEiZSQFlQFk__TQFfTQFaTQEoTQDkZQFv:

0000000000000000 <std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(error_d.Empty)>:
   0:	55                   	push   %rbp
   1:	48 8b ec             	mov    %rsp,%rbp
   4:	48 81 ec 10 01 00 00 	sub    $0x110,%rsp
   b:	48 89 9d f0 fe ff ff 	mov    %rbx,-0x110(%rbp)
  12:	48 89 fb             	mov    %rdi,%rbx
  15:	48 8b fb             	mov    %rbx,%rdi
  18:	e8 00 00 00 00       	call   1d <std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(error_d.Empty)+0x1d>	19: R_X86_64_PLT32	std.sumtype.matchImpl!(1, std.sumtype.destroyIfOwner).matchImpl!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).matchImpl(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)-0x4
  1d:	31 c0                	xor    %eax,%eax
  1f:	89 85 f8 fe ff ff    	mov    %eax,-0x108(%rbp)
  25:	89 85 fc fe ff ff    	mov    %eax,-0x104(%rbp)
  2b:	89 85 00 ff ff ff    	mov    %eax,-0x100(%rbp)
  31:	89 85 04 ff ff ff    	mov    %eax,-0xfc(%rbp)
  37:	89 85 08 ff ff ff    	mov    %eax,-0xf8(%rbp)
  3d:	89 85 0c ff ff ff    	mov    %eax,-0xf4(%rbp)
  43:	89 85 10 ff ff ff    	mov    %eax,-0xf0(%rbp)
  49:	89 85 14 ff ff ff    	mov    %eax,-0xec(%rbp)
  4f:	89 85 18 ff ff ff    	mov    %eax,-0xe8(%rbp)
  55:	89 85 1c ff ff ff    	mov    %eax,-0xe4(%rbp)
  5b:	89 85 20 ff ff ff    	mov    %eax,-0xe0(%rbp)
  61:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%rbp)
  67:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%rbp)
  6d:	89 85 2c ff ff ff    	mov    %eax,-0xd4(%rbp)
  73:	89 85 30 ff ff ff    	mov    %eax,-0xd0(%rbp)
  79:	89 85 34 ff ff ff    	mov    %eax,-0xcc(%rbp)
  7f:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%rbp)
  85:	89 85 3c ff ff ff    	mov    %eax,-0xc4(%rbp)
  8b:	89 85 40 ff ff ff    	mov    %eax,-0xc0(%rbp)
  91:	89 85 44 ff ff ff    	mov    %eax,-0xbc(%rbp)
  97:	89 85 48 ff ff ff    	mov    %eax,-0xb8(%rbp)
  9d:	89 85 4c ff ff ff    	mov    %eax,-0xb4(%rbp)
  a3:	89 85 50 ff ff ff    	mov    %eax,-0xb0(%rbp)
  a9:	89 85 54 ff ff ff    	mov    %eax,-0xac(%rbp)
  af:	89 85 58 ff ff ff    	mov    %eax,-0xa8(%rbp)
  b5:	89 85 5c ff ff ff    	mov    %eax,-0xa4(%rbp)
  bb:	89 85 60 ff ff ff    	mov    %eax,-0xa0(%rbp)
  c1:	89 85 64 ff ff ff    	mov    %eax,-0x9c(%rbp)
  c7:	89 85 68 ff ff ff    	mov    %eax,-0x98(%rbp)
  cd:	89 85 6c ff ff ff    	mov    %eax,-0x94(%rbp)
  d3:	89 85 70 ff ff ff    	mov    %eax,-0x90(%rbp)
  d9:	89 85 74 ff ff ff    	mov    %eax,-0x8c(%rbp)
  df:	89 85 78 ff ff ff    	mov    %eax,-0x88(%rbp)
  e5:	89 85 7c ff ff ff    	mov    %eax,-0x84(%rbp)
  eb:	89 45 80             	mov    %eax,-0x80(%rbp)
  ee:	89 45 84             	mov    %eax,-0x7c(%rbp)
  f1:	89 45 88             	mov    %eax,-0x78(%rbp)
  f4:	89 45 8c             	mov    %eax,-0x74(%rbp)
  f7:	89 45 90             	mov    %eax,-0x70(%rbp)
  fa:	89 45 94             	mov    %eax,-0x6c(%rbp)
  fd:	89 45 98             	mov    %eax,-0x68(%rbp)
 100:	89 45 9c             	mov    %eax,-0x64(%rbp)
 103:	89 45 a0             	mov    %eax,-0x60(%rbp)
 106:	89 45 a4             	mov    %eax,-0x5c(%rbp)
 109:	89 45 a8             	mov    %eax,-0x58(%rbp)
 10c:	89 45 ac             	mov    %eax,-0x54(%rbp)
 10f:	89 45 b0             	mov    %eax,-0x50(%rbp)
 112:	89 45 b4             	mov    %eax,-0x4c(%rbp)
 115:	89 45 b8             	mov    %eax,-0x48(%rbp)
 118:	89 45 bc             	mov    %eax,-0x44(%rbp)
 11b:	89 45 c0             	mov    %eax,-0x40(%rbp)
 11e:	89 45 c4             	mov    %eax,-0x3c(%rbp)
 121:	89 45 c8             	mov    %eax,-0x38(%rbp)
 124:	89 45 cc             	mov    %eax,-0x34(%rbp)
 127:	89 45 d0             	mov    %eax,-0x30(%rbp)
 12a:	89 45 d4             	mov    %eax,-0x2c(%rbp)
 12d:	89 45 d8             	mov    %eax,-0x28(%rbp)
 130:	89 45 dc             	mov    %eax,-0x24(%rbp)
 133:	89 45 e0             	mov    %eax,-0x20(%rbp)
 136:	89 45 e4             	mov    %eax,-0x1c(%rbp)
 139:	89 45 e8             	mov    %eax,-0x18(%rbp)
 13c:	89 45 ec             	mov    %eax,-0x14(%rbp)
 13f:	89 45 f0             	mov    %eax,-0x10(%rbp)
 142:	89 45 f4             	mov    %eax,-0xc(%rbp)
 145:	48 8d 75 f8          	lea    -0x8(%rbp),%rsi
 149:	48 8d 7d 10          	lea    0x10(%rbp),%rdi
 14d:	e8 00 00 00 00       	call   152 <std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(error_d.Empty)+0x152>	14e: R_X86_64_PLT32	_D4core8lifetime__T15moveEmplaceImplTS7error_d5EmptyZQBiFNaNbNiNfMKQBeNkMKQBlZv-0x4
 152:	8a 4d f8             	mov    -0x8(%rbp),%cl
 155:	88 8d f8 fe ff ff    	mov    %cl,-0x108(%rbp)
 15b:	48 8d b5 f8 fe ff ff 	lea    -0x108(%rbp),%rsi
 162:	48 8b fb             	mov    %rbx,%rdi
 165:	b9 20 00 00 00       	mov    $0x20,%ecx
 16a:	f3 48 a5             	rep movsq (%rsi),(%rdi)
 16d:	88 8b 00 01 00 00    	mov    %cl,0x100(%rbx)
 173:	48 8b c3             	mov    %rbx,%rax
 176:	48 8b 9d f0 fe ff ff 	mov    -0x110(%rbp),%rbx
 17d:	48 8b e5             	mov    %rbp,%rsp
 180:	5d                   	pop    %rbp
 181:	c3                   	ret
	...

Disassembly of section .text._D3std7sumtype__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTS7kernels5BlockZQzTSQBy__T7FailureTSQBj11DomainErrorZQBbZQDt8opAssignMFNaNbNcNiNfQDsZSQFlQFk__TQFfTQFaTQEoTQDkZQFv:

0000000000000000 <std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(error_d.Success!(kernels.Block).Success)>:
   0:	55                   	push   %rbp
   1:	48 8b ec             	mov    %rsp,%rbp
   4:	48 81 ec 10 01 00 00 	sub    $0x110,%rsp
   b:	48 89 9d f8 fe ff ff 	mov    %rbx,-0x108(%rbp)
  12:	48 89 fb             	mov    %rdi,%rbx
  15:	48 8b fb             	mov    %rbx,%rdi
  18:	e8 00 00 00 00       	call   1d <std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(error_d.Success!(kernels.Block).Success)+0x1d>	19: R_X86_64_PLT32	std.sumtype.matchImpl!(1, std.sumtype.destroyIfOwner).matchImpl!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).matchImpl(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)-0x4
  1d:	48 8d b5 00 ff ff ff 	lea    -0x100(%rbp),%rsi
  24:	48 8d 7d 10          	lea    0x10(%rbp),%rdi
  28:	e8 00 00 00 00       	call   2d <std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(error_d.Success!(kernels.Block).Success)+0x2d>	29: R_X86_64_PLT32	_D4core8lifetime__T15moveEmplaceImplTS7error_d__T7SuccessTS7kernels5BlockZQzZQCgFNaNbNiNfMKQCcNkMKQCjZv-0x4
  2d:	48 8d b5 00 ff ff ff 	lea    -0x100(%rbp),%rsi
  34:	48 8b fb             	mov    %rbx,%rdi
  37:	b9 20 00 00 00       	mov    $0x20,%ecx
  3c:	f3 48 a5             	rep movsq (%rsi),(%rdi)
  3f:	c6 83 00 01 00 00 01 	movb   $0x1,0x100(%rbx)
  46:	48 8b c3             	mov    %rbx,%rax
  49:	48 8b 9d f8 fe ff ff 	mov    -0x108(%rbp),%rbx
  50:	48 8b e5             	mov    %rbp,%rsp
  53:	5d                   	pop    %rbp
  54:	c3                   	ret
  55:	00 00                	add    %al,(%rax)
	...

Disassembly of section .text._D3std7sumtype__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTS7kernels5BlockZQzTSQBy__T7FailureTSQBj11DomainErrorZQBbZQDt8opAssignMFNaNbNcNiNfQCkZSQFlQFk__TQFfTQFaTQEoTQDkZQFv:

0000000000000000 <std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(error_d.Failure!(kernels.DomainError).Failure)>:
   0:	55                   	push   %rbp
   1:	48 8b ec             	mov    %rsp,%rbp
   4:	48 81 ec 20 01 00 00 	sub    $0x120,%rsp
   b:	48 89 9d e8 fe ff ff 	mov    %rbx,-0x118(%rbp)
  12:	48 89 75 f8          	mov    %rsi,-0x8(%rbp)
  16:	48 89 fb             	mov    %rdi,%rbx
  19:	48 8b fb             	mov    %rbx,%rdi
  1c:	e8 00 00 00 00       	call   21 <std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(error_d.Failure!(kernels.DomainError).Failure)+0x21>	1d: R_X86_64_PLT32	std.sumtype.matchImpl!(1, std.sumtype.destroyIfOwner).matchImpl!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).matchImpl(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)-0x4
  21:	31 c0                	xor    %eax,%eax
  23:	89 85 f8 fe ff ff    	mov    %eax,-0x108(%rbp)
  29:	89 85 fc fe ff ff    	mov    %eax,-0x104(%rbp)
  2f:	89 85 00 ff ff ff    	mov    %eax,-0x100(%rbp)
  35:	89 85 04 ff ff ff    	mov    %eax,-0xfc(%rbp)
  3b:	89 85 08 ff ff ff    	mov    %eax,-0xf8(%rbp)
  41:	89 85 0c ff ff ff    	mov    %eax,-0xf4(%rbp)
  47:	89 85 10 ff ff ff    	mov    %eax,-0xf0(%rbp)
  4d:	89 85 14 ff ff ff    	mov    %eax,-0xec(%rbp)
  53:	89 85 18 ff ff ff    	mov    %eax,-0xe8(%rbp)
  59:	89 85 1c ff ff ff    	mov    %eax,-0xe4(%rbp)
  5f:	89 85 20 ff ff ff    	mov    %eax,-0xe0(%rbp)
  65:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%rbp)
  6b:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%rbp)
  71:	89 85 2c ff ff ff    	mov    %eax,-0xd4(%rbp)
  77:	89 85 30 ff ff ff    	mov    %eax,-0xd0(%rbp)
  7d:	89 85 34 ff ff ff    	mov    %eax,-0xcc(%rbp)
  83:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%rbp)
  89:	89 85 3c ff ff ff    	mov    %eax,-0xc4(%rbp)
  8f:	89 85 40 ff ff ff    	mov    %eax,-0xc0(%rbp)
  95:	89 85 44 ff ff ff    	mov    %eax,-0xbc(%rbp)
  9b:	89 85 48 ff ff ff    	mov    %eax,-0xb8(%rbp)
  a1:	89 85 4c ff ff ff    	mov    %eax,-0xb4(%rbp)
  a7:	89 85 50 ff ff ff    	mov    %eax,-0xb0(%rbp)
  ad:	89 85 54 ff ff ff    	mov    %eax,-0xac(%rbp)
  b3:	89 85 58 ff ff ff    	mov    %eax,-0xa8(%rbp)
  b9:	89 85 5c ff ff ff    	mov    %eax,-0xa4(%rbp)
  bf:	89 85 60 ff ff ff    	mov    %eax,-0xa0(%rbp)
  c5:	89 85 64 ff ff ff    	mov    %eax,-0x9c(%rbp)
  cb:	89 85 68 ff ff ff    	mov    %eax,-0x98(%rbp)
  d1:	89 85 6c ff ff ff    	mov    %eax,-0x94(%rbp)
  d7:	89 85 70 ff ff ff    	mov    %eax,-0x90(%rbp)
  dd:	89 85 74 ff ff ff    	mov    %eax,-0x8c(%rbp)
  e3:	89 85 78 ff ff ff    	mov    %eax,-0x88(%rbp)
  e9:	89 85 7c ff ff ff    	mov    %eax,-0x84(%rbp)
  ef:	89 45 80             	mov    %eax,-0x80(%rbp)
  f2:	89 45 84             	mov    %eax,-0x7c(%rbp)
  f5:	89 45 88             	mov    %eax,-0x78(%rbp)
  f8:	89 45 8c             	mov    %eax,-0x74(%rbp)
  fb:	89 45 90             	mov    %eax,-0x70(%rbp)
  fe:	89 45 94             	mov    %eax,-0x6c(%rbp)
 101:	89 45 98             	mov    %eax,-0x68(%rbp)
 104:	89 45 9c             	mov    %eax,-0x64(%rbp)
 107:	89 45 a0             	mov    %eax,-0x60(%rbp)
 10a:	89 45 a4             	mov    %eax,-0x5c(%rbp)
 10d:	89 45 a8             	mov    %eax,-0x58(%rbp)
 110:	89 45 ac             	mov    %eax,-0x54(%rbp)
 113:	89 45 b0             	mov    %eax,-0x50(%rbp)
 116:	89 45 b4             	mov    %eax,-0x4c(%rbp)
 119:	89 45 b8             	mov    %eax,-0x48(%rbp)
 11c:	89 45 bc             	mov    %eax,-0x44(%rbp)
 11f:	89 45 c0             	mov    %eax,-0x40(%rbp)
 122:	89 45 c4             	mov    %eax,-0x3c(%rbp)
 125:	89 45 c8             	mov    %eax,-0x38(%rbp)
 128:	89 45 cc             	mov    %eax,-0x34(%rbp)
 12b:	89 45 d0             	mov    %eax,-0x30(%rbp)
 12e:	89 45 d4             	mov    %eax,-0x2c(%rbp)
 131:	89 45 d8             	mov    %eax,-0x28(%rbp)
 134:	89 45 dc             	mov    %eax,-0x24(%rbp)
 137:	89 45 e0             	mov    %eax,-0x20(%rbp)
 13a:	89 45 e4             	mov    %eax,-0x1c(%rbp)
 13d:	89 45 e8             	mov    %eax,-0x18(%rbp)
 140:	89 45 ec             	mov    %eax,-0x14(%rbp)
 143:	48 8d 75 f0          	lea    -0x10(%rbp),%rsi
 147:	48 8d 7d f8          	lea    -0x8(%rbp),%rdi
 14b:	e8 00 00 00 00       	call   150 <std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(error_d.Failure!(kernels.DomainError).Failure)+0x150>	14c: R_X86_64_PLT32	_D4core8lifetime__T15moveEmplaceImplTS7error_d__T7FailureTS7kernels11DomainErrorZQBgZQCoFNaNbNiNfMKQCkNkMKQCrZv-0x4
 150:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
 154:	48 89 8d f0 fe ff ff 	mov    %rcx,-0x110(%rbp)
 15b:	48 8d b5 f0 fe ff ff 	lea    -0x110(%rbp),%rsi
 162:	48 8b fb             	mov    %rbx,%rdi
 165:	b9 20 00 00 00       	mov    $0x20,%ecx
 16a:	f3 48 a5             	rep movsq (%rsi),(%rdi)
 16d:	c6 83 00 01 00 00 02 	movb   $0x2,0x100(%rbx)
 174:	48 8b c3             	mov    %rbx,%rax
 177:	48 8b 9d e8 fe ff ff 	mov    -0x118(%rbp),%rbx
 17e:	48 8b e5             	mov    %rbp,%rsp
 181:	5d                   	pop    %rbp
 182:	c3                   	ret
	...

Disassembly of section .text._D3std7sumtype__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTS7kernels5BlockZQzTSQBy__T7FailureTSQBj11DomainErrorZQBbZQDt8opAssignMFNaNbNcNiNfKSQFiQFh__TQFcTQExTQElTQDhZQFsZQBe:

0000000000000000 <std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)>:
   0:	55                   	push   %rbp
   1:	48 8b ec             	mov    %rsp,%rbp
   4:	48 83 ec 10          	sub    $0x10,%rsp
   8:	48 89 7d f0          	mov    %rdi,-0x10(%rbp)
   c:	48 89 75 f8          	mov    %rsi,-0x8(%rbp)
  10:	48 8b 75 f8          	mov    -0x8(%rbp),%rsi
  14:	48 8d 7d f0          	lea    -0x10(%rbp),%rdi
  18:	e8 00 00 00 00       	call   1d <std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)+0x1d>	19: R_X86_64_PLT32	std.sumtype.match!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).__lambda_L679_C28).match!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).match(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)-0x4
  1d:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  21:	48 8b e5             	mov    %rbp,%rsp
  24:	5d                   	pop    %rbp
  25:	c3                   	ret
	...

Disassembly of section .text._D3std7sumtype__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTS7kernels5BlockZQzTSQBy__T7FailureTSQBj11DomainErrorZQBbZQDt8opAssignMFNaNbNcNiNfSQFhQFg__TQFbTQEwTQEkTQDgZQFrZQBe:

0000000000000000 <std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)>:
   0:	55                   	push   %rbp
   1:	48 8b ec             	mov    %rsp,%rbp
   4:	48 83 ec 10          	sub    $0x10,%rsp
   8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
   c:	48 8d 75 10          	lea    0x10(%rbp),%rsi
  10:	48 8d 7d f8          	lea    -0x8(%rbp),%rdi
  14:	e8 00 00 00 00       	call   19 <std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)+0x19>	15: R_X86_64_PLT32	std.sumtype.match!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).__lambda_L697_C24).match!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).match(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)-0x4
  19:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  1d:	48 8b e5             	mov    %rbp,%rsp
  20:	5d                   	pop    %rbp
  21:	c3                   	ret
	...

Disassembly of section .text._D3std7sumtype__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTS7kernels5BlockZQzTSQBy__T7FailureTSQBj11DomainErrorZQBbZQDt6toHashMxFNaNbNiNfZm:

0000000000000000 <std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.toHash() const>:
   0:	55                   	push   %rbp
   1:	48 8b ec             	mov    %rsp,%rbp
   4:	48 83 ec 10          	sub    $0x10,%rsp
   8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
   c:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
  10:	e8 00 00 00 00       	call   15 <std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.toHash() const+0x15>	11: R_X86_64_PLT32	std.sumtype.matchImpl!(1, core.internal.hash.hashOf).matchImpl!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).matchImpl(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType))-0x4
  15:	48 8b e5             	mov    %rbp,%rsp
  18:	5d                   	pop    %rbp
  19:	c3                   	ret
	...

Disassembly of section .text._D3std7sumtype__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTS7kernels5BlockZQzTSQBy__T7FailureTSQBj11DomainErrorZQBbZQDt11__xopEqualsMxFKxSQFeQFd__TQEyTQEtTQEhTQDdZQFoZb:

0000000000000000 <std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.__xopEquals(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)) const>:
   0:	55                   	push   %rbp
   1:	48 8b ec             	mov    %rsp,%rbp
   4:	48 83 ec 10          	sub    $0x10,%rsp
   8:	48 89 7d f0          	mov    %rdi,-0x10(%rbp)
   c:	48 89 75 f8          	mov    %rsi,-0x8(%rbp)
  10:	48 8b 75 f8          	mov    -0x8(%rbp),%rsi
  14:	48 8b 7d f0          	mov    -0x10(%rbp),%rdi
  18:	e8 00 00 00 00       	call   1d <std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.__xopEquals(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)) const+0x1d>	19: R_X86_64_PLT32	std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opEquals!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType), const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).opEquals(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)) const-0x4
  1d:	48 8b e5             	mov    %rbp,%rsp
  20:	5d                   	pop    %rbp
  21:	c3                   	ret
	...

Disassembly of section .text._D4core8internal4hash__T6hashOfTG32mZQnFNaNbNiNfMKxG32mmZm:

0000000000000000 <core.internal.hash.hashOf!(ulong[32]).hashOf(scope ref const(ulong[32]), ulong)>:
   0:	55                   	push   %rbp
   1:	48 8b ec             	mov    %rsp,%rbp
   4:	48 83 ec 10          	sub    $0x10,%rsp
   8:	48 89 7d f0          	mov    %rdi,-0x10(%rbp)
   c:	48 89 75 f8          	mov    %rsi,-0x8(%rbp)
  10:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
  14:	bf 20 00 00 00       	mov    $0x20,%edi
  19:	48 89 d6             	mov    %rdx,%rsi
  1c:	e8 00 00 00 00       	call   21 <core.internal.hash.hashOf!(ulong[32]).hashOf(scope ref const(ulong[32]), ulong)+0x21>	1d: R_X86_64_PLT32	_D4core8internal7convert__T7toUbyteTmZQlFNaNbNiNeNkMxAmZAxh-0x4
  21:	48 89 c6             	mov    %rax,%rsi
  24:	48 8b 7d f0          	mov    -0x10(%rbp),%rdi
  28:	e8 00 00 00 00       	call   2d <core.internal.hash.hashOf!(ulong[32]).hashOf(scope ref const(ulong[32]), ulong)+0x2d>	29: R_X86_64_PLT32	core.internal.hash.bytesHash!(true).bytesHash(scope const(ubyte)[], ulong)-0x4
  2d:	48 8b e5             	mov    %rbp,%rsp
  30:	5d                   	pop    %rbp
  31:	c3                   	ret
	...

Disassembly of section .text._D4core8internal7convert__T7toUbyteTmZQlFNaNbNiNeNkMxAmZAxh:

0000000000000000 <_D4core8internal7convert__T7toUbyteTmZQlFNaNbNiNeNkMxAmZAxh>:
   0:	48 8d 04 fd 00 00 00 00 	lea    0x0(,%rdi,8),%rax
   8:	48 8b d6             	mov    %rsi,%rdx
   b:	c3                   	ret

Disassembly of section .text._D4core8internal7convert__T7toUbyteTmZQlFNaNbNiNeMKxmZAxh:

0000000000000000 <core.internal.convert.toUbyte!(ulong).toUbyte(scope ref const(ulong))>:
   0:	48 8b d7             	mov    %rdi,%rdx
   3:	b8 08 00 00 00       	mov    $0x8,%eax
   8:	c3                   	ret
   9:	00 00                	add    %al,(%rax)
	...

Disassembly of section .text._D4core8internal4hash__T9bytesHashVbi1ZQpFNaNbNiNeMAxhmZm:

0000000000000000 <core.internal.hash.bytesHash!(true).bytesHash(scope const(ubyte)[], ulong)>:
   0:	48 83 ec 18          	sub    $0x18,%rsp
   4:	48 89 5c 24 08       	mov    %rbx,0x8(%rsp)
   9:	49 89 f0             	mov    %rsi,%r8
   c:	49 89 d1             	mov    %rdx,%r9
   f:	49 8b d1             	mov    %r9,%rdx
  12:	49 8b c8             	mov    %r8,%rcx
  15:	48 c1 e9 02          	shr    $0x2,%rcx
  19:	89 7c 24 10          	mov    %edi,0x10(%rsp)
  1d:	49 8d 34 89          	lea    (%r9,%rcx,4),%rsi
  21:	4c 3b ce             	cmp    %rsi,%r9
  24:	74 3c                	je     62 <core.internal.hash.bytesHash!(true).bytesHash(scope const(ubyte)[], ulong)+0x62>
  26:	8b 0a                	mov    (%rdx),%ecx
  28:	69 c1 51 2d 9e cc    	imul   $0xcc9e2d51,%ecx,%eax
  2e:	89 c1                	mov    %eax,%ecx
  30:	c1 c0 0f             	rol    $0xf,%eax
  33:	89 c1                	mov    %eax,%ecx
  35:	69 f9 93 35 87 1b    	imul   $0x1b873593,%ecx,%edi
  3b:	89 f9                	mov    %edi,%ecx
  3d:	31 4c 24 10          	xor    %ecx,0x10(%rsp)
  41:	8b 4c 24 10          	mov    0x10(%rsp),%ecx
  45:	c1 c1 0d             	rol    $0xd,%ecx
  48:	89 4c 24 10          	mov    %ecx,0x10(%rsp)
  4c:	8d 0c 89             	lea    (%rcx,%rcx,4),%ecx
  4f:	8d 99 64 6b 54 e6    	lea    -0x19ab949c(%rcx),%ebx
  55:	89 5c 24 10          	mov    %ebx,0x10(%rsp)
  59:	48 83 c2 04          	add    $0x4,%rdx
  5d:	48 39 f2             	cmp    %rsi,%rdx
  60:	75 c4                	jne    26 <core.internal.hash.bytesHash!(true).bytesHash(scope const(ubyte)[], ulong)+0x26>
  62:	31 c9                	xor    %ecx,%ecx
  64:	49 8b f0             	mov    %r8,%rsi
  67:	48 81 e6 03 00 00 00 	and    $0x3,%rsi
  6e:	48 83 fe 01          	cmp    $0x1,%rsi
  72:	74 1e                	je     92 <core.internal.hash.bytesHash!(true).bytesHash(scope const(ubyte)[], ulong)+0x92>
  74:	48 83 fe 02          	cmp    $0x2,%rsi
  78:	74 0f                	je     89 <core.internal.hash.bytesHash!(true).bytesHash(scope const(ubyte)[], ulong)+0x89>
  7a:	48 83 fe 03          	cmp    $0x3,%rsi
  7e:	74 02                	je     82 <core.internal.hash.bytesHash!(true).bytesHash(scope const(ubyte)[], ulong)+0x82>
  80:	eb 2f                	jmp    b1 <core.internal.hash.bytesHash!(true).bytesHash(scope const(ubyte)[], ulong)+0xb1>
  82:	0f b6 4a 02          	movzbl 0x2(%rdx),%ecx
  86:	c1 e1 10             	shl    $0x10,%ecx
  89:	0f b6 42 01          	movzbl 0x1(%rdx),%eax
  8d:	c1 e0 08             	shl    $0x8,%eax
  90:	31 c1                	xor    %eax,%ecx
  92:	40 0f b6 3a          	rex movzbl (%rdx),%edi
  96:	31 f9                	xor    %edi,%ecx
  98:	69 d1 51 2d 9e cc    	imul   $0xcc9e2d51,%ecx,%edx
  9e:	89 d1                	mov    %edx,%ecx
  a0:	c1 c2 0f             	rol    $0xf,%edx
  a3:	89 d1                	mov    %edx,%ecx
  a5:	69 d9 93 35 87 1b    	imul   $0x1b873593,%ecx,%ebx
  ab:	89 d9                	mov    %ebx,%ecx
  ad:	31 4c 24 10          	xor    %ecx,0x10(%rsp)
  b1:	44 31 44 24 10       	xor    %r8d,0x10(%rsp)
  b6:	0f b7 4c 24 12       	movzwl 0x12(%rsp),%ecx
  bb:	33 4c 24 10          	xor    0x10(%rsp),%ecx
  bf:	69 c1 6b ca eb 85    	imul   $0x85ebca6b,%ecx,%eax
  c5:	89 44 24 10          	mov    %eax,0x10(%rsp)
  c9:	c1 e8 0d             	shr    $0xd,%eax
  cc:	33 44 24 10          	xor    0x10(%rsp),%eax
  d0:	69 f0 35 ae b2 c2    	imul   $0xc2b2ae35,%eax,%esi
  d6:	89 74 24 10          	mov    %esi,0x10(%rsp)
  da:	0f b7 54 24 12       	movzwl 0x12(%rsp),%edx
  df:	31 54 24 10          	xor    %edx,0x10(%rsp)
  e3:	8b 44 24 10          	mov    0x10(%rsp),%eax
  e7:	48 8b 5c 24 08       	mov    0x8(%rsp),%rbx
  ec:	48 83 c4 18          	add    $0x18,%rsp
  f0:	c3                   	ret
  f1:	00 00                	add    %al,(%rax)
	...

Disassembly of section .text._D4core8internal4hash__T9get32bitsZQlFNaNbNiMPxhZk:

0000000000000000 <core.internal.hash.get32bits!().get32bits(scope const(ubyte)*)>:
   0:	8b 07                	mov    (%rdi),%eax
   2:	c3                   	ret
	...

Disassembly of section .text._D7error_d__T6ResultTmTS7kernels11DomainErrorZQBh__T7failureZQjFNaNbNiNfQBxZSQCx__TQCsTmTQCoZQDc:

0000000000000000 <error_d.Result!(ulong, kernels.DomainError).Result.failure!().failure(kernels.DomainError)>:
   0:	55                   	push   %rbp
   1:	48 8b ec             	mov    %rsp,%rbp
   4:	48 83 ec 60          	sub    $0x60,%rsp
   8:	48 89 5d a8          	mov    %rbx,-0x58(%rbp)
   c:	48 89 7d f0          	mov    %rdi,-0x10(%rbp)
  10:	48 89 75 f8          	mov    %rsi,-0x8(%rbp)
  14:	31 c0                	xor    %eax,%eax
  16:	89 45 c8             	mov    %eax,-0x38(%rbp)
  19:	89 45 cc             	mov    %eax,-0x34(%rbp)
  1c:	89 45 d0             	mov    %eax,-0x30(%rbp)
  1f:	89 45 d4             	mov    %eax,-0x2c(%rbp)
  22:	88 45 d0             	mov    %al,-0x30(%rbp)
  25:	48 8b 4d d0          	mov    -0x30(%rbp),%rcx
  29:	48 89 4d c0          	mov    %rcx,-0x40(%rbp)
  2d:	88 45 c8             	mov    %al,-0x38(%rbp)
  30:	48 8d 75 d8          	lea    -0x28(%rbp),%rsi
  34:	48 8d 7d f8          	lea    -0x8(%rbp),%rdi
  38:	e8 00 00 00 00       	call   3d <error_d.Result!(ulong, kernels.DomainError).Result.failure!().failure(kernels.DomainError)+0x3d>	39: R_X86_64_PLT32	_D4core8lifetime__T15moveEmplaceImplTS7kernels11DomainErrorZQBpFNaNbNiNfMKQBlNkMKQBsZv-0x4
  3d:	48 8b 75 d8          	mov    -0x28(%rbp),%rsi
  41:	48 8d 7d c0          	lea    -0x40(%rbp),%rdi
  45:	e8 00 00 00 00       	call   4a <error_d.Result!(ulong, kernels.DomainError).Result.failure!().failure(kernels.DomainError)+0x4a>	46: R_X86_64_PLT32	std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.this(error_d.Failure!(kernels.DomainError).Failure)-0x4
  4a:	48 8b 50 08          	mov    0x8(%rax),%rdx
  4e:	48 8b 00             	mov    (%rax),%rax
  51:	48 89 45 b0          	mov    %rax,-0x50(%rbp)
  55:	48 89 55 b8          	mov    %rdx,-0x48(%rbp)
  59:	48 8d 75 e0          	lea    -0x20(%rbp),%rsi
  5d:	48 8d 7d b0          	lea    -0x50(%rbp),%rdi
  61:	e8 00 00 00 00       	call   66 <error_d.Result!(ulong, kernels.DomainError).Result.failure!().failure(kernels.DomainError)+0x66>	62: R_X86_64_PLT32	_D4core8lifetime__T15moveEmplaceImplTS3std7sumtype__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTmZQlTSQBk__T7FailureTS7kernels11DomainErrorZQBgZQDkZQEwFNaNbNiNfMKQEsNkMKQEzZv-0x4
  66:	48 8b 5d e0          	mov    -0x20(%rbp),%rbx
  6a:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
  6e:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  72:	48 89 18             	mov    %rbx,(%rax)
  75:	48 89 48 08          	mov    %rcx,0x8(%rax)
  79:	48 8b 5d a8          	mov    -0x58(%rbp),%rbx
  7d:	48 8b e5             	mov    %rbp,%rsp
  80:	5d                   	pop    %rbp
  81:	c3                   	ret
	...

Disassembly of section .text._D4core8lifetime__T7forwardS_D3std7sumtype__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTmZQlTSQBk__T7FailureTS7kernels11DomainErrorZQBgZQDk6__ctorMFNcQDpZ5valueQDzZ__T3fwdS_DQFlQFk__TQFfTQFaTQEoTQDyZQFvQClMFNcQFwZQChQGdZQCbMFNaNbNdNiNfZQGx:

0000000000000000 <core.lifetime.forward!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.this(error_d.Empty).value).fwd!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.this(error_d.Empty).value).fwd()>:
   0:	55                   	push   %rbp
   1:	48 8b ec             	mov    %rsp,%rbp
   4:	48 83 ec 20          	sub    $0x20,%rsp
   8:	48 89 7d f0          	mov    %rdi,-0x10(%rbp)
   c:	48 89 75 f8          	mov    %rsi,-0x8(%rbp)
  10:	48 8d 75 e8          	lea    -0x18(%rbp),%rsi
  14:	48 8b 7d f0          	mov    -0x10(%rbp),%rdi
  18:	48 83 c7 18          	add    $0x18,%rdi
  1c:	e8 00 00 00 00       	call   21 <core.lifetime.forward!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.this(error_d.Empty).value).fwd!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.this(error_d.Empty).value).fwd()+0x21>	1d: R_X86_64_PLT32	_D4core8lifetime__T15moveEmplaceImplTS7error_d5EmptyZQBiFNaNbNiNfMKQBeNkMKQBlZv-0x4
  21:	8a 45 e8             	mov    -0x18(%rbp),%al
  24:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
  28:	88 01                	mov    %al,(%rcx)
  2a:	48 89 c8             	mov    %rcx,%rax
  2d:	48 8b e5             	mov    %rbp,%rsp
  30:	5d                   	pop    %rbp
  31:	c3                   	ret
	...

Disassembly of section .text._D4core8lifetime__T4moveTS7error_d5EmptyZQwFNaNbNiNfNkMKQBfZQBj:

0000000000000000 <_D4core8lifetime__T4moveTS7error_d5EmptyZQwFNaNbNiNfNkMKQBfZQBj>:
   0:	55                   	push   %rbp
   1:	48 8b ec             	mov    %rsp,%rbp
   4:	48 83 ec 20          	sub    $0x20,%rsp
   8:	48 89 7d f0          	mov    %rdi,-0x10(%rbp)
   c:	48 89 75 f8          	mov    %rsi,-0x8(%rbp)
  10:	48 8d 75 e8          	lea    -0x18(%rbp),%rsi
  14:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
  18:	e8 00 00 00 00       	call   1d <_D4core8lifetime__T4moveTS7error_d5EmptyZQwFNaNbNiNfNkMKQBfZQBj+0x1d>	19: R_X86_64_PLT32	_D4core8lifetime__T15moveEmplaceImplTS7error_d5EmptyZQBiFNaNbNiNfMKQBeNkMKQBlZv-0x4
  1d:	8a 45 e8             	mov    -0x18(%rbp),%al
  20:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  24:	88 01                	mov    %al,(%rcx)
  26:	48 89 c8             	mov    %rcx,%rax
  29:	48 8b e5             	mov    %rbp,%rsp
  2c:	5d                   	pop    %rbp
  2d:	c3                   	ret
	...

Disassembly of section .text._D4core8lifetime__T8moveImplTS7error_d5EmptyZQBaFNaNbNiNfNkMKQBgZQBk:

0000000000000000 <_D4core8lifetime__T8moveImplTS7error_d5EmptyZQBaFNaNbNiNfNkMKQBgZQBk>:
   0:	55                   	push   %rbp
   1:	48 8b ec             	mov    %rsp,%rbp
   4:	48 83 ec 20          	sub    $0x20,%rsp
   8:	48 89 7d f0          	mov    %rdi,-0x10(%rbp)
   c:	48 89 75 f8          	mov    %rsi,-0x8(%rbp)
  10:	48 8d 75 e8          	lea    -0x18(%rbp),%rsi
  14:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
  18:	e8 00 00 00 00       	call   1d <_D4core8lifetime__T8moveImplTS7error_d5EmptyZQBaFNaNbNiNfNkMKQBgZQBk+0x1d>	19: R_X86_64_PLT32	_D4core8lifetime__T15moveEmplaceImplTS7error_d5EmptyZQBiFNaNbNiNfMKQBeNkMKQBlZv-0x4
  1d:	8a 45 e8             	mov    -0x18(%rbp),%al
  20:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  24:	88 01                	mov    %al,(%rcx)
  26:	48 89 c8             	mov    %rcx,%rax
  29:	48 8b e5             	mov    %rbp,%rsp
  2c:	5d                   	pop    %rbp
  2d:	c3                   	ret
	...

Disassembly of section .text._D4core8lifetime__T15moveEmplaceImplTS7error_d5EmptyZQBiFNaNbNiNfMKQBeNkMKQBlZv:

0000000000000000 <_D4core8lifetime__T15moveEmplaceImplTS7error_d5EmptyZQBiFNaNbNiNfMKQBeNkMKQBlZv>:
   0:	48 83 ec 18          	sub    $0x18,%rsp
   4:	48 89 7c 24 08       	mov    %rdi,0x8(%rsp)
   9:	48 89 74 24 10       	mov    %rsi,0x10(%rsp)
   e:	0f b6 07             	movzbl (%rdi),%eax
  11:	88 06                	mov    %al,(%rsi)
  13:	48 83 c4 18          	add    $0x18,%rsp
  17:	c3                   	ret

Disassembly of section .text._D4core8lifetime__T15trustedMoveImplTS7error_d5EmptyZQBiFNaNbNiNeNkMKQBgZQBk:

0000000000000000 <_D4core8lifetime__T15trustedMoveImplTS7error_d5EmptyZQBiFNaNbNiNeNkMKQBgZQBk>:
   0:	55                   	push   %rbp
   1:	48 8b ec             	mov    %rsp,%rbp
   4:	48 83 ec 10          	sub    $0x10,%rsp
   8:	48 89 7d f0          	mov    %rdi,-0x10(%rbp)
   c:	48 89 75 f8          	mov    %rsi,-0x8(%rbp)
  10:	48 8b 75 f0          	mov    -0x10(%rbp),%rsi
  14:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
  18:	e8 00 00 00 00       	call   1d <_D4core8lifetime__T15trustedMoveImplTS7error_d5EmptyZQBiFNaNbNiNeNkMKQBgZQBk+0x1d>	19: R_X86_64_PLT32	_D4core8lifetime__T15moveEmplaceImplTS7error_d5EmptyZQBiFNaNbNiNfMKQBeNkMKQBlZv-0x4
  1d:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  21:	48 8b e5             	mov    %rbp,%rsp
  24:	5d                   	pop    %rbp
  25:	c3                   	ret
	...

Disassembly of section .text._D4core8lifetime__T7forwardS_D3std7sumtype__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTmZQlTSQBk__T7FailureTS7kernels11DomainErrorZQBgZQDk6__ctorMFNcQCfZ5valueQCpZ__T3fwdS_DQFlQFk__TQFfTQFaTQEoTQDyZQFvQClMFNcQEmZQChQEtZQCbMFNaNbNdNiNfZQFn:

0000000000000000 <core.lifetime.forward!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.this(error_d.Failure!(kernels.DomainError).Failure).value).fwd!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.this(error_d.Failure!(kernels.DomainError).Failure).value).fwd()>:
   0:	55                   	push   %rbp
   1:	48 8b ec             	mov    %rsp,%rbp
   4:	48 83 ec 10          	sub    $0x10,%rsp
   8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
   c:	48 8d 75 f0          	lea    -0x10(%rbp),%rsi
  10:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
  14:	48 83 c7 08          	add    $0x8,%rdi
  18:	e8 00 00 00 00       	call   1d <core.lifetime.forward!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.this(error_d.Failure!(kernels.DomainError).Failure).value).fwd!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.this(error_d.Failure!(kernels.DomainError).Failure).value).fwd()+0x1d>	19: R_X86_64_PLT32	_D4core8lifetime__T15moveEmplaceImplTS7error_d__T7FailureTS7kernels11DomainErrorZQBgZQCoFNaNbNiNfMKQCkNkMKQCrZv-0x4
  1d:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  21:	48 8b e5             	mov    %rbp,%rsp
  24:	5d                   	pop    %rbp
  25:	c3                   	ret
	...

Disassembly of section .text._D4core8lifetime__T4moveTS7error_d__T7FailureTS7kernels11DomainErrorZQBgZQCcFNaNbNiNfNkMKQCmZQCq:

0000000000000000 <_D4core8lifetime__T4moveTS7error_d__T7FailureTS7kernels11DomainErrorZQBgZQCcFNaNbNiNfNkMKQCmZQCq>:
   0:	55                   	push   %rbp
   1:	48 8b ec             	mov    %rsp,%rbp
   4:	48 83 ec 10          	sub    $0x10,%rsp
   8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
   c:	48 8d 75 f0          	lea    -0x10(%rbp),%rsi
  10:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
  14:	e8 00 00 00 00       	call   19 <_D4core8lifetime__T4moveTS7error_d__T7FailureTS7kernels11DomainErrorZQBgZQCcFNaNbNiNfNkMKQCmZQCq+0x19>	15: R_X86_64_PLT32	_D4core8lifetime__T15moveEmplaceImplTS7error_d__T7FailureTS7kernels11DomainErrorZQBgZQCoFNaNbNiNfMKQCkNkMKQCrZv-0x4
  19:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  1d:	48 8b e5             	mov    %rbp,%rsp
  20:	5d                   	pop    %rbp
  21:	c3                   	ret
	...

Disassembly of section .text._D4core8lifetime__T8moveImplTS7error_d__T7FailureTS7kernels11DomainErrorZQBgZQCgFNaNbNiNfNkMKQCmZQCq:

0000000000000000 <_D4core8lifetime__T8moveImplTS7error_d__T7FailureTS7kernels11DomainErrorZQBgZQCgFNaNbNiNfNkMKQCmZQCq>:
   0:	55                   	push   %rbp
   1:	48 8b ec             	mov    %rsp,%rbp
   4:	48 83 ec 10          	sub    $0x10,%rsp
   8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
   c:	48 8d 75 f0          	lea    -0x10(%rbp),%rsi
  10:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
  14:	e8 00 00 00 00       	call   19 <_D4core8lifetime__T8moveImplTS7error_d__T7FailureTS7kernels11DomainErrorZQBgZQCgFNaNbNiNfNkMKQCmZQCq+0x19>	15: R_X86_64_PLT32	_D4core8lifetime__T15moveEmplaceImplTS7error_d__T7FailureTS7kernels11DomainErrorZQBgZQCoFNaNbNiNfMKQCkNkMKQCrZv-0x4
  19:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  1d:	48 8b e5             	mov    %rbp,%rsp
  20:	5d                   	pop    %rbp
  21:	c3                   	ret
	...

Disassembly of section .text._D4core8lifetime__T15moveEmplaceImplTS7error_d__T7FailureTS7kernels11DomainErrorZQBgZQCoFNaNbNiNfMKQCkNkMKQCrZv:

0000000000000000 <_D4core8lifetime__T15moveEmplaceImplTS7error_d__T7FailureTS7kernels11DomainErrorZQBgZQCoFNaNbNiNfMKQCkNkMKQCrZv>:
   0:	48 83 ec 18          	sub    $0x18,%rsp
   4:	48 89 7c 24 08       	mov    %rdi,0x8(%rsp)
   9:	48 89 74 24 10       	mov    %rsi,0x10(%rsp)
   e:	48 8b 07             	mov    (%rdi),%rax
  11:	48 89 06             	mov    %rax,(%rsi)
  14:	48 83 c4 18          	add    $0x18,%rsp
  18:	c3                   	ret
  19:	00 00                	add    %al,(%rax)
	...

Disassembly of section .text._D4core8lifetime__T15trustedMoveImplTS7error_d__T7FailureTS7kernels11DomainErrorZQBgZQCoFNaNbNiNeNkMKQCmZQCq:

0000000000000000 <_D4core8lifetime__T15trustedMoveImplTS7error_d__T7FailureTS7kernels11DomainErrorZQBgZQCoFNaNbNiNeNkMKQCmZQCq>:
   0:	55                   	push   %rbp
   1:	48 8b ec             	mov    %rsp,%rbp
   4:	48 83 ec 10          	sub    $0x10,%rsp
   8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
   c:	48 8d 75 f0          	lea    -0x10(%rbp),%rsi
  10:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
  14:	e8 00 00 00 00       	call   19 <_D4core8lifetime__T15trustedMoveImplTS7error_d__T7FailureTS7kernels11DomainErrorZQBgZQCoFNaNbNiNeNkMKQCmZQCq+0x19>	15: R_X86_64_PLT32	_D4core8lifetime__T15moveEmplaceImplTS7error_d__T7FailureTS7kernels11DomainErrorZQBgZQCoFNaNbNiNfMKQCkNkMKQCrZv-0x4
  19:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  1d:	48 8b e5             	mov    %rbp,%rsp
  20:	5d                   	pop    %rbp
  21:	c3                   	ret
	...

Disassembly of section .text._D4core8lifetime__T4moveTS3std7sumtype__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTmZQlTSQBk__T7FailureTS7kernels11DomainErrorZQBgZQDkZQEkFNaNbNiNfNkMKQEuZQEy:

0000000000000000 <_D4core8lifetime__T4moveTS3std7sumtype__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTmZQlTSQBk__T7FailureTS7kernels11DomainErrorZQBgZQDkZQEkFNaNbNiNfNkMKQEuZQEy>:
   0:	55                   	push   %rbp
   1:	48 8b ec             	mov    %rsp,%rbp
   4:	48 83 ec 20          	sub    $0x20,%rsp
   8:	48 89 7d f0          	mov    %rdi,-0x10(%rbp)
   c:	48 89 75 f8          	mov    %rsi,-0x8(%rbp)
  10:	48 8d 75 e0          	lea    -0x20(%rbp),%rsi
  14:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
  18:	e8 00 00 00 00       	call   1d <_D4core8lifetime__T4moveTS3std7sumtype__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTmZQlTSQBk__T7FailureTS7kernels11DomainErrorZQBgZQDkZQEkFNaNbNiNfNkMKQEuZQEy+0x1d>	19: R_X86_64_PLT32	_D4core8lifetime__T15moveEmplaceImplTS3std7sumtype__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTmZQlTSQBk__T7FailureTS7kernels11DomainErrorZQBgZQDkZQEwFNaNbNiNfMKQEsNkMKQEzZv-0x4
  1d:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  21:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
  25:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
  29:	48 89 02             	mov    %rax,(%rdx)
  2c:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
  30:	48 89 d0             	mov    %rdx,%rax
  33:	48 8b e5             	mov    %rbp,%rsp
  36:	5d                   	pop    %rbp
  37:	c3                   	ret

Disassembly of section .text._D4core8lifetime__T8moveImplTS3std7sumtype__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTmZQlTSQBk__T7FailureTS7kernels11DomainErrorZQBgZQDkZQEoFNaNbNiNfNkMKQEuZQEy:

0000000000000000 <_D4core8lifetime__T8moveImplTS3std7sumtype__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTmZQlTSQBk__T7FailureTS7kernels11DomainErrorZQBgZQDkZQEoFNaNbNiNfNkMKQEuZQEy>:
   0:	55                   	push   %rbp
   1:	48 8b ec             	mov    %rsp,%rbp
   4:	48 83 ec 20          	sub    $0x20,%rsp
   8:	48 89 7d f0          	mov    %rdi,-0x10(%rbp)
   c:	48 89 75 f8          	mov    %rsi,-0x8(%rbp)
  10:	48 8d 75 e0          	lea    -0x20(%rbp),%rsi
  14:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
  18:	e8 00 00 00 00       	call   1d <_D4core8lifetime__T8moveImplTS3std7sumtype__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTmZQlTSQBk__T7FailureTS7kernels11DomainErrorZQBgZQDkZQEoFNaNbNiNfNkMKQEuZQEy+0x1d>	19: R_X86_64_PLT32	_D4core8lifetime__T15moveEmplaceImplTS3std7sumtype__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTmZQlTSQBk__T7FailureTS7kernels11DomainErrorZQBgZQDkZQEwFNaNbNiNfMKQEsNkMKQEzZv-0x4
  1d:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
  21:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  25:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  29:	48 89 01             	mov    %rax,(%rcx)
  2c:	48 89 51 08          	mov    %rdx,0x8(%rcx)
  30:	48 89 c8             	mov    %rcx,%rax
  33:	48 8b e5             	mov    %rbp,%rsp
  36:	5d                   	pop    %rbp
  37:	c3                   	ret

Disassembly of section .text._D4core8lifetime__T15moveEmplaceImplTS3std7sumtype__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTmZQlTSQBk__T7FailureTS7kernels11DomainErrorZQBgZQDkZQEwFNaNbNiNfMKQEsNkMKQEzZv:

0000000000000000 <_D4core8lifetime__T15moveEmplaceImplTS3std7sumtype__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTmZQlTSQBk__T7FailureTS7kernels11DomainErrorZQBgZQDkZQEwFNaNbNiNfMKQEsNkMKQEzZv>:
   0:	55                   	push   %rbp
   1:	48 8b ec             	mov    %rsp,%rbp
   4:	48 83 ec 10          	sub    $0x10,%rsp
   8:	48 89 7d f0          	mov    %rdi,-0x10(%rbp)
   c:	48 89 75 f8          	mov    %rsi,-0x8(%rbp)
  10:	ba 10 00 00 00       	mov    $0x10,%edx
  15:	48 89 fe             	mov    %rdi,%rsi
  18:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
  1c:	e8 00 00 00 00       	call   21 <_D4core8lifetime__T15moveEmplaceImplTS3std7sumtype__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTmZQlTSQBk__T7FailureTS7kernels11DomainErrorZQBgZQDkZQEwFNaNbNiNfMKQEsNkMKQEzZv+0x21>	1d: R_X86_64_PLT32	memcpy-0x4
  21:	48 8b e5             	mov    %rbp,%rsp
  24:	5d                   	pop    %rbp
  25:	c3                   	ret
	...

Disassembly of section .text._D3std7sumtype__T5matchSQwQu14destroyIfOwnerZ__TQBfTSQBzQBy__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTmZQlTSQBk__T7FailureTS7kernels11DomainErrorZQBgZQDkZQFhFNaNbNiNfKQElZv:

0000000000000000 <std.sumtype.match!(std.sumtype.destroyIfOwner).match!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).match(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)>:
   0:	55                   	push   %rbp
   1:	48 8b ec             	mov    %rsp,%rbp
   4:	48 83 ec 10          	sub    $0x10,%rsp
   8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
   c:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
  10:	e8 00 00 00 00       	call   15 <std.sumtype.match!(std.sumtype.destroyIfOwner).match!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).match(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)+0x15>	11: R_X86_64_PLT32	std.sumtype.matchImpl!(1, std.sumtype.destroyIfOwner).matchImpl!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).matchImpl(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)-0x4
  15:	48 8b e5             	mov    %rbp,%rsp
  18:	5d                   	pop    %rbp
  19:	c3                   	ret
	...

Disassembly of section .text._D3std7sumtype__T9matchImplVEQBb8typecons__T4FlagVAyaa10_65786861757374697665ZQBii1SQDeQDd14destroyIfOwnerZ__TQDpTSQEjQEi__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTmZQlTSQBk__T7FailureTS7kernels11DomainErrorZQBgZQDkZQHrFNaNbNiNfKQElZv:

0000000000000000 <std.sumtype.matchImpl!(1, std.sumtype.destroyIfOwner).matchImpl!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).matchImpl(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)>:
   0:	0f b6 4f 08          	movzbl 0x8(%rdi),%ecx
   4:	0f b6 c1             	movzbl %cl,%eax
   7:	85 c0                	test   %eax,%eax
   9:	74 0c                	je     17 <std.sumtype.matchImpl!(1, std.sumtype.destroyIfOwner).matchImpl!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).matchImpl(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)+0x17>
   b:	83 f8 01             	cmp    $0x1,%eax
   e:	74 07                	je     17 <std.sumtype.matchImpl!(1, std.sumtype.destroyIfOwner).matchImpl!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).matchImpl(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)+0x17>
  10:	83 f8 02             	cmp    $0x2,%eax
  13:	74 02                	je     17 <std.sumtype.matchImpl!(1, std.sumtype.destroyIfOwner).matchImpl!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).matchImpl(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)+0x17>
  15:	eb 01                	jmp    18 <std.sumtype.matchImpl!(1, std.sumtype.destroyIfOwner).matchImpl!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).matchImpl(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)+0x18>
  17:	c3                   	ret
  18:	0f 0b                	ud2
  1a:	c3                   	ret
	...

Disassembly of section .text._D3std7sumtype__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTmZQlTSQBk__T7FailureTS7kernels11DomainErrorZQBgZQDk__T10getByIndexVmi0ZQrMNgFNaNbNcNiNeZNgSQErQEm:

0000000000000000 <std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.getByIndex!(0uL).getByIndex() inout>:
   0:	48 89 f8             	mov    %rdi,%rax
   3:	c3                   	ret

Disassembly of section .text._D3std7sumtype__T14destroyIfOwnerTS7error_d5EmptyZQBhFNaNbNiNfKQBdZv:

0000000000000000 <std.sumtype.destroyIfOwner!(error_d.Empty).destroyIfOwner(ref error_d.Empty)>:
   0:	c3                   	ret
   1:	00 00                	add    %al,(%rax)
	...

Disassembly of section .text._D3std7sumtype__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTmZQlTSQBk__T7FailureTS7kernels11DomainErrorZQBgZQDk__T10getByIndexVmi1ZQrMNgFNaNbNcNiNeZNgSQEr__TQEcTmZQEi:

0000000000000000 <std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.getByIndex!(1uL).getByIndex() inout>:
   0:	48 89 f8             	mov    %rdi,%rax
   3:	c3                   	ret

Disassembly of section .text._D3std7sumtype__T14destroyIfOwnerTS7error_d__T7SuccessTmZQlZQBrFNaNbNiNfKQBnZv:

0000000000000000 <std.sumtype.destroyIfOwner!(error_d.Success!(ulong).Success).destroyIfOwner(ref error_d.Success!(ulong).Success)>:
   0:	c3                   	ret
   1:	00 00                	add    %al,(%rax)
	...

Disassembly of section .text._D3std7sumtype__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTmZQlTSQBk__T7FailureTS7kernels11DomainErrorZQBgZQDk__T10getByIndexVmi2ZQrMNgFNaNbNcNiNeZNgSQEr__TQDhTQDcZQDp:

0000000000000000 <std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.getByIndex!(2uL).getByIndex() inout>:
   0:	48 89 f8             	mov    %rdi,%rax
   3:	c3                   	ret

Disassembly of section .text._D3std7sumtype__T14destroyIfOwnerTS7error_d__T7FailureTS7kernels11DomainErrorZQBgZQCnFNaNbNiNfKQCjZv:

0000000000000000 <std.sumtype.destroyIfOwner!(error_d.Failure!(kernels.DomainError).Failure).destroyIfOwner(ref error_d.Failure!(kernels.DomainError).Failure)>:
   0:	c3                   	ret
   1:	00 00                	add    %al,(%rax)
	...

Disassembly of section .text._D4core8lifetime__T7forwardS_D3std7sumtype__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTmZQlTSQBk__T7FailureTS7kernels11DomainErrorZQBgZQDk8opAssignMFNcQDrZ3rhsQDzZ__T3fwdS_DQFlQFk__TQFfTQFaTQEoTQDyZQFvQClMFNcQFwZQCfQGdZQCbMFNaNbNdNiNfZQGx:

0000000000000000 <core.lifetime.forward!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(error_d.Empty).rhs).fwd!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(error_d.Empty).rhs).fwd()>:
   0:	55                   	push   %rbp
   1:	48 8b ec             	mov    %rsp,%rbp
   4:	48 83 ec 20          	sub    $0x20,%rsp
   8:	48 89 7d f0          	mov    %rdi,-0x10(%rbp)
   c:	48 89 75 f8          	mov    %rsi,-0x8(%rbp)
  10:	48 8d 75 e8          	lea    -0x18(%rbp),%rsi
  14:	48 8b 7d f0          	mov    -0x10(%rbp),%rdi
  18:	48 83 c7 18          	add    $0x18,%rdi
  1c:	e8 00 00 00 00       	call   21 <core.lifetime.forward!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(error_d.Empty).rhs).fwd!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(error_d.Empty).rhs).fwd()+0x21>	1d: R_X86_64_PLT32	_D4core8lifetime__T15moveEmplaceImplTS7error_d5EmptyZQBiFNaNbNiNfMKQBeNkMKQBlZv-0x4
  21:	8a 45 e8             	mov    -0x18(%rbp),%al
  24:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
  28:	88 01                	mov    %al,(%rcx)
  2a:	48 89 c8             	mov    %rcx,%rax
  2d:	48 8b e5             	mov    %rbp,%rsp
  30:	5d                   	pop    %rbp
  31:	c3                   	ret
	...

Disassembly of section .text._D3std7sumtype__T5matchSQwQu__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTmZQlTSQBk__T7FailureTS7kernels11DomainErrorZQBgZQDk8opAssignMFNcSQFeQFd__TQEkTQEfTQDtTQDdZQFaZ17__lambda_L697_C24Z__TQGpTQCfZQGxMFNaNbNiNfKQCxZv:

0000000000000000 <std.sumtype.match!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).__lambda_L697_C24).match!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).match(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)>:
   0:	55                   	push   %rbp
   1:	48 8b ec             	mov    %rsp,%rbp
   4:	48 83 ec 10          	sub    $0x10,%rsp
   8:	48 89 7d f0          	mov    %rdi,-0x10(%rbp)
   c:	48 89 75 f8          	mov    %rsi,-0x8(%rbp)
  10:	48 8b 75 f8          	mov    -0x8(%rbp),%rsi
  14:	48 8b 7d f0          	mov    -0x10(%rbp),%rdi
  18:	e8 00 00 00 00       	call   1d <std.sumtype.match!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).__lambda_L697_C24).match!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).match(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)+0x1d>	19: R_X86_64_PLT32	std.sumtype.matchImpl!(1, std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).__lambda_L697_C24).matchImpl!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).matchImpl(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)-0x4
  1d:	48 8b e5             	mov    %rbp,%rsp
  20:	5d                   	pop    %rbp
  21:	c3                   	ret
	...

Disassembly of section .text._D3std7sumtype__T9matchImplVEQBb8typecons__T4FlagVAyaa10_65786861757374697665ZQBii1SQDeQDd__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTmZQlTSQBk__T7FailureTS7kernels11DomainErrorZQBgZQDk8opAssignMFNcSQHoQHn__TQEkTQEfTQDtTQDdZQFaZ17__lambda_L697_C24Z__TQIzTQCfZQJhMFNaNbNiNfKQCxZv:

0000000000000000 <std.sumtype.matchImpl!(1, std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).__lambda_L697_C24).matchImpl!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).matchImpl(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)>:
   0:	55                   	push   %rbp
   1:	48 8b ec             	mov    %rsp,%rbp
   4:	53                   	push   %rbx
   5:	41 54                	push   %r12
   7:	49 89 fc             	mov    %rdi,%r12
   a:	48 89 f3             	mov    %rsi,%rbx
   d:	0f b6 4b 08          	movzbl 0x8(%rbx),%ecx
  11:	0f b6 c1             	movzbl %cl,%eax
  14:	85 c0                	test   %eax,%eax
  16:	74 0c                	je     24 <std.sumtype.matchImpl!(1, std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).__lambda_L697_C24).matchImpl!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).matchImpl(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)+0x24>
  18:	83 f8 01             	cmp    $0x1,%eax
  1b:	74 14                	je     31 <std.sumtype.matchImpl!(1, std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).__lambda_L697_C24).matchImpl!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).matchImpl(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)+0x31>
  1d:	83 f8 02             	cmp    $0x2,%eax
  20:	74 1c                	je     3e <std.sumtype.matchImpl!(1, std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).__lambda_L697_C24).matchImpl!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).matchImpl(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)+0x3e>
  22:	eb 2a                	jmp    4e <std.sumtype.matchImpl!(1, std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).__lambda_L697_C24).matchImpl!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).matchImpl(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)+0x4e>
  24:	48 8b f3             	mov    %rbx,%rsi
  27:	49 8b fc             	mov    %r12,%rdi
  2a:	e8 00 00 00 00       	call   2f <std.sumtype.matchImpl!(1, std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).__lambda_L697_C24).matchImpl!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).matchImpl(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)+0x2f>	2b: R_X86_64_PLT32	std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).__lambda_L697_C24!(error_d.Empty).__lambda_L697_C24(ref error_d.Empty)-0x4
  2f:	eb 18                	jmp    49 <std.sumtype.matchImpl!(1, std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).__lambda_L697_C24).matchImpl!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).matchImpl(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)+0x49>
  31:	48 8b f3             	mov    %rbx,%rsi
  34:	49 8b fc             	mov    %r12,%rdi
  37:	e8 00 00 00 00       	call   3c <std.sumtype.matchImpl!(1, std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).__lambda_L697_C24).matchImpl!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).matchImpl(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)+0x3c>	38: R_X86_64_PLT32	std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).__lambda_L697_C24!(error_d.Success!(ulong).Success).__lambda_L697_C24(ref error_d.Success!(ulong).Success)-0x4
  3c:	eb 0b                	jmp    49 <std.sumtype.matchImpl!(1, std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).__lambda_L697_C24).matchImpl!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).matchImpl(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)+0x49>
  3e:	48 8b f3             	mov    %rbx,%rsi
  41:	49 8b fc             	mov    %r12,%rdi
  44:	e8 00 00 00 00       	call   49 <std.sumtype.matchImpl!(1, std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).__lambda_L697_C24).matchImpl!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).matchImpl(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)+0x49>	45: R_X86_64_PLT32	std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).__lambda_L697_C24!(error_d.Failure!(kernels.DomainError).Failure).__lambda_L697_C24(ref error_d.Failure!(kernels.DomainError).Failure)-0x4
  49:	41 5c                	pop    %r12
  4b:	5b                   	pop    %rbx
  4c:	5d                   	pop    %rbp
  4d:	c3                   	ret
  4e:	0f 0b                	ud2
  50:	41 5c                	pop    %r12
  52:	5b                   	pop    %rbx
  53:	5d                   	pop    %rbp
  54:	c3                   	ret
  55:	00 00                	add    %al,(%rax)
	...

Disassembly of section .text._D3std7sumtype__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTmZQlTSQBk__T7FailureTS7kernels11DomainErrorZQBgZQDk8opAssignMFNcSQEqQEp__TQEkTQEfTQDtTQDdZQFaZ__T17__lambda_L697_C24TQFsZQyMFNaNbNiNfKQGjZv:

0000000000000000 <std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).__lambda_L697_C24!(error_d.Empty).__lambda_L697_C24(ref error_d.Empty)>:
   0:	55                   	push   %rbp
   1:	48 8b ec             	mov    %rsp,%rbp
   4:	48 83 ec 30          	sub    $0x30,%rsp
   8:	48 89 5d d8          	mov    %rbx,-0x28(%rbp)
   c:	48 89 7d f0          	mov    %rdi,-0x10(%rbp)
  10:	48 89 75 f8          	mov    %rsi,-0x8(%rbp)
  14:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  18:	48 8b 08             	mov    (%rax),%rcx
  1b:	48 89 4d e0          	mov    %rcx,-0x20(%rbp)
  1f:	48 83 ec 08          	sub    $0x8,%rsp
  23:	48 83 ec 08          	sub    $0x8,%rsp
  27:	48 8d 75 e8          	lea    -0x18(%rbp),%rsi
  2b:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
  2f:	e8 00 00 00 00       	call   34 <std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).__lambda_L697_C24!(error_d.Empty).__lambda_L697_C24(ref error_d.Empty)+0x34>	30: R_X86_64_PLT32	_D4core8lifetime__T15moveEmplaceImplTS7error_d5EmptyZQBiFNaNbNiNfMKQBeNkMKQBlZv-0x4
  34:	48 83 c4 08          	add    $0x8,%rsp
  38:	48 8d 5d e8          	lea    -0x18(%rbp),%rbx
  3c:	ff 33                	push   (%rbx)
  3e:	48 8b 7d e0          	mov    -0x20(%rbp),%rdi
  42:	e8 00 00 00 00       	call   47 <std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).__lambda_L697_C24!(error_d.Empty).__lambda_L697_C24(ref error_d.Empty)+0x47>	43: R_X86_64_PLT32	std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(error_d.Empty)-0x4
  47:	48 83 c4 10          	add    $0x10,%rsp
  4b:	48 8b 5d d8          	mov    -0x28(%rbp),%rbx
  4f:	48 8b e5             	mov    %rbp,%rsp
  52:	5d                   	pop    %rbp
  53:	c3                   	ret

Disassembly of section .text._D3std7sumtype__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTmZQlTSQBk__T7FailureTS7kernels11DomainErrorZQBgZQDk8opAssignMFNcSQEqQEp__TQEkTQEfTQDtTQDdZQFaZ__T17__lambda_L697_C24TQFcZQyMFNaNbNiNfKQFtZv:

0000000000000000 <std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).__lambda_L697_C24!(error_d.Success!(ulong).Success).__lambda_L697_C24(ref error_d.Success!(ulong).Success)>:
   0:	55                   	push   %rbp
   1:	48 8b ec             	mov    %rsp,%rbp
   4:	48 83 ec 20          	sub    $0x20,%rsp
   8:	48 89 7d f0          	mov    %rdi,-0x10(%rbp)
   c:	48 89 75 f8          	mov    %rsi,-0x8(%rbp)
  10:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  14:	48 8b 08             	mov    (%rax),%rcx
  17:	48 89 4d e0          	mov    %rcx,-0x20(%rbp)
  1b:	48 8d 75 e8          	lea    -0x18(%rbp),%rsi
  1f:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
  23:	e8 00 00 00 00       	call   28 <std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).__lambda_L697_C24!(error_d.Success!(ulong).Success).__lambda_L697_C24(ref error_d.Success!(ulong).Success)+0x28>	24: R_X86_64_PLT32	_D4core8lifetime__T15moveEmplaceImplTS7error_d__T7SuccessTmZQlZQBsFNaNbNiNfMKQBoNkMKQBvZv-0x4
  28:	48 8b 75 e8          	mov    -0x18(%rbp),%rsi
  2c:	48 8b 7d e0          	mov    -0x20(%rbp),%rdi
  30:	e8 00 00 00 00       	call   35 <std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).__lambda_L697_C24!(error_d.Success!(ulong).Success).__lambda_L697_C24(ref error_d.Success!(ulong).Success)+0x35>	31: R_X86_64_PLT32	std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(error_d.Success!(ulong).Success)-0x4
  35:	48 8b e5             	mov    %rbp,%rsp
  38:	5d                   	pop    %rbp
  39:	c3                   	ret
	...

Disassembly of section .text._D3std7sumtype__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTmZQlTSQBk__T7FailureTS7kernels11DomainErrorZQBgZQDk8opAssignMFNcSQEqQEp__TQEkTQEfTQDtTQDdZQFaZ__T17__lambda_L697_C24TQEiZQyMFNaNbNiNfKQEzZv:

0000000000000000 <std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).__lambda_L697_C24!(error_d.Failure!(kernels.DomainError).Failure).__lambda_L697_C24(ref error_d.Failure!(kernels.DomainError).Failure)>:
   0:	55                   	push   %rbp
   1:	48 8b ec             	mov    %rsp,%rbp
   4:	48 83 ec 20          	sub    $0x20,%rsp
   8:	48 89 7d f0          	mov    %rdi,-0x10(%rbp)
   c:	48 89 75 f8          	mov    %rsi,-0x8(%rbp)
  10:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  14:	48 8b 08             	mov    (%rax),%rcx
  17:	48 89 4d e0          	mov    %rcx,-0x20(%rbp)
  1b:	48 8d 75 e8          	lea    -0x18(%rbp),%rsi
  1f:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
  23:	e8 00 00 00 00       	call   28 <std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).__lambda_L697_C24!(error_d.Failure!(kernels.DomainError).Failure).__lambda_L697_C24(ref error_d.Failure!(kernels.DomainError).Failure)+0x28>	24: R_X86_64_PLT32	_D4core8lifetime__T15moveEmplaceImplTS7error_d__T7FailureTS7kernels11DomainErrorZQBgZQCoFNaNbNiNfMKQCkNkMKQCrZv-0x4
  28:	48 8b 75 e8          	mov    -0x18(%rbp),%rsi
  2c:	48 8b 7d e0          	mov    -0x20(%rbp),%rdi
  30:	e8 00 00 00 00       	call   35 <std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).__lambda_L697_C24!(error_d.Failure!(kernels.DomainError).Failure).__lambda_L697_C24(ref error_d.Failure!(kernels.DomainError).Failure)+0x35>	31: R_X86_64_PLT32	std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(error_d.Failure!(kernels.DomainError).Failure)-0x4
  35:	48 8b e5             	mov    %rbp,%rsp
  38:	5d                   	pop    %rbp
  39:	c3                   	ret
	...

Disassembly of section .text._D4core8lifetime__T4moveTS7error_d__T7SuccessTmZQlZQBgFNaNbNiNfNkMKQBqZQBu:

0000000000000000 <_D4core8lifetime__T4moveTS7error_d__T7SuccessTmZQlZQBgFNaNbNiNfNkMKQBqZQBu>:
   0:	55                   	push   %rbp
   1:	48 8b ec             	mov    %rsp,%rbp
   4:	48 83 ec 10          	sub    $0x10,%rsp
   8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
   c:	48 8d 75 f0          	lea    -0x10(%rbp),%rsi
  10:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
  14:	e8 00 00 00 00       	call   19 <_D4core8lifetime__T4moveTS7error_d__T7SuccessTmZQlZQBgFNaNbNiNfNkMKQBqZQBu+0x19>	15: R_X86_64_PLT32	_D4core8lifetime__T15moveEmplaceImplTS7error_d__T7SuccessTmZQlZQBsFNaNbNiNfMKQBoNkMKQBvZv-0x4
  19:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  1d:	48 8b e5             	mov    %rbp,%rsp
  20:	5d                   	pop    %rbp
  21:	c3                   	ret
	...

Disassembly of section .text._D4core8lifetime__T8moveImplTS7error_d__T7SuccessTmZQlZQBkFNaNbNiNfNkMKQBqZQBu:

0000000000000000 <_D4core8lifetime__T8moveImplTS7error_d__T7SuccessTmZQlZQBkFNaNbNiNfNkMKQBqZQBu>:
   0:	55                   	push   %rbp
   1:	48 8b ec             	mov    %rsp,%rbp
   4:	48 83 ec 10          	sub    $0x10,%rsp
   8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
   c:	48 8d 75 f0          	lea    -0x10(%rbp),%rsi
  10:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
  14:	e8 00 00 00 00       	call   19 <_D4core8lifetime__T8moveImplTS7error_d__T7SuccessTmZQlZQBkFNaNbNiNfNkMKQBqZQBu+0x19>	15: R_X86_64_PLT32	_D4core8lifetime__T15moveEmplaceImplTS7error_d__T7SuccessTmZQlZQBsFNaNbNiNfMKQBoNkMKQBvZv-0x4
  19:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  1d:	48 8b e5             	mov    %rbp,%rsp
  20:	5d                   	pop    %rbp
  21:	c3                   	ret
	...

Disassembly of section .text._D4core8lifetime__T15moveEmplaceImplTS7error_d__T7SuccessTmZQlZQBsFNaNbNiNfMKQBoNkMKQBvZv:

0000000000000000 <_D4core8lifetime__T15moveEmplaceImplTS7error_d__T7SuccessTmZQlZQBsFNaNbNiNfMKQBoNkMKQBvZv>:
   0:	48 83 ec 18          	sub    $0x18,%rsp
   4:	48 89 7c 24 08       	mov    %rdi,0x8(%rsp)
   9:	48 89 74 24 10       	mov    %rsi,0x10(%rsp)
   e:	48 8b 07             	mov    (%rdi),%rax
  11:	48 89 06             	mov    %rax,(%rsi)
  14:	48 83 c4 18          	add    $0x18,%rsp
  18:	c3                   	ret
  19:	00 00                	add    %al,(%rax)
	...

Disassembly of section .text._D4core8lifetime__T15trustedMoveImplTS7error_d__T7SuccessTmZQlZQBsFNaNbNiNeNkMKQBqZQBu:

0000000000000000 <_D4core8lifetime__T15trustedMoveImplTS7error_d__T7SuccessTmZQlZQBsFNaNbNiNeNkMKQBqZQBu>:
   0:	55                   	push   %rbp
   1:	48 8b ec             	mov    %rsp,%rbp
   4:	48 83 ec 10          	sub    $0x10,%rsp
   8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
   c:	48 8d 75 f0          	lea    -0x10(%rbp),%rsi
  10:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
  14:	e8 00 00 00 00       	call   19 <_D4core8lifetime__T15trustedMoveImplTS7error_d__T7SuccessTmZQlZQBsFNaNbNiNeNkMKQBqZQBu+0x19>	15: R_X86_64_PLT32	_D4core8lifetime__T15moveEmplaceImplTS7error_d__T7SuccessTmZQlZQBsFNaNbNiNfMKQBoNkMKQBvZv-0x4
  19:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  1d:	48 8b e5             	mov    %rbp,%rsp
  20:	5d                   	pop    %rbp
  21:	c3                   	ret
	...

Disassembly of section .text._D4core8lifetime__T7forwardS_D3std7sumtype__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTmZQlTSQBk__T7FailureTS7kernels11DomainErrorZQBgZQDk8opAssignMFNcQDbZ3rhsQDjZ__T3fwdS_DQFlQFk__TQFfTQFaTQEoTQDyZQFvQClMFNcQFgZQCfQFnZQCbMFNaNbNdNiNfZQGh:

0000000000000000 <core.lifetime.forward!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(error_d.Success!(ulong).Success).rhs).fwd!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(error_d.Success!(ulong).Success).rhs).fwd()>:
   0:	55                   	push   %rbp
   1:	48 8b ec             	mov    %rsp,%rbp
   4:	48 83 ec 10          	sub    $0x10,%rsp
   8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
   c:	48 8d 75 f0          	lea    -0x10(%rbp),%rsi
  10:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
  14:	48 83 c7 08          	add    $0x8,%rdi
  18:	e8 00 00 00 00       	call   1d <core.lifetime.forward!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(error_d.Success!(ulong).Success).rhs).fwd!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(error_d.Success!(ulong).Success).rhs).fwd()+0x1d>	19: R_X86_64_PLT32	_D4core8lifetime__T15moveEmplaceImplTS7error_d__T7SuccessTmZQlZQBsFNaNbNiNfMKQBoNkMKQBvZv-0x4
  1d:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  21:	48 8b e5             	mov    %rbp,%rsp
  24:	5d                   	pop    %rbp
  25:	c3                   	ret
	...

Disassembly of section .text._D4core8lifetime__T7forwardS_D3std7sumtype__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTmZQlTSQBk__T7FailureTS7kernels11DomainErrorZQBgZQDk8opAssignMFNcQChZ3rhsQCpZ__T3fwdS_DQFlQFk__TQFfTQFaTQEoTQDyZQFvQClMFNcQEmZQCfQEtZQCbMFNaNbNdNiNfZQFn:

0000000000000000 <core.lifetime.forward!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(error_d.Failure!(kernels.DomainError).Failure).rhs).fwd!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(error_d.Failure!(kernels.DomainError).Failure).rhs).fwd()>:
   0:	55                   	push   %rbp
   1:	48 8b ec             	mov    %rsp,%rbp
   4:	48 83 ec 10          	sub    $0x10,%rsp
   8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
   c:	48 8d 75 f0          	lea    -0x10(%rbp),%rsi
  10:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
  14:	48 83 c7 08          	add    $0x8,%rdi
  18:	e8 00 00 00 00       	call   1d <core.lifetime.forward!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(error_d.Failure!(kernels.DomainError).Failure).rhs).fwd!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(error_d.Failure!(kernels.DomainError).Failure).rhs).fwd()+0x1d>	19: R_X86_64_PLT32	_D4core8lifetime__T15moveEmplaceImplTS7error_d__T7FailureTS7kernels11DomainErrorZQBgZQCoFNaNbNiNfMKQCkNkMKQCrZv-0x4
  1d:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  21:	48 8b e5             	mov    %rbp,%rsp
  24:	5d                   	pop    %rbp
  25:	c3                   	ret
	...

Disassembly of section .text._D4core8lifetime__T15trustedMoveImplTS3std7sumtype__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTmZQlTSQBk__T7FailureTS7kernels11DomainErrorZQBgZQDkZQEwFNaNbNiNeNkMKQEuZQEy:

0000000000000000 <_D4core8lifetime__T15trustedMoveImplTS3std7sumtype__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTmZQlTSQBk__T7FailureTS7kernels11DomainErrorZQBgZQDkZQEwFNaNbNiNeNkMKQEuZQEy>:
   0:	55                   	push   %rbp
   1:	48 8b ec             	mov    %rsp,%rbp
   4:	48 83 ec 10          	sub    $0x10,%rsp
   8:	48 89 7d f0          	mov    %rdi,-0x10(%rbp)
   c:	48 89 75 f8          	mov    %rsi,-0x8(%rbp)
  10:	48 8b 75 f0          	mov    -0x10(%rbp),%rsi
  14:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
  18:	e8 00 00 00 00       	call   1d <_D4core8lifetime__T15trustedMoveImplTS3std7sumtype__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTmZQlTSQBk__T7FailureTS7kernels11DomainErrorZQBgZQDkZQEwFNaNbNiNeNkMKQEuZQEy+0x1d>	19: R_X86_64_PLT32	_D4core8lifetime__T15moveEmplaceImplTS3std7sumtype__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTmZQlTSQBk__T7FailureTS7kernels11DomainErrorZQBgZQDkZQEwFNaNbNiNfMKQEsNkMKQEzZv-0x4
  1d:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  21:	48 8b e5             	mov    %rbp,%rsp
  24:	5d                   	pop    %rbp
  25:	c3                   	ret
	...

Disassembly of section .text._D7error_d__T6ResultTmTS7kernels11DomainErrorZQBh__T7successZQjFNaNbNiNfmZSQCv__TQCqTmTQCmZQDa:

0000000000000000 <error_d.Result!(ulong, kernels.DomainError).Result.success!().success(ulong)>:
   0:	55                   	push   %rbp
   1:	48 8b ec             	mov    %rsp,%rbp
   4:	48 83 ec 60          	sub    $0x60,%rsp
   8:	48 89 5d a8          	mov    %rbx,-0x58(%rbp)
   c:	48 89 7d f0          	mov    %rdi,-0x10(%rbp)
  10:	48 89 75 f8          	mov    %rsi,-0x8(%rbp)
  14:	31 c0                	xor    %eax,%eax
  16:	89 45 c8             	mov    %eax,-0x38(%rbp)
  19:	89 45 cc             	mov    %eax,-0x34(%rbp)
  1c:	89 45 d0             	mov    %eax,-0x30(%rbp)
  1f:	89 45 d4             	mov    %eax,-0x2c(%rbp)
  22:	88 45 d0             	mov    %al,-0x30(%rbp)
  25:	48 8b 4d d0          	mov    -0x30(%rbp),%rcx
  29:	48 89 4d c0          	mov    %rcx,-0x40(%rbp)
  2d:	88 45 c8             	mov    %al,-0x38(%rbp)
  30:	48 8b 75 f8          	mov    -0x8(%rbp),%rsi
  34:	48 8d 7d c0          	lea    -0x40(%rbp),%rdi
  38:	e8 00 00 00 00       	call   3d <error_d.Result!(ulong, kernels.DomainError).Result.success!().success(ulong)+0x3d>	39: R_X86_64_PLT32	std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.this(error_d.Success!(ulong).Success)-0x4
  3d:	48 8b 50 08          	mov    0x8(%rax),%rdx
  41:	48 8b 00             	mov    (%rax),%rax
  44:	48 89 45 b0          	mov    %rax,-0x50(%rbp)
  48:	48 89 55 b8          	mov    %rdx,-0x48(%rbp)
  4c:	48 8d 75 e0          	lea    -0x20(%rbp),%rsi
  50:	48 8d 7d b0          	lea    -0x50(%rbp),%rdi
  54:	e8 00 00 00 00       	call   59 <error_d.Result!(ulong, kernels.DomainError).Result.success!().success(ulong)+0x59>	55: R_X86_64_PLT32	_D4core8lifetime__T15moveEmplaceImplTS3std7sumtype__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTmZQlTSQBk__T7FailureTS7kernels11DomainErrorZQBgZQDkZQEwFNaNbNiNfMKQEsNkMKQEzZv-0x4
  59:	48 8b 5d e0          	mov    -0x20(%rbp),%rbx
  5d:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
  61:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  65:	48 89 18             	mov    %rbx,(%rax)
  68:	48 89 48 08          	mov    %rcx,0x8(%rax)
  6c:	48 8b 5d a8          	mov    -0x58(%rbp),%rbx
  70:	48 8b e5             	mov    %rbp,%rsp
  73:	5d                   	pop    %rbp
  74:	c3                   	ret
  75:	00 00                	add    %al,(%rax)
	...

Disassembly of section .text._D4core8lifetime__T7forwardS_D3std7sumtype__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTmZQlTSQBk__T7FailureTS7kernels11DomainErrorZQBgZQDk6__ctorMFNcQCzZ5valueQDjZ__T3fwdS_DQFlQFk__TQFfTQFaTQEoTQDyZQFvQClMFNcQFgZQChQFnZQCbMFNaNbNdNiNfZQGh:

0000000000000000 <core.lifetime.forward!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.this(error_d.Success!(ulong).Success).value).fwd!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.this(error_d.Success!(ulong).Success).value).fwd()>:
   0:	55                   	push   %rbp
   1:	48 8b ec             	mov    %rsp,%rbp
   4:	48 83 ec 10          	sub    $0x10,%rsp
   8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
   c:	48 8d 75 f0          	lea    -0x10(%rbp),%rsi
  10:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
  14:	48 83 c7 08          	add    $0x8,%rdi
  18:	e8 00 00 00 00       	call   1d <core.lifetime.forward!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.this(error_d.Success!(ulong).Success).value).fwd!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.this(error_d.Success!(ulong).Success).value).fwd()+0x1d>	19: R_X86_64_PLT32	_D4core8lifetime__T15moveEmplaceImplTS7error_d__T7SuccessTmZQlZQBsFNaNbNiNfMKQBoNkMKQBvZv-0x4
  1d:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  21:	48 8b e5             	mov    %rbp,%rsp
  24:	5d                   	pop    %rbp
  25:	c3                   	ret
	...

Disassembly of section .text._D7error_d__T6ResultTS7kernels5BlockTSQq11DomainErrorZQBp__T7failureZQjFNaNbNiNfQBrZSQDf__TQDaTQCwTQCkZQDm:

0000000000000000 <error_d.Result!(kernels.Block, kernels.DomainError).Result.failure!().failure(kernels.DomainError)>:
   0:	55                   	push   %rbp
   1:	48 8b ec             	mov    %rsp,%rbp
   4:	48 81 ec 60 05 00 00 	sub    $0x560,%rsp
   b:	48 89 7d f0          	mov    %rdi,-0x10(%rbp)
   f:	48 89 75 f8          	mov    %rsi,-0x8(%rbp)
  13:	31 c0                	xor    %eax,%eax
  15:	89 85 b8 fb ff ff    	mov    %eax,-0x448(%rbp)
  1b:	89 85 bc fb ff ff    	mov    %eax,-0x444(%rbp)
  21:	89 85 c0 fb ff ff    	mov    %eax,-0x440(%rbp)
  27:	89 85 c4 fb ff ff    	mov    %eax,-0x43c(%rbp)
  2d:	89 85 c8 fb ff ff    	mov    %eax,-0x438(%rbp)
  33:	89 85 cc fb ff ff    	mov    %eax,-0x434(%rbp)
  39:	89 85 d0 fb ff ff    	mov    %eax,-0x430(%rbp)
  3f:	89 85 d4 fb ff ff    	mov    %eax,-0x42c(%rbp)
  45:	89 85 d8 fb ff ff    	mov    %eax,-0x428(%rbp)
  4b:	89 85 dc fb ff ff    	mov    %eax,-0x424(%rbp)
  51:	89 85 e0 fb ff ff    	mov    %eax,-0x420(%rbp)
  57:	89 85 e4 fb ff ff    	mov    %eax,-0x41c(%rbp)
  5d:	89 85 e8 fb ff ff    	mov    %eax,-0x418(%rbp)
  63:	89 85 ec fb ff ff    	mov    %eax,-0x414(%rbp)
  69:	89 85 f0 fb ff ff    	mov    %eax,-0x410(%rbp)
  6f:	89 85 f4 fb ff ff    	mov    %eax,-0x40c(%rbp)
  75:	89 85 f8 fb ff ff    	mov    %eax,-0x408(%rbp)
  7b:	89 85 fc fb ff ff    	mov    %eax,-0x404(%rbp)
  81:	89 85 00 fc ff ff    	mov    %eax,-0x400(%rbp)
  87:	89 85 04 fc ff ff    	mov    %eax,-0x3fc(%rbp)
  8d:	89 85 08 fc ff ff    	mov    %eax,-0x3f8(%rbp)
  93:	89 85 0c fc ff ff    	mov    %eax,-0x3f4(%rbp)
  99:	89 85 10 fc ff ff    	mov    %eax,-0x3f0(%rbp)
  9f:	89 85 14 fc ff ff    	mov    %eax,-0x3ec(%rbp)
  a5:	89 85 18 fc ff ff    	mov    %eax,-0x3e8(%rbp)
  ab:	89 85 1c fc ff ff    	mov    %eax,-0x3e4(%rbp)
  b1:	89 85 20 fc ff ff    	mov    %eax,-0x3e0(%rbp)
  b7:	89 85 24 fc ff ff    	mov    %eax,-0x3dc(%rbp)
  bd:	89 85 28 fc ff ff    	mov    %eax,-0x3d8(%rbp)
  c3:	89 85 2c fc ff ff    	mov    %eax,-0x3d4(%rbp)
  c9:	89 85 30 fc ff ff    	mov    %eax,-0x3d0(%rbp)
  cf:	89 85 34 fc ff ff    	mov    %eax,-0x3cc(%rbp)
  d5:	89 85 38 fc ff ff    	mov    %eax,-0x3c8(%rbp)
  db:	89 85 3c fc ff ff    	mov    %eax,-0x3c4(%rbp)
  e1:	89 85 40 fc ff ff    	mov    %eax,-0x3c0(%rbp)
  e7:	89 85 44 fc ff ff    	mov    %eax,-0x3bc(%rbp)
  ed:	89 85 48 fc ff ff    	mov    %eax,-0x3b8(%rbp)
  f3:	89 85 4c fc ff ff    	mov    %eax,-0x3b4(%rbp)
  f9:	89 85 50 fc ff ff    	mov    %eax,-0x3b0(%rbp)
  ff:	89 85 54 fc ff ff    	mov    %eax,-0x3ac(%rbp)
 105:	89 85 58 fc ff ff    	mov    %eax,-0x3a8(%rbp)
 10b:	89 85 5c fc ff ff    	mov    %eax,-0x3a4(%rbp)
 111:	89 85 60 fc ff ff    	mov    %eax,-0x3a0(%rbp)
 117:	89 85 64 fc ff ff    	mov    %eax,-0x39c(%rbp)
 11d:	89 85 68 fc ff ff    	mov    %eax,-0x398(%rbp)
 123:	89 85 6c fc ff ff    	mov    %eax,-0x394(%rbp)
 129:	89 85 70 fc ff ff    	mov    %eax,-0x390(%rbp)
 12f:	89 85 74 fc ff ff    	mov    %eax,-0x38c(%rbp)
 135:	89 85 78 fc ff ff    	mov    %eax,-0x388(%rbp)
 13b:	89 85 7c fc ff ff    	mov    %eax,-0x384(%rbp)
 141:	89 85 80 fc ff ff    	mov    %eax,-0x380(%rbp)
 147:	89 85 84 fc ff ff    	mov    %eax,-0x37c(%rbp)
 14d:	89 85 88 fc ff ff    	mov    %eax,-0x378(%rbp)
 153:	89 85 8c fc ff ff    	mov    %eax,-0x374(%rbp)
 159:	89 85 90 fc ff ff    	mov    %eax,-0x370(%rbp)
 15f:	89 85 94 fc ff ff    	mov    %eax,-0x36c(%rbp)
 165:	89 85 98 fc ff ff    	mov    %eax,-0x368(%rbp)
 16b:	89 85 9c fc ff ff    	mov    %eax,-0x364(%rbp)
 171:	89 85 a0 fc ff ff    	mov    %eax,-0x360(%rbp)
 177:	89 85 a4 fc ff ff    	mov    %eax,-0x35c(%rbp)
 17d:	89 85 a8 fc ff ff    	mov    %eax,-0x358(%rbp)
 183:	89 85 ac fc ff ff    	mov    %eax,-0x354(%rbp)
 189:	89 85 b0 fc ff ff    	mov    %eax,-0x350(%rbp)
 18f:	89 85 b4 fc ff ff    	mov    %eax,-0x34c(%rbp)
 195:	89 85 b8 fc ff ff    	mov    %eax,-0x348(%rbp)
 19b:	89 85 bc fc ff ff    	mov    %eax,-0x344(%rbp)
 1a1:	31 c9                	xor    %ecx,%ecx
 1a3:	88 8d b8 fc ff ff    	mov    %cl,-0x348(%rbp)
 1a9:	48 8d b5 b8 fb ff ff 	lea    -0x448(%rbp),%rsi
 1b0:	48 8d bd a8 fa ff ff 	lea    -0x558(%rbp),%rdi
 1b7:	b9 21 00 00 00       	mov    $0x21,%ecx
 1bc:	f3 48 a5             	rep movsq (%rsi),(%rdi)
 1bf:	89 85 d8 fe ff ff    	mov    %eax,-0x128(%rbp)
 1c5:	89 85 dc fe ff ff    	mov    %eax,-0x124(%rbp)
 1cb:	48 8b 35 00 00 00 00 	mov    0x0(%rip),%rsi        # 1d2 <error_d.Result!(kernels.Block, kernels.DomainError).Result.failure!().failure(kernels.DomainError)+0x1d2>	1ce: R_X86_64_GOTPCREL	initializer for std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.Storage-0x4
 1d2:	48 8d bd d8 fd ff ff 	lea    -0x228(%rbp),%rdi
 1d9:	b9 20 00 00 00       	mov    $0x20,%ecx
 1de:	f3 48 a5             	rep movsq (%rsi),(%rdi)
 1e1:	88 85 d8 fe ff ff    	mov    %al,-0x128(%rbp)
 1e7:	48 8d b5 e0 fe ff ff 	lea    -0x120(%rbp),%rsi
 1ee:	48 8d 7d f8          	lea    -0x8(%rbp),%rdi
 1f2:	e8 00 00 00 00       	call   1f7 <error_d.Result!(kernels.Block, kernels.DomainError).Result.failure!().failure(kernels.DomainError)+0x1f7>	1f3: R_X86_64_PLT32	_D4core8lifetime__T15moveEmplaceImplTS7kernels11DomainErrorZQBpFNaNbNiNfMKQBlNkMKQBsZv-0x4
 1f7:	48 8b b5 e0 fe ff ff 	mov    -0x120(%rbp),%rsi
 1fe:	48 8d bd d8 fd ff ff 	lea    -0x228(%rbp),%rdi
 205:	e8 00 00 00 00       	call   20a <error_d.Result!(kernels.Block, kernels.DomainError).Result.failure!().failure(kernels.DomainError)+0x20a>	206: R_X86_64_PLT32	std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.this(error_d.Failure!(kernels.DomainError).Failure)-0x4
 20a:	48 89 c6             	mov    %rax,%rsi
 20d:	48 8d bd c8 fc ff ff 	lea    -0x338(%rbp),%rdi
 214:	b9 21 00 00 00       	mov    $0x21,%ecx
 219:	f3 48 a5             	rep movsq (%rsi),(%rdi)
 21c:	48 8d b5 e8 fe ff ff 	lea    -0x118(%rbp),%rsi
 223:	48 8d bd c8 fc ff ff 	lea    -0x338(%rbp),%rdi
 22a:	e8 00 00 00 00       	call   22f <error_d.Result!(kernels.Block, kernels.DomainError).Result.failure!().failure(kernels.DomainError)+0x22f>	22b: R_X86_64_PLT32	_D4core8lifetime__T15moveEmplaceImplTS3std7sumtype__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTS7kernels5BlockZQzTSQBy__T7FailureTSQBj11DomainErrorZQBbZQDtZQFfFNaNbNiNfMKQFbNkMKQFiZv-0x4
 22f:	48 8d b5 e8 fe ff ff 	lea    -0x118(%rbp),%rsi
 236:	48 8b 7d f0          	mov    -0x10(%rbp),%rdi
 23a:	b9 21 00 00 00       	mov    $0x21,%ecx
 23f:	f3 48 a5             	rep movsq (%rsi),(%rdi)
 242:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
 246:	48 8b e5             	mov    %rbp,%rsp
 249:	5d                   	pop    %rbp
 24a:	c3                   	ret
	...

Disassembly of section .text._D4core8lifetime__T7forwardS_D3std7sumtype__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTS7kernels5BlockZQzTSQBy__T7FailureTSQBj11DomainErrorZQBbZQDt6__ctorMFNcQDyZ5valueQEiZ__T3fwdS_DQFuQFt__TQFoTQFjTQExTQDtZQGeQClMFNcQGfZQChQGmZQCbMFNaNbNdNiNfZQHg:

0000000000000000 <core.lifetime.forward!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.this(error_d.Empty).value).fwd!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.this(error_d.Empty).value).fwd()>:
   0:	55                   	push   %rbp
   1:	48 8b ec             	mov    %rsp,%rbp
   4:	48 83 ec 20          	sub    $0x20,%rsp
   8:	48 89 7d f0          	mov    %rdi,-0x10(%rbp)
   c:	48 89 75 f8          	mov    %rsi,-0x8(%rbp)
  10:	48 8d 75 e8          	lea    -0x18(%rbp),%rsi
  14:	48 8b 7d f0          	mov    -0x10(%rbp),%rdi
  18:	48 83 c7 18          	add    $0x18,%rdi
  1c:	e8 00 00 00 00       	call   21 <core.lifetime.forward!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.this(error_d.Empty).value).fwd!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.this(error_d.Empty).value).fwd()+0x21>	1d: R_X86_64_PLT32	_D4core8lifetime__T15moveEmplaceImplTS7error_d5EmptyZQBiFNaNbNiNfMKQBeNkMKQBlZv-0x4
  21:	8a 45 e8             	mov    -0x18(%rbp),%al
  24:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
  28:	88 01                	mov    %al,(%rcx)
  2a:	48 89 c8             	mov    %rcx,%rax
  2d:	48 8b e5             	mov    %rbp,%rsp
  30:	5d                   	pop    %rbp
  31:	c3                   	ret
	...

Disassembly of section .text._D4core8lifetime__T7forwardS_D3std7sumtype__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTS7kernels5BlockZQzTSQBy__T7FailureTSQBj11DomainErrorZQBbZQDt6__ctorMFNcQCaZ5valueQCkZ__T3fwdS_DQFuQFt__TQFoTQFjTQExTQDtZQGeQClMFNcQEhZQChQEoZQCbMFNaNbNdNiNfZQFi:

0000000000000000 <core.lifetime.forward!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.this(error_d.Failure!(kernels.DomainError).Failure).value).fwd!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.this(error_d.Failure!(kernels.DomainError).Failure).value).fwd()>:
   0:	55                   	push   %rbp
   1:	48 8b ec             	mov    %rsp,%rbp
   4:	48 83 ec 10          	sub    $0x10,%rsp
   8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
   c:	48 8d 75 f0          	lea    -0x10(%rbp),%rsi
  10:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
  14:	48 83 c7 08          	add    $0x8,%rdi
  18:	e8 00 00 00 00       	call   1d <core.lifetime.forward!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.this(error_d.Failure!(kernels.DomainError).Failure).value).fwd!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.this(error_d.Failure!(kernels.DomainError).Failure).value).fwd()+0x1d>	19: R_X86_64_PLT32	_D4core8lifetime__T15moveEmplaceImplTS7error_d__T7FailureTS7kernels11DomainErrorZQBgZQCoFNaNbNiNfMKQCkNkMKQCrZv-0x4
  1d:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  21:	48 8b e5             	mov    %rbp,%rsp
  24:	5d                   	pop    %rbp
  25:	c3                   	ret
	...

Disassembly of section .text._D4core8lifetime__T4moveTS3std7sumtype__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTS7kernels5BlockZQzTSQBy__T7FailureTSQBj11DomainErrorZQBbZQDtZQEtFNaNbNiNfNkMKQFdZQFh:

0000000000000000 <_D4core8lifetime__T4moveTS3std7sumtype__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTS7kernels5BlockZQzTSQBy__T7FailureTSQBj11DomainErrorZQBbZQDtZQEtFNaNbNiNfNkMKQFdZQFh>:
   0:	55                   	push   %rbp
   1:	48 8b ec             	mov    %rsp,%rbp
   4:	48 81 ec 20 01 00 00 	sub    $0x120,%rsp
   b:	48 89 7d f0          	mov    %rdi,-0x10(%rbp)
   f:	48 89 75 f8          	mov    %rsi,-0x8(%rbp)
  13:	48 8d b5 e8 fe ff ff 	lea    -0x118(%rbp),%rsi
  1a:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
  1e:	e8 00 00 00 00       	call   23 <_D4core8lifetime__T4moveTS3std7sumtype__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTS7kernels5BlockZQzTSQBy__T7FailureTSQBj11DomainErrorZQBbZQDtZQEtFNaNbNiNfNkMKQFdZQFh+0x23>	1f: R_X86_64_PLT32	_D4core8lifetime__T15moveEmplaceImplTS3std7sumtype__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTS7kernels5BlockZQzTSQBy__T7FailureTSQBj11DomainErrorZQBbZQDtZQFfFNaNbNiNfMKQFbNkMKQFiZv-0x4
  23:	48 8d b5 e8 fe ff ff 	lea    -0x118(%rbp),%rsi
  2a:	48 8b 7d f0          	mov    -0x10(%rbp),%rdi
  2e:	b9 21 00 00 00       	mov    $0x21,%ecx
  33:	f3 48 a5             	rep movsq (%rsi),(%rdi)
  36:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  3a:	48 8b e5             	mov    %rbp,%rsp
  3d:	5d                   	pop    %rbp
  3e:	c3                   	ret
	...

Disassembly of section .text._D4core8lifetime__T8moveImplTS3std7sumtype__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTS7kernels5BlockZQzTSQBy__T7FailureTSQBj11DomainErrorZQBbZQDtZQExFNaNbNiNfNkMKQFdZQFh:

0000000000000000 <_D4core8lifetime__T8moveImplTS3std7sumtype__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTS7kernels5BlockZQzTSQBy__T7FailureTSQBj11DomainErrorZQBbZQDtZQExFNaNbNiNfNkMKQFdZQFh>:
   0:	55                   	push   %rbp
   1:	48 8b ec             	mov    %rsp,%rbp
   4:	48 81 ec 20 01 00 00 	sub    $0x120,%rsp
   b:	48 89 7d f0          	mov    %rdi,-0x10(%rbp)
   f:	48 89 75 f8          	mov    %rsi,-0x8(%rbp)
  13:	48 8d b5 e8 fe ff ff 	lea    -0x118(%rbp),%rsi
  1a:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
  1e:	e8 00 00 00 00       	call   23 <_D4core8lifetime__T8moveImplTS3std7sumtype__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTS7kernels5BlockZQzTSQBy__T7FailureTSQBj11DomainErrorZQBbZQDtZQExFNaNbNiNfNkMKQFdZQFh+0x23>	1f: R_X86_64_PLT32	_D4core8lifetime__T15moveEmplaceImplTS3std7sumtype__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTS7kernels5BlockZQzTSQBy__T7FailureTSQBj11DomainErrorZQBbZQDtZQFfFNaNbNiNfMKQFbNkMKQFiZv-0x4
  23:	48 8d b5 e8 fe ff ff 	lea    -0x118(%rbp),%rsi
  2a:	48 8b 7d f0          	mov    -0x10(%rbp),%rdi
  2e:	b9 21 00 00 00       	mov    $0x21,%ecx
  33:	f3 48 a5             	rep movsq (%rsi),(%rdi)
  36:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  3a:	48 8b e5             	mov    %rbp,%rsp
  3d:	5d                   	pop    %rbp
  3e:	c3                   	ret
	...

Disassembly of section .text._D4core8lifetime__T15moveEmplaceImplTS3std7sumtype__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTS7kernels5BlockZQzTSQBy__T7FailureTSQBj11DomainErrorZQBbZQDtZQFfFNaNbNiNfMKQFbNkMKQFiZv:

0000000000000000 <_D4core8lifetime__T15moveEmplaceImplTS3std7sumtype__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTS7kernels5BlockZQzTSQBy__T7FailureTSQBj11DomainErrorZQBbZQDtZQFfFNaNbNiNfMKQFbNkMKQFiZv>:
   0:	55                   	push   %rbp
   1:	48 8b ec             	mov    %rsp,%rbp
   4:	48 83 ec 10          	sub    $0x10,%rsp
   8:	48 89 7d f0          	mov    %rdi,-0x10(%rbp)
   c:	48 89 75 f8          	mov    %rsi,-0x8(%rbp)
  10:	ba 08 01 00 00       	mov    $0x108,%edx
  15:	48 89 fe             	mov    %rdi,%rsi
  18:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
  1c:	e8 00 00 00 00       	call   21 <_D4core8lifetime__T15moveEmplaceImplTS3std7sumtype__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTS7kernels5BlockZQzTSQBy__T7FailureTSQBj11DomainErrorZQBbZQDtZQFfFNaNbNiNfMKQFbNkMKQFiZv+0x21>	1d: R_X86_64_PLT32	memcpy-0x4
  21:	48 8b e5             	mov    %rbp,%rsp
  24:	5d                   	pop    %rbp
  25:	c3                   	ret
	...

Disassembly of section .text._D3std7sumtype__T5matchSQwQu14destroyIfOwnerZ__TQBfTSQBzQBy__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTS7kernels5BlockZQzTSQBy__T7FailureTSQBj11DomainErrorZQBbZQDtZQFqFNaNbNiNfKQEuZv:

0000000000000000 <std.sumtype.match!(std.sumtype.destroyIfOwner).match!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).match(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)>:
   0:	55                   	push   %rbp
   1:	48 8b ec             	mov    %rsp,%rbp
   4:	48 83 ec 10          	sub    $0x10,%rsp
   8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
   c:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
  10:	e8 00 00 00 00       	call   15 <std.sumtype.match!(std.sumtype.destroyIfOwner).match!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).match(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)+0x15>	11: R_X86_64_PLT32	std.sumtype.matchImpl!(1, std.sumtype.destroyIfOwner).matchImpl!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).matchImpl(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)-0x4
  15:	48 8b e5             	mov    %rbp,%rsp
  18:	5d                   	pop    %rbp
  19:	c3                   	ret
	...

Disassembly of section .text._D3std7sumtype__T9matchImplVEQBb8typecons__T4FlagVAyaa10_65786861757374697665ZQBii1SQDeQDd14destroyIfOwnerZ__TQDpTSQEjQEi__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTS7kernels5BlockZQzTSQBy__T7FailureTSQBj11DomainErrorZQBbZQDtZQIaFNaNbNiNfKQEuZv:

0000000000000000 <std.sumtype.matchImpl!(1, std.sumtype.destroyIfOwner).matchImpl!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).matchImpl(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)>:
   0:	0f b6 8f 00 01 00 00 	movzbl 0x100(%rdi),%ecx
   7:	0f b6 c1             	movzbl %cl,%eax
   a:	85 c0                	test   %eax,%eax
   c:	74 0c                	je     1a <std.sumtype.matchImpl!(1, std.sumtype.destroyIfOwner).matchImpl!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).matchImpl(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)+0x1a>
   e:	83 f8 01             	cmp    $0x1,%eax
  11:	74 07                	je     1a <std.sumtype.matchImpl!(1, std.sumtype.destroyIfOwner).matchImpl!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).matchImpl(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)+0x1a>
  13:	83 f8 02             	cmp    $0x2,%eax
  16:	74 02                	je     1a <std.sumtype.matchImpl!(1, std.sumtype.destroyIfOwner).matchImpl!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).matchImpl(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)+0x1a>
  18:	eb 01                	jmp    1b <std.sumtype.matchImpl!(1, std.sumtype.destroyIfOwner).matchImpl!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).matchImpl(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)+0x1b>
  1a:	c3                   	ret
  1b:	0f 0b                	ud2
  1d:	c3                   	ret
	...

Disassembly of section .text._D3std7sumtype__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTS7kernels5BlockZQzTSQBy__T7FailureTSQBj11DomainErrorZQBbZQDt__T10getByIndexVmi0ZQrMNgFNaNbNcNiNeZNgSQFaQEv:

0000000000000000 <std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.getByIndex!(0uL).getByIndex() inout>:
   0:	48 89 f8             	mov    %rdi,%rax
   3:	c3                   	ret

Disassembly of section .text._D3std7sumtype__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTS7kernels5BlockZQzTSQBy__T7FailureTSQBj11DomainErrorZQBbZQDt__T10getByIndexVmi1ZQrMNgFNaNbNcNiNeZNgSQFa__TQElTQEgZQEt:

0000000000000000 <std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.getByIndex!(1uL).getByIndex() inout>:
   0:	48 89 f8             	mov    %rdi,%rax
   3:	c3                   	ret

Disassembly of section .text._D3std7sumtype__T14destroyIfOwnerTS7error_d__T7SuccessTS7kernels5BlockZQzZQCfFNaNbNiNfKQCbZv:

0000000000000000 <std.sumtype.destroyIfOwner!(error_d.Success!(kernels.Block).Success).destroyIfOwner(ref error_d.Success!(kernels.Block).Success)>:
   0:	c3                   	ret
   1:	00 00                	add    %al,(%rax)
	...

Disassembly of section .text._D3std7sumtype__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTS7kernels5BlockZQzTSQBy__T7FailureTSQBj11DomainErrorZQBbZQDt__T10getByIndexVmi2ZQrMNgFNaNbNcNiNeZNgSQFa__TQDcTQCxZQDk:

0000000000000000 <std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.getByIndex!(2uL).getByIndex() inout>:
   0:	48 89 f8             	mov    %rdi,%rax
   3:	c3                   	ret

Disassembly of section .text._D4core8lifetime__T7forwardS_D3std7sumtype__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTS7kernels5BlockZQzTSQBy__T7FailureTSQBj11DomainErrorZQBbZQDt8opAssignMFNcQEaZ3rhsQEiZ__T3fwdS_DQFuQFt__TQFoTQFjTQExTQDtZQGeQClMFNcQGfZQCfQGmZQCbMFNaNbNdNiNfZQHg:

0000000000000000 <core.lifetime.forward!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(error_d.Empty).rhs).fwd!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(error_d.Empty).rhs).fwd()>:
   0:	55                   	push   %rbp
   1:	48 8b ec             	mov    %rsp,%rbp
   4:	48 83 ec 20          	sub    $0x20,%rsp
   8:	48 89 7d f0          	mov    %rdi,-0x10(%rbp)
   c:	48 89 75 f8          	mov    %rsi,-0x8(%rbp)
  10:	48 8d 75 e8          	lea    -0x18(%rbp),%rsi
  14:	48 8b 7d f0          	mov    -0x10(%rbp),%rdi
  18:	48 81 c7 18 01 00 00 	add    $0x118,%rdi
  1f:	e8 00 00 00 00       	call   24 <core.lifetime.forward!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(error_d.Empty).rhs).fwd!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(error_d.Empty).rhs).fwd()+0x24>	20: R_X86_64_PLT32	_D4core8lifetime__T15moveEmplaceImplTS7error_d5EmptyZQBiFNaNbNiNfMKQBeNkMKQBlZv-0x4
  24:	8a 45 e8             	mov    -0x18(%rbp),%al
  27:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
  2b:	88 01                	mov    %al,(%rcx)
  2d:	48 89 c8             	mov    %rcx,%rax
  30:	48 8b e5             	mov    %rbp,%rsp
  33:	5d                   	pop    %rbp
  34:	c3                   	ret
  35:	00 00                	add    %al,(%rax)
	...

Disassembly of section .text._D3std7sumtype__T5matchSQwQu__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTS7kernels5BlockZQzTSQBy__T7FailureTSQBj11DomainErrorZQBbZQDt8opAssignMFNcSQFnQFm__TQEtTQEoTQEcTQCyZQFjZ17__lambda_L697_C24Z__TQGyTQCfZQHgMFNaNbNiNfKQCxZv:

0000000000000000 <std.sumtype.match!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).__lambda_L697_C24).match!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).match(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)>:
   0:	55                   	push   %rbp
   1:	48 8b ec             	mov    %rsp,%rbp
   4:	48 83 ec 10          	sub    $0x10,%rsp
   8:	48 89 7d f0          	mov    %rdi,-0x10(%rbp)
   c:	48 89 75 f8          	mov    %rsi,-0x8(%rbp)
  10:	48 8b 75 f8          	mov    -0x8(%rbp),%rsi
  14:	48 8b 7d f0          	mov    -0x10(%rbp),%rdi
  18:	e8 00 00 00 00       	call   1d <std.sumtype.match!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).__lambda_L697_C24).match!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).match(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)+0x1d>	19: R_X86_64_PLT32	std.sumtype.matchImpl!(1, std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).__lambda_L697_C24).matchImpl!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).matchImpl(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)-0x4
  1d:	48 8b e5             	mov    %rbp,%rsp
  20:	5d                   	pop    %rbp
  21:	c3                   	ret
	...

Disassembly of section .text._D3std7sumtype__T9matchImplVEQBb8typecons__T4FlagVAyaa10_65786861757374697665ZQBii1SQDeQDd__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTS7kernels5BlockZQzTSQBy__T7FailureTSQBj11DomainErrorZQBbZQDt8opAssignMFNcSQHxQHw__TQEtTQEoTQEcTQCyZQFjZ17__lambda_L697_C24Z__TQJiTQCfZQJqMFNaNbNiNfKQCxZv:

0000000000000000 <std.sumtype.matchImpl!(1, std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).__lambda_L697_C24).matchImpl!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).matchImpl(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)>:
   0:	55                   	push   %rbp
   1:	48 8b ec             	mov    %rsp,%rbp
   4:	53                   	push   %rbx
   5:	41 54                	push   %r12
   7:	49 89 fc             	mov    %rdi,%r12
   a:	48 89 f3             	mov    %rsi,%rbx
   d:	0f b6 8b 00 01 00 00 	movzbl 0x100(%rbx),%ecx
  14:	0f b6 c1             	movzbl %cl,%eax
  17:	85 c0                	test   %eax,%eax
  19:	74 0c                	je     27 <std.sumtype.matchImpl!(1, std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).__lambda_L697_C24).matchImpl!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).matchImpl(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)+0x27>
  1b:	83 f8 01             	cmp    $0x1,%eax
  1e:	74 14                	je     34 <std.sumtype.matchImpl!(1, std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).__lambda_L697_C24).matchImpl!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).matchImpl(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)+0x34>
  20:	83 f8 02             	cmp    $0x2,%eax
  23:	74 1c                	je     41 <std.sumtype.matchImpl!(1, std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).__lambda_L697_C24).matchImpl!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).matchImpl(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)+0x41>
  25:	eb 2a                	jmp    51 <std.sumtype.matchImpl!(1, std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).__lambda_L697_C24).matchImpl!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).matchImpl(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)+0x51>
  27:	48 8b f3             	mov    %rbx,%rsi
  2a:	49 8b fc             	mov    %r12,%rdi
  2d:	e8 00 00 00 00       	call   32 <std.sumtype.matchImpl!(1, std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).__lambda_L697_C24).matchImpl!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).matchImpl(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)+0x32>	2e: R_X86_64_PLT32	std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).__lambda_L697_C24!(error_d.Empty).__lambda_L697_C24(ref error_d.Empty)-0x4
  32:	eb 18                	jmp    4c <std.sumtype.matchImpl!(1, std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).__lambda_L697_C24).matchImpl!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).matchImpl(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)+0x4c>
  34:	48 8b f3             	mov    %rbx,%rsi
  37:	49 8b fc             	mov    %r12,%rdi
  3a:	e8 00 00 00 00       	call   3f <std.sumtype.matchImpl!(1, std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).__lambda_L697_C24).matchImpl!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).matchImpl(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)+0x3f>	3b: R_X86_64_PLT32	std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).__lambda_L697_C24!(error_d.Success!(kernels.Block).Success).__lambda_L697_C24(ref error_d.Success!(kernels.Block).Success)-0x4
  3f:	eb 0b                	jmp    4c <std.sumtype.matchImpl!(1, std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).__lambda_L697_C24).matchImpl!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).matchImpl(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)+0x4c>
  41:	48 8b f3             	mov    %rbx,%rsi
  44:	49 8b fc             	mov    %r12,%rdi
  47:	e8 00 00 00 00       	call   4c <std.sumtype.matchImpl!(1, std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).__lambda_L697_C24).matchImpl!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).matchImpl(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)+0x4c>	48: R_X86_64_PLT32	std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).__lambda_L697_C24!(error_d.Failure!(kernels.DomainError).Failure).__lambda_L697_C24(ref error_d.Failure!(kernels.DomainError).Failure)-0x4
  4c:	41 5c                	pop    %r12
  4e:	5b                   	pop    %rbx
  4f:	5d                   	pop    %rbp
  50:	c3                   	ret
  51:	0f 0b                	ud2
  53:	41 5c                	pop    %r12
  55:	5b                   	pop    %rbx
  56:	5d                   	pop    %rbp
  57:	c3                   	ret

Disassembly of section .text._D3std7sumtype__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTS7kernels5BlockZQzTSQBy__T7FailureTSQBj11DomainErrorZQBbZQDt8opAssignMFNcSQEzQEy__TQEtTQEoTQEcTQCyZQFjZ__T17__lambda_L697_C24TQGbZQyMFNaNbNiNfKQGsZv:

0000000000000000 <std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).__lambda_L697_C24!(error_d.Empty).__lambda_L697_C24(ref error_d.Empty)>:
   0:	55                   	push   %rbp
   1:	48 8b ec             	mov    %rsp,%rbp
   4:	48 83 ec 30          	sub    $0x30,%rsp
   8:	48 89 5d d8          	mov    %rbx,-0x28(%rbp)
   c:	48 89 7d f0          	mov    %rdi,-0x10(%rbp)
  10:	48 89 75 f8          	mov    %rsi,-0x8(%rbp)
  14:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  18:	48 8b 08             	mov    (%rax),%rcx
  1b:	48 89 4d e0          	mov    %rcx,-0x20(%rbp)
  1f:	48 83 ec 08          	sub    $0x8,%rsp
  23:	48 83 ec 08          	sub    $0x8,%rsp
  27:	48 8d 75 e8          	lea    -0x18(%rbp),%rsi
  2b:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
  2f:	e8 00 00 00 00       	call   34 <std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).__lambda_L697_C24!(error_d.Empty).__lambda_L697_C24(ref error_d.Empty)+0x34>	30: R_X86_64_PLT32	_D4core8lifetime__T15moveEmplaceImplTS7error_d5EmptyZQBiFNaNbNiNfMKQBeNkMKQBlZv-0x4
  34:	48 83 c4 08          	add    $0x8,%rsp
  38:	48 8d 5d e8          	lea    -0x18(%rbp),%rbx
  3c:	ff 33                	push   (%rbx)
  3e:	48 8b 7d e0          	mov    -0x20(%rbp),%rdi
  42:	e8 00 00 00 00       	call   47 <std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).__lambda_L697_C24!(error_d.Empty).__lambda_L697_C24(ref error_d.Empty)+0x47>	43: R_X86_64_PLT32	std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(error_d.Empty)-0x4
  47:	48 83 c4 10          	add    $0x10,%rsp
  4b:	48 8b 5d d8          	mov    -0x28(%rbp),%rbx
  4f:	48 8b e5             	mov    %rbp,%rsp
  52:	5d                   	pop    %rbp
  53:	c3                   	ret

Disassembly of section .text._D3std7sumtype__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTS7kernels5BlockZQzTSQBy__T7FailureTSQBj11DomainErrorZQBbZQDt8opAssignMFNcSQEzQEy__TQEtTQEoTQEcTQCyZQFjZ__T17__lambda_L697_C24TQFlZQyMFNaNbNiNfKQGcZv:

0000000000000000 <std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).__lambda_L697_C24!(error_d.Success!(kernels.Block).Success).__lambda_L697_C24(ref error_d.Success!(kernels.Block).Success)>:
   0:	55                   	push   %rbp
   1:	48 8b ec             	mov    %rsp,%rbp
   4:	48 81 ec 30 03 00 00 	sub    $0x330,%rsp
   b:	48 89 9d d8 fc ff ff 	mov    %rbx,-0x328(%rbp)
  12:	48 89 7d f0          	mov    %rdi,-0x10(%rbp)
  16:	48 89 75 f8          	mov    %rsi,-0x8(%rbp)
  1a:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  1e:	48 8b 08             	mov    (%rax),%rcx
  21:	48 89 8d e0 fc ff ff 	mov    %rcx,-0x320(%rbp)
  28:	48 8d b5 f0 fe ff ff 	lea    -0x110(%rbp),%rsi
  2f:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
  33:	e8 00 00 00 00       	call   38 <std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).__lambda_L697_C24!(error_d.Success!(kernels.Block).Success).__lambda_L697_C24(ref error_d.Success!(kernels.Block).Success)+0x38>	34: R_X86_64_PLT32	_D4core8lifetime__T15moveEmplaceImplTS7error_d__T7SuccessTS7kernels5BlockZQzZQCgFNaNbNiNfMKQCcNkMKQCjZv-0x4
  38:	48 8d b5 f0 fe ff ff 	lea    -0x110(%rbp),%rsi
  3f:	48 8d bd f0 fd ff ff 	lea    -0x210(%rbp),%rdi
  46:	b9 20 00 00 00       	mov    $0x20,%ecx
  4b:	f3 48 a5             	rep movsq (%rsi),(%rdi)
  4e:	48 8d b5 f0 fe ff ff 	lea    -0x110(%rbp),%rsi
  55:	48 8d bd f0 fc ff ff 	lea    -0x310(%rbp),%rdi
  5c:	b9 20 00 00 00       	mov    $0x20,%ecx
  61:	f3 48 a5             	rep movsq (%rsi),(%rdi)
  64:	48 8d 5d e8          	lea    -0x18(%rbp),%rbx
  68:	b9 20 00 00 00       	mov    $0x20,%ecx
  6d:	ff 33                	push   (%rbx)
  6f:	48 83 eb 08          	sub    $0x8,%rbx
  73:	ff c9                	dec    %ecx
  75:	75 f6                	jne    6d <std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).__lambda_L697_C24!(error_d.Success!(kernels.Block).Success).__lambda_L697_C24(ref error_d.Success!(kernels.Block).Success)+0x6d>
  77:	48 8b bd e0 fc ff ff 	mov    -0x320(%rbp),%rdi
  7e:	e8 00 00 00 00       	call   83 <std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).__lambda_L697_C24!(error_d.Success!(kernels.Block).Success).__lambda_L697_C24(ref error_d.Success!(kernels.Block).Success)+0x83>	7f: R_X86_64_PLT32	std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(error_d.Success!(kernels.Block).Success)-0x4
  83:	48 81 c4 00 01 00 00 	add    $0x100,%rsp
  8a:	48 8b 9d d8 fc ff ff 	mov    -0x328(%rbp),%rbx
  91:	48 8b e5             	mov    %rbp,%rsp
  94:	5d                   	pop    %rbp
  95:	c3                   	ret
	...

Disassembly of section .text._D3std7sumtype__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTS7kernels5BlockZQzTSQBy__T7FailureTSQBj11DomainErrorZQBbZQDt8opAssignMFNcSQEzQEy__TQEtTQEoTQEcTQCyZQFjZ__T17__lambda_L697_C24TQEdZQyMFNaNbNiNfKQEuZv:

0000000000000000 <std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).__lambda_L697_C24!(error_d.Failure!(kernels.DomainError).Failure).__lambda_L697_C24(ref error_d.Failure!(kernels.DomainError).Failure)>:
   0:	55                   	push   %rbp
   1:	48 8b ec             	mov    %rsp,%rbp
   4:	48 83 ec 20          	sub    $0x20,%rsp
   8:	48 89 7d f0          	mov    %rdi,-0x10(%rbp)
   c:	48 89 75 f8          	mov    %rsi,-0x8(%rbp)
  10:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  14:	48 8b 08             	mov    (%rax),%rcx
  17:	48 89 4d e0          	mov    %rcx,-0x20(%rbp)
  1b:	48 8d 75 e8          	lea    -0x18(%rbp),%rsi
  1f:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
  23:	e8 00 00 00 00       	call   28 <std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).__lambda_L697_C24!(error_d.Failure!(kernels.DomainError).Failure).__lambda_L697_C24(ref error_d.Failure!(kernels.DomainError).Failure)+0x28>	24: R_X86_64_PLT32	_D4core8lifetime__T15moveEmplaceImplTS7error_d__T7FailureTS7kernels11DomainErrorZQBgZQCoFNaNbNiNfMKQCkNkMKQCrZv-0x4
  28:	48 8b 75 e8          	mov    -0x18(%rbp),%rsi
  2c:	48 8b 7d e0          	mov    -0x20(%rbp),%rdi
  30:	e8 00 00 00 00       	call   35 <std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).__lambda_L697_C24!(error_d.Failure!(kernels.DomainError).Failure).__lambda_L697_C24(ref error_d.Failure!(kernels.DomainError).Failure)+0x35>	31: R_X86_64_PLT32	std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(error_d.Failure!(kernels.DomainError).Failure)-0x4
  35:	48 8b e5             	mov    %rbp,%rsp
  38:	5d                   	pop    %rbp
  39:	c3                   	ret
	...

Disassembly of section .text._D4core8lifetime__T4moveTS7error_d__T7SuccessTS7kernels5BlockZQzZQBuFNaNbNiNfNkMKQCeZQCi:

0000000000000000 <_D4core8lifetime__T4moveTS7error_d__T7SuccessTS7kernels5BlockZQzZQBuFNaNbNiNfNkMKQCeZQCi>:
   0:	55                   	push   %rbp
   1:	48 8b ec             	mov    %rsp,%rbp
   4:	48 81 ec 10 01 00 00 	sub    $0x110,%rsp
   b:	48 89 7d f0          	mov    %rdi,-0x10(%rbp)
   f:	48 89 75 f8          	mov    %rsi,-0x8(%rbp)
  13:	48 8d b5 f0 fe ff ff 	lea    -0x110(%rbp),%rsi
  1a:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
  1e:	e8 00 00 00 00       	call   23 <_D4core8lifetime__T4moveTS7error_d__T7SuccessTS7kernels5BlockZQzZQBuFNaNbNiNfNkMKQCeZQCi+0x23>	1f: R_X86_64_PLT32	_D4core8lifetime__T15moveEmplaceImplTS7error_d__T7SuccessTS7kernels5BlockZQzZQCgFNaNbNiNfMKQCcNkMKQCjZv-0x4
  23:	48 8d b5 f0 fe ff ff 	lea    -0x110(%rbp),%rsi
  2a:	48 8b 7d f0          	mov    -0x10(%rbp),%rdi
  2e:	b9 20 00 00 00       	mov    $0x20,%ecx
  33:	f3 48 a5             	rep movsq (%rsi),(%rdi)
  36:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  3a:	48 8b e5             	mov    %rbp,%rsp
  3d:	5d                   	pop    %rbp
  3e:	c3                   	ret
	...

Disassembly of section .text._D4core8lifetime__T8moveImplTS7error_d__T7SuccessTS7kernels5BlockZQzZQByFNaNbNiNfNkMKQCeZQCi:

0000000000000000 <_D4core8lifetime__T8moveImplTS7error_d__T7SuccessTS7kernels5BlockZQzZQByFNaNbNiNfNkMKQCeZQCi>:
   0:	55                   	push   %rbp
   1:	48 8b ec             	mov    %rsp,%rbp
   4:	48 81 ec 10 01 00 00 	sub    $0x110,%rsp
   b:	48 89 7d f0          	mov    %rdi,-0x10(%rbp)
   f:	48 89 75 f8          	mov    %rsi,-0x8(%rbp)
  13:	48 8d b5 f0 fe ff ff 	lea    -0x110(%rbp),%rsi
  1a:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
  1e:	e8 00 00 00 00       	call   23 <_D4core8lifetime__T8moveImplTS7error_d__T7SuccessTS7kernels5BlockZQzZQByFNaNbNiNfNkMKQCeZQCi+0x23>	1f: R_X86_64_PLT32	_D4core8lifetime__T15moveEmplaceImplTS7error_d__T7SuccessTS7kernels5BlockZQzZQCgFNaNbNiNfMKQCcNkMKQCjZv-0x4
  23:	48 8d b5 f0 fe ff ff 	lea    -0x110(%rbp),%rsi
  2a:	48 8b 7d f0          	mov    -0x10(%rbp),%rdi
  2e:	b9 20 00 00 00       	mov    $0x20,%ecx
  33:	f3 48 a5             	rep movsq (%rsi),(%rdi)
  36:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  3a:	48 8b e5             	mov    %rbp,%rsp
  3d:	5d                   	pop    %rbp
  3e:	c3                   	ret
	...

Disassembly of section .text._D4core8lifetime__T15moveEmplaceImplTS7error_d__T7SuccessTS7kernels5BlockZQzZQCgFNaNbNiNfMKQCcNkMKQCjZv:

0000000000000000 <_D4core8lifetime__T15moveEmplaceImplTS7error_d__T7SuccessTS7kernels5BlockZQzZQCgFNaNbNiNfMKQCcNkMKQCjZv>:
   0:	48 83 ec 18          	sub    $0x18,%rsp
   4:	48 89 7c 24 08       	mov    %rdi,0x8(%rsp)
   9:	48 89 74 24 10       	mov    %rsi,0x10(%rsp)
   e:	48 89 fe             	mov    %rdi,%rsi
  11:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
  16:	b9 20 00 00 00       	mov    $0x20,%ecx
  1b:	f3 48 a5             	rep movsq (%rsi),(%rdi)
  1e:	48 83 c4 18          	add    $0x18,%rsp
  22:	c3                   	ret
	...

Disassembly of section .text._D4core8lifetime__T15trustedMoveImplTS7error_d__T7SuccessTS7kernels5BlockZQzZQCgFNaNbNiNeNkMKQCeZQCi:

0000000000000000 <_D4core8lifetime__T15trustedMoveImplTS7error_d__T7SuccessTS7kernels5BlockZQzZQCgFNaNbNiNeNkMKQCeZQCi>:
   0:	55                   	push   %rbp
   1:	48 8b ec             	mov    %rsp,%rbp
   4:	48 83 ec 10          	sub    $0x10,%rsp
   8:	48 89 7d f0          	mov    %rdi,-0x10(%rbp)
   c:	48 89 75 f8          	mov    %rsi,-0x8(%rbp)
  10:	48 8b 75 f0          	mov    -0x10(%rbp),%rsi
  14:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
  18:	e8 00 00 00 00       	call   1d <_D4core8lifetime__T15trustedMoveImplTS7error_d__T7SuccessTS7kernels5BlockZQzZQCgFNaNbNiNeNkMKQCeZQCi+0x1d>	19: R_X86_64_PLT32	_D4core8lifetime__T15moveEmplaceImplTS7error_d__T7SuccessTS7kernels5BlockZQzZQCgFNaNbNiNfMKQCcNkMKQCjZv-0x4
  1d:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  21:	48 8b e5             	mov    %rbp,%rsp
  24:	5d                   	pop    %rbp
  25:	c3                   	ret
	...

Disassembly of section .text._D4core8lifetime__T7forwardS_D3std7sumtype__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTS7kernels5BlockZQzTSQBy__T7FailureTSQBj11DomainErrorZQBbZQDt8opAssignMFNcQDkZ3rhsQDsZ__T3fwdS_DQFuQFt__TQFoTQFjTQExTQDtZQGeQClMFNcQFpZQCfQFwZQCbMFNaNbNdNiNfZQGq:

0000000000000000 <core.lifetime.forward!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(error_d.Success!(kernels.Block).Success).rhs).fwd!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(error_d.Success!(kernels.Block).Success).rhs).fwd()>:
   0:	55                   	push   %rbp
   1:	48 8b ec             	mov    %rsp,%rbp
   4:	48 81 ec 10 01 00 00 	sub    $0x110,%rsp
   b:	48 89 7d f0          	mov    %rdi,-0x10(%rbp)
   f:	48 89 75 f8          	mov    %rsi,-0x8(%rbp)
  13:	48 8d b5 f0 fe ff ff 	lea    -0x110(%rbp),%rsi
  1a:	48 8b 7d f0          	mov    -0x10(%rbp),%rdi
  1e:	48 81 c7 10 01 00 00 	add    $0x110,%rdi
  25:	e8 00 00 00 00       	call   2a <core.lifetime.forward!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(error_d.Success!(kernels.Block).Success).rhs).fwd!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(error_d.Success!(kernels.Block).Success).rhs).fwd()+0x2a>	26: R_X86_64_PLT32	_D4core8lifetime__T15moveEmplaceImplTS7error_d__T7SuccessTS7kernels5BlockZQzZQCgFNaNbNiNfMKQCcNkMKQCjZv-0x4
  2a:	48 8d b5 f0 fe ff ff 	lea    -0x110(%rbp),%rsi
  31:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
  35:	b9 20 00 00 00       	mov    $0x20,%ecx
  3a:	f3 48 a5             	rep movsq (%rsi),(%rdi)
  3d:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  41:	48 8b e5             	mov    %rbp,%rsp
  44:	5d                   	pop    %rbp
  45:	c3                   	ret
	...

Disassembly of section .text._D4core8lifetime__T7forwardS_D3std7sumtype__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTS7kernels5BlockZQzTSQBy__T7FailureTSQBj11DomainErrorZQBbZQDt8opAssignMFNcQCcZ3rhsQCkZ__T3fwdS_DQFuQFt__TQFoTQFjTQExTQDtZQGeQClMFNcQEhZQCfQEoZQCbMFNaNbNdNiNfZQFi:

0000000000000000 <core.lifetime.forward!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(error_d.Failure!(kernels.DomainError).Failure).rhs).fwd!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(error_d.Failure!(kernels.DomainError).Failure).rhs).fwd()>:
   0:	55                   	push   %rbp
   1:	48 8b ec             	mov    %rsp,%rbp
   4:	48 83 ec 10          	sub    $0x10,%rsp
   8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
   c:	48 8d 75 f0          	lea    -0x10(%rbp),%rsi
  10:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
  14:	48 81 c7 08 01 00 00 	add    $0x108,%rdi
  1b:	e8 00 00 00 00       	call   20 <core.lifetime.forward!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(error_d.Failure!(kernels.DomainError).Failure).rhs).fwd!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(error_d.Failure!(kernels.DomainError).Failure).rhs).fwd()+0x20>	1c: R_X86_64_PLT32	_D4core8lifetime__T15moveEmplaceImplTS7error_d__T7FailureTS7kernels11DomainErrorZQBgZQCoFNaNbNiNfMKQCkNkMKQCrZv-0x4
  20:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  24:	48 8b e5             	mov    %rbp,%rsp
  27:	5d                   	pop    %rbp
  28:	c3                   	ret
  29:	00 00                	add    %al,(%rax)
	...

Disassembly of section .text._D4core8lifetime__T15trustedMoveImplTS3std7sumtype__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTS7kernels5BlockZQzTSQBy__T7FailureTSQBj11DomainErrorZQBbZQDtZQFfFNaNbNiNeNkMKQFdZQFh:

0000000000000000 <_D4core8lifetime__T15trustedMoveImplTS3std7sumtype__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTS7kernels5BlockZQzTSQBy__T7FailureTSQBj11DomainErrorZQBbZQDtZQFfFNaNbNiNeNkMKQFdZQFh>:
   0:	55                   	push   %rbp
   1:	48 8b ec             	mov    %rsp,%rbp
   4:	48 83 ec 10          	sub    $0x10,%rsp
   8:	48 89 7d f0          	mov    %rdi,-0x10(%rbp)
   c:	48 89 75 f8          	mov    %rsi,-0x8(%rbp)
  10:	48 8b 75 f0          	mov    -0x10(%rbp),%rsi
  14:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
  18:	e8 00 00 00 00       	call   1d <_D4core8lifetime__T15trustedMoveImplTS3std7sumtype__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTS7kernels5BlockZQzTSQBy__T7FailureTSQBj11DomainErrorZQBbZQDtZQFfFNaNbNiNeNkMKQFdZQFh+0x1d>	19: R_X86_64_PLT32	_D4core8lifetime__T15moveEmplaceImplTS3std7sumtype__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTS7kernels5BlockZQzTSQBy__T7FailureTSQBj11DomainErrorZQBbZQDtZQFfFNaNbNiNfMKQFbNkMKQFiZv-0x4
  1d:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  21:	48 8b e5             	mov    %rbp,%rsp
  24:	5d                   	pop    %rbp
  25:	c3                   	ret
	...

Disassembly of section .text._D7error_d__T6ResultTS7kernels5BlockTSQq11DomainErrorZQBp__T7successZQjFNaNbNiNfQChZSQDf__TQDaTQCwTQCkZQDm:

0000000000000000 <error_d.Result!(kernels.Block, kernels.DomainError).Result.success!().success(kernels.Block)>:
   0:	55                   	push   %rbp
   1:	48 8b ec             	mov    %rsp,%rbp
   4:	48 81 ec 60 09 00 00 	sub    $0x960,%rsp
   b:	48 89 9d a8 f6 ff ff 	mov    %rbx,-0x958(%rbp)
  12:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  16:	31 c0                	xor    %eax,%eax
  18:	89 85 c0 f7 ff ff    	mov    %eax,-0x840(%rbp)
  1e:	89 85 c4 f7 ff ff    	mov    %eax,-0x83c(%rbp)
  24:	89 85 c8 f7 ff ff    	mov    %eax,-0x838(%rbp)
  2a:	89 85 cc f7 ff ff    	mov    %eax,-0x834(%rbp)
  30:	89 85 d0 f7 ff ff    	mov    %eax,-0x830(%rbp)
  36:	89 85 d4 f7 ff ff    	mov    %eax,-0x82c(%rbp)
  3c:	89 85 d8 f7 ff ff    	mov    %eax,-0x828(%rbp)
  42:	89 85 dc f7 ff ff    	mov    %eax,-0x824(%rbp)
  48:	89 85 e0 f7 ff ff    	mov    %eax,-0x820(%rbp)
  4e:	89 85 e4 f7 ff ff    	mov    %eax,-0x81c(%rbp)
  54:	89 85 e8 f7 ff ff    	mov    %eax,-0x818(%rbp)
  5a:	89 85 ec f7 ff ff    	mov    %eax,-0x814(%rbp)
  60:	89 85 f0 f7 ff ff    	mov    %eax,-0x810(%rbp)
  66:	89 85 f4 f7 ff ff    	mov    %eax,-0x80c(%rbp)
  6c:	89 85 f8 f7 ff ff    	mov    %eax,-0x808(%rbp)
  72:	89 85 fc f7 ff ff    	mov    %eax,-0x804(%rbp)
  78:	89 85 00 f8 ff ff    	mov    %eax,-0x800(%rbp)
  7e:	89 85 04 f8 ff ff    	mov    %eax,-0x7fc(%rbp)
  84:	89 85 08 f8 ff ff    	mov    %eax,-0x7f8(%rbp)
  8a:	89 85 0c f8 ff ff    	mov    %eax,-0x7f4(%rbp)
  90:	89 85 10 f8 ff ff    	mov    %eax,-0x7f0(%rbp)
  96:	89 85 14 f8 ff ff    	mov    %eax,-0x7ec(%rbp)
  9c:	89 85 18 f8 ff ff    	mov    %eax,-0x7e8(%rbp)
  a2:	89 85 1c f8 ff ff    	mov    %eax,-0x7e4(%rbp)
  a8:	89 85 20 f8 ff ff    	mov    %eax,-0x7e0(%rbp)
  ae:	89 85 24 f8 ff ff    	mov    %eax,-0x7dc(%rbp)
  b4:	89 85 28 f8 ff ff    	mov    %eax,-0x7d8(%rbp)
  ba:	89 85 2c f8 ff ff    	mov    %eax,-0x7d4(%rbp)
  c0:	89 85 30 f8 ff ff    	mov    %eax,-0x7d0(%rbp)
  c6:	89 85 34 f8 ff ff    	mov    %eax,-0x7cc(%rbp)
  cc:	89 85 38 f8 ff ff    	mov    %eax,-0x7c8(%rbp)
  d2:	89 85 3c f8 ff ff    	mov    %eax,-0x7c4(%rbp)
  d8:	89 85 40 f8 ff ff    	mov    %eax,-0x7c0(%rbp)
  de:	89 85 44 f8 ff ff    	mov    %eax,-0x7bc(%rbp)
  e4:	89 85 48 f8 ff ff    	mov    %eax,-0x7b8(%rbp)
  ea:	89 85 4c f8 ff ff    	mov    %eax,-0x7b4(%rbp)
  f0:	89 85 50 f8 ff ff    	mov    %eax,-0x7b0(%rbp)
  f6:	89 85 54 f8 ff ff    	mov    %eax,-0x7ac(%rbp)
  fc:	89 85 58 f8 ff ff    	mov    %eax,-0x7a8(%rbp)
 102:	89 85 5c f8 ff ff    	mov    %eax,-0x7a4(%rbp)
 108:	89 85 60 f8 ff ff    	mov    %eax,-0x7a0(%rbp)
 10e:	89 85 64 f8 ff ff    	mov    %eax,-0x79c(%rbp)
 114:	89 85 68 f8 ff ff    	mov    %eax,-0x798(%rbp)
 11a:	89 85 6c f8 ff ff    	mov    %eax,-0x794(%rbp)
 120:	89 85 70 f8 ff ff    	mov    %eax,-0x790(%rbp)
 126:	89 85 74 f8 ff ff    	mov    %eax,-0x78c(%rbp)
 12c:	89 85 78 f8 ff ff    	mov    %eax,-0x788(%rbp)
 132:	89 85 7c f8 ff ff    	mov    %eax,-0x784(%rbp)
 138:	89 85 80 f8 ff ff    	mov    %eax,-0x780(%rbp)
 13e:	89 85 84 f8 ff ff    	mov    %eax,-0x77c(%rbp)
 144:	89 85 88 f8 ff ff    	mov    %eax,-0x778(%rbp)
 14a:	89 85 8c f8 ff ff    	mov    %eax,-0x774(%rbp)
 150:	89 85 90 f8 ff ff    	mov    %eax,-0x770(%rbp)
 156:	89 85 94 f8 ff ff    	mov    %eax,-0x76c(%rbp)
 15c:	89 85 98 f8 ff ff    	mov    %eax,-0x768(%rbp)
 162:	89 85 9c f8 ff ff    	mov    %eax,-0x764(%rbp)
 168:	89 85 a0 f8 ff ff    	mov    %eax,-0x760(%rbp)
 16e:	89 85 a4 f8 ff ff    	mov    %eax,-0x75c(%rbp)
 174:	89 85 a8 f8 ff ff    	mov    %eax,-0x758(%rbp)
 17a:	89 85 ac f8 ff ff    	mov    %eax,-0x754(%rbp)
 180:	89 85 b0 f8 ff ff    	mov    %eax,-0x750(%rbp)
 186:	89 85 b4 f8 ff ff    	mov    %eax,-0x74c(%rbp)
 18c:	89 85 b8 f8 ff ff    	mov    %eax,-0x748(%rbp)
 192:	89 85 bc f8 ff ff    	mov    %eax,-0x744(%rbp)
 198:	89 85 c0 f8 ff ff    	mov    %eax,-0x740(%rbp)
 19e:	89 85 c4 f8 ff ff    	mov    %eax,-0x73c(%rbp)
 1a4:	31 c9                	xor    %ecx,%ecx
 1a6:	88 8d c0 f8 ff ff    	mov    %cl,-0x740(%rbp)
 1ac:	48 8d b5 c0 f7 ff ff 	lea    -0x840(%rbp),%rsi
 1b3:	48 8d bd b0 f6 ff ff 	lea    -0x950(%rbp),%rdi
 1ba:	b9 21 00 00 00       	mov    $0x21,%ecx
 1bf:	f3 48 a5             	rep movsq (%rsi),(%rdi)
 1c2:	89 85 e0 fa ff ff    	mov    %eax,-0x520(%rbp)
 1c8:	89 85 e4 fa ff ff    	mov    %eax,-0x51c(%rbp)
 1ce:	48 8b 35 00 00 00 00 	mov    0x0(%rip),%rsi        # 1d5 <error_d.Result!(kernels.Block, kernels.DomainError).Result.success!().success(kernels.Block)+0x1d5>	1d1: R_X86_64_GOTPCREL	initializer for std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.Storage-0x4
 1d5:	48 8d bd e0 f9 ff ff 	lea    -0x620(%rbp),%rdi
 1dc:	b9 20 00 00 00       	mov    $0x20,%ecx
 1e1:	f3 48 a5             	rep movsq (%rsi),(%rdi)
 1e4:	88 85 e0 fa ff ff    	mov    %al,-0x520(%rbp)
 1ea:	48 8d b5 f0 fd ff ff 	lea    -0x210(%rbp),%rsi
 1f1:	48 8d 7d 10          	lea    0x10(%rbp),%rdi
 1f5:	e8 00 00 00 00       	call   1fa <error_d.Result!(kernels.Block, kernels.DomainError).Result.success!().success(kernels.Block)+0x1fa>	1f6: R_X86_64_PLT32	_D4core8lifetime__T15moveEmplaceImplTS7kernels5BlockZQBiFNaNbNiNfMKQBeNkMKQBlZv-0x4
 1fa:	48 8d b5 f0 fd ff ff 	lea    -0x210(%rbp),%rsi
 201:	48 8d bd f0 fc ff ff 	lea    -0x310(%rbp),%rdi
 208:	b9 20 00 00 00       	mov    $0x20,%ecx
 20d:	f3 48 a5             	rep movsq (%rsi),(%rdi)
 210:	48 8d b5 f0 fd ff ff 	lea    -0x210(%rbp),%rsi
 217:	48 8d bd f0 fb ff ff 	lea    -0x410(%rbp),%rdi
 21e:	b9 20 00 00 00       	mov    $0x20,%ecx
 223:	f3 48 a5             	rep movsq (%rsi),(%rdi)
 226:	48 8d b5 f0 fd ff ff 	lea    -0x210(%rbp),%rsi
 22d:	48 8d bd f0 fa ff ff 	lea    -0x510(%rbp),%rdi
 234:	b9 20 00 00 00       	mov    $0x20,%ecx
 239:	f3 48 a5             	rep movsq (%rsi),(%rdi)
 23c:	48 8d 9d e8 fe ff ff 	lea    -0x118(%rbp),%rbx
 243:	b9 20 00 00 00       	mov    $0x20,%ecx
 248:	ff 33                	push   (%rbx)
 24a:	48 83 eb 08          	sub    $0x8,%rbx
 24e:	ff c9                	dec    %ecx
 250:	75 f6                	jne    248 <error_d.Result!(kernels.Block, kernels.DomainError).Result.success!().success(kernels.Block)+0x248>
 252:	48 8d bd e0 f9 ff ff 	lea    -0x620(%rbp),%rdi
 259:	e8 00 00 00 00       	call   25e <error_d.Result!(kernels.Block, kernels.DomainError).Result.success!().success(kernels.Block)+0x25e>	25a: R_X86_64_PLT32	std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.this(error_d.Success!(kernels.Block).Success)-0x4
 25e:	48 81 c4 00 01 00 00 	add    $0x100,%rsp
 265:	48 89 c6             	mov    %rax,%rsi
 268:	48 8d bd d0 f8 ff ff 	lea    -0x730(%rbp),%rdi
 26f:	b9 21 00 00 00       	mov    $0x21,%ecx
 274:	f3 48 a5             	rep movsq (%rsi),(%rdi)
 277:	48 8d b5 f0 fe ff ff 	lea    -0x110(%rbp),%rsi
 27e:	48 8d bd d0 f8 ff ff 	lea    -0x730(%rbp),%rdi
 285:	e8 00 00 00 00       	call   28a <error_d.Result!(kernels.Block, kernels.DomainError).Result.success!().success(kernels.Block)+0x28a>	286: R_X86_64_PLT32	_D4core8lifetime__T15moveEmplaceImplTS3std7sumtype__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTS7kernels5BlockZQzTSQBy__T7FailureTSQBj11DomainErrorZQBbZQDtZQFfFNaNbNiNfMKQFbNkMKQFiZv-0x4
 28a:	48 8d b5 f0 fe ff ff 	lea    -0x110(%rbp),%rsi
 291:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
 295:	b9 21 00 00 00       	mov    $0x21,%ecx
 29a:	f3 48 a5             	rep movsq (%rsi),(%rdi)
 29d:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
 2a1:	48 8b 9d a8 f6 ff ff 	mov    -0x958(%rbp),%rbx
 2a8:	48 8b e5             	mov    %rbp,%rsp
 2ab:	5d                   	pop    %rbp
 2ac:	c3                   	ret
 2ad:	00 00                	add    %al,(%rax)
	...

Disassembly of section .text._D4core8lifetime__T7forwardS_D3std7sumtype__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTS7kernels5BlockZQzTSQBy__T7FailureTSQBj11DomainErrorZQBbZQDt6__ctorMFNcQDiZ5valueQDsZ__T3fwdS_DQFuQFt__TQFoTQFjTQExTQDtZQGeQClMFNcQFpZQChQFwZQCbMFNaNbNdNiNfZQGq:

0000000000000000 <core.lifetime.forward!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.this(error_d.Success!(kernels.Block).Success).value).fwd!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.this(error_d.Success!(kernels.Block).Success).value).fwd()>:
   0:	55                   	push   %rbp
   1:	48 8b ec             	mov    %rsp,%rbp
   4:	48 81 ec 10 01 00 00 	sub    $0x110,%rsp
   b:	48 89 7d f0          	mov    %rdi,-0x10(%rbp)
   f:	48 89 75 f8          	mov    %rsi,-0x8(%rbp)
  13:	48 8d b5 f0 fe ff ff 	lea    -0x110(%rbp),%rsi
  1a:	48 8b 7d f0          	mov    -0x10(%rbp),%rdi
  1e:	48 83 c7 18          	add    $0x18,%rdi
  22:	e8 00 00 00 00       	call   27 <core.lifetime.forward!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.this(error_d.Success!(kernels.Block).Success).value).fwd!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.this(error_d.Success!(kernels.Block).Success).value).fwd()+0x27>	23: R_X86_64_PLT32	_D4core8lifetime__T15moveEmplaceImplTS7error_d__T7SuccessTS7kernels5BlockZQzZQCgFNaNbNiNfMKQCcNkMKQCjZv-0x4
  27:	48 8d b5 f0 fe ff ff 	lea    -0x110(%rbp),%rsi
  2e:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
  32:	b9 20 00 00 00       	mov    $0x20,%ecx
  37:	f3 48 a5             	rep movsq (%rsi),(%rdi)
  3a:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  3e:	48 8b e5             	mov    %rbp,%rsp
  41:	5d                   	pop    %rbp
  42:	c3                   	ret
	...

Disassembly of section .text._D7error_d__T6ResultTmTS7kernels11DomainErrorZQBh__T3mapTPFNaNbNiNfmZmTSQCs__TQCnTmTQCjZQCxZQBoMFNaNbNiNfMQBxZQBn:

0000000000000000 <error_d.Result!(ulong, kernels.DomainError).Result.map!(ulong(ulong) pure nothrow @nogc @safe function, error_d.Result!(ulong, kernels.DomainError).Result).map(scope ulong(ulong) pure nothrow @nogc @safe function)>:
   0:	55                   	push   %rbp
   1:	48 8b ec             	mov    %rsp,%rbp
   4:	48 81 ec d0 00 00 00 	sub    $0xd0,%rsp
   b:	48 89 9d 30 ff ff ff 	mov    %rbx,-0xd0(%rbp)
  12:	4c 89 a5 38 ff ff ff 	mov    %r12,-0xc8(%rbp)
  19:	48 89 55 f8          	mov    %rdx,-0x8(%rbp)
  1d:	48 89 fb             	mov    %rdi,%rbx
  20:	49 89 f4             	mov    %rsi,%r12
  23:	48 8b f3             	mov    %rbx,%rsi
  26:	48 8b fb             	mov    %rbx,%rdi
  29:	e8 00 00 00 00       	call   2e <error_d.Result!(ulong, kernels.DomainError).Result.map!(ulong(ulong) pure nothrow @nogc @safe function, error_d.Result!(ulong, kernels.DomainError).Result).map(scope ulong(ulong) pure nothrow @nogc @safe function)+0x2e>	2a: R_X86_64_PLT32	std.sumtype.match!(error_d.Result!(ulong, kernels.DomainError).Result.state().__lambda_L162_C31).match!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).match(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType))-0x4
  2e:	83 f8 02             	cmp    $0x2,%eax
  31:	0f 85 cf 00 00 00    	jne    106 <error_d.Result!(ulong, kernels.DomainError).Result.map!(ulong(ulong) pure nothrow @nogc @safe function, error_d.Result!(ulong, kernels.DomainError).Result).map(scope ulong(ulong) pure nothrow @nogc @safe function)+0x106>
  37:	48 8b f3             	mov    %rbx,%rsi
  3a:	48 8b fb             	mov    %rbx,%rdi
  3d:	e8 00 00 00 00       	call   42 <error_d.Result!(ulong, kernels.DomainError).Result.map!(ulong(ulong) pure nothrow @nogc @safe function, error_d.Result!(ulong, kernels.DomainError).Result).map(scope ulong(ulong) pure nothrow @nogc @safe function)+0x42>	3e: R_X86_64_PLT32	std.sumtype.match!(error_d.Result!(ulong, kernels.DomainError).Result.state().__lambda_L162_C31).match!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).match(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType))-0x4
  42:	83 f8 02             	cmp    $0x2,%eax
  45:	74 07                	je     4e <error_d.Result!(ulong, kernels.DomainError).Result.map!(ulong(ulong) pure nothrow @nogc @safe function, error_d.Result!(ulong, kernels.DomainError).Result).map(scope ulong(ulong) pure nothrow @nogc @safe function)+0x4e>
  47:	48 ff 15 00 00 00 00 	rex.W call *0x0(%rip)        # 4e <error_d.Result!(ulong, kernels.DomainError).Result.map!(ulong(ulong) pure nothrow @nogc @safe function, error_d.Result!(ulong, kernels.DomainError).Result).map(scope ulong(ulong) pure nothrow @nogc @safe function)+0x4e>	4a: R_X86_64_GOTPCREL	abort-0x4
  4e:	48 8b fb             	mov    %rbx,%rdi
  51:	e8 00 00 00 00       	call   56 <error_d.Result!(ulong, kernels.DomainError).Result.map!(ulong(ulong) pure nothrow @nogc @safe function, error_d.Result!(ulong, kernels.DomainError).Result).map(scope ulong(ulong) pure nothrow @nogc @safe function)+0x56>	52: R_X86_64_PLT32	std.sumtype.matchImpl!(1, std.sumtype.getLvalue!(0, error_d.Failure!(kernels.DomainError).Failure).getLvalue).matchImpl!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).matchImpl(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)-0x4
  56:	48 8b 08             	mov    (%rax),%rcx
  59:	48 89 8d 40 ff ff ff 	mov    %rcx,-0xc0(%rbp)
  60:	31 c0                	xor    %eax,%eax
  62:	89 85 68 ff ff ff    	mov    %eax,-0x98(%rbp)
  68:	89 85 6c ff ff ff    	mov    %eax,-0x94(%rbp)
  6e:	89 85 70 ff ff ff    	mov    %eax,-0x90(%rbp)
  74:	89 85 74 ff ff ff    	mov    %eax,-0x8c(%rbp)
  7a:	88 85 70 ff ff ff    	mov    %al,-0x90(%rbp)
  80:	48 8b 95 70 ff ff ff 	mov    -0x90(%rbp),%rdx
  87:	48 89 95 60 ff ff ff 	mov    %rdx,-0xa0(%rbp)
  8e:	88 85 68 ff ff ff    	mov    %al,-0x98(%rbp)
  94:	48 8d b5 78 ff ff ff 	lea    -0x88(%rbp),%rsi
  9b:	48 8d bd 40 ff ff ff 	lea    -0xc0(%rbp),%rdi
  a2:	e8 00 00 00 00       	call   a7 <error_d.Result!(ulong, kernels.DomainError).Result.map!(ulong(ulong) pure nothrow @nogc @safe function, error_d.Result!(ulong, kernels.DomainError).Result).map(scope ulong(ulong) pure nothrow @nogc @safe function)+0xa7>	a3: R_X86_64_PLT32	_D4core8lifetime__T15moveEmplaceImplTS7kernels11DomainErrorZQBpFNaNbNiNfMKQBlNkMKQBsZv-0x4
  a7:	48 8b b5 78 ff ff ff 	mov    -0x88(%rbp),%rsi
  ae:	48 8d bd 60 ff ff ff 	lea    -0xa0(%rbp),%rdi
  b5:	e8 00 00 00 00       	call   ba <error_d.Result!(ulong, kernels.DomainError).Result.map!(ulong(ulong) pure nothrow @nogc @safe function, error_d.Result!(ulong, kernels.DomainError).Result).map(scope ulong(ulong) pure nothrow @nogc @safe function)+0xba>	b6: R_X86_64_PLT32	std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.this(error_d.Failure!(kernels.DomainError).Failure)-0x4
  ba:	48 8b 50 08          	mov    0x8(%rax),%rdx
  be:	48 8b 00             	mov    (%rax),%rax
  c1:	48 89 85 50 ff ff ff 	mov    %rax,-0xb0(%rbp)
  c8:	48 89 95 58 ff ff ff 	mov    %rdx,-0xa8(%rbp)
  cf:	48 8d 75 80          	lea    -0x80(%rbp),%rsi
  d3:	48 8d bd 50 ff ff ff 	lea    -0xb0(%rbp),%rdi
  da:	e8 00 00 00 00       	call   df <error_d.Result!(ulong, kernels.DomainError).Result.map!(ulong(ulong) pure nothrow @nogc @safe function, error_d.Result!(ulong, kernels.DomainError).Result).map(scope ulong(ulong) pure nothrow @nogc @safe function)+0xdf>	db: R_X86_64_PLT32	_D4core8lifetime__T15moveEmplaceImplTS3std7sumtype__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTmZQlTSQBk__T7FailureTS7kernels11DomainErrorZQBgZQDkZQEwFNaNbNiNfMKQEsNkMKQEzZv-0x4
  df:	48 8b 45 80          	mov    -0x80(%rbp),%rax
  e3:	48 8b 4d 88          	mov    -0x78(%rbp),%rcx
  e7:	49 89 04 24          	mov    %rax,(%r12)
  eb:	49 89 4c 24 08       	mov    %rcx,0x8(%r12)
  f0:	49 8b c4             	mov    %r12,%rax
  f3:	48 8b 9d 30 ff ff ff 	mov    -0xd0(%rbp),%rbx
  fa:	4c 8b a5 38 ff ff ff 	mov    -0xc8(%rbp),%r12
 101:	48 8b e5             	mov    %rbp,%rsp
 104:	5d                   	pop    %rbp
 105:	c3                   	ret
 106:	48 8b f3             	mov    %rbx,%rsi
 109:	48 8b fb             	mov    %rbx,%rdi
 10c:	e8 00 00 00 00       	call   111 <error_d.Result!(ulong, kernels.DomainError).Result.map!(ulong(ulong) pure nothrow @nogc @safe function, error_d.Result!(ulong, kernels.DomainError).Result).map(scope ulong(ulong) pure nothrow @nogc @safe function)+0x111>	10d: R_X86_64_PLT32	std.sumtype.match!(error_d.Result!(ulong, kernels.DomainError).Result.state().__lambda_L162_C31).match!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).match(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType))-0x4
 111:	85 c0                	test   %eax,%eax
 113:	75 38                	jne    14d <error_d.Result!(ulong, kernels.DomainError).Result.map!(ulong(ulong) pure nothrow @nogc @safe function, error_d.Result!(ulong, kernels.DomainError).Result).map(scope ulong(ulong) pure nothrow @nogc @safe function)+0x14d>
 115:	31 c0                	xor    %eax,%eax
 117:	89 45 90             	mov    %eax,-0x70(%rbp)
 11a:	89 45 94             	mov    %eax,-0x6c(%rbp)
 11d:	89 45 98             	mov    %eax,-0x68(%rbp)
 120:	89 45 9c             	mov    %eax,-0x64(%rbp)
 123:	88 45 98             	mov    %al,-0x68(%rbp)
 126:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
 12a:	48 8b 45 90          	mov    -0x70(%rbp),%rax
 12e:	49 89 04 24          	mov    %rax,(%r12)
 132:	49 89 54 24 08       	mov    %rdx,0x8(%r12)
 137:	49 8b c4             	mov    %r12,%rax
 13a:	48 8b 9d 30 ff ff ff 	mov    -0xd0(%rbp),%rbx
 141:	4c 8b a5 38 ff ff ff 	mov    -0xc8(%rbp),%r12
 148:	48 8b e5             	mov    %rbp,%rsp
 14b:	5d                   	pop    %rbp
 14c:	c3                   	ret
 14d:	48 8b f3             	mov    %rbx,%rsi
 150:	48 8b fb             	mov    %rbx,%rdi
 153:	e8 00 00 00 00       	call   158 <error_d.Result!(ulong, kernels.DomainError).Result.map!(ulong(ulong) pure nothrow @nogc @safe function, error_d.Result!(ulong, kernels.DomainError).Result).map(scope ulong(ulong) pure nothrow @nogc @safe function)+0x158>	154: R_X86_64_PLT32	std.sumtype.match!(error_d.Result!(ulong, kernels.DomainError).Result.state().__lambda_L162_C31).match!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).match(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType))-0x4
 158:	83 f8 01             	cmp    $0x1,%eax
 15b:	74 07                	je     164 <error_d.Result!(ulong, kernels.DomainError).Result.map!(ulong(ulong) pure nothrow @nogc @safe function, error_d.Result!(ulong, kernels.DomainError).Result).map(scope ulong(ulong) pure nothrow @nogc @safe function)+0x164>
 15d:	48 ff 15 00 00 00 00 	rex.W call *0x0(%rip)        # 164 <error_d.Result!(ulong, kernels.DomainError).Result.map!(ulong(ulong) pure nothrow @nogc @safe function, error_d.Result!(ulong, kernels.DomainError).Result).map(scope ulong(ulong) pure nothrow @nogc @safe function)+0x164>	160: R_X86_64_GOTPCREL	abort-0x4
 164:	48 8b fb             	mov    %rbx,%rdi
 167:	e8 00 00 00 00       	call   16c <error_d.Result!(ulong, kernels.DomainError).Result.map!(ulong(ulong) pure nothrow @nogc @safe function, error_d.Result!(ulong, kernels.DomainError).Result).map(scope ulong(ulong) pure nothrow @nogc @safe function)+0x16c>	168: R_X86_64_PLT32	std.sumtype.matchImpl!(1, std.sumtype.getLvalue!(0, error_d.Success!(ulong).Success).getLvalue).matchImpl!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).matchImpl(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)-0x4
 16c:	48 8b 38             	mov    (%rax),%rdi
 16f:	48 ff 55 f8          	rex.W call *-0x8(%rbp)
 173:	48 89 45 a0          	mov    %rax,-0x60(%rbp)
 177:	31 c0                	xor    %eax,%eax
 179:	89 45 c8             	mov    %eax,-0x38(%rbp)
 17c:	89 45 cc             	mov    %eax,-0x34(%rbp)
 17f:	89 45 d0             	mov    %eax,-0x30(%rbp)
 182:	89 45 d4             	mov    %eax,-0x2c(%rbp)
 185:	88 45 d0             	mov    %al,-0x30(%rbp)
 188:	48 8b 4d d0          	mov    -0x30(%rbp),%rcx
 18c:	48 89 4d c0          	mov    %rcx,-0x40(%rbp)
 190:	88 45 c8             	mov    %al,-0x38(%rbp)
 193:	48 8b 75 a0          	mov    -0x60(%rbp),%rsi
 197:	48 8d 7d c0          	lea    -0x40(%rbp),%rdi
 19b:	e8 00 00 00 00       	call   1a0 <error_d.Result!(ulong, kernels.DomainError).Result.map!(ulong(ulong) pure nothrow @nogc @safe function, error_d.Result!(ulong, kernels.DomainError).Result).map(scope ulong(ulong) pure nothrow @nogc @safe function)+0x1a0>	19c: R_X86_64_PLT32	std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.this(error_d.Success!(ulong).Success)-0x4
 1a0:	48 8b 50 08          	mov    0x8(%rax),%rdx
 1a4:	48 8b 00             	mov    (%rax),%rax
 1a7:	48 89 45 b0          	mov    %rax,-0x50(%rbp)
 1ab:	48 89 55 b8          	mov    %rdx,-0x48(%rbp)
 1af:	48 8d 75 e0          	lea    -0x20(%rbp),%rsi
 1b3:	48 8d 7d b0          	lea    -0x50(%rbp),%rdi
 1b7:	e8 00 00 00 00       	call   1bc <error_d.Result!(ulong, kernels.DomainError).Result.map!(ulong(ulong) pure nothrow @nogc @safe function, error_d.Result!(ulong, kernels.DomainError).Result).map(scope ulong(ulong) pure nothrow @nogc @safe function)+0x1bc>	1b8: R_X86_64_PLT32	_D4core8lifetime__T15moveEmplaceImplTS3std7sumtype__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTmZQlTSQBk__T7FailureTS7kernels11DomainErrorZQBgZQDkZQEwFNaNbNiNfMKQEsNkMKQEzZv-0x4
 1bc:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
 1c0:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
 1c4:	49 89 04 24          	mov    %rax,(%r12)
 1c8:	49 89 4c 24 08       	mov    %rcx,0x8(%r12)
 1cd:	49 8b c4             	mov    %r12,%rax
 1d0:	48 8b 9d 30 ff ff ff 	mov    -0xd0(%rbp),%rbx
 1d7:	4c 8b a5 38 ff ff ff 	mov    -0xc8(%rbp),%r12
 1de:	48 8b e5             	mov    %rbp,%rsp
 1e1:	5d                   	pop    %rbp
 1e2:	c3                   	ret
	...

Disassembly of section .text._D7error_d__T6ResultTmTS7kernels11DomainErrorZQBh__T5valueTSQCg__TQCbTmTQBxZQClZQBcMFNaNbNiNfZm:

0000000000000000 <error_d.Result!(ulong, kernels.DomainError).Result.value!(error_d.Result!(ulong, kernels.DomainError).Result).value()>:
   0:	55                   	push   %rbp
   1:	48 8b ec             	mov    %rsp,%rbp
   4:	50                   	push   %rax
   5:	53                   	push   %rbx
   6:	48 89 fb             	mov    %rdi,%rbx
   9:	48 8b f3             	mov    %rbx,%rsi
   c:	48 8b fb             	mov    %rbx,%rdi
   f:	e8 00 00 00 00       	call   14 <error_d.Result!(ulong, kernels.DomainError).Result.value!(error_d.Result!(ulong, kernels.DomainError).Result).value()+0x14>	10: R_X86_64_PLT32	std.sumtype.match!(error_d.Result!(ulong, kernels.DomainError).Result.state().__lambda_L162_C31).match!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).match(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType))-0x4
  14:	83 f8 01             	cmp    $0x1,%eax
  17:	74 07                	je     20 <error_d.Result!(ulong, kernels.DomainError).Result.value!(error_d.Result!(ulong, kernels.DomainError).Result).value()+0x20>
  19:	48 ff 15 00 00 00 00 	rex.W call *0x0(%rip)        # 20 <error_d.Result!(ulong, kernels.DomainError).Result.value!(error_d.Result!(ulong, kernels.DomainError).Result).value()+0x20>	1c: R_X86_64_GOTPCREL	abort-0x4
  20:	48 8b fb             	mov    %rbx,%rdi
  23:	e8 00 00 00 00       	call   28 <error_d.Result!(ulong, kernels.DomainError).Result.value!(error_d.Result!(ulong, kernels.DomainError).Result).value()+0x28>	24: R_X86_64_PLT32	std.sumtype.matchImpl!(1, std.sumtype.getLvalue!(0, error_d.Success!(ulong).Success).getLvalue).matchImpl!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).matchImpl(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)-0x4
  28:	48 8b 00             	mov    (%rax),%rax
  2b:	5b                   	pop    %rbx
  2c:	48 8b e5             	mov    %rbp,%rsp
  2f:	5d                   	pop    %rbp
  30:	c3                   	ret
  31:	00 00                	add    %al,(%rax)
	...

Disassembly of section .text._D3std7sumtype__T3getTS7error_d__T7SuccessTmZQlZ__TQBiTSQCcQCb__T7SumTypeTSQCa5EmptyTQClTSQCp__T7FailureTS7kernels11DomainErrorZQBgZQCpZQEpFNaNbNcNiNfKQDsZQFd:

0000000000000000 <std.sumtype.get!(error_d.Success!(ulong).Success).get!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).get(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)>:
   0:	55                   	push   %rbp
   1:	48 8b ec             	mov    %rsp,%rbp
   4:	48 83 ec 10          	sub    $0x10,%rsp
   8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
   c:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
  10:	e8 00 00 00 00       	call   15 <std.sumtype.get!(error_d.Success!(ulong).Success).get!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).get(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)+0x15>	11: R_X86_64_PLT32	std.sumtype.matchImpl!(1, std.sumtype.getLvalue!(0, error_d.Success!(ulong).Success).getLvalue).matchImpl!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).matchImpl(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)-0x4
  15:	48 8b e5             	mov    %rbp,%rsp
  18:	5d                   	pop    %rbp
  19:	c3                   	ret
	...

Disassembly of section .text._D3std7sumtype__T5matchSQwQu__T9getLvalueVEQBp8typecons__T4FlagVAyaa4_7472795fZQvi0TS7error_d__T7SuccessTmZQlZQDbZ__TQDwTSQEqQEp__T7SumTypeTSQCe5EmptyTQCpTSQCt__T7FailureTS7kernels11DomainErrorZQBgZQCpZQHdFNaNbNcNiNfKQDsZQFh:

0000000000000000 <std.sumtype.match!(std.sumtype.getLvalue!(0, error_d.Success!(ulong).Success).getLvalue).match!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).match(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)>:
   0:	55                   	push   %rbp
   1:	48 8b ec             	mov    %rsp,%rbp
   4:	48 83 ec 10          	sub    $0x10,%rsp
   8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
   c:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
  10:	e8 00 00 00 00       	call   15 <std.sumtype.match!(std.sumtype.getLvalue!(0, error_d.Success!(ulong).Success).getLvalue).match!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).match(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)+0x15>	11: R_X86_64_PLT32	std.sumtype.matchImpl!(1, std.sumtype.getLvalue!(0, error_d.Success!(ulong).Success).getLvalue).matchImpl!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).matchImpl(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)-0x4
  15:	48 8b e5             	mov    %rbp,%rsp
  18:	5d                   	pop    %rbp
  19:	c3                   	ret
	...

Disassembly of section .text._D3std7sumtype__T9matchImplVEQBb8typecons__T4FlagVAyaa10_65786861757374697665ZQBii1SQDeQDd__T9getLvalueVEQDzQCy__TQCsVQCqa4_7472795fZQDli0TS7error_d__T7SuccessTmZQlZQCuZ__TQFzTSQGtQGs__T7SumTypeTSQCe5EmptyTQCpTSQCt__T7FailureTS7kernels11DomainErrorZQBgZQCpZQJgFNaNbNcNiNfKQDsZQFh:

0000000000000000 <std.sumtype.matchImpl!(1, std.sumtype.getLvalue!(0, error_d.Success!(ulong).Success).getLvalue).matchImpl!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).matchImpl(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)>:
   0:	55                   	push   %rbp
   1:	48 8b ec             	mov    %rsp,%rbp
   4:	48 83 ec 10          	sub    $0x10,%rsp
   8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
   c:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
  10:	0f b6 4f 08          	movzbl 0x8(%rdi),%ecx
  14:	0f b6 c1             	movzbl %cl,%eax
  17:	85 c0                	test   %eax,%eax
  19:	74 0c                	je     27 <std.sumtype.matchImpl!(1, std.sumtype.getLvalue!(0, error_d.Success!(ulong).Success).getLvalue).matchImpl!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).matchImpl(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)+0x27>
  1b:	83 f8 01             	cmp    $0x1,%eax
  1e:	74 19                	je     39 <std.sumtype.matchImpl!(1, std.sumtype.getLvalue!(0, error_d.Success!(ulong).Success).getLvalue).matchImpl!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).matchImpl(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)+0x39>
  20:	83 f8 02             	cmp    $0x2,%eax
  23:	74 1c                	je     41 <std.sumtype.matchImpl!(1, std.sumtype.getLvalue!(0, error_d.Success!(ulong).Success).getLvalue).matchImpl!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).matchImpl(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)+0x41>
  25:	eb 2c                	jmp    53 <std.sumtype.matchImpl!(1, std.sumtype.getLvalue!(0, error_d.Success!(ulong).Success).getLvalue).matchImpl!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).matchImpl(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)+0x53>
  27:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  2b:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
  2f:	e8 00 00 00 00       	call   34 <std.sumtype.matchImpl!(1, std.sumtype.getLvalue!(0, error_d.Success!(ulong).Success).getLvalue).matchImpl!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).matchImpl(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)+0x34>	30: R_X86_64_PLT32	std.sumtype.getLvalue!(0, error_d.Success!(ulong).Success).getLvalue!(error_d.Empty).getLvalue(ref error_d.Empty)-0x4
  34:	48 8b e5             	mov    %rbp,%rsp
  37:	5d                   	pop    %rbp
  38:	c3                   	ret
  39:	48 8b c7             	mov    %rdi,%rax
  3c:	48 8b e5             	mov    %rbp,%rsp
  3f:	5d                   	pop    %rbp
  40:	c3                   	ret
  41:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  45:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
  49:	e8 00 00 00 00       	call   4e <std.sumtype.matchImpl!(1, std.sumtype.getLvalue!(0, error_d.Success!(ulong).Success).getLvalue).matchImpl!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).matchImpl(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)+0x4e>	4a: R_X86_64_PLT32	std.sumtype.getLvalue!(0, error_d.Success!(ulong).Success).getLvalue!(error_d.Failure!(kernels.DomainError).Failure).getLvalue(ref error_d.Failure!(kernels.DomainError).Failure)-0x4
  4e:	48 8b e5             	mov    %rbp,%rsp
  51:	5d                   	pop    %rbp
  52:	c3                   	ret
  53:	0f 0b                	ud2
  55:	48 8b e5             	mov    %rbp,%rsp
  58:	5d                   	pop    %rbp
  59:	c3                   	ret
	...

Disassembly of section .text._D3std7sumtype__T9getLvalueVEQBb8typecons__T4FlagVAyaa4_7472795fZQvi0TS7error_d__T7SuccessTmZQlZ__TQDeTSQBh5EmptyZQDtFNaNbNcNiNfKQBaZQCl:

0000000000000000 <std.sumtype.getLvalue!(0, error_d.Success!(ulong).Success).getLvalue!(error_d.Empty).getLvalue(ref error_d.Empty)>:
   0:	0f 0b                	ud2
   2:	c3                   	ret
	...

Disassembly of section .text._D3std7sumtype__T9getLvalueVEQBb8typecons__T4FlagVAyaa4_7472795fZQvi0TS7error_d__T7SuccessTmZQlZ__TQDeTQBhZQDmFNaNbNcNiNfKQCaZQCe:

0000000000000000 <std.sumtype.getLvalue!(0, error_d.Success!(ulong).Success).getLvalue!(error_d.Success!(ulong).Success).getLvalue(ref error_d.Success!(ulong).Success)>:
   0:	48 89 f8             	mov    %rdi,%rax
   3:	c3                   	ret

Disassembly of section .text._D3std7sumtype__T9getLvalueVEQBb8typecons__T4FlagVAyaa4_7472795fZQvi0TS7error_d__T7SuccessTmZQlZ__TQDeTSQBh__T7FailureTS7kernels11DomainErrorZQBgZQEzFNaNbNcNiNfKQCgZQDr:

0000000000000000 <std.sumtype.getLvalue!(0, error_d.Success!(ulong).Success).getLvalue!(error_d.Failure!(kernels.DomainError).Failure).getLvalue(ref error_d.Failure!(kernels.DomainError).Failure)>:
   0:	0f 0b                	ud2
   2:	c3                   	ret
	...

Disassembly of section .text._D3std7sumtype__T5matchS7error_d__T6ResultTmTS7kernels11DomainErrorZQBh5stateMxFNaNbNiNfZ17__lambda_L162_C31Z__TQDrTxSQEmQEl__T7SumTypeTSQEj5EmptyTSQEu__T7SuccessTmZQlTSQFp__T7FailureTQFjZQnZQCmZQGwMFNaNbNiNfKxQDpZEQHj11ResultState:

0000000000000000 <std.sumtype.match!(error_d.Result!(ulong, kernels.DomainError).Result.state().__lambda_L162_C31).match!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).match(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType))>:
   0:	55                   	push   %rbp
   1:	48 8b ec             	mov    %rsp,%rbp
   4:	48 83 ec 10          	sub    $0x10,%rsp
   8:	48 89 7d f0          	mov    %rdi,-0x10(%rbp)
   c:	48 89 75 f8          	mov    %rsi,-0x8(%rbp)
  10:	48 8b 75 f8          	mov    -0x8(%rbp),%rsi
  14:	48 8b 7d f0          	mov    -0x10(%rbp),%rdi
  18:	e8 00 00 00 00       	call   1d <std.sumtype.match!(error_d.Result!(ulong, kernels.DomainError).Result.state().__lambda_L162_C31).match!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).match(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType))+0x1d>	19: R_X86_64_PLT32	std.sumtype.matchImpl!(1, error_d.Result!(ulong, kernels.DomainError).Result.state().__lambda_L162_C31).matchImpl!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).matchImpl(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType))-0x4
  1d:	48 8b e5             	mov    %rbp,%rsp
  20:	5d                   	pop    %rbp
  21:	c3                   	ret
	...

Disassembly of section .text._D3std7sumtype__T9matchImplVEQBb8typecons__T4FlagVAyaa10_65786861757374697665ZQBii1S7error_d__T6ResultTmTS7kernels11DomainErrorZQBh5stateMxFNaNbNiNfZ17__lambda_L162_C31Z__TQFzTxSQGuQGt__T7SumTypeTSQEj5EmptyTSQEu__T7SuccessTmZQlTSQFp__T7FailureTQFjZQnZQCmZQJeMFNaNbNiNfKxQDpZEQHj11ResultState:

0000000000000000 <std.sumtype.matchImpl!(1, error_d.Result!(ulong, kernels.DomainError).Result.state().__lambda_L162_C31).matchImpl!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).matchImpl(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType))>:
   0:	0f b6 4e 08          	movzbl 0x8(%rsi),%ecx
   4:	0f b6 c1             	movzbl %cl,%eax
   7:	85 c0                	test   %eax,%eax
   9:	74 0c                	je     17 <std.sumtype.matchImpl!(1, error_d.Result!(ulong, kernels.DomainError).Result.state().__lambda_L162_C31).matchImpl!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).matchImpl(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType))+0x17>
   b:	83 f8 01             	cmp    $0x1,%eax
   e:	74 0a                	je     1a <std.sumtype.matchImpl!(1, error_d.Result!(ulong, kernels.DomainError).Result.state().__lambda_L162_C31).matchImpl!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).matchImpl(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType))+0x1a>
  10:	83 f8 02             	cmp    $0x2,%eax
  13:	74 0b                	je     20 <std.sumtype.matchImpl!(1, error_d.Result!(ulong, kernels.DomainError).Result.state().__lambda_L162_C31).matchImpl!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).matchImpl(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType))+0x20>
  15:	eb 0f                	jmp    26 <std.sumtype.matchImpl!(1, error_d.Result!(ulong, kernels.DomainError).Result.state().__lambda_L162_C31).matchImpl!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).matchImpl(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType))+0x26>
  17:	31 c0                	xor    %eax,%eax
  19:	c3                   	ret
  1a:	b8 01 00 00 00       	mov    $0x1,%eax
  1f:	c3                   	ret
  20:	b8 02 00 00 00       	mov    $0x2,%eax
  25:	c3                   	ret
  26:	0f 0b                	ud2
  28:	c3                   	ret
  29:	00 00                	add    %al,(%rax)
	...

Disassembly of section .text._D7error_d__T6ResultTmTS7kernels11DomainErrorZQBh5stateMxFNaNbNiNfZ__T17__lambda_L162_C31TSQDl5EmptyZQBfFNaNbNiNfKxSQEkQzZEQEr11ResultState:

0000000000000000 <error_d.Result!(ulong, kernels.DomainError).Result.state() const.__lambda_L162_C31!(error_d.Empty).__lambda_L162_C31(ref const(error_d.Empty))>:
   0:	31 c0                	xor    %eax,%eax
   2:	c3                   	ret
	...

Disassembly of section .text._D7error_d__T6ResultTmTS7kernels11DomainErrorZQBh5stateMxFNaNbNiNfZ__T17__lambda_L162_C31TSQDl__T7SuccessTmZQlZQBpFNaNbNiNfKxSQEu__TQBjTmZQBpZEQFl11ResultState:

0000000000000000 <error_d.Result!(ulong, kernels.DomainError).Result.state() const.__lambda_L162_C31!(error_d.Success!(ulong).Success).__lambda_L162_C31(ref const(error_d.Success!(ulong).Success))>:
   0:	b8 01 00 00 00       	mov    $0x1,%eax
   5:	c3                   	ret
	...

Disassembly of section .text._D7error_d__T6ResultTmTS7kernels11DomainErrorZQBh5stateMxFNaNbNiNfZ__T17__lambda_L162_C31TSQDl__T7FailureTQDfZQnZQBrFNaNbNiNfKxSQEw__TQBlTQElZQBtZEQFp11ResultState:

0000000000000000 <error_d.Result!(ulong, kernels.DomainError).Result.state() const.__lambda_L162_C31!(error_d.Failure!(kernels.DomainError).Failure).__lambda_L162_C31(ref const(error_d.Failure!(kernels.DomainError).Failure))>:
   0:	b8 02 00 00 00       	mov    $0x2,%eax
   5:	c3                   	ret
	...

Disassembly of section .text._D7error_d__T6ResultTmTS7kernels11DomainErrorZQBh__T5errorTSQCg__TQCbTmTQBxZQClZQBcMFNaNbNiNfZQCt:

0000000000000000 <error_d.Result!(ulong, kernels.DomainError).Result.error!(error_d.Result!(ulong, kernels.DomainError).Result).error()>:
   0:	55                   	push   %rbp
   1:	48 8b ec             	mov    %rsp,%rbp
   4:	50                   	push   %rax
   5:	53                   	push   %rbx
   6:	48 89 fb             	mov    %rdi,%rbx
   9:	48 8b f3             	mov    %rbx,%rsi
   c:	48 89 f7             	mov    %rsi,%rdi
   f:	e8 00 00 00 00       	call   14 <error_d.Result!(ulong, kernels.DomainError).Result.error!(error_d.Result!(ulong, kernels.DomainError).Result).error()+0x14>	10: R_X86_64_PLT32	std.sumtype.matchImpl!(1, error_d.Result!(ulong, kernels.DomainError).Result.state().__lambda_L162_C31).matchImpl!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).matchImpl(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType))-0x4
  14:	83 f8 02             	cmp    $0x2,%eax
  17:	74 07                	je     20 <error_d.Result!(ulong, kernels.DomainError).Result.error!(error_d.Result!(ulong, kernels.DomainError).Result).error()+0x20>
  19:	48 ff 15 00 00 00 00 	rex.W call *0x0(%rip)        # 20 <error_d.Result!(ulong, kernels.DomainError).Result.error!(error_d.Result!(ulong, kernels.DomainError).Result).error()+0x20>	1c: R_X86_64_GOTPCREL	abort-0x4
  20:	48 8b fb             	mov    %rbx,%rdi
  23:	e8 00 00 00 00       	call   28 <error_d.Result!(ulong, kernels.DomainError).Result.error!(error_d.Result!(ulong, kernels.DomainError).Result).error()+0x28>	24: R_X86_64_PLT32	std.sumtype.matchImpl!(1, std.sumtype.getLvalue!(0, error_d.Failure!(kernels.DomainError).Failure).getLvalue).matchImpl!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).matchImpl(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)-0x4
  28:	48 8b 00             	mov    (%rax),%rax
  2b:	5b                   	pop    %rbx
  2c:	48 8b e5             	mov    %rbp,%rsp
  2f:	5d                   	pop    %rbp
  30:	c3                   	ret
  31:	00 00                	add    %al,(%rax)
	...

Disassembly of section .text._D3std7sumtype__T3getTS7error_d__T7FailureTS7kernels11DomainErrorZQBgZ__TQCeTSQCyQCx__T7SumTypeTSQCw5EmptyTSQDh__T7SuccessTmZQlTQEcZQBtZQEpFNaNbNcNiNfKQCwZQFd:

0000000000000000 <std.sumtype.get!(error_d.Failure!(kernels.DomainError).Failure).get!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).get(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)>:
   0:	55                   	push   %rbp
   1:	48 8b ec             	mov    %rsp,%rbp
   4:	48 83 ec 10          	sub    $0x10,%rsp
   8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
   c:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
  10:	e8 00 00 00 00       	call   15 <std.sumtype.get!(error_d.Failure!(kernels.DomainError).Failure).get!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).get(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)+0x15>	11: R_X86_64_PLT32	std.sumtype.matchImpl!(1, std.sumtype.getLvalue!(0, error_d.Failure!(kernels.DomainError).Failure).getLvalue).matchImpl!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).matchImpl(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)-0x4
  15:	48 8b e5             	mov    %rbp,%rsp
  18:	5d                   	pop    %rbp
  19:	c3                   	ret
	...

Disassembly of section .text._D3std7sumtype__T5matchSQwQu__T9getLvalueVEQBp8typecons__T4FlagVAyaa4_7472795fZQvi0TS7error_d__T7FailureTS7kernels11DomainErrorZQBgZQDxZ__TQEsTSQFmQFl__T7SumTypeTSQDa5EmptyTSQDl__T7SuccessTmZQlTQEgZQBtZQHdFNaNbNcNiNfKQCwZQFh:

0000000000000000 <std.sumtype.match!(std.sumtype.getLvalue!(0, error_d.Failure!(kernels.DomainError).Failure).getLvalue).match!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).match(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)>:
   0:	55                   	push   %rbp
   1:	48 8b ec             	mov    %rsp,%rbp
   4:	48 83 ec 10          	sub    $0x10,%rsp
   8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
   c:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
  10:	e8 00 00 00 00       	call   15 <std.sumtype.match!(std.sumtype.getLvalue!(0, error_d.Failure!(kernels.DomainError).Failure).getLvalue).match!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).match(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)+0x15>	11: R_X86_64_PLT32	std.sumtype.matchImpl!(1, std.sumtype.getLvalue!(0, error_d.Failure!(kernels.DomainError).Failure).getLvalue).matchImpl!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).matchImpl(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)-0x4
  15:	48 8b e5             	mov    %rbp,%rsp
  18:	5d                   	pop    %rbp
  19:	c3                   	ret
	...

Disassembly of section .text._D3std7sumtype__T9matchImplVEQBb8typecons__T4FlagVAyaa10_65786861757374697665ZQBii1SQDeQDd__T9getLvalueVEQDzQCy__TQCsVQCqa4_7472795fZQDli0TS7error_d__T7FailureTS7kernels11DomainErrorZQBgZQDqZ__TQGvTSQHpQHo__T7SumTypeTSQDa5EmptyTSQDl__T7SuccessTmZQlTQEgZQBtZQJgFNaNbNcNiNfKQCwZQFh:

0000000000000000 <std.sumtype.matchImpl!(1, std.sumtype.getLvalue!(0, error_d.Failure!(kernels.DomainError).Failure).getLvalue).matchImpl!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).matchImpl(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)>:
   0:	55                   	push   %rbp
   1:	48 8b ec             	mov    %rsp,%rbp
   4:	48 83 ec 10          	sub    $0x10,%rsp
   8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
   c:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
  10:	0f b6 4f 08          	movzbl 0x8(%rdi),%ecx
  14:	0f b6 c1             	movzbl %cl,%eax
  17:	85 c0                	test   %eax,%eax
  19:	74 0c                	je     27 <std.sumtype.matchImpl!(1, std.sumtype.getLvalue!(0, error_d.Failure!(kernels.DomainError).Failure).getLvalue).matchImpl!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).matchImpl(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)+0x27>
  1b:	83 f8 01             	cmp    $0x1,%eax
  1e:	74 19                	je     39 <std.sumtype.matchImpl!(1, std.sumtype.getLvalue!(0, error_d.Failure!(kernels.DomainError).Failure).getLvalue).matchImpl!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).matchImpl(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)+0x39>
  20:	83 f8 02             	cmp    $0x2,%eax
  23:	74 26                	je     4b <std.sumtype.matchImpl!(1, std.sumtype.getLvalue!(0, error_d.Failure!(kernels.DomainError).Failure).getLvalue).matchImpl!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).matchImpl(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)+0x4b>
  25:	eb 2c                	jmp    53 <std.sumtype.matchImpl!(1, std.sumtype.getLvalue!(0, error_d.Failure!(kernels.DomainError).Failure).getLvalue).matchImpl!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).matchImpl(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)+0x53>
  27:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  2b:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
  2f:	e8 00 00 00 00       	call   34 <std.sumtype.matchImpl!(1, std.sumtype.getLvalue!(0, error_d.Failure!(kernels.DomainError).Failure).getLvalue).matchImpl!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).matchImpl(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)+0x34>	30: R_X86_64_PLT32	std.sumtype.getLvalue!(0, error_d.Failure!(kernels.DomainError).Failure).getLvalue!(error_d.Empty).getLvalue(ref error_d.Empty)-0x4
  34:	48 8b e5             	mov    %rbp,%rsp
  37:	5d                   	pop    %rbp
  38:	c3                   	ret
  39:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  3d:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
  41:	e8 00 00 00 00       	call   46 <std.sumtype.matchImpl!(1, std.sumtype.getLvalue!(0, error_d.Failure!(kernels.DomainError).Failure).getLvalue).matchImpl!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).matchImpl(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)+0x46>	42: R_X86_64_PLT32	std.sumtype.getLvalue!(0, error_d.Failure!(kernels.DomainError).Failure).getLvalue!(error_d.Success!(ulong).Success).getLvalue(ref error_d.Success!(ulong).Success)-0x4
  46:	48 8b e5             	mov    %rbp,%rsp
  49:	5d                   	pop    %rbp
  4a:	c3                   	ret
  4b:	48 8b c7             	mov    %rdi,%rax
  4e:	48 8b e5             	mov    %rbp,%rsp
  51:	5d                   	pop    %rbp
  52:	c3                   	ret
  53:	0f 0b                	ud2
  55:	48 8b e5             	mov    %rbp,%rsp
  58:	5d                   	pop    %rbp
  59:	c3                   	ret
	...

Disassembly of section .text._D3std7sumtype__T9getLvalueVEQBb8typecons__T4FlagVAyaa4_7472795fZQvi0TS7error_d__T7FailureTS7kernels11DomainErrorZQBgZ__TQEaTSQCd5EmptyZQEpFNaNbNcNiNfKQBaZQDh:

0000000000000000 <std.sumtype.getLvalue!(0, error_d.Failure!(kernels.DomainError).Failure).getLvalue!(error_d.Empty).getLvalue(ref error_d.Empty)>:
   0:	0f 0b                	ud2
   2:	c3                   	ret
	...

Disassembly of section .text._D3std7sumtype__T9getLvalueVEQBb8typecons__T4FlagVAyaa4_7472795fZQvi0TS7error_d__T7FailureTS7kernels11DomainErrorZQBgZ__TQEaTSQCd__T7SuccessTmZQlZQEzFNaNbNcNiNfKQBkZQDr:

0000000000000000 <std.sumtype.getLvalue!(0, error_d.Failure!(kernels.DomainError).Failure).getLvalue!(error_d.Success!(ulong).Success).getLvalue(ref error_d.Success!(ulong).Success)>:
   0:	0f 0b                	ud2
   2:	c3                   	ret
	...

Disassembly of section .text._D3std7sumtype__T9getLvalueVEQBb8typecons__T4FlagVAyaa4_7472795fZQvi0TS7error_d__T7FailureTS7kernels11DomainErrorZQBgZ__TQEaTQCdZQEiFNaNbNcNiNfKQCwZQDa:

0000000000000000 <std.sumtype.getLvalue!(0, error_d.Failure!(kernels.DomainError).Failure).getLvalue!(error_d.Failure!(kernels.DomainError).Failure).getLvalue(ref error_d.Failure!(kernels.DomainError).Failure)>:
   0:	48 89 f8             	mov    %rdi,%rax
   3:	c3                   	ret

Disassembly of section .text._D7error_d__T6ResultTmTS7kernels11DomainErrorZQBh__T7andThenTDFNaNbNiNfmZSQCu__TQCpTmTQClZQCzTQvZQBtMFNaNbNiNfMQByZQBq:

0000000000000000 <error_d.Result!(ulong, kernels.DomainError).Result.andThen!(error_d.Result!(ulong, kernels.DomainError).Result(ulong) pure nothrow @nogc @safe delegate, error_d.Result!(ulong, kernels.DomainError).Result).andThen(scope error_d.Result!(ulong, kernels.DomainError).Result(ulong) pure nothrow @nogc @safe delegate)>:
   0:	55                   	push   %rbp
   1:	48 8b ec             	mov    %rsp,%rbp
   4:	48 81 ec 90 00 00 00 	sub    $0x90,%rsp
   b:	48 89 9d 78 ff ff ff 	mov    %rbx,-0x88(%rbp)
  12:	48 89 75 e8          	mov    %rsi,-0x18(%rbp)
  16:	48 89 55 f0          	mov    %rdx,-0x10(%rbp)
  1a:	48 89 4d f8          	mov    %rcx,-0x8(%rbp)
  1e:	48 89 fb             	mov    %rdi,%rbx
  21:	48 8b 75 e8          	mov    -0x18(%rbp),%rsi
  25:	48 89 75 e8          	mov    %rsi,-0x18(%rbp)
  29:	48 8b f3             	mov    %rbx,%rsi
  2c:	48 89 f7             	mov    %rsi,%rdi
  2f:	e8 00 00 00 00       	call   34 <error_d.Result!(ulong, kernels.DomainError).Result.andThen!(error_d.Result!(ulong, kernels.DomainError).Result(ulong) pure nothrow @nogc @safe delegate, error_d.Result!(ulong, kernels.DomainError).Result).andThen(scope error_d.Result!(ulong, kernels.DomainError).Result(ulong) pure nothrow @nogc @safe delegate)+0x34>	30: R_X86_64_PLT32	std.sumtype.matchImpl!(1, error_d.Result!(ulong, kernels.DomainError).Result.state().__lambda_L162_C31).matchImpl!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).matchImpl(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType))-0x4
  34:	83 f8 02             	cmp    $0x2,%eax
  37:	0f 85 9a 00 00 00    	jne    d7 <error_d.Result!(ulong, kernels.DomainError).Result.andThen!(error_d.Result!(ulong, kernels.DomainError).Result(ulong) pure nothrow @nogc @safe delegate, error_d.Result!(ulong, kernels.DomainError).Result).andThen(scope error_d.Result!(ulong, kernels.DomainError).Result(ulong) pure nothrow @nogc @safe delegate)+0xd7>
  3d:	48 8b f3             	mov    %rbx,%rsi
  40:	48 89 f7             	mov    %rsi,%rdi
  43:	e8 00 00 00 00       	call   48 <error_d.Result!(ulong, kernels.DomainError).Result.andThen!(error_d.Result!(ulong, kernels.DomainError).Result(ulong) pure nothrow @nogc @safe delegate, error_d.Result!(ulong, kernels.DomainError).Result).andThen(scope error_d.Result!(ulong, kernels.DomainError).Result(ulong) pure nothrow @nogc @safe delegate)+0x48>	44: R_X86_64_PLT32	std.sumtype.matchImpl!(1, error_d.Result!(ulong, kernels.DomainError).Result.state().__lambda_L162_C31).matchImpl!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).matchImpl(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType))-0x4
  48:	83 f8 02             	cmp    $0x2,%eax
  4b:	74 07                	je     54 <error_d.Result!(ulong, kernels.DomainError).Result.andThen!(error_d.Result!(ulong, kernels.DomainError).Result(ulong) pure nothrow @nogc @safe delegate, error_d.Result!(ulong, kernels.DomainError).Result).andThen(scope error_d.Result!(ulong, kernels.DomainError).Result(ulong) pure nothrow @nogc @safe delegate)+0x54>
  4d:	48 ff 15 00 00 00 00 	rex.W call *0x0(%rip)        # 54 <error_d.Result!(ulong, kernels.DomainError).Result.andThen!(error_d.Result!(ulong, kernels.DomainError).Result(ulong) pure nothrow @nogc @safe delegate, error_d.Result!(ulong, kernels.DomainError).Result).andThen(scope error_d.Result!(ulong, kernels.DomainError).Result(ulong) pure nothrow @nogc @safe delegate)+0x54>	50: R_X86_64_GOTPCREL	abort-0x4
  54:	48 8b fb             	mov    %rbx,%rdi
  57:	e8 00 00 00 00       	call   5c <error_d.Result!(ulong, kernels.DomainError).Result.andThen!(error_d.Result!(ulong, kernels.DomainError).Result(ulong) pure nothrow @nogc @safe delegate, error_d.Result!(ulong, kernels.DomainError).Result).andThen(scope error_d.Result!(ulong, kernels.DomainError).Result(ulong) pure nothrow @nogc @safe delegate)+0x5c>	58: R_X86_64_PLT32	std.sumtype.matchImpl!(1, std.sumtype.getLvalue!(0, error_d.Failure!(kernels.DomainError).Failure).getLvalue).matchImpl!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).matchImpl(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)-0x4
  5c:	48 8b 00             	mov    (%rax),%rax
  5f:	48 89 45 80          	mov    %rax,-0x80(%rbp)
  63:	31 c9                	xor    %ecx,%ecx
  65:	89 4d a8             	mov    %ecx,-0x58(%rbp)
  68:	89 4d ac             	mov    %ecx,-0x54(%rbp)
  6b:	89 4d b0             	mov    %ecx,-0x50(%rbp)
  6e:	89 4d b4             	mov    %ecx,-0x4c(%rbp)
  71:	88 4d b0             	mov    %cl,-0x50(%rbp)
  74:	48 8b 55 b0          	mov    -0x50(%rbp),%rdx
  78:	48 89 55 a0          	mov    %rdx,-0x60(%rbp)
  7c:	88 4d a8             	mov    %cl,-0x58(%rbp)
  7f:	48 8d 75 b8          	lea    -0x48(%rbp),%rsi
  83:	48 8d 7d 80          	lea    -0x80(%rbp),%rdi
  87:	e8 00 00 00 00       	call   8c <error_d.Result!(ulong, kernels.DomainError).Result.andThen!(error_d.Result!(ulong, kernels.DomainError).Result(ulong) pure nothrow @nogc @safe delegate, error_d.Result!(ulong, kernels.DomainError).Result).andThen(scope error_d.Result!(ulong, kernels.DomainError).Result(ulong) pure nothrow @nogc @safe delegate)+0x8c>	88: R_X86_64_PLT32	_D4core8lifetime__T15moveEmplaceImplTS7kernels11DomainErrorZQBpFNaNbNiNfMKQBlNkMKQBsZv-0x4
  8c:	48 8b 75 b8          	mov    -0x48(%rbp),%rsi
  90:	48 8d 7d a0          	lea    -0x60(%rbp),%rdi
  94:	e8 00 00 00 00       	call   99 <error_d.Result!(ulong, kernels.DomainError).Result.andThen!(error_d.Result!(ulong, kernels.DomainError).Result(ulong) pure nothrow @nogc @safe delegate, error_d.Result!(ulong, kernels.DomainError).Result).andThen(scope error_d.Result!(ulong, kernels.DomainError).Result(ulong) pure nothrow @nogc @safe delegate)+0x99>	95: R_X86_64_PLT32	std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.this(error_d.Failure!(kernels.DomainError).Failure)-0x4
  99:	48 8b 50 08          	mov    0x8(%rax),%rdx
  9d:	48 8b 00             	mov    (%rax),%rax
  a0:	48 89 45 90          	mov    %rax,-0x70(%rbp)
  a4:	48 89 55 98          	mov    %rdx,-0x68(%rbp)
  a8:	48 8d 75 c0          	lea    -0x40(%rbp),%rsi
  ac:	48 8d 7d 90          	lea    -0x70(%rbp),%rdi
  b0:	e8 00 00 00 00       	call   b5 <error_d.Result!(ulong, kernels.DomainError).Result.andThen!(error_d.Result!(ulong, kernels.DomainError).Result(ulong) pure nothrow @nogc @safe delegate, error_d.Result!(ulong, kernels.DomainError).Result).andThen(scope error_d.Result!(ulong, kernels.DomainError).Result(ulong) pure nothrow @nogc @safe delegate)+0xb5>	b1: R_X86_64_PLT32	_D4core8lifetime__T15moveEmplaceImplTS3std7sumtype__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTmZQlTSQBk__T7FailureTS7kernels11DomainErrorZQBgZQDkZQEwFNaNbNiNfMKQEsNkMKQEzZv-0x4
  b5:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
  b9:	48 8b 4d c8          	mov    -0x38(%rbp),%rcx
  bd:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
  c1:	48 89 02             	mov    %rax,(%rdx)
  c4:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
  c8:	48 89 d0             	mov    %rdx,%rax
  cb:	48 8b 9d 78 ff ff ff 	mov    -0x88(%rbp),%rbx
  d2:	48 8b e5             	mov    %rbp,%rsp
  d5:	5d                   	pop    %rbp
  d6:	c3                   	ret
  d7:	48 8b f3             	mov    %rbx,%rsi
  da:	48 89 f7             	mov    %rsi,%rdi
  dd:	e8 00 00 00 00       	call   e2 <error_d.Result!(ulong, kernels.DomainError).Result.andThen!(error_d.Result!(ulong, kernels.DomainError).Result(ulong) pure nothrow @nogc @safe delegate, error_d.Result!(ulong, kernels.DomainError).Result).andThen(scope error_d.Result!(ulong, kernels.DomainError).Result(ulong) pure nothrow @nogc @safe delegate)+0xe2>	de: R_X86_64_PLT32	std.sumtype.matchImpl!(1, error_d.Result!(ulong, kernels.DomainError).Result.state().__lambda_L162_C31).matchImpl!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).matchImpl(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType))-0x4
  e2:	85 c0                	test   %eax,%eax
  e4:	75 33                	jne    119 <error_d.Result!(ulong, kernels.DomainError).Result.andThen!(error_d.Result!(ulong, kernels.DomainError).Result(ulong) pure nothrow @nogc @safe delegate, error_d.Result!(ulong, kernels.DomainError).Result).andThen(scope error_d.Result!(ulong, kernels.DomainError).Result(ulong) pure nothrow @nogc @safe delegate)+0x119>
  e6:	48 8b 75 e8          	mov    -0x18(%rbp),%rsi
  ea:	31 c0                	xor    %eax,%eax
  ec:	89 45 d0             	mov    %eax,-0x30(%rbp)
  ef:	89 45 d4             	mov    %eax,-0x2c(%rbp)
  f2:	89 45 d8             	mov    %eax,-0x28(%rbp)
  f5:	89 45 dc             	mov    %eax,-0x24(%rbp)
  f8:	88 45 d8             	mov    %al,-0x28(%rbp)
  fb:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
  ff:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
 103:	48 89 06             	mov    %rax,(%rsi)
 106:	48 89 56 08          	mov    %rdx,0x8(%rsi)
 10a:	48 8b c6             	mov    %rsi,%rax
 10d:	48 8b 9d 78 ff ff ff 	mov    -0x88(%rbp),%rbx
 114:	48 8b e5             	mov    %rbp,%rsp
 117:	5d                   	pop    %rbp
 118:	c3                   	ret
 119:	48 8b f3             	mov    %rbx,%rsi
 11c:	48 89 f7             	mov    %rsi,%rdi
 11f:	e8 00 00 00 00       	call   124 <error_d.Result!(ulong, kernels.DomainError).Result.andThen!(error_d.Result!(ulong, kernels.DomainError).Result(ulong) pure nothrow @nogc @safe delegate, error_d.Result!(ulong, kernels.DomainError).Result).andThen(scope error_d.Result!(ulong, kernels.DomainError).Result(ulong) pure nothrow @nogc @safe delegate)+0x124>	120: R_X86_64_PLT32	std.sumtype.matchImpl!(1, error_d.Result!(ulong, kernels.DomainError).Result.state().__lambda_L162_C31).matchImpl!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).matchImpl(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType))-0x4
 124:	83 f8 01             	cmp    $0x1,%eax
 127:	74 07                	je     130 <error_d.Result!(ulong, kernels.DomainError).Result.andThen!(error_d.Result!(ulong, kernels.DomainError).Result(ulong) pure nothrow @nogc @safe delegate, error_d.Result!(ulong, kernels.DomainError).Result).andThen(scope error_d.Result!(ulong, kernels.DomainError).Result(ulong) pure nothrow @nogc @safe delegate)+0x130>
 129:	48 ff 15 00 00 00 00 	rex.W call *0x0(%rip)        # 130 <error_d.Result!(ulong, kernels.DomainError).Result.andThen!(error_d.Result!(ulong, kernels.DomainError).Result(ulong) pure nothrow @nogc @safe delegate, error_d.Result!(ulong, kernels.DomainError).Result).andThen(scope error_d.Result!(ulong, kernels.DomainError).Result(ulong) pure nothrow @nogc @safe delegate)+0x130>	12c: R_X86_64_GOTPCREL	abort-0x4
 130:	48 8b fb             	mov    %rbx,%rdi
 133:	e8 00 00 00 00       	call   138 <error_d.Result!(ulong, kernels.DomainError).Result.andThen!(error_d.Result!(ulong, kernels.DomainError).Result(ulong) pure nothrow @nogc @safe delegate, error_d.Result!(ulong, kernels.DomainError).Result).andThen(scope error_d.Result!(ulong, kernels.DomainError).Result(ulong) pure nothrow @nogc @safe delegate)+0x138>	134: R_X86_64_PLT32	std.sumtype.matchImpl!(1, std.sumtype.getLvalue!(0, error_d.Success!(ulong).Success).getLvalue).matchImpl!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).matchImpl(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)-0x4
 138:	48 8b 10             	mov    (%rax),%rdx
 13b:	48 8b 75 e8          	mov    -0x18(%rbp),%rsi
 13f:	48 8b 7d f0          	mov    -0x10(%rbp),%rdi
 143:	48 ff 55 f8          	rex.W call *-0x8(%rbp)
 147:	48 8b 9d 78 ff ff ff 	mov    -0x88(%rbp),%rbx
 14e:	48 8b e5             	mov    %rbp,%rsp
 151:	5d                   	pop    %rbp
 152:	c3                   	ret
	...

Disassembly of section .text._D7error_d__T6ResultTmTS7kernels11DomainErrorZQBh__T11copyStorageTS3std7sumtype__T7SumTypeTSQDm5EmptyTSQDx__T7SuccessTmZQlTSQEs__T7FailureTQEmZQnZQCmZQDuFNaNbNiNfKQDtZQDx:

0000000000000000 <error_d.Result!(ulong, kernels.DomainError).Result.copyStorage!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).copyStorage(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)>:
   0:	55                   	push   %rbp
   1:	48 8b ec             	mov    %rsp,%rbp
   4:	48 83 ec 10          	sub    $0x10,%rsp
   8:	48 89 7d f0          	mov    %rdi,-0x10(%rbp)
   c:	48 89 75 f8          	mov    %rsi,-0x8(%rbp)
  10:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
  14:	48 8b 75 f0          	mov    -0x10(%rbp),%rsi
  18:	31 ff                	xor    %edi,%edi
  1a:	e8 00 00 00 00       	call   1f <error_d.Result!(ulong, kernels.DomainError).Result.copyStorage!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).copyStorage(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)+0x1f>	1b: R_X86_64_PLT32	std.sumtype.match!(error_d.Result!(ulong, kernels.DomainError).Result.copyStorage!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).copyStorage(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).__lambda_L103_C30).match!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).match(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)-0x4
  1f:	48 8b e5             	mov    %rbp,%rsp
  22:	5d                   	pop    %rbp
  23:	c3                   	ret

Disassembly of section .text._D3std7sumtype__T5matchS7error_d__T6ResultTmTS7kernels11DomainErrorZQBh__T11copyStorageTSQDjQDi__T7SumTypeTSQDg5EmptyTSQDr__T7SuccessTmZQlTSQEm__T7FailureTQEgZQnZQCmZQDoFKQDfZ17__lambda_L103_C30Z__TQGzTQEkZQHhMFNaNbNiNfKQFcZQFg:

0000000000000000 <std.sumtype.match!(error_d.Result!(ulong, kernels.DomainError).Result.copyStorage!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).copyStorage(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).__lambda_L103_C30).match!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).match(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)>:
   0:	55                   	push   %rbp
   1:	48 8b ec             	mov    %rsp,%rbp
   4:	48 83 ec 20          	sub    $0x20,%rsp
   8:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
   c:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
  10:	48 89 55 f8          	mov    %rdx,-0x8(%rbp)
  14:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
  18:	48 8b 75 f0          	mov    -0x10(%rbp),%rsi
  1c:	48 8b 7d e8          	mov    -0x18(%rbp),%rdi
  20:	e8 00 00 00 00       	call   25 <std.sumtype.match!(error_d.Result!(ulong, kernels.DomainError).Result.copyStorage!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).copyStorage(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).__lambda_L103_C30).match!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).match(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)+0x25>	21: R_X86_64_PLT32	std.sumtype.matchImpl!(1, error_d.Result!(ulong, kernels.DomainError).Result.copyStorage!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).copyStorage(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).__lambda_L103_C30).matchImpl!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).matchImpl(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)-0x4
  25:	48 8b e5             	mov    %rbp,%rsp
  28:	5d                   	pop    %rbp
  29:	c3                   	ret
	...

Disassembly of section .text._D3std7sumtype__T9matchImplVEQBb8typecons__T4FlagVAyaa10_65786861757374697665ZQBii1S7error_d__T6ResultTmTS7kernels11DomainErrorZQBh__T11copyStorageTSQFrQFq__T7SumTypeTSQDg5EmptyTSQDr__T7SuccessTmZQlTSQEm__T7FailureTQEgZQnZQCmZQDoFKQDfZ17__lambda_L103_C30Z__TQJhTQEkZQJpMFNaNbNiNfKQFcZQFg:

0000000000000000 <std.sumtype.matchImpl!(1, error_d.Result!(ulong, kernels.DomainError).Result.copyStorage!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).copyStorage(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).__lambda_L103_C30).matchImpl!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).matchImpl(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)>:
   0:	55                   	push   %rbp
   1:	48 8b ec             	mov    %rsp,%rbp
   4:	48 81 ec 80 00 00 00 	sub    $0x80,%rsp
   b:	48 89 5d 88          	mov    %rbx,-0x78(%rbp)
   f:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
  13:	48 89 55 f8          	mov    %rdx,-0x8(%rbp)
  17:	48 8b 5d f0          	mov    -0x10(%rbp),%rbx
  1b:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  1f:	0f b6 48 08          	movzbl 0x8(%rax),%ecx
  23:	44 0f b6 c1          	movzbl %cl,%r8d
  27:	45 85 c0             	test   %r8d,%r8d
  2a:	74 15                	je     41 <std.sumtype.matchImpl!(1, error_d.Result!(ulong, kernels.DomainError).Result.copyStorage!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).copyStorage(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).__lambda_L103_C30).matchImpl!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).matchImpl(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)+0x41>
  2c:	41 83 f8 01          	cmp    $0x1,%r8d
  30:	74 64                	je     96 <std.sumtype.matchImpl!(1, error_d.Result!(ulong, kernels.DomainError).Result.copyStorage!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).copyStorage(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).__lambda_L103_C30).matchImpl!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).matchImpl(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)+0x96>
  32:	41 83 f8 02          	cmp    $0x2,%r8d
  36:	0f 84 a0 00 00 00    	je     dc <std.sumtype.matchImpl!(1, error_d.Result!(ulong, kernels.DomainError).Result.copyStorage!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).copyStorage(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).__lambda_L103_C30).matchImpl!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).matchImpl(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)+0xdc>
  3c:	e9 dd 00 00 00       	jmp    11e <std.sumtype.matchImpl!(1, error_d.Result!(ulong, kernels.DomainError).Result.copyStorage!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).copyStorage(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).__lambda_L103_C30).matchImpl!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).matchImpl(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)+0x11e>
  41:	48 89 5d f0          	mov    %rbx,-0x10(%rbp)
  45:	31 c9                	xor    %ecx,%ecx
  47:	89 4d 98             	mov    %ecx,-0x68(%rbp)
  4a:	89 4d 9c             	mov    %ecx,-0x64(%rbp)
  4d:	89 4d a0             	mov    %ecx,-0x60(%rbp)
  50:	89 4d a4             	mov    %ecx,-0x5c(%rbp)
  53:	88 4d a0             	mov    %cl,-0x60(%rbp)
  56:	48 8b 5d a0          	mov    -0x60(%rbp),%rbx
  5a:	48 89 5d 90          	mov    %rbx,-0x70(%rbp)
  5e:	88 4d 98             	mov    %cl,-0x68(%rbp)
  61:	48 83 ec 08          	sub    $0x8,%rsp
  65:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
  69:	ff 33                	push   (%rbx)
  6b:	48 8d 7d 90          	lea    -0x70(%rbp),%rdi
  6f:	e8 00 00 00 00       	call   74 <std.sumtype.matchImpl!(1, error_d.Result!(ulong, kernels.DomainError).Result.copyStorage!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).copyStorage(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).__lambda_L103_C30).matchImpl!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).matchImpl(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)+0x74>	70: R_X86_64_PLT32	std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.this(error_d.Empty)-0x4
  74:	48 83 c4 10          	add    $0x10,%rsp
  78:	48 8b 50 08          	mov    0x8(%rax),%rdx
  7c:	48 8b 00             	mov    (%rax),%rax
  7f:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  83:	48 89 01             	mov    %rax,(%rcx)
  86:	48 89 51 08          	mov    %rdx,0x8(%rcx)
  8a:	48 89 c8             	mov    %rcx,%rax
  8d:	48 8b 5d 88          	mov    -0x78(%rbp),%rbx
  91:	48 8b e5             	mov    %rbp,%rsp
  94:	5d                   	pop    %rbp
  95:	c3                   	ret
  96:	31 c9                	xor    %ecx,%ecx
  98:	89 4d b8             	mov    %ecx,-0x48(%rbp)
  9b:	89 4d bc             	mov    %ecx,-0x44(%rbp)
  9e:	89 4d c0             	mov    %ecx,-0x40(%rbp)
  a1:	89 4d c4             	mov    %ecx,-0x3c(%rbp)
  a4:	88 4d c0             	mov    %cl,-0x40(%rbp)
  a7:	4c 8b 45 c0          	mov    -0x40(%rbp),%r8
  ab:	4c 89 45 b0          	mov    %r8,-0x50(%rbp)
  af:	88 4d b8             	mov    %cl,-0x48(%rbp)
  b2:	4c 8b 4d f8          	mov    -0x8(%rbp),%r9
  b6:	49 8b 31             	mov    (%r9),%rsi
  b9:	48 8d 7d b0          	lea    -0x50(%rbp),%rdi
  bd:	e8 00 00 00 00       	call   c2 <std.sumtype.matchImpl!(1, error_d.Result!(ulong, kernels.DomainError).Result.copyStorage!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).copyStorage(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).__lambda_L103_C30).matchImpl!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).matchImpl(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)+0xc2>	be: R_X86_64_PLT32	std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.this(error_d.Success!(ulong).Success)-0x4
  c2:	48 8b 50 08          	mov    0x8(%rax),%rdx
  c6:	48 8b 00             	mov    (%rax),%rax
  c9:	48 89 03             	mov    %rax,(%rbx)
  cc:	48 89 53 08          	mov    %rdx,0x8(%rbx)
  d0:	48 8b c3             	mov    %rbx,%rax
  d3:	48 8b 5d 88          	mov    -0x78(%rbp),%rbx
  d7:	48 8b e5             	mov    %rbp,%rsp
  da:	5d                   	pop    %rbp
  db:	c3                   	ret
  dc:	31 c9                	xor    %ecx,%ecx
  de:	89 4d d8             	mov    %ecx,-0x28(%rbp)
  e1:	89 4d dc             	mov    %ecx,-0x24(%rbp)
  e4:	89 4d e0             	mov    %ecx,-0x20(%rbp)
  e7:	89 4d e4             	mov    %ecx,-0x1c(%rbp)
  ea:	88 4d e0             	mov    %cl,-0x20(%rbp)
  ed:	4c 8b 4d e0          	mov    -0x20(%rbp),%r9
  f1:	4c 89 4d d0          	mov    %r9,-0x30(%rbp)
  f5:	88 4d d8             	mov    %cl,-0x28(%rbp)
  f8:	48 8b 30             	mov    (%rax),%rsi
  fb:	48 8d 7d d0          	lea    -0x30(%rbp),%rdi
  ff:	e8 00 00 00 00       	call   104 <std.sumtype.matchImpl!(1, error_d.Result!(ulong, kernels.DomainError).Result.copyStorage!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).copyStorage(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).__lambda_L103_C30).matchImpl!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).matchImpl(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)+0x104>	100: R_X86_64_PLT32	std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.this(error_d.Failure!(kernels.DomainError).Failure)-0x4
 104:	48 8b 50 08          	mov    0x8(%rax),%rdx
 108:	48 8b 00             	mov    (%rax),%rax
 10b:	48 89 03             	mov    %rax,(%rbx)
 10e:	48 89 53 08          	mov    %rdx,0x8(%rbx)
 112:	48 8b c3             	mov    %rbx,%rax
 115:	48 8b 5d 88          	mov    -0x78(%rbp),%rbx
 119:	48 8b e5             	mov    %rbp,%rsp
 11c:	5d                   	pop    %rbp
 11d:	c3                   	ret
 11e:	0f 0b                	ud2
 120:	48 8b 5d 88          	mov    -0x78(%rbp),%rbx
 124:	48 8b e5             	mov    %rbp,%rsp
 127:	5d                   	pop    %rbp
 128:	c3                   	ret
 129:	00 00                	add    %al,(%rax)
	...

Disassembly of section .text._D7error_d__T6ResultTmTS7kernels11DomainErrorZQBh__T11copyStorageTS3std7sumtype__T7SumTypeTSQDm5EmptyTSQDx__T7SuccessTmZQlTSQEs__T7FailureTQEmZQnZQCmZQDuFKQDlZ__T17__lambda_L103_C30TQDnZQyFNaNbNiNfKQEdZQFg:

0000000000000000 <error_d.Result!(ulong, kernels.DomainError).Result.copyStorage!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).copyStorage(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).__lambda_L103_C30!(error_d.Empty).__lambda_L103_C30(ref error_d.Empty)>:
   0:	55                   	push   %rbp
   1:	48 8b ec             	mov    %rsp,%rbp
   4:	48 83 ec 20          	sub    $0x20,%rsp
   8:	48 89 5d e0          	mov    %rbx,-0x20(%rbp)
   c:	4c 89 65 e8          	mov    %r12,-0x18(%rbp)
  10:	48 89 75 f8          	mov    %rsi,-0x8(%rbp)
  14:	49 89 fc             	mov    %rdi,%r12
  17:	31 c0                	xor    %eax,%eax
  19:	41 89 44 24 08       	mov    %eax,0x8(%r12)
  1e:	41 89 44 24 0c       	mov    %eax,0xc(%r12)
  23:	89 45 f0             	mov    %eax,-0x10(%rbp)
  26:	89 45 f4             	mov    %eax,-0xc(%rbp)
  29:	88 45 f0             	mov    %al,-0x10(%rbp)
  2c:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  30:	49 89 0c 24          	mov    %rcx,(%r12)
  34:	41 88 44 24 08       	mov    %al,0x8(%r12)
  39:	48 83 ec 08          	sub    $0x8,%rsp
  3d:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
  41:	ff 33                	push   (%rbx)
  43:	49 8b fc             	mov    %r12,%rdi
  46:	e8 00 00 00 00       	call   4b <error_d.Result!(ulong, kernels.DomainError).Result.copyStorage!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).copyStorage(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).__lambda_L103_C30!(error_d.Empty).__lambda_L103_C30(ref error_d.Empty)+0x4b>	47: R_X86_64_PLT32	std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.this(error_d.Empty)-0x4
  4b:	48 83 c4 10          	add    $0x10,%rsp
  4f:	49 8b c4             	mov    %r12,%rax
  52:	48 8b 5d e0          	mov    -0x20(%rbp),%rbx
  56:	4c 8b 65 e8          	mov    -0x18(%rbp),%r12
  5a:	48 8b e5             	mov    %rbp,%rsp
  5d:	5d                   	pop    %rbp
  5e:	c3                   	ret
	...

Disassembly of section .text._D7error_d__T6ResultTmTS7kernels11DomainErrorZQBh__T11copyStorageTS3std7sumtype__T7SumTypeTSQDm5EmptyTSQDx__T7SuccessTmZQlTSQEs__T7FailureTQEmZQnZQCmZQDuFKQDlZ__T17__lambda_L103_C30TQDcZQyFNaNbNiNfKQDsZQFg:

0000000000000000 <error_d.Result!(ulong, kernels.DomainError).Result.copyStorage!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).copyStorage(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).__lambda_L103_C30!(error_d.Success!(ulong).Success).__lambda_L103_C30(ref error_d.Success!(ulong).Success)>:
   0:	55                   	push   %rbp
   1:	48 8b ec             	mov    %rsp,%rbp
   4:	48 83 ec 20          	sub    $0x20,%rsp
   8:	48 89 5d e8          	mov    %rbx,-0x18(%rbp)
   c:	48 89 75 f8          	mov    %rsi,-0x8(%rbp)
  10:	48 89 fb             	mov    %rdi,%rbx
  13:	31 c0                	xor    %eax,%eax
  15:	89 43 08             	mov    %eax,0x8(%rbx)
  18:	89 43 0c             	mov    %eax,0xc(%rbx)
  1b:	89 45 f0             	mov    %eax,-0x10(%rbp)
  1e:	89 45 f4             	mov    %eax,-0xc(%rbp)
  21:	88 45 f0             	mov    %al,-0x10(%rbp)
  24:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  28:	48 89 0b             	mov    %rcx,(%rbx)
  2b:	88 43 08             	mov    %al,0x8(%rbx)
  2e:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
  32:	48 8b 32             	mov    (%rdx),%rsi
  35:	48 8b fb             	mov    %rbx,%rdi
  38:	e8 00 00 00 00       	call   3d <error_d.Result!(ulong, kernels.DomainError).Result.copyStorage!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).copyStorage(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).__lambda_L103_C30!(error_d.Success!(ulong).Success).__lambda_L103_C30(ref error_d.Success!(ulong).Success)+0x3d>	39: R_X86_64_PLT32	std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.this(error_d.Success!(ulong).Success)-0x4
  3d:	48 8b c3             	mov    %rbx,%rax
  40:	48 8b 5d e8          	mov    -0x18(%rbp),%rbx
  44:	48 8b e5             	mov    %rbp,%rsp
  47:	5d                   	pop    %rbp
  48:	c3                   	ret
  49:	00 00                	add    %al,(%rax)
	...

Disassembly of section .text._D7error_d__T6ResultTmTS7kernels11DomainErrorZQBh__T11copyStorageTS3std7sumtype__T7SumTypeTSQDm5EmptyTSQDx__T7SuccessTmZQlTSQEs__T7FailureTQEmZQnZQCmZQDuFKQDlZ__T17__lambda_L103_C30TQChZQyFNaNbNiNfKQCxZQFg:

0000000000000000 <error_d.Result!(ulong, kernels.DomainError).Result.copyStorage!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).copyStorage(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).__lambda_L103_C30!(error_d.Failure!(kernels.DomainError).Failure).__lambda_L103_C30(ref error_d.Failure!(kernels.DomainError).Failure)>:
   0:	55                   	push   %rbp
   1:	48 8b ec             	mov    %rsp,%rbp
   4:	48 83 ec 20          	sub    $0x20,%rsp
   8:	48 89 5d e8          	mov    %rbx,-0x18(%rbp)
   c:	48 89 75 f8          	mov    %rsi,-0x8(%rbp)
  10:	48 89 fb             	mov    %rdi,%rbx
  13:	31 c0                	xor    %eax,%eax
  15:	89 43 08             	mov    %eax,0x8(%rbx)
  18:	89 43 0c             	mov    %eax,0xc(%rbx)
  1b:	89 45 f0             	mov    %eax,-0x10(%rbp)
  1e:	89 45 f4             	mov    %eax,-0xc(%rbp)
  21:	88 45 f0             	mov    %al,-0x10(%rbp)
  24:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  28:	48 89 0b             	mov    %rcx,(%rbx)
  2b:	88 43 08             	mov    %al,0x8(%rbx)
  2e:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
  32:	48 8b 32             	mov    (%rdx),%rsi
  35:	48 8b fb             	mov    %rbx,%rdi
  38:	e8 00 00 00 00       	call   3d <error_d.Result!(ulong, kernels.DomainError).Result.copyStorage!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).copyStorage(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).__lambda_L103_C30!(error_d.Failure!(kernels.DomainError).Failure).__lambda_L103_C30(ref error_d.Failure!(kernels.DomainError).Failure)+0x3d>	39: R_X86_64_PLT32	std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.this(error_d.Failure!(kernels.DomainError).Failure)-0x4
  3d:	48 8b c3             	mov    %rbx,%rax
  40:	48 8b 5d e8          	mov    -0x18(%rbp),%rbx
  44:	48 8b e5             	mov    %rbp,%rsp
  47:	5d                   	pop    %rbp
  48:	c3                   	ret
  49:	00 00                	add    %al,(%rax)
	...

Disassembly of section .text._D7error_d__T6ResultTmTS7kernels11DomainErrorZQBh__T11copyStorageTxS3std7sumtype__T7SumTypeTSQDn5EmptyTSQDy__T7SuccessTmZQlTSQEt__T7FailureTQEnZQnZQCmZQDvFNaNbNiNfKxQDuZxQDz:

0000000000000000 <error_d.Result!(ulong, kernels.DomainError).Result.copyStorage!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).copyStorage(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType))>:
   0:	55                   	push   %rbp
   1:	48 8b ec             	mov    %rsp,%rbp
   4:	48 83 ec 10          	sub    $0x10,%rsp
   8:	48 89 7d f0          	mov    %rdi,-0x10(%rbp)
   c:	48 89 75 f8          	mov    %rsi,-0x8(%rbp)
  10:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
  14:	48 8b 75 f0          	mov    -0x10(%rbp),%rsi
  18:	31 ff                	xor    %edi,%edi
  1a:	e8 00 00 00 00       	call   1f <error_d.Result!(ulong, kernels.DomainError).Result.copyStorage!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).copyStorage(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType))+0x1f>	1b: R_X86_64_PLT32	std.sumtype.match!(error_d.Result!(ulong, kernels.DomainError).Result.copyStorage!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).copyStorage(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).__lambda_L103_C30).match!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).match(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType))-0x4
  1f:	48 8b e5             	mov    %rbp,%rsp
  22:	5d                   	pop    %rbp
  23:	c3                   	ret

Disassembly of section .text._D3std7sumtype__T5matchS7error_d__T6ResultTmTS7kernels11DomainErrorZQBh__T11copyStorageTxSQDkQDj__T7SumTypeTSQDh5EmptyTSQDs__T7SuccessTmZQlTSQEn__T7FailureTQEhZQnZQCmZQDpFKxQDgZ17__lambda_L103_C30Z__TQHbTxQEmZQHkMFNaNbNiNfKxQFfZxQFk:

0000000000000000 <std.sumtype.match!(error_d.Result!(ulong, kernels.DomainError).Result.copyStorage!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).copyStorage(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).__lambda_L103_C30).match!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).match(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType))>:
   0:	55                   	push   %rbp
   1:	48 8b ec             	mov    %rsp,%rbp
   4:	48 83 ec 20          	sub    $0x20,%rsp
   8:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
   c:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
  10:	48 89 55 f8          	mov    %rdx,-0x8(%rbp)
  14:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
  18:	48 8b 75 f0          	mov    -0x10(%rbp),%rsi
  1c:	48 8b 7d e8          	mov    -0x18(%rbp),%rdi
  20:	e8 00 00 00 00       	call   25 <std.sumtype.match!(error_d.Result!(ulong, kernels.DomainError).Result.copyStorage!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).copyStorage(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).__lambda_L103_C30).match!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).match(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType))+0x25>	21: R_X86_64_PLT32	std.sumtype.matchImpl!(1, error_d.Result!(ulong, kernels.DomainError).Result.copyStorage!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).copyStorage(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).__lambda_L103_C30).matchImpl!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).matchImpl(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType))-0x4
  25:	48 8b e5             	mov    %rbp,%rsp
  28:	5d                   	pop    %rbp
  29:	c3                   	ret
	...

Disassembly of section .text._D3std7sumtype__T9matchImplVEQBb8typecons__T4FlagVAyaa10_65786861757374697665ZQBii1S7error_d__T6ResultTmTS7kernels11DomainErrorZQBh__T11copyStorageTxSQFsQFr__T7SumTypeTSQDh5EmptyTSQDs__T7SuccessTmZQlTSQEn__T7FailureTQEhZQnZQCmZQDpFKxQDgZ17__lambda_L103_C30Z__TQJjTxQEmZQJsMFNaNbNiNfKxQFfZxQFk:

0000000000000000 <std.sumtype.matchImpl!(1, error_d.Result!(ulong, kernels.DomainError).Result.copyStorage!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).copyStorage(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).__lambda_L103_C30).matchImpl!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).matchImpl(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType))>:
   0:	48 83 ec 58          	sub    $0x58,%rsp
   4:	48 89 5c 24 08       	mov    %rbx,0x8(%rsp)
   9:	0f b6 4a 08          	movzbl 0x8(%rdx),%ecx
   d:	0f b6 c1             	movzbl %cl,%eax
  10:	85 c0                	test   %eax,%eax
  12:	74 13                	je     27 <std.sumtype.matchImpl!(1, error_d.Result!(ulong, kernels.DomainError).Result.copyStorage!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).copyStorage(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).__lambda_L103_C30).matchImpl!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).matchImpl(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType))+0x27>
  14:	83 f8 01             	cmp    $0x1,%eax
  17:	74 60                	je     79 <std.sumtype.matchImpl!(1, error_d.Result!(ulong, kernels.DomainError).Result.copyStorage!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).copyStorage(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).__lambda_L103_C30).matchImpl!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).matchImpl(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType))+0x79>
  19:	83 f8 02             	cmp    $0x2,%eax
  1c:	0f 84 8f 00 00 00    	je     b1 <std.sumtype.matchImpl!(1, error_d.Result!(ulong, kernels.DomainError).Result.copyStorage!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).copyStorage(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).__lambda_L103_C30).matchImpl!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).matchImpl(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType))+0xb1>
  22:	e9 bf 00 00 00       	jmp    e6 <std.sumtype.matchImpl!(1, error_d.Result!(ulong, kernels.DomainError).Result.copyStorage!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).copyStorage(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).__lambda_L103_C30).matchImpl!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).matchImpl(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType))+0xe6>
  27:	45 31 c0             	xor    %r8d,%r8d
  2a:	44 89 44 24 18       	mov    %r8d,0x18(%rsp)
  2f:	44 89 44 24 1c       	mov    %r8d,0x1c(%rsp)
  34:	44 89 44 24 20       	mov    %r8d,0x20(%rsp)
  39:	44 89 44 24 24       	mov    %r8d,0x24(%rsp)
  3e:	44 88 44 24 20       	mov    %r8b,0x20(%rsp)
  43:	48 8b 5c 24 20       	mov    0x20(%rsp),%rbx
  48:	48 89 5c 24 10       	mov    %rbx,0x10(%rsp)
  4d:	44 0f b6 0a          	movzbl (%rdx),%r9d
  51:	44 88 4c 24 10       	mov    %r9b,0x10(%rsp)
  56:	44 88 44 24 18       	mov    %r8b,0x18(%rsp)
  5b:	48 8b 44 24 10       	mov    0x10(%rsp),%rax
  60:	48 8b 4c 24 18       	mov    0x18(%rsp),%rcx
  65:	48 89 06             	mov    %rax,(%rsi)
  68:	48 89 4e 08          	mov    %rcx,0x8(%rsi)
  6c:	48 8b c6             	mov    %rsi,%rax
  6f:	48 8b 5c 24 08       	mov    0x8(%rsp),%rbx
  74:	48 83 c4 58          	add    $0x58,%rsp
  78:	c3                   	ret
  79:	45 31 c0             	xor    %r8d,%r8d
  7c:	44 89 44 24 38       	mov    %r8d,0x38(%rsp)
  81:	44 89 44 24 3c       	mov    %r8d,0x3c(%rsp)
  86:	48 8b 1a             	mov    (%rdx),%rbx
  89:	48 89 5c 24 30       	mov    %rbx,0x30(%rsp)
  8e:	c6 44 24 38 01       	movb   $0x1,0x38(%rsp)
  93:	48 8b 44 24 30       	mov    0x30(%rsp),%rax
  98:	48 8b 4c 24 38       	mov    0x38(%rsp),%rcx
  9d:	48 89 06             	mov    %rax,(%rsi)
  a0:	48 89 4e 08          	mov    %rcx,0x8(%rsi)
  a4:	48 8b c6             	mov    %rsi,%rax
  a7:	48 8b 5c 24 08       	mov    0x8(%rsp),%rbx
  ac:	48 83 c4 58          	add    $0x58,%rsp
  b0:	c3                   	ret
  b1:	31 c9                	xor    %ecx,%ecx
  b3:	89 4c 24 48          	mov    %ecx,0x48(%rsp)
  b7:	89 4c 24 4c          	mov    %ecx,0x4c(%rsp)
  bb:	48 8b 1a             	mov    (%rdx),%rbx
  be:	48 89 5c 24 40       	mov    %rbx,0x40(%rsp)
  c3:	c6 44 24 48 02       	movb   $0x2,0x48(%rsp)
  c8:	48 8b 44 24 40       	mov    0x40(%rsp),%rax
  cd:	48 8b 4c 24 48       	mov    0x48(%rsp),%rcx
  d2:	48 89 06             	mov    %rax,(%rsi)
  d5:	48 89 4e 08          	mov    %rcx,0x8(%rsi)
  d9:	48 8b c6             	mov    %rsi,%rax
  dc:	48 8b 5c 24 08       	mov    0x8(%rsp),%rbx
  e1:	48 83 c4 58          	add    $0x58,%rsp
  e5:	c3                   	ret
  e6:	0f 0b                	ud2
  e8:	48 8b 5c 24 08       	mov    0x8(%rsp),%rbx
  ed:	48 83 c4 58          	add    $0x58,%rsp
  f1:	c3                   	ret
	...

Disassembly of section .text._D7error_d__T6ResultTmTS7kernels11DomainErrorZQBh__T11copyStorageTxS3std7sumtype__T7SumTypeTSQDn5EmptyTSQDy__T7SuccessTmZQlTSQEt__T7FailureTQEnZQnZQCmZQDvFKxQDmZ__T17__lambda_L103_C30TxSQHcQDpZQBdFNaNbNiNfKxQwZxQFo:

0000000000000000 <error_d.Result!(ulong, kernels.DomainError).Result.copyStorage!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).copyStorage(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).__lambda_L103_C30!(const(error_d.Empty)).__lambda_L103_C30(ref const(error_d.Empty))>:
   0:	48 83 ec 18          	sub    $0x18,%rsp
   4:	31 c9                	xor    %ecx,%ecx
   6:	89 4c 24 08          	mov    %ecx,0x8(%rsp)
   a:	89 4c 24 0c          	mov    %ecx,0xc(%rsp)
   e:	89 4c 24 10          	mov    %ecx,0x10(%rsp)
  12:	89 4c 24 14          	mov    %ecx,0x14(%rsp)
  16:	88 4c 24 10          	mov    %cl,0x10(%rsp)
  1a:	48 8b 54 24 10       	mov    0x10(%rsp),%rdx
  1f:	48 89 14 24          	mov    %rdx,(%rsp)
  23:	44 0f b6 06          	movzbl (%rsi),%r8d
  27:	44 88 04 24          	mov    %r8b,(%rsp)
  2b:	88 4c 24 08          	mov    %cl,0x8(%rsp)
  2f:	48 8b 54 24 08       	mov    0x8(%rsp),%rdx
  34:	48 8b 04 24          	mov    (%rsp),%rax
  38:	48 89 07             	mov    %rax,(%rdi)
  3b:	48 89 57 08          	mov    %rdx,0x8(%rdi)
  3f:	48 8b c7             	mov    %rdi,%rax
  42:	48 83 c4 18          	add    $0x18,%rsp
  46:	c3                   	ret
	...

Disassembly of section .text._D7error_d__T6ResultTmTS7kernels11DomainErrorZQBh__T11copyStorageTxS3std7sumtype__T7SumTypeTSQDn5EmptyTSQDy__T7SuccessTmZQlTSQEt__T7FailureTQEnZQnZQCmZQDvFKxQDmZ__T17__lambda_L103_C30TxSQHc__TQDeTmZQDkZQBmFNaNbNiNfKxQBfZxQFy:

0000000000000000 <error_d.Result!(ulong, kernels.DomainError).Result.copyStorage!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).copyStorage(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).__lambda_L103_C30!(const(error_d.Success!(ulong).Success)).__lambda_L103_C30(ref const(error_d.Success!(ulong).Success))>:
   0:	48 83 ec 18          	sub    $0x18,%rsp
   4:	31 c9                	xor    %ecx,%ecx
   6:	89 4c 24 08          	mov    %ecx,0x8(%rsp)
   a:	89 4c 24 0c          	mov    %ecx,0xc(%rsp)
   e:	48 8b 16             	mov    (%rsi),%rdx
  11:	48 89 14 24          	mov    %rdx,(%rsp)
  15:	c6 44 24 08 01       	movb   $0x1,0x8(%rsp)
  1a:	48 8b 54 24 08       	mov    0x8(%rsp),%rdx
  1f:	48 8b 04 24          	mov    (%rsp),%rax
  23:	48 89 07             	mov    %rax,(%rdi)
  26:	48 89 57 08          	mov    %rdx,0x8(%rdi)
  2a:	48 8b c7             	mov    %rdi,%rax
  2d:	48 83 c4 18          	add    $0x18,%rsp
  31:	c3                   	ret
	...

Disassembly of section .text._D7error_d__T6ResultTmTS7kernels11DomainErrorZQBh__T11copyStorageTxS3std7sumtype__T7SumTypeTSQDn5EmptyTSQDy__T7SuccessTmZQlTSQEt__T7FailureTQEnZQnZQCmZQDvFKxQDmZ__T17__lambda_L103_C30TxSQHc__TQCjTQGrZQCrZQBoFNaNbNiNfKxQBhZxQGa:

0000000000000000 <error_d.Result!(ulong, kernels.DomainError).Result.copyStorage!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).copyStorage(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).__lambda_L103_C30!(const(error_d.Failure!(kernels.DomainError).Failure)).__lambda_L103_C30(ref const(error_d.Failure!(kernels.DomainError).Failure))>:
   0:	48 83 ec 18          	sub    $0x18,%rsp
   4:	31 c9                	xor    %ecx,%ecx
   6:	89 4c 24 08          	mov    %ecx,0x8(%rsp)
   a:	89 4c 24 0c          	mov    %ecx,0xc(%rsp)
   e:	48 8b 16             	mov    (%rsi),%rdx
  11:	48 89 14 24          	mov    %rdx,(%rsp)
  15:	c6 44 24 08 02       	movb   $0x2,0x8(%rsp)
  1a:	48 8b 54 24 08       	mov    0x8(%rsp),%rdx
  1f:	48 8b 04 24          	mov    (%rsp),%rax
  23:	48 89 07             	mov    %rax,(%rdi)
  26:	48 89 57 08          	mov    %rdx,0x8(%rdi)
  2a:	48 8b c7             	mov    %rdi,%rax
  2d:	48 83 c4 18          	add    $0x18,%rsp
  31:	c3                   	ret
	...

Disassembly of section .text._D7error_d__T6ResultTmTS7kernels11DomainErrorZQBh__T11copyStorageTyS3std7sumtype__T7SumTypeTSQDn5EmptyTSQDy__T7SuccessTmZQlTSQEt__T7FailureTQEnZQnZQCmZQDvFNaNbNiNfKyQDuZyQDz:

0000000000000000 <error_d.Result!(ulong, kernels.DomainError).Result.copyStorage!(immutable(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).copyStorage(ref immutable(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType))>:
   0:	55                   	push   %rbp
   1:	48 8b ec             	mov    %rsp,%rbp
   4:	48 83 ec 10          	sub    $0x10,%rsp
   8:	48 89 7d f0          	mov    %rdi,-0x10(%rbp)
   c:	48 89 75 f8          	mov    %rsi,-0x8(%rbp)
  10:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
  14:	48 8b 75 f0          	mov    -0x10(%rbp),%rsi
  18:	31 ff                	xor    %edi,%edi
  1a:	e8 00 00 00 00       	call   1f <error_d.Result!(ulong, kernels.DomainError).Result.copyStorage!(immutable(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).copyStorage(ref immutable(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType))+0x1f>	1b: R_X86_64_PLT32	std.sumtype.match!(error_d.Result!(ulong, kernels.DomainError).Result.copyStorage!(immutable(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).copyStorage(ref immutable(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).__lambda_L103_C30).match!(immutable(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).match(ref immutable(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType))-0x4
  1f:	48 8b e5             	mov    %rbp,%rsp
  22:	5d                   	pop    %rbp
  23:	c3                   	ret

Disassembly of section .text._D3std7sumtype__T5matchS7error_d__T6ResultTmTS7kernels11DomainErrorZQBh__T11copyStorageTySQDkQDj__T7SumTypeTSQDh5EmptyTSQDs__T7SuccessTmZQlTSQEn__T7FailureTQEhZQnZQCmZQDpFKyQDgZ17__lambda_L103_C30Z__TQHbTyQEmZQHkMFNaNbNiNfKyQFfZyQFk:

0000000000000000 <std.sumtype.match!(error_d.Result!(ulong, kernels.DomainError).Result.copyStorage!(immutable(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).copyStorage(ref immutable(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).__lambda_L103_C30).match!(immutable(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).match(ref immutable(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType))>:
   0:	55                   	push   %rbp
   1:	48 8b ec             	mov    %rsp,%rbp
   4:	48 83 ec 20          	sub    $0x20,%rsp
   8:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
   c:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
  10:	48 89 55 f8          	mov    %rdx,-0x8(%rbp)
  14:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
  18:	48 8b 75 f0          	mov    -0x10(%rbp),%rsi
  1c:	48 8b 7d e8          	mov    -0x18(%rbp),%rdi
  20:	e8 00 00 00 00       	call   25 <std.sumtype.match!(error_d.Result!(ulong, kernels.DomainError).Result.copyStorage!(immutable(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).copyStorage(ref immutable(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).__lambda_L103_C30).match!(immutable(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).match(ref immutable(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType))+0x25>	21: R_X86_64_PLT32	std.sumtype.matchImpl!(1, error_d.Result!(ulong, kernels.DomainError).Result.copyStorage!(immutable(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).copyStorage(ref immutable(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).__lambda_L103_C30).matchImpl!(immutable(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).matchImpl(ref immutable(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType))-0x4
  25:	48 8b e5             	mov    %rbp,%rsp
  28:	5d                   	pop    %rbp
  29:	c3                   	ret
	...

Disassembly of section .text._D3std7sumtype__T9matchImplVEQBb8typecons__T4FlagVAyaa10_65786861757374697665ZQBii1S7error_d__T6ResultTmTS7kernels11DomainErrorZQBh__T11copyStorageTySQFsQFr__T7SumTypeTSQDh5EmptyTSQDs__T7SuccessTmZQlTSQEn__T7FailureTQEhZQnZQCmZQDpFKyQDgZ17__lambda_L103_C30Z__TQJjTyQEmZQJsMFNaNbNiNfKyQFfZyQFk:

0000000000000000 <std.sumtype.matchImpl!(1, error_d.Result!(ulong, kernels.DomainError).Result.copyStorage!(immutable(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).copyStorage(ref immutable(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).__lambda_L103_C30).matchImpl!(immutable(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).matchImpl(ref immutable(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType))>:
   0:	48 83 ec 58          	sub    $0x58,%rsp
   4:	48 89 5c 24 08       	mov    %rbx,0x8(%rsp)
   9:	0f b6 4a 08          	movzbl 0x8(%rdx),%ecx
   d:	0f b6 c1             	movzbl %cl,%eax
  10:	85 c0                	test   %eax,%eax
  12:	74 13                	je     27 <std.sumtype.matchImpl!(1, error_d.Result!(ulong, kernels.DomainError).Result.copyStorage!(immutable(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).copyStorage(ref immutable(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).__lambda_L103_C30).matchImpl!(immutable(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).matchImpl(ref immutable(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType))+0x27>
  14:	83 f8 01             	cmp    $0x1,%eax
  17:	74 60                	je     79 <std.sumtype.matchImpl!(1, error_d.Result!(ulong, kernels.DomainError).Result.copyStorage!(immutable(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).copyStorage(ref immutable(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).__lambda_L103_C30).matchImpl!(immutable(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).matchImpl(ref immutable(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType))+0x79>
  19:	83 f8 02             	cmp    $0x2,%eax
  1c:	0f 84 8f 00 00 00    	je     b1 <std.sumtype.matchImpl!(1, error_d.Result!(ulong, kernels.DomainError).Result.copyStorage!(immutable(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).copyStorage(ref immutable(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).__lambda_L103_C30).matchImpl!(immutable(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).matchImpl(ref immutable(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType))+0xb1>
  22:	e9 bf 00 00 00       	jmp    e6 <std.sumtype.matchImpl!(1, error_d.Result!(ulong, kernels.DomainError).Result.copyStorage!(immutable(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).copyStorage(ref immutable(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).__lambda_L103_C30).matchImpl!(immutable(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).matchImpl(ref immutable(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType))+0xe6>
  27:	45 31 c0             	xor    %r8d,%r8d
  2a:	44 89 44 24 18       	mov    %r8d,0x18(%rsp)
  2f:	44 89 44 24 1c       	mov    %r8d,0x1c(%rsp)
  34:	44 89 44 24 20       	mov    %r8d,0x20(%rsp)
  39:	44 89 44 24 24       	mov    %r8d,0x24(%rsp)
  3e:	44 88 44 24 20       	mov    %r8b,0x20(%rsp)
  43:	48 8b 5c 24 20       	mov    0x20(%rsp),%rbx
  48:	48 89 5c 24 10       	mov    %rbx,0x10(%rsp)
  4d:	44 0f b6 0a          	movzbl (%rdx),%r9d
  51:	44 88 4c 24 10       	mov    %r9b,0x10(%rsp)
  56:	44 88 44 24 18       	mov    %r8b,0x18(%rsp)
  5b:	48 8b 44 24 10       	mov    0x10(%rsp),%rax
  60:	48 8b 4c 24 18       	mov    0x18(%rsp),%rcx
  65:	48 89 06             	mov    %rax,(%rsi)
  68:	48 89 4e 08          	mov    %rcx,0x8(%rsi)
  6c:	48 8b c6             	mov    %rsi,%rax
  6f:	48 8b 5c 24 08       	mov    0x8(%rsp),%rbx
  74:	48 83 c4 58          	add    $0x58,%rsp
  78:	c3                   	ret
  79:	45 31 c0             	xor    %r8d,%r8d
  7c:	44 89 44 24 38       	mov    %r8d,0x38(%rsp)
  81:	44 89 44 24 3c       	mov    %r8d,0x3c(%rsp)
  86:	48 8b 1a             	mov    (%rdx),%rbx
  89:	48 89 5c 24 30       	mov    %rbx,0x30(%rsp)
  8e:	c6 44 24 38 01       	movb   $0x1,0x38(%rsp)
  93:	48 8b 44 24 30       	mov    0x30(%rsp),%rax
  98:	48 8b 4c 24 38       	mov    0x38(%rsp),%rcx
  9d:	48 89 06             	mov    %rax,(%rsi)
  a0:	48 89 4e 08          	mov    %rcx,0x8(%rsi)
  a4:	48 8b c6             	mov    %rsi,%rax
  a7:	48 8b 5c 24 08       	mov    0x8(%rsp),%rbx
  ac:	48 83 c4 58          	add    $0x58,%rsp
  b0:	c3                   	ret
  b1:	31 c9                	xor    %ecx,%ecx
  b3:	89 4c 24 48          	mov    %ecx,0x48(%rsp)
  b7:	89 4c 24 4c          	mov    %ecx,0x4c(%rsp)
  bb:	48 8b 1a             	mov    (%rdx),%rbx
  be:	48 89 5c 24 40       	mov    %rbx,0x40(%rsp)
  c3:	c6 44 24 48 02       	movb   $0x2,0x48(%rsp)
  c8:	48 8b 44 24 40       	mov    0x40(%rsp),%rax
  cd:	48 8b 4c 24 48       	mov    0x48(%rsp),%rcx
  d2:	48 89 06             	mov    %rax,(%rsi)
  d5:	48 89 4e 08          	mov    %rcx,0x8(%rsi)
  d9:	48 8b c6             	mov    %rsi,%rax
  dc:	48 8b 5c 24 08       	mov    0x8(%rsp),%rbx
  e1:	48 83 c4 58          	add    $0x58,%rsp
  e5:	c3                   	ret
  e6:	0f 0b                	ud2
  e8:	48 8b 5c 24 08       	mov    0x8(%rsp),%rbx
  ed:	48 83 c4 58          	add    $0x58,%rsp
  f1:	c3                   	ret
	...

Disassembly of section .text._D7error_d__T6ResultTmTS7kernels11DomainErrorZQBh__T11copyStorageTyS3std7sumtype__T7SumTypeTSQDn5EmptyTSQDy__T7SuccessTmZQlTSQEt__T7FailureTQEnZQnZQCmZQDvFKyQDmZ__T17__lambda_L103_C30TySQHcQDpZQBdFNaNbNiNfKyQwZyQFo:

0000000000000000 <error_d.Result!(ulong, kernels.DomainError).Result.copyStorage!(immutable(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).copyStorage(ref immutable(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).__lambda_L103_C30!(immutable(error_d.Empty)).__lambda_L103_C30(ref immutable(error_d.Empty))>:
   0:	48 83 ec 18          	sub    $0x18,%rsp
   4:	31 c9                	xor    %ecx,%ecx
   6:	89 4c 24 08          	mov    %ecx,0x8(%rsp)
   a:	89 4c 24 0c          	mov    %ecx,0xc(%rsp)
   e:	89 4c 24 10          	mov    %ecx,0x10(%rsp)
  12:	89 4c 24 14          	mov    %ecx,0x14(%rsp)
  16:	88 4c 24 10          	mov    %cl,0x10(%rsp)
  1a:	48 8b 54 24 10       	mov    0x10(%rsp),%rdx
  1f:	48 89 14 24          	mov    %rdx,(%rsp)
  23:	44 0f b6 06          	movzbl (%rsi),%r8d
  27:	44 88 04 24          	mov    %r8b,(%rsp)
  2b:	88 4c 24 08          	mov    %cl,0x8(%rsp)
  2f:	48 8b 54 24 08       	mov    0x8(%rsp),%rdx
  34:	48 8b 04 24          	mov    (%rsp),%rax
  38:	48 89 07             	mov    %rax,(%rdi)
  3b:	48 89 57 08          	mov    %rdx,0x8(%rdi)
  3f:	48 8b c7             	mov    %rdi,%rax
  42:	48 83 c4 18          	add    $0x18,%rsp
  46:	c3                   	ret
	...

Disassembly of section .text._D7error_d__T6ResultTmTS7kernels11DomainErrorZQBh__T11copyStorageTyS3std7sumtype__T7SumTypeTSQDn5EmptyTSQDy__T7SuccessTmZQlTSQEt__T7FailureTQEnZQnZQCmZQDvFKyQDmZ__T17__lambda_L103_C30TySQHc__TQDeTmZQDkZQBmFNaNbNiNfKyQBfZyQFy:

0000000000000000 <error_d.Result!(ulong, kernels.DomainError).Result.copyStorage!(immutable(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).copyStorage(ref immutable(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).__lambda_L103_C30!(immutable(error_d.Success!(ulong).Success)).__lambda_L103_C30(ref immutable(error_d.Success!(ulong).Success))>:
   0:	48 83 ec 18          	sub    $0x18,%rsp
   4:	31 c9                	xor    %ecx,%ecx
   6:	89 4c 24 08          	mov    %ecx,0x8(%rsp)
   a:	89 4c 24 0c          	mov    %ecx,0xc(%rsp)
   e:	48 8b 16             	mov    (%rsi),%rdx
  11:	48 89 14 24          	mov    %rdx,(%rsp)
  15:	c6 44 24 08 01       	movb   $0x1,0x8(%rsp)
  1a:	48 8b 54 24 08       	mov    0x8(%rsp),%rdx
  1f:	48 8b 04 24          	mov    (%rsp),%rax
  23:	48 89 07             	mov    %rax,(%rdi)
  26:	48 89 57 08          	mov    %rdx,0x8(%rdi)
  2a:	48 8b c7             	mov    %rdi,%rax
  2d:	48 83 c4 18          	add    $0x18,%rsp
  31:	c3                   	ret
	...

Disassembly of section .text._D7error_d__T6ResultTmTS7kernels11DomainErrorZQBh__T11copyStorageTyS3std7sumtype__T7SumTypeTSQDn5EmptyTSQDy__T7SuccessTmZQlTSQEt__T7FailureTQEnZQnZQCmZQDvFKyQDmZ__T17__lambda_L103_C30TySQHc__TQCjTQGrZQCrZQBoFNaNbNiNfKyQBhZyQGa:

0000000000000000 <error_d.Result!(ulong, kernels.DomainError).Result.copyStorage!(immutable(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).copyStorage(ref immutable(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).__lambda_L103_C30!(immutable(error_d.Failure!(kernels.DomainError).Failure)).__lambda_L103_C30(ref immutable(error_d.Failure!(kernels.DomainError).Failure))>:
   0:	48 83 ec 18          	sub    $0x18,%rsp
   4:	31 c9                	xor    %ecx,%ecx
   6:	89 4c 24 08          	mov    %ecx,0x8(%rsp)
   a:	89 4c 24 0c          	mov    %ecx,0xc(%rsp)
   e:	48 8b 16             	mov    (%rsi),%rdx
  11:	48 89 14 24          	mov    %rdx,(%rsp)
  15:	c6 44 24 08 02       	movb   $0x2,0x8(%rsp)
  1a:	48 8b 54 24 08       	mov    0x8(%rsp),%rdx
  1f:	48 8b 04 24          	mov    (%rsp),%rax
  23:	48 89 07             	mov    %rax,(%rdi)
  26:	48 89 57 08          	mov    %rdx,0x8(%rdi)
  2a:	48 8b c7             	mov    %rdi,%rax
  2d:	48 83 c4 18          	add    $0x18,%rsp
  31:	c3                   	ret
	...

Disassembly of section .text._D4core8lifetime__T4moveTS3std7sumtype__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTmZQlTSQBk__T7FailureTS7kernels11DomainErrorZQBgZQDkZQEkFNaNbNiNfKQErKQEvZv:

0000000000000000 <core.lifetime.move!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).move(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType, ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)>:
   0:	55                   	push   %rbp
   1:	48 8b ec             	mov    %rsp,%rbp
   4:	48 83 ec 10          	sub    $0x10,%rsp
   8:	48 89 7d f0          	mov    %rdi,-0x10(%rbp)
   c:	48 89 75 f8          	mov    %rsi,-0x8(%rbp)
  10:	48 8b 75 f0          	mov    -0x10(%rbp),%rsi
  14:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
  18:	e8 00 00 00 00       	call   1d <core.lifetime.move!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).move(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType, ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)+0x1d>	19: R_X86_64_PLT32	_D4core8lifetime__T8moveImplTS3std7sumtype__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTmZQlTSQBk__T7FailureTS7kernels11DomainErrorZQBgZQDkZQEoFNaNbNiNfMKQEsNkMKQEzZv-0x4
  1d:	48 8b e5             	mov    %rbp,%rsp
  20:	5d                   	pop    %rbp
  21:	c3                   	ret
	...

Disassembly of section .text._D4core8lifetime__T8moveImplTS3std7sumtype__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTmZQlTSQBk__T7FailureTS7kernels11DomainErrorZQBgZQDkZQEoFNaNbNiNfMKQEsNkMKQEzZv:

0000000000000000 <_D4core8lifetime__T8moveImplTS3std7sumtype__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTmZQlTSQBk__T7FailureTS7kernels11DomainErrorZQBgZQDkZQEoFNaNbNiNfMKQEsNkMKQEzZv>:
   0:	55                   	push   %rbp
   1:	48 8b ec             	mov    %rsp,%rbp
   4:	48 83 ec 10          	sub    $0x10,%rsp
   8:	48 89 7d f0          	mov    %rdi,-0x10(%rbp)
   c:	48 89 75 f8          	mov    %rsi,-0x8(%rbp)
  10:	48 39 f7             	cmp    %rsi,%rdi
  13:	74 05                	je     1a <_D4core8lifetime__T8moveImplTS3std7sumtype__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTmZQlTSQBk__T7FailureTS7kernels11DomainErrorZQBgZQDkZQEoFNaNbNiNfMKQEsNkMKQEzZv+0x1a>
  15:	e8 00 00 00 00       	call   1a <_D4core8lifetime__T8moveImplTS3std7sumtype__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTmZQlTSQBk__T7FailureTS7kernels11DomainErrorZQBgZQDkZQEoFNaNbNiNfMKQEsNkMKQEzZv+0x1a>	16: R_X86_64_PLT32	_D4core8lifetime__T15moveEmplaceImplTS3std7sumtype__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTmZQlTSQBk__T7FailureTS7kernels11DomainErrorZQBgZQDkZQEwFNaNbNiNfMKQEsNkMKQEzZv-0x4
  1a:	48 8b e5             	mov    %rbp,%rsp
  1d:	5d                   	pop    %rbp
  1e:	c3                   	ret
	...

Disassembly of section .text._D3std7sumtype__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTmZQlTSQBk__T7FailureTS7kernels11DomainErrorZQBgZQDk__T8opEqualsTxSQErQEq__TQElTQEgTQDuTQDeZQFbTxQBfZQBuMxFNaNbNiNfKxQBzZb:

0000000000000000 <std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opEquals!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType), const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).opEquals(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)) const>:
   0:	55                   	push   %rbp
   1:	48 8b ec             	mov    %rsp,%rbp
   4:	48 83 ec 10          	sub    $0x10,%rsp
   8:	48 89 7d f0          	mov    %rdi,-0x10(%rbp)
   c:	48 89 75 f8          	mov    %rsi,-0x8(%rbp)
  10:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
  14:	48 8b 75 f8          	mov    -0x8(%rbp),%rsi
  18:	48 8b 7d f0          	mov    -0x10(%rbp),%rdi
  1c:	e8 00 00 00 00       	call   21 <std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opEquals!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType), const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).opEquals(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)) const+0x21>	1d: R_X86_64_PLT32	std.sumtype.match!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opEquals!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType), const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).opEquals(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).__lambda_L723_C48).match!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType), const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).match(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType), ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType))-0x4
  21:	48 8b e5             	mov    %rbp,%rsp
  24:	5d                   	pop    %rbp
  25:	c3                   	ret
	...

Disassembly of section .text._D3std7sumtype__T5matchSQwQu__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTmZQlTSQBk__T7FailureTS7kernels11DomainErrorZQBgZQDk__T8opEqualsTxSQFfQFe__TQElTQEgTQDuTQDeZQFbTxQBfZQBuMxFKxQBrZ17__lambda_L723_C48Z__TQHhTxQCxTxQDcZQHvMFNaNbNiNfKxQDvKxQEaZb:

0000000000000000 <std.sumtype.match!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opEquals!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType), const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).opEquals(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).__lambda_L723_C48).match!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType), const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).match(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType), ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType))>:
   0:	55                   	push   %rbp
   1:	48 8b ec             	mov    %rsp,%rbp
   4:	48 83 ec 20          	sub    $0x20,%rsp
   8:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
   c:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
  10:	48 89 55 f8          	mov    %rdx,-0x8(%rbp)
  14:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
  18:	48 8b 75 f0          	mov    -0x10(%rbp),%rsi
  1c:	48 8b 7d e8          	mov    -0x18(%rbp),%rdi
  20:	e8 00 00 00 00       	call   25 <std.sumtype.match!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opEquals!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType), const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).opEquals(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).__lambda_L723_C48).match!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType), const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).match(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType), ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType))+0x25>	21: R_X86_64_PLT32	std.sumtype.matchImpl!(1, std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opEquals!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType), const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).opEquals(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).__lambda_L723_C48).matchImpl!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType), const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).matchImpl(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType), ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType))-0x4
  25:	48 8b e5             	mov    %rbp,%rsp
  28:	5d                   	pop    %rbp
  29:	c3                   	ret
	...

Disassembly of section .text._D3std7sumtype__T9matchImplVEQBb8typecons__T4FlagVAyaa10_65786861757374697665ZQBii1SQDeQDd__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTmZQlTSQBk__T7FailureTS7kernels11DomainErrorZQBgZQDk__T8opEqualsTxSQHpQHo__TQElTQEgTQDuTQDeZQFbTxQBfZQBuMxFKxQBrZ17__lambda_L723_C48Z__TQJrTxQCxTxQDcZQKfMFNaNbNiNfKxQDvKxQEaZb:

0000000000000000 <std.sumtype.matchImpl!(1, std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opEquals!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType), const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).opEquals(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).__lambda_L723_C48).matchImpl!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType), const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).matchImpl(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType), ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType))>:
   0:	53                   	push   %rbx
   1:	49 89 f0             	mov    %rsi,%r8
   4:	49 89 d1             	mov    %rdx,%r9
   7:	41 0f b6 51 08       	movzbl 0x8(%r9),%edx
   c:	8b d2                	mov    %edx,%edx
   e:	41 0f b6 40 08       	movzbl 0x8(%r8),%eax
  13:	8b c0                	mov    %eax,%eax
  15:	48 8d 04 40          	lea    (%rax,%rax,2),%rax
  19:	48 01 c2             	add    %rax,%rdx
  1c:	48 8b da             	mov    %rdx,%rbx
  1f:	48 83 fb 08          	cmp    $0x8,%rbx
  23:	77 3c                	ja     61 <std.sumtype.matchImpl!(1, std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opEquals!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType), const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).opEquals(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).__lambda_L723_C48).matchImpl!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType), const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).matchImpl(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType), ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType))+0x61>
  25:	8b db                	mov    %ebx,%ebx
  27:	48 8d 0d 00 00 00 00 	lea    0x0(%rip),%rcx        # 2e <std.sumtype.matchImpl!(1, std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opEquals!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType), const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).opEquals(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).__lambda_L723_C48).matchImpl!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType), const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).matchImpl(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType), ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType))+0x2e>	2a: R_X86_64_PC32	.rodata._D3std7sumtype__T9matchImplVEQBb8typecons__T4FlagVAyaa10_65786861757374697665ZQBii1SQDeQDd__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTmZQlTSQBk__T7FailureTS7kernels11DomainErrorZQBgZQDk__T8opEqualsTxSQHpQHo__TQElTQEgTQDuTQDeZQFbTxQBfZQBuMxFKxQBrZ17__lambda_L723_C48Z__TQJrTxQCxTxQDcZQKfMFNaNbNiNfKxQDvKxQEaZb-0x4
  2e:	4c 63 14 99          	movslq (%rcx,%rbx,4),%r10
  32:	49 8d 0c 0a          	lea    (%r10,%rcx,1),%rcx
  36:	ff e1                	jmp    *%rcx
  38:	b8 01 00 00 00       	mov    $0x1,%eax
  3d:	5b                   	pop    %rbx
  3e:	c3                   	ret
  3f:	31 c0                	xor    %eax,%eax
  41:	5b                   	pop    %rbx
  42:	c3                   	ret
  43:	49 8b f1             	mov    %r9,%rsi
  46:	49 8b f8             	mov    %r8,%rdi
  49:	b9 08 00 00 00       	mov    $0x8,%ecx
  4e:	33 c0                	xor    %eax,%eax
  50:	f3 a6                	repz cmpsb (%rdi),(%rsi)
  52:	74 05                	je     59 <std.sumtype.matchImpl!(1, std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opEquals!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType), const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).opEquals(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).__lambda_L723_C48).matchImpl!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType), const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).matchImpl(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType), ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType))+0x59>
  54:	1b c0                	sbb    %eax,%eax
  56:	83 d8 ff             	sbb    $0xffffffff,%eax
  59:	f7 d8                	neg    %eax
  5b:	19 c0                	sbb    %eax,%eax
  5d:	ff c0                	inc    %eax
  5f:	5b                   	pop    %rbx
  60:	c3                   	ret
  61:	0f 0b                	ud2
  63:	5b                   	pop    %rbx
  64:	c3                   	ret
  65:	00 00                	add    %al,(%rax)
	...

Disassembly of section .text._D3std7sumtype__T8TagTupleVmi3Vmi3ZQs12__invariant0MxFNaNbNiNfZv:

0000000000000000 <std.sumtype.TagTuple!(3uL, 3uL).TagTuple.__invariant0() const>:
   0:	c3                   	ret
   1:	00 00                	add    %al,(%rax)
	...

Disassembly of section .text._D3std7sumtype__T8TagTupleVmi3Vmi3ZQs10fromCaseIdFNaNbNiNfmZSQChQCg__TQCbVmi3Vmi3ZQCn:

0000000000000000 <std.sumtype.TagTuple!(3uL, 3uL).TagTuple.fromCaseId(ulong)>:
   0:	48 8b cf             	mov    %rdi,%rcx
   3:	48 89 c8             	mov    %rcx,%rax
   6:	48 ba ab aa aa aa aa aa aa aa 	movabs $0xaaaaaaaaaaaaaaab,%rdx
  10:	48 f7 e2             	mul    %rdx
  13:	48 d1 ea             	shr    $1,%rdx
  16:	48 6b c2 03          	imul   $0x3,%rdx,%rax
  1a:	48 2b c8             	sub    %rax,%rcx
  1d:	48 89 d0             	mov    %rdx,%rax
  20:	48 89 ca             	mov    %rcx,%rdx
  23:	49 89 c0             	mov    %rax,%r8
  26:	48 89 d7             	mov    %rdx,%rdi
  29:	48 89 d0             	mov    %rdx,%rax
  2c:	41 b9 01 00 00 00    	mov    $0x1,%r9d
  32:	31 d2                	xor    %edx,%edx
  34:	49 f7 f1             	div    %r9
  37:	48 89 c6             	mov    %rax,%rsi
  3a:	48 8b c6             	mov    %rsi,%rax
  3d:	49 8b d0             	mov    %r8,%rdx
  40:	c3                   	ret
  41:	00 00                	add    %al,(%rax)
	...

Disassembly of section .text._D3std7sumtype__T8TagTupleVmi3Vmi3ZQs8toCaseIdMFNaNbNiNfZm:

0000000000000000 <std.sumtype.TagTuple!(3uL, 3uL).TagTuple.toCaseId()>:
   0:	48 8b 0f             	mov    (%rdi),%rcx
   3:	48 8b 47 08          	mov    0x8(%rdi),%rax
   7:	48 8d 04 40          	lea    (%rax,%rax,2),%rax
   b:	48 01 c1             	add    %rax,%rcx
   e:	48 8b c1             	mov    %rcx,%rax
  11:	c3                   	ret
	...

Disassembly of section .text._D3std7sumtype__T8TagTupleVmi3Vmi3ZQs11__invariantMxFNaNbNiNfZv:

0000000000000000 <std.sumtype.TagTuple!(3uL, 3uL).TagTuple.__invariant() const>:
   0:	c3                   	ret
   1:	00 00                	add    %al,(%rax)
	...

Disassembly of section .text._D3std7sumtype__T6strideVmi2Vmi3Vmi3ZQuFNaNbNiNfZm:

0000000000000000 <std.sumtype.stride!(2uL, 3uL, 3uL).stride()>:
   0:	b8 09 00 00 00       	mov    $0x9,%eax
   5:	c3                   	ret
	...

Disassembly of section .text._D4core10checkedint__T4muluZQgFNaNbNiNfmmKbZm:

0000000000000000 <core.checkedint.mulu!().mulu(ulong, ulong, ref bool)>:
   0:	50                   	push   %rax
   1:	48 89 3c 24          	mov    %rdi,(%rsp)
   5:	48 89 d1             	mov    %rdx,%rcx
   8:	48 8b f9             	mov    %rcx,%rdi
   b:	48 0f af fe          	imul   %rsi,%rdi
   f:	4c 8b c6             	mov    %rsi,%r8
  12:	4c 0b c1             	or     %rcx,%r8
  15:	49 c1 e8 20          	shr    $0x20,%r8
  19:	74 19                	je     34 <core.checkedint.mulu!().mulu(ulong, ulong, ref bool)+0x34>
  1b:	48 85 c9             	test   %rcx,%rcx
  1e:	74 14                	je     34 <core.checkedint.mulu!().mulu(ulong, ulong, ref bool)+0x34>
  20:	48 8b c7             	mov    %rdi,%rax
  23:	33 d2                	xor    %edx,%edx
  25:	48 f7 f1             	div    %rcx
  28:	48 3b c6             	cmp    %rsi,%rax
  2b:	74 07                	je     34 <core.checkedint.mulu!().mulu(ulong, ulong, ref bool)+0x34>
  2d:	48 8b 0c 24          	mov    (%rsp),%rcx
  31:	c6 01 01             	movb   $0x1,(%rcx)
  34:	48 8b c7             	mov    %rdi,%rax
  37:	59                   	pop    %rcx
  38:	c3                   	ret
  39:	00 00                	add    %al,(%rax)
	...

Disassembly of section .text._D3std7sumtype__T6strideVmi1Vmi3Vmi3ZQuFNaNbNiNfZm:

0000000000000000 <std.sumtype.stride!(1uL, 3uL, 3uL).stride()>:
   0:	b8 03 00 00 00       	mov    $0x3,%eax
   5:	c3                   	ret
	...

Disassembly of section .text._D3std7sumtype__T6strideVmi0Vmi3Vmi3ZQuFNaNbNiNfZm:

0000000000000000 <std.sumtype.stride!(0uL, 3uL, 3uL).stride()>:
   0:	b8 01 00 00 00       	mov    $0x1,%eax
   5:	c3                   	ret
	...

Disassembly of section .text._D3std7sumtype__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTmZQlTSQBk__T7FailureTS7kernels11DomainErrorZQBgZQDk__T8opEqualsTxSQErQEq__TQElTQEgTQDuTQDeZQFbTxQBfZQBuMxFKxQBrZ__T17__lambda_L723_C48TxSQGlQGgTxQjZQBhFNaNbNiNfKxQBaKxQBfZb:

0000000000000000 <std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opEquals!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType), const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).opEquals(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)) const.__lambda_L723_C48!(const(error_d.Empty), const(error_d.Empty)).__lambda_L723_C48(ref const(error_d.Empty), ref const(error_d.Empty))>:
   0:	b8 01 00 00 00       	mov    $0x1,%eax
   5:	c3                   	ret
	...

Disassembly of section .text._D3std7sumtype__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTmZQlTSQBk__T7FailureTS7kernels11DomainErrorZQBgZQDk__T8opEqualsTxSQErQEq__TQElTQEgTQDuTQDeZQFbTxQBfZQBuMxFKxQBrZ__T17__lambda_L723_C48TxSQGl__TQFwTmZQGcTxSQHdQGyZQBvFNaNbNiNfKxQBoKxQBbZb:

0000000000000000 <std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opEquals!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType), const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).opEquals(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)) const.__lambda_L723_C48!(const(error_d.Success!(ulong).Success), const(error_d.Empty)).__lambda_L723_C48(ref const(error_d.Success!(ulong).Success), ref const(error_d.Empty))>:
   0:	31 c0                	xor    %eax,%eax
   2:	c3                   	ret
	...

Disassembly of section .text._D3std7sumtype__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTmZQlTSQBk__T7FailureTS7kernels11DomainErrorZQBgZQDk__T8opEqualsTxSQErQEq__TQElTQEgTQDuTQDeZQFbTxQBfZQBuMxFKxQBrZ__T17__lambda_L723_C48TxSQGl__TQFbTQEwZQFjTxSQHfQHaZQBxFNaNbNiNfKxQBqKxQBbZb:

0000000000000000 <std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opEquals!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType), const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).opEquals(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)) const.__lambda_L723_C48!(const(error_d.Failure!(kernels.DomainError).Failure), const(error_d.Empty)).__lambda_L723_C48(ref const(error_d.Failure!(kernels.DomainError).Failure), ref const(error_d.Empty))>:
   0:	31 c0                	xor    %eax,%eax
   2:	c3                   	ret
	...

Disassembly of section .text._D3std7sumtype__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTmZQlTSQBk__T7FailureTS7kernels11DomainErrorZQBgZQDk__T8opEqualsTxSQErQEq__TQElTQEgTQDuTQDeZQFbTxQBfZQBuMxFKxQBrZ__T17__lambda_L723_C48TxSQGlQGgTxSQGu__TQGfTmZQGlZQBvFNaNbNiNfKxQBoKxQBkZb:

0000000000000000 <std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opEquals!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType), const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).opEquals(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)) const.__lambda_L723_C48!(const(error_d.Empty), const(error_d.Success!(ulong).Success)).__lambda_L723_C48(ref const(error_d.Empty), ref const(error_d.Success!(ulong).Success))>:
   0:	31 c0                	xor    %eax,%eax
   2:	c3                   	ret
	...

Disassembly of section .text._D3std7sumtype__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTmZQlTSQBk__T7FailureTS7kernels11DomainErrorZQBgZQDk__T8opEqualsTxSQErQEq__TQElTQEgTQDuTQDeZQFbTxQBfZQBuMxFKxQBrZ__T17__lambda_L723_C48TxSQGl__TQFwTmZQGcTxQsZQBqFNaNbNiNfKxQBjKxQBoZb:

0000000000000000 <std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opEquals!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType), const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).opEquals(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)) const.__lambda_L723_C48!(const(error_d.Success!(ulong).Success), const(error_d.Success!(ulong).Success)).__lambda_L723_C48(ref const(error_d.Success!(ulong).Success), ref const(error_d.Success!(ulong).Success))>:
   0:	50                   	push   %rax
   1:	48 89 34 24          	mov    %rsi,(%rsp)
   5:	48 89 fa             	mov    %rdi,%rdx
   8:	48 8b 34 24          	mov    (%rsp),%rsi
   c:	48 8b fa             	mov    %rdx,%rdi
   f:	b9 08 00 00 00       	mov    $0x8,%ecx
  14:	33 c0                	xor    %eax,%eax
  16:	f3 a6                	repz cmpsb (%rdi),(%rsi)
  18:	74 05                	je     1f <std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opEquals!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType), const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).opEquals(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)) const.__lambda_L723_C48!(const(error_d.Success!(ulong).Success), const(error_d.Success!(ulong).Success)).__lambda_L723_C48(ref const(error_d.Success!(ulong).Success), ref const(error_d.Success!(ulong).Success))+0x1f>
  1a:	1b c0                	sbb    %eax,%eax
  1c:	83 d8 ff             	sbb    $0xffffffff,%eax
  1f:	f7 d8                	neg    %eax
  21:	19 c0                	sbb    %eax,%eax
  23:	ff c0                	inc    %eax
  25:	59                   	pop    %rcx
  26:	c3                   	ret
	...

Disassembly of section .text._D3std7sumtype__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTmZQlTSQBk__T7FailureTS7kernels11DomainErrorZQBgZQDk__T8opEqualsTxSQErQEq__TQElTQEgTQDuTQDeZQFbTxQBfZQBuMxFKxQBrZ__T17__lambda_L723_C48TxSQGl__TQFbTQEwZQFjTxSQHf__TQGqTmZQGwZQCgFNaNbNiNfKxQBzKxQBkZb:

0000000000000000 <std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opEquals!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType), const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).opEquals(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)) const.__lambda_L723_C48!(const(error_d.Failure!(kernels.DomainError).Failure), const(error_d.Success!(ulong).Success)).__lambda_L723_C48(ref const(error_d.Failure!(kernels.DomainError).Failure), ref const(error_d.Success!(ulong).Success))>:
   0:	31 c0                	xor    %eax,%eax
   2:	c3                   	ret
	...

Disassembly of section .text._D3std7sumtype__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTmZQlTSQBk__T7FailureTS7kernels11DomainErrorZQBgZQDk__T8opEqualsTxSQErQEq__TQElTQEgTQDuTQDeZQFbTxQBfZQBuMxFKxQBrZ__T17__lambda_L723_C48TxSQGlQGgTxSQGu__TQFkTQFfZQFsZQBxFNaNbNiNfKxQBqKxQBmZb:

0000000000000000 <std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opEquals!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType), const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).opEquals(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)) const.__lambda_L723_C48!(const(error_d.Empty), const(error_d.Failure!(kernels.DomainError).Failure)).__lambda_L723_C48(ref const(error_d.Empty), ref const(error_d.Failure!(kernels.DomainError).Failure))>:
   0:	31 c0                	xor    %eax,%eax
   2:	c3                   	ret
	...

Disassembly of section .text._D3std7sumtype__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTmZQlTSQBk__T7FailureTS7kernels11DomainErrorZQBgZQDk__T8opEqualsTxSQErQEq__TQElTQEgTQDuTQDeZQFbTxQBfZQBuMxFKxQBrZ__T17__lambda_L723_C48TxSQGl__TQFwTmZQGcTxSQHd__TQFtTQFoZQGbZQCgFNaNbNiNfKxQBzKxQBmZb:

0000000000000000 <std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opEquals!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType), const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).opEquals(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)) const.__lambda_L723_C48!(const(error_d.Success!(ulong).Success), const(error_d.Failure!(kernels.DomainError).Failure)).__lambda_L723_C48(ref const(error_d.Success!(ulong).Success), ref const(error_d.Failure!(kernels.DomainError).Failure))>:
   0:	31 c0                	xor    %eax,%eax
   2:	c3                   	ret
	...

Disassembly of section .text._D3std7sumtype__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTmZQlTSQBk__T7FailureTS7kernels11DomainErrorZQBgZQDk__T8opEqualsTxSQErQEq__TQElTQEgTQDuTQDeZQFbTxQBfZQBuMxFKxQBrZ__T17__lambda_L723_C48TxSQGl__TQFbTQEwZQFjTxQuZQBsFNaNbNiNfKxQBlKxQBqZb:

0000000000000000 <std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opEquals!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType), const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).opEquals(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)) const.__lambda_L723_C48!(const(error_d.Failure!(kernels.DomainError).Failure), const(error_d.Failure!(kernels.DomainError).Failure)).__lambda_L723_C48(ref const(error_d.Failure!(kernels.DomainError).Failure), ref const(error_d.Failure!(kernels.DomainError).Failure))>:
   0:	50                   	push   %rax
   1:	48 89 34 24          	mov    %rsi,(%rsp)
   5:	48 89 fa             	mov    %rdi,%rdx
   8:	48 8b 34 24          	mov    (%rsp),%rsi
   c:	48 8b fa             	mov    %rdx,%rdi
   f:	b9 08 00 00 00       	mov    $0x8,%ecx
  14:	33 c0                	xor    %eax,%eax
  16:	f3 a6                	repz cmpsb (%rdi),(%rsi)
  18:	74 05                	je     1f <std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opEquals!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType), const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).opEquals(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)) const.__lambda_L723_C48!(const(error_d.Failure!(kernels.DomainError).Failure), const(error_d.Failure!(kernels.DomainError).Failure)).__lambda_L723_C48(ref const(error_d.Failure!(kernels.DomainError).Failure), ref const(error_d.Failure!(kernels.DomainError).Failure))+0x1f>
  1a:	1b c0                	sbb    %eax,%eax
  1c:	83 d8 ff             	sbb    $0xffffffff,%eax
  1f:	f7 d8                	neg    %eax
  21:	19 c0                	sbb    %eax,%eax
  23:	ff c0                	inc    %eax
  25:	59                   	pop    %rcx
  26:	c3                   	ret
	...

Disassembly of section .text._D3std7sumtype__T8TagTupleVmi3Vmi3ZQs__T6__ctorTSQBvQBu__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTmZQlTSQBk__T7FailureTS7kernels11DomainErrorZQBgZQDkTQDyZQEkMFNaNbNcNiNfKxSQGoQGn__TQEtTQEoTQEcTQDmZQFjKxQBfZSQHxQHw__TQHrVmi3Vmi3ZQId:

0000000000000000 <std.sumtype.TagTuple!(3uL, 3uL).TagTuple.this!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType, std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).this(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType), ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType))>:
   0:	48 89 f8             	mov    %rdi,%rax
   3:	0f b6 4a 08          	movzbl 0x8(%rdx),%ecx
   7:	8b c9                	mov    %ecx,%ecx
   9:	48 89 08             	mov    %rcx,(%rax)
   c:	0f b6 56 08          	movzbl 0x8(%rsi),%edx
  10:	8b d2                	mov    %edx,%edx
  12:	48 89 50 08          	mov    %rdx,0x8(%rax)
  16:	c3                   	ret
	...

Disassembly of section .text._D3std7sumtype__T5matchSQwQu__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTmZQlTSQBk__T7FailureTS7kernels11DomainErrorZQBgZQDk8opAssignMFNcKSQFfQFe__TQElTQEgTQDuTQDeZQFbZ17__lambda_L679_C28Z__TQGqTQCfZQGyMFNaNbNiNfKQCxZv:

0000000000000000 <std.sumtype.match!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).__lambda_L679_C28).match!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).match(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)>:
   0:	55                   	push   %rbp
   1:	48 8b ec             	mov    %rsp,%rbp
   4:	48 83 ec 10          	sub    $0x10,%rsp
   8:	48 89 7d f0          	mov    %rdi,-0x10(%rbp)
   c:	48 89 75 f8          	mov    %rsi,-0x8(%rbp)
  10:	48 8b 75 f8          	mov    -0x8(%rbp),%rsi
  14:	48 8b 7d f0          	mov    -0x10(%rbp),%rdi
  18:	e8 00 00 00 00       	call   1d <std.sumtype.match!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).__lambda_L679_C28).match!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).match(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)+0x1d>	19: R_X86_64_PLT32	std.sumtype.matchImpl!(1, std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).__lambda_L679_C28).matchImpl!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).matchImpl(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)-0x4
  1d:	48 8b e5             	mov    %rbp,%rsp
  20:	5d                   	pop    %rbp
  21:	c3                   	ret
	...

Disassembly of section .text._D3std7sumtype__T9matchImplVEQBb8typecons__T4FlagVAyaa10_65786861757374697665ZQBii1SQDeQDd__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTmZQlTSQBk__T7FailureTS7kernels11DomainErrorZQBgZQDk8opAssignMFNcKSQHpQHo__TQElTQEgTQDuTQDeZQFbZ17__lambda_L679_C28Z__TQJaTQCfZQJiMFNaNbNiNfKQCxZv:

0000000000000000 <std.sumtype.matchImpl!(1, std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).__lambda_L679_C28).matchImpl!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).matchImpl(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)>:
   0:	55                   	push   %rbp
   1:	48 8b ec             	mov    %rsp,%rbp
   4:	53                   	push   %rbx
   5:	41 54                	push   %r12
   7:	49 89 fc             	mov    %rdi,%r12
   a:	48 89 f3             	mov    %rsi,%rbx
   d:	0f b6 4b 08          	movzbl 0x8(%rbx),%ecx
  11:	0f b6 c1             	movzbl %cl,%eax
  14:	85 c0                	test   %eax,%eax
  16:	74 0c                	je     24 <std.sumtype.matchImpl!(1, std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).__lambda_L679_C28).matchImpl!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).matchImpl(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)+0x24>
  18:	83 f8 01             	cmp    $0x1,%eax
  1b:	74 14                	je     31 <std.sumtype.matchImpl!(1, std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).__lambda_L679_C28).matchImpl!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).matchImpl(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)+0x31>
  1d:	83 f8 02             	cmp    $0x2,%eax
  20:	74 1c                	je     3e <std.sumtype.matchImpl!(1, std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).__lambda_L679_C28).matchImpl!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).matchImpl(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)+0x3e>
  22:	eb 2a                	jmp    4e <std.sumtype.matchImpl!(1, std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).__lambda_L679_C28).matchImpl!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).matchImpl(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)+0x4e>
  24:	48 8b f3             	mov    %rbx,%rsi
  27:	49 8b fc             	mov    %r12,%rdi
  2a:	e8 00 00 00 00       	call   2f <std.sumtype.matchImpl!(1, std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).__lambda_L679_C28).matchImpl!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).matchImpl(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)+0x2f>	2b: R_X86_64_PLT32	std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).__lambda_L679_C28!(error_d.Empty).__lambda_L679_C28(ref error_d.Empty)-0x4
  2f:	eb 18                	jmp    49 <std.sumtype.matchImpl!(1, std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).__lambda_L679_C28).matchImpl!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).matchImpl(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)+0x49>
  31:	48 8b f3             	mov    %rbx,%rsi
  34:	49 8b fc             	mov    %r12,%rdi
  37:	e8 00 00 00 00       	call   3c <std.sumtype.matchImpl!(1, std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).__lambda_L679_C28).matchImpl!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).matchImpl(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)+0x3c>	38: R_X86_64_PLT32	std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).__lambda_L679_C28!(error_d.Success!(ulong).Success).__lambda_L679_C28(ref error_d.Success!(ulong).Success)-0x4
  3c:	eb 0b                	jmp    49 <std.sumtype.matchImpl!(1, std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).__lambda_L679_C28).matchImpl!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).matchImpl(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)+0x49>
  3e:	48 8b f3             	mov    %rbx,%rsi
  41:	49 8b fc             	mov    %r12,%rdi
  44:	e8 00 00 00 00       	call   49 <std.sumtype.matchImpl!(1, std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).__lambda_L679_C28).matchImpl!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).matchImpl(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)+0x49>	45: R_X86_64_PLT32	std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).__lambda_L679_C28!(error_d.Failure!(kernels.DomainError).Failure).__lambda_L679_C28(ref error_d.Failure!(kernels.DomainError).Failure)-0x4
  49:	41 5c                	pop    %r12
  4b:	5b                   	pop    %rbx
  4c:	5d                   	pop    %rbp
  4d:	c3                   	ret
  4e:	0f 0b                	ud2
  50:	41 5c                	pop    %r12
  52:	5b                   	pop    %rbx
  53:	5d                   	pop    %rbp
  54:	c3                   	ret
  55:	00 00                	add    %al,(%rax)
	...

Disassembly of section .text._D3std7sumtype__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTmZQlTSQBk__T7FailureTS7kernels11DomainErrorZQBgZQDk8opAssignMFNcKSQErQEq__TQElTQEgTQDuTQDeZQFbZ__T17__lambda_L679_C28TQFtZQyMFNaNbNiNfKQGkZv:

0000000000000000 <std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).__lambda_L679_C28!(error_d.Empty).__lambda_L679_C28(ref error_d.Empty)>:
   0:	55                   	push   %rbp
   1:	48 8b ec             	mov    %rsp,%rbp
   4:	48 83 ec 20          	sub    $0x20,%rsp
   8:	48 89 5d e8          	mov    %rbx,-0x18(%rbp)
   c:	48 89 7d f0          	mov    %rdi,-0x10(%rbp)
  10:	48 89 75 f8          	mov    %rsi,-0x8(%rbp)
  14:	48 83 ec 08          	sub    $0x8,%rsp
  18:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
  1c:	ff 33                	push   (%rbx)
  1e:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  22:	48 8b 38             	mov    (%rax),%rdi
  25:	e8 00 00 00 00       	call   2a <std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).__lambda_L679_C28!(error_d.Empty).__lambda_L679_C28(ref error_d.Empty)+0x2a>	26: R_X86_64_PLT32	std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(error_d.Empty)-0x4
  2a:	48 83 c4 10          	add    $0x10,%rsp
  2e:	48 8b 5d e8          	mov    -0x18(%rbp),%rbx
  32:	48 8b e5             	mov    %rbp,%rsp
  35:	5d                   	pop    %rbp
  36:	c3                   	ret
	...

Disassembly of section .text._D3std7sumtype__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTmZQlTSQBk__T7FailureTS7kernels11DomainErrorZQBgZQDk8opAssignMFNcKSQErQEq__TQElTQEgTQDuTQDeZQFbZ__T17__lambda_L679_C28TQFdZQyMFNaNbNiNfKQFuZv:

0000000000000000 <std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).__lambda_L679_C28!(error_d.Success!(ulong).Success).__lambda_L679_C28(ref error_d.Success!(ulong).Success)>:
   0:	55                   	push   %rbp
   1:	48 8b ec             	mov    %rsp,%rbp
   4:	48 83 ec 10          	sub    $0x10,%rsp
   8:	48 89 7d f0          	mov    %rdi,-0x10(%rbp)
   c:	48 89 75 f8          	mov    %rsi,-0x8(%rbp)
  10:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  14:	48 8b 30             	mov    (%rax),%rsi
  17:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  1b:	48 8b 39             	mov    (%rcx),%rdi
  1e:	e8 00 00 00 00       	call   23 <std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).__lambda_L679_C28!(error_d.Success!(ulong).Success).__lambda_L679_C28(ref error_d.Success!(ulong).Success)+0x23>	1f: R_X86_64_PLT32	std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(error_d.Success!(ulong).Success)-0x4
  23:	48 8b e5             	mov    %rbp,%rsp
  26:	5d                   	pop    %rbp
  27:	c3                   	ret

Disassembly of section .text._D3std7sumtype__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTmZQlTSQBk__T7FailureTS7kernels11DomainErrorZQBgZQDk8opAssignMFNcKSQErQEq__TQElTQEgTQDuTQDeZQFbZ__T17__lambda_L679_C28TQEjZQyMFNaNbNiNfKQFaZv:

0000000000000000 <std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).__lambda_L679_C28!(error_d.Failure!(kernels.DomainError).Failure).__lambda_L679_C28(ref error_d.Failure!(kernels.DomainError).Failure)>:
   0:	55                   	push   %rbp
   1:	48 8b ec             	mov    %rsp,%rbp
   4:	48 83 ec 10          	sub    $0x10,%rsp
   8:	48 89 7d f0          	mov    %rdi,-0x10(%rbp)
   c:	48 89 75 f8          	mov    %rsi,-0x8(%rbp)
  10:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  14:	48 8b 30             	mov    (%rax),%rsi
  17:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  1b:	48 8b 39             	mov    (%rcx),%rdi
  1e:	e8 00 00 00 00       	call   23 <std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).__lambda_L679_C28!(error_d.Failure!(kernels.DomainError).Failure).__lambda_L679_C28(ref error_d.Failure!(kernels.DomainError).Failure)+0x23>	1f: R_X86_64_PLT32	std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(error_d.Failure!(kernels.DomainError).Failure)-0x4
  23:	48 8b e5             	mov    %rbp,%rsp
  26:	5d                   	pop    %rbp
  27:	c3                   	ret

Disassembly of section .text._D3std7sumtype__T5matchS4core8internal4hash6hashOfZ__TQBlTxSQCgQCf__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTmZQlTSQBk__T7FailureTS7kernels11DomainErrorZQBgZQDkZQFoFNaNbNiNfKxQEmZm:

0000000000000000 <std.sumtype.match!(core.internal.hash.hashOf).match!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).match(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType))>:
   0:	55                   	push   %rbp
   1:	48 8b ec             	mov    %rsp,%rbp
   4:	48 83 ec 10          	sub    $0x10,%rsp
   8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
   c:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
  10:	e8 00 00 00 00       	call   15 <std.sumtype.match!(core.internal.hash.hashOf).match!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).match(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType))+0x15>	11: R_X86_64_PLT32	std.sumtype.matchImpl!(1, core.internal.hash.hashOf).matchImpl!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).matchImpl(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType))-0x4
  15:	48 8b e5             	mov    %rbp,%rsp
  18:	5d                   	pop    %rbp
  19:	c3                   	ret
	...

Disassembly of section .text._D3std7sumtype__T9matchImplVEQBb8typecons__T4FlagVAyaa10_65786861757374697665ZQBii1S4core8internal4hash6hashOfZ__TQDtTxSQEoQEn__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTmZQlTSQBk__T7FailureTS7kernels11DomainErrorZQBgZQDkZQHwFNaNbNiNfKxQEmZm:

0000000000000000 <std.sumtype.matchImpl!(1, core.internal.hash.hashOf).matchImpl!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).matchImpl(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType))>:
   0:	55                   	push   %rbp
   1:	48 8b ec             	mov    %rsp,%rbp
   4:	48 83 ec 10          	sub    $0x10,%rsp
   8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
   c:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
  10:	0f b6 4f 08          	movzbl 0x8(%rdi),%ecx
  14:	0f b6 c1             	movzbl %cl,%eax
  17:	85 c0                	test   %eax,%eax
  19:	74 0c                	je     27 <std.sumtype.matchImpl!(1, core.internal.hash.hashOf).matchImpl!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).matchImpl(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType))+0x27>
  1b:	83 f8 01             	cmp    $0x1,%eax
  1e:	74 0e                	je     2e <std.sumtype.matchImpl!(1, core.internal.hash.hashOf).matchImpl!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).matchImpl(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType))+0x2e>
  20:	83 f8 02             	cmp    $0x2,%eax
  23:	74 42                	je     67 <std.sumtype.matchImpl!(1, core.internal.hash.hashOf).matchImpl!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).matchImpl(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType))+0x67>
  25:	eb 5c                	jmp    83 <std.sumtype.matchImpl!(1, core.internal.hash.hashOf).matchImpl!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).matchImpl(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType))+0x83>
  27:	31 c0                	xor    %eax,%eax
  29:	48 8b e5             	mov    %rbp,%rsp
  2c:	5d                   	pop    %rbp
  2d:	c3                   	ret
  2e:	48 8b 07             	mov    (%rdi),%rax
  31:	48 b9 d5 53 42 11 91 7b c3 87 	movabs $0x87c37b91114253d5,%rcx
  3b:	48 f7 e1             	mul    %rcx
  3e:	48 89 c6             	mov    %rax,%rsi
  41:	48 c1 c6 1f          	rol    $0x1f,%rsi
  45:	49 b8 7f 93 45 27 43 ad f5 4c 	movabs $0x4cf5ad432745937f,%r8
  4f:	4c 0f af c6          	imul   %rsi,%r8
  53:	4c 89 c6             	mov    %r8,%rsi
  56:	49 c1 c0 1b          	rol    $0x1b,%r8
  5a:	4b 8d 84 80 29 e7 dc 52 	lea    0x52dce729(%r8,%r8,4),%rax
  62:	48 8b e5             	mov    %rbp,%rsp
  65:	5d                   	pop    %rbp
  66:	c3                   	ret
  67:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  6b:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
  6f:	e8 00 00 00 00       	call   74 <std.sumtype.matchImpl!(1, core.internal.hash.hashOf).matchImpl!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).matchImpl(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType))+0x74>	70: R_X86_64_PLT32	core.internal.convert.toUbyte!(kernels.DomainError).toUbyte(scope return ref const(kernels.DomainError))-0x4
  74:	48 89 c6             	mov    %rax,%rsi
  77:	31 ff                	xor    %edi,%edi
  79:	e8 00 00 00 00       	call   7e <std.sumtype.matchImpl!(1, core.internal.hash.hashOf).matchImpl!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).matchImpl(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType))+0x7e>	7a: R_X86_64_PLT32	core.internal.hash.fnv!().fnv(scope const(ubyte)[], ulong)-0x4
  7e:	48 8b e5             	mov    %rbp,%rsp
  81:	5d                   	pop    %rbp
  82:	c3                   	ret
  83:	0f 0b                	ud2
  85:	48 8b e5             	mov    %rbp,%rsp
  88:	5d                   	pop    %rbp
  89:	c3                   	ret
	...

Disassembly of section .text._D4core8internal4hash__T6hashOfTS7error_d5EmptyZQyFNaNbNiNfMKxSQBeQzmZm:

0000000000000000 <core.internal.hash.hashOf!(error_d.Empty).hashOf(scope ref const(error_d.Empty), ulong)>:
   0:	48 89 f8             	mov    %rdi,%rax
   3:	c3                   	ret

Disassembly of section .text._D4core8internal4hash__T6hashOfTS7error_d__T7SuccessTmZQlZQBiFNaNbNiNfMKxSQBp__TQBkTmZQBqmZm:

0000000000000000 <core.internal.hash.hashOf!(error_d.Success!(ulong).Success).hashOf(scope ref const(error_d.Success!(ulong).Success), ulong)>:
   0:	48 8b 06             	mov    (%rsi),%rax
   3:	48 b9 d5 53 42 11 91 7b c3 87 	movabs $0x87c37b91114253d5,%rcx
   d:	48 f7 e1             	mul    %rcx
  10:	48 c1 c0 1f          	rol    $0x1f,%rax
  14:	49 b9 7f 93 45 27 43 ad f5 4c 	movabs $0x4cf5ad432745937f,%r9
  1e:	49 f7 e1             	mul    %r9
  21:	48 33 c7             	xor    %rdi,%rax
  24:	48 c1 c0 1b          	rol    $0x1b,%rax
  28:	4c 8d 84 80 29 e7 dc 52 	lea    0x52dce729(%rax,%rax,4),%r8
  30:	49 8b c0             	mov    %r8,%rax
  33:	c3                   	ret

Disassembly of section .text._D4core8internal4hash__T6hashOfTS7error_d__T7FailureTS7kernels11DomainErrorZQBgZQCeFNaNbNiNfMKxSQCl__TQCgTQCbZQComZm:

0000000000000000 <core.internal.hash.hashOf!(error_d.Failure!(kernels.DomainError).Failure).hashOf(scope ref const(error_d.Failure!(kernels.DomainError).Failure), ulong)>:
   0:	55                   	push   %rbp
   1:	48 8b ec             	mov    %rsp,%rbp
   4:	48 83 ec 10          	sub    $0x10,%rsp
   8:	48 89 7d f0          	mov    %rdi,-0x10(%rbp)
   c:	48 89 75 f8          	mov    %rsi,-0x8(%rbp)
  10:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
  14:	e8 00 00 00 00       	call   19 <core.internal.hash.hashOf!(error_d.Failure!(kernels.DomainError).Failure).hashOf(scope ref const(error_d.Failure!(kernels.DomainError).Failure), ulong)+0x19>	15: R_X86_64_PLT32	core.internal.convert.toUbyte!(kernels.DomainError).toUbyte(scope return ref const(kernels.DomainError))-0x4
  19:	48 89 c6             	mov    %rax,%rsi
  1c:	48 8b 7d f0          	mov    -0x10(%rbp),%rdi
  20:	e8 00 00 00 00       	call   25 <core.internal.hash.hashOf!(error_d.Failure!(kernels.DomainError).Failure).hashOf(scope ref const(error_d.Failure!(kernels.DomainError).Failure), ulong)+0x25>	21: R_X86_64_PLT32	core.internal.hash.fnv!().fnv(scope const(ubyte)[], ulong)-0x4
  25:	48 8b e5             	mov    %rbp,%rsp
  28:	5d                   	pop    %rbp
  29:	c3                   	ret
	...

Disassembly of section .text._D7error_d__T6ResultTS7kernels5BlockTSQq11DomainErrorZQBp__T11copyStorageTS3std7sumtype__T7SumTypeTSQDu5EmptyTSQEf__T7SuccessTQEbZQnTSQFc__T7FailureTQEiZQnZQCoZQDwFNaNbNiNfKQDvZQDz:

0000000000000000 <error_d.Result!(kernels.Block, kernels.DomainError).Result.copyStorage!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).copyStorage(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)>:
   0:	55                   	push   %rbp
   1:	48 8b ec             	mov    %rsp,%rbp
   4:	48 83 ec 10          	sub    $0x10,%rsp
   8:	48 89 7d f0          	mov    %rdi,-0x10(%rbp)
   c:	48 89 75 f8          	mov    %rsi,-0x8(%rbp)
  10:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
  14:	48 8b 75 f0          	mov    -0x10(%rbp),%rsi
  18:	31 ff                	xor    %edi,%edi
  1a:	e8 00 00 00 00       	call   1f <error_d.Result!(kernels.Block, kernels.DomainError).Result.copyStorage!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).copyStorage(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)+0x1f>	1b: R_X86_64_PLT32	std.sumtype.match!(error_d.Result!(kernels.Block, kernels.DomainError).Result.copyStorage!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).copyStorage(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).__lambda_L103_C30).match!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).match(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)-0x4
  1f:	48 8b e5             	mov    %rbp,%rsp
  22:	5d                   	pop    %rbp
  23:	c3                   	ret

Disassembly of section .text._D3std7sumtype__T5matchS7error_d__T6ResultTS7kernels5BlockTSQq11DomainErrorZQBp__T11copyStorageTSQDrQDq__T7SumTypeTSQDo5EmptyTSQDz__T7SuccessTQDvZQnTSQEw__T7FailureTQEcZQnZQCoZQDqFKQDhZ17__lambda_L103_C30Z__TQHjTQEmZQHrMFNaNbNiNfKQFeZQFi:

0000000000000000 <std.sumtype.match!(error_d.Result!(kernels.Block, kernels.DomainError).Result.copyStorage!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).copyStorage(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).__lambda_L103_C30).match!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).match(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)>:
   0:	55                   	push   %rbp
   1:	48 8b ec             	mov    %rsp,%rbp
   4:	48 83 ec 20          	sub    $0x20,%rsp
   8:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
   c:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
  10:	48 89 55 f8          	mov    %rdx,-0x8(%rbp)
  14:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
  18:	48 8b 75 f0          	mov    -0x10(%rbp),%rsi
  1c:	48 8b 7d e8          	mov    -0x18(%rbp),%rdi
  20:	e8 00 00 00 00       	call   25 <std.sumtype.match!(error_d.Result!(kernels.Block, kernels.DomainError).Result.copyStorage!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).copyStorage(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).__lambda_L103_C30).match!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).match(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)+0x25>	21: R_X86_64_PLT32	std.sumtype.matchImpl!(1, error_d.Result!(kernels.Block, kernels.DomainError).Result.copyStorage!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).copyStorage(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).__lambda_L103_C30).matchImpl!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).matchImpl(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)-0x4
  25:	48 8b e5             	mov    %rbp,%rsp
  28:	5d                   	pop    %rbp
  29:	c3                   	ret
	...

Disassembly of section .text._D3std7sumtype__T9matchImplVEQBb8typecons__T4FlagVAyaa10_65786861757374697665ZQBii1S7error_d__T6ResultTS7kernels5BlockTSQq11DomainErrorZQBp__T11copyStorageTSQFzQFy__T7SumTypeTSQDo5EmptyTSQDz__T7SuccessTQDvZQnTSQEw__T7FailureTQEcZQnZQCoZQDqFKQDhZ17__lambda_L103_C30Z__TQJrTQEmZQJzMFNaNbNiNfKQFeZQFi:

0000000000000000 <std.sumtype.matchImpl!(1, error_d.Result!(kernels.Block, kernels.DomainError).Result.copyStorage!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).copyStorage(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).__lambda_L103_C30).matchImpl!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).matchImpl(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)>:
   0:	55                   	push   %rbp
   1:	48 8b ec             	mov    %rsp,%rbp
   4:	48 81 ec 40 03 00 00 	sub    $0x340,%rsp
   b:	48 89 9d c0 fc ff ff 	mov    %rbx,-0x340(%rbp)
  12:	4c 89 a5 c8 fc ff ff 	mov    %r12,-0x338(%rbp)
  19:	48 89 55 f8          	mov    %rdx,-0x8(%rbp)
  1d:	49 89 f4             	mov    %rsi,%r12
  20:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  24:	0f b6 88 00 01 00 00 	movzbl 0x100(%rax),%ecx
  2b:	0f b6 d9             	movzbl %cl,%ebx
  2e:	85 db                	test   %ebx,%ebx
  30:	74 13                	je     45 <std.sumtype.matchImpl!(1, error_d.Result!(kernels.Block, kernels.DomainError).Result.copyStorage!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).copyStorage(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).__lambda_L103_C30).matchImpl!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).matchImpl(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)+0x45>
  32:	83 fb 01             	cmp    $0x1,%ebx
  35:	74 76                	je     ad <std.sumtype.matchImpl!(1, error_d.Result!(kernels.Block, kernels.DomainError).Result.copyStorage!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).copyStorage(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).__lambda_L103_C30).matchImpl!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).matchImpl(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)+0xad>
  37:	83 fb 02             	cmp    $0x2,%ebx
  3a:	0f 84 e8 00 00 00    	je     128 <std.sumtype.matchImpl!(1, error_d.Result!(kernels.Block, kernels.DomainError).Result.copyStorage!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).copyStorage(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).__lambda_L103_C30).matchImpl!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).matchImpl(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)+0x128>
  40:	e9 37 01 00 00       	jmp    17c <std.sumtype.matchImpl!(1, error_d.Result!(kernels.Block, kernels.DomainError).Result.copyStorage!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).copyStorage(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).__lambda_L103_C30).matchImpl!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).matchImpl(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)+0x17c>
  45:	31 c9                	xor    %ecx,%ecx
  47:	89 8d d0 fd ff ff    	mov    %ecx,-0x230(%rbp)
  4d:	89 8d d4 fd ff ff    	mov    %ecx,-0x22c(%rbp)
  53:	48 8b 35 00 00 00 00 	mov    0x0(%rip),%rsi        # 5a <std.sumtype.matchImpl!(1, error_d.Result!(kernels.Block, kernels.DomainError).Result.copyStorage!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).copyStorage(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).__lambda_L103_C30).matchImpl!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).matchImpl(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)+0x5a>	56: R_X86_64_GOTPCREL	initializer for std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.Storage-0x4
  5a:	48 8d bd d0 fc ff ff 	lea    -0x330(%rbp),%rdi
  61:	b9 20 00 00 00       	mov    $0x20,%ecx
  66:	f3 48 a5             	rep movsq (%rsi),(%rdi)
  69:	88 8d d0 fd ff ff    	mov    %cl,-0x230(%rbp)
  6f:	48 83 ec 08          	sub    $0x8,%rsp
  73:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
  77:	ff 33                	push   (%rbx)
  79:	48 8d bd d0 fc ff ff 	lea    -0x330(%rbp),%rdi
  80:	e8 00 00 00 00       	call   85 <std.sumtype.matchImpl!(1, error_d.Result!(kernels.Block, kernels.DomainError).Result.copyStorage!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).copyStorage(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).__lambda_L103_C30).matchImpl!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).matchImpl(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)+0x85>	81: R_X86_64_PLT32	std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.this(error_d.Empty)-0x4
  85:	48 83 c4 10          	add    $0x10,%rsp
  89:	48 89 c6             	mov    %rax,%rsi
  8c:	49 8b fc             	mov    %r12,%rdi
  8f:	b9 21 00 00 00       	mov    $0x21,%ecx
  94:	f3 48 a5             	rep movsq (%rsi),(%rdi)
  97:	49 8b c4             	mov    %r12,%rax
  9a:	48 8b 9d c0 fc ff ff 	mov    -0x340(%rbp),%rbx
  a1:	4c 8b a5 c8 fc ff ff 	mov    -0x338(%rbp),%r12
  a8:	48 8b e5             	mov    %rbp,%rsp
  ab:	5d                   	pop    %rbp
  ac:	c3                   	ret
  ad:	31 c9                	xor    %ecx,%ecx
  af:	89 8d e0 fe ff ff    	mov    %ecx,-0x120(%rbp)
  b5:	89 8d e4 fe ff ff    	mov    %ecx,-0x11c(%rbp)
  bb:	48 8b 35 00 00 00 00 	mov    0x0(%rip),%rsi        # c2 <std.sumtype.matchImpl!(1, error_d.Result!(kernels.Block, kernels.DomainError).Result.copyStorage!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).copyStorage(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).__lambda_L103_C30).matchImpl!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).matchImpl(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)+0xc2>	be: R_X86_64_GOTPCREL	initializer for std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.Storage-0x4
  c2:	48 8d bd e0 fd ff ff 	lea    -0x220(%rbp),%rdi
  c9:	b9 20 00 00 00       	mov    $0x20,%ecx
  ce:	f3 48 a5             	rep movsq (%rsi),(%rdi)
  d1:	88 8d e0 fe ff ff    	mov    %cl,-0x120(%rbp)
  d7:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
  db:	b9 20 00 00 00       	mov    $0x20,%ecx
  e0:	48 81 c3 f8 00 00 00 	add    $0xf8,%rbx
  e7:	ff 33                	push   (%rbx)
  e9:	48 83 eb 08          	sub    $0x8,%rbx
  ed:	ff c9                	dec    %ecx
  ef:	75 f6                	jne    e7 <std.sumtype.matchImpl!(1, error_d.Result!(kernels.Block, kernels.DomainError).Result.copyStorage!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).copyStorage(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).__lambda_L103_C30).matchImpl!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).matchImpl(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)+0xe7>
  f1:	48 8d bd e0 fd ff ff 	lea    -0x220(%rbp),%rdi
  f8:	e8 00 00 00 00       	call   fd <std.sumtype.matchImpl!(1, error_d.Result!(kernels.Block, kernels.DomainError).Result.copyStorage!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).copyStorage(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).__lambda_L103_C30).matchImpl!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).matchImpl(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)+0xfd>	f9: R_X86_64_PLT32	std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.this(error_d.Success!(kernels.Block).Success)-0x4
  fd:	48 81 c4 00 01 00 00 	add    $0x100,%rsp
 104:	48 89 c6             	mov    %rax,%rsi
 107:	49 8b fc             	mov    %r12,%rdi
 10a:	b9 21 00 00 00       	mov    $0x21,%ecx
 10f:	f3 48 a5             	rep movsq (%rsi),(%rdi)
 112:	49 8b c4             	mov    %r12,%rax
 115:	48 8b 9d c0 fc ff ff 	mov    -0x340(%rbp),%rbx
 11c:	4c 8b a5 c8 fc ff ff 	mov    -0x338(%rbp),%r12
 123:	48 8b e5             	mov    %rbp,%rsp
 126:	5d                   	pop    %rbp
 127:	c3                   	ret
 128:	31 c9                	xor    %ecx,%ecx
 12a:	89 4d f0             	mov    %ecx,-0x10(%rbp)
 12d:	89 4d f4             	mov    %ecx,-0xc(%rbp)
 130:	48 8b 35 00 00 00 00 	mov    0x0(%rip),%rsi        # 137 <std.sumtype.matchImpl!(1, error_d.Result!(kernels.Block, kernels.DomainError).Result.copyStorage!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).copyStorage(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).__lambda_L103_C30).matchImpl!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).matchImpl(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)+0x137>	133: R_X86_64_GOTPCREL	initializer for std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.Storage-0x4
 137:	48 8d bd f0 fe ff ff 	lea    -0x110(%rbp),%rdi
 13e:	b9 20 00 00 00       	mov    $0x20,%ecx
 143:	f3 48 a5             	rep movsq (%rsi),(%rdi)
 146:	88 4d f0             	mov    %cl,-0x10(%rbp)
 149:	48 8b 30             	mov    (%rax),%rsi
 14c:	48 8d bd f0 fe ff ff 	lea    -0x110(%rbp),%rdi
 153:	e8 00 00 00 00       	call   158 <std.sumtype.matchImpl!(1, error_d.Result!(kernels.Block, kernels.DomainError).Result.copyStorage!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).copyStorage(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).__lambda_L103_C30).matchImpl!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).matchImpl(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)+0x158>	154: R_X86_64_PLT32	std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.this(error_d.Failure!(kernels.DomainError).Failure)-0x4
 158:	48 89 c6             	mov    %rax,%rsi
 15b:	49 8b fc             	mov    %r12,%rdi
 15e:	b9 21 00 00 00       	mov    $0x21,%ecx
 163:	f3 48 a5             	rep movsq (%rsi),(%rdi)
 166:	49 8b c4             	mov    %r12,%rax
 169:	48 8b 9d c0 fc ff ff 	mov    -0x340(%rbp),%rbx
 170:	4c 8b a5 c8 fc ff ff 	mov    -0x338(%rbp),%r12
 177:	48 8b e5             	mov    %rbp,%rsp
 17a:	5d                   	pop    %rbp
 17b:	c3                   	ret
 17c:	0f 0b                	ud2
 17e:	48 8b 9d c0 fc ff ff 	mov    -0x340(%rbp),%rbx
 185:	4c 8b a5 c8 fc ff ff 	mov    -0x338(%rbp),%r12
 18c:	48 8b e5             	mov    %rbp,%rsp
 18f:	5d                   	pop    %rbp
 190:	c3                   	ret
 191:	00 00                	add    %al,(%rax)
	...

Disassembly of section .text._D7error_d__T6ResultTS7kernels5BlockTSQq11DomainErrorZQBp__T11copyStorageTS3std7sumtype__T7SumTypeTSQDu5EmptyTSQEf__T7SuccessTQEbZQnTSQFc__T7FailureTQEiZQnZQCoZQDwFKQDnZ__T17__lambda_L103_C30TQDpZQyFNaNbNiNfKQEfZQFi:

0000000000000000 <error_d.Result!(kernels.Block, kernels.DomainError).Result.copyStorage!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).copyStorage(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).__lambda_L103_C30!(error_d.Empty).__lambda_L103_C30(ref error_d.Empty)>:
   0:	55                   	push   %rbp
   1:	48 8b ec             	mov    %rsp,%rbp
   4:	48 83 ec 20          	sub    $0x20,%rsp
   8:	48 89 5d e8          	mov    %rbx,-0x18(%rbp)
   c:	4c 89 65 f0          	mov    %r12,-0x10(%rbp)
  10:	48 89 75 f8          	mov    %rsi,-0x8(%rbp)
  14:	49 89 fc             	mov    %rdi,%r12
  17:	31 c0                	xor    %eax,%eax
  19:	41 89 84 24 00 01 00 00 	mov    %eax,0x100(%r12)
  21:	41 89 84 24 04 01 00 00 	mov    %eax,0x104(%r12)
  29:	48 8b 35 00 00 00 00 	mov    0x0(%rip),%rsi        # 30 <error_d.Result!(kernels.Block, kernels.DomainError).Result.copyStorage!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).copyStorage(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).__lambda_L103_C30!(error_d.Empty).__lambda_L103_C30(ref error_d.Empty)+0x30>	2c: R_X86_64_GOTPCREL	initializer for std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.Storage-0x4
  30:	49 8b fc             	mov    %r12,%rdi
  33:	b9 20 00 00 00       	mov    $0x20,%ecx
  38:	f3 48 a5             	rep movsq (%rsi),(%rdi)
  3b:	41 88 84 24 00 01 00 00 	mov    %al,0x100(%r12)
  43:	48 83 ec 08          	sub    $0x8,%rsp
  47:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
  4b:	ff 33                	push   (%rbx)
  4d:	49 8b fc             	mov    %r12,%rdi
  50:	e8 00 00 00 00       	call   55 <error_d.Result!(kernels.Block, kernels.DomainError).Result.copyStorage!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).copyStorage(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).__lambda_L103_C30!(error_d.Empty).__lambda_L103_C30(ref error_d.Empty)+0x55>	51: R_X86_64_PLT32	std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.this(error_d.Empty)-0x4
  55:	48 83 c4 10          	add    $0x10,%rsp
  59:	49 8b c4             	mov    %r12,%rax
  5c:	48 8b 5d e8          	mov    -0x18(%rbp),%rbx
  60:	4c 8b 65 f0          	mov    -0x10(%rbp),%r12
  64:	48 8b e5             	mov    %rbp,%rsp
  67:	5d                   	pop    %rbp
  68:	c3                   	ret
  69:	00 00                	add    %al,(%rax)
	...

Disassembly of section .text._D7error_d__T6ResultTS7kernels5BlockTSQq11DomainErrorZQBp__T11copyStorageTS3std7sumtype__T7SumTypeTSQDu5EmptyTSQEf__T7SuccessTQEbZQnTSQFc__T7FailureTQEiZQnZQCoZQDwFKQDnZ__T17__lambda_L103_C30TQDeZQyFNaNbNiNfKQDuZQFi:

0000000000000000 <error_d.Result!(kernels.Block, kernels.DomainError).Result.copyStorage!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).copyStorage(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).__lambda_L103_C30!(error_d.Success!(kernels.Block).Success).__lambda_L103_C30(ref error_d.Success!(kernels.Block).Success)>:
   0:	55                   	push   %rbp
   1:	48 8b ec             	mov    %rsp,%rbp
   4:	48 83 ec 20          	sub    $0x20,%rsp
   8:	48 89 5d e8          	mov    %rbx,-0x18(%rbp)
   c:	4c 89 65 f0          	mov    %r12,-0x10(%rbp)
  10:	48 89 75 f8          	mov    %rsi,-0x8(%rbp)
  14:	49 89 fc             	mov    %rdi,%r12
  17:	31 c0                	xor    %eax,%eax
  19:	41 89 84 24 00 01 00 00 	mov    %eax,0x100(%r12)
  21:	41 89 84 24 04 01 00 00 	mov    %eax,0x104(%r12)
  29:	48 8b 35 00 00 00 00 	mov    0x0(%rip),%rsi        # 30 <error_d.Result!(kernels.Block, kernels.DomainError).Result.copyStorage!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).copyStorage(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).__lambda_L103_C30!(error_d.Success!(kernels.Block).Success).__lambda_L103_C30(ref error_d.Success!(kernels.Block).Success)+0x30>	2c: R_X86_64_GOTPCREL	initializer for std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.Storage-0x4
  30:	49 8b fc             	mov    %r12,%rdi
  33:	b9 20 00 00 00       	mov    $0x20,%ecx
  38:	f3 48 a5             	rep movsq (%rsi),(%rdi)
  3b:	41 88 84 24 00 01 00 00 	mov    %al,0x100(%r12)
  43:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
  47:	b9 20 00 00 00       	mov    $0x20,%ecx
  4c:	48 81 c3 f8 00 00 00 	add    $0xf8,%rbx
  53:	ff 33                	push   (%rbx)
  55:	48 83 eb 08          	sub    $0x8,%rbx
  59:	ff c9                	dec    %ecx
  5b:	75 f6                	jne    53 <error_d.Result!(kernels.Block, kernels.DomainError).Result.copyStorage!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).copyStorage(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).__lambda_L103_C30!(error_d.Success!(kernels.Block).Success).__lambda_L103_C30(ref error_d.Success!(kernels.Block).Success)+0x53>
  5d:	49 8b fc             	mov    %r12,%rdi
  60:	e8 00 00 00 00       	call   65 <error_d.Result!(kernels.Block, kernels.DomainError).Result.copyStorage!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).copyStorage(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).__lambda_L103_C30!(error_d.Success!(kernels.Block).Success).__lambda_L103_C30(ref error_d.Success!(kernels.Block).Success)+0x65>	61: R_X86_64_PLT32	std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.this(error_d.Success!(kernels.Block).Success)-0x4
  65:	48 81 c4 00 01 00 00 	add    $0x100,%rsp
  6c:	49 8b c4             	mov    %r12,%rax
  6f:	48 8b 5d e8          	mov    -0x18(%rbp),%rbx
  73:	4c 8b 65 f0          	mov    -0x10(%rbp),%r12
  77:	48 8b e5             	mov    %rbp,%rsp
  7a:	5d                   	pop    %rbp
  7b:	c3                   	ret

Disassembly of section .text._D7error_d__T6ResultTS7kernels5BlockTSQq11DomainErrorZQBp__T11copyStorageTS3std7sumtype__T7SumTypeTSQDu5EmptyTSQEf__T7SuccessTQEbZQnTSQFc__T7FailureTQEiZQnZQCoZQDwFKQDnZ__T17__lambda_L103_C30TQChZQyFNaNbNiNfKQCxZQFi:

0000000000000000 <error_d.Result!(kernels.Block, kernels.DomainError).Result.copyStorage!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).copyStorage(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).__lambda_L103_C30!(error_d.Failure!(kernels.DomainError).Failure).__lambda_L103_C30(ref error_d.Failure!(kernels.DomainError).Failure)>:
   0:	55                   	push   %rbp
   1:	48 8b ec             	mov    %rsp,%rbp
   4:	48 83 ec 10          	sub    $0x10,%rsp
   8:	48 89 5d f0          	mov    %rbx,-0x10(%rbp)
   c:	48 89 75 f8          	mov    %rsi,-0x8(%rbp)
  10:	48 89 fb             	mov    %rdi,%rbx
  13:	31 c0                	xor    %eax,%eax
  15:	89 83 00 01 00 00    	mov    %eax,0x100(%rbx)
  1b:	89 83 04 01 00 00    	mov    %eax,0x104(%rbx)
  21:	48 8b 35 00 00 00 00 	mov    0x0(%rip),%rsi        # 28 <error_d.Result!(kernels.Block, kernels.DomainError).Result.copyStorage!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).copyStorage(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).__lambda_L103_C30!(error_d.Failure!(kernels.DomainError).Failure).__lambda_L103_C30(ref error_d.Failure!(kernels.DomainError).Failure)+0x28>	24: R_X86_64_GOTPCREL	initializer for std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.Storage-0x4
  28:	48 8b fb             	mov    %rbx,%rdi
  2b:	b9 20 00 00 00       	mov    $0x20,%ecx
  30:	f3 48 a5             	rep movsq (%rsi),(%rdi)
  33:	88 83 00 01 00 00    	mov    %al,0x100(%rbx)
  39:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
  3d:	48 8b 31             	mov    (%rcx),%rsi
  40:	48 8b fb             	mov    %rbx,%rdi
  43:	e8 00 00 00 00       	call   48 <error_d.Result!(kernels.Block, kernels.DomainError).Result.copyStorage!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).copyStorage(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).__lambda_L103_C30!(error_d.Failure!(kernels.DomainError).Failure).__lambda_L103_C30(ref error_d.Failure!(kernels.DomainError).Failure)+0x48>	44: R_X86_64_PLT32	std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.this(error_d.Failure!(kernels.DomainError).Failure)-0x4
  48:	48 8b c3             	mov    %rbx,%rax
  4b:	48 8b 5d f0          	mov    -0x10(%rbp),%rbx
  4f:	48 8b e5             	mov    %rbp,%rsp
  52:	5d                   	pop    %rbp
  53:	c3                   	ret

Disassembly of section .text._D7error_d__T6ResultTS7kernels5BlockTSQq11DomainErrorZQBp__T11copyStorageTxS3std7sumtype__T7SumTypeTSQDv5EmptyTSQEg__T7SuccessTQEcZQnTSQFd__T7FailureTQEjZQnZQCoZQDxFNaNbNiNfKxQDwZxQEb:

0000000000000000 <error_d.Result!(kernels.Block, kernels.DomainError).Result.copyStorage!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).copyStorage(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType))>:
   0:	55                   	push   %rbp
   1:	48 8b ec             	mov    %rsp,%rbp
   4:	48 83 ec 10          	sub    $0x10,%rsp
   8:	48 89 7d f0          	mov    %rdi,-0x10(%rbp)
   c:	48 89 75 f8          	mov    %rsi,-0x8(%rbp)
  10:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
  14:	48 8b 75 f0          	mov    -0x10(%rbp),%rsi
  18:	31 ff                	xor    %edi,%edi
  1a:	e8 00 00 00 00       	call   1f <error_d.Result!(kernels.Block, kernels.DomainError).Result.copyStorage!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).copyStorage(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType))+0x1f>	1b: R_X86_64_PLT32	std.sumtype.match!(error_d.Result!(kernels.Block, kernels.DomainError).Result.copyStorage!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).copyStorage(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).__lambda_L103_C30).match!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).match(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType))-0x4
  1f:	48 8b e5             	mov    %rbp,%rsp
  22:	5d                   	pop    %rbp
  23:	c3                   	ret

Disassembly of section .text._D3std7sumtype__T5matchS7error_d__T6ResultTS7kernels5BlockTSQq11DomainErrorZQBp__T11copyStorageTxSQDsQDr__T7SumTypeTSQDp5EmptyTSQEa__T7SuccessTQDwZQnTSQEx__T7FailureTQEdZQnZQCoZQDrFKxQDiZ17__lambda_L103_C30Z__TQHlTxQEoZQHuMFNaNbNiNfKxQFhZxQFm:

0000000000000000 <std.sumtype.match!(error_d.Result!(kernels.Block, kernels.DomainError).Result.copyStorage!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).copyStorage(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).__lambda_L103_C30).match!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).match(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType))>:
   0:	55                   	push   %rbp
   1:	48 8b ec             	mov    %rsp,%rbp
   4:	48 83 ec 20          	sub    $0x20,%rsp
   8:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
   c:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
  10:	48 89 55 f8          	mov    %rdx,-0x8(%rbp)
  14:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
  18:	48 8b 75 f0          	mov    -0x10(%rbp),%rsi
  1c:	48 8b 7d e8          	mov    -0x18(%rbp),%rdi
  20:	e8 00 00 00 00       	call   25 <std.sumtype.match!(error_d.Result!(kernels.Block, kernels.DomainError).Result.copyStorage!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).copyStorage(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).__lambda_L103_C30).match!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).match(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType))+0x25>	21: R_X86_64_PLT32	std.sumtype.matchImpl!(1, error_d.Result!(kernels.Block, kernels.DomainError).Result.copyStorage!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).copyStorage(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).__lambda_L103_C30).matchImpl!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).matchImpl(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType))-0x4
  25:	48 8b e5             	mov    %rbp,%rsp
  28:	5d                   	pop    %rbp
  29:	c3                   	ret
	...

Disassembly of section .text._D3std7sumtype__T9matchImplVEQBb8typecons__T4FlagVAyaa10_65786861757374697665ZQBii1S7error_d__T6ResultTS7kernels5BlockTSQq11DomainErrorZQBp__T11copyStorageTxSQGaQFz__T7SumTypeTSQDp5EmptyTSQEa__T7SuccessTQDwZQnTSQEx__T7FailureTQEdZQnZQCoZQDrFKxQDiZ17__lambda_L103_C30Z__TQJtTxQEoZQKcMFNaNbNiNfKxQFhZxQFm:

0000000000000000 <std.sumtype.matchImpl!(1, error_d.Result!(kernels.Block, kernels.DomainError).Result.copyStorage!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).copyStorage(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).__lambda_L103_C30).matchImpl!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).matchImpl(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType))>:
   0:	48 81 ec 38 04 00 00 	sub    $0x438,%rsp
   7:	48 89 5c 24 08       	mov    %rbx,0x8(%rsp)
   c:	49 89 f0             	mov    %rsi,%r8
   f:	0f b6 8a 00 01 00 00 	movzbl 0x100(%rdx),%ecx
  16:	0f b6 c1             	movzbl %cl,%eax
  19:	85 c0                	test   %eax,%eax
  1b:	74 13                	je     30 <std.sumtype.matchImpl!(1, error_d.Result!(kernels.Block, kernels.DomainError).Result.copyStorage!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).copyStorage(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).__lambda_L103_C30).matchImpl!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).matchImpl(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType))+0x30>
  1d:	83 f8 01             	cmp    $0x1,%eax
  20:	74 67                	je     89 <std.sumtype.matchImpl!(1, error_d.Result!(kernels.Block, kernels.DomainError).Result.copyStorage!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).copyStorage(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).__lambda_L103_C30).matchImpl!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).matchImpl(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType))+0x89>
  22:	83 f8 02             	cmp    $0x2,%eax
  25:	0f 84 e2 00 00 00    	je     10d <std.sumtype.matchImpl!(1, error_d.Result!(kernels.Block, kernels.DomainError).Result.copyStorage!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).copyStorage(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).__lambda_L103_C30).matchImpl!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).matchImpl(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType))+0x10d>
  2b:	e9 41 01 00 00       	jmp    171 <std.sumtype.matchImpl!(1, error_d.Result!(kernels.Block, kernels.DomainError).Result.copyStorage!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).copyStorage(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).__lambda_L103_C30).matchImpl!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).matchImpl(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType))+0x171>
  30:	31 c9                	xor    %ecx,%ecx
  32:	89 8c 24 10 01 00 00 	mov    %ecx,0x110(%rsp)
  39:	89 8c 24 14 01 00 00 	mov    %ecx,0x114(%rsp)
  40:	48 8b 35 00 00 00 00 	mov    0x0(%rip),%rsi        # 47 <std.sumtype.matchImpl!(1, error_d.Result!(kernels.Block, kernels.DomainError).Result.copyStorage!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).copyStorage(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).__lambda_L103_C30).matchImpl!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).matchImpl(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType))+0x47>	43: R_X86_64_GOTPCREL	initializer for std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.Storage-0x4
  47:	48 8d 7c 24 10       	lea    0x10(%rsp),%rdi
  4c:	b9 20 00 00 00       	mov    $0x20,%ecx
  51:	f3 48 a5             	rep movsq (%rsi),(%rdi)
  54:	88 8c 24 10 01 00 00 	mov    %cl,0x110(%rsp)
  5b:	0f b6 1a             	movzbl (%rdx),%ebx
  5e:	88 5c 24 10          	mov    %bl,0x10(%rsp)
  62:	88 8c 24 10 01 00 00 	mov    %cl,0x110(%rsp)
  69:	48 8d 74 24 10       	lea    0x10(%rsp),%rsi
  6e:	49 8b f8             	mov    %r8,%rdi
  71:	b9 21 00 00 00       	mov    $0x21,%ecx
  76:	f3 48 a5             	rep movsq (%rsi),(%rdi)
  79:	49 8b c0             	mov    %r8,%rax
  7c:	48 8b 5c 24 08       	mov    0x8(%rsp),%rbx
  81:	48 81 c4 38 04 00 00 	add    $0x438,%rsp
  88:	c3                   	ret
  89:	31 c9                	xor    %ecx,%ecx
  8b:	89 8c 24 20 02 00 00 	mov    %ecx,0x220(%rsp)
  92:	89 8c 24 24 02 00 00 	mov    %ecx,0x224(%rsp)
  99:	48 8b 35 00 00 00 00 	mov    0x0(%rip),%rsi        # a0 <std.sumtype.matchImpl!(1, error_d.Result!(kernels.Block, kernels.DomainError).Result.copyStorage!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).copyStorage(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).__lambda_L103_C30).matchImpl!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).matchImpl(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType))+0xa0>	9c: R_X86_64_GOTPCREL	initializer for std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.Storage-0x4
  a0:	48 8d bc 24 20 01 00 00 	lea    0x120(%rsp),%rdi
  a8:	b9 20 00 00 00       	mov    $0x20,%ecx
  ad:	f3 48 a5             	rep movsq (%rsi),(%rdi)
  b0:	88 8c 24 20 02 00 00 	mov    %cl,0x220(%rsp)
  b7:	48 8b f2             	mov    %rdx,%rsi
  ba:	48 8d bc 24 30 02 00 00 	lea    0x230(%rsp),%rdi
  c2:	b9 20 00 00 00       	mov    $0x20,%ecx
  c7:	f3 48 a5             	rep movsq (%rsi),(%rdi)
  ca:	48 8d b4 24 30 02 00 00 	lea    0x230(%rsp),%rsi
  d2:	48 8d bc 24 20 01 00 00 	lea    0x120(%rsp),%rdi
  da:	b9 20 00 00 00       	mov    $0x20,%ecx
  df:	f3 48 a5             	rep movsq (%rsi),(%rdi)
  e2:	c6 84 24 20 02 00 00 01 	movb   $0x1,0x220(%rsp)
  ea:	48 8d b4 24 20 01 00 00 	lea    0x120(%rsp),%rsi
  f2:	49 8b f8             	mov    %r8,%rdi
  f5:	b9 21 00 00 00       	mov    $0x21,%ecx
  fa:	f3 48 a5             	rep movsq (%rsi),(%rdi)
  fd:	49 8b c0             	mov    %r8,%rax
 100:	48 8b 5c 24 08       	mov    0x8(%rsp),%rbx
 105:	48 81 c4 38 04 00 00 	add    $0x438,%rsp
 10c:	c3                   	ret
 10d:	31 c9                	xor    %ecx,%ecx
 10f:	89 8c 24 30 04 00 00 	mov    %ecx,0x430(%rsp)
 116:	89 8c 24 34 04 00 00 	mov    %ecx,0x434(%rsp)
 11d:	48 8b 35 00 00 00 00 	mov    0x0(%rip),%rsi        # 124 <std.sumtype.matchImpl!(1, error_d.Result!(kernels.Block, kernels.DomainError).Result.copyStorage!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).copyStorage(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).__lambda_L103_C30).matchImpl!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).matchImpl(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType))+0x124>	120: R_X86_64_GOTPCREL	initializer for std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.Storage-0x4
 124:	48 8d bc 24 30 03 00 00 	lea    0x330(%rsp),%rdi
 12c:	b9 20 00 00 00       	mov    $0x20,%ecx
 131:	f3 48 a5             	rep movsq (%rsi),(%rdi)
 134:	88 8c 24 30 04 00 00 	mov    %cl,0x430(%rsp)
 13b:	48 8b 1a             	mov    (%rdx),%rbx
 13e:	48 89 9c 24 30 03 00 00 	mov    %rbx,0x330(%rsp)
 146:	c6 84 24 30 04 00 00 02 	movb   $0x2,0x430(%rsp)
 14e:	48 8d b4 24 30 03 00 00 	lea    0x330(%rsp),%rsi
 156:	49 8b f8             	mov    %r8,%rdi
 159:	b9 21 00 00 00       	mov    $0x21,%ecx
 15e:	f3 48 a5             	rep movsq (%rsi),(%rdi)
 161:	49 8b c0             	mov    %r8,%rax
 164:	48 8b 5c 24 08       	mov    0x8(%rsp),%rbx
 169:	48 81 c4 38 04 00 00 	add    $0x438,%rsp
 170:	c3                   	ret
 171:	0f 0b                	ud2
 173:	48 8b 5c 24 08       	mov    0x8(%rsp),%rbx
 178:	48 81 c4 38 04 00 00 	add    $0x438,%rsp
 17f:	c3                   	ret

Disassembly of section .text._D7error_d__T6ResultTS7kernels5BlockTSQq11DomainErrorZQBp__T11copyStorageTxS3std7sumtype__T7SumTypeTSQDv5EmptyTSQEg__T7SuccessTQEcZQnTSQFd__T7FailureTQEjZQnZQCoZQDxFKxQDoZ__T17__lambda_L103_C30TxSQHmQDrZQBdFNaNbNiNfKxQwZxQFq:

0000000000000000 <error_d.Result!(kernels.Block, kernels.DomainError).Result.copyStorage!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).copyStorage(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).__lambda_L103_C30!(const(error_d.Empty)).__lambda_L103_C30(ref const(error_d.Empty))>:
   0:	48 81 ec 18 01 00 00 	sub    $0x118,%rsp
   7:	48 89 1c 24          	mov    %rbx,(%rsp)
   b:	48 89 b4 24 10 01 00 00 	mov    %rsi,0x110(%rsp)
  13:	48 89 fa             	mov    %rdi,%rdx
  16:	31 c0                	xor    %eax,%eax
  18:	89 84 24 08 01 00 00 	mov    %eax,0x108(%rsp)
  1f:	89 84 24 0c 01 00 00 	mov    %eax,0x10c(%rsp)
  26:	48 8b 35 00 00 00 00 	mov    0x0(%rip),%rsi        # 2d <error_d.Result!(kernels.Block, kernels.DomainError).Result.copyStorage!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).copyStorage(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).__lambda_L103_C30!(const(error_d.Empty)).__lambda_L103_C30(ref const(error_d.Empty))+0x2d>	29: R_X86_64_GOTPCREL	initializer for std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.Storage-0x4
  2d:	48 8d 7c 24 08       	lea    0x8(%rsp),%rdi
  32:	b9 20 00 00 00       	mov    $0x20,%ecx
  37:	f3 48 a5             	rep movsq (%rsi),(%rdi)
  3a:	88 84 24 08 01 00 00 	mov    %al,0x108(%rsp)
  41:	48 8b 8c 24 10 01 00 00 	mov    0x110(%rsp),%rcx
  49:	0f b6 19             	movzbl (%rcx),%ebx
  4c:	88 5c 24 08          	mov    %bl,0x8(%rsp)
  50:	88 84 24 08 01 00 00 	mov    %al,0x108(%rsp)
  57:	48 8d 74 24 08       	lea    0x8(%rsp),%rsi
  5c:	48 8b fa             	mov    %rdx,%rdi
  5f:	b9 21 00 00 00       	mov    $0x21,%ecx
  64:	f3 48 a5             	rep movsq (%rsi),(%rdi)
  67:	48 8b c2             	mov    %rdx,%rax
  6a:	48 8b 1c 24          	mov    (%rsp),%rbx
  6e:	48 81 c4 18 01 00 00 	add    $0x118,%rsp
  75:	c3                   	ret
	...

Disassembly of section .text._D7error_d__T6ResultTS7kernels5BlockTSQq11DomainErrorZQBp__T11copyStorageTxS3std7sumtype__T7SumTypeTSQDv5EmptyTSQEg__T7SuccessTQEcZQnTSQFd__T7FailureTQEjZQnZQCoZQDxFKxQDoZ__T17__lambda_L103_C30TxSQHm__TQDgTQHdZQDoZQBoFNaNbNiNfKxQBhZxQGc:

0000000000000000 <error_d.Result!(kernels.Block, kernels.DomainError).Result.copyStorage!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).copyStorage(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).__lambda_L103_C30!(const(error_d.Success!(kernels.Block).Success)).__lambda_L103_C30(ref const(error_d.Success!(kernels.Block).Success))>:
   0:	48 81 ec 18 02 00 00 	sub    $0x218,%rsp
   7:	48 89 b4 24 10 02 00 00 	mov    %rsi,0x210(%rsp)
   f:	48 89 fa             	mov    %rdi,%rdx
  12:	31 c0                	xor    %eax,%eax
  14:	89 84 24 00 01 00 00 	mov    %eax,0x100(%rsp)
  1b:	89 84 24 04 01 00 00 	mov    %eax,0x104(%rsp)
  22:	48 8b 35 00 00 00 00 	mov    0x0(%rip),%rsi        # 29 <error_d.Result!(kernels.Block, kernels.DomainError).Result.copyStorage!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).copyStorage(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).__lambda_L103_C30!(const(error_d.Success!(kernels.Block).Success)).__lambda_L103_C30(ref const(error_d.Success!(kernels.Block).Success))+0x29>	25: R_X86_64_GOTPCREL	initializer for std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.Storage-0x4
  29:	48 8d 3c 24          	lea    (%rsp),%rdi
  2d:	b9 20 00 00 00       	mov    $0x20,%ecx
  32:	f3 48 a5             	rep movsq (%rsi),(%rdi)
  35:	88 84 24 00 01 00 00 	mov    %al,0x100(%rsp)
  3c:	48 8b b4 24 10 02 00 00 	mov    0x210(%rsp),%rsi
  44:	48 8d bc 24 10 01 00 00 	lea    0x110(%rsp),%rdi
  4c:	b9 20 00 00 00       	mov    $0x20,%ecx
  51:	f3 48 a5             	rep movsq (%rsi),(%rdi)
  54:	48 8d b4 24 10 01 00 00 	lea    0x110(%rsp),%rsi
  5c:	48 8d 3c 24          	lea    (%rsp),%rdi
  60:	b9 20 00 00 00       	mov    $0x20,%ecx
  65:	f3 48 a5             	rep movsq (%rsi),(%rdi)
  68:	c6 84 24 00 01 00 00 01 	movb   $0x1,0x100(%rsp)
  70:	48 8d 34 24          	lea    (%rsp),%rsi
  74:	48 8b fa             	mov    %rdx,%rdi
  77:	b9 21 00 00 00       	mov    $0x21,%ecx
  7c:	f3 48 a5             	rep movsq (%rsi),(%rdi)
  7f:	48 8b c2             	mov    %rdx,%rax
  82:	48 81 c4 18 02 00 00 	add    $0x218,%rsp
  89:	c3                   	ret
	...

Disassembly of section .text._D7error_d__T6ResultTS7kernels5BlockTSQq11DomainErrorZQBp__T11copyStorageTxS3std7sumtype__T7SumTypeTSQDv5EmptyTSQEg__T7SuccessTQEcZQnTSQFd__T7FailureTQEjZQnZQCoZQDxFKxQDoZ__T17__lambda_L103_C30TxSQHm__TQCjTQGnZQCrZQBoFNaNbNiNfKxQBhZxQGc:

0000000000000000 <error_d.Result!(kernels.Block, kernels.DomainError).Result.copyStorage!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).copyStorage(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).__lambda_L103_C30!(const(error_d.Failure!(kernels.DomainError).Failure)).__lambda_L103_C30(ref const(error_d.Failure!(kernels.DomainError).Failure))>:
   0:	48 81 ec 18 01 00 00 	sub    $0x118,%rsp
   7:	48 89 1c 24          	mov    %rbx,(%rsp)
   b:	48 89 b4 24 10 01 00 00 	mov    %rsi,0x110(%rsp)
  13:	48 89 fa             	mov    %rdi,%rdx
  16:	31 c0                	xor    %eax,%eax
  18:	89 84 24 08 01 00 00 	mov    %eax,0x108(%rsp)
  1f:	89 84 24 0c 01 00 00 	mov    %eax,0x10c(%rsp)
  26:	48 8b 35 00 00 00 00 	mov    0x0(%rip),%rsi        # 2d <error_d.Result!(kernels.Block, kernels.DomainError).Result.copyStorage!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).copyStorage(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).__lambda_L103_C30!(const(error_d.Failure!(kernels.DomainError).Failure)).__lambda_L103_C30(ref const(error_d.Failure!(kernels.DomainError).Failure))+0x2d>	29: R_X86_64_GOTPCREL	initializer for std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.Storage-0x4
  2d:	48 8d 7c 24 08       	lea    0x8(%rsp),%rdi
  32:	b9 20 00 00 00       	mov    $0x20,%ecx
  37:	f3 48 a5             	rep movsq (%rsi),(%rdi)
  3a:	88 84 24 08 01 00 00 	mov    %al,0x108(%rsp)
  41:	48 8b 8c 24 10 01 00 00 	mov    0x110(%rsp),%rcx
  49:	48 8b 19             	mov    (%rcx),%rbx
  4c:	48 89 5c 24 08       	mov    %rbx,0x8(%rsp)
  51:	c6 84 24 08 01 00 00 02 	movb   $0x2,0x108(%rsp)
  59:	48 8d 74 24 08       	lea    0x8(%rsp),%rsi
  5e:	48 8b fa             	mov    %rdx,%rdi
  61:	b9 21 00 00 00       	mov    $0x21,%ecx
  66:	f3 48 a5             	rep movsq (%rsi),(%rdi)
  69:	48 8b c2             	mov    %rdx,%rax
  6c:	48 8b 1c 24          	mov    (%rsp),%rbx
  70:	48 81 c4 18 01 00 00 	add    $0x118,%rsp
  77:	c3                   	ret

Disassembly of section .text._D7error_d__T6ResultTS7kernels5BlockTSQq11DomainErrorZQBp__T11copyStorageTyS3std7sumtype__T7SumTypeTSQDv5EmptyTSQEg__T7SuccessTQEcZQnTSQFd__T7FailureTQEjZQnZQCoZQDxFNaNbNiNfKyQDwZyQEb:

0000000000000000 <error_d.Result!(kernels.Block, kernels.DomainError).Result.copyStorage!(immutable(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).copyStorage(ref immutable(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType))>:
   0:	55                   	push   %rbp
   1:	48 8b ec             	mov    %rsp,%rbp
   4:	48 83 ec 10          	sub    $0x10,%rsp
   8:	48 89 7d f0          	mov    %rdi,-0x10(%rbp)
   c:	48 89 75 f8          	mov    %rsi,-0x8(%rbp)
  10:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
  14:	48 8b 75 f0          	mov    -0x10(%rbp),%rsi
  18:	31 ff                	xor    %edi,%edi
  1a:	e8 00 00 00 00       	call   1f <error_d.Result!(kernels.Block, kernels.DomainError).Result.copyStorage!(immutable(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).copyStorage(ref immutable(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType))+0x1f>	1b: R_X86_64_PLT32	std.sumtype.match!(error_d.Result!(kernels.Block, kernels.DomainError).Result.copyStorage!(immutable(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).copyStorage(ref immutable(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).__lambda_L103_C30).match!(immutable(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).match(ref immutable(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType))-0x4
  1f:	48 8b e5             	mov    %rbp,%rsp
  22:	5d                   	pop    %rbp
  23:	c3                   	ret

Disassembly of section .text._D3std7sumtype__T5matchS7error_d__T6ResultTS7kernels5BlockTSQq11DomainErrorZQBp__T11copyStorageTySQDsQDr__T7SumTypeTSQDp5EmptyTSQEa__T7SuccessTQDwZQnTSQEx__T7FailureTQEdZQnZQCoZQDrFKyQDiZ17__lambda_L103_C30Z__TQHlTyQEoZQHuMFNaNbNiNfKyQFhZyQFm:

0000000000000000 <std.sumtype.match!(error_d.Result!(kernels.Block, kernels.DomainError).Result.copyStorage!(immutable(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).copyStorage(ref immutable(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).__lambda_L103_C30).match!(immutable(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).match(ref immutable(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType))>:
   0:	55                   	push   %rbp
   1:	48 8b ec             	mov    %rsp,%rbp
   4:	48 83 ec 20          	sub    $0x20,%rsp
   8:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
   c:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
  10:	48 89 55 f8          	mov    %rdx,-0x8(%rbp)
  14:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
  18:	48 8b 75 f0          	mov    -0x10(%rbp),%rsi
  1c:	48 8b 7d e8          	mov    -0x18(%rbp),%rdi
  20:	e8 00 00 00 00       	call   25 <std.sumtype.match!(error_d.Result!(kernels.Block, kernels.DomainError).Result.copyStorage!(immutable(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).copyStorage(ref immutable(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).__lambda_L103_C30).match!(immutable(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).match(ref immutable(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType))+0x25>	21: R_X86_64_PLT32	std.sumtype.matchImpl!(1, error_d.Result!(kernels.Block, kernels.DomainError).Result.copyStorage!(immutable(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).copyStorage(ref immutable(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).__lambda_L103_C30).matchImpl!(immutable(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).matchImpl(ref immutable(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType))-0x4
  25:	48 8b e5             	mov    %rbp,%rsp
  28:	5d                   	pop    %rbp
  29:	c3                   	ret
	...

Disassembly of section .text._D3std7sumtype__T9matchImplVEQBb8typecons__T4FlagVAyaa10_65786861757374697665ZQBii1S7error_d__T6ResultTS7kernels5BlockTSQq11DomainErrorZQBp__T11copyStorageTySQGaQFz__T7SumTypeTSQDp5EmptyTSQEa__T7SuccessTQDwZQnTSQEx__T7FailureTQEdZQnZQCoZQDrFKyQDiZ17__lambda_L103_C30Z__TQJtTyQEoZQKcMFNaNbNiNfKyQFhZyQFm:

0000000000000000 <std.sumtype.matchImpl!(1, error_d.Result!(kernels.Block, kernels.DomainError).Result.copyStorage!(immutable(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).copyStorage(ref immutable(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).__lambda_L103_C30).matchImpl!(immutable(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).matchImpl(ref immutable(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType))>:
   0:	48 81 ec 38 04 00 00 	sub    $0x438,%rsp
   7:	48 89 5c 24 08       	mov    %rbx,0x8(%rsp)
   c:	49 89 f0             	mov    %rsi,%r8
   f:	0f b6 8a 00 01 00 00 	movzbl 0x100(%rdx),%ecx
  16:	0f b6 c1             	movzbl %cl,%eax
  19:	85 c0                	test   %eax,%eax
  1b:	74 13                	je     30 <std.sumtype.matchImpl!(1, error_d.Result!(kernels.Block, kernels.DomainError).Result.copyStorage!(immutable(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).copyStorage(ref immutable(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).__lambda_L103_C30).matchImpl!(immutable(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).matchImpl(ref immutable(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType))+0x30>
  1d:	83 f8 01             	cmp    $0x1,%eax
  20:	74 67                	je     89 <std.sumtype.matchImpl!(1, error_d.Result!(kernels.Block, kernels.DomainError).Result.copyStorage!(immutable(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).copyStorage(ref immutable(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).__lambda_L103_C30).matchImpl!(immutable(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).matchImpl(ref immutable(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType))+0x89>
  22:	83 f8 02             	cmp    $0x2,%eax
  25:	0f 84 e2 00 00 00    	je     10d <std.sumtype.matchImpl!(1, error_d.Result!(kernels.Block, kernels.DomainError).Result.copyStorage!(immutable(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).copyStorage(ref immutable(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).__lambda_L103_C30).matchImpl!(immutable(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).matchImpl(ref immutable(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType))+0x10d>
  2b:	e9 41 01 00 00       	jmp    171 <std.sumtype.matchImpl!(1, error_d.Result!(kernels.Block, kernels.DomainError).Result.copyStorage!(immutable(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).copyStorage(ref immutable(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).__lambda_L103_C30).matchImpl!(immutable(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).matchImpl(ref immutable(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType))+0x171>
  30:	31 c9                	xor    %ecx,%ecx
  32:	89 8c 24 10 01 00 00 	mov    %ecx,0x110(%rsp)
  39:	89 8c 24 14 01 00 00 	mov    %ecx,0x114(%rsp)
  40:	48 8b 35 00 00 00 00 	mov    0x0(%rip),%rsi        # 47 <std.sumtype.matchImpl!(1, error_d.Result!(kernels.Block, kernels.DomainError).Result.copyStorage!(immutable(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).copyStorage(ref immutable(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).__lambda_L103_C30).matchImpl!(immutable(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).matchImpl(ref immutable(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType))+0x47>	43: R_X86_64_GOTPCREL	initializer for std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.Storage-0x4
  47:	48 8d 7c 24 10       	lea    0x10(%rsp),%rdi
  4c:	b9 20 00 00 00       	mov    $0x20,%ecx
  51:	f3 48 a5             	rep movsq (%rsi),(%rdi)
  54:	88 8c 24 10 01 00 00 	mov    %cl,0x110(%rsp)
  5b:	0f b6 1a             	movzbl (%rdx),%ebx
  5e:	88 5c 24 10          	mov    %bl,0x10(%rsp)
  62:	88 8c 24 10 01 00 00 	mov    %cl,0x110(%rsp)
  69:	48 8d 74 24 10       	lea    0x10(%rsp),%rsi
  6e:	49 8b f8             	mov    %r8,%rdi
  71:	b9 21 00 00 00       	mov    $0x21,%ecx
  76:	f3 48 a5             	rep movsq (%rsi),(%rdi)
  79:	49 8b c0             	mov    %r8,%rax
  7c:	48 8b 5c 24 08       	mov    0x8(%rsp),%rbx
  81:	48 81 c4 38 04 00 00 	add    $0x438,%rsp
  88:	c3                   	ret
  89:	31 c9                	xor    %ecx,%ecx
  8b:	89 8c 24 20 02 00 00 	mov    %ecx,0x220(%rsp)
  92:	89 8c 24 24 02 00 00 	mov    %ecx,0x224(%rsp)
  99:	48 8b 35 00 00 00 00 	mov    0x0(%rip),%rsi        # a0 <std.sumtype.matchImpl!(1, error_d.Result!(kernels.Block, kernels.DomainError).Result.copyStorage!(immutable(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).copyStorage(ref immutable(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).__lambda_L103_C30).matchImpl!(immutable(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).matchImpl(ref immutable(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType))+0xa0>	9c: R_X86_64_GOTPCREL	initializer for std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.Storage-0x4
  a0:	48 8d bc 24 20 01 00 00 	lea    0x120(%rsp),%rdi
  a8:	b9 20 00 00 00       	mov    $0x20,%ecx
  ad:	f3 48 a5             	rep movsq (%rsi),(%rdi)
  b0:	88 8c 24 20 02 00 00 	mov    %cl,0x220(%rsp)
  b7:	48 8b f2             	mov    %rdx,%rsi
  ba:	48 8d bc 24 30 02 00 00 	lea    0x230(%rsp),%rdi
  c2:	b9 20 00 00 00       	mov    $0x20,%ecx
  c7:	f3 48 a5             	rep movsq (%rsi),(%rdi)
  ca:	48 8d b4 24 30 02 00 00 	lea    0x230(%rsp),%rsi
  d2:	48 8d bc 24 20 01 00 00 	lea    0x120(%rsp),%rdi
  da:	b9 20 00 00 00       	mov    $0x20,%ecx
  df:	f3 48 a5             	rep movsq (%rsi),(%rdi)
  e2:	c6 84 24 20 02 00 00 01 	movb   $0x1,0x220(%rsp)
  ea:	48 8d b4 24 20 01 00 00 	lea    0x120(%rsp),%rsi
  f2:	49 8b f8             	mov    %r8,%rdi
  f5:	b9 21 00 00 00       	mov    $0x21,%ecx
  fa:	f3 48 a5             	rep movsq (%rsi),(%rdi)
  fd:	49 8b c0             	mov    %r8,%rax
 100:	48 8b 5c 24 08       	mov    0x8(%rsp),%rbx
 105:	48 81 c4 38 04 00 00 	add    $0x438,%rsp
 10c:	c3                   	ret
 10d:	31 c9                	xor    %ecx,%ecx
 10f:	89 8c 24 30 04 00 00 	mov    %ecx,0x430(%rsp)
 116:	89 8c 24 34 04 00 00 	mov    %ecx,0x434(%rsp)
 11d:	48 8b 35 00 00 00 00 	mov    0x0(%rip),%rsi        # 124 <std.sumtype.matchImpl!(1, error_d.Result!(kernels.Block, kernels.DomainError).Result.copyStorage!(immutable(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).copyStorage(ref immutable(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).__lambda_L103_C30).matchImpl!(immutable(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).matchImpl(ref immutable(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType))+0x124>	120: R_X86_64_GOTPCREL	initializer for std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.Storage-0x4
 124:	48 8d bc 24 30 03 00 00 	lea    0x330(%rsp),%rdi
 12c:	b9 20 00 00 00       	mov    $0x20,%ecx
 131:	f3 48 a5             	rep movsq (%rsi),(%rdi)
 134:	88 8c 24 30 04 00 00 	mov    %cl,0x430(%rsp)
 13b:	48 8b 1a             	mov    (%rdx),%rbx
 13e:	48 89 9c 24 30 03 00 00 	mov    %rbx,0x330(%rsp)
 146:	c6 84 24 30 04 00 00 02 	movb   $0x2,0x430(%rsp)
 14e:	48 8d b4 24 30 03 00 00 	lea    0x330(%rsp),%rsi
 156:	49 8b f8             	mov    %r8,%rdi
 159:	b9 21 00 00 00       	mov    $0x21,%ecx
 15e:	f3 48 a5             	rep movsq (%rsi),(%rdi)
 161:	49 8b c0             	mov    %r8,%rax
 164:	48 8b 5c 24 08       	mov    0x8(%rsp),%rbx
 169:	48 81 c4 38 04 00 00 	add    $0x438,%rsp
 170:	c3                   	ret
 171:	0f 0b                	ud2
 173:	48 8b 5c 24 08       	mov    0x8(%rsp),%rbx
 178:	48 81 c4 38 04 00 00 	add    $0x438,%rsp
 17f:	c3                   	ret

Disassembly of section .text._D7error_d__T6ResultTS7kernels5BlockTSQq11DomainErrorZQBp__T11copyStorageTyS3std7sumtype__T7SumTypeTSQDv5EmptyTSQEg__T7SuccessTQEcZQnTSQFd__T7FailureTQEjZQnZQCoZQDxFKyQDoZ__T17__lambda_L103_C30TySQHmQDrZQBdFNaNbNiNfKyQwZyQFq:

0000000000000000 <error_d.Result!(kernels.Block, kernels.DomainError).Result.copyStorage!(immutable(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).copyStorage(ref immutable(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).__lambda_L103_C30!(immutable(error_d.Empty)).__lambda_L103_C30(ref immutable(error_d.Empty))>:
   0:	48 81 ec 18 01 00 00 	sub    $0x118,%rsp
   7:	48 89 1c 24          	mov    %rbx,(%rsp)
   b:	48 89 b4 24 10 01 00 00 	mov    %rsi,0x110(%rsp)
  13:	48 89 fa             	mov    %rdi,%rdx
  16:	31 c0                	xor    %eax,%eax
  18:	89 84 24 08 01 00 00 	mov    %eax,0x108(%rsp)
  1f:	89 84 24 0c 01 00 00 	mov    %eax,0x10c(%rsp)
  26:	48 8b 35 00 00 00 00 	mov    0x0(%rip),%rsi        # 2d <error_d.Result!(kernels.Block, kernels.DomainError).Result.copyStorage!(immutable(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).copyStorage(ref immutable(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).__lambda_L103_C30!(immutable(error_d.Empty)).__lambda_L103_C30(ref immutable(error_d.Empty))+0x2d>	29: R_X86_64_GOTPCREL	initializer for std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.Storage-0x4
  2d:	48 8d 7c 24 08       	lea    0x8(%rsp),%rdi
  32:	b9 20 00 00 00       	mov    $0x20,%ecx
  37:	f3 48 a5             	rep movsq (%rsi),(%rdi)
  3a:	88 84 24 08 01 00 00 	mov    %al,0x108(%rsp)
  41:	48 8b 8c 24 10 01 00 00 	mov    0x110(%rsp),%rcx
  49:	0f b6 19             	movzbl (%rcx),%ebx
  4c:	88 5c 24 08          	mov    %bl,0x8(%rsp)
  50:	88 84 24 08 01 00 00 	mov    %al,0x108(%rsp)
  57:	48 8d 74 24 08       	lea    0x8(%rsp),%rsi
  5c:	48 8b fa             	mov    %rdx,%rdi
  5f:	b9 21 00 00 00       	mov    $0x21,%ecx
  64:	f3 48 a5             	rep movsq (%rsi),(%rdi)
  67:	48 8b c2             	mov    %rdx,%rax
  6a:	48 8b 1c 24          	mov    (%rsp),%rbx
  6e:	48 81 c4 18 01 00 00 	add    $0x118,%rsp
  75:	c3                   	ret
	...

Disassembly of section .text._D7error_d__T6ResultTS7kernels5BlockTSQq11DomainErrorZQBp__T11copyStorageTyS3std7sumtype__T7SumTypeTSQDv5EmptyTSQEg__T7SuccessTQEcZQnTSQFd__T7FailureTQEjZQnZQCoZQDxFKyQDoZ__T17__lambda_L103_C30TySQHm__TQDgTQHdZQDoZQBoFNaNbNiNfKyQBhZyQGc:

0000000000000000 <error_d.Result!(kernels.Block, kernels.DomainError).Result.copyStorage!(immutable(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).copyStorage(ref immutable(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).__lambda_L103_C30!(immutable(error_d.Success!(kernels.Block).Success)).__lambda_L103_C30(ref immutable(error_d.Success!(kernels.Block).Success))>:
   0:	48 81 ec 18 02 00 00 	sub    $0x218,%rsp
   7:	48 89 b4 24 10 02 00 00 	mov    %rsi,0x210(%rsp)
   f:	48 89 fa             	mov    %rdi,%rdx
  12:	31 c0                	xor    %eax,%eax
  14:	89 84 24 00 01 00 00 	mov    %eax,0x100(%rsp)
  1b:	89 84 24 04 01 00 00 	mov    %eax,0x104(%rsp)
  22:	48 8b 35 00 00 00 00 	mov    0x0(%rip),%rsi        # 29 <error_d.Result!(kernels.Block, kernels.DomainError).Result.copyStorage!(immutable(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).copyStorage(ref immutable(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).__lambda_L103_C30!(immutable(error_d.Success!(kernels.Block).Success)).__lambda_L103_C30(ref immutable(error_d.Success!(kernels.Block).Success))+0x29>	25: R_X86_64_GOTPCREL	initializer for std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.Storage-0x4
  29:	48 8d 3c 24          	lea    (%rsp),%rdi
  2d:	b9 20 00 00 00       	mov    $0x20,%ecx
  32:	f3 48 a5             	rep movsq (%rsi),(%rdi)
  35:	88 84 24 00 01 00 00 	mov    %al,0x100(%rsp)
  3c:	48 8b b4 24 10 02 00 00 	mov    0x210(%rsp),%rsi
  44:	48 8d bc 24 10 01 00 00 	lea    0x110(%rsp),%rdi
  4c:	b9 20 00 00 00       	mov    $0x20,%ecx
  51:	f3 48 a5             	rep movsq (%rsi),(%rdi)
  54:	48 8d b4 24 10 01 00 00 	lea    0x110(%rsp),%rsi
  5c:	48 8d 3c 24          	lea    (%rsp),%rdi
  60:	b9 20 00 00 00       	mov    $0x20,%ecx
  65:	f3 48 a5             	rep movsq (%rsi),(%rdi)
  68:	c6 84 24 00 01 00 00 01 	movb   $0x1,0x100(%rsp)
  70:	48 8d 34 24          	lea    (%rsp),%rsi
  74:	48 8b fa             	mov    %rdx,%rdi
  77:	b9 21 00 00 00       	mov    $0x21,%ecx
  7c:	f3 48 a5             	rep movsq (%rsi),(%rdi)
  7f:	48 8b c2             	mov    %rdx,%rax
  82:	48 81 c4 18 02 00 00 	add    $0x218,%rsp
  89:	c3                   	ret
	...

Disassembly of section .text._D7error_d__T6ResultTS7kernels5BlockTSQq11DomainErrorZQBp__T11copyStorageTyS3std7sumtype__T7SumTypeTSQDv5EmptyTSQEg__T7SuccessTQEcZQnTSQFd__T7FailureTQEjZQnZQCoZQDxFKyQDoZ__T17__lambda_L103_C30TySQHm__TQCjTQGnZQCrZQBoFNaNbNiNfKyQBhZyQGc:

0000000000000000 <error_d.Result!(kernels.Block, kernels.DomainError).Result.copyStorage!(immutable(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).copyStorage(ref immutable(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).__lambda_L103_C30!(immutable(error_d.Failure!(kernels.DomainError).Failure)).__lambda_L103_C30(ref immutable(error_d.Failure!(kernels.DomainError).Failure))>:
   0:	48 81 ec 18 01 00 00 	sub    $0x118,%rsp
   7:	48 89 1c 24          	mov    %rbx,(%rsp)
   b:	48 89 b4 24 10 01 00 00 	mov    %rsi,0x110(%rsp)
  13:	48 89 fa             	mov    %rdi,%rdx
  16:	31 c0                	xor    %eax,%eax
  18:	89 84 24 08 01 00 00 	mov    %eax,0x108(%rsp)
  1f:	89 84 24 0c 01 00 00 	mov    %eax,0x10c(%rsp)
  26:	48 8b 35 00 00 00 00 	mov    0x0(%rip),%rsi        # 2d <error_d.Result!(kernels.Block, kernels.DomainError).Result.copyStorage!(immutable(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).copyStorage(ref immutable(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).__lambda_L103_C30!(immutable(error_d.Failure!(kernels.DomainError).Failure)).__lambda_L103_C30(ref immutable(error_d.Failure!(kernels.DomainError).Failure))+0x2d>	29: R_X86_64_GOTPCREL	initializer for std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.Storage-0x4
  2d:	48 8d 7c 24 08       	lea    0x8(%rsp),%rdi
  32:	b9 20 00 00 00       	mov    $0x20,%ecx
  37:	f3 48 a5             	rep movsq (%rsi),(%rdi)
  3a:	88 84 24 08 01 00 00 	mov    %al,0x108(%rsp)
  41:	48 8b 8c 24 10 01 00 00 	mov    0x110(%rsp),%rcx
  49:	48 8b 19             	mov    (%rcx),%rbx
  4c:	48 89 5c 24 08       	mov    %rbx,0x8(%rsp)
  51:	c6 84 24 08 01 00 00 02 	movb   $0x2,0x108(%rsp)
  59:	48 8d 74 24 08       	lea    0x8(%rsp),%rsi
  5e:	48 8b fa             	mov    %rdx,%rdi
  61:	b9 21 00 00 00       	mov    $0x21,%ecx
  66:	f3 48 a5             	rep movsq (%rsi),(%rdi)
  69:	48 8b c2             	mov    %rdx,%rax
  6c:	48 8b 1c 24          	mov    (%rsp),%rbx
  70:	48 81 c4 18 01 00 00 	add    $0x118,%rsp
  77:	c3                   	ret

Disassembly of section .text._D3std7sumtype__T5matchS7error_d__T6ResultTS7kernels5BlockTSQq11DomainErrorZQBp5stateMxFNaNbNiNfZ17__lambda_L162_C31Z__TQDzTxSQEuQEt__T7SumTypeTSQEr5EmptyTSQFc__T7SuccessTQEyZQnTSQFz__T7FailureTQFfZQnZQCoZQHgMFNaNbNiNfKxQDrZEQHt11ResultState:

0000000000000000 <std.sumtype.match!(error_d.Result!(kernels.Block, kernels.DomainError).Result.state().__lambda_L162_C31).match!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).match(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType))>:
   0:	55                   	push   %rbp
   1:	48 8b ec             	mov    %rsp,%rbp
   4:	48 83 ec 10          	sub    $0x10,%rsp
   8:	48 89 7d f0          	mov    %rdi,-0x10(%rbp)
   c:	48 89 75 f8          	mov    %rsi,-0x8(%rbp)
  10:	48 8b 75 f8          	mov    -0x8(%rbp),%rsi
  14:	48 8b 7d f0          	mov    -0x10(%rbp),%rdi
  18:	e8 00 00 00 00       	call   1d <std.sumtype.match!(error_d.Result!(kernels.Block, kernels.DomainError).Result.state().__lambda_L162_C31).match!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).match(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType))+0x1d>	19: R_X86_64_PLT32	std.sumtype.matchImpl!(1, error_d.Result!(kernels.Block, kernels.DomainError).Result.state().__lambda_L162_C31).matchImpl!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).matchImpl(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType))-0x4
  1d:	48 8b e5             	mov    %rbp,%rsp
  20:	5d                   	pop    %rbp
  21:	c3                   	ret
	...

Disassembly of section .text._D3std7sumtype__T9matchImplVEQBb8typecons__T4FlagVAyaa10_65786861757374697665ZQBii1S7error_d__T6ResultTS7kernels5BlockTSQq11DomainErrorZQBp5stateMxFNaNbNiNfZ17__lambda_L162_C31Z__TQGhTxSQHcQHb__T7SumTypeTSQEr5EmptyTSQFc__T7SuccessTQEyZQnTSQFz__T7FailureTQFfZQnZQCoZQJoMFNaNbNiNfKxQDrZEQHt11ResultState:

0000000000000000 <std.sumtype.matchImpl!(1, error_d.Result!(kernels.Block, kernels.DomainError).Result.state().__lambda_L162_C31).matchImpl!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).matchImpl(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType))>:
   0:	0f b6 8e 00 01 00 00 	movzbl 0x100(%rsi),%ecx
   7:	0f b6 c1             	movzbl %cl,%eax
   a:	85 c0                	test   %eax,%eax
   c:	74 0c                	je     1a <std.sumtype.matchImpl!(1, error_d.Result!(kernels.Block, kernels.DomainError).Result.state().__lambda_L162_C31).matchImpl!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).matchImpl(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType))+0x1a>
   e:	83 f8 01             	cmp    $0x1,%eax
  11:	74 0a                	je     1d <std.sumtype.matchImpl!(1, error_d.Result!(kernels.Block, kernels.DomainError).Result.state().__lambda_L162_C31).matchImpl!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).matchImpl(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType))+0x1d>
  13:	83 f8 02             	cmp    $0x2,%eax
  16:	74 0b                	je     23 <std.sumtype.matchImpl!(1, error_d.Result!(kernels.Block, kernels.DomainError).Result.state().__lambda_L162_C31).matchImpl!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).matchImpl(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType))+0x23>
  18:	eb 0f                	jmp    29 <std.sumtype.matchImpl!(1, error_d.Result!(kernels.Block, kernels.DomainError).Result.state().__lambda_L162_C31).matchImpl!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).matchImpl(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType))+0x29>
  1a:	31 c0                	xor    %eax,%eax
  1c:	c3                   	ret
  1d:	b8 01 00 00 00       	mov    $0x1,%eax
  22:	c3                   	ret
  23:	b8 02 00 00 00       	mov    $0x2,%eax
  28:	c3                   	ret
  29:	0f 0b                	ud2
  2b:	c3                   	ret

Disassembly of section .text._D7error_d__T6ResultTS7kernels5BlockTSQq11DomainErrorZQBp5stateMxFNaNbNiNfZ__T17__lambda_L162_C31TSQDt5EmptyZQBfFNaNbNiNfKxSQEsQzZEQEz11ResultState:

0000000000000000 <error_d.Result!(kernels.Block, kernels.DomainError).Result.state() const.__lambda_L162_C31!(error_d.Empty).__lambda_L162_C31(ref const(error_d.Empty))>:
   0:	31 c0                	xor    %eax,%eax
   2:	c3                   	ret
	...

Disassembly of section .text._D7error_d__T6ResultTS7kernels5BlockTSQq11DomainErrorZQBp5stateMxFNaNbNiNfZ__T17__lambda_L162_C31TSQDt__T7SuccessTQDpZQnZQBrFNaNbNiNfKxSQFe__TQBlTQEvZQBtZEQFx11ResultState:

0000000000000000 <error_d.Result!(kernels.Block, kernels.DomainError).Result.state() const.__lambda_L162_C31!(error_d.Success!(kernels.Block).Success).__lambda_L162_C31(ref const(error_d.Success!(kernels.Block).Success))>:
   0:	b8 01 00 00 00       	mov    $0x1,%eax
   5:	c3                   	ret
	...

Disassembly of section .text._D7error_d__T6ResultTS7kernels5BlockTSQq11DomainErrorZQBp5stateMxFNaNbNiNfZ__T17__lambda_L162_C31TSQDt__T7FailureTQCzZQnZQBrFNaNbNiNfKxSQFe__TQBlTQEfZQBtZEQFx11ResultState:

0000000000000000 <error_d.Result!(kernels.Block, kernels.DomainError).Result.state() const.__lambda_L162_C31!(error_d.Failure!(kernels.DomainError).Failure).__lambda_L162_C31(ref const(error_d.Failure!(kernels.DomainError).Failure))>:
   0:	b8 02 00 00 00       	mov    $0x2,%eax
   5:	c3                   	ret
	...

Disassembly of section .text._D4core8lifetime__T4moveTS3std7sumtype__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTS7kernels5BlockZQzTSQBy__T7FailureTSQBj11DomainErrorZQBbZQDtZQEtFNaNbNiNfKQFaKQFeZv:

0000000000000000 <core.lifetime.move!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).move(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType, ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)>:
   0:	55                   	push   %rbp
   1:	48 8b ec             	mov    %rsp,%rbp
   4:	48 83 ec 10          	sub    $0x10,%rsp
   8:	48 89 7d f0          	mov    %rdi,-0x10(%rbp)
   c:	48 89 75 f8          	mov    %rsi,-0x8(%rbp)
  10:	48 8b 75 f0          	mov    -0x10(%rbp),%rsi
  14:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
  18:	e8 00 00 00 00       	call   1d <core.lifetime.move!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).move(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType, ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)+0x1d>	19: R_X86_64_PLT32	_D4core8lifetime__T8moveImplTS3std7sumtype__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTS7kernels5BlockZQzTSQBy__T7FailureTSQBj11DomainErrorZQBbZQDtZQExFNaNbNiNfMKQFbNkMKQFiZv-0x4
  1d:	48 8b e5             	mov    %rbp,%rsp
  20:	5d                   	pop    %rbp
  21:	c3                   	ret
	...

Disassembly of section .text._D4core8lifetime__T8moveImplTS3std7sumtype__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTS7kernels5BlockZQzTSQBy__T7FailureTSQBj11DomainErrorZQBbZQDtZQExFNaNbNiNfMKQFbNkMKQFiZv:

0000000000000000 <_D4core8lifetime__T8moveImplTS3std7sumtype__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTS7kernels5BlockZQzTSQBy__T7FailureTSQBj11DomainErrorZQBbZQDtZQExFNaNbNiNfMKQFbNkMKQFiZv>:
   0:	55                   	push   %rbp
   1:	48 8b ec             	mov    %rsp,%rbp
   4:	48 83 ec 10          	sub    $0x10,%rsp
   8:	48 89 7d f0          	mov    %rdi,-0x10(%rbp)
   c:	48 89 75 f8          	mov    %rsi,-0x8(%rbp)
  10:	48 39 f7             	cmp    %rsi,%rdi
  13:	74 05                	je     1a <_D4core8lifetime__T8moveImplTS3std7sumtype__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTS7kernels5BlockZQzTSQBy__T7FailureTSQBj11DomainErrorZQBbZQDtZQExFNaNbNiNfMKQFbNkMKQFiZv+0x1a>
  15:	e8 00 00 00 00       	call   1a <_D4core8lifetime__T8moveImplTS3std7sumtype__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTS7kernels5BlockZQzTSQBy__T7FailureTSQBj11DomainErrorZQBbZQDtZQExFNaNbNiNfMKQFbNkMKQFiZv+0x1a>	16: R_X86_64_PLT32	_D4core8lifetime__T15moveEmplaceImplTS3std7sumtype__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTS7kernels5BlockZQzTSQBy__T7FailureTSQBj11DomainErrorZQBbZQDtZQFfFNaNbNiNfMKQFbNkMKQFiZv-0x4
  1a:	48 8b e5             	mov    %rbp,%rsp
  1d:	5d                   	pop    %rbp
  1e:	c3                   	ret
	...

Disassembly of section .text._D3std7sumtype__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTS7kernels5BlockZQzTSQBy__T7FailureTSQBj11DomainErrorZQBbZQDt__T8opEqualsTxSQFaQEz__TQEuTQEpTQEdTQCzZQFkTxQBfZQBuMxFNaNbNiNfKxQBzZb:

0000000000000000 <std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opEquals!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType), const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).opEquals(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)) const>:
   0:	55                   	push   %rbp
   1:	48 8b ec             	mov    %rsp,%rbp
   4:	48 83 ec 10          	sub    $0x10,%rsp
   8:	48 89 7d f0          	mov    %rdi,-0x10(%rbp)
   c:	48 89 75 f8          	mov    %rsi,-0x8(%rbp)
  10:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
  14:	48 8b 75 f8          	mov    -0x8(%rbp),%rsi
  18:	48 8b 7d f0          	mov    -0x10(%rbp),%rdi
  1c:	e8 00 00 00 00       	call   21 <std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opEquals!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType), const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).opEquals(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)) const+0x21>	1d: R_X86_64_PLT32	std.sumtype.match!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opEquals!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType), const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).opEquals(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).__lambda_L723_C48).match!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType), const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).match(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType), ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType))-0x4
  21:	48 8b e5             	mov    %rbp,%rsp
  24:	5d                   	pop    %rbp
  25:	c3                   	ret
	...

Disassembly of section .text._D3std7sumtype__T5matchSQwQu__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTS7kernels5BlockZQzTSQBy__T7FailureTSQBj11DomainErrorZQBbZQDt__T8opEqualsTxSQFoQFn__TQEuTQEpTQEdTQCzZQFkTxQBfZQBuMxFKxQBrZ17__lambda_L723_C48Z__TQHqTxQCxTxQDcZQIeMFNaNbNiNfKxQDvKxQEaZb:

0000000000000000 <std.sumtype.match!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opEquals!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType), const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).opEquals(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).__lambda_L723_C48).match!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType), const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).match(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType), ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType))>:
   0:	55                   	push   %rbp
   1:	48 8b ec             	mov    %rsp,%rbp
   4:	48 83 ec 20          	sub    $0x20,%rsp
   8:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
   c:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
  10:	48 89 55 f8          	mov    %rdx,-0x8(%rbp)
  14:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
  18:	48 8b 75 f0          	mov    -0x10(%rbp),%rsi
  1c:	48 8b 7d e8          	mov    -0x18(%rbp),%rdi
  20:	e8 00 00 00 00       	call   25 <std.sumtype.match!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opEquals!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType), const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).opEquals(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).__lambda_L723_C48).match!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType), const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).match(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType), ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType))+0x25>	21: R_X86_64_PLT32	std.sumtype.matchImpl!(1, std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opEquals!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType), const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).opEquals(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).__lambda_L723_C48).matchImpl!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType), const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).matchImpl(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType), ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType))-0x4
  25:	48 8b e5             	mov    %rbp,%rsp
  28:	5d                   	pop    %rbp
  29:	c3                   	ret
	...

Disassembly of section .text._D3std7sumtype__T9matchImplVEQBb8typecons__T4FlagVAyaa10_65786861757374697665ZQBii1SQDeQDd__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTS7kernels5BlockZQzTSQBy__T7FailureTSQBj11DomainErrorZQBbZQDt__T8opEqualsTxSQHyQHx__TQEuTQEpTQEdTQCzZQFkTxQBfZQBuMxFKxQBrZ17__lambda_L723_C48Z__TQKaTxQCxTxQDcZQKoMFNaNbNiNfKxQDvKxQEaZb:

0000000000000000 <std.sumtype.matchImpl!(1, std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opEquals!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType), const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).opEquals(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).__lambda_L723_C48).matchImpl!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType), const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).matchImpl(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType), ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType))>:
   0:	53                   	push   %rbx
   1:	49 89 f0             	mov    %rsi,%r8
   4:	40 0f b6 b2 00 01 00 00 	rex movzbl 0x100(%rdx),%esi
   c:	8b f6                	mov    %esi,%esi
   e:	41 0f b6 80 00 01 00 00 	movzbl 0x100(%r8),%eax
  16:	8b c0                	mov    %eax,%eax
  18:	48 8d 04 40          	lea    (%rax,%rax,2),%rax
  1c:	48 01 c6             	add    %rax,%rsi
  1f:	48 8b de             	mov    %rsi,%rbx
  22:	48 83 fb 08          	cmp    $0x8,%rbx
  26:	77 5a                	ja     82 <std.sumtype.matchImpl!(1, std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opEquals!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType), const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).opEquals(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).__lambda_L723_C48).matchImpl!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType), const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).matchImpl(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType), ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType))+0x82>
  28:	8b db                	mov    %ebx,%ebx
  2a:	48 8d 0d 00 00 00 00 	lea    0x0(%rip),%rcx        # 31 <std.sumtype.matchImpl!(1, std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opEquals!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType), const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).opEquals(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).__lambda_L723_C48).matchImpl!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType), const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).matchImpl(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType), ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType))+0x31>	2d: R_X86_64_PC32	.rodata._D3std7sumtype__T9matchImplVEQBb8typecons__T4FlagVAyaa10_65786861757374697665ZQBii1SQDeQDd__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTS7kernels5BlockZQzTSQBy__T7FailureTSQBj11DomainErrorZQBbZQDt__T8opEqualsTxSQHyQHx__TQEuTQEpTQEdTQCzZQFkTxQBfZQBuMxFKxQBrZ17__lambda_L723_C48Z__TQKaTxQCxTxQDcZQKoMFNaNbNiNfKxQDvKxQEaZb-0x4
  31:	4c 63 0c 99          	movslq (%rcx,%rbx,4),%r9
  35:	49 8d 0c 09          	lea    (%r9,%rcx,1),%rcx
  39:	ff e1                	jmp    *%rcx
  3b:	b8 01 00 00 00       	mov    $0x1,%eax
  40:	5b                   	pop    %rbx
  41:	c3                   	ret
  42:	48 8b f2             	mov    %rdx,%rsi
  45:	49 8b f8             	mov    %r8,%rdi
  48:	b9 00 01 00 00       	mov    $0x100,%ecx
  4d:	33 c0                	xor    %eax,%eax
  4f:	f3 a6                	repz cmpsb (%rdi),(%rsi)
  51:	74 05                	je     58 <std.sumtype.matchImpl!(1, std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opEquals!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType), const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).opEquals(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).__lambda_L723_C48).matchImpl!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType), const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).matchImpl(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType), ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType))+0x58>
  53:	1b c0                	sbb    %eax,%eax
  55:	83 d8 ff             	sbb    $0xffffffff,%eax
  58:	f7 d8                	neg    %eax
  5a:	19 c0                	sbb    %eax,%eax
  5c:	ff c0                	inc    %eax
  5e:	5b                   	pop    %rbx
  5f:	c3                   	ret
  60:	31 c0                	xor    %eax,%eax
  62:	5b                   	pop    %rbx
  63:	c3                   	ret
  64:	48 8b f2             	mov    %rdx,%rsi
  67:	49 8b f8             	mov    %r8,%rdi
  6a:	b9 08 00 00 00       	mov    $0x8,%ecx
  6f:	33 c0                	xor    %eax,%eax
  71:	f3 a6                	repz cmpsb (%rdi),(%rsi)
  73:	74 05                	je     7a <std.sumtype.matchImpl!(1, std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opEquals!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType), const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).opEquals(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).__lambda_L723_C48).matchImpl!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType), const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).matchImpl(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType), ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType))+0x7a>
  75:	1b c0                	sbb    %eax,%eax
  77:	83 d8 ff             	sbb    $0xffffffff,%eax
  7a:	f7 d8                	neg    %eax
  7c:	19 c0                	sbb    %eax,%eax
  7e:	ff c0                	inc    %eax
  80:	5b                   	pop    %rbx
  81:	c3                   	ret
  82:	0f 0b                	ud2
  84:	5b                   	pop    %rbx
  85:	c3                   	ret
	...

Disassembly of section .text._D3std7sumtype__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTS7kernels5BlockZQzTSQBy__T7FailureTSQBj11DomainErrorZQBbZQDt__T8opEqualsTxSQFaQEz__TQEuTQEpTQEdTQCzZQFkTxQBfZQBuMxFKxQBrZ__T17__lambda_L723_C48TxSQGuQGpTxQjZQBhFNaNbNiNfKxQBaKxQBfZb:

0000000000000000 <std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opEquals!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType), const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).opEquals(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)) const.__lambda_L723_C48!(const(error_d.Empty), const(error_d.Empty)).__lambda_L723_C48(ref const(error_d.Empty), ref const(error_d.Empty))>:
   0:	b8 01 00 00 00       	mov    $0x1,%eax
   5:	c3                   	ret
	...

Disassembly of section .text._D3std7sumtype__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTS7kernels5BlockZQzTSQBy__T7FailureTSQBj11DomainErrorZQBbZQDt__T8opEqualsTxSQFaQEz__TQEuTQEpTQEdTQCzZQFkTxQBfZQBuMxFKxQBrZ__T17__lambda_L723_C48TxSQGu__TQGfTQGaZQGnTxSQHoQHjZQBxFNaNbNiNfKxQBqKxQBbZb:

0000000000000000 <std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opEquals!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType), const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).opEquals(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)) const.__lambda_L723_C48!(const(error_d.Success!(kernels.Block).Success), const(error_d.Empty)).__lambda_L723_C48(ref const(error_d.Success!(kernels.Block).Success), ref const(error_d.Empty))>:
   0:	31 c0                	xor    %eax,%eax
   2:	c3                   	ret
	...

Disassembly of section .text._D3std7sumtype__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTS7kernels5BlockZQzTSQBy__T7FailureTSQBj11DomainErrorZQBbZQDt__T8opEqualsTxSQFaQEz__TQEuTQEpTQEdTQCzZQFkTxQBfZQBuMxFKxQBrZ__T17__lambda_L723_C48TxSQGu__TQEwTQErZQFeTxSQHoQHjZQBxFNaNbNiNfKxQBqKxQBbZb:

0000000000000000 <std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opEquals!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType), const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).opEquals(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)) const.__lambda_L723_C48!(const(error_d.Failure!(kernels.DomainError).Failure), const(error_d.Empty)).__lambda_L723_C48(ref const(error_d.Failure!(kernels.DomainError).Failure), ref const(error_d.Empty))>:
   0:	31 c0                	xor    %eax,%eax
   2:	c3                   	ret
	...

Disassembly of section .text._D3std7sumtype__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTS7kernels5BlockZQzTSQBy__T7FailureTSQBj11DomainErrorZQBbZQDt__T8opEqualsTxSQFaQEz__TQEuTQEpTQEdTQCzZQFkTxQBfZQBuMxFKxQBrZ__T17__lambda_L723_C48TxSQGuQGpTxSQHd__TQGoTQGjZQGwZQBxFNaNbNiNfKxQBqKxQBmZb:

0000000000000000 <std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opEquals!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType), const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).opEquals(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)) const.__lambda_L723_C48!(const(error_d.Empty), const(error_d.Success!(kernels.Block).Success)).__lambda_L723_C48(ref const(error_d.Empty), ref const(error_d.Success!(kernels.Block).Success))>:
   0:	31 c0                	xor    %eax,%eax
   2:	c3                   	ret
	...

Disassembly of section .text._D3std7sumtype__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTS7kernels5BlockZQzTSQBy__T7FailureTSQBj11DomainErrorZQBbZQDt__T8opEqualsTxSQFaQEz__TQEuTQEpTQEdTQCzZQFkTxQBfZQBuMxFKxQBrZ__T17__lambda_L723_C48TxSQGu__TQGfTQGaZQGnTxQuZQBsFNaNbNiNfKxQBlKxQBqZb:

0000000000000000 <std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opEquals!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType), const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).opEquals(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)) const.__lambda_L723_C48!(const(error_d.Success!(kernels.Block).Success), const(error_d.Success!(kernels.Block).Success)).__lambda_L723_C48(ref const(error_d.Success!(kernels.Block).Success), ref const(error_d.Success!(kernels.Block).Success))>:
   0:	50                   	push   %rax
   1:	48 89 34 24          	mov    %rsi,(%rsp)
   5:	48 89 fa             	mov    %rdi,%rdx
   8:	48 8b 34 24          	mov    (%rsp),%rsi
   c:	48 8b fa             	mov    %rdx,%rdi
   f:	b9 00 01 00 00       	mov    $0x100,%ecx
  14:	33 c0                	xor    %eax,%eax
  16:	f3 a6                	repz cmpsb (%rdi),(%rsi)
  18:	74 05                	je     1f <std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opEquals!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType), const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).opEquals(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)) const.__lambda_L723_C48!(const(error_d.Success!(kernels.Block).Success), const(error_d.Success!(kernels.Block).Success)).__lambda_L723_C48(ref const(error_d.Success!(kernels.Block).Success), ref const(error_d.Success!(kernels.Block).Success))+0x1f>
  1a:	1b c0                	sbb    %eax,%eax
  1c:	83 d8 ff             	sbb    $0xffffffff,%eax
  1f:	f7 d8                	neg    %eax
  21:	19 c0                	sbb    %eax,%eax
  23:	ff c0                	inc    %eax
  25:	59                   	pop    %rcx
  26:	c3                   	ret
	...

Disassembly of section .text._D3std7sumtype__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTS7kernels5BlockZQzTSQBy__T7FailureTSQBj11DomainErrorZQBbZQDt__T8opEqualsTxSQFaQEz__TQEuTQEpTQEdTQCzZQFkTxQBfZQBuMxFKxQBrZ__T17__lambda_L723_C48TxSQGu__TQEwTQErZQFeTxSQHo__TQGzTQGuZQHhZQCiFNaNbNiNfKxQCbKxQBmZb:

0000000000000000 <std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opEquals!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType), const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).opEquals(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)) const.__lambda_L723_C48!(const(error_d.Failure!(kernels.DomainError).Failure), const(error_d.Success!(kernels.Block).Success)).__lambda_L723_C48(ref const(error_d.Failure!(kernels.DomainError).Failure), ref const(error_d.Success!(kernels.Block).Success))>:
   0:	31 c0                	xor    %eax,%eax
   2:	c3                   	ret
	...

Disassembly of section .text._D3std7sumtype__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTS7kernels5BlockZQzTSQBy__T7FailureTSQBj11DomainErrorZQBbZQDt__T8opEqualsTxSQFaQEz__TQEuTQEpTQEdTQCzZQFkTxQBfZQBuMxFKxQBrZ__T17__lambda_L723_C48TxSQGuQGpTxSQHd__TQFfTQFaZQFnZQBxFNaNbNiNfKxQBqKxQBmZb:

0000000000000000 <std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opEquals!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType), const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).opEquals(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)) const.__lambda_L723_C48!(const(error_d.Empty), const(error_d.Failure!(kernels.DomainError).Failure)).__lambda_L723_C48(ref const(error_d.Empty), ref const(error_d.Failure!(kernels.DomainError).Failure))>:
   0:	31 c0                	xor    %eax,%eax
   2:	c3                   	ret
	...

Disassembly of section .text._D3std7sumtype__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTS7kernels5BlockZQzTSQBy__T7FailureTSQBj11DomainErrorZQBbZQDt__T8opEqualsTxSQFaQEz__TQEuTQEpTQEdTQCzZQFkTxQBfZQBuMxFKxQBrZ__T17__lambda_L723_C48TxSQGu__TQGfTQGaZQGnTxSQHo__TQFqTQFlZQFyZQCiFNaNbNiNfKxQCbKxQBmZb:

0000000000000000 <std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opEquals!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType), const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).opEquals(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)) const.__lambda_L723_C48!(const(error_d.Success!(kernels.Block).Success), const(error_d.Failure!(kernels.DomainError).Failure)).__lambda_L723_C48(ref const(error_d.Success!(kernels.Block).Success), ref const(error_d.Failure!(kernels.DomainError).Failure))>:
   0:	31 c0                	xor    %eax,%eax
   2:	c3                   	ret
	...

Disassembly of section .text._D3std7sumtype__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTS7kernels5BlockZQzTSQBy__T7FailureTSQBj11DomainErrorZQBbZQDt__T8opEqualsTxSQFaQEz__TQEuTQEpTQEdTQCzZQFkTxQBfZQBuMxFKxQBrZ__T17__lambda_L723_C48TxSQGu__TQEwTQErZQFeTxQuZQBsFNaNbNiNfKxQBlKxQBqZb:

0000000000000000 <std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opEquals!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType), const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).opEquals(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)) const.__lambda_L723_C48!(const(error_d.Failure!(kernels.DomainError).Failure), const(error_d.Failure!(kernels.DomainError).Failure)).__lambda_L723_C48(ref const(error_d.Failure!(kernels.DomainError).Failure), ref const(error_d.Failure!(kernels.DomainError).Failure))>:
   0:	50                   	push   %rax
   1:	48 89 34 24          	mov    %rsi,(%rsp)
   5:	48 89 fa             	mov    %rdi,%rdx
   8:	48 8b 34 24          	mov    (%rsp),%rsi
   c:	48 8b fa             	mov    %rdx,%rdi
   f:	b9 08 00 00 00       	mov    $0x8,%ecx
  14:	33 c0                	xor    %eax,%eax
  16:	f3 a6                	repz cmpsb (%rdi),(%rsi)
  18:	74 05                	je     1f <std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opEquals!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType), const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).opEquals(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)) const.__lambda_L723_C48!(const(error_d.Failure!(kernels.DomainError).Failure), const(error_d.Failure!(kernels.DomainError).Failure)).__lambda_L723_C48(ref const(error_d.Failure!(kernels.DomainError).Failure), ref const(error_d.Failure!(kernels.DomainError).Failure))+0x1f>
  1a:	1b c0                	sbb    %eax,%eax
  1c:	83 d8 ff             	sbb    $0xffffffff,%eax
  1f:	f7 d8                	neg    %eax
  21:	19 c0                	sbb    %eax,%eax
  23:	ff c0                	inc    %eax
  25:	59                   	pop    %rcx
  26:	c3                   	ret
	...

Disassembly of section .text._D3std7sumtype__T8TagTupleVmi3Vmi3ZQs__T6__ctorTSQBvQBu__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTS7kernels5BlockZQzTSQBy__T7FailureTSQBj11DomainErrorZQBbZQDtTQEhZQEtMFNaNbNcNiNfKxSQGxQGw__TQFcTQExTQElTQDhZQFsKxQBfZSQIgQIf__TQIaVmi3Vmi3ZQIm:

0000000000000000 <std.sumtype.TagTuple!(3uL, 3uL).TagTuple.this!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType, std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).this(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType), ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType))>:
   0:	48 89 f8             	mov    %rdi,%rax
   3:	0f b6 8a 00 01 00 00 	movzbl 0x100(%rdx),%ecx
   a:	8b c9                	mov    %ecx,%ecx
   c:	48 89 08             	mov    %rcx,(%rax)
   f:	0f b6 96 00 01 00 00 	movzbl 0x100(%rsi),%edx
  16:	8b d2                	mov    %edx,%edx
  18:	48 89 50 08          	mov    %rdx,0x8(%rax)
  1c:	c3                   	ret
  1d:	00 00                	add    %al,(%rax)
	...

Disassembly of section .text._D3std7sumtype__T5matchSQwQu__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTS7kernels5BlockZQzTSQBy__T7FailureTSQBj11DomainErrorZQBbZQDt8opAssignMFNcKSQFoQFn__TQEuTQEpTQEdTQCzZQFkZ17__lambda_L679_C28Z__TQGzTQCfZQHhMFNaNbNiNfKQCxZv:

0000000000000000 <std.sumtype.match!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).__lambda_L679_C28).match!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).match(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)>:
   0:	55                   	push   %rbp
   1:	48 8b ec             	mov    %rsp,%rbp
   4:	48 83 ec 10          	sub    $0x10,%rsp
   8:	48 89 7d f0          	mov    %rdi,-0x10(%rbp)
   c:	48 89 75 f8          	mov    %rsi,-0x8(%rbp)
  10:	48 8b 75 f8          	mov    -0x8(%rbp),%rsi
  14:	48 8b 7d f0          	mov    -0x10(%rbp),%rdi
  18:	e8 00 00 00 00       	call   1d <std.sumtype.match!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).__lambda_L679_C28).match!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).match(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)+0x1d>	19: R_X86_64_PLT32	std.sumtype.matchImpl!(1, std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).__lambda_L679_C28).matchImpl!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).matchImpl(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)-0x4
  1d:	48 8b e5             	mov    %rbp,%rsp
  20:	5d                   	pop    %rbp
  21:	c3                   	ret
	...

Disassembly of section .text._D3std7sumtype__T9matchImplVEQBb8typecons__T4FlagVAyaa10_65786861757374697665ZQBii1SQDeQDd__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTS7kernels5BlockZQzTSQBy__T7FailureTSQBj11DomainErrorZQBbZQDt8opAssignMFNcKSQHyQHx__TQEuTQEpTQEdTQCzZQFkZ17__lambda_L679_C28Z__TQJjTQCfZQJrMFNaNbNiNfKQCxZv:

0000000000000000 <std.sumtype.matchImpl!(1, std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).__lambda_L679_C28).matchImpl!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).matchImpl(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)>:
   0:	55                   	push   %rbp
   1:	48 8b ec             	mov    %rsp,%rbp
   4:	53                   	push   %rbx
   5:	41 54                	push   %r12
   7:	49 89 fc             	mov    %rdi,%r12
   a:	48 89 f3             	mov    %rsi,%rbx
   d:	0f b6 8b 00 01 00 00 	movzbl 0x100(%rbx),%ecx
  14:	0f b6 c1             	movzbl %cl,%eax
  17:	85 c0                	test   %eax,%eax
  19:	74 0c                	je     27 <std.sumtype.matchImpl!(1, std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).__lambda_L679_C28).matchImpl!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).matchImpl(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)+0x27>
  1b:	83 f8 01             	cmp    $0x1,%eax
  1e:	74 14                	je     34 <std.sumtype.matchImpl!(1, std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).__lambda_L679_C28).matchImpl!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).matchImpl(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)+0x34>
  20:	83 f8 02             	cmp    $0x2,%eax
  23:	74 1c                	je     41 <std.sumtype.matchImpl!(1, std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).__lambda_L679_C28).matchImpl!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).matchImpl(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)+0x41>
  25:	eb 2a                	jmp    51 <std.sumtype.matchImpl!(1, std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).__lambda_L679_C28).matchImpl!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).matchImpl(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)+0x51>
  27:	48 8b f3             	mov    %rbx,%rsi
  2a:	49 8b fc             	mov    %r12,%rdi
  2d:	e8 00 00 00 00       	call   32 <std.sumtype.matchImpl!(1, std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).__lambda_L679_C28).matchImpl!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).matchImpl(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)+0x32>	2e: R_X86_64_PLT32	std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).__lambda_L679_C28!(error_d.Empty).__lambda_L679_C28(ref error_d.Empty)-0x4
  32:	eb 18                	jmp    4c <std.sumtype.matchImpl!(1, std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).__lambda_L679_C28).matchImpl!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).matchImpl(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)+0x4c>
  34:	48 8b f3             	mov    %rbx,%rsi
  37:	49 8b fc             	mov    %r12,%rdi
  3a:	e8 00 00 00 00       	call   3f <std.sumtype.matchImpl!(1, std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).__lambda_L679_C28).matchImpl!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).matchImpl(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)+0x3f>	3b: R_X86_64_PLT32	std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).__lambda_L679_C28!(error_d.Success!(kernels.Block).Success).__lambda_L679_C28(ref error_d.Success!(kernels.Block).Success)-0x4
  3f:	eb 0b                	jmp    4c <std.sumtype.matchImpl!(1, std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).__lambda_L679_C28).matchImpl!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).matchImpl(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)+0x4c>
  41:	48 8b f3             	mov    %rbx,%rsi
  44:	49 8b fc             	mov    %r12,%rdi
  47:	e8 00 00 00 00       	call   4c <std.sumtype.matchImpl!(1, std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).__lambda_L679_C28).matchImpl!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).matchImpl(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)+0x4c>	48: R_X86_64_PLT32	std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).__lambda_L679_C28!(error_d.Failure!(kernels.DomainError).Failure).__lambda_L679_C28(ref error_d.Failure!(kernels.DomainError).Failure)-0x4
  4c:	41 5c                	pop    %r12
  4e:	5b                   	pop    %rbx
  4f:	5d                   	pop    %rbp
  50:	c3                   	ret
  51:	0f 0b                	ud2
  53:	41 5c                	pop    %r12
  55:	5b                   	pop    %rbx
  56:	5d                   	pop    %rbp
  57:	c3                   	ret

Disassembly of section .text._D3std7sumtype__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTS7kernels5BlockZQzTSQBy__T7FailureTSQBj11DomainErrorZQBbZQDt8opAssignMFNcKSQFaQEz__TQEuTQEpTQEdTQCzZQFkZ__T17__lambda_L679_C28TQGcZQyMFNaNbNiNfKQGtZv:

0000000000000000 <std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).__lambda_L679_C28!(error_d.Empty).__lambda_L679_C28(ref error_d.Empty)>:
   0:	55                   	push   %rbp
   1:	48 8b ec             	mov    %rsp,%rbp
   4:	48 83 ec 20          	sub    $0x20,%rsp
   8:	48 89 5d e8          	mov    %rbx,-0x18(%rbp)
   c:	48 89 7d f0          	mov    %rdi,-0x10(%rbp)
  10:	48 89 75 f8          	mov    %rsi,-0x8(%rbp)
  14:	48 83 ec 08          	sub    $0x8,%rsp
  18:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
  1c:	ff 33                	push   (%rbx)
  1e:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  22:	48 8b 38             	mov    (%rax),%rdi
  25:	e8 00 00 00 00       	call   2a <std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).__lambda_L679_C28!(error_d.Empty).__lambda_L679_C28(ref error_d.Empty)+0x2a>	26: R_X86_64_PLT32	std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(error_d.Empty)-0x4
  2a:	48 83 c4 10          	add    $0x10,%rsp
  2e:	48 8b 5d e8          	mov    -0x18(%rbp),%rbx
  32:	48 8b e5             	mov    %rbp,%rsp
  35:	5d                   	pop    %rbp
  36:	c3                   	ret
	...

Disassembly of section .text._D3std7sumtype__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTS7kernels5BlockZQzTSQBy__T7FailureTSQBj11DomainErrorZQBbZQDt8opAssignMFNcKSQFaQEz__TQEuTQEpTQEdTQCzZQFkZ__T17__lambda_L679_C28TQFmZQyMFNaNbNiNfKQGdZv:

0000000000000000 <std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).__lambda_L679_C28!(error_d.Success!(kernels.Block).Success).__lambda_L679_C28(ref error_d.Success!(kernels.Block).Success)>:
   0:	55                   	push   %rbp
   1:	48 8b ec             	mov    %rsp,%rbp
   4:	48 83 ec 20          	sub    $0x20,%rsp
   8:	48 89 5d e8          	mov    %rbx,-0x18(%rbp)
   c:	48 89 7d f0          	mov    %rdi,-0x10(%rbp)
  10:	48 89 75 f8          	mov    %rsi,-0x8(%rbp)
  14:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
  18:	b9 20 00 00 00       	mov    $0x20,%ecx
  1d:	48 81 c3 f8 00 00 00 	add    $0xf8,%rbx
  24:	ff 33                	push   (%rbx)
  26:	48 83 eb 08          	sub    $0x8,%rbx
  2a:	ff c9                	dec    %ecx
  2c:	75 f6                	jne    24 <std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).__lambda_L679_C28!(error_d.Success!(kernels.Block).Success).__lambda_L679_C28(ref error_d.Success!(kernels.Block).Success)+0x24>
  2e:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  32:	48 8b 38             	mov    (%rax),%rdi
  35:	e8 00 00 00 00       	call   3a <std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).__lambda_L679_C28!(error_d.Success!(kernels.Block).Success).__lambda_L679_C28(ref error_d.Success!(kernels.Block).Success)+0x3a>	36: R_X86_64_PLT32	std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(error_d.Success!(kernels.Block).Success)-0x4
  3a:	48 81 c4 00 01 00 00 	add    $0x100,%rsp
  41:	48 8b 5d e8          	mov    -0x18(%rbp),%rbx
  45:	48 8b e5             	mov    %rbp,%rsp
  48:	5d                   	pop    %rbp
  49:	c3                   	ret
	...

Disassembly of section .text._D3std7sumtype__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTS7kernels5BlockZQzTSQBy__T7FailureTSQBj11DomainErrorZQBbZQDt8opAssignMFNcKSQFaQEz__TQEuTQEpTQEdTQCzZQFkZ__T17__lambda_L679_C28TQEeZQyMFNaNbNiNfKQEvZv:

0000000000000000 <std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).__lambda_L679_C28!(error_d.Failure!(kernels.DomainError).Failure).__lambda_L679_C28(ref error_d.Failure!(kernels.DomainError).Failure)>:
   0:	55                   	push   %rbp
   1:	48 8b ec             	mov    %rsp,%rbp
   4:	48 83 ec 10          	sub    $0x10,%rsp
   8:	48 89 7d f0          	mov    %rdi,-0x10(%rbp)
   c:	48 89 75 f8          	mov    %rsi,-0x8(%rbp)
  10:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  14:	48 8b 30             	mov    (%rax),%rsi
  17:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  1b:	48 8b 39             	mov    (%rcx),%rdi
  1e:	e8 00 00 00 00       	call   23 <std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).__lambda_L679_C28!(error_d.Failure!(kernels.DomainError).Failure).__lambda_L679_C28(ref error_d.Failure!(kernels.DomainError).Failure)+0x23>	1f: R_X86_64_PLT32	std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(error_d.Failure!(kernels.DomainError).Failure)-0x4
  23:	48 8b e5             	mov    %rbp,%rsp
  26:	5d                   	pop    %rbp
  27:	c3                   	ret

Disassembly of section .text._D3std7sumtype__T5matchS4core8internal4hash6hashOfZ__TQBlTxSQCgQCf__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTS7kernels5BlockZQzTSQBy__T7FailureTSQBj11DomainErrorZQBbZQDtZQFxFNaNbNiNfKxQEvZm:

0000000000000000 <std.sumtype.match!(core.internal.hash.hashOf).match!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).match(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType))>:
   0:	55                   	push   %rbp
   1:	48 8b ec             	mov    %rsp,%rbp
   4:	48 83 ec 10          	sub    $0x10,%rsp
   8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
   c:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
  10:	e8 00 00 00 00       	call   15 <std.sumtype.match!(core.internal.hash.hashOf).match!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).match(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType))+0x15>	11: R_X86_64_PLT32	std.sumtype.matchImpl!(1, core.internal.hash.hashOf).matchImpl!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).matchImpl(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType))-0x4
  15:	48 8b e5             	mov    %rbp,%rsp
  18:	5d                   	pop    %rbp
  19:	c3                   	ret
	...

Disassembly of section .text._D3std7sumtype__T9matchImplVEQBb8typecons__T4FlagVAyaa10_65786861757374697665ZQBii1S4core8internal4hash6hashOfZ__TQDtTxSQEoQEn__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTS7kernels5BlockZQzTSQBy__T7FailureTSQBj11DomainErrorZQBbZQDtZQIfFNaNbNiNfKxQEvZm:

0000000000000000 <std.sumtype.matchImpl!(1, core.internal.hash.hashOf).matchImpl!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).matchImpl(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType))>:
   0:	55                   	push   %rbp
   1:	48 8b ec             	mov    %rsp,%rbp
   4:	48 83 ec 10          	sub    $0x10,%rsp
   8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
   c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  10:	0f b6 88 00 01 00 00 	movzbl 0x100(%rax),%ecx
  17:	0f b6 d1             	movzbl %cl,%edx
  1a:	85 d2                	test   %edx,%edx
  1c:	74 0c                	je     2a <std.sumtype.matchImpl!(1, core.internal.hash.hashOf).matchImpl!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).matchImpl(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType))+0x2a>
  1e:	83 fa 01             	cmp    $0x1,%edx
  21:	74 0e                	je     31 <std.sumtype.matchImpl!(1, core.internal.hash.hashOf).matchImpl!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).matchImpl(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType))+0x31>
  23:	83 fa 02             	cmp    $0x2,%edx
  26:	74 1e                	je     46 <std.sumtype.matchImpl!(1, core.internal.hash.hashOf).matchImpl!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).matchImpl(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType))+0x46>
  28:	eb 33                	jmp    5d <std.sumtype.matchImpl!(1, core.internal.hash.hashOf).matchImpl!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).matchImpl(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType))+0x5d>
  2a:	31 c0                	xor    %eax,%eax
  2c:	48 8b e5             	mov    %rbp,%rsp
  2f:	5d                   	pop    %rbp
  30:	c3                   	ret
  31:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
  35:	be 00 01 00 00       	mov    $0x100,%esi
  3a:	31 ff                	xor    %edi,%edi
  3c:	e8 00 00 00 00       	call   41 <std.sumtype.matchImpl!(1, core.internal.hash.hashOf).matchImpl!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).matchImpl(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType))+0x41>	3d: R_X86_64_PLT32	core.internal.hash.bytesHash!(true).bytesHash(scope const(ubyte)[], ulong)-0x4
  41:	48 8b e5             	mov    %rbp,%rsp
  44:	5d                   	pop    %rbp
  45:	c3                   	ret
  46:	48 89 c7             	mov    %rax,%rdi
  49:	e8 00 00 00 00       	call   4e <std.sumtype.matchImpl!(1, core.internal.hash.hashOf).matchImpl!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).matchImpl(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType))+0x4e>	4a: R_X86_64_PLT32	core.internal.convert.toUbyte!(kernels.DomainError).toUbyte(scope return ref const(kernels.DomainError))-0x4
  4e:	48 89 c6             	mov    %rax,%rsi
  51:	31 ff                	xor    %edi,%edi
  53:	e8 00 00 00 00       	call   58 <std.sumtype.matchImpl!(1, core.internal.hash.hashOf).matchImpl!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).matchImpl(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType))+0x58>	54: R_X86_64_PLT32	core.internal.hash.fnv!().fnv(scope const(ubyte)[], ulong)-0x4
  58:	48 8b e5             	mov    %rbp,%rsp
  5b:	5d                   	pop    %rbp
  5c:	c3                   	ret
  5d:	0f 0b                	ud2
  5f:	48 8b e5             	mov    %rbp,%rsp
  62:	5d                   	pop    %rbp
  63:	c3                   	ret

Disassembly of section .text._D4core8internal4hash__T6hashOfTS7error_d__T7SuccessTS7kernels5BlockZQzZQBwFNaNbNiNfMKxSQCd__TQByTQBtZQCgmZm:

0000000000000000 <core.internal.hash.hashOf!(error_d.Success!(kernels.Block).Success).hashOf(scope ref const(error_d.Success!(kernels.Block).Success), ulong)>:
   0:	55                   	push   %rbp
   1:	48 8b ec             	mov    %rsp,%rbp
   4:	48 83 ec 10          	sub    $0x10,%rsp
   8:	48 89 7d f0          	mov    %rdi,-0x10(%rbp)
   c:	48 89 75 f8          	mov    %rsi,-0x8(%rbp)
  10:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
  14:	be 00 01 00 00       	mov    $0x100,%esi
  19:	48 8b 7d f0          	mov    -0x10(%rbp),%rdi
  1d:	e8 00 00 00 00       	call   22 <core.internal.hash.hashOf!(error_d.Success!(kernels.Block).Success).hashOf(scope ref const(error_d.Success!(kernels.Block).Success), ulong)+0x22>	1e: R_X86_64_PLT32	core.internal.hash.bytesHash!(true).bytesHash(scope const(ubyte)[], ulong)-0x4
  22:	48 8b e5             	mov    %rbp,%rsp
  25:	5d                   	pop    %rbp
  26:	c3                   	ret
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
