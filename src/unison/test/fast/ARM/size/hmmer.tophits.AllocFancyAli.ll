; ModuleID = 'hmmer.tophits.AllocFancyAli.ll'
target datalayout = "e-m:e-p:32:32-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv6t2-pc-linux-eabi"

%struct.fancyali_s.23 = type { i8*, i8*, i8*, i8*, i8*, i32, i8*, i8*, i32, i32 }

@.str = external hidden unnamed_addr constant [10 x i8], align 1

declare i8* @sre_malloc(i8*, i32, i32) #0

; Function Attrs: nounwind
define %struct.fancyali_s.23* @AllocFancyAli() #1 {
  %1 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i32 117, i32 40) #3
  %2 = bitcast i8* %1 to %struct.fancyali_s.23*
  %3 = getelementptr inbounds i8, i8* %1, i32 24
  tail call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 20, i32 4, i1 false)
  tail call void @llvm.memset.p0i8.i64(i8* %3, i8 0, i64 16, i32 4, i1 false)
  ret %struct.fancyali_s.23* %2
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #2

attributes #0 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="arm1156t2-s" "target-features"="+dsp,+strict-align" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="arm1156t2-s" "target-features"="+dsp,+strict-align" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{!"clang version 3.8.0 (http://llvm.org/git/clang.git 2d49f0a0ae8366964a93e3b7b26e29679bee7160) (http://llvm.org/git/llvm.git 60bc66b44837125843b58ed3e0fd2e6bb948d839)"}
