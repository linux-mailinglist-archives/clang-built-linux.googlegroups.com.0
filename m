Return-Path: <clang-built-linux+bncBC4LXIPCY4NRB4HA376QKGQENWJV7FQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13a.google.com (mail-il1-x13a.google.com [IPv6:2607:f8b0:4864:20::13a])
	by mail.lfdr.de (Postfix) with ESMTPS id 32EE62BB0A9
	for <lists+clang-built-linux@lfdr.de>; Fri, 20 Nov 2020 17:36:02 +0100 (CET)
Received: by mail-il1-x13a.google.com with SMTP id z18sf7881054ilb.12
        for <lists+clang-built-linux@lfdr.de>; Fri, 20 Nov 2020 08:36:02 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605890161; cv=pass;
        d=google.com; s=arc-20160816;
        b=wS7FCJzgBqrCJuzBOGxM6QrKL76/qvS9jOWJYFtKMWOCKxvOKYrtK5ntlhDfAv1U8w
         8g6zVQUa2nKZ2vKk55n8rsgpnVO+MyBch9OmFO5y6NW6eKJKLraeVThWwYHGBh9Gq/jr
         HW0DZpdngCqg7Ni3VpjT0/XxPFOV35JO1KFhFkEO1hjrzSBy9riV/9jL/qePi+QM1VeF
         R/b8j9SOBoGcIhT1nOnegut048NmQCreJBrv2wkEk/yfP4cjxdBDUEhBbc0j9fuoT9Yh
         O07Mw+OaoSFVoTKKSQTd1DdtNP5+7nN/yTcCjFGuNj0CDz27ZHhlq82aoxwu4N1Gd5wr
         7L9A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=qUoBUSoH345RsZ8drtMcNvlTsf3BvExy8LkHR3BiYM0=;
        b=JtsmZ0vUa+RY8T7aCbc+25sP3BzJqK0kDt8NZojDe2nACQTqK4A2mecUt5XS86JUrL
         r2/YrRNsGr8fWVfNQr6q4soBO7bGNYs1YwcXC9C9W0OqVX+bMcD5UlUA9C1bhVK5cX17
         D+sHel4egx/CNF6UP1EwOyVYKQORmifHpOcnl0JRrUqqz1WQCMeMqgwzer0gkNGfp+xc
         OVM0x76vBU75k9E0XgWrVNSvedJiLTb2smRtVt8lkhz1IDLrOfq+iG55vqUV7tIM4zXx
         WLGMNLG8ko/wPJ3DVm1lvL+TxQCFbWy2lT35SXm0137FEbFcx9oh6ADAH/VQm1HnoW94
         LzKw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.120 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=qUoBUSoH345RsZ8drtMcNvlTsf3BvExy8LkHR3BiYM0=;
        b=swIESk0U5y6KkLAH1YJfV35ankQAITdeDUGj3JHUPa+RmvdvdEb2Ezs4omkWA6PJ93
         mvdGaasT8q96Pj8DG5z+bbnJX4s6Kx0ggPdFMCuzUXM2M6tfV2ckTbrtxzLgbtUHGBgU
         67XweOLxB5NVpubaEBcy4/5NTedj8fSVRe0Mm0yojf/IczbXRHvLbjYDtS888dTc9KcQ
         AcVVivprt0S2Zc3NMNnWu3APNgwS32xFRK2LI3XhcOSO8fsWzdQTXrGovsy+BCnCsJO+
         TJk7+1EaPzXt95bFpnjXbTj64tAgEHShizFo3QmdPA2YK08Yd/TdTroooSIlezgFucyT
         Iwnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=qUoBUSoH345RsZ8drtMcNvlTsf3BvExy8LkHR3BiYM0=;
        b=NjFcqIaucuh0Gbh3vy2QsX2Gjrc0hGSy0VEId+d30TjbKE4DHyS2N41XZ+FfPa1jTI
         b8l1sZS5NNwZSmisBbtkw2J6bT3J0VULy6Xzpoc/qvENJ7NcnluhBYM8kCfTAukhSlqk
         1zk6puuiABCpVj0asihhiMd19SjGfSfzpL1AgBHmHsfOifxrMHajBsLftEduPJHi9uci
         7Jbvgu2RzkASrUykEQyo9JyFiDdhHXpNG2frZao2NU81C3tysqwgeTAuCx1UYXa2Pfn9
         DJq8O4UgWAeAwNz1xACskhy/L6oyry9ku/V2h287Gz0AG/xGGRir+wfVQx6FPhJKmlDq
         5+pg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530moRuKUusd3yZbT30CnAZ6HMZ0eWha+sQxEf9f0GZ7Mbljr76O
	NWxw6osX1fhfJhP3i6vQJx0=
X-Google-Smtp-Source: ABdhPJy0dxzMw5FxUtFYJcr4O7DI61PAtfc6KE3zrY9Qo+rWYjGto/jm7wScExQbSdtyZLo+4D8rHg==
X-Received: by 2002:a05:6602:14c5:: with SMTP id b5mr5598349iow.44.1605890161064;
        Fri, 20 Nov 2020 08:36:01 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6e02:1246:: with SMTP id j6ls1723464ilq.10.gmail; Fri,
 20 Nov 2020 08:36:00 -0800 (PST)
X-Received: by 2002:a92:999c:: with SMTP id t28mr27516141ilk.236.1605890160459;
        Fri, 20 Nov 2020 08:36:00 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605890160; cv=none;
        d=google.com; s=arc-20160816;
        b=Pu5Spdp9AcVaqE1K5/F7Bc92Ans/KYYHkNyM7HChcP9QHbmH5GtGq1dVrIjduDwV6a
         QOeFk6tG4/P+gS+l5H1TzL9x0osrcVGB/YEB8F+K5ypdwKbQkMEidOcBC0rql7bK+CVk
         Huagxz0M3wubgZbq7ti1iIolZcpCK7cHhKfaHBNrFGosZDivmrvI3pbyRWaqXnRn+LEv
         8G+ZILoRdXGS1TBJipyvMpYWu4mH35TPb/MzHd5sHRklBPtm7i8jEWQtDfq5oJ7+lO/H
         QIJwAeDEwg8wg+i7g4iJUBIxLPi9iDDO4UhjZ+oTHdDMJ+cb30ui/PPOP1DUKity1nKI
         YLtg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=mDOrSjvjJXjc9KJMszL3DRF5EhJ2SmIenFUr36FKxVE=;
        b=0eGgtzGwpQsXcVfquWANA6XuiLzHDQ1rLvkfoCzQrdhC54cUboXU+nb97BDjdGHkGi
         va/0/kxh5rZacZbbIPG09EYOz0vhPX5/TMH7BnTE838NbXHJF4M0NQoItjwsR6liMmv1
         dNvk5T9FlRJNEKpAmRuzQYYrknXvN8JrtWw9K6u4nG+JN1zi6A2SqmjIVIN5sf7ZTWgx
         oIP5Ge+ZajUyo+JeqIzEMpnb6fSOGoEWQOKB2rTps9p5Wlc7JkSk1Ll+RrdOGMhPqVbI
         /hiLwJQN8bRHFZZDcqohVn3HVQ7hsBgfLuGyjqqf2LdwtqdwWHsuMiO/48HeajbvR8y/
         zLvQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.120 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga04.intel.com (mga04.intel.com. [192.55.52.120])
        by gmr-mx.google.com with ESMTPS id h8si205311iog.4.2020.11.20.08.36.00
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 20 Nov 2020 08:36:00 -0800 (PST)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.120 as permitted sender) client-ip=192.55.52.120;
IronPort-SDR: B7tRi8U4W8cVJAA8Hkz8C+ZZnVi0BUdIz0FfIUi130w1aJ3aiy3UOK3dTtxpu1TUjALFaPN4wl
 nEXqaxk4m2kQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9810"; a="168930258"
X-IronPort-AV: E=Sophos;i="5.78,357,1599548400"; 
   d="gz'50?scan'50,208,50";a="168930258"
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
  by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 20 Nov 2020 08:35:56 -0800
IronPort-SDR: 6LuAMc4ildlipg7NsfpTnFmNF0h+AfDQwiMYny1Wpj/H32S2Vt3mbmCop76hMkc+0B1YbjQWYg
 xTH/VFc9PsaQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,357,1599548400"; 
   d="gz'50?scan'50,208,50";a="477282084"
Received: from lkp-server01.sh.intel.com (HELO 00bc34107a07) ([10.239.97.150])
  by orsmga004.jf.intel.com with ESMTP; 20 Nov 2020 08:35:54 -0800
Received: from kbuild by 00bc34107a07 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1kg9O5-00001i-J5; Fri, 20 Nov 2020 16:35:53 +0000
Date: Sat, 21 Nov 2020 00:35:15 +0800
From: kernel test robot <lkp@intel.com>
To: David Howells <dhowells@redhat.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com
Subject: [dhowells-fs:fscache-iter 48/76] fs/fscache/cache_init.c:84:8:
 error: implicit declaration of function 'fscache_proc_caching_init'
Message-ID: <202011210013.rhXfVFZd-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="x+6KMIRAuhnl3hBn"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 192.55.52.120 as permitted
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


--x+6KMIRAuhnl3hBn
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/dhowells/linux-fs.git fscache-iter
head:   0c2be522212c09d559c835fa6da546a2d4606069
commit: 61595a1c19eaf38fbe6365131205d4a17dcf89c2 [48/76] fscache: Always create /proc/fs/fscache/stats if configured
config: s390-randconfig-r026-20201120 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project 3ded927cf80ac519f9f9c4664fef08787f7c537d)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install s390 cross compiling tool for clang build
        # apt-get install binutils-s390x-linux-gnu
        # https://git.kernel.org/pub/scm/linux/kernel/git/dhowells/linux-fs.git/commit/?id=61595a1c19eaf38fbe6365131205d4a17dcf89c2
        git remote add dhowells-fs https://git.kernel.org/pub/scm/linux/kernel/git/dhowells/linux-fs.git
        git fetch --no-tags dhowells-fs fscache-iter
        git checkout 61595a1c19eaf38fbe6365131205d4a17dcf89c2
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=s390 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

                              ^
   include/uapi/linux/swab.h:20:12: note: expanded from macro '___constant_swab32'
           (((__u32)(x) & (__u32)0x0000ff00UL) <<  8) |            \
                     ^
   In file included from fs/fscache/cache_init.c:16:
   In file included from fs/fscache/internal.h:28:
   In file included from include/linux/fscache-cache.h:17:
   In file included from include/linux/fscache.h:22:
   In file included from include/linux/writeback.h:14:
   In file included from include/linux/blk-cgroup.h:23:
   In file included from include/linux/blkdev.h:26:
   In file included from include/linux/scatterlist.h:9:
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
   In file included from fs/fscache/cache_init.c:16:
   In file included from fs/fscache/internal.h:28:
   In file included from include/linux/fscache-cache.h:17:
   In file included from include/linux/fscache.h:22:
   In file included from include/linux/writeback.h:14:
   In file included from include/linux/blk-cgroup.h:23:
   In file included from include/linux/blkdev.h:26:
   In file included from include/linux/scatterlist.h:9:
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
   In file included from fs/fscache/cache_init.c:16:
   In file included from fs/fscache/internal.h:28:
   In file included from include/linux/fscache-cache.h:17:
   In file included from include/linux/fscache.h:22:
   In file included from include/linux/writeback.h:14:
   In file included from include/linux/blk-cgroup.h:23:
   In file included from include/linux/blkdev.h:26:
   In file included from include/linux/scatterlist.h:9:
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
   In file included from fs/fscache/cache_init.c:16:
   In file included from fs/fscache/internal.h:28:
   In file included from include/linux/fscache-cache.h:17:
   In file included from include/linux/fscache.h:22:
   In file included from include/linux/writeback.h:14:
   In file included from include/linux/blk-cgroup.h:23:
   In file included from include/linux/blkdev.h:26:
   In file included from include/linux/scatterlist.h:9:
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
>> fs/fscache/cache_init.c:84:8: error: implicit declaration of function 'fscache_proc_caching_init' [-Werror,-Wimplicit-function-declaration]
           ret = fscache_proc_caching_init();
                 ^
   20 warnings and 1 error generated.

vim +/fscache_proc_caching_init +84 fs/fscache/cache_init.c

    62	
    63	/*
    64	 * Initialise the caching code.
    65	 */
    66	int __init fscache_init_caching(void)
    67	{
    68		int ret;
    69	
    70		fscache_op_max_active =
    71			clamp_val(fscache_object_max_active / 2,
    72				  fscache_op_max_active, WQ_UNBOUND_MAX_ACTIVE);
    73	
    74		ret = -ENOMEM;
    75		fscache_op_wq = alloc_workqueue("fscache_operation", WQ_UNBOUND,
    76						fscache_op_max_active);
    77		if (!fscache_op_wq)
    78			goto error_op_wq;
    79	
    80		ret = fscache_init_dispatchers();
    81		if (ret < 0)
    82			goto error_dispatchers;
    83	
  > 84		ret = fscache_proc_caching_init();
    85		if (ret < 0)
    86			goto error_proc;
    87	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202011210013.rhXfVFZd-lkp%40intel.com.

--x+6KMIRAuhnl3hBn
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--x+6KMIRAuhnl3hBn--
