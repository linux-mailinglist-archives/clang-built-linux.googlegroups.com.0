Return-Path: <clang-built-linux+bncBAABBPPDU77AKGQENQLIQKI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43a.google.com (mail-pf1-x43a.google.com [IPv6:2607:f8b0:4864:20::43a])
	by mail.lfdr.de (Postfix) with ESMTPS id 92DB52CE970
	for <lists+clang-built-linux@lfdr.de>; Fri,  4 Dec 2020 09:22:22 +0100 (CET)
Received: by mail-pf1-x43a.google.com with SMTP id x26sf3267964pfo.23
        for <lists+clang-built-linux@lfdr.de>; Fri, 04 Dec 2020 00:22:22 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607070141; cv=pass;
        d=google.com; s=arc-20160816;
        b=NM0yAKRhr25Vb94W21tQwq2fsaEPSjPXtsf4afwvvbnX5qFiHsBPW28tSBj8z+EkFa
         wldQw1pOEqXGUAJTKYOg6Ek5VPVtTdAUev38qegPifKUflpLnFyp40WL/U+oERurraXZ
         6RSfdr0nkjxmU+nkL/PpVQyPfly6jvRSKWfhWO0WNIEfGpZsu34NC66v30VNkC/qP4Kg
         o6NXaJOsfEtBff7HElsvePRaMnqEzT+Fpv26K0uEHGReeW5pHN++l1A/Y2PhMkNskikS
         8dxaNua3+x7i9Gf0elPWRwMah3ePPRP4kYyhguVBDiA9XKQAmg2X2dZPvbg3EK/0SF02
         rt+A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=fzwMiwOiZ9wNblSErsKVUHtoxUg7DuPHwxMdsBVlCNY=;
        b=kS3D9BMjAEnGBN5b4sVLC4hDjzn9jZduG3qPNpizzc7TxkSBq4ujhy0zIoNzkCO8B8
         /U3CvwZq20+BKFbESvvtEuMv+YQkwpZ1nCypHVrk1GEkQWWDZwNiyEzWqkYCDFbOoOcJ
         7dL/+gWuYzyZYSeC9q6vb1COch+mIFxeOAD0wykN9lXAqHEJdovL0oOXBX6XAiIQRI7A
         YbN1bivnF1O47+33eWR4ydoKlEfIcI26VlIVya3YIcMOrHWlAp4WgLVGjvfdD0MrrvYJ
         kS5W5b4YNNRW5/3pMHw6AjEAazn3t2ycVkmvzVstic3wI7+jLIFXaqElDVGFyt3ZOm7r
         vrtA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=h4Q7Sa7D;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=fzwMiwOiZ9wNblSErsKVUHtoxUg7DuPHwxMdsBVlCNY=;
        b=l4xsJUZQ51wFLYgOisKMaEqYiZIr9GYFj6xvAWf3ZFEaj8GdcLHl7jOd5tNLQzGw1M
         3DLirqe3V6ro1srnq2pCEIhFFcJ6UOvV6h1zMvzOH3deHG+Fn8yVBla+FW9xwDqZ2utH
         dS/DULIoqfgJRU6pkXQhHtKFPX8duRYYgc+u7oGrgY5PK+UQckinPRVP8IhsStSw90mo
         NO8pp3Ywkxr1ADCc5go0b6qK2KnTbA7e5snzq0QTiTJjHjabYyxGoUojbvIQOgmNeg/B
         5Z0nvHj4xrOXkvhBXm2/sLhCvsS8wc1zaKWr3pUpwIYyyei5DWnpHuLLUB41jkehkGGV
         AE3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=fzwMiwOiZ9wNblSErsKVUHtoxUg7DuPHwxMdsBVlCNY=;
        b=PD5ckdZoCZPwtZ/X03fCj0Id2JNU8CFhWCnu8H3nXEM9J5dsn9LAF73vWy3GP16KJl
         9aD517Z7HY8jK5NiG55Pv2xg2OaMUKj1g1NudmYrJtp6zHgAMa0LEMeXJ3T2lVCqQp++
         7a7Nl2ko0aJ/KCRGWxytwRLsc+NVoxaZBFltg2W9I1XUozdAnraM0z+RSpYUqwrq170Z
         zmu1MaNPq3xKiiziMfnC6ul+X5J23PzKB0zaUZF7IU+pgOQHTqY1tQ5NHip6kiF+sN9q
         Of/CrntEuJX2ebBBzLVjM1Y9qOzIZzPnATtcKA8dUHhd9Tb2rdnRPfZoLr1/JRswX8wT
         3eJg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM53246Plf1vH8y2Dm7BAQw0nNfq3a0GHSwpNWXh4VQLFHnKGMTKV6
	5BPDCdeDRfjMlmA0Nq8KSkc=
X-Google-Smtp-Source: ABdhPJwGVpT+D0UWIzIxd/HuwcB/tva3VZHxkWC2aGSnUhUn7fYK9guJ5JMX60HB3LAxORjoKUFPYQ==
X-Received: by 2002:a17:902:6b02:b029:da:c6c0:d650 with SMTP id o2-20020a1709026b02b02900dac6c0d650mr3092302plk.74.1607070141235;
        Fri, 04 Dec 2020 00:22:21 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:7c7:: with SMTP id 190ls3013033pgh.8.gmail; Fri, 04 Dec
 2020 00:22:20 -0800 (PST)
X-Received: by 2002:a63:d5b:: with SMTP id 27mr6592980pgn.185.1607070140595;
        Fri, 04 Dec 2020 00:22:20 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607070140; cv=none;
        d=google.com; s=arc-20160816;
        b=frT2X9soDGqlQ6KIFPvPltGMhQNIKWPaulu1EoRThPIzU1wirM0KFsSQHYnBaRGEKe
         1bs2z6RnXjpDzDyObA0zkGwmXKLlwnVGsVSYjvZgEaFnl+07OWlS77YaFO4eamxlZnpe
         hfrtpts2Vor4qMvLNdIzK71bMlt6zbOdqcj1CtpQwkqNMH2QEA7HuCf8PR/+NT0Ak9YE
         xvcrYj575JZ/xOdLWJsW/+Bvn7KDZf8t2a4JznLcAqzDNfCMeLiSEhjxSUc0n2TDjtnn
         y0Rw8bek9FMxTunVdGGsjR3vANk6G7X4K2XhmQ3gUBG7OlHNsDttr09SyeLEJO5qW1uB
         ryFw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=8PmN+ejN0EQm7ddDTq6YHGVoCQf0zMx389TqURYtSEg=;
        b=KmUou/L2LnEE/tSvt9qFOaw/JqBNZAmWYDJY2z9Xo3ySk+pO46FmoigGC18l3lYZYw
         IIYpnJE6juQHu6X7Uwu7BLrFBPJfGnd0wxJWvycGctXVOK/hZa6E8mQ013Iy0KdrWC6K
         b95evSWNBAt/uXZbeEC0UZtjTjQFEPjMeYHAYBzNj6l9q8NXtaNbB9fGS0YH3famQ38J
         u6OroJ8J3MzEzRTR+FPFWtAO2SsPOJ+wWaCdaWGzZQpPi+NdnES7Js1rxsMCfzRnYetW
         4P0x7+ieVyCTJwdXrJfOJP4z+wiy0gmu21NxBJjZNPzQJqC4OpREW2ypGo4w64zjzIRk
         97eg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=h4Q7Sa7D;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id mp23si92708pjb.1.2020.12.04.00.22.20
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 04 Dec 2020 00:22:20 -0800 (PST)
Received-SPF: pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
X-Received: by 2002:a05:6808:9a9:: with SMTP id e9mr2437405oig.4.1607070138915;
 Fri, 04 Dec 2020 00:22:18 -0800 (PST)
MIME-Version: 1.0
References: <20201203222956.1091606-1-arnd@kernel.org> <1607047828.4733.172.camel@mhfsdcap03>
In-Reply-To: <1607047828.4733.172.camel@mhfsdcap03>
From: Arnd Bergmann <arnd@kernel.org>
Date: Fri, 4 Dec 2020 09:22:02 +0100
X-Gmail-Original-Message-ID: <CAK8P3a0ZA4cLNL3kVN9qKjHyhWJXOA2LtsEakN0V9rcTBQaVNw@mail.gmail.com>
Message-ID: <CAK8P3a0ZA4cLNL3kVN9qKjHyhWJXOA2LtsEakN0V9rcTBQaVNw@mail.gmail.com>
Subject: Re: [PATCH] media: i2c: fix an uninitialized error code
To: Dongchun Zhu <dongchun.zhu@mediatek.com>
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>, Nathan Chancellor <natechancellor@gmail.com>, 
	Nick Desaulniers <ndesaulniers@google.com>, 
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>, 
	Sakari Ailus <sakari.ailus@linux.intel.com>, Arnd Bergmann <arnd@arndb.de>, 
	Linux Media Mailing List <linux-media@vger.kernel.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, tfiga@google.com, 
	sj.huang@mediatek.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: arnd@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=h4Q7Sa7D;       spf=pass
 (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=arnd@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

On Fri, Dec 4, 2020 at 3:10 AM Dongchun Zhu <dongchun.zhu@mediatek.com> wrote:
>
> Hi Arnd,
>
> Thanks for the patch.
>
> On Thu, 2020-12-03 at 23:29 +0100, Arnd Bergmann wrote:
> > From: Arnd Bergmann <arnd@arndb.de>
> >
> > Clang points out that the error handling in ov02a10_s_stream() is
> > broken, and just returns a random error code:
> >
> > drivers/media/i2c/ov02a10.c:537:6: warning: variable 'ret' is used uninitialized whenever 'if' condition is true [-Wsometimes-uninitialized]
> >         if (ov02a10->streaming == on)
> >             ^~~~~~~~~~~~~~~~~~~~~~~~
> > drivers/media/i2c/ov02a10.c:568:9: note: uninitialized use occurs here
> >         return ret;
> >                ^~~
> > drivers/media/i2c/ov02a10.c:537:2: note: remove the 'if' if its condition is always false
> >         if (ov02a10->streaming == on)
> >         ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> > drivers/media/i2c/ov02a10.c:533:9: note: initialize the variable 'ret' to silence this warning
> >         int ret;
> >
> > I assume that -EBUSY is the intended error code, so use that.
> >
> > Fixes: 91807efbe8ec ("media: i2c: add OV02A10 image sensor driver")
> > Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> > ---
> >  drivers/media/i2c/ov02a10.c | 4 +++-
> >  1 file changed, 3 insertions(+), 1 deletion(-)
> >
> > diff --git a/drivers/media/i2c/ov02a10.c b/drivers/media/i2c/ov02a10.c
> > index 391718136ade..7ee9c904d9b5 100644
> > --- a/drivers/media/i2c/ov02a10.c
> > +++ b/drivers/media/i2c/ov02a10.c
> > @@ -534,8 +534,10 @@ static int ov02a10_s_stream(struct v4l2_subdev *sd, int on)
> >
> >       mutex_lock(&ov02a10->mutex);
> >
> > -     if (ov02a10->streaming == on)
> > +     if (ov02a10->streaming == on) {
> > +             ret = -EBUSY;
> >               goto unlock_and_return;
> > +     }
> >
> >       if (on) {
> >               ret = pm_runtime_get_sync(&client->dev);
>
> Only if sensor fails to stream on, ret can return a negative error code.
> Thus ret above needs to be initialized to '0'.

Ok, I sent a version 2.

> Also you could fix the clang error like this.
>
> static int ov02a10_s_stream(struct v4l2_subdev *sd, int on)
> {
>         struct ov02a10 *ov02a10 = to_ov02a10(sd);
>         ...
>         int ret = 0;
>
>         ...
>         if (ov02a10->streaming == on)
>                 goto unlock_and_return;
>
>         ...
> }

Sorry, I should have removed the last line of the output from
clang that suggested doing that. Initializing a local variable
in the declaration is generally a bad idea precisely because it
prevents the compiler from warning about a case like this where
the author forgot to set the correct error value.

We should really fix clang to not propagate that nonsense.

        Arnd

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK8P3a0ZA4cLNL3kVN9qKjHyhWJXOA2LtsEakN0V9rcTBQaVNw%40mail.gmail.com.
