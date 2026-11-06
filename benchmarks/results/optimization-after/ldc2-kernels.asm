
/tmp/error-d-cost-c3cj68km/kernels.o:     file format elf64-x86-64


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
   0:	40 0f b6 cf          	movzbl %dil,%ecx
   4:	89 f8                	mov    %edi,%eax
   6:	39 f1                	cmp    %esi,%ecx
   8:	73 0d                	jae    17 <result_small+0x17>
   a:	48 c1 e0 20          	shl    $0x20,%rax
   e:	48 ff c0             	inc    %rax
  11:	ba 02 00 00 00       	mov    $0x2,%edx
  16:	c3                   	ret
  17:	48 b9 87 ca eb 85 b1 79 37 9e 	movabs $0x9e3779b185ebca87,%rcx
  21:	48 0f af c1          	imul   %rcx,%rax
  25:	c1 ef 07             	shr    $0x7,%edi
  28:	48 31 f8             	xor    %rdi,%rax
  2b:	ba 01 00 00 00       	mov    $0x1,%edx
  30:	c3                   	ret

Disassembly of section .text._D7error_d__T6ResultTmTS7kernels11DomainErrorZQBh__T7failureZQjFNaNbNiNfQBxZSQCx__TQCsTmTQCoZQDc:

0000000000000000 <error_d.Result!(ulong, kernels.DomainError).Result.failure!().failure(kernels.DomainError)>:
   0:	48 89 f8             	mov    %rdi,%rax
   3:	ba 02 00 00 00       	mov    $0x2,%edx
   8:	c3                   	ret

Disassembly of section .text._D7error_d__T6ResultTmTS7kernels11DomainErrorZQBh12plainFailureFNaNbNiNeQBxZSQCx__TQCsTmTQCoZQDc:

0000000000000000 <error_d.Result!(ulong, kernels.DomainError).Result.plainFailure(kernels.DomainError)>:
   0:	48 89 f8             	mov    %rdi,%rax
   3:	ba 02 00 00 00       	mov    $0x2,%edx
   8:	c3                   	ret

Disassembly of section .text._D7error_d__T6ResultTmTS7kernels11DomainErrorZQBh__T7successZQjFNaNbNiNfmZSQCv__TQCqTmTQCmZQDa:

0000000000000000 <error_d.Result!(ulong, kernels.DomainError).Result.success!().success(ulong)>:
   0:	48 89 f8             	mov    %rdi,%rax
   3:	ba 01 00 00 00       	mov    $0x1,%edx
   8:	c3                   	ret

Disassembly of section .text._D7error_d__T6ResultTmTS7kernels11DomainErrorZQBh12plainSuccessFNaNbNiNemZSQCv__TQCqTmTQCmZQDa:

0000000000000000 <error_d.Result!(ulong, kernels.DomainError).Result.plainSuccess(ulong)>:
   0:	48 89 f8             	mov    %rdi,%rax
   3:	ba 01 00 00 00       	mov    $0x1,%edx
   8:	c3                   	ret

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
  13:	73 0e                	jae    23 <result_large+0x23>
  15:	48 c1 e6 20          	shl    $0x20,%rsi
  19:	48 ff c6             	inc    %rsi
  1c:	48 89 33             	mov    %rsi,(%rbx)
  1f:	b0 02                	mov    $0x2,%al
  21:	eb 1f                	jmp    42 <result_large+0x42>
  23:	4c 8d 74 24 08       	lea    0x8(%rsp),%r14
  28:	4c 89 f7             	mov    %r14,%rdi
  2b:	e8 00 00 00 00       	call   30 <result_large+0x30>	2c: R_X86_64_PLT32	kernels.block(uint)-0x4
  30:	ba 00 01 00 00       	mov    $0x100,%edx
  35:	48 89 df             	mov    %rbx,%rdi
  38:	4c 89 f6             	mov    %r14,%rsi
  3b:	e8 00 00 00 00       	call   40 <result_large+0x40>	3c: R_X86_64_PLT32	memcpy-0x4
  40:	b0 01                	mov    $0x1,%al
  42:	88 83 00 01 00 00    	mov    %al,0x100(%rbx)
  48:	48 89 d8             	mov    %rbx,%rax
  4b:	48 81 c4 08 01 00 00 	add    $0x108,%rsp
  52:	5b                   	pop    %rbx
  53:	41 5e                	pop    %r14
  55:	c3                   	ret

Disassembly of section .text._D7error_d__T6ResultTS7kernels5BlockTSQq11DomainErrorZQBp__T7failureZQjFNaNbNiNfQBrZSQDf__TQDaTQCwTQCkZQDm:

0000000000000000 <error_d.Result!(kernels.Block, kernels.DomainError).Result.failure!().failure(kernels.DomainError)>:
   0:	48 89 f8             	mov    %rdi,%rax
   3:	48 89 37             	mov    %rsi,(%rdi)
   6:	c6 87 00 01 00 00 02 	movb   $0x2,0x100(%rdi)
   d:	c3                   	ret

Disassembly of section .text._D7error_d__T6ResultTS7kernels5BlockTSQq11DomainErrorZQBp12plainFailureFNaNbNiNeQBrZSQDf__TQDaTQCwTQCkZQDm:

0000000000000000 <error_d.Result!(kernels.Block, kernels.DomainError).Result.plainFailure(kernels.DomainError)>:
   0:	48 89 f8             	mov    %rdi,%rax
   3:	48 89 37             	mov    %rsi,(%rdi)
   6:	c6 87 00 01 00 00 02 	movb   $0x2,0x100(%rdi)
   d:	c3                   	ret

Disassembly of section .text._D7error_d__T6ResultTS7kernels5BlockTSQq11DomainErrorZQBp__T7successZQjFNaNbNiNfQChZSQDf__TQDaTQCwTQCkZQDm:

0000000000000000 <error_d.Result!(kernels.Block, kernels.DomainError).Result.success!().success(kernels.Block)>:
   0:	53                   	push   %rbx
   1:	48 89 fb             	mov    %rdi,%rbx
   4:	48 8d 74 24 10       	lea    0x10(%rsp),%rsi
   9:	ba 00 01 00 00       	mov    $0x100,%edx
   e:	e8 00 00 00 00       	call   13 <error_d.Result!(kernels.Block, kernels.DomainError).Result.success!().success(kernels.Block)+0x13>	f: R_X86_64_PLT32	memcpy-0x4
  13:	c6 83 00 01 00 00 01 	movb   $0x1,0x100(%rbx)
  1a:	48 89 d8             	mov    %rbx,%rax
  1d:	5b                   	pop    %rbx
  1e:	c3                   	ret

Disassembly of section .text._D7error_d__T6ResultTS7kernels5BlockTSQq11DomainErrorZQBp12plainSuccessFNaNbNiNeQChZSQDf__TQDaTQCwTQCkZQDm:

0000000000000000 <error_d.Result!(kernels.Block, kernels.DomainError).Result.plainSuccess(kernels.Block)>:
   0:	53                   	push   %rbx
   1:	48 89 fb             	mov    %rdi,%rbx
   4:	48 8d 74 24 10       	lea    0x10(%rsp),%rsi
   9:	ba 00 01 00 00       	mov    $0x100,%edx
   e:	e8 00 00 00 00       	call   13 <error_d.Result!(kernels.Block, kernels.DomainError).Result.plainSuccess(kernels.Block)+0x13>	f: R_X86_64_PLT32	memcpy-0x4
  13:	c6 83 00 01 00 00 01 	movb   $0x1,0x100(%rbx)
  1a:	48 89 d8             	mov    %rbx,%rax
  1d:	5b                   	pop    %rbx
  1e:	c3                   	ret

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
   0:	40 0f b6 cf          	movzbl %dil,%ecx
   4:	89 f8                	mov    %edi,%eax
   6:	39 f1                	cmp    %esi,%ecx
   8:	73 0d                	jae    17 <kernels.localResult(uint, uint)+0x17>
   a:	48 c1 e0 20          	shl    $0x20,%rax
   e:	48 ff c0             	inc    %rax
  11:	ba 02 00 00 00       	mov    $0x2,%edx
  16:	c3                   	ret
  17:	48 b9 87 ca eb 85 b1 79 37 9e 	movabs $0x9e3779b185ebca87,%rcx
  21:	48 0f af c1          	imul   %rcx,%rax
  25:	c1 ef 07             	shr    $0x7,%edi
  28:	48 31 f8             	xor    %rdi,%rax
  2b:	ba 01 00 00 00       	mov    $0x1,%edx
  30:	c3                   	ret

Disassembly of section .text.pipeline_result:

0000000000000000 <pipeline_result>:
   0:	50                   	push   %rax
   1:	89 7c 24 04          	mov    %edi,0x4(%rsp)
   5:	40 0f b6 cf          	movzbl %dil,%ecx
   9:	89 f8                	mov    %edi,%eax
   b:	39 f1                	cmp    %esi,%ecx
   d:	73 0e                	jae    1d <pipeline_result+0x1d>
   f:	48 c1 e0 20          	shl    $0x20,%rax
  13:	48 ff c0             	inc    %rax
  16:	ba 02 00 00 00       	mov    $0x2,%edx
  1b:	59                   	pop    %rcx
  1c:	c3                   	ret
  1d:	48 b9 87 ca eb 85 b1 79 37 9e 	movabs $0x9e3779b185ebca87,%rcx
  27:	48 0f af c1          	imul   %rcx,%rax
  2b:	c1 ef 07             	shr    $0x7,%edi
  2e:	48 31 c7             	xor    %rax,%rdi
  31:	e8 00 00 00 00       	call   36 <pipeline_result+0x36>	32: R_X86_64_PLT32	kernels.pipeline_result(uint, uint).__lambda_L54_C14(ulong)-0x4
  36:	48 8d 7c 24 04       	lea    0x4(%rsp),%rdi
  3b:	48 89 c6             	mov    %rax,%rsi
  3e:	e8 00 00 00 00       	call   43 <pipeline_result+0x43>	3f: R_X86_64_PLT32	kernels.pipeline_result(uint, uint).__lambda_L55_C18(ulong)-0x4
  43:	59                   	pop    %rcx
  44:	c3                   	ret

Disassembly of section .text._D7error_d__T6ResultTmTS7kernels11DomainErrorZQBh__T3mapTPFNaNbNiNfmZmTSQCs__TQCnTmTQCjZQCxZQBoMFNaNbNiNfMQBxZQBn:

0000000000000000 <error_d.Result!(ulong, kernels.DomainError).Result.map!(ulong(ulong) pure nothrow @nogc @safe function, error_d.Result!(ulong, kernels.DomainError).Result).map(scope ulong(ulong) pure nothrow @nogc @safe function)>:
   0:	48 83 ec 18          	sub    $0x18,%rsp
   4:	0f b6 47 08          	movzbl 0x8(%rdi),%eax
   8:	83 f8 01             	cmp    $0x1,%eax
   b:	74 14                	je     21 <error_d.Result!(ulong, kernels.DomainError).Result.map!(ulong(ulong) pure nothrow @nogc @safe function, error_d.Result!(ulong, kernels.DomainError).Result).map(scope ulong(ulong) pure nothrow @nogc @safe function)+0x21>
   d:	83 f8 02             	cmp    $0x2,%eax
  10:	75 2a                	jne    3c <error_d.Result!(ulong, kernels.DomainError).Result.map!(ulong(ulong) pure nothrow @nogc @safe function, error_d.Result!(ulong, kernels.DomainError).Result).map(scope ulong(ulong) pure nothrow @nogc @safe function)+0x3c>
  12:	48 8b 07             	mov    (%rdi),%rax
  15:	48 83 c7 08          	add    $0x8,%rdi
  19:	48 8b 17             	mov    (%rdi),%rdx
  1c:	48 83 c4 18          	add    $0x18,%rsp
  20:	c3                   	ret
  21:	48 8b 3f             	mov    (%rdi),%rdi
  24:	ff d6                	call   *%rsi
  26:	48 c7 44 24 10 01 00 00 00 	movq   $0x1,0x10(%rsp)
  2f:	48 8d 7c 24 10       	lea    0x10(%rsp),%rdi
  34:	48 8b 17             	mov    (%rdi),%rdx
  37:	48 83 c4 18          	add    $0x18,%rsp
  3b:	c3                   	ret
  3c:	48 c7 44 24 08 00 00 00 00 	movq   $0x0,0x8(%rsp)
  45:	48 8d 7c 24 08       	lea    0x8(%rsp),%rdi
  4a:	31 c0                	xor    %eax,%eax
  4c:	48 8b 17             	mov    (%rdi),%rdx
  4f:	48 83 c4 18          	add    $0x18,%rsp
  53:	c3                   	ret

Disassembly of section .text._D7error_d__T6ResultTmTS7kernels11DomainErrorZQBh8hasErrorMxFNaNbNiNfZb:

0000000000000000 <error_d.Result!(ulong, kernels.DomainError).Result.hasError() const>:
   0:	80 7f 08 02          	cmpb   $0x2,0x8(%rdi)
   4:	0f 94 c0             	sete   %al
   7:	c3                   	ret

Disassembly of section .text._D7error_d__T6ResultTmTS7kernels11DomainErrorZQBh5stateMxFNaNbNiNfZEQCo11ResultState:

0000000000000000 <error_d.Result!(ulong, kernels.DomainError).Result.state() const>:
   0:	0f b6 47 08          	movzbl 0x8(%rdi),%eax
   4:	c3                   	ret

Disassembly of section .text._D7error_d__T6ResultTmTS7kernels11DomainErrorZQBh8hasValueMxFNaNbNiNfZb:

0000000000000000 <error_d.Result!(ulong, kernels.DomainError).Result.hasValue() const>:
   0:	80 7f 08 01          	cmpb   $0x1,0x8(%rdi)
   4:	0f 94 c0             	sete   %al
   7:	c3                   	ret

Disassembly of section .text._D7error_d__T6ResultTmTS7kernels11DomainErrorZQBh__T5valueTSQCg__TQCbTmTQBxZQClZQBcMFNaNbNiNfZm:

0000000000000000 <error_d.Result!(ulong, kernels.DomainError).Result.value!(error_d.Result!(ulong, kernels.DomainError).Result).value()>:
   0:	80 7f 08 01          	cmpb   $0x1,0x8(%rdi)
   4:	75 04                	jne    a <error_d.Result!(ulong, kernels.DomainError).Result.value!(error_d.Result!(ulong, kernels.DomainError).Result).value()+0xa>
   6:	48 8b 07             	mov    (%rdi),%rax
   9:	c3                   	ret
   a:	50                   	push   %rax
   b:	e8 00 00 00 00       	call   10 <error_d.Result!(ulong, kernels.DomainError).Result.value!(error_d.Result!(ulong, kernels.DomainError).Result).value()+0x10>	c: R_X86_64_PLT32	error_d.badAccess()-0x4

Disassembly of section .text._D7error_d__T6ResultTmTS7kernels11DomainErrorZQBh11requireLiveMxFNaNbNiNfZv:

0000000000000000 <error_d.Result!(ulong, kernels.DomainError).Result.requireLive() const>:
   0:	c3                   	ret

Disassembly of section .text._D7error_d__T6ResultTmTS7kernels11DomainErrorZQBh__T10plainValueTSQCm__TQChTmTQCdZQCrZQBiMFNaNbNiNeZm:

0000000000000000 <error_d.Result!(ulong, kernels.DomainError).Result.plainValue!(error_d.Result!(ulong, kernels.DomainError).Result).plainValue()>:
   0:	80 7f 08 01          	cmpb   $0x1,0x8(%rdi)
   4:	75 04                	jne    a <error_d.Result!(ulong, kernels.DomainError).Result.plainValue!(error_d.Result!(ulong, kernels.DomainError).Result).plainValue()+0xa>
   6:	48 8b 07             	mov    (%rdi),%rax
   9:	c3                   	ret
   a:	50                   	push   %rax
   b:	e8 00 00 00 00       	call   10 <error_d.Result!(ulong, kernels.DomainError).Result.plainValue!(error_d.Result!(ulong, kernels.DomainError).Result).plainValue()+0x10>	c: R_X86_64_PLT32	error_d.badAccess()-0x4

Disassembly of section .text._D7kernels15pipeline_resultUNaNbNiNfkkZ16__lambda_L54_C14FNaNbNiNfmZm:

0000000000000000 <kernels.pipeline_result(uint, uint).__lambda_L54_C14(ulong)>:
   0:	48 b8 f0 de bc 9a 78 56 34 12 	movabs $0x123456789abcdef0,%rax
   a:	48 31 f8             	xor    %rdi,%rax
   d:	c3                   	ret

Disassembly of section .text._D7error_d__T6ResultTmTS7kernels11DomainErrorZQBh__T7andThenTDFNaNbNiNfmZSQCu__TQCpTmTQClZQCzTQvZQBtMFNaNbNiNfMQByZQBq:

0000000000000000 <error_d.Result!(ulong, kernels.DomainError).Result.andThen!(error_d.Result!(ulong, kernels.DomainError).Result(ulong) pure nothrow @nogc @safe delegate, error_d.Result!(ulong, kernels.DomainError).Result).andThen(scope error_d.Result!(ulong, kernels.DomainError).Result(ulong) pure nothrow @nogc @safe delegate)>:
   0:	48 83 ec 18          	sub    $0x18,%rsp
   4:	0f b6 47 08          	movzbl 0x8(%rdi),%eax
   8:	83 f8 01             	cmp    $0x1,%eax
   b:	74 14                	je     21 <error_d.Result!(ulong, kernels.DomainError).Result.andThen!(error_d.Result!(ulong, kernels.DomainError).Result(ulong) pure nothrow @nogc @safe delegate, error_d.Result!(ulong, kernels.DomainError).Result).andThen(scope error_d.Result!(ulong, kernels.DomainError).Result(ulong) pure nothrow @nogc @safe delegate)+0x21>
   d:	83 f8 02             	cmp    $0x2,%eax
  10:	75 2c                	jne    3e <error_d.Result!(ulong, kernels.DomainError).Result.andThen!(error_d.Result!(ulong, kernels.DomainError).Result(ulong) pure nothrow @nogc @safe delegate, error_d.Result!(ulong, kernels.DomainError).Result).andThen(scope error_d.Result!(ulong, kernels.DomainError).Result(ulong) pure nothrow @nogc @safe delegate)+0x3e>
  12:	48 8b 07             	mov    (%rdi),%rax
  15:	48 83 c7 08          	add    $0x8,%rdi
  19:	48 8b 17             	mov    (%rdi),%rdx
  1c:	48 83 c4 18          	add    $0x18,%rsp
  20:	c3                   	ret
  21:	48 8b 07             	mov    (%rdi),%rax
  24:	48 89 f7             	mov    %rsi,%rdi
  27:	48 89 c6             	mov    %rax,%rsi
  2a:	ff d2                	call   *%rdx
  2c:	48 89 54 24 10       	mov    %rdx,0x10(%rsp)
  31:	48 8d 7c 24 10       	lea    0x10(%rsp),%rdi
  36:	48 8b 17             	mov    (%rdi),%rdx
  39:	48 83 c4 18          	add    $0x18,%rsp
  3d:	c3                   	ret
  3e:	48 c7 44 24 08 00 00 00 00 	movq   $0x0,0x8(%rsp)
  47:	48 8d 7c 24 08       	lea    0x8(%rsp),%rdi
  4c:	31 c0                	xor    %eax,%eax
  4e:	48 8b 17             	mov    (%rdi),%rdx
  51:	48 83 c4 18          	add    $0x18,%rsp
  55:	c3                   	ret

Disassembly of section .text._D7kernels15pipeline_resultUNaNbNiNfkkZ16__lambda_L55_C18MFNaNbNiNfmZS7error_d__T6ResultTmTSQDm11DomainErrorZQBc:

0000000000000000 <kernels.pipeline_result(uint, uint).__lambda_L55_C18(ulong)>:
   0:	40 f6 c6 0f          	test   $0xf,%sil
   4:	74 0a                	je     10 <kernels.pipeline_result(uint, uint).__lambda_L55_C18(ulong)+0x10>
   6:	48 8d 04 76          	lea    (%rsi,%rsi,2),%rax
   a:	ba 01 00 00 00       	mov    $0x1,%edx
   f:	c3                   	ret
  10:	8b 07                	mov    (%rdi),%eax
  12:	48 c1 e0 20          	shl    $0x20,%rax
  16:	48 83 c8 02          	or     $0x2,%rax
  1a:	ba 02 00 00 00       	mov    $0x2,%edx
  1f:	c3                   	ret

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

Disassembly of section .text._D7error_d__T6ResultTmTS7kernels11DomainErrorZQBh6__ctorMFNaNbNcNiNfSQCp__T12PlainStorageTSQDl__T7SuccessTmZQlTSQEg__T7FailureTQEaZQnZQChZSQFh__TQFcTmTQEyZQFm:

0000000000000000 <error_d.Result!(ulong, kernels.DomainError).Result.this(error_d.PlainStorage!(error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).PlainStorage)>:
   0:	48 89 f8             	mov    %rdi,%rax
   3:	48 89 37             	mov    %rsi,(%rdi)
   6:	48 89 57 08          	mov    %rdx,0x8(%rdi)
   a:	c3                   	ret

Disassembly of section .text._D4core8lifetime__T4moveTS7error_d__T12PlainStorageTSQBb__T7SuccessTmZQlTSQBw__T7FailureTS7kernels11DomainErrorZQBgZQDbZQDxFNaNbNiNfNkMKQEhZQEl:

0000000000000000 <_D4core8lifetime__T4moveTS7error_d__T12PlainStorageTSQBb__T7SuccessTmZQlTSQBw__T7FailureTS7kernels11DomainErrorZQBgZQDbZQDxFNaNbNiNfNkMKQEhZQEl>:
   0:	48 8b 07             	mov    (%rdi),%rax
   3:	48 8b 57 08          	mov    0x8(%rdi),%rdx
   7:	c3                   	ret

Disassembly of section .text._D7error_d__T6ResultTmTS7kernels11DomainErrorZQBh7isEmptyMxFNaNbNiNfZb:

0000000000000000 <error_d.Result!(ulong, kernels.DomainError).Result.isEmpty() const>:
   0:	80 7f 08 00          	cmpb   $0x0,0x8(%rdi)
   4:	0f 94 c0             	sete   %al
   7:	c3                   	ret

Disassembly of section .text._D7error_d__T6ResultTmTS7kernels11DomainErrorZQBh8opAssignMFNaNbNiNfSQCp__TQCkTmTQCgZQCuZv:

0000000000000000 <error_d.Result!(ulong, kernels.DomainError).Result.opAssign(error_d.Result!(ulong, kernels.DomainError).Result)>:
   0:	48 89 37             	mov    %rsi,(%rdi)
   3:	48 89 57 08          	mov    %rdx,0x8(%rdi)
   7:	c3                   	ret

Disassembly of section .text._D7error_d__T6ResultTmTS7kernels11DomainErrorZQBh7replaceMFNaNbNiNeKSQCp__T12PlainStorageTSQDl__T7SuccessTmZQlTSQEg__T7FailureTQEaZQnZQChZv:

0000000000000000 <error_d.Result!(ulong, kernels.DomainError).Result.replace(ref error_d.PlainStorage!(error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).PlainStorage)>:
   0:	0f 57 c0             	xorps  %xmm0,%xmm0
   3:	0f 11 07             	movups %xmm0,(%rdi)
   6:	48 39 fe             	cmp    %rdi,%rsi
   9:	74 06                	je     11 <error_d.Result!(ulong, kernels.DomainError).Result.replace(ref error_d.PlainStorage!(error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).PlainStorage)+0x11>
   b:	0f 10 06             	movups (%rsi),%xmm0
   e:	0f 11 07             	movups %xmm0,(%rdi)
  11:	c3                   	ret

Disassembly of section .text._D4core8lifetime__T4moveTS7error_d__T12PlainStorageTSQBb__T7SuccessTmZQlTSQBw__T7FailureTS7kernels11DomainErrorZQBgZQDbZQDxFNaNbNiNfKQEeKQEiZv:

0000000000000000 <core.lifetime.move!(error_d.PlainStorage!(error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).PlainStorage).move(ref error_d.PlainStorage!(error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).PlainStorage, ref error_d.PlainStorage!(error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).PlainStorage)>:
   0:	48 39 f7             	cmp    %rsi,%rdi
   3:	74 06                	je     b <core.lifetime.move!(error_d.PlainStorage!(error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).PlainStorage).move(ref error_d.PlainStorage!(error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).PlainStorage, ref error_d.PlainStorage!(error_d.Success!(ulong).Success, error_d.Failure!(kernels.DomainError).Failure).PlainStorage)+0xb>
   5:	0f 10 07             	movups (%rdi),%xmm0
   8:	0f 11 06             	movups %xmm0,(%rsi)
   b:	c3                   	ret

Disassembly of section .text._D7error_d__T6ResultTmTS7kernels11DomainErrorZQBh11takeStorageMFNaNbNiNeZSQCu__T12PlainStorageTSQDq__T7SuccessTmZQlTSQEl__T7FailureTQEfZQnZQCh:

0000000000000000 <error_d.Result!(ulong, kernels.DomainError).Result.takeStorage()>:
   0:	48 8b 07             	mov    (%rdi),%rax
   3:	48 8b 57 08          	mov    0x8(%rdi),%rdx
   7:	0f 57 c0             	xorps  %xmm0,%xmm0
   a:	0f 11 07             	movups %xmm0,(%rdi)
   d:	c3                   	ret

Disassembly of section .text._D7error_d__T6ResultTS7kernels5BlockTSQq11DomainErrorZQBp11requireLiveMxFNaNbNiNfZv:

0000000000000000 <error_d.Result!(kernels.Block, kernels.DomainError).Result.requireLive() const>:
   0:	c3                   	ret

Disassembly of section .text._D7error_d__T6ResultTS7kernels5BlockTSQq11DomainErrorZQBp6__ctorMFNaNbNcNiNfSQCx__T12PlainStorageTSQDt__T7SuccessTQDpZQnTSQEq__T7FailureTQDwZQnZQCjZSQFr__TQFmTQFiTQEwZQFy:

0000000000000000 <error_d.Result!(kernels.Block, kernels.DomainError).Result.this(error_d.PlainStorage!(error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).PlainStorage)>:
   0:	53                   	push   %rbx
   1:	48 89 fb             	mov    %rdi,%rbx
   4:	48 8d 74 24 10       	lea    0x10(%rsp),%rsi
   9:	ba 08 01 00 00       	mov    $0x108,%edx
   e:	e8 00 00 00 00       	call   13 <error_d.Result!(kernels.Block, kernels.DomainError).Result.this(error_d.PlainStorage!(error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).PlainStorage)+0x13>	f: R_X86_64_PLT32	memcpy-0x4
  13:	48 89 d8             	mov    %rbx,%rax
  16:	5b                   	pop    %rbx
  17:	c3                   	ret

Disassembly of section .text._D4core8lifetime__T4moveTS7error_d__T12PlainStorageTSQBb__T7SuccessTS7kernels5BlockZQzTSQCk__T7FailureTSQBj11DomainErrorZQBbZQDkZQEgFNaNbNiNfNkMKQEqZQEu:

0000000000000000 <_D4core8lifetime__T4moveTS7error_d__T12PlainStorageTSQBb__T7SuccessTS7kernels5BlockZQzTSQCk__T7FailureTSQBj11DomainErrorZQBbZQDkZQEgFNaNbNiNfNkMKQEqZQEu>:
   0:	53                   	push   %rbx
   1:	48 89 fb             	mov    %rdi,%rbx
   4:	ba 08 01 00 00       	mov    $0x108,%edx
   9:	e8 00 00 00 00       	call   e <_D4core8lifetime__T4moveTS7error_d__T12PlainStorageTSQBb__T7SuccessTS7kernels5BlockZQzTSQCk__T7FailureTSQBj11DomainErrorZQBbZQDkZQEgFNaNbNiNfNkMKQEqZQEu+0xe>	a: R_X86_64_PLT32	memcpy-0x4
   e:	48 89 d8             	mov    %rbx,%rax
  11:	5b                   	pop    %rbx
  12:	c3                   	ret

Disassembly of section .text._D7error_d__T6ResultTS7kernels5BlockTSQq11DomainErrorZQBp5stateMxFNaNbNiNfZEQCw11ResultState:

0000000000000000 <error_d.Result!(kernels.Block, kernels.DomainError).Result.state() const>:
   0:	0f b6 87 00 01 00 00 	movzbl 0x100(%rdi),%eax
   7:	c3                   	ret

Disassembly of section .text._D7error_d__T6ResultTS7kernels5BlockTSQq11DomainErrorZQBp8hasValueMxFNaNbNiNfZb:

0000000000000000 <error_d.Result!(kernels.Block, kernels.DomainError).Result.hasValue() const>:
   0:	80 bf 00 01 00 00 01 	cmpb   $0x1,0x100(%rdi)
   7:	0f 94 c0             	sete   %al
   a:	c3                   	ret

Disassembly of section .text._D7error_d__T6ResultTS7kernels5BlockTSQq11DomainErrorZQBp8hasErrorMxFNaNbNiNfZb:

0000000000000000 <error_d.Result!(kernels.Block, kernels.DomainError).Result.hasError() const>:
   0:	80 bf 00 01 00 00 02 	cmpb   $0x2,0x100(%rdi)
   7:	0f 94 c0             	sete   %al
   a:	c3                   	ret

Disassembly of section .text._D7error_d__T6ResultTS7kernels5BlockTSQq11DomainErrorZQBp7isEmptyMxFNaNbNiNfZb:

0000000000000000 <error_d.Result!(kernels.Block, kernels.DomainError).Result.isEmpty() const>:
   0:	80 bf 00 01 00 00 00 	cmpb   $0x0,0x100(%rdi)
   7:	0f 94 c0             	sete   %al
   a:	c3                   	ret

Disassembly of section .text._D7error_d__T6ResultTS7kernels5BlockTSQq11DomainErrorZQBp8opAssignMFNaNbNiNfSQCx__TQCsTQCoTQCcZQDeZv:

0000000000000000 <error_d.Result!(kernels.Block, kernels.DomainError).Result.opAssign(error_d.Result!(kernels.Block, kernels.DomainError).Result)>:
   0:	50                   	push   %rax
   1:	48 8d 74 24 10       	lea    0x10(%rsp),%rsi
   6:	ba 08 01 00 00       	mov    $0x108,%edx
   b:	e8 00 00 00 00       	call   10 <error_d.Result!(kernels.Block, kernels.DomainError).Result.opAssign(error_d.Result!(kernels.Block, kernels.DomainError).Result)+0x10>	c: R_X86_64_PLT32	memcpy-0x4
  10:	58                   	pop    %rax
  11:	c3                   	ret

Disassembly of section .text._D7error_d__T6ResultTS7kernels5BlockTSQq11DomainErrorZQBp7replaceMFNaNbNiNeKSQCx__T12PlainStorageTSQDt__T7SuccessTQDpZQnTSQEq__T7FailureTQDwZQnZQCjZv:

0000000000000000 <error_d.Result!(kernels.Block, kernels.DomainError).Result.replace(ref error_d.PlainStorage!(error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).PlainStorage)>:
   0:	41 56                	push   %r14
   2:	53                   	push   %rbx
   3:	50                   	push   %rax
   4:	48 89 f3             	mov    %rsi,%rbx
   7:	49 89 fe             	mov    %rdi,%r14
   a:	ba 08 01 00 00       	mov    $0x108,%edx
   f:	31 f6                	xor    %esi,%esi
  11:	e8 00 00 00 00       	call   16 <error_d.Result!(kernels.Block, kernels.DomainError).Result.replace(ref error_d.PlainStorage!(error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).PlainStorage)+0x16>	12: R_X86_64_PLT32	memset-0x4
  16:	4c 39 f3             	cmp    %r14,%rbx
  19:	74 17                	je     32 <error_d.Result!(kernels.Block, kernels.DomainError).Result.replace(ref error_d.PlainStorage!(error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).PlainStorage)+0x32>
  1b:	ba 08 01 00 00       	mov    $0x108,%edx
  20:	4c 89 f7             	mov    %r14,%rdi
  23:	48 89 de             	mov    %rbx,%rsi
  26:	48 83 c4 08          	add    $0x8,%rsp
  2a:	5b                   	pop    %rbx
  2b:	41 5e                	pop    %r14
  2d:	e9 00 00 00 00       	jmp    32 <error_d.Result!(kernels.Block, kernels.DomainError).Result.replace(ref error_d.PlainStorage!(error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).PlainStorage)+0x32>	2e: R_X86_64_PLT32	memcpy-0x4
  32:	48 83 c4 08          	add    $0x8,%rsp
  36:	5b                   	pop    %rbx
  37:	41 5e                	pop    %r14
  39:	c3                   	ret

Disassembly of section .text._D4core8lifetime__T4moveTS7error_d__T12PlainStorageTSQBb__T7SuccessTS7kernels5BlockZQzTSQCk__T7FailureTSQBj11DomainErrorZQBbZQDkZQEgFNaNbNiNfKQEnKQErZv:

0000000000000000 <core.lifetime.move!(error_d.PlainStorage!(error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).PlainStorage).move(ref error_d.PlainStorage!(error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).PlainStorage, ref error_d.PlainStorage!(error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).PlainStorage)>:
   0:	48 39 f7             	cmp    %rsi,%rdi
   3:	74 13                	je     18 <core.lifetime.move!(error_d.PlainStorage!(error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).PlainStorage).move(ref error_d.PlainStorage!(error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).PlainStorage, ref error_d.PlainStorage!(error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).PlainStorage)+0x18>
   5:	48 89 f8             	mov    %rdi,%rax
   8:	ba 08 01 00 00       	mov    $0x108,%edx
   d:	48 89 f7             	mov    %rsi,%rdi
  10:	48 89 c6             	mov    %rax,%rsi
  13:	e9 00 00 00 00       	jmp    18 <core.lifetime.move!(error_d.PlainStorage!(error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).PlainStorage).move(ref error_d.PlainStorage!(error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).PlainStorage, ref error_d.PlainStorage!(error_d.Success!(kernels.Block).Success, error_d.Failure!(kernels.DomainError).Failure).PlainStorage)+0x18>	14: R_X86_64_PLT32	memcpy-0x4
  18:	c3                   	ret

Disassembly of section .text._D7error_d__T6ResultTS7kernels5BlockTSQq11DomainErrorZQBp11takeStorageMFNaNbNiNeZSQDc__T12PlainStorageTSQDy__T7SuccessTQDuZQnTSQEv__T7FailureTQEbZQnZQCj:

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

Disassembly of section .text._D7error_d__T6ResultTmTS7kernels11DomainErrorZQBh__T5errorTSQCg__TQCbTmTQBxZQClZQBcMFNaNbNiNfZQCt:

0000000000000000 <error_d.Result!(ulong, kernels.DomainError).Result.error!(error_d.Result!(ulong, kernels.DomainError).Result).error()>:
   0:	80 7f 08 02          	cmpb   $0x2,0x8(%rdi)
   4:	75 04                	jne    a <error_d.Result!(ulong, kernels.DomainError).Result.error!(error_d.Result!(ulong, kernels.DomainError).Result).error()+0xa>
   6:	48 8b 07             	mov    (%rdi),%rax
   9:	c3                   	ret
   a:	50                   	push   %rax
   b:	e8 00 00 00 00       	call   10 <error_d.Result!(ulong, kernels.DomainError).Result.error!(error_d.Result!(ulong, kernels.DomainError).Result).error()+0x10>	c: R_X86_64_PLT32	error_d.badAccess()-0x4

Disassembly of section .text._D7error_d__T6ResultTmTS7kernels11DomainErrorZQBh__T10plainErrorTSQCm__TQChTmTQCdZQCrZQBiMFNaNbNiNeZQCz:

0000000000000000 <error_d.Result!(ulong, kernels.DomainError).Result.plainError!(error_d.Result!(ulong, kernels.DomainError).Result).plainError()>:
   0:	80 7f 08 02          	cmpb   $0x2,0x8(%rdi)
   4:	75 04                	jne    a <error_d.Result!(ulong, kernels.DomainError).Result.plainError!(error_d.Result!(ulong, kernels.DomainError).Result).plainError()+0xa>
   6:	48 8b 07             	mov    (%rdi),%rax
   9:	c3                   	ret
   a:	50                   	push   %rax
   b:	e8 00 00 00 00       	call   10 <error_d.Result!(ulong, kernels.DomainError).Result.plainError!(error_d.Result!(ulong, kernels.DomainError).Result).plainError()+0x10>	c: R_X86_64_PLT32	error_d.badAccess()-0x4

Disassembly of section .text._D4core8lifetime__T8moveImplTS7error_d__T12PlainStorageTSQBb__T7SuccessTmZQlTSQBw__T7FailureTS7kernels11DomainErrorZQBgZQDbZQEbFNaNbNiNfNkMKQEhZQEl:

0000000000000000 <_D4core8lifetime__T8moveImplTS7error_d__T12PlainStorageTSQBb__T7SuccessTmZQlTSQBw__T7FailureTS7kernels11DomainErrorZQBgZQDbZQEbFNaNbNiNfNkMKQEhZQEl>:
   0:	48 8b 07             	mov    (%rdi),%rax
   3:	48 8b 57 08          	mov    0x8(%rdi),%rdx
   7:	c3                   	ret

Disassembly of section .text._D4core8lifetime__T15trustedMoveImplTS7error_d__T12PlainStorageTSQBb__T7SuccessTmZQlTSQBw__T7FailureTS7kernels11DomainErrorZQBgZQDbZQEjFNaNbNiNeNkMKQEhZQEl:

0000000000000000 <_D4core8lifetime__T15trustedMoveImplTS7error_d__T12PlainStorageTSQBb__T7SuccessTmZQlTSQBw__T7FailureTS7kernels11DomainErrorZQBgZQDbZQEjFNaNbNiNeNkMKQEhZQEl>:
   0:	48 8b 07             	mov    (%rdi),%rax
   3:	48 8b 57 08          	mov    0x8(%rdi),%rdx
   7:	c3                   	ret

Disassembly of section .text._D4core8lifetime__T15moveEmplaceImplTS7error_d__T12PlainStorageTSQBb__T7SuccessTmZQlTSQBw__T7FailureTS7kernels11DomainErrorZQBgZQDbZQEjFNaNbNiNfMKQEfNkMKQEmZv:

0000000000000000 <_D4core8lifetime__T15moveEmplaceImplTS7error_d__T12PlainStorageTSQBb__T7SuccessTmZQlTSQBw__T7FailureTS7kernels11DomainErrorZQBgZQDbZQEjFNaNbNiNfMKQEfNkMKQEmZv>:
   0:	0f 10 06             	movups (%rsi),%xmm0
   3:	0f 11 07             	movups %xmm0,(%rdi)
   6:	c3                   	ret

Disassembly of section .text._D4core8lifetime__T8moveImplTS7error_d__T12PlainStorageTSQBb__T7SuccessTmZQlTSQBw__T7FailureTS7kernels11DomainErrorZQBgZQDbZQEbFNaNbNiNfMKQEfNkMKQEmZv:

0000000000000000 <_D4core8lifetime__T8moveImplTS7error_d__T12PlainStorageTSQBb__T7SuccessTmZQlTSQBw__T7FailureTS7kernels11DomainErrorZQBgZQDbZQEbFNaNbNiNfMKQEfNkMKQEmZv>:
   0:	48 39 fe             	cmp    %rdi,%rsi
   3:	74 07                	je     c <_D4core8lifetime__T8moveImplTS7error_d__T12PlainStorageTSQBb__T7SuccessTmZQlTSQBw__T7FailureTS7kernels11DomainErrorZQBgZQDbZQEbFNaNbNiNfMKQEfNkMKQEmZv+0xc>
   5:	0f 10 06             	movups (%rsi),%xmm0
   8:	0f 11 07             	movups %xmm0,(%rdi)
   b:	c3                   	ret
   c:	c3                   	ret

Disassembly of section .text._D4core8lifetime__T8moveImplTS7error_d__T12PlainStorageTSQBb__T7SuccessTS7kernels5BlockZQzTSQCk__T7FailureTSQBj11DomainErrorZQBbZQDkZQEkFNaNbNiNfNkMKQEqZQEu:

0000000000000000 <_D4core8lifetime__T8moveImplTS7error_d__T12PlainStorageTSQBb__T7SuccessTS7kernels5BlockZQzTSQCk__T7FailureTSQBj11DomainErrorZQBbZQDkZQEkFNaNbNiNfNkMKQEqZQEu>:
   0:	53                   	push   %rbx
   1:	48 89 fb             	mov    %rdi,%rbx
   4:	ba 08 01 00 00       	mov    $0x108,%edx
   9:	e8 00 00 00 00       	call   e <_D4core8lifetime__T8moveImplTS7error_d__T12PlainStorageTSQBb__T7SuccessTS7kernels5BlockZQzTSQCk__T7FailureTSQBj11DomainErrorZQBbZQDkZQEkFNaNbNiNfNkMKQEqZQEu+0xe>	a: R_X86_64_PLT32	memcpy-0x4
   e:	48 89 d8             	mov    %rbx,%rax
  11:	5b                   	pop    %rbx
  12:	c3                   	ret

Disassembly of section .text._D4core8lifetime__T15trustedMoveImplTS7error_d__T12PlainStorageTSQBb__T7SuccessTS7kernels5BlockZQzTSQCk__T7FailureTSQBj11DomainErrorZQBbZQDkZQEsFNaNbNiNeNkMKQEqZQEu:

0000000000000000 <_D4core8lifetime__T15trustedMoveImplTS7error_d__T12PlainStorageTSQBb__T7SuccessTS7kernels5BlockZQzTSQCk__T7FailureTSQBj11DomainErrorZQBbZQDkZQEsFNaNbNiNeNkMKQEqZQEu>:
   0:	53                   	push   %rbx
   1:	48 89 fb             	mov    %rdi,%rbx
   4:	ba 08 01 00 00       	mov    $0x108,%edx
   9:	e8 00 00 00 00       	call   e <_D4core8lifetime__T15trustedMoveImplTS7error_d__T12PlainStorageTSQBb__T7SuccessTS7kernels5BlockZQzTSQCk__T7FailureTSQBj11DomainErrorZQBbZQDkZQEsFNaNbNiNeNkMKQEqZQEu+0xe>	a: R_X86_64_PLT32	memcpy-0x4
   e:	48 89 d8             	mov    %rbx,%rax
  11:	5b                   	pop    %rbx
  12:	c3                   	ret

Disassembly of section .text._D4core8lifetime__T15moveEmplaceImplTS7error_d__T12PlainStorageTSQBb__T7SuccessTS7kernels5BlockZQzTSQCk__T7FailureTSQBj11DomainErrorZQBbZQDkZQEsFNaNbNiNfMKQEoNkMKQEvZv:

0000000000000000 <_D4core8lifetime__T15moveEmplaceImplTS7error_d__T12PlainStorageTSQBb__T7SuccessTS7kernels5BlockZQzTSQCk__T7FailureTSQBj11DomainErrorZQBbZQDkZQEsFNaNbNiNfMKQEoNkMKQEvZv>:
   0:	ba 08 01 00 00       	mov    $0x108,%edx
   5:	e9 00 00 00 00       	jmp    a <_D4core8lifetime__T15moveEmplaceImplTS7error_d__T12PlainStorageTSQBb__T7SuccessTS7kernels5BlockZQzTSQCk__T7FailureTSQBj11DomainErrorZQBbZQDkZQEsFNaNbNiNfMKQEoNkMKQEvZv+0xa>	6: R_X86_64_PLT32	memcpy-0x4

Disassembly of section .text._D4core8lifetime__T8moveImplTS7error_d__T12PlainStorageTSQBb__T7SuccessTS7kernels5BlockZQzTSQCk__T7FailureTSQBj11DomainErrorZQBbZQDkZQEkFNaNbNiNfMKQEoNkMKQEvZv:

0000000000000000 <_D4core8lifetime__T8moveImplTS7error_d__T12PlainStorageTSQBb__T7SuccessTS7kernels5BlockZQzTSQCk__T7FailureTSQBj11DomainErrorZQBbZQDkZQEkFNaNbNiNfMKQEoNkMKQEvZv>:
   0:	48 39 fe             	cmp    %rdi,%rsi
   3:	74 0a                	je     f <_D4core8lifetime__T8moveImplTS7error_d__T12PlainStorageTSQBb__T7SuccessTS7kernels5BlockZQzTSQCk__T7FailureTSQBj11DomainErrorZQBbZQDkZQEkFNaNbNiNfMKQEoNkMKQEvZv+0xf>
   5:	ba 08 01 00 00       	mov    $0x108,%edx
   a:	e9 00 00 00 00       	jmp    f <_D4core8lifetime__T8moveImplTS7error_d__T12PlainStorageTSQBb__T7SuccessTS7kernels5BlockZQzTSQCk__T7FailureTSQBj11DomainErrorZQBbZQDkZQEkFNaNbNiNfMKQEoNkMKQEvZv+0xf>	b: R_X86_64_PLT32	memcpy-0x4
   f:	c3                   	ret
