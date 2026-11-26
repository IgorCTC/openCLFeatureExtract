; ModuleID = 'res/Kernels/tor_ord.cl'
source_filename = "res/Kernels/tor_ord.cl"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-redhat-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @torord_initial_state(ptr noundef writeonly captures(none) initializes((0, 160)) %0) local_unnamed_addr #0 {
  store <4 x float> <float 7.000000e+00, float 7.000000e+00, float 1.450000e+02, float 1.450000e+02>, ptr %0, align 4, !tbaa !8
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <4 x float> <float 0x3F1A36E2E0000000, float 0x3F1A36E2E0000000, float 0x3FF3333340000000, float 0x3FF3333340000000>, ptr %2, align 4, !tbaa !8
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <4 x float> <float 0.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %3, align 4, !tbaa !8
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00>, ptr %4, align 4, !tbaa !8
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 64
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %5, align 4, !tbaa !8
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 80
  store <4 x float> <float 0.000000e+00, float 1.000000e+00, float 1.000000e+00, float 0.000000e+00>, ptr %6, align 4, !tbaa !8
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 96
  store <4 x float> splat (float 1.000000e+00), ptr %7, align 4, !tbaa !8
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 112
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %8, align 4, !tbaa !8
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 128
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 144
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %9, i8 0, i64 16, i1 false)
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %10, align 4, !tbaa !8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local range(i32 0, 2) i32 @torord_is_gate(i32 noundef %0) local_unnamed_addr #1 {
  %2 = add i32 %0, -8
  %3 = icmp ult i32 %2, 29
  %4 = icmp ne i32 %0, 29
  %5 = and i1 %4, %3
  %6 = add i32 %0, -37
  %7 = icmp ult i32 %6, 2
  %8 = or i1 %7, %5
  %9 = zext i1 %8 to i32
  ret i32 %9
}

; Function Attrs: convergent mustprogress nofree norecurse nounwind willreturn memory(none) uwtable
define dso_local float @ghk_v(float noundef %0) local_unnamed_addr #2 {
  %2 = tail call float @_Z4fabsf(float noundef %0) #15
  %3 = fcmp olt float %2, 0x3F1A36E2E0000000
  %4 = select i1 %3, float 0x3F1A36E2E0000000, float %0
  ret float %4
}

; Function Attrs: convergent mustprogress nofree nounwind willreturn memory(none)
declare dso_local float @_Z4fabsf(float noundef) local_unnamed_addr #3

; Function Attrs: convergent norecurse nounwind uwtable
define dso_local float @torord_rates(float noundef %0, ptr noundef readonly captures(none) %1, i32 noundef %2, float noundef %3, ptr noundef writeonly captures(none) initializes((32, 116), (120, 156)) %4, ptr noundef captures(none) initializes((32, 116), (120, 156)) %5, ptr noundef writeonly captures(none) initializes((0, 32), (116, 120), (156, 160)) %6) local_unnamed_addr #4 {
  %8 = load float, ptr %1, align 4, !tbaa !8
  %9 = getelementptr inbounds nuw i8, ptr %1, i64 4
  %10 = load float, ptr %9, align 4, !tbaa !8
  %11 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %12 = load float, ptr %11, align 4, !tbaa !8
  %13 = getelementptr inbounds nuw i8, ptr %1, i64 12
  %14 = load float, ptr %13, align 4, !tbaa !8
  %15 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %16 = load <2 x float>, ptr %15, align 4, !tbaa !8
  %17 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %18 = load float, ptr %17, align 4, !tbaa !8
  %19 = getelementptr inbounds nuw i8, ptr %1, i64 28
  %20 = load float, ptr %19, align 4, !tbaa !8
  %21 = icmp eq i32 %2, 1
  %22 = icmp eq i32 %2, 2
  %23 = getelementptr inbounds nuw i8, ptr %1, i64 156
  %24 = load float, ptr %23, align 4, !tbaa !8
  %25 = fpext float %24 to double
  %26 = fsub double 1.000000e+00, %25
  %27 = fmul double %26, 0x3FA99999A0000000
  %28 = extractelement <2 x float> %16, i64 1
  %29 = fdiv float 0x3F589374C0000000, %28, !fpmath !10
  %30 = fpext float %29 to double
  %31 = fadd double %30, 1.000000e+00
  %32 = fdiv double %27, %31
  %33 = fptrunc double %32 to float
  %34 = fadd float %24, %33
  %35 = fmul float %33, 0x3FA99999A0000000
  %36 = fmul float %24, 0xBF464840E0000000
  %37 = tail call float @llvm.fmuladd.f32(float %35, float %34, float %36)
  %38 = getelementptr inbounds nuw i8, ptr %6, i64 156
  store float %37, ptr %38, align 4, !tbaa !8
  %39 = fdiv float 1.400000e+02, %8, !fpmath !10
  %40 = tail call float @_Z3logf(float noundef %39) #15
  %41 = fdiv float 0x40159999A0000000, %12, !fpmath !10
  %42 = tail call float @_Z3logf(float noundef %41) #15
  %43 = tail call float @llvm.fmuladd.f32(float %8, float 0x3F92C51980000000, float %12)
  %44 = fdiv float 0x401FDD6380000000, %43, !fpmath !10
  %45 = tail call float @_Z3logf(float noundef %44) #15
  %46 = tail call float @_Z3logf(float noundef 0x3FC47AE140000000) #15
  %47 = tail call float @_Z4fabsf(float noundef %0) #15
  %48 = fcmp olt float %47, 0x3F1A36E2E0000000
  %49 = fmul float %0, 9.648500e+04
  %50 = select i1 %48, float 0x40234C0820000000, float %49
  %51 = fdiv float %50, 2.577340e+06, !fpmath !10
  %52 = fpext float %0 to double
  %53 = fadd double %52, 3.957000e+01
  %54 = fdiv double %53, -9.871000e+00
  %55 = tail call double @_Z3expd(double noundef %54) #16
  %56 = fadd double %55, 1.000000e+00
  %57 = fdiv double 1.000000e+00, %56
  %58 = fptrunc double %57 to float
  %59 = getelementptr inbounds nuw i8, ptr %4, i64 32
  store float %58, ptr %59, align 4, !tbaa !8
  %60 = fadd double %52, 1.164000e+01
  %61 = fdiv double %60, 3.477000e+01
  %62 = tail call double @_Z3expd(double noundef %61) #16
  %63 = fadd double %52, 7.742000e+01
  %64 = fdiv double %63, -5.955000e+00
  %65 = tail call double @_Z3expd(double noundef %64) #16
  %66 = fmul double %65, 0x40211A9FBE76C8B4
  %67 = tail call double @llvm.fmuladd.f64(double %62, double 6.765000e+00, double %66)
  %68 = fdiv double 1.000000e+00, %67
  %69 = fptrunc double %68 to float
  %70 = getelementptr inbounds nuw i8, ptr %5, i64 32
  store float %69, ptr %70, align 4, !tbaa !8
  %71 = fadd double %52, 8.290000e+01
  %72 = fdiv double %71, 6.086000e+00
  %73 = tail call double @_Z3expd(double noundef %72) #16
  %74 = fadd double %73, 1.000000e+00
  %75 = fdiv double 1.000000e+00, %74
  %76 = fptrunc double %75 to float
  %77 = getelementptr inbounds nuw i8, ptr %4, i64 36
  store float %76, ptr %77, align 4, !tbaa !8
  %78 = fadd double %52, 1.196000e+00
  %79 = fdiv double %78, -6.285000e+00
  %80 = tail call double @_Z3expd(double noundef %79) #16
  %81 = fadd double %52, 5.096000e-01
  %82 = fdiv double %81, 2.027000e+01
  %83 = tail call double @_Z3expd(double noundef %82) #16
  %84 = fmul double %83, 6.149000e+00
  %85 = tail call double @llvm.fmuladd.f64(double %80, double 1.432000e-05, double %84)
  %86 = fdiv double 1.000000e+00, %85
  %87 = fptrunc double %86 to float
  %88 = getelementptr inbounds nuw i8, ptr %5, i64 36
  store float %87, ptr %88, align 4, !tbaa !8
  %89 = getelementptr inbounds nuw i8, ptr %4, i64 40
  store float %76, ptr %89, align 4, !tbaa !8
  %90 = fadd double %52, 1.795000e+01
  %91 = fdiv double %90, -2.805000e+01
  %92 = tail call double @_Z3expd(double noundef %91) #16
  %93 = fadd double %52, 5.730000e+00
  %94 = fdiv double %93, 5.666000e+01
  %95 = tail call double @_Z3expd(double noundef %94) #16
  %96 = fmul double %95, 3.343000e-01
  %97 = tail call double @llvm.fmuladd.f64(double %92, double 9.794000e-03, double %96)
  %98 = fdiv double 1.000000e+00, %97
  %99 = fptrunc double %98 to float
  %100 = getelementptr inbounds nuw i8, ptr %5, i64 40
  store float %99, ptr %100, align 4, !tbaa !8
  %101 = getelementptr inbounds nuw i8, ptr %4, i64 44
  store float %76, ptr %101, align 4, !tbaa !8
  %102 = fadd double %52, 1.006000e+02
  %103 = fdiv double %102, -8.281000e+00
  %104 = tail call double @_Z3expd(double noundef %103) #16
  %105 = fadd double %52, 0x3FEFCFAACD9E83E4
  %106 = fdiv double %105, 3.845000e+01
  %107 = tail call double @_Z3expd(double noundef %106) #16
  %108 = fmul double %107, 3.052000e-01
  %109 = tail call double @llvm.fmuladd.f64(double %104, double 2.136000e-02, double %108)
  %110 = fdiv double 1.000000e+00, %109
  %111 = fadd double %110, 2.038000e+00
  %112 = fptrunc double %111 to float
  %113 = getelementptr inbounds nuw i8, ptr %5, i64 44
  store float %112, ptr %113, align 4, !tbaa !8
  %114 = fadd double %52, 8.910000e+01
  %115 = fdiv double %114, 6.086000e+00
  %116 = tail call double @_Z3expd(double noundef %115) #16
  %117 = fadd double %116, 1.000000e+00
  %118 = fdiv double 1.000000e+00, %117
  %119 = fptrunc double %118 to float
  %120 = getelementptr inbounds nuw i8, ptr %4, i64 48
  store float %119, ptr %120, align 4, !tbaa !8
  %121 = load float, ptr %100, align 4, !tbaa !8
  %122 = fmul float %121, 3.000000e+00
  %123 = getelementptr inbounds nuw i8, ptr %5, i64 48
  store float %122, ptr %123, align 4, !tbaa !8
  %124 = getelementptr inbounds nuw i8, ptr %4, i64 52
  store float %76, ptr %124, align 4, !tbaa !8
  %125 = load float, ptr %113, align 4, !tbaa !8
  %126 = fpext float %125 to double
  %127 = fmul double %126, 1.460000e+00
  %128 = fptrunc double %127 to float
  %129 = getelementptr inbounds nuw i8, ptr %5, i64 52
  store float %128, ptr %129, align 4, !tbaa !8
  %130 = getelementptr inbounds nuw i8, ptr %1, i64 36
  %131 = load float, ptr %130, align 4, !tbaa !8
  %132 = getelementptr inbounds nuw i8, ptr %1, i64 40
  %133 = load float, ptr %132, align 4, !tbaa !8
  %134 = getelementptr inbounds nuw i8, ptr %1, i64 48
  %135 = load float, ptr %134, align 4, !tbaa !8
  %136 = getelementptr inbounds nuw i8, ptr %1, i64 32
  %137 = load float, ptr %136, align 4, !tbaa !8
  %138 = getelementptr inbounds nuw i8, ptr %1, i64 44
  %139 = load float, ptr %138, align 4, !tbaa !8
  %140 = getelementptr inbounds nuw i8, ptr %1, i64 52
  %141 = fadd double %52, 4.285000e+01
  %142 = fdiv double %141, -5.264000e+00
  %143 = getelementptr inbounds nuw i8, ptr %4, i64 56
  %144 = getelementptr inbounds nuw i8, ptr %5, i64 56
  %145 = fadd double %52, 0x4055E70A3D70A3D7
  %146 = fdiv double %145, 7.488000e+00
  %147 = getelementptr inbounds nuw i8, ptr %4, i64 60
  %148 = getelementptr inbounds nuw i8, ptr %5, i64 60
  %149 = fadd double %52, 9.381000e+01
  %150 = fdiv double %149, 7.488000e+00
  %151 = getelementptr inbounds nuw i8, ptr %4, i64 64
  %152 = getelementptr inbounds nuw i8, ptr %5, i64 64
  %153 = getelementptr inbounds nuw i8, ptr %1, i64 56
  %154 = getelementptr inbounds nuw i8, ptr %1, i64 60
  %155 = load float, ptr %140, align 4, !tbaa !8
  %156 = tail call double @_Z3expd(double noundef %142) #16
  %157 = fadd double %156, 1.000000e+00
  %158 = fdiv double 1.000000e+00, %157
  %159 = fptrunc double %158 to float
  store float %159, ptr %143, align 4, !tbaa !8
  %160 = load float, ptr %70, align 4, !tbaa !8
  store float %160, ptr %144, align 4, !tbaa !8
  %161 = tail call double @_Z3expd(double noundef %146) #16
  %162 = fadd double %161, 1.000000e+00
  %163 = fdiv double 1.000000e+00, %162
  %164 = fptrunc double %163 to float
  store float %164, ptr %147, align 4, !tbaa !8
  store float 2.000000e+02, ptr %148, align 4, !tbaa !8
  %165 = tail call double @_Z3expd(double noundef %150) #16
  %166 = fadd double %165, 1.000000e+00
  %167 = fdiv double 1.000000e+00, %166
  %168 = fptrunc double %167 to float
  store float %168, ptr %151, align 4, !tbaa !8
  store float 6.000000e+02, ptr %152, align 4, !tbaa !8
  %169 = load float, ptr %153, align 4, !tbaa !8
  %170 = load <2 x float>, ptr %154, align 4, !tbaa !8
  %171 = fadd double %52, -1.434000e+01
  %172 = fdiv double %171, -1.482000e+01
  %173 = tail call double @_Z3expd(double noundef %172) #16
  %174 = fadd double %173, 1.000000e+00
  %175 = fdiv double 1.000000e+00, %174
  %176 = fptrunc double %175 to float
  %177 = getelementptr inbounds nuw i8, ptr %4, i64 68
  store float %176, ptr %177, align 4, !tbaa !8
  %178 = fadd double %52, -1.840990e+01
  %179 = fdiv double %178, -2.938140e+01
  %180 = tail call double @_Z3expd(double noundef %179) #16
  %181 = fadd double %180, 1.000000e+00
  %182 = fmul double %181, 1.208900e+00
  %183 = fdiv double 1.000000e+00, %182
  %184 = fadd double %52, 1.000000e+02
  %185 = fdiv double %184, 2.938140e+01
  %186 = tail call double @_Z3expd(double noundef %185) #16
  %187 = fadd double %186, 1.000000e+00
  %188 = fdiv double 3.500000e+00, %187
  %189 = fadd double %183, %188
  %190 = fdiv double 1.051500e+00, %189
  %191 = fptrunc double %190 to float
  %192 = getelementptr inbounds nuw i8, ptr %5, i64 68
  store float %191, ptr %192, align 4, !tbaa !8
  %193 = fadd double %52, 4.394000e+01
  %194 = fdiv double %193, 5.711000e+00
  %195 = tail call double @_Z3expd(double noundef %194) #16
  %196 = fadd double %195, 1.000000e+00
  %197 = fdiv double 1.000000e+00, %196
  %198 = fptrunc double %197 to float
  %199 = fadd double %52, 7.000000e+01
  br i1 %21, label %200, label %208

200:                                              ; preds = %7
  %201 = fdiv double %199, 5.000000e+00
  %202 = tail call double @_Z3expd(double noundef %201) #16
  %203 = fadd double %202, 1.000000e+00
  %204 = fdiv double 0x3FEE666666666666, %203
  %205 = fsub double 1.000000e+00, %204
  %206 = fptrunc double %205 to float
  %207 = fpext float %206 to double
  br label %208

208:                                              ; preds = %7, %200
  %209 = phi double [ %207, %200 ], [ 1.000000e+00, %7 ]
  %210 = fdiv double %184, -1.000000e+02
  %211 = tail call double @_Z3expd(double noundef %210) #16
  %212 = fadd double %52, 5.000000e+01
  %213 = fdiv double %212, 1.659000e+01
  %214 = tail call double @_Z3expd(double noundef %213) #16
  %215 = fmul double %214, 8.004000e-02
  %216 = tail call double @llvm.fmuladd.f64(double %211, double 3.933000e-01, double %215)
  %217 = fdiv double 1.000000e+00, %216
  %218 = fadd double %217, 4.562000e+00
  %219 = fmul double %209, %218
  %220 = fptrunc double %219 to float
  %221 = fadd double %52, 0x40582147AE147AE1
  %222 = fdiv double %221, -5.905000e+01
  %223 = tail call double @_Z3expd(double noundef %222) #16
  %224 = fadd double %52, 1.141000e+02
  %225 = fdiv double %224, 8.079000e+00
  %226 = tail call double @_Z3expd(double noundef %225) #16
  %227 = fmul double %226, 1.780000e-08
  %228 = tail call double @llvm.fmuladd.f64(double %223, double 1.416000e-03, double %227)
  %229 = fdiv double 1.000000e+00, %228
  %230 = fadd double %229, 2.362000e+01
  %231 = fmul double %209, %230
  %232 = fptrunc double %231 to float
  %233 = getelementptr inbounds nuw i8, ptr %4, i64 72
  store float %198, ptr %233, align 4, !tbaa !8
  %234 = getelementptr inbounds nuw i8, ptr %5, i64 72
  store float %220, ptr %234, align 4, !tbaa !8
  %235 = getelementptr inbounds nuw i8, ptr %4, i64 76
  store float %198, ptr %235, align 4, !tbaa !8
  %236 = getelementptr inbounds nuw i8, ptr %5, i64 76
  store float %232, ptr %236, align 4, !tbaa !8
  %237 = fadd double %52, -2.136000e+02
  %238 = fdiv double %237, 1.512000e+02
  %239 = tail call double @_Z3expd(double noundef %238) #16
  %240 = fadd double %52, -2.434000e+01
  %241 = fdiv double %240, -1.482000e+01
  %242 = tail call double @_Z3expd(double noundef %241) #16
  %243 = fadd double %242, 1.000000e+00
  %244 = fdiv double 1.000000e+00, %243
  %245 = fptrunc double %244 to float
  %246 = getelementptr inbounds nuw i8, ptr %4, i64 80
  store float %245, ptr %246, align 4, !tbaa !8
  %247 = load float, ptr %192, align 4, !tbaa !8
  %248 = getelementptr inbounds nuw i8, ptr %5, i64 80
  store float %247, ptr %248, align 4, !tbaa !8
  %249 = fadd double %52, -1.674000e+02
  %250 = fdiv double %249, 1.589000e+01
  %251 = tail call double @_Z3expd(double noundef %250) #16
  %252 = fadd double %52, -1.223000e+01
  %253 = fdiv double %252, -2.154000e-01
  %254 = tail call double @_Z3expd(double noundef %253) #16
  %255 = fadd double %251, %254
  %256 = fdiv double 1.000000e-04, %255
  %257 = fadd double %256, 1.354000e+00
  %258 = fptrunc double %257 to float
  %259 = fdiv double %199, 2.000000e+01
  %260 = tail call double @_Z3expd(double noundef %259) #16
  %261 = fadd double %260, 1.000000e+00
  %262 = fdiv double 5.000000e-01, %261
  %263 = fsub double 1.000000e+00, %262
  %264 = fptrunc double %263 to float
  %265 = getelementptr inbounds nuw i8, ptr %4, i64 84
  store float %198, ptr %265, align 4, !tbaa !8
  %266 = fmul float %258, %264
  %267 = fmul float %266, %220
  %268 = getelementptr inbounds nuw i8, ptr %5, i64 84
  store float %267, ptr %268, align 4, !tbaa !8
  %269 = getelementptr inbounds nuw i8, ptr %4, i64 88
  store float %198, ptr %269, align 4, !tbaa !8
  %270 = fmul float %266, %232
  %271 = getelementptr inbounds nuw i8, ptr %5, i64 88
  store float %270, ptr %271, align 4, !tbaa !8
  %272 = getelementptr inbounds nuw i8, ptr %1, i64 72
  %273 = load float, ptr %272, align 4, !tbaa !8
  %274 = getelementptr inbounds nuw i8, ptr %1, i64 76
  %275 = load float, ptr %274, align 4, !tbaa !8
  %276 = getelementptr inbounds nuw i8, ptr %1, i64 84
  %277 = load float, ptr %276, align 4, !tbaa !8
  %278 = getelementptr inbounds nuw i8, ptr %1, i64 88
  %279 = load float, ptr %278, align 4, !tbaa !8
  %280 = getelementptr inbounds nuw i8, ptr %1, i64 68
  %281 = load float, ptr %280, align 4, !tbaa !8
  %282 = getelementptr inbounds nuw i8, ptr %1, i64 80
  %283 = load float, ptr %282, align 4, !tbaa !8
  %284 = fadd double %52, 3.940000e+00
  %285 = fdiv double %284, -4.230000e+00
  %286 = tail call double @_Z3expd(double noundef %285) #16
  %287 = fadd double %286, 1.000000e+00
  %288 = fdiv double 1.000000e+00, %287
  %289 = fptrunc double %288 to float
  %290 = getelementptr inbounds nuw i8, ptr %4, i64 92
  store float %289, ptr %290, align 4, !tbaa !8
  %291 = fadd double %52, 6.000000e+00
  %292 = fmul double %291, -5.000000e-02
  %293 = tail call double @_Z3expd(double noundef %292) #16
  %294 = fadd double %52, 1.400000e+01
  %295 = fmul double %294, 0x3FB70A3D70A3D70A
  %296 = tail call double @_Z3expd(double noundef %295) #16
  %297 = fadd double %293, %296
  %298 = fdiv double 1.000000e+00, %297
  %299 = fadd double %298, 6.000000e-01
  %300 = fptrunc double %299 to float
  %301 = getelementptr inbounds nuw i8, ptr %5, i64 92
  store float %300, ptr %301, align 4, !tbaa !8
  %302 = fadd double %52, 1.958000e+01
  %303 = fdiv double %302, 3.696000e+00
  %304 = tail call double @_Z3expd(double noundef %303) #16
  %305 = fadd double %304, 1.000000e+00
  %306 = fdiv double 1.000000e+00, %305
  %307 = fptrunc double %306 to float
  %308 = getelementptr inbounds nuw i8, ptr %4, i64 96
  store float %307, ptr %308, align 4, !tbaa !8
  %309 = fadd double %52, 2.000000e+01
  %310 = fdiv double %309, -1.000000e+01
  %311 = tail call double @_Z3expd(double noundef %310) #16
  %312 = fdiv double %309, 1.000000e+01
  %313 = tail call double @_Z3expd(double noundef %312) #16
  %314 = fmul double %313, 4.500000e-03
  %315 = tail call double @llvm.fmuladd.f64(double %311, double 4.500000e-03, double %314)
  %316 = fdiv double 1.000000e+00, %315
  %317 = fadd double %316, 7.000000e+00
  %318 = fptrunc double %317 to float
  %319 = getelementptr inbounds nuw i8, ptr %5, i64 96
  store float %318, ptr %319, align 4, !tbaa !8
  %320 = getelementptr inbounds nuw i8, ptr %4, i64 100
  store float %307, ptr %320, align 4, !tbaa !8
  %321 = fadd double %52, 5.000000e+00
  %322 = fmul double %321, -2.500000e-01
  %323 = tail call double @_Z3expd(double noundef %322) #16
  %324 = fdiv double %321, 6.000000e+00
  %325 = tail call double @_Z3expd(double noundef %324) #16
  %326 = fmul double %325, 3.500000e-05
  %327 = tail call double @llvm.fmuladd.f64(double %323, double 3.500000e-05, double %326)
  %328 = fdiv double 1.000000e+00, %327
  %329 = fadd double %328, 1.000000e+03
  %330 = fptrunc double %329 to float
  %331 = getelementptr inbounds nuw i8, ptr %5, i64 100
  store float %330, ptr %331, align 4, !tbaa !8
  %332 = getelementptr inbounds nuw i8, ptr %1, i64 96
  %333 = load float, ptr %332, align 4, !tbaa !8
  %334 = getelementptr inbounds nuw i8, ptr %1, i64 100
  %335 = load float, ptr %334, align 4, !tbaa !8
  %336 = getelementptr inbounds nuw i8, ptr %4, i64 104
  store float %307, ptr %336, align 4, !tbaa !8
  %337 = fadd double %52, -4.000000e+00
  %338 = fdiv double %337, -7.000000e+00
  %339 = tail call double @_Z3expd(double noundef %338) #16
  %340 = fdiv double %337, 7.000000e+00
  %341 = tail call double @_Z3expd(double noundef %340) #16
  %342 = fmul double %341, 4.000000e-02
  %343 = tail call double @llvm.fmuladd.f64(double %339, double 4.000000e-02, double %342)
  %344 = fdiv double 1.000000e+00, %343
  %345 = fadd double %344, 7.000000e+00
  %346 = fptrunc double %345 to float
  %347 = getelementptr inbounds nuw i8, ptr %5, i64 104
  store float %346, ptr %347, align 4, !tbaa !8
  %348 = getelementptr inbounds nuw i8, ptr %4, i64 108
  store float %307, ptr %348, align 4, !tbaa !8
  %349 = fneg float %0
  %350 = fpext float %349 to double
  %351 = fdiv double %350, 3.000000e+00
  %352 = tail call double @_Z3expd(double noundef %351) #16
  %353 = fdiv double %52, 7.000000e+00
  %354 = tail call double @_Z3expd(double noundef %353) #16
  %355 = fmul double %354, 1.200000e-04
  %356 = tail call double @llvm.fmuladd.f64(double %352, double 1.200000e-04, double %355)
  %357 = fdiv double 1.000000e+00, %356
  %358 = fadd double %357, 1.000000e+02
  %359 = fptrunc double %358 to float
  %360 = getelementptr inbounds nuw i8, ptr %5, i64 108
  store float %359, ptr %360, align 4, !tbaa !8
  %361 = fadd double %52, -1.000000e+01
  %362 = fdiv double %361, 1.000000e+01
  %363 = tail call double @_Z3expd(double noundef %362) #16
  %364 = getelementptr inbounds nuw i8, ptr %1, i64 104
  %365 = load float, ptr %364, align 4, !tbaa !8
  %366 = getelementptr inbounds nuw i8, ptr %1, i64 108
  %367 = load float, ptr %366, align 4, !tbaa !8
  %368 = getelementptr inbounds nuw i8, ptr %4, i64 112
  store float %307, ptr %368, align 4, !tbaa !8
  %369 = getelementptr inbounds nuw i8, ptr %5, i64 112
  store float 7.500000e+01, ptr %369, align 4, !tbaa !8
  %370 = getelementptr inbounds nuw i8, ptr %4, i64 120
  store float %307, ptr %370, align 4, !tbaa !8
  %371 = load float, ptr %319, align 4, !tbaa !8
  %372 = fmul float %371, 2.500000e+00
  %373 = getelementptr inbounds nuw i8, ptr %5, i64 120
  store float %372, ptr %373, align 4, !tbaa !8
  %374 = getelementptr inbounds nuw i8, ptr %1, i64 120
  %375 = load float, ptr %374, align 4, !tbaa !8
  %376 = load float, ptr %334, align 4, !tbaa !8
  %377 = getelementptr inbounds nuw i8, ptr %4, i64 124
  store float %307, ptr %377, align 4, !tbaa !8
  %378 = load float, ptr %347, align 4, !tbaa !8
  %379 = fmul float %378, 2.500000e+00
  %380 = getelementptr inbounds nuw i8, ptr %5, i64 124
  store float %379, ptr %380, align 4, !tbaa !8
  %381 = getelementptr inbounds nuw i8, ptr %1, i64 124
  %382 = load float, ptr %381, align 4, !tbaa !8
  %383 = load float, ptr %366, align 4, !tbaa !8
  %384 = getelementptr inbounds nuw i8, ptr %1, i64 112
  %385 = load float, ptr %384, align 4, !tbaa !8
  %386 = fdiv float 0x3F60624DE0000000, %28, !fpmath !10
  %387 = fadd float %386, 1.000000e+00
  %388 = fdiv float 1.000000e+03, %385, !fpmath !10
  %389 = fmul float %387, %387
  %390 = fmul float %387, %389
  %391 = tail call float @llvm.fmuladd.f32(float %390, float %387, float %388)
  %392 = fdiv float 1.000000e+00, %391
  %393 = getelementptr inbounds nuw i8, ptr %1, i64 116
  %394 = load float, ptr %393, align 4, !tbaa !8
  %395 = fneg float %385
  %396 = fmul float %394, %395
  %397 = tail call float @llvm.fmuladd.f32(float %392, float 1.000000e+03, float %396)
  %398 = getelementptr inbounds nuw i8, ptr %6, i64 116
  store float %397, ptr %398, align 4, !tbaa !8
  %399 = fpext float %51 to double
  %400 = fmul double %399, 2.000000e+00
  %401 = tail call double @_Z3expd(double noundef %400) #16
  %402 = getelementptr inbounds nuw i8, ptr %1, i64 92
  %403 = load float, ptr %402, align 4, !tbaa !8
  %404 = load float, ptr %393, align 4, !tbaa !8
  %405 = load float, ptr %384, align 4, !tbaa !8
  %406 = fadd double %52, 0x4020AC8B43958106
  %407 = fdiv double %406, -6.789000e+00
  %408 = tail call double @_Z3expd(double noundef %407) #16
  %409 = fadd double %408, 1.000000e+00
  %410 = fdiv double 1.000000e+00, %409
  %411 = fptrunc double %410 to float
  %412 = getelementptr inbounds nuw i8, ptr %4, i64 128
  store float %411, ptr %412, align 4, !tbaa !8
  %413 = fadd double %52, -3.166000e+01
  %414 = fdiv double %413, 3.869000e+00
  %415 = tail call double @_Z3expd(double noundef %414) #16
  %416 = fadd double %52, -4.778000e+01
  %417 = fdiv double %416, -2.038000e+01
  %418 = tail call double @_Z3expd(double noundef %417) #16
  %419 = fmul double %418, 4.123000e-05
  %420 = tail call double @llvm.fmuladd.f64(double %415, double 3.652000e-01, double %419)
  %421 = fdiv double 1.000000e+00, %420
  %422 = fadd double %421, 1.298000e+01
  %423 = fptrunc double %422 to float
  %424 = getelementptr inbounds nuw i8, ptr %5, i64 128
  store float %423, ptr %424, align 4, !tbaa !8
  %425 = getelementptr inbounds nuw i8, ptr %4, i64 132
  store float %411, ptr %425, align 4, !tbaa !8
  %426 = fadd double %52, -3.470000e+01
  %427 = fdiv double %426, 7.355000e+00
  %428 = tail call double @_Z3expd(double noundef %427) #16
  %429 = fadd double %52, -2.974000e+01
  %430 = fdiv double %429, -2.594000e+01
  %431 = tail call double @_Z3expd(double noundef %430) #16
  %432 = fmul double %431, 1.128000e-05
  %433 = tail call double @llvm.fmuladd.f64(double %428, double 6.629000e-02, double %432)
  %434 = fdiv double 1.000000e+00, %433
  %435 = fadd double %434, 1.865000e+00
  %436 = fptrunc double %435 to float
  %437 = getelementptr inbounds nuw i8, ptr %5, i64 132
  store float %436, ptr %437, align 4, !tbaa !8
  %438 = fadd double %52, 5.481000e+01
  %439 = fdiv double %438, 3.821000e+01
  %440 = tail call double @_Z3expd(double noundef %439) #16
  %441 = getelementptr inbounds nuw i8, ptr %1, i64 128
  %442 = load float, ptr %441, align 4, !tbaa !8
  %443 = getelementptr inbounds nuw i8, ptr %1, i64 132
  %444 = load float, ptr %443, align 4, !tbaa !8
  %445 = fadd double %52, 5.500000e+01
  %446 = fdiv double %445, 7.500000e+01
  %447 = tail call double @_Z3expd(double noundef %446) #16
  %448 = fdiv double %361, 3.000000e+01
  %449 = tail call double @_Z3expd(double noundef %448) #16
  %450 = tail call double @_Z4sqrtd(double noundef 0x3FF0000004BDA12F) #16
  %451 = fadd double %52, 1.160000e+01
  %452 = fdiv double %451, -8.932000e+00
  %453 = tail call double @_Z3expd(double noundef %452) #16
  %454 = fadd double %453, 1.000000e+00
  %455 = fdiv double 1.000000e+00, %454
  %456 = fptrunc double %455 to float
  %457 = getelementptr inbounds nuw i8, ptr %4, i64 136
  store float %456, ptr %457, align 4, !tbaa !8
  %458 = fadd double %52, 4.828000e+01
  %459 = fdiv double %458, 1.780000e+01
  %460 = tail call double @_Z3expd(double noundef %459) #16
  %461 = fadd double %52, 2.100000e+02
  %462 = fdiv double %461, -2.300000e+02
  %463 = tail call double @_Z3expd(double noundef %462) #16
  %464 = fmul double %463, 1.292000e-03
  %465 = tail call double @llvm.fmuladd.f64(double %460, double 2.326000e-04, double %464)
  %466 = fdiv double 1.000000e+00, %465
  %467 = fadd double %466, 0x40898A6666666666
  %468 = fptrunc double %467 to float
  %469 = getelementptr inbounds nuw i8, ptr %5, i64 136
  store float %468, ptr %469, align 4, !tbaa !8
  %470 = getelementptr inbounds nuw i8, ptr %4, i64 140
  store float %456, ptr %470, align 4, !tbaa !8
  %471 = fadd double %52, -5.000000e+01
  %472 = fdiv double %471, 2.000000e+01
  %473 = tail call double @_Z3expd(double noundef %472) #16
  %474 = fadd double %52, 6.654000e+01
  %475 = fdiv double %474, -3.100000e+01
  %476 = tail call double @_Z3expd(double noundef %475) #16
  %477 = fmul double %476, 1.930000e-02
  %478 = tail call double @llvm.fmuladd.f64(double %473, double 1.000000e-02, double %477)
  %479 = fdiv double 1.000000e+00, %478
  %480 = fptrunc double %479 to float
  %481 = getelementptr inbounds nuw i8, ptr %5, i64 140
  store float %480, ptr %481, align 4, !tbaa !8
  %482 = getelementptr inbounds nuw i8, ptr %1, i64 136
  %483 = getelementptr inbounds nuw i8, ptr %1, i64 140
  %484 = fadd double %52, 0x402B94BF11C1BDA5
  %485 = fadd double %484, 1.445900e+02
  %486 = fdiv double %485, 0xC028920321F06F69
  %487 = getelementptr inbounds nuw i8, ptr %4, i64 144
  %488 = fadd double %52, 1.272000e+02
  %489 = fdiv double %488, -2.036000e+01
  %490 = fadd double %52, 2.368000e+02
  %491 = fdiv double %490, 6.933000e+01
  %492 = getelementptr inbounds nuw i8, ptr %5, i64 144
  %493 = fadd double %52, 1.058000e+02
  %494 = fadd double %493, 0xC02C147AE999999A
  %495 = fdiv double %494, 9.493000e+00
  %496 = getelementptr inbounds nuw i8, ptr %1, i64 144
  %497 = load float, ptr %482, align 4, !tbaa !8
  %498 = load float, ptr %483, align 4, !tbaa !8
  %499 = tail call double @_Z3expd(double noundef %486) #16
  %500 = fadd double %499, 1.000000e+00
  %501 = fdiv double 1.000000e+00, %500
  %502 = fptrunc double %501 to float
  store float %502, ptr %487, align 4, !tbaa !8
  %503 = tail call double @_Z3expd(double noundef %489) #16
  %504 = tail call double @_Z3expd(double noundef %491) #16
  %505 = fadd double %503, %504
  %506 = fdiv double 1.222000e+02, %505
  %507 = fptrunc double %506 to float
  store float %507, ptr %492, align 4, !tbaa !8
  %508 = tail call double @_Z3expd(double noundef %495) #16
  %509 = load float, ptr %496, align 4, !tbaa !8
  %510 = fmul float %0, 0x3FC5604180000000
  %511 = fdiv float %510, 0x403AB65BE0000000, !fpmath !10
  %512 = tail call float @_Z3expf(float noundef %511) #15
  %513 = fmul float %0, 0x3FE0B78040000000
  %514 = fdiv float %513, 0x403AB65BE0000000, !fpmath !10
  %515 = tail call float @_Z3expf(float noundef %514) #15
  %516 = tail call float @_Z3expf(float noundef %51) #15
  %517 = extractelement <2 x float> %16, i64 0
  %518 = fdiv float 0x3F03EC4600000000, %517, !fpmath !10
  %519 = tail call float @_Z3powff(float noundef %518, float noundef 0x3FF6666660000000) #15
  %520 = tail call float @_Z4sqrtf(float noundef 0x40159999A0000000) #15, !fpmath !11
  %521 = fmul double %52, -1.550000e-01
  %522 = fdiv double %521, 0x405408C4E8000000
  %523 = tail call double @_Z3expd(double noundef %522) #16
  %524 = fmul double %52, 1.155000e+00
  %525 = fdiv double %524, 0x405408C4E8000000
  %526 = tail call double @_Z3expd(double noundef %525) #16
  br i1 %21, label %534, label %527

527:                                              ; preds = %208
  %528 = select i1 %22, float 0x3F52599EE0000000, float 0x3F4A36E2E0000000
  %529 = select i1 %22, float 0x3FCFBFC660000000, float 0x3FC86C2260000000
  %530 = select i1 %22, double 0x3FA2D77320000000, double 0x3FA78D4FE0000000
  %531 = select i1 %22, double 0x3F30624DE0000000, double 0x3F1A36E2E0000000
  %532 = select i1 %22, float 2.100000e+01, float 3.000000e+01
  %533 = insertelement <2 x float> <float poison, float 0x3F6BDA5120000000>, float %529, i64 0
  br label %534

534:                                              ; preds = %208, %527
  %535 = phi float [ 0x3F4CD5F9A0000000, %208 ], [ %528, %527 ]
  %536 = phi double [ 0x3FAE9E1B00000000, %208 ], [ %530, %527 ]
  %537 = phi double [ 0x3F1F751040000000, %208 ], [ %531, %527 ]
  %538 = phi float [ 0x3F2446DEC0000000, %208 ], [ 0x3F1F31F460000000, %527 ]
  %539 = phi double [ 0x3FF4CCCCC0000000, %208 ], [ 1.000000e+00, %527 ]
  %540 = phi double [ 1.800000e-03, %208 ], [ 3.000000e-03, %527 ]
  %541 = phi float [ 0x3F726E9780000000, %208 ], [ 0x3F7EB851E0000000, %527 ]
  %542 = phi float [ 2.700000e+01, %208 ], [ %532, %527 ]
  %543 = phi <2 x float> [ <float 0x3FCD4E8FC0000000, float 0x3F737F38C0000000>, %208 ], [ %533, %527 ]
  %544 = fmul float %515, %10
  %545 = fdiv float %10, 0x405607AE20000000, !fpmath !10
  %546 = fpext float %545 to double
  %547 = fpext float %515 to double
  %548 = fadd double %547, 1.000000e+00
  %549 = tail call double @llvm.fmuladd.f64(double %546, double %548, double 1.000000e+00)
  %550 = fptrunc double %549 to float
  %551 = fmul float %550, 0x405607AE20000000
  %552 = fdiv float %544, %551, !fpmath !10
  %553 = fmul float %10, %10
  %554 = fdiv float %10, 1.500000e+01, !fpmath !10
  %555 = fpext float %554 to double
  %556 = fdiv float %10, 5.000000e+00, !fpmath !10
  %557 = fpext float %556 to double
  %558 = fadd double %557, 1.000000e+00
  %559 = tail call double @llvm.fmuladd.f64(double %555, double %558, double 1.000000e+00)
  %560 = fptrunc double %559 to float
  %561 = fmul float %560, 1.500000e+01
  %562 = fmul float %561, 5.000000e+00
  %563 = fdiv float %553, %562, !fpmath !10
  %564 = fmul float %552, %563
  %565 = fmul float %564, 6.000000e+04
  %566 = fmul float %565, 0x40C28EBBA0000000
  %567 = fdiv float 1.000000e+00, %550
  %568 = fmul float %567, 6.000000e+04
  %569 = fdiv float %568, %512, !fpmath !10
  %570 = fmul float %552, 5.000000e+03
  %571 = fadd float %569, %570
  %572 = fadd float %571, 5.000000e+03
  %573 = fmul float %515, 0x405607AE20000000
  %574 = fdiv double 1.000000e+00, %547
  %575 = fadd double %574, 1.000000e+00
  %576 = tail call double @llvm.fmuladd.f64(double %575, double 0x3FF96B7D60000000, double 1.000000e+00)
  %577 = fptrunc double %576 to float
  %578 = fmul float %573, %577
  %579 = fdiv float 1.400000e+02, %578, !fpmath !10
  %580 = fmul float %579, 0x3FED6DC1E0000000
  %581 = fmul float %580, 6.000000e+04
  %582 = fadd float %581, 0x40C28EBBA0000000
  %583 = fdiv float 1.000000e+00, %560
  %584 = fmul float %28, %583
  %585 = fmul float %584, 1.500000e+06
  %586 = fmul float %571, %585
  %587 = fmul float %582, %586
  %588 = tail call float @llvm.fmuladd.f32(float %566, float %572, float %587)
  %589 = fmul float %581, 5.000000e+03
  %590 = fdiv float 1.000000e+00, %577
  %591 = fmul float %590, 6.000000e+04
  %592 = fmul float %579, 5.000000e+03
  %593 = fadd float %591, %592
  %594 = fmul float %593, 5.000000e+03
  %595 = fmul float %594, %582
  %596 = tail call float @llvm.fmuladd.f32(float %589, float %572, float %595)
  %597 = fmul float %593, 0x40C28EBBA0000000
  %598 = fadd float %585, %565
  %599 = fadd float %593, 5.000000e+03
  %600 = fmul float %581, %585
  %601 = fmul float %599, %600
  %602 = tail call float @llvm.fmuladd.f32(float %597, float %598, float %601)
  %603 = fmul float %571, 5.000000e+03
  %604 = fmul float %565, 5.000000e+03
  %605 = fmul float %599, %604
  %606 = tail call float @llvm.fmuladd.f32(float %603, float %598, float %605)
  %607 = fadd float %588, %606
  %608 = fadd float %602, %607
  %609 = fadd float %596, %608
  %610 = fdiv float %588, %609, !fpmath !10
  %611 = fdiv float %606, %609, !fpmath !10
  %612 = fmul float %611, 0xC0C28EBBA0000000
  %613 = tail call float @llvm.fmuladd.f32(float %610, float 5.000000e+03, float %612)
  %614 = fpext float %613 to double
  %615 = fdiv float %596, %609, !fpmath !10
  %616 = fneg float %581
  %617 = fmul float %611, %616
  %618 = tail call float @llvm.fmuladd.f32(float %615, float %565, float %617)
  %619 = fpext float %618 to double
  %620 = fdiv float %602, %609, !fpmath !10
  %621 = fmul float %570, %620
  %622 = fpext float %621 to double
  %623 = tail call double @llvm.fmuladd.f64(double %619, double 3.000000e+00, double %622)
  %624 = fmul float %592, %610
  %625 = fpext float %624 to double
  %626 = fsub double %623, %625
  %627 = fptrunc double %626 to float
  %628 = fpext float %627 to double
  %629 = tail call double @llvm.fmuladd.f64(double %614, double 2.000000e+00, double %628)
  %630 = fdiv float 0x3F23A92A40000000, %28, !fpmath !10
  %631 = fmul float %630, %630
  %632 = fpext float %631 to double
  %633 = fadd double %632, 1.000000e+00
  %634 = fdiv double 1.000000e+00, %633
  %635 = fptrunc double %634 to float
  %636 = fmul float %535, %635
  %637 = fpext float %636 to double
  %638 = fmul double %629, %637
  %639 = fptrunc double %638 to float
  %640 = fpext float %639 to double
  %641 = fmul double %640, 2.000000e-01
  %642 = fptrunc double %641 to float
  %643 = fmul float %515, %8
  %644 = fdiv float %8, 0x405607AE20000000, !fpmath !10
  %645 = fpext float %644 to double
  %646 = tail call double @llvm.fmuladd.f64(double %645, double %548, double 1.000000e+00)
  %647 = fptrunc double %646 to float
  %648 = fmul float %647, 0x405607AE20000000
  %649 = fdiv float %643, %648, !fpmath !10
  %650 = fmul float %8, %8
  %651 = fdiv float %8, 1.500000e+01, !fpmath !10
  %652 = fpext float %651 to double
  %653 = fdiv float %8, 5.000000e+00, !fpmath !10
  %654 = fpext float %653 to double
  %655 = fadd double %654, 1.000000e+00
  %656 = tail call double @llvm.fmuladd.f64(double %652, double %655, double 1.000000e+00)
  %657 = fptrunc double %656 to float
  %658 = fmul float %657, 1.500000e+01
  %659 = fmul float %658, 5.000000e+00
  %660 = fdiv float %650, %659, !fpmath !10
  %661 = fmul float %649, %660
  %662 = fmul float %661, 6.000000e+04
  %663 = fmul float %662, 0x40C28EBBA0000000
  %664 = fdiv float 1.000000e+00, %647
  %665 = fmul float %664, 6.000000e+04
  %666 = fdiv float %665, %512, !fpmath !10
  %667 = fmul float %649, 5.000000e+03
  %668 = fadd float %666, %667
  %669 = fadd float %668, 5.000000e+03
  %670 = fdiv float 1.000000e+00, %657
  %671 = fmul float %517, %670
  %672 = fmul float %671, 1.500000e+06
  %673 = fmul float %668, %672
  %674 = fmul float %582, %673
  %675 = tail call float @llvm.fmuladd.f32(float %663, float %669, float %674)
  %676 = tail call float @llvm.fmuladd.f32(float %589, float %669, float %595)
  %677 = fadd float %672, %662
  %678 = fmul float %581, %672
  %679 = fmul float %599, %678
  %680 = tail call float @llvm.fmuladd.f32(float %597, float %677, float %679)
  %681 = fmul float %668, 5.000000e+03
  %682 = fmul float %662, 5.000000e+03
  %683 = fmul float %599, %682
  %684 = tail call float @llvm.fmuladd.f32(float %681, float %677, float %683)
  %685 = fadd float %675, %684
  %686 = fadd float %680, %685
  %687 = fadd float %676, %686
  %688 = fdiv float %675, %687, !fpmath !10
  %689 = fdiv float %684, %687, !fpmath !10
  %690 = fmul float %689, 0xC0C28EBBA0000000
  %691 = tail call float @llvm.fmuladd.f32(float %688, float 5.000000e+03, float %690)
  %692 = fpext float %691 to double
  %693 = fdiv float %676, %687, !fpmath !10
  %694 = fmul float %689, %616
  %695 = tail call float @llvm.fmuladd.f32(float %693, float %662, float %694)
  %696 = fpext float %695 to double
  %697 = fdiv float %680, %687, !fpmath !10
  %698 = fmul float %667, %697
  %699 = fpext float %698 to double
  %700 = tail call double @llvm.fmuladd.f64(double %696, double 3.000000e+00, double %699)
  %701 = fmul float %592, %688
  %702 = fpext float %701 to double
  %703 = fsub double %700, %702
  %704 = fptrunc double %703 to float
  %705 = fpext float %704 to double
  %706 = tail call double @llvm.fmuladd.f64(double %692, double 2.000000e+00, double %705)
  %707 = fdiv float 0x3F23A92A40000000, %517, !fpmath !10
  %708 = fmul float %707, %707
  %709 = fpext float %708 to double
  %710 = fadd double %709, 1.000000e+00
  %711 = fdiv double 1.000000e+00, %710
  %712 = fptrunc double %711 to float
  %713 = fmul float %535, %712
  %714 = fpext float %713 to double
  %715 = fmul double %706, %714
  %716 = fptrunc double %715 to float
  %717 = fpext float %716 to double
  %718 = fmul double %717, 8.000000e-01
  %719 = fptrunc double %718 to float
  %720 = add i32 %2, -1
  %721 = icmp ult i32 %720, 2
  %722 = select i1 %721, float 0x3FB47AE140000000, float 0x3F947AE140000000
  %723 = insertelement <2 x double> poison, double %523, i64 0
  %724 = insertelement <2 x double> %723, double %526, i64 1
  %725 = fmul <2 x double> %724, <double 9.073000e+00, double 2.778000e+01>
  %726 = fdiv float %8, 2.240000e+02, !fpmath !10
  %727 = fpext float %726 to double
  %728 = fadd double %727, 0x3FF96C3FF0000000
  %729 = fdiv float %12, 2.920000e+02, !fpmath !10
  %730 = fpext float %729 to double
  %731 = fadd double %728, %730
  %732 = fdiv double 0x4010CCCCC0000000, %731
  %733 = fptrunc double %732 to float
  %734 = fmul float %733, 7.930000e+04
  %735 = fmul float %734, 0x3E7AD7F2A0000000
  %736 = fpext float %735 to double
  %737 = fdiv double %736, 0x418B854888000000
  %738 = fptrunc double %737 to float
  %739 = fptrunc <2 x double> %725 to <2 x float>
  %740 = insertelement <2 x float> <float poison, float 1.400000e+02>, float %8, i64 0
  %741 = fdiv <2 x float> %740, %739, !fpmath !10
  %742 = fmul <2 x float> %741, %741
  %743 = fmul float %12, 2.000000e+00
  %744 = fmul <2 x float> %741, %742
  %745 = fmul float %743, 4.000000e+01
  %746 = fmul <2 x float> %744, <float 9.495000e+02, float 0x4043B33340000000>
  %747 = fpext <2 x float> %741 to <2 x double>
  %748 = fadd <2 x double> %747, splat (double 1.000000e+00)
  %749 = fmul <2 x double> %748, %748
  %750 = fpext float %743 to double
  %751 = fadd double %750, 1.000000e+00
  %752 = fmul double %751, %751
  %753 = insertelement <2 x double> <double poison, double 0x407026AF059BD040>, double %752, i64 0
  %754 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %749, <2 x double> %748, <2 x double> %753)
  %755 = fadd <2 x double> %754, splat (double -1.000000e+00)
  %756 = fptrunc <2 x double> %755 to <2 x float>
  %757 = fmul float %743, %745
  %758 = fdiv <2 x float> %746, %756, !fpmath !10
  %759 = extractelement <2 x float> %756, i64 0
  %760 = fdiv float %757, %759, !fpmath !10
  %761 = extractelement <2 x float> %756, i64 1
  %762 = fdiv float 4.315800e+05, %761, !fpmath !10
  %763 = insertelement <2 x float> poison, float %738, i64 0
  %764 = shufflevector <2 x float> %763, <2 x float> poison, <2 x i32> zeroinitializer
  %765 = fmul <2 x float> %758, %764
  %766 = extractelement <2 x float> %758, i64 1
  %767 = extractelement <2 x float> %758, i64 0
  %768 = fmul float %760, %766
  %769 = insertelement <2 x float> poison, float %762, i64 0
  %770 = shufflevector <2 x float> %769, <2 x float> poison, <2 x i32> zeroinitializer
  %771 = fmul <2 x float> %770, <float 0x40857999A0000000, float 6.390000e+02>
  %772 = insertelement <2 x float> %758, float %760, i64 0
  %773 = fmul <2 x float> %772, <float 0x40857999A0000000, float 6.390000e+02>
  %774 = fmul float %760, %738
  %775 = fmul float %767, 6.390000e+02
  %776 = shufflevector <2 x float> %758, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %777 = insertelement <2 x float> %776, float %768, i64 0
  %778 = insertelement <2 x float> %771, float %738, i64 0
  %779 = fmul <2 x float> %777, %778
  %780 = insertelement <2 x float> poison, float %775, i64 0
  %781 = insertelement <2 x float> %780, float %774, i64 1
  %782 = insertelement <2 x float> %758, float 0x40857999A0000000, i64 0
  %783 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %781, <2 x float> %782, <2 x float> %779)
  %784 = insertelement <2 x float> %776, float %738, i64 0
  %785 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %773, <2 x float> %784, <2 x float> %783)
  %786 = shufflevector <2 x float> %758, <2 x float> <float 0x40857999A0000000, float poison>, <2 x i32> <i32 2, i32 0>
  %787 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %765, <2 x float> %786, <2 x float> %785)
  %788 = insertelement <2 x float> %758, float %762, i64 0
  %789 = fmul <2 x float> %788, splat (float 0x40223D70A0000000)
  %790 = shufflevector <2 x float> %758, <2 x float> %765, <2 x i32> <i32 0, i32 3>
  %791 = fmul <2 x float> %790, <float 0x40857999A0000000, float 1.000000e+00>
  %792 = insertelement <2 x float> <float poison, float 0x40223D70A0000000>, float %762, i64 0
  %793 = fmul <2 x float> %791, %792
  %794 = shufflevector <2 x float> %789, <2 x float> %771, <2 x i32> <i32 1, i32 2>
  %795 = insertelement <2 x float> <float poison, float 6.390000e+02>, float %760, i64 0
  %796 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %794, <2 x float> %795, <2 x float> %793)
  %797 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %789, <2 x float> %795, <2 x float> %796)
  %798 = insertelement <2 x float> %795, float 0x40223D70A0000000, i64 1
  %799 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %771, <2 x float> %798, <2 x float> %797)
  %800 = fadd <2 x float> %799, %787
  %801 = shufflevector <2 x float> %799, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %802 = fadd <2 x float> %801, %800
  %803 = shufflevector <2 x float> %787, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %804 = shufflevector <2 x float> %802, <2 x float> poison, <2 x i32> zeroinitializer
  %805 = fadd <2 x float> %803, %804
  %806 = fdiv <2 x float> %787, %805, !fpmath !10
  %807 = fdiv <2 x float> %799, %805, !fpmath !10
  %808 = shufflevector <2 x float> %763, <2 x float> %758, <2 x i32> <i32 0, i32 2>
  %809 = fneg <2 x float> %808
  %810 = fmul <2 x float> %807, %809
  %811 = insertelement <2 x float> %770, float 0x40223D70A0000000, i64 1
  %812 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %806, <2 x float> %811, <2 x float> %810)
  %813 = fmul <2 x float> %812, <float 3.000000e+00, float 2.000000e+00>
  %814 = fadd double %508, 1.000000e+00
  %815 = fdiv double 1.000000e+00, %814
  %816 = fptrunc double %815 to float
  %817 = insertelement <2 x float> poison, float %42, i64 0
  %818 = insertelement <2 x float> %817, float %45, i64 1
  %819 = fmul <2 x float> %818, splat (float 0x403AB65BE0000000)
  %820 = fpext float %519 to double
  %821 = fadd double %820, 1.000000e+00
  %822 = fdiv double 6.000000e-01, %821
  %823 = fadd double %822, 1.000000e+00
  %824 = fptrunc double %823 to float
  %825 = insertelement <2 x float> poison, float %520, i64 0
  %826 = insertelement <2 x float> %825, float %824, i64 1
  %827 = fmul <2 x float> %826, %543
  %828 = insertelement <2 x float> poison, float %816, i64 0
  %829 = insertelement <2 x float> %828, float %497, i64 1
  %830 = fmul <2 x float> %827, %829
  %831 = insertelement <2 x float> poison, float %509, i64 0
  %832 = insertelement <2 x float> %831, float %498, i64 1
  %833 = fmul <2 x float> %832, %830
  %834 = insertelement <2 x float> poison, float %0, i64 0
  %835 = shufflevector <2 x float> %834, <2 x float> poison, <2 x i32> zeroinitializer
  %836 = fsub <2 x float> %835, %819
  %837 = fmul <2 x float> %836, %833
  %838 = fmul double %450, %536
  %839 = fadd double %440, 1.000000e+00
  %840 = fdiv double 1.000000e+00, %839
  %841 = fptrunc double %840 to float
  %842 = fsub float 1.000000e+00, %841
  %843 = fmul float %444, %842
  %844 = tail call float @llvm.fmuladd.f32(float %841, float %442, float %843)
  %845 = fpext float %844 to double
  %846 = fmul double %838, %845
  %847 = fadd double %447, 1.000000e+00
  %848 = fdiv double 1.000000e+00, %847
  %849 = fadd double %449, 1.000000e+00
  %850 = fdiv double %848, %849
  %851 = fptrunc double %850 to float
  %852 = fpext float %851 to double
  %853 = fmul double %846, %852
  %854 = extractelement <2 x float> %836, i64 0
  %855 = fpext float %854 to double
  %856 = fmul double %853, %855
  %857 = fptrunc double %856 to float
  %858 = fdiv float 0x3FC3333340000000, %34, !fpmath !10
  %859 = fmul float %335, 0x3FD9999980000000
  %860 = tail call float @llvm.fmuladd.f32(float %333, float 0x3FE3333340000000, float %859)
  %861 = fpext float %860 to double
  %862 = fpext float %404 to double
  %863 = fsub double 1.000000e+00, %862
  %864 = fadd double %363, 1.000000e+00
  %865 = fdiv double 6.000000e-01, %864
  %866 = fadd double %865, 3.000000e-01
  %867 = fptrunc double %866 to float
  %868 = fsub float 1.000000e+00, %867
  %869 = fmul float %367, %868
  %870 = tail call float @llvm.fmuladd.f32(float %867, float %365, float %869)
  %871 = fmul float %870, %405
  %872 = fmul float %404, %871
  %873 = fpext float %872 to double
  %874 = tail call double @llvm.fmuladd.f64(double %861, double %863, double %873)
  %875 = fpext float %403 to double
  %876 = fmul double %874, %875
  %877 = fptrunc double %876 to float
  %878 = fpext float %877 to double
  %879 = fmul double %537, 1.100000e+00
  %880 = fptrunc double %879 to float
  %881 = fmul float %376, 0x3FD9999980000000
  %882 = tail call float @llvm.fmuladd.f32(float %375, float 0x3FE3333340000000, float %881)
  %883 = fpext float %882 to double
  %884 = fmul float %868, %383
  %885 = tail call float @llvm.fmuladd.f32(float %867, float %382, float %884)
  %886 = fmul float %885, %405
  %887 = fmul float %404, %886
  %888 = fpext float %887 to double
  %889 = tail call double @llvm.fmuladd.f64(double %883, double %863, double %888)
  %890 = fmul double %889, %875
  %891 = fptrunc double %890 to float
  %892 = fmul float %50, 9.648500e+04
  %893 = fdiv float %892, 2.577340e+06, !fpmath !10
  %894 = fpext float %893 to double
  %895 = fmul double %894, 4.000000e+00
  %896 = fptrunc double %401 to float
  %897 = fmul float %28, %896
  %898 = insertelement <2 x float> poison, float %897, i64 0
  %899 = insertelement <2 x float> %898, float %896, i64 1
  %900 = fpext <2 x float> %899 to <2 x double>
  %901 = fadd <2 x double> %900, <double 0xBFE3A43FDD0E5605, double -1.000000e+00>
  %902 = extractelement <2 x double> %901, i64 0
  %903 = fmul double %895, %902
  %904 = extractelement <2 x double> %901, i64 1
  %905 = fdiv double %903, %904
  %906 = fptrunc double %905 to float
  %907 = fmul float %517, %896
  %908 = fpext float %907 to double
  %909 = fadd double %908, 0xBFE3A43FDD0E5605
  %910 = fmul double %895, %909
  %911 = fdiv double %910, %904
  %912 = fptrunc double %911 to float
  %913 = fpext float %912 to double
  %914 = fpext float %12 to double
  %915 = fmul double %914, 7.500000e-01
  %916 = fpext float %516 to double
  %917 = tail call double @llvm.fmuladd.f64(double %915, double %916, double 0xC010333338000000)
  %918 = fmul double %917, %894
  %919 = fadd double %916, -1.000000e+00
  %920 = fdiv double %918, %919
  %921 = fptrunc double %920 to float
  %922 = fpext float %921 to double
  %923 = fpext float %14 to double
  %924 = fmul double %923, 7.500000e-01
  %925 = tail call double @llvm.fmuladd.f64(double %924, double %916, double 0xC010333338000000)
  %926 = fmul double %925, %894
  %927 = fdiv double %926, %919
  %928 = fptrunc double %927 to float
  %929 = fpext float %928 to double
  %930 = fpext float %8 to double
  %931 = fmul double %930, 7.500000e-01
  %932 = tail call double @llvm.fmuladd.f64(double %931, double %916, double -1.050000e+02)
  %933 = fmul double %932, %894
  %934 = fdiv double %933, %919
  %935 = fptrunc double %934 to float
  %936 = fpext float %935 to double
  %937 = fpext float %10 to double
  %938 = fmul double %937, 7.500000e-01
  %939 = tail call double @llvm.fmuladd.f64(double %938, double %916, double -1.050000e+02)
  %940 = fmul double %939, %894
  %941 = fdiv double %940, %919
  %942 = fptrunc double %941 to float
  %943 = fpext float %942 to double
  %944 = fpext float %281 to double
  %945 = fadd double %239, 1.000000e+00
  %946 = fdiv double 1.000000e+00, %945
  %947 = fptrunc double %946 to float
  %948 = fsub float 1.000000e+00, %947
  %949 = fmul float %948, %275
  %950 = tail call float @llvm.fmuladd.f32(float %947, float %273, float %949)
  %951 = fpext float %950 to double
  %952 = fmul float %948, %279
  %953 = tail call float @llvm.fmuladd.f32(float %947, float %277, float %952)
  %954 = fmul float %722, %854
  %955 = fpext float %954 to double
  %956 = shufflevector <2 x float> %170, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %957 = insertelement <2 x float> %956, float %139, i64 0
  %958 = fpext <2 x float> %957 to <2 x double>
  %959 = fmul float %40, 0x403AB65BE0000000
  %960 = fsub float %0, %959
  %961 = fmul float %133, 0x3F847AE000000000
  %962 = tail call float @llvm.fmuladd.f32(float %131, float 0x3FEFAE1480000000, float %961)
  %963 = fpext float %962 to double
  %964 = fmul float %135, 0x3F847AE000000000
  %965 = tail call float @llvm.fmuladd.f32(float %131, float 0x3FEFAE1480000000, float %964)
  %966 = fmul float %960, 7.500000e+01
  %967 = fmul float %137, %137
  %968 = insertelement <2 x float> %170, float %155, i64 0
  %969 = insertelement <2 x float> poison, float %137, i64 0
  %970 = insertelement <2 x float> %969, float %541, i64 1
  %971 = insertelement <2 x float> poison, float %967, i64 0
  %972 = insertelement <2 x float> %971, float %960, i64 1
  %973 = fmul <2 x float> %970, %972
  %974 = insertelement <2 x float> poison, float %966, i64 0
  %975 = insertelement <2 x float> %974, float %169, i64 1
  %976 = fmul <2 x float> %975, %973
  %977 = fpext <2 x float> %976 to <2 x double>
  %978 = fmul float %46, 0x403AB65BE0000000
  %979 = shufflevector <2 x float> %813, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %980 = fadd <2 x float> %813, %979
  %981 = extractelement <2 x float> %980, i64 0
  %982 = fmul float %981, %542
  %983 = fadd double %52, -1.448000e+01
  %984 = fdiv double %983, -1.834000e+01
  %985 = tail call double @_Z3expd(double noundef %984) #16
  %986 = fadd double %985, 1.000000e+00
  %987 = fdiv double 1.000000e+00, %986
  %988 = fptrunc double %987 to float
  %989 = fpext float %988 to double
  %990 = fmul double %540, %989
  %991 = fmul double %990, %855
  %992 = fptrunc double %991 to float
  %993 = fmul double %894, 3.750000e-10
  %994 = tail call float @llvm.fmuladd.f32(float %8, float %516, float -1.400000e+02)
  %995 = fpext float %994 to double
  %996 = fmul double %993, %995
  %997 = fdiv double %996, %919
  %998 = fptrunc double %997 to float
  %999 = fmul double %894, 0x3E7AD7F29ABCAF48
  %1000 = fmul double %999, %909
  %1001 = fdiv double %1000, %904
  %1002 = fptrunc double %1001 to float
  %1003 = fdiv float 0x3FB99999A0000000, %28, !fpmath !10
  %1004 = fpext float %1003 to double
  %1005 = fadd double %1004, 1.000000e+00
  %1006 = fdiv double 0x3FAD1CC100000000, %1005
  %1007 = fsub float %0, %978
  %1008 = fpext float %1007 to double
  %1009 = fdiv float 0x3FB99999A0000000, %517, !fpmath !10
  %1010 = fpext float %1009 to double
  %1011 = fadd double %1010, 1.000000e+00
  %1012 = fdiv double 0x3FCD1CC100000000, %1011
  %1013 = fmul double %1012, %1008
  %1014 = tail call double @llvm.fmuladd.f64(double %1006, double %1008, double %1013)
  %1015 = fptrunc double %1014 to float
  %1016 = fmul double %1008, 1.980000e-03
  %1017 = fptrunc double %1016 to float
  %1018 = fsub float %10, %8
  %1019 = fmul float %1018, 5.000000e-01
  %1020 = fsub float %14, %12
  %1021 = fmul float %1020, 5.000000e-01
  %1022 = fsub float %28, %517
  %1023 = fpext float %1022 to double
  %1024 = fdiv double %1023, 2.000000e-01
  %1025 = fptrunc double %1024 to float
  %1026 = fdiv float 1.500000e+00, %20, !fpmath !10
  %1027 = tail call float @_Z3powff(float noundef %1026, float noundef 8.000000e+00) #15
  %1028 = select i1 %22, float 0x3FFB333340000000, float 1.000000e+00
  %1029 = fmul float %1028, 2.375000e+00
  %1030 = fpext float %1027 to double
  %1031 = fadd double %1030, 1.000000e+00
  %1032 = getelementptr inbounds nuw i8, ptr %4, i64 148
  %1033 = fpext float %20 to double
  %1034 = fdiv double 1.230000e-02, %1033
  %1035 = fadd double %1034, 1.000000e+00
  %1036 = getelementptr inbounds nuw i8, ptr %5, i64 148
  %1037 = fmul float %1028, 2.968750e+00
  %1038 = getelementptr inbounds nuw i8, ptr %4, i64 152
  %1039 = insertelement <2 x double> poison, double %1035, i64 0
  %1040 = shufflevector <2 x double> %1039, <2 x double> poison, <2 x i32> zeroinitializer
  %1041 = fdiv <2 x double> <double 5.937500e+00, double 4.750000e+00>, %1040
  %1042 = fptrunc <2 x double> %1041 to <2 x float>
  %1043 = fpext <2 x float> %1042 to <2 x double>
  %1044 = fcmp olt <2 x double> %1043, splat (double 1.000000e-03)
  %1045 = extractelement <2 x i1> %1044, i64 1
  %1046 = extractelement <2 x float> %1042, i64 1
  %1047 = select i1 %1045, float 0x3F50624DE0000000, float %1046
  %1048 = extractelement <2 x i1> %1044, i64 0
  %1049 = extractelement <2 x float> %1042, i64 0
  %1050 = select i1 %1048, float 0x3F50624DE0000000, float %1049
  %1051 = getelementptr inbounds nuw i8, ptr %5, i64 152
  %1052 = getelementptr inbounds nuw i8, ptr %1, i64 148
  %1053 = getelementptr inbounds nuw i8, ptr %1, i64 152
  %1054 = fmul double %539, 4.375000e-03
  %1055 = fmul double %539, 2.750000e+00
  %1056 = fmul double %1055, 4.375000e-03
  %1057 = fpext float %517 to double
  %1058 = shufflevector <2 x float> %16, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %1059 = insertelement <2 x float> %1058, float %858, i64 0
  %1060 = fpext <2 x float> %1059 to <2 x double>
  %1061 = fadd <2 x double> %1060, <double -0.000000e+00, double 9.200000e-04>
  %1062 = fmul double %1056, %1057
  %1063 = fadd <2 x double> %1061, <double 1.000000e+00, double -1.700000e-04>
  %1064 = insertelement <2 x double> <double 1.000000e+00, double poison>, double %1062, i64 1
  %1065 = fdiv <2 x double> %1064, %1063
  %1066 = fptrunc <2 x double> %1065 to <2 x float>
  %1067 = extractelement <2 x float> %1066, i64 0
  %1068 = fpext float %1067 to double
  %1069 = fsub double 1.000000e+00, %1068
  %1070 = fmul double %1069, %537
  %1071 = fmul float %1067, %880
  %1072 = fmul float %1071, %891
  %1073 = fpext float %1072 to double
  %1074 = tail call double @llvm.fmuladd.f64(double %1070, double %878, double %1073)
  %1075 = fptrunc double %1074 to float
  %1076 = fmul float %1075, 0x3FE99999A0000000
  %1077 = fmul float %1076, %906
  %1078 = fpext float %1075 to double
  %1079 = fmul double %1078, 0x3FC9999980000000
  %1080 = fmul double %1079, %913
  %1081 = fptrunc double %1080 to float
  %1082 = fadd float %1077, %1081
  %1083 = fmul double %1078, 0x3F12BCF0F9E02B4F
  %1084 = fmul double %1083, %922
  %1085 = fptrunc double %1084 to float
  %1086 = fmul double %1078, 0x3F32BCF1114C589E
  %1087 = fmul double %1086, %929
  %1088 = fptrunc double %1087 to float
  %1089 = fmul double %1078, 0x3F30624DC28F5C29
  %1090 = fmul double %1089, %936
  %1091 = fptrunc double %1090 to float
  %1092 = fmul double %1078, 0x3F50624DD70A3D71
  %1093 = fmul double %1092, %943
  %1094 = fptrunc double %1093 to float
  %1095 = fmul double %1069, %944
  %1096 = fmul float %283, %1067
  %1097 = fmul float %953, %1096
  %1098 = fpext float %1097 to double
  %1099 = tail call double @llvm.fmuladd.f64(double %1095, double %951, double %1098)
  %1100 = fmul double %1099, %955
  %1101 = fptrunc double %1100 to float
  %1102 = fmul double %1069, %963
  %1103 = fmul float %965, %1067
  %1104 = insertelement <2 x float> poison, float %1103, i64 0
  %1105 = shufflevector <2 x float> %1104, <2 x float> %1066, <2 x i32> <i32 0, i32 2>
  %1106 = fmul <2 x float> %1105, %968
  %1107 = fpext <2 x float> %1106 to <2 x double>
  %1108 = insertelement <2 x double> poison, double %1102, i64 0
  %1109 = insertelement <2 x double> %1108, double %1069, i64 1
  %1110 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %1109, <2 x double> %958, <2 x double> %1107)
  %1111 = fmul <2 x double> %1110, %977
  %1112 = fptrunc <2 x double> %1111 to <2 x float>
  %1113 = fmul double %1057, 5.000000e-04
  %1114 = fadd double %1057, 5.000000e-04
  %1115 = fdiv double %1113, %1114
  %1116 = fptrunc double %1115 to float
  %1117 = fneg float %1077
  %1118 = fmul float %1029, %1117
  %1119 = fpext float %1118 to double
  %1120 = fdiv double %1119, %1031
  %1121 = fptrunc double %1120 to float
  store float %1121, ptr %1032, align 4, !tbaa !8
  store float %1047, ptr %1036, align 4, !tbaa !8
  %1122 = fmul float %1037, %1117
  %1123 = fpext float %1122 to double
  %1124 = fdiv double %1123, %1031
  %1125 = fptrunc double %1124 to float
  store float %1125, ptr %1038, align 4, !tbaa !8
  store float %1050, ptr %1051, align 4, !tbaa !8
  %1126 = load float, ptr %1052, align 4, !tbaa !8
  %1127 = fpext float %1126 to double
  %1128 = load float, ptr %1053, align 4, !tbaa !8
  %1129 = fmul float %1128, %1067
  %1130 = fpext float %1129 to double
  %1131 = tail call double @llvm.fmuladd.f64(double %1069, double %1127, double %1130)
  %1132 = fptrunc double %1131 to float
  %1133 = fmul double %1054, %1057
  %1134 = extractelement <2 x double> %1061, i64 1
  %1135 = fdiv double %1133, %1134
  %1136 = fptrunc double %1135 to float
  %1137 = fpext float %18 to double
  %1138 = fmul double %1137, 3.937500e-03
  %1139 = fdiv double %1138, 1.500000e+01
  %1140 = fptrunc double %1139 to float
  %1141 = fpext float %1136 to double
  %1142 = shufflevector <2 x float> %1066, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %1143 = fmul <2 x float> %1142, %1066
  %1144 = extractelement <2 x float> %1143, i64 0
  %1145 = fpext float %1144 to double
  %1146 = tail call double @llvm.fmuladd.f64(double %1069, double %1141, double %1145)
  %1147 = fpext float %1140 to double
  %1148 = fsub double %1146, %1147
  %1149 = fptrunc double %1148 to float
  %1150 = fsub float %18, %20
  %1151 = fdiv float %1150, 1.000000e+02
  %1152 = shufflevector <2 x float> %1112, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %1153 = fadd <2 x float> %1152, %1112
  %1154 = extractelement <2 x float> %1153, i64 0
  %1155 = fpext float %1154 to double
  %1156 = fpext float %719 to double
  %1157 = tail call double @llvm.fmuladd.f64(double %1156, double 3.000000e+00, double %1155)
  %1158 = fpext float %1091 to double
  %1159 = fadd double %1157, %1158
  %1160 = fpext float %982 to double
  %1161 = tail call double @llvm.fmuladd.f64(double %1160, double 3.000000e+00, double %1159)
  %1162 = fpext float %998 to double
  %1163 = fadd double %1161, %1162
  %1164 = fmul double %1163, 0x3F2419D3C0000000
  %1165 = fdiv double %1164, 0x4003F13600000000
  %1166 = fmul float %1019, 0x3EA97F51C0000000
  %1167 = fdiv float %1166, 0x3EFB1746E0000000, !fpmath !10
  %1168 = fpext float %1167 to double
  %1169 = fpext float %1094 to double
  %1170 = fpext float %642 to double
  %1171 = tail call double @llvm.fmuladd.f64(double %1170, double 3.000000e+00, double %1169)
  %1172 = fmul double %1171, 0xBF2419D3C0000000
  %1173 = fdiv double %1172, 0x3FB2C4E780000000
  %1174 = fpext float %1019 to double
  %1175 = insertelement <2 x double> poison, double %1168, i64 0
  %1176 = insertelement <2 x double> %1175, double %1173, i64 1
  %1177 = insertelement <2 x double> poison, double %1165, i64 0
  %1178 = insertelement <2 x double> %1177, double %1174, i64 1
  %1179 = fsub <2 x double> %1176, %1178
  %1180 = fptrunc <2 x double> %1179 to <2 x float>
  store <2 x float> %1180, ptr %6, align 4, !tbaa !8
  %1181 = fadd float %1101, %857
  %1182 = extractelement <2 x float> %837, i64 1
  %1183 = fadd float %1182, %1181
  %1184 = extractelement <2 x float> %837, i64 0
  %1185 = fadd float %1184, %1183
  %1186 = fadd float %1185, %992
  %1187 = fadd float %1186, %1085
  %1188 = fadd float %3, %1187
  %1189 = fpext float %1188 to double
  %1190 = tail call double @llvm.fmuladd.f64(double %1160, double -2.000000e+00, double %1189)
  %1191 = fmul double %1190, 0x3F2419D3C0000000
  %1192 = fdiv double %1191, 0x4003F13600000000
  %1193 = fmul float %1021, 0x3EA97F51C0000000
  %1194 = fdiv float %1193, 0x3EFB1746E0000000, !fpmath !10
  %1195 = fpext float %1194 to double
  %1196 = fsub double %1195, %1192
  %1197 = fptrunc double %1196 to float
  %1198 = getelementptr inbounds nuw i8, ptr %6, i64 8
  store float %1197, ptr %1198, align 4, !tbaa !8
  %1199 = fmul float %1088, 0xBF2419D3C0000000
  %1200 = fdiv float %1199, 0x3FB2C4E780000000, !fpmath !10
  %1201 = fsub float %1200, %1021
  %1202 = getelementptr inbounds nuw i8, ptr %6, i64 12
  store float %1201, ptr %1202, align 4, !tbaa !8
  %1203 = fadd <2 x float> %16, <float 0x3F637F38C0000000, float 0x3F4C8216C0000000>
  %1204 = fadd <2 x float> %16, <float 0x3F40624DE0000000, float 0x3F81D14E40000000>
  %1205 = fadd float %1116, %1081
  %1206 = fadd float %1205, %1002
  %1207 = fpext float %1206 to double
  %1208 = tail call double @llvm.fmuladd.f64(double %1156, double -2.000000e+00, double %1207)
  %1209 = fmul double %1208, 0xBF2419D3C0000000
  %1210 = fdiv double %1209, 0x4013F135F5B33000
  %1211 = fmul float %1149, 0x3EC197D9C0000000
  %1212 = fdiv float %1211, 0x3EFB1746E0000000, !fpmath !10
  %1213 = fpext float %1212 to double
  %1214 = fmul float %1025, 0x3EA97F51C0000000
  %1215 = fdiv float %1214, 0x3EFB1746E0000000, !fpmath !10
  %1216 = getelementptr inbounds nuw i8, ptr %6, i64 16
  %1217 = fpext float %1077 to double
  %1218 = tail call double @llvm.fmuladd.f64(double %1170, double -2.000000e+00, double %1217)
  %1219 = fmul double %1218, 0x3F2419D3C0000000
  %1220 = fdiv double %1219, 0x3FC2C4E77B106000
  %1221 = fmul float %1132, 0x3E887A3A00000000
  %1222 = fdiv float %1221, 0x3EA97F51C0000000, !fpmath !10
  %1223 = fpext float %1222 to double
  %1224 = fmul <2 x float> %1203, %1203
  %1225 = insertelement <2 x float> <float poison, float 0x3F057029A0000000>, float %538, i64 0
  %1226 = fdiv <2 x float> %1225, %1224, !fpmath !10
  %1227 = fpext <2 x float> %1226 to <2 x double>
  %1228 = fadd <2 x double> %1227, splat (double 1.000000e+00)
  %1229 = fmul <2 x float> %1204, %1204
  %1230 = fdiv <2 x float> <float 0x3F02599EE0000000, float 0x3F8406E840000000>, %1229, !fpmath !10
  %1231 = fpext <2 x float> %1230 to <2 x double>
  %1232 = fadd <2 x double> %1228, %1231
  %1233 = fdiv <2 x double> splat (double 1.000000e+00), %1232
  %1234 = fptrunc <2 x double> %1233 to <2 x float>
  %1235 = fpext <2 x float> %1234 to <2 x double>
  %1236 = insertelement <2 x double> poison, double %1210, i64 0
  %1237 = insertelement <2 x double> %1236, double %1223, i64 1
  %1238 = insertelement <2 x double> poison, double %1213, i64 0
  %1239 = insertelement <2 x double> %1238, double %1220, i64 1
  %1240 = fsub <2 x double> %1237, %1239
  %1241 = insertelement <2 x float> poison, float %1215, i64 0
  %1242 = insertelement <2 x float> %1241, float %1025, i64 1
  %1243 = fpext <2 x float> %1242 to <2 x double>
  %1244 = fadd <2 x double> %1240, %1243
  %1245 = fsub <2 x double> %1240, %1243
  %1246 = shufflevector <2 x double> %1244, <2 x double> %1245, <2 x i32> <i32 0, i32 3>
  %1247 = fmul <2 x double> %1246, %1235
  %1248 = fptrunc <2 x double> %1247 to <2 x float>
  store <2 x float> %1248, ptr %1216, align 4, !tbaa !8
  %1249 = fmul float %1151, 0x3E887A3A00000000
  %1250 = fdiv float %1249, 0x3EC197D9C0000000, !fpmath !10
  %1251 = fsub float %1149, %1250
  %1252 = getelementptr inbounds nuw i8, ptr %6, i64 24
  store float %1251, ptr %1252, align 4, !tbaa !8
  %1253 = fadd float %20, 0x3FE99999A0000000
  %1254 = fmul float %1253, %1253
  %1255 = fdiv float 8.000000e+00, %1254, !fpmath !10
  %1256 = fpext float %1255 to double
  %1257 = fadd double %1256, 1.000000e+00
  %1258 = fdiv double 1.000000e+00, %1257
  %1259 = fptrunc double %1258 to float
  %1260 = fsub float %1151, %1132
  %1261 = fmul float %1260, %1259
  %1262 = getelementptr inbounds nuw i8, ptr %6, i64 28
  store float %1261, ptr %1262, align 4, !tbaa !8
  %1263 = fadd float %1154, %1101
  %1264 = fadd float %1263, %1082
  %1265 = fadd float %1264, %1094
  %1266 = fadd float %1265, %1091
  %1267 = fadd float %1266, %1088
  %1268 = fadd float %1267, %1085
  %1269 = fadd float %1268, %857
  %1270 = fadd float %1182, %1269
  %1271 = fadd float %1184, %1270
  %1272 = fadd float %1271, %719
  %1273 = fadd float %1272, %642
  %1274 = fadd float %982, %1273
  %1275 = fadd float %1274, %998
  %1276 = fadd float %1275, %992
  %1277 = fadd float %1276, %1116
  %1278 = fadd float %1277, %1002
  %1279 = fadd float %1278, %1015
  %1280 = fadd float %1279, %1017
  ret float %1280
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #5

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #6

; Function Attrs: convergent mustprogress nofree nounwind willreturn memory(none)
declare dso_local float @_Z3logf(float noundef) local_unnamed_addr #3

; Function Attrs: convergent nounwind
declare dso_local double @_Z3expd(double noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #6

; Function Attrs: convergent mustprogress nofree nounwind willreturn memory(none)
declare dso_local float @_Z3expf(float noundef) local_unnamed_addr #3

; Function Attrs: convergent nounwind
declare dso_local double @_Z4sqrtd(double noundef) local_unnamed_addr #7

; Function Attrs: convergent mustprogress nofree nounwind willreturn memory(none)
declare dso_local float @_Z3powff(float noundef, float noundef) local_unnamed_addr #3

; Function Attrs: convergent mustprogress nofree nounwind willreturn memory(none)
declare dso_local float @_Z4sqrtf(float noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #5

; Function Attrs: convergent norecurse nounwind uwtable
define dso_local i32 @torord_advance(ptr noundef captures(none) %0, ptr noundef captures(none) %1, i32 noundef %2, float noundef %3, float noundef %4, float noundef %5, float noundef %6, i32 noundef %7, i32 noundef %8) local_unnamed_addr #4 {
  %10 = alloca [40 x float], align 16
  %11 = alloca [40 x float], align 16
  %12 = alloca [40 x float], align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #17
  %13 = load float, ptr %0, align 4, !tbaa !8
  %14 = call float @torord_rates(float noundef %13, ptr noundef %1, i32 noundef %2, float noundef %3, ptr noundef nonnull %10, ptr noundef nonnull %11, ptr noundef nonnull %12) #16
  %15 = fadd float %3, %14
  %16 = fneg float %15
  %17 = tail call float @_Z4fabsf(float noundef %16) #15
  %18 = getelementptr inbounds nuw i8, ptr %12, i64 16
  %19 = load float, ptr %18, align 16, !tbaa !8
  %20 = tail call float @_Z4fabsf(float noundef %19) #15
  %21 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %22 = load float, ptr %21, align 4, !tbaa !8
  %23 = fmul float %6, %22
  %24 = insertelement <2 x float> poison, float %4, i64 0
  %25 = shufflevector <2 x float> %24, <2 x float> poison, <2 x i32> zeroinitializer
  %26 = insertelement <2 x float> poison, float %17, i64 0
  %27 = insertelement <2 x float> %26, float %20, i64 1
  %28 = fmul <2 x float> %25, %27
  %29 = insertelement <2 x float> poison, float %5, i64 0
  %30 = insertelement <2 x float> %29, float %23, i64 1
  %31 = fdiv <2 x float> %28, %30, !fpmath !10
  %32 = extractelement <2 x float> %31, i64 0
  %33 = extractelement <2 x float> %31, i64 1
  %34 = fcmp ogt float %32, %33
  %35 = select i1 %34, float %32, float %33
  %36 = tail call float @_Z4ceilf(float noundef %35) #15
  %37 = fptosi float %36 to i32
  %38 = tail call i32 @llvm.smax.i32(i32 %7, i32 %37)
  %39 = tail call i32 @llvm.smin.i32(i32 %38, i32 %8)
  %40 = sitofp i32 %39 to float
  %41 = fdiv float %4, %40, !fpmath !10
  %42 = icmp sgt i32 %39, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %9
  %44 = fneg float %41
  %45 = load float, ptr %0, align 4, !tbaa !8
  br label %47

46:                                               ; preds = %51, %9
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #17
  ret i32 %39

47:                                               ; preds = %43, %51
  %48 = phi float [ %45, %43 ], [ %54, %51 ]
  %49 = phi i32 [ 0, %43 ], [ %55, %51 ]
  %50 = call float @torord_rates(float noundef %48, ptr noundef nonnull %1, i32 noundef %2, float noundef %3, ptr noundef nonnull %10, ptr noundef nonnull %11, ptr noundef nonnull %12) #16
  br label %57

51:                                               ; preds = %83
  %52 = fadd float %3, %50
  %53 = load float, ptr %0, align 4, !tbaa !8
  %54 = tail call float @llvm.fmuladd.f32(float %44, float %52, float %53)
  store float %54, ptr %0, align 4, !tbaa !8
  %55 = add nuw nsw i32 %49, 1
  %56 = icmp eq i32 %55, %39
  br i1 %56, label %46, label %47

57:                                               ; preds = %47, %83
  %58 = phi i64 [ 0, %47 ], [ %85, %83 ]
  %59 = trunc i64 %58 to i32
  %60 = add i32 %59, -37
  %61 = icmp ult i32 %60, -29
  %62 = icmp eq i64 %58, 29
  %63 = or i1 %62, %61
  %64 = trunc i64 %58 to i32
  %65 = add i32 %64, -39
  %66 = icmp ult i32 %65, -2
  %67 = and i1 %66, %63
  %68 = getelementptr inbounds nuw float, ptr %1, i64 %58
  %69 = load float, ptr %68, align 4, !tbaa !8
  br i1 %67, label %79, label %70

70:                                               ; preds = %57
  %71 = getelementptr inbounds nuw float, ptr %10, i64 %58
  %72 = load float, ptr %71, align 4, !tbaa !8
  %73 = fsub float %69, %72
  %74 = getelementptr inbounds nuw float, ptr %11, i64 %58
  %75 = load float, ptr %74, align 4, !tbaa !8
  %76 = fdiv float %44, %75, !fpmath !10
  %77 = tail call float @_Z3expf(float noundef %76) #15
  %78 = tail call float @llvm.fmuladd.f32(float %73, float %77, float %72)
  br label %83

79:                                               ; preds = %57
  %80 = getelementptr inbounds nuw float, ptr %12, i64 %58
  %81 = load float, ptr %80, align 4, !tbaa !8
  %82 = tail call float @llvm.fmuladd.f32(float %41, float %81, float %69)
  br label %83

83:                                               ; preds = %70, %79
  %84 = phi float [ %78, %70 ], [ %82, %79 ]
  store float %84, ptr %68, align 4, !tbaa !8
  %85 = add nuw nsw i64 %58, 1
  %86 = icmp eq i64 %85, 40
  br i1 %86, label %51, label %57
}

; Function Attrs: convergent mustprogress nofree nounwind willreturn memory(none)
declare dso_local float @_Z4ceilf(float noundef) local_unnamed_addr #3

; Function Attrs: convergent mustprogress nofree norecurse nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local spir_kernel void @diffusion(ptr noundef readonly align 4 captures(none) %0, ptr noundef writeonly align 4 captures(none) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, float noundef %5) local_unnamed_addr #8 !kernel_arg_addr_space !12 !kernel_arg_access_qual !13 !kernel_arg_type !14 !kernel_arg_base_type !15 !kernel_arg_type_qual !16 {
  %7 = tail call i64 @get_global_id(i32 noundef 0) #15
  %8 = trunc i64 %7 to i32
  %9 = mul nsw i32 %3, %2
  %10 = mul nsw i32 %9, %4
  %11 = icmp sgt i32 %10, %8
  br i1 %11, label %12, label %80

12:                                               ; preds = %6
  %13 = srem i32 %8, %2
  %14 = sdiv i32 %8, %2
  %15 = srem i32 %14, %3
  %16 = sdiv i32 %8, %9
  %17 = shl i64 %7, 32
  %18 = ashr exact i64 %17, 32
  %19 = getelementptr inbounds float, ptr %0, i64 %18
  %20 = load float, ptr %19, align 4, !tbaa !8
  %21 = icmp sgt i32 %13, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %12
  %23 = add i64 %17, -4294967296
  %24 = ashr exact i64 %23, 30
  %25 = getelementptr inbounds i8, ptr %0, i64 %24
  %26 = load float, ptr %25, align 4, !tbaa !8
  br label %27

27:                                               ; preds = %22, %12
  %28 = phi float [ %26, %22 ], [ %20, %12 ]
  %29 = add nsw i32 %2, -1
  %30 = icmp slt i32 %13, %29
  br i1 %30, label %31, label %36

31:                                               ; preds = %27
  %32 = add i64 %17, 4294967296
  %33 = ashr exact i64 %32, 30
  %34 = getelementptr inbounds i8, ptr %0, i64 %33
  %35 = load float, ptr %34, align 4, !tbaa !8
  br label %36

36:                                               ; preds = %31, %27
  %37 = phi float [ %35, %31 ], [ %20, %27 ]
  %38 = icmp sgt i32 %15, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %36
  %40 = sub nsw i32 %8, %2
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds float, ptr %0, i64 %41
  %43 = load float, ptr %42, align 4, !tbaa !8
  br label %44

44:                                               ; preds = %39, %36
  %45 = phi float [ %43, %39 ], [ %20, %36 ]
  %46 = add nsw i32 %3, -1
  %47 = icmp slt i32 %15, %46
  br i1 %47, label %48, label %53

48:                                               ; preds = %44
  %49 = add nsw i32 %2, %8
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds float, ptr %0, i64 %50
  %52 = load float, ptr %51, align 4, !tbaa !8
  br label %53

53:                                               ; preds = %48, %44
  %54 = phi float [ %52, %48 ], [ %20, %44 ]
  %55 = icmp sgt i32 %16, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %53
  %57 = sub nsw i32 %8, %9
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds float, ptr %0, i64 %58
  %60 = load float, ptr %59, align 4, !tbaa !8
  br label %61

61:                                               ; preds = %56, %53
  %62 = phi float [ %60, %56 ], [ %20, %53 ]
  %63 = add nsw i32 %4, -1
  %64 = icmp slt i32 %16, %63
  br i1 %64, label %65, label %70

65:                                               ; preds = %61
  %66 = add nsw i32 %9, %8
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds float, ptr %0, i64 %67
  %69 = load float, ptr %68, align 4, !tbaa !8
  br label %70

70:                                               ; preds = %65, %61
  %71 = phi float [ %69, %65 ], [ %20, %61 ]
  %72 = fadd float %28, %37
  %73 = fadd float %72, %45
  %74 = fadd float %73, %54
  %75 = fadd float %74, %62
  %76 = fadd float %75, %71
  %77 = tail call float @llvm.fmuladd.f32(float %20, float -6.000000e+00, float %76)
  %78 = tail call float @llvm.fmuladd.f32(float %5, float %77, float %20)
  %79 = getelementptr inbounds float, ptr %1, i64 %18
  store float %78, ptr %79, align 4, !tbaa !8
  br label %80

80:                                               ; preds = %6, %70
  ret void
}

; Function Attrs: alwaysinline convergent mustprogress nofree norecurse nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @__clang_ocl_kern_imp_diffusion(ptr noundef readonly align 4 captures(none) %0, ptr noundef writeonly align 4 captures(none) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, float noundef %5) local_unnamed_addr #9 !kernel_arg_addr_space !12 !kernel_arg_access_qual !13 !kernel_arg_type !14 !kernel_arg_base_type !15 !kernel_arg_type_qual !16 {
  %7 = tail call i64 @get_global_id(i32 noundef 0) #15
  %8 = trunc i64 %7 to i32
  %9 = mul nsw i32 %3, %2
  %10 = mul nsw i32 %9, %4
  %11 = icmp sgt i32 %10, %8
  br i1 %11, label %12, label %80

12:                                               ; preds = %6
  %13 = srem i32 %8, %2
  %14 = sdiv i32 %8, %2
  %15 = srem i32 %14, %3
  %16 = sdiv i32 %8, %9
  %17 = shl i64 %7, 32
  %18 = ashr exact i64 %17, 32
  %19 = getelementptr inbounds float, ptr %0, i64 %18
  %20 = load float, ptr %19, align 4, !tbaa !8
  %21 = icmp sgt i32 %13, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %12
  %23 = add i64 %17, -4294967296
  %24 = ashr exact i64 %23, 30
  %25 = getelementptr inbounds i8, ptr %0, i64 %24
  %26 = load float, ptr %25, align 4, !tbaa !8
  br label %27

27:                                               ; preds = %12, %22
  %28 = phi float [ %26, %22 ], [ %20, %12 ]
  %29 = add nsw i32 %2, -1
  %30 = icmp slt i32 %13, %29
  br i1 %30, label %31, label %36

31:                                               ; preds = %27
  %32 = add i64 %17, 4294967296
  %33 = ashr exact i64 %32, 30
  %34 = getelementptr inbounds i8, ptr %0, i64 %33
  %35 = load float, ptr %34, align 4, !tbaa !8
  br label %36

36:                                               ; preds = %27, %31
  %37 = phi float [ %35, %31 ], [ %20, %27 ]
  %38 = icmp sgt i32 %15, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %36
  %40 = sub nsw i32 %8, %2
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds float, ptr %0, i64 %41
  %43 = load float, ptr %42, align 4, !tbaa !8
  br label %44

44:                                               ; preds = %36, %39
  %45 = phi float [ %43, %39 ], [ %20, %36 ]
  %46 = add nsw i32 %3, -1
  %47 = icmp slt i32 %15, %46
  br i1 %47, label %48, label %53

48:                                               ; preds = %44
  %49 = add nsw i32 %2, %8
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds float, ptr %0, i64 %50
  %52 = load float, ptr %51, align 4, !tbaa !8
  br label %53

53:                                               ; preds = %44, %48
  %54 = phi float [ %52, %48 ], [ %20, %44 ]
  %55 = icmp sgt i32 %16, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %53
  %57 = sub nsw i32 %8, %9
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds float, ptr %0, i64 %58
  %60 = load float, ptr %59, align 4, !tbaa !8
  br label %61

61:                                               ; preds = %53, %56
  %62 = phi float [ %60, %56 ], [ %20, %53 ]
  %63 = add nsw i32 %4, -1
  %64 = icmp slt i32 %16, %63
  br i1 %64, label %65, label %70

65:                                               ; preds = %61
  %66 = add nsw i32 %9, %8
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds float, ptr %0, i64 %67
  %69 = load float, ptr %68, align 4, !tbaa !8
  br label %70

70:                                               ; preds = %61, %65
  %71 = phi float [ %69, %65 ], [ %20, %61 ]
  %72 = fadd float %28, %37
  %73 = fadd float %72, %45
  %74 = fadd float %73, %54
  %75 = fadd float %74, %62
  %76 = fadd float %75, %71
  %77 = tail call float @llvm.fmuladd.f32(float %20, float -6.000000e+00, float %76)
  %78 = tail call float @llvm.fmuladd.f32(float %5, float %77, float %20)
  %79 = getelementptr inbounds float, ptr %1, i64 %18
  store float %78, ptr %79, align 4, !tbaa !8
  br label %80

80:                                               ; preds = %6, %70
  ret void
}

; Function Attrs: convergent norecurse nounwind uwtable
define dso_local spir_kernel void @reaction(ptr noundef readonly align 4 captures(none) %0, ptr noundef align 4 captures(none) %1, ptr noundef writeonly align 4 captures(none) %2, ptr noundef align 4 captures(none) %3, ptr noundef align 4 captures(none) %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, float noundef %8, float noundef %9, float noundef %10, float noundef %11, i32 noundef %12, i32 noundef %13, float noundef %14, float noundef %15, float noundef %16, i32 noundef %17) local_unnamed_addr #10 !kernel_arg_addr_space !17 !kernel_arg_access_qual !18 !kernel_arg_type !19 !kernel_arg_base_type !20 !kernel_arg_type_qual !21 {
  %19 = alloca [40 x float], align 16
  %20 = alloca float, align 4
  %21 = tail call i64 @get_global_id(i32 noundef 0) #15
  %22 = trunc i64 %21 to i32
  %23 = mul nsw i32 %6, %5
  %24 = mul nsw i32 %23, %7
  %25 = icmp sgt i32 %24, %22
  br i1 %25, label %26, label %70

26:                                               ; preds = %18
  %27 = srem i32 %22, %5
  %28 = sdiv i32 %22, %23
  %29 = mul nsw i32 %5, 3
  %30 = sdiv i32 %29, 10
  %31 = icmp slt i32 %27, %30
  br i1 %31, label %37, label %32

32:                                               ; preds = %26
  %33 = mul nsw i32 %5, 6
  %34 = sdiv i32 %33, 10
  %35 = icmp slt i32 %27, %34
  %36 = select i1 %35, i32 2, i32 1
  br label %37

37:                                               ; preds = %32, %26
  %38 = phi i32 [ %36, %32 ], [ 0, %26 ]
  %39 = fdiv float %8, %14, !fpmath !10
  %40 = tail call float @_Z5floorf(float noundef %39) #15
  %41 = icmp slt i32 %28, %17
  br i1 %41, label %42, label %47

42:                                               ; preds = %37
  %43 = fneg float %14
  %44 = tail call float @llvm.fmuladd.f32(float %43, float %40, float %8)
  %45 = fcmp olt float %44, %15
  br i1 %45, label %46, label %47

46:                                               ; preds = %42
  br label %47

47:                                               ; preds = %46, %42, %37
  %48 = phi float [ %16, %46 ], [ 0.000000e+00, %42 ], [ 0.000000e+00, %37 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #17
  %49 = shl i64 %21, 32
  %50 = ashr exact i64 %49, 32
  %51 = mul nsw i64 %50, 160
  %52 = getelementptr i8, ptr %1, i64 %51
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(160) %19, ptr noundef nonnull align 4 dereferenceable(160) %52, i64 160, i1 false), !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #17
  %53 = getelementptr inbounds float, ptr %0, i64 %50
  %54 = load float, ptr %53, align 4, !tbaa !8
  store float %54, ptr %20, align 4, !tbaa !8
  %55 = call i32 @torord_advance(ptr noundef nonnull %20, ptr noundef nonnull %19, i32 noundef %38, float noundef %48, float noundef %9, float noundef %10, float noundef %11, i32 noundef %12, i32 noundef %13) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(160) %52, ptr noundef nonnull align 16 dereferenceable(160) %19, i64 160, i1 false), !tbaa !8
  %56 = load float, ptr %20, align 4, !tbaa !8
  %57 = getelementptr inbounds float, ptr %2, i64 %50
  store float %56, ptr %57, align 4, !tbaa !8
  %58 = sitofp i32 %55 to float
  %59 = getelementptr inbounds float, ptr %4, i64 %50
  %60 = load float, ptr %59, align 4, !tbaa !8
  %61 = fadd float %60, %58
  store float %61, ptr %59, align 4, !tbaa !8
  %62 = getelementptr inbounds float, ptr %3, i64 %50
  %63 = load float, ptr %62, align 4, !tbaa !8
  %64 = fcmp olt float %63, 0.000000e+00
  %65 = fcmp oge float %56, -2.000000e+01
  %66 = select i1 %64, i1 %65, i1 false
  br i1 %66, label %67, label %69

67:                                               ; preds = %47
  %68 = fadd float %8, %9
  store float %68, ptr %62, align 4, !tbaa !8
  br label %69

69:                                               ; preds = %67, %47
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #17
  br label %70

70:                                               ; preds = %18, %69
  ret void
}

; Function Attrs: alwaysinline convergent norecurse nounwind uwtable
define dso_local void @__clang_ocl_kern_imp_reaction(ptr noundef readonly align 4 captures(none) %0, ptr noundef align 4 captures(none) %1, ptr noundef writeonly align 4 captures(none) %2, ptr noundef align 4 captures(none) %3, ptr noundef align 4 captures(none) %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, float noundef %8, float noundef %9, float noundef %10, float noundef %11, i32 noundef %12, i32 noundef %13, float noundef %14, float noundef %15, float noundef %16, i32 noundef %17) local_unnamed_addr #11 !kernel_arg_addr_space !17 !kernel_arg_access_qual !18 !kernel_arg_type !19 !kernel_arg_base_type !20 !kernel_arg_type_qual !21 {
  %19 = alloca [40 x float], align 16
  %20 = alloca float, align 4
  %21 = tail call i64 @get_global_id(i32 noundef 0) #15
  %22 = trunc i64 %21 to i32
  %23 = mul nsw i32 %6, %5
  %24 = mul nsw i32 %23, %7
  %25 = icmp sgt i32 %24, %22
  br i1 %25, label %26, label %70

26:                                               ; preds = %18
  %27 = srem i32 %22, %5
  %28 = sdiv i32 %22, %23
  %29 = mul nsw i32 %5, 3
  %30 = sdiv i32 %29, 10
  %31 = icmp slt i32 %27, %30
  br i1 %31, label %37, label %32

32:                                               ; preds = %26
  %33 = mul nsw i32 %5, 6
  %34 = sdiv i32 %33, 10
  %35 = icmp slt i32 %27, %34
  %36 = select i1 %35, i32 2, i32 1
  br label %37

37:                                               ; preds = %26, %32
  %38 = phi i32 [ %36, %32 ], [ 0, %26 ]
  %39 = fdiv float %8, %14, !fpmath !10
  %40 = tail call float @_Z5floorf(float noundef %39) #15
  %41 = icmp slt i32 %28, %17
  br i1 %41, label %42, label %47

42:                                               ; preds = %37
  %43 = fneg float %14
  %44 = tail call float @llvm.fmuladd.f32(float %43, float %40, float %8)
  %45 = fcmp olt float %44, %15
  br i1 %45, label %46, label %47

46:                                               ; preds = %42
  br label %47

47:                                               ; preds = %37, %42, %46
  %48 = phi float [ %16, %46 ], [ 0.000000e+00, %42 ], [ 0.000000e+00, %37 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #17
  %49 = shl i64 %21, 32
  %50 = ashr exact i64 %49, 32
  %51 = mul nsw i64 %50, 160
  %52 = getelementptr i8, ptr %1, i64 %51
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(160) %19, ptr noundef nonnull align 4 dereferenceable(160) %52, i64 160, i1 false), !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #17
  %53 = getelementptr inbounds float, ptr %0, i64 %50
  %54 = load float, ptr %53, align 4, !tbaa !8
  store float %54, ptr %20, align 4, !tbaa !8
  %55 = call i32 @torord_advance(ptr noundef nonnull %20, ptr noundef nonnull %19, i32 noundef %38, float noundef %48, float noundef %9, float noundef %10, float noundef %11, i32 noundef %12, i32 noundef %13) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(160) %52, ptr noundef nonnull align 16 dereferenceable(160) %19, i64 160, i1 false), !tbaa !8
  %56 = load float, ptr %20, align 4, !tbaa !8
  %57 = getelementptr inbounds float, ptr %2, i64 %50
  store float %56, ptr %57, align 4, !tbaa !8
  %58 = sitofp i32 %55 to float
  %59 = getelementptr inbounds float, ptr %4, i64 %50
  %60 = load float, ptr %59, align 4, !tbaa !8
  %61 = fadd float %60, %58
  store float %61, ptr %59, align 4, !tbaa !8
  %62 = getelementptr inbounds float, ptr %3, i64 %50
  %63 = load float, ptr %62, align 4, !tbaa !8
  %64 = fcmp olt float %63, 0.000000e+00
  %65 = fcmp oge float %56, -2.000000e+01
  %66 = select i1 %64, i1 %65, i1 false
  br i1 %66, label %67, label %69

67:                                               ; preds = %47
  %68 = fadd float %8, %9
  store float %68, ptr %62, align 4, !tbaa !8
  br label %69

69:                                               ; preds = %67, %47
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #17
  br label %70

70:                                               ; preds = %18, %69
  ret void
}

; Function Attrs: convergent mustprogress nofree nounwind willreturn memory(none)
declare dso_local i64 @get_global_id(i32 noundef) local_unnamed_addr #3

; Function Attrs: convergent mustprogress nofree nounwind willreturn memory(none)
declare dso_local float @_Z5floorf(float noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #13

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #13

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { convergent mustprogress nofree norecurse nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { convergent mustprogress nofree nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { convergent norecurse nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { convergent nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { convergent mustprogress nofree norecurse nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "uniform-work-group-size"="true" }
attributes #9 = { alwaysinline convergent mustprogress nofree norecurse nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { convergent norecurse nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "uniform-work-group-size"="true" }
attributes #11 = { alwaysinline convergent norecurse nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #13 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #15 = { convergent nounwind willreturn memory(none) }
attributes #16 = { convergent nounwind }
attributes #17 = { nounwind }

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
!11 = !{float 3.000000e+00}
!12 = !{i32 1, i32 1, i32 0, i32 0, i32 0, i32 0}
!13 = !{!"none", !"none", !"none", !"none", !"none", !"none"}
!14 = !{!"real*", !"real*", !"int", !"int", !"int", !"real"}
!15 = !{!"float*", !"float*", !"int", !"int", !"int", !"float"}
!16 = !{!"const", !"", !"", !"", !"", !""}
!17 = !{i32 1, i32 1, i32 1, i32 1, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0}
!18 = !{!"none", !"none", !"none", !"none", !"none", !"none", !"none", !"none", !"none", !"none", !"none", !"none", !"none", !"none", !"none", !"none", !"none", !"none"}
!19 = !{!"real*", !"real*", !"real*", !"real*", !"float*", !"int", !"int", !"int", !"real", !"real", !"real", !"real", !"int", !"int", !"real", !"real", !"real", !"int"}
!20 = !{!"float*", !"float*", !"float*", !"float*", !"float*", !"int", !"int", !"int", !"float", !"float", !"float", !"float", !"int", !"int", !"float", !"float", !"float", !"int"}
!21 = !{!"const", !"", !"", !"", !"", !"", !"", !"", !"", !"", !"", !"", !"", !"", !"", !"", !"", !""}
