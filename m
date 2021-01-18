Return-Path: <clang-built-linux+bncBCH3DPMZSAEBBDMPS2AAMGQEXM3NMVQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc40.google.com (mail-oo1-xc40.google.com [IPv6:2607:f8b0:4864:20::c40])
	by mail.lfdr.de (Postfix) with ESMTPS id B13E92FA0B0
	for <lists+clang-built-linux@lfdr.de>; Mon, 18 Jan 2021 14:05:18 +0100 (CET)
Received: by mail-oo1-xc40.google.com with SMTP id p13sf13354856oos.14
        for <lists+clang-built-linux@lfdr.de>; Mon, 18 Jan 2021 05:05:18 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610975117; cv=pass;
        d=google.com; s=arc-20160816;
        b=GgZGjfkcpkGwetF518QPtuzM6bqDPyCYxu8C8SVv4JGvzP0LdRT96YGO2CAPQK3KUh
         Y7CUQ8FhBNkM4TYKFPq89YxzkO9Y722n55tSnR6cPJaLYoZCgsWaXwF8F4NQmvhvnTqi
         Xh4dRXkXj+e1YFj2j36bw08eHQ9+7X3BrwCPaT+SIMMBxQiukIw1l+oUo7lzS7ox5Pti
         Of5bGdu1Y5HQ/AVsCVX3gjWk9h1j0xLv34NeVff8j8G+/2n7UW9tOaRoDtMvCS9h/p7m
         AcE+vuW0TMO7pr4LPM0ky1sXsBMHEtrWLcSZWPTehfP34CIGVgVxJv9FbLew13ypq37U
         brjg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:organization:from
         :references:cc:to:subject:ironport-sdr:ironport-sdr:sender
         :dkim-signature;
        bh=ueLM10Sx9K8G45vnagY7nu8cZRJTZh0FDpkd5FgcM+c=;
        b=kN9FzHCof+Uyjnvcw1EjG7QxsJ7CE+5ZFmIWvHOBZycNpBjAU3GBsSNAjMi20MOVJB
         OUc3BB1mjsxKY28htDCEQ/+eK8WhLuzJyhDkGMjEYv6WoC/cElmVOEJYvf5AEl9ZZ28O
         yL/LJeGdq8Knwai1unuskwQtkNbxudjfq1LTMTsPrVn8VrI+w1H6pwpVvqxfdM2hVZ7Z
         ilttz20Tm3xsuvSo7Wau+MHgiS8MQB/l+zt6SldX9lZg+0QhbKU8MD+vbfb0bHAvxxai
         3cjCHJ13gGerlQOZGK2IQyVBHIU0cj4PdWXxTFYNaHhBtN32vFCgvBU9eI+q00oVpJfo
         T+4Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of like.xu@linux.intel.com designates 192.55.52.93 as permitted sender) smtp.mailfrom=like.xu@linux.intel.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:subject:to:cc:references:from
         :organization:message-id:date:user-agent:mime-version:in-reply-to
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ueLM10Sx9K8G45vnagY7nu8cZRJTZh0FDpkd5FgcM+c=;
        b=M7PL6429XI4aamvt+clVqUnxl9rt9WtA+TdNTsvTUWIbyPAwbFz5Fbch6iRrhMlQQD
         r/j18DBnfLyvvMQj8hSJNmaqyKuvBH+MQwwvmmH+YVGhaROY7FPEuf5EZX3Iu6zRaKnQ
         UugYF1UkB9r1LcOWSc6f4NaN1o47kuWwOrNGLLunoRa99CEDmEjTehkHLz2BIsvN/ed9
         ZBSfQzq+532NyQBsps3fxKjXP+o8Qe8E4nnLF1/uloDvtJk0COF+qg23warmfNz61RDQ
         g5iNsXKeFCcfykBv/Hv3QwzhdRybTPe7J3mlPPJ0hPi3hrwt9QNLW3uvVHtxn/sMZ4OX
         nHug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:subject:to:cc
         :references:from:organization:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ueLM10Sx9K8G45vnagY7nu8cZRJTZh0FDpkd5FgcM+c=;
        b=Y58EO26bQGHy7DPLeB+HFZpln28NFsESN50rGZjzE6Tc/S2gER7TIgGVlFFueW4eVb
         MyCodIy5vT7S9PFX8o0pkoXl42DS2hwTyioD17DIfedk1ovNOYKPBTdIP4awPUuwDLxF
         44fJXxGFwHWGj6LKjMBClDqiGCPvCSsLbKsn6/O3KKydSXv64624BNBfK7ipyNi6eM1W
         vkIoWeG/L/CrE7gWnMRs9ACGhw8vYbTnGm1mlVkCrrTGI5AG271ZAE5wcnA3AG+1rKkp
         viCvqa9CEl5bwZw0smlp40xHMREH9/MH+lIP5J4izIkX22XcRIYDR6EC1JR2fQ9Co8f+
         +VFA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533lYVMvSBBptWHbTG0fE3O0ksSzO1BDSx3MR1LBl3Fv5SFXRyTn
	UNFNkOl0puB8SFWgW+dPccY=
X-Google-Smtp-Source: ABdhPJyiPn5eBN9G3oFlCscSZvtZTGW+GK1jtFCnEGdzllXMwRHgWhd6vJ1apGuk+OX/8leHEaS8VA==
X-Received: by 2002:a9d:4786:: with SMTP id b6mr1146024otf.269.1610975117681;
        Mon, 18 Jan 2021 05:05:17 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a54:4694:: with SMTP id k20ls4337492oic.0.gmail; Mon, 18 Jan
 2021 05:05:17 -0800 (PST)
X-Received: by 2002:a05:6808:b18:: with SMTP id s24mr12995833oij.72.1610975117242;
        Mon, 18 Jan 2021 05:05:17 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610975117; cv=none;
        d=google.com; s=arc-20160816;
        b=BPg1X8LyGkjanUK5hWsNGwvrPN11Onp5VwlVjWs0/a7uppkV40a3YCc8QN0u7uB6AC
         u9mKuZo0Uin9AloIv5PsGAxL+MPcGrb8LCXlwthaGxCT3N0GNrSzUbWr6Z8lv27IYldo
         IWa78gEXgEAWzbRQDtjJyJhP9jYqzHkRW04W7q97VBc3KkQUIDVXjvMR1w/j/Hwdk2d4
         QB5dMkf8mZmA/92opOI2qx3yikyWXXWCptiCAxmEbRkS0QnpUaleORsIEanDufFzuNLW
         Ti3DkwtpRhI1rVDEXf9lh7FBFY9lnrlv7AWZgWU/GYCNv2zftq/j+waNGKD3eMjrC0IO
         GdlQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:organization:from:references:cc:to
         :subject:ironport-sdr:ironport-sdr;
        bh=ilGq8WlBFmFXJovfUH0LHVcRMCUkEbPZ2OaNgNZpyGE=;
        b=Xb/oJBGasIeZzwoA+df1QYLtrrNpTvzIMELdtHVwTqWBy3GQS4sn1FbNK3RN/LomDJ
         PvizeO13xx9DDU+gmY9QkyxBVIx9Q1e/Oe5+nr/qcCaF63v3pvFAQWSLwY+AMeAwMjfU
         4PwCMGXSUO0fpedF8DyoywVIxkkbbg7lU9IAqxd3bdChRoOq+QMCy1YC2Vs62C0zD19b
         a7BDK6Uf71Q07kIUiu6n6VqSEjQNQorKU+0XKrdcSD18uXbVs5cpGzFpR1p56ojbJd7L
         FrJNaHrZQngaaosjBzswLu1JSkwU7fuL4rC78yoQYzJpeFHhxDIUSHJ9+DzFZVXIn7K9
         UrHQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of like.xu@linux.intel.com designates 192.55.52.93 as permitted sender) smtp.mailfrom=like.xu@linux.intel.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga11.intel.com (mga11.intel.com. [192.55.52.93])
        by gmr-mx.google.com with ESMTPS id m7si651212otq.5.2021.01.18.05.05.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 18 Jan 2021 05:05:17 -0800 (PST)
Received-SPF: pass (google.com: best guess record for domain of like.xu@linux.intel.com designates 192.55.52.93 as permitted sender) client-ip=192.55.52.93;
IronPort-SDR: kzJpjUIplE93kEn9Hu9ataX75rq2BuFA05PCziSc7Egol0Ch6O3ix57Slt5JVz5jTn3d+Vu2ty
 iuHG9/TTgn/Q==
X-IronPort-AV: E=McAfee;i="6000,8403,9867"; a="175296172"
X-IronPort-AV: E=Sophos;i="5.79,356,1602572400"; 
   d="scan'208";a="175296172"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
  by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 18 Jan 2021 05:05:14 -0800
IronPort-SDR: Z4a7e9twg5ORZ3x9btiBnSsh5HzEFV6p2J/lJlFX/iclkhR1YWxwGNzRUUO9BE21p9QjkQRs+j
 C4NA5X2qPwDw==
X-IronPort-AV: E=Sophos;i="5.79,356,1602572400"; 
   d="scan'208";a="383566818"
Received: from likexu-mobl1.ccr.corp.intel.com (HELO [10.255.29.150]) ([10.255.29.150])
  by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 18 Jan 2021 05:05:09 -0800
Subject: Re: [PATCH] x86/perf: Use static_call for x86_pmu.guest_get_msrs
To: Peter Zijlstra <peterz@infradead.org>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
 Ingo Molnar <mingo@redhat.com>, Arnaldo Carvalho de Melo <acme@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>, Thomas Gleixner <tglx@linutronix.de>,
 Borislav Petkov <bp@alien8.de>, x86@kernel.org,
 linux-kernel@vger.kernel.org, Jason Baron <jbaron@akamai.com>,
 Josh Poimboeuf <jpoimboe@redhat.com>, kernel test robot <lkp@intel.com>
References: <20210118072151.44481-1-like.xu@linux.intel.com>
 <202101182008.jQybUDa0-lkp@intel.com>
From: Like Xu <like.xu@linux.intel.com>
Organization: Intel OTC
Message-ID: <a82754e7-9a2d-7ab4-466d-fc0d51a3b7f2@linux.intel.com>
Date: Mon, 18 Jan 2021 21:05:06 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.1
MIME-Version: 1.0
In-Reply-To: <202101182008.jQybUDa0-lkp@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: like.xu@linux.intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: best guess record for domain of like.xu@linux.intel.com
 designates 192.55.52.93 as permitted sender) smtp.mailfrom=like.xu@linux.intel.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=intel.com
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

I guess this fix will silence the compiler error,
and v2 will be sent after the local 0day test passes.

diff --git a/arch/x86/include/asm/perf_event.h 
b/arch/x86/include/asm/perf_event.h
index b9a7fd0a27e2..517f546b6b45 100644
--- a/arch/x86/include/asm/perf_event.h
+++ b/arch/x86/include/asm/perf_event.h
@@ -479,15 +479,11 @@ static inline void perf_events_lapic_init(void)   { }
  static inline void perf_check_microcode(void) { }
  #endif

-#if defined(CONFIG_PERF_EVENTS) && defined(CONFIG_CPU_SUP_INTEL)
  extern struct perf_guest_switch_msr *perf_guest_get_msrs(int *nr);
+
+#if defined(CONFIG_PERF_EVENTS) && defined(CONFIG_CPU_SUP_INTEL)
  extern int x86_perf_get_lbr(struct x86_pmu_lbr *lbr);
  #else
-static inline struct perf_guest_switch_msr *perf_guest_get_msrs(int *nr)
-{
-       *nr = 0;
-       return NULL;
-}
  static inline int x86_perf_get_lbr(struct x86_pmu_lbr *lbr)
  {
         return -1;

On 2021/1/18 20:12, kernel test robot wrote:
> Hi Like,
> 
> Thank you for the patch! Yet something to improve:
> 
> [auto build test ERROR on tip/perf/core]
> [also build test ERROR on v5.11-rc4 next-20210118]
> [If your patch is applied to the wrong git tree, kindly drop us a note.
> And when submitting patch, we suggest to use '--base' as documented in
> https://git-scm.com/docs/git-format-patch]
> 
> url:    https://github.com/0day-ci/linux/commits/Like-Xu/x86-perf-Use-static_call-for-x86_pmu-guest_get_msrs/20210118-153219
> base:   https://git.kernel.org/pub/scm/linux/kernel/git/tip/tip.git 9a7832ce3d920426a36cdd78eda4b3568d4d09e3
> config: x86_64-randconfig-a002-20210118 (attached as .config)
> compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project 95d146182fdf2315e74943b93fb3bb0cbafc5d89)
> reproduce (this is a W=1 build):
>          wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>          chmod +x ~/bin/make.cross
>          # install x86_64 cross compiling tool for clang build
>          # apt-get install binutils-x86-64-linux-gnu
>          # https://github.com/0day-ci/linux/commit/0cd2262fad043a5edef91fca07d16759703658b8
>          git remote add linux-review https://github.com/0day-ci/linux
>          git fetch --no-tags linux-review Like-Xu/x86-perf-Use-static_call-for-x86_pmu-guest_get_msrs/20210118-153219
>          git checkout 0cd2262fad043a5edef91fca07d16759703658b8
>          # save the attached .config to linux build tree
>          COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
> 
> All errors (new ones prefixed by >>):
> 
>>> arch/x86/events/core.c:670:31: error: redefinition of 'perf_guest_get_msrs'
>     struct perf_guest_switch_msr *perf_guest_get_msrs(int *nr)
>                                   ^
>     arch/x86/include/asm/perf_event.h:486:45: note: previous definition is here
>     static inline struct perf_guest_switch_msr *perf_guest_get_msrs(int *nr)
>                                                 ^
>     1 error generated.
> 
> 
> vim +/perf_guest_get_msrs +670 arch/x86/events/core.c
> 
>     669	
>   > 670	struct perf_guest_switch_msr *perf_guest_get_msrs(int *nr)
>     671	{
>     672		struct perf_guest_switch_msr *ret = NULL;
>     673	
>     674		ret = static_call(x86_pmu_guest_get_msrs)(nr);
>     675		if (!ret)
>     676			*nr = 0;
>     677	
>     678		return ret;
>     679	}
>     680	EXPORT_SYMBOL_GPL(perf_guest_get_msrs);
>     681	
> 
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/a82754e7-9a2d-7ab4-466d-fc0d51a3b7f2%40linux.intel.com.
