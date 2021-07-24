; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@arr = global [2 x i32] zeroinitializer
@arr1 = global [3 x i32] zeroinitializer
@arr2 = global [12 x i32] zeroinitializer
@arr3 = global [24 x i32] zeroinitializer
@arr4 = global [24 x i32] zeroinitializer
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%d:\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c" %d\00", align 1

define void @getarr1() {
entry:
  %0 = alloca i32
  %1 = alloca i32
  %2 = getelementptr inbounds [3 x i32], [3 x i32]* @arr1, i32 0, i32 0
  store i32 0, i32* %0
  %3 = call i32 @getarray(i32* %2)
  ret void
}

define i32 @testarr1(i32* %arr, i32* %correct) {
entry:
  %0 = alloca i32*
  store i32* %arr, i32** %0
  %1 = alloca i32*
  %2 = load i32*, i32** %0
  store i32* %correct, i32** %1
  %retval = alloca i32
  %3 = load i32*, i32** %1
  %4 = alloca i32
  call void @getarr1()
  store i32 0, i32* %4
  br label %while.cond0

while.cond0:                                      ; preds = %if.end0, %entry
  %5 = load i32, i32* %4
  %6 = icmp slt i32 %5, 3
  br i1 %6, label %loop.body0, label %while.end0

loop.body0:                                       ; preds = %while.cond0
  %7 = load i32, i32* %4
  %8 = getelementptr inbounds i32, i32* %2, i32 %7
  %9 = load i32, i32* %4
  %10 = getelementptr inbounds i32, i32* %3, i32 %9
  %11 = load i32, i32* %8
  %12 = load i32, i32* %10
  %13 = icmp ne i32 %11, %12
  br i1 %13, label %if.then0, label %if.end0

while.end0:                                       ; preds = %while.cond0
  store i32 0, i32* %retval
  br label %func_exit

if.then0:                                         ; preds = %loop.body0
  %14 = sub i32 0, 1
  store i32 %14, i32* %retval
  br label %func_exit

if.end0:                                          ; preds = %loop.body0
  %15 = load i32, i32* %4
  %16 = add i32 %15, 1
  store i32 %16, i32* %4
  br label %while.cond0

func_exit:                                        ; preds = %if.then0, %while.end0
  %17 = load i32, i32* %retval
  ret i32 %17
}

define void @getarr2() {
entry:
  %0 = alloca i32
  %1 = alloca i32
  %2 = alloca i32
  %3 = getelementptr inbounds [12 x i32], [12 x i32]* @arr2, i32 0, i32 0
  store i32 0, i32* %0
  store i32 0, i32* %2
  br label %while.cond0

while.cond0:                                      ; preds = %loop.body0, %entry
  %4 = load i32, i32* %2
  %5 = icmp slt i32 %4, 3
  br i1 %5, label %loop.body0, label %func_exit

loop.body0:                                       ; preds = %while.cond0
  %6 = load i32, i32* %2
  %7 = mul i32 4, %6
  %8 = getelementptr inbounds i32, i32* %3, i32 %7
  %9 = call i32 @getarray(i32* %8)
  %10 = load i32, i32* %2
  %11 = add i32 %10, 1
  store i32 %11, i32* %2
  br label %while.cond0

func_exit:                                        ; preds = %while.cond0
  ret void
}

define i32 @testarr2(i32* %arr, i32* %correct) {
entry:
  %0 = alloca i32*
  store i32* %arr, i32** %0
  %1 = alloca i32*
  %2 = load i32*, i32** %0
  store i32* %correct, i32** %1
  %retval = alloca i32
  %3 = load i32*, i32** %1
  %4 = alloca i32
  %5 = alloca i32
  call void @getarr2()
  store i32 0, i32* %4
  store i32 0, i32* %5
  br label %while.cond0

while.cond0:                                      ; preds = %while.end0, %entry
  %6 = load i32, i32* %5
  %7 = icmp slt i32 %6, 3
  br i1 %7, label %loop.body0, label %while.end1

loop.body0:                                       ; preds = %while.cond0
  store i32 0, i32* %4
  br label %while.cond1

while.end1:                                       ; preds = %while.cond0
  store i32 0, i32* %retval
  br label %func_exit

while.cond1:                                      ; preds = %if.end0, %loop.body0
  %8 = load i32, i32* %4
  %9 = icmp slt i32 %8, 4
  br i1 %9, label %loop.body1, label %while.end0

loop.body1:                                       ; preds = %while.cond1
  %10 = load i32, i32* %5
  %11 = mul i32 4, %10
  %12 = getelementptr inbounds i32, i32* %2, i32 %11
  %13 = load i32, i32* %4
  %14 = getelementptr inbounds i32, i32* %12, i32 %13
  %15 = load i32, i32* %5
  %16 = mul i32 4, %15
  %17 = getelementptr inbounds i32, i32* %3, i32 %16
  %18 = load i32, i32* %4
  %19 = getelementptr inbounds i32, i32* %17, i32 %18
  %20 = load i32, i32* %14
  %21 = load i32, i32* %19
  %22 = icmp ne i32 %20, %21
  br i1 %22, label %if.then0, label %if.end0

while.end0:                                       ; preds = %while.cond1
  %23 = load i32, i32* %5
  %24 = add i32 %23, 1
  store i32 %24, i32* %5
  br label %while.cond0

if.then0:                                         ; preds = %loop.body1
  %25 = sub i32 0, 1
  store i32 %25, i32* %retval
  br label %func_exit

if.end0:                                          ; preds = %loop.body1
  %26 = load i32, i32* %4
  %27 = add i32 %26, 1
  store i32 %27, i32* %4
  br label %while.cond1

func_exit:                                        ; preds = %if.then0, %while.end1
  %28 = load i32, i32* %retval
  ret i32 %28
}

define void @getarr3() {
entry:
  %0 = alloca i32
  %1 = alloca i32
  %2 = alloca i32
  %3 = alloca i32
  %4 = getelementptr inbounds [24 x i32], [24 x i32]* @arr3, i32 0, i32 0
  store i32 0, i32* %0
  store i32 0, i32* %2
  store i32 0, i32* %3
  br label %while.cond0

while.cond0:                                      ; preds = %while.end0, %entry
  %5 = load i32, i32* %2
  %6 = icmp slt i32 %5, 3
  br i1 %6, label %loop.body0, label %func_exit

loop.body0:                                       ; preds = %while.cond0
  store i32 0, i32* %3
  br label %while.cond1

while.cond1:                                      ; preds = %loop.body1, %loop.body0
  %7 = load i32, i32* %3
  %8 = icmp slt i32 %7, 4
  br i1 %8, label %loop.body1, label %while.end0

loop.body1:                                       ; preds = %while.cond1
  %9 = load i32, i32* %2
  %10 = mul i32 8, %9
  %11 = getelementptr inbounds i32, i32* %4, i32 %10
  %12 = load i32, i32* %3
  %13 = mul i32 2, %12
  %14 = getelementptr inbounds i32, i32* %11, i32 %13
  %15 = call i32 @getarray(i32* %14)
  %16 = load i32, i32* %3
  %17 = add i32 %16, 1
  store i32 %17, i32* %3
  br label %while.cond1

while.end0:                                       ; preds = %while.cond1
  %18 = load i32, i32* %2
  %19 = add i32 %18, 1
  store i32 %19, i32* %2
  br label %while.cond0

func_exit:                                        ; preds = %while.cond0
  ret void
}

define i32 @testarr3(i32* %arr, i32* %correct) {
entry:
  %0 = alloca i32*
  store i32* %arr, i32** %0
  %1 = alloca i32*
  %2 = load i32*, i32** %0
  store i32* %correct, i32** %1
  %retval = alloca i32
  %3 = load i32*, i32** %1
  %4 = alloca i32
  %5 = alloca i32
  %6 = alloca i32
  call void @getarr3()
  store i32 0, i32* %4
  store i32 0, i32* %5
  store i32 0, i32* %6
  br label %while.cond0

while.cond0:                                      ; preds = %while.end0, %entry
  %7 = load i32, i32* %5
  %8 = icmp slt i32 %7, 3
  br i1 %8, label %loop.body0, label %while.end1

loop.body0:                                       ; preds = %while.cond0
  store i32 0, i32* %4
  br label %while.cond1

while.end1:                                       ; preds = %while.cond0
  store i32 0, i32* %retval
  br label %func_exit

while.cond1:                                      ; preds = %while.end2, %loop.body0
  %9 = load i32, i32* %4
  %10 = icmp slt i32 %9, 4
  br i1 %10, label %loop.body1, label %while.end0

loop.body1:                                       ; preds = %while.cond1
  store i32 0, i32* %6
  br label %while.cond2

while.end0:                                       ; preds = %while.cond1
  %11 = load i32, i32* %5
  %12 = add i32 %11, 1
  store i32 %12, i32* %5
  br label %while.cond0

while.cond2:                                      ; preds = %if.end0, %loop.body1
  %13 = load i32, i32* %6
  %14 = icmp slt i32 %13, 2
  br i1 %14, label %loop.body2, label %while.end2

loop.body2:                                       ; preds = %while.cond2
  %15 = load i32, i32* %5
  %16 = mul i32 8, %15
  %17 = getelementptr inbounds i32, i32* %2, i32 %16
  %18 = load i32, i32* %4
  %19 = mul i32 2, %18
  %20 = getelementptr inbounds i32, i32* %17, i32 %19
  %21 = load i32, i32* %6
  %22 = getelementptr inbounds i32, i32* %20, i32 %21
  %23 = load i32, i32* %5
  %24 = mul i32 8, %23
  %25 = getelementptr inbounds i32, i32* %3, i32 %24
  %26 = load i32, i32* %4
  %27 = mul i32 2, %26
  %28 = getelementptr inbounds i32, i32* %25, i32 %27
  %29 = load i32, i32* %6
  %30 = getelementptr inbounds i32, i32* %28, i32 %29
  %31 = load i32, i32* %22
  %32 = load i32, i32* %30
  %33 = icmp ne i32 %31, %32
  br i1 %33, label %if.then0, label %if.end0

while.end2:                                       ; preds = %while.cond2
  %34 = load i32, i32* %4
  %35 = add i32 %34, 1
  store i32 %35, i32* %4
  br label %while.cond1

if.then0:                                         ; preds = %loop.body2
  %36 = sub i32 0, 1
  store i32 %36, i32* %retval
  br label %func_exit

if.end0:                                          ; preds = %loop.body2
  %37 = load i32, i32* %6
  %38 = add i32 %37, 1
  store i32 %38, i32* %6
  br label %while.cond2

func_exit:                                        ; preds = %if.then0, %while.end1
  %39 = load i32, i32* %retval
  ret i32 %39
}

define void @getarr4() {
entry:
  %0 = alloca i32
  %1 = alloca i32
  %2 = alloca i32
  %3 = alloca i32
  %4 = alloca i32
  %5 = getelementptr inbounds [24 x i32], [24 x i32]* @arr4, i32 0, i32 0
  store i32 0, i32* %0
  store i32 0, i32* %2
  store i32 0, i32* %3
  store i32 0, i32* %4
  br label %while.cond0

while.cond0:                                      ; preds = %while.end0, %entry
  %6 = load i32, i32* %2
  %7 = icmp slt i32 %6, 2
  br i1 %7, label %loop.body0, label %func_exit

loop.body0:                                       ; preds = %while.cond0
  store i32 0, i32* %3
  br label %while.cond1

while.cond1:                                      ; preds = %while.end1, %loop.body0
  %8 = load i32, i32* %3
  %9 = icmp slt i32 %8, 2
  br i1 %9, label %loop.body1, label %while.end0

loop.body1:                                       ; preds = %while.cond1
  store i32 0, i32* %4
  br label %while.cond2

while.end0:                                       ; preds = %while.cond1
  %10 = load i32, i32* %2
  %11 = add i32 %10, 1
  store i32 %11, i32* %2
  br label %while.cond0

while.cond2:                                      ; preds = %loop.body2, %loop.body1
  %12 = load i32, i32* %4
  %13 = icmp slt i32 %12, 2
  br i1 %13, label %loop.body2, label %while.end1

loop.body2:                                       ; preds = %while.cond2
  %14 = load i32, i32* %2
  %15 = mul i32 12, %14
  %16 = getelementptr inbounds i32, i32* %5, i32 %15
  %17 = load i32, i32* %3
  %18 = mul i32 6, %17
  %19 = getelementptr inbounds i32, i32* %16, i32 %18
  %20 = load i32, i32* %4
  %21 = mul i32 3, %20
  %22 = getelementptr inbounds i32, i32* %19, i32 %21
  %23 = call i32 @getarray(i32* %22)
  %24 = load i32, i32* %4
  %25 = add i32 %24, 1
  store i32 %25, i32* %4
  br label %while.cond2

while.end1:                                       ; preds = %while.cond2
  %26 = load i32, i32* %3
  %27 = add i32 %26, 1
  store i32 %27, i32* %3
  br label %while.cond1

func_exit:                                        ; preds = %while.cond0
  ret void
}

define i32 @testarr4(i32* %arr, i32* %correct) {
entry:
  %0 = alloca i32*
  store i32* %arr, i32** %0
  %1 = alloca i32*
  %2 = load i32*, i32** %0
  store i32* %correct, i32** %1
  %retval = alloca i32
  %3 = load i32*, i32** %1
  %4 = alloca i32
  %5 = alloca i32
  %6 = alloca i32
  %7 = alloca i32
  call void @getarr4()
  store i32 0, i32* %4
  store i32 0, i32* %5
  store i32 0, i32* %6
  store i32 0, i32* %7
  br label %while.cond0

while.cond0:                                      ; preds = %while.end0, %entry
  %8 = load i32, i32* %5
  %9 = icmp slt i32 %8, 2
  br i1 %9, label %loop.body0, label %while.end1

loop.body0:                                       ; preds = %while.cond0
  store i32 0, i32* %4
  br label %while.cond1

while.end1:                                       ; preds = %while.cond0
  store i32 0, i32* %retval
  br label %func_exit

while.cond1:                                      ; preds = %while.end2, %loop.body0
  %10 = load i32, i32* %4
  %11 = icmp slt i32 %10, 2
  br i1 %11, label %loop.body1, label %while.end0

loop.body1:                                       ; preds = %while.cond1
  store i32 0, i32* %6
  br label %while.cond2

while.end0:                                       ; preds = %while.cond1
  %12 = load i32, i32* %5
  %13 = add i32 %12, 1
  store i32 %13, i32* %5
  br label %while.cond0

while.cond2:                                      ; preds = %while.end3, %loop.body1
  %14 = load i32, i32* %6
  %15 = icmp slt i32 %14, 2
  br i1 %15, label %loop.body2, label %while.end2

loop.body2:                                       ; preds = %while.cond2
  store i32 0, i32* %7
  br label %while.cond3

while.end2:                                       ; preds = %while.cond2
  %16 = load i32, i32* %4
  %17 = add i32 %16, 1
  store i32 %17, i32* %4
  br label %while.cond1

while.cond3:                                      ; preds = %if.end0, %loop.body2
  %18 = load i32, i32* %7
  %19 = icmp slt i32 %18, 3
  br i1 %19, label %loop.body3, label %while.end3

loop.body3:                                       ; preds = %while.cond3
  %20 = load i32, i32* %5
  %21 = mul i32 12, %20
  %22 = getelementptr inbounds i32, i32* %2, i32 %21
  %23 = load i32, i32* %4
  %24 = mul i32 6, %23
  %25 = getelementptr inbounds i32, i32* %22, i32 %24
  %26 = load i32, i32* %6
  %27 = mul i32 3, %26
  %28 = getelementptr inbounds i32, i32* %25, i32 %27
  %29 = load i32, i32* %7
  %30 = getelementptr inbounds i32, i32* %28, i32 %29
  %31 = load i32, i32* %5
  %32 = mul i32 12, %31
  %33 = getelementptr inbounds i32, i32* %3, i32 %32
  %34 = load i32, i32* %4
  %35 = mul i32 6, %34
  %36 = getelementptr inbounds i32, i32* %33, i32 %35
  %37 = load i32, i32* %6
  %38 = mul i32 3, %37
  %39 = getelementptr inbounds i32, i32* %36, i32 %38
  %40 = load i32, i32* %7
  %41 = getelementptr inbounds i32, i32* %39, i32 %40
  %42 = load i32, i32* %30
  %43 = load i32, i32* %41
  %44 = icmp ne i32 %42, %43
  br i1 %44, label %if.then0, label %if.end0

while.end3:                                       ; preds = %while.cond3
  %45 = load i32, i32* %6
  %46 = add i32 %45, 1
  store i32 %46, i32* %6
  br label %while.cond2

if.then0:                                         ; preds = %loop.body3
  %47 = sub i32 0, 1
  store i32 %47, i32* %retval
  br label %func_exit

if.end0:                                          ; preds = %loop.body3
  %48 = load i32, i32* %7
  %49 = add i32 %48, 1
  store i32 %49, i32* %7
  br label %while.cond3

func_exit:                                        ; preds = %if.then0, %while.end1
  %50 = load i32, i32* %retval
  ret i32 %50
}

define i32 @main() {
entry:
  %retval = alloca i32
  %0 = alloca i32
  %1 = alloca i32
  %2 = alloca i32
  %3 = alloca i32
  %4 = alloca i32
  %5 = getelementptr inbounds [2 x i32], [2 x i32]* @arr, i32 0, i32 0
  %6 = alloca [3 x i32]
  %7 = alloca [12 x i32]
  %8 = alloca [24 x i32]
  %9 = alloca [24 x i32]
  %10 = getelementptr inbounds [3 x i32], [3 x i32]* @arr1, i32 0, i32 0
  %11 = getelementptr inbounds [12 x i32], [12 x i32]* @arr2, i32 0, i32 0
  %12 = getelementptr inbounds [24 x i32], [24 x i32]* @arr3, i32 0, i32 0
  %13 = getelementptr inbounds [24 x i32], [24 x i32]* @arr4, i32 0, i32 0
  store i32 0, i32* %1
  store i32 0, i32* %2
  store i32 0, i32* %3
  store i32 0, i32* %4
  %14 = getelementptr inbounds i32, i32* %5, i32 0
  store i32 8, i32* %14
  %15 = getelementptr inbounds i32, i32* %5, i32 1
  store i32 9, i32* %15
  %16 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i32 0, i32 0
  call void @memset(i32* %16, i32 0, i32 12)
  %17 = getelementptr inbounds i32, i32* %16, i32 0
  store i32 1, i32* %17
  %18 = getelementptr inbounds i32, i32* %16, i32 1
  store i32 2, i32* %18
  %19 = getelementptr inbounds i32, i32* %16, i32 2
  store i32 3, i32* %19
  %20 = getelementptr inbounds [12 x i32], [12 x i32]* %7, i32 0, i32 0
  call void @memset(i32* %20, i32 0, i32 48)
  %21 = getelementptr inbounds i32, i32* %20, i32 0
  store i32 1, i32* %21
  %22 = getelementptr inbounds i32, i32* %20, i32 1
  store i32 2, i32* %22
  %23 = getelementptr inbounds i32, i32* %20, i32 2
  store i32 3, i32* %23
  %24 = getelementptr inbounds i32, i32* %20, i32 3
  store i32 4, i32* %24
  %25 = getelementptr inbounds i32, i32* %20, i32 4
  store i32 11, i32* %25
  %26 = getelementptr inbounds i32, i32* %20, i32 5
  store i32 12, i32* %26
  %27 = getelementptr inbounds i32, i32* %20, i32 6
  store i32 13, i32* %27
  %28 = getelementptr inbounds i32, i32* %20, i32 7
  store i32 14, i32* %28
  %29 = getelementptr inbounds i32, i32* %20, i32 8
  store i32 21, i32* %29
  %30 = getelementptr inbounds i32, i32* %20, i32 9
  store i32 22, i32* %30
  %31 = getelementptr inbounds i32, i32* %20, i32 10
  store i32 23, i32* %31
  %32 = getelementptr inbounds i32, i32* %20, i32 11
  store i32 24, i32* %32
  %33 = getelementptr inbounds [24 x i32], [24 x i32]* %8, i32 0, i32 0
  call void @memset(i32* %33, i32 0, i32 96)
  %34 = getelementptr inbounds i32, i32* %5, i32 0
  %35 = getelementptr inbounds i32, i32* %5, i32 1
  %36 = getelementptr inbounds i32, i32* %5, i32 0
  %37 = load i32, i32* %36
  %38 = add i32 %37, 10
  %39 = getelementptr inbounds i32, i32* %5, i32 1
  %40 = load i32, i32* %39
  %41 = add i32 10, %40
  %42 = getelementptr inbounds i32, i32* %5, i32 0
  %43 = load i32, i32* %42
  %44 = add i32 20, %43
  %45 = getelementptr inbounds i32, i32* %5, i32 1
  %46 = load i32, i32* %45
  %47 = add i32 20, %46
  %48 = getelementptr inbounds i32, i32* %5, i32 0
  %49 = load i32, i32* %48
  %50 = add i32 30, %49
  %51 = getelementptr inbounds i32, i32* %5, i32 1
  %52 = load i32, i32* %51
  %53 = add i32 30, %52
  %54 = getelementptr inbounds i32, i32* %5, i32 0
  %55 = load i32, i32* %54
  %56 = add i32 40, %55
  %57 = getelementptr inbounds i32, i32* %5, i32 1
  %58 = load i32, i32* %57
  %59 = add i32 40, %58
  %60 = getelementptr inbounds i32, i32* %5, i32 0
  %61 = load i32, i32* %60
  %62 = add i32 50, %61
  %63 = getelementptr inbounds i32, i32* %5, i32 1
  %64 = load i32, i32* %63
  %65 = add i32 50, %64
  %66 = getelementptr inbounds i32, i32* %5, i32 0
  %67 = load i32, i32* %66
  %68 = add i32 60, %67
  %69 = getelementptr inbounds i32, i32* %5, i32 1
  %70 = load i32, i32* %69
  %71 = add i32 60, %70
  %72 = getelementptr inbounds i32, i32* %5, i32 0
  %73 = load i32, i32* %72
  %74 = add i32 %73, 70
  %75 = getelementptr inbounds i32, i32* %5, i32 1
  %76 = load i32, i32* %75
  %77 = add i32 70, %76
  %78 = getelementptr inbounds i32, i32* %5, i32 0
  %79 = getelementptr inbounds i32, i32* %5, i32 1
  %80 = getelementptr inbounds i32, i32* %5, i32 0
  %81 = getelementptr inbounds i32, i32* %5, i32 1
  %82 = getelementptr inbounds i32, i32* %5, i32 0
  %83 = getelementptr inbounds i32, i32* %5, i32 1
  %84 = getelementptr inbounds i32, i32* %5, i32 0
  %85 = getelementptr inbounds i32, i32* %5, i32 1
  %86 = getelementptr inbounds i32, i32* %33, i32 0
  %87 = load i32, i32* %34
  store i32 %87, i32* %86
  %88 = getelementptr inbounds i32, i32* %33, i32 1
  %89 = load i32, i32* %35
  store i32 %89, i32* %88
  %90 = getelementptr inbounds i32, i32* %33, i32 2
  store i32 %38, i32* %90
  %91 = getelementptr inbounds i32, i32* %33, i32 3
  store i32 %41, i32* %91
  %92 = getelementptr inbounds i32, i32* %33, i32 4
  store i32 %44, i32* %92
  %93 = getelementptr inbounds i32, i32* %33, i32 5
  store i32 %47, i32* %93
  %94 = getelementptr inbounds i32, i32* %33, i32 6
  store i32 %50, i32* %94
  %95 = getelementptr inbounds i32, i32* %33, i32 7
  store i32 %53, i32* %95
  %96 = getelementptr inbounds i32, i32* %33, i32 8
  store i32 %56, i32* %96
  %97 = getelementptr inbounds i32, i32* %33, i32 9
  store i32 %59, i32* %97
  %98 = getelementptr inbounds i32, i32* %33, i32 10
  store i32 %62, i32* %98
  %99 = getelementptr inbounds i32, i32* %33, i32 11
  store i32 %65, i32* %99
  %100 = getelementptr inbounds i32, i32* %33, i32 12
  store i32 %68, i32* %100
  %101 = getelementptr inbounds i32, i32* %33, i32 13
  store i32 %71, i32* %101
  %102 = getelementptr inbounds i32, i32* %33, i32 14
  store i32 %74, i32* %102
  %103 = getelementptr inbounds i32, i32* %33, i32 15
  store i32 %77, i32* %103
  %104 = getelementptr inbounds i32, i32* %33, i32 16
  %105 = load i32, i32* %78
  store i32 %105, i32* %104
  %106 = getelementptr inbounds i32, i32* %33, i32 17
  %107 = load i32, i32* %79
  store i32 %107, i32* %106
  %108 = getelementptr inbounds i32, i32* %33, i32 18
  %109 = load i32, i32* %80
  store i32 %109, i32* %108
  %110 = getelementptr inbounds i32, i32* %33, i32 19
  %111 = load i32, i32* %81
  store i32 %111, i32* %110
  %112 = getelementptr inbounds i32, i32* %33, i32 20
  %113 = load i32, i32* %82
  store i32 %113, i32* %112
  %114 = getelementptr inbounds i32, i32* %33, i32 21
  %115 = load i32, i32* %83
  store i32 %115, i32* %114
  %116 = getelementptr inbounds i32, i32* %33, i32 22
  %117 = load i32, i32* %84
  store i32 %117, i32* %116
  %118 = getelementptr inbounds i32, i32* %33, i32 23
  %119 = load i32, i32* %85
  store i32 %119, i32* %118
  %120 = getelementptr inbounds [24 x i32], [24 x i32]* %9, i32 0, i32 0
  call void @memset(i32* %120, i32 0, i32 96)
  %121 = getelementptr inbounds i32, i32* %16, i32 0
  %122 = getelementptr inbounds i32, i32* %16, i32 1
  %123 = getelementptr inbounds i32, i32* %16, i32 2
  %124 = mul i32 4, 1
  %125 = getelementptr inbounds i32, i32* %20, i32 %124
  %126 = getelementptr inbounds i32, i32* %125, i32 3
  %127 = getelementptr inbounds i32, i32* %16, i32 0
  %128 = load i32, i32* %127
  %129 = add i32 30, %128
  %130 = getelementptr inbounds i32, i32* %16, i32 1
  %131 = load i32, i32* %130
  %132 = add i32 30, %131
  %133 = getelementptr inbounds i32, i32* %16, i32 2
  %134 = load i32, i32* %133
  %135 = add i32 30, %134
  %136 = getelementptr inbounds i32, i32* %120, i32 0
  store i32 11, i32* %136
  %137 = getelementptr inbounds i32, i32* %120, i32 1
  store i32 12, i32* %137
  %138 = getelementptr inbounds i32, i32* %120, i32 2
  store i32 13, i32* %138
  %139 = getelementptr inbounds i32, i32* %120, i32 3
  %140 = load i32, i32* %121
  store i32 %140, i32* %139
  %141 = getelementptr inbounds i32, i32* %120, i32 4
  %142 = load i32, i32* %122
  store i32 %142, i32* %141
  %143 = getelementptr inbounds i32, i32* %120, i32 5
  %144 = load i32, i32* %123
  store i32 %144, i32* %143
  %145 = getelementptr inbounds i32, i32* %120, i32 6
  store i32 4, i32* %145
  %146 = getelementptr inbounds i32, i32* %120, i32 7
  store i32 5, i32* %146
  %147 = getelementptr inbounds i32, i32* %120, i32 8
  store i32 6, i32* %147
  %148 = getelementptr inbounds i32, i32* %120, i32 9
  %149 = load i32, i32* %126
  store i32 %149, i32* %148
  %150 = getelementptr inbounds i32, i32* %120, i32 10
  store i32 15, i32* %150
  %151 = getelementptr inbounds i32, i32* %120, i32 11
  store i32 16, i32* %151
  %152 = getelementptr inbounds i32, i32* %120, i32 12
  store i32 21, i32* %152
  %153 = getelementptr inbounds i32, i32* %120, i32 13
  store i32 22, i32* %153
  %154 = getelementptr inbounds i32, i32* %120, i32 14
  store i32 23, i32* %154
  %155 = getelementptr inbounds i32, i32* %120, i32 15
  store i32 %129, i32* %155
  %156 = getelementptr inbounds i32, i32* %120, i32 16
  store i32 %132, i32* %156
  %157 = getelementptr inbounds i32, i32* %120, i32 17
  store i32 %135, i32* %157
  %158 = call i32 @testarr1(i32* %10, i32* %16)
  call void @putint(i32 %158)
  %159 = call i32 @testarr2(i32* %11, i32* %20)
  call void @putint(i32 %159)
  %160 = call i32 @testarr3(i32* %12, i32* %33)
  call void @putint(i32 %160)
  %161 = call i32 @testarr4(i32* %13, i32* %120)
  call void @putint(i32 %161)
  store i32 0, i32* %retval
  %162 = load i32, i32* %retval
  ret i32 %162
}

declare void @memset(i32*, i32, i32)

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
