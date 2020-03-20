Return-Path: <clang-built-linux+bncBCOYZDMZ6UMRBQNS2PZQKGQE7PDT7RY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33c.google.com (mail-wm1-x33c.google.com [IPv6:2a00:1450:4864:20::33c])
	by mail.lfdr.de (Postfix) with ESMTPS id EB9CA18D19A
	for <lists+clang-built-linux@lfdr.de>; Fri, 20 Mar 2020 15:54:57 +0100 (CET)
Received: by mail-wm1-x33c.google.com with SMTP id i24sf1897714wml.1
        for <lists+clang-built-linux@lfdr.de>; Fri, 20 Mar 2020 07:54:57 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584716097; cv=pass;
        d=google.com; s=arc-20160816;
        b=WcDPFssSAHh+Ow014BoyFkYXhi8sXsWPXudHdYczbklamucjENLJTSXJNIA7sS29AR
         RaC3IHRxmM5MV1CKMfW/m8u+NH706Dv210oq88jnzV96k2AD+AYNPnz4Y4TbhYBsYVnG
         K8f+kYu0a6Y9jgniPL8HQd0IFJe0chR1iuIRQG3keSbRZn98efXSFGIcsBP7yK2h+mge
         H4VjsgLLdM2CMct0k7MCwvDZu1Czm9VRZBgKM+rHyX2F7iCOJqgIUEsP1RzGm/uoMVFz
         zhoVs1sxEBLs4YEHYmLWHAuN0yigRhVxU9x5EUopPcUE/v1XEnYw2QuOUL/+/p0eXw9s
         c1Dg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=fpmveLokbFyflnLl6fzyG0lnGW1zU8wEJAKR5E9NA/M=;
        b=DGuSmaXQCtg4yOtjT0+mSzxEoUrqJuWF9Xs2JTMcaNPzLcLroVjLm0tU9AkP5iCkUn
         PRVjBLJn+frajznuxxOpe49K7L4yiZp355OpFQ3Drx0XMoymk11ci1l0krZZSE179Pa1
         t7bQ9R0hyAjhi1Q+myRXJZVP99UpjWxEXz6af8j/JyH94X7svMqSWM8gSA/Yx4waaQlf
         zJ5d/bPKLkNr/ChvmdafevlCG7S29g4dEtdEvHwpNjkMzeH+OHG7d306vaCx54R/+qR9
         u6PwBI9P7yLs0ylg6hldsKoSIy4Ev1aJlcYhJNMldy0dI7jxL4hqHbXOHj/4nWKseFEs
         Td9w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=fpmveLokbFyflnLl6fzyG0lnGW1zU8wEJAKR5E9NA/M=;
        b=TsOEXh/uI5KaqgP7TNvtCWdjZCAmZTDTUNSgyykSTxkGKq8zxZtDj9AQQ3y+w8lzHJ
         LmwYf6D4DipjsKMDYsdNplmQzF9ENitARHf0848l5BkpFpqFQ0Dq2yDtkSSzZ335/3Ry
         7GfLnTdARIwIRyOEy348F7tz0hObA0Vq7jBYmXAMyyObo4Id/euY1IkJSjT7QRK36Miy
         jgFdAoMmE+k6QJg1sW8EBvx58x9i7EzCXmQgn+GHu9dLNVDM+WGzq0+LBbtoKT5v9Ut8
         wdqRBONAQVk1ytVGfGdDbXzo20Mo1T/B4EggYvzOya9EgFJ54giZR0caBs1L1I6vDLQ8
         xrGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=fpmveLokbFyflnLl6fzyG0lnGW1zU8wEJAKR5E9NA/M=;
        b=ZaaTqHcmsY/N+d65csN98uEAGZoWW//C/j6FTDeFFVuuzvPqOPTfq/2PziwQeoxT0L
         NvfcLMJmO+DfWkCZb3i6bEA4vMIb7an1B0Brr6XBcEQMkRRY5ggpqlTyXHYUy0Nr3ngZ
         u80+zayhe0f5TauqP7+01bfFaD0w4MK08SpAzAVPjcC4t7nEILg09u6rAwmnX1jwQpXL
         nMZ4h18VFGx6EZ3Rlf3LsKdFMmj8Lh+V7dLPvgVmJtOY4WMz5A7JEoJBxZre2Om1YigY
         hdTiyrPMEYApKpZlu+3Tjga5yD0qG3sKE7CfYUJHqrZIiYK48RATlxDbXFiE/xUge+LJ
         axFw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ3Z6xdRHWiqAdV4rlqXwslGend86QfQMaBA0hMeHtdMz0Nds396
	WKkJJRhnHIEmJD+GIcJh8X4=
X-Google-Smtp-Source: ADFU+vtJKqt8y1kEXzLx9wyOE38sRX2vckSL2fGkDrcYuoQXKKZcQpfjHpI2/Em/LzfDOn0wYpus8g==
X-Received: by 2002:a5d:6703:: with SMTP id o3mr11115825wru.137.1584716097663;
        Fri, 20 Mar 2020 07:54:57 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:f3ca:: with SMTP id g10ls2627145wrp.11.gmail; Fri, 20
 Mar 2020 07:54:57 -0700 (PDT)
X-Received: by 2002:adf:a4d2:: with SMTP id h18mr11904977wrb.90.1584716097133;
        Fri, 20 Mar 2020 07:54:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584716097; cv=none;
        d=google.com; s=arc-20160816;
        b=F3NMP5GekV493+8KTEJUBmNpcwwJGl3tqMBoRzlJ+9rmTgO7OVBu4KzNwTKM4raK58
         ZJGcEaIRNHLktaSa4C5jaN1tR47oxYnRDP0cfe6ZFBDxyFtYBItMjQ9sTn/E+iQeCoJH
         zYTYEvvn1BbfMihfwx+VZ+k5JMwMZiKaIbsf/UZvdfOX9RqvmVndP/n+fff5thV89oMK
         HQAY8zF3taFqExOwyw+5NcKI5127dVnvm21sfhE7aRiDmb0G2QjdKP6mG7VDMqHW5bZF
         IeS6fCQ+NSsbh39Tj5+2kNj+IR/vP1Olg+KaqRyprGY5/ZEKx8qFpKmpkq9MRd0Lsrz7
         wwrg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=Dx+wjJ4+9xwzrR0AAlZwsSpZqOI1/jYeoZCyfIXTQw0=;
        b=Wp70+6Zx6ACQTYWOu9cScZm4gHidr1MxA5wN6P9cU1YY92+sNUgGp64rff0rZ3AtC0
         864KNox0+C4Y/pzu0d9ylsxk9NqS1O2a/CO6oL0AYYdj7fx2RgtZymWt8rlbItHWyZAA
         h4KS189hhUNAv9eoeKe1YNXN7G815cwA3KDXimeKQ5ZSjJ6529uBcn/+04RkJ1k94Azn
         Ic5BCXuQhA1icUZHb6tftJzq8mAf046W2Q355vuZgaOQWm3Ye1PDXIrmI3akEUj/IJ+J
         IjEiY+OV0ZZouK81D6NGemW5Pu0p+rfvIaOPqxUlAVWUmHoTJDFtuHqw2twIsKZrENS7
         jzfQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id x12si389802wmk.1.2020.03.20.07.54.56
        for <clang-built-linux@googlegroups.com>;
        Fri, 20 Mar 2020 07:54:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 6AEB47FA;
	Fri, 20 Mar 2020 07:54:56 -0700 (PDT)
Received: from e119884-lin.cambridge.arm.com (e119884-lin.cambridge.arm.com [10.1.196.72])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 75F393F792;
	Fri, 20 Mar 2020 07:54:53 -0700 (PDT)
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
To: linux-arch@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	linux-mips@vger.kernel.org,
	x86@kernel.org
Cc: Vincenzo Frascino <vincenzo.frascino@arm.com>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>,
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
Subject: [PATCH v5 04/26] x86:Introduce asm/vdso/clocksource.h
Date: Fri, 20 Mar 2020 14:53:29 +0000
Message-Id: <20200320145351.32292-5-vincenzo.frascino@arm.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200320145351.32292-1-vincenzo.frascino@arm.com>
References: <20200320145351.32292-1-vincenzo.frascino@arm.com>
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

Introduce asm/vdso/clocksource.h to contain all the arm64 specific
functions that are suitable for vDSO inclusion.

This header will be required by a future patch that will generalize
vdso/clocksource.h.

Cc: Thomas Gleixner <tglx@linutronix.de>
Cc: Andy Lutomirski <luto@kernel.org>
Cc: Ingo Molnar <mingo@redhat.com>
Cc: Borislav Petkov <bp@alien8.de>
Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
---
 arch/x86/include/asm/clocksource.h      |  5 +----
 arch/x86/include/asm/vdso/clocksource.h | 10 ++++++++++
 2 files changed, 11 insertions(+), 4 deletions(-)
 create mode 100644 arch/x86/include/asm/vdso/clocksource.h

diff --git a/arch/x86/include/asm/clocksource.h b/arch/x86/include/asm/clocksource.h
index d561db67f96d..dc9dc7b3911a 100644
--- a/arch/x86/include/asm/clocksource.h
+++ b/arch/x86/include/asm/clocksource.h
@@ -4,10 +4,7 @@
 #ifndef _ASM_X86_CLOCKSOURCE_H
 #define _ASM_X86_CLOCKSOURCE_H
 
-#define VDSO_ARCH_CLOCKMODES	\
-	VDSO_CLOCKMODE_TSC,	\
-	VDSO_CLOCKMODE_PVCLOCK,	\
-	VDSO_CLOCKMODE_HVCLOCK
+#include <asm/vdso/clocksource.h>
 
 extern unsigned int vclocks_used;
 
diff --git a/arch/x86/include/asm/vdso/clocksource.h b/arch/x86/include/asm/vdso/clocksource.h
new file mode 100644
index 000000000000..119ac8612d89
--- /dev/null
+++ b/arch/x86/include/asm/vdso/clocksource.h
@@ -0,0 +1,10 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+#ifndef __ASM_VDSO_CLOCKSOURCE_H
+#define __ASM_VDSO_CLOCKSOURCE_H
+
+#define VDSO_ARCH_CLOCKMODES	\
+	VDSO_CLOCKMODE_TSC,	\
+	VDSO_CLOCKMODE_PVCLOCK,	\
+	VDSO_CLOCKMODE_HVCLOCK
+
+#endif /* __ASM_VDSO_CLOCKSOURCE_H */
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200320145351.32292-5-vincenzo.frascino%40arm.com.
