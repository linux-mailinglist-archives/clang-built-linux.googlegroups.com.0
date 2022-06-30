Return-Path: <clang-built-linux+bncBCUJ7YGL3QFBBXOK62KQMGQEGHJ2ZMQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3f.google.com (mail-qv1-xf3f.google.com [IPv6:2607:f8b0:4864:20::f3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 92CEF561B58
	for <lists+clang-built-linux@lfdr.de>; Thu, 30 Jun 2022 15:30:06 +0200 (CEST)
Received: by mail-qv1-xf3f.google.com with SMTP id x18-20020a0ce252000000b004703cbb92ebsf18609164qvl.21
        for <lists+clang-built-linux@lfdr.de>; Thu, 30 Jun 2022 06:30:06 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1656595805; cv=pass;
        d=google.com; s=arc-20160816;
        b=yNZGl3jPVpepWhVL5VCBxwk/T9GC7OAOCu2qYMmMP6vpLsolgfxXtHrF0qxAb+jEtm
         UHf+giRe3LGpFm7OxqhlHmmWCwMYWZON/syfwbUvhFoMfaPf4zE87RJ9V7Sqxmsk8wcF
         q5zK+7Tc/KbTPXqyKBHVfoZ4+mCtyXHZ9zErjp5G4biQ7FYByheLuYbPKNe6yy63RllR
         hpJeernt0ctTpSfGnkxXbac2pRIVhXyxa5SUCYlFWF0mmoeRyp5irvghNmgTVZJq9Cl5
         YzRsN2IrLvb5TqH2vgJfL2EPWvI3P6kiO4mIFs+3fxjC2nCFQQXLoDPlPX9rnMF3efpG
         c5mg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :mime-version:message-id:in-reply-to:date:from:cc:to:subject:sender
         :dkim-signature;
        bh=Xe0vP6yQBN6u5DslOiDXuah9AKTDMMvDMtcRrLsffho=;
        b=N/nXZfolhpSFhhx+FW9wnQnmdAX44oA33BRgvWAK51vMZxsL5P4Kc8ytrZ8aUCETe4
         8r59UqlkJp7pAUg47exgQJ90qcehnl8NLpI5FD17xJgH6ktguWo6fBajHbUJGl2TNEkS
         GxG0AhZaXbFenBJWygSJ3x6HMpva/Yc/4yqX9zBH38QGKnUIrM8dNonSlEaoh7dI1+Gm
         F3vYBYtmKEfypgZin0T/V5zEgm5icCaSOvdJu3Aqiz0Fe2iNXBmpvk348DXPuJkya5FN
         Bp7BVlI1T6tsOZxg15X0yMJjwgUvrbmIJnSNj9lkVuBCzI6OpSZv7eun6nTkYetgG/vR
         eChQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=UPOGHI3q;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 145.40.73.55 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:subject:to:cc:from:date:in-reply-to:message-id:mime-version
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Xe0vP6yQBN6u5DslOiDXuah9AKTDMMvDMtcRrLsffho=;
        b=CEm7/E33oBLOZdABTAc3IwwWADXLEbsINejghtwPymqQSblF+9ljfQ6B49hp78YSID
         J7KLpMmyUspFKqJdusSsGQKDKK2/ILFL/He3u94sJF8hsWk17M/WxI1t5kOtAOG/lNy/
         44aDWImxwoiyeANN8rIJEsGMFj1/uAU8H1UKEnIyH/Yk8OAJcRainyg58XiLflJcRN6F
         3Sx6pB/wssPxvAmPLU2KhdrOME2xtYWGtXXwJMRll3+1g6afWaqJlukJMKBjBVRvP3Oc
         aVxmutJMh59vAYT4llq4sAdFm59X9I4ORCOX/b9v7u8iPtRTXkol65/dg/ztI7h2hx5j
         bAkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:subject:to:cc:from:date:in-reply-to
         :message-id:mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Xe0vP6yQBN6u5DslOiDXuah9AKTDMMvDMtcRrLsffho=;
        b=m/O6SB87qUsKNoshLtomx78qouXBHDLy6u2yHmsMblYAA3IseNHahttfyb2+kGjAp7
         +HULFx8C2grxOt4S3OHQuDPWVvdXl3xhHA9/AZleh4rmWjSi6b3rivk0UWMFrE0BTwOZ
         whTmwruTxG7T+yUxSqHNm9pqRROFePCxUg7iBhSk/lQrG8Ez23kXiBZNar4wrikqftOX
         RkehIhZuWeftgUt9HAiiCd7c8KP2nz+Drcu+2BbreAMhy4iDkP6l2WtoV+EM9TtyFk92
         FeDCluqIln6mLuxMdOJVQVnjbIQWTIlXs7mGc+NzeCOcGjIhIPyE/OZj2ccRm///AzEJ
         PPKQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AJIora/s2RsLPhvj257o90BtwCqrtxnWQRfvAZOv93ZagvIC1XgyXyy7
	vPTSvAkFwiBZmVswOago59w=
X-Google-Smtp-Source: AGRyM1upY+Ut6k3LGEH/nCU+KVvIbCoDVF3zVCtH4r9uzD/osLZXhPfDVyMi8sE3LLd32+N3qaEzCw==
X-Received: by 2002:a05:620a:2b96:b0:6af:25ab:54b2 with SMTP id dz22-20020a05620a2b9600b006af25ab54b2mr6262423qkb.99.1656595805597;
        Thu, 30 Jun 2022 06:30:05 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:7e89:0:b0:31c:46c7:4216 with SMTP id w9-20020ac87e89000000b0031c46c74216ls3487069qtj.2.gmail;
 Thu, 30 Jun 2022 06:30:04 -0700 (PDT)
X-Received: by 2002:ac8:5c08:0:b0:317:e856:bcff with SMTP id i8-20020ac85c08000000b00317e856bcffmr7373300qti.615.1656595804912;
        Thu, 30 Jun 2022 06:30:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1656595804; cv=none;
        d=google.com; s=arc-20160816;
        b=guNOyv77VcV9y+550x/dev7IWoaB2e9sXTTaeMs1ufywuzYBGObrZ9MlloD1YVyUxN
         NJlRyU8tsefk1BTYcQy6DD132PHwwKLegpPL2NipXkJM8Zk5RuloKfKBwGcPdMwSagRG
         4OCJkZm0biSOvBMrrxpVFPD95W9PP5L3Q5EftlUddy1B5t0Deky92NgUrJ95bTkLC1FP
         LtsHxy1Yx0eFqFxo66c2fSDu7b9NOQrTLDajvpHJM6TyNrtlS5KQ+u8ifmqXbtNUAutz
         oA8ybjPRkYWFLTc2JjDm0BtlTEsLwSvQgJSClrbLROhDS5TY4eadjrp+f9EEnySX8QKR
         4jSw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:in-reply-to:date
         :from:cc:to:subject:dkim-signature;
        bh=XXFTJqq3LQ4d/Zl9z+AVcjLn5Q2mYnzvxlwQKToGc0c=;
        b=C9yhSjDLuNH3CjaU/LxZ0sLQHOYEUFYXdc9aVqCX8ImfGO2ujLDamSZil76+oDUI/T
         Yrl1+cy0BnVM4mXVmqkBLVTA1hGnUg++wKYhSWmKRA5kOSinXtQtLa5bhk51PWSvfEe3
         yNGAKUMTaWfgOYwbNxP7xygZ5woIg04T4PT85V44GUqGqKud4yXBL6VNVfz6rV7O/wgi
         MoCcugLLBARxmtwY87vDZUy7MMj0t5Fm07fTKwCeFEqVwfq98F1ShuVSFHyUaecPrHtG
         PH0GumRlMBbLmTUtF/NVJVo9rKfQ0IjFsrTuiGxvqxz15ncdBxEamtTZpXltts4a5Us1
         7Zaw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=UPOGHI3q;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 145.40.73.55 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from sin.source.kernel.org (sin.source.kernel.org. [145.40.73.55])
        by gmr-mx.google.com with ESMTPS id g3-20020ac87743000000b003169837f8bcsi269150qtu.1.2022.06.30.06.30.04
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 30 Jun 2022 06:30:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 145.40.73.55 as permitted sender) client-ip=145.40.73.55;
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sin.source.kernel.org (Postfix) with ESMTPS id EE850CE2E89;
	Thu, 30 Jun 2022 13:30:01 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C524BC34115;
	Thu, 30 Jun 2022 13:29:59 +0000 (UTC)
Subject: Patch "ARM: OMAP2+: drop unnecessary adrl" has been added to the 5.4-stable tree
To: andre.przywara@arm.com,ardb@kernel.org,caij2003@gmail.com,catalin.marinas@arm.com,clang-built-linux@googlegroups.com,davem@davemloft.net,f.fainelli@gmail.com,gregkh@linuxfoundation.org,herbert@gondor.apana.org.au,linux-arm-kernel@lists.infradead.org,linux@armlinux.org.uk,ndesaulniers@google.com,nico@fluxnic.net,rmk+kernel@armlinux.org.uk,sashal@kernel.org,stefan@agner.ch,tony@atomide.com,ulli.kroll@googlemail.com
Cc: <stable-commits@vger.kernel.org>
From: <gregkh@linuxfoundation.org>
Date: Thu, 30 Jun 2022 15:29:31 +0200
In-Reply-To: <20220629180227.3408104-9-f.fainelli@gmail.com>
Message-ID: <165659577115113@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-stable: commit
X-Patchwork-Hint: ignore
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linuxfoundation.org header.s=korg header.b=UPOGHI3q;       spf=pass
 (google.com: domain of gregkh@linuxfoundation.org designates 145.40.73.55 as
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

    ARM: OMAP2+: drop unnecessary adrl

to the 5.4-stable tree which can be found at:
    http://www.kernel.org/git/?p=3Dlinux/kernel/git/stable/stable-queue.git=
;a=3Dsummary

The filename of the patch is:
     arm-omap2-drop-unnecessary-adrl.patch
and it can be found in the queue-5.4 subdirectory.

If you, or anyone else, feels it should not be added to the stable tree,
please let <stable@vger.kernel.org> know about it.


From foo@baz Thu Jun 30 03:27:07 PM CEST 2022
From: Florian Fainelli <f.fainelli@gmail.com>
Date: Wed, 29 Jun 2022 11:02:24 -0700
Subject: ARM: OMAP2+: drop unnecessary adrl
To: stable@vger.kernel.org
Cc: Stefan Agner <stefan@agner.ch>, Tony Lindgren <tony@atomide.com>, Flori=
an Fainelli <f.fainelli@gmail.com>, Russell King <linux@armlinux.org.uk>, H=
erbert Xu <herbert@gondor.apana.org.au>, "David S. Miller" <davem@davemloft=
.net>, Hans Ulli Kroll <ulli.kroll@googlemail.com>, Ard Biesheuvel <ardb@ke=
rnel.org>, Nick Desaulniers <ndesaulniers@google.com>, Nicolas Pitre <nico@=
fluxnic.net>, Andre Przywara <andre.przywara@arm.com>, "Russell King (Oracl=
e)" <rmk+kernel@armlinux.org.uk>, Greg Kroah-Hartman <gregkh@linuxfoundatio=
n.org>, Catalin Marinas <catalin.marinas@arm.com>, Jian Cai <caij2003@gmail=
.com>, linux-arm-kernel@lists.infradead.org (moderated list:ARM PORT), linu=
x-kernel@vger.kernel.org (open list), linux-crypto@vger.kernel.org (open li=
st:CRYPTO API), linux-omap@vger.kernel.org (open list:OMAP2+ SUPPORT), clan=
g-built-linux@googlegroups.com (open list:CLANG/LLVM BUILD SUPPORT), Sasha =
Levin <sashal@kernel.org>
Message-ID: <20220629180227.3408104-9-f.fainelli@gmail.com>

From: Stefan Agner <stefan@agner.ch>

commit d85d5247885ef2e8192287b895c2e381fa931b0b upstream

The adrl instruction has been introduced with commit dd31394779aa ("ARM:
omap3: Thumb-2 compatibility for sleep34xx.S"), back when this assembly
file was considerably longer. Today adr seems to have enough reach, even
when inserting about 60 instructions between the use site and the label.
Replace adrl with conventional adr instruction.

This allows to build this file using Clang's integrated assembler (which
does not support the adrl pseudo instruction).

Link: https://github.com/ClangBuiltLinux/linux/issues/430
Signed-off-by: Stefan Agner <stefan@agner.ch>
Signed-off-by: Tony Lindgren <tony@atomide.com>
Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
---
 arch/arm/mach-omap2/sleep34xx.S |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

--- a/arch/arm/mach-omap2/sleep34xx.S
+++ b/arch/arm/mach-omap2/sleep34xx.S
@@ -72,7 +72,7 @@ ENTRY(enable_omap3630_toggle_l2_on_resto
 	stmfd	sp!, {lr}	@ save registers on stack
 	/* Setup so that we will disable and enable l2 */
 	mov	r1, #0x1
-	adrl	r3, l2dis_3630_offset	@ may be too distant for plain adr
+	adr	r3, l2dis_3630_offset
 	ldr	r2, [r3]		@ value for offset
 	str	r1, [r2, r3]		@ write to l2dis_3630
 	ldmfd	sp!, {pc}	@ restore regs and return


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
clang-built-linux/165659577115113%40kroah.com.
