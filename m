Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBHVLUCBAMGQEZJCZELY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93c.google.com (mail-ua1-x93c.google.com [IPv6:2607:f8b0:4864:20::93c])
	by mail.lfdr.de (Postfix) with ESMTPS id E6590333287
	for <lists+clang-built-linux@lfdr.de>; Wed, 10 Mar 2021 01:41:03 +0100 (CET)
Received: by mail-ua1-x93c.google.com with SMTP id u6sf2561117uaq.3
        for <lists+clang-built-linux@lfdr.de>; Tue, 09 Mar 2021 16:41:03 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1615336863; cv=pass;
        d=google.com; s=arc-20160816;
        b=KZLZx++/2jFs/BOANYid676Z50spXxpF/gf3Ak73JzVkOAoYS5gzvxR59WOnQ6DpoC
         wINEzCYeK7GPhJQolKXaxOaf3MyQ37xDvYKWseLBLqAZDLuwCP3Lb+mQY7mz5JmW61+Y
         NHlz9S6EHtxeE6UyD8P3OZApqvG4oHw+zFdsLm+tJmU/eoljjLY61GQaV77NP2TGoxwv
         L/BC0qXT0uHE+VUcugkkyD85mQnpUthEHz9X+JfyxzQaryu522DHEuQ97fuKequrjDyY
         yaw1HN2U11mv9Yh/U/VLhy9pE8uHRSjW40opIE2VE8vZ2ndW2AK7HYoVw0tinXKcvsnt
         aJVw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=Nx0oNFt5AgA4duc4EVAV08FRbKsbumR0PiVkBrpfNFM=;
        b=yM1vn9LChryJ8Oza6u/TJYzDMMjEuY1mW5VRLbG5WYTXuTT7MypiACKywsn5j2loqZ
         DnTlhTplV7Aq/u50HjwCr1XF863QzYfJoiyGk4lauXD+ozt7cOC1537ybNG5GEVrCg+V
         CibDsNby3GL+3zp0Sp1uTmM8DMweay4eRqfZxjx5TZB9KW5DPownVABnMrxu8zsL9TgF
         4FMHoT6OFF219683JtW1mEDOVt+1zm0KSe4RA4Y165vN4KsccuDpGH24EyuJvblqz65c
         Mzw+e/qSHOVnr1kdvtHs2EODkpjyVNrYAaI5hZGE0aQHiriobo1D9rdtdfiL4h8yR7a6
         oHCQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.93 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Nx0oNFt5AgA4duc4EVAV08FRbKsbumR0PiVkBrpfNFM=;
        b=PTTAXFeMcHgRYjMc3lssf35BDv3+6QBafpgQ1uCpjxZw8sVOUkGUqoO0ek6M/T7dBP
         IkIslkpsbHNsA80Fuoe16SAIw8W6xxmX3hPjWiarl0AiN/NvdWlF2xg9W1nhbZC7GYKD
         PxLHZwD8zxev1px9BF8fEJWQXsQhenQEmsDecX1OZD8GfoJylf11yGgIIOm56y11BRAe
         D8EM8jWj+SK3mp3zwKSpgPMyyxnnO2Wd75nYI5KG6PubzDsGsIl9j4dBwW/6cawGqJo1
         Pdv00SxkRM7xuiOaTFZRN3yaQZkPmoZdPHQavmgb7pBwe56TgoreI6kW7mVkBQf6FpMh
         pQxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:references:mime-version:content-disposition
         :in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Nx0oNFt5AgA4duc4EVAV08FRbKsbumR0PiVkBrpfNFM=;
        b=dclhzKykmoozTHsx8yHpJJMTZC0SNARkcqDpKkMgtBBxveUY5m6oZvFOkDcpQlbf8J
         turX4n5DXpTyEfRNsCO6a0c/H1KUlptE0CtfXc4EVxyIRKnnraVPoAOzX7KGreJHKNnN
         HxcHrwzDB+JNG38h/jlYsxjcFFaKSKkH90p6ebdsuYIKP76Zt2P/3FdJXhbxBot37sl2
         tp763jUKPuu/dfwmViIpezHlZ6eLPG2Ap2wYNA/DY4FVuUS9xah2SL+OFTNc1+ujmGZ6
         HKFE7yHZ3eR0BAvboSFY6OP4C9e/ZkJhKjxKHeE33a15KeQJv+I7NHK1Dp2JbNG30BUb
         1oyQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531vHq1N9UP4cvKV2/AIF85W4z8fI/83R0aKBpqh4WpRQGjpnS3H
	sW1yIWzOfJYBqbDeMTrcvWg=
X-Google-Smtp-Source: ABdhPJy7WrtIGntQfWGT878XsEayy+6dCzh5RWj/xP8lkjldgF6zGgCrS7b+Il7MUUtc17/WoFIRoQ==
X-Received: by 2002:a67:8a48:: with SMTP id m69mr170385vsd.41.1615336862717;
        Tue, 09 Mar 2021 16:41:02 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6102:2404:: with SMTP id j4ls38436vsi.2.gmail; Tue, 09
 Mar 2021 16:41:02 -0800 (PST)
X-Received: by 2002:a67:6c45:: with SMTP id h66mr259214vsc.12.1615336862091;
        Tue, 09 Mar 2021 16:41:02 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1615336862; cv=none;
        d=google.com; s=arc-20160816;
        b=s1kj7q3YkmkWWt5fShJUfrMAa/A9Vdw85oUwZYwJWFUoq7nZ2gUcMEN3addF+n1OVU
         aueYSBvSEHUXuEHUbdeeD3KNeLRF7lWXzhiDCGiwEgo1zXGoI/6KTHkVX1hIi6QzbMTo
         hg5NG6vpdIAMCe6kWQ8XyO/vouHWmsMB+BpuovDINJr2PSZHx0UNPviSFidRXCbSWW/w
         n511/lCyI/P6t4wnomS566hwpDP8NPp7iQ6FwUe7Dk7UmOJ6yGqx1feQxLuncK1Ou8Ph
         HOM/U2BQYVRGjXqmPP7HhQMJBJoi59H+kZP1YJgGya5H0IFjh3m/BBAXpsT4vJclfmaH
         3mVw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:ironport-sdr:ironport-sdr;
        bh=d4gbqKRFGKDpCT4puAv+1M1w3lUFKfRGFDNT7PE9sjw=;
        b=v5zfmVFsS+3UqV8yUkf5EDW01kKHTsL2+JDR0oIE4yyqlRI/3I6HE/8qmTX5fFPFSh
         mvbDD8u/HdgMYrHinrtHczYWanpX+sDVIhOt1lrGaxA7DfxWBsGkiyKYTaATYrMR2kr1
         QeRpl29TcsKOT8P83Eibw8kvtqShmPEC4TyImNoIf+VMBvZniZNCg52RkN5ICWVocc4i
         JLkJj/MNUYgtweYSnZuCSrQV+p5/0pbC/NAaXFImdsSw97bRJV9gPp4BhVpGkbEol+JQ
         o4wfKg9afu7HchUhDyppZSmr1KQEv8rSPsIdnuuVdZcL5EtYyu8S9E1gG14RkK/cM21T
         rKUg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.93 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga11.intel.com (mga11.intel.com. [192.55.52.93])
        by gmr-mx.google.com with ESMTPS id r5si1019248vka.3.2021.03.09.16.41.01
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 09 Mar 2021 16:41:02 -0800 (PST)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.93 as permitted sender) client-ip=192.55.52.93;
IronPort-SDR: JFnkRHu2oJPEa6Di4WFw+u2xOMHTdMPwGbpx/pZ8zhtkmQ0lhPJlkmh2hV9SBHK20ZREOmAQZH
 JUiIvJ0TmcNA==
X-IronPort-AV: E=McAfee;i="6000,8403,9917"; a="184994069"
X-IronPort-AV: E=Sophos;i="5.81,236,1610438400"; 
   d="gz'50?scan'50,208,50";a="184994069"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
  by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 09 Mar 2021 16:41:00 -0800
IronPort-SDR: 6/wkPr5I2fVmiC0IMixZ/bosfFmaGYYkmBw03tDTxcB66AXLoRXIzIJ+8ivW0nh2QsuRUvfzrY
 2eoW557qX2qA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,236,1610438400"; 
   d="gz'50?scan'50,208,50";a="409958971"
Received: from lkp-server01.sh.intel.com (HELO 3e992a48ca98) ([10.239.97.150])
  by orsmga008.jf.intel.com with ESMTP; 09 Mar 2021 16:40:57 -0800
Received: from kbuild by 3e992a48ca98 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1lJmuG-0001uq-Fu; Wed, 10 Mar 2021 00:40:56 +0000
Date: Wed, 10 Mar 2021 08:40:51 +0800
From: kernel test robot <lkp@intel.com>
To: Daniel Lezcano <daniel.lezcano@linaro.org>, rafael@kernel.org
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org,
	lukasz.luba@arm.com
Subject: Re: [PATCH v2 5/5] powercap/drivers/dtpm: Scale the power with the
 load
Message-ID: <202103100817.luONaipp-lkp@intel.com>
References: <20210309224244.27225-5-daniel.lezcano@linaro.org>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="5mCyUwZo2JvN/JJP"
Content-Disposition: inline
In-Reply-To: <20210309224244.27225-5-daniel.lezcano@linaro.org>
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


--5mCyUwZo2JvN/JJP
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi Daniel,

I love your patch! Perhaps something to improve:

[auto build test WARNING on pm/linux-next]
[also build test WARNING on linux/master linus/master v5.12-rc2 next-20210309]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch]

url:    https://github.com/0day-ci/linux/commits/Daniel-Lezcano/powercap-drivers-dtpm-Encapsulate-even-more-the-code/20210310-064505
base:   https://git.kernel.org/pub/scm/linux/kernel/git/rafael/linux-pm.git linux-next
config: powerpc-randconfig-r005-20210309 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project cd9a69289c7825d54450cb6829fef2c8e0f1963a)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install powerpc cross compiling tool for clang build
        # apt-get install binutils-powerpc-linux-gnu
        # https://github.com/0day-ci/linux/commit/195420841883f38897ba1e10ff70641dab0191ba
        git remote add linux-review https://github.com/0day-ci/linux
        git fetch --no-tags linux-review Daniel-Lezcano/powercap-drivers-dtpm-Encapsulate-even-more-the-code/20210310-064505
        git checkout 195420841883f38897ba1e10ff70641dab0191ba
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=powerpc 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

>> drivers/powercap/dtpm_cpu.c:76:32: warning: variable 'cpu' is uninitialized when used here [-Wuninitialized]
           max = arch_scale_cpu_capacity(cpu);
                                         ^~~
   drivers/powercap/dtpm_cpu.c:74:9: note: initialize the variable 'cpu' to silence this warning
           int cpu;
                  ^
                   = 0
   1 warning generated.


vim +/cpu +76 drivers/powercap/dtpm_cpu.c

    70	
    71	static u64 scale_pd_power_uw(struct cpumask *pd_mask, u64 power)
    72	{
    73		unsigned long max, sum_util = 0;
    74		int cpu;
    75	
  > 76		max = arch_scale_cpu_capacity(cpu);
    77	
    78		for_each_cpu_and(cpu, pd_mask, cpu_online_mask)
    79			sum_util += sched_cpu_util(cpu, max);
    80	
    81		return (power * ((sum_util << 10) / max)) >> 10;
    82	}
    83	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202103100817.luONaipp-lkp%40intel.com.

--5mCyUwZo2JvN/JJP
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--5mCyUwZo2JvN/JJP--
