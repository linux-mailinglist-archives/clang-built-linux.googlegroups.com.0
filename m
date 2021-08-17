Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBDUA5SEAMGQEILZOQJY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb38.google.com (mail-yb1-xb38.google.com [IPv6:2607:f8b0:4864:20::b38])
	by mail.lfdr.de (Postfix) with ESMTPS id A58993EE0BF
	for <lists+clang-built-linux@lfdr.de>; Tue, 17 Aug 2021 02:17:19 +0200 (CEST)
Received: by mail-yb1-xb38.google.com with SMTP id j9-20020a2581490000b02905897d81c63fsf18536796ybm.8
        for <lists+clang-built-linux@lfdr.de>; Mon, 16 Aug 2021 17:17:19 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629159438; cv=pass;
        d=google.com; s=arc-20160816;
        b=Oz6j9WB8D0kTCUDNf+CwErwItgFizOOiymurcPn3v91g3vSHpa6EmFo8tJqNHvX5TJ
         fu1vgycEsQeChzU+10ZpJqR5V9x/FrH+F8VuVNDMZ0m+HtahJDHNJ1Qalk1brYvOh5dx
         tL2+Q+3qlf8qTtiiNshUMt1sSva5RzTodpVa1u4aEbvZvZ7qKsLd13wy1c6ZoXyN9Rl8
         074zaNRgkD0Vni5DbHGhEZRau8/4oPem7WIhJBCLtBELBnSqO5r7iNtVsZ7/6DPivfV1
         F+TPXaAVSnRJQz1R68t7AUCmT4RAXgKm/eDwiZ+L4lC0fCBsH8tN/lTYs4XRRrKiuJnD
         s+GQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=tG3MKcaOxEq19024tz1QqLsNLdhGRefOuz23HQD+NAM=;
        b=xAMib1hisqXQYvwTUS6LMYq86eX761g3S1yHTce/v5SMApU4hSq81AYHloM2jDQfGN
         ED4YAXRukxHR4A6hs224Jfj4n3WWfbWwYU/kffNgzGauHS2kAgffiDhNzk6jY763FHa9
         oECG+xressT2xnV0EFrf1njG9S2eqJfs49jCKuutF6y8L/Qws1XpLCgDrZu20mOLhi9U
         qUAaKDvMWLo64BmE0lruJsgQq9pFH8Tgq1nL4S7UO7ct5VrUz1hudmd8NUznfjCxAud2
         pO/ybKZ0Z2FfZCMkZa6x5CRqGmLm/zpti2RnbV/4+Wtev00cBDyHLDCy1T1KkManChmk
         3iLg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=SR5bX611;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.83 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=tG3MKcaOxEq19024tz1QqLsNLdhGRefOuz23HQD+NAM=;
        b=YAHQrpgcTQ/wpW/S4NRnsWlIzNgyMfhE3wpAuJh4IMGckNc+YnHxHvMFCTokt1k6kk
         ux7gBpaKzvLiI6dqR0ZW9zJhNCg9kDHZhFBX+5tbHrECHL3omlJEQfRH/gTEFY7d26MH
         rxBLCX2wUIN97FNsRQZcvQpb/dKzP7P4pWfZBSSY7oY74wAW58ERm57hlh5s8afFUfnL
         k5iT5E3C3k2G9p3PkQ4ZGYun0WNAgUnwFG0O2qn1RuSLdovtUo1aCNMTbLbwmSCSu+ov
         E3XWhnCryIdGslPSMXLWZ+3TCY+ODySCBI/uxT9X4JzGgmiOqSeEU+EtvuB6YRhfU5Dv
         QFwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=tG3MKcaOxEq19024tz1QqLsNLdhGRefOuz23HQD+NAM=;
        b=bENXIPQcgMg6PONerwkMvTdf6BoqbFyuNk/R+DzBDZe835hx9jGnCkl2bIMtNp68EI
         dQW5ws2e9L9r53GB+4NYKSMmaQWOJB1o8t0mKGik33WDJTIZ8yi2KJL1DJRz0hlih5kC
         1GKG0y70BZKu51nLLVFq5d+IVD8eVutz/LSsJzW//LJisNmzF4+cfz4VhtmwzQpKKhWS
         nddZNR+AJr1hwwN/LKC99B4qSG4amnqv/KMtiPA1BAKp1c71RwqgxIbZZ2t5DgHo84J1
         5YImi9d8nNFMTCfavRsdDVN4JYuJYNNingDPtb/sSx5tGxPQPmjwUpT5CQ0T1wqyRO6H
         Z1AA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531Vj1iGYrpY0ThZFoCrbTsKjPRB1dIN5Go9kz7OTOOEuMPYqpI9
	zEmI3KKOlaT8qpZg38z++po=
X-Google-Smtp-Source: ABdhPJwSY1Wuw3iDEA4ez3Uvmn3nDJ27gi01inhPfOBUlbO/MGu+7WHHqFjO6Ckgrm6FFhBTCeoD0Q==
X-Received: by 2002:a25:bc0f:: with SMTP id i15mr907983ybh.233.1629159438634;
        Mon, 16 Aug 2021 17:17:18 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:9808:: with SMTP id a8ls211523ybo.11.gmail; Mon, 16 Aug
 2021 17:17:18 -0700 (PDT)
X-Received: by 2002:a25:734b:: with SMTP id o72mr853550ybc.433.1629159438134;
        Mon, 16 Aug 2021 17:17:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629159438; cv=none;
        d=google.com; s=arc-20160816;
        b=s12ozCL+esoTQwWmL1FniSRyG2GzAsNWZBKiLk1BX+m5WzVF8Wi0mc+f6zWBXEOPqu
         dw9B+FdFyhKLkug2hdSnWaJWO1JquWS1F5G9Fd3AjBIQH7BJ93o4Z8/xxOzhdGR/O/nY
         4RjkWwNy5lzl/uoxJSnLwG7C3y9juk6TyL63W3Y8Bhk4QClc70fFjXZsNW06Qub5sHnK
         kuZtd7hukWkD9J2SgDK35/kHVLfynxVbr33OvCTYCPqT6BD5nBhihTS4ClFpz7bPLr/H
         JDWtxq1tz2/lySAoqPNeFPEZCl/qvCUvnVwL76C88gHyqsWBCFWosvullHwwD16hP5+G
         wKPA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=XbVBncXQBymx/ieyPJ6HdMsSmxJ3fpUPvSQvKQ5bVDo=;
        b=K6E4hZ3BzzGOhXPtwKdBmRyqNXPzb8NLCRE53JWkUeIDEMVb6yHo8QkmVIR/11PhQt
         FlcTWrClINKFNzuKD7VSisxdzovfVY3L+B8S6XPIvCEKPyeToivYp0S++nf0CUlph6io
         BDI1kbfBpkbBhNYghQelUVKwbM3bvJ0CvcY2Gv5ayR646rIvBQZcvU+ojz63wZqH6hVz
         +eHXGvSOB2ZM1a8pz3E8NKfmS4o2d2f3mUr6sYxJPuTed2GKNjdq8Lh+SFbLXQhzQ02D
         1EDvMM9xSHcGYiJrQhXym+bSJoiM2HANzI1evjSQTt0FjkEGNh3x4gAaErE36FGIXK5a
         g6sQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=SR5bX611;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.83 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conssluserg-04.nifty.com (conssluserg-04.nifty.com. [210.131.2.83])
        by gmr-mx.google.com with ESMTPS id z205si41917ybb.0.2021.08.16.17.17.17
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 16 Aug 2021 17:17:18 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.83 as permitted sender) client-ip=210.131.2.83;
Received: from mail-pj1-f49.google.com (mail-pj1-f49.google.com [209.85.216.49]) (authenticated)
	by conssluserg-04.nifty.com with ESMTP id 17H0Gw2O031961
	for <clang-built-linux@googlegroups.com>; Tue, 17 Aug 2021 09:16:58 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-04.nifty.com 17H0Gw2O031961
X-Nifty-SrcIP: [209.85.216.49]
Received: by mail-pj1-f49.google.com with SMTP id mq2-20020a17090b3802b0290178911d298bso3129817pjb.1
        for <clang-built-linux@googlegroups.com>; Mon, 16 Aug 2021 17:16:58 -0700 (PDT)
X-Received: by 2002:a65:6459:: with SMTP id s25mr673098pgv.7.1629159418096;
 Mon, 16 Aug 2021 17:16:58 -0700 (PDT)
MIME-Version: 1.0
References: <20210810204240.4008685-1-ndesaulniers@google.com>
 <CAK7LNASotywVkNjaBC7wYke70QL+a0tMJEVEvRTPpt8dDgHE9Q@mail.gmail.com> <CAKwvOdmpTt1PBnvo3RFkYnd5O2JTW7DTA9sGQJgvsDOFkVt8Ag@mail.gmail.com>
In-Reply-To: <CAKwvOdmpTt1PBnvo3RFkYnd5O2JTW7DTA9sGQJgvsDOFkVt8Ag@mail.gmail.com>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Tue, 17 Aug 2021 09:16:20 +0900
X-Gmail-Original-Message-ID: <CAK7LNAQP93qMRP8uSZKzLR0G7tM9-vNyzAEsUceRtj2nA0kd7A@mail.gmail.com>
Message-ID: <CAK7LNAQP93qMRP8uSZKzLR0G7tM9-vNyzAEsUceRtj2nA0kd7A@mail.gmail.com>
Subject: Re: [PATCH] Makefile: remove stale cc-option checks
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Michal Marek <michal.lkml@markovi.net>,
        Nathan Chancellor <nathan@kernel.org>,
        Andrew Morton <akpm@linux-foundation.org>,
        "Paul E. McKenney" <paulmck@kernel.org>,
        Peter Zijlstra <peterz@infradead.org>, Miguel Ojeda <ojeda@kernel.org>,
        Tetsuo Handa <penguin-kernel@i-love.sakura.ne.jp>,
        Vitor Massaru Iha <vitor@massaru.org>,
        Sedat Dilek <sedat.dilek@gmail.com>,
        Daniel Latypov <dlatypov@google.com>,
        Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        Naresh Kamboju <naresh.kamboju@linaro.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=SR5bX611;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.83 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
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

On Tue, Aug 17, 2021 at 3:36 AM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> On Fri, Aug 13, 2021 at 6:43 PM Masahiro Yamada <masahiroy@kernel.org> wrote:
> >
> > On Wed, Aug 11, 2021 at 5:42 AM Nick Desaulniers
> > <ndesaulniers@google.com> wrote:
> > >
> > > --param=allow-store-data-races=0 was renamed to --allow-store-data-races
> > > in the GCC 10 release.
> > >
> > > diff --git a/Makefile b/Makefile
> > > index 027fdf2a14fe..3e3fb4affba1 100644
> > > --- a/Makefile
> > > +++ b/Makefile
> > > @@ -844,17 +847,17 @@ KBUILD_RUSTFLAGS += -Copt-level=z
> > >  endif
> > >
> > >  # Tell gcc to never replace conditional load with a non-conditional one
> > > -KBUILD_CFLAGS  += $(call cc-option,--param=allow-store-data-races=0)
> > > +ifdef CONFIG_CC_IS_GCC
> >
> >
> > Can you insert a comment here?
> >
> > # GCC 10 renamed --param=allow-store-data-races=0 to --allow-store-data-races
> >
> >
> > It will remind us of dropping this conditional
> > in the (long long distant) future.
> >
> >
> >
> >
> > > +KBUILD_CFLAGS  += $(call cc-option,--allow-store-data-races,--param=allow-store-data-races=0)
> > >  KBUILD_CFLAGS  += $(call cc-option,-fno-allow-store-data-races)
> > > +endif
>
> This report is confusing:
> https://lore.kernel.org/linux-mm/202108160729.Lx0IJzq3-lkp@intel.com/
> (csky gcc-11)
>
> >> csky-linux-gcc: error: unrecognized command-line option '--param=allow-store-data-races=0'; did you mean '--allow-store-data-races'?
>
> I wonder if cc-option detection for these is broken?

I do not say it is broken...


cc-option is defined like this:

cc-option = $(call __cc-option, $(CC),\
        $(KBUILD_CPPFLAGS) $(KBUILD_CFLAGS),$(1),$(2))


It is checking
$(KBUILD_CPPFLAGS) + $(KBUILD_CFLAGS)
+ --allow-store-data-races


A few lines above, I see

csky-linux-gcc: error: unrecognized argument in option '-mcpu=ck860'


It makes all the cc-option tests fail after this line:
KBUILD_CFLAGS += -mcpu=$(CPUTYPE) -Wa,-mcpu=$(MCPU_STR)


Then,

$(call cc-option,--allow-store-data-races,--param=allow-store-data-races=0)

falls back to --param=allow-store-data-races=0




>  Perhaps I should
> not touch these other than to wrap them in the CONFIG_CC_IS_GCC guard?

I do not think so.

If an unrecognized argument appears,
all the cc-option tests that follow are unreliable.



If you are not comfortable with  it,
you can split it.

KBUILD_CFLAGS  += $(call cc-option,--allow-store-data-races)
KBUILD_CFLAGS  += $(call cc-option,--param=allow-store-data-races=0)



Or, another way of implementation is

KBUILD_CFLAGS += $(call cc-ifversion, -lt, 1000,
--allow-store-data-races, --param=allow-store-data-races=0)





>
> (Either way, I need to send a v2 in response to Naresh's report as
> well. https://lore.kernel.org/lkml/CA+G9fYtPBp_-Ko_P7NuOX6vN9-66rjJuBt21h3arrLqEaQQn6w@mail.gmail.com/
> It seems that -mfentry wasn't implemented for s390-linux-gnu-gcc until
> gcc-9; so rather than remove top level support, perhaps a comment
> about gcc-9+ s390 having support will make grepping for it easier in
> the future).
> --
> Thanks,
> ~Nick Desaulniers



-- 
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNAQP93qMRP8uSZKzLR0G7tM9-vNyzAEsUceRtj2nA0kd7A%40mail.gmail.com.
