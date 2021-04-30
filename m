Return-Path: <clang-built-linux+bncBDYJPJO25UGBBIUVWKCAMGQEHPJVEAY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43d.google.com (mail-wr1-x43d.google.com [IPv6:2a00:1450:4864:20::43d])
	by mail.lfdr.de (Postfix) with ESMTPS id BE6143703C8
	for <lists+clang-built-linux@lfdr.de>; Sat,  1 May 2021 00:54:26 +0200 (CEST)
Received: by mail-wr1-x43d.google.com with SMTP id v2-20020a0560001622b0290106e28f8af8sf23524085wrb.9
        for <lists+clang-built-linux@lfdr.de>; Fri, 30 Apr 2021 15:54:26 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1619823266; cv=pass;
        d=google.com; s=arc-20160816;
        b=caQ64uPHYZ+n4T8x04I3cEgfKy2ntne6G0QcxSjktoeeiNNfywBQzA4jCn/xXCKGKv
         ssK8H9nwDzuOaOi/o49CRefzxeHEmUzt9ZJ1ztIL9/kZADMw5VHnVeTtAJeUByLK88YQ
         Hgavabi0GOmHAKUwl+YHr+gRgla3Oa0VTJeSiJjawnFlL62AXRlZK+lMJrHLbD03krrU
         o2APcAlypY73voaBY4htzeMbOY8zShkx49/IzuVw61rxUDb5VAx7asdh1KuPypLr1IKG
         EXclXhMaCSYcztBlw0xSJ46JwFOV4zgOPYM9rRT4uWLyjQ64zF1oeCj2beNaQE+ktt5O
         b4PA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=XcP8gMPHq+4g5S9IXipK3NoVQLC9tuynC7jUDuJuNDo=;
        b=E95GPV+nsL84+3mo4LXtGIcxKIsdFQfhpdezrEft/nd3WOcW947/d68wlf7yA9pk5T
         4YSk0xqowmTtbAbsIjuqCzj5vPlpw7pV7dEvyy7G9sBHQ531a7wT0emX0CUndzpSMT0B
         NSG2TYuNyfLtj92YNo36pdR96jh4rU7zbEhbY0Qh4iAOcddCgR0ksNsL9jiH8DwCVuIC
         ewc+QL9zjcjTzwfhCnO7SI2wUHYvHIEQn792Jz4m57FiS5X7LDuRypKv24V6MptbaYi1
         duvII55E2eh7cRMJBVtIyowhQdLQ3nWngevg8y2v+fqfmCDmxAjYb3GsNl1KwWyBiOCs
         y6dQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=f7WaMElQ;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12f as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=XcP8gMPHq+4g5S9IXipK3NoVQLC9tuynC7jUDuJuNDo=;
        b=OJ4Gcidc2jX7zj3ZHmuhLnIv9R+Me8nJNn7KyBj1GPZnYyhA5NOSwfBWgseZB6C/Jk
         Uoj3E94IXYYbt5c7uaqmzIELTPXepG/2DlEjJTkY1sa7RiofwpHM6b+eR8WGxybslO8C
         4k2eGmetwuTLJcP2mvu7rm6S2D9eGA6IhFygUM9KcGDsUZ/4FJIr72DzaqLdT0GYBkHC
         /i931KPdmZTasSJoicN1FaXqhyXJtyeFSfjsbLHDiPddLw3ldVSlG5Rsq5+qC/0Cf2Bj
         E2OQmYckkRCFzbRUYtjXqzXRRJVusnDO3HULX5Fl68A7uE6fMnOoUxHLGi+DkWjMjeKT
         +2xQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=XcP8gMPHq+4g5S9IXipK3NoVQLC9tuynC7jUDuJuNDo=;
        b=o9M0VXaEzEjNvzPgmCvgh4J09ygeGFKRxeJltyvsb7UoYGBuoB56eCC7B0xzNi+mIT
         8F3UWXdnWweCF14H0wcMXg21Fiq8nZxZLGmBy7+C5FWOFpuNyxV3vyXhT4V7AzOWzwAx
         8I7aJs/nEgBGt+Qm5Tr1GLsyP56P1Skfyozemq6Oe/M7d7VAPqPJYdyQMDL9Y0eyft95
         AMm8yJQcI2zu29FBBjvT89F+Ypbh9skTALfuED8u9BJHw87+9LEM5KgT28BLZFHB7qZ/
         /CGdtETAgOfgNZw47lAeiKMKNlniWiaSC2dX/JwB6cT4rR/fZAZVkqXYdniVURwR276N
         hX3g==
X-Gm-Message-State: AOAM533UEQ0UC8vT/NPfFfXxCpFkQgRDnUE0ac79Y22UmV8lTe3XaL9H
	WXzUghkTKHXPBPXMq4WBvKA=
X-Google-Smtp-Source: ABdhPJy/mUU08xnKmguxZQF+SbcRGyYoKAib74ZDZZqNqlQUBQl3zqEwBFy0tNrrbqAf7EiVBkJjQw==
X-Received: by 2002:a5d:4b42:: with SMTP id w2mr3816469wrs.248.1619823266550;
        Fri, 30 Apr 2021 15:54:26 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:e341:: with SMTP id a62ls3510147wmh.2.gmail; Fri, 30 Apr
 2021 15:54:25 -0700 (PDT)
X-Received: by 2002:a1c:20c4:: with SMTP id g187mr8362547wmg.18.1619823265702;
        Fri, 30 Apr 2021 15:54:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619823265; cv=none;
        d=google.com; s=arc-20160816;
        b=lRhtjkW28WHpv6nU71dsfsL9J0UkKJc/97SZeHknI7IkyzhNfmb13QZFJbFcaqQgSB
         Q6MqF+BlDtXzJVubwyWuErhn5SGdg2iTwbyu33vWp2zKH/KssJsauO9zzbAa5K81b3Bb
         Aqs+yW4ixO+kwsqMfZJfrXc2OXveOWaW8AK0kphmshQH/oU4z2EAqP5G+9Slmgm4WN53
         xEzKTbH+sxlIe8gCAvBDyoZ6xL148hgI3CX9FVbXrGzHaqYVentvSXTvf2Bhr0vewrXj
         dGYo9eh19ZzBubmnQ8zAHEr24BTJz73hYqBwwWK+4Xz30Du4IaJmctOKc8ysX91nO2Zw
         lnvQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=yXeedSSOrsmb6qb67Du7dd041/fe2IS6Q+d3Ob+OEEM=;
        b=UfWmsuxBR1Wivi7z9qgjvyizTElgyuEuZxYzYsUE1xRevg3C3+DIdi48o1IiXzE4bK
         N3V5Km1CY+A1FY95rlWwpAy0tijVTQBEZ4yO0HJxQ/7aXYlnlzFPIu7xcsjUxI9xyrQ5
         CAhcDlBSoKf0Lj++6WN4lRFFdEkt7jzMClCrBjTUfQKhDOhiu4qgkKfdIYzvRmZZ9eHs
         v+Gsxfg35pkYsPP3b4Ljj05S8MXS8aIFr9sAoD4YaJ3piymoFK2EeV4uUVOCygeZIDcT
         RAl5eX7a2E0q4ejTQm54fHinZl4hW0U1pyLs2hftFieWxAxs2PjvPQyLNf1Z7COFlq52
         haHg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=f7WaMElQ;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12f as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lf1-x12f.google.com (mail-lf1-x12f.google.com. [2a00:1450:4864:20::12f])
        by gmr-mx.google.com with ESMTPS id w2si636765wmb.4.2021.04.30.15.54.25
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 30 Apr 2021 15:54:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12f as permitted sender) client-ip=2a00:1450:4864:20::12f;
Received: by mail-lf1-x12f.google.com with SMTP id 2so19726999lft.4
        for <clang-built-linux@googlegroups.com>; Fri, 30 Apr 2021 15:54:25 -0700 (PDT)
X-Received: by 2002:a05:6512:159:: with SMTP id m25mr5029057lfo.73.1619823265217;
 Fri, 30 Apr 2021 15:54:25 -0700 (PDT)
MIME-Version: 1.0
References: <202104280827.lscZW8Xg-lkp@intel.com> <YIkgNWRJ+9BpEtvb@smile.fi.intel.com>
 <YIkhNjYTBgFpgcia@smile.fi.intel.com>
In-Reply-To: <YIkhNjYTBgFpgcia@smile.fi.intel.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 30 Apr 2021 15:54:14 -0700
Message-ID: <CAKwvOdk9wiGaSPMg6Ltj=aU4LvM0fnkgjWLNnTeLtpMJ1RYrMQ@mail.gmail.com>
Subject: Re: drivers/pinctrl/intel/pinctrl-intel.c:1663:14: warning: variable
 'dummy' set but not used
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Cc: kernel test robot <lkp@intel.com>, Arnd Bergmann <arnd@arndb.de>, kbuild-all@lists.01.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=f7WaMElQ;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12f
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

On Wed, Apr 28, 2021 at 1:47 AM Andy Shevchenko
<andriy.shevchenko@linux.intel.com> wrote:
>
> On Wed, Apr 28, 2021 at 11:43:33AM +0300, Andy Shevchenko wrote:
> > +Cc: Arnd and Nick
> >
> > (Seems like a clang bug)
> >
> > On Wed, Apr 28, 2021 at 08:10:34AM +0800, kernel test robot wrote:
> > > tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
> > > head:   e359bce39d9085ab24eaa0bb0778bb5f6894144a
> > > commit: 10c857f063fc63902160755a6e23fa594290c6d3 pinctrl: cherryview: Switch to use intel_pinctrl_get_soc_data()
> > > date:   8 months ago
> > > config: x86_64-randconfig-a005-20210426 (attached as .config)
> > > compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 87fc97169e7901dfe56ca0da0d92da0c02d2ef48)
> > > reproduce (this is a W=1 build):
> > >         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
> > >         chmod +x ~/bin/make.cross
> > >         # install x86_64 cross compiling tool for clang build
> > >         # apt-get install binutils-x86-64-linux-gnu
> > >         # https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=10c857f063fc63902160755a6e23fa594290c6d3
> > >         git remote add linus https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
> > >         git fetch --no-tags linus master
> > >         git checkout 10c857f063fc63902160755a6e23fa594290c6d3
> > >         # save the attached .config to linux build tree
> > >         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross W=1 ARCH=x86_64
> > >
> > > If you fix the issue, kindly add following tag as appropriate
> > > Reported-by: kernel test robot <lkp@intel.com>
> > >
> > > All warnings (new ones prefixed by >>):
> > >
> > > >> drivers/pinctrl/intel/pinctrl-intel.c:1663:14: warning: variable 'dummy' set but not used [-Wunused-but-set-variable]
> > >            const char *dummy;
> > >                        ^
> > >    1 warning generated.
> >
> > Seems to me a bug in clang. The variable is used to check if the body of the
> > loop should be executed or not.
>
> The only way of make this variable being unused is to avoid the loop being
> executed at all. This may be the case iff (mind to f:s) the supplied size
> parameter is 0, but how on earth clang can prove it (esp. taking into
> consideration that it's not true in real life)?!

Yep, the patch that enabled support for this warning in clang was
reported after multiple reports from projects; I'm working on helping
the author revise it based on cases it still flags from the kernel.
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdk9wiGaSPMg6Ltj%3DaU4LvM0fnkgjWLNnTeLtpMJ1RYrMQ%40mail.gmail.com.
