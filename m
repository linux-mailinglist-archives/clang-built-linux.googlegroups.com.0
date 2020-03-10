Return-Path: <clang-built-linux+bncBCEJHTXX7MFBBP44UDZQKGQE35JN7SI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x237.google.com (mail-lj1-x237.google.com [IPv6:2a00:1450:4864:20::237])
	by mail.lfdr.de (Postfix) with ESMTPS id E1F88180B0E
	for <lists+clang-built-linux@lfdr.de>; Tue, 10 Mar 2020 23:01:35 +0100 (CET)
Received: by mail-lj1-x237.google.com with SMTP id z2sf18431ljk.0
        for <lists+clang-built-linux@lfdr.de>; Tue, 10 Mar 2020 15:01:35 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1583877695; cv=pass;
        d=google.com; s=arc-20160816;
        b=QzEmV93bMMmXQ12aNBzTcfj73ArfU3/9xyMEZO6cZn437LtEzLWUN910QAA5jC/8E9
         rWq3T4/yUx37DA7V34rqdG1i2VW/iJGw5geZl2vWfEg96ePl8/TgHQ+3LHcWGYivX0b6
         +d2kjFDBlhxvbJs0FwP6XwPWz/bIAu5vdy4i3EOOCjLNqGH6PkVbaFRB3bV1E37G26RF
         KEmTTaTwX7dC33ZtB4+eIY4GpvdxEzWhtbKnT5R0M2W/wjFMmYbDJAuLcNTMlQsvrAlM
         Wpk8pjX4etgzL5iD22aIeOIRBn0NAMqkyiCw3bovhVGg5pT/s58uL54plvvfAdOU1Tpb
         Q7nA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=s1Hqq5jGUua7uLjKfne5QsNnoyXzEQ0ah33+qNipyGI=;
        b=Zjo88aIqNmXcx1rMhN0ipIvXgTW0x0szFat8Hiup1sd9qYE3126/OJrOO2d4l8y+12
         ELM497xH5VfZ1i9Zu4ZCkiPpW8Kxam5SeQLUW1d68AolS6mUZUk1wUkz71u0XMlOyKEm
         3qzdpcRedYy6A2TgVMv0gVkUbYz/PoaeLzOz8kN2N/93nA8Actn0XbQcWDG4tBrUXayQ
         6g6rDdBeG85x6AfRphBLT+NPjGj5WFilK4u5rIurKsgg81DGoT4gJcg/IjG3r1MrPvrE
         32jIakOqnxcqVtP96dtOzZGBuNpTf09Lwc9K7b9lXo6/g0kZRyoXNIJHXSryMCjI1k9+
         gRxA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@agner.ch header.s=dkim header.b=ahIkeuJR;
       spf=pass (google.com: domain of stefan@agner.ch designates 2a02:418:6a02::a2 as permitted sender) smtp.mailfrom=stefan@agner.ch
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=s1Hqq5jGUua7uLjKfne5QsNnoyXzEQ0ah33+qNipyGI=;
        b=azHeTtCdbwhHLvRwEBfJ3kvLG0mmjuC905ge1XjoAIiHnXAojLCfFTXXyI339Q33GY
         /9Nir5fEt6zQqktKVyXYkDYYSEK50tBjXoZdj+Z0FseRvw5gckqs84ltu924Kka3Rk8u
         ZyB3CKYBACuyBrN5dzt3oXIOy+8U4u1+2vHhrSf8n+0lOm1lScEc8n06npk7+QPenAKY
         vrPMPZO9E/k6HfXNU6BSmGz2mpBx40a7nFX85mMNwx5vu8S0RMKptX/Z7jJ0zy0Dssqf
         Za9EoGsCsQv1PpHxyPViv3Xfzl7SZLLP1tTppCzrLjAdDKw/PSUstueWUVP9xG7VIklv
         vw3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=s1Hqq5jGUua7uLjKfne5QsNnoyXzEQ0ah33+qNipyGI=;
        b=OAKnEnV7Aaeu3djjylrNbUcq2vz5N9oT5BZA3yq3sCYPwRafEf0P+mpJ8FJsw6jZGU
         +ZLQixoaC+2ZeF4YSePy2CuXtxO/uBfDxHhJhNgvtXWZ+wDulhdTTqBrcSgv++etHUbB
         oW7bLdvS1mU1LWzECNEG7GAdrJkDwx79txRFljtRtctuU28hyMLGL3VDZWkGbDNe0o/2
         rDUelNa4j18YQzxMfQX8ebX3kZVEQETvbixbrMV/Rlll+0mROsNtxLxytM7oBmYTmhn1
         Qxn71b+JU0qGYd3LPhit89g4X3wXjfr6l/WFebCaOc7tM1dsE+9sk6uzeg+JY02RVWoL
         diAw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ3Q/mD1gxWsnJkE85dOC1M04xIdkb+sDWFsteMQb4vjKGQTTXgj
	0NbLHKRcJdfz2Br0zFN8Ijc=
X-Google-Smtp-Source: ADFU+vsbpdXt8I3Z3d/oUbeuV9mKVdZq1uk/3CcoWeGCFJf382SLStLnWVdDD9stnCDArFoEA59iUg==
X-Received: by 2002:ac2:4201:: with SMTP id y1mr137647lfh.92.1583877695320;
        Tue, 10 Mar 2020 15:01:35 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:6c13:: with SMTP id h19ls2731399ljc.7.gmail; Tue, 10 Mar
 2020 15:01:34 -0700 (PDT)
X-Received: by 2002:a2e:890b:: with SMTP id d11mr181713lji.79.1583877694766;
        Tue, 10 Mar 2020 15:01:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583877694; cv=none;
        d=google.com; s=arc-20160816;
        b=n3u3Ib6ZpFIEheEOPASvltJLI9Y0QPVYxYX8+u6ZF5y8PfevYwk9Ll+TDbaMoTCuyp
         rn71McaMbPQbCGg76Vr3QWFoABh6cmR2iWXhgWkxlfO86LzLlkZucN/Ri+jJncy248db
         v4eJaQLZIE/nqOv65sML/JgsP08oxg8F+r6bWiMzQTM+yS3T3eWvthhUeqsHgzFrcO1A
         gzjfYD+3FYJaVe1Tf8d8pGM46Tw5qqBrdh+9OVbWv93MlWuTKej2qif+S30tiyObHcl+
         XayqIKJtZkTkv+eBEgsb8WPz4VlxoInys/UEdfODuNqO2Ts1eL12f2zN5dRbyJ9R+G79
         johw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=iuHVTJkLweKCJuZWDefjVMbM1hgCkPZXzUUonobozno=;
        b=li0jKV7tX+DnAUb6EkehGLizjr/B+bDNPfKNL5qTI3BXva4mfIOCLR++ytrPmk0ary
         CjvY0HFIcQvoTWL/JlWtQzdD15E1ULKl2lE1XXygJFcuLvLq8Iej0dazdGU/J7g+CB7W
         nrzN6vnjnxHPhLPWjFMi65V5Kvn2UhwVSlca7KD/7PbMTYjq0cOk4cZqOsjuTTiIM2JU
         N9va/VAjXeKFcYgDyjW0cTjaetDaf2yiFttlH0RYDB5IWPpwlFokWrJzHuvH4OXcFgPt
         vbkPdN/iYdCvorHG4vVuxOVKlhpmB56Q188mfyaAK6HWO8cZogFcmWKh4lIjb7tg6Zdt
         X4PQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@agner.ch header.s=dkim header.b=ahIkeuJR;
       spf=pass (google.com: domain of stefan@agner.ch designates 2a02:418:6a02::a2 as permitted sender) smtp.mailfrom=stefan@agner.ch
Received: from mail.kmu-office.ch (mail.kmu-office.ch. [2a02:418:6a02::a2])
        by gmr-mx.google.com with ESMTPS id d12si7306lfi.2.2020.03.10.15.01.26
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Mar 2020 15:01:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of stefan@agner.ch designates 2a02:418:6a02::a2 as permitted sender) client-ip=2a02:418:6a02::a2;
Received: from zyt.lan (unknown [IPv6:2a02:169:3df5::564])
	by mail.kmu-office.ch (Postfix) with ESMTPSA id 7CE245C4F77;
	Tue, 10 Mar 2020 23:01:25 +0100 (CET)
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
Subject: [PATCH 3/3] ARM: use VFP assembler mnemonics if available
Date: Tue, 10 Mar 2020 23:01:21 +0100
Message-Id: <3c8127839ced991fadb08c0a5a7beebb3ff489af.1583360296.git.stefan@agner.ch>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <cover.1583360296.git.stefan@agner.ch>
References: <cover.1583360296.git.stefan@agner.ch>
MIME-Version: 1.0
X-Original-Sender: stefan@agner.ch
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@agner.ch header.s=dkim header.b=ahIkeuJR;       spf=pass
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

Clang's integrated assembler does not allow to to use the mcr
instruction to access floating point co-processor registers:
arch/arm/vfp/vfpmodule.c:342:2: error: invalid operand for instruction
        fmxr(FPEXC, fpexc & ~(FPEXC_EX|FPEXC_DEX|FPEXC_FP2V|FPEXC_VV|FPEXC_TRAP_MASK));
        ^
arch/arm/vfp/vfpinstr.h:79:6: note: expanded from macro 'fmxr'
        asm("mcr p10, 7, %0, " vfpreg(_vfp_) ", cr0, 0 @ fmxr   " #_vfp_ ", %0" \
            ^
<inline asm>:1:6: note: instantiated into assembly here
        mcr p10, 7, r0, cr8, cr0, 0 @ fmxr      FPEXC, r0
            ^

Ideally we would replace this code with the unified assembler language
mnemonics vmrs/vmsr on call sites along with .fpu assembler directives.
The GNU assembler supports the .fpu directive at least since 2.17 (when
documentation has been added). Since Linux requires binutils 2.21 it is
safe to use .fpu directive. However, binutils does not allow to use
FPINST or FPINST2 as an argument to vmrs/vmsr instructions up to
binutils 2.24 (see binutils commit 16d02dc907c5).

Use as-instr to check if FPINST/FPINST2 can be used. If they can be used
make use of .fpu directives and UAL VFP mnemonics for register access.

This allows to build vfpmodule.c with Clang and its integrated assembler.

Link: https://github.com/ClangBuiltLinux/linux/issues/905
Signed-off-by: Stefan Agner <stefan@agner.ch>
---
 arch/arm/include/asm/vfp.h       |  2 ++
 arch/arm/include/asm/vfpmacros.h | 12 +++++++++++-
 arch/arm/vfp/Makefile            |  5 +++++
 arch/arm/vfp/vfphw.S             |  1 +
 arch/arm/vfp/vfpinstr.h          | 23 +++++++++++++++++++----
 5 files changed, 38 insertions(+), 5 deletions(-)

diff --git a/arch/arm/include/asm/vfp.h b/arch/arm/include/asm/vfp.h
index 7157d2a30a49..a73c29ff4d1f 100644
--- a/arch/arm/include/asm/vfp.h
+++ b/arch/arm/include/asm/vfp.h
@@ -9,6 +9,7 @@
 #ifndef __ASM_VFP_H
 #define __ASM_VFP_H
 
+#ifndef HAVE_VMRS_FPINST
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
index 947ee5395e1f..eb8d3738f227 100644
--- a/arch/arm/include/asm/vfpmacros.h
+++ b/arch/arm/include/asm/vfpmacros.h
@@ -8,7 +8,16 @@
 
 #include <asm/vfp.h>
 
-@ Macros to allow building with old toolkits (with no VFP support)
+#ifdef HAVE_VMRS_FPINST
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
diff --git a/arch/arm/vfp/Makefile b/arch/arm/vfp/Makefile
index 749901a72d6d..f145c99fba6b 100644
--- a/arch/arm/vfp/Makefile
+++ b/arch/arm/vfp/Makefile
@@ -8,4 +8,9 @@
 # ccflags-y := -DDEBUG
 # asflags-y := -DDEBUG
 
+vmrs_fpinst    := $(call as-instr,.fpu vfpv2\nvmrs r0$(comma)FPINST,-DHAVE_VMRS_FPINST=1)
+
+KBUILD_CFLAGS  += $(vmrs_fpinst)
+KBUILD_AFLAGS  += $(vmrs_fpinst)
+
 obj-y		+= vfpmodule.o entry.o vfphw.o vfpsingle.o vfpdouble.o
diff --git a/arch/arm/vfp/vfphw.S b/arch/arm/vfp/vfphw.S
index e214007a20a2..90e5659827c7 100644
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
index 38dc154e39ff..0db3825c4b4f 100644
--- a/arch/arm/vfp/vfpinstr.h
+++ b/arch/arm/vfp/vfpinstr.h
@@ -62,10 +62,23 @@
 #define FPSCR_C (1 << 29)
 #define FPSCR_V	(1 << 28)
 
-/*
- * Since we aren't building with -mfpu=vfp, we need to code
- * these instructions using their MRC/MCR equivalents.
- */
+#ifdef HAVE_VMRS_FPINST
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
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/3c8127839ced991fadb08c0a5a7beebb3ff489af.1583360296.git.stefan%40agner.ch.
