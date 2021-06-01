Return-Path: <clang-built-linux+bncBC4LXIPCY4NRB35N26CQMGQEKBNEPTI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe40.google.com (mail-vs1-xe40.google.com [IPv6:2607:f8b0:4864:20::e40])
	by mail.lfdr.de (Postfix) with ESMTPS id E87DF396D85
	for <lists+clang-built-linux@lfdr.de>; Tue,  1 Jun 2021 08:42:56 +0200 (CEST)
Received: by mail-vs1-xe40.google.com with SMTP id s4-20020a67f4c40000b02902525f25c060sf966137vsn.13
        for <lists+clang-built-linux@lfdr.de>; Mon, 31 May 2021 23:42:56 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1622529775; cv=pass;
        d=google.com; s=arc-20160816;
        b=le1pvrXZRDx9wIJgx27jYXOK3l7cO/AVLd5U2ObjLNEH9ud6pKA4OMjYXiyW4A5QPn
         hc6p76UMimOMZ8befBpIAEiiOAWHtyGRGoSY53bb2yrBZuIqMhP/1DXQ1W324IStkk6v
         ezAUN531txulmc2TztOgntzA+LwljxvJ7drmPdUBMWdHyyNdBxbWoX2zDC0qlY0gTST4
         hB/1OpS77KsvHOgN6F0yge+tAgKsfBFp/U1fYgfXk1pS/xVDuBFClE5rdt7f2fEKZGtj
         VbrmMgtB9/Ff9IL//39u9hnA1kZhHAqM/Dyo28Tv85d+WidfBly3spcAwbgYJkYLWPXE
         Nyag==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=5cno1mAvIPdhO2pHw2pRDf9sfTifOTRzuZuXCitQ0gk=;
        b=Y0UVRnfkzqXtathsWDR0H+jUyKjynKsFDRCv2+67BR/pti7JJZWM6k6U0HBbyLo+O8
         9SUEMq6fdGTRp5d+EwOi9me5/AVqpZk2Iurv9ShQcgPQxOdnIMeOu+Ei+NpMHh7XWpHf
         oYlZv2GWc2vk3njrNPPEBAeV6YyVaoZ8kLuDNa1NTWn1Wt1Hcpuo3RLWrp2n7eKRDJmQ
         7v7ilVrFRyTABYGXWJDqvj0tsUWdpHgxJz2Pu0thb1ttLZ/+biN9/P+3O/HCiPw5fSRq
         TpB4xt2Gzcp3pl9k/BgtT4LiIWGN7lsf3j4dIpRzFIZuPS7SYjEEI90SbAYlA9zomGjB
         gbkg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.93 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=5cno1mAvIPdhO2pHw2pRDf9sfTifOTRzuZuXCitQ0gk=;
        b=GMZS/c2rMPoYS7E5oUoslKqlbda6xwOOybWe5K5jZ9oGi+I6VjoU0sBuWMgRg78l5h
         Lb9zvOP3nhjGrhJkyk5zhIea5XbZhXGMb8mRuu+XpjrjQKdAPIjL1WKlmoe1DsoVwx/l
         XiUVyd4GefdogZZ/eS0D20CI85ynBQ4OIcbNG/XGEJme23Av+Cl3JKKR9LXC3RLzJsbr
         f7cph8ykE7QtzBUi0am3s9eGqMQTuj0sM9lqjv8xdjGI+TeWePfFGpSGN9IOnit1b+dh
         GnYhoSzPegBxyCQ1sL92yBictad8n5+lK//J+lfJHPPZqsb2JuHs1mlMZRQbBDIEP7mA
         xhMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=5cno1mAvIPdhO2pHw2pRDf9sfTifOTRzuZuXCitQ0gk=;
        b=LTfYx0qVVnJslzklsYvKWndbE8PlbPrhaACDVhfSg/ZC64tvhCtuXZzET+bCrbztIF
         pKOcCuW1M96spab9nO6ejOpkeHe/l6RWa6NpSpIR0b9FUw8Q5yIOr6jRaE7aLPboLXEB
         WZinb8G+ENcXWBF05Myjfr8Pb3SJ/s6TxGqsyWXl0OhtFpLAX/c311dS9drmssF6+wad
         micgwUmb/U4+TVaUXhVLiz+5gs/+Nte4oYWtSV0qYKdBv2au2UEoTxaEsUCsssJOIQPj
         kwU+//5NZSXfBmJ1Z/372j1ZptvWTI6CMQ3ogfUORCcayr/xf0gAMYLiX5X7jZQPLH8w
         d0cA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5312fi1bejGZqsEq3gUyaFr7+hxAEIOweZK6Qszul/CQyn4HWGvR
	E6gdZnJTiq7vqw2Bo2xntEQ=
X-Google-Smtp-Source: ABdhPJyKUESICJIDb3aL5eXbeARF9rgyqcUfGYzj0CFZOaJLkuIHrCXzyKlLJNBxYXq2RzPu9IR4RQ==
X-Received: by 2002:a1f:9a04:: with SMTP id c4mr4841440vke.5.1622529775672;
        Mon, 31 May 2021 23:42:55 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:f74d:: with SMTP id w13ls3067929vso.11.gmail; Mon, 31
 May 2021 23:42:55 -0700 (PDT)
X-Received: by 2002:a05:6102:227c:: with SMTP id v28mr16723297vsd.52.1622529774930;
        Mon, 31 May 2021 23:42:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1622529774; cv=none;
        d=google.com; s=arc-20160816;
        b=LDQmyf7UIcDc7G1NbRfLLYiUnFUT1jxShnkEU1sY86bfoCP9mzP8aGZ4ejz9T4EoVz
         2CCB89TTRTUp5r/ubKb9pawfkm6JUonQwcRZGOpIrCPovJWo3obseH7pK4ugzsXbyIAX
         2iYWzv9Z7kGk6mR85y1WSQp3tj82n8xDqQybQyhnoGk4BeWEKyID36CYYs1SaB9+4Z9c
         8VFZJWB8hJtjGp/KxWX5M8nQa/X89oVmDj2N8xcXy/ukTpQTSulR1+xos5OtSPKJbtFK
         3B5/fwKV9REZuA8sFenZ+5SLp0xpYKS0+qrp4fWlsWVs+xSpgojb2wCuAzDKanr+lESf
         spVg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=R/D8VRy1639/1DyotrwNmVbFe5R+A0Iv+o1+vIrvPhA=;
        b=Odn+8HfzhZiO40YDRcjCeH074aC5Wt4/HzRttdnSbUaGJ/JIHOvD+J7tER21V2qZCj
         tZszEGXmVgjI3wi3GSXXeepgM5GqnSvqihVLPXahNCaOfnP0Y22gGS913qS75kUKGpSm
         MsrCmLAokDmoQYjpE77+Nt4ygz/+z2dQLjVulfryjx+s7GeDgta61V6QV3l0TRi1TyY4
         Oyu68A2qKc3a8CfCqY1WIJJlZU6XD0KaCb+xzduWlbktf3/7H9k7FpmrkRSs04TUJwg4
         Ti8oHx1UPSyB40iklfsr5Kweu/mXYuNlnr0fX2uw8QiMxWh0AyS7XAlf9JIBGPcWC+8E
         WWFQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.93 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga11.intel.com (mga11.intel.com. [192.55.52.93])
        by gmr-mx.google.com with ESMTPS id 8si330606vko.4.2021.05.31.23.42.54
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 31 May 2021 23:42:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.93 as permitted sender) client-ip=192.55.52.93;
IronPort-SDR: 2yDDUkSZxTZE0Vbwv9Wdx8KtD3JwU66QF18JsfZUGXbyEIt55HVNtWdVrI+bWNFctSqaj2Ve88
 fhUSvGU2WByw==
X-IronPort-AV: E=McAfee;i="6200,9189,10001"; a="200472114"
X-IronPort-AV: E=Sophos;i="5.83,239,1616482800"; 
   d="gz'50?scan'50,208,50";a="200472114"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
  by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 31 May 2021 23:42:53 -0700
IronPort-SDR: aPeoO0vpxLArhyUvbVNUk7J5CVCxNJwrCwOqgRdFB32oq7IX4sKEKOZUEk4KKVYkx3gTvIlJmQ
 2LYxcynEJQ8Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,239,1616482800"; 
   d="gz'50?scan'50,208,50";a="479157866"
Received: from lkp-server02.sh.intel.com (HELO 1ec8406c5392) ([10.239.97.151])
  by orsmga001.jf.intel.com with ESMTP; 31 May 2021 23:42:50 -0700
Received: from kbuild by 1ec8406c5392 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1lny6z-00058r-VI; Tue, 01 Jun 2021 06:42:49 +0000
Date: Tue, 1 Jun 2021 14:42:23 +0800
From: kernel test robot <lkp@intel.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org, Dinh Nguyen <dinguyen@kernel.org>
Subject: drivers/edac/altera_edac.c:541:42: warning: unused variable
 'ocramecc_data'
Message-ID: <202106011419.q5MoHkEf-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="/04w6evG8XlLl3ft"
Content-Disposition: inline
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


--/04w6evG8XlLl3ft
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi Krzysztof,

First bad commit (maybe != root cause):

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
head:   c2131f7e73c9e9365613e323d65c7b9e5b910f56
commit: 4a9a1a5602d82c079325bf37466af0b67d6c0b9e arm64: socfpga: merge Agilex and N5X into ARCH_INTEL_SOCFPGA
date:   2 months ago
config: arm64-randconfig-r032-20210601 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project db26cd30b6dd65e88d786e97a1e453af5cd48966)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install arm64 cross compiling tool for clang build
        # apt-get install binutils-aarch64-linux-gnu
        # https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=4a9a1a5602d82c079325bf37466af0b67d6c0b9e
        git remote add linus https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
        git fetch --no-tags linus master
        git checkout 4a9a1a5602d82c079325bf37466af0b67d6c0b9e
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=arm64 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

>> drivers/edac/altera_edac.c:541:42: warning: unused variable 'ocramecc_data' [-Wunused-const-variable]
   static const struct edac_device_prv_data ocramecc_data;
                                            ^
>> drivers/edac/altera_edac.c:542:42: warning: unused variable 'l2ecc_data' [-Wunused-const-variable]
   static const struct edac_device_prv_data l2ecc_data;
                                            ^
>> drivers/edac/altera_edac.c:543:42: warning: unused variable 'a10_ocramecc_data' [-Wunused-const-variable]
   static const struct edac_device_prv_data a10_ocramecc_data;
                                            ^
>> drivers/edac/altera_edac.c:544:42: warning: unused variable 'a10_l2ecc_data' [-Wunused-const-variable]
   static const struct edac_device_prv_data a10_l2ecc_data;
                                            ^
>> drivers/edac/altera_edac.c:642:37: warning: unused variable 'altr_edac_device_inject_fops' [-Wunused-const-variable]
   static const struct file_operations altr_edac_device_inject_fops = {
                                       ^
   5 warnings generated.


vim +/ocramecc_data +541 drivers/edac/altera_edac.c

c3eea1942a16db Thor Thayer  2016-02-10  532  
c3eea1942a16db Thor Thayer  2016-02-10  533  /*
c3eea1942a16db Thor Thayer  2016-02-10  534   * EDAC Device Functions (shared between various IPs).
c3eea1942a16db Thor Thayer  2016-02-10  535   * The discrete memories use the EDAC Device framework. The probe
c3eea1942a16db Thor Thayer  2016-02-10  536   * and error handling functions are very similar between memories
c3eea1942a16db Thor Thayer  2016-02-10  537   * so they are shared. The memory allocation and freeing for EDAC
c3eea1942a16db Thor Thayer  2016-02-10  538   * trigger testing are different for each memory.
c3eea1942a16db Thor Thayer  2016-02-10  539   */
c3eea1942a16db Thor Thayer  2016-02-10  540  
1cf70377247302 Thor Thayer  2016-06-22 @541  static const struct edac_device_prv_data ocramecc_data;
1cf70377247302 Thor Thayer  2016-06-22 @542  static const struct edac_device_prv_data l2ecc_data;
1cf70377247302 Thor Thayer  2016-06-22 @543  static const struct edac_device_prv_data a10_ocramecc_data;
1cf70377247302 Thor Thayer  2016-06-22 @544  static const struct edac_device_prv_data a10_l2ecc_data;
c3eea1942a16db Thor Thayer  2016-02-10  545  
c3eea1942a16db Thor Thayer  2016-02-10  546  static irqreturn_t altr_edac_device_handler(int irq, void *dev_id)
c3eea1942a16db Thor Thayer  2016-02-10  547  {
c3eea1942a16db Thor Thayer  2016-02-10  548  	irqreturn_t ret_value = IRQ_NONE;
c3eea1942a16db Thor Thayer  2016-02-10  549  	struct edac_device_ctl_info *dci = dev_id;
c3eea1942a16db Thor Thayer  2016-02-10  550  	struct altr_edac_device_dev *drvdata = dci->pvt_info;
c3eea1942a16db Thor Thayer  2016-02-10  551  	const struct edac_device_prv_data *priv = drvdata->data;
c3eea1942a16db Thor Thayer  2016-02-10  552  
c3eea1942a16db Thor Thayer  2016-02-10  553  	if (irq == drvdata->sb_irq) {
c3eea1942a16db Thor Thayer  2016-02-10  554  		if (priv->ce_clear_mask)
c3eea1942a16db Thor Thayer  2016-02-10  555  			writel(priv->ce_clear_mask, drvdata->base);
c3eea1942a16db Thor Thayer  2016-02-10  556  		edac_device_handle_ce(dci, 0, 0, drvdata->edac_dev_name);
c3eea1942a16db Thor Thayer  2016-02-10  557  		ret_value = IRQ_HANDLED;
c3eea1942a16db Thor Thayer  2016-02-10  558  	} else if (irq == drvdata->db_irq) {
c3eea1942a16db Thor Thayer  2016-02-10  559  		if (priv->ue_clear_mask)
c3eea1942a16db Thor Thayer  2016-02-10  560  			writel(priv->ue_clear_mask, drvdata->base);
c3eea1942a16db Thor Thayer  2016-02-10  561  		edac_device_handle_ue(dci, 0, 0, drvdata->edac_dev_name);
c3eea1942a16db Thor Thayer  2016-02-10  562  		panic("\nEDAC:ECC_DEVICE[Uncorrectable errors]\n");
c3eea1942a16db Thor Thayer  2016-02-10  563  		ret_value = IRQ_HANDLED;
c3eea1942a16db Thor Thayer  2016-02-10  564  	} else {
c3eea1942a16db Thor Thayer  2016-02-10  565  		WARN_ON(1);
c3eea1942a16db Thor Thayer  2016-02-10  566  	}
c3eea1942a16db Thor Thayer  2016-02-10  567  
c3eea1942a16db Thor Thayer  2016-02-10  568  	return ret_value;
c3eea1942a16db Thor Thayer  2016-02-10  569  }
c3eea1942a16db Thor Thayer  2016-02-10  570  
c3eea1942a16db Thor Thayer  2016-02-10  571  static ssize_t altr_edac_device_trig(struct file *file,
c3eea1942a16db Thor Thayer  2016-02-10  572  				     const char __user *user_buf,
c3eea1942a16db Thor Thayer  2016-02-10  573  				     size_t count, loff_t *ppos)
c3eea1942a16db Thor Thayer  2016-02-10  574  
c3eea1942a16db Thor Thayer  2016-02-10  575  {
c3eea1942a16db Thor Thayer  2016-02-10  576  	u32 *ptemp, i, error_mask;
c3eea1942a16db Thor Thayer  2016-02-10  577  	int result = 0;
c3eea1942a16db Thor Thayer  2016-02-10  578  	u8 trig_type;
c3eea1942a16db Thor Thayer  2016-02-10  579  	unsigned long flags;
c3eea1942a16db Thor Thayer  2016-02-10  580  	struct edac_device_ctl_info *edac_dci = file->private_data;
c3eea1942a16db Thor Thayer  2016-02-10  581  	struct altr_edac_device_dev *drvdata = edac_dci->pvt_info;
c3eea1942a16db Thor Thayer  2016-02-10  582  	const struct edac_device_prv_data *priv = drvdata->data;
c3eea1942a16db Thor Thayer  2016-02-10  583  	void *generic_ptr = edac_dci->dev;
c3eea1942a16db Thor Thayer  2016-02-10  584  
c3eea1942a16db Thor Thayer  2016-02-10  585  	if (!user_buf || get_user(trig_type, user_buf))
c3eea1942a16db Thor Thayer  2016-02-10  586  		return -EFAULT;
c3eea1942a16db Thor Thayer  2016-02-10  587  
c3eea1942a16db Thor Thayer  2016-02-10  588  	if (!priv->alloc_mem)
c3eea1942a16db Thor Thayer  2016-02-10  589  		return -ENOMEM;
c3eea1942a16db Thor Thayer  2016-02-10  590  
c3eea1942a16db Thor Thayer  2016-02-10  591  	/*
c3eea1942a16db Thor Thayer  2016-02-10  592  	 * Note that generic_ptr is initialized to the device * but in
c3eea1942a16db Thor Thayer  2016-02-10  593  	 * some alloc_functions, this is overridden and returns data.
c3eea1942a16db Thor Thayer  2016-02-10  594  	 */
c3eea1942a16db Thor Thayer  2016-02-10  595  	ptemp = priv->alloc_mem(priv->trig_alloc_sz, &generic_ptr);
c3eea1942a16db Thor Thayer  2016-02-10  596  	if (!ptemp) {
c3eea1942a16db Thor Thayer  2016-02-10  597  		edac_printk(KERN_ERR, EDAC_DEVICE,
c3eea1942a16db Thor Thayer  2016-02-10  598  			    "Inject: Buffer Allocation error\n");
c3eea1942a16db Thor Thayer  2016-02-10  599  		return -ENOMEM;
c3eea1942a16db Thor Thayer  2016-02-10  600  	}
c3eea1942a16db Thor Thayer  2016-02-10  601  
c3eea1942a16db Thor Thayer  2016-02-10  602  	if (trig_type == ALTR_UE_TRIGGER_CHAR)
c3eea1942a16db Thor Thayer  2016-02-10  603  		error_mask = priv->ue_set_mask;
c3eea1942a16db Thor Thayer  2016-02-10  604  	else
c3eea1942a16db Thor Thayer  2016-02-10  605  		error_mask = priv->ce_set_mask;
c3eea1942a16db Thor Thayer  2016-02-10  606  
c3eea1942a16db Thor Thayer  2016-02-10  607  	edac_printk(KERN_ALERT, EDAC_DEVICE,
c3eea1942a16db Thor Thayer  2016-02-10  608  		    "Trigger Error Mask (0x%X)\n", error_mask);
c3eea1942a16db Thor Thayer  2016-02-10  609  
c3eea1942a16db Thor Thayer  2016-02-10  610  	local_irq_save(flags);
c3eea1942a16db Thor Thayer  2016-02-10  611  	/* write ECC corrupted data out. */
c3eea1942a16db Thor Thayer  2016-02-10  612  	for (i = 0; i < (priv->trig_alloc_sz / sizeof(*ptemp)); i++) {
c3eea1942a16db Thor Thayer  2016-02-10  613  		/* Read data so we're in the correct state */
c3eea1942a16db Thor Thayer  2016-02-10  614  		rmb();
332efa6374de75 Mark Rutland 2017-10-23  615  		if (READ_ONCE(ptemp[i]))
c3eea1942a16db Thor Thayer  2016-02-10  616  			result = -1;
c3eea1942a16db Thor Thayer  2016-02-10  617  		/* Toggle Error bit (it is latched), leave ECC enabled */
811fce4f2a7aea Thor Thayer  2016-03-21  618  		writel(error_mask, (drvdata->base + priv->set_err_ofst));
811fce4f2a7aea Thor Thayer  2016-03-21  619  		writel(priv->ecc_enable_mask, (drvdata->base +
811fce4f2a7aea Thor Thayer  2016-03-21  620  					       priv->set_err_ofst));
c3eea1942a16db Thor Thayer  2016-02-10  621  		ptemp[i] = i;
c3eea1942a16db Thor Thayer  2016-02-10  622  	}
c3eea1942a16db Thor Thayer  2016-02-10  623  	/* Ensure it has been written out */
c3eea1942a16db Thor Thayer  2016-02-10  624  	wmb();
c3eea1942a16db Thor Thayer  2016-02-10  625  	local_irq_restore(flags);
c3eea1942a16db Thor Thayer  2016-02-10  626  
c3eea1942a16db Thor Thayer  2016-02-10  627  	if (result)
c3eea1942a16db Thor Thayer  2016-02-10  628  		edac_printk(KERN_ERR, EDAC_DEVICE, "Mem Not Cleared\n");
c3eea1942a16db Thor Thayer  2016-02-10  629  
c3eea1942a16db Thor Thayer  2016-02-10  630  	/* Read out written data. ECC error caused here */
c3eea1942a16db Thor Thayer  2016-02-10  631  	for (i = 0; i < ALTR_TRIGGER_READ_WRD_CNT; i++)
332efa6374de75 Mark Rutland 2017-10-23  632  		if (READ_ONCE(ptemp[i]) != i)
c3eea1942a16db Thor Thayer  2016-02-10  633  			edac_printk(KERN_ERR, EDAC_DEVICE,
c3eea1942a16db Thor Thayer  2016-02-10  634  				    "Read doesn't match written data\n");
c3eea1942a16db Thor Thayer  2016-02-10  635  
c3eea1942a16db Thor Thayer  2016-02-10  636  	if (priv->free_mem)
c3eea1942a16db Thor Thayer  2016-02-10  637  		priv->free_mem(ptemp, priv->trig_alloc_sz, generic_ptr);
c3eea1942a16db Thor Thayer  2016-02-10  638  
c3eea1942a16db Thor Thayer  2016-02-10  639  	return count;
c3eea1942a16db Thor Thayer  2016-02-10  640  }
c3eea1942a16db Thor Thayer  2016-02-10  641  
c3eea1942a16db Thor Thayer  2016-02-10 @642  static const struct file_operations altr_edac_device_inject_fops = {
c3eea1942a16db Thor Thayer  2016-02-10  643  	.open = simple_open,
c3eea1942a16db Thor Thayer  2016-02-10  644  	.write = altr_edac_device_trig,
c3eea1942a16db Thor Thayer  2016-02-10  645  	.llseek = generic_file_llseek,
c3eea1942a16db Thor Thayer  2016-02-10  646  };
c3eea1942a16db Thor Thayer  2016-02-10  647  

:::::: The code at line 541 was first introduced by commit
:::::: 1cf703772473022ac89d815871b20aa4738449b4 EDAC, altera: Make all private data structures static

:::::: TO: Thor Thayer <tthayer@opensource.altera.com>
:::::: CC: Borislav Petkov <bp@suse.de>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202106011419.q5MoHkEf-lkp%40intel.com.

--/04w6evG8XlLl3ft
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
4AunReX3AQA=

--/04w6evG8XlLl3ft--
