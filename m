Return-Path: <clang-built-linux+bncBCOYZDMZ6UMRBM4CYPZQKGQETNITUJI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33e.google.com (mail-wm1-x33e.google.com [IPv6:2a00:1450:4864:20::33e])
	by mail.lfdr.de (Postfix) with ESMTPS id 75D421883A2
	for <lists+clang-built-linux@lfdr.de>; Tue, 17 Mar 2020 13:23:15 +0100 (CET)
Received: by mail-wm1-x33e.google.com with SMTP id n188sf7081787wmf.0
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Mar 2020 05:23:15 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584447795; cv=pass;
        d=google.com; s=arc-20160816;
        b=uj8LHI7Elwqcqv+qAkOPGHD+u2+LlgxfWWN3McAkSYa5Fxb8+M/SLGtlhK1du7K7pP
         T501tZV08/DhXGvmz0AprUYuAcSXVPTOQ0I9Ecf4EvMiPcVPPPnlXucKH5xRsk5YP2eQ
         UkQUFGU7a0NJFhw/YKNbQyQlPPtarHzqCdYow12YqZgfjQanLzfHYAuiX1s+nww/Ti6d
         4JHNJg8bl5DIS22nIbSfmzpchmnly074rqdfbrLslxnkhLTwMoNUkhxyjjMMNU27C/is
         hPnd0dXFUnG6tXeuWGVijnRCdopBBIQLbVe1uZGY1u5qXF1j8/ucsMzpQUmiJ5NguM0K
         IvFQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=XkBkpQCsI0DF87zs5M/KNKgCkn6YVo036Ea34Lut8X0=;
        b=lfGMf2QHZNNVNb4SUToGQF1osWPWIzcpXlUT0pjs8gnyX8Azi8g+GHp6aMDOLECd/I
         Elh+2gnY/CCyK8AeOGEJpBAhjm82Cpy+wz7iGAEWENZIqCfXriUZfHoY7Hiz4HaEmLyW
         xa/Ua9xw7ASAZbiM0YY8lK5M6y6hh5wxpVr+qLbibg803FVKZALIKq0QwCzsxJgMJMN4
         Qqe64QQm3dBTInwlTZ5WfeoB/voytMDJEJx9bwaneHo2RYAQIrDhboOQOZDsUixKSg6a
         qSr2YVGAu4y7ojLxOS13tZhefgSVOywnCVJPjlKE1wYo/mBUnTdR1TNLc5CZUdUci0cY
         z5JA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=XkBkpQCsI0DF87zs5M/KNKgCkn6YVo036Ea34Lut8X0=;
        b=obHne3SM4kolIb9LBf5PZH/SE/cN2UNXHAzvSvbVrr1RROkWoAW4jHNug+cJsQffCj
         kd6BWiiUaFa3NOoqhh+cxQoyXjoK0kuq+z1eF4e6TvUifiwQFhlUb+kiLzjgGasKw2Va
         t6NE8OLMJcPVSSa1dAPDxjTwrZzSYDiiuhrVZHS6V3Zif4+GanHzFXHS4sDBmvjIL6xs
         9i1Ggx6FTpN+Z/nTP4x20RA75FnJ+i2dBjpbELwVJmfHGBj/EP9T108KI+H0HKekX6qm
         +LX+SfbtePCUsH/Lz4IR1Bg8f+qKE0/nBNwIPnA3E8cdjghl2yNaiF28H2UYpvdnhIVr
         TsZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=XkBkpQCsI0DF87zs5M/KNKgCkn6YVo036Ea34Lut8X0=;
        b=hcQJIpLyp9MNuXFmLjjrzxjZqRdheRErvDcD0frbs2RtuuxAj3cqECMe4Bg9AJ9EWw
         9D6PXGqBuWq9h03/bKzB4b3BKd/EWcu+zYuchpXiDC1CKM001Whk9EaQh0wJVuG+rNYF
         rhy/ZX7tAzY2WCDdyAEZhkP6oigLB2afbPTChgbh+44/Gil9dl5QIEB53T9K49CO3ObN
         1pD/c4wl5ILsf8lLcqr7oCFSM0V0jExsrMSuO6uMeZ/o49PnEQ0Vs8nGcFse9l+nmdWt
         tUsywlVjt5jPPfgV9kpjqtI0UfhiGjOGKx8DCu2wkIWdhA/UACsxCQdPgB/TAxduWLd0
         m1oA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ13vYnxnUnJ6Of87Xut8WgF4IIEOXKu77r/tyOnAARQbs5bWaRw
	X/c76BrBezboEaQjNRIjl4E=
X-Google-Smtp-Source: ADFU+vt9zrBE40zMc4HEMC6aqBfqEX5tD4r+D+owNdTrUTh/enwBdKrh5/tKUxIYqmF/V3Y9BEJKkg==
X-Received: by 2002:adf:df04:: with SMTP id y4mr5748594wrl.318.1584447795223;
        Tue, 17 Mar 2020 05:23:15 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:498c:: with SMTP id r12ls11062518wrq.10.gmail; Tue, 17
 Mar 2020 05:23:14 -0700 (PDT)
X-Received: by 2002:adf:dd8f:: with SMTP id x15mr6138441wrl.201.1584447794746;
        Tue, 17 Mar 2020 05:23:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584447794; cv=none;
        d=google.com; s=arc-20160816;
        b=pzWCJ91CMUJ1AivEsM+RO7FBgvdK0E9eq/PMPHhNr9fHNUo3eYH2jdR9SuthpWcyuU
         NNHFrXABYnAQv+Yf6gUoAi6QFMJrZuT4xBaE2v35/ARCCgRtRrERCiOrZVQrNO86bCK0
         +hsGUtdY3vpgKTX4nkOKB3Rl2fJ3b91X6aJ8gwlnikNmxoiZxvTJkKAjKOAZRB/dQXSh
         SV9Z0yXWhh4LwtkvWQrOntjljtEtZQrxXqIlzV8ugf22LGST8BKWmuSDJB0loZ6+gL4R
         tvNR+o0Qj0udBzpUYnyeY9mJvwBqh0/aPY5lcByDqSW1YD5jWKs8sCMPzB3bfnFrdfZk
         0Thw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=SZJr9Zjb62PxdiJA95xJ8NZ5YyNie6bsqUUXkvVPpeQ=;
        b=fqwUe4HBqkDH1PkNnmZEdhiTrz1Irsnay1U2LQS5DtJke3MosEUX7K18UnPTW49eU/
         JOStSmDs+9w+5d3rUnMKqs6roaBIaL1EZEd4uaWrGDhC2V+ief2KQs+et+/vLgP8wt07
         tERVueDZ9QrbmiFgoEwJ+jlOPCKCQLO7RU025Bqu/UZIUTigRhNF90/FwRmQ8SOxzDgP
         mEDSCGj/S6MQcbMcWaRuzn+HEd7+2BMOs+pA/DPArtwGV0lW/EK83hrORLMjju+EoRbk
         di7zJms8LujND4lpJyny+9NRjzBrRR9QhQoOsnH9FtT58x4tjEbj2Fz2brHnQWTfvqag
         qi0g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id n7si1103136wmc.1.2020.03.17.05.23.14
        for <clang-built-linux@googlegroups.com>;
        Tue, 17 Mar 2020 05:23:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 0EB6E30E;
	Tue, 17 Mar 2020 05:23:14 -0700 (PDT)
Received: from e119884-lin.cambridge.arm.com (e119884-lin.cambridge.arm.com [10.1.196.72])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id F1EC63F534;
	Tue, 17 Mar 2020 05:23:10 -0700 (PDT)
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
	Paul Burton <paulburton@kernel.org>
Subject: [PATCH v4 07/26] mips: Introduce asm/vdso/clocksource.h
Date: Tue, 17 Mar 2020 12:22:01 +0000
Message-Id: <20200317122220.30393-8-vincenzo.frascino@arm.com>
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

Cc: Paul Burton <paulburton@kernel.org>
Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
---
 arch/mips/include/asm/clocksource.h      | 4 +---
 arch/mips/include/asm/vdso/clocksource.h | 9 +++++++++
 2 files changed, 10 insertions(+), 3 deletions(-)
 create mode 100644 arch/mips/include/asm/vdso/clocksource.h

diff --git a/arch/mips/include/asm/clocksource.h b/arch/mips/include/asm/clocksource.h
index de659cae0d4e..2f1ebbea3d72 100644
--- a/arch/mips/include/asm/clocksource.h
+++ b/arch/mips/include/asm/clocksource.h
@@ -6,8 +6,6 @@
 #ifndef __ASM_CLOCKSOURCE_H
 #define __ASM_CLOCKSOURCE_H
 
-#define VDSO_ARCH_CLOCKMODES	\
-	VDSO_CLOCKMODE_R4K,	\
-	VDSO_CLOCKMODE_GIC
+#include <asm/vdso/clocksource.h>
 
 #endif /* __ASM_CLOCKSOURCE_H */
diff --git a/arch/mips/include/asm/vdso/clocksource.h b/arch/mips/include/asm/vdso/clocksource.h
new file mode 100644
index 000000000000..510e1671d898
--- /dev/null
+++ b/arch/mips/include/asm/vdso/clocksource.h
@@ -0,0 +1,9 @@
+/* SPDX-License-Identifier: GPL-2.0-or-later */
+#ifndef __ASM_VDSOCLOCKSOURCE_H
+#define __ASM_VDSOCLOCKSOURCE_H
+
+#define VDSO_ARCH_CLOCKMODES	\
+	VDSO_CLOCKMODE_R4K,	\
+	VDSO_CLOCKMODE_GIC
+
+#endif /* __ASM_VDSOCLOCKSOURCE_H */
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200317122220.30393-8-vincenzo.frascino%40arm.com.
