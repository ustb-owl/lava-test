; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.15.0"

@dist = global [1048576 x i32] zeroinitializer
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%d:\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c" %d\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

define i32 @main() {
entry:
  %t0 = getelementptr inbounds [1048576 x i32], [1048576 x i32]* @dist, i32 0, i32 0
  %t1 = call i32 @getint()
  br label %while.cond0

while.cond0:                                      ; preds = %while.end0, %entry
  %phi0 = phi i32 [ 0, %entry ], [ %t2, %while.end0 ]
  %t3 = icmp slt i32 %phi0, %t1
  br i1 %t3, label %loop.body0, label %while.end1

loop.body0:                                       ; preds = %while.cond0
  br label %while.cond1

while.end1:                                       ; preds = %while.cond0
  br label %while.cond2

while.cond1:                                      ; preds = %loop.body1, %loop.body0
  %phi1 = phi i32 [ 0, %loop.body0 ], [ %t4, %loop.body1 ]
  %t5 = icmp slt i32 %phi1, %t1
  br i1 %t5, label %loop.body1, label %while.end0

while.cond2:                                      ; preds = %while.end2, %while.end1
  %phi2 = phi i32 [ 0, %while.end1 ], [ %t6, %while.end2 ]
  %t7 = icmp slt i32 %phi2, %t1
  br i1 %t7, label %loop.body2, label %while.end3

loop.body1:                                       ; preds = %while.cond1
  %t8 = mul i32 %phi0, 1024
  %t9 = getelementptr inbounds i32, i32* %t0, i32 %t8
  %t10 = getelementptr inbounds i32, i32* %t9, i32 %phi1
  %t11 = call i32 @getint()
  store i32 %t11, i32* %t10, align 4
  %t4 = add i32 %phi1, 1
  br label %while.cond1

while.end0:                                       ; preds = %while.cond1
  %t2 = add i32 %phi0, 1
  br label %while.cond0

loop.body2:                                       ; preds = %while.cond2
  br label %while.cond3

while.end3:                                       ; preds = %while.cond2
  br label %while.cond4

while.cond3:                                      ; preds = %while.end4, %loop.body2
  %phi3 = phi i32 [ 0, %loop.body2 ], [ %t12, %while.end4 ]
  %t13 = icmp slt i32 %phi3, %t1
  br i1 %t13, label %loop.body3, label %while.end2

while.cond4:                                      ; preds = %while.end5, %while.end3
  %phi4 = phi i32 [ 0, %while.end3 ], [ %t14, %while.end5 ]
  %t15 = icmp slt i32 %phi4, %t1
  br i1 %t15, label %loop.body4, label %while.end6

loop.body3:                                       ; preds = %while.cond3
  br label %while.cond5

while.end2:                                       ; preds = %while.cond3
  %t6 = add i32 %phi2, 1
  br label %while.cond2

loop.body4:                                       ; preds = %while.cond4
  br label %while.cond6

while.cond5:                                      ; preds = %if.end0, %loop.body3
  %phi5 = phi i32 [ 0, %loop.body3 ], [ %t16, %if.end0 ]
  %t17 = icmp slt i32 %phi5, %t1
  br i1 %t17, label %loop.body5, label %while.end4

while.cond6:                                      ; preds = %loop.body6, %loop.body4
  %phi6 = phi i32 [ 0, %loop.body4 ], [ %t18, %loop.body6 ]
  %t19 = icmp slt i32 %phi6, %t1
  br i1 %t19, label %loop.body6, label %while.end5

loop.body5:                                       ; preds = %while.cond5
  %t20 = mul i32 %phi3, 1024
  %t21 = getelementptr inbounds i32, i32* %t0, i32 %t20
  %t22 = getelementptr inbounds i32, i32* %t21, i32 %phi2
  %t23 = mul i32 %phi2, 1024
  %t24 = getelementptr inbounds i32, i32* %t0, i32 %t23
  %t25 = getelementptr inbounds i32, i32* %t24, i32 %phi5
  %t26 = load i32, i32* %t22, align 4
  %t27 = load i32, i32* %t25, align 4
  %t28 = add i32 %t26, %t27
  %t29 = mul i32 %phi3, 1024
  %t30 = getelementptr inbounds i32, i32* %t0, i32 %t29
  %t31 = getelementptr inbounds i32, i32* %t30, i32 %phi5
  %t32 = load i32, i32* %t31, align 4
  %t33 = icmp slt i32 %t28, %t32
  br i1 %t33, label %if.then0, label %if.end0

while.end4:                                       ; preds = %while.cond5
  %t12 = add i32 %phi3, 1
  br label %while.cond3

loop.body6:                                       ; preds = %while.cond6
  %t34 = mul i32 %phi4, 1024
  %t35 = getelementptr inbounds i32, i32* %t0, i32 %t34
  %t36 = getelementptr inbounds i32, i32* %t35, i32 %phi6
  %t37 = load i32, i32* %t36, align 4
  call void @putint(i32 %t37)
  call void @putch(i32 32)
  %t18 = add i32 %phi6, 1
  br label %while.cond6

while.end5:                                       ; preds = %while.cond6
  %t14 = add i32 %phi4, 1
  br label %while.cond4

if.then0:                                         ; preds = %loop.body5
  %t38 = mul i32 %phi3, 1024
  %t39 = getelementptr inbounds i32, i32* %t0, i32 %t38
  %t40 = getelementptr inbounds i32, i32* %t39, i32 %phi5
  %t41 = mul i32 %phi3, 1024
  %t42 = getelementptr inbounds i32, i32* %t0, i32 %t41
  %t43 = getelementptr inbounds i32, i32* %t42, i32 %phi2
  %t44 = mul i32 %phi2, 1024
  %t45 = getelementptr inbounds i32, i32* %t0, i32 %t44
  %t46 = getelementptr inbounds i32, i32* %t45, i32 %phi5
  %t47 = load i32, i32* %t43, align 4
  %t48 = load i32, i32* %t46, align 4
  %t49 = add i32 %t47, %t48
  store i32 %t49, i32* %t40, align 4
  br label %if.end0

if.end0:                                          ; preds = %if.then0, %loop.body5
  %t16 = add i32 %phi5, 1
  br label %while.cond5

while.end6:                                       ; preds = %while.cond4
  ret i32 0
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @getint() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %1)
  %3 = load i32, i32* %1, align 4
  ret i32 %3
}

declare i32 @scanf(i8*, ...) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @getch() #0 {
  %1 = alloca i8, align 1
  %2 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %1)
  %3 = load i8, i8* %1, align 1
  %4 = sext i8 %3 to i32
  ret i32 %4
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @getarray(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %5 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %3)
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
  %15 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %14)
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

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @putint(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %3)
  ret void
}

declare i32 @printf(i8*, ...) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @putch(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = call i32 @putchar(i32 %3)
  ret void
}

declare i32 @putchar(i32) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @putarray(i32 %0, i32* %1) #0 {
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
  %23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @_sysy_starttime(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @_sysy_stoptime(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "darwin-stkchk-strong-link" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "probe-stack"="___chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "darwin-stkchk-strong-link" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "probe-stack"="___chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}
!llvm.module.flags = !{!1, !2, !3}

!0 = !{!"Apple clang version 11.0.3 (clang-1103.0.32.62)"}
!1 = !{i32 2, !"SDK Version", [3 x i32] [i32 10, i32 15, i32 4]}
!2 = !{i32 1, !"wchar_size", i32 4}
!3 = !{i32 7, !"PIC Level", i32 2}
