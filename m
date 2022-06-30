Return-Path: <clang-built-linux+bncBCUJ7YGL3QFBBS6K62KQMGQEJ6LAGQY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x339.google.com (mail-wm1-x339.google.com [IPv6:2a00:1450:4864:20::339])
	by mail.lfdr.de (Postfix) with ESMTPS id 423F4561B51
	for <lists+clang-built-linux@lfdr.de>; Thu, 30 Jun 2022 15:29:48 +0200 (CEST)
Received: by mail-wm1-x339.google.com with SMTP id h125-20020a1c2183000000b003a0374f1eb8sf1397409wmh.8
        for <lists+clang-built-linux@lfdr.de>; Thu, 30 Jun 2022 06:29:48 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1656595787; cv=pass;
        d=google.com; s=arc-20160816;
        b=C89pQ6P2ES5H3aeX8Oxzbsaot42M9WCIuzI3QRTg0oq0uagpp3L6aeONGXYUaPP4hn
         bsbxgsnjsMvEY737idaBD8MXqkRweF9KoSnyzmK2XeL5WostdIctHUOC1xAvM5eaA8HZ
         YZfrbKLGwo9+aan2yAjXWGkEpbmQmvb9zpeJGrDZdWswJnz1LfOkuHADNo8Ucx34gsm7
         gFo0hi/Qc1Q8ScAMTWNfRWw/OoFM/mKloJMY2XRNoPZZ8NDPIgG4efN/DmgQvroxEO4d
         Iu6iKrF696Wx2zRdVhu9oAwl8Jr2BbVz527H+OtXJ8OoOt0eTE9Vyy1DGgKUlfMS7Brd
         3agg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :mime-version:message-id:in-reply-to:date:from:cc:to:subject:sender
         :dkim-signature;
        bh=IFdcFndvneg2+y/6vcrX06WDN08zn5qIiYLnRd/fTis=;
        b=e8KkBDApI93tZZUfcDsATrlxN1vGGQgPyW8NmpbHewrYkAL3XEg3c4WK3vQYlESYMb
         nLg7fuz6IR2bteQccaRgc1pvS+8m7bvGiNOeT9gcHEcsWslmSaYNFT5fVhNEIVHxM9Vn
         +0w1NR7pCP2f0fpcIvZ5uLIxj9PRLhcd8Q4CQwfEGnoZC9pqheugNqIXz/hO9OOzoxkS
         ESea97OiF3N4TFiRmZKtQtnoSUgz5ngq8we/6FPt2IOcy7O5MMCoYUsgwmjzj2JxNPrx
         mz27V9wZhOLGe+YJxoKlnwylu1zT0Zfi3cf3XBrTCbfkejzJ/x26W6zaOPePPVybU0cv
         7PWg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b="qmhnVV/v";
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 145.40.68.75 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:subject:to:cc:from:date:in-reply-to:message-id:mime-version
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=IFdcFndvneg2+y/6vcrX06WDN08zn5qIiYLnRd/fTis=;
        b=oLNF7BWWYzMu3sdFIkpBjVGDUsjZM1aH4w1WNEz5WWtEs2qMzhMiBZvhA4iF0Oy44c
         yfWsWH8zFlWA5LAWyccvIqS0IMPHlF/tGPc6AiVT0yGt6qSdHnBnzr2q9VgKEdFF5Ydk
         WpV/L+6DDYA/OFwDNIzvF3Aco6hI9KE88I7r8690DPTLocNkcfJrejpGDKCPRBTiUnoG
         ZD6RRx+JurA9wnpCMTzsKHZNwv7fjfwV+PMS/DAFsIAylslM22nybV4gMNvBxnjytX5o
         ViTE/BDCS3mDYeZCy1x34AgCo8M1saB2NP0PyJiJpTGtylg28XpFF7eFUuOc0iCwl5lp
         mc+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:subject:to:cc:from:date:in-reply-to
         :message-id:mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=IFdcFndvneg2+y/6vcrX06WDN08zn5qIiYLnRd/fTis=;
        b=Efr4FLGXNH0NVdyTEjG0NzpVWXvjVdEP/IeoOG9o93pCcCtd0ECrFNy+MK/lsbCaeM
         JGI4ajW7McKQDnRyyAu6Pk5bY8dWXdvx2RTHy17aX2hHaPBKufbxWYT+tsn9jADAQ/03
         nEFNA1aDf80ZJy6xpzvZcih6HQarx6GM74O9fRExF2p20A8onPtyL+YTD1cAEmB3hddK
         qHS/AfmrWC09OpHhu82ud8xJkSCGyVRrfw+oKmIbOxAM2pTLzY21kylfD4hVCLc0jkjL
         5h30keeNTA1Gx2G+lAsTyYOv5wU+dCObKHEfljmxloJm50Zx5wb/8zqvBcdsIWey23Xe
         GoRg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AJIora/x9qn5t4ww3Nb3yzxE5IqQqKBZAyJrTIZn2ObIwDEyRiiwWAIp
	wzmGATtORSTSPw9XaV+AR4k=
X-Google-Smtp-Source: AGRyM1vrzlltDIsWUCTz8uhPnAr1Z/m2ivJASU5v7Z3Sxc5aUjqAKljxGDhw34gEEJC8Pww8kBX3Zw==
X-Received: by 2002:a5d:4987:0:b0:21b:8f2a:48aa with SMTP id r7-20020a5d4987000000b0021b8f2a48aamr8493646wrq.551.1656595787539;
        Thu, 30 Jun 2022 06:29:47 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6000:178b:b0:21d:350e:23a6 with SMTP id
 e11-20020a056000178b00b0021d350e23a6ls3882125wrg.2.gmail; Thu, 30 Jun 2022
 06:29:46 -0700 (PDT)
X-Received: by 2002:a5d:6a0b:0:b0:21a:3a8e:d5ae with SMTP id m11-20020a5d6a0b000000b0021a3a8ed5aemr8773665wru.79.1656595786481;
        Thu, 30 Jun 2022 06:29:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1656595786; cv=none;
        d=google.com; s=arc-20160816;
        b=jtbYLtNFAax/ZgJK+ZpNO++cHLuVNgfovVzExlltuCLyZ9WByOfsZndTH+qfBf7UEw
         O5A6LuNSPX0jaDYyjPDGcLsmctrMqd4rGWeN3gqh5CUsbIvou/QSemwdX1IIEri/BtLV
         jjQIy1eZ7mrOF0rWcjW94wRBTr6By4uUxuVjxOnGq0yo+hThrCI8r34gwjTyfpEz4L7r
         vht3CTZfbkTndzpNH/FRT8sNAPHNM8WJK8ctpPV4/OE7wgiZq1Mxjb+RDxtkEjTb6Ujy
         xNDsbcDgmrcJ18svC8qLGdVk+yOiwrYB6ytn4BNc3l6nazr/Kuzzy0BUFs0VNUy4ZEZ4
         A7/w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:in-reply-to:date
         :from:cc:to:subject:dkim-signature;
        bh=E03Q6Ev83aFWLFOQpokJVxvIHwAE+EWuevTqw+TCaEQ=;
        b=MDEgthGAe4RPnineEWvKb73xug2Bn0U9+cJjvwB6WKkYEf9qWF2XCgUE37tm1BJblR
         kWfyuFDdARLtkNCX7AvhW9wU9DqCj2ajguF84uq+45Q6HcNBVljoBq2aTOG/51NEUjDT
         4oganzx/Q34bR4S9vO9eq+GfKrU8PFMAAtoZ2Lt1/pqnFXYvMXBF1vC7vu4TCOJvyrlw
         qxoqydEzvS5iQeMRo8dTos6IGZOoJ/lX/ACdQUNlFMaHc9ME9lW+LOozc4wK1D+dk/b9
         rmDnEMJ1L1t6CfJohODPGAIt83r0NddLJFnsSbeFZ6g7ux9631LHHfDeHlLgkuFKaND3
         UeGg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b="qmhnVV/v";
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 145.40.68.75 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from ams.source.kernel.org (ams.source.kernel.org. [145.40.68.75])
        by gmr-mx.google.com with ESMTPS id f6-20020a1c3806000000b0039c948d7614si44712wma.3.2022.06.30.06.29.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 30 Jun 2022 06:29:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 145.40.68.75 as permitted sender) client-ip=145.40.68.75;
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id F33E1B82AC0;
	Thu, 30 Jun 2022 13:29:45 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 10CC3C34115;
	Thu, 30 Jun 2022 13:29:43 +0000 (UTC)
Subject: Patch "ARM: 8929/1: use APSR_nzcv instead of r15 as mrc operand" has been added to the 5.4-stable tree
To: andre.przywara@arm.com,ardb@kernel.org,caij2003@gmail.com,catalin.marinas@arm.com,clang-built-linux@googlegroups.com,davem@davemloft.net,f.fainelli@gmail.com,gregkh@linuxfoundation.org,herbert@gondor.apana.org.au,linux-arm-kernel@lists.infradead.org,linux@armlinux.org.uk,ndesaulniers@google.com,nico@fluxnic.net,rmk+kernel@armlinux.org.uk,sashal@kernel.org,stefan@agner.ch,tony@atomide.com,ulli.kroll@googlemail.com
Cc: <stable-commits@vger.kernel.org>
From: <gregkh@linuxfoundation.org>
Date: Thu, 30 Jun 2022 15:29:30 +0200
In-Reply-To: <20220629180227.3408104-8-f.fainelli@gmail.com>
Message-ID: <1656595770211170@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-stable: commit
X-Patchwork-Hint: ignore
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linuxfoundation.org header.s=korg header.b="qmhnVV/v";
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates
 145.40.68.75 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
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

    ARM: 8929/1: use APSR_nzcv instead of r15 as mrc operand

to the 5.4-stable tree which can be found at:
    http://www.kernel.org/git/?p=3Dlinux/kernel/git/stable/stable-queue.git=
;a=3Dsummary

The filename of the patch is:
     arm-8929-1-use-apsr_nzcv-instead-of-r15-as-mrc-operand.patch
and it can be found in the queue-5.4 subdirectory.

If you, or anyone else, feels it should not be added to the stable tree,
please let <stable@vger.kernel.org> know about it.


From foo@baz Thu Jun 30 03:27:07 PM CEST 2022
From: Florian Fainelli <f.fainelli@gmail.com>
Date: Wed, 29 Jun 2022 11:02:23 -0700
Subject: ARM: 8929/1: use APSR_nzcv instead of r15 as mrc operand
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
Message-ID: <20220629180227.3408104-8-f.fainelli@gmail.com>

From: Stefan Agner <stefan@agner.ch>

commit 9f1984c6ae30e2a379751339ce3375a21099b5d4 upstream

LLVM's integrated assembler does not accept r15 as mrc operand.
  arch/arm/boot/compressed/head.S:1267:16: error: operand must be a registe=
r in range [r0, r14] or apsr_nzcv
  1: mrc p15, 0, r15, c7, c14, 3 @ test,clean,invalidate D cache
                 ^

Use APSR_nzcv instead of r15. The GNU assembler supports this
syntax since binutils 2.21 [0].

[0] https://sourceware.org/git/gitweb.cgi?p=3Dbinutils-gdb.git;a=3Dcommit;h=
=3Ddb472d6ff0f438a21b357249a9b48e4b74498076

Signed-off-by: Stefan Agner <stefan@agner.ch>
Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
---
 arch/arm/boot/compressed/head.S |    2 +-
 arch/arm/mm/proc-arm1026.S      |    4 ++--
 arch/arm/mm/proc-arm926.S       |    4 ++--
 3 files changed, 5 insertions(+), 5 deletions(-)

--- a/arch/arm/boot/compressed/head.S
+++ b/arch/arm/boot/compressed/head.S
@@ -1274,7 +1274,7 @@ iflush:
 __armv5tej_mmu_cache_flush:
 		tst	r4, #1
 		movne	pc, lr
-1:		mrc	p15, 0, r15, c7, c14, 3	@ test,clean,invalidate D cache
+1:		mrc	p15, 0, APSR_nzcv, c7, c14, 3	@ test,clean,invalidate D cache
 		bne	1b
 		mcr	p15, 0, r0, c7, c5, 0	@ flush I cache
 		mcr	p15, 0, r0, c7, c10, 4	@ drain WB
--- a/arch/arm/mm/proc-arm1026.S
+++ b/arch/arm/mm/proc-arm1026.S
@@ -138,7 +138,7 @@ ENTRY(arm1026_flush_kern_cache_all)
 	mov	ip, #0
 __flush_whole_cache:
 #ifndef CONFIG_CPU_DCACHE_DISABLE
-1:	mrc	p15, 0, r15, c7, c14, 3		@ test, clean, invalidate
+1:	mrc	p15, 0, APSR_nzcv, c7, c14, 3		@ test, clean, invalidate
 	bne	1b
 #endif
 	tst	r2, #VM_EXEC
@@ -363,7 +363,7 @@ ENTRY(cpu_arm1026_switch_mm)
 #ifdef CONFIG_MMU
 	mov	r1, #0
 #ifndef CONFIG_CPU_DCACHE_DISABLE
-1:	mrc	p15, 0, r15, c7, c14, 3		@ test, clean, invalidate
+1:	mrc	p15, 0, APSR_nzcv, c7, c14, 3		@ test, clean, invalidate
 	bne	1b
 #endif
 #ifndef CONFIG_CPU_ICACHE_DISABLE
--- a/arch/arm/mm/proc-arm926.S
+++ b/arch/arm/mm/proc-arm926.S
@@ -131,7 +131,7 @@ __flush_whole_cache:
 #ifdef CONFIG_CPU_DCACHE_WRITETHROUGH
 	mcr	p15, 0, ip, c7, c6, 0		@ invalidate D cache
 #else
-1:	mrc	p15, 0, r15, c7, c14, 3 	@ test,clean,invalidate
+1:	mrc	p15, 0, APSR_nzcv, c7, c14, 3 	@ test,clean,invalidate
 	bne	1b
 #endif
 	tst	r2, #VM_EXEC
@@ -358,7 +358,7 @@ ENTRY(cpu_arm926_switch_mm)
 	mcr	p15, 0, ip, c7, c6, 0		@ invalidate D cache
 #else
 @ && 'Clean & Invalidate whole DCache'
-1:	mrc	p15, 0, r15, c7, c14, 3 	@ test,clean,invalidate
+1:	mrc	p15, 0, APSR_nzcv, c7, c14, 3 	@ test,clean,invalidate
 	bne	1b
 #endif
 	mcr	p15, 0, ip, c7, c5, 0		@ invalidate I cache


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
clang-built-linux/1656595770211170%40kroah.com.
