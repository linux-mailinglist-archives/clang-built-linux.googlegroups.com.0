Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBGMJ7GCAMGQEXZWN4PY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x538.google.com (mail-pg1-x538.google.com [IPv6:2607:f8b0:4864:20::538])
	by mail.lfdr.de (Postfix) with ESMTPS id BC64A380654
	for <lists+clang-built-linux@lfdr.de>; Fri, 14 May 2021 11:36:27 +0200 (CEST)
Received: by mail-pg1-x538.google.com with SMTP id b17-20020a63eb510000b029021a1da627besf3566467pgk.12
        for <lists+clang-built-linux@lfdr.de>; Fri, 14 May 2021 02:36:27 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620984986; cv=pass;
        d=google.com; s=arc-20160816;
        b=teZmONoIEcHUMlo6C25g04mO0+/kfmAQf4i0m/QnZmi5IaEL8jlQLHmJmejAakBiOk
         utJ8zT+j0EYgCg+qZaYieYQfG6utGWiDw9BeLuVWTrMTFy4TBlSMuJAPNc+eF7KJHLYq
         K3m//XmYU0RmQQSbWuD6VSR4S8P14CT4koQNFDpVFpIiHezdJv78C48q0Ro1AoVRWV/L
         c5UG67OV8grfJs4XOKZtGvtPBIeEyO8XTOhsuGQ9ygo+wmP2yga/25g3hRgrbT31Uvbt
         Kbawom6rgow3eg9/fRC1gLFQUTdynT91235wRM6kt3zZghFmk8VuTapPAPZ1Z2Q1mb6P
         pn/Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=e8xXiWjVTd67sSAaL4fh5aiXZzJVb+k6h33gn7AL5PY=;
        b=E6OkWhFKhLSixfaH9jzQ1vWyLR6ylc6XDO1tb9yfW/X9A1vAJhfvoA5wLd9FIQ7vQ5
         kT/zUI1fTGveMiqw8YliOIotva0/5xEh1c5ss0G1lv+jVZtH2ZRwCyiRIRL6wwEPx44w
         rBZqr2h6/2YaGIPTkbk3EDTWAX8OiTyjGZE/fiG5aXQssizH402oqw3DNiTGuykhGV+b
         zA71rfnahGgJ2or23QZn8gUEXnvjtTvOiRTrSRk8kPy0K9A2Am4V4bsu9kh5xKuVURuq
         dIhMMNNhpmUuW2c1Ruz2O7cTIeQp0gGuWctB0hZLFBNRQCx1THgD323QKgRgAEsk7BmY
         G7aQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.88 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=e8xXiWjVTd67sSAaL4fh5aiXZzJVb+k6h33gn7AL5PY=;
        b=Tk2CQr2RG4SSt+cQzZXKcg/HhWB50wMH8t924aUqcDGDJtwK9oI9QdrEg8B0qS3uay
         xE4I1EOCHSVKP1ZmOP0Y9VSpw5OTBYlfg2QIJBF8obt2iYoiAORbRO/4JUnwnladTFdK
         lNVRDT/RPKuTQXhlmGQXfVBilknCdghwMRs0dTzgT3Bs4ecCpgee1RQQZWBnE2hxIxHy
         CXfsk87c6xJF7xN9pt1q3Khd6uishTRoqKxedxesy/ijgGuqBxbVuYlciZUPOp3LkmYv
         bf31FaoU/LCMf7kvPeBCup+gBR6AaY3ysbaW/kEUWR+BECEuKHBfkDlYzgJrfRFHrofj
         4YZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=e8xXiWjVTd67sSAaL4fh5aiXZzJVb+k6h33gn7AL5PY=;
        b=gh5LHRsbpWovoX8g0hTFUjHIkVqAgCFXnMsI/Uk30J+9aVHQeFmtHlVJRjrHvb5bzI
         pEp9FBI5+3h3WBqtN6B+uzTFcj+hOLDLOHcw38wJNQZsAtnZtDGspayWKj79DxT3mz8z
         CFSYvM1ctk9Oj9TjSNJCkrfsP/yb2ESbPwktehoBl4vt66AUvZ6VEak0P3cqqwBiuhD7
         oJ5OTUkM4U7lrqseHUblOJSLMUGA/BLfnbrlEOSYKdnAAaTbe6LwFY5o8s6nK8T9JDKF
         WBmPkabisJhkeQPlZptWnvF/OND3xokfgZKIKFQPlHagYPCDmp63ZBQ8jGJn9vnTkZ8Y
         6Keg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531L0kdnQQPdEADFod3U6BR5MBu7g2AFt0w33ih4QMZAbcmjqm/W
	XjFnBoFWPoS9iOixYxockIY=
X-Google-Smtp-Source: ABdhPJxPKL+1kzzsq3f3gXSAiZNO0xjc1O6EcwuTBWULcPLvnw1uwuth+GKhAhdbqMKjMSC7kOY0KQ==
X-Received: by 2002:a63:65c5:: with SMTP id z188mr45999567pgb.276.1620984986077;
        Fri, 14 May 2021 02:36:26 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:8c8c:: with SMTP id t12ls4694410plo.1.gmail; Fri, 14
 May 2021 02:36:25 -0700 (PDT)
X-Received: by 2002:a17:90a:4298:: with SMTP id p24mr10205566pjg.144.1620984985087;
        Fri, 14 May 2021 02:36:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620984985; cv=none;
        d=google.com; s=arc-20160816;
        b=caeSkgZRDd+aGQnXqxNt12Pko5Q3hTLSMHOwGMjz01cd9SWHUMZu2/x0YU+I3M1Yn/
         D6W1GaFIh37ug8/Vf8IkQQTrjCnjNC86UJwg+j5gw3FW5vOeOgHOHqTxVv4crm1xv/2Z
         Nppo7/TtxmPtsDnTFp0w1qP+sgjivXFoxfo2V5wAz9WGOUuc6w/FTXOvoCLQluHS0XMg
         92lfrAPULN40Ei9xfQ7bflarfcrvgUdBxNrMrFH8r1WJJk2GaxhmzdZkZCKuniK86NT1
         lVy5Jv/caga92/pFeADY3PU/cVcc3Ub7xD+6Vu66+FkifR0W3Bn3VpdF3Rvg18Ij4q1H
         CNEw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=mcLFUcdmI8ebV/7kAH8MuUMdLVhm6kX8+AHDLEicGj8=;
        b=W/FoHxv0YNbsZCV4lZaHpQWFU9nj56EjC/+L4QDBGS0eDKJ+boPoy74DTtdBXBKlEY
         uC73m+KnnbSdUZTDDGXZ7k5NkVHS2VYeAX2V13lUfxl9pvyqQ9bLRb4qdBAxWIGwT954
         iys53g+q6AxajNGMaquYSXMIaXIvcubSPyvACaoAvcz3WszTzKjwOUreWzXKtoH0cTtP
         iJFgE6VEYp1jbgs3kTn4lVPFxRuNtwA+hSmoBk33uftXlzMFLzX0+Q/v4hqM/xEg0boO
         sIkPQQvEjZUCBdm/6vZCGT1FV00kydEZKnCtv2nDY1mOPVSOtiKzsYrRDQjTKnYdCpnu
         9G2g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.88 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga01.intel.com (mga01.intel.com. [192.55.52.88])
        by gmr-mx.google.com with ESMTPS id b17si551325pgs.1.2021.05.14.02.36.24
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 14 May 2021 02:36:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.88 as permitted sender) client-ip=192.55.52.88;
IronPort-SDR: +dLaJI3Bo8p8YD394QEaiObZuQlT/D29f/8IOsHF1QzCzxyoZx2reyV+JB0eqNDd/mOdXXusq5
 rKu9349O70ZQ==
X-IronPort-AV: E=McAfee;i="6200,9189,9983"; a="221156866"
X-IronPort-AV: E=Sophos;i="5.82,299,1613462400"; 
   d="gz'50?scan'50,208,50";a="221156866"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
  by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 14 May 2021 02:36:24 -0700
IronPort-SDR: 4gwf8rlj5bAZZ9J+OxguWcOaCIAU/35avlBLe0542wEYvqCQvQ1piSqpVUpbEIfVMxz70EhbNJ
 hhJhtggXvflA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,299,1613462400"; 
   d="gz'50?scan'50,208,50";a="610711825"
Received: from lkp-server01.sh.intel.com (HELO ddd90b05c979) ([10.239.97.150])
  by orsmga005.jf.intel.com with ESMTP; 14 May 2021 02:36:21 -0700
Received: from kbuild by ddd90b05c979 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1lhUF3-0000fe-9P; Fri, 14 May 2021 09:36:21 +0000
Date: Fri, 14 May 2021 17:34:56 +0800
From: kernel test robot <lkp@intel.com>
To: Marc Zyngier <maz@kernel.org>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	linux-arm-kernel@lists.infradead.org
Subject: [arm-platforms:irq/domain_cleanup 14/20]
 include/linux/irqdesc.h:56:25: error: field has incomplete type 'struct
 irq_common_data'
Message-ID: <202105141750.0vepUNpb-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="OgqxwSJOaUobr8KG"
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


--OgqxwSJOaUobr8KG
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/maz/arm-platforms.git irq/domain_cleanup
head:   76a98e310bbd7bada3f24d6fda08858460fd6cd4
commit: 5dd760fc3140b85b7d8cf1ad003238c5a223fc76 [14/20] irqdomain: Introduce irq_resolve_mapping()
config: mips-randconfig-r004-20210514 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 425781bce01f2f1d5f553d3b2bf9ebbd6e15068c)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install mips cross compiling tool for clang build
        # apt-get install binutils-mips-linux-gnu
        # https://git.kernel.org/pub/scm/linux/kernel/git/maz/arm-platforms.git/commit/?id=5dd760fc3140b85b7d8cf1ad003238c5a223fc76
        git remote add arm-platforms https://git.kernel.org/pub/scm/linux/kernel/git/maz/arm-platforms.git
        git fetch --no-tags arm-platforms irq/domain_cleanup
        git checkout 5dd760fc3140b85b7d8cf1ad003238c5a223fc76
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross W=1 ARCH=mips 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

   In file included from arch/mips/kernel/asm-offsets.c:17:
   In file included from include/linux/suspend.h:5:
   In file included from include/linux/swap.h:9:
   In file included from include/linux/memcontrol.h:13:
   In file included from include/linux/cgroup.h:26:
   In file included from include/linux/kernel_stat.h:9:
   In file included from include/linux/interrupt.h:11:
   In file included from include/linux/hardirq.h:11:
   In file included from arch/mips/include/asm/hardirq.h:16:
   In file included from include/asm-generic/hardirq.h:17:
   In file included from include/linux/irq.h:23:
   In file included from arch/mips/include/asm/irq.h:14:
   In file included from include/linux/irqdomain.h:35:
>> include/linux/irqdesc.h:56:25: error: field has incomplete type 'struct irq_common_data'
           struct irq_common_data  irq_common_data;
                                   ^
   include/linux/irqdesc.h:56:9: note: forward declaration of 'struct irq_common_data'
           struct irq_common_data  irq_common_data;
                  ^
>> include/linux/irqdesc.h:57:19: error: field has incomplete type 'struct irq_data'
           struct irq_data         irq_data;
                                   ^
   include/linux/irqhandler.h:11:8: note: forward declaration of 'struct irq_data'
   struct irq_data;
          ^
   In file included from arch/mips/kernel/asm-offsets.c:17:
   In file included from include/linux/suspend.h:5:
   In file included from include/linux/swap.h:9:
   In file included from include/linux/memcontrol.h:13:
   In file included from include/linux/cgroup.h:26:
   In file included from include/linux/kernel_stat.h:9:
   In file included from include/linux/interrupt.h:11:
   In file included from include/linux/hardirq.h:11:
   In file included from arch/mips/include/asm/hardirq.h:16:
   In file included from include/asm-generic/hardirq.h:17:
   In file included from include/linux/irq.h:23:
   In file included from arch/mips/include/asm/irq.h:14:
   In file included from include/linux/irqdomain.h:35:
>> include/linux/irqdesc.h:113:33: error: use of undeclared identifier 'NR_IRQS'
   extern struct irq_desc irq_desc[NR_IRQS];
                                   ^
>> include/linux/irqdesc.h:124:26: error: incomplete definition of type 'struct irq_data'
           return container_of(data->common, struct irq_desc, irq_common_data);
                               ~~~~^
   include/linux/kernel.h:703:26: note: expanded from macro 'container_of'
           void *__mptr = (void *)(ptr);                                   \
                                   ^~~
   include/linux/irqhandler.h:11:8: note: forward declaration of 'struct irq_data'
   struct irq_data;
          ^
   In file included from arch/mips/kernel/asm-offsets.c:17:
   In file included from include/linux/suspend.h:5:
   In file included from include/linux/swap.h:9:
   In file included from include/linux/memcontrol.h:13:
   In file included from include/linux/cgroup.h:26:
   In file included from include/linux/kernel_stat.h:9:
   In file included from include/linux/interrupt.h:11:
   In file included from include/linux/hardirq.h:11:
   In file included from arch/mips/include/asm/hardirq.h:16:
   In file included from include/asm-generic/hardirq.h:17:
   In file included from include/linux/irq.h:23:
   In file included from arch/mips/include/asm/irq.h:14:
   In file included from include/linux/irqdomain.h:35:
>> include/linux/irqdesc.h:124:26: error: incomplete definition of type 'struct irq_data'
           return container_of(data->common, struct irq_desc, irq_common_data);
                               ~~~~^
   include/linux/kernel.h:704:34: note: expanded from macro 'container_of'
           BUILD_BUG_ON_MSG(!__same_type(*(ptr), ((type *)0)->member) &&   \
                                           ^~~
   include/linux/compiler_types.h:264:63: note: expanded from macro '__same_type'
   #define __same_type(a, b) __builtin_types_compatible_p(typeof(a), typeof(b))
                                                                 ^
   include/linux/build_bug.h:39:58: note: expanded from macro 'BUILD_BUG_ON_MSG'
   #define BUILD_BUG_ON_MSG(cond, msg) compiletime_assert(!(cond), msg)
                                                            ^~~~
   include/linux/compiler_types.h:328:22: note: expanded from macro 'compiletime_assert'
           _compiletime_assert(condition, msg, __compiletime_assert_, __COUNTER__)
                               ^~~~~~~~~
   include/linux/compiler_types.h:316:23: note: expanded from macro '_compiletime_assert'
           __compiletime_assert(condition, msg, prefix, suffix)
                                ^~~~~~~~~
   include/linux/compiler_types.h:308:9: note: expanded from macro '__compiletime_assert'
                   if (!(condition))                                       \
                         ^~~~~~~~~
   include/linux/irqhandler.h:11:8: note: forward declaration of 'struct irq_data'
   struct irq_data;
          ^
   In file included from arch/mips/kernel/asm-offsets.c:17:
   In file included from include/linux/suspend.h:5:
   In file included from include/linux/swap.h:9:
   In file included from include/linux/memcontrol.h:13:
   In file included from include/linux/cgroup.h:26:
   In file included from include/linux/kernel_stat.h:9:
   In file included from include/linux/interrupt.h:11:
   In file included from include/linux/hardirq.h:11:
   In file included from arch/mips/include/asm/hardirq.h:16:
   In file included from include/asm-generic/hardirq.h:17:
   In file included from include/linux/irq.h:23:
   In file included from arch/mips/include/asm/irq.h:14:
   In file included from include/linux/irqdomain.h:35:
>> include/linux/irqdesc.h:124:26: error: incomplete definition of type 'struct irq_data'
           return container_of(data->common, struct irq_desc, irq_common_data);
                               ~~~~^
   include/linux/kernel.h:705:20: note: expanded from macro 'container_of'
                            !__same_type(*(ptr), void),                    \
                                           ^~~
   include/linux/compiler_types.h:264:63: note: expanded from macro '__same_type'
   #define __same_type(a, b) __builtin_types_compatible_p(typeof(a), typeof(b))
                                                                 ^
   include/linux/build_bug.h:39:58: note: expanded from macro 'BUILD_BUG_ON_MSG'
   #define BUILD_BUG_ON_MSG(cond, msg) compiletime_assert(!(cond), msg)
                                                            ^~~~
   include/linux/compiler_types.h:328:22: note: expanded from macro 'compiletime_assert'
           _compiletime_assert(condition, msg, __compiletime_assert_, __COUNTER__)
                               ^~~~~~~~~
   include/linux/compiler_types.h:316:23: note: expanded from macro '_compiletime_assert'
           __compiletime_assert(condition, msg, prefix, suffix)
                                ^~~~~~~~~
   include/linux/compiler_types.h:308:9: note: expanded from macro '__compiletime_assert'
                   if (!(condition))                                       \
                         ^~~~~~~~~
   include/linux/irqhandler.h:11:8: note: forward declaration of 'struct irq_data'
   struct irq_data;
          ^
   In file included from arch/mips/kernel/asm-offsets.c:17:
   In file included from include/linux/suspend.h:5:
   In file included from include/linux/swap.h:9:
   In file included from include/linux/memcontrol.h:13:
   In file included from include/linux/cgroup.h:26:
   In file included from include/linux/kernel_stat.h:9:
   In file included from include/linux/interrupt.h:11:
   In file included from include/linux/hardirq.h:11:
   In file included from arch/mips/include/asm/hardirq.h:16:
   In file included from include/asm-generic/hardirq.h:17:
   In file included from include/linux/irq.h:23:
   In file included from arch/mips/include/asm/irq.h:14:
   In file included from include/linux/irqdomain.h:35:
   include/linux/irqdesc.h:229:6: error: incomplete definition of type 'struct irq_data'
           data->chip = chip;
           ~~~~^
   include/linux/irqhandler.h:11:8: note: forward declaration of 'struct irq_data'
   struct irq_data;
          ^
   In file included from arch/mips/kernel/asm-offsets.c:17:
   In file included from include/linux/suspend.h:5:
   In file included from include/linux/swap.h:9:
   In file included from include/linux/memcontrol.h:13:
   In file included from include/linux/cgroup.h:26:
   In file included from include/linux/kernel_stat.h:9:
   In file included from include/linux/interrupt.h:11:
   In file included from include/linux/hardirq.h:11:
   In file included from arch/mips/include/asm/hardirq.h:16:
   In file included from include/asm-generic/hardirq.h:17:
   In file included from include/linux/irq.h:23:
   In file included from arch/mips/include/asm/irq.h:14:
   In file included from include/linux/irqdomain.h:35:
>> include/linux/irqdesc.h:236:35: error: use of undeclared identifier 'IRQ_NO_BALANCING_MASK'
           return irq_check_status_bit(irq, IRQ_NO_BALANCING_MASK);
                                            ^
>> include/linux/irqdesc.h:241:35: error: use of undeclared identifier 'IRQ_PER_CPU'
           return irq_check_status_bit(irq, IRQ_PER_CPU);
                                            ^
>> include/linux/irqdesc.h:246:35: error: use of undeclared identifier 'IRQ_PER_CPU_DEVID'
           return irq_check_status_bit(irq, IRQ_PER_CPU_DEVID);
                                            ^
   arch/mips/kernel/asm-offsets.c:26:6: warning: no previous prototype for function 'output_ptreg_defines' [-Wmissing-prototypes]
   void output_ptreg_defines(void)
        ^
   arch/mips/kernel/asm-offsets.c:26:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void output_ptreg_defines(void)
   ^
   static 
   arch/mips/kernel/asm-offsets.c:78:6: warning: no previous prototype for function 'output_task_defines' [-Wmissing-prototypes]
   void output_task_defines(void)
        ^
   arch/mips/kernel/asm-offsets.c:78:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void output_task_defines(void)
   ^
   static 
   arch/mips/kernel/asm-offsets.c:93:6: warning: no previous prototype for function 'output_thread_info_defines' [-Wmissing-prototypes]
   void output_thread_info_defines(void)
        ^
   arch/mips/kernel/asm-offsets.c:93:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void output_thread_info_defines(void)
   ^
   static 
   arch/mips/kernel/asm-offsets.c:109:6: warning: no previous prototype for function 'output_thread_defines' [-Wmissing-prototypes]
   void output_thread_defines(void)
        ^
   arch/mips/kernel/asm-offsets.c:109:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void output_thread_defines(void)
   ^
   static 
   arch/mips/kernel/asm-offsets.c:180:6: warning: no previous prototype for function 'output_mm_defines' [-Wmissing-prototypes]
   void output_mm_defines(void)
        ^
   arch/mips/kernel/asm-offsets.c:180:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void output_mm_defines(void)
   ^
   static 
   arch/mips/kernel/asm-offsets.c:219:6: warning: no previous prototype for function 'output_sc_defines' [-Wmissing-prototypes]
   void output_sc_defines(void)
        ^
   arch/mips/kernel/asm-offsets.c:219:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void output_sc_defines(void)
   ^
   static 
   arch/mips/kernel/asm-offsets.c:254:6: warning: no previous prototype for function 'output_signal_defined' [-Wmissing-prototypes]
   void output_signal_defined(void)
        ^
   arch/mips/kernel/asm-offsets.c:254:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void output_signal_defined(void)
   ^
   static 
   arch/mips/kernel/asm-offsets.c:391:6: warning: no previous prototype for function 'output_cps_defines' [-Wmissing-prototypes]
   void output_cps_defines(void)
        ^
   arch/mips/kernel/asm-offsets.c:391:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void output_cps_defines(void)
   ^
   static 
   8 warnings and 10 errors generated.
--
   In file included from arch/mips/kernel/asm-offsets.c:17:
   In file included from include/linux/suspend.h:5:
   In file included from include/linux/swap.h:9:
   In file included from include/linux/memcontrol.h:13:
   In file included from include/linux/cgroup.h:26:
   In file included from include/linux/kernel_stat.h:9:
   In file included from include/linux/interrupt.h:11:
   In file included from include/linux/hardirq.h:11:
   In file included from arch/mips/include/asm/hardirq.h:16:
   In file included from include/asm-generic/hardirq.h:17:
   In file included from include/linux/irq.h:23:
   In file included from arch/mips/include/asm/irq.h:14:
   In file included from include/linux/irqdomain.h:35:
>> include/linux/irqdesc.h:56:25: error: field has incomplete type 'struct irq_common_data'
           struct irq_common_data  irq_common_data;
                                   ^
   include/linux/irqdesc.h:56:9: note: forward declaration of 'struct irq_common_data'
           struct irq_common_data  irq_common_data;
                  ^
>> include/linux/irqdesc.h:57:19: error: field has incomplete type 'struct irq_data'
           struct irq_data         irq_data;
                                   ^
   include/linux/irqhandler.h:11:8: note: forward declaration of 'struct irq_data'
   struct irq_data;
          ^
   In file included from arch/mips/kernel/asm-offsets.c:17:
   In file included from include/linux/suspend.h:5:
   In file included from include/linux/swap.h:9:
   In file included from include/linux/memcontrol.h:13:
   In file included from include/linux/cgroup.h:26:
   In file included from include/linux/kernel_stat.h:9:
   In file included from include/linux/interrupt.h:11:
   In file included from include/linux/hardirq.h:11:
   In file included from arch/mips/include/asm/hardirq.h:16:
   In file included from include/asm-generic/hardirq.h:17:
   In file included from include/linux/irq.h:23:
   In file included from arch/mips/include/asm/irq.h:14:
   In file included from include/linux/irqdomain.h:35:
>> include/linux/irqdesc.h:113:33: error: use of undeclared identifier 'NR_IRQS'
   extern struct irq_desc irq_desc[NR_IRQS];
                                   ^
>> include/linux/irqdesc.h:124:26: error: incomplete definition of type 'struct irq_data'
           return container_of(data->common, struct irq_desc, irq_common_data);
                               ~~~~^
   include/linux/kernel.h:703:26: note: expanded from macro 'container_of'
           void *__mptr = (void *)(ptr);                                   \
                                   ^~~
   include/linux/irqhandler.h:11:8: note: forward declaration of 'struct irq_data'
   struct irq_data;
          ^
   In file included from arch/mips/kernel/asm-offsets.c:17:
   In file included from include/linux/suspend.h:5:
   In file included from include/linux/swap.h:9:
   In file included from include/linux/memcontrol.h:13:
   In file included from include/linux/cgroup.h:26:
   In file included from include/linux/kernel_stat.h:9:
   In file included from include/linux/interrupt.h:11:
   In file included from include/linux/hardirq.h:11:
   In file included from arch/mips/include/asm/hardirq.h:16:
   In file included from include/asm-generic/hardirq.h:17:
   In file included from include/linux/irq.h:23:
   In file included from arch/mips/include/asm/irq.h:14:
   In file included from include/linux/irqdomain.h:35:
>> include/linux/irqdesc.h:124:26: error: incomplete definition of type 'struct irq_data'
           return container_of(data->common, struct irq_desc, irq_common_data);
                               ~~~~^
   include/linux/kernel.h:704:34: note: expanded from macro 'container_of'
           BUILD_BUG_ON_MSG(!__same_type(*(ptr), ((type *)0)->member) &&   \
                                           ^~~
   include/linux/compiler_types.h:264:63: note: expanded from macro '__same_type'
   #define __same_type(a, b) __builtin_types_compatible_p(typeof(a), typeof(b))
                                                                 ^
   include/linux/build_bug.h:39:58: note: expanded from macro 'BUILD_BUG_ON_MSG'
   #define BUILD_BUG_ON_MSG(cond, msg) compiletime_assert(!(cond), msg)
                                                            ^~~~
   include/linux/compiler_types.h:328:22: note: expanded from macro 'compiletime_assert'
           _compiletime_assert(condition, msg, __compiletime_assert_, __COUNTER__)
                               ^~~~~~~~~
   include/linux/compiler_types.h:316:23: note: expanded from macro '_compiletime_assert'
           __compiletime_assert(condition, msg, prefix, suffix)
                                ^~~~~~~~~
   include/linux/compiler_types.h:308:9: note: expanded from macro '__compiletime_assert'
                   if (!(condition))                                       \
                         ^~~~~~~~~
   include/linux/irqhandler.h:11:8: note: forward declaration of 'struct irq_data'
   struct irq_data;
          ^
   In file included from arch/mips/kernel/asm-offsets.c:17:
   In file included from include/linux/suspend.h:5:
   In file included from include/linux/swap.h:9:
   In file included from include/linux/memcontrol.h:13:
   In file included from include/linux/cgroup.h:26:
   In file included from include/linux/kernel_stat.h:9:
   In file included from include/linux/interrupt.h:11:
   In file included from include/linux/hardirq.h:11:
   In file included from arch/mips/include/asm/hardirq.h:16:
   In file included from include/asm-generic/hardirq.h:17:
   In file included from include/linux/irq.h:23:
   In file included from arch/mips/include/asm/irq.h:14:
   In file included from include/linux/irqdomain.h:35:
>> include/linux/irqdesc.h:124:26: error: incomplete definition of type 'struct irq_data'
           return container_of(data->common, struct irq_desc, irq_common_data);
                               ~~~~^
   include/linux/kernel.h:705:20: note: expanded from macro 'container_of'
                            !__same_type(*(ptr), void),                    \
                                           ^~~
   include/linux/compiler_types.h:264:63: note: expanded from macro '__same_type'
   #define __same_type(a, b) __builtin_types_compatible_p(typeof(a), typeof(b))
                                                                 ^
   include/linux/build_bug.h:39:58: note: expanded from macro 'BUILD_BUG_ON_MSG'
   #define BUILD_BUG_ON_MSG(cond, msg) compiletime_assert(!(cond), msg)
                                                            ^~~~
   include/linux/compiler_types.h:328:22: note: expanded from macro 'compiletime_assert'
           _compiletime_assert(condition, msg, __compiletime_assert_, __COUNTER__)
                               ^~~~~~~~~
   include/linux/compiler_types.h:316:23: note: expanded from macro '_compiletime_assert'
           __compiletime_assert(condition, msg, prefix, suffix)
                                ^~~~~~~~~
   include/linux/compiler_types.h:308:9: note: expanded from macro '__compiletime_assert'
                   if (!(condition))                                       \
                         ^~~~~~~~~
   include/linux/irqhandler.h:11:8: note: forward declaration of 'struct irq_data'
   struct irq_data;
          ^
   In file included from arch/mips/kernel/asm-offsets.c:17:
   In file included from include/linux/suspend.h:5:
   In file included from include/linux/swap.h:9:
   In file included from include/linux/memcontrol.h:13:
   In file included from include/linux/cgroup.h:26:
   In file included from include/linux/kernel_stat.h:9:
   In file included from include/linux/interrupt.h:11:
   In file included from include/linux/hardirq.h:11:
   In file included from arch/mips/include/asm/hardirq.h:16:
   In file included from include/asm-generic/hardirq.h:17:
   In file included from include/linux/irq.h:23:
   In file included from arch/mips/include/asm/irq.h:14:
   In file included from include/linux/irqdomain.h:35:
   include/linux/irqdesc.h:229:6: error: incomplete definition of type 'struct irq_data'
           data->chip = chip;
           ~~~~^
   include/linux/irqhandler.h:11:8: note: forward declaration of 'struct irq_data'
   struct irq_data;
          ^
   In file included from arch/mips/kernel/asm-offsets.c:17:
   In file included from include/linux/suspend.h:5:
   In file included from include/linux/swap.h:9:
   In file included from include/linux/memcontrol.h:13:
   In file included from include/linux/cgroup.h:26:
   In file included from include/linux/kernel_stat.h:9:
   In file included from include/linux/interrupt.h:11:
   In file included from include/linux/hardirq.h:11:
   In file included from arch/mips/include/asm/hardirq.h:16:
   In file included from include/asm-generic/hardirq.h:17:
   In file included from include/linux/irq.h:23:
   In file included from arch/mips/include/asm/irq.h:14:
   In file included from include/linux/irqdomain.h:35:
>> include/linux/irqdesc.h:236:35: error: use of undeclared identifier 'IRQ_NO_BALANCING_MASK'
           return irq_check_status_bit(irq, IRQ_NO_BALANCING_MASK);
                                            ^
>> include/linux/irqdesc.h:241:35: error: use of undeclared identifier 'IRQ_PER_CPU'
           return irq_check_status_bit(irq, IRQ_PER_CPU);
                                            ^
>> include/linux/irqdesc.h:246:35: error: use of undeclared identifier 'IRQ_PER_CPU_DEVID'
           return irq_check_status_bit(irq, IRQ_PER_CPU_DEVID);
                                            ^
   arch/mips/kernel/asm-offsets.c:26:6: warning: no previous prototype for function 'output_ptreg_defines' [-Wmissing-prototypes]
   void output_ptreg_defines(void)
        ^
   arch/mips/kernel/asm-offsets.c:26:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void output_ptreg_defines(void)
   ^
   static 
   arch/mips/kernel/asm-offsets.c:78:6: warning: no previous prototype for function 'output_task_defines' [-Wmissing-prototypes]
   void output_task_defines(void)
        ^
   arch/mips/kernel/asm-offsets.c:78:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void output_task_defines(void)
   ^
   static 
   arch/mips/kernel/asm-offsets.c:93:6: warning: no previous prototype for function 'output_thread_info_defines' [-Wmissing-prototypes]
   void output_thread_info_defines(void)
        ^
   arch/mips/kernel/asm-offsets.c:93:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void output_thread_info_defines(void)
   ^
   static 
   arch/mips/kernel/asm-offsets.c:109:6: warning: no previous prototype for function 'output_thread_defines' [-Wmissing-prototypes]
   void output_thread_defines(void)
        ^
   arch/mips/kernel/asm-offsets.c:109:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void output_thread_defines(void)
   ^
   static 
   arch/mips/kernel/asm-offsets.c:180:6: warning: no previous prototype for function 'output_mm_defines' [-Wmissing-prototypes]
   void output_mm_defines(void)
        ^
   arch/mips/kernel/asm-offsets.c:180:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void output_mm_defines(void)
   ^
   static 
   arch/mips/kernel/asm-offsets.c:219:6: warning: no previous prototype for function 'output_sc_defines' [-Wmissing-prototypes]
   void output_sc_defines(void)
        ^
   arch/mips/kernel/asm-offsets.c:219:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void output_sc_defines(void)
   ^
   static 
   arch/mips/kernel/asm-offsets.c:254:6: warning: no previous prototype for function 'output_signal_defined' [-Wmissing-prototypes]
   void output_signal_defined(void)
        ^
   arch/mips/kernel/asm-offsets.c:254:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void output_signal_defined(void)
   ^
   static 
   arch/mips/kernel/asm-offsets.c:391:6: warning: no previous prototype for function 'output_cps_defines' [-Wmissing-prototypes]
   void output_cps_defines(void)
        ^
   arch/mips/kernel/asm-offsets.c:391:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void output_cps_defines(void)
   ^
   static 
   8 warnings and 10 errors generated.
   make[2]: *** [scripts/Makefile.build:117: arch/mips/kernel/asm-offsets.s] Error 1
   make[2]: Target '__build' not remade because of errors.
   make[1]: *** [Makefile:1227: prepare0] Error 2
   make[1]: Target 'modules_prepare' not remade because of errors.
   make: *** [Makefile:215: __sub-make] Error 2
   make: Target 'modules_prepare' not remade because of errors.
..


vim +56 include/linux/irqdesc.h

293a7a0a165c4f Thomas Gleixner           2012-10-16   19  
e144710b302525 Thomas Gleixner           2010-10-01   20  /**
e144710b302525 Thomas Gleixner           2010-10-01   21   * struct irq_desc - interrupt descriptor
0d0b4c866bcce6 Jiang Liu                 2015-06-01   22   * @irq_common_data:	per irq and chip data passed down to chip functions
e144710b302525 Thomas Gleixner           2010-10-01   23   * @kstat_irqs:		irq stats per cpu
770767787c2304 Geert Uytterhoeven        2011-04-10   24   * @handle_irq:		highlevel irq-events handler
e144710b302525 Thomas Gleixner           2010-10-01   25   * @action:		the irq action chain
80ebc420ec59a7 Yunfeng Ye                2019-09-18   26   * @status_use_accessors: status information
dbec07bac614a6 Thomas Gleixner           2011-02-07   27   * @core_internal_state__do_not_mess_with_it: core internal status information
e144710b302525 Thomas Gleixner           2010-10-01   28   * @depth:		disable-depth, for nested irq_disable() calls
0911f124bf5535 Geert Uytterhoeven        2011-04-10   29   * @wake_depth:		enable depth, for multiple irq_set_irq_wake() callers
030fc443aef663 Waiman Long               2019-02-12   30   * @tot_count:		stats field for non-percpu irqs
e144710b302525 Thomas Gleixner           2010-10-01   31   * @irq_count:		stats field to detect stalled irqs
e144710b302525 Thomas Gleixner           2010-10-01   32   * @last_unhandled:	aging timer for unhandled count
e144710b302525 Thomas Gleixner           2010-10-01   33   * @irqs_unhandled:	stats field for spurious unhandled interrupts
1e77d0a1ed7417 Thomas Gleixner           2013-03-07   34   * @threads_handled:	stats field for deferred spurious detection of threaded handlers
a359f757965aaf Ingo Molnar               2021-03-22   35   * @threads_handled_last: comparator field for deferred spurious detection of threaded handlers
e144710b302525 Thomas Gleixner           2010-10-01   36   * @lock:		locking for SMP
770767787c2304 Geert Uytterhoeven        2011-04-10   37   * @affinity_hint:	hint to user space for preferred irq affinity
cd7eab44e9946c Ben Hutchings             2011-01-19   38   * @affinity_notify:	context for notification of affinity changes
e144710b302525 Thomas Gleixner           2010-10-01   39   * @pending_mask:	pending rebalanced interrupts
b5faba21a6805c Thomas Gleixner           2011-02-23   40   * @threads_oneshot:	bitfield to handle shared oneshot threads
e144710b302525 Thomas Gleixner           2010-10-01   41   * @threads_active:	number of irqaction threads currently running
e144710b302525 Thomas Gleixner           2010-10-01   42   * @wait_for_threads:	wait queue for sync_irq to wait for threaded handlers
cab303be91dc47 Thomas Gleixner           2014-08-28   43   * @nr_actions:		number of installed actions on this descriptor
cab303be91dc47 Thomas Gleixner           2014-08-28   44   * @no_suspend_depth:	number of irqactions on a irq descriptor with
cab303be91dc47 Thomas Gleixner           2014-08-28   45   *			IRQF_NO_SUSPEND set
cab303be91dc47 Thomas Gleixner           2014-08-28   46   * @force_resume_depth:	number of irqactions on a irq descriptor with
cab303be91dc47 Thomas Gleixner           2014-08-28   47   *			IRQF_FORCE_RESUME set
425a5072dcd1bd Thomas Gleixner           2015-12-13   48   * @rcu:		rcu head for delayed free
ecb3f394c5dba8 Craig Gallek              2016-09-13   49   * @kobj:		kobject used to represent this struct in sysfs
9114014cf4e6df Thomas Gleixner           2017-06-29   50   * @request_mutex:	mutex to protect request/free before locking desc->lock
e144710b302525 Thomas Gleixner           2010-10-01   51   * @dir:		/proc/irq/ procfs entry
087cdfb662ae50 Thomas Gleixner           2017-06-20   52   * @debugfs_file:	dentry for the debugfs file
e144710b302525 Thomas Gleixner           2010-10-01   53   * @name:		flow handler name for /proc/interrupts output
e144710b302525 Thomas Gleixner           2010-10-01   54   */
e144710b302525 Thomas Gleixner           2010-10-01   55  struct irq_desc {
0d0b4c866bcce6 Jiang Liu                 2015-06-01  @56  	struct irq_common_data	irq_common_data;
e144710b302525 Thomas Gleixner           2010-10-01  @57  	struct irq_data		irq_data;
6c9ae009b29875 Eric Dumazet              2011-01-13   58  	unsigned int __percpu	*kstat_irqs;
e144710b302525 Thomas Gleixner           2010-10-01   59  	irq_flow_handler_t	handle_irq;
e144710b302525 Thomas Gleixner           2010-10-01   60  	struct irqaction	*action;	/* IRQ action list */
a6967caf00ebbb Thomas Gleixner           2011-02-10   61  	unsigned int		status_use_accessors;
dbec07bac614a6 Thomas Gleixner           2011-02-07   62  	unsigned int		core_internal_state__do_not_mess_with_it;
e144710b302525 Thomas Gleixner           2010-10-01   63  	unsigned int		depth;		/* nested irq disables */
e144710b302525 Thomas Gleixner           2010-10-01   64  	unsigned int		wake_depth;	/* nested wake enables */
1136b072896990 Thomas Gleixner           2019-02-08   65  	unsigned int		tot_count;
e144710b302525 Thomas Gleixner           2010-10-01   66  	unsigned int		irq_count;	/* For detecting broken IRQs */
e144710b302525 Thomas Gleixner           2010-10-01   67  	unsigned long		last_unhandled;	/* Aging timer for unhandled count */
e144710b302525 Thomas Gleixner           2010-10-01   68  	unsigned int		irqs_unhandled;
1e77d0a1ed7417 Thomas Gleixner           2013-03-07   69  	atomic_t		threads_handled;
1e77d0a1ed7417 Thomas Gleixner           2013-03-07   70  	int			threads_handled_last;
e144710b302525 Thomas Gleixner           2010-10-01   71  	raw_spinlock_t		lock;
31d9d9b6d83030 Marc Zyngier              2011-09-23   72  	struct cpumask		*percpu_enabled;
222df54fd8b764 Marc Zyngier              2016-04-11   73  	const struct cpumask	*percpu_affinity;
e144710b302525 Thomas Gleixner           2010-10-01   74  #ifdef CONFIG_SMP
e144710b302525 Thomas Gleixner           2010-10-01   75  	const struct cpumask	*affinity_hint;
cd7eab44e9946c Ben Hutchings             2011-01-19   76  	struct irq_affinity_notify *affinity_notify;
e144710b302525 Thomas Gleixner           2010-10-01   77  #ifdef CONFIG_GENERIC_PENDING_IRQ
e144710b302525 Thomas Gleixner           2010-10-01   78  	cpumask_var_t		pending_mask;
e144710b302525 Thomas Gleixner           2010-10-01   79  #endif
e144710b302525 Thomas Gleixner           2010-10-01   80  #endif
b5faba21a6805c Thomas Gleixner           2011-02-23   81  	unsigned long		threads_oneshot;
e144710b302525 Thomas Gleixner           2010-10-01   82  	atomic_t		threads_active;
e144710b302525 Thomas Gleixner           2010-10-01   83  	wait_queue_head_t       wait_for_threads;
cab303be91dc47 Thomas Gleixner           2014-08-28   84  #ifdef CONFIG_PM_SLEEP
cab303be91dc47 Thomas Gleixner           2014-08-28   85  	unsigned int		nr_actions;
cab303be91dc47 Thomas Gleixner           2014-08-28   86  	unsigned int		no_suspend_depth;
17f480342026e5 Rafael J. Wysocki         2015-02-27   87  	unsigned int		cond_suspend_depth;
cab303be91dc47 Thomas Gleixner           2014-08-28   88  	unsigned int		force_resume_depth;
cab303be91dc47 Thomas Gleixner           2014-08-28   89  #endif
e144710b302525 Thomas Gleixner           2010-10-01   90  #ifdef CONFIG_PROC_FS
e144710b302525 Thomas Gleixner           2010-10-01   91  	struct proc_dir_entry	*dir;
425a5072dcd1bd Thomas Gleixner           2015-12-13   92  #endif
087cdfb662ae50 Thomas Gleixner           2017-06-20   93  #ifdef CONFIG_GENERIC_IRQ_DEBUGFS
087cdfb662ae50 Thomas Gleixner           2017-06-20   94  	struct dentry		*debugfs_file;
07557ccb8c83f3 Thomas Gleixner           2017-09-13   95  	const char		*dev_name;
087cdfb662ae50 Thomas Gleixner           2017-06-20   96  #endif
425a5072dcd1bd Thomas Gleixner           2015-12-13   97  #ifdef CONFIG_SPARSE_IRQ
425a5072dcd1bd Thomas Gleixner           2015-12-13   98  	struct rcu_head		rcu;
ecb3f394c5dba8 Craig Gallek              2016-09-13   99  	struct kobject		kobj;
e144710b302525 Thomas Gleixner           2010-10-01  100  #endif
9114014cf4e6df Thomas Gleixner           2017-06-29  101  	struct mutex		request_mutex;
293a7a0a165c4f Thomas Gleixner           2012-10-16  102  	int			parent_irq;
b6873807a7143b Sebastian Andrzej Siewior 2011-07-11  103  	struct module		*owner;
e144710b302525 Thomas Gleixner           2010-10-01  104  	const char		*name;
e144710b302525 Thomas Gleixner           2010-10-01  105  } ____cacheline_internodealigned_in_smp;
e144710b302525 Thomas Gleixner           2010-10-01  106  
a899418167264c Thomas Gleixner           2015-07-05  107  #ifdef CONFIG_SPARSE_IRQ
a899418167264c Thomas Gleixner           2015-07-05  108  extern void irq_lock_sparse(void);
a899418167264c Thomas Gleixner           2015-07-05  109  extern void irq_unlock_sparse(void);
a899418167264c Thomas Gleixner           2015-07-05  110  #else
a899418167264c Thomas Gleixner           2015-07-05  111  static inline void irq_lock_sparse(void) { }
a899418167264c Thomas Gleixner           2015-07-05  112  static inline void irq_unlock_sparse(void) { }
e144710b302525 Thomas Gleixner           2010-10-01 @113  extern struct irq_desc irq_desc[NR_IRQS];
e144710b302525 Thomas Gleixner           2010-10-01  114  #endif
e144710b302525 Thomas Gleixner           2010-10-01  115  
501e2db67fa426 Thomas Gleixner           2020-12-10  116  static inline unsigned int irq_desc_kstat_cpu(struct irq_desc *desc,
501e2db67fa426 Thomas Gleixner           2020-12-10  117  					      unsigned int cpu)
501e2db67fa426 Thomas Gleixner           2020-12-10  118  {
501e2db67fa426 Thomas Gleixner           2020-12-10  119  	return desc->kstat_irqs ? *per_cpu_ptr(desc->kstat_irqs, cpu) : 0;
501e2db67fa426 Thomas Gleixner           2020-12-10  120  }
501e2db67fa426 Thomas Gleixner           2020-12-10  121  
7bbf1dd24b17b9 Jiang Liu                 2015-06-01  122  static inline struct irq_desc *irq_data_to_desc(struct irq_data *data)
7bbf1dd24b17b9 Jiang Liu                 2015-06-01  123  {
755d119a620497 Thomas Gleixner           2015-09-16 @124  	return container_of(data->common, struct irq_desc, irq_common_data);
7bbf1dd24b17b9 Jiang Liu                 2015-06-01  125  }
7bbf1dd24b17b9 Jiang Liu                 2015-06-01  126  
304adf8a8fff97 Jiang Liu                 2015-06-04  127  static inline unsigned int irq_desc_get_irq(struct irq_desc *desc)
304adf8a8fff97 Jiang Liu                 2015-06-04  128  {
304adf8a8fff97 Jiang Liu                 2015-06-04  129  	return desc->irq_data.irq;
304adf8a8fff97 Jiang Liu                 2015-06-04  130  }
304adf8a8fff97 Jiang Liu                 2015-06-04  131  
d9936bb3952a08 Thomas Gleixner           2011-03-11  132  static inline struct irq_data *irq_desc_get_irq_data(struct irq_desc *desc)
d9936bb3952a08 Thomas Gleixner           2011-03-11  133  {
d9936bb3952a08 Thomas Gleixner           2011-03-11  134  	return &desc->irq_data;
d9936bb3952a08 Thomas Gleixner           2011-03-11  135  }
d9936bb3952a08 Thomas Gleixner           2011-03-11  136  
a0cd9ca2b907d7 Thomas Gleixner           2011-02-10  137  static inline struct irq_chip *irq_desc_get_chip(struct irq_desc *desc)
a0cd9ca2b907d7 Thomas Gleixner           2011-02-10  138  {
a0cd9ca2b907d7 Thomas Gleixner           2011-02-10  139  	return desc->irq_data.chip;
a0cd9ca2b907d7 Thomas Gleixner           2011-02-10  140  }
a0cd9ca2b907d7 Thomas Gleixner           2011-02-10  141  
a0cd9ca2b907d7 Thomas Gleixner           2011-02-10  142  static inline void *irq_desc_get_chip_data(struct irq_desc *desc)
a0cd9ca2b907d7 Thomas Gleixner           2011-02-10  143  {
a0cd9ca2b907d7 Thomas Gleixner           2011-02-10  144  	return desc->irq_data.chip_data;
a0cd9ca2b907d7 Thomas Gleixner           2011-02-10  145  }
a0cd9ca2b907d7 Thomas Gleixner           2011-02-10  146  
a0cd9ca2b907d7 Thomas Gleixner           2011-02-10  147  static inline void *irq_desc_get_handler_data(struct irq_desc *desc)
a0cd9ca2b907d7 Thomas Gleixner           2011-02-10  148  {
af7080e040d223 Jiang Liu                 2015-06-01  149  	return desc->irq_common_data.handler_data;
a0cd9ca2b907d7 Thomas Gleixner           2011-02-10  150  }
a0cd9ca2b907d7 Thomas Gleixner           2011-02-10  151  
e144710b302525 Thomas Gleixner           2010-10-01  152  /*
e144710b302525 Thomas Gleixner           2010-10-01  153   * Architectures call this to let the generic IRQ layer
6584d84c3e504c Huang Shijie              2015-09-01  154   * handle an interrupt.
e144710b302525 Thomas Gleixner           2010-10-01  155   */
bd0b9ac405e179 Thomas Gleixner           2015-09-14  156  static inline void generic_handle_irq_desc(struct irq_desc *desc)
e144710b302525 Thomas Gleixner           2010-10-01  157  {
bd0b9ac405e179 Thomas Gleixner           2015-09-14  158  	desc->handle_irq(desc);
e144710b302525 Thomas Gleixner           2010-10-01  159  }
e144710b302525 Thomas Gleixner           2010-10-01  160  
fe12bc2c996d3e Thomas Gleixner           2011-05-18  161  int generic_handle_irq(unsigned int irq);
e144710b302525 Thomas Gleixner           2010-10-01  162  
76ba59f8366f2d Marc Zyngier              2014-08-26  163  #ifdef CONFIG_HANDLE_DOMAIN_IRQ
76ba59f8366f2d Marc Zyngier              2014-08-26  164  /*
76ba59f8366f2d Marc Zyngier              2014-08-26  165   * Convert a HW interrupt number to a logical one using a IRQ domain,
76ba59f8366f2d Marc Zyngier              2014-08-26  166   * and handle the result interrupt number. Return -EINVAL if
76ba59f8366f2d Marc Zyngier              2014-08-26  167   * conversion failed. Providing a NULL domain indicates that the
76ba59f8366f2d Marc Zyngier              2014-08-26  168   * conversion has already been done.
76ba59f8366f2d Marc Zyngier              2014-08-26  169   */
76ba59f8366f2d Marc Zyngier              2014-08-26  170  int __handle_domain_irq(struct irq_domain *domain, unsigned int hwirq,
76ba59f8366f2d Marc Zyngier              2014-08-26  171  			bool lookup, struct pt_regs *regs);
76ba59f8366f2d Marc Zyngier              2014-08-26  172  
76ba59f8366f2d Marc Zyngier              2014-08-26  173  static inline int handle_domain_irq(struct irq_domain *domain,
76ba59f8366f2d Marc Zyngier              2014-08-26  174  				    unsigned int hwirq, struct pt_regs *regs)
76ba59f8366f2d Marc Zyngier              2014-08-26  175  {
76ba59f8366f2d Marc Zyngier              2014-08-26  176  	return __handle_domain_irq(domain, hwirq, true, regs);
76ba59f8366f2d Marc Zyngier              2014-08-26  177  }
6e4933a0066163 Julien Thierry            2019-01-31  178  
6e4933a0066163 Julien Thierry            2019-01-31  179  #ifdef CONFIG_IRQ_DOMAIN
6e4933a0066163 Julien Thierry            2019-01-31  180  int handle_domain_nmi(struct irq_domain *domain, unsigned int hwirq,
6e4933a0066163 Julien Thierry            2019-01-31  181  		      struct pt_regs *regs);
6e4933a0066163 Julien Thierry            2019-01-31  182  #endif
76ba59f8366f2d Marc Zyngier              2014-08-26  183  #endif
76ba59f8366f2d Marc Zyngier              2014-08-26  184  
e144710b302525 Thomas Gleixner           2010-10-01  185  /* Test to see if a driver has successfully requested an irq */
f61ae4fb66a4f7 Thomas Gleixner           2015-08-02  186  static inline int irq_desc_has_action(struct irq_desc *desc)
e144710b302525 Thomas Gleixner           2010-10-01  187  {
a313357e704f26 Thomas Gleixner           2020-12-10  188  	return desc && desc->action != NULL;
f61ae4fb66a4f7 Thomas Gleixner           2015-08-02  189  }
f61ae4fb66a4f7 Thomas Gleixner           2015-08-02  190  
bbc9d21fc0071c Thomas Gleixner           2015-06-23  191  /**
bbc9d21fc0071c Thomas Gleixner           2015-06-23  192   * irq_set_handler_locked - Set irq handler from a locked region
bbc9d21fc0071c Thomas Gleixner           2015-06-23  193   * @data:	Pointer to the irq_data structure which identifies the irq
bbc9d21fc0071c Thomas Gleixner           2015-06-23  194   * @handler:	Flow control handler function for this interrupt
bbc9d21fc0071c Thomas Gleixner           2015-06-23  195   *
bbc9d21fc0071c Thomas Gleixner           2015-06-23  196   * Sets the handler in the irq descriptor associated to @data.
bbc9d21fc0071c Thomas Gleixner           2015-06-23  197   *
bbc9d21fc0071c Thomas Gleixner           2015-06-23  198   * Must be called with irq_desc locked and valid parameters. Typical
bbc9d21fc0071c Thomas Gleixner           2015-06-23  199   * call site is the irq_set_type() callback.
bbc9d21fc0071c Thomas Gleixner           2015-06-23  200   */
bbc9d21fc0071c Thomas Gleixner           2015-06-23  201  static inline void irq_set_handler_locked(struct irq_data *data,
bbc9d21fc0071c Thomas Gleixner           2015-06-23  202  					  irq_flow_handler_t handler)
bbc9d21fc0071c Thomas Gleixner           2015-06-23  203  {
bbc9d21fc0071c Thomas Gleixner           2015-06-23  204  	struct irq_desc *desc = irq_data_to_desc(data);
bbc9d21fc0071c Thomas Gleixner           2015-06-23  205  
bbc9d21fc0071c Thomas Gleixner           2015-06-23  206  	desc->handle_irq = handler;
bbc9d21fc0071c Thomas Gleixner           2015-06-23  207  }
bbc9d21fc0071c Thomas Gleixner           2015-06-23  208  
bbc9d21fc0071c Thomas Gleixner           2015-06-23  209  /**
bbc9d21fc0071c Thomas Gleixner           2015-06-23  210   * irq_set_chip_handler_name_locked - Set chip, handler and name from a locked region
bbc9d21fc0071c Thomas Gleixner           2015-06-23  211   * @data:	Pointer to the irq_data structure for which the chip is set
bbc9d21fc0071c Thomas Gleixner           2015-06-23  212   * @chip:	Pointer to the new irq chip
bbc9d21fc0071c Thomas Gleixner           2015-06-23  213   * @handler:	Flow control handler function for this interrupt
bbc9d21fc0071c Thomas Gleixner           2015-06-23  214   * @name:	Name of the interrupt
bbc9d21fc0071c Thomas Gleixner           2015-06-23  215   *
bbc9d21fc0071c Thomas Gleixner           2015-06-23  216   * Replace the irq chip at the proper hierarchy level in @data and
bbc9d21fc0071c Thomas Gleixner           2015-06-23  217   * sets the handler and name in the associated irq descriptor.
bbc9d21fc0071c Thomas Gleixner           2015-06-23  218   *
bbc9d21fc0071c Thomas Gleixner           2015-06-23  219   * Must be called with irq_desc locked and valid parameters.
bbc9d21fc0071c Thomas Gleixner           2015-06-23  220   */
bbc9d21fc0071c Thomas Gleixner           2015-06-23  221  static inline void
bbc9d21fc0071c Thomas Gleixner           2015-06-23  222  irq_set_chip_handler_name_locked(struct irq_data *data, struct irq_chip *chip,
bbc9d21fc0071c Thomas Gleixner           2015-06-23  223  				 irq_flow_handler_t handler, const char *name)
bbc9d21fc0071c Thomas Gleixner           2015-06-23  224  {
bbc9d21fc0071c Thomas Gleixner           2015-06-23  225  	struct irq_desc *desc = irq_data_to_desc(data);
bbc9d21fc0071c Thomas Gleixner           2015-06-23  226  
bbc9d21fc0071c Thomas Gleixner           2015-06-23  227  	desc->handle_irq = handler;
bbc9d21fc0071c Thomas Gleixner           2015-06-23  228  	desc->name = name;
bbc9d21fc0071c Thomas Gleixner           2015-06-23  229  	data->chip = chip;
bbc9d21fc0071c Thomas Gleixner           2015-06-23  230  }
bbc9d21fc0071c Thomas Gleixner           2015-06-23  231  
fdd029630434b4 Thomas Gleixner           2020-12-10  232  bool irq_check_status_bit(unsigned int irq, unsigned int bitmask);
fdd029630434b4 Thomas Gleixner           2020-12-10  233  
4ce413d1840b25 Will Deacon               2017-12-01  234  static inline bool irq_balancing_disabled(unsigned int irq)
e144710b302525 Thomas Gleixner           2010-10-01  235  {
fdd029630434b4 Thomas Gleixner           2020-12-10 @236  	return irq_check_status_bit(irq, IRQ_NO_BALANCING_MASK);
e144710b302525 Thomas Gleixner           2010-10-01  237  }
781295762defc7 Thomas Gleixner           2011-02-10  238  
4ce413d1840b25 Will Deacon               2017-12-01  239  static inline bool irq_is_percpu(unsigned int irq)
7f4a8e7b1943c1 Vinayak Kale              2013-12-04  240  {
fdd029630434b4 Thomas Gleixner           2020-12-10 @241  	return irq_check_status_bit(irq, IRQ_PER_CPU);
7f4a8e7b1943c1 Vinayak Kale              2013-12-04  242  }
7f4a8e7b1943c1 Vinayak Kale              2013-12-04  243  
4ce413d1840b25 Will Deacon               2017-12-01  244  static inline bool irq_is_percpu_devid(unsigned int irq)
08395c7f4d9f58 Julien Thierry            2017-10-13  245  {
fdd029630434b4 Thomas Gleixner           2020-12-10 @246  	return irq_check_status_bit(irq, IRQ_PER_CPU_DEVID);
08395c7f4d9f58 Julien Thierry            2017-10-13  247  }
08395c7f4d9f58 Julien Thierry            2017-10-13  248  

:::::: The code at line 56 was first introduced by commit
:::::: 0d0b4c866bcce647f40d73efe5e90aeeb079050a genirq: Introduce struct irq_common_data to host shared irq data

:::::: TO: Jiang Liu <jiang.liu@linux.intel.com>
:::::: CC: Thomas Gleixner <tglx@linutronix.de>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202105141750.0vepUNpb-lkp%40intel.com.

--OgqxwSJOaUobr8KG
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--OgqxwSJOaUobr8KG--
