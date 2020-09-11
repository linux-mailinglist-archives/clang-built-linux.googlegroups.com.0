Return-Path: <clang-built-linux+bncBCT4VV5O2QKBBR4V5X5AKGQEHWDUFQQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23a.google.com (mail-oi1-x23a.google.com [IPv6:2607:f8b0:4864:20::23a])
	by mail.lfdr.de (Postfix) with ESMTPS id E3C06265D3D
	for <lists+clang-built-linux@lfdr.de>; Fri, 11 Sep 2020 12:00:40 +0200 (CEST)
Received: by mail-oi1-x23a.google.com with SMTP id l138sf3134200oib.17
        for <lists+clang-built-linux@lfdr.de>; Fri, 11 Sep 2020 03:00:40 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1599818439; cv=pass;
        d=google.com; s=arc-20160816;
        b=KRbZ/pGtzlkV9JSrZbYiHinOWo/7pYfNnb6Z/RS3uo3sf8nahIT4EDG6QL6SrBOxHf
         qvDApXJNJlrq0xnX5h/kHVByb2xheWRmn0bAR3CknsR/REytcU2QljNlut7oEaIfQXbE
         hAeqK8aCZAnHL+7/DEMuxLxe0fkXsRSJPJuOd09smsOSOR6EmvP6rZfpYPkO87mT8lWT
         V6sU/xjiD38Wi1G/Lx6YC6LExxzX2zSuxMu3T5+Jchmcax7JVvhQImPs3iMWe3j5O15Z
         9mMYtxyI9N9OnVssaueljLAy49QRqnsSZ+P8DO/KvHsTylrnZXsO4zUF5IGc5u0Q4RoK
         e0Qw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=bBImvp6VGqdnB0atW8cTTRBITaGxoKQl4KjnR/768qw=;
        b=qUTO+rCLnNwbucozV1ufCRbioRWiMHtgVSzg50jowpIsZwQZ2LNvw2ix2Q7axD1BnV
         +V8myHTZku9sD52vc3hSyAd0xeRt7W813YBEIePCQ2VuvjYpS3kROeL4hdO/Z2tHsiap
         gYuajGXbINCfqQpADUSI8Ukp3hOJ8alvWDAGzdshP/nUKzumRwVVy8czuVD2o0aUv/hv
         Y9///dAhfY39Y1fs1y7iHNrwQIWV3R0YcKNZt+zWBRKt+PqU23rdD9D6g150odSxVG0v
         ftHJj/AEZThBecYRsLyOt5Z40AebPm+zkMM9d9+o76r6dX+IdkXrpSwutiGGYNE5BR/Y
         1QSg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=e+SLX5N7;
       spf=pass (google.com: domain of andy.shevchenko@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=andy.shevchenko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=bBImvp6VGqdnB0atW8cTTRBITaGxoKQl4KjnR/768qw=;
        b=hsw1KLR+v5brnYAw7Jau+XV4CemTVECMFpb4ecEsDWvmlsY+Igxvpl3vl2LucJ6ALx
         lO/9T1YmHt7KvFL0eUn5Ei4la2ZAfXMcLCk0WA2safrZ6tmQzkAgCwFEl8vqomGPHR74
         eFEqsBDglECBCwG+gMTxAggmqFU4eP7lROk1vAJkDGGhmMSAagxZr9LXgquCSZPE259q
         VtrDUnZz8usqqy/LT6Ep3/Q9vdVdnWUl2CUQ3ubL2bwyu7M2RyasK4+097Wp/Nf4KEpt
         mO6PEMz+ywoJ8CuB6JW5WxrwacGKRoKzgOn68KxhskPHfkKm2UcotoXroic0amc3qLS4
         PIgw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=bBImvp6VGqdnB0atW8cTTRBITaGxoKQl4KjnR/768qw=;
        b=EUC/08tf5ITqLk7mODWTXhWpKqtt69wRLL62CGnqlwEVq6oJE7Jj38RRwaxgNDaftL
         8UrLXZ+3lb7RiLW6ArHAZ1khfNIoMnhlVjnbJPKx65fqB+kUEKwvjvNHHUsObGcscdF/
         XGklWP+DoHIw6WIvfDkcL2Bznam24c3URBxR11lv9NXF6A9rnEYyTR4lJvcHnU/lVwhN
         ORwce3/V+jEvpW+Yqzg3bJw5QcyEcvLFbVZ0oblpLKDW6Py88oH1+vYS0gcPTNjKqUfe
         ngUyBcxW61E/95Y4CCOLltWuQpKbXa01V1IRzet2uHhRE3lFdR01P2W3Fou7OUWBXvEa
         me5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=bBImvp6VGqdnB0atW8cTTRBITaGxoKQl4KjnR/768qw=;
        b=j/1LYnddwqYeF2Ygv/0W1fjpKmdA0/SkrM4KDHkHw08ODqFMinLErGLRtIjRsWiB7X
         Yiv1d5SYhxLSCcFaz+CnvZVPkaDOOK4AtUOezg5J32YRBkZaMdfduFqpR/CZyrca86Cy
         7PeXs4ZrNvjCmPcIduXsgOnBmU3ESO48NP7xfeqCqfY/IiBfs+p8GBlYtW08jfUeWGvK
         IXN4rHmgye8wfDT2IanoYuqfiH8O3szrXHtERlkHdZmbbMmEo05t8UonQ1TBHxY9KSn3
         tVdm8HAgcY0nFcIUq/Hp9spMcCe6w3EE+gxGrX9T2JxUU0aqTOMPZzhzuEi/vgGEmkX3
         nTYQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5334QO8HnqCyXJqYNIfZhDX8xK0lbRe50z3m2UQpBF0hZ8CFnpxT
	I47IbwKfap0t6br1tB9jdvY=
X-Google-Smtp-Source: ABdhPJyOcULdbhmJywV79LH9om8tHr22QjisgmkIebMjmF+tzeljBYYdqllDGAjVHB6wfY32hXBtwA==
X-Received: by 2002:a4a:e98e:: with SMTP id s14mr1071948ood.28.1599818439715;
        Fri, 11 Sep 2020 03:00:39 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:3a07:: with SMTP id h7ls318644oia.1.gmail; Fri, 11 Sep
 2020 03:00:39 -0700 (PDT)
X-Received: by 2002:aca:6708:: with SMTP id z8mr829992oix.6.1599818439292;
        Fri, 11 Sep 2020 03:00:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1599818439; cv=none;
        d=google.com; s=arc-20160816;
        b=zFN3WWbmL2kqXkAdRPOvZBhYt2vkUS+vET9r18GN73OukskxmBatcGlMlz+JP3Qd3u
         WYqp7bBWl2Z6SNvFDmeDG8NDcAEbQwn1rsTcU9Io+bx8a47bY5xz3QQsnjwuAPClWB7x
         /jYxLJw/paXWumFQ65jCiXQWVG0k4C7Qooh3wKR8iRTYjV5Kp6zaMC4P8kNoK5VC+Aj0
         Rnm/ICFOvgiylxaLL/J45xuG//pXkO2av23CkTUv0FFDce6MqSxQwxAdxnfm+4bfk8xD
         aPAgLb52BTmpF2pR2U+NsqiV8IsUI8bq7tY2HyzkWttz6iDMPRyTI93sW4AQ2ebhmsdU
         P4Mw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=GoAtrZ0WZLafyDrsqbb25+q1xnkiC+KB6cpJIeZIYJY=;
        b=voHFW+IsqcTRvy0n3dPAdWMyci+asevxRGW9ZMNVNZADG+IXR6aljFMPw2CVjdvbK5
         PAhQCzVo70VaTYi6wwGELvbS/jji6Qi9fk6eb9o7VyBrVoUrWAYjmBRAITYRBBqcyZiT
         i3gcEuIKloG4odNhha1k4Ss3qiFq01ma2U7/BDPwlx7563MwBOkpJIBYkHBWI2u1RVne
         gW/WCuUPMC9q+UVScK90swTbd2guYsRq47EpEy8M1joc8sQme9jfVma2aOh2KAorVWQh
         m856IabEVBTReUDu3NLYebOdIE9cZmFYgvzzm9+UYFyGo+4hgKgv8n3Mw/J03X6WlaBD
         B0RA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=e+SLX5N7;
       spf=pass (google.com: domain of andy.shevchenko@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=andy.shevchenko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com. [2607:f8b0:4864:20::441])
        by gmr-mx.google.com with ESMTPS id t74si93455oot.1.2020.09.11.03.00.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Sep 2020 03:00:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of andy.shevchenko@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) client-ip=2607:f8b0:4864:20::441;
Received: by mail-pf1-x441.google.com with SMTP id w7so6946231pfi.4
        for <clang-built-linux@googlegroups.com>; Fri, 11 Sep 2020 03:00:39 -0700 (PDT)
X-Received: by 2002:aa7:9517:: with SMTP id b23mr1422388pfp.21.1599818438511;
 Fri, 11 Sep 2020 03:00:38 -0700 (PDT)
MIME-Version: 1.0
References: <202009101830.GfC9Ewv4%lkp@intel.com> <b2bfc310-481e-92c5-9426-74395b24c4be@ti.com>
 <7ccb1302-940c-e731-0d90-24421f6aa735@ti.com>
In-Reply-To: <7ccb1302-940c-e731-0d90-24421f6aa735@ti.com>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Fri, 11 Sep 2020 13:00:20 +0300
Message-ID: <CAHp75VdAAQ+gKdmkU5vzQc6JpoVRN_R9DtfnDHRbxt4MgV4RBA@mail.gmail.com>
Subject: Re: [linux-next:master 4238/6654] include/linux/dmaengine.h:1576:
 undefined reference to `dma_request_chan'
To: Peter Ujfalusi <peter.ujfalusi@ti.com>
Cc: kernel test robot <lkp@intel.com>, kbuild-all@lists.01.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Vinod Koul <vkoul@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: andy.shevchenko@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=e+SLX5N7;       spf=pass
 (google.com: domain of andy.shevchenko@gmail.com designates
 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=andy.shevchenko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Fri, Sep 11, 2020 at 9:49 AM Peter Ujfalusi <peter.ujfalusi@ti.com> wrote:
> On 10/09/2020 14.18, Peter Ujfalusi wrote:
> > On 10/09/2020 13.46, kernel test robot wrote:
> >> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git master
> >> head:   7ce53e3a447bced7b85ed181c4d027e93c062e07
> >> commit: 7547dbd3b198f309aaff54e3528898a8a196faff [4238/6654] dmaengine: Mark dma_request_slave_channel() deprecated
> >> config: arm64-randconfig-r025-20200909 (attached as .config)
> >> compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project 0a5dc7effb191eff740e0e7ae7bd8e1f6bdb3ad9)

^^^

> >> reproduce (this is a W=1 build):
> >>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
> >>         chmod +x ~/bin/make.cross
> >>         # install arm64 cross compiling tool for clang build
> >>         # apt-get install binutils-aarch64-linux-gnu
> >>         git checkout 7547dbd3b198f309aaff54e3528898a8a196faff
> >>         # save the attached .config to linux build tree
> >>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=arm64
> >
> > I'm not sure what is wrong, but can not reproduce it with GCC.
>
> I have tried with clang/llvm (10.0.1) without luck to reproduce.

^^^

12.0.0 != 10.0.1

> >> If you fix the issue, kindly add following tag as appropriate
> >> Reported-by: kernel test robot <lkp@intel.com>
> >>
> >> All errors (new ones prefixed by >>):
> >>
> >>    aarch64-linux-gnu-ld: warning: -z norelro ignored
> >>    aarch64-linux-gnu-ld: fs/orangefs/orangefs-debugfs.o: in function `orangefs_debug_read':
> >>    fs/orangefs/orangefs-debugfs.c:375: undefined reference to `stpcpy'
> >
> > Is this also caused by the blaimed patch?

I think this is a part of the long (recent) discussion about clang
optimisations.

> >>    aarch64-linux-gnu-ld: security/apparmor/lsm.o: in function `param_get_mode':
> >>    security/apparmor/lsm.c:1559: undefined reference to `stpcpy'
> >>    aarch64-linux-gnu-ld: security/apparmor/lsm.o: in function `param_get_audit':
> >>    security/apparmor/lsm.c:1530: undefined reference to `stpcpy'
> >>    aarch64-linux-gnu-ld: drivers/tty/tty_io.o: in function `tty_line_name':
> >>    drivers/tty/tty_io.c:1139: undefined reference to `stpcpy'
> >>    aarch64-linux-gnu-ld: drivers/tty/tty_io.c:1139: undefined reference to `stpcpy'
> >>    aarch64-linux-gnu-ld: drivers/tty/tty_io.o:drivers/tty/tty_io.c:1139: more undefined references to `stpcpy' follow
> >>    aarch64-linux-gnu-ld: drivers/tty/serial/fsl_lpuart.o: in function `lpuart_remove':
> >>    drivers/tty/serial/fsl_lpuart.c:2663: undefined reference to `dma_release_channel'
> >>    aarch64-linux-gnu-ld: drivers/tty/serial/fsl_lpuart.c:2666: undefined reference to `dma_release_channel'
> >
> > #ifdef CONFIG_DMA_ENGINE
> > struct dma_chan *dma_request_chan(struct device *dev, const char *name);
> > #else
> > static inline struct dma_chan *dma_request_chan(struct device *dev,
> >                                               const char *name)
> > {
> >       return ERR_PTR(-ENODEV);
> > }
> > #endif
> >
> > static inline struct dma_chan * __deprecated
> > dma_request_slave_channel(struct device *dev, const char *name)
> > {
> >       struct dma_chan *ch = dma_request_chan(dev, name);
> >
> >       return IS_ERR(ch) ? NULL : ch;
> > }
> >
> > And in the included config we have:
> > # CONFIG_DMADEVICES is not set
> > CONFIG_DMA_ENGINE=y
>
> The .config get corrected all the time and the CONFIG_DMA_ENGINE goes
> away, I can not make it stick.


-- 
With Best Regards,
Andy Shevchenko

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAHp75VdAAQ%2BgKdmkU5vzQc6JpoVRN_R9DtfnDHRbxt4MgV4RBA%40mail.gmail.com.
