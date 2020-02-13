Return-Path: <clang-built-linux+bncBCOYZDMZ6UMRBG7NSXZAKGQEO64SHXY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23a.google.com (mail-lj1-x23a.google.com [IPv6:2a00:1450:4864:20::23a])
	by mail.lfdr.de (Postfix) with ESMTPS id 7820115C7B0
	for <lists+clang-built-linux@lfdr.de>; Thu, 13 Feb 2020 17:17:31 +0100 (CET)
Received: by mail-lj1-x23a.google.com with SMTP id f11sf2297311ljn.6
        for <lists+clang-built-linux@lfdr.de>; Thu, 13 Feb 2020 08:17:31 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1581610651; cv=pass;
        d=google.com; s=arc-20160816;
        b=1HlTsdCdPuIjaU5AYqW8ZWmwvcElfHbw887SZv+1YCWhMhPaORULhmly8DBGcWB6jX
         BhFC64V23D6Q030fJVk3F5Ljsc4LPxmII5a+0v0IZKG3bpPnA0XeqFaVWfa42EUUXEOk
         sq2sXzT5y5/5AlnrNOfdLtzez5XbJLwmuYscitD3LhGyqV6j/b6HXDeWiVe2pmbUDQwY
         I/ymiK8mYfi6KH9CUJlAOIiHUX6elckJwhWzlZ32kDDHEk1ydDnB3tou6Ai2wYYQQRH7
         c9WqhCYjVUeATo6Z/QLH0lQINDvaw/DveaDQP32sdeZWtPoWzF4TqQTMU8TDyf5Tpaog
         70ag==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=0C7Po3a0tOXIYMfZUKGtS6l2Qc3j+dujPwrKKJdjWBA=;
        b=zfx6Cz4uen4gsrlN5uefk7A22zyO1m6/fMs3a0QX5Lqf56LlOeTV+cTDltPI0qmauO
         VlGtGHq06iKCtWgc0WphoHRc/VuRVCpeXSnUw9/OCdXeki8FTudB30A4PjQfG6c2RlSV
         gzB3K52ceA+Hq9wAaOHYhqSHxUyfUe1pcwE+vwranXvI4/XlWxwuc0I56XV3Z1ZBKA7Y
         +ya/GG030HNhzJC+BGQFsBpZ/zYobDD1xtI1Sp6JOpeJKOo2RyEyCTFQcfe5zDlovu43
         atfxuBsFBR6BN2XMIja76KDJ0m4b8SD2ANGbEUqE4gLtjU6NtwW6qLE0ggU8011KPLKX
         VjIg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0C7Po3a0tOXIYMfZUKGtS6l2Qc3j+dujPwrKKJdjWBA=;
        b=geV01fmJBPTDG8m0pj/F3CG/JokQRq0hV6Y3sFrIantD582SvhfOfYLDCUxW/y1nK1
         MPiDZpztJ1QdgOeizxwPurHhIzFU0la6icof7q7qiTnMjVMBjiNGwlkiSUAyZWz9VGKi
         r+a+MP7de2bvI1Vd4ejE9qSj/oVF9DyC8L6mSca9XEaaGa5I3ytM1n2s3wLOlo4L5VdI
         +8AyCoLoPAKJNsDKQBht9qrC+xFH376M2bRHKuS9yXgarH6c2iON1rLUHYUV8JOc5spn
         dB/p0ccLUQui1618iTBFKcwN/p0tsHyQ+K9PjhFQDGdhSV33aGNzshfxtTCB5dn/5PYV
         jNaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0C7Po3a0tOXIYMfZUKGtS6l2Qc3j+dujPwrKKJdjWBA=;
        b=eFQiBUKDvuiRBZXxcJrUlbJv0VHZghHz7QKAkvgbiXLL8zvzEhueudve0GMZaymp05
         vd7M2GtKRyQ2PY10Dlyk/PnIK9APxP8bAPDHJuz4mum2OZBktPmP0DdkJ4l6RboGvKSH
         9ncXU1U1xAZ0wiF/dWwGlg0Uc1gjIE4CKcMnweAgT19Nd35WIvC7clccpHlz3ctDKLo5
         jajE2vlydljt5oT6BXVcMZoqizNn2v1zw7Efb6hoO3rOEEuZszo9XfQrq93X+xBVbNID
         NbPHhst6SlqniF1rp0ffPB2gLTZlNAAAwSoeB6beh9tl7IPdGBoYc87vh4BmuhSIR/de
         piIA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVzb/t5daUOolq0vI0Nu+1ADdBxGk3GuvNgh7WfKewlXrIRDr0H
	rHrmjK0L1iT6o58yEvVAs+g=
X-Google-Smtp-Source: APXvYqzgnThJNXTy/OLVcXSGZd+7LTgtX9EIbCaFcoazsGmmPlCood1TvDYervecorh0OwCjJJg1Sw==
X-Received: by 2002:a2e:9218:: with SMTP id k24mr11159029ljg.262.1581610651057;
        Thu, 13 Feb 2020 08:17:31 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:8544:: with SMTP id u4ls4314269ljj.6.gmail; Thu, 13 Feb
 2020 08:17:30 -0800 (PST)
X-Received: by 2002:a2e:9ad1:: with SMTP id p17mr11938498ljj.26.1581610650669;
        Thu, 13 Feb 2020 08:17:30 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1581610650; cv=none;
        d=google.com; s=arc-20160816;
        b=VwtxuwHd2lOjw7r/yF/xjFkgoNIdPRNtRasalfnoflDkzXtN7vQKDCJEcMhb/ABe0g
         eMtYjoFCwM3Kpk7VjkOuWdr/zTNy8btUUkR80g/PkwBRujPJRXnTT0yWSubwvo3ddnY+
         37NgYdKAeXFMpArxaTdijE0niXL6KGPBUdsHsIqTVsam9VAyLV24IlBbVznG+joZxlli
         aEc3wKhwDGFh8DPkL8kf1qfievLZiLd5q/0UJzDyA17MTappg3iGlvJoHO78rzKsvvhE
         W7O6H39+cw6Bc0T0/noJcvgyGX6M4q9Hn2H72CyoH7jy/AO/CBAGR8ZIF6Nkk0fGQUi8
         K6Xw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=pJlOj4FSYLgbcvw33yvldFqM6mxUTHoQlOq/pmJijaQ=;
        b=n41/JlH2Jzi4f66RlvZsfU8KxNlteb+KkEBl1z9JqJVGDQpcBcDZa5dxyu9IONjICo
         iwuq2WCo/zvI6GlV05JLY6wLZ5/BNoTiTThGNC5OBDEZ3u1voEhi2MP6tJfXP4I+82ML
         HG6pGNb9euBGHGKtYXI6Yd+uZpruX3cJHZG4mxPm1lsEUsVKgRMCs1pFDdJ2tiagDZjD
         71VD6IkaLKhXNz2pv7Exqf7G0MWaymLLk4KTRJq0zE0KBXBUfst3dnVK25lFRwgaZEYP
         h+31zHcqKruX3cH+EAgoOplHI8SCnFRJPTYG/L5yMexijcb9NwktULWnqQxNH8uAuuLJ
         uFQw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id b29si162434lfo.2.2020.02.13.08.17.30
        for <clang-built-linux@googlegroups.com>;
        Thu, 13 Feb 2020 08:17:30 -0800 (PST)
Received-SPF: pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A43EC106F;
	Thu, 13 Feb 2020 08:17:29 -0800 (PST)
Received: from e119884-lin.cambridge.arm.com (e119884-lin.cambridge.arm.com [10.1.196.72])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 2307F3F6CF;
	Thu, 13 Feb 2020 08:17:27 -0800 (PST)
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
To: linux-arch@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-mips@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	x86@kernel.org
Cc: catalin.marinas@arm.com,
	will.deacon@arm.com,
	arnd@arndb.de,
	linux@armlinux.org.uk,
	paul.burton@mips.com,
	tglx@linutronix.de,
	luto@kernel.org,
	mingo@redhat.com,
	bp@alien8.de,
	sboyd@kernel.org,
	salyzyn@android.com,
	pcc@google.com,
	0x7f454c46@gmail.com,
	ndesaulniers@google.com,
	avagin@openvz.org
Subject: [PATCH 17/19] arm: vdso: Enable arm to use common headers
Date: Thu, 13 Feb 2020 16:16:12 +0000
Message-Id: <20200213161614.23246-18-vincenzo.frascino@arm.com>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200213161614.23246-1-vincenzo.frascino@arm.com>
References: <20200213161614.23246-1-vincenzo.frascino@arm.com>
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
 arch/arm/include/asm/common/cp15.h       | 38 ++++++++++++++++++++++++
 arch/arm/include/asm/common/processor.h  | 22 ++++++++++++++
 arch/arm/include/asm/cp15.h              | 20 +------------
 arch/arm/include/asm/processor.h         | 11 +------
 arch/arm/include/asm/vdso/gettimeofday.h |  4 +--
 5 files changed, 64 insertions(+), 31 deletions(-)
 create mode 100644 arch/arm/include/asm/common/cp15.h
 create mode 100644 arch/arm/include/asm/common/processor.h

diff --git a/arch/arm/include/asm/common/cp15.h b/arch/arm/include/asm/common/cp15.h
new file mode 100644
index 000000000000..d1412c80120f
--- /dev/null
+++ b/arch/arm/include/asm/common/cp15.h
@@ -0,0 +1,38 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/*
+ * Copyright (C) 2020 ARM Ltd.
+ */
+#ifndef __ASM_COMMON_CP15_H
+#define __ASM_COMMON_CP15_H
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
+#endif /* __ASM_COMMON_CP15_H */
diff --git a/arch/arm/include/asm/common/processor.h b/arch/arm/include/asm/common/processor.h
new file mode 100644
index 000000000000..0e76f3cb0d0d
--- /dev/null
+++ b/arch/arm/include/asm/common/processor.h
@@ -0,0 +1,22 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/*
+ * Copyright (C) 2020 ARM Ltd.
+ */
+#ifndef __ASM_COMMON_PROCESSOR_H
+#define __ASM_COMMON_PROCESSOR_H
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
+#endif /* __ASM_COMMON_PROCESSOR_H */
diff --git a/arch/arm/include/asm/cp15.h b/arch/arm/include/asm/cp15.h
index d2453e2d3f1f..fe47a65130ab 100644
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
+#include <asm/common/cp15.h>
 
 extern unsigned long cr_alignment;	/* defined in entry-armv.S */
 
diff --git a/arch/arm/include/asm/processor.h b/arch/arm/include/asm/processor.h
index 614bf829e454..c098d95a88fa 100644
--- a/arch/arm/include/asm/processor.h
+++ b/arch/arm/include/asm/processor.h
@@ -14,6 +14,7 @@
 #include <asm/ptrace.h>
 #include <asm/types.h>
 #include <asm/unified.h>
+#include <asm/common/processor.h>
 
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
 
diff --git a/arch/arm/include/asm/vdso/gettimeofday.h b/arch/arm/include/asm/vdso/gettimeofday.h
index fe6e1f65932d..ffb88cef8cbb 100644
--- a/arch/arm/include/asm/vdso/gettimeofday.h
+++ b/arch/arm/include/asm/vdso/gettimeofday.h
@@ -7,9 +7,9 @@
 
 #ifndef __ASSEMBLY__
 
-#include <asm/barrier.h>
-#include <asm/cp15.h>
+#include <asm/errno.h>
 #include <asm/unistd.h>
+#include <asm/common/cp15.h>
 #include <uapi/linux/time.h>
 
 #define VDSO_HAS_CLOCK_GETRES		1
-- 
2.25.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200213161614.23246-18-vincenzo.frascino%40arm.com.
