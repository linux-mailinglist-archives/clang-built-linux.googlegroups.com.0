Return-Path: <clang-built-linux+bncBC4LXIPCY4NRB25J5WEAMGQE247N6BI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x640.google.com (mail-pl1-x640.google.com [IPv6:2607:f8b0:4864:20::640])
	by mail.lfdr.de (Postfix) with ESMTPS id BD9093EE686
	for <lists+clang-built-linux@lfdr.de>; Tue, 17 Aug 2021 08:19:24 +0200 (CEST)
Received: by mail-pl1-x640.google.com with SMTP id h19-20020a170902eed3b029012d3624d993sf12510418plb.2
        for <lists+clang-built-linux@lfdr.de>; Mon, 16 Aug 2021 23:19:24 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629181163; cv=pass;
        d=google.com; s=arc-20160816;
        b=jrYpBtDmY76wLYwIG2KKNuW9LtLW2tA14u99FmRUZRP8c1yqCBgV03zNAD39c5cZSk
         BP9Ne0Er7bB9jS3aQ320zDDvtqNphoY0djvTa7jS2P/Y/EE5CrAgnvQVGxzxTgy3f4ih
         CoWjbBvnHP6HorXvFN+cuYWIx2+5iQoMS2+KJKVYfutnoF/locj4CYSH//EC/kenPRZ1
         Igbz8zu4Ueev5BnqBPLmvVOZvY3KEhUw3pZscBiUz4zEmd4G+sRdYbaI8b/JhJeq663d
         sZNDNxD5Gav/8EeLwPhZ5qZlhlEnGn2IIP1vNN5gRyTLtgq2Z7+0rkDvQPNA5/+UIYuv
         PSyg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=UoUhlUZAWlo5YZQxc3jOucePd0Cc2t4ZCBGmeGiGagI=;
        b=mYaIIzLo9Ikc+UT6udw8dNoVj/uYMp2ZowBzYYP69ixGYOD2+i+TWPTltb5a8cW07r
         DGCGiSk+gbEgDde6aAO01cdYJlCOCc+SUsSewNg4EL/+ysPnVjpybBpRjiVY6Djy23+9
         m71XTGK2gH3su5MdEawbqT9V60hs0NcG0EsQpN8YRw2pjK+BwdMRJ9ttkuHT1Jw2Td+U
         ja3mhJ0origorrgXme62+4XNEW/9mQTjSesmATpklNQP4gYlEL8G8EG3CGavCg3oZL3d
         ldFlHkw5p0s7P1xmgEvX15TpEVbzyeRXNoCJc+Tnv+SWYQDrtMRhQFjdQoZjQtsF87DD
         1cHw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.24 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=UoUhlUZAWlo5YZQxc3jOucePd0Cc2t4ZCBGmeGiGagI=;
        b=A/tI+4asSotdd/6eHYY+7WzXrb96afbyAzaDT7zpx1YU75nV7SnUZygsa1r2OM95n0
         Cba3A7HLTmcLwjHD/nKw7ADxPYpbjUPnv2DOeKu0KX8FzMupwL+XZLKxRk2FhPifkypU
         n/gDj2fWUr6+bC+cg8m1kfhOsSrnDVmZ3bOapk8mAoAo0TfyGOTc88ANpmy8jOvad30q
         yNVlO8MZBr/cY84SnK7H1v4ZqodFooJWuLU2kVYtMXFkuLTAdy0kvV1gkd/UsZTI9iha
         7NVym8yNYIsSS+NxPzFh0/i5xl1zneRPYcookzHvuUVrbxtuiKdMD8f2mktVKI3kx1eg
         Fjww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=UoUhlUZAWlo5YZQxc3jOucePd0Cc2t4ZCBGmeGiGagI=;
        b=Yzo+cx7y7KFqFTuhV1iMZwKtf2nlJ2TRiWQXema6uaeLwVhJg+ooO6+lKLmGfY+4be
         M2eNCVuJxQNZo6fhkpVX/gWfUjCJQ2H09O+0YdG5hCfwgg+r4a1MMf3cy4l6Gs8aPtQZ
         Ueta6eSInfsUPLz5wTfJUBms4FJj1WxnZb96mfH+cLJw3l34eGrmk8fbZAo7/WZaWfal
         GT0TAOs/k553D2LpCBtrVZsDB/xUu79tkgnGh4t2GJZEgb82MFtLYHgs3bLux8Jdt4Ck
         cmVrV/04s/yuRp4nbWG3jovjuH8Mp9zeosgLT+olVwWPfmpdQ0ycqR1KBNY8PIF8PdUe
         H5uQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533Rkrajvh5QwOg4hyQ7aIlU1KVxT7JIylMvnoy2Mb1u7Y7oHhKK
	q/In5akMadQcMW/w6yPbdUs=
X-Google-Smtp-Source: ABdhPJz+nYGWpzzLBKBZyTYKmkJa1uSpODfN5j8IX7Hp4Fzwn7RAhVvu/XWIHwhiYh6FyyXbCXTr4w==
X-Received: by 2002:a63:4f43:: with SMTP id p3mr1981437pgl.435.1629181163288;
        Mon, 16 Aug 2021 23:19:23 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6a00:26ed:: with SMTP id p45ls567291pfw.1.gmail; Mon, 16
 Aug 2021 23:19:22 -0700 (PDT)
X-Received: by 2002:a63:e916:: with SMTP id i22mr2051072pgh.76.1629181162286;
        Mon, 16 Aug 2021 23:19:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629181162; cv=none;
        d=google.com; s=arc-20160816;
        b=Ug2HSoQkhuyEQg51l1ZMfnTgYHt7RDxvIvk66GvXQFcv7ukFu5xxMO1Ibjq+7moO3z
         XksNg3QDsg6AUKj8Hf4wYYa2HTx2kuc2SV/+28jLatXj5GE1O5uiQlUF3r0fo9s4OKuB
         QE2C8mvvPUS+QqANVRQpwhpnvbjdJLJeYkvBnMnMUjsF+mMo7I/OX1hGwmn+MleeULWz
         BRDN7jPon4eQa6qfPRmUqzDfYz73+O1mPpDxb770D5ljisXQja2H6MjHTPzMorjmngEn
         Hov4zz/lekKBgR0kKrDi14R0clQyC5g1uR04TlMgTs4z9tO7MHzXWZIrAUkfNxH06wm0
         2PNA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date;
        bh=0uk96Ujrpd1xmsMe/pndVZRJhCIcTTI5iFDXs6vQpVo=;
        b=FYO8+l4RT6/4uzpXUxouGimnbBjOYPNIdx8Qyf+gZ3sgP2UK8OA97Z0H/ovB6QzKcz
         pnyT6tGRqNkdgT9guhI4k+80g9IqhoO88sEwtOrtqCLd/AW2kCpTm8zeKqRiUqsOjb2J
         /wek1rReVri0Ev/ezvjUmW+493bjfaKVTxvRa106YImmljf8vOOswQBpF0OyyFnVh0gN
         R2Xfyoa+BxpgGvFgOQknjJ0L9BVfrcV3co0YW1DyMS6RUmnC6XqPfy15TRjyXpWBpPu8
         gSqC+W0hdKuXw/MRrlhrtNoO9K7yrZBzja9RcHTuPnS3eBQVyIB5zKLPt3TeGxTJynFB
         jfEg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.24 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga09.intel.com (mga09.intel.com. [134.134.136.24])
        by gmr-mx.google.com with ESMTPS id i123si64281pfb.1.2021.08.16.23.19.21
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 16 Aug 2021 23:19:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.24 as permitted sender) client-ip=134.134.136.24;
X-IronPort-AV: E=McAfee;i="6200,9189,10078"; a="216002502"
X-IronPort-AV: E=Sophos;i="5.84,328,1620716400"; 
   d="gz'50?scan'50,208,50";a="216002502"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
  by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 16 Aug 2021 23:19:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,328,1620716400"; 
   d="gz'50?scan'50,208,50";a="510245217"
Received: from lkp-server01.sh.intel.com (HELO d053b881505b) ([10.239.97.150])
  by fmsmga004.fm.intel.com with ESMTP; 16 Aug 2021 23:19:18 -0700
Received: from kbuild by d053b881505b with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1mFsRR-000RQ2-TR; Tue, 17 Aug 2021 06:19:17 +0000
Date: Tue, 17 Aug 2021 14:18:29 +0800
From: kernel test robot <lkp@intel.com>
To: Thomas Gleixner <tglx@linutronix.de>
Cc: clang-built-linux@googlegroups.com, kbuild-all@lists.01.org,
	linux-kernel@vger.kernel.org,
	Sebastian Andrzej Siewior <bigeasy@linutronix.de>
Subject: [linux-rt-devel:linux-5.14.y-rt-rebase 143/245]
 kernel/futex.c:1887:3: warning: Value stored to 'ret' is never read
 [clang-analyzer-deadcode.DeadStores]
Message-ID: <202108171423.aybCubVT-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="AqsLC8rIMeq19msA"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 134.134.136.24 as permitted
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


--AqsLC8rIMeq19msA
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/rt/linux-rt-devel.git linux-5.14.y-rt-rebase
head:   0eead4e5a60cb716ec911a552787a69332cf6943
commit: 7384201f9701c226cb1dd04cf76c12c33762bb30 [143/245] futex: Validate waiter correctly in futex_proxy_trylock_atomic()
config: mips-randconfig-c004-20210816 (attached as .config)
compiler: clang version 14.0.0 (https://github.com/llvm/llvm-project 44d0a99a12ec7ead4d2f5ef649ba05b40f6d463d)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install mips cross compiling tool for clang build
        # apt-get install binutils-mips-linux-gnu
        # https://git.kernel.org/pub/scm/linux/kernel/git/rt/linux-rt-devel.git/commit/?id=7384201f9701c226cb1dd04cf76c12c33762bb30
        git remote add linux-rt-devel https://git.kernel.org/pub/scm/linux/kernel/git/rt/linux-rt-devel.git
        git fetch --no-tags linux-rt-devel linux-5.14.y-rt-rebase
        git checkout 7384201f9701c226cb1dd04cf76c12c33762bb30
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=mips clang-analyzer 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>


clang-analyzer warnings: (new ones prefixed by >>)
           ^
   kernel/futex.c:3714:6: note: Assuming the condition is false
           if (op & FUTEX_CLOCK_REALTIME) {
               ^~~~~~~~~~~~~~~~~~~~~~~~~
   kernel/futex.c:3714:2: note: Taking false branch
           if (op & FUTEX_CLOCK_REALTIME) {
           ^
   kernel/futex.c:3721:2: note: 'Default' branch taken. Execution continues on line 3732
           switch (cmd) {
           ^
   kernel/futex.c:3732:2: note: Control jumps to 'case 5:'  at line 3747
           switch (cmd) {
           ^
   kernel/futex.c:3748:10: note: Calling 'futex_wake_op'
                   return futex_wake_op(uaddr, flags, uaddr2, val, val2, val3);
                          ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   kernel/futex.c:1699:2: note: Taking false branch
           if (unlikely(ret != 0))
           ^
   kernel/futex.c:1702:2: note: Taking false branch
           if (unlikely(ret != 0))
           ^
   kernel/futex.c:1710:11: note: Calling 'futex_atomic_op_inuser'
           op_ret = futex_atomic_op_inuser(op, uaddr2);
                    ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   kernel/futex.c:1643:6: note: 'oldval' declared without an initial value
           int oldval, ret;
               ^~~~~~
   kernel/futex.c:1645:6: note: Assuming the condition is false
           if (encoded_op & (FUTEX_OP_OPARG_SHIFT << 28)) {
               ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   kernel/futex.c:1645:2: note: Taking false branch
           if (encoded_op & (FUTEX_OP_OPARG_SHIFT << 28)) {
           ^
   kernel/futex.c:1660:8: note: Calling 'arch_futex_atomic_op_inuser'
           ret = arch_futex_atomic_op_inuser(op, oparg, &oldval, uaddr);
                 ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/mips/include/asm/futex.h:92:7: note: Assuming the condition is false
           if (!access_ok(uaddr, sizeof(u32)))
                ^
   arch/mips/include/asm/uaccess.h:88:2: note: expanded from macro 'access_ok'
           likely(__access_ok((addr), (size)))
           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/compiler.h:77:38: note: expanded from macro 'likely'
   # define likely(x)      __builtin_expect(!!(x), 1)
                                             ^~~~
   arch/mips/include/asm/futex.h:92:2: note: Taking false branch
           if (!access_ok(uaddr, sizeof(u32)))
           ^
   arch/mips/include/asm/futex.h:95:2: note: Control jumps to 'case 3:'  at line 108
           switch (op) {
           ^
   arch/mips/include/asm/futex.h:109:3: note: Left side of '&&' is true
                   __futex_atomic_op("and  $1, %1, %z5",
                   ^
   arch/mips/include/asm/futex.h:24:6: note: expanded from macro '__futex_atomic_op'
           if (cpu_has_llsc && IS_ENABLED(CONFIG_WAR_R10000_LLSC)) {       \
               ^
   arch/mips/include/asm/mach-rc32434/cpu-feature-overrides.h:34:24: note: expanded from macro 'cpu_has_llsc'
   #define cpu_has_llsc                    1
                                           ^
   arch/mips/include/asm/futex.h:109:3: note: Taking false branch
                   __futex_atomic_op("and  $1, %1, %z5",
                   ^
   arch/mips/include/asm/futex.h:24:2: note: expanded from macro '__futex_atomic_op'
           if (cpu_has_llsc && IS_ENABLED(CONFIG_WAR_R10000_LLSC)) {       \
           ^
   arch/mips/include/asm/futex.h:109:3: note: Taking true branch
                   __futex_atomic_op("and  $1, %1, %z5",
                   ^
   arch/mips/include/asm/futex.h:53:9: note: expanded from macro '__futex_atomic_op'
           } else if (cpu_has_llsc) {                                      \
                  ^
   arch/mips/include/asm/futex.h:111:3: note:  Execution continues on line 120
                   break;
                   ^
   arch/mips/include/asm/futex.h:120:6: note: Assuming 'ret' is not equal to 0
           if (!ret)
               ^~~~
   arch/mips/include/asm/futex.h:120:2: note: Taking false branch
           if (!ret)
           ^
   arch/mips/include/asm/futex.h:123:2: note: Returning without writing to '*oval'
           return ret;
           ^
   kernel/futex.c:1660:8: note: Returning from 'arch_futex_atomic_op_inuser'
           ret = arch_futex_atomic_op_inuser(op, oparg, &oldval, uaddr);
                 ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   kernel/futex.c:1662:6: note: Assuming 'ret' is 0
           if (ret)
               ^~~
   kernel/futex.c:1662:2: note: Taking false branch
           if (ret)
           ^
   kernel/futex.c:1665:2: note: Control jumps to 'case 4:'  at line 1676
           switch (cmp) {
           ^
   kernel/futex.c:1677:17: note: The left operand of '>' is a garbage value
                   return oldval > cmparg;
                          ~~~~~~ ^
>> kernel/futex.c:1887:3: warning: Value stored to 'ret' is never read [clang-analyzer-deadcode.DeadStores]
                   ret = -EINVAL;
                   ^     ~~~~~~~
   kernel/futex.c:1887:3: note: Value stored to 'ret' is never read
                   ret = -EINVAL;
                   ^     ~~~~~~~
   Suppressed 3 warnings (3 in non-user code).
   Use -header-filter=.* to display errors from all non-system headers. Use -system-headers to display errors from system headers as well.
   3 warnings generated.
   Suppressed 3 warnings (3 in non-user code).
   Use -header-filter=.* to display errors from all non-system headers. Use -system-headers to display errors from system headers as well.
   3 warnings generated.
   Suppressed 3 warnings (3 in non-user code).
   Use -header-filter=.* to display errors from all non-system headers. Use -system-headers to display errors from system headers as well.
   5 warnings generated.
   drivers/soundwire/stream.c:847:10: warning: Use of memory after it is freed [clang-analyzer-unix.Malloc]
                           kfree(bus->defer_msg.msg->buf);
                                 ^
   drivers/soundwire/stream.c:1755:6: note: Assuming 'stream' is non-null
           if (!stream) {
               ^~~~~~~
   drivers/soundwire/stream.c:1755:2: note: Taking false branch
           if (!stream) {
           ^
   drivers/soundwire/stream.c:1762:6: note: Assuming field 'state' is equal to SDW_STREAM_ENABLED
           if (stream->state != SDW_STREAM_ENABLED) {
               ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/soundwire/stream.c:1762:2: note: Taking false branch
           if (stream->state != SDW_STREAM_ENABLED) {
           ^
   drivers/soundwire/stream.c:1769:8: note: Calling '_sdw_disable_stream'
           ret = _sdw_disable_stream(stream);
                 ^~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/soundwire/stream.c:1700:2: note: Left side of '&&' is false
           list_for_each_entry(m_rt, &stream->master_list, stream_node) {
           ^
   include/linux/list.h:628:13: note: expanded from macro 'list_for_each_entry'
           for (pos = list_first_entry(head, typeof(*pos), member);        \
                      ^
   include/linux/list.h:522:2: note: expanded from macro 'list_first_entry'
           list_entry((ptr)->next, type, member)
           ^
   include/linux/list.h:511:2: note: expanded from macro 'list_entry'
           container_of(ptr, type, member)
           ^
   include/linux/kernel.h:495:61: note: expanded from macro 'container_of'
           BUILD_BUG_ON_MSG(!__same_type(*(ptr), ((type *)0)->member) &&   \
                                                                      ^
   drivers/soundwire/stream.c:1700:2: note: Taking false branch
           list_for_each_entry(m_rt, &stream->master_list, stream_node) {
           ^
   include/linux/list.h:628:13: note: expanded from macro 'list_for_each_entry'
           for (pos = list_first_entry(head, typeof(*pos), member);        \
                      ^
   include/linux/list.h:522:2: note: expanded from macro 'list_first_entry'
           list_entry((ptr)->next, type, member)
           ^
   include/linux/list.h:511:2: note: expanded from macro 'list_entry'
           container_of(ptr, type, member)
           ^
   note: (skipping 2 expansions in backtrace; use -fmacro-backtrace-limit=0 to see all)
   include/linux/compiler_types.h:328:2: note: expanded from macro 'compiletime_assert'
           _compiletime_assert(condition, msg, __compiletime_assert_, __COUNTER__)
           ^
   include/linux/compiler_types.h:316:2: note: expanded from macro '_compiletime_assert'
           __compiletime_assert(condition, msg, prefix, suffix)
           ^
   include/linux/compiler_types.h:308:3: note: expanded from macro '__compiletime_assert'
                   if (!(condition))                                       \
                   ^
   drivers/soundwire/stream.c:1700:2: note: Loop condition is false.  Exiting loop
           list_for_each_entry(m_rt, &stream->master_list, stream_node) {
           ^
   include/linux/list.h:628:13: note: expanded from macro 'list_for_each_entry'
           for (pos = list_first_entry(head, typeof(*pos), member);        \
                      ^
   include/linux/list.h:522:2: note: expanded from macro 'list_first_entry'
           list_entry((ptr)->next, type, member)
           ^
   include/linux/list.h:511:2: note: expanded from macro 'list_entry'
           container_of(ptr, type, member)
           ^
   note: (skipping 2 expansions in backtrace; use -fmacro-backtrace-limit=0 to see all)
   include/linux/compiler_types.h:328:2: note: expanded from macro 'compiletime_assert'
           _compiletime_assert(condition, msg, __compiletime_assert_, __COUNTER__)
           ^
   include/linux/compiler_types.h:316:2: note: expanded from macro '_compiletime_assert'
           __compiletime_assert(condition, msg, prefix, suffix)
           ^
   include/linux/compiler_types.h:306:2: note: expanded from macro '__compiletime_assert'
           do {                                                            \
           ^
   drivers/soundwire/stream.c:1700:2: note: Loop condition is false. Execution continues on line 1710
           list_for_each_entry(m_rt, &stream->master_list, stream_node) {
           ^
   include/linux/list.h:628:2: note: expanded from macro 'list_for_each_entry'
           for (pos = list_first_entry(head, typeof(*pos), member);        \
           ^
   drivers/soundwire/stream.c:1712:2: note: Left side of '&&' is false
           list_for_each_entry(m_rt, &stream->master_list, stream_node) {
           ^

vim +/ret +1887 kernel/futex.c

  1825	
  1826	/**
  1827	 * futex_proxy_trylock_atomic() - Attempt an atomic lock for the top waiter
  1828	 * @pifutex:		the user address of the to futex
  1829	 * @hb1:		the from futex hash bucket, must be locked by the caller
  1830	 * @hb2:		the to futex hash bucket, must be locked by the caller
  1831	 * @key1:		the from futex key
  1832	 * @key2:		the to futex key
  1833	 * @ps:			address to store the pi_state pointer
  1834	 * @exiting:		Pointer to store the task pointer of the owner task
  1835	 *			which is in the middle of exiting
  1836	 * @set_waiters:	force setting the FUTEX_WAITERS bit (1) or not (0)
  1837	 *
  1838	 * Try and get the lock on behalf of the top waiter if we can do it atomically.
  1839	 * Wake the top waiter if we succeed.  If the caller specified set_waiters,
  1840	 * then direct futex_lock_pi_atomic() to force setting the FUTEX_WAITERS bit.
  1841	 * hb1 and hb2 must be held by the caller.
  1842	 *
  1843	 * @exiting is only set when the return value is -EBUSY. If so, this holds
  1844	 * a refcount on the exiting task on return and the caller needs to drop it
  1845	 * after waiting for the exit to complete.
  1846	 *
  1847	 * Return:
  1848	 *  -  0 - failed to acquire the lock atomically;
  1849	 *  - >0 - acquired the lock, return value is vpid of the top_waiter
  1850	 *  - <0 - error
  1851	 */
  1852	static int
  1853	futex_proxy_trylock_atomic(u32 __user *pifutex, struct futex_hash_bucket *hb1,
  1854				   struct futex_hash_bucket *hb2, union futex_key *key1,
  1855				   union futex_key *key2, struct futex_pi_state **ps,
  1856				   struct task_struct **exiting, int set_waiters)
  1857	{
  1858		struct futex_q *top_waiter = NULL;
  1859		u32 curval;
  1860		int ret, vpid;
  1861	
  1862		if (get_futex_value_locked(&curval, pifutex))
  1863			return -EFAULT;
  1864	
  1865		if (unlikely(should_fail_futex(true)))
  1866			return -EFAULT;
  1867	
  1868		/*
  1869		 * Find the top_waiter and determine if there are additional waiters.
  1870		 * If the caller intends to requeue more than 1 waiter to pifutex,
  1871		 * force futex_lock_pi_atomic() to set the FUTEX_WAITERS bit now,
  1872		 * as we have means to handle the possible fault.  If not, don't set
  1873		 * the bit unnecessarily as it will force the subsequent unlock to enter
  1874		 * the kernel.
  1875		 */
  1876		top_waiter = futex_top_waiter(hb1, key1);
  1877	
  1878		/* There are no waiters, nothing for us to do. */
  1879		if (!top_waiter)
  1880			return 0;
  1881	
  1882		/*
  1883		 * Ensure that this is a waiter sitting in futex_wait_requeue_pi()
  1884		 * and waiting on the 'waitqueue' futex which is always !PI.
  1885		 */
  1886		if (!top_waiter->rt_waiter || top_waiter->pi_state)
> 1887			ret = -EINVAL;
  1888	
  1889		/* Ensure we requeue to the expected futex. */
  1890		if (!match_futex(top_waiter->requeue_pi_key, key2))
  1891			return -EINVAL;
  1892	
  1893		/*
  1894		 * Try to take the lock for top_waiter.  Set the FUTEX_WAITERS bit in
  1895		 * the contended case or if set_waiters is 1.  The pi_state is returned
  1896		 * in ps in contended cases.
  1897		 */
  1898		vpid = task_pid_vnr(top_waiter->task);
  1899		ret = futex_lock_pi_atomic(pifutex, hb2, key2, ps, top_waiter->task,
  1900					   exiting, set_waiters);
  1901		if (ret == 1) {
  1902			requeue_pi_wake_futex(top_waiter, key2, hb2);
  1903			return vpid;
  1904		}
  1905		return ret;
  1906	}
  1907	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202108171423.aybCubVT-lkp%40intel.com.

--AqsLC8rIMeq19msA
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
STOziii+v3P7P8wF+f3XLAIA

--AqsLC8rIMeq19msA--
