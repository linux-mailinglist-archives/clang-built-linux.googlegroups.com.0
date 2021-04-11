Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBVEJZSBQMGQECGLUOAQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3d.google.com (mail-oo1-xc3d.google.com [IPv6:2607:f8b0:4864:20::c3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 9756435B5A5
	for <lists+clang-built-linux@lfdr.de>; Sun, 11 Apr 2021 16:16:54 +0200 (CEST)
Received: by mail-oo1-xc3d.google.com with SMTP id m9sf3365444oon.20
        for <lists+clang-built-linux@lfdr.de>; Sun, 11 Apr 2021 07:16:54 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1618150613; cv=pass;
        d=google.com; s=arc-20160816;
        b=d6wBCLD5Gum68GQMPpDRLEjJpwwBu6L7Txt1Ui21YfgmkKjOwFFBmspYV6GuX5vMTD
         DaqPv9D5S45FwMuOl1H4M74oBkSQFmQl+kIlKDpu4tP2+zbPvlMP/L95V+fFHiC/gTej
         WiEAGTzc4usRuzmbpKyXrEUZYOilLC1GfdfYqSmREWjR4fHqyV96Q37Gig6VP0ip3HMd
         iuL9BlEXBx1qzL+2J70ivhUmeX0jTnhb6uxglwPwYo1cq2Syx4S/uQ67YMgM1sSQf0oQ
         HY6emobvyNX2YxT/aVX6J51VLF8opuyxrD1S0SeVKiAoPNqfFR/nPjgO9VSALcyIwS+R
         29ZA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=jU0IqmDln6F2zmfOxp5ZivQyJm1Dt2fckHUngx8qdOA=;
        b=Ehc5fa/DzHH/LW8FGZ8ouKma0HmbPhPZ8qKDUlpj6PEl1dOomW/8APYfZPU+T+M1fI
         H01O7Ccn8xKLlLGyys08LH4YbSQbcCWARtYUiy6G0x/ghT7q9EcjFVpC9YG+Evm6k9l8
         h2tl+mA9swsia+wiQc9IZXUC4IawJ9d1AG0v/pnGyguphVpkNofalZWy+0IM4ok60hbO
         cd/nJH3fTGuNqFzy32clNoMibOV5zV9kCaJwTFG7GCfPhed+8WB3WJoXiInblZ/agINV
         CKi4nfASrC94YTn4wN+cmTI8O5H5vKZ1X8yxozeHmEnrZRlNP4xYeqICaQ0US4qoZyrd
         di8A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.31 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=jU0IqmDln6F2zmfOxp5ZivQyJm1Dt2fckHUngx8qdOA=;
        b=KGtUuvvyTBLDxriNgjLqWmGV4FMhgHbkibbfoO1V8YcAzoATl7VuJgFpjXqPm9SiVf
         9LbLLy1+jgj4qLFiw8gGnkGZAKsKEEh5QOLbG/DBdmI/ac8FHsFqYhKql4UpRfn9MEA7
         rLayjUjlBBcu+1lTj+7e8L69Esf2MiyUsfqf7OdCP8SszoJQewxbowByOWdhzg/wBEKo
         SBy0YphJ0UWB8LxpV3BIHlJT6xMZW/iGWUrFMIeSzsZcfk6e2+vboRWBvLCDpw4Br03h
         oq7zIcphbasfz9uP1eeJ7Kb5TgfjuVmPyRGDQSUbYKdbmrSW/SIr1NWTG3aiSW3PibHg
         bvHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:references:mime-version:content-disposition
         :in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=jU0IqmDln6F2zmfOxp5ZivQyJm1Dt2fckHUngx8qdOA=;
        b=Z8ZvjjqYb8c1PhaPf9ziAYguPnhMeLu2VT5B45bkCBM099ualT+7IHoWT7r7mljnVm
         6lDSQW3v4kOHysWI9jAnFpIkLnUzVzVuPg0USyZVs5S6zlp/7o9XuJyLZpC2AemjGSnp
         t3RNrZCvNzD34JC84y/iZgeiSDtkyeWJJS8tDNa7MfWx9frg4JuEPtlbjVs7c5JLiUs2
         eJu5/PSzizSzyXmGX8tDmYPcFC3kEp0MDpqR8iXsO9tAhitojKdAu6dhWhvWyR+jpyqe
         qL808XdpIniRgoN23auka/65QRCAkrh8NPeQmg2jq9JxxgvwqLjUUE20CXZ8new13ggM
         kd5Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531cXJ8ZPbDYW4tkOWZHbSCq/R0DxgxLMf81gU6BbWeP7VleCvKo
	Z5RfYclV705gIs54ykI1aCM=
X-Google-Smtp-Source: ABdhPJxdRS7tUHeqgg0xPmBWKDTKnoI52ebVeoUkjcGaf7CeUoHgOXtW79Q8Bgkp69ri0fXxsdT0cg==
X-Received: by 2002:a9d:748a:: with SMTP id t10mr20418825otk.198.1618150613066;
        Sun, 11 Apr 2021 07:16:53 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:5551:: with SMTP id h17ls3377698oti.1.gmail; Sun, 11 Apr
 2021 07:16:52 -0700 (PDT)
X-Received: by 2002:a05:6830:12d5:: with SMTP id a21mr20094708otq.34.1618150612532;
        Sun, 11 Apr 2021 07:16:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618150612; cv=none;
        d=google.com; s=arc-20160816;
        b=c8V3MH3cpMwkhuR0gmNV2tNaJvRfuo/EECD8hfw2OjPr2afW6N+Arr2/Hv+eguKdA5
         L1fw5MK7uPaV/ZkcqCJzE/TvvS9j6eDdjobyQkGscQsy7JbYaG4cVziScnUhVD/oHzYp
         5YTjZx9oOnef2+dQP5MCo78rCfPZ92gjnwGXVUYUa9ea35iBZ3JYiXX8VI3vY4ulCXXc
         xYpvmYbbnh6QBe5C5mzPgdzm3KYOuj/GE8Q4dWeK38GwXbbxfA/7Q9C/zqoAdNWPnFHO
         He5DWn2u56GAZzqkQiEq/tJcfZb6B8AQF2r9xkY6dzL46Fp3HrUevEbK0Mv4BoDyr6XF
         ytZg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:ironport-sdr:ironport-sdr;
        bh=5yyK/bAE2tsUPUhW7XNBzUtdS9U+ULxHn6JejWsIqGs=;
        b=bAgeeMmROTWUG5QZE17CDIaZO0ewv6nIGTA+RKiRvI3YHLzzIDM8MZIfiv2x9KAvOA
         Y/AOZACXVug+XdsHDdwZkeZWvgJisKgeH3eMUExuZw9ylgeoxnqA8wLsCtnqFNSkRqfH
         Y+KfTWF9en2qFfuXQx122bX0/2OBRbKyvg4/7SIkrPiNAznhSkk4oyjfJztY8jpncdpj
         7QEEuzR0B+ScD0NDIHoRBuwBk3JCxfuYjRK7HYs8d685FHYAAnPzm/M20ZyRexmfHTQR
         0u0HSbytnZgEBbQN+0En5EN+MtRD3MYY4okZ5ZdVGm5qjLRUNDNr0RUoewMpKuOme25H
         1Qow==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.31 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga06.intel.com (mga06.intel.com. [134.134.136.31])
        by gmr-mx.google.com with ESMTPS id a4si410411oiw.5.2021.04.11.07.16.52
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 11 Apr 2021 07:16:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.31 as permitted sender) client-ip=134.134.136.31;
IronPort-SDR: m4sM7FWRAg2k8dbI32XpA1eTMAvqabDsA0jh7kpq8cmTN3DygVmdokJrmW73lHUjMOUErMevNB
 3TkOQdJLfSpg==
X-IronPort-AV: E=McAfee;i="6000,8403,9951"; a="255360098"
X-IronPort-AV: E=Sophos;i="5.82,214,1613462400"; 
   d="gz'50?scan'50,208,50";a="255360098"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
  by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 11 Apr 2021 07:16:50 -0700
IronPort-SDR: Gk54+IuGybGzvH49pyAatqHeosEpZH2De7Mr7HChCsYIx3C2IYSvE6eWIerR+gQAyTJxxeRjHz
 ywSoquO/0MHw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,214,1613462400"; 
   d="gz'50?scan'50,208,50";a="417008380"
Received: from lkp-server01.sh.intel.com (HELO 69d8fcc516b7) ([10.239.97.150])
  by fmsmga008.fm.intel.com with ESMTP; 11 Apr 2021 07:16:47 -0700
Received: from kbuild by 69d8fcc516b7 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1lVatK-000J1G-Dz; Sun, 11 Apr 2021 14:16:46 +0000
Date: Sun, 11 Apr 2021 22:15:45 +0800
From: kernel test robot <lkp@intel.com>
To: Tomas Winkler <tomas.winkler@intel.com>,
	Rajneesh Bhardwaj <irenic.rajneesh@gmail.com>,
	David E Box <david.e.box@intel.com>,
	Hans de Goede <hdegoede@redhat.com>,
	Mark Gross <mgross@linux.intel.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	platform-driver-x86@vger.kernel.org, linux-kernel@vger.kernel.org,
	Tamar Mashiah <tamar.mashiah@intel.com>,
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
	Tomas Winkler <tomas.winkler@intel.com>
Subject: Re: [PATCH v5] platform/x86: intel_pmc_core: export platform global
 reset bits via etr3 sysfs file
Message-ID: <202104112247.q3ceXFmO-lkp@intel.com>
References: <20210411094344.2973757-1-tomas.winkler@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="M9NhX3UHpAaciwkO"
Content-Disposition: inline
In-Reply-To: <20210411094344.2973757-1-tomas.winkler@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 134.134.136.31 as permitted
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


--M9NhX3UHpAaciwkO
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi Tomas,

Thank you for the patch! Perhaps something to improve:

[auto build test WARNING on linus/master]
[also build test WARNING on v5.12-rc6 next-20210409]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch]

url:    https://github.com/0day-ci/linux/commits/Tomas-Winkler/platform-x86-intel_pmc_core-export-platform-global-reset-bits-via-etr3-sysfs-file/20210411-174433
base:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git 52e44129fba5cfc4e351fdb5e45849afc74d9a53
config: x86_64-randconfig-a013-20210411 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 9829f5e6b1bca9b61efc629770d28bb9014dec45)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install x86_64 cross compiling tool for clang build
        # apt-get install binutils-x86-64-linux-gnu
        # https://github.com/0day-ci/linux/commit/b966c4184fd486407516000bf3151906318d29f6
        git remote add linux-review https://github.com/0day-ci/linux
        git fetch --no-tags linux-review Tomas-Winkler/platform-x86-intel_pmc_core-export-platform-global-reset-bits-via-etr3-sysfs-file/20210411-174433
        git checkout b966c4184fd486407516000bf3151906318d29f6
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

>> drivers/platform/x86/intel_pmc_core.c:656:41: warning: '&' within '|' [-Wbitwise-op-parentheses]
           return reg & ETR3_CF9LOCK ? attr->mode & SYSFS_PREALLOC | 0444 : attr->mode;
                                       ~~~~~~~~~~~^~~~~~~~~~~~~~~~ ~
   drivers/platform/x86/intel_pmc_core.c:656:41: note: place parentheses around the '&' expression to silence this warning
           return reg & ETR3_CF9LOCK ? attr->mode & SYSFS_PREALLOC | 0444 : attr->mode;
                                       ~~~~~~~~~~~^~~~~~~~~~~~~~~~
   1 warning generated.


vim +656 drivers/platform/x86/intel_pmc_core.c

   608	
   609	static int set_etr3(struct pmc_dev *pmcdev)
   610	{
   611		const struct pmc_reg_map *map = pmcdev->map;
   612		u32 reg;
   613		int err;
   614	
   615		if (!map->etr3_offset)
   616			return -EOPNOTSUPP;
   617	
   618		mutex_lock(&pmcdev->lock);
   619	
   620		/* check if CF9 is locked */
   621		reg = pmc_core_reg_read(pmcdev, map->etr3_offset);
   622		if (reg & ETR3_CF9LOCK) {
   623			err = -EACCES;
   624			goto out_unlock;
   625		}
   626	
   627		/* write CF9 global reset bit */
   628		reg |= ETR3_CF9GR;
   629		pmc_core_reg_write(pmcdev, map->etr3_offset, reg);
   630	
   631		reg = pmc_core_reg_read(pmcdev, map->etr3_offset);
   632		if (!(reg & ETR3_CF9GR)) {
   633			err = -EIO;
   634			goto out_unlock;
   635		}
   636	
   637		err = 0;
   638	
   639	out_unlock:
   640		mutex_unlock(&pmcdev->lock);
   641		return err;
   642	}
   643	static umode_t etr3_is_visible(struct kobject *kobj,
   644					struct attribute *attr,
   645					int idx)
   646	{
   647		struct device *dev = container_of(kobj, struct device, kobj);
   648		struct pmc_dev *pmcdev = dev_get_drvdata(dev);
   649		const struct pmc_reg_map *map = pmcdev->map;
   650		u32 reg;
   651	
   652		mutex_lock(&pmcdev->lock);
   653		reg = pmc_core_reg_read(pmcdev, map->etr3_offset);
   654		mutex_unlock(&pmcdev->lock);
   655	
 > 656		return reg & ETR3_CF9LOCK ? attr->mode & SYSFS_PREALLOC | 0444 : attr->mode;
   657	}
   658	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202104112247.q3ceXFmO-lkp%40intel.com.

--M9NhX3UHpAaciwkO
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
Q1FCCAIA

--M9NhX3UHpAaciwkO--
