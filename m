Return-Path: <clang-built-linux+bncBCUJ7YGL3QFBB2GT5L4QKGQE54EGPUI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63f.google.com (mail-pl1-x63f.google.com [IPv6:2607:f8b0:4864:20::63f])
	by mail.lfdr.de (Postfix) with ESMTPS id 13EE5246BB7
	for <lists+clang-built-linux@lfdr.de>; Mon, 17 Aug 2020 18:01:46 +0200 (CEST)
Received: by mail-pl1-x63f.google.com with SMTP id c2sf10248586plo.11
        for <lists+clang-built-linux@lfdr.de>; Mon, 17 Aug 2020 09:01:46 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597680104; cv=pass;
        d=google.com; s=arc-20160816;
        b=X0jrL88BrzrzDIZhFYeb3OFbhCP0nx3r0pTxFOpFjKnxJmFYDgbrdCp0yTQwFL5ICJ
         jyNDmqMjbmR5qn+8Caay9VvCpfnZU3rdvrGsBJoTxUAlYJQ1D0Lmb0POTeoZ7apRuGh1
         8B4e1MW3dRHCOJsC+D1jj0i1yf4pgQJE9YxLaTfQtzbtaxMgjpf62zER0yyI0yD6vUh2
         Nw6vYWOVZ33QCTUdFDKkJlqy3V0aYvTYL5v4HsnXYdJWWcUOYCSN1OQDtRWcy+5D053Q
         Acczhj2CVzjbOjqdTHD68PdivGrDR9TTEDqZhDmydaBv8WF7p5vaqtsmyrW+ggJKi++q
         ybZA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=WNYwZyhkjwus93t/cIhHEapxv56BOIxn3G8fC3Q8cBY=;
        b=cSyyO+9y3SjNDTKlf0AiQ2KN3A4eHpeSI1tAMNiXEA9H7e0Kkj41gi1UEbcsQQPB3O
         OT/3GWYyp1euRZ6kLOc24d7IqVH+/qz72T8pCtAhTOwENzsTvWEAezFzdz/WutTG05bc
         SEw1fZiznq9LftrXS2TfS5RilCSPGufYZYWipj1Kq7/ygxvlLUMNrr9kjlBRwRryi5ss
         FLgVGfnvDnNfF6fTMbDoCu9fvyyciGwg0knEG7BVd+TzzEN1cHxvwBJP2GfupnPp71pY
         rL/jon8AlJ6zJOGnERpXLyvCkXFZ86OrUwMvpVZVtN2VuuJeRQ7ONH++WFcmOAbrqGPa
         odmg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=PSHqay2O;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=WNYwZyhkjwus93t/cIhHEapxv56BOIxn3G8fC3Q8cBY=;
        b=NY31rcrAxvAI61x+qry/sdMus+QcqKuB2d5t3vzxp95IV7KrHjNquX/HmXDp7i7baH
         izLDSo7Mm4qsdeizm7AHkK/JN2/nK3nEy9nkXx/r94tEKXnzroJP8ZE7LgtNGwHli0zs
         yh7pEJDhfULCp/7DYZhz20NZq69L8QJI5QlujiF5ZxJVgGUCusx0iKFX/vp0DJaSsNzb
         H98hkhRB5JzfgFrWT893/S11X2CynVIqEZ2eqk+5HGmrEgKCW1Civ6T6KNZGhoneAEl4
         mkRWHyu3zFgpXziTDFZ1+M25s8EpyrJXDSr/A6bqIDxYMIitQNlgGukjVZMS3LRqPPCG
         n09Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=WNYwZyhkjwus93t/cIhHEapxv56BOIxn3G8fC3Q8cBY=;
        b=E8glg8p00+Pc8SXBmX9xiifLxGQb9No668u8K8rWvWBGmuBttEW/Wky6p3Rlb3KriM
         JK5IQWN93gfiTnmuZ4y45d2SL442dLcLvAOAYw76vYzXASiFe1BfAL7P1GpwV2q4Ovt/
         UwGnSHYCNFHBqJPm23464hwH2grqurtFZUu0WS7fImjbzxB5dzSXqebDZh6AtKPPaA8p
         yz2NLJxL/BFXjNir9WAeZC7EPu+ZICy/nk3s3vobu2OoS5ZW3hzgtx6gOW5FKbtqYEVS
         JTNFUfZTsU008t7L8ramoaJyzds9DTVpMQ+64FxbkoBaJlZNZVqRbK5OQ2+wgSvlNfVL
         8OoQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530MtWuUJaImq2F1i7IV4Zf0NCtjwSMP9+Sy/EctSc1lXxYvDeGk
	8tvq6MuAwrPkSN4hRK5KZuo=
X-Google-Smtp-Source: ABdhPJx+s6kScH08t2OqXNXBYXf5QJ2M84m4LJFoJxfzLxXB7ENYwEdIP1wluwIgpKnbB8ERMKM7dw==
X-Received: by 2002:a17:90a:364c:: with SMTP id s70mr13694674pjb.146.1597680104712;
        Mon, 17 Aug 2020 09:01:44 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a65:620d:: with SMTP id d13ls4681120pgv.0.gmail; Mon, 17 Aug
 2020 09:01:44 -0700 (PDT)
X-Received: by 2002:a05:6a00:847:: with SMTP id q7mr11752445pfk.172.1597680104320;
        Mon, 17 Aug 2020 09:01:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597680104; cv=none;
        d=google.com; s=arc-20160816;
        b=t1rNCohuXFo2nNUP39zhn0zdUEFry9qg/c/5jH1Y3IGzvQZEsII1qUr7MLtmrdKSL9
         A3ZXnhK0BjcKbY+Iv8TIbMOPQ1QSalKdtrgNOsi3PvBrn1KVnv1VVlBl/1WEeOdiJJgu
         kplpn2/dT7l3l5SINMz8h/yklBqQkCuY5uVoSzm7txIu4Ez/b3+05j5UNcuCcZRq8VT2
         LJi2jKvdQFfYkEmjs6tbJHH9WVIG06YZKcEwwZOx0FnWeeDIwbjuwiDyhPs7qIHXeGuE
         HgnGs3bn3uAqLBx451nAtNJGOOqs1NnRwC15ecIpyC7ruxiBjmee05ZGP/MA2JLN6ilT
         lk3w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=8jvmknDoPUqi8vlJMd/2cQ7eRySeirVqWZJWrF5aH20=;
        b=p2PlfevvECRjU/28qDml1LC34QTDC3ggIQc8ncyBfILVn8nuhw0E6Lq43acneQRR7o
         27Y1UfOHRA+EJosg/uvqsrMy03rM32dUz6YXigz2qhVRWd+2LbhbPSl/8yAveIbIM/Or
         xIS+2eEWx8JSkcDSVoRp/XEyRsIoWyU5yHNj6bVK2LKtDOAyeunjlt4J5z/cJ/ghn0ZZ
         4gT23KJC0wbT0o8u4pk/4bpy/4EuBy0CsP3f0TNFd2idjz2V47jq4EOslXi9iNR5on+1
         Ge3zNoCvKOb7euOI9svukPseWA9mnWb41ZKjWjH5CKu79+gH5UO70dG1gVzoEqPTfWxp
         wy2A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=PSHqay2O;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id ml3si1091882pjb.3.2020.08.17.09.01.44
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 17 Aug 2020 09:01:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 67F21207FF;
	Mon, 17 Aug 2020 16:01:43 +0000 (UTC)
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
Subject: [PATCH 5.4 053/270] crypto: aesni - Fix build with LLVM_IAS=1
Date: Mon, 17 Aug 2020 17:14:14 +0200
Message-Id: <20200817143758.423332394@linuxfoundation.org>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20200817143755.807583758@linuxfoundation.org>
References: <20200817143755.807583758@linuxfoundation.org>
User-Agent: quilt/0.66
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=PSHqay2O;       spf=pass
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
index e40bdf024ba76..9afeb58c910eb 100644
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200817143758.423332394%40linuxfoundation.org.
