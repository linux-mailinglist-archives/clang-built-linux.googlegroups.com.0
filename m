Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBIE5RCAQMGQECQHLZ3I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3a.google.com (mail-vk1-xa3a.google.com [IPv6:2607:f8b0:4864:20::a3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 7499831477F
	for <lists+clang-built-linux@lfdr.de>; Tue,  9 Feb 2021 05:25:05 +0100 (CET)
Received: by mail-vk1-xa3a.google.com with SMTP id b62sf3971040vkh.19
        for <lists+clang-built-linux@lfdr.de>; Mon, 08 Feb 2021 20:25:05 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612844704; cv=pass;
        d=google.com; s=arc-20160816;
        b=xrdA5ZOO823DR/PijYw0s4MeiokyracyYHLaZETzPXfIBGU2CXyZ3VBq7f7UhPJmpR
         cXEgBUSNOzE43UgeQSzx1BeknhtNsbMtHBLxlDZ8qZqvVnm+R7bKhMFPRX1aESLlfMV9
         B1EspjnRBCbovu/SiPOIP3NOOiKzuuaBhcRwhaC9874TlByyXITLyDFGJK+Ge16n/kFV
         hdyuEJzHolf1JoC2xL4VToHhsNSQM/6t1tr7m+Wc+Q2f+lvMA6GfiB9klMGzD9GWWCbS
         lAooB7wLe+PLqesOT6LTKc9ANPOaHcCLH5f/Mg68ezHsl/yJD7vGzogZ7OVmSF6ksJcB
         wXSg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=n5oN+K5P0UrODn/Srbv9JqnnGae+lvNma5O6nDduhpE=;
        b=ZhlggVmETE9qIKPMP5438sXudmI1nnrAFPj0yUOk7eOKAQjFoddM+FY77+ncUCd8Rj
         dXWwkQ130CckjYoVZKbUx7kpdZ0h5En5WfoDVd9S/i2WUdj7r5GjBysc5Cd3ChIw+yXN
         VNj5qDOT125McWxnEsP6eoj5YAJNTmysL589cegfjcu7QvLPBErJ95GR2t1t1C5rPEIg
         oJp9/dgVPVItV1oqxbp0wXthkA4zYfEU0u0jUzav3+RNZ1DI9L4i34CbPE5JEn0Kjd8k
         dP+bbJaCuAXhFoNaGE+luecgNLEU2XU0wp1eLIQ9mTv54dtxYxdvZ67Lroy4bK+T3MnU
         VOSA==
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
        bh=n5oN+K5P0UrODn/Srbv9JqnnGae+lvNma5O6nDduhpE=;
        b=IT8LfxhQrJ1U7qyYOpL/s83r/N7qNC5AT2zMx0FbVs9DKvE6MsYLjSwqzzgTJX2YMj
         iy63HqMmbxmzrwDnKo2FITzSY5tfaPh+tHv6GY+E48j1696Bnq+wEu99f1vyggiy55wA
         utTUd/pRTxaRzteg3lKBAi6Buknrr9DfLQuK102TZnoXpubA2umJ+FdqaX9s5CFiDDAF
         7I+OVpsIknHWmfAzSSBhMNcFnLsaIQb3j7ished+3REn+8eGXb1rj1NCTjDiLaTBvfgi
         SbbSGPa436cT3bS+yT/4n6x8tnTPhPPvAvif4dZ9+GSntx/S5yQuLApPRlO6w0tpgKUR
         K9hg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:references:mime-version:content-disposition
         :in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=n5oN+K5P0UrODn/Srbv9JqnnGae+lvNma5O6nDduhpE=;
        b=d48f/mQHmHVgcP05XURb4O0ucPOmvqswDZKtdtc+DeiYRGGCN2PKOyoHK9heIbjVTW
         E0mXs3xEpzh8q9YJTqku5FtPP6xyCfJabBg1siBP6PlTHoJRHCsMBK9H8HPlh1GujRG0
         9X/pK474XW7iehORX9cBMu5stt6nxTGtx9AVJie1M3bXgBzPlbxqPEd38oO1d3bcmJg6
         By8d1ggpjNLrPClPRmX4zqlFH8G6D1sWe69+/Zt7qZd2Cl+EQ7eET9r2l6CV752dFsXc
         SazcfsTbKwexyopxAuO2aZbr8gEEYVEApiaGTIXGXRLe79uJM4HyNmGttYlpamt1DkuU
         j0qQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532Up7b6ou8HAbEJD6mwU0xLPtQAQ7RXwC0wwLngykxWYvSMwQiV
	nr/RG43rfVttOKN1NoaZDEY=
X-Google-Smtp-Source: ABdhPJzvWmJtXlwzEBxFAkBO0op/sbSt+wmOraIi17XcK7FeWDYBptX8n+m3zLZeXrCv2dQsy38o2Q==
X-Received: by 2002:a67:1e87:: with SMTP id e129mr12689730vse.23.1612844704425;
        Mon, 08 Feb 2021 20:25:04 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:bc14:: with SMTP id t20ls908399vsn.6.gmail; Mon, 08 Feb
 2021 20:25:04 -0800 (PST)
X-Received: by 2002:a67:fd9a:: with SMTP id k26mr13160061vsq.37.1612844703717;
        Mon, 08 Feb 2021 20:25:03 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612844703; cv=none;
        d=google.com; s=arc-20160816;
        b=sGKOTHQSAWug/DjriaBEHJYs/i89EuWuyr281FmDAqqorKAGSJKKaIh/eQ/pGzJTui
         bIGlEZ2Njtd5zqcXBODtsgN/yoaEFJ70weF8gBKnkYxBH8KDqi4OWAkALZ47+5PiGBtC
         kGa5JtDEKJ7jUq0811tg0uZjMzqLx4kQIZIaBMiJc3c9qBk2QPr4KxPBHcLCIxeUQ5B2
         Vyk+bRvUQZ8P/9oiFG6zMmRlBtA3qyXyYoWSop+FsuF0ax7OXrWRD5P8/6ptEaJ2Ne1z
         YmuurVJYsrCaVqICovQRQL05SydOjvCqRHtY58RZFGQ/wbR8pF7+qCZyMfS1Lp/IlSB2
         WdNQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:ironport-sdr:ironport-sdr;
        bh=7DPQl88T6tSVf2/GHgL3KkIISVol2J12TLGtai7T3w0=;
        b=asUWZmKkoCVV+/+bNG75CHqESuhC6kpAXD01kl+d2vnDZ/lstQphoqOv38bN8WcVEu
         f0ghaRrlIYthkR45750gzxc+wKSwKVerN/5FlZMJWMOjypS2DBIcAt49/IMgUjHC2eZf
         JJojWtVQw+NXFXy9Xq7rfcIwzoJInBQ8kuk3PBobtCQ0Rp0N3WLBJ8c32oKSO5dVIPkO
         avrnGPTCAeyM+Icme4t+ZsCcC0IAyjVcYC1PEjytZE74AXmPIcfLxWZSkhBFk/Dr4fiF
         89qxafd7CxirSfDljADvNaUJvpGGqqRAQPejTB8hsZT0WrG3c1e6MnACvPgR0biuGTQ1
         f0/Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.151 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga17.intel.com (mga17.intel.com. [192.55.52.151])
        by gmr-mx.google.com with ESMTPS id f203si420437vke.0.2021.02.08.20.25.02
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 08 Feb 2021 20:25:02 -0800 (PST)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.151 as permitted sender) client-ip=192.55.52.151;
IronPort-SDR: CgH8RhAkH5Xv0UTv7s37LbJbIoAL2R5dg3IEbubyBqdi0LPIYpZrM1D3Q7z9WLMv0aYzyD7Qls
 E4vG7zDXietQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9889"; a="161576091"
X-IronPort-AV: E=Sophos;i="5.81,164,1610438400"; 
   d="gz'50?scan'50,208,50";a="161576091"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
  by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 08 Feb 2021 20:25:01 -0800
IronPort-SDR: sR026h4RPWCUKbq2hyvwqz83NBZ9rQtgifjPx3dMuGzAFD2PnffIaE/9xfX3B6jDp5F8wncgKA
 r8z2IltjEwzw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,164,1610438400"; 
   d="gz'50?scan'50,208,50";a="585052596"
Received: from lkp-server02.sh.intel.com (HELO cd560a204411) ([10.239.97.151])
  by fmsmga006.fm.intel.com with ESMTP; 08 Feb 2021 20:24:59 -0800
Received: from kbuild by cd560a204411 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1l9KaA-0001i6-Ew; Tue, 09 Feb 2021 04:24:58 +0000
Date: Tue, 9 Feb 2021 12:24:35 +0800
From: kernel test robot <lkp@intel.com>
To: kan.liang@linux.intel.com
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH 20/49] perf/x86/intel: Add Alder Lake Hybrid support
Message-ID: <202102091224.blTrzSBS-lkp@intel.com>
References: <1612797946-18784-21-git-send-email-kan.liang@linux.intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="ReaqsoxgOBHFXBhH"
Content-Disposition: inline
In-Reply-To: <1612797946-18784-21-git-send-email-kan.liang@linux.intel.com>
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


--ReaqsoxgOBHFXBhH
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi,

Thank you for the patch! Yet something to improve:

[auto build test ERROR on tip/perf/core]
[cannot apply to tip/master linus/master tip/x86/core v5.11-rc6 next-20210125]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch]

url:    https://github.com/0day-ci/linux/commits/kan-liang-linux-intel-com/Add-Alder-Lake-support-for-perf/20210209-070642
base:   https://git.kernel.org/pub/scm/linux/kernel/git/tip/tip.git 32451614da2a9cf4296f90d3606ac77814fb519d
config: x86_64-randconfig-a013-20210209 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project c9439ca36342fb6013187d0a69aef92736951476)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install x86_64 cross compiling tool for clang build
        # apt-get install binutils-x86-64-linux-gnu
        # https://github.com/0day-ci/linux/commit/b4dd7dba3e07b911b667e9c8052547a7af28298b
        git remote add linux-review https://github.com/0day-ci/linux
        git fetch --no-tags linux-review kan-liang-linux-intel-com/Add-Alder-Lake-support-for-perf/20210209-070642
        git checkout b4dd7dba3e07b911b667e9c8052547a7af28298b
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

>> arch/x86/events/intel/core.c:6110:7: error: use of undeclared identifier 'INTEL_FAM6_ALDERLAKE_L'
           case INTEL_FAM6_ALDERLAKE_L:
                ^
   1 error generated.


vim +/INTEL_FAM6_ALDERLAKE_L +6110 arch/x86/events/intel/core.c

  5499	
  5500	__init int intel_pmu_init(void)
  5501	{
  5502		struct attribute **extra_skl_attr = &empty_attrs;
  5503		struct attribute **extra_attr = &empty_attrs;
  5504		struct attribute **td_attr    = &empty_attrs;
  5505		struct attribute **mem_attr   = &empty_attrs;
  5506		struct attribute **tsx_attr   = &empty_attrs;
  5507		union cpuid10_edx edx;
  5508		union cpuid10_eax eax;
  5509		union cpuid10_ebx ebx;
  5510		unsigned int fixed_mask;
  5511		bool pmem = false;
  5512		int version, i;
  5513		char *name;
  5514		struct x86_hybrid_pmu *pmu;
  5515	
  5516		if (!cpu_has(&boot_cpu_data, X86_FEATURE_ARCH_PERFMON)) {
  5517			switch (boot_cpu_data.x86) {
  5518			case 0x6:
  5519				return p6_pmu_init();
  5520			case 0xb:
  5521				return knc_pmu_init();
  5522			case 0xf:
  5523				return p4_pmu_init();
  5524			}
  5525			return -ENODEV;
  5526		}
  5527	
  5528		/*
  5529		 * Check whether the Architectural PerfMon supports
  5530		 * Branch Misses Retired hw_event or not.
  5531		 */
  5532		cpuid(10, &eax.full, &ebx.full, &fixed_mask, &edx.full);
  5533		if (eax.split.mask_length < ARCH_PERFMON_EVENTS_COUNT)
  5534			return -ENODEV;
  5535	
  5536		version = eax.split.version_id;
  5537		if (version < 2)
  5538			x86_pmu = core_pmu;
  5539		else
  5540			x86_pmu = intel_pmu;
  5541	
  5542		x86_pmu.version			= version;
  5543		x86_pmu.num_counters		= eax.split.num_counters;
  5544		x86_pmu.cntval_bits		= eax.split.bit_width;
  5545		x86_pmu.cntval_mask		= (1ULL << eax.split.bit_width) - 1;
  5546	
  5547		x86_pmu.events_maskl		= ebx.full;
  5548		x86_pmu.events_mask_len		= eax.split.mask_length;
  5549	
  5550		x86_pmu.max_pebs_events		= min_t(unsigned, MAX_PEBS_EVENTS, x86_pmu.num_counters);
  5551	
  5552		/*
  5553		 * Quirk: v2 perfmon does not report fixed-purpose events, so
  5554		 * assume at least 3 events, when not running in a hypervisor:
  5555		 */
  5556		if (version > 1 && version < 5) {
  5557			int assume = 3 * !boot_cpu_has(X86_FEATURE_HYPERVISOR);
  5558	
  5559			x86_pmu.num_counters_fixed =
  5560				max((int)edx.split.num_counters_fixed, assume);
  5561	
  5562			fixed_mask = (1L << x86_pmu.num_counters_fixed) - 1;
  5563		} else if (version >= 5)
  5564			x86_pmu.num_counters_fixed = fls(fixed_mask);
  5565	
  5566		if (boot_cpu_has(X86_FEATURE_PDCM)) {
  5567			u64 capabilities;
  5568	
  5569			rdmsrl(MSR_IA32_PERF_CAPABILITIES, capabilities);
  5570			x86_pmu.intel_cap.capabilities = capabilities;
  5571		}
  5572	
  5573		if (x86_pmu.intel_cap.lbr_format == LBR_FORMAT_32) {
  5574			x86_pmu.lbr_reset = intel_pmu_lbr_reset_32;
  5575			x86_pmu.lbr_read = intel_pmu_lbr_read_32;
  5576		}
  5577	
  5578		if (boot_cpu_has(X86_FEATURE_ARCH_LBR))
  5579			intel_pmu_arch_lbr_init();
  5580	
  5581		intel_ds_init();
  5582	
  5583		x86_add_quirk(intel_arch_events_quirk); /* Install first, so it runs last */
  5584	
  5585		if (version >= 5) {
  5586			x86_pmu.intel_cap.anythread_deprecated = edx.split.anythread_deprecated;
  5587			if (x86_pmu.intel_cap.anythread_deprecated)
  5588				pr_cont(" AnyThread deprecated, ");
  5589		}
  5590	
  5591		/*
  5592		 * Install the hw-cache-events table:
  5593		 */
  5594		switch (boot_cpu_data.x86_model) {
  5595		case INTEL_FAM6_CORE_YONAH:
  5596			pr_cont("Core events, ");
  5597			name = "core";
  5598			break;
  5599	
  5600		case INTEL_FAM6_CORE2_MEROM:
  5601			x86_add_quirk(intel_clovertown_quirk);
  5602			fallthrough;
  5603	
  5604		case INTEL_FAM6_CORE2_MEROM_L:
  5605		case INTEL_FAM6_CORE2_PENRYN:
  5606		case INTEL_FAM6_CORE2_DUNNINGTON:
  5607			memcpy(hw_cache_event_ids, core2_hw_cache_event_ids,
  5608			       sizeof(hw_cache_event_ids));
  5609	
  5610			intel_pmu_lbr_init_core();
  5611	
  5612			x86_pmu.event_constraints = intel_core2_event_constraints;
  5613			x86_pmu.pebs_constraints = intel_core2_pebs_event_constraints;
  5614			pr_cont("Core2 events, ");
  5615			name = "core2";
  5616			break;
  5617	
  5618		case INTEL_FAM6_NEHALEM:
  5619		case INTEL_FAM6_NEHALEM_EP:
  5620		case INTEL_FAM6_NEHALEM_EX:
  5621			memcpy(hw_cache_event_ids, nehalem_hw_cache_event_ids,
  5622			       sizeof(hw_cache_event_ids));
  5623			memcpy(hw_cache_extra_regs, nehalem_hw_cache_extra_regs,
  5624			       sizeof(hw_cache_extra_regs));
  5625	
  5626			intel_pmu_lbr_init_nhm();
  5627	
  5628			x86_pmu.event_constraints = intel_nehalem_event_constraints;
  5629			x86_pmu.pebs_constraints = intel_nehalem_pebs_event_constraints;
  5630			x86_pmu.enable_all = intel_pmu_nhm_enable_all;
  5631			x86_pmu.extra_regs = intel_nehalem_extra_regs;
  5632			x86_pmu.limit_period = nhm_limit_period;
  5633	
  5634			mem_attr = nhm_mem_events_attrs;
  5635	
  5636			/* UOPS_ISSUED.STALLED_CYCLES */
  5637			intel_perfmon_event_map[PERF_COUNT_HW_STALLED_CYCLES_FRONTEND] =
  5638				X86_CONFIG(.event=0x0e, .umask=0x01, .inv=1, .cmask=1);
  5639			/* UOPS_EXECUTED.CORE_ACTIVE_CYCLES,c=1,i=1 */
  5640			intel_perfmon_event_map[PERF_COUNT_HW_STALLED_CYCLES_BACKEND] =
  5641				X86_CONFIG(.event=0xb1, .umask=0x3f, .inv=1, .cmask=1);
  5642	
  5643			intel_pmu_pebs_data_source_nhm();
  5644			x86_add_quirk(intel_nehalem_quirk);
  5645			x86_pmu.pebs_no_tlb = 1;
  5646			extra_attr = nhm_format_attr;
  5647	
  5648			pr_cont("Nehalem events, ");
  5649			name = "nehalem";
  5650			break;
  5651	
  5652		case INTEL_FAM6_ATOM_BONNELL:
  5653		case INTEL_FAM6_ATOM_BONNELL_MID:
  5654		case INTEL_FAM6_ATOM_SALTWELL:
  5655		case INTEL_FAM6_ATOM_SALTWELL_MID:
  5656		case INTEL_FAM6_ATOM_SALTWELL_TABLET:
  5657			memcpy(hw_cache_event_ids, atom_hw_cache_event_ids,
  5658			       sizeof(hw_cache_event_ids));
  5659	
  5660			intel_pmu_lbr_init_atom();
  5661	
  5662			x86_pmu.event_constraints = intel_gen_event_constraints;
  5663			x86_pmu.pebs_constraints = intel_atom_pebs_event_constraints;
  5664			x86_pmu.pebs_aliases = intel_pebs_aliases_core2;
  5665			pr_cont("Atom events, ");
  5666			name = "bonnell";
  5667			break;
  5668	
  5669		case INTEL_FAM6_ATOM_SILVERMONT:
  5670		case INTEL_FAM6_ATOM_SILVERMONT_D:
  5671		case INTEL_FAM6_ATOM_SILVERMONT_MID:
  5672		case INTEL_FAM6_ATOM_AIRMONT:
  5673		case INTEL_FAM6_ATOM_AIRMONT_MID:
  5674			memcpy(hw_cache_event_ids, slm_hw_cache_event_ids,
  5675				sizeof(hw_cache_event_ids));
  5676			memcpy(hw_cache_extra_regs, slm_hw_cache_extra_regs,
  5677			       sizeof(hw_cache_extra_regs));
  5678	
  5679			intel_pmu_lbr_init_slm();
  5680	
  5681			x86_pmu.event_constraints = intel_slm_event_constraints;
  5682			x86_pmu.pebs_constraints = intel_slm_pebs_event_constraints;
  5683			x86_pmu.extra_regs = intel_slm_extra_regs;
  5684			x86_pmu.flags |= PMU_FL_HAS_RSP_1;
  5685			td_attr = slm_events_attrs;
  5686			extra_attr = slm_format_attr;
  5687			pr_cont("Silvermont events, ");
  5688			name = "silvermont";
  5689			break;
  5690	
  5691		case INTEL_FAM6_ATOM_GOLDMONT:
  5692		case INTEL_FAM6_ATOM_GOLDMONT_D:
  5693			memcpy(hw_cache_event_ids, glm_hw_cache_event_ids,
  5694			       sizeof(hw_cache_event_ids));
  5695			memcpy(hw_cache_extra_regs, glm_hw_cache_extra_regs,
  5696			       sizeof(hw_cache_extra_regs));
  5697	
  5698			intel_pmu_lbr_init_skl();
  5699	
  5700			x86_pmu.event_constraints = intel_slm_event_constraints;
  5701			x86_pmu.pebs_constraints = intel_glm_pebs_event_constraints;
  5702			x86_pmu.extra_regs = intel_glm_extra_regs;
  5703			/*
  5704			 * It's recommended to use CPU_CLK_UNHALTED.CORE_P + NPEBS
  5705			 * for precise cycles.
  5706			 * :pp is identical to :ppp
  5707			 */
  5708			x86_pmu.pebs_aliases = NULL;
  5709			x86_pmu.pebs_prec_dist = true;
  5710			x86_pmu.lbr_pt_coexist = true;
  5711			x86_pmu.flags |= PMU_FL_HAS_RSP_1;
  5712			td_attr = glm_events_attrs;
  5713			extra_attr = slm_format_attr;
  5714			pr_cont("Goldmont events, ");
  5715			name = "goldmont";
  5716			break;
  5717	
  5718		case INTEL_FAM6_ATOM_GOLDMONT_PLUS:
  5719			memcpy(hw_cache_event_ids, glp_hw_cache_event_ids,
  5720			       sizeof(hw_cache_event_ids));
  5721			memcpy(hw_cache_extra_regs, glp_hw_cache_extra_regs,
  5722			       sizeof(hw_cache_extra_regs));
  5723	
  5724			intel_pmu_lbr_init_skl();
  5725	
  5726			x86_pmu.event_constraints = intel_slm_event_constraints;
  5727			x86_pmu.extra_regs = intel_glm_extra_regs;
  5728			/*
  5729			 * It's recommended to use CPU_CLK_UNHALTED.CORE_P + NPEBS
  5730			 * for precise cycles.
  5731			 */
  5732			x86_pmu.pebs_aliases = NULL;
  5733			x86_pmu.pebs_prec_dist = true;
  5734			x86_pmu.lbr_pt_coexist = true;
  5735			x86_pmu.flags |= PMU_FL_HAS_RSP_1;
  5736			x86_pmu.flags |= PMU_FL_PEBS_ALL;
  5737			x86_pmu.get_event_constraints = glp_get_event_constraints;
  5738			td_attr = glm_events_attrs;
  5739			/* Goldmont Plus has 4-wide pipeline */
  5740			event_attr_td_total_slots_scale_glm.event_str = "4";
  5741			extra_attr = slm_format_attr;
  5742			pr_cont("Goldmont plus events, ");
  5743			name = "goldmont_plus";
  5744			break;
  5745	
  5746		case INTEL_FAM6_ATOM_TREMONT_D:
  5747		case INTEL_FAM6_ATOM_TREMONT:
  5748		case INTEL_FAM6_ATOM_TREMONT_L:
  5749			x86_pmu.late_ack = true;
  5750			memcpy(hw_cache_event_ids, glp_hw_cache_event_ids,
  5751			       sizeof(hw_cache_event_ids));
  5752			memcpy(hw_cache_extra_regs, tnt_hw_cache_extra_regs,
  5753			       sizeof(hw_cache_extra_regs));
  5754			hw_cache_event_ids[C(ITLB)][C(OP_READ)][C(RESULT_ACCESS)] = -1;
  5755	
  5756			intel_pmu_lbr_init_skl();
  5757	
  5758			x86_pmu.event_constraints = intel_slm_event_constraints;
  5759			x86_pmu.extra_regs = intel_tnt_extra_regs;
  5760			/*
  5761			 * It's recommended to use CPU_CLK_UNHALTED.CORE_P + NPEBS
  5762			 * for precise cycles.
  5763			 */
  5764			x86_pmu.pebs_aliases = NULL;
  5765			x86_pmu.pebs_prec_dist = true;
  5766			x86_pmu.lbr_pt_coexist = true;
  5767			x86_pmu.flags |= PMU_FL_HAS_RSP_1;
  5768			x86_pmu.get_event_constraints = tnt_get_event_constraints;
  5769			td_attr = tnt_events_attrs;
  5770			extra_attr = slm_format_attr;
  5771			pr_cont("Tremont events, ");
  5772			name = "Tremont";
  5773			break;
  5774	
  5775		case INTEL_FAM6_WESTMERE:
  5776		case INTEL_FAM6_WESTMERE_EP:
  5777		case INTEL_FAM6_WESTMERE_EX:
  5778			memcpy(hw_cache_event_ids, westmere_hw_cache_event_ids,
  5779			       sizeof(hw_cache_event_ids));
  5780			memcpy(hw_cache_extra_regs, nehalem_hw_cache_extra_regs,
  5781			       sizeof(hw_cache_extra_regs));
  5782	
  5783			intel_pmu_lbr_init_nhm();
  5784	
  5785			x86_pmu.event_constraints = intel_westmere_event_constraints;
  5786			x86_pmu.enable_all = intel_pmu_nhm_enable_all;
  5787			x86_pmu.pebs_constraints = intel_westmere_pebs_event_constraints;
  5788			x86_pmu.extra_regs = intel_westmere_extra_regs;
  5789			x86_pmu.flags |= PMU_FL_HAS_RSP_1;
  5790	
  5791			mem_attr = nhm_mem_events_attrs;
  5792	
  5793			/* UOPS_ISSUED.STALLED_CYCLES */
  5794			intel_perfmon_event_map[PERF_COUNT_HW_STALLED_CYCLES_FRONTEND] =
  5795				X86_CONFIG(.event=0x0e, .umask=0x01, .inv=1, .cmask=1);
  5796			/* UOPS_EXECUTED.CORE_ACTIVE_CYCLES,c=1,i=1 */
  5797			intel_perfmon_event_map[PERF_COUNT_HW_STALLED_CYCLES_BACKEND] =
  5798				X86_CONFIG(.event=0xb1, .umask=0x3f, .inv=1, .cmask=1);
  5799	
  5800			intel_pmu_pebs_data_source_nhm();
  5801			extra_attr = nhm_format_attr;
  5802			pr_cont("Westmere events, ");
  5803			name = "westmere";
  5804			break;
  5805	
  5806		case INTEL_FAM6_SANDYBRIDGE:
  5807		case INTEL_FAM6_SANDYBRIDGE_X:
  5808			x86_add_quirk(intel_sandybridge_quirk);
  5809			x86_add_quirk(intel_ht_bug);
  5810			memcpy(hw_cache_event_ids, snb_hw_cache_event_ids,
  5811			       sizeof(hw_cache_event_ids));
  5812			memcpy(hw_cache_extra_regs, snb_hw_cache_extra_regs,
  5813			       sizeof(hw_cache_extra_regs));
  5814	
  5815			intel_pmu_lbr_init_snb();
  5816	
  5817			x86_pmu.event_constraints = intel_snb_event_constraints;
  5818			x86_pmu.pebs_constraints = intel_snb_pebs_event_constraints;
  5819			x86_pmu.pebs_aliases = intel_pebs_aliases_snb;
  5820			if (boot_cpu_data.x86_model == INTEL_FAM6_SANDYBRIDGE_X)
  5821				x86_pmu.extra_regs = intel_snbep_extra_regs;
  5822			else
  5823				x86_pmu.extra_regs = intel_snb_extra_regs;
  5824	
  5825	
  5826			/* all extra regs are per-cpu when HT is on */
  5827			x86_pmu.flags |= PMU_FL_HAS_RSP_1;
  5828			x86_pmu.flags |= PMU_FL_NO_HT_SHARING;
  5829	
  5830			td_attr  = snb_events_attrs;
  5831			mem_attr = snb_mem_events_attrs;
  5832	
  5833			/* UOPS_ISSUED.ANY,c=1,i=1 to count stall cycles */
  5834			intel_perfmon_event_map[PERF_COUNT_HW_STALLED_CYCLES_FRONTEND] =
  5835				X86_CONFIG(.event=0x0e, .umask=0x01, .inv=1, .cmask=1);
  5836			/* UOPS_DISPATCHED.THREAD,c=1,i=1 to count stall cycles*/
  5837			intel_perfmon_event_map[PERF_COUNT_HW_STALLED_CYCLES_BACKEND] =
  5838				X86_CONFIG(.event=0xb1, .umask=0x01, .inv=1, .cmask=1);
  5839	
  5840			extra_attr = nhm_format_attr;
  5841	
  5842			pr_cont("SandyBridge events, ");
  5843			name = "sandybridge";
  5844			break;
  5845	
  5846		case INTEL_FAM6_IVYBRIDGE:
  5847		case INTEL_FAM6_IVYBRIDGE_X:
  5848			x86_add_quirk(intel_ht_bug);
  5849			memcpy(hw_cache_event_ids, snb_hw_cache_event_ids,
  5850			       sizeof(hw_cache_event_ids));
  5851			/* dTLB-load-misses on IVB is different than SNB */
  5852			hw_cache_event_ids[C(DTLB)][C(OP_READ)][C(RESULT_MISS)] = 0x8108; /* DTLB_LOAD_MISSES.DEMAND_LD_MISS_CAUSES_A_WALK */
  5853	
  5854			memcpy(hw_cache_extra_regs, snb_hw_cache_extra_regs,
  5855			       sizeof(hw_cache_extra_regs));
  5856	
  5857			intel_pmu_lbr_init_snb();
  5858	
  5859			x86_pmu.event_constraints = intel_ivb_event_constraints;
  5860			x86_pmu.pebs_constraints = intel_ivb_pebs_event_constraints;
  5861			x86_pmu.pebs_aliases = intel_pebs_aliases_ivb;
  5862			x86_pmu.pebs_prec_dist = true;
  5863			if (boot_cpu_data.x86_model == INTEL_FAM6_IVYBRIDGE_X)
  5864				x86_pmu.extra_regs = intel_snbep_extra_regs;
  5865			else
  5866				x86_pmu.extra_regs = intel_snb_extra_regs;
  5867			/* all extra regs are per-cpu when HT is on */
  5868			x86_pmu.flags |= PMU_FL_HAS_RSP_1;
  5869			x86_pmu.flags |= PMU_FL_NO_HT_SHARING;
  5870	
  5871			td_attr  = snb_events_attrs;
  5872			mem_attr = snb_mem_events_attrs;
  5873	
  5874			/* UOPS_ISSUED.ANY,c=1,i=1 to count stall cycles */
  5875			intel_perfmon_event_map[PERF_COUNT_HW_STALLED_CYCLES_FRONTEND] =
  5876				X86_CONFIG(.event=0x0e, .umask=0x01, .inv=1, .cmask=1);
  5877	
  5878			extra_attr = nhm_format_attr;
  5879	
  5880			pr_cont("IvyBridge events, ");
  5881			name = "ivybridge";
  5882			break;
  5883	
  5884	
  5885		case INTEL_FAM6_HASWELL:
  5886		case INTEL_FAM6_HASWELL_X:
  5887		case INTEL_FAM6_HASWELL_L:
  5888		case INTEL_FAM6_HASWELL_G:
  5889			x86_add_quirk(intel_ht_bug);
  5890			x86_add_quirk(intel_pebs_isolation_quirk);
  5891			x86_pmu.late_ack = true;
  5892			memcpy(hw_cache_event_ids, hsw_hw_cache_event_ids, sizeof(hw_cache_event_ids));
  5893			memcpy(hw_cache_extra_regs, hsw_hw_cache_extra_regs, sizeof(hw_cache_extra_regs));
  5894	
  5895			intel_pmu_lbr_init_hsw();
  5896	
  5897			x86_pmu.event_constraints = intel_hsw_event_constraints;
  5898			x86_pmu.pebs_constraints = intel_hsw_pebs_event_constraints;
  5899			x86_pmu.extra_regs = intel_snbep_extra_regs;
  5900			x86_pmu.pebs_aliases = intel_pebs_aliases_ivb;
  5901			x86_pmu.pebs_prec_dist = true;
  5902			/* all extra regs are per-cpu when HT is on */
  5903			x86_pmu.flags |= PMU_FL_HAS_RSP_1;
  5904			x86_pmu.flags |= PMU_FL_NO_HT_SHARING;
  5905	
  5906			x86_pmu.hw_config = hsw_hw_config;
  5907			x86_pmu.get_event_constraints = hsw_get_event_constraints;
  5908			x86_pmu.lbr_double_abort = true;
  5909			extra_attr = boot_cpu_has(X86_FEATURE_RTM) ?
  5910				hsw_format_attr : nhm_format_attr;
  5911			td_attr  = hsw_events_attrs;
  5912			mem_attr = hsw_mem_events_attrs;
  5913			tsx_attr = hsw_tsx_events_attrs;
  5914			pr_cont("Haswell events, ");
  5915			name = "haswell";
  5916			break;
  5917	
  5918		case INTEL_FAM6_BROADWELL:
  5919		case INTEL_FAM6_BROADWELL_D:
  5920		case INTEL_FAM6_BROADWELL_G:
  5921		case INTEL_FAM6_BROADWELL_X:
  5922			x86_add_quirk(intel_pebs_isolation_quirk);
  5923			x86_pmu.late_ack = true;
  5924			memcpy(hw_cache_event_ids, hsw_hw_cache_event_ids, sizeof(hw_cache_event_ids));
  5925			memcpy(hw_cache_extra_regs, hsw_hw_cache_extra_regs, sizeof(hw_cache_extra_regs));
  5926	
  5927			/* L3_MISS_LOCAL_DRAM is BIT(26) in Broadwell */
  5928			hw_cache_extra_regs[C(LL)][C(OP_READ)][C(RESULT_MISS)] = HSW_DEMAND_READ |
  5929										 BDW_L3_MISS|HSW_SNOOP_DRAM;
  5930			hw_cache_extra_regs[C(LL)][C(OP_WRITE)][C(RESULT_MISS)] = HSW_DEMAND_WRITE|BDW_L3_MISS|
  5931										  HSW_SNOOP_DRAM;
  5932			hw_cache_extra_regs[C(NODE)][C(OP_READ)][C(RESULT_ACCESS)] = HSW_DEMAND_READ|
  5933										     BDW_L3_MISS_LOCAL|HSW_SNOOP_DRAM;
  5934			hw_cache_extra_regs[C(NODE)][C(OP_WRITE)][C(RESULT_ACCESS)] = HSW_DEMAND_WRITE|
  5935										      BDW_L3_MISS_LOCAL|HSW_SNOOP_DRAM;
  5936	
  5937			intel_pmu_lbr_init_hsw();
  5938	
  5939			x86_pmu.event_constraints = intel_bdw_event_constraints;
  5940			x86_pmu.pebs_constraints = intel_bdw_pebs_event_constraints;
  5941			x86_pmu.extra_regs = intel_snbep_extra_regs;
  5942			x86_pmu.pebs_aliases = intel_pebs_aliases_ivb;
  5943			x86_pmu.pebs_prec_dist = true;
  5944			/* all extra regs are per-cpu when HT is on */
  5945			x86_pmu.flags |= PMU_FL_HAS_RSP_1;
  5946			x86_pmu.flags |= PMU_FL_NO_HT_SHARING;
  5947	
  5948			x86_pmu.hw_config = hsw_hw_config;
  5949			x86_pmu.get_event_constraints = hsw_get_event_constraints;
  5950			x86_pmu.limit_period = bdw_limit_period;
  5951			extra_attr = boot_cpu_has(X86_FEATURE_RTM) ?
  5952				hsw_format_attr : nhm_format_attr;
  5953			td_attr  = hsw_events_attrs;
  5954			mem_attr = hsw_mem_events_attrs;
  5955			tsx_attr = hsw_tsx_events_attrs;
  5956			pr_cont("Broadwell events, ");
  5957			name = "broadwell";
  5958			break;
  5959	
  5960		case INTEL_FAM6_XEON_PHI_KNL:
  5961		case INTEL_FAM6_XEON_PHI_KNM:
  5962			memcpy(hw_cache_event_ids,
  5963			       slm_hw_cache_event_ids, sizeof(hw_cache_event_ids));
  5964			memcpy(hw_cache_extra_regs,
  5965			       knl_hw_cache_extra_regs, sizeof(hw_cache_extra_regs));
  5966			intel_pmu_lbr_init_knl();
  5967	
  5968			x86_pmu.event_constraints = intel_slm_event_constraints;
  5969			x86_pmu.pebs_constraints = intel_slm_pebs_event_constraints;
  5970			x86_pmu.extra_regs = intel_knl_extra_regs;
  5971	
  5972			/* all extra regs are per-cpu when HT is on */
  5973			x86_pmu.flags |= PMU_FL_HAS_RSP_1;
  5974			x86_pmu.flags |= PMU_FL_NO_HT_SHARING;
  5975			extra_attr = slm_format_attr;
  5976			pr_cont("Knights Landing/Mill events, ");
  5977			name = "knights-landing";
  5978			break;
  5979	
  5980		case INTEL_FAM6_SKYLAKE_X:
  5981			pmem = true;
  5982			fallthrough;
  5983		case INTEL_FAM6_SKYLAKE_L:
  5984		case INTEL_FAM6_SKYLAKE:
  5985		case INTEL_FAM6_KABYLAKE_L:
  5986		case INTEL_FAM6_KABYLAKE:
  5987		case INTEL_FAM6_COMETLAKE_L:
  5988		case INTEL_FAM6_COMETLAKE:
  5989			x86_add_quirk(intel_pebs_isolation_quirk);
  5990			x86_pmu.late_ack = true;
  5991			memcpy(hw_cache_event_ids, skl_hw_cache_event_ids, sizeof(hw_cache_event_ids));
  5992			memcpy(hw_cache_extra_regs, skl_hw_cache_extra_regs, sizeof(hw_cache_extra_regs));
  5993			intel_pmu_lbr_init_skl();
  5994	
  5995			/* INT_MISC.RECOVERY_CYCLES has umask 1 in Skylake */
  5996			event_attr_td_recovery_bubbles.event_str_noht =
  5997				"event=0xd,umask=0x1,cmask=1";
  5998			event_attr_td_recovery_bubbles.event_str_ht =
  5999				"event=0xd,umask=0x1,cmask=1,any=1";
  6000	
  6001			x86_pmu.event_constraints = intel_skl_event_constraints;
  6002			x86_pmu.pebs_constraints = intel_skl_pebs_event_constraints;
  6003			x86_pmu.extra_regs = intel_skl_extra_regs;
  6004			x86_pmu.pebs_aliases = intel_pebs_aliases_skl;
  6005			x86_pmu.pebs_prec_dist = true;
  6006			/* all extra regs are per-cpu when HT is on */
  6007			x86_pmu.flags |= PMU_FL_HAS_RSP_1;
  6008			x86_pmu.flags |= PMU_FL_NO_HT_SHARING;
  6009	
  6010			x86_pmu.hw_config = hsw_hw_config;
  6011			x86_pmu.get_event_constraints = hsw_get_event_constraints;
  6012			extra_attr = boot_cpu_has(X86_FEATURE_RTM) ?
  6013				hsw_format_attr : nhm_format_attr;
  6014			extra_skl_attr = skl_format_attr;
  6015			td_attr  = hsw_events_attrs;
  6016			mem_attr = hsw_mem_events_attrs;
  6017			tsx_attr = hsw_tsx_events_attrs;
  6018			intel_pmu_pebs_data_source_skl(pmem);
  6019	
  6020			if (boot_cpu_has(X86_FEATURE_TSX_FORCE_ABORT)) {
  6021				x86_pmu.flags |= PMU_FL_TFA;
  6022				x86_pmu.get_event_constraints = tfa_get_event_constraints;
  6023				x86_pmu.enable_all = intel_tfa_pmu_enable_all;
  6024				x86_pmu.commit_scheduling = intel_tfa_commit_scheduling;
  6025			}
  6026	
  6027			pr_cont("Skylake events, ");
  6028			name = "skylake";
  6029			break;
  6030	
  6031		case INTEL_FAM6_ICELAKE_X:
  6032		case INTEL_FAM6_ICELAKE_D:
  6033			pmem = true;
  6034			fallthrough;
  6035		case INTEL_FAM6_ICELAKE_L:
  6036		case INTEL_FAM6_ICELAKE:
  6037		case INTEL_FAM6_TIGERLAKE_L:
  6038		case INTEL_FAM6_TIGERLAKE:
  6039		case INTEL_FAM6_ROCKETLAKE:
  6040			x86_pmu.late_ack = true;
  6041			memcpy(hw_cache_event_ids, skl_hw_cache_event_ids, sizeof(hw_cache_event_ids));
  6042			memcpy(hw_cache_extra_regs, skl_hw_cache_extra_regs, sizeof(hw_cache_extra_regs));
  6043			hw_cache_event_ids[C(ITLB)][C(OP_READ)][C(RESULT_ACCESS)] = -1;
  6044			intel_pmu_lbr_init_skl();
  6045	
  6046			x86_pmu.event_constraints = intel_icl_event_constraints;
  6047			x86_pmu.pebs_constraints = intel_icl_pebs_event_constraints;
  6048			x86_pmu.extra_regs = intel_icl_extra_regs;
  6049			x86_pmu.pebs_aliases = NULL;
  6050			x86_pmu.pebs_prec_dist = true;
  6051			x86_pmu.flags |= PMU_FL_HAS_RSP_1;
  6052			x86_pmu.flags |= PMU_FL_NO_HT_SHARING;
  6053	
  6054			x86_pmu.hw_config = hsw_hw_config;
  6055			x86_pmu.get_event_constraints = icl_get_event_constraints;
  6056			extra_attr = boot_cpu_has(X86_FEATURE_RTM) ?
  6057				hsw_format_attr : nhm_format_attr;
  6058			extra_skl_attr = skl_format_attr;
  6059			mem_attr = icl_events_attrs;
  6060			td_attr = icl_td_events_attrs;
  6061			tsx_attr = icl_tsx_events_attrs;
  6062			x86_pmu.rtm_abort_event = X86_CONFIG(.event=0xc9, .umask=0x04);
  6063			x86_pmu.lbr_pt_coexist = true;
  6064			intel_pmu_pebs_data_source_skl(pmem);
  6065			x86_pmu.num_topdown_events = 4;
  6066			x86_pmu.update_topdown_event = icl_update_topdown_event;
  6067			x86_pmu.set_topdown_event_period = icl_set_topdown_event_period;
  6068			pr_cont("Icelake events, ");
  6069			name = "icelake";
  6070			break;
  6071	
  6072		case INTEL_FAM6_SAPPHIRERAPIDS_X:
  6073			pmem = true;
  6074			x86_pmu.late_ack = true;
  6075			memcpy(hw_cache_event_ids, spr_hw_cache_event_ids, sizeof(hw_cache_event_ids));
  6076			memcpy(hw_cache_extra_regs, spr_hw_cache_extra_regs, sizeof(hw_cache_extra_regs));
  6077	
  6078			x86_pmu.event_constraints = intel_spr_event_constraints;
  6079			x86_pmu.pebs_constraints = intel_spr_pebs_event_constraints;
  6080			x86_pmu.extra_regs = intel_spr_extra_regs;
  6081			x86_pmu.limit_period = spr_limit_period;
  6082			x86_pmu.pebs_aliases = NULL;
  6083			x86_pmu.pebs_prec_dist = true;
  6084			x86_pmu.pebs_block = true;
  6085			x86_pmu.flags |= PMU_FL_HAS_RSP_1;
  6086			x86_pmu.flags |= PMU_FL_NO_HT_SHARING;
  6087			x86_pmu.flags |= PMU_FL_PEBS_ALL;
  6088			x86_pmu.flags |= PMU_FL_INSTR_LATENCY;
  6089			x86_pmu.flags |= PMU_FL_MEM_LOADS_AUX;
  6090	
  6091			x86_pmu.hw_config = hsw_hw_config;
  6092			x86_pmu.get_event_constraints = spr_get_event_constraints;
  6093			extra_attr = boot_cpu_has(X86_FEATURE_RTM) ?
  6094				hsw_format_attr : nhm_format_attr;
  6095			extra_skl_attr = skl_format_attr;
  6096			mem_attr = spr_events_attrs;
  6097			td_attr = spr_td_events_attrs;
  6098			tsx_attr = spr_tsx_events_attrs;
  6099			x86_pmu.rtm_abort_event = X86_CONFIG(.event=0xc9, .umask=0x04);
  6100			x86_pmu.lbr_pt_coexist = true;
  6101			intel_pmu_pebs_data_source_skl(pmem);
  6102			x86_pmu.num_topdown_events = 8;
  6103			x86_pmu.update_topdown_event = icl_update_topdown_event;
  6104			x86_pmu.set_topdown_event_period = icl_set_topdown_event_period;
  6105			pr_cont("Sapphire Rapids events, ");
  6106			name = "sapphire_rapids";
  6107			break;
  6108	
  6109		case INTEL_FAM6_ALDERLAKE:
> 6110		case INTEL_FAM6_ALDERLAKE_L:
  6111			/*
  6112			 * Alder Lake has 2 types of CPU, core and atom.
  6113			 *
  6114			 * Initialize the common PerfMon capabilities here.
  6115			 */
  6116			x86_pmu.late_ack = true;
  6117			x86_pmu.pebs_aliases = NULL;
  6118			x86_pmu.pebs_prec_dist = true;
  6119			x86_pmu.flags |= PMU_FL_HAS_RSP_1;
  6120			x86_pmu.flags |= PMU_FL_NO_HT_SHARING;
  6121			x86_pmu.flags |= PMU_FL_PEBS_ALL;
  6122			x86_pmu.flags |= PMU_FL_INSTR_LATENCY;
  6123			x86_pmu.flags |= PMU_FL_MEM_LOADS_AUX;
  6124			x86_pmu.lbr_pt_coexist = true;
  6125			intel_pmu_pebs_data_source_skl(false);
  6126			x86_pmu.num_topdown_events = 8;
  6127			x86_pmu.update_topdown_event = adl_update_topdown_event;
  6128			x86_pmu.set_topdown_event_period = adl_set_topdown_event_period;
  6129	
  6130			x86_pmu.filter_match = intel_pmu_filter_match;
  6131			x86_pmu.get_event_constraints = adl_get_event_constraints;
  6132			x86_pmu.hw_config = adl_hw_config;
  6133			x86_pmu.limit_period = spr_limit_period;
  6134			/*
  6135			 * The rtm_abort_event is used to check whether to enable GPRs
  6136			 * for the RTM abort event. Atom doesn't have the RTM abort
  6137			 * event. There is no harmful to set it in the common
  6138			 * x86_pmu.rtm_abort_event.
  6139			 */
  6140			x86_pmu.rtm_abort_event = X86_CONFIG(.event=0xc9, .umask=0x04);
  6141	
  6142			td_attr = adl_hybrid_events_attrs;
  6143			mem_attr = adl_hybrid_mem_attrs;
  6144			tsx_attr = adl_hybrid_tsx_attrs;
  6145			extra_attr = boot_cpu_has(X86_FEATURE_RTM) ?
  6146				adl_hybrid_extra_attr_rtm : adl_hybrid_extra_attr;
  6147	
  6148			/* Initialize big core specific PerfMon capabilities.*/
  6149			set_bit(X86_HYBRID_PMU_CORE_IDX, &x86_pmu.hybrid_pmu_bitmap);
  6150			pmu = &x86_pmu.hybrid_pmu[X86_HYBRID_PMU_CORE_IDX];
  6151			pmu->name = "cpu_core";
  6152			pmu->cpu_type = X86_HYBRID_CORE_CPU_TYPE;
  6153			pmu->num_counters = x86_pmu.num_counters + 2;
  6154			pmu->num_counters_fixed = x86_pmu.num_counters_fixed + 1;
  6155			pmu->max_pebs_events = min_t(unsigned, MAX_PEBS_EVENTS, pmu->num_counters);
  6156			pmu->unconstrained = (struct event_constraint)
  6157						__EVENT_CONSTRAINT(0, (1ULL << pmu->num_counters) - 1,
  6158								   0, pmu->num_counters, 0, 0);
  6159			pmu->intel_cap.capabilities = x86_pmu.intel_cap.capabilities;
  6160			pmu->intel_cap.perf_metrics = 1;
  6161			pmu->intel_cap.pebs_output_pt_available = 0;
  6162	
  6163			memcpy(pmu->hw_cache_event_ids, spr_hw_cache_event_ids, sizeof(pmu->hw_cache_event_ids));
  6164			memcpy(pmu->hw_cache_extra_regs, spr_hw_cache_extra_regs, sizeof(pmu->hw_cache_extra_regs));
  6165			pmu->event_constraints = intel_spr_event_constraints;
  6166			pmu->pebs_constraints = intel_spr_pebs_event_constraints;
  6167			pmu->extra_regs = intel_spr_extra_regs;
  6168	
  6169			/* Initialize Atom core specific PerfMon capabilities.*/
  6170			set_bit(X86_HYBRID_PMU_ATOM_IDX, &x86_pmu.hybrid_pmu_bitmap);
  6171			pmu = &x86_pmu.hybrid_pmu[X86_HYBRID_PMU_ATOM_IDX];
  6172			pmu->name = "cpu_atom";
  6173			pmu->cpu_type = X86_HYBRID_ATOM_CPU_TYPE;
  6174			pmu->num_counters = x86_pmu.num_counters;
  6175			pmu->num_counters_fixed = x86_pmu.num_counters_fixed;
  6176			pmu->max_pebs_events = x86_pmu.max_pebs_events;
  6177			pmu->unconstrained = (struct event_constraint)
  6178						__EVENT_CONSTRAINT(0, (1ULL << pmu->num_counters) - 1,
  6179								   0, pmu->num_counters, 0, 0);
  6180			pmu->intel_cap.capabilities = x86_pmu.intel_cap.capabilities;
  6181			pmu->intel_cap.perf_metrics = 0;
  6182			pmu->intel_cap.pebs_output_pt_available = 1;
  6183	
  6184			memcpy(pmu->hw_cache_event_ids, glp_hw_cache_event_ids, sizeof(pmu->hw_cache_event_ids));
  6185			memcpy(pmu->hw_cache_extra_regs, tnt_hw_cache_extra_regs, sizeof(pmu->hw_cache_extra_regs));
  6186			pmu->hw_cache_event_ids[C(ITLB)][C(OP_READ)][C(RESULT_ACCESS)] = -1;
  6187			pmu->event_constraints = intel_slm_event_constraints;
  6188			pmu->pebs_constraints = intel_grt_pebs_event_constraints;
  6189			pmu->extra_regs = intel_grt_extra_regs;
  6190			pr_cont("Alderlake Hybrid events, ");
  6191			name = "alderlake_hybrid";
  6192			break;
  6193	
  6194		default:
  6195			switch (x86_pmu.version) {
  6196			case 1:
  6197				x86_pmu.event_constraints = intel_v1_event_constraints;
  6198				pr_cont("generic architected perfmon v1, ");
  6199				name = "generic_arch_v1";
  6200				break;
  6201			default:
  6202				/*
  6203				 * default constraints for v2 and up
  6204				 */
  6205				x86_pmu.event_constraints = intel_gen_event_constraints;
  6206				pr_cont("generic architected perfmon, ");
  6207				name = "generic_arch_v2+";
  6208				break;
  6209			}
  6210		}
  6211	
  6212		snprintf(pmu_name_str, sizeof(pmu_name_str), "%s", name);
  6213	
  6214		if (!IS_X86_HYBRID) {
  6215			group_events_td.attrs  = td_attr;
  6216			group_events_mem.attrs = mem_attr;
  6217			group_events_tsx.attrs = tsx_attr;
  6218			group_format_extra.attrs = extra_attr;
  6219			group_format_extra_skl.attrs = extra_skl_attr;
  6220	
  6221			x86_pmu.attr_update = attr_update;
  6222		} else {
  6223			hybrid_group_events_td.attrs  = td_attr;
  6224			hybrid_group_events_mem.attrs = mem_attr;
  6225			hybrid_group_events_tsx.attrs = tsx_attr;
  6226			hybrid_group_format_extra.attrs = extra_attr;
  6227	
  6228			x86_pmu.attr_update = hybrid_attr_update;
  6229		}
  6230	
  6231		intel_pmu_check_num_counters(&x86_pmu.num_counters,
  6232					     &x86_pmu.num_counters_fixed,
  6233					     &x86_pmu.intel_ctrl,
  6234					     (u64)fixed_mask);
  6235	
  6236		/* AnyThread may be deprecated on arch perfmon v5 or later */
  6237		if (x86_pmu.intel_cap.anythread_deprecated)
  6238			x86_pmu.format_attrs = intel_arch_formats_attr;
  6239	
  6240		intel_pmu_check_event_constraints(x86_pmu.event_constraints,
  6241						  x86_pmu.num_counters,
  6242						  x86_pmu.num_counters_fixed,
  6243						  x86_pmu.intel_ctrl);
  6244		/*
  6245		 * Access LBR MSR may cause #GP under certain circumstances.
  6246		 * E.g. KVM doesn't support LBR MSR
  6247		 * Check all LBT MSR here.
  6248		 * Disable LBR access if any LBR MSRs can not be accessed.
  6249		 */
  6250		if (x86_pmu.lbr_nr && !check_msr(x86_pmu.lbr_tos, 0x3UL))
  6251			x86_pmu.lbr_nr = 0;
  6252		for (i = 0; i < x86_pmu.lbr_nr; i++) {
  6253			if (!(check_msr(x86_pmu.lbr_from + i, 0xffffUL) &&
  6254			      check_msr(x86_pmu.lbr_to + i, 0xffffUL)))
  6255				x86_pmu.lbr_nr = 0;
  6256		}
  6257	
  6258		if (x86_pmu.lbr_nr)
  6259			pr_cont("%d-deep LBR, ", x86_pmu.lbr_nr);
  6260	
  6261		intel_pmu_check_extra_regs(x86_pmu.extra_regs);
  6262	
  6263		/* Support full width counters using alternative MSR range */
  6264		if (x86_pmu.intel_cap.full_width_write) {
  6265			x86_pmu.max_period = x86_pmu.cntval_mask >> 1;
  6266			x86_pmu.perfctr = MSR_IA32_PMC0;
  6267			pr_cont("full-width counters, ");
  6268		}
  6269	
  6270		if (!IS_X86_HYBRID && x86_pmu.intel_cap.perf_metrics)
  6271			x86_pmu.intel_ctrl |= 1ULL << GLOBAL_CTRL_EN_PERF_METRICS;
  6272	
  6273		return 0;
  6274	}
  6275	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202102091224.blTrzSBS-lkp%40intel.com.

--ReaqsoxgOBHFXBhH
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
eIVZFP4atsOW8JzixTaRRhb/B96kS2MyRwIA

--ReaqsoxgOBHFXBhH--
