Return-Path: <clang-built-linux+bncBC7JPD5NQEBBBFM36HVAKGQETP6A6LQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x438.google.com (mail-pf1-x438.google.com [IPv6:2607:f8b0:4864:20::438])
	by mail.lfdr.de (Postfix) with ESMTPS id 91565969A3
	for <lists+clang-built-linux@lfdr.de>; Tue, 20 Aug 2019 21:44:22 +0200 (CEST)
Received: by mail-pf1-x438.google.com with SMTP id x1sf5525486pfq.2
        for <lists+clang-built-linux@lfdr.de>; Tue, 20 Aug 2019 12:44:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1566330261; cv=pass;
        d=google.com; s=arc-20160816;
        b=0WGB5yh0bNeUzxYvK9f00dNCKTp9Q5z2zHpfTH9dvWHa1WvlZ3qikUl0FJcOtEbhnu
         bqlHoomIiEvAL7p0IrOGlCg5d7001pFqEgnK2nopPUZn5O321vsHaGLp6Jt25PJ4RNsg
         //W5KBHgJKWIM3A1lKd4WLPd+GBGgyN57tGeoLN+V0vNF9ZAMi4gUjgd1KZWx0Pmd49B
         /CWhyNSzdY+MpIV9Nw1Yx+FID2A8mBK+X4Td2xDKrU4AMmzyhrDp8m8jkrbMMW1NcmCq
         yKfHxCTLTb9SdxBKc7Ou3cwAYN9RuueNvPci83j1YrRvVSbnftrx/q15dnU/ofGGuIDB
         VzvQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :mime-version:message-id:date:dkim-signature;
        bh=9wKLA/+ecDaGABj8gqPeYFtisVSHTSZV+ju+02UoVEc=;
        b=iRrXnI8jB92qKc5BrY5ZY1anUA+c+1DBBkOzcJVeqz+OqLjOluqKvhTqGRxtTrNwrT
         c5VnHPOgg/YM4SjDtNupMyAIFrVE6UkA3uz4qpMNkw5501vaaqcXvzIbrVvbpKXbXtmq
         r8u9G4d0bq08L8v2BtETDrp1QRqdVCSaxtUejhBtV7lmETYyojEov+c5vN1b2gFsJrRr
         83lyPGb4kfp7f9/Q1pVIFExqPQpGkRJoy7uPkbitlvFLWpJnPIU+SiuEsH5aES5T0fG9
         fWK09rMz4yfDJ6/6D/lnx7Xsy+OPVsqoBXhzt50+JfPNJk8hNyPFwZmOWIB1M3YECDpo
         3mzw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ERMFp3EH;
       spf=pass (google.com: domain of 3k01cxqukeza71ew408805y.w86w5u70-ve25d-527eh08805y0b8e9c.w86@flex--nhuck.bounces.google.com designates 2607:f8b0:4864:20::64a as permitted sender) smtp.mailfrom=3k01cXQUKEZA71Ew408805y.w86w5u70-vE25D-527EH08805y0B8E9C.w86@flex--nhuck.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:message-id:mime-version:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=9wKLA/+ecDaGABj8gqPeYFtisVSHTSZV+ju+02UoVEc=;
        b=MIEZHagRfuh4O41S/+avJbuJ33Y4l7afuHypRgwyyOyTpXSFgNAtjiT2ylRRjC8ugU
         HnbrkpfTupz/AkXLrLKwkq5cfq3QRBPfDWM63GEoyTF/oqIAhNFMSmfahm1m5M+wW4bD
         wThXoQcuTNMakGQ1bG7huXblvd95yxpFwNDXyAVA2Q6hRsX10k4QOymiE7ZGzAMvEYao
         F7TZhacGrjvH8dEg3ChHbcKOTeLDTyvtCevSTxm0TmBSilqT7nypUi1BnQoDCZVYVNr4
         Nq7qRINSz73S1RNyJLXtPCTpxb9V//p//JAVsxUJK18dpmdl+KsYO/gMulbd5PjaBY1P
         6OZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=9wKLA/+ecDaGABj8gqPeYFtisVSHTSZV+ju+02UoVEc=;
        b=cvTkJa3Z4iRzjow+6TetR1QGgmDS5/4ZL1oVP5w9fGD8Y5E+/mcBRyG6wW9dln615b
         kFlqJOYL8ccZkzLAWPhR484gepheK60wory9RLuZT51OEcl0Ttzrp9UnfMx0KHKptUFy
         Uj1oPjWkKVdqeRPAgwGyugrlgffVN7vY+kTGxCMqribbrvhFNJT/la0dewKjsHFSYkAU
         GGetIz4HTsUrT86g0a3LHc2OcgT4N+suwDAgqwm1ZxV72IGS88fG2/Nbp2vtHf+GYhG1
         bl9sRVrzTMlH2hi1TV6c5EDTeSOO+f0akJHJUHXOHBhkQUR4i2a4/zoUejOegtU3kg9t
         pZ7g==
X-Gm-Message-State: APjAAAXKhh0lwgNCx9WZsF6+5DgDyyAnwPRYMqjLB38lph0N4AGvgTa+
	A7i/GsVv0HzfwQV5UprEhzs=
X-Google-Smtp-Source: APXvYqw6OLWKU8k70OzzcRlFjKKb6qb/KEpaG0rv70o0Fp3f38S3lhAd53hCWKYoSQ2+cNU7juoJiA==
X-Received: by 2002:a63:fa11:: with SMTP id y17mr26348623pgh.267.1566330261126;
        Tue, 20 Aug 2019 12:44:21 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:3043:: with SMTP id w64ls4500340pgw.15.gmail; Tue, 20
 Aug 2019 12:44:20 -0700 (PDT)
X-Received: by 2002:a63:7d49:: with SMTP id m9mr27030831pgn.161.1566330260694;
        Tue, 20 Aug 2019 12:44:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1566330260; cv=none;
        d=google.com; s=arc-20160816;
        b=wvVnzXljv6dFKlrYdJ88hXw8qtiKBvsRZhKwrRxr9FcUbyUe48KZKhpboZWfhaal7y
         LS+b7Kw4/kj9OWfbo0QVzZyAW2IIt7UKrrsmWAE/hmm/oA+kgq0B/PhrxTI/xXMt3P2A
         Tq+0uc2Q6AxZT1G2vuR2l3fLWWXRuMuPv9itteExfG2DJYND35hC96BIb5ZIrWDcCZjg
         XtXltpd0kF9BjUSnXkF2v4jDGIr7Dvvo8KTZ2kr0vej3SDDAGoPx/OolbAhRh8XXDQl+
         PnsPWV1JUrnoq5bXLQV5qXli4VHbVqczAgfhIXvmnPVVpX+zvRAtrMVmSqV5MaCyL7VA
         NahA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:mime-version:message-id:date:dkim-signature;
        bh=omNibtwt01VLQFVdtqmNwtyJ+PQcOYPH4P7JrKJGBHQ=;
        b=IH1sqwzabKXU7q413vyLLgEKgdXMnYjrva7MzX2JSiL8xBHTEsfCIy0eocFZKAhkhx
         zTil3GNcdHDXTsCO+luVKKGqlsGndsn/lAEJdzvJn6IR0/OrwI19VENNnQaa7PSjE79X
         YFQraN4k0ZzP0hqKlvXSGOmtrtEoGf+nGRbqRWhqa+CajeE2gds16JGRfWCYOswFYIv3
         GAu1lJFYpTFPD6NxKMaAm0csIfj+E/Id7iHVNRSGW31RVmhvj/MCcL2WvPoCiIOGXmCm
         LhNNeghbtzxcWLfj62OvneobKBNllRr0nvR042FGgKdbc/k1dK7Pxyxn+JDQlm9Xi3JJ
         bfgA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ERMFp3EH;
       spf=pass (google.com: domain of 3k01cxqukeza71ew408805y.w86w5u70-ve25d-527eh08805y0b8e9c.w86@flex--nhuck.bounces.google.com designates 2607:f8b0:4864:20::64a as permitted sender) smtp.mailfrom=3k01cXQUKEZA71Ew408805y.w86w5u70-vE25D-527EH08805y0B8E9C.w86@flex--nhuck.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x64a.google.com (mail-pl1-x64a.google.com. [2607:f8b0:4864:20::64a])
        by gmr-mx.google.com with ESMTPS id z9si1740pjp.0.2019.08.20.12.44.20
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 Aug 2019 12:44:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3k01cxqukeza71ew408805y.w86w5u70-ve25d-527eh08805y0b8e9c.w86@flex--nhuck.bounces.google.com designates 2607:f8b0:4864:20::64a as permitted sender) client-ip=2607:f8b0:4864:20::64a;
Received: by mail-pl1-x64a.google.com with SMTP id g18so4734612plj.19
        for <clang-built-linux@googlegroups.com>; Tue, 20 Aug 2019 12:44:20 -0700 (PDT)
X-Received: by 2002:a65:6093:: with SMTP id t19mr19510560pgu.79.1566330259888;
 Tue, 20 Aug 2019 12:44:19 -0700 (PDT)
Date: Tue, 20 Aug 2019 12:43:51 -0700
Message-Id: <20190820194351.107486-1-nhuck@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.23.0.rc1.153.gdeed80330f-goog
Subject: [PATCH] ARM: UNWINDER_FRAME_POINTER implementation for Clang
From: "'Nathan Huckleberry' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: linux@armlinux.org.uk
Cc: linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	clang-built-linux@googlegroups.com, miles.chen@mediatek.com, 
	ndesaulniers@google.com, Nathan Huckleberry <nhuck@google.com>, Tri Vo <trong@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: nhuck@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=ERMFp3EH;       spf=pass
 (google.com: domain of 3k01cxqukeza71ew408805y.w86w5u70-ve25d-527eh08805y0b8e9c.w86@flex--nhuck.bounces.google.com
 designates 2607:f8b0:4864:20::64a as permitted sender) smtp.mailfrom=3k01cXQUKEZA71Ew408805y.w86w5u70-vE25D-527EH08805y0B8E9C.w86@flex--nhuck.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nathan Huckleberry <nhuck@google.com>
Reply-To: Nathan Huckleberry <nhuck@google.com>
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

The stackframe setup when compiled with clang is different.
Since the stack unwinder expects the gcc stackframe setup it
fails to print backtraces. This patch adds support for the
clang stackframe setup.

Link: https://github.com/ClangBuiltLinux/linux/issues/35
Cc: clang-built-linux@googlegroups.com
Suggested-by: Tri Vo <trong@google.com>
Signed-off-by: Nathan Huckleberry <nhuck@google.com>
---
Changes from RFC
* Push extra register to satisfy 8 byte alignment requirement
* Add clarifying comments
* Separate code into its own file

 arch/arm/Kconfig.debug         |   4 +-
 arch/arm/Makefile              |   5 +-
 arch/arm/lib/Makefile          |   8 +-
 arch/arm/lib/backtrace-clang.S | 224 +++++++++++++++++++++++++++++++++
 4 files changed, 237 insertions(+), 4 deletions(-)
 create mode 100644 arch/arm/lib/backtrace-clang.S

diff --git a/arch/arm/Kconfig.debug b/arch/arm/Kconfig.debug
index 85710e078afb..92fca7463e21 100644
--- a/arch/arm/Kconfig.debug
+++ b/arch/arm/Kconfig.debug
@@ -56,7 +56,7 @@ choice
 
 config UNWINDER_FRAME_POINTER
 	bool "Frame pointer unwinder"
-	depends on !THUMB2_KERNEL && !CC_IS_CLANG
+	depends on !THUMB2_KERNEL
 	select ARCH_WANT_FRAME_POINTERS
 	select FRAME_POINTER
 	help
@@ -1872,7 +1872,7 @@ config DEBUG_UNCOMPRESS
 	  When this option is set, the selected DEBUG_LL output method
 	  will be re-used for normal decompressor output on multiplatform
 	  kernels.
-	  
+
 
 config UNCOMPRESS_INCLUDE
 	string
diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index c3624ca6c0bc..729e223b83fe 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -36,7 +36,10 @@ KBUILD_CFLAGS	+= $(call cc-option,-mno-unaligned-access)
 endif
 
 ifeq ($(CONFIG_FRAME_POINTER),y)
-KBUILD_CFLAGS	+=-fno-omit-frame-pointer -mapcs -mno-sched-prolog
+KBUILD_CFLAGS	+=-fno-omit-frame-pointer
+  ifeq ($(CONFIG_CC_IS_GCC),y)
+  KBUILD_CFLAGS += -mapcs -mno-sched-prolog
+  endif
 endif
 
 ifeq ($(CONFIG_CPU_BIG_ENDIAN),y)
diff --git a/arch/arm/lib/Makefile b/arch/arm/lib/Makefile
index b25c54585048..e10a769c72ec 100644
--- a/arch/arm/lib/Makefile
+++ b/arch/arm/lib/Makefile
@@ -5,7 +5,7 @@
 # Copyright (C) 1995-2000 Russell King
 #
 
-lib-y		:= backtrace.o changebit.o csumipv6.o csumpartial.o   \
+lib-y		:= changebit.o csumipv6.o csumpartial.o               \
 		   csumpartialcopy.o csumpartialcopyuser.o clearbit.o \
 		   delay.o delay-loop.o findbit.o memchr.o memcpy.o   \
 		   memmove.o memset.o setbit.o                        \
@@ -19,6 +19,12 @@ lib-y		:= backtrace.o changebit.o csumipv6.o csumpartial.o   \
 mmu-y		:= clear_user.o copy_page.o getuser.o putuser.o       \
 		   copy_from_user.o copy_to_user.o
 
+ifdef CONFIG_CC_IS_CLANG
+  lib-y += backtrace-clang.o
+else
+  lib-y += backtrace.o
+endif
+
 # using lib_ here won't override already available weak symbols
 obj-$(CONFIG_UACCESS_WITH_MEMCPY) += uaccess_with_memcpy.o
 
diff --git a/arch/arm/lib/backtrace-clang.S b/arch/arm/lib/backtrace-clang.S
new file mode 100644
index 000000000000..2b02014dbdd1
--- /dev/null
+++ b/arch/arm/lib/backtrace-clang.S
@@ -0,0 +1,224 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/*
+ *  linux/arch/arm/lib/backtrace-clang.S
+ *
+ *  Copyright (C) 2019 Nathan Huckleberry
+ *
+ */
+#include <linux/kern_levels.h>
+#include <linux/linkage.h>
+#include <asm/assembler.h>
+		.text
+
+/* fp is 0 or stack frame */
+
+#define frame	r4
+#define sv_fp	r5
+#define sv_pc	r6
+#define mask	r7
+#define sv_lr   r8
+
+ENTRY(c_backtrace)
+
+#if !defined(CONFIG_FRAME_POINTER) || !defined(CONFIG_PRINTK)
+		ret	lr
+ENDPROC(c_backtrace)
+#else
+
+
+/*
+ * Clang does not store pc or sp in function prologues
+ * 		so we don't know exactly where the function
+ * 		starts.
+ * We can treat the current frame's lr as the saved pc and the
+ * 		preceding frame's lr as the lr, but we can't
+ * 		trace the most recent call.
+ * Inserting a false stack frame allows us to reference the
+ * 		function called last in the stacktrace.
+ * If the call instruction was a bl we can look at the callers
+ * 		branch instruction to calculate the saved pc.
+ * We can recover the pc in most cases, but in cases such as
+ * 		calling function pointers we cannot. In this
+ * 		case, default to using the lr. This will be
+ * 		some address in the function, but will not
+ * 		be the function start.
+ * Unfortunately due to the stack frame layout we can't dump
+ *              r0 - r3, but these are less frequently saved.
+ *
+ * Stack frame layout:
+ *             <larger addresses>
+ *             saved lr
+ *    frame => saved fp
+ *             optionally saved caller registers (r4 - r10)
+ *             optionally saved arguments (r0 - r3)
+ *             <top of stack frame>
+ *             <smaller addresses>
+ *
+ * Functions start with the following code sequence:
+ * corrected pc =>  stmfd sp!, {..., fp, lr}
+ *		    add fp, sp, #x
+ *		    stmfd sp!, {r0 - r3} (optional)
+ *
+ *
+ *
+ *
+ *
+ *
+ * The diagram below shows an example stack setup
+ * 	for dump_stack.
+ *
+ * The frame for c_backtrace has pointers to the
+ * 	code of dump_stack. This is why the frame of
+ * 	c_backtrace is used to for the pc calculation
+ * 	of dump_stack. This is why we must move back
+ * 	a frame to print dump_stack.
+ *
+ * The stored locals for dump_stack are in dump_stack's
+ * 	frame. This means that to fully print dump_stack's frame
+ * 	we need the both the frame for dump_stack (for locals) and the
+ * 	frame that was called by dump_stack (for pc).
+ *
+ * To print locals we must know where the function start is. If
+ * 	we read the function prologue opcodes we can determine
+ * 	which variables are stored in the stack frame.
+ *
+ * To find the function start of dump_stack we can look at the
+ * 	stored LR of show_stack. It points at the instruction
+ * 	directly after the bl dump_stack. We can then read the
+ * 	offset from the bl opcode to determine where the branch takes us.
+ * 	The address calculated must be the start of dump_stack.
+ *
+ * c_backtrace frame           dump_stack:
+ * {[LR]    }  ============|   ...
+ * {[FP]    }  =======|    |   bl c_backtrace
+ *                    |    |=> ...
+ * {[R4-R10]}         |
+ * {[R0-R3] }         |        show_stack:
+ * dump_stack frame   |        ...
+ * {[LR]    } =============|   bl dump_stack
+ * {[FP]    } <=======|    |=> ...
+ * {[R4-R10]}
+ * {[R0-R3] }
+ */
+
+stmfd   sp!, {r4 - r9, fp, lr}	@ Save an extra register
+				@ to ensure 8 byte alignment
+movs	frame, r0		@ if frame pointer is zero
+beq	no_frame		@ we have no stack frames
+
+tst	r1, #0x10		@ 26 or 32-bit mode?
+moveq	mask, #0xfc000003
+movne	mask, #0		@ mask for 32-bit
+
+/*
+ * Switches the current frame to be the frame for dump_stack.
+ */
+		add     frame, sp, #24          @ switch to false frame
+for_each_frame:	tst	frame, mask		@ Check for address exceptions
+		bne	no_frame
+
+/*
+ * sv_fp is the stack frame with the locals for the current considered
+ * 	function.
+ * sv_pc is the saved lr frame the frame above. This is a pointer to a
+ * 	code address within the current considered function, but
+ * 	it is not the function start. This value gets updated to be
+ * 	the function start later if it is possible.
+ */
+1001:		ldr	sv_pc, [frame, #4]	@ get saved 'pc'
+1002:		ldr	sv_fp, [frame, #0]	@ get saved fp
+
+		teq     sv_fp, #0               @ make sure next frame exists
+		beq     no_frame
+
+/*
+ * sv_lr is the lr from the function that called the current function. This
+ * 	is a pointer to a code address in the current function's caller.
+ * 	sv_lr-4 is the instruction used to call the current function.
+ * This sv_lr can be used to calculate the function start if the function
+ * 	was called using a bl instruction. If the function start
+ * 	can be recovered sv_pc is overwritten with the function start.
+ * If the current function was called using a function pointer we cannot
+ * 	recover the function start and instead continue with sv_pc as
+ * 	an arbitrary value within the current function. If this is the case
+ * 	we cannot print registers for the current function, but the stacktrace
+ * 	is still printed properly.
+ */
+1003:		ldr     sv_lr, [sv_fp, #4]      @ get saved lr from next frame
+
+		ldr     r0, [sv_lr, #-4]        @ get call instruction
+		ldr     r3, .Ldsi+8
+		and     r2, r3, r0              @ is this a bl call
+		teq     r2, r3
+		bne     finished_setup          @ give up if it's not
+		and     r0, #0xffffff           @ get call offset 24-bit int
+		lsl     r0, r0, #8              @ sign extend offset
+		asr     r0, r0, #8
+		ldr     sv_pc, [sv_fp, #4]      @ get lr address
+		add     sv_pc, sv_pc, #-4	@ get call instruction address
+		add     sv_pc, sv_pc, #8        @ take care of prefetch
+		add     sv_pc, sv_pc, r0, lsl #2 @ find function start
+
+finished_setup:
+
+		bic	sv_pc, sv_pc, mask	@ mask PC/LR for the mode
+
+/*
+ * Print the function (sv_pc) and where it was called
+ * 	from (sv_lr).
+ */
+1004:		mov     r0, sv_pc
+
+		mov     r1, sv_lr
+		mov	r2, frame
+		bic	r1, r1, mask		@ mask PC/LR for the mode
+		bl	dump_backtrace_entry
+
+/*
+ * Test if the function start is a stmfd instruction
+ * 	to determine which registers were stored in the function
+ * 	prologue.
+ * If we could not recover the sv_pc because we were called through
+ * 	a function pointer the comparison will fail and no registers
+ * 	will print.
+ */
+1005:		ldr	r1, [sv_pc, #0]		@ if stmfd sp!, {..., fp, lr}
+		ldr	r3, .Ldsi		@ instruction exists,
+		teq	r3, r1, lsr #11
+		ldr     r0, [frame]             @ locals are stored in
+						@ the preceding frame
+		subeq	r0, r0, #4
+		bleq	dump_backtrace_stm	@ dump saved registers
+
+/*
+ * If we are out of frames or if the next frame
+ * 	is invalid.
+ */
+		teq	sv_fp, #0		@ zero saved fp means
+		beq	no_frame		@ no further frames
+
+		cmp	sv_fp, frame		@ next frame must be
+		mov	frame, sv_fp		@ above the current frame
+		bhi	for_each_frame
+
+1006:		adr	r0, .Lbad
+		mov	r1, frame
+		bl	printk
+no_frame:	ldmfd	sp!, {r4 - r9, fp, pc}
+ENDPROC(c_backtrace)
+		.pushsection __ex_table,"a"
+		.align	3
+		.long	1001b, 1006b
+		.long	1002b, 1006b
+		.long	1003b, 1006b
+		.long	1004b, 1006b
+		.long   1005b, 1006b
+		.popsection
+
+.Lbad:		.asciz	"Backtrace aborted due to bad frame pointer <%p>\n"
+		.align
+.Ldsi:		.word	0xe92d4800 >> 11	@ stmfd sp!, {... fp, lr}
+		.word	0xe92d0000 >> 11	@ stmfd sp!, {}
+		.word   0x0b000000              @ bl if these bits are set
+
+#endif
-- 
2.23.0.rc1.153.gdeed80330f-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190820194351.107486-1-nhuck%40google.com.
