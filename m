Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBDOU4H7QKGQEKXLQ3BQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3d.google.com (mail-yb1-xb3d.google.com [IPv6:2607:f8b0:4864:20::b3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 756642EF3D5
	for <lists+clang-built-linux@lfdr.de>; Fri,  8 Jan 2021 15:20:00 +0100 (CET)
Received: by mail-yb1-xb3d.google.com with SMTP id n205sf15738475ybf.20
        for <lists+clang-built-linux@lfdr.de>; Fri, 08 Jan 2021 06:20:00 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610115599; cv=pass;
        d=google.com; s=arc-20160816;
        b=Nq+O0vhu4fO7YtBVCu1UwAM05ewNsMOQOf+OXnhaRMgMWG+QRcVVOlYHpE9KefUCG2
         6ZVDdg+CZ4gDFF0es5ASFFyZQX+Rbq252vASkWf29yw+kJs0csXPiSENFWB4817f+sgY
         cVfcUc1FFzNTc7DU5kHctNLBzJz4ABvHwlvISCwhVadl9ucv0YSMA0bZDn8cKFQznn/X
         xgMsGmIQuOwENuYIQxS71PWiGrCR3rqbznNSaiKpSN9ZtyAhfVCq6qE3zCna1r9nzblq
         lnLcOMPbThAYKkjzWdIY/b/gMvFlFeKQFcZlBLjT4B/cCI9XHoi1YEEM7m5+HgPuLX0t
         /8wA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=/lFWX5mJsl5x9m6KcWkP1gW9TiV8gnQ4+mbVDksi4xw=;
        b=PWYGTCr2lIwnAwWlneQkkbIRyLhvucKKkCNAwBfo9Dxnc2eauNMLDvf2YIboa0orlD
         XJfMMeA1qNN7XDnG1DSD2eb2naIASHGaYfNZcLsbn19AiMA1YzDFetAJw+mCaJNw7Rg3
         0Mxbo8fW6d/AmGsETdHkLjqAoMku+BVQIZPGrjHBVzbHD00KEvKinGYtKNTiU9M7vTo1
         b55I0C59HL2fSiK2vnLwivwRV1UbGCXKspGdv54+eaZc5VcOJN3wZbY+t3kAi8t3eMIv
         /grIzEfgqRwLfG6qqlL4fHM3ULqgQJprV6kAhNVybcRiaJKuAK7D2g8m9g6irvsf6Fun
         5Qmg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of lkp@intel.com designates 192.55.52.93 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=/lFWX5mJsl5x9m6KcWkP1gW9TiV8gnQ4+mbVDksi4xw=;
        b=sPSQH9lAzcIsZlrhkfY/18SBK+r/5XjnF83YaFxl+WQXaJ2M1uyByxPP6WPj4afJXk
         +kYIX1fasAE8Xf3FbM48q2VgfGcn9gjQoGQQOREO6BhL0SUQ8+PVH/J3PjvUyobsTYby
         eOSpiDOH/RKtHml5dH2UUCq+cvanbMvgsrRoNF4Fh3JqW5Vp9Pb8ELXUwOvmWx5xvr+7
         IDx6F/wMZ8hMgNTWAeMe9xpWGWtsJV6O9OeGsaXAShMKMcZqZycFrnMm7gLfGRQ2Wj2F
         YFD4ghicPMFn+s+xyyVpeTB/qW6JVfJ/0oHTuQ2LT7jEAiSJhyyYSrduxaBzggeKHmIw
         E0dg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=/lFWX5mJsl5x9m6KcWkP1gW9TiV8gnQ4+mbVDksi4xw=;
        b=a6BAbkuT515NnIu9oxX7U26ekV0fhmrftTpgELizNKVl2cWNblLzjnvkXE2etDGt26
         lg8lww9qOT5C8tOMg/1YEWQ38l6Odqdb4BoSazoRS3kKad3qwpZ7T1Dv3xf4DT6uL9E3
         fBMui4baaE4XIH9Eah1dG/m7WXTjf+7W+V+//E1pGAtJLX3rfzBs3C6ZqaHf8HW5ZqDM
         o7BBc0elFgxFvsiw/YpkwF0bSA2ZdDnqqnqX5li3nrWndrvbAgeBM5zN4koLkzB1EjNd
         mMXuOCibPUpmOw2x+NubvO1rxvIpJ/J+b06JEVJEBlMFNc2iTWybYDLkMJKhtCXBB16E
         Xr3A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532CqL6gnBiztCE7G/rErdm1nic5+xzlJVNDFtyHSUBlBbKeV9p7
	tAtBNBue1+oVL2msgl/CAek=
X-Google-Smtp-Source: ABdhPJwS8u7dyNi/8zfktjvNFHz7p1AHG+BDTjmTYYb2UtI1wk2+WcvRMLoOZrrgeaG8fEjH8IXp5g==
X-Received: by 2002:a25:250b:: with SMTP id l11mr6187585ybl.196.1610115597945;
        Fri, 08 Jan 2021 06:19:57 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:41d6:: with SMTP id o205ls5687763yba.10.gmail; Fri, 08
 Jan 2021 06:19:56 -0800 (PST)
X-Received: by 2002:a25:f509:: with SMTP id a9mr5481910ybe.35.1610115595891;
        Fri, 08 Jan 2021 06:19:55 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610115595; cv=none;
        d=google.com; s=arc-20160816;
        b=zH54MW0t315EtoayZKTSPo/BzafgCKPjvsecTTaNj49DrrBxkG6rtn+Rq5SwgvwGZD
         lE+Y5zPer/0SfpSJBYU9/2wNMczO61u6oK/QZAEpk1WGG/V2OY5ROYUCOihrXSHAJkEm
         ehgYcRdx8Fsb+FBQ2f8U3H5/vTHCbO8mrUY3vMq6fU+qO+EAV/P/F8L9fsjItF/7JBKF
         KLx0Bqv8q2snlBgx1FYuijHxeBAfAPxNfRrPZxEuDfY3trSLOdQlUEiSoifNs/qrThCy
         pAz5OvhSk/HVG5svOgvubR/6qUNzkPrTXoFIoYxgqZpbPf4XGvbJuQHO29cO4LeylXi/
         5oRQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=SPI38l6qd2959GvdAKex7KmZsPyTPDqIXR9MeAhohUE=;
        b=t6NFycKP9qm1MxS+T9U8d4d1QVajmIW7rVyk3cV2XRb5XViRdlQ984KcC0owzC++W+
         N5+cilgJ2uAxY2X1AWGbcyV1p+CynL8oH3UQkcGx3uNfDGoCisvg8FTdsrtVl6lIRiWL
         WiTVL+FgzxLeZxUzB43vClwARo3Iz+u3sF7Gp1uuPNl21j5KB/cCJxerk0+UsVnKG/58
         A9FXcEBf7RLLaP2eruSj0W7AiwT/AOK6rqGDVh/8iqc2x7pNrAKwlgF69EZUd4tI//df
         n1VUskGN5/SkD6m0o4x80cSHm3wwB0UmOoG7yGkqVtiAPNDji5GgMUD8szq0UU6USqZd
         eIQA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of lkp@intel.com designates 192.55.52.93 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga11.intel.com (mga11.intel.com. [192.55.52.93])
        by gmr-mx.google.com with ESMTPS id s187si1253023ybc.2.2021.01.08.06.19.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 08 Jan 2021 06:19:55 -0800 (PST)
Received-SPF: pass (google.com: best guess record for domain of lkp@intel.com designates 192.55.52.93 as permitted sender) client-ip=192.55.52.93;
IronPort-SDR: 4WufSLedah1UrCF4KXMB255Y40I36HiEQdijxw0FFmK45WR0snRJd9EYlDnFMHtt9UCAlC/hre
 xviOnMAcXLgA==
X-IronPort-AV: E=McAfee;i="6000,8403,9857"; a="174091688"
X-IronPort-AV: E=Sophos;i="5.79,331,1602572400"; 
   d="gz'50?scan'50,208,50";a="174091688"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
  by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 08 Jan 2021 06:19:54 -0800
IronPort-SDR: 0Yy2Bo/R05EyoC1VXfBOB1CYaZHAp2R0cCp0PyET0365VxRA9zuxNJP97qE/01JZxikYXt9mpp
 +lfVuGDmxqug==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,331,1602572400"; 
   d="gz'50?scan'50,208,50";a="422964462"
Received: from lkp-server01.sh.intel.com (HELO 412602b27703) ([10.239.97.150])
  by orsmga001.jf.intel.com with ESMTP; 08 Jan 2021 06:19:52 -0800
Received: from kbuild by 412602b27703 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1kxscJ-0000Jf-Ga; Fri, 08 Jan 2021 14:19:51 +0000
Date: Fri, 8 Jan 2021 22:18:57 +0800
From: kernel test robot <lkp@intel.com>
To: Marc Zyngier <maz@kernel.org>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	linux-arm-kernel@lists.infradead.org
Subject: [arm-platforms:kvm-arm64/pmu-undef-fixes 29/30]
 arch/arm64/kvm/sys_regs.c:1544:13: warning: initializer overrides prior
 initialization of this subobject
Message-ID: <202101082253.LtrQbZvn-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="sdtB3X0nJg68CQEu"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: best guess record for domain of lkp@intel.com designates
 192.55.52.93 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=intel.com
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


--sdtB3X0nJg68CQEu
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/maz/arm-platforms.git kvm-arm64/pmu-undef-fixes
head:   248735e2001115f36e70105cb9dadff95a9fdb42
commit: 9bde3c476c881793f310f38a5f705b0394283f8b [29/30] KVM: arm64: Hide PMU registers from userspace when not available
config: arm64-randconfig-r012-20210108 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project 5c951623bc8965fa1e89660f2f5f4a2944e4981a)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install arm64 cross compiling tool for clang build
        # apt-get install binutils-aarch64-linux-gnu
        # https://git.kernel.org/pub/scm/linux/kernel/git/maz/arm-platforms.git/commit/?id=9bde3c476c881793f310f38a5f705b0394283f8b
        git remote add arm-platforms https://git.kernel.org/pub/scm/linux/kernel/git/maz/arm-platforms.git
        git fetch --no-tags arm-platforms kvm-arm64/pmu-undef-fixes
        git checkout 9bde3c476c881793f310f38a5f705b0394283f8b
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202101082253.LtrQbZvn-lkp%40intel.com.

--sdtB3X0nJg68CQEu
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
qxkkAWxGDkWeFZK3FjoUW6Bxa2XBEg/1gNhbOcT6lRQlVxo6a1yqx9myaALfxcZhMlMcB1d6
g7KoWpqM/R4llm2pxEW3bFcExfAOFLUhRQLc8hSJ4cTW94gzMmjcCMnSxJcPTSRoffhYCO9d
4OuaIxVhcLuq8cQ4cwYlGLqrUU1lAy81lhhzgwpTDNtPBKmbUAnQt6IS1PuxbDUjI/WRwC7p
SN2kOBGDOhdDQR1HIexJaT9qYtWG6qwOrsigo8E509E8nRCd6ik8MfGhvOVQtEPFMqNBN/Rg
daVtH8SIF8LxIbZxxMPfsrA31Jmw9OKY61nEy7hJvJ69VXqMm7Yr4gM4AEE6JXBfhzRVi1dS
iWNQsvFnW92KKCzKlqPNjD0iJdVpA6taldD1Qctc8Gb7nCrOckZle94VEwTSlXz2jwzyN3Ek
RElllt+OV3Lv9rt7S/ZdurvfX0m9TdtmSv5DQmq6O7hd5VLWM3aqcZpSPKU0E7RZXZspeJse
eXBsmZb2Je3Net8X2vdsy1OwzaF/alG2WZk2vVMqQr9Ki9XLiHpMEgmS44ywDynyNu09paCu
b4u0/igHSWHFb/ZtUx02qldsRj+ku1TJtO8pkxxikjZCtd837N2/NtiEv7XS1pvcO6o2CIyI
hQoKs6Lln1b70zk/5krdP560zPv9PUieFZkWBIpRdvu+XCtOx/jdNsda9WBhojPnCnvogELw
DLh8kS6R6c6ZObgzs+4Oq7w98mgQXVEVmRkunLtpHLfx7z++qvGChgqmNY87bdZRY6T9Xe03
5/549XvyclP2dB8/s5qVb9Och1q6VmqXt1fLG13o2UvjziRgYbJDS7WlxjKOZV4w+XPU+4f+
YK9qK3kw5MfVeJjOm/r4/Onp4lfPr9//vrl8Zacq0qm0yPnoV9J6PtPUgzWJzvq9oP3elDqc
5kf9AEYA4vClLndc8dttZFklOPrDTpZ2vKD13U5xQsI5V4c1s4MD1GOdVnTDKp8noc+XRqYU
UcRoHL2NWdPKp/fWHHj++fPn5/eHLzf90cyZ9VGtRIPilPRE2y9terY2uqEMsUCu7DqWt5+y
cHKUB37pCu7tnEq8jr1AhZZXlPlQFVMPTZ8CKitP3+kyQ3zZEPfjz+cv708s/vzDN1oIu8Ng
f7/f/GPNgZsXOfE/5q/vmXHHGABAG9EsGuQ8h3hx6evDl8vnD5/mKjJHXyD62DACDw4+2BRw
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
wuuW9gEA

--sdtB3X0nJg68CQEu--
