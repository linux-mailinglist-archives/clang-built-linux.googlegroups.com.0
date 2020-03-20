Return-Path: <clang-built-linux+bncBCOYZDMZ6UMRBO5S2PZQKGQE2C3IXWA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x439.google.com (mail-wr1-x439.google.com [IPv6:2a00:1450:4864:20::439])
	by mail.lfdr.de (Postfix) with ESMTPS id D8B8C18D194
	for <lists+clang-built-linux@lfdr.de>; Fri, 20 Mar 2020 15:54:51 +0100 (CET)
Received: by mail-wr1-x439.google.com with SMTP id p2sf2748660wrw.8
        for <lists+clang-built-linux@lfdr.de>; Fri, 20 Mar 2020 07:54:51 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584716091; cv=pass;
        d=google.com; s=arc-20160816;
        b=YKGcBodQbrEDKl1TW0JV/1xf4G2D7tf6etQ4vcxu2ZMShXZv79nkKjG4jeWGAhGI20
         7QzN1ygueM/FAtM9GPCtVKAWIFkM5d928kelCt5Y7Zk1WbaaAd98WTG+b2nilhpgAAv5
         edv1xNYjzbil2lZcinQ9fswXZ1g5iQyONvvqQYCm3245QGyj/0b3R/dMKoz0b0ZMGLen
         CHi33Payxtv1HRh/XOs0x+ns40ZicRVwPY6tiA/rQgy1nDn6eoxrwC0cIt56jFkm2Rht
         AR/YxpzZFL07z9un04rwJmpQsGMnZr5jA7nN5llDGJGtOku3He8k68AXn1/c7iGL5KoN
         PLpQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=th9n9O4pOMz0LdPayfU2z+oslNN6vy+NOrISTUkrfbQ=;
        b=THGySsXU6KW5NscJFWAJ+BamTq+5D/Sw0QvcAf165XknUxliY2wyEcOEPxC/dKC6VN
         aV671iVtFj0Fc77sat1KIzWDDjJrmDhXsAw87xSba2bpDsPI9KXBtIwQnWdF3s89362H
         tRrT4z7q8nS2Ns0qgCRa7+9LgOfNKfogmijV669dzORxA0JxBSQujQ+E9GSrsOSuu5ol
         Il6efcC22pLq5p9198B18YLvZ/0ZpGwE4geJcvexKuUuFrmXGqy39DSZH8jHijJcn+HX
         hWUPN2epCk1Ede0A/PpreeazWdMWgjGHVB6/zXegdEIvLwurU+JobU3JTVTbex+uIaKM
         Wn1g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=th9n9O4pOMz0LdPayfU2z+oslNN6vy+NOrISTUkrfbQ=;
        b=kr4m7lUHDzs6+KL1Nwk1GeMcW2PVTokLVHlsUlZR0KmVRtZ1cnR80zjzbpTABzHqsM
         SOvWlw6izgF9H6npz5HjfFA5FF4VRf6DkAntqPGB6aBD5Zssh+l06le22kjsXdXuoWgc
         JlIpBBOA73QQpFrlS1uBydemIv/XPdqympSgGkT74usT9pw2WsKcHquXV+Qz+GfaQteT
         2VuQS6QG+DooQBjY3VlLXzFfywIQ063zynpXhLmGdi9k7f4ju4T5pE/OguE8CCZ5c342
         lHRm0RT8nyMSlNHZbKnvO6ms+8c5LEWo9CGgPGIKuv3o6oHBaRQAriwhmmc4+DLeV+uV
         50+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=th9n9O4pOMz0LdPayfU2z+oslNN6vy+NOrISTUkrfbQ=;
        b=nmtgLIQQf318LlxUPFMPxMB0CMVGzPd4Ot0cqvHB4UEgsu5PxClt/fxtRV6U4vQ4uM
         315lK5y0hVstBF1Kcx/s0bzuADbrdzn7E2qOEP6WvOBsrwFZauREup3AZ6zsMv+h53dT
         aS9YwQrJIhB06qlM++l0rOdz1RklTWwlbiigP5s10HI8q8hidB3NcEvaMspYXWLO3yxr
         Bsax5EJfAmZIQFn7PDqb+gpGHzTvZTIHDvYeaqeifbSZ59c8UGfRQbC61AQvqRPXouYy
         EG01qopunF8gSws0HAXNzvV7dK3K7l3Bk0HRA4uarqB/1UGzhbDJwMZbpSALes05K6rl
         fk4Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ2xQv9mDNlQ5I6QfaX6AidSQ2DxeBorHRfjvJRchl0apmYnpheE
	rYu0LIpHDKlZjIBVizQUbuc=
X-Google-Smtp-Source: ADFU+vtDqPqnoB3NjjCiD9n6pu4uG4rADm/eQUbilu6DiLO6p9BJOIvXV3AOtWXBk4AlQwwdWpWr9w==
X-Received: by 2002:adf:bc87:: with SMTP id g7mr11702783wrh.121.1584716091583;
        Fri, 20 Mar 2020 07:54:51 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:afd4:: with SMTP id y20ls2637398wrd.5.gmail; Fri, 20 Mar
 2020 07:54:50 -0700 (PDT)
X-Received: by 2002:adf:e345:: with SMTP id n5mr12135703wrj.220.1584716090782;
        Fri, 20 Mar 2020 07:54:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584716090; cv=none;
        d=google.com; s=arc-20160816;
        b=E7YjD8RrHw9YC03Ude+FvT30xI9Gmlek7uFnIR8t/+/S8ZebGp0DGUqT/h6jRAVh9f
         VPOKHrZ1P6QIJhsuWQq7E7tO7V0ftcKJDKp6hS91p1N75PbrT2bDu9rVAp2LWFMOMQct
         5IwdmjYn2M6yUjtuHnNxKxThvuxQLCVljAt+ZE2J6uG1vIy25CEBntRW2FnCxH4BLzLr
         4n3dh24P+iNwZ4Y2YFo34vuGmsLpCEk828M/CLWK8KttK8yNyijZqW5Fikc0/aqahnKU
         cH/tWIh6cG8vAzOsJvqD9LOTfhyxcVtTOa2xaq9cTT16bH/FFr19pZmLzrvy1b0vM5K7
         NMGw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=ICsWyN0LjN9OUpR7Yvv/gr9ud1Xpvj3nUEyUD77apIs=;
        b=oM3OoPd4738ke2lU0F3a1XBMAmEtI/5GEO69hgqFCxU1BUOhKUYSKI3y/O6369HTnX
         NNdHfH7K9K8NEyUVjcRSj6Td6LYrG2ektcne6/yRoREt1Fp5ER264ZthnQuUmsSu+Jea
         8evw//qI+W9Q+mIXRkfrQ5njXG9R/9vX5wEPltkpomxN+EwtrTlnTFNgIFp191/+I0Bq
         m0QWcZsPkUZBqxUmJE2JJ2r6e9WhylajlXra8fA/JODEkCl1zC+5mznwH1XgxQZHIeTV
         WiHYc9C48ORciGUDRuBskTKbjUT5E5W704TQepCv3GyqHznChfrrQ+Dv7p9DxsWsqmou
         hp2A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id a63si112999wme.2.2020.03.20.07.54.50
        for <clang-built-linux@googlegroups.com>;
        Fri, 20 Mar 2020 07:54:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 14292FEC;
	Fri, 20 Mar 2020 07:54:50 -0700 (PDT)
Received: from e119884-lin.cambridge.arm.com (e119884-lin.cambridge.arm.com [10.1.196.72])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 1D5CA3F792;
	Fri, 20 Mar 2020 07:54:47 -0700 (PDT)
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
Subject: [PATCH v5 02/26] linux/bits.h: Extract common header for vDSO
Date: Fri, 20 Mar 2020 14:53:27 +0000
Message-Id: <20200320145351.32292-3-vincenzo.frascino@arm.com>
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

Split bits.h into linux and common headers to make the latter suitable
for inclusion in the vDSO library.

Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
---
 include/linux/bits.h | 2 +-
 include/vdso/bits.h  | 9 +++++++++
 2 files changed, 10 insertions(+), 1 deletion(-)
 create mode 100644 include/vdso/bits.h

diff --git a/include/linux/bits.h b/include/linux/bits.h
index 669d69441a62..a740bbcf3cd2 100644
--- a/include/linux/bits.h
+++ b/include/linux/bits.h
@@ -3,9 +3,9 @@
 #define __LINUX_BITS_H
 
 #include <linux/const.h>
+#include <vdso/bits.h>
 #include <asm/bitsperlong.h>
 
-#define BIT(nr)			(UL(1) << (nr))
 #define BIT_ULL(nr)		(ULL(1) << (nr))
 #define BIT_MASK(nr)		(UL(1) << ((nr) % BITS_PER_LONG))
 #define BIT_WORD(nr)		((nr) / BITS_PER_LONG)
diff --git a/include/vdso/bits.h b/include/vdso/bits.h
new file mode 100644
index 000000000000..6d005a1f5d94
--- /dev/null
+++ b/include/vdso/bits.h
@@ -0,0 +1,9 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+#ifndef __VDSO_BITS_H
+#define __VDSO_BITS_H
+
+#include <vdso/const.h>
+
+#define BIT(nr)			(UL(1) << (nr))
+
+#endif	/* __VDSO_BITS_H */
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200320145351.32292-3-vincenzo.frascino%40arm.com.
