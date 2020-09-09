Return-Path: <clang-built-linux+bncBDYJPJO25UGBBJ564T5AKGQEZE2DNEA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x440.google.com (mail-pf1-x440.google.com [IPv6:2607:f8b0:4864:20::440])
	by mail.lfdr.de (Postfix) with ESMTPS id A6BDD263600
	for <lists+clang-built-linux@lfdr.de>; Wed,  9 Sep 2020 20:30:00 +0200 (CEST)
Received: by mail-pf1-x440.google.com with SMTP id s12sf2743685pfu.11
        for <lists+clang-built-linux@lfdr.de>; Wed, 09 Sep 2020 11:30:00 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1599676199; cv=pass;
        d=google.com; s=arc-20160816;
        b=EOBw49gw7fyNT6qhzIvxfJaONsOnoTyn/FP+OFDOxk9dHYMbnmW+hgJSnscRJkk81l
         tyWkxySQZ1FS40K5UUBAuOWrKNvzj5S4jjlJ3Pg5Rqoeb33Yse065ywJRpVG9JWH5IQx
         5qE5QedqCDT2T7eFDHOzADS1lnAYnZw+bDIpoIZ1ROPDCnBzZqfr+GiH8ohxadSsVJFU
         PABiiFeg1okAuNfPsSmyda77iGM4qIbSHD22F011NEvEf4ZVEoXXrnlj1/IVOrKKNwIQ
         aprLKrc4lPpmfu9ego6Iof45WlrzXAAdCRz++bWIq2HLFs9GCoeIpj1AhQuxg4FUZ+Ee
         wxyA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=OK6V6KRNDKA7zXQbh0SqM9FZKwgUUKdYSGL9TjEQPWQ=;
        b=TEua8q0GR7jJit1zIqxwIJOyD9kSf9CocRJzm4MzrfRgUI8CFysakzHm68jRXepsgI
         kLEKFvYRyJG/6ble4g7rhaSTe5T5bO5OaUfwQtRRT+1vWOUmtDpFb0A/gJ4uEgFWfzPq
         ntXRZn3R77DeJEAFdhnEtKzJH+cdTyg3GlkDyDyJB+suwTabnoRN2OuNze8yNgf4R5G3
         NPAxWpvcVeKx6a0H6PwiNith+8IUUW/6/9rpEEGqd/jtyqTj1SKm84loEUpr1fAu24Px
         lgiZGbTw237dzfHvSEujr/2VAhoWmk0rx0rcGNFQJY1BWjkiEi/UtuXlgFGVr2LqwQYv
         /+hQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=MNqoiHNf;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=OK6V6KRNDKA7zXQbh0SqM9FZKwgUUKdYSGL9TjEQPWQ=;
        b=BrOc2+Saz+SFHOmK4tewtGaK0iKlSoY10DM+dk0/wikyNUDsJTr7sr/h1KzkD+D+Ml
         vRBOOK8GnJN62T6cTy6Dwk51hHz5Ng10+oCVUzBcRg1elOxXA/4kgyI2/boV5CxyMSJz
         HaSsPd8dipKh+tRvs3C8ssAX6lbOoZYOhK/KUNkROKII2UAA5J+0uO05T7p+WSym47x1
         0ImlYdm9CLtjti5sVu4vaBxT8xAxmyLocgA4HWlG8clfZV1HxBYAwKzQU+wShURMObxM
         S26hch7fqKvAimZN/IO8w+vFULRgF60rvdRWkdCR7k6OYkOD/aP9eQUHTZhIJ9seOaC9
         w7kw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=OK6V6KRNDKA7zXQbh0SqM9FZKwgUUKdYSGL9TjEQPWQ=;
        b=R3OO1jajDVn8kMRSZV2gAB7cULtkSHxuY1TSrfYP7Hr13tnjWBuBI1mj77JlOyk9lS
         l0SItuTNsxb4GfXWAcDmoF3j3NMEUTl7KWPAknpRnVv9KZfGEfk3zH7bGb067IjuELI9
         aF50PFM40idm531WCCEsHMelKEYZny3+VBD28SFndF5xKAioHeD6waT0CQVWFPf5NG3j
         yxU/T2ftUoRQjDdQA6mYZsqBPsB2/YgGbO4nFT6rDJuAWxC2yQs1cDDyfkMUzWWG5QB0
         Ya/mwM3T/guJLoZSz6wSxImtkRf9dEMkwhysmfKbkllNcN2Kifyioh58Y+b4z9M0r91R
         11+A==
X-Gm-Message-State: AOAM532BZH93yC9FeKTagOUcLA3j7nIBYqdPniTF917+e6B1ZRjm5Dci
	eS/08TSGjLkswGQC6TFYBrg=
X-Google-Smtp-Source: ABdhPJzkt/BFVOW/ysxlWIfT9A2DqFGI8X+mkQNqMDhp5ZJGDr2jHEJJzH5EASrJPfD4kSJ4MkBB1w==
X-Received: by 2002:a17:90b:b0b:: with SMTP id bf11mr1898784pjb.227.1599676199270;
        Wed, 09 Sep 2020 11:29:59 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:fe98:: with SMTP id x24ls1377840plm.6.gmail; Wed, 09
 Sep 2020 11:29:58 -0700 (PDT)
X-Received: by 2002:a17:902:b205:b029:d0:92cc:a8e1 with SMTP id t5-20020a170902b205b02900d092cca8e1mr2161197plr.17.1599676198722;
        Wed, 09 Sep 2020 11:29:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1599676198; cv=none;
        d=google.com; s=arc-20160816;
        b=Gw6ASkL5atRsCcaiMcjZKpsprX0L7NXOpV0MR8a444qpfGkli/CT9wBo1A38cIrFkE
         sXHjf6DqzSo4Xxvk0OLMZTQFOyawYcJGdMESefRF0P7eGlIPWLe/nbnLZzSyNsiRavvx
         iAaS9adcKu1+Z5YQA/behbOWTm/b6A6UMCaGoYE0IFJKmPuOIiC7mbRxzOYJxtgZWIUV
         rzFkbuQ05aBZ0Sc0CUcVB1c1MdgbZAjrh0wiHGHk6jSwSnEodcBCEgRIdilPm855WmaY
         qy3jBQt9hQ1n0OllNUF9Vfj8GhR4HMqYOxb7eTPXtz6NkXoj0jfL270qDiJt733wqeCl
         WpAA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=OBS2DVnsruhKwRlbktfuhvCsjIu9C5KZqCqUKMpKxEU=;
        b=VwaZCXljh0KfvBJl3Wl3nh3WZKOqzniDOQ2ROumV+hWbdK9XCwBrCGDVoYuNPLkW+k
         yug4nRNakt0ipqRFhwJyu9N3vLiaegzNTcIpGMaxgSplxB2fUlhuDDy7aoj3ZbZt2sF/
         03BOaWSjoXdHSw/4bgssx0i4YWRr/FwG5aWxmySbgfpHL5XG2Q8VFQUVl5IEDrEJMBcy
         MIBT+BJA8KbuQOtCH+BHbh97P9r7j0eReYDWf/fFb4Yz+AQvTQe+/qGxPoyMYXobbYTE
         0K9Vq5anUxArM1l6ZQZueOQiKpUCXNwj5GAsSbG+YjaoYCOCeEWPSRoIA5UEApoT+Zxw
         xYUg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=MNqoiHNf;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x444.google.com (mail-pf1-x444.google.com. [2607:f8b0:4864:20::444])
        by gmr-mx.google.com with ESMTPS id b9si104729pge.4.2020.09.09.11.29.58
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 09 Sep 2020 11:29:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::444 as permitted sender) client-ip=2607:f8b0:4864:20::444;
Received: by mail-pf1-x444.google.com with SMTP id o20so2889142pfp.11
        for <clang-built-linux@googlegroups.com>; Wed, 09 Sep 2020 11:29:58 -0700 (PDT)
X-Received: by 2002:a63:9d09:: with SMTP id i9mr1469347pgd.381.1599676198143;
 Wed, 09 Sep 2020 11:29:58 -0700 (PDT)
MIME-Version: 1.0
References: <202009041955.peRlCsZZ%lkp@intel.com> <CACRpkdaZzNe43q4rtAFnh1tv52xpEZ-6L9a9Be+r7+_-duE8+A@mail.gmail.com>
In-Reply-To: <CACRpkdaZzNe43q4rtAFnh1tv52xpEZ-6L9a9Be+r7+_-duE8+A@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 9 Sep 2020 11:29:49 -0700
Message-ID: <CAKwvOdkXb8xmdPJE=-hbdwi14OiUWDjZdyag7UPLE7LXdQ3YfA@mail.gmail.com>
Subject: Re: [linux-next:master 1713/4903] drivers/gpu/drm/panel/panel-samsung-s6e63m0.c:322:12:
 warning: stack frame size of 12576 bytes in function 's6e63m0_prepare'
To: Linus Walleij <linus.walleij@linaro.org>
Cc: kernel test robot <lkp@intel.com>, Sam Ravnborg <sam@ravnborg.org>, kbuild-all@lists.01.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, =?UTF-8?Q?Guido_G=C3=BCnther?= <agx@sigxcpu.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=MNqoiHNf;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::444
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

On Fri, Sep 4, 2020 at 12:40 PM Linus Walleij <linus.walleij@linaro.org> wrote:
>
> On Fri, Sep 4, 2020 at 1:57 PM kernel test robot <lkp@intel.com> wrote:
>
> > >> drivers/gpu/drm/panel/panel-samsung-s6e63m0.c:322:12: warning: stack frame size of 12576 bytes in function 's6e63m0_prepare' [-Wframe-larger-than=]
> >    static int s6e63m0_prepare(struct drm_panel *panel)
> >               ^
> >    1 warning generated.
>
> What can we even do with a warning like this? It's utterly confusing.
>
> Whoever enabled this warning need to think seriously about how
> these things get reported, to me this is just some unintelligible
> noise and I even know very well what a stack frame is.

I agree. I ended up writing a tool to debug these:
https://github.com/ClangBuiltLinux/frame-larger-than
I don't have time to look into this specific issue, but it looks like
a randconfig; if any of the sanitizers are enabled, it's a common
issue that magnifies stack usage.
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkXb8xmdPJE%3D-hbdwi14OiUWDjZdyag7UPLE7LXdQ3YfA%40mail.gmail.com.
