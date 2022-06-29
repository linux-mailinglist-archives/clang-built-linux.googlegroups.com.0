Return-Path: <clang-built-linux+bncBCH67JWTV4DBBRVH6KKQMGQEAE23FSY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1039.google.com (mail-pj1-x1039.google.com [IPv6:2607:f8b0:4864:20::1039])
	by mail.lfdr.de (Postfix) with ESMTPS id BCE42560838
	for <lists+clang-built-linux@lfdr.de>; Wed, 29 Jun 2022 20:02:48 +0200 (CEST)
Received: by mail-pj1-x1039.google.com with SMTP id h11-20020a17090a130b00b001eca05382e7sf69246pja.9
        for <lists+clang-built-linux@lfdr.de>; Wed, 29 Jun 2022 11:02:48 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1656525767; cv=pass;
        d=google.com; s=arc-20160816;
        b=h1eI/DaSIrRkysBa3sSEtAnNJVh++eBblgUsEi8glob95NGdFRjUcwPTf7HjozfuFB
         trzf7ErsEFpBB904Lnrex0uZ98H31OapPuqj/LGBf/kwztsQtrwI/0YrbaDvLTUnngxH
         XzWrkIz7bLhsgCgQ6/QtqsSBJS0ZKI8IsiSaBTeLrJqROQrvyYJtlwRG08+Too46ffVD
         6K65lz+uhH3nkXYVaFRInZ4RWN77L9j6uOZw4VqlSQpR5vf0ElBz0iu9wxyYbtJ3rw1o
         64zkjciom0ZARVos/+zkCF8hYCYLLxLapRjDM3Wy1Gqn+ME8GDJv8cMGWN1SHPrPD7mR
         zTKw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature
         :dkim-signature;
        bh=YZ2YWGa77zs87X3xs/9yLSsc49/bqhmDN1Zxhe3DDtU=;
        b=SN9/KQ3jUqyTQFCxTjS7+3m24zRTFAl2MBpzaeWaGf2KHm+XUtM81O+XFbQSgONozd
         tdexDBZV97UToiqRyWIbKzVyHo7zKNvV2TzGuo13C+t2jQa1kwtRE+F5Ub0/rZmzr1pS
         U3mwFeYAQP4+Sw2MVFNysf/pW5mibvhCWCcHq8oMlFulsTG+uEwt6HdaSSNM7DHlBI/Z
         BEKjBdmfnlThYLV1E/JuX2yd0OsyuLPqpv8Xk34e5s0NoQrSc7cpj77QMULbZ2UZIing
         EaVaNC8C7yfq8/uUFE94Lsmwg05XvoqB2Z392LSRzlZDXUr0p97KTN2JK2fZ0iGccUeL
         KWWw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=Og3VmaHD;
       spf=pass (google.com: domain of f.fainelli@gmail.com designates 2607:f8b0:4864:20::534 as permitted sender) smtp.mailfrom=f.fainelli@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=YZ2YWGa77zs87X3xs/9yLSsc49/bqhmDN1Zxhe3DDtU=;
        b=o5CY/XqIHAtIeoYIvquDCaPjt6I9pc+wdkd2FIb/tiwOUaS84iEFLScxsmCKQyZ3U9
         FBm2+35X5qkvkC4qR6/g+OaOWFHOH+PevGzmHoXZnMwGcCupycPvxP0Jilr945s7x6xQ
         zjGEbtccFeomeiqyH8KtVHv9/SKsH3DTx0E7JGTiqZ9q0EvbXXXxIp0bBNY1wTEP9QjB
         SR+z4IF6odW+PJSykbfm7joS8j2YyLGGvKXosfh4Vjdf4V5CIZfv0Xy/7XTxqlIqcouF
         9wjaVigMGDwkCPbiJr8OtY0I7GDVex8fYH0GkoZroxPFxU+bLw2JsQ1MUFxDGctoCA5J
         FQRA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=YZ2YWGa77zs87X3xs/9yLSsc49/bqhmDN1Zxhe3DDtU=;
        b=eo/VjnWzao2S9m9XXgRLckzUzDJnAlLrO5eu0ogPlVb/iHVnmMPxAw4zLOTwIHm4ZP
         GosvMGG1lI/FTKnBJJ0nnLq2s74YKJtOeI2LuiKl3FxEbbLbPFiDce/ZaAQbiweqdLtI
         xrihVVbg8h+YA1m6ag/mdVWH0nsQH+yrKMrZ/J2tYoXwu5us1jSzuC9K2Ic6ZwxV1iIC
         3cAL+LZWCGd8Gezj45WhDVeq6VStF13oTkeVzImkDEwyTwQsCDqluUw7yFwP2eIjLqQx
         Jl/0V9JFBhGkPl30OiABNVdh7JjuUICnIij68Jt+jJkV6imVBU8X1XjTqQVQwReidUid
         a9mA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=YZ2YWGa77zs87X3xs/9yLSsc49/bqhmDN1Zxhe3DDtU=;
        b=fWEcxXzYlii04V4JR27gSrMLueB/FcH3UJSfSwzKZ9jLlygp68IXufKoGOKf4ivT0z
         uD9Wv+lnt1FzYW+9j7i3fNLQlQvusqF8PLEp8PnkADsNjTtA6oSLlhI5nL4cdBOlT+UT
         g/3gsyWk9eVF84mIar9tFUJ9IdLPOoWtDjgOfQi828Qvnm/TxcAxtl31z3vP/6Jqudqo
         NKmBkC6vpAseY/TTS07QgPjf0cooyM6+uGA74zT8RLsktoMJynP0kJcV9daoijXn/j+G
         OvhHVSoe7y/8NW2uo4+wJ4Xh/k6+DeMmFJgWWOyxuf6NtxfKhdzOKNpaXRRvXYYtH4Ft
         y/tw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AJIora88evjvQ77zBYePOaFfmZX+Ut9iZJtE8jSs9Y6IcgzAxX9wPTzm
	c+xS4FzIUnOpQu6hSlAmlpU=
X-Google-Smtp-Source: AGRyM1tX3Ps+gQXyIrhEfi7iplbq/LsHoUerhlcRFInYh3q7y+BK4csqdoWZocYnp8pIW17l67fR1A==
X-Received: by 2002:a63:6c4a:0:b0:3fe:2813:b1d with SMTP id h71-20020a636c4a000000b003fe28130b1dmr3967428pgc.613.1656525767007;
        Wed, 29 Jun 2022 11:02:47 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:7bd7:0:b0:525:2aad:246b with SMTP id w206-20020a627bd7000000b005252aad246bls11994548pfc.9.gmail;
 Wed, 29 Jun 2022 11:02:46 -0700 (PDT)
X-Received: by 2002:a63:5343:0:b0:40d:9ebf:da0 with SMTP id t3-20020a635343000000b0040d9ebf0da0mr3862743pgl.501.1656525766127;
        Wed, 29 Jun 2022 11:02:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1656525766; cv=none;
        d=google.com; s=arc-20160816;
        b=M9QG8ucNhONFK68hqOP43IXfWtouiWOxufqYgt+rd99Dc6y1mgT5dO58Qznk0nOheV
         N71a2Zw76VF2VmAZcDa16ZKaY6j6YBi+CwtVX+ywDGjLDpVt0gHz5RFERfwqihzgOkem
         7oBFW6FBfZa/POY+mVlUGFWRMP8n/cOeR/q/A2G8u7EXFSMcCqAVQGhIyEFB/alJ76BV
         XdQXCpYpkb0+qMOxvwmLLqhwuEKH63t68E17931ohcNZxqNtyC+F7cpmkFeHLyFo+JIp
         kpNJFhCx3aIaMJjRwR8CEv4ERWTq6zP2v4tYDIcAxtP3BJY1pkozIvItjDev2xD+hE20
         XYmw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=8m1lytctefJudrhC62eHkDYEhgmvtWB/qfcXy6/Skb0=;
        b=S4pU8SSv39Mb0q7ProsJdmKCys/pAwhgScX9QVf3ogtGWyvUp2dLmc2jEWvvnL8jbM
         hLkuALR/m0yTz1gG9g0LBHs2jd8HyM/GsxUGxrAc2AmW2bcvaLTiDnbBxUvCoBAjHyi1
         d0dLAg4MVXl5ncPlSAKtP9FdGynQ4cvt2Ip7qMyyYOpuTtJcQMNOwEE9IRWy15UItOEs
         rmC0ybNK4h2udz4C/P+kemQYS19UTTAWm5viebsw4V6+3hhC23sTgjkcC5LOdT2nh4/1
         Y3jCi4mtHfNxiqgRNr7GQN291QPaKpkbVdIJBvLu1lfplFltEpIcRjlj9RDbNf0e0W1t
         Hc8A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=Og3VmaHD;
       spf=pass (google.com: domain of f.fainelli@gmail.com designates 2607:f8b0:4864:20::534 as permitted sender) smtp.mailfrom=f.fainelli@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pg1-x534.google.com (mail-pg1-x534.google.com. [2607:f8b0:4864:20::534])
        by gmr-mx.google.com with ESMTPS id o1-20020a056a00214100b005253d5b9000si637020pfk.2.2022.06.29.11.02.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 29 Jun 2022 11:02:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of f.fainelli@gmail.com designates 2607:f8b0:4864:20::534 as permitted sender) client-ip=2607:f8b0:4864:20::534;
Received: by mail-pg1-x534.google.com with SMTP id x8so11431060pgj.13
        for <clang-built-linux@googlegroups.com>; Wed, 29 Jun 2022 11:02:46 -0700 (PDT)
X-Received: by 2002:a63:82c6:0:b0:40d:c2d8:b910 with SMTP id w189-20020a6382c6000000b0040dc2d8b910mr3912728pgd.309.1656525765785;
        Wed, 29 Jun 2022 11:02:45 -0700 (PDT)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id s7-20020a17090302c700b00168e83eda56sm11736371plk.3.2022.06.29.11.02.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Jun 2022 11:02:45 -0700 (PDT)
From: Florian Fainelli <f.fainelli@gmail.com>
To: stable@vger.kernel.org
Cc: Ard Biesheuvel <ardb@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Herbert Xu <herbert@gondor.apana.org.au>,
	Florian Fainelli <f.fainelli@gmail.com>,
	Russell King <linux@armlinux.org.uk>,
	"David S. Miller" <davem@davemloft.net>,
	Tony Lindgren <tony@atomide.com>,
	Hans Ulli Kroll <ulli.kroll@googlemail.com>,
	Stefan Agner <stefan@agner.ch>,
	Nicolas Pitre <nico@fluxnic.net>,
	Andre Przywara <andre.przywara@arm.com>,
	"Russell King (Oracle)" <rmk+kernel@armlinux.org.uk>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Jian Cai <caij2003@gmail.com>,
	linux-arm-kernel@lists.infradead.org (moderated list:ARM PORT),
	linux-kernel@vger.kernel.org (open list),
	linux-crypto@vger.kernel.org (open list:CRYPTO API),
	linux-omap@vger.kernel.org (open list:OMAP2+ SUPPORT),
	clang-built-linux@googlegroups.com (open list:CLANG/LLVM BUILD SUPPORT),
	Sasha Levin <sashal@kernel.org>
Subject: [PATCH stable 5.4 04/11] crypto: arm/sha256-neon - avoid ADRL pseudo instruction
Date: Wed, 29 Jun 2022 11:02:20 -0700
Message-Id: <20220629180227.3408104-5-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220629180227.3408104-1-f.fainelli@gmail.com>
References: <20220629180227.3408104-1-f.fainelli@gmail.com>
MIME-Version: 1.0
X-Original-Sender: f.fainelli@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20210112 header.b=Og3VmaHD;       spf=pass
 (google.com: domain of f.fainelli@gmail.com designates 2607:f8b0:4864:20::534
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

From: Ard Biesheuvel <ardb@kernel.org>

commit 54781938ec342cadbe2d76669ef8d3294d909974 upstream

The ADRL pseudo instruction is not an architectural construct, but a
convenience macro that was supported by the ARM proprietary assembler
and adopted by binutils GAS as well, but only when assembling in 32-bit
ARM mode. Therefore, it can only be used in assembler code that is known
to assemble in ARM mode only, but as it turns out, the Clang assembler
does not implement ADRL at all, and so it is better to get rid of it
entirely.

So replace the ADRL instruction with a ADR instruction that refers to
a nearer symbol, and apply the delta explicitly using an additional
instruction.

Signed-off-by: Ard Biesheuvel <ardb@kernel.org>
Tested-by: Nick Desaulniers <ndesaulniers@google.com>
Signed-off-by: Herbert Xu <herbert@gondor.apana.org.au>
Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
---
 arch/arm/crypto/sha256-armv4.pl       | 4 ++--
 arch/arm/crypto/sha256-core.S_shipped | 4 ++--
 2 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm/crypto/sha256-armv4.pl b/arch/arm/crypto/sha256-armv4.pl
index a03cf4dfb781..d927483985c2 100644
--- a/arch/arm/crypto/sha256-armv4.pl
+++ b/arch/arm/crypto/sha256-armv4.pl
@@ -175,7 +175,6 @@ $code=<<___;
 #else
 .syntax unified
 # ifdef __thumb2__
-#  define adrl adr
 .thumb
 # else
 .code   32
@@ -471,7 +470,8 @@ sha256_block_data_order_neon:
 	stmdb	sp!,{r4-r12,lr}
 
 	sub	$H,sp,#16*4+16
-	adrl	$Ktbl,K256
+	adr	$Ktbl,.Lsha256_block_data_order
+	sub	$Ktbl,$Ktbl,#.Lsha256_block_data_order-K256
 	bic	$H,$H,#15		@ align for 128-bit stores
 	mov	$t2,sp
 	mov	sp,$H			@ alloca
diff --git a/arch/arm/crypto/sha256-core.S_shipped b/arch/arm/crypto/sha256-core.S_shipped
index 054aae0edfce..9deb515f3c9f 100644
--- a/arch/arm/crypto/sha256-core.S_shipped
+++ b/arch/arm/crypto/sha256-core.S_shipped
@@ -56,7 +56,6 @@
 #else
 .syntax unified
 # ifdef __thumb2__
-#  define adrl adr
 .thumb
 # else
 .code   32
@@ -1885,7 +1884,8 @@ sha256_block_data_order_neon:
 	stmdb	sp!,{r4-r12,lr}
 
 	sub	r11,sp,#16*4+16
-	adrl	r14,K256
+	adr	r14,.Lsha256_block_data_order
+	sub	r14,r14,#.Lsha256_block_data_order-K256
 	bic	r11,r11,#15		@ align for 128-bit stores
 	mov	r12,sp
 	mov	sp,r11			@ alloca
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20220629180227.3408104-5-f.fainelli%40gmail.com.
