Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBM5O434QKGQEVKO444Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13d.google.com (mail-il1-x13d.google.com [IPv6:2607:f8b0:4864:20::13d])
	by mail.lfdr.de (Postfix) with ESMTPS id 30C55245979
	for <lists+clang-built-linux@lfdr.de>; Sun, 16 Aug 2020 22:29:41 +0200 (CEST)
Received: by mail-il1-x13d.google.com with SMTP id t79sf10663924ild.5
        for <lists+clang-built-linux@lfdr.de>; Sun, 16 Aug 2020 13:29:41 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597609780; cv=pass;
        d=google.com; s=arc-20160816;
        b=uZp5NOwllE6JJdUfHXDXiBWnOifaVf1VmAPihwCpFTjBbdeo/0o5Je9SlXl/9+ZDK3
         Dcm8gKU8h5kapLD7HvxfMQpOgFPJyLchUo0zDTfGgmSVRgAni7BVFTL9NzTj/QrLjYmG
         aCqXFu4KBGn405hmWUEyl6Evydhc6NaTBCohF7yYeVrhOAEjTFuFKe8ZMwT45R4IOlFQ
         QySbSX0+U8g5ECXWe6shEiFYs3EWlM+x6xn7Z034LGDdAf8/tTES5WvZZErqgyhaOPBY
         D4AGp4y1mhM8ZoY26QVUAZIgfv9HhyCkTegp7ptH3asg+L/DDtgfLfYAnLMrpP80hcyA
         LAWg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=h4FzYi3TxQL83oOyW8Hf7FoGZwiPDH69/HhgwZzglGc=;
        b=PJjvTIak5xVDXAAKyUIlSNo2EwN/GITxCQbYiM4NtaMdQB3wi2X3YyKzOQyhATUnuj
         SWiNi6dpLFXt0JTUvgtiMyImQkfcqI69NcA3MHtEI8cIIW6HHb00FBcI0ay/rIhUx0LY
         PGVTJ/rL1xb/IU2oWX9jFg+v7qokEpFoXqeUQLDtFVu7lLrs5aHZY6XNukTqGClnK993
         dvZyUKKxXDcmqeF5+8krZp5co2S6uFSsDTPfl2JJuQiHAXdhdAKYiOgwEVmRoEEbPuUQ
         cqWm55cIvr8oo6cKfrBHUWNRv/9eQ2e0o3SJXlsNKpv/0r5nAcku8Gr7nFUzfYbzX9rv
         CW4Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.88 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=h4FzYi3TxQL83oOyW8Hf7FoGZwiPDH69/HhgwZzglGc=;
        b=fdH0aCZDvP/cLhMyuI5O1ee1KjgM35GXvIvI2xFq7x254LgT2l7CHb+sCWBf23Ev+j
         FfEfuMAV9bVGoXFlqGurRAYXXYsMw+8z4jPrwO2YCo+azw7sxIzBWtCVq1ZxwcTtdqgG
         7ot1t4cUNOIBOV4Ng+vBzediOatc0KWv4/srQ3gSeEUZvlqWlZvIpgL/I325D5AT5nCh
         AKUn/kCCs+1pkh7FQF1gfy5+eqCR0q0clRPWh5PAwavHWrndiRMy3DQ7ThZAaRIvccHX
         lg/RmQUGguYDc3efPyea+SD+f18AGvfjfQkwoHMhuH9JTX2zC34Sl/nOkBOKJvd+y5zP
         VilA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=h4FzYi3TxQL83oOyW8Hf7FoGZwiPDH69/HhgwZzglGc=;
        b=KC91Uz55Z1O4n+JsIkctFCVTQ3f3x9aXX1E8PMO4Ztgz+dp5j2tL75sWzi3+9sqcOy
         EiAfhi+aorKu7CE7HlqtsjcOsg52w5/UZDHoNcul2V5f/v3x/Jwa65jxUGwNtR/vcEOD
         Ih0C6HaaIl3RQqWd1lPixlPjpxXD8bRCbhu8YeHDKhFElDYVVmGmrtBbHRmq8cQRpKFO
         Te/AM4qBDRGPBbW7q5b8RUZUDFmixQrgXS5+S6ThasdkFGXFd7M+0U6I/6fxglcW07Hv
         MND7b8gYQpXYPVLMFUhbsZFkudeWpDY0mWc4a+ePXNshyWFTFMK5nermt5BU2TgjC8fP
         l7cA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531Nn8ns7wmNtihbnWIZygJSZw5yCRQSUoOt6ILmroposIGhtg15
	0qmtkE73rqF9aAWIIp7ryA4=
X-Google-Smtp-Source: ABdhPJw8KVem0QTMwvKEqP+CnqCZrYRaLwj2a1uFKODdAM9b5gp1o7OzIkTd4jjCFlhL+ENeZsCl2A==
X-Received: by 2002:a05:6602:1406:: with SMTP id t6mr10036776iov.184.1597609779790;
        Sun, 16 Aug 2020 13:29:39 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6e02:110f:: with SMTP id u15ls3151315ilk.7.gmail; Sun,
 16 Aug 2020 13:29:39 -0700 (PDT)
X-Received: by 2002:a92:408c:: with SMTP id d12mr11202026ill.230.1597609779426;
        Sun, 16 Aug 2020 13:29:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597609779; cv=none;
        d=google.com; s=arc-20160816;
        b=x2osrIdeOmB1v52cqcVliflwz3T0ruipU5Uk7wfV82SURRGzyFj8r5CG6rsYQkw4A2
         C0Xgzbc5FDlDIVYA1i3+2iexQbhb/INAuEbhIdzOm2URow6oR9EdbWMCnBIQXxa+vO7H
         7QrOoUo7gjHdru8MvY6PEBeZvGT31oyAhzJBzUpSJrFs5Gp2B+fEag2TVGNMthyZ32DF
         jgw4/NSyC5R/b7efz3DVSFXoY84rjA7eBEw7O7GwmUJJ2uGPK7LNCgdW6sa0FfRdSOkV
         z6k5D6VN53TguwexgqXCda5UAp6rEzot+KsZpVn8bbVna0vwZU6ggfGXqerN8TAmKbWt
         os3g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=d7w4nrv6JsznkmHuEt983qkKQkbTRsIYpFa39oR+dmQ=;
        b=aHzGkiDkuYA0vv6v2B2M5OspFX4Z26JqiqEIHy7cgMcMWfOSpy9EB5LAduggTFliuI
         sqPA3Z5G+2St5JaOXJX2D0m95DK9ji5J301Neaguq3+r0hIQkjqDyEgUzLdTrtkGwvnz
         R1c+R8JYpzr4DfI++tK5yyzzuu5+ichlH9moKkgZBIlRqOGKFLtdujKTXb9XMrr9WMoS
         EjgL8HUwGDlPLg8CpXxHmT+YxZuXBv3VWJv415SdCE3ZZRi7isEhXXN992EZCZqj6bbm
         Gz/2wN5flNS3W7tmPZDMuq+oozixeVj8fFrx0vwpdkqJzSfiHSE3sS8I3T9saTKF6lSJ
         dhNw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.88 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga01.intel.com (mga01.intel.com. [192.55.52.88])
        by gmr-mx.google.com with ESMTPS id m13si319833ilf.5.2020.08.16.13.29.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 16 Aug 2020 13:29:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.88 as permitted sender) client-ip=192.55.52.88;
IronPort-SDR: +vwovqzjZiAImpvLfvW9WYMoDztq0bdWGIemhLGfeZwyhCHvVRW7erchvW7fthAqlGXcVaB8Op
 5OXZZRn7hBSw==
X-IronPort-AV: E=McAfee;i="6000,8403,9715"; a="172659245"
X-IronPort-AV: E=Sophos;i="5.76,321,1592895600"; 
   d="gz'50?scan'50,208,50";a="172659245"
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
  by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 16 Aug 2020 13:29:38 -0700
IronPort-SDR: AVhiXaoMFwaLk9MCM3x7kD39fDvqUucuWgfEoLAtb2QtvTM4OdFcSMFgp7u4TRaqW64mYvze7y
 YpPkWphJAmWQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,321,1592895600"; 
   d="gz'50?scan'50,208,50";a="336092545"
Received: from lkp-server02.sh.intel.com (HELO 2f0d8b563e65) ([10.239.97.151])
  by orsmga007.jf.intel.com with ESMTP; 16 Aug 2020 13:29:35 -0700
Received: from kbuild by 2f0d8b563e65 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1k7PHb-0000E0-5J; Sun, 16 Aug 2020 20:29:35 +0000
Date: Mon, 17 Aug 2020 04:29:18 +0800
From: kernel test robot <lkp@intel.com>
To: Jiaxun Yang <jiaxun.yang@flygoat.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org, Paul Burton <paulburton@kernel.org>
Subject: include/linux/topology.h:119:9: error: implicit declaration of
 function 'cpu_logical_map'
Message-ID: <202008170412.HJDmObR2%lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="RnlQjJ0d97Da+TV1"
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


--RnlQjJ0d97Da+TV1
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi Jiaxun,

FYI, the error/warning still remains.

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
head:   2cc3c4b3c2e9c99e90aaf19cd801ff2c160f283c
commit: 71e2f4dd5a65bd8dbca0b77661e75eea471168f8 MIPS: Fork loongson2ef from loongson64
date:   10 months ago
config: mips-randconfig-r001-20200817 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project ab9fc8bae805c785066779e76e7846aabad5609e)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install mips cross compiling tool for clang build
        # apt-get install binutils-mips-linux-gnu
        git checkout 71e2f4dd5a65bd8dbca0b77661e75eea471168f8
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=mips 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

   clang-12: warning: argument unused during compilation: '-mno-branch-likely' [-Wunused-command-line-argument]
   error: unknown target CPU 'r4600'
   note: valid target CPU values are: mips1, mips2, mips3, mips4, mips5, mips32, mips32r2, mips32r3, mips32r5, mips32r6, mips64, mips64r2, mips64r3, mips64r5, mips64r6, octeon, octeon+, p5600
   clang-12: warning: argument unused during compilation: '-mno-branch-likely' [-Wunused-command-line-argument]
   In file included from arch/mips/kernel/asm-offsets.c:12:
   In file included from include/linux/compat.h:15:
   In file included from include/linux/socket.h:8:
   In file included from include/linux/uio.h:10:
   In file included from include/crypto/hash.h:11:
   In file included from include/linux/crypto.h:19:
   In file included from include/linux/slab.h:15:
   In file included from include/linux/gfp.h:9:
>> include/linux/topology.h:119:9: error: implicit declaration of function 'cpu_logical_map' [-Werror,-Wimplicit-function-declaration]
           return cpu_to_node(raw_smp_processor_id());
                  ^
   arch/mips/include/asm/mach-loongson64/topology.h:7:27: note: expanded from macro 'cpu_to_node'
   #define cpu_to_node(cpu)        (cpu_logical_map(cpu) >> 2)
                                    ^
   In file included from arch/mips/kernel/asm-offsets.c:12:
   In file included from include/linux/compat.h:15:
   In file included from include/linux/socket.h:8:
   In file included from include/linux/uio.h:10:
   In file included from include/crypto/hash.h:11:
   In file included from include/linux/crypto.h:19:
   In file included from include/linux/slab.h:15:
   In file included from include/linux/gfp.h:9:
   include/linux/topology.h:193:9: error: implicit declaration of function 'cpu_logical_map' [-Werror,-Wimplicit-function-declaration]
           return cpu_to_node(cpu);
                  ^
   arch/mips/include/asm/mach-loongson64/topology.h:7:27: note: expanded from macro 'cpu_to_node'
   #define cpu_to_node(cpu)        (cpu_logical_map(cpu) >> 2)
                                    ^
   In file included from arch/mips/kernel/asm-offsets.c:12:
   In file included from include/linux/compat.h:15:
   In file included from include/linux/socket.h:8:
   In file included from include/linux/uio.h:10:
   In file included from include/crypto/hash.h:11:
   In file included from include/linux/crypto.h:19:
   In file included from include/linux/slab.h:15:
   In file included from include/linux/gfp.h:9:
   include/linux/topology.h:227:25: error: implicit declaration of function 'cpu_logical_map' [-Werror,-Wimplicit-function-declaration]
           return cpumask_of_node(cpu_to_node(cpu));
                                  ^
   arch/mips/include/asm/mach-loongson64/topology.h:7:27: note: expanded from macro 'cpu_to_node'
   #define cpu_to_node(cpu)        (cpu_logical_map(cpu) >> 2)
                                    ^
   arch/mips/kernel/asm-offsets.c:26:6: warning: no previous prototype for function 'output_ptreg_defines' [-Wmissing-prototypes]
   void output_ptreg_defines(void)
        ^
   arch/mips/kernel/asm-offsets.c:26:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void output_ptreg_defines(void)
   ^
   static 
   arch/mips/kernel/asm-offsets.c:78:6: warning: no previous prototype for function 'output_task_defines' [-Wmissing-prototypes]
   void output_task_defines(void)
        ^
   arch/mips/kernel/asm-offsets.c:78:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void output_task_defines(void)
   ^
   static 
   arch/mips/kernel/asm-offsets.c:93:6: warning: no previous prototype for function 'output_thread_info_defines' [-Wmissing-prototypes]
   void output_thread_info_defines(void)
        ^
   arch/mips/kernel/asm-offsets.c:93:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void output_thread_info_defines(void)
   ^
   static 
   arch/mips/kernel/asm-offsets.c:110:6: warning: no previous prototype for function 'output_thread_defines' [-Wmissing-prototypes]
   void output_thread_defines(void)
        ^
   arch/mips/kernel/asm-offsets.c:110:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void output_thread_defines(void)
   ^
   static 
   arch/mips/kernel/asm-offsets.c:181:6: warning: no previous prototype for function 'output_mm_defines' [-Wmissing-prototypes]
   void output_mm_defines(void)
        ^
   arch/mips/kernel/asm-offsets.c:181:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void output_mm_defines(void)
   ^
   static 
   arch/mips/kernel/asm-offsets.c:242:6: warning: no previous prototype for function 'output_sc_defines' [-Wmissing-prototypes]
   void output_sc_defines(void)
        ^
   arch/mips/kernel/asm-offsets.c:242:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void output_sc_defines(void)
   ^
   static 
   arch/mips/kernel/asm-offsets.c:255:6: warning: no previous prototype for function 'output_signal_defined' [-Wmissing-prototypes]
   void output_signal_defined(void)
        ^
   arch/mips/kernel/asm-offsets.c:255:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void output_signal_defined(void)
   ^
   static 
   arch/mips/kernel/asm-offsets.c:322:6: warning: no previous prototype for function 'output_pbe_defines' [-Wmissing-prototypes]
   void output_pbe_defines(void)
        ^
   arch/mips/kernel/asm-offsets.c:322:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void output_pbe_defines(void)
   ^
   static 
   8 warnings and 3 errors generated.
   make[2]: *** [scripts/Makefile.build:99: arch/mips/kernel/asm-offsets.s] Error 1
   make[2]: Target 'missing-syscalls' not remade because of errors.
   make[1]: *** [arch/mips/Makefile:414: archprepare] Error 2
   make[1]: Target 'prepare' not remade because of errors.
   make: *** [Makefile:179: sub-make] Error 2
   make: Target 'prepare' not remade because of errors.

# https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=71e2f4dd5a65bd8dbca0b77661e75eea471168f8
git remote add linus https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
git fetch --no-tags linus master
git checkout 71e2f4dd5a65bd8dbca0b77661e75eea471168f8
vim +/cpu_logical_map +119 include/linux/topology.h

7281201922a006 Lee Schermerhorn 2010-05-26  114  
7281201922a006 Lee Schermerhorn 2010-05-26  115  /* Returns the number of the current Node. */
7281201922a006 Lee Schermerhorn 2010-05-26  116  #ifndef numa_node_id
7281201922a006 Lee Schermerhorn 2010-05-26  117  static inline int numa_node_id(void)
7281201922a006 Lee Schermerhorn 2010-05-26  118  {
7281201922a006 Lee Schermerhorn 2010-05-26 @119  	return cpu_to_node(raw_smp_processor_id());
7281201922a006 Lee Schermerhorn 2010-05-26  120  }
7281201922a006 Lee Schermerhorn 2010-05-26  121  #endif
7281201922a006 Lee Schermerhorn 2010-05-26  122  

:::::: The code at line 119 was first introduced by commit
:::::: 7281201922a0063fa60804ce39c277fc98142a47 numa: add generic percpu var numa_node_id() implementation

:::::: TO: Lee Schermerhorn <lee.schermerhorn@hp.com>
:::::: CC: Linus Torvalds <torvalds@linux-foundation.org>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202008170412.HJDmObR2%25lkp%40intel.com.

--RnlQjJ0d97Da+TV1
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
AA==

--RnlQjJ0d97Da+TV1--
