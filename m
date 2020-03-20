Return-Path: <clang-built-linux+bncBCOYZDMZ6UMRBOFS2PZQKGQEH2BHPNI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33d.google.com (mail-wm1-x33d.google.com [IPv6:2a00:1450:4864:20::33d])
	by mail.lfdr.de (Postfix) with ESMTPS id C55F318D192
	for <lists+clang-built-linux@lfdr.de>; Fri, 20 Mar 2020 15:54:48 +0100 (CET)
Received: by mail-wm1-x33d.google.com with SMTP id f9sf2463190wme.7
        for <lists+clang-built-linux@lfdr.de>; Fri, 20 Mar 2020 07:54:48 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584716088; cv=pass;
        d=google.com; s=arc-20160816;
        b=xYnNqsY0/ZDUw2aSQroPP+xUiIOWZmeeHdJHHk0h7g4EDAKUzIioAwSS4hECBCdgw1
         N7rE/DYEsQtkbEVsTM83i1gMtOrDbkJdCopbs6R4ff+j2lh/fk0gCuKazcSbDf8pmqG6
         W9XOdPG0VVFkLeYaFRfbZEB87zPdo9EvcKsLp+3frIkYIv9yi5+zy/vpJNslwI5Nzzl0
         1b91/Vwbpd0X6sanGNuDDC3S1kjZHS465dp545y8D67AJ8TFtCQYipmf++d21A3F0sfp
         OVfrrET/cd8ciOUaPIGjX3Qbpc5eSgHwIKnmOSb8TOO5uPo0e2fIhp2QSQbDYI+J2rnI
         JIXg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=HUbcGwuvEsuihGVPgL5sFcQQIVq7GaxgCoCJWCAs9vo=;
        b=WqLLsRVhfr3x4kEvxxkCRk2WfVOVTg4OTZPhdVqLaO9//hEgISD/kICXW++A3TzReZ
         cKhlomqIhR0PgW1gY2d2aMUvCkAc7YpT9Fjy2ecuMENNCcGd174a2KAt2FFTQ+AkVReP
         ore/AMNSoTpkpIhmEo55IY1DT6zA35JmkYwBw0MMhRm27GlWG60x6dqaNBtE9i4V2MKz
         RNNksGouq54BMY1wm5qfvQvaEVjxtbV5Yge3nd9rnhOHhbT1lVmB5k6oepjYGkGQYCX8
         nH4veLHvMRDKoHwlm4iRn6JeeIhz70gNDXAMXhQE7UNohXDjJKz7fd5jWR0SL+ti44sV
         9owA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=HUbcGwuvEsuihGVPgL5sFcQQIVq7GaxgCoCJWCAs9vo=;
        b=WRvwVF0pKKrauTLKi/fP1+JXsNlhM786ujlns+rFCTJCoh1xypI+6u7TKL4BckaMMW
         xb+eG5fqzkspo20FGZ0qF88n+Sb1hjfKoC2/KG5EDvGaPzZzUfcRwz2n0JZ4zTkPg6Kb
         Ye7UnsOsvyUUxkynDA+zGzyVgwPbaxOi8TfQCurObuWFGr0SlkzR9NCaRTukfIkydDyK
         EjpnretARW7NFmajB0e3Qmf9XdCQnaiZTGwrQltkdwrkCQEd9TRqY2zojwTe3z4BmPuD
         +PILKUJGeQaA/C00/V5NCK8CEf7dl8ejuXwMT9sZIKLeEj7hftI1ZO3lJjUBudD1KRZk
         QWHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=HUbcGwuvEsuihGVPgL5sFcQQIVq7GaxgCoCJWCAs9vo=;
        b=D63EJ3eEJig2kYWh+xKM+vUqY6i6uoqd5ti29v4nBKQGE2ltolSuAHF2g4+5K7J1nw
         9VZc+nNudO4SrU9zJmM4SI6gIQ1YUPXzeA1YY/l8OdpyTI+34Coq8lvQZM1qpbtnoZY/
         BubrbQPWlTEW5pTOLRoUfde+RpbSTRWuz0oe+EkvSsqMgcRQd1eO2L7wXBuJtd7RFI/E
         TMyLMoNdTROlVO0xsigD3SkvYJ4rVg6cdOBG/P390uo1LjxRBi0/W1doiI++3BmEYN3h
         PsApHylZtGHvPn32RBWhu80cLagKrDf1GI8DdxpEqRgfnyvAZIT5XIDTvzdX0nU8hRSs
         NKiA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ0htHQgsAE8LBz4BSNApxgjfsoifP/jmupe2OJxNX7eD6QBi6CV
	1cgf2TWOAMCtg1Ncv9joP0A=
X-Google-Smtp-Source: ADFU+vueLUC1wpC0NyM9s9+xOgYxgvCGn121xhuxiyocnlKPVYAZoid4USSh/5l1PoHazGec2KIzDA==
X-Received: by 2002:adf:83c4:: with SMTP id 62mr12229779wre.105.1584716088565;
        Fri, 20 Mar 2020 07:54:48 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:9842:: with SMTP id a63ls264526wme.1.experimental-gmail;
 Fri, 20 Mar 2020 07:54:47 -0700 (PDT)
X-Received: by 2002:a1c:5506:: with SMTP id j6mr10959317wmb.127.1584716087604;
        Fri, 20 Mar 2020 07:54:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584716087; cv=none;
        d=google.com; s=arc-20160816;
        b=c5oxIexglaGGno9kUF4v7jIPCUCVSXQlww8i7/WaIlUkeei0Ej87C3JMnOiMJXtchm
         nwrSBL1OyMWaA/AECB4jwAz4Kw0s6jraOZVmhWbnQRDS/InL2bAN3F33Wz9ulZc+VKtz
         mz+ukRnK5BGcb3TliVe4RRHVsuqZlueDkZGP//vdHIxK2EhHUxxmnMADqB50kjaUuuJX
         aR4N2U46MvRKWyAUXDm5VlTzxzA5nuQ1mE/lz8187te1AaObEn6vW57XHYr5QSu07f0M
         f36eWc7tOCpHoIFX38oVnM19F1rOztJjETUi5jWuZZc7emVaOcqshQ9Fg+1sKfc2FT3I
         VQOg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=hbBdOMcOoGVZnI7i4EdDHPgNDXaaMUaqBdtSZONOpGE=;
        b=X4vJiQF+rgMr2IL4+hquJ90y0jE7+SYcmeSxQwABtsrGSd2Bt2EchgVsW6IgZT+4hC
         0OI0bcUG/hFEhs12TD12jTY0VCApa0bA+FfBDjqlLhYbjYhMCl3HU6cGlAwLlv1/OFUl
         g6DvwLf10m4OHXsPZiHJjX5f8coj+VJ0TLh4K0dcEMZSWeUukZFazPIgzQUfhcsqCiLG
         4PLnIiJ1knmWAqw7jelwN2UNCgjMyvIeLE5jLiJrl7i4+Y4X6/Kdgeki/HqQ/nihmvVb
         bM5DFiJqfNuF8eiQgg9Ajl8MlDb22erAXHDqoK07qf66VzYKF7+iQvgFVJSwNr/lWhJK
         jFng==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id m2si506344wmi.3.2020.03.20.07.54.47
        for <clang-built-linux@googlegroups.com>;
        Fri, 20 Mar 2020 07:54:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id DBB617FA;
	Fri, 20 Mar 2020 07:54:46 -0700 (PDT)
Received: from e119884-lin.cambridge.arm.com (e119884-lin.cambridge.arm.com [10.1.196.72])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id E50E03F792;
	Fri, 20 Mar 2020 07:54:43 -0700 (PDT)
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
Subject: [PATCH v5 01/26] linux/const.h: Extract common header for vDSO
Date: Fri, 20 Mar 2020 14:53:26 +0000
Message-Id: <20200320145351.32292-2-vincenzo.frascino@arm.com>
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

Split const.h into linux and common headers to make the latter suitable
for inclusion in the vDSO library.

Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
---
 include/linux/const.h |  5 +----
 include/vdso/const.h  | 10 ++++++++++
 2 files changed, 11 insertions(+), 4 deletions(-)
 create mode 100644 include/vdso/const.h

diff --git a/include/linux/const.h b/include/linux/const.h
index 7b55a55f5911..81b8aae5a855 100644
--- a/include/linux/const.h
+++ b/include/linux/const.h
@@ -1,9 +1,6 @@
 #ifndef _LINUX_CONST_H
 #define _LINUX_CONST_H
 
-#include <uapi/linux/const.h>
-
-#define UL(x)		(_UL(x))
-#define ULL(x)		(_ULL(x))
+#include <vdso/const.h>
 
 #endif /* _LINUX_CONST_H */
diff --git a/include/vdso/const.h b/include/vdso/const.h
new file mode 100644
index 000000000000..94b385ad438d
--- /dev/null
+++ b/include/vdso/const.h
@@ -0,0 +1,10 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+#ifndef __VDSO_CONST_H
+#define __VDSO_CONST_H
+
+#include <uapi/linux/const.h>
+
+#define UL(x)		(_UL(x))
+#define ULL(x)		(_ULL(x))
+
+#endif /* __VDSO_CONST_H */
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200320145351.32292-2-vincenzo.frascino%40arm.com.
