Return-Path: <clang-built-linux+bncBCOYZDMZ6UMRBNUCYPZQKGQE5FRTGGA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43e.google.com (mail-wr1-x43e.google.com [IPv6:2a00:1450:4864:20::43e])
	by mail.lfdr.de (Postfix) with ESMTPS id ACDA11883A3
	for <lists+clang-built-linux@lfdr.de>; Tue, 17 Mar 2020 13:23:18 +0100 (CET)
Received: by mail-wr1-x43e.google.com with SMTP id p5sf10510063wrj.17
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Mar 2020 05:23:18 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584447798; cv=pass;
        d=google.com; s=arc-20160816;
        b=ggMxFbS1sWsaTlkDQq01Z48S0b5SDCgBh6z/ow5kueQZeUgdYFyRCXJhjpVjW0N1Pg
         wFh8jS7ZbgKSmrzeG/sQBquO+o2gD2zVvgMjTlTjBK7SdwrsOOfox8a648l4h9OSdLwU
         +EDjUIP02wwdOQRQWCkmXmuvrOPDJ4tmNPD7dKxjwcK5drdDi6+8uIbNUVsIZicvrUNs
         98deLqD9tmXQMAYfq2oNsW0d3bx16meJkmrw7foPZwmIdT5UnPHA4xeRkntdctPAmHbg
         XZqj2Q04WmA+KN8af8uHSlynCMjeyIOPICX05MypCjyO3FTRKC9QqWonnnWbfunvbd+y
         s9zw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=nByzV0DektlgMdPRVQu7c+q5p3RXbzenKkoipu5QxYo=;
        b=geLmi1dSzK1G1uX/OGxfcCL4XL884BnAGsVfxMjDU6T8qrFL8U+v4JoVxn9JHm8Opl
         lNYxfJ41p4w59HRXY8kbXyBRmoTbUxEMVDH7r1zrS1Cjg40vUuxQNZE/Ud5l/5Nr7xWX
         zcvBF0fy1bgNppcivuh9Dj+noXT20kvjG4wmuZuL/fLl3ywh793anM2xHrTuogDXaD3C
         MFh7Z8KjoXMuArWajmILJWPcHmSz5oEiLiQpC66c1NUfAV6VFi70SCJ6StMT1BQ9kPuE
         B4YEdItmbbbXEl4/dX9n0oFrvoKhjEYtCECQi6leH8DOb5JXihMxRl6yDlV/kgcG8lCG
         DIXA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=nByzV0DektlgMdPRVQu7c+q5p3RXbzenKkoipu5QxYo=;
        b=nfQIE3E5hg4gjehVyUyFWLkgQCGjjzBcMwYYjOtmQRojsmwuIYAlt6/omSRP/edZ0b
         6EBMNlPp+LJkq49JEzyCduO2+Vy2YFMU2y3F3S297tsE2ReZnWJI66uYc9GRv2n2FapT
         mlucWLZdDl+vieZ+ZXE3PAQBmhnqDRJIwHMhGZ44Kp29bN8jQYCses6PJvQTbc9c78nD
         hm4/JjlDt0SJX7pfnAu4VkaBGDeA5+jfExerkJTKf5urHmJy/lKHtnD54qXJNpXesdP7
         9LnwM9VRXriPqtv0ug7uX4xZlRe1rZCab2+W3YT+0SBm4KZZSnLwTCel8OiFBrseB9bS
         jvmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=nByzV0DektlgMdPRVQu7c+q5p3RXbzenKkoipu5QxYo=;
        b=T6Aq3juopiA/wBm57ZUHJ26biyNgLLesB8o6cbJrIQ9ipK75BgB9YNjab+j+/B0Oj0
         LB7dspZQ1Qhtg5yDv7A2U8xv35KjeRVsK8RBGrObmeWV/UID79GlbkVk8B1JbuoIQWwb
         hr8gu7Egwnb5e7RrwlhKdJtXuSGS76jrwBvmK8oSrd8PiXC4fZ2PJPWmTVdu2nZM7juW
         nwt7n5mnfN6NFUzZHXpaN37R5R6/pFxoEUyE8ae2Z4VKqTuQI7wOk5bvKGExcE4SvVqC
         uC5NgDIdyN/QWKf3zMqPIhqx73szNqL3K51KKvuAi58niEeLv8GVz1tn8UoDsL4c+Ibs
         YhoA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ0Y8pga8BoKnC3ix71w38DaA2qCGljxHkZxNc1rQ2txWBz3vuuA
	zHVuVCXbsJf6j/sYIS3P2cI=
X-Google-Smtp-Source: ADFU+vvKaMWuIUU+BSIOgFUTT7y/BMKXduOypjBUFeO+H219eNhe7muaCTaRSzAOt0ajk9csXBHG4Q==
X-Received: by 2002:adf:b307:: with SMTP id j7mr5760672wrd.128.1584447798429;
        Tue, 17 Mar 2020 05:23:18 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:bd82:: with SMTP id n124ls35102wmf.2.gmail; Tue, 17 Mar
 2020 05:23:17 -0700 (PDT)
X-Received: by 2002:a7b:c308:: with SMTP id k8mr5322290wmj.40.1584447797938;
        Tue, 17 Mar 2020 05:23:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584447797; cv=none;
        d=google.com; s=arc-20160816;
        b=o1N3yLZzCKwKrQFmMJDBWlpHuGq9gobqjR009Sw3dfPFiW/PIPhUA+wPukPdgu5WKL
         KpKqYBjyQ2JPdTMwjY3FsntTcJJ6hED5oAzlQX3makvrTMWAoxxFpqIggt/4EL+uG9p9
         Tm3uwitSQo/fK9UsSPk0RANi1sv7bTj/R2dDXxeMxy8kKoTl7RVR/DeVbIbeAPHRs1gw
         d3u9PyfFr7UMk7KWqb5wqn15a3y+AzK3HHYX0qzVy259AFJo8pBMxSNhI4oTxNnyFrWV
         VvevTeehJIyCIo8YClEjsonPu3AMDKYzD/892c81wPlFX080KcxY0b0qcYUbEUYFpg2F
         lIcQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=ST6mJ/iSu2gnHY0i17K/GYIhkaqRLsdYAjmfAJ68+c4=;
        b=ei2GVO/T/MV/7M/oiYjXY4Z9nvg5tT2hi2bgrQl1L6eT6UnZkskrURFP8IGFf2a16E
         8BnBBBN0/pApKuFAl3kcbgdkTy4m4LdHLVqyOnu5PcpJ4t+G2HP1mu2Qlp4FGLj5HiAC
         apMPjlL73jj4P66URELfdcDvWcO8wEsrzX318COTaswdm8N2CnAaq1y0nD53IyfsogR/
         cqPss3kKzb4WfTYFM0oqMQ+kDn0B0W8JtWcnorqFdHy0ocWr3r0qz/QK/PPN4+E68eW1
         t48+6XuMA4cO0Oz7Dd+EiqmvSnx5KTK2Crk8YcF3V39L1bYGVJ+fivDScu6MVSUva8fF
         B3ag==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id n9si149413wmi.0.2020.03.17.05.23.17
        for <clang-built-linux@googlegroups.com>;
        Tue, 17 Mar 2020 05:23:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 39ED3FEC;
	Tue, 17 Mar 2020 05:23:17 -0700 (PDT)
Received: from e119884-lin.cambridge.arm.com (e119884-lin.cambridge.arm.com [10.1.196.72])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 443C83F534;
	Tue, 17 Mar 2020 05:23:14 -0700 (PDT)
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
Subject: [PATCH v4 08/26] linux/clocksource.h: Extract common header for vDSO
Date: Tue, 17 Mar 2020 12:22:02 +0000
Message-Id: <20200317122220.30393-9-vincenzo.frascino@arm.com>
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200317122220.30393-9-vincenzo.frascino%40arm.com.
