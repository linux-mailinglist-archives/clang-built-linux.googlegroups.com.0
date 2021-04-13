Return-Path: <clang-built-linux+bncBC4LXIPCY4NRB7UE2WBQMGQEEV6RQIA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83e.google.com (mail-qt1-x83e.google.com [IPv6:2607:f8b0:4864:20::83e])
	by mail.lfdr.de (Postfix) with ESMTPS id F316535D873
	for <lists+clang-built-linux@lfdr.de>; Tue, 13 Apr 2021 09:04:31 +0200 (CEST)
Received: by mail-qt1-x83e.google.com with SMTP id w8sf695661qtk.3
        for <lists+clang-built-linux@lfdr.de>; Tue, 13 Apr 2021 00:04:31 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1618297471; cv=pass;
        d=google.com; s=arc-20160816;
        b=yiizIgNIs8EL5dQNrnZ3EwmR5Yt6mxfTmfW/KGIEd4AGfZG47YiF25VZY3I3SicyCx
         9350RY/IAXXakqpxS3aitx+Im84/21JUWhd8Y40Zjw2ioXFFUVURoiN4wM6gJJVorWEy
         VGGc10jeRPvc1f5Nx6qTDw0X4v0wJf1trTTJ0wxXztflzmxlCc9uoy4Zk3R/cu4Tirmh
         rn15ewv3Hj4zi3ZIWMvzMxjTze27W5+Xu88iWttcXAdKHB/UDZn/UCyYwgH3eVhkQvba
         uSEe17pWCkv47ayRKDTxrPDiG2NiaUEqffizSI6MTxWac8b2F2NyU3SEVnwbeS5riZsN
         +50A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=jdJ/LzzmQKYlPjlE92Cnga3joZd9NOvpgYjNY2vmgJ0=;
        b=XURYhBjmqnokfkfP6HgxhdGdsTu7n1AXwuvHVpHHezROLLFkDc1110iUHjNz1F5fV4
         ezxeSFclyi2YczgVmBz7n2REErDboFFPStUWe8f+ZCQsxLuAwazTRivYcrIGTGvlMhea
         FaWBtb6272T/G1lniiZ3K95VEB6UOmlhaEoSTFRBNJgzuHMsoBKkiExZCwPZTu4FVAdt
         vT7BJqt/f+ImxasZHEsJYc/O+W7FvtQOTGYxzz5m5QW7WdE+Pu1arX+rnNGf0yaOaH+A
         WScGd5Krqka5TJE5yaHijmU7Ortqty5FpXJmud327S5k25DeD8izzTX/hXJEdUy5EJG0
         GfZg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.151 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=jdJ/LzzmQKYlPjlE92Cnga3joZd9NOvpgYjNY2vmgJ0=;
        b=cp9+xNZLLSNulVGNRCKFWrzOdxoV9NNPBgzSwXyQFnYVrWnprwJBJfUBZif7UmLwDH
         ylLDjQcaVJqgeEZIQKEfzEfE2teJpEloZ8djtXB9Gvxj3wiETj0s4Sw/f7xFZ3n5wy7B
         KSJUMKcP1Fa4u67vTBzTdM+xY3Wg2SRgo+kDxcFy+WExtmIdOui4pQKjIwW6I9KIQ8B9
         Rzk3aLm25MFAVfjbpJQWSWqxxd5Z2ztywh3dKbctkNQlqXn01xhSNH9wNqS0dIxcliix
         SNau+7r+PIvrrbo8yPLZ8k3OCHCZDgHGyTnbh2cwU5buvgPyCq/NMUS0mnK6ZQpoC312
         oR6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:references:mime-version:content-disposition
         :in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=jdJ/LzzmQKYlPjlE92Cnga3joZd9NOvpgYjNY2vmgJ0=;
        b=BWNT3oQW82cjLb+URlmvdQRaAVihgfNsN9v0uocUUW1yrdrNAnEugQHxKYqNlrBJAn
         xWpTfHRaJsLpOeyrxqN1BmY5nEfk33xxuo1oUgUkKhaHowtuVGIPGTROXKjA4sS31g/r
         N36Z/G6+DI/xX+btOPT46MjqZvmRtwwvmVnmH60Ul2yRci5C06F9IFA0UantAkwWmKPf
         AMcMhRij9wvjfyqyMloUptcbMbzoaQeUgSVVXH682D3IgS7GoHpa5QsNS0PXxi1GoFTs
         DkhdmartoH+KmsyJpV7uQRkuQpHE/xrkzlDjVbYqgXihQPqI+N5lm6SB5Nj3gnfXQVT4
         4BCA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5334DLumfZ/CGnTJAUFhdiWbTdyNtYA9OVSkUTj+s2IYy7UOZxET
	vPZbglykX6RB//9FRjMaB2A=
X-Google-Smtp-Source: ABdhPJx6BdzkdwlkpR34dAIBYDo32Y5Nh8AumXv+3h0vFjAmy0bEuB5zkCMj5k94Q7ioV7C8hBRnZg==
X-Received: by 2002:a05:620a:2014:: with SMTP id c20mr12926106qka.207.1618297471008;
        Tue, 13 Apr 2021 00:04:31 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:400e:: with SMTP id h14ls10609472qko.11.gmail; Tue,
 13 Apr 2021 00:04:30 -0700 (PDT)
X-Received: by 2002:a37:ef18:: with SMTP id j24mr31174285qkk.96.1618297470427;
        Tue, 13 Apr 2021 00:04:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618297470; cv=none;
        d=google.com; s=arc-20160816;
        b=heLersgZk0tmg/U5LKJcjm6lgMrFDDbT1aYnZNqPhoUejnLjVXR83EzsVeeSvK5fWA
         eKxrs6ZmS9XEqJGClhlgvg6Gf/kSRASw+KXGGQrOxevIA4vTAE7/j3hLLaBpJA6lnb1e
         mlJIOWCe01uJCxfgLj4XtPjqtvXjkmQuMqXR2TYJeM4MDdzb8P3rQg+AnLpd1txAaURq
         HwgKayhfPfKXE59uaoUReDAVoD1bmTYvaqaJCPNm1G220ybgUKyPkag8ZQYbDN5AkTPw
         3Fmx+v6gSR7SxMcUyqOZAnY7ytlFSPCbu+jJzDNvL7v3DiXveC/rgmbKunfdSywjfp4m
         1rHg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:ironport-sdr:ironport-sdr;
        bh=F6T8E4uyuhnDxuGVzPdjSleAbx9gUmRGZRm7oLsjNG8=;
        b=Mf/rnypQ11jue3WK9KjU8Km83TILZYKPkZCDJWFdpmV922pneezcp4Ckg7nwWpGhQm
         bFLjH8G6rxfQs5vuROstDGU+lnbh+z+8Nz1VX6TB9w9ErjY9e5IK9lg48/bJ5aQRFCYO
         ztmyryQ/6KmNo1I1zOm0AWrIO32TvqH1bkBMUawXIUoA4L5ubBY0pdOYLdysOleJj14N
         DIWdzuYxYT6YEIO5FYemJuVLahQcAUUHacJsXvIe41rYkyl7WtUL7WYE9ToMyNY9M60h
         yP+/MaG824AYxvTJumqwxhT4q1oSHTz6nKygkru3a8TbErUXEhleRCjXltMMRn9ezEZL
         fSIg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.151 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga17.intel.com (mga17.intel.com. [192.55.52.151])
        by gmr-mx.google.com with ESMTPS id b16si220835qtq.1.2021.04.13.00.04.29
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Apr 2021 00:04:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.151 as permitted sender) client-ip=192.55.52.151;
IronPort-SDR: ukJVabkJ1InRukr8dVH09Cb5k0mM8bVfBkoHB7SsM9BSaiMdT89yQKaDkeM7TfoXqYM3wiBWah
 xQElgw9xAsdg==
X-IronPort-AV: E=McAfee;i="6200,9189,9952"; a="174452443"
X-IronPort-AV: E=Sophos;i="5.82,218,1613462400"; 
   d="gz'50?scan'50,208,50";a="174452443"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
  by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 13 Apr 2021 00:04:26 -0700
IronPort-SDR: 6i0j9AuAK5yapsPdM5A8DeQ+6gWotcM4DpVqehLC/ix2wD/4Qr5dJBy5fvyt+AMUWMd6+jZThF
 XEB4ULiW+D7w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,218,1613462400"; 
   d="gz'50?scan'50,208,50";a="420693384"
Received: from lkp-server01.sh.intel.com (HELO 69d8fcc516b7) ([10.239.97.150])
  by orsmga007.jf.intel.com with ESMTP; 13 Apr 2021 00:04:22 -0700
Received: from kbuild by 69d8fcc516b7 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1lWD5x-0000tm-Km; Tue, 13 Apr 2021 07:04:21 +0000
Date: Tue, 13 Apr 2021 15:03:33 +0800
From: kernel test robot <lkp@intel.com>
To: Namhyung Kim <namhyung@kernel.org>,
	Peter Zijlstra <peterz@infradead.org>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	Ingo Molnar <mingo@kernel.org>,
	Arnaldo Carvalho de Melo <acme@kernel.org>,
	Jiri Olsa <jolsa@redhat.com>, Mark Rutland <mark.rutland@arm.com>,
	Alexander Shishkin <alexander.shishkin@linux.intel.com>,
	LKML <linux-kernel@vger.kernel.org>,
	Stephane Eranian <eranian@google.com>,
	Andi Kleen <ak@linux.intel.com>, Ian Rogers <irogers@google.com>
Subject: Re: [PATCH v2 1/2] perf/core: Share an event with multiple cgroups
Message-ID: <202104131425.m97OrSC1-lkp@intel.com>
References: <20210413044133.617921-2-namhyung@kernel.org>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="envbJBWh7q8WU6mo"
Content-Disposition: inline
In-Reply-To: <20210413044133.617921-2-namhyung@kernel.org>
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


--envbJBWh7q8WU6mo
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi Namhyung,

I love your patch! Yet something to improve:

[auto build test ERROR on tip/perf/core]
[also build test ERROR on tip/master linux/master linus/master v5.12-rc7 next-20210412]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch]

url:    https://github.com/0day-ci/linux/commits/Namhyung-Kim/perf-core-Sharing-events-with-multiple-cgroups/20210413-124251
base:   https://git.kernel.org/pub/scm/linux/kernel/git/tip/tip.git cface0326a6c2ae5c8f47bd466f07624b3e348a7
config: arm64-randconfig-r026-20210413 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 9829f5e6b1bca9b61efc629770d28bb9014dec45)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install arm64 cross compiling tool for clang build
        # apt-get install binutils-aarch64-linux-gnu
        # https://github.com/0day-ci/linux/commit/c604a61fb3cfd58be50992c8284b13e598312794
        git remote add linux-review https://github.com/0day-ci/linux
        git fetch --no-tags linux-review Namhyung-Kim/perf-core-Sharing-events-with-multiple-cgroups/20210413-124251
        git checkout c604a61fb3cfd58be50992c8284b13e598312794
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=arm64 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

>> kernel/events/core.c:3891:32: error: use of undeclared identifier 'cgroup_ctx_list'; did you mean 'cgroup_exit'?
           if (!list_empty(this_cpu_ptr(&cgroup_ctx_list)) &&
                                         ^~~~~~~~~~~~~~~
                                         cgroup_exit
   include/linux/percpu-defs.h:252:39: note: expanded from macro 'this_cpu_ptr'
   #define this_cpu_ptr(ptr) raw_cpu_ptr(ptr)
                                         ^
   include/linux/percpu-defs.h:241:20: note: expanded from macro 'raw_cpu_ptr'
           __verify_pcpu_ptr(ptr);                                         \
                             ^
   include/linux/percpu-defs.h:219:47: note: expanded from macro '__verify_pcpu_ptr'
           const void __percpu *__vpp_verify = (typeof((ptr) + 0))NULL;    \
                                                        ^
   include/linux/cgroup.h:130:6: note: 'cgroup_exit' declared here
   void cgroup_exit(struct task_struct *p);
        ^
>> kernel/events/core.c:3891:32: error: use of undeclared identifier 'cgroup_ctx_list'; did you mean 'cgroup_exit'?
           if (!list_empty(this_cpu_ptr(&cgroup_ctx_list)) &&
                                         ^~~~~~~~~~~~~~~
                                         cgroup_exit
   include/linux/percpu-defs.h:252:39: note: expanded from macro 'this_cpu_ptr'
   #define this_cpu_ptr(ptr) raw_cpu_ptr(ptr)
                                         ^
   include/linux/percpu-defs.h:242:19: note: expanded from macro 'raw_cpu_ptr'
           arch_raw_cpu_ptr(ptr);                                          \
                            ^
   include/asm-generic/percpu.h:44:48: note: expanded from macro 'arch_raw_cpu_ptr'
   #define arch_raw_cpu_ptr(ptr) SHIFT_PERCPU_PTR(ptr, __my_cpu_offset)
                                                  ^
   include/linux/percpu-defs.h:231:23: note: expanded from macro 'SHIFT_PERCPU_PTR'
           RELOC_HIDE((typeof(*(__p)) __kernel __force *)(__p), (__offset))
                                ^
   include/linux/compiler.h:181:31: note: expanded from macro 'RELOC_HIDE'
        __ptr = (unsigned long) (ptr);                             \
                                 ^
   include/linux/cgroup.h:130:6: note: 'cgroup_exit' declared here
   void cgroup_exit(struct task_struct *p);
        ^
>> kernel/events/core.c:3891:32: error: use of undeclared identifier 'cgroup_ctx_list'; did you mean 'cgroup_exit'?
           if (!list_empty(this_cpu_ptr(&cgroup_ctx_list)) &&
                                         ^~~~~~~~~~~~~~~
                                         cgroup_exit
   include/linux/percpu-defs.h:252:39: note: expanded from macro 'this_cpu_ptr'
   #define this_cpu_ptr(ptr) raw_cpu_ptr(ptr)
                                         ^
   include/linux/percpu-defs.h:242:19: note: expanded from macro 'raw_cpu_ptr'
           arch_raw_cpu_ptr(ptr);                                          \
                            ^
   include/asm-generic/percpu.h:44:48: note: expanded from macro 'arch_raw_cpu_ptr'
   #define arch_raw_cpu_ptr(ptr) SHIFT_PERCPU_PTR(ptr, __my_cpu_offset)
                                                  ^
   include/linux/percpu-defs.h:231:49: note: expanded from macro 'SHIFT_PERCPU_PTR'
           RELOC_HIDE((typeof(*(__p)) __kernel __force *)(__p), (__offset))
                                                          ^
   include/linux/compiler.h:181:31: note: expanded from macro 'RELOC_HIDE'
        __ptr = (unsigned long) (ptr);                             \
                                 ^
   include/linux/cgroup.h:130:6: note: 'cgroup_exit' declared here
   void cgroup_exit(struct task_struct *p);
        ^
>> kernel/events/core.c:3891:32: error: use of undeclared identifier 'cgroup_ctx_list'; did you mean 'cgroup_exit'?
           if (!list_empty(this_cpu_ptr(&cgroup_ctx_list)) &&
                                         ^~~~~~~~~~~~~~~
                                         cgroup_exit
   include/linux/percpu-defs.h:252:39: note: expanded from macro 'this_cpu_ptr'
   #define this_cpu_ptr(ptr) raw_cpu_ptr(ptr)
                                         ^
   include/linux/percpu-defs.h:242:19: note: expanded from macro 'raw_cpu_ptr'
           arch_raw_cpu_ptr(ptr);                                          \
                            ^
   include/asm-generic/percpu.h:44:48: note: expanded from macro 'arch_raw_cpu_ptr'
   #define arch_raw_cpu_ptr(ptr) SHIFT_PERCPU_PTR(ptr, __my_cpu_offset)
                                                  ^
   include/linux/percpu-defs.h:231:23: note: expanded from macro 'SHIFT_PERCPU_PTR'
           RELOC_HIDE((typeof(*(__p)) __kernel __force *)(__p), (__offset))
                                ^
   include/linux/compiler.h:182:13: note: expanded from macro 'RELOC_HIDE'
       (typeof(ptr)) (__ptr + (off)); })
               ^
   include/linux/cgroup.h:130:6: note: 'cgroup_exit' declared here
   void cgroup_exit(struct task_struct *p);
        ^
>> kernel/events/core.c:3891:32: error: use of undeclared identifier 'cgroup_ctx_list'; did you mean 'cgroup_exit'?
           if (!list_empty(this_cpu_ptr(&cgroup_ctx_list)) &&
                                         ^~~~~~~~~~~~~~~
                                         cgroup_exit
   include/linux/percpu-defs.h:252:39: note: expanded from macro 'this_cpu_ptr'
   #define this_cpu_ptr(ptr) raw_cpu_ptr(ptr)
                                         ^
   include/linux/percpu-defs.h:242:19: note: expanded from macro 'raw_cpu_ptr'
           arch_raw_cpu_ptr(ptr);                                          \
                            ^
   include/asm-generic/percpu.h:44:48: note: expanded from macro 'arch_raw_cpu_ptr'
   #define arch_raw_cpu_ptr(ptr) SHIFT_PERCPU_PTR(ptr, __my_cpu_offset)
                                                  ^
   include/linux/percpu-defs.h:231:49: note: expanded from macro 'SHIFT_PERCPU_PTR'
           RELOC_HIDE((typeof(*(__p)) __kernel __force *)(__p), (__offset))
                                                          ^
   include/linux/compiler.h:182:13: note: expanded from macro 'RELOC_HIDE'
       (typeof(ptr)) (__ptr + (off)); })
               ^
   include/linux/cgroup.h:130:6: note: 'cgroup_exit' declared here
   void cgroup_exit(struct task_struct *p);
        ^
>> kernel/events/core.c:3891:18: error: incompatible pointer types passing 'typeof ((typeof (*(&cgroup_exit)) *)(&cgroup_exit))' (aka 'void (*)(struct task_struct *)') to parameter of type 'const struct list_head *' [-Werror,-Wincompatible-pointer-types]
           if (!list_empty(this_cpu_ptr(&cgroup_ctx_list)) &&
                           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/percpu-defs.h:252:27: note: expanded from macro 'this_cpu_ptr'
   #define this_cpu_ptr(ptr) raw_cpu_ptr(ptr)
                             ^~~~~~~~~~~~~~~~
   include/linux/percpu-defs.h:239:31: note: expanded from macro 'raw_cpu_ptr'
   #define raw_cpu_ptr(ptr)                                                \
                                                                           ^
   include/linux/list.h:280:54: note: passing argument to parameter 'head' here
   static inline int list_empty(const struct list_head *head)
                                                        ^
>> kernel/events/core.c:3892:6: error: implicit declaration of function 'perf_cgroup_from_task' [-Werror,-Wimplicit-function-declaration]
               perf_cgroup_from_task(task, NULL) !=
               ^
   kernel/events/core.c:3892:6: note: did you mean 'perf_cgroup_match'?
   kernel/events/core.c:1057:1: note: 'perf_cgroup_match' declared here
   perf_cgroup_match(struct perf_event *event)
   ^
>> kernel/events/core.c:5955:10: error: too many arguments to function call, expected 3, have 4
                                                      (char __user *)(arg + 16));
                                                      ^~~~~~~~~~~~~~~~~~~~~~~~~
   kernel/events/core.c:2437:19: note: 'perf_event_read_cgroup_node' declared here
   static inline int perf_event_read_cgroup_node(struct perf_event *event,
                     ^
   kernel/events/core.c:6981:6: warning: no previous prototype for function 'perf_pmu_snapshot_aux' [-Wmissing-prototypes]
   long perf_pmu_snapshot_aux(struct perf_buffer *rb,
        ^
   kernel/events/core.c:6981:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   long perf_pmu_snapshot_aux(struct perf_buffer *rb,
   ^
   static 
   1 warning and 8 errors generated.


vim +3891 kernel/events/core.c

  3851	
  3852	static void perf_event_switch(struct task_struct *task,
  3853				      struct task_struct *next_prev, bool sched_in);
  3854	
  3855	#define for_each_task_context_nr(ctxn)					\
  3856		for ((ctxn) = 0; (ctxn) < perf_nr_task_contexts; (ctxn)++)
  3857	
  3858	/*
  3859	 * Called from scheduler to remove the events of the current task,
  3860	 * with interrupts disabled.
  3861	 *
  3862	 * We stop each event and update the event value in event->count.
  3863	 *
  3864	 * This does not protect us against NMI, but disable()
  3865	 * sets the disabled bit in the control field of event _before_
  3866	 * accessing the event control register. If a NMI hits, then it will
  3867	 * not restart the event.
  3868	 */
  3869	void __perf_event_task_sched_out(struct task_struct *task,
  3870					 struct task_struct *next)
  3871	{
  3872		int ctxn;
  3873	
  3874		if (__this_cpu_read(perf_sched_cb_usages))
  3875			perf_pmu_sched_task(task, next, false);
  3876	
  3877		if (atomic_read(&nr_switch_events))
  3878			perf_event_switch(task, next, false);
  3879	
  3880		for_each_task_context_nr(ctxn)
  3881			perf_event_context_sched_out(task, ctxn, next);
  3882	
  3883		/*
  3884		 * if cgroup events exist on this CPU, then we need
  3885		 * to check if we have to switch out PMU state.
  3886		 * cgroup event are system-wide mode only
  3887		 */
  3888		if (atomic_read(this_cpu_ptr(&perf_cgroup_events)))
  3889			perf_cgroup_sched_out(task, next);
  3890	
> 3891		if (!list_empty(this_cpu_ptr(&cgroup_ctx_list)) &&
> 3892		    perf_cgroup_from_task(task, NULL) !=
  3893		    perf_cgroup_from_task(next, NULL))
  3894			cgroup_node_sched_out(task);
  3895	}
  3896	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202104131425.m97OrSC1-lkp%40intel.com.

--envbJBWh7q8WU6mo
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--envbJBWh7q8WU6mo--
