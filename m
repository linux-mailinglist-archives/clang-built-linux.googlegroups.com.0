Return-Path: <clang-built-linux+bncBCUJ7YGL3QFBB3WK62KQMGQEG5RHDHY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x337.google.com (mail-wm1-x337.google.com [IPv6:2a00:1450:4864:20::337])
	by mail.lfdr.de (Postfix) with ESMTPS id 30B55561B60
	for <lists+clang-built-linux@lfdr.de>; Thu, 30 Jun 2022 15:30:23 +0200 (CEST)
Received: by mail-wm1-x337.google.com with SMTP id az40-20020a05600c602800b003a048edf007sf5595526wmb.5
        for <lists+clang-built-linux@lfdr.de>; Thu, 30 Jun 2022 06:30:23 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1656595823; cv=pass;
        d=google.com; s=arc-20160816;
        b=EkAMHgMBelic8OKt6CWBhBh9fcstcBupLehavzDEcFQYAA9GH+Wyqafcdc8NW1YHB8
         v8k3bhW852BMdu5da2ocAtWfwtjCp9OkHD7PIBqtLSUpCa/c0mh7kYmvDvD1bymsY0iP
         cnVDa/bcyejQIvk8/om4DWC97KER8PsoE+sZxVjDm3h4UDOXaFd1C6pLNcJgBmm90TsD
         JojkFuV7+XFVkvq+l9lmSR9aexP+5uoNEdJhykpdfFB7iE65k2LwLun2f15p2AiZT7AV
         Vx79WXB0N1gYqcwgj6BhOjdVFQd11d8L0U3BTJs0VLy6ANSKdYWq80A9K69Ppj7uQm5g
         1a5A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :mime-version:message-id:in-reply-to:date:from:cc:to:subject:sender
         :dkim-signature;
        bh=8Yd/w/4jafggP72oyGSuxEiBb8h44IT7kggzRuldUxU=;
        b=i8sktvL5TOYOotYYHPHYR6JKJM3GXBv9/PVj5gSRXfVJcfEp5btB6OzlTln4dl6pNc
         CF5mXf36zkzhXDX1MBJ+QKyU1nfms7y5v0B/kKmW91nJZfaC6/FfZUCsqiyIRs82CyXS
         z4dxkKzrtygBorH6K7/pZZtVUmbTQHHNj2ewH6mhFiph0NO5LN58Fw4+DfCsOmGjXwAo
         ZIriGpQaB+eYcruPfMNPn3RmKDaBgzb7Jzl6v+zwj/MrEfm/c/ZYMLDNaixcFaPR6feD
         +3FuebK/+kVgjjYsVu/KKGYYsZefgZd7GYWAyOZbidP/mXRQ6oakLc0jLSe3sPTC8+iv
         6UnA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=rB5GP40p;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 2604:1380:4601:e00::1 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:subject:to:cc:from:date:in-reply-to:message-id:mime-version
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=8Yd/w/4jafggP72oyGSuxEiBb8h44IT7kggzRuldUxU=;
        b=hYSOslsjE5HChBQVskkIEODUKbNsF8GTNL+uHb+5s+ByHDN0w7wWthU5/8iewv4Dhj
         GtgNbv0+DwLv37AeGPD6wnRMTtxMzeZ7U0TWXJsuHDQxfK4sP1wMy8UfHvQjd1RK7FK+
         Cz7HQpXor7UDoM/ROk0H+Gq2qsiF2jT6tQRRbMOv3rGStT31wLNTh/Ht6qm89eydF3Za
         IzZEmi4pcmtShYfAfd6MYWTg5jqrgfmB0MH8i+kcB4pzDIXEpwjd0gD33cAlnfYSfXcX
         uuQtW4CX4nPkPN9AwAtWjmdzMfw0BODyP3EHOLjyUZZVqfbU7HmLKz1STuwdPP4oQVsz
         MpKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:subject:to:cc:from:date:in-reply-to
         :message-id:mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8Yd/w/4jafggP72oyGSuxEiBb8h44IT7kggzRuldUxU=;
        b=h4X+fM4VBkMIIC5IOvMVr5SnP5myYXoSqyA3UCiI81lF2jcEqm+EMeZvD+1MaTw8wT
         6o4Mw1VnkvLOQqZL9xHhzhQX4gPNDjI+7N65/OKEVWOma3gNDx4WoSg6z6fEOPWI3V7I
         f4G/qFTJPycTPvSSpwe8TU9e+12wveAyR92+jP9myyJLbE2JSHqZOCjbtVNZbhevh+JD
         Dy4RMsqv01NwYeVWGbIKu+hErp+s5viqpI8QdvWsdkHFMhsiMPBQw6CuTeAmBV8vXDCU
         bd+dClNwupytKf7VwExzL1wG81/k7EdbfrDqbUn/wOX+OziS1Snn+wzby+iqy+kLdPbY
         Btug==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AJIora/1PC/LFjYyAwuk7GkB+TJg1WjmZjauPk4VE63hVfAAQVssDu6b
	9y8aosc8KfmvGL3ZJBzWXj4=
X-Google-Smtp-Source: AGRyM1uNlRZchYMl+L2T6ikCo1MMw+4as+m2V3mIMk4fQG1Ww9JrYpu8DdIaV30R0us3UN5U1HEUQg==
X-Received: by 2002:a5d:688d:0:b0:21d:3f71:f33c with SMTP id h13-20020a5d688d000000b0021d3f71f33cmr2574201wru.82.1656595822632;
        Thu, 30 Jun 2022 06:30:22 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6000:156e:b0:21d:2eb7:c707 with SMTP id
 14-20020a056000156e00b0021d2eb7c707ls6057795wrz.3.gmail; Thu, 30 Jun 2022
 06:30:21 -0700 (PDT)
X-Received: by 2002:a5d:6b91:0:b0:21b:bc0b:7282 with SMTP id n17-20020a5d6b91000000b0021bbc0b7282mr8476909wrx.375.1656595821550;
        Thu, 30 Jun 2022 06:30:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1656595821; cv=none;
        d=google.com; s=arc-20160816;
        b=0WRh8m5OasG0wIrwZ83snJvL2q0nH4UGblIxjVjeXfXRXYQIBcotPoYC+v95FwWh+Y
         8JoXjzTji/trXigJA9gd0A+RJDopyx7MdnJWNGhC5bL9yQuYuQBjUwv7LIoLqEa8rfp0
         QjuZm8cT1P6vlVjeLnH6SuX0iVqwUOy12fXiTuaCgyiVa+7dW02sziE4QOcJAcpWVUJC
         w1ciYmbrtFs82Z+fGeK/NgRsi3ivgkM7QDbY//uzFNrRF/0m1cUN131EzsaBJreti0aL
         x1FPPDGuUDxDSrnZ4MDaltQWgrqgX+lSi4PMKq3WLZvKOmfGMU3Ut+sUK7z2OFV8fU5f
         tY4Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:in-reply-to:date
         :from:cc:to:subject:dkim-signature;
        bh=FTLOPSNDoCkmlGf4ChrrWoByX8Ea/tZCkUyXPC7M0RM=;
        b=oLnbnba+B7OsTTaZIsx8Kcdro09oXLs16syLZV36RjQYiEJZKFVbT5mmIGAAReFXNN
         UPz5GPBdcnQu18k4HDxocCsWMO2PPbtRCBEiQybF+EOajKvScVkhTrSJh+vwlVcTSti9
         Q7C1LBRu55OI+cSWvZAVd0L2tYW9zB/yLEfn3Canz3MEy+rQmMeVfCPy9++s+7HqM5e9
         Rq7/vUYvyO/1lAH9+Hq60Tmsgsim7ZyF6pGiZFPqb5acjuOJQWYZnbZr3MYRZYdLsYYZ
         UwmNSdKwhTN1emO6aaGj/K2x0QHtv/C/s9O6QZoFz9r5NNL/5RRT96PsrmR/ZXYzcsuN
         UeQw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=rB5GP40p;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 2604:1380:4601:e00::1 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from ams.source.kernel.org (ams.source.kernel.org. [2604:1380:4601:e00::1])
        by gmr-mx.google.com with ESMTPS id k2-20020a5d6282000000b0021b88d047efsi455197wru.5.2022.06.30.06.30.21
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 30 Jun 2022 06:30:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 2604:1380:4601:e00::1 as permitted sender) client-ip=2604:1380:4601:e00::1;
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 44A09B82AC5;
	Thu, 30 Jun 2022 13:30:21 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A5505C34115;
	Thu, 30 Jun 2022 13:30:19 +0000 (UTC)
Subject: Patch "ARM: 8990/1: use VFP assembler mnemonics in register load/store macros" has been added to the 5.4-stable tree
To: andre.przywara@arm.com,ardb@kernel.org,caij2003@gmail.com,catalin.marinas@arm.com,clang-built-linux@googlegroups.com,davem@davemloft.net,f.fainelli@gmail.com,gregkh@linuxfoundation.org,herbert@gondor.apana.org.au,linux-arm-kernel@lists.infradead.org,linux@armlinux.org.uk,ndesaulniers@google.com,nico@fluxnic.net,rmk+kernel@armlinux.org.uk,sashal@kernel.org,stefan@agner.ch,tony@atomide.com,ulli.kroll@googlemail.com
Cc: <stable-commits@vger.kernel.org>
From: <gregkh@linuxfoundation.org>
Date: Thu, 30 Jun 2022 15:29:31 +0200
In-Reply-To: <20220629180227.3408104-3-f.fainelli@gmail.com>
Message-ID: <165659577150129@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-stable: commit
X-Patchwork-Hint: ignore
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linuxfoundation.org header.s=korg header.b=rB5GP40p;       spf=pass
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

    ARM: 8990/1: use VFP assembler mnemonics in register load/store macros

to the 5.4-stable tree which can be found at:
    http://www.kernel.org/git/?p=3Dlinux/kernel/git/stable/stable-queue.git=
;a=3Dsummary

The filename of the patch is:
     arm-8990-1-use-vfp-assembler-mnemonics-in-register-load-store-macros.p=
atch
and it can be found in the queue-5.4 subdirectory.

If you, or anyone else, feels it should not be added to the stable tree,
please let <stable@vger.kernel.org> know about it.


From foo@baz Thu Jun 30 03:27:07 PM CEST 2022
From: Florian Fainelli <f.fainelli@gmail.com>
Date: Wed, 29 Jun 2022 11:02:18 -0700
Subject: ARM: 8990/1: use VFP assembler mnemonics in register load/store ma=
cros
To: stable@vger.kernel.org
Cc: Stefan Agner <stefan@agner.ch>, Russell King <rmk+kernel@armlinux.org.u=
k>, Florian Fainelli <f.fainelli@gmail.com>, Russell King <linux@armlinux.o=
rg.uk>, Herbert Xu <herbert@gondor.apana.org.au>, "David S. Miller" <davem@=
davemloft.net>, Tony Lindgren <tony@atomide.com>, Hans Ulli Kroll <ulli.kro=
ll@googlemail.com>, Ard Biesheuvel <ardb@kernel.org>, Nick Desaulniers <nde=
saulniers@google.com>, Nicolas Pitre <nico@fluxnic.net>, Andre Przywara <an=
dre.przywara@arm.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Cat=
alin Marinas <catalin.marinas@arm.com>, Jian Cai <caij2003@gmail.com>, linu=
x-arm-kernel@lists.infradead.org (moderated list:ARM PORT), linux-kernel@vg=
er.kernel.org (open list), linux-crypto@vger.kernel.org (open list:CRYPTO A=
PI), linux-omap@vger.kernel.org (open list:OMAP2+ SUPPORT), clang-built-lin=
ux@googlegroups.com (open list:CLANG/LLVM BUILD SUPPORT), Sasha Levin <sash=
al@kernel.org>
Message-ID: <20220629180227.3408104-3-f.fainelli@gmail.com>

From: Stefan Agner <stefan@agner.ch>

commit ee440336e5ef977c397afdb72cbf9c6b8effc8ea upstream

The integrated assembler of Clang 10 and earlier do not allow to access
the VFP registers through the coprocessor load/store instructions:
<instantiation>:4:6: error: invalid operand for instruction
 LDC p11, cr0, [r10],#32*4 @ FLDMIAD r10!, {d0-d15}
     ^

This has been addressed with Clang 11 [0]. However, to support earlier
versions of Clang and for better readability use of VFP assembler
mnemonics still is preferred.

Replace the coprocessor load/store instructions with explicit assembler
mnemonics to accessing the floating point coprocessor registers. Use
assembler directives to select the appropriate FPU version.

This allows to build these macros with GNU assembler as well as with
Clang's built-in assembler.

[0] https://reviews.llvm.org/D59733

Link: https://github.com/ClangBuiltLinux/linux/issues/905

Signed-off-by: Stefan Agner <stefan@agner.ch>
Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
---
 arch/arm/include/asm/vfpmacros.h |   19 +++++++++++--------
 1 file changed, 11 insertions(+), 8 deletions(-)

--- a/arch/arm/include/asm/vfpmacros.h
+++ b/arch/arm/include/asm/vfpmacros.h
@@ -19,23 +19,25 @@
=20
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
 #if __LINUX_ARM_ARCH__ <=3D 6
 	ldr	\tmp, =3Delf_hwcap		    @ may not have MVFR regs
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
 #if __LINUX_ARM_ARCH__ <=3D 6
 	ldr	\tmp, =3Delf_hwcap		    @ may not have MVFR regs
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
clang-built-linux/165659577150129%40kroah.com.
