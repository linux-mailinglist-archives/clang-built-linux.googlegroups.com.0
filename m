Return-Path: <clang-built-linux+bncBCOYZDMZ6UMRBBFT2PZQKGQE3JACZRY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x439.google.com (mail-wr1-x439.google.com [IPv6:2a00:1450:4864:20::439])
	by mail.lfdr.de (Postfix) with ESMTPS id 4971A18D1E2
	for <lists+clang-built-linux@lfdr.de>; Fri, 20 Mar 2020 15:56:05 +0100 (CET)
Received: by mail-wr1-x439.google.com with SMTP id q18sf2755213wrw.5
        for <lists+clang-built-linux@lfdr.de>; Fri, 20 Mar 2020 07:56:05 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584716165; cv=pass;
        d=google.com; s=arc-20160816;
        b=YV/O1oDfqPlZRTLosP7QAVWxyq2BaSATHz7VWReFFbL2eSp/r7YPGfzZQYm9sII56x
         E0oouuzL+c6h5Stm1f88d53uA3QEuUZH8p1eZWkM4WlCbOS6hqipTpGj0qhX0tYXSBYE
         vljuUd8jx5MeS25r+R0PewBcYZpF7ir8r9yqGDpU46QXqpTGJXCnSQ/dPVM+w5haYjON
         kiS+vkpvjWKFH7hwWpkfknnl7QYs/urrCaELCxSLuFPF5mEQ+Y9+wWR8GUbTmzDyZC/y
         FVxOWBXbv4VR8PdpS2NCPBqnyclolNfOgse3Zdrv55PN0gbXGerxKyQWkUoq0RD2h85o
         TfOg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=3YmaPecILN8XZU6Ao34SVeBuX8B0yvMvQJ5viUDTEN8=;
        b=oPT0sLrevCu1HbkKyXS7bTbvwluFzWf8iWDGrxRyrs07Mx6ifUqSbwdUG17q60Xbv1
         YCv0l8tMW7GbutvuslAJUTinrvUxn4jqt2+LoXgkTzlXsItpwyALDeMw2m7asGvOSzPX
         nyFH8f3VvO4A+bZ1/qFSOAdRtTAUDLg0MkjrA7G8Mg3LkRF1sB+j3USPiu1RbXG1YLSK
         OXkVFxRdDItJiBLmFqMwMFnHZMDM23WIf59aKRIc6zhBT3Qw2/KiV6Jh4aqIW9GVSzMp
         IVVGE6WqHjfXPtmN1tQQMeAAtAvG5wo/lMhrNjIRsUhWUh/WrOBgzRnYAm8YWE1T1wxD
         gIzQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3YmaPecILN8XZU6Ao34SVeBuX8B0yvMvQJ5viUDTEN8=;
        b=Z4DiIrYeqzes40nKGssrOG9ryBfgFrurxmCZjk28WwsjHSAE1Q1t995WDJAB89UWi1
         hhJd7IGHlvmIymcFNxG8Mkm47fX6UCxmC21aIyT8D2AXNPtibb5cBhYdnoD8KnMkbli2
         MWGi5sGmewY52QsdpnwyVxQSkctzO8G8R5UqOqk/pvRLrDUHhmHRTFuJ1Qqg8shEsHjh
         VslH573TRDziPDmV3kyFfO7g/f6FNQYWD+LObWqr7ilE3DKYFNRpHtLYmUfZuspp4/GY
         RZRTofwbjfn7AYNfxzhXuzvK+uszGaOSUXkfQgfpM9XrSulAQUShG3DxBMSWuwy37G9M
         4ZUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3YmaPecILN8XZU6Ao34SVeBuX8B0yvMvQJ5viUDTEN8=;
        b=cfI8HPU0GXVYLIElrMANmyHa9YppckEdMVgrgs7yrFZbOLejIDRGWeJiWsn5IKie+X
         Vg1G1krhJJ5VNzXef0cP6NwlNfr6+zKQPQpdr2VoPRSoKDhgyIDXsPc15DelLkTiJfgs
         lOX3bMXRcVXZVBhXI1j3FERsf+fKniUTsCQ9IqamJyLy5UF0RgnCipQUzyq9d0RtlqAX
         0WOwlvHvjKx7suxD996LGebBxLcGADcAqiWq5MoqBJ925BNmfTcJZSRYdJMpnJaUu9WG
         PRW3bSFAxnmELmR5nxnfj2Vhp4wuhsaGvKLqmNxFWiyYcvmLpJft+D6IYs2AKPXteWFd
         fN9g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ0NaidUYxOLNnOVbBKZd0V0xfbzZN0dJJzEb5/kpB2oWY8tjLHa
	APdEDByhT0X/2r85BWl6ZXY=
X-Google-Smtp-Source: ADFU+vv7THeqzdP8eulbZlQK7PUyn10u6AA6YcfOXTgcORMwHVQJQR1EhDLi6Oz+csXei/QDwfbH7Q==
X-Received: by 2002:adf:dd8a:: with SMTP id x10mr12287698wrl.38.1584716165004;
        Fri, 20 Mar 2020 07:56:05 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:a98b:: with SMTP id s133ls3109777wme.3.gmail; Fri, 20
 Mar 2020 07:56:04 -0700 (PDT)
X-Received: by 2002:a1c:a714:: with SMTP id q20mr10617804wme.148.1584716164575;
        Fri, 20 Mar 2020 07:56:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584716164; cv=none;
        d=google.com; s=arc-20160816;
        b=i5sDG2tslxGKjl62JGMlX4Z9qSNFW8VipimyyrjLvUe+VH3tQUoHUW3014cGsORlC6
         h6iBxRdCmF1qNyMTxZsSzuf2aS+KpxfuXifSV2F+7vjhEW5zcod/Ux9RV1tPbg8Y800g
         rGxWZNQG6ZsDdnidhcOWJ41Z8EBXGV2iuY3rRcbkx0fb7kgJW+BLJKBUPTBy2N6IMBuO
         cC0//UJx1uUHycJ/qvcaTXhyM0JehyAyePn34zjp+qHw8Nc771pxq0vApxbynPaGgplU
         drl7vbDzkCVYxtV+g00BnkOYccjug9BZcJ7f8PMvjWld/PFSmDbipPrGY0xFuxZTNtKa
         UVDg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=71NAkNuIu1yTvrgCRPIIOYYKdkGiGzpa/QYfQ9kxf4g=;
        b=LUhu1i6PGKnOImzaDzM9EPdr5cG6ICg80bJeUtiySQlH00UzdGzL1kqwWs0GWlD6Ql
         PuvNnWSs6TOL7/gy7m1dQVq1AbT7vEqo92sl566rtL5VII4QX9cPBKhHnuNSBSEtb9gG
         tjdSlr59AJ50B9fhrI7We7BdCM5OtfuIpEZB+2CZ6Y8k+HQX/kR7lOt2FiHcjKxzifqT
         vWNTQ+ICCJtr727qX0y2+yK5FsGVtQypThjs7wRPoipyzrv35xMWOyl6OqIpltnBPx8p
         DxUWU6bMwxZgPhD0RtjX5LFxz3mEiwC1HdASsmvhoe4wOvVs1acKVK9gVcGb81YLcJRI
         ThkA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id q205si321280wme.4.2020.03.20.07.56.04
        for <clang-built-linux@googlegroups.com>;
        Fri, 20 Mar 2020 07:56:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id BF4B71FB;
	Fri, 20 Mar 2020 07:56:03 -0700 (PDT)
Received: from e119884-lin.cambridge.arm.com (e119884-lin.cambridge.arm.com [10.1.196.72])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id C92783F792;
	Fri, 20 Mar 2020 07:56:00 -0700 (PDT)
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
Subject: [PATCH v5 25/26] lib: vdso: Enable common headers
Date: Fri, 20 Mar 2020 14:53:50 +0000
Message-Id: <20200320145351.32292-26-vincenzo.frascino@arm.com>
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

Refactor the unified vdso code to use the common headers.

Cc: Andy Lutomirski <luto@kernel.org>
Cc: Thomas Gleixner <tglx@linutronix.de>
Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
---
 include/vdso/datapage.h | 33 ++++++++++++++++++++++++++++++---
 lib/vdso/gettimeofday.c | 22 ----------------------
 2 files changed, 30 insertions(+), 25 deletions(-)

diff --git a/include/vdso/datapage.h b/include/vdso/datapage.h
index 30c4cb0428d1..5cbc9fcbfd45 100644
--- a/include/vdso/datapage.h
+++ b/include/vdso/datapage.h
@@ -4,9 +4,20 @@
 
 #ifndef __ASSEMBLY__
 
-#include <linux/bits.h>
-#include <linux/time.h>
-#include <linux/types.h>
+#include <linux/compiler.h>
+#include <uapi/linux/time.h>
+#include <uapi/linux/types.h>
+#include <uapi/asm-generic/errno-base.h>
+
+#include <vdso/bits.h>
+#include <vdso/clocksource.h>
+#include <vdso/ktime.h>
+#include <vdso/limits.h>
+#include <vdso/math64.h>
+#include <vdso/processor.h>
+#include <vdso/time.h>
+#include <vdso/time32.h>
+#include <vdso/time64.h>
 
 #define VDSO_BASES	(CLOCK_TAI + 1)
 #define VDSO_HRES	(BIT(CLOCK_REALTIME)		| \
@@ -99,6 +110,22 @@ struct vdso_data {
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
index 72d282ffd156..a2909af4b924 100644
--- a/lib/vdso/gettimeofday.c
+++ b/lib/vdso/gettimeofday.c
@@ -2,31 +2,9 @@
 /*
  * Generic userspace implementations of gettimeofday() and similar.
  */
-#include <linux/compiler.h>
-#include <linux/math64.h>
-#include <linux/time.h>
-#include <linux/kernel.h>
-#include <linux/hrtimer_defs.h>
-#include <linux/clocksource.h>
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
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200320145351.32292-26-vincenzo.frascino%40arm.com.
