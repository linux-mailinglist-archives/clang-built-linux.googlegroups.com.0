Return-Path: <clang-built-linux+bncBCOYZDMZ6UMRBZUCYPZQKGQEIOVAMIA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43c.google.com (mail-wr1-x43c.google.com [IPv6:2a00:1450:4864:20::43c])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E0F21883D2
	for <lists+clang-built-linux@lfdr.de>; Tue, 17 Mar 2020 13:24:07 +0100 (CET)
Received: by mail-wr1-x43c.google.com with SMTP id k11sf1948552wrq.2
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Mar 2020 05:24:07 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584447847; cv=pass;
        d=google.com; s=arc-20160816;
        b=i3ds5b9E+qoPIkM+Kg4oAMr4G45qRO6t/jtdPNK50VtP64DecDqC4fVojD4yBXu0D4
         YH/KMDpqwRLym9SIIg/17MyOdas+GEnVwqm+T4Fa8rlZuXypLKTmMmd6XdFtMa9KuU0b
         WDjSJDQWvfD2ejSNgIHJTUvgmrVuZFah4M7J8OmTKgaQ5bIalzXqj3QUN0DBrtEczhs+
         lRcB1gQUAer7RpqehK2fyrVjhjfDgC9dXL9j0pEWl10Qu8EAP4kGhUY2PkKT06J+HArp
         /ycD+f9vnlADBICqXUw0LRa0+xS3MUylE6rzeC7e8SzVppQVcPvuFvhvhKaRPYUCmjk5
         xU5Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=GRi5Wzufs70+9rkvpwGTfBF3gNCJ9JDfTb0mtpEjop0=;
        b=ReampJTg5jiyd1X/nrCK2/V9pMK+8/qIIwA0s4Zel+uPMeLRUHCm9WvUAMsl8ougor
         bgb6g7l78i1Bv12QXpOQKghM5L0yPinuIMb/V7E28ApcrrhqfyGbPWASwKF7Ej/hFnDd
         M9JTL1OKSTxgybODtfttw4yTVAnUTSjXl/gQFfA4MqEouDt3doPR267C1f1zZaoC6OXE
         wVBfOyFEcd1ajKOZ2ZHOt4REbLOOmYc/p1zA/EaLZO5OGVjoRYOSndU2EyaKcsZNn6i7
         mXtTyxP6SaSzVqJZeP2y1XpOXPc2w6C1izERx5WEEHHj5rTzquSh/XqG1uABWIMiWnju
         LuTQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=GRi5Wzufs70+9rkvpwGTfBF3gNCJ9JDfTb0mtpEjop0=;
        b=jtl1CKryB/tN+0MG4ilFxptsMHzzBZYtDXJKVNBuvVoUU3HRrMEYS1GX3flIwh2zeH
         6mE5JCHNGX/wKqDKyVCTu9M9NZPk9Z7dA/H7R/RUKo2aILsP9S8WfBclsGYU5hrbY6s6
         mQPj3I2cH0xZPUdDJV64fgUFVV7AieshUdMrFxhGyCYkW2sFMrAPNmcSaPvEeM8wLdQW
         9K6RcbDjvaHQOAeT0DK8jDIqxsdS6YTdVH6oQ2h+MB1f6U5IFFbuL5sDcyUTUou0JwpA
         vulvIrGBK5OL2iR+KgVTBZ9iw+MtO901K/dqiUS5QTJwR6p9s7nxCbdY0dCI/4/JsM/a
         8tsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=GRi5Wzufs70+9rkvpwGTfBF3gNCJ9JDfTb0mtpEjop0=;
        b=OuAmSCXGgxqID5eqQvUPPAF4dtV1jvHh5JS9Qi37fdGHCvNfLzHG7P+wSmfyhgk27h
         WvoLTZgxx6hORbL4SoNNR24abH2tY220ZA9g+w1WIc/wstbc4yKRcjoXsJ9geq48aDAx
         R2V7eGEHgis7bZW+KlrH/638qBrouF6FzDVi6e2zEEr9PdsFFYaDuuxpY3Fd2vo+rQ6S
         0Z6iKyqquH3p7IXbdF4N9DvsFFyMV7JqUBkFY0unmvzF+h2N9/Ob8EEAaHOCYqVrcY21
         C7cwIAqTLS/ccQo8CnZRH6EzDhwkicf7VuooAVK7GtfGcPx0u4qUdRv188vT9dgIHNWT
         1tuw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ0wdsB4yYLRz2yTGyN+n8DQNuz8KFf3FwYDNBZpmRzH1ME3t7kp
	LeTCiVujnOYLeiWeqtYXoK4=
X-Google-Smtp-Source: ADFU+vvZvM150ceeQXe4gsx+/kuUVlLhRhkMO02TlB8mikaMcxaX3NexOcD/MNQSPbXiw/uXdtk3/A==
X-Received: by 2002:a05:6000:370:: with SMTP id f16mr5956827wrf.9.1584447846927;
        Tue, 17 Mar 2020 05:24:06 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:4b06:: with SMTP id y6ls36135wma.3.canary-gmail; Tue, 17
 Mar 2020 05:24:06 -0700 (PDT)
X-Received: by 2002:a1c:20c6:: with SMTP id g189mr5303150wmg.163.1584447846456;
        Tue, 17 Mar 2020 05:24:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584447846; cv=none;
        d=google.com; s=arc-20160816;
        b=L4n7c+NEREo4WYzvCN/bbUxUjNr8k4dtp7fDlXC2jjxwARCTVIqgV1KaYrYIN46SDl
         1hI/BrgKe+lTgKfbaxI55dLG54YXIHuB8VREGbCBKJUuRDzRbfKHpDvVfv3Ugp3MUQ7r
         wnYias1m4t9EIBeb4jqFJwa1gaJTkyt8SxQb7ZUJCmLjZmhadMZzsdMEZOhTjT6x6RXf
         SDhiUqz/Od794cbJD3yjHbrAodMTopvtwTq0q/OJWZ0B5DhSMsLM6pmPlqQi2xH5vBMa
         E7j8rmT2Om16UKKL6nK/pmxTyQ81fb/2picCEWpn+MIsH24LJnBTlmHbJ3BDoXaKgxGv
         6CGA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=rGJeW2m/dSGsKIkppqiFUcD39GN0lRj2PQKqHudCdIw=;
        b=nNsEABp4Ov597eQVgz8HlxO5JcL5M9nccOQA+Q/qlDzMdj3qLFeXcOhKd7iTw26kqV
         NOAZArv4sxueoC+HQD4GCyYc7g+fi/I1KJuQeWdYgcHONCvVWpU9E2llc89ABfuh6ZGA
         wBiugpiJ845LsfhDcDdtQQbcR8/RJWI/6MnV6aIqHbYGn4WsIpm0WD/nxBiVCU7zysTx
         0Fc1NfLnrUqjqIt2SNH1aK3/dCuG2vbaKfDX0x7qdC5bPrtA8CK8nFqCcqbX+5G78sf+
         BoQkKSb1+zMawx6JNB97uLKjGDr10cWrNRjypPq5DJS0JFJavXWrpI02kDp+ukaMIP6B
         S6cA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id i19si171607wml.0.2020.03.17.05.24.06
        for <clang-built-linux@googlegroups.com>;
        Tue, 17 Mar 2020 05:24:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C2B95FEC;
	Tue, 17 Mar 2020 05:24:05 -0700 (PDT)
Received: from e119884-lin.cambridge.arm.com (e119884-lin.cambridge.arm.com [10.1.196.72])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id CD3723F534;
	Tue, 17 Mar 2020 05:24:02 -0700 (PDT)
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
Subject: [PATCH v4 23/26] x86: vdso: Enable x86 to use common headers
Date: Tue, 17 Mar 2020 12:22:17 +0000
Message-Id: <20200317122220.30393-24-vincenzo.frascino@arm.com>
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

Enable x86 to use only the common headers in the implementation
of the vDSO library.

Cc: Thomas Gleixner <tglx@linutronix.de>
Cc: Andy Lutomirski <luto@kernel.org>
Cc: Ingo Molnar <mingo@redhat.com>
Cc: Borislav Petkov <bp@alien8.de>
Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
---
 arch/x86/include/asm/processor.h      | 12 +-----------
 arch/x86/include/asm/vdso/processor.h | 23 +++++++++++++++++++++++
 2 files changed, 24 insertions(+), 11 deletions(-)
 create mode 100644 arch/x86/include/asm/vdso/processor.h

diff --git a/arch/x86/include/asm/processor.h b/arch/x86/include/asm/processor.h
index 09705ccc393c..94789db550df 100644
--- a/arch/x86/include/asm/processor.h
+++ b/arch/x86/include/asm/processor.h
@@ -26,6 +26,7 @@ struct vm86;
 #include <asm/fpu/types.h>
 #include <asm/unwind_hints.h>
 #include <asm/vmxfeatures.h>
+#include <asm/vdso/processor.h>
 
 #include <linux/personality.h>
 #include <linux/cache.h>
@@ -677,17 +678,6 @@ static inline unsigned int cpuid_edx(unsigned int op)
 	return edx;
 }
 
-/* REP NOP (PAUSE) is a good thing to insert into busy-wait loops. */
-static __always_inline void rep_nop(void)
-{
-	asm volatile("rep; nop" ::: "memory");
-}
-
-static __always_inline void cpu_relax(void)
-{
-	rep_nop();
-}
-
 /*
  * This function forces the icache and prefetched instruction stream to
  * catch up with reality in two very specific cases:
diff --git a/arch/x86/include/asm/vdso/processor.h b/arch/x86/include/asm/vdso/processor.h
new file mode 100644
index 000000000000..57b1a7034c64
--- /dev/null
+++ b/arch/x86/include/asm/vdso/processor.h
@@ -0,0 +1,23 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/*
+ * Copyright (C) 2020 ARM Ltd.
+ */
+#ifndef __ASM_VDSO_PROCESSOR_H
+#define __ASM_VDSO_PROCESSOR_H
+
+#ifndef __ASSEMBLY__
+
+/* REP NOP (PAUSE) is a good thing to insert into busy-wait loops. */
+static __always_inline void rep_nop(void)
+{
+	asm volatile("rep; nop" ::: "memory");
+}
+
+static __always_inline void cpu_relax(void)
+{
+	rep_nop();
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200317122220.30393-24-vincenzo.frascino%40arm.com.
