Return-Path: <clang-built-linux+bncBDYJPJO25UGBBYODYGCAMGQE5YUCGRI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43c.google.com (mail-wr1-x43c.google.com [IPv6:2a00:1450:4864:20::43c])
	by mail.lfdr.de (Postfix) with ESMTPS id 91C873721E6
	for <lists+clang-built-linux@lfdr.de>; Mon,  3 May 2021 22:49:37 +0200 (CEST)
Received: by mail-wr1-x43c.google.com with SMTP id 91-20020adf94640000b029010b019075afsf4601497wrq.17
        for <lists+clang-built-linux@lfdr.de>; Mon, 03 May 2021 13:49:37 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620074977; cv=pass;
        d=google.com; s=arc-20160816;
        b=vXqzw78yNYgMRCZF4AiScYo9B19GXHzwsvpJxceVa8cTo4YAisTiunEPHnU/w/F6sP
         T690lJT17D31Acod7ly6kf/QGwDjJHp9m9+wjm/3Sck4WDHA61TRjtnsVHe9uozn3Skd
         sdOAOEFsIVrgMYLwzvflczFA+raR+/7BTCf60azPLEQUYz0VifEh9QIo53CrY6ulubw/
         4PckdkJEwSkAVney6nr6dCxzHtzlJ9cpFNj2aW0MKAlBkSRpLGPXmOe+yFsH/cosIgvc
         MB2mYyRCECKevvFYdHeYC1V8AsOEYB+5LDyE21eRHCenKPbsJWeAz2Nr1BzG+3g3GFoC
         35PA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=cxoQ43mZCLtltH9/KdbEAafPWZ1kVQl47LjTHCx3C7Y=;
        b=zKQ5UsZa1mPg5EmxsX94xaPZMYeZpG3Hk/dftVwoaAr9g/kxIQEX1A3aRdT5iW1oMz
         9MbeJmOvewocKBh4ilpHEiI17RckQVcxSmWB6RZlyUJ1XC5Ey3n/D4wnvbyrXufVC9G6
         CrPrb58HMnmQ6EzyFI2PQ8J9ZCJ4M3pX0gfJMFj2znsAx0kRui0QMc7SF1uP84+m9gh2
         fO5qJI7p/c52LVOQHGoItagewQG/yJEGnEHlx7iEnq0aZxmXq8eSvi8I85XshJ4bIq3/
         0NFL1XuBQmDxMu2baJqjkHvP0Y8LDitBB8Xx/5Hqp62ToAdEwCnvS1R67mPGCmyAbYrn
         HMMg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=nEIWZsBj;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::135 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=cxoQ43mZCLtltH9/KdbEAafPWZ1kVQl47LjTHCx3C7Y=;
        b=HwlxB5xoO/bK0kPRlOHgZZ8iFJRup9ovr4E6m8trJfh49caRf420Lem+EfQ8Vh/0o6
         9suJdDyt2K8A53Ty+o5n7+Egu2/kG+cYzm00DLP1hlKUdSJ9IVznj6wrzPEKClhn0BXv
         LDoKEYv1EYVTOCbYH72olf9R8fB4atg2mSAkRaHHRnv1RnQh0fmUya4R5ImWOTPf8HJz
         WIX7O/RruzUQ18HzZ4LN+BQA7w4+fzRMVTBjagCo/QGwsyReKkjHMQOtb/X0sVloEUFD
         pbFcPjtzmkCRE3jQXxTRMbjLFRIwmm1M16C11RtNrQB9/U6y64ql9KREHHGV526U+7PS
         BsYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=cxoQ43mZCLtltH9/KdbEAafPWZ1kVQl47LjTHCx3C7Y=;
        b=qTs/rvYBmU+G9ys9j21w8sqeeYDnEHiDZW+IaskiQXw9n+FwdkebUu2PBH5nz/ZKGT
         6zk9et0V0DvE+0s2SlkWBtfNWi14s5M3A2w4jyK93g9B9YBqYlNDK+16kEoYVm+pTWLi
         58j1m5PgE4LTLsugjcb55tBV6qT8kjYSoi/wwHTngWeOS1bC4DDrNZ95YPv4dF3kUmed
         ceJVaT88F5rXNlftdGl5exNPtj4N3kQmk3ZKn7+5xDTOSPsDdEJrptU1+ZSWhY5lYcTD
         5PdICkPNo5soDIaw670q6fG+l6/pCIQjjsdkvv2Dz/ooFnc+Kwd5mF374rErZeoAfLE9
         jZnA==
X-Gm-Message-State: AOAM533ejLE7znmJm7mi8oZUyWMH5gKbUQ1S9PlDy6fNSieiXZnogfse
	PgFInI52wKqTH7zALY+V1DA=
X-Google-Smtp-Source: ABdhPJxOj8UOgkMnigbXGal06d9v0kQOxAbphz6W0ul5buNL+Ns6/xAKlrZBV9Zq6kQyuqUnRpRNPQ==
X-Received: by 2002:a7b:c74d:: with SMTP id w13mr22987847wmk.25.1620074977246;
        Mon, 03 May 2021 13:49:37 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:fb47:: with SMTP id c7ls2622742wrs.0.gmail; Mon, 03 May
 2021 13:49:36 -0700 (PDT)
X-Received: by 2002:a05:6000:144d:: with SMTP id v13mr27212683wrx.73.1620074976456;
        Mon, 03 May 2021 13:49:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620074976; cv=none;
        d=google.com; s=arc-20160816;
        b=cUGGxZi46/itqlWuaiJiEO/ZfyaDKbISsk3GBe+Tuf7cvrj1SW344aoLd33cUSkJpa
         pEEA+vzK1xwLmikwJwMpfz9g7ZHTfPBy0h9vXlzD/xLckCE08Ra8WvnvLQA4Y7FIk1vn
         Og+oiXIcKpeNxefFZBft+qOii/bJcLJqNDrYDKSVejXI46CjeGpmlYd5c1em2IOo3Thh
         L51Tk7tRo0sQXXdW3y/85i4NMV5Ifqg5rubdqitdHMwa+W4/Kw3O9DiMMgDrFv9JS5fv
         F72S9nY73m8WPH2a3wOO+tV/rnKXor3IWZ0hjcuHexwfaSRB8ZWDJqFIKyxnZZRCPIj8
         cvRQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=fcPLLdxhGeawr/klKlG9sXo/Lmp0oTZkiVZ65hpVpF4=;
        b=mz5Qt80e3SD6d5W/1IJumkSGhma7o0FUqsAmi3oQBZjrjd6npnQxOVkk+kRbGeTglm
         2u1puF1FhjVHA87DHbVt0Zctwb22CgpM3reXrNdCTda116cKfDxZRwzIpAu3TJjlfht/
         A/S7OdI4wIpmhx8bl/dhldrLTUsTrSB/UWz8NU3Lxg9eb2BxXnqdQHfcKpniaJt0KMPW
         Rqpw3pLuaJaeelNpKvHjz/GdeIpelAV11N6pj64MEntnCu6NWm3rAcOzWDkm5wsW4XUu
         Km4I7DPjUqlW66mogPhpp5PWL8ahV3xcWz2YHoGswH8DrvZTde9trHINGQjy5oMt1dO5
         6wKw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=nEIWZsBj;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::135 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lf1-x135.google.com (mail-lf1-x135.google.com. [2a00:1450:4864:20::135])
        by gmr-mx.google.com with ESMTPS id e4si39001wrj.5.2021.05.03.13.49.36
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 03 May 2021 13:49:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::135 as permitted sender) client-ip=2a00:1450:4864:20::135;
Received: by mail-lf1-x135.google.com with SMTP id n138so10068853lfa.3
        for <clang-built-linux@googlegroups.com>; Mon, 03 May 2021 13:49:36 -0700 (PDT)
X-Received: by 2002:ac2:54b6:: with SMTP id w22mr10662206lfk.543.1620074975883;
 Mon, 03 May 2021 13:49:35 -0700 (PDT)
MIME-Version: 1.0
References: <202105030653.cyQpw8yD-lkp@intel.com> <CAHp75Vd9kXo7=g35x_AosWBHJH0KBVeX4qgkpbTz31m3w3s3gA@mail.gmail.com>
In-Reply-To: <CAHp75Vd9kXo7=g35x_AosWBHJH0KBVeX4qgkpbTz31m3w3s3gA@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 3 May 2021 13:49:24 -0700
Message-ID: <CAKwvOdmg80badHYBv1T4PKgEpgWSBtU0YewfLLS1X3QWCA_FyA@mail.gmail.com>
Subject: Re: drivers/gpio/gpio-dwapb.c:678:12: warning: stack frame size of
 2064 bytes in function 'dwapb_gpio_probe'
To: Andy Shevchenko <andy.shevchenko@gmail.com>
Cc: kernel test robot <lkp@intel.com>, Luo Jiaxing <luojiaxing@huawei.com>, kbuild-all@lists.01.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	Bartosz Golaszewski <bgolaszewski@baylibre.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=nEIWZsBj;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::135
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

On Mon, May 3, 2021 at 1:40 AM Andy Shevchenko
<andy.shevchenko@gmail.com> wrote:
>
> On Mon, May 3, 2021 at 1:54 AM kernel test robot <lkp@intel.com> wrote:
> >
> > tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
> > head:   27787ba3fa4904422b3928b898d1bd3d74d98bea
> > commit: 60593df667e087b009ee0fc20d92e9c4c096a9b5 gpio: dwapb: fix NULL pointer dereference at dwapb_gpio_suspend()
> > date:   5 months ago
> > config: powerpc64-randconfig-r026-20210430 (attached as .config)
> > compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 8f5a2a5836cc8e4c1def2bdeb022e7b496623439)
> > reproduce (this is a W=1 build):
> >         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
> >         chmod +x ~/bin/make.cross
> >         # install powerpc64 cross compiling tool for clang build
> >         # apt-get install binutils-powerpc64-linux-gnu
> >         # https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=60593df667e087b009ee0fc20d92e9c4c096a9b5
> >         git remote add linus https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
> >         git fetch --no-tags linus master
> >         git checkout 60593df667e087b009ee0fc20d92e9c4c096a9b5
> >         # save the attached .config to linux build tree
> >         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross W=1 ARCH=powerpc64
> >
> > If you fix the issue, kindly add following tag as appropriate
> > Reported-by: kernel test robot <lkp@intel.com>
> >
> > All warnings (new ones prefixed by >>):
> >
> > >> drivers/gpio/gpio-dwapb.c:678:12: warning: stack frame size of 2064 bytes in function 'dwapb_gpio_probe' [-Wframe-larger-than=]
> >    static int dwapb_gpio_probe(struct platform_device *pdev)
> >               ^
> >    1 warning generated.
>
> Another Clang bug?

We have a KI with ASAN's requirements on additional stack usage for
shadow stacks not being considered when making decisions whether or
not to inline. Looks like KASAN isn't enabled by this randconfig;
UBSAN is.  I don't know if UBSAN has similar additional stack usage to
KASAN.

I can reproduce this warning on mainline with:
$ wget https://groups.google.com/group/clang-built-linux/attach/983d2ad77c1d/.config.gz\?part\=0.1
-O - | gunzip > .config
$ ARCH=powerpc CROSS_COMPILE=powerpc64le-linux-gnu- make CC=clang -j72
drivers/gpio/gpio-dwapb.o

If I enable CONFIG_DEBUG_INFO, then rebuild, I have a utility for
helping track these down from parsing the DWARF debug info.
Unfortunately, it depends on pyelftools which doesn't know any ppc64
relocations; let me see if I can implement that real quick, which
should help debug this futher.

>
> > vim +/dwapb_gpio_probe +678 drivers/gpio/gpio-dwapb.c
> >
> > a72b8c4a63e2a3 Hoan Tran                        2017-02-21  677
> > 7779b34556978f Jamie Iles                       2014-02-25 @678  static int dwapb_gpio_probe(struct platform_device *pdev)
> > 7779b34556978f Jamie Iles                       2014-02-25  679  {
> > 3d2613c4289ff2 Weike Chen                       2014-09-17  680         unsigned int i;
> > 7779b34556978f Jamie Iles                       2014-02-25  681         struct dwapb_gpio *gpio;
> > 7779b34556978f Jamie Iles                       2014-02-25  682         int err;
> > 3d2613c4289ff2 Weike Chen                       2014-09-17  683         struct device *dev = &pdev->dev;
> > 3d2613c4289ff2 Weike Chen                       2014-09-17  684         struct dwapb_platform_data *pdata = dev_get_platdata(dev);
> > 3d2613c4289ff2 Weike Chen                       2014-09-17  685
> > da9df93e9e0fd1 Axel Lin                         2014-12-28  686         if (!pdata) {
> > 4ba8cfa79f44a9 Jiang Qiu                        2016-04-28  687                 pdata = dwapb_gpio_get_pdata(dev);
> > 3d2613c4289ff2 Weike Chen                       2014-09-17  688                 if (IS_ERR(pdata))
> > 3d2613c4289ff2 Weike Chen                       2014-09-17  689                         return PTR_ERR(pdata);
> > 3d2613c4289ff2 Weike Chen                       2014-09-17  690         }
> > 7779b34556978f Jamie Iles                       2014-02-25  691
> > da9df93e9e0fd1 Axel Lin                         2014-12-28  692         if (!pdata->nports)
> > da9df93e9e0fd1 Axel Lin                         2014-12-28  693                 return -ENODEV;
> > 7779b34556978f Jamie Iles                       2014-02-25  694
> > 3d2613c4289ff2 Weike Chen                       2014-09-17  695         gpio = devm_kzalloc(&pdev->dev, sizeof(*gpio), GFP_KERNEL);
> > da9df93e9e0fd1 Axel Lin                         2014-12-28  696         if (!gpio)
> > da9df93e9e0fd1 Axel Lin                         2014-12-28  697                 return -ENOMEM;
> > da9df93e9e0fd1 Axel Lin                         2014-12-28  698
> > 3d2613c4289ff2 Weike Chen                       2014-09-17  699         gpio->dev = &pdev->dev;
> > 3d2613c4289ff2 Weike Chen                       2014-09-17  700         gpio->nr_ports = pdata->nports;
> > 3d2613c4289ff2 Weike Chen                       2014-09-17  701
> > 4731d80f5ea9b8 Serge Semin                      2020-07-30  702         err = dwapb_get_reset(gpio);
> > 4731d80f5ea9b8 Serge Semin                      2020-07-30  703         if (err)
> > 4731d80f5ea9b8 Serge Semin                      2020-07-30  704                 return err;
> > 07901a94f9f9b1 Alan Tull                        2017-10-11  705
> > 3d2613c4289ff2 Weike Chen                       2014-09-17  706         gpio->ports = devm_kcalloc(&pdev->dev, gpio->nr_ports,
> > 7779b34556978f Jamie Iles                       2014-02-25  707                                    sizeof(*gpio->ports), GFP_KERNEL);
> > da9df93e9e0fd1 Axel Lin                         2014-12-28  708         if (!gpio->ports)
> > da9df93e9e0fd1 Axel Lin                         2014-12-28  709                 return -ENOMEM;
> > 7779b34556978f Jamie Iles                       2014-02-25  710
> > 2a7194e9759586 Enrico Weigelt, metux IT consult 2019-03-11  711         gpio->regs = devm_platform_ioremap_resource(pdev, 0);
> > da9df93e9e0fd1 Axel Lin                         2014-12-28  712         if (IS_ERR(gpio->regs))
> > da9df93e9e0fd1 Axel Lin                         2014-12-28  713                 return PTR_ERR(gpio->regs);
> > 7779b34556978f Jamie Iles                       2014-02-25  714
> > daa3f58d180c07 Serge Semin                      2020-07-30  715         err = dwapb_get_clks(gpio);
> > daa3f58d180c07 Serge Semin                      2020-07-30  716         if (err)
> > e6bf37736f6495 Phil Edworthy                    2018-03-12  717                 return err;
> > e6bf37736f6495 Phil Edworthy                    2018-03-12  718
> > 9826bbe1fef0b5 Andy Shevchenko                  2020-04-15  719         gpio->flags = (uintptr_t)device_get_match_data(dev);
> > a72b8c4a63e2a3 Hoan Tran                        2017-02-21  720
> > 3d2613c4289ff2 Weike Chen                       2014-09-17  721         for (i = 0; i < gpio->nr_ports; i++) {
> > 3d2613c4289ff2 Weike Chen                       2014-09-17  722                 err = dwapb_gpio_add_port(gpio, &pdata->properties[i], i);
> > 7779b34556978f Jamie Iles                       2014-02-25  723                 if (err)
> > 7779b34556978f Jamie Iles                       2014-02-25  724                         return err;
> > 7779b34556978f Jamie Iles                       2014-02-25  725         }
> > 7779b34556978f Jamie Iles                       2014-02-25  726
> > 60593df667e087 Luo Jiaxing                      2020-11-27  727         platform_set_drvdata(pdev, gpio);
> > 60593df667e087 Luo Jiaxing                      2020-11-27  728
> > 7779b34556978f Jamie Iles                       2014-02-25  729         return 0;
> > 7779b34556978f Jamie Iles                       2014-02-25  730  }
> > 7779b34556978f Jamie Iles                       2014-02-25  731
> >
> > :::::: The code at line 678 was first introduced by commit
> > :::::: 7779b34556978f6771a78bd87557523623e0405b gpio: add a driver for the Synopsys DesignWare APB GPIO block
> >
> > :::::: TO: Jamie Iles <jamie@jamieiles.com>
> > :::::: CC: Linus Walleij <linus.walleij@linaro.org>
> >
> > ---
> > 0-DAY CI Kernel Test Service, Intel Corporation
> > https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
>
>
>
> --
> With Best Regards,
> Andy Shevchenko
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAHp75Vd9kXo7%3Dg35x_AosWBHJH0KBVeX4qgkpbTz31m3w3s3gA%40mail.gmail.com.



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmg80badHYBv1T4PKgEpgWSBtU0YewfLLS1X3QWCA_FyA%40mail.gmail.com.
