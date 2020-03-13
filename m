Return-Path: <clang-built-linux+bncBCOYZDMZ6UMRBC6VV3ZQKGQEG5WN7DI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x238.google.com (mail-lj1-x238.google.com [IPv6:2a00:1450:4864:20::238])
	by mail.lfdr.de (Postfix) with ESMTPS id A5A18184B39
	for <lists+clang-built-linux@lfdr.de>; Fri, 13 Mar 2020 16:45:15 +0100 (CET)
Received: by mail-lj1-x238.google.com with SMTP id o21sf1503858ljc.18
        for <lists+clang-built-linux@lfdr.de>; Fri, 13 Mar 2020 08:45:15 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584114315; cv=pass;
        d=google.com; s=arc-20160816;
        b=Vuw+C/G7mQFzGRjV8IAPBbqDpdcDtzjUIl008K1YDLECq/cpcCFNKcX5Tv65vTXFXu
         KtxsFlZ8JRadBR8jjRpXRXKiW5VgLaJSkv5a2LzttQaL8zmYyqaXsK6DhVqdIT6OqXik
         RUQq8UP6W7bnBopwrJzyyvb11BMs9M6FtDJY8YAoLUyEn15rd3/JbHG7DQF9kU/TWneT
         hjR+ZlClHKi6u7/2z4fhu4ZiHV/CsOioR/hDYcethS8RmH4BcyiIPXerF16JkOyr+lo3
         ox8VIoi7F83A9xBzb9fHqHXWMvGpyFflikn8T9PPz169ldycChLLWo4+ycfLAs0JrLrT
         U6wg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=V48Ed4eva/FTfNeguF5JxtrXVXrDjp2gGNgBteiEMEE=;
        b=as5qnt05fKw8ty15IOpsOHG3UzKW5k2GXXoHCF2BI4OjOnkMUkiBaHxED5ptwlr2BT
         D//Wl535KqnFNhjQ0b3X9D9JUW3gYWFkrHLzuQwufLd02KtBuX+e+95Qu+JVds2aPser
         luXwjrZtnKxkK1+/O6Dqr7nJWX1hU2jm8fow81jSgcXGJLqYg9A9HF3Ove0sN1vHuvrI
         WRJLP7n1/JVZ08i5RMCs6MaUSa5BAK9Xjdlqkt4XnRPhcEvWdoPfcSk8QxfeGCnFZvAa
         KMnKRwfD6ls8bEgsHNT9lhsttaKw+S12uHuzMgHiq/S8ck04DKtMDYqdGJHgjxYPDWkf
         A9TA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=V48Ed4eva/FTfNeguF5JxtrXVXrDjp2gGNgBteiEMEE=;
        b=itnNDktNietu952wS4Dm28EuXvhRpeg5VK+TP9937pZGgnoO8K/KnJV3MMr6Zd6Q9C
         Qjkay51IhoZ8tnWVTdjX6E9hrgaRPyuS/HeMOF2kZNv7XCDdg9h9dfh6rTumB3g+DvFf
         gzlu/CShduHpg0OvRgx9WHoO75cykp03Hea1W5kVa58ki1gPkHj1cSUrD27WA+su37lT
         UMkGVbFiYaiQFHWn/dCIVaQEqRaH6VPx0KnwQ6HCsC2rY3figO4Ez2ikx8KnkWoeE/Qv
         5g9QIU9UU/vb4NrKh371MIDh0X2C0XyPccYoH1mi7FynCecXYCjw1IyvGSjWfbOLOi77
         gPUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=V48Ed4eva/FTfNeguF5JxtrXVXrDjp2gGNgBteiEMEE=;
        b=EL3RHAXKEg0cEikzy+10wet3tNuz5LhzhFO+L2dD54SVHhrsMJfvuC5PspaxxPVd9S
         jmwUKLOpZUPYmTwgZpSfWzJej8MiJdb+/4EMOnnEXvpfdOp6xGxs8CEQK3NCACFw0djX
         KxlwEGHAP+dX8O+dtygK1GA/1pfwm7N932qlJ8HDXTWPnzapHlUGMQK7FOdjiB7j69Vy
         dM7qtEELXwS4DS+8g4opw0rtfBA8WKJN4uJ4vIZPZA1ybBnsYOPpBERIiwfa16n888BM
         rgHV2YNavnJqCqFuARxw5eyInjMg91eRSQjyA5K05DdxsBTyBSH3z26CoJldkgq4zHqi
         31Cg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ28Fv/0+Kqj4FH0Nt1pYb20p6OisV5l3QdgaJMgkZkXmKu987WI
	R3GXqRRuObh+QREtU/G+Rik=
X-Google-Smtp-Source: ADFU+vsj376srv5zqUOqgjzRyj1VtVU6Sxxm/k1jIt1V9s5/YqCwOgSUO9eZqwIN7gfZeEQVugCz+g==
X-Received: by 2002:a05:6512:1054:: with SMTP id c20mr8759630lfb.69.1584114315182;
        Fri, 13 Mar 2020 08:45:15 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a19:c795:: with SMTP id x143ls411242lff.10.gmail; Fri, 13
 Mar 2020 08:45:14 -0700 (PDT)
X-Received: by 2002:a05:6512:305:: with SMTP id t5mr8800010lfp.104.1584114314464;
        Fri, 13 Mar 2020 08:45:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584114314; cv=none;
        d=google.com; s=arc-20160816;
        b=qotEIykpBZamRT6FpRDqmFW9jw+7tYyOloQWvXETerxCwLRyApg1xV0HbCYZ5D7wTI
         17jVA0gNVHN0Bg2VfhNGRfu1xjRr2ieZoeDQX/Q8/2v5rr/iWTnJeInfoQZcPOvt8bXE
         8SarsWugdlTLv4tZf54gCrDHrYeSoyCk+6sIUHDXPcZpaVb6BG1m/8zwnn8Kjhw7ZPgi
         /lfJn/3Qa48+3mQdEcnwb3OF49GwjegCuIukOd/z3inCBQm20MOXv1PBw+l/tTj39Sqc
         zA/KRNdRRZePBvK5Y6lhfsR3MqPIotGApgcvGVAdHrpcIfr4oY5ZI2CHEwXq6to4nadX
         JDZQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=uQurTtiMw50ngQFpIFo7v4YDXEiq8b/jCp+LFMmw9QY=;
        b=bK/50gHf7BqtFBUaYtWWCmr9EmAcno3FmS11IZtMWy9+HqsYpBx5vMVXDVdMTzFhJe
         vm9qZxYdGQhFgN/bunKgJgx0ylgC54bKRQyGmvl3gphTHBDW4S8uQP0i6oI1tRFPs2zW
         u8/Bo6yMV4mpchJYhR+LWlZSH0IWbBmyJAW6mtcQNi1yTY7i41GmZAc0BvpmWDVWIn5c
         PuYPcOb+cIZoMn+fo69VVwhX5az6ldNh00fDXJyGDTDNlFL9mtfsD+FLfeWMYN6kwehV
         cwOoIF9AaIkstgWMTs0ougp/i9a2OU9aWnuh+YWKAxVdrYO9gY6Q8WLeS81EbeMi9Azt
         klZw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id e4si139156ljn.1.2020.03.13.08.45.14
        for <clang-built-linux@googlegroups.com>;
        Fri, 13 Mar 2020 08:45:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 7232B31B;
	Fri, 13 Mar 2020 08:45:13 -0700 (PDT)
Received: from e119884-lin.cambridge.arm.com (e119884-lin.cambridge.arm.com [10.1.196.72])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 5A0D73F67D;
	Fri, 13 Mar 2020 08:45:10 -0700 (PDT)
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
	Mark Rutland <Mark.Rutland@arm.com>,
	Will Deacon <will@kernel.org>
Subject: [PATCH v3 21/26] arm64: Introduce asm/vdso/arch_timer.h
Date: Fri, 13 Mar 2020 15:43:40 +0000
Message-Id: <20200313154345.56760-22-vincenzo.frascino@arm.com>
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

The vDSO library should only include the necessary headers required for
a userspace library (UAPI and a minimal set of kernel headers). To make
this possible it is necessary to isolate from the kernel headers the
common parts that are strictly necessary to build the library.

Introduce asm/vdso/arch_timer.h to contain all the arm64 specific
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
Cc: Marc Zyngier <maz@kernel.org>
Cc: Mark Rutland <Mark.Rutland@arm.com>
Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
---
 arch/arm64/include/asm/arch_timer.h        | 29 ++++---------------
 arch/arm64/include/asm/vdso/arch_timer.h   | 33 ++++++++++++++++++++++
 arch/arm64/include/asm/vdso/gettimeofday.h |  7 +++--
 3 files changed, 42 insertions(+), 27 deletions(-)
 create mode 100644 arch/arm64/include/asm/vdso/arch_timer.h

diff --git a/arch/arm64/include/asm/arch_timer.h b/arch/arm64/include/asm/arch_timer.h
index 7ae54d7d333a..7f22cd00ad45 100644
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
+#include <asm/vdso/arch_timer.h>
 
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
diff --git a/arch/arm64/include/asm/vdso/arch_timer.h b/arch/arm64/include/asm/vdso/arch_timer.h
new file mode 100644
index 000000000000..a71bc83232f5
--- /dev/null
+++ b/arch/arm64/include/asm/vdso/arch_timer.h
@@ -0,0 +1,33 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/*
+ * Copyright (C) 2020 ARM Ltd.
+ */
+#ifndef __ASM_VDSO_ARCH_TIMER_H
+#define __ASM_VDSO_ARCH_TIMER_H
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
+#endif /* __ASM_VDSO_ARCH_TIMER_H */
diff --git a/arch/arm64/include/asm/vdso/gettimeofday.h b/arch/arm64/include/asm/vdso/gettimeofday.h
index afba6ba332f8..319808106625 100644
--- a/arch/arm64/include/asm/vdso/gettimeofday.h
+++ b/arch/arm64/include/asm/vdso/gettimeofday.h
@@ -8,6 +8,7 @@
 #ifndef __ASSEMBLY__
 
 #include <asm/unistd.h>
+#include <asm/vdso/arch_timer.h>
 
 #define VDSO_HAS_CLOCK_GETRES		1
 
@@ -82,10 +83,10 @@ static __always_inline u64 __arch_get_hw_counter(s32 clock_mode)
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200313154345.56760-22-vincenzo.frascino%40arm.com.
