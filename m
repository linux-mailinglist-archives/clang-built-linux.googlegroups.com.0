Return-Path: <clang-built-linux+bncBCH67JWTV4DBBRFH6KKQMGQEPIOHSOI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93b.google.com (mail-ua1-x93b.google.com [IPv6:2607:f8b0:4864:20::93b])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E9B7560837
	for <lists+clang-built-linux@lfdr.de>; Wed, 29 Jun 2022 20:02:46 +0200 (CEST)
Received: by mail-ua1-x93b.google.com with SMTP id 68-20020a9f204a000000b00381f94e700fsf2458917uam.9
        for <lists+clang-built-linux@lfdr.de>; Wed, 29 Jun 2022 11:02:46 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1656525765; cv=pass;
        d=google.com; s=arc-20160816;
        b=Q4idzjB67Nj4GRPlMmTBraFPWW4wozFGwF9Ubtl/g04G532wpEUbCCFcQV7z7S4mUU
         hW+JiMGIfmMLDMyP5u51mL5uYATUcBNKEE83Kws7qaJf1IijNH8ISNk5WChOU58tTq2H
         47dGd3nj7u//c41SabyG+7AvKSuZnS/vm3DRlrY62MlJnqHYX4YtOEaNRqfJuDBEQ9QE
         LfX1G0FGPUxxTIXlkaKUWCUvQHUsGjCGS1Sqnh+M3AY84lMR4t2Bz2gaBJ998xBCSebu
         QoPi3dN+a4eykNcXGo8N60ugM0mcA7H/aSI2Mno5bXt/70QGNv7Z8K/ljh7GVT+rY9F5
         NaXQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature
         :dkim-signature;
        bh=23zDgGs1AM9l2DTcmCunajlvMfIKLMubgfs7oEec1Zc=;
        b=x0tqcbyizJGyd24b4T5cDDZgfqK6yca/vjAif8Gk6WlyCyCntfbsMSHpYyxXdpny0P
         RRwQIwhHhzYTirj5XsIQ1irKdNEja7qczXNAXKnvJh16ah2VdYGaNYl5JqnlWKx4pask
         fN4zcwQO3AyNy8pW4YTocOs7QCwqgUY56XnA7L2qh+g1vDfDL2cbn2/8fp7vrsDG7Zak
         uoOIAjo/S+24VpHxv4mjWo7CLbna0kM+WzzcOf2C6M0bPJW2kiLorgk2iday+k1BtkOp
         eE2i3+ZLDdDRxPLivi0jyxm+b4DZHAEBN8t1fkiJIQDZTbBhEfPWPMNW5S5g5UopaJD7
         QKLw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=BOlmhCIK;
       spf=pass (google.com: domain of f.fainelli@gmail.com designates 2607:f8b0:4864:20::436 as permitted sender) smtp.mailfrom=f.fainelli@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=23zDgGs1AM9l2DTcmCunajlvMfIKLMubgfs7oEec1Zc=;
        b=PvomOomty3o6kLL6OHa7CYPZak79AzaK1CBStEdC35hyruoQj33vZ5Rpxqz4cmsCyu
         Z4b9ClXqqtu7Z5aKOD4y/OEDYyXbezadqo0GNtmjfORTKUqYcPrDDB9olS9Cej9QhQD5
         0h9FKT90b7V+mR+RYt4Rsy62myVipWezh/y03vqW1oVKlDq/D1lm/hsOZNA3SdmpFRAv
         hhHA1TNyc6BzuuMxiSaix3Z6HVU7d4CracaKyHeM6D+gfoMux81CwTvvXZx5zd7vNScn
         QBMOpYUE8Ruh2o0AfpgV7Nl4TYIbBnIVwRLc8whII2Z9046HccLsOwDGxsDFgxXxT10H
         sWBw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=23zDgGs1AM9l2DTcmCunajlvMfIKLMubgfs7oEec1Zc=;
        b=ai8T2zE4x6S2zh9kYUcvmv3HL8TorrmPwfYmZOcZeA1KoaBuINgrTKJOntBBOB0Str
         3xPz8tKLwue2JdPDsHgihE/vExEsE0yIi4oT8gNlE+19KmVdBKcM1yK7pl4ldBFJOhCy
         x1/zPwPIIGNSDgYSREUVDvA/jXFOg/JhEg9GLX8bMDewhI4VCOfZoSdWPs/Tg4DEWuCm
         4K5sICB0Oxq3FXEPxVmfQk6h2ziDcpkL9u3neDXdz8y8MEqP2QNVsKaBlJ0jJb+Q6qda
         1YdhwE7tYcm5avu1Ll+gau5vJTmcyeXQ7EmTzfcZwHWOuwXBzAPFd5MvIA22NZmgEd1h
         bPQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=23zDgGs1AM9l2DTcmCunajlvMfIKLMubgfs7oEec1Zc=;
        b=sqA6mL+bRDJPBB4RsrBpzjJLz5a2hOGtIr6TdA83imyAhECPzGfsruKwaxhEYUEvbb
         XZYq7wdstUjOgHvbG3vwic2RVWIazmjI7AXgzo3+q5TAWtJ7el579+ryHhhtHNspC03T
         BDozQYd8HILFIWsqph4bvTFvSUFa808RQ1TDJRKeLms6Zv4RoVTOnwwerdY4wkmFW4lt
         BY6leApSkdK2SrspuXgC41VW8VH7hmgvFWymTY0UyG/gzVmvFwEuzf46UBHyXzMx/xu+
         N5yOaNvHt9GyI6t1E7bM6Q/aKZ7+j0dewDcl+EtJsOGNvA4cevFIvQNQ90HYpdXlQ8sP
         EULg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AJIora8gUtfRG77xrvlWKyaf4EtUjI8J+UYKNrJTza4NCNXTq3PRS+vQ
	4g746Ir5fBNOCpH+JB+2WKQ=
X-Google-Smtp-Source: AGRyM1vih1JSk9iu1uK1/dlRSFckMLhXRjZd6C3VxJa+tp/aAebLiqFaUOTPDGHxAZfKheZM4Q4/Ng==
X-Received: by 2002:a67:b009:0:b0:356:7d43:d409 with SMTP id z9-20020a67b009000000b003567d43d409mr2393505vse.16.1656525765102;
        Wed, 29 Jun 2022 11:02:45 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:2146:0:b0:378:f70b:cf8b with SMTP id t6-20020ab02146000000b00378f70bcf8bls2748908ual.6.gmail;
 Wed, 29 Jun 2022 11:02:44 -0700 (PDT)
X-Received: by 2002:ab0:5781:0:b0:37b:de3d:5d4e with SMTP id x1-20020ab05781000000b0037bde3d5d4emr2704256uaa.1.1656525764490;
        Wed, 29 Jun 2022 11:02:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1656525764; cv=none;
        d=google.com; s=arc-20160816;
        b=fM0A6dFKochgYYHvtYMRYf5iPye3pURbv/7JoaSMTAeuniWme9LXblA1IlC9RUxpo1
         g3Cvw+jGs4x1kzE99WpiLrPuIPe9bDMnpsHKw+GX4sJ1G4tYn/FDjNUcTWkjfrx07A9n
         yNb52CNSS/Q6p2SonHFpEKRmks6Fbplv5RjkVLrFUE+QPEwtTABClFz2TDwUUvGicGom
         BTT163i5S3IlWd6QovdTeMQEto8bJBplATnQsxpm12cx4i4wMfd43pzgCK/1v3cgSBRk
         dJKSzKVyn58VryTwF1d0kKXHa3XZizG6EyvG5DXnDqser67w9EIGXDOcUlYDMuF/EreZ
         /9NA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=1CUR8O9fHhSNAhX4q/Xzc+ql6Bnj76byUj4wK9Q15Ic=;
        b=TvgcqKW66S4gISPPEl9i+gXNTaBlgYjjA9E4eJfzD3axuL0Dsx3nJYrpMbRFgJTdmD
         U4fQnmTxnJk/7Ymms09zWn/cGH9/QE7Z2RiWOG/QTrC3fmaifCv9pZozRAiyi3lBa1d6
         bpLWyjYLkAL370dw9BLHpYjVVaAg+MBQds+M6pGm0zSMU/zeNxfQEXbP+swwJZGoByjX
         vAWnHSV5Xohh83WVBUMSckX6lBZ0W15RURiOyB4rp2kQbAkAhkhWNTAoqcvAMqwZTks6
         YlpScjDEsOc/w3rz5G9U4ZJpo7PY939qVUTEw84HH/sMprQSNq9AxglphsiPR+gqnvIu
         2b2Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=BOlmhCIK;
       spf=pass (google.com: domain of f.fainelli@gmail.com designates 2607:f8b0:4864:20::436 as permitted sender) smtp.mailfrom=f.fainelli@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pf1-x436.google.com (mail-pf1-x436.google.com. [2607:f8b0:4864:20::436])
        by gmr-mx.google.com with ESMTPS id p65-20020a1fa644000000b003700a12ecbcsi411447vke.5.2022.06.29.11.02.44
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 29 Jun 2022 11:02:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of f.fainelli@gmail.com designates 2607:f8b0:4864:20::436 as permitted sender) client-ip=2607:f8b0:4864:20::436;
Received: by mail-pf1-x436.google.com with SMTP id c205so15801590pfc.7
        for <clang-built-linux@googlegroups.com>; Wed, 29 Jun 2022 11:02:44 -0700 (PDT)
X-Received: by 2002:a63:2a8d:0:b0:40c:9b5f:13d3 with SMTP id q135-20020a632a8d000000b0040c9b5f13d3mr3849554pgq.465.1656525764047;
        Wed, 29 Jun 2022 11:02:44 -0700 (PDT)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id s7-20020a17090302c700b00168e83eda56sm11736371plk.3.2022.06.29.11.02.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Jun 2022 11:02:43 -0700 (PDT)
From: Florian Fainelli <f.fainelli@gmail.com>
To: stable@vger.kernel.org
Cc: Jian Cai <caij2003@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Russell King <rmk+kernel@armlinux.org.uk>,
	Florian Fainelli <f.fainelli@gmail.com>,
	Russell King <linux@armlinux.org.uk>,
	Herbert Xu <herbert@gondor.apana.org.au>,
	"David S. Miller" <davem@davemloft.net>,
	Tony Lindgren <tony@atomide.com>,
	Hans Ulli Kroll <ulli.kroll@googlemail.com>,
	Ard Biesheuvel <ardb@kernel.org>,
	Stefan Agner <stefan@agner.ch>,
	Nicolas Pitre <nico@fluxnic.net>,
	Andre Przywara <andre.przywara@arm.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Catalin Marinas <catalin.marinas@arm.com>,
	linux-arm-kernel@lists.infradead.org (moderated list:ARM PORT),
	linux-kernel@vger.kernel.org (open list),
	linux-crypto@vger.kernel.org (open list:CRYPTO API),
	linux-omap@vger.kernel.org (open list:OMAP2+ SUPPORT),
	clang-built-linux@googlegroups.com (open list:CLANG/LLVM BUILD SUPPORT),
	Sasha Levin <sashal@kernel.org>
Subject: [PATCH stable 5.4 03/11] ARM: 8971/1: replace the sole use of a symbol with its definition
Date: Wed, 29 Jun 2022 11:02:19 -0700
Message-Id: <20220629180227.3408104-4-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220629180227.3408104-1-f.fainelli@gmail.com>
References: <20220629180227.3408104-1-f.fainelli@gmail.com>
MIME-Version: 1.0
X-Original-Sender: f.fainelli@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20210112 header.b=BOlmhCIK;       spf=pass
 (google.com: domain of f.fainelli@gmail.com designates 2607:f8b0:4864:20::436
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

From: Jian Cai <caij2003@gmail.com>

commit a780e485b5768e78aef087502499714901b68cc4 upstream

ALT_UP_B macro sets symbol up_b_offset via .equ to an expression
involving another symbol. The macro gets expanded twice when
arch/arm/kernel/sleep.S is assembled, creating a scenario where
up_b_offset is set to another expression involving symbols while its
current value is based on symbols. LLVM integrated assembler does not
allow such cases, and based on the documentation of binutils, "Values
that are based on expressions involving other symbols are allowed, but
some targets may restrict this to only being done once per assembly", so
it may be better to avoid such cases as it is not clearly stated which
targets should support or disallow them. The fix in this case is simple,
as up_b_offset has only one use, so we can replace the use with the
definition and get rid of up_b_offset.

 Link:https://github.com/ClangBuiltLinux/linux/issues/920

 Reviewed-by: Stefan Agner <stefan@agner.ch>

Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
Signed-off-by: Jian Cai <caij2003@gmail.com>
Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
---
 arch/arm/include/asm/assembler.h | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/arch/arm/include/asm/assembler.h b/arch/arm/include/asm/assembler.h
index 6b3e64e19fb6..70e1c23feedb 100644
--- a/arch/arm/include/asm/assembler.h
+++ b/arch/arm/include/asm/assembler.h
@@ -279,10 +279,9 @@
 	.endif							;\
 	.popsection
 #define ALT_UP_B(label)					\
-	.equ	up_b_offset, label - 9998b			;\
 	.pushsection ".alt.smp.init", "a"			;\
 	.long	9998b						;\
-	W(b)	. + up_b_offset					;\
+	W(b)	. + (label - 9998b)					;\
 	.popsection
 #else
 #define ALT_SMP(instr...)
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20220629180227.3408104-4-f.fainelli%40gmail.com.
