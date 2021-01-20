Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBQWYUGAAMGQEFSR6JDY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe3e.google.com (mail-vs1-xe3e.google.com [IPv6:2607:f8b0:4864:20::e3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 35ECA2FD765
	for <lists+clang-built-linux@lfdr.de>; Wed, 20 Jan 2021 18:45:39 +0100 (CET)
Received: by mail-vs1-xe3e.google.com with SMTP id h30sf502823vsq.6
        for <lists+clang-built-linux@lfdr.de>; Wed, 20 Jan 2021 09:45:39 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611164738; cv=pass;
        d=google.com; s=arc-20160816;
        b=sTWPyESklU2ixAwM3NUs1ReroKxTYZmTUUY5+IumXMWtPOuJ8QA7zUDaL0IuhbCp3D
         ebMTIQ3aX0G7eSqqvjjky4lsqcvEFeAUSofpVnoAXq4zT1TOxk7s2RLCDRfbhvoCXWRw
         BxAlhe0M1F6eWGpXcKUfAoqoNX8ExB/nxhhzjX+AINxMU/xYpc20sNLIMJS+vYREC/1f
         IAIXDk2hRY2ZeS33ndjTSL0N6sZclV0eVFgDZl2ebCqtUnVdL6cdri/4j9cwjEi3V9P9
         uq6olg0A7beZjl0Aq54Y8knz5isANIgVoagaSfD/BykEV143ng/UgRcwOunTCZBIAhI0
         M+6w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=yiLKOEjblvsgU9q0rNofAZp3ojUiP7j5vxLlA+dKfzw=;
        b=CA/AFWLMv8/0occO5NYiO3XfV5nWEA//vIrZXVX7JMzY5aynpPnJpPnh/QkgBUlKGK
         CzoF9X3gSGCqHAGwSzTeTAzCYNHciave7Y7nyACjbqehFsjSHHHoYUm79TKYEBxOxNee
         OywKum44DuvwK6RREW5DpT2vSI+xlTUAKpZTMz3oJedsZWY9YtMdSpmWHELysbYSBbRE
         haR/SyHsLX6fth7s5g6zsqrSkIz50sGkXOfgTuiCLNQQaifZJK6ccC1xq5IblVsUbfy/
         uyA8PdBDDaF54euIY1GmUY/muHQVfpZt+2DcFCo+/PpFEpd4rgtmqBDgL9mn/HG+Vwyh
         7B0A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.88 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=yiLKOEjblvsgU9q0rNofAZp3ojUiP7j5vxLlA+dKfzw=;
        b=GsAUKRlrTvGr66KHB1wQ7CQzS7NWTu3yN0BZUwFCOMN9Lk3C7ZX5A7afu8Q9MldNvu
         FRTqb7G5IvP/THvO/E9Gw8EO9g7uryNlkyPmlckjTispDFw8TihlsPk6EB6AmJvQm4H9
         VtWLmQt9naCI/Te750ZRAFyykXAo3xCQXD/x7RHZm4xAZwC5ftdC9u0/auIHTz0P4GYF
         FkCBSYPtTleAwlLLh7SLwchdOIukViQ6R1RuSotrDZI1qFw1ba/nrM8aERHDXrmy90CE
         qL1d5I9+PKjfqCo7IlNbPKaHZ3WLQFmwinUzpkbP/rM1DEeqkdl1H/OGgZ/H6EalMNM8
         KMHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=yiLKOEjblvsgU9q0rNofAZp3ojUiP7j5vxLlA+dKfzw=;
        b=mk1WDA4cVPCDOcZugDJD/FwtIJxa0oj1VpRLd1LA0qk1QogRAjaWF+UT9PU23Tt3Aa
         qcGXivOHoVePVatd7Swvp+F7LHBpko+g4Op3Wjc3VuSBNoQbwlhbFoAwbqIQmetkTbeV
         MUzc1Dxo6ZFz8k+WdFZvjhzTU/eHKHllUO1QujqV167tB8mqauV7cvbFFHAcspapT0/b
         /bnP2X0mrBj1+WmDSYDUubP1GT7K6n12Fp3QFjlhIikiKf1oVlytgbR2SHnus9gwvefT
         V7J1GEEHs1xGByQ4GdOE1nMFkmJG4NasKmLUt6K+8Qd85NburAZCz7Uv9nW7JMPqjoLR
         EvLg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530pLMf74qlIHOtePcDGfm0NlstwuQTQ2fPdz6CXiXs48U3A3NQO
	QfTmK9VBzfeMfRHCtKyTglE=
X-Google-Smtp-Source: ABdhPJxxypeIA3lQhtIAa5mlvZJvlqi8mlrnM939pi4OpwEjvEsj5+eQbw4SqkuNEVwIc6xio2KI+w==
X-Received: by 2002:a05:6102:199:: with SMTP id r25mr7812718vsq.56.1611164738179;
        Wed, 20 Jan 2021 09:45:38 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1f:4ac6:: with SMTP id x189ls110613vka.4.gmail; Wed, 20 Jan
 2021 09:45:37 -0800 (PST)
X-Received: by 2002:a1f:2651:: with SMTP id m78mr2443893vkm.18.1611164737623;
        Wed, 20 Jan 2021 09:45:37 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611164737; cv=none;
        d=google.com; s=arc-20160816;
        b=ZonxWvi1fh02Ur/+tVMHWOX95TydFRn+TIvg56v1k45qUld/Q+e/qEhitlYg2bstbk
         7/S7B3evHOOdsgu3nbpcGftIlL38fzwinh49qCbgpOFwAx6el/QtLByJLYGVmwwTL8BL
         eOHQ5CdEty1DehPX0rNN8wG5YaxqGV50swfkc8APn2acQlWV/ve/q/y507vwVDhq6hbj
         rkt1krK3fXCkQK8/L8gCCK0gAbkuam3Qw4r2NWEMfxiPKLZdgWZ2kp01K5Qltf6NrlxR
         kYAl+bGl/XaTNRRd5NCJncdLKYPjRoGNUDeJJpukYJ8nXFpxzCX0OU02LuQq1/tWAogn
         UcsA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=3FfrszX2rtB2zbMNjRzKG6/yhqAcb4e/D53uO108Zks=;
        b=UrN9y2MPaLq0m4eM41/0bXlSWL0Zxp/mUwxh1txtdZxUlSX4R1Gptb4qrbAOxOX7Sp
         sKUbAYagE7H6jQJL0HhrDS/F40QIhRF3eNGiSAsCrDKgtOuPtvyI383PM3H1Ebly6YVz
         73Am+TiGmugb04ph0aiZNDqV7WCM0f9G5+5mGBC+dd4h6plCuWXPROAkd+OGzWXciq40
         1YrqYfOHwA5WBbQdvtUwfDlsxFoq649XsQgj3CaQKjAztTKdUd1TxLoiNb5nlKmxMv10
         owHTV72GZJLrv8MwgTmATdZqvAz8LHv3z1vfLNAKfGlHHb4C/k0SSn+IQEPdvz8uDMV0
         rrPA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.88 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga01.intel.com (mga01.intel.com. [192.55.52.88])
        by gmr-mx.google.com with ESMTPS id l11si183471vkr.5.2021.01.20.09.45.36
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 20 Jan 2021 09:45:36 -0800 (PST)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.88 as permitted sender) client-ip=192.55.52.88;
IronPort-SDR: ul3UeJhANKamSIAKm1Tdlov5U2ujdggMEVe90cT8IMuwWXsruV9mUllbaXekDYj9NYHwBx4JwR
 YbX3a3yzgOqw==
X-IronPort-AV: E=McAfee;i="6000,8403,9870"; a="197878092"
X-IronPort-AV: E=Sophos;i="5.79,361,1602572400"; 
   d="gz'50?scan'50,208,50";a="197878092"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
  by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 20 Jan 2021 09:45:34 -0800
IronPort-SDR: rdxoXw4SHLlpnbgiogyFb9szMaHHxjcsfV47BhaN6FNT/UVQpRYf/PrqadNCJkNIqRk5ftxWnv
 +1c4s+5gotFg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,361,1602572400"; 
   d="gz'50?scan'50,208,50";a="391626747"
Received: from lkp-server01.sh.intel.com (HELO 260eafd5ecd0) ([10.239.97.150])
  by orsmga007.jf.intel.com with ESMTP; 20 Jan 2021 09:45:31 -0800
Received: from kbuild by 260eafd5ecd0 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1l2HXu-0005v4-Lr; Wed, 20 Jan 2021 17:45:30 +0000
Date: Thu, 21 Jan 2021 01:44:30 +0800
From: kernel test robot <lkp@intel.com>
To: Sven Schnelle <svens@linux.ibm.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	Linux Memory Management List <linux-mm@kvack.org>,
	Vasily Gorbik <gor@linux.ibm.com>
Subject: [linux-next:master 4125/4677] arch/s390/kernel/signal.c:464:6:
 warning: no previous prototype for function 'arch_do_signal_or_restart'
Message-ID: <202101210114.jUMhxjS5-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="BXVAT5kNtrzKuDFl"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 192.55.52.88 as permitted
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


--BXVAT5kNtrzKuDFl
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git master
head:   647060f3b592d3c8df0c85dd887557b03e6ea897
commit: 56e62a73702836017564eaacd5212e4d0fa1c01d [4125/4677] s390: convert to generic entry
config: s390-randconfig-r003-20210120 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project 22b68440e1647e16b5ee24b924986207173c02d1)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install s390 cross compiling tool for clang build
        # apt-get install binutils-s390x-linux-gnu
        # https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?id=56e62a73702836017564eaacd5212e4d0fa1c01d
        git remote add linux-next https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git
        git fetch --no-tags linux-next master
        git checkout 56e62a73702836017564eaacd5212e4d0fa1c01d
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
   include/uapi/linux/swab.h:20:12: note: expanded from macro '___constant_swab32'
           (((__u32)(x) & (__u32)0x0000ff00UL) <<  8) |            \
                     ^
   In file included from arch/s390/kernel/signal.c:27:
   In file included from include/linux/tracehook.h:50:
   In file included from include/linux/memcontrol.h:22:
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
   In file included from arch/s390/kernel/signal.c:27:
   In file included from include/linux/tracehook.h:50:
   In file included from include/linux/memcontrol.h:22:
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
   In file included from arch/s390/kernel/signal.c:27:
   In file included from include/linux/tracehook.h:50:
   In file included from include/linux/memcontrol.h:22:
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
   In file included from arch/s390/kernel/signal.c:27:
   In file included from include/linux/tracehook.h:50:
   In file included from include/linux/memcontrol.h:22:
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
>> arch/s390/kernel/signal.c:464:6: warning: no previous prototype for function 'arch_do_signal_or_restart' [-Wmissing-prototypes]
   void arch_do_signal_or_restart(struct pt_regs *regs, bool has_signal)
        ^
   arch/s390/kernel/signal.c:464:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void arch_do_signal_or_restart(struct pt_regs *regs, bool has_signal)
   ^
   static 
   21 warnings generated.


vim +/arch_do_signal_or_restart +464 arch/s390/kernel/signal.c

   453	
   454	/*
   455	 * Note that 'init' is a special process: it doesn't get signals it doesn't
   456	 * want to handle. Thus you cannot kill init even with a SIGKILL even by
   457	 * mistake.
   458	 *
   459	 * Note that we go through the signals twice: once to check the signals that
   460	 * the kernel can handle, and then we build all the user-level signal handling
   461	 * stack-frames in one go after that.
   462	 */
   463	
 > 464	void arch_do_signal_or_restart(struct pt_regs *regs, bool has_signal)
   465	{
   466		struct ksignal ksig;
   467		sigset_t *oldset = sigmask_to_save();
   468	
   469		/*
   470		 * Get signal to deliver. When running under ptrace, at this point
   471		 * the debugger may change all our registers, including the system
   472		 * call information.
   473		 */
   474		current->thread.system_call =
   475			test_pt_regs_flag(regs, PIF_SYSCALL) ? regs->int_code : 0;
   476	
   477		if (has_signal && get_signal(&ksig)) {
   478			/* Whee!  Actually deliver the signal.  */
   479			if (current->thread.system_call) {
   480				regs->int_code = current->thread.system_call;
   481				/* Check for system call restarting. */
   482				switch (regs->gprs[2]) {
   483				case -ERESTART_RESTARTBLOCK:
   484				case -ERESTARTNOHAND:
   485					regs->gprs[2] = -EINTR;
   486					break;
   487				case -ERESTARTSYS:
   488					if (!(ksig.ka.sa.sa_flags & SA_RESTART)) {
   489						regs->gprs[2] = -EINTR;
   490						break;
   491					}
   492					fallthrough;
   493				case -ERESTARTNOINTR:
   494					regs->gprs[2] = regs->orig_gpr2;
   495					regs->psw.addr =
   496						__rewind_psw(regs->psw,
   497							     regs->int_code >> 16);
   498					break;
   499				}
   500			}
   501			/* No longer in a system call */
   502			clear_pt_regs_flag(regs, PIF_SYSCALL);
   503			clear_pt_regs_flag(regs, PIF_SYSCALL_RESTART);
   504			rseq_signal_deliver(&ksig, regs);
   505			if (is_compat_task())
   506				handle_signal32(&ksig, oldset, regs);
   507			else
   508				handle_signal(&ksig, oldset, regs);
   509			return;
   510		}
   511	
   512		/* No handlers present - check for system call restart */
   513		clear_pt_regs_flag(regs, PIF_SYSCALL);
   514		clear_pt_regs_flag(regs, PIF_SYSCALL_RESTART);
   515		if (current->thread.system_call) {
   516			regs->int_code = current->thread.system_call;
   517			switch (regs->gprs[2]) {
   518			case -ERESTART_RESTARTBLOCK:
   519				/* Restart with sys_restart_syscall */
   520				regs->int_code = __NR_restart_syscall;
   521				fallthrough;
   522			case -ERESTARTNOHAND:
   523			case -ERESTARTSYS:
   524			case -ERESTARTNOINTR:
   525				/* Restart system call with magic TIF bit. */
   526				regs->gprs[2] = regs->orig_gpr2;
   527				set_pt_regs_flag(regs, PIF_SYSCALL_RESTART);
   528				if (test_thread_flag(TIF_SINGLE_STEP))
   529					clear_thread_flag(TIF_PER_TRAP);
   530				break;
   531			}
   532		}
   533	
   534		/*
   535		 * If there's no signal to deliver, we just put the saved sigmask back.
   536		 */
   537		restore_saved_sigmask();
   538	}
   539	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202101210114.jUMhxjS5-lkp%40intel.com.

--BXVAT5kNtrzKuDFl
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
zI3aP8TL0Z9G1wAA

--BXVAT5kNtrzKuDFl--
