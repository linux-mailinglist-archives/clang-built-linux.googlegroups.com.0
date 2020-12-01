Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBZ7GS77AKGQEFYJM3MA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3e.google.com (mail-oo1-xc3e.google.com [IPv6:2607:f8b0:4864:20::c3e])
	by mail.lfdr.de (Postfix) with ESMTPS id BBD8E2C9842
	for <lists+clang-built-linux@lfdr.de>; Tue,  1 Dec 2020 08:40:24 +0100 (CET)
Received: by mail-oo1-xc3e.google.com with SMTP id s135sf472270oos.3
        for <lists+clang-built-linux@lfdr.de>; Mon, 30 Nov 2020 23:40:24 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606808423; cv=pass;
        d=google.com; s=arc-20160816;
        b=xIASCge+bMzqqGM8T6P23LDIxK2G1Bmad0NbNI3NeqMBrIHk/3czQMtdn11aLy24Ug
         NwHByk37eFCu34+aNP03CUal8I8GSXzMcUC4wBBUmgw5UPfaGS27qKZjC65+/5hFCpxL
         BcJlw/Saz0z9z8bi0wsFJOx/z5ho3oYJjaK6NEzC6QXiwwsWB3IqIqoJoQSOkPzXRgwe
         XkB95c09xbNcHvaqElOrScQmbpbvTH/7RqRzK309dwKHNUXXwatVKaoXqosjVxeNwV2P
         cTv4EDJNWfo3oX8CdQomANZ7/lurNLpdugDshPa2blQx6/saEfPns075APqI3p1biFVv
         3GcQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=v5yePOXCkDTt3tAGrEAEOZyvXacOOno1EREwGOd0h5c=;
        b=lMHB35r0WPWaoXj0mo5tAHRjdxAB1W6i7zux9eEjn30XkteEsJL3rWbkNUsHIFyWFx
         SczxgfqX+XuA8kmjMAkFQ4//0gUajov0gYshE385Wz5pusxPDpUh4GCK1+Zf96IPjr2T
         bm/FRD4gb9c+VQvndCjrAPJDI484+1Unom0Xr7LBLnFeB11P186ageDIR6Z8wls/SZWz
         2opAsm0mZaVZ17iflvuONL1kn0ihOAL1ryjuy3kJHi26lpBTyJNPF00bJurYMilo5jpR
         P9kJnyvHII9RujXqNSVEgycg+uY2rW3YENm9cuMmdz/R96lS9eUjZaEvzYiDcMe7eftN
         I0Ww==
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
        bh=v5yePOXCkDTt3tAGrEAEOZyvXacOOno1EREwGOd0h5c=;
        b=ONYDFAe+uWrNbHYEwVPu4GjG6LgkMB0dkPVS2NN19/fXJTGLa+EgOdRuMautH23Fq0
         lApqvkzjebBDzDwsdvVwKY5+3zJlTdgZCOaukbUJSVkDyO19jXusQZnp6V1kyOcJDtag
         dSq+XroE9ZGe3Q48TUkzJzNPpL3wDPn0CFROXaD+s/YiZZFMznk0EXejKHbgVEu61BZX
         Gd0L6ffsvWdzGufY/qBNmUVLL19Ibxlr8E3V8DCKSC0RWIWezcwqnB8p/S8lvntYZn7N
         hZSXGexQKTKEsL2uMFTiwTa3jc/O0SK6o+lo3al+LHpOKq7Fy0brHpCk4gbdZhhOWMts
         BcFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:references:mime-version:content-disposition
         :in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=v5yePOXCkDTt3tAGrEAEOZyvXacOOno1EREwGOd0h5c=;
        b=MPuUjdohh1ENnbSeWO8ms81PMqT7p2WHP64sJ54IvW+pbwheC09aAGEVpXtZXe73M5
         BHM/np/EJXAerxmzDW42Sn96DG+ltjqpFOoXE2IJDvYHf+cyxD7NkPB97NPxigwfWZWL
         Uy7npHnuBLXtoMtTLQe1DgBal9D+q89C32eBYEO2khIF0+1dDspOxrU8C44MLEa9xN2U
         IBbohawEMBvKa/UQlksyDYqAFdsxXTZomPRGNAp9NMuzWkDzhNwq1lpG+PkgOBY8SWSb
         TV/4hWRPj5mHf/Z9E5jbvBM9XKCOoqTHvHaWxgwRp/SbAcanukI8/9+6AMZ4Y1O8PNhi
         y6uA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5304+UwSdGlrHHVcGRfkJu1Ok2X22G9wKifqXAW2JN9P9J20JP0l
	Ne9q1rV20k4MTQblIO2sBY0=
X-Google-Smtp-Source: ABdhPJwiQNlx0z3dJ3RIgFtxCXj9Zs8J+mJnHzgopl2Ejeyte+R/2Z5x1wPVyouoeQj3Y4Cjd+Y9hw==
X-Received: by 2002:a4a:274b:: with SMTP id w11mr1067441oow.11.1606808423543;
        Mon, 30 Nov 2020 23:40:23 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:4fd0:: with SMTP id d199ls199425oib.5.gmail; Mon, 30 Nov
 2020 23:40:23 -0800 (PST)
X-Received: by 2002:aca:ec97:: with SMTP id k145mr962774oih.163.1606808423023;
        Mon, 30 Nov 2020 23:40:23 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606808423; cv=none;
        d=google.com; s=arc-20160816;
        b=DyeG1umgEOcKSAssrfiKT7tIQVDB4o9jUahfAgoEaCGNzB1nXnwrv2QNzn6IPUrDJF
         PnBL8acRjA9Q/N0pPqiFwytd2vcWdteJbmQVdiY0L3IBvOnvsCQeMXwJht6mPDKiFyIK
         moyd5PN/WB87ePe2oTMfTF7a1GOG7nmQP7oytHcvIu6I8Lvtok8wgELUruvQWnMIlZ2Z
         symG4yQn29IYGyeXIZxBObkfTsfpoHBaqgQrGphjlmqo22thXVpQf9jFttLaZt5EGajU
         QR3tpX3FAYZqmaYwNcb14BJUmtI1LrCspqSrY9FGl/+K/LzMjJJRTrOL0keEfOwdzOtQ
         iT4w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:ironport-sdr:ironport-sdr;
        bh=9zA9j5Trw1i9VhpoukIVx1CxmEDYpeJF10LMwMvmTO0=;
        b=mLHjQBjh9DCaqRhMLLCUgTm/hCHAIccbEU2RiZWS353OWIXP14bQUb9IcdvPQ71cJE
         ZMzbVX2chYSWjLDksEPI7pmJxL3tzmp6VEhLb8s1Imcgw/D6saK84Jv6dC9r3USBHxE1
         awv2/aq5R5ePm3CHPLxt8JMX6+XHPHMRr0rmVa6nI65r/6egk3FIkiHzr3McQs7EaY2U
         f+X7MOYzAPfaeeYyw9KvTdLATjyamQEK+VDbZFopF3Z1AwI47Y3BUh+nkavoVdWZUQ5M
         o1j0ti2gUr0ZkIdXSA3GOaWwgSjgiz6JcklrnOA8rRUU+UqBqI7iAMb79u0lvyDtJ7Vl
         GX0Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.31 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga06.intel.com (mga06.intel.com. [134.134.136.31])
        by gmr-mx.google.com with ESMTPS id k134si67265oib.5.2020.11.30.23.40.22
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 30 Nov 2020 23:40:22 -0800 (PST)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.31 as permitted sender) client-ip=134.134.136.31;
IronPort-SDR: i/6Kp0r1Sf6YzsEMyeS6AaOiiPw7An17HOx/plZJADqRfvVQUNTpOw9H4+382Nsj74RTBoXwV3
 cqvpR0RbrB1Q==
X-IronPort-AV: E=McAfee;i="6000,8403,9821"; a="234386731"
X-IronPort-AV: E=Sophos;i="5.78,383,1599548400"; 
   d="gz'50?scan'50,208,50";a="234386731"
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
  by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 30 Nov 2020 23:40:21 -0800
IronPort-SDR: q1fh7pdSrn/BnMWQeMRHTeVcgSis/dtaaa4uuWywREz00cYW+naHieIuhB0lXgmXZvlzvTT6vM
 KpngJa92Jl8g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,383,1599548400"; 
   d="gz'50?scan'50,208,50";a="372805568"
Received: from lkp-server01.sh.intel.com (HELO 70b44b587200) ([10.239.97.150])
  by FMSMGA003.fm.intel.com with ESMTP; 30 Nov 2020 23:40:17 -0800
Received: from kbuild by 70b44b587200 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1kk0Gm-0000AZ-HJ; Tue, 01 Dec 2020 07:40:16 +0000
Date: Tue, 1 Dec 2020 15:39:39 +0800
From: kernel test robot <lkp@intel.com>
To: Jaegeuk Kim <jaegeuk@kernel.org>, linux-kernel@vger.kernel.org,
	linux-scsi@vger.kernel.org, kernel-team@android.com
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	cang@codeaurora.org, alim.akhtar@samsung.com, avri.altman@wdc.com,
	bvanassche@acm.org, martin.petersen@oracle.com,
	stanley.chu@mediatek.com, Randall Huang <huangrandall@google.com>
Subject: Re: [PATCH] scsi: ufs: clear uac for RPMB after ufshcd resets
Message-ID: <202012011503.LfVGheuV-lkp@intel.com>
References: <20201201041402.3860525-1-jaegeuk@kernel.org>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="9amGYk9869ThD9tj"
Content-Disposition: inline
In-Reply-To: <20201201041402.3860525-1-jaegeuk@kernel.org>
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


--9amGYk9869ThD9tj
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi Jaegeuk,

Thank you for the patch! Perhaps something to improve:

[auto build test WARNING on scsi/for-next]
[also build test WARNING on mkp-scsi/for-next linux/master linus/master v5.10-rc6 next-20201130]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch]

url:    https://github.com/0day-ci/linux/commits/Jaegeuk-Kim/scsi-ufs-clear-uac-for-RPMB-after-ufshcd-resets/20201201-121956
base:   https://git.kernel.org/pub/scm/linux/kernel/git/jejb/scsi.git for-next
config: x86_64-randconfig-a006-20201201 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project ac40a2d8f16b8a8c68fc811d67f647740e965cb8)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install x86_64 cross compiling tool for clang build
        # apt-get install binutils-x86-64-linux-gnu
        # https://github.com/0day-ci/linux/commit/0636adf2e8880085b18818ce6e7ee878189b52ca
        git remote add linux-review https://github.com/0day-ci/linux
        git fetch --no-tags linux-review Jaegeuk-Kim/scsi-ufs-clear-uac-for-RPMB-after-ufshcd-resets/20201201-121956
        git checkout 0636adf2e8880085b18818ce6e7ee878189b52ca
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

>> drivers/scsi/ufs/ufshcd.c:8398:1: warning: unused label 'out' [-Wunused-label]
   out:
   ^~~~
   1 warning generated.

vim +/out +8398 drivers/scsi/ufs/ufshcd.c

57d104c153d3d6d Subhash Jadavani   2014-09-25  8335  
57d104c153d3d6d Subhash Jadavani   2014-09-25  8336  /**
57d104c153d3d6d Subhash Jadavani   2014-09-25  8337   * ufshcd_set_dev_pwr_mode - sends START STOP UNIT command to set device
57d104c153d3d6d Subhash Jadavani   2014-09-25  8338   *			     power mode
57d104c153d3d6d Subhash Jadavani   2014-09-25  8339   * @hba: per adapter instance
57d104c153d3d6d Subhash Jadavani   2014-09-25  8340   * @pwr_mode: device power mode to set
57d104c153d3d6d Subhash Jadavani   2014-09-25  8341   *
57d104c153d3d6d Subhash Jadavani   2014-09-25  8342   * Returns 0 if requested power mode is set successfully
57d104c153d3d6d Subhash Jadavani   2014-09-25  8343   * Returns non-zero if failed to set the requested power mode
57d104c153d3d6d Subhash Jadavani   2014-09-25  8344   */
57d104c153d3d6d Subhash Jadavani   2014-09-25  8345  static int ufshcd_set_dev_pwr_mode(struct ufs_hba *hba,
57d104c153d3d6d Subhash Jadavani   2014-09-25  8346  				     enum ufs_dev_pwr_mode pwr_mode)
57d104c153d3d6d Subhash Jadavani   2014-09-25  8347  {
57d104c153d3d6d Subhash Jadavani   2014-09-25  8348  	unsigned char cmd[6] = { START_STOP };
57d104c153d3d6d Subhash Jadavani   2014-09-25  8349  	struct scsi_sense_hdr sshdr;
7c48bfd038e570c Akinobu Mita       2014-10-23  8350  	struct scsi_device *sdp;
7c48bfd038e570c Akinobu Mita       2014-10-23  8351  	unsigned long flags;
57d104c153d3d6d Subhash Jadavani   2014-09-25  8352  	int ret;
57d104c153d3d6d Subhash Jadavani   2014-09-25  8353  
7c48bfd038e570c Akinobu Mita       2014-10-23  8354  	spin_lock_irqsave(hba->host->host_lock, flags);
7c48bfd038e570c Akinobu Mita       2014-10-23  8355  	sdp = hba->sdev_ufs_device;
7c48bfd038e570c Akinobu Mita       2014-10-23  8356  	if (sdp) {
7c48bfd038e570c Akinobu Mita       2014-10-23  8357  		ret = scsi_device_get(sdp);
7c48bfd038e570c Akinobu Mita       2014-10-23  8358  		if (!ret && !scsi_device_online(sdp)) {
7c48bfd038e570c Akinobu Mita       2014-10-23  8359  			ret = -ENODEV;
7c48bfd038e570c Akinobu Mita       2014-10-23  8360  			scsi_device_put(sdp);
7c48bfd038e570c Akinobu Mita       2014-10-23  8361  		}
7c48bfd038e570c Akinobu Mita       2014-10-23  8362  	} else {
7c48bfd038e570c Akinobu Mita       2014-10-23  8363  		ret = -ENODEV;
7c48bfd038e570c Akinobu Mita       2014-10-23  8364  	}
7c48bfd038e570c Akinobu Mita       2014-10-23  8365  	spin_unlock_irqrestore(hba->host->host_lock, flags);
7c48bfd038e570c Akinobu Mita       2014-10-23  8366  
7c48bfd038e570c Akinobu Mita       2014-10-23  8367  	if (ret)
7c48bfd038e570c Akinobu Mita       2014-10-23  8368  		return ret;
57d104c153d3d6d Subhash Jadavani   2014-09-25  8369  
57d104c153d3d6d Subhash Jadavani   2014-09-25  8370  	/*
57d104c153d3d6d Subhash Jadavani   2014-09-25  8371  	 * If scsi commands fail, the scsi mid-layer schedules scsi error-
57d104c153d3d6d Subhash Jadavani   2014-09-25  8372  	 * handling, which would wait for host to be resumed. Since we know
57d104c153d3d6d Subhash Jadavani   2014-09-25  8373  	 * we are functional while we are here, skip host resume in error
57d104c153d3d6d Subhash Jadavani   2014-09-25  8374  	 * handling context.
57d104c153d3d6d Subhash Jadavani   2014-09-25  8375  	 */
57d104c153d3d6d Subhash Jadavani   2014-09-25  8376  	hba->host->eh_noresume = 1;
0636adf2e888008 Randall Huang      2020-11-30  8377  	ufshcd_clear_ua_wluns(hba);
57d104c153d3d6d Subhash Jadavani   2014-09-25  8378  
57d104c153d3d6d Subhash Jadavani   2014-09-25  8379  	cmd[4] = pwr_mode << 4;
57d104c153d3d6d Subhash Jadavani   2014-09-25  8380  
57d104c153d3d6d Subhash Jadavani   2014-09-25  8381  	/*
57d104c153d3d6d Subhash Jadavani   2014-09-25  8382  	 * Current function would be generally called from the power management
e806402130c9c49 Christoph Hellwig  2016-10-20  8383  	 * callbacks hence set the RQF_PM flag so that it doesn't resume the
57d104c153d3d6d Subhash Jadavani   2014-09-25  8384  	 * already suspended childs.
57d104c153d3d6d Subhash Jadavani   2014-09-25  8385  	 */
fcbfffe2c5cbec0 Christoph Hellwig  2017-02-23  8386  	ret = scsi_execute(sdp, cmd, DMA_NONE, NULL, 0, NULL, &sshdr,
fcbfffe2c5cbec0 Christoph Hellwig  2017-02-23  8387  			START_STOP_TIMEOUT, 0, 0, RQF_PM, NULL);
57d104c153d3d6d Subhash Jadavani   2014-09-25  8388  	if (ret) {
57d104c153d3d6d Subhash Jadavani   2014-09-25  8389  		sdev_printk(KERN_WARNING, sdp,
ef61329db7b8b43 Hannes Reinecke    2014-10-24  8390  			    "START_STOP failed for power mode: %d, result %x\n",
ef61329db7b8b43 Hannes Reinecke    2014-10-24  8391  			    pwr_mode, ret);
c65be1a63f1df22 Johannes Thumshirn 2018-06-25  8392  		if (driver_byte(ret) == DRIVER_SENSE)
2104551969e8011 Hannes Reinecke    2015-01-08  8393  			scsi_print_sense_hdr(sdp, NULL, &sshdr);
57d104c153d3d6d Subhash Jadavani   2014-09-25  8394  	}
57d104c153d3d6d Subhash Jadavani   2014-09-25  8395  
57d104c153d3d6d Subhash Jadavani   2014-09-25  8396  	if (!ret)
57d104c153d3d6d Subhash Jadavani   2014-09-25  8397  		hba->curr_dev_pwr_mode = pwr_mode;
57d104c153d3d6d Subhash Jadavani   2014-09-25 @8398  out:
7c48bfd038e570c Akinobu Mita       2014-10-23  8399  	scsi_device_put(sdp);
57d104c153d3d6d Subhash Jadavani   2014-09-25  8400  	hba->host->eh_noresume = 0;
57d104c153d3d6d Subhash Jadavani   2014-09-25  8401  	return ret;
57d104c153d3d6d Subhash Jadavani   2014-09-25  8402  }
57d104c153d3d6d Subhash Jadavani   2014-09-25  8403  

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202012011503.LfVGheuV-lkp%40intel.com.

--9amGYk9869ThD9tj
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--9amGYk9869ThD9tj--
