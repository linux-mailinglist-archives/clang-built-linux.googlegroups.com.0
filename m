Return-Path: <clang-built-linux+bncBDA63QVIYMOBBFV73WCQMGQEMRAO5NA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3c.google.com (mail-io1-xd3c.google.com [IPv6:2607:f8b0:4864:20::d3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CBE13986A8
	for <lists+clang-built-linux@lfdr.de>; Wed,  2 Jun 2021 12:38:16 +0200 (CEST)
Received: by mail-io1-xd3c.google.com with SMTP id r2-20020a5e95020000b0290435b891bacbsf1199042ioj.10
        for <lists+clang-built-linux@lfdr.de>; Wed, 02 Jun 2021 03:38:16 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1622630295; cv=pass;
        d=google.com; s=arc-20160816;
        b=hqlcmHMnNPcsHzzQtCpC4Nl37U0r7xF3tpHlx/fm1Y6ANLH0b30lbUQ/vJjqyAb89o
         Aj4RH8MAe72iCAKgUtuve+TfSxhKZrpUoIixxakvwDzCiplKlne4K/N+5gx1n3zxL38r
         W8JMeDEe9SszcZXWBTFKPFx7hYYBIgCS9gAmQmzMZwnmOOXC6bVhrTnKTWzKgG0kNVrX
         0mcSlQYPpAQhLKqVv229gsWg8tjTa52i18pqFhfh5nX2RkRLgeMYmIfdgAYYMqgEylOJ
         ndCN/icZV8VamDUQh6fxw0iOVR0HLv5LNbUZ77vriCwdfZthL5Wt4lkHoJcHxJ0UeAxV
         XVOQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=DB2xrE7EBB96+1JwjJBQqFr9SsRJlAs7trEnzUUFslQ=;
        b=kh7bBF+e3/idLM1WMUXbxb9+oB1cTKQ/G4+bfEy8rAIiRD0+qnLvrgUV7eYSxRJvC7
         Uc1/YK0PqtGMqxm8303V2fT3OrtDDXzuOutYMADRqE6g7wEt1qGGSLTVPrWQXJdyXQmW
         sTX5LkqTDt4dEMt5Iaieu5p68pekZhHoIii9648TtAqeFdKKddZP7kEtsq7E1fsEeoy0
         94/YBGx7V7mS5SDVpu8RFOcZmkmaDLB1cnFLIuc6EUNXxb0vgb/OBmBr9tQ9S9eAL3qP
         79LYluFVs70OI4WJlzWvastid5IfhsTrkcB3kumb91fOvH2XV/wqN0WkSjtozt51vBeQ
         Frzg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=QchcApyg;
       spf=pass (google.com: domain of sergio.paracuellos@gmail.com designates 2607:f8b0:4864:20::b2c as permitted sender) smtp.mailfrom=sergio.paracuellos@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=DB2xrE7EBB96+1JwjJBQqFr9SsRJlAs7trEnzUUFslQ=;
        b=jfQL5g0sLiUxeO2Gvd4IKh5isrfeLOtJ3y8syumjG0vnjeV0iE9T6EHL8bcD1ZilW/
         fda8WdKYCQpmg+MOC9JPFb74bcDtTUCFg2HHcA2HV3N6xe5xnBF+IcfqR0SVVvJcIzMD
         mukbIgsgwnW/Peoylhy488X08yI94Fw+lBjpLaLbKiVUyq4gbtxX0NbPrb4CLQZTREgq
         zFX3wsCJKu4+stp45uaolcu711hxVpxf6CpmChzbdWHR6TpX+CdeDI3i/lA6j1frDnfa
         +whCpUGfyjJD1+MQPNG+H3MZOlmdP7VHBDF3AX6JNvV9l0bXmGNATKUtk/xF95XVvSkw
         zz+A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=DB2xrE7EBB96+1JwjJBQqFr9SsRJlAs7trEnzUUFslQ=;
        b=TsNhxx3v+mfz31fo7Q/J+0WRsmb+0ww46dUVptMvksLpcYgYRRN4leyKyaQ+5WleXK
         vobWogeW52bBC0rluXz7oOFczWvi5mG5Yy8pN6ckKjhau2nwSUGM1WCdqkhtIIKvYc53
         umzOINBXUIZjo3tMxfvNEesFzE4RNrrdmYLuz5By/wEG2JthF0ntFZc+GhA8jjd+hhKu
         CEhg6yryNhpMxJSdYcGG7RF7HBb8TQY8Z+nHJOQZwijD+/6Z6P3QiCooqCmyeEW8oyeY
         rPMf9qxSJfUHmvBFZH1ZdSuIgILiG+9Yia0gLtvnG+G936ur9Gp9a6z/NzPEt1F6qWlf
         Raxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=DB2xrE7EBB96+1JwjJBQqFr9SsRJlAs7trEnzUUFslQ=;
        b=OxbdKkUYh5RqlbMG9qFOV4PZVHYzdR0ajtgKGZWmNTO6+4B0PYq6PrNZ42x2R3DUfa
         cZ+n0Ho7XzI7aALyLGNdce2I7oEji0WNm4xLNGlZpiFtBVRB9PA1dlMSMwHnYhYPf05R
         sbet6Nh500Aac/BvYNDbscuCpQEKEsRBN4Uk7UhFMiansS2S4oeuxAjzNOJ8AONktBfU
         sWy/woFPOEWzGu/UoUAXEGylHMspPP+T1059cmZFPhN8XilQsbqoIZJV/Edb683yudeK
         bZIkpOZiNo+M3W+DdAJOI5p3zQPIkwICs/YEv4yGBXfp3Ve9ni2bNLemnUsX+nm33QtX
         lL9g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532u9FDJkAUUtb/uXBP84FscR+Pw+i+dpDSU3E61kqYHh/k+DNsW
	GHL9dj923AeBZZpCUdoXjEg=
X-Google-Smtp-Source: ABdhPJwC0g19OJpbxQOH7EOy/Y0D/6NamOQvBJtPkTn6NkIKEtFjpWIZfp5Iqn9eiwrrcnyduhQGsw==
X-Received: by 2002:a02:a81a:: with SMTP id f26mr29971042jaj.110.1622630294969;
        Wed, 02 Jun 2021 03:38:14 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6e02:1545:: with SMTP id j5ls4917632ilu.6.gmail; Wed, 02
 Jun 2021 03:38:14 -0700 (PDT)
X-Received: by 2002:a92:d24c:: with SMTP id v12mr13375556ilg.306.1622630294420;
        Wed, 02 Jun 2021 03:38:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1622630294; cv=none;
        d=google.com; s=arc-20160816;
        b=urw1T+q0sWAnoyRtowTDgUiKm/upGReTW8B3lskTOvVpqb/srxOD1tLHc0SnogIu32
         tMBOKoCLYQL+1pAGBY8h/mMbXuuiV9ZfYxPnp88YFRBYtEvGhxQpCW2mPlxziujwfPjU
         rNSLVAjs83ed12noGgkIUdkb6p2YCJ95Y/7OVZ6ULOwPIvmOYvGtp8h/UDPjBZGRK3Hm
         cBPwV9bpI2YgPMbjW3i+IzSm3vxQu9c2JwbBtBUGaKGUkjONFEZHrl1K3oVBi5OC3X+2
         2wTgnzfMQZJua2YpabLWwLF0tBR3PZvcCTaCiRzjPum6CqFWyfjL1RvyjQRUL3qLrGPE
         cydw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=+nN1Ey8596OEKpeFK1YNlUbyIuya/kgZc7zNW88mKqc=;
        b=F2QnrVKA+fOU/flg+Jz2SS1cLRk3FAaO/s05joF392TcGLpcCIMtHOxUOJGWAyXe+s
         qqA+iBd3OCMap1xMdEDY7XVCNJ9ICuuRYW5hJygeGQf+aHKX9Q5GXHkZsz598/6Qmc+M
         XhyS6Q3+Di6a75KgrkLmzOiATfojrysBgEqdEEciry6YyjtImDUoWgXOW4lI/AtSKZP1
         cUADVTOumH2GAnbAcUiNXBpLUA7hKj9cn+NKoAT0FTovK20CL2vLmN0uEZJV3gjm4zYX
         wNAVjLHEOozMW9b/3Frrb2x8omuhMlzlaQ6mjCybrIg+fjs4vrpgBmHYGZSZPOScTOyd
         /m5Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=QchcApyg;
       spf=pass (google.com: domain of sergio.paracuellos@gmail.com designates 2607:f8b0:4864:20::b2c as permitted sender) smtp.mailfrom=sergio.paracuellos@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-yb1-xb2c.google.com (mail-yb1-xb2c.google.com. [2607:f8b0:4864:20::b2c])
        by gmr-mx.google.com with ESMTPS id f4si515537ils.0.2021.06.02.03.38.14
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 02 Jun 2021 03:38:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of sergio.paracuellos@gmail.com designates 2607:f8b0:4864:20::b2c as permitted sender) client-ip=2607:f8b0:4864:20::b2c;
Received: by mail-yb1-xb2c.google.com with SMTP id b9so3119162ybg.10
        for <clang-built-linux@googlegroups.com>; Wed, 02 Jun 2021 03:38:14 -0700 (PDT)
X-Received: by 2002:a25:5ec2:: with SMTP id s185mr47564774ybb.303.1622630294001;
 Wed, 02 Jun 2021 03:38:14 -0700 (PDT)
MIME-Version: 1.0
References: <202106021822.Do0Ih08d-lkp@intel.com>
In-Reply-To: <202106021822.Do0Ih08d-lkp@intel.com>
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
Date: Wed, 2 Jun 2021 12:38:02 +0200
Message-ID: <CAMhs-H8qyOKQmPtChYO+jfC+Zmj8U9yGeZJORUx14MzyLeT5QA@mail.gmail.com>
Subject: Re: [linux-next:master 1932/6331] drivers/phy/ralink/phy-mt7621-pci.c:341:34:
 warning: unused variable 'mt7621_pci_phy_ids'
To: kernel test robot <lkp@intel.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com, 
	Linux Memory Management List <linux-mm@kvack.org>, Vinod Koul <vkoul@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sergio.paracuellos@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=QchcApyg;       spf=pass
 (google.com: domain of sergio.paracuellos@gmail.com designates
 2607:f8b0:4864:20::b2c as permitted sender) smtp.mailfrom=sergio.paracuellos@gmail.com;
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

Hi,

On Wed, Jun 2, 2021 at 12:27 PM kernel test robot <lkp@intel.com> wrote:
>
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git master
> head:   ed5d0667a6540293c9485dd95babb5f1e241226a
> commit: 28dcfba1a0d622b0330ae3f4a9d7c7f2c245de7a [1932/6331] phy: ralink: Kconfig: enable COMPILE_TEST on mt7621-pci-phy driver
> config: x86_64-randconfig-r016-20210602 (attached as .config)
> compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project db26cd30b6dd65e88d786e97a1e453af5cd48966)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install x86_64 cross compiling tool for clang build
>         # apt-get install binutils-x86-64-linux-gnu
>         # https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?id=28dcfba1a0d622b0330ae3f4a9d7c7f2c245de7a
>         git remote add linux-next https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git
>         git fetch --no-tags linux-next master
>         git checkout 28dcfba1a0d622b0330ae3f4a9d7c7f2c245de7a
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64
>
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
>
> All warnings (new ones prefixed by >>):
>
>    drivers/phy/ralink/phy-mt7621-pci.c:277:4: warning: cast to smaller integer type 'unsigned int' from 'void *' [-Wvoid-pointer-to-int-cast]
>                     (unsigned int)mt7621_phy->port_base, mt7621_phy->has_dual_port);
>                     ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>    include/linux/dev_printk.h:118:33: note: expanded from macro 'dev_info'
>            _dev_info(dev, dev_fmt(fmt), ##__VA_ARGS__)

Already fixed in:
https://git.kernel.org/pub/scm/linux/kernel/git/phy/linux-phy.git/commit/drivers/phy/ralink/phy-mt7621-pci.c?h=next&id=652a6a2e3824ce2ebf79a2d5326940d05c4db036

>                                           ^~~~~~~~~~~
> >> drivers/phy/ralink/phy-mt7621-pci.c:341:34: warning: unused variable 'mt7621_pci_phy_ids' [-Wunused-const-variable]
>    static const struct of_device_id mt7621_pci_phy_ids[] = {
>                                     ^

Mmmm... This one is used through MODULE_DEVICE_TABLE macro... Am I
missing something??

>    2 warnings generated.
>
>
> vim +/mt7621_pci_phy_ids +341 drivers/phy/ralink/phy-mt7621-pci.c
>
> d87da32372a03c Sergio Paracuellos 2020-11-21  340
> d87da32372a03c Sergio Paracuellos 2020-11-21 @341  static const struct of_device_id mt7621_pci_phy_ids[] = {
> d87da32372a03c Sergio Paracuellos 2020-11-21  342       { .compatible = "mediatek,mt7621-pci-phy" },
> d87da32372a03c Sergio Paracuellos 2020-11-21  343       {},
> d87da32372a03c Sergio Paracuellos 2020-11-21  344  };
> 8145dcb07d0c8b Sergio Paracuellos 2020-12-01  345  MODULE_DEVICE_TABLE(of, mt7621_pci_phy_ids);
> d87da32372a03c Sergio Paracuellos 2020-11-21  346
>
> :::::: The code at line 341 was first introduced by commit
> :::::: d87da32372a03ce121fc65ccd2c9a43edf56b364 phy: ralink: Add PHY driver for MT7621 PCIe PHY
>
> :::::: TO: Sergio Paracuellos <sergio.paracuellos@gmail.com>
> :::::: CC: Vinod Koul <vkoul@kernel.org>
>
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

Best regards,
    Sergio Paracuellos

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAMhs-H8qyOKQmPtChYO%2BjfC%2BZmj8U9yGeZJORUx14MzyLeT5QA%40mail.gmail.com.
