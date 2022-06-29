Return-Path: <clang-built-linux+bncBCH67JWTV4DBBVFH6KKQMGQE7IVMLZA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa37.google.com (mail-vk1-xa37.google.com [IPv6:2607:f8b0:4864:20::a37])
	by mail.lfdr.de (Postfix) with ESMTPS id 21C36560840
	for <lists+clang-built-linux@lfdr.de>; Wed, 29 Jun 2022 20:03:01 +0200 (CEST)
Received: by mail-vk1-xa37.google.com with SMTP id l19-20020ac5c353000000b0036c1d249b61sf3240254vkk.12
        for <lists+clang-built-linux@lfdr.de>; Wed, 29 Jun 2022 11:03:01 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1656525780; cv=pass;
        d=google.com; s=arc-20160816;
        b=L/yK2OL2evm8DE78U0hHuz4pXaiEO9BHriuCNXlm6Z9HWS1FuZPFhxWfVnLcEbKeoz
         fqpCi7msVODaO63mqY7vFE7Z40+Jn3UVi4tBRaBMt3aSTedbkOxF0RS+srUyj15sRYEL
         MsGZHHwDsVlg+QIcb+3rqigAjnX8/S2xb1cOtevVXRtJymUwDLWyORlmIn2xFMxT1lrY
         siK5OLH/MeihWFUV6nfh7Akdsf974Gwfv0w544TP1utwgX8pfIKruOnW38CI3rd9UV9L
         VmEYPIfsiR9+1JWSL+ogkl9LACMcds2UrMtm2gfmlRe7PV5zNXf+NTEvaKd3JTZTUbfC
         rfeQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature
         :dkim-signature;
        bh=D1hipo6TJNDzR05vfaioK9gMIoITjmQTef1tHH54sJ8=;
        b=NKCOuJng4ZyTlpH6JAgXpcl6Ffy7sLURSSy/fWp8OvKnOkOsg5KUnnS8qNEk2Nk65H
         DW/ruSa76hM1Zy3XyauFWHW8vfVGIrxlkSrjvIiubf0Mx/4jB3cf4oG7VtvW/S3NNN2i
         EHALPmbP5oMcsCwyq2G2HD+txgcxgCeMaAbeYENso2MjmZCOA8jotCFeiXpuOibnSpAk
         JyyUrrtpmajBm0bNP3IeBVFhykGTnQYySQBc0AE8a2noXVffBwomuaj5OfGbeqpGUkQm
         62gOkQ2EWkvPHfortOdasHfGYgKFmJwTSqjAMjGgr8jp/7q9LjTpfE4ZaUORPpNu+lG1
         wxzg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=EFhfK5fl;
       spf=pass (google.com: domain of f.fainelli@gmail.com designates 2607:f8b0:4864:20::1035 as permitted sender) smtp.mailfrom=f.fainelli@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=D1hipo6TJNDzR05vfaioK9gMIoITjmQTef1tHH54sJ8=;
        b=VOXU8BprnsuayDNVbdsCZCMZwiBUytXeiPnKcE/XDCVwJ9elg48Gz/37b6mwmjwaA3
         fdHzM8My5Ziv8w552gM9hsuoa/ky6wYRrwevwb10rDmEHo4QNA+NW3Q6m9vxOrA/meEv
         kjN3KfHzrt/u3xIqX4enUcux2qMMvAJSEut8MQxRngGbdbSNXBGAa9CUEdaiyV9tfxN+
         L4TG9yZa4mgCFshUC7P0s9sIuyp6twC8BimnAEro93y+UyRuvA4pa1KMMJ1YZHC9jeGS
         EghgTRabTXqH8NdaKm9dYrNJ3WcC1dzhmrbLNJpttLGVb4SgBlHgCibK3EkXxlqP70MN
         7trQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=D1hipo6TJNDzR05vfaioK9gMIoITjmQTef1tHH54sJ8=;
        b=JpKgi6T3/3mTs7ijckMxjdxVz2jM+WG91RzjtvyF08sn/WnPWdkV6e1y0dC77I1POJ
         WzvRsg1HDOsqgjDfZWRVQBROyGOdxEOEZ9gp9AnFFtJlFiZ60rQy0Uf+t9k+VembCqSf
         mLzcvGORUpQ5ncYZi+aHntNTlBtmYpC9qLmhefyWr/cmqynQEvxGwAi8zCb3AHuo3afh
         mzkcwjDzOzcaytmVW9VGug94+rvCEs5dDKH+2lifr5ibajyVBkjQ7eOag7sS993mfju7
         doIRclilMxIFGP6q9g6XJ9xPcZEp6ILmOeiNIs6KPiRe1vwE7aclKVJrKk1NkrHpGgC+
         SBlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=D1hipo6TJNDzR05vfaioK9gMIoITjmQTef1tHH54sJ8=;
        b=aEhr0L9/ckFr/mm8hqeu7tb2dTPimSVMauEM6jFYpQpjlAa9Lb2bRxoKk9ha2HIAA5
         UOJImEOxSjOKKUW8joWvHgxJNVqP3SVR/Fs1OVAVgEI61OF6EALmzvOAOrIkPxQSsDVy
         464wYJA0Cfosg4U/tKeTkV5UgbAZeqpiXnTMotiX9UEZqPbVnFoWASgGnnQ9bad2Z4JJ
         39OvrZPi3O2+FlJp2gWBOLnvZKjLcO6rm3bVEfri9EXSMo1avh9tllTLk8Jvl9AtSwwt
         UBsDx2rukyVRME65BTreoijcTycxcuC+dGGeVf8iF76bMhes3BxZxel0CQKg/k/csBhb
         Jygg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AJIora8QUjJ4AzditO7/e6wwJbgEjRLq78Dhj8Lhz7MRihSlGEHwwETi
	68CRX8zHC61EZxU+IKsyv5w=
X-Google-Smtp-Source: AGRyM1s47Tbczt421qFlNEhvXeQe/x0z8hUHglyKKLW20B+dPWJ0fGD+DxrQQh1K5wei5/oTPbp84A==
X-Received: by 2002:a1f:9e53:0:b0:370:3d3c:4ca7 with SMTP id h80-20020a1f9e53000000b003703d3c4ca7mr5650353vke.40.1656525780157;
        Wed, 29 Jun 2022 11:03:00 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:ef42:0:b0:356:35d7:beff with SMTP id k2-20020a67ef42000000b0035635d7beffls1885243vsr.11.gmail;
 Wed, 29 Jun 2022 11:02:59 -0700 (PDT)
X-Received: by 2002:a05:6102:101:b0:354:355b:711b with SMTP id z1-20020a056102010100b00354355b711bmr5879481vsq.61.1656525779543;
        Wed, 29 Jun 2022 11:02:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1656525779; cv=none;
        d=google.com; s=arc-20160816;
        b=YnTqIsmvF/c994ROnEHIu720XYfv/0I/eL4h5nwTMYdkYPauQ+l786DX9V+bruPSkQ
         wP03Q20wG5CYfI/d/pyxQD1R12hK69NIIk3ekKlzHWfFK1AiJB+M0zWqFCO6JMbVcCBA
         EHmgHHCcFKa0rL2SvVXrlFlA+gLEBMDcCdNb3QH6k9TdoKaQtOZBfQhl3shF3hR9W0+W
         tg5ETWbDGGudrUV8ZiFVbaywHE/BWqi/1AEA74BjqBglhM3QZXHWCoBReN87gPYq6772
         I1YE65ALvYuv/rXvAbAQFl2LhlIke+MoWduUiVJg0ZfdjjwUZ4a2HiugKLOtcqG11QDV
         0S+w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=XIpnrguJEOYbKZ/v8Ohl00ltB40XiJTO7XeAlWHCLZU=;
        b=BLMQ4iT3JPdaBvWwQZgV7yzMtCs54PgtoBh4FfpQYEgNVs1SYEjhV0SiFKBzHyHZLQ
         cfhWf1ANIeBM3IT4qlKso9+1iwTQCZ9o5iB6FHIF1DN/H8hLn35LXJUh4UEJlJuciDTw
         nu0K5a9eMDsOO6kvYd6YVvrB8Z1vlM3lDGhMG6RRPzpuJmpCxOJjSSokGp1dK8dlVzfX
         Uml2m3c12gXPkxcIxG/0HuBcxhv2r0oenfz+JPcDzJMSlMlykyS2yIXGFPzI+U/Ee607
         UuiH2d+Ks+cM4cXIz8sAYCxjdTMTd/KK+jnIdf+/PPi3ovG7QIy7MB64GHqJfNrqD0r6
         3BEg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=EFhfK5fl;
       spf=pass (google.com: domain of f.fainelli@gmail.com designates 2607:f8b0:4864:20::1035 as permitted sender) smtp.mailfrom=f.fainelli@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pj1-x1035.google.com (mail-pj1-x1035.google.com. [2607:f8b0:4864:20::1035])
        by gmr-mx.google.com with ESMTPS id j11-20020ab064cb000000b00373792b7f52si859888uaq.1.2022.06.29.11.02.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 29 Jun 2022 11:02:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of f.fainelli@gmail.com designates 2607:f8b0:4864:20::1035 as permitted sender) client-ip=2607:f8b0:4864:20::1035;
Received: by mail-pj1-x1035.google.com with SMTP id dw10-20020a17090b094a00b001ed00a16eb4so205621pjb.2
        for <clang-built-linux@googlegroups.com>; Wed, 29 Jun 2022 11:02:59 -0700 (PDT)
X-Received: by 2002:a17:90b:4f41:b0:1ed:712:fd80 with SMTP id pj1-20020a17090b4f4100b001ed0712fd80mr6895890pjb.224.1656525779089;
        Wed, 29 Jun 2022 11:02:59 -0700 (PDT)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id s7-20020a17090302c700b00168e83eda56sm11736371plk.3.2022.06.29.11.02.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Jun 2022 11:02:58 -0700 (PDT)
From: Florian Fainelli <f.fainelli@gmail.com>
To: stable@vger.kernel.org
Cc: Stefan Agner <stefan@agner.ch>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Ard Biesheuvel <ardb@kernel.org>,
	Herbert Xu <herbert@gondor.apana.org.au>,
	Florian Fainelli <f.fainelli@gmail.com>,
	Russell King <linux@armlinux.org.uk>,
	"David S. Miller" <davem@davemloft.net>,
	Tony Lindgren <tony@atomide.com>,
	Hans Ulli Kroll <ulli.kroll@googlemail.com>,
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
Subject: [PATCH stable 5.4 11/11] crypto: arm/ghash-ce - define fpu before fpu registers are referenced
Date: Wed, 29 Jun 2022 11:02:27 -0700
Message-Id: <20220629180227.3408104-12-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220629180227.3408104-1-f.fainelli@gmail.com>
References: <20220629180227.3408104-1-f.fainelli@gmail.com>
MIME-Version: 1.0
X-Original-Sender: f.fainelli@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20210112 header.b=EFhfK5fl;       spf=pass
 (google.com: domain of f.fainelli@gmail.com designates 2607:f8b0:4864:20::1035
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

commit 7548bf8c17d84607c106bd45d81834afd95a2edb upstream

Building ARMv7 with Clang's integrated assembler leads to errors such
as:
arch/arm/crypto/ghash-ce-core.S:34:11: error: register name expected
 t3l .req d16
          ^

Since no FPU has selected yet Clang considers d16 not a valid register.
Moving the FPU directive on-top allows Clang to parse the registers and
allows to successfully build this file with Clang's integrated assembler.

Signed-off-by: Stefan Agner <stefan@agner.ch>
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
Tested-by: Nick Desaulniers <ndesaulniers@google.com>
Acked-by: Ard Biesheuvel <ardb@kernel.org>
Signed-off-by: Herbert Xu <herbert@gondor.apana.org.au>
Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
---
 arch/arm/crypto/ghash-ce-core.S | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/arch/arm/crypto/ghash-ce-core.S b/arch/arm/crypto/ghash-ce-core.S
index 534c9647726d..9f51e3fa4526 100644
--- a/arch/arm/crypto/ghash-ce-core.S
+++ b/arch/arm/crypto/ghash-ce-core.S
@@ -8,6 +8,9 @@
 #include <linux/linkage.h>
 #include <asm/assembler.h>
 
+	.arch		armv8-a
+	.fpu		crypto-neon-fp-armv8
+
 	SHASH		.req	q0
 	T1		.req	q1
 	XL		.req	q2
@@ -88,8 +91,6 @@
 	T3_H		.req	d17
 
 	.text
-	.arch		armv8-a
-	.fpu		crypto-neon-fp-armv8
 
 	.macro		__pmull_p64, rd, rn, rm, b1, b2, b3, b4
 	vmull.p64	\rd, \rn, \rm
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20220629180227.3408104-12-f.fainelli%40gmail.com.
