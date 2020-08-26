Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBHOTTP5AKGQEJDR5JCQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53d.google.com (mail-pg1-x53d.google.com [IPv6:2607:f8b0:4864:20::53d])
	by mail.lfdr.de (Postfix) with ESMTPS id C3C43253A84
	for <lists+clang-built-linux@lfdr.de>; Thu, 27 Aug 2020 01:00:46 +0200 (CEST)
Received: by mail-pg1-x53d.google.com with SMTP id l8sf2397628pgt.23
        for <lists+clang-built-linux@lfdr.de>; Wed, 26 Aug 2020 16:00:46 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598482845; cv=pass;
        d=google.com; s=arc-20160816;
        b=gHA58ObmtH9/9eF2BB2F8g608hNvvxt1GJRBN1/jfMsu1PLy3m9GswTkyocC4Ok0HU
         TMQVz1nTSMU/aupimBB+RXmd0TjVAz3amzI6v9+FAcTUFv65D8QHsCmsHoozcTO028EC
         oMg9PjWZhaD8uk5erXkGsz2bwrSSiycf/B+D3pQ4e+WGzGxIrt0t5ZHU5RdgvNFF1ZIZ
         xCD7N/0Lb52pkfHS+XZ5RIIY5qufG6pdz/Pw9SZQ/QV1BXynzKD7MmM9GAuDxjphBp8r
         6NxhqGn8xqCDavglScSqENcHphSnsvBeHFOixORso8HQRbbrO5fBzdgW1YjFbWbVQ56q
         dvpQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=Ntko/YsYaCQn7ZH9igZBjGS0Ir79ku7y4ZotFBFGwtg=;
        b=pPs4mdVngkGXXI9NJOVBp/D2oXG+VtTmg5ZsFFG9OVxYQtswslzhnMoKu2kABFByzP
         193L48hKHiHEJMSgMHXJZvK5Eidt9Zv4NLYX/XP7GRK3kLMrQ2aB3F7788LFH5CjTh28
         jvVTSlQ5k46ss8kHsN7Ub8pfV8wMEw5WF3p1LZLo3gByBuffgCxD8tUtNllxHnCgpB/C
         fVqwH97PgQVXF1sqyLChrPUERMyunK+A+O/qirOISpS/FOwJuVHct7rry0gW5NfhhryK
         ZH2B62xJvVEV8JhNFVJe7dUoL0D2Mevkl/9C8f99lGul13cdQgVqn66t/Rsw7a6ghCsg
         w8cw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b="fXobgc/q";
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.91 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Ntko/YsYaCQn7ZH9igZBjGS0Ir79ku7y4ZotFBFGwtg=;
        b=qclaKz+cICUVuDr1bUiU82+gB/TrUnMeEfiZKyzRG1wGnwYnVpHAunNHTHY5/ObdG9
         uRAasM27Top5MxXtQWKUDXFTvoN3e5ZkldKAK7azM2zWHWQ0DWItp7B7LtoSJ2TT+Pxf
         Nhg6zs66BuEayGyihXK2l1qFTLyXCpB0XLaLBHoCSQHTEo+o05mJh1CnZ9vZ2oAFkMdh
         m7/mDQTZ5VDE8lp5eQzEQhw4i4qkBLT+bVX5wfYpCMNh6itkkLPOqyBCcmI38SpbGTwz
         Y3YRpjvAVbkyx7iQF/uWhSi0ZJBEJQq2CgkYjdtj0BHu+Bp6jVXsadkC+Mid89IBqHz7
         XS3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Ntko/YsYaCQn7ZH9igZBjGS0Ir79ku7y4ZotFBFGwtg=;
        b=dbAdcuvJMpXCr6NPXtkCUAXfUljOZ04iqUhBEUCYFc7ktsvAK4hQ3MXSuIAuHEOXNf
         HW6YqkiOU7Lg6SEEMjumades9LCgy1EB0+TB0aZOnXcIKHGYT7sjjZMn0Skw2f/lQ53S
         pjbwDXo0LCMzaXbsBO+F522nfpvWL7PSt9rNk4YMGebshdhNrZhdagLhtyeh0Hlcu54v
         O1SwmELxWx965EArPhFvvI4jBHqyy3+sP1ym9iE1d4d7KbYzk4Zz0dHzl5Qh3RmyURog
         fPWr1VGeg50pTSx0moGbO+YLjiYIo1fwJZ2FGYh3jEhjI+gh24QYoNipoXOYU2cI0f2Q
         u3lA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531eYhFUHjoHZemF7kZFVueVoS02LJrcg4w+3+XOXtuXg+0Ka4Oq
	ijMlMhPBeM1Owi9CeSbn1X0=
X-Google-Smtp-Source: ABdhPJwSvkDmu2j3eSxwA9LPqbdDbGpg6ZqWmhIH1O4C/jkIz1VeJ70Kct7R0MSOxhZmQ4r1dKcrug==
X-Received: by 2002:a17:902:7481:: with SMTP id h1mr13545590pll.139.1598482845404;
        Wed, 26 Aug 2020 16:00:45 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:96d9:: with SMTP id h25ls125521pfq.0.gmail; Wed, 26 Aug
 2020 16:00:44 -0700 (PDT)
X-Received: by 2002:a65:64c5:: with SMTP id t5mr12098277pgv.28.1598482844892;
        Wed, 26 Aug 2020 16:00:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598482844; cv=none;
        d=google.com; s=arc-20160816;
        b=DNCsHHKcLSiIhTytgyOIEN9D0LRMCJYxnhJ3QqU9c//Jwja8R2MTXweo6FtG0NLT9P
         2ZxcbHylylXFYAqKKonfk9lU41kP1cCeMZmA2Uvzir1+UI0YIMkj7h/VH/R1Wws2BJoY
         cv2sarEo6KpQ3QnsgOKvw1szMdHxHeAfZhIXARfkig0eL4X9si0ujt7s632Wnq70xgZJ
         aP18K8mHaiHz0HFeIx6FPSb/C9nUfcv2OO0Q0587BO8YUtIbnul6Dx5B8gtxFo+td6qR
         GR1C+ESckdFqJRPvB2ivr1qHetjEcd/E5eYfT+74bIJAHOB30tgQoswckB+sRJvdiGoI
         MKkg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=sACWlafBGUgCIkfb1+UQoBai0rXGJ0Q7gCQT2fF8M2M=;
        b=MiD+foSiFUkaHUOQOJLkmIzlUFfI95K9deoIndTqMVzHeE6UVJc8K2Irsefppj8bA1
         xKPgut+WXN/cqMEumWCPlTW0n/4xGIbN4LKSbEBo7+0zYWRMoA1XfiBXFP+jDhkL4who
         pY/+4/ViPFJjRCsYOIgqf7LjzLXIUabXGVe7DD7xYRAnXcEmb2KisLCwYPFjhX+XQ9Kr
         FbEpMBBdvslnmoGzvD13UXbkuSr41ubQUQdAw91/0X00sXxjclFFCHhaFgkmxu5IvoW7
         /+HoSkSooxLW6MHUmj9TpRETqzEC0gNzrzQ/7s71powz2ddVsMgJgtnh7lt+2EiOOHEw
         vQrg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b="fXobgc/q";
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.91 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conssluserg-06.nifty.com (conssluserg-06.nifty.com. [210.131.2.91])
        by gmr-mx.google.com with ESMTPS id g11si21306plp.3.2020.08.26.16.00.44
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 26 Aug 2020 16:00:44 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.91 as permitted sender) client-ip=210.131.2.91;
Received: from mail-pf1-f177.google.com (mail-pf1-f177.google.com [209.85.210.177]) (authenticated)
	by conssluserg-06.nifty.com with ESMTP id 07QN0NCq012854
	for <clang-built-linux@googlegroups.com>; Thu, 27 Aug 2020 08:00:23 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-06.nifty.com 07QN0NCq012854
X-Nifty-SrcIP: [209.85.210.177]
Received: by mail-pf1-f177.google.com with SMTP id k1so1947579pfu.2
        for <clang-built-linux@googlegroups.com>; Wed, 26 Aug 2020 16:00:23 -0700 (PDT)
X-Received: by 2002:a63:3309:: with SMTP id z9mr11967515pgz.7.1598482822744;
 Wed, 26 Aug 2020 16:00:22 -0700 (PDT)
MIME-Version: 1.0
References: <20200825135838.2938771-1-ndesaulniers@google.com>
 <CAK7LNAQXo5-5W6hvNMEVPBPf3tRWaf-pQdSR-0OHyi4RCGhjsQ@mail.gmail.com>
 <d56bf7b93f7a28c4a90e4e16fd412e6934704346.camel@perches.com> <CAKwvOd=YrVtPsB7HYPO0N=K7QJm9KstayqqeYQERSaGtGy2Bjg@mail.gmail.com>
In-Reply-To: <CAKwvOd=YrVtPsB7HYPO0N=K7QJm9KstayqqeYQERSaGtGy2Bjg@mail.gmail.com>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Thu, 27 Aug 2020 07:59:45 +0900
X-Gmail-Original-Message-ID: <CAK7LNAQKwOo=Oas+7Du9+neSm=Ev6pxdPV7ges7eEEpW+jh8Ug@mail.gmail.com>
Message-ID: <CAK7LNAQKwOo=Oas+7Du9+neSm=Ev6pxdPV7ges7eEEpW+jh8Ug@mail.gmail.com>
Subject: Re: [PATCH v3] lib/string.c: implement stpcpy
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Joe Perches <joe@perches.com>,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        stable <stable@vger.kernel.org>, Andy Lavr <andy.lavr@gmail.com>,
        Arvind Sankar <nivedita@alum.mit.edu>,
        Rasmus Villemoes <linux@rasmusvillemoes.dk>,
        Sami Tolvanen <samitolvanen@google.com>,
        Andrew Morton <akpm@linux-foundation.org>,
        Kees Cook <keescook@chromium.org>,
        Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
        Alexandru Ardelean <alexandru.ardelean@analog.com>,
        Yury Norov <yury.norov@gmail.com>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b="fXobgc/q";
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org
 does not designate 210.131.2.91 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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

On Thu, Aug 27, 2020 at 1:58 AM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> On Wed, Aug 26, 2020 at 9:57 AM Joe Perches <joe@perches.com> wrote:
> >
> > On Thu, 2020-08-27 at 01:49 +0900, Masahiro Yamada wrote:
> > > I do not have time to keep track of the discussion fully,
> > > but could you give me a little more context why
> > > the usage of stpcpy() is not recommended ?
> > >
> > > The implementation of strcpy() is almost the same.
> > > It is unclear to me what makes stpcpy() unsafe..
>
> https://lore.kernel.org/lkml/202008150921.B70721A359@keescook/
>
> >
> > It's the same thing that makes strcpy unsafe:
> >
> > Unchecked buffer lengths with no guarantee src is terminated.
>


OK, then stpcpy(), strcpy() and sprintf()
have the same level of unsafety.


strcpy() is used everywhere.

I am not convinced why only stpcpy() should be hidden.




-- 
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNAQKwOo%3DOas%2B7Du9%2BneSm%3DEv6pxdPV7ges7eEEpW%2Bjh8Ug%40mail.gmail.com.
