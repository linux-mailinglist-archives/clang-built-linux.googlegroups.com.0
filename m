Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBRUI2GBAMGQEUNCXB6A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13f.google.com (mail-il1-x13f.google.com [IPv6:2607:f8b0:4864:20::13f])
	by mail.lfdr.de (Postfix) with ESMTPS id B10DB34155E
	for <lists+clang-built-linux@lfdr.de>; Fri, 19 Mar 2021 07:27:19 +0100 (CET)
Received: by mail-il1-x13f.google.com with SMTP id a14sf15588799ilj.4
        for <lists+clang-built-linux@lfdr.de>; Thu, 18 Mar 2021 23:27:19 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1616135238; cv=pass;
        d=google.com; s=arc-20160816;
        b=OSyc4EIZaku4efQ9rUpbuF4hsqQ03R82a4ZfW+lLhh/qjiuf4tPgktCldvddalknkp
         w9kQldmiCjLrM6VV1aUPgO2CB8Nl5NVObE4EMtXyyYQYemMqqrQtIc28dFTytjeqAOFM
         6Bh2F95C8pQAQTjcCXZyALX4L9dJFsQBi3xtz19WqaY8r3a+158TAArflAtO2ri1B3Bd
         rrtCC4mtMWPikNpomJnn0803vObfPO8mWAd529abYAFVoGTMXHhVuH3LAwLM38itBTGU
         fxfaKs0jwEsQ8pJJEM9ANgDieXXIfwwjBtPzvj49kmtt2GzaP+JykbCdNpvpC8tw2fw8
         J8Vw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=oSRK+317lgQsBiSuYW7VQsX6l5lu4iS3aiIqTN5Dx7U=;
        b=HenGrkcFaF+4zavEbzQ8I17rsCvCvzrVDiqfwGkl7bEPxJ3PHwJkDEGvNBeGX67MA/
         bYt5zf2lXoeUswaKQy/po+jRmJ7fA5sc3q2/8LmsEfmWHtzj9RMBD+I8NsTNwAMcjD/l
         wxZq3johsw9YnfoldR0qie4ozz78yVqB2gQEGXLDu1H58rVlAVGisIumzxZFjov2NFsM
         kvmeyn5Nd81HD1YdD14jEf5nEg8SiWQebie4WUwYh8fipBuBr5btWpMQDUJWfpvBqY8b
         gima64qTel9y+g5sm3aj8cTQ6AMiKknDT4qruonyoZ0NESxt7LUMn6koUt2BJg4/ERkm
         iM0g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.126 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=oSRK+317lgQsBiSuYW7VQsX6l5lu4iS3aiIqTN5Dx7U=;
        b=IndSxyCCluak+PRidY/X7S+GJf2YacVewczrbYqenji1ByRPHDARVUZRX+czcDp+Ir
         LsF+6JdSejiSnOLyZoXYUudUdgMs6QuZ0BEeMRY0hiFx4dGDQRX71eKYYf0oCI/Eve/J
         LhOZh5wqVGNcvfB81PBBdOdQana5lFbdb4ASEmAD+NwoondbLbBSFuucKQrSjOi2Btxh
         WAfvmiJEuiw+IBc7dJp94xniFl2xSvI+WSwYPjW0hK3uxgVmaI1nUA9L9jFO/Tnacsl+
         zOjradDknvIL4axsw9MPmStGl/A5MMTknFLzXoVej5Rw3J9ScbUSJeuLWZyYn/m/Lyof
         FJuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=oSRK+317lgQsBiSuYW7VQsX6l5lu4iS3aiIqTN5Dx7U=;
        b=Y77LA+7AHJfp6q/fC1tuz5jlUcHIQM2kvN3ldXF1ZrIbWb8C8SLGNHt/ivTcnxssfD
         I7BwWv0RkczvWIlhJQs1bMQ3aEPW3B0kCJjw2U3khaEr0rw4fxaoqibrSVSuInT9Gu9y
         rCCrXVljbCFYSqBRSS8FzMIom6b5cKOCFblmL0sax9JpIq5/5Uig+9XAIevR67ux8XBg
         XNtB8Iyts7b9tFJ++MvCc/l4Rl/VZwgDDyyqxorn1zRN0K0VS+Opf/IFppyS93o0rn5G
         SoCneLBu+8O9VPL1QM4rFKfOUIZ4+jRDakIj1681NP3gUBqWT6dDU3egR3OBKqDWML0v
         OR8Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533Z8Bhex8LT1bpkiQnFaJYvXj5q20tqnW1fQBy2AVvUsg6trxd2
	umzuMBAy4j93nhL1kiHVOAo=
X-Google-Smtp-Source: ABdhPJyvU1zfsjLdf0vF1PzDmmQwdM1wgFDJ2IlCziGtfc9+mfokysPzpIjwywzn6phirJSX7spEoA==
X-Received: by 2002:a6b:8b16:: with SMTP id n22mr1688563iod.79.1616135238500;
        Thu, 18 Mar 2021 23:27:18 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:da52:: with SMTP id p18ls891317ilq.11.gmail; Thu, 18 Mar
 2021 23:27:18 -0700 (PDT)
X-Received: by 2002:a05:6e02:dc5:: with SMTP id l5mr1606598ilj.218.1616135238025;
        Thu, 18 Mar 2021 23:27:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1616135238; cv=none;
        d=google.com; s=arc-20160816;
        b=wo0M1/hFENzG2Ve6wvaocixyx4cz2jyfLeV75luUOm5zUVxk5wKYbt2WIXDpZrxF5I
         zGjm9DI8Ux5C3v9qKSCba6rMD4hK/k+z9uV6qnWi2ZtlOfR5TK8xCuJ6yzsl2LD5t85p
         RLwxmfCN4Q33BvzPvbor4yMKhd0W2eEa0I+wbzIo0xNU5IDV8sHEp73O45NX7VjlvyUq
         p6Qb8dchEROr3FxNJyBoStNl4c+b4gsXIt2m7+1kpIuCcll5ssRyXl98LR6P2XEKlDmn
         t8qPJER/TBpxRkeQZA3uxWctqLkP8zNeArR1LX05Isg20GPRFZwM+J5iNN7vWCimxQT5
         3kEg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=7+HqxbUnLxd/YFuKWO4iDM5SnHuAeQVVdcYIJfIN8PM=;
        b=nqYt6PzCogLvAWvzvfDzfFwuRZPy/Di8mEDcsvcEJK7uyYsFxjhDcOlpzOgdClEqJS
         LgS3m4vkf+6HvI53rP8BiwgUj2oMyuWfPO2WFI4QQtsotZk13PKRRGTsyET5Smn0+5Hk
         A46+NJNeOcswH/JiKa28bRvceZ3F1Q4tUHwZ+69gBc5CStzC2tO5yigAxXu5n05sKlGp
         YPTjmWHEGxzZCBIBSkYkeM5gQ2/3qUgdLCpzxYTVI7w4SD4UYd0mQBxvfsmBNj/kGdEB
         AliC2Jm6PMA0oV3mMtJcWtxz4+63HrjL/tABvsp98BTb4j/TNfeiDp444mOv87P7QpjZ
         Ixyw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.126 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga18.intel.com (mga18.intel.com. [134.134.136.126])
        by gmr-mx.google.com with ESMTPS id g10si319660ioo.0.2021.03.18.23.27.17
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 18 Mar 2021 23:27:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.126 as permitted sender) client-ip=134.134.136.126;
IronPort-SDR: QW/lAswz4mq3ZMop7+/ApY+hO1aewt/fg3AWRW6EVyI9ItQKrHTPhmIyyPb5bd23aEGvawEXUT
 E6HHr0+USdng==
X-IronPort-AV: E=McAfee;i="6000,8403,9927"; a="177425433"
X-IronPort-AV: E=Sophos;i="5.81,261,1610438400"; 
   d="gz'50?scan'50,208,50";a="177425433"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
  by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 18 Mar 2021 23:27:14 -0700
IronPort-SDR: q6LobdLl7hPGSBL7OBTVESBHA9Cc5ii+b6V8znl5pVYKG+Z5GOceOv49pcywodYe1osI+F1X2h
 1Qhr+u6WEsKQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,261,1610438400"; 
   d="gz'50?scan'50,208,50";a="374851982"
Received: from lkp-server02.sh.intel.com (HELO 1c294c63cb86) ([10.239.97.151])
  by orsmga006.jf.intel.com with ESMTP; 18 Mar 2021 23:27:12 -0700
Received: from kbuild by 1c294c63cb86 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1lN8bH-0001dD-DI; Fri, 19 Mar 2021 06:27:11 +0000
Date: Fri, 19 Mar 2021 14:26:29 +0800
From: kernel test robot <lkp@intel.com>
To: =?iso-8859-1?Q?Micka=EBl_Sala=FCn?= <mic@linux.microsoft.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	linux-security-module@vger.kernel.org,
	James Morris <jamorris@linux.microsoft.com>
Subject: [security:landlock_lsm 8/12] kernel/sys_ni.c:270:1: warning: no
 previous prototype for function '__x64_sys_landlock_create_ruleset'
Message-ID: <202103191423.Jl0jVzfL-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="mP3DRpeJDSE+ciuQ"
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


--mP3DRpeJDSE+ciuQ
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/jmorris/linux-security.git landlock_lsm
head:   f642729df39003efe2a9bfa341a95759d712eb35
commit: c5eafae25eb54cc5354f0675a88a34f03c08f559 [8/12] landlock: Add syscall implementations
config: x86_64-randconfig-r004-20210318 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project fcc1ce00931751ac02498986feb37744e9ace8de)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install x86_64 cross compiling tool for clang build
        # apt-get install binutils-x86-64-linux-gnu
        # https://git.kernel.org/pub/scm/linux/kernel/git/jmorris/linux-security.git/commit/?id=c5eafae25eb54cc5354f0675a88a34f03c08f559
        git remote add security https://git.kernel.org/pub/scm/linux/kernel/git/jmorris/linux-security.git
        git fetch --no-tags security landlock_lsm
        git checkout c5eafae25eb54cc5354f0675a88a34f03c08f559
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

   kernel/sys_ni.c:265:1: warning: no previous prototype for function '__ia32_sys_request_key' [-Wmissing-prototypes]
   COND_SYSCALL(request_key);
   ^
   arch/x86/include/asm/syscall_wrapper.h:257:2: note: expanded from macro 'COND_SYSCALL'
           __IA32_COND_SYSCALL(name)
           ^
   arch/x86/include/asm/syscall_wrapper.h:120:2: note: expanded from macro '__IA32_COND_SYSCALL'
           __COND_SYSCALL(ia32, sys_##name)
           ^
   arch/x86/include/asm/syscall_wrapper.h:83:14: note: expanded from macro '__COND_SYSCALL'
           __weak long __##abi##_##name(const struct pt_regs *__unused)    \
                       ^
   <scratch space>:23:1: note: expanded from here
   __ia32_sys_request_key
   ^
   kernel/sys_ni.c:265:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   arch/x86/include/asm/syscall_wrapper.h:257:2: note: expanded from macro 'COND_SYSCALL'
           __IA32_COND_SYSCALL(name)
           ^
   arch/x86/include/asm/syscall_wrapper.h:120:2: note: expanded from macro '__IA32_COND_SYSCALL'
           __COND_SYSCALL(ia32, sys_##name)
           ^
   arch/x86/include/asm/syscall_wrapper.h:83:9: note: expanded from macro '__COND_SYSCALL'
           __weak long __##abi##_##name(const struct pt_regs *__unused)    \
                  ^
   kernel/sys_ni.c:266:1: warning: no previous prototype for function '__x64_sys_keyctl' [-Wmissing-prototypes]
   COND_SYSCALL(keyctl);
   ^
   arch/x86/include/asm/syscall_wrapper.h:256:2: note: expanded from macro 'COND_SYSCALL'
           __X64_COND_SYSCALL(name)                                        \
           ^
   arch/x86/include/asm/syscall_wrapper.h:100:2: note: expanded from macro '__X64_COND_SYSCALL'
           __COND_SYSCALL(x64, sys_##name)
           ^
   arch/x86/include/asm/syscall_wrapper.h:83:14: note: expanded from macro '__COND_SYSCALL'
           __weak long __##abi##_##name(const struct pt_regs *__unused)    \
                       ^
   <scratch space>:27:1: note: expanded from here
   __x64_sys_keyctl
   ^
   kernel/sys_ni.c:266:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   arch/x86/include/asm/syscall_wrapper.h:256:2: note: expanded from macro 'COND_SYSCALL'
           __X64_COND_SYSCALL(name)                                        \
           ^
   arch/x86/include/asm/syscall_wrapper.h:100:2: note: expanded from macro '__X64_COND_SYSCALL'
           __COND_SYSCALL(x64, sys_##name)
           ^
   arch/x86/include/asm/syscall_wrapper.h:83:9: note: expanded from macro '__COND_SYSCALL'
           __weak long __##abi##_##name(const struct pt_regs *__unused)    \
                  ^
   kernel/sys_ni.c:266:1: warning: no previous prototype for function '__ia32_sys_keyctl' [-Wmissing-prototypes]
   COND_SYSCALL(keyctl);
   ^
   arch/x86/include/asm/syscall_wrapper.h:257:2: note: expanded from macro 'COND_SYSCALL'
           __IA32_COND_SYSCALL(name)
           ^
   arch/x86/include/asm/syscall_wrapper.h:120:2: note: expanded from macro '__IA32_COND_SYSCALL'
           __COND_SYSCALL(ia32, sys_##name)
           ^
   arch/x86/include/asm/syscall_wrapper.h:83:14: note: expanded from macro '__COND_SYSCALL'
           __weak long __##abi##_##name(const struct pt_regs *__unused)    \
                       ^
   <scratch space>:31:1: note: expanded from here
   __ia32_sys_keyctl
   ^
   kernel/sys_ni.c:266:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   arch/x86/include/asm/syscall_wrapper.h:257:2: note: expanded from macro 'COND_SYSCALL'
           __IA32_COND_SYSCALL(name)
           ^
   arch/x86/include/asm/syscall_wrapper.h:120:2: note: expanded from macro '__IA32_COND_SYSCALL'
           __COND_SYSCALL(ia32, sys_##name)
           ^
   arch/x86/include/asm/syscall_wrapper.h:83:9: note: expanded from macro '__COND_SYSCALL'
           __weak long __##abi##_##name(const struct pt_regs *__unused)    \
                  ^
   kernel/sys_ni.c:267:1: warning: no previous prototype for function '__ia32_compat_sys_keyctl' [-Wmissing-prototypes]
   COND_SYSCALL_COMPAT(keyctl);
   ^
   arch/x86/include/asm/syscall_wrapper.h:218:2: note: expanded from macro 'COND_SYSCALL_COMPAT'
           __IA32_COMPAT_COND_SYSCALL(name)                                \
           ^
   arch/x86/include/asm/syscall_wrapper.h:148:2: note: expanded from macro '__IA32_COMPAT_COND_SYSCALL'
           __COND_SYSCALL(ia32, compat_sys_##name)
           ^
   arch/x86/include/asm/syscall_wrapper.h:83:14: note: expanded from macro '__COND_SYSCALL'
           __weak long __##abi##_##name(const struct pt_regs *__unused)    \
                       ^
   <scratch space>:35:1: note: expanded from here
   __ia32_compat_sys_keyctl
   ^
   kernel/sys_ni.c:267:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   arch/x86/include/asm/syscall_wrapper.h:218:2: note: expanded from macro 'COND_SYSCALL_COMPAT'
           __IA32_COMPAT_COND_SYSCALL(name)                                \
           ^
   arch/x86/include/asm/syscall_wrapper.h:148:2: note: expanded from macro '__IA32_COMPAT_COND_SYSCALL'
           __COND_SYSCALL(ia32, compat_sys_##name)
           ^
   arch/x86/include/asm/syscall_wrapper.h:83:9: note: expanded from macro '__COND_SYSCALL'
           __weak long __##abi##_##name(const struct pt_regs *__unused)    \
                  ^
>> kernel/sys_ni.c:270:1: warning: no previous prototype for function '__x64_sys_landlock_create_ruleset' [-Wmissing-prototypes]
   COND_SYSCALL(landlock_create_ruleset);
   ^
   arch/x86/include/asm/syscall_wrapper.h:256:2: note: expanded from macro 'COND_SYSCALL'
           __X64_COND_SYSCALL(name)                                        \
           ^
   arch/x86/include/asm/syscall_wrapper.h:100:2: note: expanded from macro '__X64_COND_SYSCALL'
           __COND_SYSCALL(x64, sys_##name)
           ^
   arch/x86/include/asm/syscall_wrapper.h:83:14: note: expanded from macro '__COND_SYSCALL'
           __weak long __##abi##_##name(const struct pt_regs *__unused)    \
                       ^
   <scratch space>:39:1: note: expanded from here
   __x64_sys_landlock_create_ruleset
   ^
   kernel/sys_ni.c:270:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   arch/x86/include/asm/syscall_wrapper.h:256:2: note: expanded from macro 'COND_SYSCALL'
           __X64_COND_SYSCALL(name)                                        \
           ^
   arch/x86/include/asm/syscall_wrapper.h:100:2: note: expanded from macro '__X64_COND_SYSCALL'
           __COND_SYSCALL(x64, sys_##name)
           ^
   arch/x86/include/asm/syscall_wrapper.h:83:9: note: expanded from macro '__COND_SYSCALL'
           __weak long __##abi##_##name(const struct pt_regs *__unused)    \
                  ^
>> kernel/sys_ni.c:270:1: warning: no previous prototype for function '__ia32_sys_landlock_create_ruleset' [-Wmissing-prototypes]
   COND_SYSCALL(landlock_create_ruleset);
   ^
   arch/x86/include/asm/syscall_wrapper.h:257:2: note: expanded from macro 'COND_SYSCALL'
           __IA32_COND_SYSCALL(name)
           ^
   arch/x86/include/asm/syscall_wrapper.h:120:2: note: expanded from macro '__IA32_COND_SYSCALL'
           __COND_SYSCALL(ia32, sys_##name)
           ^
   arch/x86/include/asm/syscall_wrapper.h:83:14: note: expanded from macro '__COND_SYSCALL'
           __weak long __##abi##_##name(const struct pt_regs *__unused)    \
                       ^
   <scratch space>:43:1: note: expanded from here
   __ia32_sys_landlock_create_ruleset
   ^
   kernel/sys_ni.c:270:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   arch/x86/include/asm/syscall_wrapper.h:257:2: note: expanded from macro 'COND_SYSCALL'
           __IA32_COND_SYSCALL(name)
           ^
   arch/x86/include/asm/syscall_wrapper.h:120:2: note: expanded from macro '__IA32_COND_SYSCALL'
           __COND_SYSCALL(ia32, sys_##name)
           ^
   arch/x86/include/asm/syscall_wrapper.h:83:9: note: expanded from macro '__COND_SYSCALL'
           __weak long __##abi##_##name(const struct pt_regs *__unused)    \
                  ^
>> kernel/sys_ni.c:271:1: warning: no previous prototype for function '__x64_sys_landlock_add_rule' [-Wmissing-prototypes]
   COND_SYSCALL(landlock_add_rule);
   ^
   arch/x86/include/asm/syscall_wrapper.h:256:2: note: expanded from macro 'COND_SYSCALL'
           __X64_COND_SYSCALL(name)                                        \
           ^
   arch/x86/include/asm/syscall_wrapper.h:100:2: note: expanded from macro '__X64_COND_SYSCALL'
           __COND_SYSCALL(x64, sys_##name)
           ^
   arch/x86/include/asm/syscall_wrapper.h:83:14: note: expanded from macro '__COND_SYSCALL'
           __weak long __##abi##_##name(const struct pt_regs *__unused)    \
                       ^
   <scratch space>:47:1: note: expanded from here
   __x64_sys_landlock_add_rule
   ^
   kernel/sys_ni.c:271:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   arch/x86/include/asm/syscall_wrapper.h:256:2: note: expanded from macro 'COND_SYSCALL'
           __X64_COND_SYSCALL(name)                                        \
           ^
   arch/x86/include/asm/syscall_wrapper.h:100:2: note: expanded from macro '__X64_COND_SYSCALL'
           __COND_SYSCALL(x64, sys_##name)
           ^
   arch/x86/include/asm/syscall_wrapper.h:83:9: note: expanded from macro '__COND_SYSCALL'
           __weak long __##abi##_##name(const struct pt_regs *__unused)    \
                  ^
>> kernel/sys_ni.c:271:1: warning: no previous prototype for function '__ia32_sys_landlock_add_rule' [-Wmissing-prototypes]
   COND_SYSCALL(landlock_add_rule);
   ^
   arch/x86/include/asm/syscall_wrapper.h:257:2: note: expanded from macro 'COND_SYSCALL'
           __IA32_COND_SYSCALL(name)
           ^
   arch/x86/include/asm/syscall_wrapper.h:120:2: note: expanded from macro '__IA32_COND_SYSCALL'
           __COND_SYSCALL(ia32, sys_##name)
           ^
   arch/x86/include/asm/syscall_wrapper.h:83:14: note: expanded from macro '__COND_SYSCALL'
           __weak long __##abi##_##name(const struct pt_regs *__unused)    \
                       ^
   <scratch space>:51:1: note: expanded from here
   __ia32_sys_landlock_add_rule
   ^
   kernel/sys_ni.c:271:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   arch/x86/include/asm/syscall_wrapper.h:257:2: note: expanded from macro 'COND_SYSCALL'
           __IA32_COND_SYSCALL(name)
           ^
   arch/x86/include/asm/syscall_wrapper.h:120:2: note: expanded from macro '__IA32_COND_SYSCALL'
           __COND_SYSCALL(ia32, sys_##name)
           ^
   arch/x86/include/asm/syscall_wrapper.h:83:9: note: expanded from macro '__COND_SYSCALL'
           __weak long __##abi##_##name(const struct pt_regs *__unused)    \
                  ^
>> kernel/sys_ni.c:272:1: warning: no previous prototype for function '__x64_sys_landlock_restrict_self' [-Wmissing-prototypes]
   COND_SYSCALL(landlock_restrict_self);
   ^
   arch/x86/include/asm/syscall_wrapper.h:256:2: note: expanded from macro 'COND_SYSCALL'
           __X64_COND_SYSCALL(name)                                        \
           ^
   arch/x86/include/asm/syscall_wrapper.h:100:2: note: expanded from macro '__X64_COND_SYSCALL'
           __COND_SYSCALL(x64, sys_##name)
           ^
   arch/x86/include/asm/syscall_wrapper.h:83:14: note: expanded from macro '__COND_SYSCALL'
           __weak long __##abi##_##name(const struct pt_regs *__unused)    \
                       ^
   <scratch space>:55:1: note: expanded from here
   __x64_sys_landlock_restrict_self
   ^
   kernel/sys_ni.c:272:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   arch/x86/include/asm/syscall_wrapper.h:256:2: note: expanded from macro 'COND_SYSCALL'
           __X64_COND_SYSCALL(name)                                        \
           ^
   arch/x86/include/asm/syscall_wrapper.h:100:2: note: expanded from macro '__X64_COND_SYSCALL'
           __COND_SYSCALL(x64, sys_##name)
           ^
   arch/x86/include/asm/syscall_wrapper.h:83:9: note: expanded from macro '__COND_SYSCALL'
           __weak long __##abi##_##name(const struct pt_regs *__unused)    \
                  ^
>> kernel/sys_ni.c:272:1: warning: no previous prototype for function '__ia32_sys_landlock_restrict_self' [-Wmissing-prototypes]
   COND_SYSCALL(landlock_restrict_self);
   ^
   arch/x86/include/asm/syscall_wrapper.h:257:2: note: expanded from macro 'COND_SYSCALL'
           __IA32_COND_SYSCALL(name)
           ^
   arch/x86/include/asm/syscall_wrapper.h:120:2: note: expanded from macro '__IA32_COND_SYSCALL'
           __COND_SYSCALL(ia32, sys_##name)
           ^
   arch/x86/include/asm/syscall_wrapper.h:83:14: note: expanded from macro '__COND_SYSCALL'
           __weak long __##abi##_##name(const struct pt_regs *__unused)    \
                       ^
   <scratch space>:59:1: note: expanded from here
   __ia32_sys_landlock_restrict_self
   ^
   kernel/sys_ni.c:272:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   arch/x86/include/asm/syscall_wrapper.h:257:2: note: expanded from macro 'COND_SYSCALL'
           __IA32_COND_SYSCALL(name)
           ^
   arch/x86/include/asm/syscall_wrapper.h:120:2: note: expanded from macro '__IA32_COND_SYSCALL'
           __COND_SYSCALL(ia32, sys_##name)
           ^
   arch/x86/include/asm/syscall_wrapper.h:83:9: note: expanded from macro '__COND_SYSCALL'
           __weak long __##abi##_##name(const struct pt_regs *__unused)    \
                  ^
   kernel/sys_ni.c:277:1: warning: no previous prototype for function '__x64_sys_fadvise64_64' [-Wmissing-prototypes]
   COND_SYSCALL(fadvise64_64);
   ^
   arch/x86/include/asm/syscall_wrapper.h:256:2: note: expanded from macro 'COND_SYSCALL'
           __X64_COND_SYSCALL(name)                                        \
           ^
   arch/x86/include/asm/syscall_wrapper.h:100:2: note: expanded from macro '__X64_COND_SYSCALL'
           __COND_SYSCALL(x64, sys_##name)
           ^
   arch/x86/include/asm/syscall_wrapper.h:83:14: note: expanded from macro '__COND_SYSCALL'
           __weak long __##abi##_##name(const struct pt_regs *__unused)    \
                       ^
   <scratch space>:63:1: note: expanded from here
   __x64_sys_fadvise64_64
   ^
   kernel/sys_ni.c:277:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   arch/x86/include/asm/syscall_wrapper.h:256:2: note: expanded from macro 'COND_SYSCALL'
           __X64_COND_SYSCALL(name)                                        \
           ^
   arch/x86/include/asm/syscall_wrapper.h:100:2: note: expanded from macro '__X64_COND_SYSCALL'
           __COND_SYSCALL(x64, sys_##name)
           ^
   arch/x86/include/asm/syscall_wrapper.h:83:9: note: expanded from macro '__COND_SYSCALL'
           __weak long __##abi##_##name(const struct pt_regs *__unused)    \
                  ^
   kernel/sys_ni.c:277:1: warning: no previous prototype for function '__ia32_sys_fadvise64_64' [-Wmissing-prototypes]
   COND_SYSCALL(fadvise64_64);
   ^
   arch/x86/include/asm/syscall_wrapper.h:257:2: note: expanded from macro 'COND_SYSCALL'
           __IA32_COND_SYSCALL(name)
           ^
   arch/x86/include/asm/syscall_wrapper.h:120:2: note: expanded from macro '__IA32_COND_SYSCALL'
           __COND_SYSCALL(ia32, sys_##name)
           ^
   arch/x86/include/asm/syscall_wrapper.h:83:14: note: expanded from macro '__COND_SYSCALL'
           __weak long __##abi##_##name(const struct pt_regs *__unused)    \
                       ^
   <scratch space>:67:1: note: expanded from here
   __ia32_sys_fadvise64_64
   ^
   kernel/sys_ni.c:277:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   arch/x86/include/asm/syscall_wrapper.h:257:2: note: expanded from macro 'COND_SYSCALL'
           __IA32_COND_SYSCALL(name)
           ^
   arch/x86/include/asm/syscall_wrapper.h:120:2: note: expanded from macro '__IA32_COND_SYSCALL'
           __COND_SYSCALL(ia32, sys_##name)
           ^
   arch/x86/include/asm/syscall_wrapper.h:83:9: note: expanded from macro '__COND_SYSCALL'
           __weak long __##abi##_##name(const struct pt_regs *__unused)    \
                  ^
   kernel/sys_ni.c:280:1: warning: no previous prototype for function '__x64_sys_swapon' [-Wmissing-prototypes]
   COND_SYSCALL(swapon);
   ^
   arch/x86/include/asm/syscall_wrapper.h:256:2: note: expanded from macro 'COND_SYSCALL'
           __X64_COND_SYSCALL(name)                                        \
           ^
   arch/x86/include/asm/syscall_wrapper.h:100:2: note: expanded from macro '__X64_COND_SYSCALL'
           __COND_SYSCALL(x64, sys_##name)
           ^
   arch/x86/include/asm/syscall_wrapper.h:83:14: note: expanded from macro '__COND_SYSCALL'
           __weak long __##abi##_##name(const struct pt_regs *__unused)    \
                       ^
   <scratch space>:71:1: note: expanded from here
   __x64_sys_swapon
   ^
   kernel/sys_ni.c:280:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   arch/x86/include/asm/syscall_wrapper.h:256:2: note: expanded from macro 'COND_SYSCALL'
           __X64_COND_SYSCALL(name)                                        \
           ^
   arch/x86/include/asm/syscall_wrapper.h:100:2: note: expanded from macro '__X64_COND_SYSCALL'
           __COND_SYSCALL(x64, sys_##name)
           ^
   arch/x86/include/asm/syscall_wrapper.h:83:9: note: expanded from macro '__COND_SYSCALL'
           __weak long __##abi##_##name(const struct pt_regs *__unused)    \
                  ^
   kernel/sys_ni.c:280:1: warning: no previous prototype for function '__ia32_sys_swapon' [-Wmissing-prototypes]


vim +/__x64_sys_landlock_create_ruleset +270 kernel/sys_ni.c

   268	
   269	/* security/landlock/syscalls.c */
 > 270	COND_SYSCALL(landlock_create_ruleset);
 > 271	COND_SYSCALL(landlock_add_rule);
 > 272	COND_SYSCALL(landlock_restrict_self);
   273	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202103191423.Jl0jVzfL-lkp%40intel.com.

--mP3DRpeJDSE+ciuQ
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
AQA=

--mP3DRpeJDSE+ciuQ--
