Return-Path: <clang-built-linux+bncBC3ZPIWN3EFBB7UG3KEQMGQEP5J437Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33a.google.com (mail-wm1-x33a.google.com [IPv6:2a00:1450:4864:20::33a])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CEE7402102
	for <lists+clang-built-linux@lfdr.de>; Mon,  6 Sep 2021 23:09:18 +0200 (CEST)
Received: by mail-wm1-x33a.google.com with SMTP id r125-20020a1c2b830000b0290197a4be97b7sf355453wmr.9
        for <lists+clang-built-linux@lfdr.de>; Mon, 06 Sep 2021 14:09:18 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1630962558; cv=pass;
        d=google.com; s=arc-20160816;
        b=ABQT7R6WiG9WchsBop3TDHpKfaPKBkhhT/kXbRdi6CsECybz3nmI+UdEHROYSYTlfj
         j42HsoNJUmo6fiFRB+F4RFpSbcwLZ2tvNx3+7/mCPuCTg6EOsEWI9ZBUIVdc6BJW2Ko+
         T89/N6xySWifz321mUGsnvRqjpK0X6dhn6Jr6ibHpyKL+xmSWhUhrrg8tGlr1PH1nh57
         bdalFtR19OyjBrklYfG5rqNLOdmGwHHIxkDB2ZjoTwzmwg4e+JaHwLvRHfFg/XFjXuDh
         FU+A6WES/P9AcsKnEukmNY6wrkosdRUtjYpimzpvx8tBCG3qyxHt8iuZ5beHhqG0+klz
         bd6w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=z6z1prEIFQzPTXnfXieBmYspSxNzPq7vW6ksbgR5Vqw=;
        b=Ht2NDPgikxjfLPFPMXY27z5eyW8DQaifVtQSKZaQmnD10GxetmNoSiF1b4zLjlN4kB
         dHz4ta4UgUQgYYvBalJ54wvle/CNNSqgifsqBfDmbJ7/lQkOJjxqyknm48Zd9ezwjI/N
         WEM5K5Wk+rwtiWkL3QJxf9DcMNP31TkNgyMvEZtTyBiDxyWqDd/6XDCogDR6Y/vHStwD
         gK9MKurCFZXPQqpmk89cTumCzRhaSGUhslnx9Dg6shK90XRrOyRwx02WsxC9FsqbsetN
         eVZ6b5z7cwuH8bp77raF4Bita3HkYqlfOF7zUQKTruKlPkQMruOVMfgwY9jZiRVqyI8/
         kFqA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=google header.b="iY3QXx/8";
       spf=pass (google.com: domain of torvalds@linuxfoundation.org designates 2a00:1450:4864:20::134 as permitted sender) smtp.mailfrom=torvalds@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=z6z1prEIFQzPTXnfXieBmYspSxNzPq7vW6ksbgR5Vqw=;
        b=mHfkSZsC5NFVZ24z46ME8bnCDWnopRvtz1Ru/usbkF5IAF94/CJp+NREvSC2+78PVs
         fLv0F1U1w2zq9ul+TOKUnw2/BRQyefLCt3X8kpJfuWLrYJ3Re5ySTapbXb3Iyd/Pru4l
         f3dZYsCjrg8up66vIDH6dJUDp+lGllMVBzPnQP77y/GKYIwqG+1WFSyb4+Ild7zn7Sx7
         nAFhX1bJ2dD/xPOrr0ZRQAeLwkbbhFWgzDOtL/XTskSPmQbaWy+VUc4VavbMajGPLUYh
         1j4FH05jjp2wTphieMyTsYVchVZ0AXYWWns1Afuaa1baxq9433grxScOADig0js/WKBy
         Hahw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=z6z1prEIFQzPTXnfXieBmYspSxNzPq7vW6ksbgR5Vqw=;
        b=ZzKmP7l5MG+Bcyr7Ju8HJfxfJq7YcvGet74pVufeKO2ts9vbZtxdFqrIVBCwP5NjwP
         hZjv+npUEICvOZvL97CyG3hrD4z0S5b6Xe2zY4NjqEdCcN4N2KBbePCqTLFibOJTCh3b
         zqaY33opHGChxn0ZCA3xEyTdNRTh6hgTRrfQAopzEkFkjE638/EE5ggNoM3qREHwWUrH
         +pQgHmCArmVbfBWxhqT+YA5qGN+PEIPMJUZ8Y+q0MITjifQkNA1ED7Ke89OIdOJQLx82
         y3VxYzYYzKK1r//FPBVSJcHna775KYrDQ4u6+eiF6z4SOh6lOos7QByT7J8S0t7NM524
         WjqQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530aRClJFb8VxjmPYI8WZvTDZwGcZKlwSVzIN/7stRnM9Lj/Sop3
	M7uH14jVeVhWU0ravjYHCgM=
X-Google-Smtp-Source: ABdhPJxIqm9RLLRtFoYrzm5Ibla3CTNLEqITKuJIosUbEl43FicUpgJ9c4baWOhNWiQAZ19M2pRI8g==
X-Received: by 2002:a1c:f405:: with SMTP id z5mr838209wma.33.1630962558199;
        Mon, 06 Sep 2021 14:09:18 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a7b:c4c3:: with SMTP id g3ls439358wmk.0.gmail; Mon, 06 Sep
 2021 14:09:17 -0700 (PDT)
X-Received: by 2002:a7b:c843:: with SMTP id c3mr846593wml.76.1630962557387;
        Mon, 06 Sep 2021 14:09:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1630962557; cv=none;
        d=google.com; s=arc-20160816;
        b=DBkilsi6/R7SLGbcWbdBZF63UmsQoZ5Ev60qWhJvTI9eot2H8q//hO1sZvHXWIikQy
         8o6PocGagjreb9b1JHKqeOhsHW6sul2DJ5sNTSSr+bstoocPZVGD7NlpPcGgk3CIqTmk
         FSc+gefqZD0yNQF9wPMiJvTXmv3UD0wnKxBnsC36lNPTCtzoJN7OkwHBPaoGLl7jzNhC
         CjLHzGWKlGGoOIEFJdqwflUq6i4QrH9fzTVzhtXCcYAXSD/Yx0ZGQtnXNSNTFbqE59Li
         Td17jUg4FAWy/TPN/BoaRBmvcHDaCnNuJptJYG34tANjcriT4N8BcMy5Q4fFA477VW0B
         /IWA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=MpoW7+4bCye+SeExcKZK2eoEgcuVbF8tuM5mlM4JK9M=;
        b=e+mJ3RBQngAknin3Hu1/5ZzSLZFSwmzmyBiLM8W//7dk2MwW2y0M4MdUSbB7FI411j
         7UH5LpWY5o0xtF0rUOmiVFEuhTYzpyoOWQfKxtY/thKCfcovEZSCpce8p/bixudyQCK3
         T0C2OX27EDvsL1rP6mm+rUwDfVXUJdNQgOtuo19OndOcdRLvoi7D6AMWIq8bo5PK1R/b
         46KMKYhS4lJsfir99ZVvjyaOVEQQHpfiwklKshC+J80mZPS7oinvOV4ygcZuBMC8YsJk
         Hmfwy3V0T/2hyNfakmfACjPSklBugtvmJrVZmAtXqMyRtNlIJkJnu9q1DTIClFqywJTs
         ePsw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=google header.b="iY3QXx/8";
       spf=pass (google.com: domain of torvalds@linuxfoundation.org designates 2a00:1450:4864:20::134 as permitted sender) smtp.mailfrom=torvalds@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from mail-lf1-x134.google.com (mail-lf1-x134.google.com. [2a00:1450:4864:20::134])
        by gmr-mx.google.com with ESMTPS id o18si55137wmh.4.2021.09.06.14.09.17
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Sep 2021 14:09:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of torvalds@linuxfoundation.org designates 2a00:1450:4864:20::134 as permitted sender) client-ip=2a00:1450:4864:20::134;
Received: by mail-lf1-x134.google.com with SMTP id x27so15430998lfu.5
        for <clang-built-linux@googlegroups.com>; Mon, 06 Sep 2021 14:09:17 -0700 (PDT)
X-Received: by 2002:a19:6717:: with SMTP id b23mr10483492lfc.581.1630962556445;
        Mon, 06 Sep 2021 14:09:16 -0700 (PDT)
Received: from mail-lj1-f179.google.com (mail-lj1-f179.google.com. [209.85.208.179])
        by smtp.gmail.com with ESMTPSA id w25sm820681lfu.123.2021.09.06.14.09.14
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Sep 2021 14:09:14 -0700 (PDT)
Received: by mail-lj1-f179.google.com with SMTP id g14so13160233ljk.5
        for <clang-built-linux@googlegroups.com>; Mon, 06 Sep 2021 14:09:14 -0700 (PDT)
X-Received: by 2002:a2e:8185:: with SMTP id e5mr11756332ljg.31.1630962554175;
 Mon, 06 Sep 2021 14:09:14 -0700 (PDT)
MIME-Version: 1.0
References: <871r644bd2.fsf@oldenburg.str.redhat.com> <CAHk-=wi+XKYN+3u=_fm=ExqpEaHdER0XuKxVauHYVCPKpKR97Q@mail.gmail.com>
 <20210904191531.GS1583@gate.crashing.org> <CAHk-=wjc1rxah3xt8mKN=aCxQigjy3-hEf4xh_Y-r=MXAKVrag@mail.gmail.com>
 <20210906154642.GV1583@gate.crashing.org> <CAHk-=wj=WpWO_V86cZH99LgZGBbvdDb4wR26ce5van0hJqjzLA@mail.gmail.com>
 <20210906172701.GX1583@gate.crashing.org> <CAHk-=wh0MBVfA89WLWnCiSnJ2a=hSAoSxfG-jyf7JJeBDPK3ew@mail.gmail.com>
 <87lf49wodu.fsf@oldenburg.str.redhat.com> <20210906194808.GY1583@gate.crashing.org>
 <20210906201432.GZ920497@tucnak>
In-Reply-To: <20210906201432.GZ920497@tucnak>
From: Linus Torvalds <torvalds@linuxfoundation.org>
Date: Mon, 6 Sep 2021 14:08:58 -0700
X-Gmail-Original-Message-ID: <CAHk-=wi80NGPppGmBpc5zuGRAsv4_7qsDu7ehW515J2FJoezAQ@mail.gmail.com>
Message-ID: <CAHk-=wi80NGPppGmBpc5zuGRAsv4_7qsDu7ehW515J2FJoezAQ@mail.gmail.com>
Subject: Re: [GIT PULL v2] Kbuild updates for v5.15-rc1
To: Jakub Jelinek <jakub@redhat.com>
Cc: Segher Boessenkool <segher@kernel.crashing.org>, Florian Weimer <fweimer@redhat.com>, 
	Nathan Chancellor <nathan@kernel.org>, Masahiro Yamada <masahiroy@kernel.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, llvm@lists.linux.dev, 
	linux-toolchains@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: torvalds@linuxfoundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linuxfoundation.org header.s=google header.b="iY3QXx/8";
       spf=pass (google.com: domain of torvalds@linuxfoundation.org designates
 2a00:1450:4864:20::134 as permitted sender) smtp.mailfrom=torvalds@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
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

On Mon, Sep 6, 2021 at 1:14 PM Jakub Jelinek <jakub@redhat.com> wrote:
>
> the only guaranteed APIs are
> those provided by the headers (x86intrin.h/*mmintrin.h etc. on x86,
> arm_{neon,sve}.h etc. on arm*, ...)

You guys realize we don't use those, do you?

And you don't seem to realize that you are actively arguing *AGAINST*
what you think you argue for.

That "immintrin.h" file, for example, is simply not usable for the
kernel. I just checked.

Why? Because it ends up doing exactly all those things that MUST NOT
be done for the kernel.

   In file included from
/usr/lib/gcc/x86_64-redhat-linux/11/include/xmmintrin.h:34,
                    from
/usr/lib/gcc/x86_64-redhat-linux/11/include/immintrin.h:31,
                    from t.c:1:
   /usr/lib/gcc/x86_64-redhat-linux/11/include/mm_malloc.h:27:10:
fatal error: stdlib.h: No such file or directory
      27 | #include <stdlib.h>
         |          ^~~~~~~~~~

Oops.

And no, it doesn't work trying to include some specific avx2intrin.h
file either:

   /usr/lib/gcc/x86_64-redhat-linux/11/include/avx2intrin.h:25:3:
error: #error "Never use <avx2intrin.h> directly; include
<immintrin.h> instead."
      25 | # error "Never use <avx2intrin.h> directly; include
<immintrin.h> instead."
         |   ^~~~~

Very similar things happens if you try to use that <stdint.h> file
that somebody mentioned earlier.

Guys, you don't understand how limited the kernel header files are - on purpose.

You also don't seem to realize how hard it is to separate out the
user-land crap that we really cannot use, and must not use.

And you think that we're making it harder for compiler people, but
that's not at all the case.

You really don't want to deal with us saying "you can't do that" when
you do something that is

Yes, <stdarg.h> has historically worked for us, and it's pretty much
the only one.

All your arguments about how people need to use the standard headers
are basically worthless, because you have never actually tried to use
them in a standalone project, have you?

So just face it - stdarg.h is special.

And it's not clear that there's any reason why the kernel should
include the one that comes with the compiler, when the kernel cannot
use any of the other header files that come with the compiler anyway.

And ALL of your arguments about how we must use compiler header files
are COMPLETE GARBAGE, because you didn't even look at them, did you?

See?

So stop making arguments out of ignorance. Because that's literally
what you are doing. You've never tried to make those header files
standalone, and you don't have any idea of how nasty it would be if
you were forced to.

               Linus

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAHk-%3Dwi80NGPppGmBpc5zuGRAsv4_7qsDu7ehW515J2FJoezAQ%40mail.gmail.com.
