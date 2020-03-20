Return-Path: <clang-built-linux+bncBCOYZDMZ6UMRBXVS2PZQKGQEZCNNPQY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33c.google.com (mail-wm1-x33c.google.com [IPv6:2a00:1450:4864:20::33c])
	by mail.lfdr.de (Postfix) with ESMTPS id AB46518D1B1
	for <lists+clang-built-linux@lfdr.de>; Fri, 20 Mar 2020 15:55:26 +0100 (CET)
Received: by mail-wm1-x33c.google.com with SMTP id n25sf2468980wmi.5
        for <lists+clang-built-linux@lfdr.de>; Fri, 20 Mar 2020 07:55:26 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584716126; cv=pass;
        d=google.com; s=arc-20160816;
        b=PWk3jLoxD5Fy3Bk3lDfsxXIb4ja5AquzYemoQTUuBo4qXCEVjfTK07astrpPAG+0IP
         5nhUzPToBHDPSTjbaJ4Gla81lYax1uxR3kK43cchPmJFV3O1stst7wBmzfwCfoSIhsWx
         K829JOKDW0qosbtpQldRxLIaCIzucwXT51xfF5WvpySoimqBG/lXfewr0msdQWvvc/+Y
         MwV9QxoX1bNv3Ff7an0WeWGQxdfYPYbGVzFibljGrBggQKOcZuqIehVL16PTIJnwmfvC
         aJCusBp5+NRp+bfMy1cBVnQfbrX1bxjIbuyaIahyzMNLRlSviUTH3NMJ+ftsIB5GqaDW
         49nQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=h4ANbjPy2Bf0HnhpMywAbFWoj7PiG3Qq5nnioTQp9WU=;
        b=0H/5C4ZPCPKLjOkfaj+TXQxQOrk+FVD8PNzI1mJ/eFn4cvTpc4bGeLqVbhvJ1n0QRY
         3xOg+6ZikU2N6H5chvpQwUexz0Wf5ya3vmJsBXyXgMjwA1TqRWbYCsB43h6xcIpf1Pac
         zMft75GHKUY9xNPYK5TpplKTdCQmWGg+V5yC4TZMYFOqwFjTM+52FkQrBvkCr7Hzrsaf
         q8vYBbF/I7at9Er7XrUrEEQK5vutEejEjMdXJyO+5kbBWEfFkQs5hy4z4gB5ws7CKtVm
         O+UPYMM35vqAyUK/6XsstTlca7yYokAFu5fVCkJxJx0P7XzWxX3iIez+lYMu5GNfB/zb
         lIhg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=h4ANbjPy2Bf0HnhpMywAbFWoj7PiG3Qq5nnioTQp9WU=;
        b=LFXitqdBzNZ3ohh3iT+2EgLgLdSYCpAAA28SGrqtxrrVyb/Y3IChy58txQEmfFjYuX
         0Do3fm59FgurGXZhwdjl4HnSuEFylc+ofGloeCGgVslUJJ10fr4w5/1mbqORpluSleAx
         8hsF9fUGA0CZ7JgWxWq4hOdP5q94V/1CLPW8+OAf9+sW/EuW/6DfmoQRc6eg+KHiCyXd
         q+iD9kRP9GM3HJHs7Cq4NOLBb+IM1GzxJGslrEm9/2Dumopz5UPFOP3PZHOrN/bZG4fb
         VxdIhubHjxvZx3rb+a23qnBh10pDDVkL6nW4z13QiA7bEMcySVxYVoFSYq+/hT12Erpx
         ooFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=h4ANbjPy2Bf0HnhpMywAbFWoj7PiG3Qq5nnioTQp9WU=;
        b=oM4gEBk9n7BEekOs5IGpkF27WQk3DuowrxxhHKR4/bgrSVgNFR2mWDfA6NKN2Gv7kZ
         e3DPFLvllx39FgsUVZjfSveKZBpFwHCuUELxxur2pcwag9j6nQFENEby1sH4hLBWBRTM
         4bJTP/fxA3eJwjHagNCbH8SOZpo1xBjVwu8oZ1LqIDfEKky8xe5N9MoUHECEDgRPQmnD
         GJhk+Mhi4C6qVCYJchQITr1zokKEKmuL1bxDgyWocxttoKvmJV9JpGd0bg2gCtLQlD5Q
         c5fmc73NCvKeva1d0aIl6ky/qKXtLKRBHkwAnna/3pShy8sCO/D4DRRxdF6do91T9Cho
         SPRw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ0vmg/SI1KEdIOVvi17snpml6auCxyIWt5p92geUPHoUQB3keZL
	QD93HH13u5hfdE5jJc7NXOM=
X-Google-Smtp-Source: ADFU+vvrbQM8c6WzmjfJ6OeVo5A/1+eRrma5zqcbm0bHwyZh7k9dyc7E8uwWWP16YEzO32IW9lb9eQ==
X-Received: by 2002:a7b:c0cf:: with SMTP id s15mr11171043wmh.106.1584716126406;
        Fri, 20 Mar 2020 07:55:26 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:6402:: with SMTP id y2ls3104504wmb.1.canary-gmail; Fri,
 20 Mar 2020 07:55:25 -0700 (PDT)
X-Received: by 2002:a1c:5452:: with SMTP id p18mr11057241wmi.102.1584716125875;
        Fri, 20 Mar 2020 07:55:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584716125; cv=none;
        d=google.com; s=arc-20160816;
        b=rMWvX4KGRVR76bsDKVs6hIvy6FLluEuwk1yCEvHHWotl68kIywYaYrUQ6oZB0bPaEQ
         kuoFTiy+BZ0iM8drtCwZjsAvoVxD7RbZc1jsc2ev9NFwn3aT29DFYpAECGk8YADbOcIy
         pdjQWetKfCTZY96levfMh738MWxtfDYNc8HPaK9BO7uEWAGcjCaUCZYi4uf/ncVRihyV
         94/O0xOPAeP3edqii0+s4A9CTWLcHkoZ4X/wnUqe+qHg9ys3WkTMJFm+OOJP39KNbRNS
         IrfcHztjLPTAChNTXbeEH6ORyQMqnZlHBa672HOrDLP+VLx/TXyDcz1zq1SscjucfXyZ
         IyoA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=t0F5ADgsR0Kg2pUEsxYkFxQJYb/gmJmRh2cgbj2p3fE=;
        b=szxdp5jdxdsOQyJDySimoLf2sLIUhovvirq5Clw4V71S6Y6UXu2aiyPPhHtM0UK41n
         u1ugtBuulqyKf4gtQnp49LVDyt6LiW6itIBFNubzo7/epNI5JChVy5pPoQIiIoOPTWqS
         9XytroKdJfJ/p6HNSAL+WAj/+I9mwWl0fCaFH4/ymDsKwoeNPA738HvRsaufSzZg29PV
         r7DYk7yV4bpipmP45wWdLC6W5fnlop5JdlWUMe4bx90kvDPM1/XanaJVlKAILwqAlMR6
         reWh6kU5Qe9Uhhewna15NDw8+26cECVmblFWDDhLCzM2oBlFalb54Zb8HhpLHKHog+yk
         NooA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id l13si283158wrp.2.2020.03.20.07.55.25
        for <clang-built-linux@googlegroups.com>;
        Fri, 20 Mar 2020 07:55:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 2EE891FB;
	Fri, 20 Mar 2020 07:55:25 -0700 (PDT)
Received: from e119884-lin.cambridge.arm.com (e119884-lin.cambridge.arm.com [10.1.196.72])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 3A87E3F792;
	Fri, 20 Mar 2020 07:55:22 -0700 (PDT)
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
Subject: [PATCH v5 13/26] linux/jiffies.h: Extract common header for vDSO
Date: Fri, 20 Mar 2020 14:53:38 +0000
Message-Id: <20200320145351.32292-14-vincenzo.frascino@arm.com>
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

Split jiffies.h into linux and common headers to make the latter suitable
for inclusion in the vDSO library.

Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
---
 include/linux/jiffies.h |  4 +---
 include/vdso/jiffies.h  | 11 +++++++++++
 2 files changed, 12 insertions(+), 3 deletions(-)
 create mode 100644 include/vdso/jiffies.h

diff --git a/include/linux/jiffies.h b/include/linux/jiffies.h
index e3279ef24d28..fed6ba96c527 100644
--- a/include/linux/jiffies.h
+++ b/include/linux/jiffies.h
@@ -8,6 +8,7 @@
 #include <linux/types.h>
 #include <linux/time.h>
 #include <linux/timex.h>
+#include <vdso/jiffies.h>
 #include <asm/param.h>			/* for HZ */
 #include <generated/timeconst.h>
 
@@ -59,9 +60,6 @@
 
 extern int register_refined_jiffies(long clock_tick_rate);
 
-/* TICK_NSEC is the time between ticks in nsec assuming SHIFTED_HZ */
-#define TICK_NSEC ((NSEC_PER_SEC+HZ/2)/HZ)
-
 /* TICK_USEC is the time between ticks in usec assuming SHIFTED_HZ */
 #define TICK_USEC ((USEC_PER_SEC + HZ/2) / HZ)
 
diff --git a/include/vdso/jiffies.h b/include/vdso/jiffies.h
new file mode 100644
index 000000000000..2f9d596c8b29
--- /dev/null
+++ b/include/vdso/jiffies.h
@@ -0,0 +1,11 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+#ifndef __VDSO_JIFFIES_H
+#define __VDSO_JIFFIES_H
+
+#include <asm/param.h>			/* for HZ */
+#include <vdso/time64.h>
+
+/* TICK_NSEC is the time between ticks in nsec assuming SHIFTED_HZ */
+#define TICK_NSEC ((NSEC_PER_SEC+HZ/2)/HZ)
+
+#endif /* __VDSO_JIFFIES_H */
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200320145351.32292-14-vincenzo.frascino%40arm.com.
