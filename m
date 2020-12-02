Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBK5LT77AKGQEXX4BOZQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43f.google.com (mail-pf1-x43f.google.com [IPv6:2607:f8b0:4864:20::43f])
	by mail.lfdr.de (Postfix) with ESMTPS id E9BEF2CC466
	for <lists+clang-built-linux@lfdr.de>; Wed,  2 Dec 2020 18:58:05 +0100 (CET)
Received: by mail-pf1-x43f.google.com with SMTP id e68sf1758403pfe.4
        for <lists+clang-built-linux@lfdr.de>; Wed, 02 Dec 2020 09:58:05 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606931884; cv=pass;
        d=google.com; s=arc-20160816;
        b=ooTJS7jXkFcoKd5IR7vULUdq/aXt8FA+bBJW5rnai8jKx2P6UIFVk21YK9sQr0l7Nd
         ph/IJAUioYMcR0KosqWpAfBgAEdXFeWnM8RZ+cnQVbHqx6pTJc5CAvJtcw1WL2Mn/RJy
         lsQ60tQRGztuyEfwE6zIMGYfjb/QktdVqI3AROWBSxl/9Jy1y6hCK2jd8NnVj3HsWVjD
         Ksp0Q/wGQb2Jan5lO7FxLXpaSBQetL7Fd28riWUusyRvvFa7RVF0ANVspUIXdrB6o2W/
         qtlAtF7ohs90o7imIhlnlEH0JrvKb2msdmVEH49NFF1lo9pt0HlRRjtHg4DDpBLra7dB
         Dc5Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=ca0nGx2Mkuxzh5CswPVlNUuNLnNOkIm8L5cmSvnu8mY=;
        b=C6t0rxj4AGq87dRgzHJa/WOLQWmVRXyKk0/D7h7yOFA/jhqTWaBdyGs900QSBq54T5
         x0k9KPMEz95Bc/WrJIpZytO/HcGaWC27vQoX1+a3Wt0A8yDedHtwjMAsfFq5B8rNq6Kh
         KtIL5hvkVhhhvgLQZgcgLUAkinOsSZA9FYOQpfrSipao0wIHqZbzc1oreMby4OquOb9U
         eEB9nF/ffPGkAb/zWo034Fm2EgCj+nWty8debc6p683LiFJP9BmCWflEKM95HdNT/B+p
         p6Vf0ttBYTchR+LEVLWu7jK6Lj4DkiB8mmOKsKsPt8CuneqB6UfI7St/ZWnw0jkf08qV
         zHBg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.126 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ca0nGx2Mkuxzh5CswPVlNUuNLnNOkIm8L5cmSvnu8mY=;
        b=c8Jvms1k6xX+yhEquQFEJlCmx5r9CG5KtgVPdK51F9MZJ6Gk5tEAUWy80nLdWYi732
         269dTNsSfb4igO7GxZIBUc2G9NBGDTvhO9WuomIlUT0XVayg8QN90jhBKcGL0HVUPll1
         wWtUG6qSjgFYukGGq3WCZ+P6BZQzmzzsKN9uT/8u4PQla5A+qzhyogXRz2pXx+jBhE9a
         eFEXQOC8L4RtswYCWuPgDor4bZf/76ra2FxG12BdpQoqBPa3oFyP+Y+c3T/9X6yvO+mi
         XLnfi3S327dhXFTkI21gHAqMQVOhbL/ZWiBhMBZs/kKf6xblotLNwLimPaHFJfMpN5mH
         ATjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:references:mime-version:content-disposition
         :in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ca0nGx2Mkuxzh5CswPVlNUuNLnNOkIm8L5cmSvnu8mY=;
        b=WIWRQdkSDJXDZQtekDnoZV1VhGfcuJl6DOKtn626jrY4zNcKN3xrYFgP0Tx6ZiThll
         QsLuA0n2d9KQpVCdV7Fj/NOhu+G+uNfo6mGQ0DScelJVKVUk4xr6knM5EiXaaMff/bc0
         +gux2OrriSE+FQ7yPdFLExq9t3J7SwGNbutv9tbQ73XILp0jj9LKtbvgFhPS7IXEvU+T
         SAdGdKPSDI5futyzlJijmLZuiSsHsO6ehM3WuyxA7wtmAhjKucI0WHrEDOSXm4+R1eVp
         fD7xG1I7/f3uD6cwf1W2e99eMHoxkJQDqOz1IUcWfOadVlLEqjIly+twf+enSB3HVz/s
         Bouw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530A2Fr+rVvmLNL3LKPm0vE1lgTSjn1nSaq/zUn1S+hepDcsBx0v
	+K7lAFDc5M05oUcHF4aglis=
X-Google-Smtp-Source: ABdhPJylTnXUQBTwsOjLO4pFhBGYQ7xqNVotW4rs5klp411pC1K39Co4qsxh1nDINbFVJ6zCm2QEBw==
X-Received: by 2002:a17:902:8a87:b029:d7:cf56:ce1f with SMTP id p7-20020a1709028a87b02900d7cf56ce1fmr3564659plo.22.1606931883879;
        Wed, 02 Dec 2020 09:58:03 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:b187:: with SMTP id s7ls1296770plr.3.gmail; Wed, 02
 Dec 2020 09:58:03 -0800 (PST)
X-Received: by 2002:a17:90b:204:: with SMTP id fy4mr950107pjb.57.1606931882997;
        Wed, 02 Dec 2020 09:58:02 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606931882; cv=none;
        d=google.com; s=arc-20160816;
        b=SzArTocEHZ6gQ7NtomgNcn+3GMGfe3EvEE9MWpx+h9iue2uO3fiGe0clyrcz0ezkks
         YmsOk1nKdP2VA+kxf7N5i10p/Mp1Ymtn4gte5jD4WoM3oMEZAWB6r7YiyYu9IjDyEkXE
         9jdlBbsU/UCwDoevP9FnyM+IBDUqrlh41xXVJowzzIrGNz9ZIufY4sIvKmP3Mc9bJNp8
         xketnY2T2VmiDkui+sViGAx3Z3JIhn4k+pUU1TQSnJ52InzSUvj3IYt6nNCKFJ6C+mW8
         ZJbTT6iI3Gr2VQBjDoLDbl1D1vVlhZ67/94X+ypfPDWXYTRDjFqzhVOFcFGdcgOTCNpU
         lKEw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:ironport-sdr:ironport-sdr;
        bh=DeFNGY1+pw1GlXGFfLDsSPc7QoqbcYKPRUu0XMukItY=;
        b=Hmrmi9Q1D63y9XVWXJLcqCLIxti9llwtCUTqVhhPywvk49O0sihLnOsu6ucw0SfgWT
         Ff3yKnP25yJim9WJ+ubwTLYEl330QzeRGx0/Y0WcvIEnmChptVCs4ksz/NVPhI/GWAcL
         MSp5P6O/VFl+AItURDQN0TN2TYgLJxIBb7jFz2YlEScddAoa8RDRuAjwZGtbXmVNSE+s
         a07sU69WMW/K1RgYid0j8U54Djehi4SUgt2SLyLXKeFWXwNfpfkxmv+v3PC7n6f6JEKb
         RL3cyRUf0lIRkKInby3+F67srC02Ygp/UDQc9Mrs8Nyt4iPyOMpBslVSq1GWBB0xQquv
         G8Tg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.126 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga18.intel.com (mga18.intel.com. [134.134.136.126])
        by gmr-mx.google.com with ESMTPS id w6si59360pjr.2.2020.12.02.09.58.02
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 02 Dec 2020 09:58:02 -0800 (PST)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.126 as permitted sender) client-ip=134.134.136.126;
IronPort-SDR: 4Fuj0AVx8CpsdAOHUaRR9nKFwn9IA8CB1hDJC3kXCjNkWd9gmMpodtw/aaEG88bYXOH4tBMGpL
 1YafSPZc9e9w==
X-IronPort-AV: E=McAfee;i="6000,8403,9823"; a="160829528"
X-IronPort-AV: E=Sophos;i="5.78,387,1599548400"; 
   d="gz'50?scan'50,208,50";a="160829528"
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
  by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 02 Dec 2020 09:58:01 -0800
IronPort-SDR: C5o1mY28oFVSRz+2eefOYOb2O0JcS+WMQcmale0tQMMeW7W/syjc5qk0Br72tf22O3fsRTit4t
 26pSocQ+YTKA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,387,1599548400"; 
   d="gz'50?scan'50,208,50";a="335639858"
Received: from lkp-server01.sh.intel.com (HELO 54133fc185c3) ([10.239.97.150])
  by orsmga006.jf.intel.com with ESMTP; 02 Dec 2020 09:58:00 -0800
Received: from kbuild by 54133fc185c3 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1kkWO7-0000GE-AP; Wed, 02 Dec 2020 17:57:59 +0000
Date: Thu, 3 Dec 2020 01:57:01 +0800
From: kernel test robot <lkp@intel.com>
To: Matti Vaittinen <matti.vaittinen@fi.rohmeurope.com>,
	Matti Vaittinen <mazziesaccount@gmail.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com
Subject: Re: [RFC PATCH 2/2] power: supply: add sw-gauge for SOC estimation
 and CC correction
Message-ID: <202012030114.vnwPzpJF-lkp@intel.com>
References: <70ae1f9da94074934767426ca0a1bef758037199.1606384967.git.matti.vaittinen@fi.rohmeurope.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="ibTvN161/egqYuK8"
Content-Disposition: inline
In-Reply-To: <70ae1f9da94074934767426ca0a1bef758037199.1606384967.git.matti.vaittinen@fi.rohmeurope.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 134.134.136.126 as permitted
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


--ibTvN161/egqYuK8
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi Matti,

[FYI, it's a private test report for your RFC patch.]
[auto build test ERROR on 09162bc32c880a791c6c0668ce0745cf7958f576]

url:    https://github.com/0day-ci/linux/commits/Matti-Vaittinen/power-supply-Add-some-fuel-gauge-logic/20201126-181818
base:    09162bc32c880a791c6c0668ce0745cf7958f576
config: riscv-randconfig-r024-20201202 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project 2671fccf0381769276ca8246ec0499adcb9b0355)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install riscv cross compiling tool for clang build
        # apt-get install binutils-riscv64-linux-gnu
        # https://github.com/0day-ci/linux/commit/0bd072e1651838fc0897ddcfefbd852f2e30c471
        git remote add linux-review https://github.com/0day-ci/linux
        git fetch --no-tags linux-review Matti-Vaittinen/power-supply-Add-some-fuel-gauge-logic/20201126-181818
        git checkout 0bd072e1651838fc0897ddcfefbd852f2e30c471
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=riscv 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All error/warnings (new ones prefixed by >>):

>> drivers/power/supply/power_supply_swgauge.c:666:6: warning: no previous prototype for function 'stop_gauge_thread' [-Wmissing-prototypes]
   void stop_gauge_thread(struct task_struct *k)
        ^
   drivers/power/supply/power_supply_swgauge.c:666:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void stop_gauge_thread(struct task_struct *k)
   ^
   static 
>> drivers/power/supply/power_supply_swgauge.c:757:6: warning: variable 'psy' is uninitialized when used here [-Wuninitialized]
           if (psy->sw_gauge) {
               ^~~
   drivers/power/supply/power_supply_swgauge.c:694:26: note: initialize the variable 'psy' to silence this warning
           struct power_supply *psy;
                                   ^
                                    = NULL
>> drivers/power/supply/power_supply_swgauge.c:807:20: error: expected parameter declarator
   MODULE_DESCRIPTION("generic fuel-gauge on coulomb counter");
                      ^
>> drivers/power/supply/power_supply_swgauge.c:807:20: error: expected ')'
   drivers/power/supply/power_supply_swgauge.c:807:19: note: to match this '('
   MODULE_DESCRIPTION("generic fuel-gauge on coulomb counter");
                     ^
>> drivers/power/supply/power_supply_swgauge.c:807:1: warning: declaration specifier missing, defaulting to 'int'
   MODULE_DESCRIPTION("generic fuel-gauge on coulomb counter");
   ^
   int
>> drivers/power/supply/power_supply_swgauge.c:807:19: error: this function declaration is not a prototype [-Werror,-Wstrict-prototypes]
   MODULE_DESCRIPTION("generic fuel-gauge on coulomb counter");
                     ^
                                                             void
   drivers/power/supply/power_supply_swgauge.c:808:16: error: expected parameter declarator
   MODULE_LICENSE("GPL");
                  ^
   drivers/power/supply/power_supply_swgauge.c:808:16: error: expected ')'
   drivers/power/supply/power_supply_swgauge.c:808:15: note: to match this '('
   MODULE_LICENSE("GPL");
                 ^
   drivers/power/supply/power_supply_swgauge.c:808:1: warning: declaration specifier missing, defaulting to 'int'
   MODULE_LICENSE("GPL");
   ^
   int
   drivers/power/supply/power_supply_swgauge.c:808:15: error: this function declaration is not a prototype [-Werror,-Wstrict-prototypes]
   MODULE_LICENSE("GPL");
                 ^
                       void
   4 warnings and 6 errors generated.

vim +807 drivers/power/supply/power_supply_swgauge.c

   658	
   659	/**
   660	 * I think this is unnecessary. If someone registers SW gauge to the system
   661	 * then we can probably leave this running even if the gauge was temporarily
   662	 * removed. So let's consider removing this and thus simplifying the design.
   663	 *
   664	 * Perhaps even always launch the thread if SW-gauge is configured in?
   665	 */
 > 666	void stop_gauge_thread(struct task_struct *k)
   667	{
   668		kthread_stop(k);
   669	}
   670	
   671	static int check_compulsory_ops(struct sw_gauge_ops *ops)
   672	{
   673		return (ops->get_uah_cc && ops->get_temp && ops->update_cc_uah);
   674	}
   675	
   676	static int sw_gauge_set_ops(struct sw_gauge *sw, struct sw_gauge_ops *ops)
   677	{
   678		int ret;
   679	
   680		ret = check_compulsory_ops(ops);
   681		if (ret)
   682			return ret;
   683	
   684		sw->ops = *ops;
   685	
   686		return 0;
   687	}
   688	
   689	struct sw_gauge *__must_check psy_register_sw_gauge(struct device *parent,
   690							    struct sw_gauge_psy *psycfg,
   691							    struct sw_gauge_ops *ops,
   692							    struct sw_gauge_desc *desc)
   693	{
   694		struct power_supply *psy;
   695		struct power_supply_desc pd;
   696		int ret;
   697		struct sw_gauge *new;
   698	
   699		if (!desc->poll_interval)
   700			return ERR_PTR(-EINVAL);
   701	
   702		if (!parent)
   703			return ERR_PTR(-EINVAL);
   704	
   705		new = kzalloc(sizeof(struct sw_gauge), GFP_KERNEL);
   706		if (!new)
   707			return ERR_PTR(-ENOMEM);
   708	
   709		init_waitqueue_head(&new->wq);
   710	
   711		ret = sw_gauge_set_ops(new, ops);
   712		if (ret)
   713			goto free_out;
   714	
   715		new->desc = desc;
   716	
   717		pd = *psycfg->pdesc;
   718		new->orig_get_property = pd.get_property;
   719		spin_lock_init(&new->lock);
   720		pd.get_property = sw_gauge_get_property;
   721	
   722		/* Do we need power_supply_register_ws? */
   723		/*
   724		 * Here we have a race. psy->swgauge is not set yet. We should
   725		 * set it in power_supply_register
   726		 */
   727		new->psy = power_supply_register(parent, &pd, psycfg->pcfg);
   728		if (IS_ERR(new->psy)) {
   729			ret = PTR_ERR(new->psy);
   730			goto free_out;
   731		}
   732		new->psy->sw_gauge = new;
   733		new->name = kstrdup(desc->name, GFP_KERNEL);
   734		if (!new->name) {
   735			ret = -ENOMEM;
   736			goto psy_dereg_out;
   737		}
   738	
   739		/* Maybe this should be optional */
   740		ret = power_supply_get_battery_info(new->psy, &new->info);
   741		if (ret && new->ops.get_soc_by_ocv) {
   742			pr_err("No OCV => SoC conversion\n");
   743			goto name_out;
   744		}
   745		if (!ret)
   746			new->batinfo_got = true;
   747	
   748		if (desc->designed_cap) {
   749			new->designed_cap = desc->designed_cap;
   750		} else if (ret || !new->info.charge_full_design_uah) {
   751			pr_err("Unknown battery capacity\n");
   752			goto name_out;
   753		} else {
   754			new->desc->designed_cap = new->info.charge_full_design_uah;
   755		}
   756		mutex_lock(&sw_gauge_lock);
 > 757		if (psy->sw_gauge) {
   758			ret = -EBUSY;
   759			goto err_unlock;
   760		};
   761		new->psy = psy;
   762		psy->sw_gauge = new;
   763		list_add(&sw_gauges, &new->node);
   764		mutex_unlock(&sw_gauge_lock);
   765		ret = start_gauge_thread(&k);
   766		if (ret) {
   767			pr_err("Failed to start fuel-gauge thread\n");
   768			goto name_out;
   769		}
   770	return new;
   771	
   772	err_unlock:
   773		mutex_unlock(&sw_gauge_lock);
   774	name_out:
   775		if (new->batinfo_got)
   776			power_supply_put_battery_info(new->psy, &new->info);
   777		kfree(new->name);
   778	psy_dereg_out:
   779		power_supply_unregister(new->psy);
   780	free_out:
   781		kfree(new);
   782	
   783		return ERR_PTR(ret);
   784	}
   785	EXPORT_SYMBOL_GPL(psy_register_sw_gauge);
   786	
   787	void psy_remove_sw_gauge(struct sw_gauge *sw)
   788	{
   789		struct power_supply *psy = sw->psy;
   790	
   791		if (sw->batinfo_got)
   792			power_supply_put_battery_info(sw->psy, &sw->info);
   793		power_supply_unregister(sw->psy);
   794		kfree(sw->name);
   795		mutex_lock(&sw_gauge_lock);
   796		if (sw)
   797			list_del(&sw->node);
   798		mutex_unlock(&sw_gauge_lock);
   799	
   800		psy->sw_gauge = NULL;
   801	
   802		wait_event(sw->wq, !gauge_reserved(sw));
   803		kfree(sw);
   804	}
   805	EXPORT_SYMBOL_GPL(psy_remove_sw_gauge);
   806	
 > 807	MODULE_DESCRIPTION("generic fuel-gauge on coulomb counter");

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202012030114.vnwPzpJF-lkp%40intel.com.

--ibTvN161/egqYuK8
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--ibTvN161/egqYuK8--
