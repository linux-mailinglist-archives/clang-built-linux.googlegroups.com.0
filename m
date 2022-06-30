Return-Path: <clang-built-linux+bncBCUJ7YGL3QFBBZOK62KQMGQEJTSTGGA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x437.google.com (mail-wr1-x437.google.com [IPv6:2a00:1450:4864:20::437])
	by mail.lfdr.de (Postfix) with ESMTPS id 72077561B5C
	for <lists+clang-built-linux@lfdr.de>; Thu, 30 Jun 2022 15:30:14 +0200 (CEST)
Received: by mail-wr1-x437.google.com with SMTP id z11-20020a056000110b00b0021b9c009d09sf3131568wrw.17
        for <lists+clang-built-linux@lfdr.de>; Thu, 30 Jun 2022 06:30:14 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1656595814; cv=pass;
        d=google.com; s=arc-20160816;
        b=hV/ygoCF3lBcWJ5PKShfyGtokbY4b6tA08pbk6kXryYSqbcXWZ7p41kc2ggPOGkonz
         jvquChP6kNwFFF98n8ySb2IGzNHzWtS0XT9BM8R/oIUZ23xE5jio+IDRpMAo6K/zx7Q2
         0+MDZgR1lU8NETBA3pqAxNvR8yxRZtJlVy+zDyc4eFwOhx4alEJ6XIe54YlTUHUsIn/d
         tnVNdmpf6P29iVMu591Hs589D2sK7hzFMMtBw/FcJ/9JEF0Pou5Cfz4fv35Xk2uxMiCq
         ab0zLdLaCb70P5v1XuewoiLzcFkAxygpcOqpAXGAE6orZvz2kW+mbMbIdB152yPJiPrJ
         H9Cw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :mime-version:message-id:in-reply-to:date:from:cc:to:subject:sender
         :dkim-signature;
        bh=5KkozpPfD1leexKLnzwEzuB61/WO+Z7UniknEJ3BDQg=;
        b=PK4adwlCgcHjhZKMZLTqQxUXsoc7opmsIA5v/MF/NRgmclVUCn8wjVOuSGR2TjNlMs
         mcXTbxoIWKk6uvYblZH5whU3nYyooXQdRTwK3FpyVCygIVmC+etihdhWPCuu1S3lyLxp
         tUjJRQMBMsnkc/zi4CT/+I2PTSZnCf1t8I9sRprPvlaP9PhTiV2FnVAN2awyYFUdi2Ro
         drrn3ErSaQc2j2Lv8s6Jca+l+gbZl3956Wb1oDmoqpRHGR4RJ46tSNhmwrfBhs5Ux4Vm
         hRaenc/+d6DA9oVzKudblMckRgfg8GQODZo/Y8/yY/ESkIdTGBUfjtSWfDOrVu1RZ8ke
         SpRA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=PqrZqLD5;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 2604:1380:4601:e00::1 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:subject:to:cc:from:date:in-reply-to:message-id:mime-version
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=5KkozpPfD1leexKLnzwEzuB61/WO+Z7UniknEJ3BDQg=;
        b=L4BbQExg5XRRFzU4ixHnuJf2dieM7xGR6PtroK4eHs9ygs2a9eiQqIJGxsA6pBOwO0
         gZsjwJ+/R3uvvTDO5qwa6C+ZX/f2JIZThHFNf/nv4B/40napK20Qc7Nk3jh+tSeWYCX5
         D/PjD6v0+dI/WFPWj3BftTj4bUPvZSyw5ncG+iDoqP8vH4baf55KMj7gjbDZ2kaX6UzR
         KCPwzIu856/RuEieOm/Kv8f8hFZ4C55X7VsSQyvWxiTObCYhRT6IZY3uIxP+u6p9Vvc2
         oOKEZfhVLDMSaGn6xegIBq84hlfzQkpKqTQlKojDRTyxpU/IHc9yMqABnuXY00VwYYX+
         KHCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:subject:to:cc:from:date:in-reply-to
         :message-id:mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5KkozpPfD1leexKLnzwEzuB61/WO+Z7UniknEJ3BDQg=;
        b=z4ERN4CvaesVoUrMl1IDRz+YmVJno701z1uaUOaORSA2HxTsIx/NFODOYrxrWUwdrf
         kqOwodV0FqjoQ2B4SBDGHsOGjFfSkIpkZ9ofqI0H2DWUou4KEAaAuXPMhX0lLrHXjk0f
         0ib1vr05m41aCLE2tC0hAG27eN4Cs8uKzSrYIM3/951YbxSd4T6n0jp6SXpuKmqKScue
         qeIpXzeRgvnE0pvjWelGAyjywA7WfkFszLHQ048RylMcJVkXmHcA/HJacNW/PSsk4Qpq
         vchnbs1KkNechtqndeTgsEO9ezF3k+9QWBbspBRz3n9WExdUEP51/TxjuS/55SzLa1fP
         fwQw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AJIora8yZEXeu5ZlvnekpcwI6u+PKw0V/8Vq7BRFGJdi/WzHIMqv39+G
	/0iHMQekMWO4steB3xCmPgo=
X-Google-Smtp-Source: AGRyM1uyBxD0/ahpDRweaF9KQMLZBZ/fYNZYgUtmHjXxQ6zPKFyAcA3BPfCq/HpCwOKprZGkZOdQvQ==
X-Received: by 2002:a5d:6da8:0:b0:21d:2598:4e28 with SMTP id u8-20020a5d6da8000000b0021d25984e28mr8937778wrs.373.1656595813916;
        Thu, 30 Jun 2022 06:30:13 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6000:178b:b0:21d:350e:23a6 with SMTP id
 e11-20020a056000178b00b0021d350e23a6ls3884648wrg.2.gmail; Thu, 30 Jun 2022
 06:30:13 -0700 (PDT)
X-Received: by 2002:a05:6000:1786:b0:21d:2180:1839 with SMTP id e6-20020a056000178600b0021d21801839mr8703955wrg.596.1656595813044;
        Thu, 30 Jun 2022 06:30:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1656595813; cv=none;
        d=google.com; s=arc-20160816;
        b=M2bOc+riCDrt3wF9blNl3UwypH6HT0oCRXlo0Rj+8Bj36Co7pA3AMmeDfOq4Mhhx63
         1WbLVMEM4T8Sj9WdAE4pfgBOXxbwNpzbAP77pQlcQitZ6JvgdxO7nEVoR7jdJt17OBdt
         MAPnJ/ICYg7CISPhYWnVp6R/Ymof3c96PB0yIJPiuEuxbODirHS7NQNGtKbfxdif1eRK
         e19BXo3D22thaRyqTcOSOGcrCViwNGHZzij5/ZsJkl5OnJt4dkwhfNhbJhgG29kbs2oD
         RQ6Y+SPdQ/JRLA8fgJS15VgfsyPm6iPxP3MPEmc4xYjvIZYVmGPe+z/0tIELPi4u68UN
         jStw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:in-reply-to:date
         :from:cc:to:subject:dkim-signature;
        bh=AzOr1SKqNG4HUfFndI3EcmWyzwSWuZsSEiUL46KoJwQ=;
        b=c+mz70G1BNZBtIYKHXLrEX8fSaWiasdZuZI/uJP3LgAtIsZFPYyXg6BSV3QzL+ULs3
         OrfYCb74AIY0mZRtRCjNe0DzNm29DwYrI4L3j1ntRZIh4Zq8bNjIxutebES7V6m4LoYX
         9FFSgyECCMBMJBkcLchev3EatsnXtm9LbVa76dd2bfH1HIGWNpp0nmD66TvLbaLMIf51
         yJ9mM7LyxdLFQMC2jeSZho/CnxaszFou7tAAnYAb8bqcYAxa91rqtNa505S5n5n/VTZc
         U+Jb9reL5ybaJMjs8RA4S/uHXIRqi8cTG0htKYiaFL18pXMTKow7lu7YAfvo8NvjBPks
         K6jw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=PqrZqLD5;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 2604:1380:4601:e00::1 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from ams.source.kernel.org (ams.source.kernel.org. [2604:1380:4601:e00::1])
        by gmr-mx.google.com with ESMTPS id 68-20020a1c1947000000b003a050f3073asi83660wmz.4.2022.06.30.06.30.13
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 30 Jun 2022 06:30:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 2604:1380:4601:e00::1 as permitted sender) client-ip=2604:1380:4601:e00::1;
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id C4AA6B82AC7;
	Thu, 30 Jun 2022 13:30:12 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 239C9C34115;
	Thu, 30 Jun 2022 13:30:10 +0000 (UTC)
Subject: Patch "crypto: arm - use Kconfig based compiler checks for crypto opcodes" has been added to the 5.4-stable tree
To: andre.przywara@arm.com,ard.biesheuvel@linaro.org,ardb@kernel.org,caij2003@gmail.com,catalin.marinas@arm.com,clang-built-linux@googlegroups.com,davem@davemloft.net,f.fainelli@gmail.com,gregkh@linuxfoundation.org,herbert@gondor.apana.org.au,linux-arm-kernel@lists.infradead.org,linux@armlinux.org.uk,ndesaulniers@google.com,nico@fluxnic.net,rmk+kernel@armlinux.org.uk,sashal@kernel.org,stefan@agner.ch,tony@atomide.com,ulli.kroll@googlemail.com
Cc: <stable-commits@vger.kernel.org>
From: <gregkh@linuxfoundation.org>
Date: Thu, 30 Jun 2022 15:29:31 +0200
In-Reply-To: <20220629180227.3408104-11-f.fainelli@gmail.com>
Message-ID: <1656595771255122@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-stable: commit
X-Patchwork-Hint: ignore
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linuxfoundation.org header.s=korg header.b=PqrZqLD5;       spf=pass
 (google.com: domain of gregkh@linuxfoundation.org designates
 2604:1380:4601:e00::1 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
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


This is a note to let you know that I've just added the patch titled

    crypto: arm - use Kconfig based compiler checks for crypto opcodes

to the 5.4-stable tree which can be found at:
    http://www.kernel.org/git/?p=3Dlinux/kernel/git/stable/stable-queue.git=
;a=3Dsummary

The filename of the patch is:
     crypto-arm-use-kconfig-based-compiler-checks-for-crypto-opcodes.patch
and it can be found in the queue-5.4 subdirectory.

If you, or anyone else, feels it should not be added to the stable tree,
please let <stable@vger.kernel.org> know about it.


From foo@baz Thu Jun 30 03:27:07 PM CEST 2022
From: Florian Fainelli <f.fainelli@gmail.com>
Date: Wed, 29 Jun 2022 11:02:26 -0700
Subject: crypto: arm - use Kconfig based compiler checks for crypto opcodes
To: stable@vger.kernel.org
Cc: Ard Biesheuvel <ard.biesheuvel@linaro.org>, Herbert Xu <herbert@gondor.=
apana.org.au>, Florian Fainelli <f.fainelli@gmail.com>, Russell King <linux=
@armlinux.org.uk>, "David S. Miller" <davem@davemloft.net>, Tony Lindgren <=
tony@atomide.com>, Hans Ulli Kroll <ulli.kroll@googlemail.com>, Ard Biesheu=
vel <ardb@kernel.org>, Stefan Agner <stefan@agner.ch>, Nick Desaulniers <nd=
esaulniers@google.com>, Nicolas Pitre <nico@fluxnic.net>, Andre Przywara <a=
ndre.przywara@arm.com>, "Russell King (Oracle)" <rmk+kernel@armlinux.org.uk=
>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Catalin Marinas <catali=
n.marinas@arm.com>, Jian Cai <caij2003@gmail.com>, linux-arm-kernel@lists.i=
nfradead.org (moderated list:ARM PORT), linux-kernel@vger.kernel.org (open =
list), linux-crypto@vger.kernel.org (open list:CRYPTO API), linux-omap@vger=
.kernel.org (open list:OMAP2+ SUPPORT), clang-built-linux@googlegroups.com =
(open list:CLANG/LLVM BUILD SUPPORT), Sasha Levin <sashal@kernel.org>
Message-ID: <20220629180227.3408104-11-f.fainelli@gmail.com>

From: Ard Biesheuvel <ard.biesheuvel@linaro.org>

commit b4d0c0aad57ac3bd1b5141bac5ab1ab1d5e442b3 upstream

Instead of allowing the Crypto Extensions algorithms to be selected when
using a toolchain that does not support them, and complain about it at
build time, use the information we have about the compiler to prevent
them from being selected in the first place. Users that are stuck with
a GCC version <4.8 are unlikely to care about these routines anyway, and
it cleans up the Makefile considerably.

While at it, add explicit 'armv8-a' CPU specifiers to the code that uses
the 'crypto-neon-fp-armv8' FPU specifier so we don't regress Clang, which
will complain about this in version 10 and later.

Signed-off-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Signed-off-by: Herbert Xu <herbert@gondor.apana.org.au>
Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
---
 arch/arm/crypto/Kconfig             |   14 ++++++++------
 arch/arm/crypto/Makefile            |   32 ++++++-------------------------=
-
 arch/arm/crypto/crct10dif-ce-core.S |    2 +-
 arch/arm/crypto/ghash-ce-core.S     |    1 +
 arch/arm/crypto/sha1-ce-core.S      |    1 +
 arch/arm/crypto/sha2-ce-core.S      |    1 +
 6 files changed, 18 insertions(+), 33 deletions(-)

--- a/arch/arm/crypto/Kconfig
+++ b/arch/arm/crypto/Kconfig
@@ -30,7 +30,7 @@ config CRYPTO_SHA1_ARM_NEON
=20
 config CRYPTO_SHA1_ARM_CE
 	tristate "SHA1 digest algorithm (ARM v8 Crypto Extensions)"
-	depends on KERNEL_MODE_NEON
+	depends on KERNEL_MODE_NEON && (CC_IS_CLANG || GCC_VERSION >=3D 40800)
 	select CRYPTO_SHA1_ARM
 	select CRYPTO_HASH
 	help
@@ -39,7 +39,7 @@ config CRYPTO_SHA1_ARM_CE
=20
 config CRYPTO_SHA2_ARM_CE
 	tristate "SHA-224/256 digest algorithm (ARM v8 Crypto Extensions)"
-	depends on KERNEL_MODE_NEON
+	depends on KERNEL_MODE_NEON && (CC_IS_CLANG || GCC_VERSION >=3D 40800)
 	select CRYPTO_SHA256_ARM
 	select CRYPTO_HASH
 	help
@@ -96,7 +96,7 @@ config CRYPTO_AES_ARM_BS
=20
 config CRYPTO_AES_ARM_CE
 	tristate "Accelerated AES using ARMv8 Crypto Extensions"
-	depends on KERNEL_MODE_NEON
+	depends on KERNEL_MODE_NEON && (CC_IS_CLANG || GCC_VERSION >=3D 40800)
 	select CRYPTO_BLKCIPHER
 	select CRYPTO_LIB_AES
 	select CRYPTO_SIMD
@@ -106,7 +106,7 @@ config CRYPTO_AES_ARM_CE
=20
 config CRYPTO_GHASH_ARM_CE
 	tristate "PMULL-accelerated GHASH using NEON/ARMv8 Crypto Extensions"
-	depends on KERNEL_MODE_NEON
+	depends on KERNEL_MODE_NEON && (CC_IS_CLANG || GCC_VERSION >=3D 40800)
 	select CRYPTO_HASH
 	select CRYPTO_CRYPTD
 	select CRYPTO_GF128MUL
@@ -118,12 +118,14 @@ config CRYPTO_GHASH_ARM_CE
=20
 config CRYPTO_CRCT10DIF_ARM_CE
 	tristate "CRCT10DIF digest algorithm using PMULL instructions"
-	depends on KERNEL_MODE_NEON && CRC_T10DIF
+	depends on KERNEL_MODE_NEON && (CC_IS_CLANG || GCC_VERSION >=3D 40800)
+	depends on CRC_T10DIF
 	select CRYPTO_HASH
=20
 config CRYPTO_CRC32_ARM_CE
 	tristate "CRC32(C) digest algorithm using CRC and/or PMULL instructions"
-	depends on KERNEL_MODE_NEON && CRC32
+	depends on KERNEL_MODE_NEON && (CC_IS_CLANG || GCC_VERSION >=3D 40800)
+	depends on CRC32
 	select CRYPTO_HASH
=20
 config CRYPTO_CHACHA20_NEON
--- a/arch/arm/crypto/Makefile
+++ b/arch/arm/crypto/Makefile
@@ -12,32 +12,12 @@ obj-$(CONFIG_CRYPTO_SHA512_ARM) +=3D sha51
 obj-$(CONFIG_CRYPTO_CHACHA20_NEON) +=3D chacha-neon.o
 obj-$(CONFIG_CRYPTO_NHPOLY1305_NEON) +=3D nhpoly1305-neon.o
=20
-ce-obj-$(CONFIG_CRYPTO_AES_ARM_CE) +=3D aes-arm-ce.o
-ce-obj-$(CONFIG_CRYPTO_SHA1_ARM_CE) +=3D sha1-arm-ce.o
-ce-obj-$(CONFIG_CRYPTO_SHA2_ARM_CE) +=3D sha2-arm-ce.o
-ce-obj-$(CONFIG_CRYPTO_GHASH_ARM_CE) +=3D ghash-arm-ce.o
-ce-obj-$(CONFIG_CRYPTO_CRCT10DIF_ARM_CE) +=3D crct10dif-arm-ce.o
-crc-obj-$(CONFIG_CRYPTO_CRC32_ARM_CE) +=3D crc32-arm-ce.o
-
-ifneq ($(crc-obj-y)$(crc-obj-m),)
-ifeq ($(call as-instr,.arch armv8-a\n.arch_extension crc,y,n),y)
-ce-obj-y +=3D $(crc-obj-y)
-ce-obj-m +=3D $(crc-obj-m)
-else
-$(warning These CRC Extensions modules need binutils 2.23 or higher)
-$(warning $(crc-obj-y) $(crc-obj-m))
-endif
-endif
-
-ifneq ($(ce-obj-y)$(ce-obj-m),)
-ifeq ($(call as-instr,.fpu crypto-neon-fp-armv8,y,n),y)
-obj-y +=3D $(ce-obj-y)
-obj-m +=3D $(ce-obj-m)
-else
-$(warning These ARMv8 Crypto Extensions modules need binutils 2.23 or high=
er)
-$(warning $(ce-obj-y) $(ce-obj-m))
-endif
-endif
+obj-$(CONFIG_CRYPTO_AES_ARM_CE) +=3D aes-arm-ce.o
+obj-$(CONFIG_CRYPTO_SHA1_ARM_CE) +=3D sha1-arm-ce.o
+obj-$(CONFIG_CRYPTO_SHA2_ARM_CE) +=3D sha2-arm-ce.o
+obj-$(CONFIG_CRYPTO_GHASH_ARM_CE) +=3D ghash-arm-ce.o
+obj-$(CONFIG_CRYPTO_CRCT10DIF_ARM_CE) +=3D crct10dif-arm-ce.o
+obj-$(CONFIG_CRYPTO_CRC32_ARM_CE) +=3D crc32-arm-ce.o
=20
 aes-arm-y	:=3D aes-cipher-core.o aes-cipher-glue.o
 aes-arm-bs-y	:=3D aes-neonbs-core.o aes-neonbs-glue.o
--- a/arch/arm/crypto/crct10dif-ce-core.S
+++ b/arch/arm/crypto/crct10dif-ce-core.S
@@ -72,7 +72,7 @@
 #endif
=20
 	.text
-	.arch		armv7-a
+	.arch		armv8-a
 	.fpu		crypto-neon-fp-armv8
=20
 	init_crc	.req	r0
--- a/arch/arm/crypto/ghash-ce-core.S
+++ b/arch/arm/crypto/ghash-ce-core.S
@@ -88,6 +88,7 @@
 	T3_H		.req	d17
=20
 	.text
+	.arch		armv8-a
 	.fpu		crypto-neon-fp-armv8
=20
 	.macro		__pmull_p64, rd, rn, rm, b1, b2, b3, b4
--- a/arch/arm/crypto/sha1-ce-core.S
+++ b/arch/arm/crypto/sha1-ce-core.S
@@ -10,6 +10,7 @@
 #include <asm/assembler.h>
=20
 	.text
+	.arch		armv8-a
 	.fpu		crypto-neon-fp-armv8
=20
 	k0		.req	q0
--- a/arch/arm/crypto/sha2-ce-core.S
+++ b/arch/arm/crypto/sha2-ce-core.S
@@ -10,6 +10,7 @@
 #include <asm/assembler.h>
=20
 	.text
+	.arch		armv8-a
 	.fpu		crypto-neon-fp-armv8
=20
 	k0		.req	q7


Patches currently in stable-queue which might be from f.fainelli@gmail.com =
are

queue-5.4/arm-8971-1-replace-the-sole-use-of-a-symbol-with-its-definition.p=
atch
queue-5.4/arm-omap2-drop-unnecessary-adrl.patch
queue-5.4/arm-8933-1-replace-sun-solaris-style-flag-on-section-directive.pa=
tch
queue-5.4/crypto-arm-sha256-neon-avoid-adrl-pseudo-instruction.patch
queue-5.4/arm-9029-1-make-iwmmxt.s-support-clang-s-integrated-assembler.pat=
ch
queue-5.4/net-mscc-ocelot-allow-unregistered-ip-multicast-flooding.patch
queue-5.4/crypto-arm-sha512-neon-avoid-adrl-pseudo-instruction.patch
queue-5.4/arm-8989-1-use-.fpu-assembler-directives-instead-of-assembler-arg=
uments.patch
queue-5.4/crypto-arm-ghash-ce-define-fpu-before-fpu-registers-are-reference=
d.patch
queue-5.4/arm-8929-1-use-apsr_nzcv-instead-of-r15-as-mrc-operand.patch
queue-5.4/crypto-arm-use-kconfig-based-compiler-checks-for-crypto-opcodes.p=
atch
queue-5.4/arm-8990-1-use-vfp-assembler-mnemonics-in-register-load-store-mac=
ros.patch

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/1656595771255122%40kroah.com.
