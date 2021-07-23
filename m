Return-Path: <clang-built-linux+bncBCQJP74GSUDRB3V45SDQMGQE3WWGDQA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa37.google.com (mail-vk1-xa37.google.com [IPv6:2607:f8b0:4864:20::a37])
	by mail.lfdr.de (Postfix) with ESMTPS id 457803D4129
	for <lists+clang-built-linux@lfdr.de>; Fri, 23 Jul 2021 21:54:24 +0200 (CEST)
Received: by mail-vk1-xa37.google.com with SMTP id e11-20020ac5c98b0000b029025d809b26dbsf256759vkm.16
        for <lists+clang-built-linux@lfdr.de>; Fri, 23 Jul 2021 12:54:24 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627070063; cv=pass;
        d=google.com; s=arc-20160816;
        b=w3IwlsPv2JtHTveTyVWBH1rNZlJc2ujzqi0Rl0xPfMGDVN4tKDPmP5RgRU9RkO/mNc
         PGh/+9iCXFWcmKJUgq35XbIBLzNJ6/Ol8Kgyg0GdMzV5WSx3SZIuH/9WF5IuMky5vDDM
         XAtoa399Fx3EK6CX9kNEBUfdTKT9gQtsI/d6oSuPXF4Pln3O/msoTM0nejJ/lWPk7Zms
         /dQZez/OPdSEDoTALk86oN9WOL+TZ1GC679NHXG9xKfgEUGrR//qC/kgX5g/Dz4Y9jHE
         BTB3OMTmS6pL7AgoEySDT7ugphJqJaPlJDPGuf1xT8Ces14j29cpSxE2btALx36x4kKz
         TYuQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=1NOmJavfyCcXyXKiLr+om9WtHB/6TrzKSoTBoyiLk80=;
        b=iHCDmh72A/gqqBWOfCXtiu+Yh0qp+zmRN1+9u/8q6u5lrfAjGkDTgtjVidsng8XriQ
         3MSamqI9hG1K9ykeA3vItzDwV0X1gsdaVFkFEypIR8eiDgqnbbUdDDG/bt2TC7dBXYQY
         MD7BAx8hqLH2mBN0r/mIS7CNq8th1jN4g8g8AETrHtEUdRLgj2OggwkUk+Pwk4Jrnjzu
         prqCmJ14cZbNfgwpaSghKJ413vFAwwumaR9naDQEWvvuNIQNb7Wsi05u2pH2Gm7UEuZ5
         VEuyBxxvsmUHsI3NAKv6KglFY281dH7I1LGq/zIzaZ9ntu7PsnXu0T29AAH1TVcGa1Iv
         h6jQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of geert.uytterhoeven@gmail.com designates 209.85.221.170 as permitted sender) smtp.mailfrom=geert.uytterhoeven@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1NOmJavfyCcXyXKiLr+om9WtHB/6TrzKSoTBoyiLk80=;
        b=L+2DOQa4wlRotMyHnfs9IOM2t6Bvy2vHXFx0FKQkkJXeFvqAEOQAz5SuQtHN9DNUBU
         a+5eytUqem8tnLq37508ei6qBPzQ1YIuWFCoTUPRS7MUsKHcrgdtPIhUTXsmU/v8mvtl
         1PXdqcFFQ1lX4ANR+H7fuo+ey1RZkih7YNFE0s9exeIYo3lfK74Hx3Rcfo84Jbk5ilR3
         tv9WYItOFmc1AGDCzeAuOQ8DTuq0xrX5WbeojA6nVs2bMF9U2oAgjYcWnZAuO2MJ/oil
         PHZxeo+t2lUdQsa89oB5S+tfY32LrBi+kd/FWys4RJl+TMDMfEUtM62Ny2CNrgEx/fi3
         JfWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1NOmJavfyCcXyXKiLr+om9WtHB/6TrzKSoTBoyiLk80=;
        b=PrvSaLGF9vZk/ARR9ZQXvC2p7tdHH0eCw8R4VPKHd4Z1CD3z0kkP+gZ57HTV0B0jrE
         KrjG5ch0GABFE07RY4yj8BpCP+a50OxTxMRDLUmZXtW2sIMa7TZkA8RaXqueIV9QYN2W
         HUyrZrMbJ3gPOEgfbkhwqA44/RLMBymQG+A71gejtHCbPc8wP41wICsJcYWbcnYu210u
         NPXVqA+/S/+ke6an+CGYA11jW4+BfBa6hgMRKhK8FfptThINHsbmRIh6rZYTm4OjJu8M
         6sjk87WqNdi/AKm0YBbpb6NcyVbzJvbYwfLKU+OUrjeNlwK0RlAAdOzfoSj3VUjbN20m
         uESg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532WQTkyyW7/cW0ApPhI9/CXk3Xg65bgUXrFQyr3ZMweLQh548U4
	Uqt4p54YI1gDJ+zrH/NBtM0=
X-Google-Smtp-Source: ABdhPJzSr6ak2uFj9of0dYwmZv/jKOC3H/jT2Nkki5Vbu4wDmkwoe6FmGbXDzHaWjyR8o4Y6+Y4s4A==
X-Received: by 2002:a05:6102:212e:: with SMTP id f14mr6582226vsg.17.1627070063015;
        Fri, 23 Jul 2021 12:54:23 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac5:cb59:: with SMTP id s25ls945702vkl.6.gmail; Fri, 23 Jul
 2021 12:54:22 -0700 (PDT)
X-Received: by 2002:a1f:a7ce:: with SMTP id q197mr5316326vke.3.1627070062489;
        Fri, 23 Jul 2021 12:54:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627070062; cv=none;
        d=google.com; s=arc-20160816;
        b=OF/R2kIkQxwBmCUrxRhEWwZovg0+YfqZ/eI6JUud/Byn+u47l/8R+zU+tNHFav32k3
         OBK5c8L+1tegbLC975EhLQyEeasRVko7U5tUSfHwBBrKmDYUFa0F51XHw7FnwOco7MGW
         YecKQTfdRIMGfnIzpNJJ4zowSTGTZ3RW+fEfER1j9vjuJEPoZHvP/j188sEVyXL4j/K6
         1crMWkVnlJQ32koOqOgWmuyicMePjdoqz3/M2VNgZPuGavErX06TIWsXHXwYmUKsMDVl
         BsLejIGL5jd6w8U/TtoyMVFIKtGE0yS38IR96Rzh0QgBORuAwdHoWlwnej72D3LS1NEl
         riFA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version;
        bh=WCrKf5Iw2o5+shGh2ncn5iHfAc+hQCz5PyiUxBmUVl8=;
        b=dWUIib4O6Hu41tWk81/agU0ieEtlVU4nn+EsVBC5H+mZD6jUgbRt1Bz6lIKmwmrnse
         oT0KzSOCo0CDKfwN8ahWQpEj9ZflayN4+yqa9xokTKlr18DnbTs+vQGAqoLl2oHOJUDy
         f7qu7njcw8OorsWxWcFg1ic2xWWQV9XFielRZs0Bp40oppfamJHtnwm6WOAmwu5UOPwz
         CYYieXLVDepbnohqPPCSy/yI9kQd3+i+qI/Ndo/EmnFmj4+woEi4fivfbNXhbWSM6gKr
         dDyDdxH+nC3l2o6yh4SuFk39TD1cOMK6W3VIGC9JGKnaxIgyaISOtIE+F/TfQkeJRQjY
         /DfA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of geert.uytterhoeven@gmail.com designates 209.85.221.170 as permitted sender) smtp.mailfrom=geert.uytterhoeven@gmail.com
Received: from mail-vk1-f170.google.com (mail-vk1-f170.google.com. [209.85.221.170])
        by gmr-mx.google.com with ESMTPS id p66si2593680vkg.1.2021.07.23.12.54.22
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 23 Jul 2021 12:54:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of geert.uytterhoeven@gmail.com designates 209.85.221.170 as permitted sender) client-ip=209.85.221.170;
Received: by mail-vk1-f170.google.com with SMTP id k124so633000vke.5
        for <clang-built-linux@googlegroups.com>; Fri, 23 Jul 2021 12:54:22 -0700 (PDT)
X-Received: by 2002:a05:6122:a12:: with SMTP id 18mr5316680vkn.1.1627070062009;
 Fri, 23 Jul 2021 12:54:22 -0700 (PDT)
MIME-Version: 1.0
References: <20210708232522.3118208-1-ndesaulniers@google.com>
 <20210708232522.3118208-3-ndesaulniers@google.com> <CAK7LNARye5Opc0AdXpn+DHB7hTaphoRSCUWxJgXu+sjuNjWUCg@mail.gmail.com>
 <CAHk-=wgGxu4_hgzdYpFuKd95SfnkJbPTWAQ9-fMgmMN1Oxs2xQ@mail.gmail.com>
 <CAK8P3a3=JBQow-Ws6tt81k93aw+OCV5C2CtSWxASkv=iQZPGUw@mail.gmail.com> <CAK7LNATLy2F-2zkHm4ENSufBT_o5p=9jc5k1K-xOV8cQf7kKDw@mail.gmail.com>
In-Reply-To: <CAK7LNATLy2F-2zkHm4ENSufBT_o5p=9jc5k1K-xOV8cQf7kKDw@mail.gmail.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Fri, 23 Jul 2021 21:54:10 +0200
Message-ID: <CAMuHMdXJBqrpzaSNDJgic14ESiHV6cCcb_5E-st6iniXdmm9_g@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] Makefile: infer CROSS_COMPILE from SRCARCH for
 LLVM=1 LLVM_IAS=1
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: Arnd Bergmann <arnd@kernel.org>, Linus Torvalds <torvalds@linux-foundation.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, Miguel Ojeda <ojeda@kernel.org>, 
	Fangrui Song <maskray@google.com>, Michal Marek <michal.lkml@markovi.net>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Christoph Hellwig <hch@infradead.org>, 
	Nathan Chancellor <nathan@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: geert@linux-m68k.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of geert.uytterhoeven@gmail.com designates 209.85.221.170
 as permitted sender) smtp.mailfrom=geert.uytterhoeven@gmail.com
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

Hi Yamada-san,

On Wed, Jul 21, 2021 at 6:05 AM Masahiro Yamada <masahiroy@kernel.org> wrote:
> On Wed, Jul 21, 2021 at 4:58 AM Arnd Bergmann <arnd@kernel.org> wrote:
> > On Tue, Jul 20, 2021 at 7:43 PM Linus Torvalds
> > <torvalds@linux-foundation.org> wrote:
> > > On Tue, Jul 20, 2021 at 1:05 AM Masahiro Yamada <masahiroy@kernel.org> wrote:
> > >
> > > We do most of the other heavy lifting in this area in Kconfig anyway,
> > > why not add that compiler choice?
> > >
> > > Obviously it would be gated by the tests to see which compilers are
> > > _installed_ (and that they are valid versions), so that it doesn't ask
> > > stupid things ("do you want gcc or clang" when only one of them is
> > > installed and/or viable).
> >
> > I don't see a good way of making Kconfig options both select the
> > compiler and defining variables based on the compiler, since that
> > would mean teaching Kconfig about re-evaluating all compiler
> > dependent settings whenever the first option changes.
> >
> > I do have another idea that I think would work though.
> >
> > > Hmm? So then any "LLVM=1" thing would be about the "make config"
> > > stage, not the actual build stage.
> > >
> > > (It has annoyed me for years that if you want to cross-compile, you
> > > first have to do "make ARCH=xyz config" and then remember to do "make
> > > ARCH=xyz" for the build too, but I cross-compile so seldom that I've
> > > never really cared).
> >
> > The best thing that I have come up with is a pre-configure step, where
> > an object tree gets seeded with a makefile fragment that gets included
> > for any 'make' invocation. This would set 'ARCH=', 'CROSS_COMPILE',
> > 'CC=' and possibly any other option that gets passed to 'make' as
> > a variable and has to exist before calling 'make *config'.
>
>
> There is no need to add a hook to include such makefile fragment(s).
>
> Quite opposite, you can put your Makefile (in a different filename)
> that includes the top Makefile.
>
>
> I think this is what people are already doing:
>
>
> GNU Make looks for 'GNUmakefile', 'makefile', and 'Makefile'
> in this order.

Exactly. I only have a few source repositories, but lots of build directories
(I never build in a repo directory). Each build directory has a GNUmakefile:

    build/linux-riscv-starlight$ cat GNUmakefile
    MAKEARGS = ARCH=riscv CROSS_COMPILE=riscv64-linux-gnu-

    include ~/linux/default.mk
    build/linux-riscv-starlight$ cat ~/linux/default.mk
    MAKEFLAGS += --no-print-directory

    .PHONY: all $(MAKECMDGOALS)

    all := $(filter-out all Makefile,$(MAKECMDGOALS))

    all:
            @$(MAKE) $(MAKEARGS) $(all) -f Makefile

    Makefile:;

    $(all): all
            @:

    %/: all
            @:
    build/linux-riscv-starlight$

Perhaps we could have a "make setup ARCH=foo CROSS_COMPILE=bar" target,
which creates such a GNUmakefile?

P.S. I put the extra logic in ~/linux/default.mk, so I don't have to update all
     GNUmakefiles when I want to make a change to the main logic.

     For build dirs where I want to track a specific config, I have a slightly
     different version:

         build/linux-m68k-allmodconfig-sun3$ cat GNUmakefile
         MAKEARGS = ARCH=m68k KCONFIG_ALLCONFIG=1
         DEFCONFIG = allmodconfig

         include ~/linux/override-oldconfig.mk
         build/linux-m68k-allmodconfig-sun3$ cat ~/linux/override-oldconfig.mk
         MAKEFLAGS += --no-print-directory

         .PHONY: all oldconfig realoldconfig $(MAKECMDGOALS)

         all := $(filter-out all oldconfig realoldconfig
Makefile,$(MAKECMDGOALS))

         all:
                 @$(MAKE) $(MAKEARGS) $(all) -f Makefile

         # Replace oldconfig by $(DEFCONFIG)
         oldconfig:
                 @$(MAKE) $(MAKEARGS) $(DEFCONFIG) -f Makefile

         realoldconfig:
                 @$(MAKE) $(MAKEARGS) oldconfig -f Makefile

         Makefile:;

         $(all): all
                 @:

         %/: all
                 @:
         build/linux-m68k-allmodconfig-sun3$

     That way I can always just type "make oldconfig", and it will do what
     I want.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAMuHMdXJBqrpzaSNDJgic14ESiHV6cCcb_5E-st6iniXdmm9_g%40mail.gmail.com.
