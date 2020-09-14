Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBUPK775AKGQENWREC7I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x438.google.com (mail-pf1-x438.google.com [IPv6:2607:f8b0:4864:20::438])
	by mail.lfdr.de (Postfix) with ESMTPS id D4794269945
	for <lists+clang-built-linux@lfdr.de>; Tue, 15 Sep 2020 00:57:22 +0200 (CEST)
Received: by mail-pf1-x438.google.com with SMTP id h15sf742726pfr.3
        for <lists+clang-built-linux@lfdr.de>; Mon, 14 Sep 2020 15:57:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600124241; cv=pass;
        d=google.com; s=arc-20160816;
        b=Oq2jmzQrntbRd6e90mi5EQRAKvbBOrbDaX2VKXkeLfz4EYaUBje7k6nFNq13Duef5M
         +n05vMiVgMlt9e/6UdnB1K8Z2p89CHPmlibQ+eiyqW4dkkPdOxF+vlo0zi2YCa1KL5pW
         Eh+s5qX+D9EAIlOjMQZqvwcuALL1vD0GP36gAJW8Kb27fOb+bVfz8TdMrce1GVpe3iYj
         mVT6OFEApQ/XEHIh10QcMgV2sTmRY0iSr0jQbJaOUqh6wAhtNLTkADOVB2wbJuzWrhXT
         97mDspHNfzQf9XXnh7bo3tcTR15P3yQBag4wEqbUxKrm20bJ8PZIiIpMjjSXmHk3Y6le
         JGiQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=1OJz2I6CaARtRcskRV2mREoIFRLEw4hKXR9Z2tv+ZEM=;
        b=fK099KqbzpTlFnRGKmgX72myNebTH1WpLv9jGqb5Z1TLYnLZ5OrCuOVkcUN4PyECdm
         bFfhcPE0e0WFyGOudtY5kWBRBiZ8f71dyZZyMwf8Y3MMWmx1KtN+062lpQzFsoP0y0uX
         DwZFnd/lyhEDMTNwrLtnGA29GInwNuiv8pmlHlNYahHu8QrH3uijVYtjX6De998j6d5z
         yENopqZVMaUSWckuUftq2ssDH2JnBe9DciPT7hTTAFq+jGlclnCTdGtK85RopnNw/C2s
         OXrMFX1mXISuTfBB7E9RF9+XwLiB0s6qmbga0h+Vg9Bh3msCPKLUVi39HhYydG/KA0Za
         Hf4g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.115 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=1OJz2I6CaARtRcskRV2mREoIFRLEw4hKXR9Z2tv+ZEM=;
        b=RgkXo0v1Ni9DbZXYjFFxJCRA7L7SDlRDupWPzwMWk/QehHYcqCBRcdiejpJ+fCCqPT
         7TamgkF02iw9mdN+hbk3RVlk6TuC486jSJqG8JZTmzSmxAYiPMdP32uBu1yaGYpRsxlY
         9iezjDNd75LL8tlPkQK8PZhPTTSh0tZyOum9jrgyuqARttwKeudDZU6Nzk9GmTKcMedt
         HRILM8VtE7TO/t/q1qjmNBQm/Lj8bWQlbHVnbV8+R41K9mzI/8p1Go+EntAohwwE9TSq
         y+sjmfWEA3sL5FgYvcSL3PuQxev8D2fTqhQgxYTxCNh4VClEb/y2HTUieJ175wwqmYiq
         FbsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=1OJz2I6CaARtRcskRV2mREoIFRLEw4hKXR9Z2tv+ZEM=;
        b=QeEMUCrBhUc/SbcAxBhX+oaLOfwz72Z524W8+tKKVAaGkaDg9c5gAxZjPdjKdiOMGF
         wrGGyCapVWmzvOojyn8BRhXh7H4vTfcn7P2CM6uuaHdivGKi3Kf3QLTvu353JOFRCnKO
         EeRkRaiHNprT2WvJkQ3OGCqka2Kl/D3wmLI1II3JHo4IWwtWFtNDlUgYzyBTONZY2YCp
         NGlCiVfdqLWZJTwKoUswymNM/N1LlPOJMVaDdY6lRfYeSpNAWUZp6I767ilIQQLwOrxr
         jwuhtjCmlstLkHAe+DdjbbW/uB+0DOiHMScODPe0iNRL3JMSkPhlt3mdvT00sEFceOoT
         zSgQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532SebOSRh5m2XxGNRVvwEVmHSgsfG77lTOfy77ADhsOzsj6EzRc
	YaS9P6ONxKiEeOTHZHK9Arc=
X-Google-Smtp-Source: ABdhPJy3IOA8UI4ovanu7zGPh+uGv7AYs8M3BU6pxRk5igQO1ojk41DN44XCa9Fj9HxSyEf1qk60BQ==
X-Received: by 2002:a17:902:9685:: with SMTP id n5mr16048039plp.73.1600124241419;
        Mon, 14 Sep 2020 15:57:21 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:778f:: with SMTP id o15ls1928449pll.6.gmail; Mon, 14
 Sep 2020 15:57:20 -0700 (PDT)
X-Received: by 2002:a17:90a:a882:: with SMTP id h2mr1469773pjq.180.1600124240794;
        Mon, 14 Sep 2020 15:57:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600124240; cv=none;
        d=google.com; s=arc-20160816;
        b=shvM0Xsgz07FNTF61jea3l1IU4DlRKUz4Sacbs4AwC6zGto2n+qVomrPxrXZAt/cTf
         T6Y6dIVWLV1m7UfvlPVpuUTIuVmPJlOJ8h7baZdqyMYBfGQhWmPadCM9Umj3uhq57VQr
         tHtnUPyl1GA3l4n2nyITIswQviuJp5v23CUSJj0wJEMiqVTGDn1JZx6i3NlKXnSzuvv4
         3NMhYlqR/Dis2zrffCxugn8AH9r8UDHJcukhPXfadQFFDEKbmVGHxtuS5Xx3zoClyLNW
         8CcLta34WdlxXroRJ6tcwx+QTYxOSSAbHwVVNBM8lQr+pYohoS8EzN8XR8ZPZSYrqQ+O
         kkXQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=CXocRii7rKcrWi2Sl5nmvrwPuof21vgVltFtl3Mt7vU=;
        b=kI9zmhWUwT0SvjauzNSDYU6A5OV6+FK6AJ6bMGBPgtjmps7VoQUkVRZhQpxVyZNnOU
         Zi4T3l9ytxkBoWr7g90xkj10rSX+z58kSgT213Qu7PRT222I1CJoZg5DtjUwyOM2IkpY
         TZIM2otGnKPl3p8JSni8EGTtuwnBJpGjWc1tf1tniEdrCiNGr59W7Dway5KaVVee6op4
         T6K7OiTXdzetFGH0sAmRuiMUF0WcuXkH08n0gk3t4+hPenC7yuPo11zFtsLn5ze4DocN
         MFYjWCKvTVottHlumfSVOODj4gVRVQ6O4CWpgmxEWCHQSENdHrqv48nW8to208Lb20nr
         ty/A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.115 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga14.intel.com (mga14.intel.com. [192.55.52.115])
        by gmr-mx.google.com with ESMTPS id b9si738336plx.0.2020.09.14.15.57.20
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 14 Sep 2020 15:57:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.115 as permitted sender) client-ip=192.55.52.115;
IronPort-SDR: 6QtJIrskLmEep+JpiAqYwstiNFlJcqlbEUMacwpzYQxtUnrEwyX5eMkcLzVdrAu98OoTRkaPTS
 jEQA1QYmM/eg==
X-IronPort-AV: E=McAfee;i="6000,8403,9744"; a="158456203"
X-IronPort-AV: E=Sophos;i="5.76,427,1592895600"; 
   d="gz'50?scan'50,208,50";a="158456203"
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
  by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 14 Sep 2020 15:57:19 -0700
IronPort-SDR: x3ZZiuIo7hcdqGtNrER+cz8I8n5Twki0yolSgpUNkCqKCdv6so/J8bMUyufjn/ETjO56tbeKmB
 9Jbljbu0IkAQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,427,1592895600"; 
   d="gz'50?scan'50,208,50";a="306345953"
Received: from lkp-server01.sh.intel.com (HELO a75722977aa5) ([10.239.97.150])
  by orsmga006.jf.intel.com with ESMTP; 14 Sep 2020 15:57:15 -0700
Received: from kbuild by a75722977aa5 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1kHxPN-0001DP-8b; Mon, 14 Sep 2020 22:57:13 +0000
Date: Tue, 15 Sep 2020 06:56:27 +0800
From: kernel test robot <lkp@intel.com>
To: Niklas Schnelle <schnelle@linux.ibm.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	linux-s390@vger.kernel.org, Vasily Gorbik <gor@linux.ibm.com>,
	Matthew Rosato <mjrosato@linux.ibm.com>
Subject: [s390:features 16/25] arch/s390/pci/pci_iov.c:23:6: warning: no
 previous prototype for function 'zpci_iov_map_resources'
Message-ID: <202009150625.682UggWU%lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="tKW2IUtsqtDRztdT"
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


--tKW2IUtsqtDRztdT
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/s390/linux.git features
head:   1a80b54d1ce1556bba6a8d8cd9384d6a9dcb641a
commit: abb95b7550f88bfb77081601f80662a259f2d143 [16/25] s390/pci: consolidate SR-IOV specific code
config: s390-randconfig-r011-20200914 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project b2c32c90bab09a6e2c1f370429db26017a182143)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install s390 cross compiling tool for clang build
        # apt-get install binutils-s390x-linux-gnu
        git checkout abb95b7550f88bfb77081601f80662a259f2d143
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=s390 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

   #define __le32_to_cpu(x) __swab32((__force __u32)(__le32)(x))
                                                             ^
   include/uapi/linux/swab.h:119:21: note: expanded from macro '__swab32'
           ___constant_swab32(x) :                 \
                              ^
   include/uapi/linux/swab.h:19:12: note: expanded from macro '___constant_swab32'
           (((__u32)(x) & (__u32)0x000000ffUL) << 24) |            \
                     ^
   In file included from arch/s390/pci/pci_iov.c:14:
   In file included from include/linux/pci.h:39:
   In file included from include/linux/io.h:13:
   In file included from arch/s390/include/asm/io.h:80:
   include/asm-generic/io.h:490:61: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           val = __le32_to_cpu((__le32 __force)__raw_readl(PCI_IOBASE + addr));
                                                           ~~~~~~~~~~ ^
   include/uapi/linux/byteorder/big_endian.h:34:59: note: expanded from macro '__le32_to_cpu'
   #define __le32_to_cpu(x) __swab32((__force __u32)(__le32)(x))
                                                             ^
   include/uapi/linux/swab.h:119:21: note: expanded from macro '__swab32'
           ___constant_swab32(x) :                 \
                              ^
   include/uapi/linux/swab.h:20:12: note: expanded from macro '___constant_swab32'
           (((__u32)(x) & (__u32)0x0000ff00UL) <<  8) |            \
                     ^
   In file included from arch/s390/pci/pci_iov.c:14:
   In file included from include/linux/pci.h:39:
   In file included from include/linux/io.h:13:
   In file included from arch/s390/include/asm/io.h:80:
   include/asm-generic/io.h:490:61: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           val = __le32_to_cpu((__le32 __force)__raw_readl(PCI_IOBASE + addr));
                                                           ~~~~~~~~~~ ^
   include/uapi/linux/byteorder/big_endian.h:34:59: note: expanded from macro '__le32_to_cpu'
   #define __le32_to_cpu(x) __swab32((__force __u32)(__le32)(x))
                                                             ^
   include/uapi/linux/swab.h:119:21: note: expanded from macro '__swab32'
           ___constant_swab32(x) :                 \
                              ^
   include/uapi/linux/swab.h:21:12: note: expanded from macro '___constant_swab32'
           (((__u32)(x) & (__u32)0x00ff0000UL) >>  8) |            \
                     ^
   In file included from arch/s390/pci/pci_iov.c:14:
   In file included from include/linux/pci.h:39:
   In file included from include/linux/io.h:13:
   In file included from arch/s390/include/asm/io.h:80:
   include/asm-generic/io.h:490:61: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           val = __le32_to_cpu((__le32 __force)__raw_readl(PCI_IOBASE + addr));
                                                           ~~~~~~~~~~ ^
   include/uapi/linux/byteorder/big_endian.h:34:59: note: expanded from macro '__le32_to_cpu'
   #define __le32_to_cpu(x) __swab32((__force __u32)(__le32)(x))
                                                             ^
   include/uapi/linux/swab.h:119:21: note: expanded from macro '__swab32'
           ___constant_swab32(x) :                 \
                              ^
   include/uapi/linux/swab.h:22:12: note: expanded from macro '___constant_swab32'
           (((__u32)(x) & (__u32)0xff000000UL) >> 24)))
                     ^
   In file included from arch/s390/pci/pci_iov.c:14:
   In file included from include/linux/pci.h:39:
   In file included from include/linux/io.h:13:
   In file included from arch/s390/include/asm/io.h:80:
   include/asm-generic/io.h:490:61: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           val = __le32_to_cpu((__le32 __force)__raw_readl(PCI_IOBASE + addr));
                                                           ~~~~~~~~~~ ^
   include/uapi/linux/byteorder/big_endian.h:34:59: note: expanded from macro '__le32_to_cpu'
   #define __le32_to_cpu(x) __swab32((__force __u32)(__le32)(x))
                                                             ^
   include/uapi/linux/swab.h:120:12: note: expanded from macro '__swab32'
           __fswab32(x))
                     ^
   In file included from arch/s390/pci/pci_iov.c:14:
   In file included from include/linux/pci.h:39:
   In file included from include/linux/io.h:13:
   In file included from arch/s390/include/asm/io.h:80:
   include/asm-generic/io.h:501:33: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           __raw_writeb(value, PCI_IOBASE + addr);
                               ~~~~~~~~~~ ^
   include/asm-generic/io.h:511:59: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           __raw_writew((u16 __force)cpu_to_le16(value), PCI_IOBASE + addr);
                                                         ~~~~~~~~~~ ^
   include/asm-generic/io.h:521:59: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           __raw_writel((u32 __force)cpu_to_le32(value), PCI_IOBASE + addr);
                                                         ~~~~~~~~~~ ^
   include/asm-generic/io.h:609:20: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           readsb(PCI_IOBASE + addr, buffer, count);
                  ~~~~~~~~~~ ^
   include/asm-generic/io.h:617:20: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           readsw(PCI_IOBASE + addr, buffer, count);
                  ~~~~~~~~~~ ^
   include/asm-generic/io.h:625:20: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           readsl(PCI_IOBASE + addr, buffer, count);
                  ~~~~~~~~~~ ^
   include/asm-generic/io.h:634:21: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           writesb(PCI_IOBASE + addr, buffer, count);
                   ~~~~~~~~~~ ^
   include/asm-generic/io.h:643:21: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           writesw(PCI_IOBASE + addr, buffer, count);
                   ~~~~~~~~~~ ^
   include/asm-generic/io.h:652:21: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           writesl(PCI_IOBASE + addr, buffer, count);
                   ~~~~~~~~~~ ^
>> arch/s390/pci/pci_iov.c:23:6: warning: no previous prototype for function 'zpci_iov_map_resources' [-Wmissing-prototypes]
   void zpci_iov_map_resources(struct pci_dev *pdev)
        ^
   arch/s390/pci/pci_iov.c:23:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void zpci_iov_map_resources(struct pci_dev *pdev)
   ^
   static 
>> arch/s390/pci/pci_iov.c:38:6: warning: no previous prototype for function 'zpci_iov_remove_virtfn' [-Wmissing-prototypes]
   void zpci_iov_remove_virtfn(struct pci_dev *pdev, int vfn)
        ^
   arch/s390/pci/pci_iov.c:38:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void zpci_iov_remove_virtfn(struct pci_dev *pdev, int vfn)
   ^
   static 
>> arch/s390/pci/pci_iov.c:61:5: warning: no previous prototype for function 'zpci_iov_setup_virtfn' [-Wmissing-prototypes]
   int zpci_iov_setup_virtfn(struct zpci_bus *zbus, struct pci_dev *virtfn, int vfn)
       ^
   arch/s390/pci/pci_iov.c:61:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   int zpci_iov_setup_virtfn(struct zpci_bus *zbus, struct pci_dev *virtfn, int vfn)
   ^
   static 
   23 warnings generated.

# https://git.kernel.org/pub/scm/linux/kernel/git/s390/linux.git/commit/?id=abb95b7550f88bfb77081601f80662a259f2d143
git remote add s390 https://git.kernel.org/pub/scm/linux/kernel/git/s390/linux.git
git fetch --no-tags s390 features
git checkout abb95b7550f88bfb77081601f80662a259f2d143
vim +/zpci_iov_map_resources +23 arch/s390/pci/pci_iov.c

    22	
  > 23	void zpci_iov_map_resources(struct pci_dev *pdev)
    24	{
    25		resource_size_t len;
    26		int i;
    27	
    28		for (i = 0; i < PCI_SRIOV_NUM_BARS; i++) {
    29			int bar = i + PCI_IOV_RESOURCES;
    30	
    31			len = pci_resource_len(pdev, bar);
    32			if (!len)
    33				continue;
    34			pdev->resource[bar].parent = &iov_res;
    35		}
    36	}
    37	
  > 38	void zpci_iov_remove_virtfn(struct pci_dev *pdev, int vfn)
    39	{
    40		pci_lock_rescan_remove();
    41		/* Linux' vfid's start at 0 vfn at 1 */
    42		pci_iov_remove_virtfn(pdev->physfn, vfn - 1);
    43		pci_unlock_rescan_remove();
    44	}
    45	
    46	static int zpci_iov_link_virtfn(struct pci_dev *pdev, struct pci_dev *virtfn, int vfid)
    47	{
    48		int rc;
    49	
    50		rc = pci_iov_sysfs_link(pdev, virtfn, vfid);
    51		if (rc)
    52			return rc;
    53	
    54		virtfn->is_virtfn = 1;
    55		virtfn->multifunction = 0;
    56		virtfn->physfn = pci_dev_get(pdev);
    57	
    58		return 0;
    59	}
    60	
  > 61	int zpci_iov_setup_virtfn(struct zpci_bus *zbus, struct pci_dev *virtfn, int vfn)

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202009150625.682UggWU%25lkp%40intel.com.

--tKW2IUtsqtDRztdT
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--tKW2IUtsqtDRztdT--
