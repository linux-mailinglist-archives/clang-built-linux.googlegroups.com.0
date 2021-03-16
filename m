Return-Path: <clang-built-linux+bncBC4LXIPCY4NRB6UXYGBAMGQELCZI4KI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53e.google.com (mail-pg1-x53e.google.com [IPv6:2607:f8b0:4864:20::53e])
	by mail.lfdr.de (Postfix) with ESMTPS id 4188933CDCA
	for <lists+clang-built-linux@lfdr.de>; Tue, 16 Mar 2021 07:11:08 +0100 (CET)
Received: by mail-pg1-x53e.google.com with SMTP id l2sf18182766pgi.5
        for <lists+clang-built-linux@lfdr.de>; Mon, 15 Mar 2021 23:11:08 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1615875067; cv=pass;
        d=google.com; s=arc-20160816;
        b=qKSYe+ecOKyPLwqwAxVvpB44rRogKkPDg0YE3kYThxqIpE1S/SjzkylI8CJOBsFO+5
         GJtsCmGi01DAyPXEKfGRHS+zFy8of7nO7A2FHE4aMmKtqIyipai1mwRw/t8u1Xtrctni
         dNkpQT37y/ChtNiPdGq2GiVa09fTSZsMbsDr8IO5ZgH5CQJOKRlphG9QFXPLaytj25zn
         CEPiIG6fIcvHEPz0lEI1Vr0J1WDoJB8TirBbNMrDLUJmCTJCwjP0A+AWJnTFf39ulP6H
         fY5AmvxVV4V6Q4hRYVKQSxbEyStvnjfH88KulU0F0qmJxQwctH/oopL7A07pLHCgqiek
         iP7w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=3u4EF0w8bbAeMAGDPyv7NmoiD99pdhK9BMnA9YE4zCY=;
        b=x6aslxjWu5kjFo6/frNznw5qs51H70jyCmCAY9mwqpcOhERh4grdfpdbfYIkUxj3Nw
         V6aq/r7SBcDE/5F4i261Uhx2RM0yfrRMI4qMQqv2Sk3njF94Ir7sFTUasXlMUowh8npJ
         4AUYPBue4SFmwI0+PUf/MVT3KHbqldo39fU6FUZFj3T+mL1+k18pHWHxhDj6sfaJ0OFa
         OBuz2BvhgZqCR3W2fImou266A9RI88ow8h9kA8ZxtJBiftdvLdn/t01hLj0dhp73159N
         RefGD1mXYArgUZsWu08YVveOWXdZUxvbtA7aTAni92IMIXmy8qHIaom056f4/ql2ncG8
         lY7w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.88 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3u4EF0w8bbAeMAGDPyv7NmoiD99pdhK9BMnA9YE4zCY=;
        b=VqZw0PxLsIyks7yc8DWdK+9nLxF2KO2t+cdr73zuqYIWkXsjUwBbQEXKzCvOrzZcUh
         GeqNk9mzzUj+V2lIWbACW9TFpJm5Iy/q3KRbXGnQ7dAhOAgkvWYd3Jou31IZLKbLy8x8
         +Hr5y5TjH7Ellg4StqZw4G9kIFwFKsoS8t3zALxPHaB4H7x3u2q7VvKdcLB/RspSVly2
         5SM85xXeKXg+HyPE/26FCpEITu1Tw5znCRyRvElXGzT/jswUzV16ZTH4GvHzI1pKsOk0
         QB/8KPGvjxBtkxg5Br+QLppP71LJMaDME7xlETVX4YYEyFXPv1SOdOVjPP5uZ98ka594
         MHpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:references:mime-version:content-disposition
         :in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3u4EF0w8bbAeMAGDPyv7NmoiD99pdhK9BMnA9YE4zCY=;
        b=ljn/30UJRrWI5wAvw0S7UANulv7iqKq45ZZaMn/PUG6uoQ1iwp2mvUSJj2uRAvSjem
         wEDJQXy0u8o700jUQWU/Z6k4S56PeZAVmfcS50Th9GAY5jbjQFwDJkUgCR4dyTEqMTGb
         NpFSkMYON6w31Yrp2CI2kZt2Hln9HIH8xJrR3tJ9x7Kw2TzvKx66MSfTJDGvi6GST3oL
         Q+V07BRmWJ/hhAiZFUrk+6KtpLLcTLBETomxKQStDUOALUnVAaqChrX9AjhtjWLmo98R
         E3qjMtKa6mP3BNAVDF/2/jU2GwxErUMshV9mE+bga61X5R/kZGMBf9emsliVc0o/CwPu
         420w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533s46yohFiHsxq6MOLsOz0hnru/dhHm3wMGMuVvhrxcdh8Z04Wm
	rA+C6Za564XcpYcgq/Tpe1U=
X-Google-Smtp-Source: ABdhPJzOCDuSIC2r+r/UhgQlO4rc6Ra9cKpBcYcoaITMYvf25sIuOBNHnjr1V17OpOjdQRWV3tPNbA==
X-Received: by 2002:a17:902:c009:b029:e5:d01d:5bb1 with SMTP id v9-20020a170902c009b02900e5d01d5bb1mr15038102plx.28.1615875066752;
        Mon, 15 Mar 2021 23:11:06 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:511a:: with SMTP id f26ls7085973pgb.9.gmail; Mon, 15 Mar
 2021 23:11:06 -0700 (PDT)
X-Received: by 2002:a63:ea4b:: with SMTP id l11mr2484501pgk.61.1615875066021;
        Mon, 15 Mar 2021 23:11:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1615875066; cv=none;
        d=google.com; s=arc-20160816;
        b=J8Se6RrnZp5T22rWK5svo/o4OT3d71nj5nabRBmtFGkoU8JtWJx1fpBg/iFWhWAg/D
         PWDVaV1oQfG2PTyrP3XwgqrlX/qI6n52m1vgJCYPza9PNaVuhQcab5SMLj5x+CoZp0Xx
         Z51XJyehfs/Rrqdy9wDuOLoN15/qxDaazeQG4XIbnVn2NQdkTeldje+J4q42vWg5kZgA
         KFASbNdPQ7efz46O2NXbZDWLBc6ugN/KfyM/ooJl/ObE8iVFTvptRt3O9zymK+ndUMJB
         wLHYC1xePLGzr9BmMt73OftRH/lO2ei4ZBN/tpTmhNUoUf7SH0qP5RzkNRD05z4yRx12
         wIOg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:ironport-sdr:ironport-sdr;
        bh=9rUX9qutfFOzDOJfx3K7BzFZororIAmhhcQM7g4fDjM=;
        b=PJQUUfI2UT8T0fMwmdo7dtYRSGxFR6p3cgr0950kaxn52IBaU3O1MeQkrqzh9EnWS4
         WTH+CAY8bhbMBG7qxoG+nIugWgxVWy0o5+2j+AiotI4CieC5qdA8lWIjyPzx7REPfLx1
         xWgzNMFL/M6CLYMFnScn8QfbTPxUGmRBzLIU+9FZaPQgB+LeqGxQ2g434KHqqxbvRzTT
         qsKBeRPNEOE0dQLC1HZchqDDFKCorviiKiA1IJejnce5pmrz4eXN7xaottSAna44i7AC
         OWW/ENnBFHRmYrIyR8hiW4QEWZ3rCcvZnoPcvyw/5VCTjgusDvezPO+i2d+lf0FSsS+G
         i+Xw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.88 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga01.intel.com (mga01.intel.com. [192.55.52.88])
        by gmr-mx.google.com with ESMTPS id ft8si1476326pjb.0.2021.03.15.23.11.05
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 15 Mar 2021 23:11:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.88 as permitted sender) client-ip=192.55.52.88;
IronPort-SDR: MJXAay5yuFhjhuYroQXRMTUDL5XYv7V5jNuHIAAuAWzHQ9EJME3a5ScuFUeECCGcPjFKoEdvHb
 NjfPfgIi6eVw==
X-IronPort-AV: E=McAfee;i="6000,8403,9924"; a="209134728"
X-IronPort-AV: E=Sophos;i="5.81,251,1610438400"; 
   d="gz'50?scan'50,208,50";a="209134728"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
  by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 15 Mar 2021 23:11:04 -0700
IronPort-SDR: Mzxeq6Li1wCodsw0uIRAlnxW3yHFIDzcDBp74kHFD5QP8u4rglhbbFyTHiHiTgjJ+4qC5XzG47
 m07ltobfAJXw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,251,1610438400"; 
   d="gz'50?scan'50,208,50";a="378758263"
Received: from lkp-server02.sh.intel.com (HELO 1c294c63cb86) ([10.239.97.151])
  by fmsmga007.fm.intel.com with ESMTP; 15 Mar 2021 23:11:01 -0700
Received: from kbuild by 1c294c63cb86 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1lM2uy-00001U-VD; Tue, 16 Mar 2021 06:11:00 +0000
Date: Tue, 16 Mar 2021 14:10:31 +0800
From: kernel test robot <lkp@intel.com>
To: Shawn Lin <shawn.lin@rock-chips.com>, Rob Herring <robh+dt@kernel.org>,
	Ulf Hansson <ulf.hansson@linaro.org>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	linux-mmc@vger.kernel.org, Adrian Hunter <adrian.hunter@intel.com>,
	devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
	Shawn Lin <shawn.lin@rock-chips.com>
Subject: Re: [PATCH v5 3/3] mmc: sdhci-of-dwcmshc: add rockchip platform
 support
Message-ID: <202103161410.KPk480Z4-lkp@intel.com>
References: <1615860362-239208-3-git-send-email-shawn.lin@rock-chips.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="zYM0uCDKw75PZbzx"
Content-Disposition: inline
In-Reply-To: <1615860362-239208-3-git-send-email-shawn.lin@rock-chips.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 192.55.52.88 as permitted
 sender) smtp.mailfrom=lkp@intel.com;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=intel.com
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


--zYM0uCDKw75PZbzx
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi Shawn,

I love your patch! Perhaps something to improve:

[auto build test WARNING on robh/for-next]
[also build test WARNING on linus/master v5.12-rc3 next-20210315]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch]

url:    https://github.com/0day-ci/linux/commits/Shawn-Lin/dt-bindings-mmc-sdhci-of-dwcmhsc-Convert-to-yaml-file/20210316-100829
base:   https://git.kernel.org/pub/scm/linux/kernel/git/robh/linux.git for-next
config: powerpc-randconfig-r002-20210316 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 50c7504a93fdb90c26870db8c8ea7add895c7725)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install powerpc cross compiling tool for clang build
        # apt-get install binutils-powerpc-linux-gnu
        # https://github.com/0day-ci/linux/commit/4e67269c227f3ccf6904cdc31971bf6534d1bcf3
        git remote add linux-review https://github.com/0day-ci/linux
        git fetch --no-tags linux-review Shawn-Lin/dt-bindings-mmc-sdhci-of-dwcmhsc-Convert-to-yaml-file/20210316-100829
        git checkout 4e67269c227f3ccf6904cdc31971bf6534d1bcf3
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=powerpc 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

   In file included from drivers/mmc/host/sdhci-of-dwcmshc.c:11:
   In file included from include/linux/dma-mapping.h:10:
   In file included from include/linux/scatterlist.h:9:
   In file included from arch/powerpc/include/asm/io.h:619:
   arch/powerpc/include/asm/io-defs.h:43:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(insb, (unsigned long p, void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:616:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:10:1: note: expanded from here
   __do_insb
   ^
   arch/powerpc/include/asm/io.h:556:56: note: expanded from macro '__do_insb'
   #define __do_insb(p, b, n)      readsb((PCI_IO_ADDR)_IO_BASE+(p), (b), (n))
                                          ~~~~~~~~~~~~~~~~~~~~~^
   In file included from drivers/mmc/host/sdhci-of-dwcmshc.c:11:
   In file included from include/linux/dma-mapping.h:10:
   In file included from include/linux/scatterlist.h:9:
   In file included from arch/powerpc/include/asm/io.h:619:
   arch/powerpc/include/asm/io-defs.h:45:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(insw, (unsigned long p, void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:616:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:12:1: note: expanded from here
   __do_insw
   ^
   arch/powerpc/include/asm/io.h:557:56: note: expanded from macro '__do_insw'
   #define __do_insw(p, b, n)      readsw((PCI_IO_ADDR)_IO_BASE+(p), (b), (n))
                                          ~~~~~~~~~~~~~~~~~~~~~^
   In file included from drivers/mmc/host/sdhci-of-dwcmshc.c:11:
   In file included from include/linux/dma-mapping.h:10:
   In file included from include/linux/scatterlist.h:9:
   In file included from arch/powerpc/include/asm/io.h:619:
   arch/powerpc/include/asm/io-defs.h:47:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(insl, (unsigned long p, void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:616:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:14:1: note: expanded from here
   __do_insl
   ^
   arch/powerpc/include/asm/io.h:558:56: note: expanded from macro '__do_insl'
   #define __do_insl(p, b, n)      readsl((PCI_IO_ADDR)_IO_BASE+(p), (b), (n))
                                          ~~~~~~~~~~~~~~~~~~~~~^
   In file included from drivers/mmc/host/sdhci-of-dwcmshc.c:11:
   In file included from include/linux/dma-mapping.h:10:
   In file included from include/linux/scatterlist.h:9:
   In file included from arch/powerpc/include/asm/io.h:619:
   arch/powerpc/include/asm/io-defs.h:49:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(outsb, (unsigned long p, const void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:616:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:16:1: note: expanded from here
   __do_outsb
   ^
   arch/powerpc/include/asm/io.h:559:58: note: expanded from macro '__do_outsb'
   #define __do_outsb(p, b, n)     writesb((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
                                           ~~~~~~~~~~~~~~~~~~~~~^
   In file included from drivers/mmc/host/sdhci-of-dwcmshc.c:11:
   In file included from include/linux/dma-mapping.h:10:
   In file included from include/linux/scatterlist.h:9:
   In file included from arch/powerpc/include/asm/io.h:619:
   arch/powerpc/include/asm/io-defs.h:51:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(outsw, (unsigned long p, const void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:616:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:18:1: note: expanded from here
   __do_outsw
   ^
   arch/powerpc/include/asm/io.h:560:58: note: expanded from macro '__do_outsw'
   #define __do_outsw(p, b, n)     writesw((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
                                           ~~~~~~~~~~~~~~~~~~~~~^
   In file included from drivers/mmc/host/sdhci-of-dwcmshc.c:11:
   In file included from include/linux/dma-mapping.h:10:
   In file included from include/linux/scatterlist.h:9:
   In file included from arch/powerpc/include/asm/io.h:619:
   arch/powerpc/include/asm/io-defs.h:53:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(outsl, (unsigned long p, const void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:616:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:20:1: note: expanded from here
   __do_outsl
   ^
   arch/powerpc/include/asm/io.h:561:58: note: expanded from macro '__do_outsl'
   #define __do_outsl(p, b, n)     writesl((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
                                           ~~~~~~~~~~~~~~~~~~~~~^
>> drivers/mmc/host/sdhci-of-dwcmshc.c:371:6: warning: variable 'rk_priv' is used uninitialized whenever 'if' condition is true [-Wsometimes-uninitialized]
           if (err)
               ^~~
   drivers/mmc/host/sdhci-of-dwcmshc.c:403:6: note: uninitialized use occurs here
           if (rk_priv)
               ^~~~~~~
   drivers/mmc/host/sdhci-of-dwcmshc.c:371:2: note: remove the 'if' if its condition is always false
           if (err)
           ^~~~~~~~
   drivers/mmc/host/sdhci-of-dwcmshc.c:329:29: note: initialize the variable 'rk_priv' to silence this warning
           struct rk3568_priv *rk_priv;
                                      ^
                                       = NULL
   7 warnings generated.


vim +371 drivers/mmc/host/sdhci-of-dwcmshc.c

4e67269c227f3c Shawn Lin     2021-03-16  323  
e438cf49b3053e Jisheng Zhang 2018-07-06  324  static int dwcmshc_probe(struct platform_device *pdev)
e438cf49b3053e Jisheng Zhang 2018-07-06  325  {
e438cf49b3053e Jisheng Zhang 2018-07-06  326  	struct sdhci_pltfm_host *pltfm_host;
e438cf49b3053e Jisheng Zhang 2018-07-06  327  	struct sdhci_host *host;
e438cf49b3053e Jisheng Zhang 2018-07-06  328  	struct dwcmshc_priv *priv;
4e67269c227f3c Shawn Lin     2021-03-16  329  	struct rk3568_priv *rk_priv;
4e67269c227f3c Shawn Lin     2021-03-16  330  	const struct sdhci_pltfm_data *pltfm_data;
e438cf49b3053e Jisheng Zhang 2018-07-06  331  	int err;
b85c997d2cfefe Jisheng Zhang 2018-08-28  332  	u32 extra;
e438cf49b3053e Jisheng Zhang 2018-07-06  333  
4e67269c227f3c Shawn Lin     2021-03-16  334  	pltfm_data = of_device_get_match_data(&pdev->dev);
4e67269c227f3c Shawn Lin     2021-03-16  335  	if (!pltfm_data) {
4e67269c227f3c Shawn Lin     2021-03-16  336  		dev_err(&pdev->dev, "Error: No device match data found\n");
4e67269c227f3c Shawn Lin     2021-03-16  337  		return -ENODEV;
4e67269c227f3c Shawn Lin     2021-03-16  338  	}
4e67269c227f3c Shawn Lin     2021-03-16  339  
4e67269c227f3c Shawn Lin     2021-03-16  340  	host = sdhci_pltfm_init(pdev, pltfm_data,
e438cf49b3053e Jisheng Zhang 2018-07-06  341  				sizeof(struct dwcmshc_priv));
e438cf49b3053e Jisheng Zhang 2018-07-06  342  	if (IS_ERR(host))
e438cf49b3053e Jisheng Zhang 2018-07-06  343  		return PTR_ERR(host);
e438cf49b3053e Jisheng Zhang 2018-07-06  344  
b85c997d2cfefe Jisheng Zhang 2018-08-28  345  	/*
b85c997d2cfefe Jisheng Zhang 2018-08-28  346  	 * extra adma table cnt for cross 128M boundary handling.
b85c997d2cfefe Jisheng Zhang 2018-08-28  347  	 */
b85c997d2cfefe Jisheng Zhang 2018-08-28  348  	extra = DIV_ROUND_UP_ULL(dma_get_required_mask(&pdev->dev), SZ_128M);
b85c997d2cfefe Jisheng Zhang 2018-08-28  349  	if (extra > SDHCI_MAX_SEGS)
b85c997d2cfefe Jisheng Zhang 2018-08-28  350  		extra = SDHCI_MAX_SEGS;
b85c997d2cfefe Jisheng Zhang 2018-08-28  351  	host->adma_table_cnt += extra;
b85c997d2cfefe Jisheng Zhang 2018-08-28  352  
e438cf49b3053e Jisheng Zhang 2018-07-06  353  	pltfm_host = sdhci_priv(host);
e438cf49b3053e Jisheng Zhang 2018-07-06  354  	priv = sdhci_pltfm_priv(pltfm_host);
e438cf49b3053e Jisheng Zhang 2018-07-06  355  
e438cf49b3053e Jisheng Zhang 2018-07-06  356  	pltfm_host->clk = devm_clk_get(&pdev->dev, "core");
e438cf49b3053e Jisheng Zhang 2018-07-06  357  	if (IS_ERR(pltfm_host->clk)) {
e438cf49b3053e Jisheng Zhang 2018-07-06  358  		err = PTR_ERR(pltfm_host->clk);
e438cf49b3053e Jisheng Zhang 2018-07-06  359  		dev_err(&pdev->dev, "failed to get core clk: %d\n", err);
e438cf49b3053e Jisheng Zhang 2018-07-06  360  		goto free_pltfm;
e438cf49b3053e Jisheng Zhang 2018-07-06  361  	}
e438cf49b3053e Jisheng Zhang 2018-07-06  362  	err = clk_prepare_enable(pltfm_host->clk);
e438cf49b3053e Jisheng Zhang 2018-07-06  363  	if (err)
e438cf49b3053e Jisheng Zhang 2018-07-06  364  		goto free_pltfm;
e438cf49b3053e Jisheng Zhang 2018-07-06  365  
e438cf49b3053e Jisheng Zhang 2018-07-06  366  	priv->bus_clk = devm_clk_get(&pdev->dev, "bus");
e438cf49b3053e Jisheng Zhang 2018-07-06  367  	if (!IS_ERR(priv->bus_clk))
e438cf49b3053e Jisheng Zhang 2018-07-06  368  		clk_prepare_enable(priv->bus_clk);
e438cf49b3053e Jisheng Zhang 2018-07-06  369  
e438cf49b3053e Jisheng Zhang 2018-07-06  370  	err = mmc_of_parse(host->mmc);
e438cf49b3053e Jisheng Zhang 2018-07-06 @371  	if (err)
e438cf49b3053e Jisheng Zhang 2018-07-06  372  		goto err_clk;
e438cf49b3053e Jisheng Zhang 2018-07-06  373  
e438cf49b3053e Jisheng Zhang 2018-07-06  374  	sdhci_get_of_property(pdev);
e438cf49b3053e Jisheng Zhang 2018-07-06  375  
4e67269c227f3c Shawn Lin     2021-03-16  376  	priv->vendor_specific_area1 =
4e67269c227f3c Shawn Lin     2021-03-16  377  		sdhci_readl(host, DWCMSHC_P_VENDOR_AREA1) & DWCMSHC_AREA1_MASK;
4e67269c227f3c Shawn Lin     2021-03-16  378  
ca1219c0a74322 Jisheng Zhang 2020-12-29  379  	host->mmc_host_ops.request = dwcmshc_request;
4e67269c227f3c Shawn Lin     2021-03-16  380  	host->mmc_host_ops.hs400_enhanced_strobe = dwcmshc_hs400_enhanced_strobe;
4e67269c227f3c Shawn Lin     2021-03-16  381  
4e67269c227f3c Shawn Lin     2021-03-16  382  	if (pltfm_data == &sdhci_dwcmshc_rk3568_pdata) {
4e67269c227f3c Shawn Lin     2021-03-16  383  		rk_priv = devm_kzalloc(&pdev->dev, sizeof(struct rk3568_priv), GFP_KERNEL);
4e67269c227f3c Shawn Lin     2021-03-16  384  		if (!rk_priv)
4e67269c227f3c Shawn Lin     2021-03-16  385  			goto err_clk;
4e67269c227f3c Shawn Lin     2021-03-16  386  
4e67269c227f3c Shawn Lin     2021-03-16  387  		priv->priv = rk_priv;
4e67269c227f3c Shawn Lin     2021-03-16  388  
4e67269c227f3c Shawn Lin     2021-03-16  389  		err = dwcmshc_rk3568_init(host, rk_priv);
4e67269c227f3c Shawn Lin     2021-03-16  390  		if (err)
4e67269c227f3c Shawn Lin     2021-03-16  391  			goto err_clk;
4e67269c227f3c Shawn Lin     2021-03-16  392  	}
ca1219c0a74322 Jisheng Zhang 2020-12-29  393  
e438cf49b3053e Jisheng Zhang 2018-07-06  394  	err = sdhci_add_host(host);
e438cf49b3053e Jisheng Zhang 2018-07-06  395  	if (err)
e438cf49b3053e Jisheng Zhang 2018-07-06  396  		goto err_clk;
e438cf49b3053e Jisheng Zhang 2018-07-06  397  
e438cf49b3053e Jisheng Zhang 2018-07-06  398  	return 0;
e438cf49b3053e Jisheng Zhang 2018-07-06  399  
e438cf49b3053e Jisheng Zhang 2018-07-06  400  err_clk:
e438cf49b3053e Jisheng Zhang 2018-07-06  401  	clk_disable_unprepare(pltfm_host->clk);
e438cf49b3053e Jisheng Zhang 2018-07-06  402  	clk_disable_unprepare(priv->bus_clk);
4e67269c227f3c Shawn Lin     2021-03-16  403  	if (rk_priv)
4e67269c227f3c Shawn Lin     2021-03-16  404  		clk_bulk_disable_unprepare(RK3568_MAX_CLKS,
4e67269c227f3c Shawn Lin     2021-03-16  405  					   rk_priv->rockchip_clks);
e438cf49b3053e Jisheng Zhang 2018-07-06  406  free_pltfm:
e438cf49b3053e Jisheng Zhang 2018-07-06  407  	sdhci_pltfm_free(pdev);
e438cf49b3053e Jisheng Zhang 2018-07-06  408  	return err;
e438cf49b3053e Jisheng Zhang 2018-07-06  409  }
e438cf49b3053e Jisheng Zhang 2018-07-06  410  

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202103161410.KPk480Z4-lkp%40intel.com.

--zYM0uCDKw75PZbzx
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

H4sICM5HUGAAAy5jb25maWcAnFxbk+O2jn4/v0I1eUmqThLbfd+tfqAkymYsiWqSst39wnLc
nok3fVvbPWfm3y9A3UiJ7kztqcrMGABvIAh8AKnz079+Csj78fV5fdxt1k9P34Mv25ftfn3c
Pgafd0/b/w5iHuRcBTRm6jcQTncv799+f3v9z3b/tgkufhtPfhv9ut9Mgvl2/7J9CqLXl8+7
L+/Qw+715V8//SviecKmOor0ggrJeK4VXanbT5un9cuX4Ot2fwC5YHz22+i3UfDzl93xv37/
Hf583u33r/vfn56+Puu3/ev/bDfH4GK0uboYna9vzj4//nkz2kwur69Gj39eb66366v14+P1
zcXm6mpy8cunZtRpN+ztyJoKkzpKST69/d4S8WcrOz4bwf8aXhoPOwEadJKmcddFasm5HcCI
MyI1kZmecsWtUV2G5qUqSuXlszxlOe1YTNzpJRfzjhKWLI0Vy6hWJEypllxYXamZoAQmnScc
/gARiU1hg34KpmbHn4LD9vj+1m1ZKPic5hp2TGaFNXDOlKb5QhMBa2YZU7dnk3bCPCsYjK2o
tMZOeUTSRjWfPjkT1pKkyiLOyILqORU5TfX0gVkDe4kxTUiZKjMrq5eGPONS5SSjt59+fnl9
2YJl/BTUInJJimB3CF5ej7jypqW8lwtWRN0INQH/jlTa0ZdERTN9V9ISd6XtNhJcSp3RjIt7
TZQi0cwepZUrJU1Z6JmAUQAR0Dcp4czhsCRNm72CbQ8O738evh+O2+dur6Y0p4JFxirkjC+7
afY5OqULmvr5LP+DRgo3ycuOZrbmkRLzjLDcpUmW+YT0jFGBy7p3uQmRinLWsUEBeZyCsQwn
kUmGbU4yvPNJuIhoXNs/s8+8LIiQ1N+j6Y2G5TSRZne3L4/B6+ee+vuNzOFbdDvWY0dwDuag
/Vx51hZlXOqyiImizV6r3TO4R992zx50Aa14zCLb9nKOHAba89iVYdrSMzadaUGlmbaQrpXW
6x1MoemtEJRmhYJec8f8G/qCp2WuiLj3Gn8t5Zll0z7i0LxRRFSUv6v14e/gCNMJ1jC1w3F9
PATrzeb1/eW4e/nSqUaxaK6hgSaR6aPa8XbkBROqx9Y5UWxBvRNFMzC72ol7Jh3KGCbOIwon
HwQtz9fn6MWZoy3JvGr/gQVbHgdWwyRPCZ5cuzujOxGVgRxaEKzkXgPPng381HQFhuXbGFkJ
2817JIgo0vRRm7SHNSCVMfXRlSARbadXK8VdSXvE59U/bp/7FKN4yxfMZ+AAHL+ScgxCCfhF
lqjb8VVnhCxXc4hMCe3LnFValZu/to/vT9t98Hm7Pr7vtwdDrmfq4bYBcip4WVhzKMiUVtZO
RUeF+BFNez/1HP6y9ytM53V/nv2qGFpGM2phlIQwoV1OZ0eJ1CH43iWLlT9mwdGx2p4etGCx
dHquyCLOyOlGCZz8B6ODfrtZOaUqDb1TqkViumCRz+vVfDgj7sFs24GL76gIFSAqwHG1p1Eq
qXPp9w8ADFxWF94FcJzDzmK/LCgzmhccbA7dseLCgnlG04AEFDcTdmAJ7FdMwWFGEDOcnezz
9GLiGVbQlFjBGK0J1GiQlLBMxvwmGXQoeQmhFFFWZxGxwWO+3mMdAmfiOJhYpw+uDdi81cMp
TvrAT7PO/aM/SGWtIuQcg4rxFDa85gW4d/ZAESZgTIW/MpJHLqTriUn4xyngBoA2RpwdcfBs
EMyJpoiRc+LCKhDjogCkAzBS5M6uOiCz+g1eOaKFMskTekZ7cicddgb4l6EZWr3BOcrAweoB
RKksZkBOKixmeSsu2aoGDBbV+Es7E7GUTNMEtGHbdEgAdSWlM1AJWWHvJxwYq5eCO/Nl05yk
ibXBZk42wQAtmyBnlf+sfxJmJWKM61I44JDECwbTrFViLRY6CYkQzFbsHEXuMzmkaEefLdWo
AA8gIg/HpxdJM+YJr2ISG3tdJlfANLGbmcb2IYnm8mMxeZ9Hvc2ZR3ayB/j4zrG2LKRx7PX9
xvzxBOkW4pqYWNcFiu3+8+v+ef2y2Qb06/YF0AyBaBkhngGIWeG82py6Trzo6Ad7bCa2yKrO
mihr6USmZdiPAZjCEgXZ79xxqSnxJWvYQV8MFCwgptcpqLcRCGG4S5kElw9HjGf2nGzujIgY
4JRjxmWSQIptgANsM+TWEDKco6xoVvkeyLlZwqKe8wFclLDUsXbjVkwIctIdtzLQti+iM8ev
A+HyfIA8i/3rZns4vO4hfXh7e90fnT2GwAk+eX4m9dnEnyOAxPXFt2++JAFZ377ZUzgfffP2
cn7u6+D6coSQwIadsGVVYgCzSn2M20/Q6pM9hapUUdKipwtDOzHtug2xzljVgnh6ITVAOdFX
lpWQf8GRnrmddXTd2ydgGE/vTQ/xgMyoMCeFAOywDWG4l+3piiU3o1jZSIieIo8ZsYzubBIy
C3/BHHuuKctguSIH2MAAb2VkdTu++EgA8vwbP785wf/UjyNnd5cLTPzk7cW4LWxJBd60Sktk
WRRuac2QoUWSkqkc8jHtBzA2ZDS5/2xJIRdXzi5agYyI9H4QYwuS1xUHXkJect0WGyvEyDOm
wIsAntXmWNvRytSVjC6GU3FcoUVsg1XT3SCysJCKCuYgSpAstHGDEanXj2UOwUNqA4hpVbI0
tSl5O6kdyNP6iB7e8h/tGnlmlWda08vGtrlnRXS9WiUk9mN3ZF+uPuJeX5zi4jGjxfX1KjrJ
JhAnxfXVheesqbsMJtYESBwJ3BzMPuBvWDXHYNgVZnebRqLjtgMBWU8Lxr0HWpcGhRZYqHTy
GRkClk9stj+5mURaFuyH5WQWjf9RGIROyZiF4ULXj18xqj+2FenWD/m4Dc+jx27YOaCAaQnZ
lUdTtCAFgH8iCFaHrKJTkOy3//u+fdl8Dw6b9ZNTZ0I/B1H6zvV8SNFTvsDKL8Arqk6wwX4z
OyS3TPAzvjZNPRvbnspSvLJ8CUeVnKhueZsgxjQ58I834XlMYT7xj7cAHgyzGBTefLr6p/We
XKdPsF1dVy9y+M1STu5bN2/ooTWUz31DCR73u68Vru36qdSgnKFrmi7AvUL6ba/wjgt218ic
qhN6bLSZFXt82tbzaDwKNkCy7UNM/bBXM3ZGqBpYFLtja7r0lCuCI+kEFS1U5KCLvqO3E4fX
1us1iQbEyl4lbPagx6OR1/yANbkY+fKVB302Gg178cvegqwVHIiaQS5UDmuudryjuQlq9V3Q
jKsitaOrX0bAvxb9yAnAQoFILe1g/S6q1mUyOyKyNKVTkjYxWy9IWtJbayEYqM7nJpfwgUJk
jy9rvgsyTfpRF0XP28BWXTK2tdKabHKRijhpieZeBvGZfuA55ZDmiA6BRVlsrju7Gz26AphV
w3Hp1KDA33+QJb62oQBY4fthaE+JTCEcWoALCWnoWKjd0PREhiGq2bB4ga4qNjUj7hb8jFy8
/bx+fzIErOQfAjD9Lqht7PvzZsxgvd8G74ftYzfrlC/RIrAWdTv6Zq6brRtnszs8STACjb5t
etz6JhVijfCxi9m9hKSxExj1BJSpIVUjXze8Vlc91bSJAsTWkqTsoclGnbvn9X7z1+643WC1
/NfH7Rv0BRn9cLMigWlNXbLoonsFKL0O4I8yKzTk1NRXUDHpGE0gR2aY95Q5THCaY8U1wjub
3jGE4GEurRXLdYj3xx3fdMRgWphcwGxUjzXvQ96KKqjyMyoqXr4nTcnP5idlbi5qNRWCC9/F
bXeNbNrPINceAnsJqkHXXx9cT7EITqliyX1T+3UFTE6HZqb7y8UXCxmP6zv//uoEhTQJgmyV
VdW61sSu91Vy0sZXXYEJ2/vopuhe9RmXWX93zJQ7a3ByUT0Fjw6NqzQEqy9eNt5u/YNI5Rfx
bLi6WhKwL8wqjb4I7BagCPB/2UDpMNU8Y9XtU5QVq2jWDxpLSuaYkFGsIpLormTCP5zx03jH
3Ty+8GhE0ggT4Q9YOgGTd29mao7nRKWKN5fCdn+ee9f+4RletfYkwKDqeRU0wrqWtQE8LlM4
L3hCseCM2aqnf7pCe82rdwpoJz0ZyIoU8kCEL/O+SHsozAimbOfsc6c4p1TxUZ2ji3hd43wB
aTtEDzuzTUGjGgu6SyJii8HxAQ2byhJUYoPWmk4ap9CBvarmUZ1cVPeHL1AWONdGC90deks9
hXyq0AcRpI40YrnyqFEq8EHKK/MBq22OYUqDtcWZtdVYa7HLvX3tm3Nx6vbFrVKY+oI5z6bK
2kasiC9+/XMNwTj4u4IYb/vXz7s6O2yVhGL1/E9pCRdhxKqCLK3vCrrq60cj9Uu0/xBAm4Hh
FGZ4uWJHHHMZITMcfeQeKLQhbZIvNThrfUIN6FJOnLvImlnmyPBdU/mixDB89PuTImreE/qv
SroF+Fo3+PPDhu1+DDlyRsYftwWJyeT8dPPJxaW/7uRInV2f/4DUxdh3v2vJmBrxp8Nfa5jS
p0Ev6BMERODTfeABWOqMSVm9l6lvyTXLzFEZ+mFIY9AU+Ny+sg7xcNo/AURGkoGzviud94LN
VXQop15iysIhHTOcqWDKe6Vds7Qaj4ZszD8cmzUPK6oMpIqfwrsJKLYM1Ule5UC81XazdpMj
kLQ/cvXSE3K9SNwX3jc9xXp/3Jn8QH1/27p3Z4DYmUGGTR7i21UZc9mJWqXmhDnkLkPvjWiv
I7sz0d1cp1ZvFHn3AsaC7iDHeFWdxity9zmrxZzfh3a1uiGHyd3ts/USzxmkcxz5uGta5rUu
ZQGIHV3QIJy33p4oiOaRFtnSE2pyBATgb1JSFHgCSBzjgdFVJalLHNsnLEYP9Nt2835c//m0
NU+pA3NbebQ0ErI8yRTCCWsL0qSf3eBvA2jbEhoCkPo1k8+4qm5lJFhhFZtqMpxiCzhh3zVW
blV7at5VtXr7/Lr/HmTrl/WX7bM3R6urFZZegAA6jE2dA1L+PtjEN6B6arsKo/k5pYW5rXb3
ra6VtE/eLNRQpIBqCmVAAIBNeXverRNwzwANGbAuKFqA/2VfxqaiNwj8parYYNcMQgAbtikY
vAvgJCyd6DWXmWeUZlsNNMxYbuzr9nx0c9lI5BROQIEX+wCh507tK4I0IDcXdr7Km42N4Ed7
2d01b4heP4VcAqmhvG0fxz0UeEH63PXwEJb+yu/DWQI41M8ycINHniGb3LS69qpTassdxM3d
N+a1cydLAAWhfrCG7mgdTMu8SP8IiBWKVnkFST0OAGtrhYWv57hT5lm7fXBOn41uLjn1TcMc
gwgff/zB2huIePt1t9kGcb+SXEQRZAHdwS6iDKZtb0lFMVhMR2xYgiqiXzfr/WPw5373+GU7
uG+qRvTdN5UVtJ7RtDgRFCGgqqxI/LUY2Jk8JpjM+J/+ms4TBk4YjK76PqBRRrLbP/8Hy2BP
r+tHU9BunMvSrNMOGS3JGEqM7zctB2sKic0gVoWxa2XqCNUabTPyCoDzqp7aeFbUNWgglm0t
/RU1rUyKgrjE8s2NPRoc5uf1qNaGIAqJBVu4O+ay6ULYkL6i4pmpW+p+XbrI9B2AiHmJn4O4
n3uYZsS8Laobm2qWbaBVs4ZLT53O9nE8Fg5Kxat+On/Po9rBNtkNnTrOovqtSXRz1R2Xmsgm
0UBQpizDDvuy0i5NtbSMDQSX44FcltkPzZrB7W8Omg4hhMRLLOV4htdkkWUdA3JeBP6iMu7E
tVNkJgAfKxfpv9c5cdTbKvmj8T2W0yEiq3E0PjfSqfsSWY01KfwvdA1vxbzJxUpRC6DMmGQp
gx86td8/3OFlPw2Z9cgEK/RZb+9rWknwJrp9adHlOjOG8l5l2Au2okYuTzwNUD5QHStrzjyx
x8a7drD3vpHbfDjZ0EPoi8HARQClnIojEKsA6WXNefiHQ4jvIWljzgQbEOvQHLvkWEfD606w
MgfPVQyeLtxRK4Rs5V9VvQufttRFWlOOdN/ANITnHgGEnYjWUsF1J75LRksCth+/jhkMYibQ
BMsei6yur69uLoeM8eT6fNgTPpcqnI9v6mxyEGvzRUYD2X/BgtTey0tDMq92C6JmPfps6bwX
MLSEhOAcHaRT0X2wynCq67NeN/UTt4JIqWai9HMhly/8nCSy0zJntVXCsDtshu5E0lxyIXXK
5Fm6GE2c/JvEF5OLlY4L7gsKEOCye2Op3Scfkbw5m8jz0bijYQ6SaimjjgQ+MeWyBGiBVs3w
mb9lYsbPRJyB43QrSq4EJiui8L/7IUUsb65HE5L6DjKT6eRmNHK+AKpoE9+lc6MiBSIXF1bd
omGEs/HV1cheQsMx87gZrXxIM4suzy4mViiR48try7eiPwHVaBoVZ4MX81IQx/Gv8B3pSss4
oT6jKxbmmZo9RXTy8Mec3uM7JP+LkQkescFBgmxQ8Gz4GKyiw35Pzu2BOvKFd5Sajxfk0b1n
7jU/I6vL66sLCz9W9JuzaHVpq6Klr1bn/tJeLcFipa9vZgWVq4/EKB2PRufeeNXTRPWx4Pbb
+hCwl8Nx//5sHkMf/gJw+Rgc9+uXA8oFT7uXbfAIx3H3hv+031X9P1r7TrIBSs9ejgO3CN4n
EUwHitQ6ntGM2zuIlQotlFz1LaVJRvDi0Mm/bFfjpFYsdioq8HNgXliKrBv7HhyC1WbcSroE
YbF55WWhRZRyf7mXE4aCX6XppH0eb4atxwuO39+2wc+g5L//HRzXb9t/B1H8K2z1L1bNqC5a
Smsu0UxUNGWrr6X6ChstM5r1Ztw6yR4d/o3pm5tZG07Kp1N/+cSwZUTyKh1w1qwayzr01GzQ
7lCxWuKX8CfoKQvhL8cVNiz8BBwvuv0JqZESRdWx97D1JztY/NK8Wj21+njW2/94pkVMor6d
zPQMgP5ySKZZNFgXkElaktPz7dmxFaGU//OrzAdpm8fvXDjJm4rAiZminK8NMPEyi/FuKUgr
6sPR9oKIAvPmehSf/sKiQSz1UztGKQ3GZzfnwc+QPW+X8N8vw8MKuT1dMreG2tCw04lXbx/2
3aYsJIIkiMtZnbu6V1MkwkdhGS8lDZXvWdiS5XECmVSnGsBLPfymCzjiA+/EXt7ejyfdE8ud
/9sI8xMim31TXNGSBJF8irDf2oqKV30Oj5UtH3YxIhlRgq3mVY5t5lUetvsn/EB5hx/dfF5v
3OuIuhlqpIeNHYE/+D2+fRxMiS4+akUXVS3TUtCgZNbrEGBHyInwFyWtyX40U4mfmHeKbSia
5AQ8Ybe1HeMstpfW0WMfZrLYzDNKxENBPINMk8ncRxbMqQY5DH3CK3ZCJb4gzLwwvBUyTwuJ
/XFty5IQaNHmqfAqQGUfa4CZO1rv9CvWCWDQl5rYH6i0zCV+BGd/OdVyMjKFFMD+eqVbEd74
cBGeYoV4ZzzcBon3C0YLAx0sWQw/PJyHGc1npW+v4/DGt9Uko0DzjVGKkE8FSVY+65QXo/HY
sx48lE6FseWsChJ7ekIyeBjvfhkeeqSPtquQRswBkR5mNcaAvxKRd+hEMnLpzzSqM21edPkr
M7UAL6OZjASl+UeOA+CqZ3UiY+dNCLVJCIhdirPuipKFPUpi0sceBdNZO94a+iSuAXhf3t7s
mvJ/jF1Jd9y6jv4rWXYvbl/Nw+ItVJKqSrGkokVVWfZGxy/x6ZvznDgnyeu+/e+bIDVwAOks
Etv4wEHgBIIgqN7S5rQQ25IuUKRnEBZmBnFsLGLn5x+fucW7+fPyQVf9VIsNYjrSOPifc5N5
UaAT2f+qTUmQ2fp2d6h0KlMdCTWyGIoHnbTsdSdCZyTBsqUBRC+WBmDV0cnsCzHugmDVubRw
o4hQorPTax81WH3AFX+hSxd/AMLs7Gzq0A2mK23uaRxnjkRzG8mbMKyRNx0L02LEKs22m8+f
mAphmopG2aXjJt+OYTuSS8ut3D0VZ8FU5lwZpNPmB5PG+HYyHJKrQYKufTPl2UzGRzlwCDca
WIlL9Jog3s5v2wr2snCEsfhHiX3Qy48vz6/mVRFopqIVBt5SOeAWQBao5qCNKMd8WNzPld2a
xOkncewV861gJO2iNcJ9hEX+Di/TkKgCqpsyCenqfu5K9FK1xNUPbJsPLkYRhg7gJ9rVGwta
UD2NdY/fWZfZCkrgkP0GeVmE+6A4Hinyoa0tDU4fxiDLJhxjY90X9wMRkPVHcm50b9wdBz2j
b7CFSObi5zhIy1yO/CISuPyZhuy3b39AYkbh3ZZbLExLiciIW1+NLxA22b3D6MULnKBaocLC
5oRiRDIoW0JT38cNawsPLTo2a6LmCsHQFVPoex4iHoFgZtWFoekmdYYWtO2TMcw6zKEnts1o
jqwVsA69jWEbPr7GwXawtGyMhIK8Jwtw3FbumULnDYPJlIJ61iERHd2hJJi3zAJyYzz0daOo
DbHWkzZHcYFPJTOVf2zuzfyQDMqyn4iFbC+29JOGptOES2ODHQmFGdXo0hvOdEi7yNhceaiH
qkCFfSi7JJycI2fRcT6OxQm6h2OQCkZ0KpUwGE/CgVSf3WWmQ3GtBgiL5/txsF9CQjhtcu8m
ytZerDIbYk27aH1M6eMZ6H2jYyrWO4WvHKYkBqwtQS9c8nIImDGxQSqE5xt58BtsxN1GnKfp
j209obXTcNcwvfT1xJ1WmlNTMg0H8zNZeyp4hpSmGJky8OSHsdnzyVBhHZ6RMSkZfGMXYr7R
a7G3+nBdG8eY7Dn4blNcHlokMaO+n5QNReODGc3elZr2UDMlkiny+k5IR2d8XKk8cpOu1mNV
JdWTl+PQ8q2FUXovjgeqQo4d1s/nqpVaW4RNgNv259t8eBzr8ixbWTjMvRqE/1ENXOV7+BIw
dL+7cLq01bFhS5Wyc5CpSy6GnPtr26qplkiEl+soW2+WQCBNf6ccbd7K+VodHJoF91+X/Yt4
VA/VOtYSR8chRLOTCs9r51BoSNesQVXxU2uh+d6VVPAeOvx0uydlB2uMjVHN7jBuTIphl3SH
JVyfsBweC/QaBtuTbZGRdgmvRBHuq7l0NaYh7GyHIgp9PAchOfRDdybQz4b+hH3mzsQnGcmN
aQO6msr2OAkY7/BK1dNjf8G9jnYmaAdnhe7qRzrCHbyvWPKSDWJU/d1ZJrbHqPkGYXEXBZ+Z
D5/se3Q43WOLxZ3Y7y1E8FLtin6OPK5MG9RIVbHLIYg09WO9fWArf82T9SfFQYn9rQfL5Lfq
MJNW8bCc5ezJ4VI6p9c3Ku/ix5L9I7YeiSqrPAmEG1cUvoVqEBZHQ+mkbSPP5YCGMVhZIAgL
sJh5AiK2Y18xiC3xTV/L2w8Z7a+3y8g7sVIpnh/aTQG9MVnAOfeER//dvmoMwycScFPo7zFq
2q3shtI+2rz7TNOSZKpc2m64MsUEYkQKf13z+I3V0Dx1k10aQFj8aAkirCu+BtAw/NYldqgE
II/xdlOz6q7TOvq6f7/++vL99eVv9gVQj/KvL9+xkGq8nYeDsPyxTNu27k+WJUGUYIvXscOi
Ghq5Hcso9BITIGWRx5FvA/5GgKYHlcIEhvqkEqta5Te+pWunkujXDVbHEJcI1awWr24w1Vkk
Qzvhd7p1jOL1v99+fPn119efSt9gW5PTRQl6thJJecSIhayIaRlvhW3mVXBatfSCczPF5yrA
ezEPn/zhn+DyKpS8D//x9e3nr9f/+/Dy9Z8vnz+/fP7w58L1x9u3Pz4xUf2n/l1jrVqPOJUv
+xaZFWOudQugQKxDiL8AIUzZet6PhdGyxTQ1uMcCH3BlF2Qh7t+14EzhGC749LJy3F16RxFD
2dERM1Pyscu6gtCHtXrjpgvekYsb68SNPkVUNcQ05fceMAuczLnuslSB1l19C/RqCH3CLiDH
BABhdtqiVy5W8PWiO+mlgJbUEm0Wl/ELCSdtIvn4FKWZp2bdkjK40wXDlSj7LEZshXZjEvNC
Vf4xTQLs6i4Hb0k06RXtJqoSFjVYrfoFFniq0cBPQkkq9ooSgQ36rbk1pGP9jujVJz1mfOTI
ZIxIRhIjzJJEOLyWjVpHxK4G5KFptNVuuAsN8dKwDCIf01M4ep47NiOqRgQONN2IOpCK0HJD
ZZRjW0y5Ln6M1LoLYqoRr33SzCR4aNTPYqrs/ZXtSQa9TG4znw/E4jQBLKtx/l2G+WipP/gU
FWPT1nrpD53lhJphwkZlyXFqjS+ZWpJPNv6BKej/2G6wMrXp2/MrrBx/snWPLRrPn5+/c11K
P7QSU9OFTRnzVTVS8r4o/OZtZV4Ol/F4fXqaL7Q5GoIvLnRmGr71+/lrBJorCK//5ddfYsVf
Ki+temrFF+VBL/loeZ/BuhCrve560LocDEatt4kVkDv0Isz8YhTcHTGXCzCAwKRjlYpgAdXC
tpBwhvWGqvRpiGYUokcy6m4Fdim2eLWAdfDUixypGGh8lyZOQ5ly3z3/hM5Vvn379ePtFV5Q
MG4/cvdQoYFoZRdDHkbo4Qz3KD2nuVp2MXRFVcxhKm9PBa+yWxIkpq5cqWoCXllnNmFUqusz
QJPwZWVauHLVHWiL4qLsf3dycbV9xWKkNzID4nymSIOAgnNvORUAuBkPhfpECidfRzDNtJhj
PN+Msl1SX9Z6/RfyKg9b4uWQThXXrgDpuVYPc2V5NWCB4Y6dpTCGHkYfyRLupVXNgLs78nYj
eagqENz3SJ8SFAzM7rZN6sqBCEfh4Tck6JGtBSE6SQMPnDKBZV65mAjAYptVMmQaG/t5tDUH
nFlqKT5aJxZA2y715ra1eFQDA8myyIcoj05BvCcoRxcCuDZGHFcV4bey1GeZBTiW+qcKNdE2
Y3FtUe8C3Xg39xd8keeNQ7gP9NXWdoS7Q+uVF4ePy4UlJb+LWOEs2YGWGUST0YZj4xr3kAqi
Xd7pyS4DHtESMCZY2ZNyI830vtErzZTPwCpXtiO746+JaYkGUjZHq1wH++fcX4kqTex0GC6G
hiWo+Hq5tPSzhiYeelQE+BmeGLsctczOqiwY19lo1uWoWZMy6LS2suBoS/j+qklsR1krxptb
q9EI/SkyPhecxmxZgVqsfcKmEauDampKlZFryIHv8SnO6I8A+j72Wsue1mMTXwvBipB8Pbie
3Rsd1qlzA8MEwZYtpQrNWS2Nacd6GeBBRAv240hO9oXoicnJGHMGR0fmk2NgFl21Gv64QiRZ
rkxfG2iF3VAI/OTH26+3T2+viyal6U3sn3Z+xGee7SYGfgufN0FbJ8HkGT3Jsr3ka6x+53i5
MS9l0LH6UzYZQuSdYsB9dM8UExUhimMZ+9NUPXfb/0iAw9geAO3T6xdx300XLmRZtjws6B0/
bZKPMTeIO/bpNVkw+55HYlqMR1t9ludX337IVRLoSFht3z79SwfqbzxWDzk/wouScBmjr0d4
GxRC5PGTMjoWHQQu+vDrjVXj5QPbFrGN3Gce0Ynt7niuP/9LvhBoFrbVfTHB7gerS5CGBZiN
F86aHjopxg922zWUqZoCfsOLUIAlRt9Wpb0ZlsoUNEwDbNrcGJhiz5ogUkvnSFdhOR46P8sw
C8fKUBVZ7M3kSpTt5Iouzn2O9F1JgpB6mXq+YKDKZK+jWMUhdht+qLwyTH7sTWambHU5Tti3
kKJlezpHjoszopnlcJd5sTSgFvKlrNvLiFWezRBMaWAqw0x1m6XBe3nAbuPtPQLs1Hhf4QfX
J2yJ0nliVwaJIwO+xfNVdU3BQuzFiE2g/PaoruSvaPl46q8UlgRHFvqjdCuV2IzBO0swKwNZ
TosCh3po5edY5UHp2djnwymSLxNtpehm160XTgVKDGKcOUgROluGkHqS+8xLIqzrc8gSnHFv
rPvI83Nnc4oCkAbhUOrqiowj8Xx0qLOvyYLA1Q2BI0k8cwgCkKNA1eWJH6Oiy6Y0smTlJ3iK
PA4tQJpgAudQ7pKH4Egs9chRQd2XNPJcmfJ9BFdUQEkx8xY4PdhwWqZ+5mEfxJDAuY7QMmNJ
sfm46tCmY/QsitGyqil2TStMQH6MjEjoRjFe+45NVK7atxBPBE6FVuVmYIrNz+efH75/+fbp
1w/k1sO2NrDFHi5zm7U5z+SILCaCrrmlSSBoGBYU0omDM6RzADhkRZrmuUt4OxuiREh5eM4y
0tw5l+z5uIS+c2GtKaG+uy7YdR8zF2QA76C7hDz5PYkmzs9I3inEpfftXJmzDGyh2tHChUbO
Fg8L9+oxPKkhhjGG3/rAKHX3vAg/Hjb5fq+00F2Y+6N3vvK3+nlUu7tAhIZpNtkOvtmOw1Nv
zZye08AL38kamBLLnMCx3JF9GuDv2Rhs77UKMIX2WqRx6qpF9t445UyJI4uw+M0P+Q1xpoH1
Q6ZQPsWyLTbG6iDuApmZCscJ7LMEAodHjvruTLh2x8/JnbvA1VJpLmhE9rCWqUxjyDNsxhQO
qjj5GAVoN1zAxL0sLSfrkUvVXHjw3s7BM5s13i+mI36cOsoZm7m5VOqj1iuG3ZrTsbmt3JPT
xsg2Yb/JSdvKtZbKOaI7yp1hopZnUs2vsFx2Rzh91+wo8QXoCiJXTmm/JVD05y/P48u/7Apf
DS+ed8qjlqvGbiHON6QbA727KP61MkSKoUGUyW4MUg+Z9fmRD7Y1AXqO0TNxb8XcsTAkcHVY
qIKPflCSJoh1BOhpjm6OGJK7i2K1R4vK/CTF6Sm6kgOSuaZqYMjxomJ0MzgmYZ7Kk7e15xhJ
wVe3MAXFNnVpi+vbY0duaYo+8rbN3ffXpm0OQ3OVX61j2wfl9u9C4OEAIV7jDM+8j/KTsZej
tulYkzTDPT/8MoL0WgwwwqFXexxwI843bBBzeDGbqjUA7/Y09PbnR0XQ6q/P37+/fP7Aq2CM
VJ4uZcvRGs1WrYZwx0AnHYEbrqEY7rDsCS7w4LB96sDyONTD8AgH9/LNTI6uXp4IeTpRYVUz
vsru+Slkv7lAKNTdt0HNrXrQAuTKYN2U2rouyJ2W+3GEH578iIXc0LsroV76aXDLFnwObJU7
tw96xZqLLuH2cmrKm97V1pvsenWWS8L2+nSHLKEpph8JuO6f2NxqNJl48deeTBzna8NhMgbI
RDUKP6CyNJJifhR9ETzo1IZTbvpxCtM8i7gK2KxzOVx1bD0zVokXU5C0h5OkocbPvQQLsYS7
EuhI5umhwJwLBP5IS/luCCeu0QMMmp8lRhVHGmXofMtRSTGTybcGih0bjfxQVuDiZZQxwQCY
0VhQAteOeQWxJRql6Kr5uLyVrIb0x2bHzaWeU1/+/v787bMWdEzkWpE4ztAIKgLu9XqcHmbS
6v1MTNuexsqpwYTxBpMazln0VriJEeqiWKg2/lQvlZTHLE71UkfSlEHme1gXyPXnWSV3Q01+
YlU6VqZcFbENzRMyo1epFweZUQNG97PA2gZVkXtyTNydGBszWphHocbZkiwNsVkuS+MEt64s
zVRp66beiEwP1Od6cehmTDnxGGehMSHSNsj0WzHq8O+IPtGMhLJSswQjB36mj3sgZ4nZFxg5
93WZjvfdhM0RD23khbidYGVIvMg6izzws4F/SHGokf6z+Ug4+xXTcvwkMkdZ6Oc+Osw831yG
yjDUzohVBtLQC8U9VsTUxKbSCLUvifzXwPn7tW3zs0R4RjYnItPTkgpBOXz78uPXv59fXcpg
cTqxVQeeAjC//lLeXQk62tGM13z52wm8fP+P//2yOFYbbiwP/uJHPFc0YNPK3lIqkil3YXaM
LfeIWOW0/kOHZaofuu4IPeFe4shnyJ9HX5//50X9ssXn+1zLt0E2Ou3qTvsoAcD3epihTuXI
kDwFMMPrrwflsUuFww+1L5cSY6YfhSOwJs7er3ToWb84xPY9Kkdo+Z4wZEpTaQMtclJ8I2Qg
zdReKAE+niKrvcj2XVntp67utHSbbdcKL9/zdxpUv4md7PCBkZhgt6NukXSU7YVw8FR3Td8I
0kWN/6iwWdwLNBb4ddQicsg8wkdE/IHbuSTmdiyDPH7v28EEofZSGWXzHDz0jkY1UfnWeiPg
diXfUojQs9/9HsG2ifpd/kHct0JqPtRw3RlimqvvyUP2KKZUowwUVwx49aFzJYMHWdpH8+MF
3XprRGHSnsAgVSFwaa1etsFFVc6HAm4wPMqjjC3XWR7EIhUqOv5ykQEvINzTPsHVYKbPe4l0
nXUpCh51zvIoVu7hrVjJFGnsosGGPwSer5gRVwTmkQTTfGQGeQZS6Eg1OT0w6W19usz1LTSR
1Y3LAOhBDvewyAeIWyt1RV+sRCP54R660WQF1BipOniu7jFJr3A1zlfWR1iTQvdEm3uTCFf/
XSIucuEfYSRlfcpPcc1UY0EkzpHAn7CMF5UY9giYwrIKm+3EWGcMkUYbptg3G4f3Q1lsK9BQ
ArV0FMWHj/p6yQoh+rvGAXuhIDXrA/QsM+mq5XSvAu9NWBXaMUxiTCPYGcrIT4LWLKuqx7qE
R62gPaIkTrD8190Y2pEUEeXpb/BkTh7hVdQdMIPGysP6eeTHE9aWHMrdVQWeAD1PkzlSOSSX
BMR+PGFSAih7v+Q4Rz2fZI5Enhe2qaU7hFFq1khsWXPPggR+is0Up+J6qoWKEGE9Z+NbIkft
uW9jbIw9eeytpQ4jWwcQycG6GSr3iY7Xul0qIhZVh1iuJfU9L0AaZLN6GECe57FyAj308Zj4
mXWV2xczWOpi2eCkLcD8z/nWKL60grjcTj03ypInoog+/2LbPizm7fJ0UcUkpNRYQiIfP3dV
WDArz87Q+V4gzYsqoF7IVCD8SR+VBz8rV3jQTYvM4acpWrs8iDwMGNPJR96GAiC0AZEd8HEJ
MCjB4+hJHKkt1zRGgPPo429XgXOwqyhaLlZ8M+nUzMei50/0Dhf0SZYtE+4EjhU/TgT3u9qe
3Rr9mdzwyIqCo2T/FQ0stsPFbLMVJfRqghVN1MP2HfDxwBUbA1diQPdFctVMmSsdnvyYEPox
jcM0pph8jiMd6+sIepWjMqc29jPamTVhQODJvtYbwJTcAuFnbY1Q+WFY0WMVPDfnxEd1kZWj
gUMtPpchyT+WqJ/bCrNpc/CDABmK8NA4U04QgC8wiJQFkGKtvUB6ZCwLl37tW4ZRf1GVI7Ak
ZuqFeyQAT+DjBm6FJ8B9VxSeCLMFKRwJMr8IAJ21QJvzUQ8XmSNIbWkTD3VSVVj83Jo6ca1D
wJGjLc9Nzbi5RmUJkT4Ij9Ul2PLGgTA35ceBCBliHMBeHeRAbpMaq5hF/duYShJ6zpmsa6eh
PtnG91gmMXqJdMUJDcIswYRQ98fAP3TlNvp1hiFls1OILbOldsF67X5dgnuu7QypWxyM4d0c
nCOjS9G2YHRXB2y7DBtNXYZ8PaPGKDXFcsjR5YvRXV2awWjBeRzIvqsKECFNLIAYq0E/lsKy
3lDclrcxlmOaeciQACBXDbcbJC4nuXKlRRigCs+lLGeSWYMgKmz5TA+2gMfLAgVHsznq16c+
bb0lWMiovhok7+u9gbN/HiCg/xFZFptDN5fHI0Gq1PSUXIe5IRRFhzAOsEmOAfp1rR0iNI48
16zT0DbJ/NAymILYS7CTDmUlTTPL6p9muxUZXcPCzEf3Hss65JrvxGLj2ZbAwEstB6sqE2o7
USd2bBYAJIoitGODpSNBHR82DsJkg3446ZI0iUbXOCVTzRZgZBW8jyP60feyIkDXDwJXvpwL
LGOJwyRF1/ZrWeUe6s8icwQeUq+pIjXTHU3gqU18LAF56PgqaPQY2dvNspbR5eQfQQ4jRV5p
pWxDhm0RziO+2WJA+LdDDAwv0U5Zd6XlcFviCHz5oSsJSMBQjmVLO1pGaefnbl2TjiN1d3ba
dUzzwS0QpR9kVfaOiYGmWZDh6RmUOi0A7AMzdG7ri8BD9Degq69tbPQQnSTHUr6quVHPXYkp
e2NHfGwp5HSkgTg9Q+mR7G0t0wOcHvuIRvCQhWkanrD2Byjz8Vd+do7cR0YEBwIbgHzm/1P2
ZE1u4zz+FT9tzdTuVHRYhx++B1qSbaV1RZRtdV5Unm5n0lWddsrpfN9kf/0S1MUDtGcfku4G
QIoHCIIgAHI4Krd6DKxa8CW+3ZiMSdQG3Xp7pF/gbn3zHDdsc81tq5t0WvxWC7QegjXmSJpo
F5dC/MsIURJWT+CiPJLHci/dzk7IPsk8z6PcJQW8qodNx0ReVknB01NAfZaGpo90fib5eHp/
+vp8+WtRXc/vL9/Ol5/vi+3l3+fr20XyDhkLV3Uy1NxtywPSEZmAjalwMWAiKspSujsx0VUE
f4EJo4+TDdlnQv1qh81PmtJy00x14hdcvWEYJRpIBrPRxAnfJIQnsshULaB8916tvoMW7h22
zEXnU5rQpvkONyk+W/7qdreHN1tu0nxO0xo8Lm60hONphYwNO6F2x1h8M2XYbRHaKctg26I9
IpQdjXzrVkMgR0mdg1KBjiigKclXeI/HFnJ/4yWy5MekfVjVm4Z107Jvtm7I+YrUHB+R8ejT
6iHUPCWZTl8V7dKyQgMj8lzKt1r34HZ1k6Klx6uQW33bF22KNGp8CkPvxXhvq2PA19KFm+m6
iZAqez9pFBE4Mu+MXEhaHx/K/rLSwVqR5q0z8O40EAwW7LMKwKinSLPH12LZwsNAeCnagJc/
1h2eRhebD37rqdQmLHxI4bdt1+vbwgOokAFJ4pQ0yQPajymh9m2JMQQz3JQYfeoCPr7CB0Zw
/ZnggzUEwGCDMgXZ3fpsE9v2CmMEHhaK9Xl0sL/dZRp5wERom9dRvuRLQJSDQwYbdQDG+Btz
VYHlhjpbbqs4MpTJK2ibJX8+/Pvvv4dvj2SQ0tu3FCDTO4hjy2X3eSYO4Og++8efpx/n53k7
jk7XZ0HhYBRVpDM5peuuKilN18qLWWiMAus/EckFsDKKpNuVkNSvxNQLju/fMunyVEzB1X+g
z6wnA4sRKH9lqGULT9pHOa5WSoSm6KKeSHXvmt+1+PLz7QmykI2Pwmr3wvkmVnRRgEyuVhK0
fwx3W/V3YLPogALUDdC7gBHpyClAeEY6CNwwhOHzYqRxwsDSsjCLJHPaYLn9PG0wZHCNxLzP
M2qXRXGElaG5FKkGCDbG3soyhFNxgnjlBXZ+PJi70laO1Rqum4BADbWcYbKTlgDvU2FKn+GB
mYYLowlveM9hwqMpCSasbH6ewbhVoJ/9NDKEnwMXgCrropH6I9Zz1E8OSjWe5VEgkDK8TXAP
qw69fp+QrjwDur8ah2aFqRIIn3pYuyvXktsz5DHgyXzU6rZsQ4Usg7TbUtx0zZkhsrnSY0qL
KdLcYL/Kgehrmc1a1rCaqMuE6Tce05l6uPSZXeovmdSHeTM2hdF4XqvRDBS7BjLZA79IPi8M
ypquPT4jVJt+or5jXqAPSX6rdBhWOR5DN2M1puFg3zJ/lHu7eQHurTYQcC3SKBKm+CSkWIhf
HMwEK3zNTQThEjMRDuhwZQWq0OHOvQov9P54GDDUmt34LupnOyK1esaDqnC2+czfOqpkQs3n
EoCHtEpq/mCU4ZOgdstdFHw9ZxE1wDrcTXRCc39Kodw+WtvsWGV+QYB/MFejaSX0lBbN1APF
O47DpkA1EfgQWqFC15/N1EmiSXS7yTRdBn57a0umKVtrSb8q1Z1LN5pzaO6JtssJpDipcvjD
Y8gWlaPOdu/bZxY9ZN16yGyINQyRen0UW5O/PF0v59fz0/v18vby9GPB8Yv07f18/XKS7EXT
gYwRaO8Hc6Amm8eosn/+GaW7/dsqNfpOISdQwooB1kDyY9dl0rehkeTGBNgh8PKXDOPOwwqP
NJChHku+DkhuZGBKO9ej5drUwEpwHbUtMYlk72YqXjn1kKCV26pHUM7QlYVAewdVpQ9jUKkO
9nwPrSREmtGHZsoD1MdmmmTdFLqpf4JB9UUzYaSMtAOGbVuusHZG64iu0Y8Yso/FRTUEfo4F
pH4cM9sJ3FuLJstdT5aX/FOR64UrTKXjWC1ElddURruCbAl2IcmVSDUcWQDqat6IMKnIDu7m
yjude7ZlVmYBbZxZHiYbaMOYq/7oMpJtE0gR19b0NYzkltp35Dkkb2h9U1ivJAePy1CMxOW7
RbnL+xjvVlkxI0b2j5bLqJg+m35WKVm/ZxRHUE3GNyDeTWfMPomy1Oo5m4GoCu5ITMBLStn8
J3/sLhHW32ii5stDopcuh/4lRkbfOnbPhizNW2EC9cd5DLFJ24RpNmXWgCMkQgBv7u77F8Pp
XhrcmWZP2dhW8L7yRIXUxLTbLYg2pAKwDYTyBa6MBMMBypQCWey5hhgNgahgP7CgLoFkWOhZ
XNpoWwc8YxyIckNJRuOEhtHYWkLJfK2g5JwsM9IUpiZM/pgqASndn17vFhdPqxLGdtBBYhhH
9hVXcLiXqsCXpPBcz8PtCgoZntt9JlIV6RmT0oydn293H5yMnMAmWDdBwwlsnG05Dju8iyRh
4Bimtdcl7hb3PHNxD3WGlWlkXUzA9Tvu7fKMxg98vAI4qnoh5n8l0fDTKja0eioNCRf6y5UR
5RtLSWdQBSWeRBWUhy7m8ahqqnAVGkrxs7YZt3LxOe3P2AZNQiUzRL8IZFFls/G9zaF55S1t
0wxXYejd5hAgkZVZEfcpWBlMtQIVO8XfFRac6DavT/HiKMZDxS5gQpw5e9sCOkv6CwsY0TpF
X2EQKCLCNj2UkQfbBAJXA0sF3CZsZaVQxO0/JzZqrBKIDkzM+gaRzpF3pDCnWaEd4reIdZXv
sJYPgZUxEJjx8E6NqWY4Ox7GNxM1EtExryn30Y5GdQK3TY36ghdWuLeN3KMCY8nNwRltJ0j/
QOlF4c0ytNDNVzXiiJj8gItb6uQVwasDFLVtbHipl4eBmIxSQI1xkzoGMbgI2GzLTktq6imd
jGv167KEdC43h7anPNTJZr3fGL7JSarjvYr4MaY75PJ9jkDBOmb5WHYoiSZ0li06ZIAKCrxu
cHC1ffee8B8tIDfbAESO66OM0Js8HJR9JtMJ0njBgGJoFhhS/kHrPfsfdRIMMHc7KRtYVBw+
C3p2LAUn2Vkk3Gg5wZpsDLcXjlFaYj3hGAa+iVhX9NO+hFPe30CIuIjMyDpFQ9frSDH8MID0
RnaWill5aniiNipjOGvP/it1VyQTQnIX4BJ0xKAN5ST+PZKPh+geCS2LR4xGoCDFYyk0U8Ds
SF1NmG9SvXkE93Dxvc+3eXWPJO3jsO+MRZ7fpOEzcEgjNNYzStTpBEhRNulG4juAVuIzQNwZ
h4PF2R7IOrZ7wkGp+IgVgENyKecG4s3YBS7q0Q/I3ieIlPKnBn8i2yGA+iai1CMe/3CfKJ5t
UtjxmFM0qVZIfbJRwnJHKKQy0DCqfUaTEMikSxuGqUlaMA6KyyNgURcoGKxxoCTXSQHRbdIM
3+xGsnVcHzqyb0qaZAl/kGlO6z2ajd5/fRczmA3zRHJ+/T9NlYQlBcnKbdccTATgjdWQ7AZF
TWJIXYgjaVybUGN2XBOeZ/8ROUzMRy13WRiKp8v1LLzIJ3hYxQkIgINxjNkfEKaeiYslPqxH
Y57yfek70vent7Iv38GmJ/kIq1+CD6B3PcbKeG3xy18v76fXRXMQPiI0mR0TOxKTqgFZbfsi
angGssvTohQFOccl8AIgTfgDgF1WwotBkgMpo9lnyWRxnFqLtEfkTs2JiI8CLJ95ensv6/Of
T6dvw9z+GB9UJG+n18tfUDlkSESRH57nFiBEsQk7Ox1C1yieqX/AdQdDKEtOOZotUIS3oPDa
iZzBu4jfdknejgjemIALiAntQ0CEAfsf6NhvJ2kkfsfGgV6+vP/nxBj3+fzl5e38vLienl8u
CqXCqjnsXGU1vgnJ63m6fPsG1mo+sTgLin0SHPHYWNGUFGWXx4388umEqTExelhms8Dovdyk
M1+/vAffacPIIeXFZR4C4/exkXOrmPhSi+mec3n0gTIZuIDFfHo+fVdeeoWegYhkDKLOPJdx
pno3L9fzEXIM/pYmSbKw3dXy9wXR6od6Nmmd9AOqA9nmXe0xCSomTu5Bp7enl9fX0/WXac2y
gzPhGZmFQnCnpLcqamMnDK3+6dmh49LnpWKK5N8XXBXrF+jPH++Xby//ewYmf//5hrSK0w+e
BKJb6YxrYmIPb6fh2NBZ3UJKV8pavYFtxK7CMDAgE+IFvqkkRxpK5o1jyTcGKtY3eEmqZKhL
j0zk+L6xFbacPEnEfmpsC7/4FIjayLGk2z4J51mWYUraaNnj8J61GSvqYTqyThY0ht5FyyU7
87nGj5DWsVEbvM4edmiqZRNZlsECqpGhvoIqkXuLTW3H2JswrKnPxhR17RYr2pOVZRmYlqaO
7QWmb6TNynYN3ksCWR06d1vBps617HpjZL7cjm02HGjqGI1wzfotJavGJI4oin6cuaTfXJl2
xopMuyu/yv3xfnp7Pl2fF7/9OL2fX19f3s+/L74IpJL8p83aYud4w4bFsHIkcg88WCvrbwRo
65S+bXNS5aMAx27Gue7I1oUsXTg0DGPq2hbysJDc6yf++PV/L5hYv55/vF9fQBUR+y/qm3X7
IDd5lKeRE8das1N1xcktLMJwGeAq2ozX289wf9B/NltR6yxxd44JKxrX+FcbV8y6DqDPGZtT
18eAK2UCvZ29dJD5d8JQn9S1jwfCT4VWavU9f2DsZWnTElqhq8+VZYW+TqpkAALwIaF2u8L2
G15okBCxbWmf5qh+5F211v5juFDpCxMfv/yYp9NXK+3BmAFynmULY0404QhvBmX7nNIvtpqU
PYyzyzr0iY3drM4jzrWNiXWbxW/GpSa3sGKqiJE/AKktetZXJzCY62c8JmQn7nUV5mdLXlvY
mb8MQpM46vu81NpWtM0NfmfLzkOWnespPByna5iGfI2DIw0cABiFVhp0pTNz35lQhpLNytJ5
O4nMnAuL1PUDfb6Yzu1YmBlpQi9t0c8HwHWTOaGrsWIPNk4uCGO1H3Ay7cTkMnzcY5tt1mBb
KLWZHw4JqEyOhr3kBkuDUAlRh/h5sEUfFgHq6lLP4be+vVGhoezzxeX6/nVBvp2vL0+ntw8P
l+v59LZo5tX2IeKbHTtjGbc4xqaOZbXy18rasx1bk5EAto0jvo5y11OldbaNG9dV6x+gnrbQ
ejh6i9Xj2aTqog3WsYUn0+TTvg89x+nYKNwSBLYyD0zN8FeTHSOl8W1RJla3UueUrbVQW2tc
lDoWlT4hb/T/9f/6bhOBq5WjDg/XK5ayZisZnYS6F5e311+DSvmhyjL5AwyA7X2sd0zoo9si
R/GDa2/eSaLRZDjacxZfLtdexdFUL3fVPn7UWKRY7xzsWDMhFSWCwSpHY2UONeti4HeFP5Ex
YdU57oHKsoVjuyY4sy0Nt5mxD4BtlQVDmjVTcF1dWvu+p6nPaet4lmdidn6UcjRuBBnvKq3f
lfWeukStn9CobByTEWuXZEmRTMaR3hA3BwD8lhSe5Tj276LtWDPmjLLX0lTCykFOQtqBh3+7
uVxefyzeL8Bq59fL98Xb+T9GTX+f54/dBrGj6yYnXvn2evr+FSIcZlP+UF2at11a7Q+u4mUb
17n0B8Tcpl28TjEoFTxKABpXTIy1PFFz/7CjiOPZk2mSbcBaJ9f2kFOYkUraUwf4Zj2ipOo2
a3glMsnhijYVgy5mZHlIapJlZfQvtlWJ6KwkccfOrzHY9vIjkZ3wh47g91CA3CZ5x4OWkWZB
i004KEd38KYEhqXRjufunR5gO789XZ7BLnxdfD2/fme/PX19+S7v3qwcI4WbQgt9smYkoGlm
yznkRkzRVtzAtgpRtVul8iyR9241s9cA6hy9JmDV7uIswoMDOX+RjPFXSqsMfcWPD3WZJzER
myN+TZ6U9ViXzF+HbaJw+4FNoAwZ3sweJUXdROKinAgYK+WxykY9yoOXeeBCujD0pCcLehqZ
K4bK87RV+WXAHNI4HQ3JST8VP5g0eF6sry/Pf53xtsZyal0RQ/HIBqnwPYpdnKfaPk5//vnH
s57uRyi2dbCoQYEgrSpDs9ngm1brQFGXjez5L+BoRDLZ60JsFTXVvI8zdUXBI5mQIEYdAZUk
O8QKm1WkSLJxIuOXH99fT78W1ent/KoNFyftyLrpHi2mtLaWH6Cq6EwKjJ3UlEnKLFGbPJDQ
Pe0+W1bTNblXeV3BTn7eyiRS+jLrMul2KfjxOsEqxusFmuZgW/Zxn3dFdrtCxnxMeCLjYhov
7bJixiRZGpPuIXa9xpaDpWaaTZK2adE9sOax/dBZE/wQLtI/kmLbbR6ZIuks49TxiWvF2OfT
LIXELGm2csXciAhBugpDO8IbmBZFmbENtbKC1ecID++YqT/GaZc1rGl5YnmGQ/1EPETkNNTy
LPzjD2mxHaQmG0drFcToQyrCJCUkhj5lzQOrdOfaS/+ITuZMx5q5i9nhc4U3YfRPyeKV8hoN
QpwxurXlep/uzCLQbZde4GJtAy+sIgutZbjLpLPWTFEeeM4dvkKkgyRG4vuBQ+7QrCzbx0hy
UjRp2+UZ2VhecEw8tD1lluZJ27HNFH4t9oyjS5SuTik8CbPrygbi7ldos0oawz+2IhrHC4PO
cxt04bH/CS2LNOoOh9a2Npa7LCwDIxnch+9MZ00e45QJjTr3AxtN/YvSho6xGWWxLrt6zRZI
bEgeq3Me9WPbj/85deLuiOHAhlH77kerRbOGGshzlOEUkiEC8y5ZTO+RhSGxOvbn0nOSjYXy
n0hNiGHsJ6Jyw+q5LZlokj6U3dI9Hjb21lAddzbMPjE2rW3aohmQNWpqucEhiI9yolWEbOk2
dpZY+IWiuPc0jKXYAqVNENxrgkSLSh6JJFwdDI0EF00StUtnSR7MiphM7PkeecAfC5uJm7js
mowtjiPdoV64AmnFSGPLCRsmT1CmGCiWbt4kxDDenKbaGm6CZrJ6nz0O+kjQHT+1W1RwHVLK
joFlCzJgJd/RTDRMNFYJ48K2qizPi5xAOqUrSpdYfF2nsRj7Keg3I0bS22ZDAqqFR3FB9cUX
7dj8Q3grnOZ0lWXcihmo4A97GUYtY5WALMyala/uYDJu30YKmmlZHfjNKvA82RJ49gjyDMdV
C0lttkm3Dj3r4Habo9rS4phN9gFDI+E8WTWFu/Q1eVaTOOkqGvqKjVBGom/T8WN0CkspDX1H
E0UMvLIM+WpGvOOadJwhw8Yw4UrVzS4t4InbyHfZINqWIdSdk5Z0l65JH68f+ObNQiE0tUsh
C+TxVLDhLaycs5zj2Ya9qZbGFcrwtPA9Ns9yboGxbBXbDrUMqbGAqPebZUKPFK3voo+lqGSB
FA0vYePKgIBivuPJWLBrkPgQeOoqERBq4gYVDa7Mv7Slne/iKvSWilInobqPgWMnsvOnSXZI
H89bdaDBkgcrI8vgCHXTZAKkzUE5LwEwi9dYtTeOsfPrmXKpHgymReOkH1zTOf8QaTYqBuLN
UO1x8lG9KcghxRPBcUaoo2qLJU/h0q2l8hwywGYtj9E2t5298tIFxL4BbteGrhdgXRop4JDn
iOwnItyljdUKqKUh3dRIk6dsD3Y/YX4+I0mdVEQyq44IpmV4otOBAA9cT7HDVuwspO3ijJEc
oyrHDiXKNj1kA91ulNWbR7HCkE0aU+XQkcEO9Kgab3qXfwgdSmhDse2ZHXqSouEW4u7TPq0f
1HpTiD0o4jIft/DN9fTtvPjz55cv5+uQpVrYvTfrLspjeBRr/hqD8fCQRxEkGpNGIzM3OSPj
BZVuwM80y+o+JkFGRGX1yIoTDcHGeJuss1QvUieHrkrbJIN86t36sZHbSx8p/jlAoJ8DBP45
Nv5Jui26pIhTIkXmMeS6bHYDBuVkIGE/dIoZz77XsH13ql7pRSlmBN2Az/eGHTUZo4liGz5D
oocs3e7kxsOrzoM1nipNB1sZdJYtDD3Lp8QlX0/X594dXL0ggtnIKhrYYmoXPnHCImB/kzpS
vl7ir2BzbjA9A/h/lF1Jl9s4kv4reZpbz4ikKEo1rw4QSUm0uJkgJaYvelllTbXfpNM1Tvt1
17/vCIALlgDVcyhXKr4AGNgCgS0CwMuR6W/RgXbcU4dgANSXxjc/C/YxngfRj7Oxzr1EeDV0
4cKdpwu8FmAy0sYAitOD7LR3EuxmHCc3Sodjxt5qpXeN003GCL/pHkexXQv9HdRAgnVSnOZO
0XlA7QIjINyofdUoPO4OeoPjVrHWAfYwp/TtWotEim01BmVViQnb6nG6sKGlzxlapiLFpWRV
pFo2eJLv97pcAw3VdUoChmc1bCZQZFmZgeKlHkPiSGsqlvBTmhqqRW7V6plxjtdaqEti2BkL
VvtGUwnaeJYoX70sJL6VHR4G8l8DC4EpRhRDk3GC6K9CEutJyQLbgbo7rbPp5zAadoGR+Ci9
NIzE2xIin/XE484nnHicgvBkIf1QDvUgWEMKmH4O8flWi6je5zkghv6JPE3rGzu0wIXlhvmL
p9NzJuSDzibW5eJoazjnsr0BTpmiFksgs6pmwYbuQyOLc4Fjc47LGTK/eFyX35LLYoXNjKLa
vy4wTM8KyS8OhyakO16DSd8JIr45bo3XJzA8YaE/7qSrGyQP22HMtcCHvLAQUZ4iDhTydeAE
GhE/kT5tFZ1gaqOuoQPPYa9KSRpwoh/tX37/39cvf/z9x9N/POHZ8/D20boagVvpcc7EMMZn
wrOkiOTrwwrW936rRgoSQMHBGj8eVqFBby9BuPqovCpCqlwT9DYx8Fd6+jap/HWhM16OR38d
+Gyts45vrHRmVvBgszscVxtLYJi7zgezIHJBo9MqfPTrq67JJ4PKrKup/WaOc5v4IbXLPbPY
Tg1nTHrnIrXuzDQ4KHrAJaMx0CF8Zi6WoFceZWo2IDUm9AzZzmW04slIpYRMNS5AGvp0b+Ya
fYI8YFtw/DAz6S5eFSkvob+K8prC9snGU11DKVXSxH1clhQ0ePIja2SIVD0M2weDc0wPWoBj
mOZZQvFk0bDjB2iY1oYrXm/v317BRh+2WYZHl9bgl1es4Aev1KgFGhn+n3dFyX/drmi8qa78
Vz+ctGzDCjAIDge8gm/mTIAwllqYAMDUgiVX86zNzAS3uNqQkbdL6MyHFVLLzinekVJ3oR5U
06QSqqPSgfDXTZw9gtVdVqq8CiTWJoSMCkucd63vr1WBrBtsYzJedWUyy8BLNdJZmdwMP5dI
qtXLBQPhluZ6LoKYpfEu3Or0pGBpecR9Xiuf0zVJa53E04+jStToDbsWeGVHI4JSArMalGh1
OODlNB39AGNGFwUp8j3qTd6zm+ob0YpzvBdHVPVYPFk3eukcD9oRw3fwMWsSsKN9rYyD1wVY
tNyY6iZXfKep4tuBm8Jd0D84TwV8oJeZOltWtmdHUeYH9CZxTO9IGLf57cLwhshwd1DLYajd
D8MDftcrciFmwdC7kl5yaPoO309rblCmPoGKwpEb4tg5bikYwa3dn+yOw+JdNJ3Y6NXgeA19
Sv7Gfn7+8k15WI0dOGFGj07Y7ZiWaQNdAjS11YyIi17vbEHkaFJJWGSS/XifPsirxnA04uom
6eBjZBOVAR9meZuezUqZGaRl/TAfnh0LmG1yu3IkfsmIepOQbtzrWJw1jRa1WEerMu1Z2bql
j9mKPja12dSXQxQK669a774Kh3jk6RaDZ8GKjlqu9yB1np/6n/3JJrVFBemGNreFTPvWkarG
9s8rlPBT+utmremlOjYUVc/kFsjeGq8ON8+IdWTMI0TQX8A1Uz0IqdThO+pIlXOErsL7w9WR
fcbFLqaRQGSPYUucAu/TffVIZOGmRntno6Et4zErHGBRqZEdRujA7MLBDBRn1GJO1HkVG4oP
mlGoOeme0EBGHaVPzhbbOMGaakxkTu5vTGiBWra2usYAxZ9gdRL53q7od7hqgrkyPjnbQEnV
tOFmHVrsqm6XkZHM+pjItzoxevIMQXW4IM6dGQIkMl2Ak4KZ8M6TKCt2R4yrVmw1r4Z6Huhv
bbVeyKIP5xy0upvzEOtNMiSuUT1F5ixL5nOqSYvs3FTCOGnpyF/CHIpP9ZgJ/KB26TQ2XifZ
oTUGlY42BjpGnFsQNX4+lh21wzikF0EUUcLrKeNtblsjQ8hKOuqatKRA1ZTi5IqQQUFrPSLG
4CMnfhKKXjydOny/399/f4GFRVx300v/4dnNzDq4wCGS/KLbK1zYlnhtuSHUBSKcZTRQfOQ0
wDroML0jN+7ITbQeDaVuEbL4kOWOVEORrPZGsI8vLttHKYV/Mjub6EZ4TQBsf2sEjyCWvzMS
1tU1berY1kKYQBKN1h6WaUYTwqT79Ns3DDL4y+xEaTnJl/8seiUNIXDKt4Hq90TF+LHNQ+Nl
uIZjuz2qSjHMYN3jri+qv4wXJ1SrZ3E06BLikD1lG9/DGBKu8f3h0zparxT1oGDnrDlfq2qc
SrXMVWyI4RtEq1tCe+yaS+S24AUurq1x3t7aqs5h8eJae87M5zQt9upznEkDt+fbvo0vfHoL
xbDy1D7Cvr5+++PL709/vr78gN9f9fDRqFulb0TytFDBezyaP1SGXp6xJkkspTnDbQXwww+0
SYEn5LCIaM3dCJ0Jq6UZrCUXU1YuiJMUVUeGrNXYxK4J0akVDhwZGLt8Cc9KFwyzLgXhF29d
m+WcRMVy4ph3ZOmP/QOxhb/LtmLG1UWLAUdl21MqQbK1O+uu2viy7HEfNBqm5wsz67DkIAYo
CoN71IvjraniM97HXGQarlwvTMxqeZr72/395R3Rd1vb8tMaNCIxm+FjJlrPOTMnJK0O/47i
wKi/tgQiFnARJ+Z2STX6Ll0ILRb4T9hGL6rAROGF62s5mduyC9CtqJUMJjvvQSQyUiqpCV9f
//Hl7e3+3a5nUwXKoLFiQLh7SVdu/x88y3smwBiudE6rvoRMC3UlcMqiEkKwRKzs0S9zMUQe
HEfnQr2YjSH809p9RZBh9YIrTTeaMMJ2HEFrIlZBh50oYIwPdur2bnQhZ29Ka3XNiSGhgxla
fI6FhsC97Qb3Ylw7sbpAYGI6Cytv1N7gr/rkMK4kn1ggk/bbEGsdVonkmaLFtlMfXJjoLvJ8
F9o2WcFzawtfKUsehxtzh22GC9bvttKxhKMQWMiIOqvT2RRrVioCS8W293+Cgs3e3n98//n1
/vbDpcnb7JYmGDbbPMIYQL4EdjMoXRdYH01YpopFGO4Ju2RlnOF1UPsbI1jEi/AlprqXCII4
rPmt6hZgEe/58qQ5sIERY82bdp3LxcnTP778+Lu7/slPBJSze1oYtk/HcIEL3USw2jvOCImL
5rf0Umga89/tQGZukwN+6zsjAnZ3tYDmiectwHXPfar9JgYwEpg9ZxncfZZnZU/rzQGTashh
mit8o+K2JOrbQ31kD6Z+8VagTIYHeUN3QNmtq6JjCpbnsnikLqbCH5sZDDEbrQJdixvMFESN
AMASTm9x4iOf1cP61o6hTCzxtqqbPoW+C4jls6TrTxgNTAvWqWJqKKKZHgUB1edg7dtRS5IR
84KI0Owj4hJiQB3iC5SYjQQSrRxSelHvRDYLyCAjseM94HQod51t6/zA1luoBETdlbCLCCtr
RJbTub8ZrVaOBos8j9gnGpHb6boAuj532ZrnJDNAV9llSxkiMPQ8L6KyOq+91ZpsP0A8KlqS
wrAOqRKf12EQOrIMnUd5A8PGo8QH+trarJ8Q6im+yhA5koYBGRhPYQjJAqJB5lNiuiy1feJv
yRT79sbjipLOFU5ywj+uVrvgQg69uKn4TZzxLmvUmAdhTskrAUJeCZD9RUL01TidZ6nOY772
8zU5Owso9Jyhc3W+pT4hOYjpQgCU6kQgWNP0TUjTI2KeEHRi4Eq6S5UO6NJJ8cjW91tHVGCF
K/ACWjb5TIyi70h6lHvkQCciMVMcAV1zUb51ATtabgDIXhwGOVnS3l+tHZ0MoMhfMn2GXXGH
IYKoH+6X4M1i4siJ5kS/FMfCRAkF3cVPqDR5vEzSA5+YNmS4WoJunYYidXhBQJYq5ZFHKxRA
/DXl8WBm2AYeMYpdRzaSTs+1A2ZEFR/RY1tsSOcLcwkZdRlHgajzMDGyKP2LLnluzTlYUTZt
xmG5lufEfkFerHfrMKBKMAVhv5Gepka2Ai/BWJdxJILbDNslg0DZiaARosMIJAgjonokRGlL
gYS02SKwzdJuh+DY+S5hdj5R5wNC2JODlGSlj9gDjTyx8YSwESXqrNXQBWwogBfbnbfB8Onz
9ukCzxBQymaq48LbUEY7AtGW0CQDQI8+Ae7IQ5MBelCFIxdp1CMoA56TuQP0b+SOXK7cg9WK
UDcCoFphAJxVIUDnt6DeicEyIu5MBerQb4CH3sqnXwdoTP4/H9pfI9/yug+0G6mkmxwMZaJj
AT1YU2qiaf2IsMyAvCUGMpB31FcxBAr1VaQTmkLSid1DAKQzZ4q+pepeIjj2l2qrDUOPLGW4
oaZApJO1OO53U3RS7HATOvIJiVGOdKrLCzphjwi647sbsp3CDWVXyy1uF50eTIhticlX0umB
NGBSURNNGa1WD1syojsakOkJACGyioBMp1B28k0kA/uTsOfEFeSE2g4fEbo+JnQ6L7MYhEMb
Bv/K2JYuDutWkMSaw7CJ6jAfHUdenBc+OQ4RCCkLGIHNilwTDNADhTZy0fXEi3W4IToobxlp
YCOdmtqBHvrEwAN6vIs2hCrgeOBCHiky7ochWWIBbZaW0MgRbUgLTEBk9AqFI1xR2hmByCNn
agGR8QMUjs3aJ5RkC6uYNbW6aQ9st40oIL8E/oplMbVno4CuBbvKstxrZk6qOkYw8Hqij8yw
31PFVmG6W+osDuNgZlpaFksuWOtQ20ZDFknce47TVh4w34/SRcOi5XKHY0kKZAmpypBHYSSA
x1420CXMC6g9HwGsifYQwJYsHxjTu+DB5pjgWS+V7pp7PrU7dS1WK2oX4Fp4fri6pRdiwrkW
PjlDAN2n6aFH33QUiCPcpsLiLZ9DXgtYBi4N7yHANinANnQ+VBkZqJEs6EQLI5065cHbANTk
jXQ/cogW+UtrZuoi+0Qn5guk0zvh4qrCg1qI6M0BRBYVtmDYuJJulyYKYNiad/FnOq2WBoy0
2sRVC7ptyCsY1FuAkU4Ne6RTO1tIpyxbQacbcLchrEuk0+cRAlnaMxUMhOmC9K2j6NROqqA7
8qH2GQTdUcSd47s7R5VTe0CCTkx/gu4aVrvd8rDarajtCaTTRdxFlLnouroj6FTROdtuaQPm
Uw5zw2ZplH0SFwZ2m9onvpgX621IVgbu9kQhFZdQ46CWU2KjKKJzjb0g2i5dfSpyf+NR6rNo
NwG1aBR0SgqkE1YY0MnFZMm6bUAtiRAIaQMDoe3iJCE4qJqXAFFOCZAHIG3NNrCsZ0uaMa/R
owX0GHyf1ZCHgJLlMnA8zKvpp6xIvO2VT41v8bWbIlo6uTBzXapWYB1w372bXtgNt1ROWWLf
iAWiWhXw87YXt2eeYSnTpOWxpZ++AWPDqJV3R+Q4vOiz7y3/ef8dYz+hZEQcCUzK1ujf3CUC
lLHpaMdlAq2hztxoh09KnfA+zc8Z5YABwfiEzs/nupa0DH6ZxKrhLGvMGomr7siopwYIQq9h
ef5spqmbKsnO6TP9HlTkKh73ukR+ls8ljVyhGY9ViY7kHelSDNhzMJOleWpcaVfBTyCmXg/H
tNhnau8UxIPq10ZQ8qrJqs6S8pJdWJ7QB7KIw/eEG3qHQOfn1MzxyvK2om8Oyg+mV+EM35Hj
8bmRjgY08TMMs26QWoPwge3V28pIaq9ZeWJGXue05BmMP/MbeSxecBnE1Bp0eVpWF0qLCbA6
ZjiwjFwGKv6otctjE3KgXlgh2nTFPk9rlvjYW3R3IdkRjD930uspRa+WIpk2DI5ZXEBnMCqw
gJZrzFop2PMhZ8LLnlYLTSo7uGuoZXh7ozq0Zrqiwsc76bOzgxRd3mZLfa5sM13EqjHcF4hB
zcoWdAl0e+r1q+BIW5Y/l72eWQ26Jo8Tkih9lRJ0wmGmCmN+NCC9RRBInDUGkLNSOL2PuSFb
zp55a4wZhWj0GqnwMBKNo1pAq8rq1GjifYxBRB+1eVaavG3KCrM1gAg9EeaqlLoBKji6ss5t
/dSQDvmEosC4GIzrPhcmIj0oxIcK1rQfqufha+OMr1CtAdNml8pQLFXN09ToJejY/FiYtKbj
7eD5ZEJUqvW1Dg2AW80DPadrlhWVqfP6rCwM0T6lTaWXbaQQPeHTc4KWlGsUc1CV6HtPfXCh
0GMoRFUMv3QOltdctc8oi0SYJOgbQjegJgEBwrxcwzdLVN9HZj5TaDhH5njbWCgPqp/M4O1Y
gXGgvUQyMzUTDW42Zi8eBC8WrTrFmeLRFx+JKz4KKI6iUF2RTRwOr7+ID16HdOLkBFOh5ejj
qsmOOrXL62zwJaG1CvxZCsdolJ3KhY9emOsYv51UzQeImREry6or4/RWptfBBZTthqf48v77
/fX15e3+7ee7aOjh7ftsbWNeSXpgMHeg+0ye8db81AG+IHyxNmnr0EMiF4dvJ1Hb7VEYi13c
5vILeg1yUYVHGNNAsOuddW3FO1CbJXoEwAB7vgrLNpkHxbf3H+hibIyomdh2vGiKTdSvVljR
jgL12EVkO2gJBT3ZH+n7mRNHDf/BciXVzl5mdHSi+Jf9SaihPZGkaM8Ed3FJ9x0pIj6bJI0F
5Ng3cQGfceLpUHgnQ9V3vrc61QsVmPHa8za9qMOvemqEgo2/kPgAfQbfeZ1Uk0K0NuuDte/Z
QDW3F0HFWZc1dArxiNORKoj9tbdyoOhUxJGleIHjwIYnRo5M6zpG/blPzVY1OXJqgUQwEt8B
s9QmDkEoTZVVcvTFLVgefo/s1Tzfeh41kiYA+oNLI0qe2BhDzRbD/e4iu72HIYd/n2w1Kj62
jwtmdkiko4N/4azdIYqWtapxpAPYp/j15f3dfnQjNFhcmF8UTudS9wi9JtRiFpG2iMevl2DY
/PIk6qmtYFmRPn2+/4khfZ/Q5UnMs6fffv542udnnCNuPHn6+vLX6Bvj5fX929Nv96e3+/3z
/fN/w1fuWk6n++uf4tXW12/f709f3v7nm16mgc8s10B2erRTeWYPalQGrGUHtqfBA9irMB3T
YMYT7QxLxeBv1tIQT5JmtXNj6rGAin3oipqfKkeuLGddYvW3Ea3K1LVkU9nO6EaDzn/YRQFd
xGJHZUG/vXX7ja8HYRR2CrOtBuzR2deXP768/aGE1VU1cBJvzeoVy1arKUU0mtGUspFTZdoC
SA5MIQXxdmTJMaV8T8wsQ35E4taluiSshUoQxWm7wMwJaeITziErOBblFBxJxzBQYG4peIk6
nb8LFqGskoa+gifssGtM7doPkK+XEyljtclY3i+f/7j/+K/k58vr376jj9av3z7fn77f/+/n
l+93aUNKluld5w+hRO5vL7+93j+bRpbIH+zKrD5hmOwlof25XhbEt91xTojbG+fE0jbodbPI
OE9xX/xgTXbzJ4TUsIKhtttExzllsJBSA5ioVFiLxg6k4IUDwV5II6OLQxqV3gb+si2sSD9u
mka3aDdie1toBM7pazZCoYAULLd0maBSe+o20xRLl8qBZWCz7p3tP3I158BTLz0qmNwiJ6H4
pL1uUZDrKWvTU2pNCxLFO9Aybkdqq7Ex7xpM1d5RqlFBF9SBpcKXFnV6dORxaBMw2jLaXZzC
dwFDitrEV1iymn0kC5E1JDkFdeYs+Aje1K1FVe6t5we+CwqDnoSOMNvpbog0+a+PaiHr6Lhg
CgueWtSsvNUJdTphM5JynnNOF/uMYWFuPKYrrYjbW+eqFhFWhUYqHkW+NYWrqBdikDZHvBKD
ebs2LaQB6ztnc5fsUjjqos79YBWQUNVmm224dQj+MWaOAzOVCaYG3H15oFzquN72oeNDnB0e
aBaepU3D0NFobpxLqUzPxb5yz2QDV0ufDGlqYZ826AV6Wabr1VHhVa3vXKtQUWZgVzqTxY50
PW5IghVCa8mMn/ZgrpIg551nWdxD07W+oya7Oom2h1Xk8FChCuZeJo1a2rSapslO3wQjV2dp
kW18fXIFkm9MMSzp2s5SWBeeGnt/eXqsWv1ATJDNpeg4L8TPUbwJTAzPYAprUk/E6ZOzMsQ0
keaOOGiiEHgATcRvnJgEw604ZLcD4218Ys3RNWpya1sH7KsyTi/ZvmF07FhRiOrKGrCtGr3I
uPo22uDE01auyg9Z33aN0fekk+LD9V+UPcty47iuv5Ka1cxi7uhhyfLiLGRJtnWjV0TZUWaj
SqXd3anpTlJJuu7k7y9BUhIfoJyz6Y4BEALBNwgCKvSO0mn7qOxvppze0/V5OMKGZ+sFbm83
hR1InsAffqDm0EaJVqGDZ2VlCsur64EqPuPJBK07y7gmynU1GOsYqskr7mU/9e7m+8fb48P9
j6vi/uP8infv5qBkd4AVraurbMQhYlR1w7B9kuWnWZdx6ftBP6bXAYpZRoGj/FQ4sAGD93DS
zOFdfDjVgLaqixkJLRmyeY+BsEVaDdTNbGF5Mi1e2hplpTsRi2aVerGjntrXOAw/pggcclDB
yPgxZJcXVpO7SkhQQUDt4FJxq9rMBXa0EEAKM57Bg0h001I1pROZ+9359fHl+/mV6mc2tetn
iaIBx3LsvpSNR8K6kDbx7mCkOZrBdTQGH9NEn3L2LUBtFjthJtSMh4qJ8CjHotbQ2n4GIiqu
e+PUflqQAJC+NvGTquF3XQaU8mE2VBVTQh2MRXSbJvp31bWAqvfGNnXT3YEHmck/EKCI6411
SR6uyG6cYKZ5Z1EskaH1RKde20mdZbkZLw3kEYn2OWVFyrcQhL0meadpdydMsAqIQAoy7eJu
PONqUJ6iWStfb/WVZkd1AKnmhGlUw+lDdDcc48TVuQJszEVrojwdpubr4LBDnupfEuZmHdzp
WuF/mpaRES70Y23fiS5ObLv1iUToDy8vK/ISox1tx4Fo2pWwuuIlFGuBJaSRFtik8axI1ji2
Gu4sl/Qa0dxyNjYdEhr9OFvqXl7PD88/X57fzl+uHp6fvj5++/V6P94DKzzB4cF2My0GwOwx
wqcEUNGFlcySgYfP9hXLf4NmseRTim04ie93sEHtjFUB6aYyV8h/I1ZvdacyaVsD0948lESH
GuNsDxfDjSkNQO1phiSaafZRGIBfi2lXVibHy209fq27a+SE8uwn7UKNckM1QRN8A8XxfLHG
nJw5/pD6hPienGxQMIYEcptIOk1xOOkoRzdUbWkcxZLqNVqU0amrdx8v5z+Tq/LXj/fHlx/n
f8+vf6Vn6dcV+b/H94fvprsxZ14e6dY191l1At/TV57/lrsuVvzj/fz6dP9+virBnG7s0rkQ
aTPERQcXkGbtqxPtsvGIt/aC5e8puxzI0kZuc3rEmxunLJX9VXPbQkaojILRTiDw3KaLdAJa
btgWdSLdCk2g0U8kmtkR8Bs/xi1+wQIl9VMT93Ipk79I+heUXvD9kLiMe3MJRNJDkqtSMtAg
cjYTovi0zHjJycj3tnnH0qBTvdJjtJp9dCzQFN1OGWkzqqablDYmltO7Ssd2URaVz1SKe4KC
yuAvC+5Q3KYWVHqblOSQWOUnTdz2waJc4JBcydFuJRR3NcBQTF71nm5GpvUJ5TeGYUZkxVNt
S83Uxycf4wkIz8ITPEwWuW7pKnKtxM2ccTv433dw1mVebLMYDb0v9VVId6eXH6PbW0pyNOSq
MPqDhJK3vgxV97FsIpZ00OkC8Kix+BZAqiDBdotstApnGfVjjQ7wzU7p0wXols8qeXtjF4DS
4R55I1Y7EMktjjpJs6mqZEELWq1jisTwKidz5qGs7wh81xyjOc/iUIHR08CbkXOZCm/13/g0
ROHb4pjt8qzAHb8EEXcUsrXXLd0W+etNlJwUJwyBu9ZH1QH+k2M4APR0ZEYATb4jnXosXz2C
ZkK6qGlfJMeq19Sb3PC5XmF9IDe2BYxnSTLGlbqTQzpHn1X1xam8RJ0IZ4K4DOXn7GxA3UoB
mcqsJF3OUnfO7AXMYhQvzz+fXz/I++PDP9gl8FT6WMGNCWRJP5bo6k57fy3W93mhI9OKb3zs
4uIMvqyqZz/zDWWpuDDYYDywkHDsOURSFzV+d8Aoty1YkCuwwtOZIjnE1V5dVVkdIJGzsWVj
5eO4cz019DqHV3RXHGywq0WOb3M53SOHET9cBbHJ69ZzXMyjg9cAcnB5kVGKwYPIXnUjvqiG
bh3HXbku9h6ZEWSFG3iO78imOoZgObZRoGdIyfNx26WAhNYrPLTAhN+g0RontOP2mqLhuann
awIyP8++N/tSvaV77uHmuMXttTJRG2NzCKOgyt6AAj60kgJucwlnNCyPtlqFovE3q5XBDcBo
4FOBDZxeVwYFBn0/e7brDIPAw4/3M36p/SgeDSMjsFHguMhHozUaZ3DEQmg7VJGBtScAOvT1
yvOU71pPSOPE9VbEkV/OM0Sb7Y8F3GtpBSC4r2M2bdH5wWZBNxWxKqbKun4rPyngLvJJHAbO
WocWSbBxkZ5bxv16HQb43epIAQ/sF0ZPEPyrfa7uPGPEl1m189ytenZkmOsu9egAtX0hJ767
K3x3Y0ovUNrtgTYd8wQJPx6f/vnd/YOdf9v9luFpmV9PX+Bgbj6fufp9fnP0hzahb+GKrjSk
oZuxBH3rw+tf9G2mt9aRyLswzgXehNzJlmnegjlV9dF4XDJPcEaTNyR0naDXwHnjmysR2Ze+
i2Z14ItLArkUgjnpx+7H/dv3q/unL1fd8+vD94W1r+2igD3Cnxqle3389s0kFE879BV8fPGh
pQlXcDVdmsGxFsce6HGr2yp+WwpeflyoamWkSBrcUUghipMuP+Uddk+q0Il5GmcyvrFRexFT
3ePLO/hOvl29c/3Nnbc6v399BFOOMOVd/Q5qfr9//XZ+/0Pes6kKbeOK5FmFHRbV2sdl1sYW
5TZxJTscajh4j6/31UlfzFJsU3mnKnLqPFsYxthoNDht+TX6HjswcltNvs0L2mDSxbXr3tHN
XpwXELFAvc2kM8T9P79eQMVv4PD69nI+P3yXcmbQU/31UQ5txwHCVCs/LJswd1V3oLJUHYmR
chO2SazYpi6K2oo9pk3X2rDbSs3qoSDTLOkKNMGSTpb13SKbBo2YqlLRT9mkvM7u7NUveEHL
x+F1NDpsNbLm2pKsUCHr+kY2ZWg1gLtI2Rps6S1j6QyCPdM9AjyEI0l7lG4XGWp+VjgJDXBE
yLZLWBbvDxlQJu4qjNzIxGhnJAAdkq6mCxcKFE8G//Pb6/uD89ssDJAQcA854BZfwNsd1AFb
negB0hjhFHP1+ERnsq/3/DmBUiavuh181nJRNJGAfcuiKoanlZI1K8OHY54NGT0TWsqn7Wn0
QJoewILQyAF5JI+32+DvjGBHs5kkq/+WXpTM8B4Se3yYTJF3eXpZ4q89T21VgKfE9eXdoQof
ErogHNs7HL9eYbJwzHCbYoNIIgrXiDiHuzIKZLe2EcG396ZO6G403Mh7SwkRbZw1WoLF8cZL
bCIbQol3JKHodlnNB2IQtdeRg51MJjwJEiWhz4jISeF6DlJrjsDaU2BCrGV6isGs7CO+SXYs
4h1SlKGccKnXMhIfazuGCe180XhRk4ZXbhdh7cvg0M1M3DZd0xNahDXY9sb3sIVsGs16xMdJ
0rgo5Te5UwG4k4Q44YYUFBM5ju+amDYJOlprHBG6yNAnfuBvnNgssSvVtBwTJzpVuA6mAYoJ
IiwrgVwUGx9Z6TseMlW0JwpHhg3AfaRXt6cIsg0hvYEEeHLZCZ/SOSkylgmIlXph1oXesrnU
zeToc8o8aJs3ESUBfIVWjmGwY7NMsMFnsnDjhoiCN2sH6139KpCj2CnTzAodFXwWxU7c0kD1
XDka5lQ0adYbTRFyarmPuY3gfPiJFTIlvufj5jtVmvXyrAvdcpMsVartQ9edDrGNyJesyaeV
SUr1sbPUeh6aF0oiCFykuQCuBtiUF8koGHZxmRfYOVKiW6+QgZYSb+VgfXo0YJlfZAlaFtUK
JCFuoJqGaXftrrsYNyPPAy7qFvUFBHKqHxkeIFNkScrQWyFDdXuzitQQ3VP7N0GCJmgZCaAL
IZMrSby1bBOd4CJYANZfYfVcVtvfd9VN2Riz2/PTn2BwWOyUMSk3XojMHXPMALMh8/3CRce0
vhB4RlbCe+R2eXJmF79L7ckuhk/0p6m4WokCPy96CbIKNRu/R1bbU7tye3RzDP4MLdWPg9mz
ZCISl0i/ml9RGpxPHaSgXOBKjlWYm7Jq14uThk5Y34E33GnsR5iVepqUhHeEuT3o6F9KlOd5
kJYNviOzXPCMBDyT1SJJ0bBrkQWBhY83OlbKqF8sOz5c1bXXI72FAocTMieQ6oTs5XQHhQne
eTyeq9npu9DfLK9DZbcOveXlrIc+tryYrf3FiYrlZjerya7rkJ1Al7pgPscGi+EiNMXcJOen
t+fXS6v3vi7SXU7wUJcpZIrCow5R1Pa4M0MNkbsqYc8ZJIPZLYNKPpS8sFwfDqEtesqGqu7y
Hf7cQ5DZok4INMmKHRzzCfKFQxY3mgFCGH20Gk1WxWMvXlLNFYAHU2rUunS1WkfOaN6Xo7Rx
DFqba0KHOr7s5iX9MknyHF6UITU9dG547cv3m0kqpygWD0TBwCvfQbOfI/I/jgZua9ZwgQrm
F+awHhDFPZdjt3XdTbjfftM0NGyLoVbjqskY3HFComBX/0j1x2rN/rPozeppJxtu4RftXDlt
IyWWEoOXtKNbOLBFtVRWlFNOdZu2+SlrMQ8ZQKvWcQ6BS7QjRg/BGYa87grpTRUDaj8ZA6lG
DAYRYGRdcCgEmCSj1yL3bjedRB4fXp/fnr++Xx0+Xs6vf56uvv06v70rAeHE6LhEOoq0b7O7
rRxeTwCGTMvG3cX7vMIG8TgjyeobYUOTN5iXSnJo6zKbIhMpA1/kScV8W7KiiKu6RyIa8du+
4VB3TXGUIjsKuNq4NV0eh75215i15hDTKS0pJO8Z+gNslUVdw43Dh05Ix2FGR6g00visIpjw
SfzH8+TXw+5HYbfXnr+eX89PD+erL+e3x2/yrJwnaswU+AxpIj1bwxgt+nPcpfoMB5JeYwJP
FjcbcrOKFK8rCWuzw0kkJJGTMSqIxoLIAyVChIYKXIswFIm6yagkq5W9+BpfBCSibelGEbY/
lWiSNMnWTohWAHCKqVTGEcgEQncYaEl2bCiynlsAcDyJcdw+K/MKR/HdCYoiXtkQ19U7pUjU
sqyDuM/hf7oLU7RNMTd1m2PuOYAriOt4UUwHe0HPUpZ2sm/tJCJuW7xEVfdVjC0OEskpwRur
LBvPfIsj95R07UY9/kZPbra8z1IWF9Oik5i9yyHK3ASuhwMJZCP9BF2jUG7QVxpiG+fXECAB
dytiFEnpQTa09ISfX0aayMdmVYEdQl89RMrwYR936GIhaJiPNqZ+7mKNcE3u9tURbVNBcGg9
VT8ArEiDARFK0qqwlg6gLUR8t0xmh5xOWGFyUp7S6viNDRWqHlYaEk0Vo9JM7r/4B0LlSVCb
wTv/Q07wqWJbw3N1aQHuE2PVhJcBUVkiMCnSxQRrENjNaDzMn76dnx4frshzgoSLoBuTrMqp
AHvJY2fem0vYhdO1TuYF+CN4nQ5VvE4UOTaJetdxLgvUu5G/9J0uOQr1z4F9MZUhLTlGHpib
qcuFb9XiFqY8f3m8787/wAfmppBnRcgyANHn8E4Lp35LHAGNysWMzApNuA4D62cAyWdnYkmK
YJIncfl54j09cN9dWDoEaVnyy/8FbvQo+VluJ5Yn5CLHcqdzXCLOm9yJ/0v67afrT6ndWHGA
sBBtP0HkfYaTt8hpvVnQ3XrDG+wzqqC0ZsstETd6p1kgNrujlfQ09Qg7SVZdIqFdJtntlyjo
gFriIftHGqiLw4CSfHYYUNLTxUEARLzSlxVuNSfqVFhyJ4Umcn3LfpGiwrVVXkAK/V7+RDiq
auFLc3MufNDo6VbK5S4WuWt/AXWh7SMXdVdQaQI3tDOgSER59sOyso5JS90YSpMdqH/+eP5G
19IXcYepmGaVk86erzQLn17mO7MtSRe39N/Ed6nS6CkIUQt7fr1P5Uj7DNQ2ZZKgjXCjxOdl
xHHgU+7yyYWD1wvfZJVtEjImptdYTmiS9nKA3glJyhSEnDFxc0PX0WSInEg5kwO8LAUC2wBR
fNwQMvAq6NDQkdMK5+IjK0d2AhmhOG3kyKmZAVqgUE4rJz2nquFQJV/aBFW0NkP9DQbVORQm
NOW0m1BOwgbQYoZKnasUat2g2e/mL+s1EqXWK50dJ99gjSShQ4sUG+yuWioXaVppjih85BbJ
fY6IRlcTIyewqlI4PZmjGeiSAe4RBIHkipowbjjQQ4B0RnN6BcrzvsEzVJQRq5oBLmkRA3jK
06w2qWmj87pFSvp40UPU9H2pUBqHzupJRyWHaAcBrXbHlp4/BsUJAuA3IaEnikZFjF/nIiHf
oQisGSh+rKVRG9FACEum4gWmPZNFSSk6s/OUHN9CbBcDopS+DuTVMxhwsBb/m0jVdS3vhGQa
D88u25Q5C8vBjNf5SZuBDztltryGmbJPJMcBZifcCTXS7+lSMmMHj8h1wcYqUi1JqzXxk3A1
vW4DKqwCQXOC2GKKKV3g+EPnwYcsygp++oSgWC1/Q1AFF/kEXuhYWBmkK9dGqhN6F74at2X4
uRrAbodwq7EcQ1RgKbw+Sl6cInkGqlqO8yyCMezKX5aJW893+UkJpD5Dh6ZFU1bAq335uz8V
BEk2ETSC/gJhRPnxkjjMH0SXBoD0rzq5thwKJqIGIj0yX5NPEkafJdygmuCSJdLFIQXlp2Hn
Jq7jEIGatXCsAicfYugtCXZdORK4cKGgsZ0QrYXtIVzmegjdEOVKC2I8V+x7CzzNqoe0iO8i
vCKK8Hydl07hGxQqPvI7nPfhEuuTTy5QpJl3gaJdLShjA+I5uHStpZg0+3a0eApTvdb3x4AU
tpuXfQlGx7kNeITB4UTFkF0lbkmTVzCAjItqftIhz79eH7DASvC4UEmBwyFNW2/la9TimrSJ
liZMXDHoDxTH+4EJPvuRcBc9jsB8UEY/PZ1lekuPEFuT4a7rytahXdjGMe8bWN+MgsxDL7QW
g6sZo0ybxmYBbTjZGPLBdCAGUx6i1VaMe93p2qiapFxjtRK+cUPXJQuSCg9K60dFW6fbHr4N
0+NR7bQNWbtuby1f9sQUraL9s80WpIKYLXsWFZk29QKdkK7J6ZE8OVgC/gsi5ipGN064Gtry
tC7ZY64cjTEedyV49uTK7T8HWlKcjJ/lG62hucVeYI5upoaK2KUnPYmThdqX3fVl3fwvHGdA
cKwjHsQAT0qlXhO87I4WDz4R9bWmWl1i3JXSbJWJeqoJxMY27JWoQYfIh75etpjjwoRUzU0C
bHmlzD+dQ4SmO7o6dItaIx24auJdpUuoNl0HGTPGDZF1JhJ4KomS1GeEa5l5WLogSGAC7Riu
tOsvxYilTe0SjzgvtjXmX8r8uOg4k9qEg+bnlzzZzfnp/Pr4cMWQV839tzN7iX1F9CCBvHRe
D82+gwQlOt8Zw8cduUgweSLK92iX5FF5MldHNVDriBD5HOmJqju09XGPOcrVu2H0dxshEKnL
8IGboUsvP+nSzJqTi27dwhncib+BTcetvSAQSHJJM8UI4i9Mzz+f388vr88PiHN9Bglg9av7
GTokuIvf2HlPzZFOXDy4mvR9kjTy02BEAi7Zy8+3b4hQTUkk9zH2c6iIDpk/pICFH6H8eeUz
k/rqY5VCRovxepsOp6cvt4+vZ5G1TnbQHWlH0y0vUCdXv5OPt/fzz6v66Sr5/vjyBzx7fnj8
SrvqHMOJEY9WZvKMuhbzlwNJXJ0sTjKCgF3pxuTYonGnREQ7Km+SVztpxzZHrJswk3owybjI
3E9alXjaS7Bg1eDER6dXyY4hIUhV14r/vcA1XswKYUsvp8CkNIWZ1+uNC0UGOebsBCS7dhwJ
29fn+y8Pzz/xKo27Wp6yXR6JdcKjRqEu+wzL3ybLhWAz3JT49I3KwbMW9s1fu9fz+e3hns5u
N8+v+Q0u7M0xT5Ihq/a57DQAxixS1LcKZP4BO5D9sSMqBKLPNfL2Pm3i2JOCQUxyX5KOB+34
n7LHZWZNBB4lMk+DnLua0O37v//aBovY3N+Ue8uSzPFVg4eDRZgz7hnL1HZVPL6fuUjbX48/
INrINKYRWYq8y9iwGpM/FPo+QXz189xFeLj5RgydMOjsl5QpGpuvY0kt40ablemQamPlRhmg
zEJ528aNCqYzq3K9CLD51nB0cMaEZFLe/Lr/QXu4PtTU2y04JcMbyhR71c+v1egqQzcEmul0
T7bSBoaBiiJRlrDxBg5/ozFiG+yZAEMad2MMeptUhIwT3qQFtK7q9GG30077g32ruPxL+4aU
bjRy7NkZm95M4+5okSTsYZXdZMnT5CElm3Lg38QEFjRTzC/aisemMGdMdqrznOFUFx3LxsnJ
LNVg1L5BLZmggEhODMwOqdOsz/pW//jj8cmcNUQzYdgpeMmnlvLx26Cf7LRrs5vxy+Ln1f6Z
Ej49/z9lT9fctq7jX8mcp92HM8f68sfDfaAl2VYjWYoou25ePLlNTuuZJuk26czp/fULkJRE
UKC7+5JYAERC/AIIEoC96hnUeVsfTTzoc73Pchz4tiHHJmvyFm/WY8YgdvgSWpRWUhw5fcCm
w6hbshG2Ax0pBjRibS4m3zMJRAkDqh8BKn2KaYZnG4/7LhtpawCA1paPvoYp12PrnvNjvu+m
DCtwz8a+TpvfkDRNdRhZpCTDPMs2hW2279Ixd3r+z/vn15c+mfGkTTTxWWSwAxd2SO8e0Rb3
OrSxNdEUZiPFKvY4OhkST/xDg8W8IlFiXXAZ4Sqcx69JedN72A6+2yd4SjZ9U6+LeKhVFZJz
DTF0bbdcLSIx4UlWSTILJ63Tp0HiEDDlMfC87Z9cwd7EDtaSZdYiYYw0WSuq1IXmtswwChuo
OhtrQqy74FyC5tMRYy0acPOq2DBfDCjEjNypLeG2oY5PA9Drg6dS1ePAdDJBoXqGNp193p1T
jgEkKDakNn3T9bzPK9Z9B0V7ZbVEJpagKkEr6q8edoDa5tM2GIDYXtmVZW1TpSE2KG8QNVYw
tv7C7mh4MLmVLKvAADvbSZstcGbne6Zwow9zWIxiCxrtobKDDyL+dlNsFBUFm6hssBkxHBKs
/rmR7Dv0Y/paJS7rA0lok8iPfdSpZwfck3tY0+uj2Y6Kz5+fvj39eH1+eneULZEVMpiHrHdt
j7NuvIjsVEb2Mb8BYMwLci3IgKUnlZjCL8Lf4jFexpSxdSXIhQp4DkP6HM8mz4ZHCtMx0cet
WZXCCqcz13JSU5AbJJmIAuLgBOOszWbcVRmNsVpSAWzPdIyviakk0diN1Z8jK5/A7UlmK+eR
xnPXIKcbbk/ph9vAiYQ87hPSKGRvrYPqvYjtyxcGQFuwBzpNiGDnToqNW8ZssF3ArJIkmAR/
V1CneAB5PuiUQp+ymRRO6Twk10lSocIwExfK22XE3mVHzFqYKxa90YFOKT3NXh6+vX7B5N6P
ly+X94dvGPEOFIJ3qidBPxfbCvUcUGjtqbSYrYKWTK5FENLrdgBhQ8MCIpzPyauhncdCPYfO
85I8xwv6/nw2d6oGCIgUUBTR5VnAdpa109h0ztgAHIwN/qXFfHkOXGKPAoSoFe+boFDcFVVA
LJcL8oUrO6IPPscr+kxj7IpsFc+5EEawUConOkEz7RmLlfAkdlNmqKtIEJciyUIvERqSlHOV
S2HwKd5HmAUuXyosgrfQTKxwCdw2PoJ8f8zLuslh/HZ52nkiqPQ7TZYxPA4sW9SKhZ1IUJmc
TmHiMrwrlnHEx+XZnRYBJ7uKvQhBeSHF95ZpCqxOi4yCdLA9F5aih6DLmQnk4fnMskvDeEEG
tQItuSVKYVbWFNQAEncPdPdgFnJDEDFB4GR/UDDu5Awxoe22iwAMXkffXs0DfpJVaQOaN5se
BTBxSHO9AGjFdlLvgYQ+AMkC79SfnPat8v35PtCdccX2LUXrJWjCebjyvr8XB1hkuBUVT9Tp
GND7Iz0zHOvPEcfyNFrFuC8qfAyMJEd+EI0EgLcDQqWiPW8/tTVlst1jDD1n9A47Wd1QthjE
UE6UWIVxckBqhpyrOjPB3EeMUvr119uSe4BTCYvAbKMuwNYtb8GwifgWwdg9ucOgumnh9Iy6
XpPOlgEDsyPz9bBYzkIyWTUiCIOIm0QGO1uiIzT32lLOEv7c3FDMAzkP+eCZigIKDrilQiMX
K/vGqoYtI+oyb6DzJR8WxdSiIvd76tEZit127co0TuwFxASOhFWDUKL7eTRzO+a4mQczd3CY
S0ynyUTpFa5rypWtfm1+vL683+Qvj7YHKuyN2hyUvjInStzkDXMg9/3b5e+Lo7UtI1vB2lVp
HCaksPEtvcP6+vSsciHryEF2WV0J60izM/q+pXMoRH5fTzDrKp/TLQ8+u1saBXN0rjSVS88y
Xog77zRsKvRO5/VsmWbR7MoMBt6LtsB1eduwGwzZSDtq5/F+aTSt/hKD23Q6CtPlsY/CBP15
k74+P7++jK1qbaD05tqsxjx63D4PtfLl20OokqYIaVpeH/bKpn9v4GlsY9yty8a85yTwHY3M
kyLIbr9zquVxZD/o4MzqrC24Zv7AVHrQE4DfpiSzueUgAM+R7ZmAz0v6HIcBfY7nzjPRr5Nk
FWLCAfsQx0AdQOQAZs6mKJmHcesaEyzskvIBz7SxELaa08YF2CJJnHoWCbdOImJOP30xd1n0
bXxA8ZnRz1s4G7doRrYpy+XMwmdN3WH6FWKGkHEcskmIjBab2SnQQM8MiM8JKp5zW0BW8zAi
z+KUBAv6vKSiE5Q+dNHnNcR4FTrBi5TIF7yGBOIGULNliOlleCkF+CRZuLIboIuIVTwNch5Y
H6WFUt+SfRCza1NFH0fDSvH48/n5lzk5ojJHp+XOjzq2ij019XFPHyrfg9FWPHpbySXRNkj+
NNvlTWcr+fH0Pz+fXj7/upG/Xt6/Pr1d/oMJXrJM/tWUZX8pRd8jU5erHt5ff/yVXd7ef1z+
/ROjudmLxCoJI7J0X3tPB5r9+vD29GcJZE+PN+Xr6/eb/4J6//vm74GvN4svu65NTHx3FMD0
uqn9/1t2/95v2oQsm19+/Xh9+/z6/Qkauxfsjj11xrqsaRyJV92DHEuLsruyfl0iO7VSZ0+z
ITH1/1lX24B9fXMSMoRtor3QjTC6AFpwslhaglRtPyJyWFk1h2iWzDyWWyOV9HviVDhW8h6F
EZSvoDEnUI8eJ0a3jUI3VIczjaddpxWLp4dv718tPa2H/ni/aXVC4JfLu9vTmzyOZ6ylSWFi
sj5Gs4DkddQQkjOZrc9C2ixqBn8+Xx4v77+scdhzUIURdSjNdh27Eu5wB2P7PwIgdEKnWx2+
O2AWcDatz66ToS3/9TMdUgZGh1N3oKJDFgvHiEtQId/Fk8YwcWlgrcZUVs9PD28/fzw9P4Gi
/xMal6wrON1iajsxQM8cVLhF4s7jmGroRTCfPLsWegPlVZfNqZbLhT1ueog7Uw2UnghUpzlp
2GJ/PBdpFcPKMpmfPBHPFpLANJ+raU4O7WwEUVQthLM9MfO6lNU8kydejPk70V4dsA9Ujpdn
DjqeJursSZcvX9+ZiZN9gLGuT3UG0AGNbvaKW0YkpjA8w8pjW/KbTK6cVKwKxjtzC7mIQrvK
9S5YOAs6QPhQdqA5BXa4ewTYuho8R7aZO8X0jjREIEDmCb9D3DahaGasfUyj4Ltnsw3p0Ds5
hzkuSv6y6rCRkSWIMdY6SUloIgsFC1jF0j5AKy3JYcGbtiYW/Q9SBCF75NM27Sxx1iXD1rX8
m12bsEep5RFGTJxaXIEEACHhyASErOw697XARAvcTfSmgxFmdXwDn6Jyi1owWQRBRKy6COF9
rrvbKAqcA7Hz4VhItrG7VEZxYMk4BViEXIN10GcJmzxFYZbW6ETAws4FA4A4iaxPOsgkWIbW
0egx3Ze0ITWEZh8+5pUyRbHdppGegJLHch54jqHuoRPC0A2SZVYtusLoi5sPX16e3vWRIbP2
3LphGxSEl4TidrbijermCLsSW2vLYQFdm9GIoPnBxTYKvHoA0uddXeVd3oIC6DnsTaMkZINP
mkVf1crreT2n19C2GugMuV2VJss44kajQXkUVJfKkVY9uq2i4IoQdch4MfpJVGIn4J9MInK0
zA4TPYB+fnu/fP/29A8Nr4eWqQMxoBFCowl9/nZ58Y092zi2T8tiP3StZwDoSynntu4Ehrz0
yG2mSsVMn/Ty5s+bt/eHl0fYWb880Q/atcZ1jLvmopK5t4emI2Y8MkS0lx8pwzsQkfZKbR2m
wyzruvHWhlnYuFqGpuA/2GgiL6D4q+wwDy9ffn6D399f3y64X572kxKu8bmpefmWHiRMStU8
5RlztRJr9/+lJrLT/f76DqrWZbw2NKhESWgv0pkMljP38DCJPVlsFI5NwaQx9MQzbWJeS0BM
EE2MTiAsfMTOtqZrStyCXd0wOi3Atg50qL2dKKtmFfRXSzzF6Ve0NeTH0xsqtawxYd3M5rOK
9x5bV03IqoRZuQNpZknIrJGRdyVv2lxydz53De3RIm2wAdnrQk0ZOOGLFMSzxBoklTZNGQUk
MJJM5vRulYb4ytRIWibAosVEdKgP5qGsdV1jHDnQJfzWf9eEs7lVxn0jQBufTwC0ph7YV9Ib
s9yhMe5cXi4vX9gRI6OVe1PC1kfIe2b8vf5zecaNM64Ljxdcnj6zo1Gp3h71tshEq/xdMN3I
2APrIKQJ7Bs+Rn27yRaLmJ6iynYz42zY8rRy9dTTis9Dg0WQ3QNqhpFjQRjUvCQqZ6dhfz70
wdXmMV6Ub6/fMFzdby9+hXLlWBlCGfiMVr8pVgvSp+fvaGj1LCBKXMwEiMm84j3e0da/YkP6
wWJcVOdul7dVrV0uPCuIt+yqPK1mczbMu0bRsdFVsNPkzkgUwprIHchbe5ejnu0tAVrXgmUy
tzuSaylrXH6cpl8t2rubz18v3630DX2ztnd4m4J4L5TnTcGuTCLLW4GvkI2ncscXBa8+9les
QY6n+GbDuvgMVMANcz37XgQ9apwpZbhMmzJTJbP7sXiJam17N3VGxxDGBNHXtFtqTskpRXs3
RDGBz8xyLu4AOoMAoexy6iKk4PsOVNprN8uwirSu1sXe430PGtt+i7eDmhQTXXiuB2GikPaO
nYCTAWCx2Ij0Fj1Z2H7ByNzwYFz+qPs04kS3W6w8Pa/wJxmwt6s0Wjmcxsm03HXelp6hotBT
V1SCMDckrjCGaSmuoPEu3TW0Uku3H6+Q3IZuDg2CLsW+K+6uEegDTm8TqOti9hAegDou6Fm0
lv1Qo/EimPvKEGrERejQnLWU01ZWqMZzDUyTYP4NL+/61G9artq/VE2QXGt7WaebZiv8hbsx
uDR4CDXufbGf5W5DDLN/Wx6I5NBozPbHsmvCI/Xh7SM+vKFDZULja4Vm9+lG/vz3m/LYG9ds
k8fuDOiRVQuoYlGDqmyjEdwfmaMvUt2RPBeIniS4MDgkxzhNWN6zXZ6+qQboCXheWDw41ehY
U/AWf1dHU2CsCPSJYthRH4jDfLlGkpB+Yx8coNQ4p26DDUKh0F4OKF0Ey27BtcxIitF4kYhj
BnGqNZDgLPairLe0xRw603OEI+OZj+ywWa+ARKeg0GyQ4nX+CNNR46arj2OFLYF03tbQSSkm
LWZR7GWohknWZk7VKvqc6ARtGAWeDBzD5/QDhsBPddtqVyAGmU3GZ4+RMHdbh4MBJ8pj7Ta2
8jdTSSHccWp3WnECEWAPcwup57H6xF8UjqsAB0ehhToAM2MwMwZInH19rQt63WZStBY052N7
CjHe1aRxDb4FnchMmV4P1OkqF4nyUSwPEq1ok0VFC+q+j+m40agrTagcAqEKYOzQ2f56Nnap
Angy7dKcxDlc7iuQ5ay+Smjot/Uo3Vp07ldNdI1nRGOFDrMYuWrSOAg90BA9PfgknSnn4HdZ
VUyWL4xOoAac5GSrGtfKIWIytSrRNLt6n2OUZhiAM8pmneZljRfs2iyfMKs0vKvrtdIGiuYO
Y11faTmtNMD4C90qFObOs/UaCa6MfkWAK9Buwv+AkvtGnjd51dWws/99OUXqNr+FVGPqOruq
Sv7g0G40DO99pdFaAVPolhun+tJ8vo+uCcrR71s9nZyOH8Mv4OpihpwXb6Qt5YJQwLjM/MN6
oJ1KygHVfWry1K3EbJOyRgcj9hRvqNQEUXS0it5LXtdNFQ7jywtT1VP2QDFROPrwwVPMoDZe
R0XuMBuQV7SOcUO6ozmhFUuddnwIIuALmsPbISNhbAgnylpX7OLZ4rq6pg4dgAIefMuwioYQ
rOJzEx5oU2jPbGZ8Z9UymE4NujRV8yQ2y5an4g+LMMjPH4v7cWArR3Wzp6XyDLYImEUyohyi
c34QUjudlri4B7zN82otYHhVrCf4lHCyNmu0ioQK8t8ZtSMSK6A442ags43bAWvovsHiGqNo
OFmhDapKLbUBHnCzYO2DhOz3JOLl8cfr5ZFYavdZWxfOyenglqDJBwO+sDJ+749VXjmP+gTK
BSo7SlGR+wQDok7rjpcdJkpAvjlIbibpIvptUY6x4Cp7GFK8UwmhQS9AxQYNJaQqHntbi7EN
X43yi5KZ4ELZDMtjX+C4Be0xvibQhaNqPWkmWr2axZgrlfA2LDTX21DfOHZboA/HNuHaVLk/
SmjdbcMdZ7aY81Q2fa+QdArK0cvHkIrUrWuctHELfybG0d3Hm/cfD5/VcYJrHoVWoddIKrx4
AxrEWvA650iBMTmtrQoi+ivSpDxZH9o07wOR8WfwI9kOlutunQs2+OlItulaQQItqGWk25Fj
MAM7bztuSzmgpXrNhYI8ZAtrOj4MwkDABJHs7z1OO6KvFg0+IxP4dK62bW8KshlxcRgCnPk6
UXZoy25a0MEcf78JSiUBZuvoSaU3+sNAiqv02WO3GojMiu6c0A3oIs3jyRWMKVkl0t2pnkSk
sMnWbZFtyZQ0n7Jp8/w+N3jmbcNhg9cm+uhVtF/afFvYzkr1xoFThrMN53lPmq1q3P6nWa3h
8bzPVXSR877OOLaRpBJqB2ui8JC3DWri0jQlMQEa+RokyXikIOscA69QYG3nv+jywZkJfnIR
vWzwsLQeyq6Axj+p5ncv1EyDElYHdHzcLlah1YwGKIN4tqRQGqkIISo0On8rZ8JcA7KmseSA
LGo7Kw08qcBZtBJZFpWOC2QBTAA9EnpTXZiB3/s8JSGFbTiqBd5VaCBShdeY4oi/AkmIzQ6A
NeAekNDi3LqFk+47Z8G3LvMAkq0YAy7d5ZysxsjadweRZbmlnY3BlDtQ3EC/6w4tmdtV7Ub0
7i9z0Fhf2qfm8u3pRquO5AD2KPBovAPZIjFmhmQvIQGuQP2ahMUKzxvi3mBA55PoOq4QwEdn
ajUxILwtVMCgTfmTnZ5K5umh5a/2A0l8tvVLAxhLdqqNfQVSIn9oZIW+BT0Kj65lx21UPqwz
srHGZ28ULWCnWqewxFtb6DYvoD8AY3/ZAATSlGRXGTAq4AbGoGXPRIYydU+x1fHtZhNc6YwP
DscfnPIscF8Khao2cgjxFh/GvLfKPel6nu1nEwr8fIxtxhFzd6g7wXblyTcCLXzbueXVexCZ
oMum7YGz8pym34EgIaEFu/NGdII07XYjcfIwBa27YQSMRv7O7aYrL+qBYlIV6LaeFtQe0NgL
o/nTdDg71L4RrLH6A+2wdH0N+eZ8zNtiQxjYF+X0y0cJHap3mcru633udD+yZm9D+VGXn3B8
uMuQhp3XmIsEpBxX46Yo8zPii70dhBZ2yRhv4pMHD4Xm+7T91OAdVA8YlLStEzlPtRQ7uTZy
X3dOI2Ya5JF2CqdCaHLFiWlxPUxF+ZIq9FtVSIl549kq/DNLHLp6I2Nf92q0t/OBZb7za2id
Unwii8wIg5GWFS0Kd/hHQhkyJKL8KGBHt6nLsv54tSpoySw/sRXusTtPJgUBV12VdyKtG9JD
Wgg/fP5qx2rfSC0Cnh2AWv9I6GsNxgOmetuKaopyFp8eXK8/4HeXhZ3OQaFwABOBPkK9c94i
sVkZfW319+lvzf6ELf9f2TFTysioi/QjVdYrPEWjc/NDXRY5r0/dwxvs+Dhkm1436fng69a3
ZWv5F6zHf+Un/Au6G8sd4Mh4qyS8RyBHlwSf+6QNmGe7EbA3i6MFhy9A00Ptq/vXH5e31+Uy
Wf0Z/GFPyZH00G2428aKfbIgaghTw8/3v5d/DJaezhHXCuCMHgVrP9pde7XZ9D2Ht6efj683
f3PNqVQUu1YFuFVbdgrD2x12dE8FxKYE/RfkVd06KNCYy6zNrcX2Nm/3dlW9KXJUzKuGHUe7
wzbvyrX9rgEpBmyTWLXJzmmbgyJtzSr1bxTevRl32iyjyi9TJUgwv09e2ctbK/bb3OkpkfUi
cFxSMyNt+TtMYuNfb3Mlj3zYnU8SA6IpDy4f69xHv3bEtivGU1hC7I/Uz1o0Z/nR6kbYMcmd
/WoP0bK4V6bHXRpBawHAG+Z6QjSGVA3sbfdbnw3PIVU7eM6Ix9GhZE2bw/STXM18gN+j9yj3
SeU9exN5RNdcLfdcFbLL2CpiFZh/rfIw3rMm2p4yr9Y57GUzpvRNK7YVhq42Yg1K+lc0rKCn
yXiuij1ocLwWUDkjZ9dMFOW7/Sn2j3jAzv3Y1lTAn1OBsGPTmMDMPRKuDg6X+vn8EfQ7O/nF
dM3N23ryPT3s2sa0J5nsw6ck9wV7clDa0qCUvQghoslC97LtDLKN6PY2bhFxQQEpySKh9Q6Y
ZTLzYkIvxl/awoeZe+uxo+c4GHIfzcFxJ/gOSeytMvG25pIN1eOQrDwcr6K5p0oSr815J/Qy
s4pXv2WGuo0iDpQ3HEtnPu4beTsIPXmMXSrO8wNphEyLgn5ZX33g44uNuGjhI748pzd7cMKD
526j9gjfZOnxK768wMNVEPsqCnjvXSS5/d/KjmW5jRx3369w+bRblcnEHifjOfhAdVMSo36Z
3W3ZuXQptmKrEj9KsneS/foFwH7wgZY9h5QjAs0nCAIgAObqtOGUxh5Yu62lIkKuKTK/MQRE
Ek487m5tQMgqWes8rDPSuaiUyNwxE+RKqyRRUfjNTMjE9ubqy7WUi7BYQffwUYsQkNWq8mmk
Hyh0anT6EKmq9UKV3D0cYqAkbx0MmUJats4EU9Bk+JxGor5QHOvwwtxgOs+b5bktYTq2XpMA
bn39ssUYoccnDKa0BPGFtB/KwV+gHJ/X0EAoQIG4UoKWh8c3IOLT7fzhWGn0KoypNk5TMZaP
FsFpvInnTQ7N0FA9EBklVOSDOhNiE6eyJOftSquoChHCEvds7SvKZLXMNR9G0CMVgr1eneP9
NuhZscxgfGh0Qb2/EQmIr8IoK4NI7aPxZpBckzHGXAGz98MwJRFVkgK5zGVSuNcWDJi6f3b4
++7r5uH3l916e/94s/7tbv3jab09DGY2yUVcqIyZ8xYCSwrdjCQ7nRhFznW7g5diik7y7mM+
Vgsg9ufLDPOvjFxnB1bNvhDTmGei4h+cU6nlPAw/urfpmiLSjYovz44+2FAMIkuMfjc0BOXZ
rAfxBjjAKRWPZKF0anrfzOHmfnXIYcxBkm7KuThye2+Dzw53d6sj52uSN5siB6Z45X4IWms8
AJx+i6LQQrH+GPaEifIqTSVuO29HIxLwklo2UujkqpnkedWhDNLoBbew3XCG7S0sbg7EcHaI
edxuHv9+ePdrdb969+NxdfO0eXi3W31bQz2bm3ebh+f1LXK9d1+fvh0aRrhYbx/WPw7uVtub
NYWaDgyxfbns/nH762DzsMF8Ppv/rdxsclGE80uGy+ZCYCoChQ9yVpXU1vZgsb6A1O0SqcLI
GIzSyvJshHYGHOAgXUPsNnAQ27ZsIJmZYTP1E2ubozsMdBNwEazX0tiJ6cDj89onEPWPoK7x
y1wb7d5R+uGAwCEYy+H219Pz48H143Z98Lg9MGzKWhRCRiu68zasU3wclgPZs4UharmIVDG3
maoHCD+hXcgVhqjavi8YyljEXhULOj7aEzHW+UVRhNgL+4a/qwEtFiEqiD9ixtTblo9+0MSq
pCdz6aIpwJpNj45P0zoJAFmd8IVhS/SHWd26moPwEZS74lRb2D9PaWyZL19/bK5/+77+dXBN
1Hi7XT3d/QqIUJciqD4OKUHaviJ9WTxnCnVcOp5QHemlnILSjb/WF/L448ejvzo3EvHyfIeJ
Ha5Xz+ubA/lAg8C0Gn9vnu8OxG73eL0hULx6XgWjiuz4wm6dojTobTQHkVEcf4DT5AqzQjH7
a6ZKWN9wJ8lzdcFM01wAb7roVmFCqTtRVtmFfZyECxtNJ2Efq5BkI4YOpe0625YlehnUl09D
vILrzCXTCJyF9HqlX2k276fQB4kYlI6qThmakPgMXugIudrd9XPmfxKlgn2Xo2VYqXC89ruR
wPDY86qFX3iVdklJ1rvncNl09Mcxs3JYHE7hJctXJ4lYyONwGUx5GZKAjqqjDzE9DuYRNVv/
KDmn8UlQeRpzeB+boghHmSogcAo3i5jl1GnM50jt9owjA1qF1JbfLwAcf/zE4X88Yo68ufgj
LEyZsgpkhkk+Y8hkWXx0M9cZ+ts83TlObD1rCLcHlJl3M/2qQV5YTnnFultjkcokUSJcfIGq
rUm9HlaMUC6bnAUO5zCWIY1N6W9I1y2HZJoGBa2QGecB3E9/SG2gqeI8hEeaKR8Gaub+8f4J
U7Zs3Azw/TCmIwpKx/7sW4S27PTkmBkLfx0xAOccW8Gbh4Bc9Orh5vH+IHu5/7redlmbXZm8
pZWsVE1UoDTlT1KsJ/RQSx2uHEJaLsdBOG5AEO4UQUBQ+FmhzC4xLKW4CqCky7Wvhdui7o/N
1+0KxO3t48vz5oE57TBfKLdjKI+oYXtd7HgwHRYOCzM02n/ONWFQ+K972cPqQEAfDuIeUgG8
eGSYHVcGmQtvkY72oewbi8Xd2W56Ms3+zo5w2fmSYRoXqJEtVZYxQjRC6QFNIdJhE+/BEURK
AqNIZcmQs4XLDNSpatTZg8H9/ErXyUiIy/PXPqw2OcsrGMYlt6nmSXwGdPMqOnrjttgfTk73
j7ljIqxv/d75fm02i0X0D6pFHW+80kokqso5m6qF1L1xzTFCAJcfC2ZDEjXSU7OtkrS/jRaV
OfcGaOVFHQcIsFfe0opixMMBymlSThOw9oxKBhjndiSNW25r/Fz/EUVmpMTCFt4/CAv37bW+
OjXUySXmkWoSmZ2BoDVSZU40tU9aRzyVzipJViv+zXkLtQ3dEGxspoV3oXRlRwLYJCim8jKS
oTaPwCjSkl8YSphQyhFqSJN8piLMETJGdAPGW1hcKY4ZIwRCupDPPCpJQuXkshG8Vqvkusdh
R6xf+chH86h+Q9WARQIPbQ32CRbXmkuh28M0WMCiniQtTllPXLTLjx/+aiKp2xsb2YYWDAjA
FcvTptDqAqFYR4txb2P8icGGJV7uct//SYYb/Ni6mVAzvFEppHHyIYfj9s6oF7EwV/s3soTs
Dr49bg92m9sHk3bt+m59/X3zcGtF2OCDcpIM+NjO4TV8vPsdvwC05vv61/un9f1wY0JuW/b9
l3a8gUN4eXZoufm1cHlZaWFPH399kmex0FevtgaiXrRAf883YNChRr6h1K3Oe/INM9ZVOVEZ
dgpWNqumZ30u+zFxVgsVf2qKc5tyu7JmAucQ0Kp7FdciofO90A25xdluhMJzwJ4oUFCBDEqL
OrukSqC7ZlFx1Uw1JXaw6ctGAQbrQaNcx06qEI2iRlanE2hoIGFzjSksLoIPA3bPZVusBUSb
CPQEm4tER59cjNBiETWqqhtHx/SMJvDTvi+2eANBYPvKyRXnTOognLhshSBCL8cuvAwGzPsY
9BOvG0YnTtctHx0QrEMzUWQZEX27EFBFnKf24HsQ6KuUd4ZyrDqlxjPPLUd/O9TPEsex84tR
S7xS0I6ZmrGUq5mUYBb/hO8JKMcMOhVz+JdfGieazPxuLk8/BWWUP6AIcZWwfZPaQqFTrqya
A/EHgBLYdljvJPoclLmLNAyomXxR9t2DBWkdFb0Na9+0d9SAbxyXeZI7r+3ZpeiSYO83BwZN
2jAKH7wQIN+inGIdjGUeKdjwFyATai2sMwnvAlXu5EQwRRSp5ITVYXls30tn1BN6jB0FvVk1
92AIwMwXeM1vdSemG+EoERpj0OdkgbA6q6M5tVVeZRHhTvuM6a9hOQ6rPQpCYVkKpjEEZXnW
AfB99MKF9qAizxMXpGWA3UZudJAhCoYurNUe18hurvadK+UsMTRkkVaSO0Ib/u45C1NFT4pV
nqrI3kNR8gV0OKcyTBJa5KwSkRbKuPsObHAaWxObq5jCr+GMcqgNKLDrwkVc5uEemckKdeN8
GttkOs2zqoufs3uI5WxAFOKf/jz1ajj9ae+WEjM3gNLqlLjL3NNQgbkcnCvcHgQQWm/igALD
dkDOY/DqNmRpmtTl3IumpOvxWBZ55ZUZqQeOdDjij3ufjxJOMI/CCsydxl2/55PPYuZkXkQn
pGzGUomV79qTilwPhU4SpdKn7ebh+btJ8Xy/3tl+C0P3UOZakNmD91k28EhgzlfuCDa5KhpQ
kxIQmZL+svnPUYzzWsnq7KSn2FZaD2o4sTbhVSZgW4yqYA68aQNCLAk5naCrSiO1BjxOMjYf
wj+Q+iZ5my+knfLRaezN45sf69+eN/etZLsj1GtTvg2956Ya+tAshc7Ojj4cn/zLWn1QkUtM
e5N6iVZFbOwGrDvTXGIyZow1A8q0r7vNoEDoJx/AVJWpqCLrLPAh1CeMUb3y6yBHrWYpxQL9
+Vp2Poj6b50CmjAyx2+uO5qN119fbm/R+0M97J63L/gMlkOhqUAFHLQON5+x2z9nvroy4slL
39oSoqFvAWGmaCvc00hbIbreeLyTmMliFjtsGn9zunLPeCalaCNo1ReyCtlfE5T5HJRY+GoR
5RfNROcL6XjcvGly3WFhpJMMqAajijpNrHXj6SuzIrJw44LmiU8j28ZmUwdCvWPRA3Smq8BD
hSrOl5lr96LSIldlnvEZ94fqMXQ4pAmdx6ISzcgZbHBMsCNDUC1g3ynuIk6NsDdSDeV94H1h
XUTfr5RFwpydc+OdNFKNiRvqUlS8WqG3MkcWO03qSYfMezITBkWfjnm7tqQHR3QCTCXsdAcZ
7aY5hOvShNQNLcPpHbdAmcUmjH20kovUp8yLlBwRfCfmHqi5Dd1Dixmod7OSkTFaFKWrWgR7
baQYpgBjxNHPzgctUKxBnSX4aK5mc09r6KebpgUjjKfAxYJjggda3E2Utje9B8Bpc7d669Bo
oOFdmoEibaPMk+UDG4zjVisdGKkofZ9518NwYE3+mpVzLw++8StB/IP88Wn37gCf1X15MifW
fPVw64pHAhPpwhmZ8wH+DhzzotTyrJcG0T+xRtNNBTvKVi7LfFqFwCEOMs8rEBtFaiNSS1xo
5Ciy3x3TVDPH5JWVKBc2BbRuwB2ImFNew7YH2Zbp14D4erc83L5XfbXLcxA8QPyIc14DI4Ot
GRhLA/sX04QygFRy84KiCHOIGZ7RBdK5rCRgYoNrKlOlu6NwDhdSFsa0aGya6Io2HMr/3j1t
HtA9DXp+//K8/rmG/6yfr9+/f/8f6+klzC9BVc5IPei1rV5Eh21rZZGwZHcEaLE0VWQwj2rk
WocQcLCj7A2tDnUlL23DabvFYIT4fcC/ePTl0kDglMiXFFLgIehl6YQxm1LqocdiTHhvEXLq
FrDncDV6NvRB7kVrZ5VsBN25z/EB6h1sYwwb8FxDh/EOdkWLyKbOZ7zO9w+opmuVkv6hoaA7
kbyBdRA+NiRamKSB1mekG6CfeJ2VUsawY4zBdJRgFkaS6Ejf7NLvRi69WT2vDlAgvcYLAUs3
amddlcGRV7SFPn8fsdoQ0ET/jElZRoBpSCIElREf3ht7829v5/1WIw3Tk1XKeyvWeCZFNStH
m50aWVYyh5gGIyOIefiaCVc+/gWm0bG+une+ahfaKpLnpcUOu3ebnJ57W/q81RC1Z+pr1Wra
HaAmoLXQWUM0hmfRVZWzIcX0NCH0TntSx7TOjOK6HzrTopjzOJ29YOqN3lRg9k5qPEe0xIsb
DwXzS+BeIExQSDLbTZcwovZDU4u1rFR35PJLMvv0Lzm3hfICrZuI79xNwZ8Kp7JcKlTZ/eEV
oHOkQMj6nO9cUF9bwBrxqAZewhf4agvHPSyR12TlbbVm6YZqUbxdixPskqfHv9fbp2t2pxRR
HwuwlFq7qTxU1kW0APeHk+WTZUPCL2VaI8nFo8oJxU4WKI3YljjLWlnpZqouQcQKYWmpGmP/
Y1k9to/LgmIappBc7DE6X6YjmtUkVu3K89Y6HCNFTY1ZyhCjqOI6tQzkNKdmI186hq9gGWxj
Y7XePeNxhKJW9Pjf9XZ1az12SlnuHBme0t5RMyPpEYbEeHvA8pIo7zU02pwjZ3V3KjREPqBf
fTZ2MCdPKe7ecWwnaajJlNPVsm9LoNEmUIFAtUFbjmEM9o1aiz2MDNFatZxM2hoNISNzibho
ENQ1Zc7gPY4MFtCk0FKYvBoffuKr073OoIF5kUeckR09h9hkEVdWQIcR1NEloERO4panKkMD
ReEVlx7PmXSyB+2h8WXWE7xKG7PkOHdxXuCzfRXnwVoTiX/z3d3JjFjm7eHM5SXuLaZLZrTG
wm/iaZ2cJR24jAoug5txWgF4ZedPpdLWa8ItbO8h3MK6VtZBRkWX3rUjFVpWALd/Gi89KiTA
PTMgWA97gqlYBGNOFpwI2Q0CtGpvEJ2dwRtaiWZp9Ja2d6bKYqxk790dfT5VOgUBVwYjNomk
eFasKuALSWw4Dk+kss3BzbO27iykNiwc+/YOl90GDKKT7csyvk+iNKaUk68wVxhMWIkzwbFM
xFU4PyZQ3A/ad5EcK9dYAyAHRAKo2VvY8JasaxcVs5F57yr0EZwlx+2PlmI7P5tM+2l2Y1TZ
w85TjijfIYZb5hExXX5GjB41UeY84W0L3nXe/wGfqRuMXpACAA==

--zYM0uCDKw75PZbzx--
