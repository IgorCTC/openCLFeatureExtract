; ModuleID = 'res/Kernels/stencil1d.cl'
source_filename = "res/Kernels/stencil1d.cl"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-redhat-linux-gnu"

; Function Attrs: convergent mustprogress nofree norecurse nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local spir_kernel void @Stencil1D(ptr noundef readonly align 4 captures(none) %0, ptr noundef writeonly align 4 captures(none) %1, i32 noundef %2) local_unnamed_addr #0 !kernel_arg_addr_space !8 !kernel_arg_access_qual !9 !kernel_arg_type !10 !kernel_arg_base_type !10 !kernel_arg_type_qual !11 {
  %4 = tail call i64 @get_global_id(i32 noundef 0) #3
  %5 = trunc i64 %4 to i32
  %6 = icmp sgt i32 %2, %5
  br i1 %6, label %7, label %36

7:                                                ; preds = %3
  %8 = icmp eq i32 %5, 0
  %9 = add nsw i32 %2, -1
  %10 = icmp eq i32 %9, %5
  %11 = select i1 %8, i1 true, i1 %10
  %12 = shl i64 %4, 32
  br i1 %11, label %13, label %17

13:                                               ; preds = %7
  %14 = ashr exact i64 %12, 32
  %15 = getelementptr inbounds float, ptr %0, i64 %14
  %16 = load float, ptr %15, align 4, !tbaa !12
  br label %32

17:                                               ; preds = %7
  %18 = add i64 %12, -4294967296
  %19 = ashr exact i64 %18, 30
  %20 = getelementptr inbounds i8, ptr %0, i64 %19
  %21 = load float, ptr %20, align 4, !tbaa !12
  %22 = ashr exact i64 %12, 32
  %23 = getelementptr inbounds float, ptr %0, i64 %22
  %24 = load float, ptr %23, align 4, !tbaa !12
  %25 = fadd float %21, %24
  %26 = add i64 %12, 4294967296
  %27 = ashr exact i64 %26, 30
  %28 = getelementptr inbounds i8, ptr %0, i64 %27
  %29 = load float, ptr %28, align 4, !tbaa !12
  %30 = fadd float %25, %29
  %31 = fdiv float %30, 3.000000e+00, !fpmath !14
  br label %32

32:                                               ; preds = %17, %13
  %33 = phi i64 [ %14, %13 ], [ %22, %17 ]
  %34 = phi float [ %16, %13 ], [ %31, %17 ]
  %35 = getelementptr inbounds float, ptr %1, i64 %33
  store float %34, ptr %35, align 4, !tbaa !12
  br label %36

36:                                               ; preds = %32, %3
  ret void
}

; Function Attrs: alwaysinline convergent mustprogress nofree norecurse nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @__clang_ocl_kern_imp_Stencil1D(ptr noundef readonly align 4 captures(none) %0, ptr noundef writeonly align 4 captures(none) %1, i32 noundef %2) local_unnamed_addr #1 !kernel_arg_addr_space !8 !kernel_arg_access_qual !9 !kernel_arg_type !10 !kernel_arg_base_type !10 !kernel_arg_type_qual !11 {
  %4 = tail call i64 @get_global_id(i32 noundef 0) #3
  %5 = trunc i64 %4 to i32
  %6 = icmp sgt i32 %2, %5
  br i1 %6, label %7, label %36

7:                                                ; preds = %3
  %8 = icmp eq i32 %5, 0
  %9 = add nsw i32 %2, -1
  %10 = icmp eq i32 %9, %5
  %11 = select i1 %8, i1 true, i1 %10
  %12 = shl i64 %4, 32
  br i1 %11, label %13, label %17

13:                                               ; preds = %7
  %14 = ashr exact i64 %12, 32
  %15 = getelementptr inbounds float, ptr %0, i64 %14
  %16 = load float, ptr %15, align 4, !tbaa !12
  br label %32

17:                                               ; preds = %7
  %18 = add i64 %12, -4294967296
  %19 = ashr exact i64 %18, 30
  %20 = getelementptr inbounds i8, ptr %0, i64 %19
  %21 = load float, ptr %20, align 4, !tbaa !12
  %22 = ashr exact i64 %12, 32
  %23 = getelementptr inbounds float, ptr %0, i64 %22
  %24 = load float, ptr %23, align 4, !tbaa !12
  %25 = fadd float %21, %24
  %26 = add i64 %12, 4294967296
  %27 = ashr exact i64 %26, 30
  %28 = getelementptr inbounds i8, ptr %0, i64 %27
  %29 = load float, ptr %28, align 4, !tbaa !12
  %30 = fadd float %25, %29
  %31 = fdiv float %30, 3.000000e+00, !fpmath !14
  br label %32

32:                                               ; preds = %13, %17
  %33 = phi i64 [ %22, %17 ], [ %14, %13 ]
  %34 = phi float [ %31, %17 ], [ %16, %13 ]
  %35 = getelementptr inbounds float, ptr %1, i64 %33
  store float %34, ptr %35, align 4, !tbaa !12
  br label %36

36:                                               ; preds = %32, %3
  ret void
}

; Function Attrs: convergent mustprogress nofree nounwind willreturn memory(none)
declare dso_local i64 @get_global_id(i32 noundef) local_unnamed_addr #2

attributes #0 = { convergent mustprogress nofree norecurse nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "uniform-work-group-size"="true" }
attributes #1 = { alwaysinline convergent mustprogress nofree norecurse nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { convergent mustprogress nofree nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { convergent nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1}
!opencl.ocl.version = !{!2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 1, i32 2}
!3 = !{!"clang version 22.1.8 (Fedora 22.1.8-4.fc44)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{i32 1, i32 1, i32 0}
!9 = !{!"none", !"none", !"none"}
!10 = !{!"float*", !"float*", !"int"}
!11 = !{!"const", !"", !""}
!12 = !{!13, !13, i64 0}
!13 = !{!"float", !6, i64 0}
!14 = !{float 2.500000e+00}
