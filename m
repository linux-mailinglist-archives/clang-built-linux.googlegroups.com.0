Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBUUS7P3AKGQEQX2CAZA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43b.google.com (mail-pf1-x43b.google.com [IPv6:2607:f8b0:4864:20::43b])
	by mail.lfdr.de (Postfix) with ESMTPS id 40D691F253E
	for <lists+clang-built-linux@lfdr.de>; Tue,  9 Jun 2020 01:27:16 +0200 (CEST)
Received: by mail-pf1-x43b.google.com with SMTP id e143sf14670652pfh.4
        for <lists+clang-built-linux@lfdr.de>; Mon, 08 Jun 2020 16:27:16 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591658835; cv=pass;
        d=google.com; s=arc-20160816;
        b=jpChrAqvvjokDsadwL1wJShoUtcZdNU75uvAwm2octopGHVPZFg+osXuRBaE+VOxvW
         HdbXWMh2cQN6xbEjxRQiMaNQn1NdAQO6B9kwQ0ORqnkUdp+9fvI6vy0Oy/XVOehXK8G9
         qd82oRu718R4gZzCkjy0cFhYsLNNpQA1hyLKL7G5oVMAYQL6w2TO5KDTvkx1oRu03bP2
         lI3ajtiWKeWP2O8xSnPnI3OzjemEsuoX5iQmA8h9JDWYAJk75Mbtf1yCC5OL4lYx+ffj
         Gg6YVJxrhUk6KjfoVdlb/cYBpL/KYqpA8ts2z+WGTKXpQnhV/o3/OEXP3NZgfzI9eAqL
         kS7Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=xf4SN4Xfz0Bf064bbvqUcVMuq5zmLGychISY38Z1YdE=;
        b=KYbZaBx9IsOFHSfPOdqbRoADlqNhr9cPxFjI80LXNBz6iiglk1imYOAdlMkqDgsoBZ
         Ka1F6FnRWxGCFNruRuTIzHV8/qyP5DtBfRJUtp3Z9OtP0SQ/MSU8m+UI5m+SbA2k16G+
         KUmdPOYm7ujiqWOAQPN9o8DOXgseEK1cspGlHxpCY9j57sMF36qeLZ34tmmChD7jj5fE
         eAzkXRMr0apJvdmPxZ6t7iiWhOT0RcW4THefGySFm1OFr0n11qO1mpL29KxiXLXiXDkJ
         LpCtgiWNswcvpBLSzwaKog3ItJR4ZcHIp0LlUDITv0c0KEz8Rw0OZcK1hxdBeTTtcsJK
         PBKw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=0SPSZHJk;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=xf4SN4Xfz0Bf064bbvqUcVMuq5zmLGychISY38Z1YdE=;
        b=QD0qSCz5o9X4+uQJIo6AUuxn1xrsridJthTc0jzwXdTIFniDI3KLxS7lzo3knqZaiN
         OMO84JQ+js8WEix3H3gyJj2m9N/tZH9kaAprGhY1WdvvjNEaqFY74paorkxxsS3YygZn
         vJ3FPZ9cE9otO1YXgskpCC6hbiSNob+bgLn8p9TbhF4c22qaZF18Eis4B8H4vSN22S+R
         rDHQN9aCJdJ3dbnrzfp73cTpoLXvGhB4rspDnC0qIW2MVgYOt7dCZAKSkqQijdbA8r/m
         1/6NUCw7JLVn+BvTyK0DwXZjGV6nwKcfpQIp2ROXfp009G+RV0heEdT+biX3qoC9Uiis
         qF8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=xf4SN4Xfz0Bf064bbvqUcVMuq5zmLGychISY38Z1YdE=;
        b=GtxrzVkZf1PFYrZi6mhIq7EjM5zo1yuxeLqtoODYADEhnX7qfkdkxkGHk80aFNOhWM
         2+KJG1+ZRiqbQQcyGMcggiP9LivuyNGKjOQn8lwK3K1/chsUvYN4TNRN5zOAKqsY2ctz
         0W3y21dBmfPnhIfKldD0AgxcEthJCktIhDwqTbDzugVezCNeRu92eEtG3ZlnKTeXF3fz
         cbEROmTbdS3HIFC2kTqMv1Xn2ixHFA8doD4yqVhTQnOq1koR0w68sNdGFvaZpi0NGGIo
         Ijdt7lw46YCdg0FBH/+oQV02bBt34kklCvZOG/jSqhXf3Mb1NqhWO5jSj0L5r8xzEDgu
         1xQw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5339rYF/c7gpzyWKido1Q5isR6o8YavxPaZbKnfD04DF29Ef33Mg
	8+4d/gM/VH7BCNiyPqfizc8=
X-Google-Smtp-Source: ABdhPJwSsSvjyfQm/nLCSfAFqML4oIn2G2X46qQ7u5kIBHxBSlVJRK0qjsMrp3e2abdM4aU1TwYCKg==
X-Received: by 2002:a17:90a:3749:: with SMTP id u67mr1564556pjb.129.1591658834804;
        Mon, 08 Jun 2020 16:27:14 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:e312:: with SMTP id g18ls5657136pfh.9.gmail; Mon, 08 Jun
 2020 16:27:14 -0700 (PDT)
X-Received: by 2002:a05:6a00:14d4:: with SMTP id w20mr23660543pfu.279.1591658834449;
        Mon, 08 Jun 2020 16:27:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591658834; cv=none;
        d=google.com; s=arc-20160816;
        b=mLuLYjqQzeq4QuPVvB6PxFhFJVdO5tMzTSYQV/yzruH0N1d8ky/KhsZclqB4KYzU2v
         FJ2qQh0k8TFj+CQGC/FwJwDWMQUAq3oajI0u+E+ztkZG+h1CLyLyDQ2zGJG0Naa9R+ts
         2toB0608BIYJj95OBKCW/1DJocXrbSsDNiPQgxwMJfZpSIxQ7jhqJAEEo0pNwlcecQil
         mS2MJ0xamPVa+JVvF+d/avmSFzMgfBF/R3yJWhW6Ll2l373MDyF8pqkW4S7QT2WRk3Vd
         vS9RIADhJ/Xk+7WjPXpIltL9GF+85gQG+BEt7qyi49gtCguAhxB2W5RwJpMlmMRPBdqo
         MIAQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=PgpKfxpi5HZXo+ubEU8uBQEYC+3P4keMIiiJWgafASg=;
        b=RDYVT/4ocphw7tPPoSBaoXSwavMzHoqHIUFeQ6aV8SRupIsAnp7h7EABNSpW2KzZvC
         eHpiWzVy82yOy1Ozy0wLADwxKq5Ux9IoGHMrLJ0bjIsnUEdYmn54W4QZIY34BGIPZWzd
         V0UdjjapzWMnTKbb5pJk1UZlyzAbwTvEVrbP0VD9YJbSdiSSM3+OujXVzabf7WMoxWcU
         jlqLc2RY9UCwGwL55lIA5qkNlLBZFSI7Ysk6DppBiKhLm+M1iZVikd13CbtfnRxbxnyU
         qP+69OaVuvigJkpVACKBRtiCmB0joG/PrNxZ3UEioqoSbv0Jg8DtOSmyIhUNfGJ9OaLv
         5blQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=0SPSZHJk;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id i4si445571pgl.0.2020.06.08.16.27.14
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 08 Jun 2020 16:27:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 6E1602068D;
	Mon,  8 Jun 2020 23:27:13 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Nathan Chancellor <natechancellor@gmail.com>,
	Dmitry Golovin <dima@golovin.in>,
	Herbert Xu <herbert@gondor.apana.org.au>,
	Sasha Levin <sashal@kernel.org>,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.9 24/50] lib/mpi: Fix 64-bit MIPS build with Clang
Date: Mon,  8 Jun 2020 19:26:14 -0400
Message-Id: <20200608232640.3370262-24-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200608232640.3370262-1-sashal@kernel.org>
References: <20200608232640.3370262-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=0SPSZHJk;       spf=pass
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
index 8f383cca6bb1..623440d3d365 100644
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200608232640.3370262-24-sashal%40kernel.org.
