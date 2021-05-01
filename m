Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBTVCWWCAMGQETQM2XSY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43f.google.com (mail-pf1-x43f.google.com [IPv6:2607:f8b0:4864:20::43f])
	by mail.lfdr.de (Postfix) with ESMTPS id 40897370748
	for <lists+clang-built-linux@lfdr.de>; Sat,  1 May 2021 15:02:07 +0200 (CEST)
Received: by mail-pf1-x43f.google.com with SMTP id a8-20020a62d4080000b029028db7db58adsf1011333pfh.22
        for <lists+clang-built-linux@lfdr.de>; Sat, 01 May 2021 06:02:07 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1619874126; cv=pass;
        d=google.com; s=arc-20160816;
        b=dwEvEFKL90kVGnfijEV06RezvvLKUIRkkBFiesTTkmEQD1JuhhckxTu2e+76isvUXS
         /1Y+6pyAwCeUSgPr4gkAiR0JPHO4fTfWVWJOcQF7ogtCMR7Su97Rqi0DoFJ9cwxGhxtz
         DXfhN4VHu+zPdecgRNLPvEu5XYucwCnnYPggIYa8eo5O1xO/6H43y+RDidEBwVLzxvhp
         OFjZGwAHVZbpjmBlhDksYer2huYTCokv465ItNGvKyxFF7iC/ngzDMYDn4ifFSc7+ILG
         L89031hhskOxwPmhKwYISlYbn3P5+b+kaIOXkN1+qGQqTb4mgYjM0cA61Di5ZUvSykGB
         L82A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=9xS1/l0FrIpl9F6KeikIfeNJWifTZJxkNVW81HurMzA=;
        b=hRtDAtEBrWh1eEa7Y1k4g0kHF55zRx5bZWeraoVeKW6N48DmPoo/F9+tkGlXy02Opz
         zaF3P3vcBOAs6EekP+7nWfSHqpWA0S2C9rRYy6ekYEzdS8OIgXXqTiRiKkH6Ny3PIgca
         goTZp5x8xUP2a9Rx//ESFFPAyiQEjmsAuzK2a8Uv967qxzDrgIxdq3KdviIiYun4ZgXF
         vUESZ/AcXLdHx3tRN4EcfGaWGfMrbTNpwfOseg36NxXPjkY6gvKI0DrzbqGKonP9+h6L
         2qcGFwJlKiGb7kTK9ul/ZnZViKWgCYGsHxLyItA2xAhCyneXaM1oURPdtDpOWwsj+zaP
         1u8A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.88 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=9xS1/l0FrIpl9F6KeikIfeNJWifTZJxkNVW81HurMzA=;
        b=iD0bpZ0KU+Njna+xZAN8vvkR2jWUCIZm56Esj+TNfSW3kaiCgpVQYJAIjfRVfLDilQ
         75+u6OOOK0OSSoYZqfpcxOrdIXMAxP7KxFqyVWyP1SNhguJK7mW+ggKkaenSk6cnmGfh
         T2DLJCPshHIaOCYz+ZpUJ8I9IM0382MaZ+OHcl8e8qFipNZ/lXvLxe7A0wWusS8ojbi0
         Mvani8JX5wuOkstnoObq6hvhtFGcsmZENnnat7WwU9MjDS7s/XrxVrMtR9TS+tnZ7z6d
         Xp7LKDSsZqmtCO7fKNfjTAhzEvaCV4Wezn8+t0FEnLNJ9Y0I8VihccNrJ0cMVTF2DZ1y
         pOhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=9xS1/l0FrIpl9F6KeikIfeNJWifTZJxkNVW81HurMzA=;
        b=NhMeG6B6sAZ2dAJ/j6LciQ2/aL1P9uhMjjFDlXuy66ayB/aHOsZDmtZrOuBbR5AfH6
         qjdhmSUYi86nxPNe1rfuMx8lyPRdZmhkDV+f/jgUfuKHMKmERcz11CoEBej8lVKNaExQ
         0ZyJBIsG4/1wbUWku7U/fAnx9tKuJtMoAeu1TQgZPySETN0+m1q+zebNNg5G9V+0CE1A
         /WrM50F+kZlo+9xR4ZkG+0xU7hd1KNB79nJRcmvGe8DoKVk6uzqBRaiBcPMzwlLZFn6j
         uSjbOfA6ak/R6MeWwqnmbt4rHGLBxNKr0FkrzjXIA3JVph3BMKEOgJfvDpSo9ePEZrlB
         Moyg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531oc66/Wh8VVLU0dGK1+9cFM9P5EApgY84jCfDqKE2KTYHSUwL3
	qpmrST3RF0rtUTW88iDKNY4=
X-Google-Smtp-Source: ABdhPJwMcTyMonrG85oE1MQiJZ2iMEXSi/1cLpXWOv5alRC6nj4anEOMJv11PQj1Am+XTDB+n5MCPA==
X-Received: by 2002:a63:1c22:: with SMTP id c34mr9324759pgc.408.1619874126602;
        Sat, 01 May 2021 06:02:06 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6a00:811:: with SMTP id m17ls3691746pfk.7.gmail; Sat, 01
 May 2021 06:02:06 -0700 (PDT)
X-Received: by 2002:a63:5723:: with SMTP id l35mr9102209pgb.111.1619874125955;
        Sat, 01 May 2021 06:02:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619874125; cv=none;
        d=google.com; s=arc-20160816;
        b=MpAlz1bZ7dZRbxLPfnMi4I7fyy5BcOVNcvmYcdCXDqoD2T5IUmkTNsUXPkq4HFrZ4A
         vcgeVGqI+iNu8X9PRWDqz2WXfOgBVgz9Kff0IMG4tg5wvbm15wPbueqo7w6Is+wx2VYU
         2zuYBIy8bAVydHriTOJZoEAExjE3SSRWhNrDggLi0bv3NeQ4tyWjdbDu6s/cv/rvZvOw
         UEISwSCXx7Ntfz/BMSKMGQPNdcBQ72SbPAlcDiegUsmFlvUWpU85Wijt/oQj3M40G5Tm
         tz/evSCVPQBumbIlTCPE+m9ydGx7nGF+PA50DjcOtd0mRMxVhPZD1OTWc0w40O5uusn7
         +2PA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :from:date:ironport-sdr:ironport-sdr;
        bh=y3FU81Qxcv+2QVLOFre7giEjXD25hQsUyb2r8tlI4M8=;
        b=WxcShIQqeo/FT+FDMrdS9lgDfWVc4LC7WkK8vo1zzcaKB5QLGskENp41cX8c0OZRsN
         6hAU4X7UOlznSYNXoZ7d8HHFm+EsvEDDg7GNDlwFz6ef0XyDNi4msBcrRs8yfDF+rT2x
         cZKeJuo7BCpK8MxBB9k+ljKB/yBeZZfZlmxWDHclhKG/L38UtBzkO8Frg15ioV3bORFm
         qwixeCM1WtfkUffu4KHwC87lxmva8zpSHmY7cjWEPBosfGiRfvbMukZkYUhsEI2VPfmo
         n0s9dl9x5lEx+JoXyeTygSsq7fyKb9hUj4+hYmkOK07o7LfZxVY3QKWK2aSKNaE3ReYv
         KgQg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.88 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga01.intel.com (mga01.intel.com. [192.55.52.88])
        by gmr-mx.google.com with ESMTPS id g12si65881plq.0.2021.05.01.06.02.05
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 01 May 2021 06:02:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.88 as permitted sender) client-ip=192.55.52.88;
IronPort-SDR: qlZDMKhQe3a3rhxOOFyUNWlSbzC0QZNhJ4PEEaR+lmdbUcw5KRsnkv3z/dJjC3ATxU8rrseOyf
 VdfDJX5/dW7A==
X-IronPort-AV: E=McAfee;i="6200,9189,9971"; a="218218547"
X-IronPort-AV: E=Sophos;i="5.82,264,1613462400"; 
   d="gz'50?scan'50,208,50";a="218218547"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
  by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 01 May 2021 06:02:05 -0700
IronPort-SDR: tbofJpvpmF3LEDN+Yyj5Frfta+ChZZfR/EZ9JxUt7w0IzwBLkqpByhZHQFciXqpytEltaKgdur
 Bfe5JnO1cfbQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,264,1613462400"; 
   d="gz'50?scan'50,208,50";a="431907790"
Received: from lkp-server01.sh.intel.com (HELO a48ff7ddd223) ([10.239.97.150])
  by orsmga008.jf.intel.com with ESMTP; 01 May 2021 06:02:03 -0700
Received: from kbuild by a48ff7ddd223 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1lcpFy-0008ZY-To; Sat, 01 May 2021 13:02:02 +0000
Date: Sat, 1 May 2021 21:01:48 +0800
From: kernel test robot <lkp@intel.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com
Subject: ld.lld: error: main.c:(.text+0x61A): relocation R_RISCV_ALIGN
 requires unimplemented linker relaxation; recompile with -mno-relax
Message-ID: <202105012142.K05shhmF-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="0OAP2g/MAC+5xKAE"
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


--0OAP2g/MAC+5xKAE
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

CC: linux-kernel@vger.kernel.org
TO: "Steven Rostedt (VMware)" <rostedt@goodmis.org>
CC: Ingo Molnar <mingo@kernel.org>
CC: "Peter Zijlstra (Intel)" <peterz@infradead.org>

Hi Steven,

FYI, the error/warning still remains.

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
head:   9f67672a817ec046f7554a885f0fe0d60e1bf99f
commit: d25e37d89dd2f41d7acae0429039d2f0ae8b4a07 tracepoint: Optimize using static_call()
date:   8 months ago
config: riscv-randconfig-r016-20210501 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 8f5a2a5836cc8e4c1def2bdeb022e7b496623439)
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
   ld.lld: error: arch/riscv/kernel/head.o:(.head.text+0x88): relocation R_RISCV_ALIGN requires unimplemented linker relaxation; recompile with -mno-relax
   ld.lld: error: arch/riscv/kernel/head.o:(.head.text+0xA8): relocation R_RISCV_ALIGN requires unimplemented linker relaxation; recompile with -mno-relax
   ld.lld: error: arch/riscv/kernel/head.o:(.init.text+0x0): relocation R_RISCV_ALIGN requires unimplemented linker relaxation; recompile with -mno-relax
   ld.lld: error: main.c:(.text+0x0): relocation R_RISCV_ALIGN requires unimplemented linker relaxation; recompile with -mno-relax
   ld.lld: error: main.c:(.text+0x54): relocation R_RISCV_ALIGN requires unimplemented linker relaxation; recompile with -mno-relax
   ld.lld: error: main.c:(.text+0xA8): relocation R_RISCV_ALIGN requires unimplemented linker relaxation; recompile with -mno-relax
   ld.lld: error: main.c:(.text+0x104): relocation R_RISCV_ALIGN requires unimplemented linker relaxation; recompile with -mno-relax
   ld.lld: error: main.c:(.text+0x29C): relocation R_RISCV_ALIGN requires unimplemented linker relaxation; recompile with -mno-relax
   ld.lld: error: main.c:(.text+0x3C8): relocation R_RISCV_ALIGN requires unimplemented linker relaxation; recompile with -mno-relax
   ld.lld: error: main.c:(.text+0x534): relocation R_RISCV_ALIGN requires unimplemented linker relaxation; recompile with -mno-relax
>> ld.lld: error: main.c:(.text+0x61A): relocation R_RISCV_ALIGN requires unimplemented linker relaxation; recompile with -mno-relax
   ld.lld: error: main.c:(.text+0x790): relocation R_RISCV_ALIGN requires unimplemented linker relaxation; recompile with -mno-relax
   ld.lld: error: main.c:(.text+0x880): relocation R_RISCV_ALIGN requires unimplemented linker relaxation; recompile with -mno-relax
   ld.lld: error: main.c:(.text+0x8D2): relocation R_RISCV_ALIGN requires unimplemented linker relaxation; recompile with -mno-relax
   ld.lld: error: main.c:(.text+0x974): relocation R_RISCV_ALIGN requires unimplemented linker relaxation; recompile with -mno-relax
   ld.lld: error: main.c:(.text+0xA12): relocation R_RISCV_ALIGN requires unimplemented linker relaxation; recompile with -mno-relax
   ld.lld: error: too many errors emitted, stopping now (use -error-limit=0 to see all errors)

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202105012142.K05shhmF-lkp%40intel.com.

--0OAP2g/MAC+5xKAE
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
H6V0lE7ytGmw0riMutxdiP8HSncHzoWJAQA=

--0OAP2g/MAC+5xKAE--
