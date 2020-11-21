Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBIG54X6QKGQEJKXD7PI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53f.google.com (mail-pg1-x53f.google.com [IPv6:2607:f8b0:4864:20::53f])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E2162BC1C1
	for <lists+clang-built-linux@lfdr.de>; Sat, 21 Nov 2020 20:46:42 +0100 (CET)
Received: by mail-pg1-x53f.google.com with SMTP id g3sf8788766pgj.20
        for <lists+clang-built-linux@lfdr.de>; Sat, 21 Nov 2020 11:46:42 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605988001; cv=pass;
        d=google.com; s=arc-20160816;
        b=qf+P4YzrFors6O6oysen4su47OQjYAZk++6oSgnZ3LqA7EC2+Q4XtPmP4hul5YHswQ
         hLF9Je0f/zbpYIO1z7I0sNu9wEDE1G9wcC01ydThfdf5jxRn3RJrjxM476URTQYklWWa
         eDdLghzEZ2VVeNUwi1/SBEJgV1mohQ1YGcafPS75T6iqCR53c5Ckc559f1dlOhSMnH1s
         qJvYp61jI+KUd5IrkU6f6rU5VRCJrK9ZEpBKnScGM6ORFwapxvoyDjfS/Vl57HvosP24
         K5XQnT2Yg06iqxlxOjfCCPlY663COSAhMqHpodeHjnRwQiFkegO4SoZ2SucrfjWqakgu
         zrVw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=ChRZVo36+uzkfq/7fvjuO5lR2uN0NjPU96Uk+7q3LBE=;
        b=NP7KHHyhrTqnnRpXlRZlbpSh0ccTf4B3NgiqHivtsY9qpQpVrZwIybVhFY4QbknKHM
         UxjLq9lDvYOre3vN3PwyBiuPTItmDJut17GXEXvfadsan31Kn0uKrCEqrcoKOh4K2nYe
         Pxiq6Umdc0Wv3i7dD1JvtTT4j75yVwxmaSXvp7EzJeQrmSGiZ7ZuFTuhDutdjD9dgbmr
         wLXnyryc4EOHmOreDsxPAaVdpSYbeud1DLpikH1Zu5dlUKVHDHJxh7VFWCsep939otty
         t3ZmIEbTwxTtOTEFHLCOiX84DKTiQsGWvW7KjwTTiJ7DOUrnvgen6zIH+H3u7LZP05A1
         P2iQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.120 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ChRZVo36+uzkfq/7fvjuO5lR2uN0NjPU96Uk+7q3LBE=;
        b=aYbCU4zZj7X2e91uP3mWGTI4zNCJg9InIoNrMKS9Wgp0l65yiq7FXKIVPP51iL6MOC
         TlaUfEhW0MFMJ9mAOoSYHFGctzw8h/hYiEVUDuzMnu9H45JZjzgy/YeD3jXRozb7Z6Wy
         oLgEKLG+LoA8lbQ5lNu0wJs3EDWz1sV457lw+Sr+I86qmNJBIvXpIv5d7jV0zC1yMEvn
         n2jjVM+ZO96IQGcwNEbwxgbVWN0FBD3YNKf1yPzVfeE8yFym6r4j51wjI3RfGbQlNdZS
         RWHDBOfgBRcAWUuA6avjRdJmdvFKciNrfdVUU+TcnNR8JiQZMlwRgBQL3aXYdhqY9PzA
         VFjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=ChRZVo36+uzkfq/7fvjuO5lR2uN0NjPU96Uk+7q3LBE=;
        b=ZMjqHz6mlvwY97/0A7aV8FKme8QQBBoaeTWiPoTAb8JCtP5j3iJBz4d6lWxW4e1ReR
         WNAUrYQPO+dpSrJDDUVlKLwkivd5UNEqB+ki4VLJJ3ESzMMYOGJ7AZoTyNtkSjpdaHdh
         fG6KlyGcxD7EguVTvTHaRnMpwP11y8zORKxkdng8uqv/oFbrIXskJtJ7HlHuiA16MOzf
         ljlJbsljjnyY35qykFIl/Jpxtzdv7a2IQKi/qWWP0M7jvDaqPn040sBsMeTOFuxdJqeN
         5pLc6TvDKnOQfRuYjvfme7nuL6xnaPuQqYAYWI1zxGethelnOYF8lCf15/0bqu4GUcv9
         mWkQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530g8udhqKvO7UfMairnok2J83QHQFAg2B0lrjw8LrYbhDNynqi2
	akdxoG1fzpW/nT+aNoBQNVs=
X-Google-Smtp-Source: ABdhPJzQlxrj9tKRA2UNOVTzHmPnq74KAzwX4/pCGB9NssFlHPSQ+vo8fh3jv5bdkL3BwL3nRjCQGQ==
X-Received: by 2002:a17:90b:a17:: with SMTP id gg23mr17122956pjb.82.1605988000800;
        Sat, 21 Nov 2020 11:46:40 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:be18:: with SMTP id a24ls5495698pjs.3.canary-gmail;
 Sat, 21 Nov 2020 11:46:40 -0800 (PST)
X-Received: by 2002:a17:902:9a8e:b029:d8:d989:4f80 with SMTP id w14-20020a1709029a8eb02900d8d9894f80mr18852180plp.32.1605988000120;
        Sat, 21 Nov 2020 11:46:40 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605988000; cv=none;
        d=google.com; s=arc-20160816;
        b=yvefJNcoOIhNuNRPeh3PYeOucCeUtr8bHSM1fl05cMJiHnBV8GW0KrAtjHAmICtSCm
         Pfn7cF8b6LYNMoSZscmFzleZY/tXpY2vWpnqtRdZQzJlu0WhNoZ2Lexwf+8japbBUKJb
         FHDxEOrCaUOsi9BHC/kCYwrPc3gLsJx1TXOkRjV36Lfjw6+7OwGtcwEAJVPVDlj168xw
         I3ut8tMFyqj5MLJh/PQKZHNjNGUtS8bcPpTADpU+zkJcghtY4HqECgdynsvKaT8vEtMD
         zwca3mw5AHn3eNgP4EX8HM44QxlU8L1QWvnwCO/SPKin5BC6UL/URwZix+rq4XxVIYhH
         PlAQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :from:date:ironport-sdr:ironport-sdr;
        bh=tcQh38xpxVDFge4OXLdDew8qHPXaCLS+oVZ66B2+dr4=;
        b=ilfDdo72jB8LGIrBQ1l8pnjncJR4J6ClNEk6PlzU9WXVqHDGTkmd0+IQMyFur+GznC
         gNDM2Opni+PE7RC2Q73iJFELndelPirTHEKbnt9ITW5S8ODzNNN/Un0YS1F04E7Z6fFe
         a6WCk5JRlefgwAk1YlVt3mQ7oJj7gtWrF+W2+9rrDvdUOsbXbu2wbWgRvwmdzaZaJFvA
         83QQTS/wthCDCeBD2aQKHn1C+Jl3/gEHBWwVsG3hlf0qNx842oLwpVYD1YHxOClCZ+ds
         bjyKg9VanUZo0T/oM/X4Ts/5Jngxi4EiThGRi77rDS5GDdF99QjWfSZDEddfoDdTWjfJ
         QeSQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.120 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga04.intel.com (mga04.intel.com. [192.55.52.120])
        by gmr-mx.google.com with ESMTPS id v17si413323pjr.2.2020.11.21.11.46.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 21 Nov 2020 11:46:40 -0800 (PST)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.120 as permitted sender) client-ip=192.55.52.120;
IronPort-SDR: st+3zDluUQlwmLd/H/qQpG0v0XWHRtAt0Rxxmb/tcdB/4EYnpz574JL3m0buYXeI+OP7EfztJN
 /WcAmEgq36Rw==
X-IronPort-AV: E=McAfee;i="6000,8403,9812"; a="169040737"
X-IronPort-AV: E=Sophos;i="5.78,359,1599548400"; 
   d="gz'50?scan'50,208,50";a="169040737"
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
  by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 21 Nov 2020 11:46:39 -0800
IronPort-SDR: nFFXkZFALYi+X+m1ySGRQ7nIO0MFjYLrPoKv9m8fbZ2WxdNsNczzPdaXlQImVpsFhf71uKLYjB
 ErOgXNNFNnCQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,359,1599548400"; 
   d="gz'50?scan'50,208,50";a="545890579"
Received: from lkp-server01.sh.intel.com (HELO 00bc34107a07) ([10.239.97.150])
  by orsmga005.jf.intel.com with ESMTP; 21 Nov 2020 11:46:37 -0800
Received: from kbuild by 00bc34107a07 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1kgYqC-0000PK-Jt; Sat, 21 Nov 2020 19:46:36 +0000
Date: Sun, 22 Nov 2020 03:46:08 +0800
From: kernel test robot <lkp@intel.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com
Subject: ld.lld: error: main.c:(.text+0xC4): relocation R_RISCV_ALIGN
 requires unimplemented linker relaxation; recompile with -mno-relax
Message-ID: <202011220306.VjmRefBv-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="uAKRQypu60I7Lcqm"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 192.55.52.120 as permitted
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

CC: linux-kernel@vger.kernel.org
TO: Feng Tang <feng.tang@intel.com>
CC: Andrew Morton <akpm@linux-foundation.org>
CC: Linux Memory Management List <linux-mm@kvack.org>

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
head:   27bba9c532a8d21050b94224ffd310ad0058c353
commit: 09c60546f04f732d194a171b3a4ccc9ae1e704ba ./Makefile: add debug option to enable function aligned on 32 bytes
date:   3 months ago
config: riscv-randconfig-r014-20201122 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project bec968cbb367dd03439c89c1d4ef968ef662d7c0)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install riscv cross compiling tool for clang build
        # apt-get install binutils-riscv64-linux-gnu
        # https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=09c60546f04f732d194a171b3a4ccc9ae1e704ba
        git remote add linus https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
        git fetch --no-tags linus master
        git checkout 09c60546f04f732d194a171b3a4ccc9ae1e704ba
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=riscv 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

   ld.lld: error: arch/riscv/kernel/head.o:(.head.text+0x0): relocation R_RISCV_ALIGN requires unimplemented linker relaxation; recompile with -mno-relax
   ld.lld: error: arch/riscv/kernel/head.o:(.head.text+0xA): relocation R_RISCV_ALIGN requires unimplemented linker relaxation; recompile with -mno-relax
   ld.lld: error: arch/riscv/kernel/head.o:(.head.text+0x40): relocation R_RISCV_ALIGN requires unimplemented linker relaxation; recompile with -mno-relax
   ld.lld: error: arch/riscv/kernel/head.o:(.head.text+0x4A): relocation R_RISCV_ALIGN requires unimplemented linker relaxation; recompile with -mno-relax
   ld.lld: error: arch/riscv/kernel/head.o:(.head.text+0x8A): relocation R_RISCV_ALIGN requires unimplemented linker relaxation; recompile with -mno-relax
   ld.lld: error: arch/riscv/kernel/head.o:(.init.text+0x0): relocation R_RISCV_ALIGN requires unimplemented linker relaxation; recompile with -mno-relax
   ld.lld: error: main.c:(.text+0x0): relocation R_RISCV_ALIGN requires unimplemented linker relaxation; recompile with -mno-relax
   ld.lld: error: main.c:(.text+0x40): relocation R_RISCV_ALIGN requires unimplemented linker relaxation; recompile with -mno-relax
   ld.lld: error: main.c:(.text+0x7C): relocation R_RISCV_ALIGN requires unimplemented linker relaxation; recompile with -mno-relax
>> ld.lld: error: main.c:(.text+0xC4): relocation R_RISCV_ALIGN requires unimplemented linker relaxation; recompile with -mno-relax
   ld.lld: error: main.c:(.text+0x100): relocation R_RISCV_ALIGN requires unimplemented linker relaxation; recompile with -mno-relax
   ld.lld: error: main.c:(.text+0x13C): relocation R_RISCV_ALIGN requires unimplemented linker relaxation; recompile with -mno-relax
   ld.lld: error: main.c:(.text+0x178): relocation R_RISCV_ALIGN requires unimplemented linker relaxation; recompile with -mno-relax
>> ld.lld: error: main.c:(.text+0x1B8): relocation R_RISCV_ALIGN requires unimplemented linker relaxation; recompile with -mno-relax
   ld.lld: error: main.c:(.text+0x1FC): relocation R_RISCV_ALIGN requires unimplemented linker relaxation; recompile with -mno-relax
   ld.lld: error: main.c:(.text+0x238): relocation R_RISCV_ALIGN requires unimplemented linker relaxation; recompile with -mno-relax
   ld.lld: error: main.c:(.text+0x274): relocation R_RISCV_ALIGN requires unimplemented linker relaxation; recompile with -mno-relax
   ld.lld: error: main.c:(.text+0x2B0): relocation R_RISCV_ALIGN requires unimplemented linker relaxation; recompile with -mno-relax
>> ld.lld: error: main.c:(.text+0x2EC): relocation R_RISCV_ALIGN requires unimplemented linker relaxation; recompile with -mno-relax
   ld.lld: error: main.c:(.text+0x328): relocation R_RISCV_ALIGN requires unimplemented linker relaxation; recompile with -mno-relax
   ld.lld: error: too many errors emitted, stopping now (use -error-limit=0 to see all errors)

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202011220306.VjmRefBv-lkp%40intel.com.

--uAKRQypu60I7Lcqm
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
iL2XCure53+yT2MP11ABAA==

--uAKRQypu60I7Lcqm--
