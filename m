Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBZVC72AQMGQEX3VUO7I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3a.google.com (mail-oo1-xc3a.google.com [IPv6:2607:f8b0:4864:20::c3a])
	by mail.lfdr.de (Postfix) with ESMTPS id D10DF32B812
	for <lists+clang-built-linux@lfdr.de>; Wed,  3 Mar 2021 14:38:47 +0100 (CET)
Received: by mail-oo1-xc3a.google.com with SMTP id k19sf1317907ook.13
        for <lists+clang-built-linux@lfdr.de>; Wed, 03 Mar 2021 05:38:47 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614778726; cv=pass;
        d=google.com; s=arc-20160816;
        b=uQrgHWhNmWg1rj9w4DvwHroKsdKe52ScS3gTiw0WHCvVI1bilbKH9PkmOe05DifxFc
         IiUdS8barepuycWR1EAw6y/HKWDglJcAw+5gICCtQwmfRBzOyCpqZ7yk+z0uHfOeebqH
         EIhEEABnRSWcm1+Cda5aFzpBnaZVuj/F6sxOGEtj8sP3O4Zsg1+JPk4vIfADGznAdfm6
         seK0PvWpNmPS2VIm2Q+aPu1gnL1NmLcnBD+kN29ZrvBvWguJJuvCdqgcfh9/MG2aM0vu
         gdyL7iWVXSNV7gV4cP7SHmQ+p5AmyUk8zTh2+Yf1E0J1GGkkL6R/Vt0252v9Kj4I1joG
         jG8Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=2qCsltj9rvJAXpVxcQpCmMffGMUoTLjKxcJSx0vjLvM=;
        b=aVQ2WCL2j1u4alw49I+Ll4RfdQc4AemB797rsCokdLyzr9p7s8+9PSRKmR12DlM0Zn
         n2R1vFeYJyU/a36Em2rDSQU2FvJAwGRPZfXr81czVKrBGT9UjppzE+MPpT/SjBNZKgAs
         +ChpxTd+5F14ZN2XQHRivSZ5zESZCsky1A976ywsEdXFC52T3uYDFZAA1WIP/Dov6cJN
         BKG0tn6b07IAUdg5wSHCyLQBPL9FsFFhGbsjzf1G5Us6RXnkPNFDvgXkyJsjD9bCf8HH
         viqn88uhdj2T73o1+GwfRlkmbxH+OSVQtBAuPUnx0f5ylvOj4DH8R6GNFKsni1W3Fbvf
         R2Ng==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.65 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2qCsltj9rvJAXpVxcQpCmMffGMUoTLjKxcJSx0vjLvM=;
        b=SQ2Slxr3+inR2QSJgMmn2eUlmglMeWrjIUOIradLDdLmUDVabQYYbXxu448gKO7wO+
         QYLVCc0xBtlBVJzmATh6N1xIZw70fTbvNg6FjLsVg0KpcQGW1bZ/HfUf5YmjCAoF9NTC
         uwUX5GolDEaNDvJxt261dv1WGqjfAcBmwyK3SgYt00VLIqQzslAcxBAhkD50LcLxiRig
         YqLOXE/VEksZUdXlP0gOBle+BpeR0G0NbRS3ZtsJQceXEvwmGtI6gQFw8oHEXIebdFt9
         /kp/i/dINqAvyt1wjh03yIiGzVeSYTWN+wRyPwHE9pC0eMgNGKLhGsHZ7Y69TyfrYUlI
         ArdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:references:mime-version:content-disposition
         :in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2qCsltj9rvJAXpVxcQpCmMffGMUoTLjKxcJSx0vjLvM=;
        b=QBv3xcH0dX78KbJRuEeNFW7KkKocAxkXlj7wNaN2e+pG/8SgsTyx8JEzqynOF80Zmm
         YfC9xmgRu75ElZn+zWKWv7F4j0VRRHCw15j1Co9LjSU1WuyF3B69DvqLTK4t3hvzHsSr
         KsY5rftz/t4yI7qZq9sY/wllJzlziYr1rNqiS+VmLS5hcaHE1bRmwVqTIRjhhDkfEavt
         kDeWmWhNqhedmz6JArKiOvPVQatHjN0FIIBFyHUv9m/iHnmT4qwx6c6HdFI8S/RPDf8d
         SXSgMlJDaQgN3A1CDzifaqq5FR0yqCZ4XeG8x2WRO7hf/Al5pPsLZVdCAN2Kz1B75+Gn
         e9xQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532I2Jm+xpIlEp1jIsObTov3guusbXQsGBc7YDqK77EyDPcAyi1I
	1T0Ik23ZwuQ9aemxbwzOJjM=
X-Google-Smtp-Source: ABdhPJwAKaXLkTB64UB27RjyWW9Zc5uA9DFFqohZkOAgo9ZReZRmqLFJu/9l/Cvi8j74uzvTbcuIwQ==
X-Received: by 2002:a05:6830:14cc:: with SMTP id t12mr22702237otq.109.1614778726432;
        Wed, 03 Mar 2021 05:38:46 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:4603:: with SMTP id y3ls617804ote.2.gmail; Wed, 03 Mar
 2021 05:38:46 -0800 (PST)
X-Received: by 2002:a9d:8d1:: with SMTP id 75mr4477290otf.366.1614778725917;
        Wed, 03 Mar 2021 05:38:45 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614778725; cv=none;
        d=google.com; s=arc-20160816;
        b=RXgC2mrOfhlFo/TbA4chBeqfsjUjZUoTQ0c2rGAd/enQTTMymTZZYzGc/MSAUEfO4h
         G01RWxLZfDXVvNnPn/LoPUOGINlRr4ycNuy5wgCxhVVM0ugr0sKcgrIhYM1hE5Ae1sWH
         77cSb9owB3ARUVtSDjWc/CXf7yMrAUC1CI8dIQJzJlyW1D8VDKudqOQ2I/5a3DF8/GPu
         NQMJSXS8ejg54EC2Mhx1K3n3cMKn3C7OAe4m6AIYLstJNA6Vm6GiJanuS2y/7BokgvrN
         SFH5nODkcju5DQ2kMIrenBZeAY4DxUkW+IxvoGNZM4hHU8K6f/Iq3ta92Djbd5tu3ekO
         UAiw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:ironport-sdr:ironport-sdr;
        bh=voq4n6o2FprjizIE8DG8Jfykm83NAk8dhewOS4b4L00=;
        b=ZMCNNn4XjIWZYZyzQJJYNd3QEwxrbKOek0CzHvuRGXkC+PEDLjbWDQIW0+woCWxCVo
         +1XViruEIpGuwoKZDm6vFSlyMadeZj79e6L0aeeIhJ8OVqOVuAPVF7Py5jrmYhczFk6G
         44HoxnHv4XaPaU9HN11BOLcCdzo4cP3tuINSZgfIs7UK0nGNgYFMcB93/SUE7BBJnM57
         IRtxcEkyJkEROJahWSbFlAbG7wMhj3NOabo/50FvMYHgFO2MYvxcMUVsydbS9JGfN0iB
         c4MAajet5mCJsuZdV3s08DQdIgIVwklqX34gNI4YNZ9/g2DHYFRBFAXZK4yCeqpgTdDo
         IjGQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.65 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga03.intel.com (mga03.intel.com. [134.134.136.65])
        by gmr-mx.google.com with ESMTPS id v26si1676198otn.1.2021.03.03.05.38.44
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 03 Mar 2021 05:38:45 -0800 (PST)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.65 as permitted sender) client-ip=134.134.136.65;
IronPort-SDR: UblSJDEbskd1O0ozTxUuCYIp6KP67YdAyiZW7Q62V/YmU2QYG8IBJp5g6pFYCOPTH4edinNlUZ
 8uegqAKMqGZw==
X-IronPort-AV: E=McAfee;i="6000,8403,9911"; a="187254981"
X-IronPort-AV: E=Sophos;i="5.81,220,1610438400"; 
   d="gz'50?scan'50,208,50";a="187254981"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
  by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 03 Mar 2021 05:38:43 -0800
IronPort-SDR: E001/181qIrUCVSrr0CKiLzaFjd8Tb9yWc/sOX0zyvPocqZ3e3uvAB5BFuO40wiLxb3YqDEXBf
 3xwoHUgOQ2hw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,220,1610438400"; 
   d="gz'50?scan'50,208,50";a="518270735"
Received: from lkp-server02.sh.intel.com (HELO 2482ff9f8ac0) ([10.239.97.151])
  by orsmga004.jf.intel.com with ESMTP; 03 Mar 2021 05:38:38 -0800
Received: from kbuild by 2482ff9f8ac0 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1lHRi1-0001WY-IZ; Wed, 03 Mar 2021 13:38:37 +0000
Date: Wed, 3 Mar 2021 21:38:32 +0800
From: kernel test robot <lkp@intel.com>
To: Minchan Kim <minchan@kernel.org>,
	Andrew Morton <akpm@linux-foundation.org>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	Linux Memory Management List <linux-mm@kvack.org>,
	LKML <linux-kernel@vger.kernel.org>, joaodias@google.com,
	surenb@google.com, cgoldswo@codeaurora.org, willy@infradead.org,
	mhocko@suse.com, david@redhat.com, vbabka@suse.cz
Subject: Re: [PATCH 1/2] mm: disable LRU pagevec during the migration
 temporarily
Message-ID: <202103032109.dQf8VT46-lkp@intel.com>
References: <20210302210949.2440120-1-minchan@kernel.org>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="qMm9M+Fa2AknHoGS"
Content-Disposition: inline
In-Reply-To: <20210302210949.2440120-1-minchan@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 134.134.136.65 as permitted
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


--qMm9M+Fa2AknHoGS
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi Minchan,

I love your patch! Yet something to improve:

[auto build test ERROR on block/for-next]
[also build test ERROR on linux/master linus/master v5.12-rc1 next-20210303]
[cannot apply to hnaz-linux-mm/master]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch]

url:    https://github.com/0day-ci/linux/commits/Minchan-Kim/mm-disable-LRU-pagevec-during-the-migration-temporarily/20210303-191809
base:   https://git.kernel.org/pub/scm/linux/kernel/git/axboe/linux-block.git for-next
config: s390-randconfig-r034-20210303 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project a7cad6680b4087eff8994f1f99ac40c661a6621f)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install s390 cross compiling tool for clang build
        # apt-get install binutils-s390x-linux-gnu
        # https://github.com/0day-ci/linux/commit/6e669beb75caae92c613a012734b1a2dc9485524
        git remote add linux-review https://github.com/0day-ci/linux
        git fetch --no-tags linux-review Minchan-Kim/mm-disable-LRU-pagevec-during-the-migration-temporarily/20210303-191809
        git checkout 6e669beb75caae92c613a012734b1a2dc9485524
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=s390 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

   #define __le32_to_cpu(x) __swab32((__force __u32)(__le32)(x))
                                                             ^
   include/uapi/linux/swab.h:119:21: note: expanded from macro '__swab32'
           ___constant_swab32(x) :                 \
                              ^
   include/uapi/linux/swab.h:19:12: note: expanded from macro '___constant_swab32'
           (((__u32)(x) & (__u32)0x000000ffUL) << 24) |            \
                     ^
   In file included from arch/s390/kernel/uv.c:14:
   In file included from include/linux/memblock.h:14:
   In file included from arch/s390/include/asm/dma.h:5:
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
   In file included from arch/s390/kernel/uv.c:14:
   In file included from include/linux/memblock.h:14:
   In file included from arch/s390/include/asm/dma.h:5:
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
   In file included from arch/s390/kernel/uv.c:14:
   In file included from include/linux/memblock.h:14:
   In file included from arch/s390/include/asm/dma.h:5:
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
   In file included from arch/s390/kernel/uv.c:14:
   In file included from include/linux/memblock.h:14:
   In file included from arch/s390/include/asm/dma.h:5:
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
   In file included from arch/s390/kernel/uv.c:14:
   In file included from include/linux/memblock.h:14:
   In file included from arch/s390/include/asm/dma.h:5:
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
>> arch/s390/kernel/uv.c:272:22: error: too few arguments to function call, single argument 'force_all_cpus' was not specified
                           lru_add_drain_all();
                           ~~~~~~~~~~~~~~~~~ ^
   include/linux/swap.h:347:13: note: 'lru_add_drain_all' declared here
   extern void lru_add_drain_all(bool force_all_cpus);
               ^
   20 warnings and 1 error generated.


vim +/force_all_cpus +272 arch/s390/kernel/uv.c

214d9bbcd3a672 Claudio Imbrenda  2020-01-21  212  
214d9bbcd3a672 Claudio Imbrenda  2020-01-21  213  /*
214d9bbcd3a672 Claudio Imbrenda  2020-01-21  214   * Requests the Ultravisor to make a page accessible to a guest.
214d9bbcd3a672 Claudio Imbrenda  2020-01-21  215   * If it's brought in the first time, it will be cleared. If
214d9bbcd3a672 Claudio Imbrenda  2020-01-21  216   * it has been exported before, it will be decrypted and integrity
214d9bbcd3a672 Claudio Imbrenda  2020-01-21  217   * checked.
214d9bbcd3a672 Claudio Imbrenda  2020-01-21  218   */
214d9bbcd3a672 Claudio Imbrenda  2020-01-21  219  int gmap_make_secure(struct gmap *gmap, unsigned long gaddr, void *uvcb)
214d9bbcd3a672 Claudio Imbrenda  2020-01-21  220  {
214d9bbcd3a672 Claudio Imbrenda  2020-01-21  221  	struct vm_area_struct *vma;
214d9bbcd3a672 Claudio Imbrenda  2020-01-21  222  	bool local_drain = false;
214d9bbcd3a672 Claudio Imbrenda  2020-01-21  223  	spinlock_t *ptelock;
214d9bbcd3a672 Claudio Imbrenda  2020-01-21  224  	unsigned long uaddr;
214d9bbcd3a672 Claudio Imbrenda  2020-01-21  225  	struct page *page;
214d9bbcd3a672 Claudio Imbrenda  2020-01-21  226  	pte_t *ptep;
214d9bbcd3a672 Claudio Imbrenda  2020-01-21  227  	int rc;
214d9bbcd3a672 Claudio Imbrenda  2020-01-21  228  
214d9bbcd3a672 Claudio Imbrenda  2020-01-21  229  again:
214d9bbcd3a672 Claudio Imbrenda  2020-01-21  230  	rc = -EFAULT;
d8ed45c5dcd455 Michel Lespinasse 2020-06-08  231  	mmap_read_lock(gmap->mm);
214d9bbcd3a672 Claudio Imbrenda  2020-01-21  232  
214d9bbcd3a672 Claudio Imbrenda  2020-01-21  233  	uaddr = __gmap_translate(gmap, gaddr);
214d9bbcd3a672 Claudio Imbrenda  2020-01-21  234  	if (IS_ERR_VALUE(uaddr))
214d9bbcd3a672 Claudio Imbrenda  2020-01-21  235  		goto out;
214d9bbcd3a672 Claudio Imbrenda  2020-01-21  236  	vma = find_vma(gmap->mm, uaddr);
214d9bbcd3a672 Claudio Imbrenda  2020-01-21  237  	if (!vma)
214d9bbcd3a672 Claudio Imbrenda  2020-01-21  238  		goto out;
214d9bbcd3a672 Claudio Imbrenda  2020-01-21  239  	/*
214d9bbcd3a672 Claudio Imbrenda  2020-01-21  240  	 * Secure pages cannot be huge and userspace should not combine both.
214d9bbcd3a672 Claudio Imbrenda  2020-01-21  241  	 * In case userspace does it anyway this will result in an -EFAULT for
214d9bbcd3a672 Claudio Imbrenda  2020-01-21  242  	 * the unpack. The guest is thus never reaching secure mode. If
214d9bbcd3a672 Claudio Imbrenda  2020-01-21  243  	 * userspace is playing dirty tricky with mapping huge pages later
214d9bbcd3a672 Claudio Imbrenda  2020-01-21  244  	 * on this will result in a segmentation fault.
214d9bbcd3a672 Claudio Imbrenda  2020-01-21  245  	 */
214d9bbcd3a672 Claudio Imbrenda  2020-01-21  246  	if (is_vm_hugetlb_page(vma))
214d9bbcd3a672 Claudio Imbrenda  2020-01-21  247  		goto out;
214d9bbcd3a672 Claudio Imbrenda  2020-01-21  248  
214d9bbcd3a672 Claudio Imbrenda  2020-01-21  249  	rc = -ENXIO;
214d9bbcd3a672 Claudio Imbrenda  2020-01-21  250  	page = follow_page(vma, uaddr, FOLL_WRITE);
214d9bbcd3a672 Claudio Imbrenda  2020-01-21  251  	if (IS_ERR_OR_NULL(page))
214d9bbcd3a672 Claudio Imbrenda  2020-01-21  252  		goto out;
214d9bbcd3a672 Claudio Imbrenda  2020-01-21  253  
214d9bbcd3a672 Claudio Imbrenda  2020-01-21  254  	lock_page(page);
214d9bbcd3a672 Claudio Imbrenda  2020-01-21  255  	ptep = get_locked_pte(gmap->mm, uaddr, &ptelock);
214d9bbcd3a672 Claudio Imbrenda  2020-01-21  256  	rc = make_secure_pte(ptep, uaddr, page, uvcb);
214d9bbcd3a672 Claudio Imbrenda  2020-01-21  257  	pte_unmap_unlock(ptep, ptelock);
214d9bbcd3a672 Claudio Imbrenda  2020-01-21  258  	unlock_page(page);
214d9bbcd3a672 Claudio Imbrenda  2020-01-21  259  out:
d8ed45c5dcd455 Michel Lespinasse 2020-06-08  260  	mmap_read_unlock(gmap->mm);
214d9bbcd3a672 Claudio Imbrenda  2020-01-21  261  
214d9bbcd3a672 Claudio Imbrenda  2020-01-21  262  	if (rc == -EAGAIN) {
214d9bbcd3a672 Claudio Imbrenda  2020-01-21  263  		wait_on_page_writeback(page);
214d9bbcd3a672 Claudio Imbrenda  2020-01-21  264  	} else if (rc == -EBUSY) {
214d9bbcd3a672 Claudio Imbrenda  2020-01-21  265  		/*
214d9bbcd3a672 Claudio Imbrenda  2020-01-21  266  		 * If we have tried a local drain and the page refcount
214d9bbcd3a672 Claudio Imbrenda  2020-01-21  267  		 * still does not match our expected safe value, try with a
214d9bbcd3a672 Claudio Imbrenda  2020-01-21  268  		 * system wide drain. This is needed if the pagevecs holding
214d9bbcd3a672 Claudio Imbrenda  2020-01-21  269  		 * the page are on a different CPU.
214d9bbcd3a672 Claudio Imbrenda  2020-01-21  270  		 */
214d9bbcd3a672 Claudio Imbrenda  2020-01-21  271  		if (local_drain) {
214d9bbcd3a672 Claudio Imbrenda  2020-01-21 @272  			lru_add_drain_all();
214d9bbcd3a672 Claudio Imbrenda  2020-01-21  273  			/* We give up here, and let the caller try again */
214d9bbcd3a672 Claudio Imbrenda  2020-01-21  274  			return -EAGAIN;
214d9bbcd3a672 Claudio Imbrenda  2020-01-21  275  		}
214d9bbcd3a672 Claudio Imbrenda  2020-01-21  276  		/*
214d9bbcd3a672 Claudio Imbrenda  2020-01-21  277  		 * We are here if the page refcount does not match the
214d9bbcd3a672 Claudio Imbrenda  2020-01-21  278  		 * expected safe value. The main culprits are usually
214d9bbcd3a672 Claudio Imbrenda  2020-01-21  279  		 * pagevecs. With lru_add_drain() we drain the pagevecs
214d9bbcd3a672 Claudio Imbrenda  2020-01-21  280  		 * on the local CPU so that hopefully the refcount will
214d9bbcd3a672 Claudio Imbrenda  2020-01-21  281  		 * reach the expected safe value.
214d9bbcd3a672 Claudio Imbrenda  2020-01-21  282  		 */
214d9bbcd3a672 Claudio Imbrenda  2020-01-21  283  		lru_add_drain();
214d9bbcd3a672 Claudio Imbrenda  2020-01-21  284  		local_drain = true;
214d9bbcd3a672 Claudio Imbrenda  2020-01-21  285  		/* And now we try again immediately after draining */
214d9bbcd3a672 Claudio Imbrenda  2020-01-21  286  		goto again;
214d9bbcd3a672 Claudio Imbrenda  2020-01-21  287  	} else if (rc == -ENXIO) {
214d9bbcd3a672 Claudio Imbrenda  2020-01-21  288  		if (gmap_fault(gmap, gaddr, FAULT_FLAG_WRITE))
214d9bbcd3a672 Claudio Imbrenda  2020-01-21  289  			return -EFAULT;
214d9bbcd3a672 Claudio Imbrenda  2020-01-21  290  		return -EAGAIN;
214d9bbcd3a672 Claudio Imbrenda  2020-01-21  291  	}
214d9bbcd3a672 Claudio Imbrenda  2020-01-21  292  	return rc;
214d9bbcd3a672 Claudio Imbrenda  2020-01-21  293  }
214d9bbcd3a672 Claudio Imbrenda  2020-01-21  294  EXPORT_SYMBOL_GPL(gmap_make_secure);
214d9bbcd3a672 Claudio Imbrenda  2020-01-21  295  

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202103032109.dQf8VT46-lkp%40intel.com.

--qMm9M+Fa2AknHoGS
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

H4sICBGMP2AAAy5jb25maWcAjDzLcuO2svt8hSrZ5CySsWSPZ3xveQGRoISIJGgClGxvUIot
T3SPbbkkOTlzvv52A3wAIChPKuUxuxtAowH0Cw3/8tMvI/J+3L2sj9uH9fPz99G3zetmvz5u
HkdP2+fN/45iPsq5HNGYyd+BON2+vv/n0+H86mz0+ffx5Pez3/YP49Fis3/dPI+i3evT9ts7
NN/uXn/65aeI5wmbqShSS1oKxnMl6a28/vnhef36bfT3Zn8AutH4/Pez389Gv37bHv/n0yf4
+bLd73f7T8/Pf7+ot/3u/zYPx9H6y8P68fLy69mfF2dfv2yenr5eXV08jZ+urtYPF2cPl5fj
9eXlZPz0r5+bUWfdsNdnFitMqCgl+ez6ewvEz5Z2fH4G/zW4NMYG0yTuyAHU0E7OP59NWriF
sAecE6GIyNSMS24N6iIUr2RRySCe5SnLaYdi5Y1a8XLRQaYVS2PJMqokmaZUCV5aXcl5SQnM
I084/AASgU1hfX4ZzfRqP48Om+P7W7diLGdS0XypSAnzYhmT1+fdPHlE0maiP/8MvQQQilSS
j7aH0evuiL07nCpBUolNa+CcLKla0DKnqZrds6Jj3cZMATMJo9L7jIQxt/dDLfgQ4iKMqPKI
Z0VJhaDWZnC5bkVhs2xLwSdAxk/hb+9Pt+an0Ren0PaEAisV04RUqdR7wVqrBjznQuYko9c/
//q6e910507ciSUrIlsaBRfsVmU3Fa1okKMVkdFcDeOjkguhMprx8k4RKUk0D9JVgqZsGkSR
CjRYYJp6iUkJw2sK4B42cdqcDzhqo8P7n4fvh+PmxTofcAJjnhGWu6fSwNSc0RK7vOuwM5rT
kkUqEwwpBxG9bkVBSkHrNu1smla6BZ1Ws0S4s968Po52Tx7//phaYyy7KXvoCA70gi5pLkUj
D7l9Aa0dEsn8XhXQisfMWfqcI4bFaXhhNTqImbPZXMHm1EyW4dn1uGmYgV1Ns0JC91pvdhux
hi95WuWSlHfBoWuqwGZp2kccmjcyiYrqk1wf/j06AjujNbB2OK6Ph9H64WH3/nrcvn7rpLRk
JbQuKkUi3Qez7VAAqXIi2dKZw1TEwAeP4NwioQxOAXW8kESK8AQFC8rzB2bSmidgkwmeAns8
byRRRtVI9LeGBKkpwHUzhQ9Fb2G/WFZKOBS6jQfCOemm9QYNoHqgKqYhuCxJFOAJRJamsLpZ
xnMXk1MKZovOomnKhHRxCcnBel9fXvSBKqUkuZ44PfFoiuKz19RjSml7nU2Di+QK2bWrU5ZP
LLGwhfnFhsyhazhPljvDsXWixJwl8nr8xYbjKmfk1sZPurPAcrkAU55Qv49zsx3Ew1+bx/fn
zX70tFkf3/ebgwbX8whgm661OhZVUYAbI1ReZURNCThpkXNcag8JuBhPvlrgWcmrwppgQWbU
nFhadlAwJtHM+1QL+MdeF9OXEtHcNZE+QcFiEVAXNbaMtXfiN0pgi9/TMtSuAEOmla6lk3iE
w9S44cFiumQRDQwHDX114U2ClokvRmNcrEMKFqFFEWk5XegLgK0CtdTBKlw9Zxra4uRhrQRO
wxAKplx6uEYuIBJ3iJzKoW5gGaNFwWHHoGWRvAwbJb3c2oHVEw2MCiYzESAbsAcRkbY/6GPU
cmIzV9KUhI3ONF3g2ml3qwxvtinnaHrw99AqRooXIF92T1XCS72cvMzg1Li7wSMT8MuQW1Sx
eHzpzC2SKSjuiBZSR3OosKwopLD2j6/evb4y8CEZLqvNm5hRmYEqVLVLEl4dLeFTFMmc5J7D
4TiixqOwFITWZP63yjPm2N0qJPUpAecsqbT71DFQQZwbZI0W3GW6mRSb5SS1o0zNpA3QjpgG
dKKYg74K9EYYt8kYVxVMaRbkiMRLBlOo5Rk+NzDKlJQlCyqrBTa7yyx5NhDleJUtVIsMD0LP
symS0LraRmFF4Ow2IQjS/8HsPQb7SaNsuS2izAnNwJu+CXQPU6RxbB9lfQTwFKnWB+7UcTQ+
c4IrbdnqNEix2T/t9i/r14fNiP69eQUPioDNi9CHAn+1c4wGOtc61yBhRmqZgUB4FHQGfnDE
1sPMzHCNObQWDWNBAjK10woiJVNnv6VVOLgSKZ+GdjW0h81Tgv2t18ztW5tA9KdUCSeWZ+5Y
Nn5OyhicvrBeFPMqSVJqDL2WFQHdPuDa84Sl3lloXU7QZto6mNWoReymSFr9lVmu4z2EGSq2
UxDoOE1xV+UxI5YriREVGIfGubHEATHtwjiAPVwTj81XFIKiAAK3S3OglJ6Bq99mQlpqWse5
+jhZ1puDlsBRwd2z0i9FxCAqZ+XC6s11ziqQ6NS2+eL86sz60qaUZzBgUoKH0HBnM2dSVils
zFRcf3ZOXwoTKjA30EQYxX73sDkcdvvR8fubCVEs39Jummk+76/OzlRCiaxKm0mH4upDCjU+
u/qAZvxRJ+OrS5ui061N+8CO7JoGWtBoHE4tNa3OT2LDqaEG+/kEN2dKVm5Yjd/NCQ+Ho0iA
a3EKe3USi2sQOrQaOz7rsYNSO9HfoPTqxmHh1ciw7GpkSHSXF1PbThld6zhWmDLrwzPrLOal
9v2tMHPOZZFWMz+YNGdOwnGGsCzsbM7vQZxhcQNq8nkQdX4W2qemO+vYz++vx1YSfUFvqZMV
0jvJ6PyQR2HykzmfOoYbPEqOifAgb6D+UO2jKgkaylOKQ2uWbPOy23/3E+FG2ekUHDhBoM5x
AF8XtuiekdN406jJXtaL9hFNCb8t/ZFqKlGkoE+LLFaFRINiedUQqxfzO4HMwI4T1xeXXRQM
kZu2MrZMV6TMVXwHwRuYEY0NSs8RjkmMfuJOFrDt8SZmobw/WhLYwUmVRxg6gKLvMgk6iud+
6D0XEW7lkFsRwewqS89SEmdIa5ttl0HNYfz+8gawt7fd/mjdTpVEzFVc1V5i3dyh7UKsle8e
QrTJ4sY6Lbf74/v6efvf5gLM9jskjXQ8yEpZkZTd68yZmlUQiIbk5e2kKMtcG6vmdwXEQYlv
bhbLrA/BPHE071+sGEziO701XEH062YoW2wXjDRnFoBE3OWRsoNAG6rw30BX6Cqh83KrtGeA
saXbwTJhvbsaZDBfghhj2MIL6uR7WoqlzqXq4RmHyDVAAn4PRmRuDrZbHocRe3diW70KFQBk
yQdCVaTorXC7x7ztYnJmm+en4+ZwtNwZM06+YjlmINNEUp2A7BJpbRPnSm+9f/hre9w8oI77
7XHzBtQQGIx2bzjYwd//ES8tbaMVtgdrnE1Y+NK62PgDDo4CX51aQsTMM1Au6J2wObaFT5OE
RQxDkQoCX4h+MeMSYVLb03kYAWFyEzaimooV6e1h3wE10JLKMMJAFRy9xEtfaHyjoBQtS17C
JvuDRu5O0GQmN2BDNLO6xznnCw8JsQEmbiSbVdxWXI1MwdDrO5L6qtYTAerHBLxtltwpwasy
8u0CEggqa/PhITFkFq2Olzq9Issq8s3U+QQsBogb1k4lCsTNY184eBmd8bi+4vVFW9IZhPy4
SdGO1KupSOFLCgPwUJSN7UNwnfwzfdZauif30CYMYe20QxfIqRmRcxjDBCIYcwbRmJj/gATU
ifmtt0Bmz5hseZQVt9HcV6s11NyiD+BiXvX9D50TQffR3BQ2N/MBojrG/yFansYWfUisgkZI
cAKlINaWXorPYAIWL5W8ua+z+zt5YzZEoQ9T6JCAaKnOoWN67Qf6gQM6cM5zdPtQf82rGcXM
Q1AOPJEqhn7vPCycosZ5pBFL7LssQFUpaChUfKA79Zb1WqNtprdwWkFP4e+NW2fT4NCIAxK+
yn2SViJ6BO2Is3t/CjAyMw5nm5ywHJIUkx5TQIAPGQurMAN3jmAzUcHc8vi8hyCeQq132Wms
0U6BVdMzWWak8KcYgnUbQYLalU2kUa5ubeM1iPKbm6VyadAht5Nsvj3D5iaUiMq7wlfCiF3G
gnuXK27Opc4Pwp7Tya7G+5xFfPnbn+vD5nH0b5MWfNvvnrbP5gK6Kx0Asnp2Q1lW5EKTmXQZ
rRO5XUrsxEjO4mANFkY7LA+m1D5wUZquMCuFGXXbmOskssDM6PWZlb4wZyeUvKhPlb5XTsFC
V05sOcVlO3Hhn3OwvszNqhFvjUQ+9lbMFG7BGceqq/LOjdWGKNR0foLogz5+rAO3AmWQRJBe
BGqTVfkHzBiC0+zUNKcZ6ojqa7swrb41PylnTfED6EGeO4pBjh2SYRFqslMitAhOs/ORCD2i
kyJclUzS0zI0JD+CH2TbIhnk2qUZlqOhOyVIm+IDlj4SpU/Vk2WVf3hCWjVOJEePvMyspILW
c6axMdy2K1muBBiOAaRmaQDX2S1zuwbzIEWhKbRloP/ZPLwf138+b3TR70jfJR0PttWYsjzJ
JLoLQ0ajo9Dxn30vbDAiKplt8GpwxoSTG8SoE/38YMg8xKmdwsvWr+tvm5dgsNvm6ix732X3
bjHtRkOoJfxAf8JPAPYofD+PZtq06Kyc6uMTIqSaVRa4TgHatVUuppdAdOE1S4Po5vKUe0XF
w6nHOt2oU40mBd1moLVz1jhsXbIL7+FKirs8fNOWsVlJfDcPo2PVODRNTyg1EscQm7U59C4H
I0LJ42Z+erkyOA7Y/Pri7KrNhJ523kNYYGtF7txClhBZZi7TQ8UZKSV5RKK5W4vhFv/W0PuC
cysAvJ9WzqX//XkCrnKoncga8XXENUwfybC0aFliaZtOCZil0xW/dv1A3FyuYgywGKokAIWC
0VOv7LDxO6tCuYmgVi0VkppAiDhu5vB5bnrIaVuFmW+O/+z2/wYXtH/qMfdNpbtFEQKhGQnt
T9DilkePX5hz9iDYtgOxKlpaM0vq706GebBoC6BYyY9hcUZKJzXfoOAM6LgH5JoVQ7IHYhNr
h7SztFiHD5US++ALaWmfGSltXWR/TEsW2wfFfKsl9FbH+SY070yGIYBOQnUzBhklFm+6q69n
k/FNCKZmS5sdC5E5iJhGZls43zqX7djLNHI+JraMSLqwO1gqMJcpdcGsiGMnhtAAjOtIaMK3
k8/WeKSY2lqOOxwzSinO7POF030LVXla/6KLrGBv5MBaYEyrCRbu2WNkJGqH6PaQuTtsjtTN
++Z9AwfqU12q6QWSNb2KpqF6mgY7l9PeEGqeiKgPNRu1139RsvAzh4ZA15Kd4qG0y3oaoEim
odFEcnNyMElvQqJu0dMk1Gs0DanEBguHN9RIEn/qHsHMTKzXMBaoTE40hH9pUNZxGa6baUV9
8wFLYjFFir64ozlf0NCQN8mppYt4TNNQs+TG4E61JQvaZyS5CezHeXABChay5S3W8cK6texV
o2rB9qsjzFl6Xh8O26ftg/dmDttFaa8rAGHqg0UDfCFeRiyP6a3LGiKSVai76nxyorNSLItQ
K4RfnmiXpHzV58BUDgcnVSSDG6/pL2jdGoIMy4RI2tsrVCNO9k2CVdHtfmGJtZ3jyFJncS6w
kJjjozc7NSUzgn6n4wB00ObXZbjIt6PLQ6ts4b3abAuDfpr7tMTof9GHeH5MC045L6ZuQpWB
P89DXbmI7v2ELWmINhZD/lZWpMLdLAhRM+HpkVxY0ftcWDK/KaX3pUTm6EYNk1UeGF6jsrl1
T1Xa98lloh/aOBecGAqVt+bFGoZ1hSPt28I5uHW9PM5gQHtaFFFKhGCevSrxCYa48+6qpzep
S4aHpH6u6XrFI7wfbsx37V33UB7C9qStuZCQBBM2VSXmV22pLZjNrPlWs8I3Dlc9fXBV1Ftq
8NRe1Q8TQqIkzNHl+H2SGDsEF88KRRFYCdttSSLnA/bxjEn7lg6BecR6AFWR0gk8ED6PWM8O
5Jv1fpRsN89Ytfvy8v5aW4TRr9DiX6PHzd/bB7vGEfsRLHMHrIsX+pwkrqdagxSbBO0IYIv8
8/m530QDP2g0Cc44K5epRgy0FLLPs4HhcJ5Ub4uAqA2wTy3Ok1WZfw4Ch6i/WpNoz8QPLU/r
0QuI1VLP+WCJBUhXoItyW6eAClCgZHxNCFsTVacVLWAg7qYIEsJSvnQvWqmcSyBqVO/QEw/a
FdGbGik9k1G83/7tlKqb63hb7P5H/XLVK5NnOg0EyitcE0aJKDK/BcJOlpO2RAU6BZgbPtG7
IcK0qyENjmY9lhnoShV2GI3zzQTrAYJPeBucznck4KOgXRWe8FxbjiAhq6kLIdJrRSPiS08x
vgxPAY2P27wgxtI48kBLY2pZeRL2yVqqj9ZIE2HJw2mKHxC+IaPlBH/YHDdpzSKgUxH2sHs9
7nfP+Mzw0d/TKIJEws+xXbuKUHzc3nsG2iK656fuXG7xZcHt0BQyFpUci/B0J915O2y/va7W
+41mN9rBL8IvUdTt45XDCgKanjxokZIBaNPA2TAZeLC5u0JNEeQJ5kzGffcnyHT7jOiNz3yX
xxumMjHQ+nGDL1c0uluwQ79WU88lIjHN7VIEGxoSSYMKyMVG9ZuqP75MxjQA6uTYvJz+cApt
IXJ4U7Yblr4+vu22r0enehSPeh7rtxPh6ma7YdvV4Z/t8eGvD4+AWMH/DIIkWRdpW50Od9F6
S7epW4yLAL+W14BUSVb6VJE8+Fy2iCJSxra4s4gRd7siBGITEquIBZ/cQg+GnVoMvz2s94+j
P/fbx2+2/3SHOTO7aw1QPPwowCDhzPNwJGnwkgUYqlFczNnUnUt8+WUSetLAvk7Oria2GHBS
WBtl6irtTkpSMK/guisC3T7UdnzE/Yw4qVBZkfLOXbvKFK7MaVrYEa0DBqsh584fBFnKrEi8
F2wGpjIsgQmVcEvYAyTt/3kGPVDCymxFSlP4Gfcml2z3L/+gUnrewbHbd7NKVnpr2Ky3IO03
xfhKvUPihR9pR7Pm1LXSxYe+PILo1rLbM+oom7+1Ejy//oy6DvD2ZqVT0KF70VbcWBAUl8zJ
Q9RQunTeJBkoXsTUDVTvvu9OYHE5LZdMcKu/9s+CYIlcJbmupA2jl1UKH2QKe0wyJyqkM+cS
1Hy7jngNA7eM9YBZZoePTWv7ur5pHTmJmowoMSel2QCJIyVAJdoGNAVubplS/xDpPTh9P/SD
smzO6vPUVSQZ0GAE2uBREdt+Rc2CPUyr4jgEDpG0l0b/dYD2IWmzILnwvhTsVmaHrRqY4V9x
CCEEK5Mwppre9hCZbC8OivX+uNXh0dt6fzAGp5OIxNLHL1iBOvDnSZAiymJdR9Gjsmh4YtCO
vAEOy6yfygdGaExbj0HNYQW/greCf5XCPKCV+/Xr4dlEeun6e2AmnBdD7OHwDG+5YddlRMiu
3qIk2aeSZ5+S5/UBjOtf27e+ZdZCSJgjX/UHjWnknTuEw85RATC01+lAXsi6XtuVMaBzjjX1
w8sAJFPQw3d4Q7sKXmw1ZKlF1mdjRnlGzcMBZwA8q1OSL9SKxXKuxgMDeGQTdwAPe3ES+/Uk
dnz5AYfBbHkzSzbuz5xNArCL0Fqwr0MbXRZB+lzSFGzYCYZIFgsZhxqDBQ4VHzToSjL3bIOr
kfUOWvD5nj7gU0Fzx0M+sedNKLF+e8OUYw3Eyh5DtX7Ah3veweCYXrltMq/C5VS/gCM9kdXg
uqJ4cMs3ZDwc/NokmMzU9SVDGiDyzm/fo+2gioCHdwcO05A+0cutlvjKoPS6heilWZ4m5vpA
nO1jo9/Qt19vXzeP/8/Zs2y7jeO4n6+4qzndi5rSw7LkRS1kSraV6BVRtnVr43M7uT2V06lU
TpKazvz9ACQlERRk15lFHgbAh/gAARAAn6Aqc9hY7Ij2tBJRtLZHZan7QAZqAYI/Lgx+g4Dc
p6VKRkJ8dQwWZAl090WsHyRGc/747V8/NZ9/EvhVa2YrbDFrxNHyQt+rW0WQpW/VL/5mCe1/
2fwHia26P0LaegvSLG0UIU4AldrJdY4YdwUYMMZjYJCPcjNc4wWGdJEDy0YyDGNEBQOeFEcY
1ZUGUEkzfdSH1cu/f4ZT8gW0v0/qQ5/+qbfwrOUynw5qdVo6q99CmK1Bemijs/X9qUfWMSq5
+Gpwh0YPWkszo0wI3EFog3rUqrIW3Gs4hZWa1mwbev+Wx2qh0FQfv72nYyirhflpqgf/Iqb/
CaMUVG7MC/m2qU0AKDPmE1oLESgzoDGOczK7VyhD/Ya44zPE+32/WN7aCVUI2HX/DftsafeZ
KgIi5vsAilaMUwrqAfVBWiGB8RX3p9rQ792r49EPlensdFeAzEB9Utni2fCf+t/gCfj80+/a
p40V9xQZ/bx3KmnrKNpNTTyu2K7kvHc2IgBu11IFG8pTU2Yuy1UE+3xv7hIDz8Wh2ypzwiLq
WJ7zPWcIQQKlVhKLQ0Mu60CiP9dF3/Mx0YB92+zf2IWnVWfDiD7YHIyXoN0IXpasJeICsR2v
LJY3dJcq56ybBD5t56VymGZREA23rG1sF8gZSJVg0PSrZ/ol7Smt+8ba931xqMYzZnZMRWA8
DD77cYWQuzCQG49HA3crG3nuctTuMI8cJ4ucQOMuLS08bTO5S7wgta+uClkGO88LXUhgJ4fJ
a9l08tYDJooYxP7kxzEDVy3uvIFcBFRiG0a8+S6T/jbh5HZJRBHbzOq4qmrT/k1mh9x2T760
aW0fNKdCFvDX2/yZXiCLwGT00Zwub1FyXnA5Db+lfWBpMAZY5sdUPC/AVTpskziyB8JgdqEY
OAcdgwZd5pbsTm0uh0Wlee573sbmN06PLcvuPvY9tQYX+6V//fHy7an4/O371z9/Vympvv32
8hWEqO+oVGM9T5+Qf36A3fLxC/7XyhiK+ondgf9HZdPyRNfUFPWdljgHgQB1fcffTOXixOau
FtXtYmfdVr9vvR3didEM0KTABHyOiIOYrpeDe1c1rp0UtEzQAixejQkbCd8nnEWL8EIWo0i6
WFCIxMg3uwqugGWvPGM88GIu0ZH0yQ93m6e/HT5+fb3Cn79bzc3Fiy6/Fh0nIY0otDg82x26
W/dYWvtoFCS7ZFXYTgDoOkPEbcVBrbX9TqV1oLeHWKrPeVE4FehibDWXCplTr1VUGBrnmt/A
xoB7gqPuO8ofqFH5ZlUKidI2S9b9fnZMmZn7ub5d1KeqhNhsjsNL3lsyoPHNIv7FdUkES+W3
RUXNU0FLyHN9zCvUey223wnnYNWQmx94nIo4Yr3IdytBnWMBE7YZaYQ11c778YNp1GBWfIbG
ZgpgfOtdgzoCj5xQDsLd0i5a8PZM9LnXtnb+xgodlDTaOjEQSjiLgpwk6YCCLX2lxiWPmQjI
PFaZ6311gQMPeFUoGnIQKoNEKKJ4w0GTHVmUz+2pcW+Ql02kWdr2+Zrj6kh0zO09nPd+6A9s
j9MyFahHmKw/40ItQQWSa77WU9E+p/6JqcjhHOcnTx8fPRvWY1dapb8unB5nJJ+50CYB/lT3
Bf8agE3XPRpCnPXGDjvvSxLcUPr0V05/WiwrLfmx33dNmpEVs99syA/trnLuG5mXuZ1qxOCQ
Vd/Dk0MWTR02ST2QnLrCmbpJhjg2tSV/6t+309XxTcXqOKcN+Sz7vDJym0295iw8Dw7aCWgh
ztRqlVm4NMBhs6e/6KiQspfibGsFp3ONF44wKiQXkw2/rMD3x4FHdEcibOs2b23PJvIo3p0L
wmhGiG6XW9XilJfyjsPnSAYy1Fr0wUiiog6tuHw4uIq6YJhhRg/FuYqMJqtTQsK5LPhbErvc
iqOdRZJX5zInQ7nPg9XQsKnUrzR5l/59q1t0e6+BZ2IE0C1f+57D+U3RS5Ij0PDyQ3V54yd8
qmKrgmPTHFlZw6I5ndNrXqxMrzJ9MeXfVIuQEFOiSrtLzuYBtomAIq0ba81W5RC5ZlcEOf7b
CnZojykDuhUtkfMAIa8LNXuGao7CSZAzCa69Ki3dSun9gAJpI4DTDC7gio3wAvwyqmMcnUJ0
OZ+YzKFSbmkPhhrJZG5fyR/ytKyHlcbrtEfqR61jIFJXsMNHqbqmbuzQ7PrgeDSve4TbFdks
tLgNKmbX3UBsPy/Avx6ezc1b/oOB9zQPTm0TkJrXx6KmCWJPIFnA/LCuRegccrBdTe0a81pi
Yh+7Lhhp9qy0ir0rm6Ottrwr03AYBhsgauqEpCEYGsN+vUGvbRNoe8jrm1sna322+3lGLdvO
ivhOpDHJQmoAozP3BEUTB4zpDOqqNdbZZTbZ1tt4Kwuky1FQfMD9O1hhMl0EdY1YDJ9ZC3Ey
NDKtUBcjIu9w3Oe4xB6tTpmzic9tiqZMu0OZUlYnD9ySkRhDgFNgv1U0wYw3CNuNomRjSAgJ
GSP4uWPzzgLCt7NN21VUdoSpOe5kJXa+2BHpMW8L4fO1QxU731Y/FGQTrLTYCPT1GPiFJHvF
Qa26+grW4I0o6wY2XkZZosoV4dlV3N410pSZrZsKae4DOe8whde3T9QFdmxvRbKElUYZUds+
Vzl7DmkDga2sSllQbnteWw/PddOCsP1o+fb56cx6WNo0Vot9cRMtHrKnZ0xCSTTWhyvwUlii
Afy4daeC+ipOQOWTxtlhgOCCWYkLW4u32rgWvxK2o3/frhFxR5+goUd4j4Er37Kiy1fegbKo
inpJt6RKa76z2gBud8CYxJGTls59nkuTDoWiu0dTljDDDg3XjU40TsiD2tqICFhXrEOWEbE0
yw8DL/HKtwdOCoIF5ETgIMBSz+SVGMYOxZBn1FYmlbSiL4eK4glwS0cLQ5pWTtk0K2oDmY0S
xliAcM6eNSRJvNvu3WKj3r5SDFTtaONvPNo+QGMQABbAZJMk/qIFgMeaeMWArqyezgCKAhTg
lLZg9DgKzEDvNP0nYo1oS/ShPPE3euXQr3RIM8Xhmj7TdkAXRduT5/uCIoxa4nZgBPvecaUl
LYw7lU0RIW51E6L3V79qkshXWqxVhp3UaRMD5fo3KRxrw2JR9YkXLqZulsi4tmZHdC3/3MEr
0Welryj6WANhHbcOpM99b7A0YbTNwYoqhHQWSpuESRC4n4jgXiT+YlTtYpuEK5Zs49WP0/jd
SqUX4I5S5rSDhusdgR0E3ZFcZaCRdn7GywY6N+eOOXcs5z4woUoW/T7lczEpNGzMM+qYwqnO
NS4poLrlPORLanKDrSAwgwIvatwqGmFMsKR4+27j+btF5wGeeNvNWueNnWpisBgPUf356fvH
L59ef1AnCzOIt+o8LIcWoU58MkGpNCPodkiekSMUIAl0+fGXKfhErrJ5wN0G+OsXEnCzoJ/I
W/tVlrbFVyBN8t35JGxRBwbxfeUwRvxqkiBEVm2b01bUJ5vDz66nSXvuzgwxTg2pyfpOeqFS
svc9v5lkydoiZHmaMp3Kn/H96c8mgH3dZbEU7IVLb+dyQu7h5GoCvnNEGFdWXOcUFuON6r3e
qO6c/vj2/advHz+8Pp3lfrzbVLW/vn7Al7b/+KowY0h++uHly/fXr8sL3at9IXnK7BRG+Ive
o40QqmMoqLKjOrADjatEEMwVd1GNKJ3OyJLCisDzYF456TKtByJ+K4B5sXIMvuFXrACht284
6fqQdvQ9AUyplJvU27NgMCdAWr+AU5kT5ghqfeH9+cuf35f36nPFdXteugidXr5+UGE8+PgE
FrEzD+YkLY76iX+7FwwaAePZStZjRaFBemrtlMsaSmZfg8ztFUMMoIo+yKULdIKjhsFloMr/
mcDPzmce0yp3HrMykFstoyixv3zClByrn7B5dfa9tz5T46FKPN/emdx8TG4H3AzrKf7t5evL
e9x/Cx8ufSE764CcMoXJ4XYgQvQ0YaB24FFgXkjNlOfIuW8wYGyxtOTr148vn5bniI7CueVp
Vz6L+SXe+o/PPyX4js83XU4xnKV/iC6M9jFU4dxlaKGUb3TD3gG4lHWn/i9/8R0Kapa3gGPl
TPtvJO+Sa9CyOBRs8P+IF6K2xUUCtpp10f62kPEwMB2acCt5MAwZCFTbkK3AYLgBdUnN5n3T
p8eV3BmUkNo5lzj0FlOpZ+cEngzRPj1nHeZv9f0IePparxTtw1VhxNxWLtKCsAR/aVTYC3CD
7NpgMQIAmxdlGDjYgyxvZbvSuxn5V3qmqIv6ACKiO18uqUBLoXrLsjiCRls2nEw2LrnWDoq2
gKsLGPchuxhGhH4oquF26URib8opGoIwocVX6RDlOks7znh/bMrsUMgTdWuxoZqNLT+rvh2l
LbI1vzb2RVR9RuMRZc3mLW2V9JFzDtAvLRKzzuki5hjaWRAC6IowaL4ag3OdqE8LI/pOdc71
KZ5PlMX7szNMv4r4y+Sbbby5GH5ZtKCc63dvue8F9N7olPqZpQN9+ubKvMA5AfVbtOqFLk4c
nMj26Sb0+Rru5HOaifCho7sNCBhMevkx44aiBeGP87PA3J2FthoatQwthk/v1495lCxVvjJB
PLLwHe/6tiF3TDN0Q5697IKNpWIWLbo+ltpR3dL3VjoymSPyi5NJASBv+WkAjCtKwnI4qiev
9QSyo98L+NMuQ1K0UuN2jVOy+joMYm7eEOFbmZf07+XuBp2KlQBE2a4riYi89EHguSTjt1e4
mS+LCpsD+1AtPrHVp0r9tT7/+8uX16ffRiFyKT6NpW7hxjnrZ0zErulLVTbHLiOc5lIJNr62
qTGDPzE6NLWKobFAqsVLdbZAcLSWz8RkNEJU7hMGbIIxxpwmq+tyZAvdWfbqVfIp64JWnkAy
WgwWsQ3BDygHWwfDWyjYfQNTwdTzvzSfMoCrM+e3hRiTkQGlaVqTrMiAICgtjw15nXMEtiK1
v2hSJjAmf/48w1KeoGaA/waa/t2EK7rywo/CyG0RgNvQ/UYFHvjXSBW+yuKIf+jUoBPf59xx
EVtofcmGSPtVYIS0RTFs3F7BrHUi5/RThVXOEqAdnp3BL0Dl20UL4Db03AbwynfL39Ig+lJw
jN5gWnXNOq9E9QLk0z8wk4IJhv3b7zBNn/736fX3f7x+QAPMz4bqJ1CbMEr270TXxxWI2wPV
3ZVmsxxfcFc5S6ia4yBl6WQgc/BcHOIKpX1pi7i8yi+BW/WdLr/Nq7bM3AINdp+zkqi1IFLm
chox3dtwcOe16nNny0+XiObVCeAtn0GeBNTPevu8GMMXu236FO++L9M53nz/DUjnwtYM04IH
4zQ9av5rm5l0n5soBTRRMitDpEkweOjsZtFX84fJV9xwmQUBch++qJNIj3zT4jNCa/gF5qoF
yJyJYpQbrixYothrw617p7ZQKCeN5Xz4tdwtPU3ncpL0BzkNtC1NFk6I8Qz+9BFDgKzkhFAB
nhHUziwXQg36q77/9Mf7f3EmPUDe/ChJ8GUz+haUXq2f1asj+upSvR9cryXo//4HFHt9guUJ
C/qDyjMCq1w1/O2/7NDBZX/GL4J6UHGwbOlFTS4tkAD+Z+lRJv3OjLCERvVemK6SN7Rq3C2V
YRxwbH0kyNKdtw1oNxAOoksQSi+hx7yLJfNjcKCD8b6lE8HgR96wrFT21YEBt2lZURerEdOI
vGxWkhWOHZ0uXqXLOXUs/Ovn128v356+fPz8/vvXT0QcHvNcrJC4/YRFdqrTY9oxw4XCVLqE
C7mJSzszGPaRXKQbgIrPxTRdJoDXemu5OThXXGOR+YVgZ924AzHba9H6K5/lgTdoKrQAsY0z
BSBuzmBgv97z+8uXL3Aiq1YZbUOVjEHcXnO70Tk5lI2KfqTlZE9ry65pyykFCnno8R+PPjBv
d//eka3puuWA307lNXNAyu/yIhxotU+2Mh4cqEyrNMoCWBnN/rzo2dIq6uIbTnAe51PYF7MK
uHT+0aNcZbfDSoD8ndmcJDMFff3xBZgpN8tp1kbAj1fnOKtbp59HzHKZLfpZpUPMP1w/o4Pl
5xk47oy1oiAQ7aLQnR0DpdHbMyZerqVWHJIoXp2Uvi1EkJg1aJ34zgDqbXTIlgNrV7bPYi8K
EqdnAPUTBgrd9avrxYHjMRBFDnApUOp13Ya7Tbj2aWWbxCE39hlvzJlmJt5GzDgq5r9WrBNR
HyWh0+2+ldso8N1PV+Bk685t/64akq0LvJaua7CCn8Xe36wvvGuV6Oi2edcsJ2/K5vlgt+z7
ZFhdQCovMHoq0PRWIy7XyIC9d1Mjl4kwoF1luqT6ZB41v8/A0+Oxy49p3/BGKT3JIIWd+Vfg
2DbGDl+JCfLqo21pcZD7P/37o5H+qxfQ/OxdAkW01ItvSnTN4FRncJkMNgmfbsAm8q/cwTBT
0LNhhssj0VmY/trfIT+9/M8r/QSjiGDgifMBGiN5M+KEx+/zItI1C5GwdWqUenASE2E+qt4P
12vhUhcQiiDk+5asdppaGSiKs5BQipXmAHETnVhDJjyCCLQ2Ik5WOxknjzqZ5N5mZVByP2aW
k1k2k5ypEqWD+u+8lTaD7ygIFhFd0y4G/9s71202TdmLYBc9aqPqt6G9BGwcsJZzmeoEmWwT
pgcPmnBFoSVOg5qDpYZ1uUo9WTUZzaiK1CwO08dUDsrpNL4YWrJG7isJ21c/bxea0l0DjeHB
CfPSrgIv34GBcp4FJtlKFm98YgEkmIRlgTNJ5XsBn2yG0kTsBZtNYZ26FLHjOwcodl/bFH4c
s7XuAnqcz6gevpmNFiEUPlcrILbBCoJNc6MQEYM49T7fPdiedzsnRbwNuM4NmNSpHlNRMASy
zeljYxOmH9p7w5zJbcB2FrPyBHdLOlLmCC+it6B77Lk6DyDFehH3Rq1NkQSH47LaQxyFcSS5
ao+Sj12Y8GXkJ+xzpBZF4MmKrTzeepyoa+GZVaO1U9sfcMScitPWD5n1VPRJzHXgjdjwgsxI
AGyo84PAu0uE6XrT45qDhKEZjR53Plfx/03EdVSj4lXXG4tqx3y/RjBjCYiNHzHbAhHkDpMg
gmClk5tgE90fB6TZPhhPRXNvf4Aa5AfsjCJm623v8VRFopytOcQ24RG7teZCH1Ts+81tNefh
Sm+3IZcJn1Bs2NFWqOhhy/f6vbs/D5Vow0dHWC+20eY+RSuDMLk/nV0MPCJkFlu1ZaExD+WW
axWzAwBwzr4yoxNuG1UJ23DCNsyznLJir8UtNLdNqx3bMEiL4WYFsWGXnEbd36OtSOJwe6+X
SLEJGAGi7oXWvArpSKEThehhj3FWEZsijlk2CCjQE3jvYEPRqqAtrrAyNe345dxW/ENNU9lr
xR85ct/bFzoTGOQUZlEAmOcEgAh/3Gkf8IIvqG+W78kSFahAIbsW80r4G+/eXABF4HM7ExDb
a+AxJwfGLm3iiu+twe3uTaEm2oc855J9L2M2E/NcvgLGyAmVwg+SLPETrt40k3ESPJDp4aOT
u4JbUaeBxxwtCLdTCVjwMODE0l7EzMbuT5Xg0kX2VQvawAqcmT0FZ4cBMBs2iZlNwK9hwET+
vcV0KdJtsk2X3bn0fsApDpc+CUK2rWsSxnHIRXXZFInPyu2I2vmcoyahCLJljxSCGVAFZ1mW
xiDzWL2DtEjLOIlW3oagVFs2pM2i2Qbx6cB2FDA5ixqNsgY+p26ZPd406M7TeiOFerBHYnji
okL01+iOeY0xAcaKAFp6mT7fKpJDeSRfpM9YUKwkrB/R6DGW7kt856Ro+cEdSc27brdjc8GQ
y/Z2Ldj0Zxz9IS06/dYKN2Q2pXo7R7Ypm1B7LPC4ytVOspQYBXlzQyFZyr/UPcznpOJsl/NL
n6rRF+fcarri+8RZwy5kuYfFIWWxJ07edmZZJJHoj0JBrSjUU3Vs6RHrAtEb1S01bzxCstJZ
mRXNnXZHNIWaZ4jGrHB8UUrE4qjZcS+qlKkLwQ6R7jA+h8hST3h7NGaEZDP7KPzcZ6fGscOY
fENU9QrWyVWvcW6OI33nh9Gu//zz83v1UM1ayGl1yJZprACWij4BhZt9DQTRMoztY2mEUe23
rQqhb2xXzASqWNoHSbzMF0yJ+iovbxhEIZqVfPwT1akU2Uoid6DBfAY7j70VU2jrcpPWPbSB
txbggwSTgwYppqFuMUKiPDh8Xu+Y8OEDfPIAz2pWM3Y5bcibQt7ZEospM1xwZzhcO90I2wbu
ECkoJxwZpG+LdQg7pn2OTlbKBLcYcOFjaqp7E9UGW2oeRuip2ILwpr6dM6qD8oYPowpyO4VQ
aKctOYGp/D/KrqS5bWRJ3+dX8DTdL2Y6jH059KEIgCQsbAZAiPKFwSfRbcZo8UjyRPf8+ldZ
haWWLKrfwZaUXyJrz8paMquhoHhxFgjSTVpIdozAU/YK+UsXyLcPgPqZVF+pbqhT9JILcMzH
7QItihq6ZLcwoo8QA/EYinfhg+358l7BSA/DwDF1LOE8XqNGAS4sNnUDBkeei3wWxVZo/iqK
ZZ/kmRxf/SiOtI/6AF/4T2CsV1BWbRx7XZo6Ypv1e7l26Drcp2NBKuZEg0UavkCfGAz3escL
B2oERMjAfIIvEnvfEg82GW2+JCEVsL2JLPR5KsAqvw/ECxRA7LIEnW263AuDg+kOLOMofcvW
PgOiqdiM4eYuon1XjHS7PvhaXZC1a5uI6qs5IJUu54z5VM4HgdbDk1uu6x+OfZcQMXgcoPwq
jJoGXIFBrzmNAotS7TrTFcfJ4my6wLb8g0zx+aU1iRJqeobTI9yDYGEwzinj7ZlQqwb9Yo8A
+OjWtCBP6UzCZRw9c7FttjhGBm32Upmo0nTxPbH+tvAsV7dZFhiu/iAj7rawndBFgKJ0fVfr
BX3i+lFsslXUa0dAGw6ROuuKl0plk6bNv9aVZpyI2S0jT5051LXwQtPilI6Ib12tacoSx/hG
OVMk9a7kN9GMRtvEIl9hkz9Wka6Hqd5Wifz68JyBlt2KaRDjdLqcdc3KnkSjdw9mojFG6cLB
o4cNddGTbYYLAWfKPXci7vYl6u+5MMMylq1iZ/alHhYuag5slfElgWBVXE1mtCdCTDhJfTeO
UERZW8iIvMJYsLH5r+Zn6QiogNHyvypiNmuxdmTm7Uef2w5aNoo4om5WEPSbDal81xfHu4JF
8s2hBTXMmQtD3hWxa6GSKRQ4oU1wyVSRBS42UAUW/Za7ANLpMERLyxAHR6LQMfRTPuVczw9M
PmhRC66ATVAQBhgkGMwo5kemzxSDWcKiwEMzwqDA+BW3f3HIR2tzMYANWbyW/djFm4Eb8BZ+
pUBlc7CLfgJT0ti0ngyKoGx8z/5AQBNFPl6ZFDFpvLL5EsaGjQyBiy4FUN9KhcWgQ/gVtg8/
9/HmmZYhGqJahwKSkNjDO52wGtGxTXSw8K82+6+ZbRkUTzNQnYSuoxSeCBcOUGySjV6rXXAW
5Fl7QVwE9936OEjOwAtDS7pmnbXtXZMf+3qf7LqkzbLqSPo+F+OjCl/oqyYB5OujqxkG6wUV
3HuSk66IyIs3ESkHx1BxnVM2xPD6m8zVfdC1O7+MwiA0JDOuxq5LKLYQ6xZt/cVmw6RT4VaA
bVhKPBGPwYALiJwQP05ZuOi6wLcD9yNFNi2/rmYHmBw3MLQKX2Q5uJu3yhbiW3UKm40+VK0w
SQs3DUMVj+4XIRimss/iAqgLCQnx8B7ARmlB1vlajBS77CpMtnwGvuZAh2uyUqgxxrwLXdmO
hIHf7Isui4ABrUpgaUledTuS1rcqm5SwlqhEHuMtSiulEV+n7SC8gKPv6Z8fLqdplfH+1w/x
ev9YZlKyh+3wHJCKFDVdnw4mBog8BG8umzlaAl4hphKmrQmaPOIEXCk++EdPKL7W0ks/pTHk
acbinGp9oNafUUuH9dRfRu+Uh/OLV1yef/65evkBCzmhWrnkwROfS1posmurQIe2zGhbNrkK
k3TgKz6xBjjEl3llXrHpptqiPvdM/KYg3e5YUO6E/ibMVxy9raY747NzjF5EoUcJwSmWClCa
Z6lJqMArDYQIG9/m/uPyfnpc9YNey9AkZSk+7sYo5DC+ENZ2v9uBCI0v6fHK6uTP0gzirnZ0
AOV1RVcb8CheLVU3cO3hPT515T0XBcmsOALnYzResuk99cvj+xkeoDy9UWmP5/t3+P199cuG
Aasn8eNf9CqG80Z0AEx6kI29qUawvgHdaL3fOIo+XOhIR2b0MivrpkO/KElBV2xSb/WKZTwj
MTQlRirZAW8Gc6xNaA1VnJgcaJVryfGGKZNPcJS8gs45hoyQenFXduysGSIAXVMvokMqJ52e
7y+PjyfphWYGk58PlxeqkO5fwNXtv1c/Xl/uz29vL7QrQCyAp8ufSh74MO8HssePcEY8JaHn
avqGkuNI9kAYgYwEnu1j85HAIL5Qwcll17jSPMvJSee6VqRTfdfzMWrhOgTJVDG4jkXyxHEx
P2rOtE+J7XpaSen8r9xyXOjynWCFYWicsCsbzOriDF1d3R3X/YYu5iTHxb/XktzdP+1mRnWa
6AihdlAkSpbYl+lGFKEUgk4Q4LBwpZicAzcMFw4vMtcD4IHoGCaRwbjBoEi+bi0BBoOI86z7
SA7hPZMNYYpmPMBW8hy96SxbvGg7duoiCmghAg2gbRPattbbOfmAdGDY+gm9a7XcD41ve7jl
LXD419qScoQWem93xG+dyPKQ7N3GsXU1c8Bgrj2A9doYmgO1jC3JMmIj4CQNEKTfh7YYkGDU
DgfHnzSWaIigA+L8fEW23s6MHCFKgg0O1OFJxDVNBmTXc1GyvKm1AD66Gp7w2I3iNfLhTRTZ
5pHZ77rIsZA6m+tHqLPLE1VU/3eGx69XEKIK0Sb7Jg08y7Xxd8pEHlWhSKnrKS0z4CfOcv9C
eajShIMQQ2ZAP4a+s8PjFV0XxkPwpe3q/ecztaWmFAQbgZqLjj3OG1NwUoWfz+qXt/szndCf
zy8Qne38+EOXNzdG6FpI65e+E+Ix/BiMrAro2gaCJKXjtqXwdrchK7z2Tk/n1xNN4JnORXpM
yrFHNfxRFPEdaY7sct8PVGJe0mrSVD+jxhjV12wBoIaohFjTKJTqYrof6C5+6rcw+NiJMIfr
wXKIrsDqwQk8lOprhQNqhNhTjH4tZR9NglI1rcKomu6qh0Da5194Q5yKyo0R5VcPoYN6AMyw
clAy02mRrn2G5iwMsXqIIr3P1UMcYKYr0FFHrQm23UgOCD/OU10QoJEpxuHZx6Ul7pAKZN2w
BrJt28go7+MGdxee8d6y8A972zZP6hQfLBvL38Dzp8sb8IiNo3JpLdeChxFUiVVdV5aNQqVf
1oW64gMdGjuhfZQiSHGoTUlS6qsITtbK0n72vQqpms6/CQi2SyvAiMKldC9Ltlcse//GX5ON
/mWCvvfBsayPshvJXMcVLtPFBaXpF2in2d6P9KohN6Grj930Ng51/QvUQNO0lBpZ4XFISjGT
Uk5Y3jaPp7fvxvkhhfMyzbSBKyeBlmc4v/UCMTVZNp+Gm1ydN5cpV8XkDbl+Xy1BYZOfb+8v
T5f/P8M+C5unkY0n9gWEjmzQkHAiE10i2/DCgboLOKORNENpoGjC6nJD+QKajMdRFKKzmcSX
ET9E/T11rtCUWNk7hvvLCpN8sKCh6F1LmckJArxCKGa7No59gTfSjEkfEsdCr2nITL50BCRj
nhErDwX9UHbX1/EQ81SQ2BLP6yLRO0xCwcwUvej0niL70Yn4JqETxkcdgDE5eAIMM+RsTNwx
JZ5BzX2YNjX4zB0nitouoFI+qsJ+T2JpBpbHsmP7xv6d97GN3tgQmVqqbrEzhKmZXctusYgP
Ukct7dSm1ekZqprha1pYT5ohEJ0lKrO3M9uC3Ly+PL/TT+bNQnZT7O2dLqZPrw+rX99O79Tw
v7yf/7H6JrBKW9Rdv7aiGHOCH9FAOWfn5MGKLcxjdkZFs3kkBrZt/YlRbZkII+gwR+tVynTP
oqH+1+r9/ErXbu/wLoRcOkFQ2h5u1KxPajZx0hTVpSxbOYw+Q/HKKoo88ZLQQnSnTFPSb52x
AYTvkoPj2WpdMaIYZIil0LvyqAPi14K2jovtwCxorLWev7M99E791HpOFKnttA4svB84Mb5b
KjT6tX6iC4VZUtsoUFrQMt0cngQoASwkfMg6+xBfSWBUEamtqDKEi7ff1czSvGCahssggfTo
7tIlAowYYv1EHWi074q+ziydjk6ICl/auZaaNAT9JGrSvL6ZYTL37X71698ZgF1DLRa91wAV
39EcS+WE6ByyoMroYz3aVYh09KcypaDr5MjGSucpFVYd+kCvnd710RHo+uYOkOZrqOcSO6AQ
8UTJfL6GJ+RLNbmR3lxLL77abXl5cU97YMgMr5JPI9aVrUbeJqlD50rsPvAMe7Z6PP41tekM
CiepdSr2rWRU8sZeBeM3cjC9QXNuCJgiMJjbiqszycTmO5B9RzNVvby+f18Runa73J+eP928
vJ5Pz6t+GQafEjY3pf1gzDrtV45lHdSs160PLvjGjAFuG+4DAb5O6DrL4I3AOv427V3XMqmh
EfaV0bKlk6CqXGCgiREWgEj2ke84GO1I6wKlD16BCEYMgYC5DfLIvV369xVPLAdJGEdGhNum
s+pzrE5KTZ7C//PfykKfgPciZiZ47mzcTFcABIGrl+fHv0aj71NTFKrBRkkfzEm0oFRfmwoq
8MTzIUyXJdOdimkVzh4HZXaMZlS58eHus9JZqvXOUTsQ0GKN1jg2QtMUK1wB9yyTEcZQvY05
2TzCYXFuRottF20L3Mt1xtFlMZPdr+nSxbW0+SUIfMXszQ+Ob/mDmnu28nHMfZRsYunmJdB2
dbvvXKKMsi6peydT5e+yIqsyTb0lL09PL8+rnPbi12+n+/Pq16zyLcex/3H1RZlJtVux0sZd
I50/GNcs8qUI/QYEy9z29fTj++X+DXs5IW3196MIpS17VMu5j0Dmu1mvp6fz6p8/v32jZUvV
Ta0NLVqZQmS5pWiUVtV9vrkTSWIVT0/KHun6DvPWpQJS0TMPEqH/NnlRtFnSa0BSN3dUHNGA
vCTbbF3k8ifdXYfLAgCVBQAua1O3Wb6tjllFl6qVVEg629T9bkTwUq7pD/RLmkxfZFe/ZaWQ
rglBtWWbrG2z9CgGWgDmYUukXWRInCQ3Rb7dyQWCAKfj60yy6D4vWPH7vJrfz5b6xvwMlzYA
oDXytpVf4KPEpsR25YH7bp21jmRXitSxd4iiSJcXtKrwq1qsJ3S9EdxTQwnbBadQ3WQVe3BH
rk47ZY7tSib4s0q4oDYfiMIOJKMz3oSb/NEmXGxFqcAheoYELazFzJ6Jx5IOi6zK93hYB4Hv
ruvzL3s8RsTChsdwWfBrhSdpZginA83d39noxiXH1M7R3x0TY+sDusVXWSM617GJqcO2b4FO
BsVHcCZeK/vIQZIkw00Y4MmxkxTohFlNNVUuq8+bu7ZWsuGmG2yCpshQ12ld25KAoY8CcaMF
FEKbp1klaw/S3kh/N6X8TUKnF3WuGGl0kiLlMRvk2DsSmOy73hBxBGoEHNDxEuXrkjZx7/ny
JgpFpsdNDTXB/ThlBZnRrlvVpVwIsIqlyGkLjd0k3Woaa0Jxh1/WwnDIIuudDpaCoUwrQ1sy
I9AJm6nr9en+fx4vf3x/pxZ6kaRXXk+nKL/MPD5JiuRwHhQS45K1Bb/pU0c88VqQ2dFaQ5rb
EiMjQSQWkPkj3BYZZlIsXKqnw4KQFBzOLFw4A9G1wsKjh+wQCqT5b0nVELgWMUIxijSR7x/w
zGLOPQjb5GFytVCzBzAiwOC5KmRy8B0rLBqsAOs0sK3QUNttckgqzPIRZI/Rrsdu/0Hnnr6n
hhDEfBOf1k1LKXJUUW+V55TGFDQLe5LQ1ftKDMKn/MEfd5VJTVLKhN1tmjUyqcu+aKMK6C25
LamhIRM/03oRSwG0uusg/BnaC8ZMXHl4Fjjkm/1Ic7B8jq40VJWOPhaSjCFr13WXjQ8mG2Ro
ThgzcfremMekL4501shTFubNIB+q55hXn0c/hCk5MZvaA3u8CfbwJFWrZo21zb4ssaD/Ew6N
RCc0aY4UMZzKItbpEJ2K9G/KZu9ZtvqsPLR8U7jytRGRCgKVwh90bpLEIV0OpeL1Y9Yqs1OA
SIS6UCuJFHWNPZjLUkTL0zdk0KuaPdW9twPfcHl3qQpDYqwo41MN/NVIMzhFQPzdkserklWS
2pHojM7LC0cFKi33Pd/WqqbP8wO+Ob3AbDGG2zuMaR9F+EsHI+ioednL2y6Mdutoefvau64p
xCzF132EvoTFBiOxbCuQk0jKXKu++nC3zSqkizK6mqOk85zIEOCbw8EBt+C5gjhs0Acvod+S
tiBqPW1ZeFw1EwW5A1azrmSisHtws0wPl2n6pqwrogyQXCFkya52NcWZV2m+xWbmBZRDFy70
9LOxgNOHprafBBxUyVSj2daNuf1G3CQ3qzrbDZU24kRtXGWdHbtoxPQRDCLskyDi/lzGLG7K
yKhddmnXzPvUL8+/vMOO8B/nd3hm9PTwQE3xy+P7b5fn1bfL6xPskPAtY/hs3CuRXKNGieZx
Tw0CO0QvNM6o48m1xSLbRQcLpyqmyE3dbm1HvPPCumpdELXqSpJ1dDWEbxTz/nogBv85gKvS
8bEzea5xDztt2m3zpqerTsMnbZm5mjajxBg/Ap9R1AueTT11lSdDvs6U2U5b+vIZjUTOQev8
I1nX5fJk2O/rrlYEHhxHaYS7csNVKX9qN/2NXdPXuw/hbYuasfNX/6F80rQZ8y6kK8+v2e+B
pxmLSY47LvCqwpaxbG6VYjiA53a9oytiaYtTxjWvZSDSxZ30lhLQ9kWTj+LnzHDeqjJG4Otg
myLZHXekO+6SVPkWLeCeh+Q1SGMvN+N5poirZQ6Ixy1Jtxl2cQtYSvhvl4qvls1k/uHUBZrH
0ztVJk+r7ePP86o4/cWUCb8PBKVJS7J6enk4C67prDB5fayr4k7NW3qbYFtZIzSfMG5PD1S/
fUp/nh5/e315PLMkVq/n//15Ae0GCXOWaakEqvCfZ9oD4eD3YcnMJPjYUCOv2WWtuNkyg4q1
PtPHlQFSCIcOUbD4y5wugaBzbrDFi5wAy0Od5kqlw5NcdLQTrRlH+nGfYj1fYim7EhcKjhUG
ZHl8F0+2z7bo+5vAlHeNHYpH0gvRhvxigDX2rGNbF7M3PrQkaz/F2Rbozfe/3i73p0fe6/Rd
f9bPdsIhUFU3jHhIsnyQs8DeSpKDvfRkN9QAIiQe2Hl9N9vqWnnc0RNg1HlX8itlYxpbGk1f
oAoYskI1CDhuOlQ6FB32OG9/dxAU3iiBDeFqX1Jtt9nA6ssRcjItkejfXV3o55as9OfXy4/v
51da/mQ+q5Qba1P3W8e29A6ybUeaVPg2ggNbNHQra/oDka5wMwU26MKB5qpamE4pDbAyV3OT
koTUHVnYmn6ipVBlveOEWoiRkXwEFWlS+mMD8OeV0dnUXLdiFug6h85fTd3l4s4Tq3Q6R5Yq
CYIkrGXi1MgqNYOA9dr3COvmWK+zg0qr9MQzndTs6kodF5Qx0zO+X3c6Y0vn+E4lqiNhc9yT
xD4W2ZYkdxo0JCpJ3j3gtF2eyiT+6wYzEBh9rCmT/p64SFIaJUCtfvS9Vsszkl2RTLGxQo39
c+ZlVfxRNrQGmxGsgWdwQzvjsTPXIbTlxznk7ftRFtVecEUWvrut8EEv+ThNY7+Zu55JPtvU
lDdQZ5U7mkA/Xs/gQPvydn6AayLfLn/8fD1pcV1A7tesxVegzGZVw1RIKFUDpuln7H2IXjMa
RZt9xfZJtTE60yFBIzaNdylJAR9NG2OGMfXFtkbn+VkuDNYKiskNQalG/WtMdpdr09D2mK63
2BYmB2+zdUK0yqXTOGLeSzPGx11jEdnfNWg0B5YUne6P3W3eS6HsS6nHNrctbCBnJRr7fETn
w8ZlUQfhWfb4I7xUFIsQNZmJPN4LD/mye3l7F6bBKR6PsAChHysWPZC6dCduEs6kI0TZSZKs
62o5Es3CgS/NBLzoNyUmuqazb0s6cf0pg9qbqjLcx6j3kMhD1xdlt0twGQlJ4XThqowN/BR3
bReozIt1Rva9jJEiqVuZ1OcbOpUgBaGjsN4dE1x9A0uyDtEtZsAGFmSsFG9kA3lPM5cHtGcq
eU6+aA28674oGa27Xb4m8nY7AGV/g1fhIasM10SEZigJNoYXBlIGvrQ3W2YlPAqFnVZV2S0c
PQqaEf5SQ38tNB4eDEVKunShDVCIzcXgdQsnnBXt88fdLV3yQfix+eo3HHBriy32mXD+vJxm
AkBIbztoiAQOV67l+DHRv+vcAH93hsPwsp6r5j0pA1cM8L1QfZXKzv8tjOhgRDUp5h7raLkG
8r8qe7LltnFlf8WVpzlVmbmRvCR+mAeQhCQeczNIWnJeWI6t8ahiSy5JPmdyv/52A1zQQFPJ
fYmj7sZCrN3o7XrK6wN6gk/sc7NGu5nLNZDmLjLVYLKACwZ4yfSpuPw0oqLo8JerVfvINdax
xLNP0GCMGnvJRrfs0Vfn/qJo48SjNpzNKWkKL1OvYB8BcvxzgmjK578031GdX9IwLhpchQKD
Z46VqpLw8pp47JjZGiI1e7N8ecm53mksGqVcXfsTFZfnk1lyPmED/dsU08HzbtiR+mH/28tm
+/23yb/0Ta/mwVlrkvK+fQKK8m39iNbrwG102/jsN/jRVIs4m6f/cvZ0gAns/DkwqS1GV3Cy
gknyCmGk+dHR1WkshldWZkuNzgxiTQwSZ0LH466aj5in55OL3rbe+LZjgKNqt3/8+8RBp6ov
lzpocz/81X7z/Ox4rJs+wFE652LUYakAZ4obcPf0QliTzC0mwrAkcRAnsbY3NN4Bb+uH7+9v
yMsd8Fn08LZeP/5NHPJ5iqHTESapQpsPv8eACuoZFxSyvM9CNGnmjSRMuSbN72RrmH2KjAnD
SAlKmcyQ+WOjBxqShRQF4dVsOK7dylVrd5Ee6ScOFYh6BTJFkQjO4KK2j2b40YTxjAIKjOUK
YkesbikiwmiIPWJg45HpHIs9iyFXpQrzktd76fbQ5G9cygEKELdXTh9V7QjZAExnI6FVZoCM
YbPWWj6wI34g5g6+ZxZRoEOS5bq4AyWMl4akJJBrD/Isk6DFJrgvNF8jMjGnNjOo4ToRdRLR
VCNtIJi2qeboo8JShMez8I4EG4Hz71LT4DBzxfX7cZxX9ivbHU18aGiwfRdGXkoM6K7MqflV
C4YujDYfKgyGavRfw4NHGxTrcb877P46ni1+vK33v9+dPb+vD0diqdkHrTpN2rU5V/Le0ZTB
zT+P2fysnVXs8JkdpCniwradQ4OZMLHOS/iBqyPJ85u68AlRyVgIOxyquXGcSnrYYK7Zd9tC
dikQmE+gVNcXdu5zC1fGl+cXk1EUNdyhyAm3LymJzR1SDHX2tXBhFMrPn3iFtUN2PeU9sGwy
7SXVhJz4Y3fIRJMns9glThrpp1jF+BcOudNVM/lFLKybCsFGUc7TwtyFP/1uJkURR9bGeE5Z
RbF59IfWrANgsSyLOEvMZjc38Mvu8ftZuXvfk4yew1EUwz5HpR3snOrqgo/VzFbSi6kCxHzq
sNEH4E0X3OkoMKS5aFJTilbTvdt0R6e+QkhkbAMa9NlG47veojvvmUaeFQ/P66P24S39E+ln
pMNnmJY0w8E+RXZ4k5EYr5ZqofJ6bp1L+axxrrHy/PpTDxvOOoSG4dJgPNZKrV93xzUGmuXm
UMk0r2Sh8pCdPaawqfTt9fDsc7CqSEvr7Uv/RBlfubCsdCHawn1OGVQXgwAXa12vXZ9J36xx
QlPmZax8JSIaePxW/jgc169n+fYs/Hvz9i9kXx83f8FkR04w5teX3TOAy11IBrRzMmTQxkNh
v3t4ety9jhVk8ZogWxX/M9uv14fHB1hrt7t9fDtWyc9INe3mj3Q1VoGH00ipjRvOks1xbbDB
++YFJb5+kHxhJq5slZz+iZY0bKT8FlsHINoZE52LoUu/3rju6+37wwsM4+g4s/h+h+X4otid
DKsNCFH/jFXEYXtZ6JdWlHXqpch0zpS8Zc4KuapCLbiaufjnCBJW6/3iP0EbYi+BcwvuUkax
t8dAc85HxBwIvCSpLcpceuNFiyq7JHl2WzhIvdefbQ/mFl6ml5d2oI8W3NlVcAiYQPj3nBq5
Yth5xcuGMXtDZhVx64WfTVrGbAWIiyOOF0eM0WBUtqU5guGqnRd5NncbqfKcU9nqIlLNaCWV
ElnpJrm4SyXajbH6EOv0hB8orVL9MQLHvDIRZxJfV2HgFVqO5IwF3KxMmlnF2QciVmcgth2E
EOjnKkWofu2jAVNNmAZ1q0MAWjLEILghf2JXJKAzrOTaZdBupeV2I3t191UXaIRFzHqCXChM
6BnGU+qM19qwxEUeVqxGXslSVuzJaDCBCtMSJhx+hSJxsSa383xpN2kwVcy8phnjusU9cC3f
DvqIGgasFexb46a+tiBMmxtM4Qk7a4pIfrIX953aB9axUjLjtfs2XfQrlZWxVKxBGCESyZ11
ICAKV16crr6kt62xFak9BQ450cGST/eiWIlm+iVLm0XJLhxCgwNEO5GKQpsgNGmUXl3ZPhSI
zUOZ5BWukEiWbg/7XGELdjtTCmpPh8hSpGWdaW0q916NJHhUTqYTEgacLg2rSvQjCQXv2ZGG
gb/G1nu033zYPqIV5XZz3O05Mf8UWb/Qhat0v/CaE9un/W7zZHO3IotUHkcsa9uR9+97wo7/
hK9ADKC5SW1Dk+zO/9mfqhRYpLAXI6pRNyiVSj+ExWJ5dtw/PG62z/6pVla2VXsFB6PKq7wJ
hLMGBhQGVOAuKKTo3JssEHDKqs3Zmjua8wG7kEJVgWRt2CyyGVqr2m9p+rCyLSw6CH2g66Fz
lrZkobDeuXorrt7B6rEzHveHfPjwWTFnox+UxCcQfmolKq4WTI3EbhUkMg55nh03R7OoecNt
i8To8vnuNXD8W8tFQwI5i2e52/E8ZK9FVOQWiVwN0XR1NMa3l/U/nGkspkQS0fzzNU3WguDR
r0Wk+1JBMx87rfXrLKaPB/gb7+TxpsokTh3uaOAE0dAG/p85KdHC7nGlzogXJTA1zW0tIuNG
yDyLAKME11NR1W5S544yL3k7Goe5NyqkDepU9KFsR1423qGwz0pgvlVp90+ukDekHF4HawJ8
6Wnygh8KVLjg+9aN84hqLZgGbl11X7iOqTbFHfAS1YhG5oS2JjY4T6c3VC380i3qts4ri5nU
P/FVWz8f6AmekeNIm1e1ZEuhspiy5AYxxhIbbKWkVeHtLK2au4kLmDp9CiuLjcNMfLPygtiN
GlhDZ28GQ9Kw70k5jHUi7h36AQoMYRRjVKAG/pwsP1CKZCl0JJ4kyZcj1cZZJPm3SItoBTOq
P+hnhKmEkcmLe+86DB8e/yaxmYAPDhd2BAkD8E/1tqRhSA7r96cdpk9bDxtp4G9g1/KDqzGw
o5NIScue6kYqYkboiVOLeg4rL2Dr7P105vFcZBXy3CaeSn/a4J9hBXTMkv8J9slTGl2pUUNy
zcJWWObqxqayWJWE/uh9ED5sDjtMZfz75IONRg9q7HVzcU6CHRDc53NOuU5JaBIugvvCpm1w
SKa02xbmchQz3uMvV7wnrEPE2cc5JKP9ujofxVyc6BevHHCIOJWRQ3I90vr1+dUYxn60ccpM
R3t8fcHHBabd+cxpm5AkLnNcdc2X0QYm0xG/eZdqbLJEGcYx/bKu1QkP9r62Q/Aqc5uCT0Nj
U3Cvbjb+iu/TZx58PdbVCecJRwguRsbE2U83efylUQysprBUhI3KU9satQODAFxRuWXAwH1d
j9iN90QqF5UTSc4nuldxkrDSe0cyFzLhuzGH+521lmzxMXyBsOOi9IisjiuuRj0SfPS7jgR4
xhuipUZEXc0sM8M6i8Mu/SoFgeyhUmAMv+qwIb1VC8tqErbSaEPWj+/7zfGHnz31Rt5bFwT+
AmbhtsZ8ut11PNymUpUx3C/AXQEhcFlzntNsuUgZ6fpYEkA00QLj1Sn9QWywFhnWyGyi1Uup
n78qFdsxEDsCH0Ku8K6a9p5kMIWwRU+t/F8IFckMPqHWxjPFfaOdjdGO0KZ0iE6ggMNNksCE
vRmlwaOtLOwtNQPWHhlnI3pTuV0gi4Fl0VnbBEE8NYxVnub3OfP5BmFS5oahLCqYwUrd/zn9
dPHlJHEdxZXOjzv5NL0Yo8xTIMJewoeFKIHgo+x4L+JMQ/DBO4ZTBJd6F8TRenxty4gCBKR0
xLSzp7oXKSfo9/hSzPBp1faq6XEoMEX5MmuSMmW7YBM0UqiEF4C0aKbpkMWUCU5siLs64+XI
EXoUd+auBHa6iMai/38sWuM/Ih17tQ3YVDTtXAiMdaJALKpL3NZBnnPSdKf69lfcICO6JJHg
TnAc7A9oZfC0++/244+H14ePL7uHp7fN9uPh4a81UG6ePm62x/Uznmofj7vX3Y/dx29vf30w
593Ner9dv+gYn+stvv4M55557li/7vY/zjbbzXHz8LL5X+3FMhyKYajZeBRvQBpXME4xKvQr
EDWtrclSoVOU/TIVoz8sqhVwpunY9yg4GLraR4RnQjrqd6Xp4HIwYRG6oR6R5TviGVyFo7R9
JF92uDr0+Gj3ulP3/unHEC+KvHuFCvc/3o6YwHG/Ptvt21RQtjxnyEHSKbgLo8WKZE4sRAh4
6sOliFigT1rehNrtfxThF1kQbwoL6JOqbM7BWELflbzr+GhPxFjnb4rCpwagXwM6pfmkg/0k
C/cL1CW1tqT0TRSXIkhkM2a165DLVaWEIfZams8m0y8kQFmLyOqEB/q9LfRfD6z/MAunrhbA
/3hw2/+seP/2snn8/fv6x9mjXvHPGKrvh3X+tPNcCq+eyF9NMvSbkyFLqCKmyjL1PxpO5zs5
vbzU6TeNKub9+Pd6e9w8PmBmernVPccUq//dYPqEw2H3uNGo6OH44H1KaLsUd5PDwMIFMJ1i
+qnIk/sJSV3Qb8x5XE5sh53uK+StHaah/+SFgJPurvuKQJuuYfyPg9/HwB/HcBb4sIpbveGp
tSpDv5pELT1YTiOP9ysw4C7JFruqSqYMMNhLxfqRdYt9MT7GaONb1f7soAtBP5QLdH8YGUkQ
d/xDzwDdjq6cj3PxdynlELr8CuvD0W9XhedTrhGNODGEK/aYDhJxI6fcjBjMiQmHBqvJp8g2
7O9WPduUNRfesRixlrsd0p++NIZFr9Xg/iSoNCLJP7rNsxATDji107EO4EuasWpAcG8Q/Slz
7leF7+xB7l97y8I0Ye5+Ha3CX2VC+gc+wJrKv/uDJF9SC3EHwXgSdTMpUpkkbJz0ngKF5fHy
ZcU9AVlof4wdw4GO7dF/T9TVHp7c3EhVjNlu9BN0Yp2B5MyOXwsfPr/LPNFl4PZmDRiXhAS0
7Y7DrznT7y8XJ7Zt8vWCqeZiwZ0AX8sq8o4R9bB92r2eZe+v39Z7YwncSQJueZGVcRMWinVA
6D5NBXPHBcPGLLhT0WDMkeC2qXFw25xu0avy3zGKEijCkxcJi/lqOP64Q4z1psd3zO6pxdQT
nxywnqrlwUdrkZnmCPMAjRfYmAj9iSKqPtdPK068bL7tMf/Ifvd+3GyZ6wpjzHKHiYar8ILp
GaJ+egkgkdmTVnisMRIe1bNhp2uwuTUfHY18W3fpAKOJ9rmTUySnmh9lJIavO8HR6Qi/3VXj
jvNiya4yUd6nGNk+DvVLIvqU+frF9f6IprnAlJoIlofN8/bh+A6y5ePf68fvIKhSp0TUnOGk
YsTusn/iZAXiX6m7+8wgzoS6N1rpWbc0k9E1iclphGoUOtFT6zHhqe77FuAeRVc161TtrP4y
WTV1FdtawA41izFSaKwwNhl91A5zFbEv6/ARqQ7sFZCQyuYN17Zi1KpQ1GyHabEKF+ZxSknC
DoUgFcBRRUCTK0rhM1FhE1d1Q0udT52f/fs4XVIak8ShDO65oKuE4IIpKtRSVPx7naGAcRzD
XvG3a0iusNDS+mAQLoafDbme9wzsYCwqsihPrZFgSn3FrRdnzn381RwZLHSWVLawCXe2DlSj
JAkm8RVveQ5+wVLDhc3D2VpWXxvHOMdAmtVI6tAWrU0dC25RtwSxuLpwm4F1nHKwagFbgOlD
WcDCH28iCP/NFBqZnW6bMnoH4JoxSmSSkxCjNhQrtvdSYEfcgR/aEBDfNJWwrQVWQilxbwzE
rM1clnkYwx6/k40mGFD4ABqldpqyVDQkzVOme2UQicyI6Z/GISIVRePkOdAnCOJEFKmmaq4u
AjuZVW9rYR65kbDOesXTQFcuHb9ZXSXaB7sREgkCesw9cLddDaAh4OaILmmemJkaQMYfzOhl
rE1e1Kkob0DUn+knXYIB+UxY727RrXWkzpM8oL/sU64bUdi1ld1a8rWpBFmq6PkMlzFns54W
MQlxHsUp+Z3HEYbTgNtRkTUA66JbrXeRHRe4g85Rh5PKfBbZi8cuozM7EB8yPcN6iJbC9rZF
LWA2pyd8ey17typVBnR3voa+7Tfb43cdv+HpdX145gIVmBwQumv8ZYjYUFDz/tCY2KJeLIFb
Oemfaj+PUtzWsaz+7DVoKRx4aOPg1dBTdIkunMBUBIy3OFUY3qdBDpdbI5UCOslyNqPD0gt2
m5f178fNa8vpHDTpo4HvuUE0nYFrhvPJmcH5I7WVntE2WtpNFRdw8qDtNWv1pEBk0EKBsKPV
LiRqF9GGDVaO/cTb7uo2oUYal6kgUchcjO6TF3S4jYqqj5wuQhzmTJhnzfmUt+m1iyyluEEt
Om51nq/81fElXq7tAo/W396fn1H/Em8Px/3763p7tK14Mc0Wsrl2UAkL2CuBjLD156d/JhyV
G+3Ox/VpSP788IEOPzWl62D63Fziv6xOsSVCrYCmS9Fm90Q9rkrVvTDqoBQZ8HJZXIHU05BV
onHOT3TJsnUhoVVLgP6n5QjS3KUuCV/w5yWQCUhGcOUintE4gxocxXeespAQ1BnsIpDOAuoR
YJB5gOlntOvmaAVBnid+SZmNZOTzh57dBb+0rukCMRpvf1Wg+aQnGbbqzL5ecuTjwStXlczK
MSvoNvw2EOoLn6XR1eTLjLXI0MgijzFev63zGypuiKhk4CqPRCUch/h+VRua5cotZUN6T7Aq
qlNrSZvf3n3Rgscd3k0LZp2UbsMtmOFRKH5mTK2d0e2wOt8Tb0JECdGy5xfIVFjrO+JnX4On
NPJjnoMApWrfpbr7eeLcNomwmKeFydajV2sq0wTuAv+7O8yJTzGGADVyCLzZS7hAjltTScwn
s5BsZEBn6dylTTGv2qOANHiX+hCtlnHtw3qkOnUV6oZAupyPL6nxvhinX228YF1BBqgdCGLU
CCuVqzZ9lre7zO2LbHzpzI0ekBsaX9NB4GdTJr898Q3WfyQzWFycyLNm+XD2gVQjS2IH7h1L
zmpaGD9WowBDorN893b4eJbsHr+/vxlGYfGwfaYsLDQYop1HnrM2EwSPrie1HFJJGaTm3Gsr
w1QkK7wZFuiIWIEsY4+xYSF6VF94Mu2Lo/WQFjwtMt2SJaGOkbQ9nAwfuLwFVg0Ytijnn+pO
j5SxjgRO6+ldR38lV0JnvMKg6dTgR95IWVi5hrEp6+b67fC22aLuGXrx+n5c/7OG/6yPj3/8
8YcdQk9bcGGVcy3iuEk6CoVB0VofHheMcXx1BRmcto7BnIajgD265VQFUn8lV9I7yK0QMnQr
8uTLpcHA6ZcvqWFl29KyJB4KBqp76OwtbVonC/+IaRGjHyOqHMWgMpFjpXF4tS7jRHQ43aUK
JgAt4NzHxOEzWUvc/iyekRq4J8AyMi0tRWznbehE2v/HOuqq1O6ZKOfrU9YdaR+u7wrHp1OL
P2htVmellJGM2hdFt7YbcxXSc+m7YdyeHo4PZ8ixPeLLuJ1i3sxD7HMFRQt077yREH8a2Z37
3Bzqyxo4YeScgL9RtXZuswf4ZI9p50IlWzvKXsUE/AQ5NOiODElQnx6ov5zp7NhawyIYJGB0
DSGBU9jCAC9pFac4vAq1pNwf1NMJqbVdFaQv8rYc9Z/TfdV22s1cL0OTpsYecTpmzulx24rK
Sl/T9HFsAZdCYjigSnahFay3r7ww/SUW2neWpH4aC/0tFjxN97Diej4zyGYZVwt8JXPZixad
apYSCFDJ4pBgYAc9F0gJAkJWeZUYy2wKxA831Q4I01hID279cGZSsgxAnfJT05NLBYcX5KA2
2Ik3LAWw7SlsJpD62d569XXCh1tRS+hfdjNv7SFXoJ8J2zLce5I31X1pdp65K2Rkrk9Ms98G
7HV0x2Pt8TVn7vcPhrLMZzOmYw5rf4JgsUxENf5pbdfbZUZ6bso0ZQZ88YK17jZlA7gGYDmY
73O4DILzbduHY1CjRQYHt9Dm5Lqc9FcPg2nb8IevhnoDaVYzK1m002cI3GU2ti0pVis0Q7+b
5NG+vM9gZbjNLFCl3EX39Qa+3YRGZGFndthkg/aBO36HHU60FF5zItGajNEovO2Hm/HAP7Vy
H0ScReXJ+R2iEnAzFd6tNpw7lOYnX+VUx1D0/vP6rIhkUtkxG63pwTPJqYdME5PmWWDeiZO+
v5HUEUDi9jmS5mNob0ZD471LHc6vP3HcBOXn/JNSe5206gifd9I3BisaOe3ZypJqfTgiv4mS
Urj7z3r/8Ly2xcqbOovZ8FicDB7bWspMViaUxklh3YiRTPGZiBP6roIQ82jWiQ/DIqa19H5W
3Cp2SLkHa90SpmFoPeR+oZqBtcatRl6S+hVzE+a24bJ5MijhmMvv2qkvyFchPbtnFZxR+no0
AqAXjbgnhMU36jx4cgF4Hh9GpfZ/1a7B3fZ7AQA=

--qMm9M+Fa2AknHoGS--
