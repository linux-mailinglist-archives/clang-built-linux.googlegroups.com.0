Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBVOXU35AKGQEP3POFHA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63b.google.com (mail-pl1-x63b.google.com [IPv6:2607:f8b0:4864:20::63b])
	by mail.lfdr.de (Postfix) with ESMTPS id 2014D2563EF
	for <lists+clang-built-linux@lfdr.de>; Sat, 29 Aug 2020 03:14:00 +0200 (CEST)
Received: by mail-pl1-x63b.google.com with SMTP id b14sf637820pls.12
        for <lists+clang-built-linux@lfdr.de>; Fri, 28 Aug 2020 18:14:00 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598663638; cv=pass;
        d=google.com; s=arc-20160816;
        b=dZNiwwaZosFXXB9D6I/sHh9U+ljAsrcl8RA1QSOZyjjPZ/imaKFNajwvY8zBSair4x
         5o+m/5LeIDS5VsWILL8sEVFtd/cEAOBuF3V5xB3uraQUYic4e6TUYxVvDDk9keWXiZhs
         2ilXbvuzom+Z9lGhsEPE+bkim1Q/gcFmBY2Hv2HOhZmtH3mrUm5KO+vQ0rGwwdFvl2HY
         DxLxEFZLToRuE1GSR2VxZ3D7LqdcuQ+IjPFwTgetmROGGIYlG618ldA7aCiZw/22VOYh
         Gk1W7V3FnAPUwE/YK2cQiogbkhrfudEAjx3FMgsDT/fSQg7fh1/FE57EQKvDKTTuN0sU
         Z6Hw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=AZIUNYqeoDQ/8UvdCZDJNsQ/Jwe3vJ8GPlAT8a+3nys=;
        b=W22WncIeLanA88wt5MDaG4rHOj3VVpMxpXt1FfPuPTCdFtXmiXltLXwsYK1Typp+95
         VTP0Nlar6kspXK5WYB+Sj8EH2QvyPXRlz0av8ShAGNSY2qKPKe4lm1Wcn45J11fjEedE
         r13Y+x1fMZHWF4mhqeGu3ukHIHa2C52A/g6nX3bz+LNsnACkVHmI5SDu3I/zAKM9omwL
         0GAyxC+E/UVQLSvJsiRQSfrrVttHYiu+HVt2BWiqeANprx1TXP92ECcfFIc7Z9uXS2iu
         0hZcBKPZWhgJuWazT24586azkKDjlrtF5LwayldGLRX3SvEKqHHDgu5ThaZYWUco5Dal
         UcSA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.115 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=AZIUNYqeoDQ/8UvdCZDJNsQ/Jwe3vJ8GPlAT8a+3nys=;
        b=s/82ODBWpTCl5htFv5zVXkLGhX7WWP8R5Gycm58+vy9PcVm45XTOLqSGtB4/EapSHE
         5NjFYZfy8M+YCy1LrGa8IhvDdqlLb+19YivD05Amq5YXn8s+oPO5TXZr/SKs17yGvgFE
         y/yWDkfnC8VpooVdHHKhBZe7PmU2tdY8ndIJSECl3q489PZcNWuyDbvKvGcpVsWQI0sg
         X/NsNLkjSE04WhlzDWD9jNOWOG3TMjnrU4lm+lczEHc9VntAJyibZXcp/iLH5AWE6aXq
         KoVIYcZvnZnyXW1HJ+Llu6dJF+gqCauELaDIm5ciDiazifXEDk9CdQLrqmPiWqUk3eo4
         Vg3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=AZIUNYqeoDQ/8UvdCZDJNsQ/Jwe3vJ8GPlAT8a+3nys=;
        b=E5E0YY+ofwGNhky8WuyttXySzGvO9KaMpofvkeCLyZRrpCtEUrDh1q5n7y882ph2VZ
         yjU7H4ayyGtBax634nVLyVrLcIUg6MRb0BbcSKyV+co1u3fKyaIGgTQY4PRCdV2reMuw
         Wcfvi5SijhZk7oF67VWF//Nxyz+P8tSBpVGVA9yPBkS094xfdnabtI1TkjMceZy6iObJ
         7sVEOgFydHpIm5ZOO5+wINp1ztDB/TR2FJ+83EyIM2TCRHq/cIpwQcbN+TF2fXe+NQNT
         VBMKSi6fPgVqbDWmAp/22lLRRrmaaN4WqbM3bII8uq2zpgEC8ByyNRC2+tGERieKvwDw
         Pntg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530GsyoyhrKcZRBAngOWxm/0yzD7w0VGf9CJz6e8R87MOasf2BbZ
	TPnnw4K8N58BSs4WAFCAdkk=
X-Google-Smtp-Source: ABdhPJz01yqRNwlsIbsp0S1yxXT4cZr9l93z+GlXOMrOfFIqyOmCBaMsVkHRWHHGgDjZTdBGfHNIzw==
X-Received: by 2002:a17:90a:bc48:: with SMTP id t8mr1394664pjv.224.1598663638081;
        Fri, 28 Aug 2020 18:13:58 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:9296:: with SMTP id j22ls279204pfa.5.gmail; Fri, 28 Aug
 2020 18:13:57 -0700 (PDT)
X-Received: by 2002:a63:e741:: with SMTP id j1mr1026355pgk.422.1598663637456;
        Fri, 28 Aug 2020 18:13:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598663637; cv=none;
        d=google.com; s=arc-20160816;
        b=HOY2CdE0nPlBF/XAra1uVTnngRnC383bszYrRfsM3qeSQXpHCZq6wtAd3CvJXT0y5X
         qRhXOiYw9D9TRck0uVd0jzAu3MH7kFscm+5V9MUTg9fSAFsSkNSvYjchSluiJO2ZDZnk
         iar01fANFllZw1MeRMb092KebgeUOxCpiWATuS5MVYVjh88VL2Pzw4Dp/2fHpqgVoy++
         Tdqs3rIO7BiDthocRRamr6Cuhqx8PomwpSEPUql6uq495XCgaSPzi0aaED6cMkeV/AXh
         /wUsnuMXuFwDlHKcfjXIVyoQY8OQIMNXgFbAtU9pv0if0JN6hWLQrOd37cZ1SZUudbak
         /XJA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=SFHrA71Km1nyh9cV8HsN/yqXSZSPVOSSDILPEbRYFvQ=;
        b=H+rJIkZlaRDE37SjqmTji4IaX3LBsqDBI6bzEfUsXm61Q2VCH/2cullmtwDpyiHTec
         sFF1MCcneyT/q90rzmx+pik54Qmdi05EtCy24EpFqoEkPhmNV1KuV67lCyZig3Cpj6Hy
         YI8DUAF7QBnCsU9JKgK4ymzrokOLkutoGmx4PbHEdE89vlLW+X+mF43ZH7eUwFiBpvzD
         LAHTbO3uglfvSF2/uJQiolrX82GYEnnHSXGM8+NxA7VVvkQR9YEnkCiCIidqK+01VBI2
         AXX1gw6eKbz6y8E6qZZsZEwch8bTV7ltlPtQwcsl19POKlq21SrN2ffRyBsGXZHpDm+1
         OyaQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.115 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga14.intel.com (mga14.intel.com. [192.55.52.115])
        by gmr-mx.google.com with ESMTPS id bj6si64374plb.4.2020.08.28.18.13.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 28 Aug 2020 18:13:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.115 as permitted sender) client-ip=192.55.52.115;
IronPort-SDR: +EKBEJYLEqKe5Rhf6JT0I+IehM20GmseLfa1je+V6ACovJh10wMuTAyOXdaxhoodJas5NhbrVm
 7GSXuwWwgD3g==
X-IronPort-AV: E=McAfee;i="6000,8403,9727"; a="156030436"
X-IronPort-AV: E=Sophos;i="5.76,365,1592895600"; 
   d="gz'50?scan'50,208,50";a="156030436"
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
  by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 28 Aug 2020 18:13:56 -0700
IronPort-SDR: dknv0IALNRM9Il3yL5BsNj7CabENSGIeDfhZF3pazYpps6X6EsDWuUPRENC7eFvp1Pxzg780Tz
 jElKvuFJ/mVg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,365,1592895600"; 
   d="gz'50?scan'50,208,50";a="475916396"
Received: from lkp-server02.sh.intel.com (HELO 301dc1beeb51) ([10.239.97.151])
  by orsmga005.jf.intel.com with ESMTP; 28 Aug 2020 18:13:54 -0700
Received: from kbuild by 301dc1beeb51 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1kBpRJ-0000I1-Fi; Sat, 29 Aug 2020 01:13:53 +0000
Date: Sat, 29 Aug 2020 09:13:25 +0800
From: kernel test robot <lkp@intel.com>
To: Vinod Koul <vkoul@kernel.org>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com
Subject: [vkoul-soundwire:topic/reg_cleanup 16/24]
 drivers/soundwire/bus.c:627:20: warning: shift count >= width of type
Message-ID: <202008290921.dihQHdto%lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="2fHTh5uZTiUOsy+g"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 192.55.52.115 as permitted
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


--2fHTh5uZTiUOsy+g
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/vkoul/soundwire.git topic/reg_cleanup
head:   922a92d83c55e6368783b518c84c6f54e84e9f38
commit: ce703e8b9fba156573170bae234a561c7e736a8e [16/24] soundwire: define and use addr bit masks
config: powerpc64-randconfig-r031-20200828 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project c10e63677f5d20f18010f8f68c631ddc97546f7d)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install powerpc64 cross compiling tool for clang build
        # apt-get install binutils-powerpc64-linux-gnu
        git checkout ce703e8b9fba156573170bae234a561c7e736a8e
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=powerpc64 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

>> drivers/soundwire/bus.c:627:20: warning: shift count >= width of type [-Wshift-count-overflow]
           id->sdw_version = SDW_VERSION(addr);
                             ^~~~~~~~~~~~~~~~~
   include/linux/soundwire/sdw.h:467:36: note: expanded from macro 'SDW_VERSION'
   #define SDW_VERSION(adr)        FIELD_GET(SDW_VERSION_MASK, addr)
                                   ~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~
   include/linux/soundwire/sdw.h:460:26: note: expanded from macro 'SDW_VERSION_MASK'
   #define SDW_VERSION_MASK        GENMASK(47, 44)
                                   ^
   include/linux/bits.h:38:31: note: expanded from macro 'GENMASK'
           (GENMASK_INPUT_CHECK(h, l) + __GENMASK(h, l))
                                        ^
   note: (skipping 4 expansions in backtrace; use -fmacro-backtrace-limit=0 to see all)
   include/linux/compiler_types.h:319:22: note: expanded from macro 'compiletime_assert'
           _compiletime_assert(condition, msg, __compiletime_assert_, __COUNTER__)
           ~~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/compiler_types.h:307:23: note: expanded from macro '_compiletime_assert'
           __compiletime_assert(condition, msg, prefix, suffix)
           ~~~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/compiler_types.h:299:9: note: expanded from macro '__compiletime_assert'
                   if (!(condition))                                       \
                         ^~~~~~~~~
>> drivers/soundwire/bus.c:627:20: warning: shift count is negative [-Wshift-count-negative]
           id->sdw_version = SDW_VERSION(addr);
                             ^~~~~~~~~~~~~~~~~
   include/linux/soundwire/sdw.h:467:36: note: expanded from macro 'SDW_VERSION'
   #define SDW_VERSION(adr)        FIELD_GET(SDW_VERSION_MASK, addr)
                                   ~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~
   include/linux/soundwire/sdw.h:460:26: note: expanded from macro 'SDW_VERSION_MASK'
   #define SDW_VERSION_MASK        GENMASK(47, 44)
                                   ^
   include/linux/bits.h:38:31: note: expanded from macro 'GENMASK'
           (GENMASK_INPUT_CHECK(h, l) + __GENMASK(h, l))
                                        ^
   note: (skipping 4 expansions in backtrace; use -fmacro-backtrace-limit=0 to see all)
   include/linux/compiler_types.h:319:22: note: expanded from macro 'compiletime_assert'
           _compiletime_assert(condition, msg, __compiletime_assert_, __COUNTER__)
           ~~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/compiler_types.h:307:23: note: expanded from macro '_compiletime_assert'
           __compiletime_assert(condition, msg, prefix, suffix)
           ~~~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/compiler_types.h:299:9: note: expanded from macro '__compiletime_assert'
                   if (!(condition))                                       \
                         ^~~~~~~~~
>> drivers/soundwire/bus.c:627:20: warning: shift count >= width of type [-Wshift-count-overflow]
           id->sdw_version = SDW_VERSION(addr);
                             ^~~~~~~~~~~~~~~~~
   include/linux/soundwire/sdw.h:467:36: note: expanded from macro 'SDW_VERSION'
   #define SDW_VERSION(adr)        FIELD_GET(SDW_VERSION_MASK, addr)
                                   ~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~
   include/linux/soundwire/sdw.h:460:26: note: expanded from macro 'SDW_VERSION_MASK'
   #define SDW_VERSION_MASK        GENMASK(47, 44)
                                   ^
   include/linux/bits.h:38:31: note: expanded from macro 'GENMASK'
           (GENMASK_INPUT_CHECK(h, l) + __GENMASK(h, l))
                                        ^
   note: (skipping 4 expansions in backtrace; use -fmacro-backtrace-limit=0 to see all)
   include/linux/compiler_types.h:319:22: note: expanded from macro 'compiletime_assert'
           _compiletime_assert(condition, msg, __compiletime_assert_, __COUNTER__)
           ~~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/compiler_types.h:307:23: note: expanded from macro '_compiletime_assert'
           __compiletime_assert(condition, msg, prefix, suffix)
           ~~~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/compiler_types.h:299:9: note: expanded from macro '__compiletime_assert'
                   if (!(condition))                                       \
                         ^~~~~~~~~
>> drivers/soundwire/bus.c:627:20: warning: shift count is negative [-Wshift-count-negative]
           id->sdw_version = SDW_VERSION(addr);
                             ^~~~~~~~~~~~~~~~~
   include/linux/soundwire/sdw.h:467:36: note: expanded from macro 'SDW_VERSION'
   #define SDW_VERSION(adr)        FIELD_GET(SDW_VERSION_MASK, addr)
                                   ~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~
   include/linux/soundwire/sdw.h:460:26: note: expanded from macro 'SDW_VERSION_MASK'
   #define SDW_VERSION_MASK        GENMASK(47, 44)
                                   ^
   include/linux/bits.h:38:31: note: expanded from macro 'GENMASK'
           (GENMASK_INPUT_CHECK(h, l) + __GENMASK(h, l))
                                        ^
   note: (skipping 4 expansions in backtrace; use -fmacro-backtrace-limit=0 to see all)
   include/linux/compiler_types.h:319:22: note: expanded from macro 'compiletime_assert'
           _compiletime_assert(condition, msg, __compiletime_assert_, __COUNTER__)
           ~~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/compiler_types.h:307:23: note: expanded from macro '_compiletime_assert'
           __compiletime_assert(condition, msg, prefix, suffix)
           ~~~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/compiler_types.h:299:9: note: expanded from macro '__compiletime_assert'
                   if (!(condition))                                       \
                         ^~~~~~~~~
>> drivers/soundwire/bus.c:627:20: warning: shift count >= width of type [-Wshift-count-overflow]
           id->sdw_version = SDW_VERSION(addr);
                             ^~~~~~~~~~~~~~~~~
   include/linux/soundwire/sdw.h:467:36: note: expanded from macro 'SDW_VERSION'
   #define SDW_VERSION(adr)        FIELD_GET(SDW_VERSION_MASK, addr)
                                   ~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~
   include/linux/soundwire/sdw.h:460:26: note: expanded from macro 'SDW_VERSION_MASK'
   #define SDW_VERSION_MASK        GENMASK(47, 44)
                                   ^
   include/linux/bits.h:38:31: note: expanded from macro 'GENMASK'
           (GENMASK_INPUT_CHECK(h, l) + __GENMASK(h, l))
                                        ^
   note: (skipping 4 expansions in backtrace; use -fmacro-backtrace-limit=0 to see all)
   include/linux/compiler_types.h:319:22: note: expanded from macro 'compiletime_assert'
           _compiletime_assert(condition, msg, __compiletime_assert_, __COUNTER__)
           ~~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/compiler_types.h:307:23: note: expanded from macro '_compiletime_assert'
           __compiletime_assert(condition, msg, prefix, suffix)
           ~~~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/compiler_types.h:299:9: note: expanded from macro '__compiletime_assert'
                   if (!(condition))                                       \
                         ^~~~~~~~~
>> drivers/soundwire/bus.c:627:20: warning: shift count is negative [-Wshift-count-negative]
           id->sdw_version = SDW_VERSION(addr);
                             ^~~~~~~~~~~~~~~~~
   include/linux/soundwire/sdw.h:467:36: note: expanded from macro 'SDW_VERSION'
   #define SDW_VERSION(adr)        FIELD_GET(SDW_VERSION_MASK, addr)
                                   ~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~
   include/linux/soundwire/sdw.h:460:26: note: expanded from macro 'SDW_VERSION_MASK'
   #define SDW_VERSION_MASK        GENMASK(47, 44)
                                   ^
   include/linux/bits.h:38:31: note: expanded from macro 'GENMASK'
           (GENMASK_INPUT_CHECK(h, l) + __GENMASK(h, l))
                                        ^
   note: (skipping 4 expansions in backtrace; use -fmacro-backtrace-limit=0 to see all)
   include/linux/compiler_types.h:319:22: note: expanded from macro 'compiletime_assert'
           _compiletime_assert(condition, msg, __compiletime_assert_, __COUNTER__)
           ~~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/compiler_types.h:307:23: note: expanded from macro '_compiletime_assert'
           __compiletime_assert(condition, msg, prefix, suffix)
           ~~~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/compiler_types.h:299:9: note: expanded from macro '__compiletime_assert'
                   if (!(condition))                                       \
                         ^~~~~~~~~
>> drivers/soundwire/bus.c:627:20: warning: shift count >= width of type [-Wshift-count-overflow]
           id->sdw_version = SDW_VERSION(addr);
                             ^~~~~~~~~~~~~~~~~
   include/linux/soundwire/sdw.h:467:36: note: expanded from macro 'SDW_VERSION'
   #define SDW_VERSION(adr)        FIELD_GET(SDW_VERSION_MASK, addr)
                                   ~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~
   include/linux/soundwire/sdw.h:460:26: note: expanded from macro 'SDW_VERSION_MASK'
   #define SDW_VERSION_MASK        GENMASK(47, 44)
                                   ^
   include/linux/bits.h:38:31: note: expanded from macro 'GENMASK'
           (GENMASK_INPUT_CHECK(h, l) + __GENMASK(h, l))
                                        ^
   note: (skipping 5 expansions in backtrace; use -fmacro-backtrace-limit=0 to see all)
   include/linux/compiler_types.h:319:22: note: expanded from macro 'compiletime_assert'
           _compiletime_assert(condition, msg, __compiletime_assert_, __COUNTER__)
           ~~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/compiler_types.h:307:23: note: expanded from macro '_compiletime_assert'
           __compiletime_assert(condition, msg, prefix, suffix)
           ~~~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/compiler_types.h:299:9: note: expanded from macro '__compiletime_assert'
                   if (!(condition))                                       \
                         ^~~~~~~~~
>> drivers/soundwire/bus.c:627:20: warning: shift count is negative [-Wshift-count-negative]
           id->sdw_version = SDW_VERSION(addr);
                             ^~~~~~~~~~~~~~~~~
   include/linux/soundwire/sdw.h:467:36: note: expanded from macro 'SDW_VERSION'
   #define SDW_VERSION(adr)        FIELD_GET(SDW_VERSION_MASK, addr)
                                   ~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~
   include/linux/soundwire/sdw.h:460:26: note: expanded from macro 'SDW_VERSION_MASK'
   #define SDW_VERSION_MASK        GENMASK(47, 44)
                                   ^
   include/linux/bits.h:38:31: note: expanded from macro 'GENMASK'
           (GENMASK_INPUT_CHECK(h, l) + __GENMASK(h, l))
                                        ^
   note: (skipping 5 expansions in backtrace; use -fmacro-backtrace-limit=0 to see all)
   include/linux/compiler_types.h:319:22: note: expanded from macro 'compiletime_assert'
           _compiletime_assert(condition, msg, __compiletime_assert_, __COUNTER__)
           ~~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/compiler_types.h:307:23: note: expanded from macro '_compiletime_assert'
           __compiletime_assert(condition, msg, prefix, suffix)
           ~~~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/compiler_types.h:299:9: note: expanded from macro '__compiletime_assert'
                   if (!(condition))                                       \
                         ^~~~~~~~~
>> drivers/soundwire/bus.c:627:20: warning: shift count >= width of type [-Wshift-count-overflow]
           id->sdw_version = SDW_VERSION(addr);
                             ^~~~~~~~~~~~~~~~~
   include/linux/soundwire/sdw.h:467:36: note: expanded from macro 'SDW_VERSION'
   #define SDW_VERSION(adr)        FIELD_GET(SDW_VERSION_MASK, addr)
                                   ~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~
   include/linux/soundwire/sdw.h:460:26: note: expanded from macro 'SDW_VERSION_MASK'
   #define SDW_VERSION_MASK        GENMASK(47, 44)
                                   ^
   include/linux/bits.h:38:31: note: expanded from macro 'GENMASK'
           (GENMASK_INPUT_CHECK(h, l) + __GENMASK(h, l))
                                        ^
   note: (skipping 4 expansions in backtrace; use -fmacro-backtrace-limit=0 to see all)
   include/linux/compiler_types.h:319:22: note: expanded from macro 'compiletime_assert'
           _compiletime_assert(condition, msg, __compiletime_assert_, __COUNTER__)
           ~~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/compiler_types.h:307:23: note: expanded from macro '_compiletime_assert'
           __compiletime_assert(condition, msg, prefix, suffix)
           ~~~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/compiler_types.h:299:9: note: expanded from macro '__compiletime_assert'
                   if (!(condition))                                       \
                         ^~~~~~~~~
>> drivers/soundwire/bus.c:627:20: warning: shift count is negative [-Wshift-count-negative]
           id->sdw_version = SDW_VERSION(addr);
                             ^~~~~~~~~~~~~~~~~
   include/linux/soundwire/sdw.h:467:36: note: expanded from macro 'SDW_VERSION'
   #define SDW_VERSION(adr)        FIELD_GET(SDW_VERSION_MASK, addr)
                                   ~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~
   include/linux/soundwire/sdw.h:460:26: note: expanded from macro 'SDW_VERSION_MASK'
   #define SDW_VERSION_MASK        GENMASK(47, 44)
                                   ^
   include/linux/bits.h:38:31: note: expanded from macro 'GENMASK'
           (GENMASK_INPUT_CHECK(h, l) + __GENMASK(h, l))
                                        ^
   note: (skipping 4 expansions in backtrace; use -fmacro-backtrace-limit=0 to see all)
   include/linux/compiler_types.h:319:22: note: expanded from macro 'compiletime_assert'
           _compiletime_assert(condition, msg, __compiletime_assert_, __COUNTER__)
           ~~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/compiler_types.h:307:23: note: expanded from macro '_compiletime_assert'
           __compiletime_assert(condition, msg, prefix, suffix)
           ~~~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/compiler_types.h:299:9: note: expanded from macro '__compiletime_assert'
                   if (!(condition))                                       \
                         ^~~~~~~~~
>> drivers/soundwire/bus.c:627:20: warning: shift count >= width of type [-Wshift-count-overflow]
           id->sdw_version = SDW_VERSION(addr);
                             ^~~~~~~~~~~~~~~~~
   include/linux/soundwire/sdw.h:467:36: note: expanded from macro 'SDW_VERSION'
   #define SDW_VERSION(adr)        FIELD_GET(SDW_VERSION_MASK, addr)
                                   ~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~
   include/linux/soundwire/sdw.h:460:26: note: expanded from macro 'SDW_VERSION_MASK'
   #define SDW_VERSION_MASK        GENMASK(47, 44)
                                   ^
   include/linux/bits.h:38:31: note: expanded from macro 'GENMASK'
           (GENMASK_INPUT_CHECK(h, l) + __GENMASK(h, l))
                                        ^
   note: (skipping 6 expansions in backtrace; use -fmacro-backtrace-limit=0 to see all)
   include/linux/compiler_types.h:319:22: note: expanded from macro 'compiletime_assert'
           _compiletime_assert(condition, msg, __compiletime_assert_, __COUNTER__)
           ~~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/compiler_types.h:307:23: note: expanded from macro '_compiletime_assert'
           __compiletime_assert(condition, msg, prefix, suffix)
           ~~~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/compiler_types.h:299:9: note: expanded from macro '__compiletime_assert'
                   if (!(condition))                                       \
                         ^~~~~~~~~
>> drivers/soundwire/bus.c:627:20: warning: shift count is negative [-Wshift-count-negative]
           id->sdw_version = SDW_VERSION(addr);
                             ^~~~~~~~~~~~~~~~~
   include/linux/soundwire/sdw.h:467:36: note: expanded from macro 'SDW_VERSION'
   #define SDW_VERSION(adr)        FIELD_GET(SDW_VERSION_MASK, addr)
                                   ~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~
   include/linux/soundwire/sdw.h:460:26: note: expanded from macro 'SDW_VERSION_MASK'
   #define SDW_VERSION_MASK        GENMASK(47, 44)
                                   ^
   include/linux/bits.h:38:31: note: expanded from macro 'GENMASK'
           (GENMASK_INPUT_CHECK(h, l) + __GENMASK(h, l))
                                        ^
   note: (skipping 6 expansions in backtrace; use -fmacro-backtrace-limit=0 to see all)
   include/linux/compiler_types.h:319:22: note: expanded from macro 'compiletime_assert'
           _compiletime_assert(condition, msg, __compiletime_assert_, __COUNTER__)
           ~~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/compiler_types.h:307:23: note: expanded from macro '_compiletime_assert'
           __compiletime_assert(condition, msg, prefix, suffix)
           ~~~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/compiler_types.h:299:9: note: expanded from macro '__compiletime_assert'
                   if (!(condition))                                       \
                         ^~~~~~~~~
>> drivers/soundwire/bus.c:627:20: warning: shift count >= width of type [-Wshift-count-overflow]
           id->sdw_version = SDW_VERSION(addr);
                             ^~~~~~~~~~~~~~~~~
   include/linux/soundwire/sdw.h:467:36: note: expanded from macro 'SDW_VERSION'
   #define SDW_VERSION(adr)        FIELD_GET(SDW_VERSION_MASK, addr)
                                   ~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~
   include/linux/soundwire/sdw.h:460:26: note: expanded from macro 'SDW_VERSION_MASK'
   #define SDW_VERSION_MASK        GENMASK(47, 44)
                                   ^
   include/linux/bits.h:38:31: note: expanded from macro 'GENMASK'
           (GENMASK_INPUT_CHECK(h, l) + __GENMASK(h, l))
                                        ^
   note: (skipping 7 expansions in backtrace; use -fmacro-backtrace-limit=0 to see all)
   include/linux/compiler_types.h:319:22: note: expanded from macro 'compiletime_assert'
           _compiletime_assert(condition, msg, __compiletime_assert_, __COUNTER__)
           ~~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/compiler_types.h:307:23: note: expanded from macro '_compiletime_assert'
           __compiletime_assert(condition, msg, prefix, suffix)
           ~~~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/compiler_types.h:299:9: note: expanded from macro '__compiletime_assert'
                   if (!(condition))                                       \
                         ^~~~~~~~~
>> drivers/soundwire/bus.c:627:20: warning: shift count is negative [-Wshift-count-negative]
           id->sdw_version = SDW_VERSION(addr);
                             ^~~~~~~~~~~~~~~~~
   include/linux/soundwire/sdw.h:467:36: note: expanded from macro 'SDW_VERSION'
   #define SDW_VERSION(adr)        FIELD_GET(SDW_VERSION_MASK, addr)
                                   ~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~
   include/linux/soundwire/sdw.h:460:26: note: expanded from macro 'SDW_VERSION_MASK'
   #define SDW_VERSION_MASK        GENMASK(47, 44)
                                   ^
   include/linux/bits.h:38:31: note: expanded from macro 'GENMASK'
           (GENMASK_INPUT_CHECK(h, l) + __GENMASK(h, l))
                                        ^
   note: (skipping 7 expansions in backtrace; use -fmacro-backtrace-limit=0 to see all)
   include/linux/compiler_types.h:319:22: note: expanded from macro 'compiletime_assert'
           _compiletime_assert(condition, msg, __compiletime_assert_, __COUNTER__)
           ~~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/compiler_types.h:307:23: note: expanded from macro '_compiletime_assert'
           __compiletime_assert(condition, msg, prefix, suffix)
           ~~~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/compiler_types.h:299:9: note: expanded from macro '__compiletime_assert'
                   if (!(condition))                                       \
                         ^~~~~~~~~
>> drivers/soundwire/bus.c:627:20: warning: shift count >= width of type [-Wshift-count-overflow]
           id->sdw_version = SDW_VERSION(addr);
                             ^~~~~~~~~~~~~~~~~
   include/linux/soundwire/sdw.h:467:36: note: expanded from macro 'SDW_VERSION'
   #define SDW_VERSION(adr)        FIELD_GET(SDW_VERSION_MASK, addr)
                                   ~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~
   include/linux/soundwire/sdw.h:460:26: note: expanded from macro 'SDW_VERSION_MASK'
   #define SDW_VERSION_MASK        GENMASK(47, 44)
                                   ^
   include/linux/bits.h:38:31: note: expanded from macro 'GENMASK'
           (GENMASK_INPUT_CHECK(h, l) + __GENMASK(h, l))
                                        ^
   note: (skipping 6 expansions in backtrace; use -fmacro-backtrace-limit=0 to see all)
   include/linux/compiler_types.h:319:22: note: expanded from macro 'compiletime_assert'
           _compiletime_assert(condition, msg, __compiletime_assert_, __COUNTER__)
           ~~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/compiler_types.h:307:23: note: expanded from macro '_compiletime_assert'
           __compiletime_assert(condition, msg, prefix, suffix)
           ~~~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/compiler_types.h:299:9: note: expanded from macro '__compiletime_assert'
                   if (!(condition))                                       \
                         ^~~~~~~~~
>> drivers/soundwire/bus.c:627:20: warning: shift count is negative [-Wshift-count-negative]
           id->sdw_version = SDW_VERSION(addr);
                             ^~~~~~~~~~~~~~~~~
   include/linux/soundwire/sdw.h:467:36: note: expanded from macro 'SDW_VERSION'
   #define SDW_VERSION(adr)        FIELD_GET(SDW_VERSION_MASK, addr)
                                   ~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~
   include/linux/soundwire/sdw.h:460:26: note: expanded from macro 'SDW_VERSION_MASK'
   #define SDW_VERSION_MASK        GENMASK(47, 44)
                                   ^
   include/linux/bits.h:38:31: note: expanded from macro 'GENMASK'
           (GENMASK_INPUT_CHECK(h, l) + __GENMASK(h, l))
                                        ^
   note: (skipping 6 expansions in backtrace; use -fmacro-backtrace-limit=0 to see all)
   include/linux/compiler_types.h:319:22: note: expanded from macro 'compiletime_assert'
           _compiletime_assert(condition, msg, __compiletime_assert_, __COUNTER__)
           ~~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/compiler_types.h:307:23: note: expanded from macro '_compiletime_assert'
           __compiletime_assert(condition, msg, prefix, suffix)
           ~~~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/compiler_types.h:299:9: note: expanded from macro '__compiletime_assert'
                   if (!(condition))                                       \
                         ^~~~~~~~~
>> drivers/soundwire/bus.c:627:20: warning: shift count >= width of type [-Wshift-count-overflow]
           id->sdw_version = SDW_VERSION(addr);
                             ^~~~~~~~~~~~~~~~~
   include/linux/soundwire/sdw.h:467:36: note: expanded from macro 'SDW_VERSION'
   #define SDW_VERSION(adr)        FIELD_GET(SDW_VERSION_MASK, addr)
                                   ~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~
   include/linux/soundwire/sdw.h:460:26: note: expanded from macro 'SDW_VERSION_MASK'
   #define SDW_VERSION_MASK        GENMASK(47, 44)
                                   ^
   include/linux/bits.h:38:31: note: expanded from macro 'GENMASK'
           (GENMASK_INPUT_CHECK(h, l) + __GENMASK(h, l))
                                        ^
   note: (skipping 7 expansions in backtrace; use -fmacro-backtrace-limit=0 to see all)
   include/linux/compiler_types.h:319:22: note: expanded from macro 'compiletime_assert'
           _compiletime_assert(condition, msg, __compiletime_assert_, __COUNTER__)
           ~~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/compiler_types.h:307:23: note: expanded from macro '_compiletime_assert'
           __compiletime_assert(condition, msg, prefix, suffix)
           ~~~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/compiler_types.h:299:9: note: expanded from macro '__compiletime_assert'
                   if (!(condition))                                       \
                         ^~~~~~~~~
>> drivers/soundwire/bus.c:627:20: warning: shift count is negative [-Wshift-count-negative]
           id->sdw_version = SDW_VERSION(addr);
                             ^~~~~~~~~~~~~~~~~
   include/linux/soundwire/sdw.h:467:36: note: expanded from macro 'SDW_VERSION'
   #define SDW_VERSION(adr)        FIELD_GET(SDW_VERSION_MASK, addr)
                                   ~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~
   include/linux/soundwire/sdw.h:460:26: note: expanded from macro 'SDW_VERSION_MASK'
   #define SDW_VERSION_MASK        GENMASK(47, 44)
                                   ^
   include/linux/bits.h:38:31: note: expanded from macro 'GENMASK'
           (GENMASK_INPUT_CHECK(h, l) + __GENMASK(h, l))
                                        ^
   note: (skipping 7 expansions in backtrace; use -fmacro-backtrace-limit=0 to see all)
   include/linux/compiler_types.h:319:22: note: expanded from macro 'compiletime_assert'
           _compiletime_assert(condition, msg, __compiletime_assert_, __COUNTER__)
           ~~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/compiler_types.h:307:23: note: expanded from macro '_compiletime_assert'
           __compiletime_assert(condition, msg, prefix, suffix)
           ~~~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/compiler_types.h:299:9: note: expanded from macro '__compiletime_assert'
                   if (!(condition))                                       \
                         ^~~~~~~~~
>> drivers/soundwire/bus.c:627:20: warning: shift count >= width of type [-Wshift-count-overflow]
           id->sdw_version = SDW_VERSION(addr);
                             ^~~~~~~~~~~~~~~~~
   include/linux/soundwire/sdw.h:467:36: note: expanded from macro 'SDW_VERSION'
   #define SDW_VERSION(adr)        FIELD_GET(SDW_VERSION_MASK, addr)
                                   ~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~
   include/linux/soundwire/sdw.h:460:26: note: expanded from macro 'SDW_VERSION_MASK'
   #define SDW_VERSION_MASK        GENMASK(47, 44)
                                   ^
   include/linux/bits.h:38:31: note: expanded from macro 'GENMASK'
           (GENMASK_INPUT_CHECK(h, l) + __GENMASK(h, l))
                                        ^
   include/linux/bits.h:35:22: note: expanded from macro '__GENMASK'
           (((~UL(0)) - (UL(1) << (l)) + 1) & \
                               ^
   include/linux/bitfield.h:109:30: note: expanded from macro 'FIELD_GET'
                   (typeof(_mask))(((_reg) & (_mask)) >> __bf_shf(_mask)); \
                                              ^~~~~
>> drivers/soundwire/bus.c:627:20: warning: shift count is negative [-Wshift-count-negative]
           id->sdw_version = SDW_VERSION(addr);
                             ^~~~~~~~~~~~~~~~~
   include/linux/soundwire/sdw.h:467:36: note: expanded from macro 'SDW_VERSION'
   #define SDW_VERSION(adr)        FIELD_GET(SDW_VERSION_MASK, addr)
                                   ~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~
   include/linux/soundwire/sdw.h:460:26: note: expanded from macro 'SDW_VERSION_MASK'
   #define SDW_VERSION_MASK        GENMASK(47, 44)
                                   ^
   include/linux/bits.h:38:31: note: expanded from macro 'GENMASK'
           (GENMASK_INPUT_CHECK(h, l) + __GENMASK(h, l))
                                        ^
   include/linux/bits.h:36:11: note: expanded from macro '__GENMASK'
            (~UL(0) >> (BITS_PER_LONG - 1 - (h))))
                    ^
   include/linux/bitfield.h:109:30: note: expanded from macro 'FIELD_GET'
                   (typeof(_mask))(((_reg) & (_mask)) >> __bf_shf(_mask)); \
                                              ^~~~~
   drivers/soundwire/bus.c:627:20: warning: shift count >= width of type [-Wshift-count-overflow]
           id->sdw_version = SDW_VERSION(addr);
                             ^~~~~~~~~~~~~~~~~
   include/linux/soundwire/sdw.h:467:36: note: expanded from macro 'SDW_VERSION'
   #define SDW_VERSION(adr)        FIELD_GET(SDW_VERSION_MASK, addr)
                                   ~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~
   include/linux/soundwire/sdw.h:460:26: note: expanded from macro 'SDW_VERSION_MASK'
   #define SDW_VERSION_MASK        GENMASK(47, 44)
                                   ^
   include/linux/bits.h:38:31: note: expanded from macro 'GENMASK'
           (GENMASK_INPUT_CHECK(h, l) + __GENMASK(h, l))
                                        ^
   include/linux/bits.h:35:22: note: expanded from macro '__GENMASK'
           (((~UL(0)) - (UL(1) << (l)) + 1) & \
                               ^
   include/linux/bitfield.h:109:50: note: expanded from macro 'FIELD_GET'
                   (typeof(_mask))(((_reg) & (_mask)) >> __bf_shf(_mask)); \
                                                         ~~~~~~~~~^~~~~~
   include/linux/bitfield.h:42:38: note: expanded from macro '__bf_shf'
   #define __bf_shf(x) (__builtin_ffsll(x) - 1)
                                        ^
   drivers/soundwire/bus.c:627:20: warning: shift count is negative [-Wshift-count-negative]
           id->sdw_version = SDW_VERSION(addr);
                             ^~~~~~~~~~~~~~~~~
   include/linux/soundwire/sdw.h:467:36: note: expanded from macro 'SDW_VERSION'
   #define SDW_VERSION(adr)        FIELD_GET(SDW_VERSION_MASK, addr)
                                   ~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~
   include/linux/soundwire/sdw.h:460:26: note: expanded from macro 'SDW_VERSION_MASK'
   #define SDW_VERSION_MASK        GENMASK(47, 44)
                                   ^
   include/linux/bits.h:38:31: note: expanded from macro 'GENMASK'
           (GENMASK_INPUT_CHECK(h, l) + __GENMASK(h, l))
                                        ^
   include/linux/bits.h:36:11: note: expanded from macro '__GENMASK'
            (~UL(0) >> (BITS_PER_LONG - 1 - (h))))
                    ^
   include/linux/bitfield.h:109:50: note: expanded from macro 'FIELD_GET'
                   (typeof(_mask))(((_reg) & (_mask)) >> __bf_shf(_mask)); \
                                                         ~~~~~~~~~^~~~~~
   include/linux/bitfield.h:42:38: note: expanded from macro '__bf_shf'
   #define __bf_shf(x) (__builtin_ffsll(x) - 1)
                                        ^
   drivers/soundwire/bus.c:628:18: warning: shift count >= width of type [-Wshift-count-overflow]
           id->unique_id = SDW_UNIQUE_ID(addr);
                           ^~~~~~~~~~~~~~~~~~~
   include/linux/soundwire/sdw.h:468:38: note: expanded from macro 'SDW_UNIQUE_ID'
   #define SDW_UNIQUE_ID(adr)      FIELD_GET(SDW_UNIQUE_ID_MASK, addr)
                                   ~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/soundwire/sdw.h:461:28: note: expanded from macro 'SDW_UNIQUE_ID_MASK'
   #define SDW_UNIQUE_ID_MASK      GENMASK(43, 40)
                                   ^
   include/linux/bits.h:38:31: note: expanded from macro 'GENMASK'
           (GENMASK_INPUT_CHECK(h, l) + __GENMASK(h, l))
                                        ^
   note: (skipping 4 expansions in backtrace; use -fmacro-backtrace-limit=0 to see all)
   include/linux/compiler_types.h:319:22: note: expanded from macro 'compiletime_assert'
           _compiletime_assert(condition, msg, __compiletime_assert_, __COUNTER__)
           ~~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/compiler_types.h:307:23: note: expanded from macro '_compiletime_assert'
           __compiletime_assert(condition, msg, prefix, suffix)
           ~~~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/compiler_types.h:299:9: note: expanded from macro '__compiletime_assert'
                   if (!(condition))                                       \
                         ^~~~~~~~~
   drivers/soundwire/bus.c:628:18: warning: shift count is negative [-Wshift-count-negative]
           id->unique_id = SDW_UNIQUE_ID(addr);
                           ^~~~~~~~~~~~~~~~~~~
   include/linux/soundwire/sdw.h:468:38: note: expanded from macro 'SDW_UNIQUE_ID'
   #define SDW_UNIQUE_ID(adr)      FIELD_GET(SDW_UNIQUE_ID_MASK, addr)
                                   ~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/soundwire/sdw.h:461:28: note: expanded from macro 'SDW_UNIQUE_ID_MASK'
   #define SDW_UNIQUE_ID_MASK      GENMASK(43, 40)
                                   ^
   include/linux/bits.h:38:31: note: expanded from macro 'GENMASK'
           (GENMASK_INPUT_CHECK(h, l) + __GENMASK(h, l))
                                        ^
   note: (skipping 4 expansions in backtrace; use -fmacro-backtrace-limit=0 to see all)
   include/linux/compiler_types.h:319:22: note: expanded from macro 'compiletime_assert'
           _compiletime_assert(condition, msg, __compiletime_assert_, __COUNTER__)
           ~~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/compiler_types.h:307:23: note: expanded from macro '_compiletime_assert'
           __compiletime_assert(condition, msg, prefix, suffix)
           ~~~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

# https://git.kernel.org/pub/scm/linux/kernel/git/vkoul/soundwire.git/commit/?id=ce703e8b9fba156573170bae234a561c7e736a8e
git remote add vkoul-soundwire https://git.kernel.org/pub/scm/linux/kernel/git/vkoul/soundwire.git
git fetch --no-tags vkoul-soundwire topic/reg_cleanup
git checkout ce703e8b9fba156573170bae234a561c7e736a8e
vim +627 drivers/soundwire/bus.c

d52d7a1be02cc6 Sanyog Kale          2017-12-14  621  
7c3cd189b86d2f Vinod Koul           2017-12-14  622  void sdw_extract_slave_id(struct sdw_bus *bus,
7c3cd189b86d2f Vinod Koul           2017-12-14  623  			  u64 addr, struct sdw_slave_id *id)
7c3cd189b86d2f Vinod Koul           2017-12-14  624  {
17ed5bef49f42e Pierre-Louis Bossart 2019-05-01  625  	dev_dbg(bus->dev, "SDW Slave Addr: %llx\n", addr);
7c3cd189b86d2f Vinod Koul           2017-12-14  626  
2c6cff682d6681 Pierre-Louis Bossart 2020-02-25 @627  	id->sdw_version = SDW_VERSION(addr);
2c6cff682d6681 Pierre-Louis Bossart 2020-02-25  628  	id->unique_id = SDW_UNIQUE_ID(addr);
2c6cff682d6681 Pierre-Louis Bossart 2020-02-25  629  	id->mfg_id = SDW_MFG_ID(addr);
2c6cff682d6681 Pierre-Louis Bossart 2020-02-25  630  	id->part_id = SDW_PART_ID(addr);
2c6cff682d6681 Pierre-Louis Bossart 2020-02-25  631  	id->class_id = SDW_CLASS_ID(addr);
7c3cd189b86d2f Vinod Koul           2017-12-14  632  
7c3cd189b86d2f Vinod Koul           2017-12-14  633  	dev_dbg(bus->dev,
17ed5bef49f42e Pierre-Louis Bossart 2019-05-01  634  		"SDW Slave class_id %x, part_id %x, mfg_id %x, unique_id %x, version %x\n",
7c3cd189b86d2f Vinod Koul           2017-12-14  635  				id->class_id, id->part_id, id->mfg_id,
7c3cd189b86d2f Vinod Koul           2017-12-14  636  				id->unique_id, id->sdw_version);
7c3cd189b86d2f Vinod Koul           2017-12-14  637  }
d52d7a1be02cc6 Sanyog Kale          2017-12-14  638  

:::::: The code at line 627 was first introduced by commit
:::::: 2c6cff682d6681fb1cdb03b3cdbbecd3fb0e4c89 soundwire: add helper macros for devID fields

:::::: TO: Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>
:::::: CC: Vinod Koul <vkoul@kernel.org>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202008290921.dihQHdto%25lkp%40intel.com.

--2fHTh5uZTiUOsy+g
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
M0u91/0/A9uGHCXTAQA=

--2fHTh5uZTiUOsy+g--
