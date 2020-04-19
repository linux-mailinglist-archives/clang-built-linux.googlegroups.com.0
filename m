Return-Path: <clang-built-linux+bncBCEJHTXX7MFBBMUL6H2AKGQE7WTJ7RQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33a.google.com (mail-wm1-x33a.google.com [IPv6:2a00:1450:4864:20::33a])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D6401AFA02
	for <lists+clang-built-linux@lfdr.de>; Sun, 19 Apr 2020 14:36:03 +0200 (CEST)
Received: by mail-wm1-x33a.google.com with SMTP id q5sf2782644wmc.9
        for <lists+clang-built-linux@lfdr.de>; Sun, 19 Apr 2020 05:36:03 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1587299763; cv=pass;
        d=google.com; s=arc-20160816;
        b=PmVcE1oB6ZDKIW20zfEXV7NqUMpboBJ9NAa6nTxS8cAWZMlmleN30GImqP6xNeVK4H
         yQalGgYmDaOlRrYjSvezVwZgiWfimEnlMQthmAnBG0SZfSOy98YSeoc+/ISJu1Fjx3h6
         HlMgfFzBoBnz25EJlyNzQegnCNhVKOfNLAKFBdCqeYXiwNY1D6cklcEzY7ceTg9JzzdB
         MFZaz5WLNriTHC6rvE2oSDOiIzYBnn+xarGbExRL0UAw57T2sLlhpqdXRZPAOfd8AIDk
         iUaJPWqn4ryh8V88NRkTBxbaAcB68rwfLVTMyuVKaIGPK22VXcPrx60GAex3XNNTCJwl
         D1iQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=R/X6OB69oGAdLb9Exm42Gci/I9tlEyvySVjxmJmsO5Y=;
        b=F5LU2IUiV1uGwVEMqcxkhHAG5XggGiQpOC2nvagtU2v70vvimExZX7t5be9EPpKCoB
         9s1dwyPf2hTkuxqLtnLG8yzwvdSqjQ0rhCI84tAfy+q2frL8EtcFT0GRKu95O+r0mWFc
         +CXQD6EXs4EgJ2nQuFDLnV3MhBiLc85UDYyae82gn5LpIlnLIHZPIG/vLW18q/qXAKe/
         hAQyt6a8C4me/ie+HxIRn7p5gZ0hh8N840OXn8AcwFMREytZpjW+cfXC/3tqkbhSxAjr
         rdPfHEUTvfY9172ib69XSdslvANfgYqdW2zxUqHpYOIsz1w8tTyF/9XK/iUTi23mWoyz
         Eg5g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@agner.ch header.s=dkim header.b=H2WCPhp5;
       spf=pass (google.com: domain of stefan@agner.ch designates 2a02:418:6a02::a2 as permitted sender) smtp.mailfrom=stefan@agner.ch
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=R/X6OB69oGAdLb9Exm42Gci/I9tlEyvySVjxmJmsO5Y=;
        b=VuAIsJ5prfso7nKtX9+tFcsO9BQgLVAFUk+5kdzhgiw/gt2IEJX+n/N+Z1+QSPLLHd
         fXzyFNCDTYc1FtI/QVUwz/JIa6X+pT1p/iGjqKhfy3kOy7ubIT5Qr8jPzXePLrjUAY2z
         ctRJWeJRf9id5DRRgZ5GoyiV9ZUeEXAGvHLr9Umc1U6cLYhk5pHOHWcqR8WN2vyHeUj2
         K0Qnp7A0LSmgCDwJS7o8sQpU5Zq5Vw+BDiSdiKOC94ubGRvSuYXay3MkXbJxFIn/bdsS
         NJ0xe8qDnKYL3db2/gqpRVvw+NqPVZbMXcZWWeQksbVsXd6wGOj8g+KittApmvxC4tFL
         Iz4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=R/X6OB69oGAdLb9Exm42Gci/I9tlEyvySVjxmJmsO5Y=;
        b=Lhp96Amt1eO7DC7OOoux/Zof+1u47L+N+Q2iqRMa1kJWn/dMQ1cbMPB7Ir8JoHw7Js
         mnmMD2ShaQ/2lATy0LoLdHBAJXXECQRJPrpPEFk+x55N5Pxt8SOYNHC28rqxOTyZkJmX
         eM7rfhgLlKNUdstjumaV9N8bK7pATFwdpXgafIA2r7gyvMeRCRyEDPYGbrrhMX/2AHrl
         rUfgaLw5GjeDT7+9nF6O15jvGZO+SOFgeLrx3WmBPKExwX2VgEOoUn7NIoY8cElqwhLY
         XoJWwjuuoaD+AzKgPuwBlWBjqrh6kT3WBOkdB9Q5Aa8wI2NTSNN0osSaclPuhbscHXuA
         9Y2g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PubtY47+Ae/wmfXlt+euFCbt7jdRpKVrNarWMXYCndrfno2XeUPU
	akYhZfDZPqxYkY61Q8UGtY0=
X-Google-Smtp-Source: APiQypIkRofo71042kvElB1aeCVqCuksRKEKmD5Wxi32VhM930tWUVGVqdbqh0+uSiAWbR1dGe+eig==
X-Received: by 2002:adf:ea46:: with SMTP id j6mr13192486wrn.84.1587299763046;
        Sun, 19 Apr 2020 05:36:03 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:4c50:: with SMTP id n16ls7904401wrt.11.gmail; Sun, 19
 Apr 2020 05:36:02 -0700 (PDT)
X-Received: by 2002:adf:fc11:: with SMTP id i17mr14709502wrr.152.1587299762516;
        Sun, 19 Apr 2020 05:36:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1587299762; cv=none;
        d=google.com; s=arc-20160816;
        b=zmxWqLR2iXqLYhKjDl3QbbbDByFuSy3IricFJuy6FpOeHYmIs3qpqk1x2tKw7didVF
         pioflfqygL0yGVA3aE7M6aEPNROVh3kNVHiL4lNsQh10m/vPmffxiT09wKv+asCW5XyQ
         K5kJJEHRWJ6r49+01CKI6pj8C/V7mFwe1tedRDd8ZuCcqDirZp9XqgHJaJNXmbbEphgu
         DsvktxhFqE2KdBG+aclge5EY+vDJoHzXrFSNFW8YSZMJenkDRnh83csu778NfnniW0Ly
         Yid7Z0+eyjARnpdF2zJyLC7grGmAHxf8x7xzDKzGqUo4kJzpVu+tWvUDsZmGhmfL/ukM
         pxcA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=afph382MGIZHOV/SgbQAXZBFlcKW7h50wb1w1sw4fu0=;
        b=Q0Ixzbl/6QkGdw8bHFoJZLGlW83AZn+DAQfYamLkQtKOnOXroDyXoBfSoAYMRCggLy
         mMaZP/W6FPY0peyQD+7yeNxlWwFP3I6QNMAbogc/yBXH36hTRbN12ZfL/nFYFmPjEZAg
         D0S2f5+ezB7wsEF/hRnSkVRnkqGxkApH7qZt2LlpD29UIDvsUyA+lg9eyvhfdCe54oft
         vRfQ7FMGYBpK73g0zfXldv7iX/nsdZUPcqUZjIjFdHNX1MBvcUs9kNKC7FtNrgFAfvkR
         AaCabpMQ8+Tvd/c/Qcr6c6f58GBo1sCYfOyvTKDnu9e7gXTiPO3EbuMb67CSnCclBspt
         xh+w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@agner.ch header.s=dkim header.b=H2WCPhp5;
       spf=pass (google.com: domain of stefan@agner.ch designates 2a02:418:6a02::a2 as permitted sender) smtp.mailfrom=stefan@agner.ch
Received: from mail.kmu-office.ch (mail.kmu-office.ch. [2a02:418:6a02::a2])
        by gmr-mx.google.com with ESMTPS id u15si1393400wru.2.2020.04.19.05.36.00
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 19 Apr 2020 05:36:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of stefan@agner.ch designates 2a02:418:6a02::a2 as permitted sender) client-ip=2a02:418:6a02::a2;
Received: from zyt.lan (unknown [IPv6:2a02:169:3df5::564])
	by mail.kmu-office.ch (Postfix) with ESMTPSA id 114375C9AEE;
	Sun, 19 Apr 2020 14:36:00 +0200 (CEST)
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
Subject: [PATCH v2 3/3] ARM: use VFP assembler mnemonics if available
Date: Sun, 19 Apr 2020 14:35:51 +0200
Message-Id: <b897ffa09d664620835c116066f0382aaeae9910.1587299429.git.stefan@agner.ch>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <cover.1587299429.git.stefan@agner.ch>
References: <cover.1587299429.git.stefan@agner.ch>
MIME-Version: 1.0
X-Original-Sender: stefan@agner.ch
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@agner.ch header.s=dkim header.b=H2WCPhp5;       spf=pass
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

Link: https://github.com/ClangBuiltLinux/linux/issues/905
Signed-off-by: Stefan Agner <stefan@agner.ch>
---
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
index 66a04f6f4775..49564cc32688 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -2090,3 +2090,5 @@ source "drivers/firmware/Kconfig"
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
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/b897ffa09d664620835c116066f0382aaeae9910.1587299429.git.stefan%40agner.ch.
