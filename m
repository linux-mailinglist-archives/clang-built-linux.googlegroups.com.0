Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBAES7P3AKGQECBU2Q6A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73c.google.com (mail-qk1-x73c.google.com [IPv6:2607:f8b0:4864:20::73c])
	by mail.lfdr.de (Postfix) with ESMTPS id 508571F2529
	for <lists+clang-built-linux@lfdr.de>; Tue,  9 Jun 2020 01:25:53 +0200 (CEST)
Received: by mail-qk1-x73c.google.com with SMTP id p138sf15704973qke.7
        for <lists+clang-built-linux@lfdr.de>; Mon, 08 Jun 2020 16:25:53 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591658752; cv=pass;
        d=google.com; s=arc-20160816;
        b=MMi1MgfiFfvhyj5WMQ59pEu9Z/HIV067lws3jcrLQwfPaUp2vLDfuilcqnq20Se5DD
         I+yBqkMxgvY05fWXwdRow5qdy9L/xDrffdr6RBg0xx0WiJkkkZ9QRRLC7Lh5ddRvyIzk
         sNNv24ILQUyE/J7hR8BWy39wer9792M8d/gcxGraKbVjS1qRdpUwOFlGfuo0CCkzJ3Ts
         99qiR9MX+jkSNADxvTQnL83913YHebQzCw8SrYzk7mXaZRdQY+SV+V+gqCFvwg2A9dh5
         o29Mh5bxkYDOZ6qJSrMoKJw+mzG02rXnRycA04kbtQhIKWPaBTTbKPIv+myVDRIjEoL2
         MIQA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=hXiEanRLg5t7rXvCanAq78+t8FAVJEb2uBB2n8sVmw4=;
        b=jGa7S6h3kyGpzwGdqwZk/njddAk5Cf8rldHTcxPMSlYz+RhByC4CcGJ7VQofX2Z8pm
         i9cDg9bslgWCMm5o1tQp+aNmj0GoNSlpzoMoumCdx5Hi0WhxaBxKHqRnG8UcP+s0izcG
         kMTq0nCNnAuoLNUvR3rnwiJ0L6vD6nb/L6bvFBM6U4UtNsyH9dXbMksdX+lAFQHZW/Ca
         qrV957QQIRgZku1hb6r0mN7Tuto6S+sKkvtugtFEH6oiArE2k+MwVqS7pe7+0vhNcG2C
         kWXjiJy7gu5BfedWPaUOmRs8jli1itijg77bPdXudB5vBDrbojeN1ibId8N9DBS1Egay
         EGBw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=Fkp1tlMl;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=hXiEanRLg5t7rXvCanAq78+t8FAVJEb2uBB2n8sVmw4=;
        b=nXwDjuZfGOAfmi4caWVBbrEHRgb98GUo9+k3JJ/Xx5HTIbMcMnU8jHbiwkoUlR0Y3F
         290+FEp5JBztyz/49sv4d0EK1qSIMK4nttSaXcNkZe9mD5p/tjIwQB5sT3kZWpDuRtTT
         LrZzWi6Qe9Otc6l4TkEooAEvRoC5GU7KrgzEs8a1J4Iukh0rNVz9wJGVGcY4R4dc+3ry
         xUSesYAIm2Vi+yW7YKKTcqWz3xtVRmLEnwWAhsXwbWZen6EjUSfciEXUZRRr9fYJX/KK
         kM0Ym1jV34GpYXFK176Wm9H3YrEtCTyD1llV4PWHwRErdTAIQhi9/hvm4HVOzrBAiNu+
         k+xA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=hXiEanRLg5t7rXvCanAq78+t8FAVJEb2uBB2n8sVmw4=;
        b=jfDjE94mGIhtPZifH3eQQ1JU+Z2xwoRI+0lY16+L6PZe6csymF0SVS4xYeohPDoek7
         3SpzYM6WbPFOInM8tSpYaH7uho59cMv7PcZTFz6JFqbR3IJoJnVtrSJRuz90RK5hskIU
         V9t2TVL7Ey66O7FQmMFp7tWcj4vMTAFg4zP+F1ifHOeBWjq4rHOUc0DIds7LZLbT9Hty
         mGwKPYMC812Hfiz/1SsrXECNV68uBE9WjvDqKH88DoGgi0ZYPypdbrcrRvnNfbxUzk0C
         +kqK74kL4cuUdnFv9cE/N3mFXB0lKW63HyMyz5z1YVaegWWFdTHUqTY5AXo3LhihTHoV
         HWEA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530E6WyorAe6yEKA3G4gTCDosuZ8ZyTftt1kzD+zoaaBdfcYbBwE
	BxgSSTHH0P0sZRgfhJHM7Uc=
X-Google-Smtp-Source: ABdhPJxk563nJUcHgtp2/AtRbwdN58ucOTmlPkMKSWroRLUa6jlkAVS+EA8pW6LesEbKFwWdxyvxAg==
X-Received: by 2002:aed:34c7:: with SMTP id x65mr27122049qtd.340.1591658752347;
        Mon, 08 Jun 2020 16:25:52 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ad4:55c7:: with SMTP id bt7ls4397907qvb.3.gmail; Mon, 08 Jun
 2020 16:25:52 -0700 (PDT)
X-Received: by 2002:a0c:fd41:: with SMTP id j1mr1099823qvs.107.1591658752055;
        Mon, 08 Jun 2020 16:25:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591658752; cv=none;
        d=google.com; s=arc-20160816;
        b=H9nlZcaAe9H+VGMpQwVgBxNFPw859R4TlXIAKNevqY3qqIXP66eP7T1t6wejVZG5Wr
         18YlOqMfzF9zhBXtmr43sREJMWXUnTqQyz4YyBSe1B/pm+8QNhiwiopN76aTGJPsRDk/
         ztjC0pm9r3Bz8kKHrYoDDXh8oTU7n62wakr8pWIS5BkknKvG5EJAOJGC+A281ZhHNRgA
         +QlbamCOC1We+i9PQyIXX5UBB1/p1FYvKxuzfcKaS0VK++kxp/Ylc8qRdzAyl1m3++zX
         8Q6uPhiWz2toO2Vd5Ckbx6LkUHsngDft1hjsDfb3sec7NggwRqFOVXZ4sq8bgNDPfWnz
         BhLQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=dvF2x76UWTYiWELw2fPgvvqOGKhDDT72req4/cioQFA=;
        b=gPWsIie1zgCfS4VMQmFDZxLIYUTsvWZEa2EXT/qvasYUqZ2QA8B7+oSGcm2IYIw2yJ
         kZKtAPqI88eytfrwYiNf0bqprALA76VXucY8tSR/eK7qlXNULDfp7+gLkmhs98dlX4iQ
         K7G3DMe33xAzhKXBQfrK/Nf6Ub0A2Z+vjngLWThg17734McCPBFaaZLZhxqbfvOHRDFf
         f/tE7chtPBazj2WUSN7f0GI5fEFWwomkNmGX0b9PTS9yX3VVmro/7glCC/s2HpUgf49P
         +fecpm+qflAkLYv56WcWKGpqXJZOZE/nTulOUhz6jVcOELEx09ADd+GTJSaHDXSzSHcz
         ETnQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=Fkp1tlMl;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id v199si368590qka.5.2020.06.08.16.25.51
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 08 Jun 2020 16:25:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 4BFEF20775;
	Mon,  8 Jun 2020 23:25:50 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Nathan Chancellor <natechancellor@gmail.com>,
	Dmitry Golovin <dima@golovin.in>,
	Herbert Xu <herbert@gondor.apana.org.au>,
	Sasha Levin <sashal@kernel.org>,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.14 36/72] lib/mpi: Fix 64-bit MIPS build with Clang
Date: Mon,  8 Jun 2020 19:24:24 -0400
Message-Id: <20200608232500.3369581-36-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200608232500.3369581-1-sashal@kernel.org>
References: <20200608232500.3369581-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=Fkp1tlMl;       spf=pass
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200608232500.3369581-36-sashal%40kernel.org.
