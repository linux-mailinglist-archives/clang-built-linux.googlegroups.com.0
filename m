Return-Path: <clang-built-linux+bncBDT2NE7U5UFRB46G32DQMGQEYVHTSIY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3d.google.com (mail-yb1-xb3d.google.com [IPv6:2607:f8b0:4864:20::b3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 71D9A3D07C8
	for <lists+clang-built-linux@lfdr.de>; Wed, 21 Jul 2021 06:32:52 +0200 (CEST)
Received: by mail-yb1-xb3d.google.com with SMTP id p63-20020a25d8420000b029055bc6fd5e5bsf1679468ybg.9
        for <lists+clang-built-linux@lfdr.de>; Tue, 20 Jul 2021 21:32:52 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1626841971; cv=pass;
        d=google.com; s=arc-20160816;
        b=DRgxe5os3nkcu5Lj8aGiQ0L++OSrhl/CgrAAfNtR4MNrDXMfBF8aOd4n/FnlhTHccx
         C8JSBNgSoeIjb2r2qfz34sLcc5z8NnDpbSxIt2An1c73R7lxkIMcW+u+hKxaOZ3+SUVZ
         sHxDpTqTyX6OHfUaC0rlGH9gSt0k9FrhR3dy+I7VcM4977TGu8XvqBdsZZPZwOhJsUsQ
         M2s3Iw3FBSoI9QbvtxUx8FdlmnRpTYJ7AIwP8giTvD+or2A0WeLvq4sEzp+7ElW+nmLX
         vqWEK7hZ1TSgSLC5PBZpn3ldZ9FSPDloAe65Y8oEtH5pr64uGrJ7+0ZwFpsLOWx7aG/+
         KL7Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=szW7Wi0xrOy9ye+7qIVdZc1ECxWPq+P3eqMUniMF2DA=;
        b=OG7GARvjdDZ5XaNvuQFXpH9E9UfvBGHCh3WNRs6+UStzz7iVxvf2KzCn1/e/ZZ+Eih
         Ohrt0u/PeenajvpWAN5U00824VWmRSwcI21wxSgFnK49D700ofYtdtLs3J8I1TcTzNpL
         /v+hqPIqYcqZqVvN0YFWFzbGi22xbp6D6rln6gbr3hX5CoxPhjPZXhzQhd1ak6f5dVm+
         DXOX3id5RaZoFuf5wfhrEH53zgJ8L5FKLcGXBlGW5oFjpETCpHC1IAuF0KzZTuUbJAtj
         245k3cdMKAG7Z+b2qb0WNtu8spfANvcW25A0ZsB59xwR/qjcyEURUZFOp4mZW9GBduoC
         fVsw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=wt6NiRdv;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.91 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=szW7Wi0xrOy9ye+7qIVdZc1ECxWPq+P3eqMUniMF2DA=;
        b=Ez8ioOBg4QG9CKtCFo7tFcSwebpNbpMlK5mk4bJpM0mdoADSWCbmwVMLyxH4OOwDZf
         DGZVzH6RPWm0GprtIw2nN+EnPfXk1fEpmld/Iz++Lsbmv0xvUoZhW6uZZKX8tyg8ZnUj
         tMeunK/73KaLhk1GLcorin+rQEKTfYfwbv5yXk8m6hU3hTQ2ISWkPv1n4AfH4LXiXCKG
         Jr6QsEELIwZ0TUo58QDkLeOYq1EYey+rxEQ3tD2xUoYxGFDMoP6V27Y8NoCA3LKaPpqq
         oeZ6I6womVvlSJwcXAs6sQWMFTHoy1J26nr/iAIDm6o8G2YJMvKmJ0xgYQZaotRbdwL8
         p9Qg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=szW7Wi0xrOy9ye+7qIVdZc1ECxWPq+P3eqMUniMF2DA=;
        b=sHDxTJRpmD2rviXhOcQ37yhVINgtlsRJgO9TOmuhAEPnXvjT11X8zObCANfUEe/OaN
         SNvs05upuSFQfHrUgRdXygDVXulmMTXMxijzHZ+5FKZ9n9wTtegJqcrOuepAYQjEwqw7
         HkHs6ujqljm9EtgkiDDshUy2dkqsC7AMDXuYyb0i8qn/AA+r6RHB6DvJlI6ocm8+OUFe
         TI46zTEIZNJ5qnBJYhnB29KtOt5gMARuReo/5MK3yVbci0xjQT8ZPgrSj6AZRljNSmXT
         Rg3i1yDNhY4881CORASwQ8A3T7LvM/npbP4PiXATfweDeMCYwCZQuI/JTrM54X0rzASK
         YcRg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531nGnZ39MM8muAJMUMFInKVJGanmwkuB4IWsnrioFU932bdA0iX
	88MJs3y49HdWWbutNpCJAe0=
X-Google-Smtp-Source: ABdhPJzRvoZIqXgvMWC4MgNMvK1MUDe9r31uxjrwweTiswC4PLSFoIP97v1ZlwECAiMtoh4vfvSiNg==
X-Received: by 2002:a25:b84e:: with SMTP id b14mr30331405ybm.237.1626841971385;
        Tue, 20 Jul 2021 21:32:51 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:d1d7:: with SMTP id i206ls603611ybg.6.gmail; Tue, 20 Jul
 2021 21:32:50 -0700 (PDT)
X-Received: by 2002:a25:2783:: with SMTP id n125mr5225826ybn.99.1626841970708;
        Tue, 20 Jul 2021 21:32:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1626841970; cv=none;
        d=google.com; s=arc-20160816;
        b=guSVTC27u0vXU9v8NzepkOHvWF3A4pAQCiKG6tCFmW2O3yGEfHZuzzZwJPcY7c+OX5
         N+ZqvxqaDN+vLoGUl+aB8iR1k+xaNke89hgW8Mst59XKnyA3HbUpgQc5KArvo5l9Hlxt
         IWOzD1BosUTcwn0Puw9dI889RbcwW3C/XshUL57YESjZx7fwAjarRbEQXS/mdVm0AOwn
         asUvO3xl2IgYtUNZu9i9034EobyhpPKUoFjb/qStlCr54NxQZARHpo9NHi06MNrURrEb
         uGN+1Qh0DUk8E+QhI21KCL3XdNI0N5/95m1eo2gCQPzdk2udZ6xyrU2ti04Cx7IGXihJ
         p39g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=J9oYDcYqoBIO5hSk3r1VYqQb2xyH8Fh1EI0OV1fPJMA=;
        b=JZHQcipgzq2bPP6RmPsJ/1BWAxw/8Amf0HwHTUcaFkPfwPAx9AK79wjB+b5WIJRyzZ
         5DYmM2XhU7c3cX1p+7cZr1EXYZpRPQsX0drDu/E4NF/rc2e9df52HX6r5KNy8SBL3IQA
         lWS9GPZJdqVLtoXrHeYsv3L7BTY4rIAfRIlT7A9w3japrUufcB8XVxOGknCliLhEHI9t
         jWh63XMopMoOdzvmHQLAyiyqOvwmKmdZ/2owrCjazx1wBUXX7hjv5jerHV5gC1W8rMsG
         UkqV+gpoLPfe9HfrKY25o+1WcZx/qCMnoDHyg5cjZKZhzQlo1s3QUbX0s/mUil3QZ8fZ
         gAHA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=wt6NiRdv;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.91 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conssluserg-06.nifty.com (conssluserg-06.nifty.com. [210.131.2.91])
        by gmr-mx.google.com with ESMTPS id t3si1586053ybu.3.2021.07.20.21.32.50
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 20 Jul 2021 21:32:50 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.91 as permitted sender) client-ip=210.131.2.91;
Received: from mail-pj1-f50.google.com (mail-pj1-f50.google.com [209.85.216.50]) (authenticated)
	by conssluserg-06.nifty.com with ESMTP id 16L4WRHk013669
	for <clang-built-linux@googlegroups.com>; Wed, 21 Jul 2021 13:32:27 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-06.nifty.com 16L4WRHk013669
X-Nifty-SrcIP: [209.85.216.50]
Received: by mail-pj1-f50.google.com with SMTP id p14-20020a17090ad30eb02901731c776526so3256587pju.4
        for <clang-built-linux@googlegroups.com>; Tue, 20 Jul 2021 21:32:27 -0700 (PDT)
X-Received: by 2002:a17:90a:c506:: with SMTP id k6mr1870574pjt.198.1626841946977;
 Tue, 20 Jul 2021 21:32:26 -0700 (PDT)
MIME-Version: 1.0
References: <20210708232522.3118208-1-ndesaulniers@google.com>
 <20210708232522.3118208-3-ndesaulniers@google.com> <CAK7LNARye5Opc0AdXpn+DHB7hTaphoRSCUWxJgXu+sjuNjWUCg@mail.gmail.com>
 <CAHk-=wgGxu4_hgzdYpFuKd95SfnkJbPTWAQ9-fMgmMN1Oxs2xQ@mail.gmail.com>
In-Reply-To: <CAHk-=wgGxu4_hgzdYpFuKd95SfnkJbPTWAQ9-fMgmMN1Oxs2xQ@mail.gmail.com>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Wed, 21 Jul 2021 13:31:49 +0900
X-Gmail-Original-Message-ID: <CAK7LNATsdF9+dpqf3OWNpi2dcrT52QcPkNog5reGewbwo8rGBg@mail.gmail.com>
Message-ID: <CAK7LNATsdF9+dpqf3OWNpi2dcrT52QcPkNog5reGewbwo8rGBg@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] Makefile: infer CROSS_COMPILE from SRCARCH for
 LLVM=1 LLVM_IAS=1
To: Linus Torvalds <torvalds@linux-foundation.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
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
 header.i=@nifty.com header.s=dec2015msa header.b=wt6NiRdv;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.91 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
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

On Wed, Jul 21, 2021 at 2:43 AM Linus Torvalds
<torvalds@linux-foundation.org> wrote:
>
> On Tue, Jul 20, 2021 at 1:05 AM Masahiro Yamada <masahiroy@kernel.org> wrote:
> >
> > LLVM=1 is a convenient switch to change all the
> > defaults, but yet you can flip each tool individually.
>
> Actually, I'd argue that "LLVM=1" is *not* a convenient switch.
> Neither are the individual other command line settings.
>
> When clang was the odd man out, and special, it all made sense.
> Changing the path to CC was similar to changing the path to AWK. And
> that's obviously why we have what we have.
>
> But clang has become a primary compiler for some kernel communities,
> and I think it might be time to just re-visit that entirely.
>
> In particular, I think we should just make it a Kconfig option. I hate
> the command flag stuff so much, that my clang tree literally has this
> patch in it:
>
>     -CC = $(CROSS_COMPILE)gcc
>     +CC = $(CROSS_COMPILE)clang
>
> so that I can just do the same "make -j128" in both my gcc tree and my
> clang tree.
>
> But each build tree already has its own .config file, so it would be a
> lot more convenient if that was how the compiler was chosen, and then
> "make oldconfig" would just DTRT.
>
> We do most of the other heavy lifting in this area in Kconfig anyway,
> why not add that compiler choice?


This does not work in the current design.

When we moved compiler tests to Kconfig from Makefile at v4.18,
I discussed a lot about the implementation.
Especially 'static' vs 'dynamic'.
(mostly Ulf Magnusson actively gave me feed backs)


static model
    Kconfig is given with a fixed set of toolchains.
    All macros such as cc-option are expanded in the early parse stage
    before proceeding to the configuration stage.


dynamic  model
   Every time a user toggles a CONFIG option, it feeds back to
   cc-option because CONFIG options (such as CONFIG_64BIT)
   might affect cc-option. In this model, CONFIG_CROSS_COMPILE
   works well.




Of course, the dynamic model is much more complex,
and I could not find a sane syntax to achieve it.

So, I implemented the static model; in this model,
$(cc-option ) are all constant values.

So, you cannot do:


  choice
         prompt "Compiler suite"

  config GCC
          "GCC and GNU binutils"

   config LLVM
           "LLVM (clang and llvm tools)"

  endchoice



To achieve this, we need the dynamic model.

Every time a user switches between CONFIG_GCC and CONFIG_LLVM,
all the cc-options must be re-evaluated.
This does not work in the current implementation.






BTW, keeping the command line interface
such as CROSS_COMPILE=...  CC=... LD=...
is useful when the kernel is built from umbrella
projects such as Buildroot, OpenEmbedded, etc.

Such projects build compilers by themselves,
and feed the exact compiler paths to the kernel.

Too long command line is an annoyance when
we build the kernel manually.












>
> Obviously it would be gated by the tests to see which compilers are
> _installed_ (and that they are valid versions), so that it doesn't ask
> stupid things ("do you want gcc or clang" when only one of them is
> installed and/or viable).
>
> Hmm? So then any "LLVM=1" thing would be about the "make config"
> stage, not the actual build stage.
>
> (It has annoyed me for years that if you want to cross-compile, you
> first have to do "make ARCH=xyz config" and then remember to do "make
> ARCH=xyz" for the build too, but I cross-compile so seldom that I've
> never really cared).
>
> Let the flame wars^H^Hpolite discussions ensue..
>
>                         Linus

--
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNATsdF9%2Bdpqf3OWNpi2dcrT52QcPkNog5reGewbwo8rGBg%40mail.gmail.com.
