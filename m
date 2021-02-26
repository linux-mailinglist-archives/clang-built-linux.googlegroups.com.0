Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBSFX4KAQMGQERTC57BA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1039.google.com (mail-pj1-x1039.google.com [IPv6:2607:f8b0:4864:20::1039])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DFDE325DC0
	for <lists+clang-built-linux@lfdr.de>; Fri, 26 Feb 2021 07:57:13 +0100 (CET)
Received: by mail-pj1-x1039.google.com with SMTP id gm17sf5752833pjb.1
        for <lists+clang-built-linux@lfdr.de>; Thu, 25 Feb 2021 22:57:13 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614322632; cv=pass;
        d=google.com; s=arc-20160816;
        b=wOKxQxLL6p8X/At+1NaxNeF3MYiNu9YUBuULwv2QZn8M2R3Ig0Q4g6FJwChGWF1JRh
         fH7hLTCnPfaOvmYx8uXeU6byk95CKxluvo2BXRb0pvY/1uQZXCmZzVTqF5GC6L0Rhupj
         Cz4GhQxrdctwI6hF31KTq1AL7zKXBlaaoAmsiBMX+8RR/yMSGRb5rHDeEIwRG8QiVdQn
         mxBe1st5PyjrWBBJT1XyyLD0b1cCXj8nBLGm33pzXLbJMNmifxab7yM1Q5bRSFnlSoOh
         4hGHW2LLSK6/96P2zytn612ZrysTxygE2IURbrltXsvv7QsWa9ewoSdi+ME3sll3EPBt
         2kFQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=3mIY3yFnOLF4tjHpFbjI2cElgq+QHVEN+1TUj33JJzE=;
        b=wJLgCIdwlvTFKsSE/rsOzwdUk/+3a9wShz/QWfAamiEqnhri5etNp4AzI3gmulOAnJ
         pwP86foijMx+S6uZjxeBsbhJaGG5WN0jMtm09iOpLi0fyPhuBDlrr8au4IbUmZusldqR
         aYxGddErlRlooE/9twTaVYHGHpXyw21xIwUM6TUFsQq0I6Cdgb7+mUFy4ACWZomohUyu
         qVEDOEBljsYDSmWMUv0wsBNXhYTFWUMSK3BpZuIqDiZD9egrMawILORyrOpzfNQFNkDT
         yGSJK4imywcgj7Kcn8BdtEQAVUud6XzqHiYUbUm9MdrI46h540OIDK4It9EdwyaBk8di
         ZNWQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.65 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=3mIY3yFnOLF4tjHpFbjI2cElgq+QHVEN+1TUj33JJzE=;
        b=lEyuFu6FEAFthgTG6sQshUOrBsvawMgmYOu4lWMboKHXfdVK08nUC2Xij3/jUEvROg
         i34Ehxc3uQfCkAAs4EpBz0xAGHpoCm2bEOFs3I4GtRkHlrPX1ty+XnKH41oKuKhDA9Jo
         vOpvRA9ty0MwKjSEghcvWiIW12VhHVh3p7OqG0C02KZdVfSbKvLBTNjXKWE21LgqSvk5
         cwbfTA2NzOL5clsnwyRIpFNUEkUH/ZzckcTB8IA9eb5O3e4qGFhWEkrfaIsLS0ruOJsp
         2b7w+3DtXyEf7HCp500r3vygvFt4ICjUTBLXISqdJrBrpD6d6pDiWGwkcymgfOh7WBTb
         2WQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=3mIY3yFnOLF4tjHpFbjI2cElgq+QHVEN+1TUj33JJzE=;
        b=W3Dt29lL8POQU8gWUnpBXP4OMvTlsteLLexHs7sTCYx3eNGlIYxt5yl/7jDTAh3FYg
         M3LPYefAAfhUZ69xaHXzll1glcB1TaPiH9mYS+FsOL08+1hf5FHyDwaZ8I3nh2PUBsuf
         JDcpbUsRP95e9Hz2OHR3FxKVC3rfHE2pRCQRWK10W20/oJXd5IoMqJB3KiQoreD9s++i
         nVUmjXn4Cw/zO9fK6RqQ3aGJG+1zmjn3D2DKdIpnS/+CldI6urhq2eBw3OWq38KbfY0G
         85/+Lo5bm4R8+JTMptL1h29wJoFmeJ7eJn8HkSs4JAOaL7973eDc1yq3LJoAhngpp1zc
         k2+w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533Kc3/XCrLAvcwJ4l/tqEQ9Ihi9xG/6ezAUSgWHCfF6YimgarRw
	C1LrUY1HZeSJ+sNVq1JUPQQ=
X-Google-Smtp-Source: ABdhPJxBCHRD16/ZUKN0HnRBWPXp5fwbYKZHbzEe24gdSZ3/+L+u46z3EINI0xKzqIedCcY/+F6ykA==
X-Received: by 2002:a63:4084:: with SMTP id n126mr1709688pga.80.1614322632200;
        Thu, 25 Feb 2021 22:57:12 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:e54d:: with SMTP id n13ls4262566plf.11.gmail; Thu,
 25 Feb 2021 22:57:11 -0800 (PST)
X-Received: by 2002:a17:90b:718:: with SMTP id s24mr2002971pjz.160.1614322631592;
        Thu, 25 Feb 2021 22:57:11 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614322631; cv=none;
        d=google.com; s=arc-20160816;
        b=PrLpxYNzzlIiatCpPMCayl9z2y2R2vsA2C/kia9+UAUEGyl8e9NNl2WolDTC3yUgeC
         A0dbBC7xe1W8O2epIvhbdCWOFX2YbQSFa7aGw5EIZ0kqQ3ik0Z10OYiZtgGX8onEtH8V
         zQegkUTXfRWFLp95/Sq+iZ7c3fiBRa8/38YmXKPNIBuo9sFLLy+Mi3qr3wFG2L+Thzwj
         M5r5FS+Dd+lw/zX3nNLX0DkQcUC+haZAYhNsXA2tRZcNOuw47OM8KJnhVchdVcGcGjeL
         ej3wh5XHC7wg+D+WUL4zXzHzs0QZzZl0GoFo1krKbxi1Y1puUQatMU4nyI+uQzac597C
         OQKg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=PjTRyAlZKlwlDBPF9rR50FPKZ7B1R1zZMUn3Ko11wcY=;
        b=waQva67zzW15l0YkGLoxzFJfC7jySha0w/uEmqzRlPiNcEE4TslH0Nhn/HOh70wavg
         STnWEh/cYiS3YvlC4EExqV3t8S2/ry8PuawwGl9e2sIJs/J05+HIXQFpBOcvW/MxrlXA
         thdTNvE474wNuVZOQ4RHb4KIjXGCCJFYU+dnaijm3ui9pqBeAN7ozrqWNGkglboY8R//
         a/W4PWTm/BZ3sm6/Knt0/Du30ZXb/0wp+2CveH0NjFNjQubmH66pCioE7NsJtPSSe86f
         +ciJok7JUAdZYvxwrGIPgz2JFyb8/uDmrwZ2Lxruk/wMVYVw5KWA5B+FvHl59SB91Mh/
         jOgQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.65 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga03.intel.com (mga03.intel.com. [134.134.136.65])
        by gmr-mx.google.com with ESMTPS id h7si363634plr.3.2021.02.25.22.57.11
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 25 Feb 2021 22:57:11 -0800 (PST)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.65 as permitted sender) client-ip=134.134.136.65;
IronPort-SDR: aZtuPzJWBDYWlcV9Tn74wep7i/6ioim69QQX83Bd5HM59gjGoio09N2Z2U3jcvG8bZGHjQxjHd
 L92lQOeRAFwA==
X-IronPort-AV: E=McAfee;i="6000,8403,9906"; a="185850141"
X-IronPort-AV: E=Sophos;i="5.81,207,1610438400"; 
   d="gz'50?scan'50,208,50";a="185850141"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
  by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 25 Feb 2021 22:57:10 -0800
IronPort-SDR: Dr0WnHu5xRDxV7qj/+fdQK4freiRf/s/ujE0xETFtZPofW2vmbpPjnrXfEg46RmVOamCPxhi+A
 Xt6/Y2TWNWtw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,207,1610438400"; 
   d="gz'50?scan'50,208,50";a="404781815"
Received: from lkp-server01.sh.intel.com (HELO 16660e54978b) ([10.239.97.150])
  by orsmga008.jf.intel.com with ESMTP; 25 Feb 2021 22:57:08 -0800
Received: from kbuild by 16660e54978b with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1lFX3j-00036l-V2; Fri, 26 Feb 2021 06:57:07 +0000
Date: Fri, 26 Feb 2021 14:56:18 +0800
From: kernel test robot <lkp@intel.com>
To: Alexei Starovoitov <ast@kernel.org>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com
Subject: [ast:syscall 3/7] kernel/bpf/syscall.c:4364:5: warning: no previous
 prototype for function '__sys_bpf'
Message-ID: <202102261414.LjQKFAoK-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="Dxnq1zWXvFF0Q93v"
Content-Disposition: inline
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


--Dxnq1zWXvFF0Q93v
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/ast/bpf.git syscall
head:   47fe65ef6f93a607b836a1d07c7bbec38c0d5ffb
commit: 245b79a6f2d9ed10ab1e7d02ec678cdc2aa8e73a [3/7] bpf: Prepare bpf syscall to be used from kernel and user space.
config: powerpc64-randconfig-r004-20210225 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project b889ef4214bc6dc8880fdd4badc0dcd9a3197753)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install powerpc64 cross compiling tool for clang build
        # apt-get install binutils-powerpc64-linux-gnu
        # https://git.kernel.org/pub/scm/linux/kernel/git/ast/bpf.git/commit/?id=245b79a6f2d9ed10ab1e7d02ec678cdc2aa8e73a
        git remote add ast https://git.kernel.org/pub/scm/linux/kernel/git/ast/bpf.git
        git fetch --no-tags ast syscall
        git checkout 245b79a6f2d9ed10ab1e7d02ec678cdc2aa8e73a
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=powerpc64 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

   In file included from include/linux/skbuff.h:31:
   In file included from include/linux/dma-mapping.h:10:
   In file included from include/linux/scatterlist.h:9:
   In file included from arch/powerpc/include/asm/io.h:619:
   arch/powerpc/include/asm/io-defs.h:45:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(insw, (unsigned long p, void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:616:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:32:1: note: expanded from here
   __do_insw
   ^
   arch/powerpc/include/asm/io.h:557:56: note: expanded from macro '__do_insw'
   #define __do_insw(p, b, n)      readsw((PCI_IO_ADDR)_IO_BASE+(p), (b), (n))
                                          ~~~~~~~~~~~~~~~~~~~~~^
   In file included from kernel/bpf/syscall.c:5:
   In file included from include/linux/bpf_trace.h:5:
   In file included from include/trace/events/xdp.h:8:
   In file included from include/linux/netdevice.h:37:
   In file included from include/net/net_namespace.h:39:
   In file included from include/linux/skbuff.h:31:
   In file included from include/linux/dma-mapping.h:10:
   In file included from include/linux/scatterlist.h:9:
   In file included from arch/powerpc/include/asm/io.h:619:
   arch/powerpc/include/asm/io-defs.h:47:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(insl, (unsigned long p, void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:616:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:34:1: note: expanded from here
   __do_insl
   ^
   arch/powerpc/include/asm/io.h:558:56: note: expanded from macro '__do_insl'
   #define __do_insl(p, b, n)      readsl((PCI_IO_ADDR)_IO_BASE+(p), (b), (n))
                                          ~~~~~~~~~~~~~~~~~~~~~^
   In file included from kernel/bpf/syscall.c:5:
   In file included from include/linux/bpf_trace.h:5:
   In file included from include/trace/events/xdp.h:8:
   In file included from include/linux/netdevice.h:37:
   In file included from include/net/net_namespace.h:39:
   In file included from include/linux/skbuff.h:31:
   In file included from include/linux/dma-mapping.h:10:
   In file included from include/linux/scatterlist.h:9:
   In file included from arch/powerpc/include/asm/io.h:619:
   arch/powerpc/include/asm/io-defs.h:49:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(outsb, (unsigned long p, const void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:616:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:36:1: note: expanded from here
   __do_outsb
   ^
   arch/powerpc/include/asm/io.h:559:58: note: expanded from macro '__do_outsb'
   #define __do_outsb(p, b, n)     writesb((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
                                           ~~~~~~~~~~~~~~~~~~~~~^
   In file included from kernel/bpf/syscall.c:5:
   In file included from include/linux/bpf_trace.h:5:
   In file included from include/trace/events/xdp.h:8:
   In file included from include/linux/netdevice.h:37:
   In file included from include/net/net_namespace.h:39:
   In file included from include/linux/skbuff.h:31:
   In file included from include/linux/dma-mapping.h:10:
   In file included from include/linux/scatterlist.h:9:
   In file included from arch/powerpc/include/asm/io.h:619:
   arch/powerpc/include/asm/io-defs.h:51:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(outsw, (unsigned long p, const void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:616:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:38:1: note: expanded from here
   __do_outsw
   ^
   arch/powerpc/include/asm/io.h:560:58: note: expanded from macro '__do_outsw'
   #define __do_outsw(p, b, n)     writesw((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
                                           ~~~~~~~~~~~~~~~~~~~~~^
   In file included from kernel/bpf/syscall.c:5:
   In file included from include/linux/bpf_trace.h:5:
   In file included from include/trace/events/xdp.h:8:
   In file included from include/linux/netdevice.h:37:
   In file included from include/net/net_namespace.h:39:
   In file included from include/linux/skbuff.h:31:
   In file included from include/linux/dma-mapping.h:10:
   In file included from include/linux/scatterlist.h:9:
   In file included from arch/powerpc/include/asm/io.h:619:
   arch/powerpc/include/asm/io-defs.h:53:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(outsl, (unsigned long p, const void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:616:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:40:1: note: expanded from here
   __do_outsl
   ^
   arch/powerpc/include/asm/io.h:561:58: note: expanded from macro '__do_outsl'
   #define __do_outsl(p, b, n)     writesl((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
                                           ~~~~~~~~~~~~~~~~~~~~~^
>> kernel/bpf/syscall.c:4364:5: warning: no previous prototype for function '__sys_bpf' [-Wmissing-prototypes]
   int __sys_bpf(int cmd, bpfptr_t uattr, unsigned int size)
       ^
   kernel/bpf/syscall.c:4364:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   int __sys_bpf(int cmd, bpfptr_t uattr, unsigned int size)
   ^
   static 
   13 warnings generated.


vim +/__sys_bpf +4364 kernel/bpf/syscall.c

  4363	
> 4364	int __sys_bpf(int cmd, bpfptr_t uattr, unsigned int size)
  4365	{
  4366		union bpf_attr attr;
  4367		int err;
  4368	
  4369		if (sysctl_unprivileged_bpf_disabled && !bpf_capable())
  4370			return -EPERM;
  4371	
  4372		err = bpf_check_uarg_tail_zero(uattr, sizeof(attr), size);
  4373		if (err)
  4374			return err;
  4375		size = min_t(u32, size, sizeof(attr));
  4376	
  4377		/* copy attributes from user space, may be less than sizeof(bpf_attr) */
  4378		memset(&attr, 0, sizeof(attr));
  4379		if (copy_from_bpfptr(&attr, uattr, size) != 0)
  4380			return -EFAULT;
  4381	
  4382		err = security_bpf(cmd, &attr, size);
  4383		if (err < 0)
  4384			return err;
  4385	
  4386		switch (cmd) {
  4387		case BPF_MAP_CREATE:
  4388			err = map_create(&attr);
  4389			break;
  4390		case BPF_MAP_LOOKUP_ELEM:
  4391			err = map_lookup_elem(&attr);
  4392			break;
  4393		case BPF_MAP_UPDATE_ELEM:
  4394			err = map_update_elem(&attr, uattr);
  4395			break;
  4396		case BPF_MAP_DELETE_ELEM:
  4397			err = map_delete_elem(&attr);
  4398			break;
  4399		case BPF_MAP_GET_NEXT_KEY:
  4400			err = map_get_next_key(&attr);
  4401			break;
  4402		case BPF_MAP_FREEZE:
  4403			err = map_freeze(&attr);
  4404			break;
  4405		case BPF_PROG_LOAD:
  4406			err = bpf_prog_load(&attr, uattr);
  4407			break;
  4408		case BPF_OBJ_PIN:
  4409			err = bpf_obj_pin(&attr);
  4410			break;
  4411		case BPF_OBJ_GET:
  4412			err = bpf_obj_get(&attr);
  4413			break;
  4414		case BPF_PROG_ATTACH:
  4415			err = bpf_prog_attach(&attr);
  4416			break;
  4417		case BPF_PROG_DETACH:
  4418			err = bpf_prog_detach(&attr);
  4419			break;
  4420		case BPF_PROG_QUERY:
  4421			err = bpf_prog_query(&attr, uattr.user);
  4422			break;
  4423		case BPF_PROG_TEST_RUN:
  4424			err = bpf_prog_test_run(&attr, uattr.user);
  4425			break;
  4426		case BPF_PROG_GET_NEXT_ID:
  4427			err = bpf_obj_get_next_id(&attr, uattr.user,
  4428						  &prog_idr, &prog_idr_lock);
  4429			break;
  4430		case BPF_MAP_GET_NEXT_ID:
  4431			err = bpf_obj_get_next_id(&attr, uattr.user,
  4432						  &map_idr, &map_idr_lock);
  4433			break;
  4434		case BPF_BTF_GET_NEXT_ID:
  4435			err = bpf_obj_get_next_id(&attr, uattr.user,
  4436						  &btf_idr, &btf_idr_lock);
  4437			break;
  4438		case BPF_PROG_GET_FD_BY_ID:
  4439			err = bpf_prog_get_fd_by_id(&attr);
  4440			break;
  4441		case BPF_MAP_GET_FD_BY_ID:
  4442			err = bpf_map_get_fd_by_id(&attr);
  4443			break;
  4444		case BPF_OBJ_GET_INFO_BY_FD:
  4445			err = bpf_obj_get_info_by_fd(&attr, uattr.user);
  4446			break;
  4447		case BPF_RAW_TRACEPOINT_OPEN:
  4448			err = bpf_raw_tracepoint_open(&attr);
  4449			break;
  4450		case BPF_BTF_LOAD:
  4451			err = bpf_btf_load(&attr);
  4452			break;
  4453		case BPF_BTF_GET_FD_BY_ID:
  4454			err = bpf_btf_get_fd_by_id(&attr);
  4455			break;
  4456		case BPF_TASK_FD_QUERY:
  4457			err = bpf_task_fd_query(&attr, uattr.user);
  4458			break;
  4459		case BPF_MAP_LOOKUP_AND_DELETE_ELEM:
  4460			err = map_lookup_and_delete_elem(&attr);
  4461			break;
  4462		case BPF_MAP_LOOKUP_BATCH:
  4463			err = bpf_map_do_batch(&attr, uattr.user, BPF_MAP_LOOKUP_BATCH);
  4464			break;
  4465		case BPF_MAP_LOOKUP_AND_DELETE_BATCH:
  4466			err = bpf_map_do_batch(&attr, uattr.user,
  4467					       BPF_MAP_LOOKUP_AND_DELETE_BATCH);
  4468			break;
  4469		case BPF_MAP_UPDATE_BATCH:
  4470			err = bpf_map_do_batch(&attr, uattr.user, BPF_MAP_UPDATE_BATCH);
  4471			break;
  4472		case BPF_MAP_DELETE_BATCH:
  4473			err = bpf_map_do_batch(&attr, uattr.user, BPF_MAP_DELETE_BATCH);
  4474			break;
  4475		case BPF_LINK_CREATE:
  4476			err = link_create(&attr, uattr);
  4477			break;
  4478		case BPF_LINK_UPDATE:
  4479			err = link_update(&attr);
  4480			break;
  4481		case BPF_LINK_GET_FD_BY_ID:
  4482			err = bpf_link_get_fd_by_id(&attr);
  4483			break;
  4484		case BPF_LINK_GET_NEXT_ID:
  4485			err = bpf_obj_get_next_id(&attr, uattr.user,
  4486						  &link_idr, &link_idr_lock);
  4487			break;
  4488		case BPF_ENABLE_STATS:
  4489			err = bpf_enable_stats(&attr);
  4490			break;
  4491		case BPF_ITER_CREATE:
  4492			err = bpf_iter_create(&attr);
  4493			break;
  4494		case BPF_LINK_DETACH:
  4495			err = link_detach(&attr);
  4496			break;
  4497		case BPF_PROG_BIND_MAP:
  4498			err = bpf_prog_bind_map(&attr);
  4499			break;
  4500		default:
  4501			err = -EINVAL;
  4502			break;
  4503		}
  4504	
  4505		return err;
  4506	}
  4507	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202102261414.LjQKFAoK-lkp%40intel.com.

--Dxnq1zWXvFF0Q93v
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
+p9GFkcBAA==

--Dxnq1zWXvFF0Q93v--
