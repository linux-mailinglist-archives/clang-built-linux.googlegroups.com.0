Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBXFWY34QKGQES5CF7IY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3e.google.com (mail-yb1-xb3e.google.com [IPv6:2607:f8b0:4864:20::b3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D322240D79
	for <lists+clang-built-linux@lfdr.de>; Mon, 10 Aug 2020 21:09:17 +0200 (CEST)
Received: by mail-yb1-xb3e.google.com with SMTP id u189sf13810288ybg.17
        for <lists+clang-built-linux@lfdr.de>; Mon, 10 Aug 2020 12:09:17 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597086556; cv=pass;
        d=google.com; s=arc-20160816;
        b=NUHxR8QGQOEBmRRm354lNTS3VG8Fq00G4vuaQLUEzV63jRd1mRkvn0AG2udSGguD5O
         zRbTHi4dKPE+GnBA2cx1AEMp9XZpo2LfxE1rrPgV0mHrC0ft/ukIOvlFf9cLdRw3feGy
         WFKzC6wAMD6/XhDRYQMkHVwmLltA9yG23sehy9Vs5hJfrjvB0ly6iUA8t3FNhBkDGuAF
         a5C6wdturh3nLGsLZbgNJwgfjYITokY6aeFtoPUAKRNYjFf895pZ2/C8UAWu+zPbxTD0
         aSNmWu1j9xWXnLhea7RjaWEVxPqTP64RcJ1FYYknvjAL6q9xWMXhVd486aCENmGPsD9j
         4oyg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=VO0UV+U1A+tZ/49Pfvymme65p1j/ftPZz0uOc2X/GdE=;
        b=vlJghM+ixWA6gxxIfKzz37rTZAQqOMu2MUqz9Y8VR2RlAf4m3Rj9aB8RZ17ARM+IfF
         TQbRrjxGTh/qHE/uUlXjD7tkxBT6+9OFroBDfvEtDYMJafxALmpWcnrJMV/VYA/oH4B5
         aybmd020vL+Tn3H9ZwmRJmM/XXebmxWBfdnxFkZbfucRhq7L5Z7mC7t1amraPN9q6IC5
         YrZhKMnlhwfqmvduvWm02d61ec8U7jzLJsVV1L0rONx+n/B1Yxnmg6zSBJlTGP2szuWe
         Sz9zGXAt4LKypAOmrqPfYoc/4gAEWrW6YSjTeGSjSpf0d2dbKmEcgd6tEMadmgzkjJN1
         oAUQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=zx7LEtB0;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=VO0UV+U1A+tZ/49Pfvymme65p1j/ftPZz0uOc2X/GdE=;
        b=CRw+WvOJbutX9J7Hf5HYuHfzna4vNaQhd/QXVJqtfvu8jMOnE3N6sLhQSHrA456Syu
         xQYPnBkPPSqp5lSY4fKcPtbZG5OFlde5ACdHBiFQpvhBdFhKhn/gmJBrN1EB65n+VsiL
         17RDP0wwbgd59ypTJ5WyklWvb1jAWqkMCCPN4gcFzjwct/guUzaBJCc0ExxTej/gK/aG
         UKtyFbLwENxjs0TbN7RxA9We3w3reIvYhMoeIb+FH7cy8LzSHD+HUb8lppNaQTRS2AFF
         /mCZf7I5HT8LytSQ2osQk55o0bhAlQ97HKIzmZseLVPd9IK1iK6jwtonnehLSewi5F0/
         kn6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=VO0UV+U1A+tZ/49Pfvymme65p1j/ftPZz0uOc2X/GdE=;
        b=RJuye5RIUlLqPXCLpxLVQ7pcOFL1J+Vi87Aqq2aqEVYWfKTdHPqQudoHBRZ9T0vjtF
         3hcdJ9iABDZDgQPkBn1bUoyLXz/pIbDzyAd7v8EALyNMTVpnunfHUJtbDRe6BpkNg2OV
         zi1NjOnqbw20uberEQRAuzW97rV6OwZwlGd58z4saVU2VkAS8Oyu/sxVgxteRS7JOaZk
         mG0v9Xdbctk75nAQngviRNXefyroR00nHaIJzbSuzE7+mT8LXFZnIVP+7mvwWWXZqAmt
         1VIXlxaSNj+SpzBvhB6wU3rHUj4PqnvpGr+yECRJqNjQY/aTBmLGao21MQYdAKUhs/cQ
         yoVg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530hzqlgz1aysyqHkpyMCS8AiHa+h72Y7rzSTAIWmwaI9Ihd/Vip
	K4xDW9+8V6qRUtmk/qKaBDY=
X-Google-Smtp-Source: ABdhPJwNoe8BMPUANRMm5SzCl5S+IPJ+jA2Mw3XXPFZqnvARnvGK5PdfJp4gh/tPTea+zB5rFuywdQ==
X-Received: by 2002:a25:5f0b:: with SMTP id t11mr42881593ybb.141.1597086556365;
        Mon, 10 Aug 2020 12:09:16 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:a185:: with SMTP id a5ls6957964ybi.9.gmail; Mon, 10 Aug
 2020 12:09:16 -0700 (PDT)
X-Received: by 2002:a25:e83:: with SMTP id 125mr45737012ybo.376.1597086555971;
        Mon, 10 Aug 2020 12:09:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597086555; cv=none;
        d=google.com; s=arc-20160816;
        b=lO558L+AxNf7HdowgvIXz2su9udXyyyxti5spgSf6XHQkpYPTh9f86iSSwLzilvaDC
         ZloSjVnRsovBNbngj7cH6otKHOX72zeCqAIFCFYhMo3G+o1GImDrx29Tf27CUmEB1ASF
         R2TS54X9nNPyvN/4YIpPpwEa0X4XLxPdqcLOKuW0iuTGaXrrUd7sZcFuhw9RzlL9S+Xz
         yXZN2AGQxJ/SIzLVmziNDRvNTbEVL9wjGYpFHDVUGvWLsUNP1JmkxynW1TkY4LfzJpgk
         UcDAL/oWLWgD973rDh01xmpbGKw2SaxCmQIpHeP/GE32BuhHArW2tdgV6smnfnZ3BJaa
         6L2g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=iX+hY1md/YHirUoJLEg4yy+YuIT6T57ViKEpb8mi73E=;
        b=vy8utb7bYJDm4MSlOOhyUSKNXY/yonsoh2I1IHNB7BeuEY9kfNQH1RoUhdnm3PKc8j
         x3WGkYp9GAfR6bAG5TtS98px5FoVCjeciwe3chmbNWBLczetdEkdBJp2lTY3h7Sb79oB
         mchB85HHnZBfB3xMdFeypq/+U47brlmzZqYJypsSeVEKDbvW5tqzseVeFSqE7qHF2ddt
         ghQlp3CwSPSCnFt/ASKt4tTGnCoWmcA/752UdHgmGInwHduHbNwmfdayiqlXKqA3ZflB
         9hFZhTz4PIEt++iN15yiZtqdbmHFn+7eQxy+naOAoaUjdc5HgsCduSF6QJqNrGxk0K0M
         SLUQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=zx7LEtB0;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id y18si1188308ybk.3.2020.08.10.12.09.15
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 10 Aug 2020 12:09:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 03683221E2;
	Mon, 10 Aug 2020 19:09:13 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Sedat Dilek <sedat.dilek@gmail.com>,
	Craig Topper <craig.topper@intel.com>,
	Craig Topper <craig.topper@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	"ClangBuiltLinux" <clang-built-linux@googlegroups.com>,
	Herbert Xu <herbert@gondor.apana.org.au>,
	Sasha Levin <sashal@kernel.org>,
	linux-crypto@vger.kernel.org
Subject: [PATCH AUTOSEL 5.8 11/64] crypto: aesni - Fix build with LLVM_IAS=1
Date: Mon, 10 Aug 2020 15:08:06 -0400
Message-Id: <20200810190859.3793319-11-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200810190859.3793319-1-sashal@kernel.org>
References: <20200810190859.3793319-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=zx7LEtB0;       spf=pass
 (google.com: domain of sashal@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=sashal@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
Content-Type: text/plain; charset="UTF-8"
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
index 54e7d15dbd0d5..7d4298e6d4cbd 100644
--- a/arch/x86/crypto/aesni-intel_asm.S
+++ b/arch/x86/crypto/aesni-intel_asm.S
@@ -266,7 +266,7 @@ ALL_F:      .octa 0xffffffffffffffffffffffffffffffff
 	PSHUFB_XMM %xmm2, %xmm0
 	movdqu %xmm0, CurCount(%arg2) # ctx_data.current_counter = iv
 
-	PRECOMPUTE \SUBKEY, %xmm1, %xmm2, %xmm3, %xmm4, %xmm5, %xmm6, %xmm7,
+	PRECOMPUTE \SUBKEY, %xmm1, %xmm2, %xmm3, %xmm4, %xmm5, %xmm6, %xmm7
 	movdqu HashKey(%arg2), %xmm13
 
 	CALC_AAD_HASH %xmm13, \AAD, \AADLEN, %xmm0, %xmm1, %xmm2, %xmm3, \
@@ -978,7 +978,7 @@ _initial_blocks_done\@:
 * arg1, %arg3, %arg4 are used as pointers only, not modified
 * %r11 is the data offset value
 */
-.macro GHASH_4_ENCRYPT_4_PARALLEL_ENC TMP1 TMP2 TMP3 TMP4 TMP5 \
+.macro GHASH_4_ENCRYPT_4_PARALLEL_enc TMP1 TMP2 TMP3 TMP4 TMP5 \
 TMP6 XMM0 XMM1 XMM2 XMM3 XMM4 XMM5 XMM6 XMM7 XMM8 operation
 
 	movdqa	  \XMM1, \XMM5
@@ -1186,7 +1186,7 @@ aes_loop_par_enc_done\@:
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200810190859.3793319-11-sashal%40kernel.org.
