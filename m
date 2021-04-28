Return-Path: <clang-built-linux+bncBDA5BKNJ6MIBBP6CUSCAMGQEBCNUWIA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc38.google.com (mail-oo1-xc38.google.com [IPv6:2607:f8b0:4864:20::c38])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F42636D439
	for <lists+clang-built-linux@lfdr.de>; Wed, 28 Apr 2021 10:48:00 +0200 (CEST)
Received: by mail-oo1-xc38.google.com with SMTP id p12-20020a4adc0c0000b02901d5037841b4sf17221042oov.23
        for <lists+clang-built-linux@lfdr.de>; Wed, 28 Apr 2021 01:48:00 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1619599679; cv=pass;
        d=google.com; s=arc-20160816;
        b=m9lvQ8/vchdIqRF7+gNV0W0XlT55HT+jgaExU5pmvLobMyLUZ8iKxvao0gFfCw+Ox8
         C7tI9smzNrys3qy8eIpbKA6r+oWo2/SVA4lPneHrawPcech4cnFyp749kywaYq7/n3kD
         rGEyEEt+TMH0if3NPY3eIydcNubvvLqRdh7/JPpZqxJcqdVPgElZ97RbmOXP21lgVPhY
         uRvp1Mm9ygOzhGtcQmSh6ph+lxyO7cRl6n99SvTbID+8YaJFV8D6goCr1OXL7Kwibh3N
         zpN6BRWCxP82QhzdHHHHIuzWyPR7P3e0pS8zin3dlG2IkzcRiqonmJwxAXgSv9O9rEwQ
         Sw3g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:organization:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=TFqrjlnFbht3Dd002c1LTPDyf2On5RnXjJsoO6+1Kvk=;
        b=YeJ/SPmSo8eY6PGAQ5PBv94Xd2eup7KhrQnJ9IlCaxU3KexAdwUtPTzeK/xqsAFktV
         hUzG+WJNV/gekXqBzsTLXC5GrC5zW56/w8q4xSzSe7p/p8drFxPWJEs3/SWchI9+l4Cb
         JA40U/tQh2j4Nr4UCbZx+P+nkFMt1IcWfMzaK18iOSSXvNlKMadPpNaEoZRZ68A2W0ad
         m31rzmlqUJ9qjyYTSz20wrC4LHjS9OFHpSNHqQ+U39nwywfVPCLcgqEcrDabX26Jedvj
         Duf4Jnc8FvgUctgKQtdPLiCcQn+kMcMEATvWssPUXoXFCVmMruYZ4WTd0QiyxrimdVam
         pHwA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of andriy.shevchenko@linux.intel.com designates 192.55.52.151 as permitted sender) smtp.mailfrom=andriy.shevchenko@linux.intel.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :organization:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TFqrjlnFbht3Dd002c1LTPDyf2On5RnXjJsoO6+1Kvk=;
        b=Fwbx9PfOL5dKJ3l5bazep3fba7W3aM5qgAzvx5SwHTjWBFUbD5h3tM+BcrqtlWjWH4
         V0rdzAApsaeTpPHDmX3ly64Hv+38wugafgmG1ep7xujUca50tzQE4FYeevBuNaOB+zmB
         uu6XtqcHJ2GTh93mhej+NBXlWEaXl2BbbXKmvOmrqkcJADCdmY/A2g9Flt8RCJb5af0N
         imzI1zW/ByJ6YPOKeLpjYK1mIhrdeKVBKJdVWM7txtIBld5xr5OXUH43xZunIK+RpNT3
         Kohbzf92uY4wJ6tDqFdoA5jFJfwJp4qufZ7P7G5GQHaI0QJDPpCFJ2vIDR49535HSaFj
         SavA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:references:mime-version:content-disposition
         :in-reply-to:organization:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TFqrjlnFbht3Dd002c1LTPDyf2On5RnXjJsoO6+1Kvk=;
        b=CI9ckUJR42AdJHWYMc9h3o/wOIWvyQCFQI5UfXc3CS6OQiToKVz8MMnxDBqE6f0Z4o
         Ek0RibeE8Q0Lnw230O6OGAHPMNNP8icsV1yqUWg+TleDu2nfDAPmHUOTANWCNXMLGKEm
         a2aSQToJt3FtZGPozYkefbqnGQ+23Rzl+ohrIK6eHSBhdXO0RWCtVB+ppyS0w7B9wxrG
         0AGYXi0pG4o58f0w0fTiT/kqbON2h0BJ50N5pQ3yXySoNsyAlkkX44vy24jSSQLcDGCn
         chpKu+OToIj/A5cU4iFyU2UkxgW1osv4k3Q1plp/JSacwEEsp68YGePKbePnxjH/tw4j
         Fh0Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532Zo/tG6PJJPWbImx5/i0qXG/XwzsYSH1cB3Nmpryq2bXlBoiRL
	J1tqYXv4lenyKQG7Sta359s=
X-Google-Smtp-Source: ABdhPJxuLZgV2OblCovLQ5RIEHw6YD1zk+C3I9Nt8qeZq9M7CPdHliH98lBTPsycygl5JBldI1whUA==
X-Received: by 2002:a05:6808:bcb:: with SMTP id o11mr18952399oik.141.1619599679296;
        Wed, 28 Apr 2021 01:47:59 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:3488:: with SMTP id c8ls2752826otu.10.gmail; Wed,
 28 Apr 2021 01:47:58 -0700 (PDT)
X-Received: by 2002:a9d:648c:: with SMTP id g12mr23259477otl.299.1619599678884;
        Wed, 28 Apr 2021 01:47:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619599678; cv=none;
        d=google.com; s=arc-20160816;
        b=aRnTdEnEoCxjSzRoY/U44DdUStZGCh/PPrYGoGoZqwo/Sr3X6YmNJr6VmRIY6nh9Ut
         jg9FvSyOjAwrW8UNhmlpalOO+XaWZrAdfjtWbK0kPEBKnVKA3W2sGLGVjhgPYqvCWqQX
         IzTq8hUTTG4gBL45Ef2sUqxTEJ7Qr24igBhtnzbiyc//bhXG+TtyAdTmi5WXpvbvQBXu
         p+kKaE7AyE31UHODLmnemxVWDLv0cLKa5CXd3mGsGbDNfqvPLXtCINp4EcFwcxfcFEZ5
         ccP+T9sLZl98tlzCJGiUIvoKi4EufAFH/usFDYGox3Sd5ycxLLcImogc3G1jAXSzF7LQ
         q0uQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=organization:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr;
        bh=ZYn9Q9w2mJfmkMWDA9qpPDZULni/ivmGhYxi3TJiBqk=;
        b=O/Qv/I9fdqAuSc5YDiL1yi5Ui0ynS8tOkVD3bfkB/4nrIpEhRCLdzS8EcMiyyrN2A0
         ZKLQK8grKPAbid3qdh1XXg32cVGTNf/LaU7WM9pY/jsmGLJoPlpyJXKIbPF8khWave8U
         odr47gdCYWYFDCL796Enco2IcVLMGcV7NFdZw0zq9Pcy0zUCoyvNA5L6YAk6/+CYgHT+
         YMZz6s2lIkxY1mM96YmBQXO4eYefXJAQt/nrXMLnuNhKoH9DueoC6DLlwOUxq2tiDqT4
         o59luB8pvTboaKo5bkM0D/59aWBaRRa5KXbnj4jMLUOfUyIRK5pGdneCbPF30rlAjfRm
         /K/Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of andriy.shevchenko@linux.intel.com designates 192.55.52.151 as permitted sender) smtp.mailfrom=andriy.shevchenko@linux.intel.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga17.intel.com (mga17.intel.com. [192.55.52.151])
        by gmr-mx.google.com with ESMTPS id u14si2244776otg.0.2021.04.28.01.47.58
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 28 Apr 2021 01:47:58 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of andriy.shevchenko@linux.intel.com designates 192.55.52.151 as permitted sender) client-ip=192.55.52.151;
IronPort-SDR: VchLFZnFHL8jgc6Gp2PGRWMg7BLlr3lLxRrAxfDWhezNV/kk9BWXbzwJqNNxWk1mmbLNeVe3AO
 o1GDEKcU3Fvw==
X-IronPort-AV: E=McAfee;i="6200,9189,9967"; a="176805580"
X-IronPort-AV: E=Sophos;i="5.82,257,1613462400"; 
   d="scan'208";a="176805580"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
  by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 28 Apr 2021 01:47:54 -0700
IronPort-SDR: ELEUZ/GcZm6EcWmRcpcBqlw7aEdLL3WyTjyJljecR8h93EzPjzpetHRrXHEm6T8j0CsaaZ1yuw
 PFm5INJ4sHOQ==
X-IronPort-AV: E=Sophos;i="5.82,257,1613462400"; 
   d="scan'208";a="403607720"
Received: from smile.fi.intel.com (HELO smile) ([10.237.68.40])
  by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 28 Apr 2021 01:47:53 -0700
Received: from andy by smile with local (Exim 4.94)
	(envelope-from <andriy.shevchenko@linux.intel.com>)
	id 1lbfrK-007ppO-Ax; Wed, 28 Apr 2021 11:47:50 +0300
Date: Wed, 28 Apr 2021 11:47:50 +0300
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: kernel test robot <lkp@intel.com>, Arnd Bergmann <arnd@arndb.de>,
	Nick Desaulniers <ndesaulniers@google.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org
Subject: Re: drivers/pinctrl/intel/pinctrl-intel.c:1663:14: warning: variable
 'dummy' set but not used
Message-ID: <YIkhNjYTBgFpgcia@smile.fi.intel.com>
References: <202104280827.lscZW8Xg-lkp@intel.com>
 <YIkgNWRJ+9BpEtvb@smile.fi.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <YIkgNWRJ+9BpEtvb@smile.fi.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-Original-Sender: andriy.shevchenko@linux.intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: best guess record for domain of andriy.shevchenko@linux.intel.com
 designates 192.55.52.151 as permitted sender) smtp.mailfrom=andriy.shevchenko@linux.intel.com;
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

On Wed, Apr 28, 2021 at 11:43:33AM +0300, Andy Shevchenko wrote:
> +Cc: Arnd and Nick
> 
> (Seems like a clang bug)
> 
> On Wed, Apr 28, 2021 at 08:10:34AM +0800, kernel test robot wrote:
> > tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
> > head:   e359bce39d9085ab24eaa0bb0778bb5f6894144a
> > commit: 10c857f063fc63902160755a6e23fa594290c6d3 pinctrl: cherryview: Switch to use intel_pinctrl_get_soc_data()
> > date:   8 months ago
> > config: x86_64-randconfig-a005-20210426 (attached as .config)
> > compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 87fc97169e7901dfe56ca0da0d92da0c02d2ef48)
> > reproduce (this is a W=1 build):
> >         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
> >         chmod +x ~/bin/make.cross
> >         # install x86_64 cross compiling tool for clang build
> >         # apt-get install binutils-x86-64-linux-gnu
> >         # https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=10c857f063fc63902160755a6e23fa594290c6d3
> >         git remote add linus https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
> >         git fetch --no-tags linus master
> >         git checkout 10c857f063fc63902160755a6e23fa594290c6d3
> >         # save the attached .config to linux build tree
> >         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross W=1 ARCH=x86_64 
> > 
> > If you fix the issue, kindly add following tag as appropriate
> > Reported-by: kernel test robot <lkp@intel.com>
> > 
> > All warnings (new ones prefixed by >>):
> > 
> > >> drivers/pinctrl/intel/pinctrl-intel.c:1663:14: warning: variable 'dummy' set but not used [-Wunused-but-set-variable]
> >            const char *dummy;
> >                        ^
> >    1 warning generated.
> 
> Seems to me a bug in clang. The variable is used to check if the body of the
> loop should be executed or not.

The only way of make this variable being unused is to avoid the loop being
executed at all. This may be the case iff (mind to f:s) the supplied size
parameter is 0, but how on earth clang can prove it (esp. taking into
consideration that it's not true in real life)?!


> > vim +/dummy +1663 drivers/pinctrl/intel/pinctrl-intel.c
> > 
> > a0a5f7661e1c49 Chris Chiu      2019-04-15  1656  
> > 7101e022523bfb Andy Shevchenko 2019-10-22  1657  static void intel_restore_hostown(struct intel_pinctrl *pctrl, unsigned int c,
> > 7101e022523bfb Andy Shevchenko 2019-10-22  1658  				  void __iomem *base, unsigned int gpp, u32 saved)
> > 7101e022523bfb Andy Shevchenko 2019-10-22  1659  {
> > 7101e022523bfb Andy Shevchenko 2019-10-22  1660  	const struct intel_community *community = &pctrl->communities[c];
> > 7101e022523bfb Andy Shevchenko 2019-10-22  1661  	const struct intel_padgroup *padgrp = &community->gpps[gpp];
> > 7101e022523bfb Andy Shevchenko 2019-10-22  1662  	struct device *dev = pctrl->dev;
> > d1bfd0229ec4de Andy Shevchenko 2020-06-10 @1663  	const char *dummy;
> > d1bfd0229ec4de Andy Shevchenko 2020-06-10  1664  	u32 requested = 0;
> > d1bfd0229ec4de Andy Shevchenko 2020-06-10  1665  	unsigned int i;
> > 7101e022523bfb Andy Shevchenko 2019-10-22  1666  
> > e5a4ab6a55e230 Andy Shevchenko 2020-04-13  1667  	if (padgrp->gpio_base == INTEL_GPIO_BASE_NOMAP)
> > 7101e022523bfb Andy Shevchenko 2019-10-22  1668  		return;
> > 7101e022523bfb Andy Shevchenko 2019-10-22  1669  
> > d1bfd0229ec4de Andy Shevchenko 2020-06-10  1670  	for_each_requested_gpio_in_range(&pctrl->chip, i, padgrp->gpio_base, padgrp->size, dummy)
> > d1bfd0229ec4de Andy Shevchenko 2020-06-10  1671  		requested |= BIT(i);
> > d1bfd0229ec4de Andy Shevchenko 2020-06-10  1672  
> > 942c5ea49ffbe2 Andy Shevchenko 2019-10-22  1673  	if (!intel_gpio_update_reg(base + gpp * 4, requested, saved))
> > 7101e022523bfb Andy Shevchenko 2019-10-22  1674  		return;
> > 7101e022523bfb Andy Shevchenko 2019-10-22  1675  
> > 764cfe33517f7c Andy Shevchenko 2019-10-22  1676  	dev_dbg(dev, "restored hostown %u/%u %#08x\n", c, gpp, readl(base + gpp * 4));
> > 7101e022523bfb Andy Shevchenko 2019-10-22  1677  }
> > 7101e022523bfb Andy Shevchenko 2019-10-22  1678  
> > 
> > :::::: The code at line 1663 was first introduced by commit
> > :::::: d1bfd0229ec4deb53e61f95c050b524152fd0d9e pinctrl: intel: Make use of for_each_requested_gpio_in_range()
> > 
> > :::::: TO: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
> > :::::: CC: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
> > 
> > ---
> > 0-DAY CI Kernel Test Service, Intel Corporation
> > https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
> 
> 
> 
> -- 
> With Best Regards,
> Andy Shevchenko
> 
> 

-- 
With Best Regards,
Andy Shevchenko


-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YIkhNjYTBgFpgcia%40smile.fi.intel.com.
