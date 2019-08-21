Return-Path: <clang-built-linux+bncBC7JPD5NQEBBB34G63VAKGQEZLZBUGA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53e.google.com (mail-pg1-x53e.google.com [IPv6:2607:f8b0:4864:20::53e])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F80A981AF
	for <lists+clang-built-linux@lfdr.de>; Wed, 21 Aug 2019 19:46:25 +0200 (CEST)
Received: by mail-pg1-x53e.google.com with SMTP id h5sf1626145pgq.23
        for <lists+clang-built-linux@lfdr.de>; Wed, 21 Aug 2019 10:46:24 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1566409583; cv=pass;
        d=google.com; s=arc-20160816;
        b=bs90dbZj+sIHETfoOERspBk61BTs753NVIjbN6sQasV/XTAqPeKJqGfZcMafjX9gv/
         FRp1ErxvlW1A5LgX/V/LalQBy1W5kGOdfXzHBo4GQtJ0vFaTxPXr3eCENbyeGxcdayIc
         HYGuCxxgkoskyzUM/V6AsqyzaTSeYUW/DqCrrb+KijC1ZkyF0zo15aGxpXDQz3eh9fDq
         4aDk7OLt4J0PhizuPU8csx6KV67kJ1MnOoYPfa8NiZhCnv2XIlRlij6DjxHerMsbbLZc
         DYjpPGTX/UYnluZ9JPZ4DCDKlYkcuLrQJP3JCxqdIIc0fi6m3lGjqN6uRYNaManuJ5Z1
         wMxw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=pMLLEIy/959u6bDMGRrbe1hDk3aGoFMtiM7MbVxwVb8=;
        b=oXoeHQWIWry3iCwFMUY9pRH9Zh8uNspymLNfjmXtEBN3w8w3RdieOrFesMaQNPtNMB
         fv25RbLK/IPMI76UcSW/0QbGGKciZEWGFRzG7kdaflXIUWwziuhE0ydjmTzDctT+kGJ6
         vUdCN3pmqdbM+QtepbJSP2TLqOY2cgNLQ9XbEhddZx9AFi9vO9adHHg5s+kQPFTpd4mM
         naVQPpJ9+dlQApP2B6kX/iMniJUO2TMO5I52/K/hFhgRT1JI5fg8LOwyeOwLXUaDpW9m
         VRb4q/f+idy/OR5Ov1zOjUl/FsT0JB1RrzoiCke9jXJTbh560NG8mwtLkzssP4qtXg1W
         J3Og==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=MgwoT24K;
       spf=pass (google.com: domain of 3bondxqukedsker9hdlldib.9lj9i7kd-8rfiq-ifkrudlldibdolrmp.9lj@flex--nhuck.bounces.google.com designates 2607:f8b0:4864:20::449 as permitted sender) smtp.mailfrom=3boNdXQUKEdsKER9HDLLDIB.9LJ9I7KD-8RFIQ-IFKRUDLLDIBDOLRMP.9LJ@flex--nhuck.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=pMLLEIy/959u6bDMGRrbe1hDk3aGoFMtiM7MbVxwVb8=;
        b=B5Q4RrL2e79D0alYw9nLGQbwhRtabkCIy8hh2hA/vz5ArpjIMfiKvu9Qwnz0Mw3PKi
         +ReR+VL7DDMu9R1CJJOxMgQJUd3YqYknPnJJMYHZNWVrAadZ1GbYGjq2HkqLoS9RT1nM
         nTNv8+7lkIgCwiWPwC1KjdNvXfGozZPxCeLzyGi2myRG/C78NTM9SLGpDmr/2kihwasA
         GG9BkexRE1+pGYYgjWrBajqFWNKUaDIcP4va1h7PHV3eI2Ia47Z8swkb1sSrCpTAO0+V
         Gi1paTe5J56N0zFIGbCqTr8Z9u+/op3FCP/XoEADRyrU3kOZwdPbyisUOYrIYnw64NNg
         MRZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=pMLLEIy/959u6bDMGRrbe1hDk3aGoFMtiM7MbVxwVb8=;
        b=be4W9fuXw+z6bQ/XTZqIUFX0KIpzGmqiqte/kw49wVQTKr/sBkAxjLI9cP2Vw5BRyj
         Zg89mw9EHDODOmptj8/0mhEphsnlKpX51DxCEheC1qwQNrRrToRUTD874y31f3BLYvk6
         57VK0bb0HEeJQecFU3rnSeEX9kg2gTKcCjMtPMH1+GvGl/5Q+ieI+dDHGL86F8rgBoEB
         Y4sM5ZekdHfD5hJ4IFHQgF+SXVpqgGS+rTt0Frd+vcGG9FG2RLL9w7mxpPhN2nuK9na6
         IN9Qs6oS8fEiCy6+ZiOigyES8IZf0UydX3hH9DwBLSnvAwPwpkBd5WCp16gIn1e3BxRL
         blZQ==
X-Gm-Message-State: APjAAAUT0LmVnnJ/JKPdtyxAc47f0l0sJZd4D9wugROdrRxqmRA5ndH7
	ooG3YOGNS1V7F465Z61baA4=
X-Google-Smtp-Source: APXvYqw3vfELhHNFY1eBlNDCXL2X4JwGRz3qD1zdCt65ob+m/G4BRvFsGAvkiv6Yzhnhsfun+K1rDg==
X-Received: by 2002:a63:494d:: with SMTP id y13mr30602708pgk.109.1566409583646;
        Wed, 21 Aug 2019 10:46:23 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a65:580d:: with SMTP id g13ls644025pgr.5.gmail; Wed, 21 Aug
 2019 10:46:23 -0700 (PDT)
X-Received: by 2002:a63:9245:: with SMTP id s5mr30818280pgn.123.1566409583246;
        Wed, 21 Aug 2019 10:46:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1566409583; cv=none;
        d=google.com; s=arc-20160816;
        b=e5SLVHyZPnrYCiEYyPzf0Xi5POXHlLl3ejtDdodxi14n5byeF1k1E5NZZRkRDOEKxr
         m7ITLOspdiO4w0Tbngr0G2a9bSvfHgIGqMXJGxk7geJ9q1sV98DF52iCueL68/ftv3IB
         J1N6jFtzEsZ1juHa6gaFkt0R+wejBLTetvsqZ5PsRP28mbqZN7j6BRLWUjDfHvpSvONS
         kzmrxkz/jCpbQV0dBKn35X52NAZ9pMY0bvuDuC/o7DLUa4XDY4wL+8rBSRpyrW+cLDSw
         nykzwoe2PFvuQ+Id4J0C57nxJQHEj2Zug++fTd/EUWmyWGMghd11aj2+RoOIpUrEXp+b
         xGTA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=JQSRePDzCPl3TptPqCKZb0r1MA+qHGTjezQh5N7pYVM=;
        b=n/CD/yaXnAd1riO0Mh8tdxsQKV5iwS1524glz2roMjYbfzuKYfESgaIGJ0c/S0Jk/c
         EzdSN1OCN1H4+NF22a0XZOvRWiOEgFwaxKFVEoDasdzN89vlM9uFBewqo9f0+W5BcBAF
         CsjI9F6JwEc1zFQ29242gN7E2n2K48wzG2vXY4mnbdc+YSLZQffZXmg3RGWbW73bjoCb
         yHh6vb2vT0P6HLF24aVuGB0ldA9beePoONieLFprmeh7l6D70CAc0QY3oOfJEMEFwyir
         G/IzfOu3Tve146U/X2wyB3hVeNb4IqrgMoNcE7bV8hpWfXT9TwgunKhrm4TVWMWeYjGK
         wQfQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=MgwoT24K;
       spf=pass (google.com: domain of 3bondxqukedsker9hdlldib.9lj9i7kd-8rfiq-ifkrudlldibdolrmp.9lj@flex--nhuck.bounces.google.com designates 2607:f8b0:4864:20::449 as permitted sender) smtp.mailfrom=3boNdXQUKEdsKER9HDLLDIB.9LJ9I7KD-8RFIQ-IFKRUDLLDIBDOLRMP.9LJ@flex--nhuck.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x449.google.com (mail-pf1-x449.google.com. [2607:f8b0:4864:20::449])
        by gmr-mx.google.com with ESMTPS id a79si1034142pfa.5.2019.08.21.10.46.23
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 21 Aug 2019 10:46:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3bondxqukedsker9hdlldib.9lj9i7kd-8rfiq-ifkrudlldibdolrmp.9lj@flex--nhuck.bounces.google.com designates 2607:f8b0:4864:20::449 as permitted sender) client-ip=2607:f8b0:4864:20::449;
Received: by mail-pf1-x449.google.com with SMTP id w30so2092698pfj.4
        for <clang-built-linux@googlegroups.com>; Wed, 21 Aug 2019 10:46:23 -0700 (PDT)
X-Received: by 2002:a65:684c:: with SMTP id q12mr28055332pgt.405.1566409582636;
 Wed, 21 Aug 2019 10:46:22 -0700 (PDT)
Date: Wed, 21 Aug 2019 10:46:19 -0700
In-Reply-To: <CAJkfWY4cHz+i8kYg2i1Krs-32nh7-WQU+psT=DRGYnTje6yj4Q@mail.gmail.com>
Message-Id: <20190821174619.21935-1-nhuck@google.com>
Mime-Version: 1.0
References: <CAJkfWY4cHz+i8kYg2i1Krs-32nh7-WQU+psT=DRGYnTje6yj4Q@mail.gmail.com>
X-Mailer: git-send-email 2.23.0.rc1.153.gdeed80330f-goog
Subject: [PATCH v2] ARM: UNWINDER_FRAME_POINTER implementation for Clang
From: "'Nathan Huckleberry' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: linux@armlinux.org.uk
Cc: linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	clang-built-linux@googlegroups.com, miles.chen@mediatek.com, 
	ndesaulniers@google.com, Nathan Huckleberry <nhuck@google.com>, Tri Vo <trong@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: nhuck@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=MgwoT24K;       spf=pass
 (google.com: domain of 3bondxqukedsker9hdlldib.9lj9i7kd-8rfiq-ifkrudlldibdolrmp.9lj@flex--nhuck.bounces.google.com
 designates 2607:f8b0:4864:20::449 as permitted sender) smtp.mailfrom=3boNdXQUKEdsKER9HDLLDIB.9LJ9I7KD-8RFIQ-IFKRUDLLDIBDOLRMP.9LJ@flex--nhuck.bounces.google.com;
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
Changes from v1->v2
* Fix indentation in various files
* Swap spaces for tabs
* Rename Ldsi to Lopcode
* Remove unused Ldsi entry

 arch/arm/Kconfig.debug         |   2 +-
 arch/arm/Makefile              |   5 +-
 arch/arm/lib/Makefile          |   8 +-
 arch/arm/lib/backtrace-clang.S | 229 +++++++++++++++++++++++++++++++++
 4 files changed, 241 insertions(+), 3 deletions(-)
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
index 000000000000..6f2a8a57d0fb
--- /dev/null
+++ b/arch/arm/lib/backtrace-clang.S
@@ -0,0 +1,229 @@
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
+ * Clang does not store pc or sp in function prologues
+ * so we don't know exactly where the function
+ * starts.
+ *
+ * We can treat the current frame's lr as the saved pc and the
+ * preceding frame's lr as the current frame's lr,
+ * but we can't trace the most recent call.
+ * Inserting a false stack frame allows us to reference the
+ * function called last in the stacktrace.
+ *
+ * If the call instruction was a bl we can look at the callers
+ * branch instruction to calculate the saved pc.
+ * We can recover the pc in most cases, but in cases such as
+ * calling function pointers we cannot. In this
+ * case, default to using the lr. This will be
+ * some address in the function, but will not
+ * be the function start.
+ *
+ * Unfortunately due to the stack frame layout we can't dump
+ *              r0 - r3, but these are less frequently saved.
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
+ * The diagram below shows an example stack setup
+ * for dump_stack.
+ *
+ * The frame for c_backtrace has pointers to the
+ * code of dump_stack. This is why the frame of
+ * c_backtrace is used to for the pc calculation
+ * of dump_stack. This is why we must move back
+ * a frame to print dump_stack.
+ *
+ * The stored locals for dump_stack are in dump_stack's
+ * frame. This means that to fully print dump_stack's frame
+ * we need both the frame for dump_stack (for locals) and the
+ * frame that was called by dump_stack (for pc).
+ *
+ * To print locals we must know where the function start is. If
+ * we read the function prologue opcodes we can determine
+ * which variables are stored in the stack frame.
+ *
+ * To find the function start of dump_stack we can look at the
+ * stored LR of show_stack. It points at the instruction
+ * directly after the bl dump_stack. We can then read the
+ * offset from the bl opcode to determine where the branch takes us.
+ * The address calculated must be the start of dump_stack.
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
+		add	frame, sp, #24		@ switch to false frame
+for_each_frame:	tst	frame, mask		@ Check for address exceptions
+		bne	no_frame
+
+/*
+ * sv_fp is the stack frame with the locals for the current considered
+ * function.
+ *
+ * sv_pc is the saved lr frame the frame above. This is a pointer to a
+ * code address within the current considered function, but
+ * it is not the function start. This value gets updated to be
+ * the function start later if it is possible.
+ */
+1001:		ldr	sv_pc, [frame, #4]	@ get saved 'pc'
+1002:		ldr	sv_fp, [frame, #0]	@ get saved fp
+
+		teq	sv_fp, mask		@ make sure next frame exists
+		beq	no_frame
+
+/*
+ * sv_lr is the lr from the function that called the current function. This
+ * is a pointer to a code address in the current function's caller.
+ * sv_lr-4 is the instruction used to call the current function.
+ *
+ * This sv_lr can be used to calculate the function start if the function
+ * was called using a bl instruction. If the function start
+ * can be recovered sv_pc is overwritten with the function start.
+ *
+ * If the current function was called using a function pointer we cannot
+ * recover the function start and instead continue with sv_pc as
+ * an arbitrary value within the current function. If this is the case
+ * we cannot print registers for the current function, but the stacktrace
+ * is still printed properly.
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
+ * Print the function (sv_pc) and where it was called
+ * from (sv_lr).
+ */
+1004:		mov	r0, sv_pc
+
+		mov	r1, sv_lr
+		mov	r2, frame
+		bic	r1, r1, mask		@ mask PC/LR for the mode
+		bl	dump_backtrace_entry
+
+/*
+ * Test if the function start is a stmfd instruction
+ * to determine which registers were stored in the function
+ * prologue.
+ *
+ * If we could not recover the sv_pc because we were called through
+ * a function pointer the comparison will fail and no registers
+ * will print.
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
2.23.0.rc1.153.gdeed80330f-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190821174619.21935-1-nhuck%40google.com.
