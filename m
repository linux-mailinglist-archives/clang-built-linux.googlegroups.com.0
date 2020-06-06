Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBVXK573AKGQE4IQ2MGA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x138.google.com (mail-il1-x138.google.com [IPv6:2607:f8b0:4864:20::138])
	by mail.lfdr.de (Postfix) with ESMTPS id B75051F0869
	for <lists+clang-built-linux@lfdr.de>; Sat,  6 Jun 2020 21:58:15 +0200 (CEST)
Received: by mail-il1-x138.google.com with SMTP id l11sf7740653ils.11
        for <lists+clang-built-linux@lfdr.de>; Sat, 06 Jun 2020 12:58:15 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591473494; cv=pass;
        d=google.com; s=arc-20160816;
        b=qI0Pb7T/m+Hjs/Vr6KnJCCC4/wbMahndYEemWdbwoBoXXRI4NjUs9qH4DhxfVod1o0
         dpexJsMz35voOnfNNZaY6jEC2qGWQkLRfvSCN2whStasNVnRLaVvOF1ILvVmTxLp8p8o
         Inz6oP6etugqMkIg3QnwzDacZEWhxFWRd2YORg2+ZkEQrPAVhuO1HUl5ImCnW5gVWHF3
         cs97GkZkU5LoYFFx7xuxL/0DII6yMDivC0PAPwi53Qz+jBXNu/9wVnNXEU0S6uTvV5ec
         Rrz00+45C6u4OoPwR4JQeVXqqcMr8a0aXZZ/NPj10k+3rJUBQSpWgCAAqK8N+jEgu+6a
         9v+Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=IgsUMakeuDpdNMDlBUlsTz+bjEVZRzwgA2uZ+GdcY9A=;
        b=GULR6l6/VEdaeVvBfFIsCmffYlyceFs/4peEjCJHQW1/U0VBVdUaUkSgx3dLfAlGuk
         qGWKKdp2O+lbZuY9UVfwhUgY/jbr2TUbP4tRMftOzJCSba3KkKwRi9/rF3UruGg1D895
         +eRShBbAizZPbLSZVOVqg8dTx2ktY6de2Y62zpYmLf5fs5W6eF6E2a8vzEY5u8V/qJwZ
         PXbeTIii560o/9PUu0ZNHPdRud4lrgkLnV+4qC8vuPkPamfVeJUXWeD8HU/6itDmA+Lt
         Vso/9H0dnS6fRbCRzyzk/oM8FFYRtuXcg97Ghr6c8bpMfolfSKksXti6vZq/06IPmlc3
         SREQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.93 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=IgsUMakeuDpdNMDlBUlsTz+bjEVZRzwgA2uZ+GdcY9A=;
        b=IYzD/3dsszvyJ01WQ1nq9GfdNsQCMJRvfWT52R11qmr+EII0PAkL7mXeYM+a0NvCNf
         HsAmtBZ3f0EFJE3BC/AaDbpzZPrOWjB515oS8IxZlvVEHWaWUd58OuOVZyPMf6dQkEiV
         zANxfiTYHKqGdJG10+z2gURI5kShC4caqyfksVEFS2+0NKXC/6ZhXhskPt85GPkows5s
         gsNr6Q6Td8JRlT3C/0xSlcfwKRc8yc3e76OyYXTnbAKfB0QpWCPtRR/9nZlnkqzwFFUk
         dzwt4Mhomy95wPePs+eTQMWZZxxajz9/rVJE8FKmn/fcQ4fo+qkk91Ri/nU7TowZtDDK
         AV3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=IgsUMakeuDpdNMDlBUlsTz+bjEVZRzwgA2uZ+GdcY9A=;
        b=Nyb5GJyOmCvR8Imh7rR6feHXChu7FhD6H5loI8JirRwtQZH3KV4bT4ym/UF2fnBXXy
         zj2Trpe0nnzftKyNb1d4eMPskEPSBOpoxCZ3gqtYdF7u3iE1qzQ3QyB/XfIbyCxUfp+O
         yaOI1thuMzEUxmI6hxF1ePByq6GICHRRuVrEHTaIC8PR3zoQvp4BjUzsun4X5/1cGHsK
         gn/gQ6l+CD0/vttSU72XQMc/Evm2FKLFYtyPQyZhgNSOOZ3oEir/DMBhnwTlmI3g3FMe
         hIcpJ3UYtSWPnqAPJ2PO8cmTIlIvZDuRFffpUAKIkCxqcRl7qGbY5sfBnEdTzx75vgNh
         +uag==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531pidHD55JXBx/Ks/Eljl9jcBvt+AyCwjZHoJ87Oh5UnqeznS2Y
	BxzEuIKMap24R/Zh+i+X1sE=
X-Google-Smtp-Source: ABdhPJwOVm+xnAxC4jtI/gO9j2Ba6XRk2Wj/Ai2N9VNaKbL4gEEJdVBrVB4z4aD8xcbR4kfae2QwhA==
X-Received: by 2002:a92:6a06:: with SMTP id f6mr14210618ilc.89.1591473494380;
        Sat, 06 Jun 2020 12:58:14 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:96d6:: with SMTP id r22ls514162iol.7.gmail; Sat, 06 Jun
 2020 12:58:14 -0700 (PDT)
X-Received: by 2002:a5d:8045:: with SMTP id b5mr14359759ior.16.1591473493870;
        Sat, 06 Jun 2020 12:58:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591473493; cv=none;
        d=google.com; s=arc-20160816;
        b=xcpFxaDJqf1rtj959ebCIGPctawnVRr7JCuXOXvKL6ZCpKggb6M/HhGHbnTwYQCnio
         hynqQeSIKmOnoKTHszmIoj4ys6Gk6XTEgepJctickPYcIwiw8M0P4UQ51Tf6IR847fw5
         pKAzqjd+I5Kpsn+FQS3PnDGyt8bmnQyTOgx+h6QxPug84q/oYkKnB+RxrIlQz+tjO6w8
         4gm7UwEZUIPaWPSOjlfv+wfqdzo5fClyoKYsJRfwqgeVoNtXX1C5Le33IPkVRVw6GN4d
         hCqyMp1ITBKdwV2vH28tXD3EPMrzo1KbLNQ+muKJupW41IQjtZ7qP0YUBI10wQXEE+ja
         ESXA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=nsfPyaTJAsu9Nyb/YLqdYHTI5DZ+3gFhJ91otSJBInE=;
        b=UcwgKNiHNlmYej2w6Ojssfzb+rIz9lBJEt1xky+IWReH+jfBW+VnckpRPA5PGY+SHr
         lPtZA5vcUTxqGDu10/I5pnF8xj7PJKqQQhLCVMe1i5XYokysxFDitK6fmCAK6ExMIVzD
         jlPHj4r2d12l0FgwajS7gdLt8KuZMS/o9EUBhKgHCE1Tu1dk1ceoUhD1ha+XViGDnVxU
         V2LadrVJhSH1J0u+s+yqF15BdyM9EjIAZIH99ZOLM4OXs4Eg2qnpWDnNNl/YVxi10rkl
         TiBXIJBt6ZLu+dIIeQaDPoozMmnqwfHvczvY3b0nTiteTiIji95tux6DUzGZFngQPx6D
         pPtg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.93 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga11.intel.com (mga11.intel.com. [192.55.52.93])
        by gmr-mx.google.com with ESMTPS id z11si448742ilq.5.2020.06.06.12.58.13
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 06 Jun 2020 12:58:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.93 as permitted sender) client-ip=192.55.52.93;
IronPort-SDR: jj+B5Cnn3EGg8Ao7uVD5cQg+yzrNX2J15DYZxEEpQHZFOOydikj7ztnBLrUmHYj0L5sivc2ovt
 6TFmiMbaURXA==
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
  by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 06 Jun 2020 12:58:12 -0700
IronPort-SDR: 3muHvtg2MY6ULzPYSjm9IkGkWWYYA28yS4WlD2nm48qhWBcnBavErg4/V5HDtoYvO7n8cwMJQD
 1Wbvogvqqo5A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,481,1583222400"; 
   d="gz'50?scan'50,208,50";a="258332113"
Received: from lkp-server01.sh.intel.com (HELO 3b764b36c89c) ([10.239.97.150])
  by fmsmga007.fm.intel.com with ESMTP; 06 Jun 2020 12:58:09 -0700
Received: from kbuild by 3b764b36c89c with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1jhexF-00002d-TZ; Sat, 06 Jun 2020 19:58:09 +0000
Date: Sun, 7 Jun 2020 03:57:53 +0800
From: kernel test robot <lkp@intel.com>
To: Vincent Chen <vincent.chen@sifive.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	Palmer Dabbelt <palmerdabbelt@google.com>,
	Atish Patra <atish.patra@wdc.com>
Subject: [riscv:for-next 2/11] include/asm-generic/preempt.h:11:19: error:
 implicit declaration of function 'current_thread_info'
Message-ID: <202006070345.1l0WGFnA%lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="EVF5PPMfhYS0aIcm"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 192.55.52.93 as permitted
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


--EVF5PPMfhYS0aIcm
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/riscv/linux.git for-next
head:   e4bdb161fbb94e741a060e6dc69ab690ab5624da
commit: 512022c8fb5ff1fe7c734b00d1bab0f9485dcf01 [2/11] riscv: use vDSO common flow to reduce the latency of the time-related functions
config: riscv-randconfig-r022-20200607 (attached as .config)
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
include/linux/compiler.h:48:41: note: expanded from macro 'unlikely'
#  define unlikely(x)   (__branch_check__(x, 0, __builtin_constant_p(x)))
^
include/linux/compiler.h:33:34: note: expanded from macro '__branch_check__'
______r = __builtin_expect(!!(x), expect);                                                               ^
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
include/asm-generic/preempt.h:78:4: warning: incompatible integer to pointer conversion passing 'int' to parameter of type 'struct thread_info *' [-Wint-conversion]
tif_need_resched());
^~~~~~~~~~~~~~~~~~
include/linux/thread_info.h:100:28: note: expanded from macro 'tif_need_resched'
#define tif_need_resched() test_thread_flag(TIF_NEED_RESCHED)
^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
include/linux/thread_info.h:98:22: note: expanded from macro 'test_thread_flag'
test_ti_thread_flag(current_thread_info(), flag)
^~~~~~~~~~~~~~~~~~~~~
include/linux/compiler.h:48:68: note: expanded from macro 'unlikely'
#  define unlikely(x)   (__branch_check__(x, 0, __builtin_constant_p(x)))
^
include/linux/compiler.h:35:19: note: expanded from macro '__branch_check__'
expect, is_constant);                                                              ^~~~~~~~~~~
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
include/asm-generic/mmiowb.h:49:23: warning: incompatible integer to pointer conversion initializing 'struct mmiowb_state *' with an expression of type 'unsigned long' [-Wint-conversion]
struct mmiowb_state *ms = __mmiowb_state();
^    ~~~~~~~~~~~~~~~~
In file included from arch/riscv/kernel/asm-offsets.c:10:
In file included from include/linux/sched.h:21:
>> include/linux/seccomp.h:39:15: error: implicit declaration of function 'current_thread_info' [-Werror,-Wimplicit-function-declaration]
if (unlikely(test_thread_flag(TIF_SECCOMP)))
^
include/linux/thread_info.h:98:22: note: expanded from macro 'test_thread_flag'
test_ti_thread_flag(current_thread_info(), flag)
^
In file included from arch/riscv/kernel/asm-offsets.c:10:
In file included from include/linux/sched.h:21:
>> include/linux/seccomp.h:39:15: warning: incompatible integer to pointer conversion passing 'int' to parameter of type 'struct thread_info *' [-Wint-conversion]
if (unlikely(test_thread_flag(TIF_SECCOMP)))
^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
include/linux/thread_info.h:98:22: note: expanded from macro 'test_thread_flag'
test_ti_thread_flag(current_thread_info(), flag)
^~~~~~~~~~~~~~~~~~~~~
include/linux/compiler.h:48:41: note: expanded from macro 'unlikely'
#  define unlikely(x)   (__branch_check__(x, 0, __builtin_constant_p(x)))
^
include/linux/compiler.h:33:34: note: expanded from macro '__branch_check__'
______r = __builtin_expect(!!(x), expect);                                                               ^
include/linux/thread_info.h:82:59: note: passing argument to parameter 'ti' here
static inline int test_ti_thread_flag(struct thread_info *ti, int flag)
^
In file included from arch/riscv/kernel/asm-offsets.c:10:
In file included from include/linux/sched.h:21:
>> include/linux/seccomp.h:39:15: warning: incompatible integer to pointer conversion passing 'int' to parameter of type 'struct thread_info *' [-Wint-conversion]
if (unlikely(test_thread_flag(TIF_SECCOMP)))
^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
include/linux/thread_info.h:98:22: note: expanded from macro 'test_thread_flag'
test_ti_thread_flag(current_thread_info(), flag)
^~~~~~~~~~~~~~~~~~~~~
include/linux/compiler.h:48:68: note: expanded from macro 'unlikely'
#  define unlikely(x)   (__branch_check__(x, 0, __builtin_constant_p(x)))
^
include/linux/compiler.h:35:19: note: expanded from macro '__branch_check__'
expect, is_constant);                                                              ^~~~~~~~~~~
include/linux/thread_info.h:82:59: note: passing argument to parameter 'ti' here
static inline int test_ti_thread_flag(struct thread_info *ti, int flag)
^
In file included from arch/riscv/kernel/asm-offsets.c:10:
>> include/linux/sched.h:1745:2: error: implicit declaration of function 'current_thread_info' [-Werror,-Wimplicit-function-declaration]
preempt_fold_need_resched();
^
include/linux/preempt.h:271:6: note: expanded from macro 'preempt_fold_need_resched'
if (tif_need_resched())                ^
include/linux/thread_info.h:100:28: note: expanded from macro 'tif_need_resched'
#define tif_need_resched() test_thread_flag(TIF_NEED_RESCHED)
^
include/linux/thread_info.h:98:22: note: expanded from macro 'test_thread_flag'
test_ti_thread_flag(current_thread_info(), flag)
^
In file included from arch/riscv/kernel/asm-offsets.c:10:
>> include/linux/sched.h:1745:2: warning: incompatible integer to pointer conversion passing 'int' to parameter of type 'struct thread_info *' [-Wint-conversion]
preempt_fold_need_resched();
^~~~~~~~~~~~~~~~~~~~~~~~~~~
include/linux/preempt.h:271:6: note: expanded from macro 'preempt_fold_need_resched'
if (tif_need_resched())                ^~~~~~~~~~~~~~~~~~
include/linux/thread_info.h:100:28: note: expanded from macro 'tif_need_resched'
#define tif_need_resched() test_thread_flag(TIF_NEED_RESCHED)
^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
include/linux/thread_info.h:98:22: note: expanded from macro 'test_thread_flag'
test_ti_thread_flag(current_thread_info(), flag)
^~~~~~~~~~~~~~~~~~~~~
include/linux/thread_info.h:82:59: note: passing argument to parameter 'ti' here
static inline int test_ti_thread_flag(struct thread_info *ti, int flag)
^
fatal error: too many errors emitted, stopping now [-ferror-limit=]
9 warnings and 20 errors generated.
make[2]: *** [scripts/Makefile.build:100: arch/riscv/kernel/asm-offsets.s] Error 1
make[2]: Target '__build' not remade because of errors.
make[1]: *** [Makefile:1154: prepare0] Error 2
make[1]: Target 'prepare' not remade because of errors.
make: *** [Makefile:180: sub-make] Error 2

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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202006070345.1l0WGFnA%25lkp%40intel.com.

--EVF5PPMfhYS0aIcm
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--EVF5PPMfhYS0aIcm--
