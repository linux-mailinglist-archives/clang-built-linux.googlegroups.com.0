Return-Path: <clang-built-linux+bncBCOYZDMZ6UMRBFGVV3ZQKGQEJO2FSCY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33c.google.com (mail-wm1-x33c.google.com [IPv6:2a00:1450:4864:20::33c])
	by mail.lfdr.de (Postfix) with ESMTPS id B7253184B40
	for <lists+clang-built-linux@lfdr.de>; Fri, 13 Mar 2020 16:45:24 +0100 (CET)
Received: by mail-wm1-x33c.google.com with SMTP id f9sf1562679wme.7
        for <lists+clang-built-linux@lfdr.de>; Fri, 13 Mar 2020 08:45:24 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584114324; cv=pass;
        d=google.com; s=arc-20160816;
        b=iSeTHpTMpaIh9H76LkE8rGxsjOinjjZYJx2S2ovbpZZjBwY+piudv5KcMxjyc2C5Fp
         rNxGBatv27BMlpZyoDOSuQFQEO1p4DSjDeBiQqzus8NS3Hk7V3tcEOgQcPZ8SaQXT5VH
         PXA6gYFD3r3sH2lKBRRuidLQSjVdZ3yDYrL3c5SDeisX/cjefwGNtPPeT7zRJwtKdLpW
         Gpat3RC0nZh8Z0WMaUSmmKdWg0U3C3YUyc9TuQU8gx5F+JDzuoZFb8EnI7k9kWBQtLEF
         wSN6h7Y8i8k25ClXe2gYYlwo1PdTWFQrgxabpZYwIRqmdt4vWxmUbbpXeO0UHKTV08Z+
         al2A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=L8/7tR7UVaAPg+HPM+4gh4ge1HCgFOFcSI9UPj1lxtw=;
        b=K7ZwavDEH7+F5f2FLr1XltxD9PqOEVQIr5r8REKgM9t6pveFWoKe4DB9VhDkOzU/Hs
         7G8LpVF/ZvAXWhbvnEBmGwd1CRcmc3lH2omdfivrxdCjm3AI7HZtNGZSVzgJAT5vlG8H
         Mn+ldN+oUwzIfwLqkMbDUTQYpAPojz0I3G6A1osTnIVi8G2KW/OFH4T8A86POU0TJ6NN
         gouunz1Fy9czS6bv2yW9dqSzyscMxCJdJwa9R7qfOyg6jZNXMwFkw+AdMmoJIWGuy7Pi
         ebBevj4OsTpwbE9cVSagMJdofPy8bSaxx0YxKZFxrLiXVVB6QG+hsPMCTEVXMZwDdLVK
         XYjA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=L8/7tR7UVaAPg+HPM+4gh4ge1HCgFOFcSI9UPj1lxtw=;
        b=rjR9n7VR+RLsKpAT7sB8D5EX8OKHtpX+V3fztICYGwVwCYMDFIG73kzRGbPW3vkTse
         SyY1IfdKMAkBkpYYzYRf576MVFbTYxI8BKBWJalZ3paqMF5Cg1U9sneuNlgjgEa0M2l2
         gv0wuJO2hfzSXm1xd4V6rLc6nfprMlPhkOCfAKBoJWNni1VDBTrva5gBaEj0AvAPb04c
         0Ls8wVj1DPhuOTKghT5VAzn9YDI+BR2Nle4vhG6vB3hTFs8YKkfC01mFcsk6fgyTgW33
         aENERo1gRRZ+o0/JsA+g5FHon3RUrCXOFA3kPJKTPW9Z8ZKVB/+aRvT2sYByqa5qc58u
         wRyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=L8/7tR7UVaAPg+HPM+4gh4ge1HCgFOFcSI9UPj1lxtw=;
        b=iEKSFB2xouCjHyh/K4crlDfCr8dVh5uby2YmjUgGvKv8mhhg4u3iJBlnYWyQxfB/dZ
         AiFsictTbPJPVGxh1E2joS4zFHiI4cFWIprwxyzOH/Lb4IyuMxW/pR7MNBrJGJZtLDJE
         5x47/14JbqivA7j/r6Lf1MCyr0d6TfE6/McWJeCky7aHg63YkVdrFAbkAM07Ojeln/a6
         1FDdnWgCcK7zzGgjdBltlVWzLpqaYqeeSLToCQbBeaYNSoeWT5yERjPyRty3IR4HB92J
         tLxGX4vsWrkwPmk6MOxRCJccq+sovDX9NEcEH0rg1h2rjyBCdLfZaBEdEl9FwWMyMnCY
         Mg5w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ1ZsBTXjKNmjvqhCcgYWRxZQnIEcYsGywxZIaiyhsLp/rw4X/Gw
	VM2XOwJIv3IcmbRAODGws3g=
X-Google-Smtp-Source: ADFU+vuGzT0/cUcn5qsaGRvhMuqz2wdakfjGRPPxbiqlwmpsJDv2qd0PxxVYn+Zk9LliRUVpXvq+vQ==
X-Received: by 2002:a7b:c770:: with SMTP id x16mr11147981wmk.159.1584114324487;
        Fri, 13 Mar 2020 08:45:24 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:f3ca:: with SMTP id g10ls5079825wrp.11.gmail; Fri, 13
 Mar 2020 08:45:24 -0700 (PDT)
X-Received: by 2002:a5d:6ca7:: with SMTP id a7mr24841wra.157.1584114324130;
        Fri, 13 Mar 2020 08:45:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584114323; cv=none;
        d=google.com; s=arc-20160816;
        b=Yl49N6VMHuy5GGafBjxhDRQiIhwaDy0GGgkLfjIoQewyIvAgc1GLj6dGB24SW+X9fO
         MzMrLXqDELhxtDU61b9KhMdU4000pkmowfjG5w7U57LIIoStJvgzLcZKawD55TaUOS3w
         VpZZvdUda7XsLj9Ma5MlZeoUAeDOifAz1Tl/admkvPhuf/+iplXrcOHg8WuOSWRympug
         ZBuKgBmc+rAxPvps1ZhcU8MwmQwT0xCzrXNyNRUY8pJ3PrgtLXliPDw+XQv9zKvS9nH5
         WZxjy2Ykm+8eRQ0tynka4tDBJ8n+6vEJNjxuItHwDVVqY+XCZjk6Pl5s+MiBCUhAClIQ
         49aQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=G2Xz1dHQm+Z+oztN+5beorO2y7y1xil8BRA4zvdijNE=;
        b=XULlmM416n2awP/gJuV8GzIjeOjHips3vFjyz9POdgEBgXzV/cA/g09ctexrXxpedy
         /lrR3tRtXqVYNWK5nSJjg72jSIXdcQD6CS5V6yFdst4F6fe42vegbaj/9GULvy/ZN42v
         hv0o8gR9pYmmtD5HTB8C2SqvOzUpj7Rg3/QHeo2tuoj9SPIzTXIEKIH78Sd5Ke6oVZ4w
         DB/gnuPI3vQmkYoVqcxZCWD2AFCCuI7/5esNnPFmMHfmQ19UggT4OpAwuheugOUqwdA0
         3ykvO9FJpjBpa3mhQdPURRG1dD3XNmbefNV9nwRVUO3ZUpwzsX6qNuo0En8dPX6Rw8IQ
         ypeQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id i19si561052wml.0.2020.03.13.08.45.23
        for <clang-built-linux@googlegroups.com>;
        Fri, 13 Mar 2020 08:45:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 1ED1731B;
	Fri, 13 Mar 2020 08:45:23 -0700 (PDT)
Received: from e119884-lin.cambridge.arm.com (e119884-lin.cambridge.arm.com [10.1.196.72])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 2852A3F67D;
	Fri, 13 Mar 2020 08:45:20 -0700 (PDT)
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
	Nick Desaulniers <ndesaulniers@google.com>,
	Marc Zyngier <maz@kernel.org>,
	Mark Rutland <Mark.Rutland@arm.com>
Subject: [PATCH v3 24/26] arm: vdso: Enable arm to use common headers
Date: Fri, 13 Mar 2020 15:43:43 +0000
Message-Id: <20200313154345.56760-25-vincenzo.frascino@arm.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200313154345.56760-1-vincenzo.frascino@arm.com>
References: <20200313154345.56760-1-vincenzo.frascino@arm.com>
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200313154345.56760-25-vincenzo.frascino%40arm.com.
