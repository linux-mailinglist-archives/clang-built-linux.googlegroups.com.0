Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBJEH5TUQKGQECQN5BYY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x540.google.com (mail-pg1-x540.google.com [IPv6:2607:f8b0:4864:20::540])
	by mail.lfdr.de (Postfix) with ESMTPS id A6F6376855
	for <lists+clang-built-linux@lfdr.de>; Fri, 26 Jul 2019 15:44:05 +0200 (CEST)
Received: by mail-pg1-x540.google.com with SMTP id u1sf33002821pgr.13
        for <lists+clang-built-linux@lfdr.de>; Fri, 26 Jul 2019 06:44:05 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1564148644; cv=pass;
        d=google.com; s=arc-20160816;
        b=MiNevbJzSNVyiUF0MxXCTDHsCutKyM7S7lR88ET72t2+qxz3k5Je/vtiuVW1YD7HBx
         +ikRKwSJj62cSok0KLbpBz5+lUOskeZ5fy5wxCxoOfbfhLyPm7DJI5r6QWcWIaZUGxjm
         aRHkR4NygciwkBEOQdRb7zaxO1OPeeoyDFKt3RL3eN1aToAJkEN0+ktJHMhhH6aC8aSx
         UYTu0gZfSVzMC6qrjyRHZchE/gYe81jgDqYQPjXgGps25jCeFwHY7yomJAfC1luYwlap
         5kIbsCsxC1PVStdjsKakIuxd536RJE6D1Q+pVqDd+nSCvQIsbdr+0jTPuXO1pfiHmity
         Rcgw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=avAcMox+iacwg9JQwn/XcbiBewX5tDfyZJhCUJ2sT9g=;
        b=tNJIRkXVLgCHcTlJwGT3jHKKT1amsD9rvrC2qw/uGGFadj50yUN+oi2IjEZ++32Hkg
         mZL6Zxg/Dcfi7UwU5fQFxWWKOfVP57EfAysJJrAvT8Vr8KTrvKQEWOqTW1t/xFyY6Ruf
         +8p8RGCNo3Hp5PBqk5AlyEhmqlvdUQHgEAtonnMrdyiLbMxY8u5zC/XjJMA+v7pVFIJa
         J2cf86iFBferm64TeF0UXXwakOGPmEC5TrB0JqAT5PnZxhTduqYxnqCqFMRqKLpIAUbW
         kKPa4V8Hz5HLxDd3slaamWba+1b1I9MUtZvySgJQSPHfS5N7ImC4xCiiOQfkofvLQnI3
         /p0w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=QdAXRuIj;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=avAcMox+iacwg9JQwn/XcbiBewX5tDfyZJhCUJ2sT9g=;
        b=e5nmHuzkrNlK6WE4qOZSysp933pCBu1tMThvAGOx4rRPJ+WlVTAD7oWkqaj5niyJAk
         SDPjDd5kUYDjp0L348M50+V3gcr7ez9E1W8cHj4UKCPPebcyiC8S3FKKFi2EbXp5jFX5
         lnhhZleyr42/nqTfV++NbX3jNqvS6bCKRy5Uo5X6X9dnuQwzGECa8kBJdMAehcnkapPk
         Qw8/R3iHFhq34C9/E3o2ch+iqCl8l/ImIIsiOW+4KsfBLEZIXKHPX5K9c6WbKkbQquNe
         zHbQ4jx9Mp1pP4fNxKSs1CtyvBSWbYheJrYIOjEndVuH+s0Rzk21T0PflBFvOWHnFrfV
         JQ8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=avAcMox+iacwg9JQwn/XcbiBewX5tDfyZJhCUJ2sT9g=;
        b=BAORv+IaFC5Ggx25iGn1Myp5s0Ds4SfemZ+cM1mA/sqj2dzdTeVXBkCwiHwx5QrSpX
         DuK/OfcEQ5ouYSXrAMUGXdpVldse3MFea4g2rdNXfKxE0qE56qkvEk9rfOE678cZ6EEB
         a/gFziE4hTfQbMQwBP5NgzYbHRRl1Fo5gsDg1HG5GmQ6GdfZYgnHCUgAAv1sWiYNyEK1
         i9dkJzIyNuAEFX/IKWB2jzJocom6HIcvNc2CMh8Xq5+0RAjwNv6AL2fLQA9r1ht9Qr/h
         C2ObjE8owHYdD1kQVz3sl+9siSjPyqN01Aisxid6FB+U6SqOgj8QzrcD7FzRIvJBoLol
         1avg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAU/kYoLGqHFEbOUm3mZriX7Mvr5ALnJ1kuJNusbfrUkAagc2tvn
	8qOn8zfTbJKcZ/GwrOYVd1U=
X-Google-Smtp-Source: APXvYqxIShImeb6WuVTH1hhYeH4OD+NsmwNd02ewqtANgtAgTgFTm9sLjKEVjECcBZ0NnHxLd7dIuw==
X-Received: by 2002:a17:90a:ad86:: with SMTP id s6mr98694369pjq.42.1564148644435;
        Fri, 26 Jul 2019 06:44:04 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:ce4e:: with SMTP id y75ls10398932pfg.11.gmail; Fri, 26
 Jul 2019 06:44:04 -0700 (PDT)
X-Received: by 2002:a65:5cca:: with SMTP id b10mr93562889pgt.365.1564148644128;
        Fri, 26 Jul 2019 06:44:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1564148644; cv=none;
        d=google.com; s=arc-20160816;
        b=NtBbM0tTxzZn6qF2WRxRKF3JTn6pkF8wfCoM800pYjyiVzOuRBjBmk88wF0xzWCUbz
         ai5RVoZ0iVub6cEFdGgjT+7q2oTENSEc9iBUY5vtK7neWfziWUG2IzqPR/GmTDd3Nxgu
         ha/ZYnBEMhFlCWMvcDKQve2oqd34RLeQWsnYxjbKmEwCQzXLidiNtQTRfx3uKh50FVPd
         pAoPQjWA7LlbLCWrdVbL3AwSOrnTEfewZ3kkdDPQiDM+RUnr9WXQ587v/mMC6ZLAK4Wn
         QBFHBRzDldRhfnMsDRHwuqotE0gVV23FZrpS/0L91/BhhqBDcKIAmYoAa7jpLw4kNsiO
         +3AQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=7GjzGpLikKKG+uNBNxDlnKwwYW+AtyJLvnl8HsIpDfQ=;
        b=LXZAF1+8tdziA945hd5UmfWsCW6pEXXzhFPHyh3sQc5aS6cnHjpYx98qDpQxt5uH5G
         x3cNaDwdrJklNGA6whF7SG0A6lG2Xh38R3i0jLsdUiG7JRPSGt6pvF7QMwftVst5HWX2
         7MF53Ew0Rj8UcLQ9y2syNhLbymppa7C7/0SzyCHrNaBKhPBTLRpl8IweTAy9WTOXscOH
         jb9Lpsl848HbaXkNJuEuIFwhWJUBmdZExKimZh4dA46tk80i4z2rVXhkfaDYb/a5dh/Z
         3sumuVbSpWSuj0lPTYtJ4pc+ritNmWL0n0EyuaTURlgeZ3nul1xB2vCmWx/hvw0keNL7
         /l1A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=QdAXRuIj;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id m93si2131159pje.2.2019.07.26.06.44.04
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 26 Jul 2019 06:44:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 3EEB122CD2;
	Fri, 26 Jul 2019 13:44:03 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Arnd Bergmann <arnd@arndb.de>,
	Thomas Gleixner <tglx@linutronix.de>,
	Sasha Levin <sashal@kernel.org>,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.14 22/37] x86: math-emu: Hide clang warnings for 16-bit overflow
Date: Fri, 26 Jul 2019 09:43:17 -0400
Message-Id: <20190726134332.12626-22-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190726134332.12626-1-sashal@kernel.org>
References: <20190726134332.12626-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=QdAXRuIj;       spf=pass
 (google.com: domain of sashal@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=sashal@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

From: Arnd Bergmann <arnd@arndb.de>

[ Upstream commit 29e7e9664aec17b94a9c8c5a75f8d216a206aa3a ]

clang warns about a few parts of the math-emu implementation
where a 16-bit integer becomes negative during assignment:

arch/x86/math-emu/poly_tan.c:88:35: error: implicit conversion from 'int' to 'short' changes value from 49216 to -16320 [-Werror,-Wconstant-conversion]
                                      (0x41 + EXTENDED_Ebias) | SIGN_Negative);
                                      ~~~~~~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~
arch/x86/math-emu/fpu_emu.h:180:58: note: expanded from macro 'setexponent16'
 #define setexponent16(x,y)  { (*(short *)&((x)->exp)) = (y); }
                                                      ~  ^
arch/x86/math-emu/reg_constant.c:37:32: error: implicit conversion from 'int' to 'short' changes value from 49085 to -16451 [-Werror,-Wconstant-conversion]
FPU_REG const CONST_PI2extra = MAKE_REG(NEG, -66,
                               ^~~~~~~~~~~~~~~~~~
arch/x86/math-emu/reg_constant.c:21:25: note: expanded from macro 'MAKE_REG'
                ((EXTENDED_Ebias+(e)) | ((SIGN_##s != 0)*0x8000)) }
                 ~~~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~
arch/x86/math-emu/reg_constant.c:48:28: error: implicit conversion from 'int' to 'short' changes value from 65535 to -1 [-Werror,-Wconstant-conversion]
FPU_REG const CONST_QNaN = MAKE_REG(NEG, EXP_OVER, 0x00000000, 0xC0000000);
                           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
arch/x86/math-emu/reg_constant.c:21:25: note: expanded from macro 'MAKE_REG'
                ((EXTENDED_Ebias+(e)) | ((SIGN_##s != 0)*0x8000)) }
                 ~~~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~

The code is correct as is, so add a typecast to shut up the warnings.

Signed-off-by: Arnd Bergmann <arnd@arndb.de>
Signed-off-by: Thomas Gleixner <tglx@linutronix.de>
Link: https://lkml.kernel.org/r/20190712090816.350668-1-arnd@arndb.de
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/x86/math-emu/fpu_emu.h      | 2 +-
 arch/x86/math-emu/reg_constant.c | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/x86/math-emu/fpu_emu.h b/arch/x86/math-emu/fpu_emu.h
index a5a41ec58072..0c122226ca56 100644
--- a/arch/x86/math-emu/fpu_emu.h
+++ b/arch/x86/math-emu/fpu_emu.h
@@ -177,7 +177,7 @@ static inline void reg_copy(FPU_REG const *x, FPU_REG *y)
 #define setexponentpos(x,y) { (*(short *)&((x)->exp)) = \
   ((y) + EXTENDED_Ebias) & 0x7fff; }
 #define exponent16(x)         (*(short *)&((x)->exp))
-#define setexponent16(x,y)  { (*(short *)&((x)->exp)) = (y); }
+#define setexponent16(x,y)  { (*(short *)&((x)->exp)) = (u16)(y); }
 #define addexponent(x,y)    { (*(short *)&((x)->exp)) += (y); }
 #define stdexp(x)           { (*(short *)&((x)->exp)) += EXTENDED_Ebias; }
 
diff --git a/arch/x86/math-emu/reg_constant.c b/arch/x86/math-emu/reg_constant.c
index 8dc9095bab22..742619e94bdf 100644
--- a/arch/x86/math-emu/reg_constant.c
+++ b/arch/x86/math-emu/reg_constant.c
@@ -18,7 +18,7 @@
 #include "control_w.h"
 
 #define MAKE_REG(s, e, l, h) { l, h, \
-		((EXTENDED_Ebias+(e)) | ((SIGN_##s != 0)*0x8000)) }
+		(u16)((EXTENDED_Ebias+(e)) | ((SIGN_##s != 0)*0x8000)) }
 
 FPU_REG const CONST_1 = MAKE_REG(POS, 0, 0x00000000, 0x80000000);
 #if 0
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190726134332.12626-22-sashal%40kernel.org.
