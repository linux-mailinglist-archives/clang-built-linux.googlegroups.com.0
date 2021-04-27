Return-Path: <clang-built-linux+bncBC4LXIPCY4NRB24KUGCAMGQEIXRHQWY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3a.google.com (mail-qv1-xf3a.google.com [IPv6:2607:f8b0:4864:20::f3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 25D2036CA17
	for <lists+clang-built-linux@lfdr.de>; Tue, 27 Apr 2021 19:10:05 +0200 (CEST)
Received: by mail-qv1-xf3a.google.com with SMTP id p20-20020a0ce1940000b02901be3272e620sf1374103qvl.10
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Apr 2021 10:10:05 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1619543404; cv=pass;
        d=google.com; s=arc-20160816;
        b=ZvnOr95mt8RFg2TtEK9JyHaPk69mZDbtdQpd8+57lDWHz/9C2Q/GXD7JteaFUb+5Jl
         XFP6KMmYQMOtJBsYBYx8S5dNmsjr9azG7g6OhkTYTuBkovbGBOkuMUhy2Hf82+W78ZrW
         ynynzfOY5PNqrS92XoGkbzoc7gNXFZ3TvS311B48fNsvJl4rLV5w5cTBFTMr6jMGcJzf
         pqSzbGEbTsxWUCDe+iEdIVsYncXg67oZ4GHIzn35WuRJEmJIWvF5yAb9BSmUdQL7OETR
         8npnlLbs2zxNAnIi8r9Jl4TxQgHU56Rv1KQFRTWxvIv4Sh4AvnW2gZrSq4e7fAFj87Aa
         +vSw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=vGsIh1abVADTdpOG8dlha6+I4+tqTRsJlot5/KPslWc=;
        b=aB27xNts4n0Ib0YMSSEUPeyywLVvh8dqP81wzmF+maJh4PWJlC2J+HXKhFH6cBlJTH
         fNO0pX+IIzzT6t+5y5xxT4TPUznFmf4FgkvWU57YLWwDRvWiex0WPKCO+1Kt3+pIL8u/
         VRAOPdmSfiQrpu/Xz64JtDtzdO4mu1LMsmDxFoGaFAwkn/NwMWnRX0aobUgNNsyf2nlj
         wLKkzaqSsiZZItyATYhQuDTrv35gC/PYRF0G4qf23Jz1GJqJXWjJy3x1epNexBw0G9ZC
         w0GR8NHGmLV/WaQQsmFOO9JgS01ixccQPoZQZZ6IVLRRiPSb/tWmJFWq065E449GSN2z
         uaEA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.20 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vGsIh1abVADTdpOG8dlha6+I4+tqTRsJlot5/KPslWc=;
        b=MejXl745fAwsCj7aFYt2mEvA/RSZEYVUQcmjk7Y+gamkH/fmBzWLb37/hwHG+m7/ss
         vmhwK8DBuARH1P3K3N6cncCo2754vz9+hOdaUMaWUHmyAreSHxzAsD3hjjhh0x7yhaCC
         GNV2Lh4bD31fEbYeWp/SWcKVn2PzSiQFVSTkMmEX6PPwRoilo2KiN+xPoVQimMc83k1g
         PalVwh55DbJD0k7eqqK79pkB7kfjPM9XbumqCdbx4Eg5vchbkMWat5hM5a/QDKcGNQkS
         txO4aCB7mkPpBhc9//+B1XtFg8gkm2hMdOXzfJs4qEZsaN1H7if5+0lKt1smX/K5uEMX
         hSTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:references:mime-version:content-disposition
         :in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vGsIh1abVADTdpOG8dlha6+I4+tqTRsJlot5/KPslWc=;
        b=KRGbKbgRPw2fMHEToQckMb+deF56IkPbtWaLHf6Zdu0LsYFtd6qO2FBpj9BAQmblZT
         k6DTqbwVZvX/iNrCzIRZI02lBnA1vWeiXD1CuDU7YJ8vvvjjhkSsM25PUnFnS3rVA22J
         p0zTpMmcER46rw9SO+KTPpsgfD43m55wi5GGzlubvaVtIdc+d0In3k3AnEoh0KZMfO9V
         O3l76ygbJtXQYnZ7LBJwdjKxcJltc93UJA58NCFWrEitRy2ATYxmvTYx08GUBpC6pwxC
         Ul2uW+OJ5jHJ1O/08xFEWu3vIf8x6xiBUhwDSrxuYdbvKZ4zA7ewtceEpmROFInl0PEu
         Eh6w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531GsGOcf2nonF19w1YWEL+gOwyhDSYMpjtIY8szv3H0m50fvpTJ
	YFWbF63aylH08K1asS+vPkM=
X-Google-Smtp-Source: ABdhPJxBljCpK9tXINB5QuBkE0VKHN0urs5KJzxn/MOu2RpZH9T+7JF7MCElRbAjYLEe/Xw3hu/SOA==
X-Received: by 2002:ae9:dc47:: with SMTP id q68mr24355956qkf.197.1619543403862;
        Tue, 27 Apr 2021 10:10:03 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:202:: with SMTP id k2ls8798121qtg.5.gmail; Tue, 27 Apr
 2021 10:10:03 -0700 (PDT)
X-Received: by 2002:ac8:5283:: with SMTP id s3mr12844016qtn.66.1619543403128;
        Tue, 27 Apr 2021 10:10:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619543403; cv=none;
        d=google.com; s=arc-20160816;
        b=gBZXhHAM9v4Qrft4myYleI5NLUpUcB3iZgVwo5jBZZpaGhvQiYEaKEqPn5Z15IwB2U
         Tzu+t2t8v+cyZSfnKhx7x5K2mWfw0mOC1EiMfq87I9+VzK10IduGHogBYw4bgMMY4Z/4
         rZo8EFZsKAyvpnFQwnsbYIFczpTLXGCPoAXIxx9QkNRZG9dhVZZZsx6W4owRGTEJ0MO6
         876vnLHebsUVMeRsvlSFUddkr2wFjssl9Nfg8O+KTk2VNUkUUo7z6R2wDcs14br6UYZP
         5QCiLxZqC5jtZJZJ8eUZuexvwuH3ChDoUqApsROjBOCQmNTqihlKuf+jRexT6Nxs8lK9
         bUkA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:ironport-sdr:ironport-sdr;
        bh=D//h6Yi81bLBSHp4uUyqH4S9cLt0IiuldOFMS/kpiOc=;
        b=JiBxPhCYtZ9Dk/6EKStMtS9EBDImjMSwfEdKeDEIvLk1WUXq0GLT3X6/lDh+1J/b0C
         UNA2qFbO0yS6yba+bMG4/+IyzKVkMRci3bJ01zdB3MRq25rATE+UJ24lK2U4d1JDHtOB
         N5Rf+0dRItoc95FpwQWVr37QZsN1D5ao/kNCdel8yc6OcDF0SlgFQc3IUDv2i7Zvi0PB
         +8CMdg4q3l6JcIgbnE7W6/JGFKlhDcQNI8iBu+3JHgZDG9CTOIFtj/4RFJVE6I/QgyHo
         Ap7DW6VK2SS5LkalfEhuqGXt5xNPPmAcr4Mblsvqy8sksL7GYUiZYiP2OTYivJcxj2Hg
         /uNQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.20 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga02.intel.com (mga02.intel.com. [134.134.136.20])
        by gmr-mx.google.com with ESMTPS id n63si1972409qkn.7.2021.04.27.10.10.02
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 27 Apr 2021 10:10:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.20 as permitted sender) client-ip=134.134.136.20;
IronPort-SDR: 8ZXo1ySzIFXZcue6gGZQVbGsjP2lopFhNtq83QefQbIqvZMJY/qrRdk5QblbVkBkAz6mohQITr
 RjEo/s35jU2w==
X-IronPort-AV: E=McAfee;i="6200,9189,9967"; a="183690899"
X-IronPort-AV: E=Sophos;i="5.82,254,1613462400"; 
   d="gz'50?scan'50,208,50";a="183690899"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
  by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 27 Apr 2021 10:09:59 -0700
IronPort-SDR: 9dsv1dkchoYm8Cqiyi7NBl9joNvmWrAzWr6UVYMdMJHQrGo/IBhtVsr0/RAU60H0NOl715QiF/
 eqvAjng1f1Bg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,254,1613462400"; 
   d="gz'50?scan'50,208,50";a="386218613"
Received: from lkp-server01.sh.intel.com (HELO a48ff7ddd223) ([10.239.97.150])
  by orsmga003.jf.intel.com with ESMTP; 27 Apr 2021 10:09:55 -0700
Received: from kbuild by a48ff7ddd223 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1lbRDe-0006ae-CT; Tue, 27 Apr 2021 17:09:54 +0000
Date: Wed, 28 Apr 2021 01:09:25 +0800
From: kernel test robot <lkp@intel.com>
To: Yang Li <yang.lee@linux.alibaba.com>, stuart.w.hayes@gmail.com
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	hdegoede@redhat.com, mgross@linux.intel.com,
	platform-driver-x86@vger.kernel.org, linux-kernel@vger.kernel.org,
	Yang Li <yang.lee@linux.alibaba.com>
Subject: Re: [PATCH] platform/x86: drop unneeded assignment in
 host_control_smi()
Message-ID: <202104280102.IwNXb7uc-lkp@intel.com>
References: <1619523119-112342-1-git-send-email-yang.lee@linux.alibaba.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="envbJBWh7q8WU6mo"
Content-Disposition: inline
In-Reply-To: <1619523119-112342-1-git-send-email-yang.lee@linux.alibaba.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 134.134.136.20 as permitted
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


--envbJBWh7q8WU6mo
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi Yang,

Thank you for the patch! Perhaps something to improve:

[auto build test WARNING on linus/master]
[also build test WARNING on v5.12 next-20210427]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch]

url:    https://github.com/0day-ci/linux/commits/Yang-Li/platform-x86-drop-unneeded-assignment-in-host_control_smi/20210427-193333
base:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git 4a0225c3d208cfa6e4550f2210ffd9114a952a81
config: x86_64-randconfig-r022-20210427 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project d7308da4a5aaded897a7e0c06e7e88d81fc64879)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install x86_64 cross compiling tool for clang build
        # apt-get install binutils-x86-64-linux-gnu
        # https://github.com/0day-ci/linux/commit/b211940b2feb481f64f80b8de9fe1c2e6a9f2b56
        git remote add linux-review https://github.com/0day-ci/linux
        git fetch --no-tags linux-review Yang-Li/platform-x86-drop-unneeded-assignment-in-host_control_smi/20210427-193333
        git checkout b211940b2feb481f64f80b8de9fe1c2e6a9f2b56
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross W=1 ARCH=x86_64 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

>> drivers/platform/x86/dell/dcdbas.c:398:10: warning: result of comparison of constant -1 with expression of type 'unsigned char' is always false [-Wtautological-constant-out-of-range-compare]
                          == ESM_STATUS_CMD_UNSUCCESSFUL) {
                          ^  ~~~~~~~~~~~~~~~~~~~~~~~~~~~
   1 warning generated.


vim +398 drivers/platform/x86/dell/dcdbas.c

90563ec4129f14 drivers/firmware/dcdbas.c          Doug Warzecha   2005-09-06  355  
90563ec4129f14 drivers/firmware/dcdbas.c          Doug Warzecha   2005-09-06  356  /**
90563ec4129f14 drivers/firmware/dcdbas.c          Doug Warzecha   2005-09-06  357   * host_control_smi: generate host control SMI
90563ec4129f14 drivers/firmware/dcdbas.c          Doug Warzecha   2005-09-06  358   *
90563ec4129f14 drivers/firmware/dcdbas.c          Doug Warzecha   2005-09-06  359   * Caller must set up the host control command in smi_data_buf.
90563ec4129f14 drivers/firmware/dcdbas.c          Doug Warzecha   2005-09-06  360   */
90563ec4129f14 drivers/firmware/dcdbas.c          Doug Warzecha   2005-09-06  361  static int host_control_smi(void)
90563ec4129f14 drivers/firmware/dcdbas.c          Doug Warzecha   2005-09-06  362  {
90563ec4129f14 drivers/firmware/dcdbas.c          Doug Warzecha   2005-09-06  363  	struct apm_cmd *apm_cmd;
90563ec4129f14 drivers/firmware/dcdbas.c          Doug Warzecha   2005-09-06  364  	u8 *data;
90563ec4129f14 drivers/firmware/dcdbas.c          Doug Warzecha   2005-09-06  365  	unsigned long flags;
90563ec4129f14 drivers/firmware/dcdbas.c          Doug Warzecha   2005-09-06  366  	u32 num_ticks;
90563ec4129f14 drivers/firmware/dcdbas.c          Doug Warzecha   2005-09-06  367  	s8 cmd_status;
90563ec4129f14 drivers/firmware/dcdbas.c          Doug Warzecha   2005-09-06  368  	u8 index;
90563ec4129f14 drivers/firmware/dcdbas.c          Doug Warzecha   2005-09-06  369  
90563ec4129f14 drivers/firmware/dcdbas.c          Doug Warzecha   2005-09-06  370  	apm_cmd = (struct apm_cmd *)smi_data_buf;
90563ec4129f14 drivers/firmware/dcdbas.c          Doug Warzecha   2005-09-06  371  	apm_cmd->status = ESM_STATUS_CMD_UNSUCCESSFUL;
90563ec4129f14 drivers/firmware/dcdbas.c          Doug Warzecha   2005-09-06  372  
90563ec4129f14 drivers/firmware/dcdbas.c          Doug Warzecha   2005-09-06  373  	switch (host_control_smi_type) {
90563ec4129f14 drivers/firmware/dcdbas.c          Doug Warzecha   2005-09-06  374  	case HC_SMITYPE_TYPE1:
90563ec4129f14 drivers/firmware/dcdbas.c          Doug Warzecha   2005-09-06  375  		spin_lock_irqsave(&rtc_lock, flags);
90563ec4129f14 drivers/firmware/dcdbas.c          Doug Warzecha   2005-09-06  376  		/* write SMI data buffer physical address */
90563ec4129f14 drivers/firmware/dcdbas.c          Doug Warzecha   2005-09-06  377  		data = (u8 *)&smi_data_buf_phys_addr;
90563ec4129f14 drivers/firmware/dcdbas.c          Doug Warzecha   2005-09-06  378  		for (index = PE1300_CMOS_CMD_STRUCT_PTR;
90563ec4129f14 drivers/firmware/dcdbas.c          Doug Warzecha   2005-09-06  379  		     index < (PE1300_CMOS_CMD_STRUCT_PTR + 4);
90563ec4129f14 drivers/firmware/dcdbas.c          Doug Warzecha   2005-09-06  380  		     index++, data++) {
90563ec4129f14 drivers/firmware/dcdbas.c          Doug Warzecha   2005-09-06  381  			outb(index,
90563ec4129f14 drivers/firmware/dcdbas.c          Doug Warzecha   2005-09-06  382  			     (CMOS_BASE_PORT + CMOS_PAGE2_INDEX_PORT_PIIX4));
90563ec4129f14 drivers/firmware/dcdbas.c          Doug Warzecha   2005-09-06  383  			outb(*data,
90563ec4129f14 drivers/firmware/dcdbas.c          Doug Warzecha   2005-09-06  384  			     (CMOS_BASE_PORT + CMOS_PAGE2_DATA_PORT_PIIX4));
90563ec4129f14 drivers/firmware/dcdbas.c          Doug Warzecha   2005-09-06  385  		}
90563ec4129f14 drivers/firmware/dcdbas.c          Doug Warzecha   2005-09-06  386  
90563ec4129f14 drivers/firmware/dcdbas.c          Doug Warzecha   2005-09-06  387  		/* first set status to -1 as called by spec */
90563ec4129f14 drivers/firmware/dcdbas.c          Doug Warzecha   2005-09-06  388  		cmd_status = ESM_STATUS_CMD_UNSUCCESSFUL;
90563ec4129f14 drivers/firmware/dcdbas.c          Doug Warzecha   2005-09-06  389  		outb((u8) cmd_status, PCAT_APM_STATUS_PORT);
90563ec4129f14 drivers/firmware/dcdbas.c          Doug Warzecha   2005-09-06  390  
90563ec4129f14 drivers/firmware/dcdbas.c          Doug Warzecha   2005-09-06  391  		/* generate SMM call */
90563ec4129f14 drivers/firmware/dcdbas.c          Doug Warzecha   2005-09-06  392  		outb(ESM_APM_CMD, PCAT_APM_CONTROL_PORT);
90563ec4129f14 drivers/firmware/dcdbas.c          Doug Warzecha   2005-09-06  393  		spin_unlock_irqrestore(&rtc_lock, flags);
90563ec4129f14 drivers/firmware/dcdbas.c          Doug Warzecha   2005-09-06  394  
90563ec4129f14 drivers/firmware/dcdbas.c          Doug Warzecha   2005-09-06  395  		/* wait a few to see if it executed */
90563ec4129f14 drivers/firmware/dcdbas.c          Doug Warzecha   2005-09-06  396  		num_ticks = TIMEOUT_USEC_SHORT_SEMA_BLOCKING;
b211940b2feb48 drivers/platform/x86/dell/dcdbas.c Yang Li         2021-04-27  397  		while (inb(PCAT_APM_STATUS_PORT)
90563ec4129f14 drivers/firmware/dcdbas.c          Doug Warzecha   2005-09-06 @398  		       == ESM_STATUS_CMD_UNSUCCESSFUL) {
90563ec4129f14 drivers/firmware/dcdbas.c          Doug Warzecha   2005-09-06  399  			num_ticks--;
90563ec4129f14 drivers/firmware/dcdbas.c          Doug Warzecha   2005-09-06  400  			if (num_ticks == EXPIRED_TIMER)
90563ec4129f14 drivers/firmware/dcdbas.c          Doug Warzecha   2005-09-06  401  				return -ETIME;
90563ec4129f14 drivers/firmware/dcdbas.c          Doug Warzecha   2005-09-06  402  		}
90563ec4129f14 drivers/firmware/dcdbas.c          Doug Warzecha   2005-09-06  403  		break;
90563ec4129f14 drivers/firmware/dcdbas.c          Doug Warzecha   2005-09-06  404  
90563ec4129f14 drivers/firmware/dcdbas.c          Doug Warzecha   2005-09-06  405  	case HC_SMITYPE_TYPE2:
90563ec4129f14 drivers/firmware/dcdbas.c          Doug Warzecha   2005-09-06  406  	case HC_SMITYPE_TYPE3:
90563ec4129f14 drivers/firmware/dcdbas.c          Doug Warzecha   2005-09-06  407  		spin_lock_irqsave(&rtc_lock, flags);
90563ec4129f14 drivers/firmware/dcdbas.c          Doug Warzecha   2005-09-06  408  		/* write SMI data buffer physical address */
90563ec4129f14 drivers/firmware/dcdbas.c          Doug Warzecha   2005-09-06  409  		data = (u8 *)&smi_data_buf_phys_addr;
90563ec4129f14 drivers/firmware/dcdbas.c          Doug Warzecha   2005-09-06  410  		for (index = PE1400_CMOS_CMD_STRUCT_PTR;
90563ec4129f14 drivers/firmware/dcdbas.c          Doug Warzecha   2005-09-06  411  		     index < (PE1400_CMOS_CMD_STRUCT_PTR + 4);
90563ec4129f14 drivers/firmware/dcdbas.c          Doug Warzecha   2005-09-06  412  		     index++, data++) {
90563ec4129f14 drivers/firmware/dcdbas.c          Doug Warzecha   2005-09-06  413  			outb(index, (CMOS_BASE_PORT + CMOS_PAGE1_INDEX_PORT));
90563ec4129f14 drivers/firmware/dcdbas.c          Doug Warzecha   2005-09-06  414  			outb(*data, (CMOS_BASE_PORT + CMOS_PAGE1_DATA_PORT));
90563ec4129f14 drivers/firmware/dcdbas.c          Doug Warzecha   2005-09-06  415  		}
90563ec4129f14 drivers/firmware/dcdbas.c          Doug Warzecha   2005-09-06  416  
90563ec4129f14 drivers/firmware/dcdbas.c          Doug Warzecha   2005-09-06  417  		/* generate SMM call */
90563ec4129f14 drivers/firmware/dcdbas.c          Doug Warzecha   2005-09-06  418  		if (host_control_smi_type == HC_SMITYPE_TYPE3)
90563ec4129f14 drivers/firmware/dcdbas.c          Doug Warzecha   2005-09-06  419  			outb(ESM_APM_CMD, PCAT_APM_CONTROL_PORT);
90563ec4129f14 drivers/firmware/dcdbas.c          Doug Warzecha   2005-09-06  420  		else
90563ec4129f14 drivers/firmware/dcdbas.c          Doug Warzecha   2005-09-06  421  			outb(ESM_APM_CMD, PE1400_APM_CONTROL_PORT);
90563ec4129f14 drivers/firmware/dcdbas.c          Doug Warzecha   2005-09-06  422  
90563ec4129f14 drivers/firmware/dcdbas.c          Doug Warzecha   2005-09-06  423  		/* restore RTC index pointer since it was written to above */
90563ec4129f14 drivers/firmware/dcdbas.c          Doug Warzecha   2005-09-06  424  		CMOS_READ(RTC_REG_C);
90563ec4129f14 drivers/firmware/dcdbas.c          Doug Warzecha   2005-09-06  425  		spin_unlock_irqrestore(&rtc_lock, flags);
90563ec4129f14 drivers/firmware/dcdbas.c          Doug Warzecha   2005-09-06  426  
90563ec4129f14 drivers/firmware/dcdbas.c          Doug Warzecha   2005-09-06  427  		/* read control port back to serialize write */
90563ec4129f14 drivers/firmware/dcdbas.c          Doug Warzecha   2005-09-06  428  		cmd_status = inb(PE1400_APM_CONTROL_PORT);
90563ec4129f14 drivers/firmware/dcdbas.c          Doug Warzecha   2005-09-06  429  
90563ec4129f14 drivers/firmware/dcdbas.c          Doug Warzecha   2005-09-06  430  		/* wait a few to see if it executed */
90563ec4129f14 drivers/firmware/dcdbas.c          Doug Warzecha   2005-09-06  431  		num_ticks = TIMEOUT_USEC_SHORT_SEMA_BLOCKING;
90563ec4129f14 drivers/firmware/dcdbas.c          Doug Warzecha   2005-09-06  432  		while (apm_cmd->status == ESM_STATUS_CMD_UNSUCCESSFUL) {
90563ec4129f14 drivers/firmware/dcdbas.c          Doug Warzecha   2005-09-06  433  			num_ticks--;
90563ec4129f14 drivers/firmware/dcdbas.c          Doug Warzecha   2005-09-06  434  			if (num_ticks == EXPIRED_TIMER)
90563ec4129f14 drivers/firmware/dcdbas.c          Doug Warzecha   2005-09-06  435  				return -ETIME;
90563ec4129f14 drivers/firmware/dcdbas.c          Doug Warzecha   2005-09-06  436  		}
90563ec4129f14 drivers/firmware/dcdbas.c          Doug Warzecha   2005-09-06  437  		break;
90563ec4129f14 drivers/firmware/dcdbas.c          Doug Warzecha   2005-09-06  438  
90563ec4129f14 drivers/firmware/dcdbas.c          Doug Warzecha   2005-09-06  439  	default:
90563ec4129f14 drivers/firmware/dcdbas.c          Doug Warzecha   2005-09-06  440  		dev_dbg(&dcdbas_pdev->dev, "%s: invalid SMI type %u\n",
eecd58536a9750 drivers/firmware/dcdbas.c          Harvey Harrison 2008-04-29  441  			__func__, host_control_smi_type);
90563ec4129f14 drivers/firmware/dcdbas.c          Doug Warzecha   2005-09-06  442  		return -ENOSYS;
90563ec4129f14 drivers/firmware/dcdbas.c          Doug Warzecha   2005-09-06  443  	}
90563ec4129f14 drivers/firmware/dcdbas.c          Doug Warzecha   2005-09-06  444  
90563ec4129f14 drivers/firmware/dcdbas.c          Doug Warzecha   2005-09-06  445  	return 0;
90563ec4129f14 drivers/firmware/dcdbas.c          Doug Warzecha   2005-09-06  446  }
90563ec4129f14 drivers/firmware/dcdbas.c          Doug Warzecha   2005-09-06  447  

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202104280102.IwNXb7uc-lkp%40intel.com.

--envbJBWh7q8WU6mo
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--envbJBWh7q8WU6mo--
