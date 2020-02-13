Return-Path: <clang-built-linux+bncBCOYZDMZ6UMRBHPNSXZAKGQECEGARUQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x339.google.com (mail-wm1-x339.google.com [IPv6:2a00:1450:4864:20::339])
	by mail.lfdr.de (Postfix) with ESMTPS id 2388A15C7B1
	for <lists+clang-built-linux@lfdr.de>; Thu, 13 Feb 2020 17:17:34 +0100 (CET)
Received: by mail-wm1-x339.google.com with SMTP id y125sf24394wmg.1
        for <lists+clang-built-linux@lfdr.de>; Thu, 13 Feb 2020 08:17:34 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1581610654; cv=pass;
        d=google.com; s=arc-20160816;
        b=oSvsZKDDYl8z9m/VJToUYqvT24uTDf6KG6+fXpk+Tn79hoO8v4Qo2S9ZOZLSDry8i5
         P5rIJ5X0hja3VQNIO3Uky3MLn57nIR5SUQan+QauLb5lqm9NUmqSCJw/M3xdfK1pQZPg
         2YAncZl30tWyvWW0Q9PMoI9qzCuhj0k97fx6hC19LRb3rC8tFSZ0GTVM3cN5uQO4z07M
         eMEVFjcm93mld2PrmvAfJIF9V1wIM7V04SWN1qlJBhBGufYYxtI5wN36+aZLJOruOnvc
         A5mMPjdqEQ2fogsvUkAD6uDTVCLs8zlWbdDeUj4oOF3tKH934pgtzequ69tXzBQk4pce
         I36g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=+qf+xXSc3FbgMgxRKhxCJEDk2MsCDDmd7qltqbtbff4=;
        b=zCxoWI+eQoBLllMAhZ1i7HRLKEuwCSsPo9pXRqFJws3IqgFbXTVO5bjPiPSOAUkdNM
         I+F4aNPFKbyoypb2LEOKTYcSENWcxdXIKFJBdQZMr4B+m4gT3ugK4D6/jvN9fyWe4tdL
         aAQHF7hlcweb+WdpPjHI/MDq10NEcnnC6lwLuSAQ79ony0J/eKrkxrgsJJelUgjjKOHJ
         Gg35whnQe3up2eFWMrPK/T0po0Xj3evn0QkJGRI0g2tXyNpJlRuD8Fc2bEtbJv5Bp9Ko
         9gWwvpenVeuIGPb1Ju6kqWoaawKkcRu9fZBZRDcbIZvU5e95WJmeYy4FY2OhiVTW5WTW
         8Rqw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+qf+xXSc3FbgMgxRKhxCJEDk2MsCDDmd7qltqbtbff4=;
        b=cFfJglf6ZFanNoZS2qq4Vw8xPK+eBnpZZKdL0cqtSUQKeWvvXsN3Orhqjnus4VSHb7
         D9mgnjw26kwEjt3wDO5ZZAqkm29gRCb2S4YqENg4klnIg0AaHjs4liMtJap9Dz3VZ6dD
         xBvyfPpf8MxkNWu4oYHlFzrsM8FoZdrVh2Sd2/tMeZICJEM+Ppat/ybjHaE60HP9xyQc
         nTcyTM7UgjgLny8ku8usCWYsrDUyCD+yE4tsX9u6e36qfI0NVkOCLOGwkUYxQMY82pdn
         UTGRA9FlmEXrXucYhXPi1MUH1pcvsjE4QOwy00qDp1zIQ3oAcA4mZZNeXGFdEofwhgAG
         IYhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+qf+xXSc3FbgMgxRKhxCJEDk2MsCDDmd7qltqbtbff4=;
        b=GIq78FN+FeOc07XgvywTXd/EstVQMPBFdF7Ri0q3lgKmDHVBOzeUXTLAwW9bWq6jew
         3thr/Cem9o7LHl7cGhar/mqUtl/9R/QiAlJt4QL39jMIhNmYwD8X4XUnOjs7slODcOy6
         3EMsW24QOAT2hmHEInOSvVNxsdvQelV+T7cScjMUmc5SlhSraM+627aOJI+gAVyhshph
         diHifwL7myWq2H6jNSkVD8xSgZgyJE/cAXRArJ8puogqGEyeQEDU1PhYM3vOCXHX7FzK
         iHlD99kOFMxXHtLyJW1IGq8Fc2fuF6e98v9bbpEbD57f1q5HhTuAtEbP1p4uS04curpE
         wLOw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWiLMx5SBaFPM1J2u02wnC+72D4usP475DAXGXdH4FkvxrmI8sp
	mGmZPZOSlbCq2WLeKAnzdHQ=
X-Google-Smtp-Source: APXvYqzjoW5mtrMFWd9Pcg4OV2t4VbVrfl1ZnTCWhXQOpiECcvuTD1VkbL2s7wkgdSLM+Y1NTD66Nw==
X-Received: by 2002:adf:aadb:: with SMTP id i27mr23840280wrc.105.1581610653890;
        Thu, 13 Feb 2020 08:17:33 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:65d0:: with SMTP id e16ls13647989wrw.1.gmail; Thu, 13
 Feb 2020 08:17:33 -0800 (PST)
X-Received: by 2002:a5d:5273:: with SMTP id l19mr23890447wrc.175.1581610653360;
        Thu, 13 Feb 2020 08:17:33 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1581610653; cv=none;
        d=google.com; s=arc-20160816;
        b=iCv1pfaIJSHZ7OczRpGCHpnD/Usu+InT5y30NxauHVjUZpxbW1i7AxUE/06ddWd2AI
         pX6ofmnjq51Fl0Dz6V3Wb4MOB/85Ezx0hXBQ+uwv+d4sN5j+NlQRuPAoBUUXg8Xy6djn
         rNBGt6fJEN8VUvoHu4vf6D+FVTlDS8uP6vuB+8dMi9KuT7Ic20AyN9whv9FxTO5EQZDO
         t4TAaGozx+u2As5wWEO0yd3USHZfGBJ0vmLYRISQZyp1xj6L64DcKezs51xj4pZHFu3p
         GHdI8qrW4rbSIBq0e7gnuz6Bp3fR0ye2eNy3U399D7mNiPMqRFeh8yohBxjYKy6TbXxY
         qX9g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=m5D7C1KF62my8IPFsg7iARusO36jp5ESFEtBecVzU3U=;
        b=OZzDahrMOcWMltTOIOEvP2BMEmCViHxr6OwaFkdlhaFWHui6bdsuYqCkF4wTCGeySh
         dYrf0ka/p9vtlbwNE0TYkiGgcAO0DVXcO+Y+qUPbISXYdsxCXSrj6B0xGuvl/n2L6gI1
         Q7MjwCuaj2dbT7eZMjZO20WfO66x3qiLOEpA3L5Xb49vg+sp4ao6raMs3R3VXzNP26Hh
         bk69VHRIuHvlAk48RLtWyKf3LRxitoqyctmioVJS5drgMUXnYfMOKYLs5IUe9cy3ESXg
         5tP18pv5pl3tC6/ZGITt6G3u/BjACut4/Pzqn7UAwPcoH8vvYN3ywjynHCXAa8Sv/GY2
         5eIA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id e21si4972wme.1.2020.02.13.08.17.32
        for <clang-built-linux@googlegroups.com>;
        Thu, 13 Feb 2020 08:17:33 -0800 (PST)
Received-SPF: pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 667541063;
	Thu, 13 Feb 2020 08:17:32 -0800 (PST)
Received: from e119884-lin.cambridge.arm.com (e119884-lin.cambridge.arm.com [10.1.196.72])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id D9D9B3F6CF;
	Thu, 13 Feb 2020 08:17:29 -0800 (PST)
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
To: linux-arch@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-mips@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	x86@kernel.org
Cc: catalin.marinas@arm.com,
	will.deacon@arm.com,
	arnd@arndb.de,
	linux@armlinux.org.uk,
	paul.burton@mips.com,
	tglx@linutronix.de,
	luto@kernel.org,
	mingo@redhat.com,
	bp@alien8.de,
	sboyd@kernel.org,
	salyzyn@android.com,
	pcc@google.com,
	0x7f454c46@gmail.com,
	ndesaulniers@google.com,
	avagin@openvz.org
Subject: [PATCH 18/19] lib: vdso: Enable common headers
Date: Thu, 13 Feb 2020 16:16:13 +0000
Message-Id: <20200213161614.23246-19-vincenzo.frascino@arm.com>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200213161614.23246-1-vincenzo.frascino@arm.com>
References: <20200213161614.23246-1-vincenzo.frascino@arm.com>
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

Refactor the unified vdso code to use the common headers.

Cc: Andy Lutomirski <luto@kernel.org>
Cc: Thomas Gleixner <tglx@linutronix.de>
Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
---
 include/vdso/datapage.h | 32 +++++++++++++++++++++++++++++---
 lib/vdso/gettimeofday.c | 21 ---------------------
 2 files changed, 29 insertions(+), 24 deletions(-)

diff --git a/include/vdso/datapage.h b/include/vdso/datapage.h
index c5f347cc5e55..21842a73cbcf 100644
--- a/include/vdso/datapage.h
+++ b/include/vdso/datapage.h
@@ -4,9 +4,19 @@
 
 #ifndef __ASSEMBLY__
 
-#include <linux/bits.h>
-#include <linux/time.h>
-#include <linux/types.h>
+#include <linux/compiler.h>
+#include <uapi/linux/time.h>
+#include <uapi/linux/types.h>
+#include <uapi/asm-generic/errno-base.h>
+
+#include <common/bits.h>
+#include <common/ktime.h>
+#include <common/limits.h>
+#include <common/math64.h>
+#include <common/processor.h>
+#include <common/time.h>
+#include <common/time32.h>
+#include <common/time64.h>
 
 #define VDSO_BASES	(CLOCK_TAI + 1)
 #define VDSO_HRES	(BIT(CLOCK_REALTIME)		| \
@@ -101,6 +111,22 @@ struct vdso_data {
  */
 extern struct vdso_data _vdso_data[CS_BASES] __attribute__((visibility("hidden")));
 
+/*
+ * The generic vDSO implementation requires that gettimeofday.h
+ * provides:
+ * - __arch_get_vdso_data(): to get the vdso datapage.
+ * - __arch_get_hw_counter(): to get the hw counter based on the
+ *   clock_mode.
+ * - gettimeofday_fallback(): fallback for gettimeofday.
+ * - clock_gettime_fallback(): fallback for clock_gettime.
+ * - clock_getres_fallback(): fallback for clock_getres.
+ */
+#ifdef ENABLE_COMPAT_VDSO
+#include <asm/vdso/compat_gettimeofday.h>
+#else
+#include <asm/vdso/gettimeofday.h>
+#endif /* ENABLE_COMPAT_VDSO */
+
 #endif /* !__ASSEMBLY__ */
 
 #endif /* __VDSO_DATAPAGE_H */
diff --git a/lib/vdso/gettimeofday.c b/lib/vdso/gettimeofday.c
index f8b8ec5e63ac..e3244f74feea 100644
--- a/lib/vdso/gettimeofday.c
+++ b/lib/vdso/gettimeofday.c
@@ -2,30 +2,9 @@
 /*
  * Generic userspace implementations of gettimeofday() and similar.
  */
-#include <linux/compiler.h>
-#include <linux/math64.h>
-#include <linux/time.h>
-#include <linux/kernel.h>
-#include <linux/hrtimer_defs.h>
 #include <vdso/datapage.h>
 #include <vdso/helpers.h>
 
-/*
- * The generic vDSO implementation requires that gettimeofday.h
- * provides:
- * - __arch_get_vdso_data(): to get the vdso datapage.
- * - __arch_get_hw_counter(): to get the hw counter based on the
- *   clock_mode.
- * - gettimeofday_fallback(): fallback for gettimeofday.
- * - clock_gettime_fallback(): fallback for clock_gettime.
- * - clock_getres_fallback(): fallback for clock_getres.
- */
-#ifdef ENABLE_COMPAT_VDSO
-#include <asm/vdso/compat_gettimeofday.h>
-#else
-#include <asm/vdso/gettimeofday.h>
-#endif /* ENABLE_COMPAT_VDSO */
-
 #ifndef vdso_calc_delta
 /*
  * Default implementation which works for all sane clocksources. That
-- 
2.25.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200213161614.23246-19-vincenzo.frascino%40arm.com.
