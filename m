Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBL4JRSCAMGQEZPOK3JA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53c.google.com (mail-pg1-x53c.google.com [IPv6:2607:f8b0:4864:20::53c])
	by mail.lfdr.de (Postfix) with ESMTPS id BA6B236987D
	for <lists+clang-built-linux@lfdr.de>; Fri, 23 Apr 2021 19:32:33 +0200 (CEST)
Received: by mail-pg1-x53c.google.com with SMTP id z19-20020a63e1130000b02901fcdcf0c5a3sf14740273pgh.19
        for <lists+clang-built-linux@lfdr.de>; Fri, 23 Apr 2021 10:32:33 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1619199152; cv=pass;
        d=google.com; s=arc-20160816;
        b=H+p0v8hwBoc4Md2f0KEa5ORyEdD0ZLR6xPerrcLmj3l/mEwQuOskiDWkIQ7P3nS9EP
         oTgYp+sqM3sgp9Bcd1JFzdK++NlvIfdidnkG4ALPhwL2uyXLxpnGsMqe63FAw3rIrNM3
         qS2Sba4XcY/SMkgMASUhG5gFajRLlO/Yi3EPHNWrFkWjM+Xjv21fRKKn948AzcWwEyoH
         4h8Gy1+Oh/FZLHkHxaFzRsQEPMVQjB6Ba2UOvkVE34rLDx5vnW785BszhHU2hWzPYLS2
         nueBeAfE265lzUYPS5Qi/e7Zp2/FsOmuYkeVUx+AbX5S8ezNovNAx+kkaxJM93rMs0KS
         YeLQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=g1Bqj2S6/g3AsaNb6DDGlqE/HUQ6avLuCpm9mhxsI8c=;
        b=xeE7dRmOLHCsWXL6E9Y5WpLk5o6v4BmYfPsfA+zXqV5BGtxEcRsSa4kWvtAaC4x0gP
         IltwZZo5HsLeaQAvjuxRDMQ/nseoRnZ59/3jKvjXMWEKzJ96gJa1Wr5aqcbWaq6GC868
         sQmilaE6diy+e1AjE/JjMYL8GEUgLQz5YjE1WylGNL8fTSDe197nKnfmJPzGn9ze1AmS
         yU1UgnXpWStnWceskJBMgplvpAm5mUM1oso1L+J3TbiTr8nkxrP1sVqYsHNMUj//SZrr
         l3s11xPe1CP4EiBj8j7vjumqxpBEH05t0376fOs9iljlkSYM/OI4QAghSkM9EsH6AGHA
         XK+g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.20 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=g1Bqj2S6/g3AsaNb6DDGlqE/HUQ6avLuCpm9mhxsI8c=;
        b=PzUNEpPEGzK/Lbi1VqyZjA2x7o7NHmLKwXW2TaG2eFSMTbP0Qn0tvoBenBHp21XCE/
         ZIkRtRi0kzTT5fjsqBH9g0nzgg1cd5Hl8sfsyPNNTysNIy9fc0IPkNuhAzTcN/V0ea+I
         WnIGRWQJmIYdbH2+dXfbmFh6fTyWmxMeg2zl6UjRy3OqsgJfkcrwhIbmRzQJGsb1g7A5
         hdh9nFfp4DgaqKafrKoBRe09X7ttObwaSsUk06F6ALlF95qPxJuwy4g0OUCitYKER4Ad
         eWCrYuzmgbqQcbaZ99CsXUwetS51KfTDvtdI8lfjUx2V4KaLIUYq3UHh/d/llXQ3Qpfx
         hpwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:references:mime-version:content-disposition
         :in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=g1Bqj2S6/g3AsaNb6DDGlqE/HUQ6avLuCpm9mhxsI8c=;
        b=ekEdwPkqHYUkKimoHrXeRtAkRyfWZ1MLDC9NO00rs3h8mRQtAzHA3a46lLX7qhhZWF
         jQsxvYmK1gWEteaK1JR1+8f9ceat99jnlP1P8n8LK4FcYAiS1lo87i0CMkSdGRCDFYoI
         ETVj1VZ71iF/LKYso9/Yf6hhKZ99q2JgpFGCuj02ysLnKqQPr3fSv8kbKZpGRb6I6BF3
         rOIWBvlR8MKTe1PFteW0qaDc3Jt5Ri22BwNoStXrK5gmyjvt2bXzgJwHlL23yvOLPMwn
         9smWUyFh3uvgnVO22tAaclRAZ1PLCljRYSMfWlFcMmA8rz2imhHf04gd5RowV2Zev7QR
         oQIw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531T7TS0tXFtv1Fq8jSAadh+RJgPOdKPLCK+OYV14RDCv/n3Etre
	ziYq54jfzngpQXJgZno7STE=
X-Google-Smtp-Source: ABdhPJxiqejnloxjQLl+Gr2Jqr/MzMbkTARKLTTEp0JrQFldjyPEwjyHP7zYZFRWTvXuPQROwcXSZg==
X-Received: by 2002:a17:90a:7147:: with SMTP id g7mr5476394pjs.225.1619199151352;
        Fri, 23 Apr 2021 10:32:31 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:903:22ca:: with SMTP id y10ls4629916plg.8.gmail; Fri, 23
 Apr 2021 10:32:30 -0700 (PDT)
X-Received: by 2002:a17:90b:1647:: with SMTP id il7mr6624510pjb.132.1619199150539;
        Fri, 23 Apr 2021 10:32:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619199150; cv=none;
        d=google.com; s=arc-20160816;
        b=sSNVqjtO62jg7GPZcfV7S+dGvUSnkhAddU8r5zD3IHr0vZZqgBcj3Q/aXTXNUZubOF
         MlfKyVB8A0vumxCafcSMOFgHbK1gWZQ6KoQHMrNAwN2tL7ZELh3WQGYefzRgkNcIO+M2
         IZVBBEDoVTDQbNk7o+Dw+P/Cf98u6Axi2Hwj6ZAgFWuWdNUSW0eNBJl50JvtsrHb+FVu
         z3KoV21rLnEN58GFn3o9RojtpJ6+hA1IoyzIXDi0syON6deMfHhpzrh3QJSk1TN7N5AT
         4C9DtnpiG8TQSnYGQC3dRK1h6fhcMhiJ2vX1YMKK7RzVKX+7HDY+SS93fcLQynIvr40H
         0ebQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:ironport-sdr:ironport-sdr;
        bh=0q1xod+LwBL7ql+UE3LoJ43WHRkGlWMuSBMIKNe53Vc=;
        b=QaTVQAKI8aPGJdbipSe96d9tbILkcIB6KWG+ZArJSIf1dHXkGWQeaE7RAyFvlpb4Xr
         mwPhQfLRXVw8rmj27AWCv6rB1pkZUR9+74g6Igw5+tbhJ7tZlzbhGfkC0BRmEjHBB4M5
         rWNaf6jZ2Ycsuk43h4kLsuKXPXSC4n1ayEvN+XmTE77GPmBcIXdIzNEHchMML4mPDvLp
         sk4IIImJgxun9BAjK2S+7+LJGbSNGoiOuEp+R7gyamwm8a/xQtGaRPJgixrwPHJnlqtN
         CYCM7xjKjIncyozcgxNMffbPPhcSIkoUmrJdGZghvcLoIxEjjv7bUTRSUImxdWgcquvM
         lveA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.20 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga02.intel.com (mga02.intel.com. [134.134.136.20])
        by gmr-mx.google.com with ESMTPS id z28si658150pgk.2.2021.04.23.10.32.30
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 23 Apr 2021 10:32:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.20 as permitted sender) client-ip=134.134.136.20;
IronPort-SDR: 9+NMwFaiAr36ANfXu6K1n9cJKytogL8PnLhIbslyBZwjOKrbPHqz0OnuZ083CHhss07+HlGj7C
 nyebKDvC/nmw==
X-IronPort-AV: E=McAfee;i="6200,9189,9963"; a="183236594"
X-IronPort-AV: E=Sophos;i="5.82,246,1613462400"; 
   d="gz'50?scan'50,208,50";a="183236594"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
  by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 23 Apr 2021 10:32:28 -0700
IronPort-SDR: a/Blb7rVpeMNJZsU7n1QI0q5mh+k/pUVT1aBiFUQl+/6n0rhfVHT09b0o5GRM8CN5Ug+wQYl4z
 Ataj+k2c+ukw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,246,1613462400"; 
   d="gz'50?scan'50,208,50";a="424306488"
Received: from lkp-server01.sh.intel.com (HELO a48ff7ddd223) ([10.239.97.150])
  by orsmga007.jf.intel.com with ESMTP; 23 Apr 2021 10:32:25 -0700
Received: from kbuild by a48ff7ddd223 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1lZzfF-0004ku-3t; Fri, 23 Apr 2021 17:32:25 +0000
Date: Sat, 24 Apr 2021 01:31:26 +0800
From: kernel test robot <lkp@intel.com>
To: Guenter Roeck <linux@roeck-us.net>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com
Subject: Re: [RFC PATCH] usb: gadget: Drop unnecessary NULL checks after
 container_of
Message-ID: <202104240129.pIlZYlld-lkp@intel.com>
References: <20210423150626.138188-1-linux@roeck-us.net>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="ZPt4rx8FFjLCG7dd"
Content-Disposition: inline
In-Reply-To: <20210423150626.138188-1-linux@roeck-us.net>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 134.134.136.20 as permitted
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


--ZPt4rx8FFjLCG7dd
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi Guenter,

[FYI, it's a private test report for your RFC patch.]
[auto build test WARNING on usb/usb-testing]
[also build test WARNING on peter.chen-usb/for-usb-next v5.12-rc8 next-20210423]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch]

url:    https://github.com/0day-ci/linux/commits/Guenter-Roeck/usb-gadget-Drop-unnecessary-NULL-checks-after-container_of/20210423-230821
base:   https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/usb.git usb-testing
config: powerpc-randconfig-r013-20210423 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 06234f758e1945084582cf80450b396f75a9c06e)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install powerpc cross compiling tool for clang build
        # apt-get install binutils-powerpc-linux-gnu
        # https://github.com/0day-ci/linux/commit/cbd5fdce089022e1d479b647580489e84d92ca5e
        git remote add linux-review https://github.com/0day-ci/linux
        git fetch --no-tags linux-review Guenter-Roeck/usb-gadget-Drop-unnecessary-NULL-checks-after-container_of/20210423-230821
        git checkout cbd5fdce089022e1d479b647580489e84d92ca5e
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross W=1 ARCH=powerpc 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:616:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:186:1: note: expanded from here
   __do_insb
   ^
   arch/powerpc/include/asm/io.h:556:56: note: expanded from macro '__do_insb'
   #define __do_insb(p, b, n)      readsb((PCI_IO_ADDR)_IO_BASE+(p), (b), (n))
                                          ~~~~~~~~~~~~~~~~~~~~~^
   In file included from drivers/usb/gadget/function/uvc_configfs.c:15:
   In file included from drivers/usb/gadget/function/u_uvc.h:17:
   In file included from include/linux/usb/composite.h:41:
   In file included from include/linux/usb/gadget.h:25:
   In file included from include/linux/scatterlist.h:9:
   In file included from arch/powerpc/include/asm/io.h:619:
   arch/powerpc/include/asm/io-defs.h:45:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(insw, (unsigned long p, void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:616:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:188:1: note: expanded from here
   __do_insw
   ^
   arch/powerpc/include/asm/io.h:557:56: note: expanded from macro '__do_insw'
   #define __do_insw(p, b, n)      readsw((PCI_IO_ADDR)_IO_BASE+(p), (b), (n))
                                          ~~~~~~~~~~~~~~~~~~~~~^
   In file included from drivers/usb/gadget/function/uvc_configfs.c:15:
   In file included from drivers/usb/gadget/function/u_uvc.h:17:
   In file included from include/linux/usb/composite.h:41:
   In file included from include/linux/usb/gadget.h:25:
   In file included from include/linux/scatterlist.h:9:
   In file included from arch/powerpc/include/asm/io.h:619:
   arch/powerpc/include/asm/io-defs.h:47:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(insl, (unsigned long p, void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:616:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:190:1: note: expanded from here
   __do_insl
   ^
   arch/powerpc/include/asm/io.h:558:56: note: expanded from macro '__do_insl'
   #define __do_insl(p, b, n)      readsl((PCI_IO_ADDR)_IO_BASE+(p), (b), (n))
                                          ~~~~~~~~~~~~~~~~~~~~~^
   In file included from drivers/usb/gadget/function/uvc_configfs.c:15:
   In file included from drivers/usb/gadget/function/u_uvc.h:17:
   In file included from include/linux/usb/composite.h:41:
   In file included from include/linux/usb/gadget.h:25:
   In file included from include/linux/scatterlist.h:9:
   In file included from arch/powerpc/include/asm/io.h:619:
   arch/powerpc/include/asm/io-defs.h:49:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(outsb, (unsigned long p, const void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:616:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:192:1: note: expanded from here
   __do_outsb
   ^
   arch/powerpc/include/asm/io.h:559:58: note: expanded from macro '__do_outsb'
   #define __do_outsb(p, b, n)     writesb((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
                                           ~~~~~~~~~~~~~~~~~~~~~^
   In file included from drivers/usb/gadget/function/uvc_configfs.c:15:
   In file included from drivers/usb/gadget/function/u_uvc.h:17:
   In file included from include/linux/usb/composite.h:41:
   In file included from include/linux/usb/gadget.h:25:
   In file included from include/linux/scatterlist.h:9:
   In file included from arch/powerpc/include/asm/io.h:619:
   arch/powerpc/include/asm/io-defs.h:51:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(outsw, (unsigned long p, const void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:616:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:194:1: note: expanded from here
   __do_outsw
   ^
   arch/powerpc/include/asm/io.h:560:58: note: expanded from macro '__do_outsw'
   #define __do_outsw(p, b, n)     writesw((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
                                           ~~~~~~~~~~~~~~~~~~~~~^
   In file included from drivers/usb/gadget/function/uvc_configfs.c:15:
   In file included from drivers/usb/gadget/function/u_uvc.h:17:
   In file included from include/linux/usb/composite.h:41:
   In file included from include/linux/usb/gadget.h:25:
   In file included from include/linux/scatterlist.h:9:
   In file included from arch/powerpc/include/asm/io.h:619:
   arch/powerpc/include/asm/io-defs.h:53:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(outsl, (unsigned long p, const void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:616:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:196:1: note: expanded from here
   __do_outsl
   ^
   arch/powerpc/include/asm/io.h:561:58: note: expanded from macro '__do_outsl'
   #define __do_outsl(p, b, n)     writesl((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
                                           ~~~~~~~~~~~~~~~~~~~~~^
>> drivers/usb/gadget/function/uvc_configfs.c:967:1: warning: unused label 'out' [-Wunused-label]
   out:
   ^~~~
   13 warnings generated.


vim +/out +967 drivers/usb/gadget/function/uvc_configfs.c

46919a23ee87bb Andrzej Pietrasiewicz 2014-12-10  936  
e16769d4bca672 Andrzej Pietrasiewicz 2016-11-28  937  static void uvcg_streaming_header_drop_link(struct config_item *src,
46919a23ee87bb Andrzej Pietrasiewicz 2014-12-10  938  					   struct config_item *target)
46919a23ee87bb Andrzej Pietrasiewicz 2014-12-10  939  {
46919a23ee87bb Andrzej Pietrasiewicz 2014-12-10  940  	struct mutex *su_mutex = &src->ci_group->cg_subsys->su_mutex;
46919a23ee87bb Andrzej Pietrasiewicz 2014-12-10  941  	struct config_item *opts_item;
46919a23ee87bb Andrzej Pietrasiewicz 2014-12-10  942  	struct f_uvc_opts *opts;
46919a23ee87bb Andrzej Pietrasiewicz 2014-12-10  943  	struct uvcg_streaming_header *src_hdr;
46919a23ee87bb Andrzej Pietrasiewicz 2014-12-10  944  	struct uvcg_format *target_fmt = NULL;
46919a23ee87bb Andrzej Pietrasiewicz 2014-12-10  945  	struct uvcg_format_ptr *format_ptr, *tmp;
46919a23ee87bb Andrzej Pietrasiewicz 2014-12-10  946  
46919a23ee87bb Andrzej Pietrasiewicz 2014-12-10  947  	src_hdr = to_uvcg_streaming_header(src);
46919a23ee87bb Andrzej Pietrasiewicz 2014-12-10  948  	mutex_lock(su_mutex); /* for navigating configfs hierarchy */
46919a23ee87bb Andrzej Pietrasiewicz 2014-12-10  949  
46919a23ee87bb Andrzej Pietrasiewicz 2014-12-10  950  	opts_item = src->ci_parent->ci_parent->ci_parent;
46919a23ee87bb Andrzej Pietrasiewicz 2014-12-10  951  	opts = to_f_uvc_opts(opts_item);
46919a23ee87bb Andrzej Pietrasiewicz 2014-12-10  952  
46919a23ee87bb Andrzej Pietrasiewicz 2014-12-10  953  	mutex_lock(&opts->lock);
46919a23ee87bb Andrzej Pietrasiewicz 2014-12-10  954  	target_fmt = container_of(to_config_group(target), struct uvcg_format,
46919a23ee87bb Andrzej Pietrasiewicz 2014-12-10  955  				  group);
46919a23ee87bb Andrzej Pietrasiewicz 2014-12-10  956  
46919a23ee87bb Andrzej Pietrasiewicz 2014-12-10  957  	list_for_each_entry_safe(format_ptr, tmp, &src_hdr->formats, entry)
46919a23ee87bb Andrzej Pietrasiewicz 2014-12-10  958  		if (format_ptr->fmt == target_fmt) {
46919a23ee87bb Andrzej Pietrasiewicz 2014-12-10  959  			list_del(&format_ptr->entry);
46919a23ee87bb Andrzej Pietrasiewicz 2014-12-10  960  			kfree(format_ptr);
46919a23ee87bb Andrzej Pietrasiewicz 2014-12-10  961  			--src_hdr->num_fmt;
46919a23ee87bb Andrzej Pietrasiewicz 2014-12-10  962  			break;
46919a23ee87bb Andrzej Pietrasiewicz 2014-12-10  963  		}
46919a23ee87bb Andrzej Pietrasiewicz 2014-12-10  964  
cb2200f7af8341 Joel Pepper           2018-05-29  965  	--target_fmt->linked;
cb2200f7af8341 Joel Pepper           2018-05-29  966  
46919a23ee87bb Andrzej Pietrasiewicz 2014-12-10 @967  out:
46919a23ee87bb Andrzej Pietrasiewicz 2014-12-10  968  	mutex_unlock(&opts->lock);
46919a23ee87bb Andrzej Pietrasiewicz 2014-12-10  969  	mutex_unlock(su_mutex);
46919a23ee87bb Andrzej Pietrasiewicz 2014-12-10  970  }
46919a23ee87bb Andrzej Pietrasiewicz 2014-12-10  971  

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202104240129.pIlZYlld-lkp%40intel.com.

--ZPt4rx8FFjLCG7dd
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
/R/JZpnAAgA=

--ZPt4rx8FFjLCG7dd--
