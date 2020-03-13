Return-Path: <clang-built-linux+bncBCOYZDMZ6UMRBZWUV3ZQKGQED5W2GSA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x438.google.com (mail-wr1-x438.google.com [IPv6:2a00:1450:4864:20::438])
	by mail.lfdr.de (Postfix) with ESMTPS id 26259184B11
	for <lists+clang-built-linux@lfdr.de>; Fri, 13 Mar 2020 16:44:39 +0100 (CET)
Received: by mail-wr1-x438.google.com with SMTP id x14sf4455770wrv.23
        for <lists+clang-built-linux@lfdr.de>; Fri, 13 Mar 2020 08:44:39 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584114279; cv=pass;
        d=google.com; s=arc-20160816;
        b=vvFqu2tYfNJYuNqLnlvAEFoWwRCF6X4kbe2KUWelcZrnbP6Dg7mJGRt6cIhSw4DvJ0
         str0GR9vI1KS7Bc2X7OpSnJHIHNloqgiA5MbQB8kOCk0R3PbC3NPipCZXfGIu6VNfko0
         NBV3Eqv+vC/RStbZnHjCAu+V9FBVVuAFCYf//oD4n4TKz7xkV5YwkUsB8p6y9OKqfNTo
         ARnhiadVudb3E27dLOmBvKSJ0AKZFe40e/OQaq6dSfuJ5v6iRG7FognRZ9xgl9g13UVJ
         /0aBAtjWnPLc7toZGJGPHH6NHlWdFcn3cscNd6NTeTZ7xzDzZh5en+32OHtAR8dgCOw9
         FwZQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=rOv7NXHowh5Do87WOjifl9kr4h/8aEuJCmvK/n+zYUw=;
        b=tKVPCa76vSwArkFL1+Sm5x1zaVWyLyo/5MZEquOz5j00zhDNNeH+6CYW9eNgK7ftcS
         C3gmUSjeWqtK69rGMisrylEOohTaDqOB6kwKhLHlLrNTZ44Rw7gYHW2B/m1+3iQa6HmV
         mbFR9lHWdanymF2NgB2yTyluSiRRpjg6R/YxQ3xAHDhqIveUxIdrDEBo0I1YPB8fVHtT
         yY3OguemaIOXxszx2GyKmiMDfiSI32WO3Q2+LdyCVOmQ8jPgs1GSQbK7/TT0n3zUVRaK
         RuRmOVedDH3M1ZIF6GcTS48ypyJKKJrAcThw04MPbvNUcIKWvP8fReJbOxlJhBipJjEz
         uzoQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=rOv7NXHowh5Do87WOjifl9kr4h/8aEuJCmvK/n+zYUw=;
        b=UCiwOBzOSFBvfxgOMru9beFl27sOJM65BCJ18ikZjGc8/j44sxhQ4M2NgIUwJ6J3LH
         roM3z+oXxOUde5OK326EFY260D8Ex28udH7XO32DuyhoyBbYnnl8cG46HzpsjlpNl8/K
         n/9cYg+GbTQAlHc+ys9xWu4vXWoMPbbj7IBT/ze/s9C57zWPIoHHCgK4FT5WgDBGpIk+
         g4sDAXV+Ld+iQy6WmdQLMdYQETm8FBld4g0xZsIBb1qDaBcwyri4z1llDHCWOU96/BBd
         3tZl/r2LaXJHV5CeH9Gjm7EhoNmStTwXCMq3QuJHZOqXm2xJtwd6kpC+45Q2D2WOtLfS
         jHdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=rOv7NXHowh5Do87WOjifl9kr4h/8aEuJCmvK/n+zYUw=;
        b=IDy5QrqDGmWH9BJ5teAlQ0l+FU4LfubKpSHNvU+th79GQ9/QVyMxauV9/sVJTRAhcw
         6/Ri4Mwar7/ehKd2IFDMCXUKUl7y3+ZCiBENk4fswI7naBRuY6bbZkE+WjLE/X60LpGC
         IRTVhqCxATXeiHizNGYrZ+Hdum91cSJy96/083G0WZxf9p7yimdCNZANzje2W/Dw+3xx
         uZX6d8Dzuv6soJaE0EP3jFpWuM6ZLBDxw/5DPLZv6pqn9MKqzMXJUFYry2nve7f5z5q8
         7h+aXR4vMhWIcjWbSPji7d4LvGYtoFY74kbRNVgSkJq6Zi5zzHBMk7qunvIz/Z4cEDlu
         1bog==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ1wD+mwYGg+6e2o5vheuTpXHUz3QrIPL3wvr2AxPER7l5iCFq9/
	Sp42j2r2MCxrRF/b9AI+mhA=
X-Google-Smtp-Source: ADFU+vtm66Z8l8nVFKJ3L9W8OmRqAhyEYrBx3PA90+ReU/gnUPRBxvEg62X4daP7yIIfx6xtuZ8UvA==
X-Received: by 2002:a05:600c:258c:: with SMTP id 12mr11918057wmh.140.1584114278785;
        Fri, 13 Mar 2020 08:44:38 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:82b7:: with SMTP id 52ls5118000wrc.1.gmail; Fri, 13 Mar
 2020 08:44:38 -0700 (PDT)
X-Received: by 2002:adf:f30d:: with SMTP id i13mr19287766wro.71.1584114278294;
        Fri, 13 Mar 2020 08:44:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584114278; cv=none;
        d=google.com; s=arc-20160816;
        b=00I85pTe4YsYziS2n3tkPeKIzrE20qpG+Xp7ER8j4GVJ6Zb6Q2Sh6SAQNIzDVGZhLY
         sU42lu02m65uixqCgdUZmp3yEotRZCVJcEEeF/Jmym9M6mItMAh0i3yVEnkpcRC0TQku
         fu2DdPMn29C+oMQ/YO6Kch4s/RC/LCCG+MyM5musQRDzyO2mITBhFZeKtIoGqwRPG7dS
         mVkkAYaL4RDr9YI5HOsdmXQbQbAypTrfMMByP9hr7V9Wm6UU3wni0tifpxdkjW2a8IlY
         eJEA99VxZGyQVDNuedGXaakNHyfLYM1Hr42ldmzcw4ST/nQZNTcBN4A8Dvlmm7PaNfqY
         tadg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=r7MQp9Yp9c27zQDo2jnhYH5VEGO3J90fS1j/2dFhDbg=;
        b=HLSfPjYTLpk6+tL1GkqwfJ6Q6VAngve1uJe2iPPrW+F8intWQoLWrO0dJQromKAfbD
         /PZy+sKj6K19BJYJFHnaJCEXhf4kkStIxfcwHqSnzvZ9ROxZTWGawYhQ3LgWPo4NnpT1
         7VzpLu7532N0mG8Z1TVANvEXgymo7KHYQp4zUJI01dKD9VorvMT+2OiUwmPbX2pl81bO
         tUVi1vQv3ejWmCvB/PvbE8IZuZozkAHei0I8Conz+a8X3h4lp3eubybiJmx7jL7Y+nlZ
         AIvSQ6ZNXBfxKbvR2OJsE+lbGuDASOJFsLAJKBdWWgB2Tp3t/ZfmeK1PzMibmqZKhC2w
         /Dpg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id c187si334919wme.1.2020.03.13.08.44.38
        for <clang-built-linux@googlegroups.com>;
        Fri, 13 Mar 2020 08:44:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 94C3FFEC;
	Fri, 13 Mar 2020 08:44:37 -0700 (PDT)
Received: from e119884-lin.cambridge.arm.com (e119884-lin.cambridge.arm.com [10.1.196.72])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 9F1EC3F67D;
	Fri, 13 Mar 2020 08:44:34 -0700 (PDT)
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
	Mark Rutland <Mark.Rutland@arm.com>
Subject: [PATCH v3 10/26] linux/time.h: Extract common header for vDSO
Date: Fri, 13 Mar 2020 15:43:29 +0000
Message-Id: <20200313154345.56760-11-vincenzo.frascino@arm.com>
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

Split time.h into linux and common headers to make the latter suitable
for inclusion in the vDSO library.

Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
---
 include/linux/time.h |  5 +----
 include/vdso/time.h  | 12 ++++++++++++
 2 files changed, 13 insertions(+), 4 deletions(-)
 create mode 100644 include/vdso/time.h

diff --git a/include/linux/time.h b/include/linux/time.h
index 8ef5e5cc9f57..4c325bf44ce0 100644
--- a/include/linux/time.h
+++ b/include/linux/time.h
@@ -111,9 +111,6 @@ static inline bool itimerspec64_valid(const struct itimerspec64 *its)
  */
 #define time_between32(t, l, h) ((u32)(h) - (u32)(l) >= (u32)(t) - (u32)(l))
 
-struct timens_offset {
-	s64	sec;
-	u64	nsec;
-};
+# include <vdso/time.h>
 
 #endif
diff --git a/include/vdso/time.h b/include/vdso/time.h
new file mode 100644
index 000000000000..739f53cd2949
--- /dev/null
+++ b/include/vdso/time.h
@@ -0,0 +1,12 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+#ifndef __VDSO_TIME_H
+#define __VDSO_TIME_H
+
+#include <uapi/linux/types.h>
+
+struct timens_offset {
+	s64	sec;
+	u64	nsec;
+};
+
+#endif /* __VDSO_TIME_H */
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200313154345.56760-11-vincenzo.frascino%40arm.com.
