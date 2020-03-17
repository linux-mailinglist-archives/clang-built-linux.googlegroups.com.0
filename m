Return-Path: <clang-built-linux+bncBCOYZDMZ6UMRBH4CYPZQKGQETG2ZMAQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53b.google.com (mail-ed1-x53b.google.com [IPv6:2a00:1450:4864:20::53b])
	by mail.lfdr.de (Postfix) with ESMTPS id B50CB18838F
	for <lists+clang-built-linux@lfdr.de>; Tue, 17 Mar 2020 13:22:58 +0100 (CET)
Received: by mail-ed1-x53b.google.com with SMTP id n11sf18114858edi.5
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Mar 2020 05:22:58 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584447776; cv=pass;
        d=google.com; s=arc-20160816;
        b=VeknQBSpiOCB6YmRb2DW76uBQ4cMa6SkXkEhBC5wJgK7vp+QMTyIPWHnriH6kdLh3T
         ValA4P3Ct8waSOFjVytcBXHt2ydAxW45jx3mKU/cNJyKoM35h6/qHzFOz0nmHinxIK2R
         ECFud7f0LHNS8dT7913wLhl33lmk2FvdtlJtQpvL6VX9ptou6piBHPyTuFDniWcJipVw
         8kI2ay5bq5JhYB0RPWzrwCs/JqroB7rRV26DDn2sDW7bd78hbXJFvCx+piFf+XtJQRGH
         hgcu7UQMvpO8WW2jCJLxgw+XVwkSKCFL8alxmp3Wg2oX7orntFYk426+q2w8gSGmW/3C
         kljw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=5Z8QVx7wVFsIug47rMSC31mM5MiXVyqitwskd/VBTYw=;
        b=II4XktyLREKr2jX0VBnQYnggXHQSX0++LVYPsRfHWTXDFnwfc0ILCiKRfABTR654Yb
         8MAPn+5ab6mzf9FDwpY7OeD9aJ4ixHgGCssG7rOPmSnjbpATBIbGMRJEtVh6EiGkIZDZ
         CX+1wWPSdEolO+9wxVkOBrFxaGoIsAgqHyUXSTs3K9hMGBVuaCSkuZKoYFlmLiTJbBZ5
         W5INMbaZ9NeKd1eO+ZfG2eEo8gr+EDY949FfBo1IzTQ2YiK+RWDRuZ6hwhl4pmy88XXd
         YNhUyfVHbomUtX2iiSCxNmRVBSlYhQ3WTb31oOo/WQKPmTLFgRnpGM0GHRqC6ONLus5U
         6NOg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5Z8QVx7wVFsIug47rMSC31mM5MiXVyqitwskd/VBTYw=;
        b=OCqgJ3EgTlzkc1SDoHENTgMbYONwNL7fyx1c1muckG4EKNdgVcIigu9KjetFMeR84m
         vC7A2L+7FlNJIIMB8k4KjPjGpHpST7uwJAdYKO7zAjzpnl/vADGWVErAQc83m6aAkvyw
         1G0cbidWu1lM/8o8z6FvNVLWgveHlAuCAB31NGeRvJwBf7J+z1FGFz+zWkrTXqHAcqov
         YbC/EP99R+L4wcBxY3JxarotugkTOH2uHbCKNmDBVH8H554K8QJr4E83TKxScUWRBnlB
         xNvoQrTFJf7gZzezGZEBscFV5Q0Yy03gtYXZcDb7crKs+JVgNRaRlphMzenpy/Zj0C4i
         xFOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5Z8QVx7wVFsIug47rMSC31mM5MiXVyqitwskd/VBTYw=;
        b=cdsOlfW9p4j/3uz/2frD+6E+X3Slv8uOSTgfAIs1trk8wLcNA6eeKNBl+Jpjw4c2jN
         PAHHGZ5zrQX6XEM0MzOvsuI9tfBGrbMk32fwQCh6waGPuqds/S9K5OuWF4Kf4QlZeFJo
         DWYd8PnZkE/AFILGRcJbmluLANh7DsSgFG698xku15ORLDo5viTK1272ReNcIyicmKyR
         udShtjw3M7IhvwxY/6whMAPHJTz6C9+k+gQnR5pD4ovusyv3x32/gzAnsJUgqDHvjca7
         loexM8rga7/a3U+XQIJvXt1Kwrf/KndAyn7Nfhel+mrjKu69xhZ9f7fpB2iJ2RVeZeP2
         sQ0g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ3G3sZqUF8YUWKWeJCP/03e5B4V/FaKFvbYNGaGvC9m4FQ9Ll2q
	4DZBH0HirXS76iGMWa3YTh8=
X-Google-Smtp-Source: ADFU+vtUPWWbXIoJ5LXYpS6Um4tKz2N2PPRLEua8P9qf5Jios/2wIDzhVBx7X3wDI8EOpaQ+18tKrg==
X-Received: by 2002:a17:906:2ccc:: with SMTP id r12mr3924993ejr.47.1584447776012;
        Tue, 17 Mar 2020 05:22:56 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6402:1599:: with SMTP id c25ls6013604edv.4.gmail; Tue,
 17 Mar 2020 05:22:55 -0700 (PDT)
X-Received: by 2002:a50:ec0b:: with SMTP id g11mr5001888edr.80.1584447775405;
        Tue, 17 Mar 2020 05:22:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584447775; cv=none;
        d=google.com; s=arc-20160816;
        b=NaCRv+61xhvx3yqiVq0Zlv56l/rJu9SY+rT3Y31ft5ENutPHyaYVuZe7N6jEq+65f0
         ys9CR+7ZROHad3iMI63/1dOBvCJ4mbPkGoU2RHJX3zl1Quk3w5AYjOR7n7li6CByntA2
         nqxZSqV73em6b9IGouGwujzkNsAbrQHoBFxTCzxbfXy0DkjLi/b5zklulE5zxunTtWln
         AE1TBUJmm64aZaQtAxDpHwFd5AJh4OTTQcSbjWIdU4pGFWDk9oVUP3iy4xgN2EpUtnk7
         mYE8tWeVRbRE54nXsLSwcRgLa3of3bQc3LxHfOYEuRPUAXMs3kFWZbkD4OiB0EkRiOKE
         CJrA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=hbBdOMcOoGVZnI7i4EdDHPgNDXaaMUaqBdtSZONOpGE=;
        b=wqa9IjTOvKjNUFd+ld1/bLqGfvaIxIhPvUdt/lfl2/e6149HUCgONGbJuxh8hIMm8d
         DAt3iojYwHGpaWvwJEairEG3jjuwZ+58k33LZ5o9zfXhImu/BSmffnt6bK7UoZeKCg+u
         oDYLQuC3IVPN1LEd7dvW7+ygsmTA1Vwm7XoD/g5EQZNEP8QsoZ/OjWd6kOmOJ/Vk4n2E
         /hoRTOMNJTrHEs+BcXcRUD7cRXkoUAKHlGKYuU384cuhzqK336yN32i9VRmJnhAG2foR
         1OdFnB+gvJBJbYqDqob0C19RyMyswGpU7iKHa7KxGZQDCsjAlDMpiT2mcugbVgGkbLkB
         5sJg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id dc25si139953ejb.1.2020.03.17.05.22.55
        for <clang-built-linux@googlegroups.com>;
        Tue, 17 Mar 2020 05:22:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id BBA71FEC;
	Tue, 17 Mar 2020 05:22:54 -0700 (PDT)
Received: from e119884-lin.cambridge.arm.com (e119884-lin.cambridge.arm.com [10.1.196.72])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id C69383F534;
	Tue, 17 Mar 2020 05:22:51 -0700 (PDT)
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
Subject: [PATCH v4 01/26] linux/const.h: Extract common header for vDSO
Date: Tue, 17 Mar 2020 12:21:55 +0000
Message-Id: <20200317122220.30393-2-vincenzo.frascino@arm.com>
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

Split const.h into linux and common headers to make the latter suitable
for inclusion in the vDSO library.

Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
---
 include/linux/const.h |  5 +----
 include/vdso/const.h  | 10 ++++++++++
 2 files changed, 11 insertions(+), 4 deletions(-)
 create mode 100644 include/vdso/const.h

diff --git a/include/linux/const.h b/include/linux/const.h
index 7b55a55f5911..81b8aae5a855 100644
--- a/include/linux/const.h
+++ b/include/linux/const.h
@@ -1,9 +1,6 @@
 #ifndef _LINUX_CONST_H
 #define _LINUX_CONST_H
 
-#include <uapi/linux/const.h>
-
-#define UL(x)		(_UL(x))
-#define ULL(x)		(_ULL(x))
+#include <vdso/const.h>
 
 #endif /* _LINUX_CONST_H */
diff --git a/include/vdso/const.h b/include/vdso/const.h
new file mode 100644
index 000000000000..94b385ad438d
--- /dev/null
+++ b/include/vdso/const.h
@@ -0,0 +1,10 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+#ifndef __VDSO_CONST_H
+#define __VDSO_CONST_H
+
+#include <uapi/linux/const.h>
+
+#define UL(x)		(_UL(x))
+#define ULL(x)		(_ULL(x))
+
+#endif /* __VDSO_CONST_H */
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200317122220.30393-2-vincenzo.frascino%40arm.com.
