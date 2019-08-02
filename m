Return-Path: <clang-built-linux+bncBDTY5EWUQMEBBX4ER7VAKGQEPX2BYGI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3c.google.com (mail-yb1-xb3c.google.com [IPv6:2607:f8b0:4864:20::b3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A9107EBB2
	for <lists+clang-built-linux@lfdr.de>; Fri,  2 Aug 2019 06:56:00 +0200 (CEST)
Received: by mail-yb1-xb3c.google.com with SMTP id 63sf53776246ybl.12
        for <lists+clang-built-linux@lfdr.de>; Thu, 01 Aug 2019 21:56:00 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1564721759; cv=pass;
        d=google.com; s=arc-20160816;
        b=Fc3gqivEA6GS6aRugiX/sVavl9I6ieaRW8x3x7A0+Kj1V7ryKIT4Eu3LtQcnlGOKep
         9bXC1SXwxxqWCstMM2hFDMQaNHnW+/yfaDmWe9NMTBFpFWY+7xHnmlgiY3HTruga+nDL
         to6FrqAcXxY5QProPuCKv/MHLI7wP0K2bTjlReaIwaPgBNuynpxpgj9G3AeyhwfVVLzF
         aDQK7wksOuroVjdVjdznqjLzdGKlTz/JYQjTjwdHIEebXJKc2tHGlNBQtsInP1wT9s2S
         hdDNgPoi+QAMfhrRXrilXGT8ad6jzlFb1pBRwZZbN61NRhauZ8AU5ky6IQ6pv0tXuZp1
         KYFA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=6SAXl7/teV0cU9Tqii/0LFz/K0hvp73StxDbh3mSv24=;
        b=viQgLmhny6eGSIPDgCRxDfquqDxeFbE2g7I4i6UXNyTOMT1uvvEX+WebdCjfpsnYDN
         ZhZqZnNHtRB7CY84Et3AW08Fp/ifkbM3nkfb8pmAIa4N5LKWgBvGwzbuqLpMOD8GsF9e
         grB0z/VFYwb3bpflfg2lkHH30v4Xe696yifRs1M8rkwBdvX44k/61AXRXFd497TLRUa1
         aSTLEMwS40TwIkkiS0+lfoKPSy1awOy3yyHpqwM1uw/8HLrRwkD3ykCsztHLGGA1cUVQ
         dwxvTwxx1Vb6cgbeN6waN7cCme1E4FkIfez2XMuM8eEGnNdIW9GUmZef4MiGSOmIXuJV
         sKCg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of herbert@gondor.apana.org.au designates 216.24.177.18 as permitted sender) smtp.mailfrom=herbert@gondor.apana.org.au
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=6SAXl7/teV0cU9Tqii/0LFz/K0hvp73StxDbh3mSv24=;
        b=l1uviNCRoqFs4RvXTB5/82Hdc6NOJSBWhF5cGY/nZ9OwONFa0vA4Q5tUhrPFeqGyYv
         +mWKNaPlYAGXzeHZa6v80/iHLC8FbcXMDijmr909xWowPSpyl/XaXnVj2I74Utfs8C1M
         0HzfDDtzHkOyZEyUyQuv4X3C7/+Z/5gnghi0EJeKu9p/tmgfPc68qGP9jGmFEJqCFXR/
         umBETgMt6gHATPjQb62usGWL0U8A1TVP637aAbsDOvkToBY8XJ+bvF+hg4ffRBjiS7rG
         WFFiti42YlhgOsh27vk05msDly/NOJYLm6w9GmyNybxPRFLb+hx8q/iw/Iewy8IRXreF
         LYHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=6SAXl7/teV0cU9Tqii/0LFz/K0hvp73StxDbh3mSv24=;
        b=VdBXO97xd4csWK4e7hnqL3GMkgUEuCe9puy2+KG+o/NnaRM1g7EW94ah/qCYVFPy2X
         8ABT8vJQ9IfEKKQzobQjgrP8lGHgV4qcDYXqsX0SGoJitf5lXeiQd5MgVxFHyc6minJC
         xznMlji0rkc9bupjZHz5eS7rCbzLGuPKspo9T0yoOYknJd2PM6N2g4CjdEx6N6YbtQbR
         tSiI3H9PJrrTOkVsQyAMgyWoyB7JtcVUmbGiM7z1BwMTxF8vaz8KPHDMUkX4Bn0PseHI
         MyO8ew1ksEU8OOyx70JZnsxuihmV4PKPyBrLv2QM1iZWO/qdnoPf7/YSB32Lp313PqZ6
         HjtQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUKQKZY7ugTnLRjeNym3UGNukOjUwbAep3F17S2Wa7RtItLmsGm
	FdLFoBtZcz9Kr9HH98Kppfs=
X-Google-Smtp-Source: APXvYqwuONbSDmbIsNeWA4MDoqDP3ZVSHw/tYd1wS0jV5hDOI7eSVey4wqWUBY44/UodbtcSuunAWw==
X-Received: by 2002:a81:4ec9:: with SMTP id c192mr74278577ywb.356.1564721759393;
        Thu, 01 Aug 2019 21:55:59 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a81:8544:: with SMTP id v65ls12801275ywf.16.gmail; Thu, 01
 Aug 2019 21:55:59 -0700 (PDT)
X-Received: by 2002:a0d:eec3:: with SMTP id x186mr85309446ywe.510.1564721759078;
        Thu, 01 Aug 2019 21:55:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1564721759; cv=none;
        d=google.com; s=arc-20160816;
        b=KaAlND4sXhy9aGyp63xAB2N/4R6I3tZp7qWx9iCXOIEDM76Mk7zeG23TJ8uTFOLzfF
         QbRTwLEh3N+Vd8dtPjeEj2Av8YSourldx/rUlLsYl0ZLKBkkBkytql/aDmkKSFKBbK0E
         2JB53ohwy/iRaK8Rg5+LzMYwAU9xVJjGX3VnR0RBVVAJWd2wLPdCqr32kKw7wVTs5Qdv
         cAgT4aVqbGVpjQ2dKHLSn0ivJdwAbROIqz8xscTqdqQVOjMfLWgheKawpkGn34TVJ+UH
         GiPKuEXWExI33huCneMTd+yPD7HsBmnbVc8+tFFNk52YxK7GpDiAOl6+kBcQCBsAAYj9
         4K/w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=bbQd0YwDlBvOigeYv/34lLtbxkmkH6YCseDPDvCPEH0=;
        b=wjA5iDCy8hBbe1Y5BTPBWlk0KErUawUft4NuW7x9elkqQ+1MD95x9DPsXY5SDZIoF3
         zpycrHHsFrNk6TOUgM5isqItUoW6+LNZV9WztSLNqHvpu0X6TVJdJ/0W+UOgozhTFutv
         cWUWg2ilo397JkDw943cuE4Kb9j2CgPly+LkTnLMPZeFLq67pImu1zaXIfomAqZYsb+E
         M0oFfgFidBr8xDNIBcOvdgfh5ZuFQPaRJrfWSqHBXTN7t8l4zmxbC38UAz1qqgTBcmgl
         r5qzEVxBkR248FqCHzpwX26RUJj7jRnLkYSn8tbzVXyv2Di5xdTfPTWmjkuovhgJc26h
         0QQw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of herbert@gondor.apana.org.au designates 216.24.177.18 as permitted sender) smtp.mailfrom=herbert@gondor.apana.org.au
Received: from fornost.hmeau.com (helcar.hmeau.com. [216.24.177.18])
        by gmr-mx.google.com with ESMTPS id f131si3057086ybf.5.2019.08.01.21.55.57
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 01 Aug 2019 21:55:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of herbert@gondor.apana.org.au designates 216.24.177.18 as permitted sender) client-ip=216.24.177.18;
Received: from gondolin.me.apana.org.au ([192.168.0.6] helo=gondolin.hengli.com.au)
	by fornost.hmeau.com with esmtps (Exim 4.89 #2 (Debian))
	id 1htPbE-0006IB-Tb; Fri, 02 Aug 2019 14:55:29 +1000
Received: from herbert by gondolin.hengli.com.au with local (Exim 4.80)
	(envelope-from <herbert@gondor.apana.org.au>)
	id 1htPb9-0004ji-79; Fri, 02 Aug 2019 14:55:23 +1000
Date: Fri, 2 Aug 2019 14:55:23 +1000
From: Herbert Xu <herbert@gondor.apana.org.au>
To: Arnd Bergmann <arnd@arndb.de>
Cc: "David S. Miller" <davem@davemloft.net>, kasan-dev@googlegroups.com,
	Stephan =?iso-8859-1?Q?M=FCller?= <smueller@chronox.de>,
	Ard Biesheuvel <ard.biesheuvel@linaro.org>,
	Eric Biggers <ebiggers@google.com>,
	Vitaly Chikunov <vt@altlinux.org>, linux-crypto@vger.kernel.org,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH] crypto: jitterentropy: build without sanitizer
Message-ID: <20190802045523.GF18077@gondor.apana.org.au>
References: <20190724185207.4023459-1-arnd@arndb.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20190724185207.4023459-1-arnd@arndb.de>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-Original-Sender: herbert@gondor.apana.org.au
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of herbert@gondor.apana.org.au designates 216.24.177.18
 as permitted sender) smtp.mailfrom=herbert@gondor.apana.org.au
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

On Wed, Jul 24, 2019 at 08:51:55PM +0200, Arnd Bergmann wrote:
> Recent clang-9 snapshots double the kernel stack usage when building
> this file with -O0 -fsanitize=kernel-hwaddress, compared to clang-8
> and older snapshots, this changed between commits svn364966 and
> svn366056:
> 
> crypto/jitterentropy.c:516:5: error: stack frame size of 2640 bytes in function 'jent_entropy_init' [-Werror,-Wframe-larger-than=]
> int jent_entropy_init(void)
>     ^
> crypto/jitterentropy.c:185:14: error: stack frame size of 2224 bytes in function 'jent_lfsr_time' [-Werror,-Wframe-larger-than=]
> static __u64 jent_lfsr_time(struct rand_data *ec, __u64 time, __u64 loop_cnt)
>              ^
> 
> I prepared a reduced test case in case any clang developers want to
> take a closer look, but from looking at the earlier output it seems
> that even with clang-8, something was very wrong here.
> 
> Turn off any KASAN and UBSAN sanitizing for this file, as that likely
> clashes with -O0 anyway.  Turning off just KASAN avoids the warning
> already, but I suspect both of these have undesired side-effects
> for jitterentropy.
> 
> Link: https://godbolt.org/z/fDcwZ5
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> ---
>  crypto/Makefile | 2 ++
>  1 file changed, 2 insertions(+)

Patch applied.  Thanks.
-- 
Email: Herbert Xu <herbert@gondor.apana.org.au>
Home Page: http://gondor.apana.org.au/~herbert/
PGP Key: http://gondor.apana.org.au/~herbert/pubkey.txt

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190802045523.GF18077%40gondor.apana.org.au.
