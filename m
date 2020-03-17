Return-Path: <clang-built-linux+bncBCOYZDMZ6UMRB3MCYPZQKGQEQ5ZFGPA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x140.google.com (mail-lf1-x140.google.com [IPv6:2a00:1450:4864:20::140])
	by mail.lfdr.de (Postfix) with ESMTPS id 66D2D1883D4
	for <lists+clang-built-linux@lfdr.de>; Tue, 17 Mar 2020 13:24:14 +0100 (CET)
Received: by mail-lf1-x140.google.com with SMTP id m29sf7909908lfp.4
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Mar 2020 05:24:14 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584447854; cv=pass;
        d=google.com; s=arc-20160816;
        b=LXCRpR7fIYRivrIWLSxmv4fvESfc5/6vGGQSg6Ek7Rc1Pv7PEsMuTbFwTc3pEgOzIP
         3wSGW2ux4hkanGPJ3cgC+TZ1JiZalKptDG/oWMgXO3qbk8N9AZvUDKMCT2YpuDIiWH4k
         TED0spiI07S64NKrlf2xjkj5NmiF8gjs+aPV4ZPIZ4H76HbILEsawFbB9C9aZPlUxZu1
         i8FqRAdszchomsu+tilny8G0oVSmzF4wBPgA/KA3AQEfbcSCvCaN2lZm+0zKTe1w+LPr
         0bfTD2qwTcSbbP+tK6SU1zOvnxRa23BxiOY3XMiVtmhr8yMhVPRnAYsoVP+sxjp6pisE
         PT+w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=i9ZlcC1M/87SfVKDUmKROKOPnG4m6E+cl+mDPcxX1Uk=;
        b=cLnNBCoMLlyEfaYMS9mhgfWfmpBj745/WLCE2AKxb/L8vzqa72eNNy6oDeZUk5bL5G
         3tMZczVl9cqH82lG67yuknBCVUpb57bvWUdJwKg9cc4pyPdy3irKqjucE5Lp2lLmAjnl
         h74beo8DYLOZxx6NBLTuo2B99VrKYdtCu7p07Zoc+jc/HENmyvyxJmJQwNUNjs5vrerT
         hanMQWz83SgFvq16mbCp7iodCktR6H+dYPNevuwjJVWjQDYQhIB9Kr0rrP3iodEHDEsI
         AL0CJ+1eWhQDjyzAK0EDhSeRGc1C1WZUHDaMicvftAWZU2e3MmSmnbxuPd8tsRf7Gu/5
         nvkg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=i9ZlcC1M/87SfVKDUmKROKOPnG4m6E+cl+mDPcxX1Uk=;
        b=BPSSrdzzETBfIWNE7eP4SXLSTk9HOhs5CDmZAek/PY1NQdIKsLB3vj/ztym28O/Rx4
         /EtWw23dVldFdfXBfE/6JU+5Dw7ZoOjtx997G0QiIqDuoiH654/kWpFO9v9BMwVG6Wvj
         CE4fQYV4fdGyzcbUl8TBWAXp8I56B+u5eE0vRT4fz/r3wXXSbQCY+HE1IJxgTd3IX/ZN
         7gw1KTWxXLJYAJ0pc9fLuHN9Y00KFAUetmjNIl4WK6O6ytghfBXJAdKFGgurggKFJ9RP
         T3Iiz93esB77E4ZFRnNHmZVei+QCbjn/Xw98WqDCw+yDL2Y0frR7vcoiZG8U0iVB7hL9
         7ugg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=i9ZlcC1M/87SfVKDUmKROKOPnG4m6E+cl+mDPcxX1Uk=;
        b=NhyVBGxTacNhFIV58gBH+0k4Ed8rOoaBgNiBfrBBTLjde5CedvEs4mfmIa1lG5ofm8
         yBUM6apcCVaW4tTV0RKvo5Rx/zoeHABBiFl8ogE0aesTrO4+fg1uI5ZgDdrYmMofFgR5
         U6aeJNFeHbPQnFOXrmcS+RoSnRTv4nATloh/N0wuUnjrWGARmAMsuTYdHEPJvPzJ0ho7
         RfyURyknEBiwrs5iP1G925d6BsWj0hT+aoMJGobgJ2UHxfNYtQPMemOhrzNTx6TzeB9T
         Qk7vqKnYvSrz9GZ3MH5RxFWqrkUIiLs7/B0KwJt6O/O0XXqWZlOfW6zVJRpfNMApxM/A
         CQ5Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ0dtjMaNjcHcb/8L/AAksTTridqx6gN64zMv7Oer0QufTaqCqKn
	a+p9/OofM4BAIxdO3IY7oqo=
X-Google-Smtp-Source: ADFU+vtPjSaUMpT9VUTpDCFl3uCCD6D4A+O0/ygphN1lO2mOFzu883Awj64jyk0rWVjXWyW8TY/njw==
X-Received: by 2002:a2e:9d8c:: with SMTP id c12mr2554988ljj.137.1584447853963;
        Tue, 17 Mar 2020 05:24:13 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a19:4bd6:: with SMTP id y205ls3099665lfa.8.gmail; Tue, 17
 Mar 2020 05:24:13 -0700 (PDT)
X-Received: by 2002:ac2:5ed1:: with SMTP id d17mr2757084lfq.83.1584447853131;
        Tue, 17 Mar 2020 05:24:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584447853; cv=none;
        d=google.com; s=arc-20160816;
        b=rw8qLLrvtHD6l3/cJXwA3M3Wgd1/PefQ1h3G01yUPig2zqFCzDh8fnNoWHm9Fuud61
         bs5JWRZ2ClfwJngJRHg4H+FR7PZw14Y1sVC+XSM40+Q/ugHn97ds8md/D1g+H11Ix/ZM
         TYTw40RcfJ0Fsz9OC+9Qd1l5GWShO8lmLtS0e/Y/f7kgqC8ESIBNLm1qfLf2YTjDTWrh
         +WCJXpkc8A/5QmpDnKtCfJepW9Jl2/FQ9Fg2VE//58OY3jZMgo5TYMGCH/cF/jFc8TQb
         gO7jX9sPuC3vpHdercuvgrMWYygM8iCHe+VTy29MWlEMJOOHwC6JUXSaokd8Fn5sygvI
         dX2w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=71NAkNuIu1yTvrgCRPIIOYYKdkGiGzpa/QYfQ9kxf4g=;
        b=DQBqxzfU3IGEmJpEQxIwvZLtuxc9SONMIV20wq19hThk6eLKhcm9fhRHiCVrflCgST
         Z+P3tF4eRkqmVYimOLh/c+y2SORmcj/ofCBHUQTuRvU9CN1uenKY+9mO8h9uR3beaD3W
         2mvpBkKNtHp+GC5YwtxhYN0uC7ymtu1dPbiOLkzn3jTOowr27hGBlMNJzmjp0kL+9hIN
         qlXaLvbvGN0yYBpQqgNx2zKfiojzM40Ki9YtHlJ36yv/SBVTzyfgynbpyCL6kJPgk1n4
         EIg4E2xzSrVpd07BzWRzbXTik8hsC19OdgVm3DkpJcgGbYsf541zMlAOo5yNgUxzSo8g
         Nkvw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id v191si19936lfa.4.2020.03.17.05.24.12
        for <clang-built-linux@googlegroups.com>;
        Tue, 17 Mar 2020 05:24:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 2673F30E;
	Tue, 17 Mar 2020 05:24:12 -0700 (PDT)
Received: from e119884-lin.cambridge.arm.com (e119884-lin.cambridge.arm.com [10.1.196.72])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 315343F534;
	Tue, 17 Mar 2020 05:24:09 -0700 (PDT)
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
Subject: [PATCH v4 25/26] lib: vdso: Enable common headers
Date: Tue, 17 Mar 2020 12:22:19 +0000
Message-Id: <20200317122220.30393-26-vincenzo.frascino@arm.com>
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200317122220.30393-26-vincenzo.frascino%40arm.com.
