Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBIG65WBQMGQE3L3GSQY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3e.google.com (mail-io1-xd3e.google.com [IPv6:2607:f8b0:4864:20::d3e])
	by mail.lfdr.de (Postfix) with ESMTPS id A523B3632A6
	for <lists+clang-built-linux@lfdr.de>; Sun, 18 Apr 2021 01:28:33 +0200 (CEST)
Received: by mail-io1-xd3e.google.com with SMTP id p8-20020a5d9c880000b02903dc877cd48dsf6886602iop.13
        for <lists+clang-built-linux@lfdr.de>; Sat, 17 Apr 2021 16:28:33 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1618702112; cv=pass;
        d=google.com; s=arc-20160816;
        b=DIzN+4aUj+P+kdKIppDZe8u+8mG7aTuik7Nj7zJlXmTEhHqT66fHsKTopplF+OQ2dz
         LJRPdP0AHcBfusUTKeO9WtvcFnwgIM5dJmkRnNgrpbsEOkL8OHhPwgjqsa6GUhXdJ3/n
         3InEFLh0yMBThtQctIJM6Kbzw90mjUDJxnkJ29n1a4aM36KOEOINH/4s4X2QlCEqwScH
         WJWDhyBpd8zarvMPWJKWTHulIu6a+rH9rmn8JaWBzBJzfxAuWKBLvySzDO883fbbzyxR
         zNS0ze6MHC2IjsPyM7W2rruaBJ96LyX6gU2KKVX/E/YLRX2FdmICsW/lloxBpdaiOcH3
         ywQA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=ge+ovLoEJ47IL6g1YbEDbi+SHU7oTOBZPmQcLfs7atw=;
        b=TU2NhyyxzSmxe2InzX4xhQvBXrlaaJ+o4/8sjWNvydsOrpqsjv0hH9fPGZZm/BMO/O
         ZZl72ci90XdNyDnIggJWLz5mhcvYsesykGcVH1kQMqwWpH4x3KVfqRqaUu6FI9IcHG5N
         3aesbIIaOf3x6NZNJSKcyYIsdV8HSe4BFInbhqQMRo0vvZgvJi6fe1qQakgeIRO/RVNT
         JS68NJI7qplyi0SUvkkj6UZRXYMkqb+iSoy43czjTUgYpFd34TWHnbtTucyU0eqrXjuI
         poRXzD3h1uvg7nD4jNkfDg6/63bir4DkOgrfKlmQuVFa38THoYpsV4HVgA0QJKirYL8T
         hemQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.126 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ge+ovLoEJ47IL6g1YbEDbi+SHU7oTOBZPmQcLfs7atw=;
        b=p8yCuHWldqyNMFd+7HOWyyM2WOiTNJNpZSdZSZ0XUg+ASjwVrfJQX11PtBB2lcyD8d
         T7/INyc4gs7XKn0KnC6kXuBV9RYSVZgkduwcglljsRIEU50s6AVoGxEuzP0C8FyMwJWL
         LMyw29loK6Aa07ZPdvZ2rxRnuku/qHV4nsJ1Jqw5v0jRtBtBCKsiI0K1W8TYJYUgSFji
         EYz4q690zEvcCSAi83emN7Xw1OQ+UT9cDhgsQq7QUN8LDQ0yBnnPJtHscKWrpkAUD9jS
         NybQnJR57qxLg8vFYuJnFHZCMsWBPjVLkOienan83cQWdb+zpqZlciZzRpZNUVpXdvWl
         H5Eg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=ge+ovLoEJ47IL6g1YbEDbi+SHU7oTOBZPmQcLfs7atw=;
        b=sIiFjiefUqC83wSZV2GiIaqAwk3x4w2QfCabazUb11hgg5PO9QMdm8Qb9KdIxoF6hq
         9dcDyazqvpTk7uahr34+sAZwPmneJVyyel9tfK/i4MKwsdASCpX4u9G7OSwX1t7LrHy9
         LpHnE8MpEezMK1rhFgc+DmJCxdwLfxYMHWfSQyJRBilfIdnWKd8z8wXtM6Kl7tuOHgY1
         DY227jyZwohm+gYolVNkmM9XCm9LGht/KVUtUxkkCNmTIiObjXsgrCOaDeozlH0TqcXk
         Iq+sTw/fcJAaUb4KoTAW2PzXzrOEVj1rj8iCamJaautMfteKjf0X1vw4Wu5t/eLYAg3W
         rh6Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532Zkgm4i+oGSABj3ODlFmteOOKh3K4usyRi8sDrH9ZBYOYw/nYC
	QCN/QnJvft9YjXiZ8CjpSmU=
X-Google-Smtp-Source: ABdhPJwWeWG6LF3emk64ybvay1pOc9eoA27vEm8MnV75s3+rD6zpcJhxtVFU+UK1Gm4WWunfDR+nOg==
X-Received: by 2002:a02:77d6:: with SMTP id g205mr10091898jac.44.1618702112106;
        Sat, 17 Apr 2021 16:28:32 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a6b:b2d8:: with SMTP id b207ls367238iof.11.gmail; Sat, 17
 Apr 2021 16:28:31 -0700 (PDT)
X-Received: by 2002:a6b:14c4:: with SMTP id 187mr360790iou.134.1618702111707;
        Sat, 17 Apr 2021 16:28:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618702111; cv=none;
        d=google.com; s=arc-20160816;
        b=Ypf+ad5ZnlQCPqnLFh00b+kXcupF7r68Wm/2/PvqIwqdqUcpWtAUFNjZMzWiV5Ssxg
         UKjfI2QwAWwIxscFBambUBO9lksRoMoVZoBOh30nKG1DLc0rc6zkUpih0kGjB4T+28uh
         MsMpq+EOjdEryAFzxH/BabXChHCf8hpKZbgA0dPIVzMFUMBx9hsBfU3D1cyJs2ItNa75
         31tlXUMCyAtcDP0RxThfhoYB6/0PdvEuqzfKyFxodNk/7N2vuBhbIhm2ljMMU+sK/HIN
         3lOYhHScB6t+kzoVM2Ucdb/PyClE9JACKZYnm84beLDDDZpsrQgiDt0nI2poxFCmpbea
         iH1A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=WI+ClO3+zOvuV9r6fskqOJtza1U4rRbQZu5u6Gyi2rY=;
        b=P+IB9zc8NEAod9Mofm0vmN5nlgXntfSHzOpOCueTno3/9MnfKuQsa0MOGE0NmPF0+v
         20nwaDrvwlV0LBa8YEt788m2E7VdWUY7rxzP7IfrG4vMqnPEZvqkXfxRy2solIw8TNIG
         3rsCU88DDNHLZznE0MYBiJqllx02H8YGeZsNWhk2/lTqU1uNZ/t/YnCnynKu6OvwjdJB
         LAIHdqDZwi26FIJQuaCWPAgteGyrLYv3zyedJGt/aXIxFKzfHUIQGpPDj+qw0tX6acGS
         nKIc6sW/5A0THcnjhogytxk6vUXIvDXmNOEJU/xw3tek/jL7NbGtZvEXgk722m9up8iP
         v8Lw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.126 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga18.intel.com (mga18.intel.com. [134.134.136.126])
        by gmr-mx.google.com with ESMTPS id y10si678633ilm.4.2021.04.17.16.28.31
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 17 Apr 2021 16:28:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.126 as permitted sender) client-ip=134.134.136.126;
IronPort-SDR: +iLV9Pis0HNMbEJQVpnSSNRzsLs98OAVWTGP1m58A8bDEI76Xo8YdMu3Bk6NpPY0m8ccFap3Qi
 cDCrV6cTt4OQ==
X-IronPort-AV: E=McAfee;i="6200,9189,9957"; a="182685931"
X-IronPort-AV: E=Sophos;i="5.82,230,1613462400"; 
   d="gz'50?scan'50,208,50";a="182685931"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
  by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 17 Apr 2021 16:28:30 -0700
IronPort-SDR: Jek1+FUvUbCBvsZa7N4jAMhF32cOM6daP09bSSM/Que0gYqKy+cx7etHXk86M3OemWltg/PWh4
 AHiddlOdb72g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,230,1613462400"; 
   d="gz'50?scan'50,208,50";a="383377647"
Received: from lkp-server01.sh.intel.com (HELO a48ff7ddd223) ([10.239.97.150])
  by orsmga003.jf.intel.com with ESMTP; 17 Apr 2021 16:28:28 -0700
Received: from kbuild by a48ff7ddd223 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1lXuMV-00014b-De; Sat, 17 Apr 2021 23:28:27 +0000
Date: Sun, 18 Apr 2021 07:27:59 +0800
From: kernel test robot <lkp@intel.com>
To: Christoph Hellwig <hch@lst.de>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org, Jens Axboe <axboe@kernel.dk>
Subject: drivers/md/dm-log-writes.c:452:12: warning: stack frame size of 1184
 bytes in function 'log_writes_kthread'
Message-ID: <202104180756.KpnEknST-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="3MwIy2ne0vdjdPXF"
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


--3MwIy2ne0vdjdPXF
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
head:   194cf4825638256e9afe1d360831aa5379b3517a
commit: 309dca309fc39a9e3c31b916393b74bd174fd74e block: store a block_device pointer in struct bio
date:   3 months ago
config: powerpc64-randconfig-r032-20210418 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project f549176ad976caa3e19edd036df9a7e12770af7c)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install powerpc64 cross compiling tool for clang build
        # apt-get install binutils-powerpc64-linux-gnu
        # https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=309dca309fc39a9e3c31b916393b74bd174fd74e
        git remote add linus https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
        git fetch --no-tags linus master
        git checkout 309dca309fc39a9e3c31b916393b74bd174fd74e
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross W=1 ARCH=powerpc64 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

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
   <scratch space>:116:1: note: expanded from here
   __do_insw
   ^
   arch/powerpc/include/asm/io.h:557:56: note: expanded from macro '__do_insw'
   #define __do_insw(p, b, n)      readsw((PCI_IO_ADDR)_IO_BASE+(p), (b), (n))
                                          ~~~~~~~~~~~~~~~~~~~~~^
   In file included from drivers/md/dm-log-writes.c:7:
   In file included from include/linux/device-mapper.h:11:
   In file included from include/linux/bio.h:8:
   In file included from include/linux/highmem.h:10:
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
   <scratch space>:118:1: note: expanded from here
   __do_insl
   ^
   arch/powerpc/include/asm/io.h:558:56: note: expanded from macro '__do_insl'
   #define __do_insl(p, b, n)      readsl((PCI_IO_ADDR)_IO_BASE+(p), (b), (n))
                                          ~~~~~~~~~~~~~~~~~~~~~^
   In file included from drivers/md/dm-log-writes.c:7:
   In file included from include/linux/device-mapper.h:11:
   In file included from include/linux/bio.h:8:
   In file included from include/linux/highmem.h:10:
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
   <scratch space>:120:1: note: expanded from here
   __do_outsb
   ^
   arch/powerpc/include/asm/io.h:559:58: note: expanded from macro '__do_outsb'
   #define __do_outsb(p, b, n)     writesb((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
                                           ~~~~~~~~~~~~~~~~~~~~~^
   In file included from drivers/md/dm-log-writes.c:7:
   In file included from include/linux/device-mapper.h:11:
   In file included from include/linux/bio.h:8:
   In file included from include/linux/highmem.h:10:
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
   <scratch space>:122:1: note: expanded from here
   __do_outsw
   ^
   arch/powerpc/include/asm/io.h:560:58: note: expanded from macro '__do_outsw'
   #define __do_outsw(p, b, n)     writesw((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
                                           ~~~~~~~~~~~~~~~~~~~~~^
   In file included from drivers/md/dm-log-writes.c:7:
   In file included from include/linux/device-mapper.h:11:
   In file included from include/linux/bio.h:8:
   In file included from include/linux/highmem.h:10:
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
   <scratch space>:124:1: note: expanded from here
   __do_outsl
   ^
   arch/powerpc/include/asm/io.h:561:58: note: expanded from macro '__do_outsl'
   #define __do_outsl(p, b, n)     writesl((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
                                           ~~~~~~~~~~~~~~~~~~~~~^
>> drivers/md/dm-log-writes.c:452:12: warning: stack frame size of 1184 bytes in function 'log_writes_kthread' [-Wframe-larger-than=]
   static int log_writes_kthread(void *arg)
              ^
   7 warnings generated.


vim +/log_writes_kthread +452 drivers/md/dm-log-writes.c

0e9cebe724597a Josef Bacik 2015-03-20  451  
0e9cebe724597a Josef Bacik 2015-03-20 @452  static int log_writes_kthread(void *arg)
0e9cebe724597a Josef Bacik 2015-03-20  453  {
0e9cebe724597a Josef Bacik 2015-03-20  454  	struct log_writes_c *lc = (struct log_writes_c *)arg;
0e9cebe724597a Josef Bacik 2015-03-20  455  	sector_t sector = 0;
0e9cebe724597a Josef Bacik 2015-03-20  456  
0e9cebe724597a Josef Bacik 2015-03-20  457  	while (!kthread_should_stop()) {
0e9cebe724597a Josef Bacik 2015-03-20  458  		bool super = false;
0e9cebe724597a Josef Bacik 2015-03-20  459  		bool logging_enabled;
0e9cebe724597a Josef Bacik 2015-03-20  460  		struct pending_block *block = NULL;
0e9cebe724597a Josef Bacik 2015-03-20  461  		int ret;
0e9cebe724597a Josef Bacik 2015-03-20  462  
0e9cebe724597a Josef Bacik 2015-03-20  463  		spin_lock_irq(&lc->blocks_lock);
0e9cebe724597a Josef Bacik 2015-03-20  464  		if (!list_empty(&lc->logging_blocks)) {
0e9cebe724597a Josef Bacik 2015-03-20  465  			block = list_first_entry(&lc->logging_blocks,
0e9cebe724597a Josef Bacik 2015-03-20  466  						 struct pending_block, list);
0e9cebe724597a Josef Bacik 2015-03-20  467  			list_del_init(&block->list);
0e9cebe724597a Josef Bacik 2015-03-20  468  			if (!lc->logging_enabled)
0e9cebe724597a Josef Bacik 2015-03-20  469  				goto next;
0e9cebe724597a Josef Bacik 2015-03-20  470  
0e9cebe724597a Josef Bacik 2015-03-20  471  			sector = lc->next_sector;
228bb5b26038a7 Josef Bacik 2017-07-28  472  			if (!(block->flags & LOG_DISCARD_FLAG))
228bb5b26038a7 Josef Bacik 2017-07-28  473  				lc->next_sector += dev_to_bio_sectors(lc, block->nr_sectors);
228bb5b26038a7 Josef Bacik 2017-07-28  474  			lc->next_sector += dev_to_bio_sectors(lc, 1);
0e9cebe724597a Josef Bacik 2015-03-20  475  
0e9cebe724597a Josef Bacik 2015-03-20  476  			/*
0e9cebe724597a Josef Bacik 2015-03-20  477  			 * Apparently the size of the device may not be known
0e9cebe724597a Josef Bacik 2015-03-20  478  			 * right away, so handle this properly.
0e9cebe724597a Josef Bacik 2015-03-20  479  			 */
0e9cebe724597a Josef Bacik 2015-03-20  480  			if (!lc->end_sector)
0e9cebe724597a Josef Bacik 2015-03-20  481  				lc->end_sector = logdev_last_sector(lc);
0e9cebe724597a Josef Bacik 2015-03-20  482  			if (lc->end_sector &&
0e9cebe724597a Josef Bacik 2015-03-20  483  			    lc->next_sector >= lc->end_sector) {
0e9cebe724597a Josef Bacik 2015-03-20  484  				DMERR("Ran out of space on the logdev");
0e9cebe724597a Josef Bacik 2015-03-20  485  				lc->logging_enabled = false;
0e9cebe724597a Josef Bacik 2015-03-20  486  				goto next;
0e9cebe724597a Josef Bacik 2015-03-20  487  			}
0e9cebe724597a Josef Bacik 2015-03-20  488  			lc->logged_entries++;
0e9cebe724597a Josef Bacik 2015-03-20  489  			atomic_inc(&lc->io_blocks);
0e9cebe724597a Josef Bacik 2015-03-20  490  
0e9cebe724597a Josef Bacik 2015-03-20  491  			super = (block->flags & (LOG_FUA_FLAG | LOG_MARK_FLAG));
0e9cebe724597a Josef Bacik 2015-03-20  492  			if (super)
0e9cebe724597a Josef Bacik 2015-03-20  493  				atomic_inc(&lc->io_blocks);
0e9cebe724597a Josef Bacik 2015-03-20  494  		}
0e9cebe724597a Josef Bacik 2015-03-20  495  next:
0e9cebe724597a Josef Bacik 2015-03-20  496  		logging_enabled = lc->logging_enabled;
0e9cebe724597a Josef Bacik 2015-03-20  497  		spin_unlock_irq(&lc->blocks_lock);
0e9cebe724597a Josef Bacik 2015-03-20  498  		if (block) {
0e9cebe724597a Josef Bacik 2015-03-20  499  			if (logging_enabled) {
0e9cebe724597a Josef Bacik 2015-03-20  500  				ret = log_one_block(lc, block, sector);
0e9cebe724597a Josef Bacik 2015-03-20  501  				if (!ret && super)
0e9cebe724597a Josef Bacik 2015-03-20  502  					ret = log_super(lc);
0e9cebe724597a Josef Bacik 2015-03-20  503  				if (ret) {
0e9cebe724597a Josef Bacik 2015-03-20  504  					spin_lock_irq(&lc->blocks_lock);
0e9cebe724597a Josef Bacik 2015-03-20  505  					lc->logging_enabled = false;
0e9cebe724597a Josef Bacik 2015-03-20  506  					spin_unlock_irq(&lc->blocks_lock);
0e9cebe724597a Josef Bacik 2015-03-20  507  				}
0e9cebe724597a Josef Bacik 2015-03-20  508  			} else
0e9cebe724597a Josef Bacik 2015-03-20  509  				free_pending_block(lc, block);
0e9cebe724597a Josef Bacik 2015-03-20  510  			continue;
0e9cebe724597a Josef Bacik 2015-03-20  511  		}
0e9cebe724597a Josef Bacik 2015-03-20  512  
0e9cebe724597a Josef Bacik 2015-03-20  513  		if (!try_to_freeze()) {
0e9cebe724597a Josef Bacik 2015-03-20  514  			set_current_state(TASK_INTERRUPTIBLE);
0e9cebe724597a Josef Bacik 2015-03-20  515  			if (!kthread_should_stop() &&
0c79c62021d23f Josef Bacik 2017-07-28  516  			    list_empty(&lc->logging_blocks))
0e9cebe724597a Josef Bacik 2015-03-20  517  				schedule();
0e9cebe724597a Josef Bacik 2015-03-20  518  			__set_current_state(TASK_RUNNING);
0e9cebe724597a Josef Bacik 2015-03-20  519  		}
0e9cebe724597a Josef Bacik 2015-03-20  520  	}
0e9cebe724597a Josef Bacik 2015-03-20  521  	return 0;
0e9cebe724597a Josef Bacik 2015-03-20  522  }
0e9cebe724597a Josef Bacik 2015-03-20  523  

:::::: The code at line 452 was first introduced by commit
:::::: 0e9cebe724597a76ab1b0ebc0a21e16f7db11b47 dm: add log writes target

:::::: TO: Josef Bacik <jbacik@fb.com>
:::::: CC: Mike Snitzer <snitzer@redhat.com>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202104180756.KpnEknST-lkp%40intel.com.

--3MwIy2ne0vdjdPXF
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
r3w8yHycJy/yBun/AGuWwLZ5agEA

--3MwIy2ne0vdjdPXF--
