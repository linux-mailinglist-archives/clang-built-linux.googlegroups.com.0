Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBCEX433AKGQEZ6DTUUI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3e.google.com (mail-qv1-xf3e.google.com [IPv6:2607:f8b0:4864:20::f3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F97C1EEE97
	for <lists+clang-built-linux@lfdr.de>; Fri,  5 Jun 2020 02:02:19 +0200 (CEST)
Received: by mail-qv1-xf3e.google.com with SMTP id h4sf5819832qvr.21
        for <lists+clang-built-linux@lfdr.de>; Thu, 04 Jun 2020 17:02:19 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591315336; cv=pass;
        d=google.com; s=arc-20160816;
        b=B8oc09bkPv/gIyBRbNlzyqFsYhZzsYusBIXrMULHBB2sphiDsrLUoBjR5qwmOxH9A0
         J/pFpReTEtcRXv1kuvMxS6lFoREiwnPuQBUryv32nbGB3ViVylEmURmxevBbnyAj6/YI
         1TSZ72Nq7aeUSIZmkQ85CJmmPTCG7HmZeOUbpt1sZiIkKrP9KgGkxTyywtYs8WLGflwm
         kSo8v8gLu1JzXAH3rbG5j5KC7RlOy5x7dXC2b6FU+Kf83Mhw3bz0ZoWODINmieXDQ/Cb
         YZo4Ps0c2Udk8jusFTNz7vsGT1eQWPfTABJXRqFfMFXIokxLjiqI+AZQnzJXb/scxh2e
         f6IQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:reply-to:message-id:subject:cc:to:from:date
         :ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=KW0HbzrVGublJa3W91OLAZTjElI4UT/LSe8f1E0Wlbk=;
        b=vBXsrmbKtr5ubX+4ReopGWSQfLTyULLj875riyRdCihGlWPeBBk+rT77Dav0q5yzFi
         6aJ1kYNU/x/LKzsPEuXCT4WI/glsm+1w40+WPjVmw6vMfpT8UtJPydDMsusnysQMONIi
         zL9n9JbdTOfMyEe9+xp736l5NPhZJEmiFd9grKjQ/I853DVufgpLRGbt1bHJrDcFcnoZ
         HBAF4LP0tNUkAFUTLe7AzsaF6sDbX+OUcTTNE5HIj3qOc0NJpGc6/64s0M4CgPhDGep5
         nsI7nYuDicv606tZM9ayQYN5zTu41GILteoOFcTIJW9ZAMW6JZuCT0yYa7SJ8BSGO3It
         QgaQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.151 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :reply-to:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=KW0HbzrVGublJa3W91OLAZTjElI4UT/LSe8f1E0Wlbk=;
        b=QQFKq2Bfsm1g5s/MSGPnNvDussPGF2SgIuaUIEvQW7GmzzcXvT3DoeAbVxPO5OdmE/
         yZS3vLKP3Yw+2e2kGJ3aEMBFWrEqdAdkIsvxmj9xMfB8v+X8e1qzVlDBriq/EpYmkMv0
         FJLyL8KHlVZK3NZyGpeMifdJCCWHamYmUxTAbbBJGXH6EQOb2YzZxqcbZDHcUVlPVqEA
         4opVY4Nfv1R6mCGRJBDWSuZM9N3EerTFCDq3gYml8YVYObORSLgVHJVoMJmeTGG1c8Cr
         WvxGJjiGmW7TRcw/r7jhMjiup16b5z696e7PUdrL0D6/JeMXn/GOjlOyJNCtpyFj43Cz
         11nQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:reply-to:mime-version:content-disposition
         :user-agent:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=KW0HbzrVGublJa3W91OLAZTjElI4UT/LSe8f1E0Wlbk=;
        b=tivWYv97bR/wP6toe7KM7fYH0dmeLgCkqciHsa8qZtst+eZnzt08tZKoKgEkS0RbpK
         RmwjaiO3kDgHq3CwJ+NOiWLutiPFjfIy3Rvkn7P2DuyJIHfFsQQxuy00FAP6YtqzQaFo
         x9lzvxHJL5dQevfvaaRIlQdvCUmdixhOkXsXP21dmAztaZb0yF1ZQcH3IiUdK0q5wLGo
         p6KJBEcw1ijMJm2fqvi7ztUKqtrx9tR3RxYax5qsQ+zIg1p9dZt6+Bjqa68SG3qU3m/3
         1cmQdM+XrwaQt1mpju588T8iCuA645hvLwZgqOuIdXIG8oJdkuq8I+RSrPhDXWuE1Xip
         vsGg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532Thm6Uccsyfd9mEAWNEcUfr9pOg6kpotV3eOGcNoZGEglvq2ie
	vjcMDwDAPPZ6Pqq6j5eBNPM=
X-Google-Smtp-Source: ABdhPJz2xZrl2v2GhpwXX7YXvJP9oG538AqIG+zuMaHnnG+sYMC3ml2Ejzu93unf7UGSKR+PBoVekA==
X-Received: by 2002:ac8:7089:: with SMTP id y9mr7512136qto.355.1591315336224;
        Thu, 04 Jun 2020 17:02:16 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aed:3fd5:: with SMTP id w21ls2620633qth.7.gmail; Thu, 04 Jun
 2020 17:02:15 -0700 (PDT)
X-Received: by 2002:aed:3aa3:: with SMTP id o32mr7748842qte.364.1591315335834;
        Thu, 04 Jun 2020 17:02:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591315335; cv=none;
        d=google.com; s=arc-20160816;
        b=tbmMiEDjBYkTStFMDnCbgft+rkRUkP1QfcPdhlFZ6m3ch9l2EmR5Fy2ZEiSdltE3zJ
         sGvL2vhNogXk+t9yPz4mGg+HYkwKqpKtFWZpxwENE2NKdP883Qa4qYQKdsWKiW9urO55
         Jzb7/ylrGvxiKdMEVAu1UcSlDg9fJVCju9rn3VgNULiabO2ussTueh38MJyEqeudoz7N
         976CNqOTZy9fma3yl9GgX9bVKku2PQ9w8AmUKCusFUOXepQ+pqG6eLRGcSQtjFahI7jy
         AgGrQZmyGj9wVIvC3g75ZxeWBLZjQhlr1sqNCX+RFCOa6sdAA2WDcipWOQPeegDItihy
         4+fg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:reply-to:message-id
         :subject:cc:to:from:date:ironport-sdr:ironport-sdr;
        bh=ScECgUN7IP69hJPBW9eY9CqDt5qcPMmmnqj0FGRzL2I=;
        b=n2iER8nvLM/jbufiOceiBtRaafKT8azBAsmocl3EKkiRc0oDg0bkY2uO3HViLNP+kk
         rsfikUGgNC5ZPb0Ld1Mq83zkndH0QHx3i28tgAQjW66gnZYkF1cxOCl7h6QyPm2SZ1Sp
         JLckjfjTUbxXLtR7+V8YMfWsp7L34+epECLA49BGJgZGk9icOYmdWkrGVstUEZM8hmCq
         bzT0QS3iC/M25XnUFcldmIXeTDDooJOCq2djbGwkIZh07d52ovHm5WVz1l+NBaZi5eey
         I4saZ48yy2X7fTo3AR0ccJUKXV0ME9TtGWj0rUF7As0/h1fk/nXmmhTYW75Jeyhe/zwL
         Qvfg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.151 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga17.intel.com (mga17.intel.com. [192.55.52.151])
        by gmr-mx.google.com with ESMTPS id a78si453883qkb.1.2020.06.04.17.02.15
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 04 Jun 2020 17:02:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.151 as permitted sender) client-ip=192.55.52.151;
IronPort-SDR: sr9MXltE9jMod58rJL3GJnWda/83V6NZtOnD4Or5ROWbFukNFXMlaE/1wrWeBfzR+RFbvqcB3T
 pmclQm8gjCBA==
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
  by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 04 Jun 2020 17:02:13 -0700
IronPort-SDR: eDaMqyckf3OnqL1TBCjW4mj5CUVeNAmuBJXf1LUU1nVPgbs9blXS7y8fRggCvJdkpMPuI+jA7b
 SHrLuWfEfc2g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,474,1583222400"; 
   d="gz'50?scan'50,208,50";a="445696698"
Received: from pl-dbox.sh.intel.com (HELO intel.com) ([10.239.159.39])
  by orsmga005.jf.intel.com with ESMTP; 04 Jun 2020 17:02:10 -0700
Date: Fri, 5 Jun 2020 08:01:23 +0800
From: kernel test robot <lkp@intel.com>
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org,
	Masahiro Yamada <yamada.masahiro@socionext.com>
Subject: drivers/gpu/drm/i915/gt/intel_gt_pm.c:23:2: error: format string is
 not a string literal (potentially insecure)
Message-ID: <20200605000123.GA9454@intel.com>
Reply-To: kernel test robot <lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="PEIAKu/WMn1b1Hv9"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 192.55.52.151 as permitted
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


--PEIAKu/WMn1b1Hv9
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
head:   15a2bc4dbb9cfed1c661a657fcb10798150b7598
commit: e2079e93f562c7f7a030eb7642017ee5eabaaa10 kbuild: Do not enable -Wimplicit-fallthrough for clang for now
config: x86_64-randconfig-a011-20200605 (attached as .config)
compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project ac47588bc4ff5927a01ed6fcd269ce86aba52a7c)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install x86_64 cross compiling tool for clang build
        # apt-get install binutils-x86-64-linux-gnu
        git checkout e2079e93f562c7f7a030eb7642017ee5eabaaa10
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>, old ones prefixed by <<):

In file included from drivers/gpu/drm/i915/gt/intel_gt_pm.c:7:
In file included from drivers/gpu/drm/i915/i915_drv.h:36:
In file included from include/linux/io-mapping.h:10:
In file included from include/linux/slab.h:15:
In file included from include/linux/gfp.h:6:
In file included from include/linux/mmzone.h:8:
In file included from include/linux/spinlock.h:51:
In file included from include/linux/preempt.h:78:
In file included from arch/x86/include/asm/preempt.h:7:
In file included from include/linux/thread_info.h:38:
arch/x86/include/asm/thread_info.h:188:13: error: calling '__builtin_frame_address' with a nonzero argument is unsafe [-Werror,-Wframe-address]
oldframe = __builtin_frame_address(1);
^~~~~~~~~~~~~~~~~~~~~~~~~~
arch/x86/include/asm/thread_info.h:190:11: error: calling '__builtin_frame_address' with a nonzero argument is unsafe [-Werror,-Wframe-address]
frame = __builtin_frame_address(2);
^~~~~~~~~~~~~~~~~~~~~~~~~~
In file included from drivers/gpu/drm/i915/gt/intel_gt_pm.c:7:
In file included from drivers/gpu/drm/i915/i915_drv.h:44:
In file included from include/linux/perf_event.h:49:
include/linux/ftrace.h:692:9: error: calling '__builtin_return_address' with a nonzero argument is unsafe [-Werror,-Wframe-address]
addr = CALLER_ADDR1;
^~~~~~~~~~~~
include/linux/ftrace.h:679:38: note: expanded from macro 'CALLER_ADDR1'
#define CALLER_ADDR1 ((unsigned long)ftrace_return_address(1))
^~~~~~~~~~~~~~~~~~~~~~~~
include/linux/ftrace.h:672:36: note: expanded from macro 'ftrace_return_address'
#  define ftrace_return_address(n) __builtin_return_address(n)
^~~~~~~~~~~~~~~~~~~~~~~~~~~
include/linux/ftrace.h:695:9: error: calling '__builtin_return_address' with a nonzero argument is unsafe [-Werror,-Wframe-address]
return CALLER_ADDR2;
^~~~~~~~~~~~
include/linux/ftrace.h:680:38: note: expanded from macro 'CALLER_ADDR2'
#define CALLER_ADDR2 ((unsigned long)ftrace_return_address(2))
^~~~~~~~~~~~~~~~~~~~~~~~
include/linux/ftrace.h:672:36: note: expanded from macro 'ftrace_return_address'
#  define ftrace_return_address(n) __builtin_return_address(n)
^~~~~~~~~~~~~~~~~~~~~~~~~~~
>> drivers/gpu/drm/i915/gt/intel_gt_pm.c:23:2: error: format string is not a string literal (potentially insecure) [-Werror,-Wformat-security]
GEM_TRACE("n");
^~~~~~~~~~~~~~~
drivers/gpu/drm/i915/i915_gem.h:66:24: note: expanded from macro 'GEM_TRACE'
#define GEM_TRACE(...) trace_printk(__VA_ARGS__)
^~~~~~~~~~~~~~~~~~~~~~~~~
include/linux/kernel.h:695:3: note: expanded from macro 'trace_printk'
do_trace_printk(fmt, ##__VA_ARGS__);                       ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
include/linux/kernel.h:709:30: note: expanded from macro 'do_trace_printk'
__trace_bprintk(_THIS_IP_, trace_printk_fmt, ##args);                                                 ^~~~~~~~~~~~~~~~
drivers/gpu/drm/i915/gt/intel_gt_pm.c:23:2: note: treat the string as an argument to avoid this
drivers/gpu/drm/i915/i915_gem.h:66:24: note: expanded from macro 'GEM_TRACE'
#define GEM_TRACE(...) trace_printk(__VA_ARGS__)
^
include/linux/kernel.h:695:3: note: expanded from macro 'trace_printk'
do_trace_printk(fmt, ##__VA_ARGS__);                       ^
include/linux/kernel.h:709:30: note: expanded from macro 'do_trace_printk'
__trace_bprintk(_THIS_IP_, trace_printk_fmt, ##args);                                                 ^
drivers/gpu/drm/i915/gt/intel_gt_pm.c:65:2: error: format string is not a string literal (potentially insecure) [-Werror,-Wformat-security]
GEM_TRACE("n");
^~~~~~~~~~~~~~~
drivers/gpu/drm/i915/i915_gem.h:66:24: note: expanded from macro 'GEM_TRACE'
#define GEM_TRACE(...) trace_printk(__VA_ARGS__)
^~~~~~~~~~~~~~~~~~~~~~~~~
include/linux/kernel.h:695:3: note: expanded from macro 'trace_printk'
do_trace_printk(fmt, ##__VA_ARGS__);                       ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
include/linux/kernel.h:709:30: note: expanded from macro 'do_trace_printk'
__trace_bprintk(_THIS_IP_, trace_printk_fmt, ##args);                                                 ^~~~~~~~~~~~~~~~
drivers/gpu/drm/i915/gt/intel_gt_pm.c:65:2: note: treat the string as an argument to avoid this
drivers/gpu/drm/i915/i915_gem.h:66:24: note: expanded from macro 'GEM_TRACE'
#define GEM_TRACE(...) trace_printk(__VA_ARGS__)
^
include/linux/kernel.h:695:3: note: expanded from macro 'trace_printk'
do_trace_printk(fmt, ##__VA_ARGS__);                       ^
include/linux/kernel.h:709:30: note: expanded from macro 'do_trace_printk'
__trace_bprintk(_THIS_IP_, trace_printk_fmt, ##args);                                                 ^
drivers/gpu/drm/i915/gt/intel_gt_pm.c:113:2: error: format string is not a string literal (potentially insecure) [-Werror,-Wformat-security]
GEM_TRACE("n");
^~~~~~~~~~~~~~~
drivers/gpu/drm/i915/i915_gem.h:66:24: note: expanded from macro 'GEM_TRACE'
#define GEM_TRACE(...) trace_printk(__VA_ARGS__)
^~~~~~~~~~~~~~~~~~~~~~~~~
include/linux/kernel.h:695:3: note: expanded from macro 'trace_printk'
do_trace_printk(fmt, ##__VA_ARGS__);                       ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
include/linux/kernel.h:709:30: note: expanded from macro 'do_trace_printk'
__trace_bprintk(_THIS_IP_, trace_printk_fmt, ##args);                                                 ^~~~~~~~~~~~~~~~
drivers/gpu/drm/i915/gt/intel_gt_pm.c:113:2: note: treat the string as an argument to avoid this
drivers/gpu/drm/i915/i915_gem.h:66:24: note: expanded from macro 'GEM_TRACE'
#define GEM_TRACE(...) trace_printk(__VA_ARGS__)
^
include/linux/kernel.h:695:3: note: expanded from macro 'trace_printk'
do_trace_printk(fmt, ##__VA_ARGS__);                       ^
include/linux/kernel.h:709:30: note: expanded from macro 'do_trace_printk'
__trace_bprintk(_THIS_IP_, trace_printk_fmt, ##args);                                                 ^
7 errors generated.
--
In file included from drivers/gpu/drm/i915/gt/intel_lrc.c:134:
In file included from include/linux/interrupt.h:11:
In file included from include/linux/hardirq.h:5:
In file included from include/linux/preempt.h:78:
In file included from arch/x86/include/asm/preempt.h:7:
In file included from include/linux/thread_info.h:38:
arch/x86/include/asm/thread_info.h:188:13: error: calling '__builtin_frame_address' with a nonzero argument is unsafe [-Werror,-Wframe-address]
oldframe = __builtin_frame_address(1);
^~~~~~~~~~~~~~~~~~~~~~~~~~
arch/x86/include/asm/thread_info.h:190:11: error: calling '__builtin_frame_address' with a nonzero argument is unsafe [-Werror,-Wframe-address]
frame = __builtin_frame_address(2);
^~~~~~~~~~~~~~~~~~~~~~~~~~
In file included from drivers/gpu/drm/i915/gt/intel_lrc.c:136:
In file included from drivers/gpu/drm/i915/gem/i915_gem_context.h:10:
In file included from drivers/gpu/drm/i915/gem/i915_gem_context_types.h:20:
In file included from drivers/gpu/drm/i915/gt/intel_context_types.h:16:
In file included from drivers/gpu/drm/i915/gt/intel_engine_types.h:19:
In file included from drivers/gpu/drm/i915/i915_pmu.h:11:
In file included from include/linux/perf_event.h:49:
include/linux/ftrace.h:692:9: error: calling '__builtin_return_address' with a nonzero argument is unsafe [-Werror,-Wframe-address]
addr = CALLER_ADDR1;
^~~~~~~~~~~~
include/linux/ftrace.h:679:38: note: expanded from macro 'CALLER_ADDR1'
#define CALLER_ADDR1 ((unsigned long)ftrace_return_address(1))
^~~~~~~~~~~~~~~~~~~~~~~~
include/linux/ftrace.h:672:36: note: expanded from macro 'ftrace_return_address'
#  define ftrace_return_address(n) __builtin_return_address(n)
^~~~~~~~~~~~~~~~~~~~~~~~~~~
include/linux/ftrace.h:695:9: error: calling '__builtin_return_address' with a nonzero argument is unsafe [-Werror,-Wframe-address]
return CALLER_ADDR2;
^~~~~~~~~~~~
include/linux/ftrace.h:680:38: note: expanded from macro 'CALLER_ADDR2'
#define CALLER_ADDR2 ((unsigned long)ftrace_return_address(2))
^~~~~~~~~~~~~~~~~~~~~~~~
include/linux/ftrace.h:672:36: note: expanded from macro 'ftrace_return_address'
#  define ftrace_return_address(n) __builtin_return_address(n)
^~~~~~~~~~~~~~~~~~~~~~~~~~~
In file included from drivers/gpu/drm/i915/gt/intel_lrc.c:3584:
>> drivers/gpu/drm/i915/gt/selftest_lrc.c:56:4: error: format string is not a string literal (potentially insecure) [-Werror,-Wformat-security]
GEM_TRACE("spinner failed to startn");
^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/i915/selftests/../i915_gem.h:66:24: note: expanded from macro 'GEM_TRACE'
#define GEM_TRACE(...) trace_printk(__VA_ARGS__)
^~~~~~~~~~~~~~~~~~~~~~~~~
include/linux/kernel.h:695:3: note: expanded from macro 'trace_printk'
do_trace_printk(fmt, ##__VA_ARGS__);                       ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
include/linux/kernel.h:709:30: note: expanded from macro 'do_trace_printk'
__trace_bprintk(_THIS_IP_, trace_printk_fmt, ##args);                                                 ^~~~~~~~~~~~~~~~
drivers/gpu/drm/i915/gt/selftest_lrc.c:56:4: note: treat the string as an argument to avoid this
drivers/gpu/drm/i915/selftests/../i915_gem.h:66:24: note: expanded from macro 'GEM_TRACE'
#define GEM_TRACE(...) trace_printk(__VA_ARGS__)
^
include/linux/kernel.h:695:3: note: expanded from macro 'trace_printk'
do_trace_printk(fmt, ##__VA_ARGS__);                       ^
include/linux/kernel.h:709:30: note: expanded from macro 'do_trace_printk'
__trace_bprintk(_THIS_IP_, trace_printk_fmt, ##args);                                                 ^
In file included from drivers/gpu/drm/i915/gt/intel_lrc.c:3584:
drivers/gpu/drm/i915/gt/selftest_lrc.c:321:4: error: format string is not a string literal (potentially insecure) [-Werror,-Wformat-security]
GEM_TRACE("lo spinner failed to startn");
^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/i915/selftests/../i915_gem.h:66:24: note: expanded from macro 'GEM_TRACE'
#define GEM_TRACE(...) trace_printk(__VA_ARGS__)
^~~~~~~~~~~~~~~~~~~~~~~~~
include/linux/kernel.h:695:3: note: expanded from macro 'trace_printk'
do_trace_printk(fmt, ##__VA_ARGS__);                       ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
include/linux/kernel.h:709:30: note: expanded from macro 'do_trace_printk'
__trace_bprintk(_THIS_IP_, trace_printk_fmt, ##args);                                                 ^~~~~~~~~~~~~~~~
drivers/gpu/drm/i915/gt/selftest_lrc.c:321:4: note: treat the string as an argument to avoid this
drivers/gpu/drm/i915/selftests/../i915_gem.h:66:24: note: expanded from macro 'GEM_TRACE'
#define GEM_TRACE(...) trace_printk(__VA_ARGS__)
^
include/linux/kernel.h:695:3: note: expanded from macro 'trace_printk'
do_trace_printk(fmt, ##__VA_ARGS__);                       ^
include/linux/kernel.h:709:30: note: expanded from macro 'do_trace_printk'
__trace_bprintk(_THIS_IP_, trace_printk_fmt, ##args);                                                 ^
In file included from drivers/gpu/drm/i915/gt/intel_lrc.c:3584:
drivers/gpu/drm/i915/gt/selftest_lrc.c:338:4: error: format string is not a string literal (potentially insecure) [-Werror,-Wformat-security]
GEM_TRACE("hi spinner failed to startn");
^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/i915/selftests/../i915_gem.h:66:24: note: expanded from macro 'GEM_TRACE'
#define GEM_TRACE(...) trace_printk(__VA_ARGS__)
^~~~~~~~~~~~~~~~~~~~~~~~~
include/linux/kernel.h:695:3: note: expanded from macro 'trace_printk'
do_trace_printk(fmt, ##__VA_ARGS__);                       ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
include/linux/kernel.h:709:30: note: expanded from macro 'do_trace_printk'
__trace_bprintk(_THIS_IP_, trace_printk_fmt, ##args);                                                 ^~~~~~~~~~~~~~~~
drivers/gpu/drm/i915/gt/selftest_lrc.c:338:4: note: treat the string as an argument to avoid this
drivers/gpu/drm/i915/selftests/../i915_gem.h:66:24: note: expanded from macro 'GEM_TRACE'
#define GEM_TRACE(...) trace_printk(__VA_ARGS__)
^
include/linux/kernel.h:695:3: note: expanded from macro 'trace_printk'
do_trace_printk(fmt, ##__VA_ARGS__);                       ^
include/linux/kernel.h:709:30: note: expanded from macro 'do_trace_printk'
__trace_bprintk(_THIS_IP_, trace_printk_fmt, ##args);                                                 ^
In file included from drivers/gpu/drm/i915/gt/intel_lrc.c:3584:
drivers/gpu/drm/i915/gt/selftest_lrc.c:990:4: error: format string is not a string literal (potentially insecure) [-Werror,-Wformat-security]
GEM_TRACE("lo spinner failed to startn");
^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/i915/selftests/../i915_gem.h:66:24: note: expanded from macro 'GEM_TRACE'
#define GEM_TRACE(...) trace_printk(__VA_ARGS__)
^~~~~~~~~~~~~~~~~~~~~~~~~
include/linux/kernel.h:695:3: note: expanded from macro 'trace_printk'
do_trace_printk(fmt, ##__VA_ARGS__);                       ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
include/linux/kernel.h:709:30: note: expanded from macro 'do_trace_printk'
__trace_bprintk(_THIS_IP_, trace_printk_fmt, ##args);                                                 ^~~~~~~~~~~~~~~~
drivers/gpu/drm/i915/gt/selftest_lrc.c:990:4: note: treat the string as an argument to avoid this
drivers/gpu/drm/i915/selftests/../i915_gem.h:66:24: note: expanded from macro 'GEM_TRACE'
#define GEM_TRACE(...) trace_printk(__VA_ARGS__)
^
include/linux/kernel.h:695:3: note: expanded from macro 'trace_printk'
do_trace_printk(fmt, ##__VA_ARGS__);                       ^
include/linux/kernel.h:709:30: note: expanded from macro 'do_trace_printk'
__trace_bprintk(_THIS_IP_, trace_printk_fmt, ##args);                                                 ^
In file included from drivers/gpu/drm/i915/gt/intel_lrc.c:3584:
drivers/gpu/drm/i915/gt/selftest_lrc.c:1026:4: error: format string is not a string literal (potentially insecure) [-Werror,-Wformat-security]
GEM_TRACE("hi spinner failed to startn");
^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/i915/selftests/../i915_gem.h:66:24: note: expanded from macro 'GEM_TRACE'
#define GEM_TRACE(...) trace_printk(__VA_ARGS__)
^~~~~~~~~~~~~~~~~~~~~~~~~
include/linux/kernel.h:695:3: note: expanded from macro 'trace_printk'
do_trace_printk(fmt, ##__VA_ARGS__);                       ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
--
In file included from drivers/gpu/drm/i915/gt/intel_reset.c:7:
In file included from include/linux/sched/mm.h:7:
In file included from include/linux/sched.h:14:
In file included from include/linux/pid.h:5:
In file included from include/linux/rculist.h:11:
In file included from include/linux/rcupdate.h:27:
In file included from include/linux/preempt.h:78:
In file included from arch/x86/include/asm/preempt.h:7:
In file included from include/linux/thread_info.h:38:
arch/x86/include/asm/thread_info.h:188:13: error: calling '__builtin_frame_address' with a nonzero argument is unsafe [-Werror,-Wframe-address]
oldframe = __builtin_frame_address(1);
^~~~~~~~~~~~~~~~~~~~~~~~~~
arch/x86/include/asm/thread_info.h:190:11: error: calling '__builtin_frame_address' with a nonzero argument is unsafe [-Werror,-Wframe-address]
frame = __builtin_frame_address(2);
^~~~~~~~~~~~~~~~~~~~~~~~~~
In file included from drivers/gpu/drm/i915/gt/intel_reset.c:12:
In file included from drivers/gpu/drm/i915/gem/i915_gem_context.h:10:
In file included from drivers/gpu/drm/i915/gem/i915_gem_context_types.h:20:
In file included from drivers/gpu/drm/i915/gt/intel_context_types.h:16:
In file included from drivers/gpu/drm/i915/gt/intel_engine_types.h:19:
In file included from drivers/gpu/drm/i915/i915_pmu.h:11:
In file included from include/linux/perf_event.h:49:
include/linux/ftrace.h:692:9: error: calling '__builtin_return_address' with a nonzero argument is unsafe [-Werror,-Wframe-address]
addr = CALLER_ADDR1;
^~~~~~~~~~~~
include/linux/ftrace.h:679:38: note: expanded from macro 'CALLER_ADDR1'
#define CALLER_ADDR1 ((unsigned long)ftrace_return_address(1))
^~~~~~~~~~~~~~~~~~~~~~~~
include/linux/ftrace.h:672:36: note: expanded from macro 'ftrace_return_address'
#  define ftrace_return_address(n) __builtin_return_address(n)
^~~~~~~~~~~~~~~~~~~~~~~~~~~
include/linux/ftrace.h:695:9: error: calling '__builtin_return_address' with a nonzero argument is unsafe [-Werror,-Wframe-address]
return CALLER_ADDR2;
^~~~~~~~~~~~
include/linux/ftrace.h:680:38: note: expanded from macro 'CALLER_ADDR2'
#define CALLER_ADDR2 ((unsigned long)ftrace_return_address(2))
^~~~~~~~~~~~~~~~~~~~~~~~
include/linux/ftrace.h:672:36: note: expanded from macro 'ftrace_return_address'
#  define ftrace_return_address(n) __builtin_return_address(n)
^~~~~~~~~~~~~~~~~~~~~~~~~~~
>> drivers/gpu/drm/i915/gt/intel_reset.c:820:2: error: format string is not a string literal (potentially insecure) [-Werror,-Wformat-security]
GEM_TRACE("startn");
^~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/i915/i915_gem.h:66:24: note: expanded from macro 'GEM_TRACE'
#define GEM_TRACE(...) trace_printk(__VA_ARGS__)
^~~~~~~~~~~~~~~~~~~~~~~~~
include/linux/kernel.h:695:3: note: expanded from macro 'trace_printk'
do_trace_printk(fmt, ##__VA_ARGS__);                       ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
include/linux/kernel.h:709:30: note: expanded from macro 'do_trace_printk'
__trace_bprintk(_THIS_IP_, trace_printk_fmt, ##args);                                                 ^~~~~~~~~~~~~~~~
drivers/gpu/drm/i915/gt/intel_reset.c:820:2: note: treat the string as an argument to avoid this
drivers/gpu/drm/i915/i915_gem.h:66:24: note: expanded from macro 'GEM_TRACE'
#define GEM_TRACE(...) trace_printk(__VA_ARGS__)
^
include/linux/kernel.h:695:3: note: expanded from macro 'trace_printk'
do_trace_printk(fmt, ##__VA_ARGS__);                       ^
include/linux/kernel.h:709:30: note: expanded from macro 'do_trace_printk'
__trace_bprintk(_THIS_IP_, trace_printk_fmt, ##args);                                                 ^
drivers/gpu/drm/i915/gt/intel_reset.c:853:2: error: format string is not a string literal (potentially insecure) [-Werror,-Wformat-security]
GEM_TRACE("endn");
^~~~~~~~~~~~~~~~~~
drivers/gpu/drm/i915/i915_gem.h:66:24: note: expanded from macro 'GEM_TRACE'
#define GEM_TRACE(...) trace_printk(__VA_ARGS__)
^~~~~~~~~~~~~~~~~~~~~~~~~
include/linux/kernel.h:695:3: note: expanded from macro 'trace_printk'
do_trace_printk(fmt, ##__VA_ARGS__);                       ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
include/linux/kernel.h:709:30: note: expanded from macro 'do_trace_printk'
__trace_bprintk(_THIS_IP_, trace_printk_fmt, ##args);                                                 ^~~~~~~~~~~~~~~~
drivers/gpu/drm/i915/gt/intel_reset.c:853:2: note: treat the string as an argument to avoid this
drivers/gpu/drm/i915/i915_gem.h:66:24: note: expanded from macro 'GEM_TRACE'
#define GEM_TRACE(...) trace_printk(__VA_ARGS__)
^
include/linux/kernel.h:695:3: note: expanded from macro 'trace_printk'
do_trace_printk(fmt, ##__VA_ARGS__);                       ^
include/linux/kernel.h:709:30: note: expanded from macro 'do_trace_printk'
__trace_bprintk(_THIS_IP_, trace_printk_fmt, ##args);                                                 ^
drivers/gpu/drm/i915/gt/intel_reset.c:878:2: error: format string is not a string literal (potentially insecure) [-Werror,-Wformat-security]
GEM_TRACE("startn");
^~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/i915/i915_gem.h:66:24: note: expanded from macro 'GEM_TRACE'
#define GEM_TRACE(...) trace_printk(__VA_ARGS__)
^~~~~~~~~~~~~~~~~~~~~~~~~
include/linux/kernel.h:695:3: note: expanded from macro 'trace_printk'
do_trace_printk(fmt, ##__VA_ARGS__);                       ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
include/linux/kernel.h:709:30: note: expanded from macro 'do_trace_printk'
__trace_bprintk(_THIS_IP_, trace_printk_fmt, ##args);                                                 ^~~~~~~~~~~~~~~~
drivers/gpu/drm/i915/gt/intel_reset.c:878:2: note: treat the string as an argument to avoid this
drivers/gpu/drm/i915/i915_gem.h:66:24: note: expanded from macro 'GEM_TRACE'
#define GEM_TRACE(...) trace_printk(__VA_ARGS__)
^
include/linux/kernel.h:695:3: note: expanded from macro 'trace_printk'
do_trace_printk(fmt, ##__VA_ARGS__);                       ^
include/linux/kernel.h:709:30: note: expanded from macro 'do_trace_printk'
__trace_bprintk(_THIS_IP_, trace_printk_fmt, ##args);                                                 ^
drivers/gpu/drm/i915/gt/intel_reset.c:923:2: error: format string is not a string literal (potentially insecure) [-Werror,-Wformat-security]
GEM_TRACE("endn");
^~~~~~~~~~~~~~~~~~
drivers/gpu/drm/i915/i915_gem.h:66:24: note: expanded from macro 'GEM_TRACE'
#define GEM_TRACE(...) trace_printk(__VA_ARGS__)
^~~~~~~~~~~~~~~~~~~~~~~~~
include/linux/kernel.h:695:3: note: expanded from macro 'trace_printk'
do_trace_printk(fmt, ##__VA_ARGS__);                       ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
include/linux/kernel.h:709:30: note: expanded from macro 'do_trace_printk'
__trace_bprintk(_THIS_IP_, trace_printk_fmt, ##args);                                                 ^~~~~~~~~~~~~~~~
drivers/gpu/drm/i915/gt/intel_reset.c:923:2: note: treat the string as an argument to avoid this
drivers/gpu/drm/i915/i915_gem.h:66:24: note: expanded from macro 'GEM_TRACE'
#define GEM_TRACE(...) trace_printk(__VA_ARGS__)
^
include/linux/kernel.h:695:3: note: expanded from macro 'trace_printk'
do_trace_printk(fmt, ##__VA_ARGS__);                       ^
include/linux/kernel.h:709:30: note: expanded from macro 'do_trace_printk'
__trace_bprintk(_THIS_IP_, trace_printk_fmt, ##args);                                                 ^
8 errors generated.
..

# https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=e2079e93f562c7f7a030eb7642017ee5eabaaa10
git remote add linus https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
git remote update linus
git checkout e2079e93f562c7f7a030eb7642017ee5eabaaa10
vim +23 drivers/gpu/drm/i915/gt/intel_gt_pm.c

79ffac8599c4d8 Chris Wilson 2019-04-24  17  
79ffac8599c4d8 Chris Wilson 2019-04-24  18  static int intel_gt_unpark(struct intel_wakeref *wf)
79ffac8599c4d8 Chris Wilson 2019-04-24  19  {
79ffac8599c4d8 Chris Wilson 2019-04-24  20  	struct drm_i915_private *i915 =
79ffac8599c4d8 Chris Wilson 2019-04-24  21  		container_of(wf, typeof(*i915), gt.wakeref);
79ffac8599c4d8 Chris Wilson 2019-04-24  22  
79ffac8599c4d8 Chris Wilson 2019-04-24 @23  	GEM_TRACE("\n");
79ffac8599c4d8 Chris Wilson 2019-04-24  24  
79ffac8599c4d8 Chris Wilson 2019-04-24  25  	/*
79ffac8599c4d8 Chris Wilson 2019-04-24  26  	 * It seems that the DMC likes to transition between the DC states a lot
79ffac8599c4d8 Chris Wilson 2019-04-24  27  	 * when there are no connected displays (no active power domains) during
79ffac8599c4d8 Chris Wilson 2019-04-24  28  	 * command submission.
79ffac8599c4d8 Chris Wilson 2019-04-24  29  	 *
79ffac8599c4d8 Chris Wilson 2019-04-24  30  	 * This activity has negative impact on the performance of the chip with
79ffac8599c4d8 Chris Wilson 2019-04-24  31  	 * huge latencies observed in the interrupt handler and elsewhere.
79ffac8599c4d8 Chris Wilson 2019-04-24  32  	 *
79ffac8599c4d8 Chris Wilson 2019-04-24  33  	 * Work around it by grabbing a GT IRQ power domain whilst there is any
79ffac8599c4d8 Chris Wilson 2019-04-24  34  	 * GT activity, preventing any DC state transitions.
79ffac8599c4d8 Chris Wilson 2019-04-24  35  	 */
79ffac8599c4d8 Chris Wilson 2019-04-24  36  	i915->gt.awake = intel_display_power_get(i915, POWER_DOMAIN_GT_IRQ);
79ffac8599c4d8 Chris Wilson 2019-04-24  37  	GEM_BUG_ON(!i915->gt.awake);
79ffac8599c4d8 Chris Wilson 2019-04-24  38  
79ffac8599c4d8 Chris Wilson 2019-04-24  39  	intel_enable_gt_powersave(i915);
79ffac8599c4d8 Chris Wilson 2019-04-24  40  
79ffac8599c4d8 Chris Wilson 2019-04-24  41  	i915_update_gfx_val(i915);
79ffac8599c4d8 Chris Wilson 2019-04-24  42  	if (INTEL_GEN(i915) >= 6)
79ffac8599c4d8 Chris Wilson 2019-04-24  43  		gen6_rps_busy(i915);
79ffac8599c4d8 Chris Wilson 2019-04-24  44  
79ffac8599c4d8 Chris Wilson 2019-04-24  45  	i915_pmu_gt_unparked(i915);
79ffac8599c4d8 Chris Wilson 2019-04-24  46  
79ffac8599c4d8 Chris Wilson 2019-04-24  47  	i915_queue_hangcheck(i915);
79ffac8599c4d8 Chris Wilson 2019-04-24  48  
79ffac8599c4d8 Chris Wilson 2019-04-24  49  	pm_notify(i915, INTEL_GT_UNPARK);
79ffac8599c4d8 Chris Wilson 2019-04-24  50  
79ffac8599c4d8 Chris Wilson 2019-04-24  51  	return 0;
79ffac8599c4d8 Chris Wilson 2019-04-24  52  }
79ffac8599c4d8 Chris Wilson 2019-04-24  53  

:::::: The code at line 23 was first introduced by commit
:::::: 79ffac8599c4d8aa84d313920d3d86d7361c252b drm/i915: Invert the GEM wakeref hierarchy

:::::: TO: Chris Wilson <chris@chris-wilson.co.uk>
:::::: CC: Chris Wilson <chris@chris-wilson.co.uk>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200605000123.GA9454%40intel.com.

--PEIAKu/WMn1b1Hv9
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--PEIAKu/WMn1b1Hv9--
