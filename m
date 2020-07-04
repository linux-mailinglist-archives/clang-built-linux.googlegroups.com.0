Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBROZQH4AKGQEMTLN5OI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43a.google.com (mail-pf1-x43a.google.com [IPv6:2607:f8b0:4864:20::43a])
	by mail.lfdr.de (Postfix) with ESMTPS id 14E012145A9
	for <lists+clang-built-linux@lfdr.de>; Sat,  4 Jul 2020 13:49:27 +0200 (CEST)
Received: by mail-pf1-x43a.google.com with SMTP id v16sf23093309pfm.15
        for <lists+clang-built-linux@lfdr.de>; Sat, 04 Jul 2020 04:49:27 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593863365; cv=pass;
        d=google.com; s=arc-20160816;
        b=NbOUdsKlYs9mU/IWhJ/Yy9Br+gjQ4mrjrMPByWHYZ7BidTAdCXpraPz2BRdyzuFxly
         M9B3xMGrOtujGysB1lBH3Agv+soi90Dhr2lqJZ1wUVF0CoCXbyPx8odd66KjxhlD5J70
         7yNG6xBKoNtuxDG+MHQywLqq8fICpAAuuvcMbkKADA++DFLzkacoqpwjgV0ovqvV24gw
         V7E8WkZnH5NGLmqyJl8gZKb7JRmGSLpHCpJZqgXJGNPqNsIWffsjLXZxaicK4xwrdPzT
         lsgcgVig1Yh2yDerU5fj8eh65ko8lCqKpTRSut9R2Mh+3cKZk/846wqC9vFvlS4ATxVB
         4k8g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=6KBE95GG1qwJSSsD3HcW+xMJIQcfIYDB1d8LnuzBBh0=;
        b=Lc8Wxo+5jyjXNYrjjnK+7COm7nbBED7eyEhCLmEdfm9QJWuY0aeQvCjtjynncNaadh
         ygcEQAwHJFWPJ/9oFrkFE1cKTl9CiuGl1KIKmEPXWod5N0tcJkExPWTqrgfheWDP7Ei4
         nXm471DgmCEU7uExYM8Fo2PZbbqRBNebT5lHIoDJWnwjPBq+JD8x/nJCvlL7UqM1sC7K
         GIXaiwDGZCcqLdeOCuqE7UeP9L4iWbuJvBNZGMMyzYioYEHmVTiN+KO3OiSzskheKwUp
         vsMJR/blqiAw6hhjjWt841sUn0gz2sZewajdE7Ao4AczMSpX07NCeoBOU7VF3JY6yY0p
         9HFQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.31 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6KBE95GG1qwJSSsD3HcW+xMJIQcfIYDB1d8LnuzBBh0=;
        b=gE8/kExvVVUKlgNet3olXgc+GZBR+G7Cbd9AIzYHH9cr1BdtVnQ5vpakNjl4nCuKMR
         HMbSh5aBZb7qATZ3ZFxrELr05vYUsf5OcDZxnUdQkJI9VrfnVQi2Mwc2cSZ0PI3nhivR
         a1SQ76QwjqHeyIN9fAmYF2aX7ljRDvEAxR2dGQDdL/o03RfhnBcXCA4AG5OlOfJzCc4b
         odGwXfEKYxHSW+l4UO8mnromuvNdwvUezeWu7pusdR2obPvy6apxst43FNX1N1z72Wir
         xThxJ/EQ5Hxb8PLh8DSSCSFQBJDN/5qKP4LhgloxzRgLnEfIYDUjrwFq80Dsol3lXmvN
         vIMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:references:mime-version:content-disposition
         :in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6KBE95GG1qwJSSsD3HcW+xMJIQcfIYDB1d8LnuzBBh0=;
        b=BqBSLxQlpbXMTRTido8f959Ga5Ht/IIuwB1thAvl79YsK5GIW3587H8JKJHFsFbrDW
         p2q6SoN7EbGhukiUh0U2DrCUteRF6WcfEZgwpAj1hG0z8vz0Jtj1Mtn0BI9jxQuu4HKA
         WlXgkd7p4sRVmaIXItaEBqAnXTTdh5IivgYi/FprdSNDqeoIXFsIl/dMXcaO26Td4OrN
         Zww+aNkgZXwe29rbaxGfHMHazsFrVPxPy5fLnsJGlhTr3h9dFwocKS23WlXIV8HGAB5k
         Ko1X8L0Qfn+l9qXpZl3HPF0eg23+SWcz1pIYJG5lx2QYytWBhDAilLS1f4r7IP5m2N6V
         glcA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533VxrbU+lUY7I43HluYjA6g2wydsU+RHt1tyTYj26Z4qEioVxu0
	JdRZv8IbMAXCHXwmfGWWxHQ=
X-Google-Smtp-Source: ABdhPJwQLoOATKd985VKiSlwuIb1zM1+87aMVYI4H3P3cMw5OIlGRcWwyLsCEueLGSY5xQz9UoaSeQ==
X-Received: by 2002:a65:4b85:: with SMTP id t5mr30306140pgq.36.1593863365221;
        Sat, 04 Jul 2020 04:49:25 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6a00:134a:: with SMTP id k10ls3472161pfu.11.gmail; Sat,
 04 Jul 2020 04:49:24 -0700 (PDT)
X-Received: by 2002:a63:fc52:: with SMTP id r18mr27122316pgk.334.1593863364743;
        Sat, 04 Jul 2020 04:49:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593863364; cv=none;
        d=google.com; s=arc-20160816;
        b=m4HMdZpOObt2V3zHffU5Cerewlsj9dDgPliYaFT2KCe3AKwdEt7hDnp7PKTUcb9oQJ
         sdD7Py50rJjW2bS1MxhbmDzmmhSVoxqhnGimo2xVotkRmFjq3s/qJVccg+vtmaKrie+r
         boUQRXZT+OeGhcsvQuvT5Hl4MiVrARSMnjOnGCCVSQubG/bh0YMORS+IGB2gcD3lsZff
         tnf13x6seKaQ1jc4ecaFI62OqFE+8Kff1mT+cTyk4iSimV1E8bzHG8GeYpygre4etzO+
         JVWZnjVDNz4tQ+9eSrcMsxDcyX8N+kx4tNNvAVxKfsyglZk1xXmyfedof9nPnBZSslpd
         alcA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:ironport-sdr:ironport-sdr;
        bh=IMleqz4aJbJaR2K5pP1UcK74tGIFlnNjCVezQPykUGw=;
        b=xKraNgeiO14H2187E11BTEorGElQiLqbKXxjBZCByEueZ2EkP7iQ+xqDj6wYa1nfvz
         jceMszIlXyeDhgWEyPsoX9B5veuwEmM181A3ydhII2ltMxqC8aAdHO91pFQ8+YYv/krP
         86Vqoh596kilmKv6J9N0dVOb+BrtxSHOBcBGzZyIKyg5hysytGO9BIfVlBbgNx1sKI9H
         Q8H/WB/kSurochz8R7fgiP1IfxGp3GYKwU6szf4SxCj9++o6kLtF3Wkhdt/EgvUe7Ae9
         1fKOBhF98GBNiGMYv8haiefkqgzpElXG3YSTnVdVXHOHD5dSGtDB5MzJUNIeRQN4/E6j
         LI3w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.31 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga06.intel.com (mga06.intel.com. [134.134.136.31])
        by gmr-mx.google.com with ESMTPS id m8si936705pjc.0.2020.07.04.04.49.24
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 04 Jul 2020 04:49:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.31 as permitted sender) client-ip=134.134.136.31;
IronPort-SDR: Gp+3/NzdOqOsdOYlJYFjqFR9BrJ+LF7RBORSftxg/c5/MsejH5W0m0y5flRq5vHdz0MRH4lw1e
 QDVAT41r88KQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9671"; a="208764245"
X-IronPort-AV: E=Sophos;i="5.75,311,1589266800"; 
   d="gz'50?scan'50,208,50";a="208764245"
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
  by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 04 Jul 2020 04:49:23 -0700
IronPort-SDR: U9PkLE0dNP+4XqyKIHg2EwugQQxDYOFHKo5KJknmMAN2SDPvDYsDPFKTykmiaHuWcQWaZRdZVZ
 jWzgt4yeGceg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,311,1589266800"; 
   d="gz'50?scan'50,208,50";a="482604599"
Received: from lkp-server01.sh.intel.com (HELO 6dc8ab148a5d) ([10.239.97.150])
  by fmsmga005.fm.intel.com with ESMTP; 04 Jul 2020 04:49:20 -0700
Received: from kbuild by 6dc8ab148a5d with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1jrgfX-0000f3-CS; Sat, 04 Jul 2020 11:49:19 +0000
Date: Sat, 4 Jul 2020 19:48:35 +0800
From: kernel test robot <lkp@intel.com>
To: David Hildenbrand <david@redhat.com>, linux-kernel@vger.kernel.org
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	linux-s390@vger.kernel.org, linux-mm@kvack.org,
	David Hildenbrand <david@redhat.com>,
	Heiko Carstens <heiko.carstens@de.ibm.com>,
	Vasily Gorbik <gor@linux.ibm.com>,
	Christian Borntraeger <borntraeger@de.ibm.com>,
	Gerald Schaefer <gerald.schaefer@de.ibm.com>
Subject: Re: [PATCH v1 4/9] s390/vmemmap: cleanup when vmemmap_populate()
 fails
Message-ID: <202007041941.JiYXPR8A%lkp@intel.com>
References: <20200703133917.39045-5-david@redhat.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="5mCyUwZo2JvN/JJP"
Content-Disposition: inline
In-Reply-To: <20200703133917.39045-5-david@redhat.com>
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


--5mCyUwZo2JvN/JJP
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi David,

I love your patch! Yet something to improve:

[auto build test ERROR on s390/features]
[also build test ERROR on next-20200703]
[cannot apply to linux/master kvms390/next linus/master v5.8-rc3]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use  as documented in
https://git-scm.com/docs/git-format-patch]

url:    https://github.com/0day-ci/linux/commits/David-Hildenbrand/s390-implement-and-optimize-vmemmap_free/20200703-214348
base:   https://git.kernel.org/pub/scm/linux/kernel/git/s390/linux.git features
config: s390-randconfig-r036-20200701 (attached as .config)
compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project ca464639a1c9dd3944eb055ffd2796e8c2e7639f)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install s390 cross compiling tool for clang build
        # apt-get install binutils-s390x-linux-gnu
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
   In file included from arch/s390/mm/vmem.c:7:
   In file included from include/linux/memblock.h:14:
   In file included from arch/s390/include/asm/dma.h:5:
   In file included from arch/s390/include/asm/io.h:72:
   include/asm-generic/io.h:490:45: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           val = __le32_to_cpu(__raw_readl(PCI_IOBASE + addr));
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
   In file included from arch/s390/mm/vmem.c:7:
   In file included from include/linux/memblock.h:14:
   In file included from arch/s390/include/asm/dma.h:5:
   In file included from arch/s390/include/asm/io.h:72:
   include/asm-generic/io.h:490:45: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           val = __le32_to_cpu(__raw_readl(PCI_IOBASE + addr));
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
   In file included from arch/s390/mm/vmem.c:7:
   In file included from include/linux/memblock.h:14:
   In file included from arch/s390/include/asm/dma.h:5:
   In file included from arch/s390/include/asm/io.h:72:
   include/asm-generic/io.h:490:45: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           val = __le32_to_cpu(__raw_readl(PCI_IOBASE + addr));
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
   In file included from arch/s390/mm/vmem.c:7:
   In file included from include/linux/memblock.h:14:
   In file included from arch/s390/include/asm/dma.h:5:
   In file included from arch/s390/include/asm/io.h:72:
   include/asm-generic/io.h:490:45: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           val = __le32_to_cpu(__raw_readl(PCI_IOBASE + addr));
                                           ~~~~~~~~~~ ^
   include/uapi/linux/byteorder/big_endian.h:34:59: note: expanded from macro '__le32_to_cpu'
   #define __le32_to_cpu(x) __swab32((__force __u32)(__le32)(x))
                                                             ^
   include/uapi/linux/swab.h:120:12: note: expanded from macro '__swab32'
           __fswab32(x))
                     ^
   In file included from arch/s390/mm/vmem.c:7:
   In file included from include/linux/memblock.h:14:
   In file included from arch/s390/include/asm/dma.h:5:
   In file included from arch/s390/include/asm/io.h:72:
   include/asm-generic/io.h:501:33: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           __raw_writeb(value, PCI_IOBASE + addr);
                               ~~~~~~~~~~ ^
   include/asm-generic/io.h:511:46: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           __raw_writew(cpu_to_le16(value), PCI_IOBASE + addr);
                                            ~~~~~~~~~~ ^
   include/asm-generic/io.h:521:46: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           __raw_writel(cpu_to_le32(value), PCI_IOBASE + addr);
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
>> arch/s390/mm/vmem.c:368:3: error: implicit declaration of function 'vmemmap_free' [-Werror,-Wimplicit-function-declaration]
                   vmemmap_free(start, end, altmap);
                   ^
>> arch/s390/mm/vmem.c:372:6: error: conflicting types for 'vmemmap_free'
   void vmemmap_free(unsigned long start, unsigned long end,
        ^
   arch/s390/mm/vmem.c:368:3: note: previous implicit declaration is here
                   vmemmap_free(start, end, altmap);
                   ^
   20 warnings and 2 errors generated.

vim +/vmemmap_free +368 arch/s390/mm/vmem.c

   280	
   281	/*
   282	 * Add a backed mem_map array to the virtual mem_map array.
   283	 */
   284	int __meminit vmemmap_populate(unsigned long start, unsigned long end, int node,
   285			struct vmem_altmap *altmap)
   286	{
   287		unsigned long pgt_prot, sgt_prot;
   288		unsigned long address = start;
   289		pgd_t *pg_dir;
   290		p4d_t *p4_dir;
   291		pud_t *pu_dir;
   292		pmd_t *pm_dir;
   293		pte_t *pt_dir;
   294		int ret = -ENOMEM;
   295	
   296		pgt_prot = pgprot_val(PAGE_KERNEL);
   297		sgt_prot = pgprot_val(SEGMENT_KERNEL);
   298		if (!MACHINE_HAS_NX) {
   299			pgt_prot &= ~_PAGE_NOEXEC;
   300			sgt_prot &= ~_SEGMENT_ENTRY_NOEXEC;
   301		}
   302		for (address = start; address < end;) {
   303			pg_dir = pgd_offset_k(address);
   304			if (pgd_none(*pg_dir)) {
   305				p4_dir = vmem_crst_alloc(_REGION2_ENTRY_EMPTY);
   306				if (!p4_dir)
   307					goto out;
   308				pgd_populate(&init_mm, pg_dir, p4_dir);
   309			}
   310	
   311			p4_dir = p4d_offset(pg_dir, address);
   312			if (p4d_none(*p4_dir)) {
   313				pu_dir = vmem_crst_alloc(_REGION3_ENTRY_EMPTY);
   314				if (!pu_dir)
   315					goto out;
   316				p4d_populate(&init_mm, p4_dir, pu_dir);
   317			}
   318	
   319			pu_dir = pud_offset(p4_dir, address);
   320			if (pud_none(*pu_dir)) {
   321				pm_dir = vmem_crst_alloc(_SEGMENT_ENTRY_EMPTY);
   322				if (!pm_dir)
   323					goto out;
   324				pud_populate(&init_mm, pu_dir, pm_dir);
   325			}
   326	
   327			pm_dir = pmd_offset(pu_dir, address);
   328			if (pmd_none(*pm_dir)) {
   329				/* Use 1MB frames for vmemmap if available. We always
   330				 * use large frames even if they are only partially
   331				 * used.
   332				 * Otherwise we would have also page tables since
   333				 * vmemmap_populate gets called for each section
   334				 * separately. */
   335				if (MACHINE_HAS_EDAT1) {
   336					void *new_page;
   337	
   338					new_page = vmemmap_alloc_block(PMD_SIZE, node);
   339					if (!new_page)
   340						goto out;
   341					pmd_val(*pm_dir) = __pa(new_page) | sgt_prot;
   342					address = (address + PMD_SIZE) & PMD_MASK;
   343					continue;
   344				}
   345				pt_dir = vmem_pte_alloc();
   346				if (!pt_dir)
   347					goto out;
   348				pmd_populate(&init_mm, pm_dir, pt_dir);
   349			} else if (pmd_large(*pm_dir)) {
   350				address = (address + PMD_SIZE) & PMD_MASK;
   351				continue;
   352			}
   353	
   354			pt_dir = pte_offset_kernel(pm_dir, address);
   355			if (pte_none(*pt_dir)) {
   356				void *new_page;
   357	
   358				new_page = vmemmap_alloc_block(PAGE_SIZE, node);
   359				if (!new_page)
   360					goto out;
   361				pte_val(*pt_dir) = __pa(new_page) | pgt_prot;
   362			}
   363			address += PAGE_SIZE;
   364		}
   365		ret = 0;
   366	out:
   367		if (ret)
 > 368			vmemmap_free(start, end, altmap);
   369		return ret;
   370	}
   371	
 > 372	void vmemmap_free(unsigned long start, unsigned long end,
   373			struct vmem_altmap *altmap)
   374	{
   375		remove_pagetable(start, end, false);
   376	}
   377	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202007041941.JiYXPR8A%25lkp%40intel.com.

--5mCyUwZo2JvN/JJP
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
SQA4593S2dPFencjr5r+Hz2ANEo75AEA

--5mCyUwZo2JvN/JJP--
