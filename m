Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBBVYY34QKGQESJA5UDQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93d.google.com (mail-ua1-x93d.google.com [IPv6:2607:f8b0:4864:20::93d])
	by mail.lfdr.de (Postfix) with ESMTPS id C3AB4240DDB
	for <lists+clang-built-linux@lfdr.de>; Mon, 10 Aug 2020 21:12:07 +0200 (CEST)
Received: by mail-ua1-x93d.google.com with SMTP id r6sf450113ual.18
        for <lists+clang-built-linux@lfdr.de>; Mon, 10 Aug 2020 12:12:07 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597086727; cv=pass;
        d=google.com; s=arc-20160816;
        b=RG3X3umcAaZeX4Ez42RUPZFtYvhtBnKwBmosu0rMLHge9xF5XvwUjOMWRtgqqOhzVl
         MxNYvWTnZMZIjiHh57mdSi3n3AKa3jziEOC4Qs0WU1F6CtyZQR5qkdOMlZ18xtD8qIFN
         2SrTtlRuN1rvJ5YwL1p2yydieAyh7aTr7Yx+ir4qpDhVPBTTazVkLMIPwIOUp9HyMc8D
         HKV40rqigRPWwv3Pn8nEzNJw8Tc5R2qac+ULkYJj1jT8EJ3/6HHtSHbpcc4DYOB3Xr7D
         l4RTSWx4zXOLBpbwxVYzOspYma27A/zK8Y4R2QPDxAWKuvs0ACI9Gy5/RI9sGmSbPSJY
         ZokQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=8p1cmhr6IzE8NZ4MoMN9/XaUG/m1YzRimvfFfgHp9Bs=;
        b=WvD+qOfBYh24NGrJAcrlapXE7ph/GLuOvMPBhV7Uj9ey2fvxU6rD0kgq+Vnzm3K1vd
         PF0c2QwAUMGWqHJ7v7S05InGFClqMc71R8Y9SXW/XwlzgzYgkJYoU9uxjInBCzdb9y3x
         cA47BZ2tCCwxy/+IsN8pGo8l8/+nnf6++ic0UKVcrm0d/5intf/uSrO3FvqoD+dm2KIv
         3HVLeRCn8JG5YQ3l7jNwvmbiUnQ13hNkJJGB9UoakTRAGFs+CXwvpxAeembSmE/Zwv34
         A/engE9RllYiR2ZF2fqe/1nWXwX7crl7c8A9fqMuqB906BPm/i+40NMh8HmLWt24WI1/
         /maw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=jDcgLwy2;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8p1cmhr6IzE8NZ4MoMN9/XaUG/m1YzRimvfFfgHp9Bs=;
        b=rWXf2Q2EyBG06k2cmTAkDtv5ao7yhP3k6eGvaCiQRtv6pYSNuBDJvnlmA0mtTCNdr4
         W8VbGi0xbhv1sRiIpFp7goUgJk5sPunH+Idpws9CUPgxUBcGUb2AKUK98q1d1wAvYO79
         emXEWFYy3kMNPkpRKkswy25fxvyh3lnIXnJJpHnDBRLH48kr5TbWe0CmknAf8B+4GAUF
         +IE/mw9akx8KWL7EA71/PcD6vWo6NBpr+N7vrBToz1wbIEdNFwFx4sfte02JymRL8MQN
         cX9PAtTPaNcZAwsLrXVsMnG8Nzylg+J6s9n92qz1zMelJFLLEKiMV6o06WFOID1JGlfL
         e1hA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8p1cmhr6IzE8NZ4MoMN9/XaUG/m1YzRimvfFfgHp9Bs=;
        b=GGrZ0hWZRpvic1FByxKr4W3W+N8lVhPSuM9kwT1Xp8eETVFko5bPqhibZSpqURJ0jD
         PgkhSRQiu6ZyRTyPo/CaV2j+aXKSlBbW6VFsmIX0LKTmzPeQiKzLfZ7spozPtsKWCnY/
         JYlIE7LVZPc9mobkLoQy3Q28F9PsFLCsAkgyXQZpdnDhWbe3vBif7YAoQmUBcVNk8IOj
         vfWF0dRPir8jSmt7w5feguy1UBuQ7MpDQlukaO5Edvaz66+Mp20DWjhKF+3DtfpY1cxL
         k4aXaWQOzJ/MyjHljy6SJyFEdsP8N4+VbFxso3a+5sTDbaGAC4FTbJZ5NwyR5LOvEaS9
         WykA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530y+Ya/6dkxPcBIA2dO9v0UDCuFPMq8tsOCYTU2zzTv9asCdWTd
	gdhGdBf2veELyclRSvavj4U=
X-Google-Smtp-Source: ABdhPJwuZV+E80WOz+NXN/DHj+09/gyeAoUYpjcsXvoIQqS0etEJnrF9QLMRGUbvxfHb8K9O7IhyUQ==
X-Received: by 2002:ab0:288:: with SMTP id 8mr22135396uah.105.1597086726828;
        Mon, 10 Aug 2020 12:12:06 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:7f0b:: with SMTP id a11ls1630312vsd.1.gmail; Mon, 10 Aug
 2020 12:12:06 -0700 (PDT)
X-Received: by 2002:a67:2c4f:: with SMTP id s76mr19638994vss.213.1597086726465;
        Mon, 10 Aug 2020 12:12:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597086726; cv=none;
        d=google.com; s=arc-20160816;
        b=Wn8ZIM8YGqnHrLHIIkoJrDtAmiiuja2ZBGNYCCKpymsSg/19sbdpCXE4/23eXrjg4n
         nEzv2JEhr5XuGPzwa1WPBMRgdC58HicnsGsyjyE91XJgEx+4nT+yy9yMbo3JOelzMh99
         zFPlk3wAqG7blYbxaYFYdentc3/qrZcW1y1Em0vdaQBnF2nVXKv9iVUzNeQa35hkzNUw
         SI8nUMhv6SElBi5dIww0VdWi2cNcVCj2FCbxyj3Qec6I6vOnhGEAqKfPuUzRK6f/dbd/
         rAcFTVA5PEpf/qF4dgwSTR1cdr/xW0QQmhaU7IBlrKa+/GDsg89k9Ao4+hsHpXh2oxSo
         r4DA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=8jvmknDoPUqi8vlJMd/2cQ7eRySeirVqWZJWrF5aH20=;
        b=GJoHSxjHP/f6BI9hBXenkneAMoK1TjIdHl6UEf0kZ+T6ezFau+QSoUc9bI8M8G6+Pi
         5+PDQh0ha1rUbA56KJUfVSUvMbDXKLbKiu9QZVtIHJz5PyCtf0ycgKseAwn994ljf77r
         e3il0mbJiRuoTNzEYfpRQr3cPZaTd087W6ZOH+aKBBTO4eOn7en+lnqYhGlH742MJsYY
         Hn4sAqwE7kdtDoezeeQzlg66SQFkVYEyCJRopsAet8dawRKudmawHDtTZl+XaCH85xHJ
         IJZRHmBFjSG0WDbi9bJLgR0S5mhrtGVjJtLhJATbi+VhRNKA/NndR/qvFaLSUJy36kp0
         P9Rw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=jDcgLwy2;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id k201si910676vka.4.2020.08.10.12.12.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 10 Aug 2020 12:12:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 44325207FF;
	Mon, 10 Aug 2020 19:12:04 +0000 (UTC)
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
Subject: [PATCH AUTOSEL 5.4 08/45] crypto: aesni - Fix build with LLVM_IAS=1
Date: Mon, 10 Aug 2020 15:11:16 -0400
Message-Id: <20200810191153.3794446-8-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200810191153.3794446-1-sashal@kernel.org>
References: <20200810191153.3794446-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=jDcgLwy2;       spf=pass
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200810191153.3794446-8-sashal%40kernel.org.
