; ModuleID = '/home/alexander/Programmiersprachen/dlang/error-d/benchmarks/kernels.d'
source_filename = "/home/alexander/Programmiersprachen/dlang/error-d/benchmarks/kernels.d"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%0 = type { i32, i32, [8 x i8] }
%"error_d.Result!(ulong, DomainError).Result" = type { %"error_d.PlainStorage!(Success!ulong, Failure!(DomainError)).PlainStorage" }
%"error_d.PlainStorage!(Success!ulong, Failure!(DomainError)).PlainStorage" = type { %"error_d.PlainStorage!(Success!ulong, Failure!(DomainError)).PlainStorage.Data", i64 }
%"error_d.PlainStorage!(Success!ulong, Failure!(DomainError)).PlainStorage.Data" = type { %"error_d.Success!ulong.Success" }
%"error_d.Success!ulong.Success" = type { i64 }
%kernels.Block = type { [32 x i64] }
%"error_d.Result!(Block, DomainError).Result" = type { %"error_d.PlainStorage!(Success!(Block), Failure!(DomainError)).PlainStorage" }
%"error_d.PlainStorage!(Success!(Block), Failure!(DomainError)).PlainStorage" = type { %"error_d.PlainStorage!(Success!(Block), Failure!(DomainError)).PlainStorage.Data", i64 }
%"error_d.PlainStorage!(Success!(Block), Failure!(DomainError)).PlainStorage.Data" = type { %"error_d.Success!(Block).Success" }
%"error_d.Success!(Block).Success" = type { %kernels.Block }

$_D7error_d__T6ResultTmTS7kernels11DomainErrorZQBh__T7failureZQjFNaNbNiNfQBxZSQCx__TQCsTmTQCoZQDc = comdat any

$_D7error_d__T6ResultTmTS7kernels11DomainErrorZQBh12plainFailureFNaNbNiNeQBxZSQCx__TQCsTmTQCoZQDc = comdat any

$_D7error_d__T6ResultTmTS7kernels11DomainErrorZQBh__T7successZQjFNaNbNiNfmZSQCv__TQCqTmTQCmZQDa = comdat any

$_D7error_d__T6ResultTmTS7kernels11DomainErrorZQBh12plainSuccessFNaNbNiNemZSQCv__TQCqTmTQCmZQDa = comdat any

$_D7error_d__T6ResultTS7kernels5BlockTSQq11DomainErrorZQBp__T7failureZQjFNaNbNiNfQBrZSQDf__TQDaTQCwTQCkZQDm = comdat any

$_D7error_d__T6ResultTS7kernels5BlockTSQq11DomainErrorZQBp12plainFailureFNaNbNiNeQBrZSQDf__TQDaTQCwTQCkZQDm = comdat any

$_D7error_d__T6ResultTS7kernels5BlockTSQq11DomainErrorZQBp__T7successZQjFNaNbNiNfQChZSQDf__TQDaTQCwTQCkZQDm = comdat any

$_D7error_d__T6ResultTS7kernels5BlockTSQq11DomainErrorZQBp12plainSuccessFNaNbNiNeQChZSQDf__TQDaTQCwTQCkZQDm = comdat any

$_D7error_d__T6ResultTmTS7kernels11DomainErrorZQBh__T3mapTPFNaNbNiNfmZmTSQCs__TQCnTmTQCjZQCxZQBoMFNaNbNiNfMQBxZQBn = comdat any

$_D7error_d__T6ResultTmTS7kernels11DomainErrorZQBh8hasErrorMxFNaNbNiNfZb = comdat any

$_D7error_d__T6ResultTmTS7kernels11DomainErrorZQBh5stateMxFNaNbNiNfZEQCo11ResultState = comdat any

$_D7error_d__T6ResultTmTS7kernels11DomainErrorZQBh8hasValueMxFNaNbNiNfZb = comdat any

$_D7error_d__T6ResultTmTS7kernels11DomainErrorZQBh__T5valueTSQCg__TQCbTmTQBxZQClZQBcMFNaNbNiNfZm = comdat any

$_D7error_d__T6ResultTmTS7kernels11DomainErrorZQBh11requireLiveMxFNaNbNiNfZv = comdat any

$_D7error_d__T6ResultTmTS7kernels11DomainErrorZQBh__T10plainValueTSQCm__TQChTmTQCdZQCrZQBiMFNaNbNiNeZm = comdat any

$_D7error_d__T6ResultTmTS7kernels11DomainErrorZQBh__T7andThenTDFNaNbNiNfmZSQCu__TQCpTmTQClZQCzTQvZQBtMFNaNbNiNfMQByZQBq = comdat any

$_D7error_d__T6ResultTmTS7kernels11DomainErrorZQBh6__ctorMFNaNbNcNiNfSQCp__T12PlainStorageTSQDl__T7SuccessTmZQlTSQEg__T7FailureTQEaZQnZQChZSQFh__TQFcTmTQEyZQFm = comdat any

$_D4core8lifetime__T4moveTS7error_d__T12PlainStorageTSQBb__T7SuccessTmZQlTSQBw__T7FailureTS7kernels11DomainErrorZQBgZQDbZQDxFNaNbNiNfNkMKQEhZQEl = comdat any

$_D7error_d__T6ResultTmTS7kernels11DomainErrorZQBh7isEmptyMxFNaNbNiNfZb = comdat any

$_D7error_d__T6ResultTmTS7kernels11DomainErrorZQBh8opAssignMFNaNbNiNfSQCp__TQCkTmTQCgZQCuZv = comdat any

$_D7error_d__T6ResultTmTS7kernels11DomainErrorZQBh7replaceMFNaNbNiNeKSQCp__T12PlainStorageTSQDl__T7SuccessTmZQlTSQEg__T7FailureTQEaZQnZQChZv = comdat any

$_D4core8lifetime__T4moveTS7error_d__T12PlainStorageTSQBb__T7SuccessTmZQlTSQBw__T7FailureTS7kernels11DomainErrorZQBgZQDbZQDxFNaNbNiNfKQEeKQEiZv = comdat any

$_D7error_d__T6ResultTmTS7kernels11DomainErrorZQBh11takeStorageMFNaNbNiNeZSQCu__T12PlainStorageTSQDq__T7SuccessTmZQlTSQEl__T7FailureTQEfZQnZQCh = comdat any

$_D7error_d__T6ResultTS7kernels5BlockTSQq11DomainErrorZQBp11requireLiveMxFNaNbNiNfZv = comdat any

$_D7error_d__T6ResultTS7kernels5BlockTSQq11DomainErrorZQBp6__ctorMFNaNbNcNiNfSQCx__T12PlainStorageTSQDt__T7SuccessTQDpZQnTSQEq__T7FailureTQDwZQnZQCjZSQFr__TQFmTQFiTQEwZQFy = comdat any

$_D4core8lifetime__T4moveTS7error_d__T12PlainStorageTSQBb__T7SuccessTS7kernels5BlockZQzTSQCk__T7FailureTSQBj11DomainErrorZQBbZQDkZQEgFNaNbNiNfNkMKQEqZQEu = comdat any

$_D7error_d__T6ResultTS7kernels5BlockTSQq11DomainErrorZQBp5stateMxFNaNbNiNfZEQCw11ResultState = comdat any

$_D7error_d__T6ResultTS7kernels5BlockTSQq11DomainErrorZQBp8hasValueMxFNaNbNiNfZb = comdat any

$_D7error_d__T6ResultTS7kernels5BlockTSQq11DomainErrorZQBp8hasErrorMxFNaNbNiNfZb = comdat any

$_D7error_d__T6ResultTS7kernels5BlockTSQq11DomainErrorZQBp7isEmptyMxFNaNbNiNfZb = comdat any

$_D7error_d__T6ResultTS7kernels5BlockTSQq11DomainErrorZQBp8opAssignMFNaNbNiNfSQCx__TQCsTQCoTQCcZQDeZv = comdat any

$_D7error_d__T6ResultTS7kernels5BlockTSQq11DomainErrorZQBp7replaceMFNaNbNiNeKSQCx__T12PlainStorageTSQDt__T7SuccessTQDpZQnTSQEq__T7FailureTQDwZQnZQCjZv = comdat any

$_D4core8lifetime__T4moveTS7error_d__T12PlainStorageTSQBb__T7SuccessTS7kernels5BlockZQzTSQCk__T7FailureTSQBj11DomainErrorZQBbZQDkZQEgFNaNbNiNfKQEnKQErZv = comdat any

$_D7error_d__T6ResultTS7kernels5BlockTSQq11DomainErrorZQBp11takeStorageMFNaNbNiNeZSQDc__T12PlainStorageTSQDy__T7SuccessTQDuZQnTSQEv__T7FailureTQEbZQnZQCj = comdat any

$_D7error_d__T6ResultTmTS7kernels11DomainErrorZQBh__T5errorTSQCg__TQCbTmTQBxZQClZQBcMFNaNbNiNfZQCt = comdat any

$_D7error_d__T6ResultTmTS7kernels11DomainErrorZQBh__T10plainErrorTSQCm__TQChTmTQCdZQCrZQBiMFNaNbNiNeZQCz = comdat any

$_D4core8lifetime__T8moveImplTS7error_d__T12PlainStorageTSQBb__T7SuccessTmZQlTSQBw__T7FailureTS7kernels11DomainErrorZQBgZQDbZQEbFNaNbNiNfNkMKQEhZQEl = comdat any

$_D4core8lifetime__T15trustedMoveImplTS7error_d__T12PlainStorageTSQBb__T7SuccessTmZQlTSQBw__T7FailureTS7kernels11DomainErrorZQBgZQDbZQEjFNaNbNiNeNkMKQEhZQEl = comdat any

$_D4core8lifetime__T15moveEmplaceImplTS7error_d__T12PlainStorageTSQBb__T7SuccessTmZQlTSQBw__T7FailureTS7kernels11DomainErrorZQBgZQDbZQEjFNaNbNiNfMKQEfNkMKQEmZv = comdat any

$_D4core8lifetime__T8moveImplTS7error_d__T12PlainStorageTSQBb__T7SuccessTmZQlTSQBw__T7FailureTS7kernels11DomainErrorZQBgZQDbZQEbFNaNbNiNfMKQEfNkMKQEmZv = comdat any

$_D4core8lifetime__T8moveImplTS7error_d__T12PlainStorageTSQBb__T7SuccessTS7kernels5BlockZQzTSQCk__T7FailureTSQBj11DomainErrorZQBbZQDkZQEkFNaNbNiNfNkMKQEqZQEu = comdat any

$_D4core8lifetime__T15trustedMoveImplTS7error_d__T12PlainStorageTSQBb__T7SuccessTS7kernels5BlockZQzTSQCk__T7FailureTSQBj11DomainErrorZQBbZQDkZQEsFNaNbNiNeNkMKQEqZQEu = comdat any

$_D4core8lifetime__T15moveEmplaceImplTS7error_d__T12PlainStorageTSQBb__T7SuccessTS7kernels5BlockZQzTSQCk__T7FailureTSQBj11DomainErrorZQBbZQDkZQEsFNaNbNiNfMKQEoNkMKQEvZv = comdat any

$_D4core8lifetime__T8moveImplTS7error_d__T12PlainStorageTSQBb__T7SuccessTS7kernels5BlockZQzTSQCk__T7FailureTSQBj11DomainErrorZQBbZQDkZQEkFNaNbNiNfMKQEoNkMKQEvZv = comdat any

@_D7kernels12__ModuleInfoZ = global %0 { i32 -2147483644, i32 0, [8 x i8] c"kernels\00" } ; [#uses = 1]
@_D7kernels11__moduleRefZ = linkonce_odr hidden global ptr @_D7kernels12__ModuleInfoZ, section "__minfo" ; [#uses = 1]
@llvm.used = appending global [1 x ptr] [ptr @_D7kernels11__moduleRefZ], section "llvm.metadata" ; [#uses = 0]

; [#uses = 0]
; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define i64 @_D7kernels7computeFNaNbNiNfkZm(i32 %x_arg) local_unnamed_addr #0 {
  %1 = zext i32 %x_arg to i64                     ; [#uses = 1]
  %2 = mul i64 %1, -7046029288634856825           ; [#uses = 1]
  %3 = lshr i32 %x_arg, 7                         ; [#uses = 1]
  %4 = zext nneg i32 %3 to i64                    ; [#uses = 1]
  %5 = xor i64 %2, %4                             ; [#uses = 1]
  ret i64 %5
}

; [#uses = 0]
; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn memory(none) uwtable
define %"error_d.Result!(ulong, DomainError).Result" @result_small(i32 %x_arg, i32 %threshold_arg) local_unnamed_addr #1 {
  %1 = and i32 %x_arg, 255                        ; [#uses = 1]
  %2 = icmp ult i32 %1, %threshold_arg            ; [#uses = 1]
  %.structliteral.sroa.2.0.insert.ext = zext i32 %x_arg to i64 ; [#uses = 2]
  br i1 %2, label %if, label %endif

common.ret:                                       ; preds = %endif, %if
  %.structliteral.sroa.0.0.insert.insert.pn = phi i64 [ %.structliteral.sroa.0.0.insert.insert, %if ], [ %6, %endif ] ; [#uses = 1, type = i64]
  %.pn = phi i64 [ 2, %if ], [ 1, %endif ]        ; [#uses = 1, type = i64]
  %.fca.0.0.0.0.insert.i.pn = insertvalue %"error_d.Result!(ulong, DomainError).Result" poison, i64 %.structliteral.sroa.0.0.insert.insert.pn, 0, 0, 0, 0 ; [#uses = 1]
  %common.ret.op = insertvalue %"error_d.Result!(ulong, DomainError).Result" %.fca.0.0.0.0.insert.i.pn, i64 %.pn, 0, 1 ; [#uses = 1]
  ret %"error_d.Result!(ulong, DomainError).Result" %common.ret.op

if:                                               ; preds = %0
  %.structliteral.sroa.2.0.insert.shift = shl nuw i64 %.structliteral.sroa.2.0.insert.ext, 32 ; [#uses = 1]
  %.structliteral.sroa.0.0.insert.insert = or disjoint i64 %.structliteral.sroa.2.0.insert.shift, 1 ; [#uses = 1]
  br label %common.ret

endif:                                            ; preds = %0
  %3 = mul i64 %.structliteral.sroa.2.0.insert.ext, -7046029288634856825 ; [#uses = 1]
  %4 = lshr i32 %x_arg, 7                         ; [#uses = 1]
  %5 = zext nneg i32 %4 to i64                    ; [#uses = 1]
  %6 = xor i64 %3, %5                             ; [#uses = 1]
  br label %common.ret
}

; [#uses = 0]
; Function Attrs: alwaysinline uwtable
define weak_odr %"error_d.Result!(ulong, DomainError).Result" @_D7error_d__T6ResultTmTS7kernels11DomainErrorZQBh__T7failureZQjFNaNbNiNfQBxZSQCx__TQCsTmTQCoZQDc(i64 %error_arg) local_unnamed_addr #2 comdat {
  %.fca.0.0.0.0.insert.i = insertvalue %"error_d.Result!(ulong, DomainError).Result" poison, i64 %error_arg, 0, 0, 0, 0 ; [#uses = 1]
  %.fca.0.1.insert.i = insertvalue %"error_d.Result!(ulong, DomainError).Result" %.fca.0.0.0.0.insert.i, i64 2, 0, 1 ; [#uses = 1]
  ret %"error_d.Result!(ulong, DomainError).Result" %.fca.0.1.insert.i
}

; [#uses = 0]
; Function Attrs: alwaysinline uwtable
define weak_odr %"error_d.Result!(ulong, DomainError).Result" @_D7error_d__T6ResultTmTS7kernels11DomainErrorZQBh12plainFailureFNaNbNiNeQBxZSQCx__TQCsTmTQCoZQDc(i64 %error_arg) local_unnamed_addr #2 comdat {
  %.fca.0.0.0.0.insert = insertvalue %"error_d.Result!(ulong, DomainError).Result" poison, i64 %error_arg, 0, 0, 0, 0 ; [#uses = 1]
  %.fca.0.1.insert = insertvalue %"error_d.Result!(ulong, DomainError).Result" %.fca.0.0.0.0.insert, i64 2, 0, 1 ; [#uses = 1]
  ret %"error_d.Result!(ulong, DomainError).Result" %.fca.0.1.insert
}

; [#uses = 20]
; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

; [#uses = 0]
; Function Attrs: alwaysinline uwtable
define weak_odr %"error_d.Result!(ulong, DomainError).Result" @_D7error_d__T6ResultTmTS7kernels11DomainErrorZQBh__T7successZQjFNaNbNiNfmZSQCv__TQCqTmTQCmZQDa(i64 %value_arg) local_unnamed_addr #2 comdat {
  %.fca.0.0.0.0.insert.i = insertvalue %"error_d.Result!(ulong, DomainError).Result" poison, i64 %value_arg, 0, 0, 0, 0 ; [#uses = 1]
  %.fca.0.1.insert.i = insertvalue %"error_d.Result!(ulong, DomainError).Result" %.fca.0.0.0.0.insert.i, i64 1, 0, 1 ; [#uses = 1]
  ret %"error_d.Result!(ulong, DomainError).Result" %.fca.0.1.insert.i
}

; [#uses = 0]
; Function Attrs: alwaysinline uwtable
define weak_odr %"error_d.Result!(ulong, DomainError).Result" @_D7error_d__T6ResultTmTS7kernels11DomainErrorZQBh12plainSuccessFNaNbNiNemZSQCv__TQCqTmTQCmZQDa(i64 %value_arg) local_unnamed_addr #2 comdat {
  %.fca.0.0.0.0.insert = insertvalue %"error_d.Result!(ulong, DomainError).Result" poison, i64 %value_arg, 0, 0, 0, 0 ; [#uses = 1]
  %.fca.0.1.insert = insertvalue %"error_d.Result!(ulong, DomainError).Result" %.fca.0.0.0.0.insert, i64 1, 0, 1 ; [#uses = 1]
  ret %"error_d.Result!(ulong, DomainError).Result" %.fca.0.1.insert
}

; [#uses = 0]
; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define noundef zeroext i1 @status_out_small(i32 %x_arg, i32 %threshold_arg, ptr nocapture writeonly dereferenceable(8) %value, ptr nocapture writeonly dereferenceable(8) %error) local_unnamed_addr #4 {
  store i64 0, ptr %value, align 8
  store i64 0, ptr %error, align 1
  %1 = and i32 %x_arg, 255                        ; [#uses = 1]
  %2 = icmp uge i32 %1, %threshold_arg            ; [#uses = 2]
  br i1 %2, label %endif, label %if

common.ret:                                       ; preds = %endif, %if
  ret i1 %2

if:                                               ; preds = %0
  store i32 1, ptr %error, align 1
  %.structliteral.sroa.2.0.error.sroa_idx = getelementptr inbounds i8, ptr %error, i64 4 ; [#uses = 1, type = ptr]
  store i32 %x_arg, ptr %.structliteral.sroa.2.0.error.sroa_idx, align 1
  br label %common.ret

endif:                                            ; preds = %0
  %3 = zext i32 %x_arg to i64                     ; [#uses = 1]
  %4 = mul i64 %3, -7046029288634856825           ; [#uses = 1]
  %5 = lshr i32 %x_arg, 7                         ; [#uses = 1]
  %6 = zext nneg i32 %5 to i64                    ; [#uses = 1]
  %7 = xor i64 %4, %6                             ; [#uses = 1]
  store i64 %7, ptr %value, align 8
  br label %common.ret
}

; [#uses = 5]
; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

; [#uses = 0]
; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define noundef zeroext i1 @status_ref_small(i32 %x_arg, i32 %threshold_arg, ptr nocapture writeonly dereferenceable(8) %value, ptr nocapture writeonly dereferenceable(8) %error) local_unnamed_addr #4 {
  %1 = and i32 %x_arg, 255                        ; [#uses = 1]
  %2 = icmp uge i32 %1, %threshold_arg            ; [#uses = 2]
  br i1 %2, label %endif, label %if

common.ret:                                       ; preds = %endif, %if
  ret i1 %2

if:                                               ; preds = %0
  store i32 1, ptr %error, align 1
  %.structliteral.sroa.2.0.error.sroa_idx = getelementptr inbounds i8, ptr %error, i64 4 ; [#uses = 1, type = ptr]
  store i32 %x_arg, ptr %.structliteral.sroa.2.0.error.sroa_idx, align 1
  br label %common.ret

endif:                                            ; preds = %0
  %3 = zext i32 %x_arg to i64                     ; [#uses = 1]
  %4 = mul i64 %3, -7046029288634856825           ; [#uses = 1]
  %5 = lshr i32 %x_arg, 7                         ; [#uses = 1]
  %6 = zext nneg i32 %5 to i64                    ; [#uses = 1]
  %7 = xor i64 %4, %6                             ; [#uses = 1]
  store i64 %7, ptr %value, align 8
  br label %common.ret
}

; [#uses = 3]
; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_D7kernels5blockFNaNbNiNfkZSQBa5Block(ptr noalias nocapture writeonly sret(%kernels.Block) align 8 %.sret_arg, i32 %x_arg) local_unnamed_addr #6 {
forbody:
  %0 = zext i32 %x_arg to i64                     ; [#uses = 1]
  %1 = mul i64 %0, -7046029288634856825           ; [#uses = 1]
  %2 = lshr i32 %x_arg, 7                         ; [#uses = 1]
  %3 = zext nneg i32 %2 to i64                    ; [#uses = 1]
  %4 = xor i64 %1, %3                             ; [#uses = 1]
  store i64 %4, ptr %.sret_arg, align 8
  %5 = getelementptr inbounds i8, ptr %.sret_arg, i64 8 ; [#uses = 1, type = ptr]
  %6 = add i32 %x_arg, 1                          ; [#uses = 2]
  %7 = zext i32 %6 to i64                         ; [#uses = 1]
  %8 = mul i64 %7, -7046029288634856825           ; [#uses = 1]
  %9 = lshr i32 %6, 7                             ; [#uses = 1]
  %10 = zext nneg i32 %9 to i64                   ; [#uses = 1]
  %11 = xor i64 %8, %10                           ; [#uses = 1]
  store i64 %11, ptr %5, align 8
  %12 = getelementptr inbounds i8, ptr %.sret_arg, i64 16 ; [#uses = 1, type = ptr]
  %13 = add i32 %x_arg, 2                         ; [#uses = 2]
  %14 = zext i32 %13 to i64                       ; [#uses = 1]
  %15 = mul i64 %14, -7046029288634856825         ; [#uses = 1]
  %16 = lshr i32 %13, 7                           ; [#uses = 1]
  %17 = zext nneg i32 %16 to i64                  ; [#uses = 1]
  %18 = xor i64 %15, %17                          ; [#uses = 1]
  store i64 %18, ptr %12, align 8
  %19 = getelementptr inbounds i8, ptr %.sret_arg, i64 24 ; [#uses = 1, type = ptr]
  %20 = add i32 %x_arg, 3                         ; [#uses = 2]
  %21 = zext i32 %20 to i64                       ; [#uses = 1]
  %22 = mul i64 %21, -7046029288634856825         ; [#uses = 1]
  %23 = lshr i32 %20, 7                           ; [#uses = 1]
  %24 = zext nneg i32 %23 to i64                  ; [#uses = 1]
  %25 = xor i64 %22, %24                          ; [#uses = 1]
  store i64 %25, ptr %19, align 8
  %26 = getelementptr inbounds i8, ptr %.sret_arg, i64 32 ; [#uses = 1, type = ptr]
  %27 = add i32 %x_arg, 4                         ; [#uses = 2]
  %28 = zext i32 %27 to i64                       ; [#uses = 1]
  %29 = mul i64 %28, -7046029288634856825         ; [#uses = 1]
  %30 = lshr i32 %27, 7                           ; [#uses = 1]
  %31 = zext nneg i32 %30 to i64                  ; [#uses = 1]
  %32 = xor i64 %29, %31                          ; [#uses = 1]
  store i64 %32, ptr %26, align 8
  %33 = getelementptr inbounds i8, ptr %.sret_arg, i64 40 ; [#uses = 1, type = ptr]
  %34 = add i32 %x_arg, 5                         ; [#uses = 2]
  %35 = zext i32 %34 to i64                       ; [#uses = 1]
  %36 = mul i64 %35, -7046029288634856825         ; [#uses = 1]
  %37 = lshr i32 %34, 7                           ; [#uses = 1]
  %38 = zext nneg i32 %37 to i64                  ; [#uses = 1]
  %39 = xor i64 %36, %38                          ; [#uses = 1]
  store i64 %39, ptr %33, align 8
  %40 = getelementptr inbounds i8, ptr %.sret_arg, i64 48 ; [#uses = 1, type = ptr]
  %41 = add i32 %x_arg, 6                         ; [#uses = 2]
  %42 = zext i32 %41 to i64                       ; [#uses = 1]
  %43 = mul i64 %42, -7046029288634856825         ; [#uses = 1]
  %44 = lshr i32 %41, 7                           ; [#uses = 1]
  %45 = zext nneg i32 %44 to i64                  ; [#uses = 1]
  %46 = xor i64 %43, %45                          ; [#uses = 1]
  store i64 %46, ptr %40, align 8
  %47 = getelementptr inbounds i8, ptr %.sret_arg, i64 56 ; [#uses = 1, type = ptr]
  %48 = add i32 %x_arg, 7                         ; [#uses = 2]
  %49 = zext i32 %48 to i64                       ; [#uses = 1]
  %50 = mul i64 %49, -7046029288634856825         ; [#uses = 1]
  %51 = lshr i32 %48, 7                           ; [#uses = 1]
  %52 = zext nneg i32 %51 to i64                  ; [#uses = 1]
  %53 = xor i64 %50, %52                          ; [#uses = 1]
  store i64 %53, ptr %47, align 8
  %54 = getelementptr inbounds i8, ptr %.sret_arg, i64 64 ; [#uses = 1, type = ptr]
  %55 = add i32 %x_arg, 8                         ; [#uses = 2]
  %56 = zext i32 %55 to i64                       ; [#uses = 1]
  %57 = mul i64 %56, -7046029288634856825         ; [#uses = 1]
  %58 = lshr i32 %55, 7                           ; [#uses = 1]
  %59 = zext nneg i32 %58 to i64                  ; [#uses = 1]
  %60 = xor i64 %57, %59                          ; [#uses = 1]
  store i64 %60, ptr %54, align 8
  %61 = getelementptr inbounds i8, ptr %.sret_arg, i64 72 ; [#uses = 1, type = ptr]
  %62 = add i32 %x_arg, 9                         ; [#uses = 2]
  %63 = zext i32 %62 to i64                       ; [#uses = 1]
  %64 = mul i64 %63, -7046029288634856825         ; [#uses = 1]
  %65 = lshr i32 %62, 7                           ; [#uses = 1]
  %66 = zext nneg i32 %65 to i64                  ; [#uses = 1]
  %67 = xor i64 %64, %66                          ; [#uses = 1]
  store i64 %67, ptr %61, align 8
  %68 = getelementptr inbounds i8, ptr %.sret_arg, i64 80 ; [#uses = 1, type = ptr]
  %69 = add i32 %x_arg, 10                        ; [#uses = 2]
  %70 = zext i32 %69 to i64                       ; [#uses = 1]
  %71 = mul i64 %70, -7046029288634856825         ; [#uses = 1]
  %72 = lshr i32 %69, 7                           ; [#uses = 1]
  %73 = zext nneg i32 %72 to i64                  ; [#uses = 1]
  %74 = xor i64 %71, %73                          ; [#uses = 1]
  store i64 %74, ptr %68, align 8
  %75 = getelementptr inbounds i8, ptr %.sret_arg, i64 88 ; [#uses = 1, type = ptr]
  %76 = add i32 %x_arg, 11                        ; [#uses = 2]
  %77 = zext i32 %76 to i64                       ; [#uses = 1]
  %78 = mul i64 %77, -7046029288634856825         ; [#uses = 1]
  %79 = lshr i32 %76, 7                           ; [#uses = 1]
  %80 = zext nneg i32 %79 to i64                  ; [#uses = 1]
  %81 = xor i64 %78, %80                          ; [#uses = 1]
  store i64 %81, ptr %75, align 8
  %82 = getelementptr inbounds i8, ptr %.sret_arg, i64 96 ; [#uses = 1, type = ptr]
  %83 = add i32 %x_arg, 12                        ; [#uses = 2]
  %84 = zext i32 %83 to i64                       ; [#uses = 1]
  %85 = mul i64 %84, -7046029288634856825         ; [#uses = 1]
  %86 = lshr i32 %83, 7                           ; [#uses = 1]
  %87 = zext nneg i32 %86 to i64                  ; [#uses = 1]
  %88 = xor i64 %85, %87                          ; [#uses = 1]
  store i64 %88, ptr %82, align 8
  %89 = getelementptr inbounds i8, ptr %.sret_arg, i64 104 ; [#uses = 1, type = ptr]
  %90 = add i32 %x_arg, 13                        ; [#uses = 2]
  %91 = zext i32 %90 to i64                       ; [#uses = 1]
  %92 = mul i64 %91, -7046029288634856825         ; [#uses = 1]
  %93 = lshr i32 %90, 7                           ; [#uses = 1]
  %94 = zext nneg i32 %93 to i64                  ; [#uses = 1]
  %95 = xor i64 %92, %94                          ; [#uses = 1]
  store i64 %95, ptr %89, align 8
  %96 = getelementptr inbounds i8, ptr %.sret_arg, i64 112 ; [#uses = 1, type = ptr]
  %97 = add i32 %x_arg, 14                        ; [#uses = 2]
  %98 = zext i32 %97 to i64                       ; [#uses = 1]
  %99 = mul i64 %98, -7046029288634856825         ; [#uses = 1]
  %100 = lshr i32 %97, 7                          ; [#uses = 1]
  %101 = zext nneg i32 %100 to i64                ; [#uses = 1]
  %102 = xor i64 %99, %101                        ; [#uses = 1]
  store i64 %102, ptr %96, align 8
  %103 = getelementptr inbounds i8, ptr %.sret_arg, i64 120 ; [#uses = 1, type = ptr]
  %104 = add i32 %x_arg, 15                       ; [#uses = 2]
  %105 = zext i32 %104 to i64                     ; [#uses = 1]
  %106 = mul i64 %105, -7046029288634856825       ; [#uses = 1]
  %107 = lshr i32 %104, 7                         ; [#uses = 1]
  %108 = zext nneg i32 %107 to i64                ; [#uses = 1]
  %109 = xor i64 %106, %108                       ; [#uses = 1]
  store i64 %109, ptr %103, align 8
  %110 = getelementptr inbounds i8, ptr %.sret_arg, i64 128 ; [#uses = 1, type = ptr]
  %111 = add i32 %x_arg, 16                       ; [#uses = 2]
  %112 = zext i32 %111 to i64                     ; [#uses = 1]
  %113 = mul i64 %112, -7046029288634856825       ; [#uses = 1]
  %114 = lshr i32 %111, 7                         ; [#uses = 1]
  %115 = zext nneg i32 %114 to i64                ; [#uses = 1]
  %116 = xor i64 %113, %115                       ; [#uses = 1]
  store i64 %116, ptr %110, align 8
  %117 = getelementptr inbounds i8, ptr %.sret_arg, i64 136 ; [#uses = 1, type = ptr]
  %118 = add i32 %x_arg, 17                       ; [#uses = 2]
  %119 = zext i32 %118 to i64                     ; [#uses = 1]
  %120 = mul i64 %119, -7046029288634856825       ; [#uses = 1]
  %121 = lshr i32 %118, 7                         ; [#uses = 1]
  %122 = zext nneg i32 %121 to i64                ; [#uses = 1]
  %123 = xor i64 %120, %122                       ; [#uses = 1]
  store i64 %123, ptr %117, align 8
  %124 = getelementptr inbounds i8, ptr %.sret_arg, i64 144 ; [#uses = 1, type = ptr]
  %125 = add i32 %x_arg, 18                       ; [#uses = 2]
  %126 = zext i32 %125 to i64                     ; [#uses = 1]
  %127 = mul i64 %126, -7046029288634856825       ; [#uses = 1]
  %128 = lshr i32 %125, 7                         ; [#uses = 1]
  %129 = zext nneg i32 %128 to i64                ; [#uses = 1]
  %130 = xor i64 %127, %129                       ; [#uses = 1]
  store i64 %130, ptr %124, align 8
  %131 = getelementptr inbounds i8, ptr %.sret_arg, i64 152 ; [#uses = 1, type = ptr]
  %132 = add i32 %x_arg, 19                       ; [#uses = 2]
  %133 = zext i32 %132 to i64                     ; [#uses = 1]
  %134 = mul i64 %133, -7046029288634856825       ; [#uses = 1]
  %135 = lshr i32 %132, 7                         ; [#uses = 1]
  %136 = zext nneg i32 %135 to i64                ; [#uses = 1]
  %137 = xor i64 %134, %136                       ; [#uses = 1]
  store i64 %137, ptr %131, align 8
  %138 = getelementptr inbounds i8, ptr %.sret_arg, i64 160 ; [#uses = 1, type = ptr]
  %139 = add i32 %x_arg, 20                       ; [#uses = 2]
  %140 = zext i32 %139 to i64                     ; [#uses = 1]
  %141 = mul i64 %140, -7046029288634856825       ; [#uses = 1]
  %142 = lshr i32 %139, 7                         ; [#uses = 1]
  %143 = zext nneg i32 %142 to i64                ; [#uses = 1]
  %144 = xor i64 %141, %143                       ; [#uses = 1]
  store i64 %144, ptr %138, align 8
  %145 = getelementptr inbounds i8, ptr %.sret_arg, i64 168 ; [#uses = 1, type = ptr]
  %146 = add i32 %x_arg, 21                       ; [#uses = 2]
  %147 = zext i32 %146 to i64                     ; [#uses = 1]
  %148 = mul i64 %147, -7046029288634856825       ; [#uses = 1]
  %149 = lshr i32 %146, 7                         ; [#uses = 1]
  %150 = zext nneg i32 %149 to i64                ; [#uses = 1]
  %151 = xor i64 %148, %150                       ; [#uses = 1]
  store i64 %151, ptr %145, align 8
  %152 = getelementptr inbounds i8, ptr %.sret_arg, i64 176 ; [#uses = 1, type = ptr]
  %153 = add i32 %x_arg, 22                       ; [#uses = 2]
  %154 = zext i32 %153 to i64                     ; [#uses = 1]
  %155 = mul i64 %154, -7046029288634856825       ; [#uses = 1]
  %156 = lshr i32 %153, 7                         ; [#uses = 1]
  %157 = zext nneg i32 %156 to i64                ; [#uses = 1]
  %158 = xor i64 %155, %157                       ; [#uses = 1]
  store i64 %158, ptr %152, align 8
  %159 = getelementptr inbounds i8, ptr %.sret_arg, i64 184 ; [#uses = 1, type = ptr]
  %160 = add i32 %x_arg, 23                       ; [#uses = 2]
  %161 = zext i32 %160 to i64                     ; [#uses = 1]
  %162 = mul i64 %161, -7046029288634856825       ; [#uses = 1]
  %163 = lshr i32 %160, 7                         ; [#uses = 1]
  %164 = zext nneg i32 %163 to i64                ; [#uses = 1]
  %165 = xor i64 %162, %164                       ; [#uses = 1]
  store i64 %165, ptr %159, align 8
  %166 = getelementptr inbounds i8, ptr %.sret_arg, i64 192 ; [#uses = 1, type = ptr]
  %167 = add i32 %x_arg, 24                       ; [#uses = 2]
  %168 = zext i32 %167 to i64                     ; [#uses = 1]
  %169 = mul i64 %168, -7046029288634856825       ; [#uses = 1]
  %170 = lshr i32 %167, 7                         ; [#uses = 1]
  %171 = zext nneg i32 %170 to i64                ; [#uses = 1]
  %172 = xor i64 %169, %171                       ; [#uses = 1]
  store i64 %172, ptr %166, align 8
  %173 = getelementptr inbounds i8, ptr %.sret_arg, i64 200 ; [#uses = 1, type = ptr]
  %174 = add i32 %x_arg, 25                       ; [#uses = 2]
  %175 = zext i32 %174 to i64                     ; [#uses = 1]
  %176 = mul i64 %175, -7046029288634856825       ; [#uses = 1]
  %177 = lshr i32 %174, 7                         ; [#uses = 1]
  %178 = zext nneg i32 %177 to i64                ; [#uses = 1]
  %179 = xor i64 %176, %178                       ; [#uses = 1]
  store i64 %179, ptr %173, align 8
  %180 = getelementptr inbounds i8, ptr %.sret_arg, i64 208 ; [#uses = 1, type = ptr]
  %181 = add i32 %x_arg, 26                       ; [#uses = 2]
  %182 = zext i32 %181 to i64                     ; [#uses = 1]
  %183 = mul i64 %182, -7046029288634856825       ; [#uses = 1]
  %184 = lshr i32 %181, 7                         ; [#uses = 1]
  %185 = zext nneg i32 %184 to i64                ; [#uses = 1]
  %186 = xor i64 %183, %185                       ; [#uses = 1]
  store i64 %186, ptr %180, align 8
  %187 = getelementptr inbounds i8, ptr %.sret_arg, i64 216 ; [#uses = 1, type = ptr]
  %188 = add i32 %x_arg, 27                       ; [#uses = 2]
  %189 = zext i32 %188 to i64                     ; [#uses = 1]
  %190 = mul i64 %189, -7046029288634856825       ; [#uses = 1]
  %191 = lshr i32 %188, 7                         ; [#uses = 1]
  %192 = zext nneg i32 %191 to i64                ; [#uses = 1]
  %193 = xor i64 %190, %192                       ; [#uses = 1]
  store i64 %193, ptr %187, align 8
  %194 = getelementptr inbounds i8, ptr %.sret_arg, i64 224 ; [#uses = 1, type = ptr]
  %195 = add i32 %x_arg, 28                       ; [#uses = 2]
  %196 = zext i32 %195 to i64                     ; [#uses = 1]
  %197 = mul i64 %196, -7046029288634856825       ; [#uses = 1]
  %198 = lshr i32 %195, 7                         ; [#uses = 1]
  %199 = zext nneg i32 %198 to i64                ; [#uses = 1]
  %200 = xor i64 %197, %199                       ; [#uses = 1]
  store i64 %200, ptr %194, align 8
  %201 = getelementptr inbounds i8, ptr %.sret_arg, i64 232 ; [#uses = 1, type = ptr]
  %202 = add i32 %x_arg, 29                       ; [#uses = 2]
  %203 = zext i32 %202 to i64                     ; [#uses = 1]
  %204 = mul i64 %203, -7046029288634856825       ; [#uses = 1]
  %205 = lshr i32 %202, 7                         ; [#uses = 1]
  %206 = zext nneg i32 %205 to i64                ; [#uses = 1]
  %207 = xor i64 %204, %206                       ; [#uses = 1]
  store i64 %207, ptr %201, align 8
  %208 = getelementptr inbounds i8, ptr %.sret_arg, i64 240 ; [#uses = 1, type = ptr]
  %209 = add i32 %x_arg, 30                       ; [#uses = 2]
  %210 = zext i32 %209 to i64                     ; [#uses = 1]
  %211 = mul i64 %210, -7046029288634856825       ; [#uses = 1]
  %212 = lshr i32 %209, 7                         ; [#uses = 1]
  %213 = zext nneg i32 %212 to i64                ; [#uses = 1]
  %214 = xor i64 %211, %213                       ; [#uses = 1]
  store i64 %214, ptr %208, align 8
  %215 = getelementptr inbounds i8, ptr %.sret_arg, i64 248 ; [#uses = 1, type = ptr]
  %216 = add i32 %x_arg, 31                       ; [#uses = 2]
  %217 = zext i32 %216 to i64                     ; [#uses = 1]
  %218 = mul i64 %217, -7046029288634856825       ; [#uses = 1]
  %219 = lshr i32 %216, 7                         ; [#uses = 1]
  %220 = zext nneg i32 %219 to i64                ; [#uses = 1]
  %221 = xor i64 %218, %220                       ; [#uses = 1]
  store i64 %221, ptr %215, align 8
  ret void
}

; [#uses = 0]
; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @result_large(ptr noalias nocapture writeonly sret(%"error_d.Result!(Block, DomainError).Result") align 8 %.sret_arg, i32 %x_arg, i32 %threshold_arg) local_unnamed_addr #7 {
  %.sret_tmp45.sroa.0 = alloca [32 x i64], align 8 ; [#uses = 4, size/byte = 256]
  %1 = and i32 %x_arg, 255                        ; [#uses = 1]
  %2 = icmp ult i32 %1, %threshold_arg            ; [#uses = 1]
  br i1 %2, label %if, label %endif

common.ret:                                       ; preds = %endif, %if
  %.sink = phi i64 [ 2, %if ], [ 1, %endif ]      ; [#uses = 1, type = i64]
  %3 = getelementptr inbounds i8, ptr %.sret_arg, i64 256 ; [#uses = 1, type = ptr]
  store i64 %.sink, ptr %3, align 8
  ret void

if:                                               ; preds = %0
  %.structliteral.sroa.2.0.insert.ext = zext i32 %x_arg to i64 ; [#uses = 1]
  %.structliteral.sroa.2.0.insert.shift = shl nuw i64 %.structliteral.sroa.2.0.insert.ext, 32 ; [#uses = 1]
  %.structliteral.sroa.0.0.insert.insert = or disjoint i64 %.structliteral.sroa.2.0.insert.shift, 1 ; [#uses = 1]
  store i64 %.structliteral.sroa.0.0.insert.insert, ptr %.sret_arg, align 8, !alias.scope !1
  br label %common.ret

endif:                                            ; preds = %0
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %.sret_tmp45.sroa.0)
  call void @_D7kernels5blockFNaNbNiNfkZSQBa5Block(ptr noalias nonnull sret(%kernels.Block) align 8 %.sret_tmp45.sroa.0, i32 %x_arg) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %.sret_arg, ptr noundef nonnull align 8 dereferenceable(256) %.sret_tmp45.sroa.0, i64 256, i1 false)
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %.sret_tmp45.sroa.0)
  br label %common.ret
}

; [#uses = 0]
; Function Attrs: alwaysinline uwtable
define weak_odr void @_D7error_d__T6ResultTS7kernels5BlockTSQq11DomainErrorZQBp__T7failureZQjFNaNbNiNfQBrZSQDf__TQDaTQCwTQCkZQDm(ptr noalias sret(%"error_d.Result!(Block, DomainError).Result") align 8 %.sret_arg, i64 %error_arg) local_unnamed_addr #2 comdat {
  store i64 %error_arg, ptr %.sret_arg, align 8, !alias.scope !4
  %1 = getelementptr inbounds i8, ptr %.sret_arg, i64 256 ; [#uses = 1, type = ptr]
  store i64 2, ptr %1, align 8, !alias.scope !4
  ret void
}

; [#uses = 0]
; Function Attrs: alwaysinline uwtable
define weak_odr void @_D7error_d__T6ResultTS7kernels5BlockTSQq11DomainErrorZQBp12plainFailureFNaNbNiNeQBrZSQDf__TQDaTQCwTQCkZQDm(ptr noalias sret(%"error_d.Result!(Block, DomainError).Result") align 8 %.sret_arg, i64 %error_arg) local_unnamed_addr #2 comdat {
  store i64 %error_arg, ptr %.sret_arg, align 8
  %1 = getelementptr inbounds i8, ptr %.sret_arg, i64 256 ; [#uses = 1, type = ptr]
  store i64 2, ptr %1, align 8
  ret void
}

; [#uses = 0]
; Function Attrs: alwaysinline uwtable
define weak_odr void @_D7error_d__T6ResultTS7kernels5BlockTSQq11DomainErrorZQBp__T7successZQjFNaNbNiNfQChZSQDf__TQDaTQCwTQCkZQDm(ptr noalias sret(%"error_d.Result!(Block, DomainError).Result") align 8 %.sret_arg, ptr byval(%kernels.Block) align 8 %value) local_unnamed_addr #2 comdat {
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %.sret_arg, ptr noundef nonnull align 8 dereferenceable(256) %value, i64 256, i1 false)
  %1 = getelementptr inbounds i8, ptr %.sret_arg, i64 256 ; [#uses = 1, type = ptr]
  store i64 1, ptr %1, align 8, !alias.scope !7
  ret void
}

; [#uses = 0]
; Function Attrs: alwaysinline uwtable
define weak_odr void @_D7error_d__T6ResultTS7kernels5BlockTSQq11DomainErrorZQBp12plainSuccessFNaNbNiNeQChZSQDf__TQDaTQCwTQCkZQDm(ptr noalias sret(%"error_d.Result!(Block, DomainError).Result") align 8 %.sret_arg, ptr byval(%kernels.Block) align 8 %value) local_unnamed_addr #2 comdat {
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %.sret_arg, ptr noundef nonnull align 8 dereferenceable(256) %value, i64 256, i1 false)
  %1 = getelementptr inbounds i8, ptr %.sret_arg, i64 256 ; [#uses = 1, type = ptr]
  store i64 1, ptr %1, align 8
  ret void
}

; [#uses = 0]
; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define noundef zeroext i1 @status_out_large(i32 %x_arg, i32 %threshold_arg, ptr nocapture writeonly dereferenceable(256) %value, ptr nocapture writeonly dereferenceable(8) %error) local_unnamed_addr #7 {
  %.sret_tmp = alloca %kernels.Block, align 8     ; [#uses = 2, size/byte = 256]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(256) %value, i8 0, i64 256, i1 false)
  store i64 0, ptr %error, align 1
  %1 = and i32 %x_arg, 255                        ; [#uses = 1]
  %2 = icmp uge i32 %1, %threshold_arg            ; [#uses = 2]
  br i1 %2, label %endif, label %if

common.ret:                                       ; preds = %endif, %if
  ret i1 %2

if:                                               ; preds = %0
  store i32 1, ptr %error, align 1
  %.structliteral.sroa.2.0.error.sroa_idx = getelementptr inbounds i8, ptr %error, i64 4 ; [#uses = 1, type = ptr]
  store i32 %x_arg, ptr %.structliteral.sroa.2.0.error.sroa_idx, align 1
  br label %common.ret

endif:                                            ; preds = %0
  call void @_D7kernels5blockFNaNbNiNfkZSQBa5Block(ptr noalias nonnull sret(%kernels.Block) align 8 %.sret_tmp, i32 %x_arg) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(256) %value, ptr noundef nonnull align 8 dereferenceable(256) %.sret_tmp, i64 256, i1 false)
  br label %common.ret
}

; [#uses = 0]
; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define noundef zeroext i1 @status_ref_large(i32 %x_arg, i32 %threshold_arg, ptr nocapture writeonly dereferenceable(256) %value, ptr nocapture writeonly dereferenceable(8) %error) local_unnamed_addr #7 {
  %.sret_tmp = alloca %kernels.Block, align 8     ; [#uses = 2, size/byte = 256]
  %1 = and i32 %x_arg, 255                        ; [#uses = 1]
  %2 = icmp uge i32 %1, %threshold_arg            ; [#uses = 2]
  br i1 %2, label %endif, label %if

common.ret:                                       ; preds = %endif, %if
  ret i1 %2

if:                                               ; preds = %0
  store i32 1, ptr %error, align 1
  %.structliteral.sroa.2.0.error.sroa_idx = getelementptr inbounds i8, ptr %error, i64 4 ; [#uses = 1, type = ptr]
  store i32 %x_arg, ptr %.structliteral.sroa.2.0.error.sroa_idx, align 1
  br label %common.ret

endif:                                            ; preds = %0
  call void @_D7kernels5blockFNaNbNiNfkZSQBa5Block(ptr noalias nonnull sret(%kernels.Block) align 8 %.sret_tmp, i32 %x_arg) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(256) %value, ptr noundef nonnull align 8 dereferenceable(256) %.sret_tmp, i64 256, i1 false)
  br label %common.ret
}

; [#uses = 0]
; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define %"error_d.Result!(ulong, DomainError).Result" @_D7kernels11localResultFNaNbNiNfkkZS7error_d__T6ResultTmTSQCe11DomainErrorZQBc(i32 %x_arg, i32 %threshold_arg) local_unnamed_addr #8 {
  %1 = and i32 %x_arg, 255                        ; [#uses = 1]
  %2 = icmp ult i32 %1, %threshold_arg            ; [#uses = 1]
  %.structliteral.sroa.2.0.insert.ext = zext i32 %x_arg to i64 ; [#uses = 2]
  br i1 %2, label %if, label %endif

common.ret:                                       ; preds = %endif, %if
  %.structliteral.sroa.0.0.insert.insert.pn = phi i64 [ %.structliteral.sroa.0.0.insert.insert, %if ], [ %6, %endif ] ; [#uses = 1, type = i64]
  %.pn = phi i64 [ 2, %if ], [ 1, %endif ]        ; [#uses = 1, type = i64]
  %.fca.0.0.0.0.insert.i.pn = insertvalue %"error_d.Result!(ulong, DomainError).Result" poison, i64 %.structliteral.sroa.0.0.insert.insert.pn, 0, 0, 0, 0 ; [#uses = 1]
  %common.ret.op = insertvalue %"error_d.Result!(ulong, DomainError).Result" %.fca.0.0.0.0.insert.i.pn, i64 %.pn, 0, 1 ; [#uses = 1]
  ret %"error_d.Result!(ulong, DomainError).Result" %common.ret.op

if:                                               ; preds = %0
  %.structliteral.sroa.2.0.insert.shift = shl nuw i64 %.structliteral.sroa.2.0.insert.ext, 32 ; [#uses = 1]
  %.structliteral.sroa.0.0.insert.insert = or disjoint i64 %.structliteral.sroa.2.0.insert.shift, 1 ; [#uses = 1]
  br label %common.ret

endif:                                            ; preds = %0
  %3 = mul i64 %.structliteral.sroa.2.0.insert.ext, -7046029288634856825 ; [#uses = 1]
  %4 = lshr i32 %x_arg, 7                         ; [#uses = 1]
  %5 = zext nneg i32 %4 to i64                    ; [#uses = 1]
  %6 = xor i64 %3, %5                             ; [#uses = 1]
  br label %common.ret
}

; [#uses = 0]
; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn memory(none) uwtable
define %"error_d.Result!(ulong, DomainError).Result" @pipeline_result(i32 %x_arg, i32 %threshold_arg) local_unnamed_addr #1 {
  %1 = and i32 %x_arg, 255                        ; [#uses = 1]
  %.not = icmp ult i32 %1, %threshold_arg         ; [#uses = 1]
  %.structliteral.sroa.2.0.insert.ext.i = zext i32 %x_arg to i64 ; [#uses = 2]
  br i1 %.not, label %_D7error_d__T6ResultTmTS7kernels11DomainErrorZQBh__T3mapTPFNaNbNiNfmZmTSQCs__TQCnTmTQCjZQCxZQBoMFNaNbNiNfMQBxZQBn.exit, label %_D7error_d__T6ResultTmTS7kernels11DomainErrorZQBh__T10plainValueTSQCm__TQChTmTQCdZQCrZQBiMFNaNbNiNeZm.exit.i

_D7error_d__T6ResultTmTS7kernels11DomainErrorZQBh__T3mapTPFNaNbNiNfmZmTSQCs__TQCnTmTQCjZQCxZQBoMFNaNbNiNfMQBxZQBn.exit: ; preds = %0
  %.structliteral.sroa.2.0.insert.shift.i = shl nuw i64 %.structliteral.sroa.2.0.insert.ext.i, 32 ; [#uses = 1]
  %.structliteral.sroa.0.0.insert.insert.i = or disjoint i64 %.structliteral.sroa.2.0.insert.shift.i, 1 ; [#uses = 1]
  br label %_D7error_d__T6ResultTmTS7kernels11DomainErrorZQBh__T7andThenTDFNaNbNiNfmZSQCu__TQCpTmTQClZQCzTQvZQBtMFNaNbNiNfMQByZQBq.exit

_D7error_d__T6ResultTmTS7kernels11DomainErrorZQBh__T10plainValueTSQCm__TQChTmTQCdZQCrZQBiMFNaNbNiNeZm.exit.i: ; preds = %0
  %2 = mul i64 %.structliteral.sroa.2.0.insert.ext.i, -7046029288634856825 ; [#uses = 1]
  %3 = lshr i32 %x_arg, 7                         ; [#uses = 1]
  %4 = zext nneg i32 %3 to i64                    ; [#uses = 1]
  %5 = xor i64 %2, %4                             ; [#uses = 2]
  %6 = xor i64 %5, 1311768467463790320            ; [#uses = 1]
  %7 = and i64 %5, 15                             ; [#uses = 1]
  %8 = icmp eq i64 %7, 0                          ; [#uses = 2]
  %.structliteral.sroa.2.0.insert.ext.i26 = zext i32 %x_arg to i64 ; [#uses = 1]
  %.structliteral.sroa.2.0.insert.shift.i27 = shl nuw i64 %.structliteral.sroa.2.0.insert.ext.i26, 32 ; [#uses = 1]
  %.structliteral.sroa.0.0.insert.insert.i28 = or disjoint i64 %.structliteral.sroa.2.0.insert.shift.i27, 2 ; [#uses = 1]
  %9 = mul i64 %6, 3                              ; [#uses = 1]
  %.structliteral.sroa.0.0.insert.insert.pn.i = select i1 %8, i64 %.structliteral.sroa.0.0.insert.insert.i28, i64 %9 ; [#uses = 1]
  %.pn16.i = select i1 %8, i64 2, i64 1           ; [#uses = 1]
  br label %_D7error_d__T6ResultTmTS7kernels11DomainErrorZQBh__T7andThenTDFNaNbNiNfmZSQCu__TQCpTmTQClZQCzTQvZQBtMFNaNbNiNfMQByZQBq.exit

_D7error_d__T6ResultTmTS7kernels11DomainErrorZQBh__T7andThenTDFNaNbNiNfmZSQCu__TQCpTmTQClZQCzTQvZQBtMFNaNbNiNfMQByZQBq.exit: ; preds = %_D7error_d__T6ResultTmTS7kernels11DomainErrorZQBh__T3mapTPFNaNbNiNfmZmTSQCs__TQCnTmTQCjZQCxZQBoMFNaNbNiNfMQBxZQBn.exit, %_D7error_d__T6ResultTmTS7kernels11DomainErrorZQBh__T10plainValueTSQCm__TQChTmTQCdZQCrZQBiMFNaNbNiNeZm.exit.i
  %condtmp.0.i17.sroa.phi.sroa.speculated = phi i64 [ 2, %_D7error_d__T6ResultTmTS7kernels11DomainErrorZQBh__T3mapTPFNaNbNiNfmZmTSQCs__TQCnTmTQCjZQCxZQBoMFNaNbNiNfMQBxZQBn.exit ], [ %.pn16.i, %_D7error_d__T6ResultTmTS7kernels11DomainErrorZQBh__T10plainValueTSQCm__TQChTmTQCdZQCrZQBiMFNaNbNiNeZm.exit.i ] ; [#uses = 1, type = i64]
  %condtmp.0.i17.sroa.speculated = phi i64 [ %.structliteral.sroa.0.0.insert.insert.i, %_D7error_d__T6ResultTmTS7kernels11DomainErrorZQBh__T3mapTPFNaNbNiNfmZmTSQCs__TQCnTmTQCjZQCxZQBoMFNaNbNiNfMQBxZQBn.exit ], [ %.structliteral.sroa.0.0.insert.insert.pn.i, %_D7error_d__T6ResultTmTS7kernels11DomainErrorZQBh__T10plainValueTSQCm__TQChTmTQCdZQCrZQBiMFNaNbNiNeZm.exit.i ] ; [#uses = 1, type = i64]
  %.fca.0.0.0.0.insert.i19 = insertvalue %"error_d.Result!(ulong, DomainError).Result" poison, i64 %condtmp.0.i17.sroa.speculated, 0, 0, 0, 0 ; [#uses = 1]
  %.fca.0.1.insert.i22 = insertvalue %"error_d.Result!(ulong, DomainError).Result" %.fca.0.0.0.0.insert.i19, i64 %condtmp.0.i17.sroa.phi.sroa.speculated, 0, 1 ; [#uses = 1]
  ret %"error_d.Result!(ulong, DomainError).Result" %.fca.0.1.insert.i22
}

; [#uses = 0]
; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define i64 @_D7kernels15pipeline_resultUNaNbNiNfkkZ9transformFNaNbNiNfmZm(i64 %value_arg) local_unnamed_addr #8 {
  %1 = xor i64 %value_arg, 1311768467463790320    ; [#uses = 1]
  ret i64 %1
}

; [#uses = 0]
; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define %"error_d.Result!(ulong, DomainError).Result" @_D7kernels15pipeline_resultUNaNbNiNfkkZ4nextMFNaNbNiNfmZS7error_d__T6ResultTmTSQCz11DomainErrorZQBc(ptr nocapture nonnull readonly %.nest_arg, i64 %value_arg) local_unnamed_addr #9 {
  %1 = and i64 %value_arg, 15                     ; [#uses = 1]
  %2 = icmp eq i64 %1, 0                          ; [#uses = 1]
  br i1 %2, label %condtrue, label %condfalse

condtrue:                                         ; preds = %0
  %3 = load i32, ptr %.nest_arg, align 4          ; [#uses = 1]
  %.structliteral.sroa.2.0.insert.ext = zext i32 %3 to i64 ; [#uses = 1]
  %.structliteral.sroa.2.0.insert.shift = shl nuw i64 %.structliteral.sroa.2.0.insert.ext, 32 ; [#uses = 1]
  %.structliteral.sroa.0.0.insert.insert = or disjoint i64 %.structliteral.sroa.2.0.insert.shift, 2 ; [#uses = 1]
  br label %condend

condfalse:                                        ; preds = %0
  %4 = mul i64 %value_arg, 3                      ; [#uses = 1]
  br label %condend

condend:                                          ; preds = %condfalse, %condtrue
  %.structliteral.sroa.0.0.insert.insert.pn = phi i64 [ %.structliteral.sroa.0.0.insert.insert, %condtrue ], [ %4, %condfalse ] ; [#uses = 1, type = i64]
  %.pn16 = phi i64 [ 2, %condtrue ], [ 1, %condfalse ] ; [#uses = 1, type = i64]
  %.fca.0.0.0.0.insert.i.pn = insertvalue %"error_d.Result!(ulong, DomainError).Result" poison, i64 %.structliteral.sroa.0.0.insert.insert.pn, 0, 0, 0, 0 ; [#uses = 1]
  %.pn = insertvalue %"error_d.Result!(ulong, DomainError).Result" %.fca.0.0.0.0.insert.i.pn, i64 %.pn16, 0, 1 ; [#uses = 1]
  ret %"error_d.Result!(ulong, DomainError).Result" %.pn
}

; [#uses = 0]
; Function Attrs: alwaysinline uwtable
define weak_odr %"error_d.Result!(ulong, DomainError).Result" @_D7error_d__T6ResultTmTS7kernels11DomainErrorZQBh__T3mapTPFNaNbNiNfmZmTSQCs__TQCnTmTQCjZQCxZQBoMFNaNbNiNfMQBxZQBn(ptr nonnull %.this_arg, ptr %transform_arg) local_unnamed_addr #2 comdat {
  %1 = getelementptr inbounds i8, ptr %.this_arg, i64 8 ; [#uses = 1, type = ptr]
  %2 = load i64, ptr %1, align 8                  ; [#uses = 3]
  %3 = trunc i64 %2 to i32                        ; [#uses = 1]
  switch i32 %3, label %condend [
    i32 2, label %.condend_crit_edge
    i32 1, label %condtrue2
  ]

.condend_crit_edge:                               ; preds = %0
  %.fca.0.0.0.0.load.pre = load i64, ptr %.this_arg, align 8 ; [#uses = 1]
  br label %condend

condtrue2:                                        ; preds = %0
  %.not.i = icmp eq i64 %2, 1                     ; [#uses = 1]
  br i1 %.not.i, label %_D7error_d__T6ResultTmTS7kernels11DomainErrorZQBh__T10plainValueTSQCm__TQChTmTQCdZQCrZQBiMFNaNbNiNeZm.exit, label %if.i

if.i:                                             ; preds = %condtrue2
  tail call void @_D7error_d9badAccessFNaNbNiNeZNn() #10
  unreachable

_D7error_d__T6ResultTmTS7kernels11DomainErrorZQBh__T10plainValueTSQCm__TQChTmTQCdZQCrZQBiMFNaNbNiNeZm.exit: ; preds = %condtrue2
  %4 = load i64, ptr %.this_arg, align 8          ; [#uses = 1]
  %5 = tail call i64 %transform_arg(i64 %4)       ; [#uses = 1]
  br label %condend

condend:                                          ; preds = %0, %.condend_crit_edge, %_D7error_d__T6ResultTmTS7kernels11DomainErrorZQBh__T10plainValueTSQCm__TQChTmTQCdZQCrZQBiMFNaNbNiNeZm.exit
  %.fca.0.0.0.0.load = phi i64 [ %.fca.0.0.0.0.load.pre, %.condend_crit_edge ], [ %5, %_D7error_d__T6ResultTmTS7kernels11DomainErrorZQBh__T10plainValueTSQCm__TQChTmTQCdZQCrZQBiMFNaNbNiNeZm.exit ], [ 0, %0 ] ; [#uses = 1, type = i64]
  %condtmp.0.sroa.phi.sroa.speculated = phi i64 [ %2, %.condend_crit_edge ], [ 1, %_D7error_d__T6ResultTmTS7kernels11DomainErrorZQBh__T10plainValueTSQCm__TQChTmTQCdZQCrZQBiMFNaNbNiNeZm.exit ], [ 0, %0 ] ; [#uses = 1, type = i64]
  %.fca.0.0.0.0.insert = insertvalue %"error_d.Result!(ulong, DomainError).Result" poison, i64 %.fca.0.0.0.0.load, 0, 0, 0, 0 ; [#uses = 1]
  %.fca.0.1.insert = insertvalue %"error_d.Result!(ulong, DomainError).Result" %.fca.0.0.0.0.insert, i64 %condtmp.0.sroa.phi.sroa.speculated, 0, 1 ; [#uses = 1]
  ret %"error_d.Result!(ulong, DomainError).Result" %.fca.0.1.insert
}

; [#uses = 0]
; Function Attrs: alwaysinline uwtable
define weak_odr zeroext i1 @_D7error_d__T6ResultTmTS7kernels11DomainErrorZQBh8hasErrorMxFNaNbNiNfZb(ptr nonnull %.this_arg) local_unnamed_addr #2 comdat {
  %1 = getelementptr inbounds i8, ptr %.this_arg, i64 8 ; [#uses = 1, type = ptr]
  %2 = load i64, ptr %1, align 8                  ; [#uses = 1]
  %3 = and i64 %2, 4294967295                     ; [#uses = 1]
  %4 = icmp eq i64 %3, 2                          ; [#uses = 1]
  ret i1 %4
}

; [#uses = 0]
; Function Attrs: alwaysinline uwtable
define weak_odr i32 @_D7error_d__T6ResultTmTS7kernels11DomainErrorZQBh5stateMxFNaNbNiNfZEQCo11ResultState(ptr nonnull %.this_arg) local_unnamed_addr #2 comdat {
  %1 = getelementptr inbounds i8, ptr %.this_arg, i64 8 ; [#uses = 1, type = ptr]
  %2 = load i64, ptr %1, align 8                  ; [#uses = 1]
  %3 = trunc i64 %2 to i32                        ; [#uses = 1]
  ret i32 %3
}

; [#uses = 0]
; Function Attrs: alwaysinline uwtable
define weak_odr zeroext i1 @_D7error_d__T6ResultTmTS7kernels11DomainErrorZQBh8hasValueMxFNaNbNiNfZb(ptr nonnull %.this_arg) local_unnamed_addr #2 comdat {
  %1 = getelementptr inbounds i8, ptr %.this_arg, i64 8 ; [#uses = 1, type = ptr]
  %2 = load i64, ptr %1, align 8                  ; [#uses = 1]
  %3 = and i64 %2, 4294967295                     ; [#uses = 1]
  %4 = icmp eq i64 %3, 1                          ; [#uses = 1]
  ret i1 %4
}

; [#uses = 0]
; Function Attrs: alwaysinline uwtable
define weak_odr i64 @_D7error_d__T6ResultTmTS7kernels11DomainErrorZQBh__T5valueTSQCg__TQCbTmTQBxZQClZQBcMFNaNbNiNfZm(ptr nonnull %.this_arg) local_unnamed_addr #2 comdat {
  %1 = getelementptr inbounds i8, ptr %.this_arg, i64 8 ; [#uses = 1, type = ptr]
  %2 = load i64, ptr %1, align 8                  ; [#uses = 1]
  %.not.i = icmp eq i64 %2, 1                     ; [#uses = 1]
  br i1 %.not.i, label %_D7error_d__T6ResultTmTS7kernels11DomainErrorZQBh__T10plainValueTSQCm__TQChTmTQCdZQCrZQBiMFNaNbNiNeZm.exit, label %if.i

if.i:                                             ; preds = %0
  tail call void @_D7error_d9badAccessFNaNbNiNeZNn() #10
  unreachable

_D7error_d__T6ResultTmTS7kernels11DomainErrorZQBh__T10plainValueTSQCm__TQChTmTQCdZQCrZQBiMFNaNbNiNeZm.exit: ; preds = %0
  %3 = load i64, ptr %.this_arg, align 8          ; [#uses = 1]
  ret i64 %3
}

; [#uses = 0]
; Function Attrs: alwaysinline uwtable
define weak_odr void @_D7error_d__T6ResultTmTS7kernels11DomainErrorZQBh11requireLiveMxFNaNbNiNfZv(ptr nonnull %.this_arg) local_unnamed_addr #2 comdat {
  ret void
}

; [#uses = 0]
; Function Attrs: alwaysinline uwtable
define weak_odr i64 @_D7error_d__T6ResultTmTS7kernels11DomainErrorZQBh__T10plainValueTSQCm__TQChTmTQCdZQCrZQBiMFNaNbNiNeZm(ptr nonnull %.this_arg) local_unnamed_addr #2 comdat {
  %1 = getelementptr inbounds i8, ptr %.this_arg, i64 8 ; [#uses = 1, type = ptr]
  %2 = load i64, ptr %1, align 8                  ; [#uses = 1]
  %.not = icmp eq i64 %2, 1                       ; [#uses = 1]
  br i1 %.not, label %endif, label %if

if:                                               ; preds = %0
  tail call void @_D7error_d9badAccessFNaNbNiNeZNn() #10
  unreachable

endif:                                            ; preds = %0
  %3 = load i64, ptr %.this_arg, align 8          ; [#uses = 1]
  ret i64 %3
}

; [#uses = 6]
; Function Attrs: noreturn
declare void @_D7error_d9badAccessFNaNbNiNeZNn() local_unnamed_addr #10

; [#uses = 0]
; Function Attrs: alwaysinline uwtable
define weak_odr %"error_d.Result!(ulong, DomainError).Result" @_D7error_d__T6ResultTmTS7kernels11DomainErrorZQBh__T7andThenTDFNaNbNiNfmZSQCu__TQCpTmTQClZQCzTQvZQBtMFNaNbNiNfMQByZQBq(ptr nonnull %.this_arg, { ptr, ptr } %next_arg) local_unnamed_addr #2 comdat {
  %next_arg.fca.0.extract = extractvalue { ptr, ptr } %next_arg, 0 ; [#uses = 1]
  %next_arg.fca.1.extract = extractvalue { ptr, ptr } %next_arg, 1 ; [#uses = 1]
  %1 = getelementptr inbounds i8, ptr %.this_arg, i64 8 ; [#uses = 1, type = ptr]
  %2 = load i64, ptr %1, align 8                  ; [#uses = 3]
  %3 = trunc i64 %2 to i32                        ; [#uses = 1]
  switch i32 %3, label %condend [
    i32 2, label %.condend_crit_edge
    i32 1, label %condtrue2
  ]

.condend_crit_edge:                               ; preds = %0
  %.fca.0.0.0.0.load.pre = load i64, ptr %.this_arg, align 8 ; [#uses = 1]
  br label %condend

condtrue2:                                        ; preds = %0
  %.not.i = icmp eq i64 %2, 1                     ; [#uses = 1]
  br i1 %.not.i, label %_D7error_d__T6ResultTmTS7kernels11DomainErrorZQBh__T10plainValueTSQCm__TQChTmTQCdZQCrZQBiMFNaNbNiNeZm.exit, label %if.i

if.i:                                             ; preds = %condtrue2
  tail call void @_D7error_d9badAccessFNaNbNiNeZNn() #10
  unreachable

_D7error_d__T6ResultTmTS7kernels11DomainErrorZQBh__T10plainValueTSQCm__TQChTmTQCdZQCrZQBiMFNaNbNiNeZm.exit: ; preds = %condtrue2
  %4 = load i64, ptr %.this_arg, align 8          ; [#uses = 1]
  %5 = tail call %"error_d.Result!(ulong, DomainError).Result" %next_arg.fca.1.extract(ptr nonnull %next_arg.fca.0.extract, i64 %4) ; [#uses = 2]
  %.fca.0.0.0.0.extract = extractvalue %"error_d.Result!(ulong, DomainError).Result" %5, 0, 0, 0, 0 ; [#uses = 1]
  %.fca.0.1.extract = extractvalue %"error_d.Result!(ulong, DomainError).Result" %5, 0, 1 ; [#uses = 1]
  br label %condend

condend:                                          ; preds = %0, %.condend_crit_edge, %_D7error_d__T6ResultTmTS7kernels11DomainErrorZQBh__T10plainValueTSQCm__TQChTmTQCdZQCrZQBiMFNaNbNiNeZm.exit
  %.fca.0.0.0.0.load = phi i64 [ %.fca.0.0.0.0.load.pre, %.condend_crit_edge ], [ %.fca.0.0.0.0.extract, %_D7error_d__T6ResultTmTS7kernels11DomainErrorZQBh__T10plainValueTSQCm__TQChTmTQCdZQCrZQBiMFNaNbNiNeZm.exit ], [ 0, %0 ] ; [#uses = 1, type = i64]
  %condtmp.0.sroa.phi.sroa.speculated = phi i64 [ %2, %.condend_crit_edge ], [ %.fca.0.1.extract, %_D7error_d__T6ResultTmTS7kernels11DomainErrorZQBh__T10plainValueTSQCm__TQChTmTQCdZQCrZQBiMFNaNbNiNeZm.exit ], [ 0, %0 ] ; [#uses = 1, type = i64]
  %.fca.0.0.0.0.insert = insertvalue %"error_d.Result!(ulong, DomainError).Result" poison, i64 %.fca.0.0.0.0.load, 0, 0, 0, 0 ; [#uses = 1]
  %.fca.0.1.insert = insertvalue %"error_d.Result!(ulong, DomainError).Result" %.fca.0.0.0.0.insert, i64 %condtmp.0.sroa.phi.sroa.speculated, 0, 1 ; [#uses = 1]
  ret %"error_d.Result!(ulong, DomainError).Result" %.fca.0.1.insert
}

; [#uses = 0]
; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define noundef zeroext i1 @pipeline_status(i32 %x_arg, i32 %threshold_arg, ptr nocapture writeonly dereferenceable(8) %value, ptr nocapture writeonly dereferenceable(8) %error) local_unnamed_addr #4 {
  store i64 0, ptr %value, align 8
  store i64 0, ptr %error, align 1
  %1 = and i32 %x_arg, 255                        ; [#uses = 1]
  %2 = icmp ult i32 %1, %threshold_arg            ; [#uses = 1]
  br i1 %2, label %if, label %endif

common.ret:                                       ; preds = %endif2, %if1, %if
  %common.ret.op = phi i1 [ false, %if ], [ false, %if1 ], [ true, %endif2 ] ; [#uses = 1, type = i1]
  ret i1 %common.ret.op

if:                                               ; preds = %0
  store i32 1, ptr %error, align 1
  %.structliteral.sroa.2.0.error.sroa_idx = getelementptr inbounds i8, ptr %error, i64 4 ; [#uses = 1, type = ptr]
  store i32 %x_arg, ptr %.structliteral.sroa.2.0.error.sroa_idx, align 1
  br label %common.ret

endif:                                            ; preds = %0
  %3 = zext i32 %x_arg to i64                     ; [#uses = 1]
  %4 = mul i64 %3, -7046029288634856825           ; [#uses = 1]
  %5 = lshr i32 %x_arg, 7                         ; [#uses = 1]
  %6 = zext nneg i32 %5 to i64                    ; [#uses = 1]
  %7 = xor i64 %4, %6                             ; [#uses = 2]
  %8 = and i64 %7, 15                             ; [#uses = 1]
  %9 = icmp eq i64 %8, 0                          ; [#uses = 1]
  br i1 %9, label %if1, label %endif2

if1:                                              ; preds = %endif
  store i32 2, ptr %error, align 1
  %.structliteral3.sroa.2.0.error.sroa_idx = getelementptr inbounds i8, ptr %error, i64 4 ; [#uses = 1, type = ptr]
  store i32 %x_arg, ptr %.structliteral3.sroa.2.0.error.sroa_idx, align 1
  br label %common.ret

endif2:                                           ; preds = %endif
  %10 = xor i64 %7, 1311768467463790320           ; [#uses = 1]
  %11 = mul i64 %10, 3                            ; [#uses = 1]
  store i64 %11, ptr %value, align 8
  br label %common.ret
}

; [#uses = 0]
; Function Attrs: alwaysinline uwtable
define weak_odr ptr @_D7error_d__T6ResultTmTS7kernels11DomainErrorZQBh6__ctorMFNaNbNcNiNfSQCp__T12PlainStorageTSQDl__T7SuccessTmZQlTSQEg__T7FailureTQEaZQnZQChZSQFh__TQFcTmTQEyZQFm(ptr nonnull returned %.this_arg, %"error_d.PlainStorage!(Success!ulong, Failure!(DomainError)).PlainStorage" %payload_arg) local_unnamed_addr #2 comdat {
  %payload_arg.fca.0.0.0.extract = extractvalue %"error_d.PlainStorage!(Success!ulong, Failure!(DomainError)).PlainStorage" %payload_arg, 0, 0, 0 ; [#uses = 1]
  %payload_arg.fca.1.extract = extractvalue %"error_d.PlainStorage!(Success!ulong, Failure!(DomainError)).PlainStorage" %payload_arg, 1 ; [#uses = 1]
  store i64 %payload_arg.fca.0.0.0.extract, ptr %.this_arg, align 1
  %.sroa.2.0..sroa_idx = getelementptr inbounds i8, ptr %.this_arg, i64 8 ; [#uses = 1, type = ptr]
  store i64 %payload_arg.fca.1.extract, ptr %.sroa.2.0..sroa_idx, align 1
  ret ptr %.this_arg
}

; [#uses = 0]
; Function Attrs: uwtable
define weak_odr %"error_d.PlainStorage!(Success!ulong, Failure!(DomainError)).PlainStorage" @_D4core8lifetime__T4moveTS7error_d__T12PlainStorageTSQBb__T7SuccessTmZQlTSQBw__T7FailureTS7kernels11DomainErrorZQBgZQDbZQDxFNaNbNiNfNkMKQEhZQEl(ptr dereferenceable(16) %source) local_unnamed_addr #11 comdat {
  %result.sroa.0.0.copyload.i.i = load i64, ptr %source, align 1 ; [#uses = 1]
  %result.sroa.2.0.source.sroa_idx.i.i = getelementptr inbounds i8, ptr %source, i64 8 ; [#uses = 1, type = ptr]
  %result.sroa.2.0.copyload.i.i = load i64, ptr %result.sroa.2.0.source.sroa_idx.i.i, align 1 ; [#uses = 1]
  %.fca.0.0.0.insert.i.i = insertvalue %"error_d.PlainStorage!(Success!ulong, Failure!(DomainError)).PlainStorage" poison, i64 %result.sroa.0.0.copyload.i.i, 0, 0, 0 ; [#uses = 1]
  %.fca.1.insert.i.i = insertvalue %"error_d.PlainStorage!(Success!ulong, Failure!(DomainError)).PlainStorage" %.fca.0.0.0.insert.i.i, i64 %result.sroa.2.0.copyload.i.i, 1 ; [#uses = 1]
  ret %"error_d.PlainStorage!(Success!ulong, Failure!(DomainError)).PlainStorage" %.fca.1.insert.i.i
}

; [#uses = 0]
; Function Attrs: alwaysinline uwtable
define weak_odr zeroext i1 @_D7error_d__T6ResultTmTS7kernels11DomainErrorZQBh7isEmptyMxFNaNbNiNfZb(ptr nonnull %.this_arg) local_unnamed_addr #2 comdat {
  %1 = getelementptr inbounds i8, ptr %.this_arg, i64 8 ; [#uses = 1, type = ptr]
  %2 = load i64, ptr %1, align 8                  ; [#uses = 1]
  %3 = and i64 %2, 4294967295                     ; [#uses = 1]
  %4 = icmp eq i64 %3, 0                          ; [#uses = 1]
  ret i1 %4
}

; [#uses = 0]
; Function Attrs: uwtable
define weak_odr void @_D7error_d__T6ResultTmTS7kernels11DomainErrorZQBh8opAssignMFNaNbNiNfSQCp__TQCkTmTQCgZQCuZv(ptr nonnull %.this_arg, %"error_d.Result!(ulong, DomainError).Result" %rhs_arg) local_unnamed_addr #11 comdat {
  %rhs_arg.fca.0.0.0.0.extract = extractvalue %"error_d.Result!(ulong, DomainError).Result" %rhs_arg, 0, 0, 0, 0 ; [#uses = 1]
  %rhs_arg.fca.0.1.extract = extractvalue %"error_d.Result!(ulong, DomainError).Result" %rhs_arg, 0, 1 ; [#uses = 1]
  store i64 %rhs_arg.fca.0.0.0.0.extract, ptr %.this_arg, align 1
  %rhs.sroa.2.0..sroa_idx = getelementptr inbounds i8, ptr %.this_arg, i64 8 ; [#uses = 1, type = ptr]
  store i64 %rhs_arg.fca.0.1.extract, ptr %rhs.sroa.2.0..sroa_idx, align 1
  ret void
}

; [#uses = 0]
; Function Attrs: uwtable
define weak_odr void @_D7error_d__T6ResultTmTS7kernels11DomainErrorZQBh7replaceMFNaNbNiNeKSQCp__T12PlainStorageTSQDl__T7SuccessTmZQlTSQEg__T7FailureTQEaZQnZQChZv(ptr nonnull %.this_arg, ptr dereferenceable(16) %prepared) local_unnamed_addr #11 comdat {
endif.i.i:
  %0 = icmp eq ptr %prepared, %.this_arg          ; [#uses = 1]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.this_arg, i8 0, i64 16, i1 false)
  br i1 %0, label %_D4core8lifetime__T4moveTS7error_d__T12PlainStorageTSQBb__T7SuccessTmZQlTSQBw__T7FailureTS7kernels11DomainErrorZQBgZQDbZQDxFNaNbNiNfKQEeKQEiZv.exit2, label %endif.i.i1

endif.i.i1:                                       ; preds = %endif.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.this_arg, ptr noundef nonnull align 1 dereferenceable(16) %prepared, i64 16, i1 false)
  br label %_D4core8lifetime__T4moveTS7error_d__T12PlainStorageTSQBb__T7SuccessTmZQlTSQBw__T7FailureTS7kernels11DomainErrorZQBgZQDbZQDxFNaNbNiNfKQEeKQEiZv.exit2

_D4core8lifetime__T4moveTS7error_d__T12PlainStorageTSQBb__T7SuccessTmZQlTSQBw__T7FailureTS7kernels11DomainErrorZQBgZQDbZQDxFNaNbNiNfKQEeKQEiZv.exit2: ; preds = %endif.i.i, %endif.i.i1
  ret void
}

; [#uses = 0]
; Function Attrs: uwtable
define weak_odr void @_D4core8lifetime__T4moveTS7error_d__T12PlainStorageTSQBb__T7SuccessTmZQlTSQBw__T7FailureTS7kernels11DomainErrorZQBgZQDbZQDxFNaNbNiNfKQEeKQEiZv(ptr dereferenceable(16) %source, ptr dereferenceable(16) %target) local_unnamed_addr #11 comdat {
  %1 = icmp eq ptr %source, %target               ; [#uses = 1]
  br i1 %1, label %_D4core8lifetime__T8moveImplTS7error_d__T12PlainStorageTSQBb__T7SuccessTmZQlTSQBw__T7FailureTS7kernels11DomainErrorZQBgZQDbZQEbFNaNbNiNfMKQEfNkMKQEmZv.exit, label %endif.i

endif.i:                                          ; preds = %0
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %target, ptr noundef nonnull align 1 dereferenceable(16) %source, i64 16, i1 false)
  br label %_D4core8lifetime__T8moveImplTS7error_d__T12PlainStorageTSQBb__T7SuccessTmZQlTSQBw__T7FailureTS7kernels11DomainErrorZQBgZQDbZQEbFNaNbNiNfMKQEfNkMKQEmZv.exit

_D4core8lifetime__T8moveImplTS7error_d__T12PlainStorageTSQBb__T7SuccessTmZQlTSQBw__T7FailureTS7kernels11DomainErrorZQBgZQDbZQEbFNaNbNiNfMKQEfNkMKQEmZv.exit: ; preds = %0, %endif.i
  ret void
}

; [#uses = 0]
; Function Attrs: uwtable
define weak_odr %"error_d.PlainStorage!(Success!ulong, Failure!(DomainError)).PlainStorage" @_D7error_d__T6ResultTmTS7kernels11DomainErrorZQBh11takeStorageMFNaNbNiNeZSQCu__T12PlainStorageTSQDq__T7SuccessTmZQlTSQEl__T7FailureTQEfZQnZQCh(ptr nonnull %.this_arg) local_unnamed_addr #11 comdat {
endif.i.i:
  %result.sroa.0.0.copyload.i.i.i = load i64, ptr %.this_arg, align 1 ; [#uses = 1]
  %result.sroa.2.0.source.sroa_idx.i.i.i = getelementptr inbounds i8, ptr %.this_arg, i64 8 ; [#uses = 1, type = ptr]
  %result.sroa.2.0.copyload.i.i.i = load i64, ptr %result.sroa.2.0.source.sroa_idx.i.i.i, align 1 ; [#uses = 1]
  %.fca.0.0.0.insert.i.i.i = insertvalue %"error_d.PlainStorage!(Success!ulong, Failure!(DomainError)).PlainStorage" poison, i64 %result.sroa.0.0.copyload.i.i.i, 0, 0, 0 ; [#uses = 1]
  %.fca.1.insert.i.i.i = insertvalue %"error_d.PlainStorage!(Success!ulong, Failure!(DomainError)).PlainStorage" %.fca.0.0.0.insert.i.i.i, i64 %result.sroa.2.0.copyload.i.i.i, 1 ; [#uses = 1]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.this_arg, i8 0, i64 16, i1 false)
  ret %"error_d.PlainStorage!(Success!ulong, Failure!(DomainError)).PlainStorage" %.fca.1.insert.i.i.i
}

; [#uses = 0]
; Function Attrs: alwaysinline uwtable
define weak_odr void @_D7error_d__T6ResultTS7kernels5BlockTSQq11DomainErrorZQBp11requireLiveMxFNaNbNiNfZv(ptr nonnull %.this_arg) local_unnamed_addr #2 comdat {
  ret void
}

; [#uses = 0]
; Function Attrs: alwaysinline uwtable
define weak_odr ptr @_D7error_d__T6ResultTS7kernels5BlockTSQq11DomainErrorZQBp6__ctorMFNaNbNcNiNfSQCx__T12PlainStorageTSQDt__T7SuccessTQDpZQnTSQEq__T7FailureTQDwZQnZQCjZSQFr__TQFmTQFiTQEwZQFy(ptr nonnull returned %.this_arg, ptr byval(%"error_d.PlainStorage!(Success!(Block), Failure!(DomainError)).PlainStorage") align 8 %payload) local_unnamed_addr #2 comdat {
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(264) %.this_arg, ptr noundef nonnull align 8 dereferenceable(264) %payload, i64 264, i1 false)
  ret ptr %.this_arg
}

; [#uses = 0]
; Function Attrs: uwtable
define weak_odr void @_D4core8lifetime__T4moveTS7error_d__T12PlainStorageTSQBb__T7SuccessTS7kernels5BlockZQzTSQCk__T7FailureTSQBj11DomainErrorZQBbZQDkZQEgFNaNbNiNfNkMKQEqZQEu(ptr noalias sret(%"error_d.PlainStorage!(Success!(Block), Failure!(DomainError)).PlainStorage") align 8 %.sret_arg, ptr dereferenceable(264) %source) local_unnamed_addr #11 comdat {
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(264) %.sret_arg, ptr noundef nonnull align 1 dereferenceable(264) %source, i64 264, i1 false)
  ret void
}

; [#uses = 0]
; Function Attrs: alwaysinline uwtable
define weak_odr i32 @_D7error_d__T6ResultTS7kernels5BlockTSQq11DomainErrorZQBp5stateMxFNaNbNiNfZEQCw11ResultState(ptr nonnull %.this_arg) local_unnamed_addr #2 comdat {
  %1 = getelementptr inbounds i8, ptr %.this_arg, i64 256 ; [#uses = 1, type = ptr]
  %2 = load i64, ptr %1, align 8                  ; [#uses = 1]
  %3 = trunc i64 %2 to i32                        ; [#uses = 1]
  ret i32 %3
}

; [#uses = 0]
; Function Attrs: alwaysinline uwtable
define weak_odr zeroext i1 @_D7error_d__T6ResultTS7kernels5BlockTSQq11DomainErrorZQBp8hasValueMxFNaNbNiNfZb(ptr nonnull %.this_arg) local_unnamed_addr #2 comdat {
  %1 = getelementptr inbounds i8, ptr %.this_arg, i64 256 ; [#uses = 1, type = ptr]
  %2 = load i64, ptr %1, align 8                  ; [#uses = 1]
  %3 = and i64 %2, 4294967295                     ; [#uses = 1]
  %4 = icmp eq i64 %3, 1                          ; [#uses = 1]
  ret i1 %4
}

; [#uses = 0]
; Function Attrs: alwaysinline uwtable
define weak_odr zeroext i1 @_D7error_d__T6ResultTS7kernels5BlockTSQq11DomainErrorZQBp8hasErrorMxFNaNbNiNfZb(ptr nonnull %.this_arg) local_unnamed_addr #2 comdat {
  %1 = getelementptr inbounds i8, ptr %.this_arg, i64 256 ; [#uses = 1, type = ptr]
  %2 = load i64, ptr %1, align 8                  ; [#uses = 1]
  %3 = and i64 %2, 4294967295                     ; [#uses = 1]
  %4 = icmp eq i64 %3, 2                          ; [#uses = 1]
  ret i1 %4
}

; [#uses = 0]
; Function Attrs: alwaysinline uwtable
define weak_odr zeroext i1 @_D7error_d__T6ResultTS7kernels5BlockTSQq11DomainErrorZQBp7isEmptyMxFNaNbNiNfZb(ptr nonnull %.this_arg) local_unnamed_addr #2 comdat {
  %1 = getelementptr inbounds i8, ptr %.this_arg, i64 256 ; [#uses = 1, type = ptr]
  %2 = load i64, ptr %1, align 8                  ; [#uses = 1]
  %3 = and i64 %2, 4294967295                     ; [#uses = 1]
  %4 = icmp eq i64 %3, 0                          ; [#uses = 1]
  ret i1 %4
}

; [#uses = 0]
; Function Attrs: uwtable
define weak_odr void @_D7error_d__T6ResultTS7kernels5BlockTSQq11DomainErrorZQBp8opAssignMFNaNbNiNfSQCx__TQCsTQCoTQCcZQDeZv(ptr nonnull %.this_arg, ptr byval(%"error_d.Result!(Block, DomainError).Result") align 8 %rhs) local_unnamed_addr #11 comdat {
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(264) %.this_arg, ptr noundef nonnull align 8 dereferenceable(264) %rhs, i64 264, i1 false)
  ret void
}

; [#uses = 0]
; Function Attrs: uwtable
define weak_odr void @_D7error_d__T6ResultTS7kernels5BlockTSQq11DomainErrorZQBp7replaceMFNaNbNiNeKSQCx__T12PlainStorageTSQDt__T7SuccessTQDpZQnTSQEq__T7FailureTQDwZQnZQCjZv(ptr nonnull %.this_arg, ptr dereferenceable(264) %prepared) local_unnamed_addr #11 comdat {
endif.i.i:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(264) %.this_arg, i8 0, i64 264, i1 false)
  %0 = icmp eq ptr %prepared, %.this_arg          ; [#uses = 1]
  br i1 %0, label %_D4core8lifetime__T4moveTS7error_d__T12PlainStorageTSQBb__T7SuccessTS7kernels5BlockZQzTSQCk__T7FailureTSQBj11DomainErrorZQBbZQDkZQEgFNaNbNiNfKQEnKQErZv.exit2, label %endif.i.i1

endif.i.i1:                                       ; preds = %endif.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(264) %.this_arg, ptr noundef nonnull align 1 dereferenceable(264) %prepared, i64 264, i1 false)
  br label %_D4core8lifetime__T4moveTS7error_d__T12PlainStorageTSQBb__T7SuccessTS7kernels5BlockZQzTSQCk__T7FailureTSQBj11DomainErrorZQBbZQDkZQEgFNaNbNiNfKQEnKQErZv.exit2

_D4core8lifetime__T4moveTS7error_d__T12PlainStorageTSQBb__T7SuccessTS7kernels5BlockZQzTSQCk__T7FailureTSQBj11DomainErrorZQBbZQDkZQEgFNaNbNiNfKQEnKQErZv.exit2: ; preds = %endif.i.i, %endif.i.i1
  ret void
}

; [#uses = 0]
; Function Attrs: uwtable
define weak_odr void @_D4core8lifetime__T4moveTS7error_d__T12PlainStorageTSQBb__T7SuccessTS7kernels5BlockZQzTSQCk__T7FailureTSQBj11DomainErrorZQBbZQDkZQEgFNaNbNiNfKQEnKQErZv(ptr dereferenceable(264) %source, ptr dereferenceable(264) %target) local_unnamed_addr #11 comdat {
  %1 = icmp eq ptr %source, %target               ; [#uses = 1]
  br i1 %1, label %_D4core8lifetime__T8moveImplTS7error_d__T12PlainStorageTSQBb__T7SuccessTS7kernels5BlockZQzTSQCk__T7FailureTSQBj11DomainErrorZQBbZQDkZQEkFNaNbNiNfMKQEoNkMKQEvZv.exit, label %endif.i

endif.i:                                          ; preds = %0
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(264) %target, ptr noundef nonnull align 1 dereferenceable(264) %source, i64 264, i1 false)
  br label %_D4core8lifetime__T8moveImplTS7error_d__T12PlainStorageTSQBb__T7SuccessTS7kernels5BlockZQzTSQCk__T7FailureTSQBj11DomainErrorZQBbZQDkZQEkFNaNbNiNfMKQEoNkMKQEvZv.exit

_D4core8lifetime__T8moveImplTS7error_d__T12PlainStorageTSQBb__T7SuccessTS7kernels5BlockZQzTSQCk__T7FailureTSQBj11DomainErrorZQBbZQDkZQEkFNaNbNiNfMKQEoNkMKQEvZv.exit: ; preds = %0, %endif.i
  ret void
}

; [#uses = 0]
; Function Attrs: uwtable
define weak_odr void @_D7error_d__T6ResultTS7kernels5BlockTSQq11DomainErrorZQBp11takeStorageMFNaNbNiNeZSQDc__T12PlainStorageTSQDy__T7SuccessTQDuZQnTSQEv__T7FailureTQEbZQnZQCj(ptr noalias sret(%"error_d.PlainStorage!(Success!(Block), Failure!(DomainError)).PlainStorage") align 8 %.sret_arg, ptr nonnull %.this_arg) local_unnamed_addr #11 comdat {
endif.i.i:
  %owned = alloca %"error_d.PlainStorage!(Success!(Block), Failure!(DomainError)).PlainStorage", align 8 ; [#uses = 2, size/byte = 264]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(264) %owned, ptr noundef nonnull align 1 dereferenceable(264) %.this_arg, i64 264, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(264) %.this_arg, i8 0, i64 264, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(264) %.sret_arg, ptr noundef nonnull align 8 dereferenceable(264) %owned, i64 264, i1 false)
  ret void
}

; [#uses = 0]
; Function Attrs: alwaysinline uwtable
define weak_odr i64 @_D7error_d__T6ResultTmTS7kernels11DomainErrorZQBh__T5errorTSQCg__TQCbTmTQBxZQClZQBcMFNaNbNiNfZQCt(ptr nonnull %.this_arg) local_unnamed_addr #2 comdat {
  %1 = getelementptr inbounds i8, ptr %.this_arg, i64 8 ; [#uses = 1, type = ptr]
  %2 = load i64, ptr %1, align 8                  ; [#uses = 1]
  %.not.i = icmp eq i64 %2, 2                     ; [#uses = 1]
  br i1 %.not.i, label %_D7error_d__T6ResultTmTS7kernels11DomainErrorZQBh__T10plainErrorTSQCm__TQChTmTQCdZQCrZQBiMFNaNbNiNeZQCz.exit, label %if.i

if.i:                                             ; preds = %0
  tail call void @_D7error_d9badAccessFNaNbNiNeZNn() #10
  unreachable

_D7error_d__T6ResultTmTS7kernels11DomainErrorZQBh__T10plainErrorTSQCm__TQChTmTQCdZQCrZQBiMFNaNbNiNeZQCz.exit: ; preds = %0
  %.BaseBitcastABIRewrite_padded_arg_storage.0.copyload.i = load i64, ptr %.this_arg, align 1 ; [#uses = 1]
  ret i64 %.BaseBitcastABIRewrite_padded_arg_storage.0.copyload.i
}

; [#uses = 0]
; Function Attrs: alwaysinline uwtable
define weak_odr i64 @_D7error_d__T6ResultTmTS7kernels11DomainErrorZQBh__T10plainErrorTSQCm__TQChTmTQCdZQCrZQBiMFNaNbNiNeZQCz(ptr nonnull %.this_arg) local_unnamed_addr #2 comdat {
  %1 = getelementptr inbounds i8, ptr %.this_arg, i64 8 ; [#uses = 1, type = ptr]
  %2 = load i64, ptr %1, align 8                  ; [#uses = 1]
  %.not = icmp eq i64 %2, 2                       ; [#uses = 1]
  br i1 %.not, label %endif, label %if

if:                                               ; preds = %0
  tail call void @_D7error_d9badAccessFNaNbNiNeZNn() #10
  unreachable

endif:                                            ; preds = %0
  %.BaseBitcastABIRewrite_padded_arg_storage.0.copyload = load i64, ptr %.this_arg, align 1 ; [#uses = 1]
  ret i64 %.BaseBitcastABIRewrite_padded_arg_storage.0.copyload
}

; [#uses = 0]
; Function Attrs: uwtable
define weak_odr %"error_d.PlainStorage!(Success!ulong, Failure!(DomainError)).PlainStorage" @_D4core8lifetime__T8moveImplTS7error_d__T12PlainStorageTSQBb__T7SuccessTmZQlTSQBw__T7FailureTS7kernels11DomainErrorZQBgZQDbZQEbFNaNbNiNfNkMKQEhZQEl(ptr dereferenceable(16) %source) local_unnamed_addr #11 comdat {
  %result.sroa.0.0.copyload.i = load i64, ptr %source, align 1 ; [#uses = 1]
  %result.sroa.2.0.source.sroa_idx.i = getelementptr inbounds i8, ptr %source, i64 8 ; [#uses = 1, type = ptr]
  %result.sroa.2.0.copyload.i = load i64, ptr %result.sroa.2.0.source.sroa_idx.i, align 1 ; [#uses = 1]
  %.fca.0.0.0.insert.i = insertvalue %"error_d.PlainStorage!(Success!ulong, Failure!(DomainError)).PlainStorage" poison, i64 %result.sroa.0.0.copyload.i, 0, 0, 0 ; [#uses = 1]
  %.fca.1.insert.i = insertvalue %"error_d.PlainStorage!(Success!ulong, Failure!(DomainError)).PlainStorage" %.fca.0.0.0.insert.i, i64 %result.sroa.2.0.copyload.i, 1 ; [#uses = 1]
  ret %"error_d.PlainStorage!(Success!ulong, Failure!(DomainError)).PlainStorage" %.fca.1.insert.i
}

; [#uses = 0]
; Function Attrs: uwtable
define weak_odr %"error_d.PlainStorage!(Success!ulong, Failure!(DomainError)).PlainStorage" @_D4core8lifetime__T15trustedMoveImplTS7error_d__T12PlainStorageTSQBb__T7SuccessTmZQlTSQBw__T7FailureTS7kernels11DomainErrorZQBgZQDbZQEjFNaNbNiNeNkMKQEhZQEl(ptr dereferenceable(16) %source) local_unnamed_addr #11 comdat {
  %result.sroa.0.0.copyload = load i64, ptr %source, align 1 ; [#uses = 1]
  %result.sroa.2.0.source.sroa_idx = getelementptr inbounds i8, ptr %source, i64 8 ; [#uses = 1, type = ptr]
  %result.sroa.2.0.copyload = load i64, ptr %result.sroa.2.0.source.sroa_idx, align 1 ; [#uses = 1]
  %.fca.0.0.0.insert = insertvalue %"error_d.PlainStorage!(Success!ulong, Failure!(DomainError)).PlainStorage" poison, i64 %result.sroa.0.0.copyload, 0, 0, 0 ; [#uses = 1]
  %.fca.1.insert = insertvalue %"error_d.PlainStorage!(Success!ulong, Failure!(DomainError)).PlainStorage" %.fca.0.0.0.insert, i64 %result.sroa.2.0.copyload, 1 ; [#uses = 1]
  ret %"error_d.PlainStorage!(Success!ulong, Failure!(DomainError)).PlainStorage" %.fca.1.insert
}

; [#uses = 0]
; Function Attrs: uwtable
define weak_odr void @_D4core8lifetime__T15moveEmplaceImplTS7error_d__T12PlainStorageTSQBb__T7SuccessTmZQlTSQBw__T7FailureTS7kernels11DomainErrorZQBgZQDbZQEjFNaNbNiNfMKQEfNkMKQEmZv(ptr dereferenceable(16) %target, ptr dereferenceable(16) %source) local_unnamed_addr #11 comdat {
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %target, ptr noundef nonnull align 1 dereferenceable(16) %source, i64 16, i1 false)
  ret void
}

; [#uses = 0]
; Function Attrs: uwtable
define weak_odr void @_D4core8lifetime__T8moveImplTS7error_d__T12PlainStorageTSQBb__T7SuccessTmZQlTSQBw__T7FailureTS7kernels11DomainErrorZQBgZQDbZQEbFNaNbNiNfMKQEfNkMKQEmZv(ptr dereferenceable(16) %target, ptr dereferenceable(16) %source) local_unnamed_addr #11 comdat {
  %1 = icmp eq ptr %source, %target               ; [#uses = 1]
  br i1 %1, label %common.ret, label %endif

common.ret:                                       ; preds = %0, %endif
  ret void

endif:                                            ; preds = %0
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %target, ptr noundef nonnull align 1 dereferenceable(16) %source, i64 16, i1 false)
  br label %common.ret
}

; [#uses = 0]
; Function Attrs: uwtable
define weak_odr void @_D4core8lifetime__T8moveImplTS7error_d__T12PlainStorageTSQBb__T7SuccessTS7kernels5BlockZQzTSQCk__T7FailureTSQBj11DomainErrorZQBbZQDkZQEkFNaNbNiNfNkMKQEqZQEu(ptr noalias sret(%"error_d.PlainStorage!(Success!(Block), Failure!(DomainError)).PlainStorage") align 8 %.sret_arg, ptr dereferenceable(264) %source) local_unnamed_addr #11 comdat {
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(264) %.sret_arg, ptr noundef nonnull align 1 dereferenceable(264) %source, i64 264, i1 false)
  ret void
}

; [#uses = 0]
; Function Attrs: uwtable
define weak_odr void @_D4core8lifetime__T15trustedMoveImplTS7error_d__T12PlainStorageTSQBb__T7SuccessTS7kernels5BlockZQzTSQCk__T7FailureTSQBj11DomainErrorZQBbZQDkZQEsFNaNbNiNeNkMKQEqZQEu(ptr noalias sret(%"error_d.PlainStorage!(Success!(Block), Failure!(DomainError)).PlainStorage") align 8 %.sret_arg, ptr dereferenceable(264) %source) local_unnamed_addr #11 comdat {
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(264) %.sret_arg, ptr noundef nonnull align 1 dereferenceable(264) %source, i64 264, i1 false)
  ret void
}

; [#uses = 0]
; Function Attrs: uwtable
define weak_odr void @_D4core8lifetime__T15moveEmplaceImplTS7error_d__T12PlainStorageTSQBb__T7SuccessTS7kernels5BlockZQzTSQCk__T7FailureTSQBj11DomainErrorZQBbZQDkZQEsFNaNbNiNfMKQEoNkMKQEvZv(ptr dereferenceable(264) %target, ptr dereferenceable(264) %source) local_unnamed_addr #11 comdat {
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(264) %target, ptr noundef nonnull align 1 dereferenceable(264) %source, i64 264, i1 false)
  ret void
}

; [#uses = 0]
; Function Attrs: uwtable
define weak_odr void @_D4core8lifetime__T8moveImplTS7error_d__T12PlainStorageTSQBb__T7SuccessTS7kernels5BlockZQzTSQCk__T7FailureTSQBj11DomainErrorZQBbZQDkZQEkFNaNbNiNfMKQEoNkMKQEvZv(ptr dereferenceable(264) %target, ptr dereferenceable(264) %source) local_unnamed_addr #11 comdat {
  %1 = icmp eq ptr %source, %target               ; [#uses = 1]
  br i1 %1, label %common.ret, label %endif

common.ret:                                       ; preds = %0, %endif
  ret void

endif:                                            ; preds = %0
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(264) %target, ptr noundef nonnull align 1 dereferenceable(264) %source, i64 264, i1 false)
  br label %common.ret
}

; [#uses = 1]
; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #12

; [#uses = 1]
; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #12

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "frame-pointer"="none" "target-cpu"="x86-64" "target-features"="+cx16" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind willreturn memory(none) uwtable "frame-pointer"="none" "target-cpu"="x86-64" "target-features"="+cx16" }
attributes #2 = { alwaysinline uwtable "frame-pointer"="none" "target-cpu"="x86-64" "target-features"="+cx16" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind willreturn memory(argmem: write) uwtable "frame-pointer"="none" "target-cpu"="x86-64" "target-features"="+cx16" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "frame-pointer"="none" "target-cpu"="x86-64" "target-features"="+cx16" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "frame-pointer"="none" "target-cpu"="x86-64" "target-features"="+cx16" }
attributes #8 = { alwaysinline mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "frame-pointer"="none" "target-cpu"="x86-64" "target-features"="+cx16" }
attributes #9 = { alwaysinline mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "frame-pointer"="none" "target-cpu"="x86-64" "target-features"="+cx16" }
attributes #10 = { noreturn "target-cpu"="x86-64" "target-features"="+cx16" }
attributes #11 = { uwtable "frame-pointer"="none" "target-cpu"="x86-64" "target-features"="+cx16" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }

!llvm.ident = !{!0}

!0 = !{!"ldc version 1.42.0"}
!1 = !{!2}
!2 = distinct !{!2, !3, !"_D7error_d__T6ResultTS7kernels5BlockTSQq11DomainErrorZQBp12plainFailureFNaNbNiNeQBrZSQDf__TQDaTQCwTQCkZQDm: %.sret_arg"}
!3 = distinct !{!3, !"_D7error_d__T6ResultTS7kernels5BlockTSQq11DomainErrorZQBp12plainFailureFNaNbNiNeQBrZSQDf__TQDaTQCwTQCkZQDm"}
!4 = !{!5}
!5 = distinct !{!5, !6, !"_D7error_d__T6ResultTS7kernels5BlockTSQq11DomainErrorZQBp12plainFailureFNaNbNiNeQBrZSQDf__TQDaTQCwTQCkZQDm: %.sret_arg"}
!6 = distinct !{!6, !"_D7error_d__T6ResultTS7kernels5BlockTSQq11DomainErrorZQBp12plainFailureFNaNbNiNeQBrZSQDf__TQDaTQCwTQCkZQDm"}
!7 = !{!8}
!8 = distinct !{!8, !9, !"_D7error_d__T6ResultTS7kernels5BlockTSQq11DomainErrorZQBp12plainSuccessFNaNbNiNeQChZSQDf__TQDaTQCwTQCkZQDm: %.sret_arg"}
!9 = distinct !{!9, !"_D7error_d__T6ResultTS7kernels5BlockTSQq11DomainErrorZQBp12plainSuccessFNaNbNiNeQChZSQDf__TQDaTQCwTQCkZQDm"}
