Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBFN56KAQMGQEJZVZMVI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x737.google.com (mail-qk1-x737.google.com [IPv6:2607:f8b0:4864:20::737])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B24A3278C0
	for <lists+clang-built-linux@lfdr.de>; Mon,  1 Mar 2021 08:58:15 +0100 (CET)
Received: by mail-qk1-x737.google.com with SMTP id h126sf13281467qkd.4
        for <lists+clang-built-linux@lfdr.de>; Sun, 28 Feb 2021 23:58:15 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614585494; cv=pass;
        d=google.com; s=arc-20160816;
        b=GjSgG4uan9e7sr9LNw2s6XXRmr/M4tEjFZTNhu2s1PnyFYDxITGurvvCB4CgxMUJ4K
         2tkiFmSOQg0868bmQpCEhID3s3My0scek22ZG0TI4pF4yowvHzCxxcB40Q59RmJh0XP+
         n61rjk3mkcPiN6ZhQXauvZsPlccxoCSdMa4Onse4A+pknZY0nwFPwEdc/Fi5GSJc8feU
         OG50y5rdkoDvHz9SZAYohUSWVXd/eS6FkFw71aYMXpkGLmmZCOTFdzr0eZcv81/Ru4ZN
         ngI4Ci5+dY8+tvOp9dUoMgmhX8nktL4c/MVFYJ9v7e0IP87gNyD+3vaehXKRoCaomzHX
         lvUg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=OjUp+15X8Ri5SWLF2NOZdK+zLNiI2FqyekGGtwRY8zY=;
        b=LqY7GNh5lQSWhvzGqs/6+FAjcgHVK2lP5EMI7//0X9ZkfZ0kXMglNyrz44RrvQOuxz
         +nGzGoUpb2EFCdjsUw3Ft1/hdJ2gM0IgaGs067besLY9oGxQ0IjKL2iDkuhOchXqkpbf
         GAlld+eDhrbZseMyGXF+HEXooWyDAgSdAyQDzRTnAu0gubUJR9rmN2FmcWIxy4kOzbJC
         BW0/7wxwsuTffgizwsrDz54wV9bdCMzfj1An3a3xSbF8uhflArRhMSKQOWkSjNgRp3dt
         GzmX7O7VHgH10rCS92JO8Svp58cuLq/dblb/kIOxg3F1qNS/GPw10MOgbZ3w6pIZzlMZ
         A+TQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.126 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=OjUp+15X8Ri5SWLF2NOZdK+zLNiI2FqyekGGtwRY8zY=;
        b=KKEeQqiSoxVrUddU4WahHxjAfBKavsTpV1gv/uyStmxqd7lR7zsbHvOFyHIA+dzQvN
         hu+V12pmeUj7gkojMHYw1xYpmm/mS43kyqfy6fl8a7yWSp19irxwnlwaTx2bt8UGs0xU
         wcZgfzQzdH9VtncTYgCKGqC6R1Efv5xsx1twtqA7PrpOywiCr+Nh8HagitKVv1KsOn/6
         2MkAd1j8DZM10fRNSLpx4g29C52HAE4Bw95niM5qQjLI6O1lRwIznzaSRGMZTOyka1oY
         9oKgUlG1R9xXgeJAGo9Fxp5ZhOF+aDlTq/qUOCFIJY/VHeG86OSf0S0pekEyK6hTpeRp
         n55A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=OjUp+15X8Ri5SWLF2NOZdK+zLNiI2FqyekGGtwRY8zY=;
        b=ogra7n3RgyVEM33WXs2F3G7btbtg0t0zz7a1CIvkCK2g/nPEb/fdLMlqnYE8t7vCPp
         TDozPwBeyQBsC4k6QegATdAIokC5I+iclyTXwRKTnXM4Z+vtgXOezC3AzKs1w6KbVTVu
         aNfhivZUlGEU7gmh50hH4H2vmIXVTw/87UZ71EgUaZFGrtVrNSq5X/DveV5k57BRACTB
         7fQgvbkmpMOWXggB0USdWU+WX5ypKlkmjZzGTC437x6PMogDZ3ZN8uKeAFJjTxT2vgzT
         +ASPIIOsDo1w6b3IbuDY/3fhxXs68Qky/p4APKaPT2thoLR7FrUAqm4P612aVh/GGzWa
         j/kw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530MOCmmaVY7LyFtbno3NtsAdfDTVrIfsaB9Ov+FOohziGrfwpf+
	RTYcd3YUzSy30hAdX0m1wxc=
X-Google-Smtp-Source: ABdhPJwQzqgHHqXynfnydwWydK5gC7gxyh4etKJMKWAF5YqnRsXo+3oKNFXWD9SsDaZq6tad/xhYCQ==
X-Received: by 2002:ac8:45cd:: with SMTP id e13mr12499230qto.311.1614585494032;
        Sun, 28 Feb 2021 23:58:14 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aed:34c2:: with SMTP id x60ls1667427qtd.5.gmail; Sun, 28 Feb
 2021 23:58:13 -0800 (PST)
X-Received: by 2002:ac8:59d3:: with SMTP id f19mr11974937qtf.309.1614585493423;
        Sun, 28 Feb 2021 23:58:13 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614585493; cv=none;
        d=google.com; s=arc-20160816;
        b=rUOCLlirQYaaffFf0E1kaTXx8OzmsCQyLHerWcWyekBdR8OflUDv45JqZpgazpHGyB
         Tn+ZkrJ6uK39PKFLCF/4IYUhaKJ/JdKwwWrgcAqzzrdFJaDV3GNPI6Z0qbqg5LepVUMu
         NGPgbhWyV4fsFezzaMf05y6HXQIa0RyF+uoWWW4mHsW3CUpOR5jKme4KGr/uxKqt2Cgv
         1pAeoDkILjG9prgs3uulwhOyxuWQ+/a/7kv9HbO/TQaHIYo23cgmZqzsad807iI/PevO
         cZj3EHmXMlUd/Rg+nSnhAhVAvobFwZjOCglwKubjBaoU3DQQ+BFaQVIKubRTzRQxZ0sc
         tO9w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=7sqep+hUTGz0zbBfvh3mrIYb/J9jJIQS6nRkazXupTU=;
        b=lDHOOgwHTpJm1vsW5PZQgNTCtdAzOuchjXYeyWVO45iAu+Fu64GUAdxnCb+msvSGz8
         UkO3lT0kctvwjypQ/FKmTNtZIbC6ZXhQxFDGq2I0VnkEu/36AI0X0hI1/7HopAYlcnzd
         sTgyxG5X0wLtqesvu99PfFybb1ZxjyO5I3/FDWE29sjfKKAADDDhHRuZp1sqphfdOwfO
         2oU8ZRaPoJTx3qmJ2QGDLKKTDbjtnGZ1oPJ2o4/AXtkZbX5InugTramCpwtSQVvky7Qs
         eRli+e2Si2JuEjQoOMDl+8n6oUUZvJySQIp5C2luo9FQu8ZDvkdwKUb7/2I4XCkJSt/W
         F4lQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.126 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga18.intel.com (mga18.intel.com. [134.134.136.126])
        by gmr-mx.google.com with ESMTPS id w30si1138122qkw.4.2021.02.28.23.58.13
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 28 Feb 2021 23:58:13 -0800 (PST)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.126 as permitted sender) client-ip=134.134.136.126;
IronPort-SDR: L1I9XxA00Ur8NO5nnowsJsxJlphi5aBxV0CVD3vBVR7IMVFaGJ50QAjf7aqIyAijLWZfHjwiDe
 oUFh1sOF5hiQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9909"; a="174022875"
X-IronPort-AV: E=Sophos;i="5.81,215,1610438400"; 
   d="gz'50?scan'50,208,50";a="174022875"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
  by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 28 Feb 2021 23:58:11 -0800
IronPort-SDR: n6n/2846+c7esTQbafayAh9l4GkRw6wsMqdCEAFh/ahnxoIvP3neAe59ix51oCZRgwsVJO2PYm
 wb3ejwKHY2rw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,215,1610438400"; 
   d="gz'50?scan'50,208,50";a="426841314"
Received: from lkp-server01.sh.intel.com (HELO 16660e54978b) ([10.239.97.150])
  by fmsmga004.fm.intel.com with ESMTP; 28 Feb 2021 23:58:09 -0800
Received: from kbuild by 16660e54978b with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1lGdRQ-0004U3-Qq; Mon, 01 Mar 2021 07:58:08 +0000
Date: Mon, 1 Mar 2021 15:58:04 +0800
From: kernel test robot <lkp@intel.com>
To: Will Deacon <will@kernel.org>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org
Subject: include/linux/tpm_eventlog.h:198:20: warning: taking address of
 packed member 'count' of class or structure 'tcg_pcr_event2_head' may result
 in an unaligned pointer value
Message-ID: <202103011558.l8KlVFwg-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="82I3+IH0IqGh5yIs"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 134.134.136.126 as permitted
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


--82I3+IH0IqGh5yIs
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
head:   fe07bfda2fb9cdef8a4d4008a409bb02f35f1bd8
commit: a5460b5e5fb82656807840d40d3deaecad094044 READ_ONCE: Simplify implementations of {READ,WRITE}_ONCE()
date:   11 months ago
config: mips-randconfig-r011-20210301 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project b077d82b00d81934c7c27ac89dd8b0e7f448bded)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install mips cross compiling tool for clang build
        # apt-get install binutils-mips-linux-gnu
        # https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=a5460b5e5fb82656807840d40d3deaecad094044
        git remote add linus https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
        git fetch --no-tags linus master
        git checkout a5460b5e5fb82656807840d40d3deaecad094044
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=mips 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

   In file included from include/linux/stat.h:19:
   In file included from include/linux/time.h:6:
   In file included from include/linux/seqlock.h:36:
   In file included from include/linux/spinlock.h:83:
   In file included from include/linux/spinlock_types.h:18:
   In file included from include/linux/lockdep.h:44:
   include/linux/debug_locks.h:17:9: warning: converting the result of '<<' to a boolean always evaluates to true [-Wtautological-constant-compare]
           return xchg(&debug_locks, 0);
                  ^
   arch/mips/include/asm/cmpxchg.h:102:7: note: expanded from macro 'xchg'
           if (!__SYNC_loongson3_war)                                      \
                ^
   arch/mips/include/asm/sync.h:147:34: note: expanded from macro '__SYNC_loongson3_war'
   # define __SYNC_loongson3_war   (1 << 31)
                                      ^
   In file included from drivers/char/tpm/st33zp24/st33zp24.c:7:
   In file included from include/linux/module.h:13:
   In file included from include/linux/stat.h:19:
   In file included from include/linux/time.h:74:
   In file included from include/linux/time32.h:13:
   In file included from include/linux/timex.h:65:
   In file included from arch/mips/include/asm/timex.h:19:
   In file included from arch/mips/include/asm/cpu-type.h:12:
   In file included from include/linux/smp.h:15:
   include/linux/llist.h:222:9: warning: converting the result of '<<' to a boolean always evaluates to true [-Wtautological-constant-compare]
           return xchg(&head->first, NULL);
                  ^
   arch/mips/include/asm/cmpxchg.h:102:7: note: expanded from macro 'xchg'
           if (!__SYNC_loongson3_war)                                      \
                ^
   arch/mips/include/asm/sync.h:147:34: note: expanded from macro '__SYNC_loongson3_war'
   # define __SYNC_loongson3_war   (1 << 31)
                                      ^
   In file included from drivers/char/tpm/st33zp24/st33zp24.c:7:
   In file included from include/linux/module.h:16:
   In file included from include/linux/kmod.h:9:
   In file included from include/linux/umh.h:4:
   In file included from include/linux/gfp.h:9:
   include/linux/topology.h:119:9: error: implicit declaration of function 'cpu_logical_map' [-Werror,-Wimplicit-function-declaration]
           return cpu_to_node(raw_smp_processor_id());
                  ^
   arch/mips/include/asm/mach-loongson64/topology.h:7:27: note: expanded from macro 'cpu_to_node'
   #define cpu_to_node(cpu)        (cpu_logical_map(cpu) >> 2)
                                    ^
   In file included from drivers/char/tpm/st33zp24/st33zp24.c:7:
   In file included from include/linux/module.h:16:
   In file included from include/linux/kmod.h:9:
   In file included from include/linux/umh.h:4:
   In file included from include/linux/gfp.h:9:
   include/linux/topology.h:176:9: error: implicit declaration of function 'cpu_logical_map' [-Werror,-Wimplicit-function-declaration]
           return cpu_to_node(cpu);
                  ^
   arch/mips/include/asm/mach-loongson64/topology.h:7:27: note: expanded from macro 'cpu_to_node'
   #define cpu_to_node(cpu)        (cpu_logical_map(cpu) >> 2)
                                    ^
   In file included from drivers/char/tpm/st33zp24/st33zp24.c:7:
   In file included from include/linux/module.h:16:
   In file included from include/linux/kmod.h:9:
   In file included from include/linux/umh.h:4:
   In file included from include/linux/gfp.h:9:
   include/linux/topology.h:210:25: error: implicit declaration of function 'cpu_logical_map' [-Werror,-Wimplicit-function-declaration]
           return cpumask_of_node(cpu_to_node(cpu));
                                  ^
   arch/mips/include/asm/mach-loongson64/topology.h:7:27: note: expanded from macro 'cpu_to_node'
   #define cpu_to_node(cpu)        (cpu_logical_map(cpu) >> 2)
                                    ^
   In file included from drivers/char/tpm/st33zp24/st33zp24.c:21:
   In file included from drivers/char/tpm/st33zp24/../tpm.h:27:
   In file included from include/linux/tpm.h:24:
   In file included from include/linux/highmem.h:8:
   In file included from include/linux/mm.h:95:
   arch/mips/include/asm/pgtable.h:210:3: warning: converting the result of '<<' to a boolean always evaluates to true [-Wtautological-constant-compare]
                   cmpxchg64(&buddy->pte, 0, _PAGE_GLOBAL);
                   ^
   arch/mips/include/asm/cmpxchg.h:220:2: note: expanded from macro 'cmpxchg64'
           cmpxchg((ptr), (o), (n));                                       \
           ^
   arch/mips/include/asm/cmpxchg.h:194:7: note: expanded from macro 'cmpxchg'
           if (!__SYNC_loongson3_war)                                      \
                ^
   arch/mips/include/asm/sync.h:147:34: note: expanded from macro '__SYNC_loongson3_war'
   # define __SYNC_loongson3_war   (1 << 31)
                                      ^
   In file included from drivers/char/tpm/st33zp24/st33zp24.c:21:
   In file included from drivers/char/tpm/st33zp24/../tpm.h:27:
   In file included from include/linux/tpm.h:24:
   In file included from include/linux/highmem.h:8:
   In file included from include/linux/mm.h:95:
   arch/mips/include/asm/pgtable.h:210:3: warning: converting the result of '<<' to a boolean always evaluates to true [-Wtautological-constant-compare]
   arch/mips/include/asm/cmpxchg.h:220:2: note: expanded from macro 'cmpxchg64'
           cmpxchg((ptr), (o), (n));                                       \
           ^
   arch/mips/include/asm/cmpxchg.h:204:7: note: expanded from macro 'cmpxchg'
           if (!__SYNC_loongson3_war)                                      \
                ^
   arch/mips/include/asm/sync.h:147:34: note: expanded from macro '__SYNC_loongson3_war'
   # define __SYNC_loongson3_war   (1 << 31)
                                      ^
   In file included from drivers/char/tpm/st33zp24/st33zp24.c:21:
   In file included from drivers/char/tpm/st33zp24/../tpm.h:28:
>> include/linux/tpm_eventlog.h:198:20: warning: taking address of packed member 'count' of class or structure 'tcg_pcr_event2_head' may result in an unaligned pointer value [-Waddress-of-packed-member]
           count = READ_ONCE(event->count);
                             ^~~~~~~~~~~~
   include/linux/compiler.h:205:30: note: expanded from macro 'READ_ONCE'
           typeof(x) __x = __READ_ONCE(x);                                 \
                                       ^
   include/linux/compiler.h:201:50: note: expanded from macro '__READ_ONCE'
   #define __READ_ONCE(x)  (*(volatile typeof(x) *)&(x))
                                                     ^
   In file included from drivers/char/tpm/st33zp24/st33zp24.c:21:
   In file included from drivers/char/tpm/st33zp24/../tpm.h:28:
>> include/linux/tpm_eventlog.h:199:25: warning: taking address of packed member 'event_type' of class or structure 'tcg_pcr_event2_head' may result in an unaligned pointer value [-Waddress-of-packed-member]
           event_type = READ_ONCE(event->event_type);
                                  ^~~~~~~~~~~~~~~~~
   include/linux/compiler.h:205:30: note: expanded from macro 'READ_ONCE'
           typeof(x) __x = __READ_ONCE(x);                                 \
                                       ^
   include/linux/compiler.h:201:50: note: expanded from macro '__READ_ONCE'
   #define __READ_ONCE(x)  (*(volatile typeof(x) *)&(x))
                                                     ^
   14 warnings and 3 errors generated.
--
   arch/mips/include/asm/pgtable.h:210:3: warning: converting the result of '<<' to a boolean always evaluates to true [-Wtautological-constant-compare]
   arch/mips/include/asm/cmpxchg.h:220:2: note: expanded from macro 'cmpxchg64'
           cmpxchg((ptr), (o), (n));                                       \
           ^
   arch/mips/include/asm/cmpxchg.h:204:7: note: expanded from macro 'cmpxchg'
           if (!__SYNC_loongson3_war)                                      \
                ^
   arch/mips/include/asm/sync.h:147:34: note: expanded from macro '__SYNC_loongson3_war'
   # define __SYNC_loongson3_war   (1 << 31)
                                      ^
   In file included from drivers/net/wireless/ath/wcn36xx/dxe.c:27:
   In file included from drivers/net/wireless/ath/wcn36xx/wcn36xx.h:23:
   In file included from include/net/mac80211.h:18:
   In file included from include/linux/if_ether.h:19:
   In file included from include/linux/skbuff.h:28:
   In file included from include/net/checksum.h:22:
   arch/mips/include/asm/checksum.h:195:9: error: unsupported inline asm: input with type 'unsigned long' matching output with type '__wsum' (aka 'unsigned int')
           : "0" ((__force unsigned long)daddr),
                  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
   In file included from drivers/net/wireless/ath/wcn36xx/dxe.c:27:
   In file included from drivers/net/wireless/ath/wcn36xx/wcn36xx.h:23:
   In file included from include/net/mac80211.h:20:
   In file included from include/linux/ieee80211.h:20:
   In file included from include/linux/etherdevice.h:21:
   include/linux/netdevice.h:562:11: warning: converting the result of '<<' to a boolean always evaluates to true [-Wtautological-constant-compare]
           } while (cmpxchg(&n->state, val, new) != val);
                    ^
   arch/mips/include/asm/cmpxchg.h:194:7: note: expanded from macro 'cmpxchg'
           if (!__SYNC_loongson3_war)                                      \
                ^
   arch/mips/include/asm/sync.h:147:34: note: expanded from macro '__SYNC_loongson3_war'
   # define __SYNC_loongson3_war   (1 << 31)
                                      ^
   In file included from drivers/net/wireless/ath/wcn36xx/dxe.c:27:
   In file included from drivers/net/wireless/ath/wcn36xx/wcn36xx.h:23:
   In file included from include/net/mac80211.h:20:
   In file included from include/linux/ieee80211.h:20:
   In file included from include/linux/etherdevice.h:21:
   include/linux/netdevice.h:562:11: warning: converting the result of '<<' to a boolean always evaluates to true [-Wtautological-constant-compare]
   arch/mips/include/asm/cmpxchg.h:204:7: note: expanded from macro 'cmpxchg'
           if (!__SYNC_loongson3_war)                                      \
                ^
   arch/mips/include/asm/sync.h:147:34: note: expanded from macro '__SYNC_loongson3_war'
   # define __SYNC_loongson3_war   (1 << 31)
                                      ^
   In file included from drivers/net/wireless/ath/wcn36xx/dxe.c:27:
   In file included from drivers/net/wireless/ath/wcn36xx/wcn36xx.h:23:
   In file included from include/net/mac80211.h:22:
   In file included from include/net/codel.h:48:
   In file included from include/net/inet_ecn.h:8:
   In file included from include/net/inet_sock.h:22:
   In file included from include/net/sock.h:61:
   include/linux/poll.h:142:27: warning: division by zero is undefined [-Wdivision-by-zero]
                   M(RDNORM) | M(RDBAND) | M(WRNORM) | M(WRBAND) |
                                           ^~~~~~~~~
   include/linux/poll.h:140:32: note: expanded from macro 'M'
   #define M(X) (__force __poll_t)__MAP(val, POLL##X, (__force __u16)EPOLL##X)
                                  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/poll.h:126:51: note: expanded from macro '__MAP'
           (from < to ? (v & from) * (to/from) : (v & from) / (from/to))
                                                            ^ ~~~~~~~~~
   include/linux/poll.h:142:39: warning: division by zero is undefined [-Wdivision-by-zero]
                   M(RDNORM) | M(RDBAND) | M(WRNORM) | M(WRBAND) |
                                                       ^~~~~~~~~
   include/linux/poll.h:140:32: note: expanded from macro 'M'
   #define M(X) (__force __poll_t)__MAP(val, POLL##X, (__force __u16)EPOLL##X)
                                  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/poll.h:126:51: note: expanded from macro '__MAP'
           (from < to ? (v & from) * (to/from) : (v & from) / (from/to))
                                                            ^ ~~~~~~~~~
   In file included from drivers/net/wireless/ath/wcn36xx/dxe.c:27:
   In file included from drivers/net/wireless/ath/wcn36xx/wcn36xx.h:23:
   In file included from include/net/mac80211.h:22:
   In file included from include/net/codel.h:48:
   In file included from include/net/inet_ecn.h:8:
   In file included from include/net/inet_sock.h:22:
   include/net/sock.h:1969:12: warning: converting the result of '<<' to a boolean always evaluates to true [-Wtautological-constant-compare]
           old_dst = xchg((__force struct dst_entry **)&sk->sk_dst_cache, dst);
                     ^
   arch/mips/include/asm/cmpxchg.h:102:7: note: expanded from macro 'xchg'
           if (!__SYNC_loongson3_war)                                      \
                ^
   arch/mips/include/asm/sync.h:147:34: note: expanded from macro '__SYNC_loongson3_war'
   # define __SYNC_loongson3_war   (1 << 31)
                                      ^
   In file included from drivers/net/wireless/ath/wcn36xx/dxe.c:27:
   In file included from drivers/net/wireless/ath/wcn36xx/wcn36xx.h:23:
   In file included from include/net/mac80211.h:22:
   In file included from include/net/codel.h:48:
   In file included from include/net/inet_ecn.h:8:
   In file included from include/net/inet_sock.h:22:
   include/net/sock.h:2217:8: warning: converting the result of '<<' to a boolean always evaluates to true [-Wtautological-constant-compare]
           err = xchg(&sk->sk_err, 0);
                 ^
   arch/mips/include/asm/cmpxchg.h:102:7: note: expanded from macro 'xchg'
           if (!__SYNC_loongson3_war)                                      \
                ^
   arch/mips/include/asm/sync.h:147:34: note: expanded from macro '__SYNC_loongson3_war'
   # define __SYNC_loongson3_war   (1 << 31)
                                      ^
>> drivers/net/wireless/ath/wcn36xx/dxe.c:565:21: warning: taking address of packed member 'ctrl' of class or structure 'wcn36xx_dxe_desc' may result in an unaligned pointer value [-Waddress-of-packed-member]
           while (!(READ_ONCE(dxe->ctrl) & WCN36xx_DXE_CTRL_VLD)) {
                              ^~~~~~~~~
   include/linux/compiler.h:205:30: note: expanded from macro 'READ_ONCE'
           typeof(x) __x = __READ_ONCE(x);                                 \
                                       ^
   include/linux/compiler.h:201:50: note: expanded from macro '__READ_ONCE'
   #define __READ_ONCE(x)  (*(volatile typeof(x) *)&(x))
                                                     ^
   19 warnings and 4 errors generated.


vim +198 include/linux/tpm_eventlog.h

c46f3405692de1 Matthew Garrett  2019-05-20  138  
44038bc514a244 Matthew Garrett  2019-05-20  139  /**
44038bc514a244 Matthew Garrett  2019-05-20  140   * __calc_tpm2_event_size - calculate the size of a TPM2 event log entry
44038bc514a244 Matthew Garrett  2019-05-20  141   * @event:        Pointer to the event whose size should be calculated
44038bc514a244 Matthew Garrett  2019-05-20  142   * @event_header: Pointer to the initial event containing the digest lengths
c46f3405692de1 Matthew Garrett  2019-05-20  143   * @do_mapping:   Whether or not the event needs to be mapped
44038bc514a244 Matthew Garrett  2019-05-20  144   *
44038bc514a244 Matthew Garrett  2019-05-20  145   * The TPM2 event log format can contain multiple digests corresponding to
44038bc514a244 Matthew Garrett  2019-05-20  146   * separate PCR banks, and also contains a variable length of the data that
44038bc514a244 Matthew Garrett  2019-05-20  147   * was measured. This requires knowledge of how long each digest type is,
44038bc514a244 Matthew Garrett  2019-05-20  148   * and this information is contained within the first event in the log.
44038bc514a244 Matthew Garrett  2019-05-20  149   *
44038bc514a244 Matthew Garrett  2019-05-20  150   * We calculate the length by examining the number of events, and then looking
44038bc514a244 Matthew Garrett  2019-05-20  151   * at each event in turn to determine how much space is used for events in
44038bc514a244 Matthew Garrett  2019-05-20  152   * total. Once we've done this we know the offset of the data length field,
44038bc514a244 Matthew Garrett  2019-05-20  153   * and can calculate the total size of the event.
44038bc514a244 Matthew Garrett  2019-05-20  154   *
e658c82be55614 Jerry Snitselaar 2019-10-02  155   * Return: size of the event on success, 0 on failure
44038bc514a244 Matthew Garrett  2019-05-20  156   */
44038bc514a244 Matthew Garrett  2019-05-20  157  
44038bc514a244 Matthew Garrett  2019-05-20  158  static inline int __calc_tpm2_event_size(struct tcg_pcr_event2_head *event,
c46f3405692de1 Matthew Garrett  2019-05-20  159  					 struct tcg_pcr_event *event_header,
c46f3405692de1 Matthew Garrett  2019-05-20  160  					 bool do_mapping)
44038bc514a244 Matthew Garrett  2019-05-20  161  {
44038bc514a244 Matthew Garrett  2019-05-20  162  	struct tcg_efi_specid_event_head *efispecid;
44038bc514a244 Matthew Garrett  2019-05-20  163  	struct tcg_event_field *event_field;
c46f3405692de1 Matthew Garrett  2019-05-20  164  	void *mapping = NULL;
c46f3405692de1 Matthew Garrett  2019-05-20  165  	int mapping_size;
44038bc514a244 Matthew Garrett  2019-05-20  166  	void *marker;
44038bc514a244 Matthew Garrett  2019-05-20  167  	void *marker_start;
44038bc514a244 Matthew Garrett  2019-05-20  168  	u32 halg_size;
44038bc514a244 Matthew Garrett  2019-05-20  169  	size_t size;
44038bc514a244 Matthew Garrett  2019-05-20  170  	u16 halg;
44038bc514a244 Matthew Garrett  2019-05-20  171  	int i;
44038bc514a244 Matthew Garrett  2019-05-20  172  	int j;
047d50aee341d9 Peter Jones      2019-10-02  173  	u32 count, event_type;
44038bc514a244 Matthew Garrett  2019-05-20  174  
44038bc514a244 Matthew Garrett  2019-05-20  175  	marker = event;
44038bc514a244 Matthew Garrett  2019-05-20  176  	marker_start = marker;
44038bc514a244 Matthew Garrett  2019-05-20  177  	marker = marker + sizeof(event->pcr_idx) + sizeof(event->event_type)
44038bc514a244 Matthew Garrett  2019-05-20  178  		+ sizeof(event->count);
44038bc514a244 Matthew Garrett  2019-05-20  179  
c46f3405692de1 Matthew Garrett  2019-05-20  180  	/* Map the event header */
c46f3405692de1 Matthew Garrett  2019-05-20  181  	if (do_mapping) {
c46f3405692de1 Matthew Garrett  2019-05-20  182  		mapping_size = marker - marker_start;
c46f3405692de1 Matthew Garrett  2019-05-20  183  		mapping = TPM_MEMREMAP((unsigned long)marker_start,
c46f3405692de1 Matthew Garrett  2019-05-20  184  				       mapping_size);
c46f3405692de1 Matthew Garrett  2019-05-20  185  		if (!mapping) {
c46f3405692de1 Matthew Garrett  2019-05-20  186  			size = 0;
c46f3405692de1 Matthew Garrett  2019-05-20  187  			goto out;
c46f3405692de1 Matthew Garrett  2019-05-20  188  		}
c46f3405692de1 Matthew Garrett  2019-05-20  189  	} else {
c46f3405692de1 Matthew Garrett  2019-05-20  190  		mapping = marker_start;
c46f3405692de1 Matthew Garrett  2019-05-20  191  	}
c46f3405692de1 Matthew Garrett  2019-05-20  192  
c46f3405692de1 Matthew Garrett  2019-05-20  193  	event = (struct tcg_pcr_event2_head *)mapping;
047d50aee341d9 Peter Jones      2019-10-02  194  	/*
047d50aee341d9 Peter Jones      2019-10-02  195  	 * The loop below will unmap these fields if the log is larger than
047d50aee341d9 Peter Jones      2019-10-02  196  	 * one page, so save them here for reference:
047d50aee341d9 Peter Jones      2019-10-02  197  	 */
047d50aee341d9 Peter Jones      2019-10-02 @198  	count = READ_ONCE(event->count);
047d50aee341d9 Peter Jones      2019-10-02 @199  	event_type = READ_ONCE(event->event_type);
c46f3405692de1 Matthew Garrett  2019-05-20  200  
44038bc514a244 Matthew Garrett  2019-05-20  201  	efispecid = (struct tcg_efi_specid_event_head *)event_header->event;
44038bc514a244 Matthew Garrett  2019-05-20  202  
44038bc514a244 Matthew Garrett  2019-05-20  203  	/* Check if event is malformed. */
047d50aee341d9 Peter Jones      2019-10-02  204  	if (count > efispecid->num_algs) {
c46f3405692de1 Matthew Garrett  2019-05-20  205  		size = 0;
c46f3405692de1 Matthew Garrett  2019-05-20  206  		goto out;
c46f3405692de1 Matthew Garrett  2019-05-20  207  	}
44038bc514a244 Matthew Garrett  2019-05-20  208  
047d50aee341d9 Peter Jones      2019-10-02  209  	for (i = 0; i < count; i++) {
44038bc514a244 Matthew Garrett  2019-05-20  210  		halg_size = sizeof(event->digests[i].alg_id);
c46f3405692de1 Matthew Garrett  2019-05-20  211  
c46f3405692de1 Matthew Garrett  2019-05-20  212  		/* Map the digest's algorithm identifier */
c46f3405692de1 Matthew Garrett  2019-05-20  213  		if (do_mapping) {
c46f3405692de1 Matthew Garrett  2019-05-20  214  			TPM_MEMUNMAP(mapping, mapping_size);
c46f3405692de1 Matthew Garrett  2019-05-20  215  			mapping_size = halg_size;
c46f3405692de1 Matthew Garrett  2019-05-20  216  			mapping = TPM_MEMREMAP((unsigned long)marker,
c46f3405692de1 Matthew Garrett  2019-05-20  217  					     mapping_size);
c46f3405692de1 Matthew Garrett  2019-05-20  218  			if (!mapping) {
c46f3405692de1 Matthew Garrett  2019-05-20  219  				size = 0;
c46f3405692de1 Matthew Garrett  2019-05-20  220  				goto out;
c46f3405692de1 Matthew Garrett  2019-05-20  221  			}
c46f3405692de1 Matthew Garrett  2019-05-20  222  		} else {
c46f3405692de1 Matthew Garrett  2019-05-20  223  			mapping = marker;
c46f3405692de1 Matthew Garrett  2019-05-20  224  		}
c46f3405692de1 Matthew Garrett  2019-05-20  225  
c46f3405692de1 Matthew Garrett  2019-05-20  226  		memcpy(&halg, mapping, halg_size);
44038bc514a244 Matthew Garrett  2019-05-20  227  		marker = marker + halg_size;
c46f3405692de1 Matthew Garrett  2019-05-20  228  
44038bc514a244 Matthew Garrett  2019-05-20  229  		for (j = 0; j < efispecid->num_algs; j++) {
44038bc514a244 Matthew Garrett  2019-05-20  230  			if (halg == efispecid->digest_sizes[j].alg_id) {
44038bc514a244 Matthew Garrett  2019-05-20  231  				marker +=
44038bc514a244 Matthew Garrett  2019-05-20  232  					efispecid->digest_sizes[j].digest_size;
44038bc514a244 Matthew Garrett  2019-05-20  233  				break;
44038bc514a244 Matthew Garrett  2019-05-20  234  			}
44038bc514a244 Matthew Garrett  2019-05-20  235  		}
44038bc514a244 Matthew Garrett  2019-05-20  236  		/* Algorithm without known length. Such event is unparseable. */
c46f3405692de1 Matthew Garrett  2019-05-20  237  		if (j == efispecid->num_algs) {
c46f3405692de1 Matthew Garrett  2019-05-20  238  			size = 0;
c46f3405692de1 Matthew Garrett  2019-05-20  239  			goto out;
c46f3405692de1 Matthew Garrett  2019-05-20  240  		}
44038bc514a244 Matthew Garrett  2019-05-20  241  	}
44038bc514a244 Matthew Garrett  2019-05-20  242  
c46f3405692de1 Matthew Garrett  2019-05-20  243  	/*
c46f3405692de1 Matthew Garrett  2019-05-20  244  	 * Map the event size - we don't read from the event itself, so
c46f3405692de1 Matthew Garrett  2019-05-20  245  	 * we don't need to map it
c46f3405692de1 Matthew Garrett  2019-05-20  246  	 */
c46f3405692de1 Matthew Garrett  2019-05-20  247  	if (do_mapping) {
c46f3405692de1 Matthew Garrett  2019-05-20  248  		TPM_MEMUNMAP(mapping, mapping_size);
c46f3405692de1 Matthew Garrett  2019-05-20  249  		mapping_size += sizeof(event_field->event_size);
c46f3405692de1 Matthew Garrett  2019-05-20  250  		mapping = TPM_MEMREMAP((unsigned long)marker,
c46f3405692de1 Matthew Garrett  2019-05-20  251  				       mapping_size);
c46f3405692de1 Matthew Garrett  2019-05-20  252  		if (!mapping) {
c46f3405692de1 Matthew Garrett  2019-05-20  253  			size = 0;
c46f3405692de1 Matthew Garrett  2019-05-20  254  			goto out;
c46f3405692de1 Matthew Garrett  2019-05-20  255  		}
c46f3405692de1 Matthew Garrett  2019-05-20  256  	} else {
c46f3405692de1 Matthew Garrett  2019-05-20  257  		mapping = marker;
c46f3405692de1 Matthew Garrett  2019-05-20  258  	}
c46f3405692de1 Matthew Garrett  2019-05-20  259  
c46f3405692de1 Matthew Garrett  2019-05-20  260  	event_field = (struct tcg_event_field *)mapping;
c46f3405692de1 Matthew Garrett  2019-05-20  261  
44038bc514a244 Matthew Garrett  2019-05-20  262  	marker = marker + sizeof(event_field->event_size)
44038bc514a244 Matthew Garrett  2019-05-20  263  		+ event_field->event_size;
44038bc514a244 Matthew Garrett  2019-05-20  264  	size = marker - marker_start;
44038bc514a244 Matthew Garrett  2019-05-20  265  
047d50aee341d9 Peter Jones      2019-10-02  266  	if (event_type == 0 && event_field->event_size == 0)
c46f3405692de1 Matthew Garrett  2019-05-20  267  		size = 0;
047d50aee341d9 Peter Jones      2019-10-02  268  
c46f3405692de1 Matthew Garrett  2019-05-20  269  out:
c46f3405692de1 Matthew Garrett  2019-05-20  270  	if (do_mapping)
c46f3405692de1 Matthew Garrett  2019-05-20  271  		TPM_MEMUNMAP(mapping, mapping_size);
44038bc514a244 Matthew Garrett  2019-05-20  272  	return size;
44038bc514a244 Matthew Garrett  2019-05-20  273  }
c46f3405692de1 Matthew Garrett  2019-05-20  274  

:::::: The code at line 198 was first introduced by commit
:::::: 047d50aee341d940350897c85799e56ae57c3849 efi/tpm: Don't access event->count when it isn't mapped

:::::: TO: Peter Jones <pjones@redhat.com>
:::::: CC: Ingo Molnar <mingo@kernel.org>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202103011558.l8KlVFwg-lkp%40intel.com.

--82I3+IH0IqGh5yIs
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--82I3+IH0IqGh5yIs--
