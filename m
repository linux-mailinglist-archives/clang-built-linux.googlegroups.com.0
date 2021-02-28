Return-Path: <clang-built-linux+bncBC4LXIPCY4NRB5OC5WAQMGQELW53TMQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3b.google.com (mail-io1-xd3b.google.com [IPv6:2607:f8b0:4864:20::d3b])
	by mail.lfdr.de (Postfix) with ESMTPS id C39BD3271B6
	for <lists+clang-built-linux@lfdr.de>; Sun, 28 Feb 2021 10:25:10 +0100 (CET)
Received: by mail-io1-xd3b.google.com with SMTP id u1sf10897233ior.12
        for <lists+clang-built-linux@lfdr.de>; Sun, 28 Feb 2021 01:25:10 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614504309; cv=pass;
        d=google.com; s=arc-20160816;
        b=KfCaLHLvqp24dBOyj0ezjucE7fDVX8bffmModdUWpvx8Gzs9J/gbkfNLFH3Fjo4QeM
         MQVuXKPIFyVCLlQBrImeGI2f+/DcZtrr1FD4OIChrVEHLCMwSfkTyLKC1Iq225fjdHgi
         Z0AkPF2TCEL7FlTf1Q1D/751gNvF4EnmTOsYxOlyXBtV/ZnYZZcEmMyC/gBjTm8xCqAa
         3rKWTtuPmvt0OUNBYXmew4vPAktT831wG08yc716QZ9rd1lpNjafqADsikcHaxhxkD6A
         8AgRf6GN2MNouo1gnhOqzd8eh/bWGVBgZdUfTEc9SpGtsiEq3DdHTOBkgP0HwYIhkvR0
         SQPw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=X3+4k7syEgDU81C13jd+kaRMo29/z1v0YU5dR1b1oWs=;
        b=EmcSyoWNXEJheWWE3syXRSCz4/62pFOlG4GAQ1+es91iF3b0X6LXY/LHLSGWXYck5F
         WdbgZSHgzAonXLGmDsZDpZ4kZMSO56bSrzk9kTuxaRCXQr2b+dGif0lubv3W2FinIi2K
         JO2sRaNGOr90MXz5j5z4/0QzDmFlCdwqYNC59xbluS6thYXAwhpo9Cucbhd7zt5NMwO+
         hlUDF3Ghy8eqMynaCM8brpaMHkpeCSjekUhnUUTpLYJjUl3rP48bk8n2kdDTVLfQqkFJ
         +ydwP4SL50+P6pZFP9nrqMN7APquOnygsdJ43j+pTb0HFRCsffEoyC9vYCicd4+Er2WI
         uXvA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.93 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=X3+4k7syEgDU81C13jd+kaRMo29/z1v0YU5dR1b1oWs=;
        b=Szb2vzYopWzX51W/Qkvnw9p48UXfPCjWoD0dezYBwj9U28r6HCFMeKznXGUXApNpWP
         QsMLzruL+lwUfqj5pFxoFgOEPawAEnaJbx6JL4MjLHQz0XdEJ5WMgPD2baIIBngj/xM5
         ifymAPLreaCONxODGMFjBTUb/7CNIFJs77nahEMWaCv/Rr5N8LqJPgBXGXxRHQrG7r8M
         4ezvzIWASrXstmh5jE0qyJWaF9Nw9VGV3gW46h6HEi0V/w8D4QdLW0wIwb6DlfbyEbGT
         cy/r5tG8LY5AHv6h3llx0mlj1Dye5aW+HUT53lYaKqffHKyzm1ra0AkCsCxZrA6HfImg
         Qdmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=X3+4k7syEgDU81C13jd+kaRMo29/z1v0YU5dR1b1oWs=;
        b=NrTHa0Ue/HFKUShWtrvEef7WyT9/zXfoZX16f8mmwstSRNbmT4/k6exWKwdCJBYP+p
         o0bYuF81z5dzFFDbLzhz2trCqQOZmmckwLDW+7xwRuktDAZ0JPSLHwExyULQUWjiEJpF
         CJfUY1WQdVOTxmm1hM+9G/ICaFNXIPwxL7MLP931/Q9CUSvX0xT7TuVb8tk1EShWCDvH
         656IM8UJPQhit7m5kFo0AIWLm398IC3K0X3IFNNUO+nWB5vSmhPog2GUY0TzXx1CyJLs
         /VeFH5d7/lWZ+si3hyUPkBstaKABwPCSDDO/IZp9xS6jfJSLRo8fDGnV1U9JDI0aJTQ0
         N8IQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530oHQpq8c8Cu+kkWvyRj+m3QN++Y9FwJ0VDne43AJd5397PDium
	lq+8Aoy04M6w48GxvYcQoRs=
X-Google-Smtp-Source: ABdhPJzItra1/DRVyntyGUjVdT+Syr35FxTRdlinQ2UoMEjusWnKVCPyoFmlJUOlyFGpnHk9mriRVg==
X-Received: by 2002:a92:c269:: with SMTP id h9mr8773724ild.239.1614504309454;
        Sun, 28 Feb 2021 01:25:09 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:c549:: with SMTP id a9ls3280283ilj.10.gmail; Sun, 28 Feb
 2021 01:25:09 -0800 (PST)
X-Received: by 2002:a05:6e02:1d88:: with SMTP id h8mr8154834ila.43.1614504308918;
        Sun, 28 Feb 2021 01:25:08 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614504308; cv=none;
        d=google.com; s=arc-20160816;
        b=SazhGGjAV3tSY1MqvqdR0lIYx+VNP6UAjvOURVrLCnXNY3+tszrtPHPDgBV3x35Tcl
         YT5oCQOl2tfhJnvuy5DKVsk7y35itVRI9nfi9dG0PkTmL4KVwfgQdjOIcqlUVC4h2SmH
         9HKbHkoPYRTAGOU/huV0f5I0HbacV8/MXtSvfxhVUPQ89Ifq9frSnbdnodaEfO6cPJ/9
         0Td4zDo7B37W3jKCin8Yoxm5FtJ7fO59qSCBJjoAI6lntq6qPQskk79jNSsWxlA0PbLx
         VhduonkGKlTqufTBo7BIx7Mb4QM2AWqqEBX5TyqjXghQZeDqvvc4JLV6MtbzxhMKqoSy
         aOMg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=ol/mIl/drmFBZ5G8THRbLVyrhSQbZYKW480sufY+Pe4=;
        b=WN8y8KnX9dWNqgiwxWL4BKQmTy0Sz71BtZb8CAMXIL+j8aI9Q7ydcr9SOEC09FvSjT
         8g5JgPfRZN8I3n51hN5Rc5gNhVZRhXc+3/1+CTU725h+SCQHJAFIz1OdYA8DSlioaHAM
         /MLRY3FrTk5NoRnb8Y+/M9gUQHvytzMVEFDfsKxULDXIKk9505B9gzYWZwIUJ3Dlz0hC
         xkcCk++mFGCEjADobt3eSi338uN/rh+fNAiRVnkdfRgImKNjbiJTUaKIemUa1xI2+vaW
         qSsr6AlYyGNQJ518YLUlJhXFrynRGKmF8QurRJd72Nf6itoGiUo9sCgBCpQ7JTsjb3ac
         wHTQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.93 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga11.intel.com (mga11.intel.com. [192.55.52.93])
        by gmr-mx.google.com with ESMTPS id s10si587242ild.2.2021.02.28.01.25.07
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 28 Feb 2021 01:25:08 -0800 (PST)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.93 as permitted sender) client-ip=192.55.52.93;
IronPort-SDR: aFTs+fFjgjzwP2cntyIKq5Gxgr9oG4Gvm+OWsW7sgs1mKkfJyJ6GxJ+QDVh5A287trXYkN77bW
 Qt2ugwkdU/hg==
X-IronPort-AV: E=McAfee;i="6000,8403,9908"; a="182819974"
X-IronPort-AV: E=Sophos;i="5.81,213,1610438400"; 
   d="gz'50?scan'50,208,50";a="182819974"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
  by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 28 Feb 2021 01:25:06 -0800
IronPort-SDR: MzUNP8dXMZ/cD+44F/JNqMfJNVH+nkFHUq2GeOaVlurHJX/ZNyiBxGeeCON/2/sibeWb+mztTs
 gZ3+DjVAHc2g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,213,1610438400"; 
   d="gz'50?scan'50,208,50";a="426186241"
Received: from lkp-server01.sh.intel.com (HELO 16660e54978b) ([10.239.97.150])
  by fmsmga004.fm.intel.com with ESMTP; 28 Feb 2021 01:25:04 -0800
Received: from kbuild by 16660e54978b with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1lGIJz-00047M-UE; Sun, 28 Feb 2021 09:25:03 +0000
Date: Sun, 28 Feb 2021 17:24:09 +0800
From: kernel test robot <lkp@intel.com>
To: Ilya Dryomov <idryomov@gmail.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org
Subject: net/ceph/messenger_v1.c:1355:5: warning: stack frame size of 1136
 bytes in function 'ceph_con_v1_try_write'
Message-ID: <202102281708.4nxMLryA-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="Qxx1br4bt0+wmkIi"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 192.55.52.93 as permitted
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


--Qxx1br4bt0+wmkIi
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
head:   5695e51619745d4fe3ec2506a2f0cd982c5e27a4
commit: cd1a677cad994021b19665ed476aea63f5d54f31 libceph, ceph: implement msgr2.1 protocol (crc and secure modes)
date:   3 months ago
config: powerpc-randconfig-r026-20210228 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project e0b1df924ae06d6d88582334087d2eacc6702e8f)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install powerpc cross compiling tool for clang build
        # apt-get install binutils-powerpc-linux-gnu
        # https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=cd1a677cad994021b19665ed476aea63f5d54f31
        git remote add linus https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
        git fetch --no-tags linus master
        git checkout cd1a677cad994021b19665ed476aea63f5d54f31
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=powerpc 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

   __do_insb
   ^
   arch/powerpc/include/asm/io.h:541:56: note: expanded from macro '__do_insb'
   #define __do_insb(p, b, n)      readsb((PCI_IO_ADDR)_IO_BASE+(p), (b), (n))
                                          ~~~~~~~~~~~~~~~~~~~~~^
   In file included from net/ceph/messenger_v1.c:8:
   In file included from include/net/sock.h:38:
   In file included from include/linux/hardirq.h:10:
   In file included from arch/powerpc/include/asm/hardirq.h:6:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/powerpc/include/asm/io.h:604:
   arch/powerpc/include/asm/io-defs.h:45:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(insw, (unsigned long p, void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:601:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:74:1: note: expanded from here
   __do_insw
   ^
   arch/powerpc/include/asm/io.h:542:56: note: expanded from macro '__do_insw'
   #define __do_insw(p, b, n)      readsw((PCI_IO_ADDR)_IO_BASE+(p), (b), (n))
                                          ~~~~~~~~~~~~~~~~~~~~~^
   In file included from net/ceph/messenger_v1.c:8:
   In file included from include/net/sock.h:38:
   In file included from include/linux/hardirq.h:10:
   In file included from arch/powerpc/include/asm/hardirq.h:6:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/powerpc/include/asm/io.h:604:
   arch/powerpc/include/asm/io-defs.h:47:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(insl, (unsigned long p, void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:601:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:76:1: note: expanded from here
   __do_insl
   ^
   arch/powerpc/include/asm/io.h:543:56: note: expanded from macro '__do_insl'
   #define __do_insl(p, b, n)      readsl((PCI_IO_ADDR)_IO_BASE+(p), (b), (n))
                                          ~~~~~~~~~~~~~~~~~~~~~^
   In file included from net/ceph/messenger_v1.c:8:
   In file included from include/net/sock.h:38:
   In file included from include/linux/hardirq.h:10:
   In file included from arch/powerpc/include/asm/hardirq.h:6:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/powerpc/include/asm/io.h:604:
   arch/powerpc/include/asm/io-defs.h:49:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(outsb, (unsigned long p, const void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:601:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:78:1: note: expanded from here
   __do_outsb
   ^
   arch/powerpc/include/asm/io.h:544:58: note: expanded from macro '__do_outsb'
   #define __do_outsb(p, b, n)     writesb((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
                                           ~~~~~~~~~~~~~~~~~~~~~^
   In file included from net/ceph/messenger_v1.c:8:
   In file included from include/net/sock.h:38:
   In file included from include/linux/hardirq.h:10:
   In file included from arch/powerpc/include/asm/hardirq.h:6:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/powerpc/include/asm/io.h:604:
   arch/powerpc/include/asm/io-defs.h:51:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(outsw, (unsigned long p, const void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:601:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:80:1: note: expanded from here
   __do_outsw
   ^
   arch/powerpc/include/asm/io.h:545:58: note: expanded from macro '__do_outsw'
   #define __do_outsw(p, b, n)     writesw((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
                                           ~~~~~~~~~~~~~~~~~~~~~^
   In file included from net/ceph/messenger_v1.c:8:
   In file included from include/net/sock.h:38:
   In file included from include/linux/hardirq.h:10:
   In file included from arch/powerpc/include/asm/hardirq.h:6:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/powerpc/include/asm/io.h:604:
   arch/powerpc/include/asm/io-defs.h:53:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(outsl, (unsigned long p, const void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:601:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:82:1: note: expanded from here
   __do_outsl
   ^
   arch/powerpc/include/asm/io.h:546:58: note: expanded from macro '__do_outsl'
   #define __do_outsl(p, b, n)     writesl((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
                                           ~~~~~~~~~~~~~~~~~~~~~^
>> net/ceph/messenger_v1.c:1355:5: warning: stack frame size of 1136 bytes in function 'ceph_con_v1_try_write' [-Wframe-larger-than=]
   int ceph_con_v1_try_write(struct ceph_connection *con)
       ^
   7 warnings generated.
--
   In file included from net/ceph/messenger_v2.c:17:
   In file included from include/linux/scatterlist.h:9:
   In file included from arch/powerpc/include/asm/io.h:604:
   arch/powerpc/include/asm/io-defs.h:43:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(insb, (unsigned long p, void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:601:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:106:1: note: expanded from here
   __do_insb
   ^
   arch/powerpc/include/asm/io.h:541:56: note: expanded from macro '__do_insb'
   #define __do_insb(p, b, n)      readsb((PCI_IO_ADDR)_IO_BASE+(p), (b), (n))
                                          ~~~~~~~~~~~~~~~~~~~~~^
   In file included from net/ceph/messenger_v2.c:17:
   In file included from include/linux/scatterlist.h:9:
   In file included from arch/powerpc/include/asm/io.h:604:
   arch/powerpc/include/asm/io-defs.h:45:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(insw, (unsigned long p, void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:601:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:108:1: note: expanded from here
   __do_insw
   ^
   arch/powerpc/include/asm/io.h:542:56: note: expanded from macro '__do_insw'
   #define __do_insw(p, b, n)      readsw((PCI_IO_ADDR)_IO_BASE+(p), (b), (n))
                                          ~~~~~~~~~~~~~~~~~~~~~^
   In file included from net/ceph/messenger_v2.c:17:
   In file included from include/linux/scatterlist.h:9:
   In file included from arch/powerpc/include/asm/io.h:604:
   arch/powerpc/include/asm/io-defs.h:47:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(insl, (unsigned long p, void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:601:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:110:1: note: expanded from here
   __do_insl
   ^
   arch/powerpc/include/asm/io.h:543:56: note: expanded from macro '__do_insl'
   #define __do_insl(p, b, n)      readsl((PCI_IO_ADDR)_IO_BASE+(p), (b), (n))
                                          ~~~~~~~~~~~~~~~~~~~~~^
   In file included from net/ceph/messenger_v2.c:17:
   In file included from include/linux/scatterlist.h:9:
   In file included from arch/powerpc/include/asm/io.h:604:
   arch/powerpc/include/asm/io-defs.h:49:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(outsb, (unsigned long p, const void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:601:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:112:1: note: expanded from here
   __do_outsb
   ^
   arch/powerpc/include/asm/io.h:544:58: note: expanded from macro '__do_outsb'
   #define __do_outsb(p, b, n)     writesb((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
                                           ~~~~~~~~~~~~~~~~~~~~~^
   In file included from net/ceph/messenger_v2.c:17:
   In file included from include/linux/scatterlist.h:9:
   In file included from arch/powerpc/include/asm/io.h:604:
   arch/powerpc/include/asm/io-defs.h:51:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(outsw, (unsigned long p, const void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:601:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:114:1: note: expanded from here
   __do_outsw
   ^
   arch/powerpc/include/asm/io.h:545:58: note: expanded from macro '__do_outsw'
   #define __do_outsw(p, b, n)     writesw((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
                                           ~~~~~~~~~~~~~~~~~~~~~^
   In file included from net/ceph/messenger_v2.c:17:
   In file included from include/linux/scatterlist.h:9:
   In file included from arch/powerpc/include/asm/io.h:604:
   arch/powerpc/include/asm/io-defs.h:53:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(outsl, (unsigned long p, const void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:601:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:116:1: note: expanded from here
   __do_outsl
   ^
   arch/powerpc/include/asm/io.h:546:58: note: expanded from macro '__do_outsl'
   #define __do_outsl(p, b, n)     writesl((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
                                           ~~~~~~~~~~~~~~~~~~~~~^
>> net/ceph/messenger_v2.c:2808:5: warning: stack frame size of 2288 bytes in function 'ceph_con_v2_try_read' [-Wframe-larger-than=]
   int ceph_con_v2_try_read(struct ceph_connection *con)
       ^
   7 warnings generated.

Kconfig warnings: (for reference only)
   WARNING: unmet direct dependencies detected for HOTPLUG_CPU
   Depends on SMP && (PPC_PSERIES || PPC_PMAC || PPC_POWERNV || FSL_SOC_BOOKE
   Selected by
   - PM_SLEEP_SMP && SMP && (ARCH_SUSPEND_POSSIBLE || ARCH_HIBERNATION_POSSIBLE && PM_SLEEP


vim +/ceph_con_v1_try_write +1355 net/ceph/messenger_v1.c

2f713615ddd9d8 Ilya Dryomov 2020-11-12  1350  
2f713615ddd9d8 Ilya Dryomov 2020-11-12  1351  /*
2f713615ddd9d8 Ilya Dryomov 2020-11-12  1352   * Write something to the socket.  Called in a worker thread when the
2f713615ddd9d8 Ilya Dryomov 2020-11-12  1353   * socket appears to be writeable and we have something ready to send.
2f713615ddd9d8 Ilya Dryomov 2020-11-12  1354   */
2f713615ddd9d8 Ilya Dryomov 2020-11-12 @1355  int ceph_con_v1_try_write(struct ceph_connection *con)
2f713615ddd9d8 Ilya Dryomov 2020-11-12  1356  {
2f713615ddd9d8 Ilya Dryomov 2020-11-12  1357  	int ret = 1;
2f713615ddd9d8 Ilya Dryomov 2020-11-12  1358  
2f713615ddd9d8 Ilya Dryomov 2020-11-12  1359  	dout("try_write start %p state %d\n", con, con->state);
2f713615ddd9d8 Ilya Dryomov 2020-11-12  1360  	if (con->state != CEPH_CON_S_PREOPEN &&
2f713615ddd9d8 Ilya Dryomov 2020-11-12  1361  	    con->state != CEPH_CON_S_V1_BANNER &&
2f713615ddd9d8 Ilya Dryomov 2020-11-12  1362  	    con->state != CEPH_CON_S_V1_CONNECT_MSG &&
2f713615ddd9d8 Ilya Dryomov 2020-11-12  1363  	    con->state != CEPH_CON_S_OPEN)
2f713615ddd9d8 Ilya Dryomov 2020-11-12  1364  		return 0;
2f713615ddd9d8 Ilya Dryomov 2020-11-12  1365  
2f713615ddd9d8 Ilya Dryomov 2020-11-12  1366  	/* open the socket first? */
2f713615ddd9d8 Ilya Dryomov 2020-11-12  1367  	if (con->state == CEPH_CON_S_PREOPEN) {
2f713615ddd9d8 Ilya Dryomov 2020-11-12  1368  		BUG_ON(con->sock);
2f713615ddd9d8 Ilya Dryomov 2020-11-12  1369  		con->state = CEPH_CON_S_V1_BANNER;
2f713615ddd9d8 Ilya Dryomov 2020-11-12  1370  
2f713615ddd9d8 Ilya Dryomov 2020-11-12  1371  		con_out_kvec_reset(con);
2f713615ddd9d8 Ilya Dryomov 2020-11-12  1372  		prepare_write_banner(con);
2f713615ddd9d8 Ilya Dryomov 2020-11-12  1373  		prepare_read_banner(con);
2f713615ddd9d8 Ilya Dryomov 2020-11-12  1374  
2f713615ddd9d8 Ilya Dryomov 2020-11-12  1375  		BUG_ON(con->in_msg);
a56dd9bf47220c Ilya Dryomov 2020-11-12  1376  		con->v1.in_tag = CEPH_MSGR_TAG_READY;
2f713615ddd9d8 Ilya Dryomov 2020-11-12  1377  		dout("try_write initiating connect on %p new state %d\n",
2f713615ddd9d8 Ilya Dryomov 2020-11-12  1378  		     con, con->state);
2f713615ddd9d8 Ilya Dryomov 2020-11-12  1379  		ret = ceph_tcp_connect(con);
2f713615ddd9d8 Ilya Dryomov 2020-11-12  1380  		if (ret < 0) {
2f713615ddd9d8 Ilya Dryomov 2020-11-12  1381  			con->error_msg = "connect error";
2f713615ddd9d8 Ilya Dryomov 2020-11-12  1382  			goto out;
2f713615ddd9d8 Ilya Dryomov 2020-11-12  1383  		}
2f713615ddd9d8 Ilya Dryomov 2020-11-12  1384  	}
2f713615ddd9d8 Ilya Dryomov 2020-11-12  1385  
2f713615ddd9d8 Ilya Dryomov 2020-11-12  1386  more:
a56dd9bf47220c Ilya Dryomov 2020-11-12  1387  	dout("try_write out_kvec_bytes %d\n", con->v1.out_kvec_bytes);
2f713615ddd9d8 Ilya Dryomov 2020-11-12  1388  	BUG_ON(!con->sock);
2f713615ddd9d8 Ilya Dryomov 2020-11-12  1389  
2f713615ddd9d8 Ilya Dryomov 2020-11-12  1390  	/* kvec data queued? */
a56dd9bf47220c Ilya Dryomov 2020-11-12  1391  	if (con->v1.out_kvec_left) {
2f713615ddd9d8 Ilya Dryomov 2020-11-12  1392  		ret = write_partial_kvec(con);
2f713615ddd9d8 Ilya Dryomov 2020-11-12  1393  		if (ret <= 0)
2f713615ddd9d8 Ilya Dryomov 2020-11-12  1394  			goto out;
2f713615ddd9d8 Ilya Dryomov 2020-11-12  1395  	}
a56dd9bf47220c Ilya Dryomov 2020-11-12  1396  	if (con->v1.out_skip) {
2f713615ddd9d8 Ilya Dryomov 2020-11-12  1397  		ret = write_partial_skip(con);
2f713615ddd9d8 Ilya Dryomov 2020-11-12  1398  		if (ret <= 0)
2f713615ddd9d8 Ilya Dryomov 2020-11-12  1399  			goto out;
2f713615ddd9d8 Ilya Dryomov 2020-11-12  1400  	}
2f713615ddd9d8 Ilya Dryomov 2020-11-12  1401  
2f713615ddd9d8 Ilya Dryomov 2020-11-12  1402  	/* msg pages? */
2f713615ddd9d8 Ilya Dryomov 2020-11-12  1403  	if (con->out_msg) {
a56dd9bf47220c Ilya Dryomov 2020-11-12  1404  		if (con->v1.out_msg_done) {
2f713615ddd9d8 Ilya Dryomov 2020-11-12  1405  			ceph_msg_put(con->out_msg);
2f713615ddd9d8 Ilya Dryomov 2020-11-12  1406  			con->out_msg = NULL;   /* we're done with this one */
2f713615ddd9d8 Ilya Dryomov 2020-11-12  1407  			goto do_next;
2f713615ddd9d8 Ilya Dryomov 2020-11-12  1408  		}
2f713615ddd9d8 Ilya Dryomov 2020-11-12  1409  
2f713615ddd9d8 Ilya Dryomov 2020-11-12  1410  		ret = write_partial_message_data(con);
2f713615ddd9d8 Ilya Dryomov 2020-11-12  1411  		if (ret == 1)
2f713615ddd9d8 Ilya Dryomov 2020-11-12  1412  			goto more;  /* we need to send the footer, too! */
2f713615ddd9d8 Ilya Dryomov 2020-11-12  1413  		if (ret == 0)
2f713615ddd9d8 Ilya Dryomov 2020-11-12  1414  			goto out;
2f713615ddd9d8 Ilya Dryomov 2020-11-12  1415  		if (ret < 0) {
2f713615ddd9d8 Ilya Dryomov 2020-11-12  1416  			dout("try_write write_partial_message_data err %d\n",
2f713615ddd9d8 Ilya Dryomov 2020-11-12  1417  			     ret);
2f713615ddd9d8 Ilya Dryomov 2020-11-12  1418  			goto out;
2f713615ddd9d8 Ilya Dryomov 2020-11-12  1419  		}
2f713615ddd9d8 Ilya Dryomov 2020-11-12  1420  	}
2f713615ddd9d8 Ilya Dryomov 2020-11-12  1421  
2f713615ddd9d8 Ilya Dryomov 2020-11-12  1422  do_next:
2f713615ddd9d8 Ilya Dryomov 2020-11-12  1423  	if (con->state == CEPH_CON_S_OPEN) {
2f713615ddd9d8 Ilya Dryomov 2020-11-12  1424  		if (ceph_con_flag_test_and_clear(con,
2f713615ddd9d8 Ilya Dryomov 2020-11-12  1425  				CEPH_CON_F_KEEPALIVE_PENDING)) {
2f713615ddd9d8 Ilya Dryomov 2020-11-12  1426  			prepare_write_keepalive(con);
2f713615ddd9d8 Ilya Dryomov 2020-11-12  1427  			goto more;
2f713615ddd9d8 Ilya Dryomov 2020-11-12  1428  		}
2f713615ddd9d8 Ilya Dryomov 2020-11-12  1429  		/* is anything else pending? */
2f713615ddd9d8 Ilya Dryomov 2020-11-12  1430  		if (!list_empty(&con->out_queue)) {
2f713615ddd9d8 Ilya Dryomov 2020-11-12  1431  			prepare_write_message(con);
2f713615ddd9d8 Ilya Dryomov 2020-11-12  1432  			goto more;
2f713615ddd9d8 Ilya Dryomov 2020-11-12  1433  		}
2f713615ddd9d8 Ilya Dryomov 2020-11-12  1434  		if (con->in_seq > con->in_seq_acked) {
2f713615ddd9d8 Ilya Dryomov 2020-11-12  1435  			prepare_write_ack(con);
2f713615ddd9d8 Ilya Dryomov 2020-11-12  1436  			goto more;
2f713615ddd9d8 Ilya Dryomov 2020-11-12  1437  		}
2f713615ddd9d8 Ilya Dryomov 2020-11-12  1438  	}
2f713615ddd9d8 Ilya Dryomov 2020-11-12  1439  
2f713615ddd9d8 Ilya Dryomov 2020-11-12  1440  	/* Nothing to do! */
2f713615ddd9d8 Ilya Dryomov 2020-11-12  1441  	ceph_con_flag_clear(con, CEPH_CON_F_WRITE_PENDING);
2f713615ddd9d8 Ilya Dryomov 2020-11-12  1442  	dout("try_write nothing else to write.\n");
2f713615ddd9d8 Ilya Dryomov 2020-11-12  1443  	ret = 0;
2f713615ddd9d8 Ilya Dryomov 2020-11-12  1444  out:
2f713615ddd9d8 Ilya Dryomov 2020-11-12  1445  	dout("try_write done on %p ret %d\n", con, ret);
2f713615ddd9d8 Ilya Dryomov 2020-11-12  1446  	return ret;
2f713615ddd9d8 Ilya Dryomov 2020-11-12  1447  }
2f713615ddd9d8 Ilya Dryomov 2020-11-12  1448  

:::::: The code at line 1355 was first introduced by commit
:::::: 2f713615ddd9d805b6c5e79c52e0e11af99d2bf1 libceph: move msgr1 protocol implementation to its own file

:::::: TO: Ilya Dryomov <idryomov@gmail.com>
:::::: CC: Ilya Dryomov <idryomov@gmail.com>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202102281708.4nxMLryA-lkp%40intel.com.

--Qxx1br4bt0+wmkIi
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
JedJ2O+u3nNw5j3vJP2a8/8Puk2Q68YBAA==

--Qxx1br4bt0+wmkIi--
