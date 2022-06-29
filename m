Return-Path: <clang-built-linux+bncBCH67JWTV4DBBSFH6KKQMGQEKC2FMFY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53b.google.com (mail-pg1-x53b.google.com [IPv6:2607:f8b0:4864:20::53b])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AADD56083A
	for <lists+clang-built-linux@lfdr.de>; Wed, 29 Jun 2022 20:02:50 +0200 (CEST)
Received: by mail-pg1-x53b.google.com with SMTP id l189-20020a6388c6000000b0040d40295743sf8523104pgd.15
        for <lists+clang-built-linux@lfdr.de>; Wed, 29 Jun 2022 11:02:50 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1656525768; cv=pass;
        d=google.com; s=arc-20160816;
        b=0u0fdOp3f9zhl5DHxDX8R1ZuMbJybWY62kYn1d7TFyqRDX2V8TXzu0LlpIVv4nE+F4
         r5oJCHpjVAfRxVuX9HvDlDDjA+z2p9KFgNWNAcvdCdi9pXFV4GD16MboJAjHWxxpQwQh
         M5iW70cN1ms87v7y54vE/fjggj5LPw5xSg8wTj7ceGxQZFdRu+ZhPFOfmSRhfYYGyTLE
         n+NQ5TkZrdaDmj2TNsZd8aNYDC08QwaBQAFRjXjmOHJfCIxpw+WPO/7V/ns2q8A3vZ36
         /w9s9eto6N6N0h69B5RpCS8z4CaK182Sescxl2kE6P+Xrta732H8r/0W/D2QGtwUsjzZ
         DvBw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature
         :dkim-signature;
        bh=ll04VgUlMLb9H9R43n9prV8I2nQuk7CaEssVf1oJ0Uo=;
        b=yUcA4kwFehw80Xm+YnwI9NPwnzq257oMWQtN+fR9jjsnppIPQTeBYMdjKvrreEuuWI
         w0D3DWfCRD1vqqwbsruC069TDlCRaV3dhx54hAwoGUsf1jh4a0ly4ank3r1d9YfTtI1x
         0dXQ8bZ5qDKLIXOvuSp2I1i+mMZb052mGWFb24rbbwOa8SVQk+F5ONAXRXmcM5TMRhW7
         aQtx017HUKn7yj1x794oer7K8nLedeTY3z/PFyb5DsweVDFb3EzGRcDUanHuUSyXcKMS
         ApoYCVC4DwYlicLni7/kuOObvtHBAuL+KbilCog5pB580SywXW3k5wHCnLc53NGIgUda
         WDYQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=kYtBq9zR;
       spf=pass (google.com: domain of f.fainelli@gmail.com designates 2607:f8b0:4864:20::629 as permitted sender) smtp.mailfrom=f.fainelli@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ll04VgUlMLb9H9R43n9prV8I2nQuk7CaEssVf1oJ0Uo=;
        b=p9Rkwr9sR9jA84zPo5niNs+1lJ1VOPH5b8YmaFhhFy96UIcURaoVtzh+JRnfUQG/Aa
         JAO4TyxCpUhtnPqYFBaufP3VKfGiQrf+etYNxJgFLV3NLun/V391wsWJm+DrJCixjNom
         kGpvoMX1F1iKby9bZs3DZ2fLhJB+LOMqXl8GYlgmpnMxrVwt/42WnaQ+R4OJlHEIf1Bp
         Awi1qKzPC6K2ZK//nSmnSrMN71N+s1yLvfct1An+rw/fhVlp/pOMvv+ywiJetEXJhLGq
         vdSmUwqp2vTKUesIl6vJlLFFaRtltm/SnIA5dlaMYypMZqVrmbPU9nciE6s8E2UMjSgn
         nblg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ll04VgUlMLb9H9R43n9prV8I2nQuk7CaEssVf1oJ0Uo=;
        b=XK1dgkysOaEewN/QMceyZ9Y0TLhpsBJzscXrT7PgHhh9Jzir7iRRetMHQapggyXmeH
         sJKfFTBJc6D1pe5MLwbca96AOEjf6+jKQQCbS5sp+4v1m720LlOz6xHCmqpMuVg5qaL7
         9+rhruw0B+Olg7nUYOc4YHh7DdUAxVfwm/PccAYJ1pJ2jkXKTmsrDtJprdErp0GWN2py
         3r9v1MWmpnMSifEQfp1EXt3hGJvXS938VC1SWPTfKHBRyG+rNer5z6cSI7uUico2v8vY
         38/Q02XSj+A+vZkmEKwPY5gbOUXAup36+hM102zKIa4sfglbe20Vg0Q5cfFkTod5ePNO
         QDMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ll04VgUlMLb9H9R43n9prV8I2nQuk7CaEssVf1oJ0Uo=;
        b=TsfI1hwreov7iasB6wB3bqCsDjDaEgXE/ZxUkxGxCv7yju6Vgzj8M8tlmc+ZKibI75
         +IPoYKhpzl/LMLpQ4N2jvZdRmsWa1JOZMVMwQ+wd9c++TNVxoHwQ+zjaBCya0/2MaMDW
         9HBK2dtwFcGC7wd8UpkMeV65GQmmxD6I/3bYmuvOUU5iF6TazuJ88WbtQcfvRkEQ/sWt
         qd046avBk/JSnl6lT0ZN9yL6crte9taGNyTYGxXSWdJVHG4Aqc3djE9N24HPDD31Qnky
         1T1R3Wj8c1VgFUT/aHXqTVZLxKKUjcZ6lknknUYtSCLymlSl17F+kc03WF/j9v5XPim+
         SVKw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AJIora93ogVGK/INoVtH0HFI8xUrqRbwgSHsd5Vdr9JXTtnW/rUA/q+M
	uKr7VqihGi93TNwtXDaRvgg=
X-Google-Smtp-Source: AGRyM1sVI6yKHfKYQZ8lDKJN7suTOUhG/xFke4Eb3xzcteemw3kmqC6etvMzF/pw2OuPatbhwyqX1Q==
X-Received: by 2002:a05:6a00:140a:b0:4e0:54d5:d01 with SMTP id l10-20020a056a00140a00b004e054d50d01mr11271240pfu.20.1656525768646;
        Wed, 29 Jun 2022 11:02:48 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:903:18c:b0:16a:2c14:1ccd with SMTP id
 z12-20020a170903018c00b0016a2c141ccdls15375031plg.10.gmail; Wed, 29 Jun 2022
 11:02:48 -0700 (PDT)
X-Received: by 2002:a17:90a:12c9:b0:1ec:8b01:cec2 with SMTP id b9-20020a17090a12c900b001ec8b01cec2mr7259815pjg.42.1656525767970;
        Wed, 29 Jun 2022 11:02:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1656525767; cv=none;
        d=google.com; s=arc-20160816;
        b=hxf12xSnAkArJ27WJQ21u2GlYIy5X5MTq6sWwdNpdAXD1O4A3AjUx5UkRmnPvhOc8r
         8iicPKrOo44ysgAPDx/9hSGk6Z8r+kzw7AqtxhiOSHiPykPfzB25IEdA3DiMWmZaDsff
         3aWLe6ngbqUTJIlYTb1heKCuOXjK6fMhNJi6UWH5p5bOKqMvYwHODxtO5uPdsY77d7ZV
         KdGMSzzIZ+RV3hOllHEE15twfoNGM79Dv6wra+KnhiF7vKbFlSUxN5+EeH4HMSjvHxJr
         WKD6pCW+eKz7p/Ei4I+gKcDcwDKsI/BxzSj5jCpo6NARD1UghFior38V69s5I4IJnsV2
         BTew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=RlIVn4KhgWNNVucL/eFDrRsCrhfeAFEgYpOovza+X8U=;
        b=en/Q1ev8VPF2PkNDfFyxlJAU29FEa9YfTO6Z+KGWkygDqVvRB94GkDyGf04pGuB/6h
         qtne/+pfBX45rGEsAf6GyORp+OCzz4BqNGQaqlcl6MdZF0A41Vq3IihT4HWbKew61Fe6
         lar0wvECL/eaVj1vxzQOJfxIPvudtESZiGEN5hNJdKU2zH8LA97EppYTjf5HdK1kCm08
         NPJ6sYsxXEQaIQNEsLmuFDadZqLdiBbqSsIa9wj7B7+TRlOY8p80ADs4GeV4VqhR90wE
         ePHHmc7wWkC/pQXaWD5YHYE6GDkfPDaRoXFzlY1XiPlVRPXfBEvMvVjaN47yO3u1JoIu
         ZPlw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=kYtBq9zR;
       spf=pass (google.com: domain of f.fainelli@gmail.com designates 2607:f8b0:4864:20::629 as permitted sender) smtp.mailfrom=f.fainelli@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pl1-x629.google.com (mail-pl1-x629.google.com. [2607:f8b0:4864:20::629])
        by gmr-mx.google.com with ESMTPS id jj20-20020a170903049400b0016a466a4b1fsi728089plb.2.2022.06.29.11.02.47
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 29 Jun 2022 11:02:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of f.fainelli@gmail.com designates 2607:f8b0:4864:20::629 as permitted sender) client-ip=2607:f8b0:4864:20::629;
Received: by mail-pl1-x629.google.com with SMTP id jb13so14812327plb.9
        for <clang-built-linux@googlegroups.com>; Wed, 29 Jun 2022 11:02:47 -0700 (PDT)
X-Received: by 2002:a17:903:40c9:b0:16a:2d26:5553 with SMTP id t9-20020a17090340c900b0016a2d265553mr11235357pld.31.1656525767568;
        Wed, 29 Jun 2022 11:02:47 -0700 (PDT)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id s7-20020a17090302c700b00168e83eda56sm11736371plk.3.2022.06.29.11.02.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Jun 2022 11:02:47 -0700 (PDT)
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
Subject: [PATCH stable 5.4 05/11] crypto: arm/sha512-neon - avoid ADRL pseudo instruction
Date: Wed, 29 Jun 2022 11:02:21 -0700
Message-Id: <20220629180227.3408104-6-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220629180227.3408104-1-f.fainelli@gmail.com>
References: <20220629180227.3408104-1-f.fainelli@gmail.com>
MIME-Version: 1.0
X-Original-Sender: f.fainelli@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20210112 header.b=kYtBq9zR;       spf=pass
 (google.com: domain of f.fainelli@gmail.com designates 2607:f8b0:4864:20::629
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

commit 0f5e8323777bfc1c1d2cba71242db6a361de03b6 upstream

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
 arch/arm/crypto/sha512-armv4.pl       | 4 ++--
 arch/arm/crypto/sha512-core.S_shipped | 4 ++--
 2 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm/crypto/sha512-armv4.pl b/arch/arm/crypto/sha512-armv4.pl
index 788c17b56ecc..2a0bdf7dd87c 100644
--- a/arch/arm/crypto/sha512-armv4.pl
+++ b/arch/arm/crypto/sha512-armv4.pl
@@ -212,7 +212,6 @@ $code=<<___;
 #else
 .syntax unified
 # ifdef __thumb2__
-#  define adrl adr
 .thumb
 # else
 .code   32
@@ -602,7 +601,8 @@ sha512_block_data_order_neon:
 	dmb				@ errata #451034 on early Cortex A8
 	add	$len,$inp,$len,lsl#7	@ len to point at the end of inp
 	VFP_ABI_PUSH
-	adrl	$Ktbl,K512
+	adr	$Ktbl,.Lsha512_block_data_order
+	sub	$Ktbl,$Ktbl,.Lsha512_block_data_order-K512
 	vldmia	$ctx,{$A-$H}		@ load context
 .Loop_neon:
 ___
diff --git a/arch/arm/crypto/sha512-core.S_shipped b/arch/arm/crypto/sha512-core.S_shipped
index 710ea309769e..cf5a7a70ff00 100644
--- a/arch/arm/crypto/sha512-core.S_shipped
+++ b/arch/arm/crypto/sha512-core.S_shipped
@@ -79,7 +79,6 @@
 #else
 .syntax unified
 # ifdef __thumb2__
-#  define adrl adr
 .thumb
 # else
 .code   32
@@ -543,7 +542,8 @@ sha512_block_data_order_neon:
 	dmb				@ errata #451034 on early Cortex A8
 	add	r2,r1,r2,lsl#7	@ len to point at the end of inp
 	VFP_ABI_PUSH
-	adrl	r3,K512
+	adr	r3,.Lsha512_block_data_order
+	sub	r3,r3,.Lsha512_block_data_order-K512
 	vldmia	r0,{d16-d23}		@ load context
 .Loop_neon:
 	vshr.u64	d24,d20,#14	@ 0
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20220629180227.3408104-6-f.fainelli%40gmail.com.
