Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBNNXY34QKGQE3G646QY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc39.google.com (mail-oo1-xc39.google.com [IPv6:2607:f8b0:4864:20::c39])
	by mail.lfdr.de (Postfix) with ESMTPS id EE0B7240DB4
	for <lists+clang-built-linux@lfdr.de>; Mon, 10 Aug 2020 21:10:46 +0200 (CEST)
Received: by mail-oo1-xc39.google.com with SMTP id h21sf6437281oov.16
        for <lists+clang-built-linux@lfdr.de>; Mon, 10 Aug 2020 12:10:46 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597086645; cv=pass;
        d=google.com; s=arc-20160816;
        b=TuzPDs/ir7L4IS9hhP8WLbck8sCGdetakp2Ikiagsu0DcyBvi3OBG66KQ8pCk/NRPR
         /w9RVljT37PPDFTXhtUl3ENFVGJxCsHjHd0VyK8d/Ph8EtA/7B0GP8CvAGy9cu8vcUEm
         HOchoOj9UbasGHZx2auhs/IXHqYoGRwHAfNImREln2pTQWVIU5ylS9Gd/RLnITWfLemo
         dnU4KuVhvl3gNQnbpkainQ78YThD1x234R9m7da8iKEOp988245xYmRCB2axqsoMKyp1
         AY/tBB3j4BAgSCEkckfm3Z3Byl41bB+BBhyWjpWaWzDXyVmX867vT91R4Ba7mCpqd2YY
         G1eQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=pi6HcGo4gIQuAGXuk2JturhMy68Cb7K9iLB4f3HKTXI=;
        b=fFzvvPwf7FEHWGvI13fyu2hAB/alux8md++hnfta7t1HVz6KMOHUWRwG6DH590p6Du
         OLaT6oLMGO6hmCNxSyVgFaOEL3PqQ0IxubKRvK/0NAbe3JoWvv+R4GDqc3ZZMjHi429K
         eE1JXKRMd0Q+DYJolaNYKXImTloEQByU66Foer0c2kN4i/7zzoFvdhtd6MnmZYquXt/I
         mTgZeHg7Pbg2LxM73tbabvpDgCAYSfIrrlmKaeS0EnOi2xl4PdYtTElDWkGFz97nMEWy
         MVqSYV6db6ZX24sxbm8en7lORlhYAxu4RcaHGh93rOtpNJN/0gsxuYHr1bTMaEuBvm+0
         fSVA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=paNg1M+k;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=pi6HcGo4gIQuAGXuk2JturhMy68Cb7K9iLB4f3HKTXI=;
        b=KAf4IY17ZZQ7bwPzwcgUSSXSGO32leYE+khdAuWi2fI5Lx/n6Iw6cbn/8/aH+yaXO0
         CunhevIBGt2r4TzHyAUD/CgIrTrkWDOu/y4hRQfrtdqQWsHojITW2Kn4e66CeUfkVnma
         INCvcP43nvUxvjuO+5PPv0pyJPd+hIth8VVSmAy/X5Y/oi/xyV79wHBZOoDd85KdEz+o
         KfH/6uyN/QjrCyRrlz1dAVZCTAArZd5AQxaTpvv4rC/OWytuJJ6ui9iSDdybvssEGfkm
         c/+qqUbYHiRjW17qK6gCmM5Xr8SbeFMMyAa/D0nGmXgkWBFb8VbVs/zTRz7bCO+S5gk6
         c5XA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=pi6HcGo4gIQuAGXuk2JturhMy68Cb7K9iLB4f3HKTXI=;
        b=AB6ayR9SFnywlo8E2cKrphK3E2MoTaVHyP88hWXjkIfrglpceInm4XjhMx35m+C9ja
         9OVGWDgn6aDj4w4g/UTVbb5pSs//UrkfnwxNTu4N+76bFjZTK3hxQVoU1A1dTvAgieAr
         n+un8dcHl5rOQ3fpZWQJ+coZOjLj6wZrLDNl+oY3oGY7hmKfEYTsOEjIHogHb8Oi5zwM
         u1J1Zf9aQv3X0blXuF1b/oXO4BlQi1Y43+U3h987FBPgWDzHReCwC4EVV3mOmpT2tEoI
         2LOFQWxzGmM8LQCAx0hYOXUaKqppEi1bvFwdKRbx01zbHf4lYp2g9ikLy0nID5kxwDT+
         dv3A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM53020VOdbPxz2AiZzKKY0b4gDK9Hxmi4lN/b3fuAp/CYfwJzw4tP
	wQNcq4TSi5EdB8PX3GWkxlA=
X-Google-Smtp-Source: ABdhPJxR0YHv4/jHLkf4RPCUwbZjsXwOpNr2n/Ln9F4W1Kl28tBk90ze/QOMUXsgkxK53mX2YC7/NA==
X-Received: by 2002:a9d:1d3:: with SMTP id e77mr1969178ote.186.1597086645461;
        Mon, 10 Aug 2020 12:10:45 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a4a:3e51:: with SMTP id t78ls1077837oot.5.gmail; Mon, 10 Aug
 2020 12:10:45 -0700 (PDT)
X-Received: by 2002:a4a:aa0e:: with SMTP id x14mr1978227oom.27.1597086645171;
        Mon, 10 Aug 2020 12:10:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597086645; cv=none;
        d=google.com; s=arc-20160816;
        b=x5kz1CH5KgRt5SzcGKCkzg0O7epaF+AmxJie7H3HzGeP26uzSgJELerv9GZF5uP/7r
         VwXwwsiX4vIB+66BLLFJ8YRN9dA6mxpY7Nh6amu6/Z3REXgZTgku6zsb/giE25Anq6hW
         Uu0xxXc9xnDWMUbnwiqRUBIwas4d3gRYGugx5YgNVR1d8ED+TkgC1lUxx8H+0IWbbF57
         lgovmhikivfUB64Ly+I2x5EbvWsRft5w7IekUmozVsXtlsjdE/yPZ9EzKnEb8m0Q2Psp
         JEYw0UDUIhESePHKrUxN+def5wNH8xEMq1SN2jYLfG4rXWnUwWC5cqrMIVO1TgKI2JzF
         6QvA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=DNKckS8q6BSh+nUW34vafE6vXnddXdVonWXvjicjsZE=;
        b=wSVESTMbZ7uJLWzF/g6/166sH1ATHbH0AXoDJJNUYiTJ8t2Y42DNfMYgAhYuox5sHc
         ChPUpfZXOucL1GP5N3XNTe699BFM05R3A8ywrQ8xbhNevJl2PN5qFaEzh73VHtRGGOUd
         uQVolmbA8L64mOtj3+o+Z08w6l8b0ELwT+zxOQfajWIhZJ9LI5I7va2lrmJkUzWMVgyW
         uT8sTVWEF98vn4w3V/RwIgpUoWPDdi2t8/ibtuC/fG9/BARg2kV7xMg1pwkWVpEE1cz7
         V5heDDJDfwQZjsnGQFA8rXjzSRdl3pm0xBoO9a+FdU6pZBtZgZp9foq7YQrHKquTRt3f
         VZhQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=paNg1M+k;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id s18si52622otp.4.2020.08.10.12.10.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 10 Aug 2020 12:10:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 4F08E22B47;
	Mon, 10 Aug 2020 19:10:43 +0000 (UTC)
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
Subject: [PATCH AUTOSEL 5.7 11/60] crypto: aesni - Fix build with LLVM_IAS=1
Date: Mon, 10 Aug 2020 15:09:39 -0400
Message-Id: <20200810191028.3793884-11-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200810191028.3793884-1-sashal@kernel.org>
References: <20200810191028.3793884-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=paNg1M+k;       spf=pass
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200810191028.3793884-11-sashal%40kernel.org.
