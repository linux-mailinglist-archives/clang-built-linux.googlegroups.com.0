Return-Path: <clang-built-linux+bncBCT4VV5O2QKBB4HNX2CAMGQE5QRKDXQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103e.google.com (mail-pj1-x103e.google.com [IPv6:2607:f8b0:4864:20::103e])
	by mail.lfdr.de (Postfix) with ESMTPS id F0FFF371282
	for <lists+clang-built-linux@lfdr.de>; Mon,  3 May 2021 10:40:17 +0200 (CEST)
Received: by mail-pj1-x103e.google.com with SMTP id t19-20020a17090ad153b0290158e579e49fsf511631pjw.7
        for <lists+clang-built-linux@lfdr.de>; Mon, 03 May 2021 01:40:17 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620031216; cv=pass;
        d=google.com; s=arc-20160816;
        b=r0lzjUPqwIfjBfHsLpRhwIMbx0oX6j875+Zf3wrmsp4A4SOvOn7dFq02f62oTA1mkV
         itnzKbxl99Ivvog6a3aAalUa8a4vcFZN8kprPm9uuXJQKrLF5YBnnJpLN8mUcjO1ONzS
         qmfYZQBc/1+S6WhSmDNzA5+elOjFRGCXms2gnC0hoVZFXnJeMu4FYiBgwFVyayVZI18W
         jtk5aY4lepmK8m6SYc0HrQIMfXfATF7PY9r41ueEGG05fBSx7g3rpvlnqIG3q3SNQv5u
         +KvqTpj5MFwjSE74TDKYwVsFf6dadVX/lnwl+YV1m6WAUBBxdv5AsqZsFhylrndJ8c+k
         dgjA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=RZMOAe4EE0m6PN/jN3DgwqkunYqlzLCli+RMRqNFjGs=;
        b=V8J9WVkuFROHjWLciwneIhehzcmrmPpNzSl9OtF3INHD2SCqwu3NtyZyszZtqTv5BD
         zqsEbPb3d3STTC5tbf6ZsZEnosVfag7hOKC3KpR21hm9NUe2bopAoBrI2axa4uwdZZmV
         UmRHZKFaGf2WEKzefzr1D7ER03DI6voPxacAi8wX8n5oM/hdE5e331tbW1YO1rP/F5wu
         agD14GlgO9Vyo1w85L1mJVoZ7zIRbdhVas7I+X05haxZrViRWhZpxQ5nmER4KGzR/1TJ
         w2/oV3sySEf+HdN1dPSRL0oyqwQ4VkBRUz76mxPvNNHWVhGvT7h14zK6Ig6VHePNkGJY
         bOvA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=rliVb5Np;
       spf=pass (google.com: domain of andy.shevchenko@gmail.com designates 2607:f8b0:4864:20::532 as permitted sender) smtp.mailfrom=andy.shevchenko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=RZMOAe4EE0m6PN/jN3DgwqkunYqlzLCli+RMRqNFjGs=;
        b=VSm4ZojO8HtNB2Tw/DLTx6qFNrD4vHvtbTxpq+hBwGrw1Wjc7bxgRW1N8/tl5G4tfz
         mv2KvPheEAj84mcR568RLlcFZtQETONtm3C90+GKNGcjMQgCEiEQ6uj1j0JeokQ7C4P5
         3fqgZxyk8OdzmqP4aygXWutjsRhOG9uGynM5ug1NPyNTbqjxTKuU7cYCbWWjkPJtuxZk
         gAHjH8sd9Hpem7Lr6s/8Wih9APzTCvZvU3cKA4TXSKuL+NE3XrlU1VYbJICew1EW+u1Z
         hfoymNt8zPJGkW1riPeJBa82epv5+uMGmZ/XaN4Z6/ANwqzDjGcLZUqVSPiJdvPbP9Ha
         +qhw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=RZMOAe4EE0m6PN/jN3DgwqkunYqlzLCli+RMRqNFjGs=;
        b=e131qH8ao7le4cQP1Vz7VIfyei0fkooTvt2YwXVCZmhmVIiDuXHlj51THAPzV4dHum
         PO/iwLA1ZxKcFU3VXqO2zlqDQOwauV1wmyOWNIjknL01TSDc1U1c22YpI7pq4gTcMAS8
         zngrozQiBpq+4RjDytCYEayDHaetN2Ij4VH3SJPTfGofU0D+Re3Ao6vl/YmSIinpjSvp
         9Gxhpx1LbCp9gxpD/9bTgudBxKPwF33xiZ36chQjPdFBvqy8I49do7+0sfteW/C1WJTm
         lJ4uYlSdVXRolO4ELtMR4a0ME/W31yJffW/yjoiTm6PnfRfG95diIsPrXWYvP69G5BsP
         TN+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=RZMOAe4EE0m6PN/jN3DgwqkunYqlzLCli+RMRqNFjGs=;
        b=qcLfh+xrQJq5G+Ux3+C+D2V1ph8Cv0fV5wp7e20e3erTCkPnq7GG62Zlv+ixYmZ/Sh
         tIs7Dc/emSR7W3mu7kqB3oqiH1KXDEQTAP79MFTFZuHSZ0KHnt7izMwag8Xc5dZ6g1lI
         n5in97BNa4CrgIbcBCfszy1xxnB6l19FvB1s6fCtycg3OI+VstRpBvoL2uvLZjrT3Ef5
         USAlOrLgEc1LZdw16cszEwGLOGSORVJGOzX/tiiNiRxzVm5uZEoi9/mDJpOHk4SJT5RP
         fs6IIts6V/lUv32imetKE/PmmRpnlN6wO5resYmMuPzFbQBxm/Rs9AWVDKdtbm4ynX2x
         I1fA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531GKlsmmPXWB6AwWsVXlUN2NqD31LVglwj2BgLLOpzUpZA5FMCt
	RpTIIZjX/Pd5p1HKFc78rOk=
X-Google-Smtp-Source: ABdhPJz/C9dqs54rdYFRgPl/aHwUNrP6ZarO2pMymkJfMw/nKqR2LJNfjJVhSUfzyzAn2dRVAIvVhw==
X-Received: by 2002:a65:48c5:: with SMTP id o5mr17213356pgs.101.1620031216261;
        Mon, 03 May 2021 01:40:16 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:8e19:: with SMTP id c25ls5359604pfr.6.gmail; Mon, 03 May
 2021 01:40:15 -0700 (PDT)
X-Received: by 2002:a62:7704:0:b029:28e:358e:fa8b with SMTP id s4-20020a6277040000b029028e358efa8bmr10630925pfc.38.1620031215690;
        Mon, 03 May 2021 01:40:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620031215; cv=none;
        d=google.com; s=arc-20160816;
        b=Idk0KzRcXcO1mHgnWu03QtfonW6FSGMvwn62Yy6ww/D58DLnYd2ef4NTVfR7wQh+OH
         Ww4PfJt5jXx5WkCONoAngkx2BY4fqgYhaJaxAtnguZdowHpAM7tBGiTaz9Tv9htpcfp6
         uJ7mg/yne7QTix7wfccgEm3qvovd3SZu4Xo50qTo1UVVAEJU5XTO8eKZGDULO5ao2NqQ
         XXFc4GDb0cwLu1n96U2ayFwYTaJQqvw5dqBKvubAb/eQruMtL0XkCAiiW814kN9klMTj
         qeKpw1JbEC9ohyQEZcRQ6iOGKgY7QgqaS64ZNt3RXMXyFMUfenwoD2nT/QsoE2XRo9TZ
         dJ4Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=pnyqlZ5VnQEt4D3zjxmJ8HRBvB4VqfbCtVVXI1GLz4o=;
        b=btXQ93zqiyCjNSAZjQPbPtOqCdcsr04XNUe+svEJYVV9NEUdNkcUBMsQ/b9UWw6h+f
         lfMfZH79v6lDBGhc6mMc8T/qGg4qWgD9PFWc+eVQ4oMV9kDfu5nBXea4n8me64g70nQ8
         gPi0JhCRDQQx+IY5w5cfovOInv3Bn81e3odGoCDC4IGHaDSqIdoOn0VyRz2qAY80/lcb
         Gq42nZoU7iChl8TxE02m98ZbpZ4Ohb0m8kv1hyUk4yRHXCQbYaS2Ojdg9L7vC27nSKTI
         YazEDvOjqfCOUYauyrvWmSyFNI5inH7io0+ruHPJt8oWgpdCPG4Kjuw9tNoUDS1I3Sbi
         EP3g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=rliVb5Np;
       spf=pass (google.com: domain of andy.shevchenko@gmail.com designates 2607:f8b0:4864:20::532 as permitted sender) smtp.mailfrom=andy.shevchenko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pg1-x532.google.com (mail-pg1-x532.google.com. [2607:f8b0:4864:20::532])
        by gmr-mx.google.com with ESMTPS id n18si802228pfu.5.2021.05.03.01.40.15
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 03 May 2021 01:40:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of andy.shevchenko@gmail.com designates 2607:f8b0:4864:20::532 as permitted sender) client-ip=2607:f8b0:4864:20::532;
Received: by mail-pg1-x532.google.com with SMTP id q9so3117601pgl.13
        for <clang-built-linux@googlegroups.com>; Mon, 03 May 2021 01:40:15 -0700 (PDT)
X-Received: by 2002:a63:cd11:: with SMTP id i17mr17068377pgg.74.1620031215171;
 Mon, 03 May 2021 01:40:15 -0700 (PDT)
MIME-Version: 1.0
References: <202105030653.cyQpw8yD-lkp@intel.com>
In-Reply-To: <202105030653.cyQpw8yD-lkp@intel.com>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Mon, 3 May 2021 11:39:58 +0300
Message-ID: <CAHp75Vd9kXo7=g35x_AosWBHJH0KBVeX4qgkpbTz31m3w3s3gA@mail.gmail.com>
Subject: Re: drivers/gpio/gpio-dwapb.c:678:12: warning: stack frame size of
 2064 bytes in function 'dwapb_gpio_probe'
To: kernel test robot <lkp@intel.com>, Nick Desaulniers <nick.desaulniers@gmail.com>
Cc: Luo Jiaxing <luojiaxing@huawei.com>, kbuild-all@lists.01.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	Bartosz Golaszewski <bgolaszewski@baylibre.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: andy.shevchenko@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=rliVb5Np;       spf=pass
 (google.com: domain of andy.shevchenko@gmail.com designates
 2607:f8b0:4864:20::532 as permitted sender) smtp.mailfrom=andy.shevchenko@gmail.com;
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

On Mon, May 3, 2021 at 1:54 AM kernel test robot <lkp@intel.com> wrote:
>
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
> head:   27787ba3fa4904422b3928b898d1bd3d74d98bea
> commit: 60593df667e087b009ee0fc20d92e9c4c096a9b5 gpio: dwapb: fix NULL pointer dereference at dwapb_gpio_suspend()
> date:   5 months ago
> config: powerpc64-randconfig-r026-20210430 (attached as .config)
> compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 8f5a2a5836cc8e4c1def2bdeb022e7b496623439)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install powerpc64 cross compiling tool for clang build
>         # apt-get install binutils-powerpc64-linux-gnu
>         # https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=60593df667e087b009ee0fc20d92e9c4c096a9b5
>         git remote add linus https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
>         git fetch --no-tags linus master
>         git checkout 60593df667e087b009ee0fc20d92e9c4c096a9b5
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross W=1 ARCH=powerpc64
>
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
>
> All warnings (new ones prefixed by >>):
>
> >> drivers/gpio/gpio-dwapb.c:678:12: warning: stack frame size of 2064 bytes in function 'dwapb_gpio_probe' [-Wframe-larger-than=]
>    static int dwapb_gpio_probe(struct platform_device *pdev)
>               ^
>    1 warning generated.

Another Clang bug?

> vim +/dwapb_gpio_probe +678 drivers/gpio/gpio-dwapb.c
>
> a72b8c4a63e2a3 Hoan Tran                        2017-02-21  677
> 7779b34556978f Jamie Iles                       2014-02-25 @678  static int dwapb_gpio_probe(struct platform_device *pdev)
> 7779b34556978f Jamie Iles                       2014-02-25  679  {
> 3d2613c4289ff2 Weike Chen                       2014-09-17  680         unsigned int i;
> 7779b34556978f Jamie Iles                       2014-02-25  681         struct dwapb_gpio *gpio;
> 7779b34556978f Jamie Iles                       2014-02-25  682         int err;
> 3d2613c4289ff2 Weike Chen                       2014-09-17  683         struct device *dev = &pdev->dev;
> 3d2613c4289ff2 Weike Chen                       2014-09-17  684         struct dwapb_platform_data *pdata = dev_get_platdata(dev);
> 3d2613c4289ff2 Weike Chen                       2014-09-17  685
> da9df93e9e0fd1 Axel Lin                         2014-12-28  686         if (!pdata) {
> 4ba8cfa79f44a9 Jiang Qiu                        2016-04-28  687                 pdata = dwapb_gpio_get_pdata(dev);
> 3d2613c4289ff2 Weike Chen                       2014-09-17  688                 if (IS_ERR(pdata))
> 3d2613c4289ff2 Weike Chen                       2014-09-17  689                         return PTR_ERR(pdata);
> 3d2613c4289ff2 Weike Chen                       2014-09-17  690         }
> 7779b34556978f Jamie Iles                       2014-02-25  691
> da9df93e9e0fd1 Axel Lin                         2014-12-28  692         if (!pdata->nports)
> da9df93e9e0fd1 Axel Lin                         2014-12-28  693                 return -ENODEV;
> 7779b34556978f Jamie Iles                       2014-02-25  694
> 3d2613c4289ff2 Weike Chen                       2014-09-17  695         gpio = devm_kzalloc(&pdev->dev, sizeof(*gpio), GFP_KERNEL);
> da9df93e9e0fd1 Axel Lin                         2014-12-28  696         if (!gpio)
> da9df93e9e0fd1 Axel Lin                         2014-12-28  697                 return -ENOMEM;
> da9df93e9e0fd1 Axel Lin                         2014-12-28  698
> 3d2613c4289ff2 Weike Chen                       2014-09-17  699         gpio->dev = &pdev->dev;
> 3d2613c4289ff2 Weike Chen                       2014-09-17  700         gpio->nr_ports = pdata->nports;
> 3d2613c4289ff2 Weike Chen                       2014-09-17  701
> 4731d80f5ea9b8 Serge Semin                      2020-07-30  702         err = dwapb_get_reset(gpio);
> 4731d80f5ea9b8 Serge Semin                      2020-07-30  703         if (err)
> 4731d80f5ea9b8 Serge Semin                      2020-07-30  704                 return err;
> 07901a94f9f9b1 Alan Tull                        2017-10-11  705
> 3d2613c4289ff2 Weike Chen                       2014-09-17  706         gpio->ports = devm_kcalloc(&pdev->dev, gpio->nr_ports,
> 7779b34556978f Jamie Iles                       2014-02-25  707                                    sizeof(*gpio->ports), GFP_KERNEL);
> da9df93e9e0fd1 Axel Lin                         2014-12-28  708         if (!gpio->ports)
> da9df93e9e0fd1 Axel Lin                         2014-12-28  709                 return -ENOMEM;
> 7779b34556978f Jamie Iles                       2014-02-25  710
> 2a7194e9759586 Enrico Weigelt, metux IT consult 2019-03-11  711         gpio->regs = devm_platform_ioremap_resource(pdev, 0);
> da9df93e9e0fd1 Axel Lin                         2014-12-28  712         if (IS_ERR(gpio->regs))
> da9df93e9e0fd1 Axel Lin                         2014-12-28  713                 return PTR_ERR(gpio->regs);
> 7779b34556978f Jamie Iles                       2014-02-25  714
> daa3f58d180c07 Serge Semin                      2020-07-30  715         err = dwapb_get_clks(gpio);
> daa3f58d180c07 Serge Semin                      2020-07-30  716         if (err)
> e6bf37736f6495 Phil Edworthy                    2018-03-12  717                 return err;
> e6bf37736f6495 Phil Edworthy                    2018-03-12  718
> 9826bbe1fef0b5 Andy Shevchenko                  2020-04-15  719         gpio->flags = (uintptr_t)device_get_match_data(dev);
> a72b8c4a63e2a3 Hoan Tran                        2017-02-21  720
> 3d2613c4289ff2 Weike Chen                       2014-09-17  721         for (i = 0; i < gpio->nr_ports; i++) {
> 3d2613c4289ff2 Weike Chen                       2014-09-17  722                 err = dwapb_gpio_add_port(gpio, &pdata->properties[i], i);
> 7779b34556978f Jamie Iles                       2014-02-25  723                 if (err)
> 7779b34556978f Jamie Iles                       2014-02-25  724                         return err;
> 7779b34556978f Jamie Iles                       2014-02-25  725         }
> 7779b34556978f Jamie Iles                       2014-02-25  726
> 60593df667e087 Luo Jiaxing                      2020-11-27  727         platform_set_drvdata(pdev, gpio);
> 60593df667e087 Luo Jiaxing                      2020-11-27  728
> 7779b34556978f Jamie Iles                       2014-02-25  729         return 0;
> 7779b34556978f Jamie Iles                       2014-02-25  730  }
> 7779b34556978f Jamie Iles                       2014-02-25  731
>
> :::::: The code at line 678 was first introduced by commit
> :::::: 7779b34556978f6771a78bd87557523623e0405b gpio: add a driver for the Synopsys DesignWare APB GPIO block
>
> :::::: TO: Jamie Iles <jamie@jamieiles.com>
> :::::: CC: Linus Walleij <linus.walleij@linaro.org>
>
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org



-- 
With Best Regards,
Andy Shevchenko

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAHp75Vd9kXo7%3Dg35x_AosWBHJH0KBVeX4qgkpbTz31m3w3s3gA%40mail.gmail.com.
