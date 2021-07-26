Return-Path: <clang-built-linux+bncBD66FMGZA4ILDRP4Q4DBUBFAIRZGC@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23b.google.com (mail-lj1-x23b.google.com [IPv6:2a00:1450:4864:20::23b])
	by mail.lfdr.de (Postfix) with ESMTPS id F15A73D6859
	for <lists+clang-built-linux@lfdr.de>; Mon, 26 Jul 2021 23:01:37 +0200 (CEST)
Received: by mail-lj1-x23b.google.com with SMTP id u16-20020a2e84500000b029019c1f8941d1sf1292123ljh.9
        for <lists+clang-built-linux@lfdr.de>; Mon, 26 Jul 2021 14:01:37 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627333297; cv=pass;
        d=google.com; s=arc-20160816;
        b=rYDOExzuyUaYqpjfpbT5Yraqd+o1A2bic78i9rOoU+sG2w+wJfWCaKw0dpFGVf63ah
         GPaRPG1KsSLNxVIp/50/thA74RMjr1i9c+g+3dl5pf9mpH/H55qDgY0ABEyne4VMjDDN
         ArJWwsOZECa7397CI5a3T83DqR1BRVcWPIJVzPjKqWgzL50fcCM2m2qINQBPfg9EfmT+
         Pr3Q1M830ZsJVOmJGqoPb/eRMg5ZnGBYswVH1llvPjE8NzfaTltaLo1MV4MLqblVwXdY
         X9k80S79eDTLZlWHIQrZ6gvRkOwpvPkEH1T1O03RLrlXk11NP02neHMkWxJTL6UaafBB
         8G4A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=PMVF0HvHfMumh0PLL3CrcWRkmuQGR3QEYZPDj8VDoKk=;
        b=yJ++XjTZdCgRso6YPBZSrlyIMzJ4qhzRVtGpBNsWheA8CxBRRHAZw6276I36DT/AZm
         wKXcQhEjo1zZCtkq9gq0c1BcPFvYA9HnWfwt9jweANTiTndYMkCXYXpodWU2/vpKC+Pi
         pudv8VkdlLs4opSgVFLzPoM/CWVlQpMYJi7GzuZ8guTg+v3MfYnkbkNniXa2A+ynq9N/
         q6xM+P6BjnBkWO2WK5IjPFA6KkjYDAyGSgYgCjF0usMjpRa08XXL7nbYoeHE/lZ2sHOB
         8Rxv8eUXsMwFxXLuDbohwC3IVoaU+KJLPWGmBHYCskNEJpuHMM6i2qRLr4WjPliHUfFo
         +OuQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Wo+Igpa5;
       spf=pass (google.com: domain of morbo@google.com designates 2a00:1450:4864:20::62d as permitted sender) smtp.mailfrom=morbo@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=PMVF0HvHfMumh0PLL3CrcWRkmuQGR3QEYZPDj8VDoKk=;
        b=HINY31clObnpRM4cx1PpEZyvpRPrVCoSdoRNVkwv3WkMkyCina1O00Fq3R+sNxcuUT
         xVdEI9mBM6lzJeZw8KZ0yPbYIQvaGlX9AQyp3+Xlk/UWIUzON7Rpp0J/4mkrY/c+v7OP
         +jwhSi3eBL+tMHwWZdPdw/x+WLFVNcQp18Vy+8PVpVlpg2YDadg6gXe3BmACVFOZfYb6
         /zcTM6t7N+SsMDVi6VKz9wGYEMHmI92qn2lfgwHvOcTYYwQWfv3+flBdEDY0Yo8TPfoo
         z+jRsJBkyCT5lZ7hojqs+PsYpj/hqBj1beMCOgM2gjthIM4g1OFVv+mlsO7sgnIggYPL
         x06A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=PMVF0HvHfMumh0PLL3CrcWRkmuQGR3QEYZPDj8VDoKk=;
        b=ZQfEGeYjeIGdt8Vkj8gZFiSh+HXSFBcvDF0HB2z7k3CO0m2ZSq1yy1c+rPaQQtLgjw
         YVuKE8288deQqi5u3MzwbCB3HXas6rNu89w5iiFuNDFsh/mgZoHQyhSSQBB+OhwisSnu
         9RtW+dQYNCGapl0GSQdMC7RhXporc8px5iGpv/etQPwBDf/CRLxXQQZkeNHtmAursr4E
         UWLw4gaiRDhjp40yDSZKnenD01BasupYx1x8uQONc6AVtS5ZYZiSw7dGRWRHWa7Fsbnv
         x5XL+3uUassV9vhLHdZondPb/VLSvnV1dO+rqHlmDjDPED98l4tHXEGbf+LLMnY+i2uw
         sm/g==
X-Gm-Message-State: AOAM531dj9OmWFlfR9qE2hDVSp4nucNA8EPZ0bIhoPqqZOSr4WoQQ1pB
	3r9cLyeCDj6ae9ktSzz0ryA=
X-Google-Smtp-Source: ABdhPJxrRdBZq2GPkWrYVdc2NC0dTN4t01I3FfLBg/mueTdlwoAAoC6GemyF2ceIiFzoFJH2a2bE1A==
X-Received: by 2002:a2e:b16b:: with SMTP id a11mr12498691ljm.346.1627333297492;
        Mon, 26 Jul 2021 14:01:37 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac2:4146:: with SMTP id c6ls1476389lfi.2.gmail; Mon, 26 Jul
 2021 14:01:36 -0700 (PDT)
X-Received: by 2002:a05:6512:3dac:: with SMTP id k44mr14851051lfv.541.1627333296466;
        Mon, 26 Jul 2021 14:01:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627333296; cv=none;
        d=google.com; s=arc-20160816;
        b=ciHwSjPjiZu62pGf/Gf9dS1vv9oR2CYVHmt+oAMZxWg3xVTt0wnIdxGLhNF1uo3vMJ
         DEr4u/OBcb6kTngQgTjJjTei9KgIfbmMP3AYajVBeG9gfhN4CNzqi4zIePLuqNBxpx9Z
         8dK1lRS3pTzZsJTRtcs2bcgEetibIsDdVnvhaHaS5kP6PNBD3pGU9+TQDuWAeuxhKnO1
         P2RJsXx04PlK93i2NcBA5A1nsIkdqQe/gZeJtxviojrkT+/6TYgMDqjVreodJPvmTLFw
         Z/HohiguHM4dyYiALGtg1aQLYY6aSQrO29KcMYso1ICNBVcBZvz/OE8CkrvRNBzAKIyQ
         dIww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=8lSJalLHPzxTbKAIv4nuRUkH8dvQEWkjSFUf7metCho=;
        b=1KLdIyTGmvfnFhiqRNs6z65OXQc5rDONArYdliBKB+oEXikGf+wFwuGAqeQ9S5MG7u
         gLo96KETu2yhR0tgmJ1oS8LnMYn7tfS0P3C8ChcqUG1gBvX67hO2m5UQCOFvGo7z//G9
         4IWKCpG0/j2VnABsNod+7v+N/u1yNwahvS++kI1aCbuPdIXjHadtiusA5URvpII/CcFs
         gd6xK1Otz16Eh2kGJ/B7gqBzQGQNRW14OC6rYZHQqwLE+86KyZXIJ88so5zBtEHFgkiE
         /2HNBYjBUpfsxZwi4n1iKtWJYUcTsy4bJZ+pfxOgSlhHHfiG8pt6S7JNMoVrJtmuCOVb
         Xitw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Wo+Igpa5;
       spf=pass (google.com: domain of morbo@google.com designates 2a00:1450:4864:20::62d as permitted sender) smtp.mailfrom=morbo@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-ej1-x62d.google.com (mail-ej1-x62d.google.com. [2a00:1450:4864:20::62d])
        by gmr-mx.google.com with ESMTPS id j7si44236ljc.1.2021.07.26.14.01.36
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 26 Jul 2021 14:01:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of morbo@google.com designates 2a00:1450:4864:20::62d as permitted sender) client-ip=2a00:1450:4864:20::62d;
Received: by mail-ej1-x62d.google.com with SMTP id nd39so18585093ejc.5
        for <clang-built-linux@googlegroups.com>; Mon, 26 Jul 2021 14:01:36 -0700 (PDT)
X-Received: by 2002:a17:906:95cf:: with SMTP id n15mr18769848ejy.531.1627333295997;
 Mon, 26 Jul 2021 14:01:35 -0700 (PDT)
MIME-Version: 1.0
References: <20210714091747.2814370-1-morbo@google.com> <20210726201924.3202278-1-morbo@google.com>
 <20210726201924.3202278-2-morbo@google.com> <c965006c-88e1-3265-eb9c-76dc0bbcb733@kernel.org>
In-Reply-To: <c965006c-88e1-3265-eb9c-76dc0bbcb733@kernel.org>
From: "'Bill Wendling' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 26 Jul 2021 14:01:24 -0700
Message-ID: <CAGG=3QVWzg21wL3fjcKmNGW5xP-c9p7bDm3j598J3-j+GDPq+A@mail.gmail.com>
Subject: Re: [PATCH v2 1/3] base: mark 'no_warn' as unused
To: Nathan Chancellor <nathan@kernel.org>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "Rafael J. Wysocki" <rafael@kernel.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: morbo@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=Wo+Igpa5;       spf=pass
 (google.com: domain of morbo@google.com designates 2a00:1450:4864:20::62d as
 permitted sender) smtp.mailfrom=morbo@google.com;       dmarc=pass (p=REJECT
 sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Bill Wendling <morbo@google.com>
Reply-To: Bill Wendling <morbo@google.com>
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

On Mon, Jul 26, 2021 at 1:47 PM Nathan Chancellor <nathan@kernel.org> wrote:
>
> + Greg and Rafael as the maintainer and reviewer of
> drivers/base/module.c respectively, drop everyone else.
>
> Original post:
>
> https://lore.kernel.org/r/20210726201924.3202278-2-morbo@google.com/
>
> On 7/26/2021 1:19 PM, 'Bill Wendling' via Clang Built Linux wrote:
> > Fix the following build warning:
> >
> >    drivers/base/module.c:36:6: error: variable 'no_warn' set but not used [-Werror,-Wunused-but-set-variable]
> >          int no_warn;
> >
> > This variable is used to remove another warning, but causes a warning
> > itself. Mark it as 'unused' to avoid that.
> >
> > Signed-off-by: Bill Wendling <morbo@google.com>
>
> Even though they evaluate to the same thing, it might be worth using
> "__always_unused" here because it is :)
>
I thought about that, but went with the softer option in the (probably
very) unlikely event that it will be used in the future. :-) I'll be
happy to resubmit a new patch though.

-bw

> Regardless:
>
> Reviewed-by: Nathan Chancellor <nathan@kernel.org>
>
> > ---
> >   drivers/base/module.c | 2 +-
> >   1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/drivers/base/module.c b/drivers/base/module.c
> > index 46ad4d636731..10494336d601 100644
> > --- a/drivers/base/module.c
> > +++ b/drivers/base/module.c
> > @@ -33,7 +33,7 @@ static void module_create_drivers_dir(struct module_kobject *mk)
> >   void module_add_driver(struct module *mod, struct device_driver *drv)
> >   {
> >       char *driver_name;
> > -     int no_warn;
> > +     int __maybe_unused no_warn;
> >       struct module_kobject *mk = NULL;
> >
> >       if (!drv)
> >

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAGG%3D3QVWzg21wL3fjcKmNGW5xP-c9p7bDm3j598J3-j%2BGDPq%2BA%40mail.gmail.com.
