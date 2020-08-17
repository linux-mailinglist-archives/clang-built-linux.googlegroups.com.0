Return-Path: <clang-built-linux+bncBCUJ7YGL3QFBBO6Z5L4QKGQEWKV4Z6Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe40.google.com (mail-vs1-xe40.google.com [IPv6:2607:f8b0:4864:20::e40])
	by mail.lfdr.de (Postfix) with ESMTPS id 279C8246C4E
	for <lists+clang-built-linux@lfdr.de>; Mon, 17 Aug 2020 18:13:48 +0200 (CEST)
Received: by mail-vs1-xe40.google.com with SMTP id s27sf2278685vsj.2
        for <lists+clang-built-linux@lfdr.de>; Mon, 17 Aug 2020 09:13:48 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597680827; cv=pass;
        d=google.com; s=arc-20160816;
        b=HGq/pFw/Zv89/3Mvwho716o0L727vuT1quA3/HmMv1q0JafDA6t+4swIpquih04R0I
         gxSLYuvFbrbQMS8YukTVs4+I515MWh7nvX4LU6FBokmYNPzDNGlvgJGUDijh26JM4caw
         f7BDE+a5xkWBtNdEgqDoEs3sQoHULAG1aGOCPvfNuLPhl0Xuk6NSWeRKYs0bZKwDPMTz
         U9ktmniHYmKLwxH0EIHVdr4Cs8B+MS4J9u4uOppJB/eHHy+Mh+uot2eESnewugscD+Vb
         ff16LkX/k5SjQzxUaD3iRnbusAnG/3LtnLFNqkdPfBDjyERbuZsMr3gZscU0Lk+snk+c
         lRAA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=Zq5/8pCtCK/IDsS+Q4qOY4ZN1klynBBoq1YWrCTJiDA=;
        b=lxK74T8Z0KO3uRoAqWTzBogdXzfGzcMlA0cxgjPbEei+xz8a5PJl/eC8DMTEZ6Ychl
         NJK6WxZ06BOgvSaP3eM4xYux0wMKxXm3YxmuyAqdzExHnf/ro/gH88EY4D7lt1FLqdOk
         5Qe/m8k2Vb+BsqRW5XForvikVGDJ9FwE3gHcKMSphzkVLqSN9lyT9sWiIIlpgPcAwiJJ
         rIrrcbUW/3ZHlpEoEh6ucQ4Vczuwi3sgaMr3+64vnsspkNUMvuL12d9HlvSVUJwaFBPR
         XjUVsSa3s7DBBJUBSHMDyTA3QWlo09Nq7daFqn3NcYrH1Ex7XzDZfOy50/O5xFcRI9OL
         3ZsA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="CuF/1xJ1";
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Zq5/8pCtCK/IDsS+Q4qOY4ZN1klynBBoq1YWrCTJiDA=;
        b=I09aLgG0hVzpuVeLzm9tJN4vx4vuMP+r3e4NS/lNR5XvUPdYJ7hTDkSvGA/g3vJV7e
         hpZUwLNK9RXx2d8BIICBdM2wZw5Oo44Q8zN3O3oiCuL54m9BX4NQhCJThq4weCbjXons
         oYHYjSs6qVxm5eh3H+dFjgOODIxxT9o30wVjC+TIGg0pYt4c859FqYQ2VMYlSBJ0MdgA
         KH0fjZjnBG3NfbHzU8Yj15zKc/mJHf/qaL3E4HbJW0HtcCQ5WxArSDvi16ODVNHMeqbi
         B6K4ib3/rKeOckI0X9d6DqNnB+pxolAZPVQSzoHYRXTZLOL8EEd+BZh0mROdGTRqX0ms
         CROQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Zq5/8pCtCK/IDsS+Q4qOY4ZN1klynBBoq1YWrCTJiDA=;
        b=DZPQch92p8gGGPGG0RAXmeUlFceFl4r71G5RmK+k2qN/YYsaOtNwL/iovnqySNaVnz
         BMv9J2mfC7ZvG65xEGccKnkEmjdCJsjyCZKhAJA84hPQAkjsN5xF7Xph0MbrHxCsCgBG
         vZLKq3JDue4p1a2HDcqASOctWNmXE/QWLs0A+7zGa1pbIhv82TLuYo/dQ6rGBiA7CMzz
         5mjXtfTfVFbEBpSDVcq1CzaCXxCbOtCN8BooasSOJkmkKPTKwEMr5dfRMw10YOFkdP35
         bE5Wbh6zEeGF9+6u7eiMRPpCSBrQ9Q7aqVOQiY/0KAAk589ojIcjOQqzsSJogOhJyxz2
         4Kaw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5322ctvotgLnXg1FgYVtj1gF0O+FkSD0pqfJ07+R+zP5WhuGK2+1
	Q284j4BsNVjMES8s44ZbcWE=
X-Google-Smtp-Source: ABdhPJy9owT9Y2uQwNxJe0Dz0GPCt4Au7joKPNuBDQPA2nira9UL5iFN+h8bBj4iGTqfFzVRdYXxzA==
X-Received: by 2002:a1f:b650:: with SMTP id g77mr8566177vkf.24.1597680827147;
        Mon, 17 Aug 2020 09:13:47 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6102:372:: with SMTP id f18ls563285vsa.2.gmail; Mon, 17
 Aug 2020 09:13:46 -0700 (PDT)
X-Received: by 2002:a67:e412:: with SMTP id d18mr8752707vsf.41.1597680826769;
        Mon, 17 Aug 2020 09:13:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597680826; cv=none;
        d=google.com; s=arc-20160816;
        b=q7Hh+ZddEYI0tNT8n/BQCR/QL9uVbuVGQ1AnogHpwOhDy6d35dPvYL1oc+DoaTmHNp
         Lcbd1QLi94ML4q/0gHC+W1VQGOJ2IqwpmGpYPwuBzmJm5MCChpjsmMVL3zLOAzcU2a0a
         KAXWdou82w4ej6MjeGiwpvVJplm6KjLyIKwxjvKYTl7PCtDLSv8nJDTiSwFXJWrJKdlX
         TgO6OP5zA4ow8U/SIcAr0tl5HzT4cFpH0egw1OKW1MSVL3thsb4vmdXmDK54JsO90rbO
         fnLkxlbFqHgJS/tjp2kp1ox4bbq84Ylvn3GNHzBGa1f7ZfizI796mf5t14xFtzNqnUMU
         Whpw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=I7S/SPKs75MFtsl+J5jb6fDd1aF9NubMkTHQxC7j29s=;
        b=rhxKCIpAf2jEHVVz+7Q2aYCj1AdyhuyMIyBtG+NE6/vAJ1DykUhWdxXEbbW1xOvP5J
         fgMvfJPNJfvOfWoEEuU27ror+HFcMM2hQPgBMQnCgqigb0PPZ0jUP2jIDMCex5PysvK0
         d53NrjG0T4lBf8z3mq+wERGD1udIOx4MbWiS0VYerXfFVvdJdcUCZEETIsOyV4kOthyK
         oeAQPFnoN33cY8DpyfOZ2s+QBcrSrvRHYDGpUkM2xKeP06ofVD7pLx/1Cckq/8QeoUay
         yiiPmrHEM7v4F2zDGQGq6DpckJCcOcU/Ym5Jwm+nWXnxkUwC0QTk1iHeUsPreleltznI
         dEEg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="CuF/1xJ1";
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id p8si1064733vsf.1.2020.08.17.09.13.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 17 Aug 2020 09:13:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 5431922B47;
	Mon, 17 Aug 2020 16:13:45 +0000 (UTC)
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: linux-kernel@vger.kernel.org
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	stable@vger.kernel.org,
	Craig Topper <craig.topper@intel.com>,
	Craig Topper <craig.topper@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	"ClangBuiltLinux" <clang-built-linux@googlegroups.com>,
	Sedat Dilek <sedat.dilek@gmail.com>,
	Herbert Xu <herbert@gondor.apana.org.au>,
	Sasha Levin <sashal@kernel.org>
Subject: [PATCH 4.19 032/168] crypto: aesni - Fix build with LLVM_IAS=1
Date: Mon, 17 Aug 2020 17:16:03 +0200
Message-Id: <20200817143735.363498293@linuxfoundation.org>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20200817143733.692105228@linuxfoundation.org>
References: <20200817143733.692105228@linuxfoundation.org>
User-Agent: quilt/0.66
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b="CuF/1xJ1";       spf=pass
 (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as
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

From: Sedat Dilek <sedat.dilek@gmail.com>

[ Upstream commit 3347c8a079d67af21760a78cc5f2abbcf06d9571 ]

When building with LLVM_IAS=1 means using Clang's Integrated Assembly (IAS)
from LLVM/Clang >= v10.0.1-rc1+ instead of GNU/as from GNU/binutils
I see the following breakage in Debian/testing AMD64:

<instantiation>:15:74: error: too many positional arguments
 PRECOMPUTE 8*3+8(%rsp), %xmm1, %xmm2, %xmm3, %xmm4, %xmm5, %xmm6, %xmm7,
                                                                         ^
 arch/x86/crypto/aesni-intel_asm.S:1598:2: note: while in macro instantiation
 GCM_INIT %r9, 8*3 +8(%rsp), 8*3 +16(%rsp), 8*3 +24(%rsp)
 ^
<instantiation>:47:2: error: unknown use of instruction mnemonic without a size suffix
 GHASH_4_ENCRYPT_4_PARALLEL_dec %xmm9, %xmm10, %xmm11, %xmm12, %xmm13, %xmm14, %xmm0, %xmm1, %xmm2, %xmm3, %xmm4, %xmm5, %xmm6, %xmm7, %xmm8, enc
 ^
arch/x86/crypto/aesni-intel_asm.S:1599:2: note: while in macro instantiation
 GCM_ENC_DEC dec
 ^
<instantiation>:15:74: error: too many positional arguments
 PRECOMPUTE 8*3+8(%rsp), %xmm1, %xmm2, %xmm3, %xmm4, %xmm5, %xmm6, %xmm7,
                                                                         ^
arch/x86/crypto/aesni-intel_asm.S:1686:2: note: while in macro instantiation
 GCM_INIT %r9, 8*3 +8(%rsp), 8*3 +16(%rsp), 8*3 +24(%rsp)
 ^
<instantiation>:47:2: error: unknown use of instruction mnemonic without a size suffix
 GHASH_4_ENCRYPT_4_PARALLEL_enc %xmm9, %xmm10, %xmm11, %xmm12, %xmm13, %xmm14, %xmm0, %xmm1, %xmm2, %xmm3, %xmm4, %xmm5, %xmm6, %xmm7, %xmm8, enc
 ^
arch/x86/crypto/aesni-intel_asm.S:1687:2: note: while in macro instantiation
 GCM_ENC_DEC enc

Craig Topper suggested me in ClangBuiltLinux issue #1050:

> I think the "too many positional arguments" is because the parser isn't able
> to handle the trailing commas.
>
> The "unknown use of instruction mnemonic" is because the macro was named
> GHASH_4_ENCRYPT_4_PARALLEL_DEC but its being instantiated with
> GHASH_4_ENCRYPT_4_PARALLEL_dec I guess gas ignores case on the
> macro instantiation, but llvm doesn't.

First, I removed the trailing comma in the PRECOMPUTE line.

Second, I substituted:
1. GHASH_4_ENCRYPT_4_PARALLEL_DEC -> GHASH_4_ENCRYPT_4_PARALLEL_dec
2. GHASH_4_ENCRYPT_4_PARALLEL_ENC -> GHASH_4_ENCRYPT_4_PARALLEL_enc

With these changes I was able to build with LLVM_IAS=1 and boot on bare metal.

I confirmed that this works with Linux-kernel v5.7.5 final.

NOTE: This patch is on top of Linux v5.7 final.

Thanks to Craig and especially Nick for double-checking and his comments.

Suggested-by: Craig Topper <craig.topper@intel.com>
Suggested-by: Craig Topper <craig.topper@gmail.com>
Suggested-by: Nick Desaulniers <ndesaulniers@google.com>
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
Cc: "ClangBuiltLinux" <clang-built-linux@googlegroups.com>
Link: https://github.com/ClangBuiltLinux/linux/issues/1050
Link: https://bugs.llvm.org/show_bug.cgi?id=24494
Signed-off-by: Sedat Dilek <sedat.dilek@gmail.com>
Signed-off-by: Herbert Xu <herbert@gondor.apana.org.au>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/x86/crypto/aesni-intel_asm.S | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/x86/crypto/aesni-intel_asm.S b/arch/x86/crypto/aesni-intel_asm.S
index cb2deb61c5d96..29b27f9a6e1ee 100644
--- a/arch/x86/crypto/aesni-intel_asm.S
+++ b/arch/x86/crypto/aesni-intel_asm.S
@@ -270,7 +270,7 @@ ALL_F:      .octa 0xffffffffffffffffffffffffffffffff
 	PSHUFB_XMM %xmm2, %xmm0
 	movdqu %xmm0, CurCount(%arg2) # ctx_data.current_counter = iv
 
-	PRECOMPUTE \SUBKEY, %xmm1, %xmm2, %xmm3, %xmm4, %xmm5, %xmm6, %xmm7,
+	PRECOMPUTE \SUBKEY, %xmm1, %xmm2, %xmm3, %xmm4, %xmm5, %xmm6, %xmm7
 	movdqu HashKey(%arg2), %xmm13
 
 	CALC_AAD_HASH %xmm13, \AAD, \AADLEN, %xmm0, %xmm1, %xmm2, %xmm3, \
@@ -982,7 +982,7 @@ _initial_blocks_done\@:
 * arg1, %arg3, %arg4 are used as pointers only, not modified
 * %r11 is the data offset value
 */
-.macro GHASH_4_ENCRYPT_4_PARALLEL_ENC TMP1 TMP2 TMP3 TMP4 TMP5 \
+.macro GHASH_4_ENCRYPT_4_PARALLEL_enc TMP1 TMP2 TMP3 TMP4 TMP5 \
 TMP6 XMM0 XMM1 XMM2 XMM3 XMM4 XMM5 XMM6 XMM7 XMM8 operation
 
 	movdqa	  \XMM1, \XMM5
@@ -1190,7 +1190,7 @@ aes_loop_par_enc_done\@:
 * arg1, %arg3, %arg4 are used as pointers only, not modified
 * %r11 is the data offset value
 */
-.macro GHASH_4_ENCRYPT_4_PARALLEL_DEC TMP1 TMP2 TMP3 TMP4 TMP5 \
+.macro GHASH_4_ENCRYPT_4_PARALLEL_dec TMP1 TMP2 TMP3 TMP4 TMP5 \
 TMP6 XMM0 XMM1 XMM2 XMM3 XMM4 XMM5 XMM6 XMM7 XMM8 operation
 
 	movdqa	  \XMM1, \XMM5
-- 
2.25.1



-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200817143735.363498293%40linuxfoundation.org.
