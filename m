Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBIUOZH2QKGQEQ2VM6AQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x237.google.com (mail-oi1-x237.google.com [IPv6:2607:f8b0:4864:20::237])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D6D71C6748
	for <lists+clang-built-linux@lfdr.de>; Wed,  6 May 2020 07:12:04 +0200 (CEST)
Received: by mail-oi1-x237.google.com with SMTP id l2sf754345oih.19
        for <lists+clang-built-linux@lfdr.de>; Tue, 05 May 2020 22:12:03 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588741923; cv=pass;
        d=google.com; s=arc-20160816;
        b=JmVuPOI7VT7uiwnKbRvXQd/ZFRILAwSulXykTXr+WUte4z8RJny3TbzhMZUnCcHOHr
         BtWXAk0x64BchTq96I3cG7sTyafROBea+QjEPZumjomFimVtUqxdGqglr/jnvsTCcEwB
         UMFXUQlUDiXawgPvFmo3q/3zJWJQPCR/N/2gP0PYPyNMXYv9f84PH6jHLwwhqGlUt7rU
         iSw2sp/PaffwY+CCbevOhXp5grozGxhbI2Xmzj1BPjrZfyEPwB3lACSG+p43KrPNiOuK
         UCO+kBxzdvExYUXNxb9nBhIHYWSJ2EmonYx+CDr/luVTfqT/4CBBJvPR4+OkKDLi34Ul
         yusA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=UmA5wx88JIga/ofxcQrBAlNcIA33TlNgEmls3PRX8oI=;
        b=iYq1KkLY3a8Ec6Zi70coCTaJSRFZt7gM6LSOIwQWmvvYJjkZq75B/wTMuUHFZsEuJd
         tScDwg9VcljbS8cGJhMjImwEtyqz+BpZFv4NDaYXCmOVXsEJGDyxC52eGzw9MzAM4tse
         SHdSJY0EKlWmmpGgpUAFo6jQElnUzq1YnCFuJRLXXv6Ltd7lVQu9EffF3i7zeGNIsAH+
         LNESfO95fvj2CZq3La5mqhAx/+hwk3Pdisqmft0c06Rc5MeqDtwEdoEgcUei0z+yoNhx
         MAR4aW5Mf80XvfdXhAkFGCDeI4aUVZDZPGY188P6vr8++CbM58ntEGcGwk/Y3dbGHyQt
         GaiQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=PWmLLBCe;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::342 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=UmA5wx88JIga/ofxcQrBAlNcIA33TlNgEmls3PRX8oI=;
        b=WuSsDkm9o1xwIFPeGBLH60S+ITmoLnYQBl1TyP6XQ53vEdxH7zd4qMpKnwclTy6KIH
         RhjZwOAvOEQXP3gTSJ5EVwAB0qOmGuLuyofNbbrCiSHQzPjcxFpmXjqRkHBmFeoIQuJn
         VFC6bmlhc8bXPciKmvn9HgWPI3ctyrULcGbbQM8T5Ek+Vi6p7xqC1loTM+sXY5HQ5IvY
         GjQ1J41u9uRccALs5pwhTdFOjN7tkObxYsZ0Krh0Hq5cKRVY91KXnw0Pa48zwfpni8b1
         DnG6kJ/1nxhDTz/wcpebRRueDTav6t+UlqFCcix6PR2MdVVCOjXY6rkDvyzwL9aJSDmE
         cq1Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=UmA5wx88JIga/ofxcQrBAlNcIA33TlNgEmls3PRX8oI=;
        b=abq1L6J/L0n/8OtU2kuyb7F2asxkUOH8R6g0SwD6g1O7VOlLwr6V1awyCJiaRD6r6j
         NA4aMbdq9kjlxoW4wGWYVir3r/BhgMnQbBfLQSE6ykPmjAZ//NL1++nUHjccCicgqEAU
         7Adwt1r0jVQtrE1yPRgTeAj/YIu1pj93kYEZcj04v+nPIYjCJa9Ro/7pTqZiF2rt0/uk
         kAkItJQCn5YmJmnKpHT5w2x0dr++u2t5PP9uRRbFo4h5VJOi7YSWqUZQA4TMSOIqjNhG
         onsGhoO0mz/2E3vqO0m98ElnpNNGn6JLG/ezYuR894EdH0wka+Z+QbhauCRlL9+kSlu9
         nHUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=UmA5wx88JIga/ofxcQrBAlNcIA33TlNgEmls3PRX8oI=;
        b=tjcV+31iyjdq5xTIPPtgRg7yZ2v4qx0iJ0bhwp2JZcJkhDzxuXjFM0p8FSFXhsTnXS
         YTg+8OZGUexEgey+iR7dhr5SndYJcFFZU4kZQSSBCqcqZQonNROFHi01rKz7b96MJhNT
         CsKuFLVhO5wEr2bd52h7jU2cFzlkms5khAnm1KGVTXEehwKD3MB3Bkbp6mXfokdkOXYm
         DPoq/lrOhVes5+l9ffVvKD7R77JPr+FAH+uKBCI/y+l7Y7rMLUm0Q0Mt54p7BBQuEAH7
         VE2lHsYEk0VPSpmFH1bTSWe0/nfN17KUZhaklPJkb3Ga5denoGGTMJvi30TvY3tNOuRA
         b60g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0Pua0sprL2AtAdMEokS/8o6rKIKnbf3FCq2BGkPXQedeSEEZ0QHoz
	iE8oO/vjrDKl+9xtsNwVBMQ=
X-Google-Smtp-Source: APiQypJ5nPhPcBiiM/em3bDS6ehZqFyHBYHkLyAQMWM0k9CAJPO5NRsdNaYPcsx//ZnnV24fJ4CYjg==
X-Received: by 2002:aca:ed4d:: with SMTP id l74mr1539016oih.104.1588741922951;
        Tue, 05 May 2020 22:12:02 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a4a:a487:: with SMTP id y7ls51220ool.9.gmail; Tue, 05 May
 2020 22:12:02 -0700 (PDT)
X-Received: by 2002:a4a:e60d:: with SMTP id f13mr5885469oot.6.1588741922624;
        Tue, 05 May 2020 22:12:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588741922; cv=none;
        d=google.com; s=arc-20160816;
        b=UQMRM7Hu+5YAYRGiZT5IKe8Clwui1acBASXQhnQb+PlwphG1yu7WjjzAqUqhTlPFPU
         8RIl85YkJcn3MAs4TsD9UJhC0eePpFIgGqpLukz5beDQDk2g00XxFJC+mzlH4RvUtbdl
         8ylNBJUx3CQ8oKvElyOVWhE/5NywWk0kSU5AQ3/FHBxhCxHe8eA/omkfsJ+U+eb/xQ3O
         yVg2jgL3hIQQV2yG59KEK+PHyGCDdlNYOZZqT2k//CRYq35kRClrTDl8DP2gjXqLILg1
         f3YkAFrdfx9Ed+TujrOx3ADcucnghIwMEZBRM1ONENolk+gH6Pz4Z1+79pujei/RQNfI
         2aQA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=3pa+z5yRoZ1c8FaD2cxTuWWdNrsrhZtS7/bufcqIM2A=;
        b=pIQemUr3QDz78ZrtsDfXoR3cUs1RM2FJT2zoOsNjIdnrmKuIF3EkRh5clkBuPTj7Mp
         8MzUCVnKsasM5mzr56vvdnB2VDV57UHgL/QhpZdRDOrRxkuQFQKvgkA1sIUjkustMhbZ
         4e0ZAAPvW6HnEtHkHw/0B51iD0PBaHbl8OTzC2M4vhDqcRTF25eg6gl6Op4dIfHLIIj9
         YCSHAsF++Uw99FWjkKLagd75jgA6DhP0Kl6u2x9MJFNxMT5/jbMTtUe1AK1U+F5zv56H
         mpCK22fdiAMXzx+eTf8HZOpc1XAvEGWy7MTvVxbYyIzcgR8AA+wrgOPrqH0e7AhSzdyK
         6aTg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=PWmLLBCe;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::342 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x342.google.com (mail-ot1-x342.google.com. [2607:f8b0:4864:20::342])
        by gmr-mx.google.com with ESMTPS id h17si105341otk.1.2020.05.05.22.12.02
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 05 May 2020 22:12:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::342 as permitted sender) client-ip=2607:f8b0:4864:20::342;
Received: by mail-ot1-x342.google.com with SMTP id t3so405083otp.3
        for <clang-built-linux@googlegroups.com>; Tue, 05 May 2020 22:12:02 -0700 (PDT)
X-Received: by 2002:a05:6830:225d:: with SMTP id t29mr4881623otd.125.1588741922299;
        Tue, 05 May 2020 22:12:02 -0700 (PDT)
Received: from ubuntu-s3-xlarge-x86 ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id h65sm298950oth.34.2020.05.05.22.12.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 05 May 2020 22:12:01 -0700 (PDT)
Date: Tue, 5 May 2020 22:12:00 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Arnd Bergmann <arnd@arndb.de>
Cc: Herbert Xu <herbert@gondor.apana.org.au>,
	"David S. Miller" <davem@davemloft.net>,
	David Sterba <dsterba@suse.com>,
	Horia =?utf-8?Q?Geant=C4=83?= <horia.geanta@nxp.com>,
	Eric Biggers <ebiggers@google.com>, linux-crypto@vger.kernel.org,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH] crypto: blake2b - Fix clang optimization for ARMv7-M
Message-ID: <20200506051200.GA831492@ubuntu-s3-xlarge-x86>
References: <20200505135402.29356-1-arnd@arndb.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200505135402.29356-1-arnd@arndb.de>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=PWmLLBCe;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::342 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Tue, May 05, 2020 at 03:53:45PM +0200, Arnd Bergmann wrote:
> When building for ARMv7-M, clang-9 or higher tries to unroll some loops,
> which ends up confusing the register allocator to the point of generating
> rather bad code and using more than the warning limit for stack frames:
> 
> warning: stack frame size of 1200 bytes in function 'blake2b_compress' [-Wframe-larger-than=]
> 
> Forcing it to not unroll the final loop avoids this problem.
> 
> Fixes: 91d689337fe8 ("crypto: blake2b - add blake2b generic implementation")
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> ---
>  crypto/blake2b_generic.c | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/crypto/blake2b_generic.c b/crypto/blake2b_generic.c
> index 1d262374fa4e..0ffd8d92e308 100644
> --- a/crypto/blake2b_generic.c
> +++ b/crypto/blake2b_generic.c
> @@ -129,7 +129,9 @@ static void blake2b_compress(struct blake2b_state *S,
>  	ROUND(9);
>  	ROUND(10);
>  	ROUND(11);
> -
> +#ifdef CONFIG_CC_IS_CLANG

Given your comment in the bug:

"The code is written to assume no loops are unrolled"

Does it make sense to make this unconditional and take compiler
heuristics out of it?

> +#pragma nounroll /* https://bugs.llvm.org/show_bug.cgi?id=45803 */
> +#endif
>  	for (i = 0; i < 8; ++i)
>  		S->h[i] = S->h[i] ^ v[i] ^ v[i + 8];
>  }
> -- 
> 2.26.0
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200506051200.GA831492%40ubuntu-s3-xlarge-x86.
