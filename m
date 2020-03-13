Return-Path: <clang-built-linux+bncBCOYZDMZ6UMRB2OUV3ZQKGQEPXJ5V6Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53c.google.com (mail-ed1-x53c.google.com [IPv6:2a00:1450:4864:20::53c])
	by mail.lfdr.de (Postfix) with ESMTPS id 38681184B15
	for <lists+clang-built-linux@lfdr.de>; Fri, 13 Mar 2020 16:44:42 +0100 (CET)
Received: by mail-ed1-x53c.google.com with SMTP id n11sf8557526edi.5
        for <lists+clang-built-linux@lfdr.de>; Fri, 13 Mar 2020 08:44:42 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584114282; cv=pass;
        d=google.com; s=arc-20160816;
        b=bFXKX4DsvttskC0nNZmBxO8gzxv4379bSp/vREZNO/fdepXklQTdZsb01kA3fuNzke
         Zn9MP/6H+UERDlZa2Qsgi+U7y5zfcyrKbBIpoXm2ekHCjhyblPd+b7MSjSNELi+pzN2s
         89P/PoIKgIjgKGgRYg4ruqg1DVwQUl9nhxjeelqs1ro14XbyGRyBddSvLWvokWydzGDj
         SYJ8Uuc1qqz/6uj7t1zdCV1bV8JhvVoGQtleO7PvC+DbR9R7opFrgSq46F95E/hMeQXG
         xu7ZN8hvl/lzeva1AtGR/NUL3LwdOSuUQNxn1GQfU3BKZtY1PqxrhVjPfvEnpFpUEXB2
         i+yA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=C2bfLpPhrxJlZN2izUHCAHpAAOPTOoqntaMr1SF69is=;
        b=QBJ5gZ5UGjT82QZPXM7dP68L0dl+vsLU3APdKLKkIy7dzkFyGz8tZFeotZ006fC6EZ
         P+7BGKoH4IHCpSpd9sNKbm973nHciS4YqjoptvVgPgA1HQikhl0uA/mLBk9SBDy+8J4m
         rgWkby2XCbpwbeUcSKYZ78KxxKpMe1ovVvL1+5Hgc6KejMKKHy9GSbmUcGnv1wX2p9Ip
         N80lrHc6zSNTDNYwDFWSmJ20CTHHqabNszhE3m3xuYnjeHS9N+ZYVgnrPLvjc6epsmJt
         kwD5cr/DnzrNSMK2BUE/s8qrjEYYhYvNvG8zcSuMx1L1dyMyEDRhRhJ28F/phOU9JObe
         y78g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=C2bfLpPhrxJlZN2izUHCAHpAAOPTOoqntaMr1SF69is=;
        b=o5slrS1Ts3zdraKEDDyACYrHBtpJUWZ2gX6Nj6JERCuBNw6NED4hM9aEUb9/kaDMr1
         fwxPUAqiAUVuTZQmrJNAQvhkfNG5AkPeMhM8MpdwfWpEMm4I2eNRI+MbvaHLjpG4RWci
         kpaJT+BsBb3l12VsAoP27QDkQ2CF8Xc3n9m968jxd9YwdJNM0jB/nGdq+5NzUVCuPJVA
         WFLzW8jvvRiYz6FTFOTmM8f6Mhd6/WoeVJdId0Rx8x5RfqDAIei72umnwdpmfQRs58wH
         GoISb3JWkSjJPm8aKK2077A8PPr4+LeVZTTNPo01iO6g6Zlb406acB4/xpJtapdO+qD2
         O2YQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=C2bfLpPhrxJlZN2izUHCAHpAAOPTOoqntaMr1SF69is=;
        b=lBh8U1llt1khHLR4bTx8vUC7hDPBB1sTEkXdvlVOQXdjCNZmUNI8Cr/QvfTCfTwTlu
         uqBnqi2PVbgP6lH2LvOeI0GbddF4RaynhZNKv3H/abTnp4+lOAODG9P+gwkKFlH1BLlx
         PlJAmUU8uZAXsFSMvZkMRDoGoWzsk1AtvksuJq4w1aRxrSNW8xADg35L5X4Yypcsg2Fx
         WAKHtzwQ+fMotm0uUbxpE6rqKkNk7+Ey2a8Q1bZjmgyjga77cJyNhAyq9YGCArLH95qn
         4gZABzVjxp6BdyyBIFRLmAa88kQbzodwaV3TEVvpJ3g+q6DxV7FonVlmryfh7rGCxShi
         1gpg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ0Pdqn0c3QhkGW2y/cwzHW0c00EpNegFGoZGDMzMFy4/3m0Vs8c
	tB+0byZIPksI4fP1FZU9/1c=
X-Google-Smtp-Source: ADFU+vtZeExSJ6YS5zHkGcmO446MmSkucwe0InQOKeA7Dh+ov/qmQlum3u6lxzm0pDxHMfG3EtIdhA==
X-Received: by 2002:aa7:d585:: with SMTP id r5mr9518789edq.241.1584114282003;
        Fri, 13 Mar 2020 08:44:42 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a50:c049:: with SMTP id u9ls6557658edd.7.gmail; Fri, 13 Mar
 2020 08:44:41 -0700 (PDT)
X-Received: by 2002:a05:6402:1509:: with SMTP id f9mr14239489edw.133.1584114281430;
        Fri, 13 Mar 2020 08:44:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584114281; cv=none;
        d=google.com; s=arc-20160816;
        b=hzEuXztPnn5r4r+vhF1OXBhtwOJzfRluUJc9ZBK6fC6D5PEKcdOWBiZf3fT0wX5Jdc
         fpLng1r5SfVXPN2Rzjq9Dfz9IhCiMiBcI83BWhOl1F/v6A01ef5rKk0Cemm67tRPLcqX
         DeGAavFW93Rx6KtvsJWIhcRCrZpNeNaPlBgrnHbhbcCy8NUGltB5QML3EB/L9CUDXPTK
         hRR4asF9Zv7e6oIQef4pcyuS4yb5PNJzpJuA13WF1qBzpHwC/2ubdWdwpmerjr4d86kH
         HapjWfUV/jFcuM8tsRmyhq+cLWkYYTslR/BCQpqcmdtVlGOdz4jz0b/vc0lUOBKrkHbQ
         fdEQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=ztkJpZm7hZA0dvmRlmvHTYn1wMIl8igO6kJRtrJdG+0=;
        b=uFSDygmPlW725IBNlHPkql7TqjAiHY73VoFWnfavS9HgmzcuGDVqT78JNOZ2fRb1WR
         WMOdzqIGn1askFn4CN5CdcFaMpC05dpufUFzvry+EV1pXBnEmlnMnd+27OtyOwT8YHA8
         Rhgh+deOzPXhaAvKrHE5M0/hWTg9hVco6IKP+NQR/q8DqGBgE7jr3VLcNjDhtmodNX9t
         xXC1MZ8tAxT33V0+Ug81cCT8MyvViC36gNUjcVn0jCoAIUPzUDnUkmCdVA5u5gtg1I5M
         QfR/2PyxfSQWcZcUAtM/bMoy7yLk4T5lQ/HRupRH/kfkuESRvS57JOs4cisutF/48FlL
         ScgA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id e19si289656edr.3.2020.03.13.08.44.41
        for <clang-built-linux@googlegroups.com>;
        Fri, 13 Mar 2020 08:44:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C1CEF1045;
	Fri, 13 Mar 2020 08:44:40 -0700 (PDT)
Received: from e119884-lin.cambridge.arm.com (e119884-lin.cambridge.arm.com [10.1.196.72])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id CABC63F67D;
	Fri, 13 Mar 2020 08:44:37 -0700 (PDT)
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
To: linux-arch@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-mips@vger.kernel.org,
	clang-built-linux@googlegroups.com,
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
Subject: [PATCH v3 11/26] linux/time32.h: Extract common header for vDSO
Date: Fri, 13 Mar 2020 15:43:30 +0000
Message-Id: <20200313154345.56760-12-vincenzo.frascino@arm.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200313154345.56760-1-vincenzo.frascino@arm.com>
References: <20200313154345.56760-1-vincenzo.frascino@arm.com>
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

Split time32.h into linux and common headers to make the latter suitable
for inclusion in the vDSO library.

Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
---
 include/linux/time32.h | 14 ++------------
 include/vdso/time32.h  | 17 +++++++++++++++++
 2 files changed, 19 insertions(+), 12 deletions(-)
 create mode 100644 include/vdso/time32.h

diff --git a/include/linux/time32.h b/include/linux/time32.h
index cad4c3186002..0933f28214c0 100644
--- a/include/linux/time32.h
+++ b/include/linux/time32.h
@@ -12,19 +12,9 @@
 #include <linux/time64.h>
 #include <linux/timex.h>
 
-#define TIME_T_MAX	(__kernel_old_time_t)((1UL << ((sizeof(__kernel_old_time_t) << 3) - 1)) - 1)
-
-typedef s32		old_time32_t;
-
-struct old_timespec32 {
-	old_time32_t	tv_sec;
-	s32		tv_nsec;
-};
+#include <vdso/time32.h>
 
-struct old_timeval32 {
-	old_time32_t	tv_sec;
-	s32		tv_usec;
-};
+#define TIME_T_MAX	(__kernel_old_time_t)((1UL << ((sizeof(__kernel_old_time_t) << 3) - 1)) - 1)
 
 struct old_itimerspec32 {
 	struct old_timespec32 it_interval;
diff --git a/include/vdso/time32.h b/include/vdso/time32.h
new file mode 100644
index 000000000000..fdf56f932f67
--- /dev/null
+++ b/include/vdso/time32.h
@@ -0,0 +1,17 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+#ifndef __VDSO_TIME32_H
+#define __VDSO_TIME32_H
+
+typedef s32		old_time32_t;
+
+struct old_timespec32 {
+	old_time32_t	tv_sec;
+	s32		tv_nsec;
+};
+
+struct old_timeval32 {
+	old_time32_t	tv_sec;
+	s32		tv_usec;
+};
+
+#endif /* __VDSO_TIME32_H */
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200313154345.56760-12-vincenzo.frascino%40arm.com.
