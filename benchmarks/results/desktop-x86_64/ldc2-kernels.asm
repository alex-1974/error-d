
/tmp/error-d-cost-wopqinc4/kernels.o:     file format elf64-x86-64


Disassembly of section .text._D7kernels7computeFNaNbNiNfkZm:

0000000000000000 <kernels.compute(uint)>:
   0:	89 f9                	mov    %edi,%ecx
   2:	48 b8 87 ca eb 85 b1 79 37 9e 	movabs $0x9e3779b185ebca87,%rax
   c:	48 0f af c1          	imul   %rcx,%rax
  10:	c1 ef 07             	shr    $0x7,%edi
  13:	48 31 f8             	xor    %rdi,%rax
  16:	c3                   	ret

Disassembly of section .text.result_small:

0000000000000000 <result_small>:
   0:	48 89 f8             	mov    %rdi,%rax
   3:	40 0f b6 fe          	movzbl %sil,%edi
   7:	89 f1                	mov    %esi,%ecx
   9:	39 d7                	cmp    %edx,%edi
   b:	73 0b                	jae    18 <result_small+0x18>
   d:	48 c1 e1 20          	shl    $0x20,%rcx
  11:	48 ff c1             	inc    %rcx
  14:	b2 02                	mov    $0x2,%dl
  16:	eb 16                	jmp    2e <result_small+0x2e>
  18:	48 ba 87 ca eb 85 b1 79 37 9e 	movabs $0x9e3779b185ebca87,%rdx
  22:	48 0f af ca          	imul   %rdx,%rcx
  26:	c1 ee 07             	shr    $0x7,%esi
  29:	48 31 f1             	xor    %rsi,%rcx
  2c:	b2 01                	mov    $0x1,%dl
  2e:	c7 40 0c 00 00 00 00 	movl   $0x0,0xc(%rax)
  35:	c7 40 09 00 00 00 00 	movl   $0x0,0x9(%rax)
  3c:	48 89 08             	mov    %rcx,(%rax)
  3f:	88 50 08             	mov    %dl,0x8(%rax)
  42:	c3                   	ret

Disassembly of section .text._D7error_d__T6ResultTmTS7kernels11DomainErrorZQBh__T7failureZQjFNaNbNiNfQBxZSQCx__TQCsTmTQCoZQDc:

0000000000000000 <error_d.Result!(ulong, kernels.DomainError).Result.failure!().failure(kernels.DomainError)>:
   0:	48 89 f8             	mov    %rdi,%rax
   3:	48 89 37             	mov    %rsi,(%rdi)
   6:	c6 47 08 02          	movb   $0x2,0x8(%rdi)
   a:	c7 47 09 00 00 00 00 	movl   $0x0,0x9(%rdi)
  11:	c7 47 0c 00 00 00 00 	movl   $0x0,0xc(%rdi)
  18:	c3                   	ret

Disassembly of section .text._D7error_d__T6ResultTmTS7kernels11DomainErrorZQBh__T7successZQjFNaNbNiNfmZSQCv__TQCqTmTQCmZQDa:

0000000000000000 <error_d.Result!(ulong, kernels.DomainError).Result.success!().success(ulong)>:
   0:	48 89 f8             	mov    %rdi,%rax
   3:	48 89 37             	mov    %rsi,(%rdi)
   6:	c6 47 08 01          	movb   $0x1,0x8(%rdi)
   a:	c7 47 09 00 00 00 00 	movl   $0x0,0x9(%rdi)
  11:	c7 47 0c 00 00 00 00 	movl   $0x0,0xc(%rdi)
  18:	c3                   	ret

Disassembly of section .text.status_out_small:

0000000000000000 <status_out_small>:
   0:	48 c7 02 00 00 00 00 	movq   $0x0,(%rdx)
   7:	48 c7 01 00 00 00 00 	movq   $0x0,(%rcx)
   e:	40 0f b6 c7          	movzbl %dil,%eax
  12:	39 f0                	cmp    %esi,%eax
  14:	72 1f                	jb     35 <status_out_small+0x35>
  16:	89 f9                	mov    %edi,%ecx
  18:	49 b8 87 ca eb 85 b1 79 37 9e 	movabs $0x9e3779b185ebca87,%r8
  22:	4c 0f af c1          	imul   %rcx,%r8
  26:	c1 ef 07             	shr    $0x7,%edi
  29:	4c 31 c7             	xor    %r8,%rdi
  2c:	48 89 3a             	mov    %rdi,(%rdx)
  2f:	39 f0                	cmp    %esi,%eax
  31:	0f 93 c0             	setae  %al
  34:	c3                   	ret
  35:	c7 01 01 00 00 00    	movl   $0x1,(%rcx)
  3b:	89 79 04             	mov    %edi,0x4(%rcx)
  3e:	39 f0                	cmp    %esi,%eax
  40:	0f 93 c0             	setae  %al
  43:	c3                   	ret

Disassembly of section .text.status_ref_small:

0000000000000000 <status_ref_small>:
   0:	40 0f b6 c7          	movzbl %dil,%eax
   4:	39 f0                	cmp    %esi,%eax
   6:	72 1f                	jb     27 <status_ref_small+0x27>
   8:	89 f9                	mov    %edi,%ecx
   a:	49 b8 87 ca eb 85 b1 79 37 9e 	movabs $0x9e3779b185ebca87,%r8
  14:	4c 0f af c1          	imul   %rcx,%r8
  18:	c1 ef 07             	shr    $0x7,%edi
  1b:	4c 31 c7             	xor    %r8,%rdi
  1e:	48 89 3a             	mov    %rdi,(%rdx)
  21:	39 f0                	cmp    %esi,%eax
  23:	0f 93 c0             	setae  %al
  26:	c3                   	ret
  27:	c7 01 01 00 00 00    	movl   $0x1,(%rcx)
  2d:	89 79 04             	mov    %edi,0x4(%rcx)
  30:	39 f0                	cmp    %esi,%eax
  32:	0f 93 c0             	setae  %al
  35:	c3                   	ret

Disassembly of section .text._D7kernels5blockFNaNbNiNfkZSQBa5Block:

0000000000000000 <kernels.block(uint)>:
   0:	48 89 f8             	mov    %rdi,%rax
   3:	89 f2                	mov    %esi,%edx
   5:	48 b9 87 ca eb 85 b1 79 37 9e 	movabs $0x9e3779b185ebca87,%rcx
   f:	48 0f af d1          	imul   %rcx,%rdx
  13:	89 f7                	mov    %esi,%edi
  15:	c1 ef 07             	shr    $0x7,%edi
  18:	48 31 d7             	xor    %rdx,%rdi
  1b:	48 89 38             	mov    %rdi,(%rax)
  1e:	8d 56 01             	lea    0x1(%rsi),%edx
  21:	48 89 d7             	mov    %rdx,%rdi
  24:	48 0f af f9          	imul   %rcx,%rdi
  28:	c1 ea 07             	shr    $0x7,%edx
  2b:	48 31 fa             	xor    %rdi,%rdx
  2e:	48 89 50 08          	mov    %rdx,0x8(%rax)
  32:	8d 56 02             	lea    0x2(%rsi),%edx
  35:	48 89 d7             	mov    %rdx,%rdi
  38:	48 0f af f9          	imul   %rcx,%rdi
  3c:	c1 ea 07             	shr    $0x7,%edx
  3f:	48 31 fa             	xor    %rdi,%rdx
  42:	48 89 50 10          	mov    %rdx,0x10(%rax)
  46:	8d 56 03             	lea    0x3(%rsi),%edx
  49:	48 89 d7             	mov    %rdx,%rdi
  4c:	48 0f af f9          	imul   %rcx,%rdi
  50:	c1 ea 07             	shr    $0x7,%edx
  53:	48 31 fa             	xor    %rdi,%rdx
  56:	48 89 50 18          	mov    %rdx,0x18(%rax)
  5a:	8d 56 04             	lea    0x4(%rsi),%edx
  5d:	48 89 d7             	mov    %rdx,%rdi
  60:	48 0f af f9          	imul   %rcx,%rdi
  64:	c1 ea 07             	shr    $0x7,%edx
  67:	48 31 fa             	xor    %rdi,%rdx
  6a:	48 89 50 20          	mov    %rdx,0x20(%rax)
  6e:	8d 56 05             	lea    0x5(%rsi),%edx
  71:	48 89 d7             	mov    %rdx,%rdi
  74:	48 0f af f9          	imul   %rcx,%rdi
  78:	c1 ea 07             	shr    $0x7,%edx
  7b:	48 31 fa             	xor    %rdi,%rdx
  7e:	48 89 50 28          	mov    %rdx,0x28(%rax)
  82:	8d 56 06             	lea    0x6(%rsi),%edx
  85:	48 89 d7             	mov    %rdx,%rdi
  88:	48 0f af f9          	imul   %rcx,%rdi
  8c:	c1 ea 07             	shr    $0x7,%edx
  8f:	48 31 fa             	xor    %rdi,%rdx
  92:	48 89 50 30          	mov    %rdx,0x30(%rax)
  96:	8d 56 07             	lea    0x7(%rsi),%edx
  99:	48 89 d7             	mov    %rdx,%rdi
  9c:	48 0f af f9          	imul   %rcx,%rdi
  a0:	c1 ea 07             	shr    $0x7,%edx
  a3:	48 31 fa             	xor    %rdi,%rdx
  a6:	48 89 50 38          	mov    %rdx,0x38(%rax)
  aa:	8d 56 08             	lea    0x8(%rsi),%edx
  ad:	48 89 d7             	mov    %rdx,%rdi
  b0:	48 0f af f9          	imul   %rcx,%rdi
  b4:	c1 ea 07             	shr    $0x7,%edx
  b7:	48 31 fa             	xor    %rdi,%rdx
  ba:	48 89 50 40          	mov    %rdx,0x40(%rax)
  be:	8d 56 09             	lea    0x9(%rsi),%edx
  c1:	48 89 d7             	mov    %rdx,%rdi
  c4:	48 0f af f9          	imul   %rcx,%rdi
  c8:	c1 ea 07             	shr    $0x7,%edx
  cb:	48 31 fa             	xor    %rdi,%rdx
  ce:	48 89 50 48          	mov    %rdx,0x48(%rax)
  d2:	8d 56 0a             	lea    0xa(%rsi),%edx
  d5:	48 89 d7             	mov    %rdx,%rdi
  d8:	48 0f af f9          	imul   %rcx,%rdi
  dc:	c1 ea 07             	shr    $0x7,%edx
  df:	48 31 fa             	xor    %rdi,%rdx
  e2:	48 89 50 50          	mov    %rdx,0x50(%rax)
  e6:	8d 56 0b             	lea    0xb(%rsi),%edx
  e9:	48 89 d7             	mov    %rdx,%rdi
  ec:	48 0f af f9          	imul   %rcx,%rdi
  f0:	c1 ea 07             	shr    $0x7,%edx
  f3:	48 31 fa             	xor    %rdi,%rdx
  f6:	48 89 50 58          	mov    %rdx,0x58(%rax)
  fa:	8d 56 0c             	lea    0xc(%rsi),%edx
  fd:	48 89 d7             	mov    %rdx,%rdi
 100:	48 0f af f9          	imul   %rcx,%rdi
 104:	c1 ea 07             	shr    $0x7,%edx
 107:	48 31 fa             	xor    %rdi,%rdx
 10a:	48 89 50 60          	mov    %rdx,0x60(%rax)
 10e:	8d 56 0d             	lea    0xd(%rsi),%edx
 111:	48 89 d7             	mov    %rdx,%rdi
 114:	48 0f af f9          	imul   %rcx,%rdi
 118:	c1 ea 07             	shr    $0x7,%edx
 11b:	48 31 fa             	xor    %rdi,%rdx
 11e:	48 89 50 68          	mov    %rdx,0x68(%rax)
 122:	8d 56 0e             	lea    0xe(%rsi),%edx
 125:	48 89 d7             	mov    %rdx,%rdi
 128:	48 0f af f9          	imul   %rcx,%rdi
 12c:	c1 ea 07             	shr    $0x7,%edx
 12f:	48 31 fa             	xor    %rdi,%rdx
 132:	48 89 50 70          	mov    %rdx,0x70(%rax)
 136:	8d 56 0f             	lea    0xf(%rsi),%edx
 139:	48 89 d7             	mov    %rdx,%rdi
 13c:	48 0f af f9          	imul   %rcx,%rdi
 140:	c1 ea 07             	shr    $0x7,%edx
 143:	48 31 fa             	xor    %rdi,%rdx
 146:	48 89 50 78          	mov    %rdx,0x78(%rax)
 14a:	8d 56 10             	lea    0x10(%rsi),%edx
 14d:	48 89 d7             	mov    %rdx,%rdi
 150:	48 0f af f9          	imul   %rcx,%rdi
 154:	c1 ea 07             	shr    $0x7,%edx
 157:	48 31 fa             	xor    %rdi,%rdx
 15a:	48 89 90 80 00 00 00 	mov    %rdx,0x80(%rax)
 161:	8d 56 11             	lea    0x11(%rsi),%edx
 164:	48 89 d7             	mov    %rdx,%rdi
 167:	48 0f af f9          	imul   %rcx,%rdi
 16b:	c1 ea 07             	shr    $0x7,%edx
 16e:	48 31 fa             	xor    %rdi,%rdx
 171:	48 89 90 88 00 00 00 	mov    %rdx,0x88(%rax)
 178:	8d 56 12             	lea    0x12(%rsi),%edx
 17b:	48 89 d7             	mov    %rdx,%rdi
 17e:	48 0f af f9          	imul   %rcx,%rdi
 182:	c1 ea 07             	shr    $0x7,%edx
 185:	48 31 fa             	xor    %rdi,%rdx
 188:	48 89 90 90 00 00 00 	mov    %rdx,0x90(%rax)
 18f:	8d 56 13             	lea    0x13(%rsi),%edx
 192:	48 89 d7             	mov    %rdx,%rdi
 195:	48 0f af f9          	imul   %rcx,%rdi
 199:	c1 ea 07             	shr    $0x7,%edx
 19c:	48 31 fa             	xor    %rdi,%rdx
 19f:	48 89 90 98 00 00 00 	mov    %rdx,0x98(%rax)
 1a6:	8d 56 14             	lea    0x14(%rsi),%edx
 1a9:	48 89 d7             	mov    %rdx,%rdi
 1ac:	48 0f af f9          	imul   %rcx,%rdi
 1b0:	c1 ea 07             	shr    $0x7,%edx
 1b3:	48 31 fa             	xor    %rdi,%rdx
 1b6:	48 89 90 a0 00 00 00 	mov    %rdx,0xa0(%rax)
 1bd:	8d 56 15             	lea    0x15(%rsi),%edx
 1c0:	48 89 d7             	mov    %rdx,%rdi
 1c3:	48 0f af f9          	imul   %rcx,%rdi
 1c7:	c1 ea 07             	shr    $0x7,%edx
 1ca:	48 31 fa             	xor    %rdi,%rdx
 1cd:	48 89 90 a8 00 00 00 	mov    %rdx,0xa8(%rax)
 1d4:	8d 56 16             	lea    0x16(%rsi),%edx
 1d7:	48 89 d7             	mov    %rdx,%rdi
 1da:	48 0f af f9          	imul   %rcx,%rdi
 1de:	c1 ea 07             	shr    $0x7,%edx
 1e1:	48 31 fa             	xor    %rdi,%rdx
 1e4:	48 89 90 b0 00 00 00 	mov    %rdx,0xb0(%rax)
 1eb:	8d 56 17             	lea    0x17(%rsi),%edx
 1ee:	48 89 d7             	mov    %rdx,%rdi
 1f1:	48 0f af f9          	imul   %rcx,%rdi
 1f5:	c1 ea 07             	shr    $0x7,%edx
 1f8:	48 31 fa             	xor    %rdi,%rdx
 1fb:	48 89 90 b8 00 00 00 	mov    %rdx,0xb8(%rax)
 202:	8d 56 18             	lea    0x18(%rsi),%edx
 205:	48 89 d7             	mov    %rdx,%rdi
 208:	48 0f af f9          	imul   %rcx,%rdi
 20c:	c1 ea 07             	shr    $0x7,%edx
 20f:	48 31 fa             	xor    %rdi,%rdx
 212:	48 89 90 c0 00 00 00 	mov    %rdx,0xc0(%rax)
 219:	8d 56 19             	lea    0x19(%rsi),%edx
 21c:	48 89 d7             	mov    %rdx,%rdi
 21f:	48 0f af f9          	imul   %rcx,%rdi
 223:	c1 ea 07             	shr    $0x7,%edx
 226:	48 31 fa             	xor    %rdi,%rdx
 229:	48 89 90 c8 00 00 00 	mov    %rdx,0xc8(%rax)
 230:	8d 56 1a             	lea    0x1a(%rsi),%edx
 233:	48 89 d7             	mov    %rdx,%rdi
 236:	48 0f af f9          	imul   %rcx,%rdi
 23a:	c1 ea 07             	shr    $0x7,%edx
 23d:	48 31 fa             	xor    %rdi,%rdx
 240:	48 89 90 d0 00 00 00 	mov    %rdx,0xd0(%rax)
 247:	8d 56 1b             	lea    0x1b(%rsi),%edx
 24a:	48 89 d7             	mov    %rdx,%rdi
 24d:	48 0f af f9          	imul   %rcx,%rdi
 251:	c1 ea 07             	shr    $0x7,%edx
 254:	48 31 fa             	xor    %rdi,%rdx
 257:	48 89 90 d8 00 00 00 	mov    %rdx,0xd8(%rax)
 25e:	8d 56 1c             	lea    0x1c(%rsi),%edx
 261:	48 89 d7             	mov    %rdx,%rdi
 264:	48 0f af f9          	imul   %rcx,%rdi
 268:	c1 ea 07             	shr    $0x7,%edx
 26b:	48 31 fa             	xor    %rdi,%rdx
 26e:	48 89 90 e0 00 00 00 	mov    %rdx,0xe0(%rax)
 275:	8d 56 1d             	lea    0x1d(%rsi),%edx
 278:	48 89 d7             	mov    %rdx,%rdi
 27b:	48 0f af f9          	imul   %rcx,%rdi
 27f:	c1 ea 07             	shr    $0x7,%edx
 282:	48 31 fa             	xor    %rdi,%rdx
 285:	48 89 90 e8 00 00 00 	mov    %rdx,0xe8(%rax)
 28c:	8d 56 1e             	lea    0x1e(%rsi),%edx
 28f:	48 89 d7             	mov    %rdx,%rdi
 292:	48 0f af f9          	imul   %rcx,%rdi
 296:	c1 ea 07             	shr    $0x7,%edx
 299:	48 31 fa             	xor    %rdi,%rdx
 29c:	48 89 90 f0 00 00 00 	mov    %rdx,0xf0(%rax)
 2a3:	83 c6 1f             	add    $0x1f,%esi
 2a6:	48 0f af ce          	imul   %rsi,%rcx
 2aa:	c1 ee 07             	shr    $0x7,%esi
 2ad:	48 31 ce             	xor    %rcx,%rsi
 2b0:	48 89 b0 f8 00 00 00 	mov    %rsi,0xf8(%rax)
 2b7:	c3                   	ret

Disassembly of section .text.result_large:

0000000000000000 <result_large>:
   0:	41 56                	push   %r14
   2:	53                   	push   %rbx
   3:	48 81 ec 08 01 00 00 	sub    $0x108,%rsp
   a:	48 89 fb             	mov    %rdi,%rbx
   d:	40 0f b6 c6          	movzbl %sil,%eax
  11:	39 d0                	cmp    %edx,%eax
  13:	0f 83 81 00 00 00    	jae    9a <result_large+0x9a>
  19:	48 c1 e6 20          	shl    $0x20,%rsi
  1d:	48 ff c6             	inc    %rsi
  20:	48 89 33             	mov    %rsi,(%rbx)
  23:	0f 57 c0             	xorps  %xmm0,%xmm0
  26:	0f 11 43 08          	movups %xmm0,0x8(%rbx)
  2a:	0f 11 43 18          	movups %xmm0,0x18(%rbx)
  2e:	0f 11 43 28          	movups %xmm0,0x28(%rbx)
  32:	0f 11 43 38          	movups %xmm0,0x38(%rbx)
  36:	0f 11 43 48          	movups %xmm0,0x48(%rbx)
  3a:	0f 11 43 58          	movups %xmm0,0x58(%rbx)
  3e:	0f 11 43 68          	movups %xmm0,0x68(%rbx)
  42:	0f 11 43 78          	movups %xmm0,0x78(%rbx)
  46:	0f 11 83 88 00 00 00 	movups %xmm0,0x88(%rbx)
  4d:	0f 11 83 98 00 00 00 	movups %xmm0,0x98(%rbx)
  54:	0f 11 83 a8 00 00 00 	movups %xmm0,0xa8(%rbx)
  5b:	0f 11 83 b8 00 00 00 	movups %xmm0,0xb8(%rbx)
  62:	0f 11 83 c8 00 00 00 	movups %xmm0,0xc8(%rbx)
  69:	0f 11 83 d8 00 00 00 	movups %xmm0,0xd8(%rbx)
  70:	0f 11 83 e8 00 00 00 	movups %xmm0,0xe8(%rbx)
  77:	48 c7 83 f8 00 00 00 00 00 00 00 	movq   $0x0,0xf8(%rbx)
  82:	c7 83 01 01 00 00 00 00 00 00 	movl   $0x0,0x101(%rbx)
  8c:	c7 83 04 01 00 00 00 00 00 00 	movl   $0x0,0x104(%rbx)
  96:	b0 02                	mov    $0x2,%al
  98:	eb 33                	jmp    cd <result_large+0xcd>
  9a:	4c 8d 74 24 08       	lea    0x8(%rsp),%r14
  9f:	4c 89 f7             	mov    %r14,%rdi
  a2:	e8 00 00 00 00       	call   a7 <result_large+0xa7>	a3: R_X86_64_PLT32	kernels.block(uint)-0x4
  a7:	ba 00 01 00 00       	mov    $0x100,%edx
  ac:	48 89 df             	mov    %rbx,%rdi
  af:	4c 89 f6             	mov    %r14,%rsi
  b2:	e8 00 00 00 00       	call   b7 <result_large+0xb7>	b3: R_X86_64_PLT32	memcpy-0x4
  b7:	c7 83 01 01 00 00 00 00 00 00 	movl   $0x0,0x101(%rbx)
  c1:	c7 83 04 01 00 00 00 00 00 00 	movl   $0x0,0x104(%rbx)
  cb:	b0 01                	mov    $0x1,%al
  cd:	88 83 00 01 00 00    	mov    %al,0x100(%rbx)
  d3:	48 89 d8             	mov    %rbx,%rax
  d6:	48 81 c4 08 01 00 00 	add    $0x108,%rsp
  dd:	5b                   	pop    %rbx
  de:	41 5e                	pop    %r14
  e0:	c3                   	ret

Disassembly of section .text._D7error_d__T6ResultTS7kernels5BlockTSQq11DomainErrorZQBp__T7failureZQjFNaNbNiNfQBrZSQDf__TQDaTQCwTQCkZQDm:

0000000000000000 <error_d.Result!(kernels.Block, kernels.DomainError).Result.failure!().failure(kernels.DomainError)>:
   0:	48 89 f8             	mov    %rdi,%rax
   3:	48 89 37             	mov    %rsi,(%rdi)
   6:	0f 57 c0             	xorps  %xmm0,%xmm0
   9:	0f 11 47 08          	movups %xmm0,0x8(%rdi)
   d:	0f 11 47 18          	movups %xmm0,0x18(%rdi)
  11:	0f 11 47 28          	movups %xmm0,0x28(%rdi)
  15:	0f 11 47 38          	movups %xmm0,0x38(%rdi)
  19:	0f 11 47 48          	movups %xmm0,0x48(%rdi)
  1d:	0f 11 47 58          	movups %xmm0,0x58(%rdi)
  21:	0f 11 47 68          	movups %xmm0,0x68(%rdi)
  25:	0f 11 47 78          	movups %xmm0,0x78(%rdi)
  29:	0f 11 87 88 00 00 00 	movups %xmm0,0x88(%rdi)
  30:	0f 11 87 98 00 00 00 	movups %xmm0,0x98(%rdi)
  37:	0f 11 87 a8 00 00 00 	movups %xmm0,0xa8(%rdi)
  3e:	0f 11 87 b8 00 00 00 	movups %xmm0,0xb8(%rdi)
  45:	0f 11 87 c8 00 00 00 	movups %xmm0,0xc8(%rdi)
  4c:	0f 11 87 d8 00 00 00 	movups %xmm0,0xd8(%rdi)
  53:	0f 11 87 e8 00 00 00 	movups %xmm0,0xe8(%rdi)
  5a:	48 c7 87 f8 00 00 00 00 00 00 00 	movq   $0x0,0xf8(%rdi)
  65:	c6 87 00 01 00 00 02 	movb   $0x2,0x100(%rdi)
  6c:	c7 87 01 01 00 00 00 00 00 00 	movl   $0x0,0x101(%rdi)
  76:	c7 87 04 01 00 00 00 00 00 00 	movl   $0x0,0x104(%rdi)
  80:	c3                   	ret

Disassembly of section .text._D7error_d__T6ResultTS7kernels5BlockTSQq11DomainErrorZQBp__T7successZQjFNaNbNiNfQChZSQDf__TQDaTQCwTQCkZQDm:

0000000000000000 <error_d.Result!(kernels.Block, kernels.DomainError).Result.success!().success(kernels.Block)>:
   0:	53                   	push   %rbx
   1:	48 89 fb             	mov    %rdi,%rbx
   4:	48 8d 74 24 10       	lea    0x10(%rsp),%rsi
   9:	ba 00 01 00 00       	mov    $0x100,%edx
   e:	e8 00 00 00 00       	call   13 <error_d.Result!(kernels.Block, kernels.DomainError).Result.success!().success(kernels.Block)+0x13>	f: R_X86_64_PLT32	memcpy-0x4
  13:	c6 83 00 01 00 00 01 	movb   $0x1,0x100(%rbx)
  1a:	c7 83 01 01 00 00 00 00 00 00 	movl   $0x0,0x101(%rbx)
  24:	c7 83 04 01 00 00 00 00 00 00 	movl   $0x0,0x104(%rbx)
  2e:	48 89 d8             	mov    %rbx,%rax
  31:	5b                   	pop    %rbx
  32:	c3                   	ret

Disassembly of section .text.status_out_large:

0000000000000000 <status_out_large>:
   0:	55                   	push   %rbp
   1:	41 57                	push   %r15
   3:	41 56                	push   %r14
   5:	53                   	push   %rbx
   6:	48 81 ec 08 01 00 00 	sub    $0x108,%rsp
   d:	89 f3                	mov    %esi,%ebx
   f:	89 fe                	mov    %edi,%esi
  11:	0f 57 c0             	xorps  %xmm0,%xmm0
  14:	0f 11 82 f0 00 00 00 	movups %xmm0,0xf0(%rdx)
  1b:	0f 11 82 e0 00 00 00 	movups %xmm0,0xe0(%rdx)
  22:	0f 11 82 d0 00 00 00 	movups %xmm0,0xd0(%rdx)
  29:	0f 11 82 c0 00 00 00 	movups %xmm0,0xc0(%rdx)
  30:	0f 11 82 b0 00 00 00 	movups %xmm0,0xb0(%rdx)
  37:	0f 11 82 a0 00 00 00 	movups %xmm0,0xa0(%rdx)
  3e:	0f 11 82 90 00 00 00 	movups %xmm0,0x90(%rdx)
  45:	0f 11 82 80 00 00 00 	movups %xmm0,0x80(%rdx)
  4c:	0f 11 42 70          	movups %xmm0,0x70(%rdx)
  50:	0f 11 42 60          	movups %xmm0,0x60(%rdx)
  54:	0f 11 42 50          	movups %xmm0,0x50(%rdx)
  58:	0f 11 42 40          	movups %xmm0,0x40(%rdx)
  5c:	0f 11 42 30          	movups %xmm0,0x30(%rdx)
  60:	0f 11 42 20          	movups %xmm0,0x20(%rdx)
  64:	0f 11 42 10          	movups %xmm0,0x10(%rdx)
  68:	0f 11 02             	movups %xmm0,(%rdx)
  6b:	48 c7 01 00 00 00 00 	movq   $0x0,(%rcx)
  72:	40 0f b6 ee          	movzbl %sil,%ebp
  76:	39 dd                	cmp    %ebx,%ebp
  78:	72 22                	jb     9c <status_out_large+0x9c>
  7a:	49 89 d6             	mov    %rdx,%r14
  7d:	4c 8d 7c 24 08       	lea    0x8(%rsp),%r15
  82:	4c 89 ff             	mov    %r15,%rdi
  85:	e8 00 00 00 00       	call   8a <status_out_large+0x8a>	86: R_X86_64_PLT32	kernels.block(uint)-0x4
  8a:	ba 00 01 00 00       	mov    $0x100,%edx
  8f:	4c 89 f7             	mov    %r14,%rdi
  92:	4c 89 fe             	mov    %r15,%rsi
  95:	e8 00 00 00 00       	call   9a <status_out_large+0x9a>	96: R_X86_64_PLT32	memcpy-0x4
  9a:	eb 09                	jmp    a5 <status_out_large+0xa5>
  9c:	c7 01 01 00 00 00    	movl   $0x1,(%rcx)
  a2:	89 71 04             	mov    %esi,0x4(%rcx)
  a5:	39 dd                	cmp    %ebx,%ebp
  a7:	0f 93 c0             	setae  %al
  aa:	48 81 c4 08 01 00 00 	add    $0x108,%rsp
  b1:	5b                   	pop    %rbx
  b2:	41 5e                	pop    %r14
  b4:	41 5f                	pop    %r15
  b6:	5d                   	pop    %rbp
  b7:	c3                   	ret

Disassembly of section .text.status_ref_large:

0000000000000000 <status_ref_large>:
   0:	55                   	push   %rbp
   1:	41 57                	push   %r15
   3:	41 56                	push   %r14
   5:	53                   	push   %rbx
   6:	48 81 ec 08 01 00 00 	sub    $0x108,%rsp
   d:	89 f3                	mov    %esi,%ebx
   f:	89 fe                	mov    %edi,%esi
  11:	40 0f b6 ee          	movzbl %sil,%ebp
  15:	39 dd                	cmp    %ebx,%ebp
  17:	72 22                	jb     3b <status_ref_large+0x3b>
  19:	49 89 d6             	mov    %rdx,%r14
  1c:	4c 8d 7c 24 08       	lea    0x8(%rsp),%r15
  21:	4c 89 ff             	mov    %r15,%rdi
  24:	e8 00 00 00 00       	call   29 <status_ref_large+0x29>	25: R_X86_64_PLT32	kernels.block(uint)-0x4
  29:	ba 00 01 00 00       	mov    $0x100,%edx
  2e:	4c 89 f7             	mov    %r14,%rdi
  31:	4c 89 fe             	mov    %r15,%rsi
  34:	e8 00 00 00 00       	call   39 <status_ref_large+0x39>	35: R_X86_64_PLT32	memcpy-0x4
  39:	eb 09                	jmp    44 <status_ref_large+0x44>
  3b:	c7 01 01 00 00 00    	movl   $0x1,(%rcx)
  41:	89 71 04             	mov    %esi,0x4(%rcx)
  44:	39 dd                	cmp    %ebx,%ebp
  46:	0f 93 c0             	setae  %al
  49:	48 81 c4 08 01 00 00 	add    $0x108,%rsp
  50:	5b                   	pop    %rbx
  51:	41 5e                	pop    %r14
  53:	41 5f                	pop    %r15
  55:	5d                   	pop    %rbp
  56:	c3                   	ret

Disassembly of section .text._D7kernels11localResultFNaNbNiNfkkZS7error_d__T6ResultTmTSQCe11DomainErrorZQBc:

0000000000000000 <kernels.localResult(uint, uint)>:
   0:	48 89 f8             	mov    %rdi,%rax
   3:	40 0f b6 fe          	movzbl %sil,%edi
   7:	89 f1                	mov    %esi,%ecx
   9:	39 d7                	cmp    %edx,%edi
   b:	73 0b                	jae    18 <kernels.localResult(uint, uint)+0x18>
   d:	48 c1 e1 20          	shl    $0x20,%rcx
  11:	48 ff c1             	inc    %rcx
  14:	b2 02                	mov    $0x2,%dl
  16:	eb 16                	jmp    2e <kernels.localResult(uint, uint)+0x2e>
  18:	48 ba 87 ca eb 85 b1 79 37 9e 	movabs $0x9e3779b185ebca87,%rdx
  22:	48 0f af ca          	imul   %rdx,%rcx
  26:	c1 ee 07             	shr    $0x7,%esi
  29:	48 31 f1             	xor    %rsi,%rcx
  2c:	b2 01                	mov    $0x1,%dl
  2e:	c7 40 0c 00 00 00 00 	movl   $0x0,0xc(%rax)
  35:	c7 40 09 00 00 00 00 	movl   $0x0,0x9(%rax)
  3c:	48 89 08             	mov    %rcx,(%rax)
  3f:	88 50 08             	mov    %dl,0x8(%rax)
  42:	c3                   	ret

Disassembly of section .text.pipeline_result:

0000000000000000 <pipeline_result>:
   0:	53                   	push   %rbx
   1:	48 83 ec 20          	sub    $0x20,%rsp
   5:	48 89 fb             	mov    %rdi,%rbx
   8:	89 74 24 0c          	mov    %esi,0xc(%rsp)
   c:	40 0f b6 ce          	movzbl %sil,%ecx
  10:	89 f0                	mov    %esi,%eax
  12:	39 d1                	cmp    %edx,%ecx
  14:	73 25                	jae    3b <pipeline_result+0x3b>
  16:	48 c1 e0 20          	shl    $0x20,%rax
  1a:	48 ff c0             	inc    %rax
  1d:	48 89 03             	mov    %rax,(%rbx)
  20:	c6 43 08 02          	movb   $0x2,0x8(%rbx)
  24:	c7 43 09 00 00 00 00 	movl   $0x0,0x9(%rbx)
  2b:	c7 43 0c 00 00 00 00 	movl   $0x0,0xc(%rbx)
  32:	48 89 d8             	mov    %rbx,%rax
  35:	48 83 c4 20          	add    $0x20,%rsp
  39:	5b                   	pop    %rbx
  3a:	c3                   	ret
  3b:	48 b9 87 ca eb 85 b1 79 37 9e 	movabs $0x9e3779b185ebca87,%rcx
  45:	48 0f af c1          	imul   %rcx,%rax
  49:	c1 ee 07             	shr    $0x7,%esi
  4c:	48 31 c6             	xor    %rax,%rsi
  4f:	48 89 f7             	mov    %rsi,%rdi
  52:	e8 00 00 00 00       	call   57 <pipeline_result+0x57>	53: R_X86_64_PLT32	kernels.pipeline_result(uint, uint).__lambda_L54_C14(ulong)-0x4
  57:	48 8d 7c 24 10       	lea    0x10(%rsp),%rdi
  5c:	48 8d 74 24 0c       	lea    0xc(%rsp),%rsi
  61:	48 89 c2             	mov    %rax,%rdx
  64:	e8 00 00 00 00       	call   69 <pipeline_result+0x69>	65: R_X86_64_PLT32	kernels.pipeline_result(uint, uint).__lambda_L55_C18(ulong)-0x4
  69:	0f 10 44 24 10       	movups 0x10(%rsp),%xmm0
  6e:	0f 11 03             	movups %xmm0,(%rbx)
  71:	48 89 d8             	mov    %rbx,%rax
  74:	48 83 c4 20          	add    $0x20,%rsp
  78:	5b                   	pop    %rbx
  79:	c3                   	ret

Disassembly of section .text._D7error_d__T6ResultTmTS7kernels11DomainErrorZQBh__T3mapTPFNaNbNiNfmZmTSQCs__TQCnTmTQCjZQCxZQBoMFNaNbNiNfMQBxZQBn:

0000000000000000 <error_d.Result!(ulong, kernels.DomainError).Result.map!(ulong(ulong) pure nothrow @nogc @safe function, error_d.Result!(ulong, kernels.DomainError).Result).map(scope ulong(ulong) pure nothrow @nogc @safe function)>:
   0:	0f b6 46 08          	movzbl 0x8(%rsi),%eax
   4:	85 c0                	test   %eax,%eax
   6:	74 4c                	je     54 <error_d.Result!(ulong, kernels.DomainError).Result.map!(ulong(ulong) pure nothrow @nogc @safe function, error_d.Result!(ulong, kernels.DomainError).Result).map(scope ulong(ulong) pure nothrow @nogc @safe function)+0x54>
   8:	83 f8 01             	cmp    $0x1,%eax
   b:	74 21                	je     2e <error_d.Result!(ulong, kernels.DomainError).Result.map!(ulong(ulong) pure nothrow @nogc @safe function, error_d.Result!(ulong, kernels.DomainError).Result).map(scope ulong(ulong) pure nothrow @nogc @safe function)+0x2e>
   d:	83 f8 02             	cmp    $0x2,%eax
  10:	75 4c                	jne    5e <error_d.Result!(ulong, kernels.DomainError).Result.map!(ulong(ulong) pure nothrow @nogc @safe function, error_d.Result!(ulong, kernels.DomainError).Result).map(scope ulong(ulong) pure nothrow @nogc @safe function)+0x5e>
  12:	48 8b 06             	mov    (%rsi),%rax
  15:	48 89 07             	mov    %rax,(%rdi)
  18:	c6 47 08 02          	movb   $0x2,0x8(%rdi)
  1c:	c7 47 09 00 00 00 00 	movl   $0x0,0x9(%rdi)
  23:	c7 47 0c 00 00 00 00 	movl   $0x0,0xc(%rdi)
  2a:	48 89 f8             	mov    %rdi,%rax
  2d:	c3                   	ret
  2e:	53                   	push   %rbx
  2f:	48 8b 06             	mov    (%rsi),%rax
  32:	48 89 fb             	mov    %rdi,%rbx
  35:	48 89 c7             	mov    %rax,%rdi
  38:	ff d2                	call   *%rdx
  3a:	48 89 03             	mov    %rax,(%rbx)
  3d:	c6 43 08 01          	movb   $0x1,0x8(%rbx)
  41:	c7 43 09 00 00 00 00 	movl   $0x0,0x9(%rbx)
  48:	c7 43 0c 00 00 00 00 	movl   $0x0,0xc(%rbx)
  4f:	48 89 d8             	mov    %rbx,%rax
  52:	5b                   	pop    %rbx
  53:	c3                   	ret
  54:	0f 57 c0             	xorps  %xmm0,%xmm0
  57:	0f 11 07             	movups %xmm0,(%rdi)
  5a:	48 89 f8             	mov    %rdi,%rax
  5d:	c3                   	ret
  5e:	0f 0b                	ud2

Disassembly of section .text._D7kernels15pipeline_resultUNaNbNiNfkkZ16__lambda_L54_C14FNaNbNiNfmZm:

0000000000000000 <kernels.pipeline_result(uint, uint).__lambda_L54_C14(ulong)>:
   0:	48 b8 f0 de bc 9a 78 56 34 12 	movabs $0x123456789abcdef0,%rax
   a:	48 31 f8             	xor    %rdi,%rax
   d:	c3                   	ret

Disassembly of section .text._D7error_d__T6ResultTmTS7kernels11DomainErrorZQBh__T7andThenTDFNaNbNiNfmZSQCu__TQCpTmTQClZQCzTQvZQBtMFNaNbNiNfMQByZQBq:

0000000000000000 <error_d.Result!(ulong, kernels.DomainError).Result.andThen!(error_d.Result!(ulong, kernels.DomainError).Result(ulong) pure nothrow @nogc @safe delegate, error_d.Result!(ulong, kernels.DomainError).Result).andThen(scope error_d.Result!(ulong, kernels.DomainError).Result(ulong) pure nothrow @nogc @safe delegate)>:
   0:	0f b6 46 08          	movzbl 0x8(%rsi),%eax
   4:	85 c0                	test   %eax,%eax
   6:	74 4f                	je     57 <error_d.Result!(ulong, kernels.DomainError).Result.andThen!(error_d.Result!(ulong, kernels.DomainError).Result(ulong) pure nothrow @nogc @safe delegate, error_d.Result!(ulong, kernels.DomainError).Result).andThen(scope error_d.Result!(ulong, kernels.DomainError).Result(ulong) pure nothrow @nogc @safe delegate)+0x57>
   8:	83 f8 01             	cmp    $0x1,%eax
   b:	74 21                	je     2e <error_d.Result!(ulong, kernels.DomainError).Result.andThen!(error_d.Result!(ulong, kernels.DomainError).Result(ulong) pure nothrow @nogc @safe delegate, error_d.Result!(ulong, kernels.DomainError).Result).andThen(scope error_d.Result!(ulong, kernels.DomainError).Result(ulong) pure nothrow @nogc @safe delegate)+0x2e>
   d:	83 f8 02             	cmp    $0x2,%eax
  10:	75 4f                	jne    61 <error_d.Result!(ulong, kernels.DomainError).Result.andThen!(error_d.Result!(ulong, kernels.DomainError).Result(ulong) pure nothrow @nogc @safe delegate, error_d.Result!(ulong, kernels.DomainError).Result).andThen(scope error_d.Result!(ulong, kernels.DomainError).Result(ulong) pure nothrow @nogc @safe delegate)+0x61>
  12:	48 8b 06             	mov    (%rsi),%rax
  15:	48 89 07             	mov    %rax,(%rdi)
  18:	c6 47 08 02          	movb   $0x2,0x8(%rdi)
  1c:	c7 47 09 00 00 00 00 	movl   $0x0,0x9(%rdi)
  23:	c7 47 0c 00 00 00 00 	movl   $0x0,0xc(%rdi)
  2a:	48 89 f8             	mov    %rdi,%rax
  2d:	c3                   	ret
  2e:	53                   	push   %rbx
  2f:	48 83 ec 10          	sub    $0x10,%rsp
  33:	48 8b 06             	mov    (%rsi),%rax
  36:	48 89 e6             	mov    %rsp,%rsi
  39:	48 89 fb             	mov    %rdi,%rbx
  3c:	48 89 f7             	mov    %rsi,%rdi
  3f:	48 89 d6             	mov    %rdx,%rsi
  42:	48 89 c2             	mov    %rax,%rdx
  45:	ff d1                	call   *%rcx
  47:	0f 10 04 24          	movups (%rsp),%xmm0
  4b:	0f 11 03             	movups %xmm0,(%rbx)
  4e:	48 89 d8             	mov    %rbx,%rax
  51:	48 83 c4 10          	add    $0x10,%rsp
  55:	5b                   	pop    %rbx
  56:	c3                   	ret
  57:	0f 57 c0             	xorps  %xmm0,%xmm0
  5a:	0f 11 07             	movups %xmm0,(%rdi)
  5d:	48 89 f8             	mov    %rdi,%rax
  60:	c3                   	ret
  61:	0f 0b                	ud2

Disassembly of section .text._D7kernels15pipeline_resultUNaNbNiNfkkZ16__lambda_L55_C18MFNaNbNiNfmZS7error_d__T6ResultTmTSQDm11DomainErrorZQBc:

0000000000000000 <kernels.pipeline_result(uint, uint).__lambda_L55_C18(ulong)>:
   0:	48 89 f8             	mov    %rdi,%rax
   3:	f6 c2 0f             	test   $0xf,%dl
   6:	74 1a                	je     22 <kernels.pipeline_result(uint, uint).__lambda_L55_C18(ulong)+0x22>
   8:	48 8d 14 52          	lea    (%rdx,%rdx,2),%rdx
   c:	48 8d 4c 24 e9       	lea    -0x17(%rsp),%rcx
  11:	48 89 54 24 e0       	mov    %rdx,-0x20(%rsp)
  16:	c6 44 24 e8 01       	movb   $0x1,-0x18(%rsp)
  1b:	48 8d 54 24 e0       	lea    -0x20(%rsp),%rdx
  20:	eb 1e                	jmp    40 <kernels.pipeline_result(uint, uint).__lambda_L55_C18(ulong)+0x40>
  22:	8b 16                	mov    (%rsi),%edx
  24:	48 c1 e2 20          	shl    $0x20,%rdx
  28:	48 83 ca 02          	or     $0x2,%rdx
  2c:	48 8d 4c 24 f9       	lea    -0x7(%rsp),%rcx
  31:	48 89 54 24 f0       	mov    %rdx,-0x10(%rsp)
  36:	c6 44 24 f8 02       	movb   $0x2,-0x8(%rsp)
  3b:	48 8d 54 24 f0       	lea    -0x10(%rsp),%rdx
  40:	c7 41 03 00 00 00 00 	movl   $0x0,0x3(%rcx)
  47:	c7 01 00 00 00 00    	movl   $0x0,(%rcx)
  4d:	0f 10 02             	movups (%rdx),%xmm0
  50:	0f 11 00             	movups %xmm0,(%rax)
  53:	c3                   	ret

Disassembly of section .text.pipeline_status:

0000000000000000 <pipeline_status>:
   0:	48 c7 02 00 00 00 00 	movq   $0x0,(%rdx)
   7:	48 c7 01 00 00 00 00 	movq   $0x0,(%rcx)
   e:	40 0f b6 c7          	movzbl %dil,%eax
  12:	39 f0                	cmp    %esi,%eax
  14:	73 0c                	jae    22 <pipeline_status+0x22>
  16:	c7 01 01 00 00 00    	movl   $0x1,(%rcx)
  1c:	89 79 04             	mov    %edi,0x4(%rcx)
  1f:	31 c0                	xor    %eax,%eax
  21:	c3                   	ret
  22:	89 f8                	mov    %edi,%eax
  24:	48 be 87 ca eb 85 b1 79 37 9e 	movabs $0x9e3779b185ebca87,%rsi
  2e:	48 0f af f0          	imul   %rax,%rsi
  32:	89 f8                	mov    %edi,%eax
  34:	c1 e8 07             	shr    $0x7,%eax
  37:	48 31 f0             	xor    %rsi,%rax
  3a:	a8 0f                	test   $0xf,%al
  3c:	74 17                	je     55 <pipeline_status+0x55>
  3e:	48 b9 f0 de bc 9a 78 56 34 12 	movabs $0x123456789abcdef0,%rcx
  48:	48 31 c8             	xor    %rcx,%rax
  4b:	48 8d 04 40          	lea    (%rax,%rax,2),%rax
  4f:	48 89 02             	mov    %rax,(%rdx)
  52:	b0 01                	mov    $0x1,%al
  54:	c3                   	ret
  55:	c7 01 02 00 00 00    	movl   $0x2,(%rcx)
  5b:	89 79 04             	mov    %edi,0x4(%rcx)
  5e:	31 c0                	xor    %eax,%eax
  60:	c3                   	ret

Disassembly of section .text._D4core8lifetime__T4moveTmZQiFNaNbNiNfNkMKmZm:

0000000000000000 <_D4core8lifetime__T4moveTmZQiFNaNbNiNfNkMKmZm>:
   0:	48 8b 07             	mov    (%rdi),%rax
   3:	c3                   	ret

Disassembly of section .text._D4core8lifetime__T8moveImplTmZQmFNaNbNiNfNkMKmZm:

0000000000000000 <_D4core8lifetime__T8moveImplTmZQmFNaNbNiNfNkMKmZm>:
   0:	48 8b 07             	mov    (%rdi),%rax
   3:	c3                   	ret

Disassembly of section .text._D4core8lifetime__T15trustedMoveImplTmZQuFNaNbNiNeNkMKmZm:

0000000000000000 <_D4core8lifetime__T15trustedMoveImplTmZQuFNaNbNiNeNkMKmZm>:
   0:	48 8b 07             	mov    (%rdi),%rax
   3:	c3                   	ret

Disassembly of section .text._D4core8lifetime__T15moveEmplaceImplTmZQuFNaNbNiNfMKmNkMKmZv:

0000000000000000 <_D4core8lifetime__T15moveEmplaceImplTmZQuFNaNbNiNfMKmNkMKmZv>:
   0:	48 8b 06             	mov    (%rsi),%rax
   3:	48 89 07             	mov    %rax,(%rdi)
   6:	c3                   	ret

Disassembly of section .text._D4core8lifetime__T4moveTS7kernels11DomainErrorZQBdFNaNbNiNfNkMKQBnZQBr:

0000000000000000 <_D4core8lifetime__T4moveTS7kernels11DomainErrorZQBdFNaNbNiNfNkMKQBnZQBr>:
   0:	48 8b 07             	mov    (%rdi),%rax
   3:	c3                   	ret

Disassembly of section .text._D4core8lifetime__T8moveImplTS7kernels11DomainErrorZQBhFNaNbNiNfNkMKQBnZQBr:

0000000000000000 <_D4core8lifetime__T8moveImplTS7kernels11DomainErrorZQBhFNaNbNiNfNkMKQBnZQBr>:
   0:	48 8b 07             	mov    (%rdi),%rax
   3:	c3                   	ret

Disassembly of section .text._D4core8lifetime__T15trustedMoveImplTS7kernels11DomainErrorZQBpFNaNbNiNeNkMKQBnZQBr:

0000000000000000 <_D4core8lifetime__T15trustedMoveImplTS7kernels11DomainErrorZQBpFNaNbNiNeNkMKQBnZQBr>:
   0:	48 8b 07             	mov    (%rdi),%rax
   3:	c3                   	ret

Disassembly of section .text._D4core8lifetime__T15moveEmplaceImplTS7kernels11DomainErrorZQBpFNaNbNiNfMKQBlNkMKQBsZv:

0000000000000000 <_D4core8lifetime__T15moveEmplaceImplTS7kernels11DomainErrorZQBpFNaNbNiNfMKQBlNkMKQBsZv>:
   0:	48 8b 06             	mov    (%rsi),%rax
   3:	48 89 07             	mov    %rax,(%rdi)
   6:	c3                   	ret

Disassembly of section .text._D7error_d__T6ResultTmTS7kernels11DomainErrorZQBh11requireLiveMxFNaNbNiNfZv:

0000000000000000 <error_d.Result!(ulong, kernels.DomainError).Result.requireLive() const>:
   0:	c3                   	ret

Disassembly of section .text._D7error_d__T6ResultTmTS7kernels11DomainErrorZQBh6__ctorMFNaNbNcNiNfKSQCq__TQClTmTQChZQCvZQv:

0000000000000000 <error_d.Result!(ulong, kernels.DomainError).Result.this(ref error_d.Result!(ulong, kernels.DomainError).Result)>:
   0:	0f b6 46 08          	movzbl 0x8(%rsi),%eax
   4:	83 f8 02             	cmp    $0x2,%eax
   7:	74 25                	je     2e <error_d.Result!(ulong, kernels.DomainError).Result.this(ref error_d.Result!(ulong, kernels.DomainError).Result)+0x2e>
   9:	83 f8 01             	cmp    $0x1,%eax
   c:	74 0e                	je     1c <error_d.Result!(ulong, kernels.DomainError).Result.this(ref error_d.Result!(ulong, kernels.DomainError).Result)+0x1c>
   e:	85 c0                	test   %eax,%eax
  10:	75 2e                	jne    40 <error_d.Result!(ulong, kernels.DomainError).Result.this(ref error_d.Result!(ulong, kernels.DomainError).Result)+0x40>
  12:	0f 57 c0             	xorps  %xmm0,%xmm0
  15:	0f 11 07             	movups %xmm0,(%rdi)
  18:	48 89 f8             	mov    %rdi,%rax
  1b:	c3                   	ret
  1c:	48 c7 47 08 01 00 00 00 	movq   $0x1,0x8(%rdi)
  24:	48 8b 06             	mov    (%rsi),%rax
  27:	48 89 07             	mov    %rax,(%rdi)
  2a:	48 89 f8             	mov    %rdi,%rax
  2d:	c3                   	ret
  2e:	48 c7 47 08 02 00 00 00 	movq   $0x2,0x8(%rdi)
  36:	48 8b 06             	mov    (%rsi),%rax
  39:	48 89 07             	mov    %rax,(%rdi)
  3c:	48 89 f8             	mov    %rdi,%rax
  3f:	c3                   	ret
  40:	0f 0b                	ud2

Disassembly of section .text._D7error_d__T6ResultTmTS7kernels11DomainErrorZQBh__T11copyStorageTS3std7sumtype__T7SumTypeTSQDm5EmptyTSQDx__T7SuccessTmZQlTSQEs__T7FailureTQEmZQnZQCmZQDuFNaNbNiNfKQDtZQDx:

0000000000000000 <error_d.Result!(ulong, kernels.DomainError).Result.copyStorage!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).copyStorage(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)>:
   0:	0f b6 46 08          	movzbl 0x8(%rsi),%eax
   4:	83 f8 02             	cmp    $0x2,%eax
   7:	74 25                	je     2e <error_d.Result!(ulong, kernels.DomainError).Result.copyStorage!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).copyStorage(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)+0x2e>
   9:	83 f8 01             	cmp    $0x1,%eax
   c:	74 0e                	je     1c <error_d.Result!(ulong, kernels.DomainError).Result.copyStorage!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).copyStorage(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)+0x1c>
   e:	85 c0                	test   %eax,%eax
  10:	75 2e                	jne    40 <error_d.Result!(ulong, kernels.DomainError).Result.copyStorage!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).copyStorage(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)+0x40>
  12:	0f 57 c0             	xorps  %xmm0,%xmm0
  15:	0f 11 07             	movups %xmm0,(%rdi)
  18:	48 89 f8             	mov    %rdi,%rax
  1b:	c3                   	ret
  1c:	48 c7 47 08 01 00 00 00 	movq   $0x1,0x8(%rdi)
  24:	48 8b 06             	mov    (%rsi),%rax
  27:	48 89 07             	mov    %rax,(%rdi)
  2a:	48 89 f8             	mov    %rdi,%rax
  2d:	c3                   	ret
  2e:	48 c7 47 08 02 00 00 00 	movq   $0x2,0x8(%rdi)
  36:	48 8b 06             	mov    (%rsi),%rax
  39:	48 89 07             	mov    %rax,(%rdi)
  3c:	48 89 f8             	mov    %rdi,%rax
  3f:	c3                   	ret
  40:	0f 0b                	ud2

Disassembly of section .text._D7error_d__T6ResultTmTS7kernels11DomainErrorZQBh6__ctorMxFNaNbNcNiNfKxSQCs__TQCnTmTQCjZQCxZxQw:

0000000000000000 <error_d.Result!(ulong, kernels.DomainError).Result.this(ref const(error_d.Result!(ulong, kernels.DomainError).Result)) const>:
   0:	0f b6 46 08          	movzbl 0x8(%rsi),%eax
   4:	83 f8 02             	cmp    $0x2,%eax
   7:	74 25                	je     2e <error_d.Result!(ulong, kernels.DomainError).Result.this(ref const(error_d.Result!(ulong, kernels.DomainError).Result)) const+0x2e>
   9:	83 f8 01             	cmp    $0x1,%eax
   c:	74 0e                	je     1c <error_d.Result!(ulong, kernels.DomainError).Result.this(ref const(error_d.Result!(ulong, kernels.DomainError).Result)) const+0x1c>
   e:	85 c0                	test   %eax,%eax
  10:	75 2e                	jne    40 <error_d.Result!(ulong, kernels.DomainError).Result.this(ref const(error_d.Result!(ulong, kernels.DomainError).Result)) const+0x40>
  12:	0f 57 c0             	xorps  %xmm0,%xmm0
  15:	0f 11 07             	movups %xmm0,(%rdi)
  18:	48 89 f8             	mov    %rdi,%rax
  1b:	c3                   	ret
  1c:	48 c7 47 08 01 00 00 00 	movq   $0x1,0x8(%rdi)
  24:	48 8b 06             	mov    (%rsi),%rax
  27:	48 89 07             	mov    %rax,(%rdi)
  2a:	48 89 f8             	mov    %rdi,%rax
  2d:	c3                   	ret
  2e:	48 c7 47 08 02 00 00 00 	movq   $0x2,0x8(%rdi)
  36:	48 8b 06             	mov    (%rsi),%rax
  39:	48 89 07             	mov    %rax,(%rdi)
  3c:	48 89 f8             	mov    %rdi,%rax
  3f:	c3                   	ret
  40:	0f 0b                	ud2

Disassembly of section .text._D7error_d__T6ResultTmTS7kernels11DomainErrorZQBh__T11copyStorageTxS3std7sumtype__T7SumTypeTSQDn5EmptyTSQDy__T7SuccessTmZQlTSQEt__T7FailureTQEnZQnZQCmZQDvFNaNbNiNfKxQDuZxQDz:

0000000000000000 <error_d.Result!(ulong, kernels.DomainError).Result.copyStorage!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).copyStorage(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType))>:
   0:	0f b6 46 08          	movzbl 0x8(%rsi),%eax
   4:	83 f8 02             	cmp    $0x2,%eax
   7:	74 25                	je     2e <error_d.Result!(ulong, kernels.DomainError).Result.copyStorage!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).copyStorage(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType))+0x2e>
   9:	83 f8 01             	cmp    $0x1,%eax
   c:	74 0e                	je     1c <error_d.Result!(ulong, kernels.DomainError).Result.copyStorage!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).copyStorage(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType))+0x1c>
   e:	85 c0                	test   %eax,%eax
  10:	75 2e                	jne    40 <error_d.Result!(ulong, kernels.DomainError).Result.copyStorage!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).copyStorage(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType))+0x40>
  12:	0f 57 c0             	xorps  %xmm0,%xmm0
  15:	0f 11 07             	movups %xmm0,(%rdi)
  18:	48 89 f8             	mov    %rdi,%rax
  1b:	c3                   	ret
  1c:	48 c7 47 08 01 00 00 00 	movq   $0x1,0x8(%rdi)
  24:	48 8b 06             	mov    (%rsi),%rax
  27:	48 89 07             	mov    %rax,(%rdi)
  2a:	48 89 f8             	mov    %rdi,%rax
  2d:	c3                   	ret
  2e:	48 c7 47 08 02 00 00 00 	movq   $0x2,0x8(%rdi)
  36:	48 8b 06             	mov    (%rsi),%rax
  39:	48 89 07             	mov    %rax,(%rdi)
  3c:	48 89 f8             	mov    %rdi,%rax
  3f:	c3                   	ret
  40:	0f 0b                	ud2

Disassembly of section .text._D7error_d__T6ResultTmTS7kernels11DomainErrorZQBh6__ctorMyFNaNbNcNiNfKySQCs__TQCnTmTQCjZQCxZyQw:

0000000000000000 <error_d.Result!(ulong, kernels.DomainError).Result.this(ref immutable(error_d.Result!(ulong, kernels.DomainError).Result)) immutable>:
   0:	0f b6 46 08          	movzbl 0x8(%rsi),%eax
   4:	83 f8 02             	cmp    $0x2,%eax
   7:	74 25                	je     2e <error_d.Result!(ulong, kernels.DomainError).Result.this(ref immutable(error_d.Result!(ulong, kernels.DomainError).Result)) immutable+0x2e>
   9:	83 f8 01             	cmp    $0x1,%eax
   c:	74 0e                	je     1c <error_d.Result!(ulong, kernels.DomainError).Result.this(ref immutable(error_d.Result!(ulong, kernels.DomainError).Result)) immutable+0x1c>
   e:	85 c0                	test   %eax,%eax
  10:	75 2e                	jne    40 <error_d.Result!(ulong, kernels.DomainError).Result.this(ref immutable(error_d.Result!(ulong, kernels.DomainError).Result)) immutable+0x40>
  12:	0f 57 c0             	xorps  %xmm0,%xmm0
  15:	0f 11 07             	movups %xmm0,(%rdi)
  18:	48 89 f8             	mov    %rdi,%rax
  1b:	c3                   	ret
  1c:	48 c7 47 08 01 00 00 00 	movq   $0x1,0x8(%rdi)
  24:	48 8b 06             	mov    (%rsi),%rax
  27:	48 89 07             	mov    %rax,(%rdi)
  2a:	48 89 f8             	mov    %rdi,%rax
  2d:	c3                   	ret
  2e:	48 c7 47 08 02 00 00 00 	movq   $0x2,0x8(%rdi)
  36:	48 8b 06             	mov    (%rsi),%rax
  39:	48 89 07             	mov    %rax,(%rdi)
  3c:	48 89 f8             	mov    %rdi,%rax
  3f:	c3                   	ret
  40:	0f 0b                	ud2

Disassembly of section .text._D7error_d__T6ResultTmTS7kernels11DomainErrorZQBh__T11copyStorageTyS3std7sumtype__T7SumTypeTSQDn5EmptyTSQDy__T7SuccessTmZQlTSQEt__T7FailureTQEnZQnZQCmZQDvFNaNbNiNfKyQDuZyQDz:

0000000000000000 <error_d.Result!(ulong, kernels.DomainError).Result.copyStorage!(immutable(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).copyStorage(ref immutable(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType))>:
   0:	0f b6 46 08          	movzbl 0x8(%rsi),%eax
   4:	83 f8 02             	cmp    $0x2,%eax
   7:	74 25                	je     2e <error_d.Result!(ulong, kernels.DomainError).Result.copyStorage!(immutable(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).copyStorage(ref immutable(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType))+0x2e>
   9:	83 f8 01             	cmp    $0x1,%eax
   c:	74 0e                	je     1c <error_d.Result!(ulong, kernels.DomainError).Result.copyStorage!(immutable(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).copyStorage(ref immutable(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType))+0x1c>
   e:	85 c0                	test   %eax,%eax
  10:	75 2e                	jne    40 <error_d.Result!(ulong, kernels.DomainError).Result.copyStorage!(immutable(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).copyStorage(ref immutable(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType))+0x40>
  12:	0f 57 c0             	xorps  %xmm0,%xmm0
  15:	0f 11 07             	movups %xmm0,(%rdi)
  18:	48 89 f8             	mov    %rdi,%rax
  1b:	c3                   	ret
  1c:	48 c7 47 08 01 00 00 00 	movq   $0x1,0x8(%rdi)
  24:	48 8b 06             	mov    (%rsi),%rax
  27:	48 89 07             	mov    %rax,(%rdi)
  2a:	48 89 f8             	mov    %rdi,%rax
  2d:	c3                   	ret
  2e:	48 c7 47 08 02 00 00 00 	movq   $0x2,0x8(%rdi)
  36:	48 8b 06             	mov    (%rsi),%rax
  39:	48 89 07             	mov    %rax,(%rdi)
  3c:	48 89 f8             	mov    %rdi,%rax
  3f:	c3                   	ret
  40:	0f 0b                	ud2

Disassembly of section .text._D7error_d__T6ResultTmTS7kernels11DomainErrorZQBh6__ctorMFNaNbNcNiNfS3std7sumtype__T7SumTypeTSQDo5EmptyTSQDz__T7SuccessTmZQlTSQEu__T7FailureTQEoZQnZQCmZSQFv__TQFqTmTQFmZQGa:

0000000000000000 <error_d.Result!(ulong, kernels.DomainError).Result.this(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)>:
   0:	48 89 f8             	mov    %rdi,%rax
   3:	0f 28 44 24 08       	movaps 0x8(%rsp),%xmm0
   8:	0f 11 07             	movups %xmm0,(%rdi)
   b:	c3                   	ret

Disassembly of section .text._D4core8lifetime__T4moveTS3std7sumtype__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTmZQlTSQBk__T7FailureTS7kernels11DomainErrorZQBgZQDkZQEkFNaNbNiNfNkMKQEuZQEy:

0000000000000000 <_D4core8lifetime__T4moveTS3std7sumtype__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTmZQlTSQBk__T7FailureTS7kernels11DomainErrorZQBgZQDkZQEkFNaNbNiNfNkMKQEuZQEy>:
   0:	48 89 f8             	mov    %rdi,%rax
   3:	0f 10 06             	movups (%rsi),%xmm0
   6:	0f 11 07             	movups %xmm0,(%rdi)
   9:	c3                   	ret

Disassembly of section .text._D7error_d__T6ResultTmTS7kernels11DomainErrorZQBh5stateMxFNaNbNiNfZEQCo11ResultState:

0000000000000000 <error_d.Result!(ulong, kernels.DomainError).Result.state() const>:
   0:	0f b6 47 08          	movzbl 0x8(%rdi),%eax
   4:	83 f8 03             	cmp    $0x3,%eax
   7:	73 01                	jae    a <error_d.Result!(ulong, kernels.DomainError).Result.state() const+0xa>
   9:	c3                   	ret
   a:	0f 0b                	ud2

Disassembly of section .text._D3std7sumtype__T5matchS7error_d__T6ResultTmTS7kernels11DomainErrorZQBh5stateMxFNaNbNiNfZ17__lambda_L162_C31Z__TQDrTxSQEmQEl__T7SumTypeTSQEj5EmptyTSQEu__T7SuccessTmZQlTSQFp__T7FailureTQFjZQnZQCmZQGwMFNaNbNiNfKxQDpZEQHj11ResultState:

0000000000000000 <std.sumtype.match!(error_d.Result!(ulong, kernels.DomainError).Result.state().__lambda_L162_C31).match!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).match(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType))>:
   0:	0f b6 46 08          	movzbl 0x8(%rsi),%eax
   4:	83 f8 03             	cmp    $0x3,%eax
   7:	73 01                	jae    a <std.sumtype.match!(error_d.Result!(ulong, kernels.DomainError).Result.state().__lambda_L162_C31).match!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).match(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType))+0xa>
   9:	c3                   	ret
   a:	0f 0b                	ud2

Disassembly of section .text._D7error_d__T6ResultTmTS7kernels11DomainErrorZQBh8hasValueMxFNaNbNiNfZb:

0000000000000000 <error_d.Result!(ulong, kernels.DomainError).Result.hasValue() const>:
   0:	0f b6 47 08          	movzbl 0x8(%rdi),%eax
   4:	3c 03                	cmp    $0x3,%al
   6:	73 03                	jae    b <error_d.Result!(ulong, kernels.DomainError).Result.hasValue() const+0xb>
   8:	24 01                	and    $0x1,%al
   a:	c3                   	ret
   b:	0f 0b                	ud2

Disassembly of section .text._D7error_d__T6ResultTmTS7kernels11DomainErrorZQBh8hasErrorMxFNaNbNiNfZb:

0000000000000000 <error_d.Result!(ulong, kernels.DomainError).Result.hasError() const>:
   0:	0f b6 47 08          	movzbl 0x8(%rdi),%eax
   4:	3c 03                	cmp    $0x3,%al
   6:	73 12                	jae    1a <error_d.Result!(ulong, kernels.DomainError).Result.hasError() const+0x1a>
   8:	0f b6 c0             	movzbl %al,%eax
   b:	83 e0 07             	and    $0x7,%eax
   e:	b9 04 00 00 00       	mov    $0x4,%ecx
  13:	0f a3 c1             	bt     %eax,%ecx
  16:	0f 92 c0             	setb   %al
  19:	c3                   	ret
  1a:	0f 0b                	ud2

Disassembly of section .text._D7error_d__T6ResultTmTS7kernels11DomainErrorZQBh7isEmptyMxFNaNbNiNfZb:

0000000000000000 <error_d.Result!(ulong, kernels.DomainError).Result.isEmpty() const>:
   0:	0f b6 4f 08          	movzbl 0x8(%rdi),%ecx
   4:	80 f9 03             	cmp    $0x3,%cl
   7:	73 08                	jae    11 <error_d.Result!(ulong, kernels.DomainError).Result.isEmpty() const+0x11>
   9:	80 e1 07             	and    $0x7,%cl
   c:	b0 01                	mov    $0x1,%al
   e:	d2 e8                	shr    %cl,%al
  10:	c3                   	ret
  11:	0f 0b                	ud2

Disassembly of section .text._D7error_d__T6ResultTmTS7kernels11DomainErrorZQBh8opAssignMFNaNbNiNfSQCp__TQCkTmTQCgZQCuZv:

0000000000000000 <error_d.Result!(ulong, kernels.DomainError).Result.opAssign(error_d.Result!(ulong, kernels.DomainError).Result)>:
   0:	0f 57 c0             	xorps  %xmm0,%xmm0
   3:	0f 11 07             	movups %xmm0,(%rdi)
   6:	48 39 fe             	cmp    %rdi,%rsi
   9:	74 06                	je     11 <error_d.Result!(ulong, kernels.DomainError).Result.opAssign(error_d.Result!(ulong, kernels.DomainError).Result)+0x11>
   b:	0f 10 06             	movups (%rsi),%xmm0
   e:	0f 11 07             	movups %xmm0,(%rdi)
  11:	c3                   	ret

Disassembly of section .text._D7error_d__T6ResultTmTS7kernels11DomainErrorZQBh7replaceMFNaNbNiNeKS3std7sumtype__T7SumTypeTSQDo5EmptyTSQDz__T7SuccessTmZQlTSQEu__T7FailureTQEoZQnZQCmZv:

0000000000000000 <error_d.Result!(ulong, kernels.DomainError).Result.replace(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)>:
   0:	0f 57 c0             	xorps  %xmm0,%xmm0
   3:	0f 11 07             	movups %xmm0,(%rdi)
   6:	48 39 fe             	cmp    %rdi,%rsi
   9:	74 06                	je     11 <error_d.Result!(ulong, kernels.DomainError).Result.replace(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)+0x11>
   b:	0f 10 06             	movups (%rsi),%xmm0
   e:	0f 11 07             	movups %xmm0,(%rdi)
  11:	c3                   	ret

Disassembly of section .text._D4core8lifetime__T4moveTS3std7sumtype__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTmZQlTSQBk__T7FailureTS7kernels11DomainErrorZQBgZQDkZQEkFNaNbNiNfKQErKQEvZv:

0000000000000000 <core.lifetime.move!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).move(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType, ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)>:
   0:	48 39 f7             	cmp    %rsi,%rdi
   3:	74 06                	je     b <core.lifetime.move!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).move(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType, ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)+0xb>
   5:	0f 10 07             	movups (%rdi),%xmm0
   8:	0f 11 06             	movups %xmm0,(%rsi)
   b:	c3                   	ret

Disassembly of section .text._D7error_d__T6ResultTmTS7kernels11DomainErrorZQBh11takeStorageMFNaNbNiNeZS3std7sumtype__T7SumTypeTSQDt5EmptyTSQEe__T7SuccessTmZQlTSQEz__T7FailureTQEtZQnZQCm:

0000000000000000 <error_d.Result!(ulong, kernels.DomainError).Result.takeStorage()>:
   0:	48 89 f8             	mov    %rdi,%rax
   3:	0f 10 06             	movups (%rsi),%xmm0
   6:	0f 29 44 24 e8       	movaps %xmm0,-0x18(%rsp)
   b:	0f 57 c0             	xorps  %xmm0,%xmm0
   e:	0f 11 06             	movups %xmm0,(%rsi)
  11:	0f 28 44 24 e8       	movaps -0x18(%rsp),%xmm0
  16:	0f 11 07             	movups %xmm0,(%rdi)
  19:	c3                   	ret

Disassembly of section .text._D7error_d__T6ResultTmTS7kernels11DomainErrorZQBh11__xopEqualsMxFKxSQCo__TQCjTmTQCfZQCtZb:

0000000000000000 <error_d.Result!(ulong, kernels.DomainError).Result.__xopEquals(ref const(error_d.Result!(ulong, kernels.DomainError).Result)) const>:
   0:	0f b6 4f 08          	movzbl 0x8(%rdi),%ecx
   4:	0f b6 46 08          	movzbl 0x8(%rsi),%eax
   8:	48 8d 04 40          	lea    (%rax,%rax,2),%rax
   c:	48 01 c8             	add    %rcx,%rax
   f:	48 83 f8 08          	cmp    $0x8,%rax
  13:	77 20                	ja     35 <error_d.Result!(ulong, kernels.DomainError).Result.__xopEquals(ref const(error_d.Result!(ulong, kernels.DomainError).Result)) const+0x35>
  15:	48 8d 0d 00 00 00 00 	lea    0x0(%rip),%rcx        # 1c <error_d.Result!(ulong, kernels.DomainError).Result.__xopEquals(ref const(error_d.Result!(ulong, kernels.DomainError).Result)) const+0x1c>	18: R_X86_64_PC32	.rodata._D7error_d__T6ResultTmTS7kernels11DomainErrorZQBh11__xopEqualsMxFKxSQCo__TQCjTmTQCfZQCtZb-0x4
  1c:	48 63 04 81          	movslq (%rcx,%rax,4),%rax
  20:	48 01 c8             	add    %rcx,%rax
  23:	ff e0                	jmp    *%rax
  25:	31 c0                	xor    %eax,%eax
  27:	c3                   	ret
  28:	48 8b 07             	mov    (%rdi),%rax
  2b:	48 3b 06             	cmp    (%rsi),%rax
  2e:	0f 94 c0             	sete   %al
  31:	c3                   	ret
  32:	b0 01                	mov    $0x1,%al
  34:	c3                   	ret
  35:	0f 0b                	ud2

Disassembly of section .text._D3std7sumtype__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTmZQlTSQBk__T7FailureTS7kernels11DomainErrorZQBgZQDk__T8opEqualsTxSQErQEq__TQElTQEgTQDuTQDeZQFbTxQBfZQBuMxFNaNbNiNfKxQBzZb:

0000000000000000 <std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opEquals!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType), const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).opEquals(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)) const>:
   0:	0f b6 4f 08          	movzbl 0x8(%rdi),%ecx
   4:	0f b6 46 08          	movzbl 0x8(%rsi),%eax
   8:	48 8d 04 40          	lea    (%rax,%rax,2),%rax
   c:	48 01 c8             	add    %rcx,%rax
   f:	48 83 f8 08          	cmp    $0x8,%rax
  13:	77 20                	ja     35 <std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opEquals!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType), const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).opEquals(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)) const+0x35>
  15:	48 8d 0d 00 00 00 00 	lea    0x0(%rip),%rcx        # 1c <std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opEquals!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType), const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).opEquals(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)) const+0x1c>	18: R_X86_64_PC32	.rodata._D3std7sumtype__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTmZQlTSQBk__T7FailureTS7kernels11DomainErrorZQBgZQDk__T8opEqualsTxSQErQEq__TQElTQEgTQDuTQDeZQFbTxQBfZQBuMxFNaNbNiNfKxQBzZb-0x4
  1c:	48 63 04 81          	movslq (%rcx,%rax,4),%rax
  20:	48 01 c8             	add    %rcx,%rax
  23:	ff e0                	jmp    *%rax
  25:	31 c0                	xor    %eax,%eax
  27:	c3                   	ret
  28:	48 8b 07             	mov    (%rdi),%rax
  2b:	48 3b 06             	cmp    (%rsi),%rax
  2e:	0f 94 c0             	sete   %al
  31:	c3                   	ret
  32:	b0 01                	mov    $0x1,%al
  34:	c3                   	ret
  35:	0f 0b                	ud2

Disassembly of section .text._D7error_d__T6ResultTmTS7kernels11DomainErrorZQBh9__xtoHashFNbNeKxSQCn__TQCiTmTQCeZQCsZm:

0000000000000000 <error_d.Result!(ulong, kernels.DomainError).Result.__xtoHash(ref const(error_d.Result!(ulong, kernels.DomainError).Result))>:
   0:	48 89 fe             	mov    %rdi,%rsi
   3:	48 8b 3d 00 00 00 00 	mov    0x0(%rip),%rdi        # a <error_d.Result!(ulong, kernels.DomainError).Result.__xtoHash(ref const(error_d.Result!(ulong, kernels.DomainError).Result))+0xa>	6: R_X86_64_REX_GOTPCRELX	initializer for TypeInfo_xS3std7sumtype__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTmZQlTSQBk__T7FailureTS7kernels11DomainErrorZQBgZQDk-0x4
   a:	48 8b 07             	mov    (%rdi),%rax
   d:	48 8b 40 30          	mov    0x30(%rax),%rax
  11:	ff e0                	jmp    *%rax

Disassembly of section .text._D3std7sumtype__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTmZQlTSQBk__T7FailureTS7kernels11DomainErrorZQBgZQDk6toHashMxFNaNbNiNfZm:

0000000000000000 <std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.toHash() const>:
   0:	0f b6 47 08          	movzbl 0x8(%rdi),%eax
   4:	85 c0                	test   %eax,%eax
   6:	0f 84 af 00 00 00    	je     bb <std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.toHash() const+0xbb>
   c:	83 f8 02             	cmp    $0x2,%eax
   f:	74 4c                	je     5d <std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.toHash() const+0x5d>
  11:	83 f8 01             	cmp    $0x1,%eax
  14:	0f 85 a2 00 00 00    	jne    bc <std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.toHash() const+0xbc>
  1a:	48 8b 07             	mov    (%rdi),%rax
  1d:	48 b9 d5 53 42 11 91 7b c3 87 	movabs $0x87c37b91114253d5,%rcx
  27:	48 0f af c8          	imul   %rax,%rcx
  2b:	48 ba 00 00 00 80 ea 29 a1 88 	movabs $0x88a129ea80000000,%rdx
  35:	48 0f af d0          	imul   %rax,%rdx
  39:	48 c1 e9 21          	shr    $0x21,%rcx
  3d:	48 09 d1             	or     %rdx,%rcx
  40:	48 b8 7f 93 45 27 43 ad f5 4c 	movabs $0x4cf5ad432745937f,%rax
  4a:	48 0f af c1          	imul   %rcx,%rax
  4e:	48 c1 c0 1b          	rol    $0x1b,%rax
  52:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
  56:	48 05 29 e7 dc 52    	add    $0x52dce729,%rax
  5c:	c3                   	ret
  5d:	0f b6 07             	movzbl (%rdi),%eax
  60:	48 b9 b3 01 00 00 00 01 00 00 	movabs $0x100000001b3,%rcx
  6a:	48 0f af c1          	imul   %rcx,%rax
  6e:	0f b6 57 01          	movzbl 0x1(%rdi),%edx
  72:	48 31 c2             	xor    %rax,%rdx
  75:	48 0f af d1          	imul   %rcx,%rdx
  79:	0f b6 47 02          	movzbl 0x2(%rdi),%eax
  7d:	48 31 d0             	xor    %rdx,%rax
  80:	48 0f af c1          	imul   %rcx,%rax
  84:	0f b6 57 03          	movzbl 0x3(%rdi),%edx
  88:	48 31 c2             	xor    %rax,%rdx
  8b:	48 0f af d1          	imul   %rcx,%rdx
  8f:	0f b6 47 04          	movzbl 0x4(%rdi),%eax
  93:	48 31 d0             	xor    %rdx,%rax
  96:	48 0f af c1          	imul   %rcx,%rax
  9a:	0f b6 57 05          	movzbl 0x5(%rdi),%edx
  9e:	48 31 c2             	xor    %rax,%rdx
  a1:	48 0f af d1          	imul   %rcx,%rdx
  a5:	0f b6 77 06          	movzbl 0x6(%rdi),%esi
  a9:	48 31 d6             	xor    %rdx,%rsi
  ac:	48 0f af f1          	imul   %rcx,%rsi
  b0:	0f b6 47 07          	movzbl 0x7(%rdi),%eax
  b4:	48 31 f0             	xor    %rsi,%rax
  b7:	48 0f af c1          	imul   %rcx,%rax
  bb:	c3                   	ret
  bc:	0f 0b                	ud2

Disassembly of section .text._D3std7sumtype__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTmZQlTSQBk__T7FailureTS7kernels11DomainErrorZQBgZQDk11__xopEqualsMxFKxSQEvQEu__TQEpTQEkTQDyTQDiZQFfZb:

0000000000000000 <std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.__xopEquals(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)) const>:
   0:	0f b6 4f 08          	movzbl 0x8(%rdi),%ecx
   4:	0f b6 46 08          	movzbl 0x8(%rsi),%eax
   8:	48 8d 04 40          	lea    (%rax,%rax,2),%rax
   c:	48 01 c8             	add    %rcx,%rax
   f:	48 83 f8 08          	cmp    $0x8,%rax
  13:	77 20                	ja     35 <std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.__xopEquals(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)) const+0x35>
  15:	48 8d 0d 00 00 00 00 	lea    0x0(%rip),%rcx        # 1c <std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.__xopEquals(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)) const+0x1c>	18: R_X86_64_PC32	.rodata._D3std7sumtype__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTmZQlTSQBk__T7FailureTS7kernels11DomainErrorZQBgZQDk11__xopEqualsMxFKxSQEvQEu__TQEpTQEkTQDyTQDiZQFfZb-0x4
  1c:	48 63 04 81          	movslq (%rcx,%rax,4),%rax
  20:	48 01 c8             	add    %rcx,%rax
  23:	ff e0                	jmp    *%rax
  25:	31 c0                	xor    %eax,%eax
  27:	c3                   	ret
  28:	48 8b 07             	mov    (%rdi),%rax
  2b:	48 3b 06             	cmp    (%rsi),%rax
  2e:	0f 94 c0             	sete   %al
  31:	c3                   	ret
  32:	b0 01                	mov    $0x1,%al
  34:	c3                   	ret
  35:	0f 0b                	ud2

Disassembly of section .text._D3std7sumtype__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTmZQlTSQBk__T7FailureTS7kernels11DomainErrorZQBgZQDk6__ctorMFNaNbNcNiNfQDxZSQFaQEz__TQEuTQEpTQEdTQDnZQFk:

0000000000000000 <std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.this(error_d.Empty)>:
   0:	48 89 f8             	mov    %rdi,%rax
   3:	c6 47 08 00          	movb   $0x0,0x8(%rdi)
   7:	c3                   	ret

Disassembly of section .text._D4core8lifetime__T7forwardS_D3std7sumtype__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTmZQlTSQBk__T7FailureTS7kernels11DomainErrorZQBgZQDk6__ctorMFNcQDpZ5valueQDzZ__T3fwdS_DQFlQFk__TQFfTQFaTQEoTQDyZQFvQClMFNcQFwZQChQGdZQCbMFNaNbNdNiNfZQGx:

0000000000000000 <core.lifetime.forward!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.this(error_d.Empty).value).fwd!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.this(error_d.Empty).value).fwd()>:
   0:	48 89 f8             	mov    %rdi,%rax
   3:	c3                   	ret

Disassembly of section .text._D4core8lifetime__T4moveTS7error_d5EmptyZQwFNaNbNiNfNkMKQBfZQBj:

0000000000000000 <_D4core8lifetime__T4moveTS7error_d5EmptyZQwFNaNbNiNfNkMKQBfZQBj>:
   0:	48 89 f8             	mov    %rdi,%rax
   3:	c3                   	ret

Disassembly of section .text._D3std7sumtype__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTmZQlTSQBk__T7FailureTS7kernels11DomainErrorZQBgZQDk6__ctorMxFNaNbNcNiNfxSQDzQDuZxSQFhQFg__TQFbTQEwTQEkTQDuZQFr:

0000000000000000 <std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.this(const(error_d.Empty)) const>:
   0:	48 89 f8             	mov    %rdi,%rax
   3:	c6 47 08 00          	movb   $0x0,0x8(%rdi)
   7:	c3                   	ret

Disassembly of section .text._D3std7sumtype__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTmZQlTSQBk__T7FailureTS7kernels11DomainErrorZQBgZQDk6__ctorMyFNaNbNcNiNfySQDzQDuZySQFhQFg__TQFbTQEwTQEkTQDuZQFr:

0000000000000000 <std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.this(immutable(error_d.Empty)) immutable>:
   0:	48 89 f8             	mov    %rdi,%rax
   3:	c6 47 08 00          	movb   $0x0,0x8(%rdi)
   7:	c3                   	ret

Disassembly of section .text._D3std7sumtype__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTmZQlTSQBk__T7FailureTS7kernels11DomainErrorZQBgZQDk6__ctorMFNaNbNcNiNfQDhZSQFaQEz__TQEuTQEpTQEdTQDnZQFk:

0000000000000000 <std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.this(error_d.Success!(ulong).Success)>:
   0:	48 89 f8             	mov    %rdi,%rax
   3:	48 89 37             	mov    %rsi,(%rdi)
   6:	c6 47 08 01          	movb   $0x1,0x8(%rdi)
   a:	c3                   	ret

Disassembly of section .text._D4core8lifetime__T7forwardS_D3std7sumtype__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTmZQlTSQBk__T7FailureTS7kernels11DomainErrorZQBgZQDk6__ctorMFNcQCzZ5valueQDjZ__T3fwdS_DQFlQFk__TQFfTQFaTQEoTQDyZQFvQClMFNcQFgZQChQFnZQCbMFNaNbNdNiNfZQGh:

0000000000000000 <core.lifetime.forward!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.this(error_d.Success!(ulong).Success).value).fwd!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.this(error_d.Success!(ulong).Success).value).fwd()>:
   0:	48 8b 07             	mov    (%rdi),%rax
   3:	c3                   	ret

Disassembly of section .text._D4core8lifetime__T4moveTS7error_d__T7SuccessTmZQlZQBgFNaNbNiNfNkMKQBqZQBu:

0000000000000000 <_D4core8lifetime__T4moveTS7error_d__T7SuccessTmZQlZQBgFNaNbNiNfNkMKQBqZQBu>:
   0:	48 8b 07             	mov    (%rdi),%rax
   3:	c3                   	ret

Disassembly of section .text._D3std7sumtype__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTmZQlTSQBk__T7FailureTS7kernels11DomainErrorZQBgZQDk6__ctorMxFNaNbNcNiNfxSQDz__TQDkTmZQDqZxSQFqQFp__TQFkTQFfTQEtTQEdZQGa:

0000000000000000 <std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.this(const(error_d.Success!(ulong).Success)) const>:
   0:	48 89 f8             	mov    %rdi,%rax
   3:	48 89 37             	mov    %rsi,(%rdi)
   6:	c6 47 08 01          	movb   $0x1,0x8(%rdi)
   a:	c3                   	ret

Disassembly of section .text._D3std7sumtype__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTmZQlTSQBk__T7FailureTS7kernels11DomainErrorZQBgZQDk6__ctorMyFNaNbNcNiNfySQDz__TQDkTmZQDqZySQFqQFp__TQFkTQFfTQEtTQEdZQGa:

0000000000000000 <std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.this(immutable(error_d.Success!(ulong).Success)) immutable>:
   0:	48 89 f8             	mov    %rdi,%rax
   3:	48 89 37             	mov    %rsi,(%rdi)
   6:	c6 47 08 01          	movb   $0x1,0x8(%rdi)
   a:	c3                   	ret

Disassembly of section .text._D3std7sumtype__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTmZQlTSQBk__T7FailureTS7kernels11DomainErrorZQBgZQDk6__ctorMFNaNbNcNiNfQCnZSQFaQEz__TQEuTQEpTQEdTQDnZQFk:

0000000000000000 <std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.this(error_d.Failure!(kernels.DomainError).Failure)>:
   0:	48 89 f8             	mov    %rdi,%rax
   3:	48 89 37             	mov    %rsi,(%rdi)
   6:	c6 47 08 02          	movb   $0x2,0x8(%rdi)
   a:	c3                   	ret

Disassembly of section .text._D4core8lifetime__T7forwardS_D3std7sumtype__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTmZQlTSQBk__T7FailureTS7kernels11DomainErrorZQBgZQDk6__ctorMFNcQCfZ5valueQCpZ__T3fwdS_DQFlQFk__TQFfTQFaTQEoTQDyZQFvQClMFNcQEmZQChQEtZQCbMFNaNbNdNiNfZQFn:

0000000000000000 <core.lifetime.forward!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.this(error_d.Failure!(kernels.DomainError).Failure).value).fwd!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.this(error_d.Failure!(kernels.DomainError).Failure).value).fwd()>:
   0:	48 8b 07             	mov    (%rdi),%rax
   3:	c3                   	ret

Disassembly of section .text._D4core8lifetime__T4moveTS7error_d__T7FailureTS7kernels11DomainErrorZQBgZQCcFNaNbNiNfNkMKQCmZQCq:

0000000000000000 <_D4core8lifetime__T4moveTS7error_d__T7FailureTS7kernels11DomainErrorZQBgZQCcFNaNbNiNfNkMKQCmZQCq>:
   0:	48 8b 07             	mov    (%rdi),%rax
   3:	c3                   	ret

Disassembly of section .text._D3std7sumtype__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTmZQlTSQBk__T7FailureTS7kernels11DomainErrorZQBgZQDk6__ctorMxFNaNbNcNiNfxSQDz__TQCpTQCkZQCxZxSQFsQFr__TQFmTQFhTQEvTQEfZQGc:

0000000000000000 <std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.this(const(error_d.Failure!(kernels.DomainError).Failure)) const>:
   0:	48 89 f8             	mov    %rdi,%rax
   3:	48 89 37             	mov    %rsi,(%rdi)
   6:	c6 47 08 02          	movb   $0x2,0x8(%rdi)
   a:	c3                   	ret

Disassembly of section .text._D3std7sumtype__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTmZQlTSQBk__T7FailureTS7kernels11DomainErrorZQBgZQDk6__ctorMyFNaNbNcNiNfySQDz__TQCpTQCkZQCxZySQFsQFr__TQFmTQFhTQEvTQEfZQGc:

0000000000000000 <std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.this(immutable(error_d.Failure!(kernels.DomainError).Failure)) immutable>:
   0:	48 89 f8             	mov    %rdi,%rax
   3:	48 89 37             	mov    %rsi,(%rdi)
   6:	c6 47 08 02          	movb   $0x2,0x8(%rdi)
   a:	c3                   	ret

Disassembly of section .text._D3std7sumtype__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTmZQlTSQBk__T7FailureTS7kernels11DomainErrorZQBgZQDk8opAssignMFNaNbNcNiNfQDzZSQFcQFb__TQEwTQErTQEfTQDpZQFm:

0000000000000000 <std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(error_d.Empty)>:
   0:	80 7f 08 03          	cmpb   $0x3,0x8(%rdi)
   4:	73 0f                	jae    15 <std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(error_d.Empty)+0x15>
   6:	48 c7 07 00 00 00 00 	movq   $0x0,(%rdi)
   d:	c6 47 08 00          	movb   $0x0,0x8(%rdi)
  11:	48 89 f8             	mov    %rdi,%rax
  14:	c3                   	ret
  15:	0f 0b                	ud2

Disassembly of section .text._D3std7sumtype__T5matchSQwQu14destroyIfOwnerZ__TQBfTSQBzQBy__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTmZQlTSQBk__T7FailureTS7kernels11DomainErrorZQBgZQDkZQFhFNaNbNiNfKQElZv:

0000000000000000 <std.sumtype.match!(std.sumtype.destroyIfOwner).match!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).match(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)>:
   0:	80 7f 08 03          	cmpb   $0x3,0x8(%rdi)
   4:	73 01                	jae    7 <std.sumtype.match!(std.sumtype.destroyIfOwner).match!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).match(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)+0x7>
   6:	c3                   	ret
   7:	0f 0b                	ud2

Disassembly of section .text._D4core8lifetime__T7forwardS_D3std7sumtype__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTmZQlTSQBk__T7FailureTS7kernels11DomainErrorZQBgZQDk8opAssignMFNcQDrZ3rhsQDzZ__T3fwdS_DQFlQFk__TQFfTQFaTQEoTQDyZQFvQClMFNcQFwZQCfQGdZQCbMFNaNbNdNiNfZQGx:

0000000000000000 <core.lifetime.forward!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(error_d.Empty).rhs).fwd!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(error_d.Empty).rhs).fwd()>:
   0:	48 89 f8             	mov    %rdi,%rax
   3:	c3                   	ret

Disassembly of section .text._D3std7sumtype__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTmZQlTSQBk__T7FailureTS7kernels11DomainErrorZQBgZQDk8opAssignMFNaNbNcNiNfQDjZSQFcQFb__TQEwTQErTQEfTQDpZQFm:

0000000000000000 <std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(error_d.Success!(ulong).Success)>:
   0:	80 7f 08 03          	cmpb   $0x3,0x8(%rdi)
   4:	73 0b                	jae    11 <std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(error_d.Success!(ulong).Success)+0x11>
   6:	48 89 37             	mov    %rsi,(%rdi)
   9:	c6 47 08 01          	movb   $0x1,0x8(%rdi)
   d:	48 89 f8             	mov    %rdi,%rax
  10:	c3                   	ret
  11:	0f 0b                	ud2

Disassembly of section .text._D4core8lifetime__T7forwardS_D3std7sumtype__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTmZQlTSQBk__T7FailureTS7kernels11DomainErrorZQBgZQDk8opAssignMFNcQDbZ3rhsQDjZ__T3fwdS_DQFlQFk__TQFfTQFaTQEoTQDyZQFvQClMFNcQFgZQCfQFnZQCbMFNaNbNdNiNfZQGh:

0000000000000000 <core.lifetime.forward!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(error_d.Success!(ulong).Success).rhs).fwd!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(error_d.Success!(ulong).Success).rhs).fwd()>:
   0:	48 8b 07             	mov    (%rdi),%rax
   3:	c3                   	ret

Disassembly of section .text._D3std7sumtype__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTmZQlTSQBk__T7FailureTS7kernels11DomainErrorZQBgZQDk8opAssignMFNaNbNcNiNfQCpZSQFcQFb__TQEwTQErTQEfTQDpZQFm:

0000000000000000 <std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(error_d.Failure!(kernels.DomainError).Failure)>:
   0:	80 7f 08 03          	cmpb   $0x3,0x8(%rdi)
   4:	73 0b                	jae    11 <std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(error_d.Failure!(kernels.DomainError).Failure)+0x11>
   6:	48 89 37             	mov    %rsi,(%rdi)
   9:	c6 47 08 02          	movb   $0x2,0x8(%rdi)
   d:	48 89 f8             	mov    %rdi,%rax
  10:	c3                   	ret
  11:	0f 0b                	ud2

Disassembly of section .text._D4core8lifetime__T7forwardS_D3std7sumtype__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTmZQlTSQBk__T7FailureTS7kernels11DomainErrorZQBgZQDk8opAssignMFNcQChZ3rhsQCpZ__T3fwdS_DQFlQFk__TQFfTQFaTQEoTQDyZQFvQClMFNcQEmZQCfQEtZQCbMFNaNbNdNiNfZQFn:

0000000000000000 <core.lifetime.forward!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(error_d.Failure!(kernels.DomainError).Failure).rhs).fwd!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(error_d.Failure!(kernels.DomainError).Failure).rhs).fwd()>:
   0:	48 8b 07             	mov    (%rdi),%rax
   3:	c3                   	ret

Disassembly of section .text._D3std7sumtype__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTmZQlTSQBk__T7FailureTS7kernels11DomainErrorZQBgZQDk8opAssignMFNaNbNcNiNfKSQEzQEy__TQEtTQEoTQEcTQDmZQFjZQBe:

0000000000000000 <std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)>:
   0:	0f b6 46 08          	movzbl 0x8(%rsi),%eax
   4:	83 f8 02             	cmp    $0x2,%eax
   7:	74 32                	je     3b <std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)+0x3b>
   9:	83 f8 01             	cmp    $0x1,%eax
   c:	74 19                	je     27 <std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)+0x27>
   e:	85 c0                	test   %eax,%eax
  10:	75 3d                	jne    4f <std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)+0x4f>
  12:	80 7f 08 03          	cmpb   $0x3,0x8(%rdi)
  16:	73 37                	jae    4f <std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)+0x4f>
  18:	48 c7 07 00 00 00 00 	movq   $0x0,(%rdi)
  1f:	c6 47 08 00          	movb   $0x0,0x8(%rdi)
  23:	48 89 f8             	mov    %rdi,%rax
  26:	c3                   	ret
  27:	80 7f 08 03          	cmpb   $0x3,0x8(%rdi)
  2b:	73 22                	jae    4f <std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)+0x4f>
  2d:	48 8b 06             	mov    (%rsi),%rax
  30:	48 89 07             	mov    %rax,(%rdi)
  33:	c6 47 08 01          	movb   $0x1,0x8(%rdi)
  37:	48 89 f8             	mov    %rdi,%rax
  3a:	c3                   	ret
  3b:	80 7f 08 03          	cmpb   $0x3,0x8(%rdi)
  3f:	73 0e                	jae    4f <std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)+0x4f>
  41:	48 8b 06             	mov    (%rsi),%rax
  44:	48 89 07             	mov    %rax,(%rdi)
  47:	c6 47 08 02          	movb   $0x2,0x8(%rdi)
  4b:	48 89 f8             	mov    %rdi,%rax
  4e:	c3                   	ret
  4f:	0f 0b                	ud2

Disassembly of section .text._D3std7sumtype__T5matchSQwQu__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTmZQlTSQBk__T7FailureTS7kernels11DomainErrorZQBgZQDk8opAssignMFNcKSQFfQFe__TQElTQEgTQDuTQDeZQFbZ17__lambda_L679_C28Z__TQGqTQCfZQGyMFNaNbNiNfKQCxZv:

0000000000000000 <std.sumtype.match!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).__lambda_L679_C28).match!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).match(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)>:
   0:	0f b6 46 08          	movzbl 0x8(%rsi),%eax
   4:	83 f8 02             	cmp    $0x2,%eax
   7:	74 32                	je     3b <std.sumtype.match!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).__lambda_L679_C28).match!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).match(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)+0x3b>
   9:	83 f8 01             	cmp    $0x1,%eax
   c:	74 19                	je     27 <std.sumtype.match!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).__lambda_L679_C28).match!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).match(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)+0x27>
   e:	85 c0                	test   %eax,%eax
  10:	75 3d                	jne    4f <std.sumtype.match!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).__lambda_L679_C28).match!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).match(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)+0x4f>
  12:	48 8b 07             	mov    (%rdi),%rax
  15:	80 78 08 03          	cmpb   $0x3,0x8(%rax)
  19:	73 34                	jae    4f <std.sumtype.match!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).__lambda_L679_C28).match!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).match(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)+0x4f>
  1b:	48 c7 00 00 00 00 00 	movq   $0x0,(%rax)
  22:	c6 40 08 00          	movb   $0x0,0x8(%rax)
  26:	c3                   	ret
  27:	48 8b 07             	mov    (%rdi),%rax
  2a:	80 78 08 03          	cmpb   $0x3,0x8(%rax)
  2e:	73 1f                	jae    4f <std.sumtype.match!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).__lambda_L679_C28).match!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).match(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)+0x4f>
  30:	48 8b 0e             	mov    (%rsi),%rcx
  33:	48 89 08             	mov    %rcx,(%rax)
  36:	c6 40 08 01          	movb   $0x1,0x8(%rax)
  3a:	c3                   	ret
  3b:	48 8b 07             	mov    (%rdi),%rax
  3e:	80 78 08 03          	cmpb   $0x3,0x8(%rax)
  42:	73 0b                	jae    4f <std.sumtype.match!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).__lambda_L679_C28).match!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).match(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)+0x4f>
  44:	48 8b 0e             	mov    (%rsi),%rcx
  47:	48 89 08             	mov    %rcx,(%rax)
  4a:	c6 40 08 02          	movb   $0x2,0x8(%rax)
  4e:	c3                   	ret
  4f:	0f 0b                	ud2

Disassembly of section .text._D3std7sumtype__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTmZQlTSQBk__T7FailureTS7kernels11DomainErrorZQBgZQDk8opAssignMFNaNbNcNiNfSQEyQEx__TQEsTQEnTQEbTQDlZQFiZQBe:

0000000000000000 <std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)>:
   0:	48 8d 44 24 08       	lea    0x8(%rsp),%rax
   5:	0f b6 4c 24 10       	movzbl 0x10(%rsp),%ecx
   a:	83 f9 02             	cmp    $0x2,%ecx
   d:	74 32                	je     41 <std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)+0x41>
   f:	83 f9 01             	cmp    $0x1,%ecx
  12:	74 19                	je     2d <std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)+0x2d>
  14:	85 c9                	test   %ecx,%ecx
  16:	75 3d                	jne    55 <std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)+0x55>
  18:	80 7f 08 03          	cmpb   $0x3,0x8(%rdi)
  1c:	73 37                	jae    55 <std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)+0x55>
  1e:	48 c7 07 00 00 00 00 	movq   $0x0,(%rdi)
  25:	c6 47 08 00          	movb   $0x0,0x8(%rdi)
  29:	48 89 f8             	mov    %rdi,%rax
  2c:	c3                   	ret
  2d:	80 7f 08 03          	cmpb   $0x3,0x8(%rdi)
  31:	73 22                	jae    55 <std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)+0x55>
  33:	48 8b 00             	mov    (%rax),%rax
  36:	48 89 07             	mov    %rax,(%rdi)
  39:	c6 47 08 01          	movb   $0x1,0x8(%rdi)
  3d:	48 89 f8             	mov    %rdi,%rax
  40:	c3                   	ret
  41:	80 7f 08 03          	cmpb   $0x3,0x8(%rdi)
  45:	73 0e                	jae    55 <std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)+0x55>
  47:	48 8b 00             	mov    (%rax),%rax
  4a:	48 89 07             	mov    %rax,(%rdi)
  4d:	c6 47 08 02          	movb   $0x2,0x8(%rdi)
  51:	48 89 f8             	mov    %rdi,%rax
  54:	c3                   	ret
  55:	0f 0b                	ud2

Disassembly of section .text._D3std7sumtype__T5matchSQwQu__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTmZQlTSQBk__T7FailureTS7kernels11DomainErrorZQBgZQDk8opAssignMFNcSQFeQFd__TQEkTQEfTQDtTQDdZQFaZ17__lambda_L697_C24Z__TQGpTQCfZQGxMFNaNbNiNfKQCxZv:

0000000000000000 <std.sumtype.match!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).__lambda_L697_C24).match!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).match(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)>:
   0:	0f b6 46 08          	movzbl 0x8(%rsi),%eax
   4:	83 f8 02             	cmp    $0x2,%eax
   7:	74 32                	je     3b <std.sumtype.match!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).__lambda_L697_C24).match!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).match(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)+0x3b>
   9:	83 f8 01             	cmp    $0x1,%eax
   c:	74 19                	je     27 <std.sumtype.match!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).__lambda_L697_C24).match!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).match(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)+0x27>
   e:	85 c0                	test   %eax,%eax
  10:	75 3d                	jne    4f <std.sumtype.match!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).__lambda_L697_C24).match!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).match(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)+0x4f>
  12:	48 8b 07             	mov    (%rdi),%rax
  15:	80 78 08 03          	cmpb   $0x3,0x8(%rax)
  19:	73 34                	jae    4f <std.sumtype.match!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).__lambda_L697_C24).match!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).match(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)+0x4f>
  1b:	48 c7 00 00 00 00 00 	movq   $0x0,(%rax)
  22:	c6 40 08 00          	movb   $0x0,0x8(%rax)
  26:	c3                   	ret
  27:	48 8b 07             	mov    (%rdi),%rax
  2a:	80 78 08 03          	cmpb   $0x3,0x8(%rax)
  2e:	73 1f                	jae    4f <std.sumtype.match!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).__lambda_L697_C24).match!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).match(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)+0x4f>
  30:	48 8b 0e             	mov    (%rsi),%rcx
  33:	48 89 08             	mov    %rcx,(%rax)
  36:	c6 40 08 01          	movb   $0x1,0x8(%rax)
  3a:	c3                   	ret
  3b:	48 8b 07             	mov    (%rdi),%rax
  3e:	80 78 08 03          	cmpb   $0x3,0x8(%rax)
  42:	73 0b                	jae    4f <std.sumtype.match!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).__lambda_L697_C24).match!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).match(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)+0x4f>
  44:	48 8b 0e             	mov    (%rsi),%rcx
  47:	48 89 08             	mov    %rcx,(%rax)
  4a:	c6 40 08 02          	movb   $0x2,0x8(%rax)
  4e:	c3                   	ret
  4f:	0f 0b                	ud2

Disassembly of section .text._D3std7sumtype__T5matchS4core8internal4hash6hashOfZ__TQBlTxSQCgQCf__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTmZQlTSQBk__T7FailureTS7kernels11DomainErrorZQBgZQDkZQFoFNaNbNiNfKxQEmZm:

0000000000000000 <std.sumtype.match!(core.internal.hash.hashOf).match!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).match(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType))>:
   0:	0f b6 47 08          	movzbl 0x8(%rdi),%eax
   4:	85 c0                	test   %eax,%eax
   6:	0f 84 af 00 00 00    	je     bb <std.sumtype.match!(core.internal.hash.hashOf).match!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).match(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType))+0xbb>
   c:	83 f8 02             	cmp    $0x2,%eax
   f:	74 4c                	je     5d <std.sumtype.match!(core.internal.hash.hashOf).match!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).match(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType))+0x5d>
  11:	83 f8 01             	cmp    $0x1,%eax
  14:	0f 85 a2 00 00 00    	jne    bc <std.sumtype.match!(core.internal.hash.hashOf).match!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).match(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType))+0xbc>
  1a:	48 8b 07             	mov    (%rdi),%rax
  1d:	48 b9 d5 53 42 11 91 7b c3 87 	movabs $0x87c37b91114253d5,%rcx
  27:	48 0f af c8          	imul   %rax,%rcx
  2b:	48 ba 00 00 00 80 ea 29 a1 88 	movabs $0x88a129ea80000000,%rdx
  35:	48 0f af d0          	imul   %rax,%rdx
  39:	48 c1 e9 21          	shr    $0x21,%rcx
  3d:	48 09 d1             	or     %rdx,%rcx
  40:	48 b8 7f 93 45 27 43 ad f5 4c 	movabs $0x4cf5ad432745937f,%rax
  4a:	48 0f af c1          	imul   %rcx,%rax
  4e:	48 c1 c0 1b          	rol    $0x1b,%rax
  52:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
  56:	48 05 29 e7 dc 52    	add    $0x52dce729,%rax
  5c:	c3                   	ret
  5d:	0f b6 07             	movzbl (%rdi),%eax
  60:	48 b9 b3 01 00 00 00 01 00 00 	movabs $0x100000001b3,%rcx
  6a:	48 0f af c1          	imul   %rcx,%rax
  6e:	0f b6 57 01          	movzbl 0x1(%rdi),%edx
  72:	48 31 c2             	xor    %rax,%rdx
  75:	48 0f af d1          	imul   %rcx,%rdx
  79:	0f b6 47 02          	movzbl 0x2(%rdi),%eax
  7d:	48 31 d0             	xor    %rdx,%rax
  80:	48 0f af c1          	imul   %rcx,%rax
  84:	0f b6 57 03          	movzbl 0x3(%rdi),%edx
  88:	48 31 c2             	xor    %rax,%rdx
  8b:	48 0f af d1          	imul   %rcx,%rdx
  8f:	0f b6 47 04          	movzbl 0x4(%rdi),%eax
  93:	48 31 d0             	xor    %rdx,%rax
  96:	48 0f af c1          	imul   %rcx,%rax
  9a:	0f b6 57 05          	movzbl 0x5(%rdi),%edx
  9e:	48 31 c2             	xor    %rax,%rdx
  a1:	48 0f af d1          	imul   %rcx,%rdx
  a5:	0f b6 77 06          	movzbl 0x6(%rdi),%esi
  a9:	48 31 d6             	xor    %rdx,%rsi
  ac:	48 0f af f1          	imul   %rcx,%rsi
  b0:	0f b6 47 07          	movzbl 0x7(%rdi),%eax
  b4:	48 31 f0             	xor    %rsi,%rax
  b7:	48 0f af c1          	imul   %rcx,%rax
  bb:	c3                   	ret
  bc:	0f 0b                	ud2

Disassembly of section .text._D4core8internal4hash__T6hashOfTmZQkFNaNbNiNeMxmmZm:

0000000000000000 <core.internal.hash.hashOf!(ulong).hashOf(scope const(ulong), ulong)>:
   0:	48 b8 d5 53 42 11 91 7b c3 87 	movabs $0x87c37b91114253d5,%rax
   a:	48 0f af c7          	imul   %rdi,%rax
   e:	48 b9 00 00 00 80 ea 29 a1 88 	movabs $0x88a129ea80000000,%rcx
  18:	48 0f af cf          	imul   %rdi,%rcx
  1c:	48 c1 e8 21          	shr    $0x21,%rax
  20:	48 09 c8             	or     %rcx,%rax
  23:	48 b9 7f 93 45 27 43 ad f5 4c 	movabs $0x4cf5ad432745937f,%rcx
  2d:	48 0f af c8          	imul   %rax,%rcx
  31:	48 31 f1             	xor    %rsi,%rcx
  34:	48 c1 c1 1b          	rol    $0x1b,%rcx
  38:	48 8d 04 89          	lea    (%rcx,%rcx,4),%rax
  3c:	48 05 29 e7 dc 52    	add    $0x52dce729,%rax
  42:	c3                   	ret

Disassembly of section .text._D4core8internal7convert__T7toUbyteTS7kernels11DomainErrorZQBgFNaNbNiNeMNkKxSQBoQBjZAxh:

0000000000000000 <core.internal.convert.toUbyte!(kernels.DomainError).toUbyte(scope return ref const(kernels.DomainError))>:
   0:	b8 08 00 00 00       	mov    $0x8,%eax
   5:	48 89 fa             	mov    %rdi,%rdx
   8:	c3                   	ret

Disassembly of section .text._D4core8internal7convert__T22toUbyte_aggregate_ctfeTS7kernels11DomainErrorZQBwFNaNbNiNfMNkKxSQBoQBjZAxh:

0000000000000000 <core.internal.convert.toUbyte_aggregate_ctfe!(kernels.DomainError).toUbyte_aggregate_ctfe(scope return ref const(kernels.DomainError))>:
   0:	41 57                	push   %r15
   2:	41 56                	push   %r14
   4:	53                   	push   %rbx
   5:	49 89 fe             	mov    %rdi,%r14
   8:	bf 08 00 00 00       	mov    $0x8,%edi
   d:	e8 00 00 00 00       	call   12 <core.internal.convert.toUbyte_aggregate_ctfe!(kernels.DomainError).toUbyte_aggregate_ctfe(scope return ref const(kernels.DomainError))+0x12>	e: R_X86_64_PLT32	core.internal.convert.ctfe_alloc(ulong)-0x4
  12:	48 89 c3             	mov    %rax,%rbx
  15:	48 83 f8 04          	cmp    $0x4,%rax
  19:	72 53                	jb     6e <core.internal.convert.toUbyte_aggregate_ctfe!(kernels.DomainError).toUbyte_aggregate_ctfe(scope return ref const(kernels.DomainError))+0x6e>
  1b:	49 89 d7             	mov    %rdx,%r15
  1e:	be 04 00 00 00       	mov    $0x4,%esi
  23:	b9 04 00 00 00       	mov    $0x4,%ecx
  28:	41 b8 01 00 00 00    	mov    $0x1,%r8d
  2e:	48 89 d7             	mov    %rdx,%rdi
  31:	4c 89 f2             	mov    %r14,%rdx
  34:	e8 00 00 00 00       	call   39 <core.internal.convert.toUbyte_aggregate_ctfe!(kernels.DomainError).toUbyte_aggregate_ctfe(scope return ref const(kernels.DomainError))+0x39>	35: R_X86_64_PLT32	_d_array_slice_copy-0x4
  39:	48 83 fb 07          	cmp    $0x7,%rbx
  3d:	76 50                	jbe    8f <core.internal.convert.toUbyte_aggregate_ctfe!(kernels.DomainError).toUbyte_aggregate_ctfe(scope return ref const(kernels.DomainError))+0x8f>
  3f:	49 83 c6 04          	add    $0x4,%r14
  43:	4c 89 ff             	mov    %r15,%rdi
  46:	48 83 c7 04          	add    $0x4,%rdi
  4a:	be 04 00 00 00       	mov    $0x4,%esi
  4f:	b9 04 00 00 00       	mov    $0x4,%ecx
  54:	41 b8 01 00 00 00    	mov    $0x1,%r8d
  5a:	4c 89 f2             	mov    %r14,%rdx
  5d:	e8 00 00 00 00       	call   62 <core.internal.convert.toUbyte_aggregate_ctfe!(kernels.DomainError).toUbyte_aggregate_ctfe(scope return ref const(kernels.DomainError))+0x62>	5e: R_X86_64_PLT32	_d_array_slice_copy-0x4
  62:	48 89 d8             	mov    %rbx,%rax
  65:	4c 89 fa             	mov    %r15,%rdx
  68:	5b                   	pop    %rbx
  69:	41 5e                	pop    %r14
  6b:	41 5f                	pop    %r15
  6d:	c3                   	ret
  6e:	48 8d 35 00 00 00 00 	lea    0x0(%rip),%rsi        # 75 <core.internal.convert.toUbyte_aggregate_ctfe!(kernels.DomainError).toUbyte_aggregate_ctfe(scope return ref const(kernels.DomainError))+0x75>	71: R_X86_64_PC32	.L.str.1-0x4
  75:	bf 3f 00 00 00       	mov    $0x3f,%edi
  7a:	41 b8 04 00 00 00    	mov    $0x4,%r8d
  80:	ba 20 03 00 00       	mov    $0x320,%edx
  85:	31 c9                	xor    %ecx,%ecx
  87:	49 89 d9             	mov    %rbx,%r9
  8a:	e8 00 00 00 00       	call   8f <core.internal.convert.toUbyte_aggregate_ctfe!(kernels.DomainError).toUbyte_aggregate_ctfe(scope return ref const(kernels.DomainError))+0x8f>	8b: R_X86_64_PLT32	_d_arraybounds_slice-0x4
  8f:	48 8d 35 00 00 00 00 	lea    0x0(%rip),%rsi        # 96 <core.internal.convert.toUbyte_aggregate_ctfe!(kernels.DomainError).toUbyte_aggregate_ctfe(scope return ref const(kernels.DomainError))+0x96>	92: R_X86_64_PC32	.L.str.1-0x4
  96:	bf 3f 00 00 00       	mov    $0x3f,%edi
  9b:	b9 04 00 00 00       	mov    $0x4,%ecx
  a0:	41 b8 08 00 00 00    	mov    $0x8,%r8d
  a6:	ba 20 03 00 00       	mov    $0x320,%edx
  ab:	49 89 d9             	mov    %rbx,%r9
  ae:	e8 00 00 00 00       	call   b3 <.L.str.1+0x43>	af: R_X86_64_PLT32	_d_arraybounds_slice-0x4

Disassembly of section .text._D4core8internal7convert__T7toUbyteTkZQlFNaNbNiNeMKxkZAxh:

0000000000000000 <core.internal.convert.toUbyte!(uint).toUbyte(scope ref const(uint))>:
   0:	b8 04 00 00 00       	mov    $0x4,%eax
   5:	48 89 fa             	mov    %rdi,%rdx
   8:	c3                   	ret

Disassembly of section .text._D4core8internal7convert__T21toUbyte_integral_ctfeTkZQBaFNaNbNiNfMNkKxkZAxh:

0000000000000000 <core.internal.convert.toUbyte_integral_ctfe!(uint).toUbyte_integral_ctfe(scope return ref const(uint))>:
   0:	53                   	push   %rbx
   1:	48 89 fb             	mov    %rdi,%rbx
   4:	bf 04 00 00 00       	mov    $0x4,%edi
   9:	e8 00 00 00 00       	call   e <core.internal.convert.toUbyte_integral_ctfe!(uint).toUbyte_integral_ctfe(scope return ref const(uint))+0xe>	a: R_X86_64_PLT32	core.internal.convert.ctfe_alloc(ulong)-0x4
   e:	48 85 c0             	test   %rax,%rax
  11:	74 2a                	je     3d <core.internal.convert.toUbyte_integral_ctfe!(uint).toUbyte_integral_ctfe(scope return ref const(uint))+0x3d>
  13:	8b 0b                	mov    (%rbx),%ecx
  15:	88 0a                	mov    %cl,(%rdx)
  17:	48 83 f8 01          	cmp    $0x1,%rax
  1b:	74 24                	je     41 <core.internal.convert.toUbyte_integral_ctfe!(uint).toUbyte_integral_ctfe(scope return ref const(uint))+0x41>
  1d:	88 6a 01             	mov    %ch,0x1(%rdx)
  20:	48 83 f8 02          	cmp    $0x2,%rax
  24:	74 22                	je     48 <core.internal.convert.toUbyte_integral_ctfe!(uint).toUbyte_integral_ctfe(scope return ref const(uint))+0x48>
  26:	89 ce                	mov    %ecx,%esi
  28:	c1 ee 10             	shr    $0x10,%esi
  2b:	40 88 72 02          	mov    %sil,0x2(%rdx)
  2f:	48 83 f8 03          	cmp    $0x3,%rax
  33:	74 1a                	je     4f <core.internal.convert.toUbyte_integral_ctfe!(uint).toUbyte_integral_ctfe(scope return ref const(uint))+0x4f>
  35:	c1 e9 18             	shr    $0x18,%ecx
  38:	88 4a 03             	mov    %cl,0x3(%rdx)
  3b:	5b                   	pop    %rbx
  3c:	c3                   	ret
  3d:	31 c9                	xor    %ecx,%ecx
  3f:	eb 13                	jmp    54 <core.internal.convert.toUbyte_integral_ctfe!(uint).toUbyte_integral_ctfe(scope return ref const(uint))+0x54>
  41:	b9 01 00 00 00       	mov    $0x1,%ecx
  46:	eb 0c                	jmp    54 <core.internal.convert.toUbyte_integral_ctfe!(uint).toUbyte_integral_ctfe(scope return ref const(uint))+0x54>
  48:	b9 02 00 00 00       	mov    $0x2,%ecx
  4d:	eb 05                	jmp    54 <core.internal.convert.toUbyte_integral_ctfe!(uint).toUbyte_integral_ctfe(scope return ref const(uint))+0x54>
  4f:	b9 03 00 00 00       	mov    $0x3,%ecx
  54:	48 8d 35 00 00 00 00 	lea    0x0(%rip),%rsi        # 5b <core.internal.convert.toUbyte_integral_ctfe!(uint).toUbyte_integral_ctfe(scope return ref const(uint))+0x5b>	57: R_X86_64_PC32	.L.str.1-0x4
  5b:	bf 3f 00 00 00       	mov    $0x3f,%edi
  60:	ba c2 02 00 00       	mov    $0x2c2,%edx
  65:	49 89 c0             	mov    %rax,%r8
  68:	e8 00 00 00 00       	call   6d <core.internal.convert.toUbyte_integral_ctfe!(uint).toUbyte_integral_ctfe(scope return ref const(uint))+0x6d>	69: R_X86_64_PLT32	_d_arraybounds_index-0x4

Disassembly of section .text._D4core8internal4hash__T3fnvZQfFNaNbNiNfMAxhmZm:

0000000000000000 <core.internal.hash.fnv!().fnv(scope const(ubyte)[], ulong)>:
   0:	48 85 ff             	test   %rdi,%rdi
   3:	74 1c                	je     21 <core.internal.hash.fnv!().fnv(scope const(ubyte)[], ulong)+0x21>
   5:	48 b9 b3 01 00 00 00 01 00 00 	movabs $0x100000001b3,%rcx
   f:	41 89 f8             	mov    %edi,%r8d
  12:	41 83 e0 03          	and    $0x3,%r8d
  16:	48 83 ff 04          	cmp    $0x4,%rdi
  1a:	73 09                	jae    25 <core.internal.hash.fnv!().fnv(scope const(ubyte)[], ulong)+0x25>
  1c:	45 31 c9             	xor    %r9d,%r9d
  1f:	eb 4b                	jmp    6c <core.internal.hash.fnv!().fnv(scope const(ubyte)[], ulong)+0x6c>
  21:	48 89 d0             	mov    %rdx,%rax
  24:	c3                   	ret
  25:	48 83 e7 fc          	and    $0xfffffffffffffffc,%rdi
  29:	45 31 c9             	xor    %r9d,%r9d
  2c:	0f 1f 40 00          	nopl   0x0(%rax)
  30:	42 0f b6 04 0e       	movzbl (%rsi,%r9,1),%eax
  35:	48 31 d0             	xor    %rdx,%rax
  38:	48 0f af c1          	imul   %rcx,%rax
  3c:	42 0f b6 54 0e 01    	movzbl 0x1(%rsi,%r9,1),%edx
  42:	48 31 c2             	xor    %rax,%rdx
  45:	48 0f af d1          	imul   %rcx,%rdx
  49:	42 0f b6 44 0e 02    	movzbl 0x2(%rsi,%r9,1),%eax
  4f:	48 31 d0             	xor    %rdx,%rax
  52:	48 0f af c1          	imul   %rcx,%rax
  56:	42 0f b6 54 0e 03    	movzbl 0x3(%rsi,%r9,1),%edx
  5c:	48 31 c2             	xor    %rax,%rdx
  5f:	48 0f af d1          	imul   %rcx,%rdx
  63:	49 83 c1 04          	add    $0x4,%r9
  67:	4c 39 cf             	cmp    %r9,%rdi
  6a:	75 c4                	jne    30 <core.internal.hash.fnv!().fnv(scope const(ubyte)[], ulong)+0x30>
  6c:	48 89 d0             	mov    %rdx,%rax
  6f:	4d 85 c0             	test   %r8,%r8
  72:	74 22                	je     96 <core.internal.hash.fnv!().fnv(scope const(ubyte)[], ulong)+0x96>
  74:	4c 01 ce             	add    %r9,%rsi
  77:	31 ff                	xor    %edi,%edi
  79:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  80:	0f b6 04 3e          	movzbl (%rsi,%rdi,1),%eax
  84:	48 31 d0             	xor    %rdx,%rax
  87:	48 0f af c1          	imul   %rcx,%rax
  8b:	48 ff c7             	inc    %rdi
  8e:	48 89 c2             	mov    %rax,%rdx
  91:	49 39 f8             	cmp    %rdi,%r8
  94:	75 ea                	jne    80 <core.internal.hash.fnv!().fnv(scope const(ubyte)[], ulong)+0x80>
  96:	c3                   	ret

Disassembly of section .text._D4core8lifetime__T4moveTS7kernels5BlockZQwFNaNbNiNfNkMKQBfZQBj:

0000000000000000 <_D4core8lifetime__T4moveTS7kernels5BlockZQwFNaNbNiNfNkMKQBfZQBj>:
   0:	53                   	push   %rbx
   1:	48 89 fb             	mov    %rdi,%rbx
   4:	ba 00 01 00 00       	mov    $0x100,%edx
   9:	e8 00 00 00 00       	call   e <_D4core8lifetime__T4moveTS7kernels5BlockZQwFNaNbNiNfNkMKQBfZQBj+0xe>	a: R_X86_64_PLT32	memcpy-0x4
   e:	48 89 d8             	mov    %rbx,%rax
  11:	5b                   	pop    %rbx
  12:	c3                   	ret

Disassembly of section .text._D4core8lifetime__T8moveImplTS7kernels5BlockZQBaFNaNbNiNfNkMKQBgZQBk:

0000000000000000 <_D4core8lifetime__T8moveImplTS7kernels5BlockZQBaFNaNbNiNfNkMKQBgZQBk>:
   0:	53                   	push   %rbx
   1:	48 89 fb             	mov    %rdi,%rbx
   4:	ba 00 01 00 00       	mov    $0x100,%edx
   9:	e8 00 00 00 00       	call   e <_D4core8lifetime__T8moveImplTS7kernels5BlockZQBaFNaNbNiNfNkMKQBgZQBk+0xe>	a: R_X86_64_PLT32	memcpy-0x4
   e:	48 89 d8             	mov    %rbx,%rax
  11:	5b                   	pop    %rbx
  12:	c3                   	ret

Disassembly of section .text._D4core8lifetime__T15trustedMoveImplTS7kernels5BlockZQBiFNaNbNiNeNkMKQBgZQBk:

0000000000000000 <_D4core8lifetime__T15trustedMoveImplTS7kernels5BlockZQBiFNaNbNiNeNkMKQBgZQBk>:
   0:	53                   	push   %rbx
   1:	48 89 fb             	mov    %rdi,%rbx
   4:	ba 00 01 00 00       	mov    $0x100,%edx
   9:	e8 00 00 00 00       	call   e <_D4core8lifetime__T15trustedMoveImplTS7kernels5BlockZQBiFNaNbNiNeNkMKQBgZQBk+0xe>	a: R_X86_64_PLT32	memcpy-0x4
   e:	48 89 d8             	mov    %rbx,%rax
  11:	5b                   	pop    %rbx
  12:	c3                   	ret

Disassembly of section .text._D4core8lifetime__T15moveEmplaceImplTS7kernels5BlockZQBiFNaNbNiNfMKQBeNkMKQBlZv:

0000000000000000 <_D4core8lifetime__T15moveEmplaceImplTS7kernels5BlockZQBiFNaNbNiNfMKQBeNkMKQBlZv>:
   0:	ba 00 01 00 00       	mov    $0x100,%edx
   5:	e9 00 00 00 00       	jmp    a <_D4core8lifetime__T15moveEmplaceImplTS7kernels5BlockZQBiFNaNbNiNfMKQBeNkMKQBlZv+0xa>	6: R_X86_64_PLT32	memcpy-0x4

Disassembly of section .text._D7error_d__T6ResultTS7kernels5BlockTSQq11DomainErrorZQBp11requireLiveMxFNaNbNiNfZv:

0000000000000000 <error_d.Result!(kernels.Block, kernels.DomainError).Result.requireLive() const>:
   0:	c3                   	ret

Disassembly of section .text._D7error_d__T6ResultTS7kernels5BlockTSQq11DomainErrorZQBp6__ctorMFNaNbNcNiNfKSQCy__TQCtTQCpTQCdZQDfZQx:

0000000000000000 <error_d.Result!(kernels.Block, kernels.DomainError).Result.this(ref error_d.Result!(kernels.Block, kernels.DomainError).Result)>:
   0:	0f b6 86 00 01 00 00 	movzbl 0x100(%rsi),%eax
   7:	83 f8 02             	cmp    $0x2,%eax
   a:	74 2e                	je     3a <error_d.Result!(kernels.Block, kernels.DomainError).Result.this(ref error_d.Result!(kernels.Block, kernels.DomainError).Result)+0x3a>
   c:	83 f8 01             	cmp    $0x1,%eax
   f:	74 14                	je     25 <error_d.Result!(kernels.Block, kernels.DomainError).Result.this(ref error_d.Result!(kernels.Block, kernels.DomainError).Result)+0x25>
  11:	85 c0                	test   %eax,%eax
  13:	0f 85 8d 00 00 00    	jne    a6 <error_d.Result!(kernels.Block, kernels.DomainError).Result.this(ref error_d.Result!(kernels.Block, kernels.DomainError).Result)+0xa6>
  19:	ba 08 01 00 00       	mov    $0x108,%edx
  1e:	31 f6                	xor    %esi,%esi
  20:	e9 00 00 00 00       	jmp    25 <error_d.Result!(kernels.Block, kernels.DomainError).Result.this(ref error_d.Result!(kernels.Block, kernels.DomainError).Result)+0x25>	21: R_X86_64_PLT32	memset-0x4
  25:	48 c7 87 00 01 00 00 01 00 00 00 	movq   $0x1,0x100(%rdi)
  30:	ba 00 01 00 00       	mov    $0x100,%edx
  35:	e9 00 00 00 00       	jmp    3a <error_d.Result!(kernels.Block, kernels.DomainError).Result.this(ref error_d.Result!(kernels.Block, kernels.DomainError).Result)+0x3a>	36: R_X86_64_PLT32	memcpy-0x4
  3a:	0f 57 c0             	xorps  %xmm0,%xmm0
  3d:	0f 11 87 f8 00 00 00 	movups %xmm0,0xf8(%rdi)
  44:	0f 11 87 e8 00 00 00 	movups %xmm0,0xe8(%rdi)
  4b:	0f 11 87 d8 00 00 00 	movups %xmm0,0xd8(%rdi)
  52:	0f 11 87 c8 00 00 00 	movups %xmm0,0xc8(%rdi)
  59:	0f 11 87 b8 00 00 00 	movups %xmm0,0xb8(%rdi)
  60:	0f 11 87 a8 00 00 00 	movups %xmm0,0xa8(%rdi)
  67:	0f 11 87 98 00 00 00 	movups %xmm0,0x98(%rdi)
  6e:	0f 11 87 88 00 00 00 	movups %xmm0,0x88(%rdi)
  75:	0f 11 47 78          	movups %xmm0,0x78(%rdi)
  79:	0f 11 47 68          	movups %xmm0,0x68(%rdi)
  7d:	0f 11 47 58          	movups %xmm0,0x58(%rdi)
  81:	0f 11 47 48          	movups %xmm0,0x48(%rdi)
  85:	0f 11 47 38          	movups %xmm0,0x38(%rdi)
  89:	0f 11 47 28          	movups %xmm0,0x28(%rdi)
  8d:	0f 11 47 18          	movups %xmm0,0x18(%rdi)
  91:	0f 11 47 08          	movups %xmm0,0x8(%rdi)
  95:	48 8b 06             	mov    (%rsi),%rax
  98:	48 89 07             	mov    %rax,(%rdi)
  9b:	c6 87 00 01 00 00 02 	movb   $0x2,0x100(%rdi)
  a2:	48 89 f8             	mov    %rdi,%rax
  a5:	c3                   	ret
  a6:	0f 0b                	ud2

Disassembly of section .text._D7error_d__T6ResultTS7kernels5BlockTSQq11DomainErrorZQBp__T11copyStorageTS3std7sumtype__T7SumTypeTSQDu5EmptyTSQEf__T7SuccessTQEbZQnTSQFc__T7FailureTQEiZQnZQCoZQDwFNaNbNiNfKQDvZQDz:

0000000000000000 <error_d.Result!(kernels.Block, kernels.DomainError).Result.copyStorage!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).copyStorage(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)>:
   0:	53                   	push   %rbx
   1:	0f b6 86 00 01 00 00 	movzbl 0x100(%rsi),%eax
   8:	83 f8 02             	cmp    $0x2,%eax
   b:	74 3e                	je     4b <error_d.Result!(kernels.Block, kernels.DomainError).Result.copyStorage!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).copyStorage(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)+0x4b>
   d:	83 f8 01             	cmp    $0x1,%eax
  10:	74 1c                	je     2e <error_d.Result!(kernels.Block, kernels.DomainError).Result.copyStorage!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).copyStorage(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)+0x2e>
  12:	85 c0                	test   %eax,%eax
  14:	0f 85 9e 00 00 00    	jne    b8 <error_d.Result!(kernels.Block, kernels.DomainError).Result.copyStorage!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).copyStorage(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)+0xb8>
  1a:	ba 08 01 00 00       	mov    $0x108,%edx
  1f:	48 89 fb             	mov    %rdi,%rbx
  22:	31 f6                	xor    %esi,%esi
  24:	e8 00 00 00 00       	call   29 <error_d.Result!(kernels.Block, kernels.DomainError).Result.copyStorage!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).copyStorage(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)+0x29>	25: R_X86_64_PLT32	memset-0x4
  29:	48 89 d8             	mov    %rbx,%rax
  2c:	5b                   	pop    %rbx
  2d:	c3                   	ret
  2e:	48 c7 87 00 01 00 00 01 00 00 00 	movq   $0x1,0x100(%rdi)
  39:	ba 00 01 00 00       	mov    $0x100,%edx
  3e:	48 89 fb             	mov    %rdi,%rbx
  41:	e8 00 00 00 00       	call   46 <error_d.Result!(kernels.Block, kernels.DomainError).Result.copyStorage!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).copyStorage(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)+0x46>	42: R_X86_64_PLT32	memcpy-0x4
  46:	48 89 d8             	mov    %rbx,%rax
  49:	5b                   	pop    %rbx
  4a:	c3                   	ret
  4b:	0f 57 c0             	xorps  %xmm0,%xmm0
  4e:	0f 11 87 f8 00 00 00 	movups %xmm0,0xf8(%rdi)
  55:	0f 11 87 e8 00 00 00 	movups %xmm0,0xe8(%rdi)
  5c:	0f 11 87 d8 00 00 00 	movups %xmm0,0xd8(%rdi)
  63:	0f 11 87 c8 00 00 00 	movups %xmm0,0xc8(%rdi)
  6a:	0f 11 87 b8 00 00 00 	movups %xmm0,0xb8(%rdi)
  71:	0f 11 87 a8 00 00 00 	movups %xmm0,0xa8(%rdi)
  78:	0f 11 87 98 00 00 00 	movups %xmm0,0x98(%rdi)
  7f:	0f 11 87 88 00 00 00 	movups %xmm0,0x88(%rdi)
  86:	0f 11 47 78          	movups %xmm0,0x78(%rdi)
  8a:	0f 11 47 68          	movups %xmm0,0x68(%rdi)
  8e:	0f 11 47 58          	movups %xmm0,0x58(%rdi)
  92:	0f 11 47 48          	movups %xmm0,0x48(%rdi)
  96:	0f 11 47 38          	movups %xmm0,0x38(%rdi)
  9a:	0f 11 47 28          	movups %xmm0,0x28(%rdi)
  9e:	0f 11 47 18          	movups %xmm0,0x18(%rdi)
  a2:	0f 11 47 08          	movups %xmm0,0x8(%rdi)
  a6:	48 8b 06             	mov    (%rsi),%rax
  a9:	48 89 07             	mov    %rax,(%rdi)
  ac:	c6 87 00 01 00 00 02 	movb   $0x2,0x100(%rdi)
  b3:	48 89 f8             	mov    %rdi,%rax
  b6:	5b                   	pop    %rbx
  b7:	c3                   	ret
  b8:	0f 0b                	ud2

Disassembly of section .text._D7error_d__T6ResultTS7kernels5BlockTSQq11DomainErrorZQBp6__ctorMxFNaNbNcNiNfKxSQDa__TQCvTQCrTQCfZQDhZxQy:

0000000000000000 <error_d.Result!(kernels.Block, kernels.DomainError).Result.this(ref const(error_d.Result!(kernels.Block, kernels.DomainError).Result)) const>:
   0:	0f b6 86 00 01 00 00 	movzbl 0x100(%rsi),%eax
   7:	83 f8 02             	cmp    $0x2,%eax
   a:	74 2e                	je     3a <error_d.Result!(kernels.Block, kernels.DomainError).Result.this(ref const(error_d.Result!(kernels.Block, kernels.DomainError).Result)) const+0x3a>
   c:	83 f8 01             	cmp    $0x1,%eax
   f:	74 14                	je     25 <error_d.Result!(kernels.Block, kernels.DomainError).Result.this(ref const(error_d.Result!(kernels.Block, kernels.DomainError).Result)) const+0x25>
  11:	85 c0                	test   %eax,%eax
  13:	0f 85 8d 00 00 00    	jne    a6 <error_d.Result!(kernels.Block, kernels.DomainError).Result.this(ref const(error_d.Result!(kernels.Block, kernels.DomainError).Result)) const+0xa6>
  19:	ba 08 01 00 00       	mov    $0x108,%edx
  1e:	31 f6                	xor    %esi,%esi
  20:	e9 00 00 00 00       	jmp    25 <error_d.Result!(kernels.Block, kernels.DomainError).Result.this(ref const(error_d.Result!(kernels.Block, kernels.DomainError).Result)) const+0x25>	21: R_X86_64_PLT32	memset-0x4
  25:	48 c7 87 00 01 00 00 01 00 00 00 	movq   $0x1,0x100(%rdi)
  30:	ba 00 01 00 00       	mov    $0x100,%edx
  35:	e9 00 00 00 00       	jmp    3a <error_d.Result!(kernels.Block, kernels.DomainError).Result.this(ref const(error_d.Result!(kernels.Block, kernels.DomainError).Result)) const+0x3a>	36: R_X86_64_PLT32	memcpy-0x4
  3a:	0f 57 c0             	xorps  %xmm0,%xmm0
  3d:	0f 11 87 f8 00 00 00 	movups %xmm0,0xf8(%rdi)
  44:	0f 11 87 e8 00 00 00 	movups %xmm0,0xe8(%rdi)
  4b:	0f 11 87 d8 00 00 00 	movups %xmm0,0xd8(%rdi)
  52:	0f 11 87 c8 00 00 00 	movups %xmm0,0xc8(%rdi)
  59:	0f 11 87 b8 00 00 00 	movups %xmm0,0xb8(%rdi)
  60:	0f 11 87 a8 00 00 00 	movups %xmm0,0xa8(%rdi)
  67:	0f 11 87 98 00 00 00 	movups %xmm0,0x98(%rdi)
  6e:	0f 11 87 88 00 00 00 	movups %xmm0,0x88(%rdi)
  75:	0f 11 47 78          	movups %xmm0,0x78(%rdi)
  79:	0f 11 47 68          	movups %xmm0,0x68(%rdi)
  7d:	0f 11 47 58          	movups %xmm0,0x58(%rdi)
  81:	0f 11 47 48          	movups %xmm0,0x48(%rdi)
  85:	0f 11 47 38          	movups %xmm0,0x38(%rdi)
  89:	0f 11 47 28          	movups %xmm0,0x28(%rdi)
  8d:	0f 11 47 18          	movups %xmm0,0x18(%rdi)
  91:	0f 11 47 08          	movups %xmm0,0x8(%rdi)
  95:	48 8b 06             	mov    (%rsi),%rax
  98:	48 89 07             	mov    %rax,(%rdi)
  9b:	c6 87 00 01 00 00 02 	movb   $0x2,0x100(%rdi)
  a2:	48 89 f8             	mov    %rdi,%rax
  a5:	c3                   	ret
  a6:	0f 0b                	ud2

Disassembly of section .text._D7error_d__T6ResultTS7kernels5BlockTSQq11DomainErrorZQBp__T11copyStorageTxS3std7sumtype__T7SumTypeTSQDv5EmptyTSQEg__T7SuccessTQEcZQnTSQFd__T7FailureTQEjZQnZQCoZQDxFNaNbNiNfKxQDwZxQEb:

0000000000000000 <error_d.Result!(kernels.Block, kernels.DomainError).Result.copyStorage!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).copyStorage(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType))>:
   0:	53                   	push   %rbx
   1:	0f b6 86 00 01 00 00 	movzbl 0x100(%rsi),%eax
   8:	83 f8 02             	cmp    $0x2,%eax
   b:	74 3e                	je     4b <error_d.Result!(kernels.Block, kernels.DomainError).Result.copyStorage!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).copyStorage(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType))+0x4b>
   d:	83 f8 01             	cmp    $0x1,%eax
  10:	74 1c                	je     2e <error_d.Result!(kernels.Block, kernels.DomainError).Result.copyStorage!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).copyStorage(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType))+0x2e>
  12:	85 c0                	test   %eax,%eax
  14:	0f 85 9e 00 00 00    	jne    b8 <error_d.Result!(kernels.Block, kernels.DomainError).Result.copyStorage!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).copyStorage(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType))+0xb8>
  1a:	ba 08 01 00 00       	mov    $0x108,%edx
  1f:	48 89 fb             	mov    %rdi,%rbx
  22:	31 f6                	xor    %esi,%esi
  24:	e8 00 00 00 00       	call   29 <error_d.Result!(kernels.Block, kernels.DomainError).Result.copyStorage!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).copyStorage(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType))+0x29>	25: R_X86_64_PLT32	memset-0x4
  29:	48 89 d8             	mov    %rbx,%rax
  2c:	5b                   	pop    %rbx
  2d:	c3                   	ret
  2e:	48 c7 87 00 01 00 00 01 00 00 00 	movq   $0x1,0x100(%rdi)
  39:	ba 00 01 00 00       	mov    $0x100,%edx
  3e:	48 89 fb             	mov    %rdi,%rbx
  41:	e8 00 00 00 00       	call   46 <error_d.Result!(kernels.Block, kernels.DomainError).Result.copyStorage!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).copyStorage(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType))+0x46>	42: R_X86_64_PLT32	memcpy-0x4
  46:	48 89 d8             	mov    %rbx,%rax
  49:	5b                   	pop    %rbx
  4a:	c3                   	ret
  4b:	0f 57 c0             	xorps  %xmm0,%xmm0
  4e:	0f 11 87 f8 00 00 00 	movups %xmm0,0xf8(%rdi)
  55:	0f 11 87 e8 00 00 00 	movups %xmm0,0xe8(%rdi)
  5c:	0f 11 87 d8 00 00 00 	movups %xmm0,0xd8(%rdi)
  63:	0f 11 87 c8 00 00 00 	movups %xmm0,0xc8(%rdi)
  6a:	0f 11 87 b8 00 00 00 	movups %xmm0,0xb8(%rdi)
  71:	0f 11 87 a8 00 00 00 	movups %xmm0,0xa8(%rdi)
  78:	0f 11 87 98 00 00 00 	movups %xmm0,0x98(%rdi)
  7f:	0f 11 87 88 00 00 00 	movups %xmm0,0x88(%rdi)
  86:	0f 11 47 78          	movups %xmm0,0x78(%rdi)
  8a:	0f 11 47 68          	movups %xmm0,0x68(%rdi)
  8e:	0f 11 47 58          	movups %xmm0,0x58(%rdi)
  92:	0f 11 47 48          	movups %xmm0,0x48(%rdi)
  96:	0f 11 47 38          	movups %xmm0,0x38(%rdi)
  9a:	0f 11 47 28          	movups %xmm0,0x28(%rdi)
  9e:	0f 11 47 18          	movups %xmm0,0x18(%rdi)
  a2:	0f 11 47 08          	movups %xmm0,0x8(%rdi)
  a6:	48 8b 06             	mov    (%rsi),%rax
  a9:	48 89 07             	mov    %rax,(%rdi)
  ac:	c6 87 00 01 00 00 02 	movb   $0x2,0x100(%rdi)
  b3:	48 89 f8             	mov    %rdi,%rax
  b6:	5b                   	pop    %rbx
  b7:	c3                   	ret
  b8:	0f 0b                	ud2

Disassembly of section .text._D7error_d__T6ResultTS7kernels5BlockTSQq11DomainErrorZQBp6__ctorMyFNaNbNcNiNfKySQDa__TQCvTQCrTQCfZQDhZyQy:

0000000000000000 <error_d.Result!(kernels.Block, kernels.DomainError).Result.this(ref immutable(error_d.Result!(kernels.Block, kernels.DomainError).Result)) immutable>:
   0:	0f b6 86 00 01 00 00 	movzbl 0x100(%rsi),%eax
   7:	83 f8 02             	cmp    $0x2,%eax
   a:	74 2e                	je     3a <error_d.Result!(kernels.Block, kernels.DomainError).Result.this(ref immutable(error_d.Result!(kernels.Block, kernels.DomainError).Result)) immutable+0x3a>
   c:	83 f8 01             	cmp    $0x1,%eax
   f:	74 14                	je     25 <error_d.Result!(kernels.Block, kernels.DomainError).Result.this(ref immutable(error_d.Result!(kernels.Block, kernels.DomainError).Result)) immutable+0x25>
  11:	85 c0                	test   %eax,%eax
  13:	0f 85 8d 00 00 00    	jne    a6 <error_d.Result!(kernels.Block, kernels.DomainError).Result.this(ref immutable(error_d.Result!(kernels.Block, kernels.DomainError).Result)) immutable+0xa6>
  19:	ba 08 01 00 00       	mov    $0x108,%edx
  1e:	31 f6                	xor    %esi,%esi
  20:	e9 00 00 00 00       	jmp    25 <error_d.Result!(kernels.Block, kernels.DomainError).Result.this(ref immutable(error_d.Result!(kernels.Block, kernels.DomainError).Result)) immutable+0x25>	21: R_X86_64_PLT32	memset-0x4
  25:	48 c7 87 00 01 00 00 01 00 00 00 	movq   $0x1,0x100(%rdi)
  30:	ba 00 01 00 00       	mov    $0x100,%edx
  35:	e9 00 00 00 00       	jmp    3a <error_d.Result!(kernels.Block, kernels.DomainError).Result.this(ref immutable(error_d.Result!(kernels.Block, kernels.DomainError).Result)) immutable+0x3a>	36: R_X86_64_PLT32	memcpy-0x4
  3a:	0f 57 c0             	xorps  %xmm0,%xmm0
  3d:	0f 11 87 f8 00 00 00 	movups %xmm0,0xf8(%rdi)
  44:	0f 11 87 e8 00 00 00 	movups %xmm0,0xe8(%rdi)
  4b:	0f 11 87 d8 00 00 00 	movups %xmm0,0xd8(%rdi)
  52:	0f 11 87 c8 00 00 00 	movups %xmm0,0xc8(%rdi)
  59:	0f 11 87 b8 00 00 00 	movups %xmm0,0xb8(%rdi)
  60:	0f 11 87 a8 00 00 00 	movups %xmm0,0xa8(%rdi)
  67:	0f 11 87 98 00 00 00 	movups %xmm0,0x98(%rdi)
  6e:	0f 11 87 88 00 00 00 	movups %xmm0,0x88(%rdi)
  75:	0f 11 47 78          	movups %xmm0,0x78(%rdi)
  79:	0f 11 47 68          	movups %xmm0,0x68(%rdi)
  7d:	0f 11 47 58          	movups %xmm0,0x58(%rdi)
  81:	0f 11 47 48          	movups %xmm0,0x48(%rdi)
  85:	0f 11 47 38          	movups %xmm0,0x38(%rdi)
  89:	0f 11 47 28          	movups %xmm0,0x28(%rdi)
  8d:	0f 11 47 18          	movups %xmm0,0x18(%rdi)
  91:	0f 11 47 08          	movups %xmm0,0x8(%rdi)
  95:	48 8b 06             	mov    (%rsi),%rax
  98:	48 89 07             	mov    %rax,(%rdi)
  9b:	c6 87 00 01 00 00 02 	movb   $0x2,0x100(%rdi)
  a2:	48 89 f8             	mov    %rdi,%rax
  a5:	c3                   	ret
  a6:	0f 0b                	ud2

Disassembly of section .text._D7error_d__T6ResultTS7kernels5BlockTSQq11DomainErrorZQBp__T11copyStorageTyS3std7sumtype__T7SumTypeTSQDv5EmptyTSQEg__T7SuccessTQEcZQnTSQFd__T7FailureTQEjZQnZQCoZQDxFNaNbNiNfKyQDwZyQEb:

0000000000000000 <error_d.Result!(kernels.Block, kernels.DomainError).Result.copyStorage!(immutable(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).copyStorage(ref immutable(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType))>:
   0:	53                   	push   %rbx
   1:	0f b6 86 00 01 00 00 	movzbl 0x100(%rsi),%eax
   8:	83 f8 02             	cmp    $0x2,%eax
   b:	74 3e                	je     4b <error_d.Result!(kernels.Block, kernels.DomainError).Result.copyStorage!(immutable(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).copyStorage(ref immutable(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType))+0x4b>
   d:	83 f8 01             	cmp    $0x1,%eax
  10:	74 1c                	je     2e <error_d.Result!(kernels.Block, kernels.DomainError).Result.copyStorage!(immutable(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).copyStorage(ref immutable(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType))+0x2e>
  12:	85 c0                	test   %eax,%eax
  14:	0f 85 9e 00 00 00    	jne    b8 <error_d.Result!(kernels.Block, kernels.DomainError).Result.copyStorage!(immutable(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).copyStorage(ref immutable(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType))+0xb8>
  1a:	ba 08 01 00 00       	mov    $0x108,%edx
  1f:	48 89 fb             	mov    %rdi,%rbx
  22:	31 f6                	xor    %esi,%esi
  24:	e8 00 00 00 00       	call   29 <error_d.Result!(kernels.Block, kernels.DomainError).Result.copyStorage!(immutable(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).copyStorage(ref immutable(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType))+0x29>	25: R_X86_64_PLT32	memset-0x4
  29:	48 89 d8             	mov    %rbx,%rax
  2c:	5b                   	pop    %rbx
  2d:	c3                   	ret
  2e:	48 c7 87 00 01 00 00 01 00 00 00 	movq   $0x1,0x100(%rdi)
  39:	ba 00 01 00 00       	mov    $0x100,%edx
  3e:	48 89 fb             	mov    %rdi,%rbx
  41:	e8 00 00 00 00       	call   46 <error_d.Result!(kernels.Block, kernels.DomainError).Result.copyStorage!(immutable(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).copyStorage(ref immutable(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType))+0x46>	42: R_X86_64_PLT32	memcpy-0x4
  46:	48 89 d8             	mov    %rbx,%rax
  49:	5b                   	pop    %rbx
  4a:	c3                   	ret
  4b:	0f 57 c0             	xorps  %xmm0,%xmm0
  4e:	0f 11 87 f8 00 00 00 	movups %xmm0,0xf8(%rdi)
  55:	0f 11 87 e8 00 00 00 	movups %xmm0,0xe8(%rdi)
  5c:	0f 11 87 d8 00 00 00 	movups %xmm0,0xd8(%rdi)
  63:	0f 11 87 c8 00 00 00 	movups %xmm0,0xc8(%rdi)
  6a:	0f 11 87 b8 00 00 00 	movups %xmm0,0xb8(%rdi)
  71:	0f 11 87 a8 00 00 00 	movups %xmm0,0xa8(%rdi)
  78:	0f 11 87 98 00 00 00 	movups %xmm0,0x98(%rdi)
  7f:	0f 11 87 88 00 00 00 	movups %xmm0,0x88(%rdi)
  86:	0f 11 47 78          	movups %xmm0,0x78(%rdi)
  8a:	0f 11 47 68          	movups %xmm0,0x68(%rdi)
  8e:	0f 11 47 58          	movups %xmm0,0x58(%rdi)
  92:	0f 11 47 48          	movups %xmm0,0x48(%rdi)
  96:	0f 11 47 38          	movups %xmm0,0x38(%rdi)
  9a:	0f 11 47 28          	movups %xmm0,0x28(%rdi)
  9e:	0f 11 47 18          	movups %xmm0,0x18(%rdi)
  a2:	0f 11 47 08          	movups %xmm0,0x8(%rdi)
  a6:	48 8b 06             	mov    (%rsi),%rax
  a9:	48 89 07             	mov    %rax,(%rdi)
  ac:	c6 87 00 01 00 00 02 	movb   $0x2,0x100(%rdi)
  b3:	48 89 f8             	mov    %rdi,%rax
  b6:	5b                   	pop    %rbx
  b7:	c3                   	ret
  b8:	0f 0b                	ud2

Disassembly of section .text._D7error_d__T6ResultTS7kernels5BlockTSQq11DomainErrorZQBp6__ctorMFNaNbNcNiNfS3std7sumtype__T7SumTypeTSQDw5EmptyTSQEh__T7SuccessTQEdZQnTSQFe__T7FailureTQEkZQnZQCoZSQGf__TQGaTQFwTQFkZQGm:

0000000000000000 <error_d.Result!(kernels.Block, kernels.DomainError).Result.this(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)>:
   0:	53                   	push   %rbx
   1:	48 89 fb             	mov    %rdi,%rbx
   4:	48 8d 74 24 10       	lea    0x10(%rsp),%rsi
   9:	ba 08 01 00 00       	mov    $0x108,%edx
   e:	e8 00 00 00 00       	call   13 <error_d.Result!(kernels.Block, kernels.DomainError).Result.this(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)+0x13>	f: R_X86_64_PLT32	memcpy-0x4
  13:	48 89 d8             	mov    %rbx,%rax
  16:	5b                   	pop    %rbx
  17:	c3                   	ret

Disassembly of section .text._D4core8lifetime__T4moveTS3std7sumtype__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTS7kernels5BlockZQzTSQBy__T7FailureTSQBj11DomainErrorZQBbZQDtZQEtFNaNbNiNfNkMKQFdZQFh:

0000000000000000 <_D4core8lifetime__T4moveTS3std7sumtype__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTS7kernels5BlockZQzTSQBy__T7FailureTSQBj11DomainErrorZQBbZQDtZQEtFNaNbNiNfNkMKQFdZQFh>:
   0:	53                   	push   %rbx
   1:	48 89 fb             	mov    %rdi,%rbx
   4:	ba 08 01 00 00       	mov    $0x108,%edx
   9:	e8 00 00 00 00       	call   e <_D4core8lifetime__T4moveTS3std7sumtype__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTS7kernels5BlockZQzTSQBy__T7FailureTSQBj11DomainErrorZQBbZQDtZQEtFNaNbNiNfNkMKQFdZQFh+0xe>	a: R_X86_64_PLT32	memcpy-0x4
   e:	48 89 d8             	mov    %rbx,%rax
  11:	5b                   	pop    %rbx
  12:	c3                   	ret

Disassembly of section .text._D7error_d__T6ResultTS7kernels5BlockTSQq11DomainErrorZQBp5stateMxFNaNbNiNfZEQCw11ResultState:

0000000000000000 <error_d.Result!(kernels.Block, kernels.DomainError).Result.state() const>:
   0:	0f b6 87 00 01 00 00 	movzbl 0x100(%rdi),%eax
   7:	83 f8 03             	cmp    $0x3,%eax
   a:	73 01                	jae    d <error_d.Result!(kernels.Block, kernels.DomainError).Result.state() const+0xd>
   c:	c3                   	ret
   d:	0f 0b                	ud2

Disassembly of section .text._D3std7sumtype__T5matchS7error_d__T6ResultTS7kernels5BlockTSQq11DomainErrorZQBp5stateMxFNaNbNiNfZ17__lambda_L162_C31Z__TQDzTxSQEuQEt__T7SumTypeTSQEr5EmptyTSQFc__T7SuccessTQEyZQnTSQFz__T7FailureTQFfZQnZQCoZQHgMFNaNbNiNfKxQDrZEQHt11ResultState:

0000000000000000 <std.sumtype.match!(error_d.Result!(kernels.Block, kernels.DomainError).Result.state().__lambda_L162_C31).match!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).match(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType))>:
   0:	0f b6 86 00 01 00 00 	movzbl 0x100(%rsi),%eax
   7:	83 f8 03             	cmp    $0x3,%eax
   a:	73 01                	jae    d <std.sumtype.match!(error_d.Result!(kernels.Block, kernels.DomainError).Result.state().__lambda_L162_C31).match!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).match(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType))+0xd>
   c:	c3                   	ret
   d:	0f 0b                	ud2

Disassembly of section .text._D7error_d__T6ResultTS7kernels5BlockTSQq11DomainErrorZQBp8hasValueMxFNaNbNiNfZb:

0000000000000000 <error_d.Result!(kernels.Block, kernels.DomainError).Result.hasValue() const>:
   0:	0f b6 87 00 01 00 00 	movzbl 0x100(%rdi),%eax
   7:	3c 03                	cmp    $0x3,%al
   9:	73 03                	jae    e <error_d.Result!(kernels.Block, kernels.DomainError).Result.hasValue() const+0xe>
   b:	24 01                	and    $0x1,%al
   d:	c3                   	ret
   e:	0f 0b                	ud2

Disassembly of section .text._D7error_d__T6ResultTS7kernels5BlockTSQq11DomainErrorZQBp8hasErrorMxFNaNbNiNfZb:

0000000000000000 <error_d.Result!(kernels.Block, kernels.DomainError).Result.hasError() const>:
   0:	0f b6 87 00 01 00 00 	movzbl 0x100(%rdi),%eax
   7:	3c 03                	cmp    $0x3,%al
   9:	73 12                	jae    1d <error_d.Result!(kernels.Block, kernels.DomainError).Result.hasError() const+0x1d>
   b:	0f b6 c0             	movzbl %al,%eax
   e:	83 e0 07             	and    $0x7,%eax
  11:	b9 04 00 00 00       	mov    $0x4,%ecx
  16:	0f a3 c1             	bt     %eax,%ecx
  19:	0f 92 c0             	setb   %al
  1c:	c3                   	ret
  1d:	0f 0b                	ud2

Disassembly of section .text._D7error_d__T6ResultTS7kernels5BlockTSQq11DomainErrorZQBp7isEmptyMxFNaNbNiNfZb:

0000000000000000 <error_d.Result!(kernels.Block, kernels.DomainError).Result.isEmpty() const>:
   0:	0f b6 8f 00 01 00 00 	movzbl 0x100(%rdi),%ecx
   7:	80 f9 03             	cmp    $0x3,%cl
   a:	73 08                	jae    14 <error_d.Result!(kernels.Block, kernels.DomainError).Result.isEmpty() const+0x14>
   c:	80 e1 07             	and    $0x7,%cl
   f:	b0 01                	mov    $0x1,%al
  11:	d2 e8                	shr    %cl,%al
  13:	c3                   	ret
  14:	0f 0b                	ud2

Disassembly of section .text._D7error_d__T6ResultTS7kernels5BlockTSQq11DomainErrorZQBp8opAssignMFNaNbNiNfSQCx__TQCsTQCoTQCcZQDeZv:

0000000000000000 <error_d.Result!(kernels.Block, kernels.DomainError).Result.opAssign(error_d.Result!(kernels.Block, kernels.DomainError).Result)>:
   0:	41 56                	push   %r14
   2:	53                   	push   %rbx
   3:	50                   	push   %rax
   4:	48 89 f3             	mov    %rsi,%rbx
   7:	49 89 fe             	mov    %rdi,%r14
   a:	ba 08 01 00 00       	mov    $0x108,%edx
   f:	31 f6                	xor    %esi,%esi
  11:	e8 00 00 00 00       	call   16 <error_d.Result!(kernels.Block, kernels.DomainError).Result.opAssign(error_d.Result!(kernels.Block, kernels.DomainError).Result)+0x16>	12: R_X86_64_PLT32	memset-0x4
  16:	4c 39 f3             	cmp    %r14,%rbx
  19:	74 17                	je     32 <error_d.Result!(kernels.Block, kernels.DomainError).Result.opAssign(error_d.Result!(kernels.Block, kernels.DomainError).Result)+0x32>
  1b:	ba 08 01 00 00       	mov    $0x108,%edx
  20:	4c 89 f7             	mov    %r14,%rdi
  23:	48 89 de             	mov    %rbx,%rsi
  26:	48 83 c4 08          	add    $0x8,%rsp
  2a:	5b                   	pop    %rbx
  2b:	41 5e                	pop    %r14
  2d:	e9 00 00 00 00       	jmp    32 <error_d.Result!(kernels.Block, kernels.DomainError).Result.opAssign(error_d.Result!(kernels.Block, kernels.DomainError).Result)+0x32>	2e: R_X86_64_PLT32	memcpy-0x4
  32:	48 83 c4 08          	add    $0x8,%rsp
  36:	5b                   	pop    %rbx
  37:	41 5e                	pop    %r14
  39:	c3                   	ret

Disassembly of section .text._D7error_d__T6ResultTS7kernels5BlockTSQq11DomainErrorZQBp7replaceMFNaNbNiNeKS3std7sumtype__T7SumTypeTSQDw5EmptyTSQEh__T7SuccessTQEdZQnTSQFe__T7FailureTQEkZQnZQCoZv:

0000000000000000 <error_d.Result!(kernels.Block, kernels.DomainError).Result.replace(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)>:
   0:	41 56                	push   %r14
   2:	53                   	push   %rbx
   3:	50                   	push   %rax
   4:	48 89 f3             	mov    %rsi,%rbx
   7:	49 89 fe             	mov    %rdi,%r14
   a:	ba 08 01 00 00       	mov    $0x108,%edx
   f:	31 f6                	xor    %esi,%esi
  11:	e8 00 00 00 00       	call   16 <error_d.Result!(kernels.Block, kernels.DomainError).Result.replace(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)+0x16>	12: R_X86_64_PLT32	memset-0x4
  16:	4c 39 f3             	cmp    %r14,%rbx
  19:	74 17                	je     32 <error_d.Result!(kernels.Block, kernels.DomainError).Result.replace(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)+0x32>
  1b:	ba 08 01 00 00       	mov    $0x108,%edx
  20:	4c 89 f7             	mov    %r14,%rdi
  23:	48 89 de             	mov    %rbx,%rsi
  26:	48 83 c4 08          	add    $0x8,%rsp
  2a:	5b                   	pop    %rbx
  2b:	41 5e                	pop    %r14
  2d:	e9 00 00 00 00       	jmp    32 <error_d.Result!(kernels.Block, kernels.DomainError).Result.replace(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)+0x32>	2e: R_X86_64_PLT32	memcpy-0x4
  32:	48 83 c4 08          	add    $0x8,%rsp
  36:	5b                   	pop    %rbx
  37:	41 5e                	pop    %r14
  39:	c3                   	ret

Disassembly of section .text._D4core8lifetime__T4moveTS3std7sumtype__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTS7kernels5BlockZQzTSQBy__T7FailureTSQBj11DomainErrorZQBbZQDtZQEtFNaNbNiNfKQFaKQFeZv:

0000000000000000 <core.lifetime.move!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).move(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType, ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)>:
   0:	48 39 f7             	cmp    %rsi,%rdi
   3:	74 13                	je     18 <core.lifetime.move!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).move(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType, ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)+0x18>
   5:	48 89 f8             	mov    %rdi,%rax
   8:	ba 08 01 00 00       	mov    $0x108,%edx
   d:	48 89 f7             	mov    %rsi,%rdi
  10:	48 89 c6             	mov    %rax,%rsi
  13:	e9 00 00 00 00       	jmp    18 <core.lifetime.move!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).move(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType, ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)+0x18>	14: R_X86_64_PLT32	memcpy-0x4
  18:	c3                   	ret

Disassembly of section .text._D7error_d__T6ResultTS7kernels5BlockTSQq11DomainErrorZQBp11takeStorageMFNaNbNiNeZS3std7sumtype__T7SumTypeTSQEb5EmptyTSQEm__T7SuccessTQEiZQnTSQFj__T7FailureTQEpZQnZQCo:

0000000000000000 <error_d.Result!(kernels.Block, kernels.DomainError).Result.takeStorage()>:
   0:	41 57                	push   %r15
   2:	41 56                	push   %r14
   4:	53                   	push   %rbx
   5:	48 81 ec 10 01 00 00 	sub    $0x110,%rsp
   c:	48 89 f3             	mov    %rsi,%rbx
   f:	49 89 fe             	mov    %rdi,%r14
  12:	4c 8d 7c 24 08       	lea    0x8(%rsp),%r15
  17:	ba 08 01 00 00       	mov    $0x108,%edx
  1c:	4c 89 ff             	mov    %r15,%rdi
  1f:	e8 00 00 00 00       	call   24 <error_d.Result!(kernels.Block, kernels.DomainError).Result.takeStorage()+0x24>	20: R_X86_64_PLT32	memcpy-0x4
  24:	ba 08 01 00 00       	mov    $0x108,%edx
  29:	48 89 df             	mov    %rbx,%rdi
  2c:	31 f6                	xor    %esi,%esi
  2e:	e8 00 00 00 00       	call   33 <error_d.Result!(kernels.Block, kernels.DomainError).Result.takeStorage()+0x33>	2f: R_X86_64_PLT32	memset-0x4
  33:	ba 08 01 00 00       	mov    $0x108,%edx
  38:	4c 89 f7             	mov    %r14,%rdi
  3b:	4c 89 fe             	mov    %r15,%rsi
  3e:	e8 00 00 00 00       	call   43 <error_d.Result!(kernels.Block, kernels.DomainError).Result.takeStorage()+0x43>	3f: R_X86_64_PLT32	memcpy-0x4
  43:	4c 89 f0             	mov    %r14,%rax
  46:	48 81 c4 10 01 00 00 	add    $0x110,%rsp
  4d:	5b                   	pop    %rbx
  4e:	41 5e                	pop    %r14
  50:	41 5f                	pop    %r15
  52:	c3                   	ret

Disassembly of section .text._D7error_d__T6ResultTS7kernels5BlockTSQq11DomainErrorZQBp11__xopEqualsMxFKxSQCw__TQCrTQCnTQCbZQDdZb:

0000000000000000 <error_d.Result!(kernels.Block, kernels.DomainError).Result.__xopEquals(ref const(error_d.Result!(kernels.Block, kernels.DomainError).Result)) const>:
   0:	0f b6 8f 00 01 00 00 	movzbl 0x100(%rdi),%ecx
   7:	0f b6 86 00 01 00 00 	movzbl 0x100(%rsi),%eax
   e:	48 8d 04 40          	lea    (%rax,%rax,2),%rax
  12:	48 01 c8             	add    %rcx,%rax
  15:	48 83 f8 08          	cmp    $0x8,%rax
  19:	77 35                	ja     50 <error_d.Result!(kernels.Block, kernels.DomainError).Result.__xopEquals(ref const(error_d.Result!(kernels.Block, kernels.DomainError).Result)) const+0x50>
  1b:	48 8d 0d 00 00 00 00 	lea    0x0(%rip),%rcx        # 22 <error_d.Result!(kernels.Block, kernels.DomainError).Result.__xopEquals(ref const(error_d.Result!(kernels.Block, kernels.DomainError).Result)) const+0x22>	1e: R_X86_64_PC32	.rodata._D7error_d__T6ResultTS7kernels5BlockTSQq11DomainErrorZQBp11__xopEqualsMxFKxSQCw__TQCrTQCnTQCbZQDdZb-0x4
  22:	48 63 04 81          	movslq (%rcx,%rax,4),%rax
  26:	48 01 c8             	add    %rcx,%rax
  29:	ff e0                	jmp    *%rax
  2b:	31 c0                	xor    %eax,%eax
  2d:	c3                   	ret
  2e:	50                   	push   %rax
  2f:	ba 00 01 00 00       	mov    $0x100,%edx
  34:	e8 00 00 00 00       	call   39 <error_d.Result!(kernels.Block, kernels.DomainError).Result.__xopEquals(ref const(error_d.Result!(kernels.Block, kernels.DomainError).Result)) const+0x39>	35: R_X86_64_PLT32	bcmp-0x4
  39:	85 c0                	test   %eax,%eax
  3b:	0f 94 c0             	sete   %al
  3e:	48 83 c4 08          	add    $0x8,%rsp
  42:	c3                   	ret
  43:	b0 01                	mov    $0x1,%al
  45:	c3                   	ret
  46:	48 8b 07             	mov    (%rdi),%rax
  49:	48 3b 06             	cmp    (%rsi),%rax
  4c:	0f 94 c0             	sete   %al
  4f:	c3                   	ret
  50:	0f 0b                	ud2

Disassembly of section .text._D3std7sumtype__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTS7kernels5BlockZQzTSQBy__T7FailureTSQBj11DomainErrorZQBbZQDt__T8opEqualsTxSQFaQEz__TQEuTQEpTQEdTQCzZQFkTxQBfZQBuMxFNaNbNiNfKxQBzZb:

0000000000000000 <std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opEquals!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType), const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).opEquals(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)) const>:
   0:	0f b6 8f 00 01 00 00 	movzbl 0x100(%rdi),%ecx
   7:	0f b6 86 00 01 00 00 	movzbl 0x100(%rsi),%eax
   e:	48 8d 04 40          	lea    (%rax,%rax,2),%rax
  12:	48 01 c8             	add    %rcx,%rax
  15:	48 83 f8 08          	cmp    $0x8,%rax
  19:	77 35                	ja     50 <std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opEquals!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType), const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).opEquals(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)) const+0x50>
  1b:	48 8d 0d 00 00 00 00 	lea    0x0(%rip),%rcx        # 22 <std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opEquals!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType), const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).opEquals(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)) const+0x22>	1e: R_X86_64_PC32	.rodata._D3std7sumtype__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTS7kernels5BlockZQzTSQBy__T7FailureTSQBj11DomainErrorZQBbZQDt__T8opEqualsTxSQFaQEz__TQEuTQEpTQEdTQCzZQFkTxQBfZQBuMxFNaNbNiNfKxQBzZb-0x4
  22:	48 63 04 81          	movslq (%rcx,%rax,4),%rax
  26:	48 01 c8             	add    %rcx,%rax
  29:	ff e0                	jmp    *%rax
  2b:	31 c0                	xor    %eax,%eax
  2d:	c3                   	ret
  2e:	50                   	push   %rax
  2f:	ba 00 01 00 00       	mov    $0x100,%edx
  34:	e8 00 00 00 00       	call   39 <std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opEquals!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType), const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).opEquals(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)) const+0x39>	35: R_X86_64_PLT32	bcmp-0x4
  39:	85 c0                	test   %eax,%eax
  3b:	0f 94 c0             	sete   %al
  3e:	48 83 c4 08          	add    $0x8,%rsp
  42:	c3                   	ret
  43:	b0 01                	mov    $0x1,%al
  45:	c3                   	ret
  46:	48 8b 07             	mov    (%rdi),%rax
  49:	48 3b 06             	cmp    (%rsi),%rax
  4c:	0f 94 c0             	sete   %al
  4f:	c3                   	ret
  50:	0f 0b                	ud2

Disassembly of section .text._D7error_d__T6ResultTS7kernels5BlockTSQq11DomainErrorZQBp9__xtoHashFNbNeKxSQCv__TQCqTQCmTQCaZQDcZm:

0000000000000000 <error_d.Result!(kernels.Block, kernels.DomainError).Result.__xtoHash(ref const(error_d.Result!(kernels.Block, kernels.DomainError).Result))>:
   0:	48 89 fe             	mov    %rdi,%rsi
   3:	48 8b 3d 00 00 00 00 	mov    0x0(%rip),%rdi        # a <error_d.Result!(kernels.Block, kernels.DomainError).Result.__xtoHash(ref const(error_d.Result!(kernels.Block, kernels.DomainError).Result))+0xa>	6: R_X86_64_REX_GOTPCRELX	initializer for TypeInfo_xS3std7sumtype__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTS7kernels5BlockZQzTSQBy__T7FailureTSQBj11DomainErrorZQBbZQDt-0x4
   a:	48 8b 07             	mov    (%rdi),%rax
   d:	48 8b 40 30          	mov    0x30(%rax),%rax
  11:	ff e0                	jmp    *%rax

Disassembly of section .text._D3std7sumtype__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTS7kernels5BlockZQzTSQBy__T7FailureTSQBj11DomainErrorZQBbZQDt6toHashMxFNaNbNiNfZm:

0000000000000000 <std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.toHash() const>:
   0:	0f b6 87 00 01 00 00 	movzbl 0x100(%rdi),%eax
   7:	85 c0                	test   %eax,%eax
   9:	74 77                	je     82 <std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.toHash() const+0x82>
   b:	48 89 fe             	mov    %rdi,%rsi
   e:	83 f8 02             	cmp    $0x2,%eax
  11:	74 11                	je     24 <std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.toHash() const+0x24>
  13:	83 f8 01             	cmp    $0x1,%eax
  16:	75 6b                	jne    83 <std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.toHash() const+0x83>
  18:	bf 00 01 00 00       	mov    $0x100,%edi
  1d:	31 d2                	xor    %edx,%edx
  1f:	e9 00 00 00 00       	jmp    24 <std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.toHash() const+0x24>	20: R_X86_64_PLT32	core.internal.hash._bytesHashAligned(scope const(ubyte)[], ulong)-0x4
  24:	0f b6 06             	movzbl (%rsi),%eax
  27:	48 b9 b3 01 00 00 00 01 00 00 	movabs $0x100000001b3,%rcx
  31:	48 0f af c1          	imul   %rcx,%rax
  35:	0f b6 56 01          	movzbl 0x1(%rsi),%edx
  39:	48 31 c2             	xor    %rax,%rdx
  3c:	48 0f af d1          	imul   %rcx,%rdx
  40:	0f b6 46 02          	movzbl 0x2(%rsi),%eax
  44:	48 31 d0             	xor    %rdx,%rax
  47:	48 0f af c1          	imul   %rcx,%rax
  4b:	0f b6 56 03          	movzbl 0x3(%rsi),%edx
  4f:	48 31 c2             	xor    %rax,%rdx
  52:	48 0f af d1          	imul   %rcx,%rdx
  56:	0f b6 46 04          	movzbl 0x4(%rsi),%eax
  5a:	48 31 d0             	xor    %rdx,%rax
  5d:	48 0f af c1          	imul   %rcx,%rax
  61:	0f b6 56 05          	movzbl 0x5(%rsi),%edx
  65:	48 31 c2             	xor    %rax,%rdx
  68:	48 0f af d1          	imul   %rcx,%rdx
  6c:	0f b6 7e 06          	movzbl 0x6(%rsi),%edi
  70:	48 31 d7             	xor    %rdx,%rdi
  73:	48 0f af f9          	imul   %rcx,%rdi
  77:	0f b6 46 07          	movzbl 0x7(%rsi),%eax
  7b:	48 31 f8             	xor    %rdi,%rax
  7e:	48 0f af c1          	imul   %rcx,%rax
  82:	c3                   	ret
  83:	0f 0b                	ud2

Disassembly of section .text._D3std7sumtype__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTS7kernels5BlockZQzTSQBy__T7FailureTSQBj11DomainErrorZQBbZQDt11__xopEqualsMxFKxSQFeQFd__TQEyTQEtTQEhTQDdZQFoZb:

0000000000000000 <std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.__xopEquals(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)) const>:
   0:	0f b6 8f 00 01 00 00 	movzbl 0x100(%rdi),%ecx
   7:	0f b6 86 00 01 00 00 	movzbl 0x100(%rsi),%eax
   e:	48 8d 04 40          	lea    (%rax,%rax,2),%rax
  12:	48 01 c8             	add    %rcx,%rax
  15:	48 83 f8 08          	cmp    $0x8,%rax
  19:	77 35                	ja     50 <std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.__xopEquals(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)) const+0x50>
  1b:	48 8d 0d 00 00 00 00 	lea    0x0(%rip),%rcx        # 22 <std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.__xopEquals(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)) const+0x22>	1e: R_X86_64_PC32	.rodata._D3std7sumtype__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTS7kernels5BlockZQzTSQBy__T7FailureTSQBj11DomainErrorZQBbZQDt11__xopEqualsMxFKxSQFeQFd__TQEyTQEtTQEhTQDdZQFoZb-0x4
  22:	48 63 04 81          	movslq (%rcx,%rax,4),%rax
  26:	48 01 c8             	add    %rcx,%rax
  29:	ff e0                	jmp    *%rax
  2b:	31 c0                	xor    %eax,%eax
  2d:	c3                   	ret
  2e:	50                   	push   %rax
  2f:	ba 00 01 00 00       	mov    $0x100,%edx
  34:	e8 00 00 00 00       	call   39 <std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.__xopEquals(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)) const+0x39>	35: R_X86_64_PLT32	bcmp-0x4
  39:	85 c0                	test   %eax,%eax
  3b:	0f 94 c0             	sete   %al
  3e:	48 83 c4 08          	add    $0x8,%rsp
  42:	c3                   	ret
  43:	b0 01                	mov    $0x1,%al
  45:	c3                   	ret
  46:	48 8b 07             	mov    (%rdi),%rax
  49:	48 3b 06             	cmp    (%rsi),%rax
  4c:	0f 94 c0             	sete   %al
  4f:	c3                   	ret
  50:	0f 0b                	ud2

Disassembly of section .text._D3std7sumtype__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTS7kernels5BlockZQzTSQBy__T7FailureTSQBj11DomainErrorZQBbZQDt6__ctorMFNaNbNcNiNfQEgZSQFjQFi__TQFdTQEyTQEmTQDiZQFt:

0000000000000000 <std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.this(error_d.Empty)>:
   0:	48 89 f8             	mov    %rdi,%rax
   3:	c6 87 00 01 00 00 00 	movb   $0x0,0x100(%rdi)
   a:	c3                   	ret

Disassembly of section .text._D4core8lifetime__T7forwardS_D3std7sumtype__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTS7kernels5BlockZQzTSQBy__T7FailureTSQBj11DomainErrorZQBbZQDt6__ctorMFNcQDyZ5valueQEiZ__T3fwdS_DQFuQFt__TQFoTQFjTQExTQDtZQGeQClMFNcQGfZQChQGmZQCbMFNaNbNdNiNfZQHg:

0000000000000000 <core.lifetime.forward!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.this(error_d.Empty).value).fwd!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.this(error_d.Empty).value).fwd()>:
   0:	48 89 f8             	mov    %rdi,%rax
   3:	c3                   	ret

Disassembly of section .text._D3std7sumtype__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTS7kernels5BlockZQzTSQBy__T7FailureTSQBj11DomainErrorZQBbZQDt6__ctorMxFNaNbNcNiNfxSQEiQEdZxSQFqQFp__TQFkTQFfTQEtTQDpZQGa:

0000000000000000 <std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.this(const(error_d.Empty)) const>:
   0:	48 89 f8             	mov    %rdi,%rax
   3:	c6 87 00 01 00 00 00 	movb   $0x0,0x100(%rdi)
   a:	c3                   	ret

Disassembly of section .text._D3std7sumtype__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTS7kernels5BlockZQzTSQBy__T7FailureTSQBj11DomainErrorZQBbZQDt6__ctorMyFNaNbNcNiNfySQEiQEdZySQFqQFp__TQFkTQFfTQEtTQDpZQGa:

0000000000000000 <std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.this(immutable(error_d.Empty)) immutable>:
   0:	48 89 f8             	mov    %rdi,%rax
   3:	c6 87 00 01 00 00 00 	movb   $0x0,0x100(%rdi)
   a:	c3                   	ret

Disassembly of section .text._D3std7sumtype__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTS7kernels5BlockZQzTSQBy__T7FailureTSQBj11DomainErrorZQBbZQDt6__ctorMFNaNbNcNiNfQDqZSQFjQFi__TQFdTQEyTQEmTQDiZQFt:

0000000000000000 <std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.this(error_d.Success!(kernels.Block).Success)>:
   0:	53                   	push   %rbx
   1:	48 89 fb             	mov    %rdi,%rbx
   4:	48 8d 74 24 10       	lea    0x10(%rsp),%rsi
   9:	ba 00 01 00 00       	mov    $0x100,%edx
   e:	e8 00 00 00 00       	call   13 <std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.this(error_d.Success!(kernels.Block).Success)+0x13>	f: R_X86_64_PLT32	memcpy-0x4
  13:	c6 83 00 01 00 00 01 	movb   $0x1,0x100(%rbx)
  1a:	48 89 d8             	mov    %rbx,%rax
  1d:	5b                   	pop    %rbx
  1e:	c3                   	ret

Disassembly of section .text._D4core8lifetime__T7forwardS_D3std7sumtype__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTS7kernels5BlockZQzTSQBy__T7FailureTSQBj11DomainErrorZQBbZQDt6__ctorMFNcQDiZ5valueQDsZ__T3fwdS_DQFuQFt__TQFoTQFjTQExTQDtZQGeQClMFNcQFpZQChQFwZQCbMFNaNbNdNiNfZQGq:

0000000000000000 <core.lifetime.forward!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.this(error_d.Success!(kernels.Block).Success).value).fwd!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.this(error_d.Success!(kernels.Block).Success).value).fwd()>:
   0:	53                   	push   %rbx
   1:	48 89 fb             	mov    %rdi,%rbx
   4:	ba 00 01 00 00       	mov    $0x100,%edx
   9:	e8 00 00 00 00       	call   e <core.lifetime.forward!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.this(error_d.Success!(kernels.Block).Success).value).fwd!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.this(error_d.Success!(kernels.Block).Success).value).fwd()+0xe>	a: R_X86_64_PLT32	memcpy-0x4
   e:	48 89 d8             	mov    %rbx,%rax
  11:	5b                   	pop    %rbx
  12:	c3                   	ret

Disassembly of section .text._D4core8lifetime__T4moveTS7error_d__T7SuccessTS7kernels5BlockZQzZQBuFNaNbNiNfNkMKQCeZQCi:

0000000000000000 <_D4core8lifetime__T4moveTS7error_d__T7SuccessTS7kernels5BlockZQzZQBuFNaNbNiNfNkMKQCeZQCi>:
   0:	53                   	push   %rbx
   1:	48 89 fb             	mov    %rdi,%rbx
   4:	ba 00 01 00 00       	mov    $0x100,%edx
   9:	e8 00 00 00 00       	call   e <_D4core8lifetime__T4moveTS7error_d__T7SuccessTS7kernels5BlockZQzZQBuFNaNbNiNfNkMKQCeZQCi+0xe>	a: R_X86_64_PLT32	memcpy-0x4
   e:	48 89 d8             	mov    %rbx,%rax
  11:	5b                   	pop    %rbx
  12:	c3                   	ret

Disassembly of section .text._D3std7sumtype__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTS7kernels5BlockZQzTSQBy__T7FailureTSQBj11DomainErrorZQBbZQDt6__ctorMxFNaNbNcNiNfxSQEi__TQDtTQDoZQEbZxSQGbQGa__TQFvTQFqTQFeTQEaZQGl:

0000000000000000 <std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.this(const(error_d.Success!(kernels.Block).Success)) const>:
   0:	53                   	push   %rbx
   1:	48 89 fb             	mov    %rdi,%rbx
   4:	48 8d 74 24 10       	lea    0x10(%rsp),%rsi
   9:	ba 00 01 00 00       	mov    $0x100,%edx
   e:	e8 00 00 00 00       	call   13 <std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.this(const(error_d.Success!(kernels.Block).Success)) const+0x13>	f: R_X86_64_PLT32	memcpy-0x4
  13:	c6 83 00 01 00 00 01 	movb   $0x1,0x100(%rbx)
  1a:	48 89 d8             	mov    %rbx,%rax
  1d:	5b                   	pop    %rbx
  1e:	c3                   	ret

Disassembly of section .text._D3std7sumtype__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTS7kernels5BlockZQzTSQBy__T7FailureTSQBj11DomainErrorZQBbZQDt6__ctorMyFNaNbNcNiNfySQEi__TQDtTQDoZQEbZySQGbQGa__TQFvTQFqTQFeTQEaZQGl:

0000000000000000 <std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.this(immutable(error_d.Success!(kernels.Block).Success)) immutable>:
   0:	53                   	push   %rbx
   1:	48 89 fb             	mov    %rdi,%rbx
   4:	48 8d 74 24 10       	lea    0x10(%rsp),%rsi
   9:	ba 00 01 00 00       	mov    $0x100,%edx
   e:	e8 00 00 00 00       	call   13 <std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.this(immutable(error_d.Success!(kernels.Block).Success)) immutable+0x13>	f: R_X86_64_PLT32	memcpy-0x4
  13:	c6 83 00 01 00 00 01 	movb   $0x1,0x100(%rbx)
  1a:	48 89 d8             	mov    %rbx,%rax
  1d:	5b                   	pop    %rbx
  1e:	c3                   	ret

Disassembly of section .text._D3std7sumtype__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTS7kernels5BlockZQzTSQBy__T7FailureTSQBj11DomainErrorZQBbZQDt6__ctorMFNaNbNcNiNfQCiZSQFjQFi__TQFdTQEyTQEmTQDiZQFt:

0000000000000000 <std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.this(error_d.Failure!(kernels.DomainError).Failure)>:
   0:	48 89 f8             	mov    %rdi,%rax
   3:	48 89 37             	mov    %rsi,(%rdi)
   6:	c6 87 00 01 00 00 02 	movb   $0x2,0x100(%rdi)
   d:	c3                   	ret

Disassembly of section .text._D4core8lifetime__T7forwardS_D3std7sumtype__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTS7kernels5BlockZQzTSQBy__T7FailureTSQBj11DomainErrorZQBbZQDt6__ctorMFNcQCaZ5valueQCkZ__T3fwdS_DQFuQFt__TQFoTQFjTQExTQDtZQGeQClMFNcQEhZQChQEoZQCbMFNaNbNdNiNfZQFi:

0000000000000000 <core.lifetime.forward!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.this(error_d.Failure!(kernels.DomainError).Failure).value).fwd!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.this(error_d.Failure!(kernels.DomainError).Failure).value).fwd()>:
   0:	48 8b 07             	mov    (%rdi),%rax
   3:	c3                   	ret

Disassembly of section .text._D3std7sumtype__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTS7kernels5BlockZQzTSQBy__T7FailureTSQBj11DomainErrorZQBbZQDt6__ctorMxFNaNbNcNiNfxSQEi__TQCkTQCfZQCsZxSQGbQGa__TQFvTQFqTQFeTQEaZQGl:

0000000000000000 <std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.this(const(error_d.Failure!(kernels.DomainError).Failure)) const>:
   0:	48 89 f8             	mov    %rdi,%rax
   3:	48 89 37             	mov    %rsi,(%rdi)
   6:	c6 87 00 01 00 00 02 	movb   $0x2,0x100(%rdi)
   d:	c3                   	ret

Disassembly of section .text._D3std7sumtype__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTS7kernels5BlockZQzTSQBy__T7FailureTSQBj11DomainErrorZQBbZQDt6__ctorMyFNaNbNcNiNfySQEi__TQCkTQCfZQCsZySQGbQGa__TQFvTQFqTQFeTQEaZQGl:

0000000000000000 <std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.this(immutable(error_d.Failure!(kernels.DomainError).Failure)) immutable>:
   0:	48 89 f8             	mov    %rdi,%rax
   3:	48 89 37             	mov    %rsi,(%rdi)
   6:	c6 87 00 01 00 00 02 	movb   $0x2,0x100(%rdi)
   d:	c3                   	ret

Disassembly of section .text._D3std7sumtype__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTS7kernels5BlockZQzTSQBy__T7FailureTSQBj11DomainErrorZQBbZQDt8opAssignMFNaNbNcNiNfQEiZSQFlQFk__TQFfTQFaTQEoTQDkZQFv:

0000000000000000 <std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(error_d.Empty)>:
   0:	80 bf 00 01 00 00 03 	cmpb   $0x3,0x100(%rdi)
   7:	0f 83 96 00 00 00    	jae    a3 <std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(error_d.Empty)+0xa3>
   d:	53                   	push   %rbx
   e:	48 81 ec 00 01 00 00 	sub    $0x100,%rsp
  15:	48 89 fb             	mov    %rdi,%rbx
  18:	0f 57 c0             	xorps  %xmm0,%xmm0
  1b:	0f 11 84 24 f0 00 00 00 	movups %xmm0,0xf0(%rsp)
  23:	0f 11 84 24 e1 00 00 00 	movups %xmm0,0xe1(%rsp)
  2b:	0f 11 84 24 d1 00 00 00 	movups %xmm0,0xd1(%rsp)
  33:	0f 11 84 24 c1 00 00 00 	movups %xmm0,0xc1(%rsp)
  3b:	0f 11 84 24 b1 00 00 00 	movups %xmm0,0xb1(%rsp)
  43:	0f 11 84 24 a1 00 00 00 	movups %xmm0,0xa1(%rsp)
  4b:	0f 11 84 24 91 00 00 00 	movups %xmm0,0x91(%rsp)
  53:	0f 11 84 24 81 00 00 00 	movups %xmm0,0x81(%rsp)
  5b:	0f 11 44 24 71       	movups %xmm0,0x71(%rsp)
  60:	0f 11 44 24 61       	movups %xmm0,0x61(%rsp)
  65:	0f 11 44 24 51       	movups %xmm0,0x51(%rsp)
  6a:	0f 11 44 24 41       	movups %xmm0,0x41(%rsp)
  6f:	0f 11 44 24 31       	movups %xmm0,0x31(%rsp)
  74:	0f 11 44 24 21       	movups %xmm0,0x21(%rsp)
  79:	0f 11 44 24 11       	movups %xmm0,0x11(%rsp)
  7e:	0f 11 44 24 01       	movups %xmm0,0x1(%rsp)
  83:	48 89 e6             	mov    %rsp,%rsi
  86:	ba 00 01 00 00       	mov    $0x100,%edx
  8b:	e8 00 00 00 00       	call   90 <std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(error_d.Empty)+0x90>	8c: R_X86_64_PLT32	memcpy-0x4
  90:	c6 83 00 01 00 00 00 	movb   $0x0,0x100(%rbx)
  97:	48 89 d8             	mov    %rbx,%rax
  9a:	48 81 c4 00 01 00 00 	add    $0x100,%rsp
  a1:	5b                   	pop    %rbx
  a2:	c3                   	ret
  a3:	0f 0b                	ud2

Disassembly of section .text._D3std7sumtype__T5matchSQwQu14destroyIfOwnerZ__TQBfTSQBzQBy__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTS7kernels5BlockZQzTSQBy__T7FailureTSQBj11DomainErrorZQBbZQDtZQFqFNaNbNiNfKQEuZv:

0000000000000000 <std.sumtype.match!(std.sumtype.destroyIfOwner).match!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).match(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)>:
   0:	80 bf 00 01 00 00 03 	cmpb   $0x3,0x100(%rdi)
   7:	73 01                	jae    a <std.sumtype.match!(std.sumtype.destroyIfOwner).match!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).match(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)+0xa>
   9:	c3                   	ret
   a:	0f 0b                	ud2

Disassembly of section .text._D4core8lifetime__T7forwardS_D3std7sumtype__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTS7kernels5BlockZQzTSQBy__T7FailureTSQBj11DomainErrorZQBbZQDt8opAssignMFNcQEaZ3rhsQEiZ__T3fwdS_DQFuQFt__TQFoTQFjTQExTQDtZQGeQClMFNcQGfZQCfQGmZQCbMFNaNbNdNiNfZQHg:

0000000000000000 <core.lifetime.forward!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(error_d.Empty).rhs).fwd!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(error_d.Empty).rhs).fwd()>:
   0:	48 89 f8             	mov    %rdi,%rax
   3:	c3                   	ret

Disassembly of section .text._D3std7sumtype__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTS7kernels5BlockZQzTSQBy__T7FailureTSQBj11DomainErrorZQBbZQDt8opAssignMFNaNbNcNiNfQDsZSQFlQFk__TQFfTQFaTQEoTQDkZQFv:

0000000000000000 <std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(error_d.Success!(kernels.Block).Success)>:
   0:	80 bf 00 01 00 00 03 	cmpb   $0x3,0x100(%rdi)
   7:	73 1f                	jae    28 <std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(error_d.Success!(kernels.Block).Success)+0x28>
   9:	53                   	push   %rbx
   a:	48 89 fb             	mov    %rdi,%rbx
   d:	48 8d 74 24 10       	lea    0x10(%rsp),%rsi
  12:	ba 00 01 00 00       	mov    $0x100,%edx
  17:	e8 00 00 00 00       	call   1c <std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(error_d.Success!(kernels.Block).Success)+0x1c>	18: R_X86_64_PLT32	memcpy-0x4
  1c:	c6 83 00 01 00 00 01 	movb   $0x1,0x100(%rbx)
  23:	48 89 d8             	mov    %rbx,%rax
  26:	5b                   	pop    %rbx
  27:	c3                   	ret
  28:	0f 0b                	ud2

Disassembly of section .text._D4core8lifetime__T7forwardS_D3std7sumtype__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTS7kernels5BlockZQzTSQBy__T7FailureTSQBj11DomainErrorZQBbZQDt8opAssignMFNcQDkZ3rhsQDsZ__T3fwdS_DQFuQFt__TQFoTQFjTQExTQDtZQGeQClMFNcQFpZQCfQFwZQCbMFNaNbNdNiNfZQGq:

0000000000000000 <core.lifetime.forward!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(error_d.Success!(kernels.Block).Success).rhs).fwd!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(error_d.Success!(kernels.Block).Success).rhs).fwd()>:
   0:	53                   	push   %rbx
   1:	48 89 fb             	mov    %rdi,%rbx
   4:	ba 00 01 00 00       	mov    $0x100,%edx
   9:	e8 00 00 00 00       	call   e <core.lifetime.forward!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(error_d.Success!(kernels.Block).Success).rhs).fwd!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(error_d.Success!(kernels.Block).Success).rhs).fwd()+0xe>	a: R_X86_64_PLT32	memcpy-0x4
   e:	48 89 d8             	mov    %rbx,%rax
  11:	5b                   	pop    %rbx
  12:	c3                   	ret

Disassembly of section .text._D3std7sumtype__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTS7kernels5BlockZQzTSQBy__T7FailureTSQBj11DomainErrorZQBbZQDt8opAssignMFNaNbNcNiNfQCkZSQFlQFk__TQFfTQFaTQEoTQDkZQFv:

0000000000000000 <std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(error_d.Failure!(kernels.DomainError).Failure)>:
   0:	80 bf 00 01 00 00 03 	cmpb   $0x3,0x100(%rdi)
   7:	73 6d                	jae    76 <std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(error_d.Failure!(kernels.DomainError).Failure)+0x76>
   9:	48 89 37             	mov    %rsi,(%rdi)
   c:	0f 57 c0             	xorps  %xmm0,%xmm0
   f:	0f 11 47 08          	movups %xmm0,0x8(%rdi)
  13:	0f 11 47 18          	movups %xmm0,0x18(%rdi)
  17:	0f 11 47 28          	movups %xmm0,0x28(%rdi)
  1b:	0f 11 47 38          	movups %xmm0,0x38(%rdi)
  1f:	0f 11 47 48          	movups %xmm0,0x48(%rdi)
  23:	0f 11 47 58          	movups %xmm0,0x58(%rdi)
  27:	0f 11 47 68          	movups %xmm0,0x68(%rdi)
  2b:	0f 11 47 78          	movups %xmm0,0x78(%rdi)
  2f:	0f 11 87 88 00 00 00 	movups %xmm0,0x88(%rdi)
  36:	0f 11 87 98 00 00 00 	movups %xmm0,0x98(%rdi)
  3d:	0f 11 87 a8 00 00 00 	movups %xmm0,0xa8(%rdi)
  44:	0f 11 87 b8 00 00 00 	movups %xmm0,0xb8(%rdi)
  4b:	0f 11 87 c8 00 00 00 	movups %xmm0,0xc8(%rdi)
  52:	0f 11 87 d8 00 00 00 	movups %xmm0,0xd8(%rdi)
  59:	0f 11 87 e8 00 00 00 	movups %xmm0,0xe8(%rdi)
  60:	48 c7 87 f8 00 00 00 00 00 00 00 	movq   $0x0,0xf8(%rdi)
  6b:	c6 87 00 01 00 00 02 	movb   $0x2,0x100(%rdi)
  72:	48 89 f8             	mov    %rdi,%rax
  75:	c3                   	ret
  76:	0f 0b                	ud2

Disassembly of section .text._D4core8lifetime__T7forwardS_D3std7sumtype__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTS7kernels5BlockZQzTSQBy__T7FailureTSQBj11DomainErrorZQBbZQDt8opAssignMFNcQCcZ3rhsQCkZ__T3fwdS_DQFuQFt__TQFoTQFjTQExTQDtZQGeQClMFNcQEhZQCfQEoZQCbMFNaNbNdNiNfZQFi:

0000000000000000 <core.lifetime.forward!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(error_d.Failure!(kernels.DomainError).Failure).rhs).fwd!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(error_d.Failure!(kernels.DomainError).Failure).rhs).fwd()>:
   0:	48 8b 07             	mov    (%rdi),%rax
   3:	c3                   	ret

Disassembly of section .text._D3std7sumtype__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTS7kernels5BlockZQzTSQBy__T7FailureTSQBj11DomainErrorZQBbZQDt8opAssignMFNaNbNcNiNfKSQFiQFh__TQFcTQExTQElTQDhZQFsZQBe:

0000000000000000 <std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)>:
   0:	53                   	push   %rbx
   1:	48 81 ec 00 01 00 00 	sub    $0x100,%rsp
   8:	48 89 fb             	mov    %rdi,%rbx
   b:	0f b6 86 00 01 00 00 	movzbl 0x100(%rsi),%eax
  12:	83 f8 02             	cmp    $0x2,%eax
  15:	0f 84 d9 00 00 00    	je     f4 <std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)+0xf4>
  1b:	83 f8 01             	cmp    $0x1,%eax
  1e:	0f 84 a3 00 00 00    	je     c7 <std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)+0xc7>
  24:	85 c0                	test   %eax,%eax
  26:	0f 85 49 01 00 00    	jne    175 <std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)+0x175>
  2c:	80 bb 00 01 00 00 03 	cmpb   $0x3,0x100(%rbx)
  33:	0f 83 3c 01 00 00    	jae    175 <std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)+0x175>
  39:	0f 57 c0             	xorps  %xmm0,%xmm0
  3c:	0f 11 84 24 f0 00 00 00 	movups %xmm0,0xf0(%rsp)
  44:	0f 11 84 24 e1 00 00 00 	movups %xmm0,0xe1(%rsp)
  4c:	0f 11 84 24 d1 00 00 00 	movups %xmm0,0xd1(%rsp)
  54:	0f 11 84 24 c1 00 00 00 	movups %xmm0,0xc1(%rsp)
  5c:	0f 11 84 24 b1 00 00 00 	movups %xmm0,0xb1(%rsp)
  64:	0f 11 84 24 a1 00 00 00 	movups %xmm0,0xa1(%rsp)
  6c:	0f 11 84 24 91 00 00 00 	movups %xmm0,0x91(%rsp)
  74:	0f 11 84 24 81 00 00 00 	movups %xmm0,0x81(%rsp)
  7c:	0f 11 44 24 71       	movups %xmm0,0x71(%rsp)
  81:	0f 11 44 24 61       	movups %xmm0,0x61(%rsp)
  86:	0f 11 44 24 51       	movups %xmm0,0x51(%rsp)
  8b:	0f 11 44 24 41       	movups %xmm0,0x41(%rsp)
  90:	0f 11 44 24 31       	movups %xmm0,0x31(%rsp)
  95:	0f 11 44 24 21       	movups %xmm0,0x21(%rsp)
  9a:	0f 11 44 24 11       	movups %xmm0,0x11(%rsp)
  9f:	0f 11 44 24 01       	movups %xmm0,0x1(%rsp)
  a4:	48 89 e6             	mov    %rsp,%rsi
  a7:	ba 00 01 00 00       	mov    $0x100,%edx
  ac:	48 89 df             	mov    %rbx,%rdi
  af:	e8 00 00 00 00       	call   b4 <std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)+0xb4>	b0: R_X86_64_PLT32	memcpy-0x4
  b4:	c6 83 00 01 00 00 00 	movb   $0x0,0x100(%rbx)
  bb:	48 89 d8             	mov    %rbx,%rax
  be:	48 81 c4 00 01 00 00 	add    $0x100,%rsp
  c5:	5b                   	pop    %rbx
  c6:	c3                   	ret
  c7:	80 bb 00 01 00 00 03 	cmpb   $0x3,0x100(%rbx)
  ce:	0f 83 a1 00 00 00    	jae    175 <std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)+0x175>
  d4:	ba 00 01 00 00       	mov    $0x100,%edx
  d9:	48 89 df             	mov    %rbx,%rdi
  dc:	e8 00 00 00 00       	call   e1 <std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)+0xe1>	dd: R_X86_64_PLT32	memmove-0x4
  e1:	c6 83 00 01 00 00 01 	movb   $0x1,0x100(%rbx)
  e8:	48 89 d8             	mov    %rbx,%rax
  eb:	48 81 c4 00 01 00 00 	add    $0x100,%rsp
  f2:	5b                   	pop    %rbx
  f3:	c3                   	ret
  f4:	80 bb 00 01 00 00 03 	cmpb   $0x3,0x100(%rbx)
  fb:	73 78                	jae    175 <std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)+0x175>
  fd:	48 8b 06             	mov    (%rsi),%rax
 100:	48 89 03             	mov    %rax,(%rbx)
 103:	0f 57 c0             	xorps  %xmm0,%xmm0
 106:	0f 11 43 08          	movups %xmm0,0x8(%rbx)
 10a:	0f 11 43 18          	movups %xmm0,0x18(%rbx)
 10e:	0f 11 43 28          	movups %xmm0,0x28(%rbx)
 112:	0f 11 43 38          	movups %xmm0,0x38(%rbx)
 116:	0f 11 43 48          	movups %xmm0,0x48(%rbx)
 11a:	0f 11 43 58          	movups %xmm0,0x58(%rbx)
 11e:	0f 11 43 68          	movups %xmm0,0x68(%rbx)
 122:	0f 11 43 78          	movups %xmm0,0x78(%rbx)
 126:	0f 11 83 88 00 00 00 	movups %xmm0,0x88(%rbx)
 12d:	0f 11 83 98 00 00 00 	movups %xmm0,0x98(%rbx)
 134:	0f 11 83 a8 00 00 00 	movups %xmm0,0xa8(%rbx)
 13b:	0f 11 83 b8 00 00 00 	movups %xmm0,0xb8(%rbx)
 142:	0f 11 83 c8 00 00 00 	movups %xmm0,0xc8(%rbx)
 149:	0f 11 83 d8 00 00 00 	movups %xmm0,0xd8(%rbx)
 150:	0f 11 83 e8 00 00 00 	movups %xmm0,0xe8(%rbx)
 157:	48 c7 83 f8 00 00 00 00 00 00 00 	movq   $0x0,0xf8(%rbx)
 162:	c6 83 00 01 00 00 02 	movb   $0x2,0x100(%rbx)
 169:	48 89 d8             	mov    %rbx,%rax
 16c:	48 81 c4 00 01 00 00 	add    $0x100,%rsp
 173:	5b                   	pop    %rbx
 174:	c3                   	ret
 175:	0f 0b                	ud2

Disassembly of section .text._D3std7sumtype__T5matchSQwQu__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTS7kernels5BlockZQzTSQBy__T7FailureTSQBj11DomainErrorZQBbZQDt8opAssignMFNcKSQFoQFn__TQEuTQEpTQEdTQCzZQFkZ17__lambda_L679_C28Z__TQGzTQCfZQHhMFNaNbNiNfKQCxZv:

0000000000000000 <std.sumtype.match!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).__lambda_L679_C28).match!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).match(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)>:
   0:	53                   	push   %rbx
   1:	48 81 ec 00 01 00 00 	sub    $0x100,%rsp
   8:	0f b6 86 00 01 00 00 	movzbl 0x100(%rsi),%eax
   f:	83 f8 02             	cmp    $0x2,%eax
  12:	0f 84 d9 00 00 00    	je     f1 <std.sumtype.match!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).__lambda_L679_C28).match!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).match(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)+0xf1>
  18:	83 f8 01             	cmp    $0x1,%eax
  1b:	0f 84 a3 00 00 00    	je     c4 <std.sumtype.match!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).__lambda_L679_C28).match!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).match(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)+0xc4>
  21:	85 c0                	test   %eax,%eax
  23:	0f 85 49 01 00 00    	jne    172 <std.sumtype.match!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).__lambda_L679_C28).match!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).match(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)+0x172>
  29:	48 8b 1f             	mov    (%rdi),%rbx
  2c:	80 bb 00 01 00 00 03 	cmpb   $0x3,0x100(%rbx)
  33:	0f 83 39 01 00 00    	jae    172 <std.sumtype.match!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).__lambda_L679_C28).match!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).match(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)+0x172>
  39:	0f 57 c0             	xorps  %xmm0,%xmm0
  3c:	0f 11 84 24 f0 00 00 00 	movups %xmm0,0xf0(%rsp)
  44:	0f 11 84 24 e1 00 00 00 	movups %xmm0,0xe1(%rsp)
  4c:	0f 11 84 24 d1 00 00 00 	movups %xmm0,0xd1(%rsp)
  54:	0f 11 84 24 c1 00 00 00 	movups %xmm0,0xc1(%rsp)
  5c:	0f 11 84 24 b1 00 00 00 	movups %xmm0,0xb1(%rsp)
  64:	0f 11 84 24 a1 00 00 00 	movups %xmm0,0xa1(%rsp)
  6c:	0f 11 84 24 91 00 00 00 	movups %xmm0,0x91(%rsp)
  74:	0f 11 84 24 81 00 00 00 	movups %xmm0,0x81(%rsp)
  7c:	0f 11 44 24 71       	movups %xmm0,0x71(%rsp)
  81:	0f 11 44 24 61       	movups %xmm0,0x61(%rsp)
  86:	0f 11 44 24 51       	movups %xmm0,0x51(%rsp)
  8b:	0f 11 44 24 41       	movups %xmm0,0x41(%rsp)
  90:	0f 11 44 24 31       	movups %xmm0,0x31(%rsp)
  95:	0f 11 44 24 21       	movups %xmm0,0x21(%rsp)
  9a:	0f 11 44 24 11       	movups %xmm0,0x11(%rsp)
  9f:	0f 11 44 24 01       	movups %xmm0,0x1(%rsp)
  a4:	48 89 e6             	mov    %rsp,%rsi
  a7:	ba 00 01 00 00       	mov    $0x100,%edx
  ac:	48 89 df             	mov    %rbx,%rdi
  af:	e8 00 00 00 00       	call   b4 <std.sumtype.match!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).__lambda_L679_C28).match!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).match(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)+0xb4>	b0: R_X86_64_PLT32	memcpy-0x4
  b4:	c6 83 00 01 00 00 00 	movb   $0x0,0x100(%rbx)
  bb:	48 81 c4 00 01 00 00 	add    $0x100,%rsp
  c2:	5b                   	pop    %rbx
  c3:	c3                   	ret
  c4:	48 8b 1f             	mov    (%rdi),%rbx
  c7:	80 bb 00 01 00 00 03 	cmpb   $0x3,0x100(%rbx)
  ce:	0f 83 9e 00 00 00    	jae    172 <std.sumtype.match!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).__lambda_L679_C28).match!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).match(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)+0x172>
  d4:	ba 00 01 00 00       	mov    $0x100,%edx
  d9:	48 89 df             	mov    %rbx,%rdi
  dc:	e8 00 00 00 00       	call   e1 <std.sumtype.match!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).__lambda_L679_C28).match!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).match(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)+0xe1>	dd: R_X86_64_PLT32	memmove-0x4
  e1:	c6 83 00 01 00 00 01 	movb   $0x1,0x100(%rbx)
  e8:	48 81 c4 00 01 00 00 	add    $0x100,%rsp
  ef:	5b                   	pop    %rbx
  f0:	c3                   	ret
  f1:	48 8b 07             	mov    (%rdi),%rax
  f4:	80 b8 00 01 00 00 03 	cmpb   $0x3,0x100(%rax)
  fb:	73 75                	jae    172 <std.sumtype.match!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).__lambda_L679_C28).match!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).match(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)+0x172>
  fd:	48 8b 0e             	mov    (%rsi),%rcx
 100:	48 89 08             	mov    %rcx,(%rax)
 103:	0f 57 c0             	xorps  %xmm0,%xmm0
 106:	0f 11 40 08          	movups %xmm0,0x8(%rax)
 10a:	0f 11 40 18          	movups %xmm0,0x18(%rax)
 10e:	0f 11 40 28          	movups %xmm0,0x28(%rax)
 112:	0f 11 40 38          	movups %xmm0,0x38(%rax)
 116:	0f 11 40 48          	movups %xmm0,0x48(%rax)
 11a:	0f 11 40 58          	movups %xmm0,0x58(%rax)
 11e:	0f 11 40 68          	movups %xmm0,0x68(%rax)
 122:	0f 11 40 78          	movups %xmm0,0x78(%rax)
 126:	0f 11 80 88 00 00 00 	movups %xmm0,0x88(%rax)
 12d:	0f 11 80 98 00 00 00 	movups %xmm0,0x98(%rax)
 134:	0f 11 80 a8 00 00 00 	movups %xmm0,0xa8(%rax)
 13b:	0f 11 80 b8 00 00 00 	movups %xmm0,0xb8(%rax)
 142:	0f 11 80 c8 00 00 00 	movups %xmm0,0xc8(%rax)
 149:	0f 11 80 d8 00 00 00 	movups %xmm0,0xd8(%rax)
 150:	0f 11 80 e8 00 00 00 	movups %xmm0,0xe8(%rax)
 157:	48 c7 80 f8 00 00 00 00 00 00 00 	movq   $0x0,0xf8(%rax)
 162:	c6 80 00 01 00 00 02 	movb   $0x2,0x100(%rax)
 169:	48 81 c4 00 01 00 00 	add    $0x100,%rsp
 170:	5b                   	pop    %rbx
 171:	c3                   	ret
 172:	0f 0b                	ud2

Disassembly of section .text._D3std7sumtype__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTS7kernels5BlockZQzTSQBy__T7FailureTSQBj11DomainErrorZQBbZQDt8opAssignMFNaNbNcNiNfSQFhQFg__TQFbTQEwTQEkTQDgZQFrZQBe:

0000000000000000 <std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)>:
   0:	53                   	push   %rbx
   1:	48 81 ec 00 01 00 00 	sub    $0x100,%rsp
   8:	48 89 fb             	mov    %rdi,%rbx
   b:	48 8d b4 24 10 01 00 00 	lea    0x110(%rsp),%rsi
  13:	0f b6 84 24 10 02 00 00 	movzbl 0x210(%rsp),%eax
  1b:	83 f8 02             	cmp    $0x2,%eax
  1e:	0f 84 d9 00 00 00    	je     fd <std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)+0xfd>
  24:	83 f8 01             	cmp    $0x1,%eax
  27:	0f 84 a3 00 00 00    	je     d0 <std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)+0xd0>
  2d:	85 c0                	test   %eax,%eax
  2f:	0f 85 49 01 00 00    	jne    17e <std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)+0x17e>
  35:	80 bb 00 01 00 00 03 	cmpb   $0x3,0x100(%rbx)
  3c:	0f 83 3c 01 00 00    	jae    17e <std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)+0x17e>
  42:	0f 57 c0             	xorps  %xmm0,%xmm0
  45:	0f 11 84 24 f0 00 00 00 	movups %xmm0,0xf0(%rsp)
  4d:	0f 11 84 24 e1 00 00 00 	movups %xmm0,0xe1(%rsp)
  55:	0f 11 84 24 d1 00 00 00 	movups %xmm0,0xd1(%rsp)
  5d:	0f 11 84 24 c1 00 00 00 	movups %xmm0,0xc1(%rsp)
  65:	0f 11 84 24 b1 00 00 00 	movups %xmm0,0xb1(%rsp)
  6d:	0f 11 84 24 a1 00 00 00 	movups %xmm0,0xa1(%rsp)
  75:	0f 11 84 24 91 00 00 00 	movups %xmm0,0x91(%rsp)
  7d:	0f 11 84 24 81 00 00 00 	movups %xmm0,0x81(%rsp)
  85:	0f 11 44 24 71       	movups %xmm0,0x71(%rsp)
  8a:	0f 11 44 24 61       	movups %xmm0,0x61(%rsp)
  8f:	0f 11 44 24 51       	movups %xmm0,0x51(%rsp)
  94:	0f 11 44 24 41       	movups %xmm0,0x41(%rsp)
  99:	0f 11 44 24 31       	movups %xmm0,0x31(%rsp)
  9e:	0f 11 44 24 21       	movups %xmm0,0x21(%rsp)
  a3:	0f 11 44 24 11       	movups %xmm0,0x11(%rsp)
  a8:	0f 11 44 24 01       	movups %xmm0,0x1(%rsp)
  ad:	48 89 e6             	mov    %rsp,%rsi
  b0:	ba 00 01 00 00       	mov    $0x100,%edx
  b5:	48 89 df             	mov    %rbx,%rdi
  b8:	e8 00 00 00 00       	call   bd <std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)+0xbd>	b9: R_X86_64_PLT32	memcpy-0x4
  bd:	c6 83 00 01 00 00 00 	movb   $0x0,0x100(%rbx)
  c4:	48 89 d8             	mov    %rbx,%rax
  c7:	48 81 c4 00 01 00 00 	add    $0x100,%rsp
  ce:	5b                   	pop    %rbx
  cf:	c3                   	ret
  d0:	80 bb 00 01 00 00 03 	cmpb   $0x3,0x100(%rbx)
  d7:	0f 83 a1 00 00 00    	jae    17e <std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)+0x17e>
  dd:	ba 00 01 00 00       	mov    $0x100,%edx
  e2:	48 89 df             	mov    %rbx,%rdi
  e5:	e8 00 00 00 00       	call   ea <std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)+0xea>	e6: R_X86_64_PLT32	memcpy-0x4
  ea:	c6 83 00 01 00 00 01 	movb   $0x1,0x100(%rbx)
  f1:	48 89 d8             	mov    %rbx,%rax
  f4:	48 81 c4 00 01 00 00 	add    $0x100,%rsp
  fb:	5b                   	pop    %rbx
  fc:	c3                   	ret
  fd:	80 bb 00 01 00 00 03 	cmpb   $0x3,0x100(%rbx)
 104:	73 78                	jae    17e <std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)+0x17e>
 106:	48 8b 06             	mov    (%rsi),%rax
 109:	48 89 03             	mov    %rax,(%rbx)
 10c:	0f 57 c0             	xorps  %xmm0,%xmm0
 10f:	0f 11 43 08          	movups %xmm0,0x8(%rbx)
 113:	0f 11 43 18          	movups %xmm0,0x18(%rbx)
 117:	0f 11 43 28          	movups %xmm0,0x28(%rbx)
 11b:	0f 11 43 38          	movups %xmm0,0x38(%rbx)
 11f:	0f 11 43 48          	movups %xmm0,0x48(%rbx)
 123:	0f 11 43 58          	movups %xmm0,0x58(%rbx)
 127:	0f 11 43 68          	movups %xmm0,0x68(%rbx)
 12b:	0f 11 43 78          	movups %xmm0,0x78(%rbx)
 12f:	0f 11 83 88 00 00 00 	movups %xmm0,0x88(%rbx)
 136:	0f 11 83 98 00 00 00 	movups %xmm0,0x98(%rbx)
 13d:	0f 11 83 a8 00 00 00 	movups %xmm0,0xa8(%rbx)
 144:	0f 11 83 b8 00 00 00 	movups %xmm0,0xb8(%rbx)
 14b:	0f 11 83 c8 00 00 00 	movups %xmm0,0xc8(%rbx)
 152:	0f 11 83 d8 00 00 00 	movups %xmm0,0xd8(%rbx)
 159:	0f 11 83 e8 00 00 00 	movups %xmm0,0xe8(%rbx)
 160:	48 c7 83 f8 00 00 00 00 00 00 00 	movq   $0x0,0xf8(%rbx)
 16b:	c6 83 00 01 00 00 02 	movb   $0x2,0x100(%rbx)
 172:	48 89 d8             	mov    %rbx,%rax
 175:	48 81 c4 00 01 00 00 	add    $0x100,%rsp
 17c:	5b                   	pop    %rbx
 17d:	c3                   	ret
 17e:	0f 0b                	ud2

Disassembly of section .text._D3std7sumtype__T5matchSQwQu__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTS7kernels5BlockZQzTSQBy__T7FailureTSQBj11DomainErrorZQBbZQDt8opAssignMFNcSQFnQFm__TQEtTQEoTQEcTQCyZQFjZ17__lambda_L697_C24Z__TQGyTQCfZQHgMFNaNbNiNfKQCxZv:

0000000000000000 <std.sumtype.match!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).__lambda_L697_C24).match!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).match(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)>:
   0:	53                   	push   %rbx
   1:	48 81 ec 00 01 00 00 	sub    $0x100,%rsp
   8:	0f b6 86 00 01 00 00 	movzbl 0x100(%rsi),%eax
   f:	83 f8 02             	cmp    $0x2,%eax
  12:	0f 84 d9 00 00 00    	je     f1 <std.sumtype.match!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).__lambda_L697_C24).match!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).match(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)+0xf1>
  18:	83 f8 01             	cmp    $0x1,%eax
  1b:	0f 84 a3 00 00 00    	je     c4 <std.sumtype.match!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).__lambda_L697_C24).match!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).match(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)+0xc4>
  21:	85 c0                	test   %eax,%eax
  23:	0f 85 49 01 00 00    	jne    172 <std.sumtype.match!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).__lambda_L697_C24).match!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).match(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)+0x172>
  29:	48 8b 1f             	mov    (%rdi),%rbx
  2c:	80 bb 00 01 00 00 03 	cmpb   $0x3,0x100(%rbx)
  33:	0f 83 39 01 00 00    	jae    172 <std.sumtype.match!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).__lambda_L697_C24).match!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).match(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)+0x172>
  39:	0f 57 c0             	xorps  %xmm0,%xmm0
  3c:	0f 11 84 24 f0 00 00 00 	movups %xmm0,0xf0(%rsp)
  44:	0f 11 84 24 e1 00 00 00 	movups %xmm0,0xe1(%rsp)
  4c:	0f 11 84 24 d1 00 00 00 	movups %xmm0,0xd1(%rsp)
  54:	0f 11 84 24 c1 00 00 00 	movups %xmm0,0xc1(%rsp)
  5c:	0f 11 84 24 b1 00 00 00 	movups %xmm0,0xb1(%rsp)
  64:	0f 11 84 24 a1 00 00 00 	movups %xmm0,0xa1(%rsp)
  6c:	0f 11 84 24 91 00 00 00 	movups %xmm0,0x91(%rsp)
  74:	0f 11 84 24 81 00 00 00 	movups %xmm0,0x81(%rsp)
  7c:	0f 11 44 24 71       	movups %xmm0,0x71(%rsp)
  81:	0f 11 44 24 61       	movups %xmm0,0x61(%rsp)
  86:	0f 11 44 24 51       	movups %xmm0,0x51(%rsp)
  8b:	0f 11 44 24 41       	movups %xmm0,0x41(%rsp)
  90:	0f 11 44 24 31       	movups %xmm0,0x31(%rsp)
  95:	0f 11 44 24 21       	movups %xmm0,0x21(%rsp)
  9a:	0f 11 44 24 11       	movups %xmm0,0x11(%rsp)
  9f:	0f 11 44 24 01       	movups %xmm0,0x1(%rsp)
  a4:	48 89 e6             	mov    %rsp,%rsi
  a7:	ba 00 01 00 00       	mov    $0x100,%edx
  ac:	48 89 df             	mov    %rbx,%rdi
  af:	e8 00 00 00 00       	call   b4 <std.sumtype.match!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).__lambda_L697_C24).match!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).match(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)+0xb4>	b0: R_X86_64_PLT32	memcpy-0x4
  b4:	c6 83 00 01 00 00 00 	movb   $0x0,0x100(%rbx)
  bb:	48 81 c4 00 01 00 00 	add    $0x100,%rsp
  c2:	5b                   	pop    %rbx
  c3:	c3                   	ret
  c4:	48 8b 1f             	mov    (%rdi),%rbx
  c7:	80 bb 00 01 00 00 03 	cmpb   $0x3,0x100(%rbx)
  ce:	0f 83 9e 00 00 00    	jae    172 <std.sumtype.match!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).__lambda_L697_C24).match!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).match(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)+0x172>
  d4:	ba 00 01 00 00       	mov    $0x100,%edx
  d9:	48 89 df             	mov    %rbx,%rdi
  dc:	e8 00 00 00 00       	call   e1 <std.sumtype.match!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).__lambda_L697_C24).match!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).match(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)+0xe1>	dd: R_X86_64_PLT32	memmove-0x4
  e1:	c6 83 00 01 00 00 01 	movb   $0x1,0x100(%rbx)
  e8:	48 81 c4 00 01 00 00 	add    $0x100,%rsp
  ef:	5b                   	pop    %rbx
  f0:	c3                   	ret
  f1:	48 8b 07             	mov    (%rdi),%rax
  f4:	80 b8 00 01 00 00 03 	cmpb   $0x3,0x100(%rax)
  fb:	73 75                	jae    172 <std.sumtype.match!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).__lambda_L697_C24).match!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).match(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)+0x172>
  fd:	48 8b 0e             	mov    (%rsi),%rcx
 100:	48 89 08             	mov    %rcx,(%rax)
 103:	0f 57 c0             	xorps  %xmm0,%xmm0
 106:	0f 11 40 08          	movups %xmm0,0x8(%rax)
 10a:	0f 11 40 18          	movups %xmm0,0x18(%rax)
 10e:	0f 11 40 28          	movups %xmm0,0x28(%rax)
 112:	0f 11 40 38          	movups %xmm0,0x38(%rax)
 116:	0f 11 40 48          	movups %xmm0,0x48(%rax)
 11a:	0f 11 40 58          	movups %xmm0,0x58(%rax)
 11e:	0f 11 40 68          	movups %xmm0,0x68(%rax)
 122:	0f 11 40 78          	movups %xmm0,0x78(%rax)
 126:	0f 11 80 88 00 00 00 	movups %xmm0,0x88(%rax)
 12d:	0f 11 80 98 00 00 00 	movups %xmm0,0x98(%rax)
 134:	0f 11 80 a8 00 00 00 	movups %xmm0,0xa8(%rax)
 13b:	0f 11 80 b8 00 00 00 	movups %xmm0,0xb8(%rax)
 142:	0f 11 80 c8 00 00 00 	movups %xmm0,0xc8(%rax)
 149:	0f 11 80 d8 00 00 00 	movups %xmm0,0xd8(%rax)
 150:	0f 11 80 e8 00 00 00 	movups %xmm0,0xe8(%rax)
 157:	48 c7 80 f8 00 00 00 00 00 00 00 	movq   $0x0,0xf8(%rax)
 162:	c6 80 00 01 00 00 02 	movb   $0x2,0x100(%rax)
 169:	48 81 c4 00 01 00 00 	add    $0x100,%rsp
 170:	5b                   	pop    %rbx
 171:	c3                   	ret
 172:	0f 0b                	ud2

Disassembly of section .text._D3std7sumtype__T5matchS4core8internal4hash6hashOfZ__TQBlTxSQCgQCf__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTS7kernels5BlockZQzTSQBy__T7FailureTSQBj11DomainErrorZQBbZQDtZQFxFNaNbNiNfKxQEvZm:

0000000000000000 <std.sumtype.match!(core.internal.hash.hashOf).match!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).match(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType))>:
   0:	0f b6 87 00 01 00 00 	movzbl 0x100(%rdi),%eax
   7:	85 c0                	test   %eax,%eax
   9:	74 77                	je     82 <std.sumtype.match!(core.internal.hash.hashOf).match!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).match(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType))+0x82>
   b:	48 89 fe             	mov    %rdi,%rsi
   e:	83 f8 02             	cmp    $0x2,%eax
  11:	74 11                	je     24 <std.sumtype.match!(core.internal.hash.hashOf).match!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).match(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType))+0x24>
  13:	83 f8 01             	cmp    $0x1,%eax
  16:	75 6b                	jne    83 <std.sumtype.match!(core.internal.hash.hashOf).match!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).match(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType))+0x83>
  18:	bf 00 01 00 00       	mov    $0x100,%edi
  1d:	31 d2                	xor    %edx,%edx
  1f:	e9 00 00 00 00       	jmp    24 <std.sumtype.match!(core.internal.hash.hashOf).match!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).match(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType))+0x24>	20: R_X86_64_PLT32	core.internal.hash._bytesHashAligned(scope const(ubyte)[], ulong)-0x4
  24:	0f b6 06             	movzbl (%rsi),%eax
  27:	48 b9 b3 01 00 00 00 01 00 00 	movabs $0x100000001b3,%rcx
  31:	48 0f af c1          	imul   %rcx,%rax
  35:	0f b6 56 01          	movzbl 0x1(%rsi),%edx
  39:	48 31 c2             	xor    %rax,%rdx
  3c:	48 0f af d1          	imul   %rcx,%rdx
  40:	0f b6 46 02          	movzbl 0x2(%rsi),%eax
  44:	48 31 d0             	xor    %rdx,%rax
  47:	48 0f af c1          	imul   %rcx,%rax
  4b:	0f b6 56 03          	movzbl 0x3(%rsi),%edx
  4f:	48 31 c2             	xor    %rax,%rdx
  52:	48 0f af d1          	imul   %rcx,%rdx
  56:	0f b6 46 04          	movzbl 0x4(%rsi),%eax
  5a:	48 31 d0             	xor    %rdx,%rax
  5d:	48 0f af c1          	imul   %rcx,%rax
  61:	0f b6 56 05          	movzbl 0x5(%rsi),%edx
  65:	48 31 c2             	xor    %rax,%rdx
  68:	48 0f af d1          	imul   %rcx,%rdx
  6c:	0f b6 7e 06          	movzbl 0x6(%rsi),%edi
  70:	48 31 d7             	xor    %rdx,%rdi
  73:	48 0f af f9          	imul   %rcx,%rdi
  77:	0f b6 46 07          	movzbl 0x7(%rsi),%eax
  7b:	48 31 f8             	xor    %rdi,%rax
  7e:	48 0f af c1          	imul   %rcx,%rax
  82:	c3                   	ret
  83:	0f 0b                	ud2

Disassembly of section .text._D4core8internal4hash__T6hashOfTG32mZQnFNaNbNiNfMKxG32mmZm:

0000000000000000 <core.internal.hash.hashOf!(ulong[32]).hashOf(scope ref const(ulong[32]), ulong)>:
   0:	48 89 f2             	mov    %rsi,%rdx
   3:	48 89 fe             	mov    %rdi,%rsi
   6:	bf 00 01 00 00       	mov    $0x100,%edi
   b:	e9 00 00 00 00       	jmp    10 <core.internal.hash.hashOf!(ulong[32]).hashOf(scope ref const(ulong[32]), ulong)+0x10>	c: R_X86_64_PLT32	core.internal.hash._bytesHashAligned(scope const(ubyte)[], ulong)-0x4

Disassembly of section .text._D4core8internal4hash__T9bytesHashVbi1ZQpFNaNbNiNeMAxhmZm:

0000000000000000 <core.internal.hash.bytesHash!(true).bytesHash(scope const(ubyte)[], ulong)>:
   0:	e9 00 00 00 00       	jmp    5 <core.internal.hash.bytesHash!(true).bytesHash(scope const(ubyte)[], ulong)+0x5>	1: R_X86_64_PLT32	core.internal.hash._bytesHashAligned(scope const(ubyte)[], ulong)-0x4

Disassembly of section .text._D4core8internal7convert__T7toUbyteTmZQlFNaNbNiNeNkMxAmZAxh:

0000000000000000 <_D4core8internal7convert__T7toUbyteTmZQlFNaNbNiNeNkMxAmZAxh>:
   0:	48 89 f2             	mov    %rsi,%rdx
   3:	48 8d 04 fd 00 00 00 00 	lea    0x0(,%rdi,8),%rax
   b:	c3                   	ret

Disassembly of section .text._D4core8internal7convert__T18toUbyte_array_ctfeTmZQxFNaNbNiNfNkMxAmZAxh:

0000000000000000 <_D4core8internal7convert__T18toUbyte_array_ctfeTmZQxFNaNbNiNfNkMxAmZAxh>:
   0:	41 57                	push   %r15
   2:	41 56                	push   %r14
   4:	41 55                	push   %r13
   6:	41 54                	push   %r12
   8:	53                   	push   %rbx
   9:	49 89 f6             	mov    %rsi,%r14
   c:	49 89 ff             	mov    %rdi,%r15
   f:	48 8d 3c fd 00 00 00 00 	lea    0x0(,%rdi,8),%rdi
  17:	e8 00 00 00 00       	call   1c <_D4core8internal7convert__T18toUbyte_array_ctfeTmZQxFNaNbNiNfNkMxAmZAxh+0x1c>	18: R_X86_64_PLT32	core.internal.convert.ctfe_alloc(ulong)-0x4
  1c:	48 89 c3             	mov    %rax,%rbx
  1f:	49 89 d4             	mov    %rdx,%r12
  22:	4d 85 ff             	test   %r15,%r15
  25:	74 38                	je     5f <_D4core8internal7convert__T18toUbyte_array_ctfeTmZQxFNaNbNiNfNkMxAmZAxh+0x5f>
  27:	45 31 ed             	xor    %r13d,%r13d
  2a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  30:	49 8d 45 07          	lea    0x7(%r13),%rax
  34:	48 39 d8             	cmp    %rbx,%rax
  37:	73 36                	jae    6f <_D4core8internal7convert__T18toUbyte_array_ctfeTmZQxFNaNbNiNfNkMxAmZAxh+0x6f>
  39:	4b 8d 14 2e          	lea    (%r14,%r13,1),%rdx
  3d:	4b 8d 3c 2c          	lea    (%r12,%r13,1),%rdi
  41:	be 08 00 00 00       	mov    $0x8,%esi
  46:	b9 08 00 00 00       	mov    $0x8,%ecx
  4b:	41 b8 01 00 00 00    	mov    $0x1,%r8d
  51:	e8 00 00 00 00       	call   56 <_D4core8internal7convert__T18toUbyte_array_ctfeTmZQxFNaNbNiNfNkMxAmZAxh+0x56>	52: R_X86_64_PLT32	_d_array_slice_copy-0x4
  56:	49 83 c5 08          	add    $0x8,%r13
  5a:	49 ff cf             	dec    %r15
  5d:	75 d1                	jne    30 <_D4core8internal7convert__T18toUbyte_array_ctfeTmZQxFNaNbNiNfNkMxAmZAxh+0x30>
  5f:	48 89 d8             	mov    %rbx,%rax
  62:	4c 89 e2             	mov    %r12,%rdx
  65:	5b                   	pop    %rbx
  66:	41 5c                	pop    %r12
  68:	41 5d                	pop    %r13
  6a:	41 5e                	pop    %r14
  6c:	41 5f                	pop    %r15
  6e:	c3                   	ret
  6f:	4d 8d 45 08          	lea    0x8(%r13),%r8
  73:	48 8d 35 00 00 00 00 	lea    0x0(%rip),%rsi        # 7a <_D4core8internal7convert__T18toUbyte_array_ctfeTmZQxFNaNbNiNfNkMxAmZAxh+0x7a>	76: R_X86_64_PC32	.L.str.1-0x4
  7a:	bf 3f 00 00 00       	mov    $0x3f,%edi
  7f:	ba 9b 02 00 00       	mov    $0x29b,%edx
  84:	4c 89 e9             	mov    %r13,%rcx
  87:	49 89 d9             	mov    %rbx,%r9
  8a:	e8 00 00 00 00       	call   8f <.L.str.1+0x1f>	8b: R_X86_64_PLT32	_d_arraybounds_slice-0x4

Disassembly of section .text._D4core8internal7convert__T7toUbyteTmZQlFNaNbNiNeMKxmZAxh:

0000000000000000 <core.internal.convert.toUbyte!(ulong).toUbyte(scope ref const(ulong))>:
   0:	b8 08 00 00 00       	mov    $0x8,%eax
   5:	48 89 fa             	mov    %rdi,%rdx
   8:	c3                   	ret

Disassembly of section .text._D4core8internal7convert__T21toUbyte_integral_ctfeTmZQBaFNaNbNiNfMNkKxmZAxh:

0000000000000000 <core.internal.convert.toUbyte_integral_ctfe!(ulong).toUbyte_integral_ctfe(scope return ref const(ulong))>:
   0:	53                   	push   %rbx
   1:	48 89 fb             	mov    %rdi,%rbx
   4:	bf 08 00 00 00       	mov    $0x8,%edi
   9:	e8 00 00 00 00       	call   e <core.internal.convert.toUbyte_integral_ctfe!(ulong).toUbyte_integral_ctfe(scope return ref const(ulong))+0xe>	a: R_X86_64_PLT32	core.internal.convert.ctfe_alloc(ulong)-0x4
   e:	48 85 c0             	test   %rax,%rax
  11:	74 6e                	je     81 <core.internal.convert.toUbyte_integral_ctfe!(ulong).toUbyte_integral_ctfe(scope return ref const(ulong))+0x81>
  13:	48 8b 0b             	mov    (%rbx),%rcx
  16:	88 0a                	mov    %cl,(%rdx)
  18:	48 83 f8 01          	cmp    $0x1,%rax
  1c:	74 67                	je     85 <core.internal.convert.toUbyte_integral_ctfe!(ulong).toUbyte_integral_ctfe(scope return ref const(ulong))+0x85>
  1e:	88 6a 01             	mov    %ch,0x1(%rdx)
  21:	48 83 f8 02          	cmp    $0x2,%rax
  25:	74 65                	je     8c <core.internal.convert.toUbyte_integral_ctfe!(ulong).toUbyte_integral_ctfe(scope return ref const(ulong))+0x8c>
  27:	89 ce                	mov    %ecx,%esi
  29:	c1 ee 10             	shr    $0x10,%esi
  2c:	40 88 72 02          	mov    %sil,0x2(%rdx)
  30:	48 83 f8 03          	cmp    $0x3,%rax
  34:	74 5d                	je     93 <core.internal.convert.toUbyte_integral_ctfe!(ulong).toUbyte_integral_ctfe(scope return ref const(ulong))+0x93>
  36:	89 ce                	mov    %ecx,%esi
  38:	c1 ee 18             	shr    $0x18,%esi
  3b:	40 88 72 03          	mov    %sil,0x3(%rdx)
  3f:	48 83 f8 04          	cmp    $0x4,%rax
  43:	74 55                	je     9a <core.internal.convert.toUbyte_integral_ctfe!(ulong).toUbyte_integral_ctfe(scope return ref const(ulong))+0x9a>
  45:	48 89 ce             	mov    %rcx,%rsi
  48:	48 c1 ee 20          	shr    $0x20,%rsi
  4c:	40 88 72 04          	mov    %sil,0x4(%rdx)
  50:	48 83 f8 05          	cmp    $0x5,%rax
  54:	74 4b                	je     a1 <core.internal.convert.toUbyte_integral_ctfe!(ulong).toUbyte_integral_ctfe(scope return ref const(ulong))+0xa1>
  56:	48 89 ce             	mov    %rcx,%rsi
  59:	48 c1 ee 28          	shr    $0x28,%rsi
  5d:	40 88 72 05          	mov    %sil,0x5(%rdx)
  61:	48 83 f8 06          	cmp    $0x6,%rax
  65:	74 41                	je     a8 <core.internal.convert.toUbyte_integral_ctfe!(ulong).toUbyte_integral_ctfe(scope return ref const(ulong))+0xa8>
  67:	48 89 ce             	mov    %rcx,%rsi
  6a:	48 c1 ee 30          	shr    $0x30,%rsi
  6e:	40 88 72 06          	mov    %sil,0x6(%rdx)
  72:	48 83 f8 07          	cmp    $0x7,%rax
  76:	74 37                	je     af <core.internal.convert.toUbyte_integral_ctfe!(ulong).toUbyte_integral_ctfe(scope return ref const(ulong))+0xaf>
  78:	48 c1 e9 38          	shr    $0x38,%rcx
  7c:	88 4a 07             	mov    %cl,0x7(%rdx)
  7f:	5b                   	pop    %rbx
  80:	c3                   	ret
  81:	31 c9                	xor    %ecx,%ecx
  83:	eb 2f                	jmp    b4 <core.internal.convert.toUbyte_integral_ctfe!(ulong).toUbyte_integral_ctfe(scope return ref const(ulong))+0xb4>
  85:	b9 01 00 00 00       	mov    $0x1,%ecx
  8a:	eb 28                	jmp    b4 <core.internal.convert.toUbyte_integral_ctfe!(ulong).toUbyte_integral_ctfe(scope return ref const(ulong))+0xb4>
  8c:	b9 02 00 00 00       	mov    $0x2,%ecx
  91:	eb 21                	jmp    b4 <core.internal.convert.toUbyte_integral_ctfe!(ulong).toUbyte_integral_ctfe(scope return ref const(ulong))+0xb4>
  93:	b9 03 00 00 00       	mov    $0x3,%ecx
  98:	eb 1a                	jmp    b4 <core.internal.convert.toUbyte_integral_ctfe!(ulong).toUbyte_integral_ctfe(scope return ref const(ulong))+0xb4>
  9a:	b9 04 00 00 00       	mov    $0x4,%ecx
  9f:	eb 13                	jmp    b4 <core.internal.convert.toUbyte_integral_ctfe!(ulong).toUbyte_integral_ctfe(scope return ref const(ulong))+0xb4>
  a1:	b9 05 00 00 00       	mov    $0x5,%ecx
  a6:	eb 0c                	jmp    b4 <core.internal.convert.toUbyte_integral_ctfe!(ulong).toUbyte_integral_ctfe(scope return ref const(ulong))+0xb4>
  a8:	b9 06 00 00 00       	mov    $0x6,%ecx
  ad:	eb 05                	jmp    b4 <core.internal.convert.toUbyte_integral_ctfe!(ulong).toUbyte_integral_ctfe(scope return ref const(ulong))+0xb4>
  af:	b9 07 00 00 00       	mov    $0x7,%ecx
  b4:	48 8d 35 00 00 00 00 	lea    0x0(%rip),%rsi        # bb <core.internal.convert.toUbyte_integral_ctfe!(ulong).toUbyte_integral_ctfe(scope return ref const(ulong))+0xbb>	b7: R_X86_64_PC32	.L.str.1-0x4
  bb:	bf 3f 00 00 00       	mov    $0x3f,%edi
  c0:	ba c2 02 00 00       	mov    $0x2c2,%edx
  c5:	49 89 c0             	mov    %rax,%r8
  c8:	e8 00 00 00 00       	call   cd <.L.str.1+0x5d>	c9: R_X86_64_PLT32	_d_arraybounds_index-0x4

Disassembly of section .text._D4core8lifetime__T8moveImplTS7error_d5EmptyZQBaFNaNbNiNfNkMKQBgZQBk:

0000000000000000 <_D4core8lifetime__T8moveImplTS7error_d5EmptyZQBaFNaNbNiNfNkMKQBgZQBk>:
   0:	48 89 f8             	mov    %rdi,%rax
   3:	c3                   	ret

Disassembly of section .text._D4core8lifetime__T15trustedMoveImplTS7error_d5EmptyZQBiFNaNbNiNeNkMKQBgZQBk:

0000000000000000 <_D4core8lifetime__T15trustedMoveImplTS7error_d5EmptyZQBiFNaNbNiNeNkMKQBgZQBk>:
   0:	48 89 f8             	mov    %rdi,%rax
   3:	c3                   	ret

Disassembly of section .text._D4core8lifetime__T15moveEmplaceImplTS7error_d5EmptyZQBiFNaNbNiNfMKQBeNkMKQBlZv:

0000000000000000 <_D4core8lifetime__T15moveEmplaceImplTS7error_d5EmptyZQBiFNaNbNiNfMKQBeNkMKQBlZv>:
   0:	c3                   	ret

Disassembly of section .text._D4core8lifetime__T8moveImplTS7error_d__T7FailureTS7kernels11DomainErrorZQBgZQCgFNaNbNiNfNkMKQCmZQCq:

0000000000000000 <_D4core8lifetime__T8moveImplTS7error_d__T7FailureTS7kernels11DomainErrorZQBgZQCgFNaNbNiNfNkMKQCmZQCq>:
   0:	48 8b 07             	mov    (%rdi),%rax
   3:	c3                   	ret

Disassembly of section .text._D4core8lifetime__T15trustedMoveImplTS7error_d__T7FailureTS7kernels11DomainErrorZQBgZQCoFNaNbNiNeNkMKQCmZQCq:

0000000000000000 <_D4core8lifetime__T15trustedMoveImplTS7error_d__T7FailureTS7kernels11DomainErrorZQBgZQCoFNaNbNiNeNkMKQCmZQCq>:
   0:	48 8b 07             	mov    (%rdi),%rax
   3:	c3                   	ret

Disassembly of section .text._D4core8lifetime__T15moveEmplaceImplTS7error_d__T7FailureTS7kernels11DomainErrorZQBgZQCoFNaNbNiNfMKQCkNkMKQCrZv:

0000000000000000 <_D4core8lifetime__T15moveEmplaceImplTS7error_d__T7FailureTS7kernels11DomainErrorZQBgZQCoFNaNbNiNfMKQCkNkMKQCrZv>:
   0:	48 8b 06             	mov    (%rsi),%rax
   3:	48 89 07             	mov    %rax,(%rdi)
   6:	c3                   	ret

Disassembly of section .text._D4core8lifetime__T8moveImplTS3std7sumtype__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTmZQlTSQBk__T7FailureTS7kernels11DomainErrorZQBgZQDkZQEoFNaNbNiNfNkMKQEuZQEy:

0000000000000000 <_D4core8lifetime__T8moveImplTS3std7sumtype__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTmZQlTSQBk__T7FailureTS7kernels11DomainErrorZQBgZQDkZQEoFNaNbNiNfNkMKQEuZQEy>:
   0:	48 89 f8             	mov    %rdi,%rax
   3:	0f 10 06             	movups (%rsi),%xmm0
   6:	0f 11 07             	movups %xmm0,(%rdi)
   9:	c3                   	ret

Disassembly of section .text._D4core8lifetime__T15trustedMoveImplTS3std7sumtype__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTmZQlTSQBk__T7FailureTS7kernels11DomainErrorZQBgZQDkZQEwFNaNbNiNeNkMKQEuZQEy:

0000000000000000 <_D4core8lifetime__T15trustedMoveImplTS3std7sumtype__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTmZQlTSQBk__T7FailureTS7kernels11DomainErrorZQBgZQDkZQEwFNaNbNiNeNkMKQEuZQEy>:
   0:	48 89 f8             	mov    %rdi,%rax
   3:	0f 10 06             	movups (%rsi),%xmm0
   6:	0f 11 07             	movups %xmm0,(%rdi)
   9:	c3                   	ret

Disassembly of section .text._D4core8lifetime__T15moveEmplaceImplTS3std7sumtype__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTmZQlTSQBk__T7FailureTS7kernels11DomainErrorZQBgZQDkZQEwFNaNbNiNfMKQEsNkMKQEzZv:

0000000000000000 <_D4core8lifetime__T15moveEmplaceImplTS3std7sumtype__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTmZQlTSQBk__T7FailureTS7kernels11DomainErrorZQBgZQDkZQEwFNaNbNiNfMKQEsNkMKQEzZv>:
   0:	0f 10 06             	movups (%rsi),%xmm0
   3:	0f 11 07             	movups %xmm0,(%rdi)
   6:	c3                   	ret

Disassembly of section .text._D3std7sumtype__T9matchImplVEQBb8typecons__T4FlagVAyaa10_65786861757374697665ZQBii1SQDeQDd14destroyIfOwnerZ__TQDpTSQEjQEi__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTmZQlTSQBk__T7FailureTS7kernels11DomainErrorZQBgZQDkZQHrFNaNbNiNfKQElZv:

0000000000000000 <std.sumtype.matchImpl!(1, std.sumtype.destroyIfOwner).matchImpl!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).matchImpl(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)>:
   0:	80 7f 08 02          	cmpb   $0x2,0x8(%rdi)
   4:	77 01                	ja     7 <std.sumtype.matchImpl!(1, std.sumtype.destroyIfOwner).matchImpl!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).matchImpl(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)+0x7>
   6:	c3                   	ret
   7:	0f 0b                	ud2

Disassembly of section .text._D3std7sumtype__T14destroyIfOwnerTS7error_d5EmptyZQBhFNaNbNiNfKQBdZv:

0000000000000000 <std.sumtype.destroyIfOwner!(error_d.Empty).destroyIfOwner(ref error_d.Empty)>:
   0:	c3                   	ret

Disassembly of section .text._D3std7sumtype__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTmZQlTSQBk__T7FailureTS7kernels11DomainErrorZQBgZQDk__T10getByIndexVmi0ZQrMNgFNaNbNcNiNeZNgSQErQEm:

0000000000000000 <std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.getByIndex!(0uL).getByIndex() inout>:
   0:	48 89 f8             	mov    %rdi,%rax
   3:	c3                   	ret

Disassembly of section .text._D3std7sumtype__T14destroyIfOwnerTS7error_d__T7SuccessTmZQlZQBrFNaNbNiNfKQBnZv:

0000000000000000 <std.sumtype.destroyIfOwner!(error_d.Success!(ulong).Success).destroyIfOwner(ref error_d.Success!(ulong).Success)>:
   0:	c3                   	ret

Disassembly of section .text._D3std7sumtype__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTmZQlTSQBk__T7FailureTS7kernels11DomainErrorZQBgZQDk__T10getByIndexVmi1ZQrMNgFNaNbNcNiNeZNgSQEr__TQEcTmZQEi:

0000000000000000 <std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.getByIndex!(1uL).getByIndex() inout>:
   0:	48 89 f8             	mov    %rdi,%rax
   3:	c3                   	ret

Disassembly of section .text._D3std7sumtype__T14destroyIfOwnerTS7error_d__T7FailureTS7kernels11DomainErrorZQBgZQCnFNaNbNiNfKQCjZv:

0000000000000000 <std.sumtype.destroyIfOwner!(error_d.Failure!(kernels.DomainError).Failure).destroyIfOwner(ref error_d.Failure!(kernels.DomainError).Failure)>:
   0:	c3                   	ret

Disassembly of section .text._D3std7sumtype__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTmZQlTSQBk__T7FailureTS7kernels11DomainErrorZQBgZQDk__T10getByIndexVmi2ZQrMNgFNaNbNcNiNeZNgSQEr__TQDhTQDcZQDp:

0000000000000000 <std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.getByIndex!(2uL).getByIndex() inout>:
   0:	48 89 f8             	mov    %rdi,%rax
   3:	c3                   	ret

Disassembly of section .text._D3std7sumtype__T9matchImplVEQBb8typecons__T4FlagVAyaa10_65786861757374697665ZQBii1SQDeQDd__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTmZQlTSQBk__T7FailureTS7kernels11DomainErrorZQBgZQDk8opAssignMFNcSQHoQHn__TQEkTQEfTQDtTQDdZQFaZ17__lambda_L697_C24Z__TQIzTQCfZQJhMFNaNbNiNfKQCxZv:

0000000000000000 <std.sumtype.matchImpl!(1, std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).__lambda_L697_C24).matchImpl!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).matchImpl(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)>:
   0:	0f b6 46 08          	movzbl 0x8(%rsi),%eax
   4:	85 c0                	test   %eax,%eax
   6:	74 32                	je     3a <std.sumtype.matchImpl!(1, std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).__lambda_L697_C24).matchImpl!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).matchImpl(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)+0x3a>
   8:	83 f8 01             	cmp    $0x1,%eax
   b:	74 19                	je     26 <std.sumtype.matchImpl!(1, std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).__lambda_L697_C24).matchImpl!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).matchImpl(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)+0x26>
   d:	83 f8 02             	cmp    $0x2,%eax
  10:	75 3d                	jne    4f <std.sumtype.matchImpl!(1, std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).__lambda_L697_C24).matchImpl!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).matchImpl(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)+0x4f>
  12:	48 8b 07             	mov    (%rdi),%rax
  15:	80 78 08 03          	cmpb   $0x3,0x8(%rax)
  19:	73 34                	jae    4f <std.sumtype.matchImpl!(1, std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).__lambda_L697_C24).matchImpl!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).matchImpl(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)+0x4f>
  1b:	48 8b 0e             	mov    (%rsi),%rcx
  1e:	48 89 08             	mov    %rcx,(%rax)
  21:	c6 40 08 02          	movb   $0x2,0x8(%rax)
  25:	c3                   	ret
  26:	48 8b 07             	mov    (%rdi),%rax
  29:	80 78 08 03          	cmpb   $0x3,0x8(%rax)
  2d:	73 20                	jae    4f <std.sumtype.matchImpl!(1, std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).__lambda_L697_C24).matchImpl!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).matchImpl(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)+0x4f>
  2f:	48 8b 0e             	mov    (%rsi),%rcx
  32:	48 89 08             	mov    %rcx,(%rax)
  35:	c6 40 08 01          	movb   $0x1,0x8(%rax)
  39:	c3                   	ret
  3a:	48 8b 07             	mov    (%rdi),%rax
  3d:	80 78 08 03          	cmpb   $0x3,0x8(%rax)
  41:	73 0c                	jae    4f <std.sumtype.matchImpl!(1, std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).__lambda_L697_C24).matchImpl!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).matchImpl(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)+0x4f>
  43:	48 c7 00 00 00 00 00 	movq   $0x0,(%rax)
  4a:	c6 40 08 00          	movb   $0x0,0x8(%rax)
  4e:	c3                   	ret
  4f:	0f 0b                	ud2

Disassembly of section .text._D4core8lifetime__T8moveImplTS7error_d__T7SuccessTmZQlZQBkFNaNbNiNfNkMKQBqZQBu:

0000000000000000 <_D4core8lifetime__T8moveImplTS7error_d__T7SuccessTmZQlZQBkFNaNbNiNfNkMKQBqZQBu>:
   0:	48 8b 07             	mov    (%rdi),%rax
   3:	c3                   	ret

Disassembly of section .text._D4core8lifetime__T15trustedMoveImplTS7error_d__T7SuccessTmZQlZQBsFNaNbNiNeNkMKQBqZQBu:

0000000000000000 <_D4core8lifetime__T15trustedMoveImplTS7error_d__T7SuccessTmZQlZQBsFNaNbNiNeNkMKQBqZQBu>:
   0:	48 8b 07             	mov    (%rdi),%rax
   3:	c3                   	ret

Disassembly of section .text._D4core8lifetime__T15moveEmplaceImplTS7error_d__T7SuccessTmZQlZQBsFNaNbNiNfMKQBoNkMKQBvZv:

0000000000000000 <_D4core8lifetime__T15moveEmplaceImplTS7error_d__T7SuccessTmZQlZQBsFNaNbNiNfMKQBoNkMKQBvZv>:
   0:	48 8b 06             	mov    (%rsi),%rax
   3:	48 89 07             	mov    %rax,(%rdi)
   6:	c3                   	ret

Disassembly of section .text._D4core8lifetime__T8moveImplTS3std7sumtype__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTS7kernels5BlockZQzTSQBy__T7FailureTSQBj11DomainErrorZQBbZQDtZQExFNaNbNiNfNkMKQFdZQFh:

0000000000000000 <_D4core8lifetime__T8moveImplTS3std7sumtype__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTS7kernels5BlockZQzTSQBy__T7FailureTSQBj11DomainErrorZQBbZQDtZQExFNaNbNiNfNkMKQFdZQFh>:
   0:	53                   	push   %rbx
   1:	48 89 fb             	mov    %rdi,%rbx
   4:	ba 08 01 00 00       	mov    $0x108,%edx
   9:	e8 00 00 00 00       	call   e <_D4core8lifetime__T8moveImplTS3std7sumtype__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTS7kernels5BlockZQzTSQBy__T7FailureTSQBj11DomainErrorZQBbZQDtZQExFNaNbNiNfNkMKQFdZQFh+0xe>	a: R_X86_64_PLT32	memcpy-0x4
   e:	48 89 d8             	mov    %rbx,%rax
  11:	5b                   	pop    %rbx
  12:	c3                   	ret

Disassembly of section .text._D4core8lifetime__T15trustedMoveImplTS3std7sumtype__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTS7kernels5BlockZQzTSQBy__T7FailureTSQBj11DomainErrorZQBbZQDtZQFfFNaNbNiNeNkMKQFdZQFh:

0000000000000000 <_D4core8lifetime__T15trustedMoveImplTS3std7sumtype__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTS7kernels5BlockZQzTSQBy__T7FailureTSQBj11DomainErrorZQBbZQDtZQFfFNaNbNiNeNkMKQFdZQFh>:
   0:	53                   	push   %rbx
   1:	48 89 fb             	mov    %rdi,%rbx
   4:	ba 08 01 00 00       	mov    $0x108,%edx
   9:	e8 00 00 00 00       	call   e <_D4core8lifetime__T15trustedMoveImplTS3std7sumtype__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTS7kernels5BlockZQzTSQBy__T7FailureTSQBj11DomainErrorZQBbZQDtZQFfFNaNbNiNeNkMKQFdZQFh+0xe>	a: R_X86_64_PLT32	memcpy-0x4
   e:	48 89 d8             	mov    %rbx,%rax
  11:	5b                   	pop    %rbx
  12:	c3                   	ret

Disassembly of section .text._D4core8lifetime__T15moveEmplaceImplTS3std7sumtype__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTS7kernels5BlockZQzTSQBy__T7FailureTSQBj11DomainErrorZQBbZQDtZQFfFNaNbNiNfMKQFbNkMKQFiZv:

0000000000000000 <_D4core8lifetime__T15moveEmplaceImplTS3std7sumtype__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTS7kernels5BlockZQzTSQBy__T7FailureTSQBj11DomainErrorZQBbZQDtZQFfFNaNbNiNfMKQFbNkMKQFiZv>:
   0:	ba 08 01 00 00       	mov    $0x108,%edx
   5:	e9 00 00 00 00       	jmp    a <_D4core8lifetime__T15moveEmplaceImplTS3std7sumtype__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTS7kernels5BlockZQzTSQBy__T7FailureTSQBj11DomainErrorZQBbZQDtZQFfFNaNbNiNfMKQFbNkMKQFiZv+0xa>	6: R_X86_64_PLT32	memcpy-0x4

Disassembly of section .text._D3std7sumtype__T9matchImplVEQBb8typecons__T4FlagVAyaa10_65786861757374697665ZQBii1SQDeQDd14destroyIfOwnerZ__TQDpTSQEjQEi__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTS7kernels5BlockZQzTSQBy__T7FailureTSQBj11DomainErrorZQBbZQDtZQIaFNaNbNiNfKQEuZv:

0000000000000000 <std.sumtype.matchImpl!(1, std.sumtype.destroyIfOwner).matchImpl!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).matchImpl(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)>:
   0:	80 bf 00 01 00 00 02 	cmpb   $0x2,0x100(%rdi)
   7:	77 01                	ja     a <std.sumtype.matchImpl!(1, std.sumtype.destroyIfOwner).matchImpl!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).matchImpl(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)+0xa>
   9:	c3                   	ret
   a:	0f 0b                	ud2

Disassembly of section .text._D3std7sumtype__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTS7kernels5BlockZQzTSQBy__T7FailureTSQBj11DomainErrorZQBbZQDt__T10getByIndexVmi0ZQrMNgFNaNbNcNiNeZNgSQFaQEv:

0000000000000000 <std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.getByIndex!(0uL).getByIndex() inout>:
   0:	48 89 f8             	mov    %rdi,%rax
   3:	c3                   	ret

Disassembly of section .text._D3std7sumtype__T14destroyIfOwnerTS7error_d__T7SuccessTS7kernels5BlockZQzZQCfFNaNbNiNfKQCbZv:

0000000000000000 <std.sumtype.destroyIfOwner!(error_d.Success!(kernels.Block).Success).destroyIfOwner(ref error_d.Success!(kernels.Block).Success)>:
   0:	c3                   	ret

Disassembly of section .text._D3std7sumtype__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTS7kernels5BlockZQzTSQBy__T7FailureTSQBj11DomainErrorZQBbZQDt__T10getByIndexVmi1ZQrMNgFNaNbNcNiNeZNgSQFa__TQElTQEgZQEt:

0000000000000000 <std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.getByIndex!(1uL).getByIndex() inout>:
   0:	48 89 f8             	mov    %rdi,%rax
   3:	c3                   	ret

Disassembly of section .text._D3std7sumtype__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTS7kernels5BlockZQzTSQBy__T7FailureTSQBj11DomainErrorZQBbZQDt__T10getByIndexVmi2ZQrMNgFNaNbNcNiNeZNgSQFa__TQDcTQCxZQDk:

0000000000000000 <std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.getByIndex!(2uL).getByIndex() inout>:
   0:	48 89 f8             	mov    %rdi,%rax
   3:	c3                   	ret

Disassembly of section .text._D3std7sumtype__T9matchImplVEQBb8typecons__T4FlagVAyaa10_65786861757374697665ZQBii1SQDeQDd__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTS7kernels5BlockZQzTSQBy__T7FailureTSQBj11DomainErrorZQBbZQDt8opAssignMFNcSQHxQHw__TQEtTQEoTQEcTQCyZQFjZ17__lambda_L697_C24Z__TQJiTQCfZQJqMFNaNbNiNfKQCxZv:

0000000000000000 <std.sumtype.matchImpl!(1, std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).__lambda_L697_C24).matchImpl!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).matchImpl(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)>:
   0:	53                   	push   %rbx
   1:	48 81 ec 00 01 00 00 	sub    $0x100,%rsp
   8:	0f b6 86 00 01 00 00 	movzbl 0x100(%rsi),%eax
   f:	85 c0                	test   %eax,%eax
  11:	0f 84 c4 00 00 00    	je     db <std.sumtype.matchImpl!(1, std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).__lambda_L697_C24).matchImpl!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).matchImpl(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)+0xdb>
  17:	83 f8 01             	cmp    $0x1,%eax
  1a:	0f 84 8e 00 00 00    	je     ae <std.sumtype.matchImpl!(1, std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).__lambda_L697_C24).matchImpl!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).matchImpl(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)+0xae>
  20:	83 f8 02             	cmp    $0x2,%eax
  23:	0f 85 4d 01 00 00    	jne    176 <std.sumtype.matchImpl!(1, std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).__lambda_L697_C24).matchImpl!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).matchImpl(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)+0x176>
  29:	48 8b 07             	mov    (%rdi),%rax
  2c:	80 b8 00 01 00 00 03 	cmpb   $0x3,0x100(%rax)
  33:	0f 83 3d 01 00 00    	jae    176 <std.sumtype.matchImpl!(1, std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).__lambda_L697_C24).matchImpl!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).matchImpl(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)+0x176>
  39:	48 8b 0e             	mov    (%rsi),%rcx
  3c:	48 89 08             	mov    %rcx,(%rax)
  3f:	0f 57 c0             	xorps  %xmm0,%xmm0
  42:	0f 11 40 08          	movups %xmm0,0x8(%rax)
  46:	0f 11 40 18          	movups %xmm0,0x18(%rax)
  4a:	0f 11 40 28          	movups %xmm0,0x28(%rax)
  4e:	0f 11 40 38          	movups %xmm0,0x38(%rax)
  52:	0f 11 40 48          	movups %xmm0,0x48(%rax)
  56:	0f 11 40 58          	movups %xmm0,0x58(%rax)
  5a:	0f 11 40 68          	movups %xmm0,0x68(%rax)
  5e:	0f 11 40 78          	movups %xmm0,0x78(%rax)
  62:	0f 11 80 88 00 00 00 	movups %xmm0,0x88(%rax)
  69:	0f 11 80 98 00 00 00 	movups %xmm0,0x98(%rax)
  70:	0f 11 80 a8 00 00 00 	movups %xmm0,0xa8(%rax)
  77:	0f 11 80 b8 00 00 00 	movups %xmm0,0xb8(%rax)
  7e:	0f 11 80 c8 00 00 00 	movups %xmm0,0xc8(%rax)
  85:	0f 11 80 d8 00 00 00 	movups %xmm0,0xd8(%rax)
  8c:	0f 11 80 e8 00 00 00 	movups %xmm0,0xe8(%rax)
  93:	48 c7 80 f8 00 00 00 00 00 00 00 	movq   $0x0,0xf8(%rax)
  9e:	c6 80 00 01 00 00 02 	movb   $0x2,0x100(%rax)
  a5:	48 81 c4 00 01 00 00 	add    $0x100,%rsp
  ac:	5b                   	pop    %rbx
  ad:	c3                   	ret
  ae:	48 8b 1f             	mov    (%rdi),%rbx
  b1:	80 bb 00 01 00 00 03 	cmpb   $0x3,0x100(%rbx)
  b8:	0f 83 b8 00 00 00    	jae    176 <std.sumtype.matchImpl!(1, std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).__lambda_L697_C24).matchImpl!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).matchImpl(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)+0x176>
  be:	ba 00 01 00 00       	mov    $0x100,%edx
  c3:	48 89 df             	mov    %rbx,%rdi
  c6:	e8 00 00 00 00       	call   cb <std.sumtype.matchImpl!(1, std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).__lambda_L697_C24).matchImpl!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).matchImpl(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)+0xcb>	c7: R_X86_64_PLT32	memmove-0x4
  cb:	c6 83 00 01 00 00 01 	movb   $0x1,0x100(%rbx)
  d2:	48 81 c4 00 01 00 00 	add    $0x100,%rsp
  d9:	5b                   	pop    %rbx
  da:	c3                   	ret
  db:	48 8b 1f             	mov    (%rdi),%rbx
  de:	80 bb 00 01 00 00 03 	cmpb   $0x3,0x100(%rbx)
  e5:	0f 83 8b 00 00 00    	jae    176 <std.sumtype.matchImpl!(1, std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).__lambda_L697_C24).matchImpl!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).matchImpl(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)+0x176>
  eb:	0f 57 c0             	xorps  %xmm0,%xmm0
  ee:	0f 11 84 24 f0 00 00 00 	movups %xmm0,0xf0(%rsp)
  f6:	0f 11 84 24 e1 00 00 00 	movups %xmm0,0xe1(%rsp)
  fe:	0f 11 84 24 d1 00 00 00 	movups %xmm0,0xd1(%rsp)
 106:	0f 11 84 24 c1 00 00 00 	movups %xmm0,0xc1(%rsp)
 10e:	0f 11 84 24 b1 00 00 00 	movups %xmm0,0xb1(%rsp)
 116:	0f 11 84 24 a1 00 00 00 	movups %xmm0,0xa1(%rsp)
 11e:	0f 11 84 24 91 00 00 00 	movups %xmm0,0x91(%rsp)
 126:	0f 11 84 24 81 00 00 00 	movups %xmm0,0x81(%rsp)
 12e:	0f 11 44 24 71       	movups %xmm0,0x71(%rsp)
 133:	0f 11 44 24 61       	movups %xmm0,0x61(%rsp)
 138:	0f 11 44 24 51       	movups %xmm0,0x51(%rsp)
 13d:	0f 11 44 24 41       	movups %xmm0,0x41(%rsp)
 142:	0f 11 44 24 31       	movups %xmm0,0x31(%rsp)
 147:	0f 11 44 24 21       	movups %xmm0,0x21(%rsp)
 14c:	0f 11 44 24 11       	movups %xmm0,0x11(%rsp)
 151:	0f 11 44 24 01       	movups %xmm0,0x1(%rsp)
 156:	48 89 e6             	mov    %rsp,%rsi
 159:	ba 00 01 00 00       	mov    $0x100,%edx
 15e:	48 89 df             	mov    %rbx,%rdi
 161:	e8 00 00 00 00       	call   166 <std.sumtype.matchImpl!(1, std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).__lambda_L697_C24).matchImpl!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).matchImpl(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)+0x166>	162: R_X86_64_PLT32	memcpy-0x4
 166:	c6 83 00 01 00 00 00 	movb   $0x0,0x100(%rbx)
 16d:	48 81 c4 00 01 00 00 	add    $0x100,%rsp
 174:	5b                   	pop    %rbx
 175:	c3                   	ret
 176:	0f 0b                	ud2

Disassembly of section .text._D4core8lifetime__T8moveImplTS7error_d__T7SuccessTS7kernels5BlockZQzZQByFNaNbNiNfNkMKQCeZQCi:

0000000000000000 <_D4core8lifetime__T8moveImplTS7error_d__T7SuccessTS7kernels5BlockZQzZQByFNaNbNiNfNkMKQCeZQCi>:
   0:	53                   	push   %rbx
   1:	48 89 fb             	mov    %rdi,%rbx
   4:	ba 00 01 00 00       	mov    $0x100,%edx
   9:	e8 00 00 00 00       	call   e <_D4core8lifetime__T8moveImplTS7error_d__T7SuccessTS7kernels5BlockZQzZQByFNaNbNiNfNkMKQCeZQCi+0xe>	a: R_X86_64_PLT32	memcpy-0x4
   e:	48 89 d8             	mov    %rbx,%rax
  11:	5b                   	pop    %rbx
  12:	c3                   	ret

Disassembly of section .text._D4core8lifetime__T15trustedMoveImplTS7error_d__T7SuccessTS7kernels5BlockZQzZQCgFNaNbNiNeNkMKQCeZQCi:

0000000000000000 <_D4core8lifetime__T15trustedMoveImplTS7error_d__T7SuccessTS7kernels5BlockZQzZQCgFNaNbNiNeNkMKQCeZQCi>:
   0:	53                   	push   %rbx
   1:	48 89 fb             	mov    %rdi,%rbx
   4:	ba 00 01 00 00       	mov    $0x100,%edx
   9:	e8 00 00 00 00       	call   e <_D4core8lifetime__T15trustedMoveImplTS7error_d__T7SuccessTS7kernels5BlockZQzZQCgFNaNbNiNeNkMKQCeZQCi+0xe>	a: R_X86_64_PLT32	memcpy-0x4
   e:	48 89 d8             	mov    %rbx,%rax
  11:	5b                   	pop    %rbx
  12:	c3                   	ret

Disassembly of section .text._D4core8lifetime__T15moveEmplaceImplTS7error_d__T7SuccessTS7kernels5BlockZQzZQCgFNaNbNiNfMKQCcNkMKQCjZv:

0000000000000000 <_D4core8lifetime__T15moveEmplaceImplTS7error_d__T7SuccessTS7kernels5BlockZQzZQCgFNaNbNiNfMKQCcNkMKQCjZv>:
   0:	ba 00 01 00 00       	mov    $0x100,%edx
   5:	e9 00 00 00 00       	jmp    a <_D4core8lifetime__T15moveEmplaceImplTS7error_d__T7SuccessTS7kernels5BlockZQzZQCgFNaNbNiNfMKQCcNkMKQCjZv+0xa>	6: R_X86_64_PLT32	memcpy-0x4

Disassembly of section .text._D7error_d__T6ResultTmTS7kernels11DomainErrorZQBh__T5errorTSQCg__TQCbTmTQBxZQClZQBcMFNaNbNiNfZQCt:

0000000000000000 <error_d.Result!(ulong, kernels.DomainError).Result.error!(error_d.Result!(ulong, kernels.DomainError).Result).error()>:
   0:	53                   	push   %rbx
   1:	48 89 fb             	mov    %rdi,%rbx
   4:	0f b6 47 08          	movzbl 0x8(%rdi),%eax
   8:	83 f8 02             	cmp    $0x2,%eax
   b:	73 17                	jae    24 <error_d.Result!(ulong, kernels.DomainError).Result.error!(error_d.Result!(ulong, kernels.DomainError).Result).error()+0x24>
   d:	e8 00 00 00 00       	call   12 <error_d.Result!(ulong, kernels.DomainError).Result.error!(error_d.Result!(ulong, kernels.DomainError).Result).error()+0x12>	e: R_X86_64_PLT32	error_d.badAccess()-0x4
  12:	0f b6 43 08          	movzbl 0x8(%rbx),%eax
  16:	83 f8 02             	cmp    $0x2,%eax
  19:	74 0b                	je     26 <error_d.Result!(ulong, kernels.DomainError).Result.error!(error_d.Result!(ulong, kernels.DomainError).Result).error()+0x26>
  1b:	83 f8 01             	cmp    $0x1,%eax
  1e:	74 0b                	je     2b <error_d.Result!(ulong, kernels.DomainError).Result.error!(error_d.Result!(ulong, kernels.DomainError).Result).error()+0x2b>
  20:	85 c0                	test   %eax,%eax
  22:	0f 0b                	ud2
  24:	75 05                	jne    2b <error_d.Result!(ulong, kernels.DomainError).Result.error!(error_d.Result!(ulong, kernels.DomainError).Result).error()+0x2b>
  26:	48 8b 03             	mov    (%rbx),%rax
  29:	5b                   	pop    %rbx
  2a:	c3                   	ret
  2b:	0f 0b                	ud2

Disassembly of section .text._D7error_d__T6ResultTmTS7kernels11DomainErrorZQBh__T5valueTSQCg__TQCbTmTQBxZQClZQBcMFNaNbNiNfZm:

0000000000000000 <error_d.Result!(ulong, kernels.DomainError).Result.value!(error_d.Result!(ulong, kernels.DomainError).Result).value()>:
   0:	53                   	push   %rbx
   1:	48 89 fb             	mov    %rdi,%rbx
   4:	0f b6 47 08          	movzbl 0x8(%rdi),%eax
   8:	85 c0                	test   %eax,%eax
   a:	74 0a                	je     16 <error_d.Result!(ulong, kernels.DomainError).Result.value!(error_d.Result!(ulong, kernels.DomainError).Result).value()+0x16>
   c:	83 f8 01             	cmp    $0x1,%eax
   f:	74 13                	je     24 <error_d.Result!(ulong, kernels.DomainError).Result.value!(error_d.Result!(ulong, kernels.DomainError).Result).value()+0x24>
  11:	83 f8 02             	cmp    $0x2,%eax
  14:	75 1a                	jne    30 <error_d.Result!(ulong, kernels.DomainError).Result.value!(error_d.Result!(ulong, kernels.DomainError).Result).value()+0x30>
  16:	e8 00 00 00 00       	call   1b <error_d.Result!(ulong, kernels.DomainError).Result.value!(error_d.Result!(ulong, kernels.DomainError).Result).value()+0x1b>	17: R_X86_64_PLT32	error_d.badAccess()-0x4
  1b:	0f b6 43 08          	movzbl 0x8(%rbx),%eax
  1f:	83 f8 01             	cmp    $0x1,%eax
  22:	75 05                	jne    29 <error_d.Result!(ulong, kernels.DomainError).Result.value!(error_d.Result!(ulong, kernels.DomainError).Result).value()+0x29>
  24:	48 8b 03             	mov    (%rbx),%rax
  27:	5b                   	pop    %rbx
  28:	c3                   	ret
  29:	83 f8 02             	cmp    $0x2,%eax
  2c:	74 02                	je     30 <error_d.Result!(ulong, kernels.DomainError).Result.value!(error_d.Result!(ulong, kernels.DomainError).Result).value()+0x30>
  2e:	85 c0                	test   %eax,%eax
  30:	0f 0b                	ud2

Disassembly of section .text._D3std7sumtype__T3getTS7error_d__T7SuccessTmZQlZ__TQBiTSQCcQCb__T7SumTypeTSQCa5EmptyTQClTSQCp__T7FailureTS7kernels11DomainErrorZQBgZQCpZQEpFNaNbNcNiNfKQDsZQFd:

0000000000000000 <std.sumtype.get!(error_d.Success!(ulong).Success).get!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).get(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)>:
   0:	0f b6 47 08          	movzbl 0x8(%rdi),%eax
   4:	83 f8 01             	cmp    $0x1,%eax
   7:	75 04                	jne    d <std.sumtype.get!(error_d.Success!(ulong).Success).get!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).get(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)+0xd>
   9:	48 89 f8             	mov    %rdi,%rax
   c:	c3                   	ret
   d:	83 f8 02             	cmp    $0x2,%eax
  10:	74 02                	je     14 <std.sumtype.get!(error_d.Success!(ulong).Success).get!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).get(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)+0x14>
  12:	85 c0                	test   %eax,%eax
  14:	0f 0b                	ud2

Disassembly of section .text._D3std7sumtype__T5matchSQwQu__T9getLvalueVEQBp8typecons__T4FlagVAyaa4_7472795fZQvi0TS7error_d__T7SuccessTmZQlZQDbZ__TQDwTSQEqQEp__T7SumTypeTSQCe5EmptyTQCpTSQCt__T7FailureTS7kernels11DomainErrorZQBgZQCpZQHdFNaNbNcNiNfKQDsZQFh:

0000000000000000 <std.sumtype.match!(std.sumtype.getLvalue!(0, error_d.Success!(ulong).Success).getLvalue).match!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).match(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)>:
   0:	0f b6 47 08          	movzbl 0x8(%rdi),%eax
   4:	83 f8 01             	cmp    $0x1,%eax
   7:	75 04                	jne    d <std.sumtype.match!(std.sumtype.getLvalue!(0, error_d.Success!(ulong).Success).getLvalue).match!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).match(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)+0xd>
   9:	48 89 f8             	mov    %rdi,%rax
   c:	c3                   	ret
   d:	83 f8 02             	cmp    $0x2,%eax
  10:	74 02                	je     14 <std.sumtype.match!(std.sumtype.getLvalue!(0, error_d.Success!(ulong).Success).getLvalue).match!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).match(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)+0x14>
  12:	85 c0                	test   %eax,%eax
  14:	0f 0b                	ud2

Disassembly of section .text._D3std7sumtype__T9matchImplVEQBb8typecons__T4FlagVAyaa10_65786861757374697665ZQBii1SQDeQDd__T9getLvalueVEQDzQCy__TQCsVQCqa4_7472795fZQDli0TS7error_d__T7SuccessTmZQlZQCuZ__TQFzTSQGtQGs__T7SumTypeTSQCe5EmptyTQCpTSQCt__T7FailureTS7kernels11DomainErrorZQBgZQCpZQJgFNaNbNcNiNfKQDsZQFh:

0000000000000000 <std.sumtype.matchImpl!(1, std.sumtype.getLvalue!(0, error_d.Success!(ulong).Success).getLvalue).matchImpl!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).matchImpl(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)>:
   0:	0f b6 47 08          	movzbl 0x8(%rdi),%eax
   4:	83 f8 01             	cmp    $0x1,%eax
   7:	75 04                	jne    d <std.sumtype.matchImpl!(1, std.sumtype.getLvalue!(0, error_d.Success!(ulong).Success).getLvalue).matchImpl!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).matchImpl(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)+0xd>
   9:	48 89 f8             	mov    %rdi,%rax
   c:	c3                   	ret
   d:	85 c0                	test   %eax,%eax
   f:	74 03                	je     14 <std.sumtype.matchImpl!(1, std.sumtype.getLvalue!(0, error_d.Success!(ulong).Success).getLvalue).matchImpl!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).matchImpl(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)+0x14>
  11:	83 f8 02             	cmp    $0x2,%eax
  14:	0f 0b                	ud2

Disassembly of section .text._D3std7sumtype__T9getLvalueVEQBb8typecons__T4FlagVAyaa4_7472795fZQvi0TS7error_d__T7SuccessTmZQlZ__TQDeTSQBh5EmptyZQDtFNaNbNcNiNfKQBaZQCl:

0000000000000000 <std.sumtype.getLvalue!(0, error_d.Success!(ulong).Success).getLvalue!(error_d.Empty).getLvalue(ref error_d.Empty)>:
   0:	0f 0b                	ud2

Disassembly of section .text._D3std7sumtype__T9getLvalueVEQBb8typecons__T4FlagVAyaa4_7472795fZQvi0TS7error_d__T7SuccessTmZQlZ__TQDeTQBhZQDmFNaNbNcNiNfKQCaZQCe:

0000000000000000 <std.sumtype.getLvalue!(0, error_d.Success!(ulong).Success).getLvalue!(error_d.Success!(ulong).Success).getLvalue(ref error_d.Success!(ulong).Success)>:
   0:	48 89 f8             	mov    %rdi,%rax
   3:	c3                   	ret

Disassembly of section .text._D3std7sumtype__T9getLvalueVEQBb8typecons__T4FlagVAyaa4_7472795fZQvi0TS7error_d__T7SuccessTmZQlZ__TQDeTSQBh__T7FailureTS7kernels11DomainErrorZQBgZQEzFNaNbNcNiNfKQCgZQDr:

0000000000000000 <std.sumtype.getLvalue!(0, error_d.Success!(ulong).Success).getLvalue!(error_d.Failure!(kernels.DomainError).Failure).getLvalue(ref error_d.Failure!(kernels.DomainError).Failure)>:
   0:	0f 0b                	ud2

Disassembly of section .text._D3std7sumtype__T9matchImplVEQBb8typecons__T4FlagVAyaa10_65786861757374697665ZQBii1S7error_d__T6ResultTmTS7kernels11DomainErrorZQBh5stateMxFNaNbNiNfZ17__lambda_L162_C31Z__TQFzTxSQGuQGt__T7SumTypeTSQEj5EmptyTSQEu__T7SuccessTmZQlTSQFp__T7FailureTQFjZQnZQCmZQJeMFNaNbNiNfKxQDpZEQHj11ResultState:

0000000000000000 <std.sumtype.matchImpl!(1, error_d.Result!(ulong, kernels.DomainError).Result.state().__lambda_L162_C31).matchImpl!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).matchImpl(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType))>:
   0:	0f b6 46 08          	movzbl 0x8(%rsi),%eax
   4:	83 f8 02             	cmp    $0x2,%eax
   7:	77 01                	ja     a <std.sumtype.matchImpl!(1, error_d.Result!(ulong, kernels.DomainError).Result.state().__lambda_L162_C31).matchImpl!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).matchImpl(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType))+0xa>
   9:	c3                   	ret
   a:	0f 0b                	ud2

Disassembly of section .text._D3std7sumtype__T3getTS7error_d__T7FailureTS7kernels11DomainErrorZQBgZ__TQCeTSQCyQCx__T7SumTypeTSQCw5EmptyTSQDh__T7SuccessTmZQlTQEcZQBtZQEpFNaNbNcNiNfKQCwZQFd:

0000000000000000 <std.sumtype.get!(error_d.Failure!(kernels.DomainError).Failure).get!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).get(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)>:
   0:	0f b6 47 08          	movzbl 0x8(%rdi),%eax
   4:	83 f8 02             	cmp    $0x2,%eax
   7:	75 04                	jne    d <std.sumtype.get!(error_d.Failure!(kernels.DomainError).Failure).get!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).get(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)+0xd>
   9:	48 89 f8             	mov    %rdi,%rax
   c:	c3                   	ret
   d:	83 f8 01             	cmp    $0x1,%eax
  10:	74 02                	je     14 <std.sumtype.get!(error_d.Failure!(kernels.DomainError).Failure).get!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).get(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)+0x14>
  12:	85 c0                	test   %eax,%eax
  14:	0f 0b                	ud2

Disassembly of section .text._D3std7sumtype__T5matchSQwQu__T9getLvalueVEQBp8typecons__T4FlagVAyaa4_7472795fZQvi0TS7error_d__T7FailureTS7kernels11DomainErrorZQBgZQDxZ__TQEsTSQFmQFl__T7SumTypeTSQDa5EmptyTSQDl__T7SuccessTmZQlTQEgZQBtZQHdFNaNbNcNiNfKQCwZQFh:

0000000000000000 <std.sumtype.match!(std.sumtype.getLvalue!(0, error_d.Failure!(kernels.DomainError).Failure).getLvalue).match!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).match(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)>:
   0:	0f b6 47 08          	movzbl 0x8(%rdi),%eax
   4:	83 f8 02             	cmp    $0x2,%eax
   7:	75 04                	jne    d <std.sumtype.match!(std.sumtype.getLvalue!(0, error_d.Failure!(kernels.DomainError).Failure).getLvalue).match!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).match(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)+0xd>
   9:	48 89 f8             	mov    %rdi,%rax
   c:	c3                   	ret
   d:	83 f8 01             	cmp    $0x1,%eax
  10:	74 02                	je     14 <std.sumtype.match!(std.sumtype.getLvalue!(0, error_d.Failure!(kernels.DomainError).Failure).getLvalue).match!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).match(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)+0x14>
  12:	85 c0                	test   %eax,%eax
  14:	0f 0b                	ud2

Disassembly of section .text._D3std7sumtype__T9matchImplVEQBb8typecons__T4FlagVAyaa10_65786861757374697665ZQBii1SQDeQDd__T9getLvalueVEQDzQCy__TQCsVQCqa4_7472795fZQDli0TS7error_d__T7FailureTS7kernels11DomainErrorZQBgZQDqZ__TQGvTSQHpQHo__T7SumTypeTSQDa5EmptyTSQDl__T7SuccessTmZQlTQEgZQBtZQJgFNaNbNcNiNfKQCwZQFh:

0000000000000000 <std.sumtype.matchImpl!(1, std.sumtype.getLvalue!(0, error_d.Failure!(kernels.DomainError).Failure).getLvalue).matchImpl!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).matchImpl(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)>:
   0:	0f b6 47 08          	movzbl 0x8(%rdi),%eax
   4:	83 f8 02             	cmp    $0x2,%eax
   7:	75 04                	jne    d <std.sumtype.matchImpl!(1, std.sumtype.getLvalue!(0, error_d.Failure!(kernels.DomainError).Failure).getLvalue).matchImpl!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).matchImpl(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)+0xd>
   9:	48 89 f8             	mov    %rdi,%rax
   c:	c3                   	ret
   d:	85 c0                	test   %eax,%eax
   f:	74 03                	je     14 <std.sumtype.matchImpl!(1, std.sumtype.getLvalue!(0, error_d.Failure!(kernels.DomainError).Failure).getLvalue).matchImpl!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).matchImpl(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)+0x14>
  11:	83 f8 01             	cmp    $0x1,%eax
  14:	0f 0b                	ud2

Disassembly of section .text._D3std7sumtype__T9getLvalueVEQBb8typecons__T4FlagVAyaa4_7472795fZQvi0TS7error_d__T7FailureTS7kernels11DomainErrorZQBgZ__TQEaTSQCd5EmptyZQEpFNaNbNcNiNfKQBaZQDh:

0000000000000000 <std.sumtype.getLvalue!(0, error_d.Failure!(kernels.DomainError).Failure).getLvalue!(error_d.Empty).getLvalue(ref error_d.Empty)>:
   0:	0f 0b                	ud2

Disassembly of section .text._D3std7sumtype__T9getLvalueVEQBb8typecons__T4FlagVAyaa4_7472795fZQvi0TS7error_d__T7FailureTS7kernels11DomainErrorZQBgZ__TQEaTSQCd__T7SuccessTmZQlZQEzFNaNbNcNiNfKQBkZQDr:

0000000000000000 <std.sumtype.getLvalue!(0, error_d.Failure!(kernels.DomainError).Failure).getLvalue!(error_d.Success!(ulong).Success).getLvalue(ref error_d.Success!(ulong).Success)>:
   0:	0f 0b                	ud2

Disassembly of section .text._D3std7sumtype__T9getLvalueVEQBb8typecons__T4FlagVAyaa4_7472795fZQvi0TS7error_d__T7FailureTS7kernels11DomainErrorZQBgZ__TQEaTQCdZQEiFNaNbNcNiNfKQCwZQDa:

0000000000000000 <std.sumtype.getLvalue!(0, error_d.Failure!(kernels.DomainError).Failure).getLvalue!(error_d.Failure!(kernels.DomainError).Failure).getLvalue(ref error_d.Failure!(kernels.DomainError).Failure)>:
   0:	48 89 f8             	mov    %rdi,%rax
   3:	c3                   	ret

Disassembly of section .text._D3std7sumtype__T5matchS7error_d__T6ResultTmTS7kernels11DomainErrorZQBh__T11copyStorageTSQDjQDi__T7SumTypeTSQDg5EmptyTSQDr__T7SuccessTmZQlTSQEm__T7FailureTQEgZQnZQCmZQDoFKQDfZ17__lambda_L103_C30Z__TQGzTQEkZQHhMFNaNbNiNfKQFcZQFg:

0000000000000000 <std.sumtype.match!(error_d.Result!(ulong, kernels.DomainError).Result.copyStorage!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).copyStorage(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).__lambda_L103_C30).match!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).match(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)>:
   0:	0f b6 42 08          	movzbl 0x8(%rdx),%eax
   4:	83 f8 02             	cmp    $0x2,%eax
   7:	74 25                	je     2e <std.sumtype.match!(error_d.Result!(ulong, kernels.DomainError).Result.copyStorage!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).copyStorage(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).__lambda_L103_C30).match!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).match(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)+0x2e>
   9:	83 f8 01             	cmp    $0x1,%eax
   c:	74 0e                	je     1c <std.sumtype.match!(error_d.Result!(ulong, kernels.DomainError).Result.copyStorage!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).copyStorage(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).__lambda_L103_C30).match!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).match(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)+0x1c>
   e:	85 c0                	test   %eax,%eax
  10:	75 2e                	jne    40 <std.sumtype.match!(error_d.Result!(ulong, kernels.DomainError).Result.copyStorage!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).copyStorage(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).__lambda_L103_C30).match!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).match(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)+0x40>
  12:	0f 57 c0             	xorps  %xmm0,%xmm0
  15:	0f 11 07             	movups %xmm0,(%rdi)
  18:	48 89 f8             	mov    %rdi,%rax
  1b:	c3                   	ret
  1c:	48 c7 47 08 01 00 00 00 	movq   $0x1,0x8(%rdi)
  24:	48 8b 02             	mov    (%rdx),%rax
  27:	48 89 07             	mov    %rax,(%rdi)
  2a:	48 89 f8             	mov    %rdi,%rax
  2d:	c3                   	ret
  2e:	48 c7 47 08 02 00 00 00 	movq   $0x2,0x8(%rdi)
  36:	48 8b 02             	mov    (%rdx),%rax
  39:	48 89 07             	mov    %rax,(%rdi)
  3c:	48 89 f8             	mov    %rdi,%rax
  3f:	c3                   	ret
  40:	0f 0b                	ud2

Disassembly of section .text._D3std7sumtype__T9matchImplVEQBb8typecons__T4FlagVAyaa10_65786861757374697665ZQBii1S7error_d__T6ResultTmTS7kernels11DomainErrorZQBh__T11copyStorageTSQFrQFq__T7SumTypeTSQDg5EmptyTSQDr__T7SuccessTmZQlTSQEm__T7FailureTQEgZQnZQCmZQDoFKQDfZ17__lambda_L103_C30Z__TQJhTQEkZQJpMFNaNbNiNfKQFcZQFg:

0000000000000000 <std.sumtype.matchImpl!(1, error_d.Result!(ulong, kernels.DomainError).Result.copyStorage!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).copyStorage(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).__lambda_L103_C30).matchImpl!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).matchImpl(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)>:
   0:	0f b6 42 08          	movzbl 0x8(%rdx),%eax
   4:	85 c0                	test   %eax,%eax
   6:	74 2e                	je     36 <std.sumtype.matchImpl!(1, error_d.Result!(ulong, kernels.DomainError).Result.copyStorage!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).copyStorage(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).__lambda_L103_C30).matchImpl!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).matchImpl(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)+0x36>
   8:	83 f8 01             	cmp    $0x1,%eax
   b:	74 17                	je     24 <std.sumtype.matchImpl!(1, error_d.Result!(ulong, kernels.DomainError).Result.copyStorage!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).copyStorage(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).__lambda_L103_C30).matchImpl!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).matchImpl(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)+0x24>
   d:	83 f8 02             	cmp    $0x2,%eax
  10:	75 2e                	jne    40 <std.sumtype.matchImpl!(1, error_d.Result!(ulong, kernels.DomainError).Result.copyStorage!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).copyStorage(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).__lambda_L103_C30).matchImpl!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).matchImpl(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)+0x40>
  12:	48 c7 47 08 02 00 00 00 	movq   $0x2,0x8(%rdi)
  1a:	48 8b 02             	mov    (%rdx),%rax
  1d:	48 89 07             	mov    %rax,(%rdi)
  20:	48 89 f8             	mov    %rdi,%rax
  23:	c3                   	ret
  24:	48 c7 47 08 01 00 00 00 	movq   $0x1,0x8(%rdi)
  2c:	48 8b 02             	mov    (%rdx),%rax
  2f:	48 89 07             	mov    %rax,(%rdi)
  32:	48 89 f8             	mov    %rdi,%rax
  35:	c3                   	ret
  36:	0f 57 c0             	xorps  %xmm0,%xmm0
  39:	0f 11 07             	movups %xmm0,(%rdi)
  3c:	48 89 f8             	mov    %rdi,%rax
  3f:	c3                   	ret
  40:	0f 0b                	ud2

Disassembly of section .text._D3std7sumtype__T5matchS7error_d__T6ResultTmTS7kernels11DomainErrorZQBh__T11copyStorageTxSQDkQDj__T7SumTypeTSQDh5EmptyTSQDs__T7SuccessTmZQlTSQEn__T7FailureTQEhZQnZQCmZQDpFKxQDgZ17__lambda_L103_C30Z__TQHbTxQEmZQHkMFNaNbNiNfKxQFfZxQFk:

0000000000000000 <std.sumtype.match!(error_d.Result!(ulong, kernels.DomainError).Result.copyStorage!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).copyStorage(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).__lambda_L103_C30).match!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).match(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType))>:
   0:	0f b6 42 08          	movzbl 0x8(%rdx),%eax
   4:	83 f8 02             	cmp    $0x2,%eax
   7:	74 25                	je     2e <std.sumtype.match!(error_d.Result!(ulong, kernels.DomainError).Result.copyStorage!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).copyStorage(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).__lambda_L103_C30).match!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).match(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType))+0x2e>
   9:	83 f8 01             	cmp    $0x1,%eax
   c:	74 0e                	je     1c <std.sumtype.match!(error_d.Result!(ulong, kernels.DomainError).Result.copyStorage!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).copyStorage(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).__lambda_L103_C30).match!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).match(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType))+0x1c>
   e:	85 c0                	test   %eax,%eax
  10:	75 2e                	jne    40 <std.sumtype.match!(error_d.Result!(ulong, kernels.DomainError).Result.copyStorage!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).copyStorage(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).__lambda_L103_C30).match!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).match(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType))+0x40>
  12:	0f 57 c0             	xorps  %xmm0,%xmm0
  15:	0f 11 07             	movups %xmm0,(%rdi)
  18:	48 89 f8             	mov    %rdi,%rax
  1b:	c3                   	ret
  1c:	48 c7 47 08 01 00 00 00 	movq   $0x1,0x8(%rdi)
  24:	48 8b 02             	mov    (%rdx),%rax
  27:	48 89 07             	mov    %rax,(%rdi)
  2a:	48 89 f8             	mov    %rdi,%rax
  2d:	c3                   	ret
  2e:	48 c7 47 08 02 00 00 00 	movq   $0x2,0x8(%rdi)
  36:	48 8b 02             	mov    (%rdx),%rax
  39:	48 89 07             	mov    %rax,(%rdi)
  3c:	48 89 f8             	mov    %rdi,%rax
  3f:	c3                   	ret
  40:	0f 0b                	ud2

Disassembly of section .text._D3std7sumtype__T9matchImplVEQBb8typecons__T4FlagVAyaa10_65786861757374697665ZQBii1S7error_d__T6ResultTmTS7kernels11DomainErrorZQBh__T11copyStorageTxSQFsQFr__T7SumTypeTSQDh5EmptyTSQDs__T7SuccessTmZQlTSQEn__T7FailureTQEhZQnZQCmZQDpFKxQDgZ17__lambda_L103_C30Z__TQJjTxQEmZQJsMFNaNbNiNfKxQFfZxQFk:

0000000000000000 <std.sumtype.matchImpl!(1, error_d.Result!(ulong, kernels.DomainError).Result.copyStorage!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).copyStorage(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).__lambda_L103_C30).matchImpl!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).matchImpl(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType))>:
   0:	0f b6 42 08          	movzbl 0x8(%rdx),%eax
   4:	85 c0                	test   %eax,%eax
   6:	74 2e                	je     36 <std.sumtype.matchImpl!(1, error_d.Result!(ulong, kernels.DomainError).Result.copyStorage!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).copyStorage(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).__lambda_L103_C30).matchImpl!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).matchImpl(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType))+0x36>
   8:	83 f8 01             	cmp    $0x1,%eax
   b:	74 17                	je     24 <std.sumtype.matchImpl!(1, error_d.Result!(ulong, kernels.DomainError).Result.copyStorage!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).copyStorage(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).__lambda_L103_C30).matchImpl!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).matchImpl(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType))+0x24>
   d:	83 f8 02             	cmp    $0x2,%eax
  10:	75 2e                	jne    40 <std.sumtype.matchImpl!(1, error_d.Result!(ulong, kernels.DomainError).Result.copyStorage!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).copyStorage(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).__lambda_L103_C30).matchImpl!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).matchImpl(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType))+0x40>
  12:	48 c7 47 08 02 00 00 00 	movq   $0x2,0x8(%rdi)
  1a:	48 8b 02             	mov    (%rdx),%rax
  1d:	48 89 07             	mov    %rax,(%rdi)
  20:	48 89 f8             	mov    %rdi,%rax
  23:	c3                   	ret
  24:	48 c7 47 08 01 00 00 00 	movq   $0x1,0x8(%rdi)
  2c:	48 8b 02             	mov    (%rdx),%rax
  2f:	48 89 07             	mov    %rax,(%rdi)
  32:	48 89 f8             	mov    %rdi,%rax
  35:	c3                   	ret
  36:	0f 57 c0             	xorps  %xmm0,%xmm0
  39:	0f 11 07             	movups %xmm0,(%rdi)
  3c:	48 89 f8             	mov    %rdi,%rax
  3f:	c3                   	ret
  40:	0f 0b                	ud2

Disassembly of section .text._D3std7sumtype__T5matchS7error_d__T6ResultTmTS7kernels11DomainErrorZQBh__T11copyStorageTySQDkQDj__T7SumTypeTSQDh5EmptyTSQDs__T7SuccessTmZQlTSQEn__T7FailureTQEhZQnZQCmZQDpFKyQDgZ17__lambda_L103_C30Z__TQHbTyQEmZQHkMFNaNbNiNfKyQFfZyQFk:

0000000000000000 <std.sumtype.match!(error_d.Result!(ulong, kernels.DomainError).Result.copyStorage!(immutable(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).copyStorage(ref immutable(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).__lambda_L103_C30).match!(immutable(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).match(ref immutable(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType))>:
   0:	0f b6 42 08          	movzbl 0x8(%rdx),%eax
   4:	83 f8 02             	cmp    $0x2,%eax
   7:	74 25                	je     2e <std.sumtype.match!(error_d.Result!(ulong, kernels.DomainError).Result.copyStorage!(immutable(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).copyStorage(ref immutable(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).__lambda_L103_C30).match!(immutable(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).match(ref immutable(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType))+0x2e>
   9:	83 f8 01             	cmp    $0x1,%eax
   c:	74 0e                	je     1c <std.sumtype.match!(error_d.Result!(ulong, kernels.DomainError).Result.copyStorage!(immutable(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).copyStorage(ref immutable(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).__lambda_L103_C30).match!(immutable(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).match(ref immutable(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType))+0x1c>
   e:	85 c0                	test   %eax,%eax
  10:	75 2e                	jne    40 <std.sumtype.match!(error_d.Result!(ulong, kernels.DomainError).Result.copyStorage!(immutable(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).copyStorage(ref immutable(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).__lambda_L103_C30).match!(immutable(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).match(ref immutable(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType))+0x40>
  12:	0f 57 c0             	xorps  %xmm0,%xmm0
  15:	0f 11 07             	movups %xmm0,(%rdi)
  18:	48 89 f8             	mov    %rdi,%rax
  1b:	c3                   	ret
  1c:	48 c7 47 08 01 00 00 00 	movq   $0x1,0x8(%rdi)
  24:	48 8b 02             	mov    (%rdx),%rax
  27:	48 89 07             	mov    %rax,(%rdi)
  2a:	48 89 f8             	mov    %rdi,%rax
  2d:	c3                   	ret
  2e:	48 c7 47 08 02 00 00 00 	movq   $0x2,0x8(%rdi)
  36:	48 8b 02             	mov    (%rdx),%rax
  39:	48 89 07             	mov    %rax,(%rdi)
  3c:	48 89 f8             	mov    %rdi,%rax
  3f:	c3                   	ret
  40:	0f 0b                	ud2

Disassembly of section .text._D3std7sumtype__T9matchImplVEQBb8typecons__T4FlagVAyaa10_65786861757374697665ZQBii1S7error_d__T6ResultTmTS7kernels11DomainErrorZQBh__T11copyStorageTySQFsQFr__T7SumTypeTSQDh5EmptyTSQDs__T7SuccessTmZQlTSQEn__T7FailureTQEhZQnZQCmZQDpFKyQDgZ17__lambda_L103_C30Z__TQJjTyQEmZQJsMFNaNbNiNfKyQFfZyQFk:

0000000000000000 <std.sumtype.matchImpl!(1, error_d.Result!(ulong, kernels.DomainError).Result.copyStorage!(immutable(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).copyStorage(ref immutable(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).__lambda_L103_C30).matchImpl!(immutable(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).matchImpl(ref immutable(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType))>:
   0:	0f b6 42 08          	movzbl 0x8(%rdx),%eax
   4:	85 c0                	test   %eax,%eax
   6:	74 2e                	je     36 <std.sumtype.matchImpl!(1, error_d.Result!(ulong, kernels.DomainError).Result.copyStorage!(immutable(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).copyStorage(ref immutable(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).__lambda_L103_C30).matchImpl!(immutable(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).matchImpl(ref immutable(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType))+0x36>
   8:	83 f8 01             	cmp    $0x1,%eax
   b:	74 17                	je     24 <std.sumtype.matchImpl!(1, error_d.Result!(ulong, kernels.DomainError).Result.copyStorage!(immutable(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).copyStorage(ref immutable(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).__lambda_L103_C30).matchImpl!(immutable(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).matchImpl(ref immutable(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType))+0x24>
   d:	83 f8 02             	cmp    $0x2,%eax
  10:	75 2e                	jne    40 <std.sumtype.matchImpl!(1, error_d.Result!(ulong, kernels.DomainError).Result.copyStorage!(immutable(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).copyStorage(ref immutable(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).__lambda_L103_C30).matchImpl!(immutable(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).matchImpl(ref immutable(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType))+0x40>
  12:	48 c7 47 08 02 00 00 00 	movq   $0x2,0x8(%rdi)
  1a:	48 8b 02             	mov    (%rdx),%rax
  1d:	48 89 07             	mov    %rax,(%rdi)
  20:	48 89 f8             	mov    %rdi,%rax
  23:	c3                   	ret
  24:	48 c7 47 08 01 00 00 00 	movq   $0x1,0x8(%rdi)
  2c:	48 8b 02             	mov    (%rdx),%rax
  2f:	48 89 07             	mov    %rax,(%rdi)
  32:	48 89 f8             	mov    %rdi,%rax
  35:	c3                   	ret
  36:	0f 57 c0             	xorps  %xmm0,%xmm0
  39:	0f 11 07             	movups %xmm0,(%rdi)
  3c:	48 89 f8             	mov    %rdi,%rax
  3f:	c3                   	ret
  40:	0f 0b                	ud2

Disassembly of section .text._D4core8lifetime__T8moveImplTS3std7sumtype__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTmZQlTSQBk__T7FailureTS7kernels11DomainErrorZQBgZQDkZQEoFNaNbNiNfMKQEsNkMKQEzZv:

0000000000000000 <_D4core8lifetime__T8moveImplTS3std7sumtype__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTmZQlTSQBk__T7FailureTS7kernels11DomainErrorZQBgZQDkZQEoFNaNbNiNfMKQEsNkMKQEzZv>:
   0:	48 39 fe             	cmp    %rdi,%rsi
   3:	74 07                	je     c <_D4core8lifetime__T8moveImplTS3std7sumtype__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTmZQlTSQBk__T7FailureTS7kernels11DomainErrorZQBgZQDkZQEoFNaNbNiNfMKQEsNkMKQEzZv+0xc>
   5:	0f 10 06             	movups (%rsi),%xmm0
   8:	0f 11 07             	movups %xmm0,(%rdi)
   b:	c3                   	ret
   c:	c3                   	ret

Disassembly of section .text._D3std7sumtype__T5matchSQwQu__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTmZQlTSQBk__T7FailureTS7kernels11DomainErrorZQBgZQDk__T8opEqualsTxSQFfQFe__TQElTQEgTQDuTQDeZQFbTxQBfZQBuMxFKxQBrZ17__lambda_L723_C48Z__TQHhTxQCxTxQDcZQHvMFNaNbNiNfKxQDvKxQEaZb:

0000000000000000 <std.sumtype.match!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opEquals!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType), const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).opEquals(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).__lambda_L723_C48).match!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType), const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).match(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType), ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType))>:
   0:	0f b6 4e 08          	movzbl 0x8(%rsi),%ecx
   4:	0f b6 42 08          	movzbl 0x8(%rdx),%eax
   8:	48 8d 04 40          	lea    (%rax,%rax,2),%rax
   c:	48 01 c8             	add    %rcx,%rax
   f:	48 83 f8 08          	cmp    $0x8,%rax
  13:	77 20                	ja     35 <std.sumtype.match!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opEquals!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType), const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).opEquals(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).__lambda_L723_C48).match!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType), const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).match(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType), ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType))+0x35>
  15:	48 8d 0d 00 00 00 00 	lea    0x0(%rip),%rcx        # 1c <std.sumtype.match!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opEquals!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType), const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).opEquals(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).__lambda_L723_C48).match!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType), const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).match(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType), ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType))+0x1c>	18: R_X86_64_PC32	.rodata._D3std7sumtype__T5matchSQwQu__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTmZQlTSQBk__T7FailureTS7kernels11DomainErrorZQBgZQDk__T8opEqualsTxSQFfQFe__TQElTQEgTQDuTQDeZQFbTxQBfZQBuMxFKxQBrZ17__lambda_L723_C48Z__TQHhTxQCxTxQDcZQHvMFNaNbNiNfKxQDvKxQEaZb-0x4
  1c:	48 63 04 81          	movslq (%rcx,%rax,4),%rax
  20:	48 01 c8             	add    %rcx,%rax
  23:	ff e0                	jmp    *%rax
  25:	31 c0                	xor    %eax,%eax
  27:	c3                   	ret
  28:	48 8b 06             	mov    (%rsi),%rax
  2b:	48 3b 02             	cmp    (%rdx),%rax
  2e:	0f 94 c0             	sete   %al
  31:	c3                   	ret
  32:	b0 01                	mov    $0x1,%al
  34:	c3                   	ret
  35:	0f 0b                	ud2

Disassembly of section .text._D3std7sumtype__T9matchImplVEQBb8typecons__T4FlagVAyaa10_65786861757374697665ZQBii1SQDeQDd__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTmZQlTSQBk__T7FailureTS7kernels11DomainErrorZQBgZQDk__T8opEqualsTxSQHpQHo__TQElTQEgTQDuTQDeZQFbTxQBfZQBuMxFKxQBrZ17__lambda_L723_C48Z__TQJrTxQCxTxQDcZQKfMFNaNbNiNfKxQDvKxQEaZb:

0000000000000000 <std.sumtype.matchImpl!(1, std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opEquals!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType), const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).opEquals(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).__lambda_L723_C48).matchImpl!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType), const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).matchImpl(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType), ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType))>:
   0:	0f b6 4e 08          	movzbl 0x8(%rsi),%ecx
   4:	0f b6 42 08          	movzbl 0x8(%rdx),%eax
   8:	48 8d 04 40          	lea    (%rax,%rax,2),%rax
   c:	48 01 c8             	add    %rcx,%rax
   f:	48 83 f8 08          	cmp    $0x8,%rax
  13:	77 20                	ja     35 <std.sumtype.matchImpl!(1, std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opEquals!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType), const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).opEquals(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).__lambda_L723_C48).matchImpl!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType), const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).matchImpl(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType), ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType))+0x35>
  15:	48 8d 0d 00 00 00 00 	lea    0x0(%rip),%rcx        # 1c <std.sumtype.matchImpl!(1, std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opEquals!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType), const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).opEquals(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).__lambda_L723_C48).matchImpl!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType), const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).matchImpl(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType), ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType))+0x1c>	18: R_X86_64_PC32	.rodata._D3std7sumtype__T9matchImplVEQBb8typecons__T4FlagVAyaa10_65786861757374697665ZQBii1SQDeQDd__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTmZQlTSQBk__T7FailureTS7kernels11DomainErrorZQBgZQDk__T8opEqualsTxSQHpQHo__TQElTQEgTQDuTQDeZQFbTxQBfZQBuMxFKxQBrZ17__lambda_L723_C48Z__TQJrTxQCxTxQDcZQKfMFNaNbNiNfKxQDvKxQEaZb-0x4
  1c:	48 63 04 81          	movslq (%rcx,%rax,4),%rax
  20:	48 01 c8             	add    %rcx,%rax
  23:	ff e0                	jmp    *%rax
  25:	31 c0                	xor    %eax,%eax
  27:	c3                   	ret
  28:	48 8b 06             	mov    (%rsi),%rax
  2b:	48 3b 02             	cmp    (%rdx),%rax
  2e:	0f 94 c0             	sete   %al
  31:	c3                   	ret
  32:	b0 01                	mov    $0x1,%al
  34:	c3                   	ret
  35:	0f 0b                	ud2

Disassembly of section .text._D3std7sumtype__T8TagTupleVmi3Vmi3ZQs__T6__ctorTSQBvQBu__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTmZQlTSQBk__T7FailureTS7kernels11DomainErrorZQBgZQDkTQDyZQEkMFNaNbNcNiNfKxSQGoQGn__TQEtTQEoTQEcTQDmZQFjKxQBfZSQHxQHw__TQHrVmi3Vmi3ZQId:

0000000000000000 <std.sumtype.TagTuple!(3uL, 3uL).TagTuple.this!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType, std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).this(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType), ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType))>:
   0:	48 89 f8             	mov    %rdi,%rax
   3:	0f b6 4e 08          	movzbl 0x8(%rsi),%ecx
   7:	48 89 0f             	mov    %rcx,(%rdi)
   a:	0f b6 4a 08          	movzbl 0x8(%rdx),%ecx
   e:	48 89 4f 08          	mov    %rcx,0x8(%rdi)
  12:	c3                   	ret

Disassembly of section .text._D3std7sumtype__T8TagTupleVmi3Vmi3ZQs8toCaseIdMFNaNbNiNfZm:

0000000000000000 <std.sumtype.TagTuple!(3uL, 3uL).TagTuple.toCaseId()>:
   0:	48 8b 47 08          	mov    0x8(%rdi),%rax
   4:	48 8d 04 40          	lea    (%rax,%rax,2),%rax
   8:	48 03 07             	add    (%rdi),%rax
   b:	c3                   	ret

Disassembly of section .text._D3std7sumtype__T8TagTupleVmi3Vmi3ZQs12__invariant0MxFNaNbNiNfZv:

0000000000000000 <std.sumtype.TagTuple!(3uL, 3uL).TagTuple.__invariant0() const>:
   0:	c3                   	ret

Disassembly of section .text._D3std7sumtype__T8TagTupleVmi3Vmi3ZQs10fromCaseIdFNaNbNiNfmZSQChQCg__TQCbVmi3Vmi3ZQCn:

0000000000000000 <std.sumtype.TagTuple!(3uL, 3uL).TagTuple.fromCaseId(ulong)>:
   0:	48 b9 ab aa aa aa aa aa aa aa 	movabs $0xaaaaaaaaaaaaaaab,%rcx
   a:	48 89 f8             	mov    %rdi,%rax
   d:	48 f7 e1             	mul    %rcx
  10:	48 d1 ea             	shr    $1,%rdx
  13:	48 8d 04 52          	lea    (%rdx,%rdx,2),%rax
  17:	48 29 c7             	sub    %rax,%rdi
  1a:	48 89 f8             	mov    %rdi,%rax
  1d:	c3                   	ret

Disassembly of section .text._D3std7sumtype__T6strideVmi1Vmi3Vmi3ZQuFNaNbNiNfZm:

0000000000000000 <std.sumtype.stride!(1uL, 3uL, 3uL).stride()>:
   0:	b8 03 00 00 00       	mov    $0x3,%eax
   5:	c3                   	ret

Disassembly of section .text._D3std7sumtype__T6strideVmi0Vmi3Vmi3ZQuFNaNbNiNfZm:

0000000000000000 <std.sumtype.stride!(0uL, 3uL, 3uL).stride()>:
   0:	b8 01 00 00 00       	mov    $0x1,%eax
   5:	c3                   	ret

Disassembly of section .text._D3std7sumtype__T8TagTupleVmi3Vmi3ZQs11__invariantMxFNaNbNiNfZv:

0000000000000000 <std.sumtype.TagTuple!(3uL, 3uL).TagTuple.__invariant() const>:
   0:	c3                   	ret

Disassembly of section .text._D3std7sumtype__T6strideVmi2Vmi3Vmi3ZQuFNaNbNiNfZm:

0000000000000000 <std.sumtype.stride!(2uL, 3uL, 3uL).stride()>:
   0:	b8 09 00 00 00       	mov    $0x9,%eax
   5:	c3                   	ret

Disassembly of section .text._D4core10checkedint__T4muluZQgFNaNbNiNfmmKbZm:

0000000000000000 <core.checkedint.mulu!().mulu(ulong, ulong, ref bool)>:
   0:	48 89 d1             	mov    %rdx,%rcx
   3:	48 89 f8             	mov    %rdi,%rax
   6:	48 f7 e6             	mul    %rsi
   9:	0f 90 c2             	seto   %dl
   c:	08 11                	or     %dl,(%rcx)
   e:	c3                   	ret

Disassembly of section .text._D3std7sumtype__T9matchImplVEQBb8typecons__T4FlagVAyaa10_65786861757374697665ZQBii1SQDeQDd__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTmZQlTSQBk__T7FailureTS7kernels11DomainErrorZQBgZQDk8opAssignMFNcKSQHpQHo__TQElTQEgTQDuTQDeZQFbZ17__lambda_L679_C28Z__TQJaTQCfZQJiMFNaNbNiNfKQCxZv:

0000000000000000 <std.sumtype.matchImpl!(1, std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).__lambda_L679_C28).matchImpl!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).matchImpl(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)>:
   0:	0f b6 46 08          	movzbl 0x8(%rsi),%eax
   4:	85 c0                	test   %eax,%eax
   6:	74 32                	je     3a <std.sumtype.matchImpl!(1, std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).__lambda_L679_C28).matchImpl!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).matchImpl(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)+0x3a>
   8:	83 f8 01             	cmp    $0x1,%eax
   b:	74 19                	je     26 <std.sumtype.matchImpl!(1, std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).__lambda_L679_C28).matchImpl!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).matchImpl(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)+0x26>
   d:	83 f8 02             	cmp    $0x2,%eax
  10:	75 3d                	jne    4f <std.sumtype.matchImpl!(1, std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).__lambda_L679_C28).matchImpl!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).matchImpl(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)+0x4f>
  12:	48 8b 07             	mov    (%rdi),%rax
  15:	80 78 08 03          	cmpb   $0x3,0x8(%rax)
  19:	73 34                	jae    4f <std.sumtype.matchImpl!(1, std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).__lambda_L679_C28).matchImpl!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).matchImpl(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)+0x4f>
  1b:	48 8b 0e             	mov    (%rsi),%rcx
  1e:	48 89 08             	mov    %rcx,(%rax)
  21:	c6 40 08 02          	movb   $0x2,0x8(%rax)
  25:	c3                   	ret
  26:	48 8b 07             	mov    (%rdi),%rax
  29:	80 78 08 03          	cmpb   $0x3,0x8(%rax)
  2d:	73 20                	jae    4f <std.sumtype.matchImpl!(1, std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).__lambda_L679_C28).matchImpl!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).matchImpl(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)+0x4f>
  2f:	48 8b 0e             	mov    (%rsi),%rcx
  32:	48 89 08             	mov    %rcx,(%rax)
  35:	c6 40 08 01          	movb   $0x1,0x8(%rax)
  39:	c3                   	ret
  3a:	48 8b 07             	mov    (%rdi),%rax
  3d:	80 78 08 03          	cmpb   $0x3,0x8(%rax)
  41:	73 0c                	jae    4f <std.sumtype.matchImpl!(1, std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).__lambda_L679_C28).matchImpl!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).matchImpl(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)+0x4f>
  43:	48 c7 00 00 00 00 00 	movq   $0x0,(%rax)
  4a:	c6 40 08 00          	movb   $0x0,0x8(%rax)
  4e:	c3                   	ret
  4f:	0f 0b                	ud2

Disassembly of section .text._D3std7sumtype__T9matchImplVEQBb8typecons__T4FlagVAyaa10_65786861757374697665ZQBii1S4core8internal4hash6hashOfZ__TQDtTxSQEoQEn__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTmZQlTSQBk__T7FailureTS7kernels11DomainErrorZQBgZQDkZQHwFNaNbNiNfKxQEmZm:

0000000000000000 <std.sumtype.matchImpl!(1, core.internal.hash.hashOf).matchImpl!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).matchImpl(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType))>:
   0:	0f b6 47 08          	movzbl 0x8(%rdi),%eax
   4:	83 f8 02             	cmp    $0x2,%eax
   7:	74 51                	je     5a <std.sumtype.matchImpl!(1, core.internal.hash.hashOf).matchImpl!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).matchImpl(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType))+0x5a>
   9:	83 f8 01             	cmp    $0x1,%eax
   c:	74 09                	je     17 <std.sumtype.matchImpl!(1, core.internal.hash.hashOf).matchImpl!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).matchImpl(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType))+0x17>
   e:	85 c0                	test   %eax,%eax
  10:	0f 85 a3 00 00 00    	jne    b9 <std.sumtype.matchImpl!(1, core.internal.hash.hashOf).matchImpl!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).matchImpl(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).SumType))+0xb9>
  16:	c3                   	ret
  17:	48 8b 07             	mov    (%rdi),%rax
  1a:	48 b9 d5 53 42 11 91 7b c3 87 	movabs $0x87c37b91114253d5,%rcx
  24:	48 0f af c8          	imul   %rax,%rcx
  28:	48 ba 00 00 00 80 ea 29 a1 88 	movabs $0x88a129ea80000000,%rdx
  32:	48 0f af d0          	imul   %rax,%rdx
  36:	48 c1 e9 21          	shr    $0x21,%rcx
  3a:	48 09 d1             	or     %rdx,%rcx
  3d:	48 b8 7f 93 45 27 43 ad f5 4c 	movabs $0x4cf5ad432745937f,%rax
  47:	48 0f af c1          	imul   %rcx,%rax
  4b:	48 c1 c0 1b          	rol    $0x1b,%rax
  4f:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
  53:	48 05 29 e7 dc 52    	add    $0x52dce729,%rax
  59:	c3                   	ret
  5a:	0f b6 07             	movzbl (%rdi),%eax
  5d:	48 b9 b3 01 00 00 00 01 00 00 	movabs $0x100000001b3,%rcx
  67:	48 0f af c1          	imul   %rcx,%rax
  6b:	0f b6 57 01          	movzbl 0x1(%rdi),%edx
  6f:	48 31 c2             	xor    %rax,%rdx
  72:	48 0f af d1          	imul   %rcx,%rdx
  76:	0f b6 47 02          	movzbl 0x2(%rdi),%eax
  7a:	48 31 d0             	xor    %rdx,%rax
  7d:	48 0f af c1          	imul   %rcx,%rax
  81:	0f b6 57 03          	movzbl 0x3(%rdi),%edx
  85:	48 31 c2             	xor    %rax,%rdx
  88:	48 0f af d1          	imul   %rcx,%rdx
  8c:	0f b6 47 04          	movzbl 0x4(%rdi),%eax
  90:	48 31 d0             	xor    %rdx,%rax
  93:	48 0f af c1          	imul   %rcx,%rax
  97:	0f b6 57 05          	movzbl 0x5(%rdi),%edx
  9b:	48 31 c2             	xor    %rax,%rdx
  9e:	48 0f af d1          	imul   %rcx,%rdx
  a2:	0f b6 77 06          	movzbl 0x6(%rdi),%esi
  a6:	48 31 d6             	xor    %rdx,%rsi
  a9:	48 0f af f1          	imul   %rcx,%rsi
  ad:	0f b6 47 07          	movzbl 0x7(%rdi),%eax
  b1:	48 31 f0             	xor    %rsi,%rax
  b4:	48 0f af c1          	imul   %rcx,%rax
  b8:	c3                   	ret
  b9:	0f 0b                	ud2

Disassembly of section .text._D4core8internal4hash__T6hashOfTS7error_d5EmptyZQyFNaNbNiNfMKxSQBeQzmZm:

0000000000000000 <core.internal.hash.hashOf!(error_d.Empty).hashOf(scope ref const(error_d.Empty), ulong)>:
   0:	48 89 f0             	mov    %rsi,%rax
   3:	c3                   	ret

Disassembly of section .text._D4core8internal4hash__T6hashOfTS7error_d__T7SuccessTmZQlZQBiFNaNbNiNfMKxSQBp__TQBkTmZQBqmZm:

0000000000000000 <core.internal.hash.hashOf!(error_d.Success!(ulong).Success).hashOf(scope ref const(error_d.Success!(ulong).Success), ulong)>:
   0:	48 8b 07             	mov    (%rdi),%rax
   3:	48 b9 d5 53 42 11 91 7b c3 87 	movabs $0x87c37b91114253d5,%rcx
   d:	48 0f af c8          	imul   %rax,%rcx
  11:	48 ba 00 00 00 80 ea 29 a1 88 	movabs $0x88a129ea80000000,%rdx
  1b:	48 0f af d0          	imul   %rax,%rdx
  1f:	48 c1 e9 21          	shr    $0x21,%rcx
  23:	48 09 d1             	or     %rdx,%rcx
  26:	48 b8 7f 93 45 27 43 ad f5 4c 	movabs $0x4cf5ad432745937f,%rax
  30:	48 0f af c1          	imul   %rcx,%rax
  34:	48 31 f0             	xor    %rsi,%rax
  37:	48 c1 c0 1b          	rol    $0x1b,%rax
  3b:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
  3f:	48 05 29 e7 dc 52    	add    $0x52dce729,%rax
  45:	c3                   	ret

Disassembly of section .text._D4core8internal4hash__T6hashOfTS7error_d__T7FailureTS7kernels11DomainErrorZQBgZQCeFNaNbNiNfMKxSQCl__TQCgTQCbZQComZm:

0000000000000000 <core.internal.hash.hashOf!(error_d.Failure!(kernels.DomainError).Failure).hashOf(scope ref const(error_d.Failure!(kernels.DomainError).Failure), ulong)>:
   0:	0f b6 07             	movzbl (%rdi),%eax
   3:	48 31 f0             	xor    %rsi,%rax
   6:	48 b9 b3 01 00 00 00 01 00 00 	movabs $0x100000001b3,%rcx
  10:	48 0f af c1          	imul   %rcx,%rax
  14:	0f b6 57 01          	movzbl 0x1(%rdi),%edx
  18:	48 31 c2             	xor    %rax,%rdx
  1b:	48 0f af d1          	imul   %rcx,%rdx
  1f:	0f b6 47 02          	movzbl 0x2(%rdi),%eax
  23:	48 31 d0             	xor    %rdx,%rax
  26:	48 0f af c1          	imul   %rcx,%rax
  2a:	0f b6 57 03          	movzbl 0x3(%rdi),%edx
  2e:	48 31 c2             	xor    %rax,%rdx
  31:	48 0f af d1          	imul   %rcx,%rdx
  35:	0f b6 47 04          	movzbl 0x4(%rdi),%eax
  39:	48 31 d0             	xor    %rdx,%rax
  3c:	48 0f af c1          	imul   %rcx,%rax
  40:	0f b6 57 05          	movzbl 0x5(%rdi),%edx
  44:	48 31 c2             	xor    %rax,%rdx
  47:	48 0f af d1          	imul   %rcx,%rdx
  4b:	0f b6 77 06          	movzbl 0x6(%rdi),%esi
  4f:	48 31 d6             	xor    %rdx,%rsi
  52:	48 0f af f1          	imul   %rcx,%rsi
  56:	0f b6 47 07          	movzbl 0x7(%rdi),%eax
  5a:	48 31 f0             	xor    %rsi,%rax
  5d:	48 0f af c1          	imul   %rcx,%rax
  61:	c3                   	ret

Disassembly of section .text._D3std7sumtype__T5matchS7error_d__T6ResultTS7kernels5BlockTSQq11DomainErrorZQBp__T11copyStorageTSQDrQDq__T7SumTypeTSQDo5EmptyTSQDz__T7SuccessTQDvZQnTSQEw__T7FailureTQEcZQnZQCoZQDqFKQDhZ17__lambda_L103_C30Z__TQHjTQEmZQHrMFNaNbNiNfKQFeZQFi:

0000000000000000 <std.sumtype.match!(error_d.Result!(kernels.Block, kernels.DomainError).Result.copyStorage!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).copyStorage(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).__lambda_L103_C30).match!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).match(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)>:
   0:	53                   	push   %rbx
   1:	48 89 d6             	mov    %rdx,%rsi
   4:	0f b6 82 00 01 00 00 	movzbl 0x100(%rdx),%eax
   b:	83 f8 02             	cmp    $0x2,%eax
   e:	74 3e                	je     4e <std.sumtype.match!(error_d.Result!(kernels.Block, kernels.DomainError).Result.copyStorage!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).copyStorage(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).__lambda_L103_C30).match!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).match(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)+0x4e>
  10:	83 f8 01             	cmp    $0x1,%eax
  13:	74 1c                	je     31 <std.sumtype.match!(error_d.Result!(kernels.Block, kernels.DomainError).Result.copyStorage!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).copyStorage(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).__lambda_L103_C30).match!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).match(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)+0x31>
  15:	85 c0                	test   %eax,%eax
  17:	0f 85 9e 00 00 00    	jne    bb <std.sumtype.match!(error_d.Result!(kernels.Block, kernels.DomainError).Result.copyStorage!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).copyStorage(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).__lambda_L103_C30).match!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).match(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)+0xbb>
  1d:	ba 08 01 00 00       	mov    $0x108,%edx
  22:	48 89 fb             	mov    %rdi,%rbx
  25:	31 f6                	xor    %esi,%esi
  27:	e8 00 00 00 00       	call   2c <std.sumtype.match!(error_d.Result!(kernels.Block, kernels.DomainError).Result.copyStorage!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).copyStorage(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).__lambda_L103_C30).match!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).match(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)+0x2c>	28: R_X86_64_PLT32	memset-0x4
  2c:	48 89 d8             	mov    %rbx,%rax
  2f:	5b                   	pop    %rbx
  30:	c3                   	ret
  31:	48 c7 87 00 01 00 00 01 00 00 00 	movq   $0x1,0x100(%rdi)
  3c:	ba 00 01 00 00       	mov    $0x100,%edx
  41:	48 89 fb             	mov    %rdi,%rbx
  44:	e8 00 00 00 00       	call   49 <std.sumtype.match!(error_d.Result!(kernels.Block, kernels.DomainError).Result.copyStorage!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).copyStorage(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).__lambda_L103_C30).match!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).match(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)+0x49>	45: R_X86_64_PLT32	memcpy-0x4
  49:	48 89 d8             	mov    %rbx,%rax
  4c:	5b                   	pop    %rbx
  4d:	c3                   	ret
  4e:	0f 57 c0             	xorps  %xmm0,%xmm0
  51:	0f 11 87 f8 00 00 00 	movups %xmm0,0xf8(%rdi)
  58:	0f 11 87 e8 00 00 00 	movups %xmm0,0xe8(%rdi)
  5f:	0f 11 87 d8 00 00 00 	movups %xmm0,0xd8(%rdi)
  66:	0f 11 87 c8 00 00 00 	movups %xmm0,0xc8(%rdi)
  6d:	0f 11 87 b8 00 00 00 	movups %xmm0,0xb8(%rdi)
  74:	0f 11 87 a8 00 00 00 	movups %xmm0,0xa8(%rdi)
  7b:	0f 11 87 98 00 00 00 	movups %xmm0,0x98(%rdi)
  82:	0f 11 87 88 00 00 00 	movups %xmm0,0x88(%rdi)
  89:	0f 11 47 78          	movups %xmm0,0x78(%rdi)
  8d:	0f 11 47 68          	movups %xmm0,0x68(%rdi)
  91:	0f 11 47 58          	movups %xmm0,0x58(%rdi)
  95:	0f 11 47 48          	movups %xmm0,0x48(%rdi)
  99:	0f 11 47 38          	movups %xmm0,0x38(%rdi)
  9d:	0f 11 47 28          	movups %xmm0,0x28(%rdi)
  a1:	0f 11 47 18          	movups %xmm0,0x18(%rdi)
  a5:	0f 11 47 08          	movups %xmm0,0x8(%rdi)
  a9:	48 8b 06             	mov    (%rsi),%rax
  ac:	48 89 07             	mov    %rax,(%rdi)
  af:	c6 87 00 01 00 00 02 	movb   $0x2,0x100(%rdi)
  b6:	48 89 f8             	mov    %rdi,%rax
  b9:	5b                   	pop    %rbx
  ba:	c3                   	ret
  bb:	0f 0b                	ud2

Disassembly of section .text._D3std7sumtype__T9matchImplVEQBb8typecons__T4FlagVAyaa10_65786861757374697665ZQBii1S7error_d__T6ResultTS7kernels5BlockTSQq11DomainErrorZQBp__T11copyStorageTSQFzQFy__T7SumTypeTSQDo5EmptyTSQDz__T7SuccessTQDvZQnTSQEw__T7FailureTQEcZQnZQCoZQDqFKQDhZ17__lambda_L103_C30Z__TQJrTQEmZQJzMFNaNbNiNfKQFeZQFi:

0000000000000000 <std.sumtype.matchImpl!(1, error_d.Result!(kernels.Block, kernels.DomainError).Result.copyStorage!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).copyStorage(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).__lambda_L103_C30).matchImpl!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).matchImpl(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)>:
   0:	53                   	push   %rbx
   1:	48 89 d6             	mov    %rdx,%rsi
   4:	0f b6 82 00 01 00 00 	movzbl 0x100(%rdx),%eax
   b:	83 f8 02             	cmp    $0x2,%eax
   e:	74 3e                	je     4e <std.sumtype.matchImpl!(1, error_d.Result!(kernels.Block, kernels.DomainError).Result.copyStorage!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).copyStorage(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).__lambda_L103_C30).matchImpl!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).matchImpl(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)+0x4e>
  10:	83 f8 01             	cmp    $0x1,%eax
  13:	74 1c                	je     31 <std.sumtype.matchImpl!(1, error_d.Result!(kernels.Block, kernels.DomainError).Result.copyStorage!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).copyStorage(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).__lambda_L103_C30).matchImpl!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).matchImpl(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)+0x31>
  15:	85 c0                	test   %eax,%eax
  17:	0f 85 9e 00 00 00    	jne    bb <std.sumtype.matchImpl!(1, error_d.Result!(kernels.Block, kernels.DomainError).Result.copyStorage!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).copyStorage(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).__lambda_L103_C30).matchImpl!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).matchImpl(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)+0xbb>
  1d:	ba 08 01 00 00       	mov    $0x108,%edx
  22:	48 89 fb             	mov    %rdi,%rbx
  25:	31 f6                	xor    %esi,%esi
  27:	e8 00 00 00 00       	call   2c <std.sumtype.matchImpl!(1, error_d.Result!(kernels.Block, kernels.DomainError).Result.copyStorage!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).copyStorage(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).__lambda_L103_C30).matchImpl!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).matchImpl(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)+0x2c>	28: R_X86_64_PLT32	memset-0x4
  2c:	48 89 d8             	mov    %rbx,%rax
  2f:	5b                   	pop    %rbx
  30:	c3                   	ret
  31:	48 c7 87 00 01 00 00 01 00 00 00 	movq   $0x1,0x100(%rdi)
  3c:	ba 00 01 00 00       	mov    $0x100,%edx
  41:	48 89 fb             	mov    %rdi,%rbx
  44:	e8 00 00 00 00       	call   49 <std.sumtype.matchImpl!(1, error_d.Result!(kernels.Block, kernels.DomainError).Result.copyStorage!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).copyStorage(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).__lambda_L103_C30).matchImpl!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).matchImpl(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)+0x49>	45: R_X86_64_PLT32	memcpy-0x4
  49:	48 89 d8             	mov    %rbx,%rax
  4c:	5b                   	pop    %rbx
  4d:	c3                   	ret
  4e:	0f 57 c0             	xorps  %xmm0,%xmm0
  51:	0f 11 87 f8 00 00 00 	movups %xmm0,0xf8(%rdi)
  58:	0f 11 87 e8 00 00 00 	movups %xmm0,0xe8(%rdi)
  5f:	0f 11 87 d8 00 00 00 	movups %xmm0,0xd8(%rdi)
  66:	0f 11 87 c8 00 00 00 	movups %xmm0,0xc8(%rdi)
  6d:	0f 11 87 b8 00 00 00 	movups %xmm0,0xb8(%rdi)
  74:	0f 11 87 a8 00 00 00 	movups %xmm0,0xa8(%rdi)
  7b:	0f 11 87 98 00 00 00 	movups %xmm0,0x98(%rdi)
  82:	0f 11 87 88 00 00 00 	movups %xmm0,0x88(%rdi)
  89:	0f 11 47 78          	movups %xmm0,0x78(%rdi)
  8d:	0f 11 47 68          	movups %xmm0,0x68(%rdi)
  91:	0f 11 47 58          	movups %xmm0,0x58(%rdi)
  95:	0f 11 47 48          	movups %xmm0,0x48(%rdi)
  99:	0f 11 47 38          	movups %xmm0,0x38(%rdi)
  9d:	0f 11 47 28          	movups %xmm0,0x28(%rdi)
  a1:	0f 11 47 18          	movups %xmm0,0x18(%rdi)
  a5:	0f 11 47 08          	movups %xmm0,0x8(%rdi)
  a9:	48 8b 06             	mov    (%rsi),%rax
  ac:	48 89 07             	mov    %rax,(%rdi)
  af:	c6 87 00 01 00 00 02 	movb   $0x2,0x100(%rdi)
  b6:	48 89 f8             	mov    %rdi,%rax
  b9:	5b                   	pop    %rbx
  ba:	c3                   	ret
  bb:	0f 0b                	ud2

Disassembly of section .text._D3std7sumtype__T5matchS7error_d__T6ResultTS7kernels5BlockTSQq11DomainErrorZQBp__T11copyStorageTxSQDsQDr__T7SumTypeTSQDp5EmptyTSQEa__T7SuccessTQDwZQnTSQEx__T7FailureTQEdZQnZQCoZQDrFKxQDiZ17__lambda_L103_C30Z__TQHlTxQEoZQHuMFNaNbNiNfKxQFhZxQFm:

0000000000000000 <std.sumtype.match!(error_d.Result!(kernels.Block, kernels.DomainError).Result.copyStorage!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).copyStorage(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).__lambda_L103_C30).match!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).match(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType))>:
   0:	53                   	push   %rbx
   1:	48 89 d6             	mov    %rdx,%rsi
   4:	0f b6 82 00 01 00 00 	movzbl 0x100(%rdx),%eax
   b:	83 f8 02             	cmp    $0x2,%eax
   e:	74 3e                	je     4e <std.sumtype.match!(error_d.Result!(kernels.Block, kernels.DomainError).Result.copyStorage!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).copyStorage(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).__lambda_L103_C30).match!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).match(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType))+0x4e>
  10:	83 f8 01             	cmp    $0x1,%eax
  13:	74 1c                	je     31 <std.sumtype.match!(error_d.Result!(kernels.Block, kernels.DomainError).Result.copyStorage!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).copyStorage(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).__lambda_L103_C30).match!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).match(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType))+0x31>
  15:	85 c0                	test   %eax,%eax
  17:	0f 85 9e 00 00 00    	jne    bb <std.sumtype.match!(error_d.Result!(kernels.Block, kernels.DomainError).Result.copyStorage!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).copyStorage(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).__lambda_L103_C30).match!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).match(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType))+0xbb>
  1d:	ba 08 01 00 00       	mov    $0x108,%edx
  22:	48 89 fb             	mov    %rdi,%rbx
  25:	31 f6                	xor    %esi,%esi
  27:	e8 00 00 00 00       	call   2c <std.sumtype.match!(error_d.Result!(kernels.Block, kernels.DomainError).Result.copyStorage!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).copyStorage(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).__lambda_L103_C30).match!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).match(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType))+0x2c>	28: R_X86_64_PLT32	memset-0x4
  2c:	48 89 d8             	mov    %rbx,%rax
  2f:	5b                   	pop    %rbx
  30:	c3                   	ret
  31:	48 c7 87 00 01 00 00 01 00 00 00 	movq   $0x1,0x100(%rdi)
  3c:	ba 00 01 00 00       	mov    $0x100,%edx
  41:	48 89 fb             	mov    %rdi,%rbx
  44:	e8 00 00 00 00       	call   49 <std.sumtype.match!(error_d.Result!(kernels.Block, kernels.DomainError).Result.copyStorage!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).copyStorage(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).__lambda_L103_C30).match!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).match(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType))+0x49>	45: R_X86_64_PLT32	memcpy-0x4
  49:	48 89 d8             	mov    %rbx,%rax
  4c:	5b                   	pop    %rbx
  4d:	c3                   	ret
  4e:	0f 57 c0             	xorps  %xmm0,%xmm0
  51:	0f 11 87 f8 00 00 00 	movups %xmm0,0xf8(%rdi)
  58:	0f 11 87 e8 00 00 00 	movups %xmm0,0xe8(%rdi)
  5f:	0f 11 87 d8 00 00 00 	movups %xmm0,0xd8(%rdi)
  66:	0f 11 87 c8 00 00 00 	movups %xmm0,0xc8(%rdi)
  6d:	0f 11 87 b8 00 00 00 	movups %xmm0,0xb8(%rdi)
  74:	0f 11 87 a8 00 00 00 	movups %xmm0,0xa8(%rdi)
  7b:	0f 11 87 98 00 00 00 	movups %xmm0,0x98(%rdi)
  82:	0f 11 87 88 00 00 00 	movups %xmm0,0x88(%rdi)
  89:	0f 11 47 78          	movups %xmm0,0x78(%rdi)
  8d:	0f 11 47 68          	movups %xmm0,0x68(%rdi)
  91:	0f 11 47 58          	movups %xmm0,0x58(%rdi)
  95:	0f 11 47 48          	movups %xmm0,0x48(%rdi)
  99:	0f 11 47 38          	movups %xmm0,0x38(%rdi)
  9d:	0f 11 47 28          	movups %xmm0,0x28(%rdi)
  a1:	0f 11 47 18          	movups %xmm0,0x18(%rdi)
  a5:	0f 11 47 08          	movups %xmm0,0x8(%rdi)
  a9:	48 8b 06             	mov    (%rsi),%rax
  ac:	48 89 07             	mov    %rax,(%rdi)
  af:	c6 87 00 01 00 00 02 	movb   $0x2,0x100(%rdi)
  b6:	48 89 f8             	mov    %rdi,%rax
  b9:	5b                   	pop    %rbx
  ba:	c3                   	ret
  bb:	0f 0b                	ud2

Disassembly of section .text._D3std7sumtype__T9matchImplVEQBb8typecons__T4FlagVAyaa10_65786861757374697665ZQBii1S7error_d__T6ResultTS7kernels5BlockTSQq11DomainErrorZQBp__T11copyStorageTxSQGaQFz__T7SumTypeTSQDp5EmptyTSQEa__T7SuccessTQDwZQnTSQEx__T7FailureTQEdZQnZQCoZQDrFKxQDiZ17__lambda_L103_C30Z__TQJtTxQEoZQKcMFNaNbNiNfKxQFhZxQFm:

0000000000000000 <std.sumtype.matchImpl!(1, error_d.Result!(kernels.Block, kernels.DomainError).Result.copyStorage!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).copyStorage(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).__lambda_L103_C30).matchImpl!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).matchImpl(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType))>:
   0:	53                   	push   %rbx
   1:	48 89 d6             	mov    %rdx,%rsi
   4:	0f b6 82 00 01 00 00 	movzbl 0x100(%rdx),%eax
   b:	83 f8 02             	cmp    $0x2,%eax
   e:	74 3e                	je     4e <std.sumtype.matchImpl!(1, error_d.Result!(kernels.Block, kernels.DomainError).Result.copyStorage!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).copyStorage(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).__lambda_L103_C30).matchImpl!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).matchImpl(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType))+0x4e>
  10:	83 f8 01             	cmp    $0x1,%eax
  13:	74 1c                	je     31 <std.sumtype.matchImpl!(1, error_d.Result!(kernels.Block, kernels.DomainError).Result.copyStorage!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).copyStorage(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).__lambda_L103_C30).matchImpl!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).matchImpl(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType))+0x31>
  15:	85 c0                	test   %eax,%eax
  17:	0f 85 9e 00 00 00    	jne    bb <std.sumtype.matchImpl!(1, error_d.Result!(kernels.Block, kernels.DomainError).Result.copyStorage!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).copyStorage(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).__lambda_L103_C30).matchImpl!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).matchImpl(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType))+0xbb>
  1d:	ba 08 01 00 00       	mov    $0x108,%edx
  22:	48 89 fb             	mov    %rdi,%rbx
  25:	31 f6                	xor    %esi,%esi
  27:	e8 00 00 00 00       	call   2c <std.sumtype.matchImpl!(1, error_d.Result!(kernels.Block, kernels.DomainError).Result.copyStorage!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).copyStorage(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).__lambda_L103_C30).matchImpl!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).matchImpl(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType))+0x2c>	28: R_X86_64_PLT32	memset-0x4
  2c:	48 89 d8             	mov    %rbx,%rax
  2f:	5b                   	pop    %rbx
  30:	c3                   	ret
  31:	48 c7 87 00 01 00 00 01 00 00 00 	movq   $0x1,0x100(%rdi)
  3c:	ba 00 01 00 00       	mov    $0x100,%edx
  41:	48 89 fb             	mov    %rdi,%rbx
  44:	e8 00 00 00 00       	call   49 <std.sumtype.matchImpl!(1, error_d.Result!(kernels.Block, kernels.DomainError).Result.copyStorage!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).copyStorage(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).__lambda_L103_C30).matchImpl!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).matchImpl(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType))+0x49>	45: R_X86_64_PLT32	memcpy-0x4
  49:	48 89 d8             	mov    %rbx,%rax
  4c:	5b                   	pop    %rbx
  4d:	c3                   	ret
  4e:	0f 57 c0             	xorps  %xmm0,%xmm0
  51:	0f 11 87 f8 00 00 00 	movups %xmm0,0xf8(%rdi)
  58:	0f 11 87 e8 00 00 00 	movups %xmm0,0xe8(%rdi)
  5f:	0f 11 87 d8 00 00 00 	movups %xmm0,0xd8(%rdi)
  66:	0f 11 87 c8 00 00 00 	movups %xmm0,0xc8(%rdi)
  6d:	0f 11 87 b8 00 00 00 	movups %xmm0,0xb8(%rdi)
  74:	0f 11 87 a8 00 00 00 	movups %xmm0,0xa8(%rdi)
  7b:	0f 11 87 98 00 00 00 	movups %xmm0,0x98(%rdi)
  82:	0f 11 87 88 00 00 00 	movups %xmm0,0x88(%rdi)
  89:	0f 11 47 78          	movups %xmm0,0x78(%rdi)
  8d:	0f 11 47 68          	movups %xmm0,0x68(%rdi)
  91:	0f 11 47 58          	movups %xmm0,0x58(%rdi)
  95:	0f 11 47 48          	movups %xmm0,0x48(%rdi)
  99:	0f 11 47 38          	movups %xmm0,0x38(%rdi)
  9d:	0f 11 47 28          	movups %xmm0,0x28(%rdi)
  a1:	0f 11 47 18          	movups %xmm0,0x18(%rdi)
  a5:	0f 11 47 08          	movups %xmm0,0x8(%rdi)
  a9:	48 8b 06             	mov    (%rsi),%rax
  ac:	48 89 07             	mov    %rax,(%rdi)
  af:	c6 87 00 01 00 00 02 	movb   $0x2,0x100(%rdi)
  b6:	48 89 f8             	mov    %rdi,%rax
  b9:	5b                   	pop    %rbx
  ba:	c3                   	ret
  bb:	0f 0b                	ud2

Disassembly of section .text._D3std7sumtype__T5matchS7error_d__T6ResultTS7kernels5BlockTSQq11DomainErrorZQBp__T11copyStorageTySQDsQDr__T7SumTypeTSQDp5EmptyTSQEa__T7SuccessTQDwZQnTSQEx__T7FailureTQEdZQnZQCoZQDrFKyQDiZ17__lambda_L103_C30Z__TQHlTyQEoZQHuMFNaNbNiNfKyQFhZyQFm:

0000000000000000 <std.sumtype.match!(error_d.Result!(kernels.Block, kernels.DomainError).Result.copyStorage!(immutable(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).copyStorage(ref immutable(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).__lambda_L103_C30).match!(immutable(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).match(ref immutable(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType))>:
   0:	53                   	push   %rbx
   1:	48 89 d6             	mov    %rdx,%rsi
   4:	0f b6 82 00 01 00 00 	movzbl 0x100(%rdx),%eax
   b:	83 f8 02             	cmp    $0x2,%eax
   e:	74 3e                	je     4e <std.sumtype.match!(error_d.Result!(kernels.Block, kernels.DomainError).Result.copyStorage!(immutable(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).copyStorage(ref immutable(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).__lambda_L103_C30).match!(immutable(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).match(ref immutable(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType))+0x4e>
  10:	83 f8 01             	cmp    $0x1,%eax
  13:	74 1c                	je     31 <std.sumtype.match!(error_d.Result!(kernels.Block, kernels.DomainError).Result.copyStorage!(immutable(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).copyStorage(ref immutable(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).__lambda_L103_C30).match!(immutable(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).match(ref immutable(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType))+0x31>
  15:	85 c0                	test   %eax,%eax
  17:	0f 85 9e 00 00 00    	jne    bb <std.sumtype.match!(error_d.Result!(kernels.Block, kernels.DomainError).Result.copyStorage!(immutable(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).copyStorage(ref immutable(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).__lambda_L103_C30).match!(immutable(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).match(ref immutable(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType))+0xbb>
  1d:	ba 08 01 00 00       	mov    $0x108,%edx
  22:	48 89 fb             	mov    %rdi,%rbx
  25:	31 f6                	xor    %esi,%esi
  27:	e8 00 00 00 00       	call   2c <std.sumtype.match!(error_d.Result!(kernels.Block, kernels.DomainError).Result.copyStorage!(immutable(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).copyStorage(ref immutable(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).__lambda_L103_C30).match!(immutable(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).match(ref immutable(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType))+0x2c>	28: R_X86_64_PLT32	memset-0x4
  2c:	48 89 d8             	mov    %rbx,%rax
  2f:	5b                   	pop    %rbx
  30:	c3                   	ret
  31:	48 c7 87 00 01 00 00 01 00 00 00 	movq   $0x1,0x100(%rdi)
  3c:	ba 00 01 00 00       	mov    $0x100,%edx
  41:	48 89 fb             	mov    %rdi,%rbx
  44:	e8 00 00 00 00       	call   49 <std.sumtype.match!(error_d.Result!(kernels.Block, kernels.DomainError).Result.copyStorage!(immutable(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).copyStorage(ref immutable(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).__lambda_L103_C30).match!(immutable(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).match(ref immutable(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType))+0x49>	45: R_X86_64_PLT32	memcpy-0x4
  49:	48 89 d8             	mov    %rbx,%rax
  4c:	5b                   	pop    %rbx
  4d:	c3                   	ret
  4e:	0f 57 c0             	xorps  %xmm0,%xmm0
  51:	0f 11 87 f8 00 00 00 	movups %xmm0,0xf8(%rdi)
  58:	0f 11 87 e8 00 00 00 	movups %xmm0,0xe8(%rdi)
  5f:	0f 11 87 d8 00 00 00 	movups %xmm0,0xd8(%rdi)
  66:	0f 11 87 c8 00 00 00 	movups %xmm0,0xc8(%rdi)
  6d:	0f 11 87 b8 00 00 00 	movups %xmm0,0xb8(%rdi)
  74:	0f 11 87 a8 00 00 00 	movups %xmm0,0xa8(%rdi)
  7b:	0f 11 87 98 00 00 00 	movups %xmm0,0x98(%rdi)
  82:	0f 11 87 88 00 00 00 	movups %xmm0,0x88(%rdi)
  89:	0f 11 47 78          	movups %xmm0,0x78(%rdi)
  8d:	0f 11 47 68          	movups %xmm0,0x68(%rdi)
  91:	0f 11 47 58          	movups %xmm0,0x58(%rdi)
  95:	0f 11 47 48          	movups %xmm0,0x48(%rdi)
  99:	0f 11 47 38          	movups %xmm0,0x38(%rdi)
  9d:	0f 11 47 28          	movups %xmm0,0x28(%rdi)
  a1:	0f 11 47 18          	movups %xmm0,0x18(%rdi)
  a5:	0f 11 47 08          	movups %xmm0,0x8(%rdi)
  a9:	48 8b 06             	mov    (%rsi),%rax
  ac:	48 89 07             	mov    %rax,(%rdi)
  af:	c6 87 00 01 00 00 02 	movb   $0x2,0x100(%rdi)
  b6:	48 89 f8             	mov    %rdi,%rax
  b9:	5b                   	pop    %rbx
  ba:	c3                   	ret
  bb:	0f 0b                	ud2

Disassembly of section .text._D3std7sumtype__T9matchImplVEQBb8typecons__T4FlagVAyaa10_65786861757374697665ZQBii1S7error_d__T6ResultTS7kernels5BlockTSQq11DomainErrorZQBp__T11copyStorageTySQGaQFz__T7SumTypeTSQDp5EmptyTSQEa__T7SuccessTQDwZQnTSQEx__T7FailureTQEdZQnZQCoZQDrFKyQDiZ17__lambda_L103_C30Z__TQJtTyQEoZQKcMFNaNbNiNfKyQFhZyQFm:

0000000000000000 <std.sumtype.matchImpl!(1, error_d.Result!(kernels.Block, kernels.DomainError).Result.copyStorage!(immutable(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).copyStorage(ref immutable(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).__lambda_L103_C30).matchImpl!(immutable(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).matchImpl(ref immutable(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType))>:
   0:	53                   	push   %rbx
   1:	48 89 d6             	mov    %rdx,%rsi
   4:	0f b6 82 00 01 00 00 	movzbl 0x100(%rdx),%eax
   b:	83 f8 02             	cmp    $0x2,%eax
   e:	74 3e                	je     4e <std.sumtype.matchImpl!(1, error_d.Result!(kernels.Block, kernels.DomainError).Result.copyStorage!(immutable(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).copyStorage(ref immutable(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).__lambda_L103_C30).matchImpl!(immutable(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).matchImpl(ref immutable(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType))+0x4e>
  10:	83 f8 01             	cmp    $0x1,%eax
  13:	74 1c                	je     31 <std.sumtype.matchImpl!(1, error_d.Result!(kernels.Block, kernels.DomainError).Result.copyStorage!(immutable(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).copyStorage(ref immutable(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).__lambda_L103_C30).matchImpl!(immutable(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).matchImpl(ref immutable(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType))+0x31>
  15:	85 c0                	test   %eax,%eax
  17:	0f 85 9e 00 00 00    	jne    bb <std.sumtype.matchImpl!(1, error_d.Result!(kernels.Block, kernels.DomainError).Result.copyStorage!(immutable(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).copyStorage(ref immutable(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).__lambda_L103_C30).matchImpl!(immutable(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).matchImpl(ref immutable(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType))+0xbb>
  1d:	ba 08 01 00 00       	mov    $0x108,%edx
  22:	48 89 fb             	mov    %rdi,%rbx
  25:	31 f6                	xor    %esi,%esi
  27:	e8 00 00 00 00       	call   2c <std.sumtype.matchImpl!(1, error_d.Result!(kernels.Block, kernels.DomainError).Result.copyStorage!(immutable(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).copyStorage(ref immutable(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).__lambda_L103_C30).matchImpl!(immutable(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).matchImpl(ref immutable(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType))+0x2c>	28: R_X86_64_PLT32	memset-0x4
  2c:	48 89 d8             	mov    %rbx,%rax
  2f:	5b                   	pop    %rbx
  30:	c3                   	ret
  31:	48 c7 87 00 01 00 00 01 00 00 00 	movq   $0x1,0x100(%rdi)
  3c:	ba 00 01 00 00       	mov    $0x100,%edx
  41:	48 89 fb             	mov    %rdi,%rbx
  44:	e8 00 00 00 00       	call   49 <std.sumtype.matchImpl!(1, error_d.Result!(kernels.Block, kernels.DomainError).Result.copyStorage!(immutable(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).copyStorage(ref immutable(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).__lambda_L103_C30).matchImpl!(immutable(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).matchImpl(ref immutable(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType))+0x49>	45: R_X86_64_PLT32	memcpy-0x4
  49:	48 89 d8             	mov    %rbx,%rax
  4c:	5b                   	pop    %rbx
  4d:	c3                   	ret
  4e:	0f 57 c0             	xorps  %xmm0,%xmm0
  51:	0f 11 87 f8 00 00 00 	movups %xmm0,0xf8(%rdi)
  58:	0f 11 87 e8 00 00 00 	movups %xmm0,0xe8(%rdi)
  5f:	0f 11 87 d8 00 00 00 	movups %xmm0,0xd8(%rdi)
  66:	0f 11 87 c8 00 00 00 	movups %xmm0,0xc8(%rdi)
  6d:	0f 11 87 b8 00 00 00 	movups %xmm0,0xb8(%rdi)
  74:	0f 11 87 a8 00 00 00 	movups %xmm0,0xa8(%rdi)
  7b:	0f 11 87 98 00 00 00 	movups %xmm0,0x98(%rdi)
  82:	0f 11 87 88 00 00 00 	movups %xmm0,0x88(%rdi)
  89:	0f 11 47 78          	movups %xmm0,0x78(%rdi)
  8d:	0f 11 47 68          	movups %xmm0,0x68(%rdi)
  91:	0f 11 47 58          	movups %xmm0,0x58(%rdi)
  95:	0f 11 47 48          	movups %xmm0,0x48(%rdi)
  99:	0f 11 47 38          	movups %xmm0,0x38(%rdi)
  9d:	0f 11 47 28          	movups %xmm0,0x28(%rdi)
  a1:	0f 11 47 18          	movups %xmm0,0x18(%rdi)
  a5:	0f 11 47 08          	movups %xmm0,0x8(%rdi)
  a9:	48 8b 06             	mov    (%rsi),%rax
  ac:	48 89 07             	mov    %rax,(%rdi)
  af:	c6 87 00 01 00 00 02 	movb   $0x2,0x100(%rdi)
  b6:	48 89 f8             	mov    %rdi,%rax
  b9:	5b                   	pop    %rbx
  ba:	c3                   	ret
  bb:	0f 0b                	ud2

Disassembly of section .text._D3std7sumtype__T9matchImplVEQBb8typecons__T4FlagVAyaa10_65786861757374697665ZQBii1S7error_d__T6ResultTS7kernels5BlockTSQq11DomainErrorZQBp5stateMxFNaNbNiNfZ17__lambda_L162_C31Z__TQGhTxSQHcQHb__T7SumTypeTSQEr5EmptyTSQFc__T7SuccessTQEyZQnTSQFz__T7FailureTQFfZQnZQCoZQJoMFNaNbNiNfKxQDrZEQHt11ResultState:

0000000000000000 <std.sumtype.matchImpl!(1, error_d.Result!(kernels.Block, kernels.DomainError).Result.state().__lambda_L162_C31).matchImpl!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).matchImpl(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType))>:
   0:	0f b6 86 00 01 00 00 	movzbl 0x100(%rsi),%eax
   7:	83 f8 02             	cmp    $0x2,%eax
   a:	77 01                	ja     d <std.sumtype.matchImpl!(1, error_d.Result!(kernels.Block, kernels.DomainError).Result.state().__lambda_L162_C31).matchImpl!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).matchImpl(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType))+0xd>
   c:	c3                   	ret
   d:	0f 0b                	ud2

Disassembly of section .text._D4core8lifetime__T8moveImplTS3std7sumtype__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTS7kernels5BlockZQzTSQBy__T7FailureTSQBj11DomainErrorZQBbZQDtZQExFNaNbNiNfMKQFbNkMKQFiZv:

0000000000000000 <_D4core8lifetime__T8moveImplTS3std7sumtype__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTS7kernels5BlockZQzTSQBy__T7FailureTSQBj11DomainErrorZQBbZQDtZQExFNaNbNiNfMKQFbNkMKQFiZv>:
   0:	48 39 fe             	cmp    %rdi,%rsi
   3:	74 0a                	je     f <_D4core8lifetime__T8moveImplTS3std7sumtype__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTS7kernels5BlockZQzTSQBy__T7FailureTSQBj11DomainErrorZQBbZQDtZQExFNaNbNiNfMKQFbNkMKQFiZv+0xf>
   5:	ba 08 01 00 00       	mov    $0x108,%edx
   a:	e9 00 00 00 00       	jmp    f <_D4core8lifetime__T8moveImplTS3std7sumtype__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTS7kernels5BlockZQzTSQBy__T7FailureTSQBj11DomainErrorZQBbZQDtZQExFNaNbNiNfMKQFbNkMKQFiZv+0xf>	b: R_X86_64_PLT32	memcpy-0x4
   f:	c3                   	ret

Disassembly of section .text._D3std7sumtype__T5matchSQwQu__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTS7kernels5BlockZQzTSQBy__T7FailureTSQBj11DomainErrorZQBbZQDt__T8opEqualsTxSQFoQFn__TQEuTQEpTQEdTQCzZQFkTxQBfZQBuMxFKxQBrZ17__lambda_L723_C48Z__TQHqTxQCxTxQDcZQIeMFNaNbNiNfKxQDvKxQEaZb:

0000000000000000 <std.sumtype.match!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opEquals!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType), const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).opEquals(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).__lambda_L723_C48).match!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType), const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).match(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType), ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType))>:
   0:	0f b6 8e 00 01 00 00 	movzbl 0x100(%rsi),%ecx
   7:	0f b6 82 00 01 00 00 	movzbl 0x100(%rdx),%eax
   e:	48 8d 04 40          	lea    (%rax,%rax,2),%rax
  12:	48 01 c8             	add    %rcx,%rax
  15:	48 83 f8 08          	cmp    $0x8,%rax
  19:	77 3e                	ja     59 <std.sumtype.match!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opEquals!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType), const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).opEquals(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).__lambda_L723_C48).match!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType), const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).match(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType), ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType))+0x59>
  1b:	48 8d 0d 00 00 00 00 	lea    0x0(%rip),%rcx        # 22 <std.sumtype.match!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opEquals!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType), const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).opEquals(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).__lambda_L723_C48).match!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType), const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).match(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType), ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType))+0x22>	1e: R_X86_64_PC32	.rodata._D3std7sumtype__T5matchSQwQu__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTS7kernels5BlockZQzTSQBy__T7FailureTSQBj11DomainErrorZQBbZQDt__T8opEqualsTxSQFoQFn__TQEuTQEpTQEdTQCzZQFkTxQBfZQBuMxFKxQBrZ17__lambda_L723_C48Z__TQHqTxQCxTxQDcZQIeMFNaNbNiNfKxQDvKxQEaZb-0x4
  22:	48 63 04 81          	movslq (%rcx,%rax,4),%rax
  26:	48 01 c8             	add    %rcx,%rax
  29:	ff e0                	jmp    *%rax
  2b:	31 c0                	xor    %eax,%eax
  2d:	c3                   	ret
  2e:	50                   	push   %rax
  2f:	48 89 d0             	mov    %rdx,%rax
  32:	ba 00 01 00 00       	mov    $0x100,%edx
  37:	48 89 f7             	mov    %rsi,%rdi
  3a:	48 89 c6             	mov    %rax,%rsi
  3d:	e8 00 00 00 00       	call   42 <std.sumtype.match!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opEquals!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType), const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).opEquals(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).__lambda_L723_C48).match!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType), const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).match(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType), ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType))+0x42>	3e: R_X86_64_PLT32	bcmp-0x4
  42:	85 c0                	test   %eax,%eax
  44:	0f 94 c0             	sete   %al
  47:	48 83 c4 08          	add    $0x8,%rsp
  4b:	c3                   	ret
  4c:	b0 01                	mov    $0x1,%al
  4e:	c3                   	ret
  4f:	48 8b 06             	mov    (%rsi),%rax
  52:	48 3b 02             	cmp    (%rdx),%rax
  55:	0f 94 c0             	sete   %al
  58:	c3                   	ret
  59:	0f 0b                	ud2

Disassembly of section .text._D3std7sumtype__T9matchImplVEQBb8typecons__T4FlagVAyaa10_65786861757374697665ZQBii1SQDeQDd__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTS7kernels5BlockZQzTSQBy__T7FailureTSQBj11DomainErrorZQBbZQDt__T8opEqualsTxSQHyQHx__TQEuTQEpTQEdTQCzZQFkTxQBfZQBuMxFKxQBrZ17__lambda_L723_C48Z__TQKaTxQCxTxQDcZQKoMFNaNbNiNfKxQDvKxQEaZb:

0000000000000000 <std.sumtype.matchImpl!(1, std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opEquals!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType), const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).opEquals(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).__lambda_L723_C48).matchImpl!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType), const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).matchImpl(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType), ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType))>:
   0:	0f b6 8e 00 01 00 00 	movzbl 0x100(%rsi),%ecx
   7:	0f b6 82 00 01 00 00 	movzbl 0x100(%rdx),%eax
   e:	48 8d 04 40          	lea    (%rax,%rax,2),%rax
  12:	48 01 c8             	add    %rcx,%rax
  15:	48 83 f8 08          	cmp    $0x8,%rax
  19:	77 3e                	ja     59 <std.sumtype.matchImpl!(1, std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opEquals!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType), const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).opEquals(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).__lambda_L723_C48).matchImpl!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType), const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).matchImpl(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType), ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType))+0x59>
  1b:	48 8d 0d 00 00 00 00 	lea    0x0(%rip),%rcx        # 22 <std.sumtype.matchImpl!(1, std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opEquals!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType), const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).opEquals(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).__lambda_L723_C48).matchImpl!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType), const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).matchImpl(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType), ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType))+0x22>	1e: R_X86_64_PC32	.rodata._D3std7sumtype__T9matchImplVEQBb8typecons__T4FlagVAyaa10_65786861757374697665ZQBii1SQDeQDd__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTS7kernels5BlockZQzTSQBy__T7FailureTSQBj11DomainErrorZQBbZQDt__T8opEqualsTxSQHyQHx__TQEuTQEpTQEdTQCzZQFkTxQBfZQBuMxFKxQBrZ17__lambda_L723_C48Z__TQKaTxQCxTxQDcZQKoMFNaNbNiNfKxQDvKxQEaZb-0x4
  22:	48 63 04 81          	movslq (%rcx,%rax,4),%rax
  26:	48 01 c8             	add    %rcx,%rax
  29:	ff e0                	jmp    *%rax
  2b:	31 c0                	xor    %eax,%eax
  2d:	c3                   	ret
  2e:	50                   	push   %rax
  2f:	48 89 d0             	mov    %rdx,%rax
  32:	ba 00 01 00 00       	mov    $0x100,%edx
  37:	48 89 f7             	mov    %rsi,%rdi
  3a:	48 89 c6             	mov    %rax,%rsi
  3d:	e8 00 00 00 00       	call   42 <std.sumtype.matchImpl!(1, std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opEquals!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType), const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).opEquals(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).__lambda_L723_C48).matchImpl!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType), const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).matchImpl(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType), ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType))+0x42>	3e: R_X86_64_PLT32	bcmp-0x4
  42:	85 c0                	test   %eax,%eax
  44:	0f 94 c0             	sete   %al
  47:	48 83 c4 08          	add    $0x8,%rsp
  4b:	c3                   	ret
  4c:	b0 01                	mov    $0x1,%al
  4e:	c3                   	ret
  4f:	48 8b 06             	mov    (%rsi),%rax
  52:	48 3b 02             	cmp    (%rdx),%rax
  55:	0f 94 c0             	sete   %al
  58:	c3                   	ret
  59:	0f 0b                	ud2

Disassembly of section .text._D3std7sumtype__T8TagTupleVmi3Vmi3ZQs__T6__ctorTSQBvQBu__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTS7kernels5BlockZQzTSQBy__T7FailureTSQBj11DomainErrorZQBbZQDtTQEhZQEtMFNaNbNcNiNfKxSQGxQGw__TQFcTQExTQElTQDhZQFsKxQBfZSQIgQIf__TQIaVmi3Vmi3ZQIm:

0000000000000000 <std.sumtype.TagTuple!(3uL, 3uL).TagTuple.this!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType, std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).this(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType), ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType))>:
   0:	48 89 f8             	mov    %rdi,%rax
   3:	0f b6 8e 00 01 00 00 	movzbl 0x100(%rsi),%ecx
   a:	48 89 0f             	mov    %rcx,(%rdi)
   d:	0f b6 8a 00 01 00 00 	movzbl 0x100(%rdx),%ecx
  14:	48 89 4f 08          	mov    %rcx,0x8(%rdi)
  18:	c3                   	ret

Disassembly of section .text._D3std7sumtype__T9matchImplVEQBb8typecons__T4FlagVAyaa10_65786861757374697665ZQBii1SQDeQDd__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTS7kernels5BlockZQzTSQBy__T7FailureTSQBj11DomainErrorZQBbZQDt8opAssignMFNcKSQHyQHx__TQEuTQEpTQEdTQCzZQFkZ17__lambda_L679_C28Z__TQJjTQCfZQJrMFNaNbNiNfKQCxZv:

0000000000000000 <std.sumtype.matchImpl!(1, std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).__lambda_L679_C28).matchImpl!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).matchImpl(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)>:
   0:	53                   	push   %rbx
   1:	48 81 ec 00 01 00 00 	sub    $0x100,%rsp
   8:	0f b6 86 00 01 00 00 	movzbl 0x100(%rsi),%eax
   f:	85 c0                	test   %eax,%eax
  11:	0f 84 c4 00 00 00    	je     db <std.sumtype.matchImpl!(1, std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).__lambda_L679_C28).matchImpl!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).matchImpl(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)+0xdb>
  17:	83 f8 01             	cmp    $0x1,%eax
  1a:	0f 84 8e 00 00 00    	je     ae <std.sumtype.matchImpl!(1, std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).__lambda_L679_C28).matchImpl!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).matchImpl(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)+0xae>
  20:	83 f8 02             	cmp    $0x2,%eax
  23:	0f 85 4d 01 00 00    	jne    176 <std.sumtype.matchImpl!(1, std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).__lambda_L679_C28).matchImpl!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).matchImpl(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)+0x176>
  29:	48 8b 07             	mov    (%rdi),%rax
  2c:	80 b8 00 01 00 00 03 	cmpb   $0x3,0x100(%rax)
  33:	0f 83 3d 01 00 00    	jae    176 <std.sumtype.matchImpl!(1, std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).__lambda_L679_C28).matchImpl!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).matchImpl(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)+0x176>
  39:	48 8b 0e             	mov    (%rsi),%rcx
  3c:	48 89 08             	mov    %rcx,(%rax)
  3f:	0f 57 c0             	xorps  %xmm0,%xmm0
  42:	0f 11 40 08          	movups %xmm0,0x8(%rax)
  46:	0f 11 40 18          	movups %xmm0,0x18(%rax)
  4a:	0f 11 40 28          	movups %xmm0,0x28(%rax)
  4e:	0f 11 40 38          	movups %xmm0,0x38(%rax)
  52:	0f 11 40 48          	movups %xmm0,0x48(%rax)
  56:	0f 11 40 58          	movups %xmm0,0x58(%rax)
  5a:	0f 11 40 68          	movups %xmm0,0x68(%rax)
  5e:	0f 11 40 78          	movups %xmm0,0x78(%rax)
  62:	0f 11 80 88 00 00 00 	movups %xmm0,0x88(%rax)
  69:	0f 11 80 98 00 00 00 	movups %xmm0,0x98(%rax)
  70:	0f 11 80 a8 00 00 00 	movups %xmm0,0xa8(%rax)
  77:	0f 11 80 b8 00 00 00 	movups %xmm0,0xb8(%rax)
  7e:	0f 11 80 c8 00 00 00 	movups %xmm0,0xc8(%rax)
  85:	0f 11 80 d8 00 00 00 	movups %xmm0,0xd8(%rax)
  8c:	0f 11 80 e8 00 00 00 	movups %xmm0,0xe8(%rax)
  93:	48 c7 80 f8 00 00 00 00 00 00 00 	movq   $0x0,0xf8(%rax)
  9e:	c6 80 00 01 00 00 02 	movb   $0x2,0x100(%rax)
  a5:	48 81 c4 00 01 00 00 	add    $0x100,%rsp
  ac:	5b                   	pop    %rbx
  ad:	c3                   	ret
  ae:	48 8b 1f             	mov    (%rdi),%rbx
  b1:	80 bb 00 01 00 00 03 	cmpb   $0x3,0x100(%rbx)
  b8:	0f 83 b8 00 00 00    	jae    176 <std.sumtype.matchImpl!(1, std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).__lambda_L679_C28).matchImpl!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).matchImpl(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)+0x176>
  be:	ba 00 01 00 00       	mov    $0x100,%edx
  c3:	48 89 df             	mov    %rbx,%rdi
  c6:	e8 00 00 00 00       	call   cb <std.sumtype.matchImpl!(1, std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).__lambda_L679_C28).matchImpl!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).matchImpl(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)+0xcb>	c7: R_X86_64_PLT32	memmove-0x4
  cb:	c6 83 00 01 00 00 01 	movb   $0x1,0x100(%rbx)
  d2:	48 81 c4 00 01 00 00 	add    $0x100,%rsp
  d9:	5b                   	pop    %rbx
  da:	c3                   	ret
  db:	48 8b 1f             	mov    (%rdi),%rbx
  de:	80 bb 00 01 00 00 03 	cmpb   $0x3,0x100(%rbx)
  e5:	0f 83 8b 00 00 00    	jae    176 <std.sumtype.matchImpl!(1, std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).__lambda_L679_C28).matchImpl!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).matchImpl(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)+0x176>
  eb:	0f 57 c0             	xorps  %xmm0,%xmm0
  ee:	0f 11 84 24 f0 00 00 00 	movups %xmm0,0xf0(%rsp)
  f6:	0f 11 84 24 e1 00 00 00 	movups %xmm0,0xe1(%rsp)
  fe:	0f 11 84 24 d1 00 00 00 	movups %xmm0,0xd1(%rsp)
 106:	0f 11 84 24 c1 00 00 00 	movups %xmm0,0xc1(%rsp)
 10e:	0f 11 84 24 b1 00 00 00 	movups %xmm0,0xb1(%rsp)
 116:	0f 11 84 24 a1 00 00 00 	movups %xmm0,0xa1(%rsp)
 11e:	0f 11 84 24 91 00 00 00 	movups %xmm0,0x91(%rsp)
 126:	0f 11 84 24 81 00 00 00 	movups %xmm0,0x81(%rsp)
 12e:	0f 11 44 24 71       	movups %xmm0,0x71(%rsp)
 133:	0f 11 44 24 61       	movups %xmm0,0x61(%rsp)
 138:	0f 11 44 24 51       	movups %xmm0,0x51(%rsp)
 13d:	0f 11 44 24 41       	movups %xmm0,0x41(%rsp)
 142:	0f 11 44 24 31       	movups %xmm0,0x31(%rsp)
 147:	0f 11 44 24 21       	movups %xmm0,0x21(%rsp)
 14c:	0f 11 44 24 11       	movups %xmm0,0x11(%rsp)
 151:	0f 11 44 24 01       	movups %xmm0,0x1(%rsp)
 156:	48 89 e6             	mov    %rsp,%rsi
 159:	ba 00 01 00 00       	mov    $0x100,%edx
 15e:	48 89 df             	mov    %rbx,%rdi
 161:	e8 00 00 00 00       	call   166 <std.sumtype.matchImpl!(1, std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType.opAssign(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).__lambda_L679_C28).matchImpl!(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType).matchImpl(ref std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)+0x166>	162: R_X86_64_PLT32	memcpy-0x4
 166:	c6 83 00 01 00 00 00 	movb   $0x0,0x100(%rbx)
 16d:	48 81 c4 00 01 00 00 	add    $0x100,%rsp
 174:	5b                   	pop    %rbx
 175:	c3                   	ret
 176:	0f 0b                	ud2

Disassembly of section .text._D3std7sumtype__T9matchImplVEQBb8typecons__T4FlagVAyaa10_65786861757374697665ZQBii1S4core8internal4hash6hashOfZ__TQDtTxSQEoQEn__T7SumTypeTS7error_d5EmptyTSQq__T7SuccessTS7kernels5BlockZQzTSQBy__T7FailureTSQBj11DomainErrorZQBbZQDtZQIfFNaNbNiNfKxQEvZm:

0000000000000000 <std.sumtype.matchImpl!(1, core.internal.hash.hashOf).matchImpl!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).matchImpl(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType))>:
   0:	48 89 fe             	mov    %rdi,%rsi
   3:	0f b6 87 00 01 00 00 	movzbl 0x100(%rdi),%eax
   a:	83 f8 02             	cmp    $0x2,%eax
   d:	74 16                	je     25 <std.sumtype.matchImpl!(1, core.internal.hash.hashOf).matchImpl!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).matchImpl(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType))+0x25>
   f:	83 f8 01             	cmp    $0x1,%eax
  12:	74 05                	je     19 <std.sumtype.matchImpl!(1, core.internal.hash.hashOf).matchImpl!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).matchImpl(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType))+0x19>
  14:	85 c0                	test   %eax,%eax
  16:	75 6c                	jne    84 <std.sumtype.matchImpl!(1, core.internal.hash.hashOf).matchImpl!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).matchImpl(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType))+0x84>
  18:	c3                   	ret
  19:	bf 00 01 00 00       	mov    $0x100,%edi
  1e:	31 d2                	xor    %edx,%edx
  20:	e9 00 00 00 00       	jmp    25 <std.sumtype.matchImpl!(1, core.internal.hash.hashOf).matchImpl!(const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType)).matchImpl(ref const(std.sumtype.SumType!(error_d.Empty, error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).SumType))+0x25>	21: R_X86_64_PLT32	core.internal.hash._bytesHashAligned(scope const(ubyte)[], ulong)-0x4
  25:	0f b6 06             	movzbl (%rsi),%eax
  28:	48 b9 b3 01 00 00 00 01 00 00 	movabs $0x100000001b3,%rcx
  32:	48 0f af c1          	imul   %rcx,%rax
  36:	0f b6 56 01          	movzbl 0x1(%rsi),%edx
  3a:	48 31 c2             	xor    %rax,%rdx
  3d:	48 0f af d1          	imul   %rcx,%rdx
  41:	0f b6 46 02          	movzbl 0x2(%rsi),%eax
  45:	48 31 d0             	xor    %rdx,%rax
  48:	48 0f af c1          	imul   %rcx,%rax
  4c:	0f b6 56 03          	movzbl 0x3(%rsi),%edx
  50:	48 31 c2             	xor    %rax,%rdx
  53:	48 0f af d1          	imul   %rcx,%rdx
  57:	0f b6 46 04          	movzbl 0x4(%rsi),%eax
  5b:	48 31 d0             	xor    %rdx,%rax
  5e:	48 0f af c1          	imul   %rcx,%rax
  62:	0f b6 56 05          	movzbl 0x5(%rsi),%edx
  66:	48 31 c2             	xor    %rax,%rdx
  69:	48 0f af d1          	imul   %rcx,%rdx
  6d:	0f b6 7e 06          	movzbl 0x6(%rsi),%edi
  71:	48 31 d7             	xor    %rdx,%rdi
  74:	48 0f af f9          	imul   %rcx,%rdi
  78:	0f b6 46 07          	movzbl 0x7(%rsi),%eax
  7c:	48 31 f8             	xor    %rdi,%rax
  7f:	48 0f af c1          	imul   %rcx,%rax
  83:	c3                   	ret
  84:	0f 0b                	ud2

Disassembly of section .text._D4core8internal4hash__T6hashOfTS7error_d__T7SuccessTS7kernels5BlockZQzZQBwFNaNbNiNfMKxSQCd__TQByTQBtZQCgmZm:

0000000000000000 <core.internal.hash.hashOf!(error_d.Success!(kernels.Block).Success).hashOf(scope ref const(error_d.Success!(kernels.Block).Success), ulong)>:
   0:	48 89 f2             	mov    %rsi,%rdx
   3:	48 89 fe             	mov    %rdi,%rsi
   6:	bf 00 01 00 00       	mov    $0x100,%edi
   b:	e9 00 00 00 00       	jmp    10 <core.internal.hash.hashOf!(error_d.Success!(kernels.Block).Success).hashOf(scope ref const(error_d.Success!(kernels.Block).Success), ulong)+0x10>	c: R_X86_64_PLT32	core.internal.hash._bytesHashAligned(scope const(ubyte)[], ulong)-0x4
