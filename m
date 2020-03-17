Return-Path: <clang-built-linux+bncBCOYZDMZ6UMRBP4CYPZQKGQESX3PNJY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x537.google.com (mail-ed1-x537.google.com [IPv6:2a00:1450:4864:20::537])
	by mail.lfdr.de (Postfix) with ESMTPS id 30AAD1883A7
	for <lists+clang-built-linux@lfdr.de>; Tue, 17 Mar 2020 13:23:28 +0100 (CET)
Received: by mail-ed1-x537.google.com with SMTP id y10sf18019929edw.23
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Mar 2020 05:23:28 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584447808; cv=pass;
        d=google.com; s=arc-20160816;
        b=ZxS/S2Vw3nXdfMsqKucOSNmwFRW37uVVmIZkZcAyqCDEiUFZBCO/mTtTlwnLsVVpSP
         gmgC4CSG6j9q+e5dB1c8i57efld5ZdkFiquy3++aleAf0HWrCPk3eSq3/D+pQQawm7QK
         F8xuErF1Pj1YoAWIxMyw0MCtqM5wqnGAG/XQTTfM32x82tL+l6M8K9TBwx93u6y5uTmx
         7G1T8tp/lwdbJ2beYqL3i7QE5vdWaFrVDpjDcIn8O1NuJGvLBmMtzi1wgtpFvwvBd69C
         XEuN5Nm0YJcDIIaYEiINVwEDeg1W1TOdDocVO1V8YTxz8/v8kwYXlQ/aPEnqygycV0kM
         B3KQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=bf7Nh2AQ+yY9T0cDKvm0mM1QEBszOQepf1Y3eloyNdw=;
        b=hdeox8lyhDZmM9bocuu8bmOULZciN8QFR95A2NHWVLSh5SeHwT5jkAhzeYLLdTWaoE
         S60BGx+80w8oKGqEraaPfA0NDhAB49DyJ8O6oXmnJrp12tvT2SDdpCwL20etW9Nv0Wmt
         dWuwsTxqn6Pz2bDUDcna9YRcGJYsnDq9FXsUbUmTXBK3FeV4ZxKVGSqaUfYzFz6rffcv
         drtz/NuAX3lAe8mWM/KTnksLqluRt7XGUQa79EwK5dIq7L/wUQfL9k/FcR9nsy90mxjJ
         HPC+9Eey3OnDunBLwBoT9q0duY4q04loOsQbr97+xzuxx2B6FSK5xmnkR5W2pAUB5axO
         kCeQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=bf7Nh2AQ+yY9T0cDKvm0mM1QEBszOQepf1Y3eloyNdw=;
        b=A1jdHCuTLS7ZkeuTzEuU/ozQcPhOoboTWmboNuNjM170zlhfy/JiT5bjrtXLITEfJO
         6ZsXqKW2vGF1bxfcCVACxbWJoZCV/O5S2DNE+EMy5LAMH9AyzPVEFwtQq92NK8T4fDqs
         vthMIxWKEjWruLOr2QxJMfzm0HgdgOdFqtAMV21u0e7Q0Kd65KCgYMpmD6LQ/P1IRYRK
         pwtM3wVByC3t/aDTjctygJOGZnj5wy1FUjFqXrfhyRTxdB+9dtby/Vyyp/GviK1QfslL
         fZaX0/kfEak7l5CPGG1ujUDJb6E4b3FHWaLEbQRnDRgdoDgjEnBpvmCnNCKFHAm9QV86
         JAeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=bf7Nh2AQ+yY9T0cDKvm0mM1QEBszOQepf1Y3eloyNdw=;
        b=DeVVRY5Z4kThtHn4hCTWRwja0eExaKGJfDlsSC3ev5aDTuyUbgLw3uIsYdT7OsNBcu
         3y75I7VouNPbWdd+fQ1GK+Cv3bnKktc43QRlVwnbb013MyEf/vny2SE+nFgoyEpY7clB
         HkNeYWHU6m5Kid7tCz4rA6MlxoUz3WWuTiBn6co47GrtTlk6mkq5wZbDnZ7NLLAaSuhO
         s3pay/A7PAkRzWbBaFhe2Z1TfUm5uYtMYxeQJLEKXxN7p8aw/zjc35Uvksf+P+7bHvSp
         b5ffFgNBZcXY0ZJogoOL6ISh3R1JVucfE+6aVsVvItZ8N3DpWNYmUrtdhPjzGF8l2tk/
         JrGw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ3FE4MSWz3uvxfJ/WtWpDi4FCH8e9c8o6yaGMJyGxGyQr/FLtjA
	9gZny+EHoWGBFDIT/8Oy9PA=
X-Google-Smtp-Source: ADFU+vvJk5046LCDWLctQN8XwpYwje6BGSO+Zmi4VJg5eQq3Pie5/mn+CB3LMcYXzTMxf/4a9BvohA==
X-Received: by 2002:a17:906:5ac1:: with SMTP id x1mr3837650ejs.118.1584447807907;
        Tue, 17 Mar 2020 05:23:27 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a50:99d5:: with SMTP id n21ls12452251edb.10.gmail; Tue, 17
 Mar 2020 05:23:27 -0700 (PDT)
X-Received: by 2002:a50:ab57:: with SMTP id t23mr2588676edc.195.1584447807416;
        Tue, 17 Mar 2020 05:23:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584447807; cv=none;
        d=google.com; s=arc-20160816;
        b=Sj3oV+MGUvHVy9VFMCNUeb2E7ZKNloq7ebgkw53K/Dal2CtT+Ykb2sWJSC/T31U1Tg
         9YZdi7E9wXqUwdt3It6ig5XxFaHFMuhl3xpH1SUF/WFYML3yKQ6F7tp9gejvKuQ+nFRc
         nLIVhLcv9UJ9fUXQYGPCNVzgWUxbH2Je/M2XMgFiE/KKet9E4hg/LILwQ9TXsRgbv+ri
         E/OCK/PNk/nfq24xNxM2Bzvka3PKQZ8K0NNM3IdSE2N2S161f4bzIN1XRKs0mSG5aSi2
         +poEQdU7s0NNcFmVhIpS5abOC9J0Mtkwb3WJ2kGA4OlcNPAgvaXWHhNJ2TOfuSWZ3e+i
         dKJw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=ztkJpZm7hZA0dvmRlmvHTYn1wMIl8igO6kJRtrJdG+0=;
        b=lF5+Pk7EwyoetQoFHQCYIdgVtYLmRAacVqcoiJlNGS+EC9BFV5LMUmPH74lewFrMBK
         z+DiJ0tGqEXeaVvKo4kcMk6A7C6o/CGGRt3qb2nChCvEQtKxRPmWv+7hXcqnSxojaZPt
         iEk8bHTpl5F4217NfcMdLcd3wSR3Igqg/e49yH6n6FFT0wupIShtDMoknCyhwPl8hsDf
         U4SRPKL9fS+2o06AatPNKQEZ52JJ9h5zOAbIxn6arkUR3rDkbUPu3VsPXaOlMv88zS7l
         BX+c/jMvIMcD0vPNc8ww/M0SVuNRdavIugSR1wccVeDgEIBM3rhFi1Mi+o1QjyPGj3Ir
         zkyQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id dc25si140030ejb.1.2020.03.17.05.23.27
        for <clang-built-linux@googlegroups.com>;
        Tue, 17 Mar 2020 05:23:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id BCB9BFEC;
	Tue, 17 Mar 2020 05:23:26 -0700 (PDT)
Received: from e119884-lin.cambridge.arm.com (e119884-lin.cambridge.arm.com [10.1.196.72])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id C7A783F534;
	Tue, 17 Mar 2020 05:23:23 -0700 (PDT)
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
Subject: [PATCH v4 11/26] linux/time32.h: Extract common header for vDSO
Date: Tue, 17 Mar 2020 12:22:05 +0000
Message-Id: <20200317122220.30393-12-vincenzo.frascino@arm.com>
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200317122220.30393-12-vincenzo.frascino%40arm.com.
