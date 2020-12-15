Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBEXF4T7AKGQEGTL7S5Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3d.google.com (mail-yb1-xb3d.google.com [IPv6:2607:f8b0:4864:20::b3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 575A72DB638
	for <lists+clang-built-linux@lfdr.de>; Tue, 15 Dec 2020 23:03:00 +0100 (CET)
Received: by mail-yb1-xb3d.google.com with SMTP id n205sf25543438ybf.20
        for <lists+clang-built-linux@lfdr.de>; Tue, 15 Dec 2020 14:03:00 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1608069779; cv=pass;
        d=google.com; s=arc-20160816;
        b=lU4ZhEw8+iKy6gGF7nDqgubhgHjHQBJ0AAEy1yCM60aRA6U1QrYvtDFIptycSl6Rgj
         dRkDyh2BflsaXvAPGiGsULfO2/aIAfstwY8nKKhOzp/RbMtp3Pl85S4CTspl2bAAT7zO
         FE5sC2LLnG9DMAYqCtAIn0m9wQXKkIFO3vm9ySytSHp2ot0xBpflUI4ZoZIChA12cT0s
         Cy0Xj7aeyWWaL42Y1sAZumxsh6tW1ihyulXcuEuoT1Y9DtaOVx0CqgYkditpw5So/PFr
         6tJ6n6H3WSKT8XAk6xQ3HUQY72jwvNLvJqJNkP7aw+2iTVfgu0mz/Rzd1uc1xEDfoHn5
         ltzg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=ktkYHERmyaD/8U/bk5kfcUdqNpgOJfoVAqBNgGrxoY8=;
        b=saMQmIbxdt+jvNAv58zGqC5e4OibbPDvUwEsF+tCQtpfHzicyde14bRrYsntnS4+w+
         qAcyM8kaqxJR5fVWcxdZuUglUN4rihy46G49uJDKJCVi5IZGXBaJqNNia25EWgcG1bCB
         cat/m4zZLtSE9mAweW1JhKR1bH+SPxamRAV4d62YBzzCTQRfcW1y77vzXDyI3Tb8ecwc
         9zk2n7yZzKazBF+G2qnHGkcJcfPiDDL/PJvqL37nPzeQHBsSEAzwFOtSFomINJBB5urW
         TGN4oI0YZdUJCbG/Jum3MjiJHpnW5F5MSmW6IXLUYBqxN4HxItGM4IobLj7S3YeamaVq
         lJ+w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of lkp@intel.com designates 134.134.136.126 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ktkYHERmyaD/8U/bk5kfcUdqNpgOJfoVAqBNgGrxoY8=;
        b=UWM8K1gnB3JIgOb5YJpOgbpXAbsho28opXTRIe05e6u4sG46/fy1zRiaO7y5LTUKWS
         o6AtraWhSzPiXd6xlCP+wu8MVtm9l7y5ekKlAkvJLwr5yfbUbHWBjcwB0MG43X6LotvV
         weiCo5d792HkBVrJaVm1kapDiiLgQB3vq8j2fBYAAYq218lYp2t3aIpUH3ge5oUZXzBN
         KH1yN9l1Hvgfo+S5BzuzP4nepjgNq5QJcJyGi2qK6kSzR3EyonOpEQF9IQIh8zBbmTB7
         b5SKHGhF58thgQN6tTBaS90+2xkbGn7ghCVY4Cn6LDunieZSwuasbeMJQiJl/N5g4IsG
         1swg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=ktkYHERmyaD/8U/bk5kfcUdqNpgOJfoVAqBNgGrxoY8=;
        b=jx6sT4ywVSivf7CRAUsVQt1sUF+C7QMK4Nz9l2T5H0rj4qj5pBUKeMYk9e0khEVAQi
         4ntTGdIEF+4nN5QvT50w0i676CpcR8IKPrw9MWzeuGR41yy5p4kiRBW1btIFIGIT0Z3Q
         l0m8nfaMURr7Hv9pC31cvEgc9EhoVz/YIjj9BuQ/6V/M3lXp0rQb9tSgVdNsqL5rcKU5
         80CGR6Va0MYv7WC4LZopsB0JV5S/daLQmGrtQxzSrdZ+Tt83CYlUCd0/OVqQ213qjhKj
         LFvHRrQ14TWKyVV5C4dGDJVGYD2FVRnKJmzpDDuXkEqiID56WKu/X26J+4yV5/xIPJfO
         CeXw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530XCy2f338ie9TjocTC952Z92igqhxwu9QFOgrHYPuTC5JG7MrR
	r1sBLHQMMUs/XZNj15UrOmI=
X-Google-Smtp-Source: ABdhPJwxcc+uIWUcViW6HOBbwffozq0fxb+hsx0Yu5a+/oMWbLjUQSqRp51pPjBFCFpJT3KPo7TxRw==
X-Received: by 2002:a25:ea45:: with SMTP id o5mr35663561ybe.492.1608069779120;
        Tue, 15 Dec 2020 14:02:59 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6902:6af:: with SMTP id j15ls10747358ybt.3.gmail; Tue,
 15 Dec 2020 14:02:58 -0800 (PST)
X-Received: by 2002:a25:cd43:: with SMTP id d64mr47133104ybf.296.1608069778595;
        Tue, 15 Dec 2020 14:02:58 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1608069778; cv=none;
        d=google.com; s=arc-20160816;
        b=XsbyGWrvz4pvQMno6J9/b4G1coLQBdcpogt9dn86ARTjkVFVVPcrI70vf4EJ6EJ3fK
         UHrfg8MiRXEO9q0p8Xc+AHA8TmC60D2ONPMIh0P3wZzFRKCEOoLEbiJhXYWYcFn3Fr+Q
         v/+m/Lqe1hsXvmkKt8RZI2Mk0jt+2ypI26TV2WokE6fmem+y6oxB0NRrpv2YVltOBu2Z
         Kf/Axo+vbYjFsglLA4WTkxeCedFEyx/wI4CqPSJhfK6iXsw1Abznm5dto4gH5PcmFGcf
         yyhYAriliC/xXOLLpeHKP7B0SGFWMNuzBqVUlb4gTzuxBEazwYDnUvRInDh584sAFv9T
         A+zg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=3Jhs+7CaMRHGrhs3Bu9zv9t7+jSwbKZp0L8j5wfVRi8=;
        b=rsxhNaixBQ5mbfvfPGWYvcO1aAsgWKWBF82qHbhU9gG44J5sbhZiqfr/+RP9XnT1+H
         TJyY5J4F/prWBVhNdy3Xi1aLOLUXBqzAEK3EDVfjvIQTaCz/pdF5V+D8chhufvJjog7g
         TP7lTAPrQVIjzrAXk2fQBGr3jioZifBK4+aOGFH69fG0vzU8jQ0AQxVYNOT7dSK97jea
         jb3W/a7KQhW3OkS1JcoCP6YBhvd2GsriiSj13/e3Eq7B1VqPVZUtuu/aiRLFpyJT9EAI
         xUl+cUitvX3/wLG1NBOokHMua65F3ES9Tj9aE/FIm8HjqFmJclJuttGqQ4KS9SSND9qb
         MMSw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of lkp@intel.com designates 134.134.136.126 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga18.intel.com (mga18.intel.com. [134.134.136.126])
        by gmr-mx.google.com with ESMTPS id s187si31696ybc.2.2020.12.15.14.02.58
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 15 Dec 2020 14:02:58 -0800 (PST)
Received-SPF: pass (google.com: best guess record for domain of lkp@intel.com designates 134.134.136.126 as permitted sender) client-ip=134.134.136.126;
IronPort-SDR: +bdoi8EFgJl66wmugEFSbeSr6D2gOtkd3E0LjcGG6vstZugzWjZzJoUcRILccA/Zj7jpcWxrnP
 Jv3H8cbH82vw==
X-IronPort-AV: E=McAfee;i="6000,8403,9836"; a="162708245"
X-IronPort-AV: E=Sophos;i="5.78,422,1599548400"; 
   d="gz'50?scan'50,208,50";a="162708245"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
  by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 15 Dec 2020 14:02:56 -0800
IronPort-SDR: /E5zNL4bppduN7VnCIoBnMqoVxDRpoeJPwFbwHN82RNKLQ75F8mcs5UoxMj0b0KUNVUcxwSYgF
 LLpecNY/oBKQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,422,1599548400"; 
   d="gz'50?scan'50,208,50";a="341788948"
Received: from lkp-server02.sh.intel.com (HELO a947d92d0467) ([10.239.97.151])
  by orsmga006.jf.intel.com with ESMTP; 15 Dec 2020 14:02:54 -0800
Received: from kbuild by a947d92d0467 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1kpIPG-0000z6-7C; Tue, 15 Dec 2020 22:02:54 +0000
Date: Wed, 16 Dec 2020 06:01:52 +0800
From: kernel test robot <lkp@intel.com>
To: Marc Zyngier <maz@kernel.org>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	linux-arm-kernel@lists.infradead.org
Subject: [arm-platforms:hack/devm_cast_abuse 16/17]
 drivers/rtc/rtc-jz4740.c:333:8: error: implicit declaration of function
 'devm_clk_prepare_enable'
Message-ID: <202012160650.j7e8o4Rl-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="2oS5YaxWCcQjTEyO"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: best guess record for domain of lkp@intel.com designates
 134.134.136.126 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=intel.com
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


--2oS5YaxWCcQjTEyO
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/maz/arm-platforms.git hack/devm_cast_abuse
head:   542cb40d75bf747a26ac91aa28f1a1ecb19b89e3
commit: fe1aec9b36b68f59f0c78233d76d4fdd4153a5a2 [16/17] rtc: Bulk conversion to devm_clk_prepare_enable()
config: powerpc-randconfig-r025-20201215 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project a29ecca7819a6ed4250d3689b12b1f664bb790d7)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install powerpc cross compiling tool for clang build
        # apt-get install binutils-powerpc-linux-gnu
        # https://git.kernel.org/pub/scm/linux/kernel/git/maz/arm-platforms.git/commit/?id=fe1aec9b36b68f59f0c78233d76d4fdd4153a5a2
        git remote add arm-platforms https://git.kernel.org/pub/scm/linux/kernel/git/maz/arm-platforms.git
        git fetch --no-tags arm-platforms hack/devm_cast_abuse
        git checkout fe1aec9b36b68f59f0c78233d76d4fdd4153a5a2
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=powerpc 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

                   ^~~~~~~~~~~~~~
   <scratch space>:133:1: note: expanded from here
   __do_outl
   ^
   arch/powerpc/include/asm/io.h:537:62: note: expanded from macro '__do_outl'
   #define __do_outl(val, port)    writel(val,(PCI_IO_ADDR)_IO_BASE+port);
                                              ~~~~~~~~~~~~~~~~~~~~~^
   In file included from drivers/rtc/rtc-jz4740.c:9:
   In file included from include/linux/io.h:13:
   In file included from arch/powerpc/include/asm/io.h:619:
   arch/powerpc/include/asm/io-defs.h:43:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(insb, (unsigned long p, void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:616:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:147:1: note: expanded from here
   __do_insb
   ^
   arch/powerpc/include/asm/io.h:556:56: note: expanded from macro '__do_insb'
   #define __do_insb(p, b, n)      readsb((PCI_IO_ADDR)_IO_BASE+(p), (b), (n))
                                          ~~~~~~~~~~~~~~~~~~~~~^
   In file included from drivers/rtc/rtc-jz4740.c:9:
   In file included from include/linux/io.h:13:
   In file included from arch/powerpc/include/asm/io.h:619:
   arch/powerpc/include/asm/io-defs.h:45:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(insw, (unsigned long p, void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:616:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:149:1: note: expanded from here
   __do_insw
   ^
   arch/powerpc/include/asm/io.h:557:56: note: expanded from macro '__do_insw'
   #define __do_insw(p, b, n)      readsw((PCI_IO_ADDR)_IO_BASE+(p), (b), (n))
                                          ~~~~~~~~~~~~~~~~~~~~~^
   In file included from drivers/rtc/rtc-jz4740.c:9:
   In file included from include/linux/io.h:13:
   In file included from arch/powerpc/include/asm/io.h:619:
   arch/powerpc/include/asm/io-defs.h:47:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(insl, (unsigned long p, void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:616:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:151:1: note: expanded from here
   __do_insl
   ^
   arch/powerpc/include/asm/io.h:558:56: note: expanded from macro '__do_insl'
   #define __do_insl(p, b, n)      readsl((PCI_IO_ADDR)_IO_BASE+(p), (b), (n))
                                          ~~~~~~~~~~~~~~~~~~~~~^
   In file included from drivers/rtc/rtc-jz4740.c:9:
   In file included from include/linux/io.h:13:
   In file included from arch/powerpc/include/asm/io.h:619:
   arch/powerpc/include/asm/io-defs.h:49:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(outsb, (unsigned long p, const void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:616:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:153:1: note: expanded from here
   __do_outsb
   ^
   arch/powerpc/include/asm/io.h:559:58: note: expanded from macro '__do_outsb'
   #define __do_outsb(p, b, n)     writesb((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
                                           ~~~~~~~~~~~~~~~~~~~~~^
   In file included from drivers/rtc/rtc-jz4740.c:9:
   In file included from include/linux/io.h:13:
   In file included from arch/powerpc/include/asm/io.h:619:
   arch/powerpc/include/asm/io-defs.h:51:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(outsw, (unsigned long p, const void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:616:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:155:1: note: expanded from here
   __do_outsw
   ^
   arch/powerpc/include/asm/io.h:560:58: note: expanded from macro '__do_outsw'
   #define __do_outsw(p, b, n)     writesw((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
                                           ~~~~~~~~~~~~~~~~~~~~~^
   In file included from drivers/rtc/rtc-jz4740.c:9:
   In file included from include/linux/io.h:13:
   In file included from arch/powerpc/include/asm/io.h:619:
   arch/powerpc/include/asm/io-defs.h:53:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(outsl, (unsigned long p, const void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:616:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:157:1: note: expanded from here
   __do_outsl
   ^
   arch/powerpc/include/asm/io.h:561:58: note: expanded from macro '__do_outsl'
   #define __do_outsl(p, b, n)     writesl((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
                                           ~~~~~~~~~~~~~~~~~~~~~^
   drivers/rtc/rtc-jz4740.c:317:14: warning: cast to smaller integer type 'enum jz4740_rtc_type' from 'const void *' [-Wvoid-pointer-to-enum-cast]
           rtc->type = (enum jz4740_rtc_type)device_get_match_data(dev);
                       ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>> drivers/rtc/rtc-jz4740.c:333:8: error: implicit declaration of function 'devm_clk_prepare_enable' [-Werror,-Wimplicit-function-declaration]
           ret = devm_clk_prepare_enable(dev, clk);
                 ^
   drivers/rtc/rtc-jz4740.c:333:8: note: did you mean 'clk_prepare_enable'?
   include/linux/clk.h:936:19: note: 'clk_prepare_enable' declared here
   static inline int clk_prepare_enable(struct clk *clk)
                     ^
   13 warnings and 1 error generated.
--
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:616:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:128:1: note: expanded from here
   __do_outl
   ^
   arch/powerpc/include/asm/io.h:537:62: note: expanded from macro '__do_outl'
   #define __do_outl(val, port)    writel(val,(PCI_IO_ADDR)_IO_BASE+port);
                                              ~~~~~~~~~~~~~~~~~~~~~^
   In file included from drivers/rtc/rtc-snvs.c:6:
   In file included from include/linux/io.h:13:
   In file included from arch/powerpc/include/asm/io.h:619:
   arch/powerpc/include/asm/io-defs.h:43:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(insb, (unsigned long p, void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:616:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:142:1: note: expanded from here
   __do_insb
   ^
   arch/powerpc/include/asm/io.h:556:56: note: expanded from macro '__do_insb'
   #define __do_insb(p, b, n)      readsb((PCI_IO_ADDR)_IO_BASE+(p), (b), (n))
                                          ~~~~~~~~~~~~~~~~~~~~~^
   In file included from drivers/rtc/rtc-snvs.c:6:
   In file included from include/linux/io.h:13:
   In file included from arch/powerpc/include/asm/io.h:619:
   arch/powerpc/include/asm/io-defs.h:45:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(insw, (unsigned long p, void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:616:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:144:1: note: expanded from here
   __do_insw
   ^
   arch/powerpc/include/asm/io.h:557:56: note: expanded from macro '__do_insw'
   #define __do_insw(p, b, n)      readsw((PCI_IO_ADDR)_IO_BASE+(p), (b), (n))
                                          ~~~~~~~~~~~~~~~~~~~~~^
   In file included from drivers/rtc/rtc-snvs.c:6:
   In file included from include/linux/io.h:13:
   In file included from arch/powerpc/include/asm/io.h:619:
   arch/powerpc/include/asm/io-defs.h:47:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(insl, (unsigned long p, void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:616:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:146:1: note: expanded from here
   __do_insl
   ^
   arch/powerpc/include/asm/io.h:558:56: note: expanded from macro '__do_insl'
   #define __do_insl(p, b, n)      readsl((PCI_IO_ADDR)_IO_BASE+(p), (b), (n))
                                          ~~~~~~~~~~~~~~~~~~~~~^
   In file included from drivers/rtc/rtc-snvs.c:6:
   In file included from include/linux/io.h:13:
   In file included from arch/powerpc/include/asm/io.h:619:
   arch/powerpc/include/asm/io-defs.h:49:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(outsb, (unsigned long p, const void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:616:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:148:1: note: expanded from here
   __do_outsb
   ^
   arch/powerpc/include/asm/io.h:559:58: note: expanded from macro '__do_outsb'
   #define __do_outsb(p, b, n)     writesb((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
                                           ~~~~~~~~~~~~~~~~~~~~~^
   In file included from drivers/rtc/rtc-snvs.c:6:
   In file included from include/linux/io.h:13:
   In file included from arch/powerpc/include/asm/io.h:619:
   arch/powerpc/include/asm/io-defs.h:51:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(outsw, (unsigned long p, const void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:616:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:150:1: note: expanded from here
   __do_outsw
   ^
   arch/powerpc/include/asm/io.h:560:58: note: expanded from macro '__do_outsw'
   #define __do_outsw(p, b, n)     writesw((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
                                           ~~~~~~~~~~~~~~~~~~~~~^
   In file included from drivers/rtc/rtc-snvs.c:6:
   In file included from include/linux/io.h:13:
   In file included from arch/powerpc/include/asm/io.h:619:
   arch/powerpc/include/asm/io-defs.h:53:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(outsl, (unsigned long p, const void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:616:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:152:1: note: expanded from here
   __do_outsl
   ^
   arch/powerpc/include/asm/io.h:561:58: note: expanded from macro '__do_outsl'
   #define __do_outsl(p, b, n)     writesl((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
                                           ~~~~~~~~~~~~~~~~~~~~~^
>> drivers/rtc/rtc-snvs.c:342:9: error: implicit declaration of function 'devm_clk_prepare_enable' [-Werror,-Wimplicit-function-declaration]
                   ret = devm_clk_prepare_enable(&pdev->dev, data->clk);
                         ^
   drivers/rtc/rtc-snvs.c:342:9: note: did you mean 'clk_prepare_enable'?
   include/linux/clk.h:936:19: note: 'clk_prepare_enable' declared here
   static inline int clk_prepare_enable(struct clk *clk)
                     ^
   12 warnings and 1 error generated.

vim +/devm_clk_prepare_enable +333 drivers/rtc/rtc-jz4740.c

   303	
   304	static int jz4740_rtc_probe(struct platform_device *pdev)
   305	{
   306		struct device *dev = &pdev->dev;
   307		struct device_node *np = dev->of_node;
   308		struct jz4740_rtc *rtc;
   309		unsigned long rate;
   310		struct clk *clk;
   311		int ret, irq;
   312	
   313		rtc = devm_kzalloc(dev, sizeof(*rtc), GFP_KERNEL);
   314		if (!rtc)
   315			return -ENOMEM;
   316	
   317		rtc->type = (enum jz4740_rtc_type)device_get_match_data(dev);
   318	
   319		irq = platform_get_irq(pdev, 0);
   320		if (irq < 0)
   321			return irq;
   322	
   323		rtc->base = devm_platform_ioremap_resource(pdev, 0);
   324		if (IS_ERR(rtc->base))
   325			return PTR_ERR(rtc->base);
   326	
   327		clk = devm_clk_get(dev, "rtc");
   328		if (IS_ERR(clk)) {
   329			dev_err(dev, "Failed to get RTC clock\n");
   330			return PTR_ERR(clk);
   331		}
   332	
 > 333		ret = devm_clk_prepare_enable(dev, clk);
   334		if (ret) {
   335			dev_err(dev, "Failed to register devm action\n");
   336			return ret;
   337		}
   338	
   339		spin_lock_init(&rtc->lock);
   340	
   341		platform_set_drvdata(pdev, rtc);
   342	
   343		device_init_wakeup(dev, 1);
   344	
   345		ret = dev_pm_set_wake_irq(dev, irq);
   346		if (ret) {
   347			dev_err(dev, "Failed to set wake irq: %d\n", ret);
   348			return ret;
   349		}
   350	
   351		rtc->rtc = devm_rtc_allocate_device(dev);
   352		if (IS_ERR(rtc->rtc)) {
   353			ret = PTR_ERR(rtc->rtc);
   354			dev_err(dev, "Failed to allocate rtc device: %d\n", ret);
   355			return ret;
   356		}
   357	
   358		rtc->rtc->ops = &jz4740_rtc_ops;
   359		rtc->rtc->range_max = U32_MAX;
   360	
   361		rate = clk_get_rate(clk);
   362		jz4740_rtc_set_wakeup_params(rtc, np, rate);
   363	
   364		/* Each 1 Hz pulse should happen after (rate) ticks */
   365		jz4740_rtc_reg_write(rtc, JZ_REG_RTC_REGULATOR, rate - 1);
   366	
   367		ret = devm_rtc_register_device(rtc->rtc);
   368		if (ret)
   369			return ret;
   370	
   371		ret = devm_request_irq(dev, irq, jz4740_rtc_irq, 0,
   372				       pdev->name, rtc);
   373		if (ret) {
   374			dev_err(dev, "Failed to request rtc irq: %d\n", ret);
   375			return ret;
   376		}
   377	
   378		if (of_device_is_system_power_controller(np)) {
   379			dev_for_power_off = dev;
   380	
   381			if (!pm_power_off)
   382				pm_power_off = jz4740_rtc_power_off;
   383			else
   384				dev_warn(dev, "Poweroff handler already present!\n");
   385		}
   386	
   387		return 0;
   388	}
   389	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202012160650.j7e8o4Rl-lkp%40intel.com.

--2oS5YaxWCcQjTEyO
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--2oS5YaxWCcQjTEyO--
