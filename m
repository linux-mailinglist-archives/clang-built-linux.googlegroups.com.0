Return-Path: <clang-built-linux+bncBCH67JWTV4DBBQNH6KKQMGQECUAKPLY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb37.google.com (mail-yb1-xb37.google.com [IPv6:2607:f8b0:4864:20::b37])
	by mail.lfdr.de (Postfix) with ESMTPS id 40DC1560834
	for <lists+clang-built-linux@lfdr.de>; Wed, 29 Jun 2022 20:02:43 +0200 (CEST)
Received: by mail-yb1-xb37.google.com with SMTP id p206-20020a255bd7000000b0066c9e778477sf9587348ybb.2
        for <lists+clang-built-linux@lfdr.de>; Wed, 29 Jun 2022 11:02:43 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1656525762; cv=pass;
        d=google.com; s=arc-20160816;
        b=VIXen82cNS01eq52SLTcH7kNw88Au0YCWK4qhXpvEvjsSqWyFI9rkwfq5d/wHHzwgj
         d+V5zOgJdvCvRV2Vu/aP41Bw0exexjisaAofMLWoEuuxmCaTdDDIszIf1UBH6Dum0KCT
         7eol7KI51BHO2ftXnfu0U70fekuQ/KPkMCVL5U1qeoMPK2b7OmtlMDpLaQkuA80M0RAB
         09vdMMZoxKGnDSGv1ga47Lo/8k4uRMMAblsTbnzvn5Ps6v9UUBvUup5NcJpt6vJfQxMB
         buHgEsZjax5X3mrbIahZNDTgJSQUKn3ywOSehep6MYV8qV8NcMvxzdjmUyqFFsEAdHqP
         IUgg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature
         :dkim-signature;
        bh=XGN2XR5+yClFkc7tF8puD5CftDpAmeFynb/QIUYsKGg=;
        b=dYQ2dOVNWAPU2+xt92bhTz5mRxsVSWVisACDyOW7wYxwkgG7M0xrenesf7yyjEQd7g
         AZtquheFO9/SN5mqgbRpOAXu+I+D/ZlXUDM1pt6x475jI4E38lG/lCjs+UuWZUxntf5L
         VN+k4qzm/9vgKdxDYQHLymi/vZZ+iMEjS6Y+iLRDL1+EbEISClz8zpYoMtNg4vFQd64R
         HTX0SRQfuBik6l8S+ewnek9iwOkA3k4ZscBylpZL+XbbdO2vPKmc3WYJ6tXv1EoQxZ6g
         Ns/ZzwuBgZVoIpiJV+5hOgfXPdVhWwCQU/Xz5ARrOtt/qqb0ttglpfFIdb9TXNDRDI7i
         8XsQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b="B3Gq/KiJ";
       spf=pass (google.com: domain of f.fainelli@gmail.com designates 2607:f8b0:4864:20::102b as permitted sender) smtp.mailfrom=f.fainelli@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=XGN2XR5+yClFkc7tF8puD5CftDpAmeFynb/QIUYsKGg=;
        b=soFIBQzJJgJ0CpG4jVpGCjjUIwFEdwasHU0N9OMvEOyjM+Z7jLYLdO7JKvx8PivKjG
         TW5ZvOygYGLdUJd9QWXEDYAocgBrTrGEdUy+XQ98qXlz6fx05KHSWrSLfELJM7o0L/SA
         RP+QsSn5IoSzdRG3gVflj8VBEzhusxaCXqiMEYBqeDJFLgZQf4rf3e/O2P7FPf4vSsHO
         2CthNYkXxXF/ktARM3+OZCSkEqYGk3IilLM+ylKIjNiwcypxUNR4MLUOvqzZ1om/XBrH
         B2uBLiQ53Emj6jjRVrljWz1SuVKw3+DVEqjeUDadkh9tdsufW0KbKLjGy+IMhkbd49OT
         e58g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=XGN2XR5+yClFkc7tF8puD5CftDpAmeFynb/QIUYsKGg=;
        b=RiXRgX8i1RRlKrNjY53WglTYpmIgdxRsTg4l3z2LwY9vtwEJH8jVgFtMekwoFQda1u
         Khx0k6KQXiZnjILvO3wVY5/MtxODFQ3RCYx4mY42cc7yWPTGZTA2VQGQi5jktMqCZYOn
         dgPWKSCMxKP+T3nBOkV5oFPDzyMCVv0ePl68wubs9o0aF18nlxIPHHzXEcm7FEDYIK4n
         10eltJPksLXPrdv8i7uTHYfzjGgzu/OcCNzEEI1X3qJEr1pb4CU651xR2G9OSiSfEE0x
         idqTLniB5MmI4y0UzPyD0KVJy7HcJ1Kf2fBP1OZsA52UX7biKcxGkQELMVrtoGSGS1OR
         TEbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=XGN2XR5+yClFkc7tF8puD5CftDpAmeFynb/QIUYsKGg=;
        b=03BaempKvgPzNrU+YGaOGqkil/tdfI1XAGQIDgZpRbaznQWxojKUxJp4a+Ymh3P/mY
         oseI28Z6fucsONMcmAWXPLcuQ2YA4FYkS7/ZLVifPUyWocpYOP6485Rn9+E1rzjo8/Hk
         Ma7hnfiEbeRDupbTq9DRw+/y9U6x2uiTn5DuOHHloJtrSlrFwtzzaMVma3ZWrixOuoX9
         DYp5gNznurAKddxfGRGVCnlZ4SSt9uz2k7cnpV/D/CesFeHjeG2roL8U5NEklySFigLW
         mCHKCNZDQLHWysvjpehCeAd9t/dthaZvPPf636JbO7/supNmrlO/ugRSr82OSaZfWv+e
         IT5w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AJIora+kqtCe4FY2GiLxsSL0MS93KJn3AdGXL/0Zn/RgUXf/zZQjKWTe
	JTyDqNlfO2ZRBe3u/FuEhx4=
X-Google-Smtp-Source: AGRyM1uGq3p7Claxgd6forZjwcKO8XFFXwUWRCKfcPe4vV+e2g3Ow2uJI1DAdZXMJq/0WXyTAzOfXw==
X-Received: by 2002:a25:640c:0:b0:66c:8264:b907 with SMTP id y12-20020a25640c000000b0066c8264b907mr5031780ybb.232.1656525761850;
        Wed, 29 Jun 2022 11:02:41 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:2fc1:0:b0:66d:6873:840d with SMTP id v184-20020a252fc1000000b0066d6873840dls1480041ybv.8.gmail;
 Wed, 29 Jun 2022 11:02:41 -0700 (PDT)
X-Received: by 2002:a25:870e:0:b0:66c:b173:f047 with SMTP id a14-20020a25870e000000b0066cb173f047mr4691994ybl.635.1656525761080;
        Wed, 29 Jun 2022 11:02:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1656525761; cv=none;
        d=google.com; s=arc-20160816;
        b=VT6GW9ngKS9N+YSQ27v1qesPKThvcZp/zy32WAAhyTQ6luI7/QOVViUPZL0jqvHYvt
         56NBrSG9BJLNoQI/5K5782OTlrjMexrdThonW3atEQ28cV2NTai3YZl8M2FZ9VJLWr5u
         RKpdCwJqb0yIiXRcD6oJUkwxvQkFnc8KRiLOC0GbY5nLQ1S0CzuYYUF3fa2X4smz6S53
         WpsiitHIO4iyFv9kqs4IEl/tX6cskiGfrGu8PCF570lgOUlO3bcmuuZ26fs9QJ1Mq0HM
         7+VEaL3KvOUpRAQ63s6y6q5UWGUh5YYvPCpXTWDv3jrsqivcymWEIBicvveX6QeeYw4y
         OUcg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=h7YLJWWkgB25vR4MQko7hOy0PQM4fsrLtI5uxh2dVRg=;
        b=oTXJym1m2GfH84F4SEk1dJhcOnJgIJy26SEuJyqmFvA6rwEkOy+X2xUN+vnievC4i5
         xRh9whIXTG2a/D+tQLbFAzdE2ly2jcAxXUHdEqMjsbSEgh1OUPpGpRlLkjvG1J3zX1es
         zSsR5xvYgIlxPR2yVnm354dppKUJb/6/fwS39c4ecLfcKAbB7g45lw9oUBzq5sCzoV3W
         hUBHc6/ACaMA4PdKuKscI1rYhD69Xf9G0HgxElf01O4AXs+aZrTiw1arK64D3xfXIypO
         2G8vtYscxpql5D02VqGC3gjvglH/AI9u9HuWo0lGsQMRHg7VcsvNvv9WEYCyB1rgt/PC
         L6cg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b="B3Gq/KiJ";
       spf=pass (google.com: domain of f.fainelli@gmail.com designates 2607:f8b0:4864:20::102b as permitted sender) smtp.mailfrom=f.fainelli@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pj1-x102b.google.com (mail-pj1-x102b.google.com. [2607:f8b0:4864:20::102b])
        by gmr-mx.google.com with ESMTPS id 18-20020a810412000000b003188204f717si743239ywe.4.2022.06.29.11.02.41
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 29 Jun 2022 11:02:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of f.fainelli@gmail.com designates 2607:f8b0:4864:20::102b as permitted sender) client-ip=2607:f8b0:4864:20::102b;
Received: by mail-pj1-x102b.google.com with SMTP id b12-20020a17090a6acc00b001ec2b181c98so179896pjm.4
        for <clang-built-linux@googlegroups.com>; Wed, 29 Jun 2022 11:02:41 -0700 (PDT)
X-Received: by 2002:a17:902:7604:b0:16a:f36d:73f3 with SMTP id k4-20020a170902760400b0016af36d73f3mr10509893pll.170.1656525760588;
        Wed, 29 Jun 2022 11:02:40 -0700 (PDT)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id s7-20020a17090302c700b00168e83eda56sm11736371plk.3.2022.06.29.11.02.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Jun 2022 11:02:40 -0700 (PDT)
From: Florian Fainelli <f.fainelli@gmail.com>
To: stable@vger.kernel.org
Cc: Stefan Agner <stefan@agner.ch>,
	Russell King <rmk+kernel@armlinux.org.uk>,
	Florian Fainelli <f.fainelli@gmail.com>,
	Russell King <linux@armlinux.org.uk>,
	Herbert Xu <herbert@gondor.apana.org.au>,
	"David S. Miller" <davem@davemloft.net>,
	Tony Lindgren <tony@atomide.com>,
	Hans Ulli Kroll <ulli.kroll@googlemail.com>,
	Ard Biesheuvel <ardb@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Nicolas Pitre <nico@fluxnic.net>,
	Andre Przywara <andre.przywara@arm.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Jian Cai <caij2003@gmail.com>,
	linux-arm-kernel@lists.infradead.org (moderated list:ARM PORT),
	linux-kernel@vger.kernel.org (open list),
	linux-crypto@vger.kernel.org (open list:CRYPTO API),
	linux-omap@vger.kernel.org (open list:OMAP2+ SUPPORT),
	clang-built-linux@googlegroups.com (open list:CLANG/LLVM BUILD SUPPORT),
	Sasha Levin <sashal@kernel.org>
Subject: [PATCH stable 5.4 01/11] ARM: 8989/1: use .fpu assembler directives instead of assembler arguments
Date: Wed, 29 Jun 2022 11:02:17 -0700
Message-Id: <20220629180227.3408104-2-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220629180227.3408104-1-f.fainelli@gmail.com>
References: <20220629180227.3408104-1-f.fainelli@gmail.com>
MIME-Version: 1.0
X-Original-Sender: f.fainelli@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20210112 header.b="B3Gq/KiJ";       spf=pass
 (google.com: domain of f.fainelli@gmail.com designates 2607:f8b0:4864:20::102b
 as permitted sender) smtp.mailfrom=f.fainelli@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

From: Stefan Agner <stefan@agner.ch>

commit a6c30873ee4a5cc0549c1973668156381ab2c1c4 upstream

Explicit FPU selection has been introduced in commit 1a6be26d5b1a
("[ARM] Enable VFP to be built when non-VFP capable CPUs are selected")
to make use of assembler mnemonics for VFP instructions.

However, clang currently does not support passing assembler flags
like this and errors out with:
clang-10: error: the clang compiler does not support '-Wa,-mfpu=softvfp+vfp'

Make use of the .fpu assembler directives to select the floating point
hardware selectively. Also use the new unified assembler language
mnemonics. This allows to build these procedures with Clang.

Link: https://github.com/ClangBuiltLinux/linux/issues/762

Signed-off-by: Stefan Agner <stefan@agner.ch>
Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
---
 arch/arm/vfp/Makefile |  2 --
 arch/arm/vfp/vfphw.S  | 30 ++++++++++++++++++++----------
 2 files changed, 20 insertions(+), 12 deletions(-)

diff --git a/arch/arm/vfp/Makefile b/arch/arm/vfp/Makefile
index 9975b63ac3b0..749901a72d6d 100644
--- a/arch/arm/vfp/Makefile
+++ b/arch/arm/vfp/Makefile
@@ -8,6 +8,4 @@
 # ccflags-y := -DDEBUG
 # asflags-y := -DDEBUG
 
-KBUILD_AFLAGS	:=$(KBUILD_AFLAGS:-msoft-float=-Wa,-mfpu=softvfp+vfp -mfloat-abi=soft)
-
 obj-y		+= vfpmodule.o entry.o vfphw.o vfpsingle.o vfpdouble.o
diff --git a/arch/arm/vfp/vfphw.S b/arch/arm/vfp/vfphw.S
index b530db8f2c6c..772c6a3b1f72 100644
--- a/arch/arm/vfp/vfphw.S
+++ b/arch/arm/vfp/vfphw.S
@@ -253,11 +253,14 @@ vfp_current_hw_state_address:
 
 ENTRY(vfp_get_float)
 	tbl_branch r0, r3, #3
+	.fpu	vfpv2
 	.irp	dr,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15
-1:	mrc	p10, 0, r0, c\dr, c0, 0	@ fmrs	r0, s0
+1:	vmov	r0, s\dr
 	ret	lr
 	.org	1b + 8
-1:	mrc	p10, 0, r0, c\dr, c0, 4	@ fmrs	r0, s1
+	.endr
+	.irp	dr,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
+1:	vmov	r0, s\dr
 	ret	lr
 	.org	1b + 8
 	.endr
@@ -265,11 +268,14 @@ ENDPROC(vfp_get_float)
 
 ENTRY(vfp_put_float)
 	tbl_branch r1, r3, #3
+	.fpu	vfpv2
 	.irp	dr,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15
-1:	mcr	p10, 0, r0, c\dr, c0, 0	@ fmsr	r0, s0
+1:	vmov	s\dr, r0
 	ret	lr
 	.org	1b + 8
-1:	mcr	p10, 0, r0, c\dr, c0, 4	@ fmsr	r0, s1
+	.endr
+	.irp	dr,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
+1:	vmov	s\dr, r0
 	ret	lr
 	.org	1b + 8
 	.endr
@@ -277,15 +283,17 @@ ENDPROC(vfp_put_float)
 
 ENTRY(vfp_get_double)
 	tbl_branch r0, r3, #3
+	.fpu	vfpv2
 	.irp	dr,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15
-1:	fmrrd	r0, r1, d\dr
+1:	vmov	r0, r1, d\dr
 	ret	lr
 	.org	1b + 8
 	.endr
 #ifdef CONFIG_VFPv3
 	@ d16 - d31 registers
-	.irp	dr,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15
-1:	mrrc	p11, 3, r0, r1, c\dr	@ fmrrd	r0, r1, d\dr
+	.fpu	vfpv3
+	.irp	dr,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
+1:	vmov	r0, r1, d\dr
 	ret	lr
 	.org	1b + 8
 	.endr
@@ -299,15 +307,17 @@ ENDPROC(vfp_get_double)
 
 ENTRY(vfp_put_double)
 	tbl_branch r2, r3, #3
+	.fpu	vfpv2
 	.irp	dr,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15
-1:	fmdrr	d\dr, r0, r1
+1:	vmov	d\dr, r0, r1
 	ret	lr
 	.org	1b + 8
 	.endr
 #ifdef CONFIG_VFPv3
+	.fpu	vfpv3
 	@ d16 - d31 registers
-	.irp	dr,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15
-1:	mcrr	p11, 3, r0, r1, c\dr	@ fmdrr	r0, r1, d\dr
+	.irp	dr,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
+1:	vmov	d\dr, r0, r1
 	ret	lr
 	.org	1b + 8
 	.endr
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20220629180227.3408104-2-f.fainelli%40gmail.com.
