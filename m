Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBYNVQ6EAMGQE57PVJRI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63f.google.com (mail-pl1-x63f.google.com [IPv6:2607:f8b0:4864:20::63f])
	by mail.lfdr.de (Postfix) with ESMTPS id 011653D98EE
	for <lists+clang-built-linux@lfdr.de>; Thu, 29 Jul 2021 00:32:03 +0200 (CEST)
Received: by mail-pl1-x63f.google.com with SMTP id p7-20020a170902b087b029012c2879a885sf3113872plr.6
        for <lists+clang-built-linux@lfdr.de>; Wed, 28 Jul 2021 15:32:02 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627511521; cv=pass;
        d=google.com; s=arc-20160816;
        b=Ya/BUtpnzOiI459isB54ls3efNe8Umz9O6Pz1klyWB/twAtA5GwjIyvZ5tQB5salEH
         DazHJ8tnYi4aImtUXn8tdm99kTl0ZWlEkD+koH5q9t9KprllFhNmpnsB4xApFg4ETj9G
         3YgdCDqF/Re4mC/H0IcejwJMVjYKySZ8mwGDrGzDesQPT/ucHsWU0OuLwHaZGmjaVot0
         9n+S1r8bM0B9CXWkhZi8wT9T3AjVV+HxWx9sPPmHq100Ybz47sTjO0iR1zTtWs972Mue
         uVNeaXux/mxhh18ipI7tP3AMFlx3YZ3YbZwKCw9+8lOIGITfz0pXUNxak9jRKa8cUJfI
         Fk7g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=azjdR2T3R0z22r/D8MdnAarNQhpGrBQY10GrBwBaGSA=;
        b=gcJtFzslg/1Lsu9g+mwuMUw/WFfYmovkjtCmY6hLrZ8rRUsehsFU5XdlQfLH8NCrM0
         xrAKlz4aAGpElc0xd8kiZoQa9xMe2tR820URvX8bAf8g/sbplG4yzqP6EId8HDGanwJN
         g+uDd9x4crI1Qq689VRJqQsOW22Ss4dl+F/PDtu/okrNCqDpW5e0w/ynxSf9p7uZmNYX
         5zPvLCaIA1GicG36fUcwMXjyYfccZJjVtmhcCQJ7Dq8On8fzXf1vlCyadct7DExBdeRo
         KZdw7TaQoqrFD5J1EL5dhL4pEtlZqJgeABroutOh8PfjdD3Y58vN/uwi2bObBvyqTC4p
         35Pw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=XxBChTB0;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.82 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=azjdR2T3R0z22r/D8MdnAarNQhpGrBQY10GrBwBaGSA=;
        b=RK9zNrBRfmoG7VZIxY8G8ce9YTfIcnQgybEjNUvkXJKgnSTRZEyCzESGM1B8AZNqWC
         KuXPeU+nnqKgK46u5ksn6jMRevGKQDpUavdVAOWWT6pc7ihQPR8i5Jvzsdj0IcdeKY83
         6TqVtGedzJ0Giwo7qawmlfaFSuDOvADgK7Bo6bINzghq86gzCX6UMsz/w/1Atl/F9zlT
         kz2vOcVuqPG6tP4S80tRH6P2wO6F5a+11F0499OpddF7YRTY0DwPwj2418MmpxOXtBh4
         NHQ9tnOKxXM9dazqitWKbADMFWP3h7jc5ArVHJzj4r6IDeEsJdmOjaL7CzAtAFRme0VP
         QAmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=azjdR2T3R0z22r/D8MdnAarNQhpGrBQY10GrBwBaGSA=;
        b=XgirknKdNMcgEkSR+zhEHRX14kfwQbB9Fuu53iJrtK/EL8R80HPFUh/88P+cTL3y5+
         hPKHfDvnseP9tLovlHQYZgweMN2kE5VGqZLsf25Ivh40WD1M3qKLHjFKr0UqH+NWmsVb
         Ri80CxWJlWixDQtosmzvryTdNyWPqF6OQACVsb8SBv00V4NvzRmtfpMYuRxxE70oS/yX
         zB3BoenMhqwjhVYK57TimzLubzgDNi94uJkrDZGEJdlXA3BGKXE/J6cvwyl9D+2U/hna
         PRdFHIqRT8H+NXXpIN0nNNk3dHeVmQ1zYDPZ1AI6AhRd5GFyOMExeP7/4hOpOdh24Irr
         FIGg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530i7SWJXTUAMN233+EmAI2fbIjNx8m8IohnXyO7ZXcToNKII4FN
	tPrUznUaKs675kwiNVVUm18=
X-Google-Smtp-Source: ABdhPJyaBlEYwK3Cm0zYMaMfdxmUeD0dAovDXBACHdjl30waSfq/nPx0JgG44t4aLTadl4FyUiae8g==
X-Received: by 2002:a17:902:e04e:b029:10f:133f:87c8 with SMTP id x14-20020a170902e04eb029010f133f87c8mr1675354plx.70.1627511521603;
        Wed, 28 Jul 2021 15:32:01 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a65:51cc:: with SMTP id i12ls2013565pgq.4.gmail; Wed, 28 Jul
 2021 15:32:01 -0700 (PDT)
X-Received: by 2002:a63:d443:: with SMTP id i3mr1013427pgj.391.1627511520999;
        Wed, 28 Jul 2021 15:32:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627511520; cv=none;
        d=google.com; s=arc-20160816;
        b=aVRVULPZ5p73OtwHdWTJPhLh2jWnEvwkwglK43cfeHDP0wk/+Kyg1aJBqiE1BBaIuh
         rNS0bRZtfcYgawsDD5TSFUdH0cAByQYtY/1bMGrC3JBJCPMgEdYAqy1rfI/59eizdNP1
         iVhH++OcZFUX6EAaUMrVhMHG2rr+nnLL1s+RqVUHZTJUP4nCLQ738GvUbqEOTOhvkzwx
         v9ULJtux1Ic+BmaW6yU32lVHMDaW82qjgytqoeM8cMp41kln/WjsokHixxWrdDTX+mQv
         mrwNm6GL5ghjFgH5Z4x1ZsBjcWO6rrxazv56IDAI2ulifMLYZw1I5lgsd1nhZJbd6soA
         YQtw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=wAswa070vEKRoyVc6FZv3d3dc7yd9+nXOyHmSmKAIkE=;
        b=pQ/mdsxwr2cQOzxW47TTLP2hMa7rL95h6MGX7EmlhAnJSmAq2J4SPEPYm0N6CkDV6u
         Hzei9eeSPpsO8YzuHfzgcn5Cu1iglkpIxAlwGiW5RbVvC8rk73E+YBPYMqXPTDdg9IFR
         L6y6ukIWVAlEWuWl9gd1fhPQImv5V/DH3SeGiC2LEguA68ze2bcn4kEUeLDO46Ya2O37
         XO9svmp6voGsFKiRmDaDmNn8zseBva2B49C65Jlnx7EgMhNSTONwrvI2Gbuj/0UZIF22
         brfjxbfYwguArkR8JITo5vPxnSXQ/A4nsPBeIe9xab4E2ep+KbEOUQgryVchO/2FnZp5
         LeYQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=XxBChTB0;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.82 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conssluserg-03.nifty.com (conssluserg-03.nifty.com. [210.131.2.82])
        by gmr-mx.google.com with ESMTPS id r7si121965pjp.0.2021.07.28.15.32.00
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 28 Jul 2021 15:32:00 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.82 as permitted sender) client-ip=210.131.2.82;
Received: from mail-pj1-f54.google.com (mail-pj1-f54.google.com [209.85.216.54]) (authenticated)
	by conssluserg-03.nifty.com with ESMTP id 16SMVfc2003171
	for <clang-built-linux@googlegroups.com>; Thu, 29 Jul 2021 07:31:41 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-03.nifty.com 16SMVfc2003171
X-Nifty-SrcIP: [209.85.216.54]
Received: by mail-pj1-f54.google.com with SMTP id b6so7345358pji.4
        for <clang-built-linux@googlegroups.com>; Wed, 28 Jul 2021 15:31:41 -0700 (PDT)
X-Received: by 2002:a17:902:e28a:b029:12c:13e9:1166 with SMTP id
 o10-20020a170902e28ab029012c13e91166mr1788249plc.47.1627511500998; Wed, 28
 Jul 2021 15:31:40 -0700 (PDT)
MIME-Version: 1.0
References: <20210708232522.3118208-1-ndesaulniers@google.com>
 <20210708232522.3118208-3-ndesaulniers@google.com> <CAK7LNARye5Opc0AdXpn+DHB7hTaphoRSCUWxJgXu+sjuNjWUCg@mail.gmail.com>
 <CAHk-=wgGxu4_hgzdYpFuKd95SfnkJbPTWAQ9-fMgmMN1Oxs2xQ@mail.gmail.com>
 <CAK8P3a3=JBQow-Ws6tt81k93aw+OCV5C2CtSWxASkv=iQZPGUw@mail.gmail.com>
 <CAK7LNATLy2F-2zkHm4ENSufBT_o5p=9jc5k1K-xOV8cQf7kKDw@mail.gmail.com>
 <87r1fkizxl.fsf@disp2133> <CAK7LNAS8Fz_kcwqzJD834QrSuWkkorHm4OZoGUhYsbKvJV=fJQ@mail.gmail.com>
 <87v94vg7vi.fsf@disp2133> <CAK7LNASbegX=9yBDktuK5iXhhB=wNP_kbdh4dnJMXSmV=XwHOw@mail.gmail.com>
 <87lf5rfvdc.fsf@disp2133>
In-Reply-To: <87lf5rfvdc.fsf@disp2133>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Thu, 29 Jul 2021 07:31:04 +0900
X-Gmail-Original-Message-ID: <CAK7LNASWxmzfbPiWp9YTy6eRK5ephDsP8OYCJwba4VXT9os2BA@mail.gmail.com>
Message-ID: <CAK7LNASWxmzfbPiWp9YTy6eRK5ephDsP8OYCJwba4VXT9os2BA@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] Makefile: infer CROSS_COMPILE from SRCARCH for
 LLVM=1 LLVM_IAS=1
To: "Eric W. Biederman" <ebiederm@xmission.com>
Cc: Arnd Bergmann <arnd@kernel.org>,
        Linus Torvalds <torvalds@linux-foundation.org>,
        Nick Desaulniers <ndesaulniers@google.com>,
        Miguel Ojeda <ojeda@kernel.org>, Fangrui Song <maskray@google.com>,
        Michal Marek <michal.lkml@markovi.net>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        Geert Uytterhoeven <geert@linux-m68k.org>,
        Christoph Hellwig <hch@infradead.org>,
        Nathan Chancellor <nathan@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=XxBChTB0;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.82 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
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

On Wed, Jul 28, 2021 at 3:46 AM Eric W. Biederman <ebiederm@xmission.com> wrote:
>
> Masahiro Yamada <masahiroy@kernel.org> writes:
>
> > On Tue, Jul 27, 2021 at 11:16 PM Eric W. Biederman
> > <ebiederm@xmission.com> wrote:
> >>
> >> Masahiro Yamada <masahiroy@kernel.org> writes:
> >>
> >> > On Tue, Jul 27, 2021 at 5:27 AM Eric W. Biederman <ebiederm@xmission.com> wrote:
> >> >>
> >> >> Masahiro Yamada <masahiroy@kernel.org> writes:
> >> >>
> >> >> > On Wed, Jul 21, 2021 at 4:58 AM Arnd Bergmann <arnd@kernel.org> wrote:
> >> >> >>
> >> >> >> On Tue, Jul 20, 2021 at 7:43 PM Linus Torvalds
> >> >> >> <torvalds@linux-foundation.org> wrote:
> >> >> >> > On Tue, Jul 20, 2021 at 1:05 AM Masahiro Yamada <masahiroy@kernel.org> wrote:
> >> >> >> >
> >> >> >> > We do most of the other heavy lifting in this area in Kconfig anyway,
> >> >> >> > why not add that compiler choice?
> >> >> >> >
> >> >> >> > Obviously it would be gated by the tests to see which compilers are
> >> >> >> > _installed_ (and that they are valid versions), so that it doesn't ask
> >> >> >> > stupid things ("do you want gcc or clang" when only one of them is
> >> >> >> > installed and/or viable).
> >> >> >>
> >> >> >> I don't see a good way of making Kconfig options both select the
> >> >> >> compiler and defining variables based on the compiler, since that
> >> >> >> would mean teaching Kconfig about re-evaluating all compiler
> >> >> >> dependent settings whenever the first option changes.
> >> >> >>
> >> >> >> I do have another idea that I think would work though.
> >> >> >>
> >> >> >> > Hmm? So then any "LLVM=1" thing would be about the "make config"
> >> >> >> > stage, not the actual build stage.
> >> >> >> >
> >> >> >> > (It has annoyed me for years that if you want to cross-compile, you
> >> >> >> > first have to do "make ARCH=xyz config" and then remember to do "make
> >> >> >> > ARCH=xyz" for the build too, but I cross-compile so seldom that I've
> >> >> >> > never really cared).
> >> >> >>
> >> >> >> The best thing that I have come up with is a pre-configure step, where
> >> >> >> an object tree gets seeded with a makefile fragment that gets included
> >> >> >> for any 'make' invocation. This would set 'ARCH=', 'CROSS_COMPILE',
> >> >> >> 'CC=' and possibly any other option that gets passed to 'make' as
> >> >> >> a variable and has to exist before calling 'make *config'.
> >> >> >
> >> >> >
> >> >> > There is no need to add a hook to include such makefile fragment(s).
> >> >> >
> >> >> > Quite opposite, you can put your Makefile (in a different filename)
> >> >> > that includes the top Makefile.
> >> >> >
> >> >> >
> >> >> > I think this is what people are already doing:
> >> >> >
> >> >> >
> >> >> > GNU Make looks for 'GNUmakefile', 'makefile', and 'Makefile'
> >> >> > in this order.
> >> >> >
> >> >> >
> >> >> > So, you can put 'GNUmakefile' with your favorite setups.
> >> >> >
> >> >> >
> >> >> > $ cat GNUmakefile
> >> >> > ARCH=arm64
> >> >> > CROSS_COMPILE=aarch64-linux-gnu-
> >> >> > CC=clang
> >> >> > include Makefile
> >> >>
> >> >> Very weird.
> >> >>
> >> >> I just tested this and it does not work.
> >> >> I did this:
> >> >>
> >> >> $ cat GNUmakefile
> >> >> ARCH = alpha
> >> >> CROSS_COMPILE = $(arch-prefix alpha)
> >> >> include Makefile
> >> >>
> >> >> In one of my build directories and the main makefile simply does not see
> >> >> the value of ARCH or CROSS_COMPILE I set.  I have confirmed that my
> >> >> GNUmakefile is being read, because everything breaks if I remove the
> >> >> include line.
> >> >>
> >> >> Does anyone have any ideas?
> >> >>
> >> >> Something so we don't have to specify all of these variables on the make
> >> >> command line would be nice.
> >> >>
> >> >> Eric
> >> >
> >> >
> >> > Worked for me.
> >> >
> >> > Could you tell me the exact steps you did?
> >> >
> >> >
> >> > This is my case:
> >> >
> >> > My kernel source tree is located at $HOME/ref/linux
> >> > alpha tool chains are located at $HOME/tools/alpha-10.1.0/bin
> >> >
> >> >
> >> >
> >> > I tried a simple GNUmakefile with 3 lines.
> >> >
> >> > You can see 'make' is building the alpha kernel
> >> >
> >> >
> >> > Please see below:
> >>
> >> Interesting.  That appears to work if I don't specify a build directory.
> >> Once I specify a build directory with O= it does not work.
> >>
> >> When I am working on a change that affects multiple architectures
> >> I really want a build directory that is not my source tree so I can
> >> test small changes on multiple architectures without needing to rebuild
> >> everything.
> >>
> >> Eric
> >
> >
> > Ah, OK.
> > When you specify O= option, Kbuild will
> > invoke sub-make.
> > So you need to add 'export' to the
> > variables.
> >
> > Please see the following modified version.
>
> Yes. That does seem to work and be simpler.
>
> Is there any chance we can get the command that generates the Makefile
> in the build directory to include variables like ARCH and CROSS_COMPILE
> in the Makefile as well?  Just so they don't need to be set by hand to
> the same value every time?
>
> Eric


I am OK to document this small tip
in Documentation/kbuild/ if it is useful,
but am reluctant to add any code to
generate custom Makefile or GNUmakefile.

It is highly user-dependent after all.

If we merged the code to set up ARCH=...
and CROSS_COMPILE=...,
somebody would send a patch
"I need LLVM=1 in my GNUmakefile", then
another person, "I want CC=clang", and so on.

You can edit it by yourself.


-- 
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNASWxmzfbPiWp9YTy6eRK5ephDsP8OYCJwba4VXT9os2BA%40mail.gmail.com.
