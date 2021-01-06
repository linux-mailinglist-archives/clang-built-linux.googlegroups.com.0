Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBSGV3D7QKGQEIRLJODQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3f.google.com (mail-vk1-xa3f.google.com [IPv6:2607:f8b0:4864:20::a3f])
	by mail.lfdr.de (Postfix) with ESMTPS id A84222EC5B0
	for <lists+clang-built-linux@lfdr.de>; Wed,  6 Jan 2021 22:25:29 +0100 (CET)
Received: by mail-vk1-xa3f.google.com with SMTP id c69sf2234600vke.14
        for <lists+clang-built-linux@lfdr.de>; Wed, 06 Jan 2021 13:25:29 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1609968328; cv=pass;
        d=google.com; s=arc-20160816;
        b=LQqAhGQt2WKsHW/3Bc4rLhuRyzIZ17O9xR6XRQY2JH+VxVA4oK1waIX39ne9+LKHRc
         EtxVHPs6s78y0L8PzZzvzcEiajrILC8iGtTq8yTJGPMNb6ierafI59h2lMMQrq6EcVn7
         37wzPvxVJLla/Vn+ihgbSBW5wdVh1bxI26PO3zjbgAaEzl4nTiJZE93+znxM4VFeQaQI
         DUoM0HuR228bDhFKan3qQ+kMdx5kYGnqcnQguYXvPJanx/NZz1QAM85aswF0fpB2j/Mo
         KTFHJz8+SMy3MV5f0skr3kHjSm2gOqTgrzfzA59evXGrK0hFuQFozwBQtcjbbIbW3Xnb
         ivNQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=2Vg/qvom1hFUs14Fw/TAP0DJOhX6LCZJs5Z7ybigD3I=;
        b=Wi/xJq781PTWuCYQKWKjpxhb0AaSa59YmVZgM0Sxmjlx+dq7iG/6gU/5now2/rVu9w
         b55jaF74dk/TAqakENs6917b3UaPVeet4BxJIcpOT8T4mBTMHxtCvKoXRYNXY6ZKtd7T
         wXtfRRZKsFg1+IOHf0ursqhAlbzNPDy8nhkjVPguKr+rZA5CxK/vHH6QGWAPI7yKF6Ea
         +FbOrBxeeXNR3EGytMrHa2st2TwhpXB5Ghd77SDtV7i1EcwxZm7cwMTGqPijQ2EzsMMK
         rqFViEawmg60y48py7zcfFtKHkQOemTOi/q0T06feHCzbwPjrXCgaN77f1DHLVZBu2F0
         tzMA==
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
        bh=2Vg/qvom1hFUs14Fw/TAP0DJOhX6LCZJs5Z7ybigD3I=;
        b=q+Ksh/JBdeNl8dZzaAZ5L+7Tj/f0gt+3iqGcoCMzpvUMYQtwswvQj62mnQPalXAKl8
         21P1hrFkZJwZ6sYkBLVr/+q7Erzo3HHqNrb2qanhIqoY+rHP19QKZuVWdISMnFaiDcEX
         +W5ZgNuQlt3dSxyFSSe6dMJ5LaReD/8Ih3O+3Iwa1ck+KAKJ4mB9yARoE4nF08SScGZr
         cJMAc+Frar/IySAy45YY/Cp2cD1w5sAwyAISnjv8GRPySG4eMhraH229zihcFODlXufN
         ruP3yzEG1agIrxH+EA3vjTk+ASNReEmCs1+hAEzodD4eWKCqVzRAozKyUeaE7d2Hzi2M
         xEUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:references:mime-version:content-disposition
         :in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2Vg/qvom1hFUs14Fw/TAP0DJOhX6LCZJs5Z7ybigD3I=;
        b=K8gJwIsQJ3yvOAdUbH0ebgvMleukzPvJX6aHBZbYoL/+NCnWgbMF7GgWMIJChH1iBG
         00xVXR4Ktobw1jep9W5kjaNHJ4vesWkuYypBPfqf4QmnhuLKAPPM71+sn72MsNfuB1DR
         XMrgxREF8IKk08IjPXq5iSvjEDj0ht2bxjR496tlhZ+2OQ3lEqJ0yMxZaGywJFA6vRyC
         au+Ime06hhR2PWjW+3f086i0Yz7Fi60/NraMMkoNHaeNwV5Pl5MHDxQAlSYogkUXnSP8
         ufWsAhUjTmsbhJT7QXIZLg6OhwdLePmXVsmDa4pEmvex/N3TnuNmZkynsGOvfd/wYs4X
         kbNw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533xdI4DdbY8VFQqRJ/OnE2kU4Cq8xynDY+1tHUcR/WAFx3n4cDr
	qMiN6ngSgkponxVCcfRfQJQ=
X-Google-Smtp-Source: ABdhPJwmG4J/0jGWfVRbiYgIpZCF7BId5i0B66ktQabpF0vGSd5iQL3NAVbui/7g55TQ+KrJiBtc8w==
X-Received: by 2002:a9f:21f8:: with SMTP id 111mr5207425uac.115.1609968328468;
        Wed, 06 Jan 2021 13:25:28 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:f315:: with SMTP id p21ls607919vsf.6.gmail; Wed, 06 Jan
 2021 13:25:28 -0800 (PST)
X-Received: by 2002:a67:f80b:: with SMTP id l11mr4716172vso.27.1609968327901;
        Wed, 06 Jan 2021 13:25:27 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1609968327; cv=none;
        d=google.com; s=arc-20160816;
        b=Ub1aMo84RtDUNAJ/zFtTTHReF0zkTWlUrnwKLnDAtc/z2G/wm0C0D5ZSPMfurCnqBh
         0QAk9cMC32GksKAxHGlqrEClc4naoVvngZ12OD69R5D5CcE25M5/DQh2xGE6TY6Vg0oL
         0FAtoSe9I2rDzy9YJ6qJcTEn11UKtWqljHv8k4wmZu2UwWTGrAfUJiwTnN2tISwLAOxZ
         91lnPwNyQtcFfTZRivC3tRSLtUxE4mYptUOtnNrxPddh6frftykHwSUV8+ypdZvewMYk
         BuJZ5X3jDt3wGc9Po8ShR1U8nbbxDYSdyvw+uqVq3YNndsJmeOCq/xdbiLgt7lB4coLV
         EC3A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:ironport-sdr:ironport-sdr;
        bh=8jMjy2zzHRkwd2U8p1Cwa35cZNQnSqyIrcW4uDVnqzc=;
        b=nyGzwzA8yO50P35AqY9VM5LbUuMsdRWc9jepv3Hp+/xPZEWNgYsC4jbT4X8zU36eSu
         TzTdL8BUX2ZP5L0AYzTIGm4NBVDbLE0G0XeP9RSW3F+SCbbfNY1ZivUmVxpjf+1Ltp2N
         KOevV0WZS1tdao7Zqp3lIND3A1Ph5nZ4ZDPKxOr00EfwmQYQo55zz3mR6uGGAwr1QbIT
         kSzHIpCBrJ24aoJFYGfJjLhoJm6cr+mkVHCsqUEhDE8qVaqOR7vTBsqo/eNRP5pejMGJ
         8caXbQrMLhRHe0qG4DBQgeLCRapXzpQsmmIJYIlX8hcrsTGUn9pBM1vcPc9vZMXfSW7s
         tIUw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.31 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga06.intel.com (mga06.intel.com. [134.134.136.31])
        by gmr-mx.google.com with ESMTPS id r13si323063vka.3.2021.01.06.13.25.27
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 06 Jan 2021 13:25:27 -0800 (PST)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.31 as permitted sender) client-ip=134.134.136.31;
IronPort-SDR: a05Eoznl3x3mShSO9jMYxge3hjzQaRlU10TZb/5FRoGA78tm/6Pmh91mySlzmvjoMMGhKhtnXc
 EkdDQozAwfSw==
X-IronPort-AV: E=McAfee;i="6000,8403,9856"; a="238885780"
X-IronPort-AV: E=Sophos;i="5.79,328,1602572400"; 
   d="gz'50?scan'50,208,50";a="238885780"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
  by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 06 Jan 2021 13:25:25 -0800
IronPort-SDR: /O+MMBjqd58vzsRqMYuttROFM2bq9V17SCWxWFDffADiUnDU02h16MBqP8AfVTraY9sJMnRjuX
 1iZ5rpZgGURw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,328,1602572400"; 
   d="gz'50?scan'50,208,50";a="395749056"
Received: from lkp-server02.sh.intel.com (HELO 4242b19f17ef) ([10.239.97.151])
  by fmsmga004.fm.intel.com with ESMTP; 06 Jan 2021 13:25:21 -0800
Received: from kbuild by 4242b19f17ef with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1kxGIz-0009BC-4Q; Wed, 06 Jan 2021 21:25:21 +0000
Date: Thu, 7 Jan 2021 05:25:03 +0800
From: kernel test robot <lkp@intel.com>
To: Jaegeuk Kim <jaegeuk@kernel.org>, linux-kernel@vger.kernel.org,
	linux-scsi@vger.kernel.org, kernel-team@android.com
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	cang@codeaurora.org, alim.akhtar@samsung.com, avri.altman@wdc.com,
	bvanassche@acm.org, martin.petersen@oracle.com,
	stanley.chu@mediatek.com, Jaegeuk Kim <jaegeuk@google.com>
Subject: Re: [PATCH 2/2] scsi: ufs: handle LINERESET with correct tm_cmd
Message-ID: <202101070536.RkuC5kTg-lkp@intel.com>
References: <20210106193649.3348230-2-jaegeuk@kernel.org>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="vkogqOf2sHV7VnPd"
Content-Disposition: inline
In-Reply-To: <20210106193649.3348230-2-jaegeuk@kernel.org>
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


--vkogqOf2sHV7VnPd
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi Jaegeuk,

I love your patch! Perhaps something to improve:

[auto build test WARNING on scsi/for-next]
[also build test WARNING on mkp-scsi/for-next linus/master v5.11-rc2 next-20210104]
[cannot apply to linux/master]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch]

url:    https://github.com/0day-ci/linux/commits/Jaegeuk-Kim/scsi-ufs-fix-livelock-of-ufshcd_clear_ua_wluns/20210107-034119
base:   https://git.kernel.org/pub/scm/linux/kernel/git/jejb/scsi.git for-next
config: x86_64-randconfig-r016-20210106 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project 5c951623bc8965fa1e89660f2f5f4a2944e4981a)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install x86_64 cross compiling tool for clang build
        # apt-get install binutils-x86-64-linux-gnu
        # https://github.com/0day-ci/linux/commit/1ae2226bbc3a8096dfceaab9c598f02d387915ba
        git remote add linux-review https://github.com/0day-ci/linux
        git fetch --no-tags linux-review Jaegeuk-Kim/scsi-ufs-fix-livelock-of-ufshcd_clear_ua_wluns/20210107-034119
        git checkout 1ae2226bbc3a8096dfceaab9c598f02d387915ba
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

>> drivers/scsi/ufs/ufshcd.c:5923:16: warning: format specifies type 'unsigned int' but the argument has type 'unsigned long' [-Wformat]
                                           __func__, hba->outstanding_reqs);
                                                     ^~~~~~~~~~~~~~~~~~~~~
   include/linux/dev_printk.h:112:32: note: expanded from macro 'dev_err'
           _dev_err(dev, dev_fmt(fmt), ##__VA_ARGS__)
                                 ~~~     ^~~~~~~~~~~
   1 warning generated.


vim +5923 drivers/scsi/ufs/ufshcd.c

  5818	
  5819	/**
  5820	 * ufshcd_err_handler - handle UFS errors that require s/w attention
  5821	 * @work: pointer to work structure
  5822	 */
  5823	static void ufshcd_err_handler(struct work_struct *work)
  5824	{
  5825		struct ufs_hba *hba;
  5826		unsigned long flags;
  5827		bool err_xfer = false;
  5828		bool err_tm = false;
  5829		int err = 0, pmc_err;
  5830		int tag;
  5831		bool needs_reset = false, needs_restore = false;
  5832	
  5833		hba = container_of(work, struct ufs_hba, eh_work);
  5834	
  5835		down(&hba->eh_sem);
  5836		spin_lock_irqsave(hba->host->host_lock, flags);
  5837		if (ufshcd_err_handling_should_stop(hba)) {
  5838			if (hba->ufshcd_state != UFSHCD_STATE_ERROR)
  5839				hba->ufshcd_state = UFSHCD_STATE_OPERATIONAL;
  5840			spin_unlock_irqrestore(hba->host->host_lock, flags);
  5841			up(&hba->eh_sem);
  5842			return;
  5843		}
  5844		ufshcd_set_eh_in_progress(hba);
  5845		spin_unlock_irqrestore(hba->host->host_lock, flags);
  5846		ufshcd_err_handling_prepare(hba);
  5847		spin_lock_irqsave(hba->host->host_lock, flags);
  5848		ufshcd_scsi_block_requests(hba);
  5849		hba->ufshcd_state = UFSHCD_STATE_RESET;
  5850	
  5851		/* Complete requests that have door-bell cleared by h/w */
  5852		ufshcd_complete_requests(hba);
  5853	
  5854		/*
  5855		 * A full reset and restore might have happened after preparation
  5856		 * is finished, double check whether we should stop.
  5857		 */
  5858		if (ufshcd_err_handling_should_stop(hba))
  5859			goto skip_err_handling;
  5860	
  5861		if (hba->dev_quirks & UFS_DEVICE_QUIRK_RECOVERY_FROM_DL_NAC_ERRORS) {
  5862			bool ret;
  5863	
  5864			spin_unlock_irqrestore(hba->host->host_lock, flags);
  5865			/* release the lock as ufshcd_quirk_dl_nac_errors() may sleep */
  5866			ret = ufshcd_quirk_dl_nac_errors(hba);
  5867			spin_lock_irqsave(hba->host->host_lock, flags);
  5868			if (!ret && ufshcd_err_handling_should_stop(hba))
  5869				goto skip_err_handling;
  5870		}
  5871	
  5872		if ((hba->saved_err & (INT_FATAL_ERRORS | UFSHCD_UIC_HIBERN8_MASK)) ||
  5873		    (hba->saved_uic_err &&
  5874		     (hba->saved_uic_err != UFSHCD_UIC_PA_GENERIC_ERROR))) {
  5875			bool pr_prdt = !!(hba->saved_err & SYSTEM_BUS_FATAL_ERROR);
  5876	
  5877			spin_unlock_irqrestore(hba->host->host_lock, flags);
  5878			ufshcd_print_host_state(hba);
  5879			ufshcd_print_pwr_info(hba);
  5880			ufshcd_print_evt_hist(hba);
  5881			ufshcd_print_tmrs(hba, hba->outstanding_tasks);
  5882			ufshcd_print_trs(hba, hba->outstanding_reqs, pr_prdt);
  5883			spin_lock_irqsave(hba->host->host_lock, flags);
  5884		}
  5885	
  5886		/*
  5887		 * if host reset is required then skip clearing the pending
  5888		 * transfers forcefully because they will get cleared during
  5889		 * host reset and restore
  5890		 */
  5891		if (hba->force_reset || ufshcd_is_link_broken(hba) ||
  5892		    ufshcd_is_saved_err_fatal(hba) ||
  5893		    ((hba->saved_err & UIC_ERROR) &&
  5894		     (hba->saved_uic_err & (UFSHCD_UIC_DL_NAC_RECEIVED_ERROR |
  5895					    UFSHCD_UIC_DL_TCx_REPLAY_ERROR)))) {
  5896			needs_reset = true;
  5897			goto do_reset;
  5898		}
  5899	
  5900		/*
  5901		 * If LINERESET was caught, UFS might have been put to PWM mode,
  5902		 * check if power mode restore is needed.
  5903		 */
  5904		if (hba->saved_uic_err & UFSHCD_UIC_PA_GENERIC_ERROR) {
  5905			ktime_t start = ktime_get();
  5906	
  5907			hba->saved_uic_err &= ~UFSHCD_UIC_PA_GENERIC_ERROR;
  5908			if (!hba->saved_uic_err)
  5909				hba->saved_err &= ~UIC_ERROR;
  5910			spin_unlock_irqrestore(hba->host->host_lock, flags);
  5911			if (ufshcd_is_pwr_mode_restore_needed(hba))
  5912				needs_restore = true;
  5913			spin_lock_irqsave(hba->host->host_lock, flags);
  5914			/* Wait for IO completion to avoid aborting IOs */
  5915			while (hba->outstanding_reqs) {
  5916				ufshcd_complete_requests(hba);
  5917				spin_unlock_irqrestore(hba->host->host_lock, flags);
  5918				schedule();
  5919				spin_lock_irqsave(hba->host->host_lock, flags);
  5920				if (ktime_to_ms(ktime_sub(ktime_get(), start)) >
  5921							LINERESET_IO_TIMEOUT_MS) {
  5922					dev_err(hba->dev, "%s: timeout, outstanding=%x\n",
> 5923						__func__, hba->outstanding_reqs);
  5924					break;
  5925				}
  5926			}
  5927	
  5928			if (!hba->saved_err && !needs_restore)
  5929				goto skip_err_handling;
  5930		}
  5931	
  5932		hba->silence_err_logs = true;
  5933		/* release lock as clear command might sleep */
  5934		spin_unlock_irqrestore(hba->host->host_lock, flags);
  5935		/* Clear pending transfer requests */
  5936		for_each_set_bit(tag, &hba->outstanding_reqs, hba->nutrs) {
  5937			if (ufshcd_try_to_abort_task(hba, tag)) {
  5938				err_xfer = true;
  5939				goto lock_skip_pending_xfer_clear;
  5940			}
  5941		}
  5942	
  5943		/* Clear pending task management requests */
  5944		for_each_set_bit(tag, &hba->outstanding_tasks, hba->nutmrs) {
  5945			if (ufshcd_clear_tm_cmd(hba, tag)) {
  5946				err_tm = true;
  5947				goto lock_skip_pending_xfer_clear;
  5948			}
  5949		}
  5950	
  5951	lock_skip_pending_xfer_clear:
  5952		spin_lock_irqsave(hba->host->host_lock, flags);
  5953	
  5954		/* Complete the requests that are cleared by s/w */
  5955		ufshcd_complete_requests(hba);
  5956		hba->silence_err_logs = false;
  5957	
  5958		if (err_xfer || err_tm) {
  5959			needs_reset = true;
  5960			goto do_reset;
  5961		}
  5962	
  5963		/*
  5964		 * After all reqs and tasks are cleared from doorbell,
  5965		 * now it is safe to retore power mode.
  5966		 */
  5967		if (needs_restore) {
  5968			spin_unlock_irqrestore(hba->host->host_lock, flags);
  5969			/*
  5970			 * Hold the scaling lock just in case dev cmds
  5971			 * are sent via bsg and/or sysfs.
  5972			 */
  5973			down_write(&hba->clk_scaling_lock);
  5974			hba->force_pmc = true;
  5975			pmc_err = ufshcd_config_pwr_mode(hba, &(hba->pwr_info));
  5976			if (pmc_err) {
  5977				needs_reset = true;
  5978				dev_err(hba->dev, "%s: Failed to restore power mode, err = %d\n",
  5979						__func__, pmc_err);
  5980			}
  5981			hba->force_pmc = false;
  5982			ufshcd_print_pwr_info(hba);
  5983			up_write(&hba->clk_scaling_lock);
  5984			spin_lock_irqsave(hba->host->host_lock, flags);
  5985		}
  5986	
  5987	do_reset:
  5988		/* Fatal errors need reset */
  5989		if (needs_reset) {
  5990			unsigned long max_doorbells = (1UL << hba->nutrs) - 1;
  5991	
  5992			/*
  5993			 * ufshcd_reset_and_restore() does the link reinitialization
  5994			 * which will need atleast one empty doorbell slot to send the
  5995			 * device management commands (NOP and query commands).
  5996			 * If there is no slot empty at this moment then free up last
  5997			 * slot forcefully.
  5998			 */
  5999			if (hba->outstanding_reqs == max_doorbells)
  6000				__ufshcd_transfer_req_compl(hba,
  6001							    (1UL << (hba->nutrs - 1)));
  6002	
  6003			hba->force_reset = false;
  6004			spin_unlock_irqrestore(hba->host->host_lock, flags);
  6005			err = ufshcd_reset_and_restore(hba);
  6006			if (err)
  6007				dev_err(hba->dev, "%s: reset and restore failed with err %d\n",
  6008						__func__, err);
  6009			else
  6010				ufshcd_recover_pm_error(hba);
  6011			spin_lock_irqsave(hba->host->host_lock, flags);
  6012		}
  6013	
  6014	skip_err_handling:
  6015		if (!needs_reset) {
  6016			if (hba->ufshcd_state == UFSHCD_STATE_RESET)
  6017				hba->ufshcd_state = UFSHCD_STATE_OPERATIONAL;
  6018			if (hba->saved_err || hba->saved_uic_err)
  6019				dev_err_ratelimited(hba->dev, "%s: exit: saved_err 0x%x saved_uic_err 0x%x",
  6020				    __func__, hba->saved_err, hba->saved_uic_err);
  6021		}
  6022		ufshcd_clear_eh_in_progress(hba);
  6023		spin_unlock_irqrestore(hba->host->host_lock, flags);
  6024		ufshcd_scsi_unblock_requests(hba);
  6025		ufshcd_err_handling_unprepare(hba);
  6026		up(&hba->eh_sem);
  6027	
  6028		if (!err && needs_reset)
  6029			ufshcd_clear_ua_wluns(hba);
  6030	}
  6031	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202101070536.RkuC5kTg-lkp%40intel.com.

--vkogqOf2sHV7VnPd
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
+ZzzPxR2BLUUJwIA

--vkogqOf2sHV7VnPd--
