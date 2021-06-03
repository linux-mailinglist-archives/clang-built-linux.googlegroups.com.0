Return-Path: <clang-built-linux+bncBDA63QVIYMOBBKVQ4GCQMGQEXXPFW3Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13f.google.com (mail-il1-x13f.google.com [IPv6:2607:f8b0:4864:20::13f])
	by mail.lfdr.de (Postfix) with ESMTPS id EF4E93998EE
	for <lists+clang-built-linux@lfdr.de>; Thu,  3 Jun 2021 06:18:51 +0200 (CEST)
Received: by mail-il1-x13f.google.com with SMTP id s5-20020a056e021a05b02901e07d489107sf3226034ild.3
        for <lists+clang-built-linux@lfdr.de>; Wed, 02 Jun 2021 21:18:51 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1622693931; cv=pass;
        d=google.com; s=arc-20160816;
        b=J8KP8rplt0syt5P0ypoBzUFKnIRoHonn/QqGXnZNsujj0G5lb7ghV0n4JlAgPzfbeg
         aecXPQ+PTSkaF4DCw6AYch3AJPeF6YLVdjZBNf15bWw40TjvqhgmVk9dA0u2zll3atAb
         OnJdkYj2yjYbgjJdo5cDMpNoasQfbyQMoPBl6EAjzyLbkFz1ZzKtAAUFSbEIGnaBJGWP
         5aTkmNgTZQ/LLBXmLUbYO0q+GI9AMRH3VU/wgslGIGQBhygP9hgWKOaMiDqqYbaUQgvs
         yUN+HIj3YBsSfsZRtiG0SOh1YBkPTZwUZGqKzs9VS8HsrpJMlhf4ZU1vPdFc2RJri/Tn
         OudA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=8PqUGMiJy5bHMt3mEk5FN4MHvlYNMG/xWOPNNxMcOEo=;
        b=aysvDOyKNdREfAPBjEoo6oPnmkwOkzWxxntrmcsKpJXpibUpTBtAW8zjnzJK992iUT
         IELXD0zhcNRpc+EmTe/OiyajTzGgFTQZrFstq9hKsAY2C4gK0DIaVCROBdo9pGjb7E8x
         dghYFHxCDxWQidz5PGLYBpwPkMYRcuJ1cHHPFjp5NLlQYQFpMxAHOtr1eycqNZQHJzGK
         rl9kEdfVc+0zVjCobC7yEV60eNi6XKLhglBNduq8NgZ+FmSkPA+cy2b0RZGmoRNeOdr3
         9TSnj27mqyqV8dIWtFHTEDnSl7mgoBXuYEy34iRljAxlx6FnUmA0UtA414BaB7fiZGiI
         vvNg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=HhwAkONV;
       spf=pass (google.com: domain of sergio.paracuellos@gmail.com designates 2607:f8b0:4864:20::233 as permitted sender) smtp.mailfrom=sergio.paracuellos@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8PqUGMiJy5bHMt3mEk5FN4MHvlYNMG/xWOPNNxMcOEo=;
        b=cNF/BQYxmkM9dQxHmnSRHCY4MMfZaR6o5VCaIMTFAf4NmM+0QmKDm2auA83e55pVc7
         HyKKuXPQ2bPP2Atg/WNzFstrSMzN08WeVXm8WkGPe4exYGM24ZYG1PXpewQSjJlKfL1c
         WESvhc3ai2l01MdUDwFG4LcpRQoZcNVxnyDBaOzJqWDtWYghcD0DMQAJoXzBW9qZIPFw
         46uYMu9DtjO8quSCmzRgoXwekT2/DzkKcFzEWG7XWFTHBecDa+375fG4VvoSMYLQlSkI
         8CQojGfxwWFo4cbiX9gjJdMkethkchBcA3Zef9gqqk/YWzS3JXxxcB3BDz2U00XYjv9h
         Gpug==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8PqUGMiJy5bHMt3mEk5FN4MHvlYNMG/xWOPNNxMcOEo=;
        b=krHKQFXoru5wyt3Qkw0V1vONZZK6RnvzHjL2WQn6bR2DBShIykjxhoYo1qlvMImXsJ
         oufw/tKEkEM6Kqmkhsm+o1UntfCzatO4lNUn0esw86X29aA6mxeboa2luywJi7eMBib/
         XVNTg4wWheIaRO4kFRuqRtZrpIeWfHb+IhXLZses9IfcdW8+4eaKUud4YuPdLKhqEp3N
         EB4fOxq6ClQNo0cF6hxViWqmG4wAW7UmMYl8mEJOa5uhy5+NQFKtPLGKFLXDA8MWio4j
         LlvpryZ2klpgOZUpxUYT/BKNH6/70JiUWW6mAJXJLHD0NYHzR2pg9f7EN2xzhBMKIvOw
         kwHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8PqUGMiJy5bHMt3mEk5FN4MHvlYNMG/xWOPNNxMcOEo=;
        b=UGpgjoaVOHbB4ndslC4G5Ri/CfrE8mRMw3XnMjl+PbQuO34skf8BMtj1y5brNw0pQm
         zn3SRnfq8F92H9loFqLnLWTLjcsy+cGiZ3BnsqzjHbmSerdnwmn9KuXko56TxkUuKyK6
         jYQPfen/U18MeVlPjAMWVk09Kj6ECRg2rYjGnQIs3P7B+JGTgbq2r2fnbnoz/KWs8/jc
         OsYpijzNDamu/kkmN3VU1+zOBSCZ0anHn//lnIohGLdqT1g1I+nt4On36LZV9jjCAWQ/
         zck6sWi0QgUpzr+7lvrJsmTtDRPBdBJwHtULipBjkueuJdEy1L9wrtpenCN1Wq+nTQSn
         zPAA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532h59RB9sYCjVKKe3LMT6ceNLbx8VwICYTSKbqayU5yAkjNKKmV
	5B4Cu2dExcMzcNeAu/N3Qk8=
X-Google-Smtp-Source: ABdhPJzeWTGTd7Bc0qIiBnPc6jKit+AeTy0JltMAO3YGw74KvYO2Icrwj8dIv4nv+HcQVM/1JGc0GA==
X-Received: by 2002:a92:2c02:: with SMTP id t2mr28766405ile.233.1622693930993;
        Wed, 02 Jun 2021 21:18:50 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6e02:ecb:: with SMTP id i11ls636967ilk.0.gmail; Wed, 02
 Jun 2021 21:18:50 -0700 (PDT)
X-Received: by 2002:a05:6e02:eac:: with SMTP id u12mr29331517ilj.177.1622693930645;
        Wed, 02 Jun 2021 21:18:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1622693930; cv=none;
        d=google.com; s=arc-20160816;
        b=wZNysMKpv4TKRRNoqhGnkBANttKMUrTWRGbisU0nX1fCOLwiLwvZziEHiQ9kN9+WvY
         6F5gvrtMaY9gmxDO4mYQuA6P1b4Q0jXFJg3GZ1n1yKlpXl9QAmFCxsSeg85JZBkM6Sk7
         7+SxE0/4CeTaRxxBrfQJovN7IMlStZzSY0rx3wMs4mtXsuyLrdqhAR2r5fLti+9IT68m
         9/n6uCw8Z85fKBSuBtVv+2mp6qfZjjh0WgYggQPdNDGHHSkIrb8wYE95bK5doSiIEmNT
         LUIhECo15Jfo/dRH+/KEgLeAaXSAfOVAeu00rwY43v+gKTGH2haZqKEVFxAo2o1KUKnA
         OywA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=23qUvFEybs5ImEGPrUMvy9mMOYc+i6Y2SflWzXrEu1U=;
        b=eLQqvbwDJLa8IzbjlqC/2ja2vpwPQS//sQwas8++ViRrNxhkkqYrwn0gcrF5vrRA2w
         4b0CfibkAxg2rsUx+lDA58r2Q+5JxrG77aKjLIGtYPza8R+hUzbxFasXLg8QhSQFCNc5
         5PjVSrlbZ5H4/1iLj4djCkrLRJe3YlMTdDtVsf/krIkcLs/0Pt+/kZS0QcLWBmAbk/5n
         4JdzHXpXnlIC+vJrDdv48i3WGovWsjNevsYdUtBvKgVCbAN7gHn6IKsr7pQA8pEFLQOR
         FDKQF1vmnzV1Z5pEnT/loVUJcXhoHkuxrEchDqrdAffJSUv4FYLLOMxwAAsTaOxvLIDT
         LEcw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=HhwAkONV;
       spf=pass (google.com: domain of sergio.paracuellos@gmail.com designates 2607:f8b0:4864:20::233 as permitted sender) smtp.mailfrom=sergio.paracuellos@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-oi1-x233.google.com (mail-oi1-x233.google.com. [2607:f8b0:4864:20::233])
        by gmr-mx.google.com with ESMTPS id l7si250815ilg.1.2021.06.02.21.18.50
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 02 Jun 2021 21:18:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of sergio.paracuellos@gmail.com designates 2607:f8b0:4864:20::233 as permitted sender) client-ip=2607:f8b0:4864:20::233;
Received: by mail-oi1-x233.google.com with SMTP id z3so5024431oib.5
        for <clang-built-linux@googlegroups.com>; Wed, 02 Jun 2021 21:18:50 -0700 (PDT)
X-Received: by 2002:aca:d905:: with SMTP id q5mr3530614oig.149.1622693930208;
 Wed, 02 Jun 2021 21:18:50 -0700 (PDT)
MIME-Version: 1.0
References: <202106021822.Do0Ih08d-lkp@intel.com> <CAMhs-H8qyOKQmPtChYO+jfC+Zmj8U9yGeZJORUx14MzyLeT5QA@mail.gmail.com>
 <CAKwvOd=3ootX9j=1mY3dpmGHw_7yhZkFnmgFCRQqJUaLMZqvZQ@mail.gmail.com>
 <CAMhs-H-3AiKsc+d2NcjetMJX0XYeHKVs5Hu+Zhn_BTGMDnKc7g@mail.gmail.com> <CAKwvOdkkBqnaAG4AF3vcAviCMixUKXvnXD+uP-VS_065Jsu-2w@mail.gmail.com>
In-Reply-To: <CAKwvOdkkBqnaAG4AF3vcAviCMixUKXvnXD+uP-VS_065Jsu-2w@mail.gmail.com>
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
Date: Thu, 3 Jun 2021 06:18:39 +0200
Message-ID: <CAMhs-H_5tPGpLa6+gaTCvowa0_tvA5pkLVzbg=xMWp=_8J-m+Q@mail.gmail.com>
Subject: Re: [linux-next:master 1932/6331] drivers/phy/ralink/phy-mt7621-pci.c:341:34:
 warning: unused variable 'mt7621_pci_phy_ids'
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: kernel test robot <lkp@intel.com>, kbuild-all@lists.01.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Linux Memory Management List <linux-mm@kvack.org>, Vinod Koul <vkoul@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sergio.paracuellos@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=HhwAkONV;       spf=pass
 (google.com: domain of sergio.paracuellos@gmail.com designates
 2607:f8b0:4864:20::233 as permitted sender) smtp.mailfrom=sergio.paracuellos@gmail.com;
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

On Wed, Jun 2, 2021 at 8:18 PM Nick Desaulniers <ndesaulniers@google.com> wrote:
>
> On Wed, Jun 2, 2021 at 11:09 AM Sergio Paracuellos
> <sergio.paracuellos@gmail.com> wrote:
> >
> > Hi Nick,
> >
> > On Wed, Jun 2, 2021 at 6:47 PM Nick Desaulniers <ndesaulniers@google.com> wrote:
> > >
> > > On Wed, Jun 2, 2021 at 3:38 AM Sergio Paracuellos
> > > <sergio.paracuellos@gmail.com> wrote:
> > > >
> > > > Hi,
> > > >
> > > > On Wed, Jun 2, 2021 at 12:27 PM kernel test robot <lkp@intel.com> wrote:
> > > > >
> > > > > tree:   https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git master
> > > > > head:   ed5d0667a6540293c9485dd95babb5f1e241226a
> > > > > commit: 28dcfba1a0d622b0330ae3f4a9d7c7f2c245de7a [1932/6331] phy: ralink: Kconfig: enable COMPILE_TEST on mt7621-pci-phy driver
> > > > > config: x86_64-randconfig-r016-20210602 (attached as .config)
> > >
> > > ^ randconfig
> > >
> > > > > compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project db26cd30b6dd65e88d786e97a1e453af5cd48966)
> > > > > reproduce (this is a W=1 build):
> > > > >         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
> > > > >         chmod +x ~/bin/make.cross
> > > > >         # install x86_64 cross compiling tool for clang build
> > > > >         # apt-get install binutils-x86-64-linux-gnu
> > > > >         # https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?id=28dcfba1a0d622b0330ae3f4a9d7c7f2c245de7a
> > > > >         git remote add linux-next https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git
> > > > >         git fetch --no-tags linux-next master
> > > > >         git checkout 28dcfba1a0d622b0330ae3f4a9d7c7f2c245de7a
> > > > >         # save the attached .config to linux build tree
> > > > >         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64
> > > > >
> > > > > If you fix the issue, kindly add following tag as appropriate
> > > > > Reported-by: kernel test robot <lkp@intel.com>
> > > > >
> > > > > All warnings (new ones prefixed by >>):
> > > > >
> > > > >    drivers/phy/ralink/phy-mt7621-pci.c:277:4: warning: cast to smaller integer type 'unsigned int' from 'void *' [-Wvoid-pointer-to-int-cast]
> > > > >                     (unsigned int)mt7621_phy->port_base, mt7621_phy->has_dual_port);
> > > > >                     ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> > > > >    include/linux/dev_printk.h:118:33: note: expanded from macro 'dev_info'
> > > > >            _dev_info(dev, dev_fmt(fmt), ##__VA_ARGS__)
> > > >
> > > > Already fixed in:
> > > > https://git.kernel.org/pub/scm/linux/kernel/git/phy/linux-phy.git/commit/drivers/phy/ralink/phy-mt7621-pci.c?h=next&id=652a6a2e3824ce2ebf79a2d5326940d05c4db036
> > > >
> > > > >                                           ^~~~~~~~~~~
> > > > > >> drivers/phy/ralink/phy-mt7621-pci.c:341:34: warning: unused variable 'mt7621_pci_phy_ids' [-Wunused-const-variable]
> > > > >    static const struct of_device_id mt7621_pci_phy_ids[] = {
> > > > >                                     ^
> > > >
> > > > Mmmm... This one is used through MODULE_DEVICE_TABLE macro... Am I
> > > > missing something??
> > >
> > > Pretty sure there's a config in MODULE_DEVICE_TABLE that's being
> > > disabled by the randconfig; the definition of mt7621_pci_phy_ids
> > > should also be behind preprocessor checks for that.
> >
> > So, the driver uses 'mt7621_pci_phy_ids' in two places :
> >
> > static const struct of_device_id mt7621_pci_phy_ids[] = {
> >     { .compatible = "mediatek,mt7621-pci-phy" },
> >     {},
> > };
> > MODULE_DEVICE_TABLE(of, mt7621_pci_phy_ids);
> > ^
> > This one is inside the 'MODULE' preprocessor directive.
> >
> > static struct platform_driver mt7621_pci_phy_driver = {
> >     .probe = mt7621_pci_phy_probe,
> >     .driver = {
> >         .name = "mt7621-pci-phy",
> >         .of_match_table = of_match_ptr(mt7621_pci_phy_ids),
> >                                      ^
> >                                      This one is inside 'CONFIG_OF'
> >     },
> > };
> >
> > randconfig is not setting 'CONFIG_OF' nor defining MODULE. I've been
>
> ^ yeah gating the definition on CONFIG_OF would resolve this.
>
> > looking into different drivers code and all of them follow the same
> > pattern and nothing is behind preprocessor checks at all. So I wonder
>
> They are starting to when they get these warnings from 0day bot;
> there's a lot of drivers though.

I see. Thanks for clarification. I will search for a driver already
fixing this and send a similar patch to silence this one also.

>
> > if this is really something that needs to be fixed.
>
> It's a W=1 build as well; fix it or don't.  I'm a sign, not a cop.
>

Thank you very much for your help.

Best regards,
    Sergio Paracuellos

> >
> > Thanks in advance for clarifications.
> >
> > Best regards,
> >     Sergio Paracuellos
> >
> >
> > >
> > > >
> > > > >    2 warnings generated.
> > > > >
> > > > >
> > > > > vim +/mt7621_pci_phy_ids +341 drivers/phy/ralink/phy-mt7621-pci.c
> > > > >
> > > > > d87da32372a03c Sergio Paracuellos 2020-11-21  340
> > > > > d87da32372a03c Sergio Paracuellos 2020-11-21 @341  static const struct of_device_id mt7621_pci_phy_ids[] = {
> > > > > d87da32372a03c Sergio Paracuellos 2020-11-21  342       { .compatible = "mediatek,mt7621-pci-phy" },
> > > > > d87da32372a03c Sergio Paracuellos 2020-11-21  343       {},
> > > > > d87da32372a03c Sergio Paracuellos 2020-11-21  344  };
> > > > > 8145dcb07d0c8b Sergio Paracuellos 2020-12-01  345  MODULE_DEVICE_TABLE(of, mt7621_pci_phy_ids);
> > > > > d87da32372a03c Sergio Paracuellos 2020-11-21  346
> > > > >
> > > > > :::::: The code at line 341 was first introduced by commit
> > > > > :::::: d87da32372a03ce121fc65ccd2c9a43edf56b364 phy: ralink: Add PHY driver for MT7621 PCIe PHY
> > > > >
> > > > > :::::: TO: Sergio Paracuellos <sergio.paracuellos@gmail.com>
> > > > > :::::: CC: Vinod Koul <vkoul@kernel.org>
> > > > >
> > > > > ---
> > > > > 0-DAY CI Kernel Test Service, Intel Corporation
> > > > > https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
> > > >
> > > > Best regards,
> > > >     Sergio Paracuellos
> > > >
> > > > --
> > > > You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> > > > To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> > > > To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAMhs-H8qyOKQmPtChYO%2BjfC%2BZmj8U9yGeZJORUx14MzyLeT5QA%40mail.gmail.com.
> > >
> > >
> > >
> > > --
> > > Thanks,
> > > ~Nick Desaulniers
>
>
>
> --
> Thanks,
> ~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAMhs-H_5tPGpLa6%2BgaTCvowa0_tvA5pkLVzbg%3DxMWp%3D_8J-m%2BQ%40mail.gmail.com.
