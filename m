Return-Path: <clang-built-linux+bncBCH67JWTV4DBBUVH6KKQMGQEAPEB25A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x938.google.com (mail-ua1-x938.google.com [IPv6:2607:f8b0:4864:20::938])
	by mail.lfdr.de (Postfix) with ESMTPS id 5678856083F
	for <lists+clang-built-linux@lfdr.de>; Wed, 29 Jun 2022 20:02:59 +0200 (CEST)
Received: by mail-ua1-x938.google.com with SMTP id g21-20020ab02455000000b0037f227fdc94sf6856521uan.10
        for <lists+clang-built-linux@lfdr.de>; Wed, 29 Jun 2022 11:02:59 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1656525778; cv=pass;
        d=google.com; s=arc-20160816;
        b=TplPvGpuMOmFmdg1MSYmk+cZNV67Gyl6dEsTeEm3RxRlYvWHe2VhumD/TZ+7aCuqBN
         udbSN55ScnBIBFWCHBfEg54okcBMbQD66sy4yZCBRDTsdioKvCtbNtt2e7fMhEQRVAa0
         o7Bddv4Gbq14Wx5i3iB33Qs4F3zSKrgo2J0adACwmqmp1F/+L17W1dOjPEl5R6uvi+uR
         ZZZPj4vZ3+zYBw8VAIf0Z+D2pPLYJXlfZDEL7+namSB5rE1GJ5kIsj1yfeXi6smeiFa7
         +6/AsPdkn45tgcRXYYvzLDOvhhV5Q8fQwiQWa5ShIfMApoPbh8z+4yT4stJCboK0eOB3
         8fbA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature
         :dkim-signature;
        bh=QzWYEyNGUxv/G1OVehSNsYDg+vr/nZfS8x0hu6nP/eo=;
        b=agOFGm0Dn2C1uq+GOJutVlmg1tDJ6Q0uTMqzadGAZPGF6d4L3i7Mry+qVrefUnmMM3
         j2pSVkdeqLjqHhxHn7gC6VFL3PWZ9wFpoSInfGbe9vS+WPliaQlB63a25fJfWbod5xHE
         MWt6zTEyylJYstO3jyj6EcoWBpzXLwR4IacXsXSo+q7h21suncvCneKKtEJrgjAQgvUH
         t7vc/Ztr7NTbrj6ctEotiUccpq1t86JB6o6Rxzn3zqmq99EHHHjXQz9ho4pIBwgOWC2I
         KxWrmUoDzz9pp1WRfft92+FEgqXAu7VStinWkurfAdTK053CbYnytLWloTKJNpmagTKn
         7TjA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b="nJd/VOvu";
       spf=pass (google.com: domain of f.fainelli@gmail.com designates 2607:f8b0:4864:20::1035 as permitted sender) smtp.mailfrom=f.fainelli@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QzWYEyNGUxv/G1OVehSNsYDg+vr/nZfS8x0hu6nP/eo=;
        b=OGF3vbBRYFU7gpi3GvIxRUhqzdMnFUCgiR4fA5E+Y6jyKWn767QR9sO925M9hRbBRZ
         4uh6+3JnxGkQzrIoOxDIHKhNdrUxaUeqtiZsme4GCjQAhA/tfD+2NR7EBe5EUZlztQNc
         4G5HqjZ8SK0CXu0fIT9RWFrljvd9QuzUKV/UWAzrtFcip4pK3GPQN5jpe1W++tXnr/i7
         1ZIHA80zEZITlc7x06D3iD+pnxwN34vu5xf59tnmbElLUARkzmxi+LR5DVGh8E7smM1V
         KlhCjPPgB1mexlY/UwDTkkb9XjtrDOCZ/fw2xiWI/iyAbWw3H4LpQllwPe7ZIHyDjUZx
         ovWQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QzWYEyNGUxv/G1OVehSNsYDg+vr/nZfS8x0hu6nP/eo=;
        b=ju7e4fSi+oPXhXKa1MM5tVJj1a9Y4BuPTIOhhY8Vd1/LecVXay6SvwjJtgPtw3yUVs
         fwo9T0hTWeqAi1LzW4MbZq11hdp2HdmxDERhRUVK0J9UoMGkiSMw08z5jUY8o2fR4GLv
         ae16sIiWqeoAvoFkOPWx5JRxSpWi+vy0HSlgopUkQoOa6XpF+NC4W+Sfj/YtMvy5GGZG
         aRLmgV8A9t9zMYrEwFqyjDPPOpRccdVx9oFVH9Kf54GP/79kc1C/V4PgBwkcA2zm6bPl
         z6nvrZV0xUSJ4IFiGEKjXmpRBLFrU0huYSzGlzLOK524cfojzEKF1DDHYzXL/RGfkmhw
         6lSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QzWYEyNGUxv/G1OVehSNsYDg+vr/nZfS8x0hu6nP/eo=;
        b=Vu9WDv9i4acXW8a7B/nem74y0+C+4G+fpAApE9ZIbmwU+m8SegiQKYwrwE9HHwxubd
         odui9Oc7ttZR/2QLEfAvcPzbgLoOr5h5j3ecEyTEyNXF6YVOuJpGWRSjVuoUbS8Kw+FP
         ASLNi4JKqTI2ro/1NkyOQgNmN2MIp28LyWi3SkLQouXSqHK/TZeBsRd3oNffIUtwNfhT
         818PQsUGI0iGk3khM9q9uX9k/ar5T2KkPp9KTpB4hpsmllG7f2UoFaOTjGLPvem0VPAC
         Dh0qqC9TBYpVb7lyIa2rOA+O5M5zUGTskx/fVw91nhuB43ARaJ05BMfcINlpPDMRc2g3
         L2HA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AJIora+pJ5hJ12EX1vhM+eGgkB5A7+8MLud6ndpNQpYuwYzBmJIJNn5G
	Ls8beLYbkJwmNiMqadbDmk4=
X-Google-Smtp-Source: AGRyM1sriZcDiChwT9bm0Dx92s0Dv5gj5Ir2iYRfLlLpL85d9kQvhS33unzkES2U3UPjZzHNxPIAMA==
X-Received: by 2002:a05:6122:612:b0:36c:5776:1836 with SMTP id u18-20020a056122061200b0036c57761836mr5820640vkp.6.1656525778226;
        Wed, 29 Jun 2022 11:02:58 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:1581:0:b0:34c:3868:f9fe with SMTP id 123-20020a671581000000b0034c3868f9fels6782298vsv.8.gmail;
 Wed, 29 Jun 2022 11:02:57 -0700 (PDT)
X-Received: by 2002:a05:6102:3d9e:b0:354:4875:a41f with SMTP id h30-20020a0561023d9e00b003544875a41fmr5653161vsv.1.1656525777565;
        Wed, 29 Jun 2022 11:02:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1656525777; cv=none;
        d=google.com; s=arc-20160816;
        b=pUDjOqP6q/dge/x5xAhy/qG0SA14vIGANQVVSrkr7fUfiLfbPp4mLc54rsnnFPmC+4
         H5vPbrWviMR9y1un2H2SNVdQ2cM9GUDPA2JUcqfoD+n7cKNZ8qbbeGfysz3clY+mcZ5A
         dLntk6IgtR0bngJsVfZvbnmznxV7xiqqdU9xRiEP0nEkI9ua2n77kmaVJTPrCQOzdgcK
         iXzNRXdc318vuGSR3bJYROkDa7f9tZ0XJNzFkUtzFaa1TminLwu0qZB0eVVX4IySxaDt
         zQmmZlXGKkIQpaUo7/5kH5kH2xW0VvunERxtkZL7CcUldBmUqwDtrWXXgRAAB8p5cVug
         zwWA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=c/BfwV7Ac7O3/FvU9C6xy5mbVDril5zWZAhGx2T5vDU=;
        b=qDkx7gRBybxEVfUQX4gOAew6JwcRlkspAyKTeIFrXcNkeLNmcnJ/rwU/K+YHsG/cvj
         w8WxzhrYLv7kU8zOxhqH/1Fwy/bbo7gu5G4YOKfa2drfeRe2X4+vhsoNd/qP7tHzMM7j
         W528TjNco91hutOw71KSlBAj91rehDwpe0l7aRLedhb8Ss652iHBe1laNaHFZR5aQr9w
         OILojdKGQAV0rY0J/f5nZ0JAy8xNiJlpxtMvjXDcBm5yikP6cL3Jdc/aaGD+jRb8Dhhb
         DXEJGMSeEhVSQeJ2hl/LERdmiSmxzu3PQcRvOi0xjqZaq6S4At99puFGNzcZXFESfKe/
         03qw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b="nJd/VOvu";
       spf=pass (google.com: domain of f.fainelli@gmail.com designates 2607:f8b0:4864:20::1035 as permitted sender) smtp.mailfrom=f.fainelli@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pj1-x1035.google.com (mail-pj1-x1035.google.com. [2607:f8b0:4864:20::1035])
        by gmr-mx.google.com with ESMTPS id j11-20020ab064cb000000b00373792b7f52si859888uaq.1.2022.06.29.11.02.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 29 Jun 2022 11:02:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of f.fainelli@gmail.com designates 2607:f8b0:4864:20::1035 as permitted sender) client-ip=2607:f8b0:4864:20::1035;
Received: by mail-pj1-x1035.google.com with SMTP id dw10-20020a17090b094a00b001ed00a16eb4so205621pjb.2
        for <clang-built-linux@googlegroups.com>; Wed, 29 Jun 2022 11:02:57 -0700 (PDT)
X-Received: by 2002:a17:902:dac1:b0:16a:7560:2ac4 with SMTP id q1-20020a170902dac100b0016a75602ac4mr10236587plx.55.1656525777103;
        Wed, 29 Jun 2022 11:02:57 -0700 (PDT)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id s7-20020a17090302c700b00168e83eda56sm11736371plk.3.2022.06.29.11.02.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Jun 2022 11:02:56 -0700 (PDT)
From: Florian Fainelli <f.fainelli@gmail.com>
To: stable@vger.kernel.org
Cc: Ard Biesheuvel <ard.biesheuvel@linaro.org>,
	Herbert Xu <herbert@gondor.apana.org.au>,
	Florian Fainelli <f.fainelli@gmail.com>,
	Russell King <linux@armlinux.org.uk>,
	"David S. Miller" <davem@davemloft.net>,
	Tony Lindgren <tony@atomide.com>,
	Hans Ulli Kroll <ulli.kroll@googlemail.com>,
	Ard Biesheuvel <ardb@kernel.org>,
	Stefan Agner <stefan@agner.ch>,
	Nick Desaulniers <ndesaulniers@google.com>,
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
Subject: [PATCH stable 5.4 10/11] crypto: arm - use Kconfig based compiler checks for crypto opcodes
Date: Wed, 29 Jun 2022 11:02:26 -0700
Message-Id: <20220629180227.3408104-11-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220629180227.3408104-1-f.fainelli@gmail.com>
References: <20220629180227.3408104-1-f.fainelli@gmail.com>
MIME-Version: 1.0
X-Original-Sender: f.fainelli@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20210112 header.b="nJd/VOvu";       spf=pass
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
---
 arch/arm/crypto/Kconfig             | 14 +++++++------
 arch/arm/crypto/Makefile            | 32 ++++++-----------------------
 arch/arm/crypto/crct10dif-ce-core.S |  2 +-
 arch/arm/crypto/ghash-ce-core.S     |  1 +
 arch/arm/crypto/sha1-ce-core.S      |  1 +
 arch/arm/crypto/sha2-ce-core.S      |  1 +
 6 files changed, 18 insertions(+), 33 deletions(-)

diff --git a/arch/arm/crypto/Kconfig b/arch/arm/crypto/Kconfig
index 043b0b18bf7e..f747caea10ff 100644
--- a/arch/arm/crypto/Kconfig
+++ b/arch/arm/crypto/Kconfig
@@ -30,7 +30,7 @@ config CRYPTO_SHA1_ARM_NEON
 
 config CRYPTO_SHA1_ARM_CE
 	tristate "SHA1 digest algorithm (ARM v8 Crypto Extensions)"
-	depends on KERNEL_MODE_NEON
+	depends on KERNEL_MODE_NEON && (CC_IS_CLANG || GCC_VERSION >= 40800)
 	select CRYPTO_SHA1_ARM
 	select CRYPTO_HASH
 	help
@@ -39,7 +39,7 @@ config CRYPTO_SHA1_ARM_CE
 
 config CRYPTO_SHA2_ARM_CE
 	tristate "SHA-224/256 digest algorithm (ARM v8 Crypto Extensions)"
-	depends on KERNEL_MODE_NEON
+	depends on KERNEL_MODE_NEON && (CC_IS_CLANG || GCC_VERSION >= 40800)
 	select CRYPTO_SHA256_ARM
 	select CRYPTO_HASH
 	help
@@ -96,7 +96,7 @@ config CRYPTO_AES_ARM_BS
 
 config CRYPTO_AES_ARM_CE
 	tristate "Accelerated AES using ARMv8 Crypto Extensions"
-	depends on KERNEL_MODE_NEON
+	depends on KERNEL_MODE_NEON && (CC_IS_CLANG || GCC_VERSION >= 40800)
 	select CRYPTO_BLKCIPHER
 	select CRYPTO_LIB_AES
 	select CRYPTO_SIMD
@@ -106,7 +106,7 @@ config CRYPTO_AES_ARM_CE
 
 config CRYPTO_GHASH_ARM_CE
 	tristate "PMULL-accelerated GHASH using NEON/ARMv8 Crypto Extensions"
-	depends on KERNEL_MODE_NEON
+	depends on KERNEL_MODE_NEON && (CC_IS_CLANG || GCC_VERSION >= 40800)
 	select CRYPTO_HASH
 	select CRYPTO_CRYPTD
 	select CRYPTO_GF128MUL
@@ -118,12 +118,14 @@ config CRYPTO_GHASH_ARM_CE
 
 config CRYPTO_CRCT10DIF_ARM_CE
 	tristate "CRCT10DIF digest algorithm using PMULL instructions"
-	depends on KERNEL_MODE_NEON && CRC_T10DIF
+	depends on KERNEL_MODE_NEON && (CC_IS_CLANG || GCC_VERSION >= 40800)
+	depends on CRC_T10DIF
 	select CRYPTO_HASH
 
 config CRYPTO_CRC32_ARM_CE
 	tristate "CRC32(C) digest algorithm using CRC and/or PMULL instructions"
-	depends on KERNEL_MODE_NEON && CRC32
+	depends on KERNEL_MODE_NEON && (CC_IS_CLANG || GCC_VERSION >= 40800)
+	depends on CRC32
 	select CRYPTO_HASH
 
 config CRYPTO_CHACHA20_NEON
diff --git a/arch/arm/crypto/Makefile b/arch/arm/crypto/Makefile
index 4180f3a13512..c0d36771a693 100644
--- a/arch/arm/crypto/Makefile
+++ b/arch/arm/crypto/Makefile
@@ -12,32 +12,12 @@ obj-$(CONFIG_CRYPTO_SHA512_ARM) += sha512-arm.o
 obj-$(CONFIG_CRYPTO_CHACHA20_NEON) += chacha-neon.o
 obj-$(CONFIG_CRYPTO_NHPOLY1305_NEON) += nhpoly1305-neon.o
 
-ce-obj-$(CONFIG_CRYPTO_AES_ARM_CE) += aes-arm-ce.o
-ce-obj-$(CONFIG_CRYPTO_SHA1_ARM_CE) += sha1-arm-ce.o
-ce-obj-$(CONFIG_CRYPTO_SHA2_ARM_CE) += sha2-arm-ce.o
-ce-obj-$(CONFIG_CRYPTO_GHASH_ARM_CE) += ghash-arm-ce.o
-ce-obj-$(CONFIG_CRYPTO_CRCT10DIF_ARM_CE) += crct10dif-arm-ce.o
-crc-obj-$(CONFIG_CRYPTO_CRC32_ARM_CE) += crc32-arm-ce.o
-
-ifneq ($(crc-obj-y)$(crc-obj-m),)
-ifeq ($(call as-instr,.arch armv8-a\n.arch_extension crc,y,n),y)
-ce-obj-y += $(crc-obj-y)
-ce-obj-m += $(crc-obj-m)
-else
-$(warning These CRC Extensions modules need binutils 2.23 or higher)
-$(warning $(crc-obj-y) $(crc-obj-m))
-endif
-endif
-
-ifneq ($(ce-obj-y)$(ce-obj-m),)
-ifeq ($(call as-instr,.fpu crypto-neon-fp-armv8,y,n),y)
-obj-y += $(ce-obj-y)
-obj-m += $(ce-obj-m)
-else
-$(warning These ARMv8 Crypto Extensions modules need binutils 2.23 or higher)
-$(warning $(ce-obj-y) $(ce-obj-m))
-endif
-endif
+obj-$(CONFIG_CRYPTO_AES_ARM_CE) += aes-arm-ce.o
+obj-$(CONFIG_CRYPTO_SHA1_ARM_CE) += sha1-arm-ce.o
+obj-$(CONFIG_CRYPTO_SHA2_ARM_CE) += sha2-arm-ce.o
+obj-$(CONFIG_CRYPTO_GHASH_ARM_CE) += ghash-arm-ce.o
+obj-$(CONFIG_CRYPTO_CRCT10DIF_ARM_CE) += crct10dif-arm-ce.o
+obj-$(CONFIG_CRYPTO_CRC32_ARM_CE) += crc32-arm-ce.o
 
 aes-arm-y	:= aes-cipher-core.o aes-cipher-glue.o
 aes-arm-bs-y	:= aes-neonbs-core.o aes-neonbs-glue.o
diff --git a/arch/arm/crypto/crct10dif-ce-core.S b/arch/arm/crypto/crct10dif-ce-core.S
index 86be258a803f..46c02c518a30 100644
--- a/arch/arm/crypto/crct10dif-ce-core.S
+++ b/arch/arm/crypto/crct10dif-ce-core.S
@@ -72,7 +72,7 @@
 #endif
 
 	.text
-	.arch		armv7-a
+	.arch		armv8-a
 	.fpu		crypto-neon-fp-armv8
 
 	init_crc	.req	r0
diff --git a/arch/arm/crypto/ghash-ce-core.S b/arch/arm/crypto/ghash-ce-core.S
index c47fe81abcb0..534c9647726d 100644
--- a/arch/arm/crypto/ghash-ce-core.S
+++ b/arch/arm/crypto/ghash-ce-core.S
@@ -88,6 +88,7 @@
 	T3_H		.req	d17
 
 	.text
+	.arch		armv8-a
 	.fpu		crypto-neon-fp-armv8
 
 	.macro		__pmull_p64, rd, rn, rm, b1, b2, b3, b4
diff --git a/arch/arm/crypto/sha1-ce-core.S b/arch/arm/crypto/sha1-ce-core.S
index 49a74a441aec..8a702e051738 100644
--- a/arch/arm/crypto/sha1-ce-core.S
+++ b/arch/arm/crypto/sha1-ce-core.S
@@ -10,6 +10,7 @@
 #include <asm/assembler.h>
 
 	.text
+	.arch		armv8-a
 	.fpu		crypto-neon-fp-armv8
 
 	k0		.req	q0
diff --git a/arch/arm/crypto/sha2-ce-core.S b/arch/arm/crypto/sha2-ce-core.S
index 4ad517577e23..b6369d2440a1 100644
--- a/arch/arm/crypto/sha2-ce-core.S
+++ b/arch/arm/crypto/sha2-ce-core.S
@@ -10,6 +10,7 @@
 #include <asm/assembler.h>
 
 	.text
+	.arch		armv8-a
 	.fpu		crypto-neon-fp-armv8
 
 	k0		.req	q7
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20220629180227.3408104-11-f.fainelli%40gmail.com.
