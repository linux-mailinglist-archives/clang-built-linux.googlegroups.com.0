Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBW4F46BAMGQECIUGFLY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x240.google.com (mail-oi1-x240.google.com [IPv6:2607:f8b0:4864:20::240])
	by mail.lfdr.de (Postfix) with ESMTPS id 85426345BE2
	for <lists+clang-built-linux@lfdr.de>; Tue, 23 Mar 2021 11:28:44 +0100 (CET)
Received: by mail-oi1-x240.google.com with SMTP id w5sf720945oib.21
        for <lists+clang-built-linux@lfdr.de>; Tue, 23 Mar 2021 03:28:44 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1616495323; cv=pass;
        d=google.com; s=arc-20160816;
        b=WzjGG+HpB1imn9llqOCn9h221VdMwsUkemZb+QZ2jMkQafFwsUQGVuat1Wcv4K2wJ1
         oG3+VOq97Bp2eDFT/Z3bFYn9EPpzUBDqAE5gX8ZOS1OEDscTJ+niGc6lHIEYAe0e8tYR
         31TImRRe9xERLAKzVCzFV2xVo/C8G6mHaPn1Wzd6q6Y3vVPFofCFMVo8MFnZy8UaaC0e
         UpvDQdtgW1HHFFirJA6WQMuqhLJy0AX4nymGnW8y9G41QSZAYJxCeWxGWPYHgXEaJCNi
         H7nldQ/RaUTbWArNzzFa7EnU8CqdV6xYl5shDMB7ypMgG1lGkWw7dvLn2GsZ9q47M1fM
         OhLA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=6+cIuotuGRoeKTRevTTGI4gjkiz/uLzAzvq34wXbeMo=;
        b=d+BoAyaWhmx395UH2y+PJvnuWpvrtmySQCRnPtWFf+hd/1LOFcF1bT8hqsp1tzHx9q
         enh+QesJ+lPxb0JQZlIg0DB5vCd5mfby24Hzq0ErkPTsAbR+G8T9YZz3GUYLVsslvBw1
         uSiqBw2K7rwShrYGfqpue5tV49Z1k0/AJUOhdJ7OrfkjGKFIhlC4mR63ih9q43s/rpUY
         o4PZP/uDGxBTOSZxG/ipNrKTmQ/Fe8kuvCaOUfEQ1qHkKOs4nFg/Z+4E9rQ3sihiaGGE
         nYZGaQeiFYYB/KrHk9YKKGrzGJKvt98f09iGdEt+AbJHYSm9veXU9mrycCFScl/ls8N+
         pYKA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.100 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=6+cIuotuGRoeKTRevTTGI4gjkiz/uLzAzvq34wXbeMo=;
        b=YFPEA7z2APwRkCvYgpYNsou7MtuUKs3dYH9K1Hs8Z9eg5aUPUPEmtsc5DAhXCdheQs
         x6rWN9KnqSpwvBZp5vo5w3cu1BOg7p7n+4CZ3NloSa02FE2dXl8vZhIuYI3HNhEY2Hnm
         iJXdc4ykqOsn+tn+ALk5ROxIyTB9mKunvN0t5lsmXh6oZtCfU2OpzQdZ2lNFnxhrcJhr
         pD9SchVjOlnOMFLJPcwlAFdvME96+nJFta/T/0Zybx3IfiQUhP4Mx7z6wcGBR0UPZzMJ
         sSZifadLx7ZS/rllTPjoZK24glofwoOdrPkgRlQvSeM/70S114WW7kFZ4tddexOODDqv
         +Acw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=6+cIuotuGRoeKTRevTTGI4gjkiz/uLzAzvq34wXbeMo=;
        b=btUUk8XUVnyAStiw4SetOSA+KEZcwxg8OmUp9HMEFO+NcPlmf1zOkvhl+PRM2uqB/A
         1cWHouEe/FwcooNb6gFRKqjZBwSHqOYM3YA4ebwZ733F/S/nL7xC3ECttxt9zyaFalON
         7JjdS4kNQ2ObUTvd8AOrI7DgoH0Pc4UeZpFWO30GzCFzBzupPoVn71dTXz6VNCREdwqZ
         6qhVxaeyE3+8Xos+aTEBFt9kpIoUeh+V05DFi+9rC79lfSrkCN9t8p9xIiK4rxQ9v6yn
         JDW/2zr6Sch8qsL8GKK1yvbKgtiwwJdab6M8KoiL57O5GRCNj9r2SkTqic9hbB0kQ5Nz
         ANeQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5317jJRrBIF8VVspesmvGkYC7amVt9L5YXCP2sUNcpzoTC6sSUUe
	DIQ9ORZUeoSu6Iu0azqNmb0=
X-Google-Smtp-Source: ABdhPJxQgafrQAj2iDScUCTPZV7dfBQhDz+lYQ84WSXZOWeHKGAjL56dfvXBmw7QweIP4qadtc4ryA==
X-Received: by 2002:a05:6830:17d0:: with SMTP id p16mr3693119ota.127.1616495323314;
        Tue, 23 Mar 2021 03:28:43 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:d54d:: with SMTP id m74ls3634770oig.11.gmail; Tue, 23
 Mar 2021 03:28:43 -0700 (PDT)
X-Received: by 2002:aca:39c6:: with SMTP id g189mr2846877oia.46.1616495322846;
        Tue, 23 Mar 2021 03:28:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1616495322; cv=none;
        d=google.com; s=arc-20160816;
        b=hC9ItOXIOCPSdWNCiCr0/tnSKYaR7dArHoebJeksP4J2OMH5jeNML9fsUExmc1XJCj
         Sijg4P1YNNXSA4X4l7lUhl4nSrSJum6ZwIqhboqrCAkZR76S9O4xQ3tXdcdF/Mn39Vct
         lfLvRLFCAjFfKQnE6ATmp4lJsVDQymSGakaPhDzreVrNP0hLpCFDWLAz2C8Z0fnEVozO
         TYSpKdfLRZJut3guEpR2ueFEmcAlie+AafOoSrPgcEEQhmajx5VaUMI7sH4n7WzexFe4
         7RYQvmqSXWmAesgJnXp9buvac4NjU2EPi1uqf1enUYXu/3bIO30zde8/UqpLSVL20IT/
         a1Zg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :from:date:ironport-sdr:ironport-sdr;
        bh=p8xPQy41KwC5HkVFiJn81Tm8lE4OPeQLroXvrA8UBQ0=;
        b=VAjHDkaWE+veB3OAOYI8xerDw8LVHtWejt3or0jo2BCO735vj74jo61PUL9lcIkuMv
         OC1inHXajC7LuZjHMgjGVJzHv/chFE3amt42A/2fWrMoaipySJ1mBCuAbtTJy6bLx7UG
         3s7K4IdJ5FFEW3EMsFPakvk3dInQeTyv+RPthwKC4dp2dINtRl3XEYFpzLoC0TTG2/GH
         470aIqNSfpFu61ci3N76biEwKLm6cJ3vIDH6kuifq0M452WCm3cckNqCBF/EkREAyQZv
         KOBYiMZj6FVklfRgDoovB4+1Zb9B6ff80ZkISQdenY7Of6bclncgrN2o9W71ivbw2CaM
         Z8nw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.100 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga07.intel.com (mga07.intel.com. [134.134.136.100])
        by gmr-mx.google.com with ESMTPS id x38si1018308otr.3.2021.03.23.03.28.42
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 23 Mar 2021 03:28:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.100 as permitted sender) client-ip=134.134.136.100;
IronPort-SDR: v9alqSgU9rAWSNKFSgrwd3kIKJQB1ttFAGxpXMr99cOpbNUDpYt+sgkIvx93Offb06UmLf+zIa
 dBGR3kgEaFvw==
X-IronPort-AV: E=McAfee;i="6000,8403,9931"; a="254445446"
X-IronPort-AV: E=Sophos;i="5.81,271,1610438400"; 
   d="gz'50?scan'50,208,50";a="254445446"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
  by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 23 Mar 2021 03:28:41 -0700
IronPort-SDR: 7r/Vg5otjvGrjHdfRNI45/t5CHkHkfz+tGqaST5eicDf+5BrLhYgHm1NOHl9Y2HoeMzmCpk66T
 0evij0f25Lcg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,271,1610438400"; 
   d="gz'50?scan'50,208,50";a="414926211"
Received: from lkp-server01.sh.intel.com (HELO 69d8fcc516b7) ([10.239.97.150])
  by orsmga008.jf.intel.com with ESMTP; 23 Mar 2021 03:28:39 -0700
Received: from kbuild by 69d8fcc516b7 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1lOeH8-0000X5-UW; Tue, 23 Mar 2021 10:28:38 +0000
Date: Tue, 23 Mar 2021 18:28:30 +0800
From: kernel test robot <lkp@intel.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com
Subject: ld.lld: error: main.c:(.text+0x53C): relocation R_RISCV_ALIGN
 requires unimplemented linker relaxation; recompile with -mno-relax
Message-ID: <202103231827.iTx2DyPo-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="J/dobhs11T7y2rNN"
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


--J/dobhs11T7y2rNN
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

CC: linux-kernel@vger.kernel.org
TO: "Steven Rostedt (VMware)" <rostedt@goodmis.org>
CC: Ingo Molnar <mingo@kernel.org>
CC: "Peter Zijlstra (Intel)" <peterz@infradead.org>

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
head:   84196390620ac0e5070ae36af84c137c6216a7dc
commit: d25e37d89dd2f41d7acae0429039d2f0ae8b4a07 tracepoint: Optimize using static_call()
date:   7 months ago
config: riscv-randconfig-r006-20210322 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 14696baaf4c43fe53f738bc292bbe169eed93d5d)
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
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=riscv 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

   ld.lld: error: arch/riscv/kernel/head.o:(.head.text+0x0): relocation R_RISCV_ALIGN requires unimplemented linker relaxation; recompile with -mno-relax
   ld.lld: error: arch/riscv/kernel/head.o:(.head.text+0xA): relocation R_RISCV_ALIGN requires unimplemented linker relaxation; recompile with -mno-relax
   ld.lld: error: arch/riscv/kernel/head.o:(.head.text+0x40): relocation R_RISCV_ALIGN requires unimplemented linker relaxation; recompile with -mno-relax
   ld.lld: error: arch/riscv/kernel/head.o:(.head.text+0x4A): relocation R_RISCV_ALIGN requires unimplemented linker relaxation; recompile with -mno-relax
   ld.lld: error: arch/riscv/kernel/head.o:(.head.text+0x88): relocation R_RISCV_ALIGN requires unimplemented linker relaxation; recompile with -mno-relax
   ld.lld: error: arch/riscv/kernel/head.o:(.head.text+0x10A): relocation R_RISCV_ALIGN requires unimplemented linker relaxation; recompile with -mno-relax
   ld.lld: error: arch/riscv/kernel/head.o:(.init.text+0x0): relocation R_RISCV_ALIGN requires unimplemented linker relaxation; recompile with -mno-relax
   ld.lld: error: main.c:(.text+0x0): relocation R_RISCV_ALIGN requires unimplemented linker relaxation; recompile with -mno-relax
   ld.lld: error: main.c:(.text+0x54): relocation R_RISCV_ALIGN requires unimplemented linker relaxation; recompile with -mno-relax
   ld.lld: error: main.c:(.text+0xA8): relocation R_RISCV_ALIGN requires unimplemented linker relaxation; recompile with -mno-relax
   ld.lld: error: main.c:(.text+0x104): relocation R_RISCV_ALIGN requires unimplemented linker relaxation; recompile with -mno-relax
   ld.lld: error: main.c:(.text+0x1CA): relocation R_RISCV_ALIGN requires unimplemented linker relaxation; recompile with -mno-relax
   ld.lld: error: main.c:(.text+0x264): relocation R_RISCV_ALIGN requires unimplemented linker relaxation; recompile with -mno-relax
   ld.lld: error: main.c:(.text+0x308): relocation R_RISCV_ALIGN requires unimplemented linker relaxation; recompile with -mno-relax
   ld.lld: error: main.c:(.text+0x35A): relocation R_RISCV_ALIGN requires unimplemented linker relaxation; recompile with -mno-relax
   ld.lld: error: main.c:(.text+0x3DE): relocation R_RISCV_ALIGN requires unimplemented linker relaxation; recompile with -mno-relax
   ld.lld: error: main.c:(.text+0x45E): relocation R_RISCV_ALIGN requires unimplemented linker relaxation; recompile with -mno-relax
   ld.lld: error: main.c:(.text+0x4E2): relocation R_RISCV_ALIGN requires unimplemented linker relaxation; recompile with -mno-relax
>> ld.lld: error: main.c:(.text+0x53C): relocation R_RISCV_ALIGN requires unimplemented linker relaxation; recompile with -mno-relax
   ld.lld: error: main.c:(.init.text+0x0): relocation R_RISCV_ALIGN requires unimplemented linker relaxation; recompile with -mno-relax
   ld.lld: error: too many errors emitted, stopping now (use -error-limit=0 to see all errors)

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202103231827.iTx2DyPo-lkp%40intel.com.

--J/dobhs11T7y2rNN
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--J/dobhs11T7y2rNN--
