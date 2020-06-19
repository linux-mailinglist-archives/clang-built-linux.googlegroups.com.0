Return-Path: <clang-built-linux+bncBDYJPJO25UGBBFORWP3QKGQER5A2KGI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x437.google.com (mail-pf1-x437.google.com [IPv6:2607:f8b0:4864:20::437])
	by mail.lfdr.de (Postfix) with ESMTPS id CA1CA201603
	for <lists+clang-built-linux@lfdr.de>; Fri, 19 Jun 2020 18:32:22 +0200 (CEST)
Received: by mail-pf1-x437.google.com with SMTP id i7sf7318802pfk.3
        for <lists+clang-built-linux@lfdr.de>; Fri, 19 Jun 2020 09:32:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592584341; cv=pass;
        d=google.com; s=arc-20160816;
        b=yhZ0+k4U06i0+3PmiQtFFito+Q+ASovMN5QqXEVK6LVecTLSWVwXppVWVhxqdtdDd+
         rK3AK3JCJl3+pD46YcSiDF03PvxTAYP5wXKiOWuhj7J6G6lhU+GuMyoO87T+wKudzMUT
         Sx0faGzuuI0EECci5F+ilaEirKRNLx7Y+W3KStrms77t4HeaIWTw0pdsh1TDNC3GRVye
         4YoBadCi4jSERkt0mC4RmXZTFuPkAYNoBimc9dzZ4yrReeF6GMWGhpeAEe4uS67zkW4q
         QgSxZ60dCIpvou3WxzEBWbwIHnpnScAghCZ9bkuTvkEhkx/CtHy398E7dVf838uXeKEO
         Z+Kg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=LIYZJnCxVdYKyCvsWD0hzH8fTT2lqhvYz0VA8kJUxYo=;
        b=A8/7ODYd4bIILfmDKi59RPqvfnTNSLj/gFmMWGVshIKm9YW/HATJMH47tiunK6f2US
         b8mcYTmIxieb1fD25Nrcz0D7iHnTydgzL9fOB+6VAR2lvGGm1EseqvppG9dP/w8th6dt
         GCXW37/2STM3mU/Nbn6CZhFu32bPCKKXqsbWuafSRZGct4/7DMb/G/st+jLe3J1kKlUU
         hTiCCR5FUEmGDHp6nle+0fJfuJpzGQxrIg3GhlLd58+7QZKXAwOvG7grk4sA5+fPbznU
         L3wfIjByzhFToRC/XBhVGp9pjqPZbo8ProRFhzYUmiMlE22+ZsT/NUzR6vWzB0lOlaEb
         ocCA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=atInSwV0;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=LIYZJnCxVdYKyCvsWD0hzH8fTT2lqhvYz0VA8kJUxYo=;
        b=YsmUq0z0Scf1QhiBSzxBqXxzxy+q964pCOfWX2nMwpunq3BtpOsGujEJZupoN1kZCT
         lVaVzQC6AgskHjzZ6x6x9H0ATnMwUFpValaG6o78zgaMpD2aweF+cgCKfznxeGoFcyXQ
         fSyHOoIUPlwFEBucstIu60nGdqjXUTGuqkX5RTMcDGDV60qyQqFTEcAx4wxC/83nNvym
         oBxShuurURUh9Vn0CrrNX+kSpV5beo/cqkbgGnMgB8OhYbgVxOT1JGXfvOQ/vmn+dEMU
         F8xJyRXEvuIFyzyVzXa0Gb3mXxviktc6Qi3Gj2n1SdwFcFWsUVT5LqhXmaBV3HA96K1l
         wf2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=LIYZJnCxVdYKyCvsWD0hzH8fTT2lqhvYz0VA8kJUxYo=;
        b=oOobMTsibtG7sa1l0zYDQPaJlzpwHNI3ETOgA3En3oeQNIXtJoiJR8jB/Qe9l2HeZk
         pjNGHoHkG9nAtEyNpSotBDPi7Wf3o2EHX8r7CQg388zvtwn6KBckWTBeolcc9Pa6M5Ov
         ddJTrRaWBNNe/F5ew11SEDvQ+m5ilfGASBIenrK0Vfh7vlopdipRGIYDs/iGPHBf0cMV
         ZnM7mLRYzo+jvjuwBD/Amr5b3xjzP3+zjn60b1jFsTnpoDZtFVhpS6bKJhP9Kew3faso
         Du+BhNUNukess3SOHqV2xqkCqntB8nvxjSjRSJyS52+G7JW53mN0VtvTc1bcV0ZepGhX
         6VVw==
X-Gm-Message-State: AOAM533DaXAaqcEJouPLk+YpUVUHcPRxBK2OjB+nNLetQ8qi4mGYQHVi
	5Oy7mYTEBcRckUNA3BikuW8=
X-Google-Smtp-Source: ABdhPJyheSm5F+2XpDwHZw2nHKT9TauNeozmFZM7aWI+ayRzC+RzkvdUtibS7ziBX9GB//rpK0cxCQ==
X-Received: by 2002:a63:3e09:: with SMTP id l9mr3864846pga.235.1592584341358;
        Fri, 19 Jun 2020 09:32:21 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:9007:: with SMTP id a7ls3732498plp.3.gmail; Fri, 19
 Jun 2020 09:32:20 -0700 (PDT)
X-Received: by 2002:a17:90b:3612:: with SMTP id ml18mr4526758pjb.153.1592584340843;
        Fri, 19 Jun 2020 09:32:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592584340; cv=none;
        d=google.com; s=arc-20160816;
        b=QbxF+oFFhMzq5Z7cGL8mgoEN3VnJtxZFN5JZwJpEqLm5k/wIzdXfjFhANkJYUr6JzL
         rnmtUpuBVO+7Iyf2k7BU61WBQMbbOeX5vypfzDehgc1IeN9e/yP4Mj1Jx+QAvHL+rAcI
         YN1fQyPSXrZPxWIb67qDr2YHenmfCcQKhmUSsLv6urbQMf6A/VLCiBj+knUbDb5niufy
         KUXEB7xVI3pA5L4syoBrF0U+17uwNTnUrQJHtzwm59HDwJFaxiojxSt9PGlDQ+MD4f9Q
         8E042seiKK3jNfOLSsvu1G53UCCPX4fcnL0V0kDnfm++eQAYla6oPXw2Zo7v0sAMJ+cQ
         LAiA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=TjMPLh6SeylJOH7jCpVymirJLnR3L+bVjG4x1WMDqv4=;
        b=ONDecZSsZwEd7IeDMDL79GUefskEFCPUHRSOhQ4iEgItkrqVTZ4BD+G4pArViJoBsV
         9VefJVPMm+oBfQlkmpnGnFL9d1VeyYWTKCj1WGjmiRSaR0iTDU7UUen004o1XwC7GlUs
         jAt8wFpCceKjib48+UTOFnBCqNlnXtC9N0uCQ1yuezJRmRWP3y76PgBLgzYlm1apmocj
         FiN7CNL4SkOu0zGggmcB49yjKniX8H7r3HFKfV+kH8H3XtSzAXRJG/xpcxU2NTNN+5Qb
         6HBqNwxF2iDwHLA36uA1sUQeH2+FQOjilplIddQWxvuD1pc8Dcf5OOykC3Nt8/UKQFVN
         4yww==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=atInSwV0;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x543.google.com (mail-pg1-x543.google.com. [2607:f8b0:4864:20::543])
        by gmr-mx.google.com with ESMTPS id f3si397748pgg.3.2020.06.19.09.32.20
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 19 Jun 2020 09:32:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::543 as permitted sender) client-ip=2607:f8b0:4864:20::543;
Received: by mail-pg1-x543.google.com with SMTP id p3so2015909pgh.3
        for <clang-built-linux@googlegroups.com>; Fri, 19 Jun 2020 09:32:20 -0700 (PDT)
X-Received: by 2002:a63:f00d:: with SMTP id k13mr3835259pgh.263.1592584339803;
 Fri, 19 Jun 2020 09:32:19 -0700 (PDT)
MIME-Version: 1.0
References: <202006180904.TVUXCf6H%lkp@intel.com> <150a9a49-8d61-ea34-94d4-fff158aae802@csgroup.eu>
In-Reply-To: <150a9a49-8d61-ea34-94d4-fff158aae802@csgroup.eu>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 19 Jun 2020 09:32:07 -0700
Message-ID: <CAKwvOd=s53vUELe311VSjxt2_eQd+RGNCf__n+cV+R=PQ_CdXQ@mail.gmail.com>
Subject: Re: ld.lld: warning: drivers/built-in.a(misc/ds1682.o):(.data..compoundliteral)
 is being placed in '.data..compoundliteral'
To: Christophe Leroy <christophe.leroy@csgroup.eu>
Cc: kernel test robot <lkp@intel.com>, kbuild-all@lists.01.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, LKML <linux-kernel@vger.kernel.org>, 
	Michael Ellerman <mpe@ellerman.id.au>, Segher Boessenkool <segher@kernel.crashing.org>, 
	Kees Cook <keescook@chromium.org>, Fangrui Song <maskray@google.com>, 
	Philip Li <philip.li@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=atInSwV0;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::543
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

On Fri, Jun 19, 2020 at 6:24 AM Christophe Leroy
<christophe.leroy@csgroup.eu> wrote:
>
>
>
> Le 18/06/2020 =C3=A0 03:12, kernel test robot a =C3=A9crit :
> > tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.=
git master
> > head:   1b5044021070efa3259f3e9548dc35d1eb6aa844
> > commit: 74016701fe5f873ae23bf02835407227138d874d powerpc/32s: Fix anoth=
er build failure with CONFIG_PPC_KUAP_DEBUG
>
> I'm really having hard time understanding the link between this commit
> and the issue reported below.
>
> Can Clang people help understand what the problem might be ?

For randconfigs, it might be the case that we're not clean in the
first place. + Philip to provide more info on how the bisection
pinpoints commits? (Is the same randconfig used repeatedly as part of
a bisection?)

+ Kees, idk if this is the warning from the orphan section placement,
if any of those patches have landed?

+ Fangrui, who might know more about this warning from LLD.

>
> Christophe
>
> > date:   2 weeks ago
> > config: powerpc-randconfig-r032-20200617 (attached as .config)
> > compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project 48=
7ca07fcc75d52755c9fe2ee05bcb3b6eeeec44)
> > reproduce (this is a W=3D1 build):
> >          wget https://raw.githubusercontent.com/intel/lkp-tests/master/=
sbin/make.cross -O ~/bin/make.cross
> >          chmod +x ~/bin/make.cross
> >          # install powerpc cross compiling tool for clang build
> >          # apt-get install binutils-powerpc-linux-gnu
> >          git checkout 74016701fe5f873ae23bf02835407227138d874d
> >          # save the attached .config to linux build tree
> >          COMPILER_INSTALL_PATH=3D$HOME/0day COMPILER=3Dclang make.cross=
 ARCH=3Dpowerpc
> >
> > If you fix the issue, kindly add following tag as appropriate
> > Reported-by: kernel test robot <lkp@intel.com>
> >
> > All warnings (new ones prefixed by >>, old ones prefixed by <<):
> >
> >>> ld.lld: warning: drivers/built-in.a(misc/ds1682.o):(.data..compoundli=
teral) is being placed in '.data..compoundliteral'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral) is being placed in '.data..compoundliteral'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.29) is being placed in '.data..compoundliteral.29'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.31) is being placed in '.data..compoundliteral.31'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.33) is being placed in '.data..compoundliteral.33'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.bss..compound=
literal.35) is being placed in '.bss..compoundliteral.35'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.37) is being placed in '.data..compoundliteral.37'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.39) is being placed in '.data..compoundliteral.39'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.41) is being placed in '.data..compoundliteral.41'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.43) is being placed in '.data..compoundliteral.43'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.45) is being placed in '.data..compoundliteral.45'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.47) is being placed in '.data..compoundliteral.47'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.49) is being placed in '.data..compoundliteral.49'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.51) is being placed in '.data..compoundliteral.51'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.53) is being placed in '.data..compoundliteral.53'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.55) is being placed in '.data..compoundliteral.55'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.57) is being placed in '.data..compoundliteral.57'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.59) is being placed in '.data..compoundliteral.59'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.61) is being placed in '.data..compoundliteral.61'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.63) is being placed in '.data..compoundliteral.63'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.65) is being placed in '.data..compoundliteral.65'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.67) is being placed in '.data..compoundliteral.67'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.69) is being placed in '.data..compoundliteral.69'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.71) is being placed in '.data..compoundliteral.71'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.73) is being placed in '.data..compoundliteral.73'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.75) is being placed in '.data..compoundliteral.75'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.77) is being placed in '.data..compoundliteral.77'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.79) is being placed in '.data..compoundliteral.79'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.81) is being placed in '.data..compoundliteral.81'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.83) is being placed in '.data..compoundliteral.83'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.85) is being placed in '.data..compoundliteral.85'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.87) is being placed in '.data..compoundliteral.87'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.89) is being placed in '.data..compoundliteral.89'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.91) is being placed in '.data..compoundliteral.91'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.93) is being placed in '.data..compoundliteral.93'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.95) is being placed in '.data..compoundliteral.95'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.97) is being placed in '.data..compoundliteral.97'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.99) is being placed in '.data..compoundliteral.99'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.101) is being placed in '.data..compoundliteral.101'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.103) is being placed in '.data..compoundliteral.103'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.105) is being placed in '.data..compoundliteral.105'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.107) is being placed in '.data..compoundliteral.107'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.109) is being placed in '.data..compoundliteral.109'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.111) is being placed in '.data..compoundliteral.111'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.113) is being placed in '.data..compoundliteral.113'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.115) is being placed in '.data..compoundliteral.115'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.117) is being placed in '.data..compoundliteral.117'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.119) is being placed in '.data..compoundliteral.119'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.121) is being placed in '.data..compoundliteral.121'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.123) is being placed in '.data..compoundliteral.123'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.125) is being placed in '.data..compoundliteral.125'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.127) is being placed in '.data..compoundliteral.127'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.129) is being placed in '.data..compoundliteral.129'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.131) is being placed in '.data..compoundliteral.131'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.133) is being placed in '.data..compoundliteral.133'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.135) is being placed in '.data..compoundliteral.135'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.137) is being placed in '.data..compoundliteral.137'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.139) is being placed in '.data..compoundliteral.139'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.141) is being placed in '.data..compoundliteral.141'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.143) is being placed in '.data..compoundliteral.143'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.145) is being placed in '.data..compoundliteral.145'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.147) is being placed in '.data..compoundliteral.147'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.149) is being placed in '.data..compoundliteral.149'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.151) is being placed in '.data..compoundliteral.151'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.153) is being placed in '.data..compoundliteral.153'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.155) is being placed in '.data..compoundliteral.155'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.157) is being placed in '.data..compoundliteral.157'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.159) is being placed in '.data..compoundliteral.159'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.161) is being placed in '.data..compoundliteral.161'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.163) is being placed in '.data..compoundliteral.163'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.165) is being placed in '.data..compoundliteral.165'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.167) is being placed in '.data..compoundliteral.167'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.169) is being placed in '.data..compoundliteral.169'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.171) is being placed in '.data..compoundliteral.171'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.173) is being placed in '.data..compoundliteral.173'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.175) is being placed in '.data..compoundliteral.175'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.177) is being placed in '.data..compoundliteral.177'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.179) is being placed in '.data..compoundliteral.179'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.181) is being placed in '.data..compoundliteral.181'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.183) is being placed in '.data..compoundliteral.183'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.185) is being placed in '.data..compoundliteral.185'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.187) is being placed in '.data..compoundliteral.187'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.189) is being placed in '.data..compoundliteral.189'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.191) is being placed in '.data..compoundliteral.191'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.193) is being placed in '.data..compoundliteral.193'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.195) is being placed in '.data..compoundliteral.195'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.197) is being placed in '.data..compoundliteral.197'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.199) is being placed in '.data..compoundliteral.199'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.201) is being placed in '.data..compoundliteral.201'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.203) is being placed in '.data..compoundliteral.203'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.205) is being placed in '.data..compoundliteral.205'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.207) is being placed in '.data..compoundliteral.207'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.209) is being placed in '.data..compoundliteral.209'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.211) is being placed in '.data..compoundliteral.211'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.213) is being placed in '.data..compoundliteral.213'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.215) is being placed in '.data..compoundliteral.215'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.217) is being placed in '.data..compoundliteral.217'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.219) is being placed in '.data..compoundliteral.219'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.221) is being placed in '.data..compoundliteral.221'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.223) is being placed in '.data..compoundliteral.223'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.225) is being placed in '.data..compoundliteral.225'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.227) is being placed in '.data..compoundliteral.227'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.229) is being placed in '.data..compoundliteral.229'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.231) is being placed in '.data..compoundliteral.231'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.233) is being placed in '.data..compoundliteral.233'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.235) is being placed in '.data..compoundliteral.235'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.237) is being placed in '.data..compoundliteral.237'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.239) is being placed in '.data..compoundliteral.239'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.241) is being placed in '.data..compoundliteral.241'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.243) is being placed in '.data..compoundliteral.243'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.245) is being placed in '.data..compoundliteral.245'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.247) is being placed in '.data..compoundliteral.247'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.249) is being placed in '.data..compoundliteral.249'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.251) is being placed in '.data..compoundliteral.251'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.253) is being placed in '.data..compoundliteral.253'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.255) is being placed in '.data..compoundliteral.255'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.257) is being placed in '.data..compoundliteral.257'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.259) is being placed in '.data..compoundliteral.259'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.261) is being placed in '.data..compoundliteral.261'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.263) is being placed in '.data..compoundliteral.263'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.265) is being placed in '.data..compoundliteral.265'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.267) is being placed in '.data..compoundliteral.267'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.269) is being placed in '.data..compoundliteral.269'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.271) is being placed in '.data..compoundliteral.271'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.273) is being placed in '.data..compoundliteral.273'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.275) is being placed in '.data..compoundliteral.275'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.277) is being placed in '.data..compoundliteral.277'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.279) is being placed in '.data..compoundliteral.279'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.281) is being placed in '.data..compoundliteral.281'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.283) is being placed in '.data..compoundliteral.283'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.285) is being placed in '.data..compoundliteral.285'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.287) is being placed in '.data..compoundliteral.287'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.289) is being placed in '.data..compoundliteral.289'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.294) is being placed in '.data..compoundliteral.294'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.295) is being placed in '.data..compoundliteral.295'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.296) is being placed in '.data..compoundliteral.296'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.297) is being placed in '.data..compoundliteral.297'
> >>> ld.lld: warning: drivers/built-in.a(hwmon/ina3221.o):(.data..compound=
literal) is being placed in '.data..compoundliteral'
> >>> ld.lld: warning: drivers/built-in.a(hwmon/ina3221.o):(.data..compound=
literal.18) is being placed in '.data..compoundliteral.18'
> > ld.lld: warning: drivers/built-in.a(hwmon/ina3221.o):(.data..compoundli=
teral.19) is being placed in '.data..compoundliteral.19'
> > ld.lld: warning: drivers/built-in.a(hwmon/ina3221.o):(.data..compoundli=
teral.20) is being placed in '.data..compoundliteral.20'
> > ld.lld: warning: drivers/built-in.a(hwmon/ina3221.o):(.data..compoundli=
teral.21) is being placed in '.data..compoundliteral.21'
> > ld.lld: warning: drivers/built-in.a(hwmon/ina3221.o):(.data..compoundli=
teral.22) is being placed in '.data..compoundliteral.22'
> >>> ld.lld: warning: drivers/built-in.a(hwmon/max6650.o):(.data..compound=
literal) is being placed in '.data..compoundliteral'
> >>> ld.lld: warning: drivers/built-in.a(hwmon/max6650.o):(.data..compound=
literal.15) is being placed in '.data..compoundliteral.15'
> > ld.lld: warning: drivers/built-in.a(hwmon/max6650.o):(.data..compoundli=
teral.16) is being placed in '.data..compoundliteral.16'
> > ld.lld: warning: drivers/built-in.a(hwmon/max6650.o):(.data..compoundli=
teral.17) is being placed in '.data..compoundliteral.17'
> >>> ld.lld: warning: drivers/built-in.a(hwmon/max31790.o):(.data..compoun=
dliteral) is being placed in '.data..compoundliteral'
> >>> ld.lld: warning: drivers/built-in.a(hwmon/max31790.o):(.data..compoun=
dliteral.2) is being placed in '.data..compoundliteral.2'
> > ld.lld: warning: drivers/built-in.a(hwmon/max31790.o):(.data..compoundl=
iteral.3) is being placed in '.data..compoundliteral.3'
> > ld.lld: warning: drivers/built-in.a(hwmon/max31790.o):(.data..compoundl=
iteral.4) is being placed in '.data..compoundliteral.4'
> >>> ld.lld: warning: drivers/built-in.a(hwmon/tmp102.o):(.data..compoundl=
iteral) is being placed in '.data..compoundliteral'
> >>> ld.lld: warning: drivers/built-in.a(hwmon/tmp102.o):(.data..compoundl=
iteral.10) is being placed in '.data..compoundliteral.10'
> > ld.lld: warning: drivers/built-in.a(hwmon/tmp102.o):(.data..compoundlit=
eral.11) is being placed in '.data..compoundliteral.11'
> > ld.lld: warning: drivers/built-in.a(hwmon/tmp102.o):(.data..compoundlit=
eral.12) is being placed in '.data..compoundliteral.12'
> >>> ld.lld: warning: drivers/built-in.a(cpufreq/cpufreq-dt-platdev.o):(.d=
ata..compoundliteral) is being placed in '.data..compoundliteral'
> >>> ld.lld: warning: drivers/built-in.a(hid/hid-cp2112.o):(.data..compoun=
dliteral) is being placed in '.data..compoundliteral'
> >>> ld.lld: warning: net/built-in.a(ipv6/addrlabel.o):(.data..compoundlit=
eral) is being placed in '.data..compoundliteral'
> >>> ld.lld: warning: net/built-in.a(ipv6/addrlabel.o):(.data..compoundlit=
eral.2) is being placed in '.data..compoundliteral.2'
> > ld.lld: warning: net/built-in.a(ipv6/addrlabel.o):(.data..compoundliter=
al.3) is being placed in '.data..compoundliteral.3'
> > ld.lld: warning: net/built-in.a(ipv6/addrlabel.o):(.data..compoundliter=
al.4) is being placed in '.data..compoundliteral.4'
> > ld.lld: warning: net/built-in.a(ipv6/addrlabel.o):(.data..compoundliter=
al.5) is being placed in '.data..compoundliteral.5'
> > ld.lld: warning: net/built-in.a(ipv6/addrlabel.o):(.data..compoundliter=
al.6) is being placed in '.data..compoundliteral.6'
> > ld.lld: warning: net/built-in.a(ipv6/addrlabel.o):(.data..compoundliter=
al.7) is being placed in '.data..compoundliteral.7'
> > ld.lld: warning: net/built-in.a(ipv6/addrconf_core.o):(.data..compoundl=
iteral) is being placed in '.data..compoundliteral'
> > ld.lld: warning: <internal>:(.symtab) is being placed in '.symtab'
> > ld.lld: warning: <internal>:(.shstrtab) is being placed in '.shstrtab'
> > ld.lld: warning: <internal>:(.strtab) is being placed in '.strtab'
> >>> ld.lld: warning: drivers/built-in.a(misc/ds1682.o):(.data..compoundli=
teral) is being placed in '.data..compoundliteral'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral) is being placed in '.data..compoundliteral'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.29) is being placed in '.data..compoundliteral.29'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.31) is being placed in '.data..compoundliteral.31'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.33) is being placed in '.data..compoundliteral.33'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.bss..compound=
literal.35) is being placed in '.bss..compoundliteral.35'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.37) is being placed in '.data..compoundliteral.37'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.39) is being placed in '.data..compoundliteral.39'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.41) is being placed in '.data..compoundliteral.41'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.43) is being placed in '.data..compoundliteral.43'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.45) is being placed in '.data..compoundliteral.45'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.47) is being placed in '.data..compoundliteral.47'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.49) is being placed in '.data..compoundliteral.49'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.51) is being placed in '.data..compoundliteral.51'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.53) is being placed in '.data..compoundliteral.53'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.55) is being placed in '.data..compoundliteral.55'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.57) is being placed in '.data..compoundliteral.57'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.59) is being placed in '.data..compoundliteral.59'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.61) is being placed in '.data..compoundliteral.61'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.63) is being placed in '.data..compoundliteral.63'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.65) is being placed in '.data..compoundliteral.65'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.67) is being placed in '.data..compoundliteral.67'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.69) is being placed in '.data..compoundliteral.69'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.71) is being placed in '.data..compoundliteral.71'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.73) is being placed in '.data..compoundliteral.73'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.75) is being placed in '.data..compoundliteral.75'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.77) is being placed in '.data..compoundliteral.77'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.79) is being placed in '.data..compoundliteral.79'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.81) is being placed in '.data..compoundliteral.81'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.83) is being placed in '.data..compoundliteral.83'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.85) is being placed in '.data..compoundliteral.85'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.87) is being placed in '.data..compoundliteral.87'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.89) is being placed in '.data..compoundliteral.89'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.91) is being placed in '.data..compoundliteral.91'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.93) is being placed in '.data..compoundliteral.93'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.95) is being placed in '.data..compoundliteral.95'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.97) is being placed in '.data..compoundliteral.97'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.99) is being placed in '.data..compoundliteral.99'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.101) is being placed in '.data..compoundliteral.101'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.103) is being placed in '.data..compoundliteral.103'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.105) is being placed in '.data..compoundliteral.105'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.107) is being placed in '.data..compoundliteral.107'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.109) is being placed in '.data..compoundliteral.109'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.111) is being placed in '.data..compoundliteral.111'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.113) is being placed in '.data..compoundliteral.113'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.115) is being placed in '.data..compoundliteral.115'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.117) is being placed in '.data..compoundliteral.117'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.119) is being placed in '.data..compoundliteral.119'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.121) is being placed in '.data..compoundliteral.121'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.123) is being placed in '.data..compoundliteral.123'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.125) is being placed in '.data..compoundliteral.125'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.127) is being placed in '.data..compoundliteral.127'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.129) is being placed in '.data..compoundliteral.129'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.131) is being placed in '.data..compoundliteral.131'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.133) is being placed in '.data..compoundliteral.133'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.135) is being placed in '.data..compoundliteral.135'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.137) is being placed in '.data..compoundliteral.137'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.139) is being placed in '.data..compoundliteral.139'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.141) is being placed in '.data..compoundliteral.141'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.143) is being placed in '.data..compoundliteral.143'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.145) is being placed in '.data..compoundliteral.145'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.147) is being placed in '.data..compoundliteral.147'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.149) is being placed in '.data..compoundliteral.149'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.151) is being placed in '.data..compoundliteral.151'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.153) is being placed in '.data..compoundliteral.153'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.155) is being placed in '.data..compoundliteral.155'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.157) is being placed in '.data..compoundliteral.157'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.159) is being placed in '.data..compoundliteral.159'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.161) is being placed in '.data..compoundliteral.161'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.163) is being placed in '.data..compoundliteral.163'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.165) is being placed in '.data..compoundliteral.165'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.167) is being placed in '.data..compoundliteral.167'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.169) is being placed in '.data..compoundliteral.169'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.171) is being placed in '.data..compoundliteral.171'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.173) is being placed in '.data..compoundliteral.173'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.175) is being placed in '.data..compoundliteral.175'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.177) is being placed in '.data..compoundliteral.177'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.179) is being placed in '.data..compoundliteral.179'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.181) is being placed in '.data..compoundliteral.181'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.183) is being placed in '.data..compoundliteral.183'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.185) is being placed in '.data..compoundliteral.185'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.187) is being placed in '.data..compoundliteral.187'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.189) is being placed in '.data..compoundliteral.189'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.191) is being placed in '.data..compoundliteral.191'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.193) is being placed in '.data..compoundliteral.193'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.195) is being placed in '.data..compoundliteral.195'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.197) is being placed in '.data..compoundliteral.197'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.199) is being placed in '.data..compoundliteral.199'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.201) is being placed in '.data..compoundliteral.201'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.203) is being placed in '.data..compoundliteral.203'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.205) is being placed in '.data..compoundliteral.205'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.207) is being placed in '.data..compoundliteral.207'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.209) is being placed in '.data..compoundliteral.209'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.211) is being placed in '.data..compoundliteral.211'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.213) is being placed in '.data..compoundliteral.213'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.215) is being placed in '.data..compoundliteral.215'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.217) is being placed in '.data..compoundliteral.217'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.219) is being placed in '.data..compoundliteral.219'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.221) is being placed in '.data..compoundliteral.221'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.223) is being placed in '.data..compoundliteral.223'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.225) is being placed in '.data..compoundliteral.225'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.227) is being placed in '.data..compoundliteral.227'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.229) is being placed in '.data..compoundliteral.229'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.231) is being placed in '.data..compoundliteral.231'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.233) is being placed in '.data..compoundliteral.233'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.235) is being placed in '.data..compoundliteral.235'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.237) is being placed in '.data..compoundliteral.237'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.239) is being placed in '.data..compoundliteral.239'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.241) is being placed in '.data..compoundliteral.241'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.243) is being placed in '.data..compoundliteral.243'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.245) is being placed in '.data..compoundliteral.245'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.247) is being placed in '.data..compoundliteral.247'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.249) is being placed in '.data..compoundliteral.249'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.251) is being placed in '.data..compoundliteral.251'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.253) is being placed in '.data..compoundliteral.253'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.255) is being placed in '.data..compoundliteral.255'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.257) is being placed in '.data..compoundliteral.257'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.259) is being placed in '.data..compoundliteral.259'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.261) is being placed in '.data..compoundliteral.261'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.263) is being placed in '.data..compoundliteral.263'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.265) is being placed in '.data..compoundliteral.265'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.267) is being placed in '.data..compoundliteral.267'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.269) is being placed in '.data..compoundliteral.269'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.271) is being placed in '.data..compoundliteral.271'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.273) is being placed in '.data..compoundliteral.273'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.275) is being placed in '.data..compoundliteral.275'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.277) is being placed in '.data..compoundliteral.277'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.279) is being placed in '.data..compoundliteral.279'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.281) is being placed in '.data..compoundliteral.281'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.283) is being placed in '.data..compoundliteral.283'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.285) is being placed in '.data..compoundliteral.285'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.287) is being placed in '.data..compoundliteral.287'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.289) is being placed in '.data..compoundliteral.289'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.294) is being placed in '.data..compoundliteral.294'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.295) is being placed in '.data..compoundliteral.295'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.296) is being placed in '.data..compoundliteral.296'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.297) is being placed in '.data..compoundliteral.297'
> >>> ld.lld: warning: drivers/built-in.a(hwmon/ina3221.o):(.data..compound=
literal) is being placed in '.data..compoundliteral'
> >>> ld.lld: warning: drivers/built-in.a(hwmon/ina3221.o):(.data..compound=
literal.18) is being placed in '.data..compoundliteral.18'
> > ld.lld: warning: drivers/built-in.a(hwmon/ina3221.o):(.data..compoundli=
teral.19) is being placed in '.data..compoundliteral.19'
> > ld.lld: warning: drivers/built-in.a(hwmon/ina3221.o):(.data..compoundli=
teral.20) is being placed in '.data..compoundliteral.20'
> > ld.lld: warning: drivers/built-in.a(hwmon/ina3221.o):(.data..compoundli=
teral.21) is being placed in '.data..compoundliteral.21'
> > ld.lld: warning: drivers/built-in.a(hwmon/ina3221.o):(.data..compoundli=
teral.22) is being placed in '.data..compoundliteral.22'
> >>> ld.lld: warning: drivers/built-in.a(hwmon/max6650.o):(.data..compound=
literal) is being placed in '.data..compoundliteral'
> >>> ld.lld: warning: drivers/built-in.a(hwmon/max6650.o):(.data..compound=
literal.15) is being placed in '.data..compoundliteral.15'
> > ld.lld: warning: drivers/built-in.a(hwmon/max6650.o):(.data..compoundli=
teral.16) is being placed in '.data..compoundliteral.16'
> > ld.lld: warning: drivers/built-in.a(hwmon/max6650.o):(.data..compoundli=
teral.17) is being placed in '.data..compoundliteral.17'
> >>> ld.lld: warning: drivers/built-in.a(hwmon/max31790.o):(.data..compoun=
dliteral) is being placed in '.data..compoundliteral'
> >>> ld.lld: warning: drivers/built-in.a(hwmon/max31790.o):(.data..compoun=
dliteral.2) is being placed in '.data..compoundliteral.2'
> > ld.lld: warning: drivers/built-in.a(hwmon/max31790.o):(.data..compoundl=
iteral.3) is being placed in '.data..compoundliteral.3'
> > ld.lld: warning: drivers/built-in.a(hwmon/max31790.o):(.data..compoundl=
iteral.4) is being placed in '.data..compoundliteral.4'
> > ld.lld: warning: drivers/built-in.a(hwmon/tmp102.o):(.data..compoundlit=
eral) is being placed in '.data..compoundliteral'
> > ld.lld: warning: drivers/built-in.a(hwmon/tmp102.o):(.data..compoundlit=
eral.10) is being placed in '.data..compoundliteral.10'
> > ld.lld: warning: drivers/built-in.a(hwmon/tmp102.o):(.data..compoundlit=
eral.11) is being placed in '.data..compoundliteral.11'
> > ld.lld: warning: drivers/built-in.a(hwmon/tmp102.o):(.data..compoundlit=
eral.12) is being placed in '.data..compoundliteral.12'
> > ld.lld: warning: drivers/built-in.a(cpufreq/cpufreq-dt-platdev.o):(.dat=
a..compoundliteral) is being placed in '.data..compoundliteral'
> > ld.lld: warning: drivers/built-in.a(hid/hid-cp2112.o):(.data..compoundl=
iteral) is being placed in '.data..compoundliteral'
> > ld.lld: warning: net/built-in.a(ipv6/addrlabel.o):(.data..compoundliter=
al) is being placed in '.data..compoundliteral'
> > ld.lld: warning: net/built-in.a(ipv6/addrlabel.o):(.data..compoundliter=
al.2) is being placed in '.data..compoundliteral.2'
> > ld.lld: warning: net/built-in.a(ipv6/addrlabel.o):(.data..compoundliter=
al.3) is being placed in '.data..compoundliteral.3'
> > ld.lld: warning: net/built-in.a(ipv6/addrlabel.o):(.data..compoundliter=
al.4) is being placed in '.data..compoundliteral.4'
> > ld.lld: warning: net/built-in.a(ipv6/addrlabel.o):(.data..compoundliter=
al.5) is being placed in '.data..compoundliteral.5'
> > ld.lld: warning: net/built-in.a(ipv6/addrlabel.o):(.data..compoundliter=
al.6) is being placed in '.data..compoundliteral.6'
> > ld.lld: warning: net/built-in.a(ipv6/addrlabel.o):(.data..compoundliter=
al.7) is being placed in '.data..compoundliteral.7'
> > ld.lld: warning: net/built-in.a(ipv6/addrconf_core.o):(.data..compoundl=
iteral) is being placed in '.data..compoundliteral'
> > ld.lld: warning: <internal>:(.symtab) is being placed in '.symtab'
> > ld.lld: warning: <internal>:(.shstrtab) is being placed in '.shstrtab'
> > ld.lld: warning: <internal>:(.strtab) is being placed in '.strtab'
> > ld.lld: warning: drivers/built-in.a(misc/ds1682.o):(.data..compoundlite=
ral) is being placed in '.data..compoundliteral'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral) is being placed in '.data..compoundliteral'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.29) is being placed in '.data..compoundliteral.29'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.31) is being placed in '.data..compoundliteral.31'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.33) is being placed in '.data..compoundliteral.33'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.bss..compound=
literal.35) is being placed in '.bss..compoundliteral.35'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.37) is being placed in '.data..compoundliteral.37'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.39) is being placed in '.data..compoundliteral.39'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.41) is being placed in '.data..compoundliteral.41'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.43) is being placed in '.data..compoundliteral.43'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.45) is being placed in '.data..compoundliteral.45'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.47) is being placed in '.data..compoundliteral.47'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.49) is being placed in '.data..compoundliteral.49'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.51) is being placed in '.data..compoundliteral.51'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.53) is being placed in '.data..compoundliteral.53'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.55) is being placed in '.data..compoundliteral.55'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.57) is being placed in '.data..compoundliteral.57'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.59) is being placed in '.data..compoundliteral.59'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.61) is being placed in '.data..compoundliteral.61'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.63) is being placed in '.data..compoundliteral.63'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.65) is being placed in '.data..compoundliteral.65'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.67) is being placed in '.data..compoundliteral.67'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.69) is being placed in '.data..compoundliteral.69'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.71) is being placed in '.data..compoundliteral.71'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.73) is being placed in '.data..compoundliteral.73'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.75) is being placed in '.data..compoundliteral.75'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.77) is being placed in '.data..compoundliteral.77'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.79) is being placed in '.data..compoundliteral.79'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.81) is being placed in '.data..compoundliteral.81'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.83) is being placed in '.data..compoundliteral.83'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.85) is being placed in '.data..compoundliteral.85'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.87) is being placed in '.data..compoundliteral.87'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.89) is being placed in '.data..compoundliteral.89'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.91) is being placed in '.data..compoundliteral.91'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.93) is being placed in '.data..compoundliteral.93'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.95) is being placed in '.data..compoundliteral.95'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.97) is being placed in '.data..compoundliteral.97'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.99) is being placed in '.data..compoundliteral.99'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.101) is being placed in '.data..compoundliteral.101'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.103) is being placed in '.data..compoundliteral.103'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.105) is being placed in '.data..compoundliteral.105'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.107) is being placed in '.data..compoundliteral.107'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.109) is being placed in '.data..compoundliteral.109'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.111) is being placed in '.data..compoundliteral.111'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.113) is being placed in '.data..compoundliteral.113'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.115) is being placed in '.data..compoundliteral.115'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.117) is being placed in '.data..compoundliteral.117'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.119) is being placed in '.data..compoundliteral.119'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.121) is being placed in '.data..compoundliteral.121'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.123) is being placed in '.data..compoundliteral.123'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.125) is being placed in '.data..compoundliteral.125'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.127) is being placed in '.data..compoundliteral.127'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.129) is being placed in '.data..compoundliteral.129'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.131) is being placed in '.data..compoundliteral.131'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.133) is being placed in '.data..compoundliteral.133'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.135) is being placed in '.data..compoundliteral.135'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.137) is being placed in '.data..compoundliteral.137'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.139) is being placed in '.data..compoundliteral.139'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.141) is being placed in '.data..compoundliteral.141'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.143) is being placed in '.data..compoundliteral.143'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.145) is being placed in '.data..compoundliteral.145'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.147) is being placed in '.data..compoundliteral.147'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.149) is being placed in '.data..compoundliteral.149'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.151) is being placed in '.data..compoundliteral.151'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.153) is being placed in '.data..compoundliteral.153'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.155) is being placed in '.data..compoundliteral.155'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.157) is being placed in '.data..compoundliteral.157'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.159) is being placed in '.data..compoundliteral.159'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.161) is being placed in '.data..compoundliteral.161'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.163) is being placed in '.data..compoundliteral.163'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.165) is being placed in '.data..compoundliteral.165'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.167) is being placed in '.data..compoundliteral.167'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.169) is being placed in '.data..compoundliteral.169'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.171) is being placed in '.data..compoundliteral.171'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.173) is being placed in '.data..compoundliteral.173'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.175) is being placed in '.data..compoundliteral.175'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.177) is being placed in '.data..compoundliteral.177'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.179) is being placed in '.data..compoundliteral.179'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.181) is being placed in '.data..compoundliteral.181'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.183) is being placed in '.data..compoundliteral.183'
> > ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.185) is being placed in '.data..compoundliteral.185'
> >
> > ---
> > 0-DAY CI Kernel Test Service, Intel Corporation
> > https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
> >



--=20
Thanks,
~Nick Desaulniers

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAKwvOd%3Ds53vUELe311VSjxt2_eQd%2BRGNCf__n%2BcV%2BR%3DPQ_=
CdXQ%40mail.gmail.com.
