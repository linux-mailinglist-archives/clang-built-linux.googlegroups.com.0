Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBKMI476AKGQEA54HJUQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3d.google.com (mail-yb1-xb3d.google.com [IPv6:2607:f8b0:4864:20::b3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 1230929D1A8
	for <lists+clang-built-linux@lfdr.de>; Wed, 28 Oct 2020 20:19:07 +0100 (CET)
Received: by mail-yb1-xb3d.google.com with SMTP id w8sf157327ybj.14
        for <lists+clang-built-linux@lfdr.de>; Wed, 28 Oct 2020 12:19:06 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603912746; cv=pass;
        d=google.com; s=arc-20160816;
        b=wqI6H6VrcR41I1co5X7mFRKZGixOg3qp59RR8K4sjz2phHT6GYIOZ7Sr1/n+8efdW0
         CkTiJjVf4n48JBmPvilvWxuTd9Gp/8Cd9Em0BYoWaggMqTqLmb1ppebsh/OBkFDl96I9
         GK9Av1mZKVXfBSpBmNVjrUk/EBCOAnVGlGBOr/Bx7kn6JEukdAoiCLmERGU0MMdO+0a9
         kn/D0eX35Pd3Ecb6mNFAK7hEJw1PwZacCjWuJWbL8ivxKRuJdu/07HhLCcGeHwI07OI3
         ZERHmRqcLfAWj8riXix+ecJC+rt33a0PAvx4xHixWx5Fm872oHyeZR0KcWMh+JqMRSHX
         fNxw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=/1Ug0jgCKn6eBYRYz5dvq5EcNCgj4WQ2uoV/v0hWpsY=;
        b=wpYZzyKJzl+57UYm2fXeXkCDdUbgQDVwzuHAgBNp1aqPlxEMGKb8nm8z+Tf0c65nTh
         stg4Tq/LGBdBrW/7/Z9chz+TcUt6e3JSE8W8TFYEkAQBalC/6zq38eOGvOQQNT2e0YQn
         ifQ8d9MSG/nfgRp9LDFr46he+gxeXo7NUECHBna2wU46z4d1NFqJVji/Fd6TFDtMbp94
         QABsZOvCcyl1jVI0Y5QdBBmmpcmSoEhUhpdW9p82ILKY/s48vO1oJpbOzoOAlh7dNgBQ
         lxza7+R9OcXJjmDO17xX6bc6sODFFLyEgYUySncsgS0/takckXMbhJ4YNW+DXcDo41y8
         3qtw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.20 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=/1Ug0jgCKn6eBYRYz5dvq5EcNCgj4WQ2uoV/v0hWpsY=;
        b=iFCH0NrZnylR6G7lOsAjJuTIGHjKgE4WxM22VnxaV4bqmHoHYx1DrXsvSEQs75NN4S
         0rdVeU/yS/4Tbm7nmqNkm5D9uF1cOMXlzG+RS0/4RTsVHy8p3tO0i4s95yCkSXYYsj1Y
         DASteAawgnHld34LKcHIMFY4WBhanFUv8bJffIBCFLwBQOQ31BcFLddYlYQvvWZrq/hr
         julQV+e2vQyvcJ4uxQHYMpS1yZDeXYFfGBh9SPFeXFjcqVQq+rGmRbsHVWIlzjooHQeS
         NXSb4RkaZd136dI5DnLLZ9gCM7g38b6iVmeBZdUfI6aQ8QIymqmndIEGGcv59vgIG4U2
         wKsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=/1Ug0jgCKn6eBYRYz5dvq5EcNCgj4WQ2uoV/v0hWpsY=;
        b=IxAXDKsLE5t3/YXro5m82Ue3mD1fwpQIw58arPImrbwQxQMDcHr7ImQ8iJ7wnrT+nO
         prvAGkgXGHwpjEy1pilhm0zhrF1aj/ieJo6n+kkV7Vf4Vn1X4e/YuoHDpoXyBr3rxUgp
         vjcNSWy3ky/1zr5lmDu3wHBUTVrXWTvdu/481lK4B7ETSVZCzVssrl5GS4ayAE3cpZ83
         ZPdS+B1Bs5fGhXFQse6094LoFV+XT1DsTf01+tvtUND5HBpZScJmapBYu5oCD7RW+0uy
         io6w5v45IhQV8Cu4KzyCIASTHtclLtA2NyJP1zGOKdRrxV+3NYCRV+Tnj1AXQkcBO7Ls
         4KdA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532NV69vSX/NXBEePHY1U8VsrGaILBpNtnUk+GoYnzwna14IH+pp
	f1GIOvzeIeie5ayuzR1bfQE=
X-Google-Smtp-Source: ABdhPJyrqB/qzt9dQDc/ctbgtj5q8JwPD1upB77ZVpwGYzNj6a1cNZh6kVvXorEPoiplVr3nXY3U1g==
X-Received: by 2002:a25:2e4c:: with SMTP id b12mr1049798ybn.17.1603912746006;
        Wed, 28 Oct 2020 12:19:06 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6902:4e3:: with SMTP id w3ls129417ybs.2.gmail; Wed, 28
 Oct 2020 12:19:05 -0700 (PDT)
X-Received: by 2002:a25:487:: with SMTP id 129mr1050905ybe.452.1603912745373;
        Wed, 28 Oct 2020 12:19:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603912745; cv=none;
        d=google.com; s=arc-20160816;
        b=Rw8/l7iK5dToNRu0vu9zN9UiJ1Erbvq6scbAXeohDcQa8Iz0uedu59kFkvywCOddkT
         lKKlcxi/qpKti6GPsDU+nSA6EI6xri5UP/bavgsXL6vyh87z5h7+6rA9ji4LxpLuGXXV
         StlNQAcAVVrvelrm7rbkj9bRKGjLtKPlZqiIf/qRhViIz36k44p2H3J+hVi3MNStHCiZ
         bRjQL1OBxRSToh/jbZSkZGFuJubILqge2QrfghjOZGg7kodQ77+Bsx8TZ0y0P+MJ0a9w
         v6R52fqpdZ4zJFO4I9+xjKV6feEG0sZm1r1OIn1EJA8CdwyGnVlqZWOXBs8RZ5VuPLR2
         CgNw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :from:date:ironport-sdr:ironport-sdr;
        bh=IDkUhF0F46+C6xs3lw6MgakuPzmtkOkMfbBiEZnom0s=;
        b=1A5JDH2i8toCtf9uhcDxInL97zm4b82x2CQ3L7s29GUEh9rFuLGbxxtIueMfp8K3WO
         U2mHcupSWlAAPOeDLainx9s4ktOg9aiSX0CVirVvl+hxFLRv8LRwZuCy0sLQykM6vyS+
         OrrS/ZlIbMxjjNTSNbCpHfL9AnW29dXBC2buy04zgHgi4X4nAwcuYlpWiSQiuV2dXZ2j
         6RIQZsHXqQegIhlFTxFkYMwXmcjoolDudIAuj9N5/VJorj3iU3DTXA6TTc08wtl6jPaF
         92T26Dbf+H17EJHHptyfO3QwwqSslLwHdTxSAQ9WgvkKRT+5j1SvJeqLDJw0OK9GAvoJ
         RY6Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.20 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga02.intel.com (mga02.intel.com. [134.134.136.20])
        by gmr-mx.google.com with ESMTPS id q4si21229ybk.3.2020.10.28.12.19.04
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 28 Oct 2020 12:19:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.20 as permitted sender) client-ip=134.134.136.20;
IronPort-SDR: jTZHdte+bXtgY0e61PJck7FKhcHz3m7I1Vm4897qKD+mws0K/95qPzmkrYbskRX6v5TnauisTY
 a1Bzn0WybpNg==
X-IronPort-AV: E=McAfee;i="6000,8403,9788"; a="155292055"
X-IronPort-AV: E=Sophos;i="5.77,427,1596524400"; 
   d="gz'50?scan'50,208,50";a="155292055"
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
  by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 28 Oct 2020 12:19:03 -0700
IronPort-SDR: /X6jTcxkaYN+DxVWgevNulFd2VrpZIS4GdGpvaodcK5fegziKjwpBMf1uhFwyspSi1iiP3RTL/
 7eq8PqbcX4EQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,427,1596524400"; 
   d="gz'50?scan'50,208,50";a="361229251"
Received: from lkp-server02.sh.intel.com (HELO 0471ce7c9af6) ([10.239.97.151])
  by FMSMGA003.fm.intel.com with ESMTP; 28 Oct 2020 12:19:02 -0700
Received: from kbuild by 0471ce7c9af6 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1kXqyL-00009J-90; Wed, 28 Oct 2020 19:19:01 +0000
Date: Thu, 29 Oct 2020 03:18:06 +0800
From: kernel test robot <lkp@intel.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com
Subject: ld.lld: error: include/trace/events/initcall.h:10:(.text+0xA8):
 relocation R_RISCV_ALIGN requires unimplemented linker relaxation; recompile
 with -mno-relax
Message-ID: <202010290304.BqAtluUx-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="ZPt4rx8FFjLCG7dd"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 134.134.136.20 as permitted
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


--ZPt4rx8FFjLCG7dd
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

CC: linux-kernel@vger.kernel.org
TO: "Steven Rostedt (VMware)" <rostedt@goodmis.org>
CC: Ingo Molnar <mingo@kernel.org>
CC: "Peter Zijlstra (Intel)" <peterz@infradead.org>

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
head:   ed8780e3f2ecc82645342d070c6b4e530532e680
commit: d25e37d89dd2f41d7acae0429039d2f0ae8b4a07 tracepoint: Optimize using static_call()
date:   8 weeks ago
config: riscv-randconfig-r004-20201028 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project 50dfa19cc799ae7cddd39a95dbfce675a12672ad)
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

   ld.lld: error: arch/riscv/kernel/head.S:168:(.head.text+0x0): relocation R_RISCV_ALIGN requires unimplemented linker relaxation; recompile with -mno-relax
   ld.lld: error: arch/riscv/kernel/head.S:148:(.head.text+0xA): relocation R_RISCV_ALIGN requires unimplemented linker relaxation; recompile with -mno-relax
   ld.lld: error: arch/riscv/kernel/head.S:148:(.head.text+0x40): relocation R_RISCV_ALIGN requires unimplemented linker relaxation; recompile with -mno-relax
   ld.lld: error: arch/riscv/kernel/head.S:148:(.head.text+0x4A): relocation R_RISCV_ALIGN requires unimplemented linker relaxation; recompile with -mno-relax
   ld.lld: error: arch/riscv/kernel/head.S:148:(.head.text+0x4C): relocation R_RISCV_ALIGN requires unimplemented linker relaxation; recompile with -mno-relax
   ld.lld: error: arch/riscv/kernel/head.S:168:(.init.text+0x0): relocation R_RISCV_ALIGN requires unimplemented linker relaxation; recompile with -mno-relax
   ld.lld: error: arch/riscv/kernel/head.S:176:(.init.text+0x2E): relocation R_RISCV_ALIGN requires unimplemented linker relaxation; recompile with -mno-relax
   ld.lld: error: arch/riscv/kernel/head.S:188:(.init.text+0xC4): relocation R_RISCV_ALIGN requires unimplemented linker relaxation; recompile with -mno-relax
   ld.lld: error: init/main.c:664:(.text+0x0): relocation R_RISCV_ALIGN requires unimplemented linker relaxation; recompile with -mno-relax
   ld.lld: error: include/trace/events/initcall.h:10:(.text+0x54): relocation R_RISCV_ALIGN requires unimplemented linker relaxation; recompile with -mno-relax
>> ld.lld: error: include/trace/events/initcall.h:10:(.text+0xA8): relocation R_RISCV_ALIGN requires unimplemented linker relaxation; recompile with -mno-relax
   ld.lld: error: include/trace/events/initcall.h:10:(.text+0x104): relocation R_RISCV_ALIGN requires unimplemented linker relaxation; recompile with -mno-relax
   ld.lld: error: include/trace/events/initcall.h:27:(.text+0x20A): relocation R_RISCV_ALIGN requires unimplemented linker relaxation; recompile with -mno-relax
   ld.lld: error: include/trace/events/initcall.h:27:(.text+0x30A): relocation R_RISCV_ALIGN requires unimplemented linker relaxation; recompile with -mno-relax
>> ld.lld: error: include/trace/events/initcall.h:27:(.text+0x3E0): relocation R_RISCV_ALIGN requires unimplemented linker relaxation; recompile with -mno-relax
   ld.lld: error: include/trace/events/initcall.h:27:(.text+0x490): relocation R_RISCV_ALIGN requires unimplemented linker relaxation; recompile with -mno-relax
   ld.lld: error: include/trace/events/initcall.h:48:(.text+0x570): relocation R_RISCV_ALIGN requires unimplemented linker relaxation; recompile with -mno-relax
   ld.lld: error: include/trace/events/initcall.h:48:(.text+0x62A): relocation R_RISCV_ALIGN requires unimplemented linker relaxation; recompile with -mno-relax
   ld.lld: error: include/trace/events/initcall.h:48:(.text+0x996): relocation R_RISCV_ALIGN requires unimplemented linker relaxation; recompile with -mno-relax
>> ld.lld: error: include/trace/events/initcall.h:48:(.text+0x9E8): relocation R_RISCV_ALIGN requires unimplemented linker relaxation; recompile with -mno-relax
   ld.lld: error: too many errors emitted, stopping now (use -error-limit=0 to see all errors)

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202010290304.BqAtluUx-lkp%40intel.com.

--ZPt4rx8FFjLCG7dd
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--ZPt4rx8FFjLCG7dd--
