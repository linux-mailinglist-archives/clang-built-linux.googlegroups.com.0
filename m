Return-Path: <clang-built-linux+bncBCS7XUWOUULBBXWNXT6QKGQEEIBWJPA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe3e.google.com (mail-vs1-xe3e.google.com [IPv6:2607:f8b0:4864:20::e3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 853212B29FD
	for <lists+clang-built-linux@lfdr.de>; Sat, 14 Nov 2020 01:37:51 +0100 (CET)
Received: by mail-vs1-xe3e.google.com with SMTP id e7sf3132810vsc.15
        for <lists+clang-built-linux@lfdr.de>; Fri, 13 Nov 2020 16:37:51 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605314270; cv=pass;
        d=google.com; s=arc-20160816;
        b=x8PIdSDKZYqDQTKhWezb8hovQi9vs2hkY5PLCGokFrR+1UteRrU0//xuMHrxcUFZ4Z
         G/Fznl0UQjSswS4eeQCcMr6fIQGeXu6wVIbqBlBvjZWu5LI6pt9mxjnXP0rAPTrpnacd
         5NemRRDY5uSRhcOeLE7LLLnqMtwk1lNb/rFHW378D8yOsTNFW9leLjIM8+oL6BwPWWSF
         /pH6Ql77CSjt5m8yLlakJ8kqW7J26iHb+xdz9DNRqRijH2v+QYpU9xalDcyDqWnvaovm
         5eE+gwoDp9BNJu1Y3uTeDKTiP7GfScJ5GaB4+bF0/3+sZA7gzxxudCNHh+hkCoCe4DD0
         +4iA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=oLK15ozD6Uv4ZOjZf1ADiCiVkE78jpCQCf4YU9d14cQ=;
        b=xytHTGlx9SPdFWvfhfK7E8trux9iTbFZaEkuDD00n9aZamvS0Q1ItWzkulhk39AdAM
         N/vjo+ryii5sWmHvlFMplvsM7NmZSnEcPLTKsq6VDt6oRlb9A/TzxmNNMoUNExy3TVuE
         ep8Pq826tCWQmlgUAB/5IRfENebAYGuJrnBx7lghyFFPJEMeCT+QQ+0c4qOIqb4zhkaA
         gQZQMIaBfoDILSYTuc0OT5uqYbIgRMxmAKocyOb0xTDDwOcyar1yuoEY3v1Z3AWPd/dr
         dgalcjLLXPegtw2P73SHszti/aHyGaIGnbWUFsUg1A96YUXq9sXm00MQMw3H2jaPCbBZ
         PkEg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Z9oKPZ57;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::42b as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=oLK15ozD6Uv4ZOjZf1ADiCiVkE78jpCQCf4YU9d14cQ=;
        b=llqiA3+ddv656d0BTEyYlDMdqGCD4IT4OcZg1CsaXXwzSWWcn3x/5pLy8FRyqYc4zz
         zY6stVuRGB2+JJHHsab1PS9lPMD1jYylcaZMQKjsb6lUvzsAsd5sM9C3uJ3c+E6/ZogG
         MIiVM3+OJbefPfRb+pzYH0ujZXOpXxrVgkaL36yaNHpa+jMcmB4Zlxg1gexKHOQC5xoo
         hVqe1IOHGUT5VdAR34mwM3efdkmPnxCu4ETfOpdxLCJ0fR+y3t+YBGzyTiilzMjor69u
         xePoNDgKU9yh/yZ31UFonLQLTRExKhx0TzLWNd4mG7+kaimX4MVFb3+zGKjaaXAvI+dG
         CgGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=oLK15ozD6Uv4ZOjZf1ADiCiVkE78jpCQCf4YU9d14cQ=;
        b=EOgAUR8+R05XMOskOV6HSKEqbGoiHhtuUk39u2R3ynr+Ca4yuv1UXEcAgywlAH3w2O
         CHBUtiA6CnP3x7uYPqzM6fo9ahzx+t/Ce/VcNISwj5ENUZv9/aAs+Au5M1+JcmbZRNOk
         PmInfzlc/cMSdXsCQi3N/qFVNI10+7xf+vVMvoQ0jRq8V7JZNzuQb8l0ro1j+S3Ivx9/
         pApgnxltWFPtPCcKCzT1MY8Kc0QtWViIJWtNyo7sMSVxOtvLTzJT7MIOdTi9PSJORcSa
         0pd36GPJYQXfx5MZPRZYuGEvZqwJChXrV2swCrDKqM37V49rZZAMc9BO8rr7lCZj5dCQ
         9oWw==
X-Gm-Message-State: AOAM530iCKEJxxVnRVSYTKAjwax/IdHZ8uB9/xdRSENkbliuOIi9ZZDt
	SZAxQEs50AXKdItjkIVC8Ts=
X-Google-Smtp-Source: ABdhPJx60wnnw02quVG0ELbsSk2i/lgZnOwEx1liovcJCOp8foAPBz9iRqle3L7lUJowQyf1W+CFJg==
X-Received: by 2002:a67:d84:: with SMTP id 126mr3440818vsn.43.1605314270562;
        Fri, 13 Nov 2020 16:37:50 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1f:d9c6:: with SMTP id q189ls442696vkg.10.gmail; Fri, 13
 Nov 2020 16:37:50 -0800 (PST)
X-Received: by 2002:a1f:38d2:: with SMTP id f201mr3154437vka.17.1605314270035;
        Fri, 13 Nov 2020 16:37:50 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605314270; cv=none;
        d=google.com; s=arc-20160816;
        b=oE98PPQ55dC1XT3M+bMvVxWhfWQ2/40A2HTcBEht0WoggfSm6aMEfOTxwdt1xZgx3x
         I43KGqCkuRd0c8xxvnb1FRC1L/ZTK5We9ZVjWTXRoW9zC85HA+gLnCYhsDDaTI5GlB5m
         bt4b7u+Fncg8JBtgY2IxpZ7/F11929lzrip0BiMQacnSdhJf4kDggYcYxF75huIge7n4
         jvp6x6oqz9qo+Mtyh1l9lgL1Wc7t+AydYPwbQ5oTW3iQ/aEqOkmlPJN+YUgE+O13ROcd
         9/soyCp0C6s9t4h7+4e1MXlSMmwLTiE5Rp3OsllpJc7VK9SsgqOBnApfNVtUVsPVwzLA
         mUpQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=d2NjKbZuVprfurSTRWSrDJU/we/C3Nu5LpJ6PGwglq8=;
        b=zpM4rkHO0vt1baI2iWAg0tRrZnsiuI2TIODESK/dnAMcP/LexQ5N7qlM5PjH1lLx3H
         NvIzcwJDIwYH9s/OYCB7C/mQVRP8T13UAU0uv9u+o62Fk5Yl0oOtq+WfyfVrx/fepd+k
         9/qiAvu7ay6W7V6oTXRB005vOVzVA21yyHoFeqhcKLxJsNnkVjmsFK1SfmRavUW39mwO
         nnk59xpRyOHww9nFCCgVtLSDC9uNy1rqT8UT3c8i2orbs86m8ZDoKt2WCjETQdR1BQp/
         ILEkSPAJFIQ+4fM+kdc5ZfZy7ROIOkV+XJzcj7ZH5fYJ1qbhObPV4+C/TasQpmlZDVc4
         fULg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Z9oKPZ57;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::42b as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x42b.google.com (mail-pf1-x42b.google.com. [2607:f8b0:4864:20::42b])
        by gmr-mx.google.com with ESMTPS id y17si707521vko.2.2020.11.13.16.37.50
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Nov 2020 16:37:50 -0800 (PST)
Received-SPF: pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::42b as permitted sender) client-ip=2607:f8b0:4864:20::42b;
Received: by mail-pf1-x42b.google.com with SMTP id 10so9039518pfp.5
        for <clang-built-linux@googlegroups.com>; Fri, 13 Nov 2020 16:37:49 -0800 (PST)
X-Received: by 2002:a62:75c6:0:b029:18a:d510:ff60 with SMTP id
 q189-20020a6275c60000b029018ad510ff60mr4179679pfc.35.1605314269534; Fri, 13
 Nov 2020 16:37:49 -0800 (PST)
MIME-Version: 1.0
References: <202011131146.g8dPLQDD-lkp@intel.com> <CAFP8O3LpSmxVnjHfQAN455k1ZRg3PbgZYhWr030evCq1T10k=Q@mail.gmail.com>
 <20201113190824.GA1477315@ubuntu-m3-large-x86> <CAKwvOdkEtTQhDRFRV_d66FyhQBe536vRbOW=fQjesiHz3dfeBA@mail.gmail.com>
 <20201113200444.GA1496675@ubuntu-m3-large-x86> <CAKwvOdkBSGPaKmQY1nERVe4_n19Q=MUtuwdond=FJAAF9N9Zhg@mail.gmail.com>
 <20201114002037.GW2672@gate.crashing.org>
In-Reply-To: <20201114002037.GW2672@gate.crashing.org>
From: =?UTF-8?B?J0bEgW5nLXJ1w6wgU8OybmcnIHZpYSBDbGFuZyBCdWlsdCBMaW51eA==?= <clang-built-linux@googlegroups.com>
Date: Fri, 13 Nov 2020 16:37:38 -0800
Message-ID: <CAFP8O3+NowYwhMAywd=R23HgOYnroWV9ZRkdyAejd08qsOF=6w@mail.gmail.com>
Subject: Re: Error: invalid switch -me200
To: Alan Modra <amodra@gmail.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>, 
	Segher Boessenkool <segher@kernel.crashing.org>, Nathan Chancellor <natechancellor@gmail.com>, 
	Michael Ellerman <mpe@ellerman.id.au>, Linus Torvalds <torvalds@linux-foundation.org>, 
	Arnd Bergmann <arnd@kernel.org>, Brian Cain <bcain@codeaurora.org>, 
	kernel test robot <lkp@intel.com>, kbuild-all@lists.01.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, LKML <linux-kernel@vger.kernel.org>, 
	Masahiro Yamada <masahiroy@kernel.org>, linuxppc-dev <linuxppc-dev@lists.ozlabs.org>, 
	Christophe Leroy <christophe.leroy@csgroup.eu>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: maskray@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=Z9oKPZ57;       spf=pass
 (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::42b
 as permitted sender) smtp.mailfrom=maskray@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: =?UTF-8?B?RsSBbmctcnXDrCBTw7JuZw==?= <maskray@google.com>
Reply-To: =?UTF-8?B?RsSBbmctcnXDrCBTw7JuZw==?= <maskray@google.com>
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

On Fri, Nov 13, 2020 at 4:23 PM Segher Boessenkool
<segher@kernel.crashing.org> wrote:
>
> On Fri, Nov 13, 2020 at 12:14:18PM -0800, Nick Desaulniers wrote:
> > > > > Error: invalid switch -me200
> > > > > Error: unrecognized option -me200
> > > >
> > > > 251 cpu-as-$(CONFIG_E200)   += -Wa,-me200
> > > >
> > > > Are those all broken configs, or is Kconfig messed up such that
> > > > randconfig can select these when it should not?
> > >
> > > Hmmm, looks like this flag does not exist in mainline binutils? There is
> > > a thread in 2010 about this that Segher commented on:
> > >
> > > https://lore.kernel.org/linuxppc-dev/9859E645-954D-4D07-8003-FFCD2391AB6E@kernel.crashing.org/
> > >
> > > Guess this config should be eliminated?
>
> The help text for this config options says that e200 is used in 55xx,
> and there *is* an -me5500 GAS flag (which probably does this same
> thing, too).  But is any of this tested, or useful, or wanted?
>
> Maybe Christophe knows, cc:ed.
>
>
> Segher

CC Alan Modra, a binutils global maintainer.

Alan, can the few -Wa,-m* options deleted from arch/powerpc/Makefile ?
The topic started at
http://lore.kernel.org/r/202011131146.g8dPLQDD-lkp@intel.com and
people would like to get rid of some options (if possible).

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAFP8O3%2BNowYwhMAywd%3DR23HgOYnroWV9ZRkdyAejd08qsOF%3D6w%40mail.gmail.com.
