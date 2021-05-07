Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBYON2WCAMGQEHUJ3EJI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103b.google.com (mail-pj1-x103b.google.com [IPv6:2607:f8b0:4864:20::103b])
	by mail.lfdr.de (Postfix) with ESMTPS id B6099376875
	for <lists+clang-built-linux@lfdr.de>; Fri,  7 May 2021 18:12:18 +0200 (CEST)
Received: by mail-pj1-x103b.google.com with SMTP id y7-20020a17090abd07b029015c24594e52sf1282900pjr.5
        for <lists+clang-built-linux@lfdr.de>; Fri, 07 May 2021 09:12:18 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620403937; cv=pass;
        d=google.com; s=arc-20160816;
        b=Ok2WmRixLe8oFjInklqMFOllErF1AGPXhsUc8MdkqLEUkIiHOIut9r84FkzgqJWyW1
         /gfOxQMoSQP0yTy5y9poxUR6soKNhn9h6sD2dMXTopi183Z3N5H0xbrF81a87uNUOiN5
         +5U7cb26/MmN41CcUokt+VyDOi496bFts84iHh8ZTr3W/0nYjCxdSX9C3gju1HDS5wvw
         CX+RvrCOE2WzZVSSTk83WhoaR5ayvyImBe69IT5QHrZfr0qaRcXkk82Uft/vvCu8yJAq
         3drEIgLYZvO/esHgSLLKxUPjpd6onkGQ/jjKIAruj4NB7NUXPQxUUyKSRYFoZbEPPush
         HHnw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=nNlskyqtohWvRPXIpUSQtPM9vIgygFPDpvmm2eWaAuY=;
        b=jJBFM31GzdbvurkH3ZaJm6PAXwz5Vq91nLncM+ArS6fgqGnkcxMXNn11kjIThGpWTM
         joOXqjhe/xiJj9cZ+muzex1kn61I9B0Id3mKBrVoTN4p3cb4hr66yWXA3t0kmV9nqGoE
         9jsQKZqaMjeO/a4sFRdLcWGd0YaTjPbuCQlOZA7gT5Mrc+EO33JzKREt7vrMheb4jfh2
         Z+CJEAHY1f0nw2jZyoXfZ/AKd5570I3rRc3sgeEwyn34PSie/aMCgN1kec1VC3o2UvTv
         bkqrO8jLjos4aTObtBhi/oI8SX/7lMJiGmuPKZSlZ8gWBtu7Lxr6Uu5RdD2cjM3FDEz3
         4uFw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.100 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=nNlskyqtohWvRPXIpUSQtPM9vIgygFPDpvmm2eWaAuY=;
        b=Ah/9qdgIvSsn9i4P8ns6FYl7EfriXORPQw7D3d7byUh6QnehFG06VLHr6DGV60lQsv
         qIyRqHehlxP0Wj89oeLyrYo0shnRycnAOWEB/ImYZ8xefTqRbdbY4HLpEfFELRqdO//2
         Cwr3LSoOiX1/DfISweytBcE83DZfEpcfOw9Wf8qmK4D2Et2CoUduUIj+jG0tDH8BO3eX
         Jsyg9BC+roH0gXMYmvqF8qDYy0t3FDHr8Kqf4tuKVRL/e98wVb+f+fCSUCW/DPc3YBMu
         ncXq1tOsy44ToQAxnpuIVkaPcCCL1asVw1s2nPp5yxUaos5Wt0rhCekiQvl8IMO9dSpb
         GtDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:references:mime-version:content-disposition
         :in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=nNlskyqtohWvRPXIpUSQtPM9vIgygFPDpvmm2eWaAuY=;
        b=SQgAqWyz9lrYXuNsyT56LiIuHIc4sfZonyoUF5ORwQyX8+9ChqaYObxCFKeq0fA322
         stSg9gb9Lw/eXazhm+E/DZxydbSdYlM6aZc2Tf0UbJtON1+5Ir80WqMlQVf8JF3CW/xn
         xundcoB4UWsGQeoYz589sBCPfVwb3xl7AmIt490d/GfV4rAknu3GO4oZlC1xENCoqRBT
         Y5li1A5FMe0paW5ON91R3yIMTRX2S/OrEhGWExvMEUjJGmcZapYFO+SuuI2QA4Zn8ptw
         +SuPO3xwvG/pg4rhLjlM0+bqHBBXU8uufxmJnMxv9YdoctC6MZLEKDI3jypcQTTPoA+C
         Q1WA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533UyIDSGhz2NN48uXeebB0OD/Xt5W5zGKfQCo2MRlMPdKFVL1KV
	P9vx/fh9nzsOzxw0uhKNJzM=
X-Google-Smtp-Source: ABdhPJwujWHGhNDuQVLa4dtBoZ5NYHh4GkG4Tw7bOj18LG6nlyK7p2WvaS9yhJMu1V/K+zSbzfRvow==
X-Received: by 2002:a17:902:74c3:b029:ed:5a91:472d with SMTP id f3-20020a17090274c3b02900ed5a91472dmr10813453plt.32.1620403937311;
        Fri, 07 May 2021 09:12:17 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:df0d:: with SMTP id u13ls3030641pgg.2.gmail; Fri, 07 May
 2021 09:12:16 -0700 (PDT)
X-Received: by 2002:a63:5d18:: with SMTP id r24mr11215547pgb.94.1620403936753;
        Fri, 07 May 2021 09:12:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620403936; cv=none;
        d=google.com; s=arc-20160816;
        b=1IgZeX+PLsyj1g1F8XSb5YXss0qajw9Vo2u4Z8mY2sTckHRYLZ9GT5EAnGXeXUYzig
         pDttyioq8BCWb42uZEXM3byYhhHl6/AgkwRO0+LJWq5OEjG6Rnc1i89IAwiJ/44x5gcJ
         UQbe0UAflKgSfdtLcd2sw+aaagiNZanUFZVGnxwNQiQ3dx/ytdjVYp2rFHC1sr/ZhocH
         E6LmTomE3iWB3RHAVq26J5cGtnXr/3COdHnSpbMn8p6TyjEAoVeA8r5XP+8/zZsQw+2K
         AS9oBackx3OXHzvbAHJ/4DKC9aRth+u1FG/YpiTeT8YtSjrtGLnvJU0E2I7opbX3y1UZ
         d9dw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:ironport-sdr:ironport-sdr;
        bh=iN89PqIdbPdtpYYXL56FyP6sorkHy7bY5JpQcHWXazY=;
        b=vS6osAArkFu45JYCu4u5guys1pEsk3XTSgAYvj0B6cWrC01hNWg/W/9rW0p8rdR1vf
         CTop49gf+Jn95iMp2+qKmEcpTRlD3YC9+5Zj+tlHqGzCi4wfgeMvo0zuuDzQI+xLv2xm
         Mfy92e7sWfRxTok1ypxxKI0xXZwFkHZBEekh3d2+BtZtWClFWEbDJh7oxKsR/2faAcSY
         hXeboi1dlsHSEBhF6F4spvA0l+RtyZQ775Bw9jzH+fMtIbMWFbV5OIaoOdkfmdGqx/zo
         sl1F5+hMjRMwZ0cFQfI/EwF240tXWIiBAbWM9cLeDSwz08d7cN1Y8g2ZjBixtMs4/NfA
         8Ojg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.100 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga07.intel.com (mga07.intel.com. [134.134.136.100])
        by gmr-mx.google.com with ESMTPS id j17si603056pfc.5.2021.05.07.09.12.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 07 May 2021 09:12:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.100 as permitted sender) client-ip=134.134.136.100;
IronPort-SDR: Enw+rbdv7lS79Zk0OfL7Oaq25H8JuvOsOYMzGa0n3faOTFUzPCRSFAN+DOJi2Izd4YANbrAcHv
 Z6rfepGMEMPA==
X-IronPort-AV: E=McAfee;i="6200,9189,9977"; a="262696107"
X-IronPort-AV: E=Sophos;i="5.82,280,1613462400"; 
   d="gz'50?scan'50,208,50";a="262696107"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
  by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 07 May 2021 09:10:03 -0700
IronPort-SDR: L37uweKBFZKzLCUlgpV4T3OjMRNWfJs7wTZ3dbMCpvcr5+F1dFSHAp87BYzLsdA9Y9huKIU3q5
 X/9y0aBIixrA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,281,1613462400"; 
   d="gz'50?scan'50,208,50";a="533606423"
Received: from lkp-server01.sh.intel.com (HELO a48ff7ddd223) ([10.239.97.150])
  by fmsmga001.fm.intel.com with ESMTP; 07 May 2021 09:10:00 -0700
Received: from kbuild by a48ff7ddd223 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1lf339-000BHb-Dq; Fri, 07 May 2021 16:09:59 +0000
Date: Sat, 8 May 2021 00:08:52 +0800
From: kernel test robot <lkp@intel.com>
To: "Peng Fan (OSS)" <peng.fan@oss.nxp.com>, jassisinghbrar@gmail.com,
	robh+dt@kernel.org, shawnguo@kernel.org, s.hauer@pengutronix.de,
	o.rempel@pengutronix.de
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	kernel@pengutronix.de, festevam@gmail.com, aisheng.dong@nxp.com,
	linux-imx@nxp.com, devicetree@vger.kernel.org
Subject: Re: [PATCH 3/4] mailbox: imx: add xSR/xCR register array
Message-ID: <202105080008.OslMjdrl-lkp@intel.com>
References: <20210507101926.25631-4-peng.fan@oss.nxp.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="wac7ysb48OaltWcw"
Content-Disposition: inline
In-Reply-To: <20210507101926.25631-4-peng.fan@oss.nxp.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 134.134.136.100 as permitted
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


--wac7ysb48OaltWcw
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi "Peng,

Thank you for the patch! Perhaps something to improve:

[auto build test WARNING on shawnguo/for-next]
[also build test WARNING on robh/for-next v5.12 next-20210507]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch]

url:    https://github.com/0day-ci/linux/commits/Peng-Fan-OSS/mailbox-imx-add-i-MX8ULP-MU-support/20210507-174948
base:   https://git.kernel.org/pub/scm/linux/kernel/git/shawnguo/linux.git for-next
config: powerpc-randconfig-r023-20210507 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project a3a8a1a15b524d91b5308db68e9d293b34cd88dd)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install powerpc cross compiling tool for clang build
        # apt-get install binutils-powerpc-linux-gnu
        # https://github.com/0day-ci/linux/commit/356d43252930991aad1353a96361380a7f17f98c
        git remote add linux-review https://github.com/0day-ci/linux
        git fetch --no-tags linux-review Peng-Fan-OSS/mailbox-imx-add-i-MX8ULP-MU-support/20210507-174948
        git checkout 356d43252930991aad1353a96361380a7f17f98c
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross W=1 ARCH=powerpc 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

   __do_insb
   ^
   arch/powerpc/include/asm/io.h:556:56: note: expanded from macro '__do_insb'
   #define __do_insb(p, b, n)      readsb((PCI_IO_ADDR)_IO_BASE+(p), (b), (n))
                                          ~~~~~~~~~~~~~~~~~~~~~^
   In file included from drivers/mailbox/imx-mailbox.c:8:
   In file included from include/linux/interrupt.h:11:
   In file included from include/linux/hardirq.h:10:
   In file included from arch/powerpc/include/asm/hardirq.h:6:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/powerpc/include/asm/io.h:619:
   arch/powerpc/include/asm/io-defs.h:45:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(insw, (unsigned long p, void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:616:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:186:1: note: expanded from here
   __do_insw
   ^
   arch/powerpc/include/asm/io.h:557:56: note: expanded from macro '__do_insw'
   #define __do_insw(p, b, n)      readsw((PCI_IO_ADDR)_IO_BASE+(p), (b), (n))
                                          ~~~~~~~~~~~~~~~~~~~~~^
   In file included from drivers/mailbox/imx-mailbox.c:8:
   In file included from include/linux/interrupt.h:11:
   In file included from include/linux/hardirq.h:10:
   In file included from arch/powerpc/include/asm/hardirq.h:6:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/powerpc/include/asm/io.h:619:
   arch/powerpc/include/asm/io-defs.h:47:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(insl, (unsigned long p, void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:616:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:188:1: note: expanded from here
   __do_insl
   ^
   arch/powerpc/include/asm/io.h:558:56: note: expanded from macro '__do_insl'
   #define __do_insl(p, b, n)      readsl((PCI_IO_ADDR)_IO_BASE+(p), (b), (n))
                                          ~~~~~~~~~~~~~~~~~~~~~^
   In file included from drivers/mailbox/imx-mailbox.c:8:
   In file included from include/linux/interrupt.h:11:
   In file included from include/linux/hardirq.h:10:
   In file included from arch/powerpc/include/asm/hardirq.h:6:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/powerpc/include/asm/io.h:619:
   arch/powerpc/include/asm/io-defs.h:49:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(outsb, (unsigned long p, const void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:616:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:190:1: note: expanded from here
   __do_outsb
   ^
   arch/powerpc/include/asm/io.h:559:58: note: expanded from macro '__do_outsb'
   #define __do_outsb(p, b, n)     writesb((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
                                           ~~~~~~~~~~~~~~~~~~~~~^
   In file included from drivers/mailbox/imx-mailbox.c:8:
   In file included from include/linux/interrupt.h:11:
   In file included from include/linux/hardirq.h:10:
   In file included from arch/powerpc/include/asm/hardirq.h:6:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/powerpc/include/asm/io.h:619:
   arch/powerpc/include/asm/io-defs.h:51:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(outsw, (unsigned long p, const void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:616:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:192:1: note: expanded from here
   __do_outsw
   ^
   arch/powerpc/include/asm/io.h:560:58: note: expanded from macro '__do_outsw'
   #define __do_outsw(p, b, n)     writesw((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
                                           ~~~~~~~~~~~~~~~~~~~~~^
   In file included from drivers/mailbox/imx-mailbox.c:8:
   In file included from include/linux/interrupt.h:11:
   In file included from include/linux/hardirq.h:10:
   In file included from arch/powerpc/include/asm/hardirq.h:6:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/powerpc/include/asm/io.h:619:
   arch/powerpc/include/asm/io-defs.h:53:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(outsl, (unsigned long p, const void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:616:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:194:1: note: expanded from here
   __do_outsl
   ^
   arch/powerpc/include/asm/io.h:561:58: note: expanded from macro '__do_outsl'
   #define __do_outsl(p, b, n)     writesl((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
                                           ~~~~~~~~~~~~~~~~~~~~~^
>> drivers/mailbox/imx-mailbox.c:278:2: warning: variable 'val' is used uninitialized whenever switch default is taken [-Wsometimes-uninitialized]
           default:
           ^~~~~~~
   drivers/mailbox/imx-mailbox.c:282:7: note: uninitialized use occurs here
           if (!val)
                ^~~
   drivers/mailbox/imx-mailbox.c:257:9: note: initialize the variable 'val' to silence this warning
           u32 val, ctrl;
                  ^
                   = 0
   drivers/mailbox/imx-mailbox.c:608:2: error: member reference base type 'int' is not a structure or union
           .xRR    = 0x10
           ^~~~
   drivers/mailbox/imx-mailbox.c:609:2: error: member reference base type 'int' is not a structure or union
           .xSR    = {0x20, 0x20, 0x20, 0x20},
           ^~~~
   drivers/mailbox/imx-mailbox.c:609:9: error: expected expression
           .xSR    = {0x20, 0x20, 0x20, 0x20},
                     ^
   13 warnings and 3 errors generated.


vim +/val +278 drivers/mailbox/imx-mailbox.c

2bb7005696e224 Oleksij Rempel 2018-08-03  251  
2bb7005696e224 Oleksij Rempel 2018-08-03  252  static irqreturn_t imx_mu_isr(int irq, void *p)
2bb7005696e224 Oleksij Rempel 2018-08-03  253  {
2bb7005696e224 Oleksij Rempel 2018-08-03  254  	struct mbox_chan *chan = p;
2bb7005696e224 Oleksij Rempel 2018-08-03  255  	struct imx_mu_priv *priv = to_imx_mu_priv(chan->mbox);
2bb7005696e224 Oleksij Rempel 2018-08-03  256  	struct imx_mu_con_priv *cp = chan->con_priv;
63b383575c388f Peng Fan       2020-03-19  257  	u32 val, ctrl;
2bb7005696e224 Oleksij Rempel 2018-08-03  258  
2bb7005696e224 Oleksij Rempel 2018-08-03  259  	switch (cp->type) {
2bb7005696e224 Oleksij Rempel 2018-08-03  260  	case IMX_MU_TYPE_TX:
356d4325293099 Peng Fan       2021-05-07  261  		ctrl = imx_mu_read(priv, priv->dcfg->xCR[IMX_MU_TCR]);
356d4325293099 Peng Fan       2021-05-07  262  		val = imx_mu_read(priv, priv->dcfg->xSR[IMX_MU_TSR]);
2bb7005696e224 Oleksij Rempel 2018-08-03  263  		val &= IMX_MU_xSR_TEn(cp->idx) &
2bb7005696e224 Oleksij Rempel 2018-08-03  264  			(ctrl & IMX_MU_xCR_TIEn(cp->idx));
2bb7005696e224 Oleksij Rempel 2018-08-03  265  		break;
2bb7005696e224 Oleksij Rempel 2018-08-03  266  	case IMX_MU_TYPE_RX:
356d4325293099 Peng Fan       2021-05-07  267  		ctrl = imx_mu_read(priv, priv->dcfg->xCR[IMX_MU_RCR]);
356d4325293099 Peng Fan       2021-05-07  268  		val = imx_mu_read(priv, priv->dcfg->xSR[IMX_MU_RSR]);
2bb7005696e224 Oleksij Rempel 2018-08-03  269  		val &= IMX_MU_xSR_RFn(cp->idx) &
2bb7005696e224 Oleksij Rempel 2018-08-03  270  			(ctrl & IMX_MU_xCR_RIEn(cp->idx));
2bb7005696e224 Oleksij Rempel 2018-08-03  271  		break;
2bb7005696e224 Oleksij Rempel 2018-08-03  272  	case IMX_MU_TYPE_RXDB:
356d4325293099 Peng Fan       2021-05-07  273  		ctrl = imx_mu_read(priv, priv->dcfg->xCR[IMX_MU_GCR]);
356d4325293099 Peng Fan       2021-05-07  274  		val = imx_mu_read(priv, priv->dcfg->xSR[IMX_MU_GSR]);
2bb7005696e224 Oleksij Rempel 2018-08-03  275  		val &= IMX_MU_xSR_GIPn(cp->idx) &
2bb7005696e224 Oleksij Rempel 2018-08-03  276  			(ctrl & IMX_MU_xCR_GIEn(cp->idx));
2bb7005696e224 Oleksij Rempel 2018-08-03  277  		break;
2bb7005696e224 Oleksij Rempel 2018-08-03 @278  	default:
2bb7005696e224 Oleksij Rempel 2018-08-03  279  		break;
2bb7005696e224 Oleksij Rempel 2018-08-03  280  	}
2bb7005696e224 Oleksij Rempel 2018-08-03  281  
2bb7005696e224 Oleksij Rempel 2018-08-03  282  	if (!val)
2bb7005696e224 Oleksij Rempel 2018-08-03  283  		return IRQ_NONE;
2bb7005696e224 Oleksij Rempel 2018-08-03  284  
2bb7005696e224 Oleksij Rempel 2018-08-03  285  	if (val == IMX_MU_xSR_TEn(cp->idx)) {
356d4325293099 Peng Fan       2021-05-07  286  		imx_mu_xcr_rmw(priv, IMX_MU_TCR, 0, IMX_MU_xCR_TIEn(cp->idx));
2bb7005696e224 Oleksij Rempel 2018-08-03  287  		mbox_chan_txdone(chan, 0);
2bb7005696e224 Oleksij Rempel 2018-08-03  288  	} else if (val == IMX_MU_xSR_RFn(cp->idx)) {
63b383575c388f Peng Fan       2020-03-19  289  		priv->dcfg->rx(priv, cp);
2bb7005696e224 Oleksij Rempel 2018-08-03  290  	} else if (val == IMX_MU_xSR_GIPn(cp->idx)) {
356d4325293099 Peng Fan       2021-05-07  291  		imx_mu_write(priv, IMX_MU_xSR_GIPn(cp->idx), priv->dcfg->xSR[IMX_MU_GSR]);
2bb7005696e224 Oleksij Rempel 2018-08-03  292  		mbox_chan_received_data(chan, NULL);
2bb7005696e224 Oleksij Rempel 2018-08-03  293  	} else {
2bb7005696e224 Oleksij Rempel 2018-08-03  294  		dev_warn_ratelimited(priv->dev, "Not handled interrupt\n");
2bb7005696e224 Oleksij Rempel 2018-08-03  295  		return IRQ_NONE;
2bb7005696e224 Oleksij Rempel 2018-08-03  296  	}
2bb7005696e224 Oleksij Rempel 2018-08-03  297  
2bb7005696e224 Oleksij Rempel 2018-08-03  298  	return IRQ_HANDLED;
2bb7005696e224 Oleksij Rempel 2018-08-03  299  }
2bb7005696e224 Oleksij Rempel 2018-08-03  300  

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202105080008.OslMjdrl-lkp%40intel.com.

--wac7ysb48OaltWcw
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
eojoaAferfz/Afslfdwv4gEA

--wac7ysb48OaltWcw--
