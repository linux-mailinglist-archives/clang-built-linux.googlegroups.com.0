Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBLHQTGDAMGQEME42DVY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x940.google.com (mail-ua1-x940.google.com [IPv6:2607:f8b0:4864:20::940])
	by mail.lfdr.de (Postfix) with ESMTPS id F3C143A5A9C
	for <lists+clang-built-linux@lfdr.de>; Sun, 13 Jun 2021 23:27:09 +0200 (CEST)
Received: by mail-ua1-x940.google.com with SMTP id k13-20020a9f30cd0000b029025e3e26edb8sf2608344uab.9
        for <lists+clang-built-linux@lfdr.de>; Sun, 13 Jun 2021 14:27:09 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623619629; cv=pass;
        d=google.com; s=arc-20160816;
        b=gcLLdwlkoSj7RUu603sVs+VbVT+Bd/xg0Twx0Sof5OMiuaQcnqPsea3dgokwC3Ii3n
         VoDY2rdn6eVmojpukK8Ajdr+U52IiOmDQPz3Rbwi8/43CcYA9nK7ODVPat/mpZ0zMBSv
         9w82WxuIB1j14VYquq2B9TR7xohrFA0MHuUPvz9Bjd64JumAzt3UF255fUkqScNaB04x
         SIoDekyFmL4sp1FVK+LNf82wGt9p4q1P+dNOLMHDc3t7cD+9djB8s+uDHADHuj2qp5pZ
         VaQ2L4EnpIU5TKuN1u82I1BXpngYuURLt7UX9t2kI8R+7oWSNfcSRfYBSNeQ0J1aTH9G
         IFBA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=tO8SGjhFgNrIBLOVDkeRult4e5O2WJoXQpSCz2Hb5QM=;
        b=lcJri6jryMqiYuc2Ql4UChQwyI2s0KCDNRaWjEW5zRWQD0DpkDnngRRSVkHgxvuKXm
         h0rQmYl3n4/9hz+0Sou+2RQZZa15LjSn50vfl24xBkQrOu45TC41B1MPshB0aFVAhJkp
         fwbLjJgk18J6+z9ASnATO68buYQZan9IWoaH4oa0BdMwf2G2RqI18bOXrf9sGPrHrc0M
         L/FUpM5gU4YMiMGR75yvhF/rUWJDDiYp2sV1cYywEI92xcmmDcFjRJnhItpv5/K8T+nH
         flnyygGHYcY/yO3+g5s7jgbKmAjcaythX3GWNbUf1HIGGjYBYnQvu9+r3oc2p3/7dmAj
         EuVA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.115 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=tO8SGjhFgNrIBLOVDkeRult4e5O2WJoXQpSCz2Hb5QM=;
        b=c3q7T0CWALvN9ww9QKktkunUNyKuDQi6YcSYyMLDtidWb3kn9gMelqHTABooqcKpDL
         I2UeTRC4DZ2BLnqZQ2gJq1cAq6YbTixu9MIt/ycOxKL4NRBUrlBITDE2EuaK15LmIkEz
         z4UdoqL65BZFPI9Bp7Tu2IDoKbsRDWVESVQLgNYoKriKIi1UonTzyx5MxllzlUfcJtlk
         YXb3VXSrvsryT+CEhaxqig2ZWRxw/Xx0NQi/8OWH+vtco+k2QZTNCTVg5Z9ysY6y+p1+
         Fa4se7O7AsKqu9eeYRn72+hmeBctiXbRD0AvpGDeXMqAqE0C7Ll1Bba+X+y6v1u2ZhHp
         bjUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=tO8SGjhFgNrIBLOVDkeRult4e5O2WJoXQpSCz2Hb5QM=;
        b=fDDHYMgOuGc7qmzVZXVaY5dAiIfVfENiCCtduKZ//tiZGB1NppXFVnVMMRVJf46AT5
         nKH+rM85U7llJ58jVTHdOtC2c5uqTRNCUGte/LeMXop4/sHvNp/nnvoUL3wo561SMRZI
         QI7uf/mww44o2HRCsOeLjogS2TU3YU/WQKTakh/VhKFfhCdRx7hcEiOpC9SLzbINcB4c
         6mEjSV14F0KVDP86/U1EX84gUmdURLk/OFZZpygW7UDf2F3aeV1QrHTIoJpTBtFhD/Ex
         ylmOsSI8tkceO9nZiyrQSqPAll99FvVILN9IB6qQznHwc/UC/f4ncvkugUP7bkJDUe8e
         suFQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530uHO3cuuP1r0Iim1Eo8tIaiuJi4cPMErJjYurb6aRJdbVSa4on
	uk5qxvYruyMjcFMvMpSdLvY=
X-Google-Smtp-Source: ABdhPJz7s1+jHWxbAzOyAHOYn2NwWcOuCoU9DsYnML154/M8z1WeJLbRZp4VmUBr6v77939Pje9xOA==
X-Received: by 2002:a9f:35e9:: with SMTP id u38mr9887904uad.131.1623619628845;
        Sun, 13 Jun 2021 14:27:08 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1f:ad8f:: with SMTP id w137ls575655vke.8.gmail; Sun, 13 Jun
 2021 14:27:08 -0700 (PDT)
X-Received: by 2002:a1f:46:: with SMTP id 67mr15197211vka.24.1623619628032;
        Sun, 13 Jun 2021 14:27:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623619628; cv=none;
        d=google.com; s=arc-20160816;
        b=b8DWJLyMP9M0NSlyHW0XNY3IrlWqEWlB3zAfm1IDutg70nsUAMNXTR+w+ZNBTfmi0j
         y5t94Kx4B4FjWL6hu+MpWcUtrz4bOaLHccbQlvQHvJVb/DTJUIbb7WbLoCuayOu+E9FD
         vsiGlS6LjpoJyP5ZiDAbFBR7BsX1WEYqblICjTyKCVXlpmNdb3Z47jRg8NYEVkQcTfMi
         crvRuFk3mPJ34LrrmR2UsesVZIMd+Fo89I6feKsQPex5Ili8ogK471pcAnHJUlACznZy
         94Ecpbr0rkQCtzz6/07syyHwK7sORs9wRJTh6D8isGd76A76szasDm5mVXN1NYFv80Jt
         ZdGA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=rp/cqDfcVN47v3vEzVAs4LHDO72tzgIZkprWT5OGreM=;
        b=OZxG7zDOXVo3gcOEAix83WkWv3b+hw0l8lMlzYXnT47+JjfThpXpfL0EN4pD8sGhoB
         5J/uYIMr0UGsyl4rkWVF+QtJUkKP7OtqaJduZa9uMVdj0AUiNqE54enf/1h8MK1zeHP8
         KXQHVZ1FWRuob+VSjKKzwGMyMOgNEBdcygTmsW0HNX0PDc6quqiTEHnT1c4qH0DTepaj
         +NhX9wuHYQ5AdA15aUCiP9IL4h32dYzX0+UtbBbQSoyDRB8eW1PkMkP7u5+CdCE1hn8z
         le7E5j2z1jqpx3q/cXWG1kWDYCS4gVed23nWVMnWhJeODEQP4YBQ5lPhpjZIjfgBB+BQ
         Kmew==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.115 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga14.intel.com (mga14.intel.com. [192.55.52.115])
        by gmr-mx.google.com with ESMTPS id a1si1170166uaq.0.2021.06.13.14.27.05
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 13 Jun 2021 14:27:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.115 as permitted sender) client-ip=192.55.52.115;
IronPort-SDR: AAHjpoNtyjfp17b0lUodpZedVa8yWX2WiIVOz5OEH2KJLJWhS7K5UousXnHZrRBP6uc7qLA7eR
 QIdP2kgPip/g==
X-IronPort-AV: E=McAfee;i="6200,9189,10014"; a="205558063"
X-IronPort-AV: E=Sophos;i="5.83,272,1616482800"; 
   d="gz'50?scan'50,208,50";a="205558063"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
  by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 13 Jun 2021 14:27:03 -0700
IronPort-SDR: v29j7K3jEIsQdphU78FTd4yTXUNQs7hdwrce5I+508GB/eOFYq2+dCzpLHR/6X3r0eaN1gRvkt
 01B8LKdXMmug==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,272,1616482800"; 
   d="gz'50?scan'50,208,50";a="420602832"
Received: from lkp-server02.sh.intel.com (HELO 3cb98b298c7e) ([10.239.97.151])
  by orsmga002.jf.intel.com with ESMTP; 13 Jun 2021 14:27:01 -0700
Received: from kbuild by 3cb98b298c7e with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1lsXdG-0001WE-DG; Sun, 13 Jun 2021 21:27:02 +0000
Date: Mon, 14 Jun 2021 05:26:58 +0800
From: kernel test robot <lkp@intel.com>
To: Ingo Molnar <mingo@kernel.org>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org, x86@kernel.org
Subject: [tip:tmp.tmp2 108/364] arch/riscv/kernel/asm-offsets.c:32:2: error:
 no member named 'thread_info' in 'task_struct'
Message-ID: <202106140555.rHuM4Hnq-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="r5Pyd7+fXNt84Ff3"
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


--r5Pyd7+fXNt84Ff3
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi Ingo,

First bad commit (maybe != root cause):

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/tip/tip.git tmp.tmp2
head:   adcceb5eb7aee38e4a9c15bdf599655f0e1b1324
commit: a8bbfcd6b3ffac4ebcc0deb770d628fe6b8f2d05 [108/364] sched/headers: Remove <linux/mutex.h> from <linux/sched.h>
config: riscv-randconfig-r016-20210613 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project d2012d965d60c3258b3a69d024491698f8aec386)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install riscv cross compiling tool for clang build
        # apt-get install binutils-riscv64-linux-gnu
        # https://git.kernel.org/pub/scm/linux/kernel/git/tip/tip.git/commit/?id=a8bbfcd6b3ffac4ebcc0deb770d628fe6b8f2d05
        git remote add tip https://git.kernel.org/pub/scm/linux/kernel/git/tip/tip.git
        git fetch --no-tags tip tmp.tmp2
        git checkout a8bbfcd6b3ffac4ebcc0deb770d628fe6b8f2d05
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=riscv 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

                       ^                    ~~~
   include/linux/stddef.h:17:32: note: expanded from macro 'offsetof'
   #define offsetof(TYPE, MEMBER)  __compiler_offsetof(TYPE, MEMBER)
                                   ^                         ~~~~~~
   include/linux/compiler_types.h:140:35: note: expanded from macro '__compiler_offsetof'
   #define __compiler_offsetof(a, b)       __builtin_offsetof(a, b)
                                           ^                     ~
   include/linux/kbuild.h:6:62: note: expanded from macro 'DEFINE'
           asm volatile("\n.ascii \"->" #sym " %0 " #val "\"" : : "i" (val))
                                                                       ^~~
   arch/riscv/kernel/asm-offsets.c:26:2: error: no member named 'thread' in 'task_struct'
           OFFSET(TASK_THREAD_S6, task_struct, thread.s[6]);
           ^                                   ~~~~~~
   include/linux/kbuild.h:11:14: note: expanded from macro 'OFFSET'
           DEFINE(sym, offsetof(struct str, mem))
                       ^                    ~~~
   include/linux/stddef.h:17:32: note: expanded from macro 'offsetof'
   #define offsetof(TYPE, MEMBER)  __compiler_offsetof(TYPE, MEMBER)
                                   ^                         ~~~~~~
   include/linux/compiler_types.h:140:35: note: expanded from macro '__compiler_offsetof'
   #define __compiler_offsetof(a, b)       __builtin_offsetof(a, b)
                                           ^                     ~
   include/linux/kbuild.h:6:62: note: expanded from macro 'DEFINE'
           asm volatile("\n.ascii \"->" #sym " %0 " #val "\"" : : "i" (val))
                                                                       ^~~
   arch/riscv/kernel/asm-offsets.c:27:2: error: no member named 'thread' in 'task_struct'
           OFFSET(TASK_THREAD_S7, task_struct, thread.s[7]);
           ^                                   ~~~~~~
   include/linux/kbuild.h:11:14: note: expanded from macro 'OFFSET'
           DEFINE(sym, offsetof(struct str, mem))
                       ^                    ~~~
   include/linux/stddef.h:17:32: note: expanded from macro 'offsetof'
   #define offsetof(TYPE, MEMBER)  __compiler_offsetof(TYPE, MEMBER)
                                   ^                         ~~~~~~
   include/linux/compiler_types.h:140:35: note: expanded from macro '__compiler_offsetof'
   #define __compiler_offsetof(a, b)       __builtin_offsetof(a, b)
                                           ^                     ~
   include/linux/kbuild.h:6:62: note: expanded from macro 'DEFINE'
           asm volatile("\n.ascii \"->" #sym " %0 " #val "\"" : : "i" (val))
                                                                       ^~~
   arch/riscv/kernel/asm-offsets.c:28:2: error: no member named 'thread' in 'task_struct'
           OFFSET(TASK_THREAD_S8, task_struct, thread.s[8]);
           ^                                   ~~~~~~
   include/linux/kbuild.h:11:14: note: expanded from macro 'OFFSET'
           DEFINE(sym, offsetof(struct str, mem))
                       ^                    ~~~
   include/linux/stddef.h:17:32: note: expanded from macro 'offsetof'
   #define offsetof(TYPE, MEMBER)  __compiler_offsetof(TYPE, MEMBER)
                                   ^                         ~~~~~~
   include/linux/compiler_types.h:140:35: note: expanded from macro '__compiler_offsetof'
   #define __compiler_offsetof(a, b)       __builtin_offsetof(a, b)
                                           ^                     ~
   include/linux/kbuild.h:6:62: note: expanded from macro 'DEFINE'
           asm volatile("\n.ascii \"->" #sym " %0 " #val "\"" : : "i" (val))
                                                                       ^~~
   arch/riscv/kernel/asm-offsets.c:29:2: error: no member named 'thread' in 'task_struct'
           OFFSET(TASK_THREAD_S9, task_struct, thread.s[9]);
           ^                                   ~~~~~~
   include/linux/kbuild.h:11:14: note: expanded from macro 'OFFSET'
           DEFINE(sym, offsetof(struct str, mem))
                       ^                    ~~~
   include/linux/stddef.h:17:32: note: expanded from macro 'offsetof'
   #define offsetof(TYPE, MEMBER)  __compiler_offsetof(TYPE, MEMBER)
                                   ^                         ~~~~~~
   include/linux/compiler_types.h:140:35: note: expanded from macro '__compiler_offsetof'
   #define __compiler_offsetof(a, b)       __builtin_offsetof(a, b)
                                           ^                     ~
   include/linux/kbuild.h:6:62: note: expanded from macro 'DEFINE'
           asm volatile("\n.ascii \"->" #sym " %0 " #val "\"" : : "i" (val))
                                                                       ^~~
   arch/riscv/kernel/asm-offsets.c:30:2: error: no member named 'thread' in 'task_struct'
           OFFSET(TASK_THREAD_S10, task_struct, thread.s[10]);
           ^                                    ~~~~~~
   include/linux/kbuild.h:11:14: note: expanded from macro 'OFFSET'
           DEFINE(sym, offsetof(struct str, mem))
                       ^                    ~~~
   include/linux/stddef.h:17:32: note: expanded from macro 'offsetof'
   #define offsetof(TYPE, MEMBER)  __compiler_offsetof(TYPE, MEMBER)
                                   ^                         ~~~~~~
   include/linux/compiler_types.h:140:35: note: expanded from macro '__compiler_offsetof'
   #define __compiler_offsetof(a, b)       __builtin_offsetof(a, b)
                                           ^                     ~
   include/linux/kbuild.h:6:62: note: expanded from macro 'DEFINE'
           asm volatile("\n.ascii \"->" #sym " %0 " #val "\"" : : "i" (val))
                                                                       ^~~
   arch/riscv/kernel/asm-offsets.c:31:2: error: no member named 'thread' in 'task_struct'
           OFFSET(TASK_THREAD_S11, task_struct, thread.s[11]);
           ^                                    ~~~~~~
   include/linux/kbuild.h:11:14: note: expanded from macro 'OFFSET'
           DEFINE(sym, offsetof(struct str, mem))
                       ^                    ~~~
   include/linux/stddef.h:17:32: note: expanded from macro 'offsetof'
   #define offsetof(TYPE, MEMBER)  __compiler_offsetof(TYPE, MEMBER)
                                   ^                         ~~~~~~
   include/linux/compiler_types.h:140:35: note: expanded from macro '__compiler_offsetof'
   #define __compiler_offsetof(a, b)       __builtin_offsetof(a, b)
                                           ^                     ~
   include/linux/kbuild.h:6:62: note: expanded from macro 'DEFINE'
           asm volatile("\n.ascii \"->" #sym " %0 " #val "\"" : : "i" (val))
                                                                       ^~~
>> arch/riscv/kernel/asm-offsets.c:32:2: error: no member named 'thread_info' in 'task_struct'
           OFFSET(TASK_TI_FLAGS, task_struct, thread_info.flags);
           ^                                  ~~~~~~~~~~~
   include/linux/kbuild.h:11:14: note: expanded from macro 'OFFSET'
           DEFINE(sym, offsetof(struct str, mem))
                       ^                    ~~~
   include/linux/stddef.h:17:32: note: expanded from macro 'offsetof'
   #define offsetof(TYPE, MEMBER)  __compiler_offsetof(TYPE, MEMBER)
                                   ^                         ~~~~~~
   include/linux/compiler_types.h:140:35: note: expanded from macro '__compiler_offsetof'
   #define __compiler_offsetof(a, b)       __builtin_offsetof(a, b)
                                           ^                     ~
   include/linux/kbuild.h:6:62: note: expanded from macro 'DEFINE'
           asm volatile("\n.ascii \"->" #sym " %0 " #val "\"" : : "i" (val))
                                                                       ^~~
   arch/riscv/kernel/asm-offsets.c:33:2: error: no member named 'thread_info' in 'task_struct'
           OFFSET(TASK_TI_PREEMPT_COUNT, task_struct, thread_info.preempt_count);
           ^                                          ~~~~~~~~~~~
   include/linux/kbuild.h:11:14: note: expanded from macro 'OFFSET'
           DEFINE(sym, offsetof(struct str, mem))
                       ^                    ~~~
   include/linux/stddef.h:17:32: note: expanded from macro 'offsetof'
   #define offsetof(TYPE, MEMBER)  __compiler_offsetof(TYPE, MEMBER)
                                   ^                         ~~~~~~
   include/linux/compiler_types.h:140:35: note: expanded from macro '__compiler_offsetof'
   #define __compiler_offsetof(a, b)       __builtin_offsetof(a, b)
                                           ^                     ~
   include/linux/kbuild.h:6:62: note: expanded from macro 'DEFINE'
           asm volatile("\n.ascii \"->" #sym " %0 " #val "\"" : : "i" (val))
                                                                       ^~~
   arch/riscv/kernel/asm-offsets.c:34:2: error: no member named 'thread_info' in 'task_struct'
           OFFSET(TASK_TI_KERNEL_SP, task_struct, thread_info.kernel_sp);
           ^                                      ~~~~~~~~~~~
   include/linux/kbuild.h:11:14: note: expanded from macro 'OFFSET'
           DEFINE(sym, offsetof(struct str, mem))
                       ^                    ~~~
   include/linux/stddef.h:17:32: note: expanded from macro 'offsetof'
   #define offsetof(TYPE, MEMBER)  __compiler_offsetof(TYPE, MEMBER)
                                   ^                         ~~~~~~
   include/linux/compiler_types.h:140:35: note: expanded from macro '__compiler_offsetof'
   #define __compiler_offsetof(a, b)       __builtin_offsetof(a, b)
                                           ^                     ~
   include/linux/kbuild.h:6:62: note: expanded from macro 'DEFINE'
           asm volatile("\n.ascii \"->" #sym " %0 " #val "\"" : : "i" (val))
                                                                       ^~~
   arch/riscv/kernel/asm-offsets.c:35:2: error: no member named 'thread_info' in 'task_struct'
           OFFSET(TASK_TI_USER_SP, task_struct, thread_info.user_sp);
           ^                                    ~~~~~~~~~~~
   include/linux/kbuild.h:11:14: note: expanded from macro 'OFFSET'
           DEFINE(sym, offsetof(struct str, mem))
                       ^                    ~~~
   include/linux/stddef.h:17:32: note: expanded from macro 'offsetof'
   #define offsetof(TYPE, MEMBER)  __compiler_offsetof(TYPE, MEMBER)
                                   ^                         ~~~~~~
   include/linux/compiler_types.h:140:35: note: expanded from macro '__compiler_offsetof'
   #define __compiler_offsetof(a, b)       __builtin_offsetof(a, b)
                                           ^                     ~
   include/linux/kbuild.h:6:62: note: expanded from macro 'DEFINE'
           asm volatile("\n.ascii \"->" #sym " %0 " #val "\"" : : "i" (val))
                                                                       ^~~
   arch/riscv/kernel/asm-offsets.c:36:2: error: no member named 'thread_info' in 'task_struct'
           OFFSET(TASK_TI_CPU, task_struct, thread_info.cpu);
           ^                                ~~~~~~~~~~~
   include/linux/kbuild.h:11:14: note: expanded from macro 'OFFSET'
           DEFINE(sym, offsetof(struct str, mem))
                       ^                    ~~~
   include/linux/stddef.h:17:32: note: expanded from macro 'offsetof'
   #define offsetof(TYPE, MEMBER)  __compiler_offsetof(TYPE, MEMBER)
                                   ^                         ~~~~~~
   include/linux/compiler_types.h:140:35: note: expanded from macro '__compiler_offsetof'
   #define __compiler_offsetof(a, b)       __builtin_offsetof(a, b)
                                           ^                     ~
   include/linux/kbuild.h:6:62: note: expanded from macro 'DEFINE'
           asm volatile("\n.ascii \"->" #sym " %0 " #val "\"" : : "i" (val))
                                                                       ^~~
   fatal error: too many errors emitted, stopping now [-ferror-limit=]
   20 errors generated.
--
                       ^                    ~~~
   include/linux/stddef.h:17:32: note: expanded from macro 'offsetof'
   #define offsetof(TYPE, MEMBER)  __compiler_offsetof(TYPE, MEMBER)
                                   ^                         ~~~~~~
   include/linux/compiler_types.h:140:35: note: expanded from macro '__compiler_offsetof'
   #define __compiler_offsetof(a, b)       __builtin_offsetof(a, b)
                                           ^                     ~
   include/linux/kbuild.h:6:62: note: expanded from macro 'DEFINE'
           asm volatile("\n.ascii \"->" #sym " %0 " #val "\"" : : "i" (val))
                                                                       ^~~
   arch/riscv/kernel/asm-offsets.c:26:2: error: no member named 'thread' in 'task_struct'
           OFFSET(TASK_THREAD_S6, task_struct, thread.s[6]);
           ^                                   ~~~~~~
   include/linux/kbuild.h:11:14: note: expanded from macro 'OFFSET'
           DEFINE(sym, offsetof(struct str, mem))
                       ^                    ~~~
   include/linux/stddef.h:17:32: note: expanded from macro 'offsetof'
   #define offsetof(TYPE, MEMBER)  __compiler_offsetof(TYPE, MEMBER)
                                   ^                         ~~~~~~
   include/linux/compiler_types.h:140:35: note: expanded from macro '__compiler_offsetof'
   #define __compiler_offsetof(a, b)       __builtin_offsetof(a, b)
                                           ^                     ~
   include/linux/kbuild.h:6:62: note: expanded from macro 'DEFINE'
           asm volatile("\n.ascii \"->" #sym " %0 " #val "\"" : : "i" (val))
                                                                       ^~~
   arch/riscv/kernel/asm-offsets.c:27:2: error: no member named 'thread' in 'task_struct'
           OFFSET(TASK_THREAD_S7, task_struct, thread.s[7]);
           ^                                   ~~~~~~
   include/linux/kbuild.h:11:14: note: expanded from macro 'OFFSET'
           DEFINE(sym, offsetof(struct str, mem))
                       ^                    ~~~
   include/linux/stddef.h:17:32: note: expanded from macro 'offsetof'
   #define offsetof(TYPE, MEMBER)  __compiler_offsetof(TYPE, MEMBER)
                                   ^                         ~~~~~~
   include/linux/compiler_types.h:140:35: note: expanded from macro '__compiler_offsetof'
   #define __compiler_offsetof(a, b)       __builtin_offsetof(a, b)
                                           ^                     ~
   include/linux/kbuild.h:6:62: note: expanded from macro 'DEFINE'
           asm volatile("\n.ascii \"->" #sym " %0 " #val "\"" : : "i" (val))
                                                                       ^~~
   arch/riscv/kernel/asm-offsets.c:28:2: error: no member named 'thread' in 'task_struct'
           OFFSET(TASK_THREAD_S8, task_struct, thread.s[8]);
           ^                                   ~~~~~~
   include/linux/kbuild.h:11:14: note: expanded from macro 'OFFSET'
           DEFINE(sym, offsetof(struct str, mem))
                       ^                    ~~~
   include/linux/stddef.h:17:32: note: expanded from macro 'offsetof'
   #define offsetof(TYPE, MEMBER)  __compiler_offsetof(TYPE, MEMBER)
                                   ^                         ~~~~~~
   include/linux/compiler_types.h:140:35: note: expanded from macro '__compiler_offsetof'
   #define __compiler_offsetof(a, b)       __builtin_offsetof(a, b)
                                           ^                     ~
   include/linux/kbuild.h:6:62: note: expanded from macro 'DEFINE'
           asm volatile("\n.ascii \"->" #sym " %0 " #val "\"" : : "i" (val))
                                                                       ^~~
   arch/riscv/kernel/asm-offsets.c:29:2: error: no member named 'thread' in 'task_struct'
           OFFSET(TASK_THREAD_S9, task_struct, thread.s[9]);
           ^                                   ~~~~~~
   include/linux/kbuild.h:11:14: note: expanded from macro 'OFFSET'
           DEFINE(sym, offsetof(struct str, mem))
                       ^                    ~~~
   include/linux/stddef.h:17:32: note: expanded from macro 'offsetof'
   #define offsetof(TYPE, MEMBER)  __compiler_offsetof(TYPE, MEMBER)
                                   ^                         ~~~~~~
   include/linux/compiler_types.h:140:35: note: expanded from macro '__compiler_offsetof'
   #define __compiler_offsetof(a, b)       __builtin_offsetof(a, b)
                                           ^                     ~
   include/linux/kbuild.h:6:62: note: expanded from macro 'DEFINE'
           asm volatile("\n.ascii \"->" #sym " %0 " #val "\"" : : "i" (val))
                                                                       ^~~
   arch/riscv/kernel/asm-offsets.c:30:2: error: no member named 'thread' in 'task_struct'
           OFFSET(TASK_THREAD_S10, task_struct, thread.s[10]);
           ^                                    ~~~~~~
   include/linux/kbuild.h:11:14: note: expanded from macro 'OFFSET'
           DEFINE(sym, offsetof(struct str, mem))
                       ^                    ~~~
   include/linux/stddef.h:17:32: note: expanded from macro 'offsetof'
   #define offsetof(TYPE, MEMBER)  __compiler_offsetof(TYPE, MEMBER)
                                   ^                         ~~~~~~
   include/linux/compiler_types.h:140:35: note: expanded from macro '__compiler_offsetof'
   #define __compiler_offsetof(a, b)       __builtin_offsetof(a, b)
                                           ^                     ~
   include/linux/kbuild.h:6:62: note: expanded from macro 'DEFINE'
           asm volatile("\n.ascii \"->" #sym " %0 " #val "\"" : : "i" (val))
                                                                       ^~~
   arch/riscv/kernel/asm-offsets.c:31:2: error: no member named 'thread' in 'task_struct'
           OFFSET(TASK_THREAD_S11, task_struct, thread.s[11]);
           ^                                    ~~~~~~
   include/linux/kbuild.h:11:14: note: expanded from macro 'OFFSET'
           DEFINE(sym, offsetof(struct str, mem))
                       ^                    ~~~
   include/linux/stddef.h:17:32: note: expanded from macro 'offsetof'
   #define offsetof(TYPE, MEMBER)  __compiler_offsetof(TYPE, MEMBER)
                                   ^                         ~~~~~~
   include/linux/compiler_types.h:140:35: note: expanded from macro '__compiler_offsetof'
   #define __compiler_offsetof(a, b)       __builtin_offsetof(a, b)
                                           ^                     ~
   include/linux/kbuild.h:6:62: note: expanded from macro 'DEFINE'
           asm volatile("\n.ascii \"->" #sym " %0 " #val "\"" : : "i" (val))
                                                                       ^~~
>> arch/riscv/kernel/asm-offsets.c:32:2: error: no member named 'thread_info' in 'task_struct'
           OFFSET(TASK_TI_FLAGS, task_struct, thread_info.flags);
           ^                                  ~~~~~~~~~~~
   include/linux/kbuild.h:11:14: note: expanded from macro 'OFFSET'
           DEFINE(sym, offsetof(struct str, mem))
                       ^                    ~~~
   include/linux/stddef.h:17:32: note: expanded from macro 'offsetof'
   #define offsetof(TYPE, MEMBER)  __compiler_offsetof(TYPE, MEMBER)
                                   ^                         ~~~~~~
   include/linux/compiler_types.h:140:35: note: expanded from macro '__compiler_offsetof'
   #define __compiler_offsetof(a, b)       __builtin_offsetof(a, b)
                                           ^                     ~
   include/linux/kbuild.h:6:62: note: expanded from macro 'DEFINE'
           asm volatile("\n.ascii \"->" #sym " %0 " #val "\"" : : "i" (val))
                                                                       ^~~
   arch/riscv/kernel/asm-offsets.c:33:2: error: no member named 'thread_info' in 'task_struct'
           OFFSET(TASK_TI_PREEMPT_COUNT, task_struct, thread_info.preempt_count);
           ^                                          ~~~~~~~~~~~
   include/linux/kbuild.h:11:14: note: expanded from macro 'OFFSET'
           DEFINE(sym, offsetof(struct str, mem))
                       ^                    ~~~
   include/linux/stddef.h:17:32: note: expanded from macro 'offsetof'
   #define offsetof(TYPE, MEMBER)  __compiler_offsetof(TYPE, MEMBER)
                                   ^                         ~~~~~~
   include/linux/compiler_types.h:140:35: note: expanded from macro '__compiler_offsetof'
   #define __compiler_offsetof(a, b)       __builtin_offsetof(a, b)
                                           ^                     ~
   include/linux/kbuild.h:6:62: note: expanded from macro 'DEFINE'
           asm volatile("\n.ascii \"->" #sym " %0 " #val "\"" : : "i" (val))
                                                                       ^~~
   arch/riscv/kernel/asm-offsets.c:34:2: error: no member named 'thread_info' in 'task_struct'
           OFFSET(TASK_TI_KERNEL_SP, task_struct, thread_info.kernel_sp);
           ^                                      ~~~~~~~~~~~
   include/linux/kbuild.h:11:14: note: expanded from macro 'OFFSET'
           DEFINE(sym, offsetof(struct str, mem))
                       ^                    ~~~
   include/linux/stddef.h:17:32: note: expanded from macro 'offsetof'
   #define offsetof(TYPE, MEMBER)  __compiler_offsetof(TYPE, MEMBER)
                                   ^                         ~~~~~~
   include/linux/compiler_types.h:140:35: note: expanded from macro '__compiler_offsetof'
   #define __compiler_offsetof(a, b)       __builtin_offsetof(a, b)
                                           ^                     ~
   include/linux/kbuild.h:6:62: note: expanded from macro 'DEFINE'
           asm volatile("\n.ascii \"->" #sym " %0 " #val "\"" : : "i" (val))
                                                                       ^~~
   arch/riscv/kernel/asm-offsets.c:35:2: error: no member named 'thread_info' in 'task_struct'
           OFFSET(TASK_TI_USER_SP, task_struct, thread_info.user_sp);
           ^                                    ~~~~~~~~~~~
   include/linux/kbuild.h:11:14: note: expanded from macro 'OFFSET'
           DEFINE(sym, offsetof(struct str, mem))
                       ^                    ~~~
   include/linux/stddef.h:17:32: note: expanded from macro 'offsetof'
   #define offsetof(TYPE, MEMBER)  __compiler_offsetof(TYPE, MEMBER)
                                   ^                         ~~~~~~
   include/linux/compiler_types.h:140:35: note: expanded from macro '__compiler_offsetof'
   #define __compiler_offsetof(a, b)       __builtin_offsetof(a, b)
                                           ^                     ~
   include/linux/kbuild.h:6:62: note: expanded from macro 'DEFINE'
           asm volatile("\n.ascii \"->" #sym " %0 " #val "\"" : : "i" (val))
                                                                       ^~~
   arch/riscv/kernel/asm-offsets.c:36:2: error: no member named 'thread_info' in 'task_struct'
           OFFSET(TASK_TI_CPU, task_struct, thread_info.cpu);
           ^                                ~~~~~~~~~~~
   include/linux/kbuild.h:11:14: note: expanded from macro 'OFFSET'
           DEFINE(sym, offsetof(struct str, mem))
                       ^                    ~~~
   include/linux/stddef.h:17:32: note: expanded from macro 'offsetof'
   #define offsetof(TYPE, MEMBER)  __compiler_offsetof(TYPE, MEMBER)
                                   ^                         ~~~~~~
   include/linux/compiler_types.h:140:35: note: expanded from macro '__compiler_offsetof'
   #define __compiler_offsetof(a, b)       __builtin_offsetof(a, b)
                                           ^                     ~
   include/linux/kbuild.h:6:62: note: expanded from macro 'DEFINE'
           asm volatile("\n.ascii \"->" #sym " %0 " #val "\"" : : "i" (val))
                                                                       ^~~
   fatal error: too many errors emitted, stopping now [-ferror-limit=]
   20 errors generated.
   make[2]: *** [scripts/Makefile.build:117: arch/riscv/kernel/asm-offsets.s] Error 1
   make[2]: Target '__build' not remade because of errors.
   make[1]: *** [Makefile:1232: prepare0] Error 2
   make[1]: Target 'prepare' not remade because of errors.
   make: *** [Makefile:215: __sub-make] Error 2
   make: Target 'prepare' not remade because of errors.


vim +32 arch/riscv/kernel/asm-offsets.c

3ae9c3cde51abc Souptick Joarder 2020-12-09  15  
7db91e57a0acde Palmer Dabbelt   2017-07-10  16  void asm_offsets(void)
7db91e57a0acde Palmer Dabbelt   2017-07-10  17  {
7db91e57a0acde Palmer Dabbelt   2017-07-10  18  	OFFSET(TASK_THREAD_RA, task_struct, thread.ra);
7db91e57a0acde Palmer Dabbelt   2017-07-10  19  	OFFSET(TASK_THREAD_SP, task_struct, thread.sp);
7db91e57a0acde Palmer Dabbelt   2017-07-10  20  	OFFSET(TASK_THREAD_S0, task_struct, thread.s[0]);
7db91e57a0acde Palmer Dabbelt   2017-07-10  21  	OFFSET(TASK_THREAD_S1, task_struct, thread.s[1]);
7db91e57a0acde Palmer Dabbelt   2017-07-10  22  	OFFSET(TASK_THREAD_S2, task_struct, thread.s[2]);
7db91e57a0acde Palmer Dabbelt   2017-07-10  23  	OFFSET(TASK_THREAD_S3, task_struct, thread.s[3]);
7db91e57a0acde Palmer Dabbelt   2017-07-10  24  	OFFSET(TASK_THREAD_S4, task_struct, thread.s[4]);
7db91e57a0acde Palmer Dabbelt   2017-07-10  25  	OFFSET(TASK_THREAD_S5, task_struct, thread.s[5]);
7db91e57a0acde Palmer Dabbelt   2017-07-10  26  	OFFSET(TASK_THREAD_S6, task_struct, thread.s[6]);
7db91e57a0acde Palmer Dabbelt   2017-07-10  27  	OFFSET(TASK_THREAD_S7, task_struct, thread.s[7]);
7db91e57a0acde Palmer Dabbelt   2017-07-10  28  	OFFSET(TASK_THREAD_S8, task_struct, thread.s[8]);
7db91e57a0acde Palmer Dabbelt   2017-07-10  29  	OFFSET(TASK_THREAD_S9, task_struct, thread.s[9]);
7db91e57a0acde Palmer Dabbelt   2017-07-10  30  	OFFSET(TASK_THREAD_S10, task_struct, thread.s[10]);
7db91e57a0acde Palmer Dabbelt   2017-07-10  31  	OFFSET(TASK_THREAD_S11, task_struct, thread.s[11]);
7db91e57a0acde Palmer Dabbelt   2017-07-10 @32  	OFFSET(TASK_TI_FLAGS, task_struct, thread_info.flags);

:::::: The code at line 32 was first introduced by commit
:::::: 7db91e57a0acde126a162ababfb1e0ab190130cb RISC-V: Task implementation

:::::: TO: Palmer Dabbelt <palmer@dabbelt.com>
:::::: CC: Palmer Dabbelt <palmer@dabbelt.com>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202106140555.rHuM4Hnq-lkp%40intel.com.

--r5Pyd7+fXNt84Ff3
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
1EWLisiVht7+vyZzfbUtFAIA

--r5Pyd7+fXNt84Ff3--
