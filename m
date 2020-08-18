Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBAV36H4QKGQE5X2TP6A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc38.google.com (mail-oo1-xc38.google.com [IPv6:2607:f8b0:4864:20::c38])
	by mail.lfdr.de (Postfix) with ESMTPS id E954024914A
	for <lists+clang-built-linux@lfdr.de>; Wed, 19 Aug 2020 01:00:19 +0200 (CEST)
Received: by mail-oo1-xc38.google.com with SMTP id i25sf10532716ooe.14
        for <lists+clang-built-linux@lfdr.de>; Tue, 18 Aug 2020 16:00:19 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597791618; cv=pass;
        d=google.com; s=arc-20160816;
        b=F7Un/IHIp8O8y2IbucV1qp1FnRbJEKiNTgtXPArNiZdPZb8nS3dlQ5CyOQZlZgAn1g
         eWi53KnR6qySsPn8qYU31OYxxmJmnXz60iLBvqjvD+naCXuyLtKVE2W9YPTZCvEoweoM
         xDPGh+MzEf53JYxj65V51pRDzJ8EJ4k5y/TLGqkPnEyN84FAj2lm7L1hsD8G03ykIaWE
         lQ3G4KTbbzLM+IsjfZTdNK4lWcJrdKFx17RbLXfJgS5pGO2fHN8xtag7mw4zy8OFvRHj
         U0ZiQbCmZWvQoVusYPzLeUIgJaFh1ZKoWkOPevNxjFKj5ld8ADdB/Hb9JmP0ZHrqo8Bz
         FNsg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=m4WFjCDWK0Sm5k+SShyD5+7phStvuztEQdcXb+KAJJ4=;
        b=ziNhCppjrgBY8I2R+qy07oTBMqqEmhUwxJ5m+Sk1Xkfb00SDIvONa+CdgyZ1FpvCX9
         GvzJDyGnWixWpTQZdoNl+ZZujiWWt5pDO2hsGqq6Ja9fb4V+YZ0PnCpjoDEUri4wLVUl
         sQtYmYhLqsnnNgB05DTXCjXtpx+HGro7Sc+p6281+HEQjA0fJJQ/g/Pkncny5HsVUbEt
         E/kwvAp0MJKDQe8Alf+MDxa42h/e4b8zdz3jUxlcwFHD79awcTSxSxSWPVgHdDu8dzno
         lvQUqxGxlFfB2HDFCP+fg8N2FB5e4hWvx+vqS8c0C31NDkzyrCGX01sl5mf9sbJeaU4e
         N4cg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.24 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=m4WFjCDWK0Sm5k+SShyD5+7phStvuztEQdcXb+KAJJ4=;
        b=Gh7uJ/y0jcbhyeYyYSSep44apwAwdpU2rq7xqwYw+UGTP+7+h/As8x9J2q5qQexIO3
         RzVePl7Id83k8AKf7ZpnLdVghmt0rDLF8uqwKlObHxhmOGVznJuhoGTWPNjRYfSW/ugT
         GRQ7TqJHclwCfwpunn6yZef+X1Z3PbwhsbyER1zntcuThfTAsPH6ISTd0v+BrZu4aEay
         n68Id8wc7LVJ0Kc8R+pFyZHegCb66qG2fwlfXrx4++KrEmQGb3Ij1+j8cM7NKeQNrULZ
         7GmxOYdVn/C1FxWdyMF0NjURXbfMnY/deMnah1rfxOvKEvMXIohe2OfHqhKBqll+h+RY
         BgpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=m4WFjCDWK0Sm5k+SShyD5+7phStvuztEQdcXb+KAJJ4=;
        b=TmaXVKE86vRbs125Py8ExdzsZIFgiyxNWGrS/F1udC224lZq8K7Ufasp3040p0vJ5Y
         BqyCPH34SXJsmQ+42HXvg5BEnP+6DNzFzHxWI69HcEKWhlhYz29Z9B3rbMjnST7vzM7T
         /DIkZxLXOP0REa86utFpwt5WsQ7yHgo8cIqL+Vdw0iMkftpGKuSixlfr0DQJvISdso0T
         HHmJoX4Rl0ScoiM9qINo+MLDOAJaoYd/BGrC/taLTHhk00ULYf1eL/MGnGCNEGzNl5T1
         xXHbs7E0SAeBgxA7DFgzGqRm/KzeaUwW5IEZxoL/7PqPAGPDIV+5wLRI4O6BGyulPfQQ
         5lvw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532CSLBxQCN+8bWwPGuwvXsLWipokARuzzTxKZ40rM5i7Khv0x0y
	Z0txVBE7EsblPqI7bPKhOOk=
X-Google-Smtp-Source: ABdhPJz568kbgopgE7q0Ze/X+OFH9tNY0x0//VqDMEdmXHYdvJXmi4ZFbQxH73K0qh6l7COfSCMf3g==
X-Received: by 2002:aca:5b0b:: with SMTP id p11mr1576273oib.50.1597791618434;
        Tue, 18 Aug 2020 16:00:18 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:1c78:: with SMTP id s24ls4837530otg.9.gmail; Tue,
 18 Aug 2020 16:00:18 -0700 (PDT)
X-Received: by 2002:a05:6830:20c8:: with SMTP id z8mr16715665otq.324.1597791617930;
        Tue, 18 Aug 2020 16:00:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597791617; cv=none;
        d=google.com; s=arc-20160816;
        b=ZGCUguiPpzjnaSowNiJBaC2gYpAJJyP/i6+hMFSAZGswkWE6rqvcdmFF078Y1K+pfU
         1HYtFIA2ArE6t1eVQr9BXPF4CGhjikgyWUUtxP/Maw+i5hGORbBLrmC7hpbQ1wFidGGR
         DTBjo+q1V8i/xKmjJTd0FLpCT8wKsNPE89lymOteta71L2pzAbDjpB0YHojPRcgmehwg
         bxvGliofIKr7a5RgYIIIWiLvcdVVFyCFNExWHahjVZZQ/m68jGAtyVjxzS1dsjCIxf2E
         Ur+spOXqjdmilAz5RA4ELPW1EEBssREOIIhknlxZKe3VGX6HK4Y8GbSYbrtNZ3nHzT2P
         0WVw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=35MGjJBe8CxVnTbx1sxQuj9dyOLHsQPNXSYeSsrF+KQ=;
        b=UDvsouTfN6RwyBtDFjaizdVcmqPKtpCNhVzcWh38ixrqNkAMcbWqtHKyTbYKCSDTHs
         CVNMpYiz7p2WaKGvKz8J/3HPz13BqOpLa3pwrnW/VHL8deyLBvHfPcrGK+EzNdEj2Flr
         x84SPRHrS87UIh1s3Kw3fEYko1/uYGa6uRBTPknwaYu8X0LrdjYn0wbc4M+utiFnHL/j
         KjdF/1k1X4oymQSyJHDfyVbT9i7kbTJxa7YGLbbiukNOl2Ur6tPIGUFkKihcKsKWz7Vb
         RMX95GIboj95XFnXjnQNl4GjZggVEw6L81mwY/PmVhgHs9EpqmSIt7zpHF0SUKQV4UF2
         AM2Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.24 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga09.intel.com (mga09.intel.com. [134.134.136.24])
        by gmr-mx.google.com with ESMTPS id s18si957477otp.4.2020.08.18.16.00.17
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 18 Aug 2020 16:00:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.24 as permitted sender) client-ip=134.134.136.24;
IronPort-SDR: cV8KfL5cKyq3iQVZzKS1Bwlvw2f6kOQ+8oUgXaQ5j9xueYmQnFbSkHoPXtAGMF5XsqED6cLW0r
 4EStWPFhEKOQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9717"; a="156090461"
X-IronPort-AV: E=Sophos;i="5.76,329,1592895600"; 
   d="scan'208";a="156090461"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
  by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 18 Aug 2020 16:00:15 -0700
IronPort-SDR: tN4XBdfb0YXJdVfOcr9JGkirAxlgohLUPnRCrP+eyD5yViX7dWI0595xTBbEcovACmlrJpb64S
 Qa996JpYdwgA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,329,1592895600"; 
   d="scan'208";a="278171982"
Received: from lkp-server02.sh.intel.com (HELO 2f0d8b563e65) ([10.239.97.151])
  by fmsmga007.fm.intel.com with ESMTP; 18 Aug 2020 16:00:12 -0700
Received: from kbuild by 2f0d8b563e65 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1k8AaR-0001R3-CX; Tue, 18 Aug 2020 23:00:11 +0000
Date: Wed, 19 Aug 2020 06:59:11 +0800
From: kernel test robot <lkp@intel.com>
To: Tong Zhang <ztong0001@gmail.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	0day robot <lkp@intel.com>
Subject: [linux-review:UPDATE-20200819-003212/Tong-Zhang/tty-serial-fix-earlycon-dependency/20200818-012524
 1/1] drivers/tty/serial/Kconfig:12: syntax error
Message-ID: <202008190659.qMBuPID1%lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 134.134.136.24 as permitted
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

tree:   https://github.com/0day-ci/linux/commits/UPDATE-20200819-003212/Tong-Zhang/tty-serial-fix-earlycon-dependency/20200818-012524
head:   759d17f5a000b4795da8e96124ddf756c63c65f7
commit: 759d17f5a000b4795da8e96124ddf756c63c65f7 [1/1] tty: serial: earlycon dependency
config: x86_64-randconfig-a006-20200818
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project 790878f291fa5dc58a1c560cb6cc76fd1bfd1c5a)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install x86_64 cross compiling tool for clang build
        # apt-get install binutils-x86-64-linux-gnu
        git checkout 759d17f5a000b4795da8e96124ddf756c63c65f7
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64  randconfig
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

>> drivers/tty/serial/Kconfig:12: syntax error
   drivers/tty/serial/Kconfig:11: invalid statement
   drivers/tty/serial/Kconfig:12: invalid statement
   drivers/tty/serial/Kconfig:13:warning: ignoring unsupported character '.'
   drivers/tty/serial/Kconfig:13: unknown statement "Support"
   drivers/tty/serial/Kconfig:14:warning: ignoring unsupported character '.'
   drivers/tty/serial/Kconfig:14: unknown statement "the"
   drivers/tty/serial/Kconfig:15:warning: ignoring unsupported character '.'
   drivers/tty/serial/Kconfig:15: unknown statement "enabled"
   make[2]: *** [scripts/kconfig/Makefile:71: oldconfig] Error 1
   make[1]: *** [Makefile:608: oldconfig] Error 2
   make: *** [Makefile:185: __sub-make] Error 2
   make: Target 'oldconfig' not remade because of errors.
--
>> drivers/tty/serial/Kconfig:12: syntax error
   drivers/tty/serial/Kconfig:11: invalid statement
   drivers/tty/serial/Kconfig:12: invalid statement
   drivers/tty/serial/Kconfig:13:warning: ignoring unsupported character '.'
   drivers/tty/serial/Kconfig:13: unknown statement "Support"
   drivers/tty/serial/Kconfig:14:warning: ignoring unsupported character '.'
   drivers/tty/serial/Kconfig:14: unknown statement "the"
   drivers/tty/serial/Kconfig:15:warning: ignoring unsupported character '.'
   drivers/tty/serial/Kconfig:15: unknown statement "enabled"
   make[2]: *** [scripts/kconfig/Makefile:71: olddefconfig] Error 1
   make[1]: *** [Makefile:608: olddefconfig] Error 2
   make: *** [Makefile:185: __sub-make] Error 2
   make: Target 'olddefconfig' not remade because of errors.

# https://github.com/0day-ci/linux/commit/759d17f5a000b4795da8e96124ddf756c63c65f7
git remote add linux-review https://github.com/0day-ci/linux
git fetch --no-tags linux-review UPDATE-20200819-003212/Tong-Zhang/tty-serial-fix-earlycon-dependency/20200818-012524
git checkout 759d17f5a000b4795da8e96124ddf756c63c65f7
vim +12 drivers/tty/serial/Kconfig

^1da177e4c3f41 drivers/serial/Kconfig     Linus Torvalds     2005-04-16   5  
^1da177e4c3f41 drivers/serial/Kconfig     Linus Torvalds     2005-04-16   6  menu "Serial drivers"
0244ad004a54e3 drivers/tty/serial/Kconfig Martin Schwidefsky 2013-08-30   7  	depends on HAS_IOMEM
^1da177e4c3f41 drivers/serial/Kconfig     Linus Torvalds     2005-04-16   8  
9aac5887595b76 drivers/tty/serial/Kconfig Rob Herring        2014-04-18   9  config SERIAL_EARLYCON
9aac5887595b76 drivers/tty/serial/Kconfig Rob Herring        2014-04-18  10  	bool
759d17f5a000b4 drivers/tty/serial/Kconfig Tong Zhang         2020-08-18  11  	depends SERIAL_CORE
9aac5887595b76 drivers/tty/serial/Kconfig Rob Herring        2014-04-18 @12  	help
9aac5887595b76 drivers/tty/serial/Kconfig Rob Herring        2014-04-18  13  	  Support for early consoles with the earlycon parameter. This enables
9aac5887595b76 drivers/tty/serial/Kconfig Rob Herring        2014-04-18  14  	  the console before standard serial driver is probed. The console is
9aac5887595b76 drivers/tty/serial/Kconfig Rob Herring        2014-04-18  15  	  enabled when early_param is processed.
9aac5887595b76 drivers/tty/serial/Kconfig Rob Herring        2014-04-18  16  

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202008190659.qMBuPID1%25lkp%40intel.com.
