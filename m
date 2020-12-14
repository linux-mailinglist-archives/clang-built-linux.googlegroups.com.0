Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBJPD337AKGQEM2E5PKI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3f.google.com (mail-oo1-xc3f.google.com [IPv6:2607:f8b0:4864:20::c3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 18B6C2D9F5B
	for <lists+clang-built-linux@lfdr.de>; Mon, 14 Dec 2020 19:40:39 +0100 (CET)
Received: by mail-oo1-xc3f.google.com with SMTP id a29sf7943886ook.10
        for <lists+clang-built-linux@lfdr.de>; Mon, 14 Dec 2020 10:40:39 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607971238; cv=pass;
        d=google.com; s=arc-20160816;
        b=A1BFzL/Ry0L5Pm3y/P3hwlGHa/5PszyCrFQCdhcSkanlHgiw061OEuAreNaqwBNhv/
         fG8w/O6YEsMiDN6KHq6COCQUvCuAKvaPlRiOEfwRXUMW1teonxVfBgqZZ+xMgGWefRJ2
         vFMBjUKSLc3lnx/kTJfdNAS6ja3JbWVZNVOB+zJAqZ/STcoChV80eXMCECYyPQ7NtsQq
         KS9rS8vgHMrpkJdSq5IzsckG8xq/tih9Wik2hrhweSLX0NHGL/4NwUSQ4nwQf8Yyhf7a
         YPOrd0dx6gjC/t0TY0ejMIuG1GWYL7/tkzwMTPF1K17mtdeYoX37t8kOuWue5AM5GISz
         xPGA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=q+XPYiV7xEPSoaNUUy0bZrvzaLJ+GQeQDoGGeVP+VqI=;
        b=0TZsynPatlKfQVP2JFNEj6dOAsG6yE7o4XuFQs4wUpdir2HAJQ1uoX94B2jlygchqd
         cGGjhrK7fp6xbIuRBYEgRbXeJPh1XF3HQem5QIhFiGC3bqjLBnN0YsNoeNZTE8JEqFo0
         7xelLu+ozQt7r9HeJwsiAs34qxvGqLM7g0LrM5TbQs74SWCYZ7sQAVNi9IS1VhIbUgxk
         +B2poo/o+k0pvZ3kK4yTbp28Erwe6hi7xVaWaaQxk5EnW+55Qz6InrEyfwwILGW8Fjq0
         TlCpmiShDcbflZr516leJ7i9HpEAi1R3ZEVSEC4TPkW7h2P6PP7Ts7gllfsKJhkk/p3Y
         e+Cw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.126 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=q+XPYiV7xEPSoaNUUy0bZrvzaLJ+GQeQDoGGeVP+VqI=;
        b=KKy+jHy4mTH91ShU3T5liSjZduQa/m1XIlGqyGBYQal0UEGnnDmL9a+Lo+IrHE320z
         7dMG7ALbV/ZhVJtgD/3jFYL0u1J1kntzrO780NFu/l3TpEtChwqY/5ReLmDODxqfmpGo
         XnUlQ6qlqZcdt0lnKsL1I36aRa4ZlFQCuZseWKb5T4G06Ri/GjqNbyi3DPO1Y1e2zA1Z
         zx1036GoMooY5vYz1LuqdbS33nX/dY09tRKgq7YVtu4U+U4PfmX02Fasckj/XaDxzVxv
         tvzQPcqFrDsq75H/3Ak13WyqKWjvWSGMKwMz5CuxX7fbQ+757YAPJ7Vy8qLCbBR2oE2D
         7mFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=q+XPYiV7xEPSoaNUUy0bZrvzaLJ+GQeQDoGGeVP+VqI=;
        b=T5tSbkWYOH7q+YWuMr5bEJaHyp8JxCg4njfoiSc6uj+o+7u7Et1HAZGKw0np1luGVK
         PfTAZWV/bADRV2L8uXO2VqAAdhBSBi6mfacVUcQi6cfwOkWn5qvKc5PER0ZKh69HA4kl
         uP0Kg/s+bFXEegob6zUgQ1IZY/WXqVmiODfH8fs/bq4dkMldZS/GjZl24BbSCfhRv6IH
         d9ftzooldSf4M1iTOFKr1nHv20LXIM2XUYcYggxs8ptCohpNERlCzmSQguOL+4gVI0B0
         wU58+QvQUoVRdVDbBACRrkqGJzVLkSLivPxMQj//6nV1VDxrNTBwCo7K44zKVd3OgmJQ
         stXg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531sxqTHvocFQT3FvcPv9aGYpyTnqOR7KdKAFoeOzBWrAY/X0f7a
	k1dOQ9gBFPeI6Y9Rxkq09Vo=
X-Google-Smtp-Source: ABdhPJy97TWBmkTgpvpZJ/AOJz1pfLwOMNhm1uLumg5ttrx68uFrXTDnoq9QH+OM2qf+CJqNt7wgaA==
X-Received: by 2002:a9d:2287:: with SMTP id y7mr20262803ota.137.1607971237935;
        Mon, 14 Dec 2020 10:40:37 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:24b0:: with SMTP id v16ls4635994ots.10.gmail; Mon,
 14 Dec 2020 10:40:37 -0800 (PST)
X-Received: by 2002:a05:6830:4f:: with SMTP id d15mr20777262otp.185.1607971237365;
        Mon, 14 Dec 2020 10:40:37 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607971237; cv=none;
        d=google.com; s=arc-20160816;
        b=lUm+++w6m45XKfefwVzcsWI8uObZps0xluin84tRv4yVnY6ZZP3BDIp+sRpyLOHba2
         X4a2+DJR6T8OsceN1wDlS6/2k3tiicF8Lfo3HtiKb0PEEU409UPB2hoz+VCTTJEbV/5p
         Vf2fLnjVUgJaWWEZErAqcstzrb/IU8rLvIT4JZKDLW7PouaSWQCBEzxYW0ISoV7Ye6Ng
         ObEQp0qdN4EmrPm1NCM9MUFTJr1YT18NJk9hYYJLRHbNNBmGBcgoFIHvsI1KQohKM0Ci
         7DrnXQETvhbYdiEy8XFcGAvetduvT/UkbCItffhj5pGHVNB5oCy+pI0DV1UVqhFn5YG2
         LQtA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=5Y9Cjkxl/kXjh5Uf/utHrAZVFaKVOJUKHDlDNm4Ar7o=;
        b=ZHaIJH3OnoarspAebMAiwRLkJNKN+tqmv4CpvL3x2IFNB/sF3FMXPYI0oHU3X7Cj57
         h2TODbiN1o+WV8pwC1N2Lzt7AtIAyDooOyeajqBE+rutTty9pmyCofloLPCfmSk2WaS1
         KMJcJO8NaxCDuiMbLyB+wFrQM4wQYrC67U87ZIuLjfgAnTj2bsTsEnBJtnsEJdHJxW9k
         ghnmVY2txVBLm8LAQizjtXqGUbJl3EPz0elz4YVg+/94isznQHPuDk75/7dxHmDhTsWs
         D0+mdjmhs1krflussd0IvsE44R68QvBRMkSCipayBWFHXWZt+DMe7PJ4Ulof0x/5pVHu
         9IxQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.126 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga18.intel.com (mga18.intel.com. [134.134.136.126])
        by gmr-mx.google.com with ESMTPS id t20si1561369oth.4.2020.12.14.10.40.37
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 14 Dec 2020 10:40:37 -0800 (PST)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.126 as permitted sender) client-ip=134.134.136.126;
IronPort-SDR: v5wC0j/MzxRunabS68HCgJQdj8CnO5oeJbpYHoN51xxI+D+pgpNbXl4HZ8vILFPszUiTbxduF7
 5K6EKkxZ7F9w==
X-IronPort-AV: E=McAfee;i="6000,8403,9834"; a="162504204"
X-IronPort-AV: E=Sophos;i="5.78,420,1599548400"; 
   d="gz'50?scan'50,208,50";a="162504204"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
  by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 14 Dec 2020 10:40:35 -0800
IronPort-SDR: tPnLipiYoCiIuslnDFPBOtodOTbOE21AY0a/AGv11IFCPe+o6cNDt2wB+mkSk7PxbYsSwwL5jU
 386ArhiH5kuQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,420,1599548400"; 
   d="gz'50?scan'50,208,50";a="336250954"
Received: from lkp-server02.sh.intel.com (HELO a947d92d0467) ([10.239.97.151])
  by orsmga003.jf.intel.com with ESMTP; 14 Dec 2020 10:40:33 -0800
Received: from kbuild by a947d92d0467 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1koslr-0000Qg-Us; Mon, 14 Dec 2020 18:40:31 +0000
Date: Tue, 15 Dec 2020 02:40:13 +0800
From: kernel test robot <lkp@intel.com>
To: Lars Povlsen <lars.povlsen@microchip.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com
Subject: [microchip-ung-linux-upstream:v5.10-webstax 49/88]
 drivers/dma/microchip-sparx5-fdma.c:1766:3: error: implicit declaration of
 function '__flush_dcache_area'
Message-ID: <202012150209.x29KCNtu-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="yrj/dFKFPuw6o+aM"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 134.134.136.126 as permitted
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


--yrj/dFKFPuw6o+aM
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://github.com/microchip-ung/linux-upstream.git v5.10-webstax
head:   0c603c93d534e71ceee9485bfe1b0b75561efb0e
commit: e92004968e12f9736518e67aebd099873c1c52f5 [49/88] dmaengine: sparx5: Add Sparx5 DMA driver
config: mips-randconfig-r025-20201214 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project d38205144febf4dc42c9270c6aa3d978f1ef65e1)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install mips cross compiling tool for clang build
        # apt-get install binutils-mips-linux-gnu
        # https://github.com/microchip-ung/linux-upstream/commit/e92004968e12f9736518e67aebd099873c1c52f5
        git remote add microchip-ung-linux-upstream https://github.com/microchip-ung/linux-upstream.git
        git fetch --no-tags microchip-ung-linux-upstream v5.10-webstax
        git checkout e92004968e12f9736518e67aebd099873c1c52f5
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=mips 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All error/warnings (new ones prefixed by >>):

>> drivers/dma/microchip-sparx5-fdma.c:765:4: warning: format specifies type 'unsigned long long' but the argument has type 'dma_addr_t' (aka 'unsigned int') [-Wformat]
                           iter->phys,
                           ^~~~~~~~~~
   include/linux/printk.h:430:38: note: expanded from macro 'pr_debug'
           no_printk(KERN_DEBUG pr_fmt(fmt), ##__VA_ARGS__)
                                       ~~~     ^~~~~~~~~~~
   include/linux/printk.h:140:17: note: expanded from macro 'no_printk'
                   printk(fmt, ##__VA_ARGS__);             \
                          ~~~    ^~~~~~~~~~~
   drivers/dma/microchip-sparx5-fdma.c:959:19: warning: format specifies type 'unsigned long long' but the argument has type 'dma_addr_t' (aka 'unsigned int') [-Wformat]
                    chan->chan_id, dcb->phys);
                                   ^~~~~~~~~
   include/linux/printk.h:430:38: note: expanded from macro 'pr_debug'
           no_printk(KERN_DEBUG pr_fmt(fmt), ##__VA_ARGS__)
                                       ~~~     ^~~~~~~~~~~
   include/linux/printk.h:140:17: note: expanded from macro 'no_printk'
                   printk(fmt, ##__VA_ARGS__);             \
                          ~~~    ^~~~~~~~~~~
   drivers/dma/microchip-sparx5-fdma.c:1009:4: warning: format specifies type 'unsigned long long' but the argument has type 'dma_addr_t' (aka 'unsigned int') [-Wformat]
                    dcb->phys,
                    ^~~~~~~~~
   include/linux/printk.h:430:38: note: expanded from macro 'pr_debug'
           no_printk(KERN_DEBUG pr_fmt(fmt), ##__VA_ARGS__)
                                       ~~~     ^~~~~~~~~~~
   include/linux/printk.h:140:17: note: expanded from macro 'no_printk'
                   printk(fmt, ##__VA_ARGS__);             \
                          ~~~    ^~~~~~~~~~~
   drivers/dma/microchip-sparx5-fdma.c:1057:6: warning: format specifies type 'unsigned long long' but the argument has type 'dma_addr_t' (aka 'unsigned int') [-Wformat]
                                    first->phys,
                                    ^~~~~~~~~~~
   include/linux/printk.h:430:38: note: expanded from macro 'pr_debug'
           no_printk(KERN_DEBUG pr_fmt(fmt), ##__VA_ARGS__)
                                       ~~~     ^~~~~~~~~~~
   include/linux/printk.h:140:17: note: expanded from macro 'no_printk'
                   printk(fmt, ##__VA_ARGS__);             \
                          ~~~    ^~~~~~~~~~~
   drivers/dma/microchip-sparx5-fdma.c:1078:5: warning: format specifies type 'unsigned long long' but the argument has type 'dma_addr_t' (aka 'unsigned int') [-Wformat]
                            iter->phys,
                            ^~~~~~~~~~
   include/linux/printk.h:430:38: note: expanded from macro 'pr_debug'
           no_printk(KERN_DEBUG pr_fmt(fmt), ##__VA_ARGS__)
                                       ~~~     ^~~~~~~~~~~
   include/linux/printk.h:140:17: note: expanded from macro 'no_printk'
                   printk(fmt, ##__VA_ARGS__);             \
                          ~~~    ^~~~~~~~~~~
   drivers/dma/microchip-sparx5-fdma.c:1197:31: warning: format specifies type 'unsigned long long' but the argument has type 'dma_addr_t' (aka 'unsigned int') [-Wformat]
                                    fdma_chan->chan.chan_id, prev->phys);
                                                             ^~~~~~~~~~
   include/linux/printk.h:430:38: note: expanded from macro 'pr_debug'
           no_printk(KERN_DEBUG pr_fmt(fmt), ##__VA_ARGS__)
                                       ~~~     ^~~~~~~~~~~
   include/linux/printk.h:140:17: note: expanded from macro 'no_printk'
                   printk(fmt, ##__VA_ARGS__);             \
                          ~~~    ^~~~~~~~~~~
   drivers/dma/microchip-sparx5-fdma.c:1215:6: warning: format specifies type 'unsigned long long' but the argument has type 'dma_addr_t' (aka 'unsigned int') [-Wformat]
                                    iter->phys,
                                    ^~~~~~~~~~
   include/linux/printk.h:430:38: note: expanded from macro 'pr_debug'
           no_printk(KERN_DEBUG pr_fmt(fmt), ##__VA_ARGS__)
                                       ~~~     ^~~~~~~~~~~
   include/linux/printk.h:140:17: note: expanded from macro 'no_printk'
                   printk(fmt, ##__VA_ARGS__);             \
                          ~~~    ^~~~~~~~~~~
   drivers/dma/microchip-sparx5-fdma.c:1257:32: warning: format specifies type 'unsigned long long' but the argument has type 'dma_addr_t' (aka 'unsigned int') [-Wformat]
                                            fdma_chan->chan.chan_id, iter->phys);
                                                                     ^~~~~~~~~~
   include/linux/printk.h:430:38: note: expanded from macro 'pr_debug'
           no_printk(KERN_DEBUG pr_fmt(fmt), ##__VA_ARGS__)
                                       ~~~     ^~~~~~~~~~~
   include/linux/printk.h:140:17: note: expanded from macro 'no_printk'
                   printk(fmt, ##__VA_ARGS__);             \
                          ~~~    ^~~~~~~~~~~
   drivers/dma/microchip-sparx5-fdma.c:1358:21: warning: format specifies type 'unsigned long long' but the argument has type 'dma_addr_t' (aka 'unsigned int') [-Wformat]
                                    chan->chan_id, dcb->phys, &dcb->txd, idx);
                                                   ^~~~~~~~~
   include/linux/printk.h:430:38: note: expanded from macro 'pr_debug'
           no_printk(KERN_DEBUG pr_fmt(fmt), ##__VA_ARGS__)
                                       ~~~     ^~~~~~~~~~~
   include/linux/printk.h:140:17: note: expanded from macro 'no_printk'
                   printk(fmt, ##__VA_ARGS__);             \
                          ~~~    ^~~~~~~~~~~
   drivers/dma/microchip-sparx5-fdma.c:1410:4: warning: format specifies type 'unsigned long long' but the argument has type 'dma_addr_t' (aka 'unsigned int') [-Wformat]
                           iter->txd.phys,
                           ^~~~~~~~~~~~~~
   include/linux/printk.h:430:38: note: expanded from macro 'pr_debug'
           no_printk(KERN_DEBUG pr_fmt(fmt), ##__VA_ARGS__)
                                       ~~~     ^~~~~~~~~~~
   include/linux/printk.h:140:17: note: expanded from macro 'no_printk'
                   printk(fmt, ##__VA_ARGS__);             \
                          ~~~    ^~~~~~~~~~~
   drivers/dma/microchip-sparx5-fdma.c:1472:5: warning: format specifies type 'unsigned long long' but the argument has type 'dma_addr_t' (aka 'unsigned int') [-Wformat]
                            first->phys);
                            ^~~~~~~~~~~
   include/linux/printk.h:430:38: note: expanded from macro 'pr_debug'
           no_printk(KERN_DEBUG pr_fmt(fmt), ##__VA_ARGS__)
                                       ~~~     ^~~~~~~~~~~
   include/linux/printk.h:140:17: note: expanded from macro 'no_printk'
                   printk(fmt, ##__VA_ARGS__);             \
                          ~~~    ^~~~~~~~~~~
   drivers/dma/microchip-sparx5-fdma.c:1482:7: warning: format specifies type 'unsigned long long' but the argument has type 'dma_addr_t' (aka 'unsigned int') [-Wformat]
                                            dcb->phys);
                                            ^~~~~~~~~
   include/linux/printk.h:430:38: note: expanded from macro 'pr_debug'
           no_printk(KERN_DEBUG pr_fmt(fmt), ##__VA_ARGS__)
                                       ~~~     ^~~~~~~~~~~
   include/linux/printk.h:140:17: note: expanded from macro 'no_printk'
                   printk(fmt, ##__VA_ARGS__);             \
                          ~~~    ^~~~~~~~~~~
   drivers/dma/microchip-sparx5-fdma.c:1490:8: warning: format specifies type 'unsigned long long' but the argument has type 'dma_addr_t' (aka 'unsigned int') [-Wformat]
                                                    prev->phys, dcb->phys);
                                                    ^~~~~~~~~~
   include/linux/printk.h:430:38: note: expanded from macro 'pr_debug'
           no_printk(KERN_DEBUG pr_fmt(fmt), ##__VA_ARGS__)
                                       ~~~     ^~~~~~~~~~~
   include/linux/printk.h:140:17: note: expanded from macro 'no_printk'
                   printk(fmt, ##__VA_ARGS__);             \
                          ~~~    ^~~~~~~~~~~
   drivers/dma/microchip-sparx5-fdma.c:1490:20: warning: format specifies type 'unsigned long long' but the argument has type 'dma_addr_t' (aka 'unsigned int') [-Wformat]
                                                    prev->phys, dcb->phys);
                                                                ^~~~~~~~~
   include/linux/printk.h:430:38: note: expanded from macro 'pr_debug'
           no_printk(KERN_DEBUG pr_fmt(fmt), ##__VA_ARGS__)
                                       ~~~     ^~~~~~~~~~~
   include/linux/printk.h:140:17: note: expanded from macro 'no_printk'
                   printk(fmt, ##__VA_ARGS__);             \
                          ~~~    ^~~~~~~~~~~
   drivers/dma/microchip-sparx5-fdma.c:1526:8: warning: format specifies type 'unsigned long long' but the argument has type 'dma_addr_t' (aka 'unsigned int') [-Wformat]
                                                    prev->phys, dcb->phys);
                                                    ^~~~~~~~~~
   include/linux/printk.h:430:38: note: expanded from macro 'pr_debug'
           no_printk(KERN_DEBUG pr_fmt(fmt), ##__VA_ARGS__)
                                       ~~~     ^~~~~~~~~~~
   include/linux/printk.h:140:17: note: expanded from macro 'no_printk'
                   printk(fmt, ##__VA_ARGS__);             \
                          ~~~    ^~~~~~~~~~~
   drivers/dma/microchip-sparx5-fdma.c:1526:20: warning: format specifies type 'unsigned long long' but the argument has type 'dma_addr_t' (aka 'unsigned int') [-Wformat]
                                                    prev->phys, dcb->phys);
                                                                ^~~~~~~~~
   include/linux/printk.h:430:38: note: expanded from macro 'pr_debug'
           no_printk(KERN_DEBUG pr_fmt(fmt), ##__VA_ARGS__)
                                       ~~~     ^~~~~~~~~~~
   include/linux/printk.h:140:17: note: expanded from macro 'no_printk'
                   printk(fmt, ##__VA_ARGS__);             \
                          ~~~    ^~~~~~~~~~~
   drivers/dma/microchip-sparx5-fdma.c:1546:5: warning: format specifies type 'unsigned long long' but the argument has type 'dma_addr_t' (aka 'unsigned int') [-Wformat]
                            dcb->phys);
                            ^~~~~~~~~
   include/linux/printk.h:430:38: note: expanded from macro 'pr_debug'
           no_printk(KERN_DEBUG pr_fmt(fmt), ##__VA_ARGS__)
                                       ~~~     ^~~~~~~~~~~
   include/linux/printk.h:140:17: note: expanded from macro 'no_printk'
                   printk(fmt, ##__VA_ARGS__);             \
                          ~~~    ^~~~~~~~~~~
   drivers/dma/microchip-sparx5-fdma.c:1575:4: warning: format specifies type 'unsigned long long' but the argument has type 'dma_addr_t' (aka 'unsigned int') [-Wformat]
                           iter->phys,
                           ^~~~~~~~~~
   include/linux/printk.h:430:38: note: expanded from macro 'pr_debug'
           no_printk(KERN_DEBUG pr_fmt(fmt), ##__VA_ARGS__)
                                       ~~~     ^~~~~~~~~~~
   include/linux/printk.h:140:17: note: expanded from macro 'no_printk'
                   printk(fmt, ##__VA_ARGS__);             \
                          ~~~    ^~~~~~~~~~~
   drivers/dma/microchip-sparx5-fdma.c:1655:4: warning: format specifies type 'unsigned long long' but the argument has type 'dma_addr_t' (aka 'unsigned int') [-Wformat]
                           iter->phys,
                           ^~~~~~~~~~
   include/linux/printk.h:430:38: note: expanded from macro 'pr_debug'
           no_printk(KERN_DEBUG pr_fmt(fmt), ##__VA_ARGS__)
                                       ~~~     ^~~~~~~~~~~
   include/linux/printk.h:140:17: note: expanded from macro 'no_printk'
                   printk(fmt, ##__VA_ARGS__);             \
                          ~~~    ^~~~~~~~~~~
>> drivers/dma/microchip-sparx5-fdma.c:1766:3: error: implicit declaration of function '__flush_dcache_area' [-Werror,-Wimplicit-function-declaration]
                   __flush_dcache_area(buffer, 64);
                   ^
   drivers/dma/microchip-sparx5-fdma.c:1766:3: note: did you mean '__flush_dcache_page'?
   arch/mips/include/asm/cacheflush.h:53:13: note: '__flush_dcache_page' declared here
   extern void __flush_dcache_page(struct page *page);
               ^
   drivers/dma/microchip-sparx5-fdma.c:1775:13: warning: format specifies type 'unsigned long long' but the argument has type 'dma_addr_t' (aka 'unsigned int') [-Wformat]
                            buffer, phys,
                                    ^~~~
   drivers/dma/microchip-sparx5-fdma.c:1787:13: warning: format specifies type 'unsigned long long' but the argument has type 'dma_addr_t' (aka 'unsigned int') [-Wformat]
                            buffer, phys,
                                    ^~~~
>> drivers/dma/microchip-sparx5-fdma.c:1842:55: error: incompatible pointer types passing 'u64 *' (aka 'unsigned long long *') to parameter of type 'dma_addr_t *' (aka 'unsigned int *') [-Werror,-Wincompatible-pointer-types]
           buffer = dma_pool_zalloc(priv->dcb_pool, GFP_ATOMIC, &phys);
                                                                ^~~~~
   include/linux/dmapool.h:53:21: note: passing argument to parameter 'handle' here
                                       dma_addr_t *handle)
                                                   ^
>> drivers/dma/microchip-sparx5-fdma.c:1927:3: warning: format specifies type 'unsigned long long' but the argument has type 'phys_addr_t' (aka 'unsigned int') [-Wformat]
                   region->phys_addr,
                   ^~~~~~~~~~~~~~~~~
   include/linux/printk.h:430:38: note: expanded from macro 'pr_debug'
           no_printk(KERN_DEBUG pr_fmt(fmt), ##__VA_ARGS__)
                                       ~~~     ^~~~~~~~~~~
   include/linux/printk.h:140:17: note: expanded from macro 'no_printk'
                   printk(fmt, ##__VA_ARGS__);             \
                          ~~~    ^~~~~~~~~~~
   drivers/dma/microchip-sparx5-fdma.c:1930:3: warning: format specifies type 'unsigned long long' but the argument has type 'phys_addr_t' (aka 'unsigned int') [-Wformat]
                   region->vcore_addr);
                   ^~~~~~~~~~~~~~~~~~
   include/linux/printk.h:430:38: note: expanded from macro 'pr_debug'
           no_printk(KERN_DEBUG pr_fmt(fmt), ##__VA_ARGS__)
                                       ~~~     ^~~~~~~~~~~
   include/linux/printk.h:140:17: note: expanded from macro 'no_printk'
                   printk(fmt, ##__VA_ARGS__);             \
                          ~~~    ^~~~~~~~~~~
>> drivers/dma/microchip-sparx5-fdma.c:2222:13: warning: implicit conversion from 'long long' to 'phys_addr_t' (aka 'unsigned int') changes value from 26038239232 to 268435456 [-Wconstant-conversion]
                                                  VCORE_CSR_SPACE);
                                                  ^~~~~~~~~~~~~~~
   drivers/dma/microchip-sparx5-fdma.c:42:52: note: expanded from macro 'VCORE_CSR_SPACE'
   #define VCORE_CSR_SPACE                            0x610000000
                                                      ^~~~~~~~~~~
   drivers/dma/microchip-sparx5-fdma.c:2229:65: warning: implicit conversion from 'long long' to 'phys_addr_t' (aka 'unsigned int') changes value from 25769803776 to 0 [-Wconstant-conversion]
           microchip_sparx5_init_region(pdev, priv, res, SPARX5_AMBA_TOP, AMBA_TOP_SPACE);
           ~~~~~~~~~~~~~~~~~~~~~~~~~~~~                                   ^~~~~~~~~~~~~~
   drivers/dma/microchip-sparx5-fdma.c:41:52: note: expanded from macro 'AMBA_TOP_SPACE'
   #define AMBA_TOP_SPACE                             0x600000000
                                                      ^~~~~~~~~~~
   drivers/dma/microchip-sparx5-fdma.c:2280:6: warning: format specifies type 'unsigned long long' but the argument has type 'dma_addr_t' (aka 'unsigned int') [-Wformat]
                                    iter->phys,
                                    ^~~~~~~~~~
   include/linux/printk.h:430:38: note: expanded from macro 'pr_debug'
           no_printk(KERN_DEBUG pr_fmt(fmt), ##__VA_ARGS__)
                                       ~~~     ^~~~~~~~~~~
   include/linux/printk.h:140:17: note: expanded from macro 'no_printk'
                   printk(fmt, ##__VA_ARGS__);             \
                          ~~~    ^~~~~~~~~~~
>> drivers/dma/microchip-sparx5-fdma.c:2322:6: warning: no previous prototype for function 'unload_sparx5_fdma_driver' [-Wmissing-prototypes]
   void unload_sparx5_fdma_driver(void)
        ^
   drivers/dma/microchip-sparx5-fdma.c:2322:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void unload_sparx5_fdma_driver(void)
   ^
   static 
   27 warnings and 2 errors generated.

vim +/__flush_dcache_area +1766 drivers/dma/microchip-sparx5-fdma.c

  1750	
  1751	static int microchip_sparx5_buffer_access_test(struct microchip_sparx5_fdma *priv,
  1752					      char *message,
  1753					      int size,
  1754					      bool cached,
  1755					      u32 *buffer,
  1756					      dma_addr_t phys)
  1757	{
  1758		u32 value1 = 0xdeadbeef;
  1759		u32 value2;
  1760	
  1761		if (priv->using_pcie) {
  1762			phys += PCIE_TARGET_OFFSET;
  1763		}
  1764		*buffer = value1;
  1765		if (cached) {
> 1766			__flush_dcache_area(buffer, 64);
  1767		}
  1768	
  1769		value2 = microchip_sparx5_vcore_readl(priv, phys);
  1770		if (value1 != value2) {
  1771			snprintf(message, size, "Read to %scached buffer via vcore:"
  1772				 " 0x%px, phys: 0x%09llx, "
  1773				 " 0x%x != 0x%x\n",
  1774				 cached ? "" : "un",
  1775				 buffer, phys,
  1776				 value1, value2);
  1777			return -1;
  1778		}
  1779		value1 = 0x12345678;
  1780		microchip_sparx5_fdma_vcore_writel(priv, phys, value1);
  1781		value2 = *buffer;
  1782		if (value1 != value2) {
  1783			snprintf(message, size, "Write to %scached buffer via vcore:"
  1784				 " 0x%px, phys: 0x%09llx, "
  1785				 " 0x%x != 0x%x\n",
  1786				 cached ? "" : "un",
  1787				 buffer, phys,
  1788				 value1, value2);
  1789			return -1;
  1790		}
  1791		return 0;
  1792	}
  1793	
  1794	
  1795	static int microchip_sparx5_access_test(struct platform_device *pdev,
  1796				       struct microchip_sparx5_fdma *priv)
  1797	{
  1798		/* Check VCore Access functionality by reading chip id */
  1799		u32 test0 = 0x12345678;
  1800		u32 test1 = 0xabcdef;
  1801		u32 value = 0;
  1802		u32 vcore_chip_id;
  1803		u32 vaccess_chip_id;
  1804		char message[160];
  1805		u64 phys;
  1806		u32 *buffer;
  1807		int res;
  1808	
  1809		vcore_chip_id = microchip_sparx5_fdma_readl(priv, DEVCPU_GCB_CHIP_REGS_ID_OFF);
  1810		dev_info(&pdev->dev, "Chip ID: %08x\n", vcore_chip_id);
  1811		if (vcore_chip_id != CHIP_ID) {
  1812			snprintf(message, 160, "Chip ID error: 0x%08x != 0x%08x \n",
  1813				vcore_chip_id, CHIP_ID);
  1814			goto error;
  1815		}
  1816	
  1817		vaccess_chip_id = microchip_sparx5_vcore_read_reg(priv,
  1818							 DEVCPU_GCB_CHIP_REGS_ID_OFF);
  1819		if (vaccess_chip_id != vcore_chip_id) {
  1820			snprintf(message, 160, "VCore access error: CSR space:"
  1821				 " chip_id: 0x%08x\n",
  1822				vaccess_chip_id);
  1823			goto error;
  1824		}
  1825		/* Write value to General CPU reg 0 */
  1826		microchip_sparx5_fdma_vcore_write_reg(priv, CPU_REGS_GPR_R_OFF(0), test0);
  1827		/* Write value to General CPU reg 1 */
  1828		microchip_sparx5_fdma_vcore_write_reg(priv, CPU_REGS_GPR_R_OFF(1), test1);
  1829		/* Read General CPU reg 0 */
  1830		value = microchip_sparx5_vcore_read_reg(priv, CPU_REGS_GPR_R_OFF(0));
  1831		if (test0 != value) {
  1832			snprintf(message, 160, "VCore access error: AMBA_TOP space\n");
  1833			goto error;
  1834		}
  1835		/* Read General CPU reg 1 */
  1836		value = microchip_sparx5_vcore_read_reg(priv, CPU_REGS_GPR_R_OFF(1));
  1837		if (test1 != value) {
  1838			snprintf(message, 160, "VCore access error: AMBA_TOP space\n");
  1839			goto error;
  1840		}
  1841		microchip_sparx5_fdma_disable_acp_caching(priv);
> 1842		buffer = dma_pool_zalloc(priv->dcb_pool, GFP_ATOMIC, &phys);
  1843		res = microchip_sparx5_buffer_access_test(priv, message, 160, 0, buffer, phys);
  1844		dma_pool_free(priv->dcb_pool, buffer, phys);
  1845		if (res) {
  1846			goto error;
  1847		}
  1848		buffer = kmalloc(64, GFP_KERNEL);
  1849		phys = virt_to_phys(buffer);
  1850		res = microchip_sparx5_buffer_access_test(priv, message, 160, 1, buffer, phys);
  1851		kfree(buffer);
  1852		if (res) {
  1853			goto error;
  1854		}
  1855		snprintf(message, 160, "Successfully accessed host via vcore access\n");
  1856		dev_info(&pdev->dev, message);
  1857		return 0;
  1858	error:
  1859		dev_err(&pdev->dev, message);
  1860		return -ENODEV;
  1861	}
  1862	
  1863	static void microchip_sparx5_setup_pcie_atu(struct microchip_sparx5_fdma *priv)
  1864	{
  1865		/* DMA Address Translation Configuration
  1866		 * Enable outbound ATU for region 0:
  1867		 * Set enable bit
  1868		 * Set base address = PCI_TARGET_SPACE (the vcore side)
  1869		 * Set limit address =  PCI_TARGET_SPACE + 4GB (the vcore side)
  1870		 * Set target address = 0 (the host side)
  1871		 */
  1872		microchip_sparx5_fdma_vcore_write_reg(priv,
  1873			PCIE_DM_EP_PF0_ATU_REGION_CTRL_2_OFF_OUTBOUND_0_OFF,
  1874			PCIE_DM_EP_PF0_ATU_REGION_CTRL_2_OFF_OUTBOUND_0_EN);
  1875	
  1876		microchip_sparx5_fdma_vcore_write_reg(priv,
  1877			PCIE_DM_EP_PF0_ATU_LWR_BASE_ADDR_OFF_OUTBOUND_0_OFF,
  1878			(u32)PCIE_TARGET_OFFSET);
  1879		microchip_sparx5_fdma_vcore_write_reg(priv,
  1880			PCIE_DM_EP_PF0_ATU_UPPER_BASE_ADDR_OFF_OUTBOUND_0_OFF,
  1881			(u32)(PCIE_TARGET_OFFSET >> 32));
  1882		microchip_sparx5_fdma_vcore_write_reg(priv,
  1883			PCIE_DM_EP_PF0_ATU_LIMIT_ADDR_OFF_OUTBOUND_0_OFF,
  1884			~0x0);
  1885		microchip_sparx5_fdma_vcore_write_reg(priv,
  1886			PCIE_DM_EP_PF0_ATU_UPPR_LIMIT_ADDR_OFF_OUTBOUND_0_OFF,
  1887			(u32)(PCIE_TARGET_OFFSET >> 32));
  1888		microchip_sparx5_fdma_vcore_write_reg(priv,
  1889			PCIE_DM_EP_PF0_ATU_LWR_TARGET_ADDR_OFF_OUTBOUND_0_OFF,
  1890			0);
  1891		microchip_sparx5_fdma_vcore_write_reg(priv,
  1892			PCIE_DM_EP_PF0_ATU_UPPER_TARGET_ADDR_OFF_OUTBOUND_0_OFF,
  1893			0);
  1894	}
  1895	
  1896	static void microchip_sparx5_reset_fdma(struct microchip_sparx5_fdma *priv)
  1897	{
  1898		pr_debug("%s:%d %s\n", __FILE__, __LINE__, __func__);
  1899		microchip_sparx5_fdma_writel(priv, FDMA_CTRL_OFF, 0);
  1900		microchip_sparx5_fdma_writel(priv, FDMA_CTRL_OFF, FDMA_CTRL_NRESET);
  1901		/* Use the Address Translation for PCIe */
  1902		if (priv->using_pcie) {
  1903			microchip_sparx5_setup_pcie_atu(priv);
  1904		}
  1905		/* Workaround for FDMA secure mode operations */
  1906		microchip_sparx5_fdma_disable_acp_caching(priv);
  1907	}
  1908	
  1909	static bool microchip_sparx5_init_region(struct platform_device *pdev,
  1910		struct microchip_sparx5_fdma *priv, struct resource *res,
  1911		unsigned int top, phys_addr_t vcore_addr)
  1912	{
  1913		struct microchip_sparx5_fdma_region *region = 0;
  1914	
  1915		if (!res->start || !res->end) {
  1916			return 0;
  1917		}
  1918		region = &priv->regions[GET_REGION_INDEX(top)];
  1919		region->phys_addr = res->start;
  1920		region->size = res->end - res->start + 1;
  1921		region->io_addr = ioremap(region->phys_addr, region->size);
  1922		region->vcore_addr = vcore_addr;
  1923		pr_debug("%s:%d %s: IO Mapping %u: 0x%llx -> 0x%px .. 0x%px,"
  1924			" vcore: 0x%llx\n",
  1925			__FILE__, __LINE__, __func__,
  1926			GET_REGION_INDEX(top),
> 1927			region->phys_addr,
  1928			region->io_addr,
  1929			region->io_addr + region->size - 1,
  1930			region->vcore_addr);
  1931		return region->phys_addr != region->vcore_addr;
  1932	}
  1933	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202012150209.x29KCNtu-lkp%40intel.com.

--yrj/dFKFPuw6o+aM
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
55lcYJb+4thw/w8PcX/sDPoBAA==

--yrj/dFKFPuw6o+aM--
