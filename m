Return-Path: <clang-built-linux+bncBCUJ7YGL3QFBBWGK62KQMGQEZJ2RSDI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x139.google.com (mail-lf1-x139.google.com [IPv6:2a00:1450:4864:20::139])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D1AD561B55
	for <lists+clang-built-linux@lfdr.de>; Thu, 30 Jun 2022 15:30:01 +0200 (CEST)
Received: by mail-lf1-x139.google.com with SMTP id bp15-20020a056512158f00b0047f603e5f92sf9120943lfb.20
        for <lists+clang-built-linux@lfdr.de>; Thu, 30 Jun 2022 06:30:01 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1656595800; cv=pass;
        d=google.com; s=arc-20160816;
        b=MkcGxMQ96dtFpPC6V2Zpqyb2Vnb/VcY8EzrHuOjdU8TV/S9xjhu+bgMVxa/Hvf7cnl
         lwZR7yByLajqo42FF4dmPnPiaxbp1PsZCFX94viNk7llKpbS9HfXF62goYKdyik7WXKu
         v9gPvUTWiT9jqaFdPzyamFy22FuK9N08D85/kjXMGjOWbfCrXsF0adW/qFMD81H59V5O
         ZCy+LB+VZ1k41sjP2TrkpMPVWirFcFjEIror13rzB35rNZexmpO/OdTzZOTb323QdG0+
         9MfPIv8ClQAHcOX+tlMqjBA51K/CI3j/OUMrMSRGJpM8guDzKiIgixwujpobKBTEtnjV
         xFcA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :mime-version:message-id:in-reply-to:date:from:cc:to:subject:sender
         :dkim-signature;
        bh=F52EW3++npPm9uMOTQ3EvZsrFRsXWCnLzrbCanoYRT8=;
        b=0N/oz41o8Rk6W97/tlpbVaZ6pTrmYxLHr60h/QSbUpxJHVf9fRNuVHcWdp4IwJkyRf
         updfyecW3A/aTgqwFBdbadiUPOoHmTKmcLOfH1/CAcTkUyWkh2ZDhqagaYLSC1zlsjdn
         B40sbvod/npJwyPIqaLu3bO6u7pQRkdUmF4upQqn2g4JTHfPC5k7uGFNc4PyY/kcLKyZ
         H4FG8SOx5k8qwyPBdLWLk3hOtZEFuHXQZ/4tlVY8FNVgDk9smTP4JexlG1jfs/zbXUzH
         M9NEN5InowiFz9unkCJ7/ww3xdtoSmUx6iRsHSGT8Wf4ChyGp9dPaz09xOFzLgRUzg04
         ZWwQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=UDlOfgZN;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 2604:1380:4601:e00::1 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:subject:to:cc:from:date:in-reply-to:message-id:mime-version
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=F52EW3++npPm9uMOTQ3EvZsrFRsXWCnLzrbCanoYRT8=;
        b=YUXSsnZbUSWGntS+gQ2Wx8YZfvptCTNDxmRoq9e2oK8Uk2U/23+2zWkDRrPMonLOXz
         oQyfUOqcG31URw+exKEYIoM07UTy164OhCkAvHLnWE8k+NU4m3gYdu6JOsXyHVz3rMIP
         8Yn163MqTRNTBYgngEc0za3x+y+dWZvfess9qJbOleGY7M6Qa2mD//fC71CZkkIrY8Hb
         OVJzp4EGJ0MSjSapmIv48J1bBy2scyi0K225HGTAFjwsYKtc6iOIDA4zGCoB/s2g5gNM
         iFnFEWq5usFLw6NoLYvoeUdcx/W4TSkR3jwuPglIlweb3twYXJKjnFjIMIpp27lFbSyE
         r2fQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:subject:to:cc:from:date:in-reply-to
         :message-id:mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=F52EW3++npPm9uMOTQ3EvZsrFRsXWCnLzrbCanoYRT8=;
        b=LXqrW75nEj4NqoyHdpyogxvCdoARN+MUkFiqNFdGUIAhGVe+I1gXjrdYem0BABox2x
         0OWVsuMOLYAdM0wVfk+mCNFdDx0ngM2wzRpMwB8+UmNEBwcG47zjJjbAtOnyC4iPbska
         R3Dm5/ZiSiJnUNJ81cNtAYF1A4a5UhnH023fHe6+INPN3e/YEphsLUeRriZDhg/dUkMd
         3Bo3mwKuuwudzqHUFkcNvSbjLGE6r4WucvmUXisZu6qbCkqAEWwOytiJfqHqgBa28E3P
         dEwkSaos0N0Z/fS9VXbuRkW42EbiQCulFg/0sRdOlpA0h7RpcjRN5fsqM0BAxZI2Zgi2
         xbPA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AJIora+kV/3+/XaqPQYbH/l998qZihW7E8pe2Q5xmeuogtXve9UK1zqb
	M8qw/ZPM0abgXO1GVBkgsa4=
X-Google-Smtp-Source: AGRyM1uVY7QOhM/fScFRzh9cX/UwnSvF7wVfwu9m4XpVaWIKh/zkOm51oQCegFqB7doSVCMLaQxixA==
X-Received: by 2002:a05:6512:314c:b0:481:484b:74ee with SMTP id s12-20020a056512314c00b00481484b74eemr2848873lfi.544.1656595800520;
        Thu, 30 Jun 2022 06:30:00 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6512:238e:b0:481:2fa:2826 with SMTP id
 c14-20020a056512238e00b0048102fa2826ls95596lfv.0.gmail; Thu, 30 Jun 2022
 06:29:59 -0700 (PDT)
X-Received: by 2002:a05:6512:234b:b0:47f:62aa:5771 with SMTP id p11-20020a056512234b00b0047f62aa5771mr5525384lfu.405.1656595799354;
        Thu, 30 Jun 2022 06:29:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1656595799; cv=none;
        d=google.com; s=arc-20160816;
        b=OvPPWUhI2ukTLkjPm3ZuLBtEVu3jGdpskC3T7rpHXIKUZ75/Dt+I79JRvCF6nTfXLX
         t/KsrMNfOmBil3sdlbqJR49aA+E2KXOep2p0YsMeZ2b/qGG3ngZsEfbUgJhg0MThP/f/
         TRFNN7D4kl4oIyAQ5kS38HCOilavs5V7WEkH1wEvb2UEfWdVDjaPfpI5CCbHFqJVfrx1
         HLe61UQW4XQ//eVHx2PcROjALjnycss7K9vP7czp4pVM+nm+4LcZySn5jmE0EKixekbd
         5kuxcYIfI+gQgG0e3jyNEV94nzXw+skaAWkgwfzjXXRtF3PSM5GPUdLpF+qcVKDVrN4E
         ZDzQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:in-reply-to:date
         :from:cc:to:subject:dkim-signature;
        bh=2d9DjNDXBOiXCH5sJu3lx74Sm4VTa4ixgLYno6Z3c/U=;
        b=OMicf6w+9pUbFhxS1eXBYM2FVfcqPFKgSzSXx3SkojJQoIZtg4SNOM/4dzOpdx+8mx
         0SgtVzDLf4CWsG81f6cSCTfvhmHjgfgNtqzGHs0CR901LONskZzLqy8PSRQzu5lJPpdC
         8DYU/5WOMUAvfdy0HKPEofyN/6v8YrYsOtgRoWBO/SPQ3/A7JQTXCzOGBvA6uOaxSo8N
         gZ3JHmAXKnpkGSyUqCGCm88YmoPmcTzLZsqc5P8uO/4DiXaxV5U77BcRAWRXQZjD2GWL
         0swCIwvO6baxG38uWawnih3+AoebCOSlJowfaY2MxmuaagNSp72rLWEVbDlGLRLuXsl1
         DH+Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=UDlOfgZN;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 2604:1380:4601:e00::1 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from ams.source.kernel.org (ams.source.kernel.org. [2604:1380:4601:e00::1])
        by gmr-mx.google.com with ESMTPS id t28-20020a05651c205c00b00258ed232ee9si724642ljo.8.2022.06.30.06.29.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 30 Jun 2022 06:29:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 2604:1380:4601:e00::1 as permitted sender) client-ip=2604:1380:4601:e00::1;
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id D3EE2B82AC7;
	Thu, 30 Jun 2022 13:29:58 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 180ECC34115;
	Thu, 30 Jun 2022 13:29:56 +0000 (UTC)
Subject: Patch "ARM: 9029/1: Make iwmmxt.S support Clang's integrated assembler" has been added to the 5.4-stable tree
To: andre.przywara@arm.com,ardb@kernel.org,caij2003@gmail.com,catalin.marinas@arm.com,clang-built-linux@googlegroups.com,davem@davemloft.net,f.fainelli@gmail.com,gregkh@linuxfoundation.org,herbert@gondor.apana.org.au,jiancai@google.com,linux-arm-kernel@lists.infradead.org,linux@armlinux.org.uk,ndesaulniers@google.com,nico@fluxnic.net,rmk+kernel@armlinux.org.uk,sashal@kernel.org,stefan@agner.ch,tony@atomide.com,ulli.kroll@googlemail.com
Cc: <stable-commits@vger.kernel.org>
From: <gregkh@linuxfoundation.org>
Date: Thu, 30 Jun 2022 15:29:31 +0200
In-Reply-To: <20220629180227.3408104-10-f.fainelli@gmail.com>
Message-ID: <165659577184206@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-stable: commit
X-Patchwork-Hint: ignore
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linuxfoundation.org header.s=korg header.b=UDlOfgZN;       spf=pass
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

    ARM: 9029/1: Make iwmmxt.S support Clang's integrated assembler

to the 5.4-stable tree which can be found at:
    http://www.kernel.org/git/?p=3Dlinux/kernel/git/stable/stable-queue.git=
;a=3Dsummary

The filename of the patch is:
     arm-9029-1-make-iwmmxt.s-support-clang-s-integrated-assembler.patch
and it can be found in the queue-5.4 subdirectory.

If you, or anyone else, feels it should not be added to the stable tree,
please let <stable@vger.kernel.org> know about it.


From foo@baz Thu Jun 30 03:27:07 PM CEST 2022
From: Florian Fainelli <f.fainelli@gmail.com>
Date: Wed, 29 Jun 2022 11:02:25 -0700
Subject: ARM: 9029/1: Make iwmmxt.S support Clang's integrated assembler
To: stable@vger.kernel.org
Cc: Jian Cai <jiancai@google.com>, Nick Desaulniers <ndesaulniers@google.co=
m>, Ard Biesheuvel <ardb@kernel.org>, Russell King <rmk+kernel@armlinux.org=
.uk>, Florian Fainelli <f.fainelli@gmail.com>, Russell King <linux@armlinux=
.org.uk>, Herbert Xu <herbert@gondor.apana.org.au>, "David S. Miller" <dave=
m@davemloft.net>, Tony Lindgren <tony@atomide.com>, Hans Ulli Kroll <ulli.k=
roll@googlemail.com>, Stefan Agner <stefan@agner.ch>, Nicolas Pitre <nico@f=
luxnic.net>, Andre Przywara <andre.przywara@arm.com>, Greg Kroah-Hartman <g=
regkh@linuxfoundation.org>, Catalin Marinas <catalin.marinas@arm.com>, Jian=
 Cai <caij2003@gmail.com>, linux-arm-kernel@lists.infradead.org (moderated =
list:ARM PORT), linux-kernel@vger.kernel.org (open list), linux-crypto@vger=
.kernel.org (open list:CRYPTO API), linux-omap@vger.kernel.org (open list:O=
MAP2+ SUPPORT), clang-built-linux@googlegroups.com (open list:CLANG/LLVM BU=
ILD SUPPORT), Sasha Levin <sashal@kernel.org>
Message-ID: <20220629180227.3408104-10-f.fainelli@gmail.com>

From: Jian Cai <jiancai@google.com>

commit 3c9f5708b7aed6a963e2aefccbd1854802de163e upstream

This patch replaces 6 IWMMXT instructions Clang's integrated assembler
does not support in iwmmxt.S using macros, while making sure GNU
assembler still emit the same instructions. This should be easier than
providing full IWMMXT support in Clang.  This is one of the last bits of
kernel code that could be compiled but not assembled with clang. Once
all of it works with IAS, we no longer need to special-case 32-bit Arm
in Kbuild, or turn off CONFIG_IWMMXT when build-testing.

"Intel Wireless MMX Technology - Developer Guide - August, 2002" should
be referenced for the encoding schemes of these extensions.

Link: https://github.com/ClangBuiltLinux/linux/issues/975

Suggested-by: Nick Desaulniers <ndesaulniers@google.com>
Suggested-by: Ard Biesheuvel <ardb@kernel.org>
Acked-by: Ard Biesheuvel <ardb@kernel.org>
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
Tested-by: Nick Desaulniers <ndesaulniers@google.com>
Signed-off-by: Jian Cai <jiancai@google.com>
Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
---
 arch/arm/kernel/iwmmxt.S |   89 +++++++++++++++++++++++-------------------=
-----
 arch/arm/kernel/iwmmxt.h |   47 ++++++++++++++++++++++++
 2 files changed, 92 insertions(+), 44 deletions(-)
 create mode 100644 arch/arm/kernel/iwmmxt.h

--- a/arch/arm/kernel/iwmmxt.S
+++ b/arch/arm/kernel/iwmmxt.S
@@ -16,6 +16,7 @@
 #include <asm/thread_info.h>
 #include <asm/asm-offsets.h>
 #include <asm/assembler.h>
+#include "iwmmxt.h"
=20
 #if defined(CONFIG_CPU_PJ4) || defined(CONFIG_CPU_PJ4B)
 #define PJ4(code...)		code
@@ -113,33 +114,33 @@ concan_save:
=20
 concan_dump:
=20
-	wstrw	wCSSF, [r1, #MMX_WCSSF]
-	wstrw	wCASF, [r1, #MMX_WCASF]
-	wstrw	wCGR0, [r1, #MMX_WCGR0]
-	wstrw	wCGR1, [r1, #MMX_WCGR1]
-	wstrw	wCGR2, [r1, #MMX_WCGR2]
-	wstrw	wCGR3, [r1, #MMX_WCGR3]
+	wstrw	wCSSF, r1, MMX_WCSSF
+	wstrw	wCASF, r1, MMX_WCASF
+	wstrw	wCGR0, r1, MMX_WCGR0
+	wstrw	wCGR1, r1, MMX_WCGR1
+	wstrw	wCGR2, r1, MMX_WCGR2
+	wstrw	wCGR3, r1, MMX_WCGR3
=20
 1:	@ MUP? wRn
 	tst	r2, #0x2
 	beq	2f
=20
-	wstrd	wR0,  [r1, #MMX_WR0]
-	wstrd	wR1,  [r1, #MMX_WR1]
-	wstrd	wR2,  [r1, #MMX_WR2]
-	wstrd	wR3,  [r1, #MMX_WR3]
-	wstrd	wR4,  [r1, #MMX_WR4]
-	wstrd	wR5,  [r1, #MMX_WR5]
-	wstrd	wR6,  [r1, #MMX_WR6]
-	wstrd	wR7,  [r1, #MMX_WR7]
-	wstrd	wR8,  [r1, #MMX_WR8]
-	wstrd	wR9,  [r1, #MMX_WR9]
-	wstrd	wR10, [r1, #MMX_WR10]
-	wstrd	wR11, [r1, #MMX_WR11]
-	wstrd	wR12, [r1, #MMX_WR12]
-	wstrd	wR13, [r1, #MMX_WR13]
-	wstrd	wR14, [r1, #MMX_WR14]
-	wstrd	wR15, [r1, #MMX_WR15]
+	wstrd	wR0,  r1, MMX_WR0
+	wstrd	wR1,  r1, MMX_WR1
+	wstrd	wR2,  r1, MMX_WR2
+	wstrd	wR3,  r1, MMX_WR3
+	wstrd	wR4,  r1, MMX_WR4
+	wstrd	wR5,  r1, MMX_WR5
+	wstrd	wR6,  r1, MMX_WR6
+	wstrd	wR7,  r1, MMX_WR7
+	wstrd	wR8,  r1, MMX_WR8
+	wstrd	wR9,  r1, MMX_WR9
+	wstrd	wR10, r1, MMX_WR10
+	wstrd	wR11, r1, MMX_WR11
+	wstrd	wR12, r1, MMX_WR12
+	wstrd	wR13, r1, MMX_WR13
+	wstrd	wR14, r1, MMX_WR14
+	wstrd	wR15, r1, MMX_WR15
=20
 2:	teq	r0, #0				@ anything to load?
 	reteq	lr				@ if not, return
@@ -147,30 +148,30 @@ concan_dump:
 concan_load:
=20
 	@ Load wRn
-	wldrd	wR0,  [r0, #MMX_WR0]
-	wldrd	wR1,  [r0, #MMX_WR1]
-	wldrd	wR2,  [r0, #MMX_WR2]
-	wldrd	wR3,  [r0, #MMX_WR3]
-	wldrd	wR4,  [r0, #MMX_WR4]
-	wldrd	wR5,  [r0, #MMX_WR5]
-	wldrd	wR6,  [r0, #MMX_WR6]
-	wldrd	wR7,  [r0, #MMX_WR7]
-	wldrd	wR8,  [r0, #MMX_WR8]
-	wldrd	wR9,  [r0, #MMX_WR9]
-	wldrd	wR10, [r0, #MMX_WR10]
-	wldrd	wR11, [r0, #MMX_WR11]
-	wldrd	wR12, [r0, #MMX_WR12]
-	wldrd	wR13, [r0, #MMX_WR13]
-	wldrd	wR14, [r0, #MMX_WR14]
-	wldrd	wR15, [r0, #MMX_WR15]
+	wldrd	wR0,  r0, MMX_WR0
+	wldrd	wR1,  r0, MMX_WR1
+	wldrd	wR2,  r0, MMX_WR2
+	wldrd	wR3,  r0, MMX_WR3
+	wldrd	wR4,  r0, MMX_WR4
+	wldrd	wR5,  r0, MMX_WR5
+	wldrd	wR6,  r0, MMX_WR6
+	wldrd	wR7,  r0, MMX_WR7
+	wldrd	wR8,  r0, MMX_WR8
+	wldrd	wR9,  r0, MMX_WR9
+	wldrd	wR10, r0, MMX_WR10
+	wldrd	wR11, r0, MMX_WR11
+	wldrd	wR12, r0, MMX_WR12
+	wldrd	wR13, r0, MMX_WR13
+	wldrd	wR14, r0, MMX_WR14
+	wldrd	wR15, r0, MMX_WR15
=20
 	@ Load wCx
-	wldrw	wCSSF, [r0, #MMX_WCSSF]
-	wldrw	wCASF, [r0, #MMX_WCASF]
-	wldrw	wCGR0, [r0, #MMX_WCGR0]
-	wldrw	wCGR1, [r0, #MMX_WCGR1]
-	wldrw	wCGR2, [r0, #MMX_WCGR2]
-	wldrw	wCGR3, [r0, #MMX_WCGR3]
+	wldrw	wCSSF, r0, MMX_WCSSF
+	wldrw	wCASF, r0, MMX_WCASF
+	wldrw	wCGR0, r0, MMX_WCGR0
+	wldrw	wCGR1, r0, MMX_WCGR1
+	wldrw	wCGR2, r0, MMX_WCGR2
+	wldrw	wCGR3, r0, MMX_WCGR3
=20
 	@ clear CUP/MUP (only if r1 !=3D 0)
 	teq	r1, #0
--- /dev/null
+++ b/arch/arm/kernel/iwmmxt.h
@@ -0,0 +1,47 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+
+#ifndef __IWMMXT_H__
+#define __IWMMXT_H__
+
+.irp b, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15
+.set .LwR\b, \b
+.set .Lr\b, \b
+.endr
+
+.set .LwCSSF, 0x2
+.set .LwCASF, 0x3
+.set .LwCGR0, 0x8
+.set .LwCGR1, 0x9
+.set .LwCGR2, 0xa
+.set .LwCGR3, 0xb
+
+.macro wldrd, reg:req, base:req, offset:req
+.inst 0xedd00100 | (.L\reg << 12) | (.L\base << 16) | (\offset >> 2)
+.endm
+
+.macro wldrw, reg:req, base:req, offset:req
+.inst 0xfd900100 | (.L\reg << 12) | (.L\base << 16) | (\offset >> 2)
+.endm
+
+.macro wstrd, reg:req, base:req, offset:req
+.inst 0xedc00100 | (.L\reg << 12) | (.L\base << 16) | (\offset >> 2)
+.endm
+
+.macro wstrw, reg:req, base:req, offset:req
+.inst 0xfd800100 | (.L\reg << 12) | (.L\base << 16) | (\offset >> 2)
+.endm
+
+#ifdef __clang__
+
+#define wCon c1
+
+.macro tmrc, dest:req, control:req
+mrc p1, 0, \dest, \control, c0, 0
+.endm
+
+.macro tmcr, control:req, src:req
+mcr p1, 0, \src, \control, c0, 0
+.endm
+#endif
+
+#endif


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
clang-built-linux/165659577184206%40kroah.com.
