Return-Path: <clang-built-linux+bncBCOYZDMZ6UMRBYGUV3ZQKGQE55YPLSA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13b.google.com (mail-lf1-x13b.google.com [IPv6:2a00:1450:4864:20::13b])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F120184B0B
	for <lists+clang-built-linux@lfdr.de>; Fri, 13 Mar 2020 16:44:33 +0100 (CET)
Received: by mail-lf1-x13b.google.com with SMTP id f3sf3422923lfm.14
        for <lists+clang-built-linux@lfdr.de>; Fri, 13 Mar 2020 08:44:33 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584114273; cv=pass;
        d=google.com; s=arc-20160816;
        b=F5Ln5Ng7WO2BBMb8kyuFDU0pX5WPxU3ViG8O4ngzH8OYXdE81Wse86jikQYA8oSmPD
         /cbZpg6wzESnyUqr7OCN7ypQbtnOLe9kjUAQ9VsZ5CPJ0rVuUwdjgbzcJeQxVFFI+JIj
         Ddg3DjCOtd5wozFG5PPlD0DxVE9N36chdFRh+1Jg4TGCTxqJt5yZz/44FIbr36VQiSh/
         DIo/Rz8q9gD8X9V7FD1K76mG/kfTbQmk+Bn03OMJQKCcVGP8jJGqDg8R2xqbQ0FBrhwj
         mk9JCGDD814FX3778/Vjk805sr0tI7HkctWA4RaWYQPDGkiJrISkaPOcKyxkOKRM6Fxd
         WA6w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=V3QsN2SGN+OdirtlFRqbt10J33Nfdi+5oFWnIasANlI=;
        b=ReMTiNBcEmq5TfLYnAafT0SqccoKEjGMZjNlPnpQKDn+N/YaqqCjx5gehzgdQeTpjj
         Vkzw2ZC43YjJXBbIObV9/IhISBVq0TqoSLAVxel0hjUqsuZD8Gv66dz+LAOKzo0Iq8kc
         oSZuXczNL2pH405kqoKj2qUjlrVf88fsetCF1B1Ks2QVSFFOvBzOATj9i41el7p/+a9c
         iG/mi0ru3dRY7nkPMcCSg4y0cOmToN/1MgJLjIl8lYgdSm6CiAHeJIdZIc2M9DWAlvsc
         MnzR/xEHyaMKtFRkRCHRW1+t4PHv1xGJYijJskvbbuU7Zci4N3XeuoODYd+gATYsDs9M
         6rWQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=V3QsN2SGN+OdirtlFRqbt10J33Nfdi+5oFWnIasANlI=;
        b=cfhA9EF/Zek4pWdKOJD6EJFoSVPRgNIq4qUbfucCgzk30zALUxYny26NHSqy9p8ZuJ
         eKcmwV/ogrvhvKbc67ZxjahzM/AUHK5yl8U/RwFOEe15tWaeuiWzZkNIhgVrq8hOlpUA
         TtocRsvElwjxfb36mwbu9smc0toNqdoQZBatS9/G37i4Tq9Cc1fCzLRWuFkBIgyJKc3w
         KLljCmB5VElDxcA2HfDNRqcRSeUvXIuXXiQz+6SzT32hqsoXgkbtQXXcWi2vgft6cjLJ
         QYDa+z/sAf/L/N/8upbOa7/2P2cIi8j6GS1y1N21+q0fH6k/5/hvCWny3SpeSPriFR3j
         FulQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=V3QsN2SGN+OdirtlFRqbt10J33Nfdi+5oFWnIasANlI=;
        b=rfmS534NGgsY7okP5LIz2HkvDzbsdwE2vp96RpXMiOCprnKgEbL3uGiNLV1wMNFGFJ
         3si5T8KL9V8cWyXqm1HQFdHde9F2RxQ6EU1Ny3Otl24a1H/Dz2nyDqmzwEhJypULcYWQ
         MkdiMXUjsT2XvvQB+hBP8VcH787ivmbdnVtCWATatEeeZa8uup7j43VU2vAy5ctgigeL
         qTsRfqiJci629huCW3n5nIY1zdr4AK9F/PdHn1BpIwYXQ2hsfxIWncA2DEX9RMmt4r9s
         BZzaTR1gD8aT15fwx110yEmD28m58CsoP/nKeCaRVeRsyBtKMR7fiTFG6NKV7/1J7NiS
         F73Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ3EHJBnL04iEqa5Yg3cj6UGz9cE1dGLRSTwVJuuhBZGgdbvdiEV
	bobJCbZuH0mxhAXMbQitYFM=
X-Google-Smtp-Source: ADFU+vuvoM69bOz5K9ubhEzFeBU/ccm0VZvPnWM08hZ7WW2oyOXkTHHnU01xyCiiqX6A2y+kmc7FMQ==
X-Received: by 2002:a2e:5304:: with SMTP id h4mr8616445ljb.75.1584114272788;
        Fri, 13 Mar 2020 08:44:32 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:804c:: with SMTP id p12ls661017ljg.5.gmail; Fri, 13 Mar
 2020 08:44:32 -0700 (PDT)
X-Received: by 2002:a2e:b701:: with SMTP id j1mr8829253ljo.6.1584114272128;
        Fri, 13 Mar 2020 08:44:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584114272; cv=none;
        d=google.com; s=arc-20160816;
        b=k19ZJezjl0ZfeynxRkUqYSbgIdVfUYuD6I4Zqf4K5805emqaT6c4GxumytdANE+vEJ
         gTszczpN0my/QEfHgNSLMSqH9/+CsrnM0gSb3BXUrlxKi/qKDwqyJxlOAEV+9rY8CUZt
         0ngiwlYxU4oMbZXDX86OgdVPm80qOGuQZCdfq7vm2ZvGO20i7pFNO2phVJU5jDFtwLtJ
         /LAga9JW1RSE7WAPBvxPDefo+zjon7R8KlT1ZX2YJOnrKaU1MI9UiNLRiZmJt5t+xNPP
         tTpntA9UUgl+6X8ysIoL4w3VGssTkHl2I4qruOyPWHnEmKAePjNkl1714zyRFt4AIPhB
         vODg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=ST6mJ/iSu2gnHY0i17K/GYIhkaqRLsdYAjmfAJ68+c4=;
        b=Q1M4t/bdQHFX4A5lK8b5JIiHBq+E2HkOn36ZlCdCb4OaYSab17lz2HculKmxIsRbJk
         ny1SbLDC3n+AAuK5OjyGG20z/oN3u75mNfNYnoCPkQaHkPO/7pZuB/aygT1LKjJiI2nq
         mYDHhvyj5nQTT+ZYzlrtMCEXiWEfT7kWcFcrilHjlcbWpS1Acq+nqa32PxJWGGQDBK57
         070sp7dP24tkcNai8P+dRNhuivzBnTS/hUYc3DPEofOSabLyYh6PEXDIW1OYceBLKt8l
         c/GhMym3UiGpxU28Si3WlVP1TSxJ7KQPLvbW15lju4204pe1FG207txE5YdYCQ6A0vnC
         zWZg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id o24si499122lji.4.2020.03.13.08.44.31
        for <clang-built-linux@googlegroups.com>;
        Fri, 13 Mar 2020 08:44:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 3B9DD1045;
	Fri, 13 Mar 2020 08:44:31 -0700 (PDT)
Received: from e119884-lin.cambridge.arm.com (e119884-lin.cambridge.arm.com [10.1.196.72])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 421D93F67D;
	Fri, 13 Mar 2020 08:44:28 -0700 (PDT)
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
Subject: [PATCH v3 08/26] linux/clocksource.h: Extract common header for vDSO
Date: Fri, 13 Mar 2020 15:43:27 +0000
Message-Id: <20200313154345.56760-9-vincenzo.frascino@arm.com>
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200313154345.56760-9-vincenzo.frascino%40arm.com.
