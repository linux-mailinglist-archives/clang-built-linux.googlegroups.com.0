Return-Path: <clang-built-linux+bncBDTY5EWUQMEBB75WYXVAKGQEOMMNUTQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43e.google.com (mail-pf1-x43e.google.com [IPv6:2607:f8b0:4864:20::43e])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C36589E48
	for <lists+clang-built-linux@lfdr.de>; Mon, 12 Aug 2019 14:28:49 +0200 (CEST)
Received: by mail-pf1-x43e.google.com with SMTP id e18sf3628857pfj.7
        for <lists+clang-built-linux@lfdr.de>; Mon, 12 Aug 2019 05:28:48 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565612927; cv=pass;
        d=google.com; s=arc-20160816;
        b=VyYDOMZhFfuHKCdb7KjTtW54xSuasXmdVafEReSILilKJYbHegbh8YJ2mu+DCYYbsG
         L/tBOsVYBGse5W/wtPq4lZLqT8bTjMxkWQ0kRvJLb25DyCzMmtGYq0Y8r+hRJ9vhv3qU
         +dm/dAwpc3qQDByf1ly2VSTCYyZsQK0asvYChie3iL4jiUDcdVUqqBNIemzVy3QzVCL/
         UvmRsBbAY1e1FEfC04aslN1ytAWjdPGf8gcs5ZogZkxilyRC/RJTslb/9/Vfk+edsuq4
         kpEvTJQxK0m6ZELzruaqhXNTktMU33mP2tX5BF5FZhbEt78DtY6tvwtc7AbeXZWtCou9
         9K6w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=rKHXcTXk8vjLyDxLZcWOsCsWRhZGWr2agqj5g0J3YTc=;
        b=EiIyR7g0/WY7a1PU76VtbPGi2Jh5qjCKRKikQ6wmNKAVjeCUGKZkNmaDtlubhdMZeS
         UmoOedqIhtHZy0gL1JvJFlAvSES31m7v9V19lQjkaFWwrz9v8Xtghbw/Yfm2E3co+kDD
         SOM8zQknWoXlcP/gKlZ2DyLaQ36MNoNvPlI40bU+xzq8qKtI0ZN49UWcODOrxPw/f5Qm
         HaS5ABgkASvVKdljHwQNfCL3GLkGPF9jsnMhSIMoSKWbJQ558blW23IwVtmutnvgJAWl
         Ud/Qz3Oht7r7wo8AsCAEW53f6B1BVL7w9BuGyK24g1L5Ttts7e+XJNZi9+hEzOr6Ssyd
         oUAw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of herbert@gondor.apana.org.au designates 216.24.177.18 as permitted sender) smtp.mailfrom=herbert@gondor.apana.org.au
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=rKHXcTXk8vjLyDxLZcWOsCsWRhZGWr2agqj5g0J3YTc=;
        b=k7zGQgR+N9Wf2SJTAi6Y2V2mYFQ0FpjOJaGYyOg5ABCFJazKgcSOO8/u59SwgOOij5
         oydULMNBTnPZU2hLBiwzZkIUo8eu9caTpVYMa8n6L0Oi7XslXMtuRjW4gn7kuF2X8ZyP
         s4GiKErBM2mRwJZ493vhoHLjXrMX4/A9WtMYp9AyIOhIz9wrknt+vBE2Z27qqo46/9lE
         OtH7q1q/A42reNwSCGrCMqRINiq261hbs6Eti52LNvIs+LyzsONU1R230SAErhkgRAIB
         l70SMLlcKENMvMDeKuH9eNmPxzV47Asmmf4lnlTfHL4bRV3lmqgGomfhg1Nzn3b7cnLd
         LmfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=rKHXcTXk8vjLyDxLZcWOsCsWRhZGWr2agqj5g0J3YTc=;
        b=Jc1McFCVcDC2sBYX79T5Ht2krBUhgGMtuCuPA0NBUS5R9vV8s3phF/BQzK3ad8+8iP
         fdgfnIMPgt3mokcRz5/LmWi/FfZ7c6Bg7+RXCJDdNfuv+KHcUrEFSAgHOp7Iur45igR/
         crarRI91PJq8mKfcCJwfSYs8hSgwrwFtA9aT5i1efl1GTe3wGC9Md9xE42uX5RaSChcV
         2MwxQP6vCoFdAUeYvk9PHZyBJcL7pCdYyCv7ZJOWZfCkoUFJ55YOdoLmDBdtRGlDtVpf
         /SnmJkeHVnvJafESVvqsZf39/kZJNUvWEDmHFkBFipE8+FJ2D+8mSRkgHOJQq/JCk/8N
         P1Iw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXQw9ABS/+Q2kfLecxdMojTqbJojfmF5PUDKXO8QNFNywkjkD/0
	B5pi4Fk4cMDKS7JgbfNklgs=
X-Google-Smtp-Source: APXvYqxAu7Ucg9rhg6lM3vz8y92DW+hwprLxHy7lN2v6u12FnFMoyuqzlKv1WaIsIFP8iUuTcXHWbA==
X-Received: by 2002:a63:6fc9:: with SMTP id k192mr29631597pgc.20.1565612927300;
        Mon, 12 Aug 2019 05:28:47 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:5f87:: with SMTP id t129ls24354145pfb.8.gmail; Mon, 12
 Aug 2019 05:28:46 -0700 (PDT)
X-Received: by 2002:a63:3fc9:: with SMTP id m192mr30471501pga.429.1565612926719;
        Mon, 12 Aug 2019 05:28:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565612926; cv=none;
        d=google.com; s=arc-20160816;
        b=f0gZr5qUEE2RQPtVgN2MXXz5WC/2Uk6oQU/sflnfYnikWvGKp1i/fq0JAMJiuFCSLs
         x8ghbjp0xYB7lujCv7tJmLBoruCehHk6PAZ8TptA0mDQwBgAx2mAPqJxSvQvXxLVSxgG
         a7ta6R/2Ee2JWDr4n4rwl4kuaT1Y2R6EmE4Rk6u9KuuV2Ui4OCKN1dUA8ynERdGXbhaa
         7iKte6/KRGtlu06Z8n+V2eAFFdfzTXcvGi5DAsHnkcMQPTxYo+xa7XGCELTrjHEWcpTH
         2o15HNGQFmAiDvV7DkQg0jsUCi+7vZpMI56Ee4fLCwhSbawJ0pSINDreUGiRHGtqdoZV
         JmlA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=OlE7WmUGLFBof2K6C8GvAwxkmxUdNvRE/CurYmwy88E=;
        b=rLuCFki++ayWdJM3/2TDvA+LGMYwvYFjMn1xQXR5CQAfyZLZbl+7tOFWEUSbNFUtBT
         yhs+ZYGYqOIRVcZ/C8HmhXH6l0rWP8iQrvSwq/d8CKsrv6qTyAZtnztMXYuOiyWcRhVW
         DCf4aG8GR6Bl31uG9R72CFTc8ggFf0naW+VpCvFNHuBuHX/vlIRhkSjdjdfgV0LyWSEo
         0LjEU8HFYdbC1x9Rsoq3P7qkOzi9cHuvymmS7u/TjofLqt2z+FGGbEoxBsZy3tU4PiON
         xOLAz+vR3g7Kn1POAgXx4RpUWXGiCQeNHVwpVyci4ww9IBwVmwh7nr1Smg6fWaddntWJ
         04Vg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of herbert@gondor.apana.org.au designates 216.24.177.18 as permitted sender) smtp.mailfrom=herbert@gondor.apana.org.au
Received: from fornost.hmeau.com (helcar.hmeau.com. [216.24.177.18])
        by gmr-mx.google.com with ESMTPS id h14si4983776plr.2.2019.08.12.05.28.44
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 12 Aug 2019 05:28:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of herbert@gondor.apana.org.au designates 216.24.177.18 as permitted sender) client-ip=216.24.177.18;
Received: from gondolin.me.apana.org.au ([192.168.0.6] helo=gondolin.hengli.com.au)
	by fornost.hmeau.com with esmtps (Exim 4.89 #2 (Debian))
	id 1hx9R4-0005M2-CI; Mon, 12 Aug 2019 22:28:26 +1000
Received: from herbert by gondolin.hengli.com.au with local (Exim 4.80)
	(envelope-from <herbert@gondor.apana.org.au>)
	id 1hx9Qj-0005Zh-1A; Mon, 12 Aug 2019 22:28:05 +1000
Date: Mon, 12 Aug 2019 22:28:05 +1000
From: Herbert Xu <herbert@gondor.apana.org.au>
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Ralf Baechle <ralf@linux-mips.org>, Paul Burton <paul.burton@mips.com>,
	James Hogan <jhogan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	linux-mips@vger.kernel.org, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Vladimir Serbinenko <phcoder@gmail.com>,
	Jussi Kivilinna <jussi.kivilinna@iki.fi>,
	Andrew Morton <akpm@linux-foundation.org>
Subject: Re: [PATCH 3/5] lib/mpi: Fix for building for MIPS32 with Clang
Message-ID: <20190812122804.GB17459@gondor.apana.org.au>
References: <20190812033120.43013-1-natechancellor@gmail.com>
 <20190812033120.43013-4-natechancellor@gmail.com>
 <20190812052355.GA47342@archlinux-threadripper>
 <20190812052653.GA47439@archlinux-threadripper>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20190812052653.GA47439@archlinux-threadripper>
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

On Sun, Aug 11, 2019 at 10:26:53PM -0700, Nathan Chancellor wrote:
>
> >  I noticed you didn't pick up this patch with the other ones you
> >  applied. I just wanted to make sure it wasn't because it was sent to
> >  the wrong person. This set of files doesn't appear to have an owner in
> >  MAINTAINERS, I guess based on git history either Andrew or Hubert (on
> >  CC) pick up patches for this set of files? If I need to, I can resend
> >  it to the proper people.
> > 
> >  Cheers,
> >  Nathan
> 
> Sigh, actually add Andrew and Herbert and get his name right, sorry :(

You can route it through the crypto tree by posting this to the
linux-crypto@vger.kernel.org mailing list.

Cheers,
-- 
Email: Herbert Xu <herbert@gondor.apana.org.au>
Home Page: http://gondor.apana.org.au/~herbert/
PGP Key: http://gondor.apana.org.au/~herbert/pubkey.txt

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190812122804.GB17459%40gondor.apana.org.au.
