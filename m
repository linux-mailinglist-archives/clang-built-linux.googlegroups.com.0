Return-Path: <clang-built-linux+bncBCEJHTXX7MFBBN4L6H2AKGQEZR5SAMI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23e.google.com (mail-lj1-x23e.google.com [IPv6:2a00:1450:4864:20::23e])
	by mail.lfdr.de (Postfix) with ESMTPS id 201FC1AFA03
	for <lists+clang-built-linux@lfdr.de>; Sun, 19 Apr 2020 14:36:08 +0200 (CEST)
Received: by mail-lj1-x23e.google.com with SMTP id o21sf918191ljp.17
        for <lists+clang-built-linux@lfdr.de>; Sun, 19 Apr 2020 05:36:08 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1587299767; cv=pass;
        d=google.com; s=arc-20160816;
        b=xjEMD1pMvbgr/J0AFiG2Z4FAddgBxTN4vje6SZMlsdLDfCW1Hb+CU/25C8Xfc4EAdP
         X8+NhcuNNM2VjYUc2VrqD8ImM6UKEnXe4rsAG+7eOn1ywo/8yYt4yvU89Pz8IQsBa4Bb
         ucSY1lEciVDV320KM0kxGsJaXFqo6MDe+W2Fabz9g8rj/YHQc3VSXDbiloA6yr9JXRi/
         aA8cS9oKU90jlvbN3/8bDqKR7oL+dQSDWWGKYo1uRIRmFxQaOkotbC+reFuWooTO6lEF
         P98+eRXVJ57UJYBmpHhvDPrAc+vbVpMX2nApaA/HNyorTaCBjrNkp3M2/kL7tzgiTT9I
         TLRw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=SrEGVcnyQRo7IqCaVrUdIkX4Ing5FQH0hSI6hBiIFys=;
        b=BwluzOXIN6PcmfEHiU9E6LeWxHoc2lGcs505IbSmldlJMFjxDaVAekcJJzoUtCUK4p
         7ui3+cQxiPI5pmPlxePVgCHsjN4TlLUGMzAJhp7rLiuKmZINBwRDljIlkbhG0P57uteP
         fiyjvkglf44BT4kSq6Pr9JkG5XTqqQv1S9vZIQjKIi2UszrNbCIcM7r6umhhf9F/ZlSx
         Jo7bI21qUH6VwYJMAdLUib4tzz9I74GHYwIk95PLTIv4yZEjdo8IBKN45JC6/P4XYsJF
         pgNaRZFHAJ0AJ8CnPN9Wzs5K2gvY0BbTkgkwpdoAdWAJ/KfHdo4/y3t6r3JdgBlRWY8v
         GWJA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@agner.ch header.s=dkim header.b=GcgbgEoa;
       spf=pass (google.com: domain of stefan@agner.ch designates 2a02:418:6a02::a2 as permitted sender) smtp.mailfrom=stefan@agner.ch
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=SrEGVcnyQRo7IqCaVrUdIkX4Ing5FQH0hSI6hBiIFys=;
        b=eCaBHNH2SmX/EjvLZ4RUttfQr+gQVd2p6XvkA19TPtyMOavjPz+P6vCag81hM6DkdM
         97An0xRfTJ9/bmsu95OKSeeW08sWnJ/D1Gu9cZD1bAvC8v1PQsU69CgUlP/rRoHwGxFH
         1Y781kIXZVcFfnyxDkroIS04/w/2KqERNxwvEbUVvjDzbGRdFvJqvqnKuxSFgmeK+Urj
         mP2iCVzEfqwahHixsLF7LulSWayEmlXQmjeQN9ZV/MPoVPADu5qY7omU2pnNBgRbblfQ
         VA9OkiIkpjvVesNq0RRaeEpXxUA4czpwPELPQumCAzJHUhUViA2gxPuWbLoKZIXEu4yD
         6zLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=SrEGVcnyQRo7IqCaVrUdIkX4Ing5FQH0hSI6hBiIFys=;
        b=Ecv+25ul9egAzBH1S9E7CBwrtG64zUJcFovIa9XlKNodYttZCdI0Sq3tbDRbW2ynQn
         LrYI3ONZSbI0O0Zoyv3vK1Sh5Chwkn58E6aRA7+ip+aN40LRQe2zII+jz0IStAixUu0i
         TXajyJ4QMW7/SGUg4fgqbhyp+8F6C61EisXhACaqNvrBZOkAJoQcCqFV6OiwRXv3UDnk
         VeaeMMfwhQWyP2Ba+ejY5dEb1W6FVxTMbcLS+rzdMetnvHyXreEc7Od2HcVhXC4gfxp2
         a2qu61zDQfxW4dwp7CKkvC4ffXL1FatoYdP7QyCjUn5uIJA9KONeUesThlzwRSCLg3nO
         BqGQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PubjonTUBFLrkrUi91c51jswyEF9uEoah1KSNgQmEk3AqZv1drjy
	OFAn5SusgSTl8OTQWLcjYMA=
X-Google-Smtp-Source: APiQypLl7sNvMXINiLTZim5HAOrnRDNSnYjX0D2vQJF9UKA0g1vYBiOD1sigLmVsTh9tLe43mr+Imw==
X-Received: by 2002:ac2:5e66:: with SMTP id a6mr7714619lfr.177.1587299767595;
        Sun, 19 Apr 2020 05:36:07 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a19:5205:: with SMTP id m5ls1065649lfb.10.gmail; Sun, 19 Apr
 2020 05:36:07 -0700 (PDT)
X-Received: by 2002:a05:6512:1082:: with SMTP id j2mr7572366lfg.53.1587299767003;
        Sun, 19 Apr 2020 05:36:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1587299767; cv=none;
        d=google.com; s=arc-20160816;
        b=SKPiT6wj4P4EvIo8a3JNYvmuhK9POY8+LPXERPxdSqrkVgq1t6TxwazKJT2DonkCqt
         jlJQ7aZlcwfH3xoyrhhxOyFOmVL4+X0O1B+xO0U/c8w+P/GUcXqwAmYhcIcc0SNabXys
         DGwJM/67XUzkSeTEsStb3Lz83ngTDjzd08w+3n68yDEwRbRrxXYEFJcHGOrIc6uAyKqB
         ECvzv7KBW/7YpMx11/Qoy9PiaBhxJUOLi6zrK1+VYu1J2cqih79d0KTWR79oJVXsq7n7
         e9czfyeNh57XEUq1A/jzk1JudzyUaWjpA15z6/O3WlQboPLHDqDmqp19n3kSZAWnjvjv
         nYjA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=eNd0y6hHMaqGVRk3t28ZbtVem7JVwuidHktgZjpwZDo=;
        b=Ib/4TMud64l8PzCyqdLdRNwlTLfgda6JT8f/6AP424qZL04sD2s/+Tbby4Cz1RZbka
         2gihbaYhynsdxiCIVCMWXrPgD6wgOsZpjH16p4og1zOktA9xsPefnoT3P9Ht4/25YfDq
         Gi0pjuMJqoxUvwHvUMTk2NcEbzUYZrAXl/4iSSfVrnq9wMtGcbLxtDdM0astLwKud+1O
         iuhoGJ/WY/bWTnGLDk8K9g9JdO9Rvu33gKWLmjuI+EMimRrX2N+KmA7MHs9b11aFnGEE
         Mwd+jjAze/bGa0QTamB4WZijC30DTDocTvyoiOszXolDF4shKNdCCjvKVmQGfFyw46z1
         NAJQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@agner.ch header.s=dkim header.b=GcgbgEoa;
       spf=pass (google.com: domain of stefan@agner.ch designates 2a02:418:6a02::a2 as permitted sender) smtp.mailfrom=stefan@agner.ch
Received: from mail.kmu-office.ch (mail.kmu-office.ch. [2a02:418:6a02::a2])
        by gmr-mx.google.com with ESMTPS id k13si139682lfg.5.2020.04.19.05.36.00
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 19 Apr 2020 05:36:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of stefan@agner.ch designates 2a02:418:6a02::a2 as permitted sender) client-ip=2a02:418:6a02::a2;
Received: from zyt.lan (unknown [IPv6:2a02:169:3df5::564])
	by mail.kmu-office.ch (Postfix) with ESMTPSA id EEDF45C9AEC;
	Sun, 19 Apr 2020 14:35:59 +0200 (CEST)
From: Stefan Agner <stefan@agner.ch>
To: linux@armlinux.org.uk
Cc: arnd@arndb.de,
	ard.biesheuvel@linaro.org,
	robin.murphy@arm.com,
	yamada.masahiro@socionext.com,
	ndesaulniers@google.com,
	manojgupta@google.com,
	jiancai@google.com,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Stefan Agner <stefan@agner.ch>
Subject: [PATCH v2 2/3] ARM: use VFP assembler mnemonics in register load/store macros
Date: Sun, 19 Apr 2020 14:35:50 +0200
Message-Id: <583281a29aa28e510ac56da41a93e3f28486901c.1587299429.git.stefan@agner.ch>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <cover.1587299429.git.stefan@agner.ch>
References: <cover.1587299429.git.stefan@agner.ch>
MIME-Version: 1.0
X-Original-Sender: stefan@agner.ch
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@agner.ch header.s=dkim header.b=GcgbgEoa;       spf=pass
 (google.com: domain of stefan@agner.ch designates 2a02:418:6a02::a2 as
 permitted sender) smtp.mailfrom=stefan@agner.ch
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

Clang's integrated assembler does not allow to access the VFP registers
through the coprocessor load/store instructions:
<instantiation>:4:6: error: invalid operand for instruction
 LDC p11, cr0, [r10],#32*4 @ FLDMIAD r10!, {d0-d15}
     ^

Replace the coprocessor load/store instructions with explicit assembler
mnemonics to accessing the floating point coprocessor registers. Use
assembler directives to select the appropriate FPU version.

This allows to build these macros with GNU assembler as well as with
Clang's built-in assembler.

Link: https://github.com/ClangBuiltLinux/linux/issues/905
Signed-off-by: Stefan Agner <stefan@agner.ch>
---
Changes in v2:
- Add link in commit message

 arch/arm/include/asm/vfpmacros.h | 19 +++++++++++--------
 1 file changed, 11 insertions(+), 8 deletions(-)

diff --git a/arch/arm/include/asm/vfpmacros.h b/arch/arm/include/asm/vfpmacros.h
index 628c336e8e3b..947ee5395e1f 100644
--- a/arch/arm/include/asm/vfpmacros.h
+++ b/arch/arm/include/asm/vfpmacros.h
@@ -19,23 +19,25 @@
 
 	@ read all the working registers back into the VFP
 	.macro	VFPFLDMIA, base, tmp
+	.fpu	vfpv2
 #if __LINUX_ARM_ARCH__ < 6
-	LDC	p11, cr0, [\base],#33*4		    @ FLDMIAX \base!, {d0-d15}
+	fldmiax	\base!, {d0-d15}
 #else
-	LDC	p11, cr0, [\base],#32*4		    @ FLDMIAD \base!, {d0-d15}
+	vldmia	\base!, {d0-d15}
 #endif
 #ifdef CONFIG_VFPv3
+	.fpu	vfpv3
 #if __LINUX_ARM_ARCH__ <= 6
 	ldr	\tmp, =elf_hwcap		    @ may not have MVFR regs
 	ldr	\tmp, [\tmp, #0]
 	tst	\tmp, #HWCAP_VFPD32
-	ldclne	p11, cr0, [\base],#32*4		    @ FLDMIAD \base!, {d16-d31}
+	vldmiane \base!, {d16-d31}
 	addeq	\base, \base, #32*4		    @ step over unused register space
 #else
 	VFPFMRX	\tmp, MVFR0			    @ Media and VFP Feature Register 0
 	and	\tmp, \tmp, #MVFR0_A_SIMD_MASK	    @ A_SIMD field
 	cmp	\tmp, #2			    @ 32 x 64bit registers?
-	ldcleq	p11, cr0, [\base],#32*4		    @ FLDMIAD \base!, {d16-d31}
+	vldmiaeq \base!, {d16-d31}
 	addne	\base, \base, #32*4		    @ step over unused register space
 #endif
 #endif
@@ -44,22 +46,23 @@
 	@ write all the working registers out of the VFP
 	.macro	VFPFSTMIA, base, tmp
 #if __LINUX_ARM_ARCH__ < 6
-	STC	p11, cr0, [\base],#33*4		    @ FSTMIAX \base!, {d0-d15}
+	fstmiax	\base!, {d0-d15}
 #else
-	STC	p11, cr0, [\base],#32*4		    @ FSTMIAD \base!, {d0-d15}
+	vstmia	\base!, {d0-d15}
 #endif
 #ifdef CONFIG_VFPv3
+	.fpu	vfpv3
 #if __LINUX_ARM_ARCH__ <= 6
 	ldr	\tmp, =elf_hwcap		    @ may not have MVFR regs
 	ldr	\tmp, [\tmp, #0]
 	tst	\tmp, #HWCAP_VFPD32
-	stclne	p11, cr0, [\base],#32*4		    @ FSTMIAD \base!, {d16-d31}
+	vstmiane \base!, {d16-d31}
 	addeq	\base, \base, #32*4		    @ step over unused register space
 #else
 	VFPFMRX	\tmp, MVFR0			    @ Media and VFP Feature Register 0
 	and	\tmp, \tmp, #MVFR0_A_SIMD_MASK	    @ A_SIMD field
 	cmp	\tmp, #2			    @ 32 x 64bit registers?
-	stcleq	p11, cr0, [\base],#32*4		    @ FSTMIAD \base!, {d16-d31}
+	vstmiaeq \base!, {d16-d31}
 	addne	\base, \base, #32*4		    @ step over unused register space
 #endif
 #endif
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/583281a29aa28e510ac56da41a93e3f28486901c.1587299429.git.stefan%40agner.ch.
