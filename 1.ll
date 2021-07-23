; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.15.0"

@map1 = global [12100 x i32] zeroinitializer
@i = global i32 0
@j = global i32 0
@n = global i32 0
@just = global [12100 x i32] zeroinitializer
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%d:\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c" %d\00", align 1

define i32 @myabs(i32 %a) {
entry:
  %a.addr = alloca i32, align 4
  %retval = alloca i32, align 4
  store i32 %a, i32* %a.addr, align 4
  %0 = load i32, i32* %a.addr, align 4
  %1 = icmp sge i32 %0, 0
  br i1 %1, label %if.then0, label %if.else0

if.then0:                                         ; preds = %entry
  %2 = load i32, i32* %a.addr, align 4
  store i32 %2, i32* %retval, align 4
  br label %func_exit

if.else0:                                         ; preds = %entry
  %3 = sub i32 0, 1
  %4 = load i32, i32* %a.addr, align 4
  %5 = mul i32 %3, %4
  store i32 %5, i32* %retval, align 4
  br label %func_exit

func_exit:                                        ; preds = %if.else0, %if.then0
  %6 = load i32, i32* %retval, align 4
  ret i32 %6
}

define void @get(i32 %numi, i32 %numj, i32* %map, i32 %n) {
entry:
  %numi.addr = alloca i32, align 4
  %numj.addr = alloca i32, align 4
  store i32 %numi, i32* %numi.addr, align 4
  %0 = alloca i32*, align 8
  store i32 %numj, i32* %numj.addr, align 4
  store i32* %map, i32** %0, align 8
  %n.addr = alloca i32, align 4
  %1 = load i32*, i32** %0, align 8
  store i32 %n, i32* %n.addr, align 4
  %2 = alloca [12100 x i32], align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i1, align 1
  %8 = alloca i1, align 1
  %9 = alloca i1, align 1
  %10 = alloca i1, align 1
  %11 = getelementptr inbounds [12100 x i32], [12100 x i32]* @just, i32 0, i32 0
  %12 = getelementptr inbounds [12100 x i32], [12100 x i32]* %2, i32 0, i32 0
  store i32 0, i32* %3, align 4
  br label %while.cond0

while.cond0:                                      ; preds = %while.end0, %entry
  %13 = load i32, i32* %n.addr, align 4
  %14 = add i32 %13, 10
  %15 = load i32, i32* %3, align 4
  %16 = icmp slt i32 %15, %14
  br i1 %16, label %loop.body0, label %while.end1

loop.body0:                                       ; preds = %while.cond0
  store i32 0, i32* %4, align 4
  br label %while.cond1

while.end1:                                       ; preds = %while.cond0
  store i32 1, i32* %3, align 4
  br label %while.cond2

while.cond1:                                      ; preds = %loop.body1, %loop.body0
  %17 = load i32, i32* %n.addr, align 4
  %18 = add i32 %17, 10
  %19 = load i32, i32* %4, align 4
  %20 = icmp slt i32 %19, %18
  br i1 %20, label %loop.body1, label %while.end0

loop.body1:                                       ; preds = %while.cond1
  %21 = load i32, i32* %3, align 4
  %22 = mul i32 110, %21
  %23 = getelementptr inbounds i32, i32* %12, i32 %22
  %24 = load i32, i32* %4, align 4
  %25 = getelementptr inbounds i32, i32* %23, i32 %24
  store i32 1, i32* %25, align 4
  %26 = load i32, i32* %4, align 4
  %27 = add i32 %26, 1
  store i32 %27, i32* %4, align 4
  br label %while.cond1

while.end0:                                       ; preds = %while.cond1
  %28 = load i32, i32* %3, align 4
  %29 = add i32 %28, 1
  store i32 %29, i32* %3, align 4
  br label %while.cond0

while.cond2:                                      ; preds = %while.end2, %while.end1
  %30 = load i32, i32* %n.addr, align 4
  %31 = sub i32 %30, 1
  %32 = load i32, i32* %3, align 4
  %33 = icmp sle i32 %32, %31
  br i1 %33, label %loop.body2, label %while.end3

loop.body2:                                       ; preds = %while.cond2
  store i32 1, i32* %4, align 4
  br label %while.cond3

while.end3:                                       ; preds = %while.cond2
  store i32 0, i32* %3, align 4
  br label %while.cond4

while.cond3:                                      ; preds = %if.end0, %loop.body2
  %34 = load i32, i32* %n.addr, align 4
  %35 = sub i32 %34, 1
  %36 = load i32, i32* %4, align 4
  %37 = icmp sle i32 %36, %35
  br i1 %37, label %loop.body3, label %while.end2

loop.body3:                                       ; preds = %while.cond3
  %38 = load i32, i32* %3, align 4
  %39 = load i32, i32* %numi.addr, align 4
  %40 = icmp sge i32 %38, %39
  %41 = icmp ne i1 false, %40
  br i1 %41, label %lhs.true0, label %lhs.false0

while.end2:                                       ; preds = %while.cond3
  %42 = load i32, i32* %3, align 4
  %43 = add i32 %42, 1
  store i32 %43, i32* %3, align 4
  br label %while.cond2

if.then0:                                         ; preds = %land.end0
  %44 = load i32, i32* %3, align 4
  %45 = mul i32 110, %44
  %46 = getelementptr inbounds i32, i32* %12, i32 %45
  %47 = load i32, i32* %4, align 4
  %48 = getelementptr inbounds i32, i32* %46, i32 %47
  %49 = load i32, i32* %3, align 4
  %50 = add i32 %49, 1
  %51 = mul i32 110, %50
  %52 = getelementptr inbounds i32, i32* %1, i32 %51
  %53 = load i32, i32* %4, align 4
  %54 = getelementptr inbounds i32, i32* %52, i32 %53
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %48, align 4
  br label %if.end0

if.else0:                                         ; preds = %land.end0
  %56 = load i32, i32* %3, align 4
  %57 = load i32, i32* %numi.addr, align 4
  %58 = icmp sge i32 %56, %57
  %59 = icmp ne i1 false, %58
  br i1 %59, label %lhs.true1, label %lhs.false1

if.end0:                                          ; preds = %land.end1, %if.then3, %if.then2, %if.then1, %if.then0
  %60 = load i32, i32* %4, align 4
  %61 = add i32 %60, 1
  store i32 %61, i32* %4, align 4
  br label %while.cond3

lhs.true0:                                        ; preds = %loop.body3
  %62 = load i32, i32* %4, align 4
  %63 = load i32, i32* %numj.addr, align 4
  %64 = icmp slt i32 %62, %63
  %65 = and i1 %40, %64
  store i1 %65, i1* %7, align 1
  br label %land.end0

lhs.false0:                                       ; preds = %loop.body3
  store i1 %40, i1* %7, align 1
  br label %land.end0

land.end0:                                        ; preds = %lhs.false0, %lhs.true0
  %66 = load i1, i1* %7, align 1
  %67 = icmp ne i1 false, %66
  br i1 %67, label %if.then0, label %if.else0

if.then1:                                         ; preds = %land.end2
  %68 = load i32, i32* %3, align 4
  %69 = mul i32 110, %68
  %70 = getelementptr inbounds i32, i32* %12, i32 %69
  %71 = load i32, i32* %4, align 4
  %72 = getelementptr inbounds i32, i32* %70, i32 %71
  %73 = load i32, i32* %3, align 4
  %74 = add i32 %73, 1
  %75 = mul i32 110, %74
  %76 = getelementptr inbounds i32, i32* %1, i32 %75
  %77 = load i32, i32* %4, align 4
  %78 = add i32 %77, 1
  %79 = getelementptr inbounds i32, i32* %76, i32 %78
  %80 = load i32, i32* %79, align 4
  store i32 %80, i32* %72, align 4
  br label %if.end0

if.else1:                                         ; preds = %land.end2
  %81 = load i32, i32* %3, align 4
  %82 = load i32, i32* %numi.addr, align 4
  %83 = icmp slt i32 %81, %82
  %84 = icmp ne i1 false, %83
  br i1 %84, label %lhs.true2, label %lhs.false2

lhs.true1:                                        ; preds = %if.else0
  %85 = load i32, i32* %4, align 4
  %86 = load i32, i32* %numj.addr, align 4
  %87 = icmp sge i32 %85, %86
  %88 = and i1 %58, %87
  store i1 %88, i1* %8, align 1
  br label %land.end2

lhs.false1:                                       ; preds = %if.else0
  store i1 %58, i1* %8, align 1
  br label %land.end2

land.end2:                                        ; preds = %lhs.false1, %lhs.true1
  %89 = load i1, i1* %8, align 1
  %90 = icmp ne i1 false, %89
  br i1 %90, label %if.then1, label %if.else1

if.then2:                                         ; preds = %land.end3
  %91 = load i32, i32* %3, align 4
  %92 = mul i32 110, %91
  %93 = getelementptr inbounds i32, i32* %12, i32 %92
  %94 = load i32, i32* %4, align 4
  %95 = getelementptr inbounds i32, i32* %93, i32 %94
  %96 = load i32, i32* %3, align 4
  %97 = mul i32 110, %96
  %98 = getelementptr inbounds i32, i32* %1, i32 %97
  %99 = load i32, i32* %4, align 4
  %100 = add i32 %99, 1
  %101 = getelementptr inbounds i32, i32* %98, i32 %100
  %102 = load i32, i32* %101, align 4
  store i32 %102, i32* %95, align 4
  br label %if.end0

if.else2:                                         ; preds = %land.end3
  %103 = load i32, i32* %3, align 4
  %104 = load i32, i32* %numi.addr, align 4
  %105 = icmp slt i32 %103, %104
  %106 = icmp ne i1 false, %105
  br i1 %106, label %lhs.true3, label %lhs.false3

lhs.true2:                                        ; preds = %if.else1
  %107 = load i32, i32* %4, align 4
  %108 = load i32, i32* %numj.addr, align 4
  %109 = icmp sge i32 %107, %108
  %110 = and i1 %83, %109
  store i1 %110, i1* %9, align 1
  br label %land.end3

lhs.false2:                                       ; preds = %if.else1
  store i1 %83, i1* %9, align 1
  br label %land.end3

land.end3:                                        ; preds = %lhs.false2, %lhs.true2
  %111 = load i1, i1* %9, align 1
  %112 = icmp ne i1 false, %111
  br i1 %112, label %if.then2, label %if.else2

if.then3:                                         ; preds = %land.end1
  %113 = load i32, i32* %3, align 4
  %114 = mul i32 110, %113
  %115 = getelementptr inbounds i32, i32* %12, i32 %114
  %116 = load i32, i32* %4, align 4
  %117 = getelementptr inbounds i32, i32* %115, i32 %116
  %118 = load i32, i32* %3, align 4
  %119 = mul i32 110, %118
  %120 = getelementptr inbounds i32, i32* %1, i32 %119
  %121 = load i32, i32* %4, align 4
  %122 = getelementptr inbounds i32, i32* %120, i32 %121
  %123 = load i32, i32* %122, align 4
  store i32 %123, i32* %117, align 4
  br label %if.end0

lhs.true3:                                        ; preds = %if.else2
  %124 = load i32, i32* %4, align 4
  %125 = load i32, i32* %numj.addr, align 4
  %126 = icmp slt i32 %124, %125
  %127 = and i1 %105, %126
  store i1 %127, i1* %10, align 1
  br label %land.end1

lhs.false3:                                       ; preds = %if.else2
  store i1 %105, i1* %10, align 1
  br label %land.end1

land.end1:                                        ; preds = %lhs.false3, %lhs.true3
  %128 = load i1, i1* %10, align 1
  %129 = icmp ne i1 false, %128
  br i1 %129, label %if.then3, label %if.end0

while.cond4:                                      ; preds = %while.end4, %while.end3
  %130 = load i32, i32* %n.addr, align 4
  %131 = sub i32 %130, 1
  %132 = load i32, i32* %3, align 4
  %133 = icmp sle i32 %132, %131
  br i1 %133, label %loop.body4, label %while.end5

loop.body4:                                       ; preds = %while.cond4
  store i32 0, i32* %4, align 4
  br label %while.cond5

while.end5:                                       ; preds = %while.cond4
  ret void

while.cond5:                                      ; preds = %loop.body5, %loop.body4
  %134 = load i32, i32* %n.addr, align 4
  %135 = sub i32 %134, 1
  %136 = load i32, i32* %4, align 4
  %137 = icmp sle i32 %136, %135
  br i1 %137, label %loop.body5, label %while.end4

loop.body5:                                       ; preds = %while.cond5
  %138 = load i32, i32* %3, align 4
  %139 = mul i32 110, %138
  %140 = getelementptr inbounds i32, i32* %11, i32 %139
  %141 = load i32, i32* %4, align 4
  %142 = getelementptr inbounds i32, i32* %140, i32 %141
  %143 = load i32, i32* %3, align 4
  %144 = mul i32 110, %143
  %145 = getelementptr inbounds i32, i32* %12, i32 %144
  %146 = load i32, i32* %4, align 4
  %147 = getelementptr inbounds i32, i32* %145, i32 %146
  %148 = load i32, i32* %147, align 4
  store i32 %148, i32* %142, align 4
  %149 = load i32, i32* %4, align 4
  %150 = add i32 %149, 1
  store i32 %150, i32* %4, align 4
  br label %while.cond5

while.end4:                                       ; preds = %while.cond5
  %151 = load i32, i32* %3, align 4
  %152 = add i32 %151, 1
  store i32 %152, i32* %3, align 4
  br label %while.cond4
}

define i32 @getans(i32 %nn) {
entry:
  %nn.addr = alloca i32, align 4
  %retval = alloca i32, align 4
  store i32 %nn, i32* %nn.addr, align 4
  %0 = alloca [12100 x i32], align 4
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds [12100 x i32], [12100 x i32]* @just, i32 0, i32 0
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds [12100 x i32], [12100 x i32]* %0, i32 0, i32 0
  store i32 1, i32* %1, align 4
  br label %while.cond0

while.cond0:                                      ; preds = %while.end0, %entry
  %7 = load i32, i32* %1, align 4
  %8 = load i32, i32* %nn.addr, align 4
  %9 = icmp sle i32 %7, %8
  br i1 %9, label %loop.body0, label %while.end1

loop.body0:                                       ; preds = %while.cond0
  store i32 1, i32* %2, align 4
  br label %while.cond1

while.end1:                                       ; preds = %while.cond0
  %10 = load i32, i32* %nn.addr, align 4
  %11 = icmp eq i32 %10, 2
  br i1 %11, label %if.then0, label %if.else0

while.cond1:                                      ; preds = %loop.body1, %loop.body0
  %12 = load i32, i32* %2, align 4
  %13 = load i32, i32* %nn.addr, align 4
  %14 = icmp sle i32 %12, %13
  br i1 %14, label %loop.body1, label %while.end0

loop.body1:                                       ; preds = %while.cond1
  %15 = load i32, i32* %1, align 4
  %16 = mul i32 110, %15
  %17 = getelementptr inbounds i32, i32* %6, i32 %16
  %18 = load i32, i32* %2, align 4
  %19 = getelementptr inbounds i32, i32* %17, i32 %18
  %20 = load i32, i32* %1, align 4
  %21 = mul i32 110, %20
  %22 = getelementptr inbounds i32, i32* %3, i32 %21
  %23 = load i32, i32* %2, align 4
  %24 = getelementptr inbounds i32, i32* %22, i32 %23
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %19, align 4
  %26 = load i32, i32* %2, align 4
  %27 = add i32 %26, 1
  store i32 %27, i32* %2, align 4
  br label %while.cond1

while.end0:                                       ; preds = %while.cond1
  %28 = load i32, i32* %1, align 4
  %29 = add i32 %28, 1
  store i32 %29, i32* %1, align 4
  br label %while.cond0

if.then0:                                         ; preds = %while.end1
  %30 = mul i32 110, 1
  %31 = getelementptr inbounds i32, i32* %6, i32 %30
  %32 = getelementptr inbounds i32, i32* %31, i32 1
  %33 = mul i32 110, 2
  %34 = getelementptr inbounds i32, i32* %6, i32 %33
  %35 = getelementptr inbounds i32, i32* %34, i32 2
  %36 = load i32, i32* %32, align 4
  %37 = load i32, i32* %35, align 4
  %38 = mul i32 %36, %37
  %39 = mul i32 110, 1
  %40 = getelementptr inbounds i32, i32* %6, i32 %39
  %41 = getelementptr inbounds i32, i32* %40, i32 2
  %42 = mul i32 110, 2
  %43 = getelementptr inbounds i32, i32* %6, i32 %42
  %44 = getelementptr inbounds i32, i32* %43, i32 1
  %45 = load i32, i32* %41, align 4
  %46 = load i32, i32* %44, align 4
  %47 = mul i32 %45, %46
  %48 = sub i32 %38, %47
  store i32 %48, i32* %retval, align 4
  br label %func_exit

if.else0:                                         ; preds = %while.end1
  %49 = load i32, i32* %nn.addr, align 4
  %50 = icmp eq i32 %49, 1
  br i1 %50, label %if.then1, label %if.else1

if.then1:                                         ; preds = %if.else0
  %51 = mul i32 110, 1
  %52 = getelementptr inbounds i32, i32* %6, i32 %51
  %53 = getelementptr inbounds i32, i32* %52, i32 1
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %retval, align 4
  br label %func_exit

if.else1:                                         ; preds = %if.else0
  store i32 0, i32* %4, align 4
  store i32 1, i32* %5, align 4
  br label %while.cond2

while.cond2:                                      ; preds = %if.end0, %if.else1
  %55 = load i32, i32* %5, align 4
  %56 = load i32, i32* %nn.addr, align 4
  %57 = icmp sle i32 %55, %56
  br i1 %57, label %loop.body2, label %while.end2

loop.body2:                                       ; preds = %while.cond2
  %58 = load i32, i32* %5, align 4
  %59 = load i32, i32* %nn.addr, align 4
  call void @get(i32 1, i32 %58, i32* %6, i32 %59)
  %60 = load i32, i32* %5, align 4
  %61 = srem i32 %60, 2
  %62 = icmp eq i32 %61, 1
  br i1 %62, label %if.then2, label %if.else2

while.end2:                                       ; preds = %while.cond2
  %63 = load i32, i32* %4, align 4
  store i32 %63, i32* %retval, align 4
  br label %func_exit

if.then2:                                         ; preds = %loop.body2
  %64 = mul i32 110, 1
  %65 = getelementptr inbounds i32, i32* %6, i32 %64
  %66 = load i32, i32* %5, align 4
  %67 = getelementptr inbounds i32, i32* %65, i32 %66
  %68 = load i32, i32* %nn.addr, align 4
  %69 = sub i32 %68, 1
  %70 = call i32 @getans(i32 %69)
  %71 = load i32, i32* %67, align 4
  %72 = mul i32 %71, %70
  %73 = load i32, i32* %4, align 4
  %74 = add i32 %73, %72
  store i32 %74, i32* %4, align 4
  br label %if.end0

if.else2:                                         ; preds = %loop.body2
  %75 = mul i32 110, 1
  %76 = getelementptr inbounds i32, i32* %6, i32 %75
  %77 = load i32, i32* %5, align 4
  %78 = getelementptr inbounds i32, i32* %76, i32 %77
  %79 = load i32, i32* %nn.addr, align 4
  %80 = sub i32 %79, 1
  %81 = call i32 @getans(i32 %80)
  %82 = load i32, i32* %78, align 4
  %83 = mul i32 %82, %81
  %84 = load i32, i32* %4, align 4
  %85 = sub i32 %84, %83
  store i32 %85, i32* %4, align 4
  br label %if.end0

if.end0:                                          ; preds = %if.else2, %if.then2
  %86 = load i32, i32* %5, align 4
  %87 = add i32 %86, 1
  store i32 %87, i32* %5, align 4
  br label %while.cond2

func_exit:                                        ; preds = %while.end2, %if.then1, %if.then0
  %88 = load i32, i32* %retval, align 4
  ret i32 %88
}

define i32 @gcd(i32 %m, i32 %n) {
entry:
  %m.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  store i32 %m, i32* %m.addr, align 4
  %retval = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  %0 = load i32, i32* %m.addr, align 4
  %1 = load i32, i32* %n.addr, align 4
  %2 = icmp slt i32 %0, %1
  br i1 %2, label %if.then0, label %if.end0

if.then0:                                         ; preds = %entry
  %3 = load i32, i32* %n.addr, align 4
  %4 = load i32, i32* %m.addr, align 4
  %5 = call i32 @gcd(i32 %3, i32 %4)
  br label %if.end0

if.end0:                                          ; preds = %if.then0, %entry
  %6 = load i32, i32* %n.addr, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %if.then1, label %if.else0

if.then1:                                         ; preds = %if.end0
  %8 = load i32, i32* %m.addr, align 4
  store i32 %8, i32* %retval, align 4
  br label %func_exit

if.else0:                                         ; preds = %if.end0
  %9 = load i32, i32* %m.addr, align 4
  %10 = load i32, i32* %n.addr, align 4
  %11 = srem i32 %9, %10
  %12 = load i32, i32* %n.addr, align 4
  %13 = call i32 @gcd(i32 %12, i32 %11)
  store i32 %13, i32* %retval, align 4
  br label %func_exit

func_exit:                                        ; preds = %if.else0, %if.then1
  %14 = load i32, i32* %retval, align 4
  ret i32 %14
}

define void @final(i32 %n, i32 %m) {
entry:
  %n.addr = alloca i32, align 4
  %m.addr = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  store i32 %m, i32* %m.addr, align 4
  %0 = alloca i1, align 1
  %1 = load i32, i32* %n.addr, align 4
  %2 = load i32, i32* %m.addr, align 4
  %3 = mul i32 %1, %2
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %if.then0, label %if.end0

if.then0:                                         ; preds = %entry
  call void @putch(i32 45)
  %5 = load i32, i32* %n.addr, align 4
  %6 = call i32 @myabs(i32 %5)
  %7 = load i32, i32* %m.addr, align 4
  %8 = call i32 @myabs(i32 %7)
  call void @final(i32 %6, i32 %8)
  br label %func_exit

if.end0:                                          ; preds = %entry
  %9 = load i32, i32* %m.addr, align 4
  %10 = icmp eq i32 %9, 1
  br i1 %10, label %if.then1, label %if.else0

if.then1:                                         ; preds = %if.end0
  %11 = load i32, i32* %n.addr, align 4
  call void @putint(i32 %11)
  call void @putch(i32 32)
  call void @putch(i32 32)
  br label %func_exit

if.else0:                                         ; preds = %if.end0
  %12 = load i32, i32* %n.addr, align 4
  %13 = load i32, i32* %m.addr, align 4
  %14 = srem i32 %12, %13
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %if.then2, label %if.else1

if.then2:                                         ; preds = %if.else0
  %16 = load i32, i32* %n.addr, align 4
  %17 = load i32, i32* %m.addr, align 4
  %18 = sdiv i32 %16, %17
  call void @putint(i32 %18)
  call void @putch(i32 32)
  call void @putch(i32 32)
  br label %func_exit

if.else1:                                         ; preds = %if.else0
  %19 = load i32, i32* %n.addr, align 4
  %20 = icmp slt i32 %19, 0
  %21 = icmp ne i1 false, %20
  br i1 %21, label %lhs.true0, label %lhs.false0

if.then3:                                         ; preds = %land.end0
  %22 = load i32, i32* %n.addr, align 4
  %23 = sub i32 0, %22
  store i32 %23, i32* %n.addr, align 4
  %24 = load i32, i32* %m.addr, align 4
  %25 = sub i32 0, %24
  store i32 %25, i32* %m.addr, align 4
  br label %if.end1

if.end1:                                          ; preds = %land.end0, %if.then3
  %26 = load i32, i32* %n.addr, align 4
  %27 = load i32, i32* %m.addr, align 4
  %28 = call i32 @gcd(i32 %26, i32 %27)
  %29 = load i32, i32* %n.addr, align 4
  %30 = sdiv i32 %29, %28
  call void @putint(i32 %30)
  call void @putch(i32 47)
  %31 = load i32, i32* %n.addr, align 4
  %32 = load i32, i32* %m.addr, align 4
  %33 = call i32 @gcd(i32 %31, i32 %32)
  %34 = load i32, i32* %m.addr, align 4
  %35 = sdiv i32 %34, %33
  call void @putint(i32 %35)
  call void @putch(i32 32)
  call void @putch(i32 32)
  br label %func_exit

lhs.true0:                                        ; preds = %if.else1
  %36 = load i32, i32* %m.addr, align 4
  %37 = icmp slt i32 %36, 0
  %38 = and i1 %20, %37
  store i1 %38, i1* %0, align 1
  br label %land.end0

lhs.false0:                                       ; preds = %if.else1
  store i1 %20, i1* %0, align 1
  br label %land.end0

land.end0:                                        ; preds = %lhs.false0, %lhs.true0
  %39 = load i1, i1* %0, align 1
  %40 = icmp ne i1 false, %39
  br i1 %40, label %if.then3, label %if.end1

func_exit:                                        ; preds = %if.end1, %if.then2, %if.then1, %if.then0
  ret void
}

define i32 @main() {
entry:
  %retval = alloca i32, align 4
  %0 = getelementptr inbounds [12100 x i32], [12100 x i32]* @map1, i32 0, i32 0
  %1 = alloca i32, align 4
  %2 = getelementptr inbounds [12100 x i32], [12100 x i32]* @just, i32 0, i32 0
  %3 = alloca i32, align 4
  %4 = alloca [12100 x i32], align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = call i32 @getint()
  store i32 %7, i32* @n, align 4
  store i32 0, i32* @i, align 4
  br label %while.cond0

while.cond0:                                      ; preds = %while.end0, %entry
  %8 = load i32, i32* @n, align 4
  %9 = add i32 %8, 10
  %10 = load i32, i32* @i, align 4
  %11 = icmp slt i32 %10, %9
  br i1 %11, label %loop.body0, label %while.end1

loop.body0:                                       ; preds = %while.cond0
  store i32 0, i32* @j, align 4
  br label %while.cond1

while.end1:                                       ; preds = %while.cond0
  store i32 0, i32* %1, align 4
  store i32 1, i32* @i, align 4
  br label %while.cond2

while.cond1:                                      ; preds = %loop.body1, %loop.body0
  %12 = load i32, i32* @n, align 4
  %13 = add i32 %12, 10
  %14 = load i32, i32* @j, align 4
  %15 = icmp slt i32 %14, %13
  br i1 %15, label %loop.body1, label %while.end0

loop.body1:                                       ; preds = %while.cond1
  %16 = load i32, i32* @i, align 4
  %17 = mul i32 110, %16
  %18 = getelementptr inbounds i32, i32* %0, i32 %17
  %19 = load i32, i32* @j, align 4
  %20 = getelementptr inbounds i32, i32* %18, i32 %19
  store i32 1, i32* %20, align 4
  %21 = load i32, i32* @j, align 4
  %22 = add i32 %21, 1
  store i32 %22, i32* @j, align 4
  br label %while.cond1

while.end0:                                       ; preds = %while.cond1
  %23 = load i32, i32* @i, align 4
  %24 = add i32 %23, 1
  store i32 %24, i32* @i, align 4
  br label %while.cond0

while.cond2:                                      ; preds = %while.end2, %while.end1
  %25 = load i32, i32* @i, align 4
  %26 = load i32, i32* @n, align 4
  %27 = icmp sle i32 %25, %26
  br i1 %27, label %loop.body2, label %while.end3

loop.body2:                                       ; preds = %while.cond2
  store i32 1, i32* @j, align 4
  br label %while.cond3

while.end3:                                       ; preds = %while.cond2
  %28 = load i32, i32* @n, align 4
  %29 = call i32 @getans(i32 %28)
  store i32 %29, i32* %3, align 4
  %30 = load i32, i32* %3, align 4
  call void @putint(i32 %30)
  call void @putch(i32 10)
  %31 = getelementptr inbounds [12100 x i32], [12100 x i32]* %4, i32 0, i32 0
  store i32 1, i32* @i, align 4
  br label %while.cond4

while.cond3:                                      ; preds = %loop.body3, %loop.body2
  %32 = load i32, i32* @j, align 4
  %33 = load i32, i32* @n, align 4
  %34 = icmp sle i32 %32, %33
  br i1 %34, label %loop.body3, label %while.end2

loop.body3:                                       ; preds = %while.cond3
  %35 = load i32, i32* @i, align 4
  %36 = mul i32 110, %35
  %37 = getelementptr inbounds i32, i32* %0, i32 %36
  %38 = load i32, i32* @j, align 4
  %39 = getelementptr inbounds i32, i32* %37, i32 %38
  %40 = call i32 @getint()
  store i32 %40, i32* %39, align 4
  %41 = load i32, i32* @i, align 4
  %42 = mul i32 110, %41
  %43 = getelementptr inbounds i32, i32* %2, i32 %42
  %44 = load i32, i32* @j, align 4
  %45 = getelementptr inbounds i32, i32* %43, i32 %44
  %46 = load i32, i32* @i, align 4
  %47 = mul i32 110, %46
  %48 = getelementptr inbounds i32, i32* %0, i32 %47
  %49 = load i32, i32* @j, align 4
  %50 = getelementptr inbounds i32, i32* %48, i32 %49
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %45, align 4
  %52 = load i32, i32* @j, align 4
  %53 = add i32 %52, 1
  store i32 %53, i32* @j, align 4
  br label %while.cond3

while.end2:                                       ; preds = %while.cond3
  %54 = load i32, i32* @i, align 4
  %55 = add i32 %54, 1
  store i32 %55, i32* @i, align 4
  br label %while.cond2

while.cond4:                                      ; preds = %while.end4, %while.end3
  %56 = load i32, i32* @i, align 4
  %57 = load i32, i32* @n, align 4
  %58 = icmp sle i32 %56, %57
  br i1 %58, label %loop.body4, label %while.end5

loop.body4:                                       ; preds = %while.cond4
  store i32 1, i32* @j, align 4
  br label %while.cond5

while.end5:                                       ; preds = %while.cond4
  %59 = load i32, i32* @n, align 4
  %60 = call i32 @getans(i32 %59)
  store i32 %60, i32* %5, align 4
  %61 = load i32, i32* %5, align 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %if.then0, label %if.end0

while.cond5:                                      ; preds = %loop.body5, %loop.body4
  %63 = load i32, i32* @j, align 4
  %64 = load i32, i32* @n, align 4
  %65 = icmp sle i32 %63, %64
  br i1 %65, label %loop.body5, label %while.end4

loop.body5:                                       ; preds = %while.cond5
  %66 = load i32, i32* @i, align 4
  %67 = mul i32 110, %66
  %68 = getelementptr inbounds i32, i32* %31, i32 %67
  %69 = load i32, i32* @j, align 4
  %70 = getelementptr inbounds i32, i32* %68, i32 %69
  %71 = load i32, i32* @j, align 4
  %72 = mul i32 110, %71
  %73 = getelementptr inbounds i32, i32* %0, i32 %72
  %74 = load i32, i32* @i, align 4
  %75 = getelementptr inbounds i32, i32* %73, i32 %74
  %76 = load i32, i32* %75, align 4
  store i32 %76, i32* %70, align 4
  %77 = load i32, i32* @i, align 4
  %78 = mul i32 110, %77
  %79 = getelementptr inbounds i32, i32* %2, i32 %78
  %80 = load i32, i32* @j, align 4
  %81 = getelementptr inbounds i32, i32* %79, i32 %80
  %82 = load i32, i32* @i, align 4
  %83 = mul i32 110, %82
  %84 = getelementptr inbounds i32, i32* %31, i32 %83
  %85 = load i32, i32* @j, align 4
  %86 = getelementptr inbounds i32, i32* %84, i32 %85
  %87 = load i32, i32* %86, align 4
  store i32 %87, i32* %81, align 4
  %88 = load i32, i32* @j, align 4
  %89 = add i32 %88, 1
  store i32 %89, i32* @j, align 4
  br label %while.cond5

while.end4:                                       ; preds = %while.cond5
  %90 = load i32, i32* @i, align 4
  %91 = add i32 %90, 1
  store i32 %91, i32* @i, align 4
  br label %while.cond4

if.then0:                                         ; preds = %while.end5
  call void @putch(i32 69)
  br label %if.end0

if.end0:                                          ; preds = %if.then0, %while.end5
  store i32 0, i32* %6, align 4
  store i32 1, i32* @i, align 4
  br label %while.cond6

while.cond6:                                      ; preds = %while.end6, %if.end0
  %92 = load i32, i32* @i, align 4
  %93 = load i32, i32* @n, align 4
  %94 = icmp sle i32 %92, %93
  br i1 %94, label %loop.body6, label %while.end7

loop.body6:                                       ; preds = %while.cond6
  store i32 1, i32* @j, align 4
  br label %while.cond7

while.end7:                                       ; preds = %while.cond6
  store i32 0, i32* %retval, align 4
  %95 = load i32, i32* %retval, align 4
  ret i32 %95

while.cond7:                                      ; preds = %if.end1, %loop.body6
  %96 = load i32, i32* @j, align 4
  %97 = load i32, i32* @n, align 4
  %98 = icmp sle i32 %96, %97
  br i1 %98, label %loop.body7, label %while.end6

loop.body7:                                       ; preds = %while.cond7
  %99 = load i32, i32* @i, align 4
  %100 = load i32, i32* @j, align 4
  %101 = load i32, i32* @n, align 4
  call void @get(i32 %99, i32 %100, i32* %31, i32 %101)
  %102 = load i32, i32* @i, align 4
  %103 = load i32, i32* @j, align 4
  %104 = add i32 %102, %103
  %105 = srem i32 %104, 2
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %if.then1, label %if.else0

while.end6:                                       ; preds = %while.cond7
  call void @putch(i32 10)
  %107 = load i32, i32* @i, align 4
  %108 = add i32 %107, 1
  store i32 %108, i32* @i, align 4
  br label %while.cond6

if.then1:                                         ; preds = %loop.body7
  %109 = load i32, i32* @n, align 4
  %110 = sub i32 %109, 1
  %111 = call i32 @getans(i32 %110)
  %112 = load i32, i32* %3, align 4
  call void @final(i32 %111, i32 %112)
  br label %if.end1

if.else0:                                         ; preds = %loop.body7
  %113 = sub i32 0, 1
  %114 = load i32, i32* @n, align 4
  %115 = sub i32 %114, 1
  %116 = call i32 @getans(i32 %115)
  %117 = mul i32 %113, %116
  %118 = load i32, i32* %3, align 4
  call void @final(i32 %117, i32 %118)
  br label %if.end1

if.end1:                                          ; preds = %if.else0, %if.then1
  %119 = load i32, i32* @j, align 4
  %120 = add i32 %119, 1
  store i32 %120, i32* @j, align 4
  br label %while.cond7
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
