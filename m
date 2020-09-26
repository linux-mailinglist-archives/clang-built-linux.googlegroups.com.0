Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBCWMXP5QKGQEL7N2DWY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x637.google.com (mail-pl1-x637.google.com [IPv6:2607:f8b0:4864:20::637])
	by mail.lfdr.de (Postfix) with ESMTPS id 90D0327975E
	for <lists+clang-built-linux@lfdr.de>; Sat, 26 Sep 2020 08:56:12 +0200 (CEST)
Received: by mail-pl1-x637.google.com with SMTP id 10sf334945ple.19
        for <lists+clang-built-linux@lfdr.de>; Fri, 25 Sep 2020 23:56:12 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601103371; cv=pass;
        d=google.com; s=arc-20160816;
        b=ssh01S2GpHj8Y/dqanj6oV0gYs+0EfUufcOJTupSxGsMqkkRMP5pKtyYFX223YSxAF
         s3GjhLw2h9yHKg42ES+mkfKNQbnUB9kxwbn36U1DIFhw1j9ZGW2O+pHuNW2xa+nACOZH
         Tf1suxCagR7zV6zkwHfZonNSrYEfKZe3/j4r4gKqfqKtxqNIEmxlzpo/IwUUTnASc9ML
         qJa2+HevwTwDQWL/I1WnRDpNgJJEDlMknpTG+1x+AR6Dlgz45Q2Cgk1gpLzlxsBZdrtn
         /DdFFLHz0OSnbDMLANyBs0iYHec4lU14gijPT9/F4TuN8fLnbcMzm+buo+wqPwKkt4eD
         Lfzw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=22dIH6hwMmVDWwdSZtY46VujocdowCptD2dUDiM2rFs=;
        b=fG4fVWLMaqehmp+haFcYCqpE5QYHLtjRxbOIuZm6cMC1kQmPNnqemxpGKFpHEDpg7I
         6m+9BwE/I0g4JgCIuigbhD42zJpkWtuTPlejLzQkGHQ5LGdrETiOAuHQikZAcMeYsCLh
         tSCuFaiwUeiwZX95asGgg1uSsqH2VkW1nEv1lt6F0rSv5RKT7i2Em4TuIm/njh66I4vZ
         kgfLgeAFEG0Vc7F5PHWFqemmyq8VNKDC/BQGrSjf0fq8UMQwdqQ0o/VsYBOWZgirVYNj
         gg62BhUPPoBluVcsGvbuXSD31AgePeDj5f4iV4deZHRsU1BQYvWhJC8UIRumRg7d+nlp
         PdNA==
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
        bh=22dIH6hwMmVDWwdSZtY46VujocdowCptD2dUDiM2rFs=;
        b=NywXwKw6TJdS4+C8U3R3PzqXfy/lCeX9rKRu+aSf6UKv0l1Bsh5NNis764SzIYd5wL
         K833CLKAI1u7slCqJ+rYQITPK2DTyFUV0IYmvLyHmgjN5WovCIX3eBRuDN+ZbZ+vCP+D
         kHoxtWVxDS/IxeX8l3YRJ0uAb8uSYAaOWj+Q3d8dQ6ZE3AddZwQMTehh1I9kk261uWsf
         SuBvnJr4sfUDiLN0AMkd/abOox9cvEwxUhuNbhEbxh9IjsbuFOdCUrjGy586+Zp7+1Pw
         eY12Zkn7kqdHEWFgVm4hKjZeolOMOCwOAnAotukqiqmo4tWorKoGfffqHxvvjuej+LR8
         GuBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:references:mime-version:content-disposition
         :in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=22dIH6hwMmVDWwdSZtY46VujocdowCptD2dUDiM2rFs=;
        b=BxzdXkZFbYX+J6lTKGmIUuCYqaPONsA9ITyEjJ/BneuZyRypBLZjhY2cAjtSWc8nHt
         rXn7BzT/Cj1GdU1WUVA+SOOGnrgQ03nAK6NUB0bI+AL3LFew3m/AX/UVLMqoSTtOt+3E
         ddt953DnjGvnr9wX2Np/eswVxtn3yKojWDX51c2zZeo9GhL1NkE6aZaXFXyGlBCSBQ/n
         dsFOhYc9SdhZWZzSTCAORtIG5+D9URYYRLDiqokyJ5Wt1geyfh+Cb877t79qe15Hg/cW
         li+JMbpFlMuofrAGqR/sAuLy2JGYNM6isyRG7As/CncV8aOKXb7UuppR3OAe+a8k29ei
         Bb0g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533bOUCI0jAS5LlZjW3wnXkB7F0x7WFDo+VeoHMs3Hh9XbLzA0L6
	ByRN9UGQMq3bpwRvEyDpzFs=
X-Google-Smtp-Source: ABdhPJye0upQVNjw/utsfl1DYW6inTmWHuj76Qat66J6AX3nh+dKzxw5rmtLnu2Te+vhBb6jH2rRaw==
X-Received: by 2002:a05:6a00:2291:b029:142:2501:3987 with SMTP id f17-20020a056a002291b029014225013987mr2659482pfe.76.1601103370794;
        Fri, 25 Sep 2020 23:56:10 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:d704:: with SMTP id y4ls505270pju.3.canary-gmail;
 Fri, 25 Sep 2020 23:56:10 -0700 (PDT)
X-Received: by 2002:a17:90b:408b:: with SMTP id jb11mr1100525pjb.164.1601103370142;
        Fri, 25 Sep 2020 23:56:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601103370; cv=none;
        d=google.com; s=arc-20160816;
        b=eWlgHamYVSV7qeCcldOHamlVGiCHThdvYYBgrCnZtP2K7RYcG031MOklLRtBbyaRII
         jgw2AepLzbgt01fYm/fmtjjAZsBJ+xaHfXq9lDK8jDp1miPp8DwlQ6ZHKuU5cfxjRptf
         wOQ2GvpktqpUoMUvS4SiKb9rsFKyz90dkMjm29YAv+/VA7GhmN36FJDWsHvVaZxfO7ya
         35AToIelYVQujN+miErzXM7LxWE/u7ys/MBOsus13PVs1fgWPD3fhoOo+0S3gajJ905P
         4FG2/qwfZ/fxGIPg6dYHIqBdDPN9PMZDw9bwlhz9R6YBeKCHlVy6emeqg/VknD6aQtVk
         zXlA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:ironport-sdr:ironport-sdr;
        bh=8Q9XF7UOrZW4o6J8bxB1GyM/2+ZDnDBGU+Rdda5gxYI=;
        b=SaHIPDKxTZtIc6Jf6xFznh/ZV2EkuHSnyslWJOnNeVmdPTHBDa3p22824httWnAteA
         25TwSU0Gtdnho4JPhXruoYojIIBZv4BrNWSXskkFpKvQdG4ScYkU0VQXK+B2MYOAW3Gz
         /zF7SMufoxtTdPjStcSAEaWc9N5MQL6tVmnMkAK8n5z1aw0dih2xkaOmPsNrs5iWcnkc
         p4LF50IQvWvaQYpiMCIPEfwniDdWKhD2fJVN9FT/GX4uzUG0ix8qlEd9aSqv6dPAWjDe
         vVwMSPbJHdqVWx0UfCNFoNEOhMih0apVdJwglhl5HwjrgAH1oNLHXNcVIBlsA+T3CkJ3
         InZA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.151 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga17.intel.com (mga17.intel.com. [192.55.52.151])
        by gmr-mx.google.com with ESMTPS id d60si65955pjk.0.2020.09.25.23.56.09
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 25 Sep 2020 23:56:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.151 as permitted sender) client-ip=192.55.52.151;
IronPort-SDR: fAnr2NBBlUUpNkNaBqcB+T2IkIdj8fLTT8wp0OOt0C5ff7805pCOoKrGqEb82CRiAmkQoZGRKL
 /YkF2IBZX/6A==
X-IronPort-AV: E=McAfee;i="6000,8403,9755"; a="141732260"
X-IronPort-AV: E=Sophos;i="5.77,305,1596524400"; 
   d="gz'50?scan'50,208,50";a="141732260"
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
  by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 25 Sep 2020 23:56:09 -0700
IronPort-SDR: Lpij+88deTRs8eCcut9Unn+1DaHTX5VmcGqxzPOcPb7mIQBoPFhIpcAePcey4jqF2Eh+7wwKsM
 +PURDxYTRuKw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,305,1596524400"; 
   d="gz'50?scan'50,208,50";a="513355478"
Received: from lkp-server01.sh.intel.com (HELO 2dda29302fe3) ([10.239.97.150])
  by fmsmga005.fm.intel.com with ESMTP; 25 Sep 2020 23:56:05 -0700
Received: from kbuild by 2dda29302fe3 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1kM47o-0000PZ-R8; Sat, 26 Sep 2020 06:56:04 +0000
Date: Sat, 26 Sep 2020 14:55:13 +0800
From: kernel test robot <lkp@intel.com>
To: Steven Rostedt <rostedt@goodmis.org>, linux-kernel@vger.kernel.org
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	Yafang Shao <laoar.shao@gmail.com>,
	Axel Rasmussen <axelrasmussen@google.com>,
	Andrew Morton <akpm@linux-foundation.org>,
	Linux Memory Management List <linux-mm@kvack.org>,
	Vlastimil Babka <vbabka@suse.cz>,
	Michel Lespinasse <walken@google.com>,
	Daniel Jordan <daniel.m.jordan@oracle.com>,
	Davidlohr Bueso <dbueso@suse.de>, Ingo Molnar <mingo@kernel.org>
Subject: Re: [PATCH 3/3 v2] x86: Use tracepoint_enabled() for msr tracepoints
 instead of open coding it
Message-ID: <202009261429.HkE0bTfh%lkp@intel.com>
References: <20200925211820.050807067@goodmis.org>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="sdtB3X0nJg68CQEu"
Content-Disposition: inline
In-Reply-To: <20200925211820.050807067@goodmis.org>
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


--sdtB3X0nJg68CQEu
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi Steven,

Thank you for the patch! Yet something to improve:

[auto build test ERROR on tip/master]
[also build test ERROR on linux/master tip/perf/core tip/x86/core linus/master v5.9-rc6 next-20200925]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch]

url:    https://github.com/0day-ci/linux/commits/Steven-Rostedt/tracing-mm-Add-tracepoint_enabled-helper-function-for-headers/20200926-051950
base:   https://git.kernel.org/pub/scm/linux/kernel/git/tip/tip.git 0248dedd12d43035bf53c326633f0610a49d7134
config: x86_64-randconfig-a003-20200925 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project a83eb048cb9a75da7a07a9d5318bbdbf54885c87)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install x86_64 cross compiling tool for clang build
        # apt-get install binutils-x86-64-linux-gnu
        # https://github.com/0day-ci/linux/commit/7a9f7773ebb9b2d4be989415cfa2cee5788201ea
        git remote add linux-review https://github.com/0day-ci/linux
        git fetch --no-tags linux-review Steven-Rostedt/tracing-mm-Add-tracepoint_enabled-helper-function-for-headers/20200926-051950
        git checkout 7a9f7773ebb9b2d4be989415cfa2cee5788201ea
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

   In file included from arch/x86/kernel/asm-offsets.c:9:
   In file included from include/linux/crypto.h:20:
   In file included from include/linux/slab.h:15:
   In file included from include/linux/gfp.h:6:
   In file included from include/linux/mmzone.h:8:
   In file included from include/linux/spinlock.h:51:
   In file included from include/linux/preempt.h:78:
   In file included from arch/x86/include/asm/preempt.h:7:
   In file included from include/linux/thread_info.h:38:
   In file included from arch/x86/include/asm/thread_info.h:53:
   In file included from arch/x86/include/asm/cpufeature.h:5:
   In file included from arch/x86/include/asm/processor.h:22:
>> arch/x86/include/asm/msr.h:129:6: error: implicit declaration of function 'tracepoint_enabled' [-Werror,-Wimplicit-function-declaration]
           if (tracepoint_enabled(read_msr))
               ^
>> arch/x86/include/asm/msr.h:129:25: error: use of undeclared identifier 'read_msr'
           if (tracepoint_enabled(read_msr))
                                  ^
   arch/x86/include/asm/msr.h:151:6: error: implicit declaration of function 'tracepoint_enabled' [-Werror,-Wimplicit-function-declaration]
           if (tracepoint_enabled(read_msr))
               ^
   arch/x86/include/asm/msr.h:151:25: error: use of undeclared identifier 'read_msr'
           if (tracepoint_enabled(read_msr))
                                  ^
   arch/x86/include/asm/msr.h:162:6: error: implicit declaration of function 'tracepoint_enabled' [-Werror,-Wimplicit-function-declaration]
           if (tracepoint_enabled(write_msr))
               ^
>> arch/x86/include/asm/msr.h:162:25: error: use of undeclared identifier 'write_msr'
           if (tracepoint_enabled(write_msr))
                                  ^
   arch/x86/include/asm/msr.h:182:6: error: implicit declaration of function 'tracepoint_enabled' [-Werror,-Wimplicit-function-declaration]
           if (tracepoint_enabled(write_msr))
               ^
   arch/x86/include/asm/msr.h:182:25: error: use of undeclared identifier 'write_msr'
           if (tracepoint_enabled(write_msr))
                                  ^
   arch/x86/include/asm/msr.h:249:6: error: implicit declaration of function 'tracepoint_enabled' [-Werror,-Wimplicit-function-declaration]
           if (tracepoint_enabled(rdpmc))
               ^
>> arch/x86/include/asm/msr.h:249:25: error: use of undeclared identifier 'rdpmc'; did you mean 'rdtsc'?
           if (tracepoint_enabled(rdpmc))
                                  ^~~~~
                                  rdtsc
   arch/x86/include/asm/msr.h:199:43: note: 'rdtsc' declared here
   static __always_inline unsigned long long rdtsc(void)
                                             ^
   10 errors generated.
   make[2]: *** [scripts/Makefile.build:117: arch/x86/kernel/asm-offsets.s] Error 1
   make[2]: Target '__build' not remade because of errors.
   make[1]: *** [Makefile:1198: prepare0] Error 2
   make[1]: Target 'prepare' not remade because of errors.
   make: *** [Makefile:185: __sub-make] Error 2
   make: Target 'prepare' not remade because of errors.

vim +/tracepoint_enabled +129 arch/x86/include/asm/msr.h

   115	
   116	#define native_wrmsr(msr, low, high)			\
   117		__wrmsr(msr, low, high)
   118	
   119	#define native_wrmsrl(msr, val)				\
   120		__wrmsr((msr), (u32)((u64)(val)),		\
   121			       (u32)((u64)(val) >> 32))
   122	
   123	static inline unsigned long long native_read_msr(unsigned int msr)
   124	{
   125		unsigned long long val;
   126	
   127		val = __rdmsr(msr);
   128	
 > 129		if (tracepoint_enabled(read_msr))
   130			do_trace_read_msr(msr, val, 0);
   131	
   132		return val;
   133	}
   134	
   135	static inline unsigned long long native_read_msr_safe(unsigned int msr,
   136							      int *err)
   137	{
   138		DECLARE_ARGS(val, low, high);
   139	
   140		asm volatile("2: rdmsr ; xor %[err],%[err]\n"
   141			     "1:\n\t"
   142			     ".section .fixup,\"ax\"\n\t"
   143			     "3: mov %[fault],%[err]\n\t"
   144			     "xorl %%eax, %%eax\n\t"
   145			     "xorl %%edx, %%edx\n\t"
   146			     "jmp 1b\n\t"
   147			     ".previous\n\t"
   148			     _ASM_EXTABLE(2b, 3b)
   149			     : [err] "=r" (*err), EAX_EDX_RET(val, low, high)
   150			     : "c" (msr), [fault] "i" (-EIO));
   151		if (tracepoint_enabled(read_msr))
   152			do_trace_read_msr(msr, EAX_EDX_VAL(val, low, high), *err);
   153		return EAX_EDX_VAL(val, low, high);
   154	}
   155	
   156	/* Can be uninlined because referenced by paravirt */
   157	static inline void notrace
   158	native_write_msr(unsigned int msr, u32 low, u32 high)
   159	{
   160		__wrmsr(msr, low, high);
   161	
 > 162		if (tracepoint_enabled(write_msr))
   163			do_trace_write_msr(msr, ((u64)high << 32 | low), 0);
   164	}
   165	
   166	/* Can be uninlined because referenced by paravirt */
   167	static inline int notrace
   168	native_write_msr_safe(unsigned int msr, u32 low, u32 high)
   169	{
   170		int err;
   171	
   172		asm volatile("2: wrmsr ; xor %[err],%[err]\n"
   173			     "1:\n\t"
   174			     ".section .fixup,\"ax\"\n\t"
   175			     "3:  mov %[fault],%[err] ; jmp 1b\n\t"
   176			     ".previous\n\t"
   177			     _ASM_EXTABLE(2b, 3b)
   178			     : [err] "=a" (err)
   179			     : "c" (msr), "0" (low), "d" (high),
   180			       [fault] "i" (-EIO)
   181			     : "memory");
   182		if (tracepoint_enabled(write_msr))
   183			do_trace_write_msr(msr, ((u64)high << 32 | low), err);
   184		return err;
   185	}
   186	
   187	extern int rdmsr_safe_regs(u32 regs[8]);
   188	extern int wrmsr_safe_regs(u32 regs[8]);
   189	
   190	/**
   191	 * rdtsc() - returns the current TSC without ordering constraints
   192	 *
   193	 * rdtsc() returns the result of RDTSC as a 64-bit integer.  The
   194	 * only ordering constraint it supplies is the ordering implied by
   195	 * "asm volatile": it will put the RDTSC in the place you expect.  The
   196	 * CPU can and will speculatively execute that RDTSC, though, so the
   197	 * results can be non-monotonic if compared on different CPUs.
   198	 */
   199	static __always_inline unsigned long long rdtsc(void)
   200	{
   201		DECLARE_ARGS(val, low, high);
   202	
   203		asm volatile("rdtsc" : EAX_EDX_RET(val, low, high));
   204	
   205		return EAX_EDX_VAL(val, low, high);
   206	}
   207	
   208	/**
   209	 * rdtsc_ordered() - read the current TSC in program order
   210	 *
   211	 * rdtsc_ordered() returns the result of RDTSC as a 64-bit integer.
   212	 * It is ordered like a load to a global in-memory counter.  It should
   213	 * be impossible to observe non-monotonic rdtsc_unordered() behavior
   214	 * across multiple CPUs as long as the TSC is synced.
   215	 */
   216	static __always_inline unsigned long long rdtsc_ordered(void)
   217	{
   218		DECLARE_ARGS(val, low, high);
   219	
   220		/*
   221		 * The RDTSC instruction is not ordered relative to memory
   222		 * access.  The Intel SDM and the AMD APM are both vague on this
   223		 * point, but empirically an RDTSC instruction can be
   224		 * speculatively executed before prior loads.  An RDTSC
   225		 * immediately after an appropriate barrier appears to be
   226		 * ordered as a normal load, that is, it provides the same
   227		 * ordering guarantees as reading from a global memory location
   228		 * that some other imaginary CPU is updating continuously with a
   229		 * time stamp.
   230		 *
   231		 * Thus, use the preferred barrier on the respective CPU, aiming for
   232		 * RDTSCP as the default.
   233		 */
   234		asm volatile(ALTERNATIVE_2("rdtsc",
   235					   "lfence; rdtsc", X86_FEATURE_LFENCE_RDTSC,
   236					   "rdtscp", X86_FEATURE_RDTSCP)
   237				: EAX_EDX_RET(val, low, high)
   238				/* RDTSCP clobbers ECX with MSR_TSC_AUX. */
   239				:: "ecx");
   240	
   241		return EAX_EDX_VAL(val, low, high);
   242	}
   243	
   244	static inline unsigned long long native_read_pmc(int counter)
   245	{
   246		DECLARE_ARGS(val, low, high);
   247	
   248		asm volatile("rdpmc" : EAX_EDX_RET(val, low, high) : "c" (counter));
 > 249		if (tracepoint_enabled(rdpmc))
   250			do_trace_rdpmc(counter, EAX_EDX_VAL(val, low, high), 0);
   251		return EAX_EDX_VAL(val, low, high);
   252	}
   253	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202009261429.HkE0bTfh%25lkp%40intel.com.

--sdtB3X0nJg68CQEu
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--sdtB3X0nJg68CQEu--
