Return-Path: <clang-built-linux+bncBCQJP74GSUDRBBO27GDQMGQE5R2UJAA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb40.google.com (mail-yb1-xb40.google.com [IPv6:2607:f8b0:4864:20::b40])
	by mail.lfdr.de (Postfix) with ESMTPS id 41A693D54E1
	for <lists+clang-built-linux@lfdr.de>; Mon, 26 Jul 2021 10:06:31 +0200 (CEST)
Received: by mail-yb1-xb40.google.com with SMTP id g11-20020a25ae4b0000b02905792fb55b0bsf1797942ybe.9
        for <lists+clang-built-linux@lfdr.de>; Mon, 26 Jul 2021 01:06:31 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627286790; cv=pass;
        d=google.com; s=arc-20160816;
        b=vCN3qWqU55C2Uw7NlYQsZ4ven0SITNZ48jfuQ8s2KZ2+g0Rh6GizPYWjep4yXQ5+Bt
         ZIUfZu3wnIpxbQsyvyCGHVHlra8LqDZnCz9boOstBUwqeJKWDNsdNHp3t1gMVnyw2/3n
         NsA14y5m1E4SG0l6JbsFr2W1YPbGrxwFnPVgwsXZa6K2qh2d2Bb5W3hV/p/pTYV4EEM1
         g9gsKhHiOuyRmX6jPsljF8wMLpUxh7QUNRsb/Katt2ix+v+PXJaHRjeKQ4hAR1QVlGjK
         ZX8ejCwIXgUiARAtpxCnoCrXQeTr1x5C3RyRMik0w3DfQT1Og20/EFiVdJEmArxGOS4J
         5NjQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=CwUGnJ8+aBfSSDgKOzb01bWQRqufUxKS29GnCcr3uKA=;
        b=gWF+dgpo+iAhTM50W3d9OHgyE2BPsOZfU5Tf1Olnnf7WGfG5S4J4EPYaiGi4XEIZCc
         7uf9lVhIX792pcO4REjSTbZZyxJghWvdXUsVgyI585ozSDpZLCbIWaH/D9uMeXawUFG5
         MVBZqxVeUSlmwrUx81o1/bNO0tGFXxEwfALTPaeELvl59RwiAREqtFsq1EmPHadldM7I
         RiahCOo/5eLLB36PXgEWoUigtgSSWW8cabojh3WSwcNyH+Mz28op7PstSJLMlTZOZ/Mm
         6LKRAnc5BCk6ZYfV+q0mbK6Kt+7na1kuoo1C1HODasbKKAlLIw7TBJtH/wP3AHmptwbi
         mMfw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of geert.uytterhoeven@gmail.com designates 209.85.217.54 as permitted sender) smtp.mailfrom=geert.uytterhoeven@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=CwUGnJ8+aBfSSDgKOzb01bWQRqufUxKS29GnCcr3uKA=;
        b=tkimeIGS0cXltgKwziR/tRSkCv0mE8XnGzJkVdqs2QPhflOFYc2qcZHW/WEt7m/+1M
         Lm7xiiIkNou5LfR7Q0JJUoMCzDPvJ38vAzuubDN4sSlHVZNH7D2cK7i9n6elIEya4bJP
         F4cMn4w4se50qXxm7p8N21pZ+pw/OAB4mGYl0bo38KE0qxZ39XGJmZVOxQIDfLW42WMl
         /y6zxYu7+Xvi+2ShwX9/J3ub1u75+5fkax/NOHEb/NNB/kSsfaCZwKWFmTmvXhWvh7j3
         aabCFT8aCljCmU+60/ScOCF2hHpkxESJ+oVWL/13P4+50vOqKBdRNxOw7Bf5i8Y/o4Rb
         VsRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=CwUGnJ8+aBfSSDgKOzb01bWQRqufUxKS29GnCcr3uKA=;
        b=VjHYbnUMAkAyeyZ7bTj6QT42P9hqdEkGHDIRmgXsrSJyhfF/9QcFRdnrPZqvCojQj+
         AtT3d3KkPhA3scItq9uHMKzPqyNrhvSaaAo8tNTiqeemRbE0/ZP7D6xzBpUjhP11NSMI
         Sg4FiKEXmRpz62P3lDEWp1qeu+ORUCOGCyCF8hssCz/vcUcvZu3uMqAerUPmVQqdnAK5
         xrCUi3+xHxK5NVhxSlb9iuqVgg9tjhSnCq72ve52oOGgsrLoaqFmzNognvz2A9hV/+vr
         HeUWN/4JfK0ckycLllWKIKhb0f1UZYRHl2JtXFYdUTlKBikWbQqDGqTl2piy0Lli+O1p
         Je7Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531Orug+dTOLD+wPiTXPKqaUyz+wu6o2TWVXh1b+4khoWQJ3mlM4
	ay1cpzm2tZgk7DO0bCJydfA=
X-Google-Smtp-Source: ABdhPJzswHyowGUE8ZXINbm7Y8R/7j4ybX57mUl6sfzha4QbIdGxM0FaEZLJRl0Sd4400xyeTAgMTw==
X-Received: by 2002:a25:b113:: with SMTP id g19mr22467953ybj.42.1627286790175;
        Mon, 26 Jul 2021 01:06:30 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:9307:: with SMTP id f7ls119643ybo.10.gmail; Mon, 26 Jul
 2021 01:06:29 -0700 (PDT)
X-Received: by 2002:a25:83cd:: with SMTP id v13mr2250540ybm.325.1627286789591;
        Mon, 26 Jul 2021 01:06:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627286789; cv=none;
        d=google.com; s=arc-20160816;
        b=GpEHDDCLLoAn5/QPxZZ5Db/ZN4Q+MpuFjk6El9cmwZMZgk6hlaFCPDQLdUBkKi/5bf
         VdrLyAloLOaH7rpQdG45bQihO5vlMcGD1lWKCkytPv4GzH4WkGR2QICuq72ozMsLou9n
         2QGgao+ZVtr8pzewyMuQHFS8S187e7hbCrj25TWzU3SXXFjgTzi5j4cPvB9JoIOmmyWN
         Mh9b7Tnf8FFM4SfZTyn5iptVdgtMHWBmC3uNHY/5uIGWTRCSMZpBwz8q/1Oa3mIkZL4e
         0VBeXDmi63KEhIO8hQac9DxW0OMQJz51rV1vK+6XSonZSoXJS6vSJ/CTk5SwFWoXEpla
         Bu6g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version;
        bh=gp9OmnOPDAt4fp1/ogFdO2jZWIyyUuaqMagtlSZFSwY=;
        b=tYT9q4kam73Ig1G0KI4VnknJxL87TzyUR00t24ZM7NrNHOv9BnyXggq9JpaSqYh6kO
         31eBEbqwtznMLzuWpZoLqu58yPL3QaSpMWhgpS7uyTfOeahIsjhBEE1Qe4I3Wff2vSpq
         6G4XpG2Z3yb2i3nEjA8/V5v5jZ/gTmAqecR3ZRuqZVnBCaphbtMKH5+gtQvLS8QWyulU
         yt21aItWsv0qGGW1xPmQ3khoNHzXXwAS2Xu1ruGUCmxwJKXvDxWKIVvzwqe8hZpziLJn
         5jsgd/TjeFNGyewL8gFd5vtZCDYfF8sJVCQXXliO30QgGyzpVstvHBXrFci3gJYZ7Z/+
         rw2g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of geert.uytterhoeven@gmail.com designates 209.85.217.54 as permitted sender) smtp.mailfrom=geert.uytterhoeven@gmail.com
Received: from mail-vs1-f54.google.com (mail-vs1-f54.google.com. [209.85.217.54])
        by gmr-mx.google.com with ESMTPS id t3si2406330ybu.3.2021.07.26.01.06.29
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 26 Jul 2021 01:06:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of geert.uytterhoeven@gmail.com designates 209.85.217.54 as permitted sender) client-ip=209.85.217.54;
Received: by mail-vs1-f54.google.com with SMTP id bg4so4762789vsb.6
        for <clang-built-linux@googlegroups.com>; Mon, 26 Jul 2021 01:06:29 -0700 (PDT)
X-Received: by 2002:a67:3c2:: with SMTP id 185mr11218083vsd.42.1627286789226;
 Mon, 26 Jul 2021 01:06:29 -0700 (PDT)
MIME-Version: 1.0
References: <20210721194951.30983-3-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <202107251336.iD47PRoA-lkp@intel.com> <20210725094605.gzhrbunkot7ytvel@pengutronix.de>
In-Reply-To: <20210725094605.gzhrbunkot7ytvel@pengutronix.de>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 26 Jul 2021 10:06:18 +0200
Message-ID: <CAMuHMdUuFdc5JJfdsvFTfKPh1Z+o0iTabHLso4U6DUHRJowD6g@mail.gmail.com>
Subject: Re: [PATCH v3 2/3] can: rcar_canfd: Add support for RZ/G2L family
To: Marc Kleine-Budde <mkl@pengutronix.de>
Cc: kernel test robot <lkp@intel.com>, Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>, 
	Rob Herring <robh+dt@kernel.org>, Fabrizio Castro <fabrizio.castro.jz@renesas.com>, 
	Wolfgang Grandegger <wg@grandegger.com>, "David S. Miller" <davem@davemloft.net>, 
	Jakub Kicinski <kuba@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>, linux-can@vger.kernel.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, kbuild-all@lists.01.org, 
	netdev <netdev@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: geert@linux-m68k.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of geert.uytterhoeven@gmail.com designates 209.85.217.54
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

Hi Marc,

On Sun, Jul 25, 2021 at 11:46 AM Marc Kleine-Budde <mkl@pengutronix.de> wrote:
> On 25.07.2021 13:39:37, kernel test robot wrote:
> > [auto build test WARNING on renesas-devel/next]
> > [also build test WARNING on v5.14-rc2 next-20210723]
> > [cannot apply to mkl-can-next/testing robh/for-next]
> > [If your patch is applied to the wrong git tree, kindly drop us a note.
> > And when submitting patch, we suggest to use '--base' as documented in
> > https://git-scm.com/docs/git-format-patch]
> >
> > url:    https://github.com/0day-ci/linux/commits/Lad-Prabhakar/Renesas-RZ-G2L-CANFD-support/20210722-035332
> > base:   https://git.kernel.org/pub/scm/linux/kernel/git/geert/renesas-devel.git next
> > config: arm64-randconfig-r031-20210723 (attached as .config)
> > compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 9625ca5b602616b2f5584e8a49ba93c52c141e40)
> > reproduce (this is a W=1 build):
> >         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
> >         chmod +x ~/bin/make.cross
> >         # install arm64 cross compiling tool for clang build
> >         # apt-get install binutils-aarch64-linux-gnu
> >         # https://github.com/0day-ci/linux/commit/082d605e73c5922419a736aa9ecd3a76c0241bf7
> >         git remote add linux-review https://github.com/0day-ci/linux
> >         git fetch --no-tags linux-review Lad-Prabhakar/Renesas-RZ-G2L-CANFD-support/20210722-035332
> >         git checkout 082d605e73c5922419a736aa9ecd3a76c0241bf7
> >         # save the attached .config to linux build tree
> >         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=arm64
> >
> > If you fix the issue, kindly add following tag as appropriate
> > Reported-by: kernel test robot <lkp@intel.com>
> >
> > All warnings (new ones prefixed by >>):
> >
> > >> drivers/net/can/rcar/rcar_canfd.c:1699:12: warning: cast to smaller integer type 'enum rcanfd_chip_id' from 'const void *' [-Wvoid-pointer-to-enum-cast]
> >            chip_id = (enum rcanfd_chip_id)of_device_get_match_data(&pdev->dev);
> >                      ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> >    1 warning generated.
>
> Seems we need the cast (uintptr_t), that I asked you to remove. Can you

Bummer, I had seen your comment while reading email on my phone,
but forgot to reply when I got back to my computer...

> test if
>
> | chip_id = (enum rcanfd_chip_id)(uintptr_t)of_device_get_match_data(&pdev->dev);
>
> works?

Just

    chip_id = (uintptr_t)of_device_get_match_data(&pdev->dev);

should be fine.

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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAMuHMdUuFdc5JJfdsvFTfKPh1Z%2Bo0iTabHLso4U6DUHRJowD6g%40mail.gmail.com.
