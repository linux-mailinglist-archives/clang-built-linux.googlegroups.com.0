Return-Path: <clang-built-linux+bncBC4LXIPCY4NRB5HFYODAMGQE3ZGUFUY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33a.google.com (mail-ot1-x33a.google.com [IPv6:2607:f8b0:4864:20::33a])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D1CB3AF6B0
	for <lists+clang-built-linux@lfdr.de>; Mon, 21 Jun 2021 22:13:41 +0200 (CEST)
Received: by mail-ot1-x33a.google.com with SMTP id z17-20020a9d46910000b02903fb81caa138sf9878510ote.18
        for <lists+clang-built-linux@lfdr.de>; Mon, 21 Jun 2021 13:13:41 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1624306420; cv=pass;
        d=google.com; s=arc-20160816;
        b=N5h3iuDD0AfMnAADmL2P8bbkIM/o/zfF2GhZtCBWumrPADOcK3qY0A4Pf3gQVDya9A
         JmiqmQjRiq7XYS7Fzrz3y4/yHR33DVNeftLI53q7NdUeZ83z2BZRMuJZBt2ohzKCCIuc
         6gfONIk0FzRBDISkr9Nb/ADMjXJmiH9NjeEZVhzqyvcfZD4yZBv13lJk4LGO3mF1gb7e
         /NcJSTtIyLCKjudFdnjraMJvtuNzLBq1xoorg+oKd6ID1a1vvHcJaVFUfia+qquZDRSq
         cKx1VrIhSPzsoG+M/544V7TwVOOVgl/mlLM3Du5tFYjdwuYLRKn/o8cwfemt39ocd1BQ
         8mWw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=ieL3fyVqDPh5reiA9eb89qEQixe+29HVR0yU1v9o2Ho=;
        b=fn31xhC91t1KJUKvsEEnTQLRNP3tjiMTUM4dCX58FHjq3nBTe2yb0EZ4GwcNlGTt5F
         laLhwFQx4jFV8VTp0sGAo8mcE53550B1JCAtM1ZuK2RPfy8nDyFvBEw5nmV6j1Ucbqum
         XzLrCZY9PHzUPr76Seqzi9pUOXNiyPBmm/r3iDl/S46STanpaWKVvbhbSmtfBiwRKaRS
         qZIGG1B1UmW2Ce/eHFIryVmSkYjMa6GTlU7fu4kZtd7E94hjYnTo98be48M+HcMjGNzm
         wJEjGx2RIY4W7iSZYo1kXNupuniY2LXwE5kz4qupEBzAyhItlcuepbMj0Bp0HggW/qSn
         F/1w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.88 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ieL3fyVqDPh5reiA9eb89qEQixe+29HVR0yU1v9o2Ho=;
        b=M+jUu3lhpIXa3EGu4v2i1YebubbGK3+Qbt1OaVxXNbsIQuyeUjsDK2cchFWhuGyDBK
         3C6sFkeZ1FZtmteMV3WctMrlDl9UVDMX1f272NTOti8J/wxKYm2j7yOWRV+AvxSn0tnL
         T1TNZoC3zPXBgXx4d67WwPXHUng2iUPWRl1iLyOOGZZrTH1zywsf1E1LXP0AK3Dbyy3v
         zKNBfmwvfbAJ3nTEAstwpZWjZXKOBIs5Q+LYh+tjk3kG8vRy0rhQrzQ5upSMoDXdXIdu
         eS303j96viUJ0XzicxArGIUwmOJTlj4iJHz7IEYFDLjrSrUvaopcPByJHXI1sjPfYFC1
         m5qA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ieL3fyVqDPh5reiA9eb89qEQixe+29HVR0yU1v9o2Ho=;
        b=MvqwjdRkgC4I7S+ppE49BrRBAi5vLkyv6wuWCGyGptcS7MIX+/0mQK8D01YK/h4/rW
         IZl6OVDgO9VCokvfgVfOxzGp+uA5mVlyLyZ9YUEzPrfbbsyIK3Kiam6xPRkKA4a/G1tl
         hXqL5sOel+ppbhlNdKM4MXkOereZvIdTaG3ppkt6LIapnRZkuqhGbdPxawAIr5GaoQJB
         wvi3SOmc5BbHDL1i2u7ksEqntR0kI3SYk64hYRazGUy2gefAjCBGU0VLbLH+f/MSsE3R
         /mLR/lgqh0u8iOop20LytOkO1itL7A32r1yY73UTeqb/LZvFL4exHryRCpaiMAFVN9P5
         Axeg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533zVklYOcgUm6bs6DNVfrVgvd7/72wDdDk7xa9hsqRTIyhaaCbU
	X9E5WHeDTTOoeV3wtsAIm1c=
X-Google-Smtp-Source: ABdhPJzCQnNDhkAawRNpKHGfZ3M7L3xq4F15HUIJtop16gSGY96vhYGfv3OVV2WmBnBMvXf6GChA5A==
X-Received: by 2002:a9d:7e81:: with SMTP id m1mr167710otp.351.1624306420102;
        Mon, 21 Jun 2021 13:13:40 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a4a:e0d0:: with SMTP id e16ls1823826oot.6.gmail; Mon, 21 Jun
 2021 13:13:39 -0700 (PDT)
X-Received: by 2002:a4a:b402:: with SMTP id y2mr298232oon.87.1624306419542;
        Mon, 21 Jun 2021 13:13:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1624306419; cv=none;
        d=google.com; s=arc-20160816;
        b=wpYpJ170TmacboXaUZc08NtwScpewU2KF16qewEbShDBhoo3cvUNR0/hjJqmUU/6dV
         o2TsxDgOYDKkNyKasdhyzqU4nSyfvOLs7YelNa6L65aNfQ/OCMn07+kKcVDZmvjSyB3R
         kZSOZKHoXrX+xkz/dsyL5eAL9npadV224WriRYvcA9fEo62PHH1Wa9UoJ2nTFpQsb2RN
         c13p9JXyJglQ1y3nclKhJKD97UySPNPYDUyPtl0D76cg54z/c/p/VycAZ4ocBq4owVvB
         4qMblA/ni3KN1sqsNSYAW50KXOoucPgFaLB2ugC5N5bWNK8kjyiAc2mdrZozu9havg6Z
         H/Og==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=ebV2xM9/mf3m9rWNyyFMvaomAb7na2OYoamxSDQI3v8=;
        b=c9Yqp2eOd4M15+6uAisb/MnYhYTZ1YubkESxMYxSMCOrD5qBPcFijrfXmLcuUwMx3z
         2c6EsgyLEu70cv1mw07NPdFvRSaSGV615v69+uJUK90vnDwtNupGsXlrYCH/3hyxXVhu
         rIkBFZdliDewQii83HL5HpPd0v0OLShJ9X7xt4NsKHjcxaFyHHspXlkczn+UNmROCsZw
         EN1bzp1MT7n3aHLmiYC9P+vSuFk6A6//pyDco9G+DqV4siemc6tSnyUjUS/nEmfs+t8A
         4AvY85clal1sPwGVbqEzIKguD6ixe+sDva2INDKCU2neCwH4jir349FKBjA23Sbe0/Fi
         us4g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.88 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga01.intel.com (mga01.intel.com. [192.55.52.88])
        by gmr-mx.google.com with ESMTPS id i10si36011oie.3.2021.06.21.13.13.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 21 Jun 2021 13:13:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.88 as permitted sender) client-ip=192.55.52.88;
IronPort-SDR: KgLosLTbOcgBHkKOXItBBqgceD8blwxAF55M0uF2zaKCfQ6h61CPMOIcbzFA0wr8ysHq+1u1YR
 AydV7a6WhYTw==
X-IronPort-AV: E=McAfee;i="6200,9189,10022"; a="228471433"
X-IronPort-AV: E=Sophos;i="5.83,289,1616482800"; 
   d="gz'50?scan'50,208,50";a="228471433"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
  by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 21 Jun 2021 13:13:36 -0700
IronPort-SDR: 3uCqnEbZlQEPa8DP2Wj0WAG4MrudXobES8ysiS2h238NQBaMeTHDmW/hJxI47vgj5F0BKxftxh
 nCjnxuHoIkbg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,289,1616482800"; 
   d="gz'50?scan'50,208,50";a="444376683"
Received: from lkp-server01.sh.intel.com (HELO 4aae0cb4f5b5) ([10.239.97.150])
  by orsmga007.jf.intel.com with ESMTP; 21 Jun 2021 13:13:33 -0700
Received: from kbuild by 4aae0cb4f5b5 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1lvQIW-0004li-Ly; Mon, 21 Jun 2021 20:13:32 +0000
Date: Tue, 22 Jun 2021 04:13:20 +0800
From: kernel test robot <lkp@intel.com>
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
	Miguel Ojeda <ojeda@kernel.org>,
	Lars Poeschel <poeschel@lemonage.de>, linux-kernel@vger.kernel.org
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	Willy Tarreau <willy@haproxy.com>,
	Ksenija Stanojevic <ksenija.stanojevic@gmail.com>,
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Subject: Re: [PATCH v1 1/1] auxdisplay: panel: Switch to use
 module_parport_driver()
Message-ID: <202106220428.eP8tHrNb-lkp@intel.com>
References: <20210616142020.45073-1-andriy.shevchenko@linux.intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="ew6BAiZeqk4r7MaW"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20210616142020.45073-1-andriy.shevchenko@linux.intel.com>
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


--ew6BAiZeqk4r7MaW
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Andy,

I love your patch! Yet something to improve:

[auto build test ERROR on linus/master]
[also build test ERROR on v5.13-rc7 next-20210621]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch]

url:    https://github.com/0day-ci/linux/commits/Andy-Shevchenko/auxdisplay=
-panel-Switch-to-use-module_parport_driver/20210617-050100
base:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git =
6b00bc639f1f2beeff3595e1bab9faaa51d23b01
config: powerpc-randconfig-r016-20210621 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project e1adf9=
0826a57b674eee79b071fb46c1f5683cd0)
reproduce (this is a W=3D1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/=
make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install powerpc cross compiling tool for clang build
        # apt-get install binutils-powerpc-linux-gnu
        # https://github.com/0day-ci/linux/commit/e05c6842e04754d31229738b7=
7ce7166b2fa15c8
        git remote add linux-review https://github.com/0day-ci/linux
        git fetch --no-tags linux-review Andy-Shevchenko/auxdisplay-panel-S=
witch-to-use-module_parport_driver/20210617-050100
        git checkout e05c6842e04754d31229738b77ce7166b2fa15c8
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=3D$HOME/0day COMPILER=3Dclang make.cross ARCH=
=3Dpowerpc=20

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

   __do_insb
   ^
   arch/powerpc/include/asm/io.h:556:56: note: expanded from macro '__do_in=
sb'
   #define __do_insb(p, b, n)      readsb((PCI_IO_ADDR)_IO_BASE+(p), (b), (=
n))
                                          ~~~~~~~~~~~~~~~~~~~~~^
   In file included from drivers/auxdisplay/panel.c:43:
   In file included from include/linux/interrupt.h:11:
   In file included from include/linux/hardirq.h:11:
   In file included from arch/powerpc/include/asm/hardirq.h:6:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/powerpc/include/asm/io.h:619:
   arch/powerpc/include/asm/io-defs.h:45:1: warning: performing pointer ari=
thmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic=
]
   DEF_PCI_AC_NORET(insw, (unsigned long p, void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:616:3: note: expanded from macro 'DEF_PCI_=
AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:122:1: note: expanded from here
   __do_insw
   ^
   arch/powerpc/include/asm/io.h:557:56: note: expanded from macro '__do_in=
sw'
   #define __do_insw(p, b, n)      readsw((PCI_IO_ADDR)_IO_BASE+(p), (b), (=
n))
                                          ~~~~~~~~~~~~~~~~~~~~~^
   In file included from drivers/auxdisplay/panel.c:43:
   In file included from include/linux/interrupt.h:11:
   In file included from include/linux/hardirq.h:11:
   In file included from arch/powerpc/include/asm/hardirq.h:6:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/powerpc/include/asm/io.h:619:
   arch/powerpc/include/asm/io-defs.h:47:1: warning: performing pointer ari=
thmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic=
]
   DEF_PCI_AC_NORET(insl, (unsigned long p, void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:616:3: note: expanded from macro 'DEF_PCI_=
AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:124:1: note: expanded from here
   __do_insl
   ^
   arch/powerpc/include/asm/io.h:558:56: note: expanded from macro '__do_in=
sl'
   #define __do_insl(p, b, n)      readsl((PCI_IO_ADDR)_IO_BASE+(p), (b), (=
n))
                                          ~~~~~~~~~~~~~~~~~~~~~^
   In file included from drivers/auxdisplay/panel.c:43:
   In file included from include/linux/interrupt.h:11:
   In file included from include/linux/hardirq.h:11:
   In file included from arch/powerpc/include/asm/hardirq.h:6:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/powerpc/include/asm/io.h:619:
   arch/powerpc/include/asm/io-defs.h:49:1: warning: performing pointer ari=
thmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic=
]
   DEF_PCI_AC_NORET(outsb, (unsigned long p, const void *b, unsigned long c=
),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~=
~~
   arch/powerpc/include/asm/io.h:616:3: note: expanded from macro 'DEF_PCI_=
AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:126:1: note: expanded from here
   __do_outsb
   ^
   arch/powerpc/include/asm/io.h:559:58: note: expanded from macro '__do_ou=
tsb'
   #define __do_outsb(p, b, n)     writesb((PCI_IO_ADDR)_IO_BASE+(p),(b),(n=
))
                                           ~~~~~~~~~~~~~~~~~~~~~^
   In file included from drivers/auxdisplay/panel.c:43:
   In file included from include/linux/interrupt.h:11:
   In file included from include/linux/hardirq.h:11:
   In file included from arch/powerpc/include/asm/hardirq.h:6:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/powerpc/include/asm/io.h:619:
   arch/powerpc/include/asm/io-defs.h:51:1: warning: performing pointer ari=
thmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic=
]
   DEF_PCI_AC_NORET(outsw, (unsigned long p, const void *b, unsigned long c=
),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~=
~~
   arch/powerpc/include/asm/io.h:616:3: note: expanded from macro 'DEF_PCI_=
AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:128:1: note: expanded from here
   __do_outsw
   ^
   arch/powerpc/include/asm/io.h:560:58: note: expanded from macro '__do_ou=
tsw'
   #define __do_outsw(p, b, n)     writesw((PCI_IO_ADDR)_IO_BASE+(p),(b),(n=
))
                                           ~~~~~~~~~~~~~~~~~~~~~^
   In file included from drivers/auxdisplay/panel.c:43:
   In file included from include/linux/interrupt.h:11:
   In file included from include/linux/hardirq.h:11:
   In file included from arch/powerpc/include/asm/hardirq.h:6:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/powerpc/include/asm/io.h:619:
   arch/powerpc/include/asm/io-defs.h:53:1: warning: performing pointer ari=
thmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic=
]
   DEF_PCI_AC_NORET(outsl, (unsigned long p, const void *b, unsigned long c=
),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~=
~~
   arch/powerpc/include/asm/io.h:616:3: note: expanded from macro 'DEF_PCI_=
AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:130:1: note: expanded from here
   __do_outsl
   ^
   arch/powerpc/include/asm/io.h:561:58: note: expanded from macro '__do_ou=
tsl'
   #define __do_outsl(p, b, n)     writesl((PCI_IO_ADDR)_IO_BASE+(p),(b),(n=
))
                                           ~~~~~~~~~~~~~~~~~~~~~^
>> drivers/auxdisplay/panel.c:1617:3: error: void function 'panel_attach' s=
hould not return a value [-Wreturn-type]
                   return -ENODEV;
                   ^      ~~~~~~~
   13 warnings and 1 error generated.


vim +/panel_attach +1617 drivers/auxdisplay/panel.c

7005b58458e4beec drivers/staging/panel/panel.c Willy Tarreau      2008-11-1=
3  1520 =20
7005b58458e4beec drivers/staging/panel/panel.c Willy Tarreau      2008-11-1=
3  1521  static void panel_attach(struct parport *port)
7005b58458e4beec drivers/staging/panel/panel.c Willy Tarreau      2008-11-1=
3  1522  {
e05c6842e04754d3 drivers/auxdisplay/panel.c    Andy Shevchenko    2021-06-1=
6  1523  	int selected_keypad_type =3D NOT_SET;
9be83c0a44de0c59 drivers/staging/panel/panel.c Sudip Mukherjee    2015-05-2=
0  1524  	struct pardev_cb panel_cb;
9be83c0a44de0c59 drivers/staging/panel/panel.c Sudip Mukherjee    2015-05-2=
0  1525 =20
7005b58458e4beec drivers/staging/panel/panel.c Willy Tarreau      2008-11-1=
3  1526  	/* take care of an eventual profile */
7005b58458e4beec drivers/staging/panel/panel.c Willy Tarreau      2008-11-1=
3  1527  	switch (profile) {
429ccf058bc20173 drivers/staging/panel/panel.c Henri H=C3=A4kkinen     2010=
-06-12  1528  	case PANEL_PROFILE_CUSTOM:
429ccf058bc20173 drivers/staging/panel/panel.c Henri H=C3=A4kkinen     2010=
-06-12  1529  		/* custom profile */
87b8e0c88195cfc9 drivers/staging/panel/panel.c Mariusz Gorski     2014-11-2=
7  1530  		selected_keypad_type =3D DEFAULT_KEYPAD_TYPE;
87b8e0c88195cfc9 drivers/staging/panel/panel.c Mariusz Gorski     2014-11-2=
7  1531  		selected_lcd_type =3D DEFAULT_LCD_TYPE;
7005b58458e4beec drivers/staging/panel/panel.c Willy Tarreau      2008-11-1=
3  1532  		break;
429ccf058bc20173 drivers/staging/panel/panel.c Henri H=C3=A4kkinen     2010=
-06-12  1533  	case PANEL_PROFILE_OLD:
429ccf058bc20173 drivers/staging/panel/panel.c Henri H=C3=A4kkinen     2010=
-06-12  1534  		/* 8 bits, 2*16, old keypad */
87b8e0c88195cfc9 drivers/staging/panel/panel.c Mariusz Gorski     2014-11-2=
7  1535  		selected_keypad_type =3D KEYPAD_TYPE_OLD;
87b8e0c88195cfc9 drivers/staging/panel/panel.c Mariusz Gorski     2014-11-2=
7  1536  		selected_lcd_type =3D LCD_TYPE_OLD;
87b8e0c88195cfc9 drivers/staging/panel/panel.c Mariusz Gorski     2014-11-2=
7  1537 =20
87b8e0c88195cfc9 drivers/staging/panel/panel.c Mariusz Gorski     2014-11-2=
7  1538  		/* TODO: This two are a little hacky, sort it out later */
2d35bcf66c61d696 drivers/staging/panel/panel.c Mariusz Gorski     2014-11-2=
7  1539  		if (lcd_width =3D=3D NOT_SET)
698b1515f0391438 drivers/staging/panel/panel.c Willy Tarreau      2008-11-2=
2  1540  			lcd_width =3D 16;
2d35bcf66c61d696 drivers/staging/panel/panel.c Mariusz Gorski     2014-11-2=
7  1541  		if (lcd_hwidth =3D=3D NOT_SET)
698b1515f0391438 drivers/staging/panel/panel.c Willy Tarreau      2008-11-2=
2  1542  			lcd_hwidth =3D 16;
7005b58458e4beec drivers/staging/panel/panel.c Willy Tarreau      2008-11-1=
3  1543  		break;
429ccf058bc20173 drivers/staging/panel/panel.c Henri H=C3=A4kkinen     2010=
-06-12  1544  	case PANEL_PROFILE_NEW:
429ccf058bc20173 drivers/staging/panel/panel.c Henri H=C3=A4kkinen     2010=
-06-12  1545  		/* serial, 2*16, new keypad */
87b8e0c88195cfc9 drivers/staging/panel/panel.c Mariusz Gorski     2014-11-2=
7  1546  		selected_keypad_type =3D KEYPAD_TYPE_NEW;
87b8e0c88195cfc9 drivers/staging/panel/panel.c Mariusz Gorski     2014-11-2=
7  1547  		selected_lcd_type =3D LCD_TYPE_KS0074;
7005b58458e4beec drivers/staging/panel/panel.c Willy Tarreau      2008-11-1=
3  1548  		break;
429ccf058bc20173 drivers/staging/panel/panel.c Henri H=C3=A4kkinen     2010=
-06-12  1549  	case PANEL_PROFILE_HANTRONIX:
429ccf058bc20173 drivers/staging/panel/panel.c Henri H=C3=A4kkinen     2010=
-06-12  1550  		/* 8 bits, 2*16 hantronix-like, no keypad */
87b8e0c88195cfc9 drivers/staging/panel/panel.c Mariusz Gorski     2014-11-2=
7  1551  		selected_keypad_type =3D KEYPAD_TYPE_NONE;
87b8e0c88195cfc9 drivers/staging/panel/panel.c Mariusz Gorski     2014-11-2=
7  1552  		selected_lcd_type =3D LCD_TYPE_HANTRONIX;
7005b58458e4beec drivers/staging/panel/panel.c Willy Tarreau      2008-11-1=
3  1553  		break;
429ccf058bc20173 drivers/staging/panel/panel.c Henri H=C3=A4kkinen     2010=
-06-12  1554  	case PANEL_PROFILE_NEXCOM:
429ccf058bc20173 drivers/staging/panel/panel.c Henri H=C3=A4kkinen     2010=
-06-12  1555  		/* generic 8 bits, 2*16, nexcom keypad, eg. Nexcom. */
87b8e0c88195cfc9 drivers/staging/panel/panel.c Mariusz Gorski     2014-11-2=
7  1556  		selected_keypad_type =3D KEYPAD_TYPE_NEXCOM;
87b8e0c88195cfc9 drivers/staging/panel/panel.c Mariusz Gorski     2014-11-2=
7  1557  		selected_lcd_type =3D LCD_TYPE_NEXCOM;
7005b58458e4beec drivers/staging/panel/panel.c Willy Tarreau      2008-11-1=
3  1558  		break;
429ccf058bc20173 drivers/staging/panel/panel.c Henri H=C3=A4kkinen     2010=
-06-12  1559  	case PANEL_PROFILE_LARGE:
429ccf058bc20173 drivers/staging/panel/panel.c Henri H=C3=A4kkinen     2010=
-06-12  1560  		/* 8 bits, 2*40, old keypad */
87b8e0c88195cfc9 drivers/staging/panel/panel.c Mariusz Gorski     2014-11-2=
7  1561  		selected_keypad_type =3D KEYPAD_TYPE_OLD;
87b8e0c88195cfc9 drivers/staging/panel/panel.c Mariusz Gorski     2014-11-2=
7  1562  		selected_lcd_type =3D LCD_TYPE_OLD;
7005b58458e4beec drivers/staging/panel/panel.c Willy Tarreau      2008-11-1=
3  1563  		break;
7005b58458e4beec drivers/staging/panel/panel.c Willy Tarreau      2008-11-1=
3  1564  	}
7005b58458e4beec drivers/staging/panel/panel.c Willy Tarreau      2008-11-1=
3  1565 =20
87b8e0c88195cfc9 drivers/staging/panel/panel.c Mariusz Gorski     2014-11-2=
7  1566  	/*
87b8e0c88195cfc9 drivers/staging/panel/panel.c Mariusz Gorski     2014-11-2=
7  1567  	 * Overwrite selection with module param values (both keypad and =
lcd),
87b8e0c88195cfc9 drivers/staging/panel/panel.c Mariusz Gorski     2014-11-2=
7  1568  	 * where the deprecated params have lower prio.
87b8e0c88195cfc9 drivers/staging/panel/panel.c Mariusz Gorski     2014-11-2=
7  1569  	 */
1a4b2e3e6c65655c drivers/staging/panel/panel.c Mariusz Gorski     2014-11-2=
7  1570  	if (keypad_enabled !=3D NOT_SET)
87b8e0c88195cfc9 drivers/staging/panel/panel.c Mariusz Gorski     2014-11-2=
7  1571  		selected_keypad_type =3D keypad_enabled;
1a4b2e3e6c65655c drivers/staging/panel/panel.c Mariusz Gorski     2014-11-2=
7  1572  	if (keypad_type !=3D NOT_SET)
87b8e0c88195cfc9 drivers/staging/panel/panel.c Mariusz Gorski     2014-11-2=
7  1573  		selected_keypad_type =3D keypad_type;
87b8e0c88195cfc9 drivers/staging/panel/panel.c Mariusz Gorski     2014-11-2=
7  1574 =20
87b8e0c88195cfc9 drivers/staging/panel/panel.c Mariusz Gorski     2014-11-2=
7  1575  	keypad.enabled =3D (selected_keypad_type > 0);
87b8e0c88195cfc9 drivers/staging/panel/panel.c Mariusz Gorski     2014-11-2=
7  1576 =20
1a4b2e3e6c65655c drivers/staging/panel/panel.c Mariusz Gorski     2014-11-2=
7  1577  	if (lcd_enabled !=3D NOT_SET)
87b8e0c88195cfc9 drivers/staging/panel/panel.c Mariusz Gorski     2014-11-2=
7  1578  		selected_lcd_type =3D lcd_enabled;
1a4b2e3e6c65655c drivers/staging/panel/panel.c Mariusz Gorski     2014-11-2=
7  1579  	if (lcd_type !=3D NOT_SET)
87b8e0c88195cfc9 drivers/staging/panel/panel.c Mariusz Gorski     2014-11-2=
7  1580  		selected_lcd_type =3D lcd_type;
87b8e0c88195cfc9 drivers/staging/panel/panel.c Mariusz Gorski     2014-11-2=
7  1581 =20
87b8e0c88195cfc9 drivers/staging/panel/panel.c Mariusz Gorski     2014-11-2=
7  1582  	lcd.enabled =3D (selected_lcd_type > 0);
7005b58458e4beec drivers/staging/panel/panel.c Willy Tarreau      2008-11-1=
3  1583 =20
733345ec4ee37568 drivers/staging/panel/panel.c Sudip Mukherjee    2015-02-1=
1  1584  	if (lcd.enabled) {
733345ec4ee37568 drivers/staging/panel/panel.c Sudip Mukherjee    2015-02-1=
1  1585  		/*
733345ec4ee37568 drivers/staging/panel/panel.c Sudip Mukherjee    2015-02-1=
1  1586  		 * Init lcd struct with load-time values to preserve exact
733345ec4ee37568 drivers/staging/panel/panel.c Sudip Mukherjee    2015-02-1=
1  1587  		 * current functionality (at least for now).
733345ec4ee37568 drivers/staging/panel/panel.c Sudip Mukherjee    2015-02-1=
1  1588  		 */
733345ec4ee37568 drivers/staging/panel/panel.c Sudip Mukherjee    2015-02-1=
1  1589  		lcd.charset =3D lcd_charset;
733345ec4ee37568 drivers/staging/panel/panel.c Sudip Mukherjee    2015-02-1=
1  1590  		lcd.proto =3D lcd_proto;
733345ec4ee37568 drivers/staging/panel/panel.c Sudip Mukherjee    2015-02-1=
1  1591  		lcd.pins.e =3D lcd_e_pin;
733345ec4ee37568 drivers/staging/panel/panel.c Sudip Mukherjee    2015-02-1=
1  1592  		lcd.pins.rs =3D lcd_rs_pin;
733345ec4ee37568 drivers/staging/panel/panel.c Sudip Mukherjee    2015-02-1=
1  1593  		lcd.pins.rw =3D lcd_rw_pin;
733345ec4ee37568 drivers/staging/panel/panel.c Sudip Mukherjee    2015-02-1=
1  1594  		lcd.pins.cl =3D lcd_cl_pin;
733345ec4ee37568 drivers/staging/panel/panel.c Sudip Mukherjee    2015-02-1=
1  1595  		lcd.pins.da =3D lcd_da_pin;
733345ec4ee37568 drivers/staging/panel/panel.c Sudip Mukherjee    2015-02-1=
1  1596  		lcd.pins.bl =3D lcd_bl_pin;
733345ec4ee37568 drivers/staging/panel/panel.c Sudip Mukherjee    2015-02-1=
1  1597  	}
733345ec4ee37568 drivers/staging/panel/panel.c Sudip Mukherjee    2015-02-1=
1  1598 =20
87b8e0c88195cfc9 drivers/staging/panel/panel.c Mariusz Gorski     2014-11-2=
7  1599  	switch (selected_keypad_type) {
7005b58458e4beec drivers/staging/panel/panel.c Willy Tarreau      2008-11-1=
3  1600  	case KEYPAD_TYPE_OLD:
7005b58458e4beec drivers/staging/panel/panel.c Willy Tarreau      2008-11-1=
3  1601  		keypad_profile =3D old_keypad_profile;
7005b58458e4beec drivers/staging/panel/panel.c Willy Tarreau      2008-11-1=
3  1602  		break;
7005b58458e4beec drivers/staging/panel/panel.c Willy Tarreau      2008-11-1=
3  1603  	case KEYPAD_TYPE_NEW:
7005b58458e4beec drivers/staging/panel/panel.c Willy Tarreau      2008-11-1=
3  1604  		keypad_profile =3D new_keypad_profile;
7005b58458e4beec drivers/staging/panel/panel.c Willy Tarreau      2008-11-1=
3  1605  		break;
7005b58458e4beec drivers/staging/panel/panel.c Willy Tarreau      2008-11-1=
3  1606  	case KEYPAD_TYPE_NEXCOM:
7005b58458e4beec drivers/staging/panel/panel.c Willy Tarreau      2008-11-1=
3  1607  		keypad_profile =3D nexcom_keypad_profile;
7005b58458e4beec drivers/staging/panel/panel.c Willy Tarreau      2008-11-1=
3  1608  		break;
7005b58458e4beec drivers/staging/panel/panel.c Willy Tarreau      2008-11-1=
3  1609  	default:
7005b58458e4beec drivers/staging/panel/panel.c Willy Tarreau      2008-11-1=
3  1610  		keypad_profile =3D NULL;
7005b58458e4beec drivers/staging/panel/panel.c Willy Tarreau      2008-11-1=
3  1611  		break;
7005b58458e4beec drivers/staging/panel/panel.c Willy Tarreau      2008-11-1=
3  1612  	}
7005b58458e4beec drivers/staging/panel/panel.c Willy Tarreau      2008-11-1=
3  1613 =20
a8b2580b736746a4 drivers/staging/panel/panel.c Mariusz Gorski     2014-11-2=
7  1614  	if (!lcd.enabled && !keypad.enabled) {
f43de77c9dddba86 drivers/staging/panel/panel.c Sudip Mukherjee    2015-02-1=
0  1615  		/* no device enabled, let's exit */
30f468b2ea7a75aa drivers/misc/panel.c          Geert Uytterhoeven 2017-02-0=
6  1616  		pr_err("panel driver disabled.\n");
7005b58458e4beec drivers/staging/panel/panel.c Willy Tarreau      2008-11-1=
3 @1617  		return -ENODEV;
7005b58458e4beec drivers/staging/panel/panel.c Willy Tarreau      2008-11-1=
3  1618  	}
7005b58458e4beec drivers/staging/panel/panel.c Willy Tarreau      2008-11-1=
3  1619 =20
e05c6842e04754d3 drivers/auxdisplay/panel.c    Andy Shevchenko    2021-06-1=
6  1620  	if (port->number !=3D parport)
e05c6842e04754d3 drivers/auxdisplay/panel.c    Andy Shevchenko    2021-06-1=
6  1621  		return;
e05c6842e04754d3 drivers/auxdisplay/panel.c    Andy Shevchenko    2021-06-1=
6  1622 =20
e05c6842e04754d3 drivers/auxdisplay/panel.c    Andy Shevchenko    2021-06-1=
6  1623  	if (pprt) {
e05c6842e04754d3 drivers/auxdisplay/panel.c    Andy Shevchenko    2021-06-1=
6  1624  		pr_err("%s: port->number=3D%d parport=3D%d, already registered!\=
n",
e05c6842e04754d3 drivers/auxdisplay/panel.c    Andy Shevchenko    2021-06-1=
6  1625  		       __func__, port->number, parport);
e05c6842e04754d3 drivers/auxdisplay/panel.c    Andy Shevchenko    2021-06-1=
6  1626  		return;
f43de77c9dddba86 drivers/staging/panel/panel.c Sudip Mukherjee    2015-02-1=
0  1627  	}
f43de77c9dddba86 drivers/staging/panel/panel.c Sudip Mukherjee    2015-02-1=
0  1628 =20
e05c6842e04754d3 drivers/auxdisplay/panel.c    Andy Shevchenko    2021-06-1=
6  1629  	memset(&panel_cb, 0, sizeof(panel_cb));
e05c6842e04754d3 drivers/auxdisplay/panel.c    Andy Shevchenko    2021-06-1=
6  1630  	panel_cb.private =3D &pprt;
e05c6842e04754d3 drivers/auxdisplay/panel.c    Andy Shevchenko    2021-06-1=
6  1631  	/* panel_cb.flags =3D 0 should be PARPORT_DEV_EXCL? */
e05c6842e04754d3 drivers/auxdisplay/panel.c    Andy Shevchenko    2021-06-1=
6  1632 =20
e05c6842e04754d3 drivers/auxdisplay/panel.c    Andy Shevchenko    2021-06-1=
6  1633  	pprt =3D parport_register_dev_model(port, "panel", &panel_cb, 0);
e05c6842e04754d3 drivers/auxdisplay/panel.c    Andy Shevchenko    2021-06-1=
6  1634  	if (!pprt) {
e05c6842e04754d3 drivers/auxdisplay/panel.c    Andy Shevchenko    2021-06-1=
6  1635  		pr_err("%s: port->number=3D%d parport=3D%d, parport_register_dev=
ice() failed\n",
e05c6842e04754d3 drivers/auxdisplay/panel.c    Andy Shevchenko    2021-06-1=
6  1636  		       __func__, port->number, parport);
e05c6842e04754d3 drivers/auxdisplay/panel.c    Andy Shevchenko    2021-06-1=
6  1637  		return;
e05c6842e04754d3 drivers/auxdisplay/panel.c    Andy Shevchenko    2021-06-1=
6  1638  	}
e05c6842e04754d3 drivers/auxdisplay/panel.c    Andy Shevchenko    2021-06-1=
6  1639 =20
e05c6842e04754d3 drivers/auxdisplay/panel.c    Andy Shevchenko    2021-06-1=
6  1640  	if (parport_claim(pprt)) {
e05c6842e04754d3 drivers/auxdisplay/panel.c    Andy Shevchenko    2021-06-1=
6  1641  		pr_err("could not claim access to parport%d. Aborting.\n",
e05c6842e04754d3 drivers/auxdisplay/panel.c    Andy Shevchenko    2021-06-1=
6  1642  		       parport);
e05c6842e04754d3 drivers/auxdisplay/panel.c    Andy Shevchenko    2021-06-1=
6  1643  		goto err_unreg_device;
7005b58458e4beec drivers/staging/panel/panel.c Willy Tarreau      2008-11-1=
3  1644  	}
7005b58458e4beec drivers/staging/panel/panel.c Willy Tarreau      2008-11-1=
3  1645 =20
e05c6842e04754d3 drivers/auxdisplay/panel.c    Andy Shevchenko    2021-06-1=
6  1646  	/* must init LCD first, just in case an IRQ from the keypad is
e05c6842e04754d3 drivers/auxdisplay/panel.c    Andy Shevchenko    2021-06-1=
6  1647  	 * generated at keypad init
e05c6842e04754d3 drivers/auxdisplay/panel.c    Andy Shevchenko    2021-06-1=
6  1648  	 */
e05c6842e04754d3 drivers/auxdisplay/panel.c    Andy Shevchenko    2021-06-1=
6  1649  	if (lcd.enabled) {
e05c6842e04754d3 drivers/auxdisplay/panel.c    Andy Shevchenko    2021-06-1=
6  1650  		lcd_init();
e05c6842e04754d3 drivers/auxdisplay/panel.c    Andy Shevchenko    2021-06-1=
6  1651  		if (!lcd.charlcd || charlcd_register(lcd.charlcd))
e05c6842e04754d3 drivers/auxdisplay/panel.c    Andy Shevchenko    2021-06-1=
6  1652  			goto err_unreg_device;
e05c6842e04754d3 drivers/auxdisplay/panel.c    Andy Shevchenko    2021-06-1=
6  1653  	}
e05c6842e04754d3 drivers/auxdisplay/panel.c    Andy Shevchenko    2021-06-1=
6  1654 =20
e05c6842e04754d3 drivers/auxdisplay/panel.c    Andy Shevchenko    2021-06-1=
6  1655  	if (keypad.enabled) {
e05c6842e04754d3 drivers/auxdisplay/panel.c    Andy Shevchenko    2021-06-1=
6  1656  		keypad_init();
e05c6842e04754d3 drivers/auxdisplay/panel.c    Andy Shevchenko    2021-06-1=
6  1657  		if (misc_register(&keypad_dev))
e05c6842e04754d3 drivers/auxdisplay/panel.c    Andy Shevchenko    2021-06-1=
6  1658  			goto err_lcd_unreg;
e05c6842e04754d3 drivers/auxdisplay/panel.c    Andy Shevchenko    2021-06-1=
6  1659  	}
e05c6842e04754d3 drivers/auxdisplay/panel.c    Andy Shevchenko    2021-06-1=
6  1660  	return;
e05c6842e04754d3 drivers/auxdisplay/panel.c    Andy Shevchenko    2021-06-1=
6  1661 =20
e05c6842e04754d3 drivers/auxdisplay/panel.c    Andy Shevchenko    2021-06-1=
6  1662  err_lcd_unreg:
e05c6842e04754d3 drivers/auxdisplay/panel.c    Andy Shevchenko    2021-06-1=
6  1663  	if (scan_timer.function)
e05c6842e04754d3 drivers/auxdisplay/panel.c    Andy Shevchenko    2021-06-1=
6  1664  		del_timer_sync(&scan_timer);
e05c6842e04754d3 drivers/auxdisplay/panel.c    Andy Shevchenko    2021-06-1=
6  1665  	if (lcd.enabled)
e05c6842e04754d3 drivers/auxdisplay/panel.c    Andy Shevchenko    2021-06-1=
6  1666  		charlcd_unregister(lcd.charlcd);
e05c6842e04754d3 drivers/auxdisplay/panel.c    Andy Shevchenko    2021-06-1=
6  1667  err_unreg_device:
e05c6842e04754d3 drivers/auxdisplay/panel.c    Andy Shevchenko    2021-06-1=
6  1668  	kfree(lcd.charlcd);
e05c6842e04754d3 drivers/auxdisplay/panel.c    Andy Shevchenko    2021-06-1=
6  1669  	lcd.charlcd =3D NULL;
e05c6842e04754d3 drivers/auxdisplay/panel.c    Andy Shevchenko    2021-06-1=
6  1670  	parport_unregister_device(pprt);
e05c6842e04754d3 drivers/auxdisplay/panel.c    Andy Shevchenko    2021-06-1=
6  1671  	pprt =3D NULL;
e05c6842e04754d3 drivers/auxdisplay/panel.c    Andy Shevchenko    2021-06-1=
6  1672  }
e05c6842e04754d3 drivers/auxdisplay/panel.c    Andy Shevchenko    2021-06-1=
6  1673 =20

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/202106220428.eP8tHrNb-lkp%40intel.com.

--ew6BAiZeqk4r7MaW
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

H4sICCLf0GAAAy5jb25maWcAnDzbctu4ku/nK1iZqq1zHjKR5Ptu+QECQQkjkmAAUJb9wlJk
OqM9tuwjyTOTv99u8AaQkDO1qUpidTcaQKPvgPzLP34JyPvx9WV93G7Wz88/gu/lrtyvj+Vj
8LR9Lv8nCEWQCh2wkOtfgTje7t7/+vL2+me5f9sEF7+Oz34dfd5vLoNFud+VzwF93T1tv78D
h+3r7h+//IOKNOKzgtJiyaTiIi00W+nbT5vn9e578Ee5PwBdgFx+HQX//L49/veXL/Dvy3a/
f91/eX7+46V427/+b7k5BuV4/fh0M7qeXK4vrr5dXp2XZXl18210NX76dn65GT9dXF6fbR5H
//rUzDrrpr0dWUvhqqAxSWe3P1ogfmxpx2cj+NPgiMIBszTvyAHU0E7OLkaTBh6Hw/kABsPj
OOyGxxadOxcsbg7MiUqKmdDCWqCLKESus1x78TyNecoslEiVljnVQqoOyuXX4k7IRQeZ5jwO
NU9Yock0ZoUS0ppAzyUjsJU0EvAPkCgcCif8SzAzKvMcHMrj+1t35lMpFiwt4MhVklkTp1wX
LF0WRIIkeML17dmkW2uScZhbM2XNHQtK4kZgnz45Cy4UibUFnJMlKxZMpiwuZg/cmtgLDFlE
8libVVlcGvBcKJ2ShN1++ufudVd2qqXu1ZJnFBj9EtSgO6LpvPias5wF20Owez2iRDo8lUKp
ImGJkPcF0ZrQuU1XU+WKxXzaLdDsh0jgTHKwQZgXZBE3oodTDA7v3w4/DsfypRP9jKVMcmoO
Wc3FXceujylitmSxH8/T3xjVKHMvms5tQSIkFAnhqQ9WzDmTuIt7FxsRpZngHRr2m4Yx62tq
JCRlYa2E3LZclRGpGBL5VxmyaT6LlDmocvcYvD71hNYfZCxg2cm5h6agjAuQWaqVB5kIVeRZ
SDRrTkhvX8DJ+Q5Jc7oA62BwDJaup6KYP6AdJEburfYAMIM5RMipR2uqURwk1+PksOCzeSGZ
MluUylXSWjaD5bbGlkU9pWQAKn7jutkpfPRtE6k6abaLqQd79oKYPM0kX7ZmKKLIPkB3pmZc
JhlLMg37Nt6vnamBL0Wcp5rIe6911lSe9TTjqYDhzWZpln/R68O/gyMILFjDug7H9fEQrDeb
1/fdcbv73klgySWMzvKCUMOj0t92ZqMHLtqzCg+TIiWaL529+qhAOf07VtyrAn9ja627hpm4
EjGpvYQRjaR5oHzqnt4XgLOXCx8LtgK99sldVcT28B4IYpAyPGr786AGoDxkPriWhLJ2ebUk
3J24YWfK04k1IV9UP9y+dLtrYKBBwme0fDEHb+b4ulggfzCYOY/07fiq00Ge6gXEuoj1ac4q
qavN7+Xj+3O5D57K9fF9Xx4MuN6JB9vLHID/eHJtZQ0zKfLMWlpGZqyyASY7KIQzOut9LBbw
X59ToeicWTlQRLgsvBgaqWIKUeCOh3ruaIu2B3gEWs+U8VANppdhQgbACEz7wd5ODQ/ZklM2
AIO6g13pAdzxjTUs4Yp6+EIwsmKXQMuvUUQTe7OwRbrIBBwLumzI3ZjPRFAQkBhoYZhYnO8V
SDFk4LsoBKPwNKZYTjqkZDGxIvQ0XqAoTHIkLR7mM0mAjxI5BGYrcZJhL8ECwBQAEwcSP9iH
AYDVQw8vep/PHUUIiwelQ69XmwqBrhp/9mdhtBAZBED+wDCrwKAK/yUkpT4B96kV/NALg+AL
QsyMqQDPgqdYMMxq08YntjN/SOiZG+iFzCAfgsxSps4JUh2D36Qs06aiQt/V4SuHas+cQAzl
kFhKnwrNmE7ABfpidKUrNcIzNqqSNctHCMVXdXphQY3zcoJ/7j8cFkcgHunPn6cE8rwo968k
h7LSci74EfyAPSfLhHeo4rOUxJGl3mb9NsCkewbQiWYOPs67TMKFF85FkctebO8GhUsOu6tF
rbw0MOGUSMm9x7jAYfeJJfUGUjhpbAs10kR776cQqCcm64p8LtZUIhgvutUUuOQpoQtrch+Z
uk+pOV17tgVNMu9uIan/6pkf2LEwtB2aMUK04qKflWd0PDpvspK6P5GV+6fX/ct6tykD9ke5
g7yGQIikmNlA4lvldvXwjqc3T/qbHK3kLKnYNVFU+bQxzqdtmOicFpTFRENFvfDKSsVkeoKX
o7Ox8JORKZyThPBe59uWr0EcRsmYKwhEYO4icVna+DmRIWRiPr1R8zyKoLA3WQToC1T0ENPc
NF1EPPYnv8bDmWDoFHJu46E99oxetsee7V835eHwuoeC4e3tdX90TjijGC8WZ6q4PPdl/g2e
FYZjv9rLrDSyo3VhEaTIks3UAGqFWRjWG5UkOdQxYEBz3wyIdkQH1MZX+7XDtTCLWyiEnLLa
59cyHQrMTvanaIJpyIkVjy7Pp9xSmWptth9IEgL5V4o5swaPQFZWw8dHwNPb8bWfoDGEhlGX
IX9Ah/zGjrtQTGOeiL4LayXJrGwkZZAUNSjjboqIS9BuOs/TxQk6o9Z+MoltCHV7MW73rDQ4
y6rgUHmWuW02A4YRUUxmaojH7gMkb0NEo5TzOwZlvnbUxopkRMb3XUBuU/u0bnyIHCqK61Hf
85xMPUXCNdg/ScCy0TztXNr0q8y59OMCnzJZpT2YMSg+tXMIQ1JvD5spUkxZz3ogWlY+0mNZ
HY4Tqm4nflz4EW4JuJFjJ+TO2teDSMFT2glsNqs6pqaXpm7Pa9fzvD5iZPB5HgVybVpTXqON
VIzlQeUbfPEegsksd7qkLCMZ5LNEEuwCuFIRUZUYY9oOeZDTH0Y8+AjIEldwotxkTU2PI4j2
5X/ey93mR3DYrJ+rtkanHKD54Py/esOjf3TDmD8+l8HjfvtHuQdQOx2C+zNgV+vkDNUAC2Iz
bnb4lRWzjAvbZYK5QD1JvXwHB2cnEK9veLPhJArzh2I8GnmPEVCTi5OoM3eUw25kZTgPtwiw
MkGi5+Ca8viD0gFbC+BpIJug2Je2MkC2YrT3EVzXwAQxe6uQWS5nGK2tyhASR4zgpLLcLmnr
wKaF76uoJAS1IsztK4HK5FnMqG764wkUSXGPAlyiBjQEIOLxGKYP7EPzOGYzEjcOqliSOGe3
o78uHsv147eyfBpVf9xIUi3DeB/XVM4Xxtv33I4JAHVHpvUr9Z1JDT5vwKb269OaDjfGNONf
BCRSEns7jdSS0BhtV2izFdhyoQmkbZAUdfDMyc+y2sv4EoCkjRlVj97a0d1XkNYdyIpFEacc
c9ZBajgcD17GziR6BlP1iN8PPgtCbxdP/dZoD2mDKl5pgfLT+lKn16USUQQRHo54M3L/dEpv
roKAh/yILJvfKw7VTUvYJ0BHm5OYPzgN0CYtXe83v2+P5Qb7bZ8fyzfYEJQH1v4dk6grI8cs
fTCokS1QGx5bWf4GplVAWs58xa7IdD+gVr389pxzKIahIsa2EqVM9Ws6qA5NA1TztJiqO2Lf
r0nmZ85hF5iYAVL3UAvvgJOcTi2/ZoN3jVGvG2LwUZ6ai6yCSSmk72Kru2Yz4+cQdoe5FUZJ
jEa1YXscJlix5tF90xfrsVcJ+rX6IrO/B0xlCiiwqvSwln5BTDh26KAwPl39FmnSH2CwbqLU
wbHar2d0fXInkE6hPsba3YSuFiggdMxhjiooYKnoRWMX/ycklYt1GnBmBXcE1BZzbLR7kBss
gWiskQbnA2sG8VRddJpkKzqf9XkxssB9MOyOEPo159I/nXH5ePHYXEt7RKMYxfT5AxTG3Spn
7jLDCuML6lo0d1s2P/gZn1QYvV04V6MG7b98+gkFanzfiOXX6mr0JB9Q7SYUM8oj+zoGUHkM
9oneA3t8qCke/mwFBQNYqbmcRp3s0SgRacQBibhL+yStEZoZTKti2K0d1psfFatWHVrbaMyr
txFtCefjny4hzQZnZd9CxFg1YJfsjkj7ekLgEwY+UzlILXVajHUNezaBlRjRf9SOw1BVgIJU
dUnXc8YbBqvp5Gs5dVo96DhX4YyK5edv60P5GPy7Culv+9en7bNzx4lEg2Dcrs5gqwYPK4jb
cPiQfb/T85OQ2qankEdiC9gOFKbhqRKcfdzTy76i1slYLIhzIDUyTxHhb9F23t0j6Hq8krR5
C9XrtzcEJ64uajTqhcTYgM7g9DQtWX0fc5LN6uFvzda/cXHJsKV3h5deqrqYThgk5NjJSEwd
70jYBGtwn3p+++nL4dt29+Xl9REO/Vv5qe8wNAQDOAexyJ0tTFGvfaqs0nE3VZ5WT6HAIUG2
gsc2cBdtnwHqmwQivEzuPOqbJFzcTT2IFD0RHGZMsgz3TcLQyMrsvaPvrhmNQbG/ys37cf0N
ClV8YxeY9vHRSginPI0S7WZ68KHfO6/JFJXc+3ChxvduIoFJHelb6zq1ILPapHx53f8IkvVu
/b188Saw/tKty+7rui0hKSTLvl5SW7tVJFb/ucF4QKYEgh98qCX8g468XwsOKPqJIlG6mOX9
2nTBWGauMlwVqjdsv4CwR1WTN1RzobM4nw1G/wReL/kkun0i03v1518ByEu41z19nPd4YohA
mTbBBBIF7HC5o6do/u5tp4le9ER/wqRykqHpOXlEwmeyJ0kT2NCuCt3vNC+UpRaNHMyxJ2Dv
OOb2fHRz2RaNdsN2YT9QgHQvpYTOHcHQhHhW/pAJYennwzR3QsTDWQQB3TfORB7hPBhsYJhN
+Oy3KTuqpm1dRdkMTC1iZNkkfz5ZM4kbxjmcOhG0/FSPpssqNKuyOeKE7NMuoWOfMoezcSVh
+cd2Uwah6c5Z/iOjlEhHjhlNYNIBg4x+3qz3j8G3/fbxu3nh0hXc203NOBB9/5RXGdCcxZnd
oHbAdTz61K0hZEudZJH3lk5Dekni4UMzwzDiEEaIrArlcLCJaLt/+XO9L4Pn1/WjaX82fvLO
pBz2EqsuT8PQWV5LXdVw1S78veSWsgnm3kZLf12tNpjQju9ArNjRysh0zCVUfXIAZUvptiYq
OCpdPaQ46XMMETFXxjVp1Yp76RuHKVxyLXqdOtM7z628Awpgx91XnwtuP+KqYSrmiWcsphED
2N14AMJsYTiP/T6141eQJdSp7aYgey/UHE46xBdekSNTQEUspax97uEmx0P1bxtuj8bsLHsg
El+Ja4bOVsgitnzhVI8Lkk17gJW18USsNNP2O7c5Vzzm8KGIM987t6942cGm3HoDpCAvRN+V
mEOyeGEnMDFH58s159w91BpgXZhbTcNm25bLS5WXrQ67I4APRvlwVZXPWe+PW5Ro8LbeHxy/
hbREXmEnwNBb4ClNLs9Wqxr1w0bVvVzfKBF9BEWm5zejayd823hgu1AQLv3VB1CaVEJCUg4x
Q5OZO02N1HLlwlEhMziWZmXO3KCq5mLJIP23KQP5GbHm8GOQvOKjxOrBhN6vd4dn872RIF7/
GAhaYD3dX7DmmC2AuST4kLzNsKH8/iJF8iV6Xh9+D6BkfKuvhJyuszmMiJ+Q1W8sZLTndBCO
N0ceMDAyd4jCvMnqHzkgU1G3S/vzF1AMTe8x0gLeX4rVhPHfJZwxkTDtvnS2SND5TEm6KMwT
y2LsLraHnXyIPR9ulI89sMlAabWvx9XSg3eK8YtCQxknoerbK8IhJJMhNNc8HqgsSU7MDCrj
siBTBQHdMGieBJ/WrKpaWr+9bXffGyCWUhXVeoPPKgbqJ9APrlCqWECeePiFug5pcEJOiUyr
i4vRqL/RDKqS3ma7FO4n66zeFJfPT583r7vjersrHwPgWTvVU9aEN1tQ7SnfF1uM8tB5Njlb
TC4uey4mgxy3UAnvgZWeXMQ9WAxb6vmBeQVylgJ/e3uvUtDt4d+fxe4zxb2eykfNVgSdnXXz
TOm8+iJVkVg3eR1UQ03Uvbb+qdzMWlJIIt1JEVJd+vR2Az4Ocaf0ltyZoU3Ikus/v4CzXT8/
l89mluCpUldY0v4VoMOTMzOTBENprMlJNTRkAhRx8jFJHTM+JsKuwE9IEiKXzPtss5sqpph3
nE1WvbhVMfgQO5U0qQU32OQqJYNoZzCYovDIl+i0JMvocjwq0oj6VrTyQRVeb1Mde1AhWfKU
cg9Gr1Y3aRglPoaR8oJVnq58rDCHuxidezeM+dtPjkn7unHWljn1cjYp6IeHq5OzSQE7nPgk
yZRIPXDz1mMIRneIT709KArVEaTWHgyRRJHUu3gTo4p4NnQyyfaw8Rg2/gOJr5dZyNVCpPiV
uhPiwGLBtnFGKbib7+BgrPdFfa5A5MbiBgopBBT4UKk43Rc/QYGa9MOz5pps6n6PsesqelbY
4IzrM/uIszCUwX9V/0+gwk+Cl6q9cCLGVAN8E/6c1UCgQvYDkQGai6rzBV7Gud+atWnUXYbH
1n8Dc4IEL62Wpk/Yf810Yhz2HP3vObFshIgJWS+cjLdfx409FypyzM5wX5m682TWm0973gEA
xV1sbrzVXMSh01JrCKZsWn+VdzLq47Cl6lTeDWIW58zM5ohgfp8x6S//Qm1pc/3WpP2E3X7d
72fZeBLHwGHqYwxY7FFr5+YZgFXjzYtaiOlvDqBu/Tswp+gXeO0JBdYSqxWW9FZf3SL4EnZA
Yu3f9DepmDPJUqsNWl1b4qPP+l7fXE27r0MbwEsPAMT2AXTQIuKR8KzGolC5+ULqYJKCrK6v
r24uh5ONJ9fnQ/JUmGXUpVu6TFigrBeTjcew4a2XHfY2IGFXYLKgjuosXo4m9iuN8GJysSrC
zH6GYgHdZpCNwM6PJaYwT5J7PF3fl/qoujmbqPPR2B5hUh3IZ33mCpEnFiqX+CxZ4vfOnJ6Z
aZ5QARlALw/qeGehurkeTciJ741wFU9uRqMz32INauJUDo0ANeAuLnwPFBuK6Xx8dTVyHy9U
GLOkm9HK97oxoZdnFxNHnGp8eT3x0KLhgTwg0GRn9Xe6rBYSJv3tpxV+dWBVqDCyHzfSSa31
VchkULcnw3BZweGMJpZ2dsCLTpFrIL4npPcDcEJWl9dXF/bWaszNGV1d+o6+Qa9W55e2IGsE
lNjF9c08Y8onypqIsfGoztyayOtutPoeevnX+hDw3eG4f38x31I5/L7eQ3VyxL4L0gXPGKof
waq2b/ijbX3/j9E+g3RbqA6msr1OqfFdDMGqPvNl/4zOheO4luYNu7/Utf1Eq4bmzUnYfk1f
UcWbIm2gIIjEa027w+gbUP1KBsZYMD67OQ/+GW335R38/deQZcQlu+N1odf8XoKPRlpRklBI
PQW+ojWdcTXIP/nu7f14cjc8dX5ziPlYRBEGpbiKYJ3rMLjqBnLhbz9UJAnRkq+QpDE27O89
45fHt/g1qKe146TrQQLSrJAt+2tp4EWmSL46iVUUgnJarG7Ho8n5xzT3t1eX1y7Jb+Iep35x
oWzpBWJ3+cWW7aBz0BPZgt1PBZH+VyLWGj/AwwIV/mqAD0jMgznfBV6NFjmdVxLohGgBIcSp
q+tzK1C7yKvrq6sPcDenmCLOjaUefBVSfXgJ5zk24y0DdyhMME1Wvp07dLkoMr6i/8fYlXS5
jSPpv+LjzKGmuS+HOVAkJdFJSDBBpZi+8GWX/ab82ks92z1T9e8HAXDBEoB8cDozviDWABAI
BALdgJfkcIvCIIxVgbfgqETbX+WDTRs4d3X1pYjD4kGh6pei5vpwmASufCXHKQzxewM66zgy
6r4ya/Mmv8bcVGWQYkuyxvRyqfhC46oH3z5Sdu7Qi+sqX9uOHd5B4LZfTT4MVKb1cBpjmmoI
r/SgAMfb225kN1wcT9dr003OOvIlpMWmRY3phRP5zySbHJXhyguXtQkvAQfH9snxIYSWcBWO
Zewlz8IHpTvdLu9b11Brn8ZjFEb5Q4Fp+wpz9NBZnKJyr0DLvRdB8Ki0ktMzOXAlLAyLh+mQ
mqWBbjLXYMLCELsSqjG1/RG8wzqaONNhpyiLi4fNR8QfD/LryJTd+Fac1Q5BubSTavnSMnjK
w8hVStpeCHiHPupAro0ex3QKMmd1u9MV90FQucTvA2xYH2Qofr93F7xKIxwGxTHfo43MOQbk
/P9IqJqxyKdpESuMgfCZfXLWeuI67FA12OZOl7kwzovYlYz4vRujENupaYwsKYToolgt5kSH
GHA4CoJpPWNwciQ+MPWBDo1hILPufqRNVF3fOjxqdTYGXfSYbwyj+NHixUZCHU3AbpfEoZzw
bfqxqtvYrb6wqchSV/NRlqVB7hSk9+2YRVH8sILvhX/yQ7bheiaLFvNIpLp3LJ0c6897CPei
L4GLBtuh9oyBdIkV50EQjc5TId23RlDIQW0nQTuiVgwBRc2yn7RyPYbYYrBAkc0e43rXAmKL
wgJVRg2OaWJR0nXDeX79/kF4W3X/uL6BDZpmw9LsaoiBz+AQf85dESTKOYkk8p+65U+S+Zbu
6dDodh+g992BMmzsSHio7maui+Vloozv17TmlPiyk/elyjGih52QXw61I0nqLeS1h/vclFEz
QTGwRZJGa8CJkU6/GZPoqSLtYlLd3YkW2nxhaYrp/RtDn6imA6zrNxsAtnWX+8s/Xr+//s73
0rbNcxyVq7nPanyqKx8RvXAZuzDpo6xNws/jyoJZ6u4raHyyA+Bi3uBup7dLN5XFTMcXNbyZ
MJw5iUuIvSjN9vz6hs8ywsPPvHWxuCh8//T6WTkrUvq16qUFv9Y9kxeoMC5mS+vzt6+/CeCH
TFdYtmx7kEyhIgcu130QBrqgaZDShgYL7GKRcsndrbtbNDba1HjCIBPVaGFPp+agXxFcgPUs
1SyNoGOlMRnrnrI8DDE75cLBKsIH4MnKeqHPN+HDlvjx3fXcQF3NLI6Yceo86tEITexXqs23
G3GI7jA1hgnJh6vz7s84qAqvDkJLwKYQSXSFHgvQxnkZlqYNzaY9z0z1O9DI+2eRgZ/Z5nFh
FnyHnP2lX3lWiPYX6yQEgb1sgWYEaR5O/ZVeFYcup/bS+ZiexyL19fzV8NZXyI97h3VHIy6X
BvxKJfiOfOzeeavpK0BdXyZqD0ZBdvYeq8OsY/k04f24wZ4PNcOhhRoHCHLAduTQDk3Vt5as
LsrH27E6gbDac6WOuydrnG8+vNBKPfTV2UWWjiKJZPjkIK/HmbOaynSobs0AEYXDMI3UMCCr
TPPtZwWcvq5etDSupJmcRmJcC5q9TbFx2LUearu2XIfjM4WspTnBiLAPdGkls8QC7C7Hvp38
ReZ/tRNcX226U1dzNWFA5g+TxS3BcO0AkUBBxhSijYHEuFPc2m7P7eH2oPWv9x5pCS7ang7r
+kPL1SOusZo7AhOdcVnTeVztAksF2usrIGKX4P28sajNt/lKagqcWbZ6HPo1eI8OyRggl6ZS
I5Ne5nPTa8YgCM4iIyOdn4X3dH2u8HjIp2vfHDu+unHVCWW43PreCZ6f6/nWHPCbu0uR4UQK
d23hqa5Rub7YtCVI++Z2I6jtoIpK71tTKJWnWrsS3w3j3tfYARIl3RqKXTmAAyq40a3RajW6
CCImbkChCBsHI/C1AGWoXeFMJ0wrrsIwzQNDkvhaiJ+OASrC8TdXbG8iSwUBbiCw+BeN/FSz
+aC6Ti6uVkAXDBLchYLWBBYmFcfdNGQ6hxFl24twsJpEbTO+95KhDTD/qPZZuykrwhDsFeHd
eRJRhWWAU80IVfN/FEuTrxv9i7yjY1DAA0s5vLa3p4rpRJSY70JvfBqF6yLyOpp9bh3VyHG1
FmY7gpBofMjDOxSaLEW1O1adAEVwymc9KSKOl6U30b8///z05+ePf/EaQDmEgzhWGL6kHaTB
gCfZ9+3lpJ2eLMkKDlw4Nwb+01FYwPuxTuJAOZxdAVpXZZqEWKYS+suTKu0uMKXaqQ7tyUyx
aZUvPGmSfqppr3lHeFtTz2W5fgk7fEcebLmNt8lI9fl/vn3/9POPLz+MnulPV7ghbNQDyLQ+
OlKXaKU5Yuh5bPluhhu4XobKxrmb0nMTbc4CINAievybf8KNtOWyxX98+fbj5+e/33z88s+P
Hz58/PDmHwvXb9++/ga3MP7TrBdog7royunEoI1laFMgSCuEeIKw0HzgX8bK6P5qmjoj9UNN
trNFg/x0vVT69+BFz8aDzlrDFLF4YutSJd3ZHb3RtBCPWdye1c8oDFDUSc9RQRVXbz3vVf1z
5N5OL5crS82JxRzLWoefznyj1bSDXlTwvzWT6Qi6GAmEj3dqnGoK4ErjyTVLvH2f5EWgN8JT
S9ahqFD5pjvCPPTFCKZGJ5MxS9UdmqTlWRQas8ZzlkwW48TMzJcV0jkZXqGjMaVIgOaVd6Dd
cUdIwPhI3nrfzUS4wKLOTABeJjNDOmEKOCDSO1M1kmxUMB+YCQ1dh676MMnFdZSERm9yZZTw
GU3fcAigI1yTdSVlzYBic3LEji52NNfrwG6XjCtJ0b0zivRyeXfjSslgFkmazQ7UEc8bWG6X
jp7x+OUqPB/1LMHHTfjNm9W6E3zPC5jc8DpymvpBz2LqaTlZ/T7Ula2ktH9xJecr37Jwjn/w
pYnP668fXv8Umo9phRbCY7pei8aqrozrymRdKK4//5Ar5ZKislroqe1rrUI8LsqxsnyhS5Xe
6beD0eP2lLqsHMKd1BJBgYHHPXjeO/tB3vl3Oh3tLLAOOxcFYJBKgFZLq2Kx6vzbXBhQ9rvB
q55818n7No3v4XYEKQzpaCc4zrVqhtIfGoBrFq6gm4CZxRE0obfLEw3avSGvP0Ce6u2+HuZp
KO6BCM3AkdFiRDIscTvQHHVrAyBDGSeoWRrA8aw6/Ul+UjXVHOe6K43kJmgISolxteTGdPPY
+s3M55fG8LgX4NSJ/7nG3V0clk8Ocx0lKuLUkfOCSr9S87ssdixTCj6fGfSQM/X5neYaIKjd
eKj0N8sgbMEI27v+Reddb6L9jRC3hjFK7jt6EbK46kWWlN7haonrs7sRyWIhHsZQL7Kkcd1q
0K75iK6i4NpuZns0H57SMDAJulsY8F0+FEBceHq6XWirGxnUy1DzM65MrRejwNaItK9D/QOI
q3T8/6Mlq46zHY681dVaIPUkD+a+pwaVFkUSQpBqnS7togebaDUJEBvdYC6mGjjRgztgtVlR
qfk5+0YqgR74CS6vudqXa4HzsbuZeQq62eEahzzHcFyeAYZrLV4H06spLiknqk8LUMdOjk+L
FUJuPxnkoTOORDmRdjXqWrRhM3tnCRDXHyNPu/Jt1pPj5qeAkbnw3c3FreqeCpmrl5nVGqwO
i45lQWQWGL3ALwE+/9nFkYdSrm/o0Bj5cspcNVY7eWzoKyq6z5XRCEKSGBVfnLn0pEC5daWi
KLiqdMs7zKosgcIbhYGYjxAoDBOzgvKTgM9FjiAJGhOEc9HTXTVkM90J3ot0NpytCutw75Kl
aWwvrOL/Hemp0kvynrcSstQBmdD5ZCMV2a4uCw1HMRBh7yNAi+vmse1T+v3bz2+/f/u8aEmq
04eQrU6a+fQ55HqlEHzVFfFMtHvfZtEUWEIJeq6j8QgmRGemRmDmK49qsJS+X3wB1GMx7OTP
n+B61V4nSABsl9ptJ2rf+aEj5R9/+/1fSnPK/cpXEdiRnl/4qiGec7y0I7z8CzFFhCmYjRWB
6CNvfn7j6X18w/cifEvzQQTt4fsckeqP/1Kvg9mZrcVd7YtbA6xxuhZgtp4V7C5EveSj8INt
cY3crX8Bv+FZaIDcN+xF2htwKUzF4jzCpvONYaJRUCo3WVc6V2C5VpCgiRLclXXFDyQsCsxv
YGVoqiINZnqjjV5piZVBpjlyr0hP+WyOqjcrB6lpFLOg0P2cLVQbuiaK5exZv1YWiAqrHs9v
9ClMdeeYDRnJ0VuZasq5OhLYadKqJ3rojhXhhWitW4JmZZ6KANs8rPi1bvvriJWYdDVvCd4O
M3Ma/7dU7tjWaBdL3bar0+cTLnYL6Cv8ypPZaYuNUTihfeHeUikcWez8OMOvRWkc6tujGpAW
zlQz39CVHO6Powy/lrEJC5i/Xbr/ylS/nC43Nmsz2IrprpY7lT5K9MIiV4oUBw7t0HcX1wzn
m2vkl/PhlNSoUCPGW3O4TZVdINB40wkbg4DkuDKyDSSGnUSuqFBwGTtwtZp0NTp1EC6svkr3
4LQDBvd1QR4+fv344/XHmz8/ff395/fPWOiRbX7giw2rMHP1lv15psfabhNJN5wZFBCWOgcK
37WkfY6w6gI4FFWel2XqbdedEX3szk4uwEsiUGEJ8mSBO9HbfI7XkRBGfOdpF8w31ezJxf7i
/2JmZfarTZ75BFJhCz1tXkY+sPB1V5l70SrwNkfya50UVz7BGt5XSOU41S/ViXf+2tlSfyr4
vtLmw2/f2HzJL/LVv1b61tfvCdZwO3pAm/Xi+Iad8yhwSj+g2eO6CbbyQc04E8/KWQqueXtK
kaM3bUymNPclUfhUlo0p8yQRV48lX1QFu5dkMSWutphi9WTDtRpZa4bpUL8C8hgbq5ZEwGzv
rdbOhr+LuhYAzixxrW+xN3lzEWYgVpeFd24UZh9kwZRHmlHphDJ0hVoOO5PMXzTJ5RVxwXPm
M4YzG0LDNPekMHZzB48lqG+ur5hi6nEgc9+gG4EN5wqsfyRvnKxv/MqwmqZvUO18E0M6TSl6
dvCWvW9C/xKscEY+8VFLFK/6Hvn44dPr+PFfiMK3fN52lxEs2nYdXMT5Gakw0MlVO4BTIVoN
HTpOyRjlgb8BhDXev1oJFjyAxc5ShLFfhwGWyCfGUNgQrXyWZylOzxGjCtDLHOPn1UDXCiha
5i9aEeboAAWkeNR8RVj6tpiCAa1gkYbIHptXMC5zdap3CqJt7mg0F7CV/twxTlEDaGyTC6HP
eR4g62/77tb13WHobop3KGw84Fjpb4Mg4vfB2whLgD/lHePr0diurJ90wzuwg5iGOOsNVnCi
dL9bLX0sm/YZ6QGBLXY/Pf890L/6es2X1z///Pjhjdh4I5s78WHO1ytx5OnKz3TDk0TDVqMQ
pR3IhPRDdFlkzs834sMLHJlO1Gqj1e3OVTDApxNbPPa+mF9L9zzXx/uJs9HyyKmyztHcK3pw
wy04fdMBC1oscUP65uMI/2nXKdV+RgK4SnjQA74K4uJ/p5H6e2NwdVdqMPXXU1c/1wbfYls1
ec24woJKDkXGcotK62KyUljc6symJxN21LlAzEgDrCBbWxu5arYZKWq1fpQgiegFEzk8K1Kl
TcTnjuvhZg9e17nfgl7NZmAXyuYafI31YomyW6mPdJ7uaFDMdeqo1duRgrje99STkgdyBRaD
T+JGSA1BtFUwQd6mXJ37XjfgO2M17gTiOzPn+JOnc1aJ8VM5OYWQZj7WZ9XlyzPNbY7Igvrx
rz9fv37QVB2ZZkPTtCjMyUpS9UCmC3Kx56nTnY9R/PBDCm815fib1zsc2U2x0M2AmzqTcH2P
MUPlDufmzELrY5Hm5qgcaVdHRRhYXcmlpDQf+la80YwGluvPsfmFho/MgnG98L3mZy1n8iYP
0qiwqLxmIbk/G3QZw8uqhPQQdvfBomfYXQCnLb6u47qe1b7yKMacgtIxLWJzBuijQng2GhOG
CNNiDWcRSMUznAGPQrOlBLkMAzy9MsRtRJLjHZkKfM8oR7+IEOQqD0fLUgvRicjFdsDtlReu
pYRZYvWquGZe+lZrOfiwUCgSruO4KGyZpx27Mjymk5ynBohlh5k/ZLL7a0HrhT+7hqLmz5++
//z362dTR9NGxenElw54s8gW0Gv9dKPo0EQTXtMV7zeJ/MPf/u/T4i+7OxZsmdzDxW9zbliU
oNFqdxYZ4h/9NrxjZxs7h64x7nR20lx8kcKqlWCfX//3o1n+xWH33A6OIkgGpt0h28hQ7SA1
qqVAmNVd4whjV6qaAU6DULOaylF4ihRjs5XOoXgy6kDsBLj2UjvL64j0pvKkaFRklUO706ED
oSvnog1wU4/OFOboCNGlRtkIwxVJEbUc85mRKLyg2r9oO2yF7nSEpk0lGZWGFlOoeCNZfYBz
IRvM4n04gwZuMie4SsaX1EA9SDlU4Gv7Am+DF2WSKsvqitT3KAg1UVoRaHfUPqkyqD2m0bUO
0xB8rVlZ2AHfE69VZGgce1JdqgXF8j28i/LJYZPdymYF/sRYQvR4dWWAEIx5oAc4NTBs/tRY
olDTA9d6c4WNd22MTQsrC/+8KIPYFoueFnmUY6k6zuP3FEWzqtKxpTnGWYqtqTtDnYRZ1NvF
adpRvC4h6ptkaYalv+pV/vpyllKZXbWWKAusxvIQnRzw7fvKxQUmCVNcYDSe0ldA4IjS3C4f
AHmcokAappPdZgAU6rG0CsgDUKyAaeaQ+m04kUOcYHbElWFRKHN75jhVt1ML3RyVSYjAS1AB
bGoZxjTwivIw8tkqtZuB1VGurl0r/VazMAgipHm2jYPdPE1Zlil2ynO+E/V5HfEn3/xqQeMk
cbnjY7iAyYBarz+5woXF51peCmh4TZRwiQo9cdILjE4gbLQL0KZ2HcKVep0Ht6FrPLHDMV7h
CXNMxBSOkitDWA3GfArRNxoAikM8BtHOkbg/ThynLBoP6malceSOYid5igDnMcT4wVMJLSer
zXsHJscEz8yIMGXjcO3xRMAi66/rOFFfLnDJhT6PWOoLNFd9NRD0weCFseY/qg6eoB6uWEIr
TtnNk0rDNMfHnRxm2BCQazrvkBrLEqL7T+h1qYXhmKdxnjLs2xN+J2NBl3i3S8ZmqiPf19zG
iityNnjq07BgBM2yT6MAdRDbOLi+VqGf5pkrQs/CIKzQaCDrleXcnbMwRhq/O5CqRUvMEdri
od4kw9taD9spqVy5HcII62d4PbbSo05skFiHfL0pOXIkVQnozsEmqLv1q2CJFVQASN2EVpQi
ogpAFCKThgCiyFHnJHpU5yTK0MlFQv5JUIQUR4PIqhxRjqUPSBZkvtIJlrB0fp1hW2uVo3Tl
HIe4d7vOgkkzPGWDziUCiEsHgMmxAFJXHiUiibJYmECRmsboKk/6aWhPMHaxphjrDNVwNpyy
KC4yLN0hTyN1M7GvbvU0oQJFMkyl22F8keP0B59hg4Lk2EAmOaIg9aTARigpkMpxKppbgeaG
jnyCDntSormVaRQjup4AEmyWEABSxMtYSwNXx0b1ab8Nr0e+V0dnEYDKwCcliys0kiqrYmye
vtb1TAt8QhVYyXfqLYphJRSHFSU2DVFivKK+fUKMcGOoXhplmCFd48hRBfoAEWiPriCUCw+t
5oFljkCZiy7A6By/2A3RXRi9DXNHGUWUhG6I0ygKsYJxKAu8KiPnKIIMEbpuoCw1Xm/bMNZn
BddpvAM1SoMsQ2QW1sK8QMe+hMBz4daDddu/lMVFiPYGLAUpbuE3ViOk2nKlCfAZPwpciwRH
UrSp5ByOOmCqLEmC7XjAcJEVaFsRypvKlyolWZ4lIzL46dTydRadfd+lCXsbBkXlWy3ZSJum
zpDy8vUjCRJcO+FYGme5fwd5q5sSf6dG5YgCJO+poW0YIZPt+55XFvmA3olrnVT9UMTO3tca
1nndhhxGhmiJjG/7ULnlgHeocjz+C02vRsS15buOBFuxORCFDiAD8y9aNsLqJCe4G9guGCPL
MW2WEcJVH3zvXYdR0RTovaidieVFhA4DAeXePTGvVeGYHS9VFGCerSoDttBxehxh6tdY58ic
Mp5JjSl+I6FhgEisoCMdJOhoM3Ak8U54wIA3AkdS9KWVleFexHken7BvASpC7Axd5ShDZHAI
IHIBSOUFHVF1JB1GMvj0qYZPhaPnM/Dos0dInuxyQjKw3rzZxQAeviZhAEEsnROF0MOMp7kk
CV51HDt43A4NhbowtaQdTu0FXgZYInXOwlV6Juy/A5NZfw34/yl7ku3GcSR/Rafuqjczr7iT
OtSBIimJZW7mItF50XM7lZV+ZVt+Xnoq5+sHAXDBEqCyD1VORQSxBAJAAIhlhB7rlKbIO7V1
Wi3VNSbX3ZUH0rikOh3TJsFK5Am3cFEDie41mViQTyCrBFy4oGFOxw/EsufLXB6/2EgggIAz
9H+LbbvapqjqsIGMk8O2Tm5H1OIodizvhNqPIbrMfJcMUVr0JUKMvLEpfBywvA/yfOG7Gxv7
bDRowT6ciG7LOl3qZFMlYc2VPoK7IkixSkdH6cVKwUJvoU6KJvPC5sZl7Gla3xzLMlZbFJfj
y7/YoCF8k7425m6uFgjG63P9Q2LMj/MTxA54exYSclBkGFXpiqwbtmP0CM30Er1MNydJwaqi
5WzeLvdfHy7PSCVD08GZ2TdNTKwHP+cFfgy2tCpDwAS3aDAeA6ZBR3Tqj7bRmsy92r616akp
I6wVLTq1JjSEwLGvUjhXKVDezctGHfqutciK651lZlL3z++fL3/qOTF4MPGDPNofaT6l5d5+
3j+RgcDEZypASzN3dHI6WeIGdX9aIrjZk8kJl14dfd3QS+UY6pozmhggUvC3CVyUx/Cu7ASX
7wnJ4n7TQM2npIANFFN1JvKyosn48gTKMxQ0NfAfF4nj/cfD96+XP1fV2/nj8fl8+fxY7S6E
ey8Xyd5q/Lyqk6Fs2K2U98WpQCUj78jlctvyDJrnJXsTXYoTTi0r+7zbogUMzyrY9yKNu1QH
XWHtuYJnaelVx5ZZFCr0eVJsLRM0MkQcmA0N1oshMcRCC7+kaQ0WREiVWQ+5EwUdcTgWLrNl
ChvYL9YcNvna8gy+5rmIdm3WOZyJr1RF6JowXy9WxKzcHYRzY+g9rAnblnQeUjwtNmAI7Loo
A0ekZhY7D0HQcGUquCp6xzACVJJoxGUEQ3Sjuk2RwurCbT0TK4woN32KStIYCX+Jz+TURTrV
Q1Q7pGxmhY8ifIvnxSyBYe/ZOgxT8NTOEZXRkuWWwPwuqwCMKV1J26F9zsse8lrgXzUtuIhg
3aGhclU4tcqBhvE10HB9u36zWWIso8KENE/iNGyTm0X5m7KiqG0aXF8QzBAJY+CkBKy/hBKH
B5+oxbky7ZuLVHUbm+aVCQ17K8aO0XnjypyNXJAcdFSZ/fwwTLOO51DR51kxapMSH0ZnLk3x
BO0bdqDK566KI803eQXtNRTRgQDdnq4fVXoTyl+QLf8mkek5USpOoWVq8V2eLY5JsyFH+aZJ
N0J6mWYj/Dg1cVruS2rdOdHOA8MR4CNHCOI6Peit+giDQ7RsQCj6BY1T9+3z5QGCoY15GRVt
M9/GSsZTgI0Gpzg7CQHLSLmr8OTBtIjGJqeVmUUjzOIdbsEFbHYkEZsQtlbgG0oEZp5kjsYr
VkOj8UJQVLIuCWvKhNxnUYzH0wIawlF3baDRgyhadVyhJUPMtV5qCoWJuUAALrvFzjA5RziH
0QUbpaPYOH5m4g7RE17jMD3hgyt4TXCcGY+bqbChTyON1zIIASiNqBPUhHUtkVuDFisEReXg
jONCE5hOqxnTKT6dDLOV4k3eXQhg4Cd3s7HXtgxnZ7lMTLUGmB3Z2SCUIbVEkqQgMm3B4ZID
qr0dEZjQVJbkRM8jx9TfMpOIikHOwk24MDv2qeeQ1RRGRlM6oXDdnsW5mu0wW4gpD2IgXJ4R
KGm8zv0OSktvG8/SzcUpbwQHC4IqDwxlRWFgvYhTvGfgFrdsGvam46LGkAOaRfb7oUJlkWHQ
wMOgaxuBBo4KDdaGry4VBGzpO8lsqxe6MFhe88DWsz25/SwigFz5eJRDq0++0EQ/mHsoXUEA
J9ZStH0iTQ/QaEXIaFo/S9oIEQ34Jqic3IUWkge9dr1n9s7i2qA4A1LgTSC+91AgO5Joym6S
CN2Bm9TxvV6ff4DSDGdWXdG5Kz4OTkB9kidKcnMXEDnHXg4pOgJvjHFyz2rypneNxe16dIlk
F2Ft/vjwdjk/nR8+3i4vjw/vK4qnd6Rv3+6FK5FZSwISTTp2hhvDoI+XZj9fjaLgQBqROsIs
NimB5MQNsBbCBds2WfraJkIW16yy1w72dseQgR8ESoFZ3omSJ/umgom/abi9CHEN3laZQXjn
flr64I0qywiDo74RE5r5FIif0djvvq1fQAcKFzUr5IpW5hCFB55ugnL+sSrUQjpNoNiWOeGW
NC1CRDYXjdl8e8wcw1anAU/gGc7iPDlmpuXb6KqQ5bZr42oUbVpku8FayyXqCiz3OSujfRHu
QjRtCChug0e3rJ4zsGYu8hRS2PVJWbRwxz/Kgdw1Dd36A0hT2dypp7K/UCLsa0toBzVjGZC2
6NU1Qxf6PxBIeRlGjGssf8rcroXV8+gE4rs23V3KfQ5XwpoQyjyJ7Ekjfm7pdqiBZLhRFqcY
C22fVUpixhlJUbgtHyOCjQSfTEMhaDhlyqYhcoV0+IssTzmGMaB6DpufKtQjMHhkwpaG5qui
iilvT/A77yS/dPieb5wGqznu9nIEMc8kDLFN+yQ+HcqsBUt6rs0zCSRJ7Vjy4KbL0XxAMzG8
otNH9ImcvxMbqYhqvCPLrwaVB2IWnRkJ9wgButpzNLFrrwOs6LAgfyqMC/Llgojhrxg4zCQY
WEPpOR2/tZuIhjm02Bv+bgAtYphHi4WMqjBSgOrnipKIodYlHL6BCESmJl+KQGSZ+H2ARITZ
OXECHRau7fLeghIu4J2UZ5wclGvGsNPnlZalTUbO68uSCWazlm+GWNPITuzZ6IQAJc838aZR
3PLoUW9fTcFEdXIxXgyqI/YNUwl0KM/3MBS1yA10qPGQi/Rvwe1XIAo8Z60tIfC8a3I1HH5/
hkrjFC5RoU4MEo3okSx3Gg3qIhPxR3sJFxjoqsVwlofihssfWVMUKfzgSt8ITbC2dAVUJhnP
qzysXMe8woAqCFzdoBMcqtzzJLf+mndW4FCtZ5uaCQc4NBiHSOIG+HLJrj6ufs47A80YNZ8D
h9ukIa4UcTRRuHauzCXu8gMrYRv0qFrLk3RfEsHemsMdyNrrabZ2ikTTgUg0a7Rs+mRYV/le
i4QsNfigUnTXbE4HnZfITDvc0yw2U7m24VCtE6CGujzJcDuEfp4frGuLWWPlVXilEqBpTBNj
VuPmge/52AIh+9tzmGxHjlgGurMyvX1TljTdI/YxJTjUyXbDHwhkguqIqrbDQeZ0yPMIxd8F
puGFOEMJMrCca5s7pfIx496ZBvwbTLI44PWMlypXKgIyy766XbELlSvr0HRHg/CEu6nBcaZt
aXFC+AcFh6oNDOegash02aJlnDYiGXfsQDLqYkcZsBG/QqONYCaQCOdpaSnJwk26EcI615Hu
gibC7mvBVIFiIHhQWaNP3ZRmwHNnUB5MDneZkGF1xG7i+kATzTdJltB8J3M06PF4+fHjVYyc
NbQqzOnTodowiZActrJyd2oPVzsBVhctOV/OpCoz6jCGIHhXa23i+mp9Y/hUHfdoSCW+JXyM
YpE944eHNE7KE8u3JrKrpJEYMiHt7mEzDvkQ8O3r+eJkjy+ff68ur3DE517UWckHJ+O0uRkm
XkBwcBjjhIyxeFnECML4oIajkmjYtUCeFrDphMUOzUtOa9oeizJOeD5h/eHka074xvVWlrKJ
bcAtsZ3CaCCF0dLixz8fP+6fVu1BZSnwPxdStFJI2BPOhBWZMM3vpje3CJDxXRHCwzFlCMYK
SpRAorYmoXnaTlkJqXUkS0lC1WUJxv2hV0i7+akpGpMPLw2rb49PH+e389fV/TspDZ4m4N8f
q39uKWL1zH/8T85aY+B1DrFrympML0fLBsNeuGuiH2nEkuzWlmRYO8MRkaXwPMlLPu8d90Ue
ZlnJyXOTN6cmDYvylMetcAFCCp+nMTNzwRU3ICQ1WuQ/jI4bF7k4ab4GMK7VFryU2YDk0W9g
gLMC+RzynvPWttB0WLLISis3nK4vS42GCnVEtPLt49v5CJHqfkmTJFmZ9tr5dRUqjYBytmmd
MOapwFNaVB22xPGW4Ax0//Lw+PR0//YDsflhy33bhtF+lJ7w8+vjhSyVDxeIa/nfq9e3y8P5
/f1ChBUSLz4//i0Uwdac9hB2MR/1cQDHoe+IetWEWAeajDwDRRJ6juli960cAX8KZOC8qWyH
V2YZOGps2wjUBTVqXBuNuzGjM9sK5Vra7GBbRphGlr2RcV0cmrZjqXUR1cNH/X5ntL1WPztU
lt/kFabWMIKmLO5Om3ZLDsY9LxE/N5IseVjcTITy2DZh6LmDJ/OY3YUnnzdCbRFk2/JNMTAr
j8CU4RnvBL3MYgB7hiMP8gAG9QvdOv0ADdrH8BtIhCBXRICuhwA9T677pjFY+BRRGrPAI23y
fLXrhK2+qbk15Sn0407v83zeGESED3yQJmrlmmKEbw6B3jBMeN/gPV4H8NEKDEeFroXwhRxU
YRxATWW+HqretpDZHfZri559OKkDYb4XZB0RYd/0FTGKessNHIOXbEmOuVrOL1PZ2Dih2UU4
fOBi0mr6ShcZGKW2xTw9HGKN3+PPFC569T7i13aw3ig13gSB2SvDtW8CazCoEng28Yfj2eMz
WXP+fQYnqNXD98dXZWC6KvYcwzaVBZYhAlutRy1z3rZ+YyREAXp9IysdvLiN1apj5vmutW9Q
VW65MGa0Eterj88XomDNNYyGJhKK7cWP7w9nsg2/nC+f76vv56dX7lOZw76tzp7ctYR4QgyK
HCKI8pGnVRoPMWJG9UBf/xS0e6lVu8b0PKFE5QtO5wAcp9RMzI/62AoCgyalJurVwulAKEE6
5HUFPZOxgj/fPy7Pj/93Br2bcl3Rbyg90Ubzijfa5nFEHTEDSzDME7GBtV5C8jc1arm+qcWu
g0CI5iqgk9D1PWzaqlTcxsMj8yY1+HgoAq61DDHvmYxFb7sVIltbvMXvkhLOtE1d1betaaDx
IHmiPrIMPt2uiHOF60wR5xiSOSjfsD4jn7oaEwWF0NdfVAxkkeM0gWFr2BD2lum5OP+Y6PBX
cjx2G5Fx1YgVxVkL32lGbKhR0NZ5fOIYcuIItAayp14VnCCg8ZQM9QKHNaUL11rBbVLLdLWz
Jm3XJmo9zhPVZAvTVE1G1jbMeotjb3MzNgkPHS2XKMWGdM1BFzdsueLXsfczPZVu3y4vH+ST
6b6AmpG8fxBV5/7t6+qX9/sPspg/fpx/XX3jSLlzYtNujGDNZWkagGJAHQY8GGvjb5mSAE2V
0iMq698Y1BSBMEH48CsUFgRxY7PwKFinHu7/9XRe/deKLPlkw/14e7x/Ersn3uvU/Y3+CD4s
vJEVYyaxtNmpOPloC4sgcHxLZAUDTo0moP9pfmYEiHbpmDILKdCypWpb25Qq/ZKRcbI9DCiP
qbs3HfERfhxAstXqOk8EQVgjp09UkaFjjkiHLEewExqBrQBJmwOpI3TT9Ey5zYekMfs1dhqk
Hw3zO6aPVc/SgFMkY7m2AFprr34awqTQfMSK9OSmMjCm88+jLM8eInDylGgbso1JdGSOGDJv
ISFXaHoYb32Tl8x29cvPTZ+mIqoHvpxPaGwZHbpn+XITGdBChNO2ZO6RuYv7eAAy8xw/wE2O
5l5r3v2AoOhbT7dTDbMNtZoaZ5jtSjIcpxsYkXwj9m0ERwq1D2AUWinQNSbMrIu6yRtu12wT
Fz5KIr0Qw3y1xUsINmREG7cM/OVtInBMzdscUNRtZgW2ntkMjz8BTqswboxLxyM2yW4M1/Ol
bh0fjhT8JIiGvUS7NMNCE8jzjnHdMpWlCqC2umda1NSDHT7bhtRZXN4+vq/C5/Pb48P9y283
l7fz/cuqnafjbxHd4eL2sDAxifiS87VevMvaNXFDuhFrqhNuE+W2iyrVdMbt4ta2DWltGqCu
LDUD3MPy7TE8GVJ1P4KVAI3YRkW6C1xLWjsY7AQ34Bj84GRoHVrWEJXEoxFdWaifJv5PVsu1
xghymMUBHvlwWrotY3qdoRWLCsQ/rreGl8gIzD4xJcWx+7GW8TGKK3B1eXn6Meicv1VZJpZK
ANJ0oDsq6RvZYuSZMqPosZhdICTR+KQ3PLS+r75d3pi+JNZFln973d/9IclbsdlbrjymFKoT
G4KsxNB4E1S3woMhJySB+qEA5ZnPgLbcILgLwG/bmPA3wS7DLvknrHjopkW2G6IbL6yiZBHy
PPdvXZd6yzVcaZbQI5alKBKwd9jK3rEv666xdRM6bKKytRKx/H2SJcX0pBaxJ8fZk+qXpHAN
yzJ/5Z95lfencf02FK2zEq6adIcjFlvqcnl6X33Are2/z0+X19XL+X8Xjg1dnt+d5IC/wtWT
+mBGC9m93b9+B6+x98/XV7LUz92AsG5p1R0GRx2euWKeMrZZENgwQYSwYRyYvRS+3T+fV//6
/PaNsC7mPhjK3mLpOPO8IhOzqYTjKYFVYZFkp7Yq94ddiPYdrY7FI7t/+Ovp8c/vH2ShyqJ4
NKNQ2EBwpygLmwasKVIxHS/gMmdLdlLHatFUe5Qib4i2sNvy85PC24PtGrfcUyhA0yxdW7x9
9AhkkayFutu4tBzMfw+Qh93OIlpq6IhFTbl6f0htdA3zZsvf0AJ83we268v1lmD+ZmmiJ0Ca
sCzd7VuBbejoXBmDsSH7mBpKDnPy5f1C1I2vj++vT/ejMKvDRgSCOnyU/O0omybLYPI36/Ki
+T0wcHxdHpvfLZebx1eaNNIpU23mWVN2RazMqX0aqx0jQF4Eyc85N1lbJ8Wu3aPDQgjr8Iii
OqhIFSIoes7kzbbD1/MDbLrwgbLuAX3otAl9dedhUd0J59MJeNpibiIUXcG19rMA6uqED+xH
e55kN2khwqI9BEoWmxDtU/LrTiIsu52YcxmgeRiFWYalNqbf0Fsx+ZvorqqTBjPkACzh+64s
aikm6AyVuCCUnOTNIjpLohJbACjyy01yJzd1l+SbFE39TbFbfmGgkKys07JrROghPYRZnMqC
SOpryy7aa0q/uUvEYo5hBv5Pz2LRybEpC9H3mrbkrqbxSrXMSCEkmKbqtJWk6Y9wI2bTBWB7
TIs9mmWG9a5oUjK/ykJuWhbRSLjalhGlojxgIW+YwO3SKCcsllqYE+bUZSED77ZkVd3LLa8T
Jk+6OtKoLiHgnlRaWZCFI5HmRd5lbUrHURwtyKwtAMq6TW5kXpA9GeIhErHRCVmVtGF2V/Ri
rRUEuoqUtW0Aw7ajKy4LwTaPSIwkpARxRwMaiwPGgfXrT1WnediL5TVhivS3CfOm00Tzpfgk
h8809dDQW1laqMW2Saib2ASXZA1Zl/kMTRTRFVUmJpygwpHjzt50VtVJUoRNiu/ltNA8rNs/
yjsoWdOgNj2UYkvItG5Iz+TR7GAPOlUNpioBvk+LvBS5/iWpy6FTA3SEkNGTSO9isq3IU4YF
xz7tuw0Kj7qmBWcM+kvZpbIKf0vHNsIpnzu6bxMEmzRbvpIZetqVZZz2aG1yoXKZk4I+0GO0
4E5S7qP0lKVtS9SYpCAbWcEPEFAsmCrngvlRdayb5JbsTzlmzDZgp9fpWdEBE8Qu1NVArQxF
i0Zm1Li/vH+AojUeupRoovDx6FPMnREiUiPpNP7AR7AsTKCmMTSe416YTrQaFrVR85EcDQBA
NupgDd3NCTtEg9URjPRDV+XoayAWEh+5l0b6myx97TZXoJusS7ZpwmeMGDAsvpMC3qe2vw6i
g5D2YsDd2CKo2cOfdCt3p4P+eHWZaR5f4VMIaKnpcnRLRlXm87651ZAPEf/kD8ojFrQ3J0pX
m0bCkjzCVEvpwT7k+fL2o/l4fPgLs0cdvu2KJtwmkLa5yydje/5TvZRPDSmSI1EnYmwlDqMo
geB55LDYCnmfQ9O8OxF1J82yZDzGKF0gK9r9X5+vcLNBTzPvr+fzw3fOgLhKQkj//CwBTrAR
hRlvJjth7ogqQJpVtI2Y9k/BV2i8G5GsKrOsRKpn2C6uhNQyAnZTNPr64yRqM/zRVSFMejSc
qExWRbqWxKQqfVOI/vwTnMhYGShu0PE05TfVTdld70HbV/VCKfQ4rNsVMRkaa0nI9nwKyW6b
kslNzn/c0xNFKe4vEIw2S0XHJQKi9wr4tSIEEoTrBtVEnaA23VZ1HCB9isAvSdymjhSOcKpj
5QgnOQohW8khORVlm27vdG0DMl3e9QHdJNkWNsEGqWGfhBp1ROrctCJ0PVybEYV35imkFwY9
e9aFYsfxA2NwuxA0IIZBGgt2wQZnxcN+n+jo/X9lT7bcRq7r+/0KV57OqZqZa8my4zzkgeqm
pB715l4k2S9dHluTqCZeykud5Hz9BUCymwtayZ2HiQWguRMEQBA4/X728dJDUH6Qz9PBtIhR
Z6Mk6ZyWwI+pddqUoqJHY2Tls8Fo9NPIIay5BlcFzeW5C4ZO50uJwXhrFVXEwVI8dYP78MEb
KTgfQTxzZtzG8PqoRUH6GktEtXNrLLH4HPzoSnwet5R5Ul3Z84OoGB+SKBRv28HPq5Y1TtD3
CycbwWbBhmbFiCvhOxSEus8j8DcGyWsD4Byf0hSOvKkx9OZjxNFXlZfxbaJYtF5lBENdt9YC
LhyWSxFd96ctBkt7ffr77WT143n/8vvm5Mv7Hg7dQVy3fEuPk5o6QYO6ntv6CWwkGVuqsvrt
R7zpoSoJDe395AbjbH6ens4uj5CBYmpTnnqkWVJH4Vxp5LzI4wBIQrcPNBvMh9f1potzxxSv
MUktjjxp0kSXUzvChwUERTqAr9W/6ghwUXnSVXCWJXk4pIZ9MlCQaEXmWBYdrC5UOsy3bsQy
yTmW3aeQ/+FDujIppcsxKqioN75zA5TJNBV5sWMs9DqJ6qpoQO91w/wj3GYXBQY23xXK196e
IXxSF43IOastaC15WkTr4NiMvj2BYFo/vb9w4ZUp9pXK8eRAgA3PLTYL9dZVFOQV6rO6JHwQ
pz4gt4q+Ndjrddh8H9wHSzeI4QDdgvw4H61o0TRZhfkCvBKTXTnb7XwohXS/CCsBbWK0hioW
4QcqxvTYJyoWffDRprnEmF1jX5lY/8F3JmVD8OGwSNQsxSrOJUaG5FKdR2lZ4wOesAYMuTte
eg5LrJKj7cZQY9BfClVV+iOuW1YmNb7ps48cjTFh2gaEqLLNxwyDWJIqN8ApOnaZND7IYYG6
VGXaw8SMA25Rw5HeZMz073IMr18yg2AGCHMzBYuAks2MfKEb8ieaCNxGA49RWy3KnNfpPTxr
2rEYBSoRAJyUbLJ2U0CTOSHjpO4yDBSnlJsp2llcfHV5his1q5wnij2UjaejsWXrsxS8jobZ
7KImXBgqn4M9oxEM1uQ02NBkB6dEX4C/mCnNwlzjcZyu/xCU53lhGYSxORlCXMuyerGbrbid
Y+dWqbawhPzv+yxkiOAKwOAJIvhslZxdwMb2P7LwF9NpiHd7ZixvGkphI0QZ1V1SOjcxyJMx
38FobWorwleszQt2QJTFV6oPw2KmWLRZvXShuDM0YV88NcwvfTCnwjnXckZM9R50//D0tscH
o072qH5fZEUj4eTyijavQ8OPVaHPD69f2PJK6JBq7xIt/AjgNyQRKmGXr9qpoh8evDPeJlXv
rgJL9/GeXmEPfhUKAV36V/3j9W3/cFI8nkRfD8//Rt387vD34S40peI5VmZdXMDSyGv0iSnt
PeSijWAtHr49fYHS6qeIs4BhEpRI5Bs7rq+Gpmv4S9StH3JEZVfBtGlJvuAUgJ7EaY2DlNJF
esVnbPGD8wrTJ9VZurbh+6qzqaAY5uf/tFB1XhRcnHBNUk6F+jpM03K0wWG7Bpb4aUIp6JLY
5pMaWC/6p2d9yju2d0Zko/tO59wpyMqKOX+4QwWxKkPfUDuxkszhwWzl1Kx8V/7v4mW/f727
/bY/uXp6Sa74Fl61SRSB8gcyu+3iUQoxtTw/+hp/Vi5Vfvgj2/G14TGwLKPNlF2ENN6YBtOu
MShM3RuBqPn9+0glSgy9ypaWhVMD89K5+WGKoeLlIznppoe3vap8/n74do9eKoYNBLWmSSMt
bkw/qUcAMCFkHjxsO0d9BLXTz7OhUb9e+fDYstn/M8JL9BFibfUGzfIbYUsACINtUolo4d4I
AZwybmwrPk4/4OuoBEHD/0pBrWnm7y2AMsuAcNwTz+/Z/zjpDfk1jYcI6nAij0E+945ptP50
tbXYFbSeJ8HBmabssczEqutBZWyvL7adLhfQ8iWnBBn5Zlk55rQenhRqbI99y/NzYmLhTbyF
JfUCxCAdWRi9f0onClJPdMYROTU1/IViS4qTYrKB8LE7fDs8+hu8H1cO21vVf+n47k2amUkC
bDi6/umkczRsUacLpszFdFnbFXkscZ05Dp8WGcgCKOOK3Pfp42jxlKjFhvPKsen6GM2Ozm4X
JOo62YSXVqZrzEUZSNsmP828rU1pvFhObNyici66+/Hs5Ebm3O2J3DURWc4Vq/3+dvf0OJr2
UhGDGik+zS6t+1MN17k7XGAmdmdndgThAa5irrIIzKjiI/qQnR64yTFOhj3nGtNHqiS74mjn
u6rBGLMiKLnOzs9Pp0zB6G0wkghsoICtBv/3PF8xYFPF37EkI1k/QIMP1g5azPGJP+OqUV0h
q7HkJFD5E/t00YmsKusUUjq6SJyQj0rTTnLMAVRdlUnOIKEyhxkOefomhOT4mcnliSVbirLK
0ug0K8nxeIBxjFoXYepZXdammGEYq6sh459IYsnb58lDvLpCdyTWpIPovMlaR4HTexKrgKU1
BymN+xbvCpYoopcRGlPtsQdlX3VkEHr8mexbADxljRvb4vJ0Ww2YImpsb9JK1rJxo+NZU4I4
0aw+fuIVOIXf1ZNTPkwjokk4np2H5c5llfJHnkJrsfmBBeOvyE41rrCrOl77MEykGcAowP9y
68PX08mpD0M3u+QqbL/OQ3lkZEjZGu2gUsUo0hbw4qCjaNAMK+1NgaPFKgtGUXvxiXtUOZIA
TJHUUcZZuTTSC7qhoWj4yEr1it/FFNGiXIoAjP4tYdcwVTil3jnSPC66KEvQLdNWhiNwc53z
14X6okCvIjIs8Xc5NtWFimlEXLVcXZ/U73+9krgysFTtR94B2rotGYAU3AW0NBuNYJPklLzX
GidhKKJ3WATnfwY4GN7z0wS/PHPL1HaDCejYgLRiSoTIM+A/ieQ+F7ulwnktGrDUIyTRkUdH
mul9QEPgtEhr1diclYuJrpc5CC1hE3Vme/jCN93RdQr2Gun4o1J/n9dEN9LqvJ7SnMRV7LW2
wrpFIxhwWzuuHFZLsQsjNZk8z3ptOF8bXC3SzcjBD1RosSct/ApbMDYNyQ5TnVhT4JShbajj
32sjrDfkCoN8Gs86b8hdmgSYcV4wK1Lx3W5T7TCTLLfmNEUFR/zIlCnT89nHcxKq0hYDX3fB
ZlMnETd7CqE6Zw/aRs7bDsqFhrVNlvDYSwzgnwXrutyJbnqZZ3BY2VkUHRSNxg8f1dqZaamm
rDxjWofQsHC6hQlag9B2UQfbGcC7+theAb2l2p2jXBFL3iaAVEUk06JhqCwaEjDCzmmL99Xs
dPIp7CRhr/Q4OVX2QeTrvKy7hcyaotvwV0IO+aqmsf854YgPlt3my9OL3ZFNUwkyjAedqiJR
4elwpri3Nye9KSCmXzvuhHLoaGPFdRIeL4NVIeChPaq5LqW3hLQMG5cqjJj7oUYSKxlHhxWa
20a1CjmEYg3u6jsvNyCrBfveIeqFgSMM3abxzssepXkPhxLojustQAxaXUpRTc6ggTAco9xv
IJxpQm8AmmQ1O/0YrhMy10w+zbpy2vq1x0LLDUyl5NitZf3OqQ6EL3TdOHPrUWLyWspsLq7J
590dIRfPnAGKIF2SFW/OCa0ulfS97VHWSWCz7Eh0y0p3rrUe5Mpe1tdohvHykg7adDTnBU0R
+lCKx/uXp8O9ddmRx1XhPkjUoA40uxivbUv+Os0U1ZuDhPUeKN+Ajj8MMf1EoXjh2PwUmLTM
hGdXA0URFQ1n7/3zhnwf5aJ1X+epL430KfFa8FgVhpCvRNGgewQ1w7FlwPlClbOFK+a+GK28
51FBET6BV61qEQpfYwOjx5wuc9F1ydHB+m0/3nT1/WZxAXt/rI7+Ek4N/4NXd77B1NLL0jW/
quSsYx2mO2O2uAr74MFIKs03lciMrXS1PXl7ub07PH4JzUIwGJbbdZOhl1ODno2OiDEg8Lqg
cRHkOu2C6qKtot4tn8WtgDc2cykaFrtoKrSc2o+KiI/474DN26Cwh6ZQV0nFX122rCz1ta/B
x3WCDcOiHRZKZAPeM5cARd4TQwf7GgxhrV/W+Hjkh2Mt1yyT/zCJ5Ox0BJeJaLUrvOTrhJ1X
SezmJdQNXFRS3kiNZ8ZCt6XE1IfmWsGtuJLLxE64WywcuEus/HY9SCcWLQPNk6LWi6IUUZe7
kbickcxKfyxr51yHn/QEBXM5YJoFzpkOSDJBGoZOYRciVu3cL1VjBPrvcq8yHZpSvS20UDWw
Sg8yl4tk4dVfRLa9VPavcOBP7lrGBvdcC5/HwvTtaAKHkH/P3/bfuXAgmINBxMuPn+yA6xpY
T2a2Gz1C3QsAhJDbpJ9806utFyOAo5eW5bpOCutcxV90z+FWUqdJ5hpJAaAvHT0XBlxFFfyd
y4i3CcPSRhJe1CjqhuVJ3l2JChRywAckJMrYYXtBY4hFA1yvRg/l2r7AQ1BRJzCwkWUQlTv0
BXIlBwPr5ujzCiPGazL4kgDTB6+Tkfe9C/Qyj6rrcvRdOlBsZJU0nOi7qNVrEefS68gDkkTh
6LaMK070xRnxoS0ah22XFcyfAndbUeVj/VIU4ylZrhZZ02342FEKx6kZVGrUuC4xbVMs6hmM
BXd8ELKz9SE82buF7d3tHPX6xYA72wXMQCquvTrUXeHt3de9tbxyiauCSfqjEY1ouIYu6ggO
DGkvRQKoD1xOpxBoFCpAeeHlOkM19lbI4Iv5n7APuzSpnaQZulfKHvu6f79/wows+2Azoa+b
M5gEWLsHNcE2mZ8SygLrCC8o3PAqBtGiTbvhU10RvsT79qzIk6bgVjfRgCibxpW0zsi1rHK7
B0ZJ6LkR/mPW0KAohYNicSl8P4FbH32HJeuqn6dWHfDDPM/4/OHw+oRZIH+ffLDREZyU1L/Z
mRPi18F9POMCb7okdgR9B3Nph/n2MNNRzHhpVuhtF3MxWs/FZPSb0RZcnI0Ox+XF7GfDcXlx
fuRzzrvYI/nk6EQ27tPZBbtUXSI2s4RXzljfP80+jY3Xx5mLSeoCF1V3OdrcyfTnTQGaiT9c
9Ahv5ENT68TtgAFP+Tae8dQzHnzOgy/4sj/y1MEs9i3nwkw4BCMDPQnW1bpILjv2vYVBtm5R
oEGg3uxGWDCISIIIyV8/DiQgRrUVf6vRE1WFaBLBix490XWVpGnC+REYkqWQaRJxLcXwIFzs
EoMHvp8K+0lZj8jbpBkZEow7EWCatlrjWypvLttmwQdSbfMk8hSQIeqbLTsqF+j93fvL4e1H
+P53LV1fP/wNKtdVi/mu6JjlTiNZ1XDowhwhPUhVS1e+VEKhpIhI3AEC4C5egeApVUwjx0Eh
alFgxJedNd3XNlUSuW88NAkrNK3EBsQLUcUyh/pRVoyK8rqjTGb4vMYuKCDjpRGQhVDuVPYG
loTi6URUTAaTolzGWacv9Yxx6KSw9LG0zj5/+Hb7eI8vMX7D/90//efxtx+3D7fw6/b++fD4
2+vt33so8HD/2+Hxbf8F5/S3v57//qCmeb1/edx/O/l6+3K/f0QTxzDdVrCFk8Pj4e1w++3w
31vEDmshimBIapI7QdOoYBEn+PwYo6tZMgdLhUFpXEUpQZcA9D/JC/aO2qKAybGq4cpACqxi
RDEAOrxExjnux3hEIzHEaK8Ype39VdnhMujx0e5dF/1t148h7o/CaN/Ry4/nN0xK87I/eXrR
+VesaSFi6N5S2PYYBzwN4VLELDAkrddRUq6cF2cuIvxkJex3nxYwJK2cN6o9jCXsJcmg4aMt
EWONX5dlSL22rQOmBLyeDUmBU4PcEJar4c6Fo4vCYJ1iDsozPavl7QTuB3LXVCIkd4mXi8n0
Mmstw5dG5G2aBs1EYNgp+icOSoDNvAKuHZDb8YjK97++He5+/2f/4+SOFuwXDOj4I1inVS2C
8uNwscgoYkZQRjEXPm/A1oL9qgLEsYGuM04lN4PSVhs5PT+ffPrc50t8+7p/fDvc3WLqTvlI
HcZkUf85YDTw19enuwOh4tu3WycXki4x4jVbM5PH0dEKzl0xPS2L9HpydsoFHu738zKpJ3bO
HNNfeZVs2JFaCWCBTpIm9e6Fnv89PN278WhNi+a8uGbQbNhag2zCPRQ1dbBGZDQP6NJq67y0
V9DiWHUltDUoe8fUB0IIvoIId9PKjHvIKTCkQtNm4WJG/+z+EuX29ev4SIKwN974VSa4XbH7
yfhvvEJNtPD961uwPaMqOpuGO53AAXS3Yxn9PBVrOZ0zLVWYI0wM6mkmp7EbEctsi9VYqBAz
tz/dEFk8Cxl2fB5MMsC60n3aaTAJbBHyhToyT1UWYzh8v9R6JSbhVgQg1cUgpucXHPjcTvU0
gM9CYHYWft+AaDMvlkzftuW5m7ldLdDD81fHZN8zlzrcARLfd7MTX2wx9MNRNiEwyMNIrMWe
pm7Of0bAGyfMWcN6GGnkgv4NxtFwXIaPViWoOSE8mwWFNNvCDYfhwk2EoT6Sc5+CkGETIAel
omET1GvOeFMEDbichcsmvQkbCrBVuBxvahIM1Kte0EKeHk7y94e/9i8ny/3j/sXXFfR6yOuk
i0pOxour+dKLT2NjNKvjMBzLIQx3lCAiAP6ZoDYh0cOl7IPfaDH72+GvF4wD//L0/nZ43Ifr
Pk3m7NpHuOZvVmDoURoWpxba0c8VSThpiOoFleMlDPIMV4rhoiCp4UvFyTGSoRp/hdpkx7bj
0KVfEWiQuueLflErPn63qK+zTKKZgAwL6LAW8rj9yxu+FwOhTWWweD18ebx9eweN6+7r/u4f
UN/smGho+cZ5xFDudW/kcOzsLgWuWXUR8eGDdRPxC7WaIudJLqprdUe1MEs2HV2raZJLUL4r
DOxlX2EIuq4bAPMEjgOMSWTdaRjHczgp8qi8Bl2YXBptXccmSWVusNY9ZxWzByRGDpagfGRz
jL80PGYgO4/9UqNuMKuBySlgprKKVlgXiEnlLlot6fqxkgt7mUcgXcP2dkCTC5dCixgPNixp
2s7h/J7AAz/78HPu2UmYFBo6v+aNcQ4JZ7fXBKLaAlN3VzYiYJL4jy4caSZyfzl3KbBxlGTH
F2RpCL5MB0soLjK78z0KDhTyXcbo7sPIIRSdOHz4DW7eJKeDayiDoPo4s2xdNwVTMkKtki3q
GUsNx1jHU3Ol4AHHFENgrj+7GwTbg6wg3e6SF0A0mvwNfb8/lyQR7PWOxgo7+NUAa1atna5M
I9ABOwqg8+hPpuE4u6xZ0nS+W97YD/8sxBwQUxaT3mSCRexuRuiLEfgs5D+23dZwtMh6BwI/
yHcM7ZSVyKzZFjWGigC2s5EweJUdAxLNl0nh+FgqEMVbzETpwmOnf5lAh4kA0M2v8ZWudRNA
0SoUPqW8FB4OEeiIi8ZjnwUiTsRx1TXdxWxuBz5CDAxaKip0mluRkGPPNH1ZJke8F0y9c5lH
IIRV3P1GvUzV0A8Vq9gyfjSUZVrM3V8MG4nSm64RFh2+fsR4tgMkK90wd/BjETf2PMA0mkWx
iesiXCpL2WC4o2IRC+aRFX5D4ZA657YBXSZTJxoWDj/Oeokeko7BtUcBppLKhzorRQMjlSxz
hq5VIYm7RdrWK89Foiei6wnbo5owZPbeitR6xkigWJZF48GU8AEHMkzM1AoIiq/Uh51SzP8U
S0cpxJuVfNnPF2sCDwQQ957BCE4EfX45PL79cwKqw8n9w/7Vvn1wXXBUGLARXwjCYw4SPiKY
zkKTFssUxJq0Nxh/HKW4ahPZfJ71K00FOg1LmFlb5DoXGCVjNFitje983xAQR+cFyAKdrCqg
4+/oRgerVw4P3/a/vx0etKj4SqR3Cv4S3uMtgPtJ8mpS8TOdWS4x/B22izdGV1LEZK8GKpZg
JfHFNzpRwoJLuZitaiRqGVFeiSypM9HYCTR8DLW0K/LUdf+iUhYF+fW2ufqEdld3NuX99DcZ
SMLoJcjGM7EL3EqxxptLUFfVa4k+f9EvjrVKGIa68OHObIF4/9f7ly94+ZM8vr69vD/sH99s
50dMboLagv303AL2N1Ayxwn4fPp9YnniWHTq3fZ4D2tmGGti4dvOm7GQDK8riDJD78UjlegC
8UbPY83EtNbL2GLh+tdwswy/u1WRF22lHA9RXeIuh5FOv1OP/FxVhAwCRA9QvNrDeMZsh4ls
HXPG44Fnz2uBbwDzpMEgs8I+pAhnHWuR9cUcw5HVI0iSPwaS4RLf+pS/5VetWSULbqQUNk42
wfWrwrQ57GxQvOcpz2wVlfaiQ1vAaB0wpGlYvgQ171izrUFkSsb50kP64KyldYRf49mamEgE
JoXYr2w+d9Gih5xMw93hh/Ow78f7ci1fQTwy5K7BHEhuGGdVHOJJYOJUYvy22Oa23ESwskgw
1ZOtrg+ldUrt9epRk8Uvljpt54aMv/wmijEvThp7PWgg4aTALsP6DWb8CCCJpNVxxoeaQfiJ
NVLmlKUs4grp96EqbZN15bIh1hg0ZcOF72Q+Gyk5qZrWtkccBauYK+Q8YPFxBSS3Y3oNVFUF
ukPgDHlL2hobdMddABcNO+SgOdlHsZS1wO0R2v8UdltUaACCVg3bDxQJpQj7ng3DQg/asvIi
qqsrJaQ/KZ6eX387SZ/u/nl/Vkfl6vbxiyvmCQy6Ary48JzLOTx6tbdw9lmrpVg0eEK0aCFq
YDiLkWTVhOxW+Dy0ETW3oLZXIGqAwBEX1i4j1qMqsP1ij3dPOVKBgHD/TslJLCbhLfMxsVFh
MXyhJRghbPCTNo4jTDX+FKEMvZay9LzYld0QL3MH9viv1+fDI17wQsce3t/23/fwx/7t7o8/
/vi3ZVIsTIKXJekFfjqKssIUD/pBgL18FQJTW1EROYwuHzGc0NhZf3+h2t02cmebMvVC1JG5
gx3Jk2+3CgOsrtiCbrYKatrWMgs+o4Z5Ci/CQN0KAGitqz9Pzn0w3azXGnvhYxXro7dqmuTT
MRJS6RTdLKgoqaI2FRVoNrI1pU3DDjmNV2CTfSSVIU5PLFkP2DQcNEiwFZu2koEpqacaZoDR
K/tFv3AKsqyydazq2YqksTJaGXX0/7Gu+81OAwrsbJGKZTDzIZymQT0q7GGkraATWptjXjfY
xcpq6pe2VuezMd8rhvKPklbub99uT1BMucMLACcKHQ2/ecXgSgIjQrLeHIHkYA4jqz9KHuhi
0WBK2Kpq6bmOPapHm+m3KKqg/3kD0nn4ngTWJSs8Kf4Q2UGt7dkfTNFR22E8J39VIJxfL4gB
Qcn+yinNzOOg6wJQXtWcfcyEG3Y64bGXK61MVkaNNHtDgGgYXWM6z8HKV5SqfkvuI2mgV22P
Y5eVKFc8jTFALLx1qgpQKz6jt2gwOnhX45HgaxRczkQJYmhuZ4wgikh/qEqxJo7KjlyWTHak
ebtY2A2lcIFE72WpyIE7gL6xTdAO4HevrKTMYIWCzss2LihPA7hXS2ogeEmY8mCwr64GOVE9
n9dar/3iUvkkawq7xqRwccEOeX76z/7l+Y6XHsoy6l0HtyRNcqITECmkPWj4sE2dH8D14dS7
mLnFyqzFJRqH0r91pRdLdMONVuNWwWFgu0Wyo+xnR8iyOsHTiYzc44cBNg+nG4U+fOK6DhMZ
7jI2gJqSVdyLSeqsqNLrIxZwpCmb8L2WMc0Fc2QbPZv96xuePSgYRhhS9PbL3nKnb3Pb759+
qpbY77IU2OVkCqYTtLA42rB0KA+vBzjdw3ktXWY/U1B6fuOXYe8kMlL1qGPbZh0Vm0ArAV0E
wJp52K5Qmnow0SCZMoYp63qFKjL7hgAp0SBZtRkyGsdSo5CwqEQlhQrIfPp9dgr/WScB8DW8
D2iUuEquKmMdwytp2M7u+TIAfJdwdo04skSW1JhMuYuLiJpvLQ4la8wTNR81U7yxu/8fqlng
eCWHAQA=

--ew6BAiZeqk4r7MaW--
