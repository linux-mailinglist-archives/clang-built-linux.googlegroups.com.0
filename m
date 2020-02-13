Return-Path: <clang-built-linux+bncBCOYZDMZ6UMRBDPNSXZAKGQENFR5A7Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x338.google.com (mail-wm1-x338.google.com [IPv6:2a00:1450:4864:20::338])
	by mail.lfdr.de (Postfix) with ESMTPS id 419D815C7AA
	for <lists+clang-built-linux@lfdr.de>; Thu, 13 Feb 2020 17:17:18 +0100 (CET)
Received: by mail-wm1-x338.google.com with SMTP id g26sf2200384wmk.6
        for <lists+clang-built-linux@lfdr.de>; Thu, 13 Feb 2020 08:17:18 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1581610638; cv=pass;
        d=google.com; s=arc-20160816;
        b=x1p3xL846WWJn8VI35BCkcCzR6Pfy+fG6yBVvd8JUJh4kxZTG8qRv+ly5Y8Ge2Nj0A
         Gx6ym0SuQhgozoYpgGnTz2+/ivJvOAy3yK1FDydQ2ByCLNQTJ5TVfmiEy85mdroAxds9
         HIWnJZVzneS1KuZ5wKyLznk+kBAa6IMG2/Ne3EZ9rpQRwTbYPEaXpYo/qF64f/Qdq2EF
         gV//+EROEM7/hV93yFUqkPxUS/5wW5u2Lbd+vS5PQWVTIJEVhgpLbXbnxrqETex6Ol0P
         j4N0M6x7xxna0tg/SUT1rsw2QtfTKrGkE40IsDURiOk0GHgMTnP0pwIyHjeTJVbpeMtZ
         TZLQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=bFZK82U1rfICXFG31ZVYbpngtl19SMiyaYej22IRt20=;
        b=y8ytu+uNyl0j9S05mccT9Cp7fvI4A42ZLQSHXYGwdsDoDbTx99ibM1IWZ7eZ0PnPmV
         szVL7qwjrXPjhUB9zaJGhl+Mx2Do2vxJsKEaKkspc81OnCU8BUL6EwRyc9il4TPTdEay
         0bDq3btkcL0p4JoDr+MXiRcNl0dHdFYwcBb9mHpifROaAObKB4bjgs12wfI4+fqeJRcM
         2PRq53ArnVJnkrg8yhKFRXl+uCpX9vIEDGY0SAxJSQOg71oG8gnwMhoG5Q4rLnt+I+0V
         kvhsFO9NzaSB5GzPPPZVcJXIKlclqK2o0N2o78agLPcB5CWrNNdAhxHKMTcYT0XD3Ix+
         hVrQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=bFZK82U1rfICXFG31ZVYbpngtl19SMiyaYej22IRt20=;
        b=Y55BfsbbiOKAV5zG8WvHL0z3uyT+sIXVD+sjVul+mr1sAvIlKDevc6DFBYhuMwLr/N
         Zp4Ay8Yb9V6zp/FrZMYaStcqc9CX4RxYWqftHn4MSccAujXyof/R3UEVc/74arUH6azh
         gO4OqEH0O8mk5tHGpjAqaLHZukZl+pI9r/BVZXFXucbCIqn93RMv/bhFQhSWEz06JAAU
         nnkWWSU5+7xwSaczc8KTiC8aw7bphl8HKDljVITKrmthNvQ3qSEBt0fqbgBI2yN5nkuP
         uxAoslMz/6A8z5qF1NrfgSQC8jmebGnu6blcqgjOdxHfq/Gg+vGPhNBVGxU0AHe3S8hq
         F0lg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=bFZK82U1rfICXFG31ZVYbpngtl19SMiyaYej22IRt20=;
        b=GhmjY4TQ6dYbycsW5dzAVu+0DQnehCQ8frai//RjsBkgnuxACUxBX5OLU9RHX+8+g0
         U7bstX61clgkdjeMcnmMXUm7ahPqMzsu4ulBov6OYFHKaqmRyZODSyV0bMqW+xYjrJtV
         DPk0q7VoJVBzd5LNY1SKvtwU/DDlld5HbipQXsuk6Yg+cCe9tGrHm/sYtzGnqDYSP7Oe
         LPA4XVhm2xRhzgZqvf2a2P2GyYEMaW4q+nZLzEyGU7ivHS8WdaIaYWAuvbujmMHWxnuw
         n97udlryFYxl9MS01Lj76KBe1a/SYehjU3d3T1ylOc9w8el8jbuTUf9SBqo5/V9rusQw
         0k5g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWFYLInLDqXQ5wtZLgkTYkZXpToCoU7g5U4KFck4qHw3eebgegk
	qjbOJL9kOmelil9ylM/UEkE=
X-Google-Smtp-Source: APXvYqxlrL4BTdGXvWzFQY91grGKMj252uaRzj4uJPjpu5VVPuinRmlLXsYHhGWz5KnrhBx7R/frZQ==
X-Received: by 2002:a1c:a1c3:: with SMTP id k186mr6570464wme.179.1581610637991;
        Thu, 13 Feb 2020 08:17:17 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:eb4c:: with SMTP id u12ls13713846wrn.6.gmail; Thu, 13
 Feb 2020 08:17:17 -0800 (PST)
X-Received: by 2002:a5d:4289:: with SMTP id k9mr23325472wrq.280.1581610636756;
        Thu, 13 Feb 2020 08:17:16 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1581610636; cv=none;
        d=google.com; s=arc-20160816;
        b=h3X/G8NK1z44J84PxVPkBv1oa3xX0bIlL9qndkzpWnua8hHbtdePUNjz3hnnMLwM7N
         L7wa5RntOqkHp06m5QE08CmBnLIFH1S/VVIFRBZUNDZud92gxsSq69Ck3C321C45rBM5
         KY/qZwTUi+wPRPRptNamMLOgI7dQlADCzGbDGrIfz7NSt0KmPB4vKDlfsY2hTEzWg670
         K1LIZXU3+fN+InRv7QBp5yR5sxGiHnSLtPho3XCIC+f7NWAQeZg2zxRXNAcfBgLOHJbT
         1EEEo5SowNoX3LNhju0Br7FzvEt7QlPmKayA4wllwMQABxCE41iYgAuqnxtCBpCCbg8h
         FgCQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=ZUkv1aA29l2h3nA7Jm4SPRYNnwszAUDgSfqo8SD3eB4=;
        b=mQw+c80k1QIy0xJUuyZ5Ku6+zyu0LdLp7Y/KILzLmix/Z6PjxVHEJUmvmZeXdtrsfc
         OIn9usykVzFu4239NWEaL4/0kLVJn3Hb/WEM+4VrDduAwdqo3rA5xottjxH/nSFQ7sUk
         jBiVdowcTEOsXZefyUscRlqi5I6E5xknI6AXvxccC4YjdRLPdSYQOuE6FK92ue7sEshh
         APD9Vf+5IngDTF2tfcmi3x+ePlBzZe/18CqWboKola05rRcoZbHOtql9Gy0VqDwsn/5K
         8vCbbNfcj6j+DkrRF3DIh2TbdoGuJHts0LHhlely7iCLJQdftB0pIuRXhYicC5k3w7e7
         EebQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id d14si114547wru.1.2020.02.13.08.17.16
        for <clang-built-linux@googlegroups.com>;
        Thu, 13 Feb 2020 08:17:16 -0800 (PST)
Received-SPF: pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E53EB106F;
	Thu, 13 Feb 2020 08:17:15 -0800 (PST)
Received: from e119884-lin.cambridge.arm.com (e119884-lin.cambridge.arm.com [10.1.196.72])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 5B2333F6CF;
	Thu, 13 Feb 2020 08:17:13 -0800 (PST)
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
Subject: [PATCH 12/19] arm64: Introduce asm/common/processor.h
Date: Thu, 13 Feb 2020 16:16:07 +0000
Message-Id: <20200213161614.23246-13-vincenzo.frascino@arm.com>
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

The vDSO library should only include the necessary headers required for
a userspace library (UAPI and a minimal set of kernel headers). To make
this possible it is necessary to isolate from the kernel headers the
common parts that are strictly necessary to build the library.

Introduce asm/common/processor.h to contain all the arm64 specific
functions that are suitable for vDSO inclusion.

Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: Will Deacon <will@kernel.org>
Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
---
 arch/arm64/include/asm/common/processor.h | 31 +++++++++++++++++++++++
 arch/arm64/include/asm/processor.h        | 16 ++----------
 2 files changed, 33 insertions(+), 14 deletions(-)
 create mode 100644 arch/arm64/include/asm/common/processor.h

diff --git a/arch/arm64/include/asm/common/processor.h b/arch/arm64/include/asm/common/processor.h
new file mode 100644
index 000000000000..d02b0f392923
--- /dev/null
+++ b/arch/arm64/include/asm/common/processor.h
@@ -0,0 +1,31 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/*
+ * Copyright (C) 2020 ARM Ltd.
+ */
+#ifndef __ASM_COMMON_PROCESSOR_H
+#define __ASM_COMMON_PROCESSOR_H
+
+#ifndef __ASSEMBLY__
+
+#include <asm/page-def.h>
+
+#ifdef CONFIG_COMPAT
+#if defined(CONFIG_ARM64_64K_PAGES) && defined(CONFIG_KUSER_HELPERS)
+/*
+ * With CONFIG_ARM64_64K_PAGES enabled, the last page is occupied
+ * by the compat vectors page.
+ */
+#define TASK_SIZE_32		UL(0x100000000)
+#else
+#define TASK_SIZE_32		(UL(0x100000000) - PAGE_SIZE)
+#endif /* CONFIG_ARM64_64K_PAGES */
+#endif /* CONFIG_COMPAT */
+
+static inline void cpu_relax(void)
+{
+	asm volatile("yield" ::: "memory");
+}
+
+#endif /* __ASSEMBLY__ */
+
+#endif /* __ASM_COMMON_PROCESSOR_H */
diff --git a/arch/arm64/include/asm/processor.h b/arch/arm64/include/asm/processor.h
index 5ba63204d078..2866afc33f24 100644
--- a/arch/arm64/include/asm/processor.h
+++ b/arch/arm64/include/asm/processor.h
@@ -28,6 +28,8 @@
 #include <linux/string.h>
 #include <linux/thread_info.h>
 
+#include <common/processor.h>
+
 #include <asm/alternative.h>
 #include <asm/cpufeature.h>
 #include <asm/hw_breakpoint.h>
@@ -47,15 +49,6 @@
 #define TASK_SIZE_64		(UL(1) << vabits_actual)
 
 #ifdef CONFIG_COMPAT
-#if defined(CONFIG_ARM64_64K_PAGES) && defined(CONFIG_KUSER_HELPERS)
-/*
- * With CONFIG_ARM64_64K_PAGES enabled, the last page is occupied
- * by the compat vectors page.
- */
-#define TASK_SIZE_32		UL(0x100000000)
-#else
-#define TASK_SIZE_32		(UL(0x100000000) - PAGE_SIZE)
-#endif /* CONFIG_ARM64_64K_PAGES */
 #define TASK_SIZE		(test_thread_flag(TIF_32BIT) ? \
 				TASK_SIZE_32 : TASK_SIZE_64)
 #define TASK_SIZE_OF(tsk)	(test_tsk_thread_flag(tsk, TIF_32BIT) ? \
@@ -256,11 +249,6 @@ extern void release_thread(struct task_struct *);
 
 unsigned long get_wchan(struct task_struct *p);
 
-static inline void cpu_relax(void)
-{
-	asm volatile("yield" ::: "memory");
-}
-
 /* Thread switching */
 extern struct task_struct *cpu_switch_to(struct task_struct *prev,
 					 struct task_struct *next);
-- 
2.25.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200213161614.23246-13-vincenzo.frascino%40arm.com.
