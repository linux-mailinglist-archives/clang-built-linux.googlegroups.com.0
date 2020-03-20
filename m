Return-Path: <clang-built-linux+bncBCOYZDMZ6UMRBANT2PZQKGQE3V4VMIY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43e.google.com (mail-wr1-x43e.google.com [IPv6:2a00:1450:4864:20::43e])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C27C18D1E0
	for <lists+clang-built-linux@lfdr.de>; Fri, 20 Mar 2020 15:56:02 +0100 (CET)
Received: by mail-wr1-x43e.google.com with SMTP id t4sf2762610wrv.9
        for <lists+clang-built-linux@lfdr.de>; Fri, 20 Mar 2020 07:56:02 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584716161; cv=pass;
        d=google.com; s=arc-20160816;
        b=st84+yMkxMRkAS9ayuuBch+2/vMxhfCbU0CTEm71nsxf/JE/8Nkl4zp3tXPS11wpdL
         NarMJIWZn9/WgIihpIgW7BV6/hGqFOc5t5R8pS/PtnYIVlNDjvZwAEmfdThoTe3BZIr1
         B5YkkmFvnR7uWqyZ5w1dH6/U8RnJpALt5nknmXFIhodWqnBL4jDKnAkqV9rtbBAL8rbf
         DgOiQorE5QrWBdUdbxMFrCvIo/xdKRb6gQxO7ak0Ov3B00DSGOw6XlLvl3GzSDgTavki
         8UitgsVNYJKlry0n7cRGaNzYCkOPcxa21PLK0vJsVfZgtXJsWQPTRA2ML3Rq1VO7reoW
         8YVA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=qE3SiQan4TENcmJ67k+wHXAzH2nVPpOmDPtrUJO13VA=;
        b=hb8HqicNsOiH39Z6vGdiTgRed1SVshg9aXNe8IexnF5w7Lfatcb+jiQjQdPihgEdmy
         dJS0ZfWTwCFj3yd5Z820FMss1JD5VTEXvWp8xe9rvYKrzE9pNi231AYdD5kg54d1gJ5v
         kXvV0qxQApA1PioiDkazKT7Huj0r0az8iWLTuaww93qQmIUsdmC4AJlzQb7AkGOGC21p
         hzTyAGFCW83uXJYKcEMH8Nz6fQ5jy/bdy4GITYqbp2t/CzBkE9vzUTdfO0rFXrgEyJf3
         tEiTlbpjOQY4BMAVyKtI7u6yKaYe+13GwUHHkDTxmswYKSv3rsCDgb84AOaQj8yU2LMn
         TB8Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=qE3SiQan4TENcmJ67k+wHXAzH2nVPpOmDPtrUJO13VA=;
        b=VDbYIKAKHv/dl4fSCUJVAplzKMlcCT0xkl06zwo2NeCSlIxUEs0qJ4qJ5Q96+x3u+X
         X+Tfj1VdW7IZziMkRfraRCrdWKUfdI8mftXW4hNOGSQbvVtobEPZLi0UQdXiSjw4XAys
         i12uplTTlGpdPfJDZh54BrcLCI9vu8i3gFz8MooYfMUJtrfjM4ua7lXuY6lkbS858fLd
         EM0TkD2sTj6QtVTpWWNKouiKBeq3Rdz6XIoK+lO+FDBNW/S3OOu+tznE5sRZ0LEXzQ/Q
         CCNp34ICHIRJK59d5l24A+hUsBuONH8/2fZ1QLPRbYLkzF1zO+J4AKb76BmAgJZSI4WC
         L4EQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=qE3SiQan4TENcmJ67k+wHXAzH2nVPpOmDPtrUJO13VA=;
        b=f2llQFrhZwstij8mdUCpbxhgmde18j2Tbiw5YP6CBCgqqZg/l4hnLUe+qBLljT4gZb
         cp9Xj+kRL3E7N2qO5IrNK2sPgH/77EqS9q46cvuYxuRG9nJzFMjv/82ZrfZfjrUGjpLz
         rV07pBDzlFSUEXzNJNxi3Qp/Ud2Nr3AB/9GMHXnKIkauudo7ethV7pEn8V6GjoObcmGd
         6hXI+6ONZxuwizsbisR40V/15nel9wRRouxpC/vZ+Q2rOciCMOUrDlIywPjJEHBXqWWn
         jVu2UU6J7SHuJi2gFujC4iJe7U5Vt+noOQXkS0b/JBFrItZ9VNg8kSkQcEVvNaI96NoZ
         OTkA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ2KyBV4tItwvGzra4H+gXesGYxy0ASMXTmOLnYh6tqEmltrQS6+
	AyrWP8PuTfiRkk2nCPE4nqs=
X-Google-Smtp-Source: ADFU+vtm3Hj5xjAxBLAcMXZOE0x0jjXkuavXqeVjs6sRo2Mzmr4ZIXy9sC20eq/JwXEHPNSUFyy08A==
X-Received: by 2002:a1c:6285:: with SMTP id w127mr11239920wmb.133.1584716161786;
        Fri, 20 Mar 2020 07:56:01 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:600c:2250:: with SMTP id a16ls3070954wmm.3.canary-gmail;
 Fri, 20 Mar 2020 07:56:01 -0700 (PDT)
X-Received: by 2002:a1c:9ecb:: with SMTP id h194mr11205015wme.49.1584716161369;
        Fri, 20 Mar 2020 07:56:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584716161; cv=none;
        d=google.com; s=arc-20160816;
        b=B3jBESCfRTN1rmy3aPTWqJEow6DrBR5glxC0VCUiq2wbrpWegARsjzwjeZMETaOsy0
         1iE8pmy/Q1Vk8WfZBbU9PUNWPGq764jLqLH9QIXWDBoGCwtSk8nAmtjeQII7c5hRdXLX
         lkF+oYbmRN6eep8tqD3dVXjY090193/dw7mJaRM0EmA/EaHWrWuNKeFMx/VUlmzTZvbv
         zaYzrH1L5/QpJAjGaDSB0ZMYHpZFyYzqhTBJinfzAXB+Bz5M6CVd56uHSUXP2/R5+zpi
         nKAJwAhyt1e6e9FXRCuMElZxmVcVa1TdaUyali2/Q83y+PeMXL9sVAINWYdnbOWu0gGC
         xU4Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=G2Xz1dHQm+Z+oztN+5beorO2y7y1xil8BRA4zvdijNE=;
        b=wQ1Ov51rC97jXvLFMPSAKYK++Dlkh9SQJhW2MmfV+vJ9T3InABXrrVZcpSJWybuNMk
         FRu4PWAQFg45Gw11h+/MknGJf2wb9QFtXIGPqOorC3bAp7lNV1BAwsON+tj/K4S67z4a
         PNZPvAZsUBteOrmz3z7YlgsU/lbEMxAcU54icVx3FJAugmnyKyGFrx+LyGVl0a48X39l
         OXPsiaZj5OaZBR/YDUiSpPpbbNvhbsp1XzvYItARj42Djly1I4eULRIq1vdihp6EjcLr
         7oJSVxtzCKGkvRsv/iTA+eHF8dzuZk4AKSd1SInmOfiNYaF3MY9M91YeGrZSgtPPkZhA
         85Eg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id a63si113142wme.2.2020.03.20.07.56.01
        for <clang-built-linux@googlegroups.com>;
        Fri, 20 Mar 2020 07:56:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 930187FA;
	Fri, 20 Mar 2020 07:56:00 -0700 (PDT)
Received: from e119884-lin.cambridge.arm.com (e119884-lin.cambridge.arm.com [10.1.196.72])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 9C8913F792;
	Fri, 20 Mar 2020 07:55:57 -0700 (PDT)
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
To: linux-arch@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	linux-mips@vger.kernel.org,
	x86@kernel.org
Cc: Vincenzo Frascino <vincenzo.frascino@arm.com>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>,
	Arnd Bergmann <arnd@arndb.de>,
	Russell King <linux@armlinux.org.uk>,
	Paul Burton <paul.burton@mips.com>,
	Thomas Gleixner <tglx@linutronix.de>,
	Andy Lutomirski <luto@kernel.org>,
	Ingo Molnar <mingo@redhat.com>,
	Borislav Petkov <bp@alien8.de>,
	Stephen Boyd <sboyd@kernel.org>,
	Mark Salyzyn <salyzyn@android.com>,
	Kees Cook <keescook@chromium.org>,
	Peter Collingbourne <pcc@google.com>,
	Dmitry Safonov <0x7f454c46@gmail.com>,
	Andrei Vagin <avagin@openvz.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Marc Zyngier <maz@kernel.org>,
	Mark Rutland <Mark.Rutland@arm.com>
Subject: [PATCH v5 24/26] arm: vdso: Enable arm to use common headers
Date: Fri, 20 Mar 2020 14:53:49 +0000
Message-Id: <20200320145351.32292-25-vincenzo.frascino@arm.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200320145351.32292-1-vincenzo.frascino@arm.com>
References: <20200320145351.32292-1-vincenzo.frascino@arm.com>
MIME-Version: 1.0
X-Original-Sender: vincenzo.frascino@arm.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172
 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
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

Enable arm to use only the common headers in the implementation
of the vDSO library.

Cc: Russell King <linux@armlinux.org.uk>
Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
---
 arch/arm/include/asm/cp15.h              | 20 +------------
 arch/arm/include/asm/processor.h         | 11 +------
 arch/arm/include/asm/vdso/cp15.h         | 38 ++++++++++++++++++++++++
 arch/arm/include/asm/vdso/gettimeofday.h |  4 +--
 arch/arm/include/asm/vdso/processor.h    | 22 ++++++++++++++
 5 files changed, 64 insertions(+), 31 deletions(-)
 create mode 100644 arch/arm/include/asm/vdso/cp15.h
 create mode 100644 arch/arm/include/asm/vdso/processor.h

diff --git a/arch/arm/include/asm/cp15.h b/arch/arm/include/asm/cp15.h
index d2453e2d3f1f..a54230e65647 100644
--- a/arch/arm/include/asm/cp15.h
+++ b/arch/arm/include/asm/cp15.h
@@ -50,25 +50,7 @@
 
 #ifdef CONFIG_CPU_CP15
 
-#define __ACCESS_CP15(CRn, Op1, CRm, Op2)	\
-	"mrc", "mcr", __stringify(p15, Op1, %0, CRn, CRm, Op2), u32
-#define __ACCESS_CP15_64(Op1, CRm)		\
-	"mrrc", "mcrr", __stringify(p15, Op1, %Q0, %R0, CRm), u64
-
-#define __read_sysreg(r, w, c, t) ({				\
-	t __val;						\
-	asm volatile(r " " c : "=r" (__val));			\
-	__val;							\
-})
-#define read_sysreg(...)		__read_sysreg(__VA_ARGS__)
-
-#define __write_sysreg(v, r, w, c, t)	asm volatile(w " " c : : "r" ((t)(v)))
-#define write_sysreg(v, ...)		__write_sysreg(v, __VA_ARGS__)
-
-#define BPIALL				__ACCESS_CP15(c7, 0, c5, 6)
-#define ICIALLU				__ACCESS_CP15(c7, 0, c5, 0)
-
-#define CNTVCT				__ACCESS_CP15_64(1, c14)
+#include <asm/vdso/cp15.h>
 
 extern unsigned long cr_alignment;	/* defined in entry-armv.S */
 
diff --git a/arch/arm/include/asm/processor.h b/arch/arm/include/asm/processor.h
index 614bf829e454..b9241051e5cb 100644
--- a/arch/arm/include/asm/processor.h
+++ b/arch/arm/include/asm/processor.h
@@ -14,6 +14,7 @@
 #include <asm/ptrace.h>
 #include <asm/types.h>
 #include <asm/unified.h>
+#include <asm/vdso/processor.h>
 
 #ifdef __KERNEL__
 #define STACK_TOP	((current->personality & ADDR_LIMIT_32BIT) ? \
@@ -85,16 +86,6 @@ extern void release_thread(struct task_struct *);
 
 unsigned long get_wchan(struct task_struct *p);
 
-#if __LINUX_ARM_ARCH__ == 6 || defined(CONFIG_ARM_ERRATA_754327)
-#define cpu_relax()						\
-	do {							\
-		smp_mb();					\
-		__asm__ __volatile__("nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;");	\
-	} while (0)
-#else
-#define cpu_relax()			barrier()
-#endif
-
 #define task_pt_regs(p) \
 	((struct pt_regs *)(THREAD_START_SP + task_stack_page(p)) - 1)
 
diff --git a/arch/arm/include/asm/vdso/cp15.h b/arch/arm/include/asm/vdso/cp15.h
new file mode 100644
index 000000000000..bed16fa1865e
--- /dev/null
+++ b/arch/arm/include/asm/vdso/cp15.h
@@ -0,0 +1,38 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/*
+ * Copyright (C) 2020 ARM Ltd.
+ */
+#ifndef __ASM_VDSO_CP15_H
+#define __ASM_VDSO_CP15_H
+
+#ifndef __ASSEMBLY__
+
+#ifdef CONFIG_CPU_CP15
+
+#include <linux/stringify.h>
+
+#define __ACCESS_CP15(CRn, Op1, CRm, Op2)	\
+	"mrc", "mcr", __stringify(p15, Op1, %0, CRn, CRm, Op2), u32
+#define __ACCESS_CP15_64(Op1, CRm)		\
+	"mrrc", "mcrr", __stringify(p15, Op1, %Q0, %R0, CRm), u64
+
+#define __read_sysreg(r, w, c, t) ({				\
+	t __val;						\
+	asm volatile(r " " c : "=r" (__val));			\
+	__val;							\
+})
+#define read_sysreg(...)		__read_sysreg(__VA_ARGS__)
+
+#define __write_sysreg(v, r, w, c, t)	asm volatile(w " " c : : "r" ((t)(v)))
+#define write_sysreg(v, ...)		__write_sysreg(v, __VA_ARGS__)
+
+#define BPIALL				__ACCESS_CP15(c7, 0, c5, 6)
+#define ICIALLU				__ACCESS_CP15(c7, 0, c5, 0)
+
+#define CNTVCT				__ACCESS_CP15_64(1, c14)
+
+#endif /* CONFIG_CPU_CP15 */
+
+#endif /* __ASSEMBLY__ */
+
+#endif /* __ASM_VDSO_CP15_H */
diff --git a/arch/arm/include/asm/vdso/gettimeofday.h b/arch/arm/include/asm/vdso/gettimeofday.h
index 07d791c65cf7..36dc18553ed8 100644
--- a/arch/arm/include/asm/vdso/gettimeofday.h
+++ b/arch/arm/include/asm/vdso/gettimeofday.h
@@ -7,9 +7,9 @@
 
 #ifndef __ASSEMBLY__
 
-#include <asm/barrier.h>
-#include <asm/cp15.h>
+#include <asm/errno.h>
 #include <asm/unistd.h>
+#include <asm/vdso/cp15.h>
 #include <uapi/linux/time.h>
 
 #define VDSO_HAS_CLOCK_GETRES		1
diff --git a/arch/arm/include/asm/vdso/processor.h b/arch/arm/include/asm/vdso/processor.h
new file mode 100644
index 000000000000..45efb3ff511c
--- /dev/null
+++ b/arch/arm/include/asm/vdso/processor.h
@@ -0,0 +1,22 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/*
+ * Copyright (C) 2020 ARM Ltd.
+ */
+#ifndef __ASM_VDSO_PROCESSOR_H
+#define __ASM_VDSO_PROCESSOR_H
+
+#ifndef __ASSEMBLY__
+
+#if __LINUX_ARM_ARCH__ == 6 || defined(CONFIG_ARM_ERRATA_754327)
+#define cpu_relax()						\
+	do {							\
+		smp_mb();					\
+		__asm__ __volatile__("nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;");	\
+	} while (0)
+#else
+#define cpu_relax()			barrier()
+#endif
+
+#endif /* __ASSEMBLY__ */
+
+#endif /* __ASM_VDSO_PROCESSOR_H */
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200320145351.32292-25-vincenzo.frascino%40arm.com.
