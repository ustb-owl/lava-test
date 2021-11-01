@_map1 = global [12100 x i32] zeroinitializer

@_i = global i32 zeroinitializer

@_j = global i32 zeroinitializer

@_k = global i32 zeroinitializer

@_l = global i32 zeroinitializer

@_m = global i32 zeroinitializer

@_n = global i32 zeroinitializer

@_p = global i32 zeroinitializer

@_vis = global [12100 x i32] zeroinitializer

@_num = global i32 zeroinitializer

@_just = global [12100 x i32] zeroinitializer

@_just2 = global [12100 x i32] zeroinitializer

declare i32 @getint()
declare void @putint(i32 %n)
declare void @putch(i32 %c)
define i32 @myabs(i32 %a) {
_entry:
	%_glob_map1 = getelementptr inbounds [12100 x i32] , [12100 x i32] * @_map1, i32 0, i32 0
	%_glob_i = getelementptr inbounds i32 , i32 * @_i, i32 0
	%_glob_j = getelementptr inbounds i32 , i32 * @_j, i32 0
	%_glob_k = getelementptr inbounds i32 , i32 * @_k, i32 0
	%_glob_l = getelementptr inbounds i32 , i32 * @_l, i32 0
	%_glob_m = getelementptr inbounds i32 , i32 * @_m, i32 0
	%_glob_n = getelementptr inbounds i32 , i32 * @_n, i32 0
	%_glob_p = getelementptr inbounds i32 , i32 * @_p, i32 0
	%_glob_vis = getelementptr inbounds [12100 x i32] , [12100 x i32] * @_vis, i32 0, i32 0
	%_glob_num = getelementptr inbounds i32 , i32 * @_num, i32 0
	%_glob_just = getelementptr inbounds [12100 x i32] , [12100 x i32] * @_just, i32 0, i32 0
	%_glob_just2 = getelementptr inbounds [12100 x i32] , [12100 x i32] * @_just2, i32 0, i32 0
	br label %_0
_0: ; preds = 
	%t0 = icmp sge i32 %a, 0
	%x1 = zext i1 %t0 to i32
	; if %x1 then _1 else _2
	%t2 = icmp ne i32 %x1, 0
	br i1 %t2, label %_1, label %_2
_1: ; preds = %_0
	ret i32 %a
_2: ; preds = %_0
	%x3 = mul i32 %a, -1
	ret i32 %x3
}

define void @init_vis() {
_entry:
	%_glob_map1 = getelementptr inbounds [12100 x i32] , [12100 x i32] * @_map1, i32 0, i32 0
	%_glob_i = getelementptr inbounds i32 , i32 * @_i, i32 0
	%_glob_j = getelementptr inbounds i32 , i32 * @_j, i32 0
	%_glob_k = getelementptr inbounds i32 , i32 * @_k, i32 0
	%_glob_l = getelementptr inbounds i32 , i32 * @_l, i32 0
	%_glob_m = getelementptr inbounds i32 , i32 * @_m, i32 0
	%_glob_n = getelementptr inbounds i32 , i32 * @_n, i32 0
	%_glob_p = getelementptr inbounds i32 , i32 * @_p, i32 0
	%_glob_vis = getelementptr inbounds [12100 x i32] , [12100 x i32] * @_vis, i32 0, i32 0
	%_glob_num = getelementptr inbounds i32 , i32 * @_num, i32 0
	%_glob_just = getelementptr inbounds [12100 x i32] , [12100 x i32] * @_just, i32 0, i32 0
	%_glob_just2 = getelementptr inbounds [12100 x i32] , [12100 x i32] * @_just2, i32 0, i32 0
	br label %_0
_0: ; preds = 
	br label %_1
_1: ; preds = %_0, %_3
	%x0 = phi i32 [0, %_0], [%x1, %_3]
	; getelementptr 2
	%t3 = mul i32 %x0, 110
	%x2 = getelementptr inbounds i32, i32* %_glob_vis, i32 %t3
	br label %_2
_2: ; preds = %_1, %_2
	%x4 = phi i32 [0, %_1], [%x5, %_2]
	; store 6
	%t7 = getelementptr inbounds i32, i32* %x2, i32 %x4
	store i32 0, i32* %t7, align 4
	%x5 = add i32 %x4, 1
	%t8 = icmp slt i32 %x5, 110
	%x9 = zext i1 %t8 to i32
	; if %x9 then _2 else _3
	%t10 = icmp ne i32 %x9, 0
	br i1 %t10, label %_2, label %_3
_3: ; preds = %_2
	%x1 = add i32 %x0, 1
	%t11 = icmp slt i32 %x1, 110
	%x12 = zext i1 %t11 to i32
	; if %x12 then _1 else _4
	%t13 = icmp ne i32 %x12, 0
	br i1 %t13, label %_1, label %_4
_4: ; preds = %_3
	ret void
}

define void @get(i32 %numi, i32 %numj, i32 * %map, i32 %n) {
_entry:
	%_glob_map1 = getelementptr inbounds [12100 x i32] , [12100 x i32] * @_map1, i32 0, i32 0
	%_glob_i = getelementptr inbounds i32 , i32 * @_i, i32 0
	%_glob_j = getelementptr inbounds i32 , i32 * @_j, i32 0
	%_glob_k = getelementptr inbounds i32 , i32 * @_k, i32 0
	%_glob_l = getelementptr inbounds i32 , i32 * @_l, i32 0
	%_glob_m = getelementptr inbounds i32 , i32 * @_m, i32 0
	%_glob_n = getelementptr inbounds i32 , i32 * @_n, i32 0
	%_glob_p = getelementptr inbounds i32 , i32 * @_p, i32 0
	%_glob_vis = getelementptr inbounds [12100 x i32] , [12100 x i32] * @_vis, i32 0, i32 0
	%_glob_num = getelementptr inbounds i32 , i32 * @_num, i32 0
	%_glob_just = getelementptr inbounds [12100 x i32] , [12100 x i32] * @_just, i32 0, i32 0
	%_glob_just2 = getelementptr inbounds [12100 x i32] , [12100 x i32] * @_just2, i32 0, i32 0
	br label %_0
_0: ; preds = 
	%t0 = alloca [12100 x i32] , align 4
	%x1 = getelementptr inbounds [12100 x i32] , [12100 x i32] * %t0, i32 0, i32 0
	%x2 = add i32 %n, 10
	%t3 = icmp sgt i32 %x2, 0
	%x4 = zext i1 %t3 to i32
	; if %x4 then _1 else _4
	%t5 = icmp ne i32 %x4, 0
	br i1 %t5, label %_1, label %_4
_1: ; preds = %_0, %_3
	%x6 = phi i32 [0, %_0], [%x7, %_3]
	; getelementptr 8
	%t9 = mul i32 %x6, 110
	%x8 = getelementptr inbounds i32, i32* %x1, i32 %t9
	; if %x4 then _2 else _3
	%t10 = icmp ne i32 %x4, 0
	br i1 %t10, label %_2, label %_3
_2: ; preds = %_1, %_2
	%x11 = phi i32 [0, %_1], [%x12, %_2]
	; store 13
	%t14 = getelementptr inbounds i32, i32* %x8, i32 %x11
	store i32 1, i32* %t14, align 4
	%x12 = add i32 %x11, 1
	%t15 = icmp slt i32 %x12, %x2
	%x16 = zext i1 %t15 to i32
	; if %x16 then _2 else _3
	%t17 = icmp ne i32 %x16, 0
	br i1 %t17, label %_2, label %_3
_3: ; preds = %_1, %_2
	%x7 = add i32 %x6, 1
	%t18 = icmp slt i32 %x7, %x2
	%x19 = zext i1 %t18 to i32
	; if %x19 then _1 else _4
	%t20 = icmp ne i32 %x19, 0
	br i1 %t20, label %_1, label %_4
_4: ; preds = %_0, %_3
	%x21 = add i32 %n, -1
	%t22 = icmp sge i32 %x21, 1
	%x23 = zext i1 %t22 to i32
	; if %x23 then _5 else _24
	%t24 = icmp ne i32 %x23, 0
	br i1 %t24, label %_5, label %_24
_5: ; preds = %_4, %_23
	%x25 = phi i32 [1, %_4], [%x26, %_23]
	%t27 = icmp sge i32 %x25, %numi
	%x28 = zext i1 %t27 to i32
	%x26 = add i32 %x25, 1
	; getelementptr 29
	%t30 = mul i32 %x26, 110
	%x29 = getelementptr inbounds i32, i32* %map, i32 %t30
	%t31 = icmp slt i32 %x25, %numi
	%x32 = zext i1 %t31 to i32
	; getelementptr 33
	%t34 = mul i32 %x25, 110
	%x33 = getelementptr inbounds i32, i32* %map, i32 %t34
	; getelementptr 35
	%t36 = mul i32 %x25, 110
	%x35 = getelementptr inbounds i32, i32* %x1, i32 %t36
	; if %x23 then _6 else _23
	%t37 = icmp ne i32 %x23, 0
	br i1 %t37, label %_6, label %_23
_6: ; preds = %_5, %_11
	%x38 = phi i32 [1, %_5], [%x39, %_11]
	%t40 = icmp slt i32 %x38, %numj
	%x41 = zext i1 %t40 to i32
	; if %x28 then _7 else _8
	%t42 = icmp ne i32 %x28, 0
	br i1 %t42, label %_7, label %_8
_7: ; preds = %_6
	br label %_8
_8: ; preds = %_6, %_7
	%x43 = phi i32 [%x28, %_6], [%x41, %_7]
	%x39 = add i32 %x38, 1
	; if %x43 then _9 else _10
	%t44 = icmp ne i32 %x43, 0
	br i1 %t44, label %_9, label %_10
_9: ; preds = %_8
	%t45 = getelementptr inbounds i32, i32* %x29, i32 %x38
	%x46 = load i32, i32* %t45, align 4
	; store 47
	%t48 = getelementptr inbounds i32, i32* %x35, i32 %x38
	store i32 %x46, i32* %t48, align 4
	br label %_11
_10: ; preds = %_8
	%t49 = icmp sge i32 %x38, %numj
	%x50 = zext i1 %t49 to i32
	; if %x28 then _12 else _13
	%t51 = icmp ne i32 %x28, 0
	br i1 %t51, label %_12, label %_13
_11: ; preds = %_9, %_14, %_18, %_22, %_21
	%t52 = icmp sle i32 %x39, %x21
	%x53 = zext i1 %t52 to i32
	; if %x53 then _6 else _23
	%t54 = icmp ne i32 %x53, 0
	br i1 %t54, label %_6, label %_23
_12: ; preds = %_10
	br label %_13
_13: ; preds = %_10, %_12
	%x55 = phi i32 [%x28, %_10], [%x50, %_12]
	; if %x55 then _14 else _15
	%t56 = icmp ne i32 %x55, 0
	br i1 %t56, label %_14, label %_15
_14: ; preds = %_13
	%t57 = getelementptr inbounds i32, i32* %x29, i32 %x39
	%x58 = load i32, i32* %t57, align 4
	; store 59
	%t60 = getelementptr inbounds i32, i32* %x35, i32 %x38
	store i32 %x58, i32* %t60, align 4
	br label %_11
_15: ; preds = %_13
	; if %x32 then _16 else _17
	%t61 = icmp ne i32 %x32, 0
	br i1 %t61, label %_16, label %_17
_16: ; preds = %_15
	br label %_17
_17: ; preds = %_15, %_16
	%x62 = phi i32 [%x32, %_15], [%x50, %_16]
	; if %x62 then _18 else _19
	%t63 = icmp ne i32 %x62, 0
	br i1 %t63, label %_18, label %_19
_18: ; preds = %_17
	%t64 = getelementptr inbounds i32, i32* %x33, i32 %x39
	%x65 = load i32, i32* %t64, align 4
	; store 66
	%t67 = getelementptr inbounds i32, i32* %x35, i32 %x38
	store i32 %x65, i32* %t67, align 4
	br label %_11
_19: ; preds = %_17
	; if %x32 then _20 else _21
	%t68 = icmp ne i32 %x32, 0
	br i1 %t68, label %_20, label %_21
_20: ; preds = %_19
	br label %_21
_21: ; preds = %_19, %_20
	%x69 = phi i32 [%x32, %_19], [%x41, %_20]
	; if %x69 then _22 else _11
	%t70 = icmp ne i32 %x69, 0
	br i1 %t70, label %_22, label %_11
_22: ; preds = %_21
	%t71 = getelementptr inbounds i32, i32* %x33, i32 %x38
	%x72 = load i32, i32* %t71, align 4
	; store 73
	%t74 = getelementptr inbounds i32, i32* %x35, i32 %x38
	store i32 %x72, i32* %t74, align 4
	br label %_11
_23: ; preds = %_5, %_11
	%t75 = icmp sle i32 %x26, %x21
	%x76 = zext i1 %t75 to i32
	; if %x76 then _5 else _24
	%t77 = icmp ne i32 %x76, 0
	br i1 %t77, label %_5, label %_24
_24: ; preds = %_4, %_23
	%t78 = icmp sge i32 %x21, 0
	%x79 = zext i1 %t78 to i32
	; if %x79 then _25 else _28
	%t80 = icmp ne i32 %x79, 0
	br i1 %t80, label %_25, label %_28
_25: ; preds = %_24, %_27
	%x81 = phi i32 [0, %_24], [%x82, %_27]
	; getelementptr 83
	%t84 = mul i32 %x81, 110
	%x83 = getelementptr inbounds i32, i32* %x1, i32 %t84
	; getelementptr 85
	%t86 = mul i32 %x81, 110
	%x85 = getelementptr inbounds i32, i32* %_glob_just, i32 %t86
	; if %x79 then _26 else _27
	%t87 = icmp ne i32 %x79, 0
	br i1 %t87, label %_26, label %_27
_26: ; preds = %_25, %_26
	%x88 = phi i32 [0, %_25], [%x89, %_26]
	%t90 = getelementptr inbounds i32, i32* %x83, i32 %x88
	%x91 = load i32, i32* %t90, align 4
	; store 92
	%t93 = getelementptr inbounds i32, i32* %x85, i32 %x88
	store i32 %x91, i32* %t93, align 4
	%x89 = add i32 %x88, 1
	%t94 = icmp sle i32 %x89, %x21
	%x95 = zext i1 %t94 to i32
	; if %x95 then _26 else _27
	%t96 = icmp ne i32 %x95, 0
	br i1 %t96, label %_26, label %_27
_27: ; preds = %_25, %_26
	%x82 = add i32 %x81, 1
	%t97 = icmp sle i32 %x82, %x21
	%x98 = zext i1 %t97 to i32
	; if %x98 then _25 else _28
	%t99 = icmp ne i32 %x98, 0
	br i1 %t99, label %_25, label %_28
_28: ; preds = %_24, %_27
	ret void
}

define i32 @getans(i32 %nn) {
_entry:
	%_glob_map1 = getelementptr inbounds [12100 x i32] , [12100 x i32] * @_map1, i32 0, i32 0
	%_glob_i = getelementptr inbounds i32 , i32 * @_i, i32 0
	%_glob_j = getelementptr inbounds i32 , i32 * @_j, i32 0
	%_glob_k = getelementptr inbounds i32 , i32 * @_k, i32 0
	%_glob_l = getelementptr inbounds i32 , i32 * @_l, i32 0
	%_glob_m = getelementptr inbounds i32 , i32 * @_m, i32 0
	%_glob_n = getelementptr inbounds i32 , i32 * @_n, i32 0
	%_glob_p = getelementptr inbounds i32 , i32 * @_p, i32 0
	%_glob_vis = getelementptr inbounds [12100 x i32] , [12100 x i32] * @_vis, i32 0, i32 0
	%_glob_num = getelementptr inbounds i32 , i32 * @_num, i32 0
	%_glob_just = getelementptr inbounds [12100 x i32] , [12100 x i32] * @_just, i32 0, i32 0
	%_glob_just2 = getelementptr inbounds [12100 x i32] , [12100 x i32] * @_just2, i32 0, i32 0
	br label %_0
_0: ; preds = 
	%t0 = alloca [12100 x i32] , align 4
	%x1 = getelementptr inbounds [12100 x i32] , [12100 x i32] * %t0, i32 0, i32 0
	%t2 = icmp sge i32 %nn, 1
	%x3 = zext i1 %t2 to i32
	; if %x3 then _1 else _4
	%t4 = icmp ne i32 %x3, 0
	br i1 %t4, label %_1, label %_4
_1: ; preds = %_0, %_3
	%x5 = phi i32 [1, %_0], [%x6, %_3]
	; getelementptr 7
	%t8 = mul i32 %x5, 110
	%x7 = getelementptr inbounds i32, i32* %_glob_just, i32 %t8
	; getelementptr 9
	%t10 = mul i32 %x5, 110
	%x9 = getelementptr inbounds i32, i32* %x1, i32 %t10
	; if %x3 then _2 else _3
	%t11 = icmp ne i32 %x3, 0
	br i1 %t11, label %_2, label %_3
_2: ; preds = %_1, %_2
	%x12 = phi i32 [1, %_1], [%x13, %_2]
	%t14 = getelementptr inbounds i32, i32* %x7, i32 %x12
	%x15 = load i32, i32* %t14, align 4
	; store 16
	%t17 = getelementptr inbounds i32, i32* %x9, i32 %x12
	store i32 %x15, i32* %t17, align 4
	%x13 = add i32 %x12, 1
	%t18 = icmp sle i32 %x13, %nn
	%x19 = zext i1 %t18 to i32
	; if %x19 then _2 else _3
	%t20 = icmp ne i32 %x19, 0
	br i1 %t20, label %_2, label %_3
_3: ; preds = %_1, %_2
	%x6 = add i32 %x5, 1
	%t21 = icmp sle i32 %x6, %nn
	%x22 = zext i1 %t21 to i32
	; if %x22 then _1 else _4
	%t23 = icmp ne i32 %x22, 0
	br i1 %t23, label %_1, label %_4
_4: ; preds = %_0, %_3
	%t24 = icmp eq i32 %nn, 2
	%x25 = zext i1 %t24 to i32
	; getelementptr 26
	%t27 = mul i32 1, 110
	%x26 = getelementptr inbounds i32, i32* %x1, i32 %t27
	%t28 = getelementptr inbounds i32, i32* %x26, i32 1
	%x29 = load i32, i32* %t28, align 4
	; if %x25 then _5 else _6
	%t30 = icmp ne i32 %x25, 0
	br i1 %t30, label %_5, label %_6
_5: ; preds = %_4
	; getelementptr 31
	%t32 = mul i32 2, 110
	%x31 = getelementptr inbounds i32, i32* %x1, i32 %t32
	%t33 = getelementptr inbounds i32, i32* %x31, i32 2
	%x34 = load i32, i32* %t33, align 4
	%x35 = mul i32 %x29, %x34
	%t36 = getelementptr inbounds i32, i32* %x31, i32 1
	%x37 = load i32, i32* %t36, align 4
	%t38 = getelementptr inbounds i32, i32* %x26, i32 2
	%x39 = load i32, i32* %t38, align 4
	%x40 = mul i32 %x39, %x37
	%x41 = sub i32 %x35, %x40
	ret i32 %x41
_6: ; preds = %_4
	%t42 = icmp eq i32 %nn, 1
	%x43 = zext i1 %t42 to i32
	; if %x43 then _7 else _8
	%t44 = icmp ne i32 %x43, 0
	br i1 %t44, label %_7, label %_8
_7: ; preds = %_6
	ret i32 %x29
_8: ; preds = %_6
	; getelementptr 45
	%t46 = mul i32 0, 0
	%x45 = getelementptr inbounds i32, i32* %x1, i32 %t46
	%x47 = add i32 %nn, -1
	; if %x3 then _9 else _13
	%t48 = icmp ne i32 %x3, 0
	br i1 %t48, label %_9, label %_13
_9: ; preds = %_8, %_12
	%x49 = phi i32 [1, %_8], [%x50, %_12]
	%x51 = phi i32 [0, %_8], [%x52, %_12]
	call void @get(i32 1, i32 %x49, i32 * %x45, i32 %nn)
	%x53 = sdiv i32 %x49, 2
	%x54 = mul i32 %x53, 2
	%x55 = sub i32 %x49, %x54
	%t56 = icmp eq i32 %x55, 1
	%x57 = zext i1 %t56 to i32
	%t58 = getelementptr inbounds i32, i32* %x26, i32 %x49
	%x59 = load i32, i32* %t58, align 4
	; if %x57 then _10 else _11
	%t60 = icmp ne i32 %x57, 0
	br i1 %t60, label %_10, label %_11
_10: ; preds = %_9
	%x61 = call i32 @getans(i32 %x47)
	%x62 = mul i32 %x59, %x61
	%x63 = add i32 %x51, %x62
	br label %_12
_11: ; preds = %_9
	%x64 = call i32 @getans(i32 %x47)
	%x65 = mul i32 %x59, %x64
	%x66 = sub i32 %x51, %x65
	br label %_12
_12: ; preds = %_10, %_11
	%x52 = phi i32 [%x63, %_10], [%x66, %_11]
	%x50 = add i32 %x49, 1
	%t67 = icmp sle i32 %x50, %nn
	%x68 = zext i1 %t67 to i32
	; if %x68 then _9 else _13
	%t69 = icmp ne i32 %x68, 0
	br i1 %t69, label %_9, label %_13
_13: ; preds = %_8, %_12
	%x70 = phi i32 [0, %_8], [%x52, %_12]
	ret i32 %x70
}

define i32 @gcd(i32 %m, i32 %n) {
_entry:
	%_glob_map1 = getelementptr inbounds [12100 x i32] , [12100 x i32] * @_map1, i32 0, i32 0
	%_glob_i = getelementptr inbounds i32 , i32 * @_i, i32 0
	%_glob_j = getelementptr inbounds i32 , i32 * @_j, i32 0
	%_glob_k = getelementptr inbounds i32 , i32 * @_k, i32 0
	%_glob_l = getelementptr inbounds i32 , i32 * @_l, i32 0
	%_glob_m = getelementptr inbounds i32 , i32 * @_m, i32 0
	%_glob_n = getelementptr inbounds i32 , i32 * @_n, i32 0
	%_glob_p = getelementptr inbounds i32 , i32 * @_p, i32 0
	%_glob_vis = getelementptr inbounds [12100 x i32] , [12100 x i32] * @_vis, i32 0, i32 0
	%_glob_num = getelementptr inbounds i32 , i32 * @_num, i32 0
	%_glob_just = getelementptr inbounds [12100 x i32] , [12100 x i32] * @_just, i32 0, i32 0
	%_glob_just2 = getelementptr inbounds [12100 x i32] , [12100 x i32] * @_just2, i32 0, i32 0
	br label %_0
_0: ; preds = 
	%t0 = icmp slt i32 %m, %n
	%x1 = zext i1 %t0 to i32
	%t2 = icmp eq i32 %n, 0
	%x3 = zext i1 %t2 to i32
	; if %x3 then _1 else _2
	%t4 = icmp ne i32 %x3, 0
	br i1 %t4, label %_1, label %_2
_1: ; preds = %_0
	ret i32 %m
_2: ; preds = %_0
	%x5 = sdiv i32 %m, %n
	%x6 = mul i32 %n, %x5
	%x7 = sub i32 %m, %x6
	%x8 = call i32 @gcd(i32 %n, i32 %x7)
	ret i32 %x8
}

define void @final(i32 %n, i32 %m) {
_entry:
	%_glob_map1 = getelementptr inbounds [12100 x i32] , [12100 x i32] * @_map1, i32 0, i32 0
	%_glob_i = getelementptr inbounds i32 , i32 * @_i, i32 0
	%_glob_j = getelementptr inbounds i32 , i32 * @_j, i32 0
	%_glob_k = getelementptr inbounds i32 , i32 * @_k, i32 0
	%_glob_l = getelementptr inbounds i32 , i32 * @_l, i32 0
	%_glob_m = getelementptr inbounds i32 , i32 * @_m, i32 0
	%_glob_n = getelementptr inbounds i32 , i32 * @_n, i32 0
	%_glob_p = getelementptr inbounds i32 , i32 * @_p, i32 0
	%_glob_vis = getelementptr inbounds [12100 x i32] , [12100 x i32] * @_vis, i32 0, i32 0
	%_glob_num = getelementptr inbounds i32 , i32 * @_num, i32 0
	%_glob_just = getelementptr inbounds [12100 x i32] , [12100 x i32] * @_just, i32 0, i32 0
	%_glob_just2 = getelementptr inbounds [12100 x i32] , [12100 x i32] * @_just2, i32 0, i32 0
	br label %_0
_0: ; preds = 
	%x0 = mul i32 %n, %m
	%t1 = icmp slt i32 %x0, 0
	%x2 = zext i1 %t1 to i32
	; if %x2 then _1 else _2
	%t3 = icmp ne i32 %x2, 0
	br i1 %t3, label %_1, label %_2
_1: ; preds = %_0
	call void @putch(i32 45)
	%x4 = call i32 @myabs(i32 %n)
	%x5 = call i32 @myabs(i32 %m)
	call void @final(i32 %x4, i32 %x5)
	ret void
_2: ; preds = %_0
	%t6 = icmp eq i32 %m, 1
	%x7 = zext i1 %t6 to i32
	; if %x7 then _3 else _4
	%t8 = icmp ne i32 %x7, 0
	br i1 %t8, label %_3, label %_4
_3: ; preds = %_2
	call void @putint(i32 %n)
	call void @putch(i32 32)
	call void @putch(i32 32)
	br label %_5
_4: ; preds = %_2
	%x9 = sdiv i32 %n, %m
	%x10 = mul i32 %m, %x9
	%x11 = sub i32 %n, %x10
	%t12 = icmp eq i32 %x11, 0
	%x13 = zext i1 %t12 to i32
	; if %x13 then _6 else _7
	%t14 = icmp ne i32 %x13, 0
	br i1 %t14, label %_6, label %_7
_5: ; preds = %_3, %_6, %_11
	ret void
_6: ; preds = %_4
	call void @putint(i32 %x9)
	call void @putch(i32 32)
	call void @putch(i32 32)
	br label %_5
_7: ; preds = %_4
	%t15 = icmp slt i32 %n, 0
	%x16 = zext i1 %t15 to i32
	; if %x16 then _8 else _9
	%t17 = icmp ne i32 %x16, 0
	br i1 %t17, label %_8, label %_9
_8: ; preds = %_7
	%t18 = icmp slt i32 %m, 0
	%x19 = zext i1 %t18 to i32
	br label %_9
_9: ; preds = %_7, %_8
	%x20 = phi i32 [%x16, %_7], [%x19, %_8]
	; if %x20 then _10 else _11
	%t21 = icmp ne i32 %x20, 0
	br i1 %t21, label %_10, label %_11
_10: ; preds = %_9
	%x22 = sub i32 0, %n
	%x23 = sub i32 0, %m
	br label %_11
_11: ; preds = %_10, %_9
	%x24 = phi i32 [%x23, %_10], [%m, %_9]
	%x25 = phi i32 [%x22, %_10], [%n, %_9]
	%x26 = call i32 @gcd(i32 %x25, i32 %x24)
	%x27 = sdiv i32 %x25, %x26
	call void @putint(i32 %x27)
	call void @putch(i32 47)
	%x28 = sdiv i32 %x24, %x26
	call void @putint(i32 %x28)
	call void @putch(i32 32)
	call void @putch(i32 32)
	br label %_5
}

define i32 @main() {
_entry:
	%_glob_map1 = getelementptr inbounds [12100 x i32] , [12100 x i32] * @_map1, i32 0, i32 0
	%_glob_i = getelementptr inbounds i32 , i32 * @_i, i32 0
	%_glob_j = getelementptr inbounds i32 , i32 * @_j, i32 0
	%_glob_k = getelementptr inbounds i32 , i32 * @_k, i32 0
	%_glob_l = getelementptr inbounds i32 , i32 * @_l, i32 0
	%_glob_m = getelementptr inbounds i32 , i32 * @_m, i32 0
	%_glob_n = getelementptr inbounds i32 , i32 * @_n, i32 0
	%_glob_p = getelementptr inbounds i32 , i32 * @_p, i32 0
	%_glob_vis = getelementptr inbounds [12100 x i32] , [12100 x i32] * @_vis, i32 0, i32 0
	%_glob_num = getelementptr inbounds i32 , i32 * @_num, i32 0
	%_glob_just = getelementptr inbounds [12100 x i32] , [12100 x i32] * @_just, i32 0, i32 0
	%_glob_just2 = getelementptr inbounds [12100 x i32] , [12100 x i32] * @_just2, i32 0, i32 0
	br label %_0
_0: ; preds = 
	%x0 = call i32 @getint()
	; store 1
	%t2 = getelementptr inbounds i32, i32* %_glob_n, i32 0
	store i32 %x0, i32* %t2, align 4
	; store 3
	%t4 = getelementptr inbounds i32, i32* %_glob_i, i32 0
	store i32 0, i32* %t4, align 4
	%x5 = add i32 %x0, 10
	%t6 = icmp sgt i32 %x5, 0
	%x7 = zext i1 %t6 to i32
	; if %x7 then _1 else _4
	%t8 = icmp ne i32 %x7, 0
	br i1 %t8, label %_1, label %_4
_1: ; preds = %_0, %_3
	; store 9
	%t10 = getelementptr inbounds i32, i32* %_glob_j, i32 0
	store i32 0, i32* %t10, align 4
	%t11 = getelementptr inbounds i32, i32* %_glob_i, i32 0
	%x12 = load i32, i32* %t11, align 4
	; getelementptr 13
	%t14 = mul i32 %x12, 110
	%x13 = getelementptr inbounds i32, i32* %_glob_map1, i32 %t14
	; if %x7 then _2 else _3
	%t15 = icmp ne i32 %x7, 0
	br i1 %t15, label %_2, label %_3
_2: ; preds = %_1, %_2
	%t16 = getelementptr inbounds i32, i32* %_glob_j, i32 0
	%x17 = load i32, i32* %t16, align 4
	; store 18
	%t19 = getelementptr inbounds i32, i32* %x13, i32 %x17
	store i32 1, i32* %t19, align 4
	%x20 = add i32 %x17, 1
	; store 21
	%t22 = getelementptr inbounds i32, i32* %_glob_j, i32 0
	store i32 %x20, i32* %t22, align 4
	%t23 = icmp slt i32 %x20, %x5
	%x24 = zext i1 %t23 to i32
	; if %x24 then _2 else _3
	%t25 = icmp ne i32 %x24, 0
	br i1 %t25, label %_2, label %_3
_3: ; preds = %_1, %_2
	%x26 = add i32 %x12, 1
	; store 27
	%t28 = getelementptr inbounds i32, i32* %_glob_i, i32 0
	store i32 %x26, i32* %t28, align 4
	%t29 = icmp slt i32 %x26, %x5
	%x30 = zext i1 %t29 to i32
	; if %x30 then _1 else _4
	%t31 = icmp ne i32 %x30, 0
	br i1 %t31, label %_1, label %_4
_4: ; preds = %_0, %_3
	; store 32
	%t33 = getelementptr inbounds i32, i32* %_glob_i, i32 0
	store i32 1, i32* %t33, align 4
	%t34 = icmp sge i32 %x0, 1
	%x35 = zext i1 %t34 to i32
	; if %x35 then _5 else _8
	%t36 = icmp ne i32 %x35, 0
	br i1 %t36, label %_5, label %_8
_5: ; preds = %_4, %_7
	; store 37
	%t38 = getelementptr inbounds i32, i32* %_glob_j, i32 0
	store i32 1, i32* %t38, align 4
	%t39 = getelementptr inbounds i32, i32* %_glob_n, i32 0
	%x40 = load i32, i32* %t39, align 4
	%t41 = icmp sge i32 %x40, 1
	%x42 = zext i1 %t41 to i32
	; if %x42 then _6 else _7
	%t43 = icmp ne i32 %x42, 0
	br i1 %t43, label %_6, label %_7
_6: ; preds = %_5, %_6
	%t44 = getelementptr inbounds i32, i32* %_glob_j, i32 0
	%x45 = load i32, i32* %t44, align 4
	%t46 = getelementptr inbounds i32, i32* %_glob_i, i32 0
	%x47 = load i32, i32* %t46, align 4
	%x48 = call i32 @getint()
	; getelementptr 49
	%t50 = mul i32 %x47, 110
	%x49 = getelementptr inbounds i32, i32* %_glob_map1, i32 %t50
	; store 51
	%t52 = getelementptr inbounds i32, i32* %x49, i32 %x45
	store i32 %x48, i32* %t52, align 4
	%t53 = getelementptr inbounds i32, i32* %_glob_i, i32 0
	%x54 = load i32, i32* %t53, align 4
	; getelementptr 55
	%t56 = mul i32 %x54, 110
	%x55 = getelementptr inbounds i32, i32* %_glob_just, i32 %t56
	; getelementptr 57
	%t58 = mul i32 %x54, 110
	%x57 = getelementptr inbounds i32, i32* %_glob_map1, i32 %t58
	%t59 = getelementptr inbounds i32, i32* %_glob_j, i32 0
	%x60 = load i32, i32* %t59, align 4
	%t61 = getelementptr inbounds i32, i32* %x57, i32 %x60
	%x62 = load i32, i32* %t61, align 4
	; store 63
	%t64 = getelementptr inbounds i32, i32* %x55, i32 %x60
	store i32 %x62, i32* %t64, align 4
	%x65 = add i32 %x60, 1
	; store 66
	%t67 = getelementptr inbounds i32, i32* %_glob_j, i32 0
	store i32 %x65, i32* %t67, align 4
	%t68 = getelementptr inbounds i32, i32* %_glob_n, i32 0
	%x69 = load i32, i32* %t68, align 4
	%t70 = icmp sle i32 %x65, %x69
	%x71 = zext i1 %t70 to i32
	; if %x71 then _6 else _7
	%t72 = icmp ne i32 %x71, 0
	br i1 %t72, label %_6, label %_7
_7: ; preds = %_5, %_6
	%t73 = getelementptr inbounds i32, i32* %_glob_i, i32 0
	%x74 = load i32, i32* %t73, align 4
	%x75 = add i32 %x74, 1
	; store 76
	%t77 = getelementptr inbounds i32, i32* %_glob_i, i32 0
	store i32 %x75, i32* %t77, align 4
	%t78 = getelementptr inbounds i32, i32* %_glob_n, i32 0
	%x79 = load i32, i32* %t78, align 4
	%t80 = icmp sle i32 %x75, %x79
	%x81 = zext i1 %t80 to i32
	; if %x81 then _5 else _8
	%t82 = icmp ne i32 %x81, 0
	br i1 %t82, label %_5, label %_8
_8: ; preds = %_4, %_7
	%t83 = getelementptr inbounds i32, i32* %_glob_n, i32 0
	%x84 = load i32, i32* %t83, align 4
	%x85 = call i32 @getans(i32 %x84)
	call void @putint(i32 %x85)
	call void @putch(i32 10)
	%t86 = alloca [12100 x i32] , align 4
	%x87 = getelementptr inbounds [12100 x i32] , [12100 x i32] * %t86, i32 0, i32 0
	; store 88
	%t89 = getelementptr inbounds i32, i32* %_glob_i, i32 0
	store i32 1, i32* %t89, align 4
	%t90 = getelementptr inbounds i32, i32* %_glob_n, i32 0
	%x91 = load i32, i32* %t90, align 4
	%t92 = icmp sge i32 %x91, 1
	%x93 = zext i1 %t92 to i32
	; if %x93 then _9 else _12
	%t94 = icmp ne i32 %x93, 0
	br i1 %t94, label %_9, label %_12
_9: ; preds = %_8, %_11
	; store 95
	%t96 = getelementptr inbounds i32, i32* %_glob_j, i32 0
	store i32 1, i32* %t96, align 4
	%t97 = getelementptr inbounds i32, i32* %_glob_i, i32 0
	%x98 = load i32, i32* %t97, align 4
	; getelementptr 99
	%t100 = mul i32 %x98, 110
	%x99 = getelementptr inbounds i32, i32* %x87, i32 %t100
	; getelementptr 101
	%t102 = mul i32 %x98, 110
	%x101 = getelementptr inbounds i32, i32* %_glob_just, i32 %t102
	; if %x93 then _10 else _11
	%t103 = icmp ne i32 %x93, 0
	br i1 %t103, label %_10, label %_11
_10: ; preds = %_9, %_10
	%t104 = getelementptr inbounds i32, i32* %_glob_j, i32 0
	%x105 = load i32, i32* %t104, align 4
	; getelementptr 106
	%t107 = mul i32 %x105, 110
	%x106 = getelementptr inbounds i32, i32* %_glob_map1, i32 %t107
	%t108 = getelementptr inbounds i32, i32* %x106, i32 %x98
	%x109 = load i32, i32* %t108, align 4
	; store 110
	%t111 = getelementptr inbounds i32, i32* %x99, i32 %x105
	store i32 %x109, i32* %t111, align 4
	; store 112
	%t113 = getelementptr inbounds i32, i32* %x101, i32 %x105
	store i32 %x109, i32* %t113, align 4
	%x114 = add i32 %x105, 1
	; store 115
	%t116 = getelementptr inbounds i32, i32* %_glob_j, i32 0
	store i32 %x114, i32* %t116, align 4
	%t117 = icmp sle i32 %x114, %x91
	%x118 = zext i1 %t117 to i32
	; if %x118 then _10 else _11
	%t119 = icmp ne i32 %x118, 0
	br i1 %t119, label %_10, label %_11
_11: ; preds = %_9, %_10
	%x120 = add i32 %x98, 1
	; store 121
	%t122 = getelementptr inbounds i32, i32* %_glob_i, i32 0
	store i32 %x120, i32* %t122, align 4
	%t123 = icmp sle i32 %x120, %x91
	%x124 = zext i1 %t123 to i32
	; if %x124 then _9 else _12
	%t125 = icmp ne i32 %x124, 0
	br i1 %t125, label %_9, label %_12
_12: ; preds = %_8, %_11
	%x126 = call i32 @getans(i32 %x91)
	%t127 = icmp eq i32 %x126, 0
	%x128 = zext i1 %t127 to i32
	; if %x128 then _13 else _14
	%t129 = icmp ne i32 %x128, 0
	br i1 %t129, label %_13, label %_14
_13: ; preds = %_12
	call void @putch(i32 69)
	br label %_14
_14: ; preds = %_13, %_12
	; store 130
	%t131 = getelementptr inbounds i32, i32* %_glob_i, i32 0
	store i32 1, i32* %t131, align 4
	%t132 = getelementptr inbounds i32, i32* %_glob_n, i32 0
	%x133 = load i32, i32* %t132, align 4
	%t134 = icmp sge i32 %x133, 1
	%x135 = zext i1 %t134 to i32
	; getelementptr 136
	%t137 = mul i32 0, 0
	%x136 = getelementptr inbounds i32, i32* %x87, i32 %t137
	; if %x135 then _15 else _21
	%t138 = icmp ne i32 %x135, 0
	br i1 %t138, label %_15, label %_21
_15: ; preds = %_14, %_20
	; store 139
	%t140 = getelementptr inbounds i32, i32* %_glob_j, i32 0
	store i32 1, i32* %t140, align 4
	%t141 = getelementptr inbounds i32, i32* %_glob_n, i32 0
	%x142 = load i32, i32* %t141, align 4
	%t143 = icmp sge i32 %x142, 1
	%x144 = zext i1 %t143 to i32
	; if %x144 then _16 else _20
	%t145 = icmp ne i32 %x144, 0
	br i1 %t145, label %_16, label %_20
_16: ; preds = %_15, %_19
	%t146 = getelementptr inbounds i32, i32* %_glob_n, i32 0
	%x147 = load i32, i32* %t146, align 4
	%t148 = getelementptr inbounds i32, i32* %_glob_j, i32 0
	%x149 = load i32, i32* %t148, align 4
	%t150 = getelementptr inbounds i32, i32* %_glob_i, i32 0
	%x151 = load i32, i32* %t150, align 4
	call void @get(i32 %x151, i32 %x149, i32 * %x136, i32 %x147)
	%t152 = getelementptr inbounds i32, i32* %_glob_i, i32 0
	%x153 = load i32, i32* %t152, align 4
	%t154 = getelementptr inbounds i32, i32* %_glob_j, i32 0
	%x155 = load i32, i32* %t154, align 4
	%x156 = add i32 %x153, %x155
	%x157 = sdiv i32 %x156, 2
	%x158 = mul i32 %x157, 2
	%x159 = sub i32 %x156, %x158
	%t160 = icmp eq i32 %x159, 0
	%x161 = zext i1 %t160 to i32
	%t162 = getelementptr inbounds i32, i32* %_glob_n, i32 0
	%x163 = load i32, i32* %t162, align 4
	%x164 = add i32 %x163, -1
	; if %x161 then _17 else _18
	%t165 = icmp ne i32 %x161, 0
	br i1 %t165, label %_17, label %_18
_17: ; preds = %_16
	%x166 = call i32 @getans(i32 %x164)
	call void @final(i32 %x166, i32 %x85)
	br label %_19
_18: ; preds = %_16
	%x167 = call i32 @getans(i32 %x164)
	%x168 = mul i32 %x167, -1
	call void @final(i32 %x168, i32 %x85)
	br label %_19
_19: ; preds = %_17, %_18
	%t169 = getelementptr inbounds i32, i32* %_glob_j, i32 0
	%x170 = load i32, i32* %t169, align 4
	%x171 = add i32 %x170, 1
	; store 172
	%t173 = getelementptr inbounds i32, i32* %_glob_j, i32 0
	store i32 %x171, i32* %t173, align 4
	%t174 = getelementptr inbounds i32, i32* %_glob_n, i32 0
	%x175 = load i32, i32* %t174, align 4
	%t176 = icmp sle i32 %x171, %x175
	%x177 = zext i1 %t176 to i32
	; if %x177 then _16 else _20
	%t178 = icmp ne i32 %x177, 0
	br i1 %t178, label %_16, label %_20
_20: ; preds = %_15, %_19
	call void @putch(i32 10)
	%t179 = getelementptr inbounds i32, i32* %_glob_i, i32 0
	%x180 = load i32, i32* %t179, align 4
	%x181 = add i32 %x180, 1
	; store 182
	%t183 = getelementptr inbounds i32, i32* %_glob_i, i32 0
	store i32 %x181, i32* %t183, align 4
	%t184 = getelementptr inbounds i32, i32* %_glob_n, i32 0
	%x185 = load i32, i32* %t184, align 4
	%t186 = icmp sle i32 %x181, %x185
	%x187 = zext i1 %t186 to i32
	; if %x187 then _15 else _21
	%t188 = icmp ne i32 %x187, 0
	br i1 %t188, label %_15, label %_21
_21: ; preds = %_14, %_20
	ret i32 0
}

