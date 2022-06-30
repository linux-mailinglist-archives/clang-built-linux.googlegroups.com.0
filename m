Return-Path: <clang-built-linux+bncBCUJ7YGL3QFBBY6K62KQMGQENUH2XIA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x438.google.com (mail-wr1-x438.google.com [IPv6:2a00:1450:4864:20::438])
	by mail.lfdr.de (Postfix) with ESMTPS id CE64F561B5B
	for <lists+clang-built-linux@lfdr.de>; Thu, 30 Jun 2022 15:30:11 +0200 (CEST)
Received: by mail-wr1-x438.google.com with SMTP id o1-20020adfba01000000b0021b90bd28d2sf3108012wrg.14
        for <lists+clang-built-linux@lfdr.de>; Thu, 30 Jun 2022 06:30:11 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1656595811; cv=pass;
        d=google.com; s=arc-20160816;
        b=zraElchd0rmsHi6pzmJNKAP+Jw1PN8TEhU3vkEQ4XqAqAaPGsHK9M1Wv2PNiSZu10S
         eRcpun4HSh0JNNTBsLrQiqs+AnfH74XYKXkYLtBVJpflDkAk80JP8mq+p4hX6WzFdLOj
         x078GN8mue4wWKhOLihw/PdkqbRUaabhhAiImtdLg2LYNSKEz3tmm4ex1v4pPslGrMWw
         07BueG5BHvuV9uP/jQcaqHxIt/GFn7aKRPs05LX12Z5uRAJvYmdccfchX6inGSxy5UTu
         7rDKHZ+ADHSRh9OYjqjSM3pXe+Ls1LqEE6WBMG2coKYycfbLA0A3369haQB87D8Pn+J1
         ibsw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :mime-version:message-id:in-reply-to:date:from:cc:to:subject:sender
         :dkim-signature;
        bh=zn2BA70qJdw1u+mS7z1aNbYJxaVs+epPYUkIPB+UbJQ=;
        b=TtLq7P4tiLvtYXyCVw/+w9Z1JFReI5x2u1l+uMcc6W2UUdpem0LQ528AOMENZI+c6K
         S4CJSFiKUuZxCVUllaF68LBnzmCECXMr4vUZ220FRlPOHM4+pcSUQrQFCW98MccgEiAH
         OBVH50WgToSTnRruou31hEVlPAq5mTx+57QmXHdfSJQUKSjmdhujMc3ZQz5d7zOOBYfO
         31ecHbkF0R4j/2wRdDufBDhWd7yED+n5C00iRAc1/e50P9v33hsokKvCAp2bEOOSOS76
         3sO3SAUF4ot6xdi79hBvGpqSRr5MopCVSEZOTT4tWDvXB9Ql+J+1DEjvdYng38WoiAu1
         54iw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=Kj4MycPk;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 2604:1380:4601:e00::1 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:subject:to:cc:from:date:in-reply-to:message-id:mime-version
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=zn2BA70qJdw1u+mS7z1aNbYJxaVs+epPYUkIPB+UbJQ=;
        b=KEvgJf/QSwi5lAsIhY3iiTLpe3YeDMEGtD99EM0IMQiEJMmFFWChfA5U4ilNDm/DiT
         mWXt+ZzOOv2e3DcS54X1j0SvQhZOV/VqFsM+C1ZPFHsoffcQEFUIAx8fy0IuvJwzbx1+
         X4UzCTxxU4lvHSGihlel+XW+uyfu8C/W56f0kAKNw8nwlKe1js0NQBuj4ryeWema21x7
         cN/BhfDrzU1RezwUcnUT9+FlASSGWqjn07Z1zkWnmXek3dd3TDdNbPJCsIsCXlvkRPq7
         DZDmgstblWKRLDOOcvx3mdgk5j/MGwakTHwToHi+xiCdfHoToQNnHxwfFic44BS/+jfh
         jBBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:subject:to:cc:from:date:in-reply-to
         :message-id:mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=zn2BA70qJdw1u+mS7z1aNbYJxaVs+epPYUkIPB+UbJQ=;
        b=34pcYPqtu7NCH5nAMW3NyCAk262aXPwkaTyZxqnrRxB5PUKAlR+uJQ9U/jmwGOa7eV
         Si/5JKyb/jhFvV5MagrhzThXjk7o1UKzWt9ctGqaik1Ie0lKx+OlrcwZ3P3YTknm2jAp
         sKLwdLF29V6E9XrQKnzq3LPQooe6i4/ozYWDLa5O2LVHZt8XuCUBfoxkuLgbo6UCRyxg
         FDz5Zln7m4DOAbxVUVW50nV1bSA25+4HRyzIM4/b2WOsJ1BfVeQPgfrKUg6+M1zXkb9f
         900R+a3uiPCgicOMiU4BAV7ORSFy79LCbwB9gaA5CjM4gPF9CD+AoNsj8xjN8Mh7Cbjq
         InXg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AJIora+vTvf05Ux0yXFX1+fDezAnXo3KhNuiKpV+cojd8q9qfVpwHLQM
	qTPCSQf9wdL4L0gkAygst6Q=
X-Google-Smtp-Source: AGRyM1u+zxBmtAuOVql0HV/V8obW0goVYHClVddUo42TG/JaX9t5DfJoo0IItj7/MthSL77x/zvxQQ==
X-Received: by 2002:a5d:5c03:0:b0:21b:90e6:42bc with SMTP id cc3-20020a5d5c03000000b0021b90e642bcmr8868831wrb.36.1656595811329;
        Thu, 30 Jun 2022 06:30:11 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:47ce:0:b0:21d:339f:dc1 with SMTP id o14-20020a5d47ce000000b0021d339f0dc1ls4355744wrc.0.gmail;
 Thu, 30 Jun 2022 06:30:10 -0700 (PDT)
X-Received: by 2002:adf:d0c1:0:b0:21d:22d6:f2d9 with SMTP id z1-20020adfd0c1000000b0021d22d6f2d9mr8789332wrh.270.1656595810237;
        Thu, 30 Jun 2022 06:30:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1656595810; cv=none;
        d=google.com; s=arc-20160816;
        b=dHGiMTqY3qoMGCfkJGQj+W31L8NH9ejnq4YfValYZ8cDg+2/9c/mn0Fz98nGbZz9oI
         KjcxawrLXs/hMBkS9xXownhMwCtmJuHeOy7LNpVh/0TxxJAhRmdkftmTMXyytouyBOBl
         wSMbgkfBsSg2Zs/WvgspR0qPUNNOcKqY9tY58kGuwXJ6GYDeqb2oXu/2mId968/Wd/+f
         H7FXESIUalZGvo4l1WUHN+XeTuQ7S006SWl+pPrcVoGnY8JELJBsmJ72vfE9jBQbqhGH
         bO1Ax17XLgzv0oe7imad22JvZRtCg37BIW0OMONaRW6z7a91Np2SEvaDoXXsVMSuXY4R
         OrfQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:in-reply-to:date
         :from:cc:to:subject:dkim-signature;
        bh=xJ00chD+naaWRiMqfSlBwxh1+UgrfEWWgz0U2++zWAE=;
        b=mgSEP4dK/N/3E1WXqc7lbg19p+oNPDGl7Os7lxJ1W+52UM46BOmwjusY2MBUWxAxKQ
         BONaCaionhuCA72rOOxjtc2CzgaOxMZbG3adW2rI4ALM7TRJA8agOiXQ4VosZlqv2OaO
         +jH3zo6uktLYmSZv+Thmr6XmkmYS1H+06oao63tEo5LiFx+k96lebwpDe8HstO/nDY0B
         8Vq/xJqe1rarCCnn4H+x/fLoHFkNhZVEjffb4f40moIgfR6J3aHGb3rQ4J/JxiJ9u9Ep
         Fb08BjsoIqIEI3CDlROEeOEGhPEdplVXE+kOLE72qq6ewjyjhNUMv8sjive0On5oVTqd
         xJhw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=Kj4MycPk;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 2604:1380:4601:e00::1 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from ams.source.kernel.org (ams.source.kernel.org. [2604:1380:4601:e00::1])
        by gmr-mx.google.com with ESMTPS id m188-20020a1ca3c5000000b0039c4d96e9efsi68034wme.1.2022.06.30.06.30.10
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 30 Jun 2022 06:30:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 2604:1380:4601:e00::1 as permitted sender) client-ip=2604:1380:4601:e00::1;
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id E12CFB82ABC;
	Thu, 30 Jun 2022 13:30:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 56978C34115;
	Thu, 30 Jun 2022 13:30:08 +0000 (UTC)
Subject: Patch "crypto: arm/sha512-neon - avoid ADRL pseudo instruction" has been added to the 5.4-stable tree
To: andre.przywara@arm.com,ardb@kernel.org,caij2003@gmail.com,catalin.marinas@arm.com,clang-built-linux@googlegroups.com,davem@davemloft.net,f.fainelli@gmail.com,gregkh@linuxfoundation.org,herbert@gondor.apana.org.au,linux-arm-kernel@lists.infradead.org,linux@armlinux.org.uk,ndesaulniers@google.com,nico@fluxnic.net,rmk+kernel@armlinux.org.uk,sashal@kernel.org,stefan@agner.ch,tony@atomide.com,ulli.kroll@googlemail.com
Cc: <stable-commits@vger.kernel.org>
From: <gregkh@linuxfoundation.org>
Date: Thu, 30 Jun 2022 15:29:31 +0200
In-Reply-To: <20220629180227.3408104-6-f.fainelli@gmail.com>
Message-ID: <1656595771140255@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-stable: commit
X-Patchwork-Hint: ignore
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linuxfoundation.org header.s=korg header.b=Kj4MycPk;       spf=pass
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

    crypto: arm/sha512-neon - avoid ADRL pseudo instruction

to the 5.4-stable tree which can be found at:
    http://www.kernel.org/git/?p=3Dlinux/kernel/git/stable/stable-queue.git=
;a=3Dsummary

The filename of the patch is:
     crypto-arm-sha512-neon-avoid-adrl-pseudo-instruction.patch
and it can be found in the queue-5.4 subdirectory.

If you, or anyone else, feels it should not be added to the stable tree,
please let <stable@vger.kernel.org> know about it.


From foo@baz Thu Jun 30 03:27:07 PM CEST 2022
From: Florian Fainelli <f.fainelli@gmail.com>
Date: Wed, 29 Jun 2022 11:02:21 -0700
Subject: crypto: arm/sha512-neon - avoid ADRL pseudo instruction
To: stable@vger.kernel.org
Cc: Ard Biesheuvel <ardb@kernel.org>, Nick Desaulniers <ndesaulniers@google=
.com>, Herbert Xu <herbert@gondor.apana.org.au>, Florian Fainelli <f.fainel=
li@gmail.com>, Russell King <linux@armlinux.org.uk>, "David S. Miller" <dav=
em@davemloft.net>, Tony Lindgren <tony@atomide.com>, Hans Ulli Kroll <ulli.=
kroll@googlemail.com>, Stefan Agner <stefan@agner.ch>, Nicolas Pitre <nico@=
fluxnic.net>, Andre Przywara <andre.przywara@arm.com>, "Russell King (Oracl=
e)" <rmk+kernel@armlinux.org.uk>, Greg Kroah-Hartman <gregkh@linuxfoundatio=
n.org>, Catalin Marinas <catalin.marinas@arm.com>, Jian Cai <caij2003@gmail=
.com>, linux-arm-kernel@lists.infradead.org (moderated list:ARM PORT), linu=
x-kernel@vger.kernel.org (open list), linux-crypto@vger.kernel.org (open li=
st:CRYPTO API), linux-omap@vger.kernel.org (open list:OMAP2+ SUPPORT), clan=
g-built-linux@googlegroups.com (open list:CLANG/LLVM BUILD SUPPORT), Sasha =
Levin <sashal@kernel.org>
Message-ID: <20220629180227.3408104-6-f.fainelli@gmail.com>

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
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
---
 arch/arm/crypto/sha512-armv4.pl       |    4 ++--
 arch/arm/crypto/sha512-core.S_shipped |    4 ++--
 2 files changed, 4 insertions(+), 4 deletions(-)

--- a/arch/arm/crypto/sha512-armv4.pl
+++ b/arch/arm/crypto/sha512-armv4.pl
@@ -212,7 +212,6 @@ $code=3D<<___;
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
clang-built-linux/1656595771140255%40kroah.com.
