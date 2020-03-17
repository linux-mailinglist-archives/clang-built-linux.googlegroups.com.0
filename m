Return-Path: <clang-built-linux+bncBCOYZDMZ6UMRBOMCYPZQKGQEWMEDTMI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43d.google.com (mail-wr1-x43d.google.com [IPv6:2a00:1450:4864:20::43d])
	by mail.lfdr.de (Postfix) with ESMTPS id D6D321883A4
	for <lists+clang-built-linux@lfdr.de>; Tue, 17 Mar 2020 13:23:21 +0100 (CET)
Received: by mail-wr1-x43d.google.com with SMTP id 94sf5924164wrr.3
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Mar 2020 05:23:21 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584447801; cv=pass;
        d=google.com; s=arc-20160816;
        b=IwqIhDBAqOyWyUHBD26h/jufEcLp1BGVR07BfORL5+TN/OM260we69RxrKQkxjjXmz
         xOgYJ+coWDU6EKs/7ra5MTG6dNHN2gzl7lgSrCD7Otekb3EtI1t3TCGXozBQRaY7hw3C
         u88iq0FRYPOD4M0TixYAS/Tc9JLnImttUXxMjwsDybPZJN5mWJdSHfwwwOem26p6vTly
         qeaKP7G4KAQVTGbiflVVGuCwx7eoTRVmgtPLevUh6k2kmmil/qz4WCHcLDaL6ge/r0ya
         D8CQqcasl4CRWfqkXTc/kshngjqzB8MTHdJ5us+BrZNP33uecArGUtDdsKxmjY3yCOdX
         M2nw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=/sX32EV2UzLBHzTEKsXUk6W18p+5Zxaj8ItEqzuiCrc=;
        b=PFuVVWEBuPNUURbGqhIH7E4emry0OEx9WoHet3aOjk+c9nSdsr8afsUH8O18LihDej
         vfmLGUHc6NCasr7z4IvUr6U1BJbRrQ5R4pSLFvGAbmOpYnpRdlzFroqZg0LkJ/S+CXHE
         Y/InLrC2dXeeXJwqVibxrHSi0n21qS6WFujpfTNe7wxfUvhbRi863YULnJkr7cqL5EWR
         k0/LK98ELXsTDKaa5FMT0u2JH104H5rLNOT2A5amXkEVuDew/Jgc22m5RRPbh9NVvxGQ
         kdZoWo+9AxV31MgLq0+xj9G1RDubXfpZ9W9CqYCz1e7I3ZpGe8bUhhJ83L1j0XZQnO/P
         LCWA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/sX32EV2UzLBHzTEKsXUk6W18p+5Zxaj8ItEqzuiCrc=;
        b=GiYVY8O0BqVE2mlw9JvU9edLxny/5RPyE+fK95d0NgTbgXp62RJVSy3DSQ3CQg3cmq
         12jR46CDS409zJDU5roDTcmdnEP5pnmOJtvlPLWzYfcva7n6HeUH2kGHsnYzD/gmTN66
         VjxsNF//4OgkGscdq6ajRzd+aNpA88utROnWg2A9xkgzd6/RcrtcxIlgHGInou3iibEi
         oiY+FQmkjetimSNTItNaZtQNec7Vtt4rRGfMSzypdCuMp6E4fHtvP9UsenZ2/IlaeXHR
         DX1BovLaGYjr4d1Q4SiJ7r+duxmnumuDSvc0zdVC9wZWohV2WIpqzDZzB+rM9hKy3gs6
         Bu+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/sX32EV2UzLBHzTEKsXUk6W18p+5Zxaj8ItEqzuiCrc=;
        b=qDvD+w2VJIxGB+7Mgy/oJJx8qmlEjlAYc/RSvHi5PuwE7hhBvWyP98z/g1d3Nsokee
         LoyQgUe25sAc76AmIqN4j/ab0lv5Z7utp9vwugxlJE+QAhOS5cWnRmRJCxQNwes0utKZ
         5g+6OEgkaIy42bQt/Jl98mRasF6IxfqU46eQmhF7s7HT/bzeWA0qW/TOhbI3t6B9FmGS
         28M7t3tHb6Hx3z73V3KQgGHiRaqQ3ckF8UBDmyoEgaJppzUgbJCNvw4Ni8m//HDTo4tk
         p7o+Ey6/Dgsyb9Rh5nKQ2DMZyVsEplVMYBbGNLx3LpKmcH2/I/4W80DfTxLC9hPeWMUR
         JMLA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ1Bfx4NcUpwih8Qpp1OJKOCCMbLvGH9ep/qU5HDoowkUsQz1FAi
	RmF4OHpOp5r4OsiJZmVv3lU=
X-Google-Smtp-Source: ADFU+vvcRV8dBIOItI7Qs7ZJx0e8QMoIwHNg05TPRcc72YHSb2Fd/bJLp438ottbCDADWQijmyODVQ==
X-Received: by 2002:adf:ecc7:: with SMTP id s7mr5952087wro.386.1584447801656;
        Tue, 17 Mar 2020 05:23:21 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:93:: with SMTP id 141ls35608wma.1.canary-gmail; Tue, 17
 Mar 2020 05:23:21 -0700 (PDT)
X-Received: by 2002:a1c:2d88:: with SMTP id t130mr5471212wmt.68.1584447801095;
        Tue, 17 Mar 2020 05:23:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584447801; cv=none;
        d=google.com; s=arc-20160816;
        b=XKkKyIQseoo1DvQA4s2c8WdI1caTxCqQS0pO05S8P0pRQQBdonSt7JMY0Jh54nryAe
         XfQ1PA7O2VyKpNsQ7d6I4HfISI/1kW39mKZO/KG5r1jYP6E9k1xvngdArh/9PznXMkOv
         INdq94ZenofcnGMx+rB0jOejE/LtlLg0M+weDOyDVkuuUE/mII8MVRGY80JLnpaHlU/s
         NN41DgfDB4V4umjcpuol3x3vxzW5QCixtMLhTu/euOu0hG9Uvd7k9rhUkRupKQRlh3wq
         4g9ahJo+bD+14dOhnHxH04JtLAAcVwgNCbR5mHJkMiUF/3YgsexNvVusKfnMZRx03HRC
         bMdA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=GGEHKhLb+PBbYXFkR437kpZSwfjgehAHnEZn+yWa+q4=;
        b=epeMvGBmMQ27yFJLQNPSBfL9ceiM23uYlh2XlH9LKeqQOlvETNaYmHOM1HxRQR7el/
         4+uzTKNDyTRJCZfKF0DZqi48j8Lr5OgFlERt3vuhAZ567UdxjQfDiPH64PNXiE/yIvhf
         Ne93tcreRu/nEXaIVZZI4yvKfCIemkO+Z3+tbN3SaoSM72WN5GR9S81zvMma/uSUbVQx
         8D31wDypS/hhXtr/IoeF56U9cpDeGUjgDFGfF0ehGhNrdzP0cY4r7y1fF16aN7kQ+VrR
         e+s829AMnl7Lm+Z5ukOfBvH3CYuUhyMVKXY7VexQVGeev8rerw+L9R7P/Eyksfyj/5aH
         Xc6g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id i19si171456wml.0.2020.03.17.05.23.20
        for <clang-built-linux@googlegroups.com>;
        Tue, 17 Mar 2020 05:23:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 65EAE101E;
	Tue, 17 Mar 2020 05:23:20 -0700 (PDT)
Received: from e119884-lin.cambridge.arm.com (e119884-lin.cambridge.arm.com [10.1.196.72])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 700573F534;
	Tue, 17 Mar 2020 05:23:17 -0700 (PDT)
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
Subject: [PATCH v4 09/26] linux/math64.h: Extract common header for vDSO
Date: Tue, 17 Mar 2020 12:22:03 +0000
Message-Id: <20200317122220.30393-10-vincenzo.frascino@arm.com>
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

Split math64.h into linux and common headers to make the latter suitable
for inclusion in the vDSO library.

Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
---
 include/linux/math64.h | 20 +-------------------
 include/vdso/math64.h  | 24 ++++++++++++++++++++++++
 2 files changed, 25 insertions(+), 19 deletions(-)
 create mode 100644 include/vdso/math64.h

diff --git a/include/linux/math64.h b/include/linux/math64.h
index 65bef21cdddb..11a267413e8e 100644
--- a/include/linux/math64.h
+++ b/include/linux/math64.h
@@ -3,6 +3,7 @@
 #define _LINUX_MATH64_H
 
 #include <linux/types.h>
+#include <vdso/math64.h>
 #include <asm/div64.h>
 
 #if BITS_PER_LONG == 64
@@ -142,25 +143,6 @@ static inline s64 div_s64(s64 dividend, s32 divisor)
 
 u32 iter_div_u64_rem(u64 dividend, u32 divisor, u64 *remainder);
 
-static __always_inline u32
-__iter_div_u64_rem(u64 dividend, u32 divisor, u64 *remainder)
-{
-	u32 ret = 0;
-
-	while (dividend >= divisor) {
-		/* The following asm() prevents the compiler from
-		   optimising this loop into a modulo operation.  */
-		asm("" : "+rm"(dividend));
-
-		dividend -= divisor;
-		ret++;
-	}
-
-	*remainder = dividend;
-
-	return ret;
-}
-
 #ifndef mul_u32_u32
 /*
  * Many a GCC version messes this up and generates a 64x64 mult :-(
diff --git a/include/vdso/math64.h b/include/vdso/math64.h
new file mode 100644
index 000000000000..7da703ee5561
--- /dev/null
+++ b/include/vdso/math64.h
@@ -0,0 +1,24 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+#ifndef __VDSO_MATH64_H
+#define __VDSO_MATH64_H
+
+static __always_inline u32
+__iter_div_u64_rem(u64 dividend, u32 divisor, u64 *remainder)
+{
+	u32 ret = 0;
+
+	while (dividend >= divisor) {
+		/* The following asm() prevents the compiler from
+		   optimising this loop into a modulo operation.  */
+		asm("" : "+rm"(dividend));
+
+		dividend -= divisor;
+		ret++;
+	}
+
+	*remainder = dividend;
+
+	return ret;
+}
+
+#endif /* __VDSO_MATH64_H */
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200317122220.30393-10-vincenzo.frascino%40arm.com.
