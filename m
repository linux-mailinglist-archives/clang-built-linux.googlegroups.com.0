Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBEEI5TUQKGQERUHMFJY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63f.google.com (mail-pl1-x63f.google.com [IPv6:2607:f8b0:4864:20::63f])
	by mail.lfdr.de (Postfix) with ESMTPS id 19F2976899
	for <lists+clang-built-linux@lfdr.de>; Fri, 26 Jul 2019 15:45:54 +0200 (CEST)
Received: by mail-pl1-x63f.google.com with SMTP id n1sf28399772plk.11
        for <lists+clang-built-linux@lfdr.de>; Fri, 26 Jul 2019 06:45:54 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1564148752; cv=pass;
        d=google.com; s=arc-20160816;
        b=cyMOZkhAJ3bMZgw31KNz5gwj4bHzAovhH6yTGHqRvQv/CbHdaUKWsseibxRS4zswDF
         ttM8DvgtFGLXWpnJbF6+WTagC2GQs+u7Ur0e9PZ8xk/Rgd5vH6A0cyLsDu2RRBlntDhQ
         2mfkpQOne+OdzJhX+xuIAfUacyrLB8gBB40DKJMbqeI0kG5VtJ/95gqqq4zd8paxS+lw
         bYn8HA5IWKcYGo1WAfsxAi9X6Rwu1xSiWITUpnWk/2mJ/Wp/aV9xcNKYu8vtCYhRSnlS
         vJy54xFGmfKhfWtUBbhpKJa+5b3AKKT/MNj2x8gjYmhoCjCAx+0KsDmE55pSd5XYMUG8
         TUMw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=B32wNCoL1n3ThfdX00+Qr+/jXrRvEFqOoGE0Rp1o7k4=;
        b=BCLh79DfCa6aSfw4QaEDspiqLrOh0U1QgAQi+SwHc2bjQ3JA+ToI7ZKEpSMdyR1aQY
         rraK6j9P4f3FFc8SbxVDNU+jsJvtKVTILaJlIurptdy6sJ7J3Tsnz//mmpjdhZQhkcjx
         n+k4XkJJlxvJbGRnmvTyb+cFnVq1568U1FINTWEbSRvqwliJd6vdQ/ZeNX3nK2ckN1zf
         54XnyDeYxo2cI+8FB1v8xsKEW2bCRZOLZGC8NDXrkb0h4c4KlTK8hPbU58qvPCj+16vI
         Z3qZSJazmbWC9+rbmZxy+HP3DpBi1r8tije2gguCteYQX14/Fljh7kTw8ZrSSNos4UZP
         znIw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=EZ4SF3VG;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=B32wNCoL1n3ThfdX00+Qr+/jXrRvEFqOoGE0Rp1o7k4=;
        b=kHlxlkDbpiZbu0EypGTTTm4HGLh6lxLSoE3bsZPpPnnlc7T2zLgYeDvazAEsDGuboz
         A17fTOwHf0g/BWMxH5mSqu32Dr/yjdXCJguBT52q6pP6W0S+rY5FXbDfrh6AZWm+Or34
         oz8prvt6vtf7f5z+p2Hg2bB+nM6pvBKaDZr4aaP/QkyPN34BV+JRft0+nhO/LLc0r1NI
         OBJxEd7DJHhZ+nReFsnNPydTajL/L9IR4y7v8zihK4yd/2kl99bPx+w4brNZXySJ9Jwz
         ByxE07R69bmqTOkFZPD5CKRWGKrb7X1q62jaxS+W0PcO+1Q3gcnAVp4CYrJkkeN5PfDW
         KI1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=B32wNCoL1n3ThfdX00+Qr+/jXrRvEFqOoGE0Rp1o7k4=;
        b=mVRNz/x6RJRrT4FWwrH/esL8zBOAocnD/ZS3Xu+QXQMohJhOYsuMJ/WbrtGPl9vGEW
         gLf8fEZ3Z5HdcRiE70jifTJuimVlKOqINoo9ujrehoiDVZ+6t7emUGarDkr2NTzUtEkk
         azL5kqgduvQD3e1t3YjJ5Uu9EYUG9LDjLKnuzywSsDjQUVqhFOg+SuTHKGN+23lQsWzc
         GqIwnLwl8icRO2KJvd/SnZdqP3HtBFIN9cQF5jXX/BYMvtrSXHIRsHiMmLs+EkYufoeu
         EEqJq877IHPJLJk37d7tPWl9Uo3HX++I+rh0qeImKB0BYubE3gzYUpb0VOcBVqfCb/Kr
         QSgg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXpqtRY32s6Sa/+CSYUxXDa3uJfMf1hGGV/ODGWs/Hf+CPEa4NK
	tXmDgXwrKEqSiOiQekz9ZqM=
X-Google-Smtp-Source: APXvYqwM4cnnO/lVZRS76Aevddh5vaPO/ePbLXvkuSnik/VmQbwXuDU8aF6Tx4+2K1n41kfMwUqocw==
X-Received: by 2002:aa7:8dcc:: with SMTP id j12mr22516704pfr.137.1564148752832;
        Fri, 26 Jul 2019 06:45:52 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:3662:: with SMTP id s89ls18179206pjb.1.canary-gmail;
 Fri, 26 Jul 2019 06:45:52 -0700 (PDT)
X-Received: by 2002:a17:90a:19d:: with SMTP id 29mr100133387pjc.71.1564148752564;
        Fri, 26 Jul 2019 06:45:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1564148752; cv=none;
        d=google.com; s=arc-20160816;
        b=GlcrZez/H4DKyHj43f/g2yhdJX2es8Q4bvj3bzECt9HejkNb5E1bd1Owt7nHC20T/Z
         jqu6MvhXPzFIwG4K9GSnUpYwbvf97KF8+8YqXa6fV2v/ncoDR8CSzDnvj0D7TAXZiIF1
         v3yQeJpiWlytFg6P+9Z/4h4CFbdFpmXM+vZBBekUIppGKGVk0m9XD1qJvVcvdJJsmiJZ
         Al/S///Sl92IuJrkJXi5tEvj5AR0GG7Pzx+7CdqETcfLwjVJaIEJ23EbXkrBZ2fMYvnp
         OepwOmI5fW5XnIb3SXQ+PKqBMfxmh+R0VJqrbXanK91PYdbh8nx1aheULAILXf1fL16n
         R5+w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=B5OW3wz+ZPAWYp7cPgeJB2lPG5sB3z3OYmDNOGpfO6w=;
        b=sUjSy7858xaDcELvu6qQ9P/dkyr7WMjgIoYOVpXVfb3wa2u16MccE2EHX/vnAOci6d
         Iah665W4d4Qjg7NJcSWgp/AdU0cfidNojZLe7SP3cpz+9hA9iPKDndEnPGUCSXOzWpbS
         c+qolVHq7nxKK4y++98vHSwPFnsrd+9Q+2elxSpVXDtlRvnAT/H9KCZFOJLjl7k2dbl6
         tfZKaY9GMJUbz+C3Os1/UpbwlSJi7yquIixPYKJpl0WiU238tqqETXOU9GueVLX/A4cZ
         4ulo3JWMfyqt21TyR2MDcXz93t6YOZq+Ltgl1NrGR1e6CWRNN6f7N/7wSt+Wt/54zxc/
         fspg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=EZ4SF3VG;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id m93si2131352pje.2.2019.07.26.06.45.52
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 26 Jul 2019 06:45:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id A7DCE22CE5;
	Fri, 26 Jul 2019 13:45:51 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Arnd Bergmann <arnd@arndb.de>,
	Thomas Gleixner <tglx@linutronix.de>,
	Sasha Levin <sashal@kernel.org>,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.4 14/23] x86: math-emu: Hide clang warnings for 16-bit overflow
Date: Fri, 26 Jul 2019 09:45:13 -0400
Message-Id: <20190726134522.13308-14-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190726134522.13308-1-sashal@kernel.org>
References: <20190726134522.13308-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=EZ4SF3VG;       spf=pass
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
index afbc4d805d66..df5aee5402c4 100644
--- a/arch/x86/math-emu/fpu_emu.h
+++ b/arch/x86/math-emu/fpu_emu.h
@@ -176,7 +176,7 @@ static inline void reg_copy(FPU_REG const *x, FPU_REG *y)
 #define setexponentpos(x,y) { (*(short *)&((x)->exp)) = \
   ((y) + EXTENDED_Ebias) & 0x7fff; }
 #define exponent16(x)         (*(short *)&((x)->exp))
-#define setexponent16(x,y)  { (*(short *)&((x)->exp)) = (y); }
+#define setexponent16(x,y)  { (*(short *)&((x)->exp)) = (u16)(y); }
 #define addexponent(x,y)    { (*(short *)&((x)->exp)) += (y); }
 #define stdexp(x)           { (*(short *)&((x)->exp)) += EXTENDED_Ebias; }
 
diff --git a/arch/x86/math-emu/reg_constant.c b/arch/x86/math-emu/reg_constant.c
index 00548354912f..382093c5072b 100644
--- a/arch/x86/math-emu/reg_constant.c
+++ b/arch/x86/math-emu/reg_constant.c
@@ -17,7 +17,7 @@
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190726134522.13308-14-sashal%40kernel.org.
