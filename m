Return-Path: <clang-built-linux+bncBCUJ7YGL3QFBBX6K62KQMGQEM7Z25EQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73b.google.com (mail-qk1-x73b.google.com [IPv6:2607:f8b0:4864:20::73b])
	by mail.lfdr.de (Postfix) with ESMTPS id E08CF561B5A
	for <lists+clang-built-linux@lfdr.de>; Thu, 30 Jun 2022 15:30:08 +0200 (CEST)
Received: by mail-qk1-x73b.google.com with SMTP id z9-20020a376509000000b006af1048e0casf15020800qkb.17
        for <lists+clang-built-linux@lfdr.de>; Thu, 30 Jun 2022 06:30:08 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1656595808; cv=pass;
        d=google.com; s=arc-20160816;
        b=Pc4SQhU0FVLVuszfw3qOR8CEpBoUUIm2Nr0KN+IYK0qt5hLJsTGUK4Zm2eWbdINC0t
         LF4cgTUmoAkUJy1Umxh6F4MnETS+GWcgCHzSYcP7ahJqymu94qUM9yDfdRJtWk+54cI4
         Xm8NicxuQByBmx6U7hU7t0JXJMLuzqUzxtr7YDO+0pw1Xcpuca0ozZTMAntCysgSdSFE
         cXy4eJl04muK2Wm6fxRQR+7WUw30YoTMKR+2WHnr8SLb3wh4PTRIPzJp7NsXxcbmQJBF
         fEMTGtXozdfWBRHMwWjj8YujFg6FQfgyX+Wl7ShL72E1RWLNkxF74ImazmeFGxrrNVRa
         Mdug==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :mime-version:message-id:in-reply-to:date:from:cc:to:subject:sender
         :dkim-signature;
        bh=i+jrhxanyxnV0KVy34xxOChAaB+9KS0VfJXAH45hZj4=;
        b=eiS7GZ0MHrg+bXXYUVBnhtZjiN//dd5vzHt0g2+Er7g2bv9TtGbu1s5D4l+M4etzZn
         1pMZajqRXWs3DrNNm1xk9sbdPDMTxIiU2SzVG2BlR3qRGFKX1T3ApPbjsVmuBdZnJz5t
         dgp5dQNfikA1xBJg17bj+SzRN7YP5+J3t5S/bY16StnuAq6RmEK7Y1MQ9sQqxjGse4ca
         Lxby2Ugofmm/QJhzIrOin9jn7freJ5UDSyVXXNj9KgWo6pElofGYwXJ/SNkfREAvH9N1
         okarMs0awH2MaV1Ym+0SSO41AlI92P3bwGUNHPHGFk7ggxA+aCRjJVxA4bqcWICVENDX
         lOxA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=aOZkTmvt;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 2604:1380:4641:c500::1 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:subject:to:cc:from:date:in-reply-to:message-id:mime-version
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=i+jrhxanyxnV0KVy34xxOChAaB+9KS0VfJXAH45hZj4=;
        b=YSw4x4bNYMcDPzjlm/yoNAxJGHT8at4t06zl7yTLFAnSraFBOCAKqywD8XEMVFF0Lh
         Y2Fm4YIVeWWHiLk0xKHnDuh29KUD8ESuNsMUDD/MUw5V1zfiAWaPrivKkFn+qa2n/L3n
         LNkvfIk6wIeV2v+MXEsVU51itVMojWiIoAvUG9Ua0mJl/hrCzsjm7CqSHez4x6uMIVph
         LQIfU75NeTkTNvE5nJIc30tXzIGcsjEzjUXedML25RsHrZbxAggyWZ7YNwVQqpXa9z88
         jGyRzkeIY6e1TWBRNowlu80PCitj9iDe9n1n9MQOdpHQt+FWGEZ0Nl7L8wL+Pg7FJTrc
         7P8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:subject:to:cc:from:date:in-reply-to
         :message-id:mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=i+jrhxanyxnV0KVy34xxOChAaB+9KS0VfJXAH45hZj4=;
        b=INbjqP4GZFAeDgpJrLLAmYVeYV4SbUcqf4aOXjdmmSnkVfUDt6O0qrjLOOoQAdSJ8u
         f8t9/u/z0C9pPNFBRYBN9DvHVkebGF8AKd1pDNjhFSiL1AVFh67jmc1H0v1FklnmEwdp
         heIYhvfjkEg13dNNHc0q5A2CT29fxOLKEPEANILgwqwDqJ5jclwuEYL126d1boUOxYj7
         TM03iRxpEcOgjyqxJ7x+lZQdSiLsiV1sqszlNpQ1xjF4SdAgq6I4QdBni1iNQHQNhv06
         hD5Iww0XLI/emvVf8gX5TDVSGTFPcFNFkUzk2UXvT6ed1ifOwFOTb5gS70WNycw1N/vF
         Fh3g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AJIora/BghmSYJn+cmuTPmiE1H2Kz6AAl4IxLLXDEAqz7FAbdd0B5X/c
	te5Be8tV5SS574Ysax1ALcQ=
X-Google-Smtp-Source: AGRyM1uZ6huPXsIl5MpOoAHn0zihJlvU/lalwyLTaqD3YksrlP1Iq2BbBmGVhz4efoDS/0ECyDsxxw==
X-Received: by 2002:a37:a946:0:b0:6af:3f68:99c7 with SMTP id s67-20020a37a946000000b006af3f6899c7mr6380132qke.620.1656595807709;
        Thu, 30 Jun 2022 06:30:07 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:c41:b0:6af:22aa:302d with SMTP id
 u1-20020a05620a0c4100b006af22aa302dls7122674qki.0.gmail; Thu, 30 Jun 2022
 06:30:07 -0700 (PDT)
X-Received: by 2002:a37:a8c3:0:b0:6af:5821:7fe2 with SMTP id r186-20020a37a8c3000000b006af58217fe2mr6158018qke.53.1656595806952;
        Thu, 30 Jun 2022 06:30:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1656595806; cv=none;
        d=google.com; s=arc-20160816;
        b=fEsT9Xr6r1k/WQ1gLWY+Y5Yv4CE2WY1DobOjZYJ7Btkqe4DCbLrGqgb5PoRVi/x+BU
         li5NRT5MCx43riiiddQHfhs1U3/wH9c6BOSxeNsEeQCB+Vr/1bSlED0VVlqvBsla0Uws
         y9BFic5VztVlGEUW3UL1kgX/LeHKPmBnsBVKryce/zJTkfudVHrzMLjolCeSLaprQFNT
         /Fl7LhBxhYJ+esTByT06w/EFkCPRnWI4cPF2ZWN1EoPiHWtfcKP2xMcUfabkZcCQN6+b
         guZcjQN1YMrhz5gqSxDVRcQ43bzi7ZZx78Efk5NUOBZBmcW1JkGWqq5xoq1mQyevAId4
         TrCA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:in-reply-to:date
         :from:cc:to:subject:dkim-signature;
        bh=ahx4+wSldkghZtyECikGRfAr6LKfQhjOiqKj3qV/Afc=;
        b=XxsSbQHVaiX1kzPfYid3aRV6TOqDcRoJwCtuDv2oSJ8rPosIpz7LVDRvJh8h8g0U/9
         nv7gqNWVfFoAsCKiDT0vORrCk4zJjmfr+fJSwkZPB6ftVMHe9SqreHKkDbeN6oihf1Pc
         JuTmjnnW8vE7kiJQcTz0Be45EmoaxhJBnOMXT8rZ1peiRoifpq6c47Si8R9fMzHl/+4I
         if35mrqdQfIi2DZfRjiAuIL6c+5PBpdKKgz6cWdUwzoKvs6JFla6mrKIulEg9yhVaXr3
         DrBq7A/zKpMFSGlcAao6GKxiugpEPFLkMnf7xlcYMv1D/TrEIbs2v7oYB+kiYKYZ/lU6
         fRcA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=aOZkTmvt;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 2604:1380:4641:c500::1 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org. [2604:1380:4641:c500::1])
        by gmr-mx.google.com with ESMTPS id r9-20020ac85e89000000b0031d3211a770si32421qtx.3.2022.06.30.06.30.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 30 Jun 2022 06:30:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 2604:1380:4641:c500::1 as permitted sender) client-ip=2604:1380:4641:c500::1;
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 8E7F361F86;
	Thu, 30 Jun 2022 13:30:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8F704C34115;
	Thu, 30 Jun 2022 13:30:05 +0000 (UTC)
Subject: Patch "crypto: arm/sha256-neon - avoid ADRL pseudo instruction" has been added to the 5.4-stable tree
To: andre.przywara@arm.com,ardb@kernel.org,caij2003@gmail.com,catalin.marinas@arm.com,clang-built-linux@googlegroups.com,davem@davemloft.net,f.fainelli@gmail.com,gregkh@linuxfoundation.org,herbert@gondor.apana.org.au,linux-arm-kernel@lists.infradead.org,linux@armlinux.org.uk,ndesaulniers@google.com,nico@fluxnic.net,rmk+kernel@armlinux.org.uk,sashal@kernel.org,stefan@agner.ch,tony@atomide.com,ulli.kroll@googlemail.com
Cc: <stable-commits@vger.kernel.org>
From: <gregkh@linuxfoundation.org>
Date: Thu, 30 Jun 2022 15:29:31 +0200
In-Reply-To: <20220629180227.3408104-5-f.fainelli@gmail.com>
Message-ID: <1656595771172181@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-stable: commit
X-Patchwork-Hint: ignore
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linuxfoundation.org header.s=korg header.b=aOZkTmvt;       spf=pass
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

    crypto: arm/sha256-neon - avoid ADRL pseudo instruction

to the 5.4-stable tree which can be found at:
    http://www.kernel.org/git/?p=3Dlinux/kernel/git/stable/stable-queue.git=
;a=3Dsummary

The filename of the patch is:
     crypto-arm-sha256-neon-avoid-adrl-pseudo-instruction.patch
and it can be found in the queue-5.4 subdirectory.

If you, or anyone else, feels it should not be added to the stable tree,
please let <stable@vger.kernel.org> know about it.


From foo@baz Thu Jun 30 03:27:07 PM CEST 2022
From: Florian Fainelli <f.fainelli@gmail.com>
Date: Wed, 29 Jun 2022 11:02:20 -0700
Subject: crypto: arm/sha256-neon - avoid ADRL pseudo instruction
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
Message-ID: <20220629180227.3408104-5-f.fainelli@gmail.com>

From: Ard Biesheuvel <ardb@kernel.org>

commit 54781938ec342cadbe2d76669ef8d3294d909974 upstream

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
 arch/arm/crypto/sha256-armv4.pl       |    4 ++--
 arch/arm/crypto/sha256-core.S_shipped |    4 ++--
 2 files changed, 4 insertions(+), 4 deletions(-)

--- a/arch/arm/crypto/sha256-armv4.pl
+++ b/arch/arm/crypto/sha256-armv4.pl
@@ -175,7 +175,6 @@ $code=3D<<___;
 #else
 .syntax unified
 # ifdef __thumb2__
-#  define adrl adr
 .thumb
 # else
 .code   32
@@ -471,7 +470,8 @@ sha256_block_data_order_neon:
 	stmdb	sp!,{r4-r12,lr}
=20
 	sub	$H,sp,#16*4+16
-	adrl	$Ktbl,K256
+	adr	$Ktbl,.Lsha256_block_data_order
+	sub	$Ktbl,$Ktbl,#.Lsha256_block_data_order-K256
 	bic	$H,$H,#15		@ align for 128-bit stores
 	mov	$t2,sp
 	mov	sp,$H			@ alloca
--- a/arch/arm/crypto/sha256-core.S_shipped
+++ b/arch/arm/crypto/sha256-core.S_shipped
@@ -56,7 +56,6 @@
 #else
 .syntax unified
 # ifdef __thumb2__
-#  define adrl adr
 .thumb
 # else
 .code   32
@@ -1885,7 +1884,8 @@ sha256_block_data_order_neon:
 	stmdb	sp!,{r4-r12,lr}
=20
 	sub	r11,sp,#16*4+16
-	adrl	r14,K256
+	adr	r14,.Lsha256_block_data_order
+	sub	r14,r14,#.Lsha256_block_data_order-K256
 	bic	r11,r11,#15		@ align for 128-bit stores
 	mov	r12,sp
 	mov	sp,r11			@ alloca


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
clang-built-linux/1656595771172181%40kroah.com.
