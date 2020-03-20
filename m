Return-Path: <clang-built-linux+bncBCOYZDMZ6UMRBRFS2PZQKGQESE3FOMY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43d.google.com (mail-wr1-x43d.google.com [IPv6:2a00:1450:4864:20::43d])
	by mail.lfdr.de (Postfix) with ESMTPS id 4670018D19B
	for <lists+clang-built-linux@lfdr.de>; Fri, 20 Mar 2020 15:55:01 +0100 (CET)
Received: by mail-wr1-x43d.google.com with SMTP id c6sf2728773wrm.18
        for <lists+clang-built-linux@lfdr.de>; Fri, 20 Mar 2020 07:55:01 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584716101; cv=pass;
        d=google.com; s=arc-20160816;
        b=x7WO3euWaHohsXKNXRTHdzvpeiNckIUj34uWpiyJ0Lk0uzz4llOcrnS7/gmnevF9Cz
         vZLxNZZcWFye1o3lNq2akhmp052gX1lY/0SlY0xtxAzgGKc3ZpcdyH/OH7N4l4QWatS7
         YUeekSuFQfiP37IhWegNUyK+0H+6k2m5Md0cyiic3/MnGebGHaqqSZY2GJYavNdeFzZ1
         2q2FphXATZiXW5jVKLjpb636pwNjS6dGytoqIgou3IIpBBnYNSj+wCeO5Kw08Z2JVP9C
         qvCnk+x1EII65J0/cJA2pyrxMZiRA7zmZXN0zF+N6mBxudsG4Fke61a5/ewbGqJKTEYi
         8leA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=UtJxCYqJgRZH+6CnU+EAcrjMo9apX/uNAJfcLCGD0Fk=;
        b=scaLwe1UN+f9ZCs1eM69E4gp2U/R1fLfWRZey3jN40hwltFBJjRsa+uTg1kwBjIztp
         iszqn3GsKqXz5waPJshf1k1DM+WKfb1r1hw1n80i2FtbWNF6tp1SYrqkOiHdZr4iQnQt
         SVBy6T7cEXYnTHCpkUJ7j7i+5oOsxWDIuuZSYpyiZnc79gK/NYTRUdL9P5Tc3RDHcz1u
         z1hnX0QQr+FSBYsIiuNX0rpANPOcbXW3QqNrY9qGOR89Z7+Cnf+MxtFd/LIT0Ej4qklC
         xaLh5uNNvKU2RUTwGx67QuSFkiP6qScvoFAYQJCEKlHVDFTXR0fEAgYwJbVI6yqHhZ+Y
         Zl0w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=UtJxCYqJgRZH+6CnU+EAcrjMo9apX/uNAJfcLCGD0Fk=;
        b=KV98Dx6pSMpDtGgju/va5KpWZZ/De4m46XodiJ/Ez+jvsjQIBiHgQkttcbqOt8pyWH
         O7GN2j+5XlAry64O6CVv35QoTqp+rNU+Erv3SKrz0KYw1MV7cwwJJoDnMfeYqIftiiKy
         8Y/IXJyIVFMjn1rmMQi7AJ4pLypt915cUXcit7smSldPOYgCEUPl3++Mp4VPB9t8ewu1
         b8p5Zg+0iBzTakh93/E3xSCkvw2Ixdy7ofZgEqvsQaruddaGRRdD4BzvxR9BSIigqFav
         ThfrbSladqe3bcJpmMLpJfi/rCHZuY5XOyxNfphw8DrUONvsh49hwLU18nDu7VazyREX
         6tfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=UtJxCYqJgRZH+6CnU+EAcrjMo9apX/uNAJfcLCGD0Fk=;
        b=qBIrQ9/PCjWkDIgNfW50MRiDrFocZcFYni7dkIXbr1KWa/MiQLFB9mHzY/Ims0xlvE
         68V+0n3vHOyRo8SNO7IW94UaFJsHNwV0mra0c3gT9fsbdgxOJeYhZees/4txxMH7hP+0
         wW6mVMdB4k8K7HiKC1r5szJvUWsJsm8RuM+B9kdFR1hRk/fvtbRkztggRahfzkqz8QY7
         bGTngXIHreWqjvPfe96X88CJ3mpp0PlP30vbCbA3KJPJBsTEsdE40TkYIpYTDoYvMm4Z
         jjmX8+r4NmHHnMqjwSY7wfab4N1nx0f31eWIfuh6xvRYYERahK7ZNsc+T0f5jCC0fXQm
         EF9w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ0ZBxxifhVMjQdtSd8UT5UnY80RtEGhNhu32uT0+DrW6L8ntIWZ
	J/ukz6hUmwgQr/zAowPR+WU=
X-Google-Smtp-Source: ADFU+vvjqjlTZ6qky1axa/6UF+8ow5QlmfcXZ0Q9FVonaoXEjhb2UVvpD6kSGrQu8D7Wk7BP6E2FvA==
X-Received: by 2002:adf:e28b:: with SMTP id v11mr12250297wri.229.1584716100893;
        Fri, 20 Mar 2020 07:55:00 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:fd03:: with SMTP id e3ls199211wrr.0.gmail; Fri, 20 Mar
 2020 07:55:00 -0700 (PDT)
X-Received: by 2002:adf:cf04:: with SMTP id o4mr12360935wrj.347.1584716100331;
        Fri, 20 Mar 2020 07:55:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584716100; cv=none;
        d=google.com; s=arc-20160816;
        b=PC9hzCDkNqFtq1LTiO+uLSQhOf5CqrrW4OXBlH8VZCrh9dfhMEHRlUiEibkHNXzrYY
         tCxY78+pIi5Ta5kt4AiLdlltJG6ee9pfU9TtOitke+acJxN6Rp33R/jO7CfyEWrkRluN
         pslgyeua+objGXGazEdmfvuX0cbNV9J8/l8uJZa6OcAIP2OIB+XmBpiZIBceRivb6Rs3
         h1bDZiAa0/aeXTKQRBu0ayHeYW4aqQcStc4bJCLcf68tsmSX7tLoKh7mzB/P1XaIaWO3
         zgcYyJA60Y1JaPp4UsxcSAUOKYuQfIMT8bQgsKyVMJntSPZZjDd/vFq8EeZ5dUft/mjB
         wI2A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=1WM9EoxYxTtSoWQuHspgjpvw9pdyQ8zXeKkIqzf+WUY=;
        b=H1M5IfUGhDOOpn2MygHcbEBoml904yjVArxfo2XD1nGtcKkKwEPc8W5ZK73HAM0HBG
         8YR/63ZLNx10I85M0xhLoQI5QRkQ5m2MYAidScMw/s0h6EopOmkvsarmy/u+4Dc9Db1y
         DzClmtR3Z38gbV8nsB1eFaHo/MdWA+dIMsZ5dDK1M6g2ZgWYFOON+wkC91oXCTrC3kWj
         OH7Uy5BC8LdZFG/KQBFNcveYZOPx1u14YUtHAlD5ow+wpqAj5T14ZoU34tOlFXWTU43y
         OKuNpWPWtPJTEunnSFygNWRsxnyoLL1+1K3kzRP9rGtrxS5HfveBsBi5YAdUr8fkxosI
         aaWg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id n9si272539wmi.0.2020.03.20.07.55.00
        for <clang-built-linux@googlegroups.com>;
        Fri, 20 Mar 2020 07:55:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 96F66FEC;
	Fri, 20 Mar 2020 07:54:59 -0700 (PDT)
Received: from e119884-lin.cambridge.arm.com (e119884-lin.cambridge.arm.com [10.1.196.72])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id A0EAF3F792;
	Fri, 20 Mar 2020 07:54:56 -0700 (PDT)
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
Subject: [PATCH v5 05/26] arm: Introduce asm/vdso/clocksource.h
Date: Fri, 20 Mar 2020 14:53:30 +0000
Message-Id: <20200320145351.32292-6-vincenzo.frascino@arm.com>
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

Cc: Russell King <linux@armlinux.org.uk>
Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
---
 arch/arm/include/asm/clocksource.h      | 6 +++---
 arch/arm/include/asm/vdso/clocksource.h | 8 ++++++++
 2 files changed, 11 insertions(+), 3 deletions(-)
 create mode 100644 arch/arm/include/asm/vdso/clocksource.h

diff --git a/arch/arm/include/asm/clocksource.h b/arch/arm/include/asm/clocksource.h
index 73beb7f131de..13651c731a81 100644
--- a/arch/arm/include/asm/clocksource.h
+++ b/arch/arm/include/asm/clocksource.h
@@ -1,7 +1,7 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 #ifndef _ASM_CLOCKSOURCE_H
 #define _ASM_CLOCKSOURCE_H
 
-#define VDSO_ARCH_CLOCKMODES	\
-	VDSO_CLOCKMODE_ARCHTIMER
+#include <asm/vdso/clocksource.h>
 
-#endif
+#endif /* _ASM_CLOCKSOURCE_H */
diff --git a/arch/arm/include/asm/vdso/clocksource.h b/arch/arm/include/asm/vdso/clocksource.h
new file mode 100644
index 000000000000..50c0b19fb755
--- /dev/null
+++ b/arch/arm/include/asm/vdso/clocksource.h
@@ -0,0 +1,8 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+#ifndef __ASM_VDSOCLOCKSOURCE_H
+#define __ASM_VDSOCLOCKSOURCE_H
+
+#define VDSO_ARCH_CLOCKMODES	\
+	VDSO_CLOCKMODE_ARCHTIMER
+
+#endif /* __ASM_VDSOCLOCKSOURCE_H */
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200320145351.32292-6-vincenzo.frascino%40arm.com.
