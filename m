Return-Path: <clang-built-linux+bncBDTZTRGMXIFBB7UQ7P3AKGQE33CA26Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33a.google.com (mail-ot1-x33a.google.com [IPv6:2607:f8b0:4864:20::33a])
	by mail.lfdr.de (Postfix) with ESMTPS id C31271F249A
	for <lists+clang-built-linux@lfdr.de>; Tue,  9 Jun 2020 01:23:43 +0200 (CEST)
Received: by mail-ot1-x33a.google.com with SMTP id s4sf8626995oth.3
        for <lists+clang-built-linux@lfdr.de>; Mon, 08 Jun 2020 16:23:43 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591658622; cv=pass;
        d=google.com; s=arc-20160816;
        b=jjhvOyMzeIy2iEwDTPcAOyMhdslRyD8xJ+EwqxAAK/2LDmaLaCGdetOCt5LjB+Py7w
         OrF+4gbwJB0Q4nXc9b6GA3vqxgP+uzc+58dIIGiXat3nYv716pqHqwd9mruBZPJRdR5y
         h7c6jMuJ0fKPn7JuzWP4bBKTyWeeqJDzahWJpGM1uWCbNhyaPp/CHwpMS+wAKMpFGi6x
         4IGS1Jfbd4I8CyCVTud1HflFIJyr0dY2UER6X/ObXBrDxrhSJF89UNRB9RNpYenke5eI
         BEwXmIz60MLgGeK+EEXkEcr9WA/Eeh0X8cNV6gagVSlLJ1WRsoOMw7zD2P2mZEap7kce
         yoPQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=Jl+6R+GfqKq63qef7LQ+mSlaXUk01zMx2Z8AEd7IJok=;
        b=YhrzAeyAynSdB7Aw+hGj77nWfw/zidyl0wJyRUCwrNtD7QsM8s8s8w+v1+glWJosI5
         RfksGgbcNlgzw8zZy4YKP9Qcst4dWZIK8gHI2K/nk8+WGfxKvpVl69FcyfcBMmqh1k1A
         qlfrUbE+r6ViVu9JhQv0qFQp0D08ZFzVUARjvi7wrJynr8F+lAcJfbUY4XYylOiFFx4S
         rxhuWhAs1uLgToWCqjZcptBGNyBzy8vSKVPG5zfT/kbofRosNyYOa/aWbHjda+FNurnD
         2mdA65Rg+kX897dVdoNSjJZzeoR+fwb/MMIjrgr1T0gJlfqjtt9HJ4iGWsG4cvG+x+tS
         jhUA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=iiiZk+3A;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Jl+6R+GfqKq63qef7LQ+mSlaXUk01zMx2Z8AEd7IJok=;
        b=b6lgMRlx2NygdvufBeX6pxq1x1ymGPYlJqo9t27BqxpJsXndFX8c9wRbxwZ4Kc6+91
         LJWvfPvcTyI67f1kVsGAPCj3gAO29HjG9w53wp9O9lt2nqjqovmsdUBxa4ljdekqA/Mg
         OcB1ap16YS6dW3IVB+jMOv2dq7Smy7RDOpeGkSvjgyd/3ZZyZRe2Mjijf1qrazdcwpw5
         scM7Ryxox3fjTda+drvT6JL4fST2kwbOF91U12zhZDwGeLBgAD4Kt3OndtW3vR+HSZji
         qmBUDV3RupYhvn6+/Sjit5th+BD6qCX+GXm94mTbE6j0BOzwPKXoDZ3ICHngOXWhZZjS
         IR1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Jl+6R+GfqKq63qef7LQ+mSlaXUk01zMx2Z8AEd7IJok=;
        b=hBnP8CQolpg1RrzCEFHCxYBRqc22B0eB+/XFiZWlqkCY1G0ZA7zNQ6kVZo/GKa+AWR
         iWlQ/5MuWmbciCKNM2c5TI13Pr6WAsZ8j8NHpqxZFSgsGTPKHISzv+qMO7ynm4tz68Vg
         Z5S4OzM0FQC73nNjlP4dFh/XhJU3a7XP/71QTznLCTSYdLxWhWhGcen/8+IFI8/oEgBV
         3WgHKZAbQv4UCXJH7hQ/3aLJrTaoOJHmWLrArdVI3yvOrwEJ98vnFnnXDZ9MF4pQ5R5F
         6BtqB8M6xQcQKtQASJ28Ynbqemj8epTQp92teIeOUOsY8UFz2s+eddge0WDEx2Lce1qv
         GobQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531r1jlpyLOdTD3uxjkJNShgeksA+MJBwbyadrB7yNYQ1ZzmFnVY
	bIIB1Z+UhtEnfV0ODJlRTMo=
X-Google-Smtp-Source: ABdhPJyWcjOue1mrzAxmytBjmU3rOVaEnQSkh0fYXBVOicGhzTsNx03KR7weA7Yp2bXOKG2FPblpxQ==
X-Received: by 2002:a9d:26:: with SMTP id 35mr12601577ota.352.1591658622733;
        Mon, 08 Jun 2020 16:23:42 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:3116:: with SMTP id b22ls3872254ots.6.gmail; Mon,
 08 Jun 2020 16:23:42 -0700 (PDT)
X-Received: by 2002:a9d:6a58:: with SMTP id h24mr3668744otn.277.1591658622398;
        Mon, 08 Jun 2020 16:23:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591658622; cv=none;
        d=google.com; s=arc-20160816;
        b=CCHeY7Ugfwc6pyaIU+BZEnfHixb3Kbri+t5AydO/P/52cFVBLE/I3KWn0OATRLELyh
         5yPkUvFgus9Fiq/ozGUjNSx6vVcWGYVstaWuJAI7vOs3uTgQA5I66gbuuRXPsg0RYC0B
         nYmqRSVIBcIbNgNiWon7v4Y00nN2nZZnz4B5tUUOcmQDI8t8qKQN+due79ck75CTBkL2
         ioxouyPBe/sIBvD9kfFzpvcNW4IAPRAGtrg6RNIgAdge0ZHU04ZWZyaIIx7G53/GhiNo
         lfzZTP9AddvVn4dl8upQ3OVC0a+wZg7xmp/al6vEfOoF26SsHbQT+vH07Ev8Kge/l0pd
         awkQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=dvF2x76UWTYiWELw2fPgvvqOGKhDDT72req4/cioQFA=;
        b=H4NQbdRuNZi10Fo1ZXCkrB0avNJV6JUECWe3JBBtTeqE9fmPQidr/6iHoBiFAAa+od
         x+BxfWA08IJxYLKg99YWju5rkywK4Oxk5WksmRHE/GwiVIeLwjhoG0qIsiMYswdViJn/
         Cw7XE20Dtjab6v/91S0roT+KlvuiGXFee2bEbxfJCc44Ke5GyriAPw8sSEXD3lmqP/si
         q6fzzDJhSgak+vuXJZh/rgwkc6Q3G/ErRKxtY5/ojxx8cXlSR+VAMxaZpeMfhd+6Za/k
         5/eqXwi6APOp+891AHZg4l89xkY+X+gsxZ7MADJzUPfCEKICCCRQX1/Y4cK+kFnSeTlU
         CCew==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=iiiZk+3A;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id o199si730177ooo.0.2020.06.08.16.23.42
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 08 Jun 2020 16:23:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id E96B82086A;
	Mon,  8 Jun 2020 23:23:40 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Nathan Chancellor <natechancellor@gmail.com>,
	Dmitry Golovin <dima@golovin.in>,
	Herbert Xu <herbert@gondor.apana.org.au>,
	Sasha Levin <sashal@kernel.org>,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.19 046/106] lib/mpi: Fix 64-bit MIPS build with Clang
Date: Mon,  8 Jun 2020 19:21:38 -0400
Message-Id: <20200608232238.3368589-46-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200608232238.3368589-1-sashal@kernel.org>
References: <20200608232238.3368589-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=iiiZk+3A;       spf=pass
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

From: Nathan Chancellor <natechancellor@gmail.com>

[ Upstream commit 18f1ca46858eac22437819937ae44aa9a8f9f2fa ]

When building 64r6_defconfig with CONFIG_MIPS32_O32 disabled and
CONFIG_CRYPTO_RSA enabled:

lib/mpi/generic_mpih-mul1.c:37:24: error: invalid use of a cast in a
inline asm context requiring an l-value: remove the cast
or build with -fheinous-gnu-extensions
                umul_ppmm(prod_high, prod_low, s1_ptr[j], s2_limb);
                ~~~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
lib/mpi/longlong.h:664:22: note: expanded from macro 'umul_ppmm'
                 : "=d" ((UDItype)(w0))
                         ~~~~~~~~~~^~~
lib/mpi/generic_mpih-mul1.c:37:13: error: invalid use of a cast in a
inline asm context requiring an l-value: remove the cast
or build with -fheinous-gnu-extensions
                umul_ppmm(prod_high, prod_low, s1_ptr[j], s2_limb);
                ~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
lib/mpi/longlong.h:668:22: note: expanded from macro 'umul_ppmm'
                 : "=d" ((UDItype)(w1))
                         ~~~~~~~~~~^~~
2 errors generated.

This special case for umul_ppmm for MIPS64r6 was added in
commit bbc25bee37d2b ("lib/mpi: Fix umul_ppmm() for MIPS64r6"), due to
GCC being inefficient and emitting a __multi3 intrinsic.

There is no such issue with clang; with this patch applied, I can build
this configuration without any problems and there are no link errors
like mentioned in the commit above (which I can still reproduce with
GCC 9.3.0 when that commit is reverted). Only use this definition when
GCC is being used.

This really should have been caught by commit b0c091ae04f67 ("lib/mpi:
Eliminate unused umul_ppmm definitions for MIPS") when I was messing
around in this area but I was not testing 64-bit MIPS at the time.

Link: https://github.com/ClangBuiltLinux/linux/issues/885
Reported-by: Dmitry Golovin <dima@golovin.in>
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
Signed-off-by: Herbert Xu <herbert@gondor.apana.org.au>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 lib/mpi/longlong.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/lib/mpi/longlong.h b/lib/mpi/longlong.h
index e01b705556aa..6c5229f98c9e 100644
--- a/lib/mpi/longlong.h
+++ b/lib/mpi/longlong.h
@@ -671,7 +671,7 @@ do {						\
 	**************  MIPS/64  **************
 	***************************************/
 #if (defined(__mips) && __mips >= 3) && W_TYPE_SIZE == 64
-#if defined(__mips_isa_rev) && __mips_isa_rev >= 6
+#if defined(__mips_isa_rev) && __mips_isa_rev >= 6 && defined(CONFIG_CC_IS_GCC)
 /*
  * GCC ends up emitting a __multi3 intrinsic call for MIPS64r6 with the plain C
  * code below, so we special case MIPS64r6 until the compiler can do better.
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200608232238.3368589-46-sashal%40kernel.org.
