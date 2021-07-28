Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBZHRQOEAMGQEV63DFJQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93e.google.com (mail-ua1-x93e.google.com [IPv6:2607:f8b0:4864:20::93e])
	by mail.lfdr.de (Postfix) with ESMTPS id 845C93D87E3
	for <lists+clang-built-linux@lfdr.de>; Wed, 28 Jul 2021 08:27:49 +0200 (CEST)
Received: by mail-ua1-x93e.google.com with SMTP id g21-20020ab05fd50000b02902a6182fc181sf987758uaj.5
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Jul 2021 23:27:49 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627453668; cv=pass;
        d=google.com; s=arc-20160816;
        b=KW+ORMsfiWxmRYFV1MjHJDRqfHOR/sQiaTWUYi2pfD0Tk3W/k2c1yI9eCf+VPGyh42
         qSYyt2Uu+CI9MmmWFeWdBUiW9NKCKcaropLTZUXsvC6y0uNWmXWh67lyTRPBZXji0Zzb
         uqWrh7qVwdoMGG9T7cRdAISo2K72cFLo3Xti1SQZMA5DYpEBOEynHjxqf9Ht5J2k20xE
         I/HibsCOYnWH/vBSsuDQvLw3W4AO8AI1ntoz3Y5NjuE/KL+nMfGXKDNmH266CJR6jck0
         H/KJ1nbuq0ZBcb61JWk/Lf+PGxUKJofTadW0mVgQM//Xh0gH6XBFerG9w0zV5xvKYEHh
         yhcA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=KsgTXdxhoZqr87e3LJ9WxeBJYkpmrTxR0xSCH6iSmyE=;
        b=hfMGlqzy4MmrKI74yQNxlaDA5u5py6i8TLF7GF80NyuDc1YGTLU4oQUTPYlA59Tpfu
         648E98Xqv6qq59CWYOugOnXkwfYNZCthd+BIRz49vr5SkpI8Hiu832btjDqYlnTkT+iN
         x6/osiskJPE6NUtX7JEKEhdOcPHzVsRlMg6ZO9M9DK/yioWbKbcZxTnrJTKk9idF5nX0
         SwO7ocUv/ICg8E7RuhVwdmUj+nqLsoYENGHboLMyVYPMyDTiCof4bY9cjXOYDK0Bno9A
         TTjFOR7mBs7H2K/ACiWKRWd+fkr2q0/ZU6yi5ppWBU/LX3E1YiDyMNZFSvIce6A5fy6x
         PMjA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.115 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=KsgTXdxhoZqr87e3LJ9WxeBJYkpmrTxR0xSCH6iSmyE=;
        b=jGt8/EmB51xCsqUaAhiXB75Mkrj/U8dMzOusp5l0J/VLh2gzPKTlexY0RdiQTy1crv
         JwhK/bhFavHL1bsI1aPzJH8ZItXGy3MB3SD+YcKyMKdySUhTTSoLJ9XpCLois51RaZq3
         dnFasllLifO/RZXSXg1LFXYfBv/WHW68RGNM20AZFlXJc7zfbp9PNvnLfSYqFdnK7+6v
         s0iZFTpzWPLHFQPcYvhul0cjkzrJCiiPa1HxvLP5p376rgq6ZiEdZCN7jBkj2RTHrr18
         S0Uoml8PCFzHnY5o4RTzGaheMZBjhRc2crFFV2Md0zKCq+Dl8wuNsp1D5suskqEg0R/M
         sNpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=KsgTXdxhoZqr87e3LJ9WxeBJYkpmrTxR0xSCH6iSmyE=;
        b=QDFOA5i+DjO8fDR1sXBB9O9YXnADbxPIwCCKJ31eXPmn4VpXfU+VySSZ2VA2Bms9ph
         20XfIhNvGYCttZZ2hFWbELEStBYJl921IZqC4ETha/9zOOCZY/+4s1XxWnWhm+myXV9S
         6y1ZFot0Ry0UNVh3d3EQUX5ShFXmUj25wHqR91+buT3+nHszcBXkqfgwBSZu5fQjv+YJ
         uSk1erZ95OrEddcBrbLWxlk1e16cAueb6L8EVsDUv38zOFQsD7wsvcJj1vH+stcE2He8
         vx7qlOtY2FmEQxbxukFb8UI2QS3r03CdkArcbK6kO+w5yF/6nIWSjRGZy8dyiEMRP39t
         I8Kg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533CKROU84Y3HO6KMRYHBY9CNCKnVmf+X5tnSaDOUTW4hFxnnFbg
	Wi91xhrqS0/UdAgNKnvtgDA=
X-Google-Smtp-Source: ABdhPJw4RrHujiavxJFiKRUbft+g+e9K8P7sweZfTton6WtSi3eTJsTItBmEgrL3lorcJw9SmBGI9Q==
X-Received: by 2002:a05:6102:414:: with SMTP id d20mr19654474vsq.25.1627453668504;
        Tue, 27 Jul 2021 23:27:48 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9f:2183:: with SMTP id 3ls128074uac.9.gmail; Tue, 27 Jul
 2021 23:27:48 -0700 (PDT)
X-Received: by 2002:a9f:2427:: with SMTP id 36mr21083926uaq.35.1627453667818;
        Tue, 27 Jul 2021 23:27:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627453667; cv=none;
        d=google.com; s=arc-20160816;
        b=UCKSAKlPeieGFsmRtJGKS6BdoobOwIrGG6IMvaa5Kr37ZdG0tJbJkpZVzR5HQ/rpJw
         +rfOqnPp72LospvkOeVCLmpwu5SjBOUddfqqhXHDPZ4K1T5TNaI2yXhi+T87PBQuR1WU
         3NFEhuv5jZig9ugh/aRQt1xfbcSsg9fjF+CtTHTerhOICUFAMGqixTQjIzit/orbCmVK
         tXZqNfLFRyVezKY1wDK5xK7SpjVLq1dumWwTdo0rmaZ3qo1KLGQl4xspoTZDt6LkJV5m
         qoJwotMKLMthI0iOSHQthfOioiihFwVU2Mvx+AMd+Yzc2Rl8FeM1txKDsDwf/TeMASrt
         yxbw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date;
        bh=4mAzmnFj9np5KLcuMOgpok6S31ycx4S1Eq3JS+BUNjk=;
        b=JqsKJBDGSQeB+6YUWjxz+a61U5Z8pmBxrjUd1lYtIriNMIzaldRWv2U3XnwOdoAZY8
         Np9opfLZnVoVrblGCbVO6iT9ms8o/yj7FSxkD2NUy9q7fMw9pHv19d2ny7e6nAkHq0JX
         +igUbKmXK8KDsedE0yt5cMehWDiwl5YTOait/oYVvz4L+ITdvHxUCVM7p8urR/xNpjeG
         Hh+vpfR9BqXLdGthPzWxoO74p4i6+ZemC5ZsjBn0MC/06SQzpRv1Boy61dxG3E7FvqKG
         TkVPDqLD75yrq0YCfx2eFSA2lg+m5VElfUwMhKoyQ8+8BA/M1hCSpl4FycLuvTROiFS8
         mb0A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.115 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga14.intel.com (mga14.intel.com. [192.55.52.115])
        by gmr-mx.google.com with ESMTPS id m184si44548vkg.1.2021.07.27.23.27.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 27 Jul 2021 23:27:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.115 as permitted sender) client-ip=192.55.52.115;
X-IronPort-AV: E=McAfee;i="6200,9189,10058"; a="212314514"
X-IronPort-AV: E=Sophos;i="5.84,275,1620716400"; 
   d="gz'50?scan'50,208,50";a="212314514"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
  by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 27 Jul 2021 23:27:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,275,1620716400"; 
   d="gz'50?scan'50,208,50";a="475561285"
Received: from lkp-server01.sh.intel.com (HELO d053b881505b) ([10.239.97.150])
  by fmsmga008.fm.intel.com with ESMTP; 27 Jul 2021 23:27:29 -0700
Received: from kbuild by d053b881505b with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1m8d2O-0007mt-F0; Wed, 28 Jul 2021 06:27:28 +0000
Date: Wed, 28 Jul 2021 14:27:13 +0800
From: kernel test robot <lkp@intel.com>
To: Ojaswin Mujoo <ojaswin98@gmail.com>
Cc: clang-built-linux@googlegroups.com, kbuild-all@lists.01.org,
	devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Stefan Wahren <stefan.wahren@i2se.com>
Subject: [staging:staging-testing 108/110]
 drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c:185:16:
 warning: result of comparison of constant 419244183493398898 with expression
 of type 'unsigned int' is always false
Message-ID: <202107281404.92mJzKla-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="EVF5PPMfhYS0aIcm"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 192.55.52.115 as permitted
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


--EVF5PPMfhYS0aIcm
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git staging-testing
head:   39f9137268ee3df0047706df4e9b7357a40ffc98
commit: 7b9148dcb74a004a4df10df3af9239a46dfc2b2f [108/110] staging: vchiq: Combine vchiq platform code into single file
config: powerpc64-randconfig-r011-20210728 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project c49df15c278857adecd12db6bb1cdc96885f7079)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install powerpc64 cross compiling tool for clang build
        # apt-get install binutils-powerpc64-linux-gnu
        # https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git/commit/?id=7b9148dcb74a004a4df10df3af9239a46dfc2b2f
        git remote add staging https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git
        git fetch --no-tags staging staging-testing
        git checkout 7b9148dcb74a004a4df10df3af9239a46dfc2b2f
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=powerpc64 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

   __do_insb
   ^
   arch/powerpc/include/asm/io.h:556:56: note: expanded from macro '__do_insb'
   #define __do_insb(p, b, n)      readsb((PCI_IO_ADDR)_IO_BASE+(p), (b), (n))
                                          ~~~~~~~~~~~~~~~~~~~~~^
   In file included from drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c:16:
   In file included from include/linux/highmem.h:10:
   In file included from include/linux/hardirq.h:11:
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
   <scratch space>:225:1: note: expanded from here
   __do_insw
   ^
   arch/powerpc/include/asm/io.h:557:56: note: expanded from macro '__do_insw'
   #define __do_insw(p, b, n)      readsw((PCI_IO_ADDR)_IO_BASE+(p), (b), (n))
                                          ~~~~~~~~~~~~~~~~~~~~~^
   In file included from drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c:16:
   In file included from include/linux/highmem.h:10:
   In file included from include/linux/hardirq.h:11:
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
   <scratch space>:229:1: note: expanded from here
   __do_insl
   ^
   arch/powerpc/include/asm/io.h:558:56: note: expanded from macro '__do_insl'
   #define __do_insl(p, b, n)      readsl((PCI_IO_ADDR)_IO_BASE+(p), (b), (n))
                                          ~~~~~~~~~~~~~~~~~~~~~^
   In file included from drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c:16:
   In file included from include/linux/highmem.h:10:
   In file included from include/linux/hardirq.h:11:
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
   <scratch space>:233:1: note: expanded from here
   __do_outsb
   ^
   arch/powerpc/include/asm/io.h:559:58: note: expanded from macro '__do_outsb'
   #define __do_outsb(p, b, n)     writesb((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
                                           ~~~~~~~~~~~~~~~~~~~~~^
   In file included from drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c:16:
   In file included from include/linux/highmem.h:10:
   In file included from include/linux/hardirq.h:11:
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
   <scratch space>:237:1: note: expanded from here
   __do_outsw
   ^
   arch/powerpc/include/asm/io.h:560:58: note: expanded from macro '__do_outsw'
   #define __do_outsw(p, b, n)     writesw((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
                                           ~~~~~~~~~~~~~~~~~~~~~^
   In file included from drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c:16:
   In file included from include/linux/highmem.h:10:
   In file included from include/linux/hardirq.h:11:
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
   <scratch space>:241:1: note: expanded from here
   __do_outsl
   ^
   arch/powerpc/include/asm/io.h:561:58: note: expanded from macro '__do_outsl'
   #define __do_outsl(p, b, n)     writesl((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
                                           ~~~~~~~~~~~~~~~~~~~~~^
>> drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c:185:16: warning: result of comparison of constant 419244183493398898 with expression of type 'unsigned int' is always false [-Wtautological-constant-out-of-range-compare]
           if (num_pages > (SIZE_MAX - sizeof(struct pagelist) -
           ~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/compiler.h:56:47: note: expanded from macro 'if'
   #define if(cond, ...) if ( __trace_if_var( !!(cond , ## __VA_ARGS__) ) )
                              ~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/compiler.h:58:86: note: expanded from macro '__trace_if_var'
   #define __trace_if_var(cond) (__builtin_constant_p(cond) ? (cond) : __trace_if_value(cond))
                                                                       ~~~~~~~~~~~~~~~~~^~~~~
   include/linux/compiler.h:69:3: note: expanded from macro '__trace_if_value'
           (cond) ?                                        \
            ^~~~
>> drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c:185:16: warning: result of comparison of constant 419244183493398898 with expression of type 'unsigned int' is always false [-Wtautological-constant-out-of-range-compare]
           if (num_pages > (SIZE_MAX - sizeof(struct pagelist) -
           ~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/compiler.h:56:47: note: expanded from macro 'if'
   #define if(cond, ...) if ( __trace_if_var( !!(cond , ## __VA_ARGS__) ) )
                              ~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/compiler.h:58:52: note: expanded from macro '__trace_if_var'
   #define __trace_if_var(cond) (__builtin_constant_p(cond) ? (cond) : __trace_if_value(cond))
                                                      ^~~~
>> drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c:185:16: warning: result of comparison of constant 419244183493398898 with expression of type 'unsigned int' is always false [-Wtautological-constant-out-of-range-compare]
           if (num_pages > (SIZE_MAX - sizeof(struct pagelist) -
           ~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/compiler.h:56:47: note: expanded from macro 'if'
   #define if(cond, ...) if ( __trace_if_var( !!(cond , ## __VA_ARGS__) ) )
                              ~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/compiler.h:58:61: note: expanded from macro '__trace_if_var'
   #define __trace_if_var(cond) (__builtin_constant_p(cond) ? (cond) : __trace_if_value(cond))
                                                               ^~~~
   15 warnings generated.


vim +185 drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c

   152	
   153	/* There is a potential problem with partial cache lines (pages?)
   154	 * at the ends of the block when reading. If the CPU accessed anything in
   155	 * the same line (page?) then it may have pulled old data into the cache,
   156	 * obscuring the new data underneath. We can solve this by transferring the
   157	 * partial cache lines separately, and allowing the ARM to copy into the
   158	 * cached area.
   159	 */
   160	
   161	static struct vchiq_pagelist_info *
   162	create_pagelist(char *buf, char __user *ubuf,
   163			size_t count, unsigned short type)
   164	{
   165		struct pagelist *pagelist;
   166		struct vchiq_pagelist_info *pagelistinfo;
   167		struct page **pages;
   168		u32 *addrs;
   169		unsigned int num_pages, offset, i, k;
   170		int actual_pages;
   171		size_t pagelist_size;
   172		struct scatterlist *scatterlist, *sg;
   173		int dma_buffers;
   174		dma_addr_t dma_addr;
   175	
   176		if (count >= INT_MAX - PAGE_SIZE)
   177			return NULL;
   178	
   179		if (buf)
   180			offset = (uintptr_t)buf & (PAGE_SIZE - 1);
   181		else
   182			offset = (uintptr_t)ubuf & (PAGE_SIZE - 1);
   183		num_pages = DIV_ROUND_UP(count + offset, PAGE_SIZE);
   184	
 > 185		if (num_pages > (SIZE_MAX - sizeof(struct pagelist) -
   186				 sizeof(struct vchiq_pagelist_info)) /
   187				(sizeof(u32) + sizeof(pages[0]) +
   188				 sizeof(struct scatterlist)))
   189			return NULL;
   190	
   191		pagelist_size = sizeof(struct pagelist) +
   192				(num_pages * sizeof(u32)) +
   193				(num_pages * sizeof(pages[0]) +
   194				(num_pages * sizeof(struct scatterlist))) +
   195				sizeof(struct vchiq_pagelist_info);
   196	
   197		/* Allocate enough storage to hold the page pointers and the page
   198		 * list
   199		 */
   200		pagelist = dma_alloc_coherent(g_dev, pagelist_size, &dma_addr,
   201					      GFP_KERNEL);
   202	
   203		vchiq_log_trace(vchiq_arm_log_level, "%s - %pK", __func__, pagelist);
   204	
   205		if (!pagelist)
   206			return NULL;
   207	
   208		addrs		= pagelist->addrs;
   209		pages		= (struct page **)(addrs + num_pages);
   210		scatterlist	= (struct scatterlist *)(pages + num_pages);
   211		pagelistinfo	= (struct vchiq_pagelist_info *)
   212				  (scatterlist + num_pages);
   213	
   214		pagelist->length = count;
   215		pagelist->type = type;
   216		pagelist->offset = offset;
   217	
   218		/* Populate the fields of the pagelistinfo structure */
   219		pagelistinfo->pagelist = pagelist;
   220		pagelistinfo->pagelist_buffer_size = pagelist_size;
   221		pagelistinfo->dma_addr = dma_addr;
   222		pagelistinfo->dma_dir =  (type == PAGELIST_WRITE) ?
   223					  DMA_TO_DEVICE : DMA_FROM_DEVICE;
   224		pagelistinfo->num_pages = num_pages;
   225		pagelistinfo->pages_need_release = 0;
   226		pagelistinfo->pages = pages;
   227		pagelistinfo->scatterlist = scatterlist;
   228		pagelistinfo->scatterlist_mapped = 0;
   229	
   230		if (buf) {
   231			unsigned long length = count;
   232			unsigned int off = offset;
   233	
   234			for (actual_pages = 0; actual_pages < num_pages;
   235			     actual_pages++) {
   236				struct page *pg =
   237					vmalloc_to_page((buf +
   238							 (actual_pages * PAGE_SIZE)));
   239				size_t bytes = PAGE_SIZE - off;
   240	
   241				if (!pg) {
   242					cleanup_pagelistinfo(pagelistinfo);
   243					return NULL;
   244				}
   245	
   246				if (bytes > length)
   247					bytes = length;
   248				pages[actual_pages] = pg;
   249				length -= bytes;
   250				off = 0;
   251			}
   252			/* do not try and release vmalloc pages */
   253		} else {
   254			actual_pages = pin_user_pages_fast(
   255						  (unsigned long)ubuf & PAGE_MASK,
   256						  num_pages,
   257						  type == PAGELIST_READ,
   258						  pages);
   259	
   260			if (actual_pages != num_pages) {
   261				vchiq_log_info(vchiq_arm_log_level,
   262					       "%s - only %d/%d pages locked",
   263					       __func__, actual_pages, num_pages);
   264	
   265				/* This is probably due to the process being killed */
   266				if (actual_pages > 0)
   267					unpin_user_pages(pages, actual_pages);
   268				cleanup_pagelistinfo(pagelistinfo);
   269				return NULL;
   270			}
   271			 /* release user pages */
   272			pagelistinfo->pages_need_release = 1;
   273		}
   274	
   275		/*
   276		 * Initialize the scatterlist so that the magic cookie
   277		 *  is filled if debugging is enabled
   278		 */
   279		sg_init_table(scatterlist, num_pages);
   280		/* Now set the pages for each scatterlist */
   281		for (i = 0; i < num_pages; i++)	{
   282			unsigned int len = PAGE_SIZE - offset;
   283	
   284			if (len > count)
   285				len = count;
   286			sg_set_page(scatterlist + i, pages[i], len, offset);
   287			offset = 0;
   288			count -= len;
   289		}
   290	
   291		dma_buffers = dma_map_sg(g_dev,
   292					 scatterlist,
   293					 num_pages,
   294					 pagelistinfo->dma_dir);
   295	
   296		if (dma_buffers == 0) {
   297			cleanup_pagelistinfo(pagelistinfo);
   298			return NULL;
   299		}
   300	
   301		pagelistinfo->scatterlist_mapped = 1;
   302	
   303		/* Combine adjacent blocks for performance */
   304		k = 0;
   305		for_each_sg(scatterlist, sg, dma_buffers, i) {
   306			u32 len = sg_dma_len(sg);
   307			u32 addr = sg_dma_address(sg);
   308	
   309			/* Note: addrs is the address + page_count - 1
   310			 * The firmware expects blocks after the first to be page-
   311			 * aligned and a multiple of the page size
   312			 */
   313			WARN_ON(len == 0);
   314			WARN_ON(i && (i != (dma_buffers - 1)) && (len & ~PAGE_MASK));
   315			WARN_ON(i && (addr & ~PAGE_MASK));
   316			if (k > 0 &&
   317			    ((addrs[k - 1] & PAGE_MASK) +
   318			     (((addrs[k - 1] & ~PAGE_MASK) + 1) << PAGE_SHIFT))
   319			    == (addr & PAGE_MASK))
   320				addrs[k - 1] += ((len + PAGE_SIZE - 1) >> PAGE_SHIFT);
   321			else
   322				addrs[k++] = (addr & PAGE_MASK) |
   323					(((len + PAGE_SIZE - 1) >> PAGE_SHIFT) - 1);
   324		}
   325	
   326		/* Partial cache lines (fragments) require special measures */
   327		if ((type == PAGELIST_READ) &&
   328			((pagelist->offset & (g_cache_line_size - 1)) ||
   329			((pagelist->offset + pagelist->length) &
   330			(g_cache_line_size - 1)))) {
   331			char *fragments;
   332	
   333			if (down_interruptible(&g_free_fragments_sema)) {
   334				cleanup_pagelistinfo(pagelistinfo);
   335				return NULL;
   336			}
   337	
   338			WARN_ON(!g_free_fragments);
   339	
   340			down(&g_free_fragments_mutex);
   341			fragments = g_free_fragments;
   342			WARN_ON(!fragments);
   343			g_free_fragments = *(char **) g_free_fragments;
   344			up(&g_free_fragments_mutex);
   345			pagelist->type = PAGELIST_READ_WITH_FRAGMENTS +
   346				(fragments - g_fragments_base) / g_fragments_size;
   347		}
   348	
   349		return pagelistinfo;
   350	}
   351	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202107281404.92mJzKla-lkp%40intel.com.

--EVF5PPMfhYS0aIcm
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

H4sICMryAGEAAy5jb25maWcAjFxbd9u2sn7vr9BKX7ofmlh2nMs5yw8gCYqoSIIGQEn2C5ci
MalObStbltvm358Z8AaAoNustdNoZnAfzHwzGO6ff/p5Rl7Ox8ft+bDbPjz8mH2rn+rT9lzv
Z18PD/X/ziI+y7ma0YiptyCcHp5e/n73/fhXffq+m12/nb9/e/HraXc5W9anp/phFh6fvh6+
vUAPh+PTTz//FPI8ZosqDKsVFZLxvFJ0o27e7B62T99mf9anZ5Cbza/eXry9mP3y7XD+n3fv
4O/Hw+l0PL17ePjzsfp+Ov5fvTvPdu8/77/Or3eXHz99uv643de7/fxy/+XDly/z3X73+QNQ
v368+Pj5P2+6URfDsDcXxlSYrMKU5IubHz0Rf/ay86sL+NPxiMQGi7wcxIHUyV5eXV9cdvQ0
Go8HNGieptHQPDXk7LFgcgl0TmRWLbjixgRtRsVLVZTKy2d5ynI6YuW8KgSPWUqrOK+IUmIQ
YeK2WnOxHChBydJIsYxWigTQRHJhjKYSQQmsK485/AUiEpvCcf88W2j9eZg91+eX74MCBIIv
aV7B+cusMAbOmapovqqIgG1hGVM3V/1uhjwrcLqKSmPslIck7XbvzRtrwpUkqTKICVnRaklF
TtNqcc+MgU1Oep+RKY5xBHY/P89sMnYyOzzPno5nXLuHz012y4xoTMpU6X0w5t2REy5VTjJ6
8+aXp+NTPWi2XBNrEvJOrlgRekYouGSbKrstaUnNFmuiwqTSZO+0Q8GlrDKacXGH2kLCxCtX
SpqywMsiJRgNz5T0DhMBw2sJmDucaNopEOji7Pnly/OP53P9OCjQguZUsFCrqkz4ejgXl1Ol
dEVTP5/lv9FQoeZ42WFi6ghSIp4Rlts0yTKfUJUwKnBZdzY3JlJRzgY2bEAepaDBjhwXIY3a
u8VM6yQLIiRFIf+0IxqUi1jq462f9rPjV2cX3Ub6Yq+GjXfYIdyxJWxirqSHmXFZlUVElGFj
dIfLEm+zvq2PzVmqwyNYeN9xKhYuwRpQODDjboONSu7x3mf6hHpNAmIBg/OI+VS8acVgS802
murTPrZIKkGlnrOwNm003d64FLFjICiQqt+Y6rQWflrL7KeBcu1GeyYz9NJPwu5p6KgQlGaF
gnXl/hvbCax4WuaKiDufNWhkhsV0jUIObUbk5qI0yynKd2r7/MfsDJs028Jcn8/b8/Nsu9sd
X57Oh6dvzuFCg4qEut9GmfuJrphQDrvKiWIr/7p84qCMXlm8DVoXB1nfrssIfWFIwcKBoLFu
l1OtrgwlBzcnFVHSXAwS4QKm5E438IymJTbtOHY7xicmOhyqZDa91ZJ/cRy9G4WtY5KnxDxO
EZYz6bmWcO4V8MYKYhHhR0U3cCWNrZOWhO7IIeH26aatKfGwRqQyoj66EiSk4znB6aTpYD8M
Tk7BtEq6CIOUmWgCeTHJAU7dfHg/JoIvIfHN/IPJCTh3e9CkRgturgHN9cenh+ZhgIfgPV9n
OZXGVVngPXP7zGzgE7D80thQtmz+AYbYoWj1NhWRLRMYEyyhOabWEbn7vd6/PNSn2dd6e345
1c+a3M7Gw3UQJ8vV/PKTAUQXgpeFdXsAX4TeG5ouW3G3eSXDhBpYOiZMVF5OGMsqAE+7ZpFK
zEHBnBgNPKO3IxUskqPhRaTB4oCTGnIM+n5PhR9KNSJJuaAqDabHi+iKhdTTOSiPa1tcEbiL
8XTPGZOhp1+NGzytJA+XvQxR1noRjgIeAQvpn05Cw2XB4ejRxyouqK9/3HcAf4p3R2wCWTi2
iILZCQFh+E5H6Gv2w1QV2DkNoYVx/Po3yaA3yUtAVgivBxWINI73LgF4AfAufUNHXbBgSm98
MEOLGtGD/v3e+n0vlTFfsCHohvWtNWM3Dm44Y/cU8aE+Zi4ykjt64ohJ+McU8AZjEaGRCTmY
VjzdimLglXfuoe/0VUFP7yDPRQHYFmILYZhfRD8qBX8RUo0oGms38F1HkkHkwyCsMOJTCTcn
Q4c5QFZHY6YhVtygbcOj6YjIQH+9YQStXfqMUWnBl4AAFo9Le7CeG5eKbrwcWnDvBCVb5CSN
Iwsd4OziyN8PAvMJnkzAovqDMcb9iIlXpZhCHyRaMVhsu7n+Gw8DBkQIZhu/lrnEZneZYUY7
SmVFHj1Vby7ecISD5o6gQuigOPbZBB1Nos8ZZlPhlAMSLo3BfWLyLoegBgyVFdSH2YRxkPTW
Mz50R6PI9D76ruF1rdxAqgjnF+87HNamzYr69PV4etw+7eoZ/bN+AiRHwM2GiOUgJBkAmt1j
74z/ZTcGqM6aXhrg73j/wa7wrCCqCsTSr20p8Uf+Mi19fk6mPDAuNbSGgxAL2uU7rGudlHGc
whYS4MNJcnAH3KdiTVLLipe1gdFOyNokOzXVty/CD/1xFKfjrn5+Pp4gBPv+/Xg6m6EcSKKV
Xl7J6sN730w6Pq0+GJa+D5yL0lwgvQakOIkL6QcPdzSOYURB3FAxkEBKFtq0uECEuZAjqoGn
ZIrarBXNQtEmo9Gd13jOhHC61BkV2rirKBRuXcDMSDS5ky6NpGgdnLVlGUJtuNyJTW9PBNgG
HWS137A0zr7yHd4ReAryZm72GXEuAtr6oVa7xqpjBmABnlEeMWLsqLMqa4baUmUZAcCZI7pX
YLPIxkiO+gRYfjP/5BfobnLX0fzjv5DD/vp1a4MmqWrAZhOQQ7RiJG8wxOpY2iBWMRMQF4VJ
mS8n5PT19osJjOblzfW8XzOEd+GyiZVkWRR2SlqToUWckoUc8zGlBbByzOiuZ7KmbJEoS3kc
TWo9Rs5lYWofJSK9a+GD0YLkbaYNg8v5pwvXrE4CY54xBQEFAO1KGzETCeE8yihYVPMPYD8M
fcFMqj7L8coa/DIm9n62G8awC10GumQZnJDrQVlARYMDEU1JFqSuSLvNmCkUPKCOxQFc0QQf
Hms08BgJ5c2lnxe9xlsB78K6r2Rt7uGiedPQeWJ504f9aJEQCOQU0x1F1juFh+0Z3arhE/rz
4pmRfTX6gRDKZ/RuKVge2zR2Iw5JkQGFgJdelBBG+RBHQQqIB4ggmB+zR+FxE01g/AOg03oN
Qj5YOkDZG1A1VjDDABX28Pi7QaITTqiZQ7KqCjOZo5tlciGM1OEsPtX/famfdj9mz7vtQ5Mt
HO4DGAIIoG9tTzhkujytu47Z/qGe7U+HP+sTkPrhkOyOgAniyRGaBgbF7Lhb2S2tFgXj1mWq
hAotN+Aqiwnzjt/xWdSAc8l9NdfKYKa6L68vvJgAWFcXkyzo58JzTsn9zXx4X2wMTCIwQ2sd
NVEJ2OwyHQV3ZjiIiSIwwmUA2FpNvAct6Yb6kvSaXuHzoweON8yiFAsEeUZwDxYKgR+xDIxB
dN4GQwHuv4pK84mxMUc0paHqnrMyiGhTRwLchgI2OGnisWb6AcbHZmlKFyTtLGi1ImlJby7+
vt7X2/2Xuv560fwxr837pXZ7jt3TnlAmLAZn0Ru29qG1JfeWSkfjrqx+P0LnXt3znHIRgd+Y
X/Vbk0XaEAyPjHQD9qFSBAA44GTj0bS17tQXQRmm39JawyPInBT4rINZGZ/hyECFIrRciin7
DRdZKaVWQghomCjSdH9va7JEhTBnaVLbZ2XjEljchenkM6sLbdgtCvgYTL1EHpaeoIcepkvr
d+d/mzdDC4Cub0GN1qBENI5ZyBBFt27Yv3Cnq37vpiV47AkaO6PUvGO9PI+tVOvQbA+XBpbd
Mxv2EI7n+F4CE2gewU1wBMrO4xjwJFyW3YX9Z7AZ+ukc+hCviWGIwEBXe0FXAD1kSVJ2P9Jb
9LBNoDTKfnfR4va0+/1wrneY4v51X3+H9UJgPd6kxva0iQTL6PloNDVeFJc9Ruon9hvYsAoC
ZOrLGPFCuaiqeZTs9abMYbmLHLOsIT5mOfaslFS/GyiWV0FbS9DNRVB/5wxWgVECMJXDWnob
TPY0Nf22GywSiZ0coebHZa7f7isqBBe+t3wtlmfMoeg16x4TgGRjLIx4CNFBa249Dgpsq2Lx
XZdKHguAIrfexR1bZuhv2oIVd8kIfyuSR01o0x5WRQp3BZh2ms4teZacEBGhgdNZfgX71CaP
fZ3YGHygY8qtnZjtUodNHdT0da6Z0usgByBhcPcJjNG4cnxC8bLxXewfRBrnye7do1kTuAwY
RqKxge2FKaBjy7LRETaKU0kSg9/Lik2YLNy+KFniOiimKEl4WzLhH047cyzY6KqUPFsjaYhR
4CssxEpN6DdkKBqOL/euuC4McPqDf2O5ndb9pZUi02zPy/o/S+CtcU3D+NXdkYAb0CEpGrLY
Chd4VKZw69EmgVXUmuLpn24gvoW7rwtwUCcdGcljhTwQ4evcFenvqR4BLhzPLGUZdt9KqbyW
jzFSLe1VTllTKtdnKXz95ysIysAEmi+LKZxchUBrDbfWYHCsaGMLWcKu5db7QJumuboMsOIG
tv61nLhOoYGCOC+XaB7MJLCc6kNr9eh1p3GSIV/9+mX7XO9nfzRo4vvp+PXgBngo1nrz1yaq
xboiRWKn114dyc3w/oPP7gMJsNn4XGN6Iv0AITMcfe6oqBUwaVKLuVNO/M8xrVSZuxIDf+wY
Jj1G2xsoGoCNcMyQIuyKbJ03sk6A+Z95WjYqlUD/M1li5Aq6b6gTYpt7z2R6Lj6DvjYaJv/X
+IQtm0Kh9v25YpnOMPnH11ACzLBKbt68e/5yeHr3eNyDxnyp37iGR5eqpAAMzGKDAG+H+RNM
/23zDqHvm82SoWRwLrelFY0ORQyVWCMQtln4aB3IhZeYsmBMxwhzIZjyPn63rErNrXRCJ4Ah
oU8DOz4gH65U6lRqjbmwUeupeo0mwmx8n7DnuA6U2y+QquzWe/DGxjGsW6J5ePdPgnEIsKlg
U2vsuwub4h3/WIWYeCVtNgKTi7FP4bQOYOa2IKm98KYYu4IViLvCjT68AlXcRt2jiKTYns4H
tGAz9eN7W4zTx1NtNN2HqL5rISMujcB7SGDHzCIPySxnRHNl2a1GB2Y6DMlD2hS2sq8RMuIk
aMd4k4fC8gKdlHh8hdnVAflklncBaNpQ49SSg/h2IMKPqjvfrkJoOAFgThXDDLW01kIGM53P
h1HKvD1IWUBMhQZ/BD/6lDhRgD7CSmTrmzFAyTLG14GHkSOyAfueoprn+DYfafOpjaERmjeF
SN0h0L/r3ct5++Wh1t9zzPTz8Nk4joDlcabseBR+2DFrKyRDwQr79jQMrC+aeEAWFGMH775O
zU1PPKsfj6cfs2z7tP1WP3oj7leTel0+LyN5SeyCkT6Z1/B8NSNN46G3oc0K/kIY6CYCmwiV
SFUtSjf7uMTUEJYceLSi6adbRMJVkZZu5DGSgUicm7GULFLAgYXSkE4/V/apQo0UnTBZR0uC
ojZaUD1jC0EcUcSOqGqV6t8rh+yJzDyb1z0d6W3KWK6b37y/+NxXUVovgMvMArYQXuUhgXvq
r64RENFgwsKvbfYnGC31vuDcUoD7oPQDjvurGCC3n6UhIfdltrssQvMM2KZJzPF0akHveReH
+WaJMYCD0GGLcId0zbFvYLBadv57gPyKNqEWcfPcyMVKxCIyDf30bRvOrK91z+vzX8fTH4C8
x3cSdG1Jzeco/buKGDH0DIzlxv4FpiVzKG2TYRdhBt6jATp+u4TRcUaEr4ALn9cKVeBXXgAi
4zuz2641KLoGdrDZWeE/IhDtY3KX1Ptds28wIn40IVi0mCh2TyHC+nRxOfcjo4iGzjZ0wVxq
hNTw49KeB0n9FTyby2v/Yw8p/JU9RcL9E2CUUpz39XtwisOh9dQqT9t/6Ho/2OlceW2v0QTr
UKky+8tI2PAmTrlz8FpPb1/qlxq09F3rva1vFFrpKgxurePUxEQFHmIsw8Hhd1SEjI4+abqu
YvSVinUCwtaVjixj/8YPfL9mdHxFb3272rODeLyyMJDjhYFmjyUVadfr0BcTq4nkK1cSBeC/
pp/t2wkxJma3evDRTOUy8DPCpHmAH03r9h82EUteX9tFRI0t3Bi3JUtfNmZo6tGsJPYoFvNO
HYYGzisDaPzgOU3p2eW+7M5x3XqShtHpqOONGQkVMYu5BkKvQIN2Ajdvvv73Tfto/7B9fj58
PeycD4dRMkyluxNAwkwN834O1vJVyPKIbkzz0bHi9eTxI7u88hV/d1whV4W9lx31g2+asT9i
7tjhqAS+X1/hq+g3uzVjn46e4cs8pn8sDtVke9YNrc2UXl3aE2iZU2Wwhkge3Cm/LzOEpne0
FcioIr4pN5+L+xghydnI5uAOEO9XWP39AfU0FD408yzgr4mOoK0Qp6d2/1z5nfogl/vU0uB3
r8S+tggR/fBj1bhDaSp0R9No6ZU2mN8qMKkwbGUTvJu9+hnd51TmGUCkuxwBtKxIfSgVNz43
izITaajtrVDCXBD+rmTmB+GaqUrfxwealSXM7KsN7DX6cxI7Y4kGG0b2FRGbKijlXYWV+4ae
3PYfK7dQeHaun89dzruF1COWwzDh8xBEZoJE2sG2GZ/dH/V5Jrb7wxHz3efj7vhgoG0C+M0C
evC7ikhGsLh6NeElBM+G/Rdc0u5rXbJ5C3DwqZ33vv7zsOtKoKxkU1DcUnx18yr5HZbE4cNh
HG3Mq9XTEw8domvz4O6Ig5vbnXt1gv2ZktxSArhXgvgsMHKC0NgLJCzW9u/f5p+vPrv9MQlh
+ig9B5xZ1Mwp6jfNaLXyzGy1wVbeWBa4TgGNw9OljvqTMendLc98+m23QHWAFf408n+8FuA3
kNOcyJsOheBfxtpy/zBoBOtmHZr56fpAlTSNlVP3aPJjSlQp6Dhn19SwPLzU5+Px/PtYh4cu
bkPi7EESskDJaCoDrAVW8L+JBYtV6nSIpMrt0GCrJTLdRmpZEuHzYHrSPAPjaCQ3VZeEfTRK
cabW37VaM3zGNqtCOkplnc8a347tTKAmtZ+Q2iRmec0wXmCgNh/fko7xVNf759n5OPtSw8Qx
C7jHDOCsDfHmRsa4pSBUwfxFoovc9Gu/+altvGQT32ShKf/se6gKCTOCHPzlVnBpGrSHi+YQ
SxkYPjE2NgR+gHNcMGXnHZGce9UHOaBYFlIFkkyidFyXlNfb0yw+1A/4Xc/j48tTi5lnv0Cb
/7RHbtlr7EuJ+OPnjxf+/4sSPRjz5fKQU+TXV1f26jSpYpehtQOafFmh+triUn2+1iGO4QP/
1SL6LJIkgC6ojQNZbAVI6RqQgf+BOSYsxdT50B78l+I87bBM52+nzHdTExMyKznnPcoiDImI
zJMswixkZHSMRfjrbnvaz76cDvtvtTuWIAWLzEC7Izw6BFA0OXxlcGXeh1agTR4DlFGbaurF
tO8NoAPNF1bFeM+zb8bQf5k1sdh4cmGSkXxM1g+3VYh3qoUeYvv9sMd3lr8O593vPtDRtVWS
XX/cvLKEsJDVZjMeFBt++GSejNliQXPvB7+tiNhokStThyfmPBQPHnatJs14nybtBy+byouE
psXEZ+OwPSorvO+NYAjziKRWwU8hmh5jJrI1EU2BX58Liw+nx7+2p3r2cNzuda18dzfWunzB
TGr2JJ20jqAj821IVw13gxjFu0MrXTfWLMzXqcHu3zp9cl2BgMXTTwNm5tpdWO+VyP9zdiXd
keM4+q/42H2oaW0hKQ59UEiKCKW1WVQ45LzoudOeKb/O7aVdPVX/fgBSCxdQ9puDn218EHeC
IAiC3H32fjmCkuzg3KGAxjSq1Blc3YJVjtR7F22sU91EBB1VmenbURzdEElwpoTfRp1YuQ/D
OpCle4TcJVrAhjMjwveXEv5JDkVZ9IXs3cKvpVwkQpefKtn9U/wPe+h9JE0hQSzkCBMTjZVF
hQnqvEx2YVxolUnE806DqEQ6mmm+JGBQTrEzDEA+Oo+qmxyCx7xOxXkLfefDMkEXH2hiGU26
avKzwEsKY2mx7ffuqBnPZWRQ1pCqGXrLqca5YNB78M9YtvTZKiqDY34oPBKF9bzFY6cK+5s+
S2PlWKU6PJfsXKgDZSJItgvJ8Vtfr+FXzX1OpdFbyzMZ/8PdoHI+xYmg/9IAK7ojjVwOwwzI
RwU95QOR9dIYbo7y33js1E/naUsqQMaQMll/oFoJUDwq7hW3VCCKo0ASum0OnxRC9lAnVaGU
aj7bV2jKnGjQTxLqfA8TQDmoFkBT3qu5CseBBzVjmCazQTZtYD+vXOkVDo94I3LWfnCXrl6d
XAmyIwpf3OlYdBOYDHEc7cN1cMyA68WBkfxYN5ieskUUfkmmbnxf5TdMv6WHVG0bw0n8iIa7
iKn081W5+Mxpx+QAwpXp1FQjiNs0ita/kqFCjPXnjrrTLbOhrc6WxDElxZlSceE/8fL6RZJi
s1TIa9Z0eCeG+eW94ymaapLtvN0wZm1D2u4vVfWgjkJokL3vscBxtVNPvLTBqBEAUrlsGG7d
cfCi6WIdBOciDDz3PnQcnstqIkQ5lzYFCHTVq5EDeNLQWSRk0mZsD1vHhDRMFqz09o7jS/5D
nOJJlzPn9uoBwfu233TgcHajyJFbcUZ45nuHjgVyrtLQ39GSO2NuGNMQChRotDFPW3+KFUNp
h12i+FQMGB4BRGR2zC1eOh7OM2M25TmoGBUVCUEg0NNeQCa44jtqEAgUL86lD3LTTQDs7sM4
og+mJ5a9nw7hNsMwBKE98yLrx3h/bnMmWSMnLM9dh0foWD2V1JYQsQ2f/3x8vSm+v779+uMb
D7Xx+jvooU83b78ev78i383Xl+/PN08wEV9+4p+ydfj/8TU1h7meZQxKjii78wR9FBLcN7TK
FMrTM2WdwnBTyua6vW/xOjspexRJIwKHpayYbU/EnWlWoLOWnHyXFBkPSUtrKjw9KmsqI1kQ
0eaOilIMJvmqB4LpUxgr3G+LTAph9FYnbXwI4mbHk3ro0M5rxLTzRXeHG9ffBzd/g63M8xV+
/m42Guy3crTRyfvPzS+l2uJ5Ut/gvVi+raCbWJi4dFvyugAp69zYHuRbjTNl0Q1Fxb7//OPN
OgqKGsMXf1P+5eZknXY8ooLDrZWyXwnHhFfebZVQtj3BUiV9VwzIMjf45fX511cMmPiCMXH+
+1FZH6ePGug2YZ3QcpwRtEhdKCuExsZS0P/qcfin63jBNs/DP6MwVlk+NQ+iFAo1vyeJB37s
LzW9zZglPrjNHw5N0inTcKaBJkBf4V7gdrfzlFVPxeL43c/j/VqFFelvDxmZ7F3vOjvqfrvC
ETlEone954YUkJYti1x3IKBsOuHswnhHwOWtrZx5iyvPVjl5BAEzSSTzc8Y8I9A+TcLADcks
AYsDd7PFxSwgvy6r2Pf8rY+Rw/eJQsE6Hfm7PZlsldJyZmVoO9dzt/Jl9T0b22sHBCLzoqL6
rc6vvXxWvQBNC6pn08n65oK1sP2Kh4FKjyUVu9QnsoqnpsyOBchVcQlzu7qsb67JNaFi8ko8
+DdLE6oCUAzbmGNn8d1W2sUdCz2qhg2IxoAccT7MUXrM9JU39s0lPQNlK9Nhms7GxEtamHZU
acR5LDFa+lveTWQjS/LUKpFBlLIp6MVEnyljUidlo3TxCvmUqrDCmaRiSdSCoKbNoUsI+uno
3VLkrmgtZJg6ZGFPFwxGUZGbt4WJR6lI0p5ImxUZ6Bh1lndk8n2V0c2/ps1vw23zXDGGEhnH
bWHBgENlKU+CtYh416HpDjboIByfzGwZOrqTltu1ftcig3+IpD+f8/p8oTovO+ypTkqqPG1q
uhUv3aE5dcmRWiPWIcR2jusSSaNGcKmokXFNylvoWVgCqe9aNrQYR6QtyFKtMOhbWwW7uxb8
nMdM4siKJKRdV8UM5De4aVvnxIASRShDW9O8IAVdVxWBUN7lAx4kwj7Ixq81h6BVlO2WQ0dH
OgadKdzyKJ/LId3Lpr2YssnhX7jUmjdBnsnuUzrPBAUEO73jEeCO3qxPoLLf5mrk+fHXEz9a
Kf7R3KD6rhiSlFoT1kLB8ZfywVjETuCp1hIkgx4PKwVlyuBwWRxaJu+iOLVLrjppsnQMLSgO
5gfTJphAgITGQLNgUC8ErSVL2qlk2ndNiRHJWkZtTAQHrOdBMZIfC1WQzPWitTuKGi2c3UQZ
awZKNkEvFcsG1cfLBpPawQkz0O+Pvx6/wPaJOifpe0opEAZ6cb9VPlfgYfPU85uyRdsWa0pq
OW9bdfcDWsH8noZkmERqWya9Eb5aIDw0H1fbKIUBWcRmWCyXR7xgp+bICiNRvFliS40/tpI1
J7Mk6MTbkDKX47cpGw+VInET1uL1KUQ4y6EinaDbtIqGQWFTtrNS6vwknlNouSuz8vFHG1tF
uQ49WSw5tYPRukQFztcpToPkODqTRFC6olFOPlb0kAS+K1d2hYqhDQaLSXZhEh5V7zDB/mPs
6hPV9isT6ytfEjYrUOVMC6C1QmQM6hXPh4e6YXT1sNc3P8Z9Qq/GCVmwNO27+kSVdijaM0hO
5ZRctL10RtHpTptzMgm0EkaFt4YS7FP4aemOlsmcD9/uUo5yJqrJJo6gJVPdQh7TjrQlzCyg
MnAWuZFljJ9wWOyBK1cBlDonQ6XLbPXlvunl8yYEeQ5rVyDpHtoCXQKGB5XO69T7/ufWC+yI
ag42UMWMDKto+YBnvdwnei3YTDcpeJIqWSbN5WHRXKZu7S6w2cUYlYvviTBcga5mmgqVhy08
jKsJW0J8e0wRp9hntriqHMSQSLIXHxKryzDnXf3x9e3l59fnP6HYWI7095efZGFAKTiINZpf
tMhrOT7qlOhs5VGKJ+jVhZY/M0fZp4Hv0IcbM0+bJvtdQGmSKsefegtxqKhhptPjd+bpcjpS
COJZbklFS6Mqh7QtM3lgbLax/P3kHoRuLmrbskoZgLw7ylNzWF9iwnQXrQadE8g+PBfD7px5
ysDj76rc/Av9GYTN9OZv3368vn396+b527+en56en27+MXH99uP7b1+g8H/XRgbXMCVdAWl8
XdRo/d41KcJpX7kfqTENQ5FocyGtvNjf6f18wGMLdNO19A/it02tJ9alFZOvPvJ5g/ObGs5Z
cl/Q/qxilOC7BtwRTd+WabDtqoLGhuocvn1hpFScirQpG9qJDjnyKr+nlGmO8dV0p7azGuR1
pozzU32fhGuL1uT4rliZoPnEkhV69Kj5FNVJzQaVirJVRDUnN60/DHrFP30OopgOB4sw7EA8
SpPg05OrH0oeVatlWvXhbhg0ydZHoaeN3Oo+DAaDcWAq16SPqlyNsMiqNP3yPNKudmkFgm4Z
GnamCgY2fZONw7VdJLcDvaVGTHgmWKcAh095Xeg91xWFbWJ2t77WSMxPvcB11OZEH3gQeqW2
8rCi6nNttWSt8ioOUnotMdRSjwFFjPSugG1rCNsW72qrNHuo7y6g0ndqctxtbjy0su0K6Zca
dMtC556p41FvOjzATPqC3Boifq20ygmTgJ7MUNrFxVC2e8segfdQmijfTmFWQNv5/vgVF5J/
wBoFa8jj0+NPrgKZvsx8XAnnJiOl5u13sThOyUjLkbrWzMur/OijbenT+rAnX+fgEMpibbSI
RYl7QOjNKDD0mUPfuQ2NAb1gU/oxqJUBF3J9vAnEcGGUKmyoD740AdKsZkgZK3yEUxpl2VUl
ryaY+1RCaP+BArYQyENfBlJcX3G3oTnOI2nKV4lKU4za2z3Cl6ItbqrHVxxJ6Y/vb79+fMUn
14xDXfx80j7+MmnalokD3d4PlHnBqf052tM+GPybKsmS0Y/ISOPi+0oOwiNIoNlcGF4K+Waw
jiArMs0My8Gh4L/FXQRLZrPu840gJpfBoIe+vABJxPHMVD8aAY13RleCnnlIaq0zD5ce7Rjl
g96fKextatK6IaFSE8jgfDatjaRZHdLoVz10zERF72prdwJ+6KlNBG95fpCt9wsP/NzimKS/
Qnyuj1JCVH7wgdg2V09TF4wdQbjTR+fIUw/teCzzwUhY1dWQAloV/D4aYwqUK2tTfLIIJ8TK
KnLGsmz19Mo2jgMX4/9vNAYG8vumE/FtCYNoDAEkmg3Jn9oxqFyhw7/S1AIcU0PacAXPUvZJ
01PT6m/HWvbp5h3Tcheoi8rKqa1mgeGNltR9cWfxDkUGHl+xftAbG9VCz2a6Q4a+4NPVlire
IHAd51YtfNMV6jkdEqERyWgFCzayO635QUn0Bk3gwObrlr8nrSXftSlpKOYYIQrvLuQhAiKL
fqkUBhRG1Mg1YurGBQsdTyODHsmK5qgWnZ31/0FCmiVjxbEgd24cbLtMS6Xlvj/GkOCapi2V
HodKoBUaj04MUqhNn1URVQfxIF9U4yMHVVPPdbjg0uvIQdel4g2t3zogvcqEt5r5MaLoTWQd
ubOya2UYMAKDpQCmesuppW3MDH1eswR+HduTsWB8hibbmkWIV+14MtfFpFpumnGFRbLzmA6g
2Aur3Q352ym0waTpaHoN/CiGOy5HpngW83PjcquXeegNjjFaLWYGvhLqdzDUq0qMHzLBKuWH
kaORK1ZxzxS0Ckq2cyYHZIflTbZZisNVVtx8WRS61/nxGk7++oIewfKOAZNAAyZ5IKY8JMJU
L0wgzOmZPYHcackfDLjlxvm1AhI03/KgsMkutGT1PzwA89uPX3JuAu1bKMiPL/8mitGDbN7F
sXh3XqqMQh+zXjqF07A7kOR3c51zfpv8pj0/wOrL38a2Bnl7+wFN+XwDey7Yrz3xUKewiePl
fP0vWwnHNj1bS1Jkfey1/ML00nsmS0oHuDAbaclFmFul89zput8EjMvbyusHYpKZ/Gicnd9S
UL/Av+gsBLDUSGzL7DbguVQJ8yNPOgFb6LApgKETqLlzpFJcUmfyoXJji7FrZsmSeOeM7aWl
HAlmprKFhVBeHGegSlvPZ06sHpQYqKKl6aiJLEqAkR8Gsy5zqqpscHeWayMLS18dtznQNxM0
uO0Wa5MSNqKbLOg2pTn+61W8jZ2dWfMmzcump+oHwhKaBRplZCg+NrPXLH/G6OKmdSKP6TD6
RHu86FzUJRWdJyRHJW42XVKJVli4gd4Epg0plWzoqx69NI/3AZ7dB3hCSv9SOWJrQb2Q8j1e
BhCeQsy7NCOB9OFUX9hoOxOb2ertQVqzdnx3KNXM+0A+7bs8KNK2p9Uh70p8WOcUkJHIlsx0
k/gyLYeEaivcZOy2hhoyRAMhnlhFzpH2LnbCd2YI8sTkY7dL/94Fjrs3a1GI5M3icCCigdBx
yYEGVYg9j7rPJXOEspu/DOxDRR1coKzah+7W7MePh4hYpniqbmjJbudbvohCC7C35bG35bGP
qSrdpSxwtvqLbxq55toqGq+Ks8OEG3mzNHJjopmB7sUOsc6lMfCTYo5lFfTYRlmBIQ52VDVZ
Nuy2+o1VoesRqxI0nLujSgnDa0eOEUB80llk1SgSxvDUbtaDO9CBXx9fb36+fP/y9uurab1f
Vk7Qr1jCiNKcx/ZI9I2gayYvCUSlzipq8UvjJJTk6uIkivb7rfZd2QJbXlMq72ggM6PF6mwm
uNUVK9fO2S7WjjJ7moWKCeG8pEHM8RV0t/MPP9a4ITFUJfSdTLYW9ZWLmrQrGr3TkMkH+zf4
GJ+fbMmu7nNCVhnoH6pr8E5tAvrOscn3sdy2BkhAyPsVTLf6JMjdLTTZRA+WBqzdd6vOzpHn
+B9ie0erWNj277QjMEWetc84+l5XIJNvFVKI7qKPFDaK3x8cnG1LSZmY/GS7TtR1PINpo06D
1ktzwCrLwmQmI7xitreg6JZgscdLPGGwuTtSnRNkKigO+5iSf8KnliYfA4/QRCcotEJRQKhl
E8S/ojbgvneGKb5VN+SpWncXmYn3xVhgKO3kwdRRFpcIIt/FMaLMtqfYwgjbrw9ysjLb3irK
aW6tXyvfwLx3amG5MkRwkhdnCD6PGDNyifzZTFg9P7089s//titqeVHzgJyEam4hjvfE0ER6
1Sgn8DLUJl3BqGaqei9ytmrND+l8+lNAtlWqqo9df1umIYu3LR2xjO62Sln1YRS+l1H4ngaI
LPvovcYghxtWI9z+NHYjSzvC7mVrkiPD3prrpg4NDH5IGIaAvnOpfWIf+nvhkLW82mIZwcan
6GSdmKIGNotR6RJl4MCeGMv3BQNKXxAirWrvo8ghZl9+dynK4tAVF8mZH7cpyit3E4EH9MGg
TNO73bv1gfPmqG195k+K7m4ysmoGaqtRiPtzsgd2pBc54d1Nv1/Osck0rhbFCKbHifyWvLO6
mYuXdr49/vz5/HTDC2jIHf5dBCunFh2P03UfY0HUnIwlorCyym0jQN3TR6kIfHrIu+4BHUEG
vUaS87CaJgLDiZmexxqbcDO2ZT75xRipzy4x9oSzKx15j4N5sfhCql/l1NmqcPjt8ZfjOloD
LAcjq0uyAne6uzQn4wGiLadzeTULVjTUKS6HyuZUpPf6+JsPN/Scge57pB4mRughDplsOBTU
vP4M0l+ntiJUgjbGNW8RQRxS/eOBGZXkZ6dz39hKqFlExRjV/DA1NKOeAhPTPqmSXeaBeGoO
F6OtTKcGHW+sDclqPBkFKaC1xOQLoSXUt+NAR4SYpVMqO2lzIvcooGhuHGqZ9iyIHUfjldxt
1dLMct1e8WuaocegrbgDTopRjoktyMI/Qe882kFBCKYqG4/8rRJtNmS97wW+Nv3V98soqbrc
7+DU5z9/Pn5/MqXtFLbGFJOCjkuMvWmSrKady4U4uIKgsA5tsTzoEoZTPX1K8ks9vtmaE10v
pMES6dm06THeRfps7tsi9WJXHzswoPaOI1/nIVpVrHHH7AOt7emlAT34My4r+tg8ZFB0t7pa
V+Ms2Ts7Tytu2caRr7cgEnfhTpdLmnq0dAGeoBI9A+qsY3aCcZiqSqtdv4t9XTCUXjzdkVJa
eoq9omfRtwxyjum7YSuHRwYDWvE4NHscyHvXrNQEUEYWgd9VgyF5LunBDRzH6MdrFfv68j3P
X3PELM5BmyMJtCQ3DMw+8t29a6xofKq5OjX1/Tg2ZkbBGtaZcgskbaAbweZgdGZZeR3uX369
/fH4dUvXS04nWDUScatIKVyT3k6vQ025kKnN31ylyl1dvEU/q53ub//7Ml0KMHysgFP4o48Z
84LYU9KYEGUxlz9wrxUFTBqQQWenQpYgRLHk4rKvj/9Rgwtc51ty+AANpbgtDAxvKH8zyFhF
RzlTUiFq6igcrm9LNbQAnm/LLnaoDaLyse9Yy+pTtgGVw5ozQPiI/LsJxHSdds5AA5F8NqgC
Lg3EuRPYEDciBss0KKQdNwZR4PGQ6SsoAsfnl0tK29LC/fJ/QR9S9HFBnO6xnAvz8Z/68Q2m
ojm9l2iwWeS7sh/rSg+sdKnxV3rlOopjtgIoF0FViLJLqxx7S6q+S5fDjSIS2MNcoJLqo8Gl
Q+UC5LvknRKJQ7kEpwIuXW2AQkt0dJnH4s6h8lATdeE492TZ0FOEIqfqLcoFGIrxmNQotvuu
KYkmnP2ddHo/tER6GHC+ve9N/gkYkzLpKka1XcY03zEDd0NqFApNjAdGMzCM1jmQA/QY7fxo
Rz50MXGcGJFglbp+FPtqGLYlzR7Wm0uf9MrzB3Ny5c6NWWV+BYDnsIr4IgqdhBq7ANDhgSZY
XByuzRTPxTl0fXI+FIcqIa0SEkObD2aaBZoSrpV2p2ECP6XB9mQAOdm53ma/4xP3ySk3G67s
U28f7GxAZJZ1AqbwDkZhZtjijS5z7QlpIwDPknLgkg4AMofn0pUJPM+jWpdDwZaU4BwhXVYA
XCpVUFld16XPZmUei5VeZgkd0ulAYXH3tkKEpJOfzLEn+pgr4ooDsIr4RGtg9G8hHqmChKFP
WS0VjoDsdg7ttkU95yFPGdRy7wmxXqWtT67MfRqqj2IvQMs8Pw63RmKV10fPxcBL87TWGboI
JJZPLbfp/zF2Jc2N60j6r/jUfZmO4U5qIt6BIimJZVJkEdTiujDcLtcrx9iWw3b1vPfvBwmA
JJYEVYdalF8SOxIJIJGpGpdOo62OsAuNGcbWLEr10VFfLy6MFMZmfh0neMksFt4SA25/IDEs
FyeJ8VqgZkUSjIxgSvVRauip9gYKhDptUTlCs8X2fcY3PCVRgqpMeNZTxRspJAArWb+eAN34
dAJI6nvICGiybGgT1RmPhJlEdra0ko1RVNctE5+IH4SqrV50TW31YlSlWBdgDIGf4048bTp0
JMIfM49qBGkH/w7Lga7BQ7bZtEtqS96Sleeka/T7PWkP3VC2pLV4vR8ZOz/0vOU1gPJEDupO
WeJQzXFnoCVh4KACtyRVlFAl68qko9vBxX5ii3GM7GYEABdnh0o9/pBY/MQNbetS6KM35NrC
h1SbL2oOojZTxHP40oRlSbHw6oJM14hFSQQsQRCg2h/FkijBTTEmntZLrrOsFoVzW9aB7yG9
0tZRHAV9hzVAey6omrA0Y76GAfniOknqmZ1J+jbPswgRL3QtDJzAQ1duioV+hN5WjiyHLF85
DtplAHmLc/yct4XrIcX9VtGqon3UniDyDO6nduSRL1HZ6r1QBDIeBJtNtu7lt4QTmW45EQWV
krGdJSX7f6HkACdnSCIF3W8FmKpBAc91fKzxKRSdvMUpSmqSBXHt4so66Xtybb6Ruo4WdVuq
C7lekif4gQqJEy/BFCgKxNhJC61T4qFHDuU+9RyL/wyJBX91PzP4Hq7/9lmMPkQe4V2dhegc
6OvWdZa2qYwBUWcYHVXWKBI4y/0CLItrEmUIXXTcnBI/jn3cB53Mk7h4pHiZZ+XinoUlDi83
q84ApEkYHdU5OAJyAcxelvOs6PrQEzR1CkWyH84JYtcnM50phHIwPEGQgtpORRwh0qd9CQ67
Ma1lZCrqotsW++xuck87MFPFoSZ/ODrzeHpqZNVgTg5G8NSVzB/40Hel/Gp1xMe4dNvmSMtc
tMOpJAWWi8y4ScuOR4VExwT2CYtFylzHLxRWTdss7NVCAgO4jWF/LZbtt8tU1KAwlXjT615f
BMz8rMyjZvoMvM4JMlo4iid1vchy6y/C410qxjSO8rZIu6l00yAfH9Bi5QYLkMVsGQOE7V3I
97bsbk9Nk5vTKW/GayaZKnwgmdzpyok8rJhg44nkLyL1fD4+w/Pz95d72QCVgWnWljflvvcD
54zwTPciy3yzN28sKx7w9P1y//3h8oJkIuogTLbM/gGTrz2R6FO1ASGW/hlDh9rytQRYsxav
L1lkW6QUfbnQ9+AVxje7koVEwXoSgHBxxOVdGofeYqWvV4vffN+/fPx6/XOp320sYz1GMzWq
/khNw1L4+uv+mTb8Qo/P7wTZ57WkbM5QX9Qtv0WQ7+msic9zvcuxzrrd0akFJ2kHdg9i7zjJ
n7pGMQK4TcC+OaV3zQG/Ipy4uCt55ppYRE7HlIeJHcIKTdHXHSQ9u43pnGXHfG9AAG+RkiEm
TvefDz+/X/68ad8fP59eHi+/Pm+2F9qmrxfVs+CU6JwYrCn2BI0gYbNW02z6KT2kDZhVzrk+
bObeeJGFIZ0GFiBE+o+JTx91lC8k60JRuHWJkdl8eCphs1gu9t+caIWmO7cn07mWeUTQiYXy
fSvLDu60sWIwgLRLn4+bQ6SKk0e+8xlNPSX1youcpdTBFUdXwxYZbX2ASVqvFivITSoDtAij
m7uFzzf9Ke8d10EqKLyf4gPjtNwx3IXdMg9zDLZQtHZ/DhwnQWsmHCAvZ0A1Izq/l7Lo9mEf
uQkyKchhfy6RRhmDOyBf0C0VrfMZvNIhH3KbULQx6TbbszTWrMRFPprrpN5hrUS1Rzp5c9Qt
e32OD1ULqKIwNee06y3fkB7MmbG6MQ+zWNXYeqWlJokBcJC3Pa/Xi3VnXJiIycu0L27x8TF6
pl5KWdhsI2mL5+F664zk7ltqq5Mw/F/IdXoQhYqkPnfdKxMeVnCsrVvmFmHp09HSGBfKJPNd
HxcW88qUhTDW0OFBtc6ATY28V5RU8MFiENkrBr19ZTq3+MGziR0/UVMs621LdSVOm6vUQnFt
5W3L21T/gioft4WFn65aQ+q5+ieHulrsLrKme3lCyrXsMZpSlR8iQKz2yIZWNUU+BrLSmOmw
a8BdX5NprZmO6dal5aaDMXEXenhbT0ls6zQbsnqvFU8tuJa53oVztIcfv14fwOXXGOPIUILr
TW4olEBLsz5ZBSH2xABgHttp23LDFPVL4sfoS8YRlM+huV853Vaacaa9l8SO5teXIbK7XTVr
5nAXnKhSeYjLwolrV2VoCNiZg9SZ3iq0ucOVgx5uMng04zYKdm4952wJ1AYMun32TFO9dUl0
xU8X68bpqZuSNyNbnkFOuOXp94Sjt8cz6hnDh5SZ5SE99DgovD76anpEQ0/tdKFva/5WJURr
W5PFXkOufi/DeGUE7FqMLgCGNyO3a3+FhrljDOwlOneyonbolq674NRPMw5jYyBzfSWeq0Q0
R8YI8KGkFK9uPe0ZrQyeabk6ZI5ThSek+hQeRBkYdmUUUBmuOtiRAOZ9UgfC8Dx+MeW268GR
vD6aJJDWSblVgrSmULBKoW/pVr7CD9MBThK6sqO3aDNqTC5GjhybQIAr2CCULUQEVXt3MVPV
242ZbnkSMTOs7COUMSToS34BJyvHLGOy8oz6MjJqPjSjiZZSH/mRXtfxoa9MG/eycp7FNxbo
B3tKxaQPYOo42vfnwhivXdEfLEm02Sak01ux/RlplijhE6w+ARCPQsZgMHIetfqikK2gk4Mq
hbXrA7of15u960PHt/Wf8fCGEW8T2VsjI/FdmFaMIkMKTMogjs7I2ktKOocKPsk8TSaZN7yM
WoeOUR9GtL9dZiy3dwmdO3axTDIP1GBrzOR0fQ5Fb9jToJvJBZRHAunQiHOMgT9gVOrbg6tg
36eirCcZtxJWEq1af2WdivB4K0mMBKv6oNL4Syxlc9uSyHVQ53n8TZX8xJdTYm35GN9e6SXm
dKsGIB5kxVpipfE8TSIrD9SkRPSqG2+5JurKdVCqh1PN0TohiEpBMboS+Pjdb3+qAsdfGFiU
IXKCKyPvVLle7NsihrCxUPuhr83q+dmcTOQv1DSRVzXZbp9uUYfKTEObniKaRFPnHAFc6VQ9
9bDq1SF+HT+CrrHOnWp9ZTFhzEJXgIGjDQhxmWzmAseddk1cMCCj4sT85C0qmqyQmAEDFzan
IHG1CdE1u5ruG2LhsleV+gKj6i1uCKUm4NlaR7CIw2xDFoMTHzorbbErZx7GQfSBRnoQwbYN
H/Pjq1ZZPLPWBlifeZGjjWxBNCfvfI2ipZJBSD0Q+4X2BTshYwqeJGPGk2lsAwyRW6uhdh0z
zqsc6s+2wZ6PuAy7v4k0+TGXTr5GaFOei3w4NlWfbjEJMXNCLNdDWrGAwgfFw/nMAxfu7L5d
5kJyperslspb/Kp54krz0F/hI1Ji2tN/8DfjEhPf5C/WbxQ9Vd64eKlHDjoM4QnccmraAYSE
TCMQyULM0CvVQZ9x2/hgLi4WVVNupWGjPQZXEFe2jlMQT14yNcTFkE26D/0wDPFWZ6jNY/nM
ZlXyZha+J/wtpmOIh4uX2eg2Ei+xSAI3h57ZSlLR3bql1mAv7MUudi42M9GlO/ItIwn0vxiT
lhoLOkZBd/LONkRWtlTE1odCF7vS9FwrXS4y10wsuVAwijHz6Zln2imjKTA7aNTvoMLDd9VI
G0x7axxLomCF9xYDUQ++Kk+y8q0lh8311QS0vbYGWrZBGheqHumNoOr3OrrCdiYaU+KgY5Nj
XoS2sTiAUneaKh4ntiakYIK6epV5Wpf2L16wNgxcvFhtkoQr/JsE9h3oN1/jledYitpHPnr2
rbFYpiNgHn6OozJZPN5rTLiZrsp0bWzzgxq0tFZ3IBLLukwJ1orgrCUILa04nq9cKX67Sc5X
RHm7OXwrXAed9+2RLl6RHUpspQMQ3Q1LPKcan2VMDe3aenelbtwAqc6BdzGnyVJpIb8DWQ9H
LcCkwSnb8vfNIduRrCvgKq5nwcrQ1MXJ05W6sKOoazz8bGq5hH2QOBYVkB+bXfk8ciPHUpE+
wl+2yiz10TbtiVe3qcVUXOUiV6QDCeskjiwTDk68rlSSVFu68XYs1eTbuHXT6IE/LZzHrtis
DxtMQHKG9tTZcmJ73eFY19hGW2K8S1wnStEs7pLECyxqFANj7MHJzAOvalwqUbEpDsc/no9P
f37g5flYoaajMysmOwvSMNdeFvUEzcASOxZYtN3x8OxaExlukQx0eenFnPlKu1PLQ4GZYzL6
R77m5zrXBWCVrsu18gaxyxbO38CkZciKjHlM0UIUKzwCl44SZDLdpFe9HH1vRNd5dxzSQ9+Q
oioy+Hx2xzseFHz+/ab6/RGlSmt2uWsWTGOk++uq2Q798Td4wUynT6vfY+7SHPx2XeUjeXe1
/Ub3kbaGhNB2Eqa6fVVbavzwWOZFMyjR8kTLNcynSMU6RLil+v54Caqn119/3Vze4JRGMnzg
6RyDStIZZ5p65CTRoXML2rlyeEAOp/nRPNDhED/Mqcs9W2f32wJbilnyX9piO+yKqpWHFUPq
ovboH7XmDNmc9k1eaMSU3O31GlBRDhbTCDWvefuVW7kXsPaTBvIc209qXa0LER55KqivAYSJ
7s2Pp+fPx/fH7zf3H7SBnh8fPuH/nzf/3DDg5kX++J9al9LqeNrF1UxHupvRacM28iOdGVFa
xkyvTquqQdqZf0i2Sq/M04Fb8+gZDnXdCgFgjiF7pGUxI4Sp5rEtaX+WpFU8ryM8Wdr2B7Yd
03LK6ygIoiHD7WNGHj8MGYteB4pE4VCScoOkPOW/LsYyohKGs7OIuMPRZtEuph2zBLQWlOwg
AWMqlwe9berD2Swwez5hTZtFo/rL7Cq2JNF+JOg058XyM+DAGolrVnlW455KOdNoIpkVhyWu
8WkRbWpMbxQZ0pIe9lthiBIMpTEuZ2SAQK2ylw6RRNhSIVdnGJ3Fks9IScyqCtMX+HKoyh5f
rdUiMN7S3rBpHfgx1TvbTWF2DLdjX2oweE5Fy4ppPBIHHcWG9GcmYyUx5gMHzhzRx674aKmn
uaVdhjpWnjgixqG3fg8R2CucOtSZKpum9QUXTVTOFduOTuFjryeYNXmqs8ODu2PeoPRWdrc9
kRO29hmzcrQ+FqDWOBN8bJfmwcRW5/iNxMg2LrFw+dNV+PvEkZcZVRdejsxgMaFg9G+9Bdkk
8bH6/W3H602GVP/sDUVNZVSHXXpgs1u1JBsFTjmsQRobs5cCuyOyFgmAqzubBSlH+fKi6lNM
ygloqKHq9vkmBN0mb12zICP6pcXMe7QUstaewFETkDZB2m2xk/9pYh3bAplulGrTDGnXJOVv
DTjO2TXg703vQZZHLlsrT3RiyGSY/0QdTHT6M01czH38tlPR2CQl7v714en5+f79b+Nx56/v
TxeqxD9cwFPsf928vV8eHj8+IHIyRCx+efpLsUQWpTumh1y2qhLkPI0D31DVKXmVyK4YJ7K7
Wsn2LYJepFHghmaTAF093BETjLQ+vgEVoo/4vnyhPFJDX3YUN1Mr3zM7qTr6npOWmeevdexA
K+IHnlkwujGOUdcnM+yvDK2n9WJSt2dDADT7u2HdbwaOza9uf6sDeUTAnEyM8qZ2lEFpFOrO
XMaQTfKX87ZNTk3fZrHwjOZiygC7tgZ4kJzxDyM0ouSMJ6rHNQWAk4QF2bGGKCnWxCkaRnqH
UGIU6WPhljhKsAIxQqskosWPDIC2eey6xtTgZKQV2AUeHu5pnJlt6AbYlwCgASQnPHYcpP36
k5c4eOimkWG1ssRjkxiwa8EZdpGhcmzPPu4FUjRqel55zKRKGpAw5O+VGaEPTda2MbKNyM5e
mOjxAeVNNjoDHl8XsvFitGcTQ+ywaREb44CTQ4zsBz6WiL/y8SkQWrw3jhwrP1nhMbAEx22S
WGKeiG7ckUTzb6Q139RUUvM9vVB59Z9HeIB+8/Dz6c1ox0ObR4Hju4ZE5oC4jlTyMdOcV7r/
5iwPF8pDpSTYBKHZgjCMQ29H5OSXU+DP5fPu5vPX6+P7lOz8TF6D+Or89PHwSBfm18fLr4+b
n4/Pb9KnevvGvuMjy1/o4eFIhdZunpFRJQL2e7mY7qPuYC+K+nlDRRkbq5Nr/KVyb4kbRUpG
xheSngJY+v3+7VPzMYCg3DnD5fL8cfMJc/M/j8+Xt5vXx/+7+fF+ef2kHyIpmHoQ49m+37/9
fHr4uPn49fZ2ef+cKwF7obI9HP3xWnxq/Vz1+87HGKXxA1HVM4ZEZvTN+/3L482/f/34QRsh
lz4QaW+w8EFw8MR2ALIRnKBJB6uWL9t0T7exfdvsjttU7g60LNwfx/3D/z4//fnz8+YfN1WW
j0e9cxtNxaDokFUQgDgvjiWqIK/T7LYqt7teYZTrMnPc9rkXYovczCIMb1+wz9sTdh074/rT
pRmZjTwMiL/erWS/1zMoHgS8mIhp4Dpj4kndYlkpT5KoN6IaiFrmSY2BPJ2QUrDa9ilNHflO
itWbQSsUaRNu4oUhYD6PINIVG1JUq42alPSRNmeMxvSZmdZ55DqWPNIuO2d77MJS6mtuj4r3
iOanY3YxszyVxlx2ubAREJ8ZcmlkJM1hLzsLg59DQ4h2qK7SwRsHnXyl7FdcSWWfc/NhldRm
tUEYCsVJoCCWRbYKE5VOd7zFflvuCzOd3SkvWpVEiq+jZFDoXXqqy7xUiXRG0hrRyjWbTdWk
Wk2+0E5RiwKUody3h169oCG8jcCXldyrQK7Lc9EBiI68sd7XcMNqW+EQjleQQcfa726fwntL
djFF1EJTcTVkKd2c/eF7SiuKq8+mysUlmFqkrskGizsYwI9Ft24IDJdy39/ayqWflUzE8Xtr
+llfDce0KnPmOcySvuisL0UGTFN2cjF5LBeVCGlXRW6MqgPcy3TIYDvU9Z2FG/rV/ALG4VAc
i32PYyq1bg+B4w4H/hBaAtJsFcOpbJGp9PloV21ZKKelqdKqaVpZoLHWKTsojeWTum/To1bS
nigOalmVujKthoMbhbJZ5lwvTS7QMVene+8cIFUV0U+o8FQ7TANHt3h/OFwH2eX/Ymq3FMoE
pkyeaqIkTyc/U7T7tXkCKBc2BplKREbQ2xswLirWRYEtKCNTC+4OBhA/+lAElHUwzQSiZd7q
XTQzcDuBhVw4Gym3ddoXlVl3jh9LpFk4xFYWC5aVXaf5vlbxZl+c0z3qBkVlTB1XC61i4D7q
/1NlY1cBttKS0nfCwNr9JoAOrmmJnQaYmVtXmIkV596CtNDLVQMF/Fb8EQUyzt+p5FxPh9Gm
zps209bSMzhnHSAurdaWWhgKBduUXXEq0adq7NNGaxtwVcdmn+oPXSDjbFLXb4NtXINNpG/a
hg7qOzsy3B72Zc9OtY16Qtms0ouhNcgOXX0QQPYNXuNGQUiXyGynSSPuN0JvjYnM9ye5DW3z
Wh9kM1h6xjQCcl3edg2sp02POcRk8jTbtWMS9IeWw4SSNi83/XkJ7c56EUa/MyL5hUbN7rZ7
UxLQ75nHJSjaaVeSHt9lAqvwdcVbV1MNqPTan1Kqhmpl4McIl0wcZf+4vNM96ePjx8P98+NN
1h6mu4rs8vJyeZVYhbUK8sn/KC7kRO02pBpSgkYbk1lIWpqjCoD6q64OjIke6KAwmn1KD70W
Vjig3/CkC14aNGE6EDcl6sRUYjpnx86WAC23t+tRL9ASV9fWZGuWDk5GoOIHbTQycdtm2BiA
T4gaklnrfLHP0XqUCsibf1/u37+Lfh0PkpbGjCJ+PYhzFHmug83QL9+COHCuzI7JPytSLRkT
rvD82Bly/Dx1bj+LW6kRZ2sGIT3Iy4oqnEs9Db5Xx9eQoJAg3cXA26Ko16mu8E4wk5Z/28rC
PAJvurLY59UdVXn224HuTVA7OfXDdX5i8jh0EHlsssXxMltHla1TUVUWLnB0u+6zI5Ph/FgO
Roo8tNKX58ufTw83b8/3n/T3y4cuLrjlQFpiN9YSft7SVXfT6ANCQrs8t8nKmatvKJcm02cw
rwewR0v7Xt/AqEzsenqT6ltnhancL4DgPNSC8oME2Gva68qkmGYHZmcs9/aU6Bq7mAiUYzj0
ZUWw8nI1cVsd0IbYnq9WZut6Ke2TlCW0WBDBCcq1viizkciY+pUj3hKNx8HXh6NWrDPR5aap
LaL6HZxaYtIf4vfgzrcmidJ+TRw3GsgavzedUsrgpndBBIxmGWbhZss3D1lYJ5SOhgXUsnZO
OFwTwlMgrBX+v7RvbY4bxxX9K679tFu1e7Yl9fNWzQe2pO7WWK+I6nY7X1RepydxbWzn2s7d
yfn1FyApiQ9Q9rm3aiZJAxCfIAiQIDB6jAhlcbKfzXUUrtfCjiLMNYo82my6fXOU7DY9htL9
54P7YnN5urzevSL21TSLRVmHOezahAaDTnE6F36gcKfsajdsRq5aj1jch9yqe4w4diOx1Y7k
0mqnjpRAdd5ObjSSFNpV1WnjerLrZCBM41SW2GHkrk/H9JjSpGVFnNBYyOnKeAtGVNuxbdbF
hzS+dg52jH5Od5BuxtiRru8JWYEIr/++JiFIxT47PdOS5gCCHJT+Lqs9gyTJWFsVPe0Une24
qlOA2tI2LMs92F4poNHnNi05I3msbsi8HIOgzHotgrfFw/3Ls/B1f3l+wmN54QZ8haL5Tl9J
xKoU/sKkZSFRpAhUX2lWXb92P94UqQB9//6fhye8e3ZWvdVW6ciqmN4cLOHbNrUnahRKRFpd
OpaL2TsEULs7FAJMCXpRIUvE6Qs+NypYbWy0E912DiUwbq87BQIczsRBiR+bMGL2eqTnUKBH
i35NcKCgi6AFh6N7HKThpy17WVswFONDJ1ZoP4fgA9UE6yWedV1PVMOSglHbtoyeLLwLYe9k
9aFX00g61P/xZCppiG1FkoidfebDogveIvL2V4QKmlEX0TbZZhWEvkpgByh47lxpad3N44V8
AelpRq/DvNsQaT356uH7Nl/MxENrzfdT3/3dpBC0ktGCIMe3M86VnkLyKeRxRHoSbCQs05v1
v9wG9I9UGCf2kx5ZxBLtjOrwxCWeXHkiKLt73DeginhLVa9wUm31DLQ8zbj6z8Pbtw8PuijX
PcdH1O+rMEi79GTkv/jw9LoD1D8XnRgclW7AI9wUVi7kwXqdVILVJ++Jw3O7q/eM3i+zEPeV
RAVAUzY97ldOROXByslzuR+RvZgIHDoUYEdo6xE3oPAct0QjAcESmi/Zdi2jIU7ssVXsvToU
uCRYR0sSvokIE1XCzZBxFs6IM6fj1oRcZckqioKAQrAjZbP3uCBakRKwx3miwTlknp4IbOTB
rOybzBFz9mKWExjfmCmsv42rtbfU9WSp66lSN9Se0GOmv/PXKdyFPRO2CgIwlW+mDxh6uncn
9rSekZyLCHq4AEHONQ+CFVXU9TyY2XffCm4kaxzh8wUNX0QLGm7l3h4xy2BKwUCCeeD7dO67
TO0JVtT4XC+iNSUirhcL0Su3KlRQwslmDiqMhdgm4Ro+JRBtx2Pn5BQxsSeW8ID/NJttohOp
psZNxTtxZT0tQmMeLXJa5ZKoqc5KCoJfJIJgAIkgxjzm8zCfE+MmEAti9hSCXpcS6S1uSfcX
UCtPQnONJiJzfmoES7Lj83BFbBMC7undaqJzq17MkU08nx1pQtFFQUQHxNNp6AzpOsGGbKKI
7k8jQpJlROB/D2LtQ2zoMRVR/snBwWdN73T6HM7mkwIFKVYhIT/VDZpHJUFsuNhOoZeTH6+8
2JwQLAlbha4TyoCZWtiCgJDrAk5MN8AjajxkKgMCTtoS4kjZ08GUrwJK0gA8nBPrJ+XrKCDk
DMJDUrZLzDubsCIiNYV9WyypbfiQMMrtSEMRWnMmVha1kWRlWeGp+owSoxln2zTPCQs7L+ab
OW3iD8GXYSOa6Lud9WOEo1G+JthFu3KgMQuqOQIXLVbU21WThhKcArOYkUqGwC2p8IYGBTq+
0+VuQnLnULh3CyYV7x5j57tw8DyZ1iMl4eThiBocTyOWFIKrBFJxQp9UWjQqeI9LVMdFsKSU
ekSs1oRQUQh6DxTIDSFyFGLyK3r9ItIIo2ghfBPUoy2XNJcqms2IRSIQ1NArxES1Av1+tTDu
xLLtMd6RkliPlgF4jJk+tUYFSfgnWTYivBULJDlFeJkYEmPYXK8DwrJrctC4CZYDeDRfEWPS
tOGK2GQATNkJAN5QjWmDGWX4CzghWSScuhZGBLEwAC4j/lJwcm+TmHclCJLhTbdJ5hAtFgE5
SIslteMinJwEz4G0vIKm4ZQdIODkKC2W1LIScEIOC7in3iU5zYslpdH7jp6VQw/N14BbE3u9
hPskgMK+P6ur2ewjVEHwYaqYfYh08WEqt0CLUDuztzEi/QsF3xfqgNGDoSXQgB3u0RwCkVaG
wZ/ZLnMeU4wUjkugwKnrO/cClhchrOupMQCKBaWXI2I5IxhIIWiu65Ee9gL0fLGkc1wMNC0D
xf9dEvK9vUawCIkFDPB4s1oSIgXDsXBGXyYyHi4WU8aboFhSl1SAWDkvP3oEtdQBISJo0u1Y
rIKpA3NBEdKlLueUiSzCilAbQrtjm/XKh6C0JC2MxySSXiE6AclZIwE9OD06CsjshC6dfEoz
URAQvGO6mbTTzaYuCDSkb8XoJNNqmaQE6y/yj38SnwPyxpZHLAxX1C0ql4c/Hgx98qoyBE2u
YZUkaKJDIvYLZaDLoDBEkwRiTZ5PiJwr0ZQkRFOj2B4I3nTytRiINYUQyY0IeDGbBcT43xRB
uJh16YlQRm6KkNyjAB7S8IUM+O2OgS8nkU5AH+/I1D+Tn4oERPSnUO30pwtKZgg4Mf0I90xy
saYzr+oEIaFICTixCYowQuScANxTDnV0JHwhyLny+UiI+EbTK0iQULFfdII1eWYJmPXMkW4+
smm5I/w4fNMx7eEhCOgZ3lBiCuHU2R/CKb1cwOnp2FDbNcJX5IWQwEwd0gsCmoM2a98Mb9aT
AgkJPEVSB2AC7unthl5fm41n9DeeUd6Qm+9E5jKDhApvPxJsZtRZDsLp3m5WlMXq8xcScHoi
OPPG3+lpPucR5kqYphE+GZtlHU7J2LyYrxcrqh14YLZaUJGyDArKcBRnbZSFOOYVsRF5uAwo
6SoSZ1CHoCLrBtluJ9WGSyDNZufTkh3XUTDtHI40Czt2FEGzDj5AE9J5ZEyaqXUuKchD5rZm
yyCasekqRJpj5Dn0sGvoqBsm7YkgJQmbsySkGicp2jNVq/JpMt15jCqk7el7GqKhTQTha2i/
o28zql/D01nlaXTIEio0DoJtv37c0zzk6MIEqK7akaM+ort9VSXZmRwlp/zhsbMG7PuBiUeq
Q5xhcN8Whigtk4yVuhc5UkwEkS8Mo6C+aTASQlrYCflMvJwPurhum1ex5j06gPogGGsdo54P
a5C4ua3bagjoX8T/5An8B7N4eH59u4rHcOfJ4Bc2tA8L8PniI44nMFZmfQLUARexOE45N8J0
jPgt/JJj20XhNmu77W2bdvyG1UYc+fGDOm93BVUTvqZoGGelDymibfuQ7cbQHgxkiv+a6jgS
HfIbX+HJTVxw3TwxsLxmzXlBIVXcdLpdcckxL9Vks0TD8YkDVXpSnTxFC7/YyYJ5RPamPrNT
5EOEFALmhDV0KzDOeFIwcrlo/BMX3XVVTjd3h39HM6oBRZZvU3ZsSd7FkDAmon8tR0HxGW9i
T7OG0kPDClR1lvFPqM570lcUvcMr5W6u9YoXdrnKu9c/nJ4YCgIXTbM/vhYx+9YWWWUn51Zg
osOUkYKoIT+L3RfqbFiUdcC/dBd6UQxWsWyq3OaAY3m2hFb8yZFjB/7Jrl+FDvCOV0HGBxrH
65yWFS2mjCPmEc6KpR7cQ7DBTU5Rpuc2bUqW49LR04wUvM2M3UNBhhBCKtzg4/PLL/72cP9v
zTt47Fv/0bHkbJd2TYoJWamuAkdUzobFB4hTmX8LUh+X6Y0VwgZ/yagU+q48Qrsd/EknK9OI
imMOParyivLqFnTbBmOYlRhR63DTxQdMgpL0A4aRzYiBEh+yMpqFiw0lmiS+yfRnZBJ2E86C
yAKKSBP6IccIXdjQPvOq1ddmNgvmQUDpx4IgzYNFOItm5nGAQImYgtQp0IgNrUbY+b974HIe
EsBNeHYqddMJ6liQR+H8fLZ5odqyvO0+HbepOwAS17BPvjIxrd/C9H3U4U6gPZ0GcQ4TYirU
uXfAEbtwxq1ezJxuAXAh8k+KR4AuLgzcKUOwd/QQu3Q7irEJPYngejydSrXHrpcu84jRW9AW
+kCwjCg1RqD7lOYta4/22rdzCStgDMYxn60XzoTQATAFakx1bXcAPXVntF0o+92CBU27icoF
7Y1mKfnczR4q4CWfqLNM2zPozX6CNmaY6c1XaZvHi03gMNqQadbhZMyY86evtKo1DrNlUWm5
C4OtnqhDwDMeBbs8CjZnpxKFCk2V1hKy8pXQ94enf/81+NsVWGBXzX57pcJL/nz6gm8af1zu
H+6+C6NOSearv6Jx2B6ycl/8zRHT2zwrr72cwW95XJUuLxXr2cK7GIr83KR75yOMFOKfNFDA
hPEzMa1gjRZHJQn8ZFntucCRDNnnmfeu5H3R726773ev30T08Pb55f6btdsNc9O+PHz9auzW
srmwce6NfCw6WMXUtMeox1aw4R4qyrI2yA5gPrSgwLfOCuophiik7xUV10dPS1ncZqesvfWg
lfSnUCqyWie0PTFeDz/e7v71/fJ69SYHbWTc8vIms4dh5rE/Hr5e/RXH9u3u5evlzeXaYRQb
VvIsLWl7weygSM/1Pl3NyozS9w0ikEEyWqivDHzZRkWxNEdWJcwYCpFnBdk2y2G8ia9T9JHF
d/MZxthojttx4AXKiTqAUIsmT/csvsWVvTNUR4H0HXLIikXuoUfrk6KO1wvSEhdo0MiM4MkC
eMZAcqPQbNpYxLX7pQNgb5gv18HaxfRarwY6xG0FPSKBfezYv7y83c/+ohMAsq0OsfmVAlpf
DX1GEmeUDGx5AkPBkeKAuXp4Av7+407G9da+yMp2N0yIDRdWuAs2gtXq0O6YpZ0dtla0ujmJ
czHy5BGb5zyI7L9i2+3ic8ojqkS2TavPnnzVA8l5PaOVoJ5k28RgW1EBzodCeLQKQ5NnEJ7w
IJqtzKEY4V0MsuHY3FItRwryakwjWK5C6tPDbbFeLD3pkxWNqzA6JKByLDd0ltSRApPQu912
gpIbiI1x36GhRBr5ifpExme3toYvYuspZo/KeB6EMzL/s0FBzZ3CLN1enAG+oEa+jndrWrk3
KGbLyC1UYCIvxotYE4hiHrT6U1cT3t0kLdX67acopM5GhupEYna31D4jsNuOIQ2wO2cyxTc1
Z4haBtOLloMNu5lR1ntPsSvwzRRRMax2Ky/xiFmsPcm2tY9DMp+3IkiLaCZSqLifngAzveCQ
hIw1OxKs1zNyzPiCDo014BMQN2tHtuK5oilb3WUJLLOZ4mhBMKcaJYTcVH8EwcL3KZkzyCDw
CNYNxfkozIIlOTOblS/H+jDtc4szKAk0X5PyDmRoSC7dMAjJuSzierXxMZkeL0BLZ4JmwLsb
ZcKjMCLaIuHd4cY4wzBbSgh5wdGbmJS7EieLnBq381J6RomO1CqW3HQv4qLi5LyHa3J6AbMg
vZd0ggU5E7jFrhfdjhVZTim8Gt1qTo5DwsM5mQJsIOjPSdwl214Hq5ZN7V3FfN3qzx10eETt
vgBfbAg4L5bhnNQltp/m68k13NSLWH9L18ORAYh1OGRlt3sbh6szBRd3UBRTOilCetzn2/JT
Qb3G7gnK9iweLgqme376BxiX72iYvNiE5gHaOH/+m5uBJtu7p9gOFcat3bUF2DHME+dwmC68
tppiC3GtdYKf7sCJSwxinq1bJAcvoyRPVHpq5gE1gXh528DwzQhmQBxnBcGRfWR0B3FqMd6I
CxfJaknwOSOF7GlKm5cBcddEd/prX2IIdy38a+ZxlxlXtcmahPQP7Ktjh0Y+Xp7oQF73Z/CE
4h/b53j22irWZ2omrXBjQ4PPxDQBsDvRYq080Wk8hk/FzesUe7chuqIRfcOLiQ11sjoSrJaU
qk9Y/EK2rSJKtIm4dVTfnDAQ7r7YJkGwmRr9wRNi8NDhl6dXDHM5JaH2VZ7sMq6FFk7wETCe
EWib5Qizk5NomJNx6YiX/GO2L0XN+G0Zo9dTWrItuigdWImpuvhN1opozGOpnYzEb8LQQenI
8v47s4UYWHP4jUkoMJoY38s0tONZ1DlDYlpood8B37KuYRkdxRSrwUVERoFFJGdBcJ6Z7bJE
THIzNMI4qJLh5C3nCIVEGW/c/Yp46QYkK/ZdkcQmmQw1mQFsOdcrU/CqFtHpiAqvo87I31vE
O1nfCFE+FvjuncUE/GzBCxHeVr+/BkhrlgkrqjKOjzEcsM9fpNzWOzWStNueTFxP9m/A4QOu
X/Y3heejuknMYVF3ls5kDqEU662nAUZ4wLHANiu25hT27hKiUTEBP5twIZLMIlS4ManfdIk1
C+11d+AOKP4kQUOXRFK4A7JSV+wLSs6OFAazY/OsXF0KqkVb3XVmvug+D7ZRGD+IFB3dlvHU
gRpyNWaNs8qtktHTz+RQFenPEipS7xlJEIihd0BONPZCy+XngwCMvz9g6DndPB5EIM0WCSa9
0Z38RlEopJJW+va467NCGCHdsfxdRjocHuVnRg/hN2ydp7Qrqzbb3To4V+AjlKf5DhtqnLUr
3CFlNZ2z22r1IKyPZ0zsmDOtdhDxTR5ridcOyRzlrnNlruCmIGQ8zrJOfj/eZcQJGdCzZo1I
IVZj2sixHPGzR/42s8BNhWP822IsXiKkKwmq0pztqTlQHeu2OeZy09unY+ibQI3C8YPRWzGy
z1H3T4MfsMyklpw1hgMUopIiLRSKrB1pxL6Tb+NuX8fU9aqoojnqycROO/0mDX8Bq2Uwi0cL
Wlh3T7jbd0QKeA1temhICN5TU7kMTkmtrW38hZ65+iD0MLwHI0dgIBAuT1Qdh4q3sK+2uZ46
XQCbrNzbMGyp1iQBE7Kl956Vt1r9oheBkF+f/3i7Ovz6cXn5x+nq68/L65vhWz1kuJ0m7evc
N+mtzIk0MlmFOanIPZPtsROqNVlWXb2+3X19ePpq3x+z+/vL98vL8+PlzdA6GSzzYBmaR5EK
6ElHbRUli3+6+/78VaTCffj68Hb3HS9XoX67stVaj1YAv0P1Tq0ve6ocvaYe/a+Hf3x5eLnc
v4lUyHqdWm/aVRQs6b58rDRZ3N2Pu3sge7q/fKCjq/lS79j7H8tNRNQOf0k0//X09u3y+mD1
Z7Mmz5YFYq7X6i1OlFde3v7z/PJvMQi//vvy8ver7PHH5YtoY0z2arGJjJTXHyxBceAbcCR8
eXn5+utKMA/yaRbrFaSrtflgVoE8z4x7bB8vZeBQX1XyhvTy+vwdvVx8s6jVHvIgtM8BVC3v
FTO8hyBWpa7eiiXciaxzzqk+e/ry8vzwxUjnrEBuEduKNbSRtOcdxq3dVhUtRUFz5bccPeQp
w4OvjCe5SkANTgUUWKjZVlSxngBb0VSFLuB61C5rCkzSRXdCEfm8TAa8CJfkflZVNTqpTJbd
MMrluceesm0jvNd+OX1qsmSfJl19uHWRpuNKDzUe+ffA+oYcF/F8ZKrdPq/yYVKa+EDmxQbz
WmRKN33I+5xtp/iQGUqJAHQxqAXUblQO2d6Mb0QmdsKXm6oMTFA9kFWdzc2TYTCc0FbnIvMR
2eVdluYJ9tlq5Dgm6oCF1ASBMdMO9N4Ww0abm7AM7kkWWaR5zsrqPHxJlF3ldQy2dLDSTvMP
mBYyzq9dCCZ0hOWoGVVSyzapR9iY6lvKr+/Pg2u5TPIDbWouf1xeLiibv8Am8PVJE+1ZzI17
ZCyR186DwX4z+1jpZnFg0VL6WV5cz+Zr3bVZ61TvSKBzgInezMkXwhqR5WmgYQ7Z0sgSrqF4
XGTkMHMjxYyOyBbRPKC/AdTCiwrmnt4BjvRrNklWM0tT7HHbIliTh2IaTZzE6Wq2JJuGOOn4
QZUec4y50MXU5YxGJm5C8vQs7zhpPOYloSvZp0VW0oJNo5LHrO9R8bCoOXl5qBd1zvBvsLiM
OQHMp6rJaBsMsTkPZuGawfLPE4/DsFaLOA+abojtn6GjbgoPw1TnklFmmUZyihe+tVTUody7
p0vYJqtgrfs067OZnWEPLArTBhQDK/Jo07cFolSWXbO8a8n5QTzsERgEKzlpRz89Yq1fkCpg
hzlD7Vb08G7PWnICFA0+dCM7mCkfOadUmbrU3z0gOTSUzt5jS+52DL3Tqco4paUJUQdLYZs2
za1ntR0ykEPL+BTpN3g2fuNZjIikX9mYRPiQ3VP5cuVFrTbr+BTOfMIM82eS3v1NytMW0NzM
M98et9PfaRSqxaQMBfOfvJ/FSzFzJ0buKM7rQnszO8BKgq62JYyAGiJG2vRPXy9PD/ciV4Z7
aQRqf1pm0JZ976+uH4COOHnN6MeFi60fuZz4cDWBWxvDqmPPwYz0RjRp1hFZQBsfccBIzYQc
LYLjrlN0vi2NI2qMbyZeIdil0xpVcfnycNde/o11jROiS1S06DDxOsXyePM5o3UCiQIxavgZ
uwRZsX+H4oSpRaZJDtlOUpB7gqRJ2wPQTC98RbpN6neLg03mo8Xto2S6uIB+vmNQLVdL+gmp
RbWi/RQtKk8UF4MKb6Y/RPWBGteB5wGsReWJGehQEcM/QSx57IPExW4f797Vfnri4uMFKz5+
j2XWwSry8DqiJlfUOlhHXj5DpNSNPtQKII5ZMcW4gsYdWz9pfRT3dfT2aRH5pMpAxJL8/XLK
crr1H5/sdfTxyQbaD0820qblhIBbLwLatJEotRJEN32GrSHktX3gw+mcDeNi7yrYVtUfzctb
8JY18GccBTC6YHb4Ln/3CdcudQWoqYs4JsfFztcryNkimiifrWqR9dL8RnS3jnkfpdz39UDH
k7MetmxA8iLB9hIYgB6Mg+L6U7eP4w6M/TnJaUhQFARFr14AntWcd1aHBvhyFlAenJmqeG6E
je6h+JELXc/02LkIzUeoUbOkXtFdgtGVBEtP4K2BgJ6DER1pTR+hesQ4hOYuNJG0AFxR0MAw
NxGeK7inOXKGNqaH5tiiiYFQX5IPbcYC9HBuGnRpQlVZNlgRry1ofSThfSFrnXu54hU9rliM
2wVAMZW13m1A4CW8wlBGTCxKU99ZwJAAgtCcna0qZNwr3DimKxK9JJpYwNf+z+ThMvEhsILs
9XpOhvhTLGRGE0/UqNrB0pJ+FqyFoA17e8TrXnPkEf5pycESqK0pUbWvjZjoQy0SbFTf99Pf
GzWVTpFi/F3EWTTAiOU4jFhoRMoci7bhYgCDcOEA1wFBqT4fu6XAnrCmw2A4ZUmw3ZhhhGz6
AWF+URdZV+P7U5D2SXb6zdwCDjtLTF+jiD7H1C2hOErcqZGGGs2KBmU8sM9alF/SO0ewMnu6
cfoQxcv5EErCtVV7skV9Qnezd8jS821Z8S7C8LcfI51/kG7hL9ImXOqEo+7Q4+fBO/jQwttN
YU2x/GizUW3j8hDa45SjCIGkOtIXnsJL0Dv2BlHoabnAzqPpIuQh/S47pTZzSWhXNzHl2CEO
hIQDG69ivLq1TpB0lP4OyEGaTqbCXfL9BgtPe7u9CIR/VfG1/5xTEkGfCuli+0HC9UcJNzSh
altM+RhpS7XFbN0oNqyuUflmzeP9fYFHUiReeXKeYhqtVe8+ZhmoDje8zkrbg0mzN/jzzxe8
WbPP/0RwB8PNWkLqptqmBlvwJu5P5hWwv3ftA0SMYHEAbsP7tMVOPInhTYxEkR1ED+t6O0Gw
a9uimcGK9JNk5xqlqp9APJZZThBUN7mLVbgmYW7XZO53f4GYUz7rDtxPoZJweyqVT2Dcess6
LlZUX/v5lE9XuraN7WlSD5xssOKAZHvGCnE9HXVkzVdBcHYbgs7e/s6VwLVN6m0lCqK9cJiA
yXfLVk2qM8w5cfA4OCgi6QSe06sHNo/TqhDxFDKPfwdrC3QRzejdQGI9sQD7Fsh93hPdqH/x
ZY26uJEDU5UTI9teTzEWCmrv7MsW/Y46O/bJcLyW6z8uKGjRHvU3o8rtuoLBNZi+J28LSqCm
qpeYEISazjN1RXRYR8jnRbPWPxmgpHWqsCJcjHZIj1VnGOjxFnb41iu0JdfgGymiaNbGMG7B
zFkmwx0DDYY6K9NRosdUvkiSWdxUwN01TtRyvjWJjLMfS8YPpiTL8m1l3GVi9wuAkTX2Lihd
caCmTz6I6yIUL80NsGwhC++ZAvYg0VwT3D/eMYDy6kwCH0cg3rhZlKoPfbTcsa1VzpodyhAZ
o1tQkb2Sh014VJSRM4q7Vp3EVr1SbMAX+qsXfEpRJJ/6duvCfIkhPfe+NohF6R130UKsipKE
6FsNf5609xQSxvSrWgkaY+sIBWCPbowP91cCeVXffb2IyEZXfHAxtirp6n2Lb7nsckcMWkLv
oYf3BBN0QvAap9wekqEwkv3f66FZv3j9oAew6cEyBBTaeO2hqY577fVatess93YR3dULs59Y
DKui/8LQAGaZhNNaS43lnQpOv4iC8QGLlBS0PNqAgRLf2M0UcLf1yNcSZFrK9tfIxD1MucM+
Pr9dfrw83xOPEtOialMrMtAAE46ArpQ81UfY8yxPCWwej2uSAYgWyJb9eHz9SjSqhkWqtQd/
iocYNqzUI5wIiDwTx0h0Nu2IEQfO+pNUgXcjsY/NN5qp8UZ1LJObzHRnlXEeqvjqr/zX69vl
8ap6uoq/Pfz429UrRtT7A9aBE5QV9da66BJg0Kzk3SHNjaDdJrqf1v76gD+TQUHky/KYlSfy
hEOhxTU240fdEbGPzYwyOyt3FYHRWvNoItPURFrtKYZSyZGm+iQ7K33AzL4OGjHiUBNAfUFz
LtUQvKyq2sHUIes/GResRE220m3MqHhsArHXZdo7qgHId03/Wnj78nz35f750Td9vfFWVzek
jojFici1uquWAMoAWIa9J3yiREmmGVgXW/12jGyTfElwrv+5e7lcXu/vQG5/en7JPtFzIV7N
1sx4xtjDYAmn8TUIEY9+vS1Y2akdyfh4QOBuSluXQPWpp6IOiI9ZHLvvm6FRePpT8ipPjWcP
73RXRiD8r+Lsmz1U4PZ1fAq1xUCrHFUsHYNIRnOqkB5DYCf/+ae3amlFfyr2pMkmsWVt9Jco
URSZPol9On94u8h2bH8+fMcYi4Mocxggz9pUD4iKP0UvAdA2VZ6rKOSq5o/XoEJdj9e1bt29
5meInRZDc58YqVSKLbXcNSze7e29TBxN3zSMcoBVe51xMz3CTFltFErck/evx6ieiT5/+nn3
HRalV1JIzRlfsPlOn+SdKqgEGI0ooWLjyc0RNvdOf+YroXxrROUQwDwn1eD++vlgqSgAqhML
1t/8mrXdxCXnjkxWxkFDjhw5PuYK8x/0D4rfvtmR6qCcSE3N6FHGJGt1EfcF/XE1fGYGOTDx
NNso5BBZGSbyWOe+YwVMwqMewp+qvGX79GP00f+AnjrPPopjp2HjE/x5fvj+8OTKKTVtFLbH
fUx90szMAtf4rkmpqOTpuY2F26QUaX++3T8/qTgZVIYWSd4xsDV/Z+SLU0Wx42wz1+9gFVy8
BrKBBTsH88VKi4I2IqJosTBnXGCki7i//rotF8ZVm4LL1YW3a0XGzSirkqBp15tVRJsrioQX
iwUZSkrh8SW/Hax9RAGPwJ8R6ZdbgHHR6E/eE+PUTJ3UJQ0r6HMdRKdbzaZW+g5s5jvjDmbb
Bl0Ou3tLubbgTUFa6PktMBIBArQShLm4rz2ZhooTmJDIdtsjNUmokeD5XZm2XWxkJkZMtqN6
J31quzLV432LfaUwRHDC1hgAI2nozvXnfk1tZPCQZyW7Ig7FAOoHI+ro09NTecRNzkemszr8
6LbH3c44WBtgXbylSM3gHiZc6WsUFjNIgN52LPRE0Yi/xndjSGWCVaBkUOxVCw2s/OeOk9+Y
nelrBXEtokZLklAn4Td9yN9HC9yTe5qWntKy7Q2E9x50a8GOetBGB53zSHc4UAA7yW4PphNc
CuwqtEpZWZmve6Dx4BF0dsNrBX6HoeF+AJA56SS+LWKQayKEda4XMELtqjSM0bJtkc3Wa7ek
ETq8LB6WVkgHGmJRoI04MGeTzJY2YGMUhSAy7evunHNMv8lMuTBAPY+hNQKjl4K5WtWfCB9P
enAYkHIKj5HzLfz1mScb66c9ZhLoy6R6fY5/vw5mARUhtIij0EwnxVbzxcIBmPPdA61mIJh2
DwLMer4w8mZhNo3ASawkoDbAeJ5anGNgWtK57Rwvw4XpNxSzyHoHYeAikv15e72OjPydANiy
hRlH4f8jRkPHs33BQEaBvqev4tVsEzSGyFgZ+THx98YQBqtwaUV72ATWb4ted5aD3/OV+f1y
ZjwFlRDYLVmcYlgYBuYjteMZdBZbYKiGJXX9JBDrzmzwSpdZ+Nvq0EpPI4vhLtYr4/cmNPGb
+cZqzIYMKceSzXxpFJWJx4qghjqnVhKmqUybAGGkuoQHT6xgiyQ0i8LTH/HYzS4tjvHpjq9A
ETXPLCktT2le1SnwU5vGMvXLoBFKfx6dHC+c8wa1a6viQ7aee15CHM5WTmvtdo6FoArRje2P
q436s+K8SkyQjK9utyevY3wH6SlbhWa0CmrjcL4KLMDakAkCtKH4UWKMvLhoNcxCKkoiYgIr
ybmE0XGrERfOqdeXiMFQ5o8aYLMMzCyOcQ3aPJkjETBzPUwjAjbW1+qdlIj5uJx5RlSnAkMJ
I1RZM1KkZfc5kDPlPdHmrLE+K9lx5Us9hH4YnuKk+QX6vzHFwrg6Ifuq13gmRsbj7M6V+5Gw
yDKrbSPmZLWCIAEKen2I2Gv726ayuzJSlBin3Rm5Ed+fasjh8+xYGPbXM1oi9q+9hLhYaF1R
JfLogtzs0CiR46nvxQPcKE9GENwJ3+LKE0VEJ/K0VTj9WBMrfMfi2TogYHrwgh4257MwsMFB
GERrBzhb4+txl3bNjbRbCrwM+DJcWmAoIFjYsNVGt/4lbB3N5w5subYbxWVuLwcaBakNLaJo
Yck5ALd5PF/MzQFogUNmc2MDP+2WgW/BK8e6YZX/TyNE7V6en96u0qcv5vE3KLRNCtpVbrGH
Wbz2sbpM+/H94Y8HS1NaR0ujO4cinocLutyxgP+HYFKBqd19MJhU/O3y+HCPcZ9E2Fm9yDYH
2VUfOp6W3MzGJlHp50rhSAMsXZq2G/62jS4BMwyROOZr3UrK2Ce1qrWTOr6azShbgMdJNLOl
gIAZ9UoQT5tMDyODXcmaDOX/vo4ML3Pu/LQKFKChwJF1P683dP5rZ9hl+N+HL334XwwIFT8/
Pj4/6QeeNIFuiBVczUkfPGgI+obhSrRZNkJPGTh5+8zrviatGVpFQDDUJPcx6gjLpDwctzqL
unVYJqXZExpHmbFjuwQnqKhpcgHAWriT65deR4vZ0rBXFtFyZv42H6kAZB7SmiWi5ks/akMM
GCAWm7CRwVLNahDu+yJqbOKZ54VbsliG88Z7WLNYrg1zCn/bRzWL5WZpzgnAVouF9XttNWm1
pHRHgZg7pN5hW61mnlGw7azIDli4XnsSfyR11WK2SurQhs/nugHbq/QJMzX9FnZd8uAAVfKl
vvsXyzAyfrPzIrBV9sXaw1OgG2MkBi9u43lVrlQaso8YHpeBPhKKVJ2PJnixWAU2bBWZ2rmC
LgPquF/u3/14DUEHJ1bjILK+/Hx8/KWudhz5kxV1DhbjsShuSRHrFCDTKL5c/vfPy9P9ryHQ
4X9jVsok4f+s87yPhCmdLYXP2d3b88s/k4fXt5eHf/3EmI+6sNgsQiPW4eR3MunJt7vXyz9y
ILt8ucqfn39c/RXq/dvVH0O7XrV26XXtwLQ1JBEAVoFe+/+07P67d8bEEJ9ff708v94//7jA
YNsKgzhCnpmnHwgyEjP1oKUNCk05e254uLEkLcDm5EOzbbEPloa2gb9tbUPADFm2OzMeggms
040w83sNbp8a1sdotph5jlzVniRsK/rkVKD8B6sCTZyrZu0+Cmczalm5syT1i8vd97dvmhLQ
Q1/erpq7t8tV8fz08GZO6i6dzy1BKkDkE1p2jmaBHjhIQUK9kWR9GlJvomzgz8eHLw9vvzSW
GxtThBH5UDg5tLoeeUAjanY2AKERsvLQ8lA3x+RvkwcUzOChQ3s00z7zbEUf7yIiNObL6ZkK
5wOCEPPmPl7uXn++XB4vYGf8hJFyFtt85qys+dIFrRbmOhJA8o5iW2TWQsqIhZQRC6ni65V5
ltTDvFcRCm0UdF2cl7r6X566LC7mIByMsnW4b93pJKaWCBhYs0uxZo3bRx1hXnLpKFp3Uqs1
58Uy4WdnFSs4qcv2OEqXHb6LzPYM2E3C6QiME2yk14HsINKaPlLQ8TZWphh++PrtjRL9vycd
t7QClhzx6JG+u2B5NCMvtgABUk2/VKgTvonM6RewDalvMb6KQn3lbw/BSt848bepwsegGgVk
wjfEGGEnC2hcZH27JBc7Ipb6TdC+Dlk9mxmZZCQMujub7SiW+sSXIG5YbnjBDlYRz2GHJONN
mCShHl0CIcZz7985C0L9rqipm9lCl4R9aZh7PNJOefO2WczMjPcnmNR5TDoLszPsGs5pM8Lo
CEdlxTBdIFFUVbfAD1oDa+hBOFMwTQ4HQUQeEwDCeEjfXkeRvhXAwjqeMm48iu9BluU/gI21
28Y8mgdzC2DmLO1HtYUZsdK39h8hxkyaKUAbilURszJrANB8EVHER74I1qHmTneKy1zNjgGx
ovSmRb6cRdSyk6iVXkC+tOI5fIaJg3kKSGllShbpqXn39enyJu8nyb3/2hPKQyB0c/R6ttkY
MkFe9xdsX5JA0jlAIIxpBkgkExpqN8hxtAjJbF1KZItiaE2vr3oKTSiCPScdinixnkdehL2n
2Wh6X+upmiIyVDsTbi0LE2fpy7esYAcGf/FFRG9d5MxLnvj5/e3hx/fLn2aIQzz5Op511cog
VGrV/feHJ4Kdhv2SwAuCVuaHf736BwZpf/oCBuvTxTZID416ESl9cei7RqDDF69Nc6xbitKY
cPmc1SjV5gkkmSBoMQw6BjXX0KYKgXm+6SarUaH7rpSBJ1DlRTLSu6evP7/Dv388vz6IxAjE
chW72byrK9p7+SOlGaboj+c30GgeCO+mRag7HCU8sNLo4gHLnEyPIDBr3X9DAMzjmbiez3x3
pIALSJGLGBDGWslIalggbZ3btpKnr+Q4wPToFkJe1JtgRtuH5ifyYOLl8opaIqHcbevZclbs
dYFYh+bhPv62haaAGfIyyQ+wSST6YCY1qI2UtDzUM02SZXEdWJZlnQf6fZb8bYs4BaUlGyAj
swy+WOrbhPztlCmhnjIBGa0c0V03KXcFuoCSFoHEWHKzXczNa4/xUqkOZ0vKCPpcM1BgtbMW
BTAr7YFWigyHJUYT4AkTVbicwqON0hj0Xd0gVsz2/OfDIxq+uNy/PLzKeyqnQKGtLnRVL88S
1ognIVbCyWIbhBF99lnT74WaHWZgMRVy3uw8B+f8vKEZFRALY1+EIoyjb9SkohnpyXzKF1E+
Ow8cNgz85PB8LEHJIA1Dbp+jYcIS26fsYwlL5HZ4efyBB5ymtDDl/IzB/paSeXnxRHyzNr1F
sqJrD2lTVPLlgIbLz5vZUlelJcS4Ty/ArjIuWQWE8nkBRGAetrewBc5ohRoQuo6MZ1nBemGk
7KGGYrBKbrSXKfBDbrYmyHpDjCDhn67ZNj0IbIitSTk4YOke5z0Cw7NQLikSrfJv6MC0ybPS
qkC9A3w0i+9DgXiKlykxzdJV7Auz+EO2PbV227OCWqsScw7MUgESrtwCzrCTUgE4BFZm/NsX
VkmSZ8329Xc9PG4dBHpumUXAoHAXMoRaMFHC0cgeV/HOLOPUmpHfqFjRZklnq9Y+3bUGEq8Q
kkIGrDAwdcw2y/XC7F59tgZCixkP6ltqFoGeQxa5ejyAYTlMUuUiZC0L9drJIFUBsUxYHq7j
Ok8sqEgZbg0lvmD3DCOGJLGpUY+mt44ea8WV0dHoCmQzoXjv4PmgzdKY1XYbAHpo6MAxiD5l
GHW8dSqS0YH0j6St03y6uv/28ENLMtdL5+aTmgLtLK7bZaQ7HEswoodMOqhgv4uIMsxI1q3m
G9ZWjMS1LkcGJNTrQpvPLOhR41ar5lkUSErm+RotTmiWG5QlPirE6Jim6jqsuVPiuGk1n8bc
rCxLPKkEUbgAKW9T2m5DdNnK7LQKpjxYsYK4KrZZacb4Aeus3KPXYR0fQFMhpwGTE6o+9baq
Pb9DC2oWX3eYG3A8zxPpD5B71NtZY2wQx9rDinJGUNgzD2Zn9yvxKHzucSeUFGJP8RbsPDM3
wMoFy8ZiiiAbhg65bvukqN9TybokwXUYzNzPcgbLjHoEqNByU3C/K+JD3WF6tDN1ZqlohNj/
RQD7lGjN1p449C91ayMjYhkUw5teu0DpZZrEdjtEPiOLVt6yu9WryIHeyp3wgBI8pE/wftiv
QV08mphunx+pxCySCgPoaUHLZGS9PgEImXekR2JIov6aoz7cXvGf/3oVz0dH2Yk5eRoQMmYG
txHYFRnskIlEj2IaEL0qgY8eq5bUcIDKykuPoBgDEjSs5HGKGVW1nROQKhrRUOmjWamKO4Pv
KD0VqmAcQciQKrQLMNERiKiMdpgdiTGAuU1GEolWI2XHSibT8fnpEmPEkaCPSAHtOlgjJtLs
iKLtWZCJcfAb6uqzj2mII9FRFXYlJ4ep5KHMS+3JrCg+F9EpWUsqBT0eCjH7ohpM9WUI71c1
sMHRu5VOh0Poqbsn4bC6GmZ2e8Cx/FTZHRfPUEVKGs+YyjVxBjGsM6mGVJHAnI6rsGESbtQp
UwRN1HfIcPPArdaZQ0wBBNtCWfXTqK9QIfa7U3MOMfghMeKKogENAz+n7h1E3LRotRAvmPMj
qAkNwUliVxTMYM22RGCnrarlQ2EoGZp2bAvq4EknW4u4ws5gg17fhesSDC+exfa4Dki7bw7V
xFQXdeTOpYCKKu1eYXhDiy0dguOOTP6tsGfuDC+CD4m+lfVQyYPcwsgtG713k5SbqCpO86rt
UUYtQmVy+6oCvH3CQP8eLLJWaBYm4J+KmoJSAkdgUOLwsubdLi3aqjv5J20gP3AxxZ7xHEvl
ZIXQLcw+MDX/IkQ29tDsd8NEzCxiNctnJ2kZTe1Sw8uSRPw6z2xGGmNt4NrGyfeOhUka88yW
ixPUiUtN0QrZYfezR7a3dUo+FQIiZSkktQx3bpeh0IKLBcF0MUqE6Zyu3ugfd9yDQF4zMSr+
uMIY7RkUskmJoVP5Jnigcds82mQHm6vQ0Rtt/yCCBsKouFrXSDFXFN5m8jY7zGcrm7ktGjwI
AAr4QVuRSCVM/2Az7+qQitiHJDL4AiHnWbHETNVC3ni+/X0VBml3k322YhIq+64zpD7o23VW
p5E5cNIwuk7TYsuAXQo9VISLJ1btcIgmtlkfH45UogqrDPV0hwp43Z+CG0q49jUGIYvpoEqx
0Vb4aQd3ler95QWT5YhD9UfpgugelGDUxbgwMhwhKCniJWgstR3KsW/0RNGDpcLGAHxD7u6+
ijJpKhH/ZqxVgrptViYY17aOyZqHnN/qs4QZkUvLU5EWzkgcbq7eXu7uxQWNPQAY8td8OYch
w2Gr2TKeed73DTQYw8oTVh9oHK9tDcerYxOnWkg1F3eANd1uU9aS2B3YS0bgDMGHrRbqs4d0
exLK24P7dQci0rg97+E1GcxoQPcn/KPPpzvk/UcqiP/oQQm/u2LfTJjbNknHAs3EVSF5a+Sa
zn5H5SDFWfVUHf0X1qubAY+LWXbikeiEWvG+NOQDXRanc5+T5UBUsPhwrmQUEXvEZKJ1fyXJ
Lp9ugRRKnT3kIyGn2tamab+s4Z9UvCodPIisY95mdZ6eRydLzXWFCFB3xJeU+9Um1Cw1BeTB
fGYEz0Y4xliiRCWghiy8rs+M006eWZGQ4XfXZ66nlnKeFfIYUjvXzQoVSK5tqBgMwjUG/l2m
+o2LDkVz04/BzKoTyNJc1Sbyk+dL0d4KE1sZuf8MGqU/kbwSV0ckpb1FnIjgvZ+GGVpMvlx5
+H65kpuhcd16Yngn3oLc4xjfgpMH04DLUE0wYoeFnR6uSAG6M2vbxqFDt50MmCzOXRRP42OT
tYb6BbioI003wMw7XQNVAE8N84ka5lK6+iq5BuWxFeE8tW7+vk00HRd/2ZewUF+xjUG+aKpo
k2YwsIDZGRw9gEVYUvJQUhGIOBkqEq77eT/sRAm/y0q1r37Xx8rzBTVgCPeNl/imZW2G6RG0
uTk7XUaIij7enSjnSyT4dKxaZpZCzC6CG+MCGCFVCdtE2vG4OdKqOBLdsIZO63OmOjlg9zse
0ly5bRtnoHsYPdoumWACldECxn6auDniERAw6K3k0Alq36RJLOPAQy3Z7ibddae0yXaUrlVm
uRwNY/8MxZeeXQ91Slq4kGsXecRc6BLSbTGLTVfVGm6XYUz5SsT21fY10H0x6sOtjdcblZZx
c1tj7nhfs3EMWmoMdrysWhgevcREgujrP4kDm4iWsmwoTkGshSB+dmXaivMQsYdgvCHDDGwA
rAiRy2nfJYm3BJcEtk2qKb+fdgWs08AGaIef4qu41WaOHdtqx00hLWE2t8A40MupgiHP2a1R
xAgDxkyyBndO+GuagOU3DEyJXZXn1Y1et0aMdhGdb0EjOsPciV5MtrYrUhiMqr7tdbH47v7b
xdhvd1zsDeS+raglefKPpir+mZwSsXWPO3fPS7za4Bm3vgf/XuVZaqzlz0DmWY/HZOcs1b4d
dN3SbbTi/9yx9p/pGf8sW7p1gDNaVnD4ztoKTpKIXAjtkGwhrpK0Zvv0t3m00ndv78dl6zCa
APnEoEA2N7oiO9lHeQTwevn55fnqD6rvYq82GyBA196AMQJ9KqbxePNJBtsUWBwiUAhhQ6ga
p+b4kOVJk1LXptdpU+qrzHIyY0186Pdr3h2Oe5A9W53ADxJN0mRxWuySLm7A7Nazhom/xgnr
j0Hc4dXU3ozHQqBjNqa0oLkbhORN1Vz76HqqXGs3/Oi57re/PLw+r9eLzT+Cv+jonhk7YEbz
wwGzigz/QBO3ou72DZK1mSDTwlG3RhaJEcfXwlEujSaJ/njTwgT+di3fb5ce3svCzD0juV5O
9IWMp2eRbDxVbvTX4yZmYvQ3Hh8vk2jueY1mtIx8dYQkIK2R67q1txVBSL5gt2kCe+QYjzPq
1EGvNTAnogeHdmN6BHUer+Pn5ij3YGdWe4RvSnv8im7fhq4miGjyYO6BL8xyrqts3TUmrYAd
7fYXLO5gv2SUfO3xcZq35q3piAE97thQisVA0lRgW7HSbIzA3DZZnpt3oz1uz9I8oy6LBgJQ
9a7dMjNoKyjO5mgIRHnUM8EZXSdb1x6b64wfzJKO7W49koKNjXzrALqyagqWZ59ZK2IqjZmi
xrgT+omGjDp0uf/5gn7vzz/w3Y+hd12nt9QO0Fu6XVKkXHgBtU0WGzpUT0IfRyukz+iBfRM1
fnm27DnQhi7GwiYooOMy8w7R0l4hGlvMtIuXnBe//eX73dMXDCHyd/zjy/N/nv7+6+7xDn7d
ffnx8PT317s/LlDgw5e/Pzy9Xb7iSP39Xz/++IscvOvLy9Pl+9W3u5cvF/HkYhxElfji8fnl
19XD0wO+Cn/47zszmkkcdwfGhYrcnVgDzJJhpqwWbBSNM0iqz2ljnGsIIPqnXQMXlJQvkEbB
8lyrhioDKbAKj0kGdOgrBAZCPIwx6WHWk+5g2WiUxgkoPUY92j/EQ0wrm4OHw46qkXavprAI
u7UaTI2XXz/enq/un18uV88vV98u33+IsDcGMfRzb+SDM8ChC09ZQgJdUn4dZ/XBSAhqItxP
gBUOJNAlbXQP7xFGEg5anP0B87akxzifXNe1Sw1At2x0mXFJQTSyPTEoCu5+gHLAKVxRo3u/
SHknDyXtT/e7IFwXx9z5vDzmNNCtXvxFTPmxPaSlGaZXYux0R9I8+vmv7w/3//j35dfVvWDL
ry93P779crix4cxpV3JwQKmeXHGAkYQJZ0Qj07hJPNnxeiYtaO2uH5Zjc0rDxSLYOH1lP9++
4WvI+7u3y5er9El0GF+d/ufh7dsVe319vn8QqOTu7c4ZgTgu3HmMC6dn8YHBf+GsrvJbjGtA
LMp9xoNwTfSep5+y01TvUigapNvJ6dtWBKR6fP5yeXVbvo1d7tlt3Za3ZkreHkomve/bsyW6
kTeUL7ZCVjvqkxoa6f/m3HLiG1AU7JxLNglLQN1pj5QnVN8DzrPTbyp24OHu9ZtvEAvmjuJB
Au1az1ZnbPypYK6vQvLw9fL65tbbxFFIzJ8Ad6e64MeCGBuBnxjQMynRtzm7TsOtB85djmni
Npgl2Y5qn8SMTbTGQICFUCLE6F40z4Z6l1SRzIkxKBIyXsuA7Oqamr0ig0UmPFknJ7EpkoAM
TNOv5QMLiNIRjBVPfhgulu7mfGALPXrLCI5c2oKA4XnxtnI355talit1k4cf34xr6EFoubsY
wLqW0FDK4zZzeYU18dwBgqJ0s8tITpSIPnS2w1+sSMGccjelmPHW/xFvF+QX7nBLR1B79nbi
7ym2uD6wz4x6kmZtDxRrYKLIqZ0vbWqfB/gw8dSBxaAAMKeb7U21y4ilpuBj5HLJHc+PP/Ct
+IMZJnYYsl3OWtp26neGz57M7hK9nk/u7fnnid4B8kCpPZ95mzjCtgH76/nxqvz5+K/LSx/H
0bSSembmWRfXlFKbNFsRZ/5IYzx7g8SBdPP3RJDErauKIsKp7PcMTaoUnQLrWweLSqrKK223
pEe905qBzGs2DBRylLz1oMIfsxPlz2eTCmvG15cuLYVuXW3Rccw4pO5FHSOUbuxmfzOv22Hf
H/71cge24Mvzz7eHJ2Lrx+holPwTcEqqiXBqcsvsXw1N0ZA4KSeGz6m6JQmNGrTgyQaMZCQ6
8XS634fBKsg+p78FUyRjB5zVrJFNrvqhq6NSPSEGgHrYQe2iDjeOJIgxdt4fwiZ4vfoDnTgf
vj7Jd/733y73/wbjX/fs+gh536JtVrLmVl707n4bAuv5uK1hWbLsas0/qYd0W7DoQJ402hkg
+k6wBkjKvblT4btQ+i55m4EKcEobPW1n/6gNtIMyrm+7XSPeBuirXCfJ09KDxdx1xzbTr2ni
qkmsxyBNVqRgzxZbaAXlRSPOEPW3oLwt6j5DmnnXhVfScVGf48Ne+As0qaGFxmCwgWQ0QMHS
pHB117jL2mNnfhWF1s/xjNMQdgKTQ0O3t3TMIIOE3skEAWtu5NWb9SXMH/3R0hBB8dxo70rn
ma1rTsTaGe9gFoyeS6xMqkLrM9GCz7jmQLDmxoXhZylBLCgoAOLJkgiTY0CTlILDnj7SP2pw
kh73eqJ4Aaboz58RbP/uzuulAxPO6Ka9oDAZW5LuURLLmsIpC2Dt4VhsicLwkRKZAEOit/Hv
TmmKExVw7CaMUqHtDgai8sDnJBzHz13x4iCWyVvsnltkNvS8MrLd6FB04tGXoYGDKnVcm4Ld
n+Jip2DddaGd7WnwbUGCd1yD49F2VhWpNjcSJNzdDP9JhCfGQBbMdGlSgG57WzOdu0rRN4kH
wWn4oAscIvBJB+ortnhDHEuSpmu75Xyr3+YkIh9bnLMGnecPQvfTBOZNVrW5wVqiKHwR5/Gr
6JtB7DJ8n8t5HkEwbMWxk5cfWqM+aUJ7n1db85d+LdSPQG76n8b5565l2ncYSAH2e63cos6M
+LXwY5e0+lSd0oE9TwmvXKbdpy1GR6l2CSOeduM3IsxeZ2RqxsQfuT4FHB+nVLk1ZcgpNfBU
Z5zbDyjANKl8wVPUDD2esn1J0B0xwSKsul1+5AfLPXUgQtelTn/PI/0/8BrlhuX6DALvGPxc
4+NVrd5q+zvba2YFXquVe3OPG4J8WbqLeR3VK0sC+uPl4ent3zKu1ePlVb+kGtQD8fADNu99
DmpJPlwGrLwUn47oNTUf+AGGCa/RnRIGCn5bbCvYcLu0aUpWGJuqWA4d/A8q0bbitKOXtxuD
Pfzw/fKPt4dHpf+9CtJ7CX9xO71roBXC3++3cDZf65eLTVZ3jGP0KNIDpgGTSJg9QKN345Bi
8BZ0joPZzym3I9lRnsbigrbIeMFaXabaGNE8dM+9dYdrV4mXN8dSfiJ4GAUUUe2pAB0VHx/o
3KeXcpOya5EZN67lTX2vY390VMUcCOP94b5nw+Tyr59fv+KVXfb0+vbyE4Nh668q2D4THlp6
TBkNOFwXShvzt9mfgebPpNHJJEDe0dbdrHqIkKQ3+CcxrlxcGQmCAl8SkBqkVZLnzlWIQblF
7hNjJ8DfxAej6NlypryVwbBTLVVEAqeJ61j7YgstTrgHyZqG3Y4ko1uj9inRKNWWQ7ZrrUbA
SJ2cq2iJOZawTMBS3NoZvQwqEHniNQf0cYJqCxJ+Ap2W5rWChdYHkXxDhBGlxZBqAvZDvGyy
FboFprnNbCKb+y/DHWAoTD+5E15IoCNhSiyPW7UgqW5Kz9MWga6rjFceD2bZIEEmTTSLm+Vk
UBwg+Fj1EjbPHMSF3c/34Ljpiq26kycVy9ls5qG0DToLPbgR7HYTS3MgF34TPCY9jZQ8Fi4P
Ry59L8d9APb7RCHTMvE+OBnWrCztBN3ct0JkOSN8ovnU/vADlWRNe2SE9FKIiWpgXNC7Hz0z
pmda9Bz9tHfSD9wdMxepxM01w4XnnphJLDqZomJTVuPSBP1a2oO2X8i4WOyOgEBqjKBR8vIO
6a+q5x+vf7/CvDw/f8gt63D39PXVXHAYvAx2zgosBspFWMfjk68j7EGDvlvF18d6TJ477uDV
rnWR4zuRqmoxI3KhE4qaqFMiL/HQnFH3YE1i1evhAUR2B4w90DJO8fPNJ1A7QPlIKuPZh5CT
sgpSP5seeOlrBirEl5+oN5AiUC44/1MigRcnymQDqNJtnkGL4jpNPeFplYAES7io2+GYEK/z
R/n/19cfD094xQ/dfPz5dvnzAv+4vN3/13/919+0SND42kYUtxcqvPQG11T/BtYO9bhGIhp2
I4soYdDptgo0Doa9MtFqPoK1nTp6D4du42fOFkWT39xITMdhiYOZdHBquuFp4XwmGmZZqghL
0toB4EEa/y1Y2GDhW8EVdmljpUgWT84VyWaKRNw2SLq5U1HWxEew38GeSY99aaHNNYp6Qqiy
tipQIc3TSTI14fISR5l1tBOkGEVYxO2xSR1/oX6hDhOke3oOi2X33vcxT2Q9Nyxr3Vfz/xPG
H5QpMeIgl3c52zus4cLFPMngAVrbhdWDLojHEm9iQSjIw8+p7V4qL57t4N9Si/ty93Z3herb
PV4TaLaImp2MO6uppoB8b0PEI7QMjL8RITQq0JBZy/D8HdMPZKbn42Tb7A7GDQxE2YKlw51O
Ag8bEtWUJfHRljsYT8vsl84p2pEg0ImcvJ3NXYh5h7uQBF9DGgVoODA1O2EnC6FcHdvfwkDH
O1yBwPTT1FtT0V7hi9ztBSOCSZtVCblbmGNmjzbsgdIyboRN7N0r5LNKUNvxZsQYITxsL+Pb
tqIuWUuRHgJaqGkOQvMazPlpLPSuPtA0yW3JUBTt+vEzCpDrsxAv5GF28F7IIsEnU2JSkBKs
iVK/vxUUsfpQlqLxkGgOxuzurLplrbG594izrSHVlQKmJ+BxQW88SoW/8PwYj1TxVMTuuFaU
ssf5jXHQJnd0PMYku+XU159C2hUpQnc/3zncisqbOL9U31BP9nyT/c48+6Z4+AxWOb7h0tXS
cT/UoBhWF6yoEa6pIWLEFIZ6AyB0NYcDb3LWEsVVvAS7NCWKG9VLjJQ9fk0Nl2QjxaDcYTxe
spofKpcje0R/wmVxh1IkYIvBcMBi6CylzMClzmGPrrwJAlbCfgDrP1Ff0pGlemJYbD0ZUenE
kG1z1DFPHWadQSrqqSLUsk3lsjJKNxC4T0GL7TLGcxSdmJKFiiGHasYu6pWb8+gRQiYWr5Zp
acNvy/ZAdAxjUfbZdWjVSlYgJU1W2lqDSSYkxXgdQ21zmuwhrm36ylguLnZwxvXWqt7KLuJf
x8Y+/rG437m96REtg+24tjbaUZ5+hEKYeNr6GjdWrZN6MfQurBEPkVKEKEzSHGxOz9IZRDRQ
sVufVqFNO0pp56xI5+uBgLYmGcZZpthZO2vBCF5dpk55UyNGmFI0JI2jkv14/s/l5cc9qZbV
8fAo4SZtGv34QIYikNIaLA6wuZZz/bu0OOZCsNiOVfj8q0ar3bgx0pkEeO98rElboeBZJy+n
SOeCcZJqEWxeHEcAO/Nr70XmuaiMp0VneaksDu485GJMOFiU21y7D9Q/7JqqK4yHb9LCtrYu
HCbW5LcTiiLS1G1y9ITBcydPv15rL69vaBDh4Ub8/H8uL3dfL+Psigg44x2eDIgjWmI+bx8j
5VBiWyDTs2BRl8cFVihpXvuxN0g6wWBKznkkS682WKSGnBLjP1XKsGiu4+rkHPlx2MuqkxIz
pu8G0lNyFaS9UJ/kCYh07xzPD64TM1SePJ1C2c9BMaMFOpIUWYn3dLSRLuWf9b2OS7KT/vRa
ChuuB5XR7L/eshVryvINabboA25bRboHhj3pInIJbiPDh5ROkTao35h1ybOJ5ZwQC6JTh/SM
K0F31cBhkJfP0ruAW58Akse6j6uAXgO4rYw4/QIu3e4mRjxm5QRaSibvzc0xS6x2nMU9lwUc
zqptpmnwfMh37C4HyHgBIUCwqVlDoi7zTbL8urAg0Bn0WDGBp0Kel5lQ4WQbV84wb+ud04lt
Dtx2wBt62I/IodxlJcaznFZmRFm7rCluWKOJWfgMZEme2MKtSVX8x1GYad4LIvYGiRLrlEZo
rpQWLi4SEaXK+G7UhbOWe08ilC8jWaUcaqFzOCtAPDLGR9DOeMOWH4Ot4uVK25WjLxCP/7LW
WSFQnOc+Rs4ILnm8t9MYZ/C8hG/NRT0C7Ee05M41nCbioVuRcY7LPqniY2Gr1vJYbpvJjYI+
hLdcUP4v0pLhgMRRAgA=

--EVF5PPMfhYS0aIcm--
