Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBZNZ5P3QKGQE64C6QUA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13e.google.com (mail-il1-x13e.google.com [IPv6:2607:f8b0:4864:20::13e])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C9BC20EE95
	for <lists+clang-built-linux@lfdr.de>; Tue, 30 Jun 2020 08:34:15 +0200 (CEST)
Received: by mail-il1-x13e.google.com with SMTP id b2sf8097814ilh.22
        for <lists+clang-built-linux@lfdr.de>; Mon, 29 Jun 2020 23:34:15 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593498854; cv=pass;
        d=google.com; s=arc-20160816;
        b=snuVMeIek3gejSouF+XqcoNjfUrkdzWOpiroizO073sGn9GzX5j7OO7YFc6COAzZmb
         uMq4sQUHBMXjMzr9bspQ9Q6hUY94PdwP5W7/9d93ZCn9tS6ZPQGbIrWdgY+BK4PTSQNh
         IdrBYE5w5s5H8eNkTRivvrQSELumH/KVDwAgoz01xdhiYTlB/oUrXlT8LQhIKIDDbC9g
         29MTc672clM5MeIk78OvaE1zCaeurAc6EL1oCsyim/txg34bQNAINg5Qya0dO+dgsHCg
         LlijT/VjBqPwUwBSws56+PaMyZBn5PD73jn1+Yy394bRG17cw9CNIRa4dO8HWB/EsoAD
         SH3Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent
         :content-transfer-encoding:content-disposition:mime-version
         :message-id:subject:cc:to:from:date:ironport-sdr:ironport-sdr:sender
         :dkim-signature;
        bh=BMVjVtM4L6f4iS30U0w2IZumu50yQ/2Cg1fvt1dM3XI=;
        b=SxPK1lfBaRW/eehVsQDxN4UOfSv40oeyPu6rNvWUhzr110N500SRGSxAhJwvraCF7o
         p3taeguSIVkIXDuGSai3CL5LazF8DQAjmehe3kIk/gutoki4ISMLUVvv9w/ElMhl7YyW
         pRyKAV/4v0jYPeRGr47HZNGh6gVFfSOXAQdrZhT8TkdHMFJhD8iRtKQ+CQgxeewIz67a
         aF+B8erV+ediftZwSlwzU3jF98VLOopRBjNalEnNZ7+iqoVCRq3II71loycnwgVGYhVF
         ikZ9pvLT12z87+SJSqGBxd7anA1jBwaQOHq7yPJT59WWWzjxn5zKU5sPSxQ2rDw56i56
         55rw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.120 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:content-transfer-encoding
         :user-agent:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=BMVjVtM4L6f4iS30U0w2IZumu50yQ/2Cg1fvt1dM3XI=;
        b=X83Wu3vKU1fyE+Nfgyg6md0rNIhAswCPOgnQMk20ERKTjzQrcmrH0L9Z/otm/LMvO/
         0XedobO6MfDULQoh92Us57IV92vDAquJZJxOZlJGawoT2FtkW8WTjw1//0DIVeQtV8cN
         i/Bw4ZxoCekf3wXr5aIYgiyGpWNA1neKVP2Ulos8VxSZVxDpGvK2AoF3nba5optx7Qa5
         +ByiEEQG3B97lJsLeuc/r9nJVMceOiAMcvYwBcsb656dKjMWWMnonVUATDne8RSSs431
         7tnpjIOSQTUdIhlOdgkK4XJlqPheud405nodl12r298p9T9aWlXlBXV0Wa1r5k/p44Zm
         Sfug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition
         :content-transfer-encoding:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=BMVjVtM4L6f4iS30U0w2IZumu50yQ/2Cg1fvt1dM3XI=;
        b=V0lADAQmYBPGYJe7FsA8nbe4YU6WyBPqQqcu1VXyaXBs0rb89IgcFX3wkaXGHD4AwN
         rTc4ivbTs88Gr5yPf9QQHC/cb5uX2g63jRdhOd9XEgrBlli5wJfr9q4FNO0AuSk5PFwM
         E35YbxAi3zG0VOjhUeQk9doIoJ7PQGhSGN6AMT/I8PMFPrRswBxwWt1y8pYzqoiQiC8x
         t9pN4wJxvY6PqNN29LVq3aiqgKZ/g1iGBT7WrflvvUfidzFjit+OLhMUs6uvXgwBo5na
         WInzmL92okWxlZv6c4T6CoM8SmFYUfH3pHxT/psj9mGX+prtAxukC7Gr9at5AgWf86dq
         p7ZA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5320YV6b6o3IEBwEqlWOFTEVyp7xXmXPPMNJr5NRW2jh+PLpA3KQ
	szpqPSj/NvJonY6OE92xMVw=
X-Google-Smtp-Source: ABdhPJzu8UxIdI0Tz0fS2C6vra/Em3OVOdKWHkuzVnySvD0tls0kR5ehL5pU/BYLP0NZvGLBBZ+tyw==
X-Received: by 2002:a92:5e95:: with SMTP id f21mr1151008ilg.32.1593498853725;
        Mon, 29 Jun 2020 23:34:13 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6602:2dc6:: with SMTP id l6ls399895iow.4.gmail; Mon, 29
 Jun 2020 23:34:13 -0700 (PDT)
X-Received: by 2002:a05:6602:2cd1:: with SMTP id j17mr20095343iow.69.1593498853278;
        Mon, 29 Jun 2020 23:34:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593498853; cv=none;
        d=google.com; s=arc-20160816;
        b=eTHfFY93VumkC85PrmOpefzQ+OHLql4O1wRQbiHILXRF9S9cxOa2QfRtdYF9SzRGUW
         5Z/5r/ijxzSsDioqjxsssht1ivepC0Rp1Sue+4JvB5tedayOzuHWAS60XiblSfVL997c
         UNJnrr36q3jyD+CIGTcOjbkwsoNj7ODhAzkbvVoN5iE69OTRRCJOJ4ik38Wy4aFpB3qP
         NjmE37+FnlcNjToMjtxcLGyD/TOMIsX7HYaNpMDNuiW7/opNjtJVdZVyAdVfhS/sMd6F
         IqvRCA1Qx3cFu/XmfoL/a6KQIFf58FbWgjDuQrcSPCBKli4KtSqQt1FSOj0uCxYOCfLb
         WIaQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-transfer-encoding:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr;
        bh=uRPoXCUfIVMIkI12AvvcSFuwr35U2tRINC5d3tb2pD4=;
        b=Xvu4ASRg2VtGb74uCVTv79Q3Y8YB3UcpmnjIEZLAMx9AXrYAGB2cZdlVvLPnzmyac4
         BQdYkcnhRi4Vk72oHVA3m9e/Z1GWZiCGP8UkyyJlT85s8fV4B359VzAamADQeATnKqUx
         aNbY+rCOCgBGaiLn7gCA6eI5rUMqg8QDChNMqOuBu7k4veWQJhm5LDw1npylwxHLJgf/
         ee4babk2aXRFhlwheZ3tGIa1QPgxIYe7Q8Q/Rk4B9yXUngB52gxep8zIJZpgF6AdkAza
         jbynaVR4T3pzpsxPfolOoJs+WFF5QdPxqUG5ux+/0IvKfmkHk9P4C532LtmXn+6e5TQd
         i89g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.120 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga04.intel.com (mga04.intel.com. [192.55.52.120])
        by gmr-mx.google.com with ESMTPS id b2si216942ile.1.2020.06.29.23.34.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 29 Jun 2020 23:34:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.120 as permitted sender) client-ip=192.55.52.120;
IronPort-SDR: gGbUrEpjNmQXNk6C/jbuqohwomUOCN+aWMC0ozmZ+LvGXH+KQVoIVia977aKTiTUpbLOYFKSbI
 EkARbrZCCPDg==
X-IronPort-AV: E=McAfee;i="6000,8403,9666"; a="143638183"
X-IronPort-AV: E=Sophos;i="5.75,296,1589266800"; 
   d="gz'50?scan'50,208,50";a="143638183"
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
  by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 29 Jun 2020 23:34:12 -0700
IronPort-SDR: MtNeyPT5lDHz4ScSTPbJJJ/oPYAgBVyVkqUwUowuqUmmuPNKQDMNM5w+0wt733K8Zts4uTYX9g
 D2awSRYWZY+g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,296,1589266800"; 
   d="gz'50?scan'50,208,50";a="266396438"
Received: from lkp-server01.sh.intel.com (HELO 28879958b202) ([10.239.97.150])
  by fmsmga008.fm.intel.com with ESMTP; 29 Jun 2020 23:34:09 -0700
Received: from kbuild by 28879958b202 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1jq9qL-0001Lv-AM; Tue, 30 Jun 2020 06:34:09 +0000
Date: Tue, 30 Jun 2020 14:33:57 +0800
From: kernel test robot <lkp@intel.com>
To: Maciej =?utf-8?Q?=C5=BBenczykowski?= <maze@google.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	Alexei Starovoitov <ast@kernel.org>
Subject: [linux-next:pending-fixes 60/210]
 arch/powerpc/sysdev/xive/common.c:1568:6: error: no previous prototype for
 function 'xive_debug_show_cpu'
Message-ID: <202006301453.ZeECrZr8%lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="GvXjxJ+pjyke8COw"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
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


--GvXjxJ+pjyke8COw
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git=
 pending-fixes
head:   0a39298198681fe7b6ad576dc2ae15b326d0344a
commit: b338cb921e6739ff59ce32f43342779fe5ffa732 [60/210] bpf: Restore beha=
viour of CAP_SYS_ADMIN allowing the loading of networking bpf programs
config: powerpc-randconfig-r033-20200630 (attached as .config)
compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project cf1d04=
484344be52ada8178e41d18fd15a9b880c)
reproduce (this is a W=3D1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/=
make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install powerpc cross compiling tool for clang build
        # apt-get install binutils-powerpc-linux-gnu
        git checkout b338cb921e6739ff59ce32f43342779fe5ffa732
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=3D$HOME/0day COMPILER=3Dclang make.cross ARCH=
=3Dpowerpc=20

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

>> arch/powerpc/sysdev/xive/common.c:1568:6: error: no previous prototype f=
or function 'xive_debug_show_cpu' [-Werror,-Wmissing-prototypes]
   void xive_debug_show_cpu(struct seq_file *m, int cpu)
        ^
   arch/powerpc/sysdev/xive/common.c:1568:1: note: declare 'static' if the =
function is not intended to be used outside of this translation unit
   void xive_debug_show_cpu(struct seq_file *m, int cpu)
   ^
   static=20
>> arch/powerpc/sysdev/xive/common.c:1602:6: error: no previous prototype f=
or function 'xive_debug_show_irq' [-Werror,-Wmissing-prototypes]
   void xive_debug_show_irq(struct seq_file *m, u32 hw_irq, struct irq_data=
 *d)
        ^
   arch/powerpc/sysdev/xive/common.c:1602:1: note: declare 'static' if the =
function is not intended to be used outside of this translation unit
   void xive_debug_show_irq(struct seq_file *m, u32 hw_irq, struct irq_data=
 *d)
   ^
   static=20
   2 errors generated.
   make[4]: *** [scripts/Makefile.build:281: arch/powerpc/sysdev/xive/commo=
n.o] Error 1
   arch/powerpc/lib/pmem.c:15:6: error: no previous prototype for function =
'arch_wb_cache_pmem' [-Werror,-Wmissing-prototypes]
   void arch_wb_cache_pmem(void *addr, size_t size)
        ^
   arch/powerpc/lib/pmem.c:15:1: note: declare 'static' if the function is =
not intended to be used outside of this translation unit
   void arch_wb_cache_pmem(void *addr, size_t size)
   ^
   static=20
   arch/powerpc/lib/pmem.c:22:6: error: no previous prototype for function =
'arch_invalidate_pmem' [-Werror,-Wmissing-prototypes]
   void arch_invalidate_pmem(void *addr, size_t size)
        ^
   arch/powerpc/lib/pmem.c:22:1: note: declare 'static' if the function is =
not intended to be used outside of this translation unit
   void arch_invalidate_pmem(void *addr, size_t size)
   ^
   static=20
   2 errors generated.
   make[3]: *** [scripts/Makefile.build:281: arch/powerpc/lib/pmem.o] Error=
 1
   make[4]: Target '__build' not remade because of errors.
   make[3]: *** [scripts/Makefile.build:497: arch/powerpc/sysdev/xive] Erro=
r 2
   In file included from arch/powerpc/kvm/powerpc.c:41:
   In file included from arch/powerpc/kvm/trace.h:127:
   include/trace/define_trace.h:95:10: fatal error: './trace.h' file not fo=
und
   #include TRACE_INCLUDE(TRACE_INCLUDE_FILE)
            ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/trace/define_trace.h:90:32: note: expanded from macro 'TRACE_INC=
LUDE'
   # define TRACE_INCLUDE(system) __TRACE_INCLUDE(system)
                                  ^~~~~~~~~~~~~~~~~~~~~~~
   include/trace/define_trace.h:87:34: note: expanded from macro '__TRACE_I=
NCLUDE'
   # define __TRACE_INCLUDE(system) __stringify(TRACE_INCLUDE_PATH/system.h=
)
                                    ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~=
~
   include/linux/stringify.h:10:27: note: expanded from macro '__stringify'
   #define __stringify(x...)       __stringify_1(x)
                                   ^~~~~~~~~~~~~~~~
   include/linux/stringify.h:9:29: note: expanded from macro '__stringify_1=
'
   #define __stringify_1(x...)     #x
                                   ^~
   <scratch space>:4:1: note: expanded from here
   "./trace.h"
   ^~~~~~~~~~~
   arch/powerpc/mm/book3s64/hash_utils.c:1497:5: error: no previous prototy=
pe for function '__hash_page' [-Werror,-Wmissing-prototypes]
   int __hash_page(unsigned long trap, unsigned long ea, unsigned long dsis=
r,
       ^
   arch/powerpc/mm/book3s64/hash_utils.c:1497:1: note: declare 'static' if =
the function is not intended to be used outside of this translation unit
   int __hash_page(unsigned long trap, unsigned long ea, unsigned long dsis=
r,
   ^
   static=20
   arch/powerpc/mm/book3s64/hash_utils.c:1811:6: error: no previous prototy=
pe for function 'low_hash_fault' [-Werror,-Wmissing-prototypes]
   void low_hash_fault(struct pt_regs *regs, unsigned long address, int rc)
        ^
   arch/powerpc/mm/book3s64/hash_utils.c:1811:1: note: declare 'static' if =
the function is not intended to be used outside of this translation unit
   void low_hash_fault(struct pt_regs *regs, unsigned long address, int rc)
   ^
   static=20
   arch/powerpc/mm/book3s64/hash_utils.c:1828:6: error: no previous prototy=
pe for function 'hpte_insert_repeating' [-Werror,-Wmissing-prototypes]
   long hpte_insert_repeating(unsigned long hash, unsigned long vpn,
        ^
   arch/powerpc/mm/book3s64/hash_utils.c:1828:1: note: declare 'static' if =
the function is not intended to be used outside of this translation unit
   long hpte_insert_repeating(unsigned long hash, unsigned long vpn,
   ^
   static=20
   3 errors generated.
   1 error generated.
   make[4]: *** [scripts/Makefile.build:281: arch/powerpc/mm/book3s64/hash_=
utils.o] Error 1
   make[3]: *** [scripts/Makefile.build:281: arch/powerpc/kvm/powerpc.o] Er=
ror 1
>> arch/powerpc/perf/ppc970-pmu.c:489:5: error: no previous prototype for f=
unction 'init_ppc970_pmu' [-Werror,-Wmissing-prototypes]
   int init_ppc970_pmu(void)
       ^
   arch/powerpc/perf/ppc970-pmu.c:489:1: note: declare 'static' if the func=
tion is not intended to be used outside of this translation unit
   int init_ppc970_pmu(void)
   ^
   static=20
   arch/powerpc/mm/pgtable.c:341:8: error: no previous prototype for functi=
on '__find_linux_pte' [-Werror,-Wmissing-prototypes]
   pte_t *__find_linux_pte(pgd_t *pgdir, unsigned long ea,
          ^
   arch/powerpc/mm/pgtable.c:341:1: note: declare 'static' if the function =
is not intended to be used outside of this translation unit
   pte_t *__find_linux_pte(pgd_t *pgdir, unsigned long ea,
   ^
   static=20
   1 error generated.
   1 error generated.
   make[3]: *** [scripts/Makefile.build:280: arch/powerpc/mm/pgtable.o] Err=
or 1
   arch/powerpc/mm/book3s64/slb.c:354:6: error: no previous prototype for f=
unction 'slb_setup_new_exec' [-Werror,-Wmissing-prototypes]
   void slb_setup_new_exec(void)
        ^
   arch/powerpc/mm/book3s64/slb.c:354:1: note: declare 'static' if the func=
tion is not intended to be used outside of this translation unit
   void slb_setup_new_exec(void)
   ^
   static=20
   arch/powerpc/mm/book3s64/slb.c:404:6: error: no previous prototype for f=
unction 'preload_new_slb_context' [-Werror,-Wmissing-prototypes]
   void preload_new_slb_context(unsigned long start, unsigned long sp)
        ^
   arch/powerpc/mm/book3s64/slb.c:404:1: note: declare 'static' if the func=
tion is not intended to be used outside of this translation unit
   void preload_new_slb_context(unsigned long start, unsigned long sp)
   ^
   static=20
   make[3]: *** [scripts/Makefile.build:281: arch/powerpc/perf/ppc970-pmu.o=
] Error 1
   2 errors generated.
   make[4]: *** [scripts/Makefile.build:281: arch/powerpc/mm/book3s64/slb.o=
] Error 1
   arch/powerpc/platforms/pseries/lpar.c:1041: warning: Function parameter =
or member 'idx' not described in 'call_block_remove'
   arch/powerpc/platforms/pseries/lpar.c:1041: warning: Function parameter =
or member 'param' not described in 'call_block_remove'
   arch/powerpc/platforms/pseries/lpar.c:1041: warning: Function parameter =
or member 'retry_busy' not described in 'call_block_remove'
   arch/powerpc/platforms/pseries/lpar.c:1302: warning: Function parameter =
or member 'number' not described in 'do_block_remove'
   arch/powerpc/platforms/pseries/lpar.c:1302: warning: Function parameter =
or member 'batch' not described in 'do_block_remove'
   arch/powerpc/platforms/pseries/lpar.c:1302: warning: Function parameter =
or member 'param' not described in 'do_block_remove'
   arch/powerpc/platforms/pseries/lpar.c:1889: warning: Function parameter =
or member 'mpp_data' not described in 'h_get_mpp'
   arch/powerpc/mm/mem.c:521: warning: Function parameter or member 'p' not=
 described in '__flush_dcache_icache'
   arch/powerpc/mm/mem.c:521: warning: Excess function parameter 'page' des=
cription in '__flush_dcache_icache'
>> arch/powerpc/perf/power5-pmu.c:617:5: error: no previous prototype for f=
unction 'init_power5_pmu' [-Werror,-Wmissing-prototypes]
   int init_power5_pmu(void)
       ^
   arch/powerpc/perf/power5-pmu.c:617:1: note: declare 'static' if the func=
tion is not intended to be used outside of this translation unit
   int init_power5_pmu(void)
   ^
   static=20
   1 error generated.
   make[3]: *** [scripts/Makefile.build:280: arch/powerpc/perf/power5-pmu.o=
] Error 1
   arch/powerpc/mm/book3s64/pgtable.c:399:6: error: no previous prototype f=
or function 'arch_report_meminfo' [-Werror,-Wmissing-prototypes]
   void arch_report_meminfo(struct seq_file *m)
        ^
   arch/powerpc/mm/book3s64/pgtable.c:399:1: note: declare 'static' if the =
function is not intended to be used outside of this translation unit
   void arch_report_meminfo(struct seq_file *m)
   ^
   static=20
>> arch/powerpc/mm/book3s64/pgtable.c:455:5: error: no previous prototype f=
or function 'pmd_move_must_withdraw' [-Werror,-Wmissing-prototypes]
   int pmd_move_must_withdraw(struct spinlock *new_pmd_ptl,
       ^
   arch/powerpc/mm/book3s64/pgtable.c:455:1: note: declare 'static' if the =
function is not intended to be used outside of this translation unit
   int pmd_move_must_withdraw(struct spinlock *new_pmd_ptl,
   ^
   static=20
   2 errors generated.
   make[4]: *** [scripts/Makefile.build:280: arch/powerpc/mm/book3s64/pgtab=
le.o] Error 1
>> arch/powerpc/perf/power8-pmu.c:381:5: error: no previous prototype for f=
unction 'init_power8_pmu' [-Werror,-Wmissing-prototypes]
   int init_power8_pmu(void)
       ^
   arch/powerpc/perf/power8-pmu.c:381:1: note: declare 'static' if the func=
tion is not intended to be used outside of this translation unit
   int init_power8_pmu(void)
   ^
   static=20
   1 error generated.
   make[3]: *** [scripts/Makefile.build:280: arch/powerpc/perf/power8-pmu.o=
] Error 1
>> arch/powerpc/platforms/pseries/ras.c:125:12: error: no previous prototyp=
e for function 'init_ras_hotplug_IRQ' [-Werror,-Wmissing-prototypes]
   int __init init_ras_hotplug_IRQ(void)
              ^
   arch/powerpc/platforms/pseries/ras.c:125:1: note: declare 'static' if th=
e function is not intended to be used outside of this translation unit
   int __init init_ras_hotplug_IRQ(void)
   ^
   static=20
   1 error generated.
   make[4]: *** [scripts/Makefile.build:280: arch/powerpc/platforms/pseries=
/ras.o] Error 1
   make[2]: *** [scripts/Makefile.build:497: arch/powerpc/sysdev] Error 2
   make[3]: Target '__build' not remade because of errors.
>> arch/powerpc/perf/power9-pmu.c:439:5: error: no previous prototype for f=
unction 'init_power9_pmu' [-Werror,-Wmissing-prototypes]
   int init_power9_pmu(void)
       ^
   arch/powerpc/perf/power9-pmu.c:439:1: note: declare 'static' if the func=
tion is not intended to be used outside of this translation unit
   int init_power9_pmu(void)
   ^
   static=20
   1 error generated.
   make[3]: *** [scripts/Makefile.build:280: arch/powerpc/perf/power9-pmu.o=
] Error 1
>> arch/powerpc/perf/power5+-pmu.c:676:5: error: no previous prototype for =
function 'init_power5p_pmu' [-Werror,-Wmissing-prototypes]
   int init_power5p_pmu(void)
       ^
   arch/powerpc/perf/power5+-pmu.c:676:1: note: declare 'static' if the fun=
ction is not intended to be used outside of this translation unit
   int init_power5p_pmu(void)
   ^
   static=20
   1 error generated.
   make[3]: *** [scripts/Makefile.build:280: arch/powerpc/perf/power5+-pmu.=
o] Error 1
>> arch/powerpc/perf/generic-compat-pmu.c:222:5: error: no previous prototy=
pe for function 'init_generic_compat_pmu' [-Werror,-Wmissing-prototypes]
   int init_generic_compat_pmu(void)
       ^
   arch/powerpc/perf/generic-compat-pmu.c:222:1: note: declare 'static' if =
the function is not intended to be used outside of this translation unit
   int init_generic_compat_pmu(void)
   ^
   static=20
   1 error generated.
>> arch/powerpc/perf/power6-pmu.c:539:5: error: no previous prototype for f=
unction 'init_power6_pmu' [-Werror,-Wmissing-prototypes]
   int init_power6_pmu(void)
       ^
   arch/powerpc/perf/power6-pmu.c:539:1: note: declare 'static' if the func=
tion is not intended to be used outside of this translation unit
   int init_power6_pmu(void)
   ^
   static=20
   1 error generated.
   make[3]: *** [scripts/Makefile.build:280: arch/powerpc/perf/power6-pmu.o=
] Error 1
   make[3]: *** [scripts/Makefile.build:280: arch/powerpc/perf/generic-comp=
at-pmu.o] Error 1
>> arch/powerpc/perf/power7-pmu.c:444:5: error: no previous prototype for f=
unction 'init_power7_pmu' [-Werror,-Wmissing-prototypes]
   int init_power7_pmu(void)
       ^
   arch/powerpc/perf/power7-pmu.c:444:1: note: declare 'static' if the func=
tion is not intended to be used outside of this translation unit
   int init_power7_pmu(void)
   ^
   static=20
   1 error generated.
   make[2]: *** [scripts/Makefile.build:497: arch/powerpc/perf] Error 2
   make[3]: *** [scripts/Makefile.build:280: arch/powerpc/perf/power7-pmu.o=
] Error 1
   make[3]: Target '__build' not remade because of errors.
   arch/powerpc/mm/hugetlbpage.c:220:12: error: no previous prototype for f=
unction 'pseries_alloc_bootmem_huge_page' [-Werror,-Wmissing-prototypes]
   int __init pseries_alloc_bootmem_huge_page(struct hstate *hstate)
              ^
   arch/powerpc/mm/hugetlbpage.c:220:1: note: declare 'static' if the funct=
ion is not intended to be used outside of this translation unit
   int __init pseries_alloc_bootmem_huge_page(struct hstate *hstate)
   ^
   static=20
   1 error generated.
   make[3]: *** [scripts/Makefile.build:281: arch/powerpc/mm/hugetlbpage.o]=
 Error 1
>> arch/powerpc/mm/book3s64/radix_tlb.c:895:23: error: variable 'hstart' is=
 uninitialized when used here [-Werror,-Wuninitialized]
                                   __tlbiel_va_range(hstart, hend, pid,
                                                     ^~~~~~
   arch/powerpc/mm/book3s64/radix_tlb.c:882:23: note: initialize the variab=
le 'hstart' to silence this warning
                   unsigned long hstart, hend;
                                       ^
                                        =3D 0
>> arch/powerpc/mm/book3s64/radix_tlb.c:895:31: error: variable 'hend' is u=
ninitialized when used here [-Werror,-Wuninitialized]
                                   __tlbiel_va_range(hstart, hend, pid,
                                                             ^~~~
   arch/powerpc/mm/book3s64/radix_tlb.c:882:29: note: initialize the variab=
le 'hend' to silence this warning
                   unsigned long hstart, hend;
                                             ^
                                              =3D 0
   2 errors generated.
   make[4]: *** [scripts/Makefile.build:281: arch/powerpc/mm/book3s64/radix=
_tlb.o] Error 1
   make[3]: Target '__build' not remade because of errors.
   make[2]: *** [scripts/Makefile.build:497: arch/powerpc/kvm] Error 2
   make[4]: Target '__build' not remade because of errors.
   make[3]: *** [scripts/Makefile.build:497: arch/powerpc/mm/book3s64] Erro=
r 2
   make[3]: Target '__build' not remade because of errors.
   make[2]: *** [scripts/Makefile.build:497: arch/powerpc/mm] Error 2
>> arch/powerpc/platforms/pseries/eeh_pseries.c:45:6: error: no previous pr=
ototype for function 'pseries_pcibios_bus_add_device' [-Werror,-Wmissing-pr=
ototypes]
   void pseries_pcibios_bus_add_device(struct pci_dev *pdev)
        ^
   arch/powerpc/platforms/pseries/eeh_pseries.c:45:1: note: declare 'static=
' if the function is not intended to be used outside of this translation un=
it
   void pseries_pcibios_bus_add_device(struct pci_dev *pdev)
   ^
   static=20
   1 error generated.
   make[4]: *** [scripts/Makefile.build:280: arch/powerpc/platforms/pseries=
/eeh_pseries.o] Error 1
   arch/powerpc/platforms/pseries/smp.c:90: warning: Function parameter or =
member 'lcpu' not described in 'smp_startup_cpu'
   make[3]: Target '__build' not remade because of errors.
   make[2]: *** [scripts/Makefile.build:497: arch/powerpc/lib] Error 2
   arch/powerpc/platforms/pseries/vio.c:50: warning: cannot understand func=
tion prototype: 'struct vio_cmo_pool '
   arch/powerpc/platforms/pseries/vio.c:67: warning: cannot understand func=
tion prototype: 'struct vio_cmo_dev_entry '
   arch/powerpc/platforms/pseries/vio.c:87: warning: cannot understand func=
tion prototype: 'struct vio_cmo '
   arch/powerpc/platforms/pseries/vio.c:697: warning: Function parameter or=
 member 'viodev' not described in 'vio_cmo_bus_probe'
   arch/powerpc/platforms/pseries/vio.c:806: warning: Function parameter or=
 member 'viodev' not described in 'vio_cmo_bus_remove'
   arch/powerpc/platforms/pseries/vio.c:1108: warning: Function parameter o=
r member 'vdev' not described in 'vio_h_cop_sync'
   arch/powerpc/platforms/pseries/vio.c:1108: warning: Function parameter o=
r member 'op' not described in 'vio_h_cop_sync'
   arch/powerpc/platforms/pseries/vio.c:1286: warning: Function parameter o=
r member 'owner' not described in '__vio_register_driver'
   arch/powerpc/platforms/pseries/vio.c:1286: warning: Function parameter o=
r member 'mod_name' not described in '__vio_register_driver'
   arch/powerpc/platforms/pseries/lparcfg.c:224: warning: Function paramete=
r or member 'm' not described in 'parse_mpp_data'
   arch/powerpc/platforms/pseries/lparcfg.c:262: warning: Function paramete=
r or member 'm' not described in 'parse_mpp_x_data'
   arch/powerpc/platforms/pseries/lparcfg.c:547: warning: Function paramete=
r or member 'entitlement' not described in 'update_mpp'
   arch/powerpc/platforms/pseries/lparcfg.c:547: warning: Function paramete=
r or member 'weight' not described in 'update_mpp'
   arch/powerpc/kernel/sys_ppc32.c:51:15: error: no previous prototype for =
function 'compat_sys_mmap2' [-Werror,-Wmissing-prototypes]
   unsigned long compat_sys_mmap2(unsigned long addr, size_t len,
                 ^
   arch/powerpc/kernel/sys_ppc32.c:51:1: note: declare 'static' if the func=
tion is not intended to be used outside of this translation unit
   unsigned long compat_sys_mmap2(unsigned long addr, size_t len,
   ^
   static=20
   arch/powerpc/kernel/sys_ppc32.c:64:16: error: no previous prototype for =
function 'compat_sys_pread64' [-Werror,-Wmissing-prototypes]
   compat_ssize_t compat_sys_pread64(unsigned int fd, char __user *ubuf, co=
mpat_size_t count,
                  ^
   arch/powerpc/kernel/sys_ppc32.c:64:1: note: declare 'static' if the func=
tion is not intended to be used outside of this translation unit
   compat_ssize_t compat_sys_pread64(unsigned int fd, char __user *ubuf, co=
mpat_size_t count,
   ^
   static=20
   arch/powerpc/kernel/sys_ppc32.c:70:16: error: no previous prototype for =
function 'compat_sys_pwrite64' [-Werror,-Wmissing-prototypes]
   compat_ssize_t compat_sys_pwrite64(unsigned int fd, const char __user *u=
buf, compat_size_t count,
                  ^
   arch/powerpc/kernel/sys_ppc32.c:70:1: note: declare 'static' if the func=
tion is not intended to be used outside of this translation unit
   compat_ssize_t compat_sys_pwrite64(unsigned int fd, const char __user *u=
buf, compat_size_t count,
   ^
   static=20
   arch/powerpc/kernel/sys_ppc32.c:76:16: error: no previous prototype for =
function 'compat_sys_readahead' [-Werror,-Wmissing-prototypes]
   compat_ssize_t compat_sys_readahead(int fd, u32 r4, u32 offhi, u32 offlo=
, u32 count)
                  ^
   arch/powerpc/kernel/sys_ppc32.c:76:1: note: declare 'static' if the func=
tion is not intended to be used outside of this translation unit
   compat_ssize_t compat_sys_readahead(int fd, u32 r4, u32 offhi, u32 offlo=
, u32 count)
   ^
   static=20
   arch/powerpc/kernel/sys_ppc32.c:81:16: error: no previous prototype for =
function 'compat_sys_truncate64' [-Werror,-Wmissing-prototypes]
   asmlinkage int compat_sys_truncate64(const char __user * path, u32 reg4,
                  ^
   arch/powerpc/kernel/sys_ppc32.c:81:12: note: declare 'static' if the fun=
ction is not intended to be used outside of this translation unit
   asmlinkage int compat_sys_truncate64(const char __user * path, u32 reg4,
              ^
              static=20
   arch/powerpc/kernel/sys_ppc32.c:87:17: error: no previous prototype for =
function 'compat_sys_fallocate' [-Werror,-Wmissing-prototypes]
   asmlinkage long compat_sys_fallocate(int fd, int mode, u32 offhi, u32 of=
flo,
                   ^
   arch/powerpc/kernel/sys_ppc32.c:87:12: note: declare 'static' if the fun=
ction is not intended to be used outside of this translation unit
   asmlinkage long compat_sys_fallocate(int fd, int mode, u32 offhi, u32 of=
flo,
              ^
              static=20
   arch/powerpc/kernel/sys_ppc32.c:94:16: error: no previous prototype for =
function 'compat_sys_ftruncate64' [-Werror,-Wmissing-prototypes]
   asmlinkage int compat_sys_ftruncate64(unsigned int fd, u32 reg4, unsigne=
d long high,
                  ^
   arch/powerpc/kernel/sys_ppc32.c:94:12: note: declare 'static' if the fun=
ction is not intended to be used outside of this translation unit
   asmlinkage int compat_sys_ftruncate64(unsigned int fd, u32 reg4, unsigne=
d long high,
              ^
              static=20
   arch/powerpc/kernel/sys_ppc32.c:100:6: error: no previous prototype for =
function 'ppc32_fadvise64' [-Werror,-Wmissing-prototypes]
   long ppc32_fadvise64(int fd, u32 unused, u32 offset_high, u32 offset_low=
,
        ^
   arch/powerpc/kernel/sys_ppc32.c:100:1: note: declare 'static' if the fun=
ction is not intended to be used outside of this translation unit
   long ppc32_fadvise64(int fd, u32 unused, u32 offset_high, u32 offset_low=
,
   ^
   static=20
   arch/powerpc/kernel/sys_ppc32.c:107:17: error: no previous prototype for=
 function 'compat_sys_sync_file_range2' [-Werror,-Wmissing-prototypes]
   asmlinkage long compat_sys_sync_file_range2(int fd, unsigned int flags,
                   ^
   arch/powerpc/kernel/sys_ppc32.c:107:12: note: declare 'static' if the fu=
nction is not intended to be used outside of this translation unit
   asmlinkage long compat_sys_sync_file_range2(int fd, unsigned int flags,
              ^
              static=20
   9 errors generated.
   make[3]: *** [scripts/Makefile.build:280: arch/powerpc/kernel/sys_ppc32.=
o] Error 1
   arch/powerpc/kernel/setup_64.c:257:13: error: no previous prototype for =
function 'record_spr_defaults' [-Werror,-Wmissing-prototypes]
   void __init record_spr_defaults(void)
               ^
   arch/powerpc/kernel/setup_64.c:257:1: note: declare 'static' if the func=
tion is not intended to be used outside of this translation unit
   void __init record_spr_defaults(void)
   ^
   static=20
   arch/powerpc/kernel/setup_64.c:282:32: error: no previous prototype for =
function 'early_setup' [-Werror,-Wmissing-prototypes]
   void __init __nostackprotector early_setup(unsigned long dt_ptr)
                                  ^
   arch/powerpc/kernel/setup_64.c:282:1: note: declare 'static' if the func=
tion is not intended to be used outside of this translation unit
   void __init __nostackprotector early_setup(unsigned long dt_ptr)
   ^
   static=20
   arch/powerpc/kernel/setup_64.c:396:6: error: no previous prototype for f=
unction 'early_setup_secondary' [-Werror,-Wmissing-prototypes]
   void early_setup_secondary(void)
        ^
   arch/powerpc/kernel/setup_64.c:396:1: note: declare 'static' if the func=
tion is not intended to be used outside of this translation unit
   void early_setup_secondary(void)
   ^
   static=20
   arch/powerpc/kernel/setup_64.c:417:6: error: no previous prototype for f=
unction 'panic_smp_self_stop' [-Werror,-Wmissing-prototypes]
   void panic_smp_self_stop(void)
        ^
   arch/powerpc/kernel/setup_64.c:417:1: note: declare 'static' if the func=
tion is not intended to be used outside of this translation unit
   void panic_smp_self_stop(void)
   ^
   static=20
   4 errors generated.
   make[3]: *** [scripts/Makefile.build:281: arch/powerpc/kernel/setup_64.o=
] Error 1
   arch/powerpc/kernel/mce.c:575:14: error: no previous prototype for funct=
ion 'machine_check_early' [-Werror,-Wmissing-prototypes]
   long notrace machine_check_early(struct pt_regs *regs)
                ^
   arch/powerpc/kernel/mce.c:575:1: note: declare 'static' if the function =
is not intended to be used outside of this translation unit
   long notrace machine_check_early(struct pt_regs *regs)
   ^
   static=20
   arch/powerpc/kernel/mce.c:710:6: error: no previous prototype for functi=
on 'hmi_exception_realmode' [-Werror,-Wmissing-prototypes]
   long hmi_exception_realmode(struct pt_regs *regs)
        ^
   arch/powerpc/kernel/mce.c:710:1: note: declare 'static' if the function =
is not intended to be used outside of this translation unit
   long hmi_exception_realmode(struct pt_regs *regs)
   ^
   static=20
   2 errors generated.
   make[3]: *** [scripts/Makefile.build:281: arch/powerpc/kernel/mce.o] Err=
or 1
   arch/powerpc/kernel/mce_power.c:630:6: error: no previous prototype for =
function '__machine_check_early_realmode_p7' [-Werror,-Wmissing-prototypes]
   long __machine_check_early_realmode_p7(struct pt_regs *regs)
        ^
   arch/powerpc/kernel/mce_power.c:630:1: note: declare 'static' if the fun=
ction is not intended to be used outside of this translation unit
   long __machine_check_early_realmode_p7(struct pt_regs *regs)
   ^
   static=20
   arch/powerpc/kernel/mce_power.c:638:6: error: no previous prototype for =
function '__machine_check_early_realmode_p8' [-Werror,-Wmissing-prototypes]
   long __machine_check_early_realmode_p8(struct pt_regs *regs)
        ^
   arch/powerpc/kernel/mce_power.c:638:1: note: declare 'static' if the fun=
ction is not intended to be used outside of this translation unit
   long __machine_check_early_realmode_p8(struct pt_regs *regs)
   ^
   static=20
   arch/powerpc/kernel/mce_power.c:643:6: error: no previous prototype for =
function '__machine_check_early_realmode_p9' [-Werror,-Wmissing-prototypes]
   long __machine_check_early_realmode_p9(struct pt_regs *regs)
        ^
   arch/powerpc/kernel/mce_power.c:643:1: note: declare 'static' if the fun=
ction is not intended to be used outside of this translation unit
   long __machine_check_early_realmode_p9(struct pt_regs *regs)
   ^
   static=20
   3 errors generated.
   make[3]: *** [scripts/Makefile.build:281: arch/powerpc/kernel/mce_power.=
o] Error 1
   arch/powerpc/kernel/traps.c:1663:6: error: no previous prototype for fun=
ction 'stack_overflow_exception' [-Werror,-Wmissing-prototypes]
   void stack_overflow_exception(struct pt_regs *regs)
        ^
   arch/powerpc/kernel/traps.c:1663:1: note: declare 'static' if the functi=
on is not intended to be used outside of this translation unit
   void stack_overflow_exception(struct pt_regs *regs)
   ^
   static=20
   1 error generated.
   make[3]: *** [scripts/Makefile.build:281: arch/powerpc/kernel/traps.o] E=
rror 1
   make[2]: *** [scripts/Makefile.build:497: arch/powerpc/platforms] Error =
2
   make[4]: Target '__build' not remade because of errors.
   make[3]: *** [scripts/Makefile.build:497: arch/powerpc/platforms/pseries=
] Error 2
   make[3]: Target '__build' not remade because of errors.
   arch/powerpc/kernel/eeh.c:633: warning: Function parameter or member 'fu=
nction' not described in 'eeh_pci_enable'
   arch/powerpc/kernel/eeh.c:869: warning: Function parameter or member 'ed=
ev' not described in 'eeh_set_dev_freset'
   arch/powerpc/kernel/eeh.c:869: warning: Excess function parameter 'data'=
 description in 'eeh_set_dev_freset'
   arch/powerpc/kernel/eeh.c:909: warning: Function parameter or member 'in=
clude_passed' not described in 'eeh_pe_reset_full'
   arch/powerpc/kernel/eeh.c:1611: warning: Function parameter or member 'i=
nclude_passed' not described in 'eeh_pe_reset'
   arch/powerpc/kernel/eeh.c:1686: warning: Function parameter or member 'f=
unc' not described in 'eeh_pe_inject_err'
   arch/powerpc/kernel/eeh.c:1686: warning: Excess function parameter 'func=
tion' description in 'eeh_pe_inject_err'
   arch/powerpc/kernel/eeh_pe.c:262: warning: cannot understand function pr=
ototype: 'struct eeh_pe_get_flag '
   arch/powerpc/kernel/eeh_pe.c:584: warning: Function parameter or member =
'root' not described in 'eeh_pe_state_mark'
   arch/powerpc/kernel/eeh_pe.c:584: warning: Function parameter or member =
'state' not described in 'eeh_pe_state_mark'
   arch/powerpc/kernel/eeh_pe.c:584: warning: Excess function parameter 'pe=
' description in 'eeh_pe_state_mark'
   arch/powerpc/kernel/eeh_pe.c:602: warning: Function parameter or member =
'root' not described in 'eeh_pe_mark_isolated'
   arch/powerpc/kernel/eeh_pe.c:602: warning: Excess function parameter 'pe=
' description in 'eeh_pe_mark_isolated'
   arch/powerpc/kernel/eeh_pe.c:635: warning: Function parameter or member =
'mode' not described in 'eeh_pe_dev_mode_mark'
   arch/powerpc/kernel/eeh_pe.c:650: warning: Function parameter or member =
'root' not described in 'eeh_pe_state_clear'
   arch/powerpc/kernel/eeh_pe.c:650: warning: Excess function parameter 'da=
ta' description in 'eeh_pe_state_clear'
   arch/powerpc/kernel/eeh_pe.c:845: warning: Function parameter or member =
'edev' not described in 'eeh_restore_one_device_bars'
   arch/powerpc/kernel/eeh_pe.c:845: warning: Excess function parameter 'da=
ta' description in 'eeh_restore_one_device_bars'
>> arch/powerpc/kernel/compat_audit.c:30:5: error: no previous prototype fo=
r function 'ppc32_classify_syscall' [-Werror,-Wmissing-prototypes]
   int ppc32_classify_syscall(unsigned syscall)
       ^
   arch/powerpc/kernel/compat_audit.c:30:1: note: declare 'static' if the f=
unction is not intended to be used outside of this translation unit
   int ppc32_classify_syscall(unsigned syscall)
   ^
   static=20
   1 error generated.
   make[3]: *** [scripts/Makefile.build:280: arch/powerpc/kernel/compat_aud=
it.o] Error 1
   arch/powerpc/kernel/eeh_event.c:40: warning: Function parameter or membe=
r 'dummy' not described in 'eeh_event_handler'
   arch/powerpc/kernel/dma-iommu.c:183:13: error: no previous prototype for=
 function 'dma_iommu_sync_sg_for_cpu' [-Werror,-Wmissing-prototypes]
   extern void dma_iommu_sync_sg_for_cpu(struct device *dev,
               ^
   arch/powerpc/kernel/dma-iommu.c:183:8: note: declare 'static' if the fun=
ction is not intended to be used outside of this translation unit
   extern void dma_iommu_sync_sg_for_cpu(struct device *dev,
          ^
   arch/powerpc/kernel/dma-iommu.c:190:13: error: no previous prototype for=
 function 'dma_iommu_sync_sg_for_device' [-Werror,-Wmissing-prototypes]
   extern void dma_iommu_sync_sg_for_device(struct device *dev,
               ^
   arch/powerpc/kernel/dma-iommu.c:190:8: note: declare 'static' if the fun=
ction is not intended to be used outside of this translation unit
   extern void dma_iommu_sync_sg_for_device(struct device *dev,
          ^
   2 errors generated.
   make[3]: *** [scripts/Makefile.build:280: arch/powerpc/kernel/dma-iommu.=
o] Error 1
>> arch/powerpc/kernel/crash_dump.c:125:6: error: no previous prototype for=
 function 'crash_free_reserved_phys_range' [-Werror,-Wmissing-prototypes]
   void crash_free_reserved_phys_range(unsigned long begin, unsigned long e=
nd)
        ^
   arch/powerpc/kernel/crash_dump.c:125:1: note: declare 'static' if the fu=
nction is not intended to be used outside of this translation unit
   void crash_free_reserved_phys_range(unsigned long begin, unsigned long e=
nd)
   ^
   static=20
   1 error generated.
   make[3]: *** [scripts/Makefile.build:280: arch/powerpc/kernel/crash_dump=
.o] Error 1
   arch/powerpc/kernel/optprobes.c:149:6: error: no previous prototype for =
function 'patch_imm32_load_insns' [-Werror,-Wmissing-prototypes]
   void patch_imm32_load_insns(unsigned int val, kprobe_opcode_t *addr)
        ^
   arch/powerpc/kernel/optprobes.c:149:1: note: declare 'static' if the fun=
ction is not intended to be used outside of this translation unit
   void patch_imm32_load_insns(unsigned int val, kprobe_opcode_t *addr)
   ^
   static=20
   arch/powerpc/kernel/optprobes.c:167:6: error: no previous prototype for =
function 'patch_imm64_load_insns' [-Werror,-Wmissing-prototypes]
   void patch_imm64_load_insns(unsigned long val, int reg, kprobe_opcode_t =
*addr)
        ^
   arch/powerpc/kernel/optprobes.c:167:1: note: declare 'static' if the fun=
ction is not intended to be used outside of this translation unit
   void patch_imm64_load_insns(unsigned long val, int reg, kprobe_opcode_t =
*addr)
   ^
   static=20
   2 errors generated.
   make[3]: *** [scripts/Makefile.build:280: arch/powerpc/kernel/optprobes.=
o] Error 1
   arch/powerpc/kernel/smp.c:539:6: error: no previous prototype for functi=
on 'tick_broadcast' [-Werror,-Wmissing-prototypes]
   void tick_broadcast(const struct cpumask *mask)
        ^
   arch/powerpc/kernel/smp.c:539:1: note: declare 'static' if the function =
is not intended to be used outside of this translation unit
   void tick_broadcast(const struct cpumask *mask)
   ^
   static=20
   arch/powerpc/kernel/smp.c:549:6: error: no previous prototype for functi=
on 'debugger_ipi_callback' [-Werror,-Wmissing-prototypes]
   void debugger_ipi_callback(struct pt_regs *regs)
        ^
   arch/powerpc/kernel/smp.c:549:1: note: declare 'static' if the function =
is not intended to be used outside of this translation unit
   void debugger_ipi_callback(struct pt_regs *regs)
   ^
   static=20
   2 errors generated.
   make[3]: *** [scripts/Makefile.build:281: arch/powerpc/kernel/smp.o] Err=
or 1
   arch/powerpc/kernel/pci_dn.c:486: warning: Function parameter or member =
'phb' not described in 'pci_devs_phb_init_dynamic'
   arch/powerpc/kernel/uprobes.c:40: warning: Function parameter or member =
'auprobe' not described in 'arch_uprobe_analyze_insn'
   arch/powerpc/kernel/uprobes.c:40: warning: Excess function parameter 'ar=
ch_uprobe' description in 'arch_uprobe_analyze_insn'
   arch/powerpc/kernel/eeh_driver.c:142: warning: Function parameter or mem=
ber 'edev' not described in 'eeh_disable_irq'
   arch/powerpc/kernel/eeh_driver.c:142: warning: Excess function parameter=
 'dev' description in 'eeh_disable_irq'
   arch/powerpc/kernel/eeh_driver.c:165: warning: Function parameter or mem=
ber 'edev' not described in 'eeh_enable_irq'
   arch/powerpc/kernel/eeh_driver.c:165: warning: Excess function parameter=
 'dev' description in 'eeh_enable_irq'
   arch/powerpc/kernel/eeh_driver.c:327: warning: Function parameter or mem=
ber 'pdev' not described in 'eeh_report_error'
   arch/powerpc/kernel/eeh_driver.c:353: warning: Function parameter or mem=
ber 'pdev' not described in 'eeh_report_mmio_enabled'
   arch/powerpc/kernel/eeh_driver.c:373: warning: Function parameter or mem=
ber 'pdev' not described in 'eeh_report_reset'
   arch/powerpc/kernel/eeh_driver.c:419: warning: Function parameter or mem=
ber 'pdev' not described in 'eeh_report_resume'
   arch/powerpc/kernel/eeh_driver.c:445: warning: Function parameter or mem=
ber 'pdev' not described in 'eeh_report_failure'
   arch/powerpc/kernel/isa-bridge.c:142: warning: Function parameter or mem=
ber 'hose' not described in 'isa_bridge_find_early'
   arch/powerpc/kernel/isa-bridge.c:188: warning: Function parameter or mem=
ber 'np' not described in 'isa_bridge_init_non_pci'
   arch/powerpc/kernel/isa-bridge.c:277: warning: Function parameter or mem=
ber 'pdev' not described in 'isa_bridge_find_late'
   arch/powerpc/kernel/isa-bridge.c:277: warning: Function parameter or mem=
ber 'devnode' not described in 'isa_bridge_find_late'
   arch/powerpc/kernel/isa-bridge.c:322: warning: Function parameter or mem=
ber 'nb' not described in 'isa_bridge_notify'
   arch/powerpc/kernel/isa-bridge.c:322: warning: Function parameter or mem=
ber 'action' not described in 'isa_bridge_notify'
   arch/powerpc/kernel/isa-bridge.c:322: warning: Function parameter or mem=
ber 'data' not described in 'isa_bridge_notify'
   arch/powerpc/kernel/pci_of_scan.c:23: warning: Function parameter or mem=
ber 'np' not described in 'get_int_prop'
   arch/powerpc/kernel/pci_of_scan.c:23: warning: Function parameter or mem=
ber 'name' not described in 'get_int_prop'
   arch/powerpc/kernel/pci_of_scan.c:23: warning: Function parameter or mem=
ber 'def' not described in 'get_int_prop'
   arch/powerpc/kernel/pci_of_scan.c:61: warning: Function parameter or mem=
ber 'ss' not described in 'OF_PCI_ADDR0_SPACE'
   arch/powerpc/kernel/pci_of_scan.c:61: warning: Excess function parameter=
 'addr0' description in 'OF_PCI_ADDR0_SPACE'
   arch/powerpc/kernel/pci_of_scan.c:61: warning: Excess function parameter=
 'bridge' description in 'OF_PCI_ADDR0_SPACE'
   make[3]: Target '__build' not remade because of errors.
   make[2]: *** [scripts/Makefile.build:497: arch/powerpc/kernel] Error 2
   make[2]: Target '__build' not remade because of errors.
   make[1]: *** [Makefile:1764: arch/powerpc] Error 2
   make[1]: Target '__all' not remade because of errors.
..

vim +/xive_debug_show_cpu +1568 arch/powerpc/sysdev/xive/common.c

930914b7d528fc C=C3=A9dric Le Goater 2020-03-06  1567 =20
930914b7d528fc C=C3=A9dric Le Goater 2020-03-06 @1568  void xive_debug_show=
_cpu(struct seq_file *m, int cpu)
930914b7d528fc C=C3=A9dric Le Goater 2020-03-06  1569  {
930914b7d528fc C=C3=A9dric Le Goater 2020-03-06  1570  	struct xive_cpu *xc=
 =3D per_cpu(xive_cpu, cpu);
930914b7d528fc C=C3=A9dric Le Goater 2020-03-06  1571 =20
930914b7d528fc C=C3=A9dric Le Goater 2020-03-06  1572  	seq_printf(m, "CPU =
%d:", cpu);
930914b7d528fc C=C3=A9dric Le Goater 2020-03-06  1573  	if (xc) {
930914b7d528fc C=C3=A9dric Le Goater 2020-03-06  1574  		seq_printf(m, "pp=
=3D%02x CPPR=3D%02x ", xc->pending_prio, xc->cppr);
930914b7d528fc C=C3=A9dric Le Goater 2020-03-06  1575 =20
930914b7d528fc C=C3=A9dric Le Goater 2020-03-06  1576  #ifdef CONFIG_SMP
930914b7d528fc C=C3=A9dric Le Goater 2020-03-06  1577  		{
930914b7d528fc C=C3=A9dric Le Goater 2020-03-06  1578  			u64 val =3D xive_=
esb_read(&xc->ipi_data, XIVE_ESB_GET);
930914b7d528fc C=C3=A9dric Le Goater 2020-03-06  1579 =20
930914b7d528fc C=C3=A9dric Le Goater 2020-03-06  1580  			seq_printf(m, "IP=
I=3D0x%08x PQ=3D%c%c ", xc->hw_ipi,
930914b7d528fc C=C3=A9dric Le Goater 2020-03-06  1581  				   val & XIVE_ES=
B_VAL_P ? 'P' : '-',
930914b7d528fc C=C3=A9dric Le Goater 2020-03-06  1582  				   val & XIVE_ES=
B_VAL_Q ? 'Q' : '-');
930914b7d528fc C=C3=A9dric Le Goater 2020-03-06  1583  		}
930914b7d528fc C=C3=A9dric Le Goater 2020-03-06  1584  #endif
930914b7d528fc C=C3=A9dric Le Goater 2020-03-06  1585  		{
930914b7d528fc C=C3=A9dric Le Goater 2020-03-06  1586  			struct xive_q *q =
=3D &xc->queue[xive_irq_priority];
930914b7d528fc C=C3=A9dric Le Goater 2020-03-06  1587  			u32 i0, i1, idx;
930914b7d528fc C=C3=A9dric Le Goater 2020-03-06  1588 =20
930914b7d528fc C=C3=A9dric Le Goater 2020-03-06  1589  			if (q->qpage) {
930914b7d528fc C=C3=A9dric Le Goater 2020-03-06  1590  				idx =3D q->idx;
930914b7d528fc C=C3=A9dric Le Goater 2020-03-06  1591  				i0 =3D be32_to_c=
pup(q->qpage + idx);
930914b7d528fc C=C3=A9dric Le Goater 2020-03-06  1592  				idx =3D (idx + 1=
) & q->msk;
930914b7d528fc C=C3=A9dric Le Goater 2020-03-06  1593  				i1 =3D be32_to_c=
pup(q->qpage + idx);
930914b7d528fc C=C3=A9dric Le Goater 2020-03-06  1594  				seq_printf(m, "E=
Q idx=3D%d T=3D%d %08x %08x ...",
930914b7d528fc C=C3=A9dric Le Goater 2020-03-06  1595  					   q->idx, q->t=
oggle, i0, i1);
930914b7d528fc C=C3=A9dric Le Goater 2020-03-06  1596  			}
930914b7d528fc C=C3=A9dric Le Goater 2020-03-06  1597  		}
930914b7d528fc C=C3=A9dric Le Goater 2020-03-06  1598  	}
930914b7d528fc C=C3=A9dric Le Goater 2020-03-06  1599  	seq_puts(m, "\n");
930914b7d528fc C=C3=A9dric Le Goater 2020-03-06  1600  }
930914b7d528fc C=C3=A9dric Le Goater 2020-03-06  1601 =20
930914b7d528fc C=C3=A9dric Le Goater 2020-03-06 @1602  void xive_debug_show=
_irq(struct seq_file *m, u32 hw_irq, struct irq_data *d)
930914b7d528fc C=C3=A9dric Le Goater 2020-03-06  1603  {
930914b7d528fc C=C3=A9dric Le Goater 2020-03-06  1604  	struct irq_chip *ch=
ip =3D irq_data_get_irq_chip(d);
930914b7d528fc C=C3=A9dric Le Goater 2020-03-06  1605  	int rc;
930914b7d528fc C=C3=A9dric Le Goater 2020-03-06  1606  	u32 target;
930914b7d528fc C=C3=A9dric Le Goater 2020-03-06  1607  	u8 prio;
930914b7d528fc C=C3=A9dric Le Goater 2020-03-06  1608  	u32 lirq;
930914b7d528fc C=C3=A9dric Le Goater 2020-03-06  1609 =20
930914b7d528fc C=C3=A9dric Le Goater 2020-03-06  1610  	if (!is_xive_irq(ch=
ip))
930914b7d528fc C=C3=A9dric Le Goater 2020-03-06  1611  		return;
930914b7d528fc C=C3=A9dric Le Goater 2020-03-06  1612 =20
930914b7d528fc C=C3=A9dric Le Goater 2020-03-06  1613  	rc =3D xive_ops->ge=
t_irq_config(hw_irq, &target, &prio, &lirq);
930914b7d528fc C=C3=A9dric Le Goater 2020-03-06  1614  	if (rc) {
930914b7d528fc C=C3=A9dric Le Goater 2020-03-06  1615  		seq_printf(m, "IRQ=
 0x%08x : no config rc=3D%d\n", hw_irq, rc);
930914b7d528fc C=C3=A9dric Le Goater 2020-03-06  1616  		return;
930914b7d528fc C=C3=A9dric Le Goater 2020-03-06  1617  	}
930914b7d528fc C=C3=A9dric Le Goater 2020-03-06  1618 =20
930914b7d528fc C=C3=A9dric Le Goater 2020-03-06  1619  	seq_printf(m, "IRQ =
0x%08x : target=3D0x%x prio=3D%02x lirq=3D0x%x ",
930914b7d528fc C=C3=A9dric Le Goater 2020-03-06  1620  		   hw_irq, target,=
 prio, lirq);
930914b7d528fc C=C3=A9dric Le Goater 2020-03-06  1621 =20
930914b7d528fc C=C3=A9dric Le Goater 2020-03-06  1622  	if (d) {
930914b7d528fc C=C3=A9dric Le Goater 2020-03-06  1623  		struct xive_irq_da=
ta *xd =3D irq_data_get_irq_handler_data(d);
930914b7d528fc C=C3=A9dric Le Goater 2020-03-06  1624  		u64 val =3D xive_e=
sb_read(xd, XIVE_ESB_GET);
930914b7d528fc C=C3=A9dric Le Goater 2020-03-06  1625 =20
930914b7d528fc C=C3=A9dric Le Goater 2020-03-06  1626  		seq_printf(m, "fla=
gs=3D%c%c%c PQ=3D%c%c",
930914b7d528fc C=C3=A9dric Le Goater 2020-03-06  1627  			   xd->flags & XI=
VE_IRQ_FLAG_STORE_EOI ? 'S' : ' ',
930914b7d528fc C=C3=A9dric Le Goater 2020-03-06  1628  			   xd->flags & XI=
VE_IRQ_FLAG_LSI ? 'L' : ' ',
930914b7d528fc C=C3=A9dric Le Goater 2020-03-06  1629  			   xd->flags & XI=
VE_IRQ_FLAG_H_INT_ESB ? 'H' : ' ',
930914b7d528fc C=C3=A9dric Le Goater 2020-03-06  1630  			   val & XIVE_ESB=
_VAL_P ? 'P' : '-',
930914b7d528fc C=C3=A9dric Le Goater 2020-03-06  1631  			   val & XIVE_ESB=
_VAL_Q ? 'Q' : '-');
930914b7d528fc C=C3=A9dric Le Goater 2020-03-06  1632  	}
930914b7d528fc C=C3=A9dric Le Goater 2020-03-06  1633  	seq_puts(m, "\n");
930914b7d528fc C=C3=A9dric Le Goater 2020-03-06  1634  }
930914b7d528fc C=C3=A9dric Le Goater 2020-03-06  1635 =20

:::::: The code at line 1568 was first introduced by commit
:::::: 930914b7d528fc6b0249bffc00564100bcf6ef75 powerpc/xive: Add a debugfs=
 file to dump internal XIVE state

:::::: TO: C=C3=A9dric Le Goater <clg@kaod.org>
:::::: CC: Michael Ellerman <mpe@ellerman.id.au>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/202006301453.ZeECrZr8%25lkp%40intel.com.

--GvXjxJ+pjyke8COw
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--GvXjxJ+pjyke8COw--
