Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBPWM5XVAKGQEMTHA7FY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3c.google.com (mail-vk1-xa3c.google.com [IPv6:2607:f8b0:4864:20::a3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EE14954F2
	for <lists+clang-built-linux@lfdr.de>; Tue, 20 Aug 2019 05:17:20 +0200 (CEST)
Received: by mail-vk1-xa3c.google.com with SMTP id l7sf2491526vkm.21
        for <lists+clang-built-linux@lfdr.de>; Mon, 19 Aug 2019 20:17:20 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1566271039; cv=pass;
        d=google.com; s=arc-20160816;
        b=voKlmhjnD3dzd54ZtAwhWDuI8eppyOu6DRPIECEcnqn4tGUNa5TeGCsVqeLenDmvYi
         4GrV6ttATs2dL2XmpEQkS48iwO4BwC/JWj/fgesWJ4FAhchcU1RDxOi5uM96WTydYFYe
         pYL2WpZyLbJk5uOJ9lcns30YJMr10vUtOGb4vm+w+4mhKlIvVNzjyLaAvnBF1cLrS/mN
         fKNK3hYPxo9Kl+dRt7NJFa9nbZMSRWu5g63jqAyhqOnGBZJYzg9wvtymfP6GUiM2YAO4
         acdzSticZ75nn0EVSZCxvvxtC2LUBdTUXdRWlWRC7UeFCe1GK/bBoKX9OLdK4ioVS+8e
         9Kpg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=FidTPhvVDBeUWj3wsnRd2rhBYu4hlJVHGMyHoATwQys=;
        b=cwB9Vgt9jLBuFnEX0/+VKi3XYlx1TciiCr7vqJvpSOBh/1A3nK7HsRCogJfOrCE5jx
         QlbFmOqkyTfi9daU6DQoro4Du7QGpvcJQTr8rGzQ2pz934FmFZMgnaPZ9I1JCn6RmL7d
         D5oFmAElYOH7N7VEOcSw+60GfgPpjPX6m1woOHCDx7CXtAPXqFl7JCwfCfUW7TmGO2PR
         bwhL/rzLwOiL8BJU4t0Xh/rL5h277oU8+ZqkT/BazYMyXWH/G7otntcHtN3TJsc5h77O
         4IALxeQHH2HJno8MHwqQUsV9iavmz7FYR76FmsyAUxM3Y99bdqKrCYZQQx2Ye+dyaXhS
         YCag==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.120 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=FidTPhvVDBeUWj3wsnRd2rhBYu4hlJVHGMyHoATwQys=;
        b=JYYBEF2sW7vr3wHRvE9bKH5WSG183Yg/D9QhftYtPkJNmgRnPQkbxM18I4RZW8DPmP
         2TlGJHWgFngn54dLZ7YeufeKJxv8AYTikWjLE5uFVi5Gogz8fv1FIMmBiBjGI5ywG0+P
         sPpre8HuQDs8jBp6bF0daGtrRQHaqaunw+PmEGbKqeoMwR7XZv2m5vyrTGDpVzLYdGPt
         3W3bJQygSNTHWGq1lwqx02qLeqOaRptIxu05ZtUniCaju6bfMD+qvvDCiM7NlOIFxX+R
         4zYbClIHENuzhTgCuz3+yMaFPWggn13oPwYUl1n8wrtmBylkuKCNQhTTV1gjgFwS6oIM
         Iydg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=FidTPhvVDBeUWj3wsnRd2rhBYu4hlJVHGMyHoATwQys=;
        b=MTJ/W7j7WtwMG44NeMxHI+PCz9PxKNCbRPlw2WB1Ntn3rJd5+uF/6HNYKgBd8cSpet
         n+tq/+AT/6VVZUTpC4qY/f/IrzP8hI2nZ5g2ShmJuf9wAK+OoUXgsYp7JiIdt+qMjFX2
         xZes3Tga3EPYPfLPNfAZV4jwZAkoLzniM8PLxGhRyKwB9gnT6LEtxRFW8TmXx8X0bmdW
         cHWIWHgZSBRns9bLrhc87pTrCpr58YKJyJDkPSZm08X9S0ru53hx8NuUcMWi5udtyMAT
         TldpgJ+4uFjbjDp6MhIKPorEfZ+MT/E4N+3Wg2SjLYm2GU3KIhIkBMhqx8EBD7sqFphG
         iVuw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVB61suRZuVImsX4SgF7UENlv5vEghV69m9T8vbKexzT5UFdgO9
	kYRBd4DAbG4ef8Uzjekc0e0=
X-Google-Smtp-Source: APXvYqzeZMr6sNht+Pe5rXXr3UYAe9+EMzoyl2k8VyiOigMOxhheBYqQJW3aQ21laH5jBwNhouip5g==
X-Received: by 2002:a05:6102:414:: with SMTP id d20mr13801576vsq.99.1566271038907;
        Mon, 19 Aug 2019 20:17:18 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1f:60c5:: with SMTP id u188ls92396vkb.11.gmail; Mon, 19 Aug
 2019 20:17:18 -0700 (PDT)
X-Received: by 2002:a1f:144:: with SMTP id 65mr9267380vkb.51.1566271038530;
        Mon, 19 Aug 2019 20:17:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1566271038; cv=none;
        d=google.com; s=arc-20160816;
        b=DSOEPRU3JNzs2R9EOChcDcWEWHdlAXupswi+NZENM1VUXAfAcyzB0mlIDfY+f6yrse
         CDwuPnnJ5gXRhaybiNOdyatvahER8jYCrKdHhMls5RhFxfK5UAWI+J3U4Wc2SEZeK6DW
         y6DbPGJ9bZkseHJGxXzNj3t2g+dP8eJvwGdFN837LjTkhXdFmIcWrikC1bmi3VjexQaX
         1VE//XUnaWZS+pJ8QL6eaz2LFe3TWv7q2zzYXGJWF/y66ZTmYdju9+zUCBrvJQB+5l8M
         er89M25btQDZrECY4OXyuYtPdQVNkqCueJe9F1DawcZJjrjNq5eTQOOELQezyosogWdk
         clvw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date;
        bh=XjKlVaHkXwCoTlG6syPoGSTNz/Ow+5ceTbcxnfDdHjI=;
        b=VdrB+7B1I812nXRaub1EsQ8jIy3lxUglm1oeIv7q5TxLiLXKxZmYj+CjnXKGQfQqB8
         Yq6YTBojDTfRILGt10/TOk6fBMbxs/l0Psjh6WJiJj1IIFCRb6wWhyuzKerh6wOHFWd5
         yJFpJ2zaXq+7YRiG06lTngm9mlZmztMMmMhDWqPB0i6qvHodXYSO3AquKHKRMGqDHqtH
         dF8bIG2TtvX67VThydPTJhtLfHzTY9Dd41HE7MTMDPDGnhNCXK7pLMESQjJgsMQ0nJL3
         25yWfFF/deVOLCNCqEtkxO43LSefXa+Rw/zEMw++o6O5qjbZWWqGElsrbHaXFjfLnRw4
         +KZA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.120 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga04.intel.com (mga04.intel.com. [192.55.52.120])
        by gmr-mx.google.com with ESMTPS id a128si868024vkh.1.2019.08.19.20.17.17
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 19 Aug 2019 20:17:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.120 as permitted sender) client-ip=192.55.52.120;
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
  by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 19 Aug 2019 20:17:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,407,1559545200"; 
   d="gz'50?scan'50,208,50";a="183057329"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
  by orsmga006.jf.intel.com with ESMTP; 19 Aug 2019 20:17:14 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
	(envelope-from <lkp@intel.com>)
	id 1hzue2-0004RX-0g; Tue, 20 Aug 2019 11:17:14 +0800
Date: Tue, 20 Aug 2019 11:17:12 +0800
From: kbuild test robot <lkp@intel.com>
To: kbuild@01.org
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com
Subject: arch/powerpc/include/asm/current.h:32:43: error: unknown register
 name 'r2' in asm
Message-ID: <201908201102.0U21yPsV%lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="insyh6uratjmazps"
Content-Disposition: inline
X-Patchwork-Hint: ignore
User-Agent: NeoMutt/20170113 (1.7.2)
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


--insyh6uratjmazps
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

CC: kbuild-all@01.org
CC: linux-kernel@vger.kernel.org
TO: Michael Ellerman <mpe@ellerman.id.au>

Hi Michael,

FYI, the error/warning still remains.

tree:   https://kernel.googlesource.com/pub/scm/linux/kernel/git/torvalds/linux.git master
head:   5f97cbe22b7616ead7ae267c29cad73bc1444811
commit: ed4289e8b48845888ee46377bd2b55884a55e60b Revert "powerpc: slightly improve cache helpers"
date:   3 weeks ago
config: powerpc-allnoconfig (attached as .config)
compiler: clang version 10.0.0 (git://gitmirror/llvm_project 45a3fd206fb06f77a08968c99a8172cbf2ccdd0f)
reproduce:
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        git checkout ed4289e8b48845888ee46377bd2b55884a55e60b
        # save the attached .config to linux build tree
        make.cross ARCH=powerpc 

If you fix the issue, kindly add following tag
Reported-by: kbuild test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

   In file included from kernel/bounds.c:10:
   In file included from include/linux/page-flags.h:10:
   In file included from include/linux/bug.h:5:
   In file included from arch/powerpc/include/asm/bug.h:128:
   In file included from include/asm-generic/bug.h:18:
   In file included from include/linux/kernel.h:12:
   In file included from include/linux/bitops.h:19:
   In file included from arch/powerpc/include/asm/bitops.h:243:
   In file included from include/asm-generic/bitops/le.h:6:
   In file included from arch/powerpc/include/uapi/asm/byteorder.h:12:
   include/linux/byteorder/little_endian.h:8:2: warning: inconsistent configuration, CONFIG_CPU_BIG_ENDIAN is set [-W#warnings]
   #warning inconsistent configuration, CONFIG_CPU_BIG_ENDIAN is set
    ^
   1 warning generated.
   In file included from arch/powerpc/kernel/asm-offsets.c:14:
   In file included from include/linux/compat.h:10:
   In file included from include/linux/time.h:6:
   In file included from include/linux/seqlock.h:36:
   In file included from include/linux/spinlock.h:51:
   In file included from include/linux/preempt.h:11:
   In file included from include/linux/list.h:9:
   In file included from include/linux/kernel.h:12:
   In file included from include/linux/bitops.h:19:
   In file included from arch/powerpc/include/asm/bitops.h:243:
   In file included from include/asm-generic/bitops/le.h:6:
   In file included from arch/powerpc/include/uapi/asm/byteorder.h:12:
   include/linux/byteorder/little_endian.h:8:2: warning: inconsistent configuration, CONFIG_CPU_BIG_ENDIAN is set [-W#warnings]
   #warning inconsistent configuration, CONFIG_CPU_BIG_ENDIAN is set
    ^
   In file included from arch/powerpc/kernel/asm-offsets.c:14:
   In file included from include/linux/compat.h:10:
   In file included from include/linux/time.h:6:
   In file included from include/linux/seqlock.h:36:
   In file included from include/linux/spinlock.h:51:
   In file included from include/linux/preempt.h:78:
   In file included from ./arch/powerpc/include/generated/asm/preempt.h:1:
   In file included from include/asm-generic/preempt.h:5:
   In file included from include/linux/thread_info.h:21:
>> arch/powerpc/include/asm/current.h:32:43: error: unknown register name 'r2' in asm
   register struct task_struct *current asm ("r2");
                                             ^
   In file included from arch/powerpc/kernel/asm-offsets.c:14:
   In file included from include/linux/compat.h:10:
   In file included from include/linux/time.h:6:
   In file included from include/linux/seqlock.h:36:
   In file included from include/linux/spinlock.h:445:
   In file included from include/linux/atomic.h:7:
>> arch/powerpc/include/asm/atomic.h:138:10: error: unknown register name 'xer' in asm
           : "cc", "xer");
                   ^
   arch/powerpc/include/asm/atomic.h:154:10: error: unknown register name 'xer' in asm
           : "cc", "xer");
                   ^
   arch/powerpc/include/asm/atomic.h:171:10: error: unknown register name 'xer' in asm
           : "cc", "xer");
                   ^
   arch/powerpc/include/asm/atomic.h:187:10: error: unknown register name 'xer' in asm
           : "cc", "xer");
                   ^
   arch/powerpc/include/asm/atomic.h:262:10: error: unknown register name 'xer' in asm
           : "cc", "xer", "memory");
                   ^
   In file included from arch/powerpc/kernel/asm-offsets.c:15:
   include/linux/signal.h:87:11: warning: array index 3 is past the end of the array (which contains 2 elements) [-Warray-bounds]
                   return (set->sig[3] | set->sig[2] |
                           ^        ~
   arch/powerpc/include/uapi/asm/signal.h:18:2: note: array 'sig' declared here
           unsigned long sig[_NSIG_WORDS];
           ^
   In file included from arch/powerpc/kernel/asm-offsets.c:15:
   include/linux/signal.h:87:25: warning: array index 2 is past the end of the array (which contains 2 elements) [-Warray-bounds]
                   return (set->sig[3] | set->sig[2] |
                                         ^        ~
   arch/powerpc/include/uapi/asm/signal.h:18:2: note: array 'sig' declared here
           unsigned long sig[_NSIG_WORDS];
           ^
   In file included from arch/powerpc/kernel/asm-offsets.c:15:
   include/linux/signal.h:103:11: warning: array index 3 is past the end of the array (which contains 2 elements) [-Warray-bounds]
                   return  (set1->sig[3] == set2->sig[3]) &&
                            ^         ~
   arch/powerpc/include/uapi/asm/signal.h:18:2: note: array 'sig' declared here
           unsigned long sig[_NSIG_WORDS];
           ^
   In file included from arch/powerpc/kernel/asm-offsets.c:15:
   include/linux/signal.h:103:27: warning: array index 3 is past the end of the array (which contains 2 elements) [-Warray-bounds]
                   return  (set1->sig[3] == set2->sig[3]) &&
                                            ^         ~
   arch/powerpc/include/uapi/asm/signal.h:18:2: note: array 'sig' declared here
           unsigned long sig[_NSIG_WORDS];
           ^
   In file included from arch/powerpc/kernel/asm-offsets.c:15:
   include/linux/signal.h:104:5: warning: array index 2 is past the end of the array (which contains 2 elements) [-Warray-bounds]
                           (set1->sig[2] == set2->sig[2]) &&
                            ^         ~
   arch/powerpc/include/uapi/asm/signal.h:18:2: note: array 'sig' declared here
           unsigned long sig[_NSIG_WORDS];
           ^
   In file included from arch/powerpc/kernel/asm-offsets.c:15:
   include/linux/signal.h:104:21: warning: array index 2 is past the end of the array (which contains 2 elements) [-Warray-bounds]
                           (set1->sig[2] == set2->sig[2]) &&
                                            ^         ~
   arch/powerpc/include/uapi/asm/signal.h:18:2: note: array 'sig' declared here
           unsigned long sig[_NSIG_WORDS];
           ^
   In file included from arch/powerpc/kernel/asm-offsets.c:15:
   include/linux/signal.h:147:1: warning: array index 3 is past the end of the array (which contains 2 elements) [-Warray-bounds]
   _SIG_SET_BINOP(sigorsets, _sig_or)
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/signal.h:128:8: note: expanded from macro '_SIG_SET_BINOP'
                   a3 = a->sig[3]; a2 = a->sig[2];                         \
                        ^      ~
   arch/powerpc/include/uapi/asm/signal.h:18:2: note: array 'sig' declared here
           unsigned long sig[_NSIG_WORDS];
           ^
   In file included from arch/powerpc/kernel/asm-offsets.c:15:
   include/linux/signal.h:147:1: warning: array index 2 is past the end of the array (which contains 2 elements) [-Warray-bounds]
   _SIG_SET_BINOP(sigorsets, _sig_or)
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/signal.h:128:24: note: expanded from macro '_SIG_SET_BINOP'
                   a3 = a->sig[3]; a2 = a->sig[2];                         \
                                        ^      ~
   arch/powerpc/include/uapi/asm/signal.h:18:2: note: array 'sig' declared here
           unsigned long sig[_NSIG_WORDS];
           ^
   In file included from arch/powerpc/kernel/asm-offsets.c:15:
   include/linux/signal.h:147:1: warning: array index 3 is past the end of the array (which contains 2 elements) [-Warray-bounds]
   _SIG_SET_BINOP(sigorsets, _sig_or)
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/signal.h:129:8: note: expanded from macro '_SIG_SET_BINOP'
                   b3 = b->sig[3]; b2 = b->sig[2];                         \
                        ^      ~
   arch/powerpc/include/uapi/asm/signal.h:18:2: note: array 'sig' declared here
           unsigned long sig[_NSIG_WORDS];
           ^
   In file included from arch/powerpc/kernel/asm-offsets.c:15:
   include/linux/signal.h:147:1: warning: array index 2 is past the end of the array (which contains 2 elements) [-Warray-bounds]
   _SIG_SET_BINOP(sigorsets, _sig_or)
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/signal.h:129:24: note: expanded from macro '_SIG_SET_BINOP'
                   b3 = b->sig[3]; b2 = b->sig[2];                         \
                                        ^      ~
   arch/powerpc/include/uapi/asm/signal.h:18:2: note: array 'sig' declared here
           unsigned long sig[_NSIG_WORDS];
           ^
   In file included from arch/powerpc/kernel/asm-offsets.c:15:
   include/linux/signal.h:147:1: warning: array index 3 is past the end of the array (which contains 2 elements) [-Warray-bounds]
   _SIG_SET_BINOP(sigorsets, _sig_or)
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
--
   In file included from arch/powerpc/kernel/asm-offsets.c:15:
   include/linux/signal.h:153:1: warning: array index 2 is past the end of the array (which contains 2 elements) [-Warray-bounds]
   _SIG_SET_BINOP(sigandnsets, _sig_andn)
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/signal.h:129:24: note: expanded from macro '_SIG_SET_BINOP'
                   b3 = b->sig[3]; b2 = b->sig[2];                         \
                                        ^      ~
   arch/powerpc/include/uapi/asm/signal.h:18:2: note: array 'sig' declared here
           unsigned long sig[_NSIG_WORDS];
           ^
   In file included from arch/powerpc/kernel/asm-offsets.c:15:
   include/linux/signal.h:153:1: warning: array index 3 is past the end of the array (which contains 2 elements) [-Warray-bounds]
   _SIG_SET_BINOP(sigandnsets, _sig_andn)
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/signal.h:130:3: note: expanded from macro '_SIG_SET_BINOP'
                   r->sig[3] = op(a3, b3);                                 \
                   ^      ~
   arch/powerpc/include/uapi/asm/signal.h:18:2: note: array 'sig' declared here
           unsigned long sig[_NSIG_WORDS];
           ^
   In file included from arch/powerpc/kernel/asm-offsets.c:15:
   include/linux/signal.h:153:1: warning: array index 2 is past the end of the array (which contains 2 elements) [-Warray-bounds]
   _SIG_SET_BINOP(sigandnsets, _sig_andn)
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/signal.h:131:3: note: expanded from macro '_SIG_SET_BINOP'
                   r->sig[2] = op(a2, b2);                                 \
                   ^      ~
   arch/powerpc/include/uapi/asm/signal.h:18:2: note: array 'sig' declared here
           unsigned long sig[_NSIG_WORDS];
           ^
   In file included from arch/powerpc/kernel/asm-offsets.c:15:
   include/linux/signal.h:177:1: warning: array index 3 is past the end of the array (which contains 2 elements) [-Warray-bounds]
   _SIG_SET_OP(signotset, _sig_not)
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/signal.h:164:27: note: expanded from macro '_SIG_SET_OP'
           case 4: set->sig[3] = op(set->sig[3]);                          \
                                    ^        ~
   include/linux/signal.h:176:24: note: expanded from macro '_sig_not'
   #define _sig_not(x)     (~(x))
                              ^
   arch/powerpc/include/uapi/asm/signal.h:18:2: note: array 'sig' declared here
           unsigned long sig[_NSIG_WORDS];
           ^
   In file included from arch/powerpc/kernel/asm-offsets.c:15:
   include/linux/signal.h:177:1: warning: array index 3 is past the end of the array (which contains 2 elements) [-Warray-bounds]
   _SIG_SET_OP(signotset, _sig_not)
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/signal.h:164:10: note: expanded from macro '_SIG_SET_OP'
           case 4: set->sig[3] = op(set->sig[3]);                          \
                   ^        ~
   arch/powerpc/include/uapi/asm/signal.h:18:2: note: array 'sig' declared here
           unsigned long sig[_NSIG_WORDS];
           ^
   In file included from arch/powerpc/kernel/asm-offsets.c:15:
   include/linux/signal.h:177:1: warning: array index 2 is past the end of the array (which contains 2 elements) [-Warray-bounds]
   _SIG_SET_OP(signotset, _sig_not)
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/signal.h:165:20: note: expanded from macro '_SIG_SET_OP'
                   set->sig[2] = op(set->sig[2]);                          \
                                    ^        ~
   include/linux/signal.h:176:24: note: expanded from macro '_sig_not'
   #define _sig_not(x)     (~(x))
                              ^
   arch/powerpc/include/uapi/asm/signal.h:18:2: note: array 'sig' declared here
           unsigned long sig[_NSIG_WORDS];
           ^
   In file included from arch/powerpc/kernel/asm-offsets.c:15:
   include/linux/signal.h:177:1: warning: array index 2 is past the end of the array (which contains 2 elements) [-Warray-bounds]
   _SIG_SET_OP(signotset, _sig_not)
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/signal.h:165:3: note: expanded from macro '_SIG_SET_OP'
                   set->sig[2] = op(set->sig[2]);                          \
                   ^        ~
   arch/powerpc/include/uapi/asm/signal.h:18:2: note: array 'sig' declared here
           unsigned long sig[_NSIG_WORDS];
           ^
   In file included from arch/powerpc/kernel/asm-offsets.c:21:
   include/linux/mman.h:133:9: warning: division by zero is undefined [-Wdivision-by-zero]
                  _calc_vm_trans(flags, MAP_LOCKED,     VM_LOCKED    ) |
                  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/mman.h:111:21: note: expanded from macro '_calc_vm_trans'
      : ((x) & (bit1)) / ((bit1) / (bit2))))
                       ^ ~~~~~~~~~~~~~~~~~
   include/linux/mman.h:134:9: warning: division by zero is undefined [-Wdivision-by-zero]
                  _calc_vm_trans(flags, MAP_SYNC,       VM_SYNC      );
                  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/mman.h:111:21: note: expanded from macro '_calc_vm_trans'
      : ((x) & (bit1)) / ((bit1) / (bit2))))
                       ^ ~~~~~~~~~~~~~~~~~
   In file included from arch/powerpc/kernel/asm-offsets.c:23:
   In file included from include/linux/suspend.h:5:
   In file included from include/linux/swap.h:9:
   In file included from include/linux/memcontrol.h:13:
   In file included from include/linux/cgroup.h:26:
   In file included from include/linux/kernel_stat.h:9:
   In file included from include/linux/interrupt.h:11:
   In file included from include/linux/hardirq.h:9:
   In file included from arch/powerpc/include/asm/hardirq.h:6:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
>> arch/powerpc/include/asm/io.h:152:1: error: constraint 'Z' expects an integer constant expression
   DEF_MMIO_IN_X(in_be16, 16, lhbrx);
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:109:23: note: expanded from macro 'DEF_MMIO_IN_X'
                   : "=r" (ret) : "Z" (*addr) : "memory");                 \
                                       ^~~~~
   arch/powerpc/include/asm/io.h:153:1: error: constraint 'Z' expects an integer constant expression
   DEF_MMIO_IN_X(in_be32, 32, lwbrx);
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:109:23: note: expanded from macro 'DEF_MMIO_IN_X'
                   : "=r" (ret) : "Z" (*addr) : "memory");                 \
                                       ^~~~~
>> arch/powerpc/include/asm/io.h:157:1: error: invalid output constraint '=Z' in asm
   DEF_MMIO_OUT_X(out_be16, 16, sthbrx);
   ^
   arch/powerpc/include/asm/io.h:117:5: note: expanded from macro 'DEF_MMIO_OUT_X'
                   : "=Z" (*addr) : "r" (val) : "memory");                 \
                     ^
   arch/powerpc/include/asm/io.h:158:1: error: invalid output constraint '=Z' in asm
   DEF_MMIO_OUT_X(out_be32, 32, stwbrx);
   ^
   arch/powerpc/include/asm/io.h:117:5: note: expanded from macro 'DEF_MMIO_OUT_X'
                   : "=Z" (*addr) : "r" (val) : "memory");                 \
                     ^
   31 warnings and 10 errors generated.
   make[2]: *** [arch/powerpc/kernel/asm-offsets.s] Error 1
   make[2]: Target '__build' not remade because of errors.
   make[1]: *** [prepare0] Error 2
   make[1]: Target 'prepare' not remade because of errors.
   make: *** [sub-make] Error 2
   16 real  4 user  6 sys  67.00% cpu 	make prepare

vim +/r2 +32 arch/powerpc/include/asm/current.h

584224e4095d8a include/asm-powerpc/current.h David Gibson 2005-11-09  28  
584224e4095d8a include/asm-powerpc/current.h David Gibson 2005-11-09  29  /*
584224e4095d8a include/asm-powerpc/current.h David Gibson 2005-11-09  30   * We keep `current' in r2 for speed.
584224e4095d8a include/asm-powerpc/current.h David Gibson 2005-11-09  31   */
584224e4095d8a include/asm-powerpc/current.h David Gibson 2005-11-09 @32  register struct task_struct *current asm ("r2");
584224e4095d8a include/asm-powerpc/current.h David Gibson 2005-11-09  33  

:::::: The code at line 32 was first introduced by commit
:::::: 584224e4095d8abcf2bef38efacc291be9a44c20 [PATCH] powerpc: Merge current.h

:::::: TO: David Gibson <david@gibson.dropbear.id.au>
:::::: CC: Paul Mackerras <paulus@samba.org>

---
0-DAY kernel test infrastructure                Open Source Technology Center
https://lists.01.org/pipermail/kbuild-all                   Intel Corporation

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/201908201102.0U21yPsV%25lkp%40intel.com.

--insyh6uratjmazps
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
+g8qSXuhTlgAAA==

--insyh6uratjmazps--
