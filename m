Return-Path: <clang-built-linux+bncBC7JPD5NQEBBBSV67PVAKGQEGZVHUHQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x238.google.com (mail-oi1-x238.google.com [IPv6:2607:f8b0:4864:20::238])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A15199EC5
	for <lists+clang-built-linux@lfdr.de>; Thu, 22 Aug 2019 20:30:35 +0200 (CEST)
Received: by mail-oi1-x238.google.com with SMTP id l15sf2539204oic.13
        for <lists+clang-built-linux@lfdr.de>; Thu, 22 Aug 2019 11:30:35 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1566498634; cv=pass;
        d=google.com; s=arc-20160816;
        b=AYExFCUjcLVCyzDV/LNwyNXu26b+m3orEFlV2D99n1NS3z1IXU226+TL1E44wrhfUC
         GhR/apQdwoxDKRrlcELjqfVqMA0XA+zpLoBbqifcLrnGjrJluHSgM8NbHkO/voQIztWr
         4iLXrN+Tu93kW4HjunrlOpAYJguUP+CV40h4nvzKOxVtAqdmenDITs2pW6yTyunjDZpP
         vM44EOOPc5pQiqNTe/z6TT+uKouRm/Ymnow2iGdVNwnMSJJyX8rLN7WvyqRMd1hLdpwr
         UOkrM8X2Tf421QvSSqZIKej3iS2ePCPaQX8oyplo5dEgCUoTgRQRconsCIeU4m1e5Yhx
         O55g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=YpVp/3uCvssFNm+m/Pptw7MihB26xDEopRAPnTQOpyo=;
        b=Gqx6iFxTPmHlk8qOIXYQ8P6q32w+32bl4FH3OBHpMOeSbSxxfiu0kAg2P5MuavFi3l
         7/CZguUPD0LDNbELjUNIOvIs46RKa7z+T7a7AHdUoll13pijW5fx4VmcpnxNcZUKb1kx
         w5i2skweFDqMO8wjga7cJRv51zPz54+2KNPCr/iV7ekkuZtaqgcX8KCGxkb9dBSKluZw
         dRZBSIGHktWTzRlKekaBGz8JPG/Ao07Exg+2/ULBlWettjjb+jHUhpyrp1Inmkrtp8mo
         FY9zmfAmBtIOL9IXCR8u9Sdcsfzf44gOKWZvkqxD3D4CEPy5R1Zgtu35Gjeg+UJyxu0L
         SfsQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="iYhxrK5/";
       spf=pass (google.com: domain of 3qt9exqukew0ysfnvrzzrwp.nzxnwlyr-mftwe-wtyfirzzrwprczfad.nzx@flex--nhuck.bounces.google.com designates 2607:f8b0:4864:20::64a as permitted sender) smtp.mailfrom=3Qt9eXQUKEW0YSfNVRZZRWP.NZXNWLYR-MfTWe-WTYfiRZZRWPRcZfad.NZX@flex--nhuck.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=YpVp/3uCvssFNm+m/Pptw7MihB26xDEopRAPnTQOpyo=;
        b=C+PUjiIHMa01NyBgEZZOmOZ8UywEdPy87Zhx9K72MK8518XYK1fGbhVYimJm+uhgKz
         hwsQeTK7mZMmNahf/LxmnQ8fuSTb94BuAWsp18vikXvYK0lOo+qL5+eois9RnXi+ysm2
         5RqZquE8YloC040SDQMWjs592BnxlnyJE8kmlIzCzSJ/ANWElTEOH18dzGcdB5/uO89G
         Qd30wN3VRKsexfyZnj3qK+PDJv0lLhIy7/aLQ0ZVIWzAe5gIxp47+HJ9aLaXT2gSwFVg
         WYaNvWdz009L+iLFNR1LmR5Q4OIDetnC9YK2u/sdckFF3RvSn6jDBNKvygobdH1KF6ct
         xQtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=YpVp/3uCvssFNm+m/Pptw7MihB26xDEopRAPnTQOpyo=;
        b=QXV5gUu+NM17z/B4PpEpdltKcPKGqvAaxOkzlw20IrzrHI8eMSH/IU+Du8BuYizoIg
         RKe6D1y33ysnYc00GOK0qKklOv8Vy3WYTFWZ+wyStYtpVjrgrHYqd8JSW3heum1FNE8f
         7UUmfZrCS6MLDixLnOxSsd9psAvXSddigeYIFcllGBLOPJqM/W46d8aoOOcXc8J9EsEb
         rgasnOuUeyBz8j+cpQCQTBWhomPDhDBXRxG2ZvxbLB6Ocq/SZiatU0ug3BIBKTCAxnoG
         GDlxuKwUUWin2R2zngrkyNVq6tHTDODjQWoGBsRNNaDanKDfw/zA0dhatAB3IF+we1K/
         vWRA==
X-Gm-Message-State: APjAAAU5CQ5qnOFP0X7C+AuU6LkB+C5x1mMS5dG+dn0iPhf8c1QF/hxZ
	vpnzatIwgYpjHy070qg0F68=
X-Google-Smtp-Source: APXvYqw7K6HqJzN8EBe2FM+SuhNlFiHlYNKlh1fKgzQV4lE2AyYE4VZW1Dd3rNNmkR4+1xH9W7K3ew==
X-Received: by 2002:a05:6830:1181:: with SMTP id u1mr837087otq.184.1566498634076;
        Thu, 22 Aug 2019 11:30:34 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a54:4411:: with SMTP id k17ls30333oiw.11.gmail; Thu, 22 Aug
 2019 11:30:27 -0700 (PDT)
X-Received: by 2002:aca:3a55:: with SMTP id h82mr395353oia.36.1566498627199;
        Thu, 22 Aug 2019 11:30:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1566498627; cv=none;
        d=google.com; s=arc-20160816;
        b=LHCoL8JH2hqku28Yn8DBz95CTbZ36pz3OOH7qRfQossVVKU5+WEqLDAYCR2R8KsBLn
         RmWjbZQv76/E3WWuuaTE+lcz+kAcoVvTjKaSjxXBoovr+i3e/mzoy/l/+46p/QM5QcdK
         cbquq0N2jpGu1nir89BTZr2uoK6tG/FO1RqSOCRDz8KnNF+SOsSZnony71VdQ1PQs/ff
         r3VnSROv0zFzMRK5siWbThVk4HkrOy4mFWfSbFF8pjE2Iu9TIdn7p9JER43Tfz0H3dr0
         TvQA2DExxN0XM1ZFcALVAbWERbJDNgjS2/Y6DMD4xJJRUSeCRHQUz/Nw9vMDYnQF1Wr1
         I4ng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=KQwNe8Pp6SqVTY5KEJhCdHPctgjYIVlIxDtpeZXR9GA=;
        b=tKLeqzq6eDTslG7T/8LYLK2XQd48amTlM2G+2/Hdyvj7j1L2XynRFd/aVnBcA22Y0P
         0EWHSuEOP2zWr/p+K1phKExerUwuv/g51Zn+plvoO2RZ36BRSMd8QsVW9lnDbsiqifRy
         R85n5m1XlkuB8ROLICktPs27yd2+J99tKtitcxt9E2kvgWOecRFsNdePFmqi4iRSoCy1
         6lbj0HQA6xKL1UipVDPmRdHgpUcFHJT5BCIgFjsFtTvzruCMwKgtOmXrC4k/+/qtl3tL
         M2Lpw34B7bDoy5Ha/I7hB+CeBeQVTbqweNe7MC9bh5SB2xTaCN/Vw1LTocO9Y3VJQLLq
         EtsA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="iYhxrK5/";
       spf=pass (google.com: domain of 3qt9exqukew0ysfnvrzzrwp.nzxnwlyr-mftwe-wtyfirzzrwprczfad.nzx@flex--nhuck.bounces.google.com designates 2607:f8b0:4864:20::64a as permitted sender) smtp.mailfrom=3Qt9eXQUKEW0YSfNVRZZRWP.NZXNWLYR-MfTWe-WTYfiRZZRWPRcZfad.NZX@flex--nhuck.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x64a.google.com (mail-pl1-x64a.google.com. [2607:f8b0:4864:20::64a])
        by gmr-mx.google.com with ESMTPS id w131si15085oif.2.2019.08.22.11.30.27
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 22 Aug 2019 11:30:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3qt9exqukew0ysfnvrzzrwp.nzxnwlyr-mftwe-wtyfirzzrwprczfad.nzx@flex--nhuck.bounces.google.com designates 2607:f8b0:4864:20::64a as permitted sender) client-ip=2607:f8b0:4864:20::64a;
Received: by mail-pl1-x64a.google.com with SMTP id p9so4104078pls.18
        for <clang-built-linux@googlegroups.com>; Thu, 22 Aug 2019 11:30:27 -0700 (PDT)
X-Received: by 2002:a65:6406:: with SMTP id a6mr463771pgv.393.1566498626159;
 Thu, 22 Aug 2019 11:30:26 -0700 (PDT)
Date: Thu, 22 Aug 2019 11:30:22 -0700
In-Reply-To: <CAKwvOd=wKUhnWr4UhVvgn6NYh+=zQOpMmKG9d_zEqaKLa4_9FA@mail.gmail.com>
Message-Id: <20190822183022.130790-1-nhuck@google.com>
Mime-Version: 1.0
References: <CAKwvOd=wKUhnWr4UhVvgn6NYh+=zQOpMmKG9d_zEqaKLa4_9FA@mail.gmail.com>
X-Mailer: git-send-email 2.23.0.187.g17f5b7556c-goog
Subject: [PATCH v3] ARM: UNWINDER_FRAME_POINTER implementation for Clang
From: "'Nathan Huckleberry' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: linux@armlinux.org.uk
Cc: linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	clang-built-linux@googlegroups.com, miles.chen@mediatek.com, 
	ndesaulniers@google.com, Nathan Huckleberry <nhuck@google.com>, Tri Vo <trong@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: nhuck@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="iYhxrK5/";       spf=pass
 (google.com: domain of 3qt9exqukew0ysfnvrzzrwp.nzxnwlyr-mftwe-wtyfirzzrwprczfad.nzx@flex--nhuck.bounces.google.com
 designates 2607:f8b0:4864:20::64a as permitted sender) smtp.mailfrom=3Qt9eXQUKEW0YSfNVRZZRWP.NZXNWLYR-MfTWe-WTYfiRZZRWPRcZfad.NZX@flex--nhuck.bounces.google.com;
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
Tested-by: Nick Desaulniers <ndesaulniers@google.com>
---
Changes from v2->v3
* Fix indentation on code
* Fix comment formatting

 arch/arm/Kconfig.debug         |   2 +-
 arch/arm/Makefile              |   5 +-
 arch/arm/lib/Makefile          |   8 +-
 arch/arm/lib/backtrace-clang.S | 217 +++++++++++++++++++++++++++++++++
 4 files changed, 229 insertions(+), 3 deletions(-)
 create mode 100644 arch/arm/lib/backtrace-clang.S

diff --git a/arch/arm/Kconfig.debug b/arch/arm/Kconfig.debug
index 85710e078afb..b9c674ec19e0 100644
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
diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index c3624ca6c0bc..6f251c201db0 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -36,7 +36,10 @@ KBUILD_CFLAGS	+= $(call cc-option,-mno-unaligned-access)
 endif
 
 ifeq ($(CONFIG_FRAME_POINTER),y)
-KBUILD_CFLAGS	+=-fno-omit-frame-pointer -mapcs -mno-sched-prolog
+KBUILD_CFLAGS	+=-fno-omit-frame-pointer
+ifeq ($(CONFIG_CC_IS_GCC),y)
+KBUILD_CFLAGS += -mapcs -mno-sched-prolog
+endif
 endif
 
 ifeq ($(CONFIG_CPU_BIG_ENDIAN),y)
diff --git a/arch/arm/lib/Makefile b/arch/arm/lib/Makefile
index b25c54585048..6d2ba454f25b 100644
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
+  lib-y	+= backtrace-clang.o
+else
+  lib-y	+= backtrace.o
+endif
+
 # using lib_ here won't override already available weak symbols
 obj-$(CONFIG_UACCESS_WITH_MEMCPY) += uaccess_with_memcpy.o
 
diff --git a/arch/arm/lib/backtrace-clang.S b/arch/arm/lib/backtrace-clang.S
new file mode 100644
index 000000000000..2ff375144b55
--- /dev/null
+++ b/arch/arm/lib/backtrace-clang.S
@@ -0,0 +1,217 @@
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
+#define sv_lr	r8
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
+ * Clang does not store pc or sp in function prologues so we don't know exactly
+ * where the function starts.
+ *
+ * We can treat the current frame's lr as the saved pc and the preceding
+ * frame's lr as the current frame's lr, but we can't trace the most recent
+ * call.  Inserting a false stack frame allows us to reference the function
+ * called last in the stacktrace.
+ *
+ * If the call instruction was a bl we can look at the callers branch
+ * instruction to calculate the saved pc.  We can recover the pc in most cases,
+ * but in cases such as calling function pointers we cannot. In this case,
+ * default to using the lr. This will be some address in the function, but will
+ * not be the function start.
+ *
+ * Unfortunately due to the stack frame layout we can't dump r0 - r3, but these
+ * are less frequently saved.
+ *
+ * Stack frame layout:
+ * 		<larger addresses>
+ * 		saved lr
+ * 	frame=> saved fp
+ * 		optionally saved caller registers (r4 - r10)
+ * 		optionally saved arguments (r0 - r3)
+ * 		<top of stack frame>
+ * 		<smaller addresses>
+ *
+ * Functions start with the following code sequence:
+ * corrected pc =>  stmfd sp!, {..., fp, lr}
+ *		add fp, sp, #x
+ *		stmfd sp!, {r0 - r3} (optional)
+ *
+ *
+ *
+ *
+ *
+ *
+ * The diagram below shows an example stack setup for dump_stack.
+ *
+ * The frame for c_backtrace has pointers to the code of dump_stack. This is
+ * why the frame of c_backtrace is used to for the pc calculation of
+ * dump_stack. This is why we must move back a frame to print dump_stack.
+ *
+ * The stored locals for dump_stack are in dump_stack's frame. This means that
+ * to fully print dump_stack's frame we need both the frame for dump_stack (for
+ * locals) and the frame that was called by dump_stack (for pc).
+ *
+ * To print locals we must know where the function start is. If we read the
+ * function prologue opcodes we can determine which variables are stored in the
+ * stack frame.
+ *
+ * To find the function start of dump_stack we can look at the stored LR of
+ * show_stack. It points at the instruction directly after the bl dump_stack.
+ * We can then read the offset from the bl opcode to determine where the branch
+ * takes us.  The address calculated must be the start of dump_stack.
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
+		stmfd	sp!, {r4 - r9, fp, lr}	@ Save an extra register
+						@ to ensure 8 byte alignment
+		movs	frame, r0		@ if frame pointer is zero
+		beq	no_frame		@ we have no stack frames
+		tst	r1, #0x10		@ 26 or 32-bit mode?
+		moveq	mask, #0xfc000003
+		movne	mask, #0		@ mask for 32-bit
+
+/*
+ * Switches the current frame to be the frame for dump_stack.
+ */
+		add	frame, sp, #24		@ switch to false frame
+for_each_frame:	tst	frame, mask		@ Check for address exceptions
+		bne	no_frame
+
+/*
+ * sv_fp is the stack frame with the locals for the current considered
+ * function.
+ *
+ * sv_pc is the saved lr frame the frame above. This is a pointer to a code
+ * address within the current considered function, but it is not the function
+ * start. This value gets updated to be the function start later if it is
+ * possible.
+ */
+1001:		ldr	sv_pc, [frame, #4]	@ get saved 'pc'
+1002:		ldr	sv_fp, [frame, #0]	@ get saved fp
+
+		teq	sv_fp, mask		@ make sure next frame exists
+		beq	no_frame
+
+/*
+ * sv_lr is the lr from the function that called the current function. This is
+ * a pointer to a code address in the current function's caller.  sv_lr-4 is
+ * the instruction used to call the current function.
+ *
+ * This sv_lr can be used to calculate the function start if the function was
+ * called using a bl instruction. If the function start can be recovered sv_pc
+ * is overwritten with the function start.
+ *
+ * If the current function was called using a function pointer we cannot
+ * recover the function start and instead continue with sv_pc as an arbitrary
+ * value within the current function. If this is the case we cannot print
+ * registers for the current function, but the stacktrace is still printed
+ * properly.
+ */
+1003:		ldr	sv_lr, [sv_fp, #4]	@ get saved lr from next frame
+
+		ldr	r0, [sv_lr, #-4]	@ get call instruction
+		ldr	r3, .Lopcode+4
+		and	r2, r3, r0		@ is this a bl call
+		teq	r2, r3
+		bne	finished_setup		@ give up if it's not
+		and	r0, #0xffffff		@ get call offset 24-bit int
+		lsl	r0, r0, #8		@ sign extend offset
+		asr	r0, r0, #8
+		ldr	sv_pc, [sv_fp, #4]	@ get lr address
+		add	sv_pc, sv_pc, #-4	@ get call instruction address
+		add	sv_pc, sv_pc, #8	@ take care of prefetch
+		add	sv_pc, sv_pc, r0, lsl #2@ find function start
+
+finished_setup:
+
+		bic	sv_pc, sv_pc, mask	@ mask PC/LR for the mode
+
+/*
+ * Print the function (sv_pc) and where it was called from (sv_lr).
+ */
+1004:		mov	r0, sv_pc
+
+		mov	r1, sv_lr
+		mov	r2, frame
+		bic	r1, r1, mask		@ mask PC/LR for the mode
+		bl	dump_backtrace_entry
+
+/*
+ * Test if the function start is a stmfd instruction to determine which
+ * registers were stored in the function prologue.
+ *
+ * If we could not recover the sv_pc because we were called through a function
+ * pointer the comparison will fail and no registers will print. Unwinding will
+ * continue as if there had been no registers stored in this frame.
+ */
+1005:		ldr	r1, [sv_pc, #0]		@ if stmfd sp!, {..., fp, lr}
+		ldr	r3, .Lopcode		@ instruction exists,
+		teq	r3, r1, lsr #11
+		ldr	r0, [frame]		@ locals are stored in
+						@ the preceding frame
+		subeq	r0, r0, #4
+		bleq	dump_backtrace_stm	@ dump saved registers
+
+/*
+ * If we are out of frames or if the next frame is invalid.
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
+.Lopcode:	.word	0xe92d4800 >> 11	@ stmfd sp!, {... fp, lr}
+		.word	0x0b000000		@ bl if these bits are set
+
+#endif
-- 
2.23.0.187.g17f5b7556c-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190822183022.130790-1-nhuck%40google.com.
