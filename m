Return-Path: <clang-built-linux+bncBCOYZDMZ6UMRBWMCYPZQKGQEMPJJORA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43b.google.com (mail-wr1-x43b.google.com [IPv6:2a00:1450:4864:20::43b])
	by mail.lfdr.de (Postfix) with ESMTPS id 497301883CD
	for <lists+clang-built-linux@lfdr.de>; Tue, 17 Mar 2020 13:23:54 +0100 (CET)
Received: by mail-wr1-x43b.google.com with SMTP id b11sf10576817wru.21
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Mar 2020 05:23:54 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584447834; cv=pass;
        d=google.com; s=arc-20160816;
        b=zQBmZsUjX2MABDWtTSRA6ZYd5jOldN5h0dfj8LmIXyxpu8pmS9DgADiESRmtNVv8CE
         ZJyXdIhNRFi9kHPr0NTZSjSon+VfkyFlUL0khzMEA+Js5wdd9V5lrRKivlGByJEuBCaO
         IQxe9+f7aq0LbQPWVgH0pZS8cVUOhh48EaqsWwl3cHnu6hlAbhwFeGXKuikJKequzM4s
         wQHKZDrsHkt+WAdvX9sPkSSrLFaJkaKWzRBddJ/1/lolG2CS2UJUHgoUh9YUrPlaZMQp
         FC2O8+rbVFwJMwMLBKNkz6AbMHccjOba88JbGNspYTk5RF0VWwmpXMFJnVJ/Llknubaq
         4JGA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=SK07wdq12zKKUDQxseRSR0PWga5jyKj7owJaU1r7nOo=;
        b=rr7USUG4FJi+bhby0NoVuj3+FoAb6p+mMP3ilsmEXEgQ6gU8VeiNkcbY+TklsVMEqw
         ONgYK/f5jKOHFw80MwOjUj8EKODYjj2jLG7K78Esk44t36eVy+ZkVwzSh9RG/rlTi9sC
         jrgITx28G/vPj1x8MhFH7JWTKmGVQs9xFjxg7FM9yXuii5Vn4dISZt5kAMn35VllXNk3
         NcWVKh2H1TL6rvacSLmWNrS+f1ds7HWhLFYIHbOBf+jYxWKAr/MTGhD52HC/ks4RFSMO
         VhHq+NMo/ORqKbLWfkM9IKRbTHQ+mKRaERaNj+ewc7t4wxZUI0S2Shkxoe7Dj6TEFL3d
         6TWg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=SK07wdq12zKKUDQxseRSR0PWga5jyKj7owJaU1r7nOo=;
        b=DPlENXondgHU3U/8yY8XZMoSXEk0Osk3/yX3VrMhDSxNLB59S7FTI+Rvxg/MV0MR+u
         4eo8inqzSunUsOkJyf2+6ahz6ZMsIaCpfBV0nJbToI+t0Sau2mb3qI3VvH+CAKKOrEKW
         Xhas8FBpl78OjFguy2GaFG49ovV+ds/jPcdQLqbUrjxfP8oSr7u42c+mV/DJyrElZ11e
         rjEOm2BArers12ox9z56gyUbCrw9O7LjLAhW7JaP4kL4VJuQhWpDzJc+ap6QZTDgY/ZZ
         2XPDT5z1vNJFQThaWnZ+6Nj8S82MwgubH3CsL+OpwZb4/lGH0JfJMDa11HDyvkVCxv2r
         vOsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=SK07wdq12zKKUDQxseRSR0PWga5jyKj7owJaU1r7nOo=;
        b=TgW8u9tVfyG7a+dMRTryLsfedTO0GJwtQlpsx5IQU8mNhJ+8qNU7yS3EWABI9+E3J5
         hAx4wkoibmFUhuvFMHxN4xBYcFCW+Jm2kwE+rsdD+Ohv2PhV0nxGtjlqhgS/chzE+/wR
         19sdar2/49mDcrwyCdJ4FK3pO0JrSw6kS73bOMMwx5QJ2+F0FXwytlMEfScDORwCtqBw
         4DorDXAZhAJXtViY+Lu1zAdNAl8cXwup4YLdKPKGg/PhS+60JxdPbA7MUmm9h/0Qt77b
         y9A1zPQi7c8GFHxyVBd0wo6A9dTS/ymDFefPbxYmh7t1SA9fTnWYgEeO3aAji1uHaSIA
         YH+w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ1oz2Dp7iQN5uLLy/AAta85e/5IxnNODhW79H/kE/watOAv1BrN
	yZ5mng6V/eauBO3tfb4S5pk=
X-Google-Smtp-Source: ADFU+vvlwQ3reTi9iJcX0/vTiqQ8ey0vzOslVFjKpPudZlnlfzCeqCqWpowRyIYVJxOtZpOB6rf/PA==
X-Received: by 2002:a5d:4088:: with SMTP id o8mr5929430wrp.144.1584447833978;
        Tue, 17 Mar 2020 05:23:53 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:a98b:: with SMTP id s133ls35563wme.3.gmail; Tue, 17 Mar
 2020 05:23:53 -0700 (PDT)
X-Received: by 2002:a05:600c:2306:: with SMTP id 6mr5066025wmo.86.1584447833477;
        Tue, 17 Mar 2020 05:23:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584447833; cv=none;
        d=google.com; s=arc-20160816;
        b=L+eCVWHo/D1RVNv1Uq94+4Fl2YktjtX/nAflZWlx9XO77TTK4ZCkNrQy5YclUYe1qC
         9GpgSMabHi/zBCnlFzUh3UU31nTe3aRKbE+Hw/pti7VN96qG4kU0F4egpK33cNqEpEX7
         tW4jXpAhituNRJurMbC9ZlTHAzyaxPVh1/nnGZHqoWQ8DUmQHJApkkPUHPcPiKo5nb3i
         u8M80PS22YV3hqpgo7X5VMHievuN72jlcw7RnBcRkRVMSitTK3xMNE8pnK/ewcVqZFKC
         8nl4bN5+gqwjNJYspwlMLF+wJSql6I4l64o1JAUCJWchdYEHiPZdToupZNdzE/IK0YFq
         QXFA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=uytJ0JAkV8G+ZYQUrbmx8CC5JLAv4dnR09lx3gXoMVk=;
        b=tihwHxHGphZopGK2aaGGQuJxiBygn6TQihsFZHnoo4SMByJOfDCaepievV88MV1nYt
         SusfuDgdibw34LAi9yk5tA+5dctJaprMi6yWHnYlA+zKr0FRPG/EkdHGasPzbNyQ6Oj6
         BVqfBtNBq8S0FECi2KQXSxqPyOD8nBpD9ZuOeylRpiel5Ov5BKseUBr6jjqy37p4PRoJ
         eE5Hfd91m39rRedWPRyusbh8dp2SCgxO58qMca/51di3p8aUf9JrBvC5gCToqBGnxRYi
         VwbtaSrRjUyoazCGh/bfkGxJ46HZ00Ss1GuMHGmMVj9GE+yv4vHvjGxba7Xfr1qtAhVA
         6hSQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id d16si112678wrv.4.2020.03.17.05.23.53
        for <clang-built-linux@googlegroups.com>;
        Tue, 17 Mar 2020 05:23:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B8B5E30E;
	Tue, 17 Mar 2020 05:23:52 -0700 (PDT)
Received: from e119884-lin.cambridge.arm.com (e119884-lin.cambridge.arm.com [10.1.196.72])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id A84B93F534;
	Tue, 17 Mar 2020 05:23:49 -0700 (PDT)
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
	Mark Rutland <Mark.Rutland@arm.com>,
	Will Deacon <will@kernel.org>
Subject: [PATCH v4 19/26] arm64: Introduce asm/vdso/processor.h
Date: Tue, 17 Mar 2020 12:22:13 +0000
Message-Id: <20200317122220.30393-20-vincenzo.frascino@arm.com>
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
 arch/arm64/include/asm/processor.h      |  7 ++-----
 arch/arm64/include/asm/vdso/processor.h | 17 +++++++++++++++++
 2 files changed, 19 insertions(+), 5 deletions(-)
 create mode 100644 arch/arm64/include/asm/vdso/processor.h

diff --git a/arch/arm64/include/asm/processor.h b/arch/arm64/include/asm/processor.h
index 5ba63204d078..e51ef2dc5749 100644
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
@@ -256,11 +258,6 @@ extern void release_thread(struct task_struct *);
 
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
index 000000000000..ff830b766ad2
--- /dev/null
+++ b/arch/arm64/include/asm/vdso/processor.h
@@ -0,0 +1,17 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/*
+ * Copyright (C) 2020 ARM Ltd.
+ */
+#ifndef __ASM_VDSO_PROCESSOR_H
+#define __ASM_VDSO_PROCESSOR_H
+
+#ifndef __ASSEMBLY__
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200317122220.30393-20-vincenzo.frascino%40arm.com.
