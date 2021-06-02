Return-Path: <clang-built-linux+bncBDA63QVIYMOBBQUS36CQMGQEI7ZTAIA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc38.google.com (mail-oo1-xc38.google.com [IPv6:2607:f8b0:4864:20::c38])
	by mail.lfdr.de (Postfix) with ESMTPS id E666C399234
	for <lists+clang-built-linux@lfdr.de>; Wed,  2 Jun 2021 20:09:07 +0200 (CEST)
Received: by mail-oo1-xc38.google.com with SMTP id w11-20020a4ad02b0000b029023970099d97sf1979612oor.0
        for <lists+clang-built-linux@lfdr.de>; Wed, 02 Jun 2021 11:09:07 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1622657346; cv=pass;
        d=google.com; s=arc-20160816;
        b=eucTYifb2mIP6V18XMnvjCw40qT4nQmUkjw3TPsI8Drv5GL4+q6+SLvE+gWtpAku8I
         J9PC+7W0KXjs2GNXwcWuG3LJrIXVzkoA2JmAtQrgsg0X7XMjxOEXzuq9aIbQCZk0uT1c
         4s93vQZlA7J6coTIdD1psp4mGb3hGyehNl93s4FtFqGt3L8COo0stWZ0M83kBddoBbbY
         KRWxq2FOfZkFtThPVURM8kThqdOGgfZ5zYDx9vdbWdh+wyCTwEDCLXCdo3Cq+fHXK4Nw
         NA09WeZyK3lN5Ni7cnaHLcXBVlU/d0zUktSVR1zF7GVJH8E89R5fA3p4bvq513pKYamZ
         +8qg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=geWJyc26MphI7ipnEsC0OxW3csZn2cqFsvhM0/9itWA=;
        b=Dz5lU4sqFQe2hhqr1dDtnS0dq/3LGqqPm82Edkt4DIzntDLxc4o7XlDIxhnPW76PRl
         u8FHFuxu2+RSpO9TdJPE5CDrDyXoKY3oWWv5l9LChbp2WqPdp6FtRUZhc9S0FNe938hf
         krya4QErfj2CgSddW41c+jDG3/bE4750Y0dnCQV5ce7Zjy2UsiYHb7badkRQRaOCx76O
         iIdk1TTBCt1wKGapsgXun28QK1wEUMrejB+rtQeHUga0Gs4JtqB27Da1wwLSrD9poJcv
         kUAnoiHQs1fBN5D/cu6cLV3wFMOCD2wOTWbxmpH3nctPgP1qpS0AHhlECWnVQkUpv5TX
         l/3g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Q5fFXrhc;
       spf=pass (google.com: domain of sergio.paracuellos@gmail.com designates 2607:f8b0:4864:20::334 as permitted sender) smtp.mailfrom=sergio.paracuellos@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=geWJyc26MphI7ipnEsC0OxW3csZn2cqFsvhM0/9itWA=;
        b=eEeAva2IZ3SjXGomBAl1freTZUcSGupsg9418myKahp107HWrg/ixNRNR/Jlc4Mf3F
         DcBcEp5/7MfC/zGOWvr4BUL6rcCXQob79QRJSXFygOyH4ypItG+B8U5a/6s+JJIsUJ6J
         a3JZ0BL9xnCdtO9s8FsI/jXt4AQ5vAcwK0rej9r/AcP/R/+GzZO16ku8Z/Su74fmwu7D
         12e6q9v7ANVkpBIVSppOPp/qWeN6bJHIqDsE3hImjruCbRsUiQcDSSKiHGTIQZHTy9jy
         w3dWyn/70zBPfUKYKq4tog1YXMQrn914ElKlNHcp+OCdEu49n5+gkZcDIbwLbtWXaX/I
         XDDg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=geWJyc26MphI7ipnEsC0OxW3csZn2cqFsvhM0/9itWA=;
        b=rCU131tENi3ZXdqKEmXc++zfdIV6FltJtaVxRtXjg6vRwc7LQy7L3N4deTCqAZ0zKV
         /1V1pU3MTda7RcDsNnK7rdgSvUYL7DP94U+AQ4aJgFJ7T/4Yy2wC9nCNgua4M7utMytx
         u0ee/A2dbKJ1ClpfWNt/1xiIHl5xRbxErFbmcgRxeoTm/bAOyckA5i3aksj02vsNcHu2
         IG2sArrlbqoPMgUc+keC/pnayal0AFUwLvZ53agcK0YJ8oi+zgjNxZJZ57Z9aa+/l6Ct
         GcArjrl/iDRIQWT/BOuQ1+0rLQNH3yancOwQfVQAXtp/SWnTW97lGlq/QYsCZmmdy2F8
         tgsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=geWJyc26MphI7ipnEsC0OxW3csZn2cqFsvhM0/9itWA=;
        b=Wfz5O516m5DryAOoOEEej03MRdFUF6wqDGQj16tiQ6Lv2aSQT3wjH4UYxTanAjTXiw
         dmrtp9Xv6VZfEPV2yRsh3j4AKffN87+Z/RW/C1s2BZJJ8vu3k8o8LdRupRa4PP2IUZ43
         NajeCjUH5V7j8kD9W+7Tlf3uwUi9SI13jk6s3PebPzBffaT5Ue4cTqGGdc9kKQy9iTVq
         OIsX4Bj59x2zF5WRBDo4962iHCsp1AkgKjSp6whh3CsGGQtnf48aVJkFOZjxdAJz0zgs
         G50PqOfTVpimkQTVQsnVnrKxkfvgSnfMlpiqI5QHEa6wMGqS8iTfEn0MaEjGbeafoMzq
         4thA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533At29+ao8JArXY7Zt1HcIyQram5Ob83/T0iA88e0dv37W1GkXt
	fvF+484fMAmNMSgw+WaAQNU=
X-Google-Smtp-Source: ABdhPJwrsU05bD4hKbq9zqRE2lkTS2CFHVyVBV8K9EAR4QTBV38fiSimEdBp1jjVIIfiH0WnG6r6xg==
X-Received: by 2002:a05:6830:1e37:: with SMTP id t23mr26358043otr.318.1622657346604;
        Wed, 02 Jun 2021 11:09:06 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a4a:b814:: with SMTP id g20ls60187oop.9.gmail; Wed, 02 Jun
 2021 11:09:06 -0700 (PDT)
X-Received: by 2002:a4a:6765:: with SMTP id j37mr20421262oof.57.1622657346159;
        Wed, 02 Jun 2021 11:09:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1622657346; cv=none;
        d=google.com; s=arc-20160816;
        b=v7TEIIBszww8elflj4LaJpvIoCnhfjMpYStdiuHRQocI+VsDfxVVbNYqGTU2hSF6pD
         FZ4XzJGg+c2tOKJXofa4jbrbD4W0KeOBpnA018p43Al+on4VR9Ovd8OZETLen0tRFb09
         1kw/mGKFrEm8/tQsjMN8xBtxwC1caU8tO2KLM+rWByi+rjHb1sDktELktEKvGtZ72VpC
         XVZcX91zU6GrNzBWEqUK4UsNDBIpesQ4Np8c95R7goG+y4StdPaEBTtIkUfzFC2FMCzT
         4m2ideDO+mBIvv4WQBD3zh5m/UPLJ7w/cknBe41Cat970L/kp4mzx6E1zoAToZr0RryM
         8CrA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=ZhGtSb18ge2sD/kgR/xLamgIUWfRdZt+iX2nxECTX1s=;
        b=DfXRKPW4ECl0CXoWL8HzWXRtqwZ+qCOTBl1FHT4AwDGTf+KXyfOZz673pg3rtxqHOd
         XRWzRCJl7BOmYfZ3bt2uRYcBAEQl95bGLY+C3QzSMptPXnOiduppRiCzG9X28RHLJFPy
         mSFdtLoDQ1TXf85oGSsg/lXdbiVjj6OjUq7k7f1rqTFoVdenmEqvFYajl9I8z5BqcLT+
         pTDsrt46DwFuZ6LWciYlQyvMdy0XnZw8KLsYtoOOX4E9wyud+/3Y0Vx1FGKgde/Auehp
         rWumHA8cVlol6PE3TgXgts9+CV/tD7e0wee5ssMjS9d826Tcu8+dliSp5ORTVLibPhIn
         nLnA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Q5fFXrhc;
       spf=pass (google.com: domain of sergio.paracuellos@gmail.com designates 2607:f8b0:4864:20::334 as permitted sender) smtp.mailfrom=sergio.paracuellos@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x334.google.com (mail-ot1-x334.google.com. [2607:f8b0:4864:20::334])
        by gmr-mx.google.com with ESMTPS id c9si73879ots.4.2021.06.02.11.09.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 02 Jun 2021 11:09:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of sergio.paracuellos@gmail.com designates 2607:f8b0:4864:20::334 as permitted sender) client-ip=2607:f8b0:4864:20::334;
Received: by mail-ot1-x334.google.com with SMTP id c31-20020a056830349fb02903a5bfa6138bso3254279otu.7
        for <clang-built-linux@googlegroups.com>; Wed, 02 Jun 2021 11:09:06 -0700 (PDT)
X-Received: by 2002:a9d:4f19:: with SMTP id d25mr1304290otl.72.1622657345719;
 Wed, 02 Jun 2021 11:09:05 -0700 (PDT)
MIME-Version: 1.0
References: <202106021822.Do0Ih08d-lkp@intel.com> <CAMhs-H8qyOKQmPtChYO+jfC+Zmj8U9yGeZJORUx14MzyLeT5QA@mail.gmail.com>
 <CAKwvOd=3ootX9j=1mY3dpmGHw_7yhZkFnmgFCRQqJUaLMZqvZQ@mail.gmail.com>
In-Reply-To: <CAKwvOd=3ootX9j=1mY3dpmGHw_7yhZkFnmgFCRQqJUaLMZqvZQ@mail.gmail.com>
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
Date: Wed, 2 Jun 2021 20:08:54 +0200
Message-ID: <CAMhs-H-3AiKsc+d2NcjetMJX0XYeHKVs5Hu+Zhn_BTGMDnKc7g@mail.gmail.com>
Subject: Re: [linux-next:master 1932/6331] drivers/phy/ralink/phy-mt7621-pci.c:341:34:
 warning: unused variable 'mt7621_pci_phy_ids'
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: kernel test robot <lkp@intel.com>, kbuild-all@lists.01.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Linux Memory Management List <linux-mm@kvack.org>, Vinod Koul <vkoul@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sergio.paracuellos@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=Q5fFXrhc;       spf=pass
 (google.com: domain of sergio.paracuellos@gmail.com designates
 2607:f8b0:4864:20::334 as permitted sender) smtp.mailfrom=sergio.paracuellos@gmail.com;
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

Hi Nick,

On Wed, Jun 2, 2021 at 6:47 PM Nick Desaulniers <ndesaulniers@google.com> wrote:
>
> On Wed, Jun 2, 2021 at 3:38 AM Sergio Paracuellos
> <sergio.paracuellos@gmail.com> wrote:
> >
> > Hi,
> >
> > On Wed, Jun 2, 2021 at 12:27 PM kernel test robot <lkp@intel.com> wrote:
> > >
> > > tree:   https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git master
> > > head:   ed5d0667a6540293c9485dd95babb5f1e241226a
> > > commit: 28dcfba1a0d622b0330ae3f4a9d7c7f2c245de7a [1932/6331] phy: ralink: Kconfig: enable COMPILE_TEST on mt7621-pci-phy driver
> > > config: x86_64-randconfig-r016-20210602 (attached as .config)
>
> ^ randconfig
>
> > > compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project db26cd30b6dd65e88d786e97a1e453af5cd48966)
> > > reproduce (this is a W=1 build):
> > >         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
> > >         chmod +x ~/bin/make.cross
> > >         # install x86_64 cross compiling tool for clang build
> > >         # apt-get install binutils-x86-64-linux-gnu
> > >         # https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?id=28dcfba1a0d622b0330ae3f4a9d7c7f2c245de7a
> > >         git remote add linux-next https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git
> > >         git fetch --no-tags linux-next master
> > >         git checkout 28dcfba1a0d622b0330ae3f4a9d7c7f2c245de7a
> > >         # save the attached .config to linux build tree
> > >         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64
> > >
> > > If you fix the issue, kindly add following tag as appropriate
> > > Reported-by: kernel test robot <lkp@intel.com>
> > >
> > > All warnings (new ones prefixed by >>):
> > >
> > >    drivers/phy/ralink/phy-mt7621-pci.c:277:4: warning: cast to smaller integer type 'unsigned int' from 'void *' [-Wvoid-pointer-to-int-cast]
> > >                     (unsigned int)mt7621_phy->port_base, mt7621_phy->has_dual_port);
> > >                     ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> > >    include/linux/dev_printk.h:118:33: note: expanded from macro 'dev_info'
> > >            _dev_info(dev, dev_fmt(fmt), ##__VA_ARGS__)
> >
> > Already fixed in:
> > https://git.kernel.org/pub/scm/linux/kernel/git/phy/linux-phy.git/commit/drivers/phy/ralink/phy-mt7621-pci.c?h=next&id=652a6a2e3824ce2ebf79a2d5326940d05c4db036
> >
> > >                                           ^~~~~~~~~~~
> > > >> drivers/phy/ralink/phy-mt7621-pci.c:341:34: warning: unused variable 'mt7621_pci_phy_ids' [-Wunused-const-variable]
> > >    static const struct of_device_id mt7621_pci_phy_ids[] = {
> > >                                     ^
> >
> > Mmmm... This one is used through MODULE_DEVICE_TABLE macro... Am I
> > missing something??
>
> Pretty sure there's a config in MODULE_DEVICE_TABLE that's being
> disabled by the randconfig; the definition of mt7621_pci_phy_ids
> should also be behind preprocessor checks for that.

So, the driver uses 'mt7621_pci_phy_ids' in two places :

static const struct of_device_id mt7621_pci_phy_ids[] = {
    { .compatible = "mediatek,mt7621-pci-phy" },
    {},
};
MODULE_DEVICE_TABLE(of, mt7621_pci_phy_ids);
^
This one is inside the 'MODULE' preprocessor directive.

static struct platform_driver mt7621_pci_phy_driver = {
    .probe = mt7621_pci_phy_probe,
    .driver = {
        .name = "mt7621-pci-phy",
        .of_match_table = of_match_ptr(mt7621_pci_phy_ids),
                                     ^
                                     This one is inside 'CONFIG_OF'
    },
};

randconfig is not setting 'CONFIG_OF' nor defining MODULE. I've been
looking into different drivers code and all of them follow the same
pattern and nothing is behind preprocessor checks at all. So I wonder
if this is really something that needs to be fixed.

Thanks in advance for clarifications.

Best regards,
    Sergio Paracuellos


>
> >
> > >    2 warnings generated.
> > >
> > >
> > > vim +/mt7621_pci_phy_ids +341 drivers/phy/ralink/phy-mt7621-pci.c
> > >
> > > d87da32372a03c Sergio Paracuellos 2020-11-21  340
> > > d87da32372a03c Sergio Paracuellos 2020-11-21 @341  static const struct of_device_id mt7621_pci_phy_ids[] = {
> > > d87da32372a03c Sergio Paracuellos 2020-11-21  342       { .compatible = "mediatek,mt7621-pci-phy" },
> > > d87da32372a03c Sergio Paracuellos 2020-11-21  343       {},
> > > d87da32372a03c Sergio Paracuellos 2020-11-21  344  };
> > > 8145dcb07d0c8b Sergio Paracuellos 2020-12-01  345  MODULE_DEVICE_TABLE(of, mt7621_pci_phy_ids);
> > > d87da32372a03c Sergio Paracuellos 2020-11-21  346
> > >
> > > :::::: The code at line 341 was first introduced by commit
> > > :::::: d87da32372a03ce121fc65ccd2c9a43edf56b364 phy: ralink: Add PHY driver for MT7621 PCIe PHY
> > >
> > > :::::: TO: Sergio Paracuellos <sergio.paracuellos@gmail.com>
> > > :::::: CC: Vinod Koul <vkoul@kernel.org>
> > >
> > > ---
> > > 0-DAY CI Kernel Test Service, Intel Corporation
> > > https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
> >
> > Best regards,
> >     Sergio Paracuellos
> >
> > --
> > You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAMhs-H8qyOKQmPtChYO%2BjfC%2BZmj8U9yGeZJORUx14MzyLeT5QA%40mail.gmail.com.
>
>
>
> --
> Thanks,
> ~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAMhs-H-3AiKsc%2Bd2NcjetMJX0XYeHKVs5Hu%2BZhn_BTGMDnKc7g%40mail.gmail.com.
