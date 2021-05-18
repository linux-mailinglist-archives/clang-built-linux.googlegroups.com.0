Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBTFORSCQMGQEFUF5LEI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93b.google.com (mail-ua1-x93b.google.com [IPv6:2607:f8b0:4864:20::93b])
	by mail.lfdr.de (Postfix) with ESMTPS id DBEB1386F1A
	for <lists+clang-built-linux@lfdr.de>; Tue, 18 May 2021 03:24:29 +0200 (CEST)
Received: by mail-ua1-x93b.google.com with SMTP id w5-20020ab028050000b029021072f0ea2esf663566uap.19
        for <lists+clang-built-linux@lfdr.de>; Mon, 17 May 2021 18:24:29 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1621301068; cv=pass;
        d=google.com; s=arc-20160816;
        b=H7+IgX6/312ve1cZvzix1oLmWCEs305LfHMuh0xTwC5BCVlkwtezBw+Va1B5UrAvTZ
         qYNIRS1NXrGdS2qHar+UdeeFMDBjytrhhx8hFkqkX0PG/RKXSGHZjFzzntJnvxQaOydL
         n8l397a97VRNpCj6THAcYowzSPe4ZmCfc8ZxDhLAAyQAE6HIBPuLMm3B6v3SuDb0dOhL
         J3c5ZKHvjQoZoX3gQU70QRRb0pZ8UjlyZde8HhAzoCPTGpOC3ODcNhp9wLrAh+npoIh/
         Ru5UwRUgz4x9c5bTZjp80KoFtS6Py6qVALKsVYsyHdOqHKZyDrpMCDCaJl2Vrt6HI8yC
         b5Xg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=hpe/dVgNGMCoroGhruXK+KkprnE69hxyFH77gkoEe+E=;
        b=hWVF6brIl8zC8ZsMIGXAyD4eqaNWU9hu08wi2OHhfKdFSR550nk0bF92lslU+we1yN
         z2HykVdY/7DyaRxcgGveNVCAnbzPG4RZOOsV+I1XGop3wc7U4pO+zpdXnLqPR/CtQI6c
         /Sm7msigMAc2cNJjONvpUPRsTvYtVOLuTgaphZ3m0UZuMWWJx2xr9mdnpRy8Df7rGZGl
         A4ah6WzYp93F4sBiK5CK18tc5QEd/7IY5LdT0hkSbKYU8vY0nNO60Rk+p5dhhl3wBkwX
         tVWQsdcUE9y1tXngUT567F9XOm6Wx4oB9BOUOwRf2wKYs5Kp6Q+YfgwT359y8/TxlXYu
         +fcA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.31 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=hpe/dVgNGMCoroGhruXK+KkprnE69hxyFH77gkoEe+E=;
        b=DtKPoNkqXAFrqQeOPz20ET+okxyUyhlwh0V3lkDdKUwfdRNG5277q8R0gZDS/Bv1L8
         2OQNLKrDuuLWmdWVlLefLl3x9YlMOLf8hEtPPvwkG/n0mYOdiI02vxmgZrG66Ah+wTqn
         9pNVhZm7WEAPMF68Nfkh6yx3z3YomzmI4tieXw4QhjQyFiCRlspkvRLS0LssN02MlfNm
         SmrmBdofD1AK3WUTJnyOIL4bwzVTflZEjIsqOnsOuE4L7iD3jQOFbTKS+qrCcslmstBq
         auaVH9w0cWba0knYZ2F9K9vYtTcsh3oZDinYMU7qekiHugPyYPH9C8NooEswCUuddroX
         AkBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=hpe/dVgNGMCoroGhruXK+KkprnE69hxyFH77gkoEe+E=;
        b=myLamoWvbWh+LncSJ6wTf/Jj0ClLeCeP4A1Zdw2sEEh+nuxsjkPSi5GVqnwuj4VO0B
         +hQeRuWWTH+5T2Qin4KwCugVgn6SBTJvMQmIXUqY8JIfmiP8EKZfG75EDoD0Es2WfPLk
         w6bLzipdK7XnImmtbiZZktTR20GagqxhW8SshSWCyqxtOneErw6IRX+qL4AR9iumbXvw
         ux4K9I0TkIyw8K9VDQYf0Fpkm6saDlrh84HA2cjGTkvV2uuLYNYCw03WZ6YKqM1MBb3M
         UZFQRJwoN7g2bp4+19w6joDkRPPynRqgpRwZLa2+NIUIVezlcXQh02oHxmdl7KNu1fR3
         xWwA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532PZSjP8oKlQUbSUAumEdTna/RAf5baGbfjdpgbvqLG33/LUwA2
	ABt3Z2yhglZ3P+fr5XkIz8w=
X-Google-Smtp-Source: ABdhPJynC84EDMXEbPcyXQu66cTVtNHO3938KuwjzGYHiedusk3YlTSlhO+BPz7s6c/XAO4IAxpKmw==
X-Received: by 2002:a1f:9345:: with SMTP id v66mr3311854vkd.22.1621301068755;
        Mon, 17 May 2021 18:24:28 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:26c7:: with SMTP id b7ls1283377uap.2.gmail; Mon, 17 May
 2021 18:24:28 -0700 (PDT)
X-Received: by 2002:ab0:3748:: with SMTP id i8mr3329508uat.61.1621301067964;
        Mon, 17 May 2021 18:24:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1621301067; cv=none;
        d=google.com; s=arc-20160816;
        b=UUDviqksnsbzfF+3QRnI9oPoHPHQVjgkiPb6Q/+AdwBJoRELXiPqEed/EscKhpdCSA
         A64s88abUVpLWU+OoDYNV1C6iYQ2hlWSeyPbyuXxtCHslR8KIrCbskZLkswKoM/Fu9we
         BwIcFL8TjOC8b3gUDOnhPl5Imfm0aYCm9lhEzXAahUZqzHrHRbIQScONgArOf5Q7puiy
         lyhVhgIwkM/z+3++8ySvSysmnOVTO3JI1GzbIyCpUhb6OUbiA0ogjgsedT5VockT1P/G
         VYQzTmA//pBzDwVSN8iN3OywhKruPaBWup5t2KrpwyRakXvXSlsgrLg4BhDPFdsSV7Fz
         Vu5Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=N7dGveXDoh0qDu/kwZKp3RQhZXoMNwLA/sV1KqH661Q=;
        b=McVv9EhITdVuv92SYwYt59LHd95GHHY4mSURlP+bcY7JJK56xy2rTUGKfNeDAkM2Vs
         yL1rYoMm2SpuWqvy+A0Dnw7CAV/q4BmG7cyjrqxJjrAYX4nhjNi5x7Xg7rTWuoZoOtDu
         8WYB70cbEurTfnUyrN3wynViupmrhd7x+zrSOZTwvh7tzC5FcjsCkGEeDzv0bHXkdyeY
         +OsJL6b5WxF6jE2TTU9ty2VtR2E5zl+QR4+FxU+huZyVjLEqR7q4Ga7VUIlbkdoQhN3t
         YhwRxfQOHse4IT6br+Sy+rD5/sNBRqthNI25t14w2pf7f5xu30a9R+DmzKnyZmHwMakg
         wF/A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.31 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga06.intel.com (mga06.intel.com. [134.134.136.31])
        by gmr-mx.google.com with ESMTPS id p6si915665vkm.2.2021.05.17.18.24.27
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 17 May 2021 18:24:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.31 as permitted sender) client-ip=134.134.136.31;
IronPort-SDR: njlFcHdPX80+6EiPt2gKMC37a59wOcoBFB1YdAaU5tkVkdoN4uGg+mC2IdGpAKKZ/Xa64/KzuE
 VV1kkvE+bTpQ==
X-IronPort-AV: E=McAfee;i="6200,9189,9987"; a="261832885"
X-IronPort-AV: E=Sophos;i="5.82,307,1613462400"; 
   d="gz'50?scan'50,208,50";a="261832885"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
  by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 17 May 2021 18:24:25 -0700
IronPort-SDR: iJxRWcqA5kn0BF09wc0Xq4WllEBsWQhB3kyf10tbEZUN3gbgPHi16mhPjlyf5ReKSCe7Cq0cbp
 494Gmd+zaMEg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,307,1613462400"; 
   d="gz'50?scan'50,208,50";a="466169488"
Received: from lkp-server01.sh.intel.com (HELO ddd90b05c979) ([10.239.97.150])
  by FMSMGA003.fm.intel.com with ESMTP; 17 May 2021 18:24:23 -0700
Received: from kbuild by ddd90b05c979 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1lioT9-0001zL-B2; Tue, 18 May 2021 01:24:23 +0000
Date: Tue, 18 May 2021 09:24:01 +0800
From: kernel test robot <lkp@intel.com>
To: Rob Herring <robh@kernel.org>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com
Subject: [robh:arm64-user-perf-event-v8 3/5]
 arch/arm64/kernel/perf_event.c:935:6: warning: no previous prototype for
 function 'armv8pmu_sched_task'
Message-ID: <202105180958.4G81n6vB-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="cNdxnHkX5QqsyA0e"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
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


--cNdxnHkX5QqsyA0e
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/robh/linux.git arm64-user-perf-event-v8
head:   1e94e1d70340ac1a71ae202803c7c3a94f22d578
commit: 8133b48895ce0f1df67c38c37cb7025f1e62eebf [3/5] arm64: perf: Enable PMU counter userspace access for perf event
config: arm64-randconfig-r033-20210517 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project ceb1ac9812cb0972cfa34cecc5e5704ae2a22063)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install arm64 cross compiling tool for clang build
        # apt-get install binutils-aarch64-linux-gnu
        # https://git.kernel.org/pub/scm/linux/kernel/git/robh/linux.git/commit/?id=8133b48895ce0f1df67c38c37cb7025f1e62eebf
        git remote add robh https://git.kernel.org/pub/scm/linux/kernel/git/robh/linux.git
        git fetch --no-tags robh arm64-user-perf-event-v8
        git checkout 8133b48895ce0f1df67c38c37cb7025f1e62eebf
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross W=1 ARCH=arm64 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

                                                                   ^~~~
   arch/arm64/kernel/perf_event.c:140:2: note: previous initialization is here
           PERF_CACHE_MAP_ALL_UNSUPPORTED,
           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/perf/arm_pmu.h:41:31: note: expanded from macro 'PERF_CACHE_MAP_ALL_UNSUPPORTED'
                   [0 ... C(RESULT_MAX) - 1] = CACHE_OP_UNSUPPORTED,       \
                                               ^~~~~~~~~~~~~~~~~~~~
   include/linux/perf/arm_pmu.h:33:31: note: expanded from macro 'CACHE_OP_UNSUPPORTED'
   #define CACHE_OP_UNSUPPORTED            0xFFFF
                                           ^~~~~~
   arch/arm64/kernel/perf_event.c:147:44: warning: initializer overrides prior initialization of this subobject [-Winitializer-overrides]
           [C(DTLB)][C(OP_READ)][C(RESULT_ACCESS)] = ARMV8_IMPDEF_PERFCTR_L1D_TLB_RD,
                                                     ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/arm64/include/asm/perf_event.h:122:44: note: expanded from macro 'ARMV8_IMPDEF_PERFCTR_L1D_TLB_RD'
   #define ARMV8_IMPDEF_PERFCTR_L1D_TLB_RD                         0x4E
                                                                   ^~~~
   arch/arm64/kernel/perf_event.c:140:2: note: previous initialization is here
           PERF_CACHE_MAP_ALL_UNSUPPORTED,
           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/perf/arm_pmu.h:41:31: note: expanded from macro 'PERF_CACHE_MAP_ALL_UNSUPPORTED'
                   [0 ... C(RESULT_MAX) - 1] = CACHE_OP_UNSUPPORTED,       \
                                               ^~~~~~~~~~~~~~~~~~~~
   include/linux/perf/arm_pmu.h:33:31: note: expanded from macro 'CACHE_OP_UNSUPPORTED'
   #define CACHE_OP_UNSUPPORTED            0xFFFF
                                           ^~~~~~
   arch/arm64/kernel/perf_event.c:148:45: warning: initializer overrides prior initialization of this subobject [-Winitializer-overrides]
           [C(DTLB)][C(OP_WRITE)][C(RESULT_ACCESS)] = ARMV8_IMPDEF_PERFCTR_L1D_TLB_WR,
                                                      ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/arm64/include/asm/perf_event.h:123:44: note: expanded from macro 'ARMV8_IMPDEF_PERFCTR_L1D_TLB_WR'
   #define ARMV8_IMPDEF_PERFCTR_L1D_TLB_WR                         0x4F
                                                                   ^~~~
   arch/arm64/kernel/perf_event.c:140:2: note: previous initialization is here
           PERF_CACHE_MAP_ALL_UNSUPPORTED,
           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/perf/arm_pmu.h:41:31: note: expanded from macro 'PERF_CACHE_MAP_ALL_UNSUPPORTED'
                   [0 ... C(RESULT_MAX) - 1] = CACHE_OP_UNSUPPORTED,       \
                                               ^~~~~~~~~~~~~~~~~~~~
   include/linux/perf/arm_pmu.h:33:31: note: expanded from macro 'CACHE_OP_UNSUPPORTED'
   #define CACHE_OP_UNSUPPORTED            0xFFFF
                                           ^~~~~~
   arch/arm64/kernel/perf_event.c:149:42: warning: initializer overrides prior initialization of this subobject [-Winitializer-overrides]
           [C(DTLB)][C(OP_READ)][C(RESULT_MISS)]   = ARMV8_IMPDEF_PERFCTR_L1D_TLB_REFILL_RD,
                                                     ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/arm64/include/asm/perf_event.h:120:50: note: expanded from macro 'ARMV8_IMPDEF_PERFCTR_L1D_TLB_REFILL_RD'
   #define ARMV8_IMPDEF_PERFCTR_L1D_TLB_REFILL_RD                  0x4C
                                                                   ^~~~
   arch/arm64/kernel/perf_event.c:140:2: note: previous initialization is here
           PERF_CACHE_MAP_ALL_UNSUPPORTED,
           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/perf/arm_pmu.h:41:31: note: expanded from macro 'PERF_CACHE_MAP_ALL_UNSUPPORTED'
                   [0 ... C(RESULT_MAX) - 1] = CACHE_OP_UNSUPPORTED,       \
                                               ^~~~~~~~~~~~~~~~~~~~
   include/linux/perf/arm_pmu.h:33:31: note: expanded from macro 'CACHE_OP_UNSUPPORTED'
   #define CACHE_OP_UNSUPPORTED            0xFFFF
                                           ^~~~~~
   arch/arm64/kernel/perf_event.c:150:43: warning: initializer overrides prior initialization of this subobject [-Winitializer-overrides]
           [C(DTLB)][C(OP_WRITE)][C(RESULT_MISS)]  = ARMV8_IMPDEF_PERFCTR_L1D_TLB_REFILL_WR,
                                                     ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/arm64/include/asm/perf_event.h:121:50: note: expanded from macro 'ARMV8_IMPDEF_PERFCTR_L1D_TLB_REFILL_WR'
   #define ARMV8_IMPDEF_PERFCTR_L1D_TLB_REFILL_WR                  0x4D
                                                                   ^~~~
   arch/arm64/kernel/perf_event.c:140:2: note: previous initialization is here
           PERF_CACHE_MAP_ALL_UNSUPPORTED,
           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/perf/arm_pmu.h:41:31: note: expanded from macro 'PERF_CACHE_MAP_ALL_UNSUPPORTED'
                   [0 ... C(RESULT_MAX) - 1] = CACHE_OP_UNSUPPORTED,       \
                                               ^~~~~~~~~~~~~~~~~~~~
   include/linux/perf/arm_pmu.h:33:31: note: expanded from macro 'CACHE_OP_UNSUPPORTED'
   #define CACHE_OP_UNSUPPORTED            0xFFFF
                                           ^~~~~~
   arch/arm64/kernel/perf_event.c:152:44: warning: initializer overrides prior initialization of this subobject [-Winitializer-overrides]
           [C(NODE)][C(OP_READ)][C(RESULT_ACCESS)] = ARMV8_IMPDEF_PERFCTR_BUS_ACCESS_RD,
                                                     ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/arm64/include/asm/perf_event.h:137:46: note: expanded from macro 'ARMV8_IMPDEF_PERFCTR_BUS_ACCESS_RD'
   #define ARMV8_IMPDEF_PERFCTR_BUS_ACCESS_RD                      0x60
                                                                   ^~~~
   arch/arm64/kernel/perf_event.c:140:2: note: previous initialization is here
           PERF_CACHE_MAP_ALL_UNSUPPORTED,
           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/perf/arm_pmu.h:41:31: note: expanded from macro 'PERF_CACHE_MAP_ALL_UNSUPPORTED'
                   [0 ... C(RESULT_MAX) - 1] = CACHE_OP_UNSUPPORTED,       \
                                               ^~~~~~~~~~~~~~~~~~~~
   include/linux/perf/arm_pmu.h:33:31: note: expanded from macro 'CACHE_OP_UNSUPPORTED'
   #define CACHE_OP_UNSUPPORTED            0xFFFF
                                           ^~~~~~
   arch/arm64/kernel/perf_event.c:153:45: warning: initializer overrides prior initialization of this subobject [-Winitializer-overrides]
           [C(NODE)][C(OP_WRITE)][C(RESULT_ACCESS)] = ARMV8_IMPDEF_PERFCTR_BUS_ACCESS_WR,
                                                      ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/arm64/include/asm/perf_event.h:138:46: note: expanded from macro 'ARMV8_IMPDEF_PERFCTR_BUS_ACCESS_WR'
   #define ARMV8_IMPDEF_PERFCTR_BUS_ACCESS_WR                      0x61
                                                                   ^~~~
   arch/arm64/kernel/perf_event.c:140:2: note: previous initialization is here
           PERF_CACHE_MAP_ALL_UNSUPPORTED,
           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/perf/arm_pmu.h:41:31: note: expanded from macro 'PERF_CACHE_MAP_ALL_UNSUPPORTED'
                   [0 ... C(RESULT_MAX) - 1] = CACHE_OP_UNSUPPORTED,       \
                                               ^~~~~~~~~~~~~~~~~~~~
   include/linux/perf/arm_pmu.h:33:31: note: expanded from macro 'CACHE_OP_UNSUPPORTED'
   #define CACHE_OP_UNSUPPORTED            0xFFFF
                                           ^~~~~~
>> arch/arm64/kernel/perf_event.c:935:6: warning: no previous prototype for function 'armv8pmu_sched_task' [-Wmissing-prototypes]
   void armv8pmu_sched_task(struct perf_event_context *ctx, bool sched_in)
        ^
   arch/arm64/kernel/perf_event.c:935:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void armv8pmu_sched_task(struct perf_event_context *ctx, bool sched_in)
   ^
   static 
   57 warnings generated.


vim +/armv8pmu_sched_task +935 arch/arm64/kernel/perf_event.c

   934	
 > 935	void armv8pmu_sched_task(struct perf_event_context *ctx, bool sched_in)
   936	{
   937		if (sched_in && atomic_read(&ctx->nr_user))
   938			armv8pmu_enable_user_access(to_arm_pmu(ctx->pmu));
   939		else
   940			armv8pmu_disable_user_access();
   941	}
   942	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202105180958.4G81n6vB-lkp%40intel.com.

--cNdxnHkX5QqsyA0e
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

H4sICIITo2AAAy5jb25maWcAnDzZltu2ku/5Cp3kJfchibZePHP6ASRBCRFJ0ACpXl54lLbs
9NxefNVqJ/n7qQK4ACAg94xPjmOiCkChUCjUBv30w08T8nZ8edodH+53j4//TL7sn/eH3XH/
afL54XH/35OETwpeTWjCql8BOXt4fvv7t93h6Xw5Oft1tvh1+svhfjbZ7A/P+8dJ/PL8+eHL
G/R/eHn+4acfYl6kbNXEcbOlQjJeNBW9qa5+vH/cPX+ZfNsfXgFvgqP8Op38/OXh+F+//QZ/
Pz0cDi+H3x4fvz01Xw8v/7O/P07u93/MdvcfLmfz+z+mHy7m9593i+X9/v7+bH92MV3u9vPd
fD49X/zrx27W1TDt1dQghckmzkixuvqnb8TPHne2mMKfDkYkdlgV9YAOTR3ufHE2nXftWTKe
D9qge5YlQ/fMwLPnAuLWMDiRebPiFTcItAENr6uyrrxwVmSsoAaIF7ISdVxxIYdWJj4211xs
hpaoZllSsZw2FYky2kgujAmqtaAEllKkHP4CFIldYYd/mqyUwDxOXvfHt6/DnrOCVQ0ttg0R
sGSWs+pqMQf0nqy8ZDBNRWU1eXidPL8ccYSeRzwmWcekH3/0NTekNlmk6G8kySoDP6EpqbNK
EeNpXnNZFSSnVz/+/PzyvAfR6emTt3LLytgkrYeVXLKbJv9Y05p6Ea5JFa+bMDwWXMompzkX
tw2pKhKvvXi1pBmLvCBSw4H0MG5NthRYDtMrDFgGcCzr9gq2ffL69sfrP6/H/dOwVytaUMFi
JRWl4JEhPiZIrvl1GNJkdEszP5ymKY0rhqSlaZNr6fHg5WwlSIV77gWz4nccxgSviUgAJBt5
3QgqaZH4u8ZrVtrin/CcsMJukyz3ITVrRgUy9daGpkRWlLMBDOQUSUbNk2bRX7IxIJcMgUGA
l1AF43lem5zAqTuKrREVrVzENGkPMjO1nyyJkNRPg5qfRvUqxSX9NNk/f5q8fHbkyO2ktMh2
ED0HHMMp3oCsFJXBJiWyqMMqFm+aSHCSxMDdk70tNCXf1cMT3Ck+EVfD8oKCpBqDFrxZ36Eu
ypVM9acLGkuYjScs9pwx3YsBt80+ujWtsyzUxZqBrdYosIpZQtpnvOXyaDXdaKWgNC8rGLWw
SOjatzyri4qIW7/60lgeKrv+MYfuHU/jsv6t2r3+e3IEciY7IO31uDu+Tnb39y9vz8eH5y8O
l6FDQ2I1hpazfuYtE5UDxn31UomSpwRpwPVRLJnFADgWnXJPmMSLLPGy9h2LMtQ1UMwkz5Rm
ModT/BFxPZEegQNeNgAbhA0+GnoDcmUIoLQwVB+nCXSlVF3bA+CCKkFiz0SygrM3SLYBKSio
AUlXcZQx84AhLCUFmBZX58txI6h3kl7Nzm2IrHrRNqfgcYRcC9LaKGsij0ydYvOxV10b/Q9D
mW3W0NnSsRnH+z+Fa4il1dXswmzHzcvJjQmfD/LOimoDRkNK3TEWrt6R8Rr4prRPdzLk/Z/7
T2+P+8Pk8353fDvsX1Vzux4P1FJ2si5LsLFkU9Q5aSICNmhs6eXWqAMSZ/NLR1P2nV1ovBK8
Lg3elGRF9YGmYmgF2yNeOZ/NBv7njqTXPbSmhInGhgznJAWVDLfQNUsqv0EDx9/o6znP7aQl
S+SIEpHkZNSYwpG5Uyszj6uklfRbXrpXQrcsDthmGgMGAcXjU5IdiVSk1qy6OSrTcJ+cydjT
R12wnl6SozZtcUhFrK5rGm9KDtuPtwgY99Q3gJJZtJPVIGZ/uJ1htxIKKj8mlaslu+2iGbn1
jBtlG2ShMquFIRzqm+QwsOQ1mBtocg+DJc3qjpX+iZImAtjcMxeAsjtz46Hh5s76zO648720
vu9kZRAZcY43nK1U4KzxEq4bdkfRUlK7y0UOR9K6YF00Cf/weS9Jw0UJBhl4AsJQv2gSVRlc
AjEtK+UNo0I0SCvT4aO/KvrZc7jWGMi28PJQrmiFlnXTGl4+eVCbPhhmfd9UG4++C1b5OtpI
MZSKUpzud1Pkhn0LMm18ELAw0TYyNEld0RvnszENZOXK6OY4L2/itTEeLbm9AslWBclSvxwr
8lOfvlGGZGpIh1xrJTg4Woz77RPe1MJvlJBky2C5LZ8NtsHQERGCmZp4gyi3uRy3NJb13Lcq
VuLJRH/Kkp1mZHKru+KagJLorCJE+51ZYoVNoAYysKVDXqhQnb0c7A33YXFARwGGOugkg3zY
QnNS8Dg++vYjj2iSmBeOkgI8jo3rMqhGIK7Z5rBobmnWMp5NlyNTrY1SlfvD55fD0+75fj+h
3/bPYPcRuLNjtPzA4B5sOO+0Slv7J29v/ndOY9jFuZ6lu6cDdxfPSwI7KDa+o52RyDoPWe0P
HMiMhwAkgk0UYC60whKYRt25aDs2ArQGz+1pTTg652A++cRGrus0BXdVmSeKgwQuMduZ4SnL
nBPW89iOOg3CmJ8buv98GTHDwrXcZYWqp29NvqUNgo+qKasOfOGD5kkLPbOOQ54TMFcKuNQY
mGg5OO+D3exDIDdXi6kfodv0bqAP70CD4Yb5wDxnHG1FaDciIOAfxBttj7e2pHGNZxldkaxR
5gUc5y3Jano1/fvTfvdpavwxonIbsCTGA+nxwZNLM7KSY3hnW1tXhdHYq7mOFE9cZX1NwZX2
BQpknXtaScYiARYPCDkYNwPCHfjSjWVhdi2LuaNQ83WJ2g55D3d4G8ajBXqbBoNzg9sbKgqa
NTlPKPhfpkeWwu1KichuYz2Uod5WOhCrwmryamGR0Nv/tYrXuYEUaIxB5YIG1gH31mEpH3dH
VElwah73922MfrjpVNRQxddkSNHLurixPG7dKStZ4bMeNLQs7UiJao3ifH65OAt1AvDyw/TS
161huLxgRyoyVoz7sQrjYsFeIs5lFY260Zvbgoe5URJxczbqtFmEOoDEgRDHpKTOhmWr2cZp
WjM55vSG4i3rs8m1ZNKEgWxvRv1yKnlw8fkWrrRxl5sgjz/GPHeoBYc+0xPbrQWVRI7Ghv3b
YETWH9pWrF34nAENoqSqMpeDqB8ydJnSckUcGNgjH8Gds91EBanoSpATVJQiaPNU67pIfEPq
9nl41LpgJYaMwxhbMP7BrfPbARoDXEm4gliIuhtUeCPa7oAReem9UD26wbSZ0iHCoZrhFpzs
D4fdcTf56+Xw790BrJpPr5NvD7vJ8c/9ZPcIJs7z7vjwbf86+XzYPe0Ra7Cs9CWKGSgCnile
YBkFdykm4LHaVCMeFaCx67y5nJ8vZh+8S7bRLgDt1DDL6fk7hpl9WF5Yut+CLubTi7MgdLlY
KhIsKPiFaCkrne8iBmidTefLi9llkFiDhbKkcd3el6QKUTabnZ+dzYPLmgHnFucXQfDZYvph
vnDBBhWClnA+myqLWHCQ+eX55fTixKKX54v53H832NQs56e5dza9XM78RzEmWwYoHep8vrjw
zeiiLWBSKyTgwC+WZ+fvmW8xnc1OzFfdzIcx7SWmNThwsu7B0xnYYjNfLhBukIyhYdHz43x2
Pp1eTufmeKjNm5RkGy4MsZv6LrEA6ofRcB+TFA7ZdKBxen7m5YpvRAq+28yLXWwZXHDAI5GD
so+Lsuvjj56BJQPWz6D+0c1llZXJ+v/pMVfelhvlSfgNBUSYnbcYY1k993V2cLZEm/aL8+AM
HcrSc656WFiPtChXS8fPKfuuY9ep7XFpZ0oidOML2CafvYEIGcPru8UxDGYVrMwtN163ydzn
ihZCRXqv5me9r7PmVZnVqzb1MEhNnRPf8eAZxQC6MvRN/PUdCrV3OwA0P5v6BruDEz0dj+LH
BXfP9vd0Dhbs/5Efsb72hyH6uAs4yeiklSuwit2SkC16ryTh1+j3ZNrpM1MDgmBKzvK627Z3
5N429IbGOL3FPN0qma9HLIhcN0lth4JuqE9SVL5aZW5we7hAU2vI3NQFel+tWwXXDc2mRsiX
Y7RchRv7uJdma+IKsbxuqioSU1h3MT43FVmtMICeJKIhEfOrdeV5j0JNMMC3y19nk93h/s+H
IxhUbxitsPJE1lSwzSRNIp8i646bcVZg23Hrs4SUYtwq8f7nOYulu9wTIIxl2WBTR55ai7He
+bvXW4KsB9cKYgKeV1W4NILCH9MVnNOga/F+uiqBCZO1T3p1Pi4SpNAudgWbEoPBMy7Ewmg0
AmpRKOkBU360TdB31BanrCnoCsMTguBxreh4wcHFGAtehhdsLZfktctpTQmAt5fN0nMmsgjj
fivq9SK+M7tB4dn3KTQpORtTEnm9n/AuYYeRSTotk6uRd6rCmkHpbOnKfXsTXJWx8ot3CyMt
SXGCzcGBHB23pe6yS0nrhLf5GmfSNr4tGBesulXFWn79jymDmFT2daV5h/kxzFNYEf8ekvOk
zjCHscIcWKBipr+/8M7CbaRYwogpDujnxDEHMFyVXXGiG45Pra2IXmC6l6/o544PRVwyvAhx
3UqCeMyNpEqcJ6rEcqgnpHBsZVVHRn4qtTib5My7jxYVOkT38tf+MHnaPe++7J/2zyaNg1VU
g6tX+AITpRk/zPVWWrd7jskpzGomwaxzAkiqgDHhBp/NVmUbYJ3IbD41ZouzjTV7F3LVFWmW
5Xv9sSn5NewVTVMWMzokqLyLcodquJEnRZOydMNRaxaBbaAKdjCFKVk0Chi1XDTBQzAktAtd
RVSLkfcYXVwEYezT494ofsbqocScvmvRCd0Si/YE21rR7R5lxbdNBleImTK0gDktLGPXAlaU
+3a40hjqfpFdcBg9oY76SXJ4+KZTYaZ2wMGZP0+M0FLGrENx9IoFa7cxpNk8VBhlW5q7Pa/T
w/4/b/vn+38mr/e7R12MZvEiFXai0RrL09sEjzZZDZ4+HJ7+2h1MJhkLlXHOPEpjACm5d2s6
NbgM9yxP9kyoin+K1ConSJnIr4mgbbLCSPDoWGmFtbY3s2kjqcB6GHPPXBQh61A8AJY1DN21
AJ3XBaaUddKjPd1GaqgWgsElym8acV2ZiRrOVyAiHe0jACY1VAmHc/G0YKxk4oXkJ0H9ICOc
rTIH1DaDCp/8TP8+7p9fH/4AYey3nWH69vPufv+viXz7+vXlcBwkAG8CKm2XCtu24N7BGQjU
6SAGOl45eHMC4yGJQRkCBTph4I9dC1KWlqJAaF+ipq8ga2IQD2yGMx81uB121DkwSFvY0910
bUd7UmSfble5UMEzd+qYlBLv+ZPTYv2/YT1QCXaaqojfNDmr2MqpBscubWFnU4JG0Qm7/tD+
X/bM2rI2AzdaQg1bBvIsQWVy0NAZuQ3EeLSCS436+LYSH3rncRyH2nE1MQ596xxpBZQ8BlXd
SWS1/3LYTT53a/qk1I9ZchhA6MAjxeXch21KEc0fg5jRVy8qK+lC4pjAHn6smbArAxVQGRwr
ryQouCxj4Z5qBaCxUYNuAiwPChsiEB3NSnvqqK4q7q8zVvCKFbetfh2jmoipEyZQ6+LxJjw0
5irB/ePeZXcxHE2Ekuq6XAk4L6NZLGiIvJHBp3cFzifcGWHOWxWeuosW/JxWaz7eyWglfIaa
gsHO12heYu2Hunx4kd260q82r6RsNDI2hnmp/516jyDCmVVdoGW1StymsqzskFfOsKxPuyOe
oTEcVpOM3Tm6qI1JiNtSvUMyXvdgCwbe5mfnGssbC+uwzmZzt3BlAM66aWhgih7+vjka00AY
4IuegtEc+eI9U+TL8PirNYb9guBYxNVsmrA0jEKoDLCoh5zsBkDQTflphMj0X0YIWLbhRYnX
BP6bT53CjhZa8ux2tpiedVCXvcXawghzeKAk6k32rgjKCAPsf/m0/wr63nYd+6FwI5zCPBWv
tdt+r/MSvI6I2iWW4C7ASdnQWwkWY5YGnu6pEz74dXUBR2dVYBg1jq04mELcuPUrulXQygtI
60IVqGDeB9x974MwQLMKUYcncaoeac35xgGCFaGUJFvVvPbUGElgh3Jc9OupMYICYkkqMKaq
S1NHdFF6UE0sve0Ko8cIG0pLt566B6JVpOuMAsAEbtzYKfEy1q1fb+p3oM31mlXUfvuhUWWO
xnr7vNLlPKhHEEBMMyvjTG8m6GuX0VjYGdo0fAoa7Li+biIgUxe1OzCVAUEKfO1Yn9pS1aYW
RgywBPoE1FNXm+d1A1bomra2iapu9ILxXYsPpd0oLZb6scmonlmB21b9yjUAS3htp4f6VUga
Yy7iBKhNFRnBM7dLCNEYCvmcwTY5QDsOF4rPOerECuyBC+GvpraMU186axjSBX53uAwVuP0Y
PIAAh8h0u7G9fX7n7YeRfGdgvY+gZjAnjapow0bgwAs5B8vzNs7ByDmejtqto9bNudvcKccC
05CotNf1imJO2oeHMKx6drWcKjNXQF0WaznvOuQrVZYJrg51zjyqTIG6OLFvcqtw1hnAhjkV
t1YRfMVLDE/oHuDTcestfYZ1nxFsD5iviRW2bKtsF3OYQW3AyQfYyKOxjA6tJzsP0fKNVm08
TaWZaQogjCMtwz1RwVVVdUlTcX1jntIgyO3eBe9NnIHs9lm/aNY+KL4yWMy7xIF9yejKOKnC
NIIik9p8ds85LDM26+SDZZlILcwhfAIaeppjEJkWWPHM3Hu4P9ptggSOR1f5r40xcON/+WP3
uv80+bfOOHw9vHx+eLQeyCJSy2YPixVU173Txnmi48L8VfEnaLBWir+NgaUSXVzeqar/jkHZ
yyCIA77PMc009TxF4qOIq+lAfXv+PTvWaQb19jUD28x+pxZl3K/GZTFzOKh/+aKRJf5Ahbht
X2p+B6OJ1ieQvjPG+wawX9YHUSTZureJiVYX3yFGI5wmp8U5TdCA1L4s9OMqkzJMUw8OUjRg
BOmxUMIMUminGGQgnCbnewxykE4y6FqAnX2CQwM8SJOBEiTJxgkzSeOd4pKJ8R2SvscnF2vE
qLr4rnAPAUlVktKI3IiuKr2jO4NjAZe5aa6Ka0nzEFCRFID1l5D67ZZEoSG+od/CELezuPZ3
HbX3+r9AilSYuSzR8mtLR7A6zOsztu/9urTAgDG8itapjL/392/HHUbE8UedJupZ2tEIDESs
SHOsokqdWQZAX40y8moQaNee9ZxYFTWC8CGr4blChzbeMKh5PY+MBbN/mcLFwCfUgTosjDwG
ittDDFDcyfdPL4d/jDTfOHDSl+cZJtNQsXcDd1dOfaBt+0xo9DjIxXA9ZvxhhdUokIAxAvXO
0j4t7Quk/icqnF568g6rrZE0mW9DQlbVaBhYNN9ai8oYvphTB0yVZi59A7Ro4CNo1NE6IjSr
7GBZ26QN8Nj9GQ7TOneiQep9n6CoRywnyfNDQ7EKADWdTdcNsL6VugCw6p8TDrWO0lcl1HkZ
audzpivArpbTD7ZH0qu3dtkpYVltnwob4n/a7PHa/OcDH1io9xU+1lm/rJCTcSKhb/RG3xGq
HpfbowBZRA4vJ+9Kbia27yLTP71bpNz8lbQ7OX7V27UpXeQhowvHqXQeZgOoPlpDHQ5NqRC0
D4Up8cCom2cwHdNDhLGv3mtgxdBGX2SWy9pjlOqp4dYhBDQievm4Dn/dNxz+0G+jWUPjow9G
MtOID+uzboTCdCTlJkIVRosu6qeUYrE/YqU7OA6+CiQ4Zxvq19Nwsd94iK7Md/Dw0f4Eh8kT
bK24TzxvUmFoXvxCbxfzyk4ryVbcacLooDmLauyLJQKTweGMMJ7L4ltnOK04qDvv2mmg0tDd
wG6MmptUtE3dcL7nC7mhheCj+V/O3qw3chxpG/0rxnvxYgbnNFpLaskD9IVSUmaqrK1E5eK+
ETxVnmljXHbBds10f7/+iyC1cAnKhdNAV1XGE+LOYJCMCGZFoszIa9byCCE5uREulD4uWmFr
NMbKWqw82sUerGtApaJ90oCtrVsiF6xG0RZaXYv20OGgr05XHRj6U63sfWd+KgkiDBjWhJfU
iG00IwqpLSoGq6xLESUnKHaHi0tzW8hbWVGQs2w1iqRTRldj35wMwlJl5SAJewcGDd3YiMH4
sYNFi0udpdONonHiOHgUvrQ1xlQx1Q8BWwZdcqE/RCJ0O57kUh6qmCH88zAPOWXyT+CuoNxO
Zzg97YqU/PACGV+ahjKLnHmO8C9JDM1kZqHf7eRjypl+zg8JI+j1mSCiip7sVIu4GSypbpTy
qRsixbucyxsztaKElagp6BVl5spS+Oc6S5pRvb/00U4RqZPCw/uGTHgOuGnLeWbAFl/l4G2/
onWNbWZ8B2VeTRc0KNJWcjoyHuv+2//85+H55X/UNquygHZ4AekRqvL2HI6CFg9D9xZpC0wi
zBDDC9csocY0zrhQWXgERVl5ZpK0XipzloOwGlq6RbDY5Q2WtCraUM/RkEHIKASpWk1Gq14I
kWkoCwWnKFJ3otAfz+a2/JaOmYU57fAUkp4+IgXed7YSs/wQDuWFzJtjx0q2WFroIu6TNkra
ck6LOjZtFZHF5S+naaJe0MZxqNBuTxihV7W/g1TQlRfvAatEjg6Mybd9i1dajBX7O/MT2Cjx
KxFQaatWi/sIPOJGkd7Ztya4rNVZatQTSVM1uVaKhJs0LbI3IwK1rMPw75DNsxq/y1y+pikt
wIef9/suhV2BEt/QWsilCqOnwvH+y7+VW4Mp2WVXJqepfaWUmaU9NXG1ey34yaPr0ZyDMtKQ
YOwOey1U8khOZMNe+AHDp1C2QRONR6lJSRmDLGWixTIAWtU2VHkR2nVeGG/0DwQVGmVlKJYe
2Vyslxpg1xWZfDMqfg/FoYLmrpumVXaKI1p16q2GoKb7iiwGH+SMXgfP0BhD7HjuZ8tyltY5
GVG7VNQm+GmJUNEnJXXhcvWkYAdl0krOLu2xEbuNOZGwbC4t6QBc5HmOpQ8kU66FNtTl+A8e
/Q7ESd3LphASp9j6SEItSed0lYY0Qk0ubZXuqBW/xttD1mCccfUMqq8SPMw5Ex81bV6f2aXo
U0Uzk8i4dNEdat/EQfFBobs1RHqpbVKQMhxYo1JrJl/Css5oGF4u2Idbx2Dpo/sXKisa18jz
ueuVVPE37FUpdYVDsJrphahTRht8tng+gkEmQU1Ka2pEd3KY027PuGmRNFh4+MzuKo7d0TRK
nZlX+fMxyiZf5rpCNedcILH6UdXj+yIMMsvuhjE04TRsPuvbxBJjpfOA+OpZy837w9v75MEy
CngD0gD5fGbu6qTqkoxXQriUwcLw8H7T3X99fMH74PeXLy9PqmvPlQy2kcoux/ADd35KywBp
l9IiDLHDhU50+ORu/a2adMEaLmRFsUB0ZA//efxC+Ngg89ko2fmaqpbZSGRlSgchAAxGls4O
+7QUbUdQ8SYtkZBpX+ZXI/dDZ5CuGLrO5EzNRuWkoS2THiOOGoVKo4gORcBbjbtZ1GRgRsQr
M7tqNTuoCKWHTZDITE2QfUowzoHR+IIMHUst0zKHVBYZbfZ6+HDRb2h8IQ4P6ajpxOCZ56Ia
9xJjKeYZVd8dhruW5jD+VFUmIFVsj6ZctE7bD0nD2hWYOEyXYcrAVjiuPv14eH95ef/j5quo
5Fd9hsDXn9NEK+wxLU4JabUvwDP8r9evO5e24lX9rT059AFjspEZ0NCwbZSrk++rrSKSXNqD
UO1o1XKPIUUlYQ87t6Qa+L2afBFa7IbuVMqnepeiy0vFEHmiDCJU3kRFMz3VLpqTWHunUWDF
kA5+0v0BFRHpxFEoNS7fa6E3nMmLAzov8Z6UmyXBuGcEU5qjDXEhTKeGpj6pxmkT2+iAw4MQ
4LlufsgoPUfihx95WZ5KmODHQokyojCh0d6Vq+odWQVxUtLSpVq5PJrr12WJFCTSTOOizadJ
Gy12WotPFGE8D9+1VixNKzvY3xYUaOx/RuWTCsI0QXjXM3BHCIxpwi+LZufpbn9byDqD+D3J
HJVY1MrLPyP10KpKCyoaW/pMJ00KMkR53h7nLatGw7Oqvr8zdr0mI176ywo0pSrtpTMQ+AHa
7aFQtHwk1mlhEAYUOSr1qLOxY1bOJnn1w/3rzf7x4Qmj7n779uP58Qvfct/8DVj/PsodSXLy
BAplUUTS6ACERaDrM+yzVi0GEIbC0yra1sFmQ5BITt8nSCOnUjoEvEGXxgpLVaRdIx5w8ugD
Ws4F8t5IR26Z3nPh70Rr8JFqVgLfhjC6h9OoatTXdqWBmb+/dHWgJSaIRM4ciL1pwEha808N
iHljy5KqLfWrqb1EkE77lq31SLO8BZBBG0xxDkcS7DC4BJZmO9+8cDNUDAZzrQr1lG7WD7Sd
IP+sYgeVCqsL7iOlZTEpykbb3+b9sW+actp0Wj17lgji4uDKoqejE2tS7aTRIjw2VDWjTW27
P9A2M0P54fapj1/G3G4a82b6JAyEj3nZktIHmqKv2r2yRk20oUKzYvL8J6mzpFTM/UEk8pxm
J3v+ANnUKrOr7dPL/VfupDu1/MXwpp5J3Nogw1dIFhCNi5LFG36JObJ8xf1fRIXlWpEMGGqv
3CUWh9XlEzzwNwOQ6n7EY+VmZUjY2J9nWyzp8K/EXS+NaVSpW7iqz0NjWM66xr1AR1oWCxgn
yZjIMFssLeOsGj43TDoLpzMSn7e5hXGaxlOMafTfOPWN5Sk1hM+nEn4kO9gl9sqdM3p872Qf
NFC8FPsw8VuVeSONtbLb20isqqIxv5btNqevMXwnqsJ2ZKh2xHdpKp0Foisd9/3g43gvj3OE
9nmd5vqzF1PDCDeUpm3K5nAni23LtBf7oR9v0kIunbDygM7DoWA7SJhSgJfwmGUrNSaPYJHv
Ctk6oMBlAAfLTtW52akOHHS79hChJAfGyx46JrXQFNvXeINkz8qhSvUsRuopQQ95oRuTY7Q6
FnoZlq2W1EazvtfAGqX7ZPG44SLSIDW+a3nXhL8wckghq26cWOGbShOwWDRx/qLbj5glg+G0
uxrJVv0sWdv71/dHvmZ/v399U5Yc4IKujnATKK+LSJ4iWRBQs1+jSoHIKRRXSnbHhlr7PNmz
OdWli3rcjWU8egkH6Y4ELrGDziuKbQpRZLQDb57TG0asecGHp8RzE/3r/fPbk9Byyvu/tKA+
vDJNay8JFqDA/SbG5uRnwcai3CXVr11T/bp/un/74+bLH4/fzTMJ3gdqTCwkfcqzPOVikto5
AQOIBv1FyjEpPIjnt+RNbTQyD6PXsEtCXeZMDDtYsu/Qgu6imuZNeCnh1uZJeeSUpsr7jjJ5
QRaUkbukvh34s1iDq9ZEQ71VdGO2QuESNC2VRr6+mpkwwI9y4DE3bJWJB5OMmoIeRB3mTfCp
L9Q5O8DQ0AiNRkh2LK8VHX1lOAlz7fvv3/HYeySiLbfguv8C8s0Y3ajJQD2n83/SBQnH+fGO
VeZAGMlElE+SraEUfs5QJr1ojMVM84N6iCfmHp7++cuXl+f3+8fnh683kJR57KeUhJWQzUo5
NVQea32mdxf8hvUY9ubivEI2YR5R0GHYaPrqevG4I3h8+/cvzfMvKVbG2B4o5cma9OCT4u3j
iosdPijmqpRBinZsx+dAnSNCEvE1ZvTN504r+giYeEYlxdJ4E5eYamQC3hUl2cHeAWhXN5ZR
yNX7//4Ksv3+6enhiVf05p9iSkCrvL4AVRewPJssx4ALaj0lYMh6AquS7pyr/oYzhpoUz50u
NedBJaWQz3VmZHowRKej8hU4GwJRH5dYiii/N7ZQr6o14Azggdhaic1Lh2XwwA5Ie/dtxhIY
73pMTp1HhE4rD5WxUlaPb1+ILsM/lJeHlz4r2G1Tj28XmzktsFgkZ8vKtZoTH4kAtc56Drtd
zyeIUas8TWHW/gvm6c2bHg9tTihPqdGRY4yrC95YVqp7Bs2gGkXrTLvx7n3y+SGKNZ8Dodjg
hS9bqP3N/4q/vZs2rW6+Cft5i4AVH1Ai6+Ok5JKfdtq0AMJwKXmsDnZEVwhN3HKGXb4b746X
0JsThk5DylZxAg7lKd8Zutfxrs07eteS9VIzy7E2Qe/FDbBqNAbEPcymXgl6AUThhUFCt83u
k0LI7uqkKpRczcDJQFM2rvBbsXJv9jyAHIiyTH1KSQB4IC03AlDHmG5EE4Deq75VNRKG5BrH
0TY0AVj/Nia1Rl1f9ieqW+XHeEpRQUXH5wHELke6pl+Yx1hsYuU7V7kUf3AZ2jJ9ljrmWTeo
XazpcAfD/PLseLK7exZ4wXXIWsWnbyGqhw/ZqarutPfGU7b1PbZxJOUURGrZsBPeS4lok7Jj
JG6506aoU20RGl+HYL12CbjcELYZ28aOl5SkEwQrva3jSCfpguJJweKndugBCQIC2B3dKCLo
POutc5XLe6zS0A+ol4sy5oaxfKSg6FrCWmBg2T5XH4j19P2+kLg5SO7KlLaCPiS9J43EkYhP
usneLCO5Sq5hLL9jM9K3fnoNDSrsQoZ4e2xzdjWwPHcdZ6NIYLWYYwzDP+/fbornt/fXH9/4
m4hvf9y/gob3jvtU5Lt5QpH9FQbt43f8p/y6+MCUrcL/j8So4a+OZ3zHSgRfb6XdTJ4elQs2
fB2Ytudqz21SFym5RChTUSj4aP80arZGfyKIARLkOlMfzCda/IQd3z4w1RuQlKPVhFwNbtVE
ByVFm8klLrFiSsmnvMV6sBpsxuQ5RkmijRP5PC/aRCnuwHajYcnUssc7cUE5Nc8FKMvPEsR+
3xUYYnJQgH1xzbORJCRiUdzAz5WtVFLxD6hmyYp6TGvh/nxK6r5IbJ+IJWOnlko4N0G9VWpa
BRt34+hZAD26Xq+WHACNN3HsGmnFkfhGIQozN60x0wL03kTPNuWOs0bFlpPxBIaUqAMlf9O2
PDE9zfLa2/i55ny9JHfGNzAR8t51XDe1lmXcxHyIu87Bkv/EEcdXD/5TGw4vUfPSpDVClabJ
vUsgLMc40DJZRCpPSr3aeCmaboKh/5S4rtn7Cp+FZ56YseNf9fQ/T0WhzCvFi35qQccH/TTi
+JqfnjqrmNFbE9TDanFVdjUodWFggu5g+SZrYz/WewWJfRq7rkmGGaGXiJPDaC2DcKumdIYt
D2O5ShzX6wMIEq/DP6UezopmcW6Vicq1DiifVSbfzEzfdaqA5mTYRG+om3EOGi/9icyKfpeQ
VowCBikAmrzij8IB8fyYkRxu14d9Dvz01EIe6G00NSjI8w1kaNJeCZHJiUX7GfTErUmNHR7u
UwhsoN1UP57eYRV/+FM9+BibdlC8TWWqYRyjgJNT0NVyyagyV+hUfjAUsjZlK4sJoMMVWchz
fPPTeb0rZeujtlV/DDuWjdH7lpxa3FDglot8y701I/shrWrl90g5BRtlNBmQE29gfacTbpQU
eq2oCb4IrpL4G+G9HBaEKdVl5VF9CgzdRKZraYtBP+dhlc0UhsM8HD3+KzR68fjy9v7L2+PX
h5sT203KFed6ePgKWiWe0CIyGWUnX++/vz+8mnrbpVSNkfE3OiZmTQf6QwVSlWhEhalX3Ajg
p9XlCDE0zht30OKyHwmaJR/JhxaF/DZbjW7QH8PbUv89W72pVDQv1J4kUGtSqdYxMjipQGRv
yYwpBkn/oM248kAXQrwdLV9OHBvU75WtG6fMlhYfZLYcmE4KCj440stewRNFb7eZDnt+pZer
S7Ev8uuHjTE98vtRESclxNb6XWKx81GY5nd96TQYtS7JHGrAARnpadMfmeX3uyyh7yZlLq59
53VN3U3xgJrYsEopLEe4knvRuPOhKnfRJvcFzfTpPdT8VKdqpgXLvHLey91CFpOsqTQsq9Vf
+KSCrGqMHMsI4kwZI689OVa6TTG7WXxD0g3smL9KzwXML/wWz99/vFu3ppMZ6tJ2SOAmq6Ri
j+B+j8dyqu21QEQ8pFvtkRJEqgS2dNcRmW+4n+5h8Xyc3nR404qFdlywRKgeHiqCpn0nKk6J
xsZA58/r4fobvsO7znP3WxTGKsun5k6UQqHmZ7Jo+VkT8FIv2G/RxLe3+d2u0QzmqJpbKwwl
RV9z6YplogwJ7Evkl6AWwFcuiRd6Rt2SSXBBJJY2uy4hkzvsPdpabeHoCmrEK/ggW5wtyKko
y7ySzzlnjC8aSdqThWJFll+KOrMojTNfX603RsGfuaRyF+9fer5H5g9LFD7QtpZ0lRxghZLd
f5bSYzy5ptvRVUNwl5CPsi1MqDGo9oZLnS9F9qmhN6oz0+/HvD6eKIk9s2S7LT0gkipPyQhg
SxFO3Q6vWvdXatyywJGdBWYAp+uJHCd7ViThTp/IPIyA/KYR/z0aL0EXgWazMed535zSo5AZ
dvkD+o75ZRy3VRw616GpYcJbP06yyN1czc8F3WoCPjL1qUdmYfDxF5iTllfHWpZdlbjyofoo
6vyrMz60okNQw+0GNvOXTouYNMN4CnYuQFr05Piflo1rFIWBI+pBrAMc3/rDEWpA3urPfPHW
C+ZkTHAbjWkYaOr6UexjVeiqVlUSb8zGwd3qsMtzJaCjBGUw+DMLxtvFrO3ttf9EvXcvUNDg
8dl4UKToiuA7pvZa9C0LA8+N7RzJtfVgRLX5rfHtpdw4vqN8qs+WkYXXbGU8nvhfKwxtug+c
0If+qE7rbHEQbdY4LtXYPdYWRRZLV3S3sROMw9v6Pe/LrumT7g7vzajuzpLIi52xxwx9Kku2
UFd61F6q2Hdxghv9lF1LnxYcHPhAchSfmRdu1/oIOEIvXONIq8Sn38we69WduXRaqq0lwBnC
YGJYyUpwRhSnwsdPvvjTUERbdvzpg3ZtALMe3xdyrTK7q4rNoIdD5UStuWWIVdJixCl7+ZZz
ovClqNHoXjZefun88po4Ujyd4jsGZWNQEp0SGDxBMKnzx2n7Ufza3OAeQ7mjVorPf+Kf6s28
ION7rbtMp6IHyq1sFS/IsAdvmaJZCXqXUC7rY1LiXpD8DogV/Xjp+G2Xjh+q5JYuBj/vxQ+s
CXIJoX174hBlVg0Kk9pkE2WoWRDEBL1ULnKpPpowcpsodiiws7z/ggdkhvGBcu53lh9fGB9o
5GFNS/2NgHM/MUgnOReTBnwLGSMHZ8r5Foao3MKC1d/JxzX8ftxKFE8O/OYFoXQphW/3cU8P
9Joxtm7s4fXx/sm0hR71Q+nNQRWIPdUMYSbC0t92eZr0eSZZPhN8bd3qg2qC3DAInATfoywS
2spf5t7jJujWltbYwB+kUXfcDU+KBiyj08uWKyw8OGmmhguU8Srhj/d1H9YmYW0OTXeevQIJ
Hu67gtYs9Amy0hn4cs1PsXZkDAQlsYt6s61ANL3rvTi+0ljVh0EU0RjeJHuRSzQAejWMdgPG
YK5fnn/Bz4HCRzU/GjcNFkRCKHUhKcd1iFwWkBpAVm53jWuaS+LpzLwq8DTX3uQsqUDEHoz2
GeliMMrW9hQOg1UvxoR/ODEwgVIzNtagn09kmWGuWaLjwEin2hFXDaUloilUR7BiFUWT+PUy
cOOOQ16vFIMV++JMfSuAj9uCpWl9bc0O42RrXVjqhgVDEwmyHWZ45UPNk3nEYY6F/pU+yp8G
tlAnPvXJweq7rbJ+xDZeSrfsQ05QR9ZgtOYuW4snuMxT1BgOxyJONY6fmezwK79yJ9LiUKSw
qtKna1MntB1l6DyNyXO+O2kRAxTIPmBxUplNODsmKKu6nnTad2Y0hhGsIUfuSWw5qD00ZbYv
YMqCekRUrB4O8tyrT2WpKlLHczreW8iZc2pKbSXGYuEZtmKbINF5dSATVX0EAgY9qWWT/IUG
WtM5L3+bbZc5VXmBo6Uav23pIGMicgz1RQE7K9i/1VlpCR5Z7UZLDOp1dNAQxRtaBIlHsgRl
WrEiXtBdsvGVBXSBCu5C2dUHj9zGLoyN+urDTJcC5RgY7kVXE51sQQxA8Z5YyCn0rxpjSUqr
aI95RykuGM4+V2xE+hT+bynTABBK5Z3m0jrRNHepJYKTsXGYN49j73Qn1ksvkE97SdwxmzdV
qoQWDwV7qy/+IszvU0B8SftPJAtHMGUUIhVfOyZHL6LCMkUYsiw2LLy03EeKKjL6LItdHqRd
lnkth5wcE53kjEFVTGEmctmnG98JTaBNk22wcfU6LdCf9noNbVGjjKA+1gxlJJSHhpc+1T6s
ymvalorV62q7yd+PYQ5wU6YmzCpFxvEmLg/NbolkgenOO110mX6TrOvlLIprcMyUvTlnwZFl
7vZ43mlVKGP0r7f3h283/0C37NH772/fXt7en/66efj2j4evaGzy68j1Cyje6Bb4d214cJ1A
rQ9oHV7sBxpROMJro3h2cZKJOCXNIZXlGEiKh7jQj6k0GDbsZ/KKUWUzbZORIa9yOSA/kvRl
dKINItCUePyXvgTg3cQK/euiIu98cdzBjumqz5pzuLnqxBoEd1bcqsQGW4bpucHsITdUMss1
Mb66JmZLKhzCXYJU62cY9W095c8nS5RvwLqCvgVB6NbX2gCDWMHMKY3BwIoKNsWWdNhd/fkE
S3CnJibUVpWGsQZ/mx+vgpXgGVQuAH6FWQyT5n40vCJs7XgLCt8bSzH6pGEDrGBT+s37H0Ko
jIlLs1KdcnxxRdOxCtZ4tbz7cahNZ2I2SaI0R5mczQYseYwd4Thh6yvBhGZbJ8vTNXzCoV8R
PWMRQeFnzUGw2MJJyMus9J1v2VS05MZPiVWCv/guEs/KcelTVBJS6Wnl8K3wYzazEgaZLbv5
8vQofEL05RW505K/Tn7LFT01oRHip3sksviGScrrjOqep3N5/sUf13x/eZWLJNC+hdK+fPk3
Uda+HdwgjvFZWvUhWbRWDoWjANU8yncYN10RTxp8e6ZHm55K1sde6/s/kV/Wp4q3u1nF+Utd
DZjCwYzAwOPvyp1d1IqCI/Gj9jC9Nq5+gf+is1CA8W1XvUhTURLmR55H0PGKU7FWmJGK3utN
eJW2ns+cmGrSkYUV9UE+vJjpVzdwrgS9r/YEmd88muQmzUv1nd25aLMXA7N4U0+chuIxA3lX
ypahcjs6NvZhd9ikvYnybTuRVleh40rSxrJyq6Fp67pEhiPqK2c8c37ybnv+YjZMN7saoZi+
Op54Rmv3lbZcLN8pICJzBih03LUxBHWJPS8kuxmgMKRjDMs82494smobulQcaTmVa0RUjSfv
Wku3DUiJI3NERNdzYEs2mIDCj1LdxtTHn1O2cda7+XO2966W878lmaYSCx8ueitFEYxsJxip
ErE0cmPquEFi8GJi/LM0hg8pGZJVMCZIerwhJjrLrgFFrmJh/mMWueK3CWsNBCx+sFarsk0Y
gz/nvVUHK+zb/dvN98fnL++vxNXbLAuFGxNRYHz/OzXpQBy6OImibUC0ioS6ayjVogtKddCC
UvJyQZM1dJOuovlamTc7V17GbS1stKMa9kMib4ohcekhcaoDUtNb8BA+9oniztDQWVKOAfb8
9fEmuPyf4op9+oTdZBvoQ2yjbD/Fd1yThBPLWiOcfdooRuLaYrk/mJoT18eFxvh4SbhZL/bI
NHRk13LUdShxtIDWSiPDMfiZYh7Dn+MaqCMHg4tezyR4MEOpVQ9fH+/7h3/bJVhe1L16mjuv
WBai8s6hTK8a5dJLhmCHUxDSseq9yCVTC6OQEP9Ij7Y0fRtR9Cj0PKrZqj52w2htvQaGyLd9
Gq/PaWTZ0s/hKCzrowhYAnd9CEHF/W2kssyvtlq6ft6zgA6uGAmMBB4fo0X3LhEYJnC9iaPZ
a+d5/PRsjCKipVJ0n0dnIWUrRHyvPfQrDqkVP4eZpDy8yanjzkujojmu7yyn5CJszrf7798f
vt7wzYcxEfh30eZ61SKciipOp6PL3RonV1lLBm7lJrf6QamohX5SKmxwL+IBJDX5fY9/OS6l
s8iVJ05ABdzpJ56cbLn1EVh5ybRUyuZQpOfUSKbaxSGLqPNPAbdprBx2Cqq65xJmZ6UTukby
+sshKsqSKgkyDyZCs6PNbwUbv+63FZEVjV4+GIupanXJyfyozpbMeI6n97R+DjmNmGGvxpVa
GZzzAT+nPvz5/f75q3Y+KVLN2iCIqf3aCMtBgsTQuAxtqfe0mDUORfWMjhTUMU6PWhx+y+PT
u5WFwfIMzciAVtMrKfRtkXqx65Cij2gxIQb2mdmSypTNIifwYq2quwwK61YXXSCVrb/d+AYx
jgK+dmmzZXQgWBmrfdXSZ/RjjVkYxKF1vnF8q2rCMkDZfgr8c3WNQ/MzYShv++qU7tyNMVaE
LbiR1oVvnOllyuwT3lfnx9f3H/dPa8I6ORy6/JD0suWxaOsmvT218hwjU5u+uUhrysUdxPzn
hXB/+e/jeOJe3b+9a1MPeKfXzJi3ien1XmZyL9S1zcKhS+sFYYeCbD2igHLB2dP9f2QzWUhw
POs/5vJqMdOZYqAwk7F+8lmfCsRWAL19M4wOb+FwfdunoQXwLF+Io0i55ZZvfHrSqTzUUysq
h62svj+kXWrPPf4w98ChZrXMEcl7eRVwLQ2Sy8EwVcSN5LmhjpVZD0YPBR7+Tj45XYjm0bWM
CacvRXuW4FEzojVbic92Sqyx4D97xS5L5tCvbWWMR9vuuVX4h4WpGBmpQuLg52qtqj3IuDgZ
Fz8+zK6EJtySkd+UQoH+L08JGZvdsGzwSqNNMeVtVTH0IZJLKFMfVEEwCVKzl65OupwHNlcf
uBq5SQwjFVY0JDLEcPflHU3Voyoo2PFSyXb1Lca1Qlxad6YnB7IUH/YEma04CU5uf/wrWh4I
LyoUlifK+XjEtWz5YxQTbU5rLMDs30lmiCZGGNkMdUfQv0meKaH04jnkSfzEgJJIPoyU6bFD
lU3IrtVcOQs1AyYGtpNfFhvroxCrpE4M4vT57rMXiR2KkfUIWVymdK5j9pmoerJ1fLrqydYl
z6HnLuEOjmaSOn1yhFTHBFLjeNif8nI4JCflaeExIRiObuRsiA4bEY8qN8c8l1qrJpbJu7KC
eWB2zeQyaWbbXQNlBzh9weeNQx+2TDyEomrwoFbuUcc9E4N6LLFkz4cPVbKy98OAUhoWhnTj
hl5JpXp1N4o7xYQIF5BmZAmD0NImxk6CZNn6ZN7oYmwC4lKo2u2oLGGgb9xgXY5wnu1aqZDD
CyJbBpFPvhm7cARQBLPgCMAYoQHlDkQGQnXez8Kj2vmbaH244XbKWa3o6MIcUZOIz0ixum+o
4TPzjbbbxFzpA8cnurbrt5sgoGp1SpnrOJQknZtk3viaXZNtt9uAOm/v6qAP0VFblT/aYsl/
Duci00mjQdFxiR9T37/Dzoyywppj5GbRxqWvShUW6ihkYahcx9P8lWSIGoYqR2j/ePtB4YCH
3GvIHK7qajUDW2/j0Dn3UGdaAqo86zkDR+hZM4ioIa9yBESxj73utTUCaLKxliJLo9BziRSv
GJocQyTVfdeUBAP6bKWqk66MtAVdHnTmWytQf22J4qTwR1J0Q6oY8eloy04mmLGQihyNoZ2p
imNQoyvRxHu8rA/2NBB7+wOFBH4UMBM4sJRqnCn2BB2KZ/64DNxYdeeaAc9hFZXyAfRG2oNf
4qD9lkdYGPDWZq7H4hi6PtHABR50j1LKyK7oY0pRmOBP6cYzUwQR2LmeRw50fCcKtIiVNMVq
QPSsAAhhMAJqoGkF3BL1FgBRfK6rBMSQQ8Bz6ZJtPI8UFhzarAlRzhHSBQSAFM2oEZEanMwQ
OiFRVo64W1uqYbi2WiDHNrJ867sReUIqsYTkVOaAbytSGG7WRjznoCLLc2BLDBdRVGpIVGnr
O1QJ+zQMNgS5ZZ4fh1SVuggmuU90ahWS1IimUoOtohZEoMbk+KtI0yUJJjOOA0tia4OurMh5
Vm3pmVFtKXMLCQ48n2h0Dmyo6ckBsuBtGkd+uNYQyLHxiIat+1QcEBdMOT2a8bSHOUM0IgIR
1YEARLFDCJ665WHITaBJ06GNTW9YCd3Crn5NqjYpIRv5xdJWtvipNFfFka/SX2aU9DMvpCz9
FI6I7JQdxvverxV61yZDx0KHGFV71g7+nUkvdtWQ7vctWdyiZu2pG4qWtXQ0g5Gt8wOP1okB
CkFCrC7RwIM2pqsZtCxQ3u+YEVaGMWgX9ITxAme1sfmSFsXE1BCAcgpKLVV+TB5syeI/8Kly
j+sNMV3FouLYljHP+XDRABZqNRZiPKaXOH+zoXcHuOUPY/oWYuZpobFoa5RlRoRRuOkpU6WZ
5ZrDQksW4nOwYZ9cJ07WFjbWt1mWUooBLDsbZ+MREgSQwA8jcik9pdmWjv4kc3gOWeJr1uag
0q22ye8lVHdVxl4qWjdlu54RGxQGuyWie4FMbgiOvf8nSU4J7qzKQV0h51kO+v3GWVubgMNz
qdUdgBBPh4liVCzdRBU5DSbMYiSlsu00Eydj1PQsCizZVKApfbAvTl0vzuIPjgxYFHuElEmg
9jHVNUWdCAcOgk6td0D3LQK4T6M1ydofq5RSBvuqdakll9OJjuR0UqECBCT3WhGAwVL2qg3c
tXElXTTpSO96LtGyl9iPIp/Y0yIQuxkNbK2AZwOINuJ0cmUXCM51tMtbqTAwliDCe6LGAgpr
um6hFx2JPb5AchIyjDFm2aZf3634G89DHf3c9esn1BLVV5lHEoag1qOBGzz86pVZouVNTHmV
d1BcjJo1XhEOWV4md0OlvDA4sfN9/WquepAADcY3CTHuKj79Y3nHeGLNcuE4fGjO+ABJO1wK
Rt+KUl/s8VyIh4daqb38AY+wz6PpUg3+00kqpTX6ksP40gf/g4bpgmT5ed/lnyfO1S49iVBs
ZvKj7eWcKI+WSKS4DGluhW7PE80IpXEqU2FU+SY0unAZdDRjXojiqfjXl/uvX16+3aDH7zcq
NNv0arw8UaY31G0fS7ZT0qUyUUNehs8/7p8glZUy8JudHqfxUpnFV4inXSkybQH7vGqHpEw6
zZtzrII1b+laO+nTY9ZQgRsY28GUZqzYKZGUZDtKZBEBaLQLul1aJcTHSJZrwtkwdNfAGvIi
F/EpgypJh7SqtUzs2Sv+wTyexD9/PH/h76IbT7dMY2hvPCUMlOmBuDtWHZRtCgfTPt5uAvKZ
7H02OsAcWnHfqn7J/Ig88J9AzTKee0qjIalH3yTwz5LeiyPHeJ5AZeKhnDFOk/YUh8FzLFP5
nhgBfK9s68gqEqeaJpiicRQvDk7S7sgXmn6YICEdo42RkKXCgDBU8/MG47f8Vz1ZpAaeNb7t
zEKrphNMHnvPoK/WURgVqLRD0ueXprudjvXlWqWuf9VbeSRSDQUbxNByt4XwsQhBA7Q5Ho4c
QXA1PA5hqzK0CStS+o4fYShNW5IvEEOyPASw0f63ILdK2k8aYW4X49hHucCpY4EZDfUxJl3q
a8MHr+I9apO4wHrHCWocUtStT2YRbyg1e4TjrRMZaaFBEkHcUpyq4yon9yF9vDiBW7Mp8nrv
ubvKPinq/kpG+0AMo4arJTPNSeaY3Jo4nOkWi8LRmJmQzXwt7NpKpc5etip5vplXKtWlQR/E
tt5BL/pYS0bcq2tZ5ilRPFZsovBqROXgUOnF+sRRGarAoY/1OHp7F8OAtokgbqw+LX7w4/HL
68vD08OX99eX58cvbzfCmL2YXlSRXhqZlnZkmCXNFAvv5xPSFsEQ+qNL9W6anDkkWg8qT+X7
IIp6lib66jOb9CttgdZDlgO0McnSEgOeD9OkrBJyh9Oy0HVkmxZhWyIHFhCUyJBwgh5TR6ML
vNXECmWXMlUAquhTll0Srrk1SClSZyczHIdXohhblyrcVvYGlKnqTeeIgAyXnXcn4zNqNkxY
csoKOkwNcITOxlRtpEQupetFPjENy8oPzInfp34Qb62Narhd8JSa9FgnB4vrE1dZuuL3pk5W
lQvY+W/Ic8kRFMcCBo1a+C/cad5iCDkyaEERuAxrjhVaFbnx1dYAE4tueKR+7tnG1sgCeuG1
Ou21iS9i5OtEJYyJ0EInO3WTSDXGdFqFkoWORjcF8J/HoBxvzrY/mD82LbaXtzQ0++QFEK8R
n5uyTw5q0P+ZBWNAnkQ8VHaqyOCWCzPu7vnmfmancgUt6KDMbAVCBSmiMNzOxPIlvQRlga/q
GRI2mvSsFlz3SJAQvZ8lSNsvLIi5E5Ew3VFMhpatClGTecSuVkXX8BXElQ+cFcSThaqGuHR5
9kkd+EFAKbsaUxyTias7Y+ntF67wU0jByq3vkGMALwO9yE3osuLqHNEqi8ZEXyvITHHkUYJJ
ZQnIQi5roQkJmW+DQjmszAJRewcVDciVXuHRthEKFocbskwcCh1rvrhv+ChfdRuhQQE5HZd9
hi3bLa1t6RX+qVbZkvNIbJocz1oIQL0Pkh+3y6o+oOJRTOcOULy1ZZ62LvQlpXpLTG2wcenR
1MZxQHc3ILTIrtrP0dajhw/s5VxS4HAksNSBOyat1wBYAlKEzttHA0HH4Q09zM3doITt46tD
f7U//Z67jmUKtGcQepYwVRqXJcCJxkWajUs8l4oqpLkJ1TBWZeu4EhxRA09sN5wVI5iFoUtY
u8u77q4t5HfmYEHti/qObjS+o12tprHBlaB+EzvkaNPN3mWkOnuWHmRe1Sbk5aXKw2zrIwuq
OApplwCJqzwELm1qIDHNWimVAmy3HctbVgpX7G3WFy7OE9V0Nmgu4cLUXE1B2pjSSYSe/+Gs
EFtQS4gknY0MI6EzbckZzDHXt8jSacv7M6Wgnes1pi2tYkm7Vzp5vlf9qBQrnkySMm+5YZY4
jEt1CftcVekUNpBi0LeHCqLt9DRJUia7YkefpHepbWOdGgdbSKmbHh+vVq9D8J1qjqJbJh2Q
V/CMuPnxCIyv1q98v8u6Mw/6zfIyT+eQ3jyozrR9e//ru+xcPxYvqfhlzlwCBRVv3w792caA
D1X0sFOzc3RJxl/0IkGWdTZoihFjw7krqdxwchwhtcpSU3x5eSUecz4XWY4PS571TOAH+myU
8p4yO+/M7bKZ+BgV4uvDy6Z8fP7x583Ld9xLv+m5njelpHQuNPUESaJjZ+fQ2apbiGBIsrPY
eJODWvCI/XdV1Hy9rA85ddbHc6ryykMXZaVhOLK/1MJfWYpYYdZUaffn99eXp6eHV7Md9KbG
FqYa10iBp589/uvx/f7ppj9LKS+X/NBZVZXQcb8RrHNqWvLPkiu0Z9LCxGO/uaH6WXZXJ3if
xpuRtrrgbDzQP8t5QN6hbDBcY0N3DrKfypzqvrEdiJrKk9z0QhNTb6oD1cs4IHanvadJtIVO
jE5Oh2HRyDGJFySrRF8WBzK9KinLJlWG0zLVx0fnzXE9RqGyVWF0htKni4iSrCUlgscnFbM2
yBIJSft0fGAoZYXXXRnd6wpn31JnbgrLuU/NjLi5B2Zj/ZpznOXQwoIu7tdT2VZzBkIdgKaf
p/jc8moL4tTs89vhU5vr/bmA5/Zk1mFGq4yKD6AngY+8GvJOg8eMVllY2poskxjjr+CUyis4
Y3OKeKjDPpNd5lTsk5n5/FnaEp04gmfWUvq8NBrPeX0yml4YCqll1nIQLPhObk9bN6BM0ScX
ZdkCq/DHc5APOUBpczQcTHxJtmeDpZFZ1CUVMunPxEIuhxYTpPvnL49PT/evf0kyTxgE/vj6
+AJL/5cXjMv0/958f3358vD2hgHn7yHNb49/Kld6olr9md+x6M3fZ0m08Y2VGcjbWA5EMJPd
7TYiZEafJ+HGDajbCInBM1KsWOtv1H3+KAqZ75P71QkOfNk1b6GWvpcQ5SvPvuckRer5O2ui
J6ievzEaAxRsxX1moaquYqPy0noRq1pqzzIO56a+G3b9fgAmeSD8XLeKAMgZmxn1jmZJAnum
WE5ZYV8UNmsSoF6h76peY0H2KfJGfqFyIYdysCOFjPsFUq+LYtLJTuA7jM5pfgbkgDoTnNEw
ND+6ZY7muahL9jIOoaxkONK5qSMl3rxMNhqEn0FH6jW2imCj2CfQuQ3cjZkqkgNzpp7byFGP
UUfg4sUOZbg+wdutQxUR6fY2RthsiHN79T1izifXrcfvWKWxiEP8XpkBsoonNawl/OAoAK5e
AHKL1Cu1MS/l/fC8miPp3yrhqouiNFdIR3oZN4QKkv0NOcX8LUkOXGMlH8njFNOgrR9vd0R5
b+PYXWvZ/shiTzfOUlp2bkWpZR+/gRT7z8O3h+f3G3zdyhA1pzYLN47vEiJbQHpIXyVLM/ll
gfxVsHx5AR4Qo3i/O5XA7OQwCrwj/QrOemLC0Cbrbt5/PMOWTasjahzoN+aOfoeTPY3GLxb9
x7cvD7DePz+8/Hi7+ePh6buZ3twVke8Yo6EKPOFLrFXPZpEwVr6HzV1bZI5H1n6lVKIh7789
vN7DN8+wUJkPgI+Dq+2LGo86Sr3Macoo8rEIAkJkFxU0pV12cXirp4VU+T5joUbG4oTUrSGv
gOqT6fo+lYIfGNO6OTteYsrH5uyFppKF1IBY5ZBOulBLMCGJgB7pElFjCMKPGaibaAmOqIyB
btfgmrPqLb98FBGDmNNpu9yFYbtWyMgLDEkJ1MgzllSghhuyDFFoiY67JPdBS8ZrmgrCITF4
tuQo2ZLNt43MQdmcXT8OYrNGZxaGnn1CVf22chyj1TjZ3DMg2TVXIyC3jvqM6gz0DnkHtOCu
S2Vzdlw6vbNDXqEsOFE+1jm+06a+0ZZ109SOS0JVUDWleYqAek3kDkr09nFTmSVpZWpCgkzU
pfsUbGp707DgNkwSoyZINZYFoG7y9GCMcqAHu2Svk0Ei66S8j/NbZUNBS32+IJRAMz0sJu0j
iD1iYiW3kb86ubPLNloR/AiHhogHauxEw1l9oEwpHy/x/un+7Q9p6TI0Obz2p+7MBY5GhiFR
KaCHm5BcVNUchQrRFvqav6gLOqbdEJzq5Wnc9Mfb+8u3x//zgMenXMcwTqA5Pz7h2Mo+OjKG
23x8tseKxsoqaYDRdS3dyLWi2ziOLGCeBFFo+5KDli+r3lP9VjRM7TsDpS9KNTYt8oSNzSVD
jMlMn3tXsTOWsWvqObJtm4oFjmP9buM49kpeS/g0oA6yTLbIvJ4SaLrZsFjdNyo46sAh6blh
DA/XUsV96jiuZQBwzFvB/LUBqV4Py3i+oY0H1PRBvbQ0fRXHPGqIQ9x5jiU4JVvHZu+vTFfP
Dah9qMxU9FvXtwz1DiSvtRTQu77jdpTxozI6KzdzoTk3lqbm+A6qu1EWC0IkybLq7eEmO+9u
9q8vz+/wyXzMyW1z397vn7/ev369+dvb/TtsRB7fH/5+80+JdSwGHq2yfufEW0VzHsmWcBAC
PTtbRwrXMBPleTgSQ9flrFr6SKe7kF+wwdQhra05GMcZ84XnP1XrL/f/eHq4+X9u3h9eYeP5
/vp4/6TWX72H6663lowm2Zt6WWbUoNBnp1qBOo43FtvNBVcEpbiyPO9+YdaOU5JIr97GJR9U
mVHP14td9b5rL9XvJXS6TynbC2qOleDobkivsGlYeHGsD4tdqMnXmXdLu+ZJo2kNh3Fpx3Gh
dUj3pam3HUf2VJu+0eK48SuJnLnXLb3Q8c9G4ZJZTKkWHtGNPpXrVSOeklBxEl1GQUgRI73Q
YkxYewpG9FXPksH6afQTzD57rfAtnUQvkGhbrsXMw7y/+Zt1hsrFakHB0cUK0q5E9bzIWi6B
euTo9e1TAsQD7XeGYAmbeEvk76XWpI0bty+49tQsgClK+qpNU9APjFmdFTvskYq6ppHxVG1G
IEdIJpJDOnU3O8JbotxjbanTC4ST/dbRh3meGuMZ57AfEkM382A1puycZnjj6rY4XV96se9Q
RE/LFsV5rOf6e+bCGo+mGk1Giup0XG2soxflROw51GyQXR8kqm+2h8ctiMUxbc8gz/rl9f2P
mwQ2lI9f7p9/vX15fbh/vumX2fRrytfArD+vLCAw/jyHfK8D0aYL1Kg1E9HV226XwnZOX/nL
Q9b7vnMlqQFJDRO9/csD9IpVXuHMdYzlKDnFgecNUHXrvBxZzhvK9nBO2jWEPmgloRrmSbxq
xbKfl2ZbvdthNsWOPgu4EPUcNnU7z0LVC/7343zV6ZmiI/8HGslGdZxUrKikbG5enp/+GvXS
X9uy1PMC0uqaB3WG1cCUIAuoWpeL7X6eTpZe0znAzT9fXoXKpLYyCG1/e737ZIynenckY2LP
4FYbmfWu1TuM07QpgM4+G/XdnpnsURvYBdXmO54TGPK9PLD4UFoLjujVWA6TfgeaMhmfbxQ3
YRhoSnxx9QInOBsDH/dknn3NR9nuaxU5Nt2J+YlWO5Y2vZdrnHmZ17MHdvry7dvLs+Qm/be8
DhzPc/8u2/kZp2XTKuBstS5krUfsrIwNFM+7f3l5ert5xxvP/zw8vXy/eX74r20mZ6equhv2
hK2naYTCEz+83n//A/3ADRvTTH7ACn7w2yXQsgqVmrUgua48mr0wu1z6CFEeg76iopQsMMvL
PdrZqAnfVgw7oVWWz5G+3y0QkR+UqWL90DdtUzaHu6HL96R9D3yw57apRMCkBWzOeSeMAGEl
VLMTDGWe3A7t8Y7x570sGZVNkg2wxc6GfdFVl0R1oR5bkjYbQPCQVwMPtmNpERuG37EjWpNR
KEuP3ApxfgdxvPq9AQlmHGJK3wEr9DioY+SubGRgRenK4Tsnen1t+RHhVjY1McDxFXLpxUFb
2YQK0lXmpSUmeszKNFPz4SRoleYynOos77qT1u9VUsJIL1hbJndaUzdVniVyyeSMZc7zIa/0
Hj5DT9FLHYDCXO1kaVCBXqDsVaEny7HynNnGOLex1Dqem11SiS3IymgUTPiWUl5nRsohISZG
68C5AgZUFVdjdIrQY0DBqWw0ZtH1+NBmS0eG4P1IPimGSJvU+RxmLHt8+/50/9dNe//88GSM
dc7KHaTRBhCkREmZ9Uqc7MSG3x2nx7BfbTDUsHMKtqFaNcG6a/LhWKBDphdtM72CC09/dh33
cqqGuqSPpxd2aHiQBasFxJFC5yWuElY/zssiS4bbzA96V43IsPDs8+Ja1MMtFHooKm+XkK6W
Cv8dBsTb34H65W2ywgsT38moFivKAm1n4a9tHLspyVLXTQkrUutE29/ThGL5lBVD2UNmVe6o
x+0Lz+0xyRI29MwJHLqat0V9GIUENIizjTLSHEtq+DzJsPRlfwuJHn13E16orCU+KN0xg73a
luKrmzO3JOYjzLWUUmIKw8ijAm0tzFVS98V1qMpk7wTRJZcv2heupiyq/DqgEIV/1ifo7Ibk
6wqGDy4dh6bHeFDbhC5iwzL8H4ZL7wVxNAR+bxNl4gP4M2FNXaTD+Xx1nb3jb2rHUn+Lh+Vq
+l1ylxUw3boqjNwt2QYSS+xZ827qXTN0OxhpGa3yLlMvqUDcgS4UZm6YWdJbmHL/mFh2TRR3
6H9yrmT8YQt7Rc4JjcWU8gZbHCfOAD83gZfvHbIlZe4kWc+32UMqtsbJi9tm2PiX8961eKws
vKCttkP5GYZc57IrabtgcDPHj85RdrFUY2La+L1b5hamoocxATOM9VGkBjC3MX3QaWiCnKTX
jbdJblsqyz5Dm2kYgRd29C1N13en8m5cqKLh8vl6WBcT54KBrtxccfRvvS0pnEAotDn02bVt
nSBIvUjZ8GhLrvz5risy+U09aSmcEGXVXvZku9fHr/96MBbwNKvxzR8qtgmHj0Xb1PlQpHWo
Hi1xELqih7xR2zXXu0n8A6nmD8tZlX+QqyAtyj7eut5OzWMBt6Gev4qdrtqKh0v5MHmiqKpP
fkiwZhi+O2uvGEbhkA+7OHDO/rC/WMpZX0p5m6ekiJp529f+xuKZLPqpS7J8aFkc2g51VK6N
TSrC5gH+L2LlAScBFFtHjUg4kT2ffrlM4KjajEPIytUfixofb05DH5rWdUiTKs7YsGOxS0aD
79BTy6ihm1U0WkVjvaIqHpHHL8gGq92+3ZhaAQCsDgPo4NiuS+LXbeZ6jH6VFFmEpy1IqaS+
hr76RoqOR3SQKoUt06SX8n3oGenjZnG0j7ZWg8/86pi1cbCx7VTJLclIHJLjbtC8bWS48Nga
PHlGaDLPFFjyx3lfJ+firKY4Es2gyXw7iyGcb4uuqA0hcGV72l2ct3CXtgfbfrMtXUMWFZWp
Te+7Rj+46YuMGRuMEuXR3eqqAupiXovHoofPp6K7ZXr+O/T/zZpqWgL2r/ffHm7+8eOf/3x4
vcn03f9+BzuhDF8HW9IBGvd8v5NJ0r/Hoxl+UKN8lcL/+6IsO+GsrgJp097BV4kBQIsd8h3s
WRSE3TE6LQTItBCg09o3XV4c6gH24YX8DgZAu6Y/LvS5NxCBvwRADg7ggGx6EJcmk1YLxad2
j/7De9C182yQ5wTmmKS3ZXE4qoXHN6THcyk1GdxkY1X7oj6Qnf3H/evX/96/EiGg4WvYq6fi
0Eeu0umcMzr8B4D5vrBBDagx6G1Mn9xgQ7gZj1NkxY9Q0R3UCHdMtAU/DpVdNRyu/SawmAoA
y/RkqQ0fo9DR3VXlqFU2Va41i3XPjxjDq0blMXtyyolg7fdf/v30+K8/3m/+9wYqOkU0MM6V
cduYlglj6KZfqG6iiE2OnUSR5lFkTWDhuO0zL6BNIRYmEVdyNScRMoj4VkSm/iCDMX7XB1zc
qfZSkq9jLlx64JAFSTIMPOVYoYiEzDjLUq2Jl6SlRgt9J7FCWxKBNVgNeCNlhkK9o+fmwkVF
mjGYxmB5VFefA8+JSsp8YGHaZaErx1WU2rFLr2ldU9AYktKSba4ZakyvE6zPlikXboFMi8lR
axmvp57fXp5AGo4qhpCKxJ0Ovx6CH6yRTYYVMvxdnqqa/RY7NN41F/abF8xyokuqfHfa79Fs
SE+ZAMdHuIe2gxWtU2JcUdzcW7xoyEWITHxcgPrkNsebG1l4fdBMkhxqDg3ZbcZ12VQW1pzk
k3D+c8DwGXqwXBWBVshBlhWUtGNKgjWGCVZihSKplUMyj4QhLzOTWOTpVvaeQnpWJbBFxy2P
kQ7LPy/iVaJ3yaUqskIlfoLhblKGom5PvRqMhYm6432b0ih1Ji4AEKSbgleiUR4yWoiwaJyg
HgRItJkaCkXFMIZKmnQZ+8331OJNkY1gDcZQNpZCwoDbNQy7tah7rU20ALMzafpIb5C0L4dz
guft+vhX2Mam/jTGbDHCscilqxLW680BPX3CWCUmWcx7vVgz/0pf4cc4TIb8DCq9mbA5hKr2
tHHc4ZR0GnuSbqNBC7bBm06PycCJY4Hl78tGvTviDQF6PhTB2qZV3yZnS92qnimPEvIqdUVS
Dic3DJSXwuZ6aeMSxlGV1N51o5eLV5Y/wzQwWFUMa5Nj9gv3YpWdSmaanMUxS1C08GtrUPF+
z38LN0qJG605gSByV1/rHJHpoZw1gYEJ6L06EvmT4rBZtoOszYq9MdKQocJWocMh8Rbj75zQ
r88gvkur0OdPbrDhAjvlvlSNBsQsZLCF4vs+YDNNfF7SMaQDGvbsXx8e3r7cwyqStqfZxH20
D1lYx4BHxCf/n+RVPFZyz/DasCO6BBGWFFTLIFR9ts7AKdkTqAlXS8KM6C4OjL1BQPlaaYoU
trUfFCi3V/SannUhNCJdW7GDCRXVlVfwpITfWO0vteQ4Ko5F6LmO3vMS023R3V6ahpg0MjK+
a+VHzpDtqBYqKptYRnQKC0R9WfVeZPEsWVjCaEvHwFhYYjei9joyg/LqsEIfw8kOPfMTz4ty
7iQZ+0GUWL/Ikshzt+uMt8OuT88so+sdWx+wHFk+ay8gaRN21NL4QOgenh/e7t8QfTOnIDtu
YKSRQxvNK0hl8CfyMVNjzR6tGUpYGc3Hxuj3OXzvBgXcvZyV4lb4818JW5mnp/8+PmPUAqMG
8t2J0Hp4eC5cfm0jhxtpGHcQGjQe59r78lQHzs/zbgp9vhIcXIqRHbfWAGaPjYHP7AJCYuKn
wXgoVyV9b640EqdROp2t37eHhF41+dk3/rtddoC8i8zHJeWlndCixBqcnIZTX5Tk+pycXD/y
7Iga9lFBI13xWZCrFQlXEHteY4gcCnHdmOqGCRuO1GWYwUXnfLuxpX672QTki7cLQxDoaqSg
hy4hhJG+oap4G/jqKycSEqwXoUyD0CPy2mVeTAP9wNLGpKfMD0o1QrAKrS07gsNQhReIfD5c
4QipIm28kmowDgTEIBsBuqcFaE2O7AAOra64yGGr+cYj3WxlhsihyxNZahetVO56ja2A9Svf
VS0KZGhDPmgsM2ypNDHsG1UtfLLdI/RYrmMQQ1XoHlThMvoNvQkWN3e0pMxZ5NL9BYi3WuOc
xb5LjFOke0TTCzrd8oe+CinRipZvQ3frOz45Hrke5sRrImFNVUMocMjac4wMr6ZwbL3Ikq4f
+dZ0AbO8jmSwsexiT2ZL36uodSDfmp84WBVv3XC4pNmoohC1kXjGUNMmE+yd3TAmOhCBKCbm
xQjQw4GDW2JujID9K+WxCg2wfuU7ITFBR0B/1EmGoc7Gq1omW+A6HjH8OOL9aQXo4sJkIGdX
V8L6RnRAh1EbAhu9JQHficeBR2AwFCxYEFLiAOlqiB0ZCbYrbYcMMbFCCbqtGJFDdCYn22YT
gK6L4GpZBE+aWPOlmxnIK1/IKZobq0OPkS3WZjArDrBHZ0Q/Tgg9jGa0y+Ef5OfcuiiBP6eo
+jSHOKrQMfq4hbHKU7wSZSCk9N0RsE1CgDeB5amNmadPfPLhJplBP+QUdNhxJYzKt0+YF5De
wwpHSNQIgcg4bp0ASgECIHBojRihyF2rHOfwSJ0GIFDAKXuwmQMj8NI6R79PtnG0NnulsLZE
nRaQHqAzg684y5uwOHNegz/KYDV541E/jSVLry5p8jfzjadLRCZMaKNk6ogFa33DAwLTqtul
igNL+AaZhXxsSWGwpk7G+pMYIpdYipBOLV08WrGF3yf0K6RvLPwBOdI5QltOyCwRbT4os8Tr
h3fAEjsba1hLiW1LmkErDMS4Rjqlq3A6uVtFJFobR5yB7pVtTIjqC0swHKsJ/M7PirZh65EF
QW00CuigIzMPHsiu7TnmB8CoT8NVXbdOTrFPLdEIBBuiURGIXRvgEbJdAOSs6dskBMUqWVsz
yhZNgKCBobHSrqGSESznkePDtLrrnBSJ91cpq8mkQDl3U74TKz7eJpOnawusAuII8dAl7ZFA
hdfbQpPu7MQNYZGZZh9H2ZgRfgw7fjp5B4t2l9eH/ig3HuBdQil3JyOZ8Vpwypt9f/iCfvhY
BuMkEvmTDXoDqWlAg8o60Uwa9nutVEPSapZqKnrC+06i3LzCeXkrPz6BtPSIbkE6rYBfOrE5
HZJOLw0MhaQs76zlabsmK27zO/qYmqfLL30sJU7vpiemlG+gbw5NjY5Vlu9ydI/eqxXAJ5aa
Sk8q/x1KZ0nlkFe7otO7e98ZiRzKpiuaE3U0jvC5OCelfCuMRMiWe2Jp1LtcJVySUrh9Kunl
F+75pZXsrtPct5Fa4CssGqnP9Rp8SnYW2zNE+0tRH0kTWFGTmhUwgZpaT7VM+TW+5bsy15q2
zOvm3Gi05lCM80VNeqTjj5ayZ5sZ1CmE5O5U7cq8TTIPQLLSyHXYbhwNl9DLMc9LRszPKjkU
aQWDwT5JK+jTzmLMIvC7fZmoJq4S3OVi/KsNVRUglFmz740CNfgWiXWQV6eyL4iRWPfagG06
cTMrz+6kRmN8GP3K1aVEphuQf5v3SXlXa1KvBcmjWS1L5MFiyC+zzFaHtnxHvpVcYGDapnJb
JjV3TJPjyo7AHeun+bc0xUJeaQo0AtQagiWF0dyjB6BebP6KUlnUVKw8jvd5Umkp9Th6YdnK
tWpA+m150oid6iDPZQ26jybMKrhZlXT9p+ZOTUymGvK5L/S5D4KPiQeiVGl0BGlD2QoieMJ1
e2iZryZ1KYqqMcXetagrSiVC7Pe8a8biz99MNJvc4N/dZagf2aQlA2mJD1efdkY/CiQ9sR5f
U+W/LIkkZctkBYxSOuZwFqo2NGeJ96dC0WhpG7CJoaHG7QIOhwbWeMX4RM9V/0h/iI/ixQdj
m2NaqF4YcpshB/FG44xXFXXKWoFu0BeyqeZEmW0Tx1eLvr28/sXeH7/8m3qlbf7oVLNkn4NQ
xkfsDVsGOZXjy9s7Wt9OgXIyXTus8wuXPUvR8Jcw81fWsJk62NYJiYULeBBsTaelu+tQTNag
Xw3HC8auqQ9LHBQ02TbUV/6ZZDGvliipfccLtpRIEPjFE2Hm1M+4cZpHP8W9MJCXuBzm7guO
VjdO9Iy8TFcHAw839H59xrfkySCHxXvURq74nnRAhnLnsPq2vcin9bebDUGUb19HYqDEg56I
AX8yvKpkNWHG5LhZC9EniKGZXxw45uej5wVR78DaWgiHvl524eCBJ6z9SZ8JwttEIyrPWXPK
/GCsPuAzL3aMCvV+sDX7bHxW3Vb2Pk3wQWEtrb5Mg61rdId4IT7Qx+jyQL0+RIM/jfIUzHf3
pe9uaWcbmce7mpHilunMzbP+8fT4/O+/uX+/ARl60x12N6OHxo9njC1ErCY3f1tW3r/LclA0
LGoflb1g7I6lFn1XtET5fyl7tuXGcVx/JbVPuw9zVhdLlh/2QZZkWxPJUkTZcebFlZP2pF2b
xDmJUzW9X39AUheAguxsdVV3GwAv4gUEQALYwZyN40GY5k5CPeZwQuSbfq0zG5a7k9Vl+xTU
KHa+zN1Unz6efhpMsBvI+uP4/DxkjDXw06WRhA8j9DP80b40RAUw5FVRj1aS13zQU0K0SkDQ
michJwQTQuySyFcVlZx3LCEJI5Dd0vphtA7J4a5VEieLEE6qvZpENdTH97MMlfl5c9bj3S/Q
9eH85/HlLINfnd7+PD7f/F1Oy/nx4/lw/gc/K/BvCGqqfog/8qUqqfK1foJygxVvglsntRH+
zSgqDU4X9kE3oNL6dZ2srjmlLowiONLTuYwSRKYktO0HOPTDNFP+TcpVaPj48v3w+O+vdzmw
ykvo8/1wePqJ3tKVSXi7wbd/GgB7HJQ+aHxdi3AUWxZZRo2UFL+Jy5rbIZRsvhbjdcRJVGe3
7OANCJMdLzlSwsyojyVqNG8eV94Wm1FsvStpEnGjm9Kbg395y09VJ2zD3+t0HmIHqh6meCoc
QUS7MtF6KXHSf08YxnGzudhmevReIxc8nTTpSs+KHlnJnMQivR/pYFoWKRdUGZFUdcU3JhEg
HZvcwKSAIdiyDDsBDW+Y4VxCcXWKSrv8yxOQjb6oaAyfKF0ufICjJArLZFBlKLPK88Y6hd9J
i/RYW3faBkqazyMPBxip6ogm/ZGAgRIigauoLsQD910SC5gaNDhaTwNs3er+9nF+sv6GCdrB
IA2tt0ZMSZ03tAYFr40jgU5jWSJd1ws96rR9BTeYNIbvN2miImGOfFRcbfdNmM5OwZb94BJ5
N+StwnShxnA+9/5IhGv2SuOS4g/+Eqwn2QUWLxh2JJE94lPfUsyrCFRabkt1dQh3iu+wWngs
Ggd5Fr6PYJtt8B0DxuOsdQjuTx1uLFYPeeD5nFTeUoBQ7c8sa1ipkratKVfrJf90QjPjlFBK
wQyDFv9x9oIWU90GVsD1qBJe5E45jbGlSEVmO1YwrFMjuGlqMD7X4A4wlwegjBbm/T9PY12c
H0Xi+u6wewrjs1tAoVhlrBvjiV0HFju5CrO/j/mjvlv98dTynEvzO79zndtht+v7bGK5bNPK
WT/wL29MRTQbeXuBiALLYvMtdUsm8mqfPrxpUcL13JnFnxgtzSKX75gvklTAZK70E0i8kawL
uJYrey3JXYvNUtvVsXVJ7igMd5mVX22DwGKWnPByBhgD0wpa/i6zlVH+jg+NoQuKpJcK5PBc
GDA51+H6quH71b2hzqK94IxleibjM4su8Y9q5+tcz6rX5cvj+c/Tx+u1LtsOx8YATvL2YrjH
bmjJ4QNvvwjzNON0GEQ3nbCD5Ews7uQIZxbHW5JFym6M+tae1iFve+wZSFAHXOAsTOB6DN8H
uMduyFzkvsMmBu+ZzYSYqrppK73IYoZaTjhz6JnRUtAiMiKbtJg/HtZ3edmui9Pbb1L/v7gq
pGvqos5BLA0rbjut2FWcWWwsUIy32SmTkZUvTcZAslOSi3ZLDS7JYPKefI0jPXQfWMP/LJs/
XaLxqEfdt+TBjg391lVSO1ObmWxpTp7xEks9NWILmuf5Mlkzn1JNXYsd1qqObcO22L2kETov
5hUp92JcJlDltMA/dCwH1HyzaF3FkaHhYR3JAGE0IsS9gnPvcnQ9mFhD9nmxTZp4Z2N9k2Rj
ISMadBueXzAtrJKw5LNtGx/XmWg2u0FgdZk7gARpX8WTyRQkF9OK38CRYpsvZfaGNN3T8rXt
39JonYBn/TfLsFJhPcomIHgH1nGGFfJflgGuCjU7Hrn3V0FC5UXSPk+ECJecHtp86X6e7Qv6
fgJjeDMZohhcfdF+cGsE37PAj32pFm6yTqs73A2JimW2AI1i21DFq43gHzapGhYZi9suRmx7
2gSiI3owvTcfvTWh3/NkvRkA5zLmBV40DVwFo8Gf2laSj/UpLnm5cbsqZK51aHx45yn9sD9P
f55vVr/eDx+/bW+evw6fZ85p+xpp2/1llTzM6VV8JJMQjAQvqcNluuY2c8uk+oFpIfsypaYW
GfQ2T7pAbPw850mWhTIGMBevre/PplqE0Uhd7W6V8bOiDCkY8EPl1SgKYm9tCWVkE9iaiMlr
RtFUgsepgTbSALcje5qhskqRswl+4YtwrS47xKxSX0c9G6JERJ+WENTIswRMk3q8i6VB49lj
jaQem4iZkkwm48WnnBSDSKI4SqaWP1KBxM7YtEeYSOX32UclO4RK/MqSndZBeLwRrgR/gZOX
wr4yhDI2DfwL3JDUApi7okrvuMKAy4QNSlooM07F6ZLtmyGlIAy51EXwbeSNfAko8HYwIonh
4Uh3STzgd6jb8yh3AneslVUKi8mPQNy+Mu+KcDZeC//y3KDBrj0UNZ0F0daxxvAgHGJtIBFJ
rSLkojuIejOnxFqoezl1713UTbHKm1Qf/i2DRPTCGeYJfcwWBmlItgMUTFspHkzGbtCAgCNG
XhAPiX8vl3ES8VbpIXW+WEYLfnG2FPnV/m2HDV6iBi3jG93zp/7YItRIfUv4zZrk5ab+jlGK
JUjnlynya1Xoibrc661yFvjWcOlGF9+bfE2clqkV/pf08++OoaS2w2uDJInmV4dBkjlmTy9T
zy+1PB3jNRqp5+47owK0391vmrhMvk+sV+H1TwbSZlNd/qpv7yU5Ape2uqKADXW5RfYlCaGR
avlIExK1T+rV+CwqilW6uEJxpZuBPeLdOqBqarr2TYr0ytZWNHqEv1XdZa6qSBiuytPSsAkD
5HDp85Q46tcA1THbSzQdjx3rDNB8d29p4nKj3sryRvdx+ivyHKIO4+xKf1WV6xFtfED+3SUQ
uBdPE0VwjQNooiEHGKEGuY210VwWeTqTjbIg7sMS5PBBFsEG6U7lo0usw3WlAstvXsENkFFp
29YAqaJhL2MRGaCqzKOIHTV6s6+IQ88F6RsPoAZP+SywCqkE/jISbRQPo8oG3QT5mPmDyrvy
It55nGbTUcGnMJWLPB7BABQp7mF5ByJLtAetc0KheT4ApwAOSxUiN2OgvmUHFCxrnlj2bAjl
aWF+dxSasVBNiy+9YRw11Mdeuh2UzEAPxfHFeyh9gyvhWQNn5iGPdbGZj11cJTQbQqEqPawz
vpfTidlyQz7ls9H0JWec/o3Q/kjFM97zGpXkr3UUQbm5RtK2wt0I38Hq1guE+u1G8gQAOCii
rFtxpFIlNQRIFYtUbQ0QV6fATjDil6/xwAXZpyWiddiVBwLbphoEptUcCpmfgPEqHPuFz4QV
pMchmGDf6Wa5kWUugWqkB1DdOwKWw15vqnS93JPLPwm/84Woi5Ii2iaH/dDzb4LbDxsgmmkb
wNUAd4h+jOKdatfjr7lFX6HjsSPYdNsmIUYaoMMBXROoP3BQgQabVXTfbdJ3CMcIklDm6b6U
4cOlkTLl07krvr1a8EfNrWS7O3KSAYdfLpoxhcZpLxX/T9aJDq6CgUE4nU7mNgeNzAoUNOFo
Zx4H9LkKZlMWGrDQ0IQCxF+SRwoKLJPXRuWSvrvrMMtk7Uo0g9qIuQO/iuhWXlGxA6Yqhk1d
8ViYP59iUpXsTRSRDL55AYVD0qije7PeUUNjC9Q9ZIXwjqSsoiZxLl9Fiw+4698h2Qwbu3Qf
og1ZxDraKnyFxIwY7jWJLc2v36CprlGtfJPCxNt+089BwWqACKDZwK05+MrloHHicGCj5iY2
6xbDVveiTNdyEjlYK3siE6I4fX08MZmJlA/EvkC+nxoivRBNWFkV84QsMVFFynbbA+N7EOHm
ZoYDDCWNhTrl18osQOH7ZFvLqBDYbdagKIpsf19Ut2HV5LzoplrF966qsN5AAcsKvICTgqU1
NpNhFjpa27ct9Ye0CauzJYCaZthzq1kaLXqzvl0X92tavOmtAAUEH4wyS7t+vixkZqYoR8+Y
ZThqM2GEQV/neA21Q0Jq6aCatpetpJu6zMm4L9Pan8wvqGTGEur6F6bZvCDuh/JD8xW/8xrc
fss9l2hv5CRF3/cycx1rn+tG+mo6Fa+6r3MDXeKjTD/Qbim6nmirvwKzC0La4Y1qm29tXxzj
k1XpWGmJmlW3KXuRpTlsHLMimNQoj+8GndKZynOx5HulmkrJ16Wgcm7g721owkK8hTWofySv
eMPy8Hb4OD7dKORN+fh8UC4+N8IM1tI2si+XdTjHyXRMjBQYyMUtS9C932C+cVAA5no7FRea
1ARdnf9CrszXvtDsp3p2suDtFy2FdoySclG9Anaz5Bx+i4UmN3utXSrMc0j3jhmKUpbZ5tiF
R24gQWpuIa1zQ1zv5+k6BsFcmLtSkYG0q4Zt/qBku/lD+02jG1YV23IPfuVCNj5Ur1EKa987
NFDtLnB4PZ0P7x+nJ+YxWyLDA8C+IR4cPXQfxQmXC0V2R+CbWdWZMpUZ2BeFAa50TcZ7HoW6
87ce48PY42TkxbH9qQhynBWoB5c0GmGPuI9Yzx5FAPx+2MX7aC0NKGmGlzszpnqs318/n5lh
piks1E/1pseEYW8iDRmMtAZrO5n0Px3HUHvSACvyhEeLPDbh3SOcfgTIl3bHn5QK7tOqS9QM
h9nbj/vjx2GYorOjHT5B7FFK8CY7uUOZ6R8GBG3iGpUIpw1RontVRDd/F78+z4fXm+LtJvp5
fP+H9CN7Ov4JPCymrq/h68vpGcAyXQB+CNjmE2DQOifix+nxx9Pp1SjYdTNqXU/6756DDF/m
GKAp9mWOx56tWbW53pX/7JOe3J0+0rtBv5G8Fpch/8zpbpOC/qvT/TBjrBK+RFCcJtyT1Tmc
i2XX82v90w6w/5PvxkZ7gFPI5E0dNtnxfNDY+dfxRXrMdnM6jOmQ1gl2WJc/1aQAoK6KLMOC
YIPdzKtkqTMqTfoufb/xJjRGb2ZnI2w0IssI1wV+HGLpRx0M60UV6ks+Uo0yVdxXIcdBG75i
XDT0UCi8jwsQxNYjT8CAkrlcbR+4cR+pvvLu6/EFlq65KwxLvUzrdpfzmZ+0YRzODOmCEHOO
W5qirAxOLp817kViQsU8NUBZFpn3D7fVQ7HPnMY1lKSOU/gchIGsAD5mNlpEhM3qgyhPhykd
9VGZ1wuxH5agdwAtqIwNmBiW5O8VJKGKNWGOhshLxzzWRS5I6DcNLCJ51I+Nvj41o7pirmFK
PqMOuzIwuxwYwpRe2lmKqAwmMcoUNeOtkZiCM0YiPDbIYbA90iKbuwHjrbGC3AUmwgd8R6Y8
OGTBxDqIwMnI10zCy50iNshK1Go+iAodsSDT+oigxCbegwMePOXBIQsmX4/A2DiKwHNqdtiB
xkhT5CmYqLDBRIUw7fyidseX49tfY6cZh+3c3L8lo3SKeC5PhkWV3LUtNz9vlicgfDvhs69B
7ZfFtg1FWqzjJCc+85gIOJVKa0SENEIg4x3KrIVEHEAE0q9elGHESROkItCU0m1ifkQ8PCj6
L9aJJpmKk10d9UJf8tf56fTWyKHDKFSaGBSOyEhp2iAWIpxN8Bps4GbW4Qachzt74k25lzM9
het63qBC/RR55nII6mnbwMt67dn0pqLBaE4tby3yVHDuIw1dVQezqRsOaha552F3rAYsI5DR
6E09AhY//O3id5hw1hTYD1pqumVmT519XubooG2F3bhc0ETlMhdWvMj2Sc5mzZLSaLowZCJB
X1i3Vv+qjNg6Uvw1qXQlUKmFOdg+mrNgw+RAMUNRmiOU8chAet7w8XIk4e0iXShy2oUmNEoS
s/3W/yURKPoyA1LVvJB7viNxMIm4Z3KvN4imwEjn+162qWG1gvX0dHg5fJxeD2eyI8N4l5H0
Yw3AjDM/z8MJ+y55nkewL5TMhq6IMJQGvI9Dh94Kx6HLPhKHCa1iC10faQB5i6hAI37DKOyh
7obLZX+/3YkYvXdQP2mHb3fR77e2EV0uj1yHdTIEiXk6wQynAdA6JZC+ycjDYIIDsAFg5nl2
G86QQk0AYmP5LoJ5IlfGAPKdsfvi+jZwbTYKOGDmYcPxWjWcLiK9sN4eQTe/OZ9ufhyfj+fH
FxkzBri+ucym1syuPLzOps7MJr99PNv6N/Ac5d0SViFoixlBz2bUUN9kuoXDhROmdqVj7SSS
lAFoEIwUmSdVlq6dpkwDjGSsC8s2K4rDmVzvy5KvKllvk6wo29TsBY11vZvavF97VkfOZHoB
F/CzqnDsg1J5YpIICdLtxscO1nlUuhP80LR9hC9fqcJZKx0MyYisw82U+BOrA3Erz/gRo6M6
LFNjpBiSLT+YPQHgyUqv1jJOwdh8ilgJHnkRdxH80D7IYXZGyqlkl2pqcZFatW8FNldGIQXN
dSRhOUgjO7qimiAPMl4Srf8+8yV8sKY6iu3Ct62RTjcXrbu20nYHX9qteD8vPk5v55vk7Qfa
xPJ4qRIRhVnC1IlKNCa99xcQo2mM+jyaOB4p3FNpwfPx/fEJOvYG4uN1nmJT/nS9sG7j5+H1
+AQI7X1MJN6wzkCCKVdMjFyDJvmjGA+kO88TH8ux+rd5qEaRCNizLw3vKOMvczG1LJrDLYpd
S50P3JqVcdMrGRlaLEuS768UNKDI9o/AjPvYjqY5TNpr+/ij9dqG9dDk5aZZCJpTV4s6hoMx
RffiUR+vl60fL8FcNFWIZjx1sCQgli5/aFKx2NQ6A7ZRhE1qbbIWZdt29129rjhAkgZqo1M8
rplVrXc1yxNW6qPeQmSVo4PNs3z+qSOgXPahHCAmE3Kaet7MkTEZsW1OQd2KAIh/pvw98w0B
rizqvRGOLBYTPnVT7jsujZULB45njxxNXuDQk2gydSgDhXY9b0rMKJoLAoJdxBcHuVs4P75e
X3815gFj4WjVXUXKG8jiCKelbTaenUnZaQ9kNZIu6IihH4f/+zq8Pf26Eb/ezj8Pn8f/yGip
cSz+WWZZe3Oi3zOoq+HH8+njn/Hx8/xx/N8vGRUAL9+LdDpQy8/Hz8NvGZAdftxkp9P7zd+h
nX/c/Nn14xP1A9f935Zsy135QrJLnn99nD6fTu8HGFtjg8/zpe0TZit/01W72IXCAdGNh1Fa
xKSWD1UBigNalOXGtbCxsgGwu16XBqFU8CgZ46dF9yurXoJmb11czcPB0Lz58Phy/ok4YAv9
ON9Uj+fDTX56O57J2IWLZEIetkqLiWVj788G4hAuzdWJkLgbuhNfr8cfx/Ov4eyFuaMTIfXc
ZFWzp+IqlsI3TmYQR46FUyKRIPh5GusopS2yFg7mL/q3eSav6o3DS9wihSN4RI0ClMNP2eDD
NdOBbXiWcZBfD4+fXx+H1wPITl8wkITzz/O0WcicRWZXiIBkl2wh5ifd5jvW6p2ut/s0yieO
j2vBUGNVAwaWu6+WO7HlYARtu1numcj9WPByxoWx0GGRj88/z2jd9KdfVIJInXFMN4x/h5Xg
2tTgHm92tjFPLSpzyUKC3zKdHgKUsZi5Fr1VkDDeASIUU9fBatV8ZRvZ4CSEPbujHIri7LUS
QF71ghaBI6rDbx+nsZS/fWwlWJZOWJIE7hoCX2hZ2Mp1J3zYESFJpdVKNSJzZsQ/hWIcEmxQ
wWw2+gC2y+CGELys6EOy30VoO6yVoiori4Scbzulo/H38KyuaGz5Lcz3BGdaATYHnNBgfBJC
LE7rIrRdi/uuoqxhfaAmSui0Y1GYSG2bxs2RkMmoccZ1bfYVf73fbFOBhaMORPdsHQl3YhNf
EgViA0C2g1fD7BnhEhWIhkkkuClbIWAmHk6muBGeHTjoPN1G64yOuobgoGfbJFeqsAnBt1Lb
zDe8Tf6ACYHxt1meQ3mKfjPw+Px2OGvbFsttbkc9jhRq5Ar01prN2NOsMZHm4RLpRwhoWAzD
pWvTOGFow0j6pC7ypE4q3s6Z55HrOTivYMOZVVO8jNL2wkS3ywS0eS+YuKMII9Npg6xyl4gX
FE7LPIR5uArhH+G5RNNnJ0tP49fL+fj+cvjrYOqAOjVwXwUmbA7lp5fj2/gKwMrrOsrS9aUB
R8Takr+vCpTDqTv7mCZxp+Ub0L26F+xM+W2KgJvfbj7Pj28/QKt5O5DsOyoaE/Ss2pQ1d11A
T2cZyJinajrJN9iczW8gCaqolI9vz18v8P/30+dRKhVDSU8dL5N9WfBcv0lOpN1AZDYIYmX6
TktEYXg/nUGQOPY3Hlhrdlh2FQubxPKUKukEn7xSJSVnoAQQBleXmSkrj3SI7SyM7xk/oMrL
mW1Z1qXqdBGtwX0cPqUExbKveWn5Vs5nwpjn5ZgrYJytgNVyKzwuQcDihe82s2KLKanpKo1K
6Y3A3p+UmU28Q/+/sidbchtH8n2+osJPuxHdM3Xa5Y2oB4gEJbZ4FQlKKr8w5CrZVrTriDpm
7P36RSYIEgkkZe9Dd1mZSdxIZAJ54G+PF1bZGSVqLugdNv72PtIwN31vz+O8lrpQ7yC9OHeX
xqI6PX7voD9VQsto7wPAIA9bVdmfolHEfdg/fCUz555VBNlP9uOP/T1oFrAn7vYv5t4z3HUg
ilHZJ41FjfZ23cpd3LMTImZWKc0HVyfxhw/nx6zgUCfEB2TzkawM/fuCis7wAef+Coc/DTe6
yi7OsuNNOI4He98bZb88fgfP+6mLZMfU+CClYbu7+ye4O5nYX8jcjoXmt3LCps7ZH5M0ebb5
ePz+ZMKxGZFssieVa/meuDMjhLtnU5rhu6sBf5/G7uByXR1WhRs9S/8YAuGPRiPrfDLiJeCE
yoHBZ1Ec9aWRTw1aRZzRIeDHIFouEN/qPNhg+UvK72PKTpS+SGcrRcvpZ5YCMYvWGYWh6Wja
VB50DGJF2oEpqlj/LcBScy6E9NYVqmr9ovD1il0yiIX3q4lq1DrzC9Ogrk/ZZD8w0lF9fXT7
bf8UZj/WGPC6cpTlOu/mbiabHgAHalfUVyc+fHUW0q60/KiaKXhvHk3UcT2vKfuQG+Ufjs8u
u+ykM9E4Lby3hclOKbz38Esj5Tw42+GHzjo8c6UXOjSr8mGp6+JoQGWcpz6sSoPSGulQZQ3Y
/ZDmVaJWKWb9rGQd0dVg/FXqa3h4maXFhNhnHEnYd0M9IHQwMCd0J1LCfYO1MCyFSkTLjtrv
yTrVU5NWZaSE+4IP5o0LMBfCEHIRYxL+K4y/63uob/FPwP0LJjnYEG/kzjmXmNsQDFbTfsl2
OH14/+hEYfgSEEB972YDVimT3qyn6KOz2Ph7Z8ScxEO6Ufiqxc1R8/b5BY0exz1s/Tg02rkl
GoEYJkyLfAvyCgKIqZQwgOs9AJ1PKRL8xcCSzdmTUd4ty0IY53Omuhn6YAvFJdMa8PpjWlfv
/dKpsq6NVRSD5HpncU0KvrATdQ5EIluVfgloOZdvLvNraNZECXm60Ytvcox7B87p73v/z6Df
ixSWPDCDYPjBS1gv+qLEoaY4s7FwmIPxNyivKYTEsDFxBlfRumpYcRO9dghb5W4WF3u56Uvh
0CbCEYevNqI7vSz0kd64PJagwp6jhzIzAwBvJ3wpLX7THOiqxi/ioIvg4IGT3niYRnP5zQUw
z9jNowyoMpJZqUYUaUdv/X99efz+PNgmIWVaXUMoogMry5JBvCF2QRjuF6WSdYK2BCbwfwAN
JwDhmH63qPQpL3NVEi2F0CwanMepEhoGYbtitgrpifVy4JO0uhRn2OHfIAPmxt6pUDY8tBJM
vCNREWU5zsBF7y8ZcebXsaqIBJ1Tudmw/N0zJOBABenevNZxSZtBwIoiCL4y7e0eRXy0NsTl
3DmFhsi+h28FHt0mKgMpovfNPdiEuGl9vCvWaGGuykOZKAsK7bHGs937BNtSycPtyCOtFkyU
iszVFmqn/MA0DOIAut70hlh3z4/7OzJDRVyXacwuKEvu3NwIzuse052Ns4E//WRmwJZk0gZu
XNdJVZdkufWfgzFeEwtOqeopjBNHSqJZ1BBuvKk6CW7Q09/WpsHmGXl99Pq8vcXLkHAFN6xa
ZwQ7RXKFWFiQodzHz5XjEzZA86ZloJVKGeiYdM6+CId9sB/RoDhok5/P6zBcjo+BEDHODjMx
IqpaMzvPgDhAYZgKd2TGolUtVLqB+IEl+/4MhLM6jefEqdi0h0X2lSe1lJ9kgO0tFiu4L4/K
tiLyPpZXy3nqGpOVCQ+3vgxBt8C/Icl5vj0QiITb0AO6SMumn1yt63TFGXm8ShrC0/RPzLwO
wfaLMp6oWRPlolHTyWwdikU7I7VZuNDsSsZ+3Q3vvo2omQQ3B1pYGVETVMkJ9pj0XU/PBifI
f3QJvYDzFixe5x8+njorGIDUvQUgffwd7o0m8Fas8q6s3GSxqRd9RP8GTTQY1JEiS8HVbGL7
1/rfhT506Za2UC8kZoAKQ1xOkJx99PkSQ/SBs60LaUuIynh2uLzrqDk//r3imjgnWiVDMTi+
jjatZQtk/AVm2Sj28PL8xYz52x7yzqJ85LrVRSJaSAiPFPd+wmP7VgJutpXUSxkuSRrCQBp4
d0r1SoycOwi5gQgy9PrSwroZhp8qK26BQHqaDvDeHTm494Ft+Q2hYLdgp1XG+qZSlHW5YM0w
adQTjV1phZxNzZw0Jg+RSx+HqYmGqUQMugySGsSBbEbXbcmq3aJVZdKcd64IYWAEBAIFAURG
whgtOU1gFTaZbak7nokb8v0I00dAnNawLPWfwwQiW4sb3TDIFk3y/zrEaRFLTnZySDZ6BLGT
bG25VCIqqxvLH6Pt7Tc3LEchYYEFWX6TBlc3nXKz4IMLdcfoHcs2kv7L7u3u8eiL3jrjzhlV
EwgRw46uCR6zSLO4ls5qXMq6cAfcExNVXtGtg4Bxn/HGIkizEUrxPMLgUzgt33NsCq8Nh4Bh
i3YuVTajzRiA3OEl8yTuoloSt/zhLnKezkWh4MpLzEn2EPjjrWd9fq60ntfXbYX8cAaGqtPG
ZB2DPMUyJ00ua0hshRUwjZbIEWjlFtQnwzJ8qEf+lSTNKSG3kF4aPQ7ga81WpO/XOGIhFRmw
nuTGxzZtnouasJ3hs+lZNiRwbQMvrcDrSmR5XO8N7ScSvtLAaggDNwLbWWqnaKjIwrQEsgLX
6thUylQzUGafyrBMr/4R3KjYBwtoVri7h29wWBh4I6O2NiarTPtbtZCwNNGGhB3UqBY5u360
duWtXQOZiWgJ7qxwERX7SHCGdqFVo6hLCv4eQogtIYTR7EbJ5urk+PT8OCTL4Gi2Ux6Uo0f9
EPL8IHIRueiR4RmCy/NxqfF3NoYO5pIlpGSTDfH7aMeGaZLb24MRy5gB+E16Z0y4L/g+DU1+
d7f78n37unsXEGLgoaDvffAtvx214NOW6QMQIly67JDT/137UP1jbN3+5fHy8uLjnyfvXDSk
fwHG3Z27lh4E82Ea84EYoRPcJRtL2SM5nSj40nUH9jBTjbmk8Us8HGdO6JFMNsZ1/vQw5weq
5K0bPSI+bLpHxKebJ0Qfz7icuJTE9cHwPp7q+8fzj1N9/xD0PW1KWGEdZ6VCvj3xAlj7SN6Z
AKgwseZE8bb6E9piCz7lwWc8eLJz07NqKaYmwuI/8DV+5MHUiZ5geJMXQsLZSgDBskwvu5rW
iLCWwnIRwdkmCr8RgIhkpljrgZFA67VtXYZlRnWpD+WJYm/qNMsOFjwXMksj7uN5LeXywJep
brSgEYIHVNGm/AlBRkK3+iCRauull3jXoWhVQqz+44zn9m2RRsHtl/UBc9V844W5u317Bsuu
IG/vUrpZXeCX1uuuWzCRtYqTPX5k3aT6WCkUkNV++NBZ/zknaxv1W4tFQW1dvNBiqqxRAiMW
DkZug8SuDb7dqzqNyLFvSVjxDNNuLkQdy0JXCyo56I42pGLprOyAiKg9QQmJLgJkPLZOnxj4
VVPRVZxoARauCZqyrdmwQhDeTGtLUEiuZ9hPXsOidU1qcfXuXy+f9w//envZPd8/3u3+/Lb7
/rR7fudcXeXCDJuEd48OrObqtoGJmZUl+xTWS6LjdAjn3Tdr8qt337cPd+AH+Qf87+7xPw9/
/Nzeb/Wv7d3T/uGPl+2XnS5wf/fH/uF19xUW4R+fn768M+tyuXt+2H0/+rZ9vtuhOea4Pvug
g/ePzz+P9g978Gba/++2d8G00nmEGibcGXSgN6ZFCoF3ldJKtqNpclSfZE28rTRIj2y07Iqy
oBFiRpSeels6b/pNSaGKaTq8i9KrcRhj1iTFksIFv0NJLnT5MbLo6SEevLB95jAMHOzacrhw
ef759Pp4dPv4vDt6fD4yi8uZCySG+zUSV5qAT0O4FDELDEmbZZRWC3creIjwEz3tCxYYktau
sj/CWEJHCfEaPtkSMdX4ZVWF1Ev3Et6WAPpESKoPHDFnyu3hxE+8RwHr4KyfyIdDFGibRZ1S
zZOT08u8zQJE0WY8kGtJhX+n24J/mPWBensUwGnYdbs60jwswYS1siu7evv8fX/759+7n0e3
uMi/Pm+fvv107/ns5DfcZW2PjMO1JqOwlTKKF8xYaPChwmVUx26Yb9u7PFwSmlWv5OmFyWdr
3r3fXr+BY8Ot1j7vjuQD9hK8PP6zf/12JF5eHm/3iIq3r9tgS0dRHs4/A4sWWmAQp8dVmd2A
Qx+zr+dpc0K9Gj0UTtf0KDTyOl0xI7oQmlGubHdn6JcPR+BL2JlZOCNRMgthKtxTEbMRZDRj
upPVnM1jjyyZ6iquXRumPi0zQWTccIstpoc91iKpasMJg2vCYdAW25dvU2OWi7Bxi5zGq7Bt
1h2ZuElD/CqnUSWsy87u5TWst47OTpnpAjBX9QZY+6HKZ5lYylPOLIsQhKOuq1Qnx3GahBuB
PWMm5yKPzxkYQ5fqNY3mi2H/6zwmsRns3liIEw54evGeA1+cMEfsQpyFwJyBKS2PzMo5Mwvr
6oK6FRs2un/6Rl6wh30fDraGmUik4fSV64RXnew8iVxq1TDkk5EAhcaLnOPgwhkAaDhwMdPe
BP9OssNw8GRdEYPZYaDDtaHWJfR4Cj52yYzy4/0TOENRIdm2HG9Sg5LM1bw/1JfnnOnh8EnY
ULwdDaD9Vb5xHdKKwuP9UfF2/3n3bKOmcC0VRZNCGGxGIovrGbw3FS2PmeBJBvcL3oBEkTog
GQFFUO9fKegDEszpq5sAC6JWx8nDFsGLqAN2UuYdKLhRcpF6Ha/C02Kg6OVvTkREvCxQCCxn
cEOtOHXVkaptEg1XXfi+//y81erJ8+Pb6/6BOVyydMZyAYTXEbPSNKLn09aa/hBNyF7Mw+RK
IpXZpWwBBnWwjkNfD1LY4RJcYS1Ec/wG4PaA0RIphPX/eLCPk6cRKelQKw+W8Eu5D4gmDqLF
mtuvcgW68TotikOaCpCBJ0AkRD7F2ylNPzhgHC6bsKeEWOCKdmi5VlrqXzeyzzEhRCiGYXfR
Q8+PZefjtTpxuCZDBmN9fB4uS6CIopAb9PAuDhUlQOVCL1FGq3NwXSQbMdH0a/aWixBAWgCO
22vkkMElRDUikRsSIpf0R0soEy1CS+JG/mIskUpNtUvkWQmuc/MNX7+Dd8xVezrR3OS5hBtN
vANVN9TV0PBPiODzBVW2F8xz/bL/+mD8R2+/7W7/3j98dbKy4HsfsLxomaXNcEM7Ni2gwOUN
/7p6986xfPmNWm2Rs7QQ9U1X6YpUYtl+NsnvM61xi7pDqwz3oVdYi6+hWC1crmTtmkojK0Om
xmGtT5WWSosI7mhr9FZwj02XJJPFBLaQqmtV6j6RWlSSFrH+H2QK0E1wprysY+ILU4OhQtHm
M5Ilw1xwu756gyNYhPm9BPH11B0Fy64orzbRYo42b7VMPAq41ExAru2tR1OaIbEvQy81LVEV
faAM1y+/6M23Krq/IvBYUEQ8jU7eU4pQGYq6VLUd/YoEWIKfNAUbxWRpJGc3fIZnQsJZMPUE
ol4bEdf7cpbyl0wRSYnqCRuR8w6nT7BQGY2coBVG93SGv41TZSYB7u2Eco5Xx1i/iMvcGRam
kWAjA3IVld0/GdnAg/L2HgAF8+8QzhmABJYfDjVXCjHw8MAc/eYTgN1RMJBuc8m9i/ZIdOIh
yRMNPCVJbXugqHMOphZtPmMqBrcwNtyvQc+iv4LS6EXj2E09SrlgEZtPE/TlBPychVPTKC9R
mPuqpQ+/uNMye0mEIhcKxbrbehZ5Xhn1SmSdMqfocG5B+hzNSJAb18KNBAh+3CXxgwFQTMYj
F2D7OwIKbI9BaK5MHEMQBwjNGv2UP7ivACfiuO5U9/6c8GTA6N5lAo1rFpK6pw68s5GqrcJG
DXilj6u4XBcHSJqbIkJ0MsQk+hWV8S73SQCrp7hi2tus01JlM9q9oiwsJQSsryh2QFVlmVFU
LQPq/hhgMBFNDYGNlLU+3BAVXuPtvmzfvr9CmI/X/de3x7eXo3vzOLV93m2PIBTp/zj6HzxG
auUFXe51Y8E69OTYYd0W38A9GJrBcUzcpXJK+jlVUDph6EeIWDcvIBFZOi9ymJ9LOi5GUQgM
ih0KWMczWUQLLTNzz8fNPDM7mbS90oPdLLsySfBhkWtW1XY1nbprV87Iyhn95Z7CdrNl1H4y
yj51Srj5QuprUAKdcvMqJeabcZqT3/pHEjtVlGmMXkVaAnPYRhuBvauisipKe5a5reLG4ZEW
OpcKLELLJBaMcz18g/mMSWLKpCyUY0LqvMjzUYaR/vLHpVfC5Q+XbRrbaZiatchIQBLTK/Zs
d+IQedKy3xNzzqPPXtrg8ljL4UZteNq12gBCn573D69/mxg+97uXr6HNB0rsJmu02+AeHEFa
CFbtNnaKWhqdZ1oEz4Zn0A+TFNdtKtXV+bBm0K6aKWGgADsE25BYZu7kxjeFgMSAVpviwJ5r
npZ9Z6WWGiHptqbysjwBvf5PKxOzsuEtaSbHcrhu3X/f/fm6v+/VoxckvTXwZ2fkvWonUtAl
tW5ktxZ1caUV+Mt/OCup0ocvOJXmJFSGiE2C48Y9diWk8wN7f70s3R1rqtZ6LzrC5GmTC+Ue
+j4GG9KVRXYTjps+ySLZJW0R9V41KYQ8ZJ9WcIeshd45pntVidKFuzFd+AheaYZSgAcb4W1O
9Wsplpjvx0ZssUrs787LP9wk1/1uinef375+BUOJ9OHl9fkNQue6nncCtHqtTbsBXRzgYKRh
bk6vjn+cjGPn0pkYLqzNDfawYQa95wDwf/6YsWTweI+UObiOHaikL7A3enH5L07bch47LL3/
NVQHv20smojLnurSoR0B0xJELkk18ezgKAJ+KW9mpRbPuALjGca30WsHUvQqrSHXZbXQqtcx
WZIgdrWzRkBMjiJVcPab7eI4CjSCM8rB8VlG8ClI5mlGQ8//1oKiEwFeQTRfsIH76c9co6ih
XOKPBOxVbhTkqmANiky5QBbIGh7K3v0fNI2H6rSIzJ4XiNS7uikLz6XP1FSXsZ6dbkLxHUVj
JF5vfB7gQobLFBW3JCoG/ranwthsAz6UzN3UUc4gRgS3bHtmmrlCEq6LfkL1iZ1p9hT22mIO
1GpMyFo4Knkn22gBehNSyUKr3wvJSobeEK7yrpor3E/eUK7yEIIv9dQCdEDVs7BfWHqSifmh
8Ryb8BvNTWvViuD8GsH+XsF0fWgxN73uzWEBR0rD8jvRiGISgZnixHz6SxizfldZicjYHhps
+MLiYoPCeyw4dYAgWZQjn9JqL40GOrYjoSnJh98j+0xMYCVjRzphsmuJBCbZsNcBWj879ii0
Mmh3ydXpxYX/vcJrCxNxF7hIc3UcWC6OjCzYCAuIihaqmZr+qHx8evnjCBJkvD2Z432xffhK
nTP1eEVgPVnyHscED67OrRzPCINEJaNVV45e2pSJggtZuDvoU49NrHhAdotWz50+hPgNv77W
opGWteKS90Q93Fdj260lnLs3EGvoiWCtOxm0P87Qy6WUledXbS70wZZqPMP+6+Vp/wD2VbpB
92+vux87/Y/d6+0///nP/3bu+sHNG8ueow4UKl1VXa5YZ+6BAsuAVTq5m2u4+lZy4z4n9AtH
dwW+9+ET5Ou1wWh+Xq7RlDo8rNYN71Bl0NhYb+8DLJZVAIDr6Obq5MIHoxVb02Pf+1jD7lUN
ufsMycdDJPi8Y+jOg4rSOmozUWv1TLa2tNOwQ6TxBixUCcpWk0lZhYPUT6cxXej1Xm7McLT0
vlFgie6/B4yTwWrOwxmYkBL4S50mNnWtRaoO+Hv/f9Y4HQ/Nn/DMc7QomAScA9IpUKXAKLwt
GiljfXyby//JBbU0TNWq+oYP/G0kyrvt6/YIRMlbeJgjCZJxFlJ6O40HXw/0GSwXR8GgMGhB
SvQ0lIiKDqU2LVJBKHQv9vrBZvqVR7UeCC2ne+lGjLFQ1BJ21n84tWY0eYdJ9KbXApD8csEA
US2TibIcIhAiUL0eTojTE6+u2ssaTbDyujlwXYjdQYeXbo67WcstackHqaIj5fG1615Trkcd
2W4N3YFFqarMyJvoYosxQaf0nUHXx47VnuwxYHV7qwVPY29qErs7ppHdOlULuC70ZZwenWNI
FE0Az68eCYT3xIkBSrxU8AuJ+g9NKSMSvpg4rpJgOu12RwnJ3f9GZBr378AXcD7NZZ5bNIZH
d3DBXtg+378/53ZDlcZaNMOJg4C2sXuBqzWeJp0vFAOCl/hlgx5ADfyLLAtCNNB0Kp+w6h3o
DVmVcpGePCqpZquTY65lxilKE+TnJPAQAro0r7Qy2iVSwC7+VXvYwGUjHjaAd5XoID37UxeB
0vDcPOjjEj1YjapnJOeCP5nuRa7avbzC+QMCXvT4793z9uvO8dRri5SsSQRwSizB04t+A5Mb
s0h9NmqwuHkmTm57KsCNKubs+MtcGjoqd84TufWUCe7A6RK5mqUyIb/4su0+xVsjt1njFhZp
Bvo6u24AaS4sUIjj7mZpyay7IJaSgPAyUQktwl7CHdKFl1HpOjwYlVArghrcS3rus3hPPU4o
kPX3OGiHUMNtDLtYgBKujOsWnrc6cnNskPW1bpY0z2RXxz8gxZCjFtWalcKLC6wcYKJgpTvV
MbBL0ZzOX349iD3mDm6RwNfNPIj8H7+RnPx4SgIA

--cNdxnHkX5QqsyA0e--
