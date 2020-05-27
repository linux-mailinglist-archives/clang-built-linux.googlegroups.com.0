Return-Path: <clang-built-linux+bncBC7OBJGL2MHBBVVUXD3AKGQED47UATI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x939.google.com (mail-ua1-x939.google.com [IPv6:2607:f8b0:4864:20::939])
	by mail.lfdr.de (Postfix) with ESMTPS id 62FC51E3AD5
	for <lists+clang-built-linux@lfdr.de>; Wed, 27 May 2020 09:44:23 +0200 (CEST)
Received: by mail-ua1-x939.google.com with SMTP id q3sf9013959uas.12
        for <lists+clang-built-linux@lfdr.de>; Wed, 27 May 2020 00:44:23 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590565462; cv=pass;
        d=google.com; s=arc-20160816;
        b=FcJ15Ybh2/hb7IDPcUrCx7gwID0tPzygjr5D8OId5XBoIUv36jIJOLKZGlmggbHBL5
         1dJl7itV33lzsjXZX068M9kNJcvvIoB7SF1xvfg9ZQmghQn+0FdHB0BWP3J/xRSSFgOn
         u2T6jFER3SEpIh0sPvxu8Huk02C/Exn9JjTKOjpLRjqZs/JpJcgChC143xyMqVFqBsQt
         d8SUNBcaJKUamQW5lqfk8lE7Hgud/c0/AEUh4T2ct5zf+O7UgnserIPjyHvB1sQ6FCpx
         YA8vrafXnLMCVw43MgfrvCyQjvClQhsshv1fOBfGWXDJtyBlYldNX+h23Pxhs1wEXqVJ
         4k/g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=wMg3cKg2zuOHLO8cLZEJf5y+mx6dkQC4B8kQNkKIeTM=;
        b=R3JFnqSA+7Imv0JPdAzeAyAUAODiQ7SRhMNMpgyeuu2HR96kJKuJeZ3r90NhCfQ2Z1
         7FosFcvzk3LqKkwrsEBJL6mCa0A2+9p6BzhmUAWz4nJluMSe7fp0yc1DeSirGaqeiq9l
         9AMOoqAifyONciykefb33yPxVXzA36pyj+bYSSfeTM+4XU/1P8x02cdlPJTc+NERlY51
         v8ODl7nBmqDoPANc7yRzMtutNiOWuEfxnxvIyl+bRE/Qbbi5ytPweLG1yfqU29YfCdkK
         RfHwGfNtrvJJBWPNFXrc7/GLiVaDOuUwedkjkuaeJ8MZ2hYyCc85r165X9zdMzfPR/X1
         9YkA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Bea7jtiq;
       spf=pass (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::344 as permitted sender) smtp.mailfrom=elver@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wMg3cKg2zuOHLO8cLZEJf5y+mx6dkQC4B8kQNkKIeTM=;
        b=CQhHhvrXIFE+0JEu405QPg8UxUSG/OWa/BoClOveqMG3lLnGGkSS12btVAYC1FDqQZ
         ctLHDYvxghUaFpM7qFl6r68Ny9c0GBAYuu4+0Y3zRjnJZW5Nvs6lGOvWzAgoSGAHUN0p
         TWWstRPNwWlDW2Akw1HFQWZx2FaRbD6LCp0y4o/tCfUwkVT3sWUGPYgkD/ahBfszI/QY
         VFiEA76LUJ7boTGWUGkR17jN/QjnjAA3Y60putkjWnJdzajhUllMDLXdq+KwH4B0u4/H
         cZ2jBLWBNmYtbZHMCMPrpl4tIDnl3rRijcgw6hBYiewf5T5jf33pjhuq+Clfd40yxPa9
         8JgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wMg3cKg2zuOHLO8cLZEJf5y+mx6dkQC4B8kQNkKIeTM=;
        b=j/MFOw/nvbLJMZje04NBEegKZYqHj49JkaP3pGw/rGC8AOtoo4LVQpJQH9m1TvX+HN
         sEaqmw9gMkQY3HzmnfpS0uP7Rm/SXU66OS3pfTcc6+9Xp3ByWlqUeFy8EBN0Q0Q6JXTj
         DhDkfI6LxHpUjCOgaVpA7OtZR9IxZXBWttaCr6bCP6ERME3Xg91tx7Tn+L39yZFr1sEq
         +xl4JnmypXJ8+hVXjKAFixNfG3z5SW74KTq6nGAWbcwlIy7NzBv+H7dzf2Z4yb41j3O/
         9zI0RIG41xa8OKebSr5cwxYd30jdK7dGF5o6Myy4NbFnuxAHaqy/NJcEZGFSY/BIsDIq
         BB8w==
X-Gm-Message-State: AOAM532bpC5OfN9ScNSYllQzUmsOIpxkCNJp1p9ePqHEe4s/msFEKVkU
	DLab+qtZ4S4NQ5CfnCJzQa0=
X-Google-Smtp-Source: ABdhPJximUZ5io/4xir9WECGEGPfRbIdjjUQUet404I1vvcJEmbRgFOPePQo8cXS7GPeQyqoU7I3Dw==
X-Received: by 2002:ab0:70c9:: with SMTP id r9mr3690601ual.15.1590565462467;
        Wed, 27 May 2020 00:44:22 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:65cc:: with SMTP id n12ls914334uaq.0.gmail; Wed, 27 May
 2020 00:44:22 -0700 (PDT)
X-Received: by 2002:ab0:25c9:: with SMTP id y9mr3849669uan.133.1590565462040;
        Wed, 27 May 2020 00:44:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590565462; cv=none;
        d=google.com; s=arc-20160816;
        b=xWhDNjCuPJzyNBVjkuIfquqqmjghKxKbhoBU8Dexu33u578wlpDpji6j5aWW7I4+JG
         cCQgh9kCjd8XF7S7+sqG792Wl3Ja5XuzLQ87gViy6hdaeZmRuhi1uehYui79cCqFuZlh
         +EXVXIs1LG+yhTVigdsdX1UXe1roC9APgMZMyt2l1v3j7pWUwpoB7GlquLZser5F3QzT
         1HEZDV9gGUyzyZrOwzIr0+/MQ6aRXhwZtv6kLOfA+ECak0AfJTalMwIm2pjkPxZwCvtB
         jYYa8Y5y+d8M4rFdZo2jRDYcioI6jEk5tbSja+mEoE8p8OA/b0DSRvlgZA09lkl462mD
         eHaQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=zbcumbiOybyvrNPq+S8EAFFWXxgWspgqCp4xRwbHRuI=;
        b=fFLYxDepq34oVTBiT8ZjiQoe80WKlRoi0fWUnMreLzLQG0paSF7OeUPhUQmEKjIc7q
         nCMREy+kia2Hx1n/ih8AAPa//NvLxN2MF0rLW6a09dj3VWWn/l90R3lDiibeVK3hF6jM
         4k807wY24ywEDfbr1teqlgaJ6tYJEkF1NiMYBE48hHBxihxnTYSjKUHEr03xd456dj1T
         6a6R5BNHKPYWd2aXTpoi51yYQDqfIErncskcCQXgYePwM0tCXk/f3VQwRNRnRAnIOiV8
         oWU3kth+b2IWasqgcPjVdlKEsEo9lNF5MFXdHmjmELfN618fvrz30bwh4afdo6Vel1np
         X5qw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Bea7jtiq;
       spf=pass (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::344 as permitted sender) smtp.mailfrom=elver@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-ot1-x344.google.com (mail-ot1-x344.google.com. [2607:f8b0:4864:20::344])
        by gmr-mx.google.com with ESMTPS id j5si248946vkl.3.2020.05.27.00.44.22
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 27 May 2020 00:44:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::344 as permitted sender) client-ip=2607:f8b0:4864:20::344;
Received: by mail-ot1-x344.google.com with SMTP id b18so18514628oti.1
        for <clang-built-linux@googlegroups.com>; Wed, 27 May 2020 00:44:22 -0700 (PDT)
X-Received: by 2002:a9d:27a3:: with SMTP id c32mr3972097otb.233.1590565461246;
 Wed, 27 May 2020 00:44:21 -0700 (PDT)
MIME-Version: 1.0
References: <20200521142047.169334-1-elver@google.com> <20200521142047.169334-10-elver@google.com>
 <CAKwvOdnR7BXw_jYS5PFTuUamcwprEnZ358qhOxSu6wSSSJhxOA@mail.gmail.com>
 <CAK8P3a0RJtbVi1JMsfik=jkHCNFv+DJn_FeDg-YLW+ueQW3tNg@mail.gmail.com>
 <20200526120245.GB27166@willie-the-truck> <CAK8P3a29BNwvdN1YNzoN966BF4z1QiSxdRXTP+BzhM9H07LoYQ@mail.gmail.com>
 <CANpmjNOUdr2UG3F45=JaDa0zLwJ5ukPc1MMKujQtmYSmQnjcXg@mail.gmail.com>
 <20200526173312.GA30240@google.com> <CAK8P3a3ZawPnzmzx4q58--M1h=v4X-1GtQLiwL1=G6rDK8=Wpg@mail.gmail.com>
 <CAK8P3a3UYQeXhiufUevz=rwe09WM_vSTCd9W+KvJHJcOeQyWVA@mail.gmail.com> <20200527072248.GA9887@willie-the-truck>
In-Reply-To: <20200527072248.GA9887@willie-the-truck>
From: "'Marco Elver' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 27 May 2020 09:44:09 +0200
Message-ID: <CANpmjNO2A39XRQ9OstwKGKpZ6wQ4ebVcBNfH_ZhCTi8RG6WqYw@mail.gmail.com>
Subject: Re: [PATCH -tip v3 09/11] data_race: Avoid nested statement expression
To: Will Deacon <will@kernel.org>
Cc: Arnd Bergmann <arnd@arndb.de>, Nick Desaulniers <ndesaulniers@google.com>, 
	"Paul E. McKenney" <paulmck@kernel.org>, Dmitry Vyukov <dvyukov@google.com>, 
	Alexander Potapenko <glider@google.com>, Andrey Konovalov <andreyknvl@google.com>, 
	kasan-dev <kasan-dev@googlegroups.com>, LKML <linux-kernel@vger.kernel.org>, 
	Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@kernel.org>, 
	Peter Zijlstra <peterz@infradead.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Borislav Petkov <bp@alien8.de>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: elver@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=Bea7jtiq;       spf=pass
 (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::344 as
 permitted sender) smtp.mailfrom=elver@google.com;       dmarc=pass (p=REJECT
 sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Marco Elver <elver@google.com>
Reply-To: Marco Elver <elver@google.com>
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

On Wed, 27 May 2020 at 09:22, Will Deacon <will@kernel.org> wrote:
>
> On Wed, May 27, 2020 at 01:10:00AM +0200, Arnd Bergmann wrote:
> > On Tue, May 26, 2020 at 9:00 PM Arnd Bergmann <arnd@arndb.de> wrote:
> > >
> > > On Tue, May 26, 2020 at 7:33 PM 'Marco Elver' via Clang Built Linux
> > > <clang-built-linux@googlegroups.com> wrote:
> > > > On Tue, 26 May 2020, Marco Elver wrote:
> > > > > On Tue, 26 May 2020 at 14:19, Arnd Bergmann <arnd@arndb.de> wrote:
> > > > > Note that an 'allyesconfig' selects KASAN and not KCSAN by default.
> > > > > But I think that's not relevant, since KCSAN-specific code was removed
> > > > > from ONCEs. In general though, it is entirely expected that we have a
> > > > > bit longer compile times when we have the instrumentation passes
> > > > > enabled.
> > > > >
> > > > > But as you pointed out, that's irrelevant, and the significant
> > > > > overhead is from parsing and pre-processing. FWIW, we can probably
> > > > > optimize Clang itself a bit:
> > > > > https://github.com/ClangBuiltLinux/linux/issues/1032#issuecomment-633712667
> > > >
> > > > Found that optimizing __unqual_scalar_typeof makes a noticeable
> > > > difference. We could use C11's _Generic if the compiler supports it (and
> > > > all supported versions of Clang certainly do).
> > > >
> > > > Could you verify if the below patch improves compile-times for you? E.g.
> > > > on fs/ocfs2/journal.c I was able to get ~40% compile-time speedup.
> > >
> > > Yes, that brings both the preprocessed size and the time to preprocess it
> > > with clang-11 back to where it is in mainline, and close to the speed with
> > > gcc-10 for this particular file.
> > >
> > > I also cross-checked with gcc-4.9 and gcc-10 and found that they do see
> > > the same increase in the preprocessor output, but it makes little difference
> > > for preprocessing performance on gcc.
> >
> > Just for reference, I've tested this against a patch I made that completely
> > shortcuts READ_ONCE() on anything but alpha (which needs the
> > read_barrier_depends()):
> >
> > --- a/include/linux/compiler.h
> > +++ b/include/linux/compiler.h
> > @@ -224,18 +224,21 @@ void ftrace_likely_update(struct
> > ftrace_likely_data *f, int val,
> >   * atomicity or dependency ordering guarantees. Note that this may result
> >   * in tears!
> >   */
> > -#define __READ_ONCE(x) (*(const volatile __unqual_scalar_typeof(x) *)&(x))
> > +#define __READ_ONCE(x) (*(const volatile typeof(x) *)&(x))
> >
> > +#ifdef CONFIG_ALPHA /* smp_read_barrier_depends is a NOP otherwise */
> >  #define __READ_ONCE_SCALAR(x)                                          \
> >  ({                                                                     \
> >         __unqual_scalar_typeof(x) __x = __READ_ONCE(x);                 \
> >         smp_read_barrier_depends();                                     \
> > -       (typeof(x))__x;                                                 \
> > +       __x;                                                            \
> >  })
> > +#else
> > +#define __READ_ONCE_SCALAR(x) __READ_ONCE(x)
> > +#endif
>
> Nice! FWIW, I'm planning to have Alpha override __READ_ONCE_SCALAR()
> eventually, so that smp_read_barrier_depends() can disappear forever. I
> just bit off more than I can chew for 5.8 :(
>
> However, '__unqual_scalar_typeof()' is still useful for
> load-acquire/store-release on arm64, so we still need a better solution to
> the build-time regression imo. I'm not fond of picking random C11 features
> to accomplish that, but I also don't have any better ideas...

We already use _Static_assert in the kernel, so it's not the first use
of a C11 feature.

> Is there any mileage in the clever trick from Rasmus?
>
> https://lore.kernel.org/r/6cbc8ae1-8eb1-a5a0-a584-2081fca1c4aa@rasmusvillemoes.dk

Apparently that one only works with GCC 7 or newer, and is only
properly defined behaviour since C11. It also relies on multiple
_Pragma. I'd probably take the arguably much cleaner _Generic solution
over that. ;-)

I think given that Peter and Arnd already did some testing, and it
works as intended, if you don't mind, I'll send a patch for the
_Generic version. At least that'll give us a more optimized
__unqual_scalar_typeof(). Any further optimizations to READ_ONCE()
like you mentioned then become a little less urgent.

Thanks,
-- Marco

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CANpmjNO2A39XRQ9OstwKGKpZ6wQ4ebVcBNfH_ZhCTi8RG6WqYw%40mail.gmail.com.
