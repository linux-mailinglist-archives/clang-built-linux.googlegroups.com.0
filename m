Return-Path: <clang-built-linux+bncBDYJPJO25UGBBHPM32CQMGQERSYSSGA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x538.google.com (mail-ed1-x538.google.com [IPv6:2a00:1450:4864:20::538])
	by mail.lfdr.de (Postfix) with ESMTPS id 6636239904C
	for <lists+clang-built-linux@lfdr.de>; Wed,  2 Jun 2021 18:47:26 +0200 (CEST)
Received: by mail-ed1-x538.google.com with SMTP id s18-20020a0564020372b029038febc2d475sf1763327edw.3
        for <lists+clang-built-linux@lfdr.de>; Wed, 02 Jun 2021 09:47:26 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1622652446; cv=pass;
        d=google.com; s=arc-20160816;
        b=u7F4CVCAsqkbfo4BSiSnnThgXk/4yn4ELrJMmL/6v1D/NEQGhJCRUvbubp1ORozKOT
         W3kAMrrDT4/r29MikPKjWXfqYUxEY4vztCGw8G+ypXw6vsQ8qj9r/8QipE1+Rvh6DmYg
         rf0IcvDXAzhXBmpwXzadpfVjl0My8zYZ0cmlHHc5EnM7mT2s9YjsrrNpdtNwy9GRgV/T
         uUwVoRLI4UUCRflPDjvbOJ2yCY/nirvapmvq80AssO65xYxFbUd+0648QEsmD2oDAliQ
         5x85kwms8b0ordItZvRTF+YxRRaJ8gzdtzC1GAUXsvSwTvcD+51jnNPKLMAbGsbr7aog
         YxXA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=4WmZYEVz2i6mhsq4p7XPHGj8iCEnMzbUrZBpmj05es0=;
        b=ihXyJ1roRYTNjRNfsa58Jb+5bBdnG+ax+7mwVO5h/fQSB482pBuo0cIbJAWIBk8XEj
         8xVFvBnCg7J2TM8ARnn3aBzx2IvJqEjiJy9Q8CpsqlfxWrqv0npJRhN4cRf7Tsa947wx
         8bQyjSb4iPPgw18/mxhOwU4wvuKqRBhQN24850Pv2dMT5KmarUHOwLNpTySqURWC3tIn
         S07sipFZ2/Leu7l2+fB2ZGQ1/WHrx89zIGqCfg7Fit9Edp2fCDH+LTOk9wm/VsBMVqt0
         eUZ59TQKCKzvZalwKZRiKxSD+vgQ5758uFHEcwZPoZRuhOp5GV7h2iMjmaBqweV+RI0L
         Ptag==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=YwuTlqMN;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12e as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4WmZYEVz2i6mhsq4p7XPHGj8iCEnMzbUrZBpmj05es0=;
        b=M/JdURwbolv4gKpEpD+2QXbsSK/H2xMV3yI8ejCEIBN7CDHn7yxxVb9vzFtA/4Ovhl
         XCF00Rpqpn17T/GvKqQ92GRu9TP/INlJRx1RjI2aDxzM0o+Y5CQZIBIoa3ORNiMFQaIE
         wm3Vhp7twR4fQSaEghxgwDjup8Acf6K24WkatGmFyH47FOUUaulV32ZIPfj7U/A0kbqs
         bB6IzKpyNJlGQEvPOO4GrpXCZW2THVDZ7HMU28O2i2Grw4JcEVP/cb79XKPd5XzV5mPh
         r1EMT0SGko41AYlsbHgVWozWSNk27Ayx+dxtKMQ3ObekmHi4+0sLi89IcV1zFjTqx14q
         31kQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4WmZYEVz2i6mhsq4p7XPHGj8iCEnMzbUrZBpmj05es0=;
        b=NmsuRG06Dmnku1W5PPyFBw5I4HKMMbwnrUeoxh1E2nm2qzdelDLYfSk/aWYWQn2/mo
         UlrM+3xcBSlLsin9W354DS6SYSgphZ4l7ebmLYZgsHMPoBEy62exrHzNlhGuZurMsPkI
         6KUMAbLq6Js27SRI2b3CI3I1xNTCexHqoqpYzbde/cr4/GWi8YSfEKGFSs02bJDGb/Hq
         +uo+mJuYXTbBgIBj8sxBIt50CoahzAczMyxtHgQe+iF4J/Zz4rNg49/dnTFG1YFn2Des
         ivpa/4P9bPgSlr7sZnt2T4BPI6saDNhnm6JC4hCPexstaJNymKz1JuOjP9ZVwkDRUIQ0
         yM4w==
X-Gm-Message-State: AOAM531PTXTC6I6FBJP4HJKWzO31MTxt4zOknFm/Ya1eVcCquFKwII4h
	GzIoUcZNcw4sbwvoCLys/Uo=
X-Google-Smtp-Source: ABdhPJwrAV6HBWhZtDW33mJ6n3b9zD7OeftF91KwFtGp7FwlLcw/Cos8ZsYnZWbL6wFsBLXaqxfWwg==
X-Received: by 2002:a17:906:af7b:: with SMTP id os27mr20431243ejb.154.1622652446161;
        Wed, 02 Jun 2021 09:47:26 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:907:94d4:: with SMTP id dn20ls191262ejc.6.gmail; Wed, 02
 Jun 2021 09:47:25 -0700 (PDT)
X-Received: by 2002:a17:906:f298:: with SMTP id gu24mr16654172ejb.452.1622652445275;
        Wed, 02 Jun 2021 09:47:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1622652445; cv=none;
        d=google.com; s=arc-20160816;
        b=xKx0LRywlknzqXJyEriNAb3IEwyhCgLe75T6WV10S5IWstVteIOXOUnl0AlInzcpjC
         sZR467Oa9SgnNzzH0h8QJ+cNsroFma857hijLvKOTMp0bwiaLbXLKaHaNcZz6zFkJndh
         FJ/pKi/M7wJSxPNZtp7pCcIfmmva9+oyzDmVQt1eqg9rj7ZSnUQR6lOSUaBHiD9xqVJn
         SuYalmB39YuYS0X9SnsZEaSLfTJB66qrP2Z1Y01Rc0EWKCtSkwRKWOZhh/VJ3rg0IUTd
         UEXD2xziRveawn2ohcX+UQEz1TN23MiG6r9puiLfWGlvEq/rGJN+wWfvwL01RrJso3Zk
         0HZw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=MK1rB1Nu3kFxcK1GfwF5vMS0Up2k4DnL/CR4vainsR0=;
        b=H/QsbqreOqLywDw2BixkjUyuKyU5nIoKIGnekgrkqKzfwjvQIdQAECwRFY2/USEUCR
         n2GLQx5UWOR3NOuAjcBHkolul8qr/vMUGxAUMlz6uAtKUEJI8nfPer2WpsQ4q3RUQO/9
         jhEO5JmBYR4EK5CG9PXcKxw3TIhCq3biXMivL5v1dQB59jIWIJf9NKATSce1ZCrFMW3L
         ZnihREgjMMbkw2761eSFQlZ7pgiSks3s/qxokeHwL0/OSj0W0XnBqT2ZOxMpU3XXQLAR
         WAG4TAdZo3gh7odjOzCjzEPpOn937C0lamBotRyMi2twtJAnCgZ2Q5Pk61vfGE6F9HAy
         0oGA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=YwuTlqMN;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12e as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lf1-x12e.google.com (mail-lf1-x12e.google.com. [2a00:1450:4864:20::12e])
        by gmr-mx.google.com with ESMTPS id m7si28546edq.5.2021.06.02.09.47.25
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 02 Jun 2021 09:47:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12e as permitted sender) client-ip=2a00:1450:4864:20::12e;
Received: by mail-lf1-x12e.google.com with SMTP id r198so1060123lff.11
        for <clang-built-linux@googlegroups.com>; Wed, 02 Jun 2021 09:47:25 -0700 (PDT)
X-Received: by 2002:a19:f706:: with SMTP id z6mr8965054lfe.122.1622652444730;
 Wed, 02 Jun 2021 09:47:24 -0700 (PDT)
MIME-Version: 1.0
References: <202106021822.Do0Ih08d-lkp@intel.com> <CAMhs-H8qyOKQmPtChYO+jfC+Zmj8U9yGeZJORUx14MzyLeT5QA@mail.gmail.com>
In-Reply-To: <CAMhs-H8qyOKQmPtChYO+jfC+Zmj8U9yGeZJORUx14MzyLeT5QA@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 2 Jun 2021 09:47:13 -0700
Message-ID: <CAKwvOd=3ootX9j=1mY3dpmGHw_7yhZkFnmgFCRQqJUaLMZqvZQ@mail.gmail.com>
Subject: Re: [linux-next:master 1932/6331] drivers/phy/ralink/phy-mt7621-pci.c:341:34:
 warning: unused variable 'mt7621_pci_phy_ids'
To: Sergio Paracuellos <sergio.paracuellos@gmail.com>
Cc: kernel test robot <lkp@intel.com>, kbuild-all@lists.01.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Linux Memory Management List <linux-mm@kvack.org>, Vinod Koul <vkoul@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=YwuTlqMN;       spf=pass
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

On Wed, Jun 2, 2021 at 3:38 AM Sergio Paracuellos
<sergio.paracuellos@gmail.com> wrote:
>
> Hi,
>
> On Wed, Jun 2, 2021 at 12:27 PM kernel test robot <lkp@intel.com> wrote:
> >
> > tree:   https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git master
> > head:   ed5d0667a6540293c9485dd95babb5f1e241226a
> > commit: 28dcfba1a0d622b0330ae3f4a9d7c7f2c245de7a [1932/6331] phy: ralink: Kconfig: enable COMPILE_TEST on mt7621-pci-phy driver
> > config: x86_64-randconfig-r016-20210602 (attached as .config)

^ randconfig

> > compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project db26cd30b6dd65e88d786e97a1e453af5cd48966)
> > reproduce (this is a W=1 build):
> >         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
> >         chmod +x ~/bin/make.cross
> >         # install x86_64 cross compiling tool for clang build
> >         # apt-get install binutils-x86-64-linux-gnu
> >         # https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?id=28dcfba1a0d622b0330ae3f4a9d7c7f2c245de7a
> >         git remote add linux-next https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git
> >         git fetch --no-tags linux-next master
> >         git checkout 28dcfba1a0d622b0330ae3f4a9d7c7f2c245de7a
> >         # save the attached .config to linux build tree
> >         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64
> >
> > If you fix the issue, kindly add following tag as appropriate
> > Reported-by: kernel test robot <lkp@intel.com>
> >
> > All warnings (new ones prefixed by >>):
> >
> >    drivers/phy/ralink/phy-mt7621-pci.c:277:4: warning: cast to smaller integer type 'unsigned int' from 'void *' [-Wvoid-pointer-to-int-cast]
> >                     (unsigned int)mt7621_phy->port_base, mt7621_phy->has_dual_port);
> >                     ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> >    include/linux/dev_printk.h:118:33: note: expanded from macro 'dev_info'
> >            _dev_info(dev, dev_fmt(fmt), ##__VA_ARGS__)
>
> Already fixed in:
> https://git.kernel.org/pub/scm/linux/kernel/git/phy/linux-phy.git/commit/drivers/phy/ralink/phy-mt7621-pci.c?h=next&id=652a6a2e3824ce2ebf79a2d5326940d05c4db036
>
> >                                           ^~~~~~~~~~~
> > >> drivers/phy/ralink/phy-mt7621-pci.c:341:34: warning: unused variable 'mt7621_pci_phy_ids' [-Wunused-const-variable]
> >    static const struct of_device_id mt7621_pci_phy_ids[] = {
> >                                     ^
>
> Mmmm... This one is used through MODULE_DEVICE_TABLE macro... Am I
> missing something??

Pretty sure there's a config in MODULE_DEVICE_TABLE that's being
disabled by the randconfig; the definition of mt7621_pci_phy_ids
should also be behind preprocessor checks for that.

>
> >    2 warnings generated.
> >
> >
> > vim +/mt7621_pci_phy_ids +341 drivers/phy/ralink/phy-mt7621-pci.c
> >
> > d87da32372a03c Sergio Paracuellos 2020-11-21  340
> > d87da32372a03c Sergio Paracuellos 2020-11-21 @341  static const struct of_device_id mt7621_pci_phy_ids[] = {
> > d87da32372a03c Sergio Paracuellos 2020-11-21  342       { .compatible = "mediatek,mt7621-pci-phy" },
> > d87da32372a03c Sergio Paracuellos 2020-11-21  343       {},
> > d87da32372a03c Sergio Paracuellos 2020-11-21  344  };
> > 8145dcb07d0c8b Sergio Paracuellos 2020-12-01  345  MODULE_DEVICE_TABLE(of, mt7621_pci_phy_ids);
> > d87da32372a03c Sergio Paracuellos 2020-11-21  346
> >
> > :::::: The code at line 341 was first introduced by commit
> > :::::: d87da32372a03ce121fc65ccd2c9a43edf56b364 phy: ralink: Add PHY driver for MT7621 PCIe PHY
> >
> > :::::: TO: Sergio Paracuellos <sergio.paracuellos@gmail.com>
> > :::::: CC: Vinod Koul <vkoul@kernel.org>
> >
> > ---
> > 0-DAY CI Kernel Test Service, Intel Corporation
> > https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
>
> Best regards,
>     Sergio Paracuellos
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAMhs-H8qyOKQmPtChYO%2BjfC%2BZmj8U9yGeZJORUx14MzyLeT5QA%40mail.gmail.com.



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3D3ootX9j%3D1mY3dpmGHw_7yhZkFnmgFCRQqJUaLMZqvZQ%40mail.gmail.com.
