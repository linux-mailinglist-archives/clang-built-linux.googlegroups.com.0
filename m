Return-Path: <clang-built-linux+bncBDTZTRGMXIFBB44F5TUQKGQEJXJC55Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x439.google.com (mail-pf1-x439.google.com [IPv6:2607:f8b0:4864:20::439])
	by mail.lfdr.de (Postfix) with ESMTPS id 8274B767EA
	for <lists+clang-built-linux@lfdr.de>; Fri, 26 Jul 2019 15:41:08 +0200 (CEST)
Received: by mail-pf1-x439.google.com with SMTP id x10sf33230935pfa.23
        for <lists+clang-built-linux@lfdr.de>; Fri, 26 Jul 2019 06:41:08 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1564148467; cv=pass;
        d=google.com; s=arc-20160816;
        b=foEDSfoCQZt05wp9tZjErdaj7H7ClkpOpnnHVCL9B8F+ThzsGpplqPMXpFhVuKriWc
         BJaMMRpdbz79ur9NL+WrowetZ2Sc+0NKjEBhjSpOm7tPno7HbrY9ZtQXj2sSWPF/UN2d
         k+TBkqn1RSpNpxPokv8btBUJSk6yWAuzgc85qrQ/e62qNF9noPmkjAz/ZjH/t077QYOG
         eZxZujICT1F5ytHuaZUkoGu+lz5e1Qo+mS5vxLgrvOOaHg9BkwFOaXyoNWAyMIVDYR65
         omM2KZzxDbwWxu6vu/AbVvwHzxiGHGmwbEKk6Hy8iS+MjJesrdwpdaSOVjixHZWCmtmT
         hrYA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=AUpdFA5YtMYTsx3aqd3yQ/8gCyTV/bePkQTEO1CUULU=;
        b=MKttnttI8ynfS/JxkUjihfcEyJHKcTZNaIzcm74oc4rKf2nGA4zCGfML5R7+xQhQLf
         fsFcpx5/4Y408IqrDL/uBddjyxrsMP0RG9QcBGanAZ2y6TdjCKEU3B6ylnpkSb7Xre9J
         Qe+WKmpDyKHlj13aYK/CCartABdQGr4UoIwTLQ9shZzocGcjw8Vb3Z7v6civSFc/ysGH
         jnQrMe9W5LN483C1i+jJhIvA1R4dnppD1zoh7QW1kVvkfLx5OaDnF0VKleu6pBxk0W4w
         TIOpNzqjVOfWf//yRIeX0xwWqGpeDWQbDo4mBAGPs8s7am5MKTa2V6rmP/K11QLhVo0j
         WCqQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=JDwczTeD;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=AUpdFA5YtMYTsx3aqd3yQ/8gCyTV/bePkQTEO1CUULU=;
        b=iKFNd3oQTzbSvAvIfDp8TlwozT2P8/Z672ZEZ+tr1IyCulZJxBso8zEo3Y3FCgctPR
         8qkj44KL1PRjaO9EEil/6j9JFw0Oykpr34O5VTiJZHo3HD6KY4wzE7p5NonjnbfvBopE
         GsEo/c7yZFTgrMRtrXZ1fgonPzqge+oljJHS/TWOE7hQZcunyGVWbhGlTpIA4Bsqhc32
         A/VNuw6nD1oA6j8HQl4E+RkoFaDlAvnjcgeDu1m8H5nMCwseGT6qyXX7zhRpS6ySgF4U
         EMJpm5TuyQxKm5FTOq9jNoWgxecKoyGJYDa4fDuZ4hIUtSJqzupHBt+z5Cl47Ch+f3Ha
         nOGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=AUpdFA5YtMYTsx3aqd3yQ/8gCyTV/bePkQTEO1CUULU=;
        b=UxeMInIESotZ8XSvr4JrHcabHQT/fL6qxaDTW0+l/XwxqI8VHQY728rCmlh/UwwNNQ
         Jwi1yzM5eYNDjDnUOyCkIsraS5/9KUuL+sfkYQrbnfi/0aAk1X05m7BS2azqYV8l7yaF
         8dgMpRDM99CA1T6AiGJC2UNlJRQCRS2/dJhkSQFYXHWIwcIV7Eoz1bjTEgUM5mn5RIkf
         e5CUAlof5cvu6CMb1+ya3ArnGOgI+zpIu+AtcLAX8Kl4uzmsjbAOczN7qT8Fw4mqjRZW
         EaVplFS27kE8wc+/VgZIZyYWMJkVhGPydyt+cxVL9h36uEpZif4KDbWsArvscIVEzpmh
         dL2A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAX/PXfnqdRolKlA+U0SIiZhLLkswCJm/Y9g3+bIWyM2IzLBemLk
	9gRAKZiyaiRkfk7aVcnAe98=
X-Google-Smtp-Source: APXvYqyYC55K4m8cGuVb0PaMEoHnBTLtIqgAs9HiUFm6UOmWvKJlJ/urBgz620Rfun8rhffDGXU02Q==
X-Received: by 2002:a63:89c7:: with SMTP id v190mr88247656pgd.299.1564148467164;
        Fri, 26 Jul 2019 06:41:07 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:e444:: with SMTP id i4ls10180564pgk.13.gmail; Fri, 26
 Jul 2019 06:41:06 -0700 (PDT)
X-Received: by 2002:a62:cd45:: with SMTP id o66mr22696194pfg.112.1564148466840;
        Fri, 26 Jul 2019 06:41:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1564148466; cv=none;
        d=google.com; s=arc-20160816;
        b=q+1cUcGtFxOaqrEn2rXfMKg6K0yD/mcnbAj0lASUm5AEbp3pyy1o26D8TvAX011oZ7
         krzmUf5nRm/4xUGI7HAeHk3ENVCKD6V6QiFIGo2a16aR9HxWVqtlkqxPFtJje//q5cVt
         tllMeAE955hyjbgzoxkVbMThoBZZlkXTVwdkjDwkYMyR63jthNaccv+Oy2vrSsF7g8Gn
         VS7MP/LPbft0To/SKiV3O6xnU329IG6CjApl8Jz4fvnspkrrw0+Kv/a0Bkt5/P4JXXna
         RF2FArxLB7OMXKaGu6iHAU4mtlbgsFU2eRxnYe3PL4ONISk8gbOIkbgb+LROwjCyWRso
         uPaA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=7GjzGpLikKKG+uNBNxDlnKwwYW+AtyJLvnl8HsIpDfQ=;
        b=TmIX2S0YS6C3tiaaDVHdu6nBAhZuqRCDZJuNUgo90/7SOCS4Oodp8JxCQmI8QjNPJS
         UlzqvS8d3i0m4TTc1uhawSB47h3zjZ4cD+PzCYpzW8XFufI9UcEjCuSx9IwqgUG/V/fJ
         J9psCoKl83YwwG+lkLxNu+yoz4nriFtTUOaLR+4AroZb2w/6UyxOtuh5j6MW3rTUlY3g
         Cz/7HJbW0CBBW+p/qvfLdJgNVWSsEOdOv+lmlMgeSxbUxrb2peYPJ+VeOdDdAVPV4uq1
         abEOXS7hywYptO2s0GS2lYFU8aUqpdCsPkCKt6pJBTOv+DVaC37t5xNkMZV9QFzdhwnt
         roVg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=JDwczTeD;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id d67si1786946pgc.1.2019.07.26.06.41.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 26 Jul 2019 06:41:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id E7D9922BE8;
	Fri, 26 Jul 2019 13:41:05 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Arnd Bergmann <arnd@arndb.de>,
	Thomas Gleixner <tglx@linutronix.de>,
	Sasha Levin <sashal@kernel.org>,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 5.2 55/85] x86: math-emu: Hide clang warnings for 16-bit overflow
Date: Fri, 26 Jul 2019 09:39:05 -0400
Message-Id: <20190726133936.11177-55-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190726133936.11177-1-sashal@kernel.org>
References: <20190726133936.11177-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=JDwczTeD;       spf=pass
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190726133936.11177-55-sashal%40kernel.org.
