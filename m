Return-Path: <clang-built-linux+bncBCUJ7YGL3QFBBUGK62KQMGQEQLP4CXY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93d.google.com (mail-ua1-x93d.google.com [IPv6:2607:f8b0:4864:20::93d])
	by mail.lfdr.de (Postfix) with ESMTPS id 347E3561B53
	for <lists+clang-built-linux@lfdr.de>; Thu, 30 Jun 2022 15:29:54 +0200 (CEST)
Received: by mail-ua1-x93d.google.com with SMTP id g5-20020ab060c5000000b00378f363f03bsf7747285uam.15
        for <lists+clang-built-linux@lfdr.de>; Thu, 30 Jun 2022 06:29:54 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1656595793; cv=pass;
        d=google.com; s=arc-20160816;
        b=lTLVTwTAehN8CRXfmhTekjmo0SF6iLS8P2JdWsIwPzYeMWiJScJH+Mbonf8M5sXhO6
         b102pFzEfFOIcEmvN+iyTKGtnNMdNdQeb7FLvd2PzkwNZ9OMXh8NYBTSbnmfyJwNyjEi
         Bt8q81LlECnbmd3RJH2Onl50/H9ectmL4ZEoPoa8pa8qFXGNRb7SHcvfZaO3Iybnu8uS
         o78dvSLOLYsuxaey4SE6q6NEpJxogSBHYleO9eBVnyha/y+qH0Dc0I2O3elv6JiMro4Z
         WQmXyxUE9s9CDKO5WDq+GYoLqDCIbhuhZjhjx897Ui2PjrX/k24nXSuS/b+K43+J3Yil
         VbOQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :mime-version:message-id:in-reply-to:date:from:cc:to:subject:sender
         :dkim-signature;
        bh=LInosgDUrc5QjNI9MpTw4HYpM8NEwb3xA95U1GawoKs=;
        b=O3bOAtrwGUdXsbBpC1xMRBWf+/RJKLI7J9GYPgt9GzSgz/SNE53XvEGK6WJ2mZtCuX
         vPqM5ExASVaWvwYzJDMThRPc4FtvLqiaWiYhVBOUYKGhLXtsox0WTIqfeMNB1lqnfqcf
         O9D0HwWb+DbOD6Mk6ppKtkoSheS70xCtnSoecZLHDxbyD3XtBg1BHrB1F0qtLgNDs9hQ
         tpDrpix2VZkE4EkCLg6pqWux/l9DPjWBSN/Dcd0KvrA77xp+bg6/OYj1/CnnJ9HyGe+M
         4JysnmKaJpkqfFI0RdJsn6ZHPPm7wGhu/bLwnNGAOB7sjPoF0itUkumomxtlg0rJqDn/
         Wzew==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=mMsHRXvj;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 2604:1380:4641:c500::1 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:subject:to:cc:from:date:in-reply-to:message-id:mime-version
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=LInosgDUrc5QjNI9MpTw4HYpM8NEwb3xA95U1GawoKs=;
        b=aNgCQnY+//lpYoPwwyEdQNA4rqQBwzCxvX0dKN2njixD7XKZma6WOOL/VIgBhapatc
         s8YZCA1EPF3uNzbkJGbzkAqC4bsBADTgORU/j/KCeV0ERVYgMTSIAlLV7fqWnpOtdchr
         FKnyOyZEGaPEBK3CdZXD+Ei1U1XOuG5dGBLJdnBV+G2xpPbAM4790QMGUD1Z8SvMpehj
         V0w7t/LlJV5O6eW5D8I348/P28+8YWq570luDNmkDjkbtaKq0Vosfkrfrs/1+Zq+XqmD
         Yz7AiY7VvGod13vzKYwQaaiOM8OHJ/T6DvXpfpfaHtRCQuBBvTsc20I4wa/roHSzKg2+
         acoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:subject:to:cc:from:date:in-reply-to
         :message-id:mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=LInosgDUrc5QjNI9MpTw4HYpM8NEwb3xA95U1GawoKs=;
        b=qB6KMX3SLBHMScpKeJFQcsaPjnBns022+3bWNpixzBAJwbDgKrMOULkHv3L6YGQsF3
         cxukVX+sMBhMN/5fP0hmuToBrAyn8E/8i/i81rOTIxtMoYz1ZJho6ImWQmAhVbY/Cwlt
         0fOeLUnlL68w8lyGNMpCGFbSohBhk2YHA1/mb3egddQ6d/I6Ts22nqclmYjutre7SwNp
         0YPhDnyGhlnzmHLRgEXTbbc0m7zjfSm2qnuVJve7TJdsawtiMIEUJ/s1Q8cprZLRN1Kn
         H+3Hf+bf2UyMpROwe+hxQTwN0hKFOqOzSjpDi1HRSUEBZXAfbnD0EQGwbm9Iqg332ar7
         bT0A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AJIora8kinSvF8cD4HRaK/AGhr5FZ7mXMMk0SWpcuax9cN8IG4QKrQ3q
	uKifAQDrPYcp0KR845/1S/w=
X-Google-Smtp-Source: AGRyM1s82NpGfm1uOAhn7mSmcuLr+3bVboMoyCkhlirF8n7jE5Gt4zFElIQsOwkQIwVHP76vAGmGZg==
X-Received: by 2002:ab0:6704:0:b0:37c:c743:eebe with SMTP id q4-20020ab06704000000b0037cc743eebemr4603650uam.84.1656595793078;
        Thu, 30 Jun 2022 06:29:53 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:3419:0:b0:37f:1f24:f780 with SMTP id z25-20020ab03419000000b0037f1f24f780ls2222772uap.8.gmail;
 Thu, 30 Jun 2022 06:29:52 -0700 (PDT)
X-Received: by 2002:ab0:6857:0:b0:37f:15c2:b949 with SMTP id a23-20020ab06857000000b0037f15c2b949mr4678473uas.86.1656595792394;
        Thu, 30 Jun 2022 06:29:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1656595792; cv=none;
        d=google.com; s=arc-20160816;
        b=Qhvief6UVkOS6n7Iw8f3bgGmEHEuxAdML2fJyaFxvBgBytxg3v7gkb3PMD4yL47xqt
         dIvEoZ3UvYTOF/E9PUz4Jcz52k/cgwJrbE0kdlLcyA0ScEoUcIInUrq22nrDtVjPcxEC
         ODmTrian8U9Sc0X0UzPnw6+lqeQYzYNsOSYrxxMHmE+PfgzYu1050l3I+atDSxBoet7r
         5b5/O2SrUhJm8YRzZRHEvuNf0362zxhGTa89eySHCgO+QbIo023cft217Ww2ncK/wBHB
         hPKjK1o5Mm1Q3gzWV1SwmZDj2Nt4WEDCoYq1grmRM9N9LJ0t1qZqh2/iyFMp63giH7Xn
         BGZg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:in-reply-to:date
         :from:cc:to:subject:dkim-signature;
        bh=RguQlGz3AL7lQdEJS0b6UqK8MJWdBaq7Iu6xUpVRHCM=;
        b=XMvTkheUfF7hlQjFRYLY7sQINdu82SJ5NxOm9T7n+ZEWgK55yOmsvrxwXYi/D3RnMA
         dulHNIOaDDL1xn1eytQ65j5ssPHKmLzn/gHiP4Z+ypTl72mOwXdHBZDWx5q4ApOb4KXu
         6rHKH+bDaIR5qNwQjIxKJFgKmKlF75+H7cOVDnROncB4ZkFT6d1HpoQ/OnlN57fAMcWW
         Utd+7c9sfl+EpNCf91YM9SKy+mWGxONZ2THazgiJTxwl9aGsWRLfYIOyb6d2Sl3taiJJ
         4NdOVD85tXtcpjEzRcfeqJHbU3LxsdBKY5g7/cD+YJV2eWwFtvOwn6ndFVCezakXT+wR
         zUrA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=mMsHRXvj;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 2604:1380:4641:c500::1 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org. [2604:1380:4641:c500::1])
        by gmr-mx.google.com with ESMTPS id e3-20020a1f1e03000000b0036c18b4c646si769246vke.2.2022.06.30.06.29.52
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 30 Jun 2022 06:29:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 2604:1380:4641:c500::1 as permitted sender) client-ip=2604:1380:4641:c500::1;
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id E583D61F88;
	Thu, 30 Jun 2022 13:29:51 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5CAB7C34115;
	Thu, 30 Jun 2022 13:29:51 +0000 (UTC)
Subject: Patch "ARM: 8971/1: replace the sole use of a symbol with its definition" has been added to the 5.4-stable tree
To: andre.przywara@arm.com,ardb@kernel.org,caij2003@gmail.com,catalin.marinas@arm.com,clang-built-linux@googlegroups.com,davem@davemloft.net,f.fainelli@gmail.com,gregkh@linuxfoundation.org,herbert@gondor.apana.org.au,linux-arm-kernel@lists.infradead.org,linux@armlinux.org.uk,ndesaulniers@google.com,nico@fluxnic.net,rmk+kernel@armlinux.org.uk,sashal@kernel.org,stefan@agner.ch,tony@atomide.com,ulli.kroll@googlemail.com
Cc: <stable-commits@vger.kernel.org>
From: <gregkh@linuxfoundation.org>
Date: Thu, 30 Jun 2022 15:29:30 +0200
In-Reply-To: <20220629180227.3408104-4-f.fainelli@gmail.com>
Message-ID: <1656595770106137@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-stable: commit
X-Patchwork-Hint: ignore
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linuxfoundation.org header.s=korg header.b=mMsHRXvj;       spf=pass
 (google.com: domain of gregkh@linuxfoundation.org designates
 2604:1380:4641:c500::1 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
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

    ARM: 8971/1: replace the sole use of a symbol with its definition

to the 5.4-stable tree which can be found at:
    http://www.kernel.org/git/?p=3Dlinux/kernel/git/stable/stable-queue.git=
;a=3Dsummary

The filename of the patch is:
     arm-8971-1-replace-the-sole-use-of-a-symbol-with-its-definition.patch
and it can be found in the queue-5.4 subdirectory.

If you, or anyone else, feels it should not be added to the stable tree,
please let <stable@vger.kernel.org> know about it.


From foo@baz Thu Jun 30 03:27:07 PM CEST 2022
From: Florian Fainelli <f.fainelli@gmail.com>
Date: Wed, 29 Jun 2022 11:02:19 -0700
Subject: ARM: 8971/1: replace the sole use of a symbol with its definition
To: stable@vger.kernel.org
Cc: Jian Cai <caij2003@gmail.com>, Nick Desaulniers <ndesaulniers@google.co=
m>, Russell King <rmk+kernel@armlinux.org.uk>, Florian Fainelli <f.fainelli=
@gmail.com>, Russell King <linux@armlinux.org.uk>, Herbert Xu <herbert@gond=
or.apana.org.au>, "David S. Miller" <davem@davemloft.net>, Tony Lindgren <t=
ony@atomide.com>, Hans Ulli Kroll <ulli.kroll@googlemail.com>, Ard Biesheuv=
el <ardb@kernel.org>, Stefan Agner <stefan@agner.ch>, Nicolas Pitre <nico@f=
luxnic.net>, Andre Przywara <andre.przywara@arm.com>, Greg Kroah-Hartman <g=
regkh@linuxfoundation.org>, Catalin Marinas <catalin.marinas@arm.com>, linu=
x-arm-kernel@lists.infradead.org (moderated list:ARM PORT), linux-kernel@vg=
er.kernel.org (open list), linux-crypto@vger.kernel.org (open list:CRYPTO A=
PI), linux-omap@vger.kernel.org (open list:OMAP2+ SUPPORT), clang-built-lin=
ux@googlegroups.com (open list:CLANG/LLVM BUILD SUPPORT), Sasha Levin <sash=
al@kernel.org>
Message-ID: <20220629180227.3408104-4-f.fainelli@gmail.com>

From: Jian Cai <caij2003@gmail.com>

commit a780e485b5768e78aef087502499714901b68cc4 upstream

ALT_UP_B macro sets symbol up_b_offset via .equ to an expression
involving another symbol. The macro gets expanded twice when
arch/arm/kernel/sleep.S is assembled, creating a scenario where
up_b_offset is set to another expression involving symbols while its
current value is based on symbols. LLVM integrated assembler does not
allow such cases, and based on the documentation of binutils, "Values
that are based on expressions involving other symbols are allowed, but
some targets may restrict this to only being done once per assembly", so
it may be better to avoid such cases as it is not clearly stated which
targets should support or disallow them. The fix in this case is simple,
as up_b_offset has only one use, so we can replace the use with the
definition and get rid of up_b_offset.

 Link:https://github.com/ClangBuiltLinux/linux/issues/920

 Reviewed-by: Stefan Agner <stefan@agner.ch>

Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
Signed-off-by: Jian Cai <caij2003@gmail.com>
Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
---
 arch/arm/include/asm/assembler.h |    3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

--- a/arch/arm/include/asm/assembler.h
+++ b/arch/arm/include/asm/assembler.h
@@ -279,10 +279,9 @@
 	.endif							;\
 	.popsection
 #define ALT_UP_B(label)					\
-	.equ	up_b_offset, label - 9998b			;\
 	.pushsection ".alt.smp.init", "a"			;\
 	.long	9998b						;\
-	W(b)	. + up_b_offset					;\
+	W(b)	. + (label - 9998b)					;\
 	.popsection
 #else
 #define ALT_SMP(instr...)


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
clang-built-linux/1656595770106137%40kroah.com.
