; ModuleID = 'res/Kernels/stencil2d.cl'
source_filename = "res/Kernels/stencil2d.cl"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-redhat-linux-gnu"

; Function Attrs: convergent mustprogress nofree norecurse nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local spir_kernel void @ocean_jacobi_2d_flat(ptr noundef readonly align 4 captures(none) %0, ptr noundef writeonly align 4 captures(none) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 !kernel_arg_addr_space !8 !kernel_arg_access_qual !9 !kernel_arg_type !10 !kernel_arg_base_type !10 !kernel_arg_type_qual !11 {
  %5 = tail call i64 @get_global_id(i32 noundef 0) #7
  %6 = trunc i64 %5 to i32
  %7 = mul nsw i32 %3, %2
  %8 = icmp sgt i32 %7, %6
  br i1 %8, label %9, label %56

9:                                                ; preds = %4
  %10 = srem i32 %6, %2
  %11 = sdiv i32 %6, %2
  %12 = icmp eq i32 %10, 0
  br i1 %12, label %21, label %13

13:                                               ; preds = %9
  %14 = add nsw i32 %2, -1
  %15 = icmp eq i32 %10, %14
  %16 = icmp eq i32 %11, 0
  %17 = or i1 %15, %16
  %18 = add nsw i32 %3, -1
  %19 = icmp eq i32 %11, %18
  %20 = select i1 %17, i1 true, i1 %19
  br i1 %20, label %21, label %26

21:                                               ; preds = %13, %9
  %22 = shl i64 %5, 32
  %23 = ashr exact i64 %22, 32
  %24 = getelementptr inbounds float, ptr %0, i64 %23
  %25 = load float, ptr %24, align 4, !tbaa !12
  br label %52

26:                                               ; preds = %13
  %27 = shl i64 %5, 32
  %28 = ashr exact i64 %27, 32
  %29 = getelementptr inbounds float, ptr %0, i64 %28
  %30 = load float, ptr %29, align 4, !tbaa !12
  %31 = add i64 %27, -4294967296
  %32 = ashr exact i64 %31, 30
  %33 = getelementptr inbounds i8, ptr %0, i64 %32
  %34 = load float, ptr %33, align 4, !tbaa !12
  %35 = add i64 %27, 4294967296
  %36 = ashr exact i64 %35, 30
  %37 = getelementptr inbounds i8, ptr %0, i64 %36
  %38 = load float, ptr %37, align 4, !tbaa !12
  %39 = sub nsw i32 %6, %2
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds float, ptr %0, i64 %40
  %42 = load float, ptr %41, align 4, !tbaa !12
  %43 = add nsw i32 %2, %6
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds float, ptr %0, i64 %44
  %46 = load float, ptr %45, align 4, !tbaa !12
  %47 = fadd float %30, %34
  %48 = fadd float %47, %38
  %49 = fadd float %48, %42
  %50 = fadd float %49, %46
  %51 = fmul float %50, 0x3FC99999A0000000
  br label %52

52:                                               ; preds = %26, %21
  %53 = phi i64 [ %23, %21 ], [ %28, %26 ]
  %54 = phi float [ %25, %21 ], [ %51, %26 ]
  %55 = getelementptr inbounds float, ptr %1, i64 %53
  store float %54, ptr %55, align 4, !tbaa !12
  br label %56

56:                                               ; preds = %52, %4
  ret void
}

; Function Attrs: alwaysinline convergent mustprogress nofree norecurse nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @__clang_ocl_kern_imp_ocean_jacobi_2d_flat(ptr noundef readonly align 4 captures(none) %0, ptr noundef writeonly align 4 captures(none) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #1 !kernel_arg_addr_space !8 !kernel_arg_access_qual !9 !kernel_arg_type !10 !kernel_arg_base_type !10 !kernel_arg_type_qual !11 {
  %5 = tail call i64 @get_global_id(i32 noundef 0) #7
  %6 = trunc i64 %5 to i32
  %7 = mul nsw i32 %3, %2
  %8 = icmp sgt i32 %7, %6
  br i1 %8, label %9, label %56

9:                                                ; preds = %4
  %10 = srem i32 %6, %2
  %11 = sdiv i32 %6, %2
  %12 = icmp eq i32 %10, 0
  br i1 %12, label %21, label %13

13:                                               ; preds = %9
  %14 = add nsw i32 %2, -1
  %15 = icmp eq i32 %10, %14
  %16 = icmp eq i32 %11, 0
  %17 = or i1 %15, %16
  %18 = add nsw i32 %3, -1
  %19 = icmp eq i32 %11, %18
  %20 = select i1 %17, i1 true, i1 %19
  br i1 %20, label %21, label %26

21:                                               ; preds = %13, %9
  %22 = shl i64 %5, 32
  %23 = ashr exact i64 %22, 32
  %24 = getelementptr inbounds float, ptr %0, i64 %23
  %25 = load float, ptr %24, align 4, !tbaa !12
  br label %52

26:                                               ; preds = %13
  %27 = shl i64 %5, 32
  %28 = ashr exact i64 %27, 32
  %29 = getelementptr inbounds float, ptr %0, i64 %28
  %30 = load float, ptr %29, align 4, !tbaa !12
  %31 = add i64 %27, -4294967296
  %32 = ashr exact i64 %31, 30
  %33 = getelementptr inbounds i8, ptr %0, i64 %32
  %34 = load float, ptr %33, align 4, !tbaa !12
  %35 = add i64 %27, 4294967296
  %36 = ashr exact i64 %35, 30
  %37 = getelementptr inbounds i8, ptr %0, i64 %36
  %38 = load float, ptr %37, align 4, !tbaa !12
  %39 = sub nsw i32 %6, %2
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds float, ptr %0, i64 %40
  %42 = load float, ptr %41, align 4, !tbaa !12
  %43 = add nsw i32 %2, %6
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds float, ptr %0, i64 %44
  %46 = load float, ptr %45, align 4, !tbaa !12
  %47 = fadd float %30, %34
  %48 = fadd float %47, %38
  %49 = fadd float %48, %42
  %50 = fadd float %49, %46
  %51 = fmul float %50, 0x3FC99999A0000000
  br label %52

52:                                               ; preds = %26, %21
  %53 = phi i64 [ %23, %21 ], [ %28, %26 ]
  %54 = phi float [ %25, %21 ], [ %51, %26 ]
  %55 = getelementptr inbounds float, ptr %1, i64 %53
  store float %54, ptr %55, align 4, !tbaa !12
  br label %56

56:                                               ; preds = %52, %4
  ret void
}

; Function Attrs: convergent nofree norecurse nounwind memory(argmem: readwrite) uwtable
define dso_local spir_kernel void @lu_update_2d_heavy_flat(ptr noundef readonly align 4 captures(none) %0, ptr noundef writeonly align 4 captures(none) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #2 !kernel_arg_addr_space !14 !kernel_arg_access_qual !15 !kernel_arg_type !16 !kernel_arg_base_type !16 !kernel_arg_type_qual !17 {
  %6 = tail call i64 @get_global_id(i32 noundef 0) #7
  %7 = trunc i64 %6 to i32
  %8 = mul nsw i32 %3, %2
  %9 = icmp sgt i32 %8, %7
  br i1 %9, label %10, label %100

10:                                               ; preds = %5
  %11 = srem i32 %7, %2
  %12 = sdiv i32 %7, %2
  %13 = icmp eq i32 %11, 0
  br i1 %13, label %22, label %14

14:                                               ; preds = %10
  %15 = add nsw i32 %2, -1
  %16 = icmp eq i32 %11, %15
  %17 = icmp eq i32 %12, 0
  %18 = or i1 %16, %17
  %19 = add nsw i32 %3, -1
  %20 = icmp eq i32 %12, %19
  %21 = select i1 %18, i1 true, i1 %20
  br i1 %21, label %22, label %27

22:                                               ; preds = %14, %10
  %23 = shl i64 %6, 32
  %24 = ashr exact i64 %23, 32
  %25 = getelementptr inbounds float, ptr %0, i64 %24
  %26 = load float, ptr %25, align 4, !tbaa !12
  br label %96

27:                                               ; preds = %14
  %28 = shl i64 %6, 32
  %29 = ashr exact i64 %28, 32
  %30 = getelementptr inbounds float, ptr %0, i64 %29
  %31 = load float, ptr %30, align 4, !tbaa !12
  %32 = add i64 %28, -4294967296
  %33 = ashr exact i64 %32, 30
  %34 = getelementptr inbounds i8, ptr %0, i64 %33
  %35 = load float, ptr %34, align 4, !tbaa !12
  %36 = add i64 %28, 4294967296
  %37 = ashr exact i64 %36, 30
  %38 = getelementptr inbounds i8, ptr %0, i64 %37
  %39 = load float, ptr %38, align 4, !tbaa !12
  %40 = sub nsw i32 %7, %2
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds float, ptr %0, i64 %41
  %43 = load float, ptr %42, align 4, !tbaa !12
  %44 = add nsw i32 %2, %7
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds float, ptr %0, i64 %45
  %47 = load float, ptr %46, align 4, !tbaa !12
  %48 = getelementptr i8, ptr %42, i64 -4
  %49 = load float, ptr %48, align 4, !tbaa !12
  %50 = getelementptr i8, ptr %42, i64 4
  %51 = load float, ptr %50, align 4, !tbaa !12
  %52 = getelementptr i8, ptr %46, i64 -4
  %53 = load float, ptr %52, align 4, !tbaa !12
  %54 = getelementptr i8, ptr %46, i64 4
  %55 = load float, ptr %54, align 4, !tbaa !12
  %56 = fadd float %35, %39
  %57 = fadd float %56, %43
  %58 = fadd float %57, %47
  %59 = fmul float %58, 1.250000e-01
  %60 = tail call float @llvm.fmuladd.f32(float %31, float 2.500000e-01, float %59)
  %61 = fadd float %49, %51
  %62 = fadd float %61, %53
  %63 = fadd float %62, %55
  %64 = tail call float @llvm.fmuladd.f32(float %63, float 6.250000e-02, float %60)
  %65 = icmp sgt i32 %4, 0
  br i1 %65, label %66, label %96

66:                                               ; preds = %27
  %67 = and i32 %4, 3
  %68 = icmp ult i32 %4, 4
  br i1 %68, label %86, label %69

69:                                               ; preds = %66
  %70 = and i32 %4, 2147483644
  br label %71

71:                                               ; preds = %71, %69
  %72 = phi float [ %64, %69 ], [ %81, %71 ]
  %73 = phi i32 [ 0, %69 ], [ %82, %71 ]
  %74 = tail call float @llvm.fmuladd.f32(float %72, float 0x3FF0000100000000, float 0x3EB0C6F7A0000000)
  %75 = tail call float @llvm.fmuladd.f32(float %74, float 0x3FEFFFFDE0000000, float 0x3EB0C6F7A0000000)
  %76 = tail call float @llvm.fmuladd.f32(float %75, float 0x3FF0000100000000, float 0x3EB0C6F7A0000000)
  %77 = tail call float @llvm.fmuladd.f32(float %76, float 0x3FEFFFFDE0000000, float 0x3EB0C6F7A0000000)
  %78 = tail call float @llvm.fmuladd.f32(float %77, float 0x3FF0000100000000, float 0x3EB0C6F7A0000000)
  %79 = tail call float @llvm.fmuladd.f32(float %78, float 0x3FEFFFFDE0000000, float 0x3EB0C6F7A0000000)
  %80 = tail call float @llvm.fmuladd.f32(float %79, float 0x3FF0000100000000, float 0x3EB0C6F7A0000000)
  %81 = tail call float @llvm.fmuladd.f32(float %80, float 0x3FEFFFFDE0000000, float 0x3EB0C6F7A0000000)
  %82 = add i32 %73, 4
  %83 = icmp eq i32 %82, %70
  br i1 %83, label %84, label %71

84:                                               ; preds = %71
  %85 = icmp eq i32 %67, 0
  br i1 %85, label %96, label %86

86:                                               ; preds = %84, %66
  %87 = phi float [ %64, %66 ], [ %81, %84 ]
  %88 = icmp ne i32 %67, 0
  tail call void @llvm.assume(i1 %88)
  br label %89

89:                                               ; preds = %89, %86
  %90 = phi float [ %93, %89 ], [ %87, %86 ]
  %91 = phi i32 [ %94, %89 ], [ 0, %86 ]
  %92 = tail call float @llvm.fmuladd.f32(float %90, float 0x3FF0000100000000, float 0x3EB0C6F7A0000000)
  %93 = tail call float @llvm.fmuladd.f32(float %92, float 0x3FEFFFFDE0000000, float 0x3EB0C6F7A0000000)
  %94 = add i32 %91, 1
  %95 = icmp eq i32 %94, %67
  br i1 %95, label %96, label %89, !llvm.loop !18

96:                                               ; preds = %84, %89, %27, %22
  %97 = phi i64 [ %24, %22 ], [ %29, %27 ], [ %29, %89 ], [ %29, %84 ]
  %98 = phi float [ %26, %22 ], [ %64, %27 ], [ %81, %84 ], [ %93, %89 ]
  %99 = getelementptr inbounds float, ptr %1, i64 %97
  store float %98, ptr %99, align 4, !tbaa !12
  br label %100

100:                                              ; preds = %96, %5
  ret void
}

; Function Attrs: alwaysinline convergent nofree norecurse nounwind memory(argmem: readwrite) uwtable
define dso_local void @__clang_ocl_kern_imp_lu_update_2d_heavy_flat(ptr noundef readonly align 4 captures(none) %0, ptr noundef writeonly align 4 captures(none) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #3 !kernel_arg_addr_space !14 !kernel_arg_access_qual !15 !kernel_arg_type !16 !kernel_arg_base_type !16 !kernel_arg_type_qual !17 {
  %6 = tail call i64 @get_global_id(i32 noundef 0) #7
  %7 = trunc i64 %6 to i32
  %8 = mul nsw i32 %3, %2
  %9 = icmp sgt i32 %8, %7
  br i1 %9, label %10, label %100

10:                                               ; preds = %5
  %11 = srem i32 %7, %2
  %12 = sdiv i32 %7, %2
  %13 = icmp eq i32 %11, 0
  br i1 %13, label %22, label %14

14:                                               ; preds = %10
  %15 = add nsw i32 %2, -1
  %16 = icmp eq i32 %11, %15
  %17 = icmp eq i32 %12, 0
  %18 = or i1 %16, %17
  %19 = add nsw i32 %3, -1
  %20 = icmp eq i32 %12, %19
  %21 = select i1 %18, i1 true, i1 %20
  br i1 %21, label %22, label %27

22:                                               ; preds = %14, %10
  %23 = shl i64 %6, 32
  %24 = ashr exact i64 %23, 32
  %25 = getelementptr inbounds float, ptr %0, i64 %24
  %26 = load float, ptr %25, align 4, !tbaa !12
  br label %96

27:                                               ; preds = %14
  %28 = shl i64 %6, 32
  %29 = ashr exact i64 %28, 32
  %30 = getelementptr inbounds float, ptr %0, i64 %29
  %31 = load float, ptr %30, align 4, !tbaa !12
  %32 = add i64 %28, -4294967296
  %33 = ashr exact i64 %32, 30
  %34 = getelementptr inbounds i8, ptr %0, i64 %33
  %35 = load float, ptr %34, align 4, !tbaa !12
  %36 = add i64 %28, 4294967296
  %37 = ashr exact i64 %36, 30
  %38 = getelementptr inbounds i8, ptr %0, i64 %37
  %39 = load float, ptr %38, align 4, !tbaa !12
  %40 = sub nsw i32 %7, %2
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds float, ptr %0, i64 %41
  %43 = load float, ptr %42, align 4, !tbaa !12
  %44 = add nsw i32 %2, %7
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds float, ptr %0, i64 %45
  %47 = load float, ptr %46, align 4, !tbaa !12
  %48 = getelementptr i8, ptr %42, i64 -4
  %49 = load float, ptr %48, align 4, !tbaa !12
  %50 = getelementptr i8, ptr %42, i64 4
  %51 = load float, ptr %50, align 4, !tbaa !12
  %52 = getelementptr i8, ptr %46, i64 -4
  %53 = load float, ptr %52, align 4, !tbaa !12
  %54 = getelementptr i8, ptr %46, i64 4
  %55 = load float, ptr %54, align 4, !tbaa !12
  %56 = fadd float %35, %39
  %57 = fadd float %56, %43
  %58 = fadd float %57, %47
  %59 = fmul float %58, 1.250000e-01
  %60 = tail call float @llvm.fmuladd.f32(float %31, float 2.500000e-01, float %59)
  %61 = fadd float %49, %51
  %62 = fadd float %61, %53
  %63 = fadd float %62, %55
  %64 = tail call float @llvm.fmuladd.f32(float %63, float 6.250000e-02, float %60)
  %65 = icmp sgt i32 %4, 0
  br i1 %65, label %66, label %96

66:                                               ; preds = %27
  %67 = and i32 %4, 3
  %68 = icmp ult i32 %4, 4
  br i1 %68, label %86, label %69

69:                                               ; preds = %66
  %70 = and i32 %4, 2147483644
  br label %71

71:                                               ; preds = %71, %69
  %72 = phi float [ %64, %69 ], [ %81, %71 ]
  %73 = phi i32 [ 0, %69 ], [ %82, %71 ]
  %74 = tail call float @llvm.fmuladd.f32(float %72, float 0x3FF0000100000000, float 0x3EB0C6F7A0000000)
  %75 = tail call float @llvm.fmuladd.f32(float %74, float 0x3FEFFFFDE0000000, float 0x3EB0C6F7A0000000)
  %76 = tail call float @llvm.fmuladd.f32(float %75, float 0x3FF0000100000000, float 0x3EB0C6F7A0000000)
  %77 = tail call float @llvm.fmuladd.f32(float %76, float 0x3FEFFFFDE0000000, float 0x3EB0C6F7A0000000)
  %78 = tail call float @llvm.fmuladd.f32(float %77, float 0x3FF0000100000000, float 0x3EB0C6F7A0000000)
  %79 = tail call float @llvm.fmuladd.f32(float %78, float 0x3FEFFFFDE0000000, float 0x3EB0C6F7A0000000)
  %80 = tail call float @llvm.fmuladd.f32(float %79, float 0x3FF0000100000000, float 0x3EB0C6F7A0000000)
  %81 = tail call float @llvm.fmuladd.f32(float %80, float 0x3FEFFFFDE0000000, float 0x3EB0C6F7A0000000)
  %82 = add i32 %73, 4
  %83 = icmp eq i32 %82, %70
  br i1 %83, label %84, label %71

84:                                               ; preds = %71
  %85 = icmp eq i32 %67, 0
  br i1 %85, label %96, label %86

86:                                               ; preds = %84, %66
  %87 = phi float [ %64, %66 ], [ %81, %84 ]
  %88 = icmp ne i32 %67, 0
  tail call void @llvm.assume(i1 %88)
  br label %89

89:                                               ; preds = %89, %86
  %90 = phi float [ %93, %89 ], [ %87, %86 ]
  %91 = phi i32 [ %94, %89 ], [ 0, %86 ]
  %92 = tail call float @llvm.fmuladd.f32(float %90, float 0x3FF0000100000000, float 0x3EB0C6F7A0000000)
  %93 = tail call float @llvm.fmuladd.f32(float %92, float 0x3FEFFFFDE0000000, float 0x3EB0C6F7A0000000)
  %94 = add i32 %91, 1
  %95 = icmp eq i32 %94, %67
  br i1 %95, label %96, label %89, !llvm.loop !20

96:                                               ; preds = %84, %89, %27, %22
  %97 = phi i64 [ %24, %22 ], [ %29, %27 ], [ %29, %89 ], [ %29, %84 ]
  %98 = phi float [ %26, %22 ], [ %64, %27 ], [ %81, %84 ], [ %93, %89 ]
  %99 = getelementptr inbounds float, ptr %1, i64 %97
  store float %98, ptr %99, align 4, !tbaa !12
  br label %100

100:                                              ; preds = %96, %5
  ret void
}

; Function Attrs: convergent nofree norecurse nounwind memory(argmem: readwrite) uwtable
define dso_local spir_kernel void @map_heavy_1d(ptr noundef readonly align 4 captures(none) %0, ptr noundef writeonly align 4 captures(none) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #2 !kernel_arg_addr_space !8 !kernel_arg_access_qual !9 !kernel_arg_type !10 !kernel_arg_base_type !10 !kernel_arg_type_qual !11 {
  %5 = tail call i64 @get_global_id(i32 noundef 0) #7
  %6 = trunc i64 %5 to i32
  %7 = icmp sgt i32 %2, %6
  br i1 %7, label %8, label %48

8:                                                ; preds = %4
  %9 = shl i64 %5, 32
  %10 = ashr exact i64 %9, 32
  %11 = getelementptr inbounds float, ptr %0, i64 %10
  %12 = load float, ptr %11, align 4, !tbaa !12
  %13 = tail call float @llvm.fmuladd.f32(float %12, float 0x3FF3C0C960000000, float 0x3FE87E6B40000000)
  %14 = icmp sgt i32 %3, 0
  br i1 %14, label %15, label %45

15:                                               ; preds = %8
  %16 = and i32 %3, 3
  %17 = icmp ult i32 %3, 4
  br i1 %17, label %35, label %18

18:                                               ; preds = %15
  %19 = and i32 %3, 2147483644
  br label %20

20:                                               ; preds = %20, %18
  %21 = phi float [ %13, %18 ], [ %30, %20 ]
  %22 = phi i32 [ 0, %18 ], [ %31, %20 ]
  %23 = tail call float @llvm.fmuladd.f32(float %21, float 0x3FF0000100000000, float 0x3EB0C6F7A0000000)
  %24 = tail call float @llvm.fmuladd.f32(float %23, float 0x3FEFFFFDE0000000, float 0x3EB0C6F7A0000000)
  %25 = tail call float @llvm.fmuladd.f32(float %24, float 0x3FF0000100000000, float 0x3EB0C6F7A0000000)
  %26 = tail call float @llvm.fmuladd.f32(float %25, float 0x3FEFFFFDE0000000, float 0x3EB0C6F7A0000000)
  %27 = tail call float @llvm.fmuladd.f32(float %26, float 0x3FF0000100000000, float 0x3EB0C6F7A0000000)
  %28 = tail call float @llvm.fmuladd.f32(float %27, float 0x3FEFFFFDE0000000, float 0x3EB0C6F7A0000000)
  %29 = tail call float @llvm.fmuladd.f32(float %28, float 0x3FF0000100000000, float 0x3EB0C6F7A0000000)
  %30 = tail call float @llvm.fmuladd.f32(float %29, float 0x3FEFFFFDE0000000, float 0x3EB0C6F7A0000000)
  %31 = add i32 %22, 4
  %32 = icmp eq i32 %31, %19
  br i1 %32, label %33, label %20

33:                                               ; preds = %20
  %34 = icmp eq i32 %16, 0
  br i1 %34, label %45, label %35

35:                                               ; preds = %33, %15
  %36 = phi float [ %13, %15 ], [ %30, %33 ]
  %37 = icmp ne i32 %16, 0
  tail call void @llvm.assume(i1 %37)
  br label %38

38:                                               ; preds = %38, %35
  %39 = phi float [ %42, %38 ], [ %36, %35 ]
  %40 = phi i32 [ %43, %38 ], [ 0, %35 ]
  %41 = tail call float @llvm.fmuladd.f32(float %39, float 0x3FF0000100000000, float 0x3EB0C6F7A0000000)
  %42 = tail call float @llvm.fmuladd.f32(float %41, float 0x3FEFFFFDE0000000, float 0x3EB0C6F7A0000000)
  %43 = add i32 %40, 1
  %44 = icmp eq i32 %43, %16
  br i1 %44, label %45, label %38, !llvm.loop !21

45:                                               ; preds = %33, %38, %8
  %46 = phi float [ %13, %8 ], [ %30, %33 ], [ %42, %38 ]
  %47 = getelementptr inbounds float, ptr %1, i64 %10
  store float %46, ptr %47, align 4, !tbaa !12
  br label %48

48:                                               ; preds = %4, %45
  ret void
}

; Function Attrs: alwaysinline convergent nofree norecurse nounwind memory(argmem: readwrite) uwtable
define dso_local void @__clang_ocl_kern_imp_map_heavy_1d(ptr noundef readonly align 4 captures(none) %0, ptr noundef writeonly align 4 captures(none) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #3 !kernel_arg_addr_space !8 !kernel_arg_access_qual !9 !kernel_arg_type !10 !kernel_arg_base_type !10 !kernel_arg_type_qual !11 {
  %5 = tail call i64 @get_global_id(i32 noundef 0) #7
  %6 = trunc i64 %5 to i32
  %7 = icmp sgt i32 %2, %6
  br i1 %7, label %8, label %48

8:                                                ; preds = %4
  %9 = shl i64 %5, 32
  %10 = ashr exact i64 %9, 32
  %11 = getelementptr inbounds float, ptr %0, i64 %10
  %12 = load float, ptr %11, align 4, !tbaa !12
  %13 = tail call float @llvm.fmuladd.f32(float %12, float 0x3FF3C0C960000000, float 0x3FE87E6B40000000)
  %14 = icmp sgt i32 %3, 0
  br i1 %14, label %15, label %45

15:                                               ; preds = %8
  %16 = and i32 %3, 3
  %17 = icmp ult i32 %3, 4
  br i1 %17, label %35, label %18

18:                                               ; preds = %15
  %19 = and i32 %3, 2147483644
  br label %20

20:                                               ; preds = %20, %18
  %21 = phi float [ %13, %18 ], [ %30, %20 ]
  %22 = phi i32 [ 0, %18 ], [ %31, %20 ]
  %23 = tail call float @llvm.fmuladd.f32(float %21, float 0x3FF0000100000000, float 0x3EB0C6F7A0000000)
  %24 = tail call float @llvm.fmuladd.f32(float %23, float 0x3FEFFFFDE0000000, float 0x3EB0C6F7A0000000)
  %25 = tail call float @llvm.fmuladd.f32(float %24, float 0x3FF0000100000000, float 0x3EB0C6F7A0000000)
  %26 = tail call float @llvm.fmuladd.f32(float %25, float 0x3FEFFFFDE0000000, float 0x3EB0C6F7A0000000)
  %27 = tail call float @llvm.fmuladd.f32(float %26, float 0x3FF0000100000000, float 0x3EB0C6F7A0000000)
  %28 = tail call float @llvm.fmuladd.f32(float %27, float 0x3FEFFFFDE0000000, float 0x3EB0C6F7A0000000)
  %29 = tail call float @llvm.fmuladd.f32(float %28, float 0x3FF0000100000000, float 0x3EB0C6F7A0000000)
  %30 = tail call float @llvm.fmuladd.f32(float %29, float 0x3FEFFFFDE0000000, float 0x3EB0C6F7A0000000)
  %31 = add i32 %22, 4
  %32 = icmp eq i32 %31, %19
  br i1 %32, label %33, label %20

33:                                               ; preds = %20
  %34 = icmp eq i32 %16, 0
  br i1 %34, label %45, label %35

35:                                               ; preds = %33, %15
  %36 = phi float [ %13, %15 ], [ %30, %33 ]
  %37 = icmp ne i32 %16, 0
  tail call void @llvm.assume(i1 %37)
  br label %38

38:                                               ; preds = %38, %35
  %39 = phi float [ %42, %38 ], [ %36, %35 ]
  %40 = phi i32 [ %43, %38 ], [ 0, %35 ]
  %41 = tail call float @llvm.fmuladd.f32(float %39, float 0x3FF0000100000000, float 0x3EB0C6F7A0000000)
  %42 = tail call float @llvm.fmuladd.f32(float %41, float 0x3FEFFFFDE0000000, float 0x3EB0C6F7A0000000)
  %43 = add i32 %40, 1
  %44 = icmp eq i32 %43, %16
  br i1 %44, label %45, label %38, !llvm.loop !22

45:                                               ; preds = %33, %38, %8
  %46 = phi float [ %13, %8 ], [ %30, %33 ], [ %42, %38 ]
  %47 = getelementptr inbounds float, ptr %1, i64 %10
  store float %46, ptr %47, align 4, !tbaa !12
  br label %48

48:                                               ; preds = %4, %45
  ret void
}

; Function Attrs: convergent mustprogress nofree nounwind willreturn memory(none)
declare dso_local i64 @get_global_id(i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #6

attributes #0 = { convergent mustprogress nofree norecurse nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "uniform-work-group-size"="true" }
attributes #1 = { alwaysinline convergent mustprogress nofree norecurse nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { convergent nofree norecurse nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "uniform-work-group-size"="true" }
attributes #3 = { alwaysinline convergent nofree norecurse nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { convergent mustprogress nofree nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #7 = { convergent nounwind willreturn memory(none) }

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
!8 = !{i32 1, i32 1, i32 0, i32 0}
!9 = !{!"none", !"none", !"none", !"none"}
!10 = !{!"float*", !"float*", !"int", !"int"}
!11 = !{!"const", !"", !"", !""}
!12 = !{!13, !13, i64 0}
!13 = !{!"float", !6, i64 0}
!14 = !{i32 1, i32 1, i32 0, i32 0, i32 0}
!15 = !{!"none", !"none", !"none", !"none", !"none"}
!16 = !{!"float*", !"float*", !"int", !"int", !"int"}
!17 = !{!"const", !"", !"", !"", !""}
!18 = distinct !{!18, !19}
!19 = !{!"llvm.loop.unroll.disable"}
!20 = distinct !{!20, !19}
!21 = distinct !{!21, !19}
!22 = distinct !{!22, !19}
