Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBVGK573AKGQERZJWYEQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73e.google.com (mail-qk1-x73e.google.com [IPv6:2607:f8b0:4864:20::73e])
	by mail.lfdr.de (Postfix) with ESMTPS id 516161F082A
	for <lists+clang-built-linux@lfdr.de>; Sat,  6 Jun 2020 20:49:58 +0200 (CEST)
Received: by mail-qk1-x73e.google.com with SMTP id d190sf10584097qkc.20
        for <lists+clang-built-linux@lfdr.de>; Sat, 06 Jun 2020 11:49:58 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591469397; cv=pass;
        d=google.com; s=arc-20160816;
        b=xTqGIjkSXTraIWV3MPyIY8GzTvaGTrofoaX1bQBf5n/LWjAENFZFhGckPSAGOimw0R
         /ZKCz2Gof8rZjeprjRQdu0ISgPuHnk6FLSAg5L9pPDX+SAg3MDMrrUTypa+ZV57evB9r
         s32/Qy0IXQnjZEhDROT9el/QfvY4citJg3jcbS/JsIM/da1FMnl51ymANUZg+f7ZqsEW
         toUQwCY2NLWaxzZRBywCHCz70298p/YzZ5S85hbNx2gLt31GbB4UWZZSPORKeCx0DCRG
         I9YfTykvPyZmJuaec0gjFXbLPl53EY3eL2CrhAxsYv1ymtWvGn0fUHWOLAq8TWxxye6o
         OE2g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=J7O1DC9nHPbQ1G0rc9DWc0CN//g6MIzUDK/+rBKc7Dg=;
        b=ivVE9HlraGIrHEQhXkQS8ltluYLR3qsSujk+ufbk3HJ7PBSfn69KKP6kcD2k0zC6XT
         rRgU6RIyFk/1LPMm0Xoam/UhXw4HGZt/fLlDMDwdwVdDnZlAhCJx6/xO/MFwP64gCH9p
         DDzIitiySj73tbESarc+CjWR0A/2Th7ktBWvlziY8GUi3iRt3a71nmf0TJe7+a1/8kpH
         YAB8sWLFPxNoy0t5h6sjDg+7Y7eDtsJwvZd3UbojL4JeOiZN/0e7SAZvZpdywvAp8baz
         nz5wxfKbU+clVDrQG+VmXzDKVutxjWSdLxN75OeTTKW1b1z2oV5yy3j9VVVPM7gMN8KM
         zGIg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.126 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=J7O1DC9nHPbQ1G0rc9DWc0CN//g6MIzUDK/+rBKc7Dg=;
        b=s72B7TbS7oZBm7km+V59nlrf65+4+RTTrU1wmQjUQPC4uJjGU+y6l7iTEb+tBkK4N4
         N62HgxQz12nNO6GSw9x2eAty/Zb0qqRQgKwGZUtR3k+4JTsTK6Il9mGRsgkYjC87UBCo
         a5K98S69ZPa9vdqxrSiSeknE/VzEFKiQTPPrZcmaKaVRV3VNApEdXThMVhIMBtOqwXKg
         cI091SdcDiZ0Rp7uPOjsyEdzgUF6uM10KY0QS26LpLHBZSz4+8KEaexvcuPUg5ViIcrS
         qfw5/AjGLBNLqUC1IgTcWzkkxUiCwVh89vS7TxE6WBrQAm5b++zRcxDR6tpXHOrgZkmI
         2Hcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=J7O1DC9nHPbQ1G0rc9DWc0CN//g6MIzUDK/+rBKc7Dg=;
        b=B1wuG1HlfG7xdxepNb+H+as8vl6NcTj8KTGfKzF1Md+YSsV4sA9cSqZUQvT+c7sqcL
         ncRJhtu4wPLnu7r21gbAOKvvkku6bAapzext3p7dae7p2VqKm6fA0C8qjFAjOuhHfXiG
         N2st8i50JE2r49SQtmV4TuH79ujrdYYOyRK20FSU1n3niVY6S4LW+ULK8NjFdm8ICs5f
         6vwnIdMrx9fZOwqI8Geb1KOgMLggWXkqpL1ZS+TOXYHgqP9mB+Ud/QzCyBLkjoEubTmc
         /FDW3FD3w+kXn7kvxHIkPpOtH4maNTt7ATjIv+R0KYzrJlheSgLEbN88NHseVibI6e4M
         hdYQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532fEfADfrk8RzO2D1u1o9q2qWBLRurHLIWrK5a7FAaftFsN0STx
	978Sck5mI9LY3cG9dNas0Ps=
X-Google-Smtp-Source: ABdhPJwSSr12Vl9Ynyu+2i1y0bjMXgyYNFWqTBeTbOI6Un5Q4FuHZnjdopqaQfYoW1WhKY1YH2EjYg==
X-Received: by 2002:ac8:6a08:: with SMTP id t8mr16238949qtr.271.1591469396670;
        Sat, 06 Jun 2020 11:49:56 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ad4:4f30:: with SMTP id fc16ls3046055qvb.2.gmail; Sat, 06
 Jun 2020 11:49:56 -0700 (PDT)
X-Received: by 2002:a05:6214:10cb:: with SMTP id r11mr15660817qvs.203.1591469396251;
        Sat, 06 Jun 2020 11:49:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591469396; cv=none;
        d=google.com; s=arc-20160816;
        b=spIPvhRZr00+Q7nGU2jS+Diz5pW3Uo9ASoruY2NbdZO7wCRJHK7DyJetobMsu8MIyz
         02b3iAYmyuQsz/9mi/UHfTdwUROCzGv02heFDGXa3YK6VOEa3O+Ivp36J+o2OLLKBss7
         ZrgbhJF86WpGZtQ7JwtpqtbsM5vm/Ot1epCxd/vECRd51AzFoYcsXXyCRRAhVvOVBKbQ
         iYy1DGQOvOulr3VSE0cNZVKB1LthWl6+agOabFvjEPS77tde1J3ukzThc2PM0+dLTCKM
         w8ZskKW9gcSF8Gtmc1/YJV7hdvN+5wt1xZPhXg5QCxlGLO+qx/BYLNhIcfVywUjImvPA
         7HFg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=Fz78mwDEcPf1eeyyVdxtdB6OaFdZ4dSrh0esPuV/XkQ=;
        b=yxA2+CP5VwvBB8yN7mr+YbiyvNY9444KZSPB9WhN++P+QOXFmOoelLx3eO/PeIwL4q
         hpHSUqAxNVRYEVCGym4gemTnjLcnrsudsOeCVvYyulwPqWHV3yHbmsG35FvbguJ/1/bG
         agwboXH3tZ4rKtFYQ13XzP1bmyvDul27HISBEPAQ0DMUdzDZLQdUB8ZvbHe1++CsSZE1
         7Nn3oFQAIIIKRyFh+x63ePnrchGb5UbKSIZJk+3vMIyZeG5yH8koUIqEvGMvcrtPDf9p
         0/FebjBWgZxSLLPpIms05QtHR/jtNlZka0Zp0QSAfL+pRojW74lqDC0V1qTT3U63vL2W
         neSQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.126 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga18.intel.com (mga18.intel.com. [134.134.136.126])
        by gmr-mx.google.com with ESMTPS id y21si177344qka.2.2020.06.06.11.49.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 06 Jun 2020 11:49:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.126 as permitted sender) client-ip=134.134.136.126;
IronPort-SDR: CB+pNpcLjFvEUDTrce8BxO9qZSM+eZsOOo5PVDs9eymAaMIOK9fgWxJkAiurL7T2vQD3/KbNP/
 YGcctJ/RiDaA==
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
  by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 06 Jun 2020 11:49:54 -0700
IronPort-SDR: Xv5UwXyP6ngpLMHMq4fK5lqtlGQkBrP+UKKYNuIMA3RQxGnlJ7ohdQiGaTtGYZ1AZvq829/LHt
 3IJV1lwjBw/g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,481,1583222400"; 
   d="gz'50?scan'50,208,50";a="305546717"
Received: from lkp-server01.sh.intel.com (HELO 3b764b36c89c) ([10.239.97.150])
  by orsmga008.jf.intel.com with ESMTP; 06 Jun 2020 11:49:51 -0700
Received: from kbuild by 3b764b36c89c with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1jhdt9-00001T-7O; Sat, 06 Jun 2020 18:49:51 +0000
Date: Sun, 7 Jun 2020 02:49:18 +0800
From: kernel test robot <lkp@intel.com>
To: Vincent Chen <vincent.chen@sifive.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	Palmer Dabbelt <palmerdabbelt@google.com>,
	Atish Patra <atish.patra@wdc.com>
Subject: [riscv:for-next 2/11] include/asm-generic/preempt.h:11:19: error:
 implicit declaration of function 'current_thread_info'
Message-ID: <202006070215.MjntVHQD%lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="5vNYLRcllDrimb99"
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


--5vNYLRcllDrimb99
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/riscv/linux.git for-next
head:   e4bdb161fbb94e741a060e6dc69ab690ab5624da
commit: 512022c8fb5ff1fe7c734b00d1bab0f9485dcf01 [2/11] riscv: use vDSO common flow to reduce the latency of the time-related functions
config: riscv-randconfig-r023-20200607 (attached as .config)
compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project e429cffd4f228f70c1d9df0e5d77c08590dd9766)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install riscv cross compiling tool for clang build
        # apt-get install binutils-riscv64-linux-gnu
        git checkout 512022c8fb5ff1fe7c734b00d1bab0f9485dcf01
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=riscv 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All error/warnings (new ones prefixed by >>, old ones prefixed by <<):

In file included from arch/riscv/kernel/asm-offsets.c:10:
In file included from include/linux/sched.h:14:
In file included from include/linux/pid.h:5:
In file included from include/linux/rculist.h:11:
In file included from include/linux/rcupdate.h:27:
In file included from include/linux/preempt.h:78:
In file included from ./arch/riscv/include/generated/asm/preempt.h:1:
>> include/asm-generic/preempt.h:11:19: error: implicit declaration of function 'current_thread_info' [-Werror,-Wimplicit-function-declaration]
return READ_ONCE(current_thread_info()->preempt_count);
^
>> include/asm-generic/preempt.h:11:42: error: member reference type 'int' is not a pointer
return READ_ONCE(current_thread_info()->preempt_count);
~~~~~~~~~~~~~~~~~~~~~  ^
include/linux/compiler.h:322:34: note: expanded from macro 'READ_ONCE'
#define READ_ONCE(x) __READ_ONCE(x, 1)
^
include/linux/compiler.h:314:17: note: expanded from macro '__READ_ONCE'
union { typeof(x) __val; char __c[1]; } __u;                                              ^
In file included from arch/riscv/kernel/asm-offsets.c:10:
In file included from include/linux/sched.h:14:
In file included from include/linux/pid.h:5:
In file included from include/linux/rculist.h:11:
In file included from include/linux/rcupdate.h:27:
In file included from include/linux/preempt.h:78:
In file included from ./arch/riscv/include/generated/asm/preempt.h:1:
>> include/asm-generic/preempt.h:11:42: error: member reference type 'int' is not a pointer
return READ_ONCE(current_thread_info()->preempt_count);
~~~~~~~~~~~~~~~~~~~~~  ^
include/linux/compiler.h:322:34: note: expanded from macro 'READ_ONCE'
#define READ_ONCE(x) __READ_ONCE(x, 1)
^
include/linux/compiler.h:316:22: note: expanded from macro '__READ_ONCE'
__read_once_size(&(x), __u.__c, sizeof(x));                                                   ^
In file included from arch/riscv/kernel/asm-offsets.c:10:
In file included from include/linux/sched.h:14:
In file included from include/linux/pid.h:5:
In file included from include/linux/rculist.h:11:
In file included from include/linux/rcupdate.h:27:
In file included from include/linux/preempt.h:78:
In file included from ./arch/riscv/include/generated/asm/preempt.h:1:
>> include/asm-generic/preempt.h:11:42: error: member reference type 'int' is not a pointer
return READ_ONCE(current_thread_info()->preempt_count);
~~~~~~~~~~~~~~~~~~~~~  ^
include/linux/compiler.h:322:34: note: expanded from macro 'READ_ONCE'
#define READ_ONCE(x) __READ_ONCE(x, 1)
^
include/linux/compiler.h:316:42: note: expanded from macro '__READ_ONCE'
__read_once_size(&(x), __u.__c, sizeof(x));                                                                       ^
In file included from arch/riscv/kernel/asm-offsets.c:10:
In file included from include/linux/sched.h:14:
In file included from include/linux/pid.h:5:
In file included from include/linux/rculist.h:11:
In file included from include/linux/rcupdate.h:27:
In file included from include/linux/preempt.h:78:
In file included from ./arch/riscv/include/generated/asm/preempt.h:1:
>> include/asm-generic/preempt.h:11:42: error: member reference type 'int' is not a pointer
return READ_ONCE(current_thread_info()->preempt_count);
~~~~~~~~~~~~~~~~~~~~~  ^
include/linux/compiler.h:322:34: note: expanded from macro 'READ_ONCE'
#define READ_ONCE(x) __READ_ONCE(x, 1)
^
include/linux/compiler.h:318:30: note: expanded from macro '__READ_ONCE'
__read_once_size_nocheck(&(x), __u.__c, sizeof(x));                                                   ^
In file included from arch/riscv/kernel/asm-offsets.c:10:
In file included from include/linux/sched.h:14:
In file included from include/linux/pid.h:5:
In file included from include/linux/rculist.h:11:
In file included from include/linux/rcupdate.h:27:
In file included from include/linux/preempt.h:78:
In file included from ./arch/riscv/include/generated/asm/preempt.h:1:
>> include/asm-generic/preempt.h:11:42: error: member reference type 'int' is not a pointer
return READ_ONCE(current_thread_info()->preempt_count);
~~~~~~~~~~~~~~~~~~~~~  ^
include/linux/compiler.h:322:34: note: expanded from macro 'READ_ONCE'
#define READ_ONCE(x) __READ_ONCE(x, 1)
^
include/linux/compiler.h:318:50: note: expanded from macro '__READ_ONCE'
__read_once_size_nocheck(&(x), __u.__c, sizeof(x));                                                                       ^
In file included from arch/riscv/kernel/asm-offsets.c:10:
In file included from include/linux/sched.h:14:
In file included from include/linux/pid.h:5:
In file included from include/linux/rculist.h:11:
In file included from include/linux/rcupdate.h:27:
In file included from include/linux/preempt.h:78:
In file included from ./arch/riscv/include/generated/asm/preempt.h:1:
>> include/asm-generic/preempt.h:11:9: error: returning 'void' from a function with incompatible result type 'int'
return READ_ONCE(current_thread_info()->preempt_count);
^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
include/linux/compiler.h:322:22: note: expanded from macro 'READ_ONCE'
#define READ_ONCE(x) __READ_ONCE(x, 1)
^~~~~~~~~~~~~~~~~
include/linux/compiler.h:312:36: note: expanded from macro '__READ_ONCE'
#define __READ_ONCE(x, check)                                                                                                                      ^
In file included from arch/riscv/kernel/asm-offsets.c:10:
In file included from include/linux/sched.h:14:
In file included from include/linux/pid.h:5:
In file included from include/linux/rculist.h:11:
In file included from include/linux/rcupdate.h:27:
In file included from include/linux/preempt.h:78:
In file included from ./arch/riscv/include/generated/asm/preempt.h:1:
include/asm-generic/preempt.h:16:10: error: implicit declaration of function 'current_thread_info' [-Werror,-Wimplicit-function-declaration]
return &current_thread_info()->preempt_count;
^
include/asm-generic/preempt.h:16:33: error: member reference type 'int' is not a pointer
return &current_thread_info()->preempt_count;
~~~~~~~~~~~~~~~~~~~~~  ^
include/asm-generic/preempt.h:69:36: error: implicit declaration of function 'current_thread_info' [-Werror,-Wimplicit-function-declaration]
return !--*preempt_count_ptr() && tif_need_resched();
^
include/linux/thread_info.h:100:28: note: expanded from macro 'tif_need_resched'
#define tif_need_resched() test_thread_flag(TIF_NEED_RESCHED)
^
include/linux/thread_info.h:98:22: note: expanded from macro 'test_thread_flag'
test_ti_thread_flag(current_thread_info(), flag)
^
In file included from arch/riscv/kernel/asm-offsets.c:10:
In file included from include/linux/sched.h:14:
In file included from include/linux/pid.h:5:
In file included from include/linux/rculist.h:11:
In file included from include/linux/rcupdate.h:27:
In file included from include/linux/preempt.h:78:
In file included from ./arch/riscv/include/generated/asm/preempt.h:1:
>> include/asm-generic/preempt.h:69:36: warning: incompatible integer to pointer conversion passing 'int' to parameter of type 'struct thread_info *' [-Wint-conversion]
return !--*preempt_count_ptr() && tif_need_resched();
^~~~~~~~~~~~~~~~~~
include/linux/thread_info.h:100:28: note: expanded from macro 'tif_need_resched'
#define tif_need_resched() test_thread_flag(TIF_NEED_RESCHED)
^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
include/linux/thread_info.h:98:22: note: expanded from macro 'test_thread_flag'
test_ti_thread_flag(current_thread_info(), flag)
^~~~~~~~~~~~~~~~~~~~~
include/linux/thread_info.h:82:59: note: passing argument to parameter 'ti' here
static inline int test_ti_thread_flag(struct thread_info *ti, int flag)
^
In file included from arch/riscv/kernel/asm-offsets.c:10:
In file included from include/linux/sched.h:14:
In file included from include/linux/pid.h:5:
In file included from include/linux/rculist.h:11:
In file included from include/linux/rcupdate.h:27:
In file included from include/linux/preempt.h:78:
In file included from ./arch/riscv/include/generated/asm/preempt.h:1:
include/asm-generic/preempt.h:78:4: error: implicit declaration of function 'current_thread_info' [-Werror,-Wimplicit-function-declaration]
tif_need_resched());
^
include/linux/thread_info.h:100:28: note: expanded from macro 'tif_need_resched'
#define tif_need_resched() test_thread_flag(TIF_NEED_RESCHED)
^
include/linux/thread_info.h:98:22: note: expanded from macro 'test_thread_flag'
test_ti_thread_flag(current_thread_info(), flag)
^
In file included from arch/riscv/kernel/asm-offsets.c:10:
In file included from include/linux/sched.h:14:
In file included from include/linux/pid.h:5:
In file included from include/linux/rculist.h:11:
In file included from include/linux/rcupdate.h:27:
In file included from include/linux/preempt.h:78:
In file included from ./arch/riscv/include/generated/asm/preempt.h:1:
include/asm-generic/preempt.h:78:4: warning: incompatible integer to pointer conversion passing 'int' to parameter of type 'struct thread_info *' [-Wint-conversion]
tif_need_resched());
^~~~~~~~~~~~~~~~~~
include/linux/thread_info.h:100:28: note: expanded from macro 'tif_need_resched'
#define tif_need_resched() test_thread_flag(TIF_NEED_RESCHED)
^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
include/linux/thread_info.h:98:22: note: expanded from macro 'test_thread_flag'
test_ti_thread_flag(current_thread_info(), flag)
^~~~~~~~~~~~~~~~~~~~~
include/linux/compiler.h:78:42: note: expanded from macro 'unlikely'
# define unlikely(x)    __builtin_expect(!!(x), 0)
^
include/linux/thread_info.h:82:59: note: passing argument to parameter 'ti' here
static inline int test_ti_thread_flag(struct thread_info *ti, int flag)
^
In file included from arch/riscv/kernel/asm-offsets.c:10:
In file included from include/linux/sched.h:14:
In file included from include/linux/pid.h:6:
In file included from include/linux/wait.h:9:
In file included from include/linux/spinlock.h:60:
In file included from arch/riscv/include/asm/mmiowb.h:13:
>> include/asm-generic/mmiowb.h:37:28: error: implicit declaration of function 'current_thread_info' [-Werror,-Wimplicit-function-declaration]
struct mmiowb_state *ms = __mmiowb_state();
^
include/asm-generic/mmiowb.h:30:26: note: expanded from macro '__mmiowb_state'
#define __mmiowb_state()        this_cpu_ptr(&__mmiowb_state)
^
include/linux/percpu-defs.h:252:27: note: expanded from macro 'this_cpu_ptr'
#define this_cpu_ptr(ptr) raw_cpu_ptr(ptr)
^
include/linux/percpu-defs.h:242:2: note: expanded from macro 'raw_cpu_ptr'
arch_raw_cpu_ptr(ptr);                                                     ^
include/asm-generic/percpu.h:44:53: note: expanded from macro 'arch_raw_cpu_ptr'
#define arch_raw_cpu_ptr(ptr) SHIFT_PERCPU_PTR(ptr, __my_cpu_offset)
^
include/asm-generic/percpu.h:31:40: note: expanded from macro '__my_cpu_offset'
#define __my_cpu_offset per_cpu_offset(raw_smp_processor_id())
^
arch/riscv/include/asm/smp.h:44:33: note: expanded from macro 'raw_smp_processor_id'
#define raw_smp_processor_id() (current_thread_info()->cpu)
^
In file included from arch/riscv/kernel/asm-offsets.c:10:
In file included from include/linux/sched.h:14:
In file included from include/linux/pid.h:6:
In file included from include/linux/wait.h:9:
In file included from include/linux/spinlock.h:60:
In file included from arch/riscv/include/asm/mmiowb.h:13:
>> include/asm-generic/mmiowb.h:37:28: error: member reference type 'int' is not a pointer
struct mmiowb_state *ms = __mmiowb_state();
^~~~~~~~~~~~~~~~
include/asm-generic/mmiowb.h:30:26: note: expanded from macro '__mmiowb_state'
#define __mmiowb_state()        this_cpu_ptr(&__mmiowb_state)
^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
include/linux/percpu-defs.h:252:27: note: expanded from macro 'this_cpu_ptr'
#define this_cpu_ptr(ptr) raw_cpu_ptr(ptr)
^~~~~~~~~~~~~~~~
include/linux/percpu-defs.h:242:2: note: expanded from macro 'raw_cpu_ptr'
arch_raw_cpu_ptr(ptr);                                                     ^~~~~~~~~~~~~~~~~~~~~
note: (skipping 3 expansions in backtrace; use -fmacro-backtrace-limit=0 to see all)
include/asm-generic/percpu.h:21:45: note: expanded from macro 'per_cpu_offset'
#define per_cpu_offset(x) (__per_cpu_offset[x])
^
include/linux/percpu-defs.h:231:56: note: expanded from macro 'SHIFT_PERCPU_PTR'
RELOC_HIDE((typeof(*(__p)) __kernel __force *)(__p), (__offset))
^~~~~~~~
include/linux/compiler.h:219:29: note: expanded from macro 'RELOC_HIDE'
(typeof(ptr)) (__ptr + (off)); })
^~~
In file included from arch/riscv/kernel/asm-offsets.c:10:
In file included from include/linux/sched.h:14:
In file included from include/linux/pid.h:6:
In file included from include/linux/wait.h:9:
In file included from include/linux/spinlock.h:60:
In file included from arch/riscv/include/asm/mmiowb.h:13:
>> include/asm-generic/mmiowb.h:37:23: warning: incompatible integer to pointer conversion initializing 'struct mmiowb_state *' with an expression of type 'unsigned long' [-Wint-conversion]
struct mmiowb_state *ms = __mmiowb_state();
^    ~~~~~~~~~~~~~~~~
include/asm-generic/mmiowb.h:43:28: error: implicit declaration of function 'current_thread_info' [-Werror,-Wimplicit-function-declaration]
struct mmiowb_state *ms = __mmiowb_state();
^
include/asm-generic/mmiowb.h:30:26: note: expanded from macro '__mmiowb_state'
#define __mmiowb_state()        this_cpu_ptr(&__mmiowb_state)
^
include/linux/percpu-defs.h:252:27: note: expanded from macro 'this_cpu_ptr'
#define this_cpu_ptr(ptr) raw_cpu_ptr(ptr)
^
include/linux/percpu-defs.h:242:2: note: expanded from macro 'raw_cpu_ptr'
arch_raw_cpu_ptr(ptr);                                                     ^
include/asm-generic/percpu.h:44:53: note: expanded from macro 'arch_raw_cpu_ptr'
#define arch_raw_cpu_ptr(ptr) SHIFT_PERCPU_PTR(ptr, __my_cpu_offset)
^
include/asm-generic/percpu.h:31:40: note: expanded from macro '__my_cpu_offset'
#define __my_cpu_offset per_cpu_offset(raw_smp_processor_id())
^
arch/riscv/include/asm/smp.h:44:33: note: expanded from macro 'raw_smp_processor_id'
#define raw_smp_processor_id() (current_thread_info()->cpu)
^
In file included from arch/riscv/kernel/asm-offsets.c:10:
In file included from include/linux/sched.h:14:
In file included from include/linux/pid.h:6:
In file included from include/linux/wait.h:9:
In file included from include/linux/spinlock.h:60:
In file included from arch/riscv/include/asm/mmiowb.h:13:
include/asm-generic/mmiowb.h:43:28: error: member reference type 'int' is not a pointer
struct mmiowb_state *ms = __mmiowb_state();
^~~~~~~~~~~~~~~~
include/asm-generic/mmiowb.h:30:26: note: expanded from macro '__mmiowb_state'
#define __mmiowb_state()        this_cpu_ptr(&__mmiowb_state)
^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
include/linux/percpu-defs.h:252:27: note: expanded from macro 'this_cpu_ptr'
#define this_cpu_ptr(ptr) raw_cpu_ptr(ptr)
^~~~~~~~~~~~~~~~
include/linux/percpu-defs.h:242:2: note: expanded from macro 'raw_cpu_ptr'
arch_raw_cpu_ptr(ptr);                                                     ^~~~~~~~~~~~~~~~~~~~~
note: (skipping 3 expansions in backtrace; use -fmacro-backtrace-limit=0 to see all)
include/asm-generic/percpu.h:21:45: note: expanded from macro 'per_cpu_offset'
#define per_cpu_offset(x) (__per_cpu_offset[x])
^
include/linux/percpu-defs.h:231:56: note: expanded from macro 'SHIFT_PERCPU_PTR'
RELOC_HIDE((typeof(*(__p)) __kernel __force *)(__p), (__offset))
^~~~~~~~
include/linux/compiler.h:219:29: note: expanded from macro 'RELOC_HIDE'
(typeof(ptr)) (__ptr + (off)); })
^~~
In file included from arch/riscv/kernel/asm-offsets.c:10:
In file included from include/linux/sched.h:14:
In file included from include/linux/pid.h:6:
In file included from include/linux/wait.h:9:
In file included from include/linux/spinlock.h:60:
In file included from arch/riscv/include/asm/mmiowb.h:13:
include/asm-generic/mmiowb.h:43:23: warning: incompatible integer to pointer conversion initializing 'struct mmiowb_state *' with an expression of type 'unsigned long' [-Wint-conversion]
struct mmiowb_state *ms = __mmiowb_state();
^    ~~~~~~~~~~~~~~~~
include/asm-generic/mmiowb.h:49:28: error: implicit declaration of function 'current_thread_info' [-Werror,-Wimplicit-function-declaration]
struct mmiowb_state *ms = __mmiowb_state();
^
include/asm-generic/mmiowb.h:30:26: note: expanded from macro '__mmiowb_state'
#define __mmiowb_state()        this_cpu_ptr(&__mmiowb_state)
^
include/linux/percpu-defs.h:252:27: note: expanded from macro 'this_cpu_ptr'
#define this_cpu_ptr(ptr) raw_cpu_ptr(ptr)
^
include/linux/percpu-defs.h:242:2: note: expanded from macro 'raw_cpu_ptr'
arch_raw_cpu_ptr(ptr);                                                     ^
include/asm-generic/percpu.h:44:53: note: expanded from macro 'arch_raw_cpu_ptr'
#define arch_raw_cpu_ptr(ptr) SHIFT_PERCPU_PTR(ptr, __my_cpu_offset)
^
include/asm-generic/percpu.h:31:40: note: expanded from macro '__my_cpu_offset'
#define __my_cpu_offset per_cpu_offset(raw_smp_processor_id())
^
arch/riscv/include/asm/smp.h:44:33: note: expanded from macro 'raw_smp_processor_id'
#define raw_smp_processor_id() (current_thread_info()->cpu)
^
In file included from arch/riscv/kernel/asm-offsets.c:10:
In file included from include/linux/sched.h:14:
In file included from include/linux/pid.h:6:
In file included from include/linux/wait.h:9:
In file included from include/linux/spinlock.h:60:
In file included from arch/riscv/include/asm/mmiowb.h:13:
include/asm-generic/mmiowb.h:49:28: error: member reference type 'int' is not a pointer
struct mmiowb_state *ms = __mmiowb_state();
^~~~~~~~~~~~~~~~
include/asm-generic/mmiowb.h:30:26: note: expanded from macro '__mmiowb_state'
#define __mmiowb_state()        this_cpu_ptr(&__mmiowb_state)
^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
include/linux/percpu-defs.h:252:27: note: expanded from macro 'this_cpu_ptr'
#define this_cpu_ptr(ptr) raw_cpu_ptr(ptr)
^~~~~~~~~~~~~~~~
include/linux/percpu-defs.h:242:2: note: expanded from macro 'raw_cpu_ptr'
arch_raw_cpu_ptr(ptr);                                                     ^~~~~~~~~~~~~~~~~~~~~
note: (skipping 3 expansions in backtrace; use -fmacro-backtrace-limit=0 to see all)

vim +/current_thread_info +11 include/asm-generic/preempt.h

ba1f14fbe70965 Peter Zijlstra 2013-11-28   8  
a787870924dbd6 Peter Zijlstra 2013-08-14   9  static __always_inline int preempt_count(void)
a787870924dbd6 Peter Zijlstra 2013-08-14  10  {
2e636d5e66c35d Peter Zijlstra 2016-05-16 @11  	return READ_ONCE(current_thread_info()->preempt_count);
a787870924dbd6 Peter Zijlstra 2013-08-14  12  }
a787870924dbd6 Peter Zijlstra 2013-08-14  13  
2e636d5e66c35d Peter Zijlstra 2016-05-16  14  static __always_inline volatile int *preempt_count_ptr(void)
a787870924dbd6 Peter Zijlstra 2013-08-14  15  {
a787870924dbd6 Peter Zijlstra 2013-08-14  16  	return &current_thread_info()->preempt_count;
a787870924dbd6 Peter Zijlstra 2013-08-14  17  }
a787870924dbd6 Peter Zijlstra 2013-08-14  18  
a787870924dbd6 Peter Zijlstra 2013-08-14  19  static __always_inline void preempt_count_set(int pc)
a787870924dbd6 Peter Zijlstra 2013-08-14  20  {
a787870924dbd6 Peter Zijlstra 2013-08-14  21  	*preempt_count_ptr() = pc;
a787870924dbd6 Peter Zijlstra 2013-08-14  22  }
a787870924dbd6 Peter Zijlstra 2013-08-14  23  
01028747559ac6 Peter Zijlstra 2013-08-14  24  /*
01028747559ac6 Peter Zijlstra 2013-08-14  25   * must be macros to avoid header recursion hell
01028747559ac6 Peter Zijlstra 2013-08-14  26   */
01028747559ac6 Peter Zijlstra 2013-08-14  27  #define init_task_preempt_count(p) do { \
609ca066386b2e Peter Zijlstra 2015-09-28  28  	task_thread_info(p)->preempt_count = FORK_PREEMPT_COUNT; \
01028747559ac6 Peter Zijlstra 2013-08-14  29  } while (0)
01028747559ac6 Peter Zijlstra 2013-08-14  30  
01028747559ac6 Peter Zijlstra 2013-08-14  31  #define init_idle_preempt_count(p, cpu) do { \
01028747559ac6 Peter Zijlstra 2013-08-14  32  	task_thread_info(p)->preempt_count = PREEMPT_ENABLED; \
01028747559ac6 Peter Zijlstra 2013-08-14  33  } while (0)
01028747559ac6 Peter Zijlstra 2013-08-14  34  
a787870924dbd6 Peter Zijlstra 2013-08-14  35  static __always_inline void set_preempt_need_resched(void)
a787870924dbd6 Peter Zijlstra 2013-08-14  36  {
a787870924dbd6 Peter Zijlstra 2013-08-14  37  }
a787870924dbd6 Peter Zijlstra 2013-08-14  38  
a787870924dbd6 Peter Zijlstra 2013-08-14  39  static __always_inline void clear_preempt_need_resched(void)
a787870924dbd6 Peter Zijlstra 2013-08-14  40  {
a787870924dbd6 Peter Zijlstra 2013-08-14  41  }
a787870924dbd6 Peter Zijlstra 2013-08-14  42  
a787870924dbd6 Peter Zijlstra 2013-08-14  43  static __always_inline bool test_preempt_need_resched(void)
a787870924dbd6 Peter Zijlstra 2013-08-14  44  {
ba1f14fbe70965 Peter Zijlstra 2013-11-28  45  	return false;
a787870924dbd6 Peter Zijlstra 2013-08-14  46  }
a787870924dbd6 Peter Zijlstra 2013-08-14  47  
bdb43806589096 Peter Zijlstra 2013-09-10  48  /*
bdb43806589096 Peter Zijlstra 2013-09-10  49   * The various preempt_count add/sub methods
bdb43806589096 Peter Zijlstra 2013-09-10  50   */
bdb43806589096 Peter Zijlstra 2013-09-10  51  
bdb43806589096 Peter Zijlstra 2013-09-10  52  static __always_inline void __preempt_count_add(int val)
bdb43806589096 Peter Zijlstra 2013-09-10  53  {
bdb43806589096 Peter Zijlstra 2013-09-10  54  	*preempt_count_ptr() += val;
bdb43806589096 Peter Zijlstra 2013-09-10  55  }
bdb43806589096 Peter Zijlstra 2013-09-10  56  
bdb43806589096 Peter Zijlstra 2013-09-10  57  static __always_inline void __preempt_count_sub(int val)
bdb43806589096 Peter Zijlstra 2013-09-10  58  {
bdb43806589096 Peter Zijlstra 2013-09-10  59  	*preempt_count_ptr() -= val;
bdb43806589096 Peter Zijlstra 2013-09-10  60  }
bdb43806589096 Peter Zijlstra 2013-09-10  61  
bdb43806589096 Peter Zijlstra 2013-09-10  62  static __always_inline bool __preempt_count_dec_and_test(void)
bdb43806589096 Peter Zijlstra 2013-09-10  63  {
ba1f14fbe70965 Peter Zijlstra 2013-11-28  64  	/*
ba1f14fbe70965 Peter Zijlstra 2013-11-28  65  	 * Because of load-store architectures cannot do per-cpu atomic
ba1f14fbe70965 Peter Zijlstra 2013-11-28  66  	 * operations; we cannot use PREEMPT_NEED_RESCHED because it might get
ba1f14fbe70965 Peter Zijlstra 2013-11-28  67  	 * lost.
ba1f14fbe70965 Peter Zijlstra 2013-11-28  68  	 */
ba1f14fbe70965 Peter Zijlstra 2013-11-28 @69  	return !--*preempt_count_ptr() && tif_need_resched();
bdb43806589096 Peter Zijlstra 2013-09-10  70  }
bdb43806589096 Peter Zijlstra 2013-09-10  71  

:::::: The code at line 11 was first introduced by commit
:::::: 2e636d5e66c35dfcbaf617aa8fa963f6847478fe sched/preempt: Fix preempt_count manipulations

:::::: TO: Peter Zijlstra <peterz@infradead.org>
:::::: CC: Ingo Molnar <mingo@kernel.org>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202006070215.MjntVHQD%25lkp%40intel.com.

--5vNYLRcllDrimb99
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--5vNYLRcllDrimb99--
