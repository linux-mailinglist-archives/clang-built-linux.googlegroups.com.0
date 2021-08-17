Return-Path: <clang-built-linux+bncBDYJPJO25UGBB37456EAMGQESNW52PA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13b.google.com (mail-lf1-x13b.google.com [IPv6:2a00:1450:4864:20::13b])
	by mail.lfdr.de (Postfix) with ESMTPS id F1AF53EF1C0
	for <lists+clang-built-linux@lfdr.de>; Tue, 17 Aug 2021 20:22:39 +0200 (CEST)
Received: by mail-lf1-x13b.google.com with SMTP id j14-20020a19f50e000000b003d2e72caab0sf707751lfb.19
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Aug 2021 11:22:39 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629224559; cv=pass;
        d=google.com; s=arc-20160816;
        b=Xq8iH8XKWXcxfqexj53LbNRKzDUNaJ9QRM+/5zfoYw0U84sP7enxp+qBW/rqZNDO6n
         5dcUzb79Q3VsIzSQvAA8d7Mf55SwuV+8dY7m6ATliR9Cl0K6XT6RovO2CwcnK2b62buw
         oEEZY84fdny35U5MA9r8THr2418F97EmoRflEUEOgZ8pvummvbkWAaah281gE6q1Ex1c
         RPvf14jkB3iCEpl8eWv982/cRPCh/ks6chgiPdTaYr7BjRd7IwUgJJIiJ6vCsjtNMQR1
         rTNkgnyg/I1b6hNBYCIpNnKO7OtVlwuh4zPPV/N4pmzbslI+4OpHOC4X39i3KRN3ScZr
         +f/g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=ppGrMTHqj3MPUV/LyoCNpO5Pv695TgbXkVpFPsoNbWM=;
        b=vlMl1qWfQJfFQGYcHBYBBCNrOv1E6uy81/X0ZdcqC5WBvHHWHdR29LOWGMnEKKdmNQ
         0rg3T9EHtZEf0Dx5Ujo/rrzB7bqTwiM1uinYDbIv6NImn4e5SyYSUGv7aF9bXR+361Ix
         PM2bvANZDqQ2dNyI6Ym0dIOWAhHr6m1Vs0PXh8Vaoro/qoivb7qJW+yFw4nRbMnZIdZi
         r5XbRHIev316y4ZNjCJLszrNKYYVFWATle9UdTQ/rE/qK72U1Ke6sGWOmI8rPpGWM8IB
         C/BE8SEF65ihOo9TdBrzJ2RFEcdXLAcp/7f5NaINy/t26PA0+jyv1JvmloNRrEPbYBbH
         29Ww==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=BlD5xxFt;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::235 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ppGrMTHqj3MPUV/LyoCNpO5Pv695TgbXkVpFPsoNbWM=;
        b=A0wqFCUVJNqYr4FAJmz4pIx2lXFVlTeYMQlX74h7obgqN5XLIX4SU4hEUAwzXCi8Jc
         FVhTYEmeEPHz0A5Uf5pI3ucnLd3lJeDtbfpvLQIEcccCWDwmpZ/ocoPbmPLhBc/1KBMt
         sUr8d53IkfHiqbWcw5RfDl1iVAcNzWJuvZfaLVkYo2UYielFmb3SDslBi8mnumRZBspI
         wJmW620a9yjtdJ3F/OwyDNUapR321kBD7bMxv9GX8OzohQmLP8fwAb0PO1dLlzPA8hPH
         dqpMN9yTY4eJ2A8P3yYRj/PgAoad1gVNxs3XaflndfToOKin6pyAIB15KVepksLz6p3N
         ZVHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ppGrMTHqj3MPUV/LyoCNpO5Pv695TgbXkVpFPsoNbWM=;
        b=eFH28kbgcsvdNapdEjnwodoVLKQttYkQk3gnWFl+hHsalEhsjOc3NTBljiI6ewLHbR
         DROB4zBa5hdw4o6UNbelG6MZ/flVo4OfNGGIUFALM8+N8Z0xlJcgZ/ZyLQ/KLjLgrJ/y
         de5NeJDGdQzkhRurRAtPC+RFDLJtS2UHx++Ye0sZMDxtaG6+/WEJ6nbKfoFO/qyRR3Et
         awQcClU/bsTR3Bukt/Hit5IU6K5gIZRAbFb4YhART4PL4jpYI+sLxBdCGJqAKCGEbjth
         DVT6nATGCL5jyoKKn502g1dabzuxukHbMJFdc5vqjJS4XDEc6uEClf6Qqs9EuXnA8JfL
         733A==
X-Gm-Message-State: AOAM530+x+Fw6tQ6FFoxHMDZqUyF3O/9jRq+r5cEWy/l8QCPUwd1O8nr
	ZPe7bOTgPsHQ0Ljx3wcSmS0=
X-Google-Smtp-Source: ABdhPJzKtDNaeC2mhVmhR56EB4PifrWOIZDKQCqe8a1TO3BHw5GMHVrSsowe5uGg4ANwOgIEzHZ+OQ==
X-Received: by 2002:a05:6512:3602:: with SMTP id f2mr3327220lfs.527.1629224559389;
        Tue, 17 Aug 2021 11:22:39 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:651c:160f:: with SMTP id f15ls694456ljq.3.gmail; Tue, 17
 Aug 2021 11:22:38 -0700 (PDT)
X-Received: by 2002:a05:651c:3dd:: with SMTP id f29mr4394291ljp.69.1629224558288;
        Tue, 17 Aug 2021 11:22:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629224558; cv=none;
        d=google.com; s=arc-20160816;
        b=Rm42cmYISIxtcA7oifeS2xG/rlG9z71N+f8sClQGjUvKQ6ebf+zCH6K2KWDNJjrvmu
         Pzo+gx5fiEGPKSbR7fXPXFN0JssQbAyXBfXgAt6G/frrsUU+vSuvN98pztPdYhBuL290
         VLWW2u0hXMPG/kklKIRvROAS1wx7193RS9iLKyPN+bBrArWp8zC4JDK6dYGSN4PSkbTS
         2BIpzg0JPDjkYfxFNMX2d0NQk/oOviglcqi9d5u659M8hr5bocEeg655TfbwdCC87fiK
         JJywRHC06ZXGGXEgtjXd3H+AvXQB5ig0lxZ2+oDhi8yl+IqvuBDisYvD/3TL2M0YbBmo
         p3ew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=eHXsbwlr2q769RcSioIqWqNf/dDckOAdNnjL858Y61M=;
        b=dkTr3A6v9w8jRVRyzHSKht13FIQ1EIHgChiCT7h+dG1quR8mwIgG28z2B+jjtj/c24
         lR39R0LrjdCF1oqXL0X5hxEDz0jeVPpeuuGAf0zUvf4cfjaaGR48s0GKdLwi5KgKhwnU
         8l2iYRpJIySnssFiG3LoNkvaCRyrgFbHtSIhpjwx72jeebvMliPRst+g12ZMMuZaTYp4
         v3QuNL6f5evjPR0xuHWZYl7yeApo7z+ahd1aV6vrRL9brJ4ltyIbOudMYNfG24GrZ0ap
         WQ4YYMNV9nDXybqpiluyTZU5t2cImt5TL93hnbjfotrpZ27fU8E+69vjQxKI3fymgORR
         szdQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=BlD5xxFt;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::235 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lj1-x235.google.com (mail-lj1-x235.google.com. [2a00:1450:4864:20::235])
        by gmr-mx.google.com with ESMTPS id n9si47122ljj.8.2021.08.17.11.22.38
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Aug 2021 11:22:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::235 as permitted sender) client-ip=2a00:1450:4864:20::235;
Received: by mail-lj1-x235.google.com with SMTP id f2so313516ljn.1
        for <clang-built-linux@googlegroups.com>; Tue, 17 Aug 2021 11:22:38 -0700 (PDT)
X-Received: by 2002:a2e:a784:: with SMTP id c4mr4469069ljf.479.1629224557771;
 Tue, 17 Aug 2021 11:22:37 -0700 (PDT)
MIME-Version: 1.0
References: <269701460.117528.1629210189833@office.mailbox.org>
 <796036867.117557.1629210288168@office.mailbox.org> <CAKwvOdkYgC4pU0Ta+vS-UkyAYFTkg8MaLuR+OAsSX63_BY+1vA@mail.gmail.com>
In-Reply-To: <CAKwvOdkYgC4pU0Ta+vS-UkyAYFTkg8MaLuR+OAsSX63_BY+1vA@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 17 Aug 2021 11:22:26 -0700
Message-ID: <CAKwvOdk+fwHQDe23Ttva46tyB9yGGxB73zXzNPkcMCggSRWUdQ@mail.gmail.com>
Subject: Re: [PATCH 2/2] x86, Makefile: Add new generic x86-64 settings v2/v3/v4
To: torvic9@mailbox.org
Cc: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "x86@kernel.org" <x86@kernel.org>, 
	"clang-built-linux@googlegroups.com" <clang-built-linux@googlegroups.com>, 
	"graysky@archlinux.us" <graysky@archlinux.us>, Thomas Gleixner <tglx@linutronix.de>, 
	Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>, "H. Peter Anvin" <hpa@zytor.com>, 
	Masahiro Yamada <masahiroy@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=BlD5xxFt;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::235
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

On Tue, Aug 17, 2021 at 11:17 AM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> On Tue, Aug 17, 2021 at 7:24 AM torvic9 via Clang Built Linux
> <clang-built-linux@googlegroups.com> wrote:
> >
> > Add new generic x86-64 CPU tunings introduced with recent versions of
> > gcc and clang, as documented in x86-64-psABI [1].
> >
> > This is taken straight from graysky's CPU optimization patch with minor
> > modifications [2].
> >
> > [1] https://gitlab.com/x86-psABIs/x86-64-ABI/-/commit/77566eb03bc6a326811cb7e9a6b9396884b67c7c
> > [2] https://github.com/graysky2/kernel_compiler_patch
> >
> > Signed-off-by: Tor Vic <torvic9@mailbox.org>
> > ---
> >  arch/x86/Kconfig.cpu  | 26 +++++++++++++++++++++++++-
> >  arch/x86/Makefile.cpu |  6 ++++++
> >  2 files changed, 31 insertions(+), 1 deletion(-)
> >
> > diff --git a/arch/x86/Kconfig.cpu b/arch/x86/Kconfig.cpu
> > index 814fe0d349b0..a2c872aa5a0b 100644
> > --- a/arch/x86/Kconfig.cpu
> > +++ b/arch/x86/Kconfig.cpu
> > @@ -294,6 +294,30 @@ config GENERIC_CPU
> >           Generic x86-64 CPU.
> >           Run equally well on all x86-64 CPUs.
> >
> > +config GENERIC_CPU_V2
> > +       bool "Generic-x86-64-v2"
> > +       depends on ( CC_IS_GCC && GCC_VERSION > 110000 ) || ( CC_IS_CLANG && CLANG_VERSION >= 120000 )
>
> Can we stick with either > or >=, but at least be consistent? Also,
> there's unnecessary whitespace inside the parens that could be
> removed.

Ah, cc-option can be used from Kconfig. Perhaps a cc-option call to
-march=x86-64-vX with a comment about which compiler versions first
supported these (so that we can remove the feature test when the
minimum supported toolchains are advanced) would be better?

>
> > +       depends on X86_64
> > +       help
> > +         Generic x86-64 CPU.
> > +         Run equally well on all x86-64 CPUs with min support of x86-64-v2.
> > +
> > +config GENERIC_CPU_V3
> > +       bool "Generic-x86-64-v3"
> > +       depends on ( CC_IS_GCC && GCC_VERSION > 110000 ) || ( CC_IS_CLANG && CLANG_VERSION >= 120000 )
> > +       depends on X86_64
> > +       help
> > +         Generic x86-64-v3 CPU with v3 instructions.
> > +         Run equally well on all x86-64 CPUs with min support of x86-64-v3.
> > +
> > +config GENERIC_CPU_V4
> > +       bool "Generic-x86-64-v4"
> > +       depends on ( CC_IS_GCC && GCC_VERSION > 110000 ) || ( CC_IS_CLANG && CLANG_VERSION >= 120000 )
> > +       depends on X86_64
> > +       help
> > +         Generic x86-64 CPU with v4 instructions.
> > +         Run equally well on all x86-64 CPUs with min support of x86-64-v4.
> > +
> >  endchoice
> >
> >  config X86_GENERIC
> > @@ -318,7 +342,7 @@ config X86_INTERNODE_CACHE_SHIFT
> >  config X86_L1_CACHE_SHIFT
> >         int
> >         default "7" if MPENTIUM4 || MPSC
> > -       default "6" if MK7 || MK8 || MPENTIUMM || MCORE2 || MATOM || MVIAC7 || X86_GENERIC || GENERIC_CPU
> > +       default "6" if MK7 || MK8 || MPENTIUMM || MCORE2 || MATOM || MVIAC7 || X86_GENERIC || GENERIC_CPU || GENERIC_CPU_V2 || GENERIC_CPU_V3 || GENERIC_CPU_V4
> >         default "4" if MELAN || M486SX || M486 || MGEODEGX1
> >         default "5" if MWINCHIP3D || MWINCHIPC6 || MCRUSOE || MEFFICEON || MCYRIXIII || MK6 || MPENTIUMIII || MPENTIUMII || M686 || M586MMX || M586TSC || M586 || MVIAC3_2 || MGEODE_LX
> >
> > diff --git a/arch/x86/Makefile.cpu b/arch/x86/Makefile.cpu
> > index fb407ae94d90..f190feefe964 100644
> > --- a/arch/x86/Makefile.cpu
> > +++ b/arch/x86/Makefile.cpu
> > @@ -10,3 +10,9 @@ cflags-$(CONFIG_MCORE2) += \
> >  cflags-$(CONFIG_MATOM) += $(call cc-option,-march=atom) \
> >         $(call cc-option,-mtune=atom,$(call cc-option,-mtune=generic))
> >  cflags-$(CONFIG_GENERIC_CPU) += $(call cc-option,-mtune=generic)
> > +
> > +# New generic x86-64 CPU options.
> > +# Don't call the compiler, we have Kconfig compiler checks for these.
>
> You'd be surprised how quickly using time-relative words like "New"
> bitrot. My copy of "Modern C++" already doesn't feel very "modern" for
> example.  I'd just drop the comment block here; we don't need a
> comment every time we skip cc-option checks.  Thanks for the patches!
>
> > +cflags-$(CONFIG_GENERIC_CPU_V2) += -march=x86-64-v2
> > +cflags-$(CONFIG_GENERIC_CPU_V3) += -march=x86-64-v3
> > +cflags-$(CONFIG_GENERIC_CPU_V4) += -march=x86-64-v4
> > --
> --
> Thanks,
> ~Nick Desaulniers



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdk%2BfwHQDe23Ttva46tyB9yGGxB73zXzNPkcMCggSRWUdQ%40mail.gmail.com.
