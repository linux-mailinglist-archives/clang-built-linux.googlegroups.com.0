Return-Path: <clang-built-linux+bncBDYJPJO25UGBBFEB53WAKGQE673VBGI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3e.google.com (mail-io1-xd3e.google.com [IPv6:2607:f8b0:4864:20::d3e])
	by mail.lfdr.de (Postfix) with ESMTPS id CA7E0CEB8E
	for <lists+clang-built-linux@lfdr.de>; Mon,  7 Oct 2019 20:14:45 +0200 (CEST)
Received: by mail-io1-xd3e.google.com with SMTP id g15sf28219749ioc.0
        for <lists+clang-built-linux@lfdr.de>; Mon, 07 Oct 2019 11:14:45 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1570472084; cv=pass;
        d=google.com; s=arc-20160816;
        b=TScB6Vo2NB5cr920nSkkk/nfcKOYQb3sTSbk0N0kItEsyQjpqwkF1Ks10uUFBU+WUh
         cFUYEuunX8YAq9FYFbetLfHRGHgAN4NsKHfpPGaTyD7UYGPd9ccRIyDldxWtr66cpY4U
         LjXiT5kDFSqAhmY3In+qsbk0JSmIKYGpJwS5XVRGYpWcnBEM4SyDHUH3q9+cN4sh1Der
         NfGU0dBXoe8gK2GUb5vJ1sWK/o6b9BYgXhU0E5PhL/3Qc6mYhrgYo1ZF8BnZ4/AwoHkS
         85WT+N2vJrLUwcdb75plHDiLSwRu53TKkOCgISRu0MFrGvmNH9/KSjLQTaxXJlYHXHSZ
         hEvA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=xzMux6Pwth8xBXHp24FEcCESpZI50ETznW6YQW1HLpY=;
        b=dWKKpEyJwoS57arFkS8qtkzSil13pYo5koM/9s7t3utGxGyMEgDLKOSg32TAVQPYcO
         zWpBbrxsHQ+MrfJDwiPC8o3hCAoxeQtRiZGfBeaIBSOwnpwq9ejsSz2R+++EoBg9v2yE
         42SezzurQ/r8mM1tJMYwTym5fkbY/yzjaGVenYjhfX2N05l0RUmR25sr9yDnGtEBqjJ9
         dLSkRcmVnBuciz4i3CFa/JuKFO1/BjLYd1J3rpBV7eTSNR3lxt8L8YFQTDKyJ8gdo+UQ
         VTwrlKFXNuqVRzj1RqgZfGEoh0iwBF8PBNpC5OqKJLmK7K5CffEAGv7wqVX92SenDU8B
         3Eug==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=IoDrXIhj;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=xzMux6Pwth8xBXHp24FEcCESpZI50ETznW6YQW1HLpY=;
        b=lyqYu7udbvzQS8RpDanH5kS6oj/1BcbUfR/mJso2kivcFk2zXirsTI8Zh9rWIT9aW7
         vTRra8288xi/oisxwgmD1lFjlqjvYUglG+xFg9c41ndty+vrmQftfZN6h0zAHSIAdw0F
         Wd5CbTbO2C4fVQ/H1o9Z/bC18ppU+zFrWTZpwSLcepQaiiRIxscZCotgSfrkFWSbzri6
         LVHfLJN2l0vCYyurkDfUiiRIoYI1P7QW5vs0Ve3MBSl3Ne1NeYPEF1rTK9wYT7mjBwi/
         Eg/b/wpN2hcyjMRUTodm2VpamL4Rloe8JeekeEHglq9oeTKcW+j5uOnRqk/P2fNWs0C/
         EH/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=xzMux6Pwth8xBXHp24FEcCESpZI50ETznW6YQW1HLpY=;
        b=HaU3Xa05+mMsdJadffh8nrexbaW3r3ITvcDMOX0vyabBW9MHm5cmIgWniZzCB3Ve7S
         /L6Jog+ET/IHpRxkAAxkVYsv7F9fajjMWw9xIHoFgHAhj2dp2jnvIrL9PlFM2bt8pdvY
         yuauhPTnelapCGJ/OkBM3tphaLntXLooXVteo+CmTGrswCEQsp/ltZ6JdtW2b7xjI7el
         iOGJMqpxtIwSMCgb0Sr8Pfs0ng3K5P3DrLb3vgxbM6VBwUxoFvg20X1CvQ7jgVM7vteF
         TSF6j5MPXbqVILRWrXpXmeXO/xLRfSv239wVzLmli5D8DzaB10AdnkPoE12f44QMTDew
         ICqw==
X-Gm-Message-State: APjAAAXm8ZJTCsYhu1ij8LEGsUKNde6DI8tZAWUP1ARlXsMfdy6hk5jO
	MHEoA7RxWwxTpZJ0qBAxNSk=
X-Google-Smtp-Source: APXvYqwkzJqLAlsHjlaLiFiBfCc0yh57OpoNikQ2ABIna8vexW4V9hS1FBhhSwlYC+X7eplV3t61yA==
X-Received: by 2002:a92:35d1:: with SMTP id c78mr29901999ilf.89.1570472084345;
        Mon, 07 Oct 2019 11:14:44 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:6712:: with SMTP id b18ls89752ilc.7.gmail; Mon, 07 Oct
 2019 11:14:44 -0700 (PDT)
X-Received: by 2002:a92:3405:: with SMTP id b5mr30530415ila.273.1570472083978;
        Mon, 07 Oct 2019 11:14:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570472083; cv=none;
        d=google.com; s=arc-20160816;
        b=fbPn+Hq3TpCaAhXErMMOMEVxRNsYbaJzppuibkVBgP79+IHbeuvvFm3+gZAgjaDJmF
         NO3wtBXIWymMk4AZM14u3kqnu7VNA4NVy9OHbuOqVjT3aXW3337ZT0JrIQ8If3pfECgH
         rJt55IenwXqulezEfxE6C72kO1Ev0GJyA3suYzJwwYgR41jeiE2wwfEj7sNE4Yxg6NaB
         8V5wdGP4YtUEE1FElvkzabTJCXdXZok0npVbT/w/5kxTYM1TSbvi99cAVA2RR1O0BS3q
         5zLyxJ/RaNb99yMb91xB9WS3OkDV0Lf+esYqB3MvnF4evTpeSRu3vkRKKValmCRloIVC
         KSyA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=Aof+lJ1lwyu9yLvpFaqVDdO/hGqaLFM0BeNng/kPgOo=;
        b=cqw6gNk0KzFr8PceaqwkgDgtMWSZ0e+n/IOI7X8ISWsLSzbw/c9Au28Dn9ShFk5n+h
         Ie8WmhbXuISBwRst0AUNi8oRiYwnPXTtv8kO4ciq3ruVplYzSnBROGRVxCAgYIJt0f6W
         E8qm/YWxvLteYDDXxUMFK5ZulHXP9N+ZPl2ah72TRZDQvyPhZBh0yQLy/vBd0gOYqMMi
         C5M77IuYaFZEEYgRjIp2d8RTDvawzWJZAr8iqPUzSouktm7cfwzVU31dopq5fD+HAW/Q
         AFeHiTIwSIig/stS8+vpM+20XEX8wREMdR8664negq21lqytZD8ydr6Ij1E3lMK6YNLX
         0Vvg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=IoDrXIhj;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com. [2607:f8b0:4864:20::443])
        by gmr-mx.google.com with ESMTPS id z21si636866ilc.3.2019.10.07.11.14.43
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 07 Oct 2019 11:14:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443 as permitted sender) client-ip=2607:f8b0:4864:20::443;
Received: by mail-pf1-x443.google.com with SMTP id x127so9151451pfb.7
        for <clang-built-linux@googlegroups.com>; Mon, 07 Oct 2019 11:14:43 -0700 (PDT)
X-Received: by 2002:a17:90a:b285:: with SMTP id c5mr600582pjr.123.1570472082764;
 Mon, 07 Oct 2019 11:14:42 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1570292505.git.joe@perches.com> <79237afe056af8d81662f183491e3589922b8ddd.1570292505.git.joe@perches.com>
 <CANiq72kU2_s=58HqdN6VMGDAh_+G+dtns9xzoc4huSVwP+ZXUg@mail.gmail.com>
In-Reply-To: <CANiq72kU2_s=58HqdN6VMGDAh_+G+dtns9xzoc4huSVwP+ZXUg@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 7 Oct 2019 11:14:31 -0700
Message-ID: <CAKwvOdkVZ64sLppKxF1XRgarPmCbhw1WLsSq1VcV1tagPgWtUg@mail.gmail.com>
Subject: Re: [PATCH 2/4] compiler_attributes.h: Add 'fallthrough' pseudo
 keyword for switch/case use
To: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Cc: Joe Perches <joe@perches.com>, Linus Torvalds <torvalds@linux-foundation.org>, 
	Kees Cook <keescook@chromium.org>, Borislav Petkov <bp@alien8.de>, "H . Peter Anvin" <hpa@zytor.com>, 
	Thomas Gleixner <tglx@linutronix.de>, Pavel Machek <pavel@ucw.cz>, 
	"Gustavo A . R . Silva" <gustavo@embeddedor.com>, Arnaldo Carvalho de Melo <acme@kernel.org>, 
	Kan Liang <kan.liang@linux.intel.com>, Namhyung Kim <namhyung@kernel.org>, 
	Jiri Olsa <jolsa@redhat.com>, Alexander Shishkin <alexander.shishkin@linux.intel.com>, 
	Shawn Landden <shawn@git.icu>, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, linux-kernel <linux-kernel@vger.kernel.org>, 
	Nathan Chancellor <natechancellor@gmail.com>, Andrew Morton <akpm@linux-foundation.org>, 
	David Miller <davem@davemloft.net>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=IoDrXIhj;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443
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

On Sat, Oct 5, 2019 at 10:17 AM Miguel Ojeda
<miguel.ojeda.sandonis@gmail.com> wrote:
>
> Hi Joe,
>
> On Sat, Oct 5, 2019 at 6:46 PM Joe Perches <joe@perches.com> wrote:
> >
> > Reserve the pseudo keyword 'fallthrough' for the ability to convert the

Have we precedent already for "pseudo keywords?"  I kind of like the
double underscore prefix we use for attributes (which this is one of),
or at least making macro's ALLCAPS as some sort of convention.
Otherwise, someone might be confused on seeing `fallthrough` sprinkled
throughout the code without knowing how it works. `__fallthough` or
`FALLTHROUGH` are maybe less surprising (and potentially easier to
grep)?  Sorry if this has already been discussed; from Miguel's link
below it looks like there used to be underscore prefixes before?

> > various case block /* fallthrough */ style comments to appear to be an
> > actual reserved word with the same gcc case block missing fallthrough
> > warning capability.
> >
> > All switch/case blocks now must end in one of:
> >
> >         break;
> >         fallthrough;
> >         goto <label>;
> >         return [expression];
> >         continue;
> >
> > fallthough is gcc's __attribute__((__fallthrough__)) which was introduced
> > in gcc version 7..
>
> Nits: double period, missing "r" in fallthough.
>
> > fallthrough devolves to an empty "do {} while (0)" if the compiler
> > version (any version less than gcc 7) does not support the attribute.
>
> Perhaps add a short note why (empty statement warnings maybe? I don't
> remember them but it was months ago so maybe it changed).
>
> > Signed-off-by: Joe Perches <joe@perches.com>
> > Acked-by: Peter Zijlstra (Intel) <peterz@infradead.org>
>
> Please add Dan's Suggested-by and copy the things I wrote in the
> commit message when I proposed this:
>
>   https://github.com/ojeda/linux/commit/668f011a2706ea555987e263f609a5deba9c7fc4
>
> > ---
> >  include/linux/compiler_attributes.h | 17 +++++++++++++++++
> >  1 file changed, 17 insertions(+)
> >
> > diff --git a/include/linux/compiler_attributes.h b/include/linux/compiler_attributes.h
> > index 6b318efd8a74..cdf016596659 100644
> > --- a/include/linux/compiler_attributes.h
> > +++ b/include/linux/compiler_attributes.h
> > @@ -40,6 +40,7 @@
> >  # define __GCC4_has_attribute___noclone__             1
> >  # define __GCC4_has_attribute___nonstring__           0
> >  # define __GCC4_has_attribute___no_sanitize_address__ (__GNUC_MINOR__ >= 8)
> > +# define __GCC4_has_attribute___fallthrough__         0
>
> This goes after __externally_visible__.
>
> >  #endif
> >
> >  /*
> > @@ -185,6 +186,22 @@
> >  # define __noclone
> >  #endif
> >
> > +/*
> > + * Add the pseudo keyword 'fallthrough' so case statement blocks
> > + * must end with any of these keywords:
> > + *   break;
> > + *   fallthrough;
> > + *   goto <label>;
> > + *   return [expression];
> > + *
> > + *  gcc: https://gcc.gnu.org/onlinedocs/gcc/Statement-Attributes.html#Statement-Attributes
>
> This also goes after __externally_visible__.
>
> Please add:
>
>   * Optional: only supported since gcc >= 7.1
>   * Optional: only supported since clang >= 10
>   * Optional: not supported by icc
>
> As well as:
>
>   clang: https://clang.llvm.org/docs/AttributeReference.html#fallthrough
>
> See how I did it in the link above:
>
>   https://github.com/ojeda/linux/commit/668f011a2706ea555987e263f609a5deba9c7fc4
>
> > + */
> > +#if __has_attribute(__fallthrough__)
> > +# define fallthrough                    __attribute__((__fallthrough__))
> > +#else
> > +# define fallthrough                    do {} while (0)  /* fallthrough */
> > +#endif
> > +
> >  /*
> >   * Note the missing underscores.
> >   *
> > --
> > 2.15.0
> >
>
> Cheers,
> Miguel



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkVZ64sLppKxF1XRgarPmCbhw1WLsSq1VcV1tagPgWtUg%40mail.gmail.com.
