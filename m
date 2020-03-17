Return-Path: <clang-built-linux+bncBCOYZDMZ6UMRBJUCYPZQKGQENW3PPEY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43e.google.com (mail-wr1-x43e.google.com [IPv6:2a00:1450:4864:20::43e])
	by mail.lfdr.de (Postfix) with ESMTPS id AEAC0188395
	for <lists+clang-built-linux@lfdr.de>; Tue, 17 Mar 2020 13:23:02 +0100 (CET)
Received: by mail-wr1-x43e.google.com with SMTP id h17sf929105wru.16
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Mar 2020 05:23:02 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584447782; cv=pass;
        d=google.com; s=arc-20160816;
        b=iI/+TIV46PLmao1PMbdTGX6QiGZntvKihkcPhZngyeJcgP2jkCrzRnG6OXJ9JuGpel
         wV8kDWOYoElya6s92qrRd0w28Gq6cpUAYUHPM2gdBrjx06UbHQbqDdFKamRfi/VloJ+C
         cGYrTmsWoltkFgOsVnD8kBv0kgWdLGHGrwTnacHJAMFWzw3cTtTJqIZh1cDKMxayVgYE
         kXdDPlE3VlYiw/LMnhFKS0aNlZC6ZOw46M82UhMFn3VvoLSXJ7kpMvHFoTPsDswGRKZc
         nb1iLbUO6oRDWY+LRPcFCiXSsJ3XR0HnW3LK8WJcFDu5B4DOOe/cd+674GjUi231ai10
         qQ9Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=d/5c9Znk+4BOVWXb9qlaEIYa1WHVGV2Tc9+AItVKRck=;
        b=iDYgJfQpemIm6/6nByuDZjhspeyPXfo2VC+OQXe4plw3tJqLXp6Y/JRqMLS5wxOWwa
         Bn5IvCAHQaBaJZFv4KkH9T0cKJUUOgykyQXpBWagh0ORZetA/XuJN67IEFc0CHBnpS+t
         315ekUPwWmThYe13uOSGT/daUpcsyel0idQQ8iafHPq31C9bxLn+gGGSXUvbyFcheLKR
         QSdPhjfy9JWOsr72hPsUnMgHReeiXItTFMFDpsTwzo8WEA8nDe8ZXCzfpjCZs8AU+eft
         C6+vXpYJbb1VKK201e1+/DIdz3+wEuqVoveEeCC/GPgU0uNebTbShocNYUC8APZ+GPpe
         rFig==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=d/5c9Znk+4BOVWXb9qlaEIYa1WHVGV2Tc9+AItVKRck=;
        b=PGBEQMUNlUkXNC9uZm7lCu0xeuy4WpesUhM7sYzuOlchMjhG1QaSL0+bHZp9LABilG
         qvL262J5uHyNV0seJK/uRj4dqQ5httmqAhO6IJODaTApaap0CuSMyewjjMUGQaBRexIe
         JqNbAKxsDpj4dXxC9XpJnCLN3aqOCr6GfMfIc+Y9bTwida0kOhUFhdy/uJwoO/lToG/m
         yGnHT6m6e4+R12h30V0ZeKdp1sNHNBLNBzAKCUeQeX8A5DC2Y4y78smX73FzGDgPCr+b
         Y/zZkYB/axZIDVYLtYrmgqMGQbCff9Hh0sv3fQavyaz9U1sx+9TbZWSzo53X14KtCIO6
         oiuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=d/5c9Znk+4BOVWXb9qlaEIYa1WHVGV2Tc9+AItVKRck=;
        b=g798htNSp0s0wQblolY+vpplE56DQqhITDi47c8geOOFxvXNhEwaeF8K5i9AVdkHh7
         Aj8wTBKPKZLDmeZO5UJflhtVB6Saeq2J4F03E5aXP8Tm2sckY9nXxp9gzvGeKUoa6UGY
         IM4a9Li8RWVx2I30Ghqgbzozc6BEMnEkydQar+qG5Vfn1ZQD36TZU3fq/bKCyrEHMI3X
         oKIr+eR1TLMlOex4NivDCp+EtI5vUPX/cE+bWe0yhkmuknZuQHVD/mzuesgaxfxCo00e
         v9cLtuFIzs3ndpF4wBOcFSuXJswnzSPOPBrQobpsctFvggFa60kBGhKeogQN/3oU4fB9
         MOVA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ2eSk3bicW6ppz8DWxCy37RLaB8ZqHFem17N0SoBmUY9FYtl6HZ
	tQl/xU9B084xRvyCqNI5TdY=
X-Google-Smtp-Source: ADFU+vsU/dHdJ0N1ekE4jFUZB8upXR8H3EZKGWW3AD6N7F+o+/M7ae1vxYp2yWFRTSCvXHA/QgVsPg==
X-Received: by 2002:adf:b197:: with SMTP id q23mr5844209wra.412.1584447782346;
        Tue, 17 Mar 2020 05:23:02 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:6802:: with SMTP id w2ls2361164wru.6.gmail; Tue, 17 Mar
 2020 05:23:01 -0700 (PDT)
X-Received: by 2002:a05:6000:110:: with SMTP id o16mr6058746wrx.296.1584447781787;
        Tue, 17 Mar 2020 05:23:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584447781; cv=none;
        d=google.com; s=arc-20160816;
        b=Qu2jG+JDa5x/9RyA8/vE+YZIl3B/SxUoB9YovK1bY/rVqxhYgEPGethG27Klspov2M
         AL5HB9QnSJCOmNkLpAiGheOpGQnbA4ayzx9B09jhky1NZ1jofBFkSDGhCrynZY1Jk2Cq
         74y8Z2/3ZrkhcqcDFgmFmjCqaVicGNp7xRMfDKS8A6PDysLe6Tc85ERNvgmfYqiC4mp1
         soFeTVtVaCC9JaKfXP6xx6zroZPYUwwNpOXfhaWEdRfRXbdezQOIp7max3omW3LDWLa/
         7z59lhL/UxzfXz4bZX+C+3mkDSNYhKGCTaoEwC77/ghOeMQMTqakVrIUVQjFwl1dNGCX
         AyJw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=KWrTR3GD/uWaeuIVtq54MRIPY8n+FVZb7WFjy7650SA=;
        b=TFuVFwEgdy2+/M8to4z/lw8Har6DYTsYZ+rTR/Ifs45/qQVXrA8kXEhBt7OnUB0JX4
         AitRNIKDNCq/LlLqd6pXY8dCF1G3oFhEfl7+ZnrdFQ6qjvBhxi25FUMed2tsVvVjtmOq
         4rKqNPmzAVTZEvQomg/1Xx8GmYWLulbN8I9kt1WTU4fyhYQClKngeG1KZVOQnoNuL1y5
         dj1KbVWq3hzRFDwuLihpvkzcpMXFLg6YVkUFXnC0qOt7wJOJTbqB1Rg3AMjgLOLNRBOm
         D96tmky5kBXROlmcb3oLtJMsgBl+/+08XqtSZbhnsC5qaVPi7l1yqMYuzPdDEMMpB1yJ
         EZgw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id e12si137960wru.1.2020.03.17.05.23.01
        for <clang-built-linux@googlegroups.com>;
        Tue, 17 Mar 2020 05:23:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 1DA221045;
	Tue, 17 Mar 2020 05:23:01 -0700 (PDT)
Received: from e119884-lin.cambridge.arm.com (e119884-lin.cambridge.arm.com [10.1.196.72])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 2874E3F534;
	Tue, 17 Mar 2020 05:22:58 -0700 (PDT)
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
Subject: [PATCH v4 03/26] linux/limits.h: Extract common header for vDSO
Date: Tue, 17 Mar 2020 12:21:57 +0000
Message-Id: <20200317122220.30393-4-vincenzo.frascino@arm.com>
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

Split limits.h into linux and common headers to make the latter suitable
for inclusion in the vDSO library.

Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
---
 include/linux/limits.h | 13 +------------
 include/vdso/limits.h  | 19 +++++++++++++++++++
 2 files changed, 20 insertions(+), 12 deletions(-)
 create mode 100644 include/vdso/limits.h

diff --git a/include/linux/limits.h b/include/linux/limits.h
index 76afcd24ff8c..7fc497ee1393 100644
--- a/include/linux/limits.h
+++ b/include/linux/limits.h
@@ -4,19 +4,8 @@
 
 #include <uapi/linux/limits.h>
 #include <linux/types.h>
+#include <vdso/limits.h>
 
-#define USHRT_MAX	((unsigned short)~0U)
-#define SHRT_MAX	((short)(USHRT_MAX >> 1))
-#define SHRT_MIN	((short)(-SHRT_MAX - 1))
-#define INT_MAX		((int)(~0U >> 1))
-#define INT_MIN		(-INT_MAX - 1)
-#define UINT_MAX	(~0U)
-#define LONG_MAX	((long)(~0UL >> 1))
-#define LONG_MIN	(-LONG_MAX - 1)
-#define ULONG_MAX	(~0UL)
-#define LLONG_MAX	((long long)(~0ULL >> 1))
-#define LLONG_MIN	(-LLONG_MAX - 1)
-#define ULLONG_MAX	(~0ULL)
 #define SIZE_MAX	(~(size_t)0)
 #define PHYS_ADDR_MAX	(~(phys_addr_t)0)
 
diff --git a/include/vdso/limits.h b/include/vdso/limits.h
new file mode 100644
index 000000000000..0197888ad0e0
--- /dev/null
+++ b/include/vdso/limits.h
@@ -0,0 +1,19 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+#ifndef __VDSO_LIMITS_H
+#define __VDSO_LIMITS_H
+
+#define USHRT_MAX	((unsigned short)~0U)
+#define SHRT_MAX	((short)(USHRT_MAX >> 1))
+#define SHRT_MIN	((short)(-SHRT_MAX - 1))
+#define INT_MAX		((int)(~0U >> 1))
+#define INT_MIN		(-INT_MAX - 1)
+#define UINT_MAX	(~0U)
+#define LONG_MAX	((long)(~0UL >> 1))
+#define LONG_MIN	(-LONG_MAX - 1)
+#define ULONG_MAX	(~0UL)
+#define LLONG_MAX	((long long)(~0ULL >> 1))
+#define LLONG_MIN	(-LLONG_MAX - 1)
+#define ULLONG_MAX	(~0ULL)
+#define UINTPTR_MAX	ULONG_MAX
+
+#endif /* __VDSO_LIMITS_H */
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200317122220.30393-4-vincenzo.frascino%40arm.com.
