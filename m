Return-Path: <clang-built-linux+bncBCOYZDMZ6UMRBUGUV3ZQKGQEIUZTXKA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43f.google.com (mail-wr1-x43f.google.com [IPv6:2a00:1450:4864:20::43f])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B670184AF8
	for <lists+clang-built-linux@lfdr.de>; Fri, 13 Mar 2020 16:44:16 +0100 (CET)
Received: by mail-wr1-x43f.google.com with SMTP id b11sf4472809wru.21
        for <lists+clang-built-linux@lfdr.de>; Fri, 13 Mar 2020 08:44:16 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584114256; cv=pass;
        d=google.com; s=arc-20160816;
        b=TwhdkYoicxWsrnyVovHpXE4r3O/gOgDjISQfcU3VzWBYgyzNx0/ZI1ULWS0HNtfjP9
         FIaoBpM8K0yfdszlKAiLS+SFsimOqCntzYSjH3g+4k5yrJQmBjJu5vxvIzNh4Rpzv4t6
         zSzI8MqgfztnlEo8UMJqXtG+poedNcmmRg9EqEyiYOm8zirBbZJSyucO2HDdgP0KlRUs
         0hXa1uvuVQyemYuYeZ0xdPprXSaqds4elPP0+DxNPqjKfKRQHmFnKggqG9+EvR2zCdKG
         aEls8k/xJPRH0ZzlDb5r7Grs3laPp+s28rWprl0lrz8/DS/GD0UBYSKWKaBCZQJTr19F
         Zwpw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=meADd2/OVXI1r7sGCjQ+B+ZPNBBAauXE+1g7JfYgd9w=;
        b=yQ/DqyEKFPGLq7zY6IhOwX/JOL7IPBoXVqf+c5k9gESOv6WfP1q5tb6dTkQsWb4G/6
         6/OXdXWazmXNP5WWzzpA052XVPshzfaQOPlsgJqW1T/+vWSYzuVGCHamdclfVl27QJcz
         fK8zQcSA8bbSVXIGm+SksZifnmRWfZ4FUR+1CL9LwGk8z6dXUe+2T0g1R0+fHWPT+NBQ
         pmA/v3biGE7k4UXLACBLeahfRd+LLAV6DKTaPOKW37LLjP3tz2u3lCMg5Wx5bCs4sMHK
         thvfQGQdZzOvilryENnfsiiepwlrgf1rDiJ7GOEfPyGq9SAmTbCnmTJWzVWQ/sOmaWqK
         IJVQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=meADd2/OVXI1r7sGCjQ+B+ZPNBBAauXE+1g7JfYgd9w=;
        b=MmsHJ6F4s5Li9+wft2syy+K4KR5+4Nsa8QLHZGVFuPB3GXVdnSkDA9J5PeoNxggf6v
         caEoHerokZkbvJj49+hkX/jhCLpC7vRysrKUcWfjunR13AXMLKoas96/qBUqYgACVVxn
         ksSc0IAgZlmeAqgjHsXGfm9ev0nDEc6vuc9WrM10ogVrSLQ/ubQjgY2nPx3DdVTjz/Y0
         br2UcIfIG8bDW7gCxp8O+PW7NZ9jEzdnxnVjSZBD6mUA3vGVEJWCV4hUIriyNGBy2doC
         aK0qcd0EdO+qPFoG9PB+G7WsFl7x2WFKdEJYH6Pj6PgC5W6WUCVhOvYP+iK3vu7l1jRY
         Qolg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=meADd2/OVXI1r7sGCjQ+B+ZPNBBAauXE+1g7JfYgd9w=;
        b=S0b/y/gHmolu7ciW1A5TC7x7bPnNl3ZM0WnMpclIJp/iJpjYXtfpb04yACa0GbD8K9
         qlU4/DBmNcam8cOdel/+BkkrB1oWopBkzAeKqmXce3T2LcF67heDjPt+ZfAnAju9R0/F
         2RHucvCdtvEcGsN8INxF6fE6bRKYsCtj+28WCh5TtMNxEQbRAN2T/c/2ofg+01yw2Rve
         lHBhCkNyCykYD31AIkTWc06oVKDCoS+Jz0XXeEhf86iHCb0FgxTre+Tax6qnS+OrYssB
         yD/W+v8a9zvr6NNgWw8UAejUyYpWpFCWw2RBaeycryv3gpJfS4grObwtv4BN3dSAwB//
         JSpA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ0NC9qtE0tTzbINJ0z7kAMvsS4RlAEQL9SAnEZOTfn3AeiL1NwG
	eVWs7jpzNiFiZAlrRBOoj6w=
X-Google-Smtp-Source: ADFU+vvS0+LxrZjcj/vVA7aBSXGuUm90Vfb4ofRiWcBy4HJB2jY6a/bDAVP8EkvfT5tND+BP5s9Qlg==
X-Received: by 2002:adf:ecca:: with SMTP id s10mr19080128wro.255.1584114256323;
        Fri, 13 Mar 2020 08:44:16 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:508e:: with SMTP id a14ls5135001wrt.2.gmail; Fri, 13 Mar
 2020 08:44:15 -0700 (PDT)
X-Received: by 2002:a5d:414d:: with SMTP id c13mr19093387wrq.40.1584114255794;
        Fri, 13 Mar 2020 08:44:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584114255; cv=none;
        d=google.com; s=arc-20160816;
        b=e2V0hJ+gTZQojQiLM7xztoOpJVJyEUF0V1ILvRqNALUKngA8nbds2SzkW7tESBFxZq
         hrTSvKpADk2D+wjKZVAHfmRlGuU1U1wbkkYZLhSFKWPc36G0g0G9jJLk7yRSornzjg/a
         1lH5kQ9ErnxnXL0HFo2GuWitQ/+fjkW6Ndu3WkppqdyU1+YsVLkrQ55raJiyMTw34Xct
         iRSyDiFR9LWmJ9Yz+YgmPh4OiqCONKn6BqBU2LvYshgp5RlZRC/2KKfak0mXMpHfPBr8
         THEj624gMzGcM5h47u/nNTnubnAHiPEN3CBANA9TMmY0z/BDKc8XeqhFprF4eAHfj5wq
         EuJw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=+Lb+MpXXTqg/9LgLvaIfE5VAfTlCV5oL3TBdI/yFVxw=;
        b=O/fOfvWZbxIgDIZLEbZ2YiqC8EzzS3uFawI4LZEYiPCrAAXLUOGUsokSpGFvPJhI0S
         6820DT9vVYzSmfcF9Dm2RDmc6O3Phl2+VxFySbYCOxsviamYTXG9UQe2ergkA5Z7DKzQ
         F2qH7ih8e54rIK/E8Ya+Z7JxsP+j3yZaV1FDaCxAalxfFtEpFvOmGsMqWLa41AhhF2AV
         qdHLwUPp6ugko+VxllbZUSTrFxtSPP7gH7g6pt2w3N0HqGP3gzXFPiZFeCizTDoPnUOC
         XpT2M+bfIPAE0B1MdHfB6lFPe7Tb56SVY2mcQOVMoqs52e5jgv7KotzG3MuZsn20ArWt
         GIcw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id y185si339053wmd.2.2020.03.13.08.44.15
        for <clang-built-linux@googlegroups.com>;
        Fri, 13 Mar 2020 08:44:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 197E731B;
	Fri, 13 Mar 2020 08:44:15 -0700 (PDT)
Received: from e119884-lin.cambridge.arm.com (e119884-lin.cambridge.arm.com [10.1.196.72])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 245443F67D;
	Fri, 13 Mar 2020 08:44:12 -0700 (PDT)
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
Subject: [PATCH v3 03/26] linux/limits.h: Extract common header for vDSO
Date: Fri, 13 Mar 2020 15:43:22 +0000
Message-Id: <20200313154345.56760-4-vincenzo.frascino@arm.com>
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

Split limits.h into linux and common headers to make the latter suitable
for inclusion in the vDSO library.

Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
---
 include/linux/limits.h | 13 +------------
 include/vdso/limits.h  | 18 ++++++++++++++++++
 2 files changed, 19 insertions(+), 12 deletions(-)
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
index 000000000000..7d2cd75c7ac2
--- /dev/null
+++ b/include/vdso/limits.h
@@ -0,0 +1,18 @@
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
+
+#endif /* __VDSO_LIMITS_H */
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200313154345.56760-4-vincenzo.frascino%40arm.com.
