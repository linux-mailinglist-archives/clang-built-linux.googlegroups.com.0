Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBG6W6WAAMGQE6MKZLCA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3d.google.com (mail-vk1-xa3d.google.com [IPv6:2607:f8b0:4864:20::a3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 07E10310D7F
	for <lists+clang-built-linux@lfdr.de>; Fri,  5 Feb 2021 16:58:21 +0100 (CET)
Received: by mail-vk1-xa3d.google.com with SMTP id r184sf1657944vkb.12
        for <lists+clang-built-linux@lfdr.de>; Fri, 05 Feb 2021 07:58:20 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612540700; cv=pass;
        d=google.com; s=arc-20160816;
        b=aKdWHVCS05qgSpkwL2OnhWX9kW2cM5R6WYAfL590I4rRqCr4lo+R5fGbrtVUZCNeAa
         eDJvkvgfB3p+HTIaqeevFVv0Mqe6FwzyD0cnLQPMG4NvbCM2mxfuIzUh7hrGBt3cM1s7
         2S8Zwup+fxu0R6XHg2mrkEs2XIE4SVSci/bVI6xhEV5YumWnCckxFC4M3OZ1AOeZtgzS
         r6BeBEg4V6ptdxPxmjasJdTE0pNx+x46OaKuiApDl/Bz9Kj39EtjzAQlIpV90XrCE0Yy
         lOjJejeDOlpyEcxVcY6jFH82eHB0pTgprxHEPiPvSRnqDcRJrG8/a50Lb/LA1P6guevP
         FARQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=uGb7o7pvhyWALo2ZAc00jpkphCHC0OVbbpWjm6cdOBw=;
        b=qohg63hUmu2GWdG0/RrNQP4H5vR/bTe/EEpKJnFZmnTJr8XEje3KWOkOVjoT7fQlJO
         +SHVWoMStkjrAYJHleb28T4ZGYvb9zs0x4KdGte2OF4Mel/CFiIF/3d6F5MK8zkGGSf0
         RwlL+OdyJ3iqF7tBCxFsakw7RnENm8rsXkbP2CKr1ivW17d+0yVJOgKJqKqJp48hqk2W
         QbDpXZysA0l7QXCOyTMeqchPb+8hTG7YHCOFZ4ChO97GEhXRP12Ok0RxXwAgUBX9+fix
         TdRaW5zkkBcRwt1XXJT7imU4DlvlJvRhYazzZsrmKktO/w1iVFX/wH7Fe0DvEJTaKEZ5
         W58g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.100 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=uGb7o7pvhyWALo2ZAc00jpkphCHC0OVbbpWjm6cdOBw=;
        b=h9ZSHqvBsYBLns9RV9T45pRIbpTOxrGstzm6EW9x9BuUx4wmoIXCe9OfZMb9uPXsMv
         nDsRtfLvsNsLAQygs76aUa9C871sTEmazig6hX9Z0FuFWhwRlMLPhXJQQsLdrhD+6Ahf
         UacHcpZx7WkFbpCsbtEYV+ZEz31d17Lubb5xibxeRInU6D+5xUlm+2iwrWM8ZypBC7yN
         GuB7BpNmX/PufkiXJHBk71KNIdwsjjCyOaZ/gV1fJR9a/4oDbrYKOm1NoSPAAkI+Bet3
         YDiUIN+JzOnRZd6OsGNvudXMpoXJiA58tr/MXuEumOObxYIn8E+kzhvoQ3p3l8g1fA9+
         4vCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:references:mime-version:content-disposition
         :in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=uGb7o7pvhyWALo2ZAc00jpkphCHC0OVbbpWjm6cdOBw=;
        b=KTkuthIP+1C+8uJ+yq+5GJmdwb06sq+Bg6PDG95OomV+VBCj050L+dDYBp4B10dQaj
         H/Fc4jRbQSmWQuK7xXfS8GwQIpUFEJJKhy9c7diW2rvHkIbCK8EMS6kqHg639YuqASKo
         O3ICTkdwSQunm8nVTkY/rQAD5PYepJHRbN+DB8ZxtRXW7TwFHpQ9eNVuyCuvulkM/ynv
         5e8be56pTE1Za2fSYpiVBzeIjAkyA9HqNjAEkyDQUolCXLq3CaChINhqwbSe/iozTejO
         cUmFmjQYB9znyckgdNd+QFu2FW/8lkykSZBnNdhYL+rTeSwrBJwz87hVng6KUjRI21KQ
         ANFw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533OFi/cvQ2nCpCmymH7p92qlHsI3IsQXU+ErvXg2T+FBKgqXMww
	TBzoPv1x5D9E/+GehDMExjU=
X-Google-Smtp-Source: ABdhPJwehkiP98eCT+gkBrmOE0HJTJpzo2quujLGy11VEXAR8U+ikOGNLIITQvmD5NghVoYBxuTC1Q==
X-Received: by 2002:a1f:b4cb:: with SMTP id d194mr3980645vkf.9.1612540699955;
        Fri, 05 Feb 2021 07:58:19 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:2f92:: with SMTP id v140ls227vsv.9.gmail; Fri, 05 Feb
 2021 07:58:19 -0800 (PST)
X-Received: by 2002:a05:6102:125c:: with SMTP id p28mr2612301vsg.40.1612540699361;
        Fri, 05 Feb 2021 07:58:19 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612540699; cv=none;
        d=google.com; s=arc-20160816;
        b=ka4wGwHNkVvjiu+4qnIJ4q4izeldi6cj+cBVzqjQ4PN0fg058dUmLmzEdK/uE59bVL
         vir1/qF9KPhQakTPSvyCFIQyFoL8NyDq1lV4JXEnaXCC+ftjJuKeeDlDfUveWOhI1Bv6
         SLrgEbPDi9WIm691Jp2JCyE3+3KEovZ5VpoZJH76mzw6s8raghN79t9twYN8Mv2t3qYo
         mbSq/0Xd3uBrnVEoB+HxfAK/uQqLn0+IvrruR9xG2XGOfahrgS2BFCrXAqZPnSTiJOFy
         z2lK17gQJvE96wJCPYrJh5yaJci7TWrmdbOlN6tKzClSemBQjaK2bgYRpHhqVFo9JIvb
         3SHA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:ironport-sdr:ironport-sdr;
        bh=WM9MMe2ceVEKpeXfqt0IwQFHsTPvaankOLsiI7XZ7Y4=;
        b=h3KubO17KVdc7IBnlCZfsHtqUyYQTnO+HcPFWsoyXVigEYpm+odDxbv7d3tH9i5ga5
         gO719Zb36kb2jwlTfzVqyfeumwRUKVF2rbHlWNLB6rKkMSU0eAyQDrKvOtIUgFwhMkHc
         ZgeDDayWpW9ccMjdk3uVFdn+qP1eIKtJwrj+5QLb5kalsgRyuW+p3UF75M3QPW9KA6g0
         9JAaM4vq9iTB7kCSq4+8JOJOqaDi3rCMRhQ1g8j/6gSFycuRlosuEBzePtKNdy+6fi9w
         /Gm/+puY6sSDgd7aGiMUWpM6K3TDWUzju0ChBN/OSUVzLQ4U9aBMN1RDM8WhgPwSNBYy
         rd1w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.100 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga07.intel.com (mga07.intel.com. [134.134.136.100])
        by gmr-mx.google.com with ESMTPS id j25si598336vsq.2.2021.02.05.07.58.18
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 05 Feb 2021 07:58:18 -0800 (PST)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.100 as permitted sender) client-ip=134.134.136.100;
IronPort-SDR: QfWhKDO6/JpStEPzH83oXSJC9OP556FDDO874UZQXupeWUdMov6vYSQoD3CHPau/eSCvD3C5po
 iLyEIsN0mzLg==
X-IronPort-AV: E=McAfee;i="6000,8403,9885"; a="245520973"
X-IronPort-AV: E=Sophos;i="5.81,155,1610438400"; 
   d="gz'50?scan'50,208,50";a="245520973"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
  by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 05 Feb 2021 07:58:14 -0800
IronPort-SDR: C35+c54z+O2TR/MJjZH84xosILBozZ4r+RYbqbzTsHqa1lCyreooV6Ngx4i+MBFYUmIyV7Mjoj
 +0nZNImC4fkg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,155,1610438400"; 
   d="gz'50?scan'50,208,50";a="358291118"
Received: from lkp-server02.sh.intel.com (HELO 8b832f01bb9c) ([10.239.97.151])
  by fmsmga007.fm.intel.com with ESMTP; 05 Feb 2021 07:58:11 -0800
Received: from kbuild by 8b832f01bb9c with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1l83Uo-0001la-Mr; Fri, 05 Feb 2021 15:58:10 +0000
Date: Fri, 5 Feb 2021 23:57:16 +0800
From: kernel test robot <lkp@intel.com>
To: Steven Rostedt <rostedt@goodmis.org>,
	LKML <linux-kernel@vger.kernel.org>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	Ingo Molnar <mingo@kernel.org>,
	Andrew Morton <akpm@linux-foundation.org>,
	Linux Memory Management List <linux-mm@kvack.org>,
	Peter Zijlstra <peterz@infradead.org>,
	Mathieu Desnoyers <mathieu.desnoyers@efficios.com>
Subject: Re: [PATCH] tracepoints: Do not punish non static call users
Message-ID: <202102052349.KrJTHblT-lkp@intel.com>
References: <20210204141742.46739ed2@gandalf.local.home>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="EeQfGwPcQSOJBaQU"
Content-Disposition: inline
In-Reply-To: <20210204141742.46739ed2@gandalf.local.home>
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


--EeQfGwPcQSOJBaQU
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi Steven,

I love your patch! Perhaps something to improve:

[auto build test WARNING on tip/perf/core]
[also build test WARNING on linux/master linus/master v5.11-rc6 next-20210125]
[cannot apply to hnaz-linux-mm/master]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch]

url:    https://github.com/0day-ci/linux/commits/Steven-Rostedt/tracepoints-Do-not-punish-non-static-call-users/20210205-032217
base:   https://git.kernel.org/pub/scm/linux/kernel/git/tip/tip.git 32451614da2a9cf4296f90d3606ac77814fb519d
config: powerpc-randconfig-r023-20210205 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project c9439ca36342fb6013187d0a69aef92736951476)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install powerpc cross compiling tool for clang build
        # apt-get install binutils-powerpc-linux-gnu
        # https://github.com/0day-ci/linux/commit/6458987cbf8a57376cd608aa4a066a2e86850cc5
        git remote add linux-review https://github.com/0day-ci/linux
        git fetch --no-tags linux-review Steven-Rostedt/tracepoints-Do-not-punish-non-static-call-users/20210205-032217
        git checkout 6458987cbf8a57376cd608aa4a066a2e86850cc5
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=powerpc 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

   arch/powerpc/include/asm/io.h:616:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:121:1: note: expanded from here
   __do_outl
   ^
   arch/powerpc/include/asm/io.h:537:62: note: expanded from macro '__do_outl'
   #define __do_outl(val, port)    writel(val,(PCI_IO_ADDR)_IO_BASE+port);
                                              ~~~~~~~~~~~~~~~~~~~~~^
   In file included from drivers/mtd/devices/docg3.c:15:
   In file included from include/linux/io.h:13:
   In file included from arch/powerpc/include/asm/io.h:619:
   arch/powerpc/include/asm/io-defs.h:43:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(insb, (unsigned long p, void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:616:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:135:1: note: expanded from here
   __do_insb
   ^
   arch/powerpc/include/asm/io.h:556:56: note: expanded from macro '__do_insb'
   #define __do_insb(p, b, n)      readsb((PCI_IO_ADDR)_IO_BASE+(p), (b), (n))
                                          ~~~~~~~~~~~~~~~~~~~~~^
   In file included from drivers/mtd/devices/docg3.c:15:
   In file included from include/linux/io.h:13:
   In file included from arch/powerpc/include/asm/io.h:619:
   arch/powerpc/include/asm/io-defs.h:45:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(insw, (unsigned long p, void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:616:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:137:1: note: expanded from here
   __do_insw
   ^
   arch/powerpc/include/asm/io.h:557:56: note: expanded from macro '__do_insw'
   #define __do_insw(p, b, n)      readsw((PCI_IO_ADDR)_IO_BASE+(p), (b), (n))
                                          ~~~~~~~~~~~~~~~~~~~~~^
   In file included from drivers/mtd/devices/docg3.c:15:
   In file included from include/linux/io.h:13:
   In file included from arch/powerpc/include/asm/io.h:619:
   arch/powerpc/include/asm/io-defs.h:47:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(insl, (unsigned long p, void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:616:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:139:1: note: expanded from here
   __do_insl
   ^
   arch/powerpc/include/asm/io.h:558:56: note: expanded from macro '__do_insl'
   #define __do_insl(p, b, n)      readsl((PCI_IO_ADDR)_IO_BASE+(p), (b), (n))
                                          ~~~~~~~~~~~~~~~~~~~~~^
   In file included from drivers/mtd/devices/docg3.c:15:
   In file included from include/linux/io.h:13:
   In file included from arch/powerpc/include/asm/io.h:619:
   arch/powerpc/include/asm/io-defs.h:49:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(outsb, (unsigned long p, const void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:616:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:141:1: note: expanded from here
   __do_outsb
   ^
   arch/powerpc/include/asm/io.h:559:58: note: expanded from macro '__do_outsb'
   #define __do_outsb(p, b, n)     writesb((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
                                           ~~~~~~~~~~~~~~~~~~~~~^
   In file included from drivers/mtd/devices/docg3.c:15:
   In file included from include/linux/io.h:13:
   In file included from arch/powerpc/include/asm/io.h:619:
   arch/powerpc/include/asm/io-defs.h:51:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(outsw, (unsigned long p, const void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:616:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:143:1: note: expanded from here
   __do_outsw
   ^
   arch/powerpc/include/asm/io.h:560:58: note: expanded from macro '__do_outsw'
   #define __do_outsw(p, b, n)     writesw((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
                                           ~~~~~~~~~~~~~~~~~~~~~^
   In file included from drivers/mtd/devices/docg3.c:15:
   In file included from include/linux/io.h:13:
   In file included from arch/powerpc/include/asm/io.h:619:
   arch/powerpc/include/asm/io-defs.h:53:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(outsl, (unsigned long p, const void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:616:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:145:1: note: expanded from here
   __do_outsl
   ^
   arch/powerpc/include/asm/io.h:561:58: note: expanded from macro '__do_outsl'
   #define __do_outsl(p, b, n)     writesl((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
                                           ~~~~~~~~~~~~~~~~~~~~~^
   In file included from drivers/mtd/devices/docg3.c:27:
>> drivers/mtd/devices/docg3.h:319:1: warning: variable '__data' is uninitialized when used here [-Wuninitialized]
   TRACE_EVENT(docg3_io,
   ^~~~~~~~~~~~~~~~~~~~~
   include/linux/tracepoint.h:550:2: note: expanded from macro 'TRACE_EVENT'
           DECLARE_TRACE(name, PARAMS(proto), PARAMS(args))
           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/tracepoint.h:417:11: note: expanded from macro 'DECLARE_TRACE'
                           PARAMS(__data, args))
                                  ^~~~~~
   include/linux/tracepoint.h:97:25: note: expanded from macro 'PARAMS'
   #define PARAMS(args...) args
                           ^~~~
   note: (skipping 2 expansions in backtrace; use -fmacro-backtrace-limit=0 to see all)
   include/linux/tracepoint.h:201:33: note: expanded from macro '__DO_TRACE'
                   __DO_TRACE_CALL(name, TP_ARGS(args));                   \
                                                 ^~~~
   include/linux/tracepoint.h:138:26: note: expanded from macro 'TP_ARGS'
   #define TP_ARGS(args...)        args
                                   ^~~~
   include/linux/tracepoint.h:166:56: note: expanded from macro '__DO_TRACE_CALL'
   #define __DO_TRACE_CALL(name, args)     __traceiter_##name(args)
                                                              ^~~~
   drivers/mtd/devices/docg3.h:319:1: note: variable '__data' is declared here
   include/linux/tracepoint.h:550:2: note: expanded from macro 'TRACE_EVENT'
           DECLARE_TRACE(name, PARAMS(proto), PARAMS(args))
           ^
   include/linux/tracepoint.h:414:2: note: expanded from macro 'DECLARE_TRACE'
           __DECLARE_TRACE(name, PARAMS(proto), PARAMS(args),              \
           ^
   include/linux/tracepoint.h:244:4: note: expanded from macro '__DECLARE_TRACE'
                           __DO_TRACE(name,                                \
                           ^
   include/linux/tracepoint.h:181:3: note: expanded from macro '__DO_TRACE'
                   void *__data;                                           \
                   ^
   In file included from drivers/mtd/devices/docg3.c:27:
   In file included from drivers/mtd/devices/docg3.h:343:
   include/trace/define_trace.h:95:10: fatal error: './docg3.h' file not found
   #include TRACE_INCLUDE(TRACE_INCLUDE_FILE)
            ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/trace/define_trace.h:90:32: note: expanded from macro 'TRACE_INCLUDE'
   # define TRACE_INCLUDE(system) __TRACE_INCLUDE(system)
                                  ^~~~~~~~~~~~~~~~~~~~~~~
   include/trace/define_trace.h:87:34: note: expanded from macro '__TRACE_INCLUDE'
   # define __TRACE_INCLUDE(system) __stringify(TRACE_INCLUDE_PATH/system.h)
                                    ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/stringify.h:10:27: note: expanded from macro '__stringify'
   #define __stringify(x...)       __stringify_1(x)
                                   ^~~~~~~~~~~~~~~~
   include/linux/stringify.h:9:29: note: expanded from macro '__stringify_1'
   #define __stringify_1(x...)     #x
                                   ^~
   <scratch space>:18:1: note: expanded from here
   "./docg3.h"
   ^~~~~~~~~~~
   13 warnings and 1 error generated.
--
   ^
   arch/powerpc/include/asm/io.h:556:56: note: expanded from macro '__do_insb'
   #define __do_insb(p, b, n)      readsb((PCI_IO_ADDR)_IO_BASE+(p), (b), (n))
                                          ~~~~~~~~~~~~~~~~~~~~~^
   In file included from samples/ftrace/sample-trace-array.c:5:
   In file included from include/linux/trace_events.h:9:
   In file included from include/linux/hardirq.h:10:
   In file included from arch/powerpc/include/asm/hardirq.h:6:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/powerpc/include/asm/io.h:619:
   arch/powerpc/include/asm/io-defs.h:45:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(insw, (unsigned long p, void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:616:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:209:1: note: expanded from here
   __do_insw
   ^
   arch/powerpc/include/asm/io.h:557:56: note: expanded from macro '__do_insw'
   #define __do_insw(p, b, n)      readsw((PCI_IO_ADDR)_IO_BASE+(p), (b), (n))
                                          ~~~~~~~~~~~~~~~~~~~~~^
   In file included from samples/ftrace/sample-trace-array.c:5:
   In file included from include/linux/trace_events.h:9:
   In file included from include/linux/hardirq.h:10:
   In file included from arch/powerpc/include/asm/hardirq.h:6:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/powerpc/include/asm/io.h:619:
   arch/powerpc/include/asm/io-defs.h:47:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(insl, (unsigned long p, void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:616:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:211:1: note: expanded from here
   __do_insl
   ^
   arch/powerpc/include/asm/io.h:558:56: note: expanded from macro '__do_insl'
   #define __do_insl(p, b, n)      readsl((PCI_IO_ADDR)_IO_BASE+(p), (b), (n))
                                          ~~~~~~~~~~~~~~~~~~~~~^
   In file included from samples/ftrace/sample-trace-array.c:5:
   In file included from include/linux/trace_events.h:9:
   In file included from include/linux/hardirq.h:10:
   In file included from arch/powerpc/include/asm/hardirq.h:6:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/powerpc/include/asm/io.h:619:
   arch/powerpc/include/asm/io-defs.h:49:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(outsb, (unsigned long p, const void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:616:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:213:1: note: expanded from here
   __do_outsb
   ^
   arch/powerpc/include/asm/io.h:559:58: note: expanded from macro '__do_outsb'
   #define __do_outsb(p, b, n)     writesb((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
                                           ~~~~~~~~~~~~~~~~~~~~~^
   In file included from samples/ftrace/sample-trace-array.c:5:
   In file included from include/linux/trace_events.h:9:
   In file included from include/linux/hardirq.h:10:
   In file included from arch/powerpc/include/asm/hardirq.h:6:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/powerpc/include/asm/io.h:619:
   arch/powerpc/include/asm/io-defs.h:51:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(outsw, (unsigned long p, const void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:616:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:215:1: note: expanded from here
   __do_outsw
   ^
   arch/powerpc/include/asm/io.h:560:58: note: expanded from macro '__do_outsw'
   #define __do_outsw(p, b, n)     writesw((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
                                           ~~~~~~~~~~~~~~~~~~~~~^
   In file included from samples/ftrace/sample-trace-array.c:5:
   In file included from include/linux/trace_events.h:9:
   In file included from include/linux/hardirq.h:10:
   In file included from arch/powerpc/include/asm/hardirq.h:6:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/powerpc/include/asm/io.h:619:
   arch/powerpc/include/asm/io-defs.h:53:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(outsl, (unsigned long p, const void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:616:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:217:1: note: expanded from here
   __do_outsl
   ^
   arch/powerpc/include/asm/io.h:561:58: note: expanded from macro '__do_outsl'
   #define __do_outsl(p, b, n)     writesl((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
                                           ~~~~~~~~~~~~~~~~~~~~~^
   In file included from samples/ftrace/sample-trace-array.c:18:
>> samples/ftrace/sample-trace-array.h:60:1: warning: variable '__data' is uninitialized when used here [-Wuninitialized]
   TRACE_EVENT(sample_event,
   ^~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/tracepoint.h:550:2: note: expanded from macro 'TRACE_EVENT'
           DECLARE_TRACE(name, PARAMS(proto), PARAMS(args))
           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/tracepoint.h:417:11: note: expanded from macro 'DECLARE_TRACE'
                           PARAMS(__data, args))
                                  ^~~~~~
   include/linux/tracepoint.h:97:25: note: expanded from macro 'PARAMS'
   #define PARAMS(args...) args
                           ^~~~
   note: (skipping 2 expansions in backtrace; use -fmacro-backtrace-limit=0 to see all)
   include/linux/tracepoint.h:201:33: note: expanded from macro '__DO_TRACE'
                   __DO_TRACE_CALL(name, TP_ARGS(args));                   \
                                                 ^~~~
   include/linux/tracepoint.h:138:26: note: expanded from macro 'TP_ARGS'
   #define TP_ARGS(args...)        args
                                   ^~~~
   include/linux/tracepoint.h:166:56: note: expanded from macro '__DO_TRACE_CALL'
   #define __DO_TRACE_CALL(name, args)     __traceiter_##name(args)
                                                              ^~~~
   samples/ftrace/sample-trace-array.h:60:1: note: variable '__data' is declared here
   include/linux/tracepoint.h:550:2: note: expanded from macro 'TRACE_EVENT'
           DECLARE_TRACE(name, PARAMS(proto), PARAMS(args))
           ^
   include/linux/tracepoint.h:414:2: note: expanded from macro 'DECLARE_TRACE'
           __DECLARE_TRACE(name, PARAMS(proto), PARAMS(args),              \
           ^
   include/linux/tracepoint.h:244:4: note: expanded from macro '__DECLARE_TRACE'
                           __DO_TRACE(name,                                \
                           ^
   include/linux/tracepoint.h:181:3: note: expanded from macro '__DO_TRACE'
                   void *__data;                                           \
                   ^
   In file included from samples/ftrace/sample-trace-array.c:18:
   In file included from samples/ftrace/sample-trace-array.h:84:
   include/trace/define_trace.h:95:10: fatal error: './sample-trace-array.h' file not found
   #include TRACE_INCLUDE(TRACE_INCLUDE_FILE)
            ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/trace/define_trace.h:90:32: note: expanded from macro 'TRACE_INCLUDE'
   # define TRACE_INCLUDE(system) __TRACE_INCLUDE(system)
                                  ^~~~~~~~~~~~~~~~~~~~~~~
   include/trace/define_trace.h:87:34: note: expanded from macro '__TRACE_INCLUDE'
   # define __TRACE_INCLUDE(system) __stringify(TRACE_INCLUDE_PATH/system.h)
                                    ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/stringify.h:10:27: note: expanded from macro '__stringify'
   #define __stringify(x...)       __stringify_1(x)
                                   ^~~~~~~~~~~~~~~~
   include/linux/stringify.h:9:29: note: expanded from macro '__stringify_1'
   #define __stringify_1(x...)     #x
                                   ^~
   <scratch space>:165:1: note: expanded from here
   "./sample-trace-array.h"
   ^~~~~~~~~~~~~~~~~~~~~~~~
   13 warnings and 1 error generated.
..


vim +/__data +319 drivers/mtd/devices/docg3.h

efa2ca73a7bc1a Robert Jarzmik 2011-10-05  318  
efa2ca73a7bc1a Robert Jarzmik 2011-10-05 @319  TRACE_EVENT(docg3_io,
efa2ca73a7bc1a Robert Jarzmik 2011-10-05  320  	    TP_PROTO(int op, int width, u16 reg, int val),
efa2ca73a7bc1a Robert Jarzmik 2011-10-05  321  	    TP_ARGS(op, width, reg, val),
efa2ca73a7bc1a Robert Jarzmik 2011-10-05  322  	    TP_STRUCT__entry(
efa2ca73a7bc1a Robert Jarzmik 2011-10-05  323  		    __field(int, op)
efa2ca73a7bc1a Robert Jarzmik 2011-10-05  324  		    __field(unsigned char, width)
efa2ca73a7bc1a Robert Jarzmik 2011-10-05  325  		    __field(u16, reg)
efa2ca73a7bc1a Robert Jarzmik 2011-10-05  326  		    __field(int, val)),
efa2ca73a7bc1a Robert Jarzmik 2011-10-05  327  	    TP_fast_assign(
efa2ca73a7bc1a Robert Jarzmik 2011-10-05  328  		    __entry->op = op;
efa2ca73a7bc1a Robert Jarzmik 2011-10-05  329  		    __entry->width = width;
efa2ca73a7bc1a Robert Jarzmik 2011-10-05  330  		    __entry->reg = reg;
efa2ca73a7bc1a Robert Jarzmik 2011-10-05  331  		    __entry->val = val;),
efa2ca73a7bc1a Robert Jarzmik 2011-10-05  332  	    TP_printk("docg3: %s%02d reg=%04x, val=%04x",
efa2ca73a7bc1a Robert Jarzmik 2011-10-05  333  		      __entry->op ? "write" : "read", __entry->width,
efa2ca73a7bc1a Robert Jarzmik 2011-10-05  334  		      __entry->reg, __entry->val)
efa2ca73a7bc1a Robert Jarzmik 2011-10-05  335  	);
efa2ca73a7bc1a Robert Jarzmik 2011-10-05  336  #endif
efa2ca73a7bc1a Robert Jarzmik 2011-10-05  337  

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202102052349.KrJTHblT-lkp%40intel.com.

--EeQfGwPcQSOJBaQU
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--EeQfGwPcQSOJBaQU--
