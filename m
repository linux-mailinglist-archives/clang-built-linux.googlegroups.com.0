Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBUFI7GDQMGQECSKOUCA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf39.google.com (mail-qv1-xf39.google.com [IPv6:2607:f8b0:4864:20::f39])
	by mail.lfdr.de (Postfix) with ESMTPS id DC5643D5319
	for <lists+clang-built-linux@lfdr.de>; Mon, 26 Jul 2021 08:21:05 +0200 (CEST)
Received: by mail-qv1-xf39.google.com with SMTP id r14-20020a0c8d0e0000b02902e82df307f0sf7532188qvb.4
        for <lists+clang-built-linux@lfdr.de>; Sun, 25 Jul 2021 23:21:05 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627280464; cv=pass;
        d=google.com; s=arc-20160816;
        b=SbzTkoUERyu6H4ae1U2bo3G1Oe/SszIIC8ScyRAXaygkWYDffI3Z3IB/cq+Wtqfmof
         X02k9ayVLZHeoM0i3xwvGUfnYZvravSpgkMqPmFQJCeYMeSVD7NSAKV3kR0aGIqKsHPQ
         B91xk7kYXWMGTjYFf48IBO6ZkINoaHtAV27IzRfChrg+CPHydRBcdGRF3Jn3HFjM+Dr2
         PRbMnp+G6mDaZEzdXjU+vd89RCIHC6u9rsnu32l8LOa7gXqj7wLmdt8hdsT/vqgBpW9G
         a3AZtfVeYpceqKMeSbW7F3si/caD7FKNmLMKXJ+NnkxtyBFSfB6ENuYoop0IhDBPRwm5
         ir+w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=cXteNhzZITz6oopCj3kFa2vFMmTVExCyevNRuqHYrn0=;
        b=xPNH4rI/2cQy8gJ/jpoPBTDQE4mw0QOztmvJCoTzRj3HErahjauLPs1N1iRtCiGiiB
         ParrJhgQzkd0o7WJWRVF4r8dNi4sJVv6Z3kyCzqhkP8xT3Jk20TjjMb3cqSENYfGybQi
         2P5lozv/HRm4qBlu2pdyzf1U3fiojJokj39PuzU/0PzUzhVQIF7U43vbpZLzGyNa4qYK
         k0n0dQ1ab77o93KNCmDWCJu4qpjBaVfmPps3RZv/dYCT6mNKPy0lgA5vfQmbrXZ+vwxZ
         Pmx+57UWeKrM6tO0FELZFWBgcYbvus+dz/+Dr3XQBpt/g+fQjTQQTJ9i/bXGlfYXCrsl
         kRWQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.31 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=cXteNhzZITz6oopCj3kFa2vFMmTVExCyevNRuqHYrn0=;
        b=kd1/A0NI47c2mpBKyUGKPDlSsj3MLpb4HRpRkK7SaPoiEjOx3UES1Q+RCky03+BrxB
         PHg6I5K8FhcBFp9CAokO+XR1PR6r4+do+5Ra37knXKCG5UnFQlGt0gFeTy/wrtlVYcLX
         O/uaRB0rUcCI+bhwSiEzzBs+4eKgFd19JUiDePccWmOzg4tresDRmu4f+4XEJHQgd6Eg
         7DSpKfgEkpcJyskf4jFpssFTR1inzQ3nm/AS3eVrU2A/GJ7+bdhnDoI0ckpcaXm8uXtZ
         vPqoaS7t+deXe++IXh5IUS8oCEC6obpfz2rwTO9NXkqN5HEXfnJZG2W91ZDJbEjD/+86
         HeXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=cXteNhzZITz6oopCj3kFa2vFMmTVExCyevNRuqHYrn0=;
        b=hGXqW02dwRgsVaDevRpqPV2YUbmlUI/ZI7p8GTEnDtczD/b1bhlT7ul7HfWHQNE0jH
         tlIyGKNpkVbHMqRdtqxA0EuZXtLsG/JuQV9SOB/gTqfU2f3w5+8O3QGMrf0sRv49OmwJ
         Jx33UP2psT9DkGgTvzoQaRVs/gt1obmP43Y8M2YHLYgJccldRSXX+/srGxz0q2A1J3yT
         R3n4Wdq5A4Cay1XQmWqEq6rXcBOZHQ3V27NN+V4LICF0TZgbS+TuUb5mTa7EArCp8RkH
         Mg/4rLBPdlUNNxHW7wzOKWo1mYBXH8Qhg6VI17UzHUrdU8KMTgj5fP+DZK63cXSB6T0J
         2XbA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530W4gR3JmU0x0zjWi1O0YxUuMI+oxtj6R3PLtKAxOFvkdeonjvQ
	zyZ7WdeI31UO8sHzKnpOY4o=
X-Google-Smtp-Source: ABdhPJwJ5XgJ+724ky2XBRMN1pte7EX+To2tE8VFPHdq/NLo5Fv959ir/afosOMeJWb1cWhsE+Ykjw==
X-Received: by 2002:a05:620a:294b:: with SMTP id n11mr15890797qkp.145.1627280464641;
        Sun, 25 Jul 2021 23:21:04 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6214:1944:: with SMTP id q4ls5834279qvk.2.gmail; Sun, 25
 Jul 2021 23:21:04 -0700 (PDT)
X-Received: by 2002:a05:6214:2481:: with SMTP id gi1mr16187230qvb.35.1627280464018;
        Sun, 25 Jul 2021 23:21:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627280464; cv=none;
        d=google.com; s=arc-20160816;
        b=0f57RqTYLWni94v55Q/+dPF9WzTKmNQmVaD6NQODjcSPu4aQrglc+GPwEMMVROuHws
         TyMvsTJ4cn0JycNSLiz+Gmztf7eRuA2MzN/oejpo1BMiRpi0/Fet9DyJMxaYmiqGPNq9
         4FPp11agYhgPh9li/W4VR9mX2KD3zLt2XwAiHxJXc8PFZIY6FwIhqOykTzEeXB3YbEj8
         PEIjM4c9pA+Z5uTVOYbWIX9OHh0T0Ja/NFXlrOtHZcKOGjgWp+eMLg2l6GRtRIE3VX6K
         EhMgoUqF1KcqqOKBOe0PSO7m3kZzuJ72XdW6xO3Iu+Lgop/U57DL3dp+tIn5YZJZj5YH
         XS5Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date;
        bh=uYNwiWzw1WxLtWa2ryBy7KsLGX7//Vxc+zx0IIUKmsQ=;
        b=PRWQMXnBlRkMV/wRDgOU0dShmX/aMsFI0xfFDhZYwj8sZ62pLJ4XPx2hdxr72hVxVn
         xYuzUwQz0uC+cn7K4YrjTJEbIwf7fwOW5dvxOMFj+LguyuwYxP6qe1OrntjSFxmMQ+pO
         FGZDUWP6PmbrI4TqkKjOG3ALOrlH0fdyef+hYrcNKb6krQ3pLK0RJRbl0fCBGiZbqUW0
         CQDaQPjY8g7GjEsPA6str2JFpdIL9LS0CTbYyeBOmtj0yDipV/zBbtz87ZFJad2Kx/pH
         fMC7ujNSmAFxeh+vuadtPtn3B8wMnRwZz0ls/lkx98RLmg/VVQcwooikeHbKdKtLu4YD
         A+HQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.31 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga06.intel.com (mga06.intel.com. [134.134.136.31])
        by gmr-mx.google.com with ESMTPS id x14si722409qkp.6.2021.07.25.23.21.03
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 25 Jul 2021 23:21:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.31 as permitted sender) client-ip=134.134.136.31;
X-IronPort-AV: E=McAfee;i="6200,9189,10056"; a="273257046"
X-IronPort-AV: E=Sophos;i="5.84,270,1620716400"; 
   d="gz'50?scan'50,208,50";a="273257046"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
  by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 25 Jul 2021 23:20:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,270,1620716400"; 
   d="gz'50?scan'50,208,50";a="436635313"
Received: from lkp-server01.sh.intel.com (HELO d053b881505b) ([10.239.97.150])
  by fmsmga007.fm.intel.com with ESMTP; 25 Jul 2021 23:20:56 -0700
Received: from kbuild by d053b881505b with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1m7tyx-0005S4-Qk; Mon, 26 Jul 2021 06:20:55 +0000
Date: Mon, 26 Jul 2021 14:20:40 +0800
From: kernel test robot <lkp@intel.com>
To: Jeff LaBundy <jeff@labundy.com>
Cc: clang-built-linux@googlegroups.com, kbuild-all@lists.01.org,
	linux-kernel@vger.kernel.org,
	Dmitry Torokhov <dmitry.torokhov@gmail.com>
Subject: drivers/input/misc/iqs626a.c:1645:12: warning: stack frame size
 (2384) exceeds limit (2048) in function 'iqs626_probe'
Message-ID: <202107261431.ugRM3oKP-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="jI8keyz6grp/JLjh"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 134.134.136.31 as permitted
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


--jI8keyz6grp/JLjh
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi Jeff,

FYI, the error/warning still remains.

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
head:   ff1176468d368232b684f75e82563369208bc371
commit: f1d2809de97adc422967b6de59f0f6199769eb93 Input: Add support for Azoteq IQS626A
date:   4 months ago
config: powerpc-randconfig-r011-20210718 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 5d5b08761f944d5b9822d582378333cc4b36a0a7)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install powerpc cross compiling tool for clang build
        # apt-get install binutils-powerpc-linux-gnu
        # https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=f1d2809de97adc422967b6de59f0f6199769eb93
        git remote add linus https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
        git fetch --no-tags linus master
        git checkout f1d2809de97adc422967b6de59f0f6199769eb93
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=powerpc 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

   __do_insb
   ^
   arch/powerpc/include/asm/io.h:556:56: note: expanded from macro '__do_insb'
   #define __do_insb(p, b, n)      readsb((PCI_IO_ADDR)_IO_BASE+(p), (b), (n))
                                          ~~~~~~~~~~~~~~~~~~~~~^
   In file included from drivers/input/misc/iqs626a.c:20:
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
   <scratch space>:12:1: note: expanded from here
   __do_insw
   ^
   arch/powerpc/include/asm/io.h:557:56: note: expanded from macro '__do_insw'
   #define __do_insw(p, b, n)      readsw((PCI_IO_ADDR)_IO_BASE+(p), (b), (n))
                                          ~~~~~~~~~~~~~~~~~~~~~^
   In file included from drivers/input/misc/iqs626a.c:20:
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
   <scratch space>:16:1: note: expanded from here
   __do_insl
   ^
   arch/powerpc/include/asm/io.h:558:56: note: expanded from macro '__do_insl'
   #define __do_insl(p, b, n)      readsl((PCI_IO_ADDR)_IO_BASE+(p), (b), (n))
                                          ~~~~~~~~~~~~~~~~~~~~~^
   In file included from drivers/input/misc/iqs626a.c:20:
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
   <scratch space>:20:1: note: expanded from here
   __do_outsb
   ^
   arch/powerpc/include/asm/io.h:559:58: note: expanded from macro '__do_outsb'
   #define __do_outsb(p, b, n)     writesb((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
                                           ~~~~~~~~~~~~~~~~~~~~~^
   In file included from drivers/input/misc/iqs626a.c:20:
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
   <scratch space>:24:1: note: expanded from here
   __do_outsw
   ^
   arch/powerpc/include/asm/io.h:560:58: note: expanded from macro '__do_outsw'
   #define __do_outsw(p, b, n)     writesw((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
                                           ~~~~~~~~~~~~~~~~~~~~~^
   In file included from drivers/input/misc/iqs626a.c:20:
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
   <scratch space>:28:1: note: expanded from here
   __do_outsl
   ^
   arch/powerpc/include/asm/io.h:561:58: note: expanded from macro '__do_outsl'
   #define __do_outsl(p, b, n)     writesl((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
                                           ~~~~~~~~~~~~~~~~~~~~~^
>> drivers/input/misc/iqs626a.c:1645:12: warning: stack frame size (2384) exceeds limit (2048) in function 'iqs626_probe' [-Wframe-larger-than]
   static int iqs626_probe(struct i2c_client *client)
              ^
   14 warnings generated.


vim +/iqs626_probe +1645 drivers/input/misc/iqs626a.c

  1644	
> 1645	static int iqs626_probe(struct i2c_client *client)
  1646	{
  1647		struct iqs626_ver_info ver_info;
  1648		struct iqs626_private *iqs626;
  1649		int error;
  1650	
  1651		iqs626 = devm_kzalloc(&client->dev, sizeof(*iqs626), GFP_KERNEL);
  1652		if (!iqs626)
  1653			return -ENOMEM;
  1654	
  1655		i2c_set_clientdata(client, iqs626);
  1656		iqs626->client = client;
  1657	
  1658		iqs626->regmap = devm_regmap_init_i2c(client, &iqs626_regmap_config);
  1659		if (IS_ERR(iqs626->regmap)) {
  1660			error = PTR_ERR(iqs626->regmap);
  1661			dev_err(&client->dev, "Failed to initialize register map: %d\n",
  1662				error);
  1663			return error;
  1664		}
  1665	
  1666		init_completion(&iqs626->ati_done);
  1667	
  1668		error = regmap_raw_read(iqs626->regmap, IQS626_VER_INFO, &ver_info,
  1669					sizeof(ver_info));
  1670		if (error)
  1671			return error;
  1672	
  1673		if (ver_info.prod_num != IQS626_VER_INFO_PROD_NUM) {
  1674			dev_err(&client->dev, "Unrecognized product number: 0x%02X\n",
  1675				ver_info.prod_num);
  1676			return -EINVAL;
  1677		}
  1678	
  1679		error = iqs626_parse_prop(iqs626);
  1680		if (error)
  1681			return error;
  1682	
  1683		error = iqs626_input_init(iqs626);
  1684		if (error)
  1685			return error;
  1686	
  1687		error = devm_request_threaded_irq(&client->dev, client->irq,
  1688						  NULL, iqs626_irq, IRQF_ONESHOT,
  1689						  client->name, iqs626);
  1690		if (error) {
  1691			dev_err(&client->dev, "Failed to request IRQ: %d\n", error);
  1692			return error;
  1693		}
  1694	
  1695		if (!wait_for_completion_timeout(&iqs626->ati_done,
  1696						 msecs_to_jiffies(2000))) {
  1697			dev_err(&client->dev, "Failed to complete ATI\n");
  1698			return -ETIMEDOUT;
  1699		}
  1700	
  1701		/*
  1702		 * The keypad may include one or more switches and is not registered
  1703		 * until ATI is complete and the initial switch states are read.
  1704		 */
  1705		error = input_register_device(iqs626->keypad);
  1706		if (error)
  1707			dev_err(&client->dev, "Failed to register keypad: %d\n", error);
  1708	
  1709		return error;
  1710	}
  1711	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202107261431.ugRM3oKP-lkp%40intel.com.

--jI8keyz6grp/JLjh
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
AQA=

--jI8keyz6grp/JLjh--
