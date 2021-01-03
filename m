Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBPEMYX7QKGQEETZXNRA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x337.google.com (mail-ot1-x337.google.com [IPv6:2607:f8b0:4864:20::337])
	by mail.lfdr.de (Postfix) with ESMTPS id 02A752E8A74
	for <lists+clang-built-linux@lfdr.de>; Sun,  3 Jan 2021 05:21:17 +0100 (CET)
Received: by mail-ot1-x337.google.com with SMTP id q5sf18138085otc.11
        for <lists+clang-built-linux@lfdr.de>; Sat, 02 Jan 2021 20:21:17 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1609647676; cv=pass;
        d=google.com; s=arc-20160816;
        b=byNssOo3ZlCL22Rr9pYtnO8aKkeD95KTGRGqypFTmUtoSeA56XEBn1Jqn6ggTAfm6H
         PUMycPPnDYZpL5meq5s2S11DKlvi96DmyWYp0fY9wDzgcggs+1TiE20LPv+4FArJuzLW
         1o2d+e7NVvsHpJEevA0uODa9E3HD3dFLn53+HJB8k/9LtO8KNBXi601NM4uPXuGcPLoL
         uvCqYuFzu5lfdgZlGY89IBUmXCCZq6nNKhVmSH27V5ZWry+MN/qSU4Rn5lQIrh3uvHN+
         LVUu3Qiw4dflZzTszwhagmJ6/ClmpLRK9k9RU49dD/E1T2OgpKmW0gn2l7eT7hST/mrS
         QgDQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=J/MDZtsVIxX2G2qjuthNpgMIjTXmD1tnOxIU4C6dPl8=;
        b=lmgQZHi/k9pZxqI2dCDKxILlboySqhNrI+okmtn2Eu+KDbuHCm5HHTBY3ibqtRuxcy
         1GjDHEJV4jKEVsobD0hqZfFNZsWAYf7/wQfakdE4sgIOhPpJ1LmrzvoczY4HB28XGOSl
         uLqesClOtgsjToduVKs+Pqg7dkQIlxzrQhmqD7hb6P1/2IWqfRRzxLslpi4pscrXuDvJ
         sFzXM6SAjfixJFEknxdFfdlhTqAhWDw35idYVfKgg8Dw4PoEH0Ee+uqtibRVsqk6nlh+
         n00X0YQRl0jPJNuxeYZxC0zek1Nk7lpZw3ApDLiPzD1axPAbh3laOf5a64WhttRrcy0M
         c1kg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.126 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=J/MDZtsVIxX2G2qjuthNpgMIjTXmD1tnOxIU4C6dPl8=;
        b=Fn7ObocBxV/Wu5AKaPnyVmFAZXflXKabyXdm0+6lxUnQZdVRtg7lauA4ODAGAlCCSh
         5kZ6NumeQhRZZTdaVP7R3ite+1vjzQnzpWOj75jv+AZk7IQaSTwTOCZS1bkEc+KwBYla
         2STnHfwKMNPYSxBTL5FeX4+mQKouFYgg1dkOVHnKXoQk6B2J0ufKcMY8IE/SEkZ3jRw/
         wNEIuIFel3ba0hJR3TXd2A6kL4dbkqc6itzAsVmve/bF8fmt8jUlXErdvlQfaCNairp0
         N1qjL8guXxAllQAqWt1meo/Xo+qTYoAGpEBuKiKj5wpydZB2UFBebL0qgHeqyey2vrrd
         qNyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=J/MDZtsVIxX2G2qjuthNpgMIjTXmD1tnOxIU4C6dPl8=;
        b=NTAlzNORNNQRwx10+KMhlbtkek3UdPk7F0V+1C5f5SXDM+6jgaCAK00S7f+anbuhsI
         xgOAWY4qM3f/fPbWrhIpjlDydXnr8bdXtUbDBpCghmdh6+yrIFQrOFfkxQCYm79TVUoL
         TnfmVAYmCcQGxzx7CddN4Glfa0r5pz2BosueXQifjiKZK4RczvNHtZu7ZtkNO7On+dJb
         Ha2Md0t0xuLj/h3i8diDBw+pP4mCWZ5pQVlzQgJ75ya6nT/2zv6p0VJiaQ3zdFnDBrGN
         tN+z6etiB9urAf5BS2Izf+FTfuBZZhM4a5DcV2UeaRGuLGfigSkZEfacNrkdB7zCvfde
         CqFA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5335qr8AsFTwm5irdLV2bYAI9adkBPo/AvmYQNHGUBOV9TYyYBRt
	UGvwWLyMxmLcvteCRLXggO8=
X-Google-Smtp-Source: ABdhPJxj/4iwoq2AYEIbIhZDzR7l/vRHJMu/fgkgtbzYVWq/WTqfXC24rkBsPtjK3EpCjrlc3u3Xqg==
X-Received: by 2002:a4a:3e42:: with SMTP id t63mr45285728oot.32.1609647676404;
        Sat, 02 Jan 2021 20:21:16 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:331:: with SMTP id 46ls18460178otv.7.gmail; Sat, 02 Jan
 2021 20:21:15 -0800 (PST)
X-Received: by 2002:a05:6830:4f:: with SMTP id d15mr48633599otp.185.1609647675826;
        Sat, 02 Jan 2021 20:21:15 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1609647675; cv=none;
        d=google.com; s=arc-20160816;
        b=p57lYDv0EyQ76NAZbuYIOO9OJ1COMcI0Jd5plejUIiQgPbnGKlYIVzRQLkiRsbcZN5
         el5xI4Kzt53UnFA+iCcOSEVj2yCcPZU8hoJB1OedyBWohQFT8v1oAcceRzZFbuRbiNF6
         GrSBk5fB5N9+mM6T5feQgDMBmtAd5j5XPO7M6vvPNyak4J4dmy6/9oxrWiBLi24mj/E5
         Naw+apJAt/9AXfgQXbRVKy8D5wOX/C/aebjeoBC+LndIXQgYye7OMYFn25fa3A3VUkZP
         LmbwtXkQFmCa5Yd1Jhmce4pJ48UbojWwMT7GPNbrm9tYAeCtbUUjCldrADa98pSFgojS
         uQqA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=0/jsHKf+BwmEKFgh+EoEcmJnuKJqnAbQe/63JBeiwM4=;
        b=JBswOxeI22VsNqjipGljkx4WipynClGFIoS9FF+S/ma9KFottdDyH/OWhzEquBRyIq
         i6ygQ7QvSC4EjnPYCysdeUQch41Xvs2Mva5Y5T/d6PUIgqR0Y77Y2WqLAXsv78NHYt9b
         aT2nq3zXD5xL6jxpILuw8eraT6BepqWrndOUHGy6A7SRIJW0X39QrnZIgOtBJdEsWGtJ
         o/U1zmLnrdmgUGaU2/CSO8wMuYJjpk7XGlAJ3/nY4qZt/d9VmaSVWAUbZHqbq3UidgWo
         gWxf418m2s+mzf0agGqV3+vWrtQvXT3Ug5pB7AO1SnX5xDeN5awShOxgaI5H11CQ5pc8
         sXNQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.126 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga18.intel.com (mga18.intel.com. [134.134.136.126])
        by gmr-mx.google.com with ESMTPS id r8si2708958otp.4.2021.01.02.20.21.15
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 02 Jan 2021 20:21:15 -0800 (PST)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.126 as permitted sender) client-ip=134.134.136.126;
IronPort-SDR: 3fVnOIH9FD7fFnYCFawrocLm98g40Ils80H9HDEpJxtyEVw+1cbdiT5LQzkNvdwzBja419w0IG
 QmwOvUnojzIg==
X-IronPort-AV: E=McAfee;i="6000,8403,9852"; a="164555762"
X-IronPort-AV: E=Sophos;i="5.78,471,1599548400"; 
   d="gz'50?scan'50,208,50";a="164555762"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
  by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 02 Jan 2021 20:21:14 -0800
IronPort-SDR: XCzL9CXyPSHMA+jcstq3lDvjyuEOG7eQrY91b1IkPYpBspF7WiGajHZTaog++5AtMDoeUQ8mK/
 jgNbo/Gi2Szw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,471,1599548400"; 
   d="gz'50?scan'50,208,50";a="360366610"
Received: from lkp-server02.sh.intel.com (HELO 4242b19f17ef) ([10.239.97.151])
  by orsmga002.jf.intel.com with ESMTP; 02 Jan 2021 20:21:11 -0800
Received: from kbuild by 4242b19f17ef with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1kvutD-0006ug-A2; Sun, 03 Jan 2021 04:21:11 +0000
Date: Sun, 3 Jan 2021 12:20:18 +0800
From: kernel test robot <lkp@intel.com>
To: Hao Luo <haoluo@google.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org, Alexei Starovoitov <ast@kernel.org>
Subject: kernel/bpf/verifier.c:9689:12: warning: stack frame size of 2128
 bytes in function 'resolve_pseudo_ldimm64'
Message-ID: <202101031213.bzS2ybwQ-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="bp/iNruPH9dso1Pn"
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


--bp/iNruPH9dso1Pn
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi Hao,

FYI, the error/warning still remains.

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
head:   3516bd729358a2a9b090c1905bd2a3fa926e24c6
commit: eaa6bcb71ef6ed3dc18fc525ee7e293b06b4882b bpf: Introduce bpf_per_cpu_ptr()
date:   3 months ago
config: powerpc-randconfig-r004-20210103 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project 20670ba44066df0aae536822b7f7834ee3198c0d)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install powerpc cross compiling tool for clang build
        # apt-get install binutils-powerpc-linux-gnu
        # https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=eaa6bcb71ef6ed3dc18fc525ee7e293b06b4882b
        git remote add linus https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
        git fetch --no-tags linus master
        git checkout eaa6bcb71ef6ed3dc18fc525ee7e293b06b4882b
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=powerpc 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

   __do_insb
   ^
   arch/powerpc/include/asm/io.h:541:56: note: expanded from macro '__do_insb'
   #define __do_insb(p, b, n)      readsb((PCI_IO_ADDR)_IO_BASE+(p), (b), (n))
                                          ~~~~~~~~~~~~~~~~~~~~~^
   In file included from kernel/bpf/verifier.c:12:
   In file included from include/linux/bpf_verifier.h:8:
   In file included from include/linux/filter.h:13:
   In file included from include/linux/skbuff.h:31:
   In file included from include/linux/dma-mapping.h:11:
   In file included from include/linux/scatterlist.h:9:
   In file included from arch/powerpc/include/asm/io.h:604:
   arch/powerpc/include/asm/io-defs.h:45:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(insw, (unsigned long p, void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:601:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:222:1: note: expanded from here
   __do_insw
   ^
   arch/powerpc/include/asm/io.h:542:56: note: expanded from macro '__do_insw'
   #define __do_insw(p, b, n)      readsw((PCI_IO_ADDR)_IO_BASE+(p), (b), (n))
                                          ~~~~~~~~~~~~~~~~~~~~~^
   In file included from kernel/bpf/verifier.c:12:
   In file included from include/linux/bpf_verifier.h:8:
   In file included from include/linux/filter.h:13:
   In file included from include/linux/skbuff.h:31:
   In file included from include/linux/dma-mapping.h:11:
   In file included from include/linux/scatterlist.h:9:
   In file included from arch/powerpc/include/asm/io.h:604:
   arch/powerpc/include/asm/io-defs.h:47:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(insl, (unsigned long p, void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:601:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:224:1: note: expanded from here
   __do_insl
   ^
   arch/powerpc/include/asm/io.h:543:56: note: expanded from macro '__do_insl'
   #define __do_insl(p, b, n)      readsl((PCI_IO_ADDR)_IO_BASE+(p), (b), (n))
                                          ~~~~~~~~~~~~~~~~~~~~~^
   In file included from kernel/bpf/verifier.c:12:
   In file included from include/linux/bpf_verifier.h:8:
   In file included from include/linux/filter.h:13:
   In file included from include/linux/skbuff.h:31:
   In file included from include/linux/dma-mapping.h:11:
   In file included from include/linux/scatterlist.h:9:
   In file included from arch/powerpc/include/asm/io.h:604:
   arch/powerpc/include/asm/io-defs.h:49:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(outsb, (unsigned long p, const void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:601:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:226:1: note: expanded from here
   __do_outsb
   ^
   arch/powerpc/include/asm/io.h:544:58: note: expanded from macro '__do_outsb'
   #define __do_outsb(p, b, n)     writesb((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
                                           ~~~~~~~~~~~~~~~~~~~~~^
   In file included from kernel/bpf/verifier.c:12:
   In file included from include/linux/bpf_verifier.h:8:
   In file included from include/linux/filter.h:13:
   In file included from include/linux/skbuff.h:31:
   In file included from include/linux/dma-mapping.h:11:
   In file included from include/linux/scatterlist.h:9:
   In file included from arch/powerpc/include/asm/io.h:604:
   arch/powerpc/include/asm/io-defs.h:51:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(outsw, (unsigned long p, const void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:601:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:228:1: note: expanded from here
   __do_outsw
   ^
   arch/powerpc/include/asm/io.h:545:58: note: expanded from macro '__do_outsw'
   #define __do_outsw(p, b, n)     writesw((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
                                           ~~~~~~~~~~~~~~~~~~~~~^
   In file included from kernel/bpf/verifier.c:12:
   In file included from include/linux/bpf_verifier.h:8:
   In file included from include/linux/filter.h:13:
   In file included from include/linux/skbuff.h:31:
   In file included from include/linux/dma-mapping.h:11:
   In file included from include/linux/scatterlist.h:9:
   In file included from arch/powerpc/include/asm/io.h:604:
   arch/powerpc/include/asm/io-defs.h:53:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(outsl, (unsigned long p, const void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:601:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:230:1: note: expanded from here
   __do_outsl
   ^
   arch/powerpc/include/asm/io.h:546:58: note: expanded from macro '__do_outsl'
   #define __do_outsl(p, b, n)     writesl((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
                                           ~~~~~~~~~~~~~~~~~~~~~^
>> kernel/bpf/verifier.c:9689:12: warning: stack frame size of 2128 bytes in function 'resolve_pseudo_ldimm64' [-Wframe-larger-than=]
   static int resolve_pseudo_ldimm64(struct bpf_verifier_env *env)
              ^
   kernel/bpf/verifier.c:10747:12: warning: stack frame size of 2368 bytes in function 'fixup_bpf_calls' [-Wframe-larger-than=]
   static int fixup_bpf_calls(struct bpf_verifier_env *env)
              ^
   kernel/bpf/verifier.c:9163:12: warning: stack frame size of 5744 bytes in function 'do_check' [-Wframe-larger-than=]
   static int do_check(struct bpf_verifier_env *env)
              ^
   15 warnings generated.

Kconfig warnings: (for reference only)
   WARNING: unmet direct dependencies detected for HOTPLUG_CPU
   Depends on SMP && (PPC_PSERIES || PPC_PMAC || PPC_POWERNV || FSL_SOC_BOOKE
   Selected by
   - PM_SLEEP_SMP && SMP && (ARCH_SUSPEND_POSSIBLE || ARCH_HIBERNATION_POSSIBLE && PM_SLEEP


vim +/resolve_pseudo_ldimm64 +9689 kernel/bpf/verifier.c

b741f1630346def Roman Gushchin     2018-09-28  9681  
4976b718c3551fa Hao Luo            2020-09-29  9682  /* find and rewrite pseudo imm in ld_imm64 instructions:
4976b718c3551fa Hao Luo            2020-09-29  9683   *
4976b718c3551fa Hao Luo            2020-09-29  9684   * 1. if it accesses map FD, replace it with actual map pointer.
4976b718c3551fa Hao Luo            2020-09-29  9685   * 2. if it accesses btf_id of a VAR, replace it with pointer to the var.
4976b718c3551fa Hao Luo            2020-09-29  9686   *
4976b718c3551fa Hao Luo            2020-09-29  9687   * NOTE: btf_vmlinux is required for converting pseudo btf_id.
0246e64d9a5fcd4 Alexei Starovoitov 2014-09-26  9688   */
4976b718c3551fa Hao Luo            2020-09-29 @9689  static int resolve_pseudo_ldimm64(struct bpf_verifier_env *env)
0246e64d9a5fcd4 Alexei Starovoitov 2014-09-26  9690  {
0246e64d9a5fcd4 Alexei Starovoitov 2014-09-26  9691  	struct bpf_insn *insn = env->prog->insnsi;
0246e64d9a5fcd4 Alexei Starovoitov 2014-09-26  9692  	int insn_cnt = env->prog->len;
fdc15d388d600d5 Alexei Starovoitov 2016-09-01  9693  	int i, j, err;
0246e64d9a5fcd4 Alexei Starovoitov 2014-09-26  9694  
f1f7714ea51c56b Daniel Borkmann    2017-01-13  9695  	err = bpf_prog_calc_tag(env->prog);
aafe6ae9cee32df Daniel Borkmann    2016-12-18  9696  	if (err)
aafe6ae9cee32df Daniel Borkmann    2016-12-18  9697  		return err;
aafe6ae9cee32df Daniel Borkmann    2016-12-18  9698  
0246e64d9a5fcd4 Alexei Starovoitov 2014-09-26  9699  	for (i = 0; i < insn_cnt; i++, insn++) {
9bac3d6d548e5cc Alexei Starovoitov 2015-03-13  9700  		if (BPF_CLASS(insn->code) == BPF_LDX &&
d691f9e8d4405c3 Alexei Starovoitov 2015-06-04  9701  		    (BPF_MODE(insn->code) != BPF_MEM || insn->imm != 0)) {
61bd5218eef349f Jakub Kicinski     2017-10-09  9702  			verbose(env, "BPF_LDX uses reserved fields\n");
9bac3d6d548e5cc Alexei Starovoitov 2015-03-13  9703  			return -EINVAL;
9bac3d6d548e5cc Alexei Starovoitov 2015-03-13  9704  		}
9bac3d6d548e5cc Alexei Starovoitov 2015-03-13  9705  
d691f9e8d4405c3 Alexei Starovoitov 2015-06-04  9706  		if (BPF_CLASS(insn->code) == BPF_STX &&
d691f9e8d4405c3 Alexei Starovoitov 2015-06-04  9707  		    ((BPF_MODE(insn->code) != BPF_MEM &&
d691f9e8d4405c3 Alexei Starovoitov 2015-06-04  9708  		      BPF_MODE(insn->code) != BPF_XADD) || insn->imm != 0)) {
61bd5218eef349f Jakub Kicinski     2017-10-09  9709  			verbose(env, "BPF_STX uses reserved fields\n");
d691f9e8d4405c3 Alexei Starovoitov 2015-06-04  9710  			return -EINVAL;
d691f9e8d4405c3 Alexei Starovoitov 2015-06-04  9711  		}
d691f9e8d4405c3 Alexei Starovoitov 2015-06-04  9712  
0246e64d9a5fcd4 Alexei Starovoitov 2014-09-26  9713  		if (insn[0].code == (BPF_LD | BPF_IMM | BPF_DW)) {
d8eca5bbb2be9bc Daniel Borkmann    2019-04-09  9714  			struct bpf_insn_aux_data *aux;
0246e64d9a5fcd4 Alexei Starovoitov 2014-09-26  9715  			struct bpf_map *map;
0246e64d9a5fcd4 Alexei Starovoitov 2014-09-26  9716  			struct fd f;
d8eca5bbb2be9bc Daniel Borkmann    2019-04-09  9717  			u64 addr;
0246e64d9a5fcd4 Alexei Starovoitov 2014-09-26  9718  
0246e64d9a5fcd4 Alexei Starovoitov 2014-09-26  9719  			if (i == insn_cnt - 1 || insn[1].code != 0 ||
0246e64d9a5fcd4 Alexei Starovoitov 2014-09-26  9720  			    insn[1].dst_reg != 0 || insn[1].src_reg != 0 ||
0246e64d9a5fcd4 Alexei Starovoitov 2014-09-26  9721  			    insn[1].off != 0) {
61bd5218eef349f Jakub Kicinski     2017-10-09  9722  				verbose(env, "invalid bpf_ld_imm64 insn\n");
0246e64d9a5fcd4 Alexei Starovoitov 2014-09-26  9723  				return -EINVAL;
0246e64d9a5fcd4 Alexei Starovoitov 2014-09-26  9724  			}
0246e64d9a5fcd4 Alexei Starovoitov 2014-09-26  9725  
d8eca5bbb2be9bc Daniel Borkmann    2019-04-09  9726  			if (insn[0].src_reg == 0)
0246e64d9a5fcd4 Alexei Starovoitov 2014-09-26  9727  				/* valid generic load 64-bit imm */
0246e64d9a5fcd4 Alexei Starovoitov 2014-09-26  9728  				goto next_insn;
0246e64d9a5fcd4 Alexei Starovoitov 2014-09-26  9729  
4976b718c3551fa Hao Luo            2020-09-29  9730  			if (insn[0].src_reg == BPF_PSEUDO_BTF_ID) {
4976b718c3551fa Hao Luo            2020-09-29  9731  				aux = &env->insn_aux_data[i];
4976b718c3551fa Hao Luo            2020-09-29  9732  				err = check_pseudo_btf_id(env, insn, aux);
4976b718c3551fa Hao Luo            2020-09-29  9733  				if (err)
4976b718c3551fa Hao Luo            2020-09-29  9734  					return err;
4976b718c3551fa Hao Luo            2020-09-29  9735  				goto next_insn;
4976b718c3551fa Hao Luo            2020-09-29  9736  			}
4976b718c3551fa Hao Luo            2020-09-29  9737  
d8eca5bbb2be9bc Daniel Borkmann    2019-04-09  9738  			/* In final convert_pseudo_ld_imm64() step, this is
d8eca5bbb2be9bc Daniel Borkmann    2019-04-09  9739  			 * converted into regular 64-bit imm load insn.
d8eca5bbb2be9bc Daniel Borkmann    2019-04-09  9740  			 */
d8eca5bbb2be9bc Daniel Borkmann    2019-04-09  9741  			if ((insn[0].src_reg != BPF_PSEUDO_MAP_FD &&
d8eca5bbb2be9bc Daniel Borkmann    2019-04-09  9742  			     insn[0].src_reg != BPF_PSEUDO_MAP_VALUE) ||
d8eca5bbb2be9bc Daniel Borkmann    2019-04-09  9743  			    (insn[0].src_reg == BPF_PSEUDO_MAP_FD &&
d8eca5bbb2be9bc Daniel Borkmann    2019-04-09  9744  			     insn[1].imm != 0)) {
d8eca5bbb2be9bc Daniel Borkmann    2019-04-09  9745  				verbose(env,
d8eca5bbb2be9bc Daniel Borkmann    2019-04-09  9746  					"unrecognized bpf_ld_imm64 insn\n");
0246e64d9a5fcd4 Alexei Starovoitov 2014-09-26  9747  				return -EINVAL;
0246e64d9a5fcd4 Alexei Starovoitov 2014-09-26  9748  			}
0246e64d9a5fcd4 Alexei Starovoitov 2014-09-26  9749  
20182390c413447 Daniel Borkmann    2019-03-04  9750  			f = fdget(insn[0].imm);
c210129760a010b Daniel Borkmann    2015-10-29  9751  			map = __bpf_map_get(f);
0246e64d9a5fcd4 Alexei Starovoitov 2014-09-26  9752  			if (IS_ERR(map)) {
61bd5218eef349f Jakub Kicinski     2017-10-09  9753  				verbose(env, "fd %d is not pointing to valid bpf_map\n",
20182390c413447 Daniel Borkmann    2019-03-04  9754  					insn[0].imm);
0246e64d9a5fcd4 Alexei Starovoitov 2014-09-26  9755  				return PTR_ERR(map);
0246e64d9a5fcd4 Alexei Starovoitov 2014-09-26  9756  			}
0246e64d9a5fcd4 Alexei Starovoitov 2014-09-26  9757  
61bd5218eef349f Jakub Kicinski     2017-10-09  9758  			err = check_map_prog_compatibility(env, map, env->prog);
fdc15d388d600d5 Alexei Starovoitov 2016-09-01  9759  			if (err) {
fdc15d388d600d5 Alexei Starovoitov 2016-09-01  9760  				fdput(f);
fdc15d388d600d5 Alexei Starovoitov 2016-09-01  9761  				return err;
fdc15d388d600d5 Alexei Starovoitov 2016-09-01  9762  			}
fdc15d388d600d5 Alexei Starovoitov 2016-09-01  9763  
d8eca5bbb2be9bc Daniel Borkmann    2019-04-09  9764  			aux = &env->insn_aux_data[i];
d8eca5bbb2be9bc Daniel Borkmann    2019-04-09  9765  			if (insn->src_reg == BPF_PSEUDO_MAP_FD) {
d8eca5bbb2be9bc Daniel Borkmann    2019-04-09  9766  				addr = (unsigned long)map;
d8eca5bbb2be9bc Daniel Borkmann    2019-04-09  9767  			} else {
d8eca5bbb2be9bc Daniel Borkmann    2019-04-09  9768  				u32 off = insn[1].imm;
d8eca5bbb2be9bc Daniel Borkmann    2019-04-09  9769  
d8eca5bbb2be9bc Daniel Borkmann    2019-04-09  9770  				if (off >= BPF_MAX_VAR_OFF) {
d8eca5bbb2be9bc Daniel Borkmann    2019-04-09  9771  					verbose(env, "direct value offset of %u is not allowed\n", off);
d8eca5bbb2be9bc Daniel Borkmann    2019-04-09  9772  					fdput(f);
d8eca5bbb2be9bc Daniel Borkmann    2019-04-09  9773  					return -EINVAL;
d8eca5bbb2be9bc Daniel Borkmann    2019-04-09  9774  				}
d8eca5bbb2be9bc Daniel Borkmann    2019-04-09  9775  
d8eca5bbb2be9bc Daniel Borkmann    2019-04-09  9776  				if (!map->ops->map_direct_value_addr) {
d8eca5bbb2be9bc Daniel Borkmann    2019-04-09  9777  					verbose(env, "no direct value access support for this map type\n");
d8eca5bbb2be9bc Daniel Borkmann    2019-04-09  9778  					fdput(f);
d8eca5bbb2be9bc Daniel Borkmann    2019-04-09  9779  					return -EINVAL;
d8eca5bbb2be9bc Daniel Borkmann    2019-04-09  9780  				}
d8eca5bbb2be9bc Daniel Borkmann    2019-04-09  9781  
d8eca5bbb2be9bc Daniel Borkmann    2019-04-09  9782  				err = map->ops->map_direct_value_addr(map, &addr, off);
d8eca5bbb2be9bc Daniel Borkmann    2019-04-09  9783  				if (err) {
d8eca5bbb2be9bc Daniel Borkmann    2019-04-09  9784  					verbose(env, "invalid access to map value pointer, value_size=%u off=%u\n",
d8eca5bbb2be9bc Daniel Borkmann    2019-04-09  9785  						map->value_size, off);
d8eca5bbb2be9bc Daniel Borkmann    2019-04-09  9786  					fdput(f);
d8eca5bbb2be9bc Daniel Borkmann    2019-04-09  9787  					return err;
d8eca5bbb2be9bc Daniel Borkmann    2019-04-09  9788  				}
d8eca5bbb2be9bc Daniel Borkmann    2019-04-09  9789  
d8eca5bbb2be9bc Daniel Borkmann    2019-04-09  9790  				aux->map_off = off;
d8eca5bbb2be9bc Daniel Borkmann    2019-04-09  9791  				addr += off;
d8eca5bbb2be9bc Daniel Borkmann    2019-04-09  9792  			}
d8eca5bbb2be9bc Daniel Borkmann    2019-04-09  9793  
d8eca5bbb2be9bc Daniel Borkmann    2019-04-09  9794  			insn[0].imm = (u32)addr;
d8eca5bbb2be9bc Daniel Borkmann    2019-04-09  9795  			insn[1].imm = addr >> 32;
0246e64d9a5fcd4 Alexei Starovoitov 2014-09-26  9796  
0246e64d9a5fcd4 Alexei Starovoitov 2014-09-26  9797  			/* check whether we recorded this map already */
d8eca5bbb2be9bc Daniel Borkmann    2019-04-09  9798  			for (j = 0; j < env->used_map_cnt; j++) {
0246e64d9a5fcd4 Alexei Starovoitov 2014-09-26  9799  				if (env->used_maps[j] == map) {
d8eca5bbb2be9bc Daniel Borkmann    2019-04-09  9800  					aux->map_index = j;
0246e64d9a5fcd4 Alexei Starovoitov 2014-09-26  9801  					fdput(f);
0246e64d9a5fcd4 Alexei Starovoitov 2014-09-26  9802  					goto next_insn;
0246e64d9a5fcd4 Alexei Starovoitov 2014-09-26  9803  				}
d8eca5bbb2be9bc Daniel Borkmann    2019-04-09  9804  			}
0246e64d9a5fcd4 Alexei Starovoitov 2014-09-26  9805  
0246e64d9a5fcd4 Alexei Starovoitov 2014-09-26  9806  			if (env->used_map_cnt >= MAX_USED_MAPS) {
0246e64d9a5fcd4 Alexei Starovoitov 2014-09-26  9807  				fdput(f);
0246e64d9a5fcd4 Alexei Starovoitov 2014-09-26  9808  				return -E2BIG;
0246e64d9a5fcd4 Alexei Starovoitov 2014-09-26  9809  			}
0246e64d9a5fcd4 Alexei Starovoitov 2014-09-26  9810  
0246e64d9a5fcd4 Alexei Starovoitov 2014-09-26  9811  			/* hold the map. If the program is rejected by verifier,
0246e64d9a5fcd4 Alexei Starovoitov 2014-09-26  9812  			 * the map will be released by release_maps() or it
0246e64d9a5fcd4 Alexei Starovoitov 2014-09-26  9813  			 * will be used by the valid program until it's unloaded
ab7f5bf0928be2f Jakub Kicinski     2018-05-03  9814  			 * and all maps are released in free_used_maps()
0246e64d9a5fcd4 Alexei Starovoitov 2014-09-26  9815  			 */
1e0bd5a091e5d9e Andrii Nakryiko    2019-11-17  9816  			bpf_map_inc(map);
d8eca5bbb2be9bc Daniel Borkmann    2019-04-09  9817  
d8eca5bbb2be9bc Daniel Borkmann    2019-04-09  9818  			aux->map_index = env->used_map_cnt;
92117d8443bc5af Alexei Starovoitov 2016-04-27  9819  			env->used_maps[env->used_map_cnt++] = map;
92117d8443bc5af Alexei Starovoitov 2016-04-27  9820  
b741f1630346def Roman Gushchin     2018-09-28  9821  			if (bpf_map_is_cgroup_storage(map) &&
e47304232b37336 Daniel Borkmann    2019-12-17  9822  			    bpf_cgroup_storage_assign(env->prog->aux, map)) {
b741f1630346def Roman Gushchin     2018-09-28  9823  				verbose(env, "only one cgroup storage of each type is allowed\n");
de9cbbaadba5adf Roman Gushchin     2018-08-02  9824  				fdput(f);
de9cbbaadba5adf Roman Gushchin     2018-08-02  9825  				return -EBUSY;
de9cbbaadba5adf Roman Gushchin     2018-08-02  9826  			}
de9cbbaadba5adf Roman Gushchin     2018-08-02  9827  
0246e64d9a5fcd4 Alexei Starovoitov 2014-09-26  9828  			fdput(f);
0246e64d9a5fcd4 Alexei Starovoitov 2014-09-26  9829  next_insn:
0246e64d9a5fcd4 Alexei Starovoitov 2014-09-26  9830  			insn++;
0246e64d9a5fcd4 Alexei Starovoitov 2014-09-26  9831  			i++;
5e581dad4fec0e6 Daniel Borkmann    2018-01-26  9832  			continue;
5e581dad4fec0e6 Daniel Borkmann    2018-01-26  9833  		}
5e581dad4fec0e6 Daniel Borkmann    2018-01-26  9834  
5e581dad4fec0e6 Daniel Borkmann    2018-01-26  9835  		/* Basic sanity check before we invest more work here. */
5e581dad4fec0e6 Daniel Borkmann    2018-01-26  9836  		if (!bpf_opcode_in_insntable(insn->code)) {
5e581dad4fec0e6 Daniel Borkmann    2018-01-26  9837  			verbose(env, "unknown opcode %02x\n", insn->code);
5e581dad4fec0e6 Daniel Borkmann    2018-01-26  9838  			return -EINVAL;
0246e64d9a5fcd4 Alexei Starovoitov 2014-09-26  9839  		}
0246e64d9a5fcd4 Alexei Starovoitov 2014-09-26  9840  	}
0246e64d9a5fcd4 Alexei Starovoitov 2014-09-26  9841  
0246e64d9a5fcd4 Alexei Starovoitov 2014-09-26  9842  	/* now all pseudo BPF_LD_IMM64 instructions load valid
0246e64d9a5fcd4 Alexei Starovoitov 2014-09-26  9843  	 * 'struct bpf_map *' into a register instead of user map_fd.
0246e64d9a5fcd4 Alexei Starovoitov 2014-09-26  9844  	 * These pointers will be used later by verifier to validate map access.
0246e64d9a5fcd4 Alexei Starovoitov 2014-09-26  9845  	 */
0246e64d9a5fcd4 Alexei Starovoitov 2014-09-26  9846  	return 0;
0246e64d9a5fcd4 Alexei Starovoitov 2014-09-26  9847  }
0246e64d9a5fcd4 Alexei Starovoitov 2014-09-26  9848  

:::::: The code at line 9689 was first introduced by commit
:::::: 4976b718c3551faba2c0616ef55ebeb74db1c5ca bpf: Introduce pseudo_btf_id

:::::: TO: Hao Luo <haoluo@google.com>
:::::: CC: Alexei Starovoitov <ast@kernel.org>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202101031213.bzS2ybwQ-lkp%40intel.com.

--bp/iNruPH9dso1Pn
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--bp/iNruPH9dso1Pn--
