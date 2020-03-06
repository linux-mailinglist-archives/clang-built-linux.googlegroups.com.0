Return-Path: <clang-built-linux+bncBCOYZDMZ6UMRBQNCRHZQKGQECC6QVTI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13c.google.com (mail-lf1-x13c.google.com [IPv6:2a00:1450:4864:20::13c])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A0E017BED4
	for <lists+clang-built-linux@lfdr.de>; Fri,  6 Mar 2020 14:33:53 +0100 (CET)
Received: by mail-lf1-x13c.google.com with SMTP id b25sf848159lfi.21
        for <lists+clang-built-linux@lfdr.de>; Fri, 06 Mar 2020 05:33:53 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1583501633; cv=pass;
        d=google.com; s=arc-20160816;
        b=wC5LgQlSGDQSn6zva1jKLCndgAruj0JVGi5H/13ihrVEenD4A9l+hfgNLvnzUY5nX5
         DOOI2BdLI1utR07nyD1kNigExIAp7bWhXuPk8ztZypuZaimY5D/FM0a8ps6c+g93oiDh
         uZYMYvc3HgnPcBBtSrnD54FMemqxCyorowRXbR+VN8X3BCZovWdDM6wuUwPcotXULnz2
         xPIXmM2gROKU5DMAmttz+7un7B5PeRzXUVzwTJyxOP1+m98UwgP5w2Ia84FdAvpjQljn
         kU/3IfFrpQXDx3+fDOIu9lMIsfjDpKvFEWwH5a56q0GcWXp7X+bXL/FLb8ddrshegfl/
         W7IQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=IqDPRy8cp5PqobWSnvQ7hyaBUv31RQHU9DgmBiHCkpw=;
        b=HffdOm/jq7cyt4jDZuXnLgByj9aK/4KTAyVvx/LYxVQ3K2Q8igQKteXDX3b35D91gV
         /pGZ1ShhKXDVsPh6pttwN/VQKlVRihtHJdXP/QwlnwVl8FgcNlgAZ00L+ome+YP9yenM
         kNs4JU63N6QnZhz4LRE07YGgMD91y/y46eabc/okukV7UJAV91WXHLmRvfPYFH5huToj
         goZGL2iXzJVUSjeR8g5GQa1EV3op36QTCjcsdG02NkAqVYerafmXD598K8QcI1pgyCdc
         HZ9v3+4YBFqvm73/UKpUIZ31K3RHUINu0Y3Qaun1Qowsr6ikTYJdbTxfCWZi0b73eOdq
         LM9w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=IqDPRy8cp5PqobWSnvQ7hyaBUv31RQHU9DgmBiHCkpw=;
        b=eOiIvB7SrE8o3ke6uABnj6UfmFDmIJlpc9k2jrdX2casVbIxnRNeN0KJbXIqTlYZgD
         p0987VITd5yNE/PqYd2YVMz26HZzV5Vstw3AOwmlLassHWHVwVXl+5YZSCynhEpFZncX
         LF1h6p9hL3HYIbo58wU6eFSkY3C2QE3/0CpIigMjcb9o74Io+hbJIbUl0r3ehpNb4+/w
         ZY9xm+DPjzaz2CrGF0lweXNHOuqVMRlb9rBSRuZWQG/1DjAdQqnahpOVBt99tSYDmeGX
         Zgapg4HX6drVEYCoC90x7LX0be9kgJeHqppCOHYvcdwjbVLmOwTg3WMrhYYtkpvbmvQQ
         ESFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=IqDPRy8cp5PqobWSnvQ7hyaBUv31RQHU9DgmBiHCkpw=;
        b=r+vyBkTG+G3ABavNvLjpiwYcziAYaE1eVBqeiJwpOkASD+PnrJweVfdq8/gd98G4R6
         Lfm5rhGEfPsDXzHa9ll5Yd7P4GT7C5TgXNUE2eFWme0e6pbDw1mhpFTGSeRgsUQtIvrU
         rYXWTMGb6IC9rCe/t0vjr9NbV9tS1KLgNgRgrZ9KOmI0QNZCQEkBYAjTc7i2iL+iuhsq
         8Y1SMC7WTsgXkS/fnEkoq5ncSUMb3ae83tqIMD4w2zqLnI3rzB6+ra+Uag3Iavr5xcFG
         vnrDMmvr8MiX7AEmGL2rqcItP5XG7vvT9wTrjB+wbuhq3m2fRGH/cHjsAjFhpvrv5b0F
         0eGw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ2d7UQBTk5PJBuwNmFW18oP4wb3fPvLWBbPTLykyjj/lkdSnBWh
	cc3F7rFjD1VmoCiWnJHIkqM=
X-Google-Smtp-Source: ADFU+vuFF2XzVNoL9wrT5fobxYrfvtlhZeRpeBXW/1w6OOSx5wbxvZ2SAz6429PSXz6lGoUs88CEfg==
X-Received: by 2002:ac2:5f7c:: with SMTP id c28mr2007716lfc.204.1583501633165;
        Fri, 06 Mar 2020 05:33:53 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a19:3f0b:: with SMTP id m11ls341341lfa.0.gmail; Fri, 06 Mar
 2020 05:33:52 -0800 (PST)
X-Received: by 2002:ac2:4a66:: with SMTP id q6mr1958763lfp.16.1583501632559;
        Fri, 06 Mar 2020 05:33:52 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1583501632; cv=none;
        d=google.com; s=arc-20160816;
        b=IADFBEo8yceACbppHNwHmAeSEYHHuFosZEiRoXf8JX15EWGZ6PloBwkeelHlFcDBY+
         lxAE2pSpH1XmEq6W3/WYdB9lAfNwgGchzlsyZosW27+ASQYyA/LQMB56xxGlSFUJBei0
         IZUW0xqOKLD4a5QDGtxXy/7KBjoQFN2JDs5c8eDLYm1qFg47LhOqO1FfYYta9Xqf9UrB
         384gXd+pcsoqZxzeLMAu/sGRREseJYiDPhnFhavVstExYOsUGEcv+mp9OD0da6WZb8oV
         7poAkPbnvCc0ApvmXNydFrR/djEPY68DQdZYjLqts69BKQJkcWo+xQ1fGX649HFHazbC
         yNHA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=qfGiJMcM+UszBV/XZBaneLfiXPu8XlBCDMp6o+p1v6A=;
        b=akY4Sbg3i06kNW27O0PEb8Eu+Hc9YcNObdaM9RnpgGPxSDYvCFDdKH9Z7HOUbXwM8f
         9KcC5/UXQ9Cgs4mxSZ2t8hz40x1Q1dQrqNf0cLanv+9giRkJ+Mo0O+qBiYTJ1rfduzNJ
         aRPM2r3LZotNqcfgs8E0iNyMsnGesPMjCF4HE7omF6UvLPSqqKKVm1L4eG/gqRTTVGUm
         JditVi9p2fyu0hRdi9+n3fE/LKyPZSko0FfsP/OfXUYi+P6lUl/HHUBCj3Ss2OD8U/XN
         ZCB9wFgdXYCKh1Ckh2ZB1CP8f9JGplCWxPF9vhc1yvHccaNowhFTz/pQSsSg/BYCPEOF
         f+wg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id v17si124662lfp.5.2020.03.06.05.33.52
        for <clang-built-linux@googlegroups.com>;
        Fri, 06 Mar 2020 05:33:52 -0800 (PST)
Received-SPF: pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 442584B2;
	Fri,  6 Mar 2020 05:33:51 -0800 (PST)
Received: from e119884-lin.cambridge.arm.com (e119884-lin.cambridge.arm.com [10.1.196.72])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 830793F6CF;
	Fri,  6 Mar 2020 05:33:48 -0800 (PST)
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
	Nick Desaulniers <ndesaulniers@google.com>
Subject: [PATCH v2 19/20] lib: vdso: Enable common headers
Date: Fri,  6 Mar 2020 13:32:41 +0000
Message-Id: <20200306133242.26279-20-vincenzo.frascino@arm.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200306133242.26279-1-vincenzo.frascino@arm.com>
References: <20200306133242.26279-1-vincenzo.frascino@arm.com>
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
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200306133242.26279-20-vincenzo.frascino%40arm.com.
