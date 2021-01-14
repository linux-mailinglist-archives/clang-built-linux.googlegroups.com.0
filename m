Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBFGZQGAAMGQER4EXSBY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x338.google.com (mail-ot1-x338.google.com [IPv6:2607:f8b0:4864:20::338])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A0732F6572
	for <lists+clang-built-linux@lfdr.de>; Thu, 14 Jan 2021 17:08:53 +0100 (CET)
Received: by mail-ot1-x338.google.com with SMTP id 96sf1805348otw.12
        for <lists+clang-built-linux@lfdr.de>; Thu, 14 Jan 2021 08:08:53 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610640532; cv=pass;
        d=google.com; s=arc-20160816;
        b=HSBJHjMJTYfA3zJp16mnmj3ZL4QnSIwfG6HfcLyN9f9m2TIOz+ca5zJ37zdiFNF5HY
         aIgJjvpdSu/xLML+quI9yrtXWKyMy4knFB7M1txgrOvtveui3Wk9eIe8HgOEltTDKNAd
         GFRReoCEOQ5Xz9sSAhbpPTkADQqgpDl2yOPGeLxP14kA9y9IsUNqgI7+yxfmfAfbPB/H
         2hqs5J4y1bNMFjT988t5BlK20ICyIbxw43lVbb2UXx/vrXWgpo+yW0rCR5RNpCKBZFWR
         2x3gshXB+OXddmlW/X2KJkPtByrXeyWPcpZ3/1e6jBZ7Vs9K6GJeYPrV7LZ/M1Phxi6C
         Qhnw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=AOmNHrMoaYcTUafEaBtJoQsPbHeGH20tM1sgQKLulFQ=;
        b=veNm7Gc6cDACBywUqzGIRSxrSxMkGmWXSFYA4IUqtSZ7tceS7WQ0WBPeM6zUzZV44W
         azVbXYKjLOxqjSJ7sye4LDyJjEFIAZKkhf7cvTk0UsZDjCknxi6t1JUMuEL8jzPS+s+s
         LylOJVT2ylIVsK5LumgsNfhnR0codzmtFMObqLEpDAOi+qePxD3Ndz2RrKN9I24RrVLm
         IiwEh7pENq6PAmew/Ty5mmH9UwUwXHHLKmqtA5TZWHvScSccEbLywhz8ioRbqhBgHiP2
         V2hdBzPvxxPFCDTZAIh8QJOyYDrhhc7GuGm1boQ7o3XC/t52jURDeOBgHAIr0kNKOp7Q
         oWkg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.100 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=AOmNHrMoaYcTUafEaBtJoQsPbHeGH20tM1sgQKLulFQ=;
        b=IYx45b6uOH855tv5e3sxToOKftlBdEXf2VoFdHJ+UXoXe8iSWVHIhJIZCu9Q/LOMz3
         f/tUops76T8mTSsY7TxlIM+dX2AJpUhYECPTkPCryJWGJSgvStTYwufSturdCrCLyCxw
         trFmS86luAtBucoLDcBkA+DFnf7dRZT5uECWauhXJAHU/FzN9wcxBzsRcdnseku/z2mY
         4pWltUnEULKpX4jK6MhMAcM5gbb72hTNJ0YB3VEdwJ5tuqHhyM57Jn0zQpBA/Rm8g3pO
         qbN0Zm/DzkK4mGAw5sOzMXMF3vms+MCeOGBtgaNVKQ9zM03biwOo4YaUVIB66dq/R3ju
         ihQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=AOmNHrMoaYcTUafEaBtJoQsPbHeGH20tM1sgQKLulFQ=;
        b=ptmrw24YxRSIM0EQy0f8f15NxZ6e8pZNj27GLbWeGFG77bhpJhkFDb/uBUZJdngC7i
         SeaHlDDzuiymQzZ7O8rLDHIZjhYppg4Zgblmbc5mPEzgY4xNTtbohzQpbn0hXTT9h7CD
         fjCIqitNXvoT61n9WqdQBR5xCPUva47FbHQmoTGM4YBTQdxz+bdIQ2athaFUwCEz/siF
         1g8xdWxrr5vRGr7VbmOm3Cm+waVCziKQM2T9V4Pafnt2+bLzhOE730kWikqumtDWNI+E
         triI7Gp43jPY5ouHzLwly+YXdDjZpwwY9b8pvhLjIaJPVuZXiMSYd9pkRvJugC7kYTU0
         Ob+g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5300uLemzVGccp7LtLIRPejB57FrmOOP4BLWK3Q7lO9MItglC8PM
	QbZjTpGJXXbGCMiVCyWKaIw=
X-Google-Smtp-Source: ABdhPJyTomqcMPWnxI62/7QK/EXj2ZR6p45hcEyNm/kPXCdRRscHplwFFydvCcoMR0YZifVCA/z5Xg==
X-Received: by 2002:a05:6830:1551:: with SMTP id l17mr5217434otp.309.1610640532148;
        Thu, 14 Jan 2021 08:08:52 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6808:a97:: with SMTP id q23ls1493804oij.1.gmail; Thu, 14
 Jan 2021 08:08:51 -0800 (PST)
X-Received: by 2002:aca:58d6:: with SMTP id m205mr2941706oib.121.1610640531534;
        Thu, 14 Jan 2021 08:08:51 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610640531; cv=none;
        d=google.com; s=arc-20160816;
        b=Nqwc8RCpdbf7KlV/QHUfCZFeXHJxVFozUpOzuCvcHYydqL4bvnvSRE8TyrhfcfqRg4
         kOJreZJtOZrqn/K13SKTrR5LoRJlg8sI0336P2F4cTwjUVFDsphm7KPiodlp8L99rhS6
         jXw8n1rb/LTzYmeH46Er5v2wpB/Szm5sjiDh2D5fg043f5Wy4ESp1+EZBpn+Afnvrqwm
         auvwRnpglSFUiWjab5YOncrYmPaIARiJC+5J69kWWgODHHLKbJM21cg1rKhwy3VtL4ox
         v/LGvjKXEZPFBq6b29hp04JmdmY8W0agA7Gwz+P5Kj052zrAefivYo7VYyIldhDVcwX4
         wI/A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=vHBGlknSEvmA07Ol3XWLv+NCeLYHBhb0YxjidzAp498=;
        b=evsTKJ2Ul8bTHkZEJPbeOgrCWYumSF1Q12p6zbTY5MvUfOOXhZulYV6jhjU+s/scIr
         C04N5Zp8afJsq9v5vjvoQMfMHz6Ske5Kkl5WgVRkjH3VIYJMKpgIW2dL1F87/U38xhbX
         Q61EjGF1G44KeDeN+yp6hsKTWiDO1wCLw4+a6CDU3I5fpc8taZMiaJNPLaRyY+wSf3Hy
         eP0qoAfqGhwuiJtVgzmLvE2+4t+ScrhJnLoB/+m+Ieni2gmsu0SDleVLfv1+SJaew4cn
         t80W9oxUJYwzPEquwLld5MEveEfpoS2j1fGBufk5NL7JxRxIkFVmEnR40AD89a41Cl28
         evPw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.100 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga07.intel.com (mga07.intel.com. [134.134.136.100])
        by gmr-mx.google.com with ESMTPS id s126si394685ooa.0.2021.01.14.08.08.50
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 14 Jan 2021 08:08:51 -0800 (PST)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.100 as permitted sender) client-ip=134.134.136.100;
IronPort-SDR: lVCXTTK2t+QX93R0mRk3hSGHj0SeRBhzIaRrVn153rhBapigffJ8LbsvDdwVJiXS+9HMsY/RFf
 ThqvB7oad2Zg==
X-IronPort-AV: E=McAfee;i="6000,8403,9864"; a="242463089"
X-IronPort-AV: E=Sophos;i="5.79,347,1602572400"; 
   d="gz'50?scan'50,208,50";a="242463089"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
  by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 14 Jan 2021 08:08:47 -0800
IronPort-SDR: XMZHtgzOvuMccu3WXDNq1wFsm3fN7VjJ3x3tEuYlzxL7RZv1llLQo34sIOE8N1lwEgmDH2IWkA
 4JN5MZ+uMbDg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,347,1602572400"; 
   d="gz'50?scan'50,208,50";a="424986097"
Received: from lkp-server01.sh.intel.com (HELO d5d1a9a2c6bb) ([10.239.97.150])
  by orsmga001.jf.intel.com with ESMTP; 14 Jan 2021 08:08:45 -0800
Received: from kbuild by d5d1a9a2c6bb with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1l05Ay-000109-VN; Thu, 14 Jan 2021 16:08:44 +0000
Date: Fri, 15 Jan 2021 00:08:32 +0800
From: kernel test robot <lkp@intel.com>
To: Marc Zyngier <maz@kernel.org>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	linux-arm-kernel@lists.infradead.org, kvmarm@lists.cs.columbia.edu
Subject: [kvmarm:next 29/32] arch/arm64/kvm/sys_regs.c:1544:13: warning:
 initializer overrides prior initialization of this subobject
Message-ID: <202101150021.7lf1kLu2-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="uAKRQypu60I7Lcqm"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 134.134.136.100 as permitted
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


--uAKRQypu60I7Lcqm
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/kvmarm/kvmarm.git next
head:   7ba8b4380afbdbb29d53c50bee6563cd7457fc34
commit: 11663111cd49b4c6dd27479774e420f139e4c447 [29/32] KVM: arm64: Hide PMU registers from userspace when not available
config: arm64-randconfig-r031-20210114 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project 6077d55381a6aa3e947ef7abdc36a7515c598c8a)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install arm64 cross compiling tool for clang build
        # apt-get install binutils-aarch64-linux-gnu
        # https://git.kernel.org/pub/scm/linux/kernel/git/kvmarm/kvmarm.git/commit/?id=11663111cd49b4c6dd27479774e420f139e4c447
        git remote add kvmarm https://git.kernel.org/pub/scm/linux/kernel/git/kvmarm/kvmarm.git
        git fetch --no-tags kvmarm next
        git checkout 11663111cd49b4c6dd27479774e420f139e4c447
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=arm64 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

>> arch/arm64/kvm/sys_regs.c:1544:13: warning: initializer overrides prior initialization of this subobject [-Winitializer-overrides]
             .reset = reset_pmcr, .reg = PMCR_EL0 },
                      ^~~~~~~~~~
   arch/arm64/kvm/sys_regs.c:1543:4: note: previous initialization is here
           { PMU_SYS_REG(SYS_PMCR_EL0), .access = access_pmcr,
             ^~~~~~~~~~~~~~~~~~~~~~~~~
   arch/arm64/kvm/sys_regs.c:949:24: note: expanded from macro 'PMU_SYS_REG'
           SYS_DESC(r), .reset = reset_unknown, .visibility = pmu_visibility
                                 ^~~~~~~~~~~~~
   arch/arm64/kvm/sys_regs.c:1556:38: warning: initializer overrides prior initialization of this subobject [-Winitializer-overrides]
             .access = access_pmceid, .reset = NULL },
                                               ^~~~
   include/linux/stddef.h:8:14: note: expanded from macro 'NULL'
   #define NULL ((void *)0)
                ^~~~~~~~~~~
   arch/arm64/kvm/sys_regs.c:1555:4: note: previous initialization is here
           { PMU_SYS_REG(SYS_PMCEID0_EL0),
             ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/arm64/kvm/sys_regs.c:949:24: note: expanded from macro 'PMU_SYS_REG'
           SYS_DESC(r), .reset = reset_unknown, .visibility = pmu_visibility
                                 ^~~~~~~~~~~~~
   arch/arm64/kvm/sys_regs.c:1558:38: warning: initializer overrides prior initialization of this subobject [-Winitializer-overrides]
             .access = access_pmceid, .reset = NULL },
                                               ^~~~
   include/linux/stddef.h:8:14: note: expanded from macro 'NULL'
   #define NULL ((void *)0)
                ^~~~~~~~~~~
   arch/arm64/kvm/sys_regs.c:1557:4: note: previous initialization is here
           { PMU_SYS_REG(SYS_PMCEID1_EL0),
             ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/arm64/kvm/sys_regs.c:949:24: note: expanded from macro 'PMU_SYS_REG'
           SYS_DESC(r), .reset = reset_unknown, .visibility = pmu_visibility
                                 ^~~~~~~~~~~~~
   arch/arm64/kvm/sys_regs.c:1562:43: warning: initializer overrides prior initialization of this subobject [-Winitializer-overrides]
             .access = access_pmu_evtyper, .reset = NULL },
                                                    ^~~~
   include/linux/stddef.h:8:14: note: expanded from macro 'NULL'
   #define NULL ((void *)0)
                ^~~~~~~~~~~
   arch/arm64/kvm/sys_regs.c:1561:4: note: previous initialization is here
           { PMU_SYS_REG(SYS_PMXEVTYPER_EL0),
             ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/arm64/kvm/sys_regs.c:949:24: note: expanded from macro 'PMU_SYS_REG'
           SYS_DESC(r), .reset = reset_unknown, .visibility = pmu_visibility
                                 ^~~~~~~~~~~~~
   arch/arm64/kvm/sys_regs.c:1564:42: warning: initializer overrides prior initialization of this subobject [-Winitializer-overrides]
             .access = access_pmu_evcntr, .reset = NULL },
                                                   ^~~~
   include/linux/stddef.h:8:14: note: expanded from macro 'NULL'
   #define NULL ((void *)0)
                ^~~~~~~~~~~
   arch/arm64/kvm/sys_regs.c:1563:4: note: previous initialization is here
           { PMU_SYS_REG(SYS_PMXEVCNTR_EL0),
             ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/arm64/kvm/sys_regs.c:949:24: note: expanded from macro 'PMU_SYS_REG'
           SYS_DESC(r), .reset = reset_unknown, .visibility = pmu_visibility
                                 ^~~~~~~~~~~~~
   arch/arm64/kvm/sys_regs.c:1570:13: warning: initializer overrides prior initialization of this subobject [-Winitializer-overrides]
             .reset = reset_val, .reg = PMUSERENR_EL0, .val = 0 },
                      ^~~~~~~~~
   arch/arm64/kvm/sys_regs.c:1569:4: note: previous initialization is here
           { PMU_SYS_REG(SYS_PMUSERENR_EL0), .access = access_pmuserenr,
             ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/arm64/kvm/sys_regs.c:949:24: note: expanded from macro 'PMU_SYS_REG'
           SYS_DESC(r), .reset = reset_unknown, .visibility = pmu_visibility
                                 ^~~~~~~~~~~~~
   arch/arm64/kvm/sys_regs.c:1725:13: warning: initializer overrides prior initialization of this subobject [-Winitializer-overrides]
             .reset = reset_val, .reg = PMCCFILTR_EL0, .val = 0 },
                      ^~~~~~~~~
   arch/arm64/kvm/sys_regs.c:1724:4: note: previous initialization is here
           { PMU_SYS_REG(SYS_PMCCFILTR_EL0), .access = access_pmu_evtyper,
             ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/arm64/kvm/sys_regs.c:949:24: note: expanded from macro 'PMU_SYS_REG'
           SYS_DESC(r), .reset = reset_unknown, .visibility = pmu_visibility
                                 ^~~~~~~~~~~~~
   7 warnings generated.


vim +1544 arch/arm64/kvm/sys_regs.c

  1332	
  1333	/*
  1334	 * Architected system registers.
  1335	 * Important: Must be sorted ascending by Op0, Op1, CRn, CRm, Op2
  1336	 *
  1337	 * Debug handling: We do trap most, if not all debug related system
  1338	 * registers. The implementation is good enough to ensure that a guest
  1339	 * can use these with minimal performance degradation. The drawback is
  1340	 * that we don't implement any of the external debug, none of the
  1341	 * OSlock protocol. This should be revisited if we ever encounter a
  1342	 * more demanding guest...
  1343	 */
  1344	static const struct sys_reg_desc sys_reg_descs[] = {
  1345		{ SYS_DESC(SYS_DC_ISW), access_dcsw },
  1346		{ SYS_DESC(SYS_DC_CSW), access_dcsw },
  1347		{ SYS_DESC(SYS_DC_CISW), access_dcsw },
  1348	
  1349		DBG_BCR_BVR_WCR_WVR_EL1(0),
  1350		DBG_BCR_BVR_WCR_WVR_EL1(1),
  1351		{ SYS_DESC(SYS_MDCCINT_EL1), trap_debug_regs, reset_val, MDCCINT_EL1, 0 },
  1352		{ SYS_DESC(SYS_MDSCR_EL1), trap_debug_regs, reset_val, MDSCR_EL1, 0 },
  1353		DBG_BCR_BVR_WCR_WVR_EL1(2),
  1354		DBG_BCR_BVR_WCR_WVR_EL1(3),
  1355		DBG_BCR_BVR_WCR_WVR_EL1(4),
  1356		DBG_BCR_BVR_WCR_WVR_EL1(5),
  1357		DBG_BCR_BVR_WCR_WVR_EL1(6),
  1358		DBG_BCR_BVR_WCR_WVR_EL1(7),
  1359		DBG_BCR_BVR_WCR_WVR_EL1(8),
  1360		DBG_BCR_BVR_WCR_WVR_EL1(9),
  1361		DBG_BCR_BVR_WCR_WVR_EL1(10),
  1362		DBG_BCR_BVR_WCR_WVR_EL1(11),
  1363		DBG_BCR_BVR_WCR_WVR_EL1(12),
  1364		DBG_BCR_BVR_WCR_WVR_EL1(13),
  1365		DBG_BCR_BVR_WCR_WVR_EL1(14),
  1366		DBG_BCR_BVR_WCR_WVR_EL1(15),
  1367	
  1368		{ SYS_DESC(SYS_MDRAR_EL1), trap_raz_wi },
  1369		{ SYS_DESC(SYS_OSLAR_EL1), trap_raz_wi },
  1370		{ SYS_DESC(SYS_OSLSR_EL1), trap_oslsr_el1 },
  1371		{ SYS_DESC(SYS_OSDLR_EL1), trap_raz_wi },
  1372		{ SYS_DESC(SYS_DBGPRCR_EL1), trap_raz_wi },
  1373		{ SYS_DESC(SYS_DBGCLAIMSET_EL1), trap_raz_wi },
  1374		{ SYS_DESC(SYS_DBGCLAIMCLR_EL1), trap_raz_wi },
  1375		{ SYS_DESC(SYS_DBGAUTHSTATUS_EL1), trap_dbgauthstatus_el1 },
  1376	
  1377		{ SYS_DESC(SYS_MDCCSR_EL0), trap_raz_wi },
  1378		{ SYS_DESC(SYS_DBGDTR_EL0), trap_raz_wi },
  1379		// DBGDTR[TR]X_EL0 share the same encoding
  1380		{ SYS_DESC(SYS_DBGDTRTX_EL0), trap_raz_wi },
  1381	
  1382		{ SYS_DESC(SYS_DBGVCR32_EL2), NULL, reset_val, DBGVCR32_EL2, 0 },
  1383	
  1384		{ SYS_DESC(SYS_MPIDR_EL1), NULL, reset_mpidr, MPIDR_EL1 },
  1385	
  1386		/*
  1387		 * ID regs: all ID_SANITISED() entries here must have corresponding
  1388		 * entries in arm64_ftr_regs[].
  1389		 */
  1390	
  1391		/* AArch64 mappings of the AArch32 ID registers */
  1392		/* CRm=1 */
  1393		ID_SANITISED(ID_PFR0_EL1),
  1394		ID_SANITISED(ID_PFR1_EL1),
  1395		ID_SANITISED(ID_DFR0_EL1),
  1396		ID_HIDDEN(ID_AFR0_EL1),
  1397		ID_SANITISED(ID_MMFR0_EL1),
  1398		ID_SANITISED(ID_MMFR1_EL1),
  1399		ID_SANITISED(ID_MMFR2_EL1),
  1400		ID_SANITISED(ID_MMFR3_EL1),
  1401	
  1402		/* CRm=2 */
  1403		ID_SANITISED(ID_ISAR0_EL1),
  1404		ID_SANITISED(ID_ISAR1_EL1),
  1405		ID_SANITISED(ID_ISAR2_EL1),
  1406		ID_SANITISED(ID_ISAR3_EL1),
  1407		ID_SANITISED(ID_ISAR4_EL1),
  1408		ID_SANITISED(ID_ISAR5_EL1),
  1409		ID_SANITISED(ID_MMFR4_EL1),
  1410		ID_SANITISED(ID_ISAR6_EL1),
  1411	
  1412		/* CRm=3 */
  1413		ID_SANITISED(MVFR0_EL1),
  1414		ID_SANITISED(MVFR1_EL1),
  1415		ID_SANITISED(MVFR2_EL1),
  1416		ID_UNALLOCATED(3,3),
  1417		ID_SANITISED(ID_PFR2_EL1),
  1418		ID_HIDDEN(ID_DFR1_EL1),
  1419		ID_SANITISED(ID_MMFR5_EL1),
  1420		ID_UNALLOCATED(3,7),
  1421	
  1422		/* AArch64 ID registers */
  1423		/* CRm=4 */
  1424		{ SYS_DESC(SYS_ID_AA64PFR0_EL1), .access = access_id_reg,
  1425		  .get_user = get_id_reg, .set_user = set_id_aa64pfr0_el1, },
  1426		ID_SANITISED(ID_AA64PFR1_EL1),
  1427		ID_UNALLOCATED(4,2),
  1428		ID_UNALLOCATED(4,3),
  1429		ID_SANITISED(ID_AA64ZFR0_EL1),
  1430		ID_UNALLOCATED(4,5),
  1431		ID_UNALLOCATED(4,6),
  1432		ID_UNALLOCATED(4,7),
  1433	
  1434		/* CRm=5 */
  1435		ID_SANITISED(ID_AA64DFR0_EL1),
  1436		ID_SANITISED(ID_AA64DFR1_EL1),
  1437		ID_UNALLOCATED(5,2),
  1438		ID_UNALLOCATED(5,3),
  1439		ID_HIDDEN(ID_AA64AFR0_EL1),
  1440		ID_HIDDEN(ID_AA64AFR1_EL1),
  1441		ID_UNALLOCATED(5,6),
  1442		ID_UNALLOCATED(5,7),
  1443	
  1444		/* CRm=6 */
  1445		ID_SANITISED(ID_AA64ISAR0_EL1),
  1446		ID_SANITISED(ID_AA64ISAR1_EL1),
  1447		ID_UNALLOCATED(6,2),
  1448		ID_UNALLOCATED(6,3),
  1449		ID_UNALLOCATED(6,4),
  1450		ID_UNALLOCATED(6,5),
  1451		ID_UNALLOCATED(6,6),
  1452		ID_UNALLOCATED(6,7),
  1453	
  1454		/* CRm=7 */
  1455		ID_SANITISED(ID_AA64MMFR0_EL1),
  1456		ID_SANITISED(ID_AA64MMFR1_EL1),
  1457		ID_SANITISED(ID_AA64MMFR2_EL1),
  1458		ID_UNALLOCATED(7,3),
  1459		ID_UNALLOCATED(7,4),
  1460		ID_UNALLOCATED(7,5),
  1461		ID_UNALLOCATED(7,6),
  1462		ID_UNALLOCATED(7,7),
  1463	
  1464		{ SYS_DESC(SYS_SCTLR_EL1), access_vm_reg, reset_val, SCTLR_EL1, 0x00C50078 },
  1465		{ SYS_DESC(SYS_ACTLR_EL1), access_actlr, reset_actlr, ACTLR_EL1 },
  1466		{ SYS_DESC(SYS_CPACR_EL1), NULL, reset_val, CPACR_EL1, 0 },
  1467	
  1468		{ SYS_DESC(SYS_RGSR_EL1), undef_access },
  1469		{ SYS_DESC(SYS_GCR_EL1), undef_access },
  1470	
  1471		{ SYS_DESC(SYS_ZCR_EL1), NULL, reset_val, ZCR_EL1, 0, .visibility = sve_visibility },
  1472		{ SYS_DESC(SYS_TTBR0_EL1), access_vm_reg, reset_unknown, TTBR0_EL1 },
  1473		{ SYS_DESC(SYS_TTBR1_EL1), access_vm_reg, reset_unknown, TTBR1_EL1 },
  1474		{ SYS_DESC(SYS_TCR_EL1), access_vm_reg, reset_val, TCR_EL1, 0 },
  1475	
  1476		PTRAUTH_KEY(APIA),
  1477		PTRAUTH_KEY(APIB),
  1478		PTRAUTH_KEY(APDA),
  1479		PTRAUTH_KEY(APDB),
  1480		PTRAUTH_KEY(APGA),
  1481	
  1482		{ SYS_DESC(SYS_AFSR0_EL1), access_vm_reg, reset_unknown, AFSR0_EL1 },
  1483		{ SYS_DESC(SYS_AFSR1_EL1), access_vm_reg, reset_unknown, AFSR1_EL1 },
  1484		{ SYS_DESC(SYS_ESR_EL1), access_vm_reg, reset_unknown, ESR_EL1 },
  1485	
  1486		{ SYS_DESC(SYS_ERRIDR_EL1), trap_raz_wi },
  1487		{ SYS_DESC(SYS_ERRSELR_EL1), trap_raz_wi },
  1488		{ SYS_DESC(SYS_ERXFR_EL1), trap_raz_wi },
  1489		{ SYS_DESC(SYS_ERXCTLR_EL1), trap_raz_wi },
  1490		{ SYS_DESC(SYS_ERXSTATUS_EL1), trap_raz_wi },
  1491		{ SYS_DESC(SYS_ERXADDR_EL1), trap_raz_wi },
  1492		{ SYS_DESC(SYS_ERXMISC0_EL1), trap_raz_wi },
  1493		{ SYS_DESC(SYS_ERXMISC1_EL1), trap_raz_wi },
  1494	
  1495		{ SYS_DESC(SYS_TFSR_EL1), undef_access },
  1496		{ SYS_DESC(SYS_TFSRE0_EL1), undef_access },
  1497	
  1498		{ SYS_DESC(SYS_FAR_EL1), access_vm_reg, reset_unknown, FAR_EL1 },
  1499		{ SYS_DESC(SYS_PAR_EL1), NULL, reset_unknown, PAR_EL1 },
  1500	
  1501		{ PMU_SYS_REG(SYS_PMINTENSET_EL1),
  1502		  .access = access_pminten, .reg = PMINTENSET_EL1 },
  1503		{ PMU_SYS_REG(SYS_PMINTENCLR_EL1),
  1504		  .access = access_pminten, .reg = PMINTENSET_EL1 },
  1505	
  1506		{ SYS_DESC(SYS_MAIR_EL1), access_vm_reg, reset_unknown, MAIR_EL1 },
  1507		{ SYS_DESC(SYS_AMAIR_EL1), access_vm_reg, reset_amair_el1, AMAIR_EL1 },
  1508	
  1509		{ SYS_DESC(SYS_LORSA_EL1), trap_loregion },
  1510		{ SYS_DESC(SYS_LOREA_EL1), trap_loregion },
  1511		{ SYS_DESC(SYS_LORN_EL1), trap_loregion },
  1512		{ SYS_DESC(SYS_LORC_EL1), trap_loregion },
  1513		{ SYS_DESC(SYS_LORID_EL1), trap_loregion },
  1514	
  1515		{ SYS_DESC(SYS_VBAR_EL1), NULL, reset_val, VBAR_EL1, 0 },
  1516		{ SYS_DESC(SYS_DISR_EL1), NULL, reset_val, DISR_EL1, 0 },
  1517	
  1518		{ SYS_DESC(SYS_ICC_IAR0_EL1), write_to_read_only },
  1519		{ SYS_DESC(SYS_ICC_EOIR0_EL1), read_from_write_only },
  1520		{ SYS_DESC(SYS_ICC_HPPIR0_EL1), write_to_read_only },
  1521		{ SYS_DESC(SYS_ICC_DIR_EL1), read_from_write_only },
  1522		{ SYS_DESC(SYS_ICC_RPR_EL1), write_to_read_only },
  1523		{ SYS_DESC(SYS_ICC_SGI1R_EL1), access_gic_sgi },
  1524		{ SYS_DESC(SYS_ICC_ASGI1R_EL1), access_gic_sgi },
  1525		{ SYS_DESC(SYS_ICC_SGI0R_EL1), access_gic_sgi },
  1526		{ SYS_DESC(SYS_ICC_IAR1_EL1), write_to_read_only },
  1527		{ SYS_DESC(SYS_ICC_EOIR1_EL1), read_from_write_only },
  1528		{ SYS_DESC(SYS_ICC_HPPIR1_EL1), write_to_read_only },
  1529		{ SYS_DESC(SYS_ICC_SRE_EL1), access_gic_sre },
  1530	
  1531		{ SYS_DESC(SYS_CONTEXTIDR_EL1), access_vm_reg, reset_val, CONTEXTIDR_EL1, 0 },
  1532		{ SYS_DESC(SYS_TPIDR_EL1), NULL, reset_unknown, TPIDR_EL1 },
  1533	
  1534		{ SYS_DESC(SYS_SCXTNUM_EL1), undef_access },
  1535	
  1536		{ SYS_DESC(SYS_CNTKCTL_EL1), NULL, reset_val, CNTKCTL_EL1, 0},
  1537	
  1538		{ SYS_DESC(SYS_CCSIDR_EL1), access_ccsidr },
  1539		{ SYS_DESC(SYS_CLIDR_EL1), access_clidr },
  1540		{ SYS_DESC(SYS_CSSELR_EL1), access_csselr, reset_unknown, CSSELR_EL1 },
  1541		{ SYS_DESC(SYS_CTR_EL0), access_ctr },
  1542	
  1543		{ PMU_SYS_REG(SYS_PMCR_EL0), .access = access_pmcr,
> 1544		  .reset = reset_pmcr, .reg = PMCR_EL0 },
  1545		{ PMU_SYS_REG(SYS_PMCNTENSET_EL0),
  1546		  .access = access_pmcnten, .reg = PMCNTENSET_EL0 },
  1547		{ PMU_SYS_REG(SYS_PMCNTENCLR_EL0),
  1548		  .access = access_pmcnten, .reg = PMCNTENSET_EL0 },
  1549		{ PMU_SYS_REG(SYS_PMOVSCLR_EL0),
  1550		  .access = access_pmovs, .reg = PMOVSSET_EL0 },
  1551		{ PMU_SYS_REG(SYS_PMSWINC_EL0),
  1552		  .access = access_pmswinc, .reg = PMSWINC_EL0 },
  1553		{ PMU_SYS_REG(SYS_PMSELR_EL0),
  1554		  .access = access_pmselr, .reg = PMSELR_EL0 },
  1555		{ PMU_SYS_REG(SYS_PMCEID0_EL0),
  1556		  .access = access_pmceid, .reset = NULL },
  1557		{ PMU_SYS_REG(SYS_PMCEID1_EL0),
  1558		  .access = access_pmceid, .reset = NULL },
  1559		{ PMU_SYS_REG(SYS_PMCCNTR_EL0),
  1560		  .access = access_pmu_evcntr, .reg = PMCCNTR_EL0 },
  1561		{ PMU_SYS_REG(SYS_PMXEVTYPER_EL0),
  1562		  .access = access_pmu_evtyper, .reset = NULL },
  1563		{ PMU_SYS_REG(SYS_PMXEVCNTR_EL0),
  1564		  .access = access_pmu_evcntr, .reset = NULL },
  1565		/*
  1566		 * PMUSERENR_EL0 resets as unknown in 64bit mode while it resets as zero
  1567		 * in 32bit mode. Here we choose to reset it as zero for consistency.
  1568		 */
  1569		{ PMU_SYS_REG(SYS_PMUSERENR_EL0), .access = access_pmuserenr,
  1570		  .reset = reset_val, .reg = PMUSERENR_EL0, .val = 0 },
  1571		{ PMU_SYS_REG(SYS_PMOVSSET_EL0),
  1572		  .access = access_pmovs, .reg = PMOVSSET_EL0 },
  1573	
  1574		{ SYS_DESC(SYS_TPIDR_EL0), NULL, reset_unknown, TPIDR_EL0 },
  1575		{ SYS_DESC(SYS_TPIDRRO_EL0), NULL, reset_unknown, TPIDRRO_EL0 },
  1576	
  1577		{ SYS_DESC(SYS_SCXTNUM_EL0), undef_access },
  1578	
  1579		{ SYS_DESC(SYS_AMCR_EL0), undef_access },
  1580		{ SYS_DESC(SYS_AMCFGR_EL0), undef_access },
  1581		{ SYS_DESC(SYS_AMCGCR_EL0), undef_access },
  1582		{ SYS_DESC(SYS_AMUSERENR_EL0), undef_access },
  1583		{ SYS_DESC(SYS_AMCNTENCLR0_EL0), undef_access },
  1584		{ SYS_DESC(SYS_AMCNTENSET0_EL0), undef_access },
  1585		{ SYS_DESC(SYS_AMCNTENCLR1_EL0), undef_access },
  1586		{ SYS_DESC(SYS_AMCNTENSET1_EL0), undef_access },
  1587		AMU_AMEVCNTR0_EL0(0),
  1588		AMU_AMEVCNTR0_EL0(1),
  1589		AMU_AMEVCNTR0_EL0(2),
  1590		AMU_AMEVCNTR0_EL0(3),
  1591		AMU_AMEVCNTR0_EL0(4),
  1592		AMU_AMEVCNTR0_EL0(5),
  1593		AMU_AMEVCNTR0_EL0(6),
  1594		AMU_AMEVCNTR0_EL0(7),
  1595		AMU_AMEVCNTR0_EL0(8),
  1596		AMU_AMEVCNTR0_EL0(9),
  1597		AMU_AMEVCNTR0_EL0(10),
  1598		AMU_AMEVCNTR0_EL0(11),
  1599		AMU_AMEVCNTR0_EL0(12),
  1600		AMU_AMEVCNTR0_EL0(13),
  1601		AMU_AMEVCNTR0_EL0(14),
  1602		AMU_AMEVCNTR0_EL0(15),
  1603		AMU_AMEVTYPER0_EL0(0),
  1604		AMU_AMEVTYPER0_EL0(1),
  1605		AMU_AMEVTYPER0_EL0(2),
  1606		AMU_AMEVTYPER0_EL0(3),
  1607		AMU_AMEVTYPER0_EL0(4),
  1608		AMU_AMEVTYPER0_EL0(5),
  1609		AMU_AMEVTYPER0_EL0(6),
  1610		AMU_AMEVTYPER0_EL0(7),
  1611		AMU_AMEVTYPER0_EL0(8),
  1612		AMU_AMEVTYPER0_EL0(9),
  1613		AMU_AMEVTYPER0_EL0(10),
  1614		AMU_AMEVTYPER0_EL0(11),
  1615		AMU_AMEVTYPER0_EL0(12),
  1616		AMU_AMEVTYPER0_EL0(13),
  1617		AMU_AMEVTYPER0_EL0(14),
  1618		AMU_AMEVTYPER0_EL0(15),
  1619		AMU_AMEVCNTR1_EL0(0),
  1620		AMU_AMEVCNTR1_EL0(1),
  1621		AMU_AMEVCNTR1_EL0(2),
  1622		AMU_AMEVCNTR1_EL0(3),
  1623		AMU_AMEVCNTR1_EL0(4),
  1624		AMU_AMEVCNTR1_EL0(5),
  1625		AMU_AMEVCNTR1_EL0(6),
  1626		AMU_AMEVCNTR1_EL0(7),
  1627		AMU_AMEVCNTR1_EL0(8),
  1628		AMU_AMEVCNTR1_EL0(9),
  1629		AMU_AMEVCNTR1_EL0(10),
  1630		AMU_AMEVCNTR1_EL0(11),
  1631		AMU_AMEVCNTR1_EL0(12),
  1632		AMU_AMEVCNTR1_EL0(13),
  1633		AMU_AMEVCNTR1_EL0(14),
  1634		AMU_AMEVCNTR1_EL0(15),
  1635		AMU_AMEVTYPER1_EL0(0),
  1636		AMU_AMEVTYPER1_EL0(1),
  1637		AMU_AMEVTYPER1_EL0(2),
  1638		AMU_AMEVTYPER1_EL0(3),
  1639		AMU_AMEVTYPER1_EL0(4),
  1640		AMU_AMEVTYPER1_EL0(5),
  1641		AMU_AMEVTYPER1_EL0(6),
  1642		AMU_AMEVTYPER1_EL0(7),
  1643		AMU_AMEVTYPER1_EL0(8),
  1644		AMU_AMEVTYPER1_EL0(9),
  1645		AMU_AMEVTYPER1_EL0(10),
  1646		AMU_AMEVTYPER1_EL0(11),
  1647		AMU_AMEVTYPER1_EL0(12),
  1648		AMU_AMEVTYPER1_EL0(13),
  1649		AMU_AMEVTYPER1_EL0(14),
  1650		AMU_AMEVTYPER1_EL0(15),
  1651	
  1652		{ SYS_DESC(SYS_CNTP_TVAL_EL0), access_arch_timer },
  1653		{ SYS_DESC(SYS_CNTP_CTL_EL0), access_arch_timer },
  1654		{ SYS_DESC(SYS_CNTP_CVAL_EL0), access_arch_timer },
  1655	
  1656		/* PMEVCNTRn_EL0 */
  1657		PMU_PMEVCNTR_EL0(0),
  1658		PMU_PMEVCNTR_EL0(1),
  1659		PMU_PMEVCNTR_EL0(2),
  1660		PMU_PMEVCNTR_EL0(3),
  1661		PMU_PMEVCNTR_EL0(4),
  1662		PMU_PMEVCNTR_EL0(5),
  1663		PMU_PMEVCNTR_EL0(6),
  1664		PMU_PMEVCNTR_EL0(7),
  1665		PMU_PMEVCNTR_EL0(8),
  1666		PMU_PMEVCNTR_EL0(9),
  1667		PMU_PMEVCNTR_EL0(10),
  1668		PMU_PMEVCNTR_EL0(11),
  1669		PMU_PMEVCNTR_EL0(12),
  1670		PMU_PMEVCNTR_EL0(13),
  1671		PMU_PMEVCNTR_EL0(14),
  1672		PMU_PMEVCNTR_EL0(15),
  1673		PMU_PMEVCNTR_EL0(16),
  1674		PMU_PMEVCNTR_EL0(17),
  1675		PMU_PMEVCNTR_EL0(18),
  1676		PMU_PMEVCNTR_EL0(19),
  1677		PMU_PMEVCNTR_EL0(20),
  1678		PMU_PMEVCNTR_EL0(21),
  1679		PMU_PMEVCNTR_EL0(22),
  1680		PMU_PMEVCNTR_EL0(23),
  1681		PMU_PMEVCNTR_EL0(24),
  1682		PMU_PMEVCNTR_EL0(25),
  1683		PMU_PMEVCNTR_EL0(26),
  1684		PMU_PMEVCNTR_EL0(27),
  1685		PMU_PMEVCNTR_EL0(28),
  1686		PMU_PMEVCNTR_EL0(29),
  1687		PMU_PMEVCNTR_EL0(30),
  1688		/* PMEVTYPERn_EL0 */
  1689		PMU_PMEVTYPER_EL0(0),
  1690		PMU_PMEVTYPER_EL0(1),
  1691		PMU_PMEVTYPER_EL0(2),
  1692		PMU_PMEVTYPER_EL0(3),
  1693		PMU_PMEVTYPER_EL0(4),
  1694		PMU_PMEVTYPER_EL0(5),
  1695		PMU_PMEVTYPER_EL0(6),
  1696		PMU_PMEVTYPER_EL0(7),
  1697		PMU_PMEVTYPER_EL0(8),
  1698		PMU_PMEVTYPER_EL0(9),
  1699		PMU_PMEVTYPER_EL0(10),
  1700		PMU_PMEVTYPER_EL0(11),
  1701		PMU_PMEVTYPER_EL0(12),
  1702		PMU_PMEVTYPER_EL0(13),
  1703		PMU_PMEVTYPER_EL0(14),
  1704		PMU_PMEVTYPER_EL0(15),
  1705		PMU_PMEVTYPER_EL0(16),
  1706		PMU_PMEVTYPER_EL0(17),
  1707		PMU_PMEVTYPER_EL0(18),
  1708		PMU_PMEVTYPER_EL0(19),
  1709		PMU_PMEVTYPER_EL0(20),
  1710		PMU_PMEVTYPER_EL0(21),
  1711		PMU_PMEVTYPER_EL0(22),
  1712		PMU_PMEVTYPER_EL0(23),
  1713		PMU_PMEVTYPER_EL0(24),
  1714		PMU_PMEVTYPER_EL0(25),
  1715		PMU_PMEVTYPER_EL0(26),
  1716		PMU_PMEVTYPER_EL0(27),
  1717		PMU_PMEVTYPER_EL0(28),
  1718		PMU_PMEVTYPER_EL0(29),
  1719		PMU_PMEVTYPER_EL0(30),
  1720		/*
  1721		 * PMCCFILTR_EL0 resets as unknown in 64bit mode while it resets as zero
  1722		 * in 32bit mode. Here we choose to reset it as zero for consistency.
  1723		 */
  1724		{ PMU_SYS_REG(SYS_PMCCFILTR_EL0), .access = access_pmu_evtyper,
  1725		  .reset = reset_val, .reg = PMCCFILTR_EL0, .val = 0 },
  1726	
  1727		{ SYS_DESC(SYS_DACR32_EL2), NULL, reset_unknown, DACR32_EL2 },
  1728		{ SYS_DESC(SYS_IFSR32_EL2), NULL, reset_unknown, IFSR32_EL2 },
  1729		{ SYS_DESC(SYS_FPEXC32_EL2), NULL, reset_val, FPEXC32_EL2, 0x700 },
  1730	};
  1731	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202101150021.7lf1kLu2-lkp%40intel.com.

--uAKRQypu60I7Lcqm
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--uAKRQypu60I7Lcqm--
