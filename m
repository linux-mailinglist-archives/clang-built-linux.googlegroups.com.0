Return-Path: <clang-built-linux+bncBCOYZDMZ6UMRBSMCYPZQKGQERDPVLMI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23c.google.com (mail-lj1-x23c.google.com [IPv6:2a00:1450:4864:20::23c])
	by mail.lfdr.de (Postfix) with ESMTPS id 971C51883BF
	for <lists+clang-built-linux@lfdr.de>; Tue, 17 Mar 2020 13:23:38 +0100 (CET)
Received: by mail-lj1-x23c.google.com with SMTP id f24sf1805184ljm.9
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Mar 2020 05:23:38 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584447818; cv=pass;
        d=google.com; s=arc-20160816;
        b=tvIN8VctyF5pUpt2RvMnJLfGphRJ1nz4fEOxHAvn7roQrXceGCN1ACe9SN6wKIEBL9
         JgtYjRtvUbnHSQoIXj9IOjvF2i9OC+uCmFeeT7tlnySjHnCwiLrgcU4Ycz14GRKsJsdD
         jdLT+NKuNNMKUIEdk8nF/f0KNehhmWvF0oGPAsLPZJbehM0Kg0eJqq4t1ACKU/nOiCh/
         +q3ZmjOefSc5SajLYFrxNDMLhLFT/Oq0OMgNiovS12SBaQzw8G6UiKimmByc1Paxk3uu
         1kBVUYQZpRzXfoAfmbcGisSYJNAm7eYr+1iex8wyqUL6NcZKnN4UHIQygYk5huo85Cmv
         hESQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=X9twQnrU369U0Z+sgev86UqupUFLNaqRLnRx8uyyKPE=;
        b=FC3QEeptI59blvhws/61tP2mBTuHdq8B+XpFXSTRscssTkt7ruGbqN8kJNt0L1PFGV
         M95RdF/2hQRkHJO8Pfy25XwUhUguxRy2QNQb3X2NgH+FaZ7jncllYupU5PG4zgloZlUI
         ynDrJl732N6caSTKY/O8EAIQEjKUAT9ivE3km3GQy1f9ZRlzuhusgtYU3vtulWT7X9/e
         ZPLgmDjPr8TQq+yx00lWLWXrwVfNr0Zf1uzRMCU3BJf/XH7WVki7EXhZYQvcHM9emMaS
         oMMc9m4phW2mvCJ5fQjZRWKaTb/hnepqKyTePUKirHE/mUPLxABUYihmjSAVMexzXcry
         Lptw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=X9twQnrU369U0Z+sgev86UqupUFLNaqRLnRx8uyyKPE=;
        b=DEMKqSdWvSHeMoyp29I13/zrsZUDtlnVUI8WSkqv9RUfJsxy5Qo7xZ32IIw4e71mMq
         MPRakp8ebAISVHE7aKEAt7zSPo9WayMUdbiWxnb18H+eA1R4s7tF44nsoC/zOPBjiHLh
         2CafvS+IoiigMdmYsKDGSeJBbGIBpol2odFnipPAeS3W88KZp1BlswDv4eFyocCA0AEd
         KTw/m6pYLV2JP9I7A2+0/N5YjPYZKbKhJQEej1FMtYXTbP8yC+W5JShrwjzcl/0iXydN
         e/NOTsm5pQwnwK2OWzQis/lTAUuvhDJjkqThGcaxQTVO5+eV+bcZQDMJ1DmwsrFX53Ic
         JKdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=X9twQnrU369U0Z+sgev86UqupUFLNaqRLnRx8uyyKPE=;
        b=O8/W8nH3lxDDBoasKtHA513iL6AhhomOv1GZTMwO5kxJ6vBs5IxAFxiQQbkpHKU2oX
         K0kGQ6a3UrfoV97r+oezXcNnJEAGTDxnOkH6wYxFrQAdTl0YyCHIh9hmmdm7nzQjCHuo
         kJx7CHCQPoqxNdzKisHIGowsvSc0/MM9YeqmIhzHozcn2+Wxuz9JLKcklP4vf7K+6hq0
         tMOcotqqQE9SABiyzXR5Ef17CNvgoYqYXGnufjNmwT+gIXFWBQAInVhsAVv0cv9wiDU3
         XB0W0VIOrNlSQI3i/GCYwpu92dA6vmpga+2SpllzK0TsfcfoRrVLHF/qWagDHc3wE3jb
         L+ow==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ0r+MjQZSxhXGq3Q7gIm9Vd0Z90f/07pPuKUcVom7xHRjZuu6Wb
	Mz+8BnTT+LrMxdhErOF0Xbo=
X-Google-Smtp-Source: ADFU+vsVVAVXj8JODgeo3uUta2dPBXrCO67yqDXgfttwo9211h6nIZ8tRyzqiGD/D4CIfZhiVMZn+g==
X-Received: by 2002:a2e:91c6:: with SMTP id u6mr2528446ljg.207.1584447818093;
        Tue, 17 Mar 2020 05:23:38 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:8997:: with SMTP id c23ls2876887lji.7.gmail; Tue, 17 Mar
 2020 05:23:37 -0700 (PDT)
X-Received: by 2002:a2e:7c03:: with SMTP id x3mr1589902ljc.269.1584447817423;
        Tue, 17 Mar 2020 05:23:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584447817; cv=none;
        d=google.com; s=arc-20160816;
        b=BR3V31bEgVMn+UMQPOPwszKJedqQ+oBmNKnN2QtKufIfM+/R1PO8k7IpWst+GRvDeZ
         OSArVKSL7zv0XF2xlXvqQ6q9KUm1O6RCDA2WA0nxGzEMm83DX8eArKuweJpaSn2NdzdI
         acPAXVP4X/vESUnpKiljS9S0771FSrP5COb6am9ZJcdZ98Dt47j4A+zClfN72rci4ssJ
         XzRAiFtiP2lHwoTvqqKus4wOiFN/zSqH0/bHZ/ghVQB+KoxOqNjlnKYsIvj0SaQe6pBI
         yGu1zKOXLFvoikpsqBXbHIeLVpkOELLSWIhas2EN4NX/oqOSKyhtrLyz/VEVheX6SDXO
         Jb6A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=tiW2O59no9+QJFKPQIc1RP5hT/jS/N0FxsM4s5QO004=;
        b=wp7iGugOwjvGmMBehtNpDmN73lbIBWxuLWYN1B6Fno/1tACCsdV6TuuCX1V9xgSc80
         UYFZ+KkyAQYw+pi8CWnA+xpCu+5Fjd+GVG6T3fmpFs2IH8hM0XX6PzrbknKPk7H5R5bL
         0SiAgPlkvuctaqbH3nxGazl0DpQUrfkN4YHMsxUncJLqEQYMnVMsGleIHNbfyaU3MAUn
         oJnyunpACuBJ/TuesQg3+MmN++TlCU8Gd6DKZpuWme6l7tgylheMaCKciZjzsakuXhR9
         cRETuGbgJfXuUY/N+z4DrJpzfXSIrvbb3lyXxfJLoG3RTWse9HQAq4Z14G9j5ZE2jl5J
         e++g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id w6si122642lfa.1.2020.03.17.05.23.37
        for <clang-built-linux@googlegroups.com>;
        Tue, 17 Mar 2020 05:23:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 4BD08FEC;
	Tue, 17 Mar 2020 05:23:36 -0700 (PDT)
Received: from e119884-lin.cambridge.arm.com (e119884-lin.cambridge.arm.com [10.1.196.72])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 569503F534;
	Tue, 17 Mar 2020 05:23:33 -0700 (PDT)
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
Subject: [PATCH v4 14/26] linux/ktime.h: Extract common header for vDSO
Date: Tue, 17 Mar 2020 12:22:08 +0000
Message-Id: <20200317122220.30393-15-vincenzo.frascino@arm.com>
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

Split ktime.h into linux and common headers to make the latter suitable
for inclusion in the vDSO library.

Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
---
 include/linux/ktime.h |  9 +--------
 include/vdso/ktime.h  | 16 ++++++++++++++++
 2 files changed, 17 insertions(+), 8 deletions(-)
 create mode 100644 include/vdso/ktime.h

diff --git a/include/linux/ktime.h b/include/linux/ktime.h
index b2bb44f87f5a..1fcfce97a020 100644
--- a/include/linux/ktime.h
+++ b/include/linux/ktime.h
@@ -253,14 +253,7 @@ static inline __must_check bool ktime_to_timespec64_cond(const ktime_t kt,
 	}
 }
 
-/*
- * The resolution of the clocks. The resolution value is returned in
- * the clock_getres() system call to give application programmers an
- * idea of the (in)accuracy of timers. Timer values are rounded up to
- * this resolution values.
- */
-#define LOW_RES_NSEC		TICK_NSEC
-#define KTIME_LOW_RES		(LOW_RES_NSEC)
+#include <vdso/ktime.h>
 
 static inline ktime_t ns_to_ktime(u64 ns)
 {
diff --git a/include/vdso/ktime.h b/include/vdso/ktime.h
new file mode 100644
index 000000000000..a0fd07239e0e
--- /dev/null
+++ b/include/vdso/ktime.h
@@ -0,0 +1,16 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+#ifndef __VDSO_KTIME_H
+#define __VDSO_KTIME_H
+
+#include <vdso/jiffies.h>
+
+/*
+ * The resolution of the clocks. The resolution value is returned in
+ * the clock_getres() system call to give application programmers an
+ * idea of the (in)accuracy of timers. Timer values are rounded up to
+ * this resolution values.
+ */
+#define LOW_RES_NSEC		TICK_NSEC
+#define KTIME_LOW_RES		(LOW_RES_NSEC)
+
+#endif /* __VDSO_KTIME_H */
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200317122220.30393-15-vincenzo.frascino%40arm.com.
