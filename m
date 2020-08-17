Return-Path: <clang-built-linux+bncBCUJ7YGL3QFBBOGL5L4QKGQE7LYM25A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe3f.google.com (mail-vs1-xe3f.google.com [IPv6:2607:f8b0:4864:20::e3f])
	by mail.lfdr.de (Postfix) with ESMTPS id BE684246ADA
	for <lists+clang-built-linux@lfdr.de>; Mon, 17 Aug 2020 17:43:53 +0200 (CEST)
Received: by mail-vs1-xe3f.google.com with SMTP id x20sf2243208vsp.7
        for <lists+clang-built-linux@lfdr.de>; Mon, 17 Aug 2020 08:43:53 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597679032; cv=pass;
        d=google.com; s=arc-20160816;
        b=qgu6n+Jyxky2IV1llRWqqI6MPIv7lPylw/sugXymOrriqpLsralMc7NrFoMKtPOGyI
         47JjIYMpWxdnvOiTJsDNwV17TubnuCIUzLG0nMnHEjLoCoZWbicExBiVcMpagjK3+lHQ
         3gQxdBcyih3xpIQu75gbmjabYIaqx713c0xfsVU6JzPh7GI3tsi7TOXvYWfIrKRsaxs1
         F8nWr0jy1XokMGSgDTSThyQPwqhwwa1TIwY6++4BHbeakNSiorLInZhIstWAFCu6nZD0
         6TjpJ8GrZcPv0+yesZysxniG7386BC2dFJvrA6A2uZ3jcsSrwLtp6uddn8lcmpyEaYsI
         C/hA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=qy8EgZojmyzUeENK0KP3N6iwHExjNLHZqIK0kX0adJw=;
        b=B1LWdvyDVuLnBT2Am32Rwim9pafAkOucWM4NTWZPxEs4M39tz9XP/1AT8b+wKWtuNf
         85C1iWsgIsvu+cU5ev2eWrbjGwcKC00QHx36XUmWN3citMLN/mLyx6EgB4uuAGKBQzOV
         MqwUkDgbxktp0urpwP27mxRPtM0u52khgBq+9Xf27Y5SzgnoPjd0oRne2S4jJpt8iZEA
         TI0oz35RBVqAJp+oLIGVinHDlMOx5MmkEAPo42BJg4xVr/4KBnGrTI+cdXED+lLofxwZ
         yWRalHonnVqPy96mu0X2ipmAXn65rYiS7R90PZa2xwi2428V1usjYHpI5D4TYHp/op0N
         jqpg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=umTPscVJ;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=qy8EgZojmyzUeENK0KP3N6iwHExjNLHZqIK0kX0adJw=;
        b=ZTIAhLo6kdlvfDA9VI85ApeUn2MrA3IuZzT1XLOn0F11c9LOsFwSiRhpgkQj9aqeY5
         0W31oovo/uPv02XiVa5s7tNEvvSo6N7BibCvNDx7Kd2O0YqEOXvJfFYzmgA0R6n6CJBi
         orwWnEWmEJQCrcsjhrCQt2IhNlQZEby8gExPgcHDzOkbrlzrAzKIRZavKw5pUGSQQRT0
         cw+Z5HxFHB34l8BPwOQIbqmb1pFrcfrkzgCwjEuVVODxGO7seR9LFVW9YGJojwefQeMX
         q4o15q3gzzEX2JO6kLMcR8HA2tbgmdqIG4Uk6Xie+xRFKbfC30ovMr+wJ6+QIvNS8Gjr
         D9Sw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=qy8EgZojmyzUeENK0KP3N6iwHExjNLHZqIK0kX0adJw=;
        b=iH5gtI98OZ2tXNsGiBGM2pxK6m4iP/pahH9tdG0ByjJC/SplM9aoPo2XgvwX3yZ6oM
         pMR+/v5umaNDEg88cM7v0JExA8TqW5C2ExpTO2XU87fgjVibdu51DsRH+MRuU2HvVUnu
         Va2JC16Hpx8CdMFyRUjubm22sLox+z07hEaZyEH7cw1vkArzzMIQkFZxOpJF46DCVMLA
         of/ZQF6VhRDqSyq45sQBhdiKrWPqByqT/5PdtCYwaYitU18tR6/s++GPYvNEpt1aHEJ9
         CtNRCl34ficiba7uVuh2BT6s+4SnSUvY0PmLa+aZdAFgKwe5Wk0rEF+7GLQZ9s6iDpq9
         FhWA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533/+y6oRe426RYMD8P39LTaFa1sYNCE/CuX/zyf1l8YBw7Un55s
	M2acMl/7RI2nC/x0RnGfXIQ=
X-Google-Smtp-Source: ABdhPJyNPoVSXuVV0/LNtvninya5CBe3Dm8tLhy3e3YVOmeSDy7Tvz3H+ov17QKrFCwnRSDI9Awong==
X-Received: by 2002:ab0:2705:: with SMTP id s5mr7738347uao.126.1597679032101;
        Mon, 17 Aug 2020 08:43:52 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:f415:: with SMTP id p21ls1925847vsn.7.gmail; Mon, 17 Aug
 2020 08:43:51 -0700 (PDT)
X-Received: by 2002:a67:de03:: with SMTP id q3mr9164610vsk.160.1597679031695;
        Mon, 17 Aug 2020 08:43:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597679031; cv=none;
        d=google.com; s=arc-20160816;
        b=CdnOWut3w1QlYxrxSiPa+F09ymvGvn03obwpJoEFF9WbKAtRLiDnxB7AB3x3SG7mL0
         uG++C8ASpBEezhIRXez8xLYz0mHwz1RgQm6rE3xf3krMD/9HQumKuWIfDkNUiTlP7U0S
         WZyzx6n6XRwE0ddY97g5rxDrm5ZhBzLrs2UycqSilNOCJO4mnzQdbHFrRi/0VGu2V0oP
         fnaIqDVfY0lw7v64EUgvqR2R4dbaw+cMalZdGdbzFzxNfPfmBxn6a3bSlGz67bjgX0l4
         uLRpVleZWCKHSVcqJ8e+gfdbXF+TZoWOWNCkmXVUvIZSD99E1y8qSfCNxsDkStoOS1us
         jbsQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=DNKckS8q6BSh+nUW34vafE6vXnddXdVonWXvjicjsZE=;
        b=KtDahyBXNSkqhJ5awdnmh+M/bHYMdtaHlTIraZQWxF6noeEBKC4EB0l0b8NApD9PPp
         DBFL5aVjcoimuwu6ypE+uK0csNLgLsBbTsGQTn0UoAufEcidm5mJ7EXCeR0q+FIahtUA
         ryquvE4nJBMoJAEf2GPjjvSroJF1GKFKmOjCs9ndx98FhmwOWD9IgYwjBtaryRMwzMNE
         nTSz2vg6fzrKGaMFh6Imzbc3+6g/ugCd/a8J5/VdsPLOiFHuP1m++PLItSUyJHywQDlt
         6aQ+qP9BepdZhbCe/mNu654WThZ4mKrP9u/ohg2myqQ9yo5ao0tMgu2bsa32YohIyLTc
         3xPg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=umTPscVJ;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id p8si1054048vsf.1.2020.08.17.08.43.51
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 17 Aug 2020 08:43:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 1CE1F22BF3;
	Mon, 17 Aug 2020 15:43:49 +0000 (UTC)
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
Subject: [PATCH 5.7 073/393] crypto: aesni - Fix build with LLVM_IAS=1
Date: Mon, 17 Aug 2020 17:12:03 +0200
Message-Id: <20200817143823.150078622@linuxfoundation.org>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20200817143819.579311991@linuxfoundation.org>
References: <20200817143819.579311991@linuxfoundation.org>
User-Agent: quilt/0.66
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=umTPscVJ;       spf=pass
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
index cad6e1bfa7d5f..c216de2877426 100644
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200817143823.150078622%40linuxfoundation.org.
