Return-Path: <clang-built-linux+bncBCOYZDMZ6UMRBTVS2PZQKGQENO433DI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33e.google.com (mail-wm1-x33e.google.com [IPv6:2a00:1450:4864:20::33e])
	by mail.lfdr.de (Postfix) with ESMTPS id C356318D1A6
	for <lists+clang-built-linux@lfdr.de>; Fri, 20 Mar 2020 15:55:10 +0100 (CET)
Received: by mail-wm1-x33e.google.com with SMTP id a11sf2464523wmm.9
        for <lists+clang-built-linux@lfdr.de>; Fri, 20 Mar 2020 07:55:10 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584716110; cv=pass;
        d=google.com; s=arc-20160816;
        b=ypwfCOz4/mpmAwLjeLty6/ozYuZF8mur/qDo20OoOC1XKc6nBkvc7R1iMuclMgVdTn
         9rPNs01tN57IGLEwpc4KA68EbLTYaBY36Z3IzbvfnIzWLdwBxWtTtz8KqkdudeMk1C5X
         JBp5+X1SXWuoaey1ekbmIbFJsYxtsJdOuLTZ22a6RlXQokFCV9iz45a8NOfoOqQHhc2O
         +IJLDaiExt2i5A2rNCkOhu9q18coQUzhrXGcyqnHRqY4IxjovK1kQV0Wmqfy0sXFVXQY
         ToPbH7bI6841Lb7jYqn+fK+9wJeZnMxV5NGvBbXE5C+EP7Yf0JicAk3hhZ2zB6Xkwbha
         fv9w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=Uc7C7MIBeFcIGiDyFxYbaakueq5HWqHnf28lYOSJNjY=;
        b=J5WaWoftvBbPCOpFO7VPgzZTGEHT83egatyN4eHGBm3nWauSL6sHqMdDLcQKdSIT4M
         nZBCIyTkoyCRDO4tpd0AV4AnSf7Ja81FsLmKByKS0eJGu6Tq1ux28nHbPytjmaweGnHl
         8R+HhsEwiHbabhUgx6wNdpDCpCy/vr5Ir1qZcnpFsnxWlI8eLGXuoRU3v7yxuNGvUfOz
         IFbxy9oFZ4d50pyFUbZXnztrpiLBs/73OgBN4eux4ow8N1zMHzMjuzCCcZQm2JD4jElc
         eOEfhMV0svBBWpNcDWD/m48bZREeNEQmuXc37q3SQpI4ZsWD+7JwN91a3kSnHF6eMmgj
         FOBg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Uc7C7MIBeFcIGiDyFxYbaakueq5HWqHnf28lYOSJNjY=;
        b=HXhrWgypAJLn6G7DCZnbd3bCjArwXAP/wu1huOvr98eV8l3n5Ko4+qaMDM4TyUPm8g
         v2Xr/HtNeB+GUwWDj6WfJH6Hlw/N8m2BInzE2a+h844zTpwhxL/iEsnfd91yrRkyJ221
         +sBNL22AKa6hSKzuR+NJf2qbrvIcG3MA+JmNBDEgwqANcCKtR3lRjWWGJ3ml4V4UJA12
         ac1ZhT8DIEA+hQtCitThmuVS3lcbMLY/ltjTQvamUKVbhSZ1msk+3r8l4UWcwYFeKGxi
         nzbtOexvJ6k8jDFlA554MytXx8C+q/FSEPkSylxnghAENcJruLHvZKNZkIiS/ftsh6LU
         LF7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Uc7C7MIBeFcIGiDyFxYbaakueq5HWqHnf28lYOSJNjY=;
        b=MbBC0x7yaxUamKcHrG7NT5khFDf7QhouYWCJVmyG63NcDjbnih51sEm4sIlxuK/XNF
         RtTSIUj9VDtA1QAXjmfwSsx4PXyCO5zR5FnjUA/XSXoMXiMJEytxNuNXCa+Yy0ZnOcVf
         bB+7mFTLrL80JO0wVTEDv+cGPoUjWgOoc80Al8OXHGVxltWVUIsd6M3sQAz4N7Vly3Nn
         KRfoJ4Siuw3VYx278lmvwo2aEEZB6QDmd3SydQNNr/qetMXrl6cxGv0Ttr6joYZcjNgm
         hjkrXOyBEZjtuzzN9xgf6O0NuElKNwoV3A59mfSxUQKo0w+lmAxBCFiVHb+ekcEwJHSf
         bvaQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ2v2MTk4PI6+Ht1l6BO8zeqeUpmLDlZcbe4n0ZraQEBnW0zXmQh
	dERBcnMG/5T+nDLXTY8vfwY=
X-Google-Smtp-Source: ADFU+vugSSdnSoEUuhIsETTvs1gRu2h2qFumAo6VfOFPJtibBxnBmVXaDW2B7XgN2KwFYsYeuRdMkA==
X-Received: by 2002:a05:6000:370:: with SMTP id f16mr11854837wrf.9.1584716110496;
        Fri, 20 Mar 2020 07:55:10 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:600c:2250:: with SMTP id a16ls3069840wmm.3.canary-gmail;
 Fri, 20 Mar 2020 07:55:10 -0700 (PDT)
X-Received: by 2002:a1c:e1c3:: with SMTP id y186mr10982037wmg.151.1584716109979;
        Fri, 20 Mar 2020 07:55:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584716109; cv=none;
        d=google.com; s=arc-20160816;
        b=iCT77a8PLH9nzsifbLct3xMXevspFjbg6UScbQEjiSR6uQW5OJdXCO++nl7FdQjc4f
         nqpMVDL3cDsN1T65/CVJJbKqwPtRBWEO+Io/tHiD1naG5ORWdOVyQkyFusynNO9IabLo
         b8OcRi1hTkEyhgNedj3irRTiW1QJ4Abayx36xFvUZc/VJRpcRKmwvgFeJCYv5MAhx43o
         Yzz5xy9qUlEvtxuKiSyEUHC7LPG6T/MtFkW4Ir5O1cEtWM6XHKpEEJ0dJ94LFNwnOthe
         LMdzeOBVRDJB6thvloP7t5oX6ECzvUMvOoS4YhKVO8iRoWD/yU+seLtjXb81qjp9zdfQ
         yl4w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=ST6mJ/iSu2gnHY0i17K/GYIhkaqRLsdYAjmfAJ68+c4=;
        b=EP3yu8AC1f+Hdr8KAxJAxAI12rC5Ze/pPICY7grQJye1lPVT4ttl4IpSqlKnbNxJnv
         MdU0jyIzrG0tL/bCnKScUcG2vgPRFIYJ5MxoZMpk57a+DlBkV2hAaHDJVMw6FB9MtogA
         5aqkdBxO5o4DCDdSDalrE0TVwkK1dGY5UcwvD/eWQ3H/P45C4B54KnAWCff+T7YNfEIt
         4V+KGruuf8xhzB/pGGENgcPPOoYUXZ027YYZOmryLoUp1Hx2zi9cOu8OsO+kh2Nd0s5l
         BDhihljGQZsAVqOKpIt5GzCY65I1QiLVvR/y8tbvYCgvZacK4oup4KxNpNaNd4I3MGe4
         0mbQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id l13si283109wrp.2.2020.03.20.07.55.09
        for <clang-built-linux@googlegroups.com>;
        Fri, 20 Mar 2020 07:55:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 48B22FEC;
	Fri, 20 Mar 2020 07:55:09 -0700 (PDT)
Received: from e119884-lin.cambridge.arm.com (e119884-lin.cambridge.arm.com [10.1.196.72])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 510D33F792;
	Fri, 20 Mar 2020 07:55:06 -0700 (PDT)
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
Subject: [PATCH v5 08/26] linux/clocksource.h: Extract common header for vDSO
Date: Fri, 20 Mar 2020 14:53:33 +0000
Message-Id: <20200320145351.32292-9-vincenzo.frascino@arm.com>
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

Split clocksource.h into linux and common headers to make the latter
suitable for inclusion in the vDSO library.

Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
---
 include/linux/clocksource.h | 11 +----------
 include/vdso/clocksource.h  | 23 +++++++++++++++++++++++
 2 files changed, 24 insertions(+), 10 deletions(-)
 create mode 100644 include/vdso/clocksource.h

diff --git a/include/linux/clocksource.h b/include/linux/clocksource.h
index 02e3282719bd..86d143db6523 100644
--- a/include/linux/clocksource.h
+++ b/include/linux/clocksource.h
@@ -28,16 +28,7 @@ struct module;
 #include <asm/clocksource.h>
 #endif
 
-enum vdso_clock_mode {
-	VDSO_CLOCKMODE_NONE,
-#ifdef CONFIG_GENERIC_GETTIMEOFDAY
-	VDSO_ARCH_CLOCKMODES,
-#endif
-	VDSO_CLOCKMODE_MAX,
-
-	/* Indicator for time namespace VDSO */
-	VDSO_CLOCKMODE_TIMENS = INT_MAX
-};
+#include <vdso/clocksource.h>
 
 /**
  * struct clocksource - hardware abstraction for a free running counter
diff --git a/include/vdso/clocksource.h b/include/vdso/clocksource.h
new file mode 100644
index 000000000000..ab58330e4e5d
--- /dev/null
+++ b/include/vdso/clocksource.h
@@ -0,0 +1,23 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+#ifndef __VDSO_CLOCKSOURCE_H
+#define __VDSO_CLOCKSOURCE_H
+
+#include <vdso/limits.h>
+
+#if defined(CONFIG_ARCH_CLOCKSOURCE_DATA) || \
+	defined(CONFIG_GENERIC_GETTIMEOFDAY)
+#include <asm/vdso/clocksource.h>
+#endif /* CONFIG_ARCH_CLOCKSOURCE_DATA || CONFIG_GENERIC_GETTIMEOFDAY */
+
+enum vdso_clock_mode {
+	VDSO_CLOCKMODE_NONE,
+#ifdef CONFIG_GENERIC_GETTIMEOFDAY
+	VDSO_ARCH_CLOCKMODES,
+#endif
+	VDSO_CLOCKMODE_MAX,
+
+	/* Indicator for time namespace VDSO */
+	VDSO_CLOCKMODE_TIMENS = INT_MAX
+};
+
+#endif /* __VDSO_CLOCKSOURCE_H */
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200320145351.32292-9-vincenzo.frascino%40arm.com.
