Return-Path: <clang-built-linux+bncBAABBQEHUCDQMGQE5CRTWHQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33c.google.com (mail-ot1-x33c.google.com [IPv6:2607:f8b0:4864:20::33c])
	by mail.lfdr.de (Postfix) with ESMTPS id 0983E3C2078
	for <lists+clang-built-linux@lfdr.de>; Fri,  9 Jul 2021 10:07:30 +0200 (CEST)
Received: by mail-ot1-x33c.google.com with SMTP id c1-20020a0568303481b0290484dd781259sf5612438otu.6
        for <lists+clang-built-linux@lfdr.de>; Fri, 09 Jul 2021 01:07:29 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1625818048; cv=pass;
        d=google.com; s=arc-20160816;
        b=lhbh9JDAOTRutcOQsMs93UwxNTt17CRno6pEEFLm2stMFaqKQj+4vad418oYUkQOkJ
         PqKDDbigxfYl4QGPg0fXp/4QylkGEiMTlBBJLVrVPfkhbJPm1IVDFoL04AvxUSfgxOgl
         dI3tdEizcmqfpF91ZqJ2brtJ3YXH394UkowY8R8NvvaLtYoeaoZ+6094oh5cx0BY4EBE
         B9BN8eHabd4L5Tl+dIEjvoHDO7qWDC2f6N+fknqUC7Elb8tZPDskCz2bl+HiRFNylQ0y
         zoqFjyoiniuluQnnr/oORO72/KZV/a/Bwb9Cwhm8mAbQU9ojHcUXUrbfsOCRsElxPhqZ
         DH1A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=mmN8KYq08sLmd3ZTCVpvcVdaeVuYNWsEjF29wJoRQaQ=;
        b=aL4NCQmO+0zmY3/CDfC5fYWry8NEBu27tMGESGjITlk8tsO7LZRxNEmIm3bJNirNAP
         QEK7lY1xUJEGFsXsfXpwW0CvXnZOVq02evvohq6dcPKuyTCOSRn29VO9QinRCvzFg2Ur
         ac4Lgc0ZPgE2MfUZjuzayz/PYOJ16TQS36w5z1iDACrZWDnFC8wvcuezSjESWpHxpThM
         0gjL0F7wtpfqZKoQyvhiEfrkcIZ6PsQ8ZDKVAhNqmCmKxln7B6b6VcdGMHlWmkGI1AGk
         O4ycSLlzIvb2UbO5uRPoOuxID1HdyjoHKkmZtoiHy0dtMiZepJvaVh1yxDssF6HZcvX/
         Q+SQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=oTQk1UzU;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=mmN8KYq08sLmd3ZTCVpvcVdaeVuYNWsEjF29wJoRQaQ=;
        b=Woeroi028w/RxvhyIkTZaisxR6Wa9hw8qvRGrkmac2Q7Y8DzpCPlpsLjG6N/rgPK//
         H653GcHwlrSDVzFGPr4dWDV5rXFJxxqPq/LfaqxdZot58Y+AhW59gEOc/406tMigjfBv
         4jkLh4vVHTpFEmCvT6aKaLjKWz0VUVxdPgZNNJKyOm08yKfZwSZknsxQhRO2qx8xNEHv
         CVatTzwmU3u5Pf7nZTwi1BHHNHSq2IsPrLl1DDF6VN6tmHDvd9fa2DiFLhzS0jhmpDOX
         hf8K0F31PkjPfT+vOE4mfjXBNCSASmKWX2+mcwp0dQog2VdKLrer+Nim9WSFadqIjL+R
         eKmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=mmN8KYq08sLmd3ZTCVpvcVdaeVuYNWsEjF29wJoRQaQ=;
        b=udPovhJMpd5xY5kk0r8FAZlroYsT+mZUdtTPfimXXhXjYDvtx5PYMuiSpnO4G32RAp
         P+17enKIHmvxeI2hb1EsOa5r/HZXp+00wXu9lrK4y1bhiFVgALTnguO9AxyY5QMvTZHa
         JLhlf4aPe9zhBb3GaMa2gMms2QFV/HUs3CRS24XydfXshsQC1ppt+6SkTRhXkMCu7oPP
         MuSdzrW06RkwRSxGilKRRNKtqevYU2yPOqunFqIN0xJPBGpRdJX8tsSak5xud6Q3HFti
         P70Z4uzvBP34oSF8duGn+DLjzziGsMlJee1PenLHmq4qFHYvpgNucOfFhKpRr741o24v
         Qh2w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533kU1D0XAuWEV/ks8I15+7j4v4YnxqLcNC0vhWdreV34p/dsUs+
	ElGnySI9GD97G5v0M0RMJqc=
X-Google-Smtp-Source: ABdhPJzy80X1CLLzLX9P5qnmoyVattZMPXUdRAkCTt+d+B/WY/eZa8J4FYeyiql4Nmju6Ym32wrbvg==
X-Received: by 2002:a05:6830:1bd8:: with SMTP id v24mr27328290ota.343.1625818048763;
        Fri, 09 Jul 2021 01:07:28 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:b304:: with SMTP id c4ls2018610oif.8.gmail; Fri, 09 Jul
 2021 01:07:28 -0700 (PDT)
X-Received: by 2002:aca:2212:: with SMTP id b18mr25727813oic.52.1625818048463;
        Fri, 09 Jul 2021 01:07:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1625818048; cv=none;
        d=google.com; s=arc-20160816;
        b=b9fa7VwTx5aXt5pGzNVrkzc653cvbrg/tbvBak1vpbaWjvy9t0vDrT4De0DKsvwUei
         VcziHF3FgkUOWQZRJwZ0naWBO46gDZwdx+JqczTKECdXK2ElABXdJEDBYcxXbQF6/xaT
         edy1xRtPR7w/VcXhya2jm7LCYvBYbXTRgzUI33AN1UFsfQSfJGIOYcbERgM1jO/6aSa1
         T2sgM8ZGRZIuMVLeA7xp363eze7ZoBExspsREouWtIiuKXCmhxvAXvMJrapdjHnZyGJg
         +iVnC4FZc4cwvD/DCFkYBO5rpz5HgXeP0S9k2xz9BNoLj/EwCLB6iVZ8MT1P+WgK7RkS
         DE7A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=1+DhiTWBovoDpGumpQSJYvcTwL7mIWJBKAGI9FglaOs=;
        b=Y78QKpZhKhLSJoCLBSIm1xgjYdP1ScmvXIbyivl4zxt9Up+kdMu13EQo0cZQmjPoZQ
         oL1k/JnHGNzMUmbZvYEzfSRpb6i/aWS+RwufoMEFtJJ8QfzQRuQWmPmXH3KcuRJGnY3q
         pSBPgQd32WdbW3dgMdL8aMV7BkJzWvAn/WjraXWxtfF6j8PNS9UcWRF4bx7B9a0ihGGu
         YfBb6Fqx/6RMYJ7FPNKHxTWVVDqj3gDC15Pfu8SxrxVM1lCkvDOJUrE8FZHDJn4qmD1W
         MuSuitmDCGQa9e2P2Vig4vJ4dAtyda35wVPR5Jhcctl8f2BgFAKVBIakcZtkV/pcytsn
         loDQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=oTQk1UzU;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id v20si354262ott.2.2021.07.09.01.07.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 09 Jul 2021 01:07:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id A9435613D0
	for <clang-built-linux@googlegroups.com>; Fri,  9 Jul 2021 08:07:27 +0000 (UTC)
Received: by mail-wm1-f43.google.com with SMTP id l18-20020a1ced120000b029014c1adff1edso8492221wmh.4
        for <clang-built-linux@googlegroups.com>; Fri, 09 Jul 2021 01:07:27 -0700 (PDT)
X-Received: by 2002:a05:600c:4101:: with SMTP id j1mr10271383wmi.84.1625818046196;
 Fri, 09 Jul 2021 01:07:26 -0700 (PDT)
MIME-Version: 1.0
References: <20210707224310.1403944-1-ndesaulniers@google.com>
 <YOaR1ZjToP/kgNsC@infradead.org> <CAK8P3a1ctLcHuLZfBJ7wXHRmidpQZ4EZdML1nqPJVGYVTgHmaw@mail.gmail.com>
 <CAKwvOdkaifETNvtTA3O9EToVHAK0N50wkT-bHOpQ2RmFg7qk0A@mail.gmail.com>
In-Reply-To: <CAKwvOdkaifETNvtTA3O9EToVHAK0N50wkT-bHOpQ2RmFg7qk0A@mail.gmail.com>
From: Arnd Bergmann <arnd@kernel.org>
Date: Fri, 9 Jul 2021 10:07:10 +0200
X-Gmail-Original-Message-ID: <CAK8P3a3h_tVaXVKRgaC9L+z9CwVGkOmCPPeW7UjDUhPKHNQDmw@mail.gmail.com>
Message-ID: <CAK8P3a3h_tVaXVKRgaC9L+z9CwVGkOmCPPeW7UjDUhPKHNQDmw@mail.gmail.com>
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
 header.i=@kernel.org header.s=k20201202 header.b=oTQk1UzU;       spf=pass
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

On Thu, Jul 8, 2021 at 8:04 PM 'Nick Desaulniers' via Clang Built
Linux <clang-built-linux@googlegroups.com> wrote:

> > /usr/bin/powerpc64-linux-gnu-gcc-5.2.0
> > /usr/bin/powerpc64-linux-gnu-gcc -> powerpc64-linux-gnu-gcc-5.2.0
> > /usr/local/bin/ppc64le-linux-gcc-9
> > ~/bin/powerpc/powerpc-linux-unknown-gcc-12.0.20210708.experimental
> >
> > all of these should be able to cross-build any powerpc kernel, but
> > there is no obvious first choice (highest version, first in path,
> > ordered list of target triples, ...). I tried coming up with a heuristic
> > to pick a reasonable toolchain, but at some point gave up because
> > I failed to express that in a readable bash or Makefile syntax.
>
> Right; foremost in my mind was arm-linux-gnueabi-gcc vs
> arm-linux-gnueabihf-gcc.  That's not even to mention the versioned
> suffixes.
>
> In terms of multiversion support; this series doesn't regress doing
> things the hard/verbose way.  But I think for most users we can have a
> simpler common case; folks can play with their $PATH or focus on more
> hermetic builds if they want this new feature (CROSS_COMPILE
> inference) AND support for multiple versions of the same toolchain.

Fair enough. So how something like this:

powerpc-targets := powerpc32 powerpc64 powerpc32le \
        powerpc32be powerpc64le powerpc64be ppc64le ppc64be
arm-targets := arm-linux-gnueabi arm-linux-gnueabihf
x86-targets := x86_64 i386 i686
x86_64-targets := x86
i386-targets := i686 x86 x86_64
parisc-targets := hppa64 hppa
...

CROSS_COMPILE ?= `find-toolchain $(ARCH) $($(ARCH)-targets)`

where find-toolchain just finds the first working toolchain based, looking
for $(target)-linux-gcc $(target)-gcc $(target)-unknown-linux-gcc etc
in $(PATH) but ignoring the versions?

What I had actually planned was a set of helpers that allow you to
do this in multiple steps:

- if $(objtree)/scripts/cross/bin/gcc (or something else we pick)
  exists and CROSS_COMPILE is not set, set CROSS_COMPILE
  to $(objtree)/scripts/cross/bin/ in the Makefile
- add script to enumerate the installed toolchains
- add a second script to symlink one of those toolchains to
  $(objtree)/scripts/cross/bin
- add a third script to download a cross-toolchain from kernel.org
  for $(ARCH) and install it to one of the locations that the first
  script looks for (/opt/cross/, $(HOME)/cross/, $(objtree)scripts/cross/)

        Arnd

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK8P3a3h_tVaXVKRgaC9L%2Bz9CwVGkOmCPPeW7UjDUhPKHNQDmw%40mail.gmail.com.
