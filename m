Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBSFYY34QKGQEES2BW3Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43c.google.com (mail-pf1-x43c.google.com [IPv6:2607:f8b0:4864:20::43c])
	by mail.lfdr.de (Postfix) with ESMTPS id F0B3B240E3D
	for <lists+clang-built-linux@lfdr.de>; Mon, 10 Aug 2020 21:13:13 +0200 (CEST)
Received: by mail-pf1-x43c.google.com with SMTP id g6sf8569011pfi.1
        for <lists+clang-built-linux@lfdr.de>; Mon, 10 Aug 2020 12:13:13 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597086792; cv=pass;
        d=google.com; s=arc-20160816;
        b=TNsAB+yDIkB+LucMUI3M4UyPD0V97J4aOqOCEbATmumFNShjJZoZ+5cgRq1OfttTg2
         PVs7IUHlVn/sXcC7x0XFQ9Hs6a35eEwW+J0vXB9vUQfLu55bFxvC/yNAHnKveA2Qtu/O
         PuYYvNBuQmUtMOZYDG+BVP6mUPQ8Xc8E2SBWypLhuLwv3ikyZ6/66uUsMA5bJBVNlMDU
         pGzuMCjFtmrXr+2RJCSStVA16cvinuy9VX6R4mN4ZzYJx9zj9QVaGDZWl76rNUahYZxm
         /sREY68xn5kzWpiq9duI4qAK16cm35ym84CWHbcwEhAUh+4jtYenQkITBKs8gpa8owv5
         yziA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=PqqqSBnBGHoOKA2AjZhqHo7kxNq9QSezZ3K5HnGKwIg=;
        b=a108c+rdkUIDY6Sxw0+JiN6n5kQI67oGYwrwJJk4qH56eZaP5Uoy+l4OxTs6dsGxwv
         G8A2Q1y10p4sFJgKkM10PFBv/1K1bzjnCNswKXub3HZEPwTS1p75W7ZGt3XkM0FvM6zk
         8g5hc7Mxe4eQuL8kBck/z3q792lnxHhL2ne/qm7c8blYV9fOWah1ghF3LvDuLA2rd1Ek
         oHu9tzNbpxLV5bC/J07kfk8fpet1dvfNcnQWsDM6nHMakrBoAZncoD8whdfWxAklIhaC
         vkf7nlcKTWMBfg2AurJcc2wmnndAS+CInNnG7mUbnFr5mqEFlQvErhfhDJFx72hXq+02
         xvxw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="E/N77xBA";
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=PqqqSBnBGHoOKA2AjZhqHo7kxNq9QSezZ3K5HnGKwIg=;
        b=XpmnrPqMIxMNgk+GUNbm82bfok7dYFwRkWbAcWqGUf0xq8Yz4xRMnfDqB3l0W5xGsf
         vx1c8YFTD3JCqn7J5Rkgz3D40E1jfg8gSOfd+JowJmcIY49Rd35oMqfs+/1fvrupjzfy
         tiHXpX9o6vfyh9oMAQdnUJbgLYJ7H9gicd1n3AE62CdlbKlmSDCl+c97RXRq66K9ZTSC
         HjuJsVxY+g3w90hkVQkHPY3Od3mhrm/6WzDD2cRFsiWDRFO4ixiBTAigO5EAwzibKAvv
         thDknhjYDSclxv3UaXJdBHj6RsTwszC1BeAH+ob+F6jKPhf0Nl3XC1jTKCsfkaMCh8MZ
         e1oA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=PqqqSBnBGHoOKA2AjZhqHo7kxNq9QSezZ3K5HnGKwIg=;
        b=KdTBiL2WsBsnZQwEN5FK8jDvZyb4z8fioJW9GdZ853ax5Bl41kp5utfGlHfKafJzC0
         HI6sWPfsLgt7/5LYtWB+9FHQ3MXZh7BWVSB6Y0esUks3g/xQ+vx9gfwWw9bWnfSdb8yG
         re1+mGU+r0QuPjElEe8L9X34ya/DX5OWULBIrLXzcBVz4NtBxuG7etB90F1PVWwCmkPv
         fFD1jhpzHeHs3Ct3tXZfCyaw/ve4HEMuWiyovuhLrU8+bF39SV5apeWL2TDyMxI/BdqU
         Mc7fSVnxsb4rysuveOlN0Ji7oVX56sDCJDcuWb6u+r1nBDklkrs/hcbrQ2XWJy3uJ7eO
         yqzg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531XV8dtoV5CSrfclUtiQirepBS2ukjbgvnq4zrdJUlxw0WeOESV
	qY8XYPe57l0Ux2pmIe4dsT8=
X-Google-Smtp-Source: ABdhPJxrbYuMBiHGSYAjBHqNPLazl4/fMD/PxQO+g/4Z0aOATJyqq/TCCAm0m1tMSsfBZLnZ9+IAlw==
X-Received: by 2002:a17:90a:d195:: with SMTP id fu21mr789072pjb.100.1597086792589;
        Mon, 10 Aug 2020 12:13:12 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:142:: with SMTP id 60ls7254985plb.9.gmail; Mon, 10
 Aug 2020 12:13:12 -0700 (PDT)
X-Received: by 2002:a17:90a:f28b:: with SMTP id fs11mr843097pjb.34.1597086792211;
        Mon, 10 Aug 2020 12:13:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597086792; cv=none;
        d=google.com; s=arc-20160816;
        b=c0+KzDQj0lP2GlKZT2pGYtzJnjX4LPE8YgCRcdWsztbRGluS8tRu/AJ8dS1b2H2nLM
         9VEv3MsKK1yBmkOb/oJlSLBv6ZrljopmPEhmR8RyDIitqGhwrGFlfdvEL6oDcAfPRrIp
         Dtlq5h+A5OQWgD3eqaGwfKkT9m8qRpIr/nlkQu0VhEyKwQym0Jf/mArldCAqI/WrSt+0
         6VYl9mTsIfVKWSsQSa5SovSIifX+6KENnejXzS2SKoSw3OzXMj/lVkpaZI/X9Lqbr+AK
         1aFZULQgVt0R34K9BcZqEfnu0clAF9bsUk5IjeyHQ7rxyOF/OrfySMOHz0UPKtI5p74t
         DtPQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=I7S/SPKs75MFtsl+J5jb6fDd1aF9NubMkTHQxC7j29s=;
        b=S9+D9P8ERwIYAEivzOTFHy52c31XY8lyruGcrgJLMRM9qpMfakTAWzlCn4sRLvUbXg
         ZfZpY8TQwB1vc5vcECGg386rKlomkT0TB0XWY7GJvzk0Xdky0Tais0KZWb0niOGFwcfU
         XYcdx4kgemiZS75BkHDmZwfGkGxWKP4TSXaBUwanW0Y1N7Gxg3Q1eTy7lAJRi82dbpQN
         tbhubkHNLZtQHm0AvahhXewxEYo1c9FoCiVt8B2O92xEihhJ1fbM7lOpZ6uo+GJM4Fwq
         yUwuXT15mP2pl5ABaejsxK7Cg86ODZVLt7L9LXXCQiOunnr2E9A7qhA3LMRPgAp9O6Ng
         3SUQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="E/N77xBA";
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id i18si10273pju.2.2020.08.10.12.13.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 10 Aug 2020 12:13:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id B248B207FF;
	Mon, 10 Aug 2020 19:13:10 +0000 (UTC)
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
Subject: [PATCH AUTOSEL 4.19 08/31] crypto: aesni - Fix build with LLVM_IAS=1
Date: Mon, 10 Aug 2020 15:12:36 -0400
Message-Id: <20200810191259.3794858-8-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200810191259.3794858-1-sashal@kernel.org>
References: <20200810191259.3794858-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b="E/N77xBA";       spf=pass
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200810191259.3794858-8-sashal%40kernel.org.
