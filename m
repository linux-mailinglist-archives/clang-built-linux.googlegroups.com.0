Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBRWYRT7AKGQE7ZZW7TI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43f.google.com (mail-pf1-x43f.google.com [IPv6:2607:f8b0:4864:20::43f])
	by mail.lfdr.de (Postfix) with ESMTPS id D78132C7793
	for <lists+clang-built-linux@lfdr.de>; Sun, 29 Nov 2020 06:06:16 +0100 (CET)
Received: by mail-pf1-x43f.google.com with SMTP id i10sf6787665pfe.19
        for <lists+clang-built-linux@lfdr.de>; Sat, 28 Nov 2020 21:06:16 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606626375; cv=pass;
        d=google.com; s=arc-20160816;
        b=FewVs61DTAOrR9sMYhX+xB+6sN2zYkZ5pd/d/xy98kjAAwi2GqycrtOt97SGp/mc7m
         ps2Uk6CgVa6rZWgRS7lJchMsdNHxF4WnW8A6icZ1iqIMq58oecMHDSopxAs9PKfPUSf5
         0AGjsDFJYZZ3c0YNj8MEkcb5H4/tGeEV06W1R9h6sdTQmAWIqmsokIhMPXOJShkh3tXA
         wkkhY6NFFfF6LgvnJ4dwOicZMYLXYzCjhgNJzOQPag8pDVXm5Oxrx72A26MIESkibiiO
         8lN2wJ4OnJH9DIgzsXjjYE1K/g0bi9fJxIH1xDqff9XuXZ4igvZGL5W3wLi6YoCZ6Zw6
         Gnag==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=mqlNluVIWkTRChj+R7pm7KZvvJ2kZTuEkYSkOtNRv2Y=;
        b=VmSgSdLfgPrOtu5R+c16JfU9DVYS0hTALrR7QR54wdsqbhFVIIWFTVf6fNcZ1uzOn2
         frJbcMCiPUMHGXjNNq/ftUkTWfVH04IRzlDbZu7sy8RymaUo6u6eOi7ztE8dJhmhq6nL
         ckf2Bm6MhlNZt0BhCfBQTB+UVEj1sUmtUDeD65zJ8JL8FIWncoSqBo5/zQKYmMFOwq5R
         FmqYSbTDT2WA/qvzt0FG2IjmZQYz7CJPQwyhQgm7SHCX2rL8L9GgvIykiI3EqDIiXx2q
         gMV5+TAakXDt8P2F/oBPT2NZ6dHrCBMQknTIaWvmwtQ+9eMf4eiwv/e7kcrs3YxEqUhZ
         oREA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.126 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=mqlNluVIWkTRChj+R7pm7KZvvJ2kZTuEkYSkOtNRv2Y=;
        b=ALT/bWxXvHa27YUgwNvldwSZNszJq6km4gX6UwS2RqPx7uSQe32oMd0sOwih2m6zi9
         140drBWkMYGYg68o6guQeVMB+7pf7DOGPwPKN7iJIB1eUEeNny1qGhb8e0tansny2oBp
         Ys7zWOlk9MbrwRNxyQWC3SmGcmO2d9FCKtzUmWFbntbzI3OjBE4FyCD9OUwl+XNNAk0B
         J0MjYSiDCLr8xZddbgBZrdycnkKjbBDhEIGQBJrZ79BdqCT+xKmv8r4IcibZh8eKdF0Z
         wr+0yT4r+SQPzPPkzFSIZBga45/0nFo/PiEuXTaahKwQSywFSq/E4zshLuKc4uud56gS
         1/lg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=mqlNluVIWkTRChj+R7pm7KZvvJ2kZTuEkYSkOtNRv2Y=;
        b=Z5ROJxjIj9KPRIqy4R0eysFXZqDBikFypTrBq4flb068WN2miWojd5dWun3AWfTt7Z
         380p7sfP0NkNxnWNSu4ztnRw1nT57dhOKAskheBEwLCZvXjYOv0+uCQpZ1HYaKR1aDLT
         67nV+EsGpz8r8EyKTrQBMKwY1cz1hkjzknCbcKmE4u0Mwlg5jWyYJsct32HlHMI7PFmt
         isMMC1DI16rODIgUurWKyWzKZWG+id5kvgipDimPq8KVH8GhkiNw0YzW3YFJ+hCotrmx
         uKsLvXzPmVWJSAl4MI7kqdrvVMtlVodkfNTZIzh3U0HynFclCsWupsNDzUDeP0OBO9Fa
         jrjA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530myhL0Ig0k28qjgyzgO7AX+hz3cQHJLGuE4x8bMVJrKDqTNdnJ
	ylK85CHgbHsa8oa3sSNBQRQ=
X-Google-Smtp-Source: ABdhPJw4tc90nl4zjyWc0mCAzc8QwhVQH+TwmoP7CL5M53nuR6PtCJ5umjI14Rz1QB7P7LqRoM0J1g==
X-Received: by 2002:a17:90a:9511:: with SMTP id t17mr11019825pjo.224.1606626375088;
        Sat, 28 Nov 2020 21:06:15 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:a503:: with SMTP id a3ls6153769pjq.2.gmail; Sat, 28
 Nov 2020 21:06:14 -0800 (PST)
X-Received: by 2002:a17:90a:940e:: with SMTP id r14mr19834472pjo.47.1606626374415;
        Sat, 28 Nov 2020 21:06:14 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606626374; cv=none;
        d=google.com; s=arc-20160816;
        b=eqU0EPu/FnJlV8KugwZgoTaH5gno+kYWW2xfrP+PXWNWfzFqo+nWaQxZ5ngs4UXZaj
         LmIzP9iq56HAXCD7p2YWC4NtAq5OqEHUsaqSrHJkMrg1SreA/AY/NZp7Z70QXKPyorkZ
         ViqkZk/jwyip2wO91+v6dObw3EGC0cF/tDGOtaW8ctPX/KmU0mxfWoM0EFslfws/WtKo
         StVVRJxeTKB3zlTdHY8IDY7BYttHEnYMmhGO2rgXYX2LZKKfrGR6FFjQNjaezHHXwiE7
         ZO7Bf6DfZgIGfGELeArftvd3wl9LEstDVzkqnbKGg8RXLU0S0N2+OtomFaWR706WILjX
         QpHw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=oS+yPNlEvgUqq7vmEjmLiTl2cdSWbHs+uUXeiROKu24=;
        b=AJmFqRoRvd4yZvoqDz45Zh4vTWjlqVW4RW7og7u6vJ52fv0lNoFrZtug0oKEt73fqt
         5Iu9Cu/TOGePgy3BwNQ6Jd4fb6HtO3Nbmj+/wHOWFPa/RQ4li05xAzgh/MKbMuCiQIFd
         o+0wPdw+tF3PTB7QO6s13v/ggTdFl58IhRyRyNu0f6xv47+jdVgQtoo91Xmg5MDT2xwP
         D7nm3ecUmTT6n+V7ikzQX9QeYZtfE3cpAzWP6XQ0zunzPHhN426rxPr+3VPYFDX3NAsa
         MM0I03URjsXATCKEG6SNSVc8BjWSDJw80DaK4AtqJkNaDH8nQ+fToZsc7dv6W9AcSzRh
         xLEA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.126 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga18.intel.com (mga18.intel.com. [134.134.136.126])
        by gmr-mx.google.com with ESMTPS id mp11si1257481pjb.1.2020.11.28.21.06.14
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 28 Nov 2020 21:06:14 -0800 (PST)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.126 as permitted sender) client-ip=134.134.136.126;
IronPort-SDR: otd5kFOz2KjwxeF5w28tsihg+nNQ2iVblilBu6SC8SXGqTzmf7Q2djd+C7cs34UM9UpOYE6tbE
 XaJo6B6VP68A==
X-IronPort-AV: E=McAfee;i="6000,8403,9819"; a="160286445"
X-IronPort-AV: E=Sophos;i="5.78,378,1599548400"; 
   d="gz'50?scan'50,208,50";a="160286445"
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
  by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 28 Nov 2020 21:06:13 -0800
IronPort-SDR: p97LhZ+b0kR9ktQ6C884YREWRfSUu+1P7fAuMAxYkE6VKaFghjJQsje9uC1y9tNYGGuH4gGjEO
 Ep4nogxuCvug==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,378,1599548400"; 
   d="gz'50?scan'50,208,50";a="480147390"
Received: from lkp-server01.sh.intel.com (HELO b5888d13d5a5) ([10.239.97.150])
  by orsmga004.jf.intel.com with ESMTP; 28 Nov 2020 21:06:11 -0800
Received: from kbuild by b5888d13d5a5 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1kjEuZ-0000cy-4M; Sun, 29 Nov 2020 05:06:11 +0000
Date: Sun, 29 Nov 2020 13:05:24 +0800
From: kernel test robot <lkp@intel.com>
To: Andy Lutomirski <luto@kernel.org>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com
Subject: [luto:x86/fixes 12/12] kernel/sched/membarrier.c:445:1: warning: ISO
 C90 forbids mixing declarations and code
Message-ID: <202011291322.8emGChns-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="wac7ysb48OaltWcw"
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


--wac7ysb48OaltWcw
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/luto/linux.git x86/fixes
head:   ebb44931654e78d649537beccf31b880a3381866
commit: ebb44931654e78d649537beccf31b880a3381866 [12/12] membarrier: Propagate SYNC_CORE and RSEQ actions more carefully
config: x86_64-randconfig-a006-20201129 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project f502b14d40e751fe00afc493ef0d08f196524886)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install x86_64 cross compiling tool for clang build
        # apt-get install binutils-x86-64-linux-gnu
        # https://git.kernel.org/pub/scm/linux/kernel/git/luto/linux.git/commit/?id=ebb44931654e78d649537beccf31b880a3381866
        git remote add luto https://git.kernel.org/pub/scm/linux/kernel/git/luto/linux.git
        git fetch --no-tags luto x86/fixes
        git checkout ebb44931654e78d649537beccf31b880a3381866
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

   kernel/sched/membarrier.c:264:13: error: too few arguments to function call, expected 1, have 0
                           ipi_func();
                           ~~~~~~~~ ^
   kernel/sched/membarrier.c:277:4: error: expected expression
           } else {
             ^
   kernel/sched/membarrier.c:290:1: error: function definition is not allowed here
   {
   ^
   kernel/sched/membarrier.c:349:1: error: function definition is not allowed here
   {
   ^
   kernel/sched/membarrier.c:368:1: error: function definition is not allowed here
   {
   ^
   kernel/sched/membarrier.c:445:1: error: function declared in block scope cannot have 'static' storage class
   SYSCALL_DEFINE3(membarrier, int, cmd, unsigned int, flags, int, cpu_id)
   ^
   include/linux/syscalls.h:215:36: note: expanded from macro 'SYSCALL_DEFINE3'
   #define SYSCALL_DEFINE3(name, ...) SYSCALL_DEFINEx(3, _##name, __VA_ARGS__)
                                      ^
   include/linux/syscalls.h:224:2: note: expanded from macro 'SYSCALL_DEFINEx'
           __SYSCALL_DEFINEx(x, sname, __VA_ARGS__)
           ^
   arch/x86/include/asm/syscall_wrapper.h:228:2: note: expanded from macro '__SYSCALL_DEFINEx'
           static long __se_sys##name(__MAP(x,__SC_LONG,__VA_ARGS__));     \
           ^
   kernel/sched/membarrier.c:445:1: error: function declared in block scope cannot have 'static' storage class
   include/linux/syscalls.h:215:36: note: expanded from macro 'SYSCALL_DEFINE3'
   #define SYSCALL_DEFINE3(name, ...) SYSCALL_DEFINEx(3, _##name, __VA_ARGS__)
                                      ^
   include/linux/syscalls.h:224:2: note: expanded from macro 'SYSCALL_DEFINEx'
           __SYSCALL_DEFINEx(x, sname, __VA_ARGS__)
           ^
   arch/x86/include/asm/syscall_wrapper.h:229:2: note: expanded from macro '__SYSCALL_DEFINEx'
           static inline long __do_sys##name(__MAP(x,__SC_DECL,__VA_ARGS__));\
           ^
   kernel/sched/membarrier.c:445:1: error: function definition is not allowed here
   include/linux/syscalls.h:215:36: note: expanded from macro 'SYSCALL_DEFINE3'
   #define SYSCALL_DEFINE3(name, ...) SYSCALL_DEFINEx(3, _##name, __VA_ARGS__)
                                      ^
   include/linux/syscalls.h:224:2: note: expanded from macro 'SYSCALL_DEFINEx'
           __SYSCALL_DEFINEx(x, sname, __VA_ARGS__)
           ^
   arch/x86/include/asm/syscall_wrapper.h:230:2: note: expanded from macro '__SYSCALL_DEFINEx'
           __X64_SYS_STUBx(x, name, __VA_ARGS__)                           \
           ^
   arch/x86/include/asm/syscall_wrapper.h:96:2: note: expanded from macro '__X64_SYS_STUBx'
           __SYS_STUBx(x64, sys##name,                                     \
           ^
   arch/x86/include/asm/syscall_wrapper.h:78:2: note: expanded from macro '__SYS_STUBx'
           {                                                               \
           ^
   kernel/sched/membarrier.c:445:1: error: function definition is not allowed here
   include/linux/syscalls.h:215:36: note: expanded from macro 'SYSCALL_DEFINE3'
   #define SYSCALL_DEFINE3(name, ...) SYSCALL_DEFINEx(3, _##name, __VA_ARGS__)
                                      ^
   include/linux/syscalls.h:224:2: note: expanded from macro 'SYSCALL_DEFINEx'
           __SYSCALL_DEFINEx(x, sname, __VA_ARGS__)
           ^
   arch/x86/include/asm/syscall_wrapper.h:231:2: note: expanded from macro '__SYSCALL_DEFINEx'
           __IA32_SYS_STUBx(x, name, __VA_ARGS__)                          \
           ^
   arch/x86/include/asm/syscall_wrapper.h:116:2: note: expanded from macro '__IA32_SYS_STUBx'
           __SYS_STUBx(ia32, sys##name,                                    \
           ^
   arch/x86/include/asm/syscall_wrapper.h:78:2: note: expanded from macro '__SYS_STUBx'
           {                                                               \
           ^
   kernel/sched/membarrier.c:445:1: error: function definition is not allowed here
   include/linux/syscalls.h:215:36: note: expanded from macro 'SYSCALL_DEFINE3'
   #define SYSCALL_DEFINE3(name, ...) SYSCALL_DEFINEx(3, _##name, __VA_ARGS__)
                                      ^
   include/linux/syscalls.h:224:2: note: expanded from macro 'SYSCALL_DEFINEx'
           __SYSCALL_DEFINEx(x, sname, __VA_ARGS__)
           ^
   arch/x86/include/asm/syscall_wrapper.h:233:2: note: expanded from macro '__SYSCALL_DEFINEx'
           {                                                               \
           ^
   kernel/sched/membarrier.c:446:1: error: function definition is not allowed here
   {
   ^
   kernel/sched/membarrier.c:495:2: error: expected '}'
   }
    ^
   kernel/sched/membarrier.c:159:1: note: to match this '{'
   {
   ^
>> kernel/sched/membarrier.c:445:1: warning: ISO C90 forbids mixing declarations and code [-Wdeclaration-after-statement]
   SYSCALL_DEFINE3(membarrier, int, cmd, unsigned int, flags, int, cpu_id)
   ^
   include/linux/syscalls.h:215:36: note: expanded from macro 'SYSCALL_DEFINE3'
   #define SYSCALL_DEFINE3(name, ...) SYSCALL_DEFINEx(3, _##name, __VA_ARGS__)
                                      ^
   include/linux/syscalls.h:224:2: note: expanded from macro 'SYSCALL_DEFINEx'
           __SYSCALL_DEFINEx(x, sname, __VA_ARGS__)
           ^
   arch/x86/include/asm/syscall_wrapper.h:228:14: note: expanded from macro '__SYSCALL_DEFINEx'
           static long __se_sys##name(__MAP(x,__SC_LONG,__VA_ARGS__));     \
                       ^
   <scratch space>:226:1: note: expanded from here
   __se_sys_membarrier
   ^
   kernel/sched/membarrier.c:239:9: error: use of undeclared label 'out'
                           goto out;
                                ^
   1 warning and 13 errors generated.

vim +445 kernel/sched/membarrier.c

22e4ebb97582283 Mathieu Desnoyers 2017-07-28  408  
22e4ebb97582283 Mathieu Desnoyers 2017-07-28  409  /**
22e4ebb97582283 Mathieu Desnoyers 2017-07-28  410   * sys_membarrier - issue memory barriers on a set of threads
22e4ebb97582283 Mathieu Desnoyers 2017-07-28  411   * @cmd:    Takes command values defined in enum membarrier_cmd.
2a36ab717e8fe67 Peter Oskolkov    2020-09-23  412   * @flags:  Currently needs to be 0 for all commands other than
2a36ab717e8fe67 Peter Oskolkov    2020-09-23  413   *          MEMBARRIER_CMD_PRIVATE_EXPEDITED_RSEQ: in the latter
2a36ab717e8fe67 Peter Oskolkov    2020-09-23  414   *          case it can be MEMBARRIER_CMD_FLAG_CPU, indicating that @cpu_id
2a36ab717e8fe67 Peter Oskolkov    2020-09-23  415   *          contains the CPU on which to interrupt (= restart)
2a36ab717e8fe67 Peter Oskolkov    2020-09-23  416   *          the RSEQ critical section.
2a36ab717e8fe67 Peter Oskolkov    2020-09-23  417   * @cpu_id: if @flags == MEMBARRIER_CMD_FLAG_CPU, indicates the cpu on which
2a36ab717e8fe67 Peter Oskolkov    2020-09-23  418   *          RSEQ CS should be interrupted (@cmd must be
2a36ab717e8fe67 Peter Oskolkov    2020-09-23  419   *          MEMBARRIER_CMD_PRIVATE_EXPEDITED_RSEQ).
22e4ebb97582283 Mathieu Desnoyers 2017-07-28  420   *
22e4ebb97582283 Mathieu Desnoyers 2017-07-28  421   * If this system call is not implemented, -ENOSYS is returned. If the
22e4ebb97582283 Mathieu Desnoyers 2017-07-28  422   * command specified does not exist, not available on the running
22e4ebb97582283 Mathieu Desnoyers 2017-07-28  423   * kernel, or if the command argument is invalid, this system call
22e4ebb97582283 Mathieu Desnoyers 2017-07-28  424   * returns -EINVAL. For a given command, with flags argument set to 0,
227a4aadc75ba22 Mathieu Desnoyers 2019-09-19  425   * if this system call returns -ENOSYS or -EINVAL, it is guaranteed to
227a4aadc75ba22 Mathieu Desnoyers 2019-09-19  426   * always return the same value until reboot. In addition, it can return
227a4aadc75ba22 Mathieu Desnoyers 2019-09-19  427   * -ENOMEM if there is not enough memory available to perform the system
227a4aadc75ba22 Mathieu Desnoyers 2019-09-19  428   * call.
22e4ebb97582283 Mathieu Desnoyers 2017-07-28  429   *
22e4ebb97582283 Mathieu Desnoyers 2017-07-28  430   * All memory accesses performed in program order from each targeted thread
22e4ebb97582283 Mathieu Desnoyers 2017-07-28  431   * is guaranteed to be ordered with respect to sys_membarrier(). If we use
22e4ebb97582283 Mathieu Desnoyers 2017-07-28  432   * the semantic "barrier()" to represent a compiler barrier forcing memory
22e4ebb97582283 Mathieu Desnoyers 2017-07-28  433   * accesses to be performed in program order across the barrier, and
22e4ebb97582283 Mathieu Desnoyers 2017-07-28  434   * smp_mb() to represent explicit memory barriers forcing full memory
22e4ebb97582283 Mathieu Desnoyers 2017-07-28  435   * ordering across the barrier, we have the following ordering table for
22e4ebb97582283 Mathieu Desnoyers 2017-07-28  436   * each pair of barrier(), sys_membarrier() and smp_mb():
22e4ebb97582283 Mathieu Desnoyers 2017-07-28  437   *
22e4ebb97582283 Mathieu Desnoyers 2017-07-28  438   * The pair ordering is detailed as (O: ordered, X: not ordered):
22e4ebb97582283 Mathieu Desnoyers 2017-07-28  439   *
22e4ebb97582283 Mathieu Desnoyers 2017-07-28  440   *                        barrier()   smp_mb() sys_membarrier()
22e4ebb97582283 Mathieu Desnoyers 2017-07-28  441   *        barrier()          X           X            O
22e4ebb97582283 Mathieu Desnoyers 2017-07-28  442   *        smp_mb()           X           O            O
22e4ebb97582283 Mathieu Desnoyers 2017-07-28  443   *        sys_membarrier()   O           O            O
22e4ebb97582283 Mathieu Desnoyers 2017-07-28  444   */
2a36ab717e8fe67 Peter Oskolkov    2020-09-23 @445  SYSCALL_DEFINE3(membarrier, int, cmd, unsigned int, flags, int, cpu_id)
22e4ebb97582283 Mathieu Desnoyers 2017-07-28 @446  {

:::::: The code at line 445 was first introduced by commit
:::::: 2a36ab717e8fe678d98f81c14a0b124712719840 rseq/membarrier: Add MEMBARRIER_CMD_PRIVATE_EXPEDITED_RSEQ

:::::: TO: Peter Oskolkov <posk@google.com>
:::::: CC: Peter Zijlstra <peterz@infradead.org>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202011291322.8emGChns-lkp%40intel.com.

--wac7ysb48OaltWcw
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--wac7ysb48OaltWcw--
