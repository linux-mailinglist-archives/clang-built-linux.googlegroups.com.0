Return-Path: <clang-built-linux+bncBC4LXIPCY4NRB6PV775QKGQEKKS56WA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x539.google.com (mail-pg1-x539.google.com [IPv6:2607:f8b0:4864:20::539])
	by mail.lfdr.de (Postfix) with ESMTPS id EA3C92881D4
	for <lists+clang-built-linux@lfdr.de>; Fri,  9 Oct 2020 07:54:03 +0200 (CEST)
Received: by mail-pg1-x539.google.com with SMTP id k17sf5744306pgb.7
        for <lists+clang-built-linux@lfdr.de>; Thu, 08 Oct 2020 22:54:03 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1602222842; cv=pass;
        d=google.com; s=arc-20160816;
        b=uTDt0NU1EXyzHdJEpHaQfgkGfUBpau3XrShHZPPnDJL47KxrE8fIfnQnY0hS2tZYPe
         gcCMoYtp9chF4J9NpLcHYu8sAJEjDra/myjtHDBmNsdvz2eeIJkhW/lbFCaBHQ3IPdp9
         f4xD7d1GR5KFV4X9KRInZZdwiR7lf3V+s8WwoadUejgHVzPrcc8ozjamdBX9lD5C1ePE
         IKeOfDjKtlbb+9OsidRryoYvAFEUXEy774UR4VmA5jZAlVr3x3QinyXVn8a5rmYRQCJh
         uqXAgUlKLeKahbNGcGrZIqcbdCQUOcxRmAKE7+dZVkDGKDhiQvMYLTXxhwHb1mWWusZz
         z4eQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=FU/lJRsN5mMBsA2WLwV+7nbkIUpbSI8lQhNO/cBONTo=;
        b=oXlN/7piwuc7LSt0n9uYPJVwFT5Pw7zlKog6bhiZ5gUAytC470mEnVHNv9UOpoIWNU
         cXwACbIzzm7ZJCaIbuak43r9cTm02BADEO3zw/gl+PMNLyeRNEPYkwaD5nRRYUJk4KFW
         29yHqq26WlMLZMaDshq1Ozo+ZYwU4fLFU8tGACUMUwv+40uTMvCjX15s4Of3dMNpDpx7
         joA+2fpTCl2uii4H4iCg9LyDE59InJVwSDDzi0GPPssUGsFjIYWDnM/nDHlMyJ6HmCim
         WrpLZXTCAYeC6EXFtITnDIX3rblO8i6ElHuzXPIUbHto+ie5iZgcgA6QisToaFSaWPWJ
         xdBA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.43 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=FU/lJRsN5mMBsA2WLwV+7nbkIUpbSI8lQhNO/cBONTo=;
        b=Cc40sxYqJp41tFu3hMvNakOoTEhjtrsHqeEGOrPxO93lmizXA1KbmrwCW5iTgAVYVA
         fvdVOkWEjV2dJD6vup4rKPrtux23GRGt2wKZsnxqsBIry5bSA1fJMPh/MWuPfHgZ3QbO
         sbhoBKtsYWJrU9hdiF7qZqjiJjzuv8Qp2Pmod07N3gQw38aJSlHsJROp1+NNJKhKkE2g
         ejjAaimnLpQphyIr6WT5klozi5PMFFUFXBbAKZyIKy30dzJMLlNAGYebbkUeBODi8FNq
         27A7V9KSopICqRf9507OKDDVT8kbiBcM56ruMvor5WZmQkw/SQ7u0C1U0CuY9F1FrK2i
         P9uQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=FU/lJRsN5mMBsA2WLwV+7nbkIUpbSI8lQhNO/cBONTo=;
        b=L3FyBYw702fgLaAudgd29qPboih80LENoslv4kzFnaL2sHr44aF767gwM0u+Xm0rV8
         Phz94u8lP9jEH0DVmYW+lVRPaFQ3AkmVBF0qkaI4oeWQD5Vf2HmhuEia8J/CwfGPuR4E
         QA29Gi6yHwAQmWMWZUixNt7vQ1AKpIwweiqiSW2P+voKxYXWeV0eK1TOjhk3vuI7nWKJ
         0E526zC6+ExTG2nBZa6xi+2lfioT+/9NTjGry7sUNOpQjxgEF3vFdMfxhImD0sUougFQ
         fg3pK+etue2gJ+DZhq28QU/80S0i0yWW+FrMtRnYifLFskqSWFwq3O6tEN6500LEpRpW
         reTg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532YYPPDNooAwvtd5E3dMp+7/O9LtK5ib2XLPW8qW9IiFbFpp2Ap
	yVgLKvY6n6K+4RIYVtRq+0o=
X-Google-Smtp-Source: ABdhPJyHDNznVOMwj60ymUXOpg8Qnvjpbe/6KT6xth0tUI2CVdKz422/MFfamxIYfmT6L+JCjiSsnQ==
X-Received: by 2002:a17:90a:1b2f:: with SMTP id q44mr2681178pjq.220.1602222841964;
        Thu, 08 Oct 2020 22:54:01 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:8b8a:: with SMTP id ay10ls3871831plb.6.gmail; Thu,
 08 Oct 2020 22:54:01 -0700 (PDT)
X-Received: by 2002:a17:90a:d3cd:: with SMTP id d13mr2971332pjw.70.1602222841365;
        Thu, 08 Oct 2020 22:54:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1602222841; cv=none;
        d=google.com; s=arc-20160816;
        b=nmGQgIG2283xPb4o3ZvGC29knWSWyAq2RVWJPLPjHF70qLKEUcjxOdYrk1GVQ++Bgr
         IwhjqdSC13o6C5ctB6B1Ir1UP4ahZ16X23q9VDI+ycNOpon1E1H/Rk3DxcxUxjk5DDd+
         dOpfasASEJpNtc1AUXCGwkcE0OX1/oj3BQgYVxds2RJ16id7bPbObTpBNuVxRot7h0Dr
         Iz7bl12QyE6+18r60d0Cn9/0iZIj1JH/9VmmwaMfe4f5o2sAg5H2hwkbKnD69oqv3O4i
         Yl4ByOLA7NxXTMkaq6bVpUdslhCGjd3ykttfY0WE+s0bFCnvRZttp4jCHP2sDF3bdCi/
         XtAA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=EdjcvOGStyowj1qoO8RF2+UUFpbDCjKOipcm/9Tccuw=;
        b=CaTWMhjYLt9sZLViCBaJKiaONJiWV9hSLSMKeGlJ3TddPOWYkesD1Zyvraaa+Fa1Tx
         YG3XOU5yrH/r7pWhpsXyH6Tdghm3GdOuqSJI/NgfZ3fJkrCfl+cJF4C8Taf7opa1P7nq
         GP1OACe/R0bf/EMmAvdgYX3MK4Aj+2GrNxD0OHD/sYQ14GQX6H7d3TcsS7hegcqWvmqq
         Rdguo3mdmTIcjYY8S680DGaihyfljSF0HHxRRdMUW81Z0Ej72bZ7MYoL/wJY7MyPvziG
         D3nNv0CAhpRLPeVgNaBp1G6CkCUIVmlzXk7W3veiw9yDofIxd5izeFxs8sLQaHvuY0+f
         dBpA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.43 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga05.intel.com (mga05.intel.com. [192.55.52.43])
        by gmr-mx.google.com with ESMTPS id np11si62813pjb.1.2020.10.08.22.54.01
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 08 Oct 2020 22:54:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.43 as permitted sender) client-ip=192.55.52.43;
IronPort-SDR: zYFHbqbME/yZURl9rV9utp6gOhXwiyfu1SVryOUcvOKNBdtEuM7cj0LyB8+i870lwTnLVm6rVO
 ZraA+6bE8YNw==
X-IronPort-AV: E=McAfee;i="6000,8403,9768"; a="250140269"
X-IronPort-AV: E=Sophos;i="5.77,354,1596524400"; 
   d="gz'50?scan'50,208,50";a="250140269"
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
  by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 08 Oct 2020 22:54:00 -0700
IronPort-SDR: zL1qjPMQZC0+V+ox4pyyqUYuoA69hh9e9G/a99p9jlVfM/2NNVitv9z/6VRkTYhr1KnC3zIejy
 pV5gQDbhdb3g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,354,1596524400"; 
   d="gz'50?scan'50,208,50";a="316935266"
Received: from lkp-server02.sh.intel.com (HELO 80eb06af76cf) ([10.239.97.151])
  by orsmga006.jf.intel.com with ESMTP; 08 Oct 2020 22:53:57 -0700
Received: from kbuild by 80eb06af76cf with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1kQlLo-0000F4-8s; Fri, 09 Oct 2020 05:53:56 +0000
Date: Fri, 9 Oct 2020 13:53:01 +0800
From: kernel test robot <lkp@intel.com>
To: "Gustavo A. R. Silva" <gustavoars@kernel.org>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	"Gustavo A. R. Silva" <gustavo@embeddedor.com>,
	LKML <linux-kernel@vger.kernel.org>
Subject: [gustavoars-linux:for-next/clang-ft 2/3]
 drivers/net/ethernet/broadcom/bnx2x/bnx2x_main.c:6318:2: warning:
 unannotated fall-through between switch labels
Message-ID: <202010091335.1dmaNUZt-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="qDbXVdCdHGoSgWSk"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 192.55.52.43 as permitted
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


--qDbXVdCdHGoSgWSk
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/gustavoars/linux.git for-next/clang-ft
head:   de6b606b07e40c037ed4f83b53ee541692a78c6e
commit: 7d30604536de43168b1eae0a4a938bcbca7786d2 [2/3] Revert "kbuild: Do not enable -Wimplicit-fallthrough for clang for now"
config: x86_64-randconfig-a005-20201009 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project 4cfc4025cc1433ca5ef1c526053fc9c4bfe64109)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install x86_64 cross compiling tool for clang build
        # apt-get install binutils-x86-64-linux-gnu
        # https://git.kernel.org/pub/scm/linux/kernel/git/gustavoars/linux.git/commit/?id=7d30604536de43168b1eae0a4a938bcbca7786d2
        git remote add gustavoars-linux https://git.kernel.org/pub/scm/linux/kernel/git/gustavoars/linux.git
        git fetch --no-tags gustavoars-linux for-next/clang-ft
        git checkout 7d30604536de43168b1eae0a4a938bcbca7786d2
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

   In file included from drivers/net/ethernet/broadcom/bnx2x/bnx2x_main.c:31:
   In file included from include/linux/pci.h:1439:
   In file included from include/linux/dmapool.h:14:
   In file included from include/linux/scatterlist.h:8:
   In file included from include/linux/mm.h:679:
   In file included from include/linux/huge_mm.h:8:
   In file included from include/linux/fs.h:33:
   In file included from include/linux/percpu-rwsem.h:7:
   In file included from include/linux/rcuwait.h:6:
   In file included from include/linux/sched/signal.h:6:
   include/linux/signal.h:241:2: warning: unannotated fall-through between switch labels [-Wimplicit-fallthrough]
           case 1: ;
           ^
   include/linux/signal.h:241:2: note: insert '__attribute__((fallthrough));' to silence this warning
           case 1: ;
           ^
           __attribute__((fallthrough)); 
   include/linux/signal.h:241:2: note: insert 'break;' to avoid fall-through
           case 1: ;
           ^
           break; 
   include/linux/signal.h:253:2: warning: unannotated fall-through between switch labels [-Wimplicit-fallthrough]
           case 1: ;
           ^
   include/linux/signal.h:253:2: note: insert '__attribute__((fallthrough));' to silence this warning
           case 1: ;
           ^
           __attribute__((fallthrough)); 
   include/linux/signal.h:253:2: note: insert 'break;' to avoid fall-through
           case 1: ;
           ^
           break; 
   In file included from drivers/net/ethernet/broadcom/bnx2x/bnx2x_main.c:47:
   In file included from include/net/ip.h:25:
   include/linux/jhash.h:102:2: warning: unannotated fall-through between switch labels [-Wimplicit-fallthrough]
           case 0: /* Nothing left to add */
           ^
   include/linux/jhash.h:102:2: note: insert 'break;' to avoid fall-through
           case 0: /* Nothing left to add */
           ^
           break; 
   include/linux/jhash.h:139:2: warning: unannotated fall-through between switch labels [-Wimplicit-fallthrough]
           case 0: /* Nothing left to add */
           ^
   include/linux/jhash.h:139:2: note: insert 'break;' to avoid fall-through
           case 0: /* Nothing left to add */
           ^
           break; 
>> drivers/net/ethernet/broadcom/bnx2x/bnx2x_main.c:6318:2: warning: unannotated fall-through between switch labels [-Wimplicit-fallthrough]
           case FW_MSG_CODE_DRV_LOAD_PORT:
           ^
   drivers/net/ethernet/broadcom/bnx2x/bnx2x_main.c:6318:2: note: insert 'break;' to avoid fall-through
           case FW_MSG_CODE_DRV_LOAD_PORT:
           ^
           break; 
   5 warnings generated.
--
   In file included from drivers/net/ethernet/broadcom/bnxt/bnxt.c:21:
   In file included from include/linux/pci.h:1439:
   In file included from include/linux/dmapool.h:14:
   In file included from include/linux/scatterlist.h:8:
   In file included from include/linux/mm.h:679:
   In file included from include/linux/huge_mm.h:8:
   In file included from include/linux/fs.h:33:
   In file included from include/linux/percpu-rwsem.h:7:
   In file included from include/linux/rcuwait.h:6:
   In file included from include/linux/sched/signal.h:6:
   include/linux/signal.h:241:2: warning: unannotated fall-through between switch labels [-Wimplicit-fallthrough]
           case 1: ;
           ^
   include/linux/signal.h:241:2: note: insert '__attribute__((fallthrough));' to silence this warning
           case 1: ;
           ^
           __attribute__((fallthrough)); 
   include/linux/signal.h:241:2: note: insert 'break;' to avoid fall-through
           case 1: ;
           ^
           break; 
   include/linux/signal.h:253:2: warning: unannotated fall-through between switch labels [-Wimplicit-fallthrough]
           case 1: ;
           ^
   include/linux/signal.h:253:2: note: insert '__attribute__((fallthrough));' to silence this warning
           case 1: ;
           ^
           __attribute__((fallthrough)); 
   include/linux/signal.h:253:2: note: insert 'break;' to avoid fall-through
           case 1: ;
           ^
           break; 
   In file included from drivers/net/ethernet/broadcom/bnxt/bnxt.c:40:
   In file included from include/net/ip.h:25:
   include/linux/jhash.h:102:2: warning: unannotated fall-through between switch labels [-Wimplicit-fallthrough]
           case 0: /* Nothing left to add */
           ^
   include/linux/jhash.h:102:2: note: insert 'break;' to avoid fall-through
           case 0: /* Nothing left to add */
           ^
           break; 
   include/linux/jhash.h:139:2: warning: unannotated fall-through between switch labels [-Wimplicit-fallthrough]
           case 0: /* Nothing left to add */
           ^
   include/linux/jhash.h:139:2: note: insert 'break;' to avoid fall-through
           case 0: /* Nothing left to add */
           ^
           break; 
>> drivers/net/ethernet/broadcom/bnxt/bnxt.c:2099:2: warning: unannotated fall-through between switch labels [-Wimplicit-fallthrough]
           default:
           ^
   drivers/net/ethernet/broadcom/bnxt/bnxt.c:2099:2: note: insert 'break;' to avoid fall-through
           default:
           ^
           break; 
   5 warnings generated.
--
   In file included from drivers/scsi/bfa/bfa_ioc.c:11:
   In file included from drivers/scsi/bfa/bfad_drv.h:23:
   In file included from include/linux/pci.h:1439:
   In file included from include/linux/dmapool.h:14:
   In file included from include/linux/scatterlist.h:8:
   In file included from include/linux/mm.h:679:
   In file included from include/linux/huge_mm.h:8:
   In file included from include/linux/fs.h:33:
   In file included from include/linux/percpu-rwsem.h:7:
   In file included from include/linux/rcuwait.h:6:
   In file included from include/linux/sched/signal.h:6:
   include/linux/signal.h:241:2: warning: unannotated fall-through between switch labels [-Wimplicit-fallthrough]
           case 1: ;
           ^
   include/linux/signal.h:241:2: note: insert '__attribute__((fallthrough));' to silence this warning
           case 1: ;
           ^
           __attribute__((fallthrough)); 
   include/linux/signal.h:241:2: note: insert 'break;' to avoid fall-through
           case 1: ;
           ^
           break; 
   include/linux/signal.h:253:2: warning: unannotated fall-through between switch labels [-Wimplicit-fallthrough]
           case 1: ;
           ^
   include/linux/signal.h:253:2: note: insert '__attribute__((fallthrough));' to silence this warning
           case 1: ;
           ^
           __attribute__((fallthrough)); 
   include/linux/signal.h:253:2: note: insert 'break;' to avoid fall-through
           case 1: ;
           ^
           break; 
>> drivers/scsi/bfa/bfa_ioc.c:3303:2: warning: unannotated fall-through between switch labels [-Wimplicit-fallthrough]
           case BFI_ABLK_I2H_PF_DELETE:
           ^
   drivers/scsi/bfa/bfa_ioc.c:3303:2: note: insert 'break;' to avoid fall-through
           case BFI_ABLK_I2H_PF_DELETE:
           ^
           break; 
   3 warnings generated.

vim +6318 drivers/net/ethernet/broadcom/bnx2x/bnx2x_main.c

8a1c38d17d88c8d drivers/net/bnx2x_main.c       Eilon Greenstein 2009-02-12  6309  
471de716b782fb5 drivers/net/bnx2x_main.c       Eilon Greenstein 2008-08-13  6310  static void bnx2x_init_internal(struct bnx2x *bp, u32 load_code)
471de716b782fb5 drivers/net/bnx2x_main.c       Eilon Greenstein 2008-08-13  6311  {
471de716b782fb5 drivers/net/bnx2x_main.c       Eilon Greenstein 2008-08-13  6312  	switch (load_code) {
471de716b782fb5 drivers/net/bnx2x_main.c       Eilon Greenstein 2008-08-13  6313  	case FW_MSG_CODE_DRV_LOAD_COMMON:
f2e0899f0f275cc drivers/net/bnx2x/bnx2x_main.c Dmitry Kravkov   2010-10-06  6314  	case FW_MSG_CODE_DRV_LOAD_COMMON_CHIP:
471de716b782fb5 drivers/net/bnx2x_main.c       Eilon Greenstein 2008-08-13  6315  		bnx2x_init_internal_common(bp);
471de716b782fb5 drivers/net/bnx2x_main.c       Eilon Greenstein 2008-08-13  6316  		/* no break */
471de716b782fb5 drivers/net/bnx2x_main.c       Eilon Greenstein 2008-08-13  6317  
471de716b782fb5 drivers/net/bnx2x_main.c       Eilon Greenstein 2008-08-13 @6318  	case FW_MSG_CODE_DRV_LOAD_PORT:
619c5cb6885b936 drivers/net/bnx2x/bnx2x_main.c Vlad Zolotarov   2011-06-14  6319  		/* nothing to do */
471de716b782fb5 drivers/net/bnx2x_main.c       Eilon Greenstein 2008-08-13  6320  		/* no break */
471de716b782fb5 drivers/net/bnx2x_main.c       Eilon Greenstein 2008-08-13  6321  
471de716b782fb5 drivers/net/bnx2x_main.c       Eilon Greenstein 2008-08-13  6322  	case FW_MSG_CODE_DRV_LOAD_FUNCTION:
523224a3b3cd407 drivers/net/bnx2x/bnx2x_main.c Dmitry Kravkov   2010-10-06  6323  		/* internal memory per function is
523224a3b3cd407 drivers/net/bnx2x/bnx2x_main.c Dmitry Kravkov   2010-10-06  6324  		   initialized inside bnx2x_pf_init */
471de716b782fb5 drivers/net/bnx2x_main.c       Eilon Greenstein 2008-08-13  6325  		break;
471de716b782fb5 drivers/net/bnx2x_main.c       Eilon Greenstein 2008-08-13  6326  
471de716b782fb5 drivers/net/bnx2x_main.c       Eilon Greenstein 2008-08-13  6327  	default:
471de716b782fb5 drivers/net/bnx2x_main.c       Eilon Greenstein 2008-08-13  6328  		BNX2X_ERR("Unknown load_code (0x%x) from MCP\n", load_code);
471de716b782fb5 drivers/net/bnx2x_main.c       Eilon Greenstein 2008-08-13  6329  		break;
471de716b782fb5 drivers/net/bnx2x_main.c       Eilon Greenstein 2008-08-13  6330  	}
471de716b782fb5 drivers/net/bnx2x_main.c       Eilon Greenstein 2008-08-13  6331  }
471de716b782fb5 drivers/net/bnx2x_main.c       Eilon Greenstein 2008-08-13  6332  

:::::: The code at line 6318 was first introduced by commit
:::::: 471de716b782fb55ae0fdc040cf2722caffeeb94 bnx2x: FW Internal Memory structure

:::::: TO: Eilon Greenstein <eilong@broadcom.com>
:::::: CC: David S. Miller <davem@davemloft.net>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202010091335.1dmaNUZt-lkp%40intel.com.

--qDbXVdCdHGoSgWSk
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--qDbXVdCdHGoSgWSk--
