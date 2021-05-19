Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBEWXSWCQMGQEH4J6AZY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103c.google.com (mail-pj1-x103c.google.com [IPv6:2607:f8b0:4864:20::103c])
	by mail.lfdr.de (Postfix) with ESMTPS id D15F23896FA
	for <lists+clang-built-linux@lfdr.de>; Wed, 19 May 2021 21:48:35 +0200 (CEST)
Received: by mail-pj1-x103c.google.com with SMTP id f8-20020a17090a9b08b0290153366612f7sf7842440pjp.1
        for <lists+clang-built-linux@lfdr.de>; Wed, 19 May 2021 12:48:35 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1621453714; cv=pass;
        d=google.com; s=arc-20160816;
        b=Uve60grUhC5caFyHV81/dBMWNHBzyQfuwF2APfs4UMFq6pmhKJyPC0YYSd5Cem06gq
         5T9kqB+3f24DoGfg5/VgQ0+bWDN1PIgEEIYvna1VoCzcPBEH2DYYJtIj0XQq3ZYB6Rl2
         h6NT6NQGc9cZl3tSGOuyEMqREn7xg+iCPQtQUYzkQIqWh1BiPqyoaeFbvUUQFkK6xCiw
         xrmZFhe/AKMo/vI1F0E+6kbHcA/tsBkOZLPiwXgvVaUZTKB0msUZIMwOE/A+vXJIrxvB
         2TYTtceZUHoFA+rGpCVuSO2GJ840zck4G8Wntcv7FbfYKfRII3XpwSMsNmlbXV6iYSzq
         pG6g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=Q4WcwZZiGTpQzrC82/n4B3Gmb7BJ1PVzKYuvjSsfixQ=;
        b=XCTnCp9j2M2RvwQW51q+bLrTK4at4LBgmeGjJfxhUp8xfikiFye78rYpMLqHZUSMOO
         82ZfBPWG8DWPVxc9O3AlT73LTb2eu6kQaB84+a8a4XcxZGVgeMB6qm76T7ZRWVSeG5XD
         1cOsvarJM8l2gzIhseIlBvB1OMC13Vf6PZyLzrsvqvOelKpnCeuGslm0n+xOe1MuWiUm
         eG39Z31E8IPcl1hwWY070Qnrsdkq9fxacMK2H7NfS4r6O27upu0gW8FDlsW9/l5/qTVI
         Za5mtl0cZDx3+eGwARKy15aby6fN2Szl7tQH19NZ+i9Z/0l4QlJ7b1YHiGAbI8IBHs2f
         wSKA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.20 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Q4WcwZZiGTpQzrC82/n4B3Gmb7BJ1PVzKYuvjSsfixQ=;
        b=A5LL54bt4BSg8V0Zsy0dxONg5EwuXgEFmfRCwQImZ4c6nDhKmuZR1a9IszEQlzRl8o
         JQZhdpzK4PXeAnh8UbOiu62p5FKjF8cxFnAVsHbue6Jci7Vp7fDCtXII+ghC/eZJTfar
         aFZ/5GNIfm30zyqcGOvILzdULn1g8yrZQdegI3gU12+v4oZRN1RO0oRlA3OAY4CAo/lT
         DvxC83jXGlbGp/Rsz7HRAwfMTqb2OVKg6mzlv9ZMmeKnLaFczX5eJry3ozgSUR33uvE9
         SYcaNAYuCkm6CqcxRZJb4n7/xU1QcdcU7GavNmcxc5DGtsBNBtE9JLmBPTEUyVQgyRC4
         vMIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Q4WcwZZiGTpQzrC82/n4B3Gmb7BJ1PVzKYuvjSsfixQ=;
        b=Ef7SZ3abY/mcbfNwaM6w5s51N9CF8SjDrim8HBVw647tzJSm6gzMC10kPJwSsOUvHT
         V/XYNgjP0dfjXq2Dysn3Cz903slkphlZ0Kkqa+FVMzMabUkS4v5BGvs0583b5f+dHUEN
         Jll0igrUlF8kOPuyR0OEihyDmR8C64ZhwLedq/dqHpvZcg/8T1y72zYKFPeYGdnWVkZy
         FYZ0rTWsav3r6SNLysjO/hVx3EXcYo3qC8VAdbAgVLzhg1VzAaYgaCBrePHRKgyyTTx6
         rYVgGSbGHbEFLfb7nXu3EjgREdmSJEqssLLHAb7ehyDKvpedoPre+W8HI1dVN41HD5Ms
         Jvug==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531Cs8TYlQuXV57bfTDLZler/Z9FJx8WtWc6Hra5MRuB6zpHbGhx
	WcA4bbJS7rM7WFKR7gwWdTg=
X-Google-Smtp-Source: ABdhPJzmwhgh8YxnDFAIlA7/bpqg7M2Z/3CArNAKxhpIlJ0Wo4XTOt7i/vNW6Pjrn50vgmeHr+JS1w==
X-Received: by 2002:a63:6784:: with SMTP id b126mr751570pgc.209.1621453714337;
        Wed, 19 May 2021 12:48:34 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:144:: with SMTP id 62ls173144plb.11.gmail; Wed, 19
 May 2021 12:48:33 -0700 (PDT)
X-Received: by 2002:a17:90a:d0c5:: with SMTP id y5mr626834pjw.109.1621453713534;
        Wed, 19 May 2021 12:48:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1621453713; cv=none;
        d=google.com; s=arc-20160816;
        b=n+1Mv6Laael9/Amtroie+LT9R6ehLU6FiKBB/O/77oTZJp4AuG48AnN6EcfflKqQFT
         Rrqx09vS+RWevVKoGKheOLlR8f4pZ70zeSQ7FuwNsgKh7Go0oArhP9lYZMER7aCK35yq
         +wONObBjbchUnGvxC0rptpgPFor6pBqpPM7u8ATxe4fyul7cvBRV/DcKQKym6kYD4xeG
         0rQoH/7byFgGebwo1L9Ojp1pJFWTeRaQSggwes2c9EdOq4tWnArEPe+EzDBNiUQXmDc3
         JwY4O0Dct3sKec0kMX1BFfpvFbHzlcWPRNmjpSwqI1QhYD7vr6L3d2LQ7105vXWC+DL7
         izVw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=oGHUQM4qp+CtGwc6LoMqO2/qVSHCkC9n3qD2IQCjlI0=;
        b=XBLW074dEowka4VoBThcrJMCOrTVw8/Ar08q3bePaDSymZZ208p7AB3UZ9+IPcJboZ
         q3S5Roi14owHZOFZxClzIkhq2G0tWGj8/ywiEcDHeHHQMhN+8IsoN/gIdOeLf5Z4swIR
         43WIb6mtatFskLI/ZK1Pknz/vGsRfVZKW2GLRwWLShIW140kfpT3UravsdrYMvJhZ/c8
         5ScfEfyK6x5F1GjXcQw8Ch8U/19baavqxSc/THB84gEBTcnPVFeAwO1sbQJ667fw/EWM
         g4rW8V0e2ImRDRf+cESI4inaYUz3WY9nktT2tzuLoWyRuVkBoqLMmSOvujOfXDw/CQr8
         HV4w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.20 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga02.intel.com (mga02.intel.com. [134.134.136.20])
        by gmr-mx.google.com with ESMTPS id c2si63146pgb.5.2021.05.19.12.48.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 19 May 2021 12:48:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.20 as permitted sender) client-ip=134.134.136.20;
IronPort-SDR: f1/KU4PiRsh4+Icn4Lc8x1SUkkby6didcSC8ES23ZtwWl6DMKVdjNlDjejdu024erWewCjNgjS
 WqoOTc8BMIbA==
X-IronPort-AV: E=McAfee;i="6200,9189,9989"; a="188191275"
X-IronPort-AV: E=Sophos;i="5.82,313,1613462400"; 
   d="gz'50?scan'50,208,50";a="188191275"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
  by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 19 May 2021 12:48:32 -0700
IronPort-SDR: HePwlcOCvM3rgk9LOMQhjobTkWNdo+Jp8TclvxRUrPjAeWSVqG5Rcxiqb8HWBfLlpidhx1/nBo
 OG/G4il8QOog==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,313,1613462400"; 
   d="gz'50?scan'50,208,50";a="394554257"
Received: from lkp-server02.sh.intel.com (HELO 1b329be5b008) ([10.239.97.151])
  by orsmga003.jf.intel.com with ESMTP; 19 May 2021 12:48:29 -0700
Received: from kbuild by 1b329be5b008 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1ljSBB-0000EM-30; Wed, 19 May 2021 19:48:29 +0000
Date: Thu, 20 May 2021 03:48:08 +0800
From: kernel test robot <lkp@intel.com>
To: Arnd Bergmann <arnd@arndb.de>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Nathan Chancellor <nathan@kernel.org>,
	Kees Cook <keescook@chromium.org>,
	Andrew Morton <akpm@linux-foundation.org>,
	Linux Memory Management List <linux-mm@kvack.org>
Subject: [linux-stable-rc:linux-5.10.y 3189/5262]
 drivers/usb/dwc2/hcd.c:3835:6: warning: stack frame size of 1032 bytes in
 function 'dwc2_hcd_dump_state'
Message-ID: <202105200357.eXI65Gfu-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="6c2NcOVqGQ03X4Wi"
Content-Disposition: inline
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


--6c2NcOVqGQ03X4Wi
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable-rc.git linux-5.10.y
head:   689e89aee55c565fe90fcdf8a7e53f2f976c5946
commit: 5f2f616343b1d62d26f24316fbfc107ecf0983a9 [3189/5262] linux/compiler-clang.h: define HAVE_BUILTIN_BSWAP*
config: mips-randconfig-r015-20210519 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 8e93d10633d751a3e9169bf9fa68326925ffa097)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install mips cross compiling tool for clang build
        # apt-get install binutils-mips-linux-gnu
        # https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable-rc.git/commit/?id=5f2f616343b1d62d26f24316fbfc107ecf0983a9
        git remote add linux-stable-rc https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable-rc.git
        git fetch --no-tags linux-stable-rc linux-5.10.y
        git checkout 5f2f616343b1d62d26f24316fbfc107ecf0983a9
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=mips 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

>> drivers/usb/dwc2/hcd.c:3835:6: warning: stack frame size of 1032 bytes in function 'dwc2_hcd_dump_state' [-Wframe-larger-than=]
   void dwc2_hcd_dump_state(struct dwc2_hsotg *hsotg)
        ^
   1 warning generated.


vim +/dwc2_hcd_dump_state +3835 drivers/usb/dwc2/hcd.c

7359d482eb4d39 drivers/staging/dwc2/hcd.c Paul Zimmerman    2013-03-11  3830  
7359d482eb4d39 drivers/staging/dwc2/hcd.c Paul Zimmerman    2013-03-11  3831  /*
7359d482eb4d39 drivers/staging/dwc2/hcd.c Paul Zimmerman    2013-03-11  3832   * NOTE: This function will be removed once the peripheral controller code
7359d482eb4d39 drivers/staging/dwc2/hcd.c Paul Zimmerman    2013-03-11  3833   * is integrated and the driver is stable
7359d482eb4d39 drivers/staging/dwc2/hcd.c Paul Zimmerman    2013-03-11  3834   */
7359d482eb4d39 drivers/staging/dwc2/hcd.c Paul Zimmerman    2013-03-11 @3835  void dwc2_hcd_dump_state(struct dwc2_hsotg *hsotg)
7359d482eb4d39 drivers/staging/dwc2/hcd.c Paul Zimmerman    2013-03-11  3836  {
7359d482eb4d39 drivers/staging/dwc2/hcd.c Paul Zimmerman    2013-03-11  3837  #ifdef DEBUG
7359d482eb4d39 drivers/staging/dwc2/hcd.c Paul Zimmerman    2013-03-11  3838  	struct dwc2_host_chan *chan;
7359d482eb4d39 drivers/staging/dwc2/hcd.c Paul Zimmerman    2013-03-11  3839  	struct dwc2_hcd_urb *urb;
7359d482eb4d39 drivers/staging/dwc2/hcd.c Paul Zimmerman    2013-03-11  3840  	struct dwc2_qtd *qtd;
7359d482eb4d39 drivers/staging/dwc2/hcd.c Paul Zimmerman    2013-03-11  3841  	int num_channels;
7359d482eb4d39 drivers/staging/dwc2/hcd.c Paul Zimmerman    2013-03-11  3842  	u32 np_tx_status;
7359d482eb4d39 drivers/staging/dwc2/hcd.c Paul Zimmerman    2013-03-11  3843  	u32 p_tx_status;
7359d482eb4d39 drivers/staging/dwc2/hcd.c Paul Zimmerman    2013-03-11  3844  	int i;
7359d482eb4d39 drivers/staging/dwc2/hcd.c Paul Zimmerman    2013-03-11  3845  
bea8e86c51cf9c drivers/usb/dwc2/hcd.c     John Youn         2016-11-03  3846  	num_channels = hsotg->params.host_channels;
7359d482eb4d39 drivers/staging/dwc2/hcd.c Paul Zimmerman    2013-03-11  3847  	dev_dbg(hsotg->dev, "\n");
7359d482eb4d39 drivers/staging/dwc2/hcd.c Paul Zimmerman    2013-03-11  3848  	dev_dbg(hsotg->dev,
7359d482eb4d39 drivers/staging/dwc2/hcd.c Paul Zimmerman    2013-03-11  3849  		"************************************************************\n");
7359d482eb4d39 drivers/staging/dwc2/hcd.c Paul Zimmerman    2013-03-11  3850  	dev_dbg(hsotg->dev, "HCD State:\n");
7359d482eb4d39 drivers/staging/dwc2/hcd.c Paul Zimmerman    2013-03-11  3851  	dev_dbg(hsotg->dev, "  Num channels: %d\n", num_channels);
7359d482eb4d39 drivers/staging/dwc2/hcd.c Paul Zimmerman    2013-03-11  3852  
7359d482eb4d39 drivers/staging/dwc2/hcd.c Paul Zimmerman    2013-03-11  3853  	for (i = 0; i < num_channels; i++) {
7359d482eb4d39 drivers/staging/dwc2/hcd.c Paul Zimmerman    2013-03-11  3854  		chan = hsotg->hc_ptr_array[i];
7359d482eb4d39 drivers/staging/dwc2/hcd.c Paul Zimmerman    2013-03-11  3855  		dev_dbg(hsotg->dev, "  Channel %d:\n", i);
7359d482eb4d39 drivers/staging/dwc2/hcd.c Paul Zimmerman    2013-03-11  3856  		dev_dbg(hsotg->dev,
7359d482eb4d39 drivers/staging/dwc2/hcd.c Paul Zimmerman    2013-03-11  3857  			"    dev_addr: %d, ep_num: %d, ep_is_in: %d\n",
7359d482eb4d39 drivers/staging/dwc2/hcd.c Paul Zimmerman    2013-03-11  3858  			chan->dev_addr, chan->ep_num, chan->ep_is_in);
7359d482eb4d39 drivers/staging/dwc2/hcd.c Paul Zimmerman    2013-03-11  3859  		dev_dbg(hsotg->dev, "    speed: %d\n", chan->speed);
7359d482eb4d39 drivers/staging/dwc2/hcd.c Paul Zimmerman    2013-03-11  3860  		dev_dbg(hsotg->dev, "    ep_type: %d\n", chan->ep_type);
7359d482eb4d39 drivers/staging/dwc2/hcd.c Paul Zimmerman    2013-03-11  3861  		dev_dbg(hsotg->dev, "    max_packet: %d\n", chan->max_packet);
7359d482eb4d39 drivers/staging/dwc2/hcd.c Paul Zimmerman    2013-03-11  3862  		dev_dbg(hsotg->dev, "    data_pid_start: %d\n",
7359d482eb4d39 drivers/staging/dwc2/hcd.c Paul Zimmerman    2013-03-11  3863  			chan->data_pid_start);
7359d482eb4d39 drivers/staging/dwc2/hcd.c Paul Zimmerman    2013-03-11  3864  		dev_dbg(hsotg->dev, "    multi_count: %d\n", chan->multi_count);
7359d482eb4d39 drivers/staging/dwc2/hcd.c Paul Zimmerman    2013-03-11  3865  		dev_dbg(hsotg->dev, "    xfer_started: %d\n",
7359d482eb4d39 drivers/staging/dwc2/hcd.c Paul Zimmerman    2013-03-11  3866  			chan->xfer_started);
7359d482eb4d39 drivers/staging/dwc2/hcd.c Paul Zimmerman    2013-03-11  3867  		dev_dbg(hsotg->dev, "    xfer_buf: %p\n", chan->xfer_buf);
7359d482eb4d39 drivers/staging/dwc2/hcd.c Paul Zimmerman    2013-03-11  3868  		dev_dbg(hsotg->dev, "    xfer_dma: %08lx\n",
7359d482eb4d39 drivers/staging/dwc2/hcd.c Paul Zimmerman    2013-03-11  3869  			(unsigned long)chan->xfer_dma);
7359d482eb4d39 drivers/staging/dwc2/hcd.c Paul Zimmerman    2013-03-11  3870  		dev_dbg(hsotg->dev, "    xfer_len: %d\n", chan->xfer_len);
7359d482eb4d39 drivers/staging/dwc2/hcd.c Paul Zimmerman    2013-03-11  3871  		dev_dbg(hsotg->dev, "    xfer_count: %d\n", chan->xfer_count);
7359d482eb4d39 drivers/staging/dwc2/hcd.c Paul Zimmerman    2013-03-11  3872  		dev_dbg(hsotg->dev, "    halt_on_queue: %d\n",
7359d482eb4d39 drivers/staging/dwc2/hcd.c Paul Zimmerman    2013-03-11  3873  			chan->halt_on_queue);
7359d482eb4d39 drivers/staging/dwc2/hcd.c Paul Zimmerman    2013-03-11  3874  		dev_dbg(hsotg->dev, "    halt_pending: %d\n",
7359d482eb4d39 drivers/staging/dwc2/hcd.c Paul Zimmerman    2013-03-11  3875  			chan->halt_pending);
7359d482eb4d39 drivers/staging/dwc2/hcd.c Paul Zimmerman    2013-03-11  3876  		dev_dbg(hsotg->dev, "    halt_status: %d\n", chan->halt_status);
7359d482eb4d39 drivers/staging/dwc2/hcd.c Paul Zimmerman    2013-03-11  3877  		dev_dbg(hsotg->dev, "    do_split: %d\n", chan->do_split);
7359d482eb4d39 drivers/staging/dwc2/hcd.c Paul Zimmerman    2013-03-11  3878  		dev_dbg(hsotg->dev, "    complete_split: %d\n",
7359d482eb4d39 drivers/staging/dwc2/hcd.c Paul Zimmerman    2013-03-11  3879  			chan->complete_split);
7359d482eb4d39 drivers/staging/dwc2/hcd.c Paul Zimmerman    2013-03-11  3880  		dev_dbg(hsotg->dev, "    hub_addr: %d\n", chan->hub_addr);
7359d482eb4d39 drivers/staging/dwc2/hcd.c Paul Zimmerman    2013-03-11  3881  		dev_dbg(hsotg->dev, "    hub_port: %d\n", chan->hub_port);
7359d482eb4d39 drivers/staging/dwc2/hcd.c Paul Zimmerman    2013-03-11  3882  		dev_dbg(hsotg->dev, "    xact_pos: %d\n", chan->xact_pos);
7359d482eb4d39 drivers/staging/dwc2/hcd.c Paul Zimmerman    2013-03-11  3883  		dev_dbg(hsotg->dev, "    requests: %d\n", chan->requests);
7359d482eb4d39 drivers/staging/dwc2/hcd.c Paul Zimmerman    2013-03-11  3884  		dev_dbg(hsotg->dev, "    qh: %p\n", chan->qh);
7359d482eb4d39 drivers/staging/dwc2/hcd.c Paul Zimmerman    2013-03-11  3885  
7359d482eb4d39 drivers/staging/dwc2/hcd.c Paul Zimmerman    2013-03-11  3886  		if (chan->xfer_started) {
7359d482eb4d39 drivers/staging/dwc2/hcd.c Paul Zimmerman    2013-03-11  3887  			u32 hfnum, hcchar, hctsiz, hcint, hcintmsk;
7359d482eb4d39 drivers/staging/dwc2/hcd.c Paul Zimmerman    2013-03-11  3888  
f25c42b8d604fb drivers/usb/dwc2/hcd.c     Gevorg Sahakyan   2018-07-26  3889  			hfnum = dwc2_readl(hsotg, HFNUM);
f25c42b8d604fb drivers/usb/dwc2/hcd.c     Gevorg Sahakyan   2018-07-26  3890  			hcchar = dwc2_readl(hsotg, HCCHAR(i));
f25c42b8d604fb drivers/usb/dwc2/hcd.c     Gevorg Sahakyan   2018-07-26  3891  			hctsiz = dwc2_readl(hsotg, HCTSIZ(i));
f25c42b8d604fb drivers/usb/dwc2/hcd.c     Gevorg Sahakyan   2018-07-26  3892  			hcint = dwc2_readl(hsotg, HCINT(i));
f25c42b8d604fb drivers/usb/dwc2/hcd.c     Gevorg Sahakyan   2018-07-26  3893  			hcintmsk = dwc2_readl(hsotg, HCINTMSK(i));
7359d482eb4d39 drivers/staging/dwc2/hcd.c Paul Zimmerman    2013-03-11  3894  			dev_dbg(hsotg->dev, "    hfnum: 0x%08x\n", hfnum);
7359d482eb4d39 drivers/staging/dwc2/hcd.c Paul Zimmerman    2013-03-11  3895  			dev_dbg(hsotg->dev, "    hcchar: 0x%08x\n", hcchar);
7359d482eb4d39 drivers/staging/dwc2/hcd.c Paul Zimmerman    2013-03-11  3896  			dev_dbg(hsotg->dev, "    hctsiz: 0x%08x\n", hctsiz);
7359d482eb4d39 drivers/staging/dwc2/hcd.c Paul Zimmerman    2013-03-11  3897  			dev_dbg(hsotg->dev, "    hcint: 0x%08x\n", hcint);
7359d482eb4d39 drivers/staging/dwc2/hcd.c Paul Zimmerman    2013-03-11  3898  			dev_dbg(hsotg->dev, "    hcintmsk: 0x%08x\n", hcintmsk);
7359d482eb4d39 drivers/staging/dwc2/hcd.c Paul Zimmerman    2013-03-11  3899  		}
7359d482eb4d39 drivers/staging/dwc2/hcd.c Paul Zimmerman    2013-03-11  3900  
7359d482eb4d39 drivers/staging/dwc2/hcd.c Paul Zimmerman    2013-03-11  3901  		if (!(chan->xfer_started && chan->qh))
7359d482eb4d39 drivers/staging/dwc2/hcd.c Paul Zimmerman    2013-03-11  3902  			continue;
7359d482eb4d39 drivers/staging/dwc2/hcd.c Paul Zimmerman    2013-03-11  3903  
7359d482eb4d39 drivers/staging/dwc2/hcd.c Paul Zimmerman    2013-03-11  3904  		list_for_each_entry(qtd, &chan->qh->qtd_list, qtd_list_entry) {
7359d482eb4d39 drivers/staging/dwc2/hcd.c Paul Zimmerman    2013-03-11  3905  			if (!qtd->in_process)
7359d482eb4d39 drivers/staging/dwc2/hcd.c Paul Zimmerman    2013-03-11  3906  				break;
7359d482eb4d39 drivers/staging/dwc2/hcd.c Paul Zimmerman    2013-03-11  3907  			urb = qtd->urb;
7359d482eb4d39 drivers/staging/dwc2/hcd.c Paul Zimmerman    2013-03-11  3908  			dev_dbg(hsotg->dev, "    URB Info:\n");
7359d482eb4d39 drivers/staging/dwc2/hcd.c Paul Zimmerman    2013-03-11  3909  			dev_dbg(hsotg->dev, "      qtd: %p, urb: %p\n",
7359d482eb4d39 drivers/staging/dwc2/hcd.c Paul Zimmerman    2013-03-11  3910  				qtd, urb);
7359d482eb4d39 drivers/staging/dwc2/hcd.c Paul Zimmerman    2013-03-11  3911  			if (urb) {
7359d482eb4d39 drivers/staging/dwc2/hcd.c Paul Zimmerman    2013-03-11  3912  				dev_dbg(hsotg->dev,
7359d482eb4d39 drivers/staging/dwc2/hcd.c Paul Zimmerman    2013-03-11  3913  					"      Dev: %d, EP: %d %s\n",
7359d482eb4d39 drivers/staging/dwc2/hcd.c Paul Zimmerman    2013-03-11  3914  					dwc2_hcd_get_dev_addr(&urb->pipe_info),
7359d482eb4d39 drivers/staging/dwc2/hcd.c Paul Zimmerman    2013-03-11  3915  					dwc2_hcd_get_ep_num(&urb->pipe_info),
7359d482eb4d39 drivers/staging/dwc2/hcd.c Paul Zimmerman    2013-03-11  3916  					dwc2_hcd_is_pipe_in(&urb->pipe_info) ?
7359d482eb4d39 drivers/staging/dwc2/hcd.c Paul Zimmerman    2013-03-11  3917  					"IN" : "OUT");
7359d482eb4d39 drivers/staging/dwc2/hcd.c Paul Zimmerman    2013-03-11  3918  				dev_dbg(hsotg->dev,
babd183915e91a drivers/usb/dwc2/hcd.c     Douglas Anderson  2019-05-31  3919  					"      Max packet size: %d (%d mult)\n",
babd183915e91a drivers/usb/dwc2/hcd.c     Douglas Anderson  2019-05-31  3920  					dwc2_hcd_get_maxp(&urb->pipe_info),
babd183915e91a drivers/usb/dwc2/hcd.c     Douglas Anderson  2019-05-31  3921  					dwc2_hcd_get_maxp_mult(&urb->pipe_info));
7359d482eb4d39 drivers/staging/dwc2/hcd.c Paul Zimmerman    2013-03-11  3922  				dev_dbg(hsotg->dev,
7359d482eb4d39 drivers/staging/dwc2/hcd.c Paul Zimmerman    2013-03-11  3923  					"      transfer_buffer: %p\n",
7359d482eb4d39 drivers/staging/dwc2/hcd.c Paul Zimmerman    2013-03-11  3924  					urb->buf);
157dfaac1f2922 drivers/staging/dwc2/hcd.c Paul Zimmerman    2013-03-14  3925  				dev_dbg(hsotg->dev,
157dfaac1f2922 drivers/staging/dwc2/hcd.c Paul Zimmerman    2013-03-14  3926  					"      transfer_dma: %08lx\n",
157dfaac1f2922 drivers/staging/dwc2/hcd.c Paul Zimmerman    2013-03-14  3927  					(unsigned long)urb->dma);
7359d482eb4d39 drivers/staging/dwc2/hcd.c Paul Zimmerman    2013-03-11  3928  				dev_dbg(hsotg->dev,
7359d482eb4d39 drivers/staging/dwc2/hcd.c Paul Zimmerman    2013-03-11  3929  					"      transfer_buffer_length: %d\n",
7359d482eb4d39 drivers/staging/dwc2/hcd.c Paul Zimmerman    2013-03-11  3930  					urb->length);
7359d482eb4d39 drivers/staging/dwc2/hcd.c Paul Zimmerman    2013-03-11  3931  				dev_dbg(hsotg->dev, "      actual_length: %d\n",
7359d482eb4d39 drivers/staging/dwc2/hcd.c Paul Zimmerman    2013-03-11  3932  					urb->actual_length);
7359d482eb4d39 drivers/staging/dwc2/hcd.c Paul Zimmerman    2013-03-11  3933  			}
7359d482eb4d39 drivers/staging/dwc2/hcd.c Paul Zimmerman    2013-03-11  3934  		}
7359d482eb4d39 drivers/staging/dwc2/hcd.c Paul Zimmerman    2013-03-11  3935  	}
7359d482eb4d39 drivers/staging/dwc2/hcd.c Paul Zimmerman    2013-03-11  3936  
7359d482eb4d39 drivers/staging/dwc2/hcd.c Paul Zimmerman    2013-03-11  3937  	dev_dbg(hsotg->dev, "  non_periodic_channels: %d\n",
7359d482eb4d39 drivers/staging/dwc2/hcd.c Paul Zimmerman    2013-03-11  3938  		hsotg->non_periodic_channels);
7359d482eb4d39 drivers/staging/dwc2/hcd.c Paul Zimmerman    2013-03-11  3939  	dev_dbg(hsotg->dev, "  periodic_channels: %d\n",
7359d482eb4d39 drivers/staging/dwc2/hcd.c Paul Zimmerman    2013-03-11  3940  		hsotg->periodic_channels);
7359d482eb4d39 drivers/staging/dwc2/hcd.c Paul Zimmerman    2013-03-11  3941  	dev_dbg(hsotg->dev, "  periodic_usecs: %d\n", hsotg->periodic_usecs);
f25c42b8d604fb drivers/usb/dwc2/hcd.c     Gevorg Sahakyan   2018-07-26  3942  	np_tx_status = dwc2_readl(hsotg, GNPTXSTS);
7359d482eb4d39 drivers/staging/dwc2/hcd.c Paul Zimmerman    2013-03-11  3943  	dev_dbg(hsotg->dev, "  NP Tx Req Queue Space Avail: %d\n",
d6ec53e04bf790 drivers/staging/dwc2/hcd.c Matthijs Kooijman 2013-08-30  3944  		(np_tx_status & TXSTS_QSPCAVAIL_MASK) >> TXSTS_QSPCAVAIL_SHIFT);
7359d482eb4d39 drivers/staging/dwc2/hcd.c Paul Zimmerman    2013-03-11  3945  	dev_dbg(hsotg->dev, "  NP Tx FIFO Space Avail: %d\n",
d6ec53e04bf790 drivers/staging/dwc2/hcd.c Matthijs Kooijman 2013-08-30  3946  		(np_tx_status & TXSTS_FSPCAVAIL_MASK) >> TXSTS_FSPCAVAIL_SHIFT);
f25c42b8d604fb drivers/usb/dwc2/hcd.c     Gevorg Sahakyan   2018-07-26  3947  	p_tx_status = dwc2_readl(hsotg, HPTXSTS);
7359d482eb4d39 drivers/staging/dwc2/hcd.c Paul Zimmerman    2013-03-11  3948  	dev_dbg(hsotg->dev, "  P Tx Req Queue Space Avail: %d\n",
d6ec53e04bf790 drivers/staging/dwc2/hcd.c Matthijs Kooijman 2013-08-30  3949  		(p_tx_status & TXSTS_QSPCAVAIL_MASK) >> TXSTS_QSPCAVAIL_SHIFT);
7359d482eb4d39 drivers/staging/dwc2/hcd.c Paul Zimmerman    2013-03-11  3950  	dev_dbg(hsotg->dev, "  P Tx FIFO Space Avail: %d\n",
d6ec53e04bf790 drivers/staging/dwc2/hcd.c Matthijs Kooijman 2013-08-30  3951  		(p_tx_status & TXSTS_FSPCAVAIL_MASK) >> TXSTS_FSPCAVAIL_SHIFT);
7359d482eb4d39 drivers/staging/dwc2/hcd.c Paul Zimmerman    2013-03-11  3952  	dwc2_dump_global_registers(hsotg);
7359d482eb4d39 drivers/staging/dwc2/hcd.c Paul Zimmerman    2013-03-11  3953  	dwc2_dump_host_registers(hsotg);
7359d482eb4d39 drivers/staging/dwc2/hcd.c Paul Zimmerman    2013-03-11  3954  	dev_dbg(hsotg->dev,
7359d482eb4d39 drivers/staging/dwc2/hcd.c Paul Zimmerman    2013-03-11  3955  		"************************************************************\n");
7359d482eb4d39 drivers/staging/dwc2/hcd.c Paul Zimmerman    2013-03-11  3956  	dev_dbg(hsotg->dev, "\n");
7359d482eb4d39 drivers/staging/dwc2/hcd.c Paul Zimmerman    2013-03-11  3957  #endif
7359d482eb4d39 drivers/staging/dwc2/hcd.c Paul Zimmerman    2013-03-11  3958  }
7359d482eb4d39 drivers/staging/dwc2/hcd.c Paul Zimmerman    2013-03-11  3959  

:::::: The code at line 3835 was first introduced by commit
:::::: 7359d482eb4d3967cc8be354405ae6be6eaf732c staging: HCD files for the DWC2 driver

:::::: TO: Paul Zimmerman <Paul.Zimmerman@synopsys.com>
:::::: CC: Greg Kroah-Hartman <gregkh@linuxfoundation.org>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202105200357.eXI65Gfu-lkp%40intel.com.

--6c2NcOVqGQ03X4Wi
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
HiRfGasBAA==

--6c2NcOVqGQ03X4Wi--
