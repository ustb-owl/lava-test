; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%d:\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c" %d\00", align 1

define i32 @lengthOfLastWord(i32* %s, i32 %n) {
entry:
  %0 = alloca i32*
  store i32* %s, i32** %0
  %n.addr = alloca i32
  %1 = load i32*, i32** %0
  %retval = alloca i32
  store i32 %n, i32* %n.addr
  %2 = alloca i32
  %3 = alloca i1
  %4 = alloca i32
  %5 = load i32, i32* %n.addr
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %if.then0, label %if.end0

if.then0:                                         ; preds = %entry
  store i32 0, i32* %retval
  br label %func_exit

if.end0:                                          ; preds = %entry
  %7 = load i32, i32* %n.addr
  %8 = sub i32 %7, 1
  store i32 %8, i32* %2
  br label %while.cond0

while.cond0:                                      ; preds = %loop.body0, %if.end0
  %9 = sub i32 0, 1
  %10 = load i32, i32* %2
  %11 = icmp sgt i32 %10, %9
  %12 = icmp ne i1 false, %11
  br i1 %12, label %lhs.true0, label %lhs.false0

loop.body0:                                       ; preds = %land.end0
  %13 = load i32, i32* %2
  %14 = sub i32 %13, 1
  store i32 %14, i32* %2
  br label %while.cond0

while.end0:                                       ; preds = %land.end0
  %15 = sub i32 0, 1
  %16 = load i32, i32* %2
  %17 = icmp eq i32 %16, %15
  br i1 %17, label %if.then1, label %if.end1

lhs.true0:                                        ; preds = %while.cond0
  %18 = load i32, i32* %2
  %19 = getelementptr inbounds i32, i32* %1, i32 %18
  %20 = load i32, i32* %19
  %21 = icmp eq i32 %20, 0
  %22 = and i1 %11, %21
  store i1 %22, i1* %3
  br label %land.end0

lhs.false0:                                       ; preds = %while.cond0
  store i1 %11, i1* %3
  br label %land.end0

land.end0:                                        ; preds = %lhs.false0, %lhs.true0
  %23 = load i1, i1* %3
  %24 = icmp ne i1 false, %23
  br i1 %24, label %loop.body0, label %while.end0

if.then1:                                         ; preds = %while.end0
  store i32 0, i32* %retval
  br label %func_exit

if.end1:                                          ; preds = %while.end0
  %25 = load i32, i32* %2
  store i32 %25, i32* %4
  br label %while.cond1

while.cond1:                                      ; preds = %if.end2, %if.end1
  %26 = sub i32 0, 1
  %27 = load i32, i32* %4
  %28 = icmp sgt i32 %27, %26
  br i1 %28, label %loop.body1, label %while.end1

loop.body1:                                       ; preds = %while.cond1
  %29 = load i32, i32* %4
  %30 = getelementptr inbounds i32, i32* %1, i32 %29
  %31 = load i32, i32* %30
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %if.then2, label %if.end2

while.end1:                                       ; preds = %while.cond1
  %33 = load i32, i32* %2
  %34 = load i32, i32* %4
  %35 = sub i32 %33, %34
  store i32 %35, i32* %retval
  br label %func_exit

if.then2:                                         ; preds = %loop.body1
  %36 = load i32, i32* %n.addr
  %37 = load i32, i32* %4
  %38 = sub i32 %36, %37
  %39 = sub i32 %38, 1
  %40 = load i32, i32* %n.addr
  %41 = sub i32 %40, 1
  %42 = load i32, i32* %2
  %43 = sub i32 %41, %42
  %44 = sub i32 %39, %43
  store i32 %44, i32* %retval
  br label %func_exit

if.end2:                                          ; preds = %loop.body1
  %45 = load i32, i32* %4
  %46 = sub i32 %45, 1
  store i32 %46, i32* %4
  br label %while.cond1

func_exit:                                        ; preds = %if.then2, %while.end1, %if.then1, %if.then0
  %47 = load i32, i32* %retval
  ret i32 %47
}

define i32 @main() {
entry:
  %retval = alloca i32
  %0 = alloca i32
  %1 = alloca [10 x i32]
  %2 = getelementptr inbounds [10 x i32], [10 x i32]* %1, i32 0, i32 0
  %3 = getelementptr inbounds i32, i32* %2, i32 0
  %4 = sub i32 0, 4
  store i32 %4, i32* %3
  %5 = getelementptr inbounds i32, i32* %2, i32 1
  store i32 3, i32* %5
  %6 = getelementptr inbounds i32, i32* %2, i32 2
  store i32 9, i32* %6
  %7 = getelementptr inbounds i32, i32* %2, i32 3
  %8 = sub i32 0, 2
  store i32 %8, i32* %7
  %9 = getelementptr inbounds i32, i32* %2, i32 4
  store i32 0, i32* %9
  %10 = getelementptr inbounds i32, i32* %2, i32 5
  store i32 1, i32* %10
  %11 = getelementptr inbounds i32, i32* %2, i32 6
  %12 = sub i32 0, 6
  store i32 %12, i32* %11
  %13 = getelementptr inbounds i32, i32* %2, i32 7
  store i32 5, i32* %13
  %14 = getelementptr inbounds i32, i32* %2, i32 8
  store i32 7, i32* %14
  %15 = getelementptr inbounds i32, i32* %2, i32 9
  store i32 8, i32* %15
  store i32 10, i32* %0
  %16 = load i32, i32* %0
  %17 = call i32 @lengthOfLastWord(i32* %2, i32 %16)
  store i32 %17, i32* %0
  %18 = load i32, i32* %0
  store i32 %18, i32* %retval
  %19 = load i32, i32* %retval
  ret i32 %19
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
define dso_local void @starttime(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @stoptime(i32 %0) #0 {
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
