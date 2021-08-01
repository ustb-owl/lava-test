; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%d:\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c" %d\00", align 1

define i32 @func(i32 %a, i32 %b) {
entry:
  %a.addr = alloca i32
  %b.addr = alloca i32
  store i32 %a, i32* %a.addr
  %retval = alloca i32
  store i32 %b, i32* %b.addr
  %0 = alloca i32
  %1 = alloca i32
  %2 = alloca i32
  %3 = alloca i32
  %4 = alloca i32
  %5 = alloca i32
  %6 = alloca i32
  %7 = alloca i32
  %8 = alloca i32
  %9 = alloca i32
  %10 = alloca i32
  %11 = alloca i32
  %12 = alloca i32
  %13 = alloca i32
  %14 = alloca i32
  %15 = alloca i32
  %16 = alloca i32
  %17 = alloca i32
  %18 = alloca i32
  %19 = alloca i32
  %20 = alloca i32
  %21 = alloca i32
  %22 = alloca i32
  %23 = alloca i32
  %24 = alloca i32
  %25 = alloca i32
  %26 = alloca i32
  %27 = alloca i32
  %28 = alloca i32
  %29 = alloca i32
  %30 = alloca i32
  %31 = alloca i32
  %32 = alloca i32
  %33 = alloca i32
  %34 = alloca i32
  %35 = alloca i32
  %36 = alloca i32
  %37 = load i32, i32* %a.addr
  %38 = load i32, i32* %b.addr
  %39 = add i32 %37, %38
  store i32 %39, i32* %0
  store i32 1, i32* %1
  store i32 2, i32* %2
  store i32 3, i32* %3
  store i32 4, i32* %4
  %40 = load i32, i32* %1
  %41 = add i32 1, %40
  store i32 %41, i32* %5
  %42 = load i32, i32* %2
  %43 = add i32 2, %42
  store i32 %43, i32* %6
  %44 = load i32, i32* %3
  %45 = add i32 3, %44
  store i32 %45, i32* %7
  %46 = load i32, i32* %4
  %47 = add i32 4, %46
  store i32 %47, i32* %8
  %48 = load i32, i32* %5
  %49 = add i32 1, %48
  store i32 %49, i32* %9
  %50 = load i32, i32* %6
  %51 = add i32 2, %50
  store i32 %51, i32* %10
  %52 = load i32, i32* %7
  %53 = add i32 3, %52
  store i32 %53, i32* %11
  %54 = load i32, i32* %8
  %55 = add i32 4, %54
  store i32 %55, i32* %12
  %56 = load i32, i32* %9
  %57 = add i32 1, %56
  store i32 %57, i32* %13
  %58 = load i32, i32* %10
  %59 = add i32 2, %58
  store i32 %59, i32* %14
  %60 = load i32, i32* %11
  %61 = add i32 3, %60
  store i32 %61, i32* %15
  %62 = load i32, i32* %12
  %63 = add i32 4, %62
  store i32 %63, i32* %16
  %64 = load i32, i32* %13
  %65 = add i32 1, %64
  store i32 %65, i32* %17
  %66 = load i32, i32* %14
  %67 = add i32 2, %66
  store i32 %67, i32* %18
  %68 = load i32, i32* %15
  %69 = add i32 3, %68
  store i32 %69, i32* %19
  %70 = load i32, i32* %16
  %71 = add i32 4, %70
  store i32 %71, i32* %20
  %72 = load i32, i32* %17
  %73 = add i32 1, %72
  store i32 %73, i32* %21
  %74 = load i32, i32* %18
  %75 = add i32 2, %74
  store i32 %75, i32* %22
  %76 = load i32, i32* %19
  %77 = add i32 3, %76
  store i32 %77, i32* %23
  %78 = load i32, i32* %20
  %79 = add i32 4, %78
  store i32 %79, i32* %24
  %80 = load i32, i32* %21
  %81 = add i32 1, %80
  store i32 %81, i32* %25
  %82 = load i32, i32* %22
  %83 = add i32 2, %82
  store i32 %83, i32* %26
  %84 = load i32, i32* %23
  %85 = add i32 3, %84
  store i32 %85, i32* %27
  %86 = load i32, i32* %24
  %87 = add i32 4, %86
  store i32 %87, i32* %28
  %88 = load i32, i32* %25
  %89 = add i32 1, %88
  store i32 %89, i32* %29
  %90 = load i32, i32* %26
  %91 = add i32 2, %90
  store i32 %91, i32* %30
  %92 = load i32, i32* %27
  %93 = add i32 3, %92
  store i32 %93, i32* %31
  %94 = load i32, i32* %28
  %95 = add i32 4, %94
  store i32 %95, i32* %32
  %96 = load i32, i32* %29
  %97 = add i32 1, %96
  store i32 %97, i32* %33
  %98 = load i32, i32* %30
  %99 = add i32 2, %98
  store i32 %99, i32* %34
  %100 = load i32, i32* %31
  %101 = add i32 3, %100
  store i32 %101, i32* %35
  %102 = load i32, i32* %32
  %103 = add i32 4, %102
  store i32 %103, i32* %36
  %104 = load i32, i32* %a.addr
  %105 = load i32, i32* %b.addr
  %106 = sub i32 %104, %105
  %107 = add i32 %106, 10
  store i32 %107, i32* %0
  %108 = load i32, i32* %29
  %109 = add i32 1, %108
  store i32 %109, i32* %33
  %110 = load i32, i32* %30
  %111 = add i32 2, %110
  store i32 %111, i32* %34
  %112 = load i32, i32* %31
  %113 = add i32 3, %112
  store i32 %113, i32* %35
  %114 = load i32, i32* %32
  %115 = add i32 4, %114
  store i32 %115, i32* %36
  %116 = load i32, i32* %25
  %117 = add i32 1, %116
  store i32 %117, i32* %29
  %118 = load i32, i32* %26
  %119 = add i32 2, %118
  store i32 %119, i32* %30
  %120 = load i32, i32* %27
  %121 = add i32 3, %120
  store i32 %121, i32* %31
  %122 = load i32, i32* %28
  %123 = add i32 4, %122
  store i32 %123, i32* %32
  %124 = load i32, i32* %21
  %125 = add i32 1, %124
  store i32 %125, i32* %25
  %126 = load i32, i32* %22
  %127 = add i32 2, %126
  store i32 %127, i32* %26
  %128 = load i32, i32* %23
  %129 = add i32 3, %128
  store i32 %129, i32* %27
  %130 = load i32, i32* %24
  %131 = add i32 4, %130
  store i32 %131, i32* %28
  %132 = load i32, i32* %17
  %133 = add i32 1, %132
  store i32 %133, i32* %21
  %134 = load i32, i32* %18
  %135 = add i32 2, %134
  store i32 %135, i32* %22
  %136 = load i32, i32* %19
  %137 = add i32 3, %136
  store i32 %137, i32* %23
  %138 = load i32, i32* %20
  %139 = add i32 4, %138
  store i32 %139, i32* %24
  %140 = load i32, i32* %13
  %141 = add i32 1, %140
  store i32 %141, i32* %17
  %142 = load i32, i32* %14
  %143 = add i32 2, %142
  store i32 %143, i32* %18
  %144 = load i32, i32* %15
  %145 = add i32 3, %144
  store i32 %145, i32* %19
  %146 = load i32, i32* %16
  %147 = add i32 4, %146
  store i32 %147, i32* %20
  %148 = load i32, i32* %9
  %149 = add i32 1, %148
  store i32 %149, i32* %13
  %150 = load i32, i32* %10
  %151 = add i32 2, %150
  store i32 %151, i32* %14
  %152 = load i32, i32* %11
  %153 = add i32 3, %152
  store i32 %153, i32* %15
  %154 = load i32, i32* %12
  %155 = add i32 4, %154
  store i32 %155, i32* %16
  %156 = load i32, i32* %5
  %157 = add i32 1, %156
  store i32 %157, i32* %9
  %158 = load i32, i32* %6
  %159 = add i32 2, %158
  store i32 %159, i32* %10
  %160 = load i32, i32* %7
  %161 = add i32 3, %160
  store i32 %161, i32* %11
  %162 = load i32, i32* %8
  %163 = add i32 4, %162
  store i32 %163, i32* %12
  %164 = load i32, i32* %1
  %165 = add i32 1, %164
  store i32 %165, i32* %5
  %166 = load i32, i32* %2
  %167 = add i32 2, %166
  store i32 %167, i32* %6
  %168 = load i32, i32* %3
  %169 = add i32 3, %168
  store i32 %169, i32* %7
  %170 = load i32, i32* %4
  %171 = add i32 4, %170
  store i32 %171, i32* %8
  %172 = load i32, i32* %33
  %173 = add i32 1, %172
  store i32 %173, i32* %1
  %174 = load i32, i32* %34
  %175 = add i32 2, %174
  store i32 %175, i32* %2
  %176 = load i32, i32* %35
  %177 = add i32 3, %176
  store i32 %177, i32* %3
  %178 = load i32, i32* %36
  %179 = add i32 4, %178
  store i32 %179, i32* %4
  %180 = load i32, i32* %0
  %181 = load i32, i32* %1
  %182 = add i32 %180, %181
  %183 = load i32, i32* %2
  %184 = add i32 %182, %183
  %185 = load i32, i32* %3
  %186 = add i32 %184, %185
  %187 = load i32, i32* %4
  %188 = add i32 %186, %187
  %189 = load i32, i32* %5
  %190 = sub i32 %188, %189
  %191 = load i32, i32* %6
  %192 = sub i32 %190, %191
  %193 = load i32, i32* %7
  %194 = sub i32 %192, %193
  %195 = load i32, i32* %8
  %196 = sub i32 %194, %195
  %197 = load i32, i32* %9
  %198 = add i32 %196, %197
  %199 = load i32, i32* %10
  %200 = add i32 %198, %199
  %201 = load i32, i32* %11
  %202 = add i32 %200, %201
  %203 = load i32, i32* %12
  %204 = add i32 %202, %203
  %205 = load i32, i32* %13
  %206 = sub i32 %204, %205
  %207 = load i32, i32* %14
  %208 = sub i32 %206, %207
  %209 = load i32, i32* %15
  %210 = sub i32 %208, %209
  %211 = load i32, i32* %16
  %212 = sub i32 %210, %211
  %213 = load i32, i32* %17
  %214 = add i32 %212, %213
  %215 = load i32, i32* %18
  %216 = add i32 %214, %215
  %217 = load i32, i32* %19
  %218 = add i32 %216, %217
  %219 = load i32, i32* %20
  %220 = add i32 %218, %219
  %221 = load i32, i32* %21
  %222 = sub i32 %220, %221
  %223 = load i32, i32* %22
  %224 = sub i32 %222, %223
  %225 = load i32, i32* %23
  %226 = sub i32 %224, %225
  %227 = load i32, i32* %24
  %228 = sub i32 %226, %227
  %229 = load i32, i32* %25
  %230 = add i32 %228, %229
  %231 = load i32, i32* %26
  %232 = add i32 %230, %231
  %233 = load i32, i32* %27
  %234 = add i32 %232, %233
  %235 = load i32, i32* %28
  %236 = add i32 %234, %235
  %237 = load i32, i32* %29
  %238 = sub i32 %236, %237
  %239 = load i32, i32* %30
  %240 = sub i32 %238, %239
  %241 = load i32, i32* %31
  %242 = sub i32 %240, %241
  %243 = load i32, i32* %32
  %244 = sub i32 %242, %243
  %245 = load i32, i32* %33
  %246 = add i32 %244, %245
  %247 = load i32, i32* %34
  %248 = add i32 %246, %247
  %249 = load i32, i32* %35
  %250 = add i32 %248, %249
  %251 = load i32, i32* %36
  %252 = add i32 %250, %251
  store i32 %252, i32* %retval
  %253 = load i32, i32* %retval
  ret i32 %253
}

define i32 @main() {
entry:
  %retval = alloca i32
  %0 = alloca i32
  %1 = alloca i32
  store i32 1, i32* %0
  %2 = mul i32 2, 9
  %3 = load i32, i32* %0
  %4 = add i32 %3, %2
  store i32 %4, i32* %1
  %5 = load i32, i32* %0
  %6 = load i32, i32* %1
  %7 = call i32 @func(i32 %5, i32 %6)
  store i32 %7, i32* %retval
  %8 = load i32, i32* %retval
  ret i32 %8
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @getint() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 (i8*, ...) @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %1)
  %3 = load i32, i32* %1, align 4
  ret i32 %3
}

declare dso_local i32 @__isoc99_scanf(i8*, ...) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @getch() #0 {
  %1 = alloca i8, align 1
  %2 = call i32 (i8*, ...) @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %1)
  %3 = load i8, i8* %1, align 1
  %4 = sext i8 %3 to i32
  ret i32 %4
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @getarray(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %5 = call i32 (i8*, ...) @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %3)
  store i32 0, i32* %4, align 4
  br label %6

6:                                                ; preds = %16, %1
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* %3, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %19

10:                                               ; preds = %6
  %11 = load i32*, i32** %2, align 8
  %12 = load i32, i32* %4, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i32, i32* %11, i64 %13
  %15 = call i32 (i8*, ...) @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %14)
  br label %16

16:                                               ; preds = %10
  %17 = load i32, i32* %4, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %4, align 4
  br label %6

19:                                               ; preds = %6
  %20 = load i32, i32* %3, align 4
  ret i32 %20
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @putint(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %3)
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @putch(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = call i32 @putchar(i32 %3)
  ret void
}

declare dso_local i32 @putchar(i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @putarray(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32* %1, i32** %4, align 8
  %6 = load i32, i32* %3, align 4
  %7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %6)
  store i32 0, i32* %5, align 4
  br label %8

8:                                                ; preds = %19, %2
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* %3, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %22

12:                                               ; preds = %8
  %13 = load i32*, i32** %4, align 8
  %14 = load i32, i32* %5, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %13, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %17)
  br label %19

19:                                               ; preds = %12
  %20 = load i32, i32* %5, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %5, align 4
  br label %8

22:                                               ; preds = %8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_sysy_starttime(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_sysy_stoptime(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}
!llvm.module.flags = !{!1}

!0 = !{!"clang version 10.0.0-4ubuntu1 "}
!1 = !{i32 1, !"wchar_size", i32 4}
