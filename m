Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBQ4GQ2BAMGQEC3HA6VA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3a.google.com (mail-qv1-xf3a.google.com [IPv6:2607:f8b0:4864:20::f3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 229F632DEBD
	for <lists+clang-built-linux@lfdr.de>; Fri,  5 Mar 2021 02:03:00 +0100 (CET)
Received: by mail-qv1-xf3a.google.com with SMTP id m9sf171609qvu.11
        for <lists+clang-built-linux@lfdr.de>; Thu, 04 Mar 2021 17:03:00 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614906179; cv=pass;
        d=google.com; s=arc-20160816;
        b=RoTAHkzoswdG+uOnE2Ut2Ge3JEyN4YHDx5iDlMhqv9GZ20ONye/smOy/xQLO8nA3h1
         PW2ISHoYm3Ertlu971GNLAyCCOFDRF33aLcminXc3uqAyqqzdQ7TpLwQyZNEphHWYbuo
         smONJwCnPLTq3Dhsd7UmkjrJ2yOvhQOPjgbsof4vfGAc9YCWNzU2Jb9FYKNWIQp1dj11
         Glks6aETyF4ufha86xzJxeKvkvxbhx8RhlPWJQb7Og9qxCoiO77Mk0RdYLxCVlPVbmHe
         DdQqfWqkROOf+Xb2rKcl4dI0DTn5+3dev574Y5N+ixiSKqkeuL9xnV39nTIczrUbHK3R
         wVeQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=APilHJNOsbYeuiX5Zg/VkWnGrorBGnvo8Dh/hfKseL4=;
        b=FDlga6DXsGRajTS+4r2FEnIBQMZEURV/XMwslFx3rOYg+ECmdDUp3oOujbHApeGcs3
         //q6FFfZOpPRlDCzXh5ObuD0zPft+UUcGujEM5HgLM2q47hJHiJiD1FLl6jL4QPEzJqA
         G7MqTe6fJix0FDDSasAuSZEgr3Zb3+HxzsQwbcYFDadF2QaCpTuXWRWhNNrf8AzEXcWY
         j8ZsnpiNxOcEx92zsDiBN+1MlWG9+Hswp29/HaTirwOy/o5SwgFZeORvxAiSFulx+QIS
         1+Ulzw77lgaRC6TfS+9XnZ7t9+cZ6iXK1jhsFDhKNb3+N0exWKS3JMxLkfA858vvtjJF
         gihw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.126 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=APilHJNOsbYeuiX5Zg/VkWnGrorBGnvo8Dh/hfKseL4=;
        b=M6eJ3k6oPD1y/R/juVZZqwQ69k68fgOgVUh9QYyVa7Vv6jJmbTD+wi1GhxjR6xhaVS
         tHIs6MePZaUrFJzIT7n/y+tQhFzhmUMkHyD7VhoFJiT1hLMeqxgIXkt/82M2CZi2S8hB
         JRQxDGFd1H6wM395mYiqT8PJv7+g63VuF6z0T2RgVpIHv7Y5MKZ8z1HFPMyrULXpJPqV
         dGdVTWu1FEQk28DfIoyExt23aW6xBX9rWSg6ofD8gNdTRhk9TpWnMLF1QejzB/SE83SN
         NfUdxvePJVix1STb8xl1rfFtVt2uUxYTFc4mO4+A0r+PWmWZyXIDs1fqR/zZ+ZftL74S
         wg7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=APilHJNOsbYeuiX5Zg/VkWnGrorBGnvo8Dh/hfKseL4=;
        b=JbFHQN14k/8XH8pHXC8NV4FVG6lmAygHTsWWH101XzH9jSGTbL82o6fM0A6gF+h+iF
         CCzv0/RXfJdXX0pvzyIpts+CkYoL6y6010sE9Iw9cGmfFcs8rCzL5cox8tFtcnjPyZeB
         qGr7VHx6KMOPscMysU8U9FVUxATHrO2xFG6FF/VlVQiGsOtJOsM1WBPZJTHKpUC5C+gT
         pdeiYjp9f5Rh5yq6SJwb9JAYHy5K5IpCNXssZWm0eC3v7Ak/664p1boKNAIRttp1J8DT
         5j+ey6la9G1ko32ddZXizhSkoNr+OCbOMrntzBUHqiX0xN9pdakvPvKepc91hqURC8z8
         VMdQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530a8NhOvTlhpQHkNzk4rY28RQn5g4jZ8zPDcqO1kMGpZAL5lKn5
	NpqsADi2dw18U0kiHTFkLA4=
X-Google-Smtp-Source: ABdhPJz0D4lWtZLawGH7uwgVGYw7ZEt+x2qxM36FiXAlJiG06xQQFPCNPzqa+zzZe/8d2xNL3KNwsw==
X-Received: by 2002:a37:4743:: with SMTP id u64mr7024152qka.350.1614906179094;
        Thu, 04 Mar 2021 17:02:59 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:991:: with SMTP id x17ls4098826qkx.2.gmail; Thu, 04
 Mar 2021 17:02:58 -0800 (PST)
X-Received: by 2002:a37:7c8:: with SMTP id 191mr6972524qkh.53.1614906178508;
        Thu, 04 Mar 2021 17:02:58 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614906178; cv=none;
        d=google.com; s=arc-20160816;
        b=SB3AiZw5Gti7of317l5Zy49sa7QflNyJ9ZTWB0V1vxI0COy0OArXyikM+KJPN3fyo5
         KRaKl+4QD8Bvba14nZAp4pyr6nrCvRpGSbtvIxtwEJU7oIiMGEhntr0R7f6sZyFNZaCj
         ApicwXHIrogJG8aia3nchuVldbOY5C9V9pI3J8fS4xARjeznZB8wF6sQVgwBC9W4/8i5
         veIZxUvTE1LFbEf+E1lCbYCgXlmrcbqdph24ACHveGqBxvNZz5BTULrEC0/Km+j3ZGAf
         BFQzQ2dhhEPhMbMpYZgmkmWokZLBklEZDtI2ve6Tpd5/muUoNG7GLFLoU5p2PPNNVqPi
         1APQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=vxHdZgzI/IF/fr9nnEyEHmAmJRIIIxx2C6/k/vLsbzo=;
        b=enJpE62B0xUzCJCS+UQ0/IlzzyDAi5OugHOxK1D471QspBcDh7lR06RuJqSVUf9vx1
         FJkW7wl6zdp9erbLGIfCgKyeM4a1NNa8YM072Da8wJCav82+PCii8Wiac1fBmxUVdnW+
         QYs7TVwykgydssoC4GfU/FU8BRIxA0Q0p+PPJr+URIQUTqm5lu2twkWpSKkOYLaQrDW9
         wy74Vzeaw/iVqUYGmKH3DfefRz4pWbMVDFrhGLMIg8U2CxmPcEXYcXwFzZQKV36Ehzrl
         w7iPok9kbOZ6uhoBw28lLv1liu7UU8VYiGp+luA7Sh1OtJDREc7LyOTIJ/2cTwt+wWnm
         W53A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.126 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga18.intel.com (mga18.intel.com. [134.134.136.126])
        by gmr-mx.google.com with ESMTPS id m10si46383qkn.7.2021.03.04.17.02.58
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 04 Mar 2021 17:02:58 -0800 (PST)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.126 as permitted sender) client-ip=134.134.136.126;
IronPort-SDR: yhHH2BQYsOaRxkPcK5BWB8zoAD9LD/akA5zI9ViX8JMjqCwm82QD4gpjXMgWfwzYCDupBekHig
 Q6yBk/Xqcw4w==
X-IronPort-AV: E=McAfee;i="6000,8403,9913"; a="175167347"
X-IronPort-AV: E=Sophos;i="5.81,224,1610438400"; 
   d="gz'50?scan'50,208,50";a="175167347"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
  by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 04 Mar 2021 17:02:55 -0800
IronPort-SDR: v8h9MjGJKsi5WiOk80rIXjUxttUAJMEZrpkq4ZPaNXgVSqKK4Erw9nxmunkTW2vzyTo7zZn7ri
 K/lHwiuc+jMg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,224,1610438400"; 
   d="gz'50?scan'50,208,50";a="600892631"
Received: from lkp-server02.sh.intel.com (HELO 2482ff9f8ac0) ([10.239.97.151])
  by fmsmga005.fm.intel.com with ESMTP; 04 Mar 2021 17:02:53 -0800
Received: from kbuild by 2482ff9f8ac0 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1lHyrk-0002Uj-MI; Fri, 05 Mar 2021 01:02:52 +0000
Date: Fri, 5 Mar 2021 09:02:16 +0800
From: kernel test robot <lkp@intel.com>
To: Christoph Hellwig <hch@lst.de>
Cc: clang-built-linux@googlegroups.com, linux-kernel@vger.kernel.org,
	"Matthew Wilcox (Oracle)" <willy@infradead.org>,
	Kent Overstreet <kmo@daterainc.com>,
	Andrew Morton <akpm@linux-foundation.org>,
	Linux Memory Management List <linux-mm@kvack.org>
Subject: mm/filemap.c:2409:9: warning: stack frame size of 2704 bytes in
 function 'filemap_read'
Message-ID: <202103050911.Grw3NW2U-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="KsGdsel6WgEHnImy"
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


--KsGdsel6WgEHnImy
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
head:   3cb60ee6323968b694208c4cbd56a7176396e931
commit: 87fa0f3eb267eed966ee194907bc15376c1b758f mm/filemap: rename generic_file_buffered_read to filemap_read
date:   8 days ago
config: powerpc-randconfig-r023-20210304 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project eec7f8f7b1226be422a76542cb403d02538f453a)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install powerpc cross compiling tool for clang build
        # apt-get install binutils-powerpc-linux-gnu
        # https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=87fa0f3eb267eed966ee194907bc15376c1b758f
        git remote add linus https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
        git fetch --no-tags linus master
        git checkout 87fa0f3eb267eed966ee194907bc15376c1b758f
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=powerpc 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

   In file included from mm/filemap.c:20:
   In file included from include/linux/kernel_stat.h:9:
   In file included from include/linux/interrupt.h:11:
   In file included from include/linux/hardirq.h:10:
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
   <scratch space>:224:1: note: expanded from here
   __do_insw
   ^
   arch/powerpc/include/asm/io.h:557:56: note: expanded from macro '__do_insw'
   #define __do_insw(p, b, n)      readsw((PCI_IO_ADDR)_IO_BASE+(p), (b), (n))
                                          ~~~~~~~~~~~~~~~~~~~~~^
   In file included from mm/filemap.c:20:
   In file included from include/linux/kernel_stat.h:9:
   In file included from include/linux/interrupt.h:11:
   In file included from include/linux/hardirq.h:10:
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
   <scratch space>:228:1: note: expanded from here
   __do_insl
   ^
   arch/powerpc/include/asm/io.h:558:56: note: expanded from macro '__do_insl'
   #define __do_insl(p, b, n)      readsl((PCI_IO_ADDR)_IO_BASE+(p), (b), (n))
                                          ~~~~~~~~~~~~~~~~~~~~~^
   In file included from mm/filemap.c:20:
   In file included from include/linux/kernel_stat.h:9:
   In file included from include/linux/interrupt.h:11:
   In file included from include/linux/hardirq.h:10:
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
   <scratch space>:232:1: note: expanded from here
   __do_outsb
   ^
   arch/powerpc/include/asm/io.h:559:58: note: expanded from macro '__do_outsb'
   #define __do_outsb(p, b, n)     writesb((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
                                           ~~~~~~~~~~~~~~~~~~~~~^
   In file included from mm/filemap.c:20:
   In file included from include/linux/kernel_stat.h:9:
   In file included from include/linux/interrupt.h:11:
   In file included from include/linux/hardirq.h:10:
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
   <scratch space>:236:1: note: expanded from here
   __do_outsw
   ^
   arch/powerpc/include/asm/io.h:560:58: note: expanded from macro '__do_outsw'
   #define __do_outsw(p, b, n)     writesw((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
                                           ~~~~~~~~~~~~~~~~~~~~~^
   In file included from mm/filemap.c:20:
   In file included from include/linux/kernel_stat.h:9:
   In file included from include/linux/interrupt.h:11:
   In file included from include/linux/hardirq.h:10:
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
   <scratch space>:240:1: note: expanded from here
   __do_outsl
   ^
   arch/powerpc/include/asm/io.h:561:58: note: expanded from macro '__do_outsl'
   #define __do_outsl(p, b, n)     writesl((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
                                           ~~~~~~~~~~~~~~~~~~~~~^
>> mm/filemap.c:2409:9: warning: stack frame size of 2704 bytes in function 'filemap_read' [-Wframe-larger-than=]
   ssize_t filemap_read(struct kiocb *iocb, struct iov_iter *iter,
           ^
   13 warnings generated.


vim +/filemap_read +2409 mm/filemap.c

  2395	
  2396	/**
  2397	 * filemap_read - Read data from the page cache.
  2398	 * @iocb: The iocb to read.
  2399	 * @iter: Destination for the data.
  2400	 * @already_read: Number of bytes already read by the caller.
  2401	 *
  2402	 * Copies data from the page cache.  If the data is not currently present,
  2403	 * uses the readahead and readpage address_space operations to fetch it.
  2404	 *
  2405	 * Return: Total number of bytes copied, including those already read by
  2406	 * the caller.  If an error happens before any bytes are copied, returns
  2407	 * a negative error number.
  2408	 */
> 2409	ssize_t filemap_read(struct kiocb *iocb, struct iov_iter *iter,
  2410			ssize_t already_read)
  2411	{
  2412		struct file *filp = iocb->ki_filp;
  2413		struct file_ra_state *ra = &filp->f_ra;
  2414		struct address_space *mapping = filp->f_mapping;
  2415		struct inode *inode = mapping->host;
  2416		struct pagevec pvec;
  2417		int i, error = 0;
  2418		bool writably_mapped;
  2419		loff_t isize, end_offset;
  2420	
  2421		if (unlikely(iocb->ki_pos >= inode->i_sb->s_maxbytes))
  2422			return 0;
  2423		if (unlikely(!iov_iter_count(iter)))
  2424			return 0;
  2425	
  2426		iov_iter_truncate(iter, inode->i_sb->s_maxbytes);
  2427		pagevec_init(&pvec);
  2428	
  2429		do {
  2430			cond_resched();
  2431	
  2432			/*
  2433			 * If we've already successfully copied some data, then we
  2434			 * can no longer safely return -EIOCBQUEUED. Hence mark
  2435			 * an async read NOWAIT at that point.
  2436			 */
  2437			if ((iocb->ki_flags & IOCB_WAITQ) && already_read)
  2438				iocb->ki_flags |= IOCB_NOWAIT;
  2439	
  2440			error = filemap_get_pages(iocb, iter, &pvec);
  2441			if (error < 0)
  2442				break;
  2443	
  2444			/*
  2445			 * i_size must be checked after we know the pages are Uptodate.
  2446			 *
  2447			 * Checking i_size after the check allows us to calculate
  2448			 * the correct value for "nr", which means the zero-filled
  2449			 * part of the page is not copied back to userspace (unless
  2450			 * another truncate extends the file - this is desired though).
  2451			 */
  2452			isize = i_size_read(inode);
  2453			if (unlikely(iocb->ki_pos >= isize))
  2454				goto put_pages;
  2455			end_offset = min_t(loff_t, isize, iocb->ki_pos + iter->count);
  2456	
  2457			/*
  2458			 * Once we start copying data, we don't want to be touching any
  2459			 * cachelines that might be contended:
  2460			 */
  2461			writably_mapped = mapping_writably_mapped(mapping);
  2462	
  2463			/*
  2464			 * When a sequential read accesses a page several times, only
  2465			 * mark it as accessed the first time.
  2466			 */
  2467			if (iocb->ki_pos >> PAGE_SHIFT !=
  2468			    ra->prev_pos >> PAGE_SHIFT)
  2469				mark_page_accessed(pvec.pages[0]);
  2470	
  2471			for (i = 0; i < pagevec_count(&pvec); i++) {
  2472				struct page *page = pvec.pages[i];
  2473				size_t page_size = thp_size(page);
  2474				size_t offset = iocb->ki_pos & (page_size - 1);
  2475				size_t bytes = min_t(loff_t, end_offset - iocb->ki_pos,
  2476						     page_size - offset);
  2477				size_t copied;
  2478	
  2479				if (end_offset < page_offset(page))
  2480					break;
  2481				if (i > 0)
  2482					mark_page_accessed(page);
  2483				/*
  2484				 * If users can be writing to this page using arbitrary
  2485				 * virtual addresses, take care about potential aliasing
  2486				 * before reading the page on the kernel side.
  2487				 */
  2488				if (writably_mapped) {
  2489					int j;
  2490	
  2491					for (j = 0; j < thp_nr_pages(page); j++)
  2492						flush_dcache_page(page + j);
  2493				}
  2494	
  2495				copied = copy_page_to_iter(page, offset, bytes, iter);
  2496	
  2497				already_read += copied;
  2498				iocb->ki_pos += copied;
  2499				ra->prev_pos = iocb->ki_pos;
  2500	
  2501				if (copied < bytes) {
  2502					error = -EFAULT;
  2503					break;
  2504				}
  2505			}
  2506	put_pages:
  2507			for (i = 0; i < pagevec_count(&pvec); i++)
  2508				put_page(pvec.pages[i]);
  2509			pagevec_reinit(&pvec);
  2510		} while (iov_iter_count(iter) && iocb->ki_pos < isize && !error);
  2511	
  2512		file_accessed(filp);
  2513	
  2514		return already_read ? already_read : error;
  2515	}
  2516	EXPORT_SYMBOL_GPL(filemap_read);
  2517	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202103050911.Grw3NW2U-lkp%40intel.com.

--KsGdsel6WgEHnImy
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
0jhaRcauLKSF7+X+ARB33DWEewEA

--KsGdsel6WgEHnImy--
