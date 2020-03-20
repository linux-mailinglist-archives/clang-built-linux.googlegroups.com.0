Return-Path: <clang-built-linux+bncBCOYZDMZ6UMRBV5S2PZQKGQEJBDC5TA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x339.google.com (mail-wm1-x339.google.com [IPv6:2a00:1450:4864:20::339])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E3A918D1AF
	for <lists+clang-built-linux@lfdr.de>; Fri, 20 Mar 2020 15:55:20 +0100 (CET)
Received: by mail-wm1-x339.google.com with SMTP id z16sf2471096wmi.2
        for <lists+clang-built-linux@lfdr.de>; Fri, 20 Mar 2020 07:55:20 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584716120; cv=pass;
        d=google.com; s=arc-20160816;
        b=MwdZVYrkw6r4ktMXlRwnNYfeggxTzYzAFeKme06sO+UBspqnK7ZOpRrFgqiwFw/b6q
         UhFLeqpClzbqtzaV5XcoquJavVI0OJ+vN02F6hdTSpxI9aWDQG2otePszaRAMsGvmELq
         RUfGuz2bW8YuSH3Cu4xuRH6pvydTfpFB6OyhesgpENNuMAaLzMGrf5fpHKWXyzvRo3zT
         /8XOODd6YSWJeN7ANCF0/5OPQfyVfQ4sDn2fHGM21s6QTBNgyHGgAg2HWSIsbaeD3aGE
         jWKZcdjqtLrUbjdzPxUgbRxoLZojA4BhHigTtzTj84Z33GilGkaFTwq1gCSXoLIvY56n
         Pa4Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=BCO3IV4gjZsCS496zSVckYKRrQl6tfVT+0cr6W0JLZ8=;
        b=T5E9LcLMZ/FAr+dvxgJZ9Ib1WQVXve8hvhkiwTHN39Q4WoOW4XLfKAOHWulXfeSauZ
         5JvuVqJCzwV6iPeNWLr0HFx4tbbdAps/U8I0lK2I+qbNFE02BXUlxPg9WkN2nsHjyuw+
         Dmf4jXhvUrSYTH/wKGUtZtb1vHfKixUrRqU8lAYpdcFiizv6eyfalzmBPP2U0QCYUqws
         xT52lh2iPoClVrsox9ZMtUohYkkZfpHJDAppczGoxEOYmfdciXjLw6HPD8wWgT7Zu5xM
         FiH9fmSo82Dxuw9kVNKiX477IfHk2mhdnns68uXfNuhWpbDNCA2Nr3LQUirQ2LPio13Z
         jblg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=BCO3IV4gjZsCS496zSVckYKRrQl6tfVT+0cr6W0JLZ8=;
        b=ov6FBEn7oh2ECNIUu3VIpb2NNgCGzmvM7W1PfaN16kWfpFT1eqCs3pd4pMEKg7cD1N
         exbQCA+/mnjMOCEEP27OhZA+DGoIP3aWlPA2AmDiRPqXNkpr0aM4D88TAhc/0VnY5SFW
         ePUPwEw6lKlkZk6qB805A02trV5WnSEz80DGs+vKcixfNfYrsoA8Nv+DjfCV6ghfYBZr
         zfx4CwOG0CLWFxa/p3/FKohUJBjeXsHhXf3JIhcmIXMfsCIq8Q9f9H7zdU6kUuyTW1HZ
         8yiYvkC4WG6GHuFnudpPE6DRIyzoNQ1pwRjBRIsJLyTejuQDzN3wJwrxBWCnp4vbJT5V
         7vPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=BCO3IV4gjZsCS496zSVckYKRrQl6tfVT+0cr6W0JLZ8=;
        b=r8KqFgWBmGi1NZWHHmsP4JXl2x6Rsm+4Gi4V2AagGwRjtS3TnG0M9LX/mplCrrYm/t
         TWJQZUlhXk4OobS9Q3PDO/+CExZg2ruPNUfB4oxpHQSthaenbwp/fRFlVCrg7Uzj8Tdj
         rvAopSoIoEy9HTiz53M3HgITye09cdQ5bxf9Q5l8TfoemfZ4FdsVsFegP3+XG0Us0sgj
         gu8J83+RQz+bYP6mPIRbhz9dcma/8TxxJD+sldnNSL9rVICxgC+b+x94X+SBP74XB1eF
         H3vuyKFiQTtsMFI9dRPyTH0w+y0VjjAl8BoiUKIYv83iD7js6FKODf0/lHP3VRbCYtAh
         t8zw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ0CruxwlO6g6yrlkistXp824rcPngPOBfk8qSUk2aASh2ehJtlC
	PZols/0AxOL9OclShSzUFTE=
X-Google-Smtp-Source: ADFU+vtIuyvWF/qhiV00tzMQF2QmJxRPzMboODY5piTlndG4IrzQurar7XvKCmiGCRn1anhpnBMP1w==
X-Received: by 2002:a1c:6285:: with SMTP id w127mr11236334wmb.133.1584716119954;
        Fri, 20 Mar 2020 07:55:19 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:a98b:: with SMTP id s133ls3108772wme.3.gmail; Fri, 20
 Mar 2020 07:55:19 -0700 (PDT)
X-Received: by 2002:a1c:9ecb:: with SMTP id h194mr11201348wme.49.1584716119524;
        Fri, 20 Mar 2020 07:55:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584716119; cv=none;
        d=google.com; s=arc-20160816;
        b=TNKKqn+3nBxXolI66SeDgeHD5GM4v5tQ3F8p4Z3tXKB78ynMx8WUUoYLAq22cEz6f3
         fgxKiH0zQUgd8QUzmDABnp5j99N0S2IRWd9n4RlrTd6udMqXkHVEr0s/3MhxE/qtDnRo
         2zXUqEBl+Czb+t/kaq+2qjBscTvwkgaNRsKRvt8uLWz4dJdh+22LwdJI9FwQ/1Qchhj+
         fcHrRQDhrD0phAy3aXxpOzyJ0QNJJl2+syp7OAJM4mxhYsf8bfwVSCZ0H6MZN/JIgkwB
         WoSFgeX8C+dQiS11sgGd+CbbD+DXShSAA+0O2i/A7nd9R00NKgsiZ0ME/p5GQVYC1GaL
         gFaw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=ztkJpZm7hZA0dvmRlmvHTYn1wMIl8igO6kJRtrJdG+0=;
        b=Xabfu106VYcQKWDtFSMksnxeEwwIpO3QLT7RauA58A85J9Gxnhi7nKRxDrdUnLc9/N
         yGTtQ761h7dhXT1Z2yLYEz9AbPiTp99PAyl5iZZ7mIP3pVOPxFYFXcZ/l1Remy/wRszR
         S+EDeSKv2E2Z7LWpzXy6yRILxxFktHWmuTfLp+1w+M91kslRKDQmDe4PRii+mydC3l70
         NA9ot8/nd78WKU8c2CN0gFgIF0TrqACGq2ZAqjYpiYWVUr+iwvJqHDoI7kIB4nDP6UjV
         kFr/1qnOCc8Is4/6npIFO4zs1tBl+7QIKAcAfWX40nyfWVO68kkBzXM2V/F//b0kGj87
         1LDg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id l13si283142wrp.2.2020.03.20.07.55.19
        for <clang-built-linux@googlegroups.com>;
        Fri, 20 Mar 2020 07:55:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id CE50D1045;
	Fri, 20 Mar 2020 07:55:18 -0700 (PDT)
Received: from e119884-lin.cambridge.arm.com (e119884-lin.cambridge.arm.com [10.1.196.72])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id D8FE43F792;
	Fri, 20 Mar 2020 07:55:15 -0700 (PDT)
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
Subject: [PATCH v5 11/26] linux/time32.h: Extract common header for vDSO
Date: Fri, 20 Mar 2020 14:53:36 +0000
Message-Id: <20200320145351.32292-12-vincenzo.frascino@arm.com>
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200320145351.32292-12-vincenzo.frascino%40arm.com.
