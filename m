Return-Path: <clang-built-linux+bncBCOYZDMZ6UMRBPNCRHZQKGQEVL4QRSA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13f.google.com (mail-lf1-x13f.google.com [IPv6:2a00:1450:4864:20::13f])
	by mail.lfdr.de (Postfix) with ESMTPS id 7725217BED2
	for <lists+clang-built-linux@lfdr.de>; Fri,  6 Mar 2020 14:33:50 +0100 (CET)
Received: by mail-lf1-x13f.google.com with SMTP id z6sf864851lfd.9
        for <lists+clang-built-linux@lfdr.de>; Fri, 06 Mar 2020 05:33:50 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1583501630; cv=pass;
        d=google.com; s=arc-20160816;
        b=aGm0k3fNHKVe8ovZbv8J9hfoyac2Lx2cn2Qd4dZw8m1ssEz8lq5FI6tVCEgmirEqUZ
         N/pfihIvAIdWSxex8N+T/dFu/mrSQp5VOl1yJYh1ReYb+f+TsHD0Zw29+8w5IbsbKd4Y
         YeXk2HlRM8/idedCMH4i9++9wc4pWEaRraSGB0GQF1YV9J77Vd3gfj17n8DAXsNVv+7b
         UKmnnLtzlhR0a67qtDFheKeSd5NAohCXSbDCZtr860r0btdJ0mFUaKGsXZMsA9pUHp9n
         K398iTr/7qNLN9OQZqL6WleMQoonIYobGm6AEfEp7Pi0DShJ89L+Zb9hAgeM9ipKTp5r
         /d6Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=0c/fjs+cl9LRleUDZ/rZ8yG1JfjHDtahxyZou5WoeJo=;
        b=EzxjC5ieDaPUonaoo9NgeKhdpo+7H45z7Ee5ig27dhWY84aXksA+wIEu8vztuSruTi
         pzLNZkoKhlHcVQqgGx74C/R5U4Cj2yYz88hgHn18w0XzGA1RNPLgNb8lqVYKktYTMK6V
         AE0g+teQ6FunCgKi53WmAfia4RZ8bVpPpB5pbDOdBF6fVlHVDyfVWOcoF+EVB1YzL/+8
         5uaWURbpuNRonPpgHnU4aYkZZGoaIOCi2RM/P+UeTDQIng/QGsV4qSU3ZgbFKRkdEmKV
         45rrFtJ/Ge0REnLxgbU7bA1v0fSFDrA39ebthF1EOzhsXn9BC/i3fDvoT2qRvJEcF1MX
         EZxA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0c/fjs+cl9LRleUDZ/rZ8yG1JfjHDtahxyZou5WoeJo=;
        b=Q42AXDG7RZB+HFUh8O/zk2Nl8KTg3gi1cWPAytOFk8VvwVKZzl5SDi0W1SQfCI15wD
         iG/4YlrHZHnnXA2DqIAUSir1JU6LR0ihbl5FfTpHXLlsO5KOPmUjJA0gXucUv+I2G3Xh
         Buh9H9EjrZv9XBeLcEfJLXRG5UqGyMh3P4+CGuEihA66a/Fz1ljpgcqDA0+8b8/8wjgX
         Q1/3L0Lx7rda1GOTeGcasIkgdirRKaHxZ8BZtWr16WIJGxSQ4UhI0reIFSxWgoZ8yF6S
         JNsG0+Lzz0O3j/FyFUZvDtAWlb0URPbSWnIi2FTMCd0nY3zAdhWQaH6xeL9KOOEZpWJI
         JWiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0c/fjs+cl9LRleUDZ/rZ8yG1JfjHDtahxyZou5WoeJo=;
        b=pmSWAht4E0zScmI41JlGtUJlfYlCPkmbREPVek6HwARTmBiM2zj2PkmkbO5dNQyxrv
         Yufo7G9Yjb9AonpFIJC1Y8LpKHOsd5FQqGZk/4dsz996L31h/XKWLFIYp/U9HFgwzVzh
         Jcz39CwLCUIMBh2W//WZpFKnNCfqMi0qrLJtQT9TbY3Tu0xDMwFjxPxGQlR1XHVhkH7q
         KrMQw+b1yDNaaJrxqE/c3h1r53jT6sR0wfEAUYDH49KjQQA4gU/GiKaQCSr1KXBsethK
         qJIzQDtg/KobIyN4lgqZNurLRp/lH7GRqCIrx9NpS7bl8vkheobmY81clhQzdL4txmQX
         fjDw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ2WwRwm4mtppDoemJgDHMLe2TXk7EVcg59d6xRfCLGwFsio+yiU
	4iWjSREoLcjpSEw2lr5Ggvk=
X-Google-Smtp-Source: ADFU+vtimgqX91YQbBFAdbOttxNkEa7oh3WnUyJl85EKVi5g4tGez393kaWj8lhayDzqY/lZIoNRcA==
X-Received: by 2002:a05:6512:512:: with SMTP id o18mr1924089lfb.122.1583501630035;
        Fri, 06 Mar 2020 05:33:50 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:505:: with SMTP id 5ls474342ljf.6.gmail; Fri, 06 Mar
 2020 05:33:49 -0800 (PST)
X-Received: by 2002:a2e:7c03:: with SMTP id x3mr2209816ljc.104.1583501629237;
        Fri, 06 Mar 2020 05:33:49 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1583501629; cv=none;
        d=google.com; s=arc-20160816;
        b=U2K18AME5JSkaHtl4XG4M5+q6GxNPeG/GlMpT3rAQJM4KUQL2ih8nacBt0dlohRIxB
         A0e+QAvH5zqRNfHVo8TxUP0RpgTu5EaRR+2cvCstLxlfZQR3RA26hjP9FZzRwC9Y5W46
         xseXjPskANk9WUC8noRRsDIZQ/mr43Oyy5RxyEoJfsK5dTXaLfsiXJup9RXuSbNizn11
         Ewh+e5EQLP4P/Br1YjzF8yWMgWz7GGrBnDk+ixYJbabkBl0ROFP4043J2UfugM7DWn+H
         GaaI5Vj8SHAQlY2HSFqxhP3NuJ8Xe4BzhrgevpTtMAWAaooIziTns6KS9/9oO0MVpOcc
         Akqg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=fkQY5XdeXfffPT06jfu52F8NXbd8qga4W7i9+9o+WpM=;
        b=LTskyYVaqZadFE0+Ltd45iI4zWutv2mi5JdmdQMMtsVU7g/WwnFCT4ANHh7En3Pc+9
         +L1AZV7gbBK0zTix7EWTIBqH/ZxQp8Q0OQoQp8L+hWbP7yL4JSBuU33ubR3p3tC1RNte
         rB8uUwFbHrf4CEFTCc/in43KgH7aKla2OeBCwS7RqyOalNJsjMVWeJrmbVSrcWNZeV3Z
         5GvGCl2ukSONsyGc5miV18qzcmAc95nBlpTXImY8M0VZp4jQ9WfezDbMwgd0LHcd8nNc
         lp/r2IlxsAQ+vm7SS1OlHAx+3PCylKJR11+d629S11CjAMmVgJdfW2v25tiRaBNY3G9l
         SYAw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id r6si127239ljk.1.2020.03.06.05.33.48
        for <clang-built-linux@googlegroups.com>;
        Fri, 06 Mar 2020 05:33:49 -0800 (PST)
Received-SPF: pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 4CE1831B;
	Fri,  6 Mar 2020 05:33:48 -0800 (PST)
Received: from e119884-lin.cambridge.arm.com (e119884-lin.cambridge.arm.com [10.1.196.72])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 8BFAA3F6CF;
	Fri,  6 Mar 2020 05:33:45 -0800 (PST)
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
To: linux-arch@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-mips@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	x86@kernel.org
Cc: Vincenzo Frascino <vincenzo.frascino@arm.com>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will.deacon@arm.com>,
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
	Nick Desaulniers <ndesaulniers@google.com>
Subject: [PATCH v2 18/20] arm: vdso: Enable arm to use common headers
Date: Fri,  6 Mar 2020 13:32:40 +0000
Message-Id: <20200306133242.26279-19-vincenzo.frascino@arm.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200306133242.26279-1-vincenzo.frascino@arm.com>
References: <20200306133242.26279-1-vincenzo.frascino@arm.com>
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
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200306133242.26279-19-vincenzo.frascino%40arm.com.
