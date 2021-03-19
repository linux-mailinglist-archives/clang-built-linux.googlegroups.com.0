Return-Path: <clang-built-linux+bncBC4LXIPCY4NRB6NG2OBAMGQE76ZSNEY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53b.google.com (mail-pg1-x53b.google.com [IPv6:2607:f8b0:4864:20::53b])
	by mail.lfdr.de (Postfix) with ESMTPS id CE15734220B
	for <lists+clang-built-linux@lfdr.de>; Fri, 19 Mar 2021 17:38:18 +0100 (CET)
Received: by mail-pg1-x53b.google.com with SMTP id e34sf22646448pge.2
        for <lists+clang-built-linux@lfdr.de>; Fri, 19 Mar 2021 09:38:18 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1616171897; cv=pass;
        d=google.com; s=arc-20160816;
        b=NfT4VrRhPxySzkHW1eE5GIrssDymd3SBNtVx+SfghPMBeX/CGu/Pyda5cxJ5v/o1h5
         GIwpNLcNnRUGq8FaXzQeoypGrPPsLsbe7n0e0AWIce8NUZC4tPqHtHqKgM7TbZQHCTR8
         SxP84z9DV4WvAqGfLQirOEJTgk5zZa4IDTWL5P5fSreEb0LAZZ6gVdTwloqv9L3zV6ip
         pFNprDIaZLdSRMt55VhP04c6tn0bw9CW1Q4SqPxon/QMNEHwN28MUhCQtB5eTiF2xhcM
         rpwoizKnhdcldmghi9PKVVVHL5UnNset0sozGSPibBhp7szkPmC39kKbewPbSvm6AOQj
         TAIQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=Wb3T6XhWYXCd856B2NXoU9r2vjFeztKVzY03DBHVHgU=;
        b=igUqP6DPplbccvsTgLjm1qfzKUBdfbpNJ+l/v0RdYmG96CcvEQj2ZMjuNvRiRYiDe9
         uQiWOKfT8i+Q00JBB6aWIvKUcPfpL3/JAXlhQ91rThwMxV8b29/dypfu2FzSUueE8EDS
         8PrvmzijKIA3MN0G8LQ0DfyFSTnrGILk8alu2dgMSrnJiJ28fhl4/1+RoDD+kVUeqDqK
         uRHYa8dwqVL2q335oR5zfMGY5Ri7T4zGN08WY2Zqr8UcRa5XUKDoswmODGZou4eD2qXa
         t755XA2sJdYVOCt1uEVBJJQKOU0gmWUGrJDYC9sl3R1MbAmkTvukLHnJS6MSp3dJmOnZ
         zLPg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.100 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Wb3T6XhWYXCd856B2NXoU9r2vjFeztKVzY03DBHVHgU=;
        b=hKOJcT2JeV7C/17TmEpbdSu/kivSrgsZ/wOg41OoFlB1JVxi047hh9EDC1zdlBDund
         rnR7aQ0DIZj5rikrfGmUEq/cQK0iRtaPAqdNKfJhCiTl9QqNYQiMlS/4ppG5GUQuDUds
         fEF+PAD7uFrpTog0hMRehnWUa9dDsP5rF6lziRsgB7NHNVMye/nnsRxhw3jTF7qb5kUp
         bLaXea1+kFB27GpQzQGJgBbivrU3caKDKX0OqKuKTIBk57oseSbsaiE8W3pYy4sVqm2+
         vgydGxQ5MD2KnLZtG26FOgbMne7i9yOJNFe9p1QhjuvmeJWQoPEBx/J8gGxS4vzgMcTK
         MsRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Wb3T6XhWYXCd856B2NXoU9r2vjFeztKVzY03DBHVHgU=;
        b=ZN0oLd6dvEPEzjY9v3i0lQ5RWZheVmaXO3XIj/es9PrS8BvWIcbJQyfKAjDXgxzGbR
         Z8yBUSTW7jDCqUgjpFth4NuuYJhJdKq+O4u4OXMX16ln1BKFWrpQdDroK2CiDlHp4DcX
         5HmubiK+RcWGevVooVEegVdmbA3ujG8+ssDA9ieQLHkt5Dto4nsOFXUdkIMEWQM+tY33
         WZf7cH5LWw5EsU88oFvFZeXcZfhuPJCFgfISUB/iZr4V+grsEuUq+8dZvBZA68eOuE6r
         SkhWGDGwF9NKuvoHk9bAwgB+EvdmH2YpSZOx/oMngvHGWp2KjwVrN4cYGP9oUsjATo7L
         g4zw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530syIuSvpZAN1R8YFM+/+HAgyZXdI4aKVzkkPqPXYl2n0aVaqDK
	LDot/BFY//PnFH71WKBH0w8=
X-Google-Smtp-Source: ABdhPJwI93ultcetFs9zeM76jKM21+nOk3UVdxCWuKeWO1mgHJzO1Un/Zf8GN33nvftBDGquUx7ZjQ==
X-Received: by 2002:a17:902:9b8a:b029:e6:17bb:eff0 with SMTP id y10-20020a1709029b8ab02900e617bbeff0mr15252968plp.54.1616171897294;
        Fri, 19 Mar 2021 09:38:17 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:ac09:: with SMTP id v9ls2627923pfe.2.gmail; Fri, 19 Mar
 2021 09:38:16 -0700 (PDT)
X-Received: by 2002:a63:1026:: with SMTP id f38mr12501689pgl.142.1616171896524;
        Fri, 19 Mar 2021 09:38:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1616171896; cv=none;
        d=google.com; s=arc-20160816;
        b=i+ZaVlB5Qc2bFMRP4xd8vHq0tVhO+29mKuqOwrf+vMvd7BUUaIpBTWJ0LfYkhpuPFf
         2DhX8GCpBvMpS39xeQyYnyjQQGY4UO5ykKFPYafrdkvra3JAjKlx/AxEb5zHc4t5/3Yx
         CTjCNqS1RePr6KfCmAKPvJ+XwYgscvl4uFEpReTAFFRKk1SUqTaE9E0/G7daJ4yZAUBs
         bfg3nKVi3FS7FYeynkBPfSAKixT2mZ38MYZNi74Sybc/bQolxAb61ZFOL/UU4OXAsyYQ
         x85st1V3W0N+BlV0DBrliNFlumeoV2X/Sy18R85SgXKuhgoKvJiBWa5mW3Rs8qdx4kpi
         jlVw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=ylyzMKZmJWE5HCsciP+i8mL6keZ2/P1E8/18942lrpk=;
        b=sf5Bq80TyMfhKzepD5kJN6tMlmhEfFA46FXu8l7RfOJYoC+kCNVYSKUgPhxi8d7FoX
         vkzs6U4dyPy2QtxIPNw4T6DzBl6/n1bZ96rIPvdgYZnb+JcEty9emYezG/bf3felO1Ql
         5B/uHiNEym/UCbvKXQnFlbNfQHqA3wUO+hax8l4BClRSV3f/F+JM9fj/ECk7jDfVjpIQ
         E8Tj47Ber5ATt8x3dxquQ5Q6Qe+sMg7W+oeTrruD3D4MjstM/mepTGsTuzOYak+uDKf7
         cCz2PpZyiZbslca1i2s3biQCP5RzFCvGtXHM13EBnDPBLDEpl1PTmZfWgvAnGSjGQpVB
         EVbg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.100 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga07.intel.com (mga07.intel.com. [134.134.136.100])
        by gmr-mx.google.com with ESMTPS id h92si375104pjd.2.2021.03.19.09.38.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 19 Mar 2021 09:38:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.100 as permitted sender) client-ip=134.134.136.100;
IronPort-SDR: JgpRBgJqy2XX+Jafj6DUrYemgKXvB5tfBY7PU66aY4T3DiIQRR4UcHyctEgxVUZsk/KrkQjVfQ
 INOHlg0PTVxw==
X-IronPort-AV: E=McAfee;i="6000,8403,9928"; a="253927296"
X-IronPort-AV: E=Sophos;i="5.81,262,1610438400"; 
   d="gz'50?scan'50,208,50";a="253927296"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
  by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 19 Mar 2021 09:38:14 -0700
IronPort-SDR: y6LIVnoQ7tclC686yIa1OlTJs2FR+N0VvC8i1KCKWxJWLBsUgyEV2Debx+JG9z7Y8iiWY/OL+f
 u0QUajW6G4cQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,262,1610438400"; 
   d="gz'50?scan'50,208,50";a="434336682"
Received: from lkp-server02.sh.intel.com (HELO 1c294c63cb86) ([10.239.97.151])
  by fmsmga004.fm.intel.com with ESMTP; 19 Mar 2021 09:38:13 -0700
Received: from kbuild by 1c294c63cb86 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1lNI8a-0001vj-Dd; Fri, 19 Mar 2021 16:38:12 +0000
Date: Sat, 20 Mar 2021 00:37:12 +0800
From: kernel test robot <lkp@intel.com>
To: Arnd Bergmann <arnd@arndb.de>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com
Subject: [arnd-playground:randconfig-v5.12 323/597]
 arch/powerpc/kernel/vdso32/vgettimeofday.c:7:5: error: conflicting types for
 '__c_kernel_clock_gettime'
Message-ID: <202103200006.LT69z0VT-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="a8Wt8u1KmwUX3Y2C"
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


--a8Wt8u1KmwUX3Y2C
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi Arnd,

First bad commit (maybe != root cause):

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/arnd/playground.git randconfig-v5.12
head:   fd21c2581b744639b5207c11651ab40abf13701a
commit: c43a5a05c0cd6cc79fa4cf9400d94faf4f663b6f [323/597] fixup warnings
config: powerpc64-randconfig-r004-20210318 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project fcc1ce00931751ac02498986feb37744e9ace8de)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install powerpc64 cross compiling tool for clang build
        # apt-get install binutils-powerpc64-linux-gnu
        # https://git.kernel.org/pub/scm/linux/kernel/git/arnd/playground.git/commit/?id=c43a5a05c0cd6cc79fa4cf9400d94faf4f663b6f
        git remote add arnd-playground https://git.kernel.org/pub/scm/linux/kernel/git/arnd/playground.git
        git fetch --no-tags arnd-playground randconfig-v5.12
        git checkout c43a5a05c0cd6cc79fa4cf9400d94faf4f663b6f
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=powerpc64 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All error/warnings (new ones prefixed by >>):

>> clang-13: warning: -Wl,-a32: 'linker' input unused [-Wunused-command-line-argument]
   clang-13: warning: argument unused during compilation: '-s' [-Wunused-command-line-argument]
--
>> clang-13: warning: -Wl,-soname=linux-vdso32.so.1: 'linker' input unused [-Wunused-command-line-argument]
>> clang-13: warning: -Wl,--hash-style=both: 'linker' input unused [-Wunused-command-line-argument]
   clang-13: warning: argument unused during compilation: '-shared' [-Wunused-command-line-argument]
   In file included from <built-in>:3:
   In file included from lib/vdso/gettimeofday.c:5:
   In file included from include/vdso/datapage.h:137:
>> arch/powerpc/include/asm/vdso/gettimeofday.h:137:55: warning: declaration of 'struct old_timespec32' will not be visible outside of this function [-Wvisibility]
   int clock_gettime32_fallback(clockid_t _clkid, struct old_timespec32 *_ts)
                                                         ^
   arch/powerpc/include/asm/vdso/gettimeofday.h:143:54: warning: declaration of 'struct old_timespec32' will not be visible outside of this function [-Wvisibility]
   int clock_getres32_fallback(clockid_t _clkid, struct old_timespec32 *_ts)
                                                        ^
   arch/powerpc/include/asm/vdso/gettimeofday.h:202:54: warning: declaration of 'struct old_timespec32' will not be visible outside of this function [-Wvisibility]
   int __c_kernel_clock_gettime(clockid_t clock, struct old_timespec32 *ts,
                                                        ^
   arch/powerpc/include/asm/vdso/gettimeofday.h:206:56: warning: declaration of 'struct old_timespec32' will not be visible outside of this function [-Wvisibility]
   int __c_kernel_clock_getres(clockid_t clock_id, struct old_timespec32 *res,
                                                          ^
>> arch/powerpc/kernel/vdso32/vgettimeofday.c:7:54: warning: declaration of 'struct old_timespec32' will not be visible outside of this function [-Wvisibility]
   int __c_kernel_clock_gettime(clockid_t clock, struct old_timespec32 *ts,
                                                        ^
>> arch/powerpc/kernel/vdso32/vgettimeofday.c:7:5: error: conflicting types for '__c_kernel_clock_gettime'
   int __c_kernel_clock_gettime(clockid_t clock, struct old_timespec32 *ts,
       ^
   arch/powerpc/include/asm/vdso/gettimeofday.h:202:5: note: previous declaration is here
   int __c_kernel_clock_gettime(clockid_t clock, struct old_timespec32 *ts,
       ^
>> arch/powerpc/kernel/vdso32/vgettimeofday.c:10:9: error: implicit declaration of function '__cvdso_clock_gettime32_data' [-Werror,-Wimplicit-function-declaration]
           return __cvdso_clock_gettime32_data(vd, clock, ts);
                  ^
   arch/powerpc/kernel/vdso32/vgettimeofday.c:10:9: note: did you mean '__cvdso_clock_gettime_data'?
   lib/vdso/gettimeofday.c:252:1: note: '__cvdso_clock_gettime_data' declared here
   __cvdso_clock_gettime_data(const struct vdso_data *vd, clockid_t clock,
   ^
   arch/powerpc/kernel/vdso32/vgettimeofday.c:25:56: warning: declaration of 'struct old_timespec32' will not be visible outside of this function [-Wvisibility]
   int __c_kernel_clock_getres(clockid_t clock_id, struct old_timespec32 *res,
                                                          ^
>> arch/powerpc/kernel/vdso32/vgettimeofday.c:25:5: error: conflicting types for '__c_kernel_clock_getres'
   int __c_kernel_clock_getres(clockid_t clock_id, struct old_timespec32 *res,
       ^
   arch/powerpc/include/asm/vdso/gettimeofday.h:206:5: note: previous declaration is here
   int __c_kernel_clock_getres(clockid_t clock_id, struct old_timespec32 *res,
       ^
>> arch/powerpc/kernel/vdso32/vgettimeofday.c:28:9: error: implicit declaration of function '__cvdso_clock_getres_time32_data' [-Werror,-Wimplicit-function-declaration]
           return __cvdso_clock_getres_time32_data(vd, clock_id, res);
                  ^
   arch/powerpc/kernel/vdso32/vgettimeofday.c:28:9: note: did you mean '__cvdso_clock_gettime_data'?
   lib/vdso/gettimeofday.c:252:1: note: '__cvdso_clock_gettime_data' declared here
   __cvdso_clock_gettime_data(const struct vdso_data *vd, clockid_t clock,
   ^
   6 warnings and 4 errors generated.
--
>> clang-13: warning: -Wl,-soname=linux-vdso32.so.1: 'linker' input unused [-Wunused-command-line-argument]
>> clang-13: warning: -Wl,--hash-style=both: 'linker' input unused [-Wunused-command-line-argument]
   clang-13: warning: argument unused during compilation: '-shared' [-Wunused-command-line-argument]
   In file included from <built-in>:3:
   In file included from lib/vdso/gettimeofday.c:5:
   In file included from include/vdso/datapage.h:137:
>> arch/powerpc/include/asm/vdso/gettimeofday.h:137:55: warning: declaration of 'struct old_timespec32' will not be visible outside of this function [-Wvisibility]
   int clock_gettime32_fallback(clockid_t _clkid, struct old_timespec32 *_ts)
                                                         ^
   arch/powerpc/include/asm/vdso/gettimeofday.h:143:54: warning: declaration of 'struct old_timespec32' will not be visible outside of this function [-Wvisibility]
   int clock_getres32_fallback(clockid_t _clkid, struct old_timespec32 *_ts)
                                                        ^
   arch/powerpc/include/asm/vdso/gettimeofday.h:202:54: warning: declaration of 'struct old_timespec32' will not be visible outside of this function [-Wvisibility]
   int __c_kernel_clock_gettime(clockid_t clock, struct old_timespec32 *ts,
                                                        ^
   arch/powerpc/include/asm/vdso/gettimeofday.h:206:56: warning: declaration of 'struct old_timespec32' will not be visible outside of this function [-Wvisibility]
   int __c_kernel_clock_getres(clockid_t clock_id, struct old_timespec32 *res,
                                                          ^
>> arch/powerpc/kernel/vdso32/vgettimeofday.c:7:54: warning: declaration of 'struct old_timespec32' will not be visible outside of this function [-Wvisibility]
   int __c_kernel_clock_gettime(clockid_t clock, struct old_timespec32 *ts,
                                                        ^
>> arch/powerpc/kernel/vdso32/vgettimeofday.c:7:5: error: conflicting types for '__c_kernel_clock_gettime'
   int __c_kernel_clock_gettime(clockid_t clock, struct old_timespec32 *ts,
       ^
   arch/powerpc/include/asm/vdso/gettimeofday.h:202:5: note: previous declaration is here
   int __c_kernel_clock_gettime(clockid_t clock, struct old_timespec32 *ts,
       ^
>> arch/powerpc/kernel/vdso32/vgettimeofday.c:10:9: error: implicit declaration of function '__cvdso_clock_gettime32_data' [-Werror,-Wimplicit-function-declaration]
           return __cvdso_clock_gettime32_data(vd, clock, ts);
                  ^
   arch/powerpc/kernel/vdso32/vgettimeofday.c:10:9: note: did you mean '__cvdso_clock_gettime_data'?
   lib/vdso/gettimeofday.c:252:1: note: '__cvdso_clock_gettime_data' declared here
   __cvdso_clock_gettime_data(const struct vdso_data *vd, clockid_t clock,
   ^
   arch/powerpc/kernel/vdso32/vgettimeofday.c:25:56: warning: declaration of 'struct old_timespec32' will not be visible outside of this function [-Wvisibility]
   int __c_kernel_clock_getres(clockid_t clock_id, struct old_timespec32 *res,
                                                          ^
>> arch/powerpc/kernel/vdso32/vgettimeofday.c:25:5: error: conflicting types for '__c_kernel_clock_getres'
   int __c_kernel_clock_getres(clockid_t clock_id, struct old_timespec32 *res,
       ^
   arch/powerpc/include/asm/vdso/gettimeofday.h:206:5: note: previous declaration is here
   int __c_kernel_clock_getres(clockid_t clock_id, struct old_timespec32 *res,
       ^
>> arch/powerpc/kernel/vdso32/vgettimeofday.c:28:9: error: implicit declaration of function '__cvdso_clock_getres_time32_data' [-Werror,-Wimplicit-function-declaration]
           return __cvdso_clock_getres_time32_data(vd, clock_id, res);
                  ^
   arch/powerpc/kernel/vdso32/vgettimeofday.c:28:9: note: did you mean '__cvdso_clock_gettime_data'?
   lib/vdso/gettimeofday.c:252:1: note: '__cvdso_clock_gettime_data' declared here
   __cvdso_clock_gettime_data(const struct vdso_data *vd, clockid_t clock,
   ^
   6 warnings and 4 errors generated.
   make[2]: *** [arch/powerpc/kernel/vdso32/Makefile:57: arch/powerpc/kernel/vdso32/vgettimeofday.o] Error 1
   make[2]: Target 'include/generated/vdso32-offsets.h' not remade because of errors.
   make[1]: *** [arch/powerpc/Makefile:423: vdso_prepare] Error 2
   make[1]: Target 'modules_prepare' not remade because of errors.
   make: *** [Makefile:215: __sub-make] Error 2
   make: Target 'modules_prepare' not remade because of errors.
--
   In file included from arch/powerpc/kernel/asm-offsets.c:14:
   In file included from include/linux/compat.h:14:
   In file included from include/linux/sem.h:5:
   In file included from include/uapi/linux/sem.h:5:
   In file included from include/linux/ipc.h:5:
   In file included from include/linux/spinlock.h:90:
   In file included from arch/powerpc/include/asm/spinlock.h:7:
   arch/powerpc/include/asm/qspinlock.h:40:49: warning: passing 'u32 *' (aka 'unsigned int *') to parameter of type 'int *' converts between pointers to integer types with different sign [-Wpointer-sign]
           if (likely(atomic_try_cmpxchg_lock(&lock->val, &val, _Q_LOCKED_VAL)))
                                                          ^~~~
   include/linux/compiler.h:77:40: note: expanded from macro 'likely'
   # define likely(x)      __builtin_expect(!!(x), 1)
                                               ^
   arch/powerpc/include/asm/atomic.h:202:43: note: passing argument to parameter 'old' here
   atomic_try_cmpxchg_lock(atomic_t *v, int *old, int new)
                                             ^
   In file included from arch/powerpc/kernel/asm-offsets.c:39:
   In file included from arch/powerpc/include/asm/dbell.h:17:
   In file included from arch/powerpc/include/asm/kvm_ppc.h:19:
   In file included from include/linux/kvm_host.h:37:
   In file included from arch/powerpc/include/asm/kvm_host.h:26:
   arch/powerpc/include/asm/hvcall.h:625:41: warning: field 'params' with variable sized type 'struct hv_get_perf_counter_info_params' not at the end of a struct or class is a GNU extension [-Wgnu-variable-sized-type-not-at-end]
           struct hv_get_perf_counter_info_params params;
                                                  ^
   2 warnings generated.
   clang-13clang-13: : warning: warning: -Wl,-a32: 'linker' input unused [-Wunused-command-line-argument]
   -Wl,-a32: 'linker' input unused [-Wunused-command-line-argument]
   clang-13clang-13: : warning: -Wl,-a32: 'linker' input unused [-Wunused-command-line-argument]
   warning: -Wl,-a32: 'linker' input unused [-Wunused-command-line-argument]
   clang-13: clang-13warning: : argument unused during compilation: '-s' [-Wunused-command-line-argument]
   warning: argument unused during compilation: '-s' [-Wunused-command-line-argument]
   clang-13: warning: argument unused during compilation: '-s' [-Wunused-command-line-argument]
   clang-13: warning: argument unused during compilation: '-s' [-Wunused-command-line-argument]
>> clang-13: warning: -Wl,-a32: 'linker' input unused [-Wunused-command-line-argument]
   clang-13: warning: argument unused during compilation: '-s' [-Wunused-command-line-argument]
>> clang-13: warning: -Wl,-soname=linux-vdso32.so.1: 'linker' input unused [-Wunused-command-line-argument]
>> clang-13: warning: -Wl,--hash-style=both: 'linker' input unused [-Wunused-command-line-argument]
   clang-13: warning: argument unused during compilation: '-shared' [-Wunused-command-line-argument]
   In file included from <built-in>:3:
   In file included from lib/vdso/gettimeofday.c:5:
   In file included from include/vdso/datapage.h:137:
>> arch/powerpc/include/asm/vdso/gettimeofday.h:137:55: warning: declaration of 'struct old_timespec32' will not be visible outside of this function [-Wvisibility]
   int clock_gettime32_fallback(clockid_t _clkid, struct old_timespec32 *_ts)
                                                         ^
   arch/powerpc/include/asm/vdso/gettimeofday.h:143:54: warning: declaration of 'struct old_timespec32' will not be visible outside of this function [-Wvisibility]
   int clock_getres32_fallback(clockid_t _clkid, struct old_timespec32 *_ts)
                                                        ^
   arch/powerpc/include/asm/vdso/gettimeofday.h:202:54: warning: declaration of 'struct old_timespec32' will not be visible outside of this function [-Wvisibility]
   int __c_kernel_clock_gettime(clockid_t clock, struct old_timespec32 *ts,
                                                        ^
   arch/powerpc/include/asm/vdso/gettimeofday.h:206:56: warning: declaration of 'struct old_timespec32' will not be visible outside of this function [-Wvisibility]
   int __c_kernel_clock_getres(clockid_t clock_id, struct old_timespec32 *res,
                                                          ^
>> arch/powerpc/kernel/vdso32/vgettimeofday.c:7:54: warning: declaration of 'struct old_timespec32' will not be visible outside of this function [-Wvisibility]
   int __c_kernel_clock_gettime(clockid_t clock, struct old_timespec32 *ts,
                                                        ^
>> arch/powerpc/kernel/vdso32/vgettimeofday.c:7:5: error: conflicting types for '__c_kernel_clock_gettime'
   int __c_kernel_clock_gettime(clockid_t clock, struct old_timespec32 *ts,
       ^
   arch/powerpc/include/asm/vdso/gettimeofday.h:202:5: note: previous declaration is here
   int __c_kernel_clock_gettime(clockid_t clock, struct old_timespec32 *ts,
       ^
>> arch/powerpc/kernel/vdso32/vgettimeofday.c:10:9: error: implicit declaration of function '__cvdso_clock_gettime32_data' [-Werror,-Wimplicit-function-declaration]
           return __cvdso_clock_gettime32_data(vd, clock, ts);
                  ^
   arch/powerpc/kernel/vdso32/vgettimeofday.c:10:9: note: did you mean '__cvdso_clock_gettime_data'?
   lib/vdso/gettimeofday.c:252:1: note: '__cvdso_clock_gettime_data' declared here
   __cvdso_clock_gettime_data(const struct vdso_data *vd, clockid_t clock,
   ^
   arch/powerpc/kernel/vdso32/vgettimeofday.c:25:56: warning: declaration of 'struct old_timespec32' will not be visible outside of this function [-Wvisibility]
   int __c_kernel_clock_getres(clockid_t clock_id, struct old_timespec32 *res,
                                                          ^
>> arch/powerpc/kernel/vdso32/vgettimeofday.c:25:5: error: conflicting types for '__c_kernel_clock_getres'
   int __c_kernel_clock_getres(clockid_t clock_id, struct old_timespec32 *res,
       ^
   arch/powerpc/include/asm/vdso/gettimeofday.h:206:5: note: previous declaration is here
   int __c_kernel_clock_getres(clockid_t clock_id, struct old_timespec32 *res,
       ^
>> arch/powerpc/kernel/vdso32/vgettimeofday.c:28:9: error: implicit declaration of function '__cvdso_clock_getres_time32_data' [-Werror,-Wimplicit-function-declaration]
           return __cvdso_clock_getres_time32_data(vd, clock_id, res);
                  ^
   arch/powerpc/kernel/vdso32/vgettimeofday.c:28:9: note: did you mean '__cvdso_clock_gettime_data'?
   lib/vdso/gettimeofday.c:252:1: note: '__cvdso_clock_gettime_data' declared here
   __cvdso_clock_gettime_data(const struct vdso_data *vd, clockid_t clock,
   ^
   6 warnings and 4 errors generated.
   make[2]: *** [arch/powerpc/kernel/vdso32/Makefile:57: arch/powerpc/kernel/vdso32/vgettimeofday.o] Error 1
   make[2]: Target 'include/generated/vdso32-offsets.h' not remade because of errors.
   make[1]: *** [arch/powerpc/Makefile:423: vdso_prepare] Error 2
   make[1]: Target 'prepare' not remade because of errors.
   make: *** [Makefile:215: __sub-make] Error 2
   make: Target 'prepare' not remade because of errors.


vim +/__c_kernel_clock_gettime +7 arch/powerpc/kernel/vdso32/vgettimeofday.c

ce7d8056e38b77 Christophe Leroy 2020-11-27   6  
ce7d8056e38b77 Christophe Leroy 2020-11-27  @7  int __c_kernel_clock_gettime(clockid_t clock, struct old_timespec32 *ts,
ce7d8056e38b77 Christophe Leroy 2020-11-27   8  			     const struct vdso_data *vd)
ce7d8056e38b77 Christophe Leroy 2020-11-27   9  {
ce7d8056e38b77 Christophe Leroy 2020-11-27 @10  	return __cvdso_clock_gettime32_data(vd, clock, ts);
ce7d8056e38b77 Christophe Leroy 2020-11-27  11  }
ce7d8056e38b77 Christophe Leroy 2020-11-27  12  
d0e3fc69d00d1f Christophe Leroy 2020-11-27  13  int __c_kernel_clock_gettime64(clockid_t clock, struct __kernel_timespec *ts,
d0e3fc69d00d1f Christophe Leroy 2020-11-27  14  			       const struct vdso_data *vd)
d0e3fc69d00d1f Christophe Leroy 2020-11-27  15  {
d0e3fc69d00d1f Christophe Leroy 2020-11-27  16  	return __cvdso_clock_gettime_data(vd, clock, ts);
d0e3fc69d00d1f Christophe Leroy 2020-11-27  17  }
d0e3fc69d00d1f Christophe Leroy 2020-11-27  18  
ce7d8056e38b77 Christophe Leroy 2020-11-27  19  int __c_kernel_gettimeofday(struct __kernel_old_timeval *tv, struct timezone *tz,
ce7d8056e38b77 Christophe Leroy 2020-11-27  20  			    const struct vdso_data *vd)
ce7d8056e38b77 Christophe Leroy 2020-11-27  21  {
ce7d8056e38b77 Christophe Leroy 2020-11-27  22  	return __cvdso_gettimeofday_data(vd, tv, tz);
ce7d8056e38b77 Christophe Leroy 2020-11-27  23  }
ce7d8056e38b77 Christophe Leroy 2020-11-27  24  
ce7d8056e38b77 Christophe Leroy 2020-11-27 @25  int __c_kernel_clock_getres(clockid_t clock_id, struct old_timespec32 *res,
ce7d8056e38b77 Christophe Leroy 2020-11-27  26  			    const struct vdso_data *vd)
ce7d8056e38b77 Christophe Leroy 2020-11-27  27  {
ce7d8056e38b77 Christophe Leroy 2020-11-27 @28  	return __cvdso_clock_getres_time32_data(vd, clock_id, res);
ce7d8056e38b77 Christophe Leroy 2020-11-27  29  }
ce7d8056e38b77 Christophe Leroy 2020-11-27  30  

:::::: The code at line 7 was first introduced by commit
:::::: ce7d8056e38b770f070fc4499c577322b6ccb9c7 powerpc/vdso: Prepare for switching VDSO to generic C implementation.

:::::: TO: Christophe Leroy <christophe.leroy@csgroup.eu>
:::::: CC: Michael Ellerman <mpe@ellerman.id.au>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202103200006.LT69z0VT-lkp%40intel.com.

--a8Wt8u1KmwUX3Y2C
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
16e+1J9K/Q/pejWNnhwCAA==

--a8Wt8u1KmwUX3Y2C--
