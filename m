Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBX5D7KDAMGQEDDGLVGI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23c.google.com (mail-oi1-x23c.google.com [IPv6:2607:f8b0:4864:20::23c])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BC933B9B48
	for <lists+clang-built-linux@lfdr.de>; Fri,  2 Jul 2021 06:11:12 +0200 (CEST)
Received: by mail-oi1-x23c.google.com with SMTP id o15-20020a0568080f8fb029023dd6814af4sf4598831oiw.9
        for <lists+clang-built-linux@lfdr.de>; Thu, 01 Jul 2021 21:11:12 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1625199071; cv=pass;
        d=google.com; s=arc-20160816;
        b=eETGUP+xu4xE5A/pyQ+PBfVED4yxHuYmz6bUbp2BdtOM4ecyKPjkoSGJXYbnsWLM1c
         +VI+9/NGKr0i9NlInQqyTDVCv2cOGtxn1fObLjIXYBw7gWGcaYoar9nDlDXa24BzbmV5
         1ie49lqqE4qK+HQqqYqwEz19ZutqU+zn0eRl95HKF3GS04XiHawZX9u14x5SbVEFBVbV
         mAloN3bdhC4Ut5p+w0c0II4f6vB95ws6KhK/DJqrcSnHRG2G9LHwQKsKqC80AcfY46Do
         5dglo/Q9xcEHPKQQ+H4LJZXg0VehhV+GlagBanTtaFRPkMUBP4/usTa2Itr+mOU4OH7T
         YADg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=/xwzEe2W/OBbhq/s54s32Zmoko/jaTR/ePVNRId8TEk=;
        b=gWAf1ZdLOzp+foVz4wrZhFPXcKeuL8kXmGUcl8tGVO97qrniai6RB5x5DiwKC9/5s6
         kIRwnqKJgYvB6xA9ekUhwwKdqWeCTauHCkWUJWGhc1Ikbngj2c7iiEl8ZWeNio/KfVDH
         VDS88ToFM1pcvpZNaR/ajLac1K/xl2Bc7MwLumXmONPA/Vnbtv5XIU0+UnHgE4nCVJIQ
         Jm4xUeN3gr+7cus26e3wwOZWv4Dx5awKxnN70w2HVwBMCctAbkFMGdIxSfaXf+UJCHW0
         kl0wiVLEGSFAVY/HUl1D4scfLEQl+NgowQPB8UZ6ZoYyEQqHXUtQBmuhs/ND/JSGGAzp
         CUXA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.100 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=/xwzEe2W/OBbhq/s54s32Zmoko/jaTR/ePVNRId8TEk=;
        b=PLItZ4ULK4Z2xr73mGOllkDxApCsWL7re71ghk3ZV7BULvz8ppPBF4raWb+SZkzMwd
         CJVDpNE8JFQtd6XY0/MZZ3IvPg0X6AolS+3gvWHG/nLGhVI4vFwtBF1aA6BEoiPzBxx8
         rHG1c8sQjDoMFy6UrhS2JromOu3IsfNTwIqNdSytfjPiGDVHkbbBYR5fots7kEppLYVs
         kBdx7BzJ+GOCdTmQDGAhnhMQ0I+tHBldT6bbiTQJW+6huFOg0CqowD+vquVuxx6i0T9B
         oUnEFiOpJeA2t6KFWjxWCRrqfnZaank3eorFvWFHAWN40aJ5Shu+zdINSt9cQaz/xlLp
         Tstw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=/xwzEe2W/OBbhq/s54s32Zmoko/jaTR/ePVNRId8TEk=;
        b=PCA0wJQnOp3tij+AR5KuJARgHYaAaw9qjLtJGKwxrf7GCYFjsG7OjyR3TDZzvPAOiw
         Xi8XDDLEkihKGc3ZN2fN9xSb3C0m82RXsMhBA75+aiuKz5iPYq4XjalJs71//1p72fvB
         1oWcTTvJLI/Z4tmn56Gt0eToXGAENlSR7VHhVoT+0lw1U9hEIvbJoD6THdoi8gMc5eBY
         s0YrpLIcAzu3N5yWxbydlciv0jM3BUIJhHpwJAcgB1dvPiluiPtHxiLfXAXTtyPBFqiN
         W51jw0nx9+qzQpW5TAe4mKQS7AEwDrRZS3FVOqQE0HntapfTLvvbEpgPtuWAx8tsnHUA
         L5yw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532FWmIW1Y5+gJ+25+Ox2EtD6Mavifm3IJzIyBpXymS18BV9c/ND
	ecY5aqsfwX9kzQa/mZl4fCE=
X-Google-Smtp-Source: ABdhPJx90qSyh3LKRQwGbh4CqhxkO3D05QeTb6AjAO2njIm48ulV/Y2kxp2LrihT+MK/8bDy7J9fJg==
X-Received: by 2002:a9d:57cd:: with SMTP id q13mr2834001oti.201.1625199071527;
        Thu, 01 Jul 2021 21:11:11 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6808:bd6:: with SMTP id o22ls3089123oik.1.gmail; Thu, 01
 Jul 2021 21:11:11 -0700 (PDT)
X-Received: by 2002:a05:6808:910:: with SMTP id w16mr2275323oih.53.1625199070927;
        Thu, 01 Jul 2021 21:11:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1625199070; cv=none;
        d=google.com; s=arc-20160816;
        b=Z2/aNw2N0ggpYsunWWbFmibTThAn0fpZijss8AHprupvQ8iq7dLLna61Vt+S7hH5e1
         agrxwvDj4qzsyPlQ9MRDOcQzObqclyhR2xYX5E3K9RhBWC5R0WjBvlfa0HssECMbbXDb
         DdjGZkDwtbUP9LsPsvSNp7fNdQTHDq2ajB6hz9yY2IMDDYjQUb5DFmdiQf7LstZsG3qS
         LKv+AS8T9uUPHHfVDDZJEGbiTUysY0W0Cq716+mrhjrDlZQYPwVEnLnRW1ngODiJFHtI
         sWHv87vGn90j1Q9mF+0UbkLXHl1Wjg+7kise1NhhgthWgEvjEBMyDPqtvXsvYSOs/cbf
         0rVQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=GGugCU+yPvO82w3+/NX4SnrRUQ44cr9GxrI7xneW68Q=;
        b=P5fx50qMIosYMJdtU4TumRjoAmS0cgD2F/mRzv9tABTl8rLfnc/P7PDndNaGYuWooQ
         Tm46Za6OYNRQBYg8NmV7+mJDouVv1XJlJ0U6RSZRnFlAK1vp1j+ZKh/BbeBoOKjHht/A
         rJ4u3sDcHsrwlUWw6HxcifSMPHPKv3hjLBVgVz4ybcOC6g/o1HtRsZVMJzMOBRL8jpRS
         iFVYXy+mf1ogMWHbfENpSjAx9kT3OWqQlYOtmXKfg38XGCTiK0IAOnWWT/2mpqnJPrsI
         nu37BA2RUFgEUUAFy4LmVs/zCxgHmNB0k79+qww+1sr2n5NXXN6DFjZCdD7Q7YfyUdZj
         oa8w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.100 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga07.intel.com (mga07.intel.com. [134.134.136.100])
        by gmr-mx.google.com with ESMTPS id w23si174712oti.4.2021.07.01.21.11.10
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 01 Jul 2021 21:11:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.100 as permitted sender) client-ip=134.134.136.100;
X-IronPort-AV: E=McAfee;i="6200,9189,10032"; a="272524112"
X-IronPort-AV: E=Sophos;i="5.83,316,1616482800"; 
   d="gz'50?scan'50,208,50";a="272524112"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
  by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 01 Jul 2021 21:11:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,316,1616482800"; 
   d="gz'50?scan'50,208,50";a="626614603"
Received: from lkp-server01.sh.intel.com (HELO 4aae0cb4f5b5) ([10.239.97.150])
  by orsmga005.jf.intel.com with ESMTP; 01 Jul 2021 21:11:07 -0700
Received: from kbuild by 4aae0cb4f5b5 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1lzAW9-000Asg-QR; Fri, 02 Jul 2021 04:11:05 +0000
Date: Fri, 2 Jul 2021 12:10:50 +0800
From: kernel test robot <lkp@intel.com>
To: Marcelo Tosatti <mtosatti@redhat.com>, linux-kernel@vger.kernel.org
Cc: clang-built-linux@googlegroups.com, kbuild-all@lists.01.org,
	Christoph Lameter <cl@linux-foundation.org>,
	Thomas Gleixner <tglx@linutronix.de>,
	Frederic Weisbecker <frederic@kernel.org>,
	Juri Lelli <juri.lelli@redhat.com>, Nitesh Lal <nilal@redhat.com>,
	Marcelo Tosatti <mtosatti@redhat.com>
Subject: Re: [patch 5/5] mm: vmstat_refresh: avoid queueing work item if cpu
 stats are clean
Message-ID: <202107021244.3QcUqkoz-lkp@intel.com>
References: <20210701210458.413105321@fuller.cnet>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="vtzGhvizbBRQ85DL"
Content-Disposition: inline
In-Reply-To: <20210701210458.413105321@fuller.cnet>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 134.134.136.100 as permitted
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


--vtzGhvizbBRQ85DL
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi Marcelo,

Thank you for the patch! Yet something to improve:

[auto build test ERROR on tip/sched/core]
[also build test ERROR on tip/master v5.13]
[cannot apply to hnaz-linux-mm/master linus/master tip/core/entry next-20210701]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch]

url:    https://github.com/0day-ci/linux/commits/Marcelo-Tosatti/optionally-sync-per-CPU-vmstats-counter-on-return-to-userspace/20210702-050826
base:   https://git.kernel.org/pub/scm/linux/kernel/git/tip/tip.git 031e3bd8986fffe31e1ddbf5264cccfe30c9abd7
config: riscv-randconfig-r013-20210630 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 9eb613b2de3163686b1a4bd1160f15ac56a4b083)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install riscv cross compiling tool for clang build
        # apt-get install binutils-riscv64-linux-gnu
        # https://github.com/0day-ci/linux/commit/e9eaf0981b74e6c29c7691ffb25b6d6613632f4f
        git remote add linux-review https://github.com/0day-ci/linux
        git fetch --no-tags linux-review Marcelo-Tosatti/optionally-sync-per-CPU-vmstats-counter-on-return-to-userspace/20210702-050826
        git checkout e9eaf0981b74e6c29c7691ffb25b6d6613632f4f
        # save the attached .config to linux build tree
        mkdir build_dir
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross O=build_dir ARCH=riscv SHELL=/bin/bash

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

>> mm/vmstat.c:1909:11: error: no member named 'expire' in 'struct per_cpu_pageset'
                   if (!p->expire)
                        ~  ^
   1 error generated.

Kconfig warnings: (for reference only)
   WARNING: unmet direct dependencies detected for LOCKDEP
   Depends on DEBUG_KERNEL && LOCK_DEBUGGING_SUPPORT && (FRAME_POINTER || MIPS || PPC || S390 || MICROBLAZE || ARM || ARC || X86)
   Selected by
   - DEBUG_LOCK_ALLOC && DEBUG_KERNEL && LOCK_DEBUGGING_SUPPORT
   WARNING: unmet direct dependencies detected for ERRATA_SIFIVE
   Depends on RISCV_ERRATA_ALTERNATIVE
   Selected by
   - SOC_SIFIVE


vim +1909 mm/vmstat.c

  1896	
  1897	#ifdef CONFIG_PROC_FS
  1898	static bool need_drain_remote_zones(int cpu)
  1899	{
  1900		struct zone *zone;
  1901	
  1902		for_each_populated_zone(zone) {
  1903			struct per_cpu_pageset *p;
  1904	
  1905			p = per_cpu_ptr(zone->pageset, cpu);
  1906	
  1907			if (!p->pcp.count)
  1908				continue;
> 1909			if (!p->expire)
  1910				continue;
  1911			if (zone_to_nid(zone) == cpu_to_node(cpu))
  1912				continue;
  1913	
  1914			return true;
  1915		}
  1916	
  1917		return false;
  1918	}
  1919	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202107021244.3QcUqkoz-lkp%40intel.com.

--vtzGhvizbBRQ85DL
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
ASwKpoBobAEA

--vtzGhvizbBRQ85DL--
