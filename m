Return-Path: <clang-built-linux+bncBCEJHTXX7MFBBC6Q3H3QKGQEOCQFWLI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43d.google.com (mail-wr1-x43d.google.com [IPv6:2a00:1450:4864:20::43d])
	by mail.lfdr.de (Postfix) with ESMTPS id A770F20BB82
	for <lists+clang-built-linux@lfdr.de>; Fri, 26 Jun 2020 23:26:35 +0200 (CEST)
Received: by mail-wr1-x43d.google.com with SMTP id w4sf10229317wrm.5
        for <lists+clang-built-linux@lfdr.de>; Fri, 26 Jun 2020 14:26:35 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593206795; cv=pass;
        d=google.com; s=arc-20160816;
        b=UBXsDojvPunOq87gCx5A4xWmou/fJKk0Gb5BsMgvMzBqW6fqqnUurAwsl4a5OAwxOW
         STtiRWkmmZfOA9CsLHf4oOeGsNjC3Xd2aKt3iiLv7Qddg/L42uKK9B/mbIRg4mGiM8hQ
         63wBhKm/DOTmNX54+iVUQCOc5/uvAu8NyGqfgMSempk9EtSzcACU6pK2t45e4eTFoxqX
         E6HCxUqx4PGEuGzI+ZtkUtL21/a9IMYUcDsjSdj/uPE3d3xJZXePhmn0YvA/iFfUBpzv
         b+hbADHCYvU3Vqozm1USYfSasnsvge3m47Jgyk3HhpuRmoRMC10/MWv2bYWSWrFZNMl/
         poxQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=1UBUIzj50wBJ3518nv19sw4vGowad4dwEbv1P5cE6yk=;
        b=AIXQ4zXrDot2XmecLMhXRcDoQYzoqbpcikShKLYv3S8HY+1SlgM1qgGqf6yWIu4yoK
         LOcK3riZjsIb+hZwFLjKvVyNmN7/fzc69GE4CduIQg1bSi7deB69WeqKECFBhCPFxmyM
         hv+1GQ2LZGBKHmBWZxeyjHukkVZHav75JXXURdui8Ww1bYC4o5vThBUviso7Hzuq0L9A
         5be65zZ15ReKwsJlkdo45uEP64z85zEsOglYrqjjXwXIa8PvhSKWDHNSbDxNEDKZRDqO
         iUC9amTe9Ugv6qRquASW0oOA49MrNFjhaMrWbRNMAB9G1kJktH1nVADQVoY1SIX5sEBm
         9ezw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@agner.ch header.s=dkim header.b=F439n836;
       spf=pass (google.com: domain of stefan@agner.ch designates 2a02:418:6a02::a2 as permitted sender) smtp.mailfrom=stefan@agner.ch
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1UBUIzj50wBJ3518nv19sw4vGowad4dwEbv1P5cE6yk=;
        b=VcYj8ixqi3P86YgxJ3qWRzilk+xn/126yyMkmILsLU71b4ytZcvxUwv4aA0Dd2rPEK
         ht0YW/4H9xClaUzc4vA6YxniExLiEb3I6uHrVmw3CCIdIzlwNiaCovjqZ4/oLdIGcYDw
         x6BkyM3E/qdWucS6MWn7IYbp8lfAWV9y372udSusU7gCQqqILFlZxpkdxBRgTrWuiuOe
         ikj6WXLII126ex08DSkxqgDR3dWIcXWfFdclvAyArNkFAFO2flrXoLqiHpHMMvkCr5jD
         nLT8QbUm+yGvWtk6kR71DqvWFvg4ppNIDJrNJknGHh1LIr+8M3JfVPF63LAZyua490IP
         uzdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1UBUIzj50wBJ3518nv19sw4vGowad4dwEbv1P5cE6yk=;
        b=mQKrngdjxatDcnby03q8Hu/JlT9lgQU2diLZER7he+qZpDxhmdrc7hFmgrJuRplKnt
         PHrUyCOc5x9RwbWj7R8dJpXxGrkWNLmVNDNnAKbp1UteiWLcvW023H1Lva2X6ia+k2y4
         4FNJIv3Mi03rFfzzdsAa+1N56J7lzJ0aZKIiELOvJeWpFLSmP+gi7Ipk20zqIZArRMVe
         HgoPqVfhfcilGOpflXO/RbER05hV68/Qvi68Y1/6mkJGHPiXu1FgXcg1244Clj5lltt9
         Ax+EMDyxqQmPd2RRddsJRMmDfTb/ndnBgfZENKYyRODr4IpBvdqtvlIzCbZHLF4yShSL
         ENeQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533D+c3Db1fnWM3j8sj6R94ZkgD0/+IDoR65jox9HpjAJeBtATpw
	oTisWkm+ERnEzwAVYpZa40c=
X-Google-Smtp-Source: ABdhPJyOn+9yr9X+YvFKjzUlD1HFycEAnavhENHkqPxegrbv+tcNWaH87QmXnPQ5/gx9uXPrEY9ppg==
X-Received: by 2002:a5d:658a:: with SMTP id q10mr114244wru.220.1593206795338;
        Fri, 26 Jun 2020 14:26:35 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:82ca:: with SMTP id 68ls382897wrc.2.gmail; Fri, 26 Jun
 2020 14:26:34 -0700 (PDT)
X-Received: by 2002:adf:a507:: with SMTP id i7mr6202970wrb.0.1593206794812;
        Fri, 26 Jun 2020 14:26:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593206794; cv=none;
        d=google.com; s=arc-20160816;
        b=Jp+a6TtqgO9w4rUZtiGeK6Ron8J13XsRpty8kri4PSyjej2sIZp2AEpb1l1y5eY0Oa
         K7WT27jU4eBY6hUklCnOcUDOST/EA6cCuYJcvUWOihK+BrwPNd6nSQ5OFPwjVpl4oZuq
         s0jKzmH5xlMsQ6Bm7GzSFsW5/zdcmOYpgp8S5zcC4zVQHMSX3ydld7yczMmITOUqJ4+Q
         +5yGl239NP5x3/SMEnl8NfeB0aWomzxiMycHpiPCAUXlAtrNkoTkJGQ7nX7+SNpPo2MS
         3udY49ZoHk2IQMJM+hUEy4cItqr7r7AbIvkExOEO70kzcpXQSSSZz5732/YQRMWi8Utd
         +eCQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=aEOAk1ETAJhOXzZ5wDBRQL7ILtsSbq9e4n7G/DYV2tY=;
        b=waEsh/uOY2x6ylzKatF8becPWbmkZ5j/LMvdgsTcQlEWUQW4I15Bf1kNwzo6GllcQF
         HyDZRP/rIE+603Mz2uMIuFWF0SGH7qDcoQkByuauqbLJi1oxGNezg51hsLViN2v9IRyr
         sKg8mU4On0t/2utTwjh9MW4uW6NYF3XoLu7AjeAJmAi10DKhv4n9tnFOVF+V52jJMx5Z
         Lcuyqg5vec90bOIAbHEvcURqy2myN5N+CQwBdwrM4JkDDgGVYFVgWhqZXZfoanpbTLAh
         23eXr05JPmMBp8x5wgq1B69d5wP9979KwDzpaYwpkgTnNGjqDAqOr1oH9bnRhXod1OGr
         o0XA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@agner.ch header.s=dkim header.b=F439n836;
       spf=pass (google.com: domain of stefan@agner.ch designates 2a02:418:6a02::a2 as permitted sender) smtp.mailfrom=stefan@agner.ch
Received: from mail.kmu-office.ch (mail.kmu-office.ch. [2a02:418:6a02::a2])
        by gmr-mx.google.com with ESMTPS id o201si520437wme.1.2020.06.26.14.26.34
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Jun 2020 14:26:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of stefan@agner.ch designates 2a02:418:6a02::a2 as permitted sender) client-ip=2a02:418:6a02::a2;
Received: from zyt.lan (unknown [IPv6:2a02:169:3df5::564])
	by mail.kmu-office.ch (Postfix) with ESMTPSA id EE48B5C2468;
	Fri, 26 Jun 2020 23:26:33 +0200 (CEST)
From: Stefan Agner <stefan@agner.ch>
To: linux@armlinux.org.uk
Cc: arnd@arndb.de,
	ard.biesheuvel@linaro.org,
	robin.murphy@arm.com,
	yamada.masahiro@socionext.com,
	ndesaulniers@google.com,
	manojgupta@google.com,
	jiancai@google.com,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Stefan Agner <stefan@agner.ch>
Subject: [PATCH v3 3/3] ARM: use VFP assembler mnemonics if available
Date: Fri, 26 Jun 2020 23:26:13 +0200
Message-Id: <31a2320b7a5a27345b01bea2ecf4134f688c3c16.1593205699.git.stefan@agner.ch>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <cover.1593205699.git.stefan@agner.ch>
References: <cover.1593205699.git.stefan@agner.ch>
MIME-Version: 1.0
X-Original-Sender: stefan@agner.ch
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@agner.ch header.s=dkim header.b=F439n836;       spf=pass
 (google.com: domain of stefan@agner.ch designates 2a02:418:6a02::a2 as
 permitted sender) smtp.mailfrom=stefan@agner.ch
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

The integrated assembler of Clang 10 and earlier do not allow to access
the VFP registers through the coprocessor load/store instructions:
arch/arm/vfp/vfpmodule.c:342:2: error: invalid operand for instruction
        fmxr(FPEXC, fpexc & ~(FPEXC_EX|FPEXC_DEX|FPEXC_FP2V|FPEXC_VV|FPEXC_TRAP_MASK));
        ^
arch/arm/vfp/vfpinstr.h:79:6: note: expanded from macro 'fmxr'
        asm("mcr p10, 7, %0, " vfpreg(_vfp_) ", cr0, 0 @ fmxr   " #_vfp_ ", %0" \
            ^
<inline asm>:1:6: note: instantiated into assembly here
        mcr p10, 7, r0, cr8, cr0, 0 @ fmxr      FPEXC, r0
            ^

This has been addressed with Clang 11 [0]. However, to support earlier
versions of Clang and for better readability use of VFP assembler
mnemonics still is preferred.

Ideally we would replace this code with the unified assembler language
mnemonics vmrs/vmsr on call sites along with .fpu assembler directives.
The GNU assembler supports the .fpu directive at least since 2.17 (when
documentation has been added). Since Linux requires binutils 2.21 it is
safe to use .fpu directive. However, binutils does not allow to use
FPINST or FPINST2 as an argument to vmrs/vmsr instructions up to
binutils 2.24 (see binutils commit 16d02dc907c5):
arch/arm/vfp/vfphw.S: Assembler messages:
arch/arm/vfp/vfphw.S:162: Error: operand 0 must be FPSID or FPSCR pr FPEXC -- `vmsr FPINST,r6'
arch/arm/vfp/vfphw.S:165: Error: operand 0 must be FPSID or FPSCR pr FPEXC -- `vmsr FPINST2,r8'
arch/arm/vfp/vfphw.S:235: Error: operand 1 must be a VFP extension System Register -- `vmrs r3,FPINST'
arch/arm/vfp/vfphw.S:238: Error: operand 1 must be a VFP extension System Register -- `vmrs r12,FPINST2'

Use as-instr in Kconfig to check if FPINST/FPINST2 can be used. If they
can be used make use of .fpu directives and UAL VFP mnemonics for
register access.

This allows to build vfpmodule.c with Clang and its integrated assembler.

[0] https://reviews.llvm.org/D59733

Link: https://github.com/ClangBuiltLinux/linux/issues/905
Signed-off-by: Stefan Agner <stefan@agner.ch>
---
Changes in v3:
- Reworded commit message, adding hint that Clang 11 won't have this
  restriction any longer

Changes in v2:
- Check assembler capabilities in Kconfig instead of Makefile

 arch/arm/Kconfig                 |  2 ++
 arch/arm/Kconfig.assembler       |  6 ++++++
 arch/arm/include/asm/vfp.h       |  2 ++
 arch/arm/include/asm/vfpmacros.h | 12 +++++++++++-
 arch/arm/vfp/vfphw.S             |  1 +
 arch/arm/vfp/vfpinstr.h          | 23 +++++++++++++++++++----
 6 files changed, 41 insertions(+), 5 deletions(-)
 create mode 100644 arch/arm/Kconfig.assembler

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index 2ac74904a3ce..911f55a11c63 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -2097,3 +2097,5 @@ source "drivers/firmware/Kconfig"
 if CRYPTO
 source "arch/arm/crypto/Kconfig"
 endif
+
+source "arch/arm/Kconfig.assembler"
diff --git a/arch/arm/Kconfig.assembler b/arch/arm/Kconfig.assembler
new file mode 100644
index 000000000000..5cb31aae1188
--- /dev/null
+++ b/arch/arm/Kconfig.assembler
@@ -0,0 +1,6 @@
+# SPDX-License-Identifier: GPL-2.0
+
+config AS_VFP_VMRS_FPINST
+	def_bool $(as-instr,.fpu vfpv2\nvmrs r0$(comma)FPINST)
+	help
+	  Supported by binutils >= 2.24 and LLVM integrated assembler.
diff --git a/arch/arm/include/asm/vfp.h b/arch/arm/include/asm/vfp.h
index 7157d2a30a49..19928bfb4f9c 100644
--- a/arch/arm/include/asm/vfp.h
+++ b/arch/arm/include/asm/vfp.h
@@ -9,6 +9,7 @@
 #ifndef __ASM_VFP_H
 #define __ASM_VFP_H
 
+#ifndef CONFIG_AS_VFP_VMRS_FPINST
 #define FPSID			cr0
 #define FPSCR			cr1
 #define MVFR1			cr6
@@ -16,6 +17,7 @@
 #define FPEXC			cr8
 #define FPINST			cr9
 #define FPINST2			cr10
+#endif
 
 /* FPSID bits */
 #define FPSID_IMPLEMENTER_BIT	(24)
diff --git a/arch/arm/include/asm/vfpmacros.h b/arch/arm/include/asm/vfpmacros.h
index 947ee5395e1f..ba0d4cb5377e 100644
--- a/arch/arm/include/asm/vfpmacros.h
+++ b/arch/arm/include/asm/vfpmacros.h
@@ -8,7 +8,16 @@
 
 #include <asm/vfp.h>
 
-@ Macros to allow building with old toolkits (with no VFP support)
+#ifdef CONFIG_AS_VFP_VMRS_FPINST
+	.macro	VFPFMRX, rd, sysreg, cond
+	vmrs\cond	\rd, \sysreg
+	.endm
+
+	.macro	VFPFMXR, sysreg, rd, cond
+	vmsr\cond	\sysreg, \rd
+	.endm
+#else
+	@ Macros to allow building with old toolkits (with no VFP support)
 	.macro	VFPFMRX, rd, sysreg, cond
 	MRC\cond	p10, 7, \rd, \sysreg, cr0, 0	@ FMRX	\rd, \sysreg
 	.endm
@@ -16,6 +25,7 @@
 	.macro	VFPFMXR, sysreg, rd, cond
 	MCR\cond	p10, 7, \rd, \sysreg, cr0, 0	@ FMXR	\sysreg, \rd
 	.endm
+#endif
 
 	@ read all the working registers back into the VFP
 	.macro	VFPFLDMIA, base, tmp
diff --git a/arch/arm/vfp/vfphw.S b/arch/arm/vfp/vfphw.S
index 29ed36b99d1d..4fcff9f59947 100644
--- a/arch/arm/vfp/vfphw.S
+++ b/arch/arm/vfp/vfphw.S
@@ -78,6 +78,7 @@
 ENTRY(vfp_support_entry)
 	DBGSTR3	"instr %08x pc %08x state %p", r0, r2, r10
 
+	.fpu	vfpv2
 	ldr	r3, [sp, #S_PSR]	@ Neither lazy restore nor FP exceptions
 	and	r3, r3, #MODE_MASK	@ are supported in kernel mode
 	teq	r3, #USR_MODE
diff --git a/arch/arm/vfp/vfpinstr.h b/arch/arm/vfp/vfpinstr.h
index 38dc154e39ff..3c7938fd40aa 100644
--- a/arch/arm/vfp/vfpinstr.h
+++ b/arch/arm/vfp/vfpinstr.h
@@ -62,10 +62,23 @@
 #define FPSCR_C (1 << 29)
 #define FPSCR_V	(1 << 28)
 
-/*
- * Since we aren't building with -mfpu=vfp, we need to code
- * these instructions using their MRC/MCR equivalents.
- */
+#ifdef CONFIG_AS_VFP_VMRS_FPINST
+
+#define fmrx(_vfp_) ({			\
+	u32 __v;			\
+	asm(".fpu	vfpv2\n"	\
+	    "vmrs	%0, " #_vfp_	\
+	    : "=r" (__v) : : "cc");	\
+	__v;				\
+ })
+
+#define fmxr(_vfp_,_var_)		\
+	asm(".fpu	vfpv2\n"	\
+	    "vmsr	" #_vfp_ ", %0"	\
+	   : : "r" (_var_) : "cc")
+
+#else
+
 #define vfpreg(_vfp_) #_vfp_
 
 #define fmrx(_vfp_) ({			\
@@ -79,6 +92,8 @@
 	asm("mcr p10, 7, %0, " vfpreg(_vfp_) ", cr0, 0 @ fmxr	" #_vfp_ ", %0"	\
 	   : : "r" (_var_) : "cc")
 
+#endif
+
 u32 vfp_single_cpdo(u32 inst, u32 fpscr);
 u32 vfp_single_cprt(u32 inst, u32 fpscr, struct pt_regs *regs);
 
-- 
2.27.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/31a2320b7a5a27345b01bea2ecf4134f688c3c16.1593205699.git.stefan%40agner.ch.
