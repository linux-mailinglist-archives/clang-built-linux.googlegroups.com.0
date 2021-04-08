Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBKVPX2BQMGQEZ734PXY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x937.google.com (mail-ua1-x937.google.com [IPv6:2607:f8b0:4864:20::937])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A3B73590AE
	for <lists+clang-built-linux@lfdr.de>; Fri,  9 Apr 2021 01:54:19 +0200 (CEST)
Received: by mail-ua1-x937.google.com with SMTP id f10sf840808uax.19
        for <lists+clang-built-linux@lfdr.de>; Thu, 08 Apr 2021 16:54:19 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1617926058; cv=pass;
        d=google.com; s=arc-20160816;
        b=EoiB44t60fnH5aXl2ZjXvBKLCd4zQJ6kcotqDZzMifBNi8bYdwozSFiq59jM9YOp9e
         mp7KxcLUvgEJKOqWVGxff1cqYNc6hzjuDuC2npsKJNunVlnR5SyNAX3O7i/F/Vio6XBw
         ZIcFm9zJxdDDtudqh9He5k1SCVrcVucb7MT9fMYw5RQVBhBzMcGBrTj+BxdJmV8LyKWY
         V189eWO67a2IJg3pGLRBrNpdVq3Pis/ug5+h4iExIwdvP98stFvV9tcfRI2Ol0M9ERp/
         OiDsLM4kkUFpZ8EVTtv+tq7iEzgbqgEI3TbOVIwW1zZJ3r/i2QdEQa6wWBV1s25J/Olo
         EkQw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=997QRkCd7PHJeIGnmzL30Rl2zi6e7QmTzggW2w/G6ig=;
        b=a70pl2/AT99VmYuYPuBA0SpXKQqjyO5f8fWYOJKPfkEs/QcvRZ9mb0atekbAq5hxqG
         503+Hv9OzGkhnPLqvGdWQb2D2qloQ6axtp9ANbmUhEpf5OCYIQdc9uag+EB1jmoN+QMc
         ty0Gl3RyEbGmP4BQVAW+HfYx4+zYnGIWfctrImWX4MUnUZlNh4C2cBATE9suBdhEguEi
         hC7x0kFQiIiWzqucgYX77AppaCJHyPjspnW91crLXWqUBYzXGUnt02X3/Kzk6JCMKUtI
         i+LZlM3j9oTkMWCkkcumEusTfsVu2m0sGtC6QRKiEB33t05qq6dooZ8/MEkPVY1oPy1F
         krjQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.136 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=997QRkCd7PHJeIGnmzL30Rl2zi6e7QmTzggW2w/G6ig=;
        b=b3iJXP27PvRt9P/qAlpnNSwGZKRKbrd18galsiCqYu0XmgHb7VSC+inykR297dhyP1
         jzvnbZKeIfasMigPLxZroySRtN8j4OL3+gqlmDSg5RM2L7le22t9nYd2YXMaUFWCXZM2
         WYwrkwTFOTMY4l0Clpo3MUryfdiw8elEMyK22KwNDB2rNMkxpPY98EW9xfuA2+9Djo8b
         Al3FGDCJCisHOhrx8NpLGiw5TEus4z4elMGeyGf+J1rwzslFHFopR52XTJthv4rfKAcW
         0Tu0xfo9NoHzvZWRUUp3auVtnh8dsPCrn4rwdrkL68ubJ4VzLEwLxSwrvd8Y647vi9fC
         NXhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:references:mime-version:content-disposition
         :in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=997QRkCd7PHJeIGnmzL30Rl2zi6e7QmTzggW2w/G6ig=;
        b=Npt/vgGTsYYeexCMfxMGGGLdfRrpTQNzunS9dPzcnz7JXB3aydXiAo6MlvZJvMEEXR
         uxh6Bo9QDwmTTHnWb1frKD+xjZBX/OuNbYKOt1T0qg08SqCv48XIzw1AO1Ocg23ePJCE
         WeazGXanDIaK3/4ZTDNRQtMET7yJ5+WQGXQHleF2DzBo0vuarI9FNwgzPEyCsdBpksnB
         /Pf6Q7Yr0zQ5b0EqunkOf71eGP2I6SbgCt3jFJodLzjK3NMw1tMKIPtbYh4hsWRqS2Aq
         OVq/DXT1ZZpBohm3d8RDsbjTXYnEdE5RwpVrUDte1H6mt2awgNfU1uQTVXuh4jUQWkbb
         un/w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530ft8IHLoTRi8xY8iRltz7YGOyVBcnXC3N8uNLxtmZ2bmt3MlFT
	9EXKDN1dVWvjNFG6pSj5PnQ=
X-Google-Smtp-Source: ABdhPJyS3GDsyVHeNHKVr+s+iFDstSiNzIu6fl3m2r8MAgjqt/LojDDOrY9lLPmdvi+mNJUQbDMQpw==
X-Received: by 2002:a67:bd12:: with SMTP id y18mr8250257vsq.22.1617926058284;
        Thu, 08 Apr 2021 16:54:18 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:fb06:: with SMTP id d6ls1201396vsr.7.gmail; Thu, 08 Apr
 2021 16:54:17 -0700 (PDT)
X-Received: by 2002:a67:eb54:: with SMTP id x20mr3899147vso.54.1617926057503;
        Thu, 08 Apr 2021 16:54:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617926057; cv=none;
        d=google.com; s=arc-20160816;
        b=k46mCiO8iKlt90OoQg0sObyvJT80RjclXGAhnsAv9NSR3R5sS1WPDyD+1ftPVVd/oD
         6vPARj/5S72TB4+plmiUF94PoKK63h1Un5VDHTroyvMtkqVoMA8ho0prU5Vs5M44mxuM
         UWCH7B0UE9zQTmZWwZSHslIrXC1Hng+uKKx5Ac78+r1yZs1mOf4wFFAP75xnRv2l4vU5
         ifKBnB97eoSqC83w5CfmaRSkDPFJRbnVJAkovc954zE/AR6sRy41inB/NAnuLUjCYCsi
         EbXsTO+8txpw8Y+KKOumfPgg14f15HUFgm239EtUVy1IQph7IpCj6JOsn1sdphUOdcQD
         +VYQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:ironport-sdr:ironport-sdr;
        bh=oLJgzk7lhC7XwxBtIqjc4hcpOYn0nCDZaVEUZZR41/M=;
        b=dCIuCnlGQ6C8nfcMs192OewXhh7G4PcjVATITg+DJ5GKzPmnPl9nE8FDDzaCu15uBu
         2/21BsfR/meXPCfkdIna4ZUKMiFwk+ge95C3pf6YioIayJehlYQqUrX8NGBDortylUZH
         EdTyOlprjeHeDs1VxaLLWzbSDoEp3TZ42o6FqOallurST5ENeq9zsjsi0hSxB3uj6CEo
         bdmNVo82tV9R4AnDbZpeHFmVVKIWisygNHJTOtV1WW8x+4kvJUQ7ugaglRV7NBb3Q+K1
         DzmF8jOjgR5il2p79NTaee1ouM0dRp0qRW743RP3IhEfAEJDrhK+vXm2uKP57fDWBBKR
         sDRQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.136 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga12.intel.com (mga12.intel.com. [192.55.52.136])
        by gmr-mx.google.com with ESMTPS id u142si47398vkb.3.2021.04.08.16.54.17
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 08 Apr 2021 16:54:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.136 as permitted sender) client-ip=192.55.52.136;
IronPort-SDR: U2137Ro2b+8XiIQVmEnHXQQS2FcBYGSpfYminkW83lPPH3K8VPzgW09tiB7dt9yKPektdSfjQJ
 IG/Vwrf+uanw==
X-IronPort-AV: E=McAfee;i="6000,8403,9948"; a="173133003"
X-IronPort-AV: E=Sophos;i="5.82,207,1613462400"; 
   d="gz'50?scan'50,208,50";a="173133003"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
  by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 08 Apr 2021 16:54:15 -0700
IronPort-SDR: aUWxAKHjSe4xBSLusrGP2CPqNLiQVIH189y6g0sTIyvIuV3I+JHMxK0VIwRbWpvVE2nwSrUCb9
 wgLatS4TwCDg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,207,1613462400"; 
   d="gz'50?scan'50,208,50";a="520062267"
Received: from lkp-server01.sh.intel.com (HELO 69d8fcc516b7) ([10.239.97.150])
  by fmsmga001.fm.intel.com with ESMTP; 08 Apr 2021 16:54:14 -0700
Received: from kbuild by 69d8fcc516b7 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1lUeTV-000FrK-Hu; Thu, 08 Apr 2021 23:54:13 +0000
Date: Fri, 9 Apr 2021 07:54:09 +0800
From: kernel test robot <lkp@intel.com>
To: Daniel Bristot de Oliveira <bristot@redhat.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com
Subject: Re: [RFC PATCH 3/5] tracing/hwlat: Implement the per-cpu mode
Message-ID: <202104090700.NSMSdyAC-lkp@intel.com>
References: <1c99ca2d7403474508aa7b025869c0673238400a.1617889883.git.bristot@redhat.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="0F1p//8PRICkK4MW"
Content-Disposition: inline
In-Reply-To: <1c99ca2d7403474508aa7b025869c0673238400a.1617889883.git.bristot@redhat.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 192.55.52.136 as permitted
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


--0F1p//8PRICkK4MW
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi Daniel,

[FYI, it's a private test report for your RFC patch.]
[auto build test ERROR on tip/perf/core]
[also build test ERROR on linux/master linus/master v5.12-rc6]
[cannot apply to trace/for-next next-20210408]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch]

url:    https://github.com/0day-ci/linux/commits/Daniel-Bristot-de-Oliveira/hwlat-improvements-and-osnoise-tracer/20210408-221655
base:   https://git.kernel.org/pub/scm/linux/kernel/git/tip/tip.git cface0326a6c2ae5c8f47bd466f07624b3e348a7
config: mips-randconfig-r002-20210408 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 56ea2e2fdd691136d5e6631fa0e447173694b82c)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install mips cross compiling tool for clang build
        # apt-get install binutils-mips-linux-gnu
        # https://github.com/0day-ci/linux/commit/4e2f5d30c69f77756e8cf223acf55c2aa2657393
        git remote add linux-review https://github.com/0day-ci/linux
        git fetch --no-tags linux-review Daniel-Bristot-de-Oliveira/hwlat-improvements-and-osnoise-tracer/20210408-221655
        git checkout 4e2f5d30c69f77756e8cf223acf55c2aa2657393
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=mips 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

   kernel/trace/trace_hwlat.c:122:28: warning: no previous prototype for function 'get_cpu_data' [-Wmissing-prototypes]
   struct hwlat_kthread_data *get_cpu_data(void)
                              ^
   kernel/trace/trace_hwlat.c:122:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   struct hwlat_kthread_data *get_cpu_data(void)
   ^
   static 
>> kernel/trace/trace_hwlat.c:496:25: error: incompatible pointer types passing 'struct cpumask **' to parameter of type 'cpumask_var_t *' (aka 'struct cpumask (*)[1]') [-Werror,-Wincompatible-pointer-types]
           if (!alloc_cpumask_var(&this_cpumask, GFP_KERNEL))
                                  ^~~~~~~~~~~~~
   include/linux/cpumask.h:767:53: note: passing argument to parameter 'mask' here
   static inline bool alloc_cpumask_var(cpumask_var_t *mask, gfp_t flags)
                                                       ^
   1 warning and 1 error generated.


vim +496 kernel/trace/trace_hwlat.c

   480	
   481	/**
   482	 * start_per_cpu_kthread - Kick off the hardware latency sampling/detector kthreads
   483	 *
   484	 * This starts the kernel threads that will sit on potentially all cpus and
   485	 * sample the CPU timestamp counter (TSC or similar) and look for potential
   486	 * hardware latencies.
   487	 */
   488	static int start_per_cpu_kthreads(struct trace_array *tr)
   489	{
   490		struct cpumask *current_mask = &save_cpumask;
   491		struct cpumask *this_cpumask;
   492		struct task_struct *kthread;
   493		char comm[24];
   494		int cpu;
   495	
 > 496		if (!alloc_cpumask_var(&this_cpumask, GFP_KERNEL))
   497			return -ENOMEM;
   498	
   499		get_online_cpus();
   500		/*
   501		 * Run only on CPUs in which trace and hwlat are allowed to run.
   502		 */
   503		cpumask_and(current_mask, tr->tracing_cpumask, &hwlat_cpumask);
   504		/*
   505		 * And the CPU is online.
   506		 */
   507		cpumask_and(current_mask, cpu_online_mask, current_mask);
   508		put_online_cpus();
   509	
   510		for_each_online_cpu(cpu)
   511			per_cpu(hwlat_per_cpu_data, cpu).kthread = NULL;
   512	
   513		for_each_cpu(cpu, current_mask) {
   514			snprintf(comm, 24, "hwlatd/%d", cpu);
   515	
   516			kthread = kthread_create_on_cpu(kthread_fn, NULL, cpu, comm);
   517			if (IS_ERR(kthread)) {
   518				pr_err(BANNER "could not start sampling thread\n");
   519				stop_per_cpu_kthreads();
   520				return -ENOMEM;
   521			}
   522	
   523			per_cpu(hwlat_per_cpu_data, cpu).kthread = kthread;
   524			wake_up_process(kthread);
   525		}
   526	
   527		return 0;
   528	}
   529	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202104090700.NSMSdyAC-lkp%40intel.com.

--0F1p//8PRICkK4MW
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
uD0GH3Ujazp68weX4w0urT3+D1O7xSfQ3wEA

--0F1p//8PRICkK4MW--
