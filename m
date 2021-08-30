Return-Path: <clang-built-linux+bncBDYJPJO25UGBBP54WSEQMGQE55Q6H4A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x240.google.com (mail-lj1-x240.google.com [IPv6:2a00:1450:4864:20::240])
	by mail.lfdr.de (Postfix) with ESMTPS id 112193FBB6A
	for <lists+clang-built-linux@lfdr.de>; Mon, 30 Aug 2021 20:07:01 +0200 (CEST)
Received: by mail-lj1-x240.google.com with SMTP id s15-20020a2eb8cf000000b001cbf358ed4esf6960851ljp.14
        for <lists+clang-built-linux@lfdr.de>; Mon, 30 Aug 2021 11:07:01 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1630346815; cv=pass;
        d=google.com; s=arc-20160816;
        b=nJ+abG63qnVkyPnHNMe06CiEgJ1JTXnaUbFSlUDB/IuRBInZqS89K47DV3gGdxfPtn
         Z/ojy09gyIfBtHzg0hNZj4A4hqeFxKXiydY2bsE59hsGukLleoXfiF20h3JpMvwncsKc
         PWsiBI7KBupLrPB6q/J98Unb9//SFYz7MbmYaP1rgamIjLMORlUEdoF5URSV1GxKHUat
         GAtAErmEAADUtop2ZlfzvMC6uCSOPrJXpP4aOgI18dpb6jLIKhBM+dOX7GGJREtqc+Ih
         65Z6QO8BPiK/INgivxGOufHeTpGWBmfz9rb2Y0rAttamcZ/317mtlQe7KoU8vpczZKen
         ZkhA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=IFtk7DomcYaFDG4E9tJLuXa6EpK1DZhFR6k/GsYg4iQ=;
        b=o0G+EbvZDJ0DdRDT+5X9H4u54DCZMaut6sQ8eZ0nzhP3NQPFup/WnKxr/e61pBs4Y2
         siF3t4sL8IYLAoyYbUArMp5AX1eZadQqqW8Gria+S8DDBRBr5HZtbSTAjXvvF06ylMSk
         YmgXiLdaBUp4wjo5T/CKNj4BkI/8R0EtksUwYj4nzYWQM6WJCH58Zl4IzbeOpVlfAohC
         3wMax8fjHHJ3ZC2o4y6LgAaKkYkhOb231vwyZrtMxkhA87lyR4NODS6HIHEpGtEqyCjy
         F7byWAuj1RFeGJ0C4ze22U5M0WmuXuBdxWa3/h2BYituvbc6uuGjKLwGJI3ukZxuoIeT
         +OYA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=mVghI1ta;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22a as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=IFtk7DomcYaFDG4E9tJLuXa6EpK1DZhFR6k/GsYg4iQ=;
        b=DxkrD++7e1kMuCIfSUq1cneXqi66O8fklS5lwoLSTL1DGAXK1B679SoOK85MtCvelr
         epjTBvFuwcDGnMF/GmaM53Y3tBawJbT8XNA2ZtSfbGMq2yzXZvRVhv4ogNA+uGOiICY7
         mLNoZKZ6XU+ezLPaH9/OE+hfnf+iix2cr2KGCtYuNz6jSQflmx5bPKqeQLTohkcuNtFk
         PJAc12loDyCsBusRDW2ITl+wNmdFrMFDLIiM+8NzTbhwcinFaCBK0B6KNQc9ei2mBqad
         2lmzt13tbpGtSB2KrN2UfweRQ0J9JU4z2RcU2LCqD0x4TdBxNtvL4vVcOqQO+Y+NvYqC
         NCeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=IFtk7DomcYaFDG4E9tJLuXa6EpK1DZhFR6k/GsYg4iQ=;
        b=UvonlhX1vDGnCcBz4f/5XDVf9oWgI/22Xj5xgmQKNrSAX9CDAU9b+LgD94DuDCi05Z
         h+wrXJ0tj+3CqytBa/p0yQDh9vGC/jV82P//fetEjHAPcz96pbv3u+QmJ1umCtNcIkhj
         JkSPN9MQvb/nxrOGCePjshNKiCab28i+uhSvx+xDJaf17d2j5EhxWrZeYJYGIPwA26lW
         07KwDMRwm9OhFgSLx4ezLc5JhYYSp8Yw8H/AjRCau6UBtsSABVRmx8GTQnGdIMJ1HMjL
         m0BTNXLxTyygh++nm49b8gdWRm++XNmSTQiKPRKT/RfbS8b3z13duUaixj0USMATV6UF
         nCDg==
X-Gm-Message-State: AOAM533yn79sM3byVwhkoTbTHRV3ShxImTOxMDmpBkZzYQAoSCa11J2S
	Qf65mUbKiyhpFm8jR9JDCeE=
X-Google-Smtp-Source: ABdhPJyH408eG/ZZnyiFQWTd8eBBULGpJCT0nnNsx9ZUpQxkEywABHFw1RIaq/xzBs70LF5UJDk/8w==
X-Received: by 2002:a2e:2e16:: with SMTP id u22mr21800329lju.12.1630346815483;
        Mon, 30 Aug 2021 11:06:55 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac2:55b7:: with SMTP id y23ls1781184lfg.1.gmail; Mon, 30 Aug
 2021 11:06:54 -0700 (PDT)
X-Received: by 2002:ac2:4d17:: with SMTP id r23mr17980034lfi.234.1630346814235;
        Mon, 30 Aug 2021 11:06:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1630346814; cv=none;
        d=google.com; s=arc-20160816;
        b=ITQ9CAQu57q1F3w8PJ5HVFCQOg0rrG1GFBJw/TVpsqyQg3gaLHwvMKl3TVbyAXO1hg
         xAP1drEyqLCt82coThcpecK+ITKEDhuvv5u1ti/U27qQwO/MI8yDZcZq+q+iPIDE4wQf
         ifgrg5eHTFkVcgjlovaxJ9B3VcMEllzWPKXj13Lv9ctKarfIS0o16ZYEP+Rh8QUBWoxc
         fkLVpzZF+1B5pp7ZBTQcHZm9pnl+rc+JOEeQ9BSKFmbk0tx9Fs3VgZseYpDsO6m2qUek
         2JZGDe/eEZtoV01F6SQU/6NcIVuWdbUTMUCGSyJ+Pn3RZWswGmOj8VAR8+kY7ovOx5GO
         bZ0w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=DOl1Mir8xQtPnC2Qi3UcNiM/ELYG5qRh24+IG7nXTcI=;
        b=d2Qqib/W3S8tCGgZsAPb/xLuUur66t5SAEfvUzLByZK7lgmmN2I5m3DkmFsOq89EcJ
         mbDJIYApfxa85g5QLgvzy+Ao1qp9LO+C6nx7De/WHCjR4x4CalLFp6cIhyd7UIuvJHSe
         Bfgc2LaRrGRwVtSCMprFPymPcOG6TTXWBWW2AgZDj88FOuCS0ymuDAWyvqFKIdCS9My6
         OoqarqKZqsXbrk404tb1QSC2xDRLQ1BQvw0yD3QZLhhEwZTpBjyvXyfCzi49sSxRJHzl
         ue2XJqNgOdda0I+J+rZi7BeA9nhxrcX2ha3HMP8PhLxfA3t2FMbCGAA5UoK39sy/rrfi
         zy4g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=mVghI1ta;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22a as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lj1-x22a.google.com (mail-lj1-x22a.google.com. [2a00:1450:4864:20::22a])
        by gmr-mx.google.com with ESMTPS id h2si766894lft.5.2021.08.30.11.06.54
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 30 Aug 2021 11:06:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22a as permitted sender) client-ip=2a00:1450:4864:20::22a;
Received: by mail-lj1-x22a.google.com with SMTP id i28so27391232ljm.7
        for <clang-built-linux@googlegroups.com>; Mon, 30 Aug 2021 11:06:54 -0700 (PDT)
X-Received: by 2002:a05:651c:12ca:: with SMTP id 10mr4816580lje.0.1630346813611;
 Mon, 30 Aug 2021 11:06:53 -0700 (PDT)
MIME-Version: 1.0
References: <000000000000790a6a05ca675029@google.com> <CACT4Y+abiC4sn1eYZhb-QdqB6NZ-oQesvRb8VH08Kmr+YdokTg@mail.gmail.com>
In-Reply-To: <CACT4Y+abiC4sn1eYZhb-QdqB6NZ-oQesvRb8VH08Kmr+YdokTg@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 30 Aug 2021 11:06:41 -0700
Message-ID: <CAKwvOdkFf4NdheGTL4wCJXrMaRK9oyU7teoodEYSJWUvb=-TKg@mail.gmail.com>
Subject: Re: Clang-Built Linux Meeting Notes - Aug 25, 2021
To: Dmitry Vyukov <dvyukov@google.com>
Cc: clang-linux-fellowship@google.com, clang-built-linux@googlegroups.com, 
	kernel-dynamic-tools <kernel-dynamic-tools@google.com>, Nathan Chancellor <nathan@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=mVghI1ta;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22a
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

On Sun, Aug 29, 2021 at 11:17 PM Dmitry Vyukov <dvyukov@google.com> wrote:
>
> On Wed, 25 Aug 2021 at 21:32, <ndesaulniers@google.com> wrote:
> >
> > http://go/clang-built-linux-notes
> > Meeting: Hangouts Meet
> >
> > Aug 25, 2021
> >
> > Error+warning attributes landed
> >
> > https://reviews.llvm.org/D106030
> >
> > 30 years of Linux!
> >
> > https://lwn.net/Articles/867315/
> >
> > -Wimplicit-fallthrough for 5.15?
> >
> > https://github.com/ClangBuiltLinux/linux/issues/1429
> > https://github.com/llvm/llvm-project/commit/9ed4a94d6451046a51ef393cd62f00710820a7e8
> > https://lore.kernel.org/r/20210819040517.GA329693@embeddedor/
> >
> > ThinLTO regression in LLVM
> >
> > https://github.com/ClangBuiltLinux/linux/issues/1440
> > https://reviews.llvm.org/D106056
> > https://lore.kernel.org/r/5913cdf4-9c8e-38f8-8914-d3b8a3565d73@kernel.org/
> >
> > CFI x86_64 v2 series
> >
> > https://lore.kernel.org/r/20210823171318.2801096-1-samitolvanen@google.com
> > Currently limited to clang-14 but compiler side fix should be going in clang-13.
> >
> > -falign-jumps=0 warning
> >
> > https://lore.kernel.org/r/202108210311.CBtcgoUL-lkp@intel.com/
> > https://lore.kernel.org/r/20210824022640.2170859-1-nathan@kernel.org/
> > https://lore.kernel.org/r/20210824232237.2085342-1-nathan@kernel.org/
> >
> > clang-13 and sanitizer coverage in CI merged
> >
> > https://github.com/ClangBuiltLinux/continuous-integration2/pull/178
> > https://github.com/ClangBuiltLinux/continuous-integration2/pull/179
>
> Hi Nick,
>
> Always impressed by your notes. It looks like quarterly notes rather
> than bi-weekly :)

Thanks! Nathan actually took notes this week; thanks Nathan!

> And I saw some mentions of clang in LPC kernel report as well:
> https://youtu.be/C-I9qNsgPVQ?t=755

Yeah! I missed the talk when it was live, but saw this recording this
weekend. I sent it to Sami; pretty cool to see CFI mentioned so early
on in the talk!

>
> I wanted to ask regarding sanitizer coverage and CI in general.
> I don't see any mentions of "coverage" in the referenced PRs. What do
> you do with coverage? Do you collect kernel coverage from tests? Do
> you visualize it?

Sorry, this is "coverage" as in we're now building some of the
sanitizers, then boot testing them under CI.  We're not doing anything
with "code coverage" or tracking code coverage at all.

> I wonder if https://codecov.com can be used for visualization. We use
> it for syzkaller:
> https://app.codecov.io/gh/google/syzkaller/compare/2727/diff
> As far as I understand the repo only contains CI, but the kernel is in
> a different repo. Codecov action has some args to override
> branch/commit associated with coverage:
> https://github.com/codecov/codecov-action/blob/master/README.md
> But I don't see how to override the repo (e.g. to point to Linus tree
> on github). Maybe it can work with a separate branch that contains
> kernel sources.
>
> For CI you use github actions and build kernel right in github
> actions, right? Don't you run into some capacity limitations/timeouts?

Yes and no. We orchestrate via GH actions, but we offload the build to
Linaro's tuxsuite service, which we pay to use.

> And you also boot kernels in qemu's, presumably using TCG/emulation
> (to test arm and x86 probably don't expose nested KVM as well), right?

Yep.

> Does it work acceptably?

Yep.

> Does the CI run any tests or just boots kernels?

Just boot tests for now. I refuse to do further runtime testing until
we can get headcount to address failures from runtime testing;
otherwise we'll just be turning tests off constantly and running to
the next fire.

>
> Thanks
>
>
>
> > cc-option-yn removal
> >
> > https://lore.kernel.org/r/20210817002109.2736222-1-ndesaulniers@google.com/
> >
> > -Wbool-operation enhancement
> >
> > https://reviews.llvm.org/D108003
> >
> > PowerPC '-z notext' fix for CONFIG_RELOCATABLE
> >
> > https://lore.kernel.org/r/20210812204951.1551782-1-morbo@google.com/
> >
> > Getting help from Intel on certain bugs
> >
> > https://groups.google.com/g/clang-built-linux/c/fIy6K5Uxr3s/m/vV--Yt78BgAJ
> >
> > llvm@lists.linux.dev
> >
> > https://subspace.kernel.org/lists.linux.dev.html
> > https://subspace.kernel.org/#subscribing
> >
> > LTO kbuild patches
> >
> > https://lore.kernel.org/lkml/CAK7LNARoxA875uynQHs-HpcfXtzFvuxkzSha9tquR2uV0Za10A@mail.gmail.com/
> >
> > Fortify source series for 5.15 then 5.16?
> > Bill looking into zero call registers



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkFf4NdheGTL4wCJXrMaRK9oyU7teoodEYSJWUvb%3D-TKg%40mail.gmail.com.
