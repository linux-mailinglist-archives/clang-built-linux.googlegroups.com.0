Return-Path: <clang-built-linux+bncBCOYZDMZ6UMRBL4CYPZQKGQEYKH4VYQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43f.google.com (mail-wr1-x43f.google.com [IPv6:2a00:1450:4864:20::43f])
	by mail.lfdr.de (Postfix) with ESMTPS id 1858A1883A0
	for <lists+clang-built-linux@lfdr.de>; Tue, 17 Mar 2020 13:23:12 +0100 (CET)
Received: by mail-wr1-x43f.google.com with SMTP id n11sf10120817wrs.13
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Mar 2020 05:23:12 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584447791; cv=pass;
        d=google.com; s=arc-20160816;
        b=uIHMMGE1dtl5KJBejZUwPJwit8m6hxMKXva2v6OMseESEMXzEs+q+MJ4wDMlD78mIc
         sI6rvt+e+EW0qKElr5nYRWb4lomkzm6FSq5wngKlwWFHZbW4D7E8IlkghfyGljhtfpv3
         e3/NE/3uKMeWEGG1GwDy+SmKRT0cX6LjECxwTcnSY7ywLaL6/vE/+UfxQUoUnxWZypL4
         bCkrKTNcImv9o0hLmjv8MDfuBZnaWlpASoZQ5aThSMSNSmAfATpWmbunfBqgoueF8DGj
         NiGaYpayqhyPEELyGQa5Be999Oqhp3rYndlaL0LC0e+9W4ngzkE8xKtQDUz2koGdUnuY
         E50Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=u80wCaA0MUHZXfzTs+mMAGBftRv1Fy/5jQjomkGHrOs=;
        b=ZXw7LnagXNQkcyBXZH8zMi88U2Ad8/m9kFTy7EhGcdNxlb/IOwJ2mizEE0rbc2RuNw
         FB6xsXAeZUHyLW2YrZPiBYIYe1diyu3Ss3cMkAc2+cr+SrO5A+/QYozTCMLn7cEDdHrF
         2XGgTvPtAIZpBrGzz+SnT7L2CDujaIpHcnqlqBOlYwbKSlr7/qiTacAtSSUkN8etalwb
         MEdOkmlxF8AZ5B5KPUbs0HP6Q8lJMHfhs5ynr7g6C4R6HtJOBUwxCQekzF2gGFRfS+Uc
         sjJ2hRjq0Jn0YNJyciBuI9OIClrJwrCuO4T3slYezer3jwihVZZFlF3igiDDjCC0loGq
         EBTA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=u80wCaA0MUHZXfzTs+mMAGBftRv1Fy/5jQjomkGHrOs=;
        b=rapII9TuiFMNDcpKmeViqr5oEVyXZsFr6aYOAilUG1pWqT4UwQrZNm8vqwWdGWNcwm
         p/GUUVXA6Z5sTbd0sTFWWJoKT0qk7k5RxXgsu0u6DEyUd+1AiwsrdIcFhr/r2P8P0PbD
         AqDYQEWvtNsuZ1DxJQBGurB7FwiruwwcQt2o29jrYKIPrfK6/u+fje9d3cohtMPF7+q4
         exNCmEupY08ZJzExEwtV+w2k0FBJHb8MGu3EYqEGMJZyeo09ovKHmNJECf8qYrk9flZ+
         AlvrWt7S7UhnFgsJE1hDgACl+8HGEXfE7463WY88OZvJBy3BJ1/14IvFAxx1iSyen+Ld
         ecKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=u80wCaA0MUHZXfzTs+mMAGBftRv1Fy/5jQjomkGHrOs=;
        b=O8uiuX1fn1nIhBjL/EixwNAv9gTwjo4EZXricNjTig17i4sm4LCijcg/qs6QPepnAb
         Ysw41NsJACA973olkELbTLfRMLKY/cFjF0TJvDvTIISfWD1f1dqTuhDS4jr2BjFQ1JuE
         0FQsUpWzFsC0lT9sIkEAa7UAjgbpnQs5WMxwQ+PjX2CO43cBMwpRl6YGi/bsXECj8HOV
         Pvh76DZFXKp0CNyyLtDBuMjbUlX0WFwP7ZUbQlYvUFsnESOa8SZamzbdoTfOa34zA8Kt
         Z87XQ+JHGkAI8DnJPkmWWTK4BmpkoVqY4VF8wk7J3bfGlCAptApGjTcCwB1Y9Xk0nfLp
         lgaw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ2LmMqYFTQJ36EwJpQJhgrb6olVzrrdbirNE51snKif2493+lO/
	Jt2yOpmaZuylc3KbUshfwyE=
X-Google-Smtp-Source: ADFU+vvKJt3LUdQ0jaSLnMnkXdHtfOVxgDDRI0inm/yDDIYzBACWvtDyR6Eoo0suJwvWGeGWwpTMEw==
X-Received: by 2002:adf:82b0:: with SMTP id 45mr5783476wrc.120.1584447791843;
        Tue, 17 Mar 2020 05:23:11 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:a799:: with SMTP id j25ls11067032wrc.7.gmail; Tue, 17
 Mar 2020 05:23:11 -0700 (PDT)
X-Received: by 2002:a5d:6ca7:: with SMTP id a7mr6283532wra.157.1584447791500;
        Tue, 17 Mar 2020 05:23:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584447791; cv=none;
        d=google.com; s=arc-20160816;
        b=FwFok0LPT8Ca89vt2vso7KBItdJMOyrDtHm9hrB1QtvlUNAPOuR5ZfncpH860EbAsa
         /c3Q5W0DF1/2Ev2cNnPxCT10/DQLm+bbQM72/OHK91BCsAzKvyDA65M2LDa4qeZCguDt
         o5Ytl97mXCjASQ6Ta9/INctdLP285x9kxpYYAOT1FJ+u2IKrWn5X//qzvixCD3Y4WheK
         yHwok+G78wz9oRT8f9lpiMEQRafr0FwfBF8deZ6CNdbgPb37dbiPJ02en8kFAAHwcm/4
         e540ByJzSxmo76LdXLBIqtLZmpErG+p90KFc/lleRLW8QQw7lQCZfw1o/XudizSE+oLS
         0wxQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=gS5s76aQWNuX5erIr9gG9SwCPcMgDZLVyK8btCAk28Q=;
        b=r0Ohz52BlCHp/PCnZ62P8ob4HWd+X9cbdk4VdRRZvwFdhEG8AebBBeWhz8yHt3CIJ1
         SVWqqpSd1waQQ3k1ZsiU9b1Z8LtlRWNv3DWqKEmiNR0v1apS4K+pU0RLLZofQPS+uqsr
         RGzCloq/dhSvRdmRofkGCgQoU29S+jeBBKG+XheQkJ/fvuK/flHVg7GdR+L3putvLX2m
         4m35GrjI5sbY64xJJddtJ353gs1PsnOdPA3uu6O1ilLKN/JtBZuK3Lw64xHAFTFxrvhE
         EZKYA/Xe+yd8D9wrVraDecct6nsPc1clT13S/OaoVoV1JydbRhp9Y/KQ1k3px2Y29LzR
         6Vqw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id a18si108919wra.0.2020.03.17.05.23.11
        for <clang-built-linux@googlegroups.com>;
        Tue, 17 Mar 2020 05:23:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id BD415101E;
	Tue, 17 Mar 2020 05:23:10 -0700 (PDT)
Received: from e119884-lin.cambridge.arm.com (e119884-lin.cambridge.arm.com [10.1.196.72])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id AB8F53F534;
	Tue, 17 Mar 2020 05:23:07 -0700 (PDT)
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
	Mark Rutland <Mark.Rutland@arm.com>,
	Will Deacon <will@kernel.org>
Subject: [PATCH v4 06/26] arm64: Introduce asm/vdso/clocksource.h
Date: Tue, 17 Mar 2020 12:22:00 +0000
Message-Id: <20200317122220.30393-7-vincenzo.frascino@arm.com>
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

Introduce asm/vdso/clocksource.h to contain all the arm64 specific
functions that are suitable for vDSO inclusion.

This header will be required by a future patch that will generalize
vdso/clocksource.h.

Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: Will Deacon <will@kernel.org>
Acked-by: Catalin Marinas <catalin.marinas@arm.com>
Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
---
 arch/arm64/include/asm/clocksource.h      | 3 +--
 arch/arm64/include/asm/vdso/clocksource.h | 8 ++++++++
 2 files changed, 9 insertions(+), 2 deletions(-)
 create mode 100644 arch/arm64/include/asm/vdso/clocksource.h

diff --git a/arch/arm64/include/asm/clocksource.h b/arch/arm64/include/asm/clocksource.h
index eb82e9d95c5d..482185566b0c 100644
--- a/arch/arm64/include/asm/clocksource.h
+++ b/arch/arm64/include/asm/clocksource.h
@@ -2,7 +2,6 @@
 #ifndef _ASM_CLOCKSOURCE_H
 #define _ASM_CLOCKSOURCE_H
 
-#define VDSO_ARCH_CLOCKMODES	\
-	VDSO_CLOCKMODE_ARCHTIMER
+#include <asm/vdso/clocksource.h>
 
 #endif
diff --git a/arch/arm64/include/asm/vdso/clocksource.h b/arch/arm64/include/asm/vdso/clocksource.h
new file mode 100644
index 000000000000..df6ea65c1dec
--- /dev/null
+++ b/arch/arm64/include/asm/vdso/clocksource.h
@@ -0,0 +1,8 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+#ifndef __ASM_VDSOCLOCKSOURCE_H
+#define __ASM_VDSOCLOCKSOURCE_H
+
+#define VDSO_ARCH_CLOCKMODES	\
+	VDSO_CLOCKMODE_ARCHTIMER
+
+#endif
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200317122220.30393-7-vincenzo.frascino%40arm.com.
