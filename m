Return-Path: <clang-built-linux+bncBDA5BKNJ6MIBBPWAUSCAMGQEDUIAJHA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3a.google.com (mail-io1-xd3a.google.com [IPv6:2607:f8b0:4864:20::d3a])
	by mail.lfdr.de (Postfix) with ESMTPS id A049B36D424
	for <lists+clang-built-linux@lfdr.de>; Wed, 28 Apr 2021 10:43:43 +0200 (CEST)
Received: by mail-io1-xd3a.google.com with SMTP id 5-20020a6b14050000b02903f01f27777esf23745108iou.18
        for <lists+clang-built-linux@lfdr.de>; Wed, 28 Apr 2021 01:43:43 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1619599422; cv=pass;
        d=google.com; s=arc-20160816;
        b=WcRcAqEs6GDr9emJraLaue6gAW4BCn4yzeOw4zuKESzbtSjssauHK7/6w6A8NOQKFw
         S7aUfoRq8y/b0c+JEbvEAqduDZbuz8fdM31Py3traBRhVVDrleCgp9AmhD9fohrl2Cdg
         0wibR6qg3LZBHfjp5qLwzudYBj0dTP8FDhzjS/qN4xx2fMlpxzQTsb5FimCpaDhJ1187
         WlUJqSFIHvQp32lx/ilp1sNTNj4dWBOeunBdQEZkvzIqldGX7kUcke5HLDgIgGsOsN7X
         /bMdrmtqIcDqsyUXQhlAWHOoKxsLY3/EdN4r4jgcBo5zLNUKaiDM6IuroqpuGudx+N+Q
         /03Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:organization:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=ZdgCLorMoxdilb4wjykyaqJ+3L1nZgbxa0q1qHQ6KVM=;
        b=EV6StpO9qgr2b8SXjVzIT0FiETcSSqOdYhJw9uyg3hS3YmGNMPn9VSGPqzjs9X/vpM
         Sgrhh8nXERhwiLHb39qCCRV/KMInF7sPg90p8WLvcD7T6/rTnsgQvCujkeYpzdYpITzd
         umsFQqRUP++heDEGH8qgHw0B5J2EqV9Yrs39nSY4UZbYra+h1kUxi7dzSYMKVRbWqQmf
         zTZsJL+Per59Uzc5kgXjcDRupU2hf4+4irbSqAmiSEN1t0EFOk3shn807sIzqIjoFtCq
         ACCNE16pLlYbmtFu++DUaOjLnH7xOzoJDyiNzgYpSOc+hwrOWt4o/gOiU6HLBNOtL7vE
         dh9A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of andriy.shevchenko@linux.intel.com designates 134.134.136.24 as permitted sender) smtp.mailfrom=andriy.shevchenko@linux.intel.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :organization:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ZdgCLorMoxdilb4wjykyaqJ+3L1nZgbxa0q1qHQ6KVM=;
        b=T1UoIFE9CqXWMFXHPnoB2L471w/V5e9WqMYHWUi8XPagdaL21gxe/lNeLdXfJVWOO4
         pz37E3gqTVmvORRICgAR+nMvzR4KOnyUniU+5PYRRShjy7yrSTDZTNRZcTyB27LLLPik
         YhSICi0axlll7MA/zCVtZ3XWL+xi9fhqgFUbNMa7+Di6q4B9W/O5kH5ZMn00u+Vi8V1D
         Nb1bJ225k+sgmsC61SdY3XZ+tT/cGf+iWvi03wK75RHd6PxRxyOQEo7iZUCmgRiOjtET
         vd/13PiIGKfBCOc6XO4YJbk6ZonSClO0Lj6fzWXRIPmlX2kSt6VdFiTIGWcvicwFaSEv
         ZlCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:references:mime-version:content-disposition
         :in-reply-to:organization:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ZdgCLorMoxdilb4wjykyaqJ+3L1nZgbxa0q1qHQ6KVM=;
        b=R41kdqTSTr1FU8qZNKXQwnZHZzqFYp45jp7vxWCkVpZf68zzg+e1r2m4D5K2Hfglpa
         bT6v6/lQNvNpseto4JdJG2pgZNMmQ+96iWTX0ahyu+h33U9+CeUsyuPnGKs8YNe9bei/
         6WVyL8gPilDecWRrhKcDi1LGymQdGfbRDkURQBfjugzVpoiaFMZN9BqmS7nodWMJk3fw
         fd1jOAUiUkeIIgO3oWBCQkOKXX3VCK33gwWbzAXqw3KZ45IBG9Rcv5QbBqrBr/Le+6mX
         aQpVcjRxP4C08+A/pWYEki1BAoFO4CNTvWrkX/0eQAQnrYsVQrht/ApZEnNn9pqhGL4p
         EOlg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530MvR13Di35hy4XiSQ6pTe7ZMqI2xhfjI/+K3TFurkhA4WwNzr2
	IFEvN9WfHc8W0cSYCY+HKSk=
X-Google-Smtp-Source: ABdhPJxPnTtvW6/oOKG2z5FeJVdcKdTUxT4aZA+uNq1OaVpuYhA30ey0Pwc+oKRJCWnhoNzaz7+Qjg==
X-Received: by 2002:a05:6e02:20ef:: with SMTP id q15mr22941888ilv.167.1619599422452;
        Wed, 28 Apr 2021 01:43:42 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6638:328c:: with SMTP id f12ls3371402jav.4.gmail; Wed,
 28 Apr 2021 01:43:42 -0700 (PDT)
X-Received: by 2002:a05:6638:691:: with SMTP id i17mr25828410jab.71.1619599422155;
        Wed, 28 Apr 2021 01:43:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619599422; cv=none;
        d=google.com; s=arc-20160816;
        b=x0oGpkFVSXPOx14rQPZE3WTpqQmqlVUj0Hqq8aRfdfNhEs/dfBo6wXu0XE3+EuXYVe
         YOMqU7jL9gxkjkvH85ZtkN2tCDYwob8tJVrOwLDjJ5gAy5SZpkKra/To2wgZoWx48/6/
         FncB2CLZlT+AJ4OAq3iMFtXqlSCYlPFOk5zZ57Kn9Gf8T5dx79Lkm1bMEZNy9Iztmrdd
         kcS7CQn0dwXEmZj7yLc6eRPF7aR6LbUE6VYOHFbqrcPFyumbGfl8oU6qZ8y0afSIO+7O
         nZ8sugeQ3f6KMhc3PLNKHWvXrW1vHAOSiu382EoX323ciQwFK6l/MWVC9ulukZglz2jK
         HQIg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=organization:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr;
        bh=pcqTYHIMxpmC9cf4/6YOoH3nFyTf6QjdVcZo6q5X7Ew=;
        b=QLSTvtBU9sru+tmij9VZy+NPiNwjOJedEPdsBlRNrUWBqX3GHcrSo9LNyUpmwhV0nM
         RgbpJVS0WNKhEDdgI6ZQxh0LuBZFr/HBV3okTUvB1+ZztUR5XrDgLZ1zwHTsWI3VuJ01
         /oLd1Arn0Yas9jlegS6L/K66OjG3KTrW390N4Je1Ao+TRNlLvpAovPLxsLHkku414Db7
         ORJcNvv4RQXKbFqfL6/yEVVTc8anxr2/CPjVpROHNNtG/HrQ06MFhhm/JhGHNr9w01WU
         kBwPugMWlEBc6/cOG0eVXe3nQ3BL6Lm99/wop/+KswWoqY7jIEtP+sGBEdqcbN5wFcFL
         +2HQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of andriy.shevchenko@linux.intel.com designates 134.134.136.24 as permitted sender) smtp.mailfrom=andriy.shevchenko@linux.intel.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga09.intel.com (mga09.intel.com. [134.134.136.24])
        by gmr-mx.google.com with ESMTPS id r15si1489909ill.3.2021.04.28.01.43.41
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 28 Apr 2021 01:43:41 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of andriy.shevchenko@linux.intel.com designates 134.134.136.24 as permitted sender) client-ip=134.134.136.24;
IronPort-SDR: l1GSyibARfQNIdixaHmmx6BFDtimK2mBKpn16zzs/1br5DufUmMB0WuSZH6g8obDxmK/ixkG/z
 FBS/eTeCirlg==
X-IronPort-AV: E=McAfee;i="6200,9189,9967"; a="196800762"
X-IronPort-AV: E=Sophos;i="5.82,257,1613462400"; 
   d="scan'208";a="196800762"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
  by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 28 Apr 2021 01:43:38 -0700
IronPort-SDR: sttpcSwQ4nJj1ugazyCYKIgI92nVSzcr0jm4AfSqUo9GfXaepdM9ve6UKQAJgFcUCW4+lBFx5D
 uh322Sqs4wLA==
X-IronPort-AV: E=Sophos;i="5.82,257,1613462400"; 
   d="scan'208";a="458076432"
Received: from smile.fi.intel.com (HELO smile) ([10.237.68.40])
  by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 28 Apr 2021 01:43:36 -0700
Received: from andy by smile with local (Exim 4.94)
	(envelope-from <andriy.shevchenko@linux.intel.com>)
	id 1lbfnB-007pmY-M5; Wed, 28 Apr 2021 11:43:33 +0300
Date: Wed, 28 Apr 2021 11:43:33 +0300
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: kernel test robot <lkp@intel.com>, Arnd Bergmann <arnd@arndb.de>,
	Nick Desaulniers <ndesaulniers@google.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org
Subject: Re: drivers/pinctrl/intel/pinctrl-intel.c:1663:14: warning: variable
 'dummy' set but not used
Message-ID: <YIkgNWRJ+9BpEtvb@smile.fi.intel.com>
References: <202104280827.lscZW8Xg-lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <202104280827.lscZW8Xg-lkp@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-Original-Sender: andriy.shevchenko@linux.intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: best guess record for domain of andriy.shevchenko@linux.intel.com
 designates 134.134.136.24 as permitted sender) smtp.mailfrom=andriy.shevchenko@linux.intel.com;
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

+Cc: Arnd and Nick

(Seems like a clang bug)

On Wed, Apr 28, 2021 at 08:10:34AM +0800, kernel test robot wrote:
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
> head:   e359bce39d9085ab24eaa0bb0778bb5f6894144a
> commit: 10c857f063fc63902160755a6e23fa594290c6d3 pinctrl: cherryview: Switch to use intel_pinctrl_get_soc_data()
> date:   8 months ago
> config: x86_64-randconfig-a005-20210426 (attached as .config)
> compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 87fc97169e7901dfe56ca0da0d92da0c02d2ef48)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install x86_64 cross compiling tool for clang build
>         # apt-get install binutils-x86-64-linux-gnu
>         # https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=10c857f063fc63902160755a6e23fa594290c6d3
>         git remote add linus https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
>         git fetch --no-tags linus master
>         git checkout 10c857f063fc63902160755a6e23fa594290c6d3
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross W=1 ARCH=x86_64 
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
> 
> All warnings (new ones prefixed by >>):
> 
> >> drivers/pinctrl/intel/pinctrl-intel.c:1663:14: warning: variable 'dummy' set but not used [-Wunused-but-set-variable]
>            const char *dummy;
>                        ^
>    1 warning generated.

Seems to me a bug in clang. The variable is used to check if the body of the
loop should be executed or not.

> vim +/dummy +1663 drivers/pinctrl/intel/pinctrl-intel.c
> 
> a0a5f7661e1c49 Chris Chiu      2019-04-15  1656  
> 7101e022523bfb Andy Shevchenko 2019-10-22  1657  static void intel_restore_hostown(struct intel_pinctrl *pctrl, unsigned int c,
> 7101e022523bfb Andy Shevchenko 2019-10-22  1658  				  void __iomem *base, unsigned int gpp, u32 saved)
> 7101e022523bfb Andy Shevchenko 2019-10-22  1659  {
> 7101e022523bfb Andy Shevchenko 2019-10-22  1660  	const struct intel_community *community = &pctrl->communities[c];
> 7101e022523bfb Andy Shevchenko 2019-10-22  1661  	const struct intel_padgroup *padgrp = &community->gpps[gpp];
> 7101e022523bfb Andy Shevchenko 2019-10-22  1662  	struct device *dev = pctrl->dev;
> d1bfd0229ec4de Andy Shevchenko 2020-06-10 @1663  	const char *dummy;
> d1bfd0229ec4de Andy Shevchenko 2020-06-10  1664  	u32 requested = 0;
> d1bfd0229ec4de Andy Shevchenko 2020-06-10  1665  	unsigned int i;
> 7101e022523bfb Andy Shevchenko 2019-10-22  1666  
> e5a4ab6a55e230 Andy Shevchenko 2020-04-13  1667  	if (padgrp->gpio_base == INTEL_GPIO_BASE_NOMAP)
> 7101e022523bfb Andy Shevchenko 2019-10-22  1668  		return;
> 7101e022523bfb Andy Shevchenko 2019-10-22  1669  
> d1bfd0229ec4de Andy Shevchenko 2020-06-10  1670  	for_each_requested_gpio_in_range(&pctrl->chip, i, padgrp->gpio_base, padgrp->size, dummy)
> d1bfd0229ec4de Andy Shevchenko 2020-06-10  1671  		requested |= BIT(i);
> d1bfd0229ec4de Andy Shevchenko 2020-06-10  1672  
> 942c5ea49ffbe2 Andy Shevchenko 2019-10-22  1673  	if (!intel_gpio_update_reg(base + gpp * 4, requested, saved))
> 7101e022523bfb Andy Shevchenko 2019-10-22  1674  		return;
> 7101e022523bfb Andy Shevchenko 2019-10-22  1675  
> 764cfe33517f7c Andy Shevchenko 2019-10-22  1676  	dev_dbg(dev, "restored hostown %u/%u %#08x\n", c, gpp, readl(base + gpp * 4));
> 7101e022523bfb Andy Shevchenko 2019-10-22  1677  }
> 7101e022523bfb Andy Shevchenko 2019-10-22  1678  
> 
> :::::: The code at line 1663 was first introduced by commit
> :::::: d1bfd0229ec4deb53e61f95c050b524152fd0d9e pinctrl: intel: Make use of for_each_requested_gpio_in_range()
> 
> :::::: TO: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
> :::::: CC: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
> 
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org



-- 
With Best Regards,
Andy Shevchenko


-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YIkgNWRJ%2B9BpEtvb%40smile.fi.intel.com.
