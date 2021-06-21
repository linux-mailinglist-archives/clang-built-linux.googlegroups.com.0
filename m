Return-Path: <clang-built-linux+bncBCX2JBVY5MBBBDXCYKDAMGQE6W5SY3Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3e.google.com (mail-qv1-xf3e.google.com [IPv6:2607:f8b0:4864:20::f3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 20AE63AEC72
	for <lists+clang-built-linux@lfdr.de>; Mon, 21 Jun 2021 17:32:32 +0200 (CEST)
Received: by mail-qv1-xf3e.google.com with SMTP id bt11-20020ad455cb0000b0290258c7c1acd0sf4913759qvb.5
        for <lists+clang-built-linux@lfdr.de>; Mon, 21 Jun 2021 08:32:32 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1624289551; cv=pass;
        d=google.com; s=arc-20160816;
        b=j56R9OL3tpC5JqtFqCUMHTDnlUjApRFoRi47k+PlclHsY4nmEDol9xqeFgZ2scb7dX
         ZtT+Y9NqD80W5GkztIDxJBBC7aj30yBXaI6WNkT78yJMRsD+SFKgMDagDvl2iQsZqsMg
         70mhMKVJ7sLCzPfDc/8T2xzrTMxAY6nhH2bqpXc3gZPDKIrPedAh59MMREaE74MRtJAh
         6MiER++tmwtG5C+0xJ61ih7Fv59r7B3qFTBsL3ZcL8k2rBvRJhKdR2cfj6Owo9XAsIGJ
         rtiPidEHou8eTR2lpTHL+QTwG/9edgdPzxJbWKWlgv+KeGqplmxMGTUCB6dVwE+VYpnT
         vOdA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=p8TFfYGaVvffTgLcAmvUj9/I+djEiH13aHo/nK6VLSw=;
        b=uCyf1UIk+DO7lEhEY7PqhFUZXIw0bDI8/5IHwDouCTpgvft8EKjM6OY2XOY/0H+ush
         tmS/trSflJu4rxXFVF0P6VteC+IwjQtDEVItTn0i6/r9FDARoGxoWvawt3KSpyrkzax+
         +0BOxSH/Oauv8sLWt8Mk3G7cy6i7dBVfcxZuDiFds3TiUxlJAl5CRDETemBEqPn79gS1
         lznxVi43fqOXFMg4YXifbhi+3Kc7gjBTkyCEQF5YqyBtqxPY+X9LDd5vzZs+GqLpz1hn
         nlq3qtISZlbp5Vk1y9c/nqdTL05SK/CFuU1HjRlYPo3oU/g///Rwfbe3QQiZ75hBOaJN
         oeHg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of philip.li@intel.com designates 134.134.136.20 as permitted sender) smtp.mailfrom=philip.li@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=p8TFfYGaVvffTgLcAmvUj9/I+djEiH13aHo/nK6VLSw=;
        b=R+qvz8mFqSnzMBObsXgHz32W1n46ClF9HxgiEgp2TpL16fydD+uq1JMw1tcmAgZUbP
         gEibPr8szvguYRodJT+fFxqW5pOGzhv7cLvfrg6ciKgZ6/k3srBtgUYNquwHJOFVCXdS
         mGxpB45A6TJTas0+KfQhOt0NRyvM4hNlRAYdkyJqM4H73dmRXfEwkYu1Phc5I8RRLcCs
         HOtTPQrXTnNi2BgJNbOAINbYHbcyYbOdRppv01DS9f0pfk52nvZFjob4qJy/Fe5/C6QY
         rqPDsMr3hS0tMhMCqTqOfWY4RdkTEbLoEw7DtpKVptZjL5be1NzDk+Gdl12Vyvgfhgb9
         svRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:references:mime-version:content-disposition
         :in-reply-to:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=p8TFfYGaVvffTgLcAmvUj9/I+djEiH13aHo/nK6VLSw=;
        b=lN02uuoz2sDo+TCMqnWPKyBM4KS+Gv4Nq6V585CwHlinsppM2cd3de6Gu/VNlZ2goZ
         qnNa5FunN6YTsjpx3AsuOAzvdhZfJN4JV/8uTK8FRgzEoWEwHVZi+1lMNMZGvwO0tRM5
         GVWgU3kYWGNTd/tklDk+6k9mhHY28HPuTMG12Pv+HL053zONe9QXCh3KuC1DqwBVKgEI
         qU8xT1L8ZKk2NZh+pfvrO0c7vHx0a/6eAcit2NRihdViPAGYO0Mv8O+9Gl+X3+0rkLjq
         CIq9F9Le8GkPKZp0r2nbsfogr/PZ34oPeue/riyQLgGBR74/yZZVrGgTZiNGCYC54BYP
         kMrw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530+nUdi57XWVdUGvpZPFAYX0R4G9wFL1ASTH6/R0gmu8KqxZ20i
	WANJ/KSeRJRt39xRxTwpE2M=
X-Google-Smtp-Source: ABdhPJwHCc4dcKfoV3N3bOdQzM/XKCJcW53eShHBomd33DIwIffR1WP0yYuS0pojO6eZlv7YZydJjA==
X-Received: by 2002:a25:ce51:: with SMTP id x78mr7162740ybe.457.1624289551044;
        Mon, 21 Jun 2021 08:32:31 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:2b08:: with SMTP id r8ls9364150ybr.9.gmail; Mon, 21 Jun
 2021 08:32:30 -0700 (PDT)
X-Received: by 2002:a25:d606:: with SMTP id n6mr33538956ybg.210.1624289550526;
        Mon, 21 Jun 2021 08:32:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1624289550; cv=none;
        d=google.com; s=arc-20160816;
        b=PZCfU9j/SmOnRy7Y2+djB6IKgRQjJ65q63aDzrI0xANGSn2Vk4kDYxt/9tdI8PieHj
         SdAOsSJHvouUG6eUyqBiYUh+8vb1nJrgl6ji/NICORjYnbKJJZLVcHI4K6atzt9qHi3D
         66lvsRL/ITo1U1OrghmIS75PSnnFtooncyeJS1ig7OfOUSHy3uLALgc4gVs4ON0HowBp
         uHW1dDcMlkqUmhnRyGoD4Adr06LQt3TxFF00hZZ49sLWEZKOxT2vv62H1ZSiL1RS9uD6
         Nqor60XATwuOW/puW2boiw1JHQQ3E4v4iFoAbbubbcmFwQrO9SdWNZDbKh55o2CiyDK9
         ekVw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:ironport-sdr:ironport-sdr;
        bh=v0fUa5SrTGS9bbLzY3oKqeGwESsXNqbQiYAsE16UNNg=;
        b=xxxz+R9FuAm8V0rQAwr/ZRIZdYY7zTamYY/rWTyeFK8N9ZsEqCpLWivGMuZ+CHYdrg
         O+ni1cunz3yFoNlaJtMJFQeBFpTZt/migdSlMZsAGbIuQb7zT3qTq7PJ0xvdd515zw1u
         FWtab9tW+0Yy/OInd4Zi6B8l0zgiElc0NagjF+nVNjLt52K6kqQAAoucjjJM0FPMSUHF
         waujp1Rc7jEtWuTKzBPPotj32FVzMBakjMSyJvHuzo1b8MTvH2wycz6pTIawdjOrE6jj
         sXgT/W3FM+gystp3o4/WElBvHfWTZ0c1sw+5UdWnHI5j/b1rh8mkW9Asnb7jJV3EBsYm
         AonQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of philip.li@intel.com designates 134.134.136.20 as permitted sender) smtp.mailfrom=philip.li@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga02.intel.com (mga02.intel.com. [134.134.136.20])
        by gmr-mx.google.com with ESMTPS id q62si1087878ybc.4.2021.06.21.08.32.29
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 21 Jun 2021 08:32:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of philip.li@intel.com designates 134.134.136.20 as permitted sender) client-ip=134.134.136.20;
IronPort-SDR: tgMcyrnWxzvb+RIP6pxEgSNXP3DKfh5NvSzByoUOMX+NkIETVJOZzHnjOqahw+FyhEjodipMI6
 QNmKsLuyR9fA==
X-IronPort-AV: E=McAfee;i="6200,9189,10022"; a="194005279"
X-IronPort-AV: E=Sophos;i="5.83,289,1616482800"; 
   d="scan'208";a="194005279"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
  by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 21 Jun 2021 08:32:28 -0700
IronPort-SDR: ps2arWSaQ+GJjndn3YF064WeshDki73OIg90DhjdWC/5ZMva+m5rBOS5QCSFZgVrcw/yYWR1IB
 ubbRooPxT/Sw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,289,1616482800"; 
   d="scan'208";a="641355487"
Received: from pl-dbox.sh.intel.com (HELO pl-dbox) ([10.239.159.39])
  by fmsmga005.fm.intel.com with ESMTP; 21 Jun 2021 08:32:25 -0700
Date: Mon, 21 Jun 2021 23:24:57 +0800
From: Philip Li <philip.li@intel.com>
To: kernel test robot <lkp@intel.com>
Cc: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>,
	kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	Vinod Koul <vkoul@kernel.org>, Kishon <kishon@ti.com>
Subject: Re: [kbuild-all] [phy-linux-phy:next 33/35] make[2]: *** No rule to
 make target
 '/tmp/kernel/x86_64-randconfig-r023-20210621/clang-13/bd1f775d6027810d366600e2490a2ff247e3466e/lib/modules/5.13.0-rc1+/kernel/drivers/net/ethernet/mellanox/mlxsw/mlxsw_pci.ko',
 needed by '__modinst'.
Message-ID: <20210621152457.GJ158568@pl-dbox>
References: <202106212034.BIzxCZSQ-lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <202106212034.BIzxCZSQ-lkp@intel.com>
X-Original-Sender: philip.li@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of philip.li@intel.com designates 134.134.136.20 as
 permitted sender) smtp.mailfrom=philip.li@intel.com;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=intel.com
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

On Mon, Jun 21, 2021 at 08:00:43PM +0800, kernel test robot wrote:
> Hi Heiko,
> 
> First bad commit (maybe != root cause):
> 
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/phy/linux-phy.git next
> head:   f7eedcb8539ddcbb6fe7791f1b4ccf43f905c72f
> commit: bd1f775d6027810d366600e2490a2ff247e3466e [33/35] phy/rockchip: add Innosilicon-based CSI dphy
> config: x86_64-randconfig-r023-20210621 (attached as .config)
> compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project e1adf90826a57b674eee79b071fb46c1f5683cd0)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install x86_64 cross compiling tool for clang build
>         # apt-get install binutils-x86-64-linux-gnu
>         # https://git.kernel.org/pub/scm/linux/kernel/git/phy/linux-phy.git/commit/?id=bd1f775d6027810d366600e2490a2ff247e3466e
>         git remote add phy-linux-phy https://git.kernel.org/pub/scm/linux/kernel/git/phy/linux-phy.git
>         git fetch --no-tags phy-linux-phy next
>         git checkout bd1f775d6027810d366600e2490a2ff247e3466e
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64 
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
> 
> Note: the phy-linux-phy/next HEAD f7eedcb8539ddcbb6fe7791f1b4ccf43f905c72f builds fine.
>       It only hurts bisectibility.
> 
> All errors (new ones prefixed by >>):
Sorry for the broken report, kindly ignore this, we will fix
this asap.

> 
>    arch/x86/Makefile:148: CONFIG_X86_X32 enabled but no binutils support
> >> make[2]: *** No rule to make target '/tmp/kernel/x86_64-randconfig-r023-20210621/clang-13/bd1f775d6027810d366600e2490a2ff247e3466e/lib/modules/5.13.0-rc1+/kernel/drivers/net/ethernet/mellanox/mlxsw/mlxsw_pci.ko', needed by '__modinst'.
> >> make[2]: *** No rule to make target '/tmp/kernel/x86_64-randconfig-r023-20210621/clang-13/bd1f775d6027810d366600e2490a2ff247e3466e/lib/modules/5.13.0-rc1+/kernel/drivers/net/virtio_net.ko', needed by '__modinst'.
> >> make[2]: *** No rule to make target '/tmp/kernel/x86_64-randconfig-r023-20210621/clang-13/bd1f775d6027810d366600e2490a2ff247e3466e/lib/modules/5.13.0-rc1+/kernel/mm/kfence/kfence_test.ko', needed by '__modinst'.
>    make[2]: Target '__modinst' not remade because of errors.
>    make[1]: *** [Makefile:1765: modules_install] Error 2
>    make: *** [Makefile:215: __sub-make] Error 2
>    make: Target 'modules_install' not remade because of errors.
> 
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org


> _______________________________________________
> kbuild-all mailing list -- kbuild-all@lists.01.org
> To unsubscribe send an email to kbuild-all-leave@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210621152457.GJ158568%40pl-dbox.
