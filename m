Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBV54RWCAMGQEEHCUHIQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23a.google.com (mail-oi1-x23a.google.com [IPv6:2607:f8b0:4864:20::23a])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C232369D9C
	for <lists+clang-built-linux@lfdr.de>; Sat, 24 Apr 2021 01:55:05 +0200 (CEST)
Received: by mail-oi1-x23a.google.com with SMTP id a12-20020a056808128cb029010262e5ebd2sf19000095oiw.1
        for <lists+clang-built-linux@lfdr.de>; Fri, 23 Apr 2021 16:55:05 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1619222104; cv=pass;
        d=google.com; s=arc-20160816;
        b=zjSMyBbGKX07JSasmP9hjR3WBzxLtURTbk1w97/hj0eZK6GO/WpStl/m4NrIzjtTZb
         RyFlWwdhHQ1tXCZohJs6qeB9D+PJ6T68U5VXRkhHC3r5BFftAJA5B2PTowwQ4oYPCT9T
         jaIroD8A3BTtJ8ZESXlZKBBL8dIDDF4pA6C0fJeHGY8p9QAwnxydF3GnHut8b0kp0qYr
         Wuyk39dKl6hknDW0483rNXd2BNQbP2Mclm+RQLpVLX5yhrm+ohat9aipk67/Lb1GNahv
         sYdmbXSlwiGboogiAIsR3u+VWVTZM79CLeiDVfTy6wppkyvBkwVBppRKaWdCbjxIBJcn
         CJ6w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=Yf6qB2NCSPi+Ri4BSPitjvrO3+UIUnu4ude4Ex1LnnU=;
        b=UgpiAW2yet1DaPZ1Fn+/KTyI6LrCXm6tEwtFvC4d55aKAvRFqeY1Rgr4zYhzMUp4C7
         RaZcgsgGVA3d38yhO9iZZk2nxq4okHntZ7DIUGBbGNr8P3nYXLkLzWbaf6FoGzY745DZ
         2by5ITZg8FgHdfMqdjkQVZVFKWTBccvczqk53mXyvGe6K4e3wSPPDg87QDwx5Yw00pPe
         kTSLT1nXkgWRoTEKNEhv8DLVkFU/N3nZjBbtMPuf4hq4TeNmf4747L3dPODN+e1eMSXk
         keJHGsBLbOXZ3YJZrR7iLi2MKr3TGPqNZ5iJuVQDI8h9ftJTOdBlY4AqfNPqkM9FdC7G
         B+Gw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.126 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Yf6qB2NCSPi+Ri4BSPitjvrO3+UIUnu4ude4Ex1LnnU=;
        b=dcplgZnGFYj5QllZoR0JXGSR4DCiHUHJnCSPikl2xD6y1bDr8DVMgUK+LSoQJ/WY+G
         rQSGIA2vMKicIS36+x0ZE98wvMUn8qFEK4rlxu5RVGKHyDTS0mF4vmM+Czy9TPUVUQwE
         6792xWBhvbxtNvyKDg7l3jYtarGzEho6qqfhvQkvxKitPXp2sAtj+tX1sNLCEtPBIGZQ
         2LzU/C8b1yH7IgUrSWpG7y6D0PgNlgwP5MkMP28bGWxDA2Y9AuUGBlNis3UpXJUBZzS2
         0z/d51W95ZepXgSBZ34/7c98QrWt4Y+PNKw+p7puPhdRH0a48GYC38+h1cceBePnWuUj
         xBjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:references:mime-version:content-disposition
         :in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Yf6qB2NCSPi+Ri4BSPitjvrO3+UIUnu4ude4Ex1LnnU=;
        b=YNxWC/bKS77qS5pW6laIw1Z6GAIbJtG7TWwHkinX+pMAWzx3pbcu8+IC/j+9MiEUok
         SmtBe1M7mQsAa+BXbdBSF405o+Gyl+n7aXWw8OVzWRlnnQvgwjFxin5hiGqyql01byn3
         1J44mKRH5XnGITvnnDBdXiHiejPfnV7cSVLUcdJK/2KJyUd8lUxfeEPEs36lKiw94EIe
         kr5fe6bFh2PRlpD7RVJy2HUgdeWPWP62xMm2z24mBivxvN9WL6PmepnDvJw835xVulDO
         DRjZ/yEiRz6I5JoWCBSMshYtfJ81pmpY1/awpP3TF1BMQ/1oPI8zJfflexRdzloFMT1s
         xbzw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533QdCVU/AUYMVmwa3d4waf4SqF1UzkIqy0h9PSdyrTB2jckR8rz
	B28qYtw/JWyKpsr9kO2jXw0=
X-Google-Smtp-Source: ABdhPJxt0xMZcN7EEF6IyeyrD8r0ZXKYz5RPM1IjIYhJyTYvGhQmWa32vc37pyJn+di0/j9M1uGadw==
X-Received: by 2002:a05:6808:305:: with SMTP id i5mr4634363oie.110.1619222103918;
        Fri, 23 Apr 2021 16:55:03 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:1e0a:: with SMTP id m10ls2963948oic.7.gmail; Fri, 23 Apr
 2021 16:55:03 -0700 (PDT)
X-Received: by 2002:a05:6808:bcb:: with SMTP id o11mr4461522oik.141.1619222103425;
        Fri, 23 Apr 2021 16:55:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619222103; cv=none;
        d=google.com; s=arc-20160816;
        b=zB2gSlFVplBurEC4ZmYWLgjh4Nh4GihBhsiPanbYL1oczijjB/54IMeDasAXapMyrY
         HXBsjxdlD/D2btUn7Sf2RqDOShUaf5dc3jQTSIG+1w/zbePdh02hVjNFHgxCEV2wdhJj
         1tz+ptbWVlvEMp+ssuj31E7+5msnI4Xn2fSaJ1ON7ZFRtiaXqsKYAS53MQb+sSrx8mks
         Nx/Ci+CFOlOiQPB1PoFjeBgdk02ZTh/aikP2nTHEc3t+tyPmhp3LMUgC3tTD4VWjxgyU
         5vF9fX4EwTTafo2m9i0JrvkhozPEaHBzgHXyLhg+J/smbAq9nSSe5e6l0cLf37q3UsA2
         XJZQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:ironport-sdr:ironport-sdr;
        bh=1H7VmBhmvVjb7Fi1MbwUHNlL21DRtqjRdskTTpH6wkY=;
        b=SoEnDLGTmYgVT3sz9x6y7H8Wr9r+XXPH2937qZSk5j4dnw0A8D38F5sx/I+o5f5QoN
         DszOvi5LThwo3GR2tKqGzfKa0z1TYnYHmgmf6PGQpQkLKQq7TOaO+fe8z4tg89AHdZIY
         a9sXi7Q2nRtDuSgB/m75bySiuLuxjBL7xEbkMb/fXbs4Wn300anuSyQgbNEsyZDGaITr
         zufO2cGRU2pa4pqK4JrjroGpUGQR4xFOw/tyXV5mYthI7MgIFx2YGA7sv+wON2kHuP20
         MvaS5gCIR28XumXfECO1KkDu4k3Z1IaPpWV+sE0KwvIYk0he3DtNz3CRbrnYG9afwYfz
         7b6Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.126 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga18.intel.com (mga18.intel.com. [134.134.136.126])
        by gmr-mx.google.com with ESMTPS id b17si906274ooq.2.2021.04.23.16.55.02
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 23 Apr 2021 16:55:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.126 as permitted sender) client-ip=134.134.136.126;
IronPort-SDR: LyCKGOYoXObdoxonDiK0D1viyxw9FgCKzIWpNnvotAk8cwrb1kLejtGzV2jhLyPwrkDSp2y39I
 TyHNjyigCgRw==
X-IronPort-AV: E=McAfee;i="6200,9189,9963"; a="183633635"
X-IronPort-AV: E=Sophos;i="5.82,246,1613462400"; 
   d="gz'50?scan'50,208,50";a="183633635"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
  by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 23 Apr 2021 16:55:00 -0700
IronPort-SDR: bgqzXVgvQchwmLtE1RY9TIj2AFmpDrEGchWbJdBNuPsY+Yd5eFioSvgNJZlWkkSwDBHoSnwcbg
 Dg/2Gy7BVQAQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,246,1613462400"; 
   d="gz'50?scan'50,208,50";a="402334989"
Received: from lkp-server01.sh.intel.com (HELO a48ff7ddd223) ([10.239.97.150])
  by orsmga002.jf.intel.com with ESMTP; 23 Apr 2021 16:54:58 -0700
Received: from kbuild by a48ff7ddd223 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1la5dR-0004th-A9; Fri, 23 Apr 2021 23:54:57 +0000
Date: Sat, 24 Apr 2021 07:54:11 +0800
From: kernel test robot <lkp@intel.com>
To: Daniel Bristot de Oliveira <bristot@redhat.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com
Subject: Re: [RFC PATCH V2 5/9] tracing/trace: Add a generic function to
 read/write u64 values from tracefs
Message-ID: <202104240716.mSLcvBsi-lkp@intel.com>
References: <f708a3c093ecb2f2513813f9d92548f03f6ec0d7.1619210818.git.bristot@redhat.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="huq684BweRXVnRxX"
Content-Disposition: inline
In-Reply-To: <f708a3c093ecb2f2513813f9d92548f03f6ec0d7.1619210818.git.bristot@redhat.com>
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


--huq684BweRXVnRxX
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi Daniel,

[FYI, it's a private test report for your RFC patch.]
[auto build test WARNING on tip/perf/core]
[also build test WARNING on linux/master linus/master v5.12-rc8]
[cannot apply to trace/for-next next-20210423]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch]

url:    https://github.com/0day-ci/linux/commits/Daniel-Bristot-de-Oliveira/hwlat-improvements-and-osnoise-timerlat-tracers/20210424-050958
base:   https://git.kernel.org/pub/scm/linux/kernel/git/tip/tip.git ed8e50800bf4c2d904db9c75408a67085e6cca3d
config: powerpc64-randconfig-r014-20210423 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 06234f758e1945084582cf80450b396f75a9c06e)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install powerpc64 cross compiling tool for clang build
        # apt-get install binutils-powerpc64-linux-gnu
        # https://github.com/0day-ci/linux/commit/21b6c7475ccbd8c3dd5a0cb291166b7c54366243
        git remote add linux-review https://github.com/0day-ci/linux
        git fetch --no-tags linux-review Daniel-Bristot-de-Oliveira/hwlat-improvements-and-osnoise-timerlat-tracers/20210424-050958
        git checkout 21b6c7475ccbd8c3dd5a0cb291166b7c54366243
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross W=1 ARCH=powerpc64 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:58:1: note: expanded from here
   __do_insw
   ^
   arch/powerpc/include/asm/io.h:557:56: note: expanded from macro '__do_insw'
   #define __do_insw(p, b, n)      readsw((PCI_IO_ADDR)_IO_BASE+(p), (b), (n))
                                          ~~~~~~~~~~~~~~~~~~~~~^
   In file included from kernel/trace/trace.c:18:
   In file included from include/linux/writeback.h:14:
   In file included from include/linux/blk-cgroup.h:17:
   In file included from include/linux/cgroup.h:26:
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
   <scratch space>:60:1: note: expanded from here
   __do_insl
   ^
   arch/powerpc/include/asm/io.h:558:56: note: expanded from macro '__do_insl'
   #define __do_insl(p, b, n)      readsl((PCI_IO_ADDR)_IO_BASE+(p), (b), (n))
                                          ~~~~~~~~~~~~~~~~~~~~~^
   In file included from kernel/trace/trace.c:18:
   In file included from include/linux/writeback.h:14:
   In file included from include/linux/blk-cgroup.h:17:
   In file included from include/linux/cgroup.h:26:
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
   <scratch space>:62:1: note: expanded from here
   __do_outsb
   ^
   arch/powerpc/include/asm/io.h:559:58: note: expanded from macro '__do_outsb'
   #define __do_outsb(p, b, n)     writesb((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
                                           ~~~~~~~~~~~~~~~~~~~~~^
   In file included from kernel/trace/trace.c:18:
   In file included from include/linux/writeback.h:14:
   In file included from include/linux/blk-cgroup.h:17:
   In file included from include/linux/cgroup.h:26:
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
   <scratch space>:64:1: note: expanded from here
   __do_outsw
   ^
   arch/powerpc/include/asm/io.h:560:58: note: expanded from macro '__do_outsw'
   #define __do_outsw(p, b, n)     writesw((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
                                           ~~~~~~~~~~~~~~~~~~~~~^
   In file included from kernel/trace/trace.c:18:
   In file included from include/linux/writeback.h:14:
   In file included from include/linux/blk-cgroup.h:17:
   In file included from include/linux/cgroup.h:26:
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
   <scratch space>:66:1: note: expanded from here
   __do_outsl
   ^
   arch/powerpc/include/asm/io.h:561:58: note: expanded from macro '__do_outsl'
   #define __do_outsl(p, b, n)     writesl((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
                                           ~~~~~~~~~~~~~~~~~~~~~^
>> kernel/trace/trace.c:7301:1: warning: no previous prototype for function 'trace_ull_config_write' [-Wmissing-prototypes]
   trace_ull_config_write(struct file *filp, const char __user *ubuf, size_t cnt,
   ^
   kernel/trace/trace.c:7300:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   ssize_t
   ^
   static 
>> kernel/trace/trace.c:7348:1: warning: no previous prototype for function 'trace_ull_config_read' [-Wmissing-prototypes]
   trace_ull_config_read(struct file *filp, char __user *ubuf, size_t cnt,
   ^
   kernel/trace/trace.c:7347:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   ssize_t
   ^
   static 
   8 warnings generated.


vim +/trace_ull_config_write +7301 kernel/trace/trace.c

  7287	
  7288	/*
  7289	 * trace_ull_config_write - Generic write function to save u64 value
  7290	 * @filp: The active open file structure
  7291	 * @ubuf: The userspace provided buffer to read value into
  7292	 * @cnt: The maximum number of bytes to read
  7293	 * @ppos: The current "file" position
  7294	 *
  7295	 * This function provides a generic write implementation to save u64 values
  7296	 * from a file on tracefs. The filp->private_data must point to a
  7297	 * trace_ull_config structure that defines where to write the value, the
  7298	 * min and the max acceptable values, and a lock to protect the write.
  7299	 */
  7300	ssize_t
> 7301	trace_ull_config_write(struct file *filp, const char __user *ubuf, size_t cnt,
  7302			       loff_t *ppos)
  7303	{
  7304		struct trace_ull_config *config = filp->private_data;
  7305		u64 val;
  7306		int err;
  7307	
  7308		if (!config)
  7309			return -EFAULT;
  7310	
  7311		err = kstrtoull_from_user(ubuf, cnt, 10, &val);
  7312		if (err)
  7313			return err;
  7314	
  7315		if (config->lock)
  7316			mutex_lock(config->lock);
  7317	
  7318		if (config->min && val < *config->min)
  7319			err = -EINVAL;
  7320	
  7321		if (config->max && val > *config->max)
  7322			err = -EINVAL;
  7323	
  7324		if (!err)
  7325			*config->val = val;
  7326	
  7327		if (config->lock)
  7328			mutex_unlock(config->lock);
  7329	
  7330		if (err)
  7331			return err;
  7332	
  7333		return cnt;
  7334	}
  7335	
  7336	/*
  7337	 * trace_ull_config_read - Generic write function to read u64 value via tracefs
  7338	 * @filp: The active open file structure
  7339	 * @ubuf: The userspace provided buffer to read value into
  7340	 * @cnt: The maximum number of bytes to read
  7341	 * @ppos: The current "file" position
  7342	 *
  7343	 * This function provides a generic read implementation to read a u64 value
  7344	 * from a file on tracefs. The filp->private_data must point to a
  7345	 * trace_ull_config structure with valid data.
  7346	 */
  7347	ssize_t
> 7348	trace_ull_config_read(struct file *filp, char __user *ubuf, size_t cnt,
  7349			      loff_t *ppos)
  7350	{
  7351		struct trace_ull_config *config = filp->private_data;
  7352		char buf[ULL_STR_SIZE];
  7353		u64 val;
  7354	        int len;
  7355	
  7356	        if (!config)
  7357	                return -EFAULT;
  7358	
  7359		val = *config->val;
  7360	
  7361	        if (cnt > sizeof(buf))
  7362	                cnt = sizeof(buf);
  7363	
  7364	        len = snprintf(buf, sizeof(buf), "%llu\n", val);
  7365	
  7366	        return simple_read_from_buffer(ubuf, cnt, ppos, buf, len);
  7367	}
  7368	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202104240716.mSLcvBsi-lkp%40intel.com.

--huq684BweRXVnRxX
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

H4sICGBWg2AAAy5jb25maWcAjDzbctu4ku/zFapM1dachySWb+Pslh9AEJQQkQQNgJLtF5Yi
Kxnt2JJXljPJ3283eANAyJlTdSZRd6MBNBp9QzO///b7iLwedk/Lw2a1fHz8Ofq23q73y8P6
YfR187j+n1EsRrnQIxZz/QGI08329cfH590/6/3zanTxYXz64eT9fnU2mq332/XjiO62Xzff
XoHDZrf97fffqMgTPqkoreZMKi7ySrNbff1u9bjcfht9X+9fgG40Pvtw8uFk9Me3zeG/P36E
/z5t9vvd/uPj4/en6nm/+9/16jA6exgv16svD6dXF3+efPp6cTW+vPpytny4vFidXD4sz7+c
n47PTpef/vOunXXST3t9Yi2Fq4qmJJ9c/+yA+LOjHZ+dwP9aXBoPmQAMmKRp3LNILTqXAcw4
JaoiKqsmQgtrVhdRiVIXpQ7ieZ7ynFkokSstS6qFVD2Uy5tqIeSsh0QlT2PNM1ZpEqWsUkJa
E+ipZAS2kicC/gMkCofCsf0+mhg9eBy9rA+vz/1BRlLMWF7BOaqssCbOua5YPq+IBEnwjOvr
s9N+rVnBYW7NlDV3KihJW4G9e+csuFIk1RZwSuasmjGZs7Sa3HNr4iAwZgkpU21WZXFpwVOh
dE4ydv3uj+1uu+71Rd2pOS8oMPp91IAKofhtld2UrGSjzctouzugSNoRC6LptDJYexSVQqkq
Y5mQdxXRmtCpPbijKxVLeRTgS0q4b/2GzP6JhKkMAtYJskt7vAc1Bwi6MHp5/fLy8+WwfuoP
cMJyJjk1qqKmYtEz8TFVyuYsDePp1JY3QmKREZ67MMWzEFE15Uzibu5cbEKUZoL3aNh3HqfM
1vB2EZniOOYoIrieREjK4kbruX3/VUGkYg3H7njsHccsKieJco9xvX0Y7b56ovZXZG7ffHBm
LZrCRZiBpHMd2CbNhKrKIiaateeqN09gNUNHqzmdwc1kcHiW7uSimt7jHcxEbm8OgAXMIWJO
AwpYj+IgfY+Tw4JPppVkymxRhmUzWK51tyRjWaGBbx66Wy16LtIy10TeOfeyRr4xjAoY1QqN
FuVHvXz5e3SA5YyWsLSXw/LwMlquVrvX7WGz/eaJEQZUhBoetaJ0M8+51B66yonmcxa84qg7
RgN68tCiFXd2B0rcWquYK7TccVC6/2JfllWCRXMlUlisyG12RkSSliMVUqr8rgJcrwbwo2K3
oDuWkimHwozxQOBalBnaqHYANQCVMQvBtSS0RXSb81CVcWxZFJSau9XOQszqv9hc+WwKfDzd
NuJSq7/WD6+P6/3o63p5eN2vXwy4mSGA7bzhRIqyUPYs4ChoSCtq0krRKbMCjYRwWbmY/ogT
VUVgNBc81tMAR1DdYyNreMFjFdTjBi/jjLyFT+D23TN5fDMxm3NqBzI1GHQTLogOrYjJ5C12
YJYtblNGZ4XguUa7BMGRNZPZMrhKLcxQC3GnQGwxA8tBwdDGxzHV/NS6BywllgeL0hluzgQd
0uJhfpMM+ChRgv/BgKTbo4xN6BI6qbiKAHNqSwRg6f0R+QPu9j7MJ70XAy7nYdJ7pa2lR0Kg
HfUvBYSlogCbxu8ZulRzQkJmJKchM+5TK/iLF9lAwBfjdaUCLjz4OlIxjCFzY6jsmd8kDMwN
9EIWEEVAoCZz51ypTsGKUVZok5Sg3bA2XiT9j87W9fcV7DKH2E0GT0JNmM7AGlWNyw+sq9ar
QUiQ1PHOMP4M+dfO3YGyzwJzOPeCpQkIzb4NEYF4Jymd6UvIzbyfYBAsLoWw6RWf5CRNLIUx
60wcu2IimyQOCWEKds+KYbmjpVxUpQw7SxLPOSy+EZ8VNQG/iEgJ4aOVICDJXaaGkMqRfQc1
gsG7jS7dXhEoRehI7WBeGpcd3K2J3jGb6xdZIauI0Jm1uBCZusupd3ozarKv/k4rdhNcFHBh
ccxCKzJXD+9u1UWfvVbR8cn5wOc1OX6x3n/d7Z+W29V6xL6vtxBvEHB7FCMOiPX62MFn3jjH
f8mm5TLPah51RFdnA70tgtySaEhLZ+G7mJLoCKIM5V0qFZHNHsfDUcgJa+OxMLdpmSSQ4RYE
COFQIbUF3xO++JpltemC3JcnnLZGrrvPIuGpk5wY42ScmiNGN0Pvxhf0zHEaALgcHmWx363W
Ly+7PUTmz8+7/aEOk7shaPtnZ6o6Ow1bHaC4uvjx4zjSxTWY85Mf9tLOz0NEXe5TWJEf8kwK
DOsm1m05//HDJcmyEtIJuD/TY/DKkw4gjDUO5kCoc1MmjfJBDs9s8Q8l2ClsrMSZFShg3B3h
XcxjTqyjPjuN7CQf1ujZgSwjEHHlEAlAdl9l5PZ6/OdbBJDvjsdhgvae/IqRQ+fwyyXmMur6
YtwVdpQG41WH3KosCre0ZMAwIknJRA3xmPVCYDVEtMc/XTBIL7VzjpYrIjK9a5yfRULyJuEW
pb4eX3UluDr2ExnXEKESyMbMdbL9BGpJGUeTanx5cXHilVaMkIZLdFysBezcRzvNwMDziMk6
akEPr3hk59mGRJWqAIUJoHGlMZVN0jmAD/gY+WIVQYqIKZceXGkdQnsXy8VxQtX1aRgXv4Wb
A647g2JSlyBNWQnH1IbocXlAN2DZoe7MRNaWXTyDBve+mhRcBM0PoQTuWRA1FTqBmDaIm/GU
lCw8LiMQHpRBlIjU5clJKKWHZZ78wBpY4RxukV2djK9u7R3NwMVNSshXAmxYQQoIsYkkWHiw
6hmjZL/+v9f1dvVz9LJaPtYlDCfXh1zMCwr6qkFgdMuYPzyuRw/7zff1HkDddAj2Z8D60NEZ
6gEWxGbcbu+GmYN0rhFkqdSxtL6K2MHI7hlfGl7slWFZCsKnsAbcV+PgcQHi1Nx7m/TMJfW4
hNlcA5vOpBM9hRCsTAeZjIsxgXiAm0c1XVRlbvQpA5dkJ6rmqrPc3K+m7Ay6XqS2gQrTSPjb
3Dc+YLM1kDTUVi6bpmxC0tasVXO4Fcy64XD7z2cmCvJsiQmM1JQnYJU7Y9G8PjTgsxZsgiOf
1pRu0XNV9yJnQsZgu3vfRLPYPI/0tX52Cw6o0gQiN4iaenhjVq0kprGzTeFiiFAzXpgQ3NpR
BoEhY4UDwcLCELogM4auToWhzVvJuH8scrATZ1I3bqlNY8jwZJ0vqovg1tyLGzi7BZwcSyD0
5BjYNHGtsz5vfGC3PoVIAhF+ezfN5YxeX6zL6tpyWliJIAKUcF5hEpVWaUSDpsbmayYiD98x
p3jwn67AL2GJIjblCJE7PiUVC9R3rE1g5Bu6ixbJ9ckP88CHb3z9iaCKiyRRTB9jYZEAi1XL
ovUC9VMWBFWy5mClexYqMLKY3ilIJHqCE49Am3JEuzm3ntruaNXvqJGsJ0i3BF6SlN+HK8lt
YrLcr/7aHNYrrH++f1g/A1vI8kIW+3OZFRWkWiwkNZOn9vpa5jDzJMdSHqVM+aEVZOHmDVHz
vIrUglhqaxhxyKMx2IVoyH9gm/kRUg2VTIcRNRTfQhOvfmTwSZlTY7aZlAKC5/wzo26uZ8jy
jHsQsw/DcQpJ2DDCVCAs9LyNAQ0UD8Baap7ctRVHl8CkHaiG1eCFUWVVJuLmUdbfL0aIFUGL
iGF/I32IZ/zlYy3CA5lCgBth9nCsmzQ84zLzz8ssudcPJ12qJuAfYXAdV6IFD6LxOeAXJLV/
ciqTZuIFAY3DtMfIi8D5zYkGP5QNhF6fZKVIwsAdFbd06rveBSMzzAwYFpgIvSm5DE9n/CU+
R7av4wGJKEYxVXsDVSVwCYxD68sUNSZk3LQwz3Aev8Bbl3+dhs9bHgUoVLOuglEseFgHIOIy
hRuEdxYrlJg2BfizW9TXvH5SRj3xaJRINOKARCxyn6S7FGYG0F+RDSvQw2z6rVTcijz60fkc
EkvwLdZImoJIK6zwLYiMLYTAFgc+GQQjDZxQP1xs0vL66qK8j1UYa98GrqBxGXJxGxCF0mBH
tEvTa4mPfKuaia6nAuWJM+vkMHixa3a+MI2aH6vNu1lrnUji9TRltTb/mVAxf/9l+QLO6e86
1nje775uHp2HXCRqthGQgcHW1TbWlIL70tpb7P362y/cXDsx3KQMK+q2HzG1ZpXh7FYk0VyL
UD7QXBiI2iGPBudQOlXgCAUfOi2Vj/tJIYUwzURwIcFHljkOOiZ+ouG20Epmi4AEc7xwYKNS
UhT4Ck7iWKJLUIXjDPvI2hwd+7FevR6WXyAXxA6zkakBH6yYMOJ5kmm8rla5J02aArh1JSQz
DqN7KccLHniu7cVTM1ZU8iJcA2goMq5CPRE4Y+OhOiU4thuz1Wz9tNv/HGXL7fLb+smNfVrh
1JmWJS0AgGRjk6NBwuObeGySqSb286U5jxkE6ObNwD3NJs/rXv2t9KZIwZQU2txVMPHq+twz
N9QP7txQVzJUkfALTcYn0psP/tC42OYWW5Ekmo+otB9olCWP9nCNAc5AYVHLrs9PPl22FDmD
WLDA5xRwVDMnS6LgbHNTuQ0dp22y4MfgLbkFJcoFEoi61HVXQL0v6pi6m/U+KkPvLfdniUid
t7F7c/VFSNfaWK+uczZBq5WIx+1rA8aJM8frgihQEuAGnY6isvAa8HobrlntnIljBI9rby/5
riCVrw//7PZ/g4EMxfegTDMWvnJgjW6DCLBQoXoYQLHDEWOZjNidjoCAnRTYyqkUBL8OxgwB
X2V8J0gmKxyRAcUwWuqAXeYYLjfqLLBMpa3TmhBp/cqka7Qljych/Zyn4BuvTk7HVjTdw6rJ
3GZqIbK5O0HMaFiUaeok2fAz/NhDNElDbuX29MLy+aSILB2cilo52sNkjOHqLs5DsCpPm7+Y
t3aO1S2SBikVNsu5j/GE1rjg2lErTPE/iI1p6BEwzhV2jwjsTnVOCo6aoAGah06rXpl141pI
FXMyCYDBfxeRE6qiNeQixMpF9N18/S7Bo8+8mbLCfhxHSSCkmijhqXmVq1Cz0FRZ5bAbqR1h
4G8IXUKGzqB06QawdbuOuaTySOHeoqkvcYg5YuUtOoy7ym1HiG5SzxqNDuuXQ1sYb6zaAOUh
bAvWO95MkthUqes3i+Xq7/VhJJcPmx1GhofdavdoOXVS34z+AsHvKibgOlRK5qG7DruSwvJ6
Uqiu4ZPcfji9GG2bdT+sv29WbRndMbLZjKtw4HOJ9jfUIlLcMEx/7YD0Dl9dMCNP4ltX+TvM
NA6lBHcks73Hm6vuvKn9HAo/ID9buICIZi5g4hF8Hn86++SCINox1rcWDslHcT173MnMIp4P
1jC/HYBUOgDFbO4CKEkpZofY6uR8WoAmQ38aO7cBYEnKcKJQYILblMNFlPk597nQ6jgPSv/8
88RbJIJAQCQELiBGxEYuT5oJxz/tNh8EZ8PDM6AjXDJVkzuLV5+J/4zi4jGxdwNMB9+8MpqO
wnD3ceD0LZUOOcUFxxKNXVakyQQdjHOAtcMam4gKkrJgeNkMw/WxVGCAioku7CfAu6IMK3ZN
N0gl8jJEJJkpGpnGK4h5JZvEUYAMyylt9o4k8OMuxK5+I+lIYi6d3kRrWvjB0rRMCVx+bEN5
a7tIjYWcW+wX547PsERSB/XFm5wCb7+9vGRM2jQ1rB8t5QK2GXxao+2pehATE0saQEiKGYiC
7DsNY7tk5d9QXb972mxfDvv1Y/XX4d0goBlD8hZ0yx0+ZXZNqQMPchaboWpzBsdGuWOBLi8D
yFz4XyF1KIiUInBZXQoV2EyasaNPVh0VhOZv8JjqX3MQNHqDA4+U+jWPQvm5YIfScXocWUvP
alMLbc80IeFDZv3u0nn8ZMbtaKb+3Z5x3+hXg3lelCGtbtDNk7oT430qjthRHmqvzhMnN4Cf
EFxOOITl4TAb8DnlYUbVlHKfmZrGqZP3NnHbcj9KNutHbAN8enrdblbmQ8LRHzDmP00U4QQ9
yKvIL87OKn4afh/8lzy7zEWRpmHDkR5Pwp93pAsIdPPgu1VCeCrmdnQFwZYWIm3Dda+yQ7HB
9DPvUupjUUv9cuKKtHBlb8EpkfFAzqZ0uVk1vEfCr0qVdfF2ytLCXr8DhqReTx2HAY5OZ4X/
jVSDBNXPY5Ie/dTHcE64zMBJ1i94cSuIZLN/+me5X48ed8sH05TSSngBSRTW+6zyWQsy1ZEY
GDmd3Ojw2kmsroB+lHmM8vcdRMP51t279jn0lFhCw2poSDEWw25Cf49dOELME/3cLj62WUWa
isUR3DGoiZck9xLbLo6SfhjlEGCw04yu6raRsM5l1Y1Q1azEb0J1uKupRja8Cv/TUKsD1LRV
mIdWq3QpqFswhJDDqY7Vv9EiDGAq5VlgbJVldhNSy8D+wLBlQKkVc8WY001BmYymJZ5YAZmw
nNYON9wodeQmdh0TvclrT13ix8CaYYFVyCp16p2RHlekCNU0DObWfqrliqccflSp3Vd5g0ke
i7jTJFv3sOHBguhCCq3SKmvPxGnaAGhJCv5mpJZNuc/Xae7oLLRVngaTS70O6w47yYO3LtOd
QSmW+8PG+IDn5f7FMa5ABSL+Ex9g3Y54REAyenl2e1sjw3sBqqYZ6RdUIvkFgXkClhXPwI5p
EoxXeiotrWc+hKNSFnAA7T4sFCir+bDnDRSkAka+d/WT0vX7sbs2h4XpyDAt70eqbMMR2LYg
8vQueObD0zGHVsJfR9kOv6qrPxTQ++X25bH25eny5+AYhSgGJ4jTc0yx4MJm+LmxHPhGSbKP
UmQfk8fly1+j1V+bZ6vYYh9zwl3hfWYxo56pQjh2NAbAMN60yga6kVp0LrCB5biiAUkEvvIO
6/ceoUeWWmTDZUyYyJiWdy4GrV1E8lllPiasxm9iT/31e/hwdTZAePVvCceXR/br0Z0NloZb
5uM3pMXDQ0LfzHXIK1c8dQVqyAMsd3okIW11Iovrj/AGgyGEIm8MLDVPvetMMg8gPACJFMu1
HYi8of71m+by+RlrpA0QHzxrquUKP4fw7ohAx3GLR1K4hQ9zGad3KvP1sQE2HQ9hXNvmduV2
udkkKbP+tQ4bgZphFKNvWrfRIglPif5zIL0WiX06BKTPBuamIZiwjOfhCN0hg7TNvG8epVT0
4vSExsdtAqQWhuYogVYXF8HOZbOQlGjp1nF/dd71x9Drx6/vV7vtYbnZrh9GwOqtOjXuo2AE
nw+Oy0SlsJBjy5wONBv+78OwHUcLjW2RmGnbT8YNlknTf4HY8elVk3VtXv5+L7bvKe7xWAqG
M8aCTs6syjmd1v8oS5Vdj8+HUG3e19vPw38przodhpTJnRQhld8JYexNzhB33P+SReUT1O0Y
lMKqvsE6hl9gdDMCkSvuFgoOBV9H3Ir3EQI4buov2yaL/H8kpW2xCKywS+5RQmYfaYH35r/q
P09HBc1GT/UDdtB7GzJ3yTfmn8FpPXU3xa8Zu1sqo1AZBDHTO0gbvSB5GkGITLLLi5BzibUl
dtsyQfCICVSTNfXfoiSYFMKwKBQAAxabS7TTAwnAusUgiJqJ6LMDiO9yknFnVW3bjwNzMieB
nX0Qpc4x6LJ7XWoEvrM6sLqnyIpG6g48/BqsLX5gINd8NmY1GUg/x6hv0TxjI2V95djqjg2v
fdvmZTXMuMBDKiGxVV/9P2dPsiU3juOv5LH7UFPal4MPCkkRwUptKSoilL7oZZdzXvl1enm2
a9rz90OQWriACr85OJ0JQCS4gQAJgH51dTzZ4bYIvXCcik72JZaAswm6WYSXun6GzkGGh+Q0
9T0aOJKiBb5BTHxRpRBmUVYtvcA9AOtT/epDtuPyljRwcC9/zRHgRNR3mN9J1hU0TRwvk6+O
Ca281HF8HeJJt0tLLw0MowTQLYjD2RXXUZI7qsDwOlMHu1Q813nkh1IsZUHdKFGNU3yfGCGI
dpxocSzlIIprByGCypWCh86asmSSoDZlooCzkfECZVAEGMJj8mdUCs8UdTZGSRzukaR+PkZ7
BEx9mZL03JUUd52ZycrSdZwAl6lq60RiodefL98fCFxJ/P2Jh2N//+vlG9uefoChBXQPbyCE
P7BV8vEr/CpniZmookb+PwrD1pt6hpOBN04G6l8nabplfpaObiCNiCK/lUWtnKGSYr1jpzkl
yxaMBCJSAq6XcqnYByLtVlmWD66fBg//OH789npj//6JxVgfmYkNd43o8OwWIt0qMHOipef5
HE0O8yFNccx65WyIaYbITang+fPXv39Ym8/vGuSSOIDfTGBijCOPR5D06j2qwIhMW4+qNxvH
1Ez3JOOMWU3+N0hq9BEyAvz3iyKW54/aCy3FXbzG34KBE/0LJls0Mpqz3a+Zxneu4wX7NM/v
4ihRSf5onxWPAAEtryhQ3B5JXW/TM8UHj+Xzoc16xSZcYGy3yVEZIBF0YZgkSAdoJCle/vB4
wPxwVoKnwXXUwEkFFWO2hkThuZG0WayIvOpo7LojWm4xOzv1URLulV49Mt6Rwssu9Ue8aGtU
sULBPY/QpBor2ZBnUeBGSO0MkwRugmDECkAQVZ34nm9B+BiCbTOxH+JDWufYwt3QXe96Lvol
ba506m49A+yVQGq8c5vyNqB5elaKtmPaDTNvKNKkjimeyThi/XNqq+JImCTU8+htnA/tLbtl
z3iz+BqjmicNQndp7iwGehYlIRy0TLAF2HSoPWamXvIzg6DcDbcqcPzdZTQOYqKbH+dZx1YR
Jv628R4eed8a8hiknmQiwZ9MmHoIiO3M2lnrijk8Yx224av2RNj/XYcVS5m50Q1MM95FMsNS
udLZSPLnbjZNEM645zSPZN5lsKyyZijl9A8mzs4BHK+VlapxSizwcSf7DBwhUaqNA7RiZhcQ
2X9WQPPnrMt0ILRAt1JUjHmxjpNxTqwNuVK2cjOjejX2f+Z+HVdF+Vv3WQoJGjf4ApmyJmOT
SW7IhvKxSbihixwrryBoYXl76LFz2JXgdPQw/k69nDNVAU81irlAvH0t25YrjsffZ2rCvBVJ
mWYLKqAlQdlKN9QFZgNulfCoe6x2EY7vqWfrK/oGiavQ/EcrCdxqVZXqErjxDwFEbY/dY6o0
h0w1bjcs+A3ebf6NFOyPvVren8vmfMmw2UFDR/UJXFGgC15q/Ix2JTpSkkVYC8U85/GqyugK
yLy2WRczOx47M5o/B8EitNWNdwkIx1yQ1Y7IO62MT5KuTiJnxLFZESdxuofTZYpKgc06haJn
Sri7WwY/GanRmxSF7sKUNTLmqiOiTHG4eK7j+nfK4VSepcmQDRkiPUneJL6s2SlEz0k+1Jkb
OHv4k+ta8cNAOy0PHEKw02mCIuBl3GlvkaWOH9gKAmyIB4soZCDJe1yflunOWd3RM7nLVFkO
BG87ZCXJLJNV4IxNUSEZc0jogCOPlz/IQC848tS2BbFUfGZiWE6bIeNIRdiEGm0dTFi34buu
TEUj+hxH2E2mwuKleW+ZMuXjcPRcL7Zgq8wiPcqqtXHOBdN0SxzHvcu/oNX0C4SOGTOumziu
rU5m0IR4Oh6Fqqaua53STJwcIe0i6TCpqlDyPyzDWo/RpZoGal2DpClHi4mpVPIYu94dRpit
VM9JrtEyymKYjkM4OthNuVIZObU93iD+e68mYjPwN2LbZXYl760Ykngcf2EC3JiZ61oXSz3S
qeptByEqpYefvKqzyfXj5N6GwH8ng+f6NrYGGiR3JyWbKVwyWdcTI/CMU1wrXXyXrq8n1H9f
kSukEnlFcKlD6C8MGR1cTT1UsfXR4vukkI1JZAnsU9re0Sh0YszKlcnel0PkyccoClLTdZV9
s63IoSfT9agedCn92p7rWUu4N3XIEw1Hy57xHtJFyxvKbIsTaphCi4o2tY04OlCwTA1zA6Mc
AcUMK6FQ5czymqWbdpx6YKpLiM3m+VDTHx3W/GGQwxIFinHJbL/pyroQXBZNtDjWmc+VzFPh
MY7Z6OKtFNjUZyoEmIwIOkm90Pptkqax7VMhBYArvFl1nSWBOh8Egh8QHtjOj6ZBl2iKEvJY
Gx3Ccby3dMzjOPyR6sC+PEF+uLbfGqIx1JfDZWuH3WaAVeS5ib3J80nUfQKU+4vlIqHLj0kY
222Z7lbP3WlMHYZZqsIGoW/h2Qi4MG2LncEosthLnLn7qFmW0HbFJNopJHUiH59pYvua1JQu
y4IcKz+wRcADBZMWXpTieSkFRV5nPq7+zCUUZdZBor2K/XbIjG4s+qsHcsTeAUAQhQuBvQ84
XSwVpKDB5Vikn0P6iG1f8SIlTA7oAGLCtY5BX5NAM404SHUBBwitDxrkKF9sL5B1U5bhXjFf
Tur0chjZDPF0iO8YkMCAKE0XMMv+NyMVdYbfKJ1fvn3gkQTk9/YBbvIUVwalUYhfhUbB/5xI
4gSeDmQ/1cS9Asx2SnFGLF3zA7zPbsi4Cdx8Vz92dEK/ne99Gc5aBMPVIouh/m2f736YdQfl
TFtA2woS2Xa0M1oNQbgT8oW4FpLhF60vT1ldaqmOZ8jU0DBMEHglzJX5Vhgb2fXGGLvCFffN
f718e/nzx+s307NlGKRleFUf32jZPK945EJDRe4YXF27Dgst5r5xW5ByPRIYMu6oLzFBPpCU
7UGDHLIq3CqswPmtHy9cHfyqgilMPHYEwnHeLbf8r98+vryZDmHzmRp3hMqVJDkCkWiZYSWw
/DjI7MmNdpP8Cc8wnU3XjIEaixYs0x/hsNeS314isw+DTFVzC+eAthFyfF94VECAYXvI71aX
eyTlOJRNoTyhItedNZC0QQk7kPEZ7SCXzxUqwCl4rI3+TJc6HEOZD7qLFUraU+wUX6Y45LWX
+GF2Ga3V3e5XM3hJgpkmMhETN24i2wQyki2J7kz0VH4bHo66G4JbvzIdDxqyMwIRKVvsvnCd
+/L5N/iUUfOVw/12EGeWuQRuQ9grwO70NdT9SUyzmsngk9FTM1xMzinYx8u5rjQ8woBOSuqd
4WRIuyCByisylFaEKS51gnWJunoDz0yHIma7OXj7zDNbLih+oeEz5dI8eyecKcxo30Nm9Iay
tlXV4ySg9QtKjtpjLQri/qyCe1yCCRWBuF/AE8JUnjdjhzHFEb8w1XM3IjQesQWz4ixHMTMZ
k9eHsi8ypM9mpeqPITuh8lbDS31vLHuccjo8dxkaiqd+t1c7L48Z6mLT0LccmeiQXYoenkl0
3dDbYkIQStskgmPEDGVmxVi/nTVYpsCiBajona6s4U5fprH33kqKjUi/Myd4Mu0O5XND7SzO
phx5UDI5kZypV9i2ZBL9knhh5jCaeHFpMZyPuX6ILYehtrxUs3x7LQ8X3l07G+CtQopm0F9h
ni2y3fpJdSgzOAWhltP/ReAwIa+zKcWNKAqs3j/50FeaS8WMaiAGBQLwVS/CZtLTMMwIyNkv
Xp44X3nkYH5W7+o5AQ8cELHhJdDhKkgznSjmod1cqmo2QbYTVfGYDGmwdFXna44ErwMUHm7Z
61Tw3cS9U1j9xisyG2x+Anc1K+Y8bMbaIF1NlsdqNSj3Nxd+acqxxoaDfLuWJEecSnjtCo+P
oxFHLlNSLPJEYNhGqDHGny4u2pPOL5zPtMejzOyslz+CSw7QHGrLSHd5DVvSXcK5wMOwT8aQ
h19rPrMoRWpnpANYASLqZKVmkEftgZClBVclimzI2b9OB8Dz4eotvICaZOAXlfdyNISM4eoy
jiIM0pTqgaGMby7XdrBkZwU6myYOuCtrEfh/jM9m3XTw/fedF9gxun8B29qqZ1v4vnn2sJ53
8dFi6/1C+WMHw5rIQ7hFM6XGdERXbi08eKOMyTOI2lJWFvQ5Dx7FFgMgmQ2pumUzYM1tPBEF
9Pfbj49f315/MraBDx4JiDHDttmDOPdhRVZVycwwnRFWrN2leCOocQf1GV8NeeA7kcHw1OVZ
GgauDfETQZAGNgkT0ZcnFViUKr3BdV2NeVfhzxLvdqFcy5xKBQ5q1Oo1v0be29WpVR5MW4Cs
tfK8WY/JIHkEYqzyeskYngtFY9jmHX8W+OFfkHpiDnr9x6cv33+8/e/D66d/vX748Prh4feZ
6jdmIEM07D+1icHVTb3XhNSzDPScIlCDiISRelpUtdRxtLx2xZdIXpvOJBr+sW0ybWH1eU2H
gwrM2Yho2gWfKNmVTRKis1WUkKWOJ/NZThUsLMiKpAQux+empaEK1BNbLbBJ5F0Tb2ygnodi
1E9nZtAVqgLB5e2BdROxdRKptcUBRn7VGfKItJ0WVwDQP94HcYLezjDkY1l3VaEWw+xj79FY
cmi4HscMkXKdLGBx5OmC4RoFo0E4aqts3sNVYKv55HOYCNRRmGS6soVJtkbl0yXlq65msw13
l+ToxiYcu1GbtwwgVowKFsGQ8uEIQHtCtPGjfu4Fsv8dB56nmsmdSiuTknooc70paLIjgWAG
yjHQyuDAWANemoipYd5NY5c+N08Xpv9oy4Qf6k2HrjYGYzk2tHC0oKej/uGazsDy5a3WhLAw
b/VixspW9Vh1qblO+jwzs7GUP5n28JnZPIzid7YpMKH88uHlK1cpjGgp6I6spUzbXk8w2x9/
iT1o/liS6uqH83b2TrpvsW4myrCY022W2TzE0pggHAeB2xDAbZ3zSyZBPT7QIIH97w6JTTmT
dSzpO99ykNzhuRpoV2NWx5nKuaYoUXQ1cU/JrBVIgfDty9ubGI0N/PYRQkaVN/1YEaC4oTx0
nRnT2A0dK+fLn/9GH7gduskNkwReaFEzI4tJ95k/6NCdnytyeIAARFsK+YcfX9hnrw9slrF5
+YGnLWKTlVf8/b+kd86UCpk0PMsTzeR1/U7X15bUaDNi4imz5cflSCNUWZMelLblTSr1C/gN
r0IgJMOJv8Yi6saODWauMurHnvrO7oJhSg3br/E77ZUITSu+YA+1mySO2gCAF1kSOlN36QoM
lzoRytB887LLT513nk8dPDXRQkTZdEBF5kowuqHsUL/Ch/o4Yqzt3essNG1eVpYHTVfuSc70
vzO8Ymg1Rdbi0A18G1ZQYM0WzOb8KbCjQjsqMlH84s0dkc6ar+TQ7gI1125tLWT586lhiixu
ci1Eaj6uDdoZ5Rsk3qQsQPlbFHEo+0r2n5XXEDLLBfl0OAX5gNSia28LQlGVJKAX4sRejMBr
+WGWlc/uKXEibOgBkSAI0j0FjpviY8gL2x1AThPfpYkcFwt6ltqSeF6EMQGoKELf9JUo0ggZ
nbqo08hFJjt8McZIZ/CiXCsfaejvL26giTEHb4UitdWcIqtPIBIT8ZTTwAkwVrmGTemBcHfO
fTmZxy5qDkkEHibfaZ6wD1FJSYt6f8AYQRIgw0KLMcTAdeKqLh8Sxgvx7FoSiY96ym5bTkbh
FpQsqlD/+vn1+8v3h68fP//54xvioLJ82bOtmWYUYfg8dcfcBtesdgkJ+oBhVK9igH1Z1uUV
c56Safoki+M0RYXyhsccPJFSkIFfsXLImfkpOl4bendIJDJ3j4Fkv479tbrR4aExJl2ERysg
hPtTUiLEooVMMlRV2tC763cjw/avDZvtYYPd0fSzffHfv8/2u5gR4NeFJiPxL3Zt8ItjFfzS
cgr8vc5BZfCGzn9peIJyb6oH2S72gGD7941rY4yeY8+5vzyA7M72v5KldxrJiGLPOo049v4c
ADL/nugCojDGuwtwCbLFrDh065+xfnZvJHkzLHOF46xThZ5HbTyWDKCW3cjYPlZPLKN8cXa7
tx/DSduI7+V+DueU+1tsB7k28jTZ3/TheA21t+AozkMV0Bm5O7nmY7sAHbkZeb+As1jjeAF1
54bxTgkDmUhblJWa0GTBYid/84OUHz6+DK//tmsaJWkGyAiCaIUW4HRF+hjgdatcksqoLusJ
osXUgxc7qAjh59l3NGEg2ev1ekiE8wgC95DVC9y46EZYD1EcYZmHZAJMWQF4ilbFeEe7MXEj
lD5xY2TVAzxBZxVg0r2dhxGELmYMDJHPWZbehbRMIuNTuNFFzE5mRcQVZiRxBCYsr4QyiBz8
vS6EurvGsYOoEvBWEg/bu0hGK6i6DGgAeEZEeNBiqkhNhnehu2YHbo+a+rx8QvonOFUxz8cs
RwT8noo+U/lpHnF7rNxGr6Dp6mrQ+WROg66vH8hvzn56+fr19cMDZwXJwcs/jJmY5Q8f2Jhd
rzEVoHYIJAHFAZPcIQI5nGNsYQru2aeHsu+fOwLXnFq55vXkCh5PVBz56Lj17lLlImezscmx
AzqB3pyTZXBxU9615LASnHa6Xu8D1cdE3EoO8J/jYruUPKLo1Zgg6PdmE0RUaVycq5vOGGn1
boWkS/k1N2pDDkM1tOrTy6H1IYlobEDL5r0iVgW0W1J4qRWL+0pbvfWoD7K4tlTLgJOHdWzQ
rUKQjZgPvJiLuRwcJ0BFZlTEFJ8sLDwmadrDxbrQDZdkAW46OuVsydoZ3GefialpvGV4jtFF
xOSoczbH8vtCrZEc5qqaqEAYIewqfueKcY5iXeW2+uEtL1Jb2CMnGGFlTPSwQ8EvHXfwFfYg
ghBIdTEd1SuYHbG5OoZw6OvPry+fP2Di1J5ocUY3+jI83aZOfRFaTG7I3YfGc25oz1hvAqrH
xogpD+5AvnVZc7Rsq89QCMvVqxk6knuJ62BTJdWninTRqPWd2KqOhdmniigvYif0EqMuBncT
z9rTIl5XY1x3tJgFmp/KlvYMTGJfbzcAwyg0Or3Q/HzWsYCYdatsqLwkN7lZArAxcIp1uUDg
RqygeKrHBE8lLPDW1IJilS5pN3RgqE+W23LGvC0oc3D5oF8/fvvx98vbvmaSnU5MRGa4J4/o
4jZ/vHRyhWjByzc3d9GP3N/+83G+zq9fvv9QJt3NnR+FmQrqBWqa6Q3HdiOEK/lb91bjn1ov
pzYSeiLoIkL4lttD317+51VtyuxqcC7lt1hXONV8YlcENN3BjBuVIrF/nPD3fQ7am8M4MZp4
Sy0ustZksQhlmuR+U+TAbBXh2hC+FcH29tzKr4+JLJlCuR+WEXFiYTJOLEwmpXpTo+LceG+S
zZNJsiLBKZwn8cf8mwQWnviq1OMICW59dLMrMkEoSZRZKc6KHN5cZ6tCKXZJ6sG/wjpUZFuA
+XeRdtwZrNUlpJkO5S/dabCZEzkz3soSeKacwI+VqQAOesS+fJ3lQ5IGobJnLLj85jkuNl0X
AhjvyME+FVPkzqfyVFHgngmvyhOzaK6+iZm9EjAu6AEPZl66x4avsybbwy/lH54gRwSmx6zN
gbR1eA8ZKetMAu3Ob8FA+rHYCfa6dybxrJ977h7bS96UWslEunSbmYtx+a4fQxebh3yJOJho
XSjmGs3KQNGRzTYZniQmXD0b2RjgI4oUM/gRzjN4ubuRh/mfLCQiuLvl7XODKIwsbTeULwuR
5b5O6cUUk9kLhbj2rg8Hs6Fsrgau7FyhINTLShnlhXgOL5km9jEpIVGEtprDxFpziN/qyRTR
iEo91gF+gJ1Wr5ON5+dKkdk2q7yxObVP2eVUwqTw0gCRW0vGb2zB9UPo+HuTvx+YCA7RpuRe
7GPy+3gpq5knkanGbMslp67jeEi/r2aMgUjTNFS26b4JhwhyMOmb2+YJeatR654remp4wAxa
3hu2fwRPagyEqkl7FlxZl4zbBlJtzLFhE795mGr6zjEra48o2wv61hOeyXYaeoI+/74QLm+p
n9orY6/sphuhJdY6mfCYkV4kidhlQv6EP+nLswnvMKOWbfbRXSaB4JA1J/5jl7e7PBXl9diX
T9KAGwN2ERlbTJT6zC1PyGQUA8ENGDCpa2ySPfoLFOFVvPNmlEYvTYLU3DOjjjsqItXA2dxO
RRzNZqlvlvpI+sdb2xYmpmgXA0mGZuxPppQiPAgv0h0u4G5r+25+4OPH6xv4B3/7pKSe4cgs
78gDaQY/cEaEZtXL9+m2HEBYVeIp4W9fXj78+eUTUskiPMWxOdZsOG1vKNZshYSi47M95Wtj
wfL4ENYdy2wm/A3ovdrulycyAr18+v5/jF1Jd9tIkv4rOk1dZl5hB3ioQxIASZjYjAQX+YKn
dsllvZEljyX1dM2vn4gEQOQSSfahSmZ8kQtyjYjMjPh4+eta29tYJJOFpK8QdRKZff54eIaP
pzrgko+QJnr0MEZ+kjWLZbJ1GTlDdzCe+VClB1jD6qv9OD8KpqYyX8MGwHmxVrwC8LXyY+BZ
0ewaoT4RvBdYpU6BwFVZEsYUk3ORBxszGlg8Ofz28fJVxAM2ok/OE3STaW93kUIpZUgfnX1t
W5trWZGW+7FLBpOdQO0efCUGShtqMTrlRKz3ktgxwzwihm8CD5x2YzAyoBvPTZmfUyVa6QXa
lamsYyzAGJ1RIkMzhytHFfkEPVuFsVudjvY2ObeeY/NMggz6yfBCUx/5iu66nBYrZQgyKQdf
0IROtLIER73gtEF17M8ipQRL0atC95RvTc9E2RaNuUz+JPWoGzNi+6bLGwad5hs0TZFFKh6n
7Nf+irT2CgZxZ2e8nKpmuGV9jq9f+LDlWuegl1TlTaFEpD6waj36koYAZz/OWnZnL4Rl0aDv
iijwXC10zQSE4VkDdj0GjcT+k+uEVKim8Y5Zyq34zCOPUt4RvJwqKEmEwm45N1twWz9TBqZx
goDSG8a0ejgxgFJrXVdmxVifdkhNIoq68ok6xHES0HrzxAAqJqUMXlAvNMpCP7wUMTHK7yOf
vPM1g9NVFZma1xvP1VxMSDh6x9XTtOkmhHlFTXUBV4kx6EelU8+oS8M+TOzN1e0ThzIwCGxU
BY1NKU9tARwEXARxdCY3j/nYyZayCuXYoxeSHqQH6fv7BMaitBix9Tl0zD2LrX13IlvbgPdV
a/2a8TEsyKZaBcQZt/6BPUZP932Y+z1P6SgjyKaf+o001bw1ZVdW5thgZcUsrstbHrlOSB9K
j0YQ8irI7L/c+B5BT8hA9xd4pU1o06Qyf4t2rimRlZNNKRNj8Al6EtmWQ+mo0qR6NNXc8QGB
1VM+fZnto6boNiPskGk+9E9l5ATm0JPSnkrXi31yqpSVH/r2adunfpis6H4WuP3cVeTepLua
bS2vWYWg0RVfmppdEaFOVRI4WkPr57ULzWxk/Rh3oZG88+muMm9PQUKatcXqJfzh40G9sVJO
iGoTU9PoiLgUC0MV3952FCQAriPCabTBvtGbaLyMohIXpcmQwVM86cHVLtfUAtn7iU0VuRgs
Zrftkvnj4sldHJYp1o8LtCnO6CK1KXu2pQb2wonOqg6jMzZ+UJpt4UFDk7AzXeUCiWQLk94C
obAS05VFxSohb8qqPJPyZWJZ6KtCgITV8If2GiExjbrU9QoYStqCzTrQjWKm0Xy1mGVc0xlY
Lt5Jg0JTJVQksiO+BXFlDyEK4slLuIa4lnHJ6tAPSeVFY1Ieby+YKmVIUQ2EmE8XOmLH0Kdl
bYUxDK83b8FLUI5CqgoARV7skkMUdorIP9PVQ0Ejph8iaUzUwaTMksQeOf30PV1FQvJrjA1f
hRLLEC3HTe/W1wBXRL5HXXhQkQlljUOBhApDV+HKvSqFKYmClSV3fNhrg1a2ZWxSW24Wuwot
y8ik4tzOQH51q3/3tRZTNTUNTZzrw2tk8ujsJ11eF5JUDjpcksqTrGyNk7YudOqNOrahEk1Z
RpIkpLsbkMgyNav2c7zybi0bqFG6tyYwMlluIqlMIe1AQmUiD2FVFllXXpB2XcgvgyUgZasg
JEd9u0nOjmWytZvDl9wlr6FKTEdYzekZJSB6qRfQiobUq3MLIIzjXVvtrtZnOpDPkPNKPhan
NRrXga+Ho+KGbmGQny2ocSn7or6ni54U+qsFowhMltcHiUNu1xfDA4FUR9tSyr2qZZYQfSoX
vzkBeFglcUTbpSQu29G6xGKYFSSs3IauYxusoxKwbhq8Q3mrIoL32OWb9WFzvT6Csz2RQrGh
XciQ0IyGYyXb1CUcPtOJSHECoMQLyB1dQHFNQaAxh27kkw2Herbn03N0tCB4ls3jSlg1nYme
zAJz7dWazBS2or0bc4W6GG2gtDFfYRPGhuslXW5LETlQjyAItiO+SrvBMyrrV6ui6+0KolgE
FETT37WVrmTrYk0FI+5SPapSOoyPzabfZdGlCjoFNZOdBXZDnadEtLMOzaMS/VI7gUQzQlQL
GD4dU0tS3tT319NyVt83ttQ71rVUcpmpSvEwJbvFdq5u5lRUTX29sl1aVVRdRVuja2TqEk2a
6x2HlLrpi02hXMvLhZ8vyfSRZwUTZLlfJ7YBNjxUh+pPVAK86KuENxKV2MW+/LIVaVUOXTSw
RqVqFwkxwykkBw9bDVBfFI0kmwN4RG2RT8bKGxVXyMOmwGeQJrrOuqPwXMvzMhfOmJY31rPV
5/3vn/Kt/KmxWIUnnZZixzD2Q3+UGBb7k2BBj6k9Rne48NCGRMHcsUzErbrFx7Pu3+CaHypS
rAqjuEItf4H8elhtnjnhschynJZHY3Q1dd81Zbn4hz4+/fn4GpRPLx//unv9iXY2qZXHfI5B
KY27haaaNyU69mgOPdoqg2tkYNnReoN95BjtclVRC+Gw3sruUkX2VV558N/0fUv+iG1KxndD
CRmkJR0yY2Q71bAKyK1JtYM0Chf/imYr6U0Le8LnA3YaWxwTtc+PD2+PWBfRW98f3oWnw0fh
H/FPs5Du8X8+Ht/e79joLFJ2WyxfqbFWTp5A6k2pbPLE/O3p+f3xF5T98AbN8/z49R3//X73
20YAdz/kxL9pYwLkPU9bFhc6MV4EHfqskT0sLkhWje1XbMn8KlaWDT3U+narjI5xtoy3YLg5
+o4FeXo5g/CXSgN/cfG7nhCVfxyS/I8o0GEYr0btC9yHUmJCy7eqRtLDy9en5+eHX3/rfVl0
4kngSL17+Hh//a9LV/7j77vfGFBGgpmH3qViDxUTerxQ9/Hn0yusLl9f8cXZf979/PX69fHt
7RVGDrrx/PH0L+U60JhFfzROjyYgY3HgU4aJC75KAkdvpD5nUeCGRtcLuqqQjUDFWz8gNe0R
T7nvqw+uZnroB5RZaoFL32NGPcqj7zmsSD1/rWOHjLm++o5hBECGjGN7WQj7K2O4tF7Mq/Zs
ZieEtHW/GQAlD1H+vZ4c3adl/MIo36ebSmIs0p7lLq5u5JTLxiLnpm8D6LxO/8yR7JPbRhyQ
wd8WPFLfaSmAPn8JroT0JzXia3T6oVcWiGFEEKPIrMaeO65HK/bTyC2TCGoaUabNS/PHrms0
2UgmBoawMscBZU+cZ2sbKpGtJXJozsVjGyuX8ifyyUucwKSuVg7RjYJO2bQX2CWm9bE9g+xL
2xin5mPnlaceFEujEMf5gzINyNEduzF9PjWtAmcvTAL6ZbY22qWyH1/oGSDKk98HSWTZc4s0
MWJ6vsQhPez9K30v8JVP5RfKMXgVMk4iE1r5yWpN1GCf0GfaU1fveOJNRiilDS/tJbXh0w9Y
tP75iNeP7zBIBNF9hzaLAsd3KeVE5pgWF6VIM/tlC/x9ZPn6CjywauI5tKUGuDzGobej7xxf
z2y8Qp11d+8fL7CTLyXMV6c1aBQOnt6+PsKe/vL4+vF29/3x+aeUVG/s2HeM3q5CT3P2OEkC
3rW1EuSrqmiLzPHID71Sq7HNHn48/nqANC+wBZmRdKfB0/ZFjTpSqdd5V4TmoltUZ881FiFB
XRGfh/cgKYPYAsdkZitj/gHVtxTh+7T3vYUhpP0cjgzN0fEYecdpxr0oIPoO6SF1L3SBzW1X
UI01B6gxXUQY6cugyWCXcARsLHyCSohmzTGyvUFcEpIXEySYWCGRvrpWydgLjYUQqMr58YVq
6Yv4es0m75waNUlCQoJAusWL6cywisintQsckpVc0X4ZZ9j1Ezmk9rQj8yjyjElS9avKcYxW
E2TfEB2Q7Kq3IC5ASxuSL3hPF9O7LiFxA3B0LIcvEofF7LVwuFfz4J3jO21KXgsfOeqmqR1X
8JhLcdWUum48SjWxOyiO1kaoy1haeUY+I5lo0+5TGNT2JuXhPmKGfiOoxrYB1CBPt5QuEu7D
NaOfLY4ceZ/ke1qFoDcGsWeUQKPe+cwiSJiQd7VnQST2Y2Nxy06r2CX0BaRH9s0B4MSJh2Na
yWKEUj9Rwc3zw9t3aXczqown9XbxDG9NRsRkxTsyQUQ2n1riKFC0hS4WLBKFjmlGx0O92AjT
j7f31x9P//d41x9HMcSwfgl+DOXTqi+MZBSUfFf3+U2zJcpWa4CyLyWzgNi1oqskia21y1kY
kx4nTK6YLqHqPedsqRtikeWjBOZbMS+KrJjrW772c+86rqW8c+o5yr1QBQsdx5ousGLVuYSE
Ib+GxoaJfkLTIOCJqi8qOANBzrL3mf1PnnXKbJsUNg9LswnMu4JZumkq2rN9Qo4td7NeIJY6
1kZIko5HkMu1Q4WpMge2cpxbQ5kXnhtaRnLRr1zfMpI7WGxtHXkufcftNpYhWbmZC20YWFtJ
cKzhGwN6hyDWofHN6+vr8xtGEILl7/H59efdy+P/3n379fryDimVZc9mUBU8218PP78/fX0j
YlRW56FoD0dfM3pnskco+CE0oyHjysEH0rN2YIfzHDGT7EHBJtyeVtUNBp6XGzR0Ez2MTPuK
T/Eg1cohfbNeICJnqGcFCl7ftE3ZbO+HLt9QhyiYYCMOeYgn8gvYHPNutN27jqMWNzKUOROh
oLjwomUpCAOaDjBKsmFTdBUGQiRal7bPI7jNqwEfwNpaxIZhOr7DgyYK5elO+G69+DSc7BZ3
ILvQqjimGqOmxo4cg3Sm86J05egvMx0j3OPetUrO+ncrsK4kST4DbXUbzRxdpQgqs8FCIqtN
th6ygrejx2wJOG5zbTIcoXn1Ks+eCSydJbwPZKdhl1WFmplAymPGVXLL6vziIiB7evv5/PD3
Xfvw8visNb1gRJcES1Q+IqeB8QMfvsAqO/RV2IZD3YOevooo1nWTD7sCb5t68SqzcfRH2IhP
h2qoSzKXDOOxVXozjRh+rqWhRgZT4FqwvCwyNuwzP+xdywuchXmTF+eiHvZQV1jsvDUjb5Eq
/PfohGNz78SOF2SFB4qCQzZCgYHY9/gHxC83JVnquikxSK4Tr76kjGL5lBVD2UNhVe6oEsrC
M7006bkT0nhRb6ehC+3irOJMPTGQGj5nGVa67PeQ1853g+h0tT2kBFC7XQbCwIrOum6ODDnF
wCINPCRvFMUe2TAVq/sCgwizjRPGp1w2WixcTVlU+Xko0wz/WR+gsxu6fk1XcPQOtRuaHt/e
ruiQuFICnuF/MHJ6kF/iIfT764MW/s94gwHbj8ez62wcP6jpDrXcDaUr3rH7rIB51lVR7FoC
w5DcaIe+WuGuqdegQa9h9GU+WdHLBZsoc6PsBkvu75hHf4PEFPmfnDPpeczCXt0qFlkm2eQa
W5IwZ4CfQejlG4ccTTI3Y9fLbTaQC82SF/tmCPzTceNuSQZxg6z8DEOrc/nZUpeRiTt+fIyz
0w2mwO/dMrcwFT30NMwl3sda9AQb043uwaNZlp4DL2D7liqyz/AQGcbVie/okdV3h/J+2oXi
4fT5vGV0xY4FBymsOeOIXnkrygS8MMP0b3PonXPbOmGYerEnmzO0bVROvu6KbEtunBdE2YnR
k86vbw9fH+/Wv57+/Eu1hWDiNKs5DkpLddMdtHYP2aPUpL4KF4LftJoDqbbFqx5FSFgkYbaX
/Spytc5XscNZ26FwDx7muxqypJ9vGQoyILr2WXvGpx3bfFgnoQNawuakMqOQ1va1H0RGJ3cs
y4eWJ5FHrAkXkDTsCjm0wDFZJNpTnxEqVg7pcGFGPV+TN0d5YulLJb9+V9To5SmNfGgUF7Z9
6xrbN3xXrNl0Bh3ZZAmNTauMhsZGfVScUvtNNtkSKFDYWTZt4Bqth66R6iiEoUk+G5/Ttpnr
cUf1qoLYePkQ1glWnyP6bonOFisPfBU0ay0AJos8o3QRzn48tLVNLJx31S5rkzDQ5FIFGj7F
nqtNeFI+n4jTGbGxlpgLgaLnVKZuAyo3ToCyRCF5nOfW8YbMWLrlY/O+ZsfiqFZ4IpLuybCJ
u7TdHuwj/JjbxYY5IOvmrA+2jGv6S4nLyD21oIIghvf9ULcePh+Kbs/nxXXz6+HH490/Pr59
A00u009QQcNPqwyEPKnXgCauLN/LJPmLZ81a6NnEV2Gm8N+mKMsul+OlTkDatPeQnBkA6Efb
fA0qgIJw0PjJvBAg80KAzmvTdHmxrYe8zgqmyIYArpt+NyH0V63hD5kSiulhKbyWVnyFcqUR
iFm+AYkVel++hA30iqUV7CIqM7pWLovtrtcKR87J7EA7yAAe1GCxMfpC9YNoDpHvc+h14ggF
u2kK2EJ/JJOvr8PvZqP28XjtVav/cctcatUEaLtWxyX8xpuhfwQSrT12nlooSCtoeeNaOdzN
xKtKWxudKtiPacMxovSjPGzbSr3FOJFAmEvzkn57grVBJy90hsW6GrbnPgjVd1f4/ZP/VTrd
5HpAHx45CqFNRbuCQYY1CAT2Zll3Dcv4Ls9pWzJ+ihAELMMelD1ffeGLXVSxltrnK3y6Acu3
ZBMGyrT6zGdX1II2ult8+Prfz09/fX+/+487UF7n6+6GgRYVW3Hje3rKsZSGiBQUaKJeJp4l
1YLv+8wLfQoZX1ga5Iv3skvrqJjFd/bMsnh2ItKLN0anMqedbC181udPCwvL8FGvQ32BgGIS
ojxoX5KNLiIoSLztd5gVWtGfW4IIQjobUFgUd0NS97A6azpG5zw/kLyaN/WybkGtISikyh1D
z4lL2rfGwrbOIpf09CW1bZee07q2NJM+HmZHodcnz1yKOFqWd5ylNScxb9wwXl/eXp9hE5kk
uunWuTEVs0NVCY2MN4qJVSbD3/JQ1fyPxKHxrjnxP7zwsup0rMrXhw1srWbOBDg5OB/aDmQG
NegBxd01o5xFr4Zk9tMm37N9jqcc9HnV9RZbigBZviFzME6kljS8OdSZse/vQHozemRXSIZZ
+LGEGei7vN72iu9vwDtGGTsPRjZLFL3xusHPx69PD8+iDoa/UORnAdoVtcJgT+0O9E4l0Jbe
hwR2ACmx1D4tL/fyMzykpTu0IerlgvIOv+4teafNYSvHMNuJFx4pqCNmRuII05bPfQtiC1cz
ghbeNnU3eri+CP4zbdhsVPYcz+10WpmPfkmVquRf9rnti7Z5tS66TE+y3XT0caMAS9BCmgNl
z0UY1CdWZoWeJdRBWGstqfb3ufotJ1b2cmS9Mev8JIzERn3vO2OuSnCB0Qn1NEVvG0Kf2Fp2
n4qk/lTUO6YNoX1ec5Cz+0ajl6kW3EQQ80wn1M2x0WuFGjxOCGvrg7pTgNJw4Lbag9qKgqCe
ccXuxTs4SypYt8RY0wZ3kXYNbza9RkbzW5cbg746lH1xrZeVIKNIaLo+36sk2KJR+4ZBJjWY
RBxHvVJum/esvK8poUDAMKdhqzNSjWQQO62NPbNcttXrJQxjKRSQZ9xWflpQFkrBUbJaWJZT
ba1AuwfvtSN2iWisDGLPO6s0zgqj8Zeo0zIRDRcY4kD/At7njDqgn7C85LAV5MaHQwltaV0/
ukobI1s83mG8UCPBzUT4VGv3cdjn+0/N/ZXS+sKcg7Du8DynLB4C3cGcr7TlYdcdeD/GGFsQ
mUqM2gPuqUPLqfMCsQIWRdX0xrp1LuqKClmK2Je8a/Bj5TQzTWsoOdV9BvutuWSgr3T07nWw
TxBWtvTTBmrfv1yLIAUSNE+KJUFpqIUKSnGTFfRzNj1TPc+Lf6WJn+JFfzTNLi1UI49cF+S4
8jBb9kbSnjqef4ZNulL2qolsVaTRf/twYMqz9SoV71dngQp+/86z35Hzbvf69o4C5fzQNzNN
OZjc9rQaMZ7BJ6ulCdIwGTY4jABO4YuNbPC9dQEKy32fD/wEspnynP+SoC37jSKbLBB07mgd
vVZJ5MrxX1TmgE2heensecu6M+kS+sI1RTCmck9r7mtxdRdQ1AmNzVdzx2AYdHrDewLBw32L
i/yFA0OB3OCZwz3fYNvg3/+n7FmWG8d1/RXXWc0s5o4eliwvzkKWZFsdSVZE2XH3xpWT9qRd
k8S5iVPVfb7+AiQl8QE5czfdMQDxTRAE8aADmfc0ZV4ssnjbkitHTxuNiHKzj41QC0PLRzYT
Vx4d1uTiK1mpg9N4l1dJbtXgkwFelVFThQy+1VCjZwTClWCrIXZ1AOMK4BRuBeMVwxCh/FRh
qhwgNEu5kvaXd/XO6Ppdv7V06KLYZss8K6xdATgRjn50IeC7Te7P5lGyox80JNGNbw3BGv/L
qaOG9w27HzabwjFGc1vtDTaU3Fqcac1uzfpgTXsRnaign+U9SNrVCGuANfbJdojLMKBcYfgS
vdO0sCVcyto8oVJBVdldJwRKCP4SikYKJoJWkBguZYPoqAa35ehFgyJqBTz7sL5Ds9JqNZgj
oj7IuoDzz2z1HQfHcet6uieggFe+4wVz6m4r8CDyFWZZzA+1ILQCihkZfbMTSRn6qiH6AA1M
aLtt4G4Mk1jpwiFH8iDT1NodsJ5RHvek8KiSwrlHqyN6AodUrXK0CGFo1AWsyZvqZ4qY480C
LnCH2+2CVuSrRE18O1anSEptdlBCjWhAHEWAeCT3KQEMrIGrA83JoQMGPLZlWerbr8eSOekH
rE9+RBoOSGwU6CY6HXhGJg7vsJrGexinwOyQhFJDhajQNz+Q0cHxUrY1d7kZaYwDzSQnPdAa
cSOSI4f1YcfG+rpIvcgh1nfrB3PqFiJWr4hAatRfMbNFVdbuF2qwFrFFkxij3Fl1tkUSzF0y
JrOo1UqnoYDn9sogYsDa7CD4OY7ftPRJx5H43hPOzR7nzHeXhe/O7V0sUcZzm8GIJ3+d3yb/
eTq9/P2b+/sEbheTZrWYSMX9B2b1pq5Rk9+GW+jvqqgvphjv6bTuTrAdntphHM9Tp9CRVMU4
F3tYZmPjhAHPzQXA0zwMXMBirDMCqPlaiwGtfXMtsFXpu9xXVvGuw6gO7fnt4ceVA69po4Ab
5/Tz0b6dHh9twhYO1JX29qGCD124fGNlS+wGDuL1hn5M1QjLlrr3aCRrEO5bELjbkZaQJgMa
RVJvP6skTtp8l7dfR+qQXI8uvkv5qC8tPr6n1wvGs3qfXMQgD4u7Ol5EwCkMVvXX6XHyG87F
5f7t8XixV3Y/6k1cMbSC+aw/IhDcSG/quFLzF2k44GRamDTjQ3wmMVdyP4ZmqCO96e1Xkh0s
kAfQW5lcPuJini/Qip7S7GdpnBzgIMAUWSxptoqjMEdZsfEQqraaUwkrJOQYS/qmwKks5YKO
xqyY9N2Vo+s6mY6YJHD8Hp+TiB42baI7QCMATqppGLmRjTHEbAStk3YDXSOB3cv/v94uD86/
VAJAthtVBaEAx7+yE04AsNoZ3k0i2lILo9WZxWmaHPwG7o1Le0JMAm3xqtDDNs+4c5bZFoy1
aPqO9do6bJLFSLuvqHRaHS5eLIJvGanfHEiyzbe53loB30fqjaSDyzyaxAd2mgmJSRkaplxp
AxLMpiOfhrORELeSZP21jIJwJD65pLEFUIsExJdwPpLTTKEZSf6lUagJwDSEkepDQ31Sqhkf
X2IaFiT+jBz1nBWuRybf0inU6KUGJqTK3QOGTBUg8XWyjIybg4ZyPpkrTuSH19YsJ9HSfqiI
iECUU7fVYrVr8MNd2hIr3Uzh0yNufe+G3MAijPKVltsJpBSMkRSqn+MEw6rPqQoZXKHnDqUI
6CiWIKH5RHUN7G6qGQAPIqoRQK+bP3WYrPQd79rqbXa+Qw0jwn1y6TYYP//aAmBBaZfHUuAy
USdUYiSFUb7JDbErfFfLVXoUXW1+SzAl3yOjJirL0BNBxIiuwWDMk+ssrdmHru6DJqOV3l/g
wvJ8/TxIyg0bYaXeSM4uhSQYi4avkJARMlSOHQWHZVzmxVd7kgR6jNWPpV8ZSGZeRBuOqjTT
f0ATRdeYGC+FYIwp86YOfVJZNoQkyVW+xtobd9bGxF4pp1EbkewYMaT2VSUIiAO+ZGXoUX1c
3E4jh4A3dZA4BGvAFe1QTbPNHUkSOt9NNySJN9uTss34e0tH8e1rdVvW1jY6v/yBd7Grmyhm
5dwLyV7Jh45riydf9dph6/MlKw7LtgSxPG6ol/t+ejCIODFrPLb4Dn5ShZvKdOu4SOwSs3ru
7wlBb9dMXXrkMUlzA+ND505RiFhcEgtvsE+zSt61IB9cXQ7ylcLeBrtrbeEZ7/2I6OXw5mjP
VAt/GQkt7VXYltdGfMgfbH355dt0NhKvbRBbuYb6MxpTyWWeRkY21+G6sVIv532T9+TUAPiw
u3bosWrHiNK6d0cT3nozl2AyVv6fHj4LKUmVX0/Jg3bmj6V/Gabu6inetKlraBYH9mC+lfdm
nkwEyvpEhKDcC3qiFFOFW5kPhANnGWNSFyvYOftaJei6o2ajv+NQtflb+bndZ4GA2dplg0uS
2iDEjisaJEEXAIVWVkiidRaPWKwYnVO0Lds94WrWdUp9CoAfh1oymbzR3ioRlWLcEIGiSzrU
zZbpEcqXOWXrgx4ghyGguQI1A20jBJM0005ru7SmrQF26w2G9DS+kxFGH97O7+e/LpP1r9fj
2x+7ySOPSj8Y9ChhP6+TDvWtmuzrYkvPHGvjleHONHx3bSWjn3CZ9Y4eI8/dWVHE6CLdkZFU
G2B0h/3GndGindBuH5KC1tet70C+r4qN/jIsdubT+eHvCTt/vD0cbYGAa5g17yoBqZuN6jEF
9TJMHWM4KMm3cfENsYo6exBbkS2lDPvLgaKTMkZLT+8Ocb2wy162bdnAwTb6Yb6v4dg5mMlo
UfQI7eI2d8VoSU0am8XAET7N7VL4aTRajhAM7K+qOilnXVNpTa2Q5EZLljOXivzemIlbS4jb
eeFdqaHcs9HSK1h2TWa3G81PoL88PWv9WdvqHDZgstbSxwhMlzZ4QICos5uVXCGaJ4ppadyW
GOMj194nBJDRLyRdFTJiRH1HSaudNGvM8WZfxQwuDMzuednejPYXjYHMomQzvqBFkNl+tpa7
MSmpt4geXbZbLUdXlTFoHvBXRYvQE7d8AUhoJrsmU/IY87JXbdQjHxdo2UQEzNWubhJMvgeJ
2tBxmvvcto2+GOWso9RHfBy3CYyQS20UbkeOgRFwDMPpgjyASVbYb/84LxYbRY7ERpYapE+e
U661TSTk74OPO7W5g+WCn9GymYxDZVF0JWGqotiodp37IexwEwjyYg8cxkH0wtK19wTcly+u
E3zwpMYYWXadJkZtYiPCF6rZHaz0pExvTdJtFaL93EqH4tI3G8vbgoVSPBoOvK3MZaOBhqcl
ET3v+HJ8Oz1MOHJS3z8e+WPghFnWv/xrFIFWbbxQJUkTI5gM+5Sglwf/rRj+ftYehUfyUrnQ
Sb62dHjx7lnHjLUgbmxXis3WZimotOMKjRpF7cR51a2/7rNh0gInt6D+3DkkyR0Jj2u7blwS
VtXi1en4fL4cMQkIeW3I0A4drTrJfUt8LAp9fX5/JJQcNaw+7VqDAB4FkRoSjqzUux2H8MW5
kk4JIxgrTSnHC5mY7onW4n480anuLm/6ODbAol6+353ejkqcBYGAEfqN/Xq/HJ8nm5dJ8uP0
+vvkHU04/oI1R1hno/BSl4cUVkVe2fet+Pnp/AhfsjOhLBK6mCSudrF2ZZDw4gb+itm2oZ5P
Bc0K2PwmyaulatraYYZmmcgsu4Is1TKHuIFER0QPxVVW76AiPfGQGSh7m+kdbQpWbVR/MYmp
vZh/qx0IAiXbSa4Eol2q4DJ38esDGRWjx7JlHyx58Xa+//5wfqZnspPTDa8xLIPbPeoaHA4W
z6D0AYEf9GWplwGYNvrkJZvHG17t6z+Xb8fj+8M9cMnb81t+S/fhdpsnySGrVlqIkS3AWLG5
0yDDD5TfVtuW6RA0LdYs7OCSGnuKi2/f7s9aJ+xP/qfcjy0wFCJWdbLzRnahNuhAHJXk+FlV
iLdzuMf8/EkPl7zj3JYrNWWnAFa11kmiGF58xtPETYrT5SgqX3ycntCspmc4tvVT3maqdSH+
5F0DwJACUMduF00G/c+/Zf+eDo3655UPKcva499j89AJKxSrAlSa7UAm0mUb2LpNnCxXOhST
Bh/uGp5DVSudJTWItPQNqkd/tgqQsiytctQwwmYneS9vP+6fYHuNbH9+YKEGAd8EUy0CjzjL
sio/kO6eAs0WufVNUZBiG8fVaWM79XPMbZmPYDA1uFUJAmuKBXbYOjWKGXKHq9C7pGKs49K6
INyoO4EcRn2PytvVNdlq1WgOZorMJab++s3gH/AJeWelroQbmSwVrga7TdHGKwx6sK0LnVX3
ZL5FNlppSz0JbblWQZxU3VG0Pz2dXkyu1A8xhe1d+v6RdNPfxnguzmWT3XY1y5+T1RkIX87q
FpCow2qz68LNbao0wx2hHAMKESxRvOrFxuOJRoInIIt31MZR6dBmldWx6vmlFQOSfb7LzE6k
5i7GIMLCq+aw2DKl7+o9lB84Cppo2jBuh2yXVa3dKg7u6qo2Sf0JSV2rtwOdpF/X6VK5ymX7
NuHPf+Kg+Xl5OL9IWZeSYgX5IYZ76ZeY9H6RFEsWz6eqIYyE6wb1EljGe98PAgremYBbCLRk
suB1W8ncdWaLBU+CM+NQ5ozil5KuaaP5zI+tklkZBOpbtQSjn6hpLTugYK/Cvz6ZnASzoTZq
4LdUYwxSY5Y2MZmxVKCzhTKTUlAEEWqpbZRF6x4KkKlaSqhu80OclbmmdT5IgH6RXdVkQ8od
XJtxpS22hmyHerQqaw/JUofnS+2pCF8nI+dQZXTxeGBroQbjCOQmGCzoj8bbpa6tqQ2PNOVt
ATUnyzLxcNwoli0VkKpzr9hXwdTDJLW63azYcazZUOrKXF3l8OMgAshQsEOyIMFpGY/BTdlb
waI3GEjP29Ks7GaZLzmVDpb2ynBHoloo/lwy8huLlNfKkGH3JJ5Kwu6sOFsSPJQ4yOta4zgL
sy/NDw/Hp+Pb+fl40Rl0ui/8qcJPJEDPWM2BM88C6FSLMtYSlcLvqWP9Nr9JgAuJaHE0VNIr
rzBeRD/Rp7FPB/Es4yZ1NHWvANGWTRxHhhu/2bNUMZ7gP/Xu3OyTLxgZXs19kvier+cqKePZ
NAjM5IEKNgzNDyI6Ahdg5kHgWr65HGoC1EbxBDWazReAQi+grJZYexP5qmEAAhZxoKWkNBaY
WHQv90/nR55t5PR4utw/oUsDnJPmEpw5c7fR1uDMm2suawAJnRAYIkgkfaxT+m0pnc3npJo6
BQa+z/FAVmpCtYSAGIqMuIyD1EMcWQ0qDrhL9yhFGs9xDa9qg6BjitUuKzZ1F39LdVuV/NJo
Fj5pFQ2KE3SBXEmw9wK9g+v9TI3inFexB4eCRpJXeJdKzPpAKJulI3UJ2229mKJO3MgsW1rC
mGUXbeJNZ6SfI2LUBIscoMovINC4vpYDKt7roarLpPanqmEKjzqF2QHKNgxmM7Rd0FpZZtXh
m2t2qIq3M8MxEJ82R4aES007nB7TqUtcL7nBz2G/0argmTpWX5uNOUBNhfbF0UhdvXzKMOy1
Up6wzNO7wW3yDBCfVwydKjwj1Z2NJ7/ohcpRergJSpcsLUligTH61fL950Qu1S2OZK4IEd3B
hPk2TLJaN0BDhPLNNYB3y9B19Fbu8yKvYNy7dnTc6hpnUnnXElMjTbIuN5Jy4jYZS+LCcEfW
i1c+lprr1ye4FurR3spkKo24e7VwTyXq/HF8Pj1AE4UZk64LbguQ5Oq1jEpDc0ROk33bEET9
eZuF+smNv/WjLUlYpKegzONbnHjqxEhSmB1jVXCYViS2J28wMhNbaZ6MrGZa4sdvkbT56h5F
zSERpl6n752pF0zQJDk/P59f1Hs8TaAKWCWTg8RkS8ULBqu77+xCbaQmsbVGgTRODpVMCCBW
5AWzcfN1RJ+agRNqVs8A8SNKbAHEVI1cDr+DuYf+kWpUPQ71G6PEcB6OyClpvcEorWqsfzad
elqTujMhjUcitYSeT9r7AU8PXJ3pB5GerBO4/HTm0fIK5z+xzaziZAh6NDAdAAfBbCRhKWcp
Vvv7kO1Xpkqou2Gdff94fu5CWirKbrR945E8s90qq4ylIdQ9HD+OEbK+9s5lkYi7Ctl6q20y
Hvbxfz+OLw+/JuzXy+XH8f30X/SvTlP2Z10U3aOeMEvgD8f3l/Pbn+np/fJ2+s8Hmgmqu+Mq
nfCg+HH/fvyjALLj90lxPr9OfoN6fp/81bfjXWmHWvb/98shhvLVHmqb8PHX2/n94fx6nLz3
3LdnkitXiwrMf+vbfLmPmec6Dg3Tact662vpmCSAZBxcaPBBnmU0Cr1pTHS78o088uO9FAz1
eP90+aGcOx307TJp7i/HSXl+OV3MI2mZTacOGRsm3vuOq6XFFBAtpQpZvIJUWyTa8/F8+n66
/LJnKC49XxUm0nWryonrNIHWaM+IAPLGzMvXLfM8mkus2y0ZtYPlM+OWhRCPTj9n9UMwENg5
Fwx28Hy8f/94Oz4fQaT4gHHRVmJurMScWIkbFs3Uwe8gxg223If6KV/tDnlSTr1QkJIDgESw
XEO5XGk1DzeSYmWYsr21aCW8v+x3LGq898JPnMdsficEo/RLemC0PiBOt3vXUTNCx5iMU/8N
W0VRKsV1yua+OnocMldHPWYz31PX12LtztT9jL9VKSuBM8mNtMFGEHkgAsLXHTgTDK9DHX+I
CNXb/6r24tpRVbICAj10HFXJdctCD67DanbtXnhhhTd33GgMozoTcoireyZ+YbHruSO+WHXj
jES9aZtAdW8qdjBN00S37Ij307GUsQKluWlWm9j1yXHb1K3v6JFyami05/jOiNcCy10jX6CC
UJVqrL3xfXWBwYrf7nLmBQTIVHi1CfOnLsVQOUZVy3Vz0sIMaM64HBAZgJnupAygaUDmkt+y
wI085dFpl1SFTHA8SEoc5tOm4Lus5De2K8jZCLKAezA1ud9gvmByXJVd6OxAPLLfP74cL0It
RZwQN9FcjarCf2sLN75x5nOSjUglZRmvFOFNAZrzCDDfHTlbyjLxA49MXSUZJC+RPvC7ykx0
txrgihlEU38UYV/KENmUvnZW63Czc1/jMl7H8B8LzFnuDAGoiRBT9PF0Ob0+HX/qxiB4Hdtq
1z6NUJ6OD0+nF2t2lfODwHOCLrjN5I/J++X+5TtI7y9HvfZ1I62PKSU+D1bYbOuWRndW4FdK
ECRXCFqMXVNsNvWY0p/HvOiQ5KDTvZRH5wtIWty/+v7l8eMJ/n49v59QMKcOVH44TA+1GR+x
33mfl6YJ1q/nC5zlJ+JBIvBUlpYyV+Q7V26CU91FHW+CDp3LHDCB6r/f1oUpb440iGwsjKEq
dxVlPXcdWqTWPxE3nbfjOwoxBBta1E7olCuVj9SerpHB39ZbSLEGzkmnOElrEH8ohrKu1fHM
k9qVQvkwoHXhuqPvE3UBbEx/OmBBSLJIRPgzi2EZcf5VqM6L2mCqtnVde06ooL/VMUhLoQUw
pUhr4AfZ8eX08kgxDhspp/D88/SMQjqu9O8n3FQPxIRyEUgXXfIUszLnbXbY6at34dIiX52r
IcebZTqbTVUhjjVLRzm62H7u67n5AEJ77uKXWtgTPLt9h3x83xWBXziWYP7JQEj76ffzE0Z0
G3sAUoylr1IKhn18fkUlArmBOHdyYmDGWalbuRX7uROS0pNA6aykLUFQptJxcYQWPaIF7kvm
sOIIL1VHi2p7P81qbiT4Ibi6DupCJSkgbtZAgEAoXOhgaUhrALOmyLX4kxw6akGL2M7vyvxK
eKuPfCS9kfTa1/li1+qgvNy7FsSbGSCe4LRYlWYT5PyPtIGH7PT1ojrVJEtaC4FPViaQMRtC
ZMtCFDfO1PJ4cah8hDKge2b2hduQpOWYQxaS8MCakTGlwvVJKwrfl0aK6KxA2nprfTWeeJ6v
zz4bgvYVcLwoqQv6MOIEo8EhBLahjCY5SvXzEoBSDeLagzSvO4Qa7vQclGeJbggroeuGdqfj
aD2isQTZ2aQUvB02QQisze3k4cfplYj039zioGt3D9g6OXkGxym6XAlvagn7wr3xYiOIg5xl
2DgJktc5lQ2mp4ImUF8332KXI6mzRE47r0K9X04jvCWoLewemttkqyO6etYR64oZ5M7mto/9
Db1LM8qrEA0IgRCza+hCMsKrttxS3Ek+s2MFyaZc5JURtnKzqVbovFEna8xKQoo37aHzaO8u
HOb8Ko2p4+TmsCCTboDog/ZfqsG5MguIi9v1bCQSj8DvmeuMOPBxAu4DMR0JwiMo+Jkw2roh
ypz5nTSnEy+iVypYs5R2BRdotDgYrV2w/tWdXf2NNxYPhKMxW8z/VfZky23jyr6fr3Dl6Z6q
zBxLthPnIQ8QCUk84maQtKS8sBxbk6gmXkq2a5L79bcbC4mlIec+zMTqbmJHoxvoJbs6RqBO
giMU0okn2jLl4iNjXPZM2FH4JBptBsJGD/7D0WKVrXflRGgcEbVnLyAxTULm9dVI+SpEfISc
s6gnF3SYYE1UJfN6QUdF0BQYBSZaeZvpGLth/UcC+7sE/SLvuD8YGE/IuRVVMQf0epNOqNQV
qUuFXqmf9etrvdyeNK9fn6VF98iddYCcHtDWNeoI7IuszkDnWjpBOhBhBA2ZSaWlDOCRKoiZ
gkDt4YiGsZHPtGPaZMqQyj4TA+QZMLKMUxRssziKk11DAp1M+ygdNQTG/QpaQcekQKJkuyi7
RtYT6SzaXDUCS7H0YhOtAbvvzo75pGyIsSmbqZyR1MmnhV8IrIW1LOgEIjAc9dHG6XF0e6bi
GfVtJQQdodemSoNOGEwDm0AE7RqwLL+ms2wilTQnRletqyN9KLIN8Fh7Gi2kdt5Wo++UrX29
vXI9Ejwg8JjF/UXXDjSYA6SsiOlSTLy/FpspRoQgBllTCJAt8HPq2UdFnPp4Ie3N804moApX
jDwEzQoIEc7qk4MmzbqhXGhY19oG2Db2Uob8D2oDmb2fXpagETV24GUHFY4Gooh5KIr67Njs
IjqsRwZ/IDYtwrtIjGOD3zTx6awSnldo4SJSN9kZIqU0c3TFaD/7q/PTSUDok12FQyThMjVV
WTf9nBdtpe5dKJplI0fab+RYBiWy2Y28PP2wCVeGYNLfOoRLqz9eysk683CD64n8tTmNoOU+
SZss3KejU1bA0gdUu625twy0NJzWKsktiZScwaCdoTJONR7zdk8z7TTQkZEDHAo1ne7XF/U1
CHqxzY0kg6AQLgcbdeYXPSCPNn9UQpZkpEHZyFZpuZMzaCmMlj83I/48gs+W56cfwyWj1FsA
w4/Eb7/Uciefzvt6SsVPQBLlC+IUK68ZtMbRe/sfxLU6q3lM6lCy+IrzYsa2YTq3gOLYPh+u
dOTpED/ARjqsLyZFKWtPFWTSua50pLrhE3SGU7cBGpK2th9mkTg8Fn76QV6UyLg7YAhYeQF6
r0xWQvUe/dzSIvkAR2itA1CYth35fBB2ZTQDbZh6d3jc3znGDmUqqozObG3Ihx7aCS9ltHXv
53D/OD6ZS7DUpTPqhmTEV0nVWqOpHZb4vLMNDRW5EYs5htAowuoMHgqMVokm8V6VeCp59akj
Yu5XMzBDSX7MytqpQNWM0p5Xsx48uVExwpo1rgPrIEdCmRj6/TBxI8wn3vBgZEcYo0UdcX5V
huCxrsnINmRjhGq4Mqxan7wcbm7lI4i/nN04TW2BwdfgiJ0xR74YEehH3roIY9w4NhqATdWJ
hJuwBrRxpyEi8n9Y2HkrHPdVxUDcDN4G1i9aWjEZCJqWyt47oOHcCmvqa/vicoCOeQ+M4Vc4
zuYjVLrtBuPvvlgISiGPkPTMfRXS4ZpqAYJLH7HfHspATmoaYeNmIksXtvGwKnQuOP/CA6xm
yzVmRBk9u+3yBF9k7uVANbcx5ORIfDqnb5ycLhR1H72+mDfUad7ywR4b/qScwm3wsGsxCR10
b8OHICeWzQIZ46FDd43Fx09Tai4R67oBI2SIaBiaRQQtqoFP1c6lcpORUbyaPCscx1QE6CgM
TgwCafgAf5fcfjmxoXgU+LvMxl0WpB9oQFXGiwc9NoKULa4aOEDOom0gYhFYF0gdklKTUTVu
sk4MBpqk/Jo8dz3HcGVavf+xO1EyiPV2ec3wbbgFjtWga5uTLApBVZPBGkmsKeAbjCbmHtIG
1s8woiZMOq25YTzaHilisUOhBF4mYlv7meNtimsu6Bw782aIVGvkDR+QKYCXFWvOwhC3V13V
UruCdW01b857+5VUwRwQHm+9O0iJdxyOD+AqJCypmVTQ25xtnbJHGOaIzwSuKvjnOAHL1wyO
wXmVq+A/I68bibMy5dT2tEgK3rKkqreGwyQ3t9/dpDjzJmHJknZN0tRKcH3evd49nvwFy3Jc
laPUjd6NtK6GGBCN8lTYjgsrLkp7kLyH7Lao3dmQgHF906/uQLFhbevEPC3maZ8IOPjtaK/y
H7MERuE67KK1g7NGRWjG0Jw8Egq35O26EqsYnaGyjWbhh4mB9/nd/vnx8vLi0x+TdzY6qVJe
YwiTc9s+xsF8jGM+XkQwl7a9sYeZRjHx0mItcJJDephJFBNtwQeHV3u4c3paXCLKoNcj+XCk
jk9vff7pLP75JzJbgvf5NP75+Zu1X9o2qojJmgoXVX8ZGdHJNLoQAOXNEGuSLKPLn9DgKQ0+
o8GRtl/4I2IQlP2Njf9Il/cp0oVIqyaRZk2Cdq2q7LInIwkbZOd/UrAElUBGn6CGIuGYszhS
sCIAWaQTldtSiREVazNWEpityPLc1sIMZsE4DQepfRWCM2ieE2poQJSdG/PX6XH2RqfbTqy8
2OQWRdfOHcs0UJ1x5ZJHmSNOKUfN3e3rAY3SgmD8K751zh78DSfzVcdRiAtPS3PScdFkwPPL
Fr8QIDRRzL8V+JiQmkqMRKbEqAAOv/p0CRIaaEwoZHkoKQdlyYAaBXeedCh2YcT8Rr5/tiJL
yCDLmtKRhkA6RLFLace2xgw1JVIaK2CgVaCzN9CY7nH5+d1/nr/uH/7z+rw73D/e7f74vvvx
tDsMp5wJAjs223bIzJvi8zv0Dbx7/Ofh/a+b+5v3Px5v7p72D++fb/7aQWf2d+8x5d83nM/3
X5/+eqemeLU7POx+nHy/OdztpH3mONU6qN794+HXyf5hj35D+/+90R6JRkxI+iVrpLgIgjfo
wGXWhtkrSaovXDj33hKIr/grmDMyH6NFwfLcqoYqAymwisg9RIZpRJGoSiJ5RQNi1MajtEN4
PnK4DDo+2oP7s7/lhjHExV8NQurh19PL48nt42F38ng4UWvFmhZJDN1bONGTHfA0hHOWksCQ
tFklWb10gpi7iPCTpZNq3gKGpMK21B1hJOEgGQYNj7aExRq/quuQelXXYQn4+BiSArtmC6Jc
DQ8/cJU2lxptHmWkaZluJKBazCfTS5Vl00WUXU4Dw+rlP8SUd+2Sl0kA13Gula7z+vXH/vaP
v3e/Tm7lWvx2uHn6/itYgqJhQTlpuA54ElbHk9S5XRzAIm3ouyezBgvS5U/3uRPXfHpxIbMN
qheA15fv6Ftwe/OyuzvhD7I/6Gjxz/7l+wl7fn683UtUevNyE3QwSYpwblwTJUO5hHORTU/r
Kt/6PnM+LeOLDJPZxfvR8KvsmhizJQN+dW36NpP+4niePIctnyVUK+fU27BBtuFyTYjFyW2j
aQ3LxZqorjpWXa2a6AI3roe+2aV8ixFZj45pCrJU29G5V0zDMQ5j8CK1xKTfkUEsWNjEJQXc
UJ25VpTGO2b3/BLWIJKzafilBIeVbEg2O8vZik/DOVHwcP6g8HZymtrR+czSJss3SzrkZek5
AaPoLjBNcwjPYEFLI5oQJ4rUcdM2G2PJJiSQrAAQ04sPxIICxEXEwXakoF50ByZ0FlbWgggx
q8LDbV1fyIBg6mzfP313fLgGnkAtfIDScVmHKa7WmLyImHuFCAIsmTXAMGtRxog6E9a0R9kX
ElBqpzkAeLjk5vLfsBWaaYZjyUWtIpeG7J9yTzFn2LoiR0PDx8FQU/F4/4TOTq7Mazoxz9WV
md+A/AtlhqqRl+dT8hP6WmZELynFVqO/NO0QelfcPNw93p+Ur/dfdwcTKcREEfGWTtlkfVIL
Moyw6aWYyYBeXTBiEqM5nV+ywjFSLbVJqPMEEQHwvxnK+hytK+ptgEUxqqckXYOghc8BG5Vm
BwrhOmgQaFjz10ePn4EYJerfIuSllP+qGb7dtrRGPXAW1lKqtCVm9zpfgq0//Nh/PdyAvnJ4
fH3ZPxDHW57NNN8h4CIJmTsi9KlCZcEMqeKNRiK1/d8oSRG9UdAg9r1V2EB4vECKhyHcHIUg
+WI4+8kxkrElcaKjfaaFyZA6esot19SDULMtCo63IfIGBa3bxiZayLqb5Zqm6WZRsrYuaJrN
xemnPuFCX9Dw8bluvDBaJc1lX4vsGvFYiqKhbo10Nf6bHxbxEQ1AGryupbGo2eDHzv1Qtigx
twdXj3z4RmfukQIBMcGwKn9JDeL55C80ONp/e1D+ibffd7d/g6pv2XrIVw/7lks4rqkhvvn8
7p3VMIXnm1Ywe/hoyxUOf6RMbP36qHsuVTBszGSVZ00bbdpIIRkL/qVaaB7FfmM4TJGzrMTW
wRSX7dywpzzKl/KsxPiLgpULzwyWBY+wQw0gdmESS2vpGVcDkMjKpN72cyFtU+2VYZPkvIxg
Mc5012b2c1VSidSxChZZwUEDL2ZOygN1W8ksXR0T7QZxikEUBx0Tjj8HNPE2M+wyKa+TbCDp
s7br3QJc3QF+upmsXAzscj7bXkYOIIskJsRIEibW3ip18LPMbeEH53Bxj5rEerMA/haqSIn1
kjPoRKOtGivTqrD6TDQK5DRpYu761iMUjW58+BfksnDA5s4j6hd1UHhQEA/pMkCKI6qUYId+
6MfmCyKIxo/k/exLZt9UWRhoBwnX0qS30OVVqRvddJYsnR/SzKyV8YQL25agwSRIsNqvMWua
YJb8hrfCmWvcp0BofNEXtikpwp3A5KVMryTjS/ewPxft0sMhAo1yUTay8y4AGHqbM4F2cUsp
VVqNFdAPrEumG0baeSWCTUlTJXVHkCAWBrYmKkNUWZUGgXGlaxc7oOqqyl2U4AG1NowgMChO
joZyFAKGkty8ZhRnvExA2hdU5oVmkav1YVV6ZTV3kVcz95fNbcyc5a5dwrDw2gq0f4cb5F/6
ltmx68UVyktWjUWdwd5zmMQ8tSqrslSawgFzd5YjLFFT73XaVGFrFrxFT/JqntrreF6VrZWV
cLQcATgl4Ur6y5+XXgmXPycfiBVUoyWpo94MKMDI2ZZ8g6FNTGaHTxroOoz9Dnt7nnfNUr7P
2ccOHJ0pr6vWg6nTHU4zDKd/Ohxn6Phj1VHN/ssWtozQosxAJkYMjnX3CcrISRL6dNg/vPyt
wmHc756/hW+QiTJq7fNqkcP5ng8vAR+jFFddxtvP58Mq0UJhUMK5LW0VswrFXC5EyQpaylI7
CP4DMWNW+UZRuvfRHg1XDfsfuz9e9vdaSnqWpLcKfgj7Pwc2y/s1E+XnyenUbjLMQI1ZgbHx
tHs0S1USy8bmvBzd4NFmCmbf3kyaPwBrwdjCRdYUrLVZv4+RbeqrMnczrMtSgE+iMXFXqk/k
eu3PprRDg/3JmrOVTPCQ1B05vL89gP+yc4bqxZfuvr5++4YvctnD88vhFQMj2mkQ2QIlwW1j
u9lbwOFZUKnsn09/TiyzKIsOZMiMUaZZuqsNMWKN5K1r/P+xUWrkg5GkLNDo8kglukB8ZvWY
n2QYq4WbIAx/kw6AhrnMGoYufmXWgsrbO2tH4izWnVhfzDDnZRNBSkkhIKE/fPuLZpnNWx+Y
ZtfmFdqBdyVsENCuZ65/t0ICu5M2r9BTYkxM+6o8/JKXHWWoe2z0QDkF3CqprvuZqFa8tLnp
by1hd+rRpJAHOxvt9ozmpR+wh8LGPSCtnUDpxCDjrm25KgXxUgigLBzx22pdOpq3VMerrKlK
R8ccSwM+NffhaviJbaIRx0R6lxCf8yOlqyhyTQyL9ovxBqDL7DJ2xeeSAjsDbnbERtol1/eB
5pCaODtXTzAIBDlwSr/pb8FRkJAypkrCOPlwenrqt3qgHWwg5nS+I49cmn00ScSOSR8uUt7o
8DSm5EuQV1JNw0tQkpY8CbpyXYRzcl3IF7aoPdJAJY4dQICvF6DEkcZKo5yvaDPRdiwnmqIQ
0UlWWbmksYnHk60RQrPluWftTKCJSizuzhyO7CFwvFxJXnNlhQ1vLBUWtwRKfWU1MrI0HfRV
1zpmZC5BL5YY8MW/XZP0J9Xj0/P7EwxP/vqkTvblzcM318SaYTwcECsqz16fwqOjQAdH9aAi
VMmqq4n8MU01b6NIYPWtVHhtMlnP79DoNkzsccAa+iX67basoeO7rK9AxAJBK60WpCh0fMCU
aR9ISHevKBbZrH40QyLQ/mQhk1xxXnu3buoCD80OxhPpf56f9g9oigANun992f3cwR+7l9s/
//zz39bdHnpayLIXUoMY9CkzfQIWuPG2cO7+JEKwtSqiBPZPXwVKNN4H+MwDbxu6lm94wPQb
6B9+FhyaNPl6rTAyI7G06/NrWje8CD6TDfM2HsJALQv3ukZEWYnSmKEFnNdURTi48tlLH5WN
WycG1mg7wXtXPx97FqjuTTL3Pxp1vv/HSjDlSVdD1Ool0w0HwGBIf0bgg56rolRH0B6wKxvO
UzhK1AVgcBiqgzYCBmkEjrNmzCsiN9nfSvi6u3m5OUGp6xZvuR2mpMc9c0USX3h6Ax+7nJFI
ZeIKAgtJIyUIEHZZi9dJMsZu4Irk8I1Il9xBSQQMZNlmKrq5enlOOlJuVJsz6YgdC6KS33Gz
BMg1iB/INEG9f1ONGPsbciiQCGRKqwhKOcaS3AWEIH7VhDdosj3SbLhfyDULEl1W0Z7j7vB4
XONKa7nCu0UsZbRiKNk6cuSJPWjQx7HQqnpJ06TbkiGb8B17VQFqCxZSNIUxwzcNjwQDUOGm
kpQgx5c2H5EUif5QlTIiVXMw9LA/0KrWxOW38jrJzxGpMssivaM8wD/AokA9W2d4EeF33CpK
68DN2r4qrUEnKGB/gKZOdiuoz1wL+hVpwvAMG0Z73J8gHeBRar6hnQTd6aaf+qR8HBJoNAb0
A4k9aKoSrgfoUNxynbP2WH16jeh1QBvyy4luSlY3yypcAQZh7nW82ZgBm8ZggaKSL7D6usLm
IRLOSmCADJ821Qec5oMd0M+4zvFDD+C2bJfHCDDskokPHu2vXppZ6Z4l43oar9LphUmgTcEs
l3fx2G1rDeL1gBmMcH2ZaWoZcMc6yvWsBtikdBMHH1u5cFOet8x2VGQYGi8AhOerpTupmBf6
Zoqndgc0g1U0gaT59PjP7vB0S548dTIYUa+5ELbcLt+b9ZYBWQrktA/n9ne8wFx+Suv0DE6r
FM0IgL3Y19yxHQJztYGhPEpWNBm+fsq3qmN02C5kTahFwDpotLBMzOamcG9o8LdR28miFQGM
VQPS6SzfHiHSyr+oMOEhnfccJXiXmczSTPPkaM84E/k22iOkqNu0c+PQhJNvvyi0u+cXlDlR
9UkwH/zNNyslwapzVG35U1Vv+/kosLsTFIxv1Kr2JRGFlScjyta085aW2Hq5KjWviDqIy/Em
afx9hDeFgW4OGjlyCMUGbBNYTT22HMn0JZN8TxJ4OUf3QNLiS4HoCmR33uW0QwVLlgnO1NXS
6U/MdGJdLgmQDeTxp7Q2aWxIFAV731ctjk2zI/sXWdNg0WmVyNY6+1lpB7NMzQWdjsF7ovo/
wf7abXPNAQA=

--huq684BweRXVnRxX--
