Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBCXYVXXAKGQECSCYONY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yw1-xc3d.google.com (mail-yw1-xc3d.google.com [IPv6:2607:f8b0:4864:20::c3d])
	by mail.lfdr.de (Postfix) with ESMTPS id AB607FA779
	for <lists+clang-built-linux@lfdr.de>; Wed, 13 Nov 2019 04:44:11 +0100 (CET)
Received: by mail-yw1-xc3d.google.com with SMTP id r185sf781166ywh.3
        for <lists+clang-built-linux@lfdr.de>; Tue, 12 Nov 2019 19:44:11 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573616650; cv=pass;
        d=google.com; s=arc-20160816;
        b=JB59+VQUpdljO0fRavSAugdPo0h8LL8qHV5/BRro/uexfaJ7gJoVmxPviuISxIQdE6
         geATvhD39ZyT/J/wSySFaBEGgdWRhMoIYdMFZ1EL/GQwUmnfJM+URl1RuDCJwSB25O5Y
         w7+TQmwEfmC5w9mBUpmGKjhNpBqEc3GPX4fDmbrZImvw6NwwtrA3tzL4AY0H/pyVVbx5
         JMlcV3Jcrul2nLXkMWtm1oonvA0DuALzQ0Ia4UtZLLEXNQ1znKMcWaC2/Mr8H7mYKVJq
         cp4k0QNMe7AL/FDFFm9pLsijQO09dFblSbsdn47FlsYU2zVrlsoGynMxEJKJ0Vn52KQc
         Qk6A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=8Ujg2Tol8JhKyRKiQYEnagYRGYdcVMiYaEiNz1jHWEE=;
        b=Zdlj+krB9GlXDQSJ7xeFOulFxdgaBD6ORWHklgz3E2X2Zvcoe98rfU3FjBfzwiEL9O
         uib1LpTIeODFcKi7zTTO73nYajSKYOBsd93e8YCfOA5xWTg6PhaS19Lgqs/hlSridSmt
         YUZy8S93hCHs3eN+7z7jNoZYELyV80fUBSrnoyQWuAfDT/96wtAwoTfUEbvAgnCErOxm
         WaYG/4JYYkXky3Tq9qSU1A9KhfXOAxl4wjgNUPs0qxS8CHPu6k/6mFlN+WT3UZ5aTIJi
         fVLRCnXsrOR0C7s4ALMekFDtTfLAyW3eiiowm2VnNGwk4fhW84z3qpiUYvikxOVssut+
         UIig==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.31 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=8Ujg2Tol8JhKyRKiQYEnagYRGYdcVMiYaEiNz1jHWEE=;
        b=rltp3FYArjr8PmT0iHIziHz5H4Z/+zc0gqnZIVHkAj5TQcnhMB7oxt6of5n6RS3IQn
         NAEl+wDllWX6yze/VSpL6IMx6tz5ogMXq5eDd3G64+xgJow32WAGo/+Czj1I7nh6evgJ
         fhrJMOGsTsXnscbUEw0GNBaJfMcbHD52PAFSTt7fr8QZ2ZuiRyTl3wCySNDPKWcjVmbx
         qb5cI+q9p5kkwIQkrSMG+idKONDqC31KWp34I3GsKwWPk/L1KPlsCiQyFViD2KcBBQwa
         EqJ0y0EOt5aHQPQRBXY91FInQSECnZ47nBUTkKI6kcmIr9ugmzjPsbsyLeWSeCfVJyZR
         paeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8Ujg2Tol8JhKyRKiQYEnagYRGYdcVMiYaEiNz1jHWEE=;
        b=Q+3/gBCUTfNTuPFgqGiJ7TaeCAjOvFl/vD6tWmDVOu3VMjKXNCXuSRKZ5hHNVZoEik
         CGtYt453IC0IJxbQ1J7oRHuF2us1ZWv1QDktHhyALGaIIAAeuKcLPT8/dGDNtN18PfrG
         OMzkAh0cV1P2tVgRTVEfaad+q/jfyJw4H6iEX+FPGZeVRSukWU+/uxODvoa3XGcJv53J
         m3BzglQ8iN1184tzfrt1ZsnAX/KxfXJaHywg6rOff2CAYoMUPWTdM4p6USKXIk/V/jpC
         NS+60Tkk6HhEj19WrJfh7Zl4+V9H6IkjwomRsKyWBTldi4YXhYy+zrQ7ME8sC9lXf65W
         BF4Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUcu5rmoO107uQ8ZSZjuilEEeqsonDpsm53+wROHRKLZab3+vt/
	o59OWO2BwW+64bS3udVhro4=
X-Google-Smtp-Source: APXvYqzidxXvy6pQ05JHkYX2OE5Rgge7CUWQoekdQMm8lf/RnL5OouyMQf81mCCWp83kJ6TU0kKGvw==
X-Received: by 2002:a25:d897:: with SMTP id p145mr1053607ybg.514.1573616650590;
        Tue, 12 Nov 2019 19:44:10 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:adcd:: with SMTP id d13ls231407ybe.10.gmail; Tue, 12 Nov
 2019 19:44:10 -0800 (PST)
X-Received: by 2002:a25:ca4c:: with SMTP id a73mr1183280ybg.234.1573616650224;
        Tue, 12 Nov 2019 19:44:10 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573616650; cv=none;
        d=google.com; s=arc-20160816;
        b=phQQLY7BEWrW0bwiWdAHHN1tPRmcuORQ8DgBvFTPS0sH+PWvtgu2f5FmIjbrVojMjF
         zXXCIo2P0m27ifzLW1V4ldbnCyYrlUVM7sKFByih8LH9g4NDG0J1guE4KUo+MEJ6lLwL
         qzTIKjvKz+q2UzcxW95u/lIvNrnTkCbVkrss7PMsi63uj7f8exim11RwOKGDZ4ku/daS
         +YclhXDd8UlzGRNKvNPijhl1pwpu7PyR3S58maXgt2bicwJKAsjj3h+KIYRxY10G95K8
         13aBhhVnVLuxDInXX55bokqjr4mG2tcmLSmRmBKDQlMPyMey0jEKJZtQS291YZ6nPQWm
         qGgg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date;
        bh=gZipwluYVZuFqx9F2yIANyMY11I7os9AyQzUmhmBU1I=;
        b=hflS2FbapCGIfFoojL3E55RlAn0/m5VZ4PhNOtSSvgh6X0tCywE1dS053zatHcFgb0
         UGtWHLOL0YAfXcCi9cCy3SFpmYYkXrN1nqaI1LOYWXOqwxHkcNZMv3TOo1hJE4MKUCio
         TcHUzReJj2UOPae57iuXXjP/mmGIkocJ/FPcjAU5xT1rpjN14GZ7GnNldVABxBfRVnx4
         5Iiq3eH1NK6T05UuiYgzsUeTv2aaov8/A53WfDwiNI8Y+SmlwTWwn5E8warwllKzYyyi
         N9dxvWFdMyWqFHXuEXUOGzQfoxDxFhvVGZMFddJvvHJNpph3AhoSvNlb3AHOVzQiG5HK
         2GtQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.31 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga06.intel.com (mga06.intel.com. [134.134.136.31])
        by gmr-mx.google.com with ESMTPS id 5si60608ybl.1.2019.11.12.19.44.09
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 12 Nov 2019 19:44:10 -0800 (PST)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.31 as permitted sender) client-ip=134.134.136.31;
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
  by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 12 Nov 2019 19:44:08 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,299,1569308400"; 
   d="gz'50?scan'50,208,50";a="379094627"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
  by orsmga005.jf.intel.com with ESMTP; 12 Nov 2019 19:44:07 -0800
Received: from kbuild by lkp-server01 with local (Exim 4.89)
	(envelope-from <lkp@intel.com>)
	id 1iUjZf-0004L6-A7; Wed, 13 Nov 2019 11:44:07 +0800
Date: Wed, 13 Nov 2019 11:43:41 +0800
From: kbuild test robot <lkp@intel.com>
To: kbuild@lists.01.org
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com
Subject: [tip:WIP.x86/iopl 19/20] common.c:undefined reference to
 `tss_update_io_bitmap'
Message-ID: <201911131140.c71IfSxu%lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="dw4q3cjmw5l7dru3"
Content-Disposition: inline
X-Patchwork-Hint: ignore
User-Agent: NeoMutt/20170113 (1.7.2)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 134.134.136.31 as permitted
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


--dw4q3cjmw5l7dru3
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

CC: kbuild-all@lists.01.org
CC: linux-kernel@vger.kernel.org
CC: x86@kernel.org
TO: Thomas Gleixner <tglx@linutronix.de>

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/tip/tip.git WIP.x86/iopl
head:   61eced22f05a33e1a9a1109854f1367d69fbe305
commit: aa614e1e0ffcf0c7dc13361b36612088a6054854 [19/20] x86/ioperm: Extend IOPL config to control ioperm() as well
config: x86_64-allnoconfig (attached as .config)
compiler: clang version 10.0.0 (git://gitmirror/llvm_project 335ac2eb662ce5f1888e2a50310b01fba2d40d68)
reproduce:
        git checkout aa614e1e0ffcf0c7dc13361b36612088a6054854
        # save the attached .config to linux build tree
        make ARCH=x86_64 

If you fix the issue, kindly add following tag
Reported-by: kbuild test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

   ld: arch/x86/entry/common.o: in function `prepare_exit_to_usermode':
>> common.c:(.text+0xb3): undefined reference to `tss_update_io_bitmap'
   ld: arch/x86/kernel/process.o: in function `exit_thread':
>> process.c:(.text+0x4c): undefined reference to `io_bitmap_exit'
   ld: arch/x86/kernel/process.o: in function `copy_thread_tls':
>> process.c:(.text+0x1e2): undefined reference to `io_bitmap_share'

---
0-DAY kernel test infrastructure                 Open Source Technology Center
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org Intel Corporation

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/201911131140.c71IfSxu%25lkp%40intel.com.

--dw4q3cjmw5l7dru3
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
AA==

--dw4q3cjmw5l7dru3--
