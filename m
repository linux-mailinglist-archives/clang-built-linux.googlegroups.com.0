Return-Path: <clang-built-linux+bncBC433LF43MBBBXUH76EQMGQEX5NOQOY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x337.google.com (mail-wm1-x337.google.com [IPv6:2a00:1450:4864:20::337])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D846409F33
	for <lists+clang-built-linux@lfdr.de>; Mon, 13 Sep 2021 23:34:23 +0200 (CEST)
Received: by mail-wm1-x337.google.com with SMTP id k5-20020a7bc3050000b02901e081f69d80sf5487057wmj.8
        for <lists+clang-built-linux@lfdr.de>; Mon, 13 Sep 2021 14:34:23 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1631568863; cv=pass;
        d=google.com; s=arc-20160816;
        b=zbMkXWOZujjnxjtcegWOoJO2QQNze4wtVURBmt432+ZSje6vLqmvHdEl6NepscOR3E
         ENScLUBg3UPd35g4mg2llggxK90QNdXU2VtiHT3wuzJ4pJl1PbQOYzDm4/GaaBQZUu2t
         zbpgiLrIdKMhVWeNtUatg6/3jfC+oZiCGcLydHIv3VroDErMO7nZBUvg9EGSRk+U0my3
         GmZebt8sIUqGPhdgL1h5zvWpNhwZyQqhNizWR52NogslpccbmxBqwD4s/auHfl/oShNB
         Or0qBFvZW46Cm26MXT/6N2ZywO38KFnslqDwkrK1CtbyA0c9Ov5gTOvHGERg8K80bVRK
         TGzQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=waiZDxUJxOvBOI43inUZ0hJdpuSdEeCKJfgfiRHWha8=;
        b=0oVrzK7cG7fHctCuooR6V/hCxVJPjR/IP6BeSun0UfF+5Z1koqRimgCvkERog3K4oL
         nq0ePVtuAt8F4y+8JmHHpiWbsAd7AzqC0zABYWlI03TaAec1TCTOGJgfenJTwkjkR2dl
         8aTFxpU5oy2hSIzHbxMSO8Ds8mg+zM7TCyUV/ExdMK9dnraz5BedFRII/KxSLwU8CHt2
         ji/YTFUmvXptHbdqPmBUG2/5iitaDcm8PJaVL+tknenxP7ZZNDYpPqsT7kcUfenAQGS6
         vd6QVdQ6FQ3CxnUI0/+Zkw2odneTpoN/w8EXoOS7+9kkS8wqH4p4tIntl2WHCML8SPm9
         CVcw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of paul@crapouillou.net designates 89.234.176.197 as permitted sender) smtp.mailfrom=paul@crapouillou.net;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=crapouillou.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=waiZDxUJxOvBOI43inUZ0hJdpuSdEeCKJfgfiRHWha8=;
        b=fYv6Kp0dzAD8Uf89uJ5k4S+9Gqxl3Tj9neMjLEoJ8KHZaaC6CTsLA5TpBmAQV44P/M
         DkBQ1Fk7xTlV70LfwBigU51qBODzTdwtbi6iiG9bOMrEIPO+6vub7FQN9OXLZPqEsPGi
         FD3+ZbMYSdtj/WEBCF8jHtsZfVTvROKGAFfuOH17Ra6w5a2T2x2GKtp0uzFDcnGTC+hq
         o2KSYquOsuOGI/OdspgE5Ntj7sVqaSwLXRGdLkDuG3H+yrb0wKWKgIb8cMwnE5UjEbcZ
         OaGBf/UDseML7oMMTsUD/pASMsWheNDdxDLxqkAT3z70hMAYV+A5wXr1y8ehM9J2Fp2U
         /M6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=waiZDxUJxOvBOI43inUZ0hJdpuSdEeCKJfgfiRHWha8=;
        b=f32Kagck920n/tp8rnTCP+QCtbUmNyAIaJ5x/OJ3wjpSkdiTmpHRfI7xztga9J+660
         r7QtDiL0Sv2ap7SesBGOraNiQEf8g4lAlgInUHxFA2z0wnITRC64g2Nxx1kq+zs+Hmzx
         07fYpCRQ/wt0wXijG1fM0rnlrkm5jr+vuHWcFWERdmSv7tlUKO5IqUL46d/ErCGdzRPl
         tz7zNGn7wdtIqpLB2epVUXRogs/rKCWkJohkyqkqigVr5FiJfw+d4QpYbL7qzknRMFph
         w4LD76rmKp2a/BD+KR0ydOpLNALVZDPORtwerx5Chu6UIBaJ8d/RBNlYHpKacCLVGwCn
         limQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5321RU76SxbfClDpPUjLi8CbnB/6NvuzQ9kLmoaGUKVpguvZV8uh
	VlGw3qFGn02/kd5tZaqMVnQ=
X-Google-Smtp-Source: ABdhPJw0ZTg9SKTTNrexGLZmhLgi6Rzbo9z4GURdv40DBKwNduVMQGH5RbmOv8poOfvi75pFH2G+zg==
X-Received: by 2002:a7b:c3d0:: with SMTP id t16mr13235892wmj.169.1631568863030;
        Mon, 13 Sep 2021 14:34:23 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:a314:: with SMTP id c20ls4705572wrb.2.gmail; Mon, 13 Sep
 2021 14:34:22 -0700 (PDT)
X-Received: by 2002:a05:6000:1569:: with SMTP id 9mr14932360wrz.343.1631568862102;
        Mon, 13 Sep 2021 14:34:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1631568862; cv=none;
        d=google.com; s=arc-20160816;
        b=N24c1KggNFnjD9G8WQL5kgPda1I6UMS2rRa/GP6iT/B7d+hEXz77f1jRqlYAEqDpl6
         nQTvy/qAEspLKSHKnjoN5q8But4q7wTrVUL8ZDEzeQ6pndngiAgEbnz9egs8lx2RULKE
         vMeAONkOExF6Mtsbzsvh4nyFkkb09MHWC0+hIYMKEoU0Q/nJPgs87qRZkUEP9LbrOcH9
         e9rFDGPYyWqZmsf1+aqe4dir8Y26Dnnl+U+5GH4YlNKZJcYvKYfB5BEVuHwMT7zh8ITS
         QfItLqCoc3wGA4u9oB7Uuy1gi2LPcvyjNoQyai4w0FokYArbxJrOc1L5Z08DveqQm5qh
         J25Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from;
        bh=tm+gD1JeyQZCMLfdT43P7+R30+PqhF2LXNdSDN3/sio=;
        b=cRvoy4BkvDJOAgnQsYGkH1u9txqxmp0LXssAWRs3S5SW5Cz735WUTaElYbG4oiJ7vt
         hnmp69A56vIWXNwLeIpMHqydZBRnaDTo6+gMETbnvIdA4mAbmlW5RXfubtZSknQlb6QU
         gKvljxme9wDUoOQzY3K1W4ZB19/GGcCpkVLNdKneixZbCSb+1yy4dA/Pm7MixWXLtjJT
         wGckoJR9jcr7H7V2ThnSO+VVXQxMu6cfF1Cfia6pptLQbvb997GhgoNocikmCx3CQXk5
         jRNdyNoDXdwe8m4nuTS+N+HmuU6nNcHo7fkG6VgxEHi9w+foTLknewjLlIZ37kg4fvv9
         87Ww==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of paul@crapouillou.net designates 89.234.176.197 as permitted sender) smtp.mailfrom=paul@crapouillou.net;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=crapouillou.net
Received: from aposti.net (aposti.net. [89.234.176.197])
        by gmr-mx.google.com with ESMTPS id f20si873wmj.3.2021.09.13.14.34.22
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Sep 2021 14:34:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of paul@crapouillou.net designates 89.234.176.197 as permitted sender) client-ip=89.234.176.197;
From: Paul Cercueil <paul@crapouillou.net>
To: Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
	Huacai Chen <chenhuacai@kernel.org>,
	Jiaxun Yang <jiaxun.yang@flygoat.com>,
	Nick Desaulniers <ndesaulniers@google.com>
Cc: Tiezhu Yang <yangtiezhu@loongson.cn>,
	linux-mips@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	list@opendingux.net,
	clang-built-linux@googlegroups.com,
	Paul Cercueil <paul@crapouillou.net>
Subject: [PATCH v2] MIPS: Avoid macro redefinitions
Date: Mon, 13 Sep 2021 22:34:15 +0100
Message-Id: <20210913213415.527306-1-paul@crapouillou.net>
MIME-Version: 1.0
X-Original-Sender: paul@crapouillou.net
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of paul@crapouillou.net designates 89.234.176.197 as
 permitted sender) smtp.mailfrom=paul@crapouillou.net;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=crapouillou.net
Content-Type: text/plain; charset="UTF-8"
Precedence: list
Mailing-list: list clang-built-linux@googlegroups.com; contact clang-built-linux+owners@googlegroups.com
List-ID: <clang-built-linux.googlegroups.com>
X-Spam-Checked-In-Group: clang-built-linux@googlegroups.com
X-Google-Group-Id: 357212215037
List-Post: <https://groups.google.com/group/clang-built-linux/post>, <mailto:clang-built-linux@googlegroups.com>
List-Help: <https://groups.google.com/support/>, <mailto:clang-built-linux+help@googlegroups.com>
List-Archive: <https://groups.google.com/group/clang-built-linux
List-Subscribe: <https://groups.google.com/group/clang-built-linux/subscribe>, <mailto:clang-built-linux+subscribe@googlegroups.com>
List-Unsubscribe: <mailto:googlegroups-manage+357212215037+unsubscribe@googlegroups.com>,
 <https://groups.google.com/group/clang-built-linux/subscribe>

To be able to compile the kernel with LTO, the assembler macros cannot
be declared in the global scope, or the compiler will complain about
redefined macros.

Update the code so that macros are defined then undefined when they are
used.

Note that virt support was added in 2.24 and xpa in 2.25. So we still
need the TOOLCHAIN defines for them.

Signed-off-by: Paul Cercueil <paul@crapouillou.net>
---

Notes:
    v2: Removed commented undef line

 arch/mips/include/asm/ginvt.h                 |  11 +-
 .../asm/mach-loongson64/loongson_regs.h       |  12 ++
 arch/mips/include/asm/mipsregs.h              | 190 +++++++++++-------
 arch/mips/include/asm/msa.h                   |  34 +++-
 4 files changed, 155 insertions(+), 92 deletions(-)

diff --git a/arch/mips/include/asm/ginvt.h b/arch/mips/include/asm/ginvt.h
index 6eb7c2b94dc7..87b2974ffc53 100644
--- a/arch/mips/include/asm/ginvt.h
+++ b/arch/mips/include/asm/ginvt.h
@@ -12,11 +12,13 @@ enum ginvt_type {
 
 #ifdef TOOLCHAIN_SUPPORTS_GINV
 # define _ASM_SET_GINV	".set	ginv\n"
+# define _ASM_UNSET_GINV
 #else
-_ASM_MACRO_1R1I(ginvt, rs, type,
-		_ASM_INSN_IF_MIPS(0x7c0000bd | (__rs << 21) | (\\type << 8))
-		_ASM_INSN32_IF_MM(0x0000717c | (__rs << 16) | (\\type << 9)));
-# define _ASM_SET_GINV
+# define _ASM_SET_GINV							\
+	_ASM_MACRO_1R1I(ginvt, rs, type,				\
+			_ASM_INSN_IF_MIPS(0x7c0000bd | (__rs << 21) | (\\type << 8))	\
+			_ASM_INSN32_IF_MM(0x0000717c | (__rs << 16) | (\\type << 9)))
+# define _ASM_UNSET_GINV ".purgem ginvt\n"
 #endif
 
 static __always_inline void ginvt(unsigned long addr, enum ginvt_type type)
@@ -25,6 +27,7 @@ static __always_inline void ginvt(unsigned long addr, enum ginvt_type type)
 		".set	push\n"
 		_ASM_SET_GINV
 		"	ginvt	%0, %1\n"
+		_ASM_UNSET_GINV
 		".set	pop"
 		: /* no outputs */
 		: "r"(addr), "i"(type)
diff --git a/arch/mips/include/asm/mach-loongson64/loongson_regs.h b/arch/mips/include/asm/mach-loongson64/loongson_regs.h
index 165993514762..b5be7511f6cd 100644
--- a/arch/mips/include/asm/mach-loongson64/loongson_regs.h
+++ b/arch/mips/include/asm/mach-loongson64/loongson_regs.h
@@ -21,8 +21,10 @@ static inline u32 read_cpucfg(u32 reg)
 	u32 __res;
 
 	__asm__ __volatile__(
+		_ASM_SET_PARSE_R
 		"parse_r __res,%0\n\t"
 		"parse_r reg,%1\n\t"
+		_ASM_UNSET_PARSE_R
 		".insn \n\t"
 		".word (0xc8080118 | (reg << 21) | (__res << 11))\n\t"
 		:"=r"(__res)
@@ -143,8 +145,10 @@ static inline u32 csr_readl(u32 reg)
 
 	/* RDCSR reg, val */
 	__asm__ __volatile__(
+		_ASM_SET_PARSE_R
 		"parse_r __res,%0\n\t"
 		"parse_r reg,%1\n\t"
+		_ASM_UNSET_PARSE_R
 		".insn \n\t"
 		".word (0xc8000118 | (reg << 21) | (__res << 11))\n\t"
 		:"=r"(__res)
@@ -160,8 +164,10 @@ static inline u64 csr_readq(u32 reg)
 
 	/* DRDCSR reg, val */
 	__asm__ __volatile__(
+		_ASM_SET_PARSE_R
 		"parse_r __res,%0\n\t"
 		"parse_r reg,%1\n\t"
+		_ASM_UNSET_PARSE_R
 		".insn \n\t"
 		".word (0xc8020118 | (reg << 21) | (__res << 11))\n\t"
 		:"=r"(__res)
@@ -175,8 +181,10 @@ static inline void csr_writel(u32 val, u32 reg)
 {
 	/* WRCSR reg, val */
 	__asm__ __volatile__(
+		_ASM_SET_PARSE_R
 		"parse_r reg,%0\n\t"
 		"parse_r val,%1\n\t"
+		_ASM_UNSET_PARSE_R
 		".insn \n\t"
 		".word (0xc8010118 | (reg << 21) | (val << 11))\n\t"
 		:
@@ -189,8 +197,10 @@ static inline void csr_writeq(u64 val, u32 reg)
 {
 	/* DWRCSR reg, val */
 	__asm__ __volatile__(
+		_ASM_SET_PARSE_R
 		"parse_r reg,%0\n\t"
 		"parse_r val,%1\n\t"
+		_ASM_UNSET_PARSE_R
 		".insn \n\t"
 		".word (0xc8030118 | (reg << 21) | (val << 11))\n\t"
 		:
@@ -243,8 +253,10 @@ static inline u64 drdtime(void)
 	u64 val = 0;
 
 	__asm__ __volatile__(
+		_ASM_SET_PARSE_R
 		"parse_r rID,%0\n\t"
 		"parse_r val,%1\n\t"
+		_ASM_UNSET_PARSE_R
 		".insn \n\t"
 		".word (0xc8090118 | (rID << 21) | (val << 11))\n\t"
 		:"=r"(rID),"=r"(val)
diff --git a/arch/mips/include/asm/mipsregs.h b/arch/mips/include/asm/mipsregs.h
index acdf8c69220b..2616353b940c 100644
--- a/arch/mips/include/asm/mipsregs.h
+++ b/arch/mips/include/asm/mipsregs.h
@@ -1297,22 +1297,22 @@ static inline int mm_insn_16bit(u16 insn)
 	"\\var	= " #n "\n\t"			\
 	".endif\n\t"
 
-__asm__(".macro	parse_r var r\n\t"
-	"\\var	= -1\n\t"
-	_IFC_REG(0)  _IFC_REG(1)  _IFC_REG(2)  _IFC_REG(3)
-	_IFC_REG(4)  _IFC_REG(5)  _IFC_REG(6)  _IFC_REG(7)
-	_IFC_REG(8)  _IFC_REG(9)  _IFC_REG(10) _IFC_REG(11)
-	_IFC_REG(12) _IFC_REG(13) _IFC_REG(14) _IFC_REG(15)
-	_IFC_REG(16) _IFC_REG(17) _IFC_REG(18) _IFC_REG(19)
-	_IFC_REG(20) _IFC_REG(21) _IFC_REG(22) _IFC_REG(23)
-	_IFC_REG(24) _IFC_REG(25) _IFC_REG(26) _IFC_REG(27)
-	_IFC_REG(28) _IFC_REG(29) _IFC_REG(30) _IFC_REG(31)
-	".iflt	\\var\n\t"
-	".error	\"Unable to parse register name \\r\"\n\t"
-	".endif\n\t"
-	".endm");
-
-#undef _IFC_REG
+#define _ASM_SET_PARSE_R						\
+	".macro	parse_r var r\n\t"					\
+	"\\var	= -1\n\t"						\
+	_IFC_REG(0)  _IFC_REG(1)  _IFC_REG(2)  _IFC_REG(3)		\
+	_IFC_REG(4)  _IFC_REG(5)  _IFC_REG(6)  _IFC_REG(7)		\
+	_IFC_REG(8)  _IFC_REG(9)  _IFC_REG(10) _IFC_REG(11)		\
+	_IFC_REG(12) _IFC_REG(13) _IFC_REG(14) _IFC_REG(15)		\
+	_IFC_REG(16) _IFC_REG(17) _IFC_REG(18) _IFC_REG(19)		\
+	_IFC_REG(20) _IFC_REG(21) _IFC_REG(22) _IFC_REG(23)		\
+	_IFC_REG(24) _IFC_REG(25) _IFC_REG(26) _IFC_REG(27)		\
+	_IFC_REG(28) _IFC_REG(29) _IFC_REG(30) _IFC_REG(31)		\
+	".iflt	\\var\n\t"						\
+	".error	\"Unable to parse register name \\r\"\n\t"		\
+	".endif\n\t"							\
+	".endm\n\t"
+#define _ASM_UNSET_PARSE_R ".purgem parse_r\n\t"
 
 /*
  * C macros for generating assembler macros for common instruction formats.
@@ -1322,43 +1322,45 @@ __asm__(".macro	parse_r var r\n\t"
  * the ENC encodings.
  */
 
-/* Instructions with no operands */
-#define _ASM_MACRO_0(OP, ENC)						\
-	__asm__(".macro	" #OP "\n\t"					\
-		ENC							\
-		".endm")
-
 /* Instructions with 1 register operand & 1 immediate operand */
 #define _ASM_MACRO_1R1I(OP, R1, I2, ENC)				\
-	__asm__(".macro	" #OP " " #R1 ", " #I2 "\n\t"			\
+		".macro	" #OP " " #R1 ", " #I2 "\n\t"			\
+		_ASM_SET_PARSE_R					\
 		"parse_r __" #R1 ", \\" #R1 "\n\t"			\
 		ENC							\
-		".endm")
+		_ASM_UNSET_PARSE_R					\
+		".endm\n\t"
 
 /* Instructions with 2 register operands */
 #define _ASM_MACRO_2R(OP, R1, R2, ENC)					\
-	__asm__(".macro	" #OP " " #R1 ", " #R2 "\n\t"			\
+		".macro	" #OP " " #R1 ", " #R2 "\n\t"			\
+		_ASM_SET_PARSE_R					\
 		"parse_r __" #R1 ", \\" #R1 "\n\t"			\
 		"parse_r __" #R2 ", \\" #R2 "\n\t"			\
 		ENC							\
-		".endm")
+		_ASM_UNSET_PARSE_R					\
+		".endm\n\t"
 
 /* Instructions with 3 register operands */
 #define _ASM_MACRO_3R(OP, R1, R2, R3, ENC)				\
-	__asm__(".macro	" #OP " " #R1 ", " #R2 ", " #R3 "\n\t"		\
+		".macro	" #OP " " #R1 ", " #R2 ", " #R3 "\n\t"		\
+		_ASM_SET_PARSE_R					\
 		"parse_r __" #R1 ", \\" #R1 "\n\t"			\
 		"parse_r __" #R2 ", \\" #R2 "\n\t"			\
 		"parse_r __" #R3 ", \\" #R3 "\n\t"			\
 		ENC							\
-		".endm")
+		_ASM_UNSET_PARSE_R					\
+		".endm\n\t"
 
 /* Instructions with 2 register operands and 1 optional select operand */
 #define _ASM_MACRO_2R_1S(OP, R1, R2, SEL3, ENC)				\
-	__asm__(".macro	" #OP " " #R1 ", " #R2 ", " #SEL3 " = 0\n\t"	\
+		".macro	" #OP " " #R1 ", " #R2 ", " #SEL3 " = 0\n\t"	\
+		_ASM_SET_PARSE_R					\
 		"parse_r __" #R1 ", \\" #R1 "\n\t"			\
 		"parse_r __" #R2 ", \\" #R2 "\n\t"			\
 		ENC							\
-		".endm")
+		_ASM_UNSET_PARSE_R					\
+		".endm\n\t"
 
 /*
  * TLB Invalidate Flush
@@ -1618,15 +1620,21 @@ do {									\
 } while (0)
 
 #ifndef TOOLCHAIN_SUPPORTS_XPA
-_ASM_MACRO_2R_1S(mfhc0, rt, rs, sel,
-	_ASM_INSN_IF_MIPS(0x40400000 | __rt << 16 | __rs << 11 | \\sel)
-	_ASM_INSN32_IF_MM(0x000000f4 | __rt << 21 | __rs << 16 | \\sel << 11));
-_ASM_MACRO_2R_1S(mthc0, rt, rd, sel,
-	_ASM_INSN_IF_MIPS(0x40c00000 | __rt << 16 | __rd << 11 | \\sel)
-	_ASM_INSN32_IF_MM(0x000002f4 | __rt << 21 | __rd << 16 | \\sel << 11));
-#define _ASM_SET_XPA ""
+#define _ASM_SET_MFHC0							\
+	_ASM_MACRO_2R_1S(mfhc0, rt, rs, sel,				\
+			 _ASM_INSN_IF_MIPS(0x40400000 | __rt << 16 | __rs << 11 | \\sel)	\
+			 _ASM_INSN32_IF_MM(0x000000f4 | __rt << 21 | __rs << 16 | \\sel << 11))
+#define _ASM_UNSET_MFHC0 ".purgem mfhc0\n\t"
+#define _ASM_SET_MTHC0							\
+	_ASM_MACRO_2R_1S(mthc0, rt, rd, sel,				\
+			 _ASM_INSN_IF_MIPS(0x40c00000 | __rt << 16 | __rd << 11 | \\sel)	\
+			 _ASM_INSN32_IF_MM(0x000002f4 | __rt << 21 | __rd << 16 | \\sel << 11))
+#define _ASM_UNSET_MTHC0 ".purgem mthc0\n\t"
 #else	/* !TOOLCHAIN_SUPPORTS_XPA */
-#define _ASM_SET_XPA ".set\txpa\n\t"
+#define _ASM_SET_MFHC0 ".set\txpa\n\t"
+#define _ASM_SET_MTHC0 ".set\txpa\n\t"
+#define _ASM_UNSET_MFHC0
+#define _ASM_UNSET_MTHC0
 #endif
 
 #define __readx_32bit_c0_register(source, sel)				\
@@ -1636,8 +1644,9 @@ _ASM_MACRO_2R_1S(mthc0, rt, rd, sel,
 	__asm__ __volatile__(						\
 	"	.set	push					\n"	\
 	"	.set	mips32r2				\n"	\
-	_ASM_SET_XPA							\
+	_ASM_SET_MFHC0							\
 	"	mfhc0	%0, " #source ", %1			\n"	\
+	_ASM_UNSET_MFHC0						\
 	"	.set	pop					\n"	\
 	: "=r" (__res)							\
 	: "i" (sel));							\
@@ -1649,8 +1658,9 @@ do {									\
 	__asm__ __volatile__(						\
 	"	.set	push					\n"	\
 	"	.set	mips32r2				\n"	\
-	_ASM_SET_XPA							\
+	_ASM_SET_MTHC0							\
 	"	mthc0	%z0, " #register ", %1			\n"	\
+	_ASM_UNSET_MTHC0						\
 	"	.set	pop					\n"	\
 	:								\
 	: "Jr" (value), "i" (sel));					\
@@ -2046,31 +2056,58 @@ do {									\
  */
 
 #ifndef TOOLCHAIN_SUPPORTS_VIRT
-_ASM_MACRO_2R_1S(mfgc0, rt, rs, sel,
-	_ASM_INSN_IF_MIPS(0x40600000 | __rt << 16 | __rs << 11 | \\sel)
-	_ASM_INSN32_IF_MM(0x000004fc | __rt << 21 | __rs << 16 | \\sel << 11));
-_ASM_MACRO_2R_1S(dmfgc0, rt, rs, sel,
-	_ASM_INSN_IF_MIPS(0x40600100 | __rt << 16 | __rs << 11 | \\sel)
-	_ASM_INSN32_IF_MM(0x580004fc | __rt << 21 | __rs << 16 | \\sel << 11));
-_ASM_MACRO_2R_1S(mtgc0, rt, rd, sel,
-	_ASM_INSN_IF_MIPS(0x40600200 | __rt << 16 | __rd << 11 | \\sel)
-	_ASM_INSN32_IF_MM(0x000006fc | __rt << 21 | __rd << 16 | \\sel << 11));
-_ASM_MACRO_2R_1S(dmtgc0, rt, rd, sel,
-	_ASM_INSN_IF_MIPS(0x40600300 | __rt << 16 | __rd << 11 | \\sel)
-	_ASM_INSN32_IF_MM(0x580006fc | __rt << 21 | __rd << 16 | \\sel << 11));
-_ASM_MACRO_0(tlbgp,    _ASM_INSN_IF_MIPS(0x42000010)
-		       _ASM_INSN32_IF_MM(0x0000017c));
-_ASM_MACRO_0(tlbgr,    _ASM_INSN_IF_MIPS(0x42000009)
-		       _ASM_INSN32_IF_MM(0x0000117c));
-_ASM_MACRO_0(tlbgwi,   _ASM_INSN_IF_MIPS(0x4200000a)
-		       _ASM_INSN32_IF_MM(0x0000217c));
-_ASM_MACRO_0(tlbgwr,   _ASM_INSN_IF_MIPS(0x4200000e)
-		       _ASM_INSN32_IF_MM(0x0000317c));
-_ASM_MACRO_0(tlbginvf, _ASM_INSN_IF_MIPS(0x4200000c)
-		       _ASM_INSN32_IF_MM(0x0000517c));
-#define _ASM_SET_VIRT ""
+#define _ASM_SET_MFGC0							\
+	_ASM_MACRO_2R_1S(mfgc0, rt, rs, sel,				\
+			 _ASM_INSN_IF_MIPS(0x40600000 | __rt << 16 | __rs << 11 | \\sel)	\
+			 _ASM_INSN32_IF_MM(0x000004fc | __rt << 21 | __rs << 16 | \\sel << 11))
+#define _ASM_UNSET_MFGC0 ".purgem mfgc0\n\t"
+#define _ASM_SET_DMFGC0							\
+	_ASM_MACRO_2R_1S(dmfgc0, rt, rs, sel,				\
+			 _ASM_INSN_IF_MIPS(0x40600100 | __rt << 16 | __rs << 11 | \\sel)	\
+			 _ASM_INSN32_IF_MM(0x580004fc | __rt << 21 | __rs << 16 | \\sel << 11))
+#define _ASM_UNSET_DMFGC0 ".purgem dmfgc0\n\t"
+#define _ASM_SET_MTGC0							\
+	_ASM_MACRO_2R_1S(mtgc0, rt, rd, sel,				\
+			 _ASM_INSN_IF_MIPS(0x40600200 | __rt << 16 | __rd << 11 | \\sel)	\
+			 _ASM_INSN32_IF_MM(0x000006fc | __rt << 21 | __rd << 16 | \\sel << 11))
+#define _ASM_UNSET_MTGC0 ".purgem mtgc0\n\t"
+#define _ASM_SET_DMTGC0							\
+	_ASM_MACRO_2R_1S(dmtgc0, rt, rd, sel,				\
+			 _ASM_INSN_IF_MIPS(0x40600300 | __rt << 16 | __rd << 11 | \\sel)	\
+			 _ASM_INSN32_IF_MM(0x580006fc | __rt << 21 | __rd << 16 | \\sel << 11))
+#define _ASM_UNSET_DMTGC0 ".purgem dmtgc0\n\t"
+
+#define __tlbgp()							\
+		_ASM_INSN_IF_MIPS(0x42000010)				\
+		_ASM_INSN32_IF_MM(0x0000017c)
+#define __tlbgr()							\
+		_ASM_INSN_IF_MIPS(0x42000009)				\
+		_ASM_INSN32_IF_MM(0x0000117c)
+#define __tlbgwi()							\
+		_ASM_INSN_IF_MIPS(0x4200000a)				\
+		_ASM_INSN32_IF_MM(0x0000217c)
+#define __tlbgwr()							\
+		_ASM_INSN_IF_MIPS(0x4200000e)				\
+		_ASM_INSN32_IF_MM(0x0000317c)
+#define __tlbginvf()							\
+		_ASM_INSN_IF_MIPS(0x4200000c)				\
+		_ASM_INSN32_IF_MM(0x0000517c)
 #else	/* !TOOLCHAIN_SUPPORTS_VIRT */
 #define _ASM_SET_VIRT ".set\tvirt\n\t"
+#define _ASM_SET_MFGC0	_ASM_SET_VIRT
+#define _ASM_SET_DMFGC0	_ASM_SET_VIRT
+#define _ASM_SET_MTGC0	_ASM_SET_VIRT
+#define _ASM_SET_DMTGC0	_ASM_SET_VIRT
+#define _ASM_UNSET_MFGC0
+#define _ASM_UNSET_DMFGC0
+#define _ASM_UNSET_MTGC0
+#define _ASM_UNSET_DMTGC0
+
+#define __tlbgp()	_ASM_SET_VIRT "tlbgp\n\t"
+#define __tlbgr()	_ASM_SET_VIRT "tlbgr\n\t"
+#define __tlbgwi()	_ASM_SET_VIRT "tlbgwi\n\t"
+#define __tlbgwr()	_ASM_SET_VIRT "tlbgwr\n\t"
+#define __tlbginvf()	_ASM_SET_VIRT "tlbginvf\n\t"
 #endif
 
 #define __read_32bit_gc0_register(source, sel)				\
@@ -2078,8 +2115,9 @@ _ASM_MACRO_0(tlbginvf, _ASM_INSN_IF_MIPS(0x4200000c)
 	__asm__ __volatile__(						\
 		".set\tpush\n\t"					\
 		".set\tmips32r5\n\t"					\
-		_ASM_SET_VIRT						\
+		_ASM_SET_MFGC0						\
 		"mfgc0\t%0, " #source ", %1\n\t"			\
+		_ASM_UNSET_MFGC0					\
 		".set\tpop"						\
 		: "=r" (__res)						\
 		: "i" (sel));						\
@@ -2091,8 +2129,9 @@ _ASM_MACRO_0(tlbginvf, _ASM_INSN_IF_MIPS(0x4200000c)
 	__asm__ __volatile__(						\
 		".set\tpush\n\t"					\
 		".set\tmips64r5\n\t"					\
-		_ASM_SET_VIRT						\
+		_ASM_SET_DMFGC0						\
 		"dmfgc0\t%0, " #source ", %1\n\t"			\
+		_ASM_UNSET_DMFGC0					\
 		".set\tpop"						\
 		: "=r" (__res)						\
 		: "i" (sel));						\
@@ -2104,8 +2143,9 @@ do {									\
 	__asm__ __volatile__(						\
 		".set\tpush\n\t"					\
 		".set\tmips32r5\n\t"					\
-		_ASM_SET_VIRT						\
+		_ASM_SET_MTGC0						\
 		"mtgc0\t%z0, " #register ", %1\n\t"			\
+		_ASM_UNSET_MTGC0					\
 		".set\tpop"						\
 		: : "Jr" ((unsigned int)(value)),			\
 		    "i" (sel));						\
@@ -2116,8 +2156,9 @@ do {									\
 	__asm__ __volatile__(						\
 		".set\tpush\n\t"					\
 		".set\tmips64r5\n\t"					\
-		_ASM_SET_VIRT						\
+		_ASM_SET_DMTGC0						\
 		"dmtgc0\t%z0, " #register ", %1\n\t"			\
+		_ASM_UNSET_DMTGC0					\
 		".set\tpop"						\
 		: : "Jr" (value),					\
 		    "i" (sel));						\
@@ -2788,8 +2829,7 @@ static inline void guest_tlb_probe(void)
 	__asm__ __volatile__(
 		".set push\n\t"
 		".set noreorder\n\t"
-		_ASM_SET_VIRT
-		"tlbgp\n\t"
+		__tlbgp()
 		".set pop");
 }
 
@@ -2798,8 +2838,7 @@ static inline void guest_tlb_read(void)
 	__asm__ __volatile__(
 		".set push\n\t"
 		".set noreorder\n\t"
-		_ASM_SET_VIRT
-		"tlbgr\n\t"
+		__tlbgr()
 		".set pop");
 }
 
@@ -2808,8 +2847,7 @@ static inline void guest_tlb_write_indexed(void)
 	__asm__ __volatile__(
 		".set push\n\t"
 		".set noreorder\n\t"
-		_ASM_SET_VIRT
-		"tlbgwi\n\t"
+		__tlbgwi()
 		".set pop");
 }
 
@@ -2818,8 +2856,7 @@ static inline void guest_tlb_write_random(void)
 	__asm__ __volatile__(
 		".set push\n\t"
 		".set noreorder\n\t"
-		_ASM_SET_VIRT
-		"tlbgwr\n\t"
+		__tlbgwr()
 		".set pop");
 }
 
@@ -2831,8 +2868,7 @@ static inline void guest_tlbinvf(void)
 	__asm__ __volatile__(
 		".set push\n\t"
 		".set noreorder\n\t"
-		_ASM_SET_VIRT
-		"tlbginvf\n\t"
+		__tlbginvf()
 		".set pop");
 }
 
diff --git a/arch/mips/include/asm/msa.h b/arch/mips/include/asm/msa.h
index e0a3dd52334d..236a49ee2e3e 100644
--- a/arch/mips/include/asm/msa.h
+++ b/arch/mips/include/asm/msa.h
@@ -162,16 +162,26 @@ static inline void init_msa_upper(void)
  * to allow compilation with toolchains that do not support MSA. Once all
  * toolchains in use support MSA these can be removed.
  */
-_ASM_MACRO_2R(cfcmsa, rd, cs,
-	_ASM_INSN_IF_MIPS(0x787e0019 | __cs << 11 | __rd << 6)
-	_ASM_INSN32_IF_MM(0x587e0016 | __cs << 11 | __rd << 6));
-_ASM_MACRO_2R(ctcmsa, cd, rs,
-	_ASM_INSN_IF_MIPS(0x783e0019 | __rs << 11 | __cd << 6)
-	_ASM_INSN32_IF_MM(0x583e0016 | __rs << 11 | __cd << 6));
-#define _ASM_SET_MSA ""
+
+#define _ASM_SET_CFCMSA							\
+	_ASM_MACRO_2R(cfcmsa, rd, cs,					\
+		      _ASM_INSN_IF_MIPS(0x787e0019 | __cs << 11 | __rd << 6)	\
+		      _ASM_INSN32_IF_MM(0x587e0016 | __cs << 11 | __rd << 6))
+#define _ASM_UNSET_CFCMSA ".purgem cfcmsa\n\t"
+#define _ASM_SET_CTCMSA							\
+	_ASM_MACRO_2R(ctcmsa, cd, rs,					\
+		      _ASM_INSN_IF_MIPS(0x783e0019 | __rs << 11 | __cd << 6)	\
+		      _ASM_INSN32_IF_MM(0x583e0016 | __rs << 11 | __cd << 6))
+#define _ASM_UNSET_CTCMSA ".purgem ctcmsa\n\t"
 #else /* TOOLCHAIN_SUPPORTS_MSA */
-#define _ASM_SET_MSA ".set\tfp=64\n\t"				\
-		     ".set\tmsa\n\t"
+#define _ASM_SET_CFCMSA						\
+		".set\tfp=64\n\t"				\
+		".set\tmsa\n\t"
+#define _ASM_UNSET_CFCMSA
+#define _ASM_SET_CTCMSA						\
+		".set\tfp=64\n\t"				\
+		".set\tmsa\n\t"
+#define _ASM_UNSET_CTCMSA
 #endif
 
 #define __BUILD_MSA_CTL_REG(name, cs)				\
@@ -180,8 +190,9 @@ static inline unsigned int read_msa_##name(void)		\
 	unsigned int reg;					\
 	__asm__ __volatile__(					\
 	"	.set	push\n"					\
-	_ASM_SET_MSA						\
+	_ASM_SET_CFCMSA						\
 	"	cfcmsa	%0, $" #cs "\n"				\
+	_ASM_UNSET_CFCMSA					\
 	"	.set	pop\n"					\
 	: "=r"(reg));						\
 	return reg;						\
@@ -191,8 +202,9 @@ static inline void write_msa_##name(unsigned int val)		\
 {								\
 	__asm__ __volatile__(					\
 	"	.set	push\n"					\
-	_ASM_SET_MSA						\
+	_ASM_SET_CTCMSA						\
 	"	ctcmsa	$" #cs ", %0\n"				\
+	_ASM_UNSET_CTCMSA					\
 	"	.set	pop\n"					\
 	: : "r"(val));						\
 }
-- 
2.33.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210913213415.527306-1-paul%40crapouillou.net.
