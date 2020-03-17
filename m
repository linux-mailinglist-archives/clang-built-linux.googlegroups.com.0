Return-Path: <clang-built-linux+bncBCOYZDMZ6UMRBRUCYPZQKGQEM7FGTCQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33d.google.com (mail-wm1-x33d.google.com [IPv6:2a00:1450:4864:20::33d])
	by mail.lfdr.de (Postfix) with ESMTPS id A57A41883B4
	for <lists+clang-built-linux@lfdr.de>; Tue, 17 Mar 2020 13:23:34 +0100 (CET)
Received: by mail-wm1-x33d.google.com with SMTP id i24sf5108016wml.1
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Mar 2020 05:23:34 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584447814; cv=pass;
        d=google.com; s=arc-20160816;
        b=B1lBCh6QLpMLCSm9fOxm1tM2/fx2SeR/nDZjTK3iJ/CB3E3WgEYor75xs4qsQWIOs9
         Vi+tRIDbFWkBgK1FoEeMq4dhk7uxK4y7/teBrrVexPfCcfNZW5d0IvUySGJJRsxFrB2U
         awPTFTeynUqyWxIJzUhOXXJpEHbsSurP3Go8BaGjT/6eoW7Z1G9WARQmYhodZ1lZlXhz
         dFwgFBGlS5mfN4fzvHYS/IrK2XsTt7eF0GNWq1ks+wOM+J5WxOX4Xt9XnSdK3CNhC6wh
         3hFfVtbxp0IhcWFMspoa0xkWZ3xQmzEL8phR7CleFki6QMhIT4dpD0duuy5Tv0Ak7ZOP
         SS4w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=VgMENL8Oe7EOKhX+AUGQhahgra0bifLq5arK21cOBZ8=;
        b=yRb3E6heOWOV143G9AP9TLDVSqjYuwLk1ACfLHynnwlEv797pErbKIxFQMGNNf7xLs
         hDoE31mkAnoZaVkcYToEQFfeQTzsePmwzvrWamPJy217mhUmSIXNxqGD3L6zMw2btt75
         dD2JWwEI1nl6hf+Fb9RfJ1wbn4gBPf5sdgzQhCf6sFyD63nYpVsJCjteKAeR+rO2XfEf
         5BzS7a3dJYrLsbQBrBIynScnOKiCJjIq7mnMb6FxDrnPBuh6zxSw/2P96CqWk3a1wWoT
         LdoY4r4fnewz7o/S8xAhNPqjiDHdEDDbbtMKV54N4XGFzMA3V6za3ctaBxwP71hVEGdy
         mDkg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=VgMENL8Oe7EOKhX+AUGQhahgra0bifLq5arK21cOBZ8=;
        b=NhSsfqyhFCNPS8QPNrmGQLiLj7/iiy63zy4Q8eaunddTKZ+LIudWZKCVeK/IA8fUyC
         /A/8bIimCACmoIr+6FkzROWO4fqHvTrpBcbImvdmaT8cMooP3laf5Xc1H1E9EsjIaJs0
         kDZu/CbCpxti0iPYubhhBb+SKVMDnbuf+LxYOUYOdJK0KDMfhQxvENeG354BM5+hBYPB
         lJeZkUwmFSl8ay9k759VGbCXJne1cUeIoNjYN5jDfU8zBS9SdtdCYHvcFCzwxMih7r3p
         WcWQKpyH3OkkG8rapWBaiUwmrBpgt+1z026+QAtZoZd0BPy3m7HoY3PIFCi6gm6S8J48
         gLjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=VgMENL8Oe7EOKhX+AUGQhahgra0bifLq5arK21cOBZ8=;
        b=mFEZ9+kDcyUA5UxcuJy7eLBTGpwXbmtKbd//fTAn9Boow1G4Ff/TRTeUaebHSE+MX3
         xlcoZ08Og+riihBCLxZJpEJJORjDTbu9JAvn/ufTTt/HxrvHB+4cBa2TU9JTCv8SBMCY
         DVqCBus4vhUBCbzHa+eBqQrEPDSpQGMNAt6VZYIckrdUPlXrHNps/STVefCO83DxZ9YU
         UUotvf/2RjbojVWbT5d91kreYka2jvLWsk82OzO1xjLsbJZ9D3y3kxnQ4l2dni+jX8gY
         L0Zecw3OXvqgi9XgJTqGFwGPy0Azhc/pLUhnQbrCQtmT8tkBmLfbJ3jzE0uj7pEkiElQ
         yWew==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ2KedERKA/JuuULEu5B8bPR+qPcBcVHYbkUGZEDHpN08N9NovZS
	nxceC6m8Xxwd3i+jOrYlkdc=
X-Google-Smtp-Source: ADFU+vt+vDKR4eoL5bH8kWUH/HWq117J7HThWcOiAaLJmyjkjXJYwWetJahBj2B8NbUBkQU4WUQ6/w==
X-Received: by 2002:a1c:3d6:: with SMTP id 205mr5398246wmd.155.1584447814403;
        Tue, 17 Mar 2020 05:23:34 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:208f:: with SMTP id g137ls35389wmg.1.gmail; Tue, 17 Mar
 2020 05:23:33 -0700 (PDT)
X-Received: by 2002:a1c:f60d:: with SMTP id w13mr5242241wmc.171.1584447813840;
        Tue, 17 Mar 2020 05:23:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584447813; cv=none;
        d=google.com; s=arc-20160816;
        b=cVEd2YXlMQlQmhLC6SZFZO2FVPliO+wNpR83VergP2ZIlyTfGuhN2M8Cz0yk/F8xGK
         yFK403e21j8jxqawifi3YEgy3Y0EPaEyqZjPkmQSl3lC/HJH0fU2d7bBWkiddD/U5r/v
         lwwKDcflgIL2JHKQilWn41bbMuaTnkjJK8m2bVmoLWCYyEDcXTMdaYHcHfa2bfrQL0dB
         2LHttl05bFNKpjoJPdur4487agbPuEBAfj0IIxyOYGpdg+ZXOQSMZUGNP06CfSvDpYiP
         8/yIt0iCJq2Bn69xuKBD3621wmr65VtyWzisIYyMhZ9egqBuYM59jcJnN/UefRFqKBh0
         1pAA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=t0F5ADgsR0Kg2pUEsxYkFxQJYb/gmJmRh2cgbj2p3fE=;
        b=AbE/FrISkyTwysCevFroxOCgkMFBRI+gT2oHC6aMDwDZye2fKlg7r1YF4JuDuCAfhW
         OXe7h0BMtCbAAoMEnpN1/POO/Sll9cZz4rTodaozGrjoxLWGhGU2BUu7UUConbtJeHGE
         Dby49kJb1tJFqAf1gB3qSCoUpL29e9FUQ+aVMDajzKNrQFt+3JvmBKgGWw/vS5QAXi0B
         ZNbADxfPU7+2teQhJvLDYF4p4cfwzOJLSm2+yELtiMTjh/5I4gnihDDUwSAA5eXGOGGF
         Dyr7Hjx1XsQiLybBT7XYr2UXf7lP6FVspuLugRPtN6MgAwtJ0pOtFG8XMCb2NLGkSsoQ
         3+JA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id i19si171494wml.0.2020.03.17.05.23.33
        for <clang-built-linux@googlegroups.com>;
        Tue, 17 Mar 2020 05:23:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 20E3E30E;
	Tue, 17 Mar 2020 05:23:33 -0700 (PDT)
Received: from e119884-lin.cambridge.arm.com (e119884-lin.cambridge.arm.com [10.1.196.72])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 2A0D83F534;
	Tue, 17 Mar 2020 05:23:30 -0700 (PDT)
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
Subject: [PATCH v4 13/26] linux/jiffies.h: Extract common header for vDSO
Date: Tue, 17 Mar 2020 12:22:07 +0000
Message-Id: <20200317122220.30393-14-vincenzo.frascino@arm.com>
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200317122220.30393-14-vincenzo.frascino%40arm.com.
