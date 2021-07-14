Return-Path: <clang-built-linux+bncBAABBLENXWDQMGQEORXZBQY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53a.google.com (mail-pg1-x53a.google.com [IPv6:2607:f8b0:4864:20::53a])
	by mail.lfdr.de (Postfix) with ESMTPS id 60B843C91F0
	for <lists+clang-built-linux@lfdr.de>; Wed, 14 Jul 2021 22:18:54 +0200 (CEST)
Received: by mail-pg1-x53a.google.com with SMTP id a6-20020a63e4060000b02902272a0052cdsf344014pgi.7
        for <lists+clang-built-linux@lfdr.de>; Wed, 14 Jul 2021 13:18:54 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1626293933; cv=pass;
        d=google.com; s=arc-20160816;
        b=y8OLCiUDiY3bnQe/7WRkOrJMurA4R3m8ct5he7imQFW21RCNHIWjLK2lNdSifq3h1S
         YHBOvHyFpnSUkEiqEE0TNLK4V9s+68E3gJ16bsl6dxZatjLfELiqwhPo0cvcVb3ez9ZX
         8OhiiyNlIAVWlEvMl/OsJ7AltxwjHo7kssUsQcDc/0Plq8P/iipyL1QYMBJMafOCVfWb
         3Msj+7l5r0Y4MlqleJJjMtggRw38Fv9eEEuLRr9OqEhDfaVwNrmejwZrHUYjc3jV+10J
         mmcMzzdI9Z6CY0Uer/rmK3sGgsylSoPXgzzyAXuUWRG23w6CjjYUuxVwwzWS0pnxqxdC
         8mvw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=gW/F+YXbJGnZpuc6BypJ4b+uIRGTfN65VKp2xBffI88=;
        b=f9yxDdOy/LviSw9gshAHvrIS2vy2VH5pWovFaKFrxHC8UqP77PotrDVBNX/qhKEItN
         bcNHOo+EuxawJ8H9VfUsBZJfafgWu7JrGnPU6XdMm/D7aYSg0tqjGxXrjG6lC8klNou9
         KuWbDjAhjFcB7/Z7gv9laPZjiQBOjLlWrTwBXPkHUKdw5isn3+Z70neYc14D9H7WUc98
         3uQXcPURkU4DEWyrh8ZxNaG9NOUKUUZFYFLxC482JtN/AQcE5h/AKurrU0oLwvHYiqAn
         rgz5cdy4lqGdEmKEDIhpVFvvW+mTB3v8+n4WfBSTWjWVHDW1o+QStY2nsHbyRDovpubG
         iwiA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=KFD+vift;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=gW/F+YXbJGnZpuc6BypJ4b+uIRGTfN65VKp2xBffI88=;
        b=bENM9N6vQrCJBPvkRkcMV6fr6sRlXnZw7oy2GFILsz/LSpUC700+UqhgX3M49Z8TlF
         grOgX0Uvq4nm8CpUHcH+kkoBGFHVZOoms9EHyBhjgnogDqjuOVrSmLCAwE1BgjywZGFV
         4cFJA0gk7mGcqp0gAJqXEjx3Ms/9Y4YNisTAR5eb9B3Fn3L+TvP1JWivLcVz/27W/rjw
         ViVy4mPj0HYx1gYmjxcErIRRHtVhz5JaX8TXqbVsZUAjmbI9l/KG3VYTRjxLxhH1z1Y7
         i/mwHXkJpQRE6IKqdHfxqVJJ8kK9zpTlyXbEk5D42cOeGEA8KGScryL7TuuWxh9mvrtE
         4VLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=gW/F+YXbJGnZpuc6BypJ4b+uIRGTfN65VKp2xBffI88=;
        b=XAaEIXyzDZD3Vw4g5A6h8YARr43FY/YIcHk74ljba9IH7SA3h6a7N7xP3KDeBERgH4
         QFeYR+csMsm+IgcHCsrCuNG5v/pIP4JEjbvl2j3bbKLU2AR5SCXjXWQJTp+vO0NVxU9+
         HsQ965fS3ivkZFssvRxOybjv7kAdOrrNFypmGVFT/4FDgL8TBbwWeCTDHhKxhyPsMOf1
         TT18+/OWC3sWJmfY4EkP06GP0qck0M/q8vx+OKBRt3jgHbqHAnuD+sjg6aaZZMbC0l+f
         nD54gJO/bSH397U61fdPZx/42RB9I2v01yp1MVB19Us1zgk2z3EspyA+OXndS3NpcqUR
         /ObA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532sdTzQGPBj9a3u51ejMsle5Nk8VlCR6bNTZvD9dMGD/NcKN1k9
	7nbjlw1a99a83VaQDBL+ULU=
X-Google-Smtp-Source: ABdhPJxCT8UpTCboLb5Jv7VIY1QMZSqdYxYN/JrYlVtdUolI9uqZbwinYSex0Kang30fPrba3wXq2A==
X-Received: by 2002:a17:902:70c6:b029:12a:7a50:c723 with SMTP id l6-20020a17090270c6b029012a7a50c723mr8806568plt.61.1626293932826;
        Wed, 14 Jul 2021 13:18:52 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a65:678d:: with SMTP id e13ls1938758pgr.2.gmail; Wed, 14 Jul
 2021 13:18:52 -0700 (PDT)
X-Received: by 2002:a63:ee0a:: with SMTP id e10mr11361237pgi.385.1626293932411;
        Wed, 14 Jul 2021 13:18:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1626293932; cv=none;
        d=google.com; s=arc-20160816;
        b=nmnpdTn67K5QBPjslePLNpEirsuVpQF9qQTpGBL8Xu8Vsk6SRLQdTgGy+xrXGLnEpz
         PsDVObNk4bQVgON6WvoS7l2bRBkvxMDI23ONLumWee91TsWa9/m7RvLGvUATAy8iwYDM
         vKdKtLFNyK7LnX9k8wVwbyQyKzZI6x8ZHFkhiWfCsZsX56zw4sXCqS7yXVsmumpiqhrp
         P6AeITzK/+x2In5IsRxfwKT0gTib9QWtXbW9v61vKmjaaYk6vxv6j85PePmX5PhTvCYd
         u/p+liU0S6NNPmvy1Qn8Xv4pjWLiWild9pv+0JpuyHtHypjUTXg2rNx0u8rzLcVM0YH+
         a4Hw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=qIkzzLJjHUgGccsiKg/dZonlTOR7ZQiZcmHAAEiNhnw=;
        b=KB6fupYz0jQ+YLzFsz1L7vXZnGr1kIdqo1JlwE98BF5gPxogKkCbQJKr9Jdkxln2HF
         dr52xQpgZoItBrpKvOSaUN8jUVVXrPVQUzDtHBgRq4D9E+Ic5JSs6yXTDNNqyJP/C/nv
         D9GEIvLlrTSRRoWX18a+17liwHPInYPfwGRS7h4RHEiTLYQTH5hQvpbSCw7Fb1KVBd52
         +v9TIx7n3fO7EjrQTs6VxKVN7wg2C+y7hr89ThWW4wVwYAwg0Ct0qgs43Ksx+xgiyPSw
         +W7kV/fTD7+tXGZw67UplQQ+2WXukd6sU1Npyl4jYKMEK2anWT9CS+wu8zTy2vbR8YsR
         pvPw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=KFD+vift;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id t191si377104pfc.0.2021.07.14.13.18.52
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Jul 2021 13:18:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 28DE0613C3
	for <clang-built-linux@googlegroups.com>; Wed, 14 Jul 2021 20:18:52 +0000 (UTC)
Received: by mail-wm1-f49.google.com with SMTP id b14-20020a1c1b0e0000b02901fc3a62af78so4657498wmb.3
        for <clang-built-linux@googlegroups.com>; Wed, 14 Jul 2021 13:18:52 -0700 (PDT)
X-Received: by 2002:a1c:4e0c:: with SMTP id g12mr5971146wmh.120.1626293930689;
 Wed, 14 Jul 2021 13:18:50 -0700 (PDT)
MIME-Version: 1.0
References: <20210707224310.1403944-1-ndesaulniers@google.com>
 <YOaR1ZjToP/kgNsC@infradead.org> <CAK8P3a1ctLcHuLZfBJ7wXHRmidpQZ4EZdML1nqPJVGYVTgHmaw@mail.gmail.com>
 <CAKwvOdkaifETNvtTA3O9EToVHAK0N50wkT-bHOpQ2RmFg7qk0A@mail.gmail.com>
 <CAK8P3a3h_tVaXVKRgaC9L+z9CwVGkOmCPPeW7UjDUhPKHNQDmw@mail.gmail.com> <CAKwvOdkUUJU8Ktg8Wcvg3pbsyUWLCH0320nF-aQWre0hGTP2Ag@mail.gmail.com>
In-Reply-To: <CAKwvOdkUUJU8Ktg8Wcvg3pbsyUWLCH0320nF-aQWre0hGTP2Ag@mail.gmail.com>
From: Arnd Bergmann <arnd@kernel.org>
Date: Wed, 14 Jul 2021 22:18:34 +0200
X-Gmail-Original-Message-ID: <CAK8P3a3R7FeA3Qjm9+bTz0Zd3=eFkXjgjmB24kewpVOPMtSbHQ@mail.gmail.com>
Message-ID: <CAK8P3a3R7FeA3Qjm9+bTz0Zd3=eFkXjgjmB24kewpVOPMtSbHQ@mail.gmail.com>
Subject: Re: [PATCH 0/2] infer CROSS_COMPILE from ARCH for LLVM=1 LLVM_IAS=1
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Christoph Hellwig <hch@infradead.org>, Masahiro Yamada <masahiroy@kernel.org>, 
	Miguel Ojeda <ojeda@kernel.org>, Fangrui Song <maskray@google.com>, 
	Michal Marek <michal.lkml@markovi.net>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Linus Torvalds <torvalds@linux-foundation.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: arnd@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=KFD+vift;       spf=pass
 (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=arnd@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

On Wed, Jul 14, 2021 at 8:09 PM 'Nick Desaulniers' via Clang Built
Linux <clang-built-linux@googlegroups.com> wrote:
>
> On Fri, Jul 9, 2021 at 1:07 AM Arnd Bergmann <arnd@kernel.org> wrote:
> >
> > On Thu, Jul 8, 2021 at 8:04 PM 'Nick Desaulniers' via Clang Built
> > Linux <clang-built-linux@googlegroups.com> wrote:
> >
> > > > /usr/bin/powerpc64-linux-gnu-gcc-5.2.0
> > > > /usr/bin/powerpc64-linux-gnu-gcc -> powerpc64-linux-gnu-gcc-5.2.0
> > > > /usr/local/bin/ppc64le-linux-gcc-9
> > > > ~/bin/powerpc/powerpc-linux-unknown-gcc-12.0.20210708.experimental
> > > >
> > > > all of these should be able to cross-build any powerpc kernel, but
> > > > there is no obvious first choice (highest version, first in path,
> > > > ordered list of target triples, ...). I tried coming up with a heuristic
> > > > to pick a reasonable toolchain, but at some point gave up because
> > > > I failed to express that in a readable bash or Makefile syntax.
> > >
> > > Right; foremost in my mind was arm-linux-gnueabi-gcc vs
> > > arm-linux-gnueabihf-gcc.  That's not even to mention the versioned
> > > suffixes.
> > >
> > > In terms of multiversion support; this series doesn't regress doing
> > > things the hard/verbose way.  But I think for most users we can have a
> > > simpler common case; folks can play with their $PATH or focus on more
> > > hermetic builds if they want this new feature (CROSS_COMPILE
> > > inference) AND support for multiple versions of the same toolchain.
> >
> > Fair enough. So how something like this:
> >
> > powerpc-targets := powerpc32 powerpc64 powerpc32le \
> >         powerpc32be powerpc64le powerpc64be ppc64le ppc64be
> > arm-targets := arm-linux-gnueabi arm-linux-gnueabihf
> > x86-targets := x86_64 i386 i686
> > x86_64-targets := x86
> > i386-targets := i686 x86 x86_64
> > parisc-targets := hppa64 hppa
> > ...
> >
> > CROSS_COMPILE ?= `find-toolchain $(ARCH) $($(ARCH)-targets)`
> >
> > where find-toolchain just finds the first working toolchain based, looking
> > for $(target)-linux-gcc $(target)-gcc $(target)-unknown-linux-gcc etc
> > in $(PATH) but ignoring the versions?
>
> Sure, debian doesn't even package different versions of the cross GCC
> packages AFAIK; no idea about other distros.  Though the user may have
> built from source, or have multiple versions fetched from tarballs.

I have an Ubuntu installation with gcc-9, gcc-10 and gcc-11 cross
toolchains installed from through apt, but none that is just 'gcc'
without a version as the ones I built myself are.

> I think we can simplify the common case of "I just want to cross
> compile, I don't necessarily care about an older compiler version
> co-installed with a newer one." ("and if I did, I could still use
> CROSS_COMPILE the verbose way").

Right, in my example above one would still have to set CC=
since the detected target triple has no $(CROSS_COMPILE)gcc,
only the versioned ones.

Setting up the symlinks however should get you there.

> > What I had actually planned was a set of helpers that allow you to
> > do this in multiple steps:
> >
> > - if $(objtree)/scripts/cross/bin/gcc (or something else we pick)
> >   exists and CROSS_COMPILE is not set, set CROSS_COMPILE
> >   to $(objtree)/scripts/cross/bin/ in the Makefile
> > - add script to enumerate the installed toolchains
> > - add a second script to symlink one of those toolchains to
> >   $(objtree)/scripts/cross/bin
>
> (and check the symlink isn't broken should the user uninstall a
> toolchain, or have their distro update their toolchain version)

There are lots of options for the policy here. My preference would
be to just pick the one from the symlink before any other, and then
have a step 'make config' family of commands that checks that
the selected toolchain actually produces object code for the selected
architecture.

> > - add a third script to download a cross-toolchain from kernel.org
> >   for $(ARCH) and install it to one of the locations that the first
> >   script looks for (/opt/cross/, $(HOME)/cross/, $(objtree)scripts/cross/)
>
> Would the user be prompted for the download? So during
> `defconfig`/configuration we could prompt and say "it looks like
> you're cross compiling without setting CROSS_COMPILE, would you like
> me to fetch a cross compiler for you?"
>
> Seems reasonable, when cross compiling with GCC.

I don't think we want interactive commands in the build system other
than 'make config', but it would be reasonable to print something like

"no compiler found", "selected compiler ${CC} does not match architecture
${ARCH}", or "selected compiler ${CC} does not work", followed by a
list of suggested commands to configure or download a different toolchain.

       Arnd

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK8P3a3R7FeA3Qjm9%2BbTz0Zd3%3DeFkXjgjmB24kewpVOPMtSbHQ%40mail.gmail.com.
