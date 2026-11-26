; ModuleID = 'res/Kernels/his.cl'
source_filename = "res/Kernels/his.cl"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-redhat-linux-gnu"

@deltaT = dso_local local_unnamed_addr constant float 0x3EB0C6F7A0000000, align 4
@keqch = dso_local local_unnamed_addr constant float 1.000000e+00, align 4
@Pmax = dso_local local_unnamed_addr constant float 0x4026CCCCC0000000, align 4
@Pmin = dso_local local_unnamed_addr constant float 0x3F1A36E2E0000000, align 4
@NMaxTissue = dso_local local_unnamed_addr constant float 8.000000e+00, align 4
@MrPMax = dso_local local_unnamed_addr constant float 0x3FB99999A0000000, align 4
@MrPMin = dso_local local_unnamed_addr constant float 0x3F847AE140000000, align 4
@MrMaxTissue = dso_local local_unnamed_addr constant float 6.000000e+00, align 4
@maActivationRate = dso_local local_unnamed_addr constant float 0x3FB99999A0000000, align 4
@m_a = dso_local local_unnamed_addr constant float 0.000000e+00, align 4
@l_n_a = dso_local local_unnamed_addr constant float 0x3FE19999A0000000, align 4
@l_ma_a = dso_local local_unnamed_addr constant float 0x3FE99999A0000000, align 4
@d_a = dso_local local_unnamed_addr constant float 2.000000e+00, align 4
@m_mr = dso_local local_unnamed_addr constant float 0x3FA0E56040000000, align 4
@d_mr = dso_local local_unnamed_addr constant float 0x401147AE20000000, align 4
@x_mr = dso_local local_unnamed_addr constant float 0x400CCCCCC0000000, align 4
@m_ma = dso_local local_unnamed_addr constant float 0x3FB1EB8520000000, align 4
@d_ma = dso_local local_unnamed_addr constant float 3.000000e+00, align 4
@x_ma = dso_local local_unnamed_addr constant float 0x401147AE20000000, align 4
@m_n = dso_local local_unnamed_addr constant float 0x400B70A3E0000000, align 4
@d_n = dso_local local_unnamed_addr constant float 0x40283126E0000000, align 4
@x_n = dso_local local_unnamed_addr constant float 0x402CCCCCC0000000, align 4
@m_ch = dso_local local_unnamed_addr constant float 7.000000e+00, align 4
@b_ch_n = dso_local local_unnamed_addr constant float 1.000000e+00, align 4
@b_ch_ma = dso_local local_unnamed_addr constant float 0x3FE99999A0000000, align 4
@d_ch = dso_local local_unnamed_addr constant float 0x40226E9780000000, align 4
@chInf = dso_local local_unnamed_addr constant float 0x400CCCCCC0000000, align 4
@l_nd_ma = dso_local local_unnamed_addr constant float 0x4004CCCCC0000000, align 4
@d_nd = dso_local local_unnamed_addr constant float 0x3F22DFD6A0000000, align 4
@m_g = dso_local local_unnamed_addr constant float 5.000000e+00, align 4
@b_g_n = dso_local local_unnamed_addr constant float 0x3FE3333340000000, align 4
@d_g = dso_local local_unnamed_addr constant float 0x40226E9780000000, align 4
@m_ca = dso_local local_unnamed_addr constant float 4.000000e+00, align 4
@b_ca_mr = dso_local local_unnamed_addr constant float 1.500000e+00, align 4
@b_ca_ma = dso_local local_unnamed_addr constant float 1.500000e+00, align 4
@d_ca = dso_local local_unnamed_addr constant float 0x40226E9780000000, align 4
@caInf = dso_local local_unnamed_addr constant float 0x400CCCCCC0000000, align 4
@gInf = dso_local local_unnamed_addr constant float 0x4008CCCCC0000000, align 4
@deltaX = dso_local local_unnamed_addr constant float 0x3FB99999A0000000, align 4
@deltaY = dso_local local_unnamed_addr constant float 0x3FB99999A0000000, align 4
@deltaZ = dso_local local_unnamed_addr constant float 0x3FB99999A0000000, align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local float @Laplaciano(i32 noundef %0, ptr noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef readonly captures(none) %5) local_unnamed_addr #0 {
  %7 = icmp sgt i32 %2, 0
  %8 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %9 = load i32, ptr %8, align 4, !tbaa !4
  %10 = add nsw i32 %9, -1
  %11 = icmp slt i32 %2, %10
  %12 = select i1 %7, i1 %11, i1 false
  br i1 %12, label %13, label %24

13:                                               ; preds = %6
  %14 = sext i32 %0 to i64
  %15 = getelementptr float, ptr %1, i64 %14
  %16 = getelementptr i8, ptr %15, i64 4
  %17 = load float, ptr %16, align 4, !tbaa !8
  %18 = load float, ptr %15, align 4, !tbaa !8
  %19 = tail call float @llvm.fmuladd.f32(float %18, float -2.000000e+00, float %17)
  %20 = getelementptr i8, ptr %15, i64 8
  %21 = load float, ptr %20, align 4, !tbaa !8
  %22 = fadd float %19, %21
  %23 = fdiv float %22, 0x3F847AE160000000, !fpmath !10
  br label %43

24:                                               ; preds = %6
  %25 = sub nsw i32 %10, %2
  %26 = sdiv i32 %25, %10
  %27 = sitofp i32 %26 to float
  %28 = sext i32 %0 to i64
  %29 = getelementptr float, ptr %1, i64 %28
  %30 = getelementptr i8, ptr %29, i64 4
  %31 = load float, ptr %30, align 4, !tbaa !8
  %32 = load float, ptr %29, align 4, !tbaa !8
  %33 = fsub float %31, %32
  %34 = fdiv float %33, 0x3F847AE160000000, !fpmath !10
  %35 = sdiv i32 %2, %10
  %36 = sitofp i32 %35 to float
  %37 = getelementptr i8, ptr %29, i64 8
  %38 = load float, ptr %37, align 4, !tbaa !8
  %39 = fsub float %38, %32
  %40 = fdiv float %39, 0x3F847AE160000000, !fpmath !10
  %41 = fmul float %40, %36
  %42 = tail call float @llvm.fmuladd.f32(float %27, float %34, float %41)
  br label %43

43:                                               ; preds = %24, %13
  %44 = phi float [ %18, %13 ], [ %32, %24 ]
  %45 = phi float [ %23, %13 ], [ %42, %24 ]
  %46 = icmp sgt i32 %3, 0
  %47 = getelementptr inbounds nuw i8, ptr %5, i64 12
  %48 = load i32, ptr %47, align 4, !tbaa !4
  %49 = add nsw i32 %48, -1
  %50 = icmp slt i32 %3, %49
  %51 = select i1 %46, i1 %50, i1 false
  br i1 %51, label %52, label %62

52:                                               ; preds = %43
  %53 = sext i32 %0 to i64
  %54 = getelementptr float, ptr %1, i64 %53
  %55 = getelementptr i8, ptr %54, i64 20
  %56 = load float, ptr %55, align 4, !tbaa !8
  %57 = tail call float @llvm.fmuladd.f32(float %44, float -2.000000e+00, float %56)
  %58 = getelementptr i8, ptr %54, i64 24
  %59 = load float, ptr %58, align 4, !tbaa !8
  %60 = fadd float %57, %59
  %61 = fdiv float %60, 0x3F847AE160000000, !fpmath !10
  br label %80

62:                                               ; preds = %43
  %63 = sub nsw i32 %49, %3
  %64 = sdiv i32 %63, %49
  %65 = sitofp i32 %64 to float
  %66 = sext i32 %0 to i64
  %67 = getelementptr float, ptr %1, i64 %66
  %68 = getelementptr i8, ptr %67, i64 20
  %69 = load float, ptr %68, align 4, !tbaa !8
  %70 = fsub float %69, %44
  %71 = fdiv float %70, 0x3F847AE160000000, !fpmath !10
  %72 = sdiv i32 %3, %49
  %73 = sitofp i32 %72 to float
  %74 = getelementptr i8, ptr %67, i64 24
  %75 = load float, ptr %74, align 4, !tbaa !8
  %76 = fsub float %75, %44
  %77 = fdiv float %76, 0x3F847AE160000000, !fpmath !10
  %78 = fmul float %77, %73
  %79 = tail call float @llvm.fmuladd.f32(float %65, float %71, float %78)
  br label %80

80:                                               ; preds = %62, %52
  %81 = phi float [ %61, %52 ], [ %79, %62 ]
  %82 = icmp sgt i32 %4, 0
  %83 = getelementptr inbounds nuw i8, ptr %5, i64 16
  %84 = load i32, ptr %83, align 4, !tbaa !4
  %85 = add nsw i32 %84, -1
  %86 = icmp slt i32 %4, %85
  %87 = select i1 %82, i1 %86, i1 false
  br i1 %87, label %88, label %98

88:                                               ; preds = %80
  %89 = sext i32 %0 to i64
  %90 = getelementptr float, ptr %1, i64 %89
  %91 = getelementptr i8, ptr %90, i64 12
  %92 = load float, ptr %91, align 4, !tbaa !8
  %93 = tail call float @llvm.fmuladd.f32(float %44, float -2.000000e+00, float %92)
  %94 = getelementptr i8, ptr %90, i64 16
  %95 = load float, ptr %94, align 4, !tbaa !8
  %96 = fadd float %93, %95
  %97 = fdiv float %96, 0x3F847AE160000000, !fpmath !10
  br label %116

98:                                               ; preds = %80
  %99 = sub nsw i32 %85, %4
  %100 = sdiv i32 %99, %85
  %101 = sitofp i32 %100 to float
  %102 = sext i32 %0 to i64
  %103 = getelementptr float, ptr %1, i64 %102
  %104 = getelementptr i8, ptr %103, i64 12
  %105 = load float, ptr %104, align 4, !tbaa !8
  %106 = fsub float %105, %44
  %107 = fdiv float %106, 0x3F847AE160000000, !fpmath !10
  %108 = sdiv i32 %4, %85
  %109 = sitofp i32 %108 to float
  %110 = getelementptr i8, ptr %103, i64 16
  %111 = load float, ptr %110, align 4, !tbaa !8
  %112 = fsub float %111, %44
  %113 = fdiv float %112, 0x3F847AE160000000, !fpmath !10
  %114 = fmul float %113, %109
  %115 = tail call float @llvm.fmuladd.f32(float %101, float %107, float %114)
  br label %116

116:                                              ; preds = %98, %88
  %117 = phi float [ %97, %88 ], [ %115, %98 ]
  %118 = fadd float %45, %81
  %119 = fadd float %118, %117
  ret float %119
}

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local float @Quimiotaxia(i32 noundef %0, ptr noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef readonly captures(none) %5) local_unnamed_addr #0 {
  %7 = icmp sgt i32 %2, 0
  br i1 %7, label %8, label %27

8:                                                ; preds = %6
  %9 = getelementptr inbounds nuw i8, ptr %1, i64 128
  %10 = load float, ptr %9, align 4, !tbaa !8
  %11 = getelementptr inbounds nuw i8, ptr %1, i64 136
  %12 = load float, ptr %11, align 4, !tbaa !8
  %13 = fsub float %10, %12
  %14 = fcmp ogt float %13, 0.000000e+00
  %15 = fneg float %13
  %16 = sext i32 %0 to i64
  %17 = getelementptr float, ptr %1, i64 %16
  br i1 %14, label %18, label %23

18:                                               ; preds = %8
  %19 = getelementptr i8, ptr %17, i64 8
  %20 = load float, ptr %19, align 4, !tbaa !8
  %21 = fmul float %20, %15
  %22 = fdiv float %21, 0x3FB99999A0000000, !fpmath !10
  br label %27

23:                                               ; preds = %8
  %24 = load float, ptr %17, align 4, !tbaa !8
  %25 = fmul float %24, %15
  %26 = fdiv float %25, 0x3FB99999A0000000, !fpmath !10
  br label %27

27:                                               ; preds = %6, %18, %23
  %28 = phi float [ %26, %23 ], [ %22, %18 ], [ 0.000000e+00, %6 ]
  %29 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %30 = load i32, ptr %29, align 4, !tbaa !4
  %31 = add nsw i32 %30, -1
  %32 = icmp slt i32 %2, %31
  br i1 %32, label %33, label %51

33:                                               ; preds = %27
  %34 = getelementptr inbounds nuw i8, ptr %1, i64 132
  %35 = load float, ptr %34, align 4, !tbaa !8
  %36 = getelementptr inbounds nuw i8, ptr %1, i64 128
  %37 = load float, ptr %36, align 4, !tbaa !8
  %38 = fsub float %35, %37
  %39 = fcmp ogt float %38, 0.000000e+00
  %40 = sext i32 %0 to i64
  %41 = getelementptr float, ptr %1, i64 %40
  br i1 %39, label %42, label %46

42:                                               ; preds = %33
  %43 = load float, ptr %41, align 4, !tbaa !8
  %44 = fmul float %38, %43
  %45 = fdiv float %44, 0x3FB99999A0000000, !fpmath !10
  br label %51

46:                                               ; preds = %33
  %47 = getelementptr i8, ptr %41, i64 4
  %48 = load float, ptr %47, align 4, !tbaa !8
  %49 = fmul float %38, %48
  %50 = fdiv float %49, 0x3FB99999A0000000, !fpmath !10
  br label %51

51:                                               ; preds = %27, %42, %46
  %52 = phi float [ %50, %46 ], [ %45, %42 ], [ 0.000000e+00, %27 ]
  %53 = icmp sgt i32 %3, 0
  br i1 %53, label %54, label %73

54:                                               ; preds = %51
  %55 = getelementptr inbounds nuw i8, ptr %1, i64 128
  %56 = load float, ptr %55, align 4, !tbaa !8
  %57 = getelementptr inbounds nuw i8, ptr %1, i64 144
  %58 = load float, ptr %57, align 4, !tbaa !8
  %59 = fsub float %56, %58
  %60 = fcmp ogt float %59, 0.000000e+00
  %61 = fneg float %59
  %62 = sext i32 %0 to i64
  %63 = getelementptr float, ptr %1, i64 %62
  br i1 %60, label %64, label %69

64:                                               ; preds = %54
  %65 = getelementptr i8, ptr %63, i64 16
  %66 = load float, ptr %65, align 4, !tbaa !8
  %67 = fmul float %66, %61
  %68 = fdiv float %67, 0x3FB99999A0000000, !fpmath !10
  br label %73

69:                                               ; preds = %54
  %70 = load float, ptr %63, align 4, !tbaa !8
  %71 = fmul float %70, %61
  %72 = fdiv float %71, 0x3FB99999A0000000, !fpmath !10
  br label %73

73:                                               ; preds = %51, %64, %69
  %74 = phi float [ %72, %69 ], [ %68, %64 ], [ 0.000000e+00, %51 ]
  %75 = getelementptr inbounds nuw i8, ptr %5, i64 12
  %76 = load i32, ptr %75, align 4, !tbaa !4
  %77 = add nsw i32 %76, -1
  %78 = icmp slt i32 %3, %77
  br i1 %78, label %79, label %97

79:                                               ; preds = %73
  %80 = getelementptr inbounds nuw i8, ptr %1, i64 140
  %81 = load float, ptr %80, align 4, !tbaa !8
  %82 = getelementptr inbounds nuw i8, ptr %1, i64 128
  %83 = load float, ptr %82, align 4, !tbaa !8
  %84 = fsub float %81, %83
  %85 = fcmp ogt float %84, 0.000000e+00
  %86 = sext i32 %0 to i64
  %87 = getelementptr float, ptr %1, i64 %86
  br i1 %85, label %88, label %92

88:                                               ; preds = %79
  %89 = load float, ptr %87, align 4, !tbaa !8
  %90 = fmul float %84, %89
  %91 = fdiv float %90, 0x3FB99999A0000000, !fpmath !10
  br label %97

92:                                               ; preds = %79
  %93 = getelementptr i8, ptr %87, i64 12
  %94 = load float, ptr %93, align 4, !tbaa !8
  %95 = fmul float %84, %94
  %96 = fdiv float %95, 0x3FB99999A0000000, !fpmath !10
  br label %97

97:                                               ; preds = %73, %88, %92
  %98 = phi float [ %96, %92 ], [ %91, %88 ], [ 0.000000e+00, %73 ]
  %99 = icmp sgt i32 %4, 0
  br i1 %99, label %100, label %119

100:                                              ; preds = %97
  %101 = getelementptr inbounds nuw i8, ptr %1, i64 128
  %102 = load float, ptr %101, align 4, !tbaa !8
  %103 = getelementptr inbounds nuw i8, ptr %1, i64 152
  %104 = load float, ptr %103, align 4, !tbaa !8
  %105 = fsub float %102, %104
  %106 = fcmp ogt float %105, 0.000000e+00
  %107 = fneg float %105
  %108 = sext i32 %0 to i64
  %109 = getelementptr float, ptr %1, i64 %108
  br i1 %106, label %110, label %115

110:                                              ; preds = %100
  %111 = getelementptr i8, ptr %109, i64 24
  %112 = load float, ptr %111, align 4, !tbaa !8
  %113 = fmul float %112, %107
  %114 = fdiv float %113, 0x3FB99999A0000000, !fpmath !10
  br label %119

115:                                              ; preds = %100
  %116 = load float, ptr %109, align 4, !tbaa !8
  %117 = fmul float %116, %107
  %118 = fdiv float %117, 0x3FB99999A0000000, !fpmath !10
  br label %119

119:                                              ; preds = %97, %110, %115
  %120 = phi float [ %118, %115 ], [ %114, %110 ], [ 0.000000e+00, %97 ]
  %121 = getelementptr inbounds nuw i8, ptr %5, i64 16
  %122 = load i32, ptr %121, align 4, !tbaa !4
  %123 = add nsw i32 %122, -1
  %124 = icmp slt i32 %4, %123
  br i1 %124, label %125, label %143

125:                                              ; preds = %119
  %126 = getelementptr inbounds nuw i8, ptr %1, i64 148
  %127 = load float, ptr %126, align 4, !tbaa !8
  %128 = getelementptr inbounds nuw i8, ptr %1, i64 128
  %129 = load float, ptr %128, align 4, !tbaa !8
  %130 = fsub float %127, %129
  %131 = fcmp ogt float %130, 0.000000e+00
  %132 = sext i32 %0 to i64
  %133 = getelementptr float, ptr %1, i64 %132
  br i1 %131, label %134, label %138

134:                                              ; preds = %125
  %135 = load float, ptr %133, align 4, !tbaa !8
  %136 = fmul float %130, %135
  %137 = fdiv float %136, 0x3FB99999A0000000, !fpmath !10
  br label %143

138:                                              ; preds = %125
  %139 = getelementptr i8, ptr %133, i64 20
  %140 = load float, ptr %139, align 4, !tbaa !8
  %141 = fmul float %130, %140
  %142 = fdiv float %141, 0x3FB99999A0000000, !fpmath !10
  br label %143

143:                                              ; preds = %119, %134, %138
  %144 = phi float [ %142, %138 ], [ %137, %134 ], [ 0.000000e+00, %119 ]
  %145 = insertelement <2 x float> poison, float %28, i64 0
  %146 = insertelement <2 x float> %145, float %120, i64 1
  %147 = insertelement <2 x float> poison, float %52, i64 0
  %148 = insertelement <2 x float> %147, float %144, i64 1
  %149 = fadd <2 x float> %146, %148
  %150 = fadd float %74, %98
  %151 = fdiv float %150, 0x3FB99999A0000000, !fpmath !10
  %152 = fdiv <2 x float> %149, splat (float 0x3FB99999A0000000), !fpmath !10
  %153 = extractelement <2 x float> %152, i64 0
  %154 = fadd float %153, %151
  %155 = extractelement <2 x float> %152, i64 1
  %156 = fadd float %154, %155
  ret float %156
}

; Function Attrs: convergent norecurse nounwind uwtable
define dso_local void @CalcularPontos(ptr noundef captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef readonly captures(none) %4) local_unnamed_addr #2 {
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %7 = load float, ptr %6, align 4, !tbaa !8
  %8 = fmul float %7, 0x3FB99999A0000000
  %9 = load float, ptr %0, align 4, !tbaa !8
  %10 = fmul float %8, %9
  %11 = fneg float %10
  %12 = tail call float @llvm.fmuladd.f32(float %9, float -0.000000e+00, float %11)
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %14 = load float, ptr %13, align 4, !tbaa !8
  %15 = fmul float %14, 0xBFE19999A0000000
  %16 = tail call float @llvm.fmuladd.f32(float %15, float %9, float %12)
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %18 = load float, ptr %17, align 4, !tbaa !8
  %19 = fmul float %18, 0xBFE99999A0000000
  %20 = tail call float @llvm.fmuladd.f32(float %19, float %9, float %16)
  %21 = tail call float @Laplaciano(i32 noundef 0, ptr noundef nonnull %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) #8
  %22 = tail call float @llvm.fmuladd.f32(float %21, float 2.000000e+00, float %20)
  %23 = tail call float @llvm.fmuladd.f32(float %22, float 0x3EB0C6F7A0000000, float %9)
  %24 = tail call float @_Z3maxff(float noundef 0.000000e+00, float noundef %23) #9
  %25 = getelementptr inbounds nuw i8, ptr %0, i64 28
  store float %24, ptr %25, align 4, !tbaa !8
  %26 = load float, ptr %6, align 4, !tbaa !8
  %27 = tail call float @llvm.fmuladd.f32(float %26, float 0xBFA0E56040000000, float %11)
  %28 = getelementptr inbounds nuw i8, ptr %0, i64 128
  %29 = load float, ptr %28, align 4, !tbaa !8
  %30 = fmul float %29, 0x3FB70A3D80000000
  %31 = fadd float %29, 1.000000e+00
  %32 = fdiv float %30, %31, !fpmath !10
  %33 = fadd float %32, 0x3F847AE140000000
  %34 = load float, ptr %17, align 4, !tbaa !8
  %35 = fadd float %26, %34
  %36 = fsub float 6.000000e+00, %35
  %37 = tail call float @llvm.fmuladd.f32(float %33, float %36, float %27)
  %38 = tail call float @Laplaciano(i32 noundef 8, ptr noundef nonnull %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) #8
  %39 = tail call float @llvm.fmuladd.f32(float %38, float 0x401147AE20000000, float %37)
  %40 = tail call float @Quimiotaxia(i32 noundef 8, ptr noundef nonnull %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) #8
  %41 = tail call float @llvm.fmuladd.f32(float %40, float 0xC00CCCCCC0000000, float %39)
  %42 = tail call float @llvm.fmuladd.f32(float %41, float 0x3EB0C6F7A0000000, float %26)
  %43 = tail call float @_Z3maxff(float noundef 0.000000e+00, float noundef %42) #9
  %44 = getelementptr inbounds nuw i8, ptr %0, i64 60
  store float %43, ptr %44, align 4, !tbaa !8
  %45 = load float, ptr %17, align 4, !tbaa !8
  %46 = tail call float @llvm.fmuladd.f32(float %45, float 0xBFB1EB8520000000, float %10)
  %47 = tail call float @Laplaciano(i32 noundef 16, ptr noundef nonnull %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) #8
  %48 = tail call float @llvm.fmuladd.f32(float %47, float 3.000000e+00, float %46)
  %49 = tail call float @Quimiotaxia(i32 noundef 16, ptr noundef nonnull %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) #8
  %50 = tail call float @llvm.fmuladd.f32(float %49, float 0xC01147AE20000000, float %48)
  %51 = tail call float @llvm.fmuladd.f32(float %50, float 0x3EB0C6F7A0000000, float %45)
  %52 = tail call float @_Z3maxff(float noundef 0.000000e+00, float noundef %51) #9
  %53 = getelementptr inbounds nuw i8, ptr %0, i64 92
  store float %52, ptr %53, align 4, !tbaa !8
  %54 = load float, ptr %28, align 4, !tbaa !8
  %55 = load float, ptr %13, align 4, !tbaa !8
  %56 = load float, ptr %0, align 4, !tbaa !8
  %57 = load float, ptr %17, align 4, !tbaa !8
  %58 = fmul float %57, 0x3FE99999A0000000
  %59 = fmul float %56, %58
  %60 = tail call float @llvm.fmuladd.f32(float %55, float %56, float %59)
  %61 = fdiv float %54, 0x400CCCCCC0000000, !fpmath !10
  %62 = fsub float 1.000000e+00, %61
  %63 = fmul float %62, %60
  %64 = tail call float @llvm.fmuladd.f32(float %54, float -7.000000e+00, float %63)
  %65 = tail call float @Laplaciano(i32 noundef 32, ptr noundef nonnull %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) #8
  %66 = tail call float @llvm.fmuladd.f32(float %65, float 0x40226E9780000000, float %64)
  %67 = tail call float @llvm.fmuladd.f32(float %66, float 0x3EB0C6F7A0000000, float %54)
  %68 = tail call float @_Z3maxff(float noundef 0.000000e+00, float noundef %67) #9
  %69 = getelementptr inbounds nuw i8, ptr %0, i64 156
  store float %68, ptr %69, align 4, !tbaa !8
  %70 = load float, ptr %28, align 4, !tbaa !8
  %71 = fmul float %70, 0x4026CCBFA0000000
  %72 = fadd float %70, 1.000000e+00
  %73 = fdiv float %71, %72, !fpmath !10
  %74 = fadd float %73, 0x3F1A36E2E0000000
  %75 = load float, ptr %13, align 4, !tbaa !8
  %76 = fsub float 8.000000e+00, %75
  %77 = fmul float %76, %74
  %78 = fmul float %75, 0x3FE19999A0000000
  %79 = load float, ptr %0, align 4, !tbaa !8
  %80 = fneg float %79
  %81 = fmul float %78, %80
  %82 = tail call float @llvm.fmuladd.f32(float %75, float 0xC00B70A3E0000000, float %81)
  %83 = fadd float %82, %77
  %84 = tail call float @Laplaciano(i32 noundef 24, ptr noundef nonnull %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) #8
  %85 = tail call float @llvm.fmuladd.f32(float %84, float 0x40283126E0000000, float %83)
  %86 = tail call float @Quimiotaxia(i32 noundef 24, ptr noundef nonnull %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) #8
  %87 = tail call float @llvm.fmuladd.f32(float %86, float 0xC02CCCCCC0000000, float %85)
  %88 = tail call float @llvm.fmuladd.f32(float %87, float 0x3EB0C6F7A0000000, float %75)
  %89 = tail call float @_Z3maxff(float noundef 0.000000e+00, float noundef %88) #9
  %90 = getelementptr inbounds nuw i8, ptr %0, i64 124
  store float %89, ptr %90, align 4, !tbaa !8
  %91 = load float, ptr %13, align 4, !tbaa !8
  %92 = fmul float %91, 0x3FE19999A0000000
  %93 = load float, ptr %0, align 4, !tbaa !8
  %94 = fmul float %92, %93
  %95 = tail call float @llvm.fmuladd.f32(float %91, float 0x400B70A3E0000000, float %94)
  %96 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %97 = load float, ptr %96, align 4, !tbaa !8
  %98 = load float, ptr %17, align 4, !tbaa !8
  %99 = fmul float %97, 0xC004CCCCC0000000
  %100 = tail call float @llvm.fmuladd.f32(float %99, float %98, float %95)
  %101 = tail call float @Laplaciano(i32 noundef 40, ptr noundef nonnull %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) #8
  %102 = tail call float @llvm.fmuladd.f32(float %101, float 0x3F22DFD6A0000000, float %100)
  %103 = tail call float @llvm.fmuladd.f32(float %102, float 0x3EB0C6F7A0000000, float %97)
  %104 = tail call float @_Z3maxff(float noundef 0.000000e+00, float noundef %103) #9
  %105 = getelementptr inbounds nuw i8, ptr %0, i64 188
  store float %104, ptr %105, align 4, !tbaa !8
  %106 = getelementptr inbounds nuw i8, ptr %0, i64 192
  %107 = load float, ptr %106, align 4, !tbaa !8
  %108 = fmul float %77, 0x3FE3333340000000
  %109 = fdiv float %107, 0x4008CCCCC0000000, !fpmath !10
  %110 = fsub float 1.000000e+00, %109
  %111 = fmul float %108, %110
  %112 = tail call float @llvm.fmuladd.f32(float %107, float -5.000000e+00, float %111)
  %113 = tail call float @Laplaciano(i32 noundef 48, ptr noundef nonnull %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) #8
  %114 = tail call float @llvm.fmuladd.f32(float %113, float 0x40226E9780000000, float %112)
  %115 = tail call float @llvm.fmuladd.f32(float %114, float 0x3EB0C6F7A0000000, float %107)
  %116 = tail call float @_Z3maxff(float noundef 0.000000e+00, float noundef %115) #9
  %117 = getelementptr inbounds nuw i8, ptr %0, i64 220
  store float %116, ptr %117, align 4, !tbaa !8
  %118 = getelementptr inbounds nuw i8, ptr %0, i64 224
  %119 = load float, ptr %118, align 4, !tbaa !8
  %120 = load float, ptr %6, align 4, !tbaa !8
  %121 = fmul float %120, 1.500000e+00
  %122 = load float, ptr %96, align 4, !tbaa !8
  %123 = load float, ptr %17, align 4, !tbaa !8
  %124 = fmul float %123, 1.500000e+00
  %125 = tail call float @llvm.fmuladd.f32(float %121, float %122, float %124)
  %126 = fdiv float %119, 0x400CCCCCC0000000, !fpmath !10
  %127 = fsub float 1.000000e+00, %126
  %128 = fmul float %127, %125
  %129 = tail call float @llvm.fmuladd.f32(float %119, float -4.000000e+00, float %128)
  %130 = tail call float @Laplaciano(i32 noundef 0, ptr noundef nonnull %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) #8
  %131 = tail call float @llvm.fmuladd.f32(float %130, float 0x40226E9780000000, float %129)
  %132 = tail call float @llvm.fmuladd.f32(float %131, float 0x3EB0C6F7A0000000, float %119)
  %133 = tail call float @_Z3maxff(float noundef 0.000000e+00, float noundef %132) #9
  %134 = getelementptr inbounds nuw i8, ptr %0, i64 252
  store float %133, ptr %134, align 4, !tbaa !8
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: convergent nounwind
declare dso_local float @_Z3maxff(float noundef, float noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: convergent norecurse nounwind uwtable
define dso_local spir_kernel void @ProcessarPontos(ptr noundef writeonly align 4 captures(none) %0, ptr noundef readonly align 4 captures(none) %1, ptr noundef readonly align 4 captures(none) %2) local_unnamed_addr #5 !kernel_arg_addr_space !11 !kernel_arg_access_qual !12 !kernel_arg_type !13 !kernel_arg_base_type !13 !kernel_arg_type_qual !14 {
  %4 = alloca [64 x float], align 16
  %5 = tail call i64 @get_global_id(i32 noundef 0) #10
  %6 = trunc i64 %5 to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #8
  %7 = getelementptr inbounds nuw i8, ptr %2, i64 12
  %8 = load i32, ptr %7, align 4, !tbaa !4
  %9 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %10 = load i32, ptr %9, align 4, !tbaa !4
  %11 = mul nsw i32 %10, %8
  %12 = sdiv i32 %6, %11
  %13 = srem i32 %6, %11
  %14 = sdiv i32 %13, %10
  %15 = srem i32 %13, %10
  %16 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %17 = load i32, ptr %16, align 4, !tbaa !4
  %18 = icmp slt i32 %12, %17
  br i1 %18, label %19, label %1003

19:                                               ; preds = %3
  %20 = getelementptr inbounds nuw i8, ptr %2, i64 20
  %21 = load i32, ptr %20, align 4, !tbaa !4
  %22 = mul nsw i32 %21, %12
  %23 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %24 = load i32, ptr %23, align 4, !tbaa !4
  %25 = mul nsw i32 %24, %14
  %26 = add nsw i32 %25, %22
  %27 = getelementptr inbounds nuw i8, ptr %2, i64 28
  %28 = load i32, ptr %27, align 4, !tbaa !4
  %29 = mul nsw i32 %28, %15
  %30 = add nsw i32 %26, %29
  %31 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %32 = load i32, ptr %31, align 4, !tbaa !4
  %33 = add nsw i32 %12, 1
  %34 = icmp slt i32 %33, %17
  %35 = icmp sgt i32 %12, 0
  %36 = add nsw i32 %14, 1
  %37 = icmp slt i32 %36, %8
  %38 = icmp sgt i32 %14, 0
  %39 = add nsw i32 %15, 1
  %40 = icmp slt i32 %39, %10
  %41 = icmp sgt i32 %15, 0
  %42 = sext i32 %32 to i64
  %43 = sext i32 %30 to i64
  br i1 %34, label %44, label %391

44:                                               ; preds = %19
  %45 = sext i32 %21 to i64
  %46 = sext i32 %24 to i64
  %47 = sext i32 %28 to i64
  %48 = getelementptr inbounds float, ptr %1, i64 %43
  %49 = load float, ptr %48, align 4, !tbaa !8
  store float %49, ptr %4, align 16, !tbaa !8
  %50 = getelementptr float, ptr %1, i64 %43
  %51 = getelementptr float, ptr %50, i64 %45
  %52 = load float, ptr %51, align 4, !tbaa !8
  %53 = getelementptr inbounds nuw i8, ptr %4, i64 20
  store float %52, ptr %53, align 4, !tbaa !8
  br i1 %35, label %54, label %58

54:                                               ; preds = %44
  %55 = sub nsw i64 %43, %45
  %56 = getelementptr inbounds float, ptr %1, i64 %55
  %57 = load float, ptr %56, align 4, !tbaa !8
  br label %58

58:                                               ; preds = %54, %44
  %59 = phi float [ %57, %54 ], [ 0.000000e+00, %44 ]
  %60 = getelementptr inbounds nuw i8, ptr %4, i64 24
  store float %59, ptr %60, align 8, !tbaa !8
  br i1 %37, label %61, label %65

61:                                               ; preds = %58
  %62 = getelementptr float, ptr %1, i64 %43
  %63 = getelementptr float, ptr %62, i64 %46
  %64 = load float, ptr %63, align 4, !tbaa !8
  br label %65

65:                                               ; preds = %61, %58
  %66 = phi float [ %64, %61 ], [ 0.000000e+00, %58 ]
  %67 = getelementptr inbounds nuw i8, ptr %4, i64 12
  store float %66, ptr %67, align 4, !tbaa !8
  br i1 %38, label %68, label %72

68:                                               ; preds = %65
  %69 = sub nsw i64 %43, %46
  %70 = getelementptr inbounds float, ptr %1, i64 %69
  %71 = load float, ptr %70, align 4, !tbaa !8
  br label %72

72:                                               ; preds = %68, %65
  %73 = phi float [ %71, %68 ], [ 0.000000e+00, %65 ]
  %74 = getelementptr inbounds nuw i8, ptr %4, i64 16
  store float %73, ptr %74, align 16, !tbaa !8
  br i1 %40, label %75, label %79

75:                                               ; preds = %72
  %76 = getelementptr float, ptr %1, i64 %43
  %77 = getelementptr float, ptr %76, i64 %47
  %78 = load float, ptr %77, align 4, !tbaa !8
  br label %79

79:                                               ; preds = %75, %72
  %80 = phi float [ %78, %75 ], [ 0.000000e+00, %72 ]
  %81 = getelementptr inbounds nuw i8, ptr %4, i64 4
  store float %80, ptr %81, align 4, !tbaa !8
  br i1 %41, label %82, label %86

82:                                               ; preds = %79
  %83 = sub nsw i64 %43, %47
  %84 = getelementptr inbounds float, ptr %1, i64 %83
  %85 = load float, ptr %84, align 4, !tbaa !8
  br label %86

86:                                               ; preds = %82, %79
  %87 = phi float [ %85, %82 ], [ 0.000000e+00, %79 ]
  %88 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store float %87, ptr %88, align 8, !tbaa !8
  %89 = add nsw i64 %42, %43
  %90 = getelementptr inbounds float, ptr %1, i64 %89
  %91 = load float, ptr %90, align 4, !tbaa !8
  %92 = getelementptr inbounds nuw i8, ptr %4, i64 32
  store float %91, ptr %92, align 16, !tbaa !8
  %93 = getelementptr float, ptr %1, i64 %89
  %94 = getelementptr float, ptr %93, i64 %45
  %95 = load float, ptr %94, align 4, !tbaa !8
  %96 = getelementptr inbounds nuw i8, ptr %4, i64 52
  store float %95, ptr %96, align 4, !tbaa !8
  br i1 %35, label %97, label %101

97:                                               ; preds = %86
  %98 = sub nsw i64 %89, %45
  %99 = getelementptr inbounds float, ptr %1, i64 %98
  %100 = load float, ptr %99, align 4, !tbaa !8
  br label %101

101:                                              ; preds = %97, %86
  %102 = phi float [ %100, %97 ], [ 0.000000e+00, %86 ]
  %103 = getelementptr inbounds nuw i8, ptr %4, i64 56
  store float %102, ptr %103, align 8, !tbaa !8
  br i1 %37, label %104, label %108

104:                                              ; preds = %101
  %105 = getelementptr float, ptr %1, i64 %89
  %106 = getelementptr float, ptr %105, i64 %46
  %107 = load float, ptr %106, align 4, !tbaa !8
  br label %108

108:                                              ; preds = %104, %101
  %109 = phi float [ %107, %104 ], [ 0.000000e+00, %101 ]
  %110 = getelementptr inbounds nuw i8, ptr %4, i64 44
  store float %109, ptr %110, align 4, !tbaa !8
  br i1 %38, label %111, label %115

111:                                              ; preds = %108
  %112 = sub nsw i64 %89, %46
  %113 = getelementptr inbounds float, ptr %1, i64 %112
  %114 = load float, ptr %113, align 4, !tbaa !8
  br label %115

115:                                              ; preds = %111, %108
  %116 = phi float [ %114, %111 ], [ 0.000000e+00, %108 ]
  %117 = getelementptr inbounds nuw i8, ptr %4, i64 48
  store float %116, ptr %117, align 16, !tbaa !8
  br i1 %40, label %118, label %122

118:                                              ; preds = %115
  %119 = getelementptr float, ptr %1, i64 %89
  %120 = getelementptr float, ptr %119, i64 %47
  %121 = load float, ptr %120, align 4, !tbaa !8
  br label %122

122:                                              ; preds = %118, %115
  %123 = phi float [ %121, %118 ], [ 0.000000e+00, %115 ]
  %124 = getelementptr inbounds nuw i8, ptr %4, i64 36
  store float %123, ptr %124, align 4, !tbaa !8
  br i1 %41, label %125, label %129

125:                                              ; preds = %122
  %126 = sub nsw i64 %89, %47
  %127 = getelementptr inbounds float, ptr %1, i64 %126
  %128 = load float, ptr %127, align 4, !tbaa !8
  br label %129

129:                                              ; preds = %125, %122
  %130 = phi float [ %128, %125 ], [ 0.000000e+00, %122 ]
  %131 = getelementptr inbounds nuw i8, ptr %4, i64 40
  store float %130, ptr %131, align 8, !tbaa !8
  %132 = shl nsw i64 %42, 1
  %133 = add nsw i64 %132, %43
  %134 = getelementptr inbounds float, ptr %1, i64 %133
  %135 = load float, ptr %134, align 4, !tbaa !8
  %136 = getelementptr inbounds nuw i8, ptr %4, i64 64
  store float %135, ptr %136, align 16, !tbaa !8
  %137 = getelementptr float, ptr %1, i64 %133
  %138 = getelementptr float, ptr %137, i64 %45
  %139 = load float, ptr %138, align 4, !tbaa !8
  %140 = getelementptr inbounds nuw i8, ptr %4, i64 84
  store float %139, ptr %140, align 4, !tbaa !8
  br i1 %35, label %141, label %145

141:                                              ; preds = %129
  %142 = sub nsw i64 %133, %45
  %143 = getelementptr inbounds float, ptr %1, i64 %142
  %144 = load float, ptr %143, align 4, !tbaa !8
  br label %145

145:                                              ; preds = %141, %129
  %146 = phi float [ %144, %141 ], [ 0.000000e+00, %129 ]
  %147 = getelementptr inbounds nuw i8, ptr %4, i64 88
  store float %146, ptr %147, align 8, !tbaa !8
  br i1 %37, label %148, label %152

148:                                              ; preds = %145
  %149 = getelementptr float, ptr %1, i64 %133
  %150 = getelementptr float, ptr %149, i64 %46
  %151 = load float, ptr %150, align 4, !tbaa !8
  br label %152

152:                                              ; preds = %148, %145
  %153 = phi float [ %151, %148 ], [ 0.000000e+00, %145 ]
  %154 = getelementptr inbounds nuw i8, ptr %4, i64 76
  store float %153, ptr %154, align 4, !tbaa !8
  br i1 %38, label %155, label %159

155:                                              ; preds = %152
  %156 = sub nsw i64 %133, %46
  %157 = getelementptr inbounds float, ptr %1, i64 %156
  %158 = load float, ptr %157, align 4, !tbaa !8
  br label %159

159:                                              ; preds = %155, %152
  %160 = phi float [ %158, %155 ], [ 0.000000e+00, %152 ]
  %161 = getelementptr inbounds nuw i8, ptr %4, i64 80
  store float %160, ptr %161, align 16, !tbaa !8
  br i1 %40, label %162, label %166

162:                                              ; preds = %159
  %163 = getelementptr float, ptr %1, i64 %133
  %164 = getelementptr float, ptr %163, i64 %47
  %165 = load float, ptr %164, align 4, !tbaa !8
  br label %166

166:                                              ; preds = %162, %159
  %167 = phi float [ %165, %162 ], [ 0.000000e+00, %159 ]
  %168 = getelementptr inbounds nuw i8, ptr %4, i64 68
  store float %167, ptr %168, align 4, !tbaa !8
  br i1 %41, label %169, label %173

169:                                              ; preds = %166
  %170 = sub nsw i64 %133, %47
  %171 = getelementptr inbounds float, ptr %1, i64 %170
  %172 = load float, ptr %171, align 4, !tbaa !8
  br label %173

173:                                              ; preds = %169, %166
  %174 = phi float [ %172, %169 ], [ 0.000000e+00, %166 ]
  %175 = getelementptr inbounds nuw i8, ptr %4, i64 72
  store float %174, ptr %175, align 8, !tbaa !8
  %176 = mul nsw i64 %42, 3
  %177 = add nsw i64 %176, %43
  %178 = getelementptr inbounds float, ptr %1, i64 %177
  %179 = load float, ptr %178, align 4, !tbaa !8
  %180 = getelementptr inbounds nuw i8, ptr %4, i64 96
  store float %179, ptr %180, align 16, !tbaa !8
  %181 = getelementptr float, ptr %1, i64 %177
  %182 = getelementptr float, ptr %181, i64 %45
  %183 = load float, ptr %182, align 4, !tbaa !8
  %184 = getelementptr inbounds nuw i8, ptr %4, i64 116
  store float %183, ptr %184, align 4, !tbaa !8
  br i1 %35, label %185, label %189

185:                                              ; preds = %173
  %186 = sub nsw i64 %177, %45
  %187 = getelementptr inbounds float, ptr %1, i64 %186
  %188 = load float, ptr %187, align 4, !tbaa !8
  br label %189

189:                                              ; preds = %185, %173
  %190 = phi float [ %188, %185 ], [ 0.000000e+00, %173 ]
  %191 = getelementptr inbounds nuw i8, ptr %4, i64 120
  store float %190, ptr %191, align 8, !tbaa !8
  br i1 %37, label %192, label %196

192:                                              ; preds = %189
  %193 = getelementptr float, ptr %1, i64 %177
  %194 = getelementptr float, ptr %193, i64 %46
  %195 = load float, ptr %194, align 4, !tbaa !8
  br label %196

196:                                              ; preds = %192, %189
  %197 = phi float [ %195, %192 ], [ 0.000000e+00, %189 ]
  %198 = getelementptr inbounds nuw i8, ptr %4, i64 108
  store float %197, ptr %198, align 4, !tbaa !8
  br i1 %38, label %199, label %203

199:                                              ; preds = %196
  %200 = sub nsw i64 %177, %46
  %201 = getelementptr inbounds float, ptr %1, i64 %200
  %202 = load float, ptr %201, align 4, !tbaa !8
  br label %203

203:                                              ; preds = %199, %196
  %204 = phi float [ %202, %199 ], [ 0.000000e+00, %196 ]
  %205 = getelementptr inbounds nuw i8, ptr %4, i64 112
  store float %204, ptr %205, align 16, !tbaa !8
  br i1 %40, label %206, label %210

206:                                              ; preds = %203
  %207 = getelementptr float, ptr %1, i64 %177
  %208 = getelementptr float, ptr %207, i64 %47
  %209 = load float, ptr %208, align 4, !tbaa !8
  br label %210

210:                                              ; preds = %206, %203
  %211 = phi float [ %209, %206 ], [ 0.000000e+00, %203 ]
  %212 = getelementptr inbounds nuw i8, ptr %4, i64 100
  store float %211, ptr %212, align 4, !tbaa !8
  br i1 %41, label %213, label %217

213:                                              ; preds = %210
  %214 = sub nsw i64 %177, %47
  %215 = getelementptr inbounds float, ptr %1, i64 %214
  %216 = load float, ptr %215, align 4, !tbaa !8
  br label %217

217:                                              ; preds = %213, %210
  %218 = phi float [ %216, %213 ], [ 0.000000e+00, %210 ]
  %219 = getelementptr inbounds nuw i8, ptr %4, i64 104
  store float %218, ptr %219, align 8, !tbaa !8
  %220 = shl nsw i64 %42, 2
  %221 = add nsw i64 %220, %43
  %222 = getelementptr inbounds float, ptr %1, i64 %221
  %223 = load float, ptr %222, align 4, !tbaa !8
  %224 = getelementptr inbounds nuw i8, ptr %4, i64 128
  store float %223, ptr %224, align 16, !tbaa !8
  %225 = getelementptr float, ptr %1, i64 %221
  %226 = getelementptr float, ptr %225, i64 %45
  %227 = load float, ptr %226, align 4, !tbaa !8
  %228 = getelementptr inbounds nuw i8, ptr %4, i64 148
  store float %227, ptr %228, align 4, !tbaa !8
  br i1 %35, label %229, label %233

229:                                              ; preds = %217
  %230 = sub nsw i64 %221, %45
  %231 = getelementptr inbounds float, ptr %1, i64 %230
  %232 = load float, ptr %231, align 4, !tbaa !8
  br label %233

233:                                              ; preds = %229, %217
  %234 = phi float [ %232, %229 ], [ 0.000000e+00, %217 ]
  %235 = getelementptr inbounds nuw i8, ptr %4, i64 152
  store float %234, ptr %235, align 8, !tbaa !8
  br i1 %37, label %236, label %240

236:                                              ; preds = %233
  %237 = getelementptr float, ptr %1, i64 %221
  %238 = getelementptr float, ptr %237, i64 %46
  %239 = load float, ptr %238, align 4, !tbaa !8
  br label %240

240:                                              ; preds = %236, %233
  %241 = phi float [ %239, %236 ], [ 0.000000e+00, %233 ]
  %242 = getelementptr inbounds nuw i8, ptr %4, i64 140
  store float %241, ptr %242, align 4, !tbaa !8
  br i1 %38, label %243, label %247

243:                                              ; preds = %240
  %244 = sub nsw i64 %221, %46
  %245 = getelementptr inbounds float, ptr %1, i64 %244
  %246 = load float, ptr %245, align 4, !tbaa !8
  br label %247

247:                                              ; preds = %243, %240
  %248 = phi float [ %246, %243 ], [ 0.000000e+00, %240 ]
  %249 = getelementptr inbounds nuw i8, ptr %4, i64 144
  store float %248, ptr %249, align 16, !tbaa !8
  br i1 %40, label %250, label %254

250:                                              ; preds = %247
  %251 = getelementptr float, ptr %1, i64 %221
  %252 = getelementptr float, ptr %251, i64 %47
  %253 = load float, ptr %252, align 4, !tbaa !8
  br label %254

254:                                              ; preds = %250, %247
  %255 = phi float [ %253, %250 ], [ 0.000000e+00, %247 ]
  %256 = getelementptr inbounds nuw i8, ptr %4, i64 132
  store float %255, ptr %256, align 4, !tbaa !8
  br i1 %41, label %257, label %261

257:                                              ; preds = %254
  %258 = sub nsw i64 %221, %47
  %259 = getelementptr inbounds float, ptr %1, i64 %258
  %260 = load float, ptr %259, align 4, !tbaa !8
  br label %261

261:                                              ; preds = %257, %254
  %262 = phi float [ %260, %257 ], [ 0.000000e+00, %254 ]
  %263 = getelementptr inbounds nuw i8, ptr %4, i64 136
  store float %262, ptr %263, align 8, !tbaa !8
  %264 = mul nsw i64 %42, 5
  %265 = add nsw i64 %264, %43
  %266 = getelementptr inbounds float, ptr %1, i64 %265
  %267 = load float, ptr %266, align 4, !tbaa !8
  %268 = getelementptr inbounds nuw i8, ptr %4, i64 160
  store float %267, ptr %268, align 16, !tbaa !8
  %269 = getelementptr float, ptr %1, i64 %265
  %270 = getelementptr float, ptr %269, i64 %45
  %271 = load float, ptr %270, align 4, !tbaa !8
  %272 = getelementptr inbounds nuw i8, ptr %4, i64 180
  store float %271, ptr %272, align 4, !tbaa !8
  br i1 %35, label %273, label %277

273:                                              ; preds = %261
  %274 = sub nsw i64 %265, %45
  %275 = getelementptr inbounds float, ptr %1, i64 %274
  %276 = load float, ptr %275, align 4, !tbaa !8
  br label %277

277:                                              ; preds = %273, %261
  %278 = phi float [ %276, %273 ], [ 0.000000e+00, %261 ]
  %279 = getelementptr inbounds nuw i8, ptr %4, i64 184
  store float %278, ptr %279, align 8, !tbaa !8
  br i1 %37, label %280, label %284

280:                                              ; preds = %277
  %281 = getelementptr float, ptr %1, i64 %265
  %282 = getelementptr float, ptr %281, i64 %46
  %283 = load float, ptr %282, align 4, !tbaa !8
  br label %284

284:                                              ; preds = %280, %277
  %285 = phi float [ %283, %280 ], [ 0.000000e+00, %277 ]
  %286 = getelementptr inbounds nuw i8, ptr %4, i64 172
  store float %285, ptr %286, align 4, !tbaa !8
  br i1 %38, label %287, label %291

287:                                              ; preds = %284
  %288 = sub nsw i64 %265, %46
  %289 = getelementptr inbounds float, ptr %1, i64 %288
  %290 = load float, ptr %289, align 4, !tbaa !8
  br label %291

291:                                              ; preds = %287, %284
  %292 = phi float [ %290, %287 ], [ 0.000000e+00, %284 ]
  %293 = getelementptr inbounds nuw i8, ptr %4, i64 176
  store float %292, ptr %293, align 16, !tbaa !8
  br i1 %40, label %294, label %298

294:                                              ; preds = %291
  %295 = getelementptr float, ptr %1, i64 %265
  %296 = getelementptr float, ptr %295, i64 %47
  %297 = load float, ptr %296, align 4, !tbaa !8
  br label %298

298:                                              ; preds = %294, %291
  %299 = phi float [ %297, %294 ], [ 0.000000e+00, %291 ]
  %300 = getelementptr inbounds nuw i8, ptr %4, i64 164
  store float %299, ptr %300, align 4, !tbaa !8
  br i1 %41, label %301, label %305

301:                                              ; preds = %298
  %302 = sub nsw i64 %265, %47
  %303 = getelementptr inbounds float, ptr %1, i64 %302
  %304 = load float, ptr %303, align 4, !tbaa !8
  br label %305

305:                                              ; preds = %301, %298
  %306 = phi float [ %304, %301 ], [ 0.000000e+00, %298 ]
  %307 = getelementptr inbounds nuw i8, ptr %4, i64 168
  store float %306, ptr %307, align 8, !tbaa !8
  %308 = mul nsw i64 %42, 6
  %309 = add nsw i64 %308, %43
  %310 = getelementptr inbounds float, ptr %1, i64 %309
  %311 = load float, ptr %310, align 4, !tbaa !8
  %312 = getelementptr inbounds nuw i8, ptr %4, i64 192
  store float %311, ptr %312, align 16, !tbaa !8
  %313 = getelementptr float, ptr %1, i64 %309
  %314 = getelementptr float, ptr %313, i64 %45
  %315 = load float, ptr %314, align 4, !tbaa !8
  %316 = getelementptr inbounds nuw i8, ptr %4, i64 212
  store float %315, ptr %316, align 4, !tbaa !8
  br i1 %35, label %317, label %321

317:                                              ; preds = %305
  %318 = sub nsw i64 %309, %45
  %319 = getelementptr inbounds float, ptr %1, i64 %318
  %320 = load float, ptr %319, align 4, !tbaa !8
  br label %321

321:                                              ; preds = %317, %305
  %322 = phi float [ %320, %317 ], [ 0.000000e+00, %305 ]
  %323 = getelementptr inbounds nuw i8, ptr %4, i64 216
  store float %322, ptr %323, align 8, !tbaa !8
  br i1 %37, label %324, label %328

324:                                              ; preds = %321
  %325 = getelementptr float, ptr %1, i64 %309
  %326 = getelementptr float, ptr %325, i64 %46
  %327 = load float, ptr %326, align 4, !tbaa !8
  br label %328

328:                                              ; preds = %324, %321
  %329 = phi float [ %327, %324 ], [ 0.000000e+00, %321 ]
  %330 = getelementptr inbounds nuw i8, ptr %4, i64 204
  store float %329, ptr %330, align 4, !tbaa !8
  br i1 %38, label %331, label %335

331:                                              ; preds = %328
  %332 = sub nsw i64 %309, %46
  %333 = getelementptr inbounds float, ptr %1, i64 %332
  %334 = load float, ptr %333, align 4, !tbaa !8
  br label %335

335:                                              ; preds = %331, %328
  %336 = phi float [ %334, %331 ], [ 0.000000e+00, %328 ]
  %337 = getelementptr inbounds nuw i8, ptr %4, i64 208
  store float %336, ptr %337, align 16, !tbaa !8
  br i1 %40, label %338, label %342

338:                                              ; preds = %335
  %339 = getelementptr float, ptr %1, i64 %309
  %340 = getelementptr float, ptr %339, i64 %47
  %341 = load float, ptr %340, align 4, !tbaa !8
  br label %342

342:                                              ; preds = %338, %335
  %343 = phi float [ %341, %338 ], [ 0.000000e+00, %335 ]
  %344 = getelementptr inbounds nuw i8, ptr %4, i64 196
  store float %343, ptr %344, align 4, !tbaa !8
  br i1 %41, label %345, label %349

345:                                              ; preds = %342
  %346 = sub nsw i64 %309, %47
  %347 = getelementptr inbounds float, ptr %1, i64 %346
  %348 = load float, ptr %347, align 4, !tbaa !8
  br label %349

349:                                              ; preds = %345, %342
  %350 = phi float [ %348, %345 ], [ 0.000000e+00, %342 ]
  %351 = getelementptr inbounds nuw i8, ptr %4, i64 200
  store float %350, ptr %351, align 8, !tbaa !8
  %352 = mul nsw i64 %42, 7
  %353 = add nsw i64 %352, %43
  %354 = getelementptr inbounds float, ptr %1, i64 %353
  %355 = load float, ptr %354, align 4, !tbaa !8
  %356 = getelementptr inbounds nuw i8, ptr %4, i64 224
  store float %355, ptr %356, align 16, !tbaa !8
  %357 = getelementptr float, ptr %1, i64 %353
  %358 = getelementptr float, ptr %357, i64 %45
  %359 = load float, ptr %358, align 4, !tbaa !8
  %360 = getelementptr inbounds nuw i8, ptr %4, i64 244
  store float %359, ptr %360, align 4, !tbaa !8
  br i1 %35, label %361, label %365

361:                                              ; preds = %349
  %362 = sub nsw i64 %353, %45
  %363 = getelementptr inbounds float, ptr %1, i64 %362
  %364 = load float, ptr %363, align 4, !tbaa !8
  br label %365

365:                                              ; preds = %361, %349
  %366 = phi float [ %364, %361 ], [ 0.000000e+00, %349 ]
  %367 = getelementptr inbounds nuw i8, ptr %4, i64 248
  store float %366, ptr %367, align 8, !tbaa !8
  br i1 %37, label %368, label %372

368:                                              ; preds = %365
  %369 = getelementptr float, ptr %1, i64 %353
  %370 = getelementptr float, ptr %369, i64 %46
  %371 = load float, ptr %370, align 4, !tbaa !8
  br label %372

372:                                              ; preds = %368, %365
  %373 = phi float [ %371, %368 ], [ 0.000000e+00, %365 ]
  %374 = getelementptr inbounds nuw i8, ptr %4, i64 236
  store float %373, ptr %374, align 4, !tbaa !8
  br i1 %38, label %375, label %379

375:                                              ; preds = %372
  %376 = sub nsw i64 %353, %46
  %377 = getelementptr inbounds float, ptr %1, i64 %376
  %378 = load float, ptr %377, align 4, !tbaa !8
  br label %379

379:                                              ; preds = %375, %372
  %380 = phi float [ %378, %375 ], [ 0.000000e+00, %372 ]
  %381 = getelementptr inbounds nuw i8, ptr %4, i64 240
  store float %380, ptr %381, align 16, !tbaa !8
  br i1 %40, label %382, label %386

382:                                              ; preds = %379
  %383 = getelementptr float, ptr %1, i64 %353
  %384 = getelementptr float, ptr %383, i64 %47
  %385 = load float, ptr %384, align 4, !tbaa !8
  br label %386

386:                                              ; preds = %382, %379
  %387 = phi float [ %385, %382 ], [ 0.000000e+00, %379 ]
  %388 = getelementptr inbounds nuw i8, ptr %4, i64 228
  store float %387, ptr %388, align 4, !tbaa !8
  br i1 %41, label %389, label %701

389:                                              ; preds = %386
  %390 = sub nsw i64 %353, %47
  br label %697

391:                                              ; preds = %19
  br i1 %35, label %398, label %392

392:                                              ; preds = %391
  %393 = sext i32 %24 to i64
  %394 = sext i32 %28 to i64
  %395 = getelementptr inbounds float, ptr %1, i64 %43
  %396 = load float, ptr %395, align 4, !tbaa !8
  store float %396, ptr %4, align 16, !tbaa !8
  %397 = getelementptr inbounds nuw i8, ptr %4, i64 20
  store <2 x float> zeroinitializer, ptr %397, align 4, !tbaa !8
  br i1 %37, label %743, label %747

398:                                              ; preds = %391
  %399 = sext i32 %21 to i64
  %400 = sext i32 %24 to i64
  %401 = sext i32 %28 to i64
  %402 = getelementptr inbounds float, ptr %1, i64 %43
  %403 = load float, ptr %402, align 4, !tbaa !8
  store float %403, ptr %4, align 16, !tbaa !8
  %404 = getelementptr inbounds nuw i8, ptr %4, i64 20
  store float 0.000000e+00, ptr %404, align 4, !tbaa !8
  %405 = sub nsw i64 %43, %399
  %406 = getelementptr inbounds float, ptr %1, i64 %405
  %407 = load float, ptr %406, align 4, !tbaa !8
  %408 = getelementptr inbounds nuw i8, ptr %4, i64 24
  store float %407, ptr %408, align 8, !tbaa !8
  br i1 %37, label %409, label %413

409:                                              ; preds = %398
  %410 = getelementptr float, ptr %1, i64 %43
  %411 = getelementptr float, ptr %410, i64 %400
  %412 = load float, ptr %411, align 4, !tbaa !8
  br label %413

413:                                              ; preds = %409, %398
  %414 = phi float [ %412, %409 ], [ 0.000000e+00, %398 ]
  %415 = getelementptr inbounds nuw i8, ptr %4, i64 12
  store float %414, ptr %415, align 4, !tbaa !8
  br i1 %38, label %416, label %420

416:                                              ; preds = %413
  %417 = sub nsw i64 %43, %400
  %418 = getelementptr inbounds float, ptr %1, i64 %417
  %419 = load float, ptr %418, align 4, !tbaa !8
  br label %420

420:                                              ; preds = %416, %413
  %421 = phi float [ %419, %416 ], [ 0.000000e+00, %413 ]
  %422 = getelementptr inbounds nuw i8, ptr %4, i64 16
  store float %421, ptr %422, align 16, !tbaa !8
  br i1 %40, label %423, label %427

423:                                              ; preds = %420
  %424 = getelementptr float, ptr %1, i64 %43
  %425 = getelementptr float, ptr %424, i64 %401
  %426 = load float, ptr %425, align 4, !tbaa !8
  br label %427

427:                                              ; preds = %423, %420
  %428 = phi float [ %426, %423 ], [ 0.000000e+00, %420 ]
  %429 = getelementptr inbounds nuw i8, ptr %4, i64 4
  store float %428, ptr %429, align 4, !tbaa !8
  br i1 %41, label %430, label %434

430:                                              ; preds = %427
  %431 = sub nsw i64 %43, %401
  %432 = getelementptr inbounds float, ptr %1, i64 %431
  %433 = load float, ptr %432, align 4, !tbaa !8
  br label %434

434:                                              ; preds = %430, %427
  %435 = phi float [ %433, %430 ], [ 0.000000e+00, %427 ]
  %436 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store float %435, ptr %436, align 8, !tbaa !8
  %437 = add nsw i64 %42, %43
  %438 = getelementptr inbounds float, ptr %1, i64 %437
  %439 = load float, ptr %438, align 4, !tbaa !8
  %440 = getelementptr inbounds nuw i8, ptr %4, i64 32
  store float %439, ptr %440, align 16, !tbaa !8
  %441 = getelementptr inbounds nuw i8, ptr %4, i64 52
  store float 0.000000e+00, ptr %441, align 4, !tbaa !8
  %442 = sub nsw i64 %437, %399
  %443 = getelementptr inbounds float, ptr %1, i64 %442
  %444 = load float, ptr %443, align 4, !tbaa !8
  %445 = getelementptr inbounds nuw i8, ptr %4, i64 56
  store float %444, ptr %445, align 8, !tbaa !8
  br i1 %37, label %446, label %450

446:                                              ; preds = %434
  %447 = getelementptr float, ptr %1, i64 %437
  %448 = getelementptr float, ptr %447, i64 %400
  %449 = load float, ptr %448, align 4, !tbaa !8
  br label %450

450:                                              ; preds = %446, %434
  %451 = phi float [ %449, %446 ], [ 0.000000e+00, %434 ]
  %452 = getelementptr inbounds nuw i8, ptr %4, i64 44
  store float %451, ptr %452, align 4, !tbaa !8
  br i1 %38, label %453, label %457

453:                                              ; preds = %450
  %454 = sub nsw i64 %437, %400
  %455 = getelementptr inbounds float, ptr %1, i64 %454
  %456 = load float, ptr %455, align 4, !tbaa !8
  br label %457

457:                                              ; preds = %453, %450
  %458 = phi float [ %456, %453 ], [ 0.000000e+00, %450 ]
  %459 = getelementptr inbounds nuw i8, ptr %4, i64 48
  store float %458, ptr %459, align 16, !tbaa !8
  br i1 %40, label %460, label %464

460:                                              ; preds = %457
  %461 = getelementptr float, ptr %1, i64 %437
  %462 = getelementptr float, ptr %461, i64 %401
  %463 = load float, ptr %462, align 4, !tbaa !8
  br label %464

464:                                              ; preds = %460, %457
  %465 = phi float [ %463, %460 ], [ 0.000000e+00, %457 ]
  %466 = getelementptr inbounds nuw i8, ptr %4, i64 36
  store float %465, ptr %466, align 4, !tbaa !8
  br i1 %41, label %467, label %471

467:                                              ; preds = %464
  %468 = sub nsw i64 %437, %401
  %469 = getelementptr inbounds float, ptr %1, i64 %468
  %470 = load float, ptr %469, align 4, !tbaa !8
  br label %471

471:                                              ; preds = %467, %464
  %472 = phi float [ %470, %467 ], [ 0.000000e+00, %464 ]
  %473 = getelementptr inbounds nuw i8, ptr %4, i64 40
  store float %472, ptr %473, align 8, !tbaa !8
  %474 = shl nsw i64 %42, 1
  %475 = add nsw i64 %474, %43
  %476 = getelementptr inbounds float, ptr %1, i64 %475
  %477 = load float, ptr %476, align 4, !tbaa !8
  %478 = getelementptr inbounds nuw i8, ptr %4, i64 64
  store float %477, ptr %478, align 16, !tbaa !8
  %479 = getelementptr inbounds nuw i8, ptr %4, i64 84
  store float 0.000000e+00, ptr %479, align 4, !tbaa !8
  %480 = sub nsw i64 %475, %399
  %481 = getelementptr inbounds float, ptr %1, i64 %480
  %482 = load float, ptr %481, align 4, !tbaa !8
  %483 = getelementptr inbounds nuw i8, ptr %4, i64 88
  store float %482, ptr %483, align 8, !tbaa !8
  br i1 %37, label %484, label %488

484:                                              ; preds = %471
  %485 = getelementptr float, ptr %1, i64 %475
  %486 = getelementptr float, ptr %485, i64 %400
  %487 = load float, ptr %486, align 4, !tbaa !8
  br label %488

488:                                              ; preds = %484, %471
  %489 = phi float [ %487, %484 ], [ 0.000000e+00, %471 ]
  %490 = getelementptr inbounds nuw i8, ptr %4, i64 76
  store float %489, ptr %490, align 4, !tbaa !8
  br i1 %38, label %491, label %495

491:                                              ; preds = %488
  %492 = sub nsw i64 %475, %400
  %493 = getelementptr inbounds float, ptr %1, i64 %492
  %494 = load float, ptr %493, align 4, !tbaa !8
  br label %495

495:                                              ; preds = %491, %488
  %496 = phi float [ %494, %491 ], [ 0.000000e+00, %488 ]
  %497 = getelementptr inbounds nuw i8, ptr %4, i64 80
  store float %496, ptr %497, align 16, !tbaa !8
  br i1 %40, label %498, label %502

498:                                              ; preds = %495
  %499 = getelementptr float, ptr %1, i64 %475
  %500 = getelementptr float, ptr %499, i64 %401
  %501 = load float, ptr %500, align 4, !tbaa !8
  br label %502

502:                                              ; preds = %498, %495
  %503 = phi float [ %501, %498 ], [ 0.000000e+00, %495 ]
  %504 = getelementptr inbounds nuw i8, ptr %4, i64 68
  store float %503, ptr %504, align 4, !tbaa !8
  br i1 %41, label %505, label %509

505:                                              ; preds = %502
  %506 = sub nsw i64 %475, %401
  %507 = getelementptr inbounds float, ptr %1, i64 %506
  %508 = load float, ptr %507, align 4, !tbaa !8
  br label %509

509:                                              ; preds = %505, %502
  %510 = phi float [ %508, %505 ], [ 0.000000e+00, %502 ]
  %511 = getelementptr inbounds nuw i8, ptr %4, i64 72
  store float %510, ptr %511, align 8, !tbaa !8
  %512 = mul nsw i64 %42, 3
  %513 = add nsw i64 %512, %43
  %514 = getelementptr inbounds float, ptr %1, i64 %513
  %515 = load float, ptr %514, align 4, !tbaa !8
  %516 = getelementptr inbounds nuw i8, ptr %4, i64 96
  store float %515, ptr %516, align 16, !tbaa !8
  %517 = getelementptr inbounds nuw i8, ptr %4, i64 116
  store float 0.000000e+00, ptr %517, align 4, !tbaa !8
  %518 = sub nsw i64 %513, %399
  %519 = getelementptr inbounds float, ptr %1, i64 %518
  %520 = load float, ptr %519, align 4, !tbaa !8
  %521 = getelementptr inbounds nuw i8, ptr %4, i64 120
  store float %520, ptr %521, align 8, !tbaa !8
  br i1 %37, label %522, label %526

522:                                              ; preds = %509
  %523 = getelementptr float, ptr %1, i64 %513
  %524 = getelementptr float, ptr %523, i64 %400
  %525 = load float, ptr %524, align 4, !tbaa !8
  br label %526

526:                                              ; preds = %522, %509
  %527 = phi float [ %525, %522 ], [ 0.000000e+00, %509 ]
  %528 = getelementptr inbounds nuw i8, ptr %4, i64 108
  store float %527, ptr %528, align 4, !tbaa !8
  br i1 %38, label %529, label %533

529:                                              ; preds = %526
  %530 = sub nsw i64 %513, %400
  %531 = getelementptr inbounds float, ptr %1, i64 %530
  %532 = load float, ptr %531, align 4, !tbaa !8
  br label %533

533:                                              ; preds = %529, %526
  %534 = phi float [ %532, %529 ], [ 0.000000e+00, %526 ]
  %535 = getelementptr inbounds nuw i8, ptr %4, i64 112
  store float %534, ptr %535, align 16, !tbaa !8
  br i1 %40, label %536, label %540

536:                                              ; preds = %533
  %537 = getelementptr float, ptr %1, i64 %513
  %538 = getelementptr float, ptr %537, i64 %401
  %539 = load float, ptr %538, align 4, !tbaa !8
  br label %540

540:                                              ; preds = %536, %533
  %541 = phi float [ %539, %536 ], [ 0.000000e+00, %533 ]
  %542 = getelementptr inbounds nuw i8, ptr %4, i64 100
  store float %541, ptr %542, align 4, !tbaa !8
  br i1 %41, label %543, label %547

543:                                              ; preds = %540
  %544 = sub nsw i64 %513, %401
  %545 = getelementptr inbounds float, ptr %1, i64 %544
  %546 = load float, ptr %545, align 4, !tbaa !8
  br label %547

547:                                              ; preds = %543, %540
  %548 = phi float [ %546, %543 ], [ 0.000000e+00, %540 ]
  %549 = getelementptr inbounds nuw i8, ptr %4, i64 104
  store float %548, ptr %549, align 8, !tbaa !8
  %550 = shl nsw i64 %42, 2
  %551 = add nsw i64 %550, %43
  %552 = getelementptr inbounds float, ptr %1, i64 %551
  %553 = load float, ptr %552, align 4, !tbaa !8
  %554 = getelementptr inbounds nuw i8, ptr %4, i64 128
  store float %553, ptr %554, align 16, !tbaa !8
  %555 = getelementptr inbounds nuw i8, ptr %4, i64 148
  store float 0.000000e+00, ptr %555, align 4, !tbaa !8
  %556 = sub nsw i64 %551, %399
  %557 = getelementptr inbounds float, ptr %1, i64 %556
  %558 = load float, ptr %557, align 4, !tbaa !8
  %559 = getelementptr inbounds nuw i8, ptr %4, i64 152
  store float %558, ptr %559, align 8, !tbaa !8
  br i1 %37, label %560, label %564

560:                                              ; preds = %547
  %561 = getelementptr float, ptr %1, i64 %551
  %562 = getelementptr float, ptr %561, i64 %400
  %563 = load float, ptr %562, align 4, !tbaa !8
  br label %564

564:                                              ; preds = %560, %547
  %565 = phi float [ %563, %560 ], [ 0.000000e+00, %547 ]
  %566 = getelementptr inbounds nuw i8, ptr %4, i64 140
  store float %565, ptr %566, align 4, !tbaa !8
  br i1 %38, label %567, label %571

567:                                              ; preds = %564
  %568 = sub nsw i64 %551, %400
  %569 = getelementptr inbounds float, ptr %1, i64 %568
  %570 = load float, ptr %569, align 4, !tbaa !8
  br label %571

571:                                              ; preds = %567, %564
  %572 = phi float [ %570, %567 ], [ 0.000000e+00, %564 ]
  %573 = getelementptr inbounds nuw i8, ptr %4, i64 144
  store float %572, ptr %573, align 16, !tbaa !8
  br i1 %40, label %574, label %578

574:                                              ; preds = %571
  %575 = getelementptr float, ptr %1, i64 %551
  %576 = getelementptr float, ptr %575, i64 %401
  %577 = load float, ptr %576, align 4, !tbaa !8
  br label %578

578:                                              ; preds = %574, %571
  %579 = phi float [ %577, %574 ], [ 0.000000e+00, %571 ]
  %580 = getelementptr inbounds nuw i8, ptr %4, i64 132
  store float %579, ptr %580, align 4, !tbaa !8
  br i1 %41, label %581, label %585

581:                                              ; preds = %578
  %582 = sub nsw i64 %551, %401
  %583 = getelementptr inbounds float, ptr %1, i64 %582
  %584 = load float, ptr %583, align 4, !tbaa !8
  br label %585

585:                                              ; preds = %581, %578
  %586 = phi float [ %584, %581 ], [ 0.000000e+00, %578 ]
  %587 = getelementptr inbounds nuw i8, ptr %4, i64 136
  store float %586, ptr %587, align 8, !tbaa !8
  %588 = mul nsw i64 %42, 5
  %589 = add nsw i64 %588, %43
  %590 = getelementptr inbounds float, ptr %1, i64 %589
  %591 = load float, ptr %590, align 4, !tbaa !8
  %592 = getelementptr inbounds nuw i8, ptr %4, i64 160
  store float %591, ptr %592, align 16, !tbaa !8
  %593 = getelementptr inbounds nuw i8, ptr %4, i64 180
  store float 0.000000e+00, ptr %593, align 4, !tbaa !8
  %594 = sub nsw i64 %589, %399
  %595 = getelementptr inbounds float, ptr %1, i64 %594
  %596 = load float, ptr %595, align 4, !tbaa !8
  %597 = getelementptr inbounds nuw i8, ptr %4, i64 184
  store float %596, ptr %597, align 8, !tbaa !8
  br i1 %37, label %598, label %602

598:                                              ; preds = %585
  %599 = getelementptr float, ptr %1, i64 %589
  %600 = getelementptr float, ptr %599, i64 %400
  %601 = load float, ptr %600, align 4, !tbaa !8
  br label %602

602:                                              ; preds = %598, %585
  %603 = phi float [ %601, %598 ], [ 0.000000e+00, %585 ]
  %604 = getelementptr inbounds nuw i8, ptr %4, i64 172
  store float %603, ptr %604, align 4, !tbaa !8
  br i1 %38, label %605, label %609

605:                                              ; preds = %602
  %606 = sub nsw i64 %589, %400
  %607 = getelementptr inbounds float, ptr %1, i64 %606
  %608 = load float, ptr %607, align 4, !tbaa !8
  br label %609

609:                                              ; preds = %605, %602
  %610 = phi float [ %608, %605 ], [ 0.000000e+00, %602 ]
  %611 = getelementptr inbounds nuw i8, ptr %4, i64 176
  store float %610, ptr %611, align 16, !tbaa !8
  br i1 %40, label %612, label %616

612:                                              ; preds = %609
  %613 = getelementptr float, ptr %1, i64 %589
  %614 = getelementptr float, ptr %613, i64 %401
  %615 = load float, ptr %614, align 4, !tbaa !8
  br label %616

616:                                              ; preds = %612, %609
  %617 = phi float [ %615, %612 ], [ 0.000000e+00, %609 ]
  %618 = getelementptr inbounds nuw i8, ptr %4, i64 164
  store float %617, ptr %618, align 4, !tbaa !8
  br i1 %41, label %619, label %623

619:                                              ; preds = %616
  %620 = sub nsw i64 %589, %401
  %621 = getelementptr inbounds float, ptr %1, i64 %620
  %622 = load float, ptr %621, align 4, !tbaa !8
  br label %623

623:                                              ; preds = %619, %616
  %624 = phi float [ %622, %619 ], [ 0.000000e+00, %616 ]
  %625 = getelementptr inbounds nuw i8, ptr %4, i64 168
  store float %624, ptr %625, align 8, !tbaa !8
  %626 = mul nsw i64 %42, 6
  %627 = add nsw i64 %626, %43
  %628 = getelementptr inbounds float, ptr %1, i64 %627
  %629 = load float, ptr %628, align 4, !tbaa !8
  %630 = getelementptr inbounds nuw i8, ptr %4, i64 192
  store float %629, ptr %630, align 16, !tbaa !8
  %631 = getelementptr inbounds nuw i8, ptr %4, i64 212
  store float 0.000000e+00, ptr %631, align 4, !tbaa !8
  %632 = sub nsw i64 %627, %399
  %633 = getelementptr inbounds float, ptr %1, i64 %632
  %634 = load float, ptr %633, align 4, !tbaa !8
  %635 = getelementptr inbounds nuw i8, ptr %4, i64 216
  store float %634, ptr %635, align 8, !tbaa !8
  br i1 %37, label %636, label %640

636:                                              ; preds = %623
  %637 = getelementptr float, ptr %1, i64 %627
  %638 = getelementptr float, ptr %637, i64 %400
  %639 = load float, ptr %638, align 4, !tbaa !8
  br label %640

640:                                              ; preds = %636, %623
  %641 = phi float [ %639, %636 ], [ 0.000000e+00, %623 ]
  %642 = getelementptr inbounds nuw i8, ptr %4, i64 204
  store float %641, ptr %642, align 4, !tbaa !8
  br i1 %38, label %643, label %647

643:                                              ; preds = %640
  %644 = sub nsw i64 %627, %400
  %645 = getelementptr inbounds float, ptr %1, i64 %644
  %646 = load float, ptr %645, align 4, !tbaa !8
  br label %647

647:                                              ; preds = %643, %640
  %648 = phi float [ %646, %643 ], [ 0.000000e+00, %640 ]
  %649 = getelementptr inbounds nuw i8, ptr %4, i64 208
  store float %648, ptr %649, align 16, !tbaa !8
  br i1 %40, label %650, label %654

650:                                              ; preds = %647
  %651 = getelementptr float, ptr %1, i64 %627
  %652 = getelementptr float, ptr %651, i64 %401
  %653 = load float, ptr %652, align 4, !tbaa !8
  br label %654

654:                                              ; preds = %650, %647
  %655 = phi float [ %653, %650 ], [ 0.000000e+00, %647 ]
  %656 = getelementptr inbounds nuw i8, ptr %4, i64 196
  store float %655, ptr %656, align 4, !tbaa !8
  br i1 %41, label %657, label %661

657:                                              ; preds = %654
  %658 = sub nsw i64 %627, %401
  %659 = getelementptr inbounds float, ptr %1, i64 %658
  %660 = load float, ptr %659, align 4, !tbaa !8
  br label %661

661:                                              ; preds = %657, %654
  %662 = phi float [ %660, %657 ], [ 0.000000e+00, %654 ]
  %663 = getelementptr inbounds nuw i8, ptr %4, i64 200
  store float %662, ptr %663, align 8, !tbaa !8
  %664 = mul nsw i64 %42, 7
  %665 = add nsw i64 %664, %43
  %666 = getelementptr inbounds float, ptr %1, i64 %665
  %667 = load float, ptr %666, align 4, !tbaa !8
  %668 = getelementptr inbounds nuw i8, ptr %4, i64 224
  store float %667, ptr %668, align 16, !tbaa !8
  %669 = getelementptr inbounds nuw i8, ptr %4, i64 244
  store float 0.000000e+00, ptr %669, align 4, !tbaa !8
  %670 = sub nsw i64 %665, %399
  %671 = getelementptr inbounds float, ptr %1, i64 %670
  %672 = load float, ptr %671, align 4, !tbaa !8
  %673 = getelementptr inbounds nuw i8, ptr %4, i64 248
  store float %672, ptr %673, align 8, !tbaa !8
  br i1 %37, label %674, label %678

674:                                              ; preds = %661
  %675 = getelementptr float, ptr %1, i64 %665
  %676 = getelementptr float, ptr %675, i64 %400
  %677 = load float, ptr %676, align 4, !tbaa !8
  br label %678

678:                                              ; preds = %674, %661
  %679 = phi float [ %677, %674 ], [ 0.000000e+00, %661 ]
  %680 = getelementptr inbounds nuw i8, ptr %4, i64 236
  store float %679, ptr %680, align 4, !tbaa !8
  br i1 %38, label %681, label %685

681:                                              ; preds = %678
  %682 = sub nsw i64 %665, %400
  %683 = getelementptr inbounds float, ptr %1, i64 %682
  %684 = load float, ptr %683, align 4, !tbaa !8
  br label %685

685:                                              ; preds = %681, %678
  %686 = phi float [ %684, %681 ], [ 0.000000e+00, %678 ]
  %687 = getelementptr inbounds nuw i8, ptr %4, i64 240
  store float %686, ptr %687, align 16, !tbaa !8
  br i1 %40, label %688, label %692

688:                                              ; preds = %685
  %689 = getelementptr float, ptr %1, i64 %665
  %690 = getelementptr float, ptr %689, i64 %401
  %691 = load float, ptr %690, align 4, !tbaa !8
  br label %692

692:                                              ; preds = %688, %685
  %693 = phi float [ %691, %688 ], [ 0.000000e+00, %685 ]
  %694 = getelementptr inbounds nuw i8, ptr %4, i64 228
  store float %693, ptr %694, align 4, !tbaa !8
  br i1 %41, label %695, label %701

695:                                              ; preds = %692
  %696 = sub nsw i64 %665, %401
  br label %697

697:                                              ; preds = %1001, %389, %695
  %698 = phi i64 [ %696, %695 ], [ %390, %389 ], [ %1002, %1001 ]
  %699 = getelementptr inbounds float, ptr %1, i64 %698
  %700 = load float, ptr %699, align 4, !tbaa !8
  br label %701

701:                                              ; preds = %697, %692, %386, %998
  %702 = phi float [ 0.000000e+00, %998 ], [ 0.000000e+00, %386 ], [ 0.000000e+00, %692 ], [ %700, %697 ]
  %703 = getelementptr inbounds nuw i8, ptr %4, i64 232
  store float %702, ptr %703, align 8, !tbaa !8
  call void @CalcularPontos(ptr noundef nonnull %4, i32 noundef %15, i32 noundef %14, i32 noundef %12, ptr noundef nonnull align 4 %2) #9
  %704 = load i32, ptr %31, align 4, !tbaa !4
  %705 = sext i32 %704 to i64
  %706 = getelementptr inbounds nuw i8, ptr %4, i64 28
  %707 = load float, ptr %706, align 4, !tbaa !8
  %708 = getelementptr inbounds float, ptr %0, i64 %43
  store float %707, ptr %708, align 4, !tbaa !8
  %709 = getelementptr inbounds nuw i8, ptr %4, i64 60
  %710 = load float, ptr %709, align 4, !tbaa !8
  %711 = getelementptr float, ptr %0, i64 %43
  %712 = getelementptr float, ptr %711, i64 %705
  store float %710, ptr %712, align 4, !tbaa !8
  %713 = getelementptr inbounds nuw i8, ptr %4, i64 92
  %714 = load float, ptr %713, align 4, !tbaa !8
  %715 = shl nsw i64 %705, 3
  %716 = getelementptr i8, ptr %0, i64 %715
  %717 = getelementptr float, ptr %716, i64 %43
  store float %714, ptr %717, align 4, !tbaa !8
  %718 = getelementptr inbounds nuw i8, ptr %4, i64 124
  %719 = load float, ptr %718, align 4, !tbaa !8
  %720 = mul nsw i64 %705, 12
  %721 = getelementptr i8, ptr %0, i64 %720
  %722 = getelementptr float, ptr %721, i64 %43
  store float %719, ptr %722, align 4, !tbaa !8
  %723 = getelementptr inbounds nuw i8, ptr %4, i64 156
  %724 = load float, ptr %723, align 4, !tbaa !8
  %725 = shl nsw i64 %705, 4
  %726 = getelementptr i8, ptr %0, i64 %725
  %727 = getelementptr float, ptr %726, i64 %43
  store float %724, ptr %727, align 4, !tbaa !8
  %728 = getelementptr inbounds nuw i8, ptr %4, i64 188
  %729 = load float, ptr %728, align 4, !tbaa !8
  %730 = mul nsw i64 %705, 20
  %731 = getelementptr i8, ptr %0, i64 %730
  %732 = getelementptr float, ptr %731, i64 %43
  store float %729, ptr %732, align 4, !tbaa !8
  %733 = getelementptr inbounds nuw i8, ptr %4, i64 220
  %734 = load float, ptr %733, align 4, !tbaa !8
  %735 = mul nsw i64 %705, 24
  %736 = getelementptr i8, ptr %0, i64 %735
  %737 = getelementptr float, ptr %736, i64 %43
  store float %734, ptr %737, align 4, !tbaa !8
  %738 = getelementptr inbounds nuw i8, ptr %4, i64 252
  %739 = load float, ptr %738, align 4, !tbaa !8
  %740 = mul nsw i64 %705, 28
  %741 = getelementptr i8, ptr %0, i64 %740
  %742 = getelementptr float, ptr %741, i64 %43
  store float %739, ptr %742, align 4, !tbaa !8
  br label %1003

743:                                              ; preds = %392
  %744 = getelementptr float, ptr %1, i64 %43
  %745 = getelementptr float, ptr %744, i64 %393
  %746 = load float, ptr %745, align 4, !tbaa !8
  br label %747

747:                                              ; preds = %743, %392
  %748 = phi float [ %746, %743 ], [ 0.000000e+00, %392 ]
  %749 = getelementptr inbounds nuw i8, ptr %4, i64 12
  store float %748, ptr %749, align 4, !tbaa !8
  br i1 %38, label %750, label %754

750:                                              ; preds = %747
  %751 = sub nsw i64 %43, %393
  %752 = getelementptr inbounds float, ptr %1, i64 %751
  %753 = load float, ptr %752, align 4, !tbaa !8
  br label %754

754:                                              ; preds = %750, %747
  %755 = phi float [ %753, %750 ], [ 0.000000e+00, %747 ]
  %756 = getelementptr inbounds nuw i8, ptr %4, i64 16
  store float %755, ptr %756, align 16, !tbaa !8
  br i1 %40, label %757, label %761

757:                                              ; preds = %754
  %758 = getelementptr float, ptr %1, i64 %43
  %759 = getelementptr float, ptr %758, i64 %394
  %760 = load float, ptr %759, align 4, !tbaa !8
  br label %761

761:                                              ; preds = %757, %754
  %762 = phi float [ %760, %757 ], [ 0.000000e+00, %754 ]
  %763 = getelementptr inbounds nuw i8, ptr %4, i64 4
  store float %762, ptr %763, align 4, !tbaa !8
  br i1 %41, label %764, label %768

764:                                              ; preds = %761
  %765 = sub nsw i64 %43, %394
  %766 = getelementptr inbounds float, ptr %1, i64 %765
  %767 = load float, ptr %766, align 4, !tbaa !8
  br label %768

768:                                              ; preds = %764, %761
  %769 = phi float [ %767, %764 ], [ 0.000000e+00, %761 ]
  %770 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store float %769, ptr %770, align 8, !tbaa !8
  %771 = add nsw i64 %42, %43
  %772 = getelementptr inbounds float, ptr %1, i64 %771
  %773 = load float, ptr %772, align 4, !tbaa !8
  %774 = getelementptr inbounds nuw i8, ptr %4, i64 32
  store float %773, ptr %774, align 16, !tbaa !8
  %775 = getelementptr inbounds nuw i8, ptr %4, i64 52
  store <2 x float> zeroinitializer, ptr %775, align 4, !tbaa !8
  br i1 %37, label %776, label %780

776:                                              ; preds = %768
  %777 = getelementptr float, ptr %1, i64 %771
  %778 = getelementptr float, ptr %777, i64 %393
  %779 = load float, ptr %778, align 4, !tbaa !8
  br label %780

780:                                              ; preds = %776, %768
  %781 = phi float [ %779, %776 ], [ 0.000000e+00, %768 ]
  %782 = getelementptr inbounds nuw i8, ptr %4, i64 44
  store float %781, ptr %782, align 4, !tbaa !8
  br i1 %38, label %783, label %787

783:                                              ; preds = %780
  %784 = sub nsw i64 %771, %393
  %785 = getelementptr inbounds float, ptr %1, i64 %784
  %786 = load float, ptr %785, align 4, !tbaa !8
  br label %787

787:                                              ; preds = %783, %780
  %788 = phi float [ %786, %783 ], [ 0.000000e+00, %780 ]
  %789 = getelementptr inbounds nuw i8, ptr %4, i64 48
  store float %788, ptr %789, align 16, !tbaa !8
  br i1 %40, label %790, label %794

790:                                              ; preds = %787
  %791 = getelementptr float, ptr %1, i64 %771
  %792 = getelementptr float, ptr %791, i64 %394
  %793 = load float, ptr %792, align 4, !tbaa !8
  br label %794

794:                                              ; preds = %790, %787
  %795 = phi float [ %793, %790 ], [ 0.000000e+00, %787 ]
  %796 = getelementptr inbounds nuw i8, ptr %4, i64 36
  store float %795, ptr %796, align 4, !tbaa !8
  br i1 %41, label %797, label %801

797:                                              ; preds = %794
  %798 = sub nsw i64 %771, %394
  %799 = getelementptr inbounds float, ptr %1, i64 %798
  %800 = load float, ptr %799, align 4, !tbaa !8
  br label %801

801:                                              ; preds = %797, %794
  %802 = phi float [ %800, %797 ], [ 0.000000e+00, %794 ]
  %803 = getelementptr inbounds nuw i8, ptr %4, i64 40
  store float %802, ptr %803, align 8, !tbaa !8
  %804 = shl nsw i64 %42, 1
  %805 = add nsw i64 %804, %43
  %806 = getelementptr inbounds float, ptr %1, i64 %805
  %807 = load float, ptr %806, align 4, !tbaa !8
  %808 = getelementptr inbounds nuw i8, ptr %4, i64 64
  store float %807, ptr %808, align 16, !tbaa !8
  %809 = getelementptr inbounds nuw i8, ptr %4, i64 84
  store <2 x float> zeroinitializer, ptr %809, align 4, !tbaa !8
  br i1 %37, label %810, label %814

810:                                              ; preds = %801
  %811 = getelementptr float, ptr %1, i64 %805
  %812 = getelementptr float, ptr %811, i64 %393
  %813 = load float, ptr %812, align 4, !tbaa !8
  br label %814

814:                                              ; preds = %810, %801
  %815 = phi float [ %813, %810 ], [ 0.000000e+00, %801 ]
  %816 = getelementptr inbounds nuw i8, ptr %4, i64 76
  store float %815, ptr %816, align 4, !tbaa !8
  br i1 %38, label %817, label %821

817:                                              ; preds = %814
  %818 = sub nsw i64 %805, %393
  %819 = getelementptr inbounds float, ptr %1, i64 %818
  %820 = load float, ptr %819, align 4, !tbaa !8
  br label %821

821:                                              ; preds = %817, %814
  %822 = phi float [ %820, %817 ], [ 0.000000e+00, %814 ]
  %823 = getelementptr inbounds nuw i8, ptr %4, i64 80
  store float %822, ptr %823, align 16, !tbaa !8
  br i1 %40, label %824, label %828

824:                                              ; preds = %821
  %825 = getelementptr float, ptr %1, i64 %805
  %826 = getelementptr float, ptr %825, i64 %394
  %827 = load float, ptr %826, align 4, !tbaa !8
  br label %828

828:                                              ; preds = %824, %821
  %829 = phi float [ %827, %824 ], [ 0.000000e+00, %821 ]
  %830 = getelementptr inbounds nuw i8, ptr %4, i64 68
  store float %829, ptr %830, align 4, !tbaa !8
  br i1 %41, label %831, label %835

831:                                              ; preds = %828
  %832 = sub nsw i64 %805, %394
  %833 = getelementptr inbounds float, ptr %1, i64 %832
  %834 = load float, ptr %833, align 4, !tbaa !8
  br label %835

835:                                              ; preds = %831, %828
  %836 = phi float [ %834, %831 ], [ 0.000000e+00, %828 ]
  %837 = getelementptr inbounds nuw i8, ptr %4, i64 72
  store float %836, ptr %837, align 8, !tbaa !8
  %838 = mul nsw i64 %42, 3
  %839 = add nsw i64 %838, %43
  %840 = getelementptr inbounds float, ptr %1, i64 %839
  %841 = load float, ptr %840, align 4, !tbaa !8
  %842 = getelementptr inbounds nuw i8, ptr %4, i64 96
  store float %841, ptr %842, align 16, !tbaa !8
  %843 = getelementptr inbounds nuw i8, ptr %4, i64 116
  store <2 x float> zeroinitializer, ptr %843, align 4, !tbaa !8
  br i1 %37, label %844, label %848

844:                                              ; preds = %835
  %845 = getelementptr float, ptr %1, i64 %839
  %846 = getelementptr float, ptr %845, i64 %393
  %847 = load float, ptr %846, align 4, !tbaa !8
  br label %848

848:                                              ; preds = %844, %835
  %849 = phi float [ %847, %844 ], [ 0.000000e+00, %835 ]
  %850 = getelementptr inbounds nuw i8, ptr %4, i64 108
  store float %849, ptr %850, align 4, !tbaa !8
  br i1 %38, label %851, label %855

851:                                              ; preds = %848
  %852 = sub nsw i64 %839, %393
  %853 = getelementptr inbounds float, ptr %1, i64 %852
  %854 = load float, ptr %853, align 4, !tbaa !8
  br label %855

855:                                              ; preds = %851, %848
  %856 = phi float [ %854, %851 ], [ 0.000000e+00, %848 ]
  %857 = getelementptr inbounds nuw i8, ptr %4, i64 112
  store float %856, ptr %857, align 16, !tbaa !8
  br i1 %40, label %858, label %862

858:                                              ; preds = %855
  %859 = getelementptr float, ptr %1, i64 %839
  %860 = getelementptr float, ptr %859, i64 %394
  %861 = load float, ptr %860, align 4, !tbaa !8
  br label %862

862:                                              ; preds = %858, %855
  %863 = phi float [ %861, %858 ], [ 0.000000e+00, %855 ]
  %864 = getelementptr inbounds nuw i8, ptr %4, i64 100
  store float %863, ptr %864, align 4, !tbaa !8
  br i1 %41, label %865, label %869

865:                                              ; preds = %862
  %866 = sub nsw i64 %839, %394
  %867 = getelementptr inbounds float, ptr %1, i64 %866
  %868 = load float, ptr %867, align 4, !tbaa !8
  br label %869

869:                                              ; preds = %865, %862
  %870 = phi float [ %868, %865 ], [ 0.000000e+00, %862 ]
  %871 = getelementptr inbounds nuw i8, ptr %4, i64 104
  store float %870, ptr %871, align 8, !tbaa !8
  %872 = shl nsw i64 %42, 2
  %873 = add nsw i64 %872, %43
  %874 = getelementptr inbounds float, ptr %1, i64 %873
  %875 = load float, ptr %874, align 4, !tbaa !8
  %876 = getelementptr inbounds nuw i8, ptr %4, i64 128
  store float %875, ptr %876, align 16, !tbaa !8
  %877 = getelementptr inbounds nuw i8, ptr %4, i64 148
  store <2 x float> zeroinitializer, ptr %877, align 4, !tbaa !8
  br i1 %37, label %878, label %882

878:                                              ; preds = %869
  %879 = getelementptr float, ptr %1, i64 %873
  %880 = getelementptr float, ptr %879, i64 %393
  %881 = load float, ptr %880, align 4, !tbaa !8
  br label %882

882:                                              ; preds = %878, %869
  %883 = phi float [ %881, %878 ], [ 0.000000e+00, %869 ]
  %884 = getelementptr inbounds nuw i8, ptr %4, i64 140
  store float %883, ptr %884, align 4, !tbaa !8
  br i1 %38, label %885, label %889

885:                                              ; preds = %882
  %886 = sub nsw i64 %873, %393
  %887 = getelementptr inbounds float, ptr %1, i64 %886
  %888 = load float, ptr %887, align 4, !tbaa !8
  br label %889

889:                                              ; preds = %885, %882
  %890 = phi float [ %888, %885 ], [ 0.000000e+00, %882 ]
  %891 = getelementptr inbounds nuw i8, ptr %4, i64 144
  store float %890, ptr %891, align 16, !tbaa !8
  br i1 %40, label %892, label %896

892:                                              ; preds = %889
  %893 = getelementptr float, ptr %1, i64 %873
  %894 = getelementptr float, ptr %893, i64 %394
  %895 = load float, ptr %894, align 4, !tbaa !8
  br label %896

896:                                              ; preds = %892, %889
  %897 = phi float [ %895, %892 ], [ 0.000000e+00, %889 ]
  %898 = getelementptr inbounds nuw i8, ptr %4, i64 132
  store float %897, ptr %898, align 4, !tbaa !8
  br i1 %41, label %899, label %903

899:                                              ; preds = %896
  %900 = sub nsw i64 %873, %394
  %901 = getelementptr inbounds float, ptr %1, i64 %900
  %902 = load float, ptr %901, align 4, !tbaa !8
  br label %903

903:                                              ; preds = %899, %896
  %904 = phi float [ %902, %899 ], [ 0.000000e+00, %896 ]
  %905 = getelementptr inbounds nuw i8, ptr %4, i64 136
  store float %904, ptr %905, align 8, !tbaa !8
  %906 = mul nsw i64 %42, 5
  %907 = add nsw i64 %906, %43
  %908 = getelementptr inbounds float, ptr %1, i64 %907
  %909 = load float, ptr %908, align 4, !tbaa !8
  %910 = getelementptr inbounds nuw i8, ptr %4, i64 160
  store float %909, ptr %910, align 16, !tbaa !8
  %911 = getelementptr inbounds nuw i8, ptr %4, i64 180
  store <2 x float> zeroinitializer, ptr %911, align 4, !tbaa !8
  br i1 %37, label %912, label %916

912:                                              ; preds = %903
  %913 = getelementptr float, ptr %1, i64 %907
  %914 = getelementptr float, ptr %913, i64 %393
  %915 = load float, ptr %914, align 4, !tbaa !8
  br label %916

916:                                              ; preds = %912, %903
  %917 = phi float [ %915, %912 ], [ 0.000000e+00, %903 ]
  %918 = getelementptr inbounds nuw i8, ptr %4, i64 172
  store float %917, ptr %918, align 4, !tbaa !8
  br i1 %38, label %919, label %923

919:                                              ; preds = %916
  %920 = sub nsw i64 %907, %393
  %921 = getelementptr inbounds float, ptr %1, i64 %920
  %922 = load float, ptr %921, align 4, !tbaa !8
  br label %923

923:                                              ; preds = %919, %916
  %924 = phi float [ %922, %919 ], [ 0.000000e+00, %916 ]
  %925 = getelementptr inbounds nuw i8, ptr %4, i64 176
  store float %924, ptr %925, align 16, !tbaa !8
  br i1 %40, label %926, label %930

926:                                              ; preds = %923
  %927 = getelementptr float, ptr %1, i64 %907
  %928 = getelementptr float, ptr %927, i64 %394
  %929 = load float, ptr %928, align 4, !tbaa !8
  br label %930

930:                                              ; preds = %926, %923
  %931 = phi float [ %929, %926 ], [ 0.000000e+00, %923 ]
  %932 = getelementptr inbounds nuw i8, ptr %4, i64 164
  store float %931, ptr %932, align 4, !tbaa !8
  br i1 %41, label %933, label %937

933:                                              ; preds = %930
  %934 = sub nsw i64 %907, %394
  %935 = getelementptr inbounds float, ptr %1, i64 %934
  %936 = load float, ptr %935, align 4, !tbaa !8
  br label %937

937:                                              ; preds = %933, %930
  %938 = phi float [ %936, %933 ], [ 0.000000e+00, %930 ]
  %939 = getelementptr inbounds nuw i8, ptr %4, i64 168
  store float %938, ptr %939, align 8, !tbaa !8
  %940 = mul nsw i64 %42, 6
  %941 = add nsw i64 %940, %43
  %942 = getelementptr inbounds float, ptr %1, i64 %941
  %943 = load float, ptr %942, align 4, !tbaa !8
  %944 = getelementptr inbounds nuw i8, ptr %4, i64 192
  store float %943, ptr %944, align 16, !tbaa !8
  %945 = getelementptr inbounds nuw i8, ptr %4, i64 212
  store <2 x float> zeroinitializer, ptr %945, align 4, !tbaa !8
  br i1 %37, label %946, label %950

946:                                              ; preds = %937
  %947 = getelementptr float, ptr %1, i64 %941
  %948 = getelementptr float, ptr %947, i64 %393
  %949 = load float, ptr %948, align 4, !tbaa !8
  br label %950

950:                                              ; preds = %946, %937
  %951 = phi float [ %949, %946 ], [ 0.000000e+00, %937 ]
  %952 = getelementptr inbounds nuw i8, ptr %4, i64 204
  store float %951, ptr %952, align 4, !tbaa !8
  br i1 %38, label %953, label %957

953:                                              ; preds = %950
  %954 = sub nsw i64 %941, %393
  %955 = getelementptr inbounds float, ptr %1, i64 %954
  %956 = load float, ptr %955, align 4, !tbaa !8
  br label %957

957:                                              ; preds = %953, %950
  %958 = phi float [ %956, %953 ], [ 0.000000e+00, %950 ]
  %959 = getelementptr inbounds nuw i8, ptr %4, i64 208
  store float %958, ptr %959, align 16, !tbaa !8
  br i1 %40, label %960, label %964

960:                                              ; preds = %957
  %961 = getelementptr float, ptr %1, i64 %941
  %962 = getelementptr float, ptr %961, i64 %394
  %963 = load float, ptr %962, align 4, !tbaa !8
  br label %964

964:                                              ; preds = %960, %957
  %965 = phi float [ %963, %960 ], [ 0.000000e+00, %957 ]
  %966 = getelementptr inbounds nuw i8, ptr %4, i64 196
  store float %965, ptr %966, align 4, !tbaa !8
  br i1 %41, label %967, label %971

967:                                              ; preds = %964
  %968 = sub nsw i64 %941, %394
  %969 = getelementptr inbounds float, ptr %1, i64 %968
  %970 = load float, ptr %969, align 4, !tbaa !8
  br label %971

971:                                              ; preds = %967, %964
  %972 = phi float [ %970, %967 ], [ 0.000000e+00, %964 ]
  %973 = getelementptr inbounds nuw i8, ptr %4, i64 200
  store float %972, ptr %973, align 8, !tbaa !8
  %974 = mul nsw i64 %42, 7
  %975 = add nsw i64 %974, %43
  %976 = getelementptr inbounds float, ptr %1, i64 %975
  %977 = load float, ptr %976, align 4, !tbaa !8
  %978 = getelementptr inbounds nuw i8, ptr %4, i64 224
  store float %977, ptr %978, align 16, !tbaa !8
  %979 = getelementptr inbounds nuw i8, ptr %4, i64 244
  store <2 x float> zeroinitializer, ptr %979, align 4, !tbaa !8
  br i1 %37, label %980, label %984

980:                                              ; preds = %971
  %981 = getelementptr float, ptr %1, i64 %975
  %982 = getelementptr float, ptr %981, i64 %393
  %983 = load float, ptr %982, align 4, !tbaa !8
  br label %984

984:                                              ; preds = %980, %971
  %985 = phi float [ %983, %980 ], [ 0.000000e+00, %971 ]
  %986 = getelementptr inbounds nuw i8, ptr %4, i64 236
  store float %985, ptr %986, align 4, !tbaa !8
  br i1 %38, label %987, label %991

987:                                              ; preds = %984
  %988 = sub nsw i64 %975, %393
  %989 = getelementptr inbounds float, ptr %1, i64 %988
  %990 = load float, ptr %989, align 4, !tbaa !8
  br label %991

991:                                              ; preds = %987, %984
  %992 = phi float [ %990, %987 ], [ 0.000000e+00, %984 ]
  %993 = getelementptr inbounds nuw i8, ptr %4, i64 240
  store float %992, ptr %993, align 16, !tbaa !8
  br i1 %40, label %994, label %998

994:                                              ; preds = %991
  %995 = getelementptr float, ptr %1, i64 %975
  %996 = getelementptr float, ptr %995, i64 %394
  %997 = load float, ptr %996, align 4, !tbaa !8
  br label %998

998:                                              ; preds = %994, %991
  %999 = phi float [ %997, %994 ], [ 0.000000e+00, %991 ]
  %1000 = getelementptr inbounds nuw i8, ptr %4, i64 228
  store float %999, ptr %1000, align 4, !tbaa !8
  br i1 %41, label %1001, label %701

1001:                                             ; preds = %998
  %1002 = sub nsw i64 %975, %394
  br label %697

1003:                                             ; preds = %701, %3
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #8
  ret void
}

; Function Attrs: alwaysinline convergent norecurse nounwind uwtable
define dso_local void @__clang_ocl_kern_imp_ProcessarPontos(ptr noundef writeonly align 4 captures(none) %0, ptr noundef readonly align 4 captures(none) %1, ptr noundef readonly align 4 captures(none) %2) local_unnamed_addr #6 !kernel_arg_addr_space !11 !kernel_arg_access_qual !12 !kernel_arg_type !13 !kernel_arg_base_type !13 !kernel_arg_type_qual !14 {
  %4 = alloca [64 x float], align 16
  %5 = tail call i64 @get_global_id(i32 noundef 0) #10
  %6 = trunc i64 %5 to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #8
  %7 = getelementptr inbounds nuw i8, ptr %2, i64 12
  %8 = load i32, ptr %7, align 4, !tbaa !4
  %9 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %10 = load i32, ptr %9, align 4, !tbaa !4
  %11 = mul nsw i32 %10, %8
  %12 = sdiv i32 %6, %11
  %13 = srem i32 %6, %11
  %14 = sdiv i32 %13, %10
  %15 = srem i32 %13, %10
  %16 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %17 = load i32, ptr %16, align 4, !tbaa !4
  %18 = icmp slt i32 %12, %17
  br i1 %18, label %19, label %1003

19:                                               ; preds = %3
  %20 = getelementptr inbounds nuw i8, ptr %2, i64 20
  %21 = load i32, ptr %20, align 4, !tbaa !4
  %22 = mul nsw i32 %21, %12
  %23 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %24 = load i32, ptr %23, align 4, !tbaa !4
  %25 = mul nsw i32 %24, %14
  %26 = add nsw i32 %25, %22
  %27 = getelementptr inbounds nuw i8, ptr %2, i64 28
  %28 = load i32, ptr %27, align 4, !tbaa !4
  %29 = mul nsw i32 %28, %15
  %30 = add nsw i32 %26, %29
  %31 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %32 = load i32, ptr %31, align 4, !tbaa !4
  %33 = add nsw i32 %12, 1
  %34 = icmp slt i32 %33, %17
  %35 = icmp sgt i32 %12, 0
  %36 = add nsw i32 %14, 1
  %37 = icmp slt i32 %36, %8
  %38 = icmp sgt i32 %14, 0
  %39 = add nsw i32 %15, 1
  %40 = icmp slt i32 %39, %10
  %41 = icmp sgt i32 %15, 0
  %42 = sext i32 %32 to i64
  %43 = sext i32 %30 to i64
  br i1 %34, label %44, label %391

44:                                               ; preds = %19
  %45 = sext i32 %21 to i64
  %46 = sext i32 %24 to i64
  %47 = sext i32 %28 to i64
  %48 = getelementptr inbounds float, ptr %1, i64 %43
  %49 = load float, ptr %48, align 4, !tbaa !8
  store float %49, ptr %4, align 16, !tbaa !8
  %50 = getelementptr float, ptr %1, i64 %43
  %51 = getelementptr float, ptr %50, i64 %45
  %52 = load float, ptr %51, align 4, !tbaa !8
  %53 = getelementptr inbounds nuw i8, ptr %4, i64 20
  store float %52, ptr %53, align 4, !tbaa !8
  br i1 %35, label %54, label %58

54:                                               ; preds = %44
  %55 = sub nsw i64 %43, %45
  %56 = getelementptr inbounds float, ptr %1, i64 %55
  %57 = load float, ptr %56, align 4, !tbaa !8
  br label %58

58:                                               ; preds = %54, %44
  %59 = phi float [ %57, %54 ], [ 0.000000e+00, %44 ]
  %60 = getelementptr inbounds nuw i8, ptr %4, i64 24
  store float %59, ptr %60, align 8, !tbaa !8
  br i1 %37, label %61, label %65

61:                                               ; preds = %58
  %62 = getelementptr float, ptr %1, i64 %43
  %63 = getelementptr float, ptr %62, i64 %46
  %64 = load float, ptr %63, align 4, !tbaa !8
  br label %65

65:                                               ; preds = %61, %58
  %66 = phi float [ %64, %61 ], [ 0.000000e+00, %58 ]
  %67 = getelementptr inbounds nuw i8, ptr %4, i64 12
  store float %66, ptr %67, align 4, !tbaa !8
  br i1 %38, label %68, label %72

68:                                               ; preds = %65
  %69 = sub nsw i64 %43, %46
  %70 = getelementptr inbounds float, ptr %1, i64 %69
  %71 = load float, ptr %70, align 4, !tbaa !8
  br label %72

72:                                               ; preds = %68, %65
  %73 = phi float [ %71, %68 ], [ 0.000000e+00, %65 ]
  %74 = getelementptr inbounds nuw i8, ptr %4, i64 16
  store float %73, ptr %74, align 16, !tbaa !8
  br i1 %40, label %75, label %79

75:                                               ; preds = %72
  %76 = getelementptr float, ptr %1, i64 %43
  %77 = getelementptr float, ptr %76, i64 %47
  %78 = load float, ptr %77, align 4, !tbaa !8
  br label %79

79:                                               ; preds = %75, %72
  %80 = phi float [ %78, %75 ], [ 0.000000e+00, %72 ]
  %81 = getelementptr inbounds nuw i8, ptr %4, i64 4
  store float %80, ptr %81, align 4, !tbaa !8
  br i1 %41, label %82, label %86

82:                                               ; preds = %79
  %83 = sub nsw i64 %43, %47
  %84 = getelementptr inbounds float, ptr %1, i64 %83
  %85 = load float, ptr %84, align 4, !tbaa !8
  br label %86

86:                                               ; preds = %82, %79
  %87 = phi float [ %85, %82 ], [ 0.000000e+00, %79 ]
  %88 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store float %87, ptr %88, align 8, !tbaa !8
  %89 = add nsw i64 %42, %43
  %90 = getelementptr inbounds float, ptr %1, i64 %89
  %91 = load float, ptr %90, align 4, !tbaa !8
  %92 = getelementptr inbounds nuw i8, ptr %4, i64 32
  store float %91, ptr %92, align 16, !tbaa !8
  %93 = getelementptr float, ptr %1, i64 %89
  %94 = getelementptr float, ptr %93, i64 %45
  %95 = load float, ptr %94, align 4, !tbaa !8
  %96 = getelementptr inbounds nuw i8, ptr %4, i64 52
  store float %95, ptr %96, align 4, !tbaa !8
  br i1 %35, label %97, label %101

97:                                               ; preds = %86
  %98 = sub nsw i64 %89, %45
  %99 = getelementptr inbounds float, ptr %1, i64 %98
  %100 = load float, ptr %99, align 4, !tbaa !8
  br label %101

101:                                              ; preds = %97, %86
  %102 = phi float [ %100, %97 ], [ 0.000000e+00, %86 ]
  %103 = getelementptr inbounds nuw i8, ptr %4, i64 56
  store float %102, ptr %103, align 8, !tbaa !8
  br i1 %37, label %104, label %108

104:                                              ; preds = %101
  %105 = getelementptr float, ptr %1, i64 %89
  %106 = getelementptr float, ptr %105, i64 %46
  %107 = load float, ptr %106, align 4, !tbaa !8
  br label %108

108:                                              ; preds = %104, %101
  %109 = phi float [ %107, %104 ], [ 0.000000e+00, %101 ]
  %110 = getelementptr inbounds nuw i8, ptr %4, i64 44
  store float %109, ptr %110, align 4, !tbaa !8
  br i1 %38, label %111, label %115

111:                                              ; preds = %108
  %112 = sub nsw i64 %89, %46
  %113 = getelementptr inbounds float, ptr %1, i64 %112
  %114 = load float, ptr %113, align 4, !tbaa !8
  br label %115

115:                                              ; preds = %111, %108
  %116 = phi float [ %114, %111 ], [ 0.000000e+00, %108 ]
  %117 = getelementptr inbounds nuw i8, ptr %4, i64 48
  store float %116, ptr %117, align 16, !tbaa !8
  br i1 %40, label %118, label %122

118:                                              ; preds = %115
  %119 = getelementptr float, ptr %1, i64 %89
  %120 = getelementptr float, ptr %119, i64 %47
  %121 = load float, ptr %120, align 4, !tbaa !8
  br label %122

122:                                              ; preds = %118, %115
  %123 = phi float [ %121, %118 ], [ 0.000000e+00, %115 ]
  %124 = getelementptr inbounds nuw i8, ptr %4, i64 36
  store float %123, ptr %124, align 4, !tbaa !8
  br i1 %41, label %125, label %129

125:                                              ; preds = %122
  %126 = sub nsw i64 %89, %47
  %127 = getelementptr inbounds float, ptr %1, i64 %126
  %128 = load float, ptr %127, align 4, !tbaa !8
  br label %129

129:                                              ; preds = %125, %122
  %130 = phi float [ %128, %125 ], [ 0.000000e+00, %122 ]
  %131 = getelementptr inbounds nuw i8, ptr %4, i64 40
  store float %130, ptr %131, align 8, !tbaa !8
  %132 = shl nsw i64 %42, 1
  %133 = add nsw i64 %132, %43
  %134 = getelementptr inbounds float, ptr %1, i64 %133
  %135 = load float, ptr %134, align 4, !tbaa !8
  %136 = getelementptr inbounds nuw i8, ptr %4, i64 64
  store float %135, ptr %136, align 16, !tbaa !8
  %137 = getelementptr float, ptr %1, i64 %133
  %138 = getelementptr float, ptr %137, i64 %45
  %139 = load float, ptr %138, align 4, !tbaa !8
  %140 = getelementptr inbounds nuw i8, ptr %4, i64 84
  store float %139, ptr %140, align 4, !tbaa !8
  br i1 %35, label %141, label %145

141:                                              ; preds = %129
  %142 = sub nsw i64 %133, %45
  %143 = getelementptr inbounds float, ptr %1, i64 %142
  %144 = load float, ptr %143, align 4, !tbaa !8
  br label %145

145:                                              ; preds = %141, %129
  %146 = phi float [ %144, %141 ], [ 0.000000e+00, %129 ]
  %147 = getelementptr inbounds nuw i8, ptr %4, i64 88
  store float %146, ptr %147, align 8, !tbaa !8
  br i1 %37, label %148, label %152

148:                                              ; preds = %145
  %149 = getelementptr float, ptr %1, i64 %133
  %150 = getelementptr float, ptr %149, i64 %46
  %151 = load float, ptr %150, align 4, !tbaa !8
  br label %152

152:                                              ; preds = %148, %145
  %153 = phi float [ %151, %148 ], [ 0.000000e+00, %145 ]
  %154 = getelementptr inbounds nuw i8, ptr %4, i64 76
  store float %153, ptr %154, align 4, !tbaa !8
  br i1 %38, label %155, label %159

155:                                              ; preds = %152
  %156 = sub nsw i64 %133, %46
  %157 = getelementptr inbounds float, ptr %1, i64 %156
  %158 = load float, ptr %157, align 4, !tbaa !8
  br label %159

159:                                              ; preds = %155, %152
  %160 = phi float [ %158, %155 ], [ 0.000000e+00, %152 ]
  %161 = getelementptr inbounds nuw i8, ptr %4, i64 80
  store float %160, ptr %161, align 16, !tbaa !8
  br i1 %40, label %162, label %166

162:                                              ; preds = %159
  %163 = getelementptr float, ptr %1, i64 %133
  %164 = getelementptr float, ptr %163, i64 %47
  %165 = load float, ptr %164, align 4, !tbaa !8
  br label %166

166:                                              ; preds = %162, %159
  %167 = phi float [ %165, %162 ], [ 0.000000e+00, %159 ]
  %168 = getelementptr inbounds nuw i8, ptr %4, i64 68
  store float %167, ptr %168, align 4, !tbaa !8
  br i1 %41, label %169, label %173

169:                                              ; preds = %166
  %170 = sub nsw i64 %133, %47
  %171 = getelementptr inbounds float, ptr %1, i64 %170
  %172 = load float, ptr %171, align 4, !tbaa !8
  br label %173

173:                                              ; preds = %169, %166
  %174 = phi float [ %172, %169 ], [ 0.000000e+00, %166 ]
  %175 = getelementptr inbounds nuw i8, ptr %4, i64 72
  store float %174, ptr %175, align 8, !tbaa !8
  %176 = mul nsw i64 %42, 3
  %177 = add nsw i64 %176, %43
  %178 = getelementptr inbounds float, ptr %1, i64 %177
  %179 = load float, ptr %178, align 4, !tbaa !8
  %180 = getelementptr inbounds nuw i8, ptr %4, i64 96
  store float %179, ptr %180, align 16, !tbaa !8
  %181 = getelementptr float, ptr %1, i64 %177
  %182 = getelementptr float, ptr %181, i64 %45
  %183 = load float, ptr %182, align 4, !tbaa !8
  %184 = getelementptr inbounds nuw i8, ptr %4, i64 116
  store float %183, ptr %184, align 4, !tbaa !8
  br i1 %35, label %185, label %189

185:                                              ; preds = %173
  %186 = sub nsw i64 %177, %45
  %187 = getelementptr inbounds float, ptr %1, i64 %186
  %188 = load float, ptr %187, align 4, !tbaa !8
  br label %189

189:                                              ; preds = %185, %173
  %190 = phi float [ %188, %185 ], [ 0.000000e+00, %173 ]
  %191 = getelementptr inbounds nuw i8, ptr %4, i64 120
  store float %190, ptr %191, align 8, !tbaa !8
  br i1 %37, label %192, label %196

192:                                              ; preds = %189
  %193 = getelementptr float, ptr %1, i64 %177
  %194 = getelementptr float, ptr %193, i64 %46
  %195 = load float, ptr %194, align 4, !tbaa !8
  br label %196

196:                                              ; preds = %192, %189
  %197 = phi float [ %195, %192 ], [ 0.000000e+00, %189 ]
  %198 = getelementptr inbounds nuw i8, ptr %4, i64 108
  store float %197, ptr %198, align 4, !tbaa !8
  br i1 %38, label %199, label %203

199:                                              ; preds = %196
  %200 = sub nsw i64 %177, %46
  %201 = getelementptr inbounds float, ptr %1, i64 %200
  %202 = load float, ptr %201, align 4, !tbaa !8
  br label %203

203:                                              ; preds = %199, %196
  %204 = phi float [ %202, %199 ], [ 0.000000e+00, %196 ]
  %205 = getelementptr inbounds nuw i8, ptr %4, i64 112
  store float %204, ptr %205, align 16, !tbaa !8
  br i1 %40, label %206, label %210

206:                                              ; preds = %203
  %207 = getelementptr float, ptr %1, i64 %177
  %208 = getelementptr float, ptr %207, i64 %47
  %209 = load float, ptr %208, align 4, !tbaa !8
  br label %210

210:                                              ; preds = %206, %203
  %211 = phi float [ %209, %206 ], [ 0.000000e+00, %203 ]
  %212 = getelementptr inbounds nuw i8, ptr %4, i64 100
  store float %211, ptr %212, align 4, !tbaa !8
  br i1 %41, label %213, label %217

213:                                              ; preds = %210
  %214 = sub nsw i64 %177, %47
  %215 = getelementptr inbounds float, ptr %1, i64 %214
  %216 = load float, ptr %215, align 4, !tbaa !8
  br label %217

217:                                              ; preds = %213, %210
  %218 = phi float [ %216, %213 ], [ 0.000000e+00, %210 ]
  %219 = getelementptr inbounds nuw i8, ptr %4, i64 104
  store float %218, ptr %219, align 8, !tbaa !8
  %220 = shl nsw i64 %42, 2
  %221 = add nsw i64 %220, %43
  %222 = getelementptr inbounds float, ptr %1, i64 %221
  %223 = load float, ptr %222, align 4, !tbaa !8
  %224 = getelementptr inbounds nuw i8, ptr %4, i64 128
  store float %223, ptr %224, align 16, !tbaa !8
  %225 = getelementptr float, ptr %1, i64 %221
  %226 = getelementptr float, ptr %225, i64 %45
  %227 = load float, ptr %226, align 4, !tbaa !8
  %228 = getelementptr inbounds nuw i8, ptr %4, i64 148
  store float %227, ptr %228, align 4, !tbaa !8
  br i1 %35, label %229, label %233

229:                                              ; preds = %217
  %230 = sub nsw i64 %221, %45
  %231 = getelementptr inbounds float, ptr %1, i64 %230
  %232 = load float, ptr %231, align 4, !tbaa !8
  br label %233

233:                                              ; preds = %229, %217
  %234 = phi float [ %232, %229 ], [ 0.000000e+00, %217 ]
  %235 = getelementptr inbounds nuw i8, ptr %4, i64 152
  store float %234, ptr %235, align 8, !tbaa !8
  br i1 %37, label %236, label %240

236:                                              ; preds = %233
  %237 = getelementptr float, ptr %1, i64 %221
  %238 = getelementptr float, ptr %237, i64 %46
  %239 = load float, ptr %238, align 4, !tbaa !8
  br label %240

240:                                              ; preds = %236, %233
  %241 = phi float [ %239, %236 ], [ 0.000000e+00, %233 ]
  %242 = getelementptr inbounds nuw i8, ptr %4, i64 140
  store float %241, ptr %242, align 4, !tbaa !8
  br i1 %38, label %243, label %247

243:                                              ; preds = %240
  %244 = sub nsw i64 %221, %46
  %245 = getelementptr inbounds float, ptr %1, i64 %244
  %246 = load float, ptr %245, align 4, !tbaa !8
  br label %247

247:                                              ; preds = %243, %240
  %248 = phi float [ %246, %243 ], [ 0.000000e+00, %240 ]
  %249 = getelementptr inbounds nuw i8, ptr %4, i64 144
  store float %248, ptr %249, align 16, !tbaa !8
  br i1 %40, label %250, label %254

250:                                              ; preds = %247
  %251 = getelementptr float, ptr %1, i64 %221
  %252 = getelementptr float, ptr %251, i64 %47
  %253 = load float, ptr %252, align 4, !tbaa !8
  br label %254

254:                                              ; preds = %250, %247
  %255 = phi float [ %253, %250 ], [ 0.000000e+00, %247 ]
  %256 = getelementptr inbounds nuw i8, ptr %4, i64 132
  store float %255, ptr %256, align 4, !tbaa !8
  br i1 %41, label %257, label %261

257:                                              ; preds = %254
  %258 = sub nsw i64 %221, %47
  %259 = getelementptr inbounds float, ptr %1, i64 %258
  %260 = load float, ptr %259, align 4, !tbaa !8
  br label %261

261:                                              ; preds = %257, %254
  %262 = phi float [ %260, %257 ], [ 0.000000e+00, %254 ]
  %263 = getelementptr inbounds nuw i8, ptr %4, i64 136
  store float %262, ptr %263, align 8, !tbaa !8
  %264 = mul nsw i64 %42, 5
  %265 = add nsw i64 %264, %43
  %266 = getelementptr inbounds float, ptr %1, i64 %265
  %267 = load float, ptr %266, align 4, !tbaa !8
  %268 = getelementptr inbounds nuw i8, ptr %4, i64 160
  store float %267, ptr %268, align 16, !tbaa !8
  %269 = getelementptr float, ptr %1, i64 %265
  %270 = getelementptr float, ptr %269, i64 %45
  %271 = load float, ptr %270, align 4, !tbaa !8
  %272 = getelementptr inbounds nuw i8, ptr %4, i64 180
  store float %271, ptr %272, align 4, !tbaa !8
  br i1 %35, label %273, label %277

273:                                              ; preds = %261
  %274 = sub nsw i64 %265, %45
  %275 = getelementptr inbounds float, ptr %1, i64 %274
  %276 = load float, ptr %275, align 4, !tbaa !8
  br label %277

277:                                              ; preds = %273, %261
  %278 = phi float [ %276, %273 ], [ 0.000000e+00, %261 ]
  %279 = getelementptr inbounds nuw i8, ptr %4, i64 184
  store float %278, ptr %279, align 8, !tbaa !8
  br i1 %37, label %280, label %284

280:                                              ; preds = %277
  %281 = getelementptr float, ptr %1, i64 %265
  %282 = getelementptr float, ptr %281, i64 %46
  %283 = load float, ptr %282, align 4, !tbaa !8
  br label %284

284:                                              ; preds = %280, %277
  %285 = phi float [ %283, %280 ], [ 0.000000e+00, %277 ]
  %286 = getelementptr inbounds nuw i8, ptr %4, i64 172
  store float %285, ptr %286, align 4, !tbaa !8
  br i1 %38, label %287, label %291

287:                                              ; preds = %284
  %288 = sub nsw i64 %265, %46
  %289 = getelementptr inbounds float, ptr %1, i64 %288
  %290 = load float, ptr %289, align 4, !tbaa !8
  br label %291

291:                                              ; preds = %287, %284
  %292 = phi float [ %290, %287 ], [ 0.000000e+00, %284 ]
  %293 = getelementptr inbounds nuw i8, ptr %4, i64 176
  store float %292, ptr %293, align 16, !tbaa !8
  br i1 %40, label %294, label %298

294:                                              ; preds = %291
  %295 = getelementptr float, ptr %1, i64 %265
  %296 = getelementptr float, ptr %295, i64 %47
  %297 = load float, ptr %296, align 4, !tbaa !8
  br label %298

298:                                              ; preds = %294, %291
  %299 = phi float [ %297, %294 ], [ 0.000000e+00, %291 ]
  %300 = getelementptr inbounds nuw i8, ptr %4, i64 164
  store float %299, ptr %300, align 4, !tbaa !8
  br i1 %41, label %301, label %305

301:                                              ; preds = %298
  %302 = sub nsw i64 %265, %47
  %303 = getelementptr inbounds float, ptr %1, i64 %302
  %304 = load float, ptr %303, align 4, !tbaa !8
  br label %305

305:                                              ; preds = %301, %298
  %306 = phi float [ %304, %301 ], [ 0.000000e+00, %298 ]
  %307 = getelementptr inbounds nuw i8, ptr %4, i64 168
  store float %306, ptr %307, align 8, !tbaa !8
  %308 = mul nsw i64 %42, 6
  %309 = add nsw i64 %308, %43
  %310 = getelementptr inbounds float, ptr %1, i64 %309
  %311 = load float, ptr %310, align 4, !tbaa !8
  %312 = getelementptr inbounds nuw i8, ptr %4, i64 192
  store float %311, ptr %312, align 16, !tbaa !8
  %313 = getelementptr float, ptr %1, i64 %309
  %314 = getelementptr float, ptr %313, i64 %45
  %315 = load float, ptr %314, align 4, !tbaa !8
  %316 = getelementptr inbounds nuw i8, ptr %4, i64 212
  store float %315, ptr %316, align 4, !tbaa !8
  br i1 %35, label %317, label %321

317:                                              ; preds = %305
  %318 = sub nsw i64 %309, %45
  %319 = getelementptr inbounds float, ptr %1, i64 %318
  %320 = load float, ptr %319, align 4, !tbaa !8
  br label %321

321:                                              ; preds = %317, %305
  %322 = phi float [ %320, %317 ], [ 0.000000e+00, %305 ]
  %323 = getelementptr inbounds nuw i8, ptr %4, i64 216
  store float %322, ptr %323, align 8, !tbaa !8
  br i1 %37, label %324, label %328

324:                                              ; preds = %321
  %325 = getelementptr float, ptr %1, i64 %309
  %326 = getelementptr float, ptr %325, i64 %46
  %327 = load float, ptr %326, align 4, !tbaa !8
  br label %328

328:                                              ; preds = %324, %321
  %329 = phi float [ %327, %324 ], [ 0.000000e+00, %321 ]
  %330 = getelementptr inbounds nuw i8, ptr %4, i64 204
  store float %329, ptr %330, align 4, !tbaa !8
  br i1 %38, label %331, label %335

331:                                              ; preds = %328
  %332 = sub nsw i64 %309, %46
  %333 = getelementptr inbounds float, ptr %1, i64 %332
  %334 = load float, ptr %333, align 4, !tbaa !8
  br label %335

335:                                              ; preds = %331, %328
  %336 = phi float [ %334, %331 ], [ 0.000000e+00, %328 ]
  %337 = getelementptr inbounds nuw i8, ptr %4, i64 208
  store float %336, ptr %337, align 16, !tbaa !8
  br i1 %40, label %338, label %342

338:                                              ; preds = %335
  %339 = getelementptr float, ptr %1, i64 %309
  %340 = getelementptr float, ptr %339, i64 %47
  %341 = load float, ptr %340, align 4, !tbaa !8
  br label %342

342:                                              ; preds = %338, %335
  %343 = phi float [ %341, %338 ], [ 0.000000e+00, %335 ]
  %344 = getelementptr inbounds nuw i8, ptr %4, i64 196
  store float %343, ptr %344, align 4, !tbaa !8
  br i1 %41, label %345, label %349

345:                                              ; preds = %342
  %346 = sub nsw i64 %309, %47
  %347 = getelementptr inbounds float, ptr %1, i64 %346
  %348 = load float, ptr %347, align 4, !tbaa !8
  br label %349

349:                                              ; preds = %345, %342
  %350 = phi float [ %348, %345 ], [ 0.000000e+00, %342 ]
  %351 = getelementptr inbounds nuw i8, ptr %4, i64 200
  store float %350, ptr %351, align 8, !tbaa !8
  %352 = mul nsw i64 %42, 7
  %353 = add nsw i64 %352, %43
  %354 = getelementptr inbounds float, ptr %1, i64 %353
  %355 = load float, ptr %354, align 4, !tbaa !8
  %356 = getelementptr inbounds nuw i8, ptr %4, i64 224
  store float %355, ptr %356, align 16, !tbaa !8
  %357 = getelementptr float, ptr %1, i64 %353
  %358 = getelementptr float, ptr %357, i64 %45
  %359 = load float, ptr %358, align 4, !tbaa !8
  %360 = getelementptr inbounds nuw i8, ptr %4, i64 244
  store float %359, ptr %360, align 4, !tbaa !8
  br i1 %35, label %361, label %365

361:                                              ; preds = %349
  %362 = sub nsw i64 %353, %45
  %363 = getelementptr inbounds float, ptr %1, i64 %362
  %364 = load float, ptr %363, align 4, !tbaa !8
  br label %365

365:                                              ; preds = %361, %349
  %366 = phi float [ %364, %361 ], [ 0.000000e+00, %349 ]
  %367 = getelementptr inbounds nuw i8, ptr %4, i64 248
  store float %366, ptr %367, align 8, !tbaa !8
  br i1 %37, label %368, label %372

368:                                              ; preds = %365
  %369 = getelementptr float, ptr %1, i64 %353
  %370 = getelementptr float, ptr %369, i64 %46
  %371 = load float, ptr %370, align 4, !tbaa !8
  br label %372

372:                                              ; preds = %368, %365
  %373 = phi float [ %371, %368 ], [ 0.000000e+00, %365 ]
  %374 = getelementptr inbounds nuw i8, ptr %4, i64 236
  store float %373, ptr %374, align 4, !tbaa !8
  br i1 %38, label %375, label %379

375:                                              ; preds = %372
  %376 = sub nsw i64 %353, %46
  %377 = getelementptr inbounds float, ptr %1, i64 %376
  %378 = load float, ptr %377, align 4, !tbaa !8
  br label %379

379:                                              ; preds = %375, %372
  %380 = phi float [ %378, %375 ], [ 0.000000e+00, %372 ]
  %381 = getelementptr inbounds nuw i8, ptr %4, i64 240
  store float %380, ptr %381, align 16, !tbaa !8
  br i1 %40, label %382, label %386

382:                                              ; preds = %379
  %383 = getelementptr float, ptr %1, i64 %353
  %384 = getelementptr float, ptr %383, i64 %47
  %385 = load float, ptr %384, align 4, !tbaa !8
  br label %386

386:                                              ; preds = %382, %379
  %387 = phi float [ %385, %382 ], [ 0.000000e+00, %379 ]
  %388 = getelementptr inbounds nuw i8, ptr %4, i64 228
  store float %387, ptr %388, align 4, !tbaa !8
  br i1 %41, label %389, label %701

389:                                              ; preds = %386
  %390 = sub nsw i64 %353, %47
  br label %697

391:                                              ; preds = %19
  br i1 %35, label %398, label %392

392:                                              ; preds = %391
  %393 = sext i32 %24 to i64
  %394 = sext i32 %28 to i64
  %395 = getelementptr inbounds float, ptr %1, i64 %43
  %396 = load float, ptr %395, align 4, !tbaa !8
  store float %396, ptr %4, align 16, !tbaa !8
  %397 = getelementptr inbounds nuw i8, ptr %4, i64 20
  store <2 x float> zeroinitializer, ptr %397, align 4, !tbaa !8
  br i1 %37, label %743, label %747

398:                                              ; preds = %391
  %399 = sext i32 %21 to i64
  %400 = sext i32 %24 to i64
  %401 = sext i32 %28 to i64
  %402 = getelementptr inbounds float, ptr %1, i64 %43
  %403 = load float, ptr %402, align 4, !tbaa !8
  store float %403, ptr %4, align 16, !tbaa !8
  %404 = getelementptr inbounds nuw i8, ptr %4, i64 20
  store float 0.000000e+00, ptr %404, align 4, !tbaa !8
  %405 = sub nsw i64 %43, %399
  %406 = getelementptr inbounds float, ptr %1, i64 %405
  %407 = load float, ptr %406, align 4, !tbaa !8
  %408 = getelementptr inbounds nuw i8, ptr %4, i64 24
  store float %407, ptr %408, align 8, !tbaa !8
  br i1 %37, label %409, label %413

409:                                              ; preds = %398
  %410 = getelementptr float, ptr %1, i64 %43
  %411 = getelementptr float, ptr %410, i64 %400
  %412 = load float, ptr %411, align 4, !tbaa !8
  br label %413

413:                                              ; preds = %409, %398
  %414 = phi float [ %412, %409 ], [ 0.000000e+00, %398 ]
  %415 = getelementptr inbounds nuw i8, ptr %4, i64 12
  store float %414, ptr %415, align 4, !tbaa !8
  br i1 %38, label %416, label %420

416:                                              ; preds = %413
  %417 = sub nsw i64 %43, %400
  %418 = getelementptr inbounds float, ptr %1, i64 %417
  %419 = load float, ptr %418, align 4, !tbaa !8
  br label %420

420:                                              ; preds = %416, %413
  %421 = phi float [ %419, %416 ], [ 0.000000e+00, %413 ]
  %422 = getelementptr inbounds nuw i8, ptr %4, i64 16
  store float %421, ptr %422, align 16, !tbaa !8
  br i1 %40, label %423, label %427

423:                                              ; preds = %420
  %424 = getelementptr float, ptr %1, i64 %43
  %425 = getelementptr float, ptr %424, i64 %401
  %426 = load float, ptr %425, align 4, !tbaa !8
  br label %427

427:                                              ; preds = %423, %420
  %428 = phi float [ %426, %423 ], [ 0.000000e+00, %420 ]
  %429 = getelementptr inbounds nuw i8, ptr %4, i64 4
  store float %428, ptr %429, align 4, !tbaa !8
  br i1 %41, label %430, label %434

430:                                              ; preds = %427
  %431 = sub nsw i64 %43, %401
  %432 = getelementptr inbounds float, ptr %1, i64 %431
  %433 = load float, ptr %432, align 4, !tbaa !8
  br label %434

434:                                              ; preds = %430, %427
  %435 = phi float [ %433, %430 ], [ 0.000000e+00, %427 ]
  %436 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store float %435, ptr %436, align 8, !tbaa !8
  %437 = add nsw i64 %42, %43
  %438 = getelementptr inbounds float, ptr %1, i64 %437
  %439 = load float, ptr %438, align 4, !tbaa !8
  %440 = getelementptr inbounds nuw i8, ptr %4, i64 32
  store float %439, ptr %440, align 16, !tbaa !8
  %441 = getelementptr inbounds nuw i8, ptr %4, i64 52
  store float 0.000000e+00, ptr %441, align 4, !tbaa !8
  %442 = sub nsw i64 %437, %399
  %443 = getelementptr inbounds float, ptr %1, i64 %442
  %444 = load float, ptr %443, align 4, !tbaa !8
  %445 = getelementptr inbounds nuw i8, ptr %4, i64 56
  store float %444, ptr %445, align 8, !tbaa !8
  br i1 %37, label %446, label %450

446:                                              ; preds = %434
  %447 = getelementptr float, ptr %1, i64 %437
  %448 = getelementptr float, ptr %447, i64 %400
  %449 = load float, ptr %448, align 4, !tbaa !8
  br label %450

450:                                              ; preds = %446, %434
  %451 = phi float [ %449, %446 ], [ 0.000000e+00, %434 ]
  %452 = getelementptr inbounds nuw i8, ptr %4, i64 44
  store float %451, ptr %452, align 4, !tbaa !8
  br i1 %38, label %453, label %457

453:                                              ; preds = %450
  %454 = sub nsw i64 %437, %400
  %455 = getelementptr inbounds float, ptr %1, i64 %454
  %456 = load float, ptr %455, align 4, !tbaa !8
  br label %457

457:                                              ; preds = %453, %450
  %458 = phi float [ %456, %453 ], [ 0.000000e+00, %450 ]
  %459 = getelementptr inbounds nuw i8, ptr %4, i64 48
  store float %458, ptr %459, align 16, !tbaa !8
  br i1 %40, label %460, label %464

460:                                              ; preds = %457
  %461 = getelementptr float, ptr %1, i64 %437
  %462 = getelementptr float, ptr %461, i64 %401
  %463 = load float, ptr %462, align 4, !tbaa !8
  br label %464

464:                                              ; preds = %460, %457
  %465 = phi float [ %463, %460 ], [ 0.000000e+00, %457 ]
  %466 = getelementptr inbounds nuw i8, ptr %4, i64 36
  store float %465, ptr %466, align 4, !tbaa !8
  br i1 %41, label %467, label %471

467:                                              ; preds = %464
  %468 = sub nsw i64 %437, %401
  %469 = getelementptr inbounds float, ptr %1, i64 %468
  %470 = load float, ptr %469, align 4, !tbaa !8
  br label %471

471:                                              ; preds = %467, %464
  %472 = phi float [ %470, %467 ], [ 0.000000e+00, %464 ]
  %473 = getelementptr inbounds nuw i8, ptr %4, i64 40
  store float %472, ptr %473, align 8, !tbaa !8
  %474 = shl nsw i64 %42, 1
  %475 = add nsw i64 %474, %43
  %476 = getelementptr inbounds float, ptr %1, i64 %475
  %477 = load float, ptr %476, align 4, !tbaa !8
  %478 = getelementptr inbounds nuw i8, ptr %4, i64 64
  store float %477, ptr %478, align 16, !tbaa !8
  %479 = getelementptr inbounds nuw i8, ptr %4, i64 84
  store float 0.000000e+00, ptr %479, align 4, !tbaa !8
  %480 = sub nsw i64 %475, %399
  %481 = getelementptr inbounds float, ptr %1, i64 %480
  %482 = load float, ptr %481, align 4, !tbaa !8
  %483 = getelementptr inbounds nuw i8, ptr %4, i64 88
  store float %482, ptr %483, align 8, !tbaa !8
  br i1 %37, label %484, label %488

484:                                              ; preds = %471
  %485 = getelementptr float, ptr %1, i64 %475
  %486 = getelementptr float, ptr %485, i64 %400
  %487 = load float, ptr %486, align 4, !tbaa !8
  br label %488

488:                                              ; preds = %484, %471
  %489 = phi float [ %487, %484 ], [ 0.000000e+00, %471 ]
  %490 = getelementptr inbounds nuw i8, ptr %4, i64 76
  store float %489, ptr %490, align 4, !tbaa !8
  br i1 %38, label %491, label %495

491:                                              ; preds = %488
  %492 = sub nsw i64 %475, %400
  %493 = getelementptr inbounds float, ptr %1, i64 %492
  %494 = load float, ptr %493, align 4, !tbaa !8
  br label %495

495:                                              ; preds = %491, %488
  %496 = phi float [ %494, %491 ], [ 0.000000e+00, %488 ]
  %497 = getelementptr inbounds nuw i8, ptr %4, i64 80
  store float %496, ptr %497, align 16, !tbaa !8
  br i1 %40, label %498, label %502

498:                                              ; preds = %495
  %499 = getelementptr float, ptr %1, i64 %475
  %500 = getelementptr float, ptr %499, i64 %401
  %501 = load float, ptr %500, align 4, !tbaa !8
  br label %502

502:                                              ; preds = %498, %495
  %503 = phi float [ %501, %498 ], [ 0.000000e+00, %495 ]
  %504 = getelementptr inbounds nuw i8, ptr %4, i64 68
  store float %503, ptr %504, align 4, !tbaa !8
  br i1 %41, label %505, label %509

505:                                              ; preds = %502
  %506 = sub nsw i64 %475, %401
  %507 = getelementptr inbounds float, ptr %1, i64 %506
  %508 = load float, ptr %507, align 4, !tbaa !8
  br label %509

509:                                              ; preds = %505, %502
  %510 = phi float [ %508, %505 ], [ 0.000000e+00, %502 ]
  %511 = getelementptr inbounds nuw i8, ptr %4, i64 72
  store float %510, ptr %511, align 8, !tbaa !8
  %512 = mul nsw i64 %42, 3
  %513 = add nsw i64 %512, %43
  %514 = getelementptr inbounds float, ptr %1, i64 %513
  %515 = load float, ptr %514, align 4, !tbaa !8
  %516 = getelementptr inbounds nuw i8, ptr %4, i64 96
  store float %515, ptr %516, align 16, !tbaa !8
  %517 = getelementptr inbounds nuw i8, ptr %4, i64 116
  store float 0.000000e+00, ptr %517, align 4, !tbaa !8
  %518 = sub nsw i64 %513, %399
  %519 = getelementptr inbounds float, ptr %1, i64 %518
  %520 = load float, ptr %519, align 4, !tbaa !8
  %521 = getelementptr inbounds nuw i8, ptr %4, i64 120
  store float %520, ptr %521, align 8, !tbaa !8
  br i1 %37, label %522, label %526

522:                                              ; preds = %509
  %523 = getelementptr float, ptr %1, i64 %513
  %524 = getelementptr float, ptr %523, i64 %400
  %525 = load float, ptr %524, align 4, !tbaa !8
  br label %526

526:                                              ; preds = %522, %509
  %527 = phi float [ %525, %522 ], [ 0.000000e+00, %509 ]
  %528 = getelementptr inbounds nuw i8, ptr %4, i64 108
  store float %527, ptr %528, align 4, !tbaa !8
  br i1 %38, label %529, label %533

529:                                              ; preds = %526
  %530 = sub nsw i64 %513, %400
  %531 = getelementptr inbounds float, ptr %1, i64 %530
  %532 = load float, ptr %531, align 4, !tbaa !8
  br label %533

533:                                              ; preds = %529, %526
  %534 = phi float [ %532, %529 ], [ 0.000000e+00, %526 ]
  %535 = getelementptr inbounds nuw i8, ptr %4, i64 112
  store float %534, ptr %535, align 16, !tbaa !8
  br i1 %40, label %536, label %540

536:                                              ; preds = %533
  %537 = getelementptr float, ptr %1, i64 %513
  %538 = getelementptr float, ptr %537, i64 %401
  %539 = load float, ptr %538, align 4, !tbaa !8
  br label %540

540:                                              ; preds = %536, %533
  %541 = phi float [ %539, %536 ], [ 0.000000e+00, %533 ]
  %542 = getelementptr inbounds nuw i8, ptr %4, i64 100
  store float %541, ptr %542, align 4, !tbaa !8
  br i1 %41, label %543, label %547

543:                                              ; preds = %540
  %544 = sub nsw i64 %513, %401
  %545 = getelementptr inbounds float, ptr %1, i64 %544
  %546 = load float, ptr %545, align 4, !tbaa !8
  br label %547

547:                                              ; preds = %543, %540
  %548 = phi float [ %546, %543 ], [ 0.000000e+00, %540 ]
  %549 = getelementptr inbounds nuw i8, ptr %4, i64 104
  store float %548, ptr %549, align 8, !tbaa !8
  %550 = shl nsw i64 %42, 2
  %551 = add nsw i64 %550, %43
  %552 = getelementptr inbounds float, ptr %1, i64 %551
  %553 = load float, ptr %552, align 4, !tbaa !8
  %554 = getelementptr inbounds nuw i8, ptr %4, i64 128
  store float %553, ptr %554, align 16, !tbaa !8
  %555 = getelementptr inbounds nuw i8, ptr %4, i64 148
  store float 0.000000e+00, ptr %555, align 4, !tbaa !8
  %556 = sub nsw i64 %551, %399
  %557 = getelementptr inbounds float, ptr %1, i64 %556
  %558 = load float, ptr %557, align 4, !tbaa !8
  %559 = getelementptr inbounds nuw i8, ptr %4, i64 152
  store float %558, ptr %559, align 8, !tbaa !8
  br i1 %37, label %560, label %564

560:                                              ; preds = %547
  %561 = getelementptr float, ptr %1, i64 %551
  %562 = getelementptr float, ptr %561, i64 %400
  %563 = load float, ptr %562, align 4, !tbaa !8
  br label %564

564:                                              ; preds = %560, %547
  %565 = phi float [ %563, %560 ], [ 0.000000e+00, %547 ]
  %566 = getelementptr inbounds nuw i8, ptr %4, i64 140
  store float %565, ptr %566, align 4, !tbaa !8
  br i1 %38, label %567, label %571

567:                                              ; preds = %564
  %568 = sub nsw i64 %551, %400
  %569 = getelementptr inbounds float, ptr %1, i64 %568
  %570 = load float, ptr %569, align 4, !tbaa !8
  br label %571

571:                                              ; preds = %567, %564
  %572 = phi float [ %570, %567 ], [ 0.000000e+00, %564 ]
  %573 = getelementptr inbounds nuw i8, ptr %4, i64 144
  store float %572, ptr %573, align 16, !tbaa !8
  br i1 %40, label %574, label %578

574:                                              ; preds = %571
  %575 = getelementptr float, ptr %1, i64 %551
  %576 = getelementptr float, ptr %575, i64 %401
  %577 = load float, ptr %576, align 4, !tbaa !8
  br label %578

578:                                              ; preds = %574, %571
  %579 = phi float [ %577, %574 ], [ 0.000000e+00, %571 ]
  %580 = getelementptr inbounds nuw i8, ptr %4, i64 132
  store float %579, ptr %580, align 4, !tbaa !8
  br i1 %41, label %581, label %585

581:                                              ; preds = %578
  %582 = sub nsw i64 %551, %401
  %583 = getelementptr inbounds float, ptr %1, i64 %582
  %584 = load float, ptr %583, align 4, !tbaa !8
  br label %585

585:                                              ; preds = %581, %578
  %586 = phi float [ %584, %581 ], [ 0.000000e+00, %578 ]
  %587 = getelementptr inbounds nuw i8, ptr %4, i64 136
  store float %586, ptr %587, align 8, !tbaa !8
  %588 = mul nsw i64 %42, 5
  %589 = add nsw i64 %588, %43
  %590 = getelementptr inbounds float, ptr %1, i64 %589
  %591 = load float, ptr %590, align 4, !tbaa !8
  %592 = getelementptr inbounds nuw i8, ptr %4, i64 160
  store float %591, ptr %592, align 16, !tbaa !8
  %593 = getelementptr inbounds nuw i8, ptr %4, i64 180
  store float 0.000000e+00, ptr %593, align 4, !tbaa !8
  %594 = sub nsw i64 %589, %399
  %595 = getelementptr inbounds float, ptr %1, i64 %594
  %596 = load float, ptr %595, align 4, !tbaa !8
  %597 = getelementptr inbounds nuw i8, ptr %4, i64 184
  store float %596, ptr %597, align 8, !tbaa !8
  br i1 %37, label %598, label %602

598:                                              ; preds = %585
  %599 = getelementptr float, ptr %1, i64 %589
  %600 = getelementptr float, ptr %599, i64 %400
  %601 = load float, ptr %600, align 4, !tbaa !8
  br label %602

602:                                              ; preds = %598, %585
  %603 = phi float [ %601, %598 ], [ 0.000000e+00, %585 ]
  %604 = getelementptr inbounds nuw i8, ptr %4, i64 172
  store float %603, ptr %604, align 4, !tbaa !8
  br i1 %38, label %605, label %609

605:                                              ; preds = %602
  %606 = sub nsw i64 %589, %400
  %607 = getelementptr inbounds float, ptr %1, i64 %606
  %608 = load float, ptr %607, align 4, !tbaa !8
  br label %609

609:                                              ; preds = %605, %602
  %610 = phi float [ %608, %605 ], [ 0.000000e+00, %602 ]
  %611 = getelementptr inbounds nuw i8, ptr %4, i64 176
  store float %610, ptr %611, align 16, !tbaa !8
  br i1 %40, label %612, label %616

612:                                              ; preds = %609
  %613 = getelementptr float, ptr %1, i64 %589
  %614 = getelementptr float, ptr %613, i64 %401
  %615 = load float, ptr %614, align 4, !tbaa !8
  br label %616

616:                                              ; preds = %612, %609
  %617 = phi float [ %615, %612 ], [ 0.000000e+00, %609 ]
  %618 = getelementptr inbounds nuw i8, ptr %4, i64 164
  store float %617, ptr %618, align 4, !tbaa !8
  br i1 %41, label %619, label %623

619:                                              ; preds = %616
  %620 = sub nsw i64 %589, %401
  %621 = getelementptr inbounds float, ptr %1, i64 %620
  %622 = load float, ptr %621, align 4, !tbaa !8
  br label %623

623:                                              ; preds = %619, %616
  %624 = phi float [ %622, %619 ], [ 0.000000e+00, %616 ]
  %625 = getelementptr inbounds nuw i8, ptr %4, i64 168
  store float %624, ptr %625, align 8, !tbaa !8
  %626 = mul nsw i64 %42, 6
  %627 = add nsw i64 %626, %43
  %628 = getelementptr inbounds float, ptr %1, i64 %627
  %629 = load float, ptr %628, align 4, !tbaa !8
  %630 = getelementptr inbounds nuw i8, ptr %4, i64 192
  store float %629, ptr %630, align 16, !tbaa !8
  %631 = getelementptr inbounds nuw i8, ptr %4, i64 212
  store float 0.000000e+00, ptr %631, align 4, !tbaa !8
  %632 = sub nsw i64 %627, %399
  %633 = getelementptr inbounds float, ptr %1, i64 %632
  %634 = load float, ptr %633, align 4, !tbaa !8
  %635 = getelementptr inbounds nuw i8, ptr %4, i64 216
  store float %634, ptr %635, align 8, !tbaa !8
  br i1 %37, label %636, label %640

636:                                              ; preds = %623
  %637 = getelementptr float, ptr %1, i64 %627
  %638 = getelementptr float, ptr %637, i64 %400
  %639 = load float, ptr %638, align 4, !tbaa !8
  br label %640

640:                                              ; preds = %636, %623
  %641 = phi float [ %639, %636 ], [ 0.000000e+00, %623 ]
  %642 = getelementptr inbounds nuw i8, ptr %4, i64 204
  store float %641, ptr %642, align 4, !tbaa !8
  br i1 %38, label %643, label %647

643:                                              ; preds = %640
  %644 = sub nsw i64 %627, %400
  %645 = getelementptr inbounds float, ptr %1, i64 %644
  %646 = load float, ptr %645, align 4, !tbaa !8
  br label %647

647:                                              ; preds = %643, %640
  %648 = phi float [ %646, %643 ], [ 0.000000e+00, %640 ]
  %649 = getelementptr inbounds nuw i8, ptr %4, i64 208
  store float %648, ptr %649, align 16, !tbaa !8
  br i1 %40, label %650, label %654

650:                                              ; preds = %647
  %651 = getelementptr float, ptr %1, i64 %627
  %652 = getelementptr float, ptr %651, i64 %401
  %653 = load float, ptr %652, align 4, !tbaa !8
  br label %654

654:                                              ; preds = %650, %647
  %655 = phi float [ %653, %650 ], [ 0.000000e+00, %647 ]
  %656 = getelementptr inbounds nuw i8, ptr %4, i64 196
  store float %655, ptr %656, align 4, !tbaa !8
  br i1 %41, label %657, label %661

657:                                              ; preds = %654
  %658 = sub nsw i64 %627, %401
  %659 = getelementptr inbounds float, ptr %1, i64 %658
  %660 = load float, ptr %659, align 4, !tbaa !8
  br label %661

661:                                              ; preds = %657, %654
  %662 = phi float [ %660, %657 ], [ 0.000000e+00, %654 ]
  %663 = getelementptr inbounds nuw i8, ptr %4, i64 200
  store float %662, ptr %663, align 8, !tbaa !8
  %664 = mul nsw i64 %42, 7
  %665 = add nsw i64 %664, %43
  %666 = getelementptr inbounds float, ptr %1, i64 %665
  %667 = load float, ptr %666, align 4, !tbaa !8
  %668 = getelementptr inbounds nuw i8, ptr %4, i64 224
  store float %667, ptr %668, align 16, !tbaa !8
  %669 = getelementptr inbounds nuw i8, ptr %4, i64 244
  store float 0.000000e+00, ptr %669, align 4, !tbaa !8
  %670 = sub nsw i64 %665, %399
  %671 = getelementptr inbounds float, ptr %1, i64 %670
  %672 = load float, ptr %671, align 4, !tbaa !8
  %673 = getelementptr inbounds nuw i8, ptr %4, i64 248
  store float %672, ptr %673, align 8, !tbaa !8
  br i1 %37, label %674, label %678

674:                                              ; preds = %661
  %675 = getelementptr float, ptr %1, i64 %665
  %676 = getelementptr float, ptr %675, i64 %400
  %677 = load float, ptr %676, align 4, !tbaa !8
  br label %678

678:                                              ; preds = %674, %661
  %679 = phi float [ %677, %674 ], [ 0.000000e+00, %661 ]
  %680 = getelementptr inbounds nuw i8, ptr %4, i64 236
  store float %679, ptr %680, align 4, !tbaa !8
  br i1 %38, label %681, label %685

681:                                              ; preds = %678
  %682 = sub nsw i64 %665, %400
  %683 = getelementptr inbounds float, ptr %1, i64 %682
  %684 = load float, ptr %683, align 4, !tbaa !8
  br label %685

685:                                              ; preds = %681, %678
  %686 = phi float [ %684, %681 ], [ 0.000000e+00, %678 ]
  %687 = getelementptr inbounds nuw i8, ptr %4, i64 240
  store float %686, ptr %687, align 16, !tbaa !8
  br i1 %40, label %688, label %692

688:                                              ; preds = %685
  %689 = getelementptr float, ptr %1, i64 %665
  %690 = getelementptr float, ptr %689, i64 %401
  %691 = load float, ptr %690, align 4, !tbaa !8
  br label %692

692:                                              ; preds = %688, %685
  %693 = phi float [ %691, %688 ], [ 0.000000e+00, %685 ]
  %694 = getelementptr inbounds nuw i8, ptr %4, i64 228
  store float %693, ptr %694, align 4, !tbaa !8
  br i1 %41, label %695, label %701

695:                                              ; preds = %692
  %696 = sub nsw i64 %665, %401
  br label %697

697:                                              ; preds = %1001, %389, %695
  %698 = phi i64 [ %696, %695 ], [ %390, %389 ], [ %1002, %1001 ]
  %699 = getelementptr inbounds float, ptr %1, i64 %698
  %700 = load float, ptr %699, align 4, !tbaa !8
  br label %701

701:                                              ; preds = %697, %692, %386, %998
  %702 = phi float [ 0.000000e+00, %998 ], [ 0.000000e+00, %386 ], [ 0.000000e+00, %692 ], [ %700, %697 ]
  %703 = getelementptr inbounds nuw i8, ptr %4, i64 232
  store float %702, ptr %703, align 8, !tbaa !8
  call void @CalcularPontos(ptr noundef nonnull %4, i32 noundef %15, i32 noundef %14, i32 noundef %12, ptr noundef nonnull %2) #9
  %704 = load i32, ptr %31, align 4, !tbaa !4
  %705 = sext i32 %704 to i64
  %706 = getelementptr inbounds nuw i8, ptr %4, i64 28
  %707 = load float, ptr %706, align 4, !tbaa !8
  %708 = getelementptr inbounds float, ptr %0, i64 %43
  store float %707, ptr %708, align 4, !tbaa !8
  %709 = getelementptr inbounds nuw i8, ptr %4, i64 60
  %710 = load float, ptr %709, align 4, !tbaa !8
  %711 = getelementptr float, ptr %0, i64 %43
  %712 = getelementptr float, ptr %711, i64 %705
  store float %710, ptr %712, align 4, !tbaa !8
  %713 = getelementptr inbounds nuw i8, ptr %4, i64 92
  %714 = load float, ptr %713, align 4, !tbaa !8
  %715 = shl nsw i64 %705, 3
  %716 = getelementptr i8, ptr %0, i64 %715
  %717 = getelementptr float, ptr %716, i64 %43
  store float %714, ptr %717, align 4, !tbaa !8
  %718 = getelementptr inbounds nuw i8, ptr %4, i64 124
  %719 = load float, ptr %718, align 4, !tbaa !8
  %720 = mul nsw i64 %705, 12
  %721 = getelementptr i8, ptr %0, i64 %720
  %722 = getelementptr float, ptr %721, i64 %43
  store float %719, ptr %722, align 4, !tbaa !8
  %723 = getelementptr inbounds nuw i8, ptr %4, i64 156
  %724 = load float, ptr %723, align 4, !tbaa !8
  %725 = shl nsw i64 %705, 4
  %726 = getelementptr i8, ptr %0, i64 %725
  %727 = getelementptr float, ptr %726, i64 %43
  store float %724, ptr %727, align 4, !tbaa !8
  %728 = getelementptr inbounds nuw i8, ptr %4, i64 188
  %729 = load float, ptr %728, align 4, !tbaa !8
  %730 = mul nsw i64 %705, 20
  %731 = getelementptr i8, ptr %0, i64 %730
  %732 = getelementptr float, ptr %731, i64 %43
  store float %729, ptr %732, align 4, !tbaa !8
  %733 = getelementptr inbounds nuw i8, ptr %4, i64 220
  %734 = load float, ptr %733, align 4, !tbaa !8
  %735 = mul nsw i64 %705, 24
  %736 = getelementptr i8, ptr %0, i64 %735
  %737 = getelementptr float, ptr %736, i64 %43
  store float %734, ptr %737, align 4, !tbaa !8
  %738 = getelementptr inbounds nuw i8, ptr %4, i64 252
  %739 = load float, ptr %738, align 4, !tbaa !8
  %740 = mul nsw i64 %705, 28
  %741 = getelementptr i8, ptr %0, i64 %740
  %742 = getelementptr float, ptr %741, i64 %43
  store float %739, ptr %742, align 4, !tbaa !8
  br label %1003

743:                                              ; preds = %392
  %744 = getelementptr float, ptr %1, i64 %43
  %745 = getelementptr float, ptr %744, i64 %393
  %746 = load float, ptr %745, align 4, !tbaa !8
  br label %747

747:                                              ; preds = %392, %743
  %748 = phi float [ %746, %743 ], [ 0.000000e+00, %392 ]
  %749 = getelementptr inbounds nuw i8, ptr %4, i64 12
  store float %748, ptr %749, align 4, !tbaa !8
  br i1 %38, label %750, label %754

750:                                              ; preds = %747
  %751 = sub nsw i64 %43, %393
  %752 = getelementptr inbounds float, ptr %1, i64 %751
  %753 = load float, ptr %752, align 4, !tbaa !8
  br label %754

754:                                              ; preds = %747, %750
  %755 = phi float [ %753, %750 ], [ 0.000000e+00, %747 ]
  %756 = getelementptr inbounds nuw i8, ptr %4, i64 16
  store float %755, ptr %756, align 16, !tbaa !8
  br i1 %40, label %757, label %761

757:                                              ; preds = %754
  %758 = getelementptr float, ptr %1, i64 %43
  %759 = getelementptr float, ptr %758, i64 %394
  %760 = load float, ptr %759, align 4, !tbaa !8
  br label %761

761:                                              ; preds = %754, %757
  %762 = phi float [ %760, %757 ], [ 0.000000e+00, %754 ]
  %763 = getelementptr inbounds nuw i8, ptr %4, i64 4
  store float %762, ptr %763, align 4, !tbaa !8
  br i1 %41, label %764, label %768

764:                                              ; preds = %761
  %765 = sub nsw i64 %43, %394
  %766 = getelementptr inbounds float, ptr %1, i64 %765
  %767 = load float, ptr %766, align 4, !tbaa !8
  br label %768

768:                                              ; preds = %761, %764
  %769 = phi float [ %767, %764 ], [ 0.000000e+00, %761 ]
  %770 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store float %769, ptr %770, align 8, !tbaa !8
  %771 = add nsw i64 %42, %43
  %772 = getelementptr inbounds float, ptr %1, i64 %771
  %773 = load float, ptr %772, align 4, !tbaa !8
  %774 = getelementptr inbounds nuw i8, ptr %4, i64 32
  store float %773, ptr %774, align 16, !tbaa !8
  %775 = getelementptr inbounds nuw i8, ptr %4, i64 52
  store <2 x float> zeroinitializer, ptr %775, align 4, !tbaa !8
  br i1 %37, label %776, label %780

776:                                              ; preds = %768
  %777 = getelementptr float, ptr %1, i64 %771
  %778 = getelementptr float, ptr %777, i64 %393
  %779 = load float, ptr %778, align 4, !tbaa !8
  br label %780

780:                                              ; preds = %776, %768
  %781 = phi float [ %779, %776 ], [ 0.000000e+00, %768 ]
  %782 = getelementptr inbounds nuw i8, ptr %4, i64 44
  store float %781, ptr %782, align 4, !tbaa !8
  br i1 %38, label %783, label %787

783:                                              ; preds = %780
  %784 = sub nsw i64 %771, %393
  %785 = getelementptr inbounds float, ptr %1, i64 %784
  %786 = load float, ptr %785, align 4, !tbaa !8
  br label %787

787:                                              ; preds = %783, %780
  %788 = phi float [ %786, %783 ], [ 0.000000e+00, %780 ]
  %789 = getelementptr inbounds nuw i8, ptr %4, i64 48
  store float %788, ptr %789, align 16, !tbaa !8
  br i1 %40, label %790, label %794

790:                                              ; preds = %787
  %791 = getelementptr float, ptr %1, i64 %771
  %792 = getelementptr float, ptr %791, i64 %394
  %793 = load float, ptr %792, align 4, !tbaa !8
  br label %794

794:                                              ; preds = %790, %787
  %795 = phi float [ %793, %790 ], [ 0.000000e+00, %787 ]
  %796 = getelementptr inbounds nuw i8, ptr %4, i64 36
  store float %795, ptr %796, align 4, !tbaa !8
  br i1 %41, label %797, label %801

797:                                              ; preds = %794
  %798 = sub nsw i64 %771, %394
  %799 = getelementptr inbounds float, ptr %1, i64 %798
  %800 = load float, ptr %799, align 4, !tbaa !8
  br label %801

801:                                              ; preds = %797, %794
  %802 = phi float [ %800, %797 ], [ 0.000000e+00, %794 ]
  %803 = getelementptr inbounds nuw i8, ptr %4, i64 40
  store float %802, ptr %803, align 8, !tbaa !8
  %804 = shl nsw i64 %42, 1
  %805 = add nsw i64 %804, %43
  %806 = getelementptr inbounds float, ptr %1, i64 %805
  %807 = load float, ptr %806, align 4, !tbaa !8
  %808 = getelementptr inbounds nuw i8, ptr %4, i64 64
  store float %807, ptr %808, align 16, !tbaa !8
  %809 = getelementptr inbounds nuw i8, ptr %4, i64 84
  store <2 x float> zeroinitializer, ptr %809, align 4, !tbaa !8
  br i1 %37, label %810, label %814

810:                                              ; preds = %801
  %811 = getelementptr float, ptr %1, i64 %805
  %812 = getelementptr float, ptr %811, i64 %393
  %813 = load float, ptr %812, align 4, !tbaa !8
  br label %814

814:                                              ; preds = %810, %801
  %815 = phi float [ %813, %810 ], [ 0.000000e+00, %801 ]
  %816 = getelementptr inbounds nuw i8, ptr %4, i64 76
  store float %815, ptr %816, align 4, !tbaa !8
  br i1 %38, label %817, label %821

817:                                              ; preds = %814
  %818 = sub nsw i64 %805, %393
  %819 = getelementptr inbounds float, ptr %1, i64 %818
  %820 = load float, ptr %819, align 4, !tbaa !8
  br label %821

821:                                              ; preds = %817, %814
  %822 = phi float [ %820, %817 ], [ 0.000000e+00, %814 ]
  %823 = getelementptr inbounds nuw i8, ptr %4, i64 80
  store float %822, ptr %823, align 16, !tbaa !8
  br i1 %40, label %824, label %828

824:                                              ; preds = %821
  %825 = getelementptr float, ptr %1, i64 %805
  %826 = getelementptr float, ptr %825, i64 %394
  %827 = load float, ptr %826, align 4, !tbaa !8
  br label %828

828:                                              ; preds = %824, %821
  %829 = phi float [ %827, %824 ], [ 0.000000e+00, %821 ]
  %830 = getelementptr inbounds nuw i8, ptr %4, i64 68
  store float %829, ptr %830, align 4, !tbaa !8
  br i1 %41, label %831, label %835

831:                                              ; preds = %828
  %832 = sub nsw i64 %805, %394
  %833 = getelementptr inbounds float, ptr %1, i64 %832
  %834 = load float, ptr %833, align 4, !tbaa !8
  br label %835

835:                                              ; preds = %831, %828
  %836 = phi float [ %834, %831 ], [ 0.000000e+00, %828 ]
  %837 = getelementptr inbounds nuw i8, ptr %4, i64 72
  store float %836, ptr %837, align 8, !tbaa !8
  %838 = mul nsw i64 %42, 3
  %839 = add nsw i64 %838, %43
  %840 = getelementptr inbounds float, ptr %1, i64 %839
  %841 = load float, ptr %840, align 4, !tbaa !8
  %842 = getelementptr inbounds nuw i8, ptr %4, i64 96
  store float %841, ptr %842, align 16, !tbaa !8
  %843 = getelementptr inbounds nuw i8, ptr %4, i64 116
  store <2 x float> zeroinitializer, ptr %843, align 4, !tbaa !8
  br i1 %37, label %844, label %848

844:                                              ; preds = %835
  %845 = getelementptr float, ptr %1, i64 %839
  %846 = getelementptr float, ptr %845, i64 %393
  %847 = load float, ptr %846, align 4, !tbaa !8
  br label %848

848:                                              ; preds = %844, %835
  %849 = phi float [ %847, %844 ], [ 0.000000e+00, %835 ]
  %850 = getelementptr inbounds nuw i8, ptr %4, i64 108
  store float %849, ptr %850, align 4, !tbaa !8
  br i1 %38, label %851, label %855

851:                                              ; preds = %848
  %852 = sub nsw i64 %839, %393
  %853 = getelementptr inbounds float, ptr %1, i64 %852
  %854 = load float, ptr %853, align 4, !tbaa !8
  br label %855

855:                                              ; preds = %851, %848
  %856 = phi float [ %854, %851 ], [ 0.000000e+00, %848 ]
  %857 = getelementptr inbounds nuw i8, ptr %4, i64 112
  store float %856, ptr %857, align 16, !tbaa !8
  br i1 %40, label %858, label %862

858:                                              ; preds = %855
  %859 = getelementptr float, ptr %1, i64 %839
  %860 = getelementptr float, ptr %859, i64 %394
  %861 = load float, ptr %860, align 4, !tbaa !8
  br label %862

862:                                              ; preds = %858, %855
  %863 = phi float [ %861, %858 ], [ 0.000000e+00, %855 ]
  %864 = getelementptr inbounds nuw i8, ptr %4, i64 100
  store float %863, ptr %864, align 4, !tbaa !8
  br i1 %41, label %865, label %869

865:                                              ; preds = %862
  %866 = sub nsw i64 %839, %394
  %867 = getelementptr inbounds float, ptr %1, i64 %866
  %868 = load float, ptr %867, align 4, !tbaa !8
  br label %869

869:                                              ; preds = %865, %862
  %870 = phi float [ %868, %865 ], [ 0.000000e+00, %862 ]
  %871 = getelementptr inbounds nuw i8, ptr %4, i64 104
  store float %870, ptr %871, align 8, !tbaa !8
  %872 = shl nsw i64 %42, 2
  %873 = add nsw i64 %872, %43
  %874 = getelementptr inbounds float, ptr %1, i64 %873
  %875 = load float, ptr %874, align 4, !tbaa !8
  %876 = getelementptr inbounds nuw i8, ptr %4, i64 128
  store float %875, ptr %876, align 16, !tbaa !8
  %877 = getelementptr inbounds nuw i8, ptr %4, i64 148
  store <2 x float> zeroinitializer, ptr %877, align 4, !tbaa !8
  br i1 %37, label %878, label %882

878:                                              ; preds = %869
  %879 = getelementptr float, ptr %1, i64 %873
  %880 = getelementptr float, ptr %879, i64 %393
  %881 = load float, ptr %880, align 4, !tbaa !8
  br label %882

882:                                              ; preds = %878, %869
  %883 = phi float [ %881, %878 ], [ 0.000000e+00, %869 ]
  %884 = getelementptr inbounds nuw i8, ptr %4, i64 140
  store float %883, ptr %884, align 4, !tbaa !8
  br i1 %38, label %885, label %889

885:                                              ; preds = %882
  %886 = sub nsw i64 %873, %393
  %887 = getelementptr inbounds float, ptr %1, i64 %886
  %888 = load float, ptr %887, align 4, !tbaa !8
  br label %889

889:                                              ; preds = %885, %882
  %890 = phi float [ %888, %885 ], [ 0.000000e+00, %882 ]
  %891 = getelementptr inbounds nuw i8, ptr %4, i64 144
  store float %890, ptr %891, align 16, !tbaa !8
  br i1 %40, label %892, label %896

892:                                              ; preds = %889
  %893 = getelementptr float, ptr %1, i64 %873
  %894 = getelementptr float, ptr %893, i64 %394
  %895 = load float, ptr %894, align 4, !tbaa !8
  br label %896

896:                                              ; preds = %892, %889
  %897 = phi float [ %895, %892 ], [ 0.000000e+00, %889 ]
  %898 = getelementptr inbounds nuw i8, ptr %4, i64 132
  store float %897, ptr %898, align 4, !tbaa !8
  br i1 %41, label %899, label %903

899:                                              ; preds = %896
  %900 = sub nsw i64 %873, %394
  %901 = getelementptr inbounds float, ptr %1, i64 %900
  %902 = load float, ptr %901, align 4, !tbaa !8
  br label %903

903:                                              ; preds = %899, %896
  %904 = phi float [ %902, %899 ], [ 0.000000e+00, %896 ]
  %905 = getelementptr inbounds nuw i8, ptr %4, i64 136
  store float %904, ptr %905, align 8, !tbaa !8
  %906 = mul nsw i64 %42, 5
  %907 = add nsw i64 %906, %43
  %908 = getelementptr inbounds float, ptr %1, i64 %907
  %909 = load float, ptr %908, align 4, !tbaa !8
  %910 = getelementptr inbounds nuw i8, ptr %4, i64 160
  store float %909, ptr %910, align 16, !tbaa !8
  %911 = getelementptr inbounds nuw i8, ptr %4, i64 180
  store <2 x float> zeroinitializer, ptr %911, align 4, !tbaa !8
  br i1 %37, label %912, label %916

912:                                              ; preds = %903
  %913 = getelementptr float, ptr %1, i64 %907
  %914 = getelementptr float, ptr %913, i64 %393
  %915 = load float, ptr %914, align 4, !tbaa !8
  br label %916

916:                                              ; preds = %912, %903
  %917 = phi float [ %915, %912 ], [ 0.000000e+00, %903 ]
  %918 = getelementptr inbounds nuw i8, ptr %4, i64 172
  store float %917, ptr %918, align 4, !tbaa !8
  br i1 %38, label %919, label %923

919:                                              ; preds = %916
  %920 = sub nsw i64 %907, %393
  %921 = getelementptr inbounds float, ptr %1, i64 %920
  %922 = load float, ptr %921, align 4, !tbaa !8
  br label %923

923:                                              ; preds = %919, %916
  %924 = phi float [ %922, %919 ], [ 0.000000e+00, %916 ]
  %925 = getelementptr inbounds nuw i8, ptr %4, i64 176
  store float %924, ptr %925, align 16, !tbaa !8
  br i1 %40, label %926, label %930

926:                                              ; preds = %923
  %927 = getelementptr float, ptr %1, i64 %907
  %928 = getelementptr float, ptr %927, i64 %394
  %929 = load float, ptr %928, align 4, !tbaa !8
  br label %930

930:                                              ; preds = %926, %923
  %931 = phi float [ %929, %926 ], [ 0.000000e+00, %923 ]
  %932 = getelementptr inbounds nuw i8, ptr %4, i64 164
  store float %931, ptr %932, align 4, !tbaa !8
  br i1 %41, label %933, label %937

933:                                              ; preds = %930
  %934 = sub nsw i64 %907, %394
  %935 = getelementptr inbounds float, ptr %1, i64 %934
  %936 = load float, ptr %935, align 4, !tbaa !8
  br label %937

937:                                              ; preds = %933, %930
  %938 = phi float [ %936, %933 ], [ 0.000000e+00, %930 ]
  %939 = getelementptr inbounds nuw i8, ptr %4, i64 168
  store float %938, ptr %939, align 8, !tbaa !8
  %940 = mul nsw i64 %42, 6
  %941 = add nsw i64 %940, %43
  %942 = getelementptr inbounds float, ptr %1, i64 %941
  %943 = load float, ptr %942, align 4, !tbaa !8
  %944 = getelementptr inbounds nuw i8, ptr %4, i64 192
  store float %943, ptr %944, align 16, !tbaa !8
  %945 = getelementptr inbounds nuw i8, ptr %4, i64 212
  store <2 x float> zeroinitializer, ptr %945, align 4, !tbaa !8
  br i1 %37, label %946, label %950

946:                                              ; preds = %937
  %947 = getelementptr float, ptr %1, i64 %941
  %948 = getelementptr float, ptr %947, i64 %393
  %949 = load float, ptr %948, align 4, !tbaa !8
  br label %950

950:                                              ; preds = %946, %937
  %951 = phi float [ %949, %946 ], [ 0.000000e+00, %937 ]
  %952 = getelementptr inbounds nuw i8, ptr %4, i64 204
  store float %951, ptr %952, align 4, !tbaa !8
  br i1 %38, label %953, label %957

953:                                              ; preds = %950
  %954 = sub nsw i64 %941, %393
  %955 = getelementptr inbounds float, ptr %1, i64 %954
  %956 = load float, ptr %955, align 4, !tbaa !8
  br label %957

957:                                              ; preds = %953, %950
  %958 = phi float [ %956, %953 ], [ 0.000000e+00, %950 ]
  %959 = getelementptr inbounds nuw i8, ptr %4, i64 208
  store float %958, ptr %959, align 16, !tbaa !8
  br i1 %40, label %960, label %964

960:                                              ; preds = %957
  %961 = getelementptr float, ptr %1, i64 %941
  %962 = getelementptr float, ptr %961, i64 %394
  %963 = load float, ptr %962, align 4, !tbaa !8
  br label %964

964:                                              ; preds = %960, %957
  %965 = phi float [ %963, %960 ], [ 0.000000e+00, %957 ]
  %966 = getelementptr inbounds nuw i8, ptr %4, i64 196
  store float %965, ptr %966, align 4, !tbaa !8
  br i1 %41, label %967, label %971

967:                                              ; preds = %964
  %968 = sub nsw i64 %941, %394
  %969 = getelementptr inbounds float, ptr %1, i64 %968
  %970 = load float, ptr %969, align 4, !tbaa !8
  br label %971

971:                                              ; preds = %967, %964
  %972 = phi float [ %970, %967 ], [ 0.000000e+00, %964 ]
  %973 = getelementptr inbounds nuw i8, ptr %4, i64 200
  store float %972, ptr %973, align 8, !tbaa !8
  %974 = mul nsw i64 %42, 7
  %975 = add nsw i64 %974, %43
  %976 = getelementptr inbounds float, ptr %1, i64 %975
  %977 = load float, ptr %976, align 4, !tbaa !8
  %978 = getelementptr inbounds nuw i8, ptr %4, i64 224
  store float %977, ptr %978, align 16, !tbaa !8
  %979 = getelementptr inbounds nuw i8, ptr %4, i64 244
  store <2 x float> zeroinitializer, ptr %979, align 4, !tbaa !8
  br i1 %37, label %980, label %984

980:                                              ; preds = %971
  %981 = getelementptr float, ptr %1, i64 %975
  %982 = getelementptr float, ptr %981, i64 %393
  %983 = load float, ptr %982, align 4, !tbaa !8
  br label %984

984:                                              ; preds = %980, %971
  %985 = phi float [ %983, %980 ], [ 0.000000e+00, %971 ]
  %986 = getelementptr inbounds nuw i8, ptr %4, i64 236
  store float %985, ptr %986, align 4, !tbaa !8
  br i1 %38, label %987, label %991

987:                                              ; preds = %984
  %988 = sub nsw i64 %975, %393
  %989 = getelementptr inbounds float, ptr %1, i64 %988
  %990 = load float, ptr %989, align 4, !tbaa !8
  br label %991

991:                                              ; preds = %987, %984
  %992 = phi float [ %990, %987 ], [ 0.000000e+00, %984 ]
  %993 = getelementptr inbounds nuw i8, ptr %4, i64 240
  store float %992, ptr %993, align 16, !tbaa !8
  br i1 %40, label %994, label %998

994:                                              ; preds = %991
  %995 = getelementptr float, ptr %1, i64 %975
  %996 = getelementptr float, ptr %995, i64 %394
  %997 = load float, ptr %996, align 4, !tbaa !8
  br label %998

998:                                              ; preds = %994, %991
  %999 = phi float [ %997, %994 ], [ 0.000000e+00, %991 ]
  %1000 = getelementptr inbounds nuw i8, ptr %4, i64 228
  store float %999, ptr %1000, align 4, !tbaa !8
  br i1 %41, label %1001, label %701

1001:                                             ; preds = %998
  %1002 = sub nsw i64 %975, %394
  br label %697

1003:                                             ; preds = %701, %3
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #8
  ret void
}

; Function Attrs: convergent mustprogress nofree nounwind willreturn memory(none)
declare dso_local i64 @get_global_id(i32 noundef) local_unnamed_addr #7

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { convergent norecurse nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { convergent nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { convergent norecurse nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "uniform-work-group-size"="true" }
attributes #6 = { alwaysinline convergent norecurse nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { convergent mustprogress nofree nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind }
attributes #9 = { convergent nounwind }
attributes #10 = { convergent nounwind willreturn memory(none) }

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
!8 = !{!9, !9, i64 0}
!9 = !{!"float", !6, i64 0}
!10 = !{float 2.500000e+00}
!11 = !{i32 1, i32 1, i32 2}
!12 = !{!"none", !"none", !"none"}
!13 = !{!"float*", !"float*", !"int*"}
!14 = !{!"", !"", !"const"}
