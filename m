Return-Path: <clang-built-linux+bncBDYJPJO25UGBBWMW36CQMGQERTUTQ4A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x140.google.com (mail-lf1-x140.google.com [IPv6:2a00:1450:4864:20::140])
	by mail.lfdr.de (Postfix) with ESMTPS id D4A94399255
	for <lists+clang-built-linux@lfdr.de>; Wed,  2 Jun 2021 20:18:02 +0200 (CEST)
Received: by mail-lf1-x140.google.com with SMTP id h82-20020a1985550000b0290298192a54edsf1335726lfd.7
        for <lists+clang-built-linux@lfdr.de>; Wed, 02 Jun 2021 11:18:02 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1622657882; cv=pass;
        d=google.com; s=arc-20160816;
        b=RYygNS5MuVbowTpTOXpidW+UupYYlCO0vGs9Z/5B0/ZGFBZy8FhDG3V3zyJvb580d/
         IU7VNS7gSiyy9zdhbq2J7p+do9Xqx3vCprRvR902iiiPKUDAzyuntEBDDz2p9s/ONnDI
         x+KBFFdt8uI+lWTHg19WO1myPE7CcFUi+RA6H3cIOlBI0gM5klO73XmrCSq/uOc+jAT5
         66s0S4aGROZBQYfzZk3g4qCVUoCQQg0rZxNoHL0GMD0Imx5t2+9DcPKq+i56dAUZ7Mo1
         s3ViLTxnXELG6dO7pugVkbgV8ocFbmnSMu1EzoocEtEWvX1ngzbE8DPoOywyxs9/qXZh
         yi8A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=Bw2L3Tmob7nYnTTexH012Q1F86cguEqAzWlcKCRgNss=;
        b=rz2N4OwmhJ4PuE/JOXNIvzBps8D/EAyEWG7YWv3m3/cCRSUCubgZPCtAp5bwsWYfiP
         oTHlT23DBiFuWVUurrnKTeekyHb/BOLtR68gIEstq6ryi+Pxn8SYxLRW0n3t5jmSN5h/
         pVBMsENDagGbWjEqySvLw7DS9DZHcPvZHLO3ESXZiEyGkjRNpEeApAOuiFQGKjC5YAvA
         zXeQmte/qCL948e1ZiHBOy+60OYBenZ+u/myG5sxKFais0PrNlQSb3KnxsQZISVCmaIO
         6i20ZVcj3VHOG11SR09VcvrICDGSrLZSemiqYiXc9pwY24VECLaf5lmkE/7MbO7xgpY0
         WdZQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=cJbRrLch;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12b as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Bw2L3Tmob7nYnTTexH012Q1F86cguEqAzWlcKCRgNss=;
        b=JwtZvWZjdUXpWLFgpwqD+OwOPqh/oqJzzH/8+Jm4XjVgKdAh+k0TWC19QeLocYWY17
         wsEYxGwN6sAcsHI3K6By11Xigomx+D3F5InMF2volTngX9QqhPOXqtqAlXsmsfWecLks
         FyQryXGieAkd/FFKFZ4TSKj6Z4jKM8qql+oXzw2f79y68jsyOaPOszLU1kE22m8dY9tB
         FkLKn3XSrQKedCV7ooozGJi1m3s/paZgoYH4MEw6sbmscmS3WHhg/4WvDBR1fJRObWBQ
         0kl0Ky73JOizr0K7/vSGeedgq7zPcWNwXf3Q7+fstkNJSRiP+eEoeU4DSKJZfLC/CryG
         XW/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Bw2L3Tmob7nYnTTexH012Q1F86cguEqAzWlcKCRgNss=;
        b=OxP1SmJGaHLjDe2q4hJSxBandhYyJK702Xt1SEmRzTjxc0IxJKeOCM957S8qfVcfzf
         YK2EZaVhYljdYyiHIuWv1a0oAJz/rl1zawuWIe/XGnlPk2cbNkrgKSX+yphJINh2wwgO
         pKG1b+//20V7eiVfd0yFN/WR5zZYdfqv3bZxnNTLc5+41ElJCf72EMWVZonrnrYn4rN/
         WYZFlldD4eH7XycoNCSL1rhCzBdq0OPWFPHaomrR0ADC3Ip6tA/iUNqUgx4BZj+xAj/a
         t4xOaH9JIjJmCoheEGZBwXq6/62dKa3vLIaMrHqm6zNa4sz0TQjcdlJHkVzxKI7oala3
         Mm7g==
X-Gm-Message-State: AOAM5339eVDA+80WIRN5V7l4hmeOfcLGatAIOwHtygEH/F0Im07dkjzS
	pdfrv0TQrGxHebW5j13/GOw=
X-Google-Smtp-Source: ABdhPJyEkME651ebUe2TiQc32RZyymdHwmkkpgpQalGDp3Ghs1ShJUS19OHUj2rksxm2a1hwBfJ9aQ==
X-Received: by 2002:a2e:b4ed:: with SMTP id s13mr26332021ljm.86.1622657881857;
        Wed, 02 Jun 2021 11:18:01 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6512:3b99:: with SMTP id g25ls648069lfv.2.gmail; Wed, 02
 Jun 2021 11:18:00 -0700 (PDT)
X-Received: by 2002:a19:cd8:: with SMTP id 207mr8781726lfm.322.1622657880782;
        Wed, 02 Jun 2021 11:18:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1622657880; cv=none;
        d=google.com; s=arc-20160816;
        b=oQxnkoyYImssQfR6QwphQ0XV/phLKk8QYqC6wcjDOYh1MJRwn6+DieZ4Pa2T1pv9ZZ
         mGYddENr+NGU0wVLXj+k6+sqg06O/ccX06DMHsN+FlzQXUZQxl9qZrNzs8bRfd3TzFEu
         V134moO3mUXdt1lah66N/6lWf0Ans3VdB9gevc1EHfhR+APma1lxYrfoUWAqDGpFy7ob
         eZ5gnVzuSgX5IIFexYzVns8fbDkFzHtUgzv2MQvPjnrrcDbdtJkvEyeAuS9v9sBRs+ub
         uDibtSgwc/+w7FaszIkz/p6WTAEYEB6Le3orLOp/tSCPu5GEMvh4uU2Vui2F0Zy2eXtu
         ss4A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=6O7NkYJCtgCzilxV+5vlrLDI0TjVrb6xj3PkeIdIWGQ=;
        b=cKrFaEeJP7NHCLb5XJBI1RbbSo8TOsXVM5u8h5sbpF34y/p6zgt44P/3tk3/eX8rw3
         V3IW8S5SiXvQ+ZuUdAct77OWXTxebTFIhvhsQteMLzRAnTv+YQzBNKIjE0Z7kT/qttCJ
         3YqV6a5MVVHx3zOuxfP0fn95v6pPo9zmd/165jCq564QytAe46s4Zp5D8WrjHraVjhWH
         +KPkjy19kPDIHQ0pGMHruPiiwtSVOEMtoOtb9zBK/sfYoSjkYcjbDTT4mlKYoaQ9MNXX
         4LrH93qAOOwwxC5V634iot68zJfGlDOpXJVCHsiXQ+oL7UqCwt6zlsOB8I+6GXzSbCFd
         X8kw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=cJbRrLch;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12b as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lf1-x12b.google.com (mail-lf1-x12b.google.com. [2a00:1450:4864:20::12b])
        by gmr-mx.google.com with ESMTPS id f20si33123ljj.6.2021.06.02.11.18.00
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 02 Jun 2021 11:18:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12b as permitted sender) client-ip=2a00:1450:4864:20::12b;
Received: by mail-lf1-x12b.google.com with SMTP id v8so4785665lft.8
        for <clang-built-linux@googlegroups.com>; Wed, 02 Jun 2021 11:18:00 -0700 (PDT)
X-Received: by 2002:a05:6512:220c:: with SMTP id h12mr24364736lfu.374.1622657880204;
 Wed, 02 Jun 2021 11:18:00 -0700 (PDT)
MIME-Version: 1.0
References: <202106021822.Do0Ih08d-lkp@intel.com> <CAMhs-H8qyOKQmPtChYO+jfC+Zmj8U9yGeZJORUx14MzyLeT5QA@mail.gmail.com>
 <CAKwvOd=3ootX9j=1mY3dpmGHw_7yhZkFnmgFCRQqJUaLMZqvZQ@mail.gmail.com> <CAMhs-H-3AiKsc+d2NcjetMJX0XYeHKVs5Hu+Zhn_BTGMDnKc7g@mail.gmail.com>
In-Reply-To: <CAMhs-H-3AiKsc+d2NcjetMJX0XYeHKVs5Hu+Zhn_BTGMDnKc7g@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 2 Jun 2021 11:17:48 -0700
Message-ID: <CAKwvOdkkBqnaAG4AF3vcAviCMixUKXvnXD+uP-VS_065Jsu-2w@mail.gmail.com>
Subject: Re: [linux-next:master 1932/6331] drivers/phy/ralink/phy-mt7621-pci.c:341:34:
 warning: unused variable 'mt7621_pci_phy_ids'
To: Sergio Paracuellos <sergio.paracuellos@gmail.com>
Cc: kernel test robot <lkp@intel.com>, kbuild-all@lists.01.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Linux Memory Management List <linux-mm@kvack.org>, Vinod Koul <vkoul@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=cJbRrLch;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12b
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

On Wed, Jun 2, 2021 at 11:09 AM Sergio Paracuellos
<sergio.paracuellos@gmail.com> wrote:
>
> Hi Nick,
>
> On Wed, Jun 2, 2021 at 6:47 PM Nick Desaulniers <ndesaulniers@google.com> wrote:
> >
> > On Wed, Jun 2, 2021 at 3:38 AM Sergio Paracuellos
> > <sergio.paracuellos@gmail.com> wrote:
> > >
> > > Hi,
> > >
> > > On Wed, Jun 2, 2021 at 12:27 PM kernel test robot <lkp@intel.com> wrote:
> > > >
> > > > tree:   https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git master
> > > > head:   ed5d0667a6540293c9485dd95babb5f1e241226a
> > > > commit: 28dcfba1a0d622b0330ae3f4a9d7c7f2c245de7a [1932/6331] phy: ralink: Kconfig: enable COMPILE_TEST on mt7621-pci-phy driver
> > > > config: x86_64-randconfig-r016-20210602 (attached as .config)
> >
> > ^ randconfig
> >
> > > > compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project db26cd30b6dd65e88d786e97a1e453af5cd48966)
> > > > reproduce (this is a W=1 build):
> > > >         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
> > > >         chmod +x ~/bin/make.cross
> > > >         # install x86_64 cross compiling tool for clang build
> > > >         # apt-get install binutils-x86-64-linux-gnu
> > > >         # https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?id=28dcfba1a0d622b0330ae3f4a9d7c7f2c245de7a
> > > >         git remote add linux-next https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git
> > > >         git fetch --no-tags linux-next master
> > > >         git checkout 28dcfba1a0d622b0330ae3f4a9d7c7f2c245de7a
> > > >         # save the attached .config to linux build tree
> > > >         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64
> > > >
> > > > If you fix the issue, kindly add following tag as appropriate
> > > > Reported-by: kernel test robot <lkp@intel.com>
> > > >
> > > > All warnings (new ones prefixed by >>):
> > > >
> > > >    drivers/phy/ralink/phy-mt7621-pci.c:277:4: warning: cast to smaller integer type 'unsigned int' from 'void *' [-Wvoid-pointer-to-int-cast]
> > > >                     (unsigned int)mt7621_phy->port_base, mt7621_phy->has_dual_port);
> > > >                     ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> > > >    include/linux/dev_printk.h:118:33: note: expanded from macro 'dev_info'
> > > >            _dev_info(dev, dev_fmt(fmt), ##__VA_ARGS__)
> > >
> > > Already fixed in:
> > > https://git.kernel.org/pub/scm/linux/kernel/git/phy/linux-phy.git/commit/drivers/phy/ralink/phy-mt7621-pci.c?h=next&id=652a6a2e3824ce2ebf79a2d5326940d05c4db036
> > >
> > > >                                           ^~~~~~~~~~~
> > > > >> drivers/phy/ralink/phy-mt7621-pci.c:341:34: warning: unused variable 'mt7621_pci_phy_ids' [-Wunused-const-variable]
> > > >    static const struct of_device_id mt7621_pci_phy_ids[] = {
> > > >                                     ^
> > >
> > > Mmmm... This one is used through MODULE_DEVICE_TABLE macro... Am I
> > > missing something??
> >
> > Pretty sure there's a config in MODULE_DEVICE_TABLE that's being
> > disabled by the randconfig; the definition of mt7621_pci_phy_ids
> > should also be behind preprocessor checks for that.
>
> So, the driver uses 'mt7621_pci_phy_ids' in two places :
>
> static const struct of_device_id mt7621_pci_phy_ids[] = {
>     { .compatible = "mediatek,mt7621-pci-phy" },
>     {},
> };
> MODULE_DEVICE_TABLE(of, mt7621_pci_phy_ids);
> ^
> This one is inside the 'MODULE' preprocessor directive.
>
> static struct platform_driver mt7621_pci_phy_driver = {
>     .probe = mt7621_pci_phy_probe,
>     .driver = {
>         .name = "mt7621-pci-phy",
>         .of_match_table = of_match_ptr(mt7621_pci_phy_ids),
>                                      ^
>                                      This one is inside 'CONFIG_OF'
>     },
> };
>
> randconfig is not setting 'CONFIG_OF' nor defining MODULE. I've been

^ yeah gating the definition on CONFIG_OF would resolve this.

> looking into different drivers code and all of them follow the same
> pattern and nothing is behind preprocessor checks at all. So I wonder

They are starting to when they get these warnings from 0day bot;
there's a lot of drivers though.

> if this is really something that needs to be fixed.

It's a W=1 build as well; fix it or don't.  I'm a sign, not a cop.

>
> Thanks in advance for clarifications.
>
> Best regards,
>     Sergio Paracuellos
>
>
> >
> > >
> > > >    2 warnings generated.
> > > >
> > > >
> > > > vim +/mt7621_pci_phy_ids +341 drivers/phy/ralink/phy-mt7621-pci.c
> > > >
> > > > d87da32372a03c Sergio Paracuellos 2020-11-21  340
> > > > d87da32372a03c Sergio Paracuellos 2020-11-21 @341  static const struct of_device_id mt7621_pci_phy_ids[] = {
> > > > d87da32372a03c Sergio Paracuellos 2020-11-21  342       { .compatible = "mediatek,mt7621-pci-phy" },
> > > > d87da32372a03c Sergio Paracuellos 2020-11-21  343       {},
> > > > d87da32372a03c Sergio Paracuellos 2020-11-21  344  };
> > > > 8145dcb07d0c8b Sergio Paracuellos 2020-12-01  345  MODULE_DEVICE_TABLE(of, mt7621_pci_phy_ids);
> > > > d87da32372a03c Sergio Paracuellos 2020-11-21  346
> > > >
> > > > :::::: The code at line 341 was first introduced by commit
> > > > :::::: d87da32372a03ce121fc65ccd2c9a43edf56b364 phy: ralink: Add PHY driver for MT7621 PCIe PHY
> > > >
> > > > :::::: TO: Sergio Paracuellos <sergio.paracuellos@gmail.com>
> > > > :::::: CC: Vinod Koul <vkoul@kernel.org>
> > > >
> > > > ---
> > > > 0-DAY CI Kernel Test Service, Intel Corporation
> > > > https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
> > >
> > > Best regards,
> > >     Sergio Paracuellos
> > >
> > > --
> > > You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> > > To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> > > To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAMhs-H8qyOKQmPtChYO%2BjfC%2BZmj8U9yGeZJORUx14MzyLeT5QA%40mail.gmail.com.
> >
> >
> >
> > --
> > Thanks,
> > ~Nick Desaulniers



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkkBqnaAG4AF3vcAviCMixUKXvnXD%2BuP-VS_065Jsu-2w%40mail.gmail.com.
