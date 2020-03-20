Return-Path: <clang-built-linux+bncBCOYZDMZ6UMRBYNS2PZQKGQEKQ4GBOA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x538.google.com (mail-ed1-x538.google.com [IPv6:2a00:1450:4864:20::538])
	by mail.lfdr.de (Postfix) with ESMTPS id BDD1E18D1B7
	for <lists+clang-built-linux@lfdr.de>; Fri, 20 Mar 2020 15:55:29 +0100 (CET)
Received: by mail-ed1-x538.google.com with SMTP id b100sf5252566edf.15
        for <lists+clang-built-linux@lfdr.de>; Fri, 20 Mar 2020 07:55:29 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584716129; cv=pass;
        d=google.com; s=arc-20160816;
        b=ZZWZCPMqcsutoYRkukeSxPS5c8gXJeaPxyyIB2/F/1YbqzehqYgsucAsFlJ9hCUgau
         L6T/gA7t3XWIHEa/S0pCuJSIbSjcx8Wm6v36YP6f2rlvQtof6cCKkVcbu9tSrtOkT1Ap
         A8U2932tDHAIjXwEuCDI4wW10VvWUeDilg0EoLD9rTcgQbM3WmZFZXp+Ic7gdlDisou9
         8z2bmW+JI5OSw2llDbFfOvJIHlUa1N/gKTNjmp9F/rq4O+Br8OwCrS7OTsW1HsAGXnZJ
         oFyBqm+Wlu+lBj+S2FuYiIrAl4JA5qgGsOFZ9S8Dbs7262FyWyZDUSpC/Ipp/SA3brgk
         LS4w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=E2Dyj/8R6Nf1k9wK4YfOb2IIX7Qh1+JjgZJ50d5tbhY=;
        b=yy1uNJBIH0JxaDD2NbAfHQ0O6DM2Yae+iu9JdK2+1l3bM45ryXK/zRD0BAKYTtYFRo
         RgZjQI2IiL50Gfnz5ZSVHWFGXvnN0hJA1AwTiiDFy3quLpTi7+41cFoa3hevSSpE2A5w
         eE1YGwDfv5AnDz3HmSpG4Bp3tIdGIEwy09QU+j0jm8DRm9xjPUKJWgkaN7o5QITE6Sk2
         l8uDsUHcm+9fMvsNFiijTDoqf8Wlvssois64K2b/KcEsmMaQ4Q0Eh6CMiw830SCIimvy
         di1681ZCwYd7TqqMln+Oa4ZsULkAIzQPI6JF++GjGmPXTc03gx7JPD8DoTOU8FGIb5yD
         4eLA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=E2Dyj/8R6Nf1k9wK4YfOb2IIX7Qh1+JjgZJ50d5tbhY=;
        b=IrZ9BCevwm6mTpznuV84l0zE2dGmUpGSvfLx9sgOkHcLGGGtH8Q4iLtFVcd9NV4cSx
         08QcSokMVEZFj5fbRrZynZrby8SqqADs5/Y5uEzs4R9Mf36uiYAB2StlnPIFOT6wSNYS
         A5vXLkSAeGKN8HM4H9Rk+v4SjYx37fDJWWyH9omjn6ZzEiDxXnISBcA5b745BzW9IHIm
         KaiEQfIRUQaTKZ0i5dddmP+c9kBvtNxfTAtnPS5u4PkO5fNoGuchm1Xpfm/FwmCOgvbd
         gMIr64YX0l1YJMVNI65Xv6rizADR6nr2YRu1uE77LjlUFnwowhVrfbPhKGMHe/VcCRzA
         L5Pw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=E2Dyj/8R6Nf1k9wK4YfOb2IIX7Qh1+JjgZJ50d5tbhY=;
        b=UIxRowQVJOI8CFGJ8DdxjvRSKRPBgm1zy4SVJgtCwEtMuo9llfZ1rgspeumz4L6610
         qHcXJOm+jHBSjwCsQH/HXT3sYJgu2g7nOdL01vfWiGLN5GvzmeGUJBxaNFBro4xrovL5
         Ojq3kj6ia9tWK1RaJrx0YfANkpO6ykWiDUscpdE4bFfK2M0N2AmxqnDqWuG+CRtM80nF
         bTZINchqroPKYoG+n5lMZqSAkfGyJ2pCC6WTAcFA45D2OYq9GTx91mHZIVN3x/nlb94/
         PFQGldNpD0StGbk2BmXZh55kOYYNC2MUNikgIgzd/aBijAYn2j6Bn7449wYJLbEZEXdh
         VHJg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ0k23iTJED4XNjRZsMtnrc/+w32J3QQfJWYTl+cvPpaucvTi1jY
	kA28umLATFdmt6MusfQ60io=
X-Google-Smtp-Source: ADFU+vuoNP8O5XkOcc08veCKAnxCFG6fANyY8BmR0dqkophZZt9AxDymKdnfyOJYnEhYneLX3x18dw==
X-Received: by 2002:a50:c8c2:: with SMTP id k2mr8185561edh.149.1584716129504;
        Fri, 20 Mar 2020 07:55:29 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a50:83a6:: with SMTP id 35ls3311468edi.8.gmail; Fri, 20 Mar
 2020 07:55:29 -0700 (PDT)
X-Received: by 2002:a05:6402:2030:: with SMTP id ay16mr8488032edb.226.1584716129007;
        Fri, 20 Mar 2020 07:55:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584716129; cv=none;
        d=google.com; s=arc-20160816;
        b=RzP1OYzxLLx71aTt57tCFK/9Wx6KT3FabOmkqFmS0+2LPBZShfaXyIwP4qMeTTSipI
         WbpPO7S2HFC5dtzcw/rL2Fi7AQTz7clCQhaRfiGYrjvEgXbQ54gt0RRqNzFNQRzONZzt
         vIasC0EKDe5tlV1OwkGdTc/PNTVr4zEqOYqotmTtFfraNkM4bDSw3smQj7famp1B2rId
         oRaDmlHHxFCcBNaEHT0QQ2BW8eVs3rohAqMexsJiKNr2+rbvyYOPtEFa8vxizMFSJL88
         DyoPZrqLz0gMvv/UdHhtJ1he3xC2TLvumuW0Yi14JtLmWngEHxWoiAwj48p1sRdo5ejv
         Nexg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=tiW2O59no9+QJFKPQIc1RP5hT/jS/N0FxsM4s5QO004=;
        b=YhL8ogbya46AO/X0LbiOsEt5smtfMxsY6ILrAm7fTyZNUlpOgvSLi1TyvDbGZOlH4O
         nB+EoByLP9UG+dyza4G1HMw/U33Oh+YrN0a+pc9E1A3eixbnyl+tYucWrRCs50E0881D
         P/n5ZiqjunaIxZOa5qOd+nFsQwNcGP82qydm2VNQtyU9hBwFJA7hTvubtxqdEUf6hdly
         hQVgmfITpXcjzZ0Yc5lZ1i2XN24ztLBUUBoUdV4D7lX1oUcAvp7O6eRNpd0fII8ZnYcX
         ExcdjdUlgoZZBf95ZT+D5uNwCsgkx34Zb2dsA4K2NY90GHOYOTnkhcggvOv7wznOxZDR
         psgQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id cw13si326865edb.2.2020.03.20.07.55.28
        for <clang-built-linux@googlegroups.com>;
        Fri, 20 Mar 2020 07:55:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 58D941045;
	Fri, 20 Mar 2020 07:55:28 -0700 (PDT)
Received: from e119884-lin.cambridge.arm.com (e119884-lin.cambridge.arm.com [10.1.196.72])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 646263F792;
	Fri, 20 Mar 2020 07:55:25 -0700 (PDT)
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
Subject: [PATCH v5 14/26] linux/ktime.h: Extract common header for vDSO
Date: Fri, 20 Mar 2020 14:53:39 +0000
Message-Id: <20200320145351.32292-15-vincenzo.frascino@arm.com>
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

Split ktime.h into linux and common headers to make the latter suitable
for inclusion in the vDSO library.

Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
---
 include/linux/ktime.h |  9 +--------
 include/vdso/ktime.h  | 16 ++++++++++++++++
 2 files changed, 17 insertions(+), 8 deletions(-)
 create mode 100644 include/vdso/ktime.h

diff --git a/include/linux/ktime.h b/include/linux/ktime.h
index b2bb44f87f5a..1fcfce97a020 100644
--- a/include/linux/ktime.h
+++ b/include/linux/ktime.h
@@ -253,14 +253,7 @@ static inline __must_check bool ktime_to_timespec64_cond(const ktime_t kt,
 	}
 }
 
-/*
- * The resolution of the clocks. The resolution value is returned in
- * the clock_getres() system call to give application programmers an
- * idea of the (in)accuracy of timers. Timer values are rounded up to
- * this resolution values.
- */
-#define LOW_RES_NSEC		TICK_NSEC
-#define KTIME_LOW_RES		(LOW_RES_NSEC)
+#include <vdso/ktime.h>
 
 static inline ktime_t ns_to_ktime(u64 ns)
 {
diff --git a/include/vdso/ktime.h b/include/vdso/ktime.h
new file mode 100644
index 000000000000..a0fd07239e0e
--- /dev/null
+++ b/include/vdso/ktime.h
@@ -0,0 +1,16 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+#ifndef __VDSO_KTIME_H
+#define __VDSO_KTIME_H
+
+#include <vdso/jiffies.h>
+
+/*
+ * The resolution of the clocks. The resolution value is returned in
+ * the clock_getres() system call to give application programmers an
+ * idea of the (in)accuracy of timers. Timer values are rounded up to
+ * this resolution values.
+ */
+#define LOW_RES_NSEC		TICK_NSEC
+#define KTIME_LOW_RES		(LOW_RES_NSEC)
+
+#endif /* __VDSO_KTIME_H */
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200320145351.32292-15-vincenzo.frascino%40arm.com.
