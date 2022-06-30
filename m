Return-Path: <clang-built-linux+bncBCUJ7YGL3QFBBX6K62KQMGQEM7Z25EQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33f.google.com (mail-ot1-x33f.google.com [IPv6:2607:f8b0:4864:20::33f])
	by mail.lfdr.de (Postfix) with ESMTPS id 63989561B59
	for <lists+clang-built-linux@lfdr.de>; Thu, 30 Jun 2022 15:30:08 +0200 (CEST)
Received: by mail-ot1-x33f.google.com with SMTP id h24-20020a9d61d8000000b00616c6090a56sf5423880otk.0
        for <lists+clang-built-linux@lfdr.de>; Thu, 30 Jun 2022 06:30:08 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1656595807; cv=pass;
        d=google.com; s=arc-20160816;
        b=SnzDH3QeCcfAorLYAhCp1KelOrNo+ESBt0VVMYp4kZqPYb6bZCf+xdvcDGxzc/wemq
         uQYrxoT9719UMJf77Oj/Jelyd7cxnclN9NsLXqm9c/y8Pd65L+rxwYlDGTcTjQw85pAm
         WiUVFiB6QdkH9GXY+JrzKrdl7C74ISStMintSRicdSXz7VrkIjzZ4tMhLxBYkd6OvOoe
         Ig5eo1qmQiZobzOCK1GGFkDaJDOcDzWkSIoU1KWmxB6tOx3ZzNY0qsB0jxFqo4RwstwH
         FWEJsMkFAo/DT1181jnjgAtS3YqXm/6rff9qU83UkCzM58w6NonzLboMgYEC8nplkhmi
         GYzQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :mime-version:message-id:in-reply-to:date:from:cc:to:subject:sender
         :dkim-signature;
        bh=K/AhbC06DtcH3/ogXOlRlxHsoE9uy3HIVhuwiv5fKgE=;
        b=pZS0+hVR0i09WXc5BP88qKh2Y88vcTIrpXjMt6/qBOyEDJONo68Kl27pFgx/agxsxD
         8F4MbOHl35e04ZkW6sCcn1RnfexWYyGD9pLSUTLpzddWH5HMW9mx5upM12/24LUaOXR2
         pWQTgAVRLdzXlLmT5MQjsvz/VzhhqBXgY6KAdfufId1o4H0ywHxgR+E9vXXANDotyUkI
         R2N4Ipd3AadyneiMwBhSs1dn5b6gk/8JatcPFx8613mSZF4+d1wYXOARZ2ev0cpT8fCa
         GqN7IBvTTELHywmB/deKjws/kSlXozfmUfeP2wOF+jN4VI0h4FRqnEf7tKcSFC1+Mcoc
         XmBg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=MPcM37BR;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 2604:1380:40e1:4800::1 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:subject:to:cc:from:date:in-reply-to:message-id:mime-version
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=K/AhbC06DtcH3/ogXOlRlxHsoE9uy3HIVhuwiv5fKgE=;
        b=nVIhWH33/IAy2/YVkEMPokjZtlcfp+cijpiaki9LEcOBP2QI9EqERypoCcSp0NOrGK
         3DPo0NauwXrgxZokMLEprZxi6CYjO3C/J7HgXYaEtVY9DMf2jg12s3WkPFaBzuKUpqNZ
         8e5vVF8r9SwMlG8NEgVrzfYzMhkZdTzcfZ7e9e6xjmTNqHSQcFFW3YdfhC2h4PwMFHFi
         3xfwyPNi+WntDN78bKYXJxIPT7T+lqkFr3ASiFPItHomxiC5NqcByZTg1DPUu5V6z2ni
         RgFrr/qRKKpald82ADOAvvP+vO5QLuKb6jnX9QqaHoN7fv9vm7Gmrf4YMYPQFhO1OTzh
         Nw/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:subject:to:cc:from:date:in-reply-to
         :message-id:mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=K/AhbC06DtcH3/ogXOlRlxHsoE9uy3HIVhuwiv5fKgE=;
        b=EKhFpb54E5eMAu+lT83N8MrltQdhxtybLq66fZrCgar+5s4S1TZ+Dkizn1PYY1crVT
         Smw1o1VpowHBZZtesIPodIIVqki7Ffp8EaFSTh6knQyMLfMqyxh6fMY9n5hA+k/v25Gr
         qvYlIVuKwdFj3uZ69hpVv5ui6jkzIz7JinMrAMN5hn4dU5U8iFtjU6R81+JbW1zTwUZ0
         c/8UkxF/6EJLIiGCXXKoBsg1C7WqMAlj8S4hCrH6Ry6MMA+BC2fYuWgAUF9y5Ze0yBsb
         E4XBpfXe6NViX43h3maKtjc582sbpCjaQXz7pKc4opcA4egk12/CARG/jGP8DAxUlHBm
         fSMw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AJIora9TuR50rpKshbfiGRXCqgI4KXols1bAPZQD3Ivj1aq9KWbLFbQG
	Z3m4c+Mrb/EH1mN58oic7/U=
X-Google-Smtp-Source: AGRyM1uypVJn9PX2gw5yr1qpFkCqiOzeTK84Bjyrw8Of58FTX/mzd/lsac5VBddVSlEbtdFEu+fSYg==
X-Received: by 2002:a9d:810:0:b0:616:b9bb:b746 with SMTP id 16-20020a9d0810000000b00616b9bbb746mr3899342oty.188.1656595807357;
        Thu, 30 Jun 2022 06:30:07 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6808:1394:b0:335:762d:b884 with SMTP id
 c20-20020a056808139400b00335762db884ls4603242oiw.8.gmail; Thu, 30 Jun 2022
 06:30:07 -0700 (PDT)
X-Received: by 2002:a05:6808:200e:b0:335:9962:2954 with SMTP id q14-20020a056808200e00b0033599622954mr6314349oiw.178.1656595807007;
        Thu, 30 Jun 2022 06:30:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1656595807; cv=none;
        d=google.com; s=arc-20160816;
        b=RGcN3zp11WtM1uIVzKG3/+F7i10ZBsz6yM5xWXMuMisskP3ThCnBbY2XRyRyWEA05l
         BSwIIsQs9PaB34SWCGbhUZLsOg86piWZoEvr6nhyMQwOqitaAWuVHJwZkyw59HOV3xny
         MrMKoQ5f08kI3UKTPlPrDn6P497SLbql5MzYO7BA1c0QJJMPtZilI//sGd/7vyWTllFj
         mwUv3lCq/MVXodF16HSSAr32UjOgTggQh+u2HkZ5RqgMd+67a0cwTHzw9b1Op4g/v8rh
         W0zcryQTMpk/HrzFb3SUBTTffJjxkIGt2q97PQ1gRPB51BJPxUJfi15JvQPNr3UxzPKI
         TpDw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:in-reply-to:date
         :from:cc:to:subject:dkim-signature;
        bh=9pt085lvQB8jLgUtPstoA/gY3yhRasDGGXuZTAX3O1E=;
        b=yN7KSFG8jA+PCU2eXmzIUWEUzqaczMQlrE4Vs8CIm39PWn0uQTzTYipsCf47va1P5b
         9/hSUVKaZoiA8fW2t+9o966gXoQQH0D3+vhiMSXYx62AgiudYRs5MHzGvohkEDakae3G
         5Tm+sAJpHRZnFm2P1CxVGhSRjtKjh2FJMJ/G6uPtVB9vzoNk6zFsBNAe4a4p+c4R0I+s
         gthuLhg/T3Hx/VlwSrxwfLvCcVnaFWdHQqXzh9s3NbDSV8ec0JPsdG1EN8QLBweLYc2W
         3FDHjY5sjTu3TC8egPsJSraeRiVKosQPoT3K/yZipCRjDu6j2jH/u6u2mXkEKl+DePd6
         DVlQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=MPcM37BR;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 2604:1380:40e1:4800::1 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from sin.source.kernel.org (sin.source.kernel.org. [2604:1380:40e1:4800::1])
        by gmr-mx.google.com with ESMTPS id o17-20020a056870969100b00101a5546931si2444500oaq.4.2022.06.30.06.30.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 30 Jun 2022 06:30:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 2604:1380:40e1:4800::1 as permitted sender) client-ip=2604:1380:40e1:4800::1;
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sin.source.kernel.org (Postfix) with ESMTPS id CB5FECE2E8B;
	Thu, 30 Jun 2022 13:30:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B5887C34115;
	Thu, 30 Jun 2022 13:30:02 +0000 (UTC)
Subject: Patch "crypto: arm/ghash-ce - define fpu before fpu registers are referenced" has been added to the 5.4-stable tree
To: andre.przywara@arm.com,ardb@kernel.org,caij2003@gmail.com,catalin.marinas@arm.com,clang-built-linux@googlegroups.com,davem@davemloft.net,f.fainelli@gmail.com,gregkh@linuxfoundation.org,herbert@gondor.apana.org.au,linux-arm-kernel@lists.infradead.org,linux@armlinux.org.uk,ndesaulniers@google.com,nico@fluxnic.net,rmk+kernel@armlinux.org.uk,sashal@kernel.org,stefan@agner.ch,tony@atomide.com,ulli.kroll@googlemail.com
Cc: <stable-commits@vger.kernel.org>
From: <gregkh@linuxfoundation.org>
Date: Thu, 30 Jun 2022 15:29:31 +0200
In-Reply-To: <20220629180227.3408104-12-f.fainelli@gmail.com>
Message-ID: <165659577114047@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-stable: commit
X-Patchwork-Hint: ignore
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linuxfoundation.org header.s=korg header.b=MPcM37BR;       spf=pass
 (google.com: domain of gregkh@linuxfoundation.org designates
 2604:1380:40e1:4800::1 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
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

    crypto: arm/ghash-ce - define fpu before fpu registers are referenced

to the 5.4-stable tree which can be found at:
    http://www.kernel.org/git/?p=3Dlinux/kernel/git/stable/stable-queue.git=
;a=3Dsummary

The filename of the patch is:
     crypto-arm-ghash-ce-define-fpu-before-fpu-registers-are-referenced.pat=
ch
and it can be found in the queue-5.4 subdirectory.

If you, or anyone else, feels it should not be added to the stable tree,
please let <stable@vger.kernel.org> know about it.


From foo@baz Thu Jun 30 03:27:07 PM CEST 2022
From: Florian Fainelli <f.fainelli@gmail.com>
Date: Wed, 29 Jun 2022 11:02:27 -0700
Subject: crypto: arm/ghash-ce - define fpu before fpu registers are referen=
ced
To: stable@vger.kernel.org
Cc: Stefan Agner <stefan@agner.ch>, Nick Desaulniers <ndesaulniers@google.c=
om>, Ard Biesheuvel <ardb@kernel.org>, Herbert Xu <herbert@gondor.apana.org=
.au>, Florian Fainelli <f.fainelli@gmail.com>, Russell King <linux@armlinux=
.org.uk>, "David S. Miller" <davem@davemloft.net>, Tony Lindgren <tony@atom=
ide.com>, Hans Ulli Kroll <ulli.kroll@googlemail.com>, Nicolas Pitre <nico@=
fluxnic.net>, Andre Przywara <andre.przywara@arm.com>, "Russell King (Oracl=
e)" <rmk+kernel@armlinux.org.uk>, Greg Kroah-Hartman <gregkh@linuxfoundatio=
n.org>, Catalin Marinas <catalin.marinas@arm.com>, Jian Cai <caij2003@gmail=
.com>, linux-arm-kernel@lists.infradead.org (moderated list:ARM PORT), linu=
x-kernel@vger.kernel.org (open list), linux-crypto@vger.kernel.org (open li=
st:CRYPTO API), linux-omap@vger.kernel.org (open list:OMAP2+ SUPPORT), clan=
g-built-linux@googlegroups.com (open list:CLANG/LLVM BUILD SUPPORT), Sasha =
Levin <sashal@kernel.org>
Message-ID: <20220629180227.3408104-12-f.fainelli@gmail.com>

From: Stefan Agner <stefan@agner.ch>

commit 7548bf8c17d84607c106bd45d81834afd95a2edb upstream

Building ARMv7 with Clang's integrated assembler leads to errors such
as:
arch/arm/crypto/ghash-ce-core.S:34:11: error: register name expected
 t3l .req d16
          ^

Since no FPU has selected yet Clang considers d16 not a valid register.
Moving the FPU directive on-top allows Clang to parse the registers and
allows to successfully build this file with Clang's integrated assembler.

Signed-off-by: Stefan Agner <stefan@agner.ch>
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
Tested-by: Nick Desaulniers <ndesaulniers@google.com>
Acked-by: Ard Biesheuvel <ardb@kernel.org>
Signed-off-by: Herbert Xu <herbert@gondor.apana.org.au>
Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
---
 arch/arm/crypto/ghash-ce-core.S |    5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

--- a/arch/arm/crypto/ghash-ce-core.S
+++ b/arch/arm/crypto/ghash-ce-core.S
@@ -8,6 +8,9 @@
 #include <linux/linkage.h>
 #include <asm/assembler.h>
=20
+	.arch		armv8-a
+	.fpu		crypto-neon-fp-armv8
+
 	SHASH		.req	q0
 	T1		.req	q1
 	XL		.req	q2
@@ -88,8 +91,6 @@
 	T3_H		.req	d17
=20
 	.text
-	.arch		armv8-a
-	.fpu		crypto-neon-fp-armv8
=20
 	.macro		__pmull_p64, rd, rn, rm, b1, b2, b3, b4
 	vmull.p64	\rd, \rn, \rm


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
clang-built-linux/165659577114047%40kroah.com.
