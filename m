Return-Path: <clang-built-linux+bncBC4LXIPCY4NRB2GBQKAQMGQERMZP3LI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x537.google.com (mail-pg1-x537.google.com [IPv6:2607:f8b0:4864:20::537])
	by mail.lfdr.de (Postfix) with ESMTPS id 344533128E7
	for <lists+clang-built-linux@lfdr.de>; Mon,  8 Feb 2021 03:24:42 +0100 (CET)
Received: by mail-pg1-x537.google.com with SMTP id w19sf29512pgj.13
        for <lists+clang-built-linux@lfdr.de>; Sun, 07 Feb 2021 18:24:42 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612751080; cv=pass;
        d=google.com; s=arc-20160816;
        b=ZW5DUlXQcINmr+B3Yhu8GT3cJNrutogr+YU2TOguejOzQnVdpaHk6iYiDXjfuKxiC5
         PZ9Sq6INQzzjrd3ic3BAcPlbswsPdCgUlhVu+Ld3stFX8AC5z8iwqNff/T/ivDJPfxKR
         qltEXAnWN9tseMRv183Gc/84CdM9jbiP6oCVNZRHbIVP9oFmtwQOWNYFgMDLWr6Lu1Cg
         nFJ9JfcsXYBdVBH2dZdiFn4eilaev80xkq56VRp6KoudLLPhFIKG4U+WjLC3ZTQHouhG
         qoP+YfzJjge6X0e9Lq1xH42A2oLagzu6Ai0NvvKmOXZ3kc62lTgLnU3LWrwWNJasxkd/
         zMAw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=s0sgYZNYMJqAGhiTJTxm2Xe/Gtsrs++Z1qgidOc+Fjc=;
        b=pG5i08ihsUfq3pUiefT8pUcy4d1Rteuw2ghGN37QCC7283q1kyOCqjbVgq+DdkjUBQ
         ZJtE+X5ShsplGN+aYhZH0+g51vHF6EXfKs3HQIWMakMj9GtlnFtxoqvEsx2ut0Jl6Uow
         6ldTtumnbciklRQIwJinEu1aos64VP9kgeC4/BV7h9w3Wj0JBapUasjdXHmSCEtOBbxS
         yMrhAynjTtxsTuJEl7cBZGqKaEeUs/+g2tb/kD0g/5v7MFfvXMxG0n8dwTrHyl5DkyqI
         8UUHag8gck9WE4mzfs7O99e2ece+oP2biImxGHfVkR9dplr0SBBVRS9cooaBQFmGafNR
         Jjhg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.93 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=s0sgYZNYMJqAGhiTJTxm2Xe/Gtsrs++Z1qgidOc+Fjc=;
        b=C+rD9LbTYz4H0L8sShblQ8k0/tC8YFoOuZ/fS+4BpNq3CQ5a4fVGqwvzoEYLL8O+uU
         FD7sMQtNFGKfrKAEqWt4bacDPJIHGBgmDcitm1uffHaNrYNrrfjUAttR37J0zXtlwFW1
         B1+a9S+GVMA0mSqW9vbZ08uH3D9tLgeqCOvFakA7jdS5Cu8iA3FguwzwDbTAzA21DUPi
         fj9+AuYDhIgkCAQ07opL+rltnEEOWohieU7pHjZMZlqyJ04thE1g7WGUeLE68ckFUqtZ
         xVmoFkAfo4psvwV6Nd/JzbisvxmLD7KtrW1we2oVsPuPSoTcY6aXmTDqk/4fl41skX9U
         jdGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=s0sgYZNYMJqAGhiTJTxm2Xe/Gtsrs++Z1qgidOc+Fjc=;
        b=ufRUeuhUfvHgJj7/bsZe1GwsNbeeCvZQqZBCPdcEwmSSphe2n5mCxehB1cduyXIQIh
         XcW0tK9+WHDD5eQt1Q7WOS//SI7SeaFliaO+0eP4T9sSc4F3zj8HsTWqGzuYEYBGzmMd
         qmKDAg0ow9tJqf3iJU04kE3AQTDpOL0mXJMUbBiG0S/fsYazAmU9Qbw3L0k4GXXjD+1+
         3BsOjzymskJI+eAJx5tAHIq3w6TQJbIV396kcL/nqW0aNGHm7e2cRqlS/4Ns68iBymdc
         BX5gxzGYbfKVzRF8GmaDFiFA0q9oWPj8L4ERtINwdwXOQD5jWBZY8pYQ4ZXgMzECCT9B
         TF6w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531ogEnrlVBGoVN+4yQp09lkFhWusH40K9odZK/z/MkE/qrmmn/G
	dn9t6uLx32to8t3L37vlzoY=
X-Google-Smtp-Source: ABdhPJzWTCFjEV28NMcIm84f1F8t+GwBgtmpnpwvLnN3EGtMoH8xSPjEUi/apTDwaXghAn4hHf+eTQ==
X-Received: by 2002:a17:90b:4c8c:: with SMTP id my12mr14844566pjb.35.1612751080351;
        Sun, 07 Feb 2021 18:24:40 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:d2c1:: with SMTP id n1ls7057810plc.11.gmail; Sun, 07
 Feb 2021 18:24:39 -0800 (PST)
X-Received: by 2002:a17:90a:fe89:: with SMTP id co9mr14901731pjb.83.1612751079725;
        Sun, 07 Feb 2021 18:24:39 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612751079; cv=none;
        d=google.com; s=arc-20160816;
        b=OR6DNxlW683TuIHticEBhRt6jv+/zNmK0si6txYWfsoUkx+L8RRBGUTaRCazH+YgnH
         mFwTCLqfGzOFiCKjXKPkIFdOa2Gm4DWJ0WUxF7t5lqrmEjfVPB747/+i5DYzh5Ocgw97
         kIrBZ3/HjoBwbWOaMCbWRlKd1LgfGjMeHhmoJrsEkBWgsauZ7pYPUhPxBz59zF21C9iw
         bmElpQakE73BUzsVuCrTAP7ejhBLslyfCrxKKEejyRFNqEyTUzd+7YADBMVEmw+OohtA
         rD/dCTRjOPz5mdY07hpj13/5ia5Q+RjXd23eOi4h5Yd+GiLPw5VP7B/InpqEG6/RSHew
         62Xg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=U6nwUssgX5AJ8yU2WqarqyxvKTW7raHTQIM0j12P1DQ=;
        b=lp3ZIhq3U8ggLcl03scWC6/GK5pfHkPxxKfmoyYZyNGV/jXQya4N6R1BuMckx0zDoK
         gLykMFkSjalNU1VyVa3UtOHMUy8TXhf/uXtkq7xIkNWYS82yfKrsSU/F5RBUBaS1wIoK
         vnbqjh00UzwlzrWOxD/bg1WvFBZRZ/NCKv6U5EgBG47sl8CAu15kluvmbzWbMjjwawsR
         ge1gh59Io/A4P6zeBscnEMfZAUzd0NTjwkhm0CzSq4k4f2rr5ufMJPtn93ExsrIp0qXc
         IVpB94j5og4zrE0KqUz/fCZPbRPAnP1KQ5AUGj0yJUb9XELFOWQ06E+g1zabstnofJrE
         SmYQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.93 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga11.intel.com (mga11.intel.com. [192.55.52.93])
        by gmr-mx.google.com with ESMTPS id a21si910219pjo.2.2021.02.07.18.24.35
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 07 Feb 2021 18:24:39 -0800 (PST)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.93 as permitted sender) client-ip=192.55.52.93;
IronPort-SDR: a3FrCYycO+z2RRVvwDitrYZMVb/GGYudZCEBXLehdyBCtd+NqcGlKCJUU/SH56WAOoG07hkwiz
 hzO7EztbV7zg==
X-IronPort-AV: E=McAfee;i="6000,8403,9888"; a="178138766"
X-IronPort-AV: E=Sophos;i="5.81,160,1610438400"; 
   d="gz'50?scan'50,208,50";a="178138766"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
  by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 07 Feb 2021 18:24:32 -0800
IronPort-SDR: nHIga8NKJLJM3pHHlN/qY8Ti0HLUbZnH3MHc/e+5TmitqBcOtn0snjAi9xRuY9z9qh7pVEPi05
 NjhVeQ9Dre7w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,160,1610438400"; 
   d="gz'50?scan'50,208,50";a="417976251"
Received: from lkp-server02.sh.intel.com (HELO 8b832f01bb9c) ([10.239.97.151])
  by FMSMGA003.fm.intel.com with ESMTP; 07 Feb 2021 18:24:30 -0800
Received: from kbuild by 8b832f01bb9c with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1l8wE1-0003H5-BF; Mon, 08 Feb 2021 02:24:29 +0000
Date: Mon, 8 Feb 2021 10:24:05 +0800
From: kernel test robot <lkp@intel.com>
To: Vinod Koul <vkoul@kernel.org>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org
Subject: drivers/soundwire/stream.c:260:12: warning: stack frame size of 2832
 bytes in function 'sdw_program_port_params'
Message-ID: <202102081001.BFvEWSgG-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="envbJBWh7q8WU6mo"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 192.55.52.93 as permitted
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


--envbJBWh7q8WU6mo
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
head:   61556703b610a104de324e4f061dc6cf7b218b46
commit: 41ff91741c25d4987bf0405fa219b9eb339f24ee soundwire: stream: use FIELD_{GET|PREP}
date:   5 months ago
config: powerpc64-randconfig-r014-20210207 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project c9439ca36342fb6013187d0a69aef92736951476)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install powerpc64 cross compiling tool for clang build
        # apt-get install binutils-powerpc64-linux-gnu
        # https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=41ff91741c25d4987bf0405fa219b9eb339f24ee
        git remote add linus https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
        git fetch --no-tags linus master
        git checkout 41ff91741c25d4987bf0405fa219b9eb339f24ee
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=powerpc64 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

   In file included from drivers/soundwire/stream.c:16:
   In file included from include/sound/soc.h:18:
   In file included from include/linux/interrupt.h:11:
   In file included from include/linux/hardirq.h:10:
   In file included from arch/powerpc/include/asm/hardirq.h:6:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/powerpc/include/asm/io.h:604:
   arch/powerpc/include/asm/io-defs.h:45:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(insw, (unsigned long p, void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:601:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:194:1: note: expanded from here
   __do_insw
   ^
   arch/powerpc/include/asm/io.h:542:56: note: expanded from macro '__do_insw'
   #define __do_insw(p, b, n)      readsw((PCI_IO_ADDR)_IO_BASE+(p), (b), (n))
                                          ~~~~~~~~~~~~~~~~~~~~~^
   In file included from drivers/soundwire/stream.c:16:
   In file included from include/sound/soc.h:18:
   In file included from include/linux/interrupt.h:11:
   In file included from include/linux/hardirq.h:10:
   In file included from arch/powerpc/include/asm/hardirq.h:6:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/powerpc/include/asm/io.h:604:
   arch/powerpc/include/asm/io-defs.h:47:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(insl, (unsigned long p, void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:601:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:199:1: note: expanded from here
   __do_insl
   ^
   arch/powerpc/include/asm/io.h:543:56: note: expanded from macro '__do_insl'
   #define __do_insl(p, b, n)      readsl((PCI_IO_ADDR)_IO_BASE+(p), (b), (n))
                                          ~~~~~~~~~~~~~~~~~~~~~^
   In file included from drivers/soundwire/stream.c:16:
   In file included from include/sound/soc.h:18:
   In file included from include/linux/interrupt.h:11:
   In file included from include/linux/hardirq.h:10:
   In file included from arch/powerpc/include/asm/hardirq.h:6:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/powerpc/include/asm/io.h:604:
   arch/powerpc/include/asm/io-defs.h:49:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(outsb, (unsigned long p, const void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:601:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:204:1: note: expanded from here
   __do_outsb
   ^
   arch/powerpc/include/asm/io.h:544:58: note: expanded from macro '__do_outsb'
   #define __do_outsb(p, b, n)     writesb((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
                                           ~~~~~~~~~~~~~~~~~~~~~^
   In file included from drivers/soundwire/stream.c:16:
   In file included from include/sound/soc.h:18:
   In file included from include/linux/interrupt.h:11:
   In file included from include/linux/hardirq.h:10:
   In file included from arch/powerpc/include/asm/hardirq.h:6:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/powerpc/include/asm/io.h:604:
   arch/powerpc/include/asm/io-defs.h:51:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(outsw, (unsigned long p, const void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:601:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:209:1: note: expanded from here
   __do_outsw
   ^
   arch/powerpc/include/asm/io.h:545:58: note: expanded from macro '__do_outsw'
   #define __do_outsw(p, b, n)     writesw((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
                                           ~~~~~~~~~~~~~~~~~~~~~^
   In file included from drivers/soundwire/stream.c:16:
   In file included from include/sound/soc.h:18:
   In file included from include/linux/interrupt.h:11:
   In file included from include/linux/hardirq.h:10:
   In file included from arch/powerpc/include/asm/hardirq.h:6:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/powerpc/include/asm/io.h:604:
   arch/powerpc/include/asm/io-defs.h:53:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(outsl, (unsigned long p, const void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:601:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:214:1: note: expanded from here
   __do_outsl
   ^
   arch/powerpc/include/asm/io.h:546:58: note: expanded from macro '__do_outsl'
   #define __do_outsl(p, b, n)     writesl((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
                                           ~~~~~~~~~~~~~~~~~~~~~^
>> drivers/soundwire/stream.c:260:12: warning: stack frame size of 2832 bytes in function 'sdw_program_port_params' [-Wframe-larger-than=]
   static int sdw_program_port_params(struct sdw_master_runtime *m_rt)
              ^
   13 warnings generated.


vim +/sdw_program_port_params +260 drivers/soundwire/stream.c

f8101c74aa542b Sanyog Kale 2018-04-26  253  
f8101c74aa542b Sanyog Kale 2018-04-26  254  /**
f8101c74aa542b Sanyog Kale 2018-04-26  255   * sdw_program_port_params() - Programs transport parameters of Master(s)
f8101c74aa542b Sanyog Kale 2018-04-26  256   * and Slave(s)
f8101c74aa542b Sanyog Kale 2018-04-26  257   *
f8101c74aa542b Sanyog Kale 2018-04-26  258   * @m_rt: Master stream runtime
f8101c74aa542b Sanyog Kale 2018-04-26  259   */
f8101c74aa542b Sanyog Kale 2018-04-26 @260  static int sdw_program_port_params(struct sdw_master_runtime *m_rt)
f8101c74aa542b Sanyog Kale 2018-04-26  261  {
f8101c74aa542b Sanyog Kale 2018-04-26  262  	struct sdw_slave_runtime *s_rt = NULL;
f8101c74aa542b Sanyog Kale 2018-04-26  263  	struct sdw_bus *bus = m_rt->bus;
f8101c74aa542b Sanyog Kale 2018-04-26  264  	struct sdw_port_runtime *p_rt;
f8101c74aa542b Sanyog Kale 2018-04-26  265  	int ret = 0;
f8101c74aa542b Sanyog Kale 2018-04-26  266  
f8101c74aa542b Sanyog Kale 2018-04-26  267  	/* Program transport & port parameters for Slave(s) */
f8101c74aa542b Sanyog Kale 2018-04-26  268  	list_for_each_entry(s_rt, &m_rt->slave_rt_list, m_rt_node) {
f8101c74aa542b Sanyog Kale 2018-04-26  269  		list_for_each_entry(p_rt, &s_rt->port_list, port_node) {
f8101c74aa542b Sanyog Kale 2018-04-26  270  			ret = sdw_program_slave_port_params(bus, s_rt, p_rt);
f8101c74aa542b Sanyog Kale 2018-04-26  271  			if (ret < 0)
f8101c74aa542b Sanyog Kale 2018-04-26  272  				return ret;
f8101c74aa542b Sanyog Kale 2018-04-26  273  		}
f8101c74aa542b Sanyog Kale 2018-04-26  274  	}
f8101c74aa542b Sanyog Kale 2018-04-26  275  
f8101c74aa542b Sanyog Kale 2018-04-26  276  	/* Program transport & port parameters for Master(s) */
f8101c74aa542b Sanyog Kale 2018-04-26  277  	list_for_each_entry(p_rt, &m_rt->port_list, port_node) {
f8101c74aa542b Sanyog Kale 2018-04-26  278  		ret = sdw_program_master_port_params(bus, p_rt);
f8101c74aa542b Sanyog Kale 2018-04-26  279  		if (ret < 0)
f8101c74aa542b Sanyog Kale 2018-04-26  280  			return ret;
f8101c74aa542b Sanyog Kale 2018-04-26  281  	}
f8101c74aa542b Sanyog Kale 2018-04-26  282  
f8101c74aa542b Sanyog Kale 2018-04-26  283  	return 0;
f8101c74aa542b Sanyog Kale 2018-04-26  284  }
f8101c74aa542b Sanyog Kale 2018-04-26  285  

:::::: The code at line 260 was first introduced by commit
:::::: f8101c74aa542b6e583513216176679a9e922b2f soundwire: Add Master and Slave port programming

:::::: TO: Sanyog Kale <sanyog.r.kale@intel.com>
:::::: CC: Vinod Koul <vkoul@kernel.org>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202102081001.BFvEWSgG-lkp%40intel.com.

--envbJBWh7q8WU6mo
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
WIQvrG4wwUFXRjP8F1yLn73nlwEA

--envbJBWh7q8WU6mo--
