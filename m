Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBH5U7SBQMGQECYLEKEY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13d.google.com (mail-il1-x13d.google.com [IPv6:2607:f8b0:4864:20::13d])
	by mail.lfdr.de (Postfix) with ESMTPS id D38ED365F13
	for <lists+clang-built-linux@lfdr.de>; Tue, 20 Apr 2021 20:14:56 +0200 (CEST)
Received: by mail-il1-x13d.google.com with SMTP id v1-20020a92d2410000b02901533f3ed5dbsf14358153ilg.22
        for <lists+clang-built-linux@lfdr.de>; Tue, 20 Apr 2021 11:14:56 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1618942495; cv=pass;
        d=google.com; s=arc-20160816;
        b=cwVTuisVvxLg8TrCrhaSMcOG4WOkpNuzut0IkvMGXzIPaP16xURyOQJcBWrcsFJvKi
         sVOd0ik7+fsjl95nYpz7T5v0UsEgFkJUI4S7C8QPXkFWJ0tDf1/B1l9OzCwvf+koS8z6
         HGrPGs6n6weCa3OZG7umLCef3fob2VtQbZm5MNQaiQ+Tz3Ui6/QHqXGGt2+7sBf/SP2Z
         rs+BAArMLVUGMPCkl5BPef/uR/heAI+8orbe9Rx1eQSMqhVV+O988EnH+1DuKjQQtHyX
         KTp5upyflipnqtSnf7ZTc+Ir3H5hchUmBYYNCZp32gD045LayXCzjXa4fqO5wuVHeNhB
         cslQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=JciPA2C2G+6SQHI1z2lnP+2ZgonTmuRA3vBle2m/PfA=;
        b=R+ibEaTDBFozlJS44cP9MWdaKbpHuOTvrmMMafY0jrC8N/Kf30eEH1NQuydlsVxNKj
         cWGRjh5IoXCl4CkbUZAmzi/dXqgXT1z5DbScINXlAyWoku+qnFLvKTizGonm2pjdN/bQ
         6v+dEV0dhtu1v1ikmY4MOUGfkoIZU6QJolHv6sI4baIFUuzCgfMCngg0gq6rKRyjiWnu
         +WYdkgGv8B6+aDte2uUGo9uAJU3b9zT3zQpolfzbOtteLTxNeqpiPc/9EbSier2mogE3
         YSoc518Aa6UTzWCeYvYBeVh0eAjz56z8Ea8To0HfnrOjPmZRNXVx+8dX4XAy2464BCJN
         7SXQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.136 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=JciPA2C2G+6SQHI1z2lnP+2ZgonTmuRA3vBle2m/PfA=;
        b=fszZ6z6T8j8jGlUQOe0Pu2RVSAiSuGaeefUZcVRkbRP825Yhs2Qj65s7cNd94aRUVM
         zDCkTlUYrXzOK8rHJxPkExlz1okeIEJg04s7wqBbDko+IHvEIxqh3laHvCMbombzoaRc
         qD5cgRMWQGVPwb5p6Xv5ig6S/HpIMM8BG2bF3j2H7R9eFWNl4NIOkXEgKPrQYftjsJtJ
         H0IeLw3Q7egwK/BS9r/YwB7i9eOO9tOqDGOKhg5HojBZtNDKukjrO/pu1xjQ4AZVMNI9
         i1sPlaaOYHi0gjI4guCbQpKBHpvNCWblgN2FMEdCYsPIk7HSS+4K6Uka4/H4EeA+Srq7
         /ugw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=JciPA2C2G+6SQHI1z2lnP+2ZgonTmuRA3vBle2m/PfA=;
        b=ZxU4jitc89kj/wvwFJDGFpeBPxQ89Nypfw2AeNfvMIwbfPUT8B32keD2dqMxwCWFbK
         lIZNnG3xgAZicyuvy6JRgB4RGstjOTfftXJxiT/Vd1FVqi3QfznpVFMYWBaGAI1T9z8L
         oxsssnjrBHhjRaAWTRMFb+4LDp4FceL9Wzk5h4rJFpu6poK2auiaN5CbSrvM6MIlIk5j
         c7qWTTUMcnKx1JB/A8AlRLkhENKOgTDNjnsJuUUhUP+uwMRRlv16hOPS94yq/0Ut2hHf
         2VjLmNqfVPFX8juUuZ9x9k9lk4yP1YvYkADsU2Fb71EjtzwuyZJNjx3oLXk5+vRcaMyn
         vKHw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530YOK1+U0lw43I7bn1+Ci3HbFtBh8Tn34gD5ToBGe0tAkL5PCsb
	DNu0Ig9aNDhD36Ia1y1sQxw=
X-Google-Smtp-Source: ABdhPJzc6/kt21enNdwCnLLWdZkQCczvD5FOhJ+MNqM1BPyzurQbZ8TMzV4rK/83vNPBUjGHaeoNnw==
X-Received: by 2002:a02:c017:: with SMTP id y23mr10398668jai.48.1618942495578;
        Tue, 20 Apr 2021 11:14:55 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6e02:1845:: with SMTP id b5ls1183005ilv.0.gmail; Tue, 20
 Apr 2021 11:14:55 -0700 (PDT)
X-Received: by 2002:a05:6e02:1c42:: with SMTP id d2mr21270576ilg.287.1618942495067;
        Tue, 20 Apr 2021 11:14:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618942495; cv=none;
        d=google.com; s=arc-20160816;
        b=P0k1KZ0TqNERbV+SCkR45yWxd/qHEd35VSCvRRTHKZEZFvuXbcw0u9pIF2P8lTen70
         l9OuQ1n7n4vdFP2nz6NVsUVhS0fZ5i6SODlFOTLARuyG+okwAzDoLRxGbbQelVgxOnLu
         cecX/r9rlJDAX+6NmkfWlOwgHsjVcqCNFLP2Wy8lo/DsjZ5lUYvXbFmQj4XIVyrxoe8F
         Ij0gAyGMgtpY5+iSs5uyp5GPr2YA8cWz/sp9P91U6ghsS5AfyQHu8T5FnP+QD7xLMsWv
         iu+8Fo40nfT4p8renW1FfbmErV2Z9WZtGNe3nMNCarBmKNuoeOTkApkgXDaslzlKuHJn
         MdbQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :from:date:ironport-sdr:ironport-sdr;
        bh=IOVZNLsaBJLs6KANQqSR3E1qyubtcb1os+563F5ff5U=;
        b=CpI6Urdfgz5Ha24ivxXA3zG4b3l+yskq9xGsirqBVK+LekTYbYM3h0pgViGGX9q5Ou
         AO8eVjt1NS99WPBQVXM4tOWj2g1O2pLpYzGWz2xudNAdiWqXhxLk0iggmK9rVeo+3itS
         hvkoEUiYQXujn5a4uU29SPfzK4ZKDzgBRU1qbtFCgjOSMZbMbbYxfm/zvYSY0CxdTc0D
         hlryfVM/860lznWNq0dqLTSw1MS+ygclTZ6Bwta3KgHcWa9/lGZp41j+aG01PPIUfpNt
         lK3kheVGIJakgtQJ7R+P8CXeJWf5krAhW7xmdKOEskYn1ARGwgihdUSOW/ISiQ6HdOTN
         TgBg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.136 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga12.intel.com (mga12.intel.com. [192.55.52.136])
        by gmr-mx.google.com with ESMTPS id d10si799347ioi.0.2021.04.20.11.14.54
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 20 Apr 2021 11:14:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.136 as permitted sender) client-ip=192.55.52.136;
IronPort-SDR: f0E8WTDBDqnr6Ki9eObsAmsuCuB3IK8a4vD+lx3z8d4i9sLbn/gmbK4AS045aBL+ORonCxSSkl
 ZAW08gLIthEQ==
X-IronPort-AV: E=McAfee;i="6200,9189,9960"; a="175047920"
X-IronPort-AV: E=Sophos;i="5.82,237,1613462400"; 
   d="gz'50?scan'50,208,50";a="175047920"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
  by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 20 Apr 2021 11:14:53 -0700
IronPort-SDR: jlh704weS4ZN7QBzDMwFzalKDVMeUkpjbtBXzp4ACEGNyUnv1zbBMMTu3iaVQZuNYWqY2LbSmb
 oIn58FD/jd5g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,237,1613462400"; 
   d="gz'50?scan'50,208,50";a="463241470"
Received: from lkp-server01.sh.intel.com (HELO a48ff7ddd223) ([10.239.97.150])
  by orsmga001.jf.intel.com with ESMTP; 20 Apr 2021 11:14:51 -0700
Received: from kbuild by a48ff7ddd223 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1lYute-0002om-NE; Tue, 20 Apr 2021 18:14:50 +0000
Date: Wed, 21 Apr 2021 02:14:04 +0800
From: kernel test robot <lkp@intel.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com
Subject: ld.lld: error: main.c:(.text+0x56E): relocation R_RISCV_ALIGN
 requires unimplemented linker relaxation; recompile with -mno-relax
Message-ID: <202104210258.iORMDIWx-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="sm4nu43k4a2Rpi4c"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 192.55.52.136 as permitted
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


--sm4nu43k4a2Rpi4c
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

CC: linux-kernel@vger.kernel.org
TO: "Steven Rostedt (VMware)" <rostedt@goodmis.org>
CC: Ingo Molnar <mingo@kernel.org>
CC: "Peter Zijlstra (Intel)" <peterz@infradead.org>

Hi Steven,

FYI, the error/warning still remains.

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
head:   7af08140979a6e7e12b78c93b8625c8d25b084e2
commit: d25e37d89dd2f41d7acae0429039d2f0ae8b4a07 tracepoint: Optimize using static_call()
date:   8 months ago
config: riscv-randconfig-r003-20210420 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project ca8eef7e3da8f750d7c7aa004fe426d1d34787ea)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install riscv cross compiling tool for clang build
        # apt-get install binutils-riscv64-linux-gnu
        # https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=d25e37d89dd2f41d7acae0429039d2f0ae8b4a07
        git remote add linus https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
        git fetch --no-tags linus master
        git checkout d25e37d89dd2f41d7acae0429039d2f0ae8b4a07
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross W=1 ARCH=riscv 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

   ld.lld: error: arch/riscv/kernel/head.o:(.head.text+0x0): relocation R_RISCV_ALIGN requires unimplemented linker relaxation; recompile with -mno-relax
   ld.lld: error: arch/riscv/kernel/head.o:(.head.text+0xA): relocation R_RISCV_ALIGN requires unimplemented linker relaxation; recompile with -mno-relax
   ld.lld: error: arch/riscv/kernel/head.o:(.head.text+0x40): relocation R_RISCV_ALIGN requires unimplemented linker relaxation; recompile with -mno-relax
   ld.lld: error: arch/riscv/kernel/head.o:(.head.text+0x4A): relocation R_RISCV_ALIGN requires unimplemented linker relaxation; recompile with -mno-relax
   ld.lld: error: arch/riscv/kernel/head.o:(.head.text+0x8C): relocation R_RISCV_ALIGN requires unimplemented linker relaxation; recompile with -mno-relax
   ld.lld: error: arch/riscv/kernel/head.o:(.head.text+0xAC): relocation R_RISCV_ALIGN requires unimplemented linker relaxation; recompile with -mno-relax
   ld.lld: error: arch/riscv/kernel/head.o:(.init.text+0x0): relocation R_RISCV_ALIGN requires unimplemented linker relaxation; recompile with -mno-relax
   ld.lld: error: main.c:(.text+0x0): relocation R_RISCV_ALIGN requires unimplemented linker relaxation; recompile with -mno-relax
   ld.lld: error: main.c:(.text+0x54): relocation R_RISCV_ALIGN requires unimplemented linker relaxation; recompile with -mno-relax
   ld.lld: error: main.c:(.text+0xA8): relocation R_RISCV_ALIGN requires unimplemented linker relaxation; recompile with -mno-relax
   ld.lld: error: main.c:(.text+0x104): relocation R_RISCV_ALIGN requires unimplemented linker relaxation; recompile with -mno-relax
   ld.lld: error: main.c:(.text+0x1CC): relocation R_RISCV_ALIGN requires unimplemented linker relaxation; recompile with -mno-relax
   ld.lld: error: main.c:(.text+0x264): relocation R_RISCV_ALIGN requires unimplemented linker relaxation; recompile with -mno-relax
   ld.lld: error: main.c:(.text+0x306): relocation R_RISCV_ALIGN requires unimplemented linker relaxation; recompile with -mno-relax
>> ld.lld: error: main.c:(.text+0x56E): relocation R_RISCV_ALIGN requires unimplemented linker relaxation; recompile with -mno-relax
   ld.lld: error: main.c:(.text+0x5C0): relocation R_RISCV_ALIGN requires unimplemented linker relaxation; recompile with -mno-relax
   ld.lld: error: main.c:(.text+0x642): relocation R_RISCV_ALIGN requires unimplemented linker relaxation; recompile with -mno-relax
   ld.lld: error: main.c:(.text+0x6C0): relocation R_RISCV_ALIGN requires unimplemented linker relaxation; recompile with -mno-relax
   ld.lld: error: main.c:(.text+0x742): relocation R_RISCV_ALIGN requires unimplemented linker relaxation; recompile with -mno-relax
   ld.lld: error: main.c:(.text+0x79A): relocation R_RISCV_ALIGN requires unimplemented linker relaxation; recompile with -mno-relax
   ld.lld: error: too many errors emitted, stopping now (use -error-limit=0 to see all errors)

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202104210258.iORMDIWx-lkp%40intel.com.

--sm4nu43k4a2Rpi4c
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

H4sICNsHf2AAAy5jb25maWcAjDxZd9s2s+/9FTrpS7+Hpl4SJ7n3+AEiQQkRSdAAqMUvOKqt
pLq1rXyynLb//s6AG0AOnfactuHMYJsZzIZRfv7p5wl7OR0et6f93fbh4Z/J193T7rg97e4n
X/YPu/+dxHKSSzPhsTBvgTjdP738/dtx/3z3ffL+7ae3Z78e7y4ni93xafcwiQ5PX/ZfX2D4
/vD0088/RTJPxMxGkV1ypYXMreFrc/3m7mH79HXyfXd8BrrJ+eXbs7dnk1++7k//89tv8N/H
/fF4OP728PD90X47Hv5vd3ea3G0/7nZfPuwu77cfv3x4f3b/4e7Ddnt29u7L7t3F1f35/eW7
Dx8/7Lb/edOsOuuWvT5rgGk8hAGd0DZKWT67/scjBGCaxh3IUbTDzy/P4B9vjjnTlunMzqSR
3qAQYWVpitKQeJGnIucdSqgbu5Jq0UHMXHEGG8sTCf+xhmlEAqN/nsyc2B4mz7vTy7eO9VMl
Fzy3wHmdFd7UuTCW50vLFBxVZMJcX17ALM2mZFaIlIO0tJnsnydPhxNO3PJGRixt+PDmDQW2
rPS5MC0FMFSz1Hj0MU9YmRq3GQI8l9rkLOPXb355OjztQLDt/vSKFf6+OsRGL0UREXsupBZr
m92UvEQWtyNWzERz68DkjJGSWtuMZ1JtLDOGRXOSrtQ8FVMSxUq4O8SW5mzJQQCwvKOAvQP/
0kagIP3J88vvz/88n3aPnUBnPOdKRE459FyuOh77mGguilCRYpkxkYcwLTKKyM4FV7ivTYed
szwGhagJgLZD6YIpzWtYe2h/NzGflrNEh8zZPd1PDl96x6TOkoEyiHoDqlvWMS4CnVtoWaqI
V2o04IYRGbfLjrc9tJuAL3ludMN4s38Ew0Tx3ohoAVeJA9+9lXJp57d4ZTKZ+xwAYAFryFhQ
+liNEnCm3kwez8VsbhXX7gxKu7lrrg322Kq54jwrDEyVB2rewJcyLXPD1IbU1JqKuj71+EjC
8IZTUVH+ZrbPf05OsJ3JFrb2fNqenifbu7vDy9Np//S1xzsYYFnk5hDO2LYrL4UyPTTKiNqJ
Fh2L4KO1F7HQbJry2OfTv9ihO4mKyommBJ5vLOC6BeHD8jXI1VMAHVC4MT0Q2GnthtZqR6AG
oDLmFNwoFr2OsM5HZFOfD+H52iu/qP7gGYHFHAajsj32b4qO5jyu7ksjf333x+7+5WF3nHzZ
bU8vx92zA9drEtie0xO5Ob/46PnCmZJloT3xshmvVM6/+WCMo1nv0y7gf56/SRf1bP3Z7UoJ
w6csWgww7oS+UiZMKOvhCG0ErR0ZXE9aiFgT42qsijNGDErgtt1yNT5uXs64SaeDI8R8KSI+
AMM1gHtlBvBpkRCrO3NNrK1ltGhpmGHedHMeLQoJ8kR7ZaQKbE+lORgQuLFjjjvRsDLYmYgZ
mtU8ZZtQxHBcZ/aVF6W5b5bBbJVf8CILFdvZrXOM7boAmgLogtwUINPbjI3h1rfjo+Q46h11
ttjeauOdYiolGtvwdsK1kQU4A3HLbSIVuhf4X8byKOB3n0zDHyhxgk80KViziAM1xuZoQbwt
OOWoP1qb167i3DJEPZSWatDODKyS7fxuT9I1ghibVJ4+cF4udqu84IjfAtVbkKieKndwBjFL
UtJbKCFN6c7uPuEi+9HQktfgKCvW0TzwZbyQ5LRazHKWJoGVcIdKKHV3QUniqYSeByaOCS++
FtKWSvj5C4uXAk5Y81kHkuPZlCklSNEtkHqTeUa4gdgggGqhjpF4N41YhtpjB1EXqotz1v65
YDc8jnncYy8qt20js07U0flZcIOcy6nzz2J3/HI4Pm6f7nYT/n33BJ6egTOK0NdDvFQFLfU8
3fRkXPovZ/QimKyarvFXpNWHvIoZSMo856NTNg3uR1rSaYRO5RiCTUGoCnxlHQuNk6FnSYUG
Ow23TGaUlgZkc6ZiCAACNSyTBFIB55tBupD0gcH38BtteOYcBObKIhFAIMLQuFAyEZDsUl7G
WSHnS4KIN8xvG+Krd1M/6FdCR8teipBlDPxsDnYeUiybQQ50/vE1Ara+vngXTGj11Lv7WeaF
XrcQZlvw4ZcXHWzJ3EzXl5+6MKaCvL8KAhuZJJqb67O/v7h/dmfNP8H2ErhZcGMhW8fotne4
KvcaR/OUR6bJXjMZ87RHsWKgsS7EY+kwqqgmKYtCKqOruMBt3Yk9EHlHVU+SeBZEQ9a8qOLT
mswLXh0Y8jw450wP8W2ixiC9VhAawDaCOKAl0GU2hM5XHLIob74EPAlnKt3Atw0MajEzyEKb
wjUGg3nplTUWEJh4W6uC30MEyviwu6trXd09kxAsg9ov6YICojHbIa1OOKmbtXjYntAETU7/
fNv56zjhqOXlhSBuUY28eieCyMCpABw7TuWKsk8tnuUeiwFaAmM06BJc5NCXsHUx32jUwIvZ
lJjSI4BYfxaauqygDEAJd2qQKFU3EVI8GwUhelGSjAy55vuIIFVpHM6tPT87o0o0t/bi/Vkv
q78MSXuz0NNcwzTtdXDx8FxhSuxdEh6hewiC08b62OXZ+Wteqkuw8FDTA5AdvqEKPXtF2Cx2
5cU3b7rhAWWlbYe/IGEDf7f9unsEd+fN01nvjGb52NCgPrk93v2xP4GCw35/vd99g8HhMvUi
n8ussOCKeBg8GvAlkV1wtDg8TUYKlF1lzZmXuZQeox0SbDaG10bMSlnqod0A1XTFmbrk2jOJ
mLyC6a4N6wgyFsoZX1b01sZaL1ypulKqr4m4R/EZCccAqjKnNi6zwcS4fMC4V7BEzNaR1coI
1jINUu8xuBvp9gWu3cCxXUTgi83DjAkM5cHXxslsEQSzDj1SIqIcGvogUNMYghWm+gcE1jfO
k0cYnvQNnUY2W9AuxyJCug7l4ifIrCj2BSHFa/FIPxZxu28KWkYWsVzl1QjweTJ4N0gx9MA6
xgpCNG+ROsa8vID5XXrRW1+6ZA+8/YKrHNVgtf4xRbMnStUN3BcTzuYJvoekXxMWfujcFmJn
kVz++vv2eXc/+bOyc9+Ohy/7h6qu2FWagaxeYcwR4j4dWRV4ctvkpE1w+cpKgXTxTalIy5nI
yeD0B8bNKxplmDxyT2wujdIZbuy873fRz2GebwaaOvDRQAfhVCp9k1WjyrwGd87bH1OhKQ9O
maqhDevPqlXUvgWR6XB3umGkUZ04LGt4uN6EThvig/sGp/91d5qcDpPn/denyXH335f9EeT6
eMBa5PPkr/3pj8nz3XH/7fT8G5L8is+cvj5564D5OCddfUhzcfHu31C9v/oXVJcfqfpQSPP+
/IJkGaj5/PrN8x9bIHgzWAANg+KayktrCgzrV5AiaY22Fd/eIL/A6Dxzob0vjDIHGwn2dZNN
ZUoXZeDqZw3dAksFowtj8Zqj1sqFX7Cd1rXm9nNh1U2VcvYMG6J0pAUY7JsSQoJhlXCqZyQQ
kgr/WF1R0fCZEmZD7LmhwdwvpgZDyCCNGUlvXWW6CsWsS95UuK/VtLf7uuAqJHhrnkebEWwk
+8eGmWx20z81pnB+buZD2yP5bAXpyYKlIbR6qoakM1Kbop/dkwQ2AcGhuxpc3GJ7PO3RQE4M
xOpeCAjsMcKNZfESi5wBt1kkVd7RUKYfUr0W3+1f6oQCs0zMWIDoljJMCXopLxGKXt1MpmOp
6emnOsbHq4ULy6ihIoeT6HJKjtagGJAo2PXHq1c3UMIkECrwbil/ljTOfnBAPRthQTN/Chd+
TZ9QlyOSaikWDPzbD2h48voO8PH/6iO9A+/KUSs0KUxPFX2Vz25cBOpXXWtw/YhTvdrL7t3L
U2WgErLK+2JIJ+o+j055OvRiMw3rsi1RQzFNbuiX9GDpzlHn514BNq8vpi5E7ly+b2HDcg8z
EN9GVmWr62HUl2VCrqbNqfnfu7uX0/b3h51rGpq4kunJO/9U5ElmMHD26r5pEvVeimoyHSlB
vkK3y9eEWBvzxBEA+5Mi2Mo0Jnlb09wi0WsELp+IbZ8sJAIHGl0/+t00MKbMClJqY6xzfM12
j4fjP5OMSsfbjIwq8XX1kbp6mLG8ZOSjRFtBrEi8XK/BECALeZrivgvuUEv4D2YsbUWyMwN9
GsrYVQcRaNZCA62LFDKawrh8AfJAff2uN2iKsUHv3mM2FI0YDFeFVRzVPUg3wROo3uJVrcD2
Cp9Y2QLnFCtr+qXohfb41mR0ji9gzt2Y63dnn9qCcM5BrSDFdwnuwhsapRxcH4Ob78EyFnxU
Djw0d4zquvGwoMdMX39oQLeFlGn36H87LQNne3uZjF2dW5e0yIi2WXHzUtAk9dRzm2LYo9NU
DRrecoW8wIpPEHnO8N0a4op5xtTiNRtRGF6l+CzI9cbvVCcLv7ljMUVl53mT57iLme9Ofx2O
f0J+OLyRoG8LmOEx/Aa3y2YdEL1x+AVWLwsM9bo3xKRe2AYfg8d+hBnpAdaJysIvfHMIk0MH
ZelM9kBYafKNmANiWKwSSAlIYTsSCFNsIVMR0R1Gjqa6X9SbdLWbeXdoB4A0xNcAkA9WAClj
lgWGFz4dD+mdxIXraOCGuiKiUoJOkYvqwTtimnYQQNBEqRZCckM+rgJRkRe9eQFi43lEGcMa
i80AfjtfBVVMDdgiCkHNU6FmGPzxrPTqPRUCS+65Xy9s6QNubnIwg3IhOMWwasjSiHCWMqZn
T2Q5AHQ78RQdBRFohANUGtGDeMrd8bfGgeZGdOeJqHaOjmJEDwYHcMDwclZ0UUGBkQcEWLEV
BUYQiEkbJTf+SXBy+OOsVTPq6aShicqpX9dsK4o1/vrN3cvv+7s34exZ/F4LykCDXK9CpV1e
1UqOjYHJyIUAoqoPRWPNPma0/8BDX4GEX0GC/F7BDmUX7iETxdWIZK860YZjQI9H+GC1MANy
gNkrRUnEoXNIuSKbQ2xmNoXf4I3IkR3A5RubLrg7DWRsHme1CnzIwGiMrtRUhE6g43jNZ1c2
XVXL/IAMfPNIPOA0p0jJiZroqwBl7F02B+vdlgpW62YAW5TY3o5vQzowMthMj08YGDmE1qcw
Bbb3ay2SzXAIhHmu4ASxSFb0GleBpnoMofKBon0n8Q1+HI0Zex2ZwKTjd3t5K9vreItXlU7S
xwb0K5k/oq/7h32y3vqvYHGxngCrhQL5Ba8W8GEDsSOgCWsbGwU33QuH4AtfqgVDAxtYSsS4
upOkbCRiw51AihR8gCqIwnd9DQw7tEVEOgokSVnOw4myQrIQMlUXVx/f9SevoKACQ13qSjQX
hlpY+6FBpopuuakS8SzMrx3EilkGupZLWfQC8j7hEk5Uv/X9gBIWJvbmxn88uzi/8Q/cQe1s
+YNxNluGUU7MI9An6hkpDRoD4POCFBNLF75jXFpWgHkMwaKIY4+R7hNrmSzYyvqCvoQpK6hO
iGIuc5cXtIRXqVwVjC52Cc45cuA9/bRQ3aleT3LHpIjaQJxrbM+V+Bsd/+HJQOaPUQUFs9M0
aFD2MPFYqaQjyWkv4FFkowG1vxL1+5ERsh8RufZTylZ3JJiqBvUAWfB8qVfCRHMSaHuR8nI8
rwC5pSJfVAbIc1tp6KkcxM60DKG59jYw16pTUacPbjOg0v2sIL20GbAZojVAEpu6UcabCr8w
mvBP5GDZnAqK3L4iHfQZ4beVPMOyq53hcUbigfr5wrlgJeimaY+mctFUnOUC6rWdlnqD6af/
XHETBEXYl/qZ/DmW61g1irOse5jxk/3Jafd86r09u4BdSYidJYQcsme464rDYHwP4VcRWuGy
TLHYFZvrR5K7P3enidre7w/4OH063B0evKIDA2MUPFnAN9zQjGE/55IKJWHrSnrlASU1b1Zj
67dg257qfd/vvu/vdpP74/57r4k2WwjyPfEKax6eIypuuJlzT8embANBu8VuliRek/B5vA4N
j8OAZIj1Nixz2lrz9dXtt0UwFmg4fGJGRmsg4KYR1SyLmNmq2z9+fz7/dPkJQBWjwLzH1Qbi
If+QfBkxqjbpUOtqkx5IpwMQXvjeQSKWRthfgskXWXJDoiTlw/lnagCKLA2yRcoM9iX0cNGH
D2cECHv3KDA9i0gE/j+JQ3BGiS0LdjNyWv2ZYXNej5sVsN5aMGmD+tG0MnG1455E8D21Ks8F
fSKENrSaH0QGU2wS5zGZVIA9D4M6BMQj3hFMr06wq4qeqfasnrU0bV8dCbQ8iuc0RofNi4BK
ODOlKzr1HHPVpvjwsjsdDqc/hgammwIrjmmPM/NITI2OBRXdV+iSKa8A28HQsFT+cYiav+vt
vkFMo5Hyg0fDzPySKkZ7JIFP6sCXK+F3qHmY6uhje8p+tKWbiL2+ITa7Wq9H5s/Uks7xK5ol
/Duqb72hHsYsUGqBYABWC6trSh3Ti9bXJeDqVRGE+w3M1QOouL/F55/xvSyV2u9marCDhxS1
XpBNUTBi4dfr+4FDDUbhptxfqoHgo4IHxb7H+jXUB0FQ5GlrlMwwJTj370OeOpCrduDrH2Wn
6mFokXgq8ZVpxVQOZit4WGnJIq5M+7MNK/OSfENqqLHlBs7kft2EtW8+i6fDLbuWyqYNEElc
Dy9B1xQjChrZM1fdnlXMhj8eaNGritt+t4ZDUOWnGoUvT66jClvY3W/ors+6CVYCoMRolSxE
6j2kVd/OQHuhVgUUefA3QdTQWeFfEQwwPwW1iApS9yKMRMKfCuJJkImEkiMv5rbqgupBsLRr
zGY4UYNHkfo5JbWZxKvYwAfkPTMBuXYIzCMRnLACWTQMdPILBD0LVAfq2+Mk2e8e8Adaj48v
T/s79zeRTH6BEf+pzUkQgOFMWlDOHTFJXPT3BSArLsgf9AO2yN9fXoZncyAcMgRf2NBPuc2Y
mhsD2HCOfF2QrKvAr2xTXyYrlb/vrVIB62W8HOVf8bTbQqEZJK8jGQfEdZ6Ja4rAQ0j449MY
ONB7AoecEBQx9dNm9/PkJUtFjL8SWmf+a7xLjxGf6UCXEyZSuRwpuEHOYqRMm5ydOJHrCeZ1
StkkT4Nw3ycuoiBRLkb8aBFFLHxP6H5Esb+r557I/tNzWbVRz3la+F4oAIOPMvPqVyANe/nS
ZAVZFQEbmMcsDYrBYBbcdIlQmWsoc3+5S3P6ZH98/Gt73E0eDtv73bHbW7Jybcl+FtiCXItA
DBMFvzg2irWLeL/i7ka5X0O0h+2EShGQ/YfEEKpLtr0M/cO1vrpq21+2rT5eaOF6amlcD+oJ
xOUP4PtHNLNNMBT5FluhXVBeTQImOpP+Lz2KzN5I7T2UBPVzHMj0Jo+a4YWSU+pGV+MbIm7D
tAH8fPDjl+o7tGM1TKcim5Z6CC8yMZhgdT6gw3a04UL+31LTwC69xfFHQHVHF6heEmoRIhOe
R1XrCif1YeQ+VunNy7PncZrgYi5sdc4u3PXoPCcrwQz2fyzT9cDkfQVt5jdUsBob7y1YJv6f
sdHEhGIDIHaNYUt2AHS/mqRRCzn9HADiTc4yEazqep6CUBhggYgk/uAGbuwS5BG0nVUIjDEC
GBru4KegEH2H8V8NsGz98eOHT1e+p2xQ5xdkw32DziWEokGmUXd5D4OPZcYn+uXbt8Px1Akc
ob3A3oGqZ1m0xCE8YVMlIt2H+p4fAf/P2bU1t60j6b+ip60zVZM9JHh/mAeKpCTGpEgTlETn
ReVJfPakxnFSts9M9t8vGuAFlwaV2oc4dn9NXBtAA+hu9Gm3Vw1UJDIrPKX9oTtha7DEVjVN
a0tih5/XyiyGQcWkMcgNIcwYv759NscCLY606ShTJalXnR0iHfWkeUCC4Zq3jXIqIpF17WYZ
tqe6fgC5wm5YM5p4hPqONIGwEc72gnBKAZLHD2yWYrQ5TdhmIK0kYkkrkjiOp1OIdLY0Va1n
SBAgwPbgilOy5eZ2RHieiYPtLQ51FnoBkeYv6oYxUVLpUkyZHcDZnm1i8l0hWy+e2/RYSqKV
EdnBuSjYtF9v3nSRFvRr2hNfakZBrIp9mj0YZLZXCuMoMOiJlw3KqBzpZd5f4+TQFnTANTPB
VhSu4/ioEGqFF4G9nn4+vm3Kl7f317++8VAOb38+gm/Q++vjyxvwbZ6/vjxtvjBx/foDfpUj
QTFdSJ62/x+JYYI/robi1P35/en1cbNr9+nmj0nT+PL9Py+gbYwOTJvfRo8mljfJ/iZdAMAl
bQoKW1tNCZYv70/PGzYPb/5r8/r0zIM6Lt25XFc1LSxKaDuuJTF3ZnZo5KZRhrvwlc9oOZ3m
GPLEHXfqRrJJ7NIyh1h7chgqmslxv/g3uWwGyymjpj5JMM92zI87gm9+Y93xr79v3h9/PP19
k+UfmIxIbTg58FD51PnQCZoy285U/L5xhi3BAnlh55nHzsJ+Bw0cvUnkDFWz3ytXlZxK4RCa
K3BKS/STZL5pjU/bcmxuNR22K8TIJf+JIRQiWZr9xulVuWX/KZPV8gl2VDnDEAhSDV8poK6d
M1sCKGgV1VrrwoM7SBf9nA6GJ99UEo+/xO+KtVxPO3rIcpS4XGUY6DWDg5IVPL9krBgyh9pM
wLOlaFSuOQtu8aLYQJRbyzouxo8tzheAo6+L3l35AZ0msAE+z0xypDAKYWEOiq/aGChm24DT
ddepnuMAck9QrJwAtlwuxHT2/eX99fszuL8IN8+X7y8f6G63eXl8Z/r55iuE7Pnj8bPi7ckT
SQ9ZuXbTw/GsOCumEJx433TlPdrEkC5kjpwwol6DtcUzhR984ND4ZY4VeVTSuOopdWKfsdWV
O1aiSQIMDtKWq3iAW97XSIaZMBqX9BNQMGHLPamr2hibqfLZ5nhrZtM+DbW7fPnx17t1bdGO
WPmf2mGsoO12sOUYj+oXIxyOgT0BbjghcOHWcqfsdQVSp+ATNyK8uKe3p9dniEM5C6NyHjl+
1oDTrJqjxvKxeVhnKM5rRS7OcKj7TW5C27GV+OCueNg2qRxnb6IwrTxDqW0QxPHS5xqSYEh/
t80R+n3vOoGiLStQhIVckTiIGzpIqvloiNOFcYDA1R0UxqzYeD5vFgUALiuoafbM1mdp6Lsh
kiNDYt/FmkzIEVKYqo494qHFAcjzUAmR0h0iL0jWiltnFCtQ27nERYBjcembIwKAuRRMRhQt
LE1rekItFZbmbap8V9LDEhPOSKRvLuklVazmF/B0ZP25lkF5T0MyoMVr2AjGTgmWrqvJtW9O
2YFRkMoPvZAlM+UsbV13wHc5MxNueyLNFcrVFhDYLI1ZPwqMTdJlqlyqC3r2kLZ4sEuBF2CV
id8qCIYzHYYhlaw8BFm90RrL8HBM255tyOf7Bn16A6cBfJESLNyeHTNrGGHoDZp1hRwhRiLC
mSaEtCwLZcaXOdI8iiNscKhMGZ5+2rkOcdXTTgXvawi1NSgLIMpw7b0IX45l7hObfMohK/ET
Q5l1eyKu43o3Ksa5SIIXHuKLQ/yZMjvGHp+y0Jyyhzjr69T18YBZJuvedbHJXGXse9pedddh
hAUXVZPR1w7oMA5rN8JJJxMlHDykdUsPpS3xouhL/MNin1bpYGtWgY7j+EYViyHzhN0TmtTu
9LHs6elm9+ybJi+xQymlumVeFK0tq7IqmUTdSoOG9CEKXbxZ9qfjJ2uvF3f9jrgkutUglWzN
piKWbrykYHp4iR3HxTtSMFhlhC2zrhs7lkqxFTZQLNMUsKau61uwotqBK37Z+rY2r/kfN1qk
rIfwVF17ail+eSyG0tI09V3Eg9GgubMlv4aITjelq8iZBt4Hg4OZ7siM/PdujOiIJsV/v5S4
Ub3CWF7T2vOCASp+I1sxsVqEI+/jaBhWej9zvSj2cJD/XjIV1bN1ISsdH+moL4vKRxxnmHZ8
Vg6LMAkwWikFwNfyZjm6mjHjeVC2s0xzG0btTUh7l3jEVjba1zv0iExhGuIwsNW9pWHgRAOO
fir6kBBL/30SYarwRbKBkKXl9bwLLKO7aw71uNBa0mdKaTBIBRuVPogwoe0147itY9b/zVHR
QQXIVBnXH/RPBBXXwIT2wdRTYwbRGLdsfQ/w9X3ca3qDwyrZ95awLtNWeYgi1gui/HZ1l7Ml
HltaQX00GkaMtWt76USOBkPN9ljqXlIAfPe2ZcsX7ri98ORF1ihWDBJ2hhC15gHC3dB/xPRI
gXbF/lRBDOWpTsb3XD6JGy/VsiZ2mk489DOMbBcHEbaHGfFLPdZerxggU73Uct/FTgBFQuSN
t0bXwEMjcM6NNVieJk7o2cR1qDzfEPuRjAssGykkTLCDZIFndcoVIaNpRsB6ozgWtzuTkA0v
0UcWP9qFMwx+mTP6Bc6Ox9dsVwWgq0tfm/05SbW3AAqttxpl53jS9ctIEcuOxkny8f5K53dd
g0J0iucYFMXqWtAsLm8jqPjc8fOrw+PrF35XVv7ebPT7DV4F+TQdCPATrjqxQ2WOt2mnHEUJ
KpvO2b5ap3bpxcxgvI7Dt+FjHpTUIqSm/m2XrX6YtlgxxPETVVbJk01x2Kc1D3uzJDJRrkca
BDFCr3z5ngVr8+XOEDmSFaecfz6+Pn5+f3o1rQH6XjLkOMs2vA2Ttopb4RypiAmk7NjP/cSC
XZlfJlBOXCJDzKZcc+mG2CsJm2z7B3xIiktuA59Q7uwPr52MsSjEBdzT69fHZ9PFQezh5ojk
0kWJAGIt/LREll5LGUO2oteE0gduGAROej2njKQ9qyCz7cDzADN3lJmMZpXBmqu9W1VEJ/DY
cbtXKXyTjHYQ2bcu1lh4OB7lwQgl7/QILoCdfEQo4yltIdbSmdveWlqAG4XpRiSWPoCYxr/E
2lH8cE1JDndAU5LpSRxju+iRqdnJLlXCNOn7ywf4lnFzKeT34YghwJgCtExVovF5Rg71vEQi
SmKhp2qGxNfwLDsOyuHBDLhhSaNhpc7jbPuxT/ezNwnKoZuUq0yjmUxLrxbhUBlW5p0p1y5D
UoH5/Vc+hZEiBNk10tjR6lq169VhfxUDt0wt9yXbjDSdMSBhoH5yvcAAaNvlyr26On/pyWR9
N3oumNU9CiOGXDNoXowZp4P9Hg23erzuqXIffjxVlc677AvFK2i2AEzjIxTCRmRaI86Tnash
0jxIrGyWyrIdHxvCaOLpiH8sr3x0pfpyWdWa82bbCgfOaXXi9+4zmxSDoEYeQeRUGO7ag1yC
DtZd4rpE0XoXDMJzW+I6cC5xGYuH/ZL5qOKEIEgUdTfhGH9zM2/2enmbS9E1u52W1vZXisFW
dBGRXa7pTBTPLJVNXWAXKQvbNvU96ZRuAfTInwuSMdFX1QdWWjwfBqiv1PEIUELyluuRdBD0
4kz/QZYXY/qM/Wtt1WtREwD4BF62VU+3BdUgwD5B7Pol0ZagklGORaN438r48XRubFt84ONJ
W0p5ZhWAC5nhwcyb9p73qZVtDXVE3eGwObp62MpvOkwUYfq8OOMayujSL6JVuxPtuSXQ6Lgw
xXhlG0XT0kAuA7QHv7qDl3olKSfZGJ5fGY9A5e8soff1DIWQbeNSXv/1/P71x/PTT1ZsKEf2
59cf2FLOO7Pbil0BS72qiuMeHb8ifeNae6Gzn/gMMXJUfeZ76MntxNFmaRL4rto+C/ATy7ct
j7CorObcFWi0MpKJMHdTGljydTVkrR7RcrJfXGtjOZfRs0R96hgAqjoz8M6o9g0ECP22yNC8
hwIXgKUPFxnjr3Vu/gkOAmLd3fz27fvb+/P/bp6+/fPpy5enL5vfR64PTMX7zMr5N10IMhB8
6FxrS+YFuG5yT54VEyjgLOriTNRqYWLDZW562vmj7ckP4LwratYJaoqNYSUAVCYpt0rX3XmD
mhQta6adqzShwk3dUPxk4/+FKTYM+p31Gmvqxy+PP/ikYIZr4AVJjZMDBe/ThrI11zRUat7/
FPI05iN1qzKLMNWulDUvq6QoNe1PW63uEPZDk8qKu6txy2i9fYXLEDT9ipwAC8jxDRarLbE0
b87lkv1xuJEko4zRahYgv6jkRcVsMVM01WvoQNU/lJlZHCDRcvN5MR6cxiAnP38F427Jiw/M
ctlsLStw6gOFLbUEPGDIlJ65fsBnWVWCY90d11aW2ksQP1xAEdP3ZcHGQToX4n/4cyXv31+N
aaftW1bE75//pQPFCw9R3R4e4JVzMGCzBcfjT288PW2YuLOx9IWHU2cDjKf69t/yA8FmZnPZ
x4l7cfccn2UagavxUHB5VOKaSvww2+9Ox/npMikL9huehQAkjY4/fGeuSGpxxZG2NEFO9Dpr
iUedWFUSdFSW6wmDhzgqfEjOLH29wxfoiYMf1K8Uu8mKSn7QHMRF8QgfCWxOpz34LF2rErxr
A5dMHM1u2v1pn5TdvfoWvWhLfavIlwxbaC4OGg/CcSo3YHMW7UjEdv72+OMHWxv5qmdMsfy7
yB8G4TT4TaGLYwK5J4QCxdS/I7rvEFdCl7TdaintevjPcR2txLOYGbbgAu7MdrweqkuukaqG
benPmZZpvY1DKt9jCmpx/OSSSKPStE6DnDApaLYnLXVxVmMQGz1leOBVjbfOyZcsTzwfO6/h
8LwEKy1f59cdj6+mR+rGenPWkTj16ecPNiOZvWzYoI7UY6uR9peroodIsuUYwsDpxFo7rtN6
g/HZSLceFS5MqD3rCMMtnt50fVtmJHYdXWvQ2kaMkF1+o8268lNzTI0+3easYG59wfYonEHX
5YSYtl7ie0ZbVG0cBSEePXFuY7gNtmUmbuzj0GgJcVGKkROXGOW41HGS4A5kSEOp7bTfs+0H
f/pWE5smg1eMZuLFndQM98N/vo46XP349q60/cWdQ/RR4sdE/n5B3Is0XyyAamC50Om+lMcT
kr9cLvr8+O8ntUhCY4TQbbWSvqDDo55yk84AVMHBe1fliZH+VThcD8mXfxpaAOIpLTQDbAm0
fOE51kp4WIAYlcOSHQOumXr6q8LxzeYJUFs5mSOKHTz3KHZtOceFg1kBqCxuJM8lqnxI+gWc
113Ts+VNdo6CQzd2RC1QCNhTKfbaMt3qoNTmqWA0tbc0zyCUJ5N+NXg6hDTgnyDJgTq/h5qw
5cKRTQ/HhK5p1seJH6Qmkl2I4wYmHfogVORKRmJsXlMYpLt0hU6wJKti37AtJ2bQO7HQrXQc
MdVXIdbpMTWI0+fbexINw2AFVMVWBw/5PVbsCc7766mFmC1Ud/AxPgFDysixWBNrTNj9ucJC
3MFsE4bEiezcPQGwZMk61ERX594lGd6aSDK9FwZS70r5un4QIRmIG8ZmZAkDxV9a+ty2Xqos
CVK1uiWhbOg90VkH+W4wYPlxKMH7QeYhAWaOK3NE8uWTBAQiZwRg/YPIcr31/AgTs30Kj8FW
fUYSH5vOZ77xGsoceV0fOB7Sbl3PJgWk9KeMuo5DkNLnSZLIRoiHSy2bqPE/r+cy10nj6YzY
SIkrXeHSiBxSzYEE8sh3cUsahQVbgxeGGpwY5NtBGQjUi1YZwo6DVY7Ekqrn2lJ1I0yYJI6E
6QVYqn00uBbAtwNotRkQEgsQ2ZKK8IaiHqrpL3gWhQRvjaFkm/Ejf5Wqa9BnveZEwNoBKVc/
tGjSGfuRlvAOVYcZDk1s/NqqZyq/mXROQywWBgSrwGuzi1ymnWG3hTJHTHZ7M9VdFHhRQE1g
sgQF/xwD3FeBG9MaBYiDAmw5T1Eywao0HoGjrxSOLIfyELoe0lDltk4LpAiM3hYDQocTgnEi
MQpS9jHuOzQxfMzQlXKCmc7UuYSgoUrgIcF0bwlfMPHwedfyWIXCE1kNMBU+y6Ij8bA1C33q
QuIgbmC2IwcI2p0cul0Ln4RrA1pwINMKrOyhEyJl4oibYGXiULg2ewNHEqGJem6EiR7EaQmx
+Z4DHjJlc8BHG41DqEqicNhLmKBSV2etx9ak1b7oszDAdjlzGsVxR9xtnekr8NxVdeihglBH
mJotwZhg1RFSR0aNMWqMj7U6Xs84RjOO0YwTpOsZFRf9OlnPOAmI56PpBcRHREkASGnbLI68
EK09QD7q2TVxHPtMnFOUVBzJGGkcs54Nl7W6AEeEr9UMYru2tYny2GZ1NCDTMz+zS6SGaNXL
4ZkPJ4PiQ/BCbYvq2u5wG7J5ybhmu12LpFseaXvqrmVLW4olXnZeQMjaRMo4YidEur7sWhoo
QbZmhFZhzNZlTCoI23uHCACTfhSjoimgxYHi1vzsxS52D6JNw75lMmOzrbM+7TAm4rCJ9ReY
VpcoMf3FaKcD5vv+jWk1DmNkcmmHgq0m6AjrW+qzPfOahDOWwAsjZBE4ZXmieDDKAMGAIW8L
F19rP1WsiGvVA4eUXYpqO/TQr/Yww3EVlAHez/UPM0Se87pgCykizgVTP335GEECiGsBQjhM
MhFa08yP6hUkQXYkAtt6SYTWt++pJoMmT12H4VprMtXaJXEeu4iopTmNYoIO25TVNF6fWY4p
cRA5A/owoLPVMfXITaUA9X+a4UOdBfjYqFtXnftxlrW1hTOgzcEQ31lrDWDApZYhAerHPzGc
e1cLFz8hl9iLIg83/ZR5YheLmSFzJC6yveQAyW05r6oUnAHRDwQdhr5qGyDhFZs0e3Q5E2Bo
MXaVuEISHda2ooKlOOyWAnK9Q345eyRI4eg0AB415q9iUhMr6qLbF0dwMBntYa95UaUP15rK
Aegn9gZ/fXOCL13JA2Vc+44t9Zj55cg4xd3fNxDrrmivl1KNK4Ix7uCkgDtLrBZC/oSHZKYt
bsU7faCmbbaRXkgE3qbHPf+B1eFmQfLivOuKe6lrjTSK+iS8kVarDjYGWPrcUmROXjapLSFQ
+YRg95/STQfy/WRbjYkwhaeZKS23it8Olf10GAu80cFD7qG8M6xY+jP6GAVaNzUcObbw5riU
4HJMywDDUopbYP7x18tnHmne9jxMvcs122agmJc1nMrdmfmTR/KjVwt0qDI5kgsArGhB4sg6
PadOF+Fyq/N0hpY4g/UUA1hqMCPGXFQB1K2HZpqn58SoNpdrgPdpX4BpFjwghwbrgZJkrjfo
VRuJ6m0OB6YbAiWfQ8l2/i7buJR4jQ8Q0DClZYbN9pDAHHFJoulmBEATru0ORgy0ghrXKCOV
345gVNmGYKHK1yQjNU4cPdk+1ParEzXBtqocnA4e9K+6oseDsADItpBsc+TZmlG/n+C0u9iJ
NdIx6ENXI9LSj0I9aAQH6sBx9VJyom2Ic4a7h5h1gCTF6XYIHAcZp7PtkERTYnIoJ7eAzsYk
6hdVfZLW4pay7YN8dSRMReRjfjPcA09pMSlR6jzalOCnqFMR2jjysNt6CQ/CAMmQ6B0i2aog
VHNoXiqXRB7SgVXticdI1MLe12xzaCnpYvtjEs2cM+pHFVH8t3mB6sCmLU+wa5+7uEWObfRw
MFaLJ0x4NNkFk0itmYRJ2kKcPOrnAJmy8b9t6Zk/nk4cJF+eOYqD9mrxAuzKARxPm6pP97KT
/swAXkYn4bhHT7X6HMHCBYoL11tmPqS5FnY2T+7jcMDyM+bVBYJVNA6VEwgVhCUW7UWJLQ+8
BDugXljMJVbCpIXWbGRtsdQQDy84wwgaYExjcbGE2cYj8ILA0iYcjVHLjoVJNRZY6CWtEk9e
yxSI7TfcFM+VDfIQnXgkFjZrRq7lc8DwsSozxRFq7qiyBGjxjZlPgvrMU+KAqlAYhRhkrvAq
FsS2zzQVQMHi0EcLwiF1jVdBphSstgznCYg1Aa6B3EphUkhsScSW+VZnQ2/lJaZR/dNiiCi4
EshKheIEHY911rqs4XGsDZRQqDISx0FiqTPDwnWBrNv7KCG2fmMamoufFS1MYInro7dXEs/u
9AmeIMAq0J7ZZGCTHA7emCs4T4KnfanxdO/547lMIV9NmXOd2JbtrLhJLgyT8ojkMCqRNxpP
aKQ3mP6PsytpbtxY0n+Fp7Ed8TwGAQIkD+9QBECymtgaACmqLwhZYssMS2KHpH7jnl8/mVVY
aklQHXOwW8wva0UtWVW5dLLi1bpWycbX47YqGKR3gpGVEcCFO6MNIwyuOX2EH7jw5nsaeNdr
akueOuZ6AdkKKXe65LSyJVUTo1c7gU09cs4pYifdVCFoXm3qobWqtABTGDPGXMJWfKW6HgqN
c0GJNl6KSknCS+VMjnHWkILBImJXS9U65VLdepdNFveAZm8L4zP0O4RoqGAIlKQD/dMhJOlV
nt3SAMtucxrZsrIYqV8Kwt1uFVF1VNmOaXG9GVwqj9mFl2Ga2p7MREce+qDFA/uWH/1tRA6K
sPfyrhUgzWZ4aRPro5E5vufU1HKOndS5KjZJ0h1QirGrjG5Vywzj0NjNkJLlGN5UTZfGEWcC
U8fbQB0Ciw5ajpj1du6RT2YyZZfqmSSjn/3arkS1X0XlQdgUV3ESh304nvT0cL7rDiQYzESP
xC7rylIRBEaWQB+yBCPLWJLDSfjwE7xtyM6fYxZB63+Cr4pKikvj6UykqO6XHDLuNFVYb0Jk
dVpXxoFHcd5ovjfaTpRKdclg8H84P5wus+T88v2fycWMuSjzOcwSZbUdaOLY/IOg43eO4TsX
3IRZdDDPkBKQ58eUZ7jDsmwTK8udyHOdYLjaBJhC+Et59JfoTQbTXT3rUu1SxtpgEqu02uha
gkcdrf2VrYyM2Vqxfz1jpKPTw+TuDT7X0+keowrdvU9+WQtg8qwm/sXo6tV+7RqTeqATn0HQ
0zjNVS0IJUWKERq1+zjIZBh78lqbNnFARsjZhf9oPn0UqrZrknT3cn9+erp7/WH2FC+FBZek
Tu6+v19+7zvqzx+TXxhQJMHOw+wwsREoUaa+P5wvMCXuL2jU9K/Jt9fL/entDY2B0az3+fyP
oVAsM6kPbE+HXG/xiM1nnjUHgLxcqFq5LTnGIAi+3u0D4lKiscTTqvBmulWeBMLK80iDog72
PVXraKAmnsus+iUHz3UYD11vZWL7iE09XeVNAiD9zOfUg/kAe0s72aFw51VaUDugZBDCxape
w6nmqE7fn/uS4lOWUdUzmsOjYiyQVpJ9zhr7sASOZgFLFurwmj0lyZ7dZARmpBOzAQ9UT8Ua
GfdedS8YwAWpyyrxVb2YLs0cgagbVPTkgDorS3RXOdKc1kiVJosAKhjQV8V9Z89pH/cqfrTG
I16VzGdEV3YIdsr45DwU/nR2JFIjMPKU1HPMHVLzrcVv3IX9peqbpWZFo1ADijq1xs6hOHqu
a5FTdly64tCjDEsc7XfaZCDG+Hw6t7o1PLq+XJ30PZEc/KeXPm/qo5LqiQq+sBYfMT3m9KyZ
k9weNQIEQGpUdPjSWyytZYztFgtioG2rhesQPdK3XumR8zMsOf85YfjDCTqfIbpmX0TBzPGm
9F2xyrPwyL1zrKRhL/tDstxfgAeWP7y27ypjrXNz391W1ho6moN03RmVk/fvL7APD23svOIZ
UB/t9AQ78svp8v1t8tfp6ZuS1OzsuWdPk9R350trWGjvL22L0BN4wSPH1V4wxsuX7Sm4Wauh
QRamyzC2wCLjkr/effvrfE+4NYlUy2H4ISrcRJUWBR3pUQFnnuMVR1iCSdhBwbloLUIWaxnv
0qqLBW7R1ysiTPiQIZSdVhgypsjhVHTblDHphwITrIXU3ut+KH4tehDDEkuZcuo4NpzETDhN
qaT9tJYB+hlr4BASDXHPNRwqGqoRXJG2AeETlSvMoO9d28ewg1F2FW6FoVDvWqGd8ZPL68gg
xlTSeRnsEIHe69L9UjJV9YM7enYshFy4XGg7kgWb+5Li2mCsbnJVKFPFv7CW/y6HMx4js1VT
af200a3cBQ06dmSAlCEr0V/RNkq53nSBJIeosnKTLh83BRWwGRkKlomglfIQdX779nT3Y1LA
BH8yvoZgbBjmCWcRGKGqB0mFodpXzRfHgSGf+oXfZLXn+3p47IF5lcfNluM7BqxKZHRxjbU+
TJ3pzT5tsiSgyqY6QCIVTwvSI+rAEic8Ys0u8vx6qmo8DBzrmB951uygEg1P3RVzXLo0YLxF
FbH1rTN33FnE3YB5zvX2cfSKu8N/lrB3hnTGPMvyBJ3POfPll5De9wbuTxFvkhqqkMYORoG5
Wv6OZ5uIVwVqA+4iZzmPnBnZxzGLsKJJvYNMt950Ftx8wAdlb6PpQrXKHPiy/MCQT4wTXX98
YMoTnsbHJgkj/DPbw2egHYUpSUpeoXXztslrfIgmvfcr7FWE/8GnrUFsmze+pwYaGfjg/wzO
TDxsDofj1Fk73ixzRmpdsqpYxWV5C7uSEnfjaj1KdhtxGOFlGsyny+lYxj0TClTXM8yzVd6U
KxgGkTdS0TZCXlMF0TSIruc38MbelrlUHyksgffJOTrkbFK4FgvmNPBz5rvx2hlptMrPGH2s
ULhjvsubmXdzWE8pfUWFU9yVJ5/h05fT6jhavGSrHG9+mEc3pFY1wT3z6mkSq6r36qJUw9fh
R5C15vOfYfFGqoZneBYeZ+6M7YoPOqYu98ltuyrPm5vPx831iXHgFcgi+REH29JdLukqwIQs
Yvg4x6JwfD90zYf/dh809he1tFXJo40hkrQrf4doWxTvYpxOVq/nh0d7OxYO/yIynKyAt9Cx
NYahAQnDXO+7hRBImXCQYLYad5oGXzioc7EQRdGP/5YXaA4RFUd8+t7EzWrhOwevWd+Y+WU3
SS+9juSIoktRZ94sIGZxySKMy7gIXPq13uAiTXyEoMZxzPGFZmUtAb50VH3KjigN9LSC5Gbb
freRguotz9D7Txh40JdTx7VyqfNqy1esvYQIKPMKgm2u19BAFwYK6/K60Mz0W3KVBT58ikVg
JyiiqVtJxyxafeWzB0xVlh0Db8Sg12ScL0jX8524isdvf2qsDApgS+ykdNgSBfezPRvtqaQm
juuMHfjBbG5LvqJMLtpahsVmr9cmPVZ6nYGwXuk8MgyGzhYf5dMWviTDCa2i1grY9eOsFsen
5vOelztjE0e3gb0vb7FirF/vnk+TP79//QqCfmRGDoHDXZhiMF9lZQKaeOW7VUnK3+3pSpy1
tFQh/LfmSVLKlzcdCPPiFlIxCwDxeBOvQDrUkArOeGReCJB5IaDm1X9NrFVexnyTNXEWcdKx
QFdirjrGXKP39DUIOHHUqH4FgY5vtokIpfesUPFtvT0v6tngYQKrVctoKfaH+atzUmsp6kNq
NfyvUt9pJNXQtU5oNY8HCpqxbo71zFf1QIBuu2wBYqtEqTcqxi0azn5Gn44eORADSdNzNEdY
5DgUHbG6u//76fz41/vkvyYgAY/GI0fpWLzNtQ/t6oxF7IqL4/5z6Rn8sPFe89dCCtV/3EAW
yhk3SazHpe9hFqHCFe2zSuNR7zK16gSew0ahJYkUC1/VpRkQRcWcqOuop2sl64PvOvOkuNqe
VRRMnTldBiyYxzCjpuDA06oXk01r+7kdVB8MHe3Gj56cYjNpZ2R4eXm7PMEcbPeN9gWR8BB/
2LArUUiifZre2sEqNDIGONynWfXvhUPjZX6DMQz6SVWyNF7t17Ac2TkTYBdcpyhhTSxvr/Ni
sLn2Rm6Y4WSe7WpYs12MV3WkEPxBNyqTNjfdYbc5WFeiQ5oq32faRYP0Ns0je73Ycm1Ows/B
pVtdgjRfU8Fdgc0ISrbH3ElGxbGuvB3+drrHSC+YwFrIkZ/N8MRu1oqF5Z6SkgRWFOo9lCDt
YetLrKbFyY5T8wrBcIvHdD0bkN7hl0nM9xvVPzfSUhayRPc0KFiFxsdYgbcF7FeVnjl07CbP
SsM2cqA2a9oeE9PGeBN9BU5iWIdHKhN/0cIkyg+XrngZGcS1euEuKAkIXPm+MtsO+Y0FBxbw
rfHJblhS51p8JqQeeHwj7lpGm7W5LS0zSQXm6FtZL4nXBuETW+lOmZFY3/BsSwpCsnUZ+s7W
IoAiPQml40gjM1iTRzJK4iw/5Gbn4eEAp8Foq0GI46EIdT+SL8jjKJOYw/RW6PDodYbVSowv
g5eHZV7l69psS4pn5pKMoSrgfVJz8eXNhFlNnWsRAZk+3umVAlkejxUwuBQBWiHCSNfrW8Q1
S26zo1lqgaGpwrHuB4EoE9croTWAxbYwtuZUDK9qzSTt/dRYGnSVphtsC3Ids9QixQkqIqoq
WALYZ0WyN9aMMuVmozd4ycgqTl8Pi5xgy6s/5beY3ShTzQ+URo6A4BggPb/pKeBMvxlbZOot
RrxpoyxoJs8D/doKtsdtpykqWvNbLCKcpzkZWQ7RI8/SXO+7L3GZix7tu7mjWAPsy20Eu5A5
TaTdfrPdr0h6CA1DnXnxS+dgSRvYoXsbJXbGIZaLtnsP6q0YJYbTYWasZH1sTYXYVQjV9fNt
yBs8gYEYI0+B2haPttnjGpW6yWlxU1bxZ9iRUupyrEXl6Wj4HsDcrJI83BEkqZYIomCHoJl4
0wbjU5jbd1v5UJ6Gf1TRH8g52V7e3lHq6pQJI8vYOw1NrUgkVRF0il6EIMHCUa+1d7sBytcg
wrOK0Wr/Op9YE36Cr15Sl80aT3QTptU2pCrbxhegoDX+q/pqG6CUJ6uY7Wuzld2xeKRCe0jN
gzJPjEzDz1ZXbqvPOiGtd1RNjrBJZhSQS3V+otNYSrtoS0FKqrmqTd5R+s+vhHqo3s/3f1Ne
UPtE+6xi6xj9UO9T2ktFWhVlLkcxVZ+qHfNEuR8O2iy+QdFCWb3wV6udS9AaY/dXELFtyyCO
esJViafKDCRVEdZ2i4rBfdhZlGuI3hEJGaun7pI61ks48xzXXzKjNqzyAs27gqSi6yLPIK7C
NPDcBUX1F0YrxJ2FY7AKonbQH8j0HtPhAakI2KNL9Za8pzpTkypjNtg1aOnjtw2Ca8ROXpaH
tuwzsxJAVG3nW6LvC6O8VPNU2GOqu8aBaH4LJAZ21gvDyL8j09c9Q9t1r9Aq/WqrkSfwrF5W
b6UEhbCvlmMncheO1Yra85dmewdbRb2WdcjQomqsgnUS+svp0ayhbT2qkJd2KThC/X/GR0bv
BmKsHrs6coOl2VJeedN14k2XZv1aQDrHMib+5OvldfLn0/nl71+nv01ASpiUm9WkPfB8x8gW
lGQz+XWQFn+zlo4VSsm0q3aBS98OY41LkyN8YKMJaNVufy3h3aEd+6PfbDC8M2qxSb2p/ozW
9039en581NZqmRcsphvtck0lN11gLqOWLZrDIrzNKelLY4t4pR1MNHAbg8gEu/qHuai393RW
IalPpLGwEE4QvL4dzePaZO7b03p3EpK36ODzt3eMFvY2eZe9PIy07PQujT/QcOTr+XHyK36M
97vXx9O7Pcz6bkdbL3w0Gh9xfaOFBdTHfAUz7iwopiyu0T6IHguFuIfLRrvOMpfo2VgYxugI
CdWJqFO6iLTKVyxTIyP2NOm4KmVXQFnAlcSxFkdWgYW5YIp/FWwzGhp44GdR1H4eoh1llDI4
RCiqRzGc0ChrLqSTRZV1KOUf+qUW/SkJe0VrjgO02q9ta63qNgvxUU51anUjqNpZqk0+UihA
TZof4vaN8Rpbp6tKqgtKFpjy6oudSsWFtNaURFUwTJl6PjWa3CVh+2OrKqHdhkSzGR2HhKcb
dD3POT5IadcH9TTYkU6I2tiDvZ5iT5baWDIwoWOQy1x8Bl85lApASrAwRquKkaoJqCKMb2Ur
dH6nxelTEfpwp3AIUZtsTKaGQG5TDK3aqy489hiUC+01N3HGSy3MCUIRWoZJiChJJC73laYP
ic+XlDGZAqvvuK3uKAgUe4u4Qi1kVWZs6Twr9rVFbaPhaRVpyd37ekPMtoE/Kqib9INwJdfW
b2AW1CymV3SJVqGuZ2PAePtZtfcgrS6CtQqk5/vXy9vl6/tk++Pb6fX3w+Tx+wnObOpNTa81
f521a8+mjG91R821WCkVo2PUMVYO0vK3eXnRU+XmKdYK/gXNvv/tOrPFFTaQOlVOx2BNedXF
s9euTFt4lWfUXWuLttczZiIi6K3OwCumlGkkDpO57oRUAVzqDkDFA6sjkaxrSQ7AYkrrVqkc
wYcclBVhj6feXA1G3tJZWiTQ7Tx3HQd7Y4ShCF0vuI4HXoubVYPpuCAVSVXctccdC0lqNQ1U
n8IDHeOUEhUUKSiq5kFKYV441EcCJJiN+KvpWGo45VHXaQo+JaqOZPvLCLJPk+dUBQEg3R11
eJp6LqNmyTrxSccZ3RfGqIE8n7rNwv76uCzzMm+ILuY46rjr7EILCoMjWufnRGXSIgyuTS4W
fZ66KyvHDJC6Ye7Utz9qi+U0kJLV6KBpQN+iDmwJWxUhjryrk49F5MRPI/bRzDc9sRIc++sc
4gruM33x1LJUPuljqUUXrm+PTyD6RJuQ3FT0SaZl2cl/MSDz+GdW1qVraxK9EFBfuubkACjz
vdAM6wyIoCvf3u8ezy+Ppm07u78/PZ1eL8+n9+5asjPB0RHJ/XL3dHnEoNIP58fzO0aSvrxA
dlbaa3xqTh385/n3h/PrSfr5M/LsROeonnvmfqGX91FuMru7b3f3wPaCTihGGtIXOdemHvye
z6RlTqea8mFmrQ421gb+kXD14+X9r9PbWeuzUR4ZYuz0/j+X179FS3/87+n1XxP+/O30IAoO
yar7y9bhZJv/T+bQjgoR0Awjkz/+mIgRgGOHh/oHiecLnw7YOp6BtIA/vV2e8Drsw5H0EWf/
fkcMcUMolB5FumsR9vLwejk/6KNWksx0IkS9Kr11bzpXrhU2VbMuNmyV57RUvc84HCcrkOXo
ZxAhVOdpkWdxRp5Xd9Xc0a1/WmG4wTJLUnel49jyiEoobrDo1nQcpCvrAW19DxF5j4X77HBU
kXo2iQe+Ko2gvl0bhap8hKabNqg7duyo0mTXrtjNtZ7C51A7q/YlVVrb3r39fXrXTBw7pTMd
GYo+8gSDxqE+8poePWseJxGWRFvf2qq2/YgseKHcpmxR8TFMlPc7+CHsXvMc4yJbjHAEjmFM
xtq5Af1WyUyGTQ9Yt1VEvdENCVSnzup2qcDL2YLy0aEwGb6TFaTivjebjkK+ecpRwJFQjDrT
bERgU1jmDll8GIXx3AlGsaVrChk9WoFo4DQhbZSkMNLDVmE4hGNltJ6LRiUw0TQMOU8phtxU
Bc/UJ9jw6XL/96S6fH+lvMKLO/omV5RDJKUo85Xqag6OyYf2Ql/1K4VaVWgUBMO6DmYrcqsh
K6DkwXiyykmPZtAle+UCVE5n3LLO9xMBToq7x5O4PZ9U9iXFR6zKHa0oSdw5rO3b0fL0fHk/
ob8Y6nW4jFFHB/orJFtPJJaZfnt+eyTzK9Kqu0+ic9RS9nshqsne8LI3K4MOf3m4wVDUgw2I
BKCmv1Y/3t5Pz5P8ZRL+df722+QNH7W+QmdFhvj5DHIbkKtLqFW225EJWKaDDE8Po8lsVBoG
vF7uHu4vz2PpSFyKX8fij/Xr6fR2fwdf+PPllX8ey+QjVvko89/pcSwDCxPg5+93T1C10bqT
+PD1Qphd3ac7np/OL/8YGQ17E8+OsHrs1dtsKkWvifVT37u/0E27cB69faL8OdlcgPHlolam
C/whIoxIG7k8k08imsKvwlbEJZpssOxqJBHBiRJJBfuecqGvwL1jb3UV1dKzqjIWSa09kT33
hsY38cF4QWtZ4mMdDm938T/vIOy2M8zWaJHMIvjIJ6ZqgrXAumKwwWpCYouMPCW2qOLW2UyI
Ec88n9qzBwYjZEMLFHXma6epll7Wi+XcYxa9Sn1f9xfQAqhbN6rrgb7lSvIdT72oxyit0hSB
ojXhiiRHqVJLnR5nGzR5o1DUA+pcyGv4DsU/5NILa58sYYumaij/XFdkGotVlFrhpOhZXJWl
uiFMn1qgTWCNb+LGoD8QHhNv7ppBV1p0lTLNKxn8njnWbyN4fRrCkBFPqMpTlkrV+SPmqkVE
zNNsQVM4x2m+UQRhaRBU61ZFOVUW50VWV9UdhDI9dVI7VpFShvhpnkZ2x/ATuskgo4qEnqtf
sacpm898f6SjEQ0CTZ+QLQwbLSAt/ZGQcxKjb9bSYwgfiTbVBSxwyaWhqncLT42igYQV8zXP
Vv+v+6Z+5M2d5f+x9iTLjeS43vsrHHWaF9H1SvsyEXWgMlNSlnNzLrLsS4bLVlcp2pY8lhzT
nq9/AJkLQSJVPRHvUi4B4JJcQIDE0k/5fgFyMOc/FVCT3qT0l5jAAd29g8DjPHOBbq7b+Qi8
r9v6VT7rVnR2MDp2H8Ecg4w2XhAntScV9ZFfb6d97pZdZdmjibMx1eaIZhGQoBn//RLHp/EA
Pj+c6ElcQCOb6FsG8/uOBnr+Ey8q7/uzGe2RSklEYZEopuQJRDo2bvCwqsznPggGI6WXPqmi
hWMx/chvMYDgP7sKjm5ORoPPXHlwhrF7IV9pLhvozfp8HRKdwb7lu9Bm0OFXxGY56fdKoae6
quSvbb2y/tsL1eXb8XC+8g5PmpiAXCr1MkdUyb5onVqJSiR/fQbRjbqahc6o0lkbybyhUhvx
5+5l/4j3lrvD6WjszjwQcAitK07K7S9J4d3Hte2/dgJ4E3pq4G+TfTpONuO3j7ih0WlB+5n2
SMpPxx2aGZEUjJwsCmRGwMbe+in6zmerhOTwTjL95+Z+NifRQq3hUl6H+6cKIO8zHRDnjwfq
8FcdRup8p7vIQLcyQevLwNavL5Mwa7N4tlFqsyypyzV9auV/C0kkjNyokMdVk1RdlqsVfsZY
knKJ8nfzY5LvGPPbUFEXIKMR9wAEiPF8gFZ7mUcqGM+HqVHDZD7pTCLnJnFedhlLudloxD75
hZPBUA/NCzx33J/S37MB5cGj6UB7NM3lO/J4PNWIFCsBMDFCujSSzcvQ0/vLS+1US5lGpXNJ
P2JL7NFwSpvhLVEsWiXVslcPVm+quAa7f73vDo8fzZvIf9Am1nWzL0kQ1DcJ6hpI3sk8nI9v
X9z96fy2//6Ob0D6cr1IJwmTnw+n3ecAyHZPV8Hx+Hr1D2jnf67+aPpx0vqh1/3flmxDGVz8
QrIrfny8HU+Px9cdDJ3FaRfhqs8aiy+3IhuAcKJvwRZGt6bGR1Z3aaxE3uagL4Y9krtPAUyG
XG1vVb5DLvbz1dCIbtr9kYo/7h6ezz+1I6aGvp2v0ofz7io8HvZncoUglt5o1COxclCF7RlZ
rU0kH42JbUlD6p1TXXt/2T/tzx/aXNX9CgdD3RDCXee63LV2UZTcspOyLkLfNeyE13nG54df
54XOSzIfTj+ayhwgAz62o9V7xTJg55zRQP1l93B6f1NhYN9hNLSvW4R+f0JObfxtLpLlNs5m
U6XzcXpTuJ1oXfejTek74Wgw0bVGHWotQsDB+pxU65O/FMBlGmThxM221ulUwdmTq8ENiaB2
YXSUubsMLmEvB/cbzC/RVoVbbGEh6s/PwZCkToTfGBednFiJm82HHWtbIucTHrlY96dshiVE
6BKYEw4H/Rl9XAEQm5AHEMPB0CCddOiPiJqMuUW8SgYi6em6hILAx/d6SzLlmMQUFLCAYziN
IJIFg3mPJt2huAFndCZRffp0o98PsG1qBEkaE7eIb5noD/jkPknaI65Ede/MYDJBnpo+QxtY
IiOH6wqwNmCF1A6sgs0Z8igW/SHlFXGSw9riZiiBTxn0EEl5S7/P2igjYkTZUH49HLKh2GGv
FRs/0wWgBkR3Zu5kw1Gf8HoJmnJj3KRth1kd0xSFEjTj+o2Y6VRbhwAYjYfko4ts3J8NeAOr
jRMFo17H9lTIIZuzwAuDSY9eAinYlI1eH0z6VBa+h6mDCeqzfJ7yJGWr+/DjsDuruxiGW13P
5lNd9sbfY/13bz6nVqbVnV0oVlF3UmaxGvLh+LVdhDV4eRx66P5ORJPQGY4HenaLilPLNqUQ
wqPQLbxGW/wANN/xbDTsOD9qqjQcksxzFN6cS7V1Mze4vzWptl+fd38RVUcqZsVWl+wJYXUs
Pz7vD9aMcZzKj5zAj5ohZOdCI1c3xE1MH15y51qXzde+XVef0T7n8ARqyGFHv83HEBlpkeRE
Z9Vn6i5bZtyFdNM+30p14h5AbFNpCQ4/3p/h/6/H017ahjHjJE+QEWZH79grv66NyOuvxzOI
AHv2unw8YFmTi+a69FZuPKKOr6gT9joy/yEOeBLHvpIAZVtO4ja6yX4CjKwu5AVhMu/3eAGe
FlFqFUbzB4mIG3SxSHqTXsgZFy3CZEAvgPC3ce0frIEVkpt5N8n444QcyB5191gnPY7r+07S
7/WNgzMJ+v3OG/gkAEamZ5jOxnit+kF/G1mcATacWizKCHukQ43Tbzyi8W7XyaA34TntfSJA
YONtKa15auXWA1rX6dOnHyAEWc348a/9CyoQuF2e9idlJ8ltOhStxqxkgUHGUwy04ZUb/dZk
0R/otyiJMndtb3+XaKvJpkrJ0mVvpF32bedDXaqG3yS0IZJrBkh4Sg+JWL4JxsOgtzW5/C++
/v/XDlKx2t3LK95q0E2m87WeAB7rhVokPG07SIRufRNs571Jh6mUQrJCfx4mJAOB/K0t7BzY
uR5TUv4euPrYcV/SzLTuoI7pCuXpQEG1e0/78g5AkYdeUK4Dx3U6zKeQapkF5TI3mqgGT19g
CJZxA1gfPEBK9/rZ2Cxjm1ap4zu9kVkT7KhzgEETKP1rBHTR5xiPsqOC81R7UVANlkngk7tB
q0FtNybCuS4XHaGOgPN4uZaXz/qUZH13lb1/P0mTkPY7qtB20mTzgwFW4ZwJeuFglohI4Jv/
oDL2bEcTylSxWso8TlPeoEKncom5qI7JRLCJKQoXgh9uZ+ENtm42HPpbL2i73NFwshXlYBaF
5TrztSkhKPw02nLseEGMd+Op65H8OHRkmyJoyOIIzZozdEh/4ScsVXa9iIyzh66XWeSmcUe8
pMZWuj1x2fBf0YbkVZE/mx3blK3A+J6XuYLbmlUIz9JDU7iwfipY316d3x4e5cljx3vKcq4m
XwYxzzXj2RpSrnIShq2BhxnnvN+gk9xnKmt5UH2dZndWuwtL2LDyy4xEK4OfMowNmvBi/kje
eBiIqvBgHWY+GgWG4nph4CrWktl2xsdElKiFh/YsZonYYQUkdN5JAm/bpvXUNBrbKg20HxCX
V9O5nhwQgdTUGyHSc5bXlCyzuCQs4yTRWWWsXQLir9K2J88CP6Q+pwBQD9JVJmaygFJHhcRn
rXULJCBDlkNVhXCNOPmMRWwOmxo2fV6knKEb+g8QuZxakKl3lf0znK6Sl+jJsARKXCBtgcaV
iDTTrYoA5MsgUg3E2+aDUj99K0C5FXlO9LgaAYoVRnJ3ODOLmibznCLFG2692mFJeUYF+lWF
w84KR2bHR6Q6G9VRi+FLLGHXReTnZtT1bwt3oH8B/lal2T0FMq4jnLVuJu35MB+AoSPRgIGY
DZullbMnRkeyY8lS1mPBtPbN6uC3X1b9raNKQtA1VLIwXk5gkDHS8FZ2hbtRXmZ03cZOF6SM
B47GIxswtkgaUxiVxAy46LXhLMPSLXkZa5GnXT2P/KDqacu2B2rEdT4yqHrIV1KVaBaDAWb2
QI3S9gBtTK69ru9RpaXTvB99A25o3SMZzaDrE6q4fKja+zjy7E/OOkSQrk2NZv+UAyhIFUOR
Ru73A69EMAkugIbIaDp014FfYkgEJ71LaHY6AgZhfpV14fxIRnqQvwnNxrMmoQZe4igVxaLw
4fyN4IRbRQJPENKBJldDK9pdCK3iK5y0l+YaFWbqh5sizoXxE4NPYBQrdWKiNZ4mLKcArMhu
RRqpEW4twSSi65sVNk89rcKbZZiXm74J0C3VsJSTa6sFM8AvsxHZdgpGd2KBQaf1qAtFRlJj
yygelDli2HNMncN4hjgPjz9Jco1MHQgvBsAKZ4FAXJJkg7RQe7g0h1bZpGre/Qyy9hd340pZ
oRUVtHubeD6Z9HgmU7jLeovWlfMVqsvGOPuyFPkXb4v/gipHm2yWU24MX5hBSb4Dm4ZaK10H
78BcRIlYeV9HwymH92MMNgOq7tdP+9NxNhvPP/c/cYRFvpxRuWTZxXaj3DoaJYiZDh2d3rJT
dXHElCZ+2r0/HTHDOzd56FPE91NiQMoMXFCq2+G79tJIH07j4iUPE+snx3kVwjh6FNBHpWai
Xc6tixVwhoVebwUq5eTpcUmXLjBKD0RXbdumzrpcCxDh/ZWIcrxoIKXUn3ZSaj3bHremHQzo
IjeRDAalywsphkqq66o74PIAmFMNtjSIPMnweVAVi8nggusucQEQKj6zxqUWZi8lwOAhC2up
elYbLWtJRcg2n4Eyk631xmuIOjJrAbfV2Qna9VNDdbIJXQzUn5QYYJ5NnmESSt2TbVInQJ8J
I2afXUCu4csk93xAiAYf3OtX0S00Znu4vf9Fa1nOP+c1FCOM3LtZSB/P+4vD5YULD/RQl+ne
MhWr0INTWZ0+WNPXYcN1t9bKCX3MyMcukDi0BLl10rWYb6LtyDhxATSxaqiAXUJB2jZKIOi7
jm43d02QYYIGeayGtzw0A/GPHca7bEP2WGHsOfW7vE39nGyA4uJ54KVxp2Lg5bdxes0zJ8dL
1sakVKCL+rPjG2X8WvFhrX0Qi2HOboGRS0XBa/OS0TpuZd7lW+TNXNg3SVMkmCbEKtq96SS6
e+wUuqm4q9k0jnP9hHAFZeDWahMXlpqiNtT4pgCIh6mKdN9UNk86ZjfQ+gA/avGDk04QXYs3
5Uh/UySYKWB0SYTgpryNFiGamTmheSI+FJBBxFm9GCRd3zGj+R0NHO/4YxBxq9kgGV5ogzPz
NkjGnZ2fdE7CbMLaZekk8+GELosWo1vpGmUGnU3OR/O/MV7Trg8GfQDXoh5Ti5TsD6BXXW0D
knsARhoZAtOcgLqxrkI1fkBHqAYPzY7UCP7BU6foWqw1ftLV1ekvq+4e/uZzuQdHQjDqHKmu
jl/H/qxM6aRJWEFhoXDwMBSR2QIiHA+D4nf2X5GAfl+k3JtEQ5LGIlfZNEzMXeoHgf6OVmNW
wkO41VVM7HJtk/vQUxXP1+qgHxU+d1VPPt4Xkd1WXqTXJCQLIqRuqFulBHyc7iLyHeM5p8L4
cXl7o+sm5NZeeefsHt/f0M7Aiq977d2R4xt/l6l3U3hZJbuxvcGEdj4IECDgQYkUBGvuRFq0
DdQ6HCam8VwFbd251XVWDde0ybvSXWMuSpWSivS0vmbEoK2ZfHPOU79LE6hoef0H3w1BkXe9
yFMBlzHXp5RSHBrT3iIi+pVVwxKqQIGRt56zyJHDZUlHlhN5ee1IYkwqqHIKcoZh1ZVDOzpC
2w1BFn79hN4tT8d/H37/eHh5+P35+PD0uj/8fnr4Ywf17J9+3x/Oux+4Wn7//vrHJ7WArndv
h92zTBm6k1Y87UL6rc2ycbU/7NGyff+fh8qnphaRHKli43VYuRFoXujnTUDuj4tUmD5IfzoF
EIyFc11GcUSkYg0F417X3nEhSUixiW46ef8KS0GLm36ReAkcpZO2fnHkh6tGd49241Fnbuhm
DHEjxfWLqfP28Xo+Xj0e33ZXx7ern7vnV92BSxHj9bJItPdpAh7YcE+4LNAmza4dP1nr74MG
wi6C4j4LtElTEsW3gbGEjTBsdbyzJ6Kr89dJYlNf66/EdQ14WWCTwvkgVky9FdwuUGTd1Jie
QCwCz3xJrKhWy/5gFhaBhYiKgAfazcs/mhl1/XVFvvYixyLXU0Yl79+f94+f/9x9XD3KtfgD
02x+WEswzYRVj2uvA89xrG54jrtmgKlLYuJWX1KkG28wHvfn9Q4R7+efaIb6+HDePV15B9lL
tNT99/7880qcTsfHvUS5D+cHq9uOE9ojzsCcNZykYtBL4uBOekzoGmu9gVZ+1me9Suo94934
G2ZI1gJYz6b+oIV0Xnw5PumvAnU3FvZsOXqe7RqW28vNYRaX59hlg/TWGvaYaSPBzpiEW6YR
EAJuU2FvrmitjaYxlhhjPC/secDnwk1jGfRw+tk1UKGwR2odCoeZuC18SMeNp8RvQur+W9tN
705nu93UGQ6YOUKwBd1uWV65CMS1NyDWXQTDiUBtO3m/5/pLe1GzTXVOQOiOGBhD58PqlUZy
DtPfNHQvbgjET3rMlABiMO4IG95QDAdsbO5qr61F3+otAKFaDjzuD5huAIJTxGpsOLTWP+YI
9hbxihmMfJX25x0hkxXFbWKEs1YiwP71JzGUavhNxnIhTOJzqRURFQu/64pfUaQOGxaxXoTx
LQ1MaSCsoAX14hShB7odw9SFCoTKF8ryMVvCnkdXT3ZfwZbqXd2ejuu1uBcdIbKruRRBJi6t
sfpQ4FZOVxLDBp8mXel1muXVEcCyPqTZuN0V8jaWU2SORgVvc5upFXZ8eUWHgNqL3hzVZSDY
DKL1gXEfW1MxG9nsDp9BzA4BbM3xZPORQ1nSPxyeji9X0fvL991b7d5P1ZR6iWd+6SRptLIa
dNPFykjeoWM6jgiFM+6xWSIn55Q6jcJq95uPeo6HptbJnYVV6YUY4b5G8PJ2g+0U4BsKTghv
kJWqYK1NfB7o/k7sEiYtMtWY5/33twdQm96O7+f9gTm2A39R8TUGDlyJRVSnYpNX3VpjLQ2L
U9tYS8veRcKjGon0cg2t4Mr1we346PqABvkaH+D6l0guNd950LdfR4Rbm6g5O821sL5lFoLI
7sLQw/sceQeU3+kRizVkUiyCiiYrFp1keRISmmYIt+PevHS8NPeXvoMWraY5a3LtZDO0L9og
FuswKeq6K/iLXnJaZ0Vi651KTQkLk2stf4W3QomnnrfRHEv2zTBzU/sCAwn8IXWXk0wbeNr/
OCiXmMefu8c/94cfmoE0RrHCl1h5r/b10yMUPn3BEkBWgob2v6+7l+aBSD0P6vd1KbFbs/HZ
109maW+bp0IfX6u8RaFeike9+YTc3sWRK9I7szv8oyrWCxsW0+1leWfPWwrJbvB/+AGtIdLf
GNu6yoUfYe+kGdqyZlpBJ7dCgz2RltIYRPdKEoZt4MIHcRBT9GjjVnvDgKQYOXjHmMahcT+g
kwRe1IGNPLRL8vU3QydOXeKDkvqhV0ZFuCBpgtRdrAjsOhPHN62/QaUALRnOKALqTyiFrXU4
pZ8XZa5zO2doCNkAaPK1saeJJAAG4S3uZkxRhekSkySJSG8N4cWgWLBvAYCbEGmFnj2O9k4J
zNHW+hwt3a6p5sGyceNQ+/QWBWJTYxZLocpuhcLR7gSP2YBsTBDHmDoQytUBAlhL/aJB1w5b
y4jvCYhrLGJ7j2Dzd7mdkZOkgkonp4TXxSsSX0z46a7wIuV8V1pkvobNwDSNSRo4J5YKvXC+
Wd9AZ679+HJ17ycsAkfJ3nPMM4XIstjxYZduPOh0KjSxEO/XYYfq/lYKJPMBkp2LcDfUpBbM
DkksniPQUiQUykmZzjSrQ5zKOFlORrBTaF3waYFIPVgnaynAUqzMq0eay279OA8WlEzlVFR3
Krs/Ht6fz+jzet7/eD++n65e1D37w9vu4QojZv1TExllrst7T1pxQeto9Nfvadu7xmd4P7G4
yz1WYtWptJo+uiryO/IcEiLWRh1JRADSAZpVfZ3pg4CitmGbR8Blpp9/q0AtGo34RmfmQUyW
OP6+xGajgJppOsF9mQs9PHJ6gwKk1kSYYBIkrX0/JL/hx9LV1kPsu5hiGo7olKxlWN/1Nti4
WWxvjpWXY8aAeOnqm2AZRzmX1RThrCsE0s/+mhk1zP7Sj7EMvSxj7SMzWPBkQ+H7ZLTS2bbm
HW/ICuaH+HHqqcroc1wt40no69v+cP5T+ZK/7E4/7Nde+JPF0g1hFYBkETSvItNOipvC9/Kv
o2bqKoHWqmGkyWt34SJGudxL00iExvFZfXJnZ5s7hf3z7vN5/1LJWydJ+qjgb9qntS/ncqmj
3sjMoRfJR5KwwLsi9EPRJjOFPkq/AZXJUXtzTf0EuCl6o4Zdns7ClRUDFfe0DGiMru1HwB71
HVBtS+XmghbDocgd7ZA3MbJ7ZRwFd2YdyxiYTrksIqdyFfExlM1gYbDiWwErVn1pEksXiswc
gQqu7wi9CWWPZ+epbiXmvztnv+lZNKql7O6+v/+QqZn8w+n89o5B0cjshmKFMu1dxqZmrV2l
mM7X9oa8PV9DhM9oki5El8sL9eC7c5cVgRzq65W7MLhUAy9vthjwPbnWuFtF35pgIJ0KI1tv
R6Y9SVW/+dGyEiptUbtSS0mya3fBIotFZhohGOlMLs4ZHVl0CPACezjRSN7SZ6tn8abelnFJ
6y9QFjGYrrzmNapDvDzUeGsVLB3fRmZkIB0Nqz+LI16pbNuADb80dpaUkyTB7dbcnDqkUZJy
twi1Y0H9NsILV8AqH4z9vfECXeTYJNWKswTCXIPVfIDsF8BOtqusMewQVbVKk4nCzPPcMkzg
rG5F5UVup7OpMW6bsExWObJRc/w2oQ2RD2rUWrZBpQsGmKxAxVkxg9i2+zf6COJoISwO3gFW
KSakSQjLCUQmbLsXCWWu4RQWDbdRfIhioPL/r7Jr220bhqG/0scNGAJsf2A47hJkiR1f6u4p
CNKgKIZ1wZIM+/zxkJYt0rSBPbUVVUuiKIqkeKkhK0K0FnXJOpYMJ2i0hStT27oTnan/Q/7r
cv30gNy094uw7tXx/VUHBNHYKVhLTqK5FxYUwxEo3mSqkDiMcRDIGtQXH+gmf6zhNt8UfeJ7
l7IBOqwawkKdVJsY6eJt04P6QT5/iYYBO0QG/23Ukefkua5N9e0X1X+23dPtSnf00q18xzY+
WZyOtp/DuDjt0R36csfFGTPEwQXIAdvdBho2WVYYtib2KfgJDCz8w/Xy9g7fAZrQz/vt/PdM
v5xvp8Vi8TEyXSHslb/NZQ8HITpscZk/xVGuA+EwoExa+cSOsOLzWgZDmbRnCvppU2fPscms
o+mh3pg+hX73thUIMcm8LZI4zUc3UlupyAhp5YkZxQlty6zwujrNpKVvIcN8y/x/AUb50aXT
ECo9EDLYIBI3ONgE8uuXExSLiMz+Z5N7ii1R6oLYRGCbvThMfJ2B8cayYAovumaHV0vi/2Kg
mryaNnJ3DVo7DsIPkShejjdS1EmUOMHQqso8MZLWlSOZFWieu7X8WA8BcujxmqRhjwfgot0d
lkmd4HpG+sEgfKhTPDF5O1RaEnp29dpkgZW3ybRxxR45NWljTxg1BWyEXYuJI87dQD1R8eow
ob4D7hMWICTuHLgqhPtdJgZfLyJotp+LItYrtrginipaRznSN1Q/icMnwRAhaxE2dnkhsyvN
/dsrSvPQr2VSrPw+y++k09IxfgxHYRp4aNf1CpaLyo4j4C2nd6EOsLybLqTpIARJ5sCqmXKj
xr+nJgSNC9GaglCcdp/7q6cF+lEDaxXNMB0vtCizbEvUXu6nx1ff6xpcq8qISgI/QTlr7YUi
Td3yxhUDvF786BLVNVNAsX5a2MCB7MAbW25Vg+UvHdrVgZ4ekYEVSZe2SzzL+KqVuKiDVklC
HDGB32/X0x/FBmJjT32+3sDDISWkKIR3fI2SpHI2mUin5OQyg/qgmrXpWdqy5w5vDozJ0Gqa
gXHCyMMJY2dzdkzn9bDi9ibNYydHEX5J5KXmsOPKxQL9fRZERwvvV7WIGuy14QxMG2GtcbMI
H/loiwnuHww3uteYdwEA

--sm4nu43k4a2Rpi4c--
