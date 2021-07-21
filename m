Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBF6R32DQMGQER24ANKI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53a.google.com (mail-pg1-x53a.google.com [IPv6:2607:f8b0:4864:20::53a])
	by mail.lfdr.de (Postfix) with ESMTPS id 69A953D07F9
	for <lists+clang-built-linux@lfdr.de>; Wed, 21 Jul 2021 06:54:49 +0200 (CEST)
Received: by mail-pg1-x53a.google.com with SMTP id c37-20020a630d250000b0290232fee6d96esf758768pgl.16
        for <lists+clang-built-linux@lfdr.de>; Tue, 20 Jul 2021 21:54:49 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1626843288; cv=pass;
        d=google.com; s=arc-20160816;
        b=nKcOdg3gYzM5Xq1tHAqpFh/YZJJj0p7YTZlZQUqNSW4iqaM/0q7BkHcYZ2Qr4cUEiQ
         /lPJqjGd6+ofM8JUfeuEN4gDJ7DDwqNdALr/YChVab6aCs1jVH0EIp9H8WBV3XbnHemG
         FA/YhrFefXUswwG66vphA/r4+OexGU/I+ckFlAkRkdmA9srsQG9eaPeZRpp0WeV6M+QB
         EFD6Twet3HKlXEoWsbkOv1x2JXX936lAkQxe30ukEostvosklecqN4260c2guXcUEnhH
         stRI/FScCsCpwEzz9EurraJEw2CLUuRlYA6zvH/hh0y9G8KwlfTxBCaXtY5eVjpaTp/X
         eIrg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=OSt0HvICjZeuw9v4ieBG0VREZslZQRc3qG2il0rEZes=;
        b=NLLVN5zDtphPdTJ+h9rGmxPu+ijuBDE8hpxMoGCjHEbHH262xB8oinMl438FhvbaFS
         fL4Ac6S3jtwSYcIL2H9gRBUpq0iJiTCzqe4/F57bf32Qv4dW3nbqkGIOkTALNefRjy86
         80wdtqiWjFr1+u21zgxI3QNU1VHzzQ3CsswxZtNw5qqsXk5uxaa/4fWUSgp96A54T8p+
         /9jo6qE6DUtzwDODiMMR6dLCNeLOcih9zdH4E/2l9sD676u5r4ZE19mVQcgbbOdjNS7Z
         6//xOdOdRi1VJ65yB7ggIshp5EYeemroJ72EalLQF7zbZOogAsRupXBHW/oPZlk//otC
         7UMQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=bTGxYgJV;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.81 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=OSt0HvICjZeuw9v4ieBG0VREZslZQRc3qG2il0rEZes=;
        b=K6b8pgUzSKrR4qwDj245qu2SSz6ve6esiYVCAch8kaJwz4jnLB5n7/0Cvj+cPHKZM2
         OLEOHMi1YXzG5wow9LIV3gmHY4kc9FOxqxtavkKzDRF6rJaMVPrcMyUsWE95FJ3GtoVh
         uaVQrhAJnoeCOu0YO8Uv/X/KDCwaOex9Ida3Ngc5FW8pL6TQNEoFoWycaAdS/YB9cvZL
         WhDwDtIZu/Qq5cO4JSBEMHl6yrE00+bQYYTg7DFZsGA+7CHJsGpzwEazKxgpOe+/Stzm
         zRyqK/d4HlspW61TB5oORy0vPTdOhzf4X9YlynGl+Lurr9ARju0/3pGRXjKfz7J3IOH2
         k+gg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=OSt0HvICjZeuw9v4ieBG0VREZslZQRc3qG2il0rEZes=;
        b=P9ABWWNViz1LVnytDzkkVtpdxRriPEdgs9zpIP9tjnv3qDDySjpbryL5oxEzCh15zS
         h0mTEoF81cOaDFcE0Bpap2JxRVNQI1eV5IV6B3X9SF7YTGVajDG+8WpP4Cyyb4MWFRHI
         LczPZmGFEMcwEBHpEYwOmeh/OWxnKpTleyvUzIMwGV5J7YU09x6TltLEBD99QR17IRBG
         aZxV9ss8BmTVy1jJcyXrrwsSJudRoJPOhCWPUpFqiP2+UxcvXQH8VKACYKwrcFg6YrZI
         b0gXYvEq1AYbVj4polda4FNpeAgf5Scz7z2tBFVCYPOofOQtCVBGquI9JbofKEOy70Tl
         wczw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530fZ6zi7QoW8RAETHdEfgcpkZGcsmG6TnYzVxC3u0f3/So0e248
	MKjJkDLbJtheQ796yC6Sdno=
X-Google-Smtp-Source: ABdhPJy0cg5F+85h9YYYbgL3nT+4A30rRrKwVfkcldmhBWtwSnoVWjUSwRs9I9Yz85RTwQ9vz3QWbw==
X-Received: by 2002:a63:1110:: with SMTP id g16mr6848125pgl.111.1626843288126;
        Tue, 20 Jul 2021 21:54:48 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90b:943:: with SMTP id dw3ls3082008pjb.0.canary-gmail;
 Tue, 20 Jul 2021 21:54:47 -0700 (PDT)
X-Received: by 2002:a17:90a:e612:: with SMTP id j18mr2030554pjy.196.1626843287567;
        Tue, 20 Jul 2021 21:54:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1626843287; cv=none;
        d=google.com; s=arc-20160816;
        b=IFDnrD5xeThQTXYUX4Rrj3bmmq1j7ltj1JPj/42c6Qsu7bYAHkOlXSnU/Tmk87ll4o
         zsEUhvP9Pi9i0opbFXCh0p8dO2y5i3+EsFV9ceztPoCkG27Wn7BTGJSBtb3BnQ61Z/MM
         DRC91te973tpbjv0v5gn9M3nRPn+9RkNP0rXQl2J1bHfYtijWWq6CETB24jie5aMd7ZA
         jLJ+KOfKfh0Dsl41j8LpoHLOgfl1Kc0jiyDgT/nKm1oHQwnGigHcoSnUWJE1rBx1RT1f
         FXbdLQccAsnwi7Pc7VySMtlio8YAOFs2b/FoD+dUw8NV4DrkFygRxjzK0TQyl9WrovGj
         1hog==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=W1v70rWFrLtOW1Ykxet5FTFkDNOi12M78dgvKR6ceXg=;
        b=qtAYvNGjiFnuwC7B1nYRRnkhBWQB01u+grnmDL72SIltpW0P0Z6OHwY7ksQkxeMBeS
         8qGUAbnrkEupwhomPeBuqBgWznLJ3L+p9F8DJsfmmN0uUDEVo6ofd9oOLGmPObI2EODn
         LpBaO2t8PZB0QJUCbOQralmiXSLZeeUMJ7Q4TuIkAOnnKVo4JtNbymsiBt+mF/XuQS5P
         KOhrnDVGnGvHzANxGJNvGyG3jVU3w4/UuQR692EHVkZXURvdKq1pIHYCNXCAOE8BqsVH
         rbEsGW9zAKpb0mDPZOkrX4Argi/+2b7mDOhsipOF6/S3I95NBEqA87ssH4lKKVNZO4z0
         gYOw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=bTGxYgJV;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.81 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conssluserg-02.nifty.com (conssluserg-02.nifty.com. [210.131.2.81])
        by gmr-mx.google.com with ESMTPS id z2si893387plb.3.2021.07.20.21.54.47
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 20 Jul 2021 21:54:47 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.81 as permitted sender) client-ip=210.131.2.81;
Received: from mail-pj1-f51.google.com (mail-pj1-f51.google.com [209.85.216.51]) (authenticated)
	by conssluserg-02.nifty.com with ESMTP id 16L4sMxb030994
	for <clang-built-linux@googlegroups.com>; Wed, 21 Jul 2021 13:54:23 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-02.nifty.com 16L4sMxb030994
X-Nifty-SrcIP: [209.85.216.51]
Received: by mail-pj1-f51.google.com with SMTP id p4-20020a17090a9304b029016f3020d867so320814pjo.3
        for <clang-built-linux@googlegroups.com>; Tue, 20 Jul 2021 21:54:23 -0700 (PDT)
X-Received: by 2002:a17:902:e8ce:b029:12b:3d80:a028 with SMTP id
 v14-20020a170902e8ceb029012b3d80a028mr26211447plg.47.1626843262323; Tue, 20
 Jul 2021 21:54:22 -0700 (PDT)
MIME-Version: 1.0
References: <20210708232522.3118208-1-ndesaulniers@google.com>
 <20210708232522.3118208-3-ndesaulniers@google.com> <CAK7LNARye5Opc0AdXpn+DHB7hTaphoRSCUWxJgXu+sjuNjWUCg@mail.gmail.com>
 <CAHk-=wgGxu4_hgzdYpFuKd95SfnkJbPTWAQ9-fMgmMN1Oxs2xQ@mail.gmail.com> <CAKwvOdn065OJpow=7VF=ujagFoyN4sYMKAA_E2_39ZC7uThchg@mail.gmail.com>
In-Reply-To: <CAKwvOdn065OJpow=7VF=ujagFoyN4sYMKAA_E2_39ZC7uThchg@mail.gmail.com>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Wed, 21 Jul 2021 13:53:45 +0900
X-Gmail-Original-Message-ID: <CAK7LNAQUSHmD=D6e1NrkZ+oUPV23wX8rHd8wEmQJJ4LW3bNW5w@mail.gmail.com>
Message-ID: <CAK7LNAQUSHmD=D6e1NrkZ+oUPV23wX8rHd8wEmQJJ4LW3bNW5w@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] Makefile: infer CROSS_COMPILE from SRCARCH for
 LLVM=1 LLVM_IAS=1
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Linus Torvalds <torvalds@linux-foundation.org>,
        Miguel Ojeda <ojeda@kernel.org>, Fangrui Song <maskray@google.com>,
        Michal Marek <michal.lkml@markovi.net>,
        Arnd Bergmann <arnd@kernel.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        Geert Uytterhoeven <geert@linux-m68k.org>,
        Christoph Hellwig <hch@infradead.org>,
        Nathan Chancellor <nathan@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=bTGxYgJV;       spf=softfail
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

On Wed, Jul 21, 2021 at 5:52 AM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> On Tue, Jul 20, 2021 at 10:43 AM Linus Torvalds
> <torvalds@linux-foundation.org> wrote:
> >
> > On Tue, Jul 20, 2021 at 1:05 AM Masahiro Yamada <masahiroy@kernel.org> wrote:
> > >
> > > LLVM=1 is a convenient switch to change all the
> > > defaults, but yet you can flip each tool individually.
> >
> > Actually, I'd argue that "LLVM=1" is *not* a convenient switch.
>
> Compared to the old way of CC=clang LD=ld.lld OBJCOPY=.... it certainly is.
>
> > Neither are the individual other command line settings.
>
> Agreed, but we needed flexibility until we could get all of the
> command line tools working for each architecture.  They're still
> useful when there's a regression and we need to fall back.  So I
> wouldn't be in favor of removing them (not that that's been proposed).
>
> > When clang was the odd man out, and special, it all made sense.
> > Changing the path to CC was similar to changing the path to AWK. And
> > that's obviously why we have what we have.
> >
> > But clang has become a primary compiler for some kernel communities,
> > and I think it might be time to just re-visit that entirely.
>
> :^)
>
> > In particular, I think we should just make it a Kconfig option. I hate
> > the command flag stuff so much, that my clang tree literally has this
> > patch in it:
> >
> >     -CC = $(CROSS_COMPILE)gcc
> >     +CC = $(CROSS_COMPILE)clang
> >
> > so that I can just do the same "make -j128" in both my gcc tree and my
> > clang tree.
>
> So you haven't been using LLD... :( (imagine using more than one
> thread to link, and being faster than ld.gold)  If anything you should
> be hard coding LLVM=1 in that tree.  Also, please be careful you don't
> accidentally commit that! 0:-)
>
> > But each build tree already has its own .config file, so it would be a
> > lot more convenient if that was how the compiler was chosen, and then
> > "make oldconfig" would just DTRT.
> >
> > We do most of the other heavy lifting in this area in Kconfig anyway,
> > why not add that compiler choice?
> >
> > Obviously it would be gated by the tests to see which compilers are
> > _installed_ (and that they are valid versions), so that it doesn't ask
> > stupid things ("do you want gcc or clang" when only one of them is
> > installed and/or viable).
> >
> > Hmm? So then any "LLVM=1" thing would be about the "make config"
> > stage, not the actual build stage.
> >
> > (It has annoyed me for years that if you want to cross-compile, you
> > first have to do "make ARCH=xyz config" and then remember to do "make
> > ARCH=xyz" for the build too, but I cross-compile so seldom that I've
> > never really cared).
> >
> > Let the flame wars^H^Hpolite discussions ensue..
>
> I agree with you.  Overall the command line invocation of make when
> cross compiling, or when using LLVM is too long.  You even call out
> LLVM=1 and ARCH separately.  Each one of these had good reasons to
> exist for years.
>
> But I disagree that all needs to be sorted out together, or right now.
> And I'd much rather tackle them separately, one by one, than try to
> completely rewrite how we cross compile the kernel today.
>
> Right now, we have:
> $ ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- make LLVM=1 LLVM_IAS=1 -j72
>
> This series is concerned with just CROSS_COMPILE (and just for LLVM=1).
> Next I plan to default on LLVM_IAS=1 for all architectures we support,
> minus ppc and s390 where we still have some assembler bugs.
> Your/Arnd's ideas about LLVM=1 or not via Kconfig, or pre-Kconfig is a
> good idea for eliminating LLVM=1.


I also like to make the integrated assembler our default.

We can add LLVM_DISABLE_IAS=1 to
replace LLVM_IAS=1.







> Then that just leaves ARCH.
> Arnd's idea about helping you install a toolchain from kernel.org is
> one I support, but orthogonal to the above somewhat.  Do you allow
> someone to have a config that denotes intent to build with clang then
> prompt if they don't have clang installed to download it? Or do you
> prevent someone from selecting building with clang because it's not in
> the $PATH?
> Your/Arnd's idea about detecting which toolchains are installed is one
> I support, but orthogonal to the above somewhat.  (For that, I'm
> curious for our build servers if that means having to put tools in
> certain locations; I prefer we reference $PATH when possible. Or if
> .configs can no longer be shared if tools are in different locations.
> But perhaps that's a non-issue).  I'm also curious how many stat calls
> we'll need to test/probe/find these, and how we prioritize which tools
> are selected when there's more than one version installed.
>
> I encourage us to make steps in the right direction; but I think this
> series is ready to go for at least one of the command line variables.
> I don't think we need to wait for some probing machinery to eliminate
> CROSS_COMPILE when LLVM=1; and if we ever get such machinery we can
> revisit whether that helps this case at all.
> --
> Thanks,
> ~Nick Desaulniers



-- 
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNAQUSHmD%3DD6e1NrkZ%2BoUPV23wX8rHd8wEmQJJ4LW3bNW5w%40mail.gmail.com.
