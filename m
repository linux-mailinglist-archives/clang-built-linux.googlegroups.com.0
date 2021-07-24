Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBXNT6CDQMGQEJJLQDZY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3c.google.com (mail-io1-xd3c.google.com [IPv6:2607:f8b0:4864:20::d3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F2833D47F2
	for <lists+clang-built-linux@lfdr.de>; Sat, 24 Jul 2021 15:47:11 +0200 (CEST)
Received: by mail-io1-xd3c.google.com with SMTP id z21-20020a5d84d50000b02904e00bb129f0sf4003901ior.18
        for <lists+clang-built-linux@lfdr.de>; Sat, 24 Jul 2021 06:47:11 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627134430; cv=pass;
        d=google.com; s=arc-20160816;
        b=n2V09qh69waEeUoJIPWVL0jv/srB38WJsN9cbBUeePcGtzNlY4k2BIEEYmsfBVbG68
         L9UpRhHQBTA5CkNN6MIm17P8BEZRXSsNf6NrbPgXgEHtGh02O2hkwhWzuPe5KObHNYoF
         UivyTrHvJQ0Tgm6CF1X9ca3PSgcJ06A7gu7QtNIWiA8EX/ckyt91Xtqgyh+yOg6ROkzp
         ZS9PcqcVHwQD7pG5dUqhwjNz63e0QTi6GA0nWTA5Xp/JXr4wSwTyW1Nw209HE6vGSu6P
         Atn0Kq9Bl/7kVFtqhOy2lppvpzNwNP7cZuT0mWpgg999eqGzCfBZpue+pqM34nyF3tWH
         tqmA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=c6WTzX6+2d0bmICucFZsjgpSc98/7qCCjkpDA8ycm60=;
        b=LHWm5fe4RWRfBHk7MTvzFoZoUOySk6Wu2cw6KcH/ZY6hystJbRI39ns5GT36cM7WX/
         yr3LrHNs3HQN3c+9NMzI9Aw59qQe1lFvVtTgVYZyUB+MZ7K25M8EzMQ4dRJjjG/ikXD4
         fkFyFsjHfmpMP1VxB3fFI/kT1N+IkJ6AxNmMqSoiWB+geqQ4J7kcKpwFGTeEETscKb7G
         i8uZEII7JZiBNBquauh/9njk9ODqxYc0mm6tiTlXuoW5csmAarIFZBB3ImRD2lm2G+1b
         vfobljKmriOASmgOiLMBjHfk45GiCO6MXg4FXxa9HKx4yFfLsSEXbHE+6DrflFvSAnD/
         ofNQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=EbqaBoyO;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.80 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=c6WTzX6+2d0bmICucFZsjgpSc98/7qCCjkpDA8ycm60=;
        b=mSmaKjeMc5ZKYZblFeTlFiA2xDwXmnFxB3Ic0CgCyOHMT5ISeokABVq8yduFYlKF5E
         jaSJwXpYYrEX/JXQhh0tstZmmnQDEOdP+5aAUT+UGs3MBfi8cNq0h1Ne5BG5JLJ6GGFd
         SABuc2F1NwHHtgJKHJy9TkF3Kictu/UR8wCJhPX1JDemNn/I+HLGhfbaBD358GUPMz/n
         T1xNgCggJB6AMGVellKKO5MwnRa72iiB3M4ASKu+3nHa+fYpF4bV+KNLWJB2v8MfA8yg
         Cxg9x4n5m2FiEi2RLGP5T8knGA1U5jwCG0pf/n864NH3kXngI8qArV1iXqMp5J320DY/
         IxJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=c6WTzX6+2d0bmICucFZsjgpSc98/7qCCjkpDA8ycm60=;
        b=N0myRZ83DyqNLZ/fOUMP9oV7raql/pF3QxtFGBJjHqeHYNofPGdeD9QXMB4TPS9tVZ
         McvzVoVTvzMDEbmgQ6HMD4kIoJzPGZZT1Tgmr+1HqCqk7toVq7NHEAjnAOgEykAeZ8ZP
         YK9enIRqDkTYz/NqJCr2V5kqelvSp20hLC/zdbrpq6jWQZm4X564frAnYzhwPP4oGmWy
         nBwaEsLIJoS1JQjrl74N5Rc1djjvpSLTrf/K/mJVHPpAp0YJkyyrG7MTObt7khrGRvkQ
         EZyjUNXNi/kAqZPayZVCS/E9OROpF2NDjIU/3NJg2mr5zRK2YMOafittSqQptaSx8RSc
         UB3g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530hJv/9W9Qq90QWC++rq6wIHeCzR783Wk9loJX99vPTpZVB8sLs
	KqVoma5VOKb/IXsobnkk6Jw=
X-Google-Smtp-Source: ABdhPJzJtq6UGHmaB2Z8/qtHecpnH471Lt+bKVDVUPyB09ikJ2/7EnAowmtj0ZhaFte42waub10KSQ==
X-Received: by 2002:a02:a913:: with SMTP id n19mr8656335jam.7.1627134429849;
        Sat, 24 Jul 2021 06:47:09 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6638:141:: with SMTP id y1ls2180750jao.2.gmail; Sat, 24
 Jul 2021 06:47:09 -0700 (PDT)
X-Received: by 2002:a05:6638:1383:: with SMTP id w3mr8666427jad.32.1627134429363;
        Sat, 24 Jul 2021 06:47:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627134429; cv=none;
        d=google.com; s=arc-20160816;
        b=wUzHNI9PVNC8bR8t+hEYOtR4Uuo3kve5jBB4NTXRCHNJNMglX4/xZuVaeopT71uQ8P
         FbX4xqRRyCoGHDbp2LgoVnikjE1ChC9HpTgaUDH4tppCF+wYQFnrX0J3jT2F+BItEgOp
         siJTU0nRUIcsX2Kv6JpFwrPkcXzDDXOp4zFNaK5TqMy8nJ3Ed5Gy6BTpOEACn8MuJNEy
         WWc821V5fWIjx2wVgwQWvIdvatjJ6lgmzPmMZOQpX+VJRN18d88lYXPozY/dAC9bCBZu
         P79yxo2rs+zS2R8nxB5Iy8LfLoUwBSNVKRmzCWKNFrXPJye15JdZ4Hgy81N9/l4FEyh/
         0YsA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=xIH/ltmFtWJmcRQmRg8PWr+q47o4O2EpTM1yT4rZrmI=;
        b=AmVgVJ610SBghF+ooOwapzYrcK3jcIM3t9wHVmLxSnmeUJ2I+qRbTlvCgGo9Mc3Wrj
         qAm/l/Ip9/Scc3eRz8QBeQMFRtN29+SKw/P4boamvPHMPj5/db2u/slLaWsO9ehtTQMR
         eNDy8kXTgkC4Mq4IvEXhbLM/gkwr68/reKg4IGap72J0Lg7b6OCqKqijxBLN+WTHQgvx
         NnYeHVI03CnL+Smtg/zGsJyipIA6WylrnhpzQCrl38xl78ijAudTTG7O3+buD4iQer15
         uiB+U5ZcFGMWzeeKbLVJowaPZ6zzklwNy2oqeDdhBpeNu9TuaFIZeECeTcpXNbQzd+ke
         qBiQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=EbqaBoyO;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.80 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conssluserg-01.nifty.com (conssluserg-01.nifty.com. [210.131.2.80])
        by gmr-mx.google.com with ESMTPS id k3si3070930ioq.4.2021.07.24.06.47.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 24 Jul 2021 06:47:09 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.80 as permitted sender) client-ip=210.131.2.80;
Received: from mail-pj1-f49.google.com (mail-pj1-f49.google.com [209.85.216.49]) (authenticated)
	by conssluserg-01.nifty.com with ESMTP id 16ODkfEq019342
	for <clang-built-linux@googlegroups.com>; Sat, 24 Jul 2021 22:46:41 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-01.nifty.com 16ODkfEq019342
X-Nifty-SrcIP: [209.85.216.49]
Received: by mail-pj1-f49.google.com with SMTP id a9so6228685pjw.5
        for <clang-built-linux@googlegroups.com>; Sat, 24 Jul 2021 06:46:41 -0700 (PDT)
X-Received: by 2002:a65:609a:: with SMTP id t26mr9654545pgu.175.1627134400955;
 Sat, 24 Jul 2021 06:46:40 -0700 (PDT)
MIME-Version: 1.0
References: <20210708232522.3118208-1-ndesaulniers@google.com>
 <20210708232522.3118208-3-ndesaulniers@google.com> <CAK7LNARye5Opc0AdXpn+DHB7hTaphoRSCUWxJgXu+sjuNjWUCg@mail.gmail.com>
 <CAHk-=wgGxu4_hgzdYpFuKd95SfnkJbPTWAQ9-fMgmMN1Oxs2xQ@mail.gmail.com>
 <CAK8P3a3=JBQow-Ws6tt81k93aw+OCV5C2CtSWxASkv=iQZPGUw@mail.gmail.com>
 <CAK7LNATLy2F-2zkHm4ENSufBT_o5p=9jc5k1K-xOV8cQf7kKDw@mail.gmail.com> <CAMuHMdXJBqrpzaSNDJgic14ESiHV6cCcb_5E-st6iniXdmm9_g@mail.gmail.com>
In-Reply-To: <CAMuHMdXJBqrpzaSNDJgic14ESiHV6cCcb_5E-st6iniXdmm9_g@mail.gmail.com>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Sat, 24 Jul 2021 22:46:03 +0900
X-Gmail-Original-Message-ID: <CAK7LNARrP3jAbRxOr1F+k=Ho__s1+iqCtvrn4hH7uJ_sRvkO3A@mail.gmail.com>
Message-ID: <CAK7LNARrP3jAbRxOr1F+k=Ho__s1+iqCtvrn4hH7uJ_sRvkO3A@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] Makefile: infer CROSS_COMPILE from SRCARCH for
 LLVM=1 LLVM_IAS=1
To: Geert Uytterhoeven <geert@linux-m68k.org>
Cc: Arnd Bergmann <arnd@kernel.org>,
        Linus Torvalds <torvalds@linux-foundation.org>,
        Nick Desaulniers <ndesaulniers@google.com>,
        Miguel Ojeda <ojeda@kernel.org>, Fangrui Song <maskray@google.com>,
        Michal Marek <michal.lkml@markovi.net>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        Christoph Hellwig <hch@infradead.org>,
        Nathan Chancellor <nathan@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=EbqaBoyO;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.80 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
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

On Sat, Jul 24, 2021 at 4:54 AM Geert Uytterhoeven <geert@linux-m68k.org> wrote:
>
> Hi Yamada-san,
>
> On Wed, Jul 21, 2021 at 6:05 AM Masahiro Yamada <masahiroy@kernel.org> wrote:
> > On Wed, Jul 21, 2021 at 4:58 AM Arnd Bergmann <arnd@kernel.org> wrote:
> > > On Tue, Jul 20, 2021 at 7:43 PM Linus Torvalds
> > > <torvalds@linux-foundation.org> wrote:
> > > > On Tue, Jul 20, 2021 at 1:05 AM Masahiro Yamada <masahiroy@kernel.org> wrote:
> > > >
> > > > We do most of the other heavy lifting in this area in Kconfig anyway,
> > > > why not add that compiler choice?
> > > >
> > > > Obviously it would be gated by the tests to see which compilers are
> > > > _installed_ (and that they are valid versions), so that it doesn't ask
> > > > stupid things ("do you want gcc or clang" when only one of them is
> > > > installed and/or viable).
> > >
> > > I don't see a good way of making Kconfig options both select the
> > > compiler and defining variables based on the compiler, since that
> > > would mean teaching Kconfig about re-evaluating all compiler
> > > dependent settings whenever the first option changes.
> > >
> > > I do have another idea that I think would work though.
> > >
> > > > Hmm? So then any "LLVM=1" thing would be about the "make config"
> > > > stage, not the actual build stage.
> > > >
> > > > (It has annoyed me for years that if you want to cross-compile, you
> > > > first have to do "make ARCH=xyz config" and then remember to do "make
> > > > ARCH=xyz" for the build too, but I cross-compile so seldom that I've
> > > > never really cared).
> > >
> > > The best thing that I have come up with is a pre-configure step, where
> > > an object tree gets seeded with a makefile fragment that gets included
> > > for any 'make' invocation. This would set 'ARCH=', 'CROSS_COMPILE',
> > > 'CC=' and possibly any other option that gets passed to 'make' as
> > > a variable and has to exist before calling 'make *config'.
> >
> >
> > There is no need to add a hook to include such makefile fragment(s).
> >
> > Quite opposite, you can put your Makefile (in a different filename)
> > that includes the top Makefile.
> >
> >
> > I think this is what people are already doing:
> >
> >
> > GNU Make looks for 'GNUmakefile', 'makefile', and 'Makefile'
> > in this order.
>
> Exactly. I only have a few source repositories, but lots of build directories
> (I never build in a repo directory). Each build directory has a GNUmakefile:
>
>     build/linux-riscv-starlight$ cat GNUmakefile
>     MAKEARGS = ARCH=riscv CROSS_COMPILE=riscv64-linux-gnu-
>
>     include ~/linux/default.mk
>     build/linux-riscv-starlight$ cat ~/linux/default.mk
>     MAKEFLAGS += --no-print-directory
>
>     .PHONY: all $(MAKECMDGOALS)
>
>     all := $(filter-out all Makefile,$(MAKECMDGOALS))
>
>     all:
>             @$(MAKE) $(MAKEARGS) $(all) -f Makefile
>
>     Makefile:;
>
>     $(all): all
>             @:
>
>     %/: all
>             @:
>     build/linux-riscv-starlight$
>
> Perhaps we could have a "make setup ARCH=foo CROSS_COMPILE=bar" target,
> which creates such a GNUmakefile?

No, I do not think so.

Your GNUmakefile is customized in your way.
Other people implement GNUmakefile in their own way.

Upstream is not a place to merge everybody's local tools.








> P.S. I put the extra logic in ~/linux/default.mk, so I don't have to update all
>      GNUmakefiles when I want to make a change to the main logic.
>
>      For build dirs where I want to track a specific config, I have a slightly
>      different version:
>
>          build/linux-m68k-allmodconfig-sun3$ cat GNUmakefile
>          MAKEARGS = ARCH=m68k KCONFIG_ALLCONFIG=1
>          DEFCONFIG = allmodconfig
>
>          include ~/linux/override-oldconfig.mk
>          build/linux-m68k-allmodconfig-sun3$ cat ~/linux/override-oldconfig.mk
>          MAKEFLAGS += --no-print-directory
>
>          .PHONY: all oldconfig realoldconfig $(MAKECMDGOALS)
>
>          all := $(filter-out all oldconfig realoldconfig
> Makefile,$(MAKECMDGOALS))
>
>          all:
>                  @$(MAKE) $(MAKEARGS) $(all) -f Makefile
>
>          # Replace oldconfig by $(DEFCONFIG)
>          oldconfig:
>                  @$(MAKE) $(MAKEARGS) $(DEFCONFIG) -f Makefile
>
>          realoldconfig:
>                  @$(MAKE) $(MAKEARGS) oldconfig -f Makefile
>
>          Makefile:;
>
>          $(all): all
>                  @:
>
>          %/: all
>                  @:
>          build/linux-m68k-allmodconfig-sun3$
>
>      That way I can always just type "make oldconfig", and it will do what
>      I want.
>
> Gr{oetje,eeting}s,
>
>                         Geert
>
> --
> Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org
>
> In personal conversations with technical people, I call myself a hacker. But
> when I'm talking to journalists I just say "programmer" or something like that.
>                                 -- Linus Torvalds
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAMuHMdXJBqrpzaSNDJgic14ESiHV6cCcb_5E-st6iniXdmm9_g%40mail.gmail.com.



-- 
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNARrP3jAbRxOr1F%2Bk%3DHo__s1%2BiqCtvrn4hH7uJ_sRvkO3A%40mail.gmail.com.
