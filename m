Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBZVG5SEAMGQEUSDPB6I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3e.google.com (mail-io1-xd3e.google.com [IPv6:2607:f8b0:4864:20::d3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 463333EE3D9
	for <lists+clang-built-linux@lfdr.de>; Tue, 17 Aug 2021 03:39:51 +0200 (CEST)
Received: by mail-io1-xd3e.google.com with SMTP id n22-20020a6bf6160000b0290520c8d13420sf10297073ioh.19
        for <lists+clang-built-linux@lfdr.de>; Mon, 16 Aug 2021 18:39:51 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629164390; cv=pass;
        d=google.com; s=arc-20160816;
        b=Onhrg0nm3ya+vGTnen2OoEbAnp3/YNfivFAxZ03SHoIU/POsU9/txzQC1e0SEB4h9J
         XM8a+8IDux3nLmP60b+CBnFC+RMBJwqaVtl2/wN7g+DHQCqhaAf6noUzPt4JZJM0d0xP
         fw9/EEwxgX1OQ42b82iuDJ6DJxK6OCBOEaL2piGgBQt1CEINi08jK1LMCGFAiixY0ldx
         mbyPBrcPvZgjVDk+wIj//0eCO8Gv6jK/78MuNMLLO/GggBv8z9OWrXpoOB1PuxSSB1NL
         8ZkPXC3C2rnNZZcLMrbKPuFIzQ3/CWtRtCjWvxt21L4jp2kEtFqhyy7Y85nQ+qbsJ9a3
         gTEQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=nhFzWR2IR4XBWlzgMmNpfmOu2Iquv4NBxHcA9wZ4rmU=;
        b=N7VG8BO7rdsjzJz4M1nHRc5I7S4zkPk6pJ0JZcHDvIXz7m96qT8CYmwHA4YFO4srl1
         3M4ioNeyfgnYaF5Z9Pvs+heJoqaV8wUUE8HC6mq5XSvSSVmeRbUgYaPuXZ92IwDFJSCT
         sugntVHcpmtDAVoPE2vClqACbziN2bWLks4K3i7W1DNPabcaDEQgCyITTFIPAy70hPRb
         zZqdRmfuk2OibBz3LLRZ7Ty9VeUIec4dLciwIh0XMmK3rmmfllPdamaORA6/52EpNZA5
         LYCIJktJVzwcxhNij82FiQsKhASIxZdNSikXiPRpZ6/xt8YEroax+lqZx6rolRGvUv8/
         aMvw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=KNHDtYbN;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.81 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=nhFzWR2IR4XBWlzgMmNpfmOu2Iquv4NBxHcA9wZ4rmU=;
        b=WmjPJV+lVpuIIQ1yQ5OHCGjATQJZYBfRLWsghmpG8BGFv/9sVjSqkizvucRzfNUXFU
         vE8/bvXaE4SuyU+0D7YpLbqZpaBwFB1W42/ZwyUG7FS+bNiM3OCXEjAKgBxndGC1t6x6
         Gfybg2OaWmthWPwfyU/sjyWg0ubyhNhqsXMGkpVV6yv/69bXKKqbZfKq+Z4QCO5D4g3d
         Luezh0CGNGJpEFmgoIU4sMXw5dfJFqJVdetm+j7NbpnFDNY0TYs6TjDwBfer4UPMgnXp
         zl/9mt8lp/ZEf/35GJf2zYUzIactx/B6ASnV7kBVsNFohxrN5ib1g7MW13Fmx+GZ1S3T
         lhrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=nhFzWR2IR4XBWlzgMmNpfmOu2Iquv4NBxHcA9wZ4rmU=;
        b=GORb/EK7rG8JR2/5R5Ick+GrWF3lIH6xdk9UsfwEy186h3jQ5N02Pn6uRNraelYZJL
         6m1QvAiH2fT9UWPIEnU43QI3Jpf+Oilo4eZS2c+AAs/quoB+SWsBvwQYtvqZOlgjv3zd
         XnNbEGviA2HmzMclu8Ie+Kg50Tk9cIg6FpkKcrqgffy4rkk52rismWOmC1y5e+ppKZ3F
         kdpNrtdQP20hmwTDhu6ES9Qoh/YH7N9g0Lu1BKk8s9kPKJ9YG6D0N5d0UdfHoGcgyYkA
         /IpfKFTC9JzfR2dsq4cTVDPtn9yjAWVvu50Feo2eJXWT5P+XlxeVgpMVIxrW6AwKK18V
         A6aw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533NoA4cljuxqMP4LJGulP7H02VREnF3/DXcDdP/kcyFK5oDRS28
	0ISt7rlEdfLM4Y9Z7bMJr6M=
X-Google-Smtp-Source: ABdhPJyuc8kN2bnh1Gys+V/5NthazXHWQ7cmFDTV3ivx4AP5G7QJUHGSYswdFOeq+bGG+MiUplvtoA==
X-Received: by 2002:a6b:28b:: with SMTP id 133mr934342ioc.107.1629164390289;
        Mon, 16 Aug 2021 18:39:50 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:c887:: with SMTP id w7ls108294ilo.4.gmail; Mon, 16 Aug
 2021 18:39:50 -0700 (PDT)
X-Received: by 2002:a92:280d:: with SMTP id l13mr634864ilf.99.1629164389952;
        Mon, 16 Aug 2021 18:39:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629164389; cv=none;
        d=google.com; s=arc-20160816;
        b=HeFmOqJGajBd7XIWZUV5//TPkQxH5GXiHVj1V3RY+YmzXNxbqTZPyY+O/z3X+ABeG8
         6+Uc7801GlgKHyMRZk9FEEakwxxAc/qiupdkbRQC7atUsExBMoqNWyB9baWxNOsU65FS
         MuX4xs2z5TR17SL7VmEqmBvUTyvAparagT/GR5A+zr7mhxaLgBDO9CxTr73MTgY8dumx
         bImd1H0MCI+7loq6JSO/hscSTXxrLXVbvqB6dpziBPZbbH+StIiOkGPLXHb2RqYujoTq
         mGSZeJw4YcZ0sKgN37Bed5DeM04JplP+htvhKtuFzQLjehaUOzuc06buWNm4V6/qEDO2
         8YIg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=5NWkg+bxS9gK9TpUYBiD3sVAhmuzKvoT9bOeRCZQU14=;
        b=jlZb23KgoLI+mPimPZs7uCZZzBA19n4tt9R17cxLgjfZR2ki10/Z77G1v+B6vyqWMd
         P4y/yNFFveVTLuubgn4Fdi00aLoLIYSAv9l5oLJKl65rCERxvvJjYd52fyibZqoRHVdi
         dG6PdFyhRK+C4tAMTc9qYYLQIFwbPveEEl0ALld3Z8xxgn5g1xGNrn6qGwXnoj3fF4nc
         HmbMCagJmBAmTe0545z7et2CiPOd7bl0j333q6T0BU63cH3QOPfEwv3URaVC7d/RGxP+
         0yVPmfcQFcRCWHYZ+LXT1wlr5/2pX5+rXk9vYVXFIxbSbnsR2kswKqxP2ORzFcF9Rttx
         47eQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=KNHDtYbN;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.81 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conssluserg-02.nifty.com (conssluserg-02.nifty.com. [210.131.2.81])
        by gmr-mx.google.com with ESMTPS id k11si27535iov.3.2021.08.16.18.39.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 16 Aug 2021 18:39:49 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.81 as permitted sender) client-ip=210.131.2.81;
Received: from mail-pj1-f50.google.com (mail-pj1-f50.google.com [209.85.216.50]) (authenticated)
	by conssluserg-02.nifty.com with ESMTP id 17H1dXAs028385
	for <clang-built-linux@googlegroups.com>; Tue, 17 Aug 2021 10:39:34 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-02.nifty.com 17H1dXAs028385
X-Nifty-SrcIP: [209.85.216.50]
Received: by mail-pj1-f50.google.com with SMTP id n5so8894730pjt.4
        for <clang-built-linux@googlegroups.com>; Mon, 16 Aug 2021 18:39:33 -0700 (PDT)
X-Received: by 2002:a17:902:bc41:b029:12d:3f9b:401e with SMTP id
 t1-20020a170902bc41b029012d3f9b401emr745719plz.47.1629164373202; Mon, 16 Aug
 2021 18:39:33 -0700 (PDT)
MIME-Version: 1.0
References: <20210810204240.4008685-1-ndesaulniers@google.com>
 <CAK7LNASotywVkNjaBC7wYke70QL+a0tMJEVEvRTPpt8dDgHE9Q@mail.gmail.com>
 <CAKwvOdmpTt1PBnvo3RFkYnd5O2JTW7DTA9sGQJgvsDOFkVt8Ag@mail.gmail.com> <CAK7LNAQP93qMRP8uSZKzLR0G7tM9-vNyzAEsUceRtj2nA0kd7A@mail.gmail.com>
In-Reply-To: <CAK7LNAQP93qMRP8uSZKzLR0G7tM9-vNyzAEsUceRtj2nA0kd7A@mail.gmail.com>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Tue, 17 Aug 2021 10:38:55 +0900
X-Gmail-Original-Message-ID: <CAK7LNAQDcOvjP-gj79rhOJzd456qBP7Fyo3yv94Mp5cHJhOFMw@mail.gmail.com>
Message-ID: <CAK7LNAQDcOvjP-gj79rhOJzd456qBP7Fyo3yv94Mp5cHJhOFMw@mail.gmail.com>
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
 header.i=@nifty.com header.s=dec2015msa header.b=KNHDtYbN;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.81 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
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

On Tue, Aug 17, 2021 at 9:16 AM Masahiro Yamada <masahiroy@kernel.org> wrote:
>
> On Tue, Aug 17, 2021 at 3:36 AM Nick Desaulniers
> <ndesaulniers@google.com> wrote:
> >
> > On Fri, Aug 13, 2021 at 6:43 PM Masahiro Yamada <masahiroy@kernel.org> wrote:
> > >
> > > On Wed, Aug 11, 2021 at 5:42 AM Nick Desaulniers
> > > <ndesaulniers@google.com> wrote:
> > > >
> > > > --param=allow-store-data-races=0 was renamed to --allow-store-data-races
> > > > in the GCC 10 release.
> > > >
> > > > diff --git a/Makefile b/Makefile
> > > > index 027fdf2a14fe..3e3fb4affba1 100644
> > > > --- a/Makefile
> > > > +++ b/Makefile
> > > > @@ -844,17 +847,17 @@ KBUILD_RUSTFLAGS += -Copt-level=z
> > > >  endif
> > > >
> > > >  # Tell gcc to never replace conditional load with a non-conditional one
> > > > -KBUILD_CFLAGS  += $(call cc-option,--param=allow-store-data-races=0)
> > > > +ifdef CONFIG_CC_IS_GCC
> > >
> > >
> > > Can you insert a comment here?
> > >
> > > # GCC 10 renamed --param=allow-store-data-races=0 to --allow-store-data-races
> > >
> > >
> > > It will remind us of dropping this conditional
> > > in the (long long distant) future.
> > >
> > >
> > >
> > >
> > > > +KBUILD_CFLAGS  += $(call cc-option,--allow-store-data-races,--param=allow-store-data-races=0)
> > > >  KBUILD_CFLAGS  += $(call cc-option,-fno-allow-store-data-races)
> > > > +endif
> >
> > This report is confusing:
> > https://lore.kernel.org/linux-mm/202108160729.Lx0IJzq3-lkp@intel.com/
> > (csky gcc-11)
> >
> > >> csky-linux-gcc: error: unrecognized command-line option '--param=allow-store-data-races=0'; did you mean '--allow-store-data-races'?
> >
> > I wonder if cc-option detection for these is broken?
>
> I do not say it is broken...
>
>
> cc-option is defined like this:
>
> cc-option = $(call __cc-option, $(CC),\
>         $(KBUILD_CPPFLAGS) $(KBUILD_CFLAGS),$(1),$(2))
>
>
> It is checking
> $(KBUILD_CPPFLAGS) + $(KBUILD_CFLAGS)
> + --allow-store-data-races
>
>
> A few lines above, I see
>
> csky-linux-gcc: error: unrecognized argument in option '-mcpu=ck860'
>
>
> It makes all the cc-option tests fail after this line:
> KBUILD_CFLAGS += -mcpu=$(CPUTYPE) -Wa,-mcpu=$(MCPU_STR)
>
>
> Then,
>
> $(call cc-option,--allow-store-data-races,--param=allow-store-data-races=0)
>
> falls back to --param=allow-store-data-races=0
>
>
>
>
> >  Perhaps I should
> > not touch these other than to wrap them in the CONFIG_CC_IS_GCC guard?
>
> I do not think so.
>
> If an unrecognized argument appears,
> all the cc-option tests that follow are unreliable.
>
>
>
> If you are not comfortable with  it,
> you can split it.
>
> KBUILD_CFLAGS  += $(call cc-option,--allow-store-data-races)
> KBUILD_CFLAGS  += $(call cc-option,--param=allow-store-data-races=0)


I read the patch in the wrong way.
This is the same as the current code.

So, your v2 is fine with me.
I will pick it up soon.





-- 
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNAQDcOvjP-gj79rhOJzd456qBP7Fyo3yv94Mp5cHJhOFMw%40mail.gmail.com.
