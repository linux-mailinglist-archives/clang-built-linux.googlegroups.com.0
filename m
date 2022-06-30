Return-Path: <clang-built-linux+bncBCUJ7YGL3QFBBVWK62KQMGQEMBUE3QY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23c.google.com (mail-lj1-x23c.google.com [IPv6:2a00:1450:4864:20::23c])
	by mail.lfdr.de (Postfix) with ESMTPS id B7CFB561B54
	for <lists+clang-built-linux@lfdr.de>; Thu, 30 Jun 2022 15:29:59 +0200 (CEST)
Received: by mail-lj1-x23c.google.com with SMTP id k6-20020a2e9206000000b0025a8ce1a22esf3159840ljg.9
        for <lists+clang-built-linux@lfdr.de>; Thu, 30 Jun 2022 06:29:59 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1656595799; cv=pass;
        d=google.com; s=arc-20160816;
        b=SKIXmo01yWYfgKWQlOre28EBUq4k+jPW1F7/jcrdgRmw1+21GqK7yrTF3Jxr8EkmdO
         T9sV8uHFfVMdCCEsiJgquj6YRYj2uorvnFae+fpM9JesfiGRDAo50xZuGA9WWABq9yST
         TlBB7rw+kYyA0b0PxKqWX5NquxaqdYgBm/0GKkgi3wKQSMycO4clzQivXk/VEcSf+EJz
         PO2Tu+82rixux3qqTkyQwV6jMMjaP/3dD7eI2W6piH3bXB62QV99/G/JfkNj72VegG41
         sIeGm2wu2mESe3MCU7IRQF10FoghrqKAVZ+arVsNH7CnVw/5O+3LA0OwTWxOAMK0Wo0q
         qMyw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :mime-version:message-id:in-reply-to:date:from:cc:to:subject:sender
         :dkim-signature;
        bh=puFuS1ggg16bpfyDLkp5Z+IzyEDu0Aqwdx9vdCIYCpM=;
        b=edBf0h+aQFjplw0X6fxBOqjc9DzDZqqL7qPPDaR9WG9qXDUAh4yxA95A9l1hT3IjEO
         38DdYzBTK4RCXM4ow8AFC3sdvmHAZef4iIp37uZkHvvhkPpbdi+WwuKfel9Q+tKTh6Y5
         C9USrlsLiusaNFC7MjaoFK7/3kUunTDnGGAXKYH+P+xRI0njZQZJNprhAd/rdtsT1CIR
         7If/Scc1BZW3bWdjH/m89LKHYY9WCxvV6ENn1+KZzk1jDwlT9abilPoId6oHQWZ4ualW
         adXUPQEKO+UZ8x3JJlQgF9n96WrbYlDbJjMOYIwEIgxdnzOjnnFVxm1UvJsgDFjE+ehK
         YMig==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=ABoGQeAz;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 145.40.68.75 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:subject:to:cc:from:date:in-reply-to:message-id:mime-version
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=puFuS1ggg16bpfyDLkp5Z+IzyEDu0Aqwdx9vdCIYCpM=;
        b=s1cUqwbYwg5VGx+WTTsGrbEnMB1FpEU4w0wP3Xf8aD8AKnj2tSsuxM1yspbHvsDaNc
         4FNSBJF+lNajPO8u5xgfbsyF1NWgOc1ME1HBqiSaulpUh9isCIX4r2QLjyZrnj/RstxH
         KvuR5SHAv+74lQtHD9hh+fl+ZsAxmQwaeLI3xkHz8uZp7YzyXVDQkqeqgpoY1SrMp0Sp
         Dx7BicYLjA7po0KLNzqD8h+WM/V618ukgATcIsej53J1J41MvPHjpf3RuDYWrHiNuyGX
         Y6XxT77atpbWliekHpKFHQLHGKUHbfKniq+SR3ewu/WugtX2LtugUA9cWyMBizHYlu/a
         AaiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:subject:to:cc:from:date:in-reply-to
         :message-id:mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=puFuS1ggg16bpfyDLkp5Z+IzyEDu0Aqwdx9vdCIYCpM=;
        b=KLQF3vZJmnuNCUY4/huh14CoAauksWU+B8frXLd8luBtg4fDEqj601Bf4bkdvwydPr
         hX5b7/aabPqDWzGtHhrWkFDICZPeVXRu819uhx3vD84wwPF//1uyCLq/VBlGzqC588d2
         6VyyaFj9SWs3fKEK/s8ypwyXpIXW9bPCVUYCprFzluzjn3FZPJGRtNRyUIJatlda8VBV
         53eERDi5onuzi32PqQy6yUSBxi3Yyc9nPhqNP7bbof/+wEakkEXG8QpAZ90NrlmNeAVd
         pHXB6CtdcWjwZ501GHeS5Y/3ET99PaC+EmErSje8TfTrfBvqPUQv7+s4jbM4mFly21iN
         ouXQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AJIora8cSm3TeCTatalN03QWr9QPLpwJWv1ldIfI7Ph6N/iPWl5OYlTA
	GeRl2js4Q3Pe5d8qU89IxDc=
X-Google-Smtp-Source: AGRyM1u3a88A5mcm5T/eCwOc5VRW5s5FAt+ly+r1ncEXJLyMaw3l6XJHfSCLU6rnM6Lj74nb6Gs70w==
X-Received: by 2002:a05:651c:890:b0:25a:4a66:cca7 with SMTP id d16-20020a05651c089000b0025a4a66cca7mr4976328ljq.59.1656595798976;
        Thu, 30 Jun 2022 06:29:58 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6512:3b0c:b0:47f:9907:2b50 with SMTP id
 f12-20020a0565123b0c00b0047f99072b50ls91713lfv.3.gmail; Thu, 30 Jun 2022
 06:29:56 -0700 (PDT)
X-Received: by 2002:a05:6512:1284:b0:47f:8d1d:c62a with SMTP id u4-20020a056512128400b0047f8d1dc62amr6034414lfs.310.1656595796284;
        Thu, 30 Jun 2022 06:29:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1656595796; cv=none;
        d=google.com; s=arc-20160816;
        b=etzRwXXXFA7QeiyfSHEpPUcY0vSNN8wmRAUWRM/2B1s8UvPWFVY0Fpfoe9z+5MBRWD
         do4R8S52989i+f5C6uWfFZ52ALhyYZjdjGMYTuTWIesVrvayZNjFDMHocKjpxaoHpPiX
         Tfb1s9ojSwvtp1eNKDxAhoOusdnGXk8rUoPajqbafLYUmvILw6Z/5fX9fzj6ZuD4W6mS
         ost8ud2RPSeQ8LibvdDcQmpejtH8Y9k2TkSwvPsVm+K35uJIFAoeDwGrZUFF47VxzfPp
         Z4UtntTTp4m7MI0g/cEXI7dXc5XRar3X8F/4bjX7iEwiGE6ml6Rchv4wYideeSze0Hrt
         Pyfw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:in-reply-to:date
         :from:cc:to:subject:dkim-signature;
        bh=eqdmYJk0QPzh6f3IBnqVDmiK3No3ePrqExXOS2PcDJM=;
        b=Ux8BmFgOAqSxAPUzGoCq1h49JCKynCSSGhGflHJA15AN29a0cx2PVpM1izQ4B/LrtZ
         hwL8/hW1vUzECs1C1odTGG6jwDz1XbKBzFR98IjQ3ATZy5tVQgENPpU2o7h+e4OF3+/O
         q7M3rvs0Xf3GmcDLJuNUpk+015g6HXH3xCUMLvPmXvCGvKSKUhDJRnITYuv+sd1klRO3
         m/vLlPKH+867IProbMrNM6+CZ9LJbjub9tPLkxqUldcPeUyGA6vt7ls7o07Z1sDniPTz
         1v1OQuewRtE49NrXmMLOuNPUMLkRLLHXBvmtPHipDX+5GP0zJNgi13lvYYEyNH8oNqg9
         rRTQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=ABoGQeAz;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 145.40.68.75 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from ams.source.kernel.org (ams.source.kernel.org. [145.40.68.75])
        by gmr-mx.google.com with ESMTPS id bp20-20020a056512159400b0047f8c989147si781458lfb.3.2022.06.30.06.29.56
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 30 Jun 2022 06:29:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 145.40.68.75 as permitted sender) client-ip=145.40.68.75;
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id CE52BB82ABF;
	Thu, 30 Jun 2022 13:29:55 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1ABB8C34115;
	Thu, 30 Jun 2022 13:29:53 +0000 (UTC)
Subject: Patch "ARM: 8989/1: use .fpu assembler directives instead of assembler arguments" has been added to the 5.4-stable tree
To: andre.przywara@arm.com,ardb@kernel.org,caij2003@gmail.com,catalin.marinas@arm.com,clang-built-linux@googlegroups.com,davem@davemloft.net,f.fainelli@gmail.com,gregkh@linuxfoundation.org,herbert@gondor.apana.org.au,linux-arm-kernel@lists.infradead.org,linux@armlinux.org.uk,ndesaulniers@google.com,nico@fluxnic.net,rmk+kernel@armlinux.org.uk,sashal@kernel.org,stefan@agner.ch,tony@atomide.com,ulli.kroll@googlemail.com
Cc: <stable-commits@vger.kernel.org>
From: <gregkh@linuxfoundation.org>
Date: Thu, 30 Jun 2022 15:29:30 +0200
In-Reply-To: <20220629180227.3408104-2-f.fainelli@gmail.com>
Message-ID: <165659577016271@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-stable: commit
X-Patchwork-Hint: ignore
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linuxfoundation.org header.s=korg header.b=ABoGQeAz;       spf=pass
 (google.com: domain of gregkh@linuxfoundation.org designates 145.40.68.75 as
 permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
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

    ARM: 8989/1: use .fpu assembler directives instead of assembler argumen=
ts

to the 5.4-stable tree which can be found at:
    http://www.kernel.org/git/?p=3Dlinux/kernel/git/stable/stable-queue.git=
;a=3Dsummary

The filename of the patch is:
     arm-8989-1-use-.fpu-assembler-directives-instead-of-assembler-argument=
s.patch
and it can be found in the queue-5.4 subdirectory.

If you, or anyone else, feels it should not be added to the stable tree,
please let <stable@vger.kernel.org> know about it.


From foo@baz Thu Jun 30 03:27:07 PM CEST 2022
From: Florian Fainelli <f.fainelli@gmail.com>
Date: Wed, 29 Jun 2022 11:02:17 -0700
Subject: ARM: 8989/1: use .fpu assembler directives instead of assembler ar=
guments
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
Message-ID: <20220629180227.3408104-2-f.fainelli@gmail.com>

From: Stefan Agner <stefan@agner.ch>

commit a6c30873ee4a5cc0549c1973668156381ab2c1c4 upstream

Explicit FPU selection has been introduced in commit 1a6be26d5b1a
("[ARM] Enable VFP to be built when non-VFP capable CPUs are selected")
to make use of assembler mnemonics for VFP instructions.

However, clang currently does not support passing assembler flags
like this and errors out with:
clang-10: error: the clang compiler does not support '-Wa,-mfpu=3Dsoftvfp+v=
fp'

Make use of the .fpu assembler directives to select the floating point
hardware selectively. Also use the new unified assembler language
mnemonics. This allows to build these procedures with Clang.

Link: https://github.com/ClangBuiltLinux/linux/issues/762

Signed-off-by: Stefan Agner <stefan@agner.ch>
Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
---
 arch/arm/vfp/Makefile |    2 --
 arch/arm/vfp/vfphw.S  |   30 ++++++++++++++++++++----------
 2 files changed, 20 insertions(+), 12 deletions(-)

--- a/arch/arm/vfp/Makefile
+++ b/arch/arm/vfp/Makefile
@@ -8,6 +8,4 @@
 # ccflags-y :=3D -DDEBUG
 # asflags-y :=3D -DDEBUG
=20
-KBUILD_AFLAGS	:=3D$(KBUILD_AFLAGS:-msoft-float=3D-Wa,-mfpu=3Dsoftvfp+vfp -=
mfloat-abi=3Dsoft)
-
 obj-y		+=3D vfpmodule.o entry.o vfphw.o vfpsingle.o vfpdouble.o
--- a/arch/arm/vfp/vfphw.S
+++ b/arch/arm/vfp/vfphw.S
@@ -253,11 +253,14 @@ vfp_current_hw_state_address:
=20
 ENTRY(vfp_get_float)
 	tbl_branch r0, r3, #3
+	.fpu	vfpv2
 	.irp	dr,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15
-1:	mrc	p10, 0, r0, c\dr, c0, 0	@ fmrs	r0, s0
+1:	vmov	r0, s\dr
 	ret	lr
 	.org	1b + 8
-1:	mrc	p10, 0, r0, c\dr, c0, 4	@ fmrs	r0, s1
+	.endr
+	.irp	dr,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
+1:	vmov	r0, s\dr
 	ret	lr
 	.org	1b + 8
 	.endr
@@ -265,11 +268,14 @@ ENDPROC(vfp_get_float)
=20
 ENTRY(vfp_put_float)
 	tbl_branch r1, r3, #3
+	.fpu	vfpv2
 	.irp	dr,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15
-1:	mcr	p10, 0, r0, c\dr, c0, 0	@ fmsr	r0, s0
+1:	vmov	s\dr, r0
 	ret	lr
 	.org	1b + 8
-1:	mcr	p10, 0, r0, c\dr, c0, 4	@ fmsr	r0, s1
+	.endr
+	.irp	dr,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
+1:	vmov	s\dr, r0
 	ret	lr
 	.org	1b + 8
 	.endr
@@ -277,15 +283,17 @@ ENDPROC(vfp_put_float)
=20
 ENTRY(vfp_get_double)
 	tbl_branch r0, r3, #3
+	.fpu	vfpv2
 	.irp	dr,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15
-1:	fmrrd	r0, r1, d\dr
+1:	vmov	r0, r1, d\dr
 	ret	lr
 	.org	1b + 8
 	.endr
 #ifdef CONFIG_VFPv3
 	@ d16 - d31 registers
-	.irp	dr,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15
-1:	mrrc	p11, 3, r0, r1, c\dr	@ fmrrd	r0, r1, d\dr
+	.fpu	vfpv3
+	.irp	dr,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
+1:	vmov	r0, r1, d\dr
 	ret	lr
 	.org	1b + 8
 	.endr
@@ -299,15 +307,17 @@ ENDPROC(vfp_get_double)
=20
 ENTRY(vfp_put_double)
 	tbl_branch r2, r3, #3
+	.fpu	vfpv2
 	.irp	dr,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15
-1:	fmdrr	d\dr, r0, r1
+1:	vmov	d\dr, r0, r1
 	ret	lr
 	.org	1b + 8
 	.endr
 #ifdef CONFIG_VFPv3
+	.fpu	vfpv3
 	@ d16 - d31 registers
-	.irp	dr,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15
-1:	mcrr	p11, 3, r0, r1, c\dr	@ fmdrr	r0, r1, d\dr
+	.irp	dr,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
+1:	vmov	d\dr, r0, r1
 	ret	lr
 	.org	1b + 8
 	.endr


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
clang-built-linux/165659577016271%40kroah.com.
