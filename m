Return-Path: <clang-built-linux+bncBCOYZDMZ6UMRBNFCRHZQKGQEXP2O2YQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x538.google.com (mail-ed1-x538.google.com [IPv6:2a00:1450:4864:20::538])
	by mail.lfdr.de (Postfix) with ESMTPS id D8A3117BEBC
	for <lists+clang-built-linux@lfdr.de>; Fri,  6 Mar 2020 14:33:40 +0100 (CET)
Received: by mail-ed1-x538.google.com with SMTP id s21sf1676632edy.3
        for <lists+clang-built-linux@lfdr.de>; Fri, 06 Mar 2020 05:33:40 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1583501620; cv=pass;
        d=google.com; s=arc-20160816;
        b=lZ2RphPFt8SiBPZ1iG0tghN8YX+uI4dTKsWp1+zpzdoanG+NkPKtXomdTAVckNl8/W
         jOwr4B7L85NiwW6m9xe43a+nqoXhtBJf7jZ2bU3GCnk36iVIhQVEHCBwDKAT3h/Rpexc
         D9PyaT260qKi4fzO11fzKIWMvJ2N8LvDTTjQmsn8554kCKX7skBemGk/6PxhNh5A9edI
         3qqCJnXzD3RUzf8LH8GgM7jldtc3CLJLERQIjmc//rmXBNdCrjD57x6L9hzGyQX3mlKS
         esd51Ql4LcSTK4G+cfsZQ/9pvONqPyBVHD3PlgPWkL/ndCJ+5p1OYaqR/gHket5j8q4o
         Dwpw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=sQp6fWiDWI/IF9MP/zh4Lg+9itnJjoPUd9uLP/qw4Jg=;
        b=ZN/Do0l1cMH+LMyOTl8BIjnDwnqw1Fisvg0jrA+C9VmnZKvTgykdPC9AtAydM5N0vX
         fgEAtbBi3RGzhK6L3ImO7hXeh3SX8hI6eEA7toJYG39NmokMDvMElo6EzQ25WocmCdOK
         Q8kRCradG1Ru0z7szGt0JF8dwt4J1zWVsWR+j0SjUh5qvCgSuY2hl+YCm9iZ6x6pBQBk
         KxibnRursLzOyJQBPdLllY8+HTGyqM4JM2khtPGoi15pM8fA80sN9l/d+zRHDIiOl0Sa
         98asO9JBqHm4PLL2TnbCCBfoYOFNxqcydGuKHVg11ei9B+dPjMjmoctjBW/Bsagzutyd
         B1Zw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=sQp6fWiDWI/IF9MP/zh4Lg+9itnJjoPUd9uLP/qw4Jg=;
        b=EaPgeLv8Sr/QYFnBMpDPMCHHFD1GLdyKTh+2+ciFy9m+Bw8PDAQ3phuZIvwRvr/fnh
         ssqfzp0bWFcBMS4BDjUQLgHQgdxI8OCHKlwDZWJje4Edl1kZowJkm0oXXuGUnkWywQq9
         mWXWycpkW9tAC83jRbhq1j2yAw0BVYeaFH5xOEB3EjX6CpJlERbYHcZvqMFX6U/wGlf7
         gvm1lz07ukB5j4awMzysRuM9YrvSEXsMyf2BcPzMvH7+0ZYoTpY0IxeDnfsg5uGb5UIV
         Ny+Gc787XLEP4FPasLttmHXhgH6nZrtwExWokofJN0n3HiK5zinFgddd3Fgcl2WHP1hu
         l3Yg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=sQp6fWiDWI/IF9MP/zh4Lg+9itnJjoPUd9uLP/qw4Jg=;
        b=JzuldVtjbwsZ0xKUHeYl+ap1caVAg1N89OAZrXAEO+XA5iB+yV8FglSt/0OybYTiN/
         tOc7sBWy+SXZQCvdYxs0HLiqykYLfO3IwbkX2tg1IXFKOKWY4/sSxmkL2QdzBDYtdgUl
         yTjEXE8HYpd7IN2XTpU8RPNVNHOb01VCABYtmob5atpFuKnrbaS7kRryc4g81q9uRBKv
         f2iPR1FwGoyE7epECYa3fFr/EGq3mN2GymuUEXHhAnyBG6FD6SDGsZoOmqTI32wxjVGt
         XtbogrOy6ZFyd14BUHpnr8CpDxMKg0UNJQsgeQ/+FOW0SmOCVmZVGKnnbya+ul3v1iUg
         QuVg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ0Ur9c+GtVpX2fRKmaCrChzHMyUeDJV3ivsP7mXddGCo/ccdGHy
	yRsr2NBYDoMbtgfmPIovmQA=
X-Google-Smtp-Source: ADFU+vvcqzvSjHdoMZrjOvtfMV8x4++1QBnu4MpbYnI6WPJ80Gjnl/tb5nfw0YiMQEPq+tjvGhfYAw==
X-Received: by 2002:aa7:d64e:: with SMTP id v14mr3056462edr.164.1583501620628;
        Fri, 06 Mar 2020 05:33:40 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a50:9517:: with SMTP id u23ls1159246eda.7.gmail; Fri, 06 Mar
 2020 05:33:40 -0800 (PST)
X-Received: by 2002:a50:c94d:: with SMTP id p13mr3261316edh.78.1583501620072;
        Fri, 06 Mar 2020 05:33:40 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1583501620; cv=none;
        d=google.com; s=arc-20160816;
        b=07NSpNjZQlItZuFLyfdHmh1aeAIvnIKN1kSWFWYdojzqXgT+p/yQR2a0UuaVoJSyN3
         wj658J+7DJqEkf+eGLQXOf0n7fdqkMntwjNLWtKFMAnrjg9hZ2A289pDNadQULqfie/4
         sWfT3kBMpK3nH6qIYvjF+9+hf/QhLmK5T+Gv0CoKHi95uIDVLHu+zOFg6SGZFiu5CbZ9
         boObh3svBkTEkjtHJI2wtAtPfgjEyUnwTAq51a1CShvGcqXCg1495A+05FcbPA/3cR3m
         LMkanW9zv8URf1qnYAgiLtcIVa0IchIYKJ2kWH/a6LmbM6BSmUMcMxeaJaPgG9xTO0b7
         YeeQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=cEY/++cW16u38IB6UWOggK+RWNNbLPEc3zYdZW5SRUo=;
        b=rC2EdTMQKdHeJnUze/6tc5O+CkAChV1jl9BzNvVh94Ol/LoNwCciK+o0v5ZU4BI1iz
         MvIIUqRpLrR7usGsHNhYICia/mTe1j7qg4Hs3S8a9ICmS3WDNf40DmzXP9Py2lxvHIbW
         00pguk0um1Zqg2JsIffFtSEBLF26CHDB28jHhPiQUmMjQMGETXsH1g0U2HiAY5jgywlB
         qwAJr5nHgg2AnPDmUHHNF5G5qInp7IMO0p/iKO2oU3KtXu6Ut8KxtIjt1xUQJagN4MzW
         MGHmMAfRhOzKNABbL8t+L1PLsksdVltl4VZ1gxUx5o17OwC6fHVTyeJImuNdyad+B8Uv
         MeqA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id g12si103530eje.1.2020.03.06.05.33.39
        for <clang-built-linux@googlegroups.com>;
        Fri, 06 Mar 2020 05:33:40 -0800 (PST)
Received-SPF: pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 48DA231B;
	Fri,  6 Mar 2020 05:33:39 -0800 (PST)
Received: from e119884-lin.cambridge.arm.com (e119884-lin.cambridge.arm.com [10.1.196.72])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 6D45D3F6CF;
	Fri,  6 Mar 2020 05:33:36 -0800 (PST)
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
	Will Deacon <will@kernel.org>
Subject: [PATCH v2 15/20] arm64: Introduce asm/common/arch_timer.h
Date: Fri,  6 Mar 2020 13:32:37 +0000
Message-Id: <20200306133242.26279-16-vincenzo.frascino@arm.com>
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

The vDSO library should only include the necessary headers required for
a userspace library (UAPI and a minimal set of kernel headers). To make
this possible it is necessary to isolate from the kernel headers the
common parts that are strictly necessary to build the library.

Introduce asm/common/arch_timer.h to contain all the arm64 specific
code. This allows to replace the second isb() in __arch_get_hw_counter()
with a fake dependent stack read of the counter which improves the vdso
library peformances of ~4.5%. Below the results of vdsotest [1] ran for
100 iterations.

Before the patch:
=================
clock-gettime-monotonic: syscall: 771 nsec/call
clock-gettime-monotonic:    libc: 130 nsec/call
clock-gettime-monotonic:    vdso: 111 nsec/call
...
clock-gettime-realtime: syscall: 762 nsec/call
clock-gettime-realtime:    libc: 130 nsec/call
clock-gettime-realtime:    vdso: 111 nsec/call

After the patch:
================
clock-gettime-monotonic: syscall: 792 nsec/call
clock-gettime-monotonic:    libc: 124 nsec/call
clock-gettime-monotonic:    vdso: 106 nsec/call
...
clock-gettime-realtime: syscall: 776 nsec/call
clock-gettime-realtime:    libc: 124 nsec/call
clock-gettime-realtime:    vdso: 106 nsec/call

[1] https://github.com/nathanlynch/vdsotest

Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: Will Deacon <will@kernel.org>
Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
---
 arch/arm64/include/asm/arch_timer.h        | 29 ++++---------------
 arch/arm64/include/asm/common/arch_timer.h | 33 ++++++++++++++++++++++
 arch/arm64/include/asm/vdso/gettimeofday.h |  7 +++--
 3 files changed, 42 insertions(+), 27 deletions(-)
 create mode 100644 arch/arm64/include/asm/common/arch_timer.h

diff --git a/arch/arm64/include/asm/arch_timer.h b/arch/arm64/include/asm/arch_timer.h
index 7ae54d7d333a..6567e20a76b2 100644
--- a/arch/arm64/include/asm/arch_timer.h
+++ b/arch/arm64/include/asm/arch_timer.h
@@ -164,24 +164,7 @@ static inline void arch_timer_set_cntkctl(u32 cntkctl)
 	isb();
 }
 
-/*
- * Ensure that reads of the counter are treated the same as memory reads
- * for the purposes of ordering by subsequent memory barriers.
- *
- * This insanity brought to you by speculative system register reads,
- * out-of-order memory accesses, sequence locks and Thomas Gleixner.
- *
- * http://lists.infradead.org/pipermail/linux-arm-kernel/2019-February/631195.html
- */
-#define arch_counter_enforce_ordering(val) do {				\
-	u64 tmp, _val = (val);						\
-									\
-	asm volatile(							\
-	"	eor	%0, %1, %1\n"					\
-	"	add	%0, sp, %0\n"					\
-	"	ldr	xzr, [%0]"					\
-	: "=r" (tmp) : "r" (_val));					\
-} while (0)
+#include <asm/common/arch_timer.h>
 
 static __always_inline u64 __arch_counter_get_cntpct_stable(void)
 {
@@ -189,7 +172,7 @@ static __always_inline u64 __arch_counter_get_cntpct_stable(void)
 
 	isb();
 	cnt = arch_timer_reg_read_stable(cntpct_el0);
-	arch_counter_enforce_ordering(cnt);
+	cnt = arch_counter_enforce_ordering(cnt);
 	return cnt;
 }
 
@@ -199,7 +182,7 @@ static __always_inline u64 __arch_counter_get_cntpct(void)
 
 	isb();
 	cnt = read_sysreg(cntpct_el0);
-	arch_counter_enforce_ordering(cnt);
+	cnt = arch_counter_enforce_ordering(cnt);
 	return cnt;
 }
 
@@ -209,7 +192,7 @@ static __always_inline u64 __arch_counter_get_cntvct_stable(void)
 
 	isb();
 	cnt = arch_timer_reg_read_stable(cntvct_el0);
-	arch_counter_enforce_ordering(cnt);
+	cnt = arch_counter_enforce_ordering(cnt);
 	return cnt;
 }
 
@@ -219,12 +202,10 @@ static __always_inline u64 __arch_counter_get_cntvct(void)
 
 	isb();
 	cnt = read_sysreg(cntvct_el0);
-	arch_counter_enforce_ordering(cnt);
+	cnt = arch_counter_enforce_ordering(cnt);
 	return cnt;
 }
 
-#undef arch_counter_enforce_ordering
-
 static inline int arch_timer_arch_init(void)
 {
 	return 0;
diff --git a/arch/arm64/include/asm/common/arch_timer.h b/arch/arm64/include/asm/common/arch_timer.h
new file mode 100644
index 000000000000..b11bd67a366e
--- /dev/null
+++ b/arch/arm64/include/asm/common/arch_timer.h
@@ -0,0 +1,33 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/*
+ * Copyright (C) 2020 ARM Ltd.
+ */
+#ifndef __ASM_COMMON_ARCH_TIMER_H
+#define __ASM_COMMON_ARCH_TIMER_H
+
+#include <uapi/linux/types.h>
+
+/*
+ * Ensure that reads of the counter are treated the same as memory reads
+ * for the purposes of ordering by subsequent memory barriers.
+ *
+ * This insanity brought to you by speculative system register reads,
+ * out-of-order memory accesses, sequence locks and Thomas Gleixner.
+ *
+ * http://lists.infradead.org/pipermail/linux-arm-kernel/2019-February/631195.html
+ *
+ */
+static u64 arch_counter_enforce_ordering(u64 val)
+{
+	u64 tmp, _val = (val);
+
+	asm volatile(
+	"	eor	%0, %1, %1\n"
+	"	add	%0, sp, %0\n"
+	"	ldr	xzr, [%0]"
+	: "=r" (tmp) : "r" (_val));
+
+	return _val;
+}
+
+#endif /* __ASM_COMMON_ARCH_TIMER_H */
diff --git a/arch/arm64/include/asm/vdso/gettimeofday.h b/arch/arm64/include/asm/vdso/gettimeofday.h
index cc3456416096..628bb3b187c4 100644
--- a/arch/arm64/include/asm/vdso/gettimeofday.h
+++ b/arch/arm64/include/asm/vdso/gettimeofday.h
@@ -8,6 +8,7 @@
 #ifndef __ASSEMBLY__
 
 #include <asm/unistd.h>
+#include <asm/common/arch_timer.h>
 
 #define __VDSO_USE_SYSCALL		ULLONG_MAX
 
@@ -83,10 +84,10 @@ static __always_inline u64 __arch_get_hw_counter(s32 clock_mode)
 	isb();
 	asm volatile("mrs %0, cntvct_el0" : "=r" (res) :: "memory");
 	/*
-	 * This isb() is required to prevent that the seq lock is
-	 * speculated.#
+	 * arch_counter_enforce_ordering() is required to prevent that
+	 * the seq lock is speculated.
 	 */
-	isb();
+	res = arch_counter_enforce_ordering(res);
 
 	return res;
 }
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200306133242.26279-16-vincenzo.frascino%40arm.com.
