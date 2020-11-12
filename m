Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBU63W36QKGQEQ5S3GJY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43b.google.com (mail-pf1-x43b.google.com [IPv6:2607:f8b0:4864:20::43b])
	by mail.lfdr.de (Postfix) with ESMTPS id 6034E2B10A0
	for <lists+clang-built-linux@lfdr.de>; Thu, 12 Nov 2020 22:49:09 +0100 (CET)
Received: by mail-pf1-x43b.google.com with SMTP id r6sf4941281pfg.4
        for <lists+clang-built-linux@lfdr.de>; Thu, 12 Nov 2020 13:49:09 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605217748; cv=pass;
        d=google.com; s=arc-20160816;
        b=Z+ClT+8Dk6I3PWQoOND6sn8J2DI3aaPnLarR0ivJYrqthUEsizX5qH2aL8+xTsX/v9
         yIzDKOdmOC0HvOYVXl3AO/1bPinFRpnjbUvVctIImw7cyGLRWECay47CpK3M3rLYvRp+
         wAyXtXlSDD0+A1SPYu24iJtndxBFi1VnzTOwwYWlD69KEO0PKj8M6v6a/NXd706WrmRt
         ZiesRGVWqBMpZ93wkemOP/BJzaPDUPTQ+pRAw9xDwzs7ZuZheZG7RYTd/qsuGWTtIXvw
         oJ355LBd+2fwsVjJpWD5cwOnPdXMUXTQcTuWpZWsaCTZD7Aa8cHW49+8j0QCX6w9A3bv
         lL4A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=vkLpiVHVkkDKTDq7Ja3xVUoWKrz6yZ7qHVnTcE3Pjew=;
        b=PBCBaACgiVk3m5rIcQeKOIV5v2YoSYiNa32PH7wStTluFkoH6ZwwsHucLM69LiO6L2
         xOxBVr8M8Q0z32X5EQmKmZghLSb0u5WZ8npe6QSB1/Q66huZS8F7psH/MKaywrP0UZtQ
         5ipShGG8vQWWLfHhNFL+/AtooKV0BFTLOYLrGv9AiVjZU06tjkm6Gszo45DEiRiqBmUR
         v95xZ/zzX07nh6zVkPieaT4RBjvk+wsJXh44nClyVTujQVl7isieciNi8spXUcdiKuLr
         EZ1qdXkgwlfT8+0M83pldO/LgJl9yan1+KeV5I8HsVqjrLA6DjGyWzxdq8XvBQAXE+Z5
         y9eA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=fKK9rsj4;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::f42 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=vkLpiVHVkkDKTDq7Ja3xVUoWKrz6yZ7qHVnTcE3Pjew=;
        b=BOjge/kfP63M/1MuQ1XtXfH/1bvzYLXmJhgHRiOch+WwygduTvVVdVJ1i4d0YpSmLV
         z4R/Zm21E64MP/5y6EW9fYMG81/ic3+Ed9hjgL+Pr+/w66oG3XksfSaZuher2+kJaJ/5
         MXW6hA0pJU5jmr7P7YIUDUIh0u7ua5y/tTis3TJG8bSDJ9olcQJTn1O3Zg9y5UMgx5Sq
         7HZ7muVekzqdAFNYRAUuPQasfjeKjvgB5t+zeXPs6xA6/Ug7kJfcgB8RbU005tYno8+A
         NhztNC/NIYjufQlbDU8enTbi0EVH6JKbbzJ0KdrCxER2Z+M3eitUeIUH4XNZX8lnv1Ma
         Yzog==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=vkLpiVHVkkDKTDq7Ja3xVUoWKrz6yZ7qHVnTcE3Pjew=;
        b=PL0/tKueiTDtvJTQlVWoQzxMBX0uAOvClSx3MuSvoBjuMxpXIU4kXmOq2G3YYeIsdN
         FONk27mLfQyWkh4qORSQteGlGlo2LaL0Eop7vbZncGX8nzyuudf7e52EQCsOaemutNG5
         EYtravnzFVEiHX6HcXbhnr8rA8+i23N6g+Sd3VDvExvIzdT1LBdMaLOpeJBQOJkmz5Av
         W7UzJqw6LRl92zq4QitvqG6Gj/iF5/DmvheXlN+R4CTV/KOjBXfiTCOJzlSDW2DJpITB
         Fzp3YgMSLxROMYeKPdGNkxIeOrM4qUgAjBHPAL4/N8x0XOy3kjgFRlVdNngi0qEKszBF
         Hfbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=vkLpiVHVkkDKTDq7Ja3xVUoWKrz6yZ7qHVnTcE3Pjew=;
        b=QmFY4nBvCWW66PFHQ1WwejL7JH1mcnlqmBSbCGOFGoWu27Ue5qYp9oku88YAhqbsse
         3rkmteIItuEI00WrSwQokRAzKXFlVDaZhRwZMQ310AoVvAXbfcwL08qWSOX8FuIyf+u1
         ia4PQQGeQcktvGJBogeMKziL1bigeeTXsioSx1p3k7RxOL+L4zUKW7voaVtXXuhYKcas
         Wy/SXcfAdiMwFekpbptbHo5ek5gJYkaIkZ1JjV+HvoviNXz3+UTgtk6mIANf4Wflgxi0
         XqgaCjEZ4iId9k3MogbAs8WC9QsTjOgyz7/h3to+VMjv7tvus3LuSMTWLatdq7J25Rg/
         LhLg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531oZtBSeJgJ9aGC7WTH4jz/w8Y9ro/+psw1KchwuAu7beR/Usav
	FaaazY5HbI7D8fIN3zPosrc=
X-Google-Smtp-Source: ABdhPJx/IlEiDgCTr3CN6J+4WQmTqP83A28B9jWRGjjcyUFFBz8bDh48mA3vwFhe4xvE4I+ergshAA==
X-Received: by 2002:a65:4c47:: with SMTP id l7mr1288485pgr.48.1605217748140;
        Thu, 12 Nov 2020 13:49:08 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:ac96:: with SMTP id h22ls2000228plr.2.gmail; Thu, 12
 Nov 2020 13:49:07 -0800 (PST)
X-Received: by 2002:a17:90b:2204:: with SMTP id kw4mr1274926pjb.153.1605217747588;
        Thu, 12 Nov 2020 13:49:07 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605217747; cv=none;
        d=google.com; s=arc-20160816;
        b=GSOPRQdz0r+WiQfFChqIdKzqds60/I7D7yM4ll0bThtVFwyY9I7JYJt4PK6KnHTOjW
         SE4HVFezaq6GyoblqEb5FbXKLV/jX4I86BSHl25SkYoxAJBtmBFwS3axYNhKnqnpJt9X
         bdE7GHL9xHUaqn0hUldqZlslNC3ya9j+1y43sQDt/cXX8gd2sjaEsKFYpSqiiA0dMoZh
         DkMoLyXkn0T9W//h6W80oouyX5K9h/I0KumQDc2YwdvknHS88gVmU9eS4cn9U7TBCs1p
         zalWReUxDxN3FUL/fFM2WMkcuT7obienPQud57vB+Sc176If3wnhX8qA2K+y2vEyStzy
         RlGg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=GTBxlYQh5nK7nuyz9GGz2QSLc5KQMNKbZAAgKPoEC3k=;
        b=tCyL4WAfe01pVbi6kw8M1Eq5c5v/04vAmDVIfE+14P7vQTnr4GfddFUx6a1Kzs2UcM
         Qt+DlwCXPFD6+oWrS+7Ey9/3C5nOl2WfM2bDGsFjWBoa1Z0iZBr35LBG3SZ4xzbkXq/M
         qdGkJ3AL3wyXcNX3B8xM7mduQnl4u2qGw3Dx5mC6RFz5mFunZyiMh0MSE3/unFIxmdH8
         XvYcyx1PHWeHMjR3NKWciv/q/uhAn/IvIEyXJYV2tTleWh+Wn4vyUQPGQQtXzs1xQ9r/
         cV69cqLZk67kjoRgAbrk8PgTz473rgMQ8uFZbFGpQnpd4w0yiZ3/9+Hr9YBKxXQkGtZ5
         dWrw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=fKK9rsj4;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::f42 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qv1-xf42.google.com (mail-qv1-xf42.google.com. [2607:f8b0:4864:20::f42])
        by gmr-mx.google.com with ESMTPS id f14si327687pfe.3.2020.11.12.13.49.07
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Nov 2020 13:49:07 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::f42 as permitted sender) client-ip=2607:f8b0:4864:20::f42;
Received: by mail-qv1-xf42.google.com with SMTP id x13so3603103qvk.8
        for <clang-built-linux@googlegroups.com>; Thu, 12 Nov 2020 13:49:07 -0800 (PST)
X-Received: by 2002:a0c:99e1:: with SMTP id y33mr1838033qve.62.1605217746580;
        Thu, 12 Nov 2020 13:49:06 -0800 (PST)
Received: from ubuntu-m3-large-x86 ([2604:1380:45f1:1d00::1])
        by smtp.gmail.com with ESMTPSA id 5sm5479575qtp.55.2020.11.12.13.49.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Nov 2020 13:49:05 -0800 (PST)
Date: Thu, 12 Nov 2020 14:49:04 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Christian Lamparter <chunkeey@gmail.com>
Cc: Herbert Xu <herbert@gondor.apana.org.au>,
	"David S. Miller" <davem@davemloft.net>,
	Nick Desaulniers <ndesaulniers@google.com>,
	linux-crypto@vger.kernel.org, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH] crypto: crypto4xx - Replace bitwise OR with logical OR
 in crypto4xx_build_pd
Message-ID: <20201112214904.GA3194701@ubuntu-m3-large-x86>
References: <20201112200702.1664905-1-natechancellor@gmail.com>
 <1f5e8575-ab7e-59ea-6be7-0340df4d31c5@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <1f5e8575-ab7e-59ea-6be7-0340df4d31c5@gmail.com>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=fKK9rsj4;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::f42 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Thu, Nov 12, 2020 at 10:21:35PM +0100, Christian Lamparter wrote:
> Hello,
> 
> On 12/11/2020 21:07, Nathan Chancellor wrote:
> > Clang warns:
> > 
> > drivers/crypto/amcc/crypto4xx_core.c:921:60: warning: operator '?:' has
> > lower precedence than '|'; '|' will be evaluated first
> > [-Wbitwise-conditional-parentheses]
> >                   (crypto_tfm_alg_type(req->tfm) == CRYPTO_ALG_TYPE_AEAD) ?
> >                   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ ^
> > drivers/crypto/amcc/crypto4xx_core.c:921:60: note: place parentheses
> > around the '|' expression to silence this warning
> >                   (crypto_tfm_alg_type(req->tfm) == CRYPTO_ALG_TYPE_AEAD) ?
> >                                                                           ^
> >                                                                          )
> > drivers/crypto/amcc/crypto4xx_core.c:921:60: note: place parentheses
> > around the '?:' expression to evaluate it first
> >                   (crypto_tfm_alg_type(req->tfm) == CRYPTO_ALG_TYPE_AEAD) ?
> >                                                                           ^
> >                   (
> > 1 warning generated.
> > 
> > It looks like this should have been a logical OR so that
> > PD_CTL_HASH_FINAL gets added to the w bitmask if crypto_tfm_alg_type
> > is either CRYPTO_ALG_TYPE_AHASH or CRYPTO_ALG_TYPE_AEAD.
> Yes. This probably wasn't spotted earlier since the driver doesn't make
> use of CRYPTO_ALG_TYPE_AHASH (yet). This is because the hash accelerator
> setup cost was never worth it.
> 
> > Change the operator so that everything works properly.
> I'm curious if this is true. Is there a way to break this somehow on purpose?

I do not really have a way to validate that statement, I just figured
that the operator being wrong meant that something could go wrong that
was not intended.

> I've extracted the code from line 921 and added the defines
> (the CRYPTO_ALG_... from the current 5.10-rc3 crypto.h and the PD_CTL_
> from crypto4xx_reg_def.h) and replaced the u32 with uint32_t
> so it runs in userspace too:
> 
> --- crypto4xx_test.c ---
> /* test study - is it possible to break the | vs || in crypto4xx's code */
> 
> #include <stdio.h>
> #include <stdint.h>
> 
> #define CRYPTO_ALG_TYPE_AEAD 	0x00000003
> #define CRYPTO_ALG_TYPE_AHASH	0x0000000f
> #define PD_CTL_HASH_FINAL	(1<<4) /* Stand-in for BIT(4) */
> #define PD_CTL_HOST_READY	(1<<0) /* BIT(0) */
> 
> uint32_t func_with_bitwise_or(uint32_t alg_type)
> {
> 	return PD_CTL_HOST_READY |
> 		((alg_type == CRYPTO_ALG_TYPE_AHASH) |
> 		 (alg_type == CRYPTO_ALG_TYPE_AEAD) ?
> 			PD_CTL_HASH_FINAL : 0);
> }

Looking at this more, I think the only reason that the code works as is
is because PD_CTL_HOST_READY is 1 AND CRYPTO_ALG_TYPE_AHASH is not used.

(alg_type == CRYPTO_ALG_TYPE_AEAD) ? PD_CTL_HASH_FINAL : 0 is evaluated
first, which results in either PD_CTL_HASH_FINAL or 0.

Then (alg_type == CRYPTO_ALG_TYPE_AHASH) is evaluated, which is
evaluated to either 0 or 1.

Then we mask everything together:

PD_CTL_HOST_READY | (0 || 1) | (PD_CTL_HOST_READY || 0)

If PD_CTL_HOST_READY was anything other than BIT(0), we would have an
extra 0x1 in the mask. That realistically might not matter, I did not
have a full look over the code to see what this might mean. If
CRYPTO_ALG_TYPE_AHASH was used, it could be used over
CRYPTO_ALG_TYPE_AEAD and PD_CTL_HASH_FINAL would never get added to the
mask, which certainly sounds like a bug.

> uint32_t func_with_logical_or(uint32_t alg_type)
> {
> 	return PD_CTL_HOST_READY |
> 		((alg_type == CRYPTO_ALG_TYPE_AHASH) ||
> 		 (alg_type == CRYPTO_ALG_TYPE_AEAD) ?
> 			PD_CTL_HASH_FINAL : 0);
> }
> 
> int main(int arg, char **args)
> {
> 	uint32_t alg;
> 
> 	for (alg = 0; alg < 0x10; alg++) { /* this is because CRYPTO_ALG_TYPE_MASK is 0xf */
> 		if (func_with_bitwise_or(alg) != func_with_logical_or(alg)) {
> 			printf("for alg_type:%d, the bitwise result=%d doesn't match the logical result=%d\n",
> 				alg, func_with_bitwise_or(alg), func_with_logical_or(alg));
> 			return 1;
> 		}
> 	}
> 	printf("logical and bitwise always agreed.\n");
> 
> 	return 0;
> }
> --- EOF ---
> 
> Both gcc (gcc version 10.2.0 (Debian 10.2.0-17)) or clang (clang version 9.0.1-15)
> version always gave the "logical and bitwise always agreed.". which means there wasn't
> anything wrong and this patch just makes clang happy? Or can you get it to break?
> 
> Also, can you please give this patch a try:
> --- extra-bracket.patch
> 
> --- a/drivers/crypto/amcc/crypto4xx_core.c
> +++ b/drivers/crypto/amcc/crypto4xx_core.c
> @@ -932,8 +932,8 @@ int crypto4xx_build_pd(struct crypto_async_request *req,
>  	}
> 
>  	pd->pd_ctl.w = PD_CTL_HOST_READY |
> -		((crypto_tfm_alg_type(req->tfm) == CRYPTO_ALG_TYPE_AHASH) |
> -		 (crypto_tfm_alg_type(req->tfm) == CRYPTO_ALG_TYPE_AEAD) ?
> +		(((crypto_tfm_alg_type(req->tfm) == CRYPTO_ALG_TYPE_AHASH) |
> +		  (crypto_tfm_alg_type(req->tfm) == CRYPTO_ALG_TYPE_AEAD)) ?
>  			PD_CTL_HASH_FINAL : 0);
>  	pd->pd_ctl_len.w = 0x00400000 | (assoclen + datalen);
>  	pd_uinfo->state = PD_ENTRY_INUSE | (is_busy ? PD_ENTRY_BUSY : 0);
> 
> ---
> I'm mostly curious if clang will warn about it too.

It does not with that diff. I guess it is entirely up to you which one
we go with.

> That said:
> Reviewed-by: Christian Lamparter <chunkeey@gmail.com>

Thank you for all the analysis and taking a look over the patch, I
appreciate it!

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201112214904.GA3194701%40ubuntu-m3-large-x86.
