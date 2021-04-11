Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBNX6ZCBQMGQEPZG4P7Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1037.google.com (mail-pj1-x1037.google.com [IPv6:2607:f8b0:4864:20::1037])
	by mail.lfdr.de (Postfix) with ESMTPS id F079735B0D5
	for <lists+clang-built-linux@lfdr.de>; Sun, 11 Apr 2021 02:13:44 +0200 (CEST)
Received: by mail-pj1-x1037.google.com with SMTP id q10-20020a17090a2dcab029014e44f5454asf36542pjm.4
        for <lists+clang-built-linux@lfdr.de>; Sat, 10 Apr 2021 17:13:44 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1618100023; cv=pass;
        d=google.com; s=arc-20160816;
        b=1GRZN/uuRM3tEUS8+IWVRJSKlFHFs67j/epgaMqL/2LL/9sytlbzbuRlRSvMBHdvLm
         cFguvqmSSmbBTTGe6tGSRaPhMq7G1sWKnVBh2wFoDmLLQJF3iKI9x4vEUCtcx7X+G74Z
         RzM75M57s47RAukp4VIeccf4c7kIU9PQyNxidkhix+w+JjwszOBIsQNB1YcGhSiuKo19
         O/yLrGjdy/jKZM5iEsnQd1I39SHq7bMmUUcV/imoTukyV/VCi4ntiKXJteRG4HTqUG3L
         Gqp9dCPP8O/2DFRdQNbTmsPDMqNuYYYt/N56OK0atftLmWF/eSZYyzZGYFRpZGist0Az
         w2/g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=rORVvF4tU3q1NIsnu5JPnSjVcI6IyATIiwckeKgDkbE=;
        b=CyIC6FWcSb+p7RQ4obdYRVikl7IvZAJC6uOBUSRm0oicrpZVpPARE83g7bRMc4NlyP
         wqO6U2S4nRYVQD0rI1sao/eISTkPuUSBzUylx1OU6eVxqtnqcVzF96WTWErT4igH+40r
         nYzast2bGEu62Dk9qlNDOnn8ZF7Ds0ZrP3HbTOQtSCGFycUidiZBUvHuhfhOxSPPdYil
         cuucKM2g4lX5+q4BeiDPsmIkKt+QJ80dtqud6B/L+I/k2+Ub4cVyzZsGfoeeeIZ4p8zM
         A2D9d3htGC19C89YCaDn9vV5wSQcGzEKKNdS9nKYpSN1LLuvrccMyi/5pq/0tmeGO++e
         nkZQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.65 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=rORVvF4tU3q1NIsnu5JPnSjVcI6IyATIiwckeKgDkbE=;
        b=RDWj+Rxy078DRKkYfmLJ8lsUIZxuQdl9lSF2p2RU3oZmi1PmA8gzc/BxTYOtX42n5B
         fmCstMrwyKC9YoRP6op2pUJM75S06fb7WXpWi2gBnwMRMrWKm81T+t/F1z3xckSFsfAj
         9mae8mgGZvC8RIyUDF8UDogl/SWOIg1Bw8lVv9xeSWp2XtWB5klq6E5qsAxuuMsEwnY6
         qPEXjOzY7HAj9cqBGsjEyT1DomP6BLDPe/UUQv/qyDQVJsVIOpn7ZfUaYHBsHGg772Ni
         N1/uC967+s4qGTy/Md3i8qPgT+DONXbe76ORBjAoreKCXph6OFVsmtj/Ir+mwDjYAcJt
         KyDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=rORVvF4tU3q1NIsnu5JPnSjVcI6IyATIiwckeKgDkbE=;
        b=igC9VOCDCjppoVgNgO+Hikfha3PS34kCK0Y1BF/yHv9s5yi9KqeAA//C6DYuMLhrw8
         yHOBFX52tti8TDwxiCWnW9eCT/Qus+LFCn8rJ3pY3iXxQVUcM4dn2mPxGUyywdQAyMM4
         796xjxHI3Vr8NboQsJ9HrpC5YpYB6rmTMq7PJQaSpdRN8andoj9cHWyJWNbnHXZepw0N
         cblWK4PTfiQBXPTcaXzB43xJKI5Cyj5fF5Ebyy0KO01Tt5L3lAYWrJhUtLqjvY4YZcxA
         BvDDIsNY3wfBILSAQzjCF07Vv43Z5FN0GxDS4lO/DlFVN5IQujnhGQM5eRkvYN0dz1+V
         to2g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533Z6VKZaxVVFqmZceCb+nK0GJKnkCFMQcmO6IjygWF1mwtVd7Rm
	M4727KRYtkELAYEEzH9mHg4=
X-Google-Smtp-Source: ABdhPJzuepLsU2xXTfL/5k/o3CSCd5LitH39FhsaEpP5GDfSGkdGz6haEVb1AdIv+JkgZjL/uKfQ1Q==
X-Received: by 2002:a05:6a00:72b:b029:218:6603:a6a9 with SMTP id 11-20020a056a00072bb02902186603a6a9mr18012605pfm.78.1618100022965;
        Sat, 10 Apr 2021 17:13:42 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:903:22c8:: with SMTP id y8ls5709072plg.2.gmail; Sat, 10
 Apr 2021 17:13:42 -0700 (PDT)
X-Received: by 2002:a17:902:9f94:b029:e9:68a3:8551 with SMTP id g20-20020a1709029f94b02900e968a38551mr17956357plq.35.1618100022356;
        Sat, 10 Apr 2021 17:13:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618100022; cv=none;
        d=google.com; s=arc-20160816;
        b=hArNtea2QoZNjsOuKSvbBRPLeGqy9VSvTkJ6wTSDhwCdgwNl1gzaDWC3wk2eUI9mFB
         DdSKb5DtmMJn+cHLoR930ceX1XA/5a0BEJQtihZaSuHheyDFrGSI5zpN0MtJsixCcsHg
         HoeHWBE//eTLTckr8zALhsBJDxCsg1EZ+TNAWcJUpCT7RKjArBmCCz0iWTsVuA8L7EhZ
         9Nl6nSHbft8Sc413u2K/fTTM6Yi9Fh5c+KwenP8fIbyCCJ4tXjP3hD7VSfT6sC6JFW15
         xiqtcdgUywS0+AbFq61jkblmbfnrLc+h81jHA/R1X29ek8cjH2wKYQHeWLPI5m6Ehs1y
         RFaw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=RZdaM+iiXFSgvBX00WF/sVK1IUXqp548l96ldixxg60=;
        b=ANNI2I23i+byu6aXJ0eD3nJ0hzoMRKDBlxhFZoVOvU5VdkJiYhveaIUE/WWkIE7uBR
         2ZVB4EMz90cwOrSO5Z84y5s1x0kDSPnVmYTWJvUslyQC/1xOscHPZEoUWEbRpq1EFK7X
         MdgYLB9+qiViaZO0WSaKHVhJ3azuiHYaGzkKXYo3O6/PucLgufZfcQ6v8R71y2CHQavj
         RZ4OQWT4vzwAEC8FrSlqI1foimOwaL0+9926og09SGbdWfyYY/KJ/z600V+2l7dmtyHg
         k/d6GTrP4E0v0ZsjZIja1aW2nbuoDn9pSajam6HxtyY0i+3xVsKo63ubAQ2AaEGpbIUv
         iPWA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.65 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga03.intel.com (mga03.intel.com. [134.134.136.65])
        by gmr-mx.google.com with ESMTPS id k8si1299611pjq.1.2021.04.10.17.13.42
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 10 Apr 2021 17:13:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.65 as permitted sender) client-ip=134.134.136.65;
IronPort-SDR: 6jGMtBZ/sevHkV38/s06weL6QcmUEprThgf70hLlh7KyrCifcAkZHGR8AplRk1y8fIB8btYCwL
 Lhp/Qf/95p/Q==
X-IronPort-AV: E=McAfee;i="6000,8403,9950"; a="194001390"
X-IronPort-AV: E=Sophos;i="5.82,213,1613462400"; 
   d="gz'50?scan'50,208,50";a="194001390"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
  by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 10 Apr 2021 17:13:41 -0700
IronPort-SDR: OZmWTeaH6shjFlO7nFMtUE4XlrUKgECSHywkG8j5RVt1k6GYFUtTF3JQefBvLuqnxL5S1wBfrM
 St3jovrHMK0w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,213,1613462400"; 
   d="gz'50?scan'50,208,50";a="459669953"
Received: from lkp-server01.sh.intel.com (HELO 69d8fcc516b7) ([10.239.97.150])
  by orsmga001.jf.intel.com with ESMTP; 10 Apr 2021 17:13:39 -0700
Received: from kbuild by 69d8fcc516b7 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1lVNjO-000IjM-Sz; Sun, 11 Apr 2021 00:13:38 +0000
Date: Sun, 11 Apr 2021 08:13:00 +0800
From: kernel test robot <lkp@intel.com>
To: Bhaumik Bhatt <bbhatt@codeaurora.org>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: drivers/bus/mhi/core/pm.c:740:6: warning: stack frame size of 1408
 bytes in function 'mhi_pm_st_worker'
Message-ID: <202104110852.208bgtwC-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="82I3+IH0IqGh5yIs"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 134.134.136.65 as permitted
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


--82I3+IH0IqGh5yIs
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
head:   52e44129fba5cfc4e351fdb5e45849afc74d9a53
commit: 556bbb442bbb44f429dbaa9f8b48e0b4cda6e088 bus: mhi: core: Separate system error and power down handling
date:   5 months ago
config: powerpc-randconfig-r024-20210411 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project dd453a1389b6a7e6d9214b449d3c54981b1a89b6)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install powerpc cross compiling tool for clang build
        # apt-get install binutils-powerpc-linux-gnu
        # https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=556bbb442bbb44f429dbaa9f8b48e0b4cda6e088
        git remote add linus https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
        git fetch --no-tags linus master
        git checkout 556bbb442bbb44f429dbaa9f8b48e0b4cda6e088
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=powerpc 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

>> drivers/bus/mhi/core/pm.c:740:6: warning: stack frame size of 1408 bytes in function 'mhi_pm_st_worker' [-Wframe-larger-than=]
   void mhi_pm_st_worker(struct work_struct *work)
        ^
   1 warning generated.


vim +/mhi_pm_st_worker +740 drivers/bus/mhi/core/pm.c

a6e2e3522f2914 Manivannan Sadhasivam 2020-02-20  738  
a6e2e3522f2914 Manivannan Sadhasivam 2020-02-20  739  /* Device State Transition worker */
a6e2e3522f2914 Manivannan Sadhasivam 2020-02-20 @740  void mhi_pm_st_worker(struct work_struct *work)
a6e2e3522f2914 Manivannan Sadhasivam 2020-02-20  741  {
a6e2e3522f2914 Manivannan Sadhasivam 2020-02-20  742  	struct state_transition *itr, *tmp;
a6e2e3522f2914 Manivannan Sadhasivam 2020-02-20  743  	LIST_HEAD(head);
a6e2e3522f2914 Manivannan Sadhasivam 2020-02-20  744  	struct mhi_controller *mhi_cntrl = container_of(work,
a6e2e3522f2914 Manivannan Sadhasivam 2020-02-20  745  							struct mhi_controller,
a6e2e3522f2914 Manivannan Sadhasivam 2020-02-20  746  							st_worker);
a6e2e3522f2914 Manivannan Sadhasivam 2020-02-20  747  	struct device *dev = &mhi_cntrl->mhi_dev->dev;
a6e2e3522f2914 Manivannan Sadhasivam 2020-02-20  748  
a6e2e3522f2914 Manivannan Sadhasivam 2020-02-20  749  	spin_lock_irq(&mhi_cntrl->transition_lock);
a6e2e3522f2914 Manivannan Sadhasivam 2020-02-20  750  	list_splice_tail_init(&mhi_cntrl->transition_list, &head);
a6e2e3522f2914 Manivannan Sadhasivam 2020-02-20  751  	spin_unlock_irq(&mhi_cntrl->transition_lock);
a6e2e3522f2914 Manivannan Sadhasivam 2020-02-20  752  
a6e2e3522f2914 Manivannan Sadhasivam 2020-02-20  753  	list_for_each_entry_safe(itr, tmp, &head, node) {
a6e2e3522f2914 Manivannan Sadhasivam 2020-02-20  754  		list_del(&itr->node);
a6e2e3522f2914 Manivannan Sadhasivam 2020-02-20  755  		dev_dbg(dev, "Handling state transition: %s\n",
a6e2e3522f2914 Manivannan Sadhasivam 2020-02-20  756  			TO_DEV_STATE_TRANS_STR(itr->state));
a6e2e3522f2914 Manivannan Sadhasivam 2020-02-20  757  
a6e2e3522f2914 Manivannan Sadhasivam 2020-02-20  758  		switch (itr->state) {
a6e2e3522f2914 Manivannan Sadhasivam 2020-02-20  759  		case DEV_ST_TRANSITION_PBL:
a6e2e3522f2914 Manivannan Sadhasivam 2020-02-20  760  			write_lock_irq(&mhi_cntrl->pm_lock);
a6e2e3522f2914 Manivannan Sadhasivam 2020-02-20  761  			if (MHI_REG_ACCESS_VALID(mhi_cntrl->pm_state))
a6e2e3522f2914 Manivannan Sadhasivam 2020-02-20  762  				mhi_cntrl->ee = mhi_get_exec_env(mhi_cntrl);
a6e2e3522f2914 Manivannan Sadhasivam 2020-02-20  763  			write_unlock_irq(&mhi_cntrl->pm_lock);
a6e2e3522f2914 Manivannan Sadhasivam 2020-02-20  764  			if (MHI_IN_PBL(mhi_cntrl->ee))
560e3a045961ed Bhaumik Bhatt         2020-05-21  765  				mhi_fw_load_handler(mhi_cntrl);
a6e2e3522f2914 Manivannan Sadhasivam 2020-02-20  766  			break;
a6e2e3522f2914 Manivannan Sadhasivam 2020-02-20  767  		case DEV_ST_TRANSITION_SBL:
a6e2e3522f2914 Manivannan Sadhasivam 2020-02-20  768  			write_lock_irq(&mhi_cntrl->pm_lock);
a6e2e3522f2914 Manivannan Sadhasivam 2020-02-20  769  			mhi_cntrl->ee = MHI_EE_SBL;
a6e2e3522f2914 Manivannan Sadhasivam 2020-02-20  770  			write_unlock_irq(&mhi_cntrl->pm_lock);
a6e2e3522f2914 Manivannan Sadhasivam 2020-02-20  771  			/*
a6e2e3522f2914 Manivannan Sadhasivam 2020-02-20  772  			 * The MHI devices are only created when the client
a6e2e3522f2914 Manivannan Sadhasivam 2020-02-20  773  			 * device switches its Execution Environment (EE) to
a6e2e3522f2914 Manivannan Sadhasivam 2020-02-20  774  			 * either SBL or AMSS states
a6e2e3522f2914 Manivannan Sadhasivam 2020-02-20  775  			 */
a6e2e3522f2914 Manivannan Sadhasivam 2020-02-20  776  			mhi_create_devices(mhi_cntrl);
a6e2e3522f2914 Manivannan Sadhasivam 2020-02-20  777  			break;
a6e2e3522f2914 Manivannan Sadhasivam 2020-02-20  778  		case DEV_ST_TRANSITION_MISSION_MODE:
a6e2e3522f2914 Manivannan Sadhasivam 2020-02-20  779  			mhi_pm_mission_mode_transition(mhi_cntrl);
a6e2e3522f2914 Manivannan Sadhasivam 2020-02-20  780  			break;
a6e2e3522f2914 Manivannan Sadhasivam 2020-02-20  781  		case DEV_ST_TRANSITION_READY:
a6e2e3522f2914 Manivannan Sadhasivam 2020-02-20  782  			mhi_ready_state_transition(mhi_cntrl);
a6e2e3522f2914 Manivannan Sadhasivam 2020-02-20  783  			break;
bc7ccce5a5192c Hemant Kumar          2020-05-21  784  		case DEV_ST_TRANSITION_SYS_ERR:
556bbb442bbb44 Bhaumik Bhatt         2020-11-09  785  			mhi_pm_sys_error_transition(mhi_cntrl);
bc7ccce5a5192c Hemant Kumar          2020-05-21  786  			break;
3c1bd0047124f5 Hemant Kumar          2020-05-21  787  		case DEV_ST_TRANSITION_DISABLE:
3c1bd0047124f5 Hemant Kumar          2020-05-21  788  			mhi_pm_disable_transition
3c1bd0047124f5 Hemant Kumar          2020-05-21  789  				(mhi_cntrl, MHI_PM_SHUTDOWN_PROCESS);
3c1bd0047124f5 Hemant Kumar          2020-05-21  790  			break;
a6e2e3522f2914 Manivannan Sadhasivam 2020-02-20  791  		default:
a6e2e3522f2914 Manivannan Sadhasivam 2020-02-20  792  			break;
a6e2e3522f2914 Manivannan Sadhasivam 2020-02-20  793  		}
a6e2e3522f2914 Manivannan Sadhasivam 2020-02-20  794  		kfree(itr);
a6e2e3522f2914 Manivannan Sadhasivam 2020-02-20  795  	}
a6e2e3522f2914 Manivannan Sadhasivam 2020-02-20  796  }
a6e2e3522f2914 Manivannan Sadhasivam 2020-02-20  797  

:::::: The code at line 740 was first introduced by commit
:::::: a6e2e3522f29141b95c1ef8580c665a3582b3e66 bus: mhi: core: Add support for PM state transitions

:::::: TO: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
:::::: CC: Greg Kroah-Hartman <gregkh@linuxfoundation.org>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202104110852.208bgtwC-lkp%40intel.com.

--82I3+IH0IqGh5yIs
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--82I3+IH0IqGh5yIs--
