Return-Path: <clang-built-linux+bncBDYJPJO25UGBBR5OZCAAMGQEGZRCODY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63d.google.com (mail-pl1-x63d.google.com [IPv6:2607:f8b0:4864:20::63d])
	by mail.lfdr.de (Postfix) with ESMTPS id D3D58306AA0
	for <lists+clang-built-linux@lfdr.de>; Thu, 28 Jan 2021 02:45:44 +0100 (CET)
Received: by mail-pl1-x63d.google.com with SMTP id z2sf538259pln.18
        for <lists+clang-built-linux@lfdr.de>; Wed, 27 Jan 2021 17:45:44 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611798343; cv=pass;
        d=google.com; s=arc-20160816;
        b=RGJZw5e6ef44rolIS0RrwoKPfGRnwUoCKouah2DKDFZXZcAJK1h8gwZUBUNvPqith4
         5l283BZszunPaQFUqpju24ETl0N1ca1J0PKP3hgVS1P+RPDVZZkZU9lRMPNEOhvBIo5I
         H/RMyG63XTRU2i50UwZGfH15ZNjA/eR1nGwR4Xstl/pJXluNOWuUeMUk5QXa3lme+fgA
         pitxe5UfLJ3WvRb7axc/CO2I9zO9oLoU8oVuNmqYoD5100S4yN4CpvBZZbSxIuetpS3c
         ocjYKVqNWpodsN1NZvBlfneBumQQ2gKYX6d+LKujZVNK+ygCDc+sv/IZ4c72h60Ka8Cf
         d8iA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :mime-version:message-id:date:sender:dkim-signature;
        bh=X3jd469USiqUSGMjQRsoUhW7KnFLyYlwMbKwGrFKtSw=;
        b=sVj5X/dQLhHDaN701F3+oy1Tby6cPwTeX1RRD76JCssk1FLHEJEhfdGCUHBsJFOe+w
         p2Q5kstjBHaM0DUEqn7Ly47LvMYo1zWUl7ATY2teIQpNQtiCBe4qPHN2h13et2Hf+R5A
         xoA8XLVgYVuHO6Q3SFBFltsHoJxdXMdtT2zRXbk9bM3/bLlLJo7pNIOU1tO2PG4i2URN
         OhZPh2drWY4d1DKsaB8/UD/JToimv2oA0DZSorWocYm1KJYuTAneBJs7NleOsBD0IJ4I
         BMxIOSBqyH7eSpM+I6gs3wNOH+c4cqtnV+1cOpog/XFGFgCmtqUcbAgHM1HeXlx1tPbp
         IHlw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=rXVoMSyl;
       spf=pass (google.com: domain of 3rhcsyawkammwmn1j3uwrn01pxxpun.lxv@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::449 as permitted sender) smtp.mailfrom=3RhcSYAwKAMMwmn1j3uwrn01pxxpun.lxv@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:message-id:mime-version:subject:from:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=X3jd469USiqUSGMjQRsoUhW7KnFLyYlwMbKwGrFKtSw=;
        b=UrJXoJtMKrJYLSmO4Snhg+tenfF+yl3Nav8R6Qvcyav7MZgDuo+rtGWvdOR08doClM
         UdeHaBi4seA4u28mPlzde0Jp2lppqTGwX0bFXGiYWJZmXK0gN4u5vqS0dXzLkBQNClj1
         HoDb294jPwYhqzLgkI7CaMmJIyYY4+RQx85UDeah1l/6VFWRn7mRR65C2Gsze/fFc0kX
         tY9Ek6RKiPza5CADEzDDZ4tvyXzLRL7Cf6ODTTctpoJ3sihm+QAz/k7xZkRJSX8g9HJf
         BB4fqRTguU50+fp4qNhZoBQaTLYRHcPusLFT+PbteTw75oq9xHxBcvfdGFI5WwxqA7/g
         D93g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:message-id:mime-version:subject:from
         :to:cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=X3jd469USiqUSGMjQRsoUhW7KnFLyYlwMbKwGrFKtSw=;
        b=FPrqq+1jQ0I8Bn7znJcWuikxSk6XlvHEjq/pOif5UX95QwlqRstAZoNHp2X1zkVNSg
         VRASbAZF/KZAnKEc7IZ1C+vo/cAi5eTY3H4NgOrsbIUzZmIt4mPGRD5x5wT/acYXQk1i
         xRFQXZlDqivbZiTovjlfTPkM2rS4Ph6fjdKWkrXIi2vkLassgvZ2OSj7MrTQvLMHlq2M
         oFs6Dz6z8uPbR2QD6wsxAe65tCGSJsMc5gonIN59CSGGo/jM/kgyG0jRygcWPGayaXCU
         bSP3KClrwPoiDR4ZqKoiDSpRGnetl/4HTtazRj4ETNTU50lXYYIikrx9BD4S4xUnKCEP
         9VMA==
X-Gm-Message-State: AOAM532fZnoPWw6pGsbwinoY1vjGRPXjuCvi4ocm9kchRPSBTQKAPfBa
	ENZsKgxGaDoE80dir/arkUY=
X-Google-Smtp-Source: ABdhPJxYPqcNXuHiEmx0YNCJTBOGOYoogsL+Nve5hRqr/HVEUWxcSZpfn+nuzHy50gYnzcrJyD7Kig==
X-Received: by 2002:a17:902:ed93:b029:de:84d2:9ce1 with SMTP id e19-20020a170902ed93b02900de84d29ce1mr13797130plj.47.1611798343558;
        Wed, 27 Jan 2021 17:45:43 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:92d5:: with SMTP id o204ls1555596pfd.6.gmail; Wed, 27
 Jan 2021 17:45:43 -0800 (PST)
X-Received: by 2002:a63:c64f:: with SMTP id x15mr13746357pgg.196.1611798342873;
        Wed, 27 Jan 2021 17:45:42 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611798342; cv=none;
        d=google.com; s=arc-20160816;
        b=Dn9UKXXAUgPdolV2GvYiZlg0Qa4fC/dnW2+uagHieAdlyQ3vk8sq7SGCMDA1/yvn78
         EaNyBqA+fCMEh44oY+F7np8sJELEjPmUlZMtsWSm14EBFDyC8RFYBrnOXAWgh8UKYZx2
         YbQXQIkptoPnufSCfOiDwWa/sb/5b6eCv/yVCUm9ai2VtbcfqNXSTeWg9wlpIMwm8rYh
         1X7SrDJlEZ+BTwSiFXOylddQOskfIlCPaucvsgZKyl5hppHcWOha+b7iaet6KUmqc0tB
         Oyx9DKFkHknqLefszGCh0g37mMpEEKijMWXRQdxtkSJwXOSRobUxyHq/WP9KzHq2H0pz
         3JTw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:mime-version:message-id:date:sender
         :dkim-signature;
        bh=fMvzJ1JDqC/qNvFg/v53Ff5hETsG8LqS20g0X4uLhNU=;
        b=YeTYvoxyrtdJcuaT8XW4UWbLrYNlmVu5wx8W8jttNQ4GK3GSIMKyvkL3rmlgA1A+mr
         05diwiIfX3bd4/NGJbdGc3SbUgZOZZTwMH7tVLr2tHrvZsqrTrFKt3Tp5dSswjxUaLv1
         x9AFpQ4UJNb//xUvqj/wXom38RiUDgEga9E46a2eOFxmPWXgt6b1ocr+OsysX0xlMq/R
         dBmn68ZRS5bXJqhlik3R4bj3LRZvYsRfrAdd4SwEtg3IOgmmiaShyOiyJW2yhRNTEOy3
         5gY5hWy4px9VqjkEQy5depTifLtT7+2GCb/PnScSBdoBThiFPu+8T1D5/NVk3PWSmMQY
         wB0Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=rXVoMSyl;
       spf=pass (google.com: domain of 3rhcsyawkammwmn1j3uwrn01pxxpun.lxv@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::449 as permitted sender) smtp.mailfrom=3RhcSYAwKAMMwmn1j3uwrn01pxxpun.lxv@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x449.google.com (mail-pf1-x449.google.com. [2607:f8b0:4864:20::449])
        by gmr-mx.google.com with ESMTPS id ci6si423490pjb.1.2021.01.27.17.45.42
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 27 Jan 2021 17:45:42 -0800 (PST)
Received-SPF: pass (google.com: domain of 3rhcsyawkammwmn1j3uwrn01pxxpun.lxv@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::449 as permitted sender) client-ip=2607:f8b0:4864:20::449;
Received: by mail-pf1-x449.google.com with SMTP id 68so2489748pfe.2
        for <clang-built-linux@googlegroups.com>; Wed, 27 Jan 2021 17:45:42 -0800 (PST)
Sender: "ndesaulniers via sendgmr" <ndesaulniers@ndesaulniers1.mtv.corp.google.com>
X-Received: from ndesaulniers1.mtv.corp.google.com ([2620:15c:211:202:f693:9fff:fef4:4d25])
 (user=ndesaulniers job=sendgmr) by 2002:a17:90a:4582:: with SMTP id
 v2mr8395520pjg.79.1611798342525; Wed, 27 Jan 2021 17:45:42 -0800 (PST)
Date: Wed, 27 Jan 2021 17:45:39 -0800
Message-Id: <20210128014539.2962552-1-ndesaulniers@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.30.0.365.g02bc693789-goog
Subject: [RFC] ARM: use .arch directives instead of assembler command line flags
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Arnd Bergmann <arnd@arndb.de>
Cc: clang-built-linux@googlegroups.com, 
	Nick Desaulniers <ndesaulniers@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=rXVoMSyl;       spf=pass
 (google.com: domain of 3rhcsyawkammwmn1j3uwrn01pxxpun.lxv@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::449 as permitted sender) smtp.mailfrom=3RhcSYAwKAMMwmn1j3uwrn01pxxpun.lxv@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

Similar to commit a6c30873ee4a ("ARM: 8989/1: use .fpu assembler
directives instead of assembler arguments").

GCC and GNU binutils support setting the "sub arch" via -march=,
-Wa,-march, target function attribute, and .arch assembler directive.

Clang's integrated assembler does not support -Wa,-march (and the logic
to overrule one when multiple of the above are used).

Since most assembler is non-conditionally assembled with one sub arch
(modulo arch/arm/delay-loop.S which conditionally is assembled as armv4
based on CONFIG_ARCH_RPC, and arch/arm/mach-at91/pm-suspend.S which is
conditionally assembled as armv7-a based on CONFIG_CPU_V7), prefer the
.arch assembler directive.

Link: https://bugs.llvm.org/show_bug.cgi?id=48894
Link: https://github.com/ClangBuiltLinux/linux/issues/1195
Suggested-by: Arnd Bergmann <arnd@arndb.de>
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
---
 arch/arm/boot/compressed/Makefile  |  2 --
 arch/arm/common/Makefile           |  2 --
 arch/arm/common/mcpm_head.S        |  2 ++
 arch/arm/common/vlock.S            |  2 ++
 arch/arm/kernel/Makefile           |  1 -
 arch/arm/kernel/hyp-stub.S         |  2 ++
 arch/arm/lib/Makefile              |  4 ----
 arch/arm/lib/delay-loop.S          |  4 ++++
 arch/arm/mach-at91/Makefile        |  3 ---
 arch/arm/mach-at91/pm_suspend.S    |  4 ++++
 arch/arm/mach-imx/Makefile         |  3 ---
 arch/arm/mach-imx/headsmp.S        |  2 ++
 arch/arm/mach-imx/resume-imx6.S    |  2 ++
 arch/arm/mach-imx/suspend-imx6.S   |  2 ++
 arch/arm/mach-mvebu/Makefile       |  1 -
 arch/arm/mach-mvebu/coherency_ll.S |  1 +
 arch/arm/mach-npcm/Makefile        |  2 --
 arch/arm/mach-npcm/headsmp.S       |  2 ++
 arch/arm/mm/Makefile               | 13 -------------
 arch/arm/mm/abort-ev6.S            |  1 +
 arch/arm/mm/abort-ev7.S            |  1 +
 arch/arm/mm/cache-v6.S             |  2 ++
 arch/arm/mm/cache-v7.S             |  2 ++
 arch/arm/mm/cache-v7m.S            |  2 ++
 arch/arm/mm/proc-v6.S              |  2 ++
 arch/arm/mm/proc-v7-2level.S       |  2 ++
 arch/arm/mm/proc-v7.S              |  2 ++
 arch/arm/mm/tlb-v6.S               |  2 ++
 arch/arm/mm/tlb-v7.S               |  2 ++
 29 files changed, 41 insertions(+), 31 deletions(-)

diff --git a/arch/arm/boot/compressed/Makefile b/arch/arm/boot/compressed/Makefile
index fb521efcc6c2..c0236b095227 100644
--- a/arch/arm/boot/compressed/Makefile
+++ b/arch/arm/boot/compressed/Makefile
@@ -193,7 +193,5 @@ CFLAGS_font.o := -Dstatic=
 $(obj)/font.c: $(FONTC)
 	$(call cmd,shipped)
 
-AFLAGS_hyp-stub.o := -Wa,-march=armv7-a
-
 $(obj)/hyp-stub.S: $(srctree)/arch/$(SRCARCH)/kernel/hyp-stub.S
 	$(call cmd,shipped)
diff --git a/arch/arm/common/Makefile b/arch/arm/common/Makefile
index 8cd574be94cf..6a42600fa4c5 100644
--- a/arch/arm/common/Makefile
+++ b/arch/arm/common/Makefile
@@ -14,7 +14,5 @@ obj-$(CONFIG_SHARP_SCOOP)	+= scoop.o
 obj-$(CONFIG_CPU_V7)		+= secure_cntvoff.o
 obj-$(CONFIG_MCPM)		+= mcpm_head.o mcpm_entry.o mcpm_platsmp.o vlock.o
 CFLAGS_REMOVE_mcpm_entry.o	= -pg
-AFLAGS_mcpm_head.o		:= -march=armv7-a
-AFLAGS_vlock.o			:= -march=armv7-a
 obj-$(CONFIG_BL_SWITCHER)	+= bL_switcher.o
 obj-$(CONFIG_BL_SWITCHER_DUMMY_IF) += bL_switcher_dummy_if.o
diff --git a/arch/arm/common/mcpm_head.S b/arch/arm/common/mcpm_head.S
index 291d969bc719..299495c43dfd 100644
--- a/arch/arm/common/mcpm_head.S
+++ b/arch/arm/common/mcpm_head.S
@@ -15,6 +15,8 @@
 
 #include "vlock.h"
 
+.arch armv7-a
+
 .if MCPM_SYNC_CLUSTER_CPUS
 .error "cpus must be the first member of struct mcpm_sync_struct"
 .endif
diff --git a/arch/arm/common/vlock.S b/arch/arm/common/vlock.S
index f1c7fd44f1b1..1fa09c4697ed 100644
--- a/arch/arm/common/vlock.S
+++ b/arch/arm/common/vlock.S
@@ -12,6 +12,8 @@
 #include <linux/linkage.h>
 #include "vlock.h"
 
+.arch armv7-a
+
 /* Select different code if voting flags  can fit in a single word. */
 #if VLOCK_VOTING_SIZE > 4
 #define FEW(x...)
diff --git a/arch/arm/kernel/Makefile b/arch/arm/kernel/Makefile
index ae295a3bcfef..4f12e5f2d6ce 100644
--- a/arch/arm/kernel/Makefile
+++ b/arch/arm/kernel/Makefile
@@ -99,7 +99,6 @@ CFLAGS_head-inflate-data.o := $(call cc-option,-Wframe-larger-than=10240)
 obj-$(CONFIG_XIP_DEFLATED_DATA) += head-inflate-data.o
 
 obj-$(CONFIG_ARM_VIRT_EXT)	+= hyp-stub.o
-AFLAGS_hyp-stub.o		:=-Wa,-march=armv7-a
 ifeq ($(CONFIG_ARM_PSCI),y)
 obj-$(CONFIG_SMP)		+= psci_smp.o
 endif
diff --git a/arch/arm/kernel/hyp-stub.S b/arch/arm/kernel/hyp-stub.S
index b699b22a4db1..3a506b9095a5 100644
--- a/arch/arm/kernel/hyp-stub.S
+++ b/arch/arm/kernel/hyp-stub.S
@@ -9,6 +9,8 @@
 #include <asm/assembler.h>
 #include <asm/virt.h>
 
+.arch armv7-a
+
 #ifndef ZIMAGE
 /*
  * For the kernel proper, we need to find out the CPU boot mode long after
diff --git a/arch/arm/lib/Makefile b/arch/arm/lib/Makefile
index 6d2ba454f25b..42fb75c06647 100644
--- a/arch/arm/lib/Makefile
+++ b/arch/arm/lib/Makefile
@@ -36,10 +36,6 @@ else
   lib-y	+= io-readsw-armv4.o io-writesw-armv4.o
 endif
 
-ifeq ($(CONFIG_ARCH_RPC),y)
-  AFLAGS_delay-loop.o		+= -march=armv4
-endif
-
 $(obj)/csumpartialcopy.o:	$(obj)/csumpartialcopygeneric.S
 $(obj)/csumpartialcopyuser.o:	$(obj)/csumpartialcopygeneric.S
 
diff --git a/arch/arm/lib/delay-loop.S b/arch/arm/lib/delay-loop.S
index 3ccade0f8130..3ac05177d097 100644
--- a/arch/arm/lib/delay-loop.S
+++ b/arch/arm/lib/delay-loop.S
@@ -8,6 +8,10 @@
 #include <asm/assembler.h>
 #include <asm/delay.h>
 
+#ifdef CONFIG_ARCH_RPC
+		.arch	armv4
+#endif
+
 		.text
 
 .LC0:		.word	loops_per_jiffy
diff --git a/arch/arm/mach-at91/Makefile b/arch/arm/mach-at91/Makefile
index f565490f1b70..b91631423b95 100644
--- a/arch/arm/mach-at91/Makefile
+++ b/arch/arm/mach-at91/Makefile
@@ -13,9 +13,6 @@ obj-$(CONFIG_SOC_SAMV7)		+= samv7.o
 # Power Management
 obj-$(CONFIG_ATMEL_PM)		+= pm.o pm_suspend.o
 
-ifeq ($(CONFIG_CPU_V7),y)
-AFLAGS_pm_suspend.o := -march=armv7-a
-endif
 ifeq ($(CONFIG_PM_DEBUG),y)
 CFLAGS_pm.o += -DDEBUG
 endif
diff --git a/arch/arm/mach-at91/pm_suspend.S b/arch/arm/mach-at91/pm_suspend.S
index 0184de05c1be..909856c8a8c6 100644
--- a/arch/arm/mach-at91/pm_suspend.S
+++ b/arch/arm/mach-at91/pm_suspend.S
@@ -12,6 +12,10 @@
 #include "pm.h"
 #include "pm_data-offsets.h"
 
+#ifdef CONFIG_CPU_V7
+.arch armv7-a
+#endif
+
 #define	SRAMC_SELF_FRESH_ACTIVE		0x01
 #define	SRAMC_SELF_FRESH_EXIT		0x00
 
diff --git a/arch/arm/mach-imx/Makefile b/arch/arm/mach-imx/Makefile
index 9cebd360d58e..7cec52979122 100644
--- a/arch/arm/mach-imx/Makefile
+++ b/arch/arm/mach-imx/Makefile
@@ -36,7 +36,6 @@ obj-$(CONFIG_HAVE_IMX_GPC) += gpc.o
 obj-$(CONFIG_HAVE_IMX_MMDC) += mmdc.o
 obj-$(CONFIG_HAVE_IMX_SRC) += src.o
 ifneq ($(CONFIG_SOC_IMX6)$(CONFIG_SOC_LS1021A),)
-AFLAGS_headsmp.o :=-Wa,-march=armv7-a
 obj-$(CONFIG_SMP) += headsmp.o platsmp.o
 obj-$(CONFIG_HOTPLUG_CPU) += hotplug.o
 endif
@@ -50,12 +49,10 @@ obj-$(CONFIG_SOC_IMX7D_CM4) += mach-imx7d-cm4.o
 obj-$(CONFIG_SOC_IMX7ULP) += mach-imx7ulp.o pm-imx7ulp.o
 
 ifeq ($(CONFIG_SUSPEND),y)
-AFLAGS_suspend-imx6.o :=-Wa,-march=armv7-a
 obj-$(CONFIG_SOC_IMX6) += suspend-imx6.o
 obj-$(CONFIG_SOC_IMX53) += suspend-imx53.o
 endif
 ifeq ($(CONFIG_ARM_CPU_SUSPEND),y)
-AFLAGS_resume-imx6.o :=-Wa,-march=armv7-a
 obj-$(CONFIG_SOC_IMX6) += resume-imx6.o
 endif
 obj-$(CONFIG_SOC_IMX6) += pm-imx6.o
diff --git a/arch/arm/mach-imx/headsmp.S b/arch/arm/mach-imx/headsmp.S
index 766dbdb2ae27..c9c969fcf0a6 100644
--- a/arch/arm/mach-imx/headsmp.S
+++ b/arch/arm/mach-imx/headsmp.S
@@ -8,6 +8,8 @@
 #include <linux/init.h>
 #include <asm/assembler.h>
 
+.arch armv7-a
+
 diag_reg_offset:
 	.word	g_diag_reg - .
 
diff --git a/arch/arm/mach-imx/resume-imx6.S b/arch/arm/mach-imx/resume-imx6.S
index 5bd1ba7ef15b..2c0c5c771251 100644
--- a/arch/arm/mach-imx/resume-imx6.S
+++ b/arch/arm/mach-imx/resume-imx6.S
@@ -9,6 +9,8 @@
 #include <asm/hardware/cache-l2x0.h>
 #include "hardware.h"
 
+.arch armv7-a
+
 /*
  * The following code must assume it is running from physical address
  * where absolute virtual addresses to the data section have to be
diff --git a/arch/arm/mach-imx/suspend-imx6.S b/arch/arm/mach-imx/suspend-imx6.S
index e06f946b75b9..63ccc2d0e920 100644
--- a/arch/arm/mach-imx/suspend-imx6.S
+++ b/arch/arm/mach-imx/suspend-imx6.S
@@ -9,6 +9,8 @@
 #include <asm/hardware/cache-l2x0.h>
 #include "hardware.h"
 
+.arch armv7-a
+
 /*
  * ==================== low level suspend ====================
  *
diff --git a/arch/arm/mach-mvebu/Makefile b/arch/arm/mach-mvebu/Makefile
index cb106899dd7c..d62612bfac48 100644
--- a/arch/arm/mach-mvebu/Makefile
+++ b/arch/arm/mach-mvebu/Makefile
@@ -1,7 +1,6 @@
 # SPDX-License-Identifier: GPL-2.0
 ccflags-$(CONFIG_ARCH_MULTIPLATFORM) := -I$(srctree)/arch/arm/plat-orion/include
 
-AFLAGS_coherency_ll.o		:= -Wa,-march=armv7-a
 CFLAGS_pmsu.o			:= -march=armv7-a
 
 obj-$(CONFIG_MACH_MVEBU_ANY)	 += system-controller.o mvebu-soc-id.o
diff --git a/arch/arm/mach-mvebu/coherency_ll.S b/arch/arm/mach-mvebu/coherency_ll.S
index a3a64bf97250..25197290632d 100644
--- a/arch/arm/mach-mvebu/coherency_ll.S
+++ b/arch/arm/mach-mvebu/coherency_ll.S
@@ -23,6 +23,7 @@
 #include <asm/assembler.h>
 #include <asm/cp15.h>
 
+	.arch armv7-a
 	.text
 /*
  * Returns the coherency base address in r1 (r0 is untouched), or 0 if
diff --git a/arch/arm/mach-npcm/Makefile b/arch/arm/mach-npcm/Makefile
index 1bc3a70bfab8..7946877d645f 100644
--- a/arch/arm/mach-npcm/Makefile
+++ b/arch/arm/mach-npcm/Makefile
@@ -1,5 +1,3 @@
 # SPDX-License-Identifier: GPL-2.0-only
-AFLAGS_headsmp.o		+= -march=armv7-a
-
 obj-$(CONFIG_ARCH_NPCM7XX)	+= npcm7xx.o
 obj-$(CONFIG_SMP)		+= platsmp.o headsmp.o
diff --git a/arch/arm/mach-npcm/headsmp.S b/arch/arm/mach-npcm/headsmp.S
index c083fe09a07b..84d2b6daaf0b 100644
--- a/arch/arm/mach-npcm/headsmp.S
+++ b/arch/arm/mach-npcm/headsmp.S
@@ -6,6 +6,8 @@
 #include <linux/init.h>
 #include <asm/assembler.h>
 
+.arch armv7-a
+
 /*
  * The boot ROM does not start secondary CPUs in SVC mode, so we need to do that
  * here.
diff --git a/arch/arm/mm/Makefile b/arch/arm/mm/Makefile
index 3510503bc5e6..d8f751b94126 100644
--- a/arch/arm/mm/Makefile
+++ b/arch/arm/mm/Makefile
@@ -33,9 +33,6 @@ obj-$(CONFIG_CPU_ABRT_EV5TJ)	+= abort-ev5tj.o
 obj-$(CONFIG_CPU_ABRT_EV6)	+= abort-ev6.o
 obj-$(CONFIG_CPU_ABRT_EV7)	+= abort-ev7.o
 
-AFLAGS_abort-ev6.o	:=-Wa,-march=armv6k
-AFLAGS_abort-ev7.o	:=-Wa,-march=armv7-a
-
 obj-$(CONFIG_CPU_PABRT_LEGACY)	+= pabort-legacy.o
 obj-$(CONFIG_CPU_PABRT_V6)	+= pabort-v6.o
 obj-$(CONFIG_CPU_PABRT_V7)	+= pabort-v7.o
@@ -49,10 +46,6 @@ obj-$(CONFIG_CPU_CACHE_FA)	+= cache-fa.o
 obj-$(CONFIG_CPU_CACHE_NOP)	+= cache-nop.o
 obj-$(CONFIG_CPU_CACHE_V7M)	+= cache-v7m.o
 
-AFLAGS_cache-v6.o	:=-Wa,-march=armv6
-AFLAGS_cache-v7.o	:=-Wa,-march=armv7-a
-AFLAGS_cache-v7m.o	:=-Wa,-march=armv7-m
-
 obj-$(CONFIG_CPU_COPY_V4WT)	+= copypage-v4wt.o
 obj-$(CONFIG_CPU_COPY_V4WB)	+= copypage-v4wb.o
 obj-$(CONFIG_CPU_COPY_FEROCEON)	+= copypage-feroceon.o
@@ -72,9 +65,6 @@ obj-$(CONFIG_CPU_TLB_V6)	+= tlb-v6.o
 obj-$(CONFIG_CPU_TLB_V7)	+= tlb-v7.o
 obj-$(CONFIG_CPU_TLB_FA)	+= tlb-fa.o
 
-AFLAGS_tlb-v6.o		:=-Wa,-march=armv6
-AFLAGS_tlb-v7.o		:=-Wa,-march=armv7-a
-
 obj-$(CONFIG_CPU_ARM7TDMI)	+= proc-arm7tdmi.o
 obj-$(CONFIG_CPU_ARM720T)	+= proc-arm720.o
 obj-$(CONFIG_CPU_ARM740T)	+= proc-arm740.o
@@ -101,9 +91,6 @@ obj-$(CONFIG_CPU_V6K)		+= proc-v6.o
 obj-$(CONFIG_CPU_V7)		+= proc-v7.o proc-v7-bugs.o
 obj-$(CONFIG_CPU_V7M)		+= proc-v7m.o
 
-AFLAGS_proc-v6.o	:=-Wa,-march=armv6
-AFLAGS_proc-v7.o	:=-Wa,-march=armv7-a
-
 obj-$(CONFIG_OUTER_CACHE)	+= l2c-common.o
 obj-$(CONFIG_CACHE_B15_RAC)	+= cache-b15-rac.o
 obj-$(CONFIG_CACHE_FEROCEON_L2)	+= cache-feroceon-l2.o
diff --git a/arch/arm/mm/abort-ev6.S b/arch/arm/mm/abort-ev6.S
index c58bf8b43fea..836dc1299243 100644
--- a/arch/arm/mm/abort-ev6.S
+++ b/arch/arm/mm/abort-ev6.S
@@ -16,6 +16,7 @@
  * abort here if the I-TLB and D-TLB aren't seeing the same
  * picture.  Unfortunately, this does happen.  We live with it.
  */
+	.arch	armv6k
 	.align	5
 ENTRY(v6_early_abort)
 	mrc	p15, 0, r1, c5, c0, 0		@ get FSR
diff --git a/arch/arm/mm/abort-ev7.S b/arch/arm/mm/abort-ev7.S
index f7cc5d68444b..d4385f7f73e0 100644
--- a/arch/arm/mm/abort-ev7.S
+++ b/arch/arm/mm/abort-ev7.S
@@ -12,6 +12,7 @@
  *
  * Purpose : obtain information about current aborted instruction.
  */
+	.arch	armv7-a
 	.align	5
 ENTRY(v7_early_abort)
 	mrc	p15, 0, r1, c5, c0, 0		@ get FSR
diff --git a/arch/arm/mm/cache-v6.S b/arch/arm/mm/cache-v6.S
index f0f65eb073e4..250c83bf7158 100644
--- a/arch/arm/mm/cache-v6.S
+++ b/arch/arm/mm/cache-v6.S
@@ -19,6 +19,8 @@
 #define D_CACHE_LINE_SIZE	32
 #define BTB_FLUSH_SIZE		8
 
+.arch armv6
+
 /*
  *	v6_flush_icache_all()
  *
diff --git a/arch/arm/mm/cache-v7.S b/arch/arm/mm/cache-v7.S
index dc8f152f3556..3698aed57416 100644
--- a/arch/arm/mm/cache-v7.S
+++ b/arch/arm/mm/cache-v7.S
@@ -16,6 +16,8 @@
 
 #include "proc-macros.S"
 
+.arch armv7-a
+
 #ifdef CONFIG_CPU_ICACHE_MISMATCH_WORKAROUND
 .globl icache_size
 	.data
diff --git a/arch/arm/mm/cache-v7m.S b/arch/arm/mm/cache-v7m.S
index 1bc3a0a50753..eb60b5e5e2ad 100644
--- a/arch/arm/mm/cache-v7m.S
+++ b/arch/arm/mm/cache-v7m.S
@@ -18,6 +18,8 @@
 
 #include "proc-macros.S"
 
+.arch armv7-m
+
 /* Generic V7M read/write macros for memory mapped cache operations */
 .macro v7m_cache_read, rt, reg
 	movw	\rt, #:lower16:BASEADDR_V7M_SCB + \reg
diff --git a/arch/arm/mm/proc-v6.S b/arch/arm/mm/proc-v6.S
index a0618f3e6836..203dff89ab1a 100644
--- a/arch/arm/mm/proc-v6.S
+++ b/arch/arm/mm/proc-v6.S
@@ -32,6 +32,8 @@
 #define TTB_FLAGS_SMP	TTB_RGN_WBWA|TTB_S
 #define PMD_FLAGS_SMP	PMD_SECT_WBWA|PMD_SECT_S
 
+.arch armv6
+
 ENTRY(cpu_v6_proc_init)
 	ret	lr
 
diff --git a/arch/arm/mm/proc-v7-2level.S b/arch/arm/mm/proc-v7-2level.S
index 5db029c8f987..0a3083ad19c2 100644
--- a/arch/arm/mm/proc-v7-2level.S
+++ b/arch/arm/mm/proc-v7-2level.S
@@ -24,6 +24,8 @@
 #define TTB_FLAGS_SMP	TTB_IRGN_WBWA|TTB_S|TTB_NOS|TTB_RGN_OC_WBWA
 #define PMD_FLAGS_SMP	PMD_SECT_WBWA|PMD_SECT_S
 
+.arch armv7-a
+
 /*
  *	cpu_v7_switch_mm(pgd_phys, tsk)
  *
diff --git a/arch/arm/mm/proc-v7.S b/arch/arm/mm/proc-v7.S
index 28c9d32fa99a..7553510a278a 100644
--- a/arch/arm/mm/proc-v7.S
+++ b/arch/arm/mm/proc-v7.S
@@ -24,6 +24,8 @@
 #include "proc-v7-2level.S"
 #endif
 
+.arch armv7-a
+
 ENTRY(cpu_v7_proc_init)
 	ret	lr
 ENDPROC(cpu_v7_proc_init)
diff --git a/arch/arm/mm/tlb-v6.S b/arch/arm/mm/tlb-v6.S
index 5335b9687297..971c85a95031 100644
--- a/arch/arm/mm/tlb-v6.S
+++ b/arch/arm/mm/tlb-v6.S
@@ -17,6 +17,8 @@
 
 #define HARVARD_TLB
 
+.arch armv6
+
 /*
  *	v6wbi_flush_user_tlb_range(start, end, vma)
  *
diff --git a/arch/arm/mm/tlb-v7.S b/arch/arm/mm/tlb-v7.S
index 1bb28d7db567..2643e2f51b6a 100644
--- a/arch/arm/mm/tlb-v7.S
+++ b/arch/arm/mm/tlb-v7.S
@@ -16,6 +16,8 @@
 #include <asm/tlbflush.h>
 #include "proc-macros.S"
 
+.arch armv7-a
+
 /*
  *	v7wbi_flush_user_tlb_range(start, end, vma)
  *
-- 
2.30.0.365.g02bc693789-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210128014539.2962552-1-ndesaulniers%40google.com.
