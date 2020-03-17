Return-Path: <clang-built-linux+bncBCOYZDMZ6UMRB2UCYPZQKGQEBZJBEOA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x239.google.com (mail-lj1-x239.google.com [IPv6:2a00:1450:4864:20::239])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DCEE1883D3
	for <lists+clang-built-linux@lfdr.de>; Tue, 17 Mar 2020 13:24:11 +0100 (CET)
Received: by mail-lj1-x239.google.com with SMTP id w6sf3757660ljh.11
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Mar 2020 05:24:11 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584447851; cv=pass;
        d=google.com; s=arc-20160816;
        b=NNHPjrYyOwp2OFYW9U6HG9UsCamOEBgAl0Sip98380k1RuWVQiyuQTldnSss0xJgF0
         5saIvoFcD1DWIKxScD/rqfQJjdYlqXonAT7RK2YkwBkEOMTpyUBIBDtL8t9c+2E/7W7P
         ZK5EaAc2KeJF1UzS9C48cEhchVPmsRAtUG+chLxIp35mZvI6NP7qbQfEisU5e1IA2Vtt
         mi25tmlZEN35rHNFttmbr1xwJkVKuxcjtOZ1TACiYC7lu7RQvia46HqP84LMfanlJ42K
         WZ8LTQqYkmWZPHo41z0WyN0xYevSUCxYxRZSNLYme5sEWEbQDeQRoWI+/qweWP6VFVJl
         y+pg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=9gn1uxV0Lb7JfhMJPrTWW9qom/oVv3ruv+AAykkyQF4=;
        b=SQaig8bT8oBSEu0cyuokOO2XZiX0fqP2JhaUaReWiK+QKfwDu38AqpSQZzYs5q1DnM
         tdVBYPpesEh1ocVaGv0Jb2j/rPc13GkCoOVG6NvE7bY7j1+ybKsh2e1ny3/SGZ7AL9k4
         8/W5Ej0VlD9f4Q94dknFE+gRtiBjLpg7U9uBRiIMBrmAbgXiVXgpmwPvgJlstVkcGIaR
         /w4gYJFFXCRvdJPadMt4LiNnxSRhsBObyeiOuicJxxzpywKSAjgJio9wVrnMUc6HG6VZ
         /CJHCUvloEsUxtL1fzf319SjQjjFdwUqbNvhYkEibya3VvDxL2rExooVjf7FPxuiHWuG
         2nrA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9gn1uxV0Lb7JfhMJPrTWW9qom/oVv3ruv+AAykkyQF4=;
        b=ZDNENTlQR6UCJik1Q2mvQAMDMv7mx50sGr6IDkZLOyO++gDrdJPB9Ro5MSAB+Asf2R
         vMlyEQE2fN8E/FbHT+OfShc6jx0BVtYDZulYWwt0Sf3EqrNxQh+MVp5wd3hcRIfjeUl4
         7O69aOrUxOesjiy1LyvhuSVXl8JxnpCgVTZogcy2hAyQZ+wGO7m4Gk62s+fBVtbFpV/F
         UPeS1TSGlXwGGO1VuilgEvwSzg9ipUJGiKmlcA3TIZxSpbSmYuu+nSQ9BmBTIXJG+i/o
         ZdV3asvIuEOmW8bhLt/Iu/6N0vxWesjLcQrtWFr1a07xW3hfRwPYCmertaqVAGAS03gX
         UuIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9gn1uxV0Lb7JfhMJPrTWW9qom/oVv3ruv+AAykkyQF4=;
        b=Y29wb+E9vf+G4DbJwjG1VAO8bQGJhuM/HTZPHJIoAMSHQm1ajJHKr2mwu7il5ScvzK
         VYu31IOA6SDGdPFQD0UM4z71c03I8NFnOt1gs6PT3aJbaMgyYK6gs4ytDbtHsGQaJtsy
         sZzbveoSy0fBPG0CIIHhyTGVA3AbNM6nQzvfmUNAMGo5b0p3faeU5c22DJjjAwhzuLYk
         vCntEXajCWuzz8Ub0uoKco5jpfBe0jjLVk8X1bsRb42ei5I3A9XgLJKX5XR7SVYBF5oU
         8ZZJuEh0ZqkUwB+LsuGlEbQJHwtaK9CJ+iVG/BACxN+Zi+SnUHme4QNbtyLp6b1//vaM
         tFFA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ2RGeOJswIgNy21hPB6JTd5IDdiEMdNEzefVmNIZMCuiKNycVfp
	WGOuYX1GcZzSpo4/L1rPF8w=
X-Google-Smtp-Source: ADFU+vsBhbp8WUjBLIIog29FVGekz2bnpTDsvJE8xFg/VIUErilvJ5WicvslOrmY1DWIHuUxsm/HnQ==
X-Received: by 2002:a2e:b609:: with SMTP id r9mr2661215ljn.105.1584447850881;
        Tue, 17 Mar 2020 05:24:10 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:96d9:: with SMTP id d25ls2033786ljj.11.gmail; Tue, 17
 Mar 2020 05:24:10 -0700 (PDT)
X-Received: by 2002:a2e:b701:: with SMTP id j1mr2707762ljo.6.1584447850047;
        Tue, 17 Mar 2020 05:24:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584447850; cv=none;
        d=google.com; s=arc-20160816;
        b=cNdqCd75aWSlYbNfwKg3Di0dO4MTKWC559Dl8FdNsmlqwCei1Jj5RPtQx/ZddAIqVu
         HiKExd3u/j4G7O8QMd17Sgv8A6irAcaRAdRei3GpmhZrCQDrMotylnqYlnLdcl9OUAAN
         jpNeUHwyslwv3h3D1uAsqxFcFhdrO/rVvLUXbT5mx7B26z60+hott3gh14DL75PJFNyd
         Kg755ikustVDSugm7T0rkSZt6y73q0nFYDzqVHv6WVXAnNDBcHzLmGbZ/FdvQg5yVrsG
         sw9EvcqKH9WFLONQ7G6QuGa1yMTEvSrm5RH6hpl7ygYTqVnA5qlNwD0nJdz5hj4SHp56
         wuNQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=G2Xz1dHQm+Z+oztN+5beorO2y7y1xil8BRA4zvdijNE=;
        b=j/EtjOqOv92ZtPZ/ykukIru700KOzvKU0WgijzEBYQ5TzxFHHWPIso2ldphjBrI5pb
         be1yQaB87aiH/eJlot0Smu9bHWbE8FxmSauu61b0FO9xGqrn3rOAoCDcMeENpp4piv5L
         BOFMQKyqgumXv61j83V3nHxBuZiCAnPC9rEM/aYFESU9yFknuqCtVdZoM9OTUVYATzkW
         B36XSNczKVRL0rxyoRGuAJPyDPnYiAfyyyWQQhxcPQ4B4dXOD4J3otsIfYK1UrjiLJ0X
         dVVUP3Yx2Uk9ILp+X93bHNf7mz4LSjs9potWmLpfH+SYGTk8xD6D4C9l6Jo7e78y1JwN
         3+mg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id v191si19932lfa.4.2020.03.17.05.24.09
        for <clang-built-linux@googlegroups.com>;
        Tue, 17 Mar 2020 05:24:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id EF607101E;
	Tue, 17 Mar 2020 05:24:08 -0700 (PDT)
Received: from e119884-lin.cambridge.arm.com (e119884-lin.cambridge.arm.com [10.1.196.72])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 047EE3F534;
	Tue, 17 Mar 2020 05:24:05 -0700 (PDT)
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
To: linux-arch@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	linux-mips@vger.kernel.org,
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
Subject: [PATCH v4 24/26] arm: vdso: Enable arm to use common headers
Date: Tue, 17 Mar 2020 12:22:18 +0000
Message-Id: <20200317122220.30393-25-vincenzo.frascino@arm.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200317122220.30393-1-vincenzo.frascino@arm.com>
References: <20200317122220.30393-1-vincenzo.frascino@arm.com>
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200317122220.30393-25-vincenzo.frascino%40arm.com.
