Return-Path: <clang-built-linux+bncBDYJPJO25UGBBL74TSDQMGQEUSP4VMI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x440.google.com (mail-wr1-x440.google.com [IPv6:2a00:1450:4864:20::440])
	by mail.lfdr.de (Postfix) with ESMTPS id 6688C3C18DD
	for <lists+clang-built-linux@lfdr.de>; Thu,  8 Jul 2021 20:04:31 +0200 (CEST)
Received: by mail-wr1-x440.google.com with SMTP id t12-20020adff04c0000b029013253c3389dsf2265569wro.7
        for <lists+clang-built-linux@lfdr.de>; Thu, 08 Jul 2021 11:04:31 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1625767471; cv=pass;
        d=google.com; s=arc-20160816;
        b=QajEw//Vwtxn3ZZIHQRbNTBvkYAuIz4R6ARZVrgRBo7wbRjFpOX0x7Jm59xcf0Jyhd
         bd4gZOe0wO3IbvFTyrzVJpxn9/AdjiJ/vS0KyRhPG0IFVH9vGW0HB2y74S9GkG6z5McV
         we9lOEy4paNNUltkKnhrEWN9Cefeqb5NptzarrAbQx8fsTu6SY8nfqPLFNvnS70dO7bH
         ZRNU2CApnaJYFnOuZP76PQiCTJQhQk0GmhYkioyXoF7ZBRlfFHqYSNgUqeOlDQNRzTOm
         diw4D2V9MBfw0oBt55XkOM43fknrN+OZuJFxPzaeGVEt1s2RuWMFrBOhMW74mHtw/u1N
         KeKA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=aWOOFriK7QYDHmCl/0ZA3Mn4D0N84vXKygbfOZZsiUI=;
        b=cx1HF8TIfFuhm1jJQNZZvjQz7sg3h0A6CE9sp/h4BJ3DI/VyyuakbnpxB3r/2JDz2z
         OR+BXgIQV0ecRmOopt3pVJhE2nEiumJs+zscSkdtwNHs1sA34KQ17S0/hBd0VGIF36Kp
         Fnjq0JxFpNSATol3UunNfvo6VU+CeUwVirmAg2++RNltQQE8NGZeFPUA6AjzDKkawQmo
         zKPCAvqZdxUASbUgtA7cTojCCQimPZaNowIsq7egria7no6ndvXVfP9u7UeBolRIue5t
         NLFDKQT2EVWKCD8wuJ1Z/Htc2IKKagNAfEXEou2DovrDNJ1DqEvkfxgnWhqpyev1WP75
         WtgA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=KNyqlaWo;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12e as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=aWOOFriK7QYDHmCl/0ZA3Mn4D0N84vXKygbfOZZsiUI=;
        b=SXqn2KO39ftDejjWkbXoq0Nwh6mCnCmaKiCFcXg+aPiigOooYysf6v9wTLteWzrZMJ
         XO9rxIgmVAIR1txk9sU/tUy/ErPVQhUcfwBDNnWroemo5k9nf5m7MdQ4j8DQX8YHYdif
         81nq6aQ6V0Sn29PcwS+fFSRSq5vvAVDmjP/TNt4TghRih7EO7LMuHoi4EC6MR+XFeecV
         m3ndQfkGyF2HeJBRdujK3pu79GytI+6oBU0dDOz1vssp1r/v1gfB0yPd8ckBGVUkcsdk
         LZEUbI+tQiDZJPoMTA8pc47RY+MH9hVSdTUcC+EaRQ/+iuthPdYwWroZ+ti5SzSvofgm
         EL8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=aWOOFriK7QYDHmCl/0ZA3Mn4D0N84vXKygbfOZZsiUI=;
        b=T3QASjuswDjCa8mrn6tIU/gotnN8up6a/L+eeFanzASWF5SVI5G1Icbdb4HTxbkj2O
         XWqcuEL8v4G4e0rzyugOLotOloVg0Dk5t9Pig7NS+QydTE5d3k/cmzFXo1UWe7uCIHaZ
         xN7ZfgLpT5aB89KePuXT/9rLxKGYHteTxaDPi8pgh0gNNq9fTF5aprMwUJ/6eoWkZoZ3
         9l045qrQ54H6Hq8UYk/D46/0Ygol8yWgqPqXaS0axShxHkDWc7HKOKXM/1Y53p1ZAZa9
         Y0bp8qR5OyM75TFlKEi/voZFlA3jkHs92rIHNXehByzWyjmK28K8gJ0al/iPZanD8bCH
         KtmQ==
X-Gm-Message-State: AOAM5328DcubYVUYJZ2MJ3uu/Jw5ZHJi3eIIL1RdYSP8ETgB04CNy2JX
	TpclLSGPNwjuepXVTCr3J8A=
X-Google-Smtp-Source: ABdhPJzjPB5+iGQNIuZ6RpCO23QKOUS6oWLnGmJ1vJ7mRAMafVQv0VsqxHNWZuwM7FGJEPDaRGEuVw==
X-Received: by 2002:a5d:48ce:: with SMTP id p14mr36845355wrs.170.1625767471214;
        Thu, 08 Jul 2021 11:04:31 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:6ac7:: with SMTP id u7ls2530187wrw.0.gmail; Thu, 08 Jul
 2021 11:04:30 -0700 (PDT)
X-Received: by 2002:a05:6000:1a87:: with SMTP id f7mr35824006wry.172.1625767470434;
        Thu, 08 Jul 2021 11:04:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1625767470; cv=none;
        d=google.com; s=arc-20160816;
        b=dcH/Q6CU42OuxO2H41EMweYPm9A1wIHXb9nqSujxO+Z82bQ3yyywm52KEzjHGfQtgs
         55Y4d7VCe3Ggxe43ZlDuDYlH/5zQO/0VxXyeFChBpyupqe3z/got1mBL+U7HGlKeSJg1
         rbOC0Tv3BG1emXB2+eYeLBx2n9XB8xj6wnQW3MSp1+8uVgPRXZHKCrjicrO+r3bdvGhZ
         qqlnHWLHLOlz7T/gztfxsNPoioeHCvtDZXYFIS5vLJGyyTp7lVhqUZGRTnEinzUN//yh
         H1Jc2XKARtRva6yVNE03/x2leup7Bq/vL2/o4N6g5qJTFfNniShkBu2aO5j9Q8eqiZz/
         y5oA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=yiCMe5lXnOMqVQwnybceaVdm0JMGJkLwBf5CkHBvdcQ=;
        b=W1Hk6Rei84nqT3yPUf+/MRVljsMh7cVffP38L+Xcdh428hlbXZwFqb9fwetw1Rb9Zr
         rmsGfnycCchFxTah9thpTPvhnf7NqTgBhBoNP1gVtHr8+mKEQ5xg5GDk9+G5rG2QJEEf
         32LIkCST0TiSygrPZ/3sEWTNsoo9ZO6r06rQYx+2lx1oBfA2gAEG7WxbOPCBPF4R3DiX
         sieb/ELMIraZqwgoxegiyul31WgqxQdQM4DlAdyIXfOU6jpeXvZtsIKZgGfDu73Bid8I
         h1It5/luq3Xpd/VjQyThz0pjRhAwrwZU/FO2qKDB5oQf4+mZgRy728/RaTNBQxY8vL18
         +Qfg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=KNyqlaWo;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12e as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lf1-x12e.google.com (mail-lf1-x12e.google.com. [2a00:1450:4864:20::12e])
        by gmr-mx.google.com with ESMTPS id k18si604207wmj.0.2021.07.08.11.04.30
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 08 Jul 2021 11:04:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12e as permitted sender) client-ip=2a00:1450:4864:20::12e;
Received: by mail-lf1-x12e.google.com with SMTP id 8so6240858lfp.9
        for <clang-built-linux@googlegroups.com>; Thu, 08 Jul 2021 11:04:30 -0700 (PDT)
X-Received: by 2002:a19:5f04:: with SMTP id t4mr25450735lfb.297.1625767469586;
 Thu, 08 Jul 2021 11:04:29 -0700 (PDT)
MIME-Version: 1.0
References: <20210707224310.1403944-1-ndesaulniers@google.com>
 <YOaR1ZjToP/kgNsC@infradead.org> <CAK8P3a1ctLcHuLZfBJ7wXHRmidpQZ4EZdML1nqPJVGYVTgHmaw@mail.gmail.com>
In-Reply-To: <CAK8P3a1ctLcHuLZfBJ7wXHRmidpQZ4EZdML1nqPJVGYVTgHmaw@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 8 Jul 2021 11:04:18 -0700
Message-ID: <CAKwvOdkaifETNvtTA3O9EToVHAK0N50wkT-bHOpQ2RmFg7qk0A@mail.gmail.com>
Subject: Re: [PATCH 0/2] infer CROSS_COMPILE from ARCH for LLVM=1 LLVM_IAS=1
To: Arnd Bergmann <arnd@kernel.org>, Christoph Hellwig <hch@infradead.org>
Cc: Masahiro Yamada <masahiroy@kernel.org>, Miguel Ojeda <ojeda@kernel.org>, 
	Fangrui Song <maskray@google.com>, Michal Marek <michal.lkml@markovi.net>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Linus Torvalds <torvalds@linux-foundation.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=KNyqlaWo;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12e
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

On Thu, Jul 8, 2021 at 12:27 AM Arnd Bergmann <arnd@kernel.org> wrote:
>
> On Thu, Jul 8, 2021 at 7:49 AM Christoph Hellwig <hch@infradead.org> wrote:
> >
> > On Wed, Jul 07, 2021 at 03:43:08PM -0700, Nick Desaulniers wrote:
> > > We get constant feedback that the command line invocation of make is too
> > > long. CROSS_COMPILE is helpful when a toolchain has a prefix of the
> > > target triple, or is an absolute path outside of $PATH, but it's mostly
> > > redundant for a given ARCH.
> > >
> > > Instead, let's infer it from ARCH, and move some flag handling into a
> > > new file included from the top level Makefile.
> >
> > Why only for LLVM?  I really hate the mess we currently have with
> > ARCH and CROSS_COMPILE.

I agree.

> > Being able to set both in .config (and maybe
> > even inferring CROSS_COMPILE where possible) would make my life so
> > much easier.
>
> I agree this would be best, but solving the problem for llvm is
> trivial with a 1:1
> mapping between ARCH= and --target= strings. Doing the same for gcc
> requires enumerating all possible target triples, and possibly deciding between
> different versions, e.g. when your path contains

Yes. There is a seldom used Kbuild macro for this: cc-cross-prefix.
It's hard coded to check for prefixed versions of gcc, but it will
handle the enumeration. Perhaps it could be used more widely, once we
know whether we're building with gcc or clang.  But as you note,
enumeration is kind of a waste of time for clang as these target
triples are known ahead of time.  I guess we could check that your
build of clang was configured with support for that target ARCH (since
you can disable backends when building clang), but I consider
disabling backends an antipattern, and I think the user will figure
out pretty quickly when they're trying to build a target that LLVM
doesn't support (whether due to configured-off or unimplemented
target).

> /usr/bin/powerpc64-linux-gnu-gcc-5.2.0
> /usr/bin/powerpc64-linux-gnu-gcc -> powerpc64-linux-gnu-gcc-5.2.0
> /usr/local/bin/ppc64le-linux-gcc-9
> ~/bin/powerpc/powerpc-linux-unknown-gcc-12.0.20210708.experimental
>
> all of these should be able to cross-build any powerpc kernel, but
> there is no obvious first choice (highest version, first in path,
> ordered list of target triples, ...). I tried coming up with a heuristic
> to pick a reasonable toolchain, but at some point gave up because
> I failed to express that in a readable bash or Makefile syntax.

Right; foremost in my mind was arm-linux-gnueabi-gcc vs
arm-linux-gnueabihf-gcc.  That's not even to mention the versioned
suffixes.

In terms of multiversion support; this series doesn't regress doing
things the hard/verbose way.  But I think for most users we can have a
simpler common case; folks can play with their $PATH or focus on more
hermetic builds if they want this new feature (CROSS_COMPILE
inference) AND support for multiple versions of the same toolchain.
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkaifETNvtTA3O9EToVHAK0N50wkT-bHOpQ2RmFg7qk0A%40mail.gmail.com.
