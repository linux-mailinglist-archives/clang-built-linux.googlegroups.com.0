Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBZEJ2WDQMGQEV2MQMXI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73b.google.com (mail-qk1-x73b.google.com [IPv6:2607:f8b0:4864:20::73b])
	by mail.lfdr.de (Postfix) with ESMTPS id 691773CD099
	for <lists+clang-built-linux@lfdr.de>; Mon, 19 Jul 2021 11:24:53 +0200 (CEST)
Received: by mail-qk1-x73b.google.com with SMTP id o14-20020a05620a0d4eb02903a5eee61155sf9195839qkl.9
        for <lists+clang-built-linux@lfdr.de>; Mon, 19 Jul 2021 02:24:53 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1626686692; cv=pass;
        d=google.com; s=arc-20160816;
        b=VDZdcCqOPgMk4jnDUwrAoZ0CZ6z9U8hi75vaMoYADeQkNMVDQxFUyi9lATmYvq4Wew
         PwMoL51IdXvjjw9Qu6IauZEgfxqibbDF/g78Hi9ViXeQBiTIcVBsHgpJ+IvkNs5fptqD
         2X19QYNhIuvEJwabSvkWBulcYzMlbpuW/CIN2AuzGNK5oOTpqAGMMo2d/HkolNcTA2ox
         Pfh1xNRMHQLAu6JDYqOaPJ3dwU0bAGwkANYLD260natK1wjAF5h3FHnmHh8um+WTmbLZ
         dYk/EHQ4apL0GIejVh6uCZ+mdxOYYna0BSQEFFuxkJl+fmZ2Df+CqMGZZfcTVenj28My
         eciQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=285oDoRymRALA2Pwa2/NCPhqki80azgTYzEqrYHGilk=;
        b=ltoZk4UWMW/awTwNZd+OlSna/YRR/WAbb5K4SMBhB7sxlqItT8RiUKSfLClzT6yJvS
         V84Qu4bCSziL/jzH5hCLpEtykY3DjtRGmkMqnTEXuYoWC9tCMceHGZ9wlT/rN/MuB+WT
         i7GaSgyA7lgGhZqRx4Av3I/mNg0ykpqvEyprqDUhGnZajbAMExzOThCClXwDp881htaE
         rTcH0m2BlRDe+o17Olu8GX90zLUte7bwUfTDA2WJ4784eHPAK9T6RxW/OdJeOlP3IDgW
         7U+nxItSyrg0gh3cejMa7tNgvph9D3bzKZeebUfIXvQkQunpBJAVNh9bCPUG41b8iFzG
         33Qg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.115 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=285oDoRymRALA2Pwa2/NCPhqki80azgTYzEqrYHGilk=;
        b=OLYAfg6cqPBWTRwYbvdWg/jR+7Rv65fnEYhcsBrobOzKor42cBf5+IRdTLa0nnzPJx
         qNog6U1GLvWudniDqC8a7QmHqunP+7vWQTWMoU3l3zLENo4nlXvDUsATNe3x9kFnHkQt
         j729e/IqU0flzcpz6XQPpDslneh+r/QHdzzFiHCbRpbZ2Ql2m6lAPZArEisXGZ5wRHF4
         KqIJu0vWEqW/9DCg5kEQpaqhI1fFpCnt+WZS+E5beRunaWc7Pmi4KY+QVbfdm+QdmPJ/
         DmkSR4kQzeFiqZaaJrYK/6jJQ2EThMSrgdykEIgmaTQfZl6AFY8y67Y1cjp1L+BT8f8Q
         BWGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=285oDoRymRALA2Pwa2/NCPhqki80azgTYzEqrYHGilk=;
        b=tozPy4gayEVFRO3rHaBHbKuo8Q8Yj63dzpdWPF7SeOtM5lpzV8ul/AjxJSheHadu9o
         9PDezhKsCpvnaWfo25Nh7FmjndQI89lx55JfE0Tu/IYHRYiGPUdVsPUB9qlJAgUiQ8Oh
         GpA2gOjDE06Q3IriygfAAY4WdJ4GhyNee4oTLncJdGpUxS3q3+WGSplGUBWHApYU+kPh
         5pYSCOTxbPf4CwulEkAL5iPFdpOsIGlwI5ZL5vQRqoQaHp/q/B/JHeGgZ9BY30A1P+Xw
         +zRuE/tbXNkMMpnyvLk2ebrAGiD5EMuGUL5k8sb4M8jKa76QRIcfrgm1YWnoyiDhFZuJ
         4GMw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533Kn+0SmWlsxYCz8cdO7cobcVH8bg45VR3t4EwLnBhzCfZ7Lf/8
	Z2ssRXIyH3ypkaK4DHE/NmE=
X-Google-Smtp-Source: ABdhPJxCHKLExPevyjCqnclcb0GkZ9ja6EnZgkxkDL2Pz8U33HduGC1G3UE4LUvEyeO/jixHeBg5FA==
X-Received: by 2002:a0c:db8a:: with SMTP id m10mr23609504qvk.29.1626686692127;
        Mon, 19 Jul 2021 02:24:52 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:b08:: with SMTP id e8ls2745152qti.3.gmail; Mon, 19 Jul
 2021 02:24:51 -0700 (PDT)
X-Received: by 2002:ac8:c0d:: with SMTP id k13mr20754275qti.11.1626686691391;
        Mon, 19 Jul 2021 02:24:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1626686691; cv=none;
        d=google.com; s=arc-20160816;
        b=J00X2oaE27hjfQejy57zkK8/4NMhCqh+GbJM7/Z3EPNyUsczvpvyp4ipWwVHeZ9DWo
         K0BR7x9km5GjGekavF65dF3ZlhcTVJur9FoW5agPyTaobB6JhJtYbFYsiovamNlMNjGN
         alPLV2IlUiGG4Pi2VP9qgFfyCmfYrZwwGEVo4tGgMvAH/h99EB2/BUks9kugISTKsi73
         lIM87XKsAKibnPyyJACApEE352rhZgXj2O2Mc0pisqvr32wPv9DMfSVH3h5Gwz+qPnDL
         4YRbW9b612qW8LVagwFki/AkN7DlrqVXqepQyA1N0vFfOQGe19Mrr0jH2xlLL8NzbQMw
         7Zxw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date;
        bh=+NFcCWoNpPHQMI2+mvsLVEPjQzqIrPy2PhpKK4Pqjyg=;
        b=RjGDn7q0M+1+QVhqltBKAtTaEP30zBuDzwbxZf1qvjJJSzG46GNdk/q4e36+HjABM7
         Bj6UhklALBLvgWObAUOYrtrAvWLGIj7JhW/aZsfZ3+RzYwkvijKoeJMvzsuWYlFikfCS
         XrT+8WGAM9dsMFkXTNa8BXiydwaFnyGvCeuT9cJE7MzM+7LnICDNlEvHu1AHxOwIzGvh
         m1mLqmvrrsdCXWT0J2865D2zTgui+NYNp4YUdlHSsp+afaOWYCDwFZBH18kEh16NZMb4
         krZDXD1pmFbhE0ANJROYR5fUFtg0SdgFYENjdpzcCKLeeG6gj9M9L7bso9gCtPLPLT8k
         8aBg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.115 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga14.intel.com (mga14.intel.com. [192.55.52.115])
        by gmr-mx.google.com with ESMTPS id v31si378538qtc.4.2021.07.19.02.24.50
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 19 Jul 2021 02:24:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.115 as permitted sender) client-ip=192.55.52.115;
X-IronPort-AV: E=McAfee;i="6200,9189,10049"; a="210747499"
X-IronPort-AV: E=Sophos;i="5.84,251,1620716400"; 
   d="gz'50?scan'50,208,50";a="210747499"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
  by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 19 Jul 2021 02:24:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,251,1620716400"; 
   d="gz'50?scan'50,208,50";a="656783934"
Received: from lkp-server01.sh.intel.com (HELO a467b34d8c10) ([10.239.97.150])
  by fmsmga006.fm.intel.com with ESMTP; 19 Jul 2021 02:24:46 -0700
Received: from kbuild by a467b34d8c10 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1m5PW1-0000cw-DV; Mon, 19 Jul 2021 09:24:45 +0000
Date: Mon, 19 Jul 2021 17:24:25 +0800
From: kernel test robot <lkp@intel.com>
To: Mark Rutland <mark.rutland@arm.com>
Cc: clang-built-linux@googlegroups.com, kbuild-all@lists.01.org,
	linux-kernel@vger.kernel.org, Peter Zijlstra <peterz@infradead.org>
Subject: [peterz-queue:locking/core 21/21] drivers/net/usb/r8152.c:7474:13:
 warning: stack frame size (9568) exceeds limit (8192) in function
 'r8156b_hw_phy_cfg'
Message-ID: <202107191712.2fNjndRF-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="45Z9DzgjV8m4Oswq"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 192.55.52.115 as permitted
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


--45Z9DzgjV8m4Oswq
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/peterz/queue.git locking/core
head:   cf3ee3c8c29dc349b2cf52e5e72e8cb805ff5e57
commit: cf3ee3c8c29dc349b2cf52e5e72e8cb805ff5e57 [21/21] locking/atomic: add generic arch_*() bitops
config: riscv-randconfig-r002-20210719 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 5d5b08761f944d5b9822d582378333cc4b36a0a7)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install riscv cross compiling tool for clang build
        # apt-get install binutils-riscv64-linux-gnu
        # https://git.kernel.org/pub/scm/linux/kernel/git/peterz/queue.git/commit/?id=cf3ee3c8c29dc349b2cf52e5e72e8cb805ff5e57
        git remote add peterz-queue https://git.kernel.org/pub/scm/linux/kernel/git/peterz/queue.git
        git fetch --no-tags peterz-queue locking/core
        git checkout cf3ee3c8c29dc349b2cf52e5e72e8cb805ff5e57
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=riscv 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

>> drivers/net/usb/r8152.c:7474:13: warning: stack frame size (9568) exceeds limit (8192) in function 'r8156b_hw_phy_cfg' [-Wframe-larger-than]
   static void r8156b_hw_phy_cfg(struct r8152 *tp)
               ^
   1 warning generated.


vim +/r8156b_hw_phy_cfg +7474 drivers/net/usb/r8152.c

195aae321c829d Hayes Wang 2021-04-16  7473  
195aae321c829d Hayes Wang 2021-04-16 @7474  static void r8156b_hw_phy_cfg(struct r8152 *tp)
195aae321c829d Hayes Wang 2021-04-16  7475  {
195aae321c829d Hayes Wang 2021-04-16  7476  	u32 ocp_data;
195aae321c829d Hayes Wang 2021-04-16  7477  	u16 data;
195aae321c829d Hayes Wang 2021-04-16  7478  
195aae321c829d Hayes Wang 2021-04-16  7479  	switch (tp->version) {
195aae321c829d Hayes Wang 2021-04-16  7480  	case RTL_VER_12:
195aae321c829d Hayes Wang 2021-04-16  7481  		ocp_reg_write(tp, 0xbf86, 0x9000);
195aae321c829d Hayes Wang 2021-04-16  7482  		data = ocp_reg_read(tp, 0xc402);
195aae321c829d Hayes Wang 2021-04-16  7483  		data |= BIT(10);
195aae321c829d Hayes Wang 2021-04-16  7484  		ocp_reg_write(tp, 0xc402, data);
195aae321c829d Hayes Wang 2021-04-16  7485  		data &= ~BIT(10);
195aae321c829d Hayes Wang 2021-04-16  7486  		ocp_reg_write(tp, 0xc402, data);
195aae321c829d Hayes Wang 2021-04-16  7487  		ocp_reg_write(tp, 0xbd86, 0x1010);
195aae321c829d Hayes Wang 2021-04-16  7488  		ocp_reg_write(tp, 0xbd88, 0x1010);
195aae321c829d Hayes Wang 2021-04-16  7489  		data = ocp_reg_read(tp, 0xbd4e);
195aae321c829d Hayes Wang 2021-04-16  7490  		data &= ~(BIT(10) | BIT(11));
195aae321c829d Hayes Wang 2021-04-16  7491  		data |= BIT(11);
195aae321c829d Hayes Wang 2021-04-16  7492  		ocp_reg_write(tp, 0xbd4e, data);
195aae321c829d Hayes Wang 2021-04-16  7493  		data = ocp_reg_read(tp, 0xbf46);
195aae321c829d Hayes Wang 2021-04-16  7494  		data &= ~0xf00;
195aae321c829d Hayes Wang 2021-04-16  7495  		data |= 0x700;
195aae321c829d Hayes Wang 2021-04-16  7496  		ocp_reg_write(tp, 0xbf46, data);
195aae321c829d Hayes Wang 2021-04-16  7497  		break;
195aae321c829d Hayes Wang 2021-04-16  7498  	case RTL_VER_13:
195aae321c829d Hayes Wang 2021-04-16  7499  	case RTL_VER_15:
195aae321c829d Hayes Wang 2021-04-16  7500  		r8156b_wait_loading_flash(tp);
195aae321c829d Hayes Wang 2021-04-16  7501  		break;
195aae321c829d Hayes Wang 2021-04-16  7502  	default:
195aae321c829d Hayes Wang 2021-04-16  7503  		break;
195aae321c829d Hayes Wang 2021-04-16  7504  	}
195aae321c829d Hayes Wang 2021-04-16  7505  
195aae321c829d Hayes Wang 2021-04-16  7506  	ocp_data = ocp_read_word(tp, MCU_TYPE_USB, USB_MISC_0);
195aae321c829d Hayes Wang 2021-04-16  7507  	if (ocp_data & PCUT_STATUS) {
195aae321c829d Hayes Wang 2021-04-16  7508  		ocp_data &= ~PCUT_STATUS;
195aae321c829d Hayes Wang 2021-04-16  7509  		ocp_write_word(tp, MCU_TYPE_USB, USB_MISC_0, ocp_data);
195aae321c829d Hayes Wang 2021-04-16  7510  	}
195aae321c829d Hayes Wang 2021-04-16  7511  
195aae321c829d Hayes Wang 2021-04-16  7512  	data = r8153_phy_status(tp, 0);
195aae321c829d Hayes Wang 2021-04-16  7513  	switch (data) {
195aae321c829d Hayes Wang 2021-04-16  7514  	case PHY_STAT_EXT_INIT:
195aae321c829d Hayes Wang 2021-04-16  7515  		rtl8152_apply_firmware(tp, true);
195aae321c829d Hayes Wang 2021-04-16  7516  
195aae321c829d Hayes Wang 2021-04-16  7517  		data = ocp_reg_read(tp, 0xa466);
195aae321c829d Hayes Wang 2021-04-16  7518  		data &= ~BIT(0);
195aae321c829d Hayes Wang 2021-04-16  7519  		ocp_reg_write(tp, 0xa466, data);
195aae321c829d Hayes Wang 2021-04-16  7520  
195aae321c829d Hayes Wang 2021-04-16  7521  		data = ocp_reg_read(tp, 0xa468);
195aae321c829d Hayes Wang 2021-04-16  7522  		data &= ~(BIT(3) | BIT(1));
195aae321c829d Hayes Wang 2021-04-16  7523  		ocp_reg_write(tp, 0xa468, data);
195aae321c829d Hayes Wang 2021-04-16  7524  		break;
195aae321c829d Hayes Wang 2021-04-16  7525  	case PHY_STAT_LAN_ON:
195aae321c829d Hayes Wang 2021-04-16  7526  	case PHY_STAT_PWRDN:
195aae321c829d Hayes Wang 2021-04-16  7527  	default:
195aae321c829d Hayes Wang 2021-04-16  7528  		rtl8152_apply_firmware(tp, false);
195aae321c829d Hayes Wang 2021-04-16  7529  		break;
195aae321c829d Hayes Wang 2021-04-16  7530  	}
195aae321c829d Hayes Wang 2021-04-16  7531  
195aae321c829d Hayes Wang 2021-04-16  7532  	data = r8152_mdio_read(tp, MII_BMCR);
195aae321c829d Hayes Wang 2021-04-16  7533  	if (data & BMCR_PDOWN) {
195aae321c829d Hayes Wang 2021-04-16  7534  		data &= ~BMCR_PDOWN;
195aae321c829d Hayes Wang 2021-04-16  7535  		r8152_mdio_write(tp, MII_BMCR, data);
195aae321c829d Hayes Wang 2021-04-16  7536  	}
195aae321c829d Hayes Wang 2021-04-16  7537  
195aae321c829d Hayes Wang 2021-04-16  7538  	/* disable ALDPS before updating the PHY parameters */
195aae321c829d Hayes Wang 2021-04-16  7539  	r8153_aldps_en(tp, false);
195aae321c829d Hayes Wang 2021-04-16  7540  
195aae321c829d Hayes Wang 2021-04-16  7541  	/* disable EEE before updating the PHY parameters */
195aae321c829d Hayes Wang 2021-04-16  7542  	rtl_eee_enable(tp, false);
195aae321c829d Hayes Wang 2021-04-16  7543  
195aae321c829d Hayes Wang 2021-04-16  7544  	data = r8153_phy_status(tp, PHY_STAT_LAN_ON);
195aae321c829d Hayes Wang 2021-04-16  7545  	WARN_ON_ONCE(data != PHY_STAT_LAN_ON);
195aae321c829d Hayes Wang 2021-04-16  7546  
195aae321c829d Hayes Wang 2021-04-16  7547  	ocp_data = ocp_read_word(tp, MCU_TYPE_PLA, PLA_PHY_PWR);
195aae321c829d Hayes Wang 2021-04-16  7548  	ocp_data |= PFM_PWM_SWITCH;
195aae321c829d Hayes Wang 2021-04-16  7549  	ocp_write_word(tp, MCU_TYPE_PLA, PLA_PHY_PWR, ocp_data);
195aae321c829d Hayes Wang 2021-04-16  7550  
195aae321c829d Hayes Wang 2021-04-16  7551  	switch (tp->version) {
195aae321c829d Hayes Wang 2021-04-16  7552  	case RTL_VER_12:
195aae321c829d Hayes Wang 2021-04-16  7553  		data = ocp_reg_read(tp, 0xbc08);
195aae321c829d Hayes Wang 2021-04-16  7554  		data |= BIT(3) | BIT(2);
195aae321c829d Hayes Wang 2021-04-16  7555  		ocp_reg_write(tp, 0xbc08, data);
195aae321c829d Hayes Wang 2021-04-16  7556  
195aae321c829d Hayes Wang 2021-04-16  7557  		data = sram_read(tp, 0x8fff);
195aae321c829d Hayes Wang 2021-04-16  7558  		data &= ~0xff00;
195aae321c829d Hayes Wang 2021-04-16  7559  		data |= 0x0400;
195aae321c829d Hayes Wang 2021-04-16  7560  		sram_write(tp, 0x8fff, data);
195aae321c829d Hayes Wang 2021-04-16  7561  
195aae321c829d Hayes Wang 2021-04-16  7562  		data = ocp_reg_read(tp, 0xacda);
195aae321c829d Hayes Wang 2021-04-16  7563  		data |= 0xff00;
195aae321c829d Hayes Wang 2021-04-16  7564  		ocp_reg_write(tp, 0xacda, data);
195aae321c829d Hayes Wang 2021-04-16  7565  		data = ocp_reg_read(tp, 0xacde);
195aae321c829d Hayes Wang 2021-04-16  7566  		data |= 0xf000;
195aae321c829d Hayes Wang 2021-04-16  7567  		ocp_reg_write(tp, 0xacde, data);
195aae321c829d Hayes Wang 2021-04-16  7568  		ocp_reg_write(tp, 0xac8c, 0x0ffc);
195aae321c829d Hayes Wang 2021-04-16  7569  		ocp_reg_write(tp, 0xac46, 0xb7b4);
195aae321c829d Hayes Wang 2021-04-16  7570  		ocp_reg_write(tp, 0xac50, 0x0fbc);
195aae321c829d Hayes Wang 2021-04-16  7571  		ocp_reg_write(tp, 0xac3c, 0x9240);
195aae321c829d Hayes Wang 2021-04-16  7572  		ocp_reg_write(tp, 0xac4e, 0x0db4);
195aae321c829d Hayes Wang 2021-04-16  7573  		ocp_reg_write(tp, 0xacc6, 0x0707);
195aae321c829d Hayes Wang 2021-04-16  7574  		ocp_reg_write(tp, 0xacc8, 0xa0d3);
195aae321c829d Hayes Wang 2021-04-16  7575  		ocp_reg_write(tp, 0xad08, 0x0007);
195aae321c829d Hayes Wang 2021-04-16  7576  
195aae321c829d Hayes Wang 2021-04-16  7577  		ocp_reg_write(tp, 0xb87c, 0x8560);
195aae321c829d Hayes Wang 2021-04-16  7578  		ocp_reg_write(tp, 0xb87e, 0x19cc);
195aae321c829d Hayes Wang 2021-04-16  7579  		ocp_reg_write(tp, 0xb87c, 0x8562);
195aae321c829d Hayes Wang 2021-04-16  7580  		ocp_reg_write(tp, 0xb87e, 0x19cc);
195aae321c829d Hayes Wang 2021-04-16  7581  		ocp_reg_write(tp, 0xb87c, 0x8564);
195aae321c829d Hayes Wang 2021-04-16  7582  		ocp_reg_write(tp, 0xb87e, 0x19cc);
195aae321c829d Hayes Wang 2021-04-16  7583  		ocp_reg_write(tp, 0xb87c, 0x8566);
195aae321c829d Hayes Wang 2021-04-16  7584  		ocp_reg_write(tp, 0xb87e, 0x147d);
195aae321c829d Hayes Wang 2021-04-16  7585  		ocp_reg_write(tp, 0xb87c, 0x8568);
195aae321c829d Hayes Wang 2021-04-16  7586  		ocp_reg_write(tp, 0xb87e, 0x147d);
195aae321c829d Hayes Wang 2021-04-16  7587  		ocp_reg_write(tp, 0xb87c, 0x856a);
195aae321c829d Hayes Wang 2021-04-16  7588  		ocp_reg_write(tp, 0xb87e, 0x147d);
195aae321c829d Hayes Wang 2021-04-16  7589  		ocp_reg_write(tp, 0xb87c, 0x8ffe);
195aae321c829d Hayes Wang 2021-04-16  7590  		ocp_reg_write(tp, 0xb87e, 0x0907);
195aae321c829d Hayes Wang 2021-04-16  7591  		ocp_reg_write(tp, 0xb87c, 0x80d6);
195aae321c829d Hayes Wang 2021-04-16  7592  		ocp_reg_write(tp, 0xb87e, 0x2801);
195aae321c829d Hayes Wang 2021-04-16  7593  		ocp_reg_write(tp, 0xb87c, 0x80f2);
195aae321c829d Hayes Wang 2021-04-16  7594  		ocp_reg_write(tp, 0xb87e, 0x2801);
195aae321c829d Hayes Wang 2021-04-16  7595  		ocp_reg_write(tp, 0xb87c, 0x80f4);
195aae321c829d Hayes Wang 2021-04-16  7596  		ocp_reg_write(tp, 0xb87e, 0x6077);
195aae321c829d Hayes Wang 2021-04-16  7597  		ocp_reg_write(tp, 0xb506, 0x01e7);
195aae321c829d Hayes Wang 2021-04-16  7598  
195aae321c829d Hayes Wang 2021-04-16  7599  		ocp_reg_write(tp, 0xb87c, 0x8013);
195aae321c829d Hayes Wang 2021-04-16  7600  		ocp_reg_write(tp, 0xb87e, 0x0700);
195aae321c829d Hayes Wang 2021-04-16  7601  		ocp_reg_write(tp, 0xb87c, 0x8fb9);
195aae321c829d Hayes Wang 2021-04-16  7602  		ocp_reg_write(tp, 0xb87e, 0x2801);
195aae321c829d Hayes Wang 2021-04-16  7603  		ocp_reg_write(tp, 0xb87c, 0x8fba);
195aae321c829d Hayes Wang 2021-04-16  7604  		ocp_reg_write(tp, 0xb87e, 0x0100);
195aae321c829d Hayes Wang 2021-04-16  7605  		ocp_reg_write(tp, 0xb87c, 0x8fbc);
195aae321c829d Hayes Wang 2021-04-16  7606  		ocp_reg_write(tp, 0xb87e, 0x1900);
195aae321c829d Hayes Wang 2021-04-16  7607  		ocp_reg_write(tp, 0xb87c, 0x8fbe);
195aae321c829d Hayes Wang 2021-04-16  7608  		ocp_reg_write(tp, 0xb87e, 0xe100);
195aae321c829d Hayes Wang 2021-04-16  7609  		ocp_reg_write(tp, 0xb87c, 0x8fc0);
195aae321c829d Hayes Wang 2021-04-16  7610  		ocp_reg_write(tp, 0xb87e, 0x0800);
195aae321c829d Hayes Wang 2021-04-16  7611  		ocp_reg_write(tp, 0xb87c, 0x8fc2);
195aae321c829d Hayes Wang 2021-04-16  7612  		ocp_reg_write(tp, 0xb87e, 0xe500);
195aae321c829d Hayes Wang 2021-04-16  7613  		ocp_reg_write(tp, 0xb87c, 0x8fc4);
195aae321c829d Hayes Wang 2021-04-16  7614  		ocp_reg_write(tp, 0xb87e, 0x0f00);
195aae321c829d Hayes Wang 2021-04-16  7615  		ocp_reg_write(tp, 0xb87c, 0x8fc6);
195aae321c829d Hayes Wang 2021-04-16  7616  		ocp_reg_write(tp, 0xb87e, 0xf100);
195aae321c829d Hayes Wang 2021-04-16  7617  		ocp_reg_write(tp, 0xb87c, 0x8fc8);
195aae321c829d Hayes Wang 2021-04-16  7618  		ocp_reg_write(tp, 0xb87e, 0x0400);
195aae321c829d Hayes Wang 2021-04-16  7619  		ocp_reg_write(tp, 0xb87c, 0x8fca);
195aae321c829d Hayes Wang 2021-04-16  7620  		ocp_reg_write(tp, 0xb87e, 0xf300);
195aae321c829d Hayes Wang 2021-04-16  7621  		ocp_reg_write(tp, 0xb87c, 0x8fcc);
195aae321c829d Hayes Wang 2021-04-16  7622  		ocp_reg_write(tp, 0xb87e, 0xfd00);
195aae321c829d Hayes Wang 2021-04-16  7623  		ocp_reg_write(tp, 0xb87c, 0x8fce);
195aae321c829d Hayes Wang 2021-04-16  7624  		ocp_reg_write(tp, 0xb87e, 0xff00);
195aae321c829d Hayes Wang 2021-04-16  7625  		ocp_reg_write(tp, 0xb87c, 0x8fd0);
195aae321c829d Hayes Wang 2021-04-16  7626  		ocp_reg_write(tp, 0xb87e, 0xfb00);
195aae321c829d Hayes Wang 2021-04-16  7627  		ocp_reg_write(tp, 0xb87c, 0x8fd2);
195aae321c829d Hayes Wang 2021-04-16  7628  		ocp_reg_write(tp, 0xb87e, 0x0100);
195aae321c829d Hayes Wang 2021-04-16  7629  		ocp_reg_write(tp, 0xb87c, 0x8fd4);
195aae321c829d Hayes Wang 2021-04-16  7630  		ocp_reg_write(tp, 0xb87e, 0xf400);
195aae321c829d Hayes Wang 2021-04-16  7631  		ocp_reg_write(tp, 0xb87c, 0x8fd6);
195aae321c829d Hayes Wang 2021-04-16  7632  		ocp_reg_write(tp, 0xb87e, 0xff00);
195aae321c829d Hayes Wang 2021-04-16  7633  		ocp_reg_write(tp, 0xb87c, 0x8fd8);
195aae321c829d Hayes Wang 2021-04-16  7634  		ocp_reg_write(tp, 0xb87e, 0xf600);
195aae321c829d Hayes Wang 2021-04-16  7635  
195aae321c829d Hayes Wang 2021-04-16  7636  		ocp_data = ocp_read_byte(tp, MCU_TYPE_PLA, PLA_USB_CFG);
195aae321c829d Hayes Wang 2021-04-16  7637  		ocp_data |= EN_XG_LIP | EN_G_LIP;
195aae321c829d Hayes Wang 2021-04-16  7638  		ocp_write_byte(tp, MCU_TYPE_PLA, PLA_USB_CFG, ocp_data);
195aae321c829d Hayes Wang 2021-04-16  7639  		ocp_reg_write(tp, 0xb87c, 0x813d);
195aae321c829d Hayes Wang 2021-04-16  7640  		ocp_reg_write(tp, 0xb87e, 0x390e);
195aae321c829d Hayes Wang 2021-04-16  7641  		ocp_reg_write(tp, 0xb87c, 0x814f);
195aae321c829d Hayes Wang 2021-04-16  7642  		ocp_reg_write(tp, 0xb87e, 0x790e);
195aae321c829d Hayes Wang 2021-04-16  7643  		ocp_reg_write(tp, 0xb87c, 0x80b0);
195aae321c829d Hayes Wang 2021-04-16  7644  		ocp_reg_write(tp, 0xb87e, 0x0f31);
195aae321c829d Hayes Wang 2021-04-16  7645  		data = ocp_reg_read(tp, 0xbf4c);
195aae321c829d Hayes Wang 2021-04-16  7646  		data |= BIT(1);
195aae321c829d Hayes Wang 2021-04-16  7647  		ocp_reg_write(tp, 0xbf4c, data);
195aae321c829d Hayes Wang 2021-04-16  7648  		data = ocp_reg_read(tp, 0xbcca);
195aae321c829d Hayes Wang 2021-04-16  7649  		data |= BIT(9) | BIT(8);
195aae321c829d Hayes Wang 2021-04-16  7650  		ocp_reg_write(tp, 0xbcca, data);
195aae321c829d Hayes Wang 2021-04-16  7651  		ocp_reg_write(tp, 0xb87c, 0x8141);
195aae321c829d Hayes Wang 2021-04-16  7652  		ocp_reg_write(tp, 0xb87e, 0x320e);
195aae321c829d Hayes Wang 2021-04-16  7653  		ocp_reg_write(tp, 0xb87c, 0x8153);
195aae321c829d Hayes Wang 2021-04-16  7654  		ocp_reg_write(tp, 0xb87e, 0x720e);
195aae321c829d Hayes Wang 2021-04-16  7655  		ocp_reg_write(tp, 0xb87c, 0x8529);
195aae321c829d Hayes Wang 2021-04-16  7656  		ocp_reg_write(tp, 0xb87e, 0x050e);
195aae321c829d Hayes Wang 2021-04-16  7657  		data = ocp_reg_read(tp, OCP_EEE_CFG);
195aae321c829d Hayes Wang 2021-04-16  7658  		data &= ~CTAP_SHORT_EN;
195aae321c829d Hayes Wang 2021-04-16  7659  		ocp_reg_write(tp, OCP_EEE_CFG, data);
195aae321c829d Hayes Wang 2021-04-16  7660  
195aae321c829d Hayes Wang 2021-04-16  7661  		sram_write(tp, 0x816c, 0xc4a0);
195aae321c829d Hayes Wang 2021-04-16  7662  		sram_write(tp, 0x8170, 0xc4a0);
195aae321c829d Hayes Wang 2021-04-16  7663  		sram_write(tp, 0x8174, 0x04a0);
195aae321c829d Hayes Wang 2021-04-16  7664  		sram_write(tp, 0x8178, 0x04a0);
195aae321c829d Hayes Wang 2021-04-16  7665  		sram_write(tp, 0x817c, 0x0719);
195aae321c829d Hayes Wang 2021-04-16  7666  		sram_write(tp, 0x8ff4, 0x0400);
195aae321c829d Hayes Wang 2021-04-16  7667  		sram_write(tp, 0x8ff1, 0x0404);
195aae321c829d Hayes Wang 2021-04-16  7668  
195aae321c829d Hayes Wang 2021-04-16  7669  		ocp_reg_write(tp, 0xbf4a, 0x001b);
195aae321c829d Hayes Wang 2021-04-16  7670  		ocp_reg_write(tp, 0xb87c, 0x8033);
195aae321c829d Hayes Wang 2021-04-16  7671  		ocp_reg_write(tp, 0xb87e, 0x7c13);
195aae321c829d Hayes Wang 2021-04-16  7672  		ocp_reg_write(tp, 0xb87c, 0x8037);
195aae321c829d Hayes Wang 2021-04-16  7673  		ocp_reg_write(tp, 0xb87e, 0x7c13);
195aae321c829d Hayes Wang 2021-04-16  7674  		ocp_reg_write(tp, 0xb87c, 0x803b);
195aae321c829d Hayes Wang 2021-04-16  7675  		ocp_reg_write(tp, 0xb87e, 0xfc32);
195aae321c829d Hayes Wang 2021-04-16  7676  		ocp_reg_write(tp, 0xb87c, 0x803f);
195aae321c829d Hayes Wang 2021-04-16  7677  		ocp_reg_write(tp, 0xb87e, 0x7c13);
195aae321c829d Hayes Wang 2021-04-16  7678  		ocp_reg_write(tp, 0xb87c, 0x8043);
195aae321c829d Hayes Wang 2021-04-16  7679  		ocp_reg_write(tp, 0xb87e, 0x7c13);
195aae321c829d Hayes Wang 2021-04-16  7680  		ocp_reg_write(tp, 0xb87c, 0x8047);
195aae321c829d Hayes Wang 2021-04-16  7681  		ocp_reg_write(tp, 0xb87e, 0x7c13);
195aae321c829d Hayes Wang 2021-04-16  7682  
195aae321c829d Hayes Wang 2021-04-16  7683  		ocp_reg_write(tp, 0xb87c, 0x8145);
195aae321c829d Hayes Wang 2021-04-16  7684  		ocp_reg_write(tp, 0xb87e, 0x370e);
195aae321c829d Hayes Wang 2021-04-16  7685  		ocp_reg_write(tp, 0xb87c, 0x8157);
195aae321c829d Hayes Wang 2021-04-16  7686  		ocp_reg_write(tp, 0xb87e, 0x770e);
195aae321c829d Hayes Wang 2021-04-16  7687  		ocp_reg_write(tp, 0xb87c, 0x8169);
195aae321c829d Hayes Wang 2021-04-16  7688  		ocp_reg_write(tp, 0xb87e, 0x0d0a);
195aae321c829d Hayes Wang 2021-04-16  7689  		ocp_reg_write(tp, 0xb87c, 0x817b);
195aae321c829d Hayes Wang 2021-04-16  7690  		ocp_reg_write(tp, 0xb87e, 0x1d0a);
195aae321c829d Hayes Wang 2021-04-16  7691  
195aae321c829d Hayes Wang 2021-04-16  7692  		data = sram_read(tp, 0x8217);
195aae321c829d Hayes Wang 2021-04-16  7693  		data &= ~0xff00;
195aae321c829d Hayes Wang 2021-04-16  7694  		data |= 0x5000;
195aae321c829d Hayes Wang 2021-04-16  7695  		sram_write(tp, 0x8217, data);
195aae321c829d Hayes Wang 2021-04-16  7696  		data = sram_read(tp, 0x821a);
195aae321c829d Hayes Wang 2021-04-16  7697  		data &= ~0xff00;
195aae321c829d Hayes Wang 2021-04-16  7698  		data |= 0x5000;
195aae321c829d Hayes Wang 2021-04-16  7699  		sram_write(tp, 0x821a, data);
195aae321c829d Hayes Wang 2021-04-16  7700  		sram_write(tp, 0x80da, 0x0403);
195aae321c829d Hayes Wang 2021-04-16  7701  		data = sram_read(tp, 0x80dc);
195aae321c829d Hayes Wang 2021-04-16  7702  		data &= ~0xff00;
195aae321c829d Hayes Wang 2021-04-16  7703  		data |= 0x1000;
195aae321c829d Hayes Wang 2021-04-16  7704  		sram_write(tp, 0x80dc, data);
195aae321c829d Hayes Wang 2021-04-16  7705  		sram_write(tp, 0x80b3, 0x0384);
195aae321c829d Hayes Wang 2021-04-16  7706  		sram_write(tp, 0x80b7, 0x2007);
195aae321c829d Hayes Wang 2021-04-16  7707  		data = sram_read(tp, 0x80ba);
195aae321c829d Hayes Wang 2021-04-16  7708  		data &= ~0xff00;
195aae321c829d Hayes Wang 2021-04-16  7709  		data |= 0x6c00;
195aae321c829d Hayes Wang 2021-04-16  7710  		sram_write(tp, 0x80ba, data);
195aae321c829d Hayes Wang 2021-04-16  7711  		sram_write(tp, 0x80b5, 0xf009);
195aae321c829d Hayes Wang 2021-04-16  7712  		data = sram_read(tp, 0x80bd);
195aae321c829d Hayes Wang 2021-04-16  7713  		data &= ~0xff00;
195aae321c829d Hayes Wang 2021-04-16  7714  		data |= 0x9f00;
195aae321c829d Hayes Wang 2021-04-16  7715  		sram_write(tp, 0x80bd, data);
195aae321c829d Hayes Wang 2021-04-16  7716  		sram_write(tp, 0x80c7, 0xf083);
195aae321c829d Hayes Wang 2021-04-16  7717  		sram_write(tp, 0x80dd, 0x03f0);
195aae321c829d Hayes Wang 2021-04-16  7718  		data = sram_read(tp, 0x80df);
195aae321c829d Hayes Wang 2021-04-16  7719  		data &= ~0xff00;
195aae321c829d Hayes Wang 2021-04-16  7720  		data |= 0x1000;
195aae321c829d Hayes Wang 2021-04-16  7721  		sram_write(tp, 0x80df, data);
195aae321c829d Hayes Wang 2021-04-16  7722  		sram_write(tp, 0x80cb, 0x2007);
195aae321c829d Hayes Wang 2021-04-16  7723  		data = sram_read(tp, 0x80ce);
195aae321c829d Hayes Wang 2021-04-16  7724  		data &= ~0xff00;
195aae321c829d Hayes Wang 2021-04-16  7725  		data |= 0x6c00;
195aae321c829d Hayes Wang 2021-04-16  7726  		sram_write(tp, 0x80ce, data);
195aae321c829d Hayes Wang 2021-04-16  7727  		sram_write(tp, 0x80c9, 0x8009);
195aae321c829d Hayes Wang 2021-04-16  7728  		data = sram_read(tp, 0x80d1);
195aae321c829d Hayes Wang 2021-04-16  7729  		data &= ~0xff00;
195aae321c829d Hayes Wang 2021-04-16  7730  		data |= 0x8000;
195aae321c829d Hayes Wang 2021-04-16  7731  		sram_write(tp, 0x80d1, data);
195aae321c829d Hayes Wang 2021-04-16  7732  		sram_write(tp, 0x80a3, 0x200a);
195aae321c829d Hayes Wang 2021-04-16  7733  		sram_write(tp, 0x80a5, 0xf0ad);
195aae321c829d Hayes Wang 2021-04-16  7734  		sram_write(tp, 0x809f, 0x6073);
195aae321c829d Hayes Wang 2021-04-16  7735  		sram_write(tp, 0x80a1, 0x000b);
195aae321c829d Hayes Wang 2021-04-16  7736  		data = sram_read(tp, 0x80a9);
195aae321c829d Hayes Wang 2021-04-16  7737  		data &= ~0xff00;
195aae321c829d Hayes Wang 2021-04-16  7738  		data |= 0xc000;
195aae321c829d Hayes Wang 2021-04-16  7739  		sram_write(tp, 0x80a9, data);
195aae321c829d Hayes Wang 2021-04-16  7740  
195aae321c829d Hayes Wang 2021-04-16  7741  		if (rtl_phy_patch_request(tp, true, true))
195aae321c829d Hayes Wang 2021-04-16  7742  			return;
195aae321c829d Hayes Wang 2021-04-16  7743  
195aae321c829d Hayes Wang 2021-04-16  7744  		data = ocp_reg_read(tp, 0xb896);
195aae321c829d Hayes Wang 2021-04-16  7745  		data &= ~BIT(0);
195aae321c829d Hayes Wang 2021-04-16  7746  		ocp_reg_write(tp, 0xb896, data);
195aae321c829d Hayes Wang 2021-04-16  7747  		data = ocp_reg_read(tp, 0xb892);
195aae321c829d Hayes Wang 2021-04-16  7748  		data &= ~0xff00;
195aae321c829d Hayes Wang 2021-04-16  7749  		ocp_reg_write(tp, 0xb892, data);
195aae321c829d Hayes Wang 2021-04-16  7750  		ocp_reg_write(tp, 0xb88e, 0xc23e);
195aae321c829d Hayes Wang 2021-04-16  7751  		ocp_reg_write(tp, 0xb890, 0x0000);
195aae321c829d Hayes Wang 2021-04-16  7752  		ocp_reg_write(tp, 0xb88e, 0xc240);
195aae321c829d Hayes Wang 2021-04-16  7753  		ocp_reg_write(tp, 0xb890, 0x0103);
195aae321c829d Hayes Wang 2021-04-16  7754  		ocp_reg_write(tp, 0xb88e, 0xc242);
195aae321c829d Hayes Wang 2021-04-16  7755  		ocp_reg_write(tp, 0xb890, 0x0507);
195aae321c829d Hayes Wang 2021-04-16  7756  		ocp_reg_write(tp, 0xb88e, 0xc244);
195aae321c829d Hayes Wang 2021-04-16  7757  		ocp_reg_write(tp, 0xb890, 0x090b);
195aae321c829d Hayes Wang 2021-04-16  7758  		ocp_reg_write(tp, 0xb88e, 0xc246);
195aae321c829d Hayes Wang 2021-04-16  7759  		ocp_reg_write(tp, 0xb890, 0x0c0e);
195aae321c829d Hayes Wang 2021-04-16  7760  		ocp_reg_write(tp, 0xb88e, 0xc248);
195aae321c829d Hayes Wang 2021-04-16  7761  		ocp_reg_write(tp, 0xb890, 0x1012);
195aae321c829d Hayes Wang 2021-04-16  7762  		ocp_reg_write(tp, 0xb88e, 0xc24a);
195aae321c829d Hayes Wang 2021-04-16  7763  		ocp_reg_write(tp, 0xb890, 0x1416);
195aae321c829d Hayes Wang 2021-04-16  7764  		data = ocp_reg_read(tp, 0xb896);
195aae321c829d Hayes Wang 2021-04-16  7765  		data |= BIT(0);
195aae321c829d Hayes Wang 2021-04-16  7766  		ocp_reg_write(tp, 0xb896, data);
195aae321c829d Hayes Wang 2021-04-16  7767  
195aae321c829d Hayes Wang 2021-04-16  7768  		rtl_phy_patch_request(tp, false, true);
195aae321c829d Hayes Wang 2021-04-16  7769  
195aae321c829d Hayes Wang 2021-04-16  7770  		data = ocp_reg_read(tp, 0xa86a);
195aae321c829d Hayes Wang 2021-04-16  7771  		data |= BIT(0);
195aae321c829d Hayes Wang 2021-04-16  7772  		ocp_reg_write(tp, 0xa86a, data);
195aae321c829d Hayes Wang 2021-04-16  7773  		data = ocp_reg_read(tp, 0xa6f0);
195aae321c829d Hayes Wang 2021-04-16  7774  		data |= BIT(0);
195aae321c829d Hayes Wang 2021-04-16  7775  		ocp_reg_write(tp, 0xa6f0, data);
195aae321c829d Hayes Wang 2021-04-16  7776  
195aae321c829d Hayes Wang 2021-04-16  7777  		ocp_reg_write(tp, 0xbfa0, 0xd70d);
195aae321c829d Hayes Wang 2021-04-16  7778  		ocp_reg_write(tp, 0xbfa2, 0x4100);
195aae321c829d Hayes Wang 2021-04-16  7779  		ocp_reg_write(tp, 0xbfa4, 0xe868);
195aae321c829d Hayes Wang 2021-04-16  7780  		ocp_reg_write(tp, 0xbfa6, 0xdc59);
195aae321c829d Hayes Wang 2021-04-16  7781  		ocp_reg_write(tp, 0xb54c, 0x3c18);
195aae321c829d Hayes Wang 2021-04-16  7782  		data = ocp_reg_read(tp, 0xbfa4);
195aae321c829d Hayes Wang 2021-04-16  7783  		data &= ~BIT(5);
195aae321c829d Hayes Wang 2021-04-16  7784  		ocp_reg_write(tp, 0xbfa4, data);
195aae321c829d Hayes Wang 2021-04-16  7785  		data = sram_read(tp, 0x817d);
195aae321c829d Hayes Wang 2021-04-16  7786  		data |= BIT(12);
195aae321c829d Hayes Wang 2021-04-16  7787  		sram_write(tp, 0x817d, data);
195aae321c829d Hayes Wang 2021-04-16  7788  		break;
195aae321c829d Hayes Wang 2021-04-16  7789  	case RTL_VER_13:
195aae321c829d Hayes Wang 2021-04-16  7790  		/* 2.5G INRX */
195aae321c829d Hayes Wang 2021-04-16  7791  		data = ocp_reg_read(tp, 0xac46);
195aae321c829d Hayes Wang 2021-04-16  7792  		data &= ~0x00f0;
195aae321c829d Hayes Wang 2021-04-16  7793  		data |= 0x0090;
195aae321c829d Hayes Wang 2021-04-16  7794  		ocp_reg_write(tp, 0xac46, data);
195aae321c829d Hayes Wang 2021-04-16  7795  		data = ocp_reg_read(tp, 0xad30);
195aae321c829d Hayes Wang 2021-04-16  7796  		data &= ~0x0003;
195aae321c829d Hayes Wang 2021-04-16  7797  		data |= 0x0001;
195aae321c829d Hayes Wang 2021-04-16  7798  		ocp_reg_write(tp, 0xad30, data);
195aae321c829d Hayes Wang 2021-04-16  7799  		fallthrough;
195aae321c829d Hayes Wang 2021-04-16  7800  	case RTL_VER_15:
195aae321c829d Hayes Wang 2021-04-16  7801  		/* EEE parameter */
195aae321c829d Hayes Wang 2021-04-16  7802  		ocp_reg_write(tp, 0xb87c, 0x80f5);
195aae321c829d Hayes Wang 2021-04-16  7803  		ocp_reg_write(tp, 0xb87e, 0x760e);
195aae321c829d Hayes Wang 2021-04-16  7804  		ocp_reg_write(tp, 0xb87c, 0x8107);
195aae321c829d Hayes Wang 2021-04-16  7805  		ocp_reg_write(tp, 0xb87e, 0x360e);
195aae321c829d Hayes Wang 2021-04-16  7806  		ocp_reg_write(tp, 0xb87c, 0x8551);
195aae321c829d Hayes Wang 2021-04-16  7807  		data = ocp_reg_read(tp, 0xb87e);
195aae321c829d Hayes Wang 2021-04-16  7808  		data &= ~0xff00;
195aae321c829d Hayes Wang 2021-04-16  7809  		data |= 0x0800;
195aae321c829d Hayes Wang 2021-04-16  7810  		ocp_reg_write(tp, 0xb87e, data);
195aae321c829d Hayes Wang 2021-04-16  7811  
195aae321c829d Hayes Wang 2021-04-16  7812  		/* ADC_PGA parameter */
195aae321c829d Hayes Wang 2021-04-16  7813  		data = ocp_reg_read(tp, 0xbf00);
195aae321c829d Hayes Wang 2021-04-16  7814  		data &= ~0xe000;
195aae321c829d Hayes Wang 2021-04-16  7815  		data |= 0xa000;
195aae321c829d Hayes Wang 2021-04-16  7816  		ocp_reg_write(tp, 0xbf00, data);
195aae321c829d Hayes Wang 2021-04-16  7817  		data = ocp_reg_read(tp, 0xbf46);
195aae321c829d Hayes Wang 2021-04-16  7818  		data &= ~0x0f00;
195aae321c829d Hayes Wang 2021-04-16  7819  		data |= 0x0300;
195aae321c829d Hayes Wang 2021-04-16  7820  		ocp_reg_write(tp, 0xbf46, data);
195aae321c829d Hayes Wang 2021-04-16  7821  
195aae321c829d Hayes Wang 2021-04-16  7822  		/* Green Table-PGA, 1G full viterbi */
195aae321c829d Hayes Wang 2021-04-16  7823  		sram_write(tp, 0x8044, 0x2417);
195aae321c829d Hayes Wang 2021-04-16  7824  		sram_write(tp, 0x804a, 0x2417);
195aae321c829d Hayes Wang 2021-04-16  7825  		sram_write(tp, 0x8050, 0x2417);
195aae321c829d Hayes Wang 2021-04-16  7826  		sram_write(tp, 0x8056, 0x2417);
195aae321c829d Hayes Wang 2021-04-16  7827  		sram_write(tp, 0x805c, 0x2417);
195aae321c829d Hayes Wang 2021-04-16  7828  		sram_write(tp, 0x8062, 0x2417);
195aae321c829d Hayes Wang 2021-04-16  7829  		sram_write(tp, 0x8068, 0x2417);
195aae321c829d Hayes Wang 2021-04-16  7830  		sram_write(tp, 0x806e, 0x2417);
195aae321c829d Hayes Wang 2021-04-16  7831  		sram_write(tp, 0x8074, 0x2417);
195aae321c829d Hayes Wang 2021-04-16  7832  		sram_write(tp, 0x807a, 0x2417);
195aae321c829d Hayes Wang 2021-04-16  7833  
195aae321c829d Hayes Wang 2021-04-16  7834  		/* XG PLL */
195aae321c829d Hayes Wang 2021-04-16  7835  		data = ocp_reg_read(tp, 0xbf84);
195aae321c829d Hayes Wang 2021-04-16  7836  		data &= ~0xe000;
195aae321c829d Hayes Wang 2021-04-16  7837  		data |= 0xa000;
195aae321c829d Hayes Wang 2021-04-16  7838  		ocp_reg_write(tp, 0xbf84, data);
195aae321c829d Hayes Wang 2021-04-16  7839  		break;
195aae321c829d Hayes Wang 2021-04-16  7840  	default:
195aae321c829d Hayes Wang 2021-04-16  7841  		break;
195aae321c829d Hayes Wang 2021-04-16  7842  	}
195aae321c829d Hayes Wang 2021-04-16  7843  
195aae321c829d Hayes Wang 2021-04-16  7844  	if (rtl_phy_patch_request(tp, true, true))
195aae321c829d Hayes Wang 2021-04-16  7845  		return;
195aae321c829d Hayes Wang 2021-04-16  7846  
195aae321c829d Hayes Wang 2021-04-16  7847  	ocp_data = ocp_read_word(tp, MCU_TYPE_PLA, PLA_MAC_PWR_CTRL4);
195aae321c829d Hayes Wang 2021-04-16  7848  	ocp_data |= EEE_SPDWN_EN;
195aae321c829d Hayes Wang 2021-04-16  7849  	ocp_write_word(tp, MCU_TYPE_PLA, PLA_MAC_PWR_CTRL4, ocp_data);
195aae321c829d Hayes Wang 2021-04-16  7850  
195aae321c829d Hayes Wang 2021-04-16  7851  	data = ocp_reg_read(tp, OCP_DOWN_SPEED);
195aae321c829d Hayes Wang 2021-04-16  7852  	data &= ~(EN_EEE_100 | EN_EEE_1000);
195aae321c829d Hayes Wang 2021-04-16  7853  	data |= EN_10M_CLKDIV;
195aae321c829d Hayes Wang 2021-04-16  7854  	ocp_reg_write(tp, OCP_DOWN_SPEED, data);
195aae321c829d Hayes Wang 2021-04-16  7855  	tp->ups_info._10m_ckdiv = true;
195aae321c829d Hayes Wang 2021-04-16  7856  	tp->ups_info.eee_plloff_100 = false;
195aae321c829d Hayes Wang 2021-04-16  7857  	tp->ups_info.eee_plloff_giga = false;
195aae321c829d Hayes Wang 2021-04-16  7858  
195aae321c829d Hayes Wang 2021-04-16  7859  	data = ocp_reg_read(tp, OCP_POWER_CFG);
195aae321c829d Hayes Wang 2021-04-16  7860  	data &= ~EEE_CLKDIV_EN;
195aae321c829d Hayes Wang 2021-04-16  7861  	ocp_reg_write(tp, OCP_POWER_CFG, data);
195aae321c829d Hayes Wang 2021-04-16  7862  	tp->ups_info.eee_ckdiv = false;
195aae321c829d Hayes Wang 2021-04-16  7863  
195aae321c829d Hayes Wang 2021-04-16  7864  	rtl_phy_patch_request(tp, false, true);
195aae321c829d Hayes Wang 2021-04-16  7865  
195aae321c829d Hayes Wang 2021-04-16  7866  	rtl_green_en(tp, test_bit(GREEN_ETHERNET, &tp->flags));
195aae321c829d Hayes Wang 2021-04-16  7867  
195aae321c829d Hayes Wang 2021-04-16  7868  	data = ocp_reg_read(tp, 0xa428);
195aae321c829d Hayes Wang 2021-04-16  7869  	data &= ~BIT(9);
195aae321c829d Hayes Wang 2021-04-16  7870  	ocp_reg_write(tp, 0xa428, data);
195aae321c829d Hayes Wang 2021-04-16  7871  	data = ocp_reg_read(tp, 0xa5ea);
195aae321c829d Hayes Wang 2021-04-16  7872  	data &= ~BIT(0);
195aae321c829d Hayes Wang 2021-04-16  7873  	ocp_reg_write(tp, 0xa5ea, data);
195aae321c829d Hayes Wang 2021-04-16  7874  	tp->ups_info.lite_mode = 0;
195aae321c829d Hayes Wang 2021-04-16  7875  
195aae321c829d Hayes Wang 2021-04-16  7876  	if (tp->eee_en)
195aae321c829d Hayes Wang 2021-04-16  7877  		rtl_eee_enable(tp, true);
195aae321c829d Hayes Wang 2021-04-16  7878  
195aae321c829d Hayes Wang 2021-04-16  7879  	r8153_aldps_en(tp, true);
195aae321c829d Hayes Wang 2021-04-16  7880  	r8152b_enable_fc(tp);
195aae321c829d Hayes Wang 2021-04-16  7881  	r8153_u2p3en(tp, true);
195aae321c829d Hayes Wang 2021-04-16  7882  
195aae321c829d Hayes Wang 2021-04-16  7883  	set_bit(PHY_RESET, &tp->flags);
ac718b69301c7c hayeswang  2013-05-02  7884  }
ac718b69301c7c hayeswang  2013-05-02  7885  

:::::: The code at line 7474 was first introduced by commit
:::::: 195aae321c829dd1945900d75561e6aa79cce208 r8152: support new chips

:::::: TO: Hayes Wang <hayeswang@realtek.com>
:::::: CC: David S. Miller <davem@davemloft.net>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202107191712.2fNjndRF-lkp%40intel.com.

--45Z9DzgjV8m4Oswq
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
FAvQ6d4s++v/A7Wk7u8Z5gEA

--45Z9DzgjV8m4Oswq--
