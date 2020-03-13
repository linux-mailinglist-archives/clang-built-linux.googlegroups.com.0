Return-Path: <clang-built-linux+bncBCOYZDMZ6UMRBAOVV3ZQKGQELQJZNAI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x237.google.com (mail-lj1-x237.google.com [IPv6:2a00:1450:4864:20::237])
	by mail.lfdr.de (Postfix) with ESMTPS id 050BA184B2C
	for <lists+clang-built-linux@lfdr.de>; Fri, 13 Mar 2020 16:45:06 +0100 (CET)
Received: by mail-lj1-x237.google.com with SMTP id e14sf1208598ljp.12
        for <lists+clang-built-linux@lfdr.de>; Fri, 13 Mar 2020 08:45:06 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584114305; cv=pass;
        d=google.com; s=arc-20160816;
        b=npWq/z8kLrBJGjuWxzHYbcsj78c4l3jx3rFsp4ihiAlgEnHafKzmPFzgmGYsQA/6R7
         eTDP6nJkOvQ2zuPUgUf3N5jvMuJi4KzoP4H6cdQ0rLQJRzFzPCupA6/+Z6uIMDIERycE
         t2lrbzf9FJhz9Vp4ZwFQRDG6UAi3WT3+E5H2L/zWDB9EDKTYC9ZXLI64LB/5cImcSrBO
         BSlRaMjt0kF+9ixun4+dXt2unateCTIiOSjhhhQVhGC+Z5RAjISzPbLTU+IiiCypXHaH
         0FsZDkH7SKQM+Y8y8oAikvtWW/lhDacseUDDmNBEycaSbEDIsPtyAWF4uDup3NOdTLLQ
         rJwA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=ruUKE0mkb+oMEjFVkz/QVLUZ2ongwPbovPZUaqWszU0=;
        b=vyfRv/XyzNDw70UOQSCr8eArw9XokDhMdU6tupjpy3gDIZuy4U9X7RBniT0RXiNtLT
         Y9vPJjjeGx0eU0QAd5bHvK9oWj/3fYubYJeBNmHt/MAhaQ7f+9vaWikxl6ZyyZxoul4u
         FGd9e2X8Y2c0L1xLaFlaqtDNCYvH1RrmBQ0Ka3CCnacKnyHTewo/Vf3cQ/sVKpsQnxnE
         qqMmB8TvKkKODiSPN5zIgTBl6dyLwlAd+n4idFmjJiFM2Zyd3rRvFDlf/32SD1y7k6tE
         tIT1EtJ7ncDgE4KtkunM+agefx1E/2J7gBwMLzetPIDuh2GGERKW8vvcGzXCg8uhRnis
         EsJA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ruUKE0mkb+oMEjFVkz/QVLUZ2ongwPbovPZUaqWszU0=;
        b=Od0XHWgYCmp+slLS6HnPsj1gAPZ1QHfS0ZPshsJmHrZQFMUadXMpr92WR/iei7CyK1
         8eMZQhYOOAQStTRacwPHu3XLyHfTO3860jaD+euFcnH8Ood9EhPEXujnNr7iTEbpN5aE
         CiIuCPjuDwXWc/6YpCsnJP8YqNDe3DrWp7v3d24mkqTAQf5p/HbuIFS9XaXT9xgMUSHm
         bwjPfsGp4wxDhwjG+soijISBeo9yenQS/EPTqFvj8l/+4hMCK+dIEwSM7zd4vl1QYM0t
         CxiGtSW9RoJbmeapnXVqbrzpUVYltzgmNGI4FwMi2E3Q4S0hjX3tUcpAZjedYHMRbJTz
         zgvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ruUKE0mkb+oMEjFVkz/QVLUZ2ongwPbovPZUaqWszU0=;
        b=lYASSAlbCSu1bTSSz8oC7dxJj36czUPdE5CZjZp+tA5PmDS5Q6Kmp3YTwuwKoxqwD8
         CSAIe0oyMdB5gp2gv+aGE+MgL/AnFtK/UVrugrZM9cETe9JcEhlakX0SFAt0VpmGBIGf
         EOIu+M8Lvlt0+HYz73St/Xn7GLsT0PXMTbg8z6o3KojbI9K258WzRnXIaUEAfKyGdjOS
         TL8jOiJ0hE4BiS4X2HGNIQcy8p3sk9LUo/+4itm6m5h8904asf0PFee60foVB81Qje0Z
         mT456m/4rUZO/Jd08IYXzquV2zZT36LuOOJy3pR/KP4dQMaCYFSC4pNvZIJLThVa4ZuS
         85rQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ0MC/+EC0RheIgX0Vjp4H3jKK84qqEHWmhRoM3vhweSSVlZPT1o
	4IRlwQtQDZu+P1CBhSGCqsA=
X-Google-Smtp-Source: ADFU+vsPWc4WTXe5OCKu1obZzX5GJGGxhBtGgEVR4S6i8qM3mnxIo+MN6feoWOdUDQRhqrMIaO6fVw==
X-Received: by 2002:a2e:2e14:: with SMTP id u20mr8255847lju.262.1584114305372;
        Fri, 13 Mar 2020 08:45:05 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:b4e5:: with SMTP id s5ls1974680ljm.6.gmail; Fri, 13 Mar
 2020 08:45:04 -0700 (PDT)
X-Received: by 2002:a2e:b168:: with SMTP id a8mr8592809ljm.29.1584114304659;
        Fri, 13 Mar 2020 08:45:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584114304; cv=none;
        d=google.com; s=arc-20160816;
        b=xPPI7JMgYFKVfJnTt79k3U7O9MZaVVl1YDE7/bbkxUS/G3WzexTVHMnU6aOKRbgyFk
         GulCoPeoSedmEFKR7f39ArK0zARHfRpOWRdYi2qNcB0OGkMgZpKQ1Y1tapkIxogVJ//a
         RI4ZrpGNyM+DT21inRMiCyJFU2cf4oEOY2m80/Hy9oyRidVALBXBcPPZZ+q8Uuh4BkQH
         kf5AHc503aAmpgxSYQCXhXhVQFlh84L3XOSmbskAKviTXVWaH6cxZIMAgGM90pto3Kpm
         sOH8MdjGmceY8nmdYshBRX5pa5YWuviElUSHN6N2DK6P3DVzbYTeYzY8eXbd1d02Do3o
         51Sw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=H9ud3561McR2A7n+WWxnhcf7Y1OOM8SKln8y7+PVhEA=;
        b=Q7MTB2mlOulR7r9Nnlu4DNXyshYyj0dMZ5+rNKQPIGIVebn6MlRLtnCzXJfNIr9ck0
         6CnkpsBvvjmEnNnGjIu4I/3Nk43YRg/7ZOOHkf3xFmQgt6KVUC+6Hb6dEO1gNPsmI0/e
         GKmW9vM7wyIXR8TGOIKbHgN7pkDaSDt7MbfsPYnppj/1aSGTm9pkTWt5BqEJPeXC0HKs
         90+a7JG66H5sUMOP4XNbm85jq5kwcD67GTjM0SzbKjyTuD/VL/czKWDnnXCp6ISyJm/9
         EZ5G45J7IMVkVevx+8uPWKQvB9E+HHewgrQ6IyChm1yBJ17XoUYuWVdpUtQTuOzCbIWs
         +0ow==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id j11si369283lfe.4.2020.03.13.08.45.04
        for <clang-built-linux@googlegroups.com>;
        Fri, 13 Mar 2020 08:45:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 8764C31B;
	Fri, 13 Mar 2020 08:45:03 -0700 (PDT)
Received: from e119884-lin.cambridge.arm.com (e119884-lin.cambridge.arm.com [10.1.196.72])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 73A0E3F67D;
	Fri, 13 Mar 2020 08:45:00 -0700 (PDT)
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
Subject: [PATCH v3 18/26] arm64: Introduce asm/vdso/processor.h
Date: Fri, 13 Mar 2020 15:43:37 +0000
Message-Id: <20200313154345.56760-19-vincenzo.frascino@arm.com>
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

Introduce asm/vdso/processor.h to contain all the arm64 specific
functions that are suitable for vDSO inclusion.

Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: Will Deacon <will@kernel.org>
Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
---
 arch/arm64/include/asm/processor.h      | 16 ++-----------
 arch/arm64/include/asm/vdso/processor.h | 31 +++++++++++++++++++++++++
 2 files changed, 33 insertions(+), 14 deletions(-)
 create mode 100644 arch/arm64/include/asm/vdso/processor.h

diff --git a/arch/arm64/include/asm/processor.h b/arch/arm64/include/asm/processor.h
index 5ba63204d078..89ba2c5be504 100644
--- a/arch/arm64/include/asm/processor.h
+++ b/arch/arm64/include/asm/processor.h
@@ -28,6 +28,8 @@
 #include <linux/string.h>
 #include <linux/thread_info.h>
 
+#include <vdso/processor.h>
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
diff --git a/arch/arm64/include/asm/vdso/processor.h b/arch/arm64/include/asm/vdso/processor.h
new file mode 100644
index 000000000000..fb4883212a2d
--- /dev/null
+++ b/arch/arm64/include/asm/vdso/processor.h
@@ -0,0 +1,31 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/*
+ * Copyright (C) 2020 ARM Ltd.
+ */
+#ifndef __ASM_VDSO_PROCESSOR_H
+#define __ASM_VDSO_PROCESSOR_H
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
+#endif /* __ASM_VDSO_PROCESSOR_H */
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200313154345.56760-19-vincenzo.frascino%40arm.com.
