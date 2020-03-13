Return-Path: <clang-built-linux+bncBCOYZDMZ6UMRBF6VV3ZQKGQEHV33PII@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33f.google.com (mail-wm1-x33f.google.com [IPv6:2a00:1450:4864:20::33f])
	by mail.lfdr.de (Postfix) with ESMTPS id DDD26184B41
	for <lists+clang-built-linux@lfdr.de>; Fri, 13 Mar 2020 16:45:27 +0100 (CET)
Received: by mail-wm1-x33f.google.com with SMTP id z26sf3538772wmk.1
        for <lists+clang-built-linux@lfdr.de>; Fri, 13 Mar 2020 08:45:27 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584114327; cv=pass;
        d=google.com; s=arc-20160816;
        b=ap41ExbBjPahlky/E5noN+G9kepN9nc5vFVHpQqWNVTdMErgyV1uqUjftNdWZY5aLt
         Ti2y5BAjDVXh+OWGTweOtyewruuqAnk8t+j+GVt6tWep+GCNmMbh9C+204wrbbzwIA0j
         vHPHfQfQkNVfLd2nbX3vtBCscisb+YF8Ac/VOUoNP2dRYUFnukIbew0wksKRBKMCrNBx
         dJvTG0W4LslLCrlr/6GByehcAM2ylY5j/7DTM+6OZEHgBqxsOHekzxM8sUPEEPs7MZcH
         G3s6Hw1Fd6kYv5ZyKxU++Aev/C9zXPCwf/YMAM68oBRxgait53/X3tLF4LrtXoeRKdOQ
         ahvg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=Vgsi0B2KEJWhcWz3LqK5U0dfJfWAfbS5e+IOnCjEctM=;
        b=PBlNAecDE+Efz12L31JQNsmexHAWB+WQdtkfYcoHN1ikO7G6u+vbJrr42dkz0Gtd9y
         Qsz+KrpcPKheFru4cIKOFOWu6sXnp0VADvSyMboxqu7zSxfP5TSQUmJIQzPKu8B/EtA2
         xokC2W/VHZl7zGbNmv+Zpw5A7urV6qFkwde7MKuUZHntx0G0FZmwjdMBU9eHb+9Lgyya
         /Tc32UdhL17FBVrhcXflh0yCm19YaPXaMEhtNzRNt7ZgMqsG0qQlrEZyxH8m3Quz3btH
         kwwOrC3H9whn75TkzLjmcNpkq9Z1N/dmoNrNPBnt3CmD59Jv15e4wo8FbofvEly5Me6n
         bGkg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Vgsi0B2KEJWhcWz3LqK5U0dfJfWAfbS5e+IOnCjEctM=;
        b=Yt8NmpRFnEUjsDETQO9o+qfbNcH+NyxY1pT7Z2zJRwGpVDbSyl+kdpM/9ce41T9M/P
         8CPh085Vr8ENvOTUdAhtdMhSB44F4LFpozS/mPxdoC3yhy9BVFP6G0XM7hlRdSYTMkXn
         F/Z0qiEfRxA9udH7gylS/um/QMQQ6qQOMQ9FVNV/C3YSl9Mf7+QfK8nAH32pIED7SOvq
         iUQIGKCIraOFdGvy0SECemF4DG9XGyTdGm4dqfxD3RLy5dPePSgngq6xHhk0y3ZC+r/b
         qbYb+pIdNxq/yYJOXLRUXNU8PnbYu8Pb1lw7v4qQPQNytknm0tvOflkKnTB1mm9AgWgG
         Djzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Vgsi0B2KEJWhcWz3LqK5U0dfJfWAfbS5e+IOnCjEctM=;
        b=X1+7nv7pT+Xj/3zQ1gknsf00vpL8DEK/EJTaTR7SQy5EpNSY1qE6zs+h3uIVzd+RLE
         0KcbxMTx8p+JS/9dO/jmvhW6XhwBMgyYH+2RRLhVmvAQY44GRtGysP38SlFo8gA9QEvd
         AbpSu58juvJFkOm3YUfwxropy9rj+O76blBluXJzzmeT8clfY2TjGgqr06jFTSHNGI0T
         8Fdr+d1HuY0oh4L16E8prq9BzpNbB/kk5CC+KeL3Ejy+x/6ugT6hvbFgIkB2oa7bj0Qw
         Yy9hePJCDDedgqZQQ8JEL4+QgCEFysLjTsRlbxAhWmwg1pXnAG8jEiud1M+WZu8vG6/2
         YDfg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ2L3hQa/rRGwprJV/b+TNKVRn+eYqqUxdVmYhu0jWMXbvsfgtDb
	1FubaHkVjD4TIoVfwTofEDA=
X-Google-Smtp-Source: ADFU+vtYryHvJcbh74XNXy8vfDl/WpDBgpmKge33ZhC+hgVmP9SUCYP1+Vu3nYgwnlIhqq7lxtK01A==
X-Received: by 2002:a5d:4484:: with SMTP id j4mr19546327wrq.153.1584114327600;
        Fri, 13 Mar 2020 08:45:27 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a7b:c4c6:: with SMTP id g6ls1599289wmk.0.canary-gmail; Fri,
 13 Mar 2020 08:45:27 -0700 (PDT)
X-Received: by 2002:a7b:c0d7:: with SMTP id s23mr1915682wmh.168.1584114327077;
        Fri, 13 Mar 2020 08:45:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584114327; cv=none;
        d=google.com; s=arc-20160816;
        b=Z/wAYF/SwseuT3xEYItTRcsRtOFffrWDz03IY9/4ZjB1vGq6k3FPAEUMf08cJizVa9
         e4phvP8+JjHI7XvCRHsXb5PZH8CBhC4IdgM8EfizMpfa4Sy7nEpxhllzCHCFn1UbGV0w
         WiXMP9+NCE4JZFHElGqfxC7gG/rdSnXpWMH3w3fk9/uhOee+jXzs8w0xazwsBDrKLN/8
         6LKMZMV2gLauMTkIPTEH1vhf3if1fZmgaxUjS3FropZVAD6pgnoTmyHe1E23nUqzAzGF
         bw/pRldg0T417kuudEr6nRgVuj1j26xqLMuR+j/1hFCM5o7p+Xmhl2H5Usy1d0Lp88kZ
         V5Eg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=71NAkNuIu1yTvrgCRPIIOYYKdkGiGzpa/QYfQ9kxf4g=;
        b=qtQrIK0UnYAJlED7W/EruWRON8TYMcnC6qBg0QFDRupEolBMmTJ8WoWU4v0vBI/2aW
         NYeKxaNsyiTwJUQLHt6eqMVtVe11SGIROdTxSEo0SF+cII2yd+9qZOXF4dqvWQ8/HM/4
         UFr61M1cEybCX1Msp645s/xi+n8JLm3i0XUvbOpqYAdlt7Tq9ZSEAmG85i2UvBHgoNxq
         Cl+cLxWYh4rRfEsTRRfUxIwkec9P5ECiIN2lp3pAk/NgH0aKfXO+jVN4RRMTAijKQ7xG
         8z81xGooODoCSi0IDpICIFsxosmS/xsGX6gSavRkVpBdPdnzbDufaJQP+3RGuS90A+40
         +HaA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id b16si164643wrx.0.2020.03.13.08.45.26
        for <clang-built-linux@googlegroups.com>;
        Fri, 13 Mar 2020 08:45:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 4A9E31045;
	Fri, 13 Mar 2020 08:45:26 -0700 (PDT)
Received: from e119884-lin.cambridge.arm.com (e119884-lin.cambridge.arm.com [10.1.196.72])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 554213F67D;
	Fri, 13 Mar 2020 08:45:23 -0700 (PDT)
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
Subject: [PATCH v3 25/26] lib: vdso: Enable common headers
Date: Fri, 13 Mar 2020 15:43:44 +0000
Message-Id: <20200313154345.56760-26-vincenzo.frascino@arm.com>
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200313154345.56760-26-vincenzo.frascino%40arm.com.
