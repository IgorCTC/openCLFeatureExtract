; ModuleID = 'res/Kernels/multi_kernel.cl'
source_filename = "res/Kernels/multi_kernel.cl"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-redhat-linux-gnu"

; Function Attrs: convergent mustprogress nofree norecurse nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local spir_kernel void @gradient(ptr noundef readonly align 4 captures(none) %0, ptr noundef writeonly align 4 captures(none) %1, i32 noundef %2) local_unnamed_addr #0 !kernel_arg_addr_space !8 !kernel_arg_access_qual !9 !kernel_arg_type !10 !kernel_arg_base_type !10 !kernel_arg_type_qual !11 {
  %4 = tail call i64 @get_global_id(i32 noundef 0) #4
  %5 = trunc i64 %4 to i32
  %6 = icmp sgt i32 %2, %5
  br i1 %6, label %7, label %28

7:                                                ; preds = %3
  %8 = icmp eq i32 %5, 0
  %9 = add nsw i32 %2, -1
  %10 = icmp eq i32 %9, %5
  %11 = select i1 %8, i1 true, i1 %10
  %12 = shl i64 %4, 32
  br i1 %11, label %24, label %13

13:                                               ; preds = %7
  %14 = add i64 %12, 4294967296
  %15 = ashr exact i64 %14, 30
  %16 = getelementptr inbounds i8, ptr %0, i64 %15
  %17 = load float, ptr %16, align 4, !tbaa !12
  %18 = add i64 %12, -4294967296
  %19 = ashr exact i64 %18, 30
  %20 = getelementptr inbounds i8, ptr %0, i64 %19
  %21 = load float, ptr %20, align 4, !tbaa !12
  %22 = fsub float %17, %21
  %23 = fmul float %22, 5.000000e-01
  br label %24

24:                                               ; preds = %7, %13
  %25 = phi float [ %23, %13 ], [ 0.000000e+00, %7 ]
  %26 = ashr exact i64 %12, 30
  %27 = getelementptr inbounds i8, ptr %1, i64 %26
  store float %25, ptr %27, align 4, !tbaa !12
  br label %28

28:                                               ; preds = %3, %24
  ret void
}

; Function Attrs: alwaysinline convergent mustprogress nofree norecurse nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @__clang_ocl_kern_imp_gradient(ptr noundef readonly align 4 captures(none) %0, ptr noundef writeonly align 4 captures(none) %1, i32 noundef %2) local_unnamed_addr #1 !kernel_arg_addr_space !8 !kernel_arg_access_qual !9 !kernel_arg_type !10 !kernel_arg_base_type !10 !kernel_arg_type_qual !11 {
  %4 = tail call i64 @get_global_id(i32 noundef 0) #4
  %5 = trunc i64 %4 to i32
  %6 = icmp sgt i32 %2, %5
  br i1 %6, label %7, label %28

7:                                                ; preds = %3
  %8 = icmp eq i32 %5, 0
  %9 = add nsw i32 %2, -1
  %10 = icmp eq i32 %9, %5
  %11 = select i1 %8, i1 true, i1 %10
  %12 = shl i64 %4, 32
  br i1 %11, label %24, label %13

13:                                               ; preds = %7
  %14 = add i64 %12, 4294967296
  %15 = ashr exact i64 %14, 30
  %16 = getelementptr inbounds i8, ptr %0, i64 %15
  %17 = load float, ptr %16, align 4, !tbaa !12
  %18 = add i64 %12, -4294967296
  %19 = ashr exact i64 %18, 30
  %20 = getelementptr inbounds i8, ptr %0, i64 %19
  %21 = load float, ptr %20, align 4, !tbaa !12
  %22 = fsub float %17, %21
  %23 = fmul float %22, 5.000000e-01
  br label %24

24:                                               ; preds = %7, %13
  %25 = phi float [ %23, %13 ], [ 0.000000e+00, %7 ]
  %26 = ashr exact i64 %12, 30
  %27 = getelementptr inbounds i8, ptr %1, i64 %26
  store float %25, ptr %27, align 4, !tbaa !12
  br label %28

28:                                               ; preds = %3, %24
  ret void
}

; Function Attrs: convergent mustprogress nofree norecurse nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local spir_kernel void @update(ptr noundef readonly align 4 captures(none) %0, ptr noundef readonly align 4 captures(none) %1, ptr noundef writeonly align 4 captures(none) %2, float noundef %3, i32 noundef %4) local_unnamed_addr #0 !kernel_arg_addr_space !14 !kernel_arg_access_qual !15 !kernel_arg_type !16 !kernel_arg_base_type !16 !kernel_arg_type_qual !17 {
  %6 = tail call i64 @get_global_id(i32 noundef 0) #4
  %7 = trunc i64 %6 to i32
  %8 = icmp sgt i32 %4, %7
  br i1 %8, label %9, label %33

9:                                                ; preds = %5
  %10 = icmp eq i32 %7, 0
  %11 = add nsw i32 %4, -1
  %12 = icmp eq i32 %11, %7
  %13 = select i1 %10, i1 true, i1 %12
  %14 = shl i64 %6, 32
  %15 = ashr exact i64 %14, 30
  %16 = getelementptr inbounds i8, ptr %0, i64 %15
  %17 = load float, ptr %16, align 4, !tbaa !12
  br i1 %13, label %30, label %18

18:                                               ; preds = %9
  %19 = fmul float %3, 5.000000e-01
  %20 = add i64 %14, 4294967296
  %21 = ashr exact i64 %20, 30
  %22 = getelementptr inbounds i8, ptr %1, i64 %21
  %23 = load float, ptr %22, align 4, !tbaa !12
  %24 = add i64 %14, -4294967296
  %25 = ashr exact i64 %24, 30
  %26 = getelementptr inbounds i8, ptr %1, i64 %25
  %27 = load float, ptr %26, align 4, !tbaa !12
  %28 = fsub float %23, %27
  %29 = tail call float @llvm.fmuladd.f32(float %19, float %28, float %17)
  br label %30

30:                                               ; preds = %9, %18
  %31 = phi float [ %29, %18 ], [ %17, %9 ]
  %32 = getelementptr inbounds i8, ptr %2, i64 %15
  store float %31, ptr %32, align 4, !tbaa !12
  br label %33

33:                                               ; preds = %5, %30
  ret void
}

; Function Attrs: alwaysinline convergent mustprogress nofree norecurse nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @__clang_ocl_kern_imp_update(ptr noundef readonly align 4 captures(none) %0, ptr noundef readonly align 4 captures(none) %1, ptr noundef writeonly align 4 captures(none) %2, float noundef %3, i32 noundef %4) local_unnamed_addr #1 !kernel_arg_addr_space !14 !kernel_arg_access_qual !15 !kernel_arg_type !16 !kernel_arg_base_type !16 !kernel_arg_type_qual !17 {
  %6 = tail call i64 @get_global_id(i32 noundef 0) #4
  %7 = trunc i64 %6 to i32
  %8 = icmp sgt i32 %4, %7
  br i1 %8, label %9, label %33

9:                                                ; preds = %5
  %10 = icmp eq i32 %7, 0
  %11 = add nsw i32 %4, -1
  %12 = icmp eq i32 %11, %7
  %13 = select i1 %10, i1 true, i1 %12
  %14 = shl i64 %6, 32
  %15 = ashr exact i64 %14, 30
  %16 = getelementptr inbounds i8, ptr %0, i64 %15
  %17 = load float, ptr %16, align 4, !tbaa !12
  br i1 %13, label %30, label %18

18:                                               ; preds = %9
  %19 = fmul float %3, 5.000000e-01
  %20 = add i64 %14, 4294967296
  %21 = ashr exact i64 %20, 30
  %22 = getelementptr inbounds i8, ptr %1, i64 %21
  %23 = load float, ptr %22, align 4, !tbaa !12
  %24 = add i64 %14, -4294967296
  %25 = ashr exact i64 %24, 30
  %26 = getelementptr inbounds i8, ptr %1, i64 %25
  %27 = load float, ptr %26, align 4, !tbaa !12
  %28 = fsub float %23, %27
  %29 = tail call float @llvm.fmuladd.f32(float %19, float %28, float %17)
  br label %30

30:                                               ; preds = %9, %18
  %31 = phi float [ %29, %18 ], [ %17, %9 ]
  %32 = getelementptr inbounds i8, ptr %2, i64 %15
  store float %31, ptr %32, align 4, !tbaa !12
  br label %33

33:                                               ; preds = %5, %30
  ret void
}

; Function Attrs: convergent mustprogress nofree norecurse nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local spir_kernel void @energy(ptr noundef readonly align 4 captures(none) %0, ptr noundef writeonly align 4 captures(none) %1, i32 noundef %2) local_unnamed_addr #0 !kernel_arg_addr_space !8 !kernel_arg_access_qual !9 !kernel_arg_type !10 !kernel_arg_base_type !10 !kernel_arg_type_qual !11 {
  %4 = tail call i64 @get_global_id(i32 noundef 0) #4
  %5 = trunc i64 %4 to i32
  %6 = icmp sgt i32 %2, %5
  br i1 %6, label %7, label %14

7:                                                ; preds = %3
  %8 = shl i64 %4, 32
  %9 = ashr exact i64 %8, 32
  %10 = getelementptr inbounds float, ptr %0, i64 %9
  %11 = load float, ptr %10, align 4, !tbaa !12
  %12 = fmul float %11, %11
  %13 = getelementptr inbounds float, ptr %1, i64 %9
  store float %12, ptr %13, align 4, !tbaa !12
  br label %14

14:                                               ; preds = %3, %7
  ret void
}

; Function Attrs: alwaysinline convergent mustprogress nofree norecurse nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @__clang_ocl_kern_imp_energy(ptr noundef readonly align 4 captures(none) %0, ptr noundef writeonly align 4 captures(none) %1, i32 noundef %2) local_unnamed_addr #1 !kernel_arg_addr_space !8 !kernel_arg_access_qual !9 !kernel_arg_type !10 !kernel_arg_base_type !10 !kernel_arg_type_qual !11 {
  %4 = tail call i64 @get_global_id(i32 noundef 0) #4
  %5 = trunc i64 %4 to i32
  %6 = icmp sgt i32 %2, %5
  br i1 %6, label %7, label %14

7:                                                ; preds = %3
  %8 = shl i64 %4, 32
  %9 = ashr exact i64 %8, 32
  %10 = getelementptr inbounds float, ptr %0, i64 %9
  %11 = load float, ptr %10, align 4, !tbaa !12
  %12 = fmul float %11, %11
  %13 = getelementptr inbounds float, ptr %1, i64 %9
  store float %12, ptr %13, align 4, !tbaa !12
  br label %14

14:                                               ; preds = %3, %7
  ret void
}

; Function Attrs: convergent mustprogress nofree nounwind willreturn memory(none)
declare dso_local i64 @get_global_id(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #3

attributes #0 = { convergent mustprogress nofree norecurse nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "uniform-work-group-size"="true" }
attributes #1 = { alwaysinline convergent mustprogress nofree norecurse nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { convergent mustprogress nofree nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { convergent nounwind willreturn memory(none) }

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
!14 = !{i32 1, i32 1, i32 1, i32 0, i32 0}
!15 = !{!"none", !"none", !"none", !"none", !"none"}
!16 = !{!"float*", !"float*", !"float*", !"float", !"int"}
!17 = !{!"const", !"const", !"", !"", !""}
