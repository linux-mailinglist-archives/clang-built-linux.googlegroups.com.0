Return-Path: <clang-built-linux+bncBDTI55WH24IRBEMSXLVQKGQE5PHJA2I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43c.google.com (mail-pf1-x43c.google.com [IPv6:2607:f8b0:4864:20::43c])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A3A3A6D08
	for <lists+clang-built-linux@lfdr.de>; Tue,  3 Sep 2019 17:39:00 +0200 (CEST)
Received: by mail-pf1-x43c.google.com with SMTP id t65sf6098537pfd.14
        for <lists+clang-built-linux@lfdr.de>; Tue, 03 Sep 2019 08:39:00 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567525139; cv=pass;
        d=google.com; s=arc-20160816;
        b=Lhr430UTPgycsVlI679pX6LARYxuj4FpjJdB0zJDbJKx6OEsFYsHhXwthVzp+3wvZa
         CpgSuYzF5xKFsAfOOdZenAIfMInWOVbPf2QRd4fcfntkrw84P4qyBPmWy47BLeWgKIWk
         UUmu8T0CvdJ3aLR1LhweeiNI5IwqVGex1i52g9SH5ZxxKiLHZNvl84OGUpB9UxH62R6h
         aBfEHjGBs7pST7QSoW9CFqh1a3WDBZDo8rLIrPEuvGZXdkjs7j32GikWiZcsKcQTSx64
         SpzFxQ4lhK4wntl6491dpczj9o9x1wTpfVZ5ZI0ktkAEaTIHBe/KdHWqW+SElYzu1vy8
         qzXQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=1rV38WNOiIhP+vlUgZhtMHqFWGmbUZM7a3sK2EcJYxw=;
        b=XgN9C49n5+GtkcpB+sQZqPNxYBvFrDUYK3wmgtiI7E+Cj2B2DstipnFOJrW7rpYzMI
         IkE9aHk7xXcQxnsOm1/VYrSecg0TntgpNne0kJPsbAbVT0svHRiWwmzsnl+3rqmlJbsq
         WopU42E3Lu1irNrCeNPWHB+pWlwzef5h6AEAIVIN1IeOSaNpzOqjbyEFu49iMCbNdAz8
         TAP9haaYNzG71tkdpcszIutfQxy+akEvYPR+dtbfmrrpI70hq2rdOULNtDwW8WmSg6/o
         7BvgXVu+EEt5OFurs728ACOys8AvQhXW1T4hue6OtD0A9l6qYDz3NmMOOpix/5hOtBVi
         nu0g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=sfMjBj2S;
       spf=softfail (google.com: domain of transitioning yamada.masahiro@socionext.com does not designate 210.131.2.82 as permitted sender) smtp.mailfrom=yamada.masahiro@socionext.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=1rV38WNOiIhP+vlUgZhtMHqFWGmbUZM7a3sK2EcJYxw=;
        b=Q332d5DtbdKRVNxl6P89qFjal6FnlaiQL7e6zMCH/OwEf3Am6NHquBh6KuReF+CFd7
         ho7Iu2iLbFyyatkAeTWeFu4FZUglUeFy2c30YmI1WBm8vGOf0Ox4g65i7rveCtTfecF8
         dZFfuvEfekhzhouEsybPYgeNRs6Y3G/O5Gvbd0fSqGMmkeR8LwR9cbtXz6/XTu+mZyT9
         UsYPqaOoetUpEmwgbZQ2+i6CDfxmY7rAVE/wdaNnIV2YI9D4iD30fpW2rqqa6lcEL5bh
         5n07/RZ1T9+5LeZ3nbQ6/hRiUrS22GleMAnHsUCrJdlzkNxQ57T/VOF7gMijF9Pv1MHQ
         PgnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1rV38WNOiIhP+vlUgZhtMHqFWGmbUZM7a3sK2EcJYxw=;
        b=QB50WLEy1IaOTSaLGtyUlSsbMF3P8dClWfJ/OxBBwLl61Po1dZ8FfUwdEDwpLvsYe5
         98PCWicyXEjuxh4uN3vnRMekHgIO0x3/ykRSRgJKiMeVzJHM497lM7fQtbGCjw/UFNy4
         h90+GWD1a/nAAf0x4iGtnIOZo5Dfmg1csCzPl1RvOCHuf4YCQXupasdqbatk6Im3IaXo
         miHEwIT14spsSBmnWfPNUAhxGuokbpMZ8NB4viDxpD62WWlJLFZ+Zk1ANbL1Wr+r7tGE
         BtcuD+qypmYR7i0rvKM5Ty+592AjkVq4m1d+arue8pTw6G7+FZHNECo5GCzLLKGUgyEv
         Ijdg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXCuaUcwhvlhU33EwMaLGQo8pcRNtm0gLC2DwQRHvDZCIgAGxWJ
	YHnFlHbvMrFCxof8l+dklVg=
X-Google-Smtp-Source: APXvYqzCWDj9YH2VlzNmh43NWmzAE8TRVm4L0han0Ma95yH0aFucz2QRLaQyDegTIqSiwCbWCRdAoA==
X-Received: by 2002:a17:902:820f:: with SMTP id x15mr34501919pln.229.1567525137390;
        Tue, 03 Sep 2019 08:38:57 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:20c8:: with SMTP id v8ls5700494plg.11.gmail; Tue, 03
 Sep 2019 08:38:57 -0700 (PDT)
X-Received: by 2002:a17:90a:734a:: with SMTP id j10mr669938pjs.63.1567525137045;
        Tue, 03 Sep 2019 08:38:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567525137; cv=none;
        d=google.com; s=arc-20160816;
        b=LJmzfJpNyNRVmshm5b5idLe6Os+DQxCuD5Odx0BzwHY0GE8qCcNGaLH15ZkiBcHBiO
         jwKy7x++7aNjz0Tk234/pWV1fanYMVGKwhaLEXYifxv2maYGGI4X7DZpq3mcfwyvOkoG
         vNy3lv/KJUavPW9bwqoyWgSJWIz2jq2n1O01JW57+VSsPAetdyNIdBitowxP2EaFMFi+
         NvOfD0gkumDpzn41/rMzinboJtf/2FY7NeXG90kL9tnF/rJky87SP3obzr4NEReTXJCd
         ja477gnV8oRWByDSyPFQlzORD885V4FiPWdNiUkzx2zAGaTWGKFanULAsSBv3HlTAoGu
         8/Fw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=ddsALsfzO0Qd/rlS27Z9Zxje7b1eMLR4GVZ55uvcTqA=;
        b=luP++lZlh6YMDyXOTmytBdQ5QfoYOFp5gJZugWQrSjBUvx7P4oKIGCILqJNtgB5rcH
         /mo0Zg4015pBsUgWnD5TY77ZqsJFZ/evgCueAp98BU8iLG2mPdZVM2nWwz64aIcZ8cWB
         E0pIoFScplBwaRl1Rhqfx3QJNimmwfCmYODpfDCUh6BOlAOIYlP/A1ZNLD0T3u6UEW5Q
         ry6tA5OF3WmR1azk2e3O5iW5wK2kpbBeCOYlys1g7vk2qv+VBvM5dDTta3SyBUf42gm7
         Jt9W+mloyAligMAswRs1A4MzNzvaxnaNtF6Pg4dbIY/Elmn4KlfJx9V1usq8gyxF840X
         Te6A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=sfMjBj2S;
       spf=softfail (google.com: domain of transitioning yamada.masahiro@socionext.com does not designate 210.131.2.82 as permitted sender) smtp.mailfrom=yamada.masahiro@socionext.com
Received: from conssluserg-03.nifty.com (conssluserg-03.nifty.com. [210.131.2.82])
        by gmr-mx.google.com with ESMTPS id 91si242971plf.0.2019.09.03.08.38.56
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 03 Sep 2019 08:38:57 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning yamada.masahiro@socionext.com does not designate 210.131.2.82 as permitted sender) client-ip=210.131.2.82;
Received: from mail-ua1-f50.google.com (mail-ua1-f50.google.com [209.85.222.50]) (authenticated)
	by conssluserg-03.nifty.com with ESMTP id x83FcfLM001165
	for <clang-built-linux@googlegroups.com>; Wed, 4 Sep 2019 00:38:42 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-03.nifty.com x83FcfLM001165
X-Nifty-SrcIP: [209.85.222.50]
Received: by mail-ua1-f50.google.com with SMTP id f25so3055447uap.1
        for <clang-built-linux@googlegroups.com>; Tue, 03 Sep 2019 08:38:42 -0700 (PDT)
X-Received: by 2002:a9f:2213:: with SMTP id 19mr5138825uad.25.1567525121006;
 Tue, 03 Sep 2019 08:38:41 -0700 (PDT)
MIME-Version: 1.0
References: <20190828055425.24765-1-yamada.masahiro@socionext.com>
 <20190828055425.24765-2-yamada.masahiro@socionext.com> <20190828182017.GB127646@archlinux-threadripper>
 <CAKwvOd=r5Y8hQQBeKZ6zAokPdyeT2AVKFsdviTvwV5AyDQQHrw@mail.gmail.com> <20190829000551.GA62731@archlinux-threadripper>
In-Reply-To: <20190829000551.GA62731@archlinux-threadripper>
From: Masahiro Yamada <yamada.masahiro@socionext.com>
Date: Wed, 4 Sep 2019 00:38:04 +0900
X-Gmail-Original-Message-ID: <CAK7LNARL45QYMR5PM0kte-y6_XSErsGgoUJ6zg421hK99VT=+w@mail.gmail.com>
Message-ID: <CAK7LNARL45QYMR5PM0kte-y6_XSErsGgoUJ6zg421hK99VT=+w@mail.gmail.com>
Subject: Re: [PATCH 2/2] kbuild: allow Clang to find unused static inline
 functions for W=1 build
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
        Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
        Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
        Arnd Bergmann <arnd@arndb.de>, Kees Cook <keescook@chromium.org>,
        Luc Van Oostenryck <luc.vanoostenryck@gmail.com>,
        Michal Marek <michal.lkml@markovi.net>,
        Sven Schnelle <svens@stackframe.org>,
        Xiaozhou Liu <liuxiaozhou@bytedance.com>,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: yamada.masahiro@socionext.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=sfMjBj2S;       spf=softfail
 (google.com: domain of transitioning yamada.masahiro@socionext.com does not
 designate 210.131.2.82 as permitted sender) smtp.mailfrom=yamada.masahiro@socionext.com
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

On Thu, Aug 29, 2019 at 9:05 AM Nathan Chancellor
<natechancellor@gmail.com> wrote:
>
> On Wed, Aug 28, 2019 at 04:28:30PM -0700, Nick Desaulniers wrote:
> > On Wed, Aug 28, 2019 at 11:20 AM Nathan Chancellor
> > <natechancellor@gmail.com> wrote:
> > >
> > > On Wed, Aug 28, 2019 at 02:54:25PM +0900, Masahiro Yamada wrote:
> > > > GCC and Clang have different policy for -Wunused-function; GCC does not
> > > > warn unused static inline functions at all whereas Clang does if they
> > > > are defined in source files instead of included headers although it has
> > > > been suppressed since commit abb2ea7dfd82 ("compiler, clang: suppress
> > > > warning for unused static inline functions").
> > > >
> > > > We often miss to delete unused functions where 'static inline' is used
> > > > in *.c files since there is no tool to detect them. Unused code remains
> > > > until somebody notices. For example, commit 075ddd75680f ("regulator:
> > > > core: remove unused rdev_get_supply()").
> > > >
> > > > Let's remove __maybe_unused from the inline macro to allow Clang to
> > > > start finding unused static inline functions. For now, we do this only
> > > > for W=1 build since it is not a good idea to sprinkle warnings for the
> > > > normal build.
> > > >
> > > > My initial attempt was to add -Wno-unused-function for no W=1 build
> > > > (https://lore.kernel.org/patchwork/patch/1120594/)
> > > >
> > > > Nathan Chancellor pointed out that would weaken Clang's checks since
> > > > we would no longer get -Wunused-function without W=1. It is true GCC
> > > > would detect unused static non-inline functions, but it would weaken
> > > > Clang as a standalone compiler at least.
> >
> > Got it. No problem.
> >
> > > >
> > > > Here is a counter implementation. The current problem is, W=... only
> > > > controls compiler flags, which are globally effective. There is no way
> > > > to narrow the scope to only 'static inline' functions.
> > > >
> > > > This commit defines KBUILD_EXTRA_WARN[123] corresponding to W=[123].
> > > > When KBUILD_EXTRA_WARN1 is defined, __maybe_unused is omitted from
> > > > the 'inline' macro.
> > > >
> > > > This makes the code a bit uglier, so personally I do not want to carry
> > > > this forever. If we can manage to fix most of the warnings, we can
> > > > drop this entirely, then enable -Wunused-function all the time.
> >
> > How many warnings?
>
> In an x86 defconfig build (one of the smallest builds we do), I see an
> additional 35 warnings that crop up:
>
> https://gist.github.com/003ba86ba60b4ac7e8109089d6cb1a5a
>
> > > >
> > > > If you contribute to code clean-up, please run "make CC=clang W=1"
> > > > and check -Wunused-function warnings. You will find lots of unused
> > > > functions.
> > > >
> > > > Some of them are false-positives because the call-sites are disabled
> > > > by #ifdef. I do not like to abuse the inline keyword for suppressing
> > > > unused-function warnings because it is intended to be a hint for the
> > > > compiler optimization. I prefer #ifdef around the definition, or
> > > > __maybe_unused if #ifdef would make the code too ugly.
> > > >
> > > > Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>
> > >
> > > I can still see warnings from static unused functions and with W=1, I
> > > see plenty more. I agree that this is uglier because of the
> > > __inline_maybe_unused but I think this is better for regular developers.
> > > I will try to work on these unused-function warnings!
> >
> > How many are we talking here?
> >
> > >
> > > Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
> > > Tested-by: Nathan Chancellor <natechancellor@gmail.com>
> >
> > This is getting kind of messy.  I was more ok when the goal seemed to
> > be simplifying the definition of `inline`, but this is worse IMO.
>
> I guess if you want, we can just go back to v1 and have all unused
> function warnings hidden by default with clang. Fixing these warnings
> will take a significant amount of time given there will probably be a
> few hundred so I don't think having this warning hidden behind W=1 for
> that long is a good thing.
>
> Cheers,
> Nathan

I slightly prefer this version.

Either way we go, I want to fix -Wunused-function warnings,
then revert this patch as soon as possible.


--
Best Regards

Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNARL45QYMR5PM0kte-y6_XSErsGgoUJ6zg421hK99VT%3D%2Bw%40mail.gmail.com.
