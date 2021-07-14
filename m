Return-Path: <clang-built-linux+bncBDYJPJO25UGBBYOQXSDQMGQEIUOFVNY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x238.google.com (mail-lj1-x238.google.com [IPv6:2a00:1450:4864:20::238])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D6C23C8A7B
	for <lists+clang-built-linux@lfdr.de>; Wed, 14 Jul 2021 20:09:38 +0200 (CEST)
Received: by mail-lj1-x238.google.com with SMTP id o11-20020a2ebd8b0000b029018eb44c1aa3sf1612253ljq.23
        for <lists+clang-built-linux@lfdr.de>; Wed, 14 Jul 2021 11:09:38 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1626286178; cv=pass;
        d=google.com; s=arc-20160816;
        b=cVml0AD0LazQ7DoNhiXZy1ETtNkwUScTnCKWY7W38F5Lw38UDU5BM86pvmeRzG+zgx
         HukPq7SNMpo5KlKhs8XWu47gutjkU21+PnVFDKO7/wxINNvaZjVraHbl2Z28ZV2C2bmK
         flzO9dI32k3ITfd7H9Jx38JhHuaFZAwceNVmvi2L5iKm2nVyOvGpdBE9rVq5Ccqn+4a1
         YpLlj0BcYURa78Y8imZBfGd120CuHlHMjwUW/pWIjehE5H/k5tDAevyosvZGmBSZRRY6
         DlpLFieHMZLP0UzSz5nZYV80zKyctgs+DQLFZztE3IHrdxBDK/zGehNUG+FTurfewYd2
         adwQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=Y6OpUGyvvg0jvhZOD+zXJepAe1pC9DCoclcVomH40y0=;
        b=o9IHIQaSqCPyg6BDMeeIW/cUytO3mcGcGexnh5b7MEZwKkRs5RWQdPkVBQDhmL6Yli
         kCzMhGicP1qNc0k5YdnszK5mJGplDqWxVNa3TguK8lSfKJqphujCfd7otBWTE+cg8w8I
         AyzcnIZ3Cl/154ZkkBv56ILtnhA7wCZzi2lYHAxGP/61LftwNmU6EMUeDHkU53OMZjwV
         3NsjtUD/IlwDmG0HSJ0+sBUw1Sq7lgTf7sOh0ecyUdfegCLMMvqnxfxtbV8yRKIs+oXf
         uT18zR6x+57j/unlGJj0iY3rVaonab0WFfJqfC59c/QfRCiAu0dNDQXB3IOnWku6Vnvc
         iCAg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=tP02GM10;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12c as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Y6OpUGyvvg0jvhZOD+zXJepAe1pC9DCoclcVomH40y0=;
        b=LX0JgtV4rNgy00qZd4/MXGSA6HGYgXb0gHofp1H3vq0lLMRtgPFNpqcx+aA39LyWBe
         jwEWh8iABWRwHyMR0/H2e34kQt+eeol5s1aVtvkQ8g/8uMKwCmLw+O6yvb3IlN46z2ed
         tuEi+w5zHZGQhlmSYMF47XblqPSJOtaqbyybfz6Z4azV/4NH//xVDUoa7siMNCrSgl0c
         koej4o3JF76jqchnp16Cam+LSMvoPfxK8Q11hFtnXI9+j+CLYQgbofhCMq/1mRlSFfMJ
         MENPTt59cGi/MFcgyUwWxEk0xx8lUVYGBnSjydGF4xTBODlZyGt3+j/7q/nBeGMmf+Ni
         DdbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Y6OpUGyvvg0jvhZOD+zXJepAe1pC9DCoclcVomH40y0=;
        b=YjC4Hpbb8UmfRShuzbQA3awzy48PnP+QNEhoO/tXIJzdcybOW3BM/+N108bOEA0vIN
         w8v0sndqtXPE8IOG6V4EUe/EDF4o+RmyRkeK9lSctbUXArbJUBKnRx44sx6ump0LGJ8Y
         9hLXrFWDrUCOhpn6Cv4SYHoo0IT8ROIaBK1JhdbmtDInud8+nfqn5NC910d9vOFk3rTM
         fRV+n4EiQ2MUGss5YCNPZvHOEK5H7pOJnsr5oMxoYLFQL/fiy3OhloblTb1Mp2rPC6FH
         PZN0ACZnotV1A0Ey5M+OhddOJ3IkjZ+3YL32lByFko4bRVUGUJlusefWkDGeSNXVa57n
         lSTg==
X-Gm-Message-State: AOAM533P/WL3Hkn2+0gDgSr+0mXHAeeDgQn1Yh1Zg1XZ45EojAvApIP8
	AQDQTm7dhvdNkciA3os91m8=
X-Google-Smtp-Source: ABdhPJyite2QGz4Tgr6X/E2WpWD0O5GQE20sxPsTKxro6ZYfCyQAfkUA//5SiyzBmuxp2B1A4kEeQw==
X-Received: by 2002:ac2:52b4:: with SMTP id r20mr9195511lfm.104.1626286178084;
        Wed, 14 Jul 2021 11:09:38 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6512:23a3:: with SMTP id c35ls2701946lfv.3.gmail; Wed,
 14 Jul 2021 11:09:37 -0700 (PDT)
X-Received: by 2002:ac2:5d49:: with SMTP id w9mr9471878lfd.345.1626286177066;
        Wed, 14 Jul 2021 11:09:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1626286177; cv=none;
        d=google.com; s=arc-20160816;
        b=HDWUQeL6spRU7NLQd/iUoM1XcRwBp3scFnUNAbRsGxck34oVQefS9cMWnoQYiQOUql
         KEYttoPvN973ZWd7KBzTtXJyQeCHbaqgIeO7joBM0lX5Kdvm/4yEO95s2fI9K5oldMg0
         9ltUUx0tVL62/UKeLPPXb3muCEgrTzXePRmp2Su06HXA61EvvMxc515NdYcyj6UtKBDn
         lxZHqs6LRkBK7/x1I9sSfpdC97JvyjEswucjSZUVebpzm43wJRuEqZ6olEU+JrASJB/s
         bqfUHou9kcdrWcmKCsg9S47eimV7xw7HULs5VYaNWisI1C+wV0nxLXXE/WL0fxYfPyyd
         wmyg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=Ij5c5QtyImKnAJ85AhNr0s4HqHfwN57z+cA0A4w9TXQ=;
        b=XwiiT+0QGgdnHrCN7X1etvxcbmUMKJ4oys0NFSVlKvS8R4eo4NPY3kb2oJ67g0r7Od
         CTjUpRjfkvY87amVTk54IPeQplaGZBt8sJfstxwFbfSp3cLxdvWFgJ30L8PmU2PAbpDD
         jLR71aaW9cc77LaPyWanby0qDjZCFpIjW6NWajjYTx8cNKlW4osJ/us7YJZFJtloAFBD
         kLyNzl4Kytm26P1X9ygNAl7ox1ivu9lW3Cv1HIqxqKhPuELtmsHFuIME8TUcXQzwD+rI
         idmd1IGHwJDwdzysWgxmeND7MyEBYUZxxpl6Uzk/nH2GcNVSP6EtbBt/YI2HnmFz2QyH
         /qYA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=tP02GM10;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12c as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lf1-x12c.google.com (mail-lf1-x12c.google.com. [2a00:1450:4864:20::12c])
        by gmr-mx.google.com with ESMTPS id q8si166631ljg.4.2021.07.14.11.09.37
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 14 Jul 2021 11:09:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12c as permitted sender) client-ip=2a00:1450:4864:20::12c;
Received: by mail-lf1-x12c.google.com with SMTP id 8so5101567lfp.9
        for <clang-built-linux@googlegroups.com>; Wed, 14 Jul 2021 11:09:37 -0700 (PDT)
X-Received: by 2002:a05:6512:3e0c:: with SMTP id i12mr8754331lfv.122.1626286176530;
 Wed, 14 Jul 2021 11:09:36 -0700 (PDT)
MIME-Version: 1.0
References: <20210707224310.1403944-1-ndesaulniers@google.com>
 <YOaR1ZjToP/kgNsC@infradead.org> <CAK8P3a1ctLcHuLZfBJ7wXHRmidpQZ4EZdML1nqPJVGYVTgHmaw@mail.gmail.com>
 <CAKwvOdkaifETNvtTA3O9EToVHAK0N50wkT-bHOpQ2RmFg7qk0A@mail.gmail.com> <CAK8P3a3h_tVaXVKRgaC9L+z9CwVGkOmCPPeW7UjDUhPKHNQDmw@mail.gmail.com>
In-Reply-To: <CAK8P3a3h_tVaXVKRgaC9L+z9CwVGkOmCPPeW7UjDUhPKHNQDmw@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 14 Jul 2021 11:09:24 -0700
Message-ID: <CAKwvOdkUUJU8Ktg8Wcvg3pbsyUWLCH0320nF-aQWre0hGTP2Ag@mail.gmail.com>
Subject: Re: [PATCH 0/2] infer CROSS_COMPILE from ARCH for LLVM=1 LLVM_IAS=1
To: Arnd Bergmann <arnd@kernel.org>
Cc: Christoph Hellwig <hch@infradead.org>, Masahiro Yamada <masahiroy@kernel.org>, 
	Miguel Ojeda <ojeda@kernel.org>, Fangrui Song <maskray@google.com>, 
	Michal Marek <michal.lkml@markovi.net>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Linus Torvalds <torvalds@linux-foundation.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=tP02GM10;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12c
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

On Fri, Jul 9, 2021 at 1:07 AM Arnd Bergmann <arnd@kernel.org> wrote:
>
> On Thu, Jul 8, 2021 at 8:04 PM 'Nick Desaulniers' via Clang Built
> Linux <clang-built-linux@googlegroups.com> wrote:
>
> > > /usr/bin/powerpc64-linux-gnu-gcc-5.2.0
> > > /usr/bin/powerpc64-linux-gnu-gcc -> powerpc64-linux-gnu-gcc-5.2.0
> > > /usr/local/bin/ppc64le-linux-gcc-9
> > > ~/bin/powerpc/powerpc-linux-unknown-gcc-12.0.20210708.experimental
> > >
> > > all of these should be able to cross-build any powerpc kernel, but
> > > there is no obvious first choice (highest version, first in path,
> > > ordered list of target triples, ...). I tried coming up with a heuristic
> > > to pick a reasonable toolchain, but at some point gave up because
> > > I failed to express that in a readable bash or Makefile syntax.
> >
> > Right; foremost in my mind was arm-linux-gnueabi-gcc vs
> > arm-linux-gnueabihf-gcc.  That's not even to mention the versioned
> > suffixes.
> >
> > In terms of multiversion support; this series doesn't regress doing
> > things the hard/verbose way.  But I think for most users we can have a
> > simpler common case; folks can play with their $PATH or focus on more
> > hermetic builds if they want this new feature (CROSS_COMPILE
> > inference) AND support for multiple versions of the same toolchain.
>
> Fair enough. So how something like this:
>
> powerpc-targets := powerpc32 powerpc64 powerpc32le \
>         powerpc32be powerpc64le powerpc64be ppc64le ppc64be
> arm-targets := arm-linux-gnueabi arm-linux-gnueabihf
> x86-targets := x86_64 i386 i686
> x86_64-targets := x86
> i386-targets := i686 x86 x86_64
> parisc-targets := hppa64 hppa
> ...
>
> CROSS_COMPILE ?= `find-toolchain $(ARCH) $($(ARCH)-targets)`
>
> where find-toolchain just finds the first working toolchain based, looking
> for $(target)-linux-gcc $(target)-gcc $(target)-unknown-linux-gcc etc
> in $(PATH) but ignoring the versions?

Sure, debian doesn't even package different versions of the cross GCC
packages AFAIK; no idea about other distros.  Though the user may have
built from source, or have multiple versions fetched from tarballs.

I think we can simplify the common case of "I just wan't to cross
compile, I don't necessarily care about an older compiler version
co-installed with a newer one." ("and if I did, I could still use
CROSS_COMPILE the verbose way").

> What I had actually planned was a set of helpers that allow you to
> do this in multiple steps:
>
> - if $(objtree)/scripts/cross/bin/gcc (or something else we pick)
>   exists and CROSS_COMPILE is not set, set CROSS_COMPILE
>   to $(objtree)/scripts/cross/bin/ in the Makefile
> - add script to enumerate the installed toolchains
> - add a second script to symlink one of those toolchains to
>   $(objtree)/scripts/cross/bin

(and check the symlink isn't broken should the user uninstall a
toolchain, or have their distro update their toolchain version)

> - add a third script to download a cross-toolchain from kernel.org
>   for $(ARCH) and install it to one of the locations that the first
>   script looks for (/opt/cross/, $(HOME)/cross/, $(objtree)scripts/cross/)

Would the user be prompted for the download? So during
`defconfig`/configuration we could prompt and say "it looks like
you're cross compiling without setting CROSS_COMPILE, would you like
me to fetch a cross compiler for you?"

Seems reasonable, when cross compiling with GCC.
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkUUJU8Ktg8Wcvg3pbsyUWLCH0320nF-aQWre0hGTP2Ag%40mail.gmail.com.
