Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBX5D66DQMGQEM5ICGUQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3f.google.com (mail-io1-xd3f.google.com [IPv6:2607:f8b0:4864:20::d3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E8DF3D5013
	for <lists+clang-built-linux@lfdr.de>; Sun, 25 Jul 2021 23:04:32 +0200 (CEST)
Received: by mail-io1-xd3f.google.com with SMTP id c18-20020a0566023352b0290523c137a6a4sf6973495ioz.8
        for <lists+clang-built-linux@lfdr.de>; Sun, 25 Jul 2021 14:04:32 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627247071; cv=pass;
        d=google.com; s=arc-20160816;
        b=s8QT2p3cppcSSoK1OGfaBqXDCiUewcoj/kmC2bdcnq/weDXAUD7z5EgT5HofzaumeL
         QsH+mS5UniJfRfjXXfWssXojyErCbcpyXvYGimq22ucTEgeBT4sRXeGh8FlGewOTRLHg
         H4cFTXrIKjOWQ6cfYCqDPbyVOsucKwspZpWBtuqzvdyfBf/fQb1ad6FKPdVRP3n3ejmN
         9YOrTd9T5Z2kB7QJtD0d5HMu/mNk887y2vMDo+8C2YpAoTKJb6SzQFCRsuxXQJpDdxn5
         NGMwisl/tQ8G4zSj+AqcwseIvBiojtd/au91xUDLh+agMx2bzPp7yU/FIjy5YyYhx3lA
         x7Kw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=JpvkY9baAs6FTwt/8Dm+mAat4+3aTgP8Vobokqxt+G4=;
        b=b0TrrCOUxcn5qoi7Bu6/czxBHvmcktJqYUGMudQse9lVPOAhKdIhwROH+rK5Hf2z4C
         7dm+Iudd2kQMZXhUHS4P8lABQ3QHDcf0/ppuH/sNcOoEgPca2FiPbg93j3zs4h4E8km/
         Wniy6+dLZm+WpqJHIfS90aTlasmjGnEU+pGrtDz3uMBrmf7LTc0zR6Wnl31CffdYXGLU
         D2VP5QUsVmz8xAleWrOxL2m4rQgp9sknyws4BqO84qkRiJsigL7GstfYqOFNaItxL6Ax
         b23kHsxbrIjWt9setPJZeG6Cu34IiZzakqV+TGNgJKQf/X7g3TemlmB60oqZJRdHh29r
         rcMA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.20 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=JpvkY9baAs6FTwt/8Dm+mAat4+3aTgP8Vobokqxt+G4=;
        b=X+3pSUoY+1++7ZJpOHR2fokgaUMK/k2COV3GBr+29FW8rTBOjAr0DYqDtH7kYddndR
         VIG1TJvNh1BcagDQ7cXgwBjOXWX9TCLvEv9tLaGuOlHgkWQRVI4Fm7lVACUTMQnsHVJu
         IRphAA76YkOCpIVl/OwsY8dxV7BeL+Ig5Edd2+D4jD9cXp5ooAEvqDqIv46zhgJz5gPX
         u+c9TJRYJQgcC2MfOHqADMkt/LCyh3Ee44r/SRy1y90fxgzX8EXfPsdpaQMkEcSLACIH
         Try4OG1dYJ+0PFZd3JsryMX6QhqqOYMJuVwumN97+VSFr43ozxk8ipHTPpvoupRasbJY
         b9Tg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=JpvkY9baAs6FTwt/8Dm+mAat4+3aTgP8Vobokqxt+G4=;
        b=XCYhPnDVce2QhAc+9L4MECEwyY86uErCq6k3AhhQmadKSPl5lu2HAY9Ai/C86h1Ayd
         1jk3QXXTLMnMhn12pEAOLoGLGTOyMUfTmq5zgqnga021dZ35j4GZFvZhUUKbTK8lOlzd
         Do4KUtcJJXIDauW7QeE6c7S1M5KZZjOimo2N1JwcrgfsVY3dk/eVYBLYiKcPFxM0UmJc
         TLAu1Nevnywk85jGKRL/o3uk2DXTO09FcU/pmbXtUrgdwziDVqd7MDGoDpxR1RBKqrGk
         fJPhvI/ixPmAj8N2nY4z4gzdPKEV/BFM0D1rlv8XEV+hYztnxbGtSTY2RDP+uJoGBK+d
         NFKg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533trUWLGnINSVH97ztRraHKsJRyRd5gJVrUeTOx4YrMksQV1Mwj
	CARox27cEizikd6IllfED1w=
X-Google-Smtp-Source: ABdhPJxf7csZy4Fyo9FVWUetNw0/2tuSWN7z5F3jUbKX9ieMwsIDKoD3k3zjJbAeYcxWaM8KC+6hWA==
X-Received: by 2002:a6b:6016:: with SMTP id r22mr12548485iog.12.1627247071605;
        Sun, 25 Jul 2021 14:04:31 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6602:2c48:: with SMTP id x8ls3164270iov.8.gmail; Sun, 25
 Jul 2021 14:04:31 -0700 (PDT)
X-Received: by 2002:a5e:dc48:: with SMTP id s8mr12205288iop.133.1627247071114;
        Sun, 25 Jul 2021 14:04:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627247071; cv=none;
        d=google.com; s=arc-20160816;
        b=XO2YLRFV6v2nPk6E375glOd9DnJtRMKKb8TOIsNwSSaa6ukjQx8i5THHGM/2+ECQ16
         xpE4w/1V+Ti1vHiE5Boyuts1QgzyazJe9qGvj7PniJ86yjG7Lex/CYmqqlA5MSnJhypK
         4/XhY9Yhih0fNl43P6F6rV/9nFxsY5Z9mnin0jFTg5r/xkdpPNfhuU+dRorBhxGmGA88
         2Jn+7JSXTJ9QJyS9fSsmGjyDG968VCuu+SJfp7m2SwuVD9JTvmGotDKkK9Jz0l6N+h9o
         iqv3sDRxycK9TB91LghrxG/JkmJk8ymWmc2hydwBb9kUKANAtr6vKjMblaMui1yfgrF7
         FoiQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=GL6xr4TFL1ncjzY4VGvBEDOxO429NxPc622/fuau268=;
        b=024FUnn2ynb1fUQQwLadI26jD6ObDQEVyH0q5tesTQDcq9wdX4OLHjl+Db/DpOVVVl
         X2m0cWxgRC6CX+Xg7W0qgWDbJISDgPAfA9Y8QgTUyM3OxUoHfQYMa9m+pcXN8GvWe56D
         gYsPBGU1rMkqQv4SfxKTEB8mOf2yZXBVcup1VJsinsAOaZ1FF9H1KLJO9jLAxkWIDKpF
         22OPKZbEvcxfzkDxS93shDK8OuPq//NAhExauRY3zAox8gdp8mRMLw0SPi3uLa0wpGgy
         n2qCaIou9INWx2O8qOB4ZjhHY2D0EZySbuUsdVV56wxNgEmMbistdG8EX5e0zFwNkPWS
         dDBQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.20 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga02.intel.com (mga02.intel.com. [134.134.136.20])
        by gmr-mx.google.com with ESMTPS id k14si1754933ilv.2.2021.07.25.14.04.30
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 25 Jul 2021 14:04:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.20 as permitted sender) client-ip=134.134.136.20;
X-IronPort-AV: E=McAfee;i="6200,9189,10056"; a="199319133"
X-IronPort-AV: E=Sophos;i="5.84,269,1620716400"; 
   d="gz'50?scan'50,208,50";a="199319133"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
  by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 25 Jul 2021 14:04:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,269,1620716400"; 
   d="gz'50?scan'50,208,50";a="416355056"
Received: from lkp-server01.sh.intel.com (HELO d053b881505b) ([10.239.97.150])
  by orsmga006.jf.intel.com with ESMTP; 25 Jul 2021 14:04:27 -0700
Received: from kbuild by d053b881505b with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1m7lIQ-0004qW-L7; Sun, 25 Jul 2021 21:04:26 +0000
Date: Mon, 26 Jul 2021 05:03:32 +0800
From: kernel test robot <lkp@intel.com>
To: Martin Kaiser <martin@kaiser.cx>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: clang-built-linux@googlegroups.com, kbuild-all@lists.01.org,
	linux-staging@lists.linux.dev, kernel-janitors@vger.kernel.org,
	linux-kernel@vger.kernel.org, Martin Kaiser <martin@kaiser.cx>
Subject: Re: [PATCH 14/18] staging: rtl8188eu: simplify
 rtl88eu_phy_iq_calibrate
Message-ID: <202107260403.wQ3mf4xe-lkp@intel.com>
References: <20210725155902.32433-14-martin@kaiser.cx>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="YiEDa0DAkWCtVeE4"
Content-Disposition: inline
In-Reply-To: <20210725155902.32433-14-martin@kaiser.cx>
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


--YiEDa0DAkWCtVeE4
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi Martin,

Thank you for the patch! Perhaps something to improve:

[auto build test WARNING on staging/staging-testing]

url:    https://github.com/0day-ci/linux/commits/Martin-Kaiser/staging-rtl8188eu-remove-unused-defines/20210726-000245
base:   https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git f133717efc6f28052667daf682e99ffd4b3d7588
config: x86_64-randconfig-a005-20210725 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project c63dbd850182797bc4b76124d08e1c320ab2365d)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install x86_64 cross compiling tool for clang build
        # apt-get install binutils-x86-64-linux-gnu
        # https://github.com/0day-ci/linux/commit/fd8745a2293eb9616eb3ae4c2e231462a18bdbac
        git remote add linux-review https://github.com/0day-ci/linux
        git fetch --no-tags linux-review Martin-Kaiser/staging-rtl8188eu-remove-unused-defines/20210726-000245
        git checkout fd8745a2293eb9616eb3ae4c2e231462a18bdbac
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

>> drivers/staging/rtl8188eu/hal/phy.c:1106:16: warning: variable 'pathbok' set but not used [-Wunused-but-set-variable]
           bool pathaok, pathbok;
                         ^
>> drivers/staging/rtl8188eu/hal/phy.c:1107:51: warning: variable 'reg_ec4' set but not used [-Wunused-but-set-variable]
           s32 reg_e94, reg_e9c, reg_ea4, reg_eb4, reg_ebc, reg_ec4;
                                                            ^
   2 warnings generated.
--
>> drivers/staging/rtl8188eu/hal/phy.c:1107:51: warning: variable 'reg_ec4' set but not used [-Wunused-but-set-variable]
           s32 reg_e94, reg_e9c, reg_ea4, reg_eb4, reg_ebc, reg_ec4;
                                                            ^
>> drivers/staging/rtl8188eu/hal/phy.c:1106:16: warning: variable 'pathbok' set but not used [-Wunused-but-set-variable]
           bool pathaok, pathbok;
                         ^
   2 warnings generated.


vim +/pathbok +1106 drivers/staging/rtl8188eu/hal/phy.c

d9124e064d27a5 navin patidar   2014-09-07  1100  
d9124e064d27a5 navin patidar   2014-09-07  1101  void rtl88eu_phy_iq_calibrate(struct adapter *adapt, bool recovery)
d9124e064d27a5 navin patidar   2014-09-07  1102  {
177aa53a0d11b2 Ivan Safonov    2016-09-19  1103  	struct odm_dm_struct *dm_odm = &adapt->HalData->odmpriv;
d9124e064d27a5 navin patidar   2014-09-07  1104  	s32 result[4][8];
dee43f7ad325ec Michael Straube 2018-09-27  1105  	u8 i, final;
d9124e064d27a5 navin patidar   2014-09-07 @1106  	bool pathaok, pathbok;
9393d34e4905ff Sudip Mukherjee 2015-06-12 @1107  	s32 reg_e94, reg_e9c, reg_ea4, reg_eb4, reg_ebc, reg_ec4;
d9124e064d27a5 navin patidar   2014-09-07  1108  	bool is12simular, is13simular, is23simular;
d9124e064d27a5 navin patidar   2014-09-07  1109  	u32 iqk_bb_reg_92c[IQK_BB_REG_NUM] = {
d9124e064d27a5 navin patidar   2014-09-07  1110  		rOFDM0_XARxIQImbalance, rOFDM0_XBRxIQImbalance,
d9124e064d27a5 navin patidar   2014-09-07  1111  		rOFDM0_ECCAThreshold, rOFDM0_AGCRSSITable,
d9124e064d27a5 navin patidar   2014-09-07  1112  		rOFDM0_XATxIQImbalance, rOFDM0_XBTxIQImbalance,
d9124e064d27a5 navin patidar   2014-09-07  1113  		rOFDM0_XCTxAFE, rOFDM0_XDTxAFE,
d9124e064d27a5 navin patidar   2014-09-07  1114  		rOFDM0_RxIQExtAnta};
d9124e064d27a5 navin patidar   2014-09-07  1115  
d9124e064d27a5 navin patidar   2014-09-07  1116  	if (!(dm_odm->SupportAbility & ODM_RF_CALIBRATION))
d9124e064d27a5 navin patidar   2014-09-07  1117  		return;
d9124e064d27a5 navin patidar   2014-09-07  1118  
d9124e064d27a5 navin patidar   2014-09-07  1119  	if (recovery) {
d9124e064d27a5 navin patidar   2014-09-07  1120  		reload_adda_reg(adapt, iqk_bb_reg_92c,
d9124e064d27a5 navin patidar   2014-09-07  1121  				dm_odm->RFCalibrateInfo.IQK_BB_backup_recover, 9);
d9124e064d27a5 navin patidar   2014-09-07  1122  		return;
d9124e064d27a5 navin patidar   2014-09-07  1123  	}
d9124e064d27a5 navin patidar   2014-09-07  1124  
a793dbe926014e Michael Straube 2018-12-07  1125  	memset(result, 0, sizeof(result));
a793dbe926014e Michael Straube 2018-12-07  1126  	for (i = 0; i < 8; i += 2)
d9124e064d27a5 navin patidar   2014-09-07  1127  		result[3][i] = 0x100;
a793dbe926014e Michael Straube 2018-12-07  1128  
d9124e064d27a5 navin patidar   2014-09-07  1129  	final = 0xff;
d9124e064d27a5 navin patidar   2014-09-07  1130  	pathaok = false;
d9124e064d27a5 navin patidar   2014-09-07  1131  	pathbok = false;
d9124e064d27a5 navin patidar   2014-09-07  1132  	is12simular = false;
d9124e064d27a5 navin patidar   2014-09-07  1133  	is23simular = false;
d9124e064d27a5 navin patidar   2014-09-07  1134  	is13simular = false;
d9124e064d27a5 navin patidar   2014-09-07  1135  
d9124e064d27a5 navin patidar   2014-09-07  1136  	for (i = 0; i < 3; i++) {
fd8745a2293eb9 Martin Kaiser   2021-07-25  1137  		phy_iq_calibrate(adapt, result, i, false);
d9124e064d27a5 navin patidar   2014-09-07  1138  
d9124e064d27a5 navin patidar   2014-09-07  1139  		if (i == 1) {
d9124e064d27a5 navin patidar   2014-09-07  1140  			is12simular = simularity_compare(adapt, result, 0, 1);
d9124e064d27a5 navin patidar   2014-09-07  1141  			if (is12simular) {
d9124e064d27a5 navin patidar   2014-09-07  1142  				final = 0;
d9124e064d27a5 navin patidar   2014-09-07  1143  				break;
d9124e064d27a5 navin patidar   2014-09-07  1144  			}
d9124e064d27a5 navin patidar   2014-09-07  1145  		}
d9124e064d27a5 navin patidar   2014-09-07  1146  
d9124e064d27a5 navin patidar   2014-09-07  1147  		if (i == 2) {
d9124e064d27a5 navin patidar   2014-09-07  1148  			is13simular = simularity_compare(adapt, result, 0, 2);
d9124e064d27a5 navin patidar   2014-09-07  1149  			if (is13simular) {
d9124e064d27a5 navin patidar   2014-09-07  1150  				final = 0;
d9124e064d27a5 navin patidar   2014-09-07  1151  				break;
d9124e064d27a5 navin patidar   2014-09-07  1152  			}
d9124e064d27a5 navin patidar   2014-09-07  1153  			is23simular = simularity_compare(adapt, result, 1, 2);
d9124e064d27a5 navin patidar   2014-09-07  1154  			if (is23simular)
d9124e064d27a5 navin patidar   2014-09-07  1155  				final = 1;
d9124e064d27a5 navin patidar   2014-09-07  1156  			else
d9124e064d27a5 navin patidar   2014-09-07  1157  				final = 3;
d9124e064d27a5 navin patidar   2014-09-07  1158  		}
d9124e064d27a5 navin patidar   2014-09-07  1159  	}
d9124e064d27a5 navin patidar   2014-09-07  1160  
d9124e064d27a5 navin patidar   2014-09-07  1161  	for (i = 0; i < 4; i++) {
d9124e064d27a5 navin patidar   2014-09-07  1162  		reg_e94 = result[i][0];
d9124e064d27a5 navin patidar   2014-09-07  1163  		reg_e9c = result[i][1];
d9124e064d27a5 navin patidar   2014-09-07  1164  		reg_ea4 = result[i][2];
d9124e064d27a5 navin patidar   2014-09-07  1165  		reg_eb4 = result[i][4];
d9124e064d27a5 navin patidar   2014-09-07  1166  		reg_ebc = result[i][5];
d9124e064d27a5 navin patidar   2014-09-07  1167  		reg_ec4 = result[i][6];
d9124e064d27a5 navin patidar   2014-09-07  1168  	}
d9124e064d27a5 navin patidar   2014-09-07  1169  
d9124e064d27a5 navin patidar   2014-09-07  1170  	if (final != 0xff) {
d9124e064d27a5 navin patidar   2014-09-07  1171  		reg_e94 = result[final][0];
d9124e064d27a5 navin patidar   2014-09-07  1172  		reg_e9c = result[final][1];
d9124e064d27a5 navin patidar   2014-09-07  1173  		reg_ea4 = result[final][2];
d9124e064d27a5 navin patidar   2014-09-07  1174  		reg_eb4 = result[final][4];
d9124e064d27a5 navin patidar   2014-09-07  1175  		reg_ebc = result[final][5];
d9124e064d27a5 navin patidar   2014-09-07  1176  		dm_odm->RFCalibrateInfo.RegE94 = reg_e94;
d9124e064d27a5 navin patidar   2014-09-07  1177  		dm_odm->RFCalibrateInfo.RegE9C = reg_e9c;
d9124e064d27a5 navin patidar   2014-09-07  1178  		dm_odm->RFCalibrateInfo.RegEB4 = reg_eb4;
d9124e064d27a5 navin patidar   2014-09-07  1179  		dm_odm->RFCalibrateInfo.RegEBC = reg_ebc;
d9124e064d27a5 navin patidar   2014-09-07  1180  		reg_ec4 = result[final][6];
d9124e064d27a5 navin patidar   2014-09-07  1181  		pathaok = true;
d9124e064d27a5 navin patidar   2014-09-07  1182  		pathbok = true;
d9124e064d27a5 navin patidar   2014-09-07  1183  	} else {
d9124e064d27a5 navin patidar   2014-09-07  1184  		dm_odm->RFCalibrateInfo.RegE94 = 0x100;
d9124e064d27a5 navin patidar   2014-09-07  1185  		dm_odm->RFCalibrateInfo.RegEB4 = 0x100;
d9124e064d27a5 navin patidar   2014-09-07  1186  		dm_odm->RFCalibrateInfo.RegE9C = 0x0;
d9124e064d27a5 navin patidar   2014-09-07  1187  		dm_odm->RFCalibrateInfo.RegEBC = 0x0;
d9124e064d27a5 navin patidar   2014-09-07  1188  	}
d9124e064d27a5 navin patidar   2014-09-07  1189  	if (reg_e94 != 0)
d9124e064d27a5 navin patidar   2014-09-07  1190  		patha_fill_iqk(adapt, pathaok, result, final,
d9124e064d27a5 navin patidar   2014-09-07  1191  			       (reg_ea4 == 0));
d9124e064d27a5 navin patidar   2014-09-07  1192  
d9124e064d27a5 navin patidar   2014-09-07  1193  	if (final < 4) {
d9124e064d27a5 navin patidar   2014-09-07  1194  		for (i = 0; i < IQK_Matrix_REG_NUM; i++)
dee43f7ad325ec Michael Straube 2018-09-27  1195  			dm_odm->RFCalibrateInfo.IQKMatrixRegSetting[0].Value[0][i] = result[final][i];
dee43f7ad325ec Michael Straube 2018-09-27  1196  		dm_odm->RFCalibrateInfo.IQKMatrixRegSetting[0].bIQKDone = true;
d9124e064d27a5 navin patidar   2014-09-07  1197  	}
d9124e064d27a5 navin patidar   2014-09-07  1198  
d9124e064d27a5 navin patidar   2014-09-07  1199  	save_adda_registers(adapt, iqk_bb_reg_92c,
d9124e064d27a5 navin patidar   2014-09-07  1200  			    dm_odm->RFCalibrateInfo.IQK_BB_backup_recover, 9);
d9124e064d27a5 navin patidar   2014-09-07  1201  }
d9124e064d27a5 navin patidar   2014-09-07  1202  

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202107260403.wQ3mf4xe-lkp%40intel.com.

--YiEDa0DAkWCtVeE4
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--YiEDa0DAkWCtVeE4--
