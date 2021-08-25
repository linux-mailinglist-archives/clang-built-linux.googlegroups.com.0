Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBQPETCEQMGQE22CS4HI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53a.google.com (mail-pg1-x53a.google.com [IPv6:2607:f8b0:4864:20::53a])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CE503F74C2
	for <lists+clang-built-linux@lfdr.de>; Wed, 25 Aug 2021 14:06:27 +0200 (CEST)
Received: by mail-pg1-x53a.google.com with SMTP id 32-20020a6315600000b029023caa2bfec4sf13947061pgv.20
        for <lists+clang-built-linux@lfdr.de>; Wed, 25 Aug 2021 05:06:27 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629893185; cv=pass;
        d=google.com; s=arc-20160816;
        b=fRbLUVbkCE5tJW8SeE9yRi7mjLnRXj6Q2U80MLzzFh4Rr//hSdfo55oVI/3t7QpER0
         Q5gYaKv6QpNzGAtUUsaFtLrEdWqNKs/H1FineH8LLGIuajn7XiaOz2H7XA5a8UDzqxpF
         PO0VPqgqrDRCQzO56p6r4djbBG5r8tyuuZkM6/8t1FNOPwQgjZdaXdcVZarnpvqrxGxC
         HNRqBE64Gdj8odNxrQKWNSm/4VzxgMfzdppewYdca9WhH+zG141OYY1TJvEk6rsBTGWc
         o7l817zuUNFTTwzY95QL6qHNosBhtTxsZG/Ui2qAwEMj9DvFihTbh+1SUm9DRpqpQp7m
         rAdQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=pVZG1Fc9hQgwTD7Gh9zwIU+sTe8+h2wwQDxRR9JBX/A=;
        b=zTVNrRR0SmwnnQFPuj/oyAr53ow1WVSeRSPdLLVwcYm7+ufGPMJV9EI+SV3LaWvFQL
         9yX/RdicK7Mu+6hIV3BGnIAwhR70L0npSCrAjG2NtYgphu+nRkqDzeyTzo+SBh2jYo9A
         GcQkNoTdQw7dcgOn/j2TTtYr4MDRMVTPaNO6i7cwLPTNVY9vyvrZf5vB65WDetrFZ1x4
         pQobJc6Trz3OPP9ikOOEgLlQnQo1LCaFAmnOo2IHisoyVw4uV35a0v7iqVCiSW7138FC
         1ZXirCr8GRbeTauFO3zSK9bx05XE4AP4E/KKbl3QUSvsUZAjU+/XAEvoyy3aS/B72dwx
         AMlw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.120 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=pVZG1Fc9hQgwTD7Gh9zwIU+sTe8+h2wwQDxRR9JBX/A=;
        b=nNz2bWf5upTEkCYmZfIr+hAIqs4UP934u9qsrCKr00oZRVWMiQvTdIo5+qG8nFmX18
         OuiWuke9aWK9/ItceuF2sEZJ/EVPbkBMmyRiaKt2N+LDHbF+AX1u6Os+SOuBR9+1gwty
         NdIHflYm7m95Rh3MgFJZnvIAVxUiDDXwtsU6nX7i3MRw5rmi6oPamrn5w8cqK7psyLu8
         PpDL4V9085HSxQv6onj+8G8om4jBoAye0zOhR9XxEuKVyOSzkRmKHUI7TLG+GAQk08bH
         6J0vthbqVVuMv9rgxj4/jRvlPAAdM0FKVoGhuFCNX6MZjggHfSJZJSs3Q/NvO7rMxeCc
         zzZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=pVZG1Fc9hQgwTD7Gh9zwIU+sTe8+h2wwQDxRR9JBX/A=;
        b=HCAzy1LEUsUoavXyoizVZOuovxroBlvnndae007npKRmHFUS7pho/SgiWZ7fSeVFVx
         lXQQB45Q4nEsfW3Mqy9j1olo9Gr9Nbwy3W/DwaS70s7ZM/t7sMnGkYmXCllS16wgkcUA
         BUCqlPU/tz9xgz0DgWb3ZuLF2URUEwITE1KiQCASltmyCpyx1cCv9jQytkvUfaBkG8zG
         Dywa+3t68yCy2FnNWWMX1x5/k+dV2mnnZoWhMV/c4tVqSkAR8m2geaV1qA7xByoJRWZR
         Dk4NgmBp1EGrG6yzRNmPjeM7SwY22MVT+WJRkABeLUsG8Gg6P8vas70P2iXwpFuw6Wid
         oXRA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5313xRyes5p4iERYcL2aEm/W5Pc6VxSH/HR4hb7BgKB1RrFvwkjx
	jt9zEc15z6WW0M54nPs4/wA=
X-Google-Smtp-Source: ABdhPJwQn9T/u3w+lpulMTRMBoLBPJetLgMTHBI5lYJuRmI+Nqgw2dCjX4CXpqvtkMsrAvvXyrIWpw==
X-Received: by 2002:a17:90a:fb96:: with SMTP id cp22mr10592717pjb.211.1629893185304;
        Wed, 25 Aug 2021 05:06:25 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:4f81:: with SMTP id q1ls1064917pjh.1.gmail; Wed, 25
 Aug 2021 05:06:24 -0700 (PDT)
X-Received: by 2002:a17:902:e8ce:b0:132:b140:9540 with SMTP id v14-20020a170902e8ce00b00132b1409540mr18643874plg.28.1629893183866;
        Wed, 25 Aug 2021 05:06:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629893183; cv=none;
        d=google.com; s=arc-20160816;
        b=TTeIqv2fzB3Qpi4Jr+83loq2K7g9qWNSpGij2OZaaQ8ZcuPUZUdvJnHGBzy5Q6vi2p
         DdsoGkL3b4PTTomSRpo+QiIceeOVKDLa9bjZHHw9Q/+JvdVfT4tAH/kpJb9c7WCrRxNB
         voB1TZY9B1viSl8fzrwLrXR9gSssXzPZPWBVtuepB0I+MrAKKvTEwQc1J7/IdlvWfazM
         1ycja30Tpx1d7Uf4KhyGIEszQYUEFghDwdgUIzItFVaDN3eDoUAnMdJIMYArqqdw8GXb
         gT4gxeKSBlRhWATnQMVnwgCLrd+jCtNaTo4AWt/FO1nKrbFk3PTI/3wlxaEtwmM/vpg8
         b/GQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=Tj/wWmmHpTj8plx5Z/DooPf7bgKOmTHF51Hn8lEktjs=;
        b=YUbG8bwcpLc/Nxb6vTSch4so7xipBti5WWzh2e2Xh3vKOmd7bcaiIDJD+/llnzFllK
         ZAv458CEwotcq3npuPq57evgDKPyF0Qfei0W+IgR4ukVuHL34Lj7u9AzJqlBiFK5+cl5
         WA61gTOuSx4VsV+BeX2XHqO7UaQ1yBmj+7naEOeItadHFMJuhFztVnbiaXz/FcF5GNMK
         HshgvzO/5/zkCJluWOKPClYUJecPb4jxgNwZqLOvyBFL9qG6pcxHrCvm3DvpM7244dzp
         Cg9xTWSECcuiqacaGMFecv9AcUh3GRuh2AjqR/qiniOt0+lqEm5xUMdymXFsKOi34lMj
         rF0Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.120 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga04.intel.com (mga04.intel.com. [192.55.52.120])
        by gmr-mx.google.com with ESMTPS id u5si496036pji.0.2021.08.25.05.06.23
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 25 Aug 2021 05:06:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.120 as permitted sender) client-ip=192.55.52.120;
X-IronPort-AV: E=McAfee;i="6200,9189,10086"; a="215665349"
X-IronPort-AV: E=Sophos;i="5.84,350,1620716400"; 
   d="gz'50?scan'50,208,50";a="215665349"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
  by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 25 Aug 2021 05:06:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,350,1620716400"; 
   d="gz'50?scan'50,208,50";a="516082570"
Received: from lkp-server01.sh.intel.com (HELO 4fbc2b3ce5aa) ([10.239.97.150])
  by fmsmga004.fm.intel.com with ESMTP; 25 Aug 2021 05:06:19 -0700
Received: from kbuild by 4fbc2b3ce5aa with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1mIrfe-00007P-TA; Wed, 25 Aug 2021 12:06:18 +0000
Date: Wed, 25 Aug 2021 20:05:42 +0800
From: kernel test robot <lkp@intel.com>
To: Pavel Skripkin <paskripkin@gmail.com>, Larry.Finger@lwfinger.net,
	phil@philpotter.co.uk, gregkh@linuxfoundation.org,
	straube.linux@gmail.com, fmdefrancesco@gmail.com
Cc: clang-built-linux@googlegroups.com, kbuild-all@lists.01.org,
	linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org,
	Pavel Skripkin <paskripkin@gmail.com>
Subject: Re: [PATCH v3 3/6] staging: r8188eu: add error handling of rtw_read8
Message-ID: <202108251911.Vwmzl4rI-lkp@intel.com>
References: <c59d5d850bf9aab208704182c83086609289cb9c.1629789580.git.paskripkin@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="dDRMvlgZJXvWKvBx"
Content-Disposition: inline
In-Reply-To: <c59d5d850bf9aab208704182c83086609289cb9c.1629789580.git.paskripkin@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 192.55.52.120 as permitted
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


--dDRMvlgZJXvWKvBx
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi Pavel,

Thank you for the patch! Yet something to improve:

[auto build test ERROR on staging/staging-testing]

url:    https://github.com/0day-ci/linux/commits/Pavel-Skripkin/staging-r8188eu-remove-read-write-_macreg/20210824-162756
base:   https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git 093991aaadf0fbb34184fa37a46e7a157da3f386
config: arm-buildonly-randconfig-r001-20210825 (attached as .config)
compiler: clang version 14.0.0 (https://github.com/llvm/llvm-project ea08c4cd1c0869ec5024a8bb3f5cdf06ab03ae83)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install arm cross compiling tool for clang build
        # apt-get install binutils-arm-linux-gnueabi
        # https://github.com/0day-ci/linux/commit/d4e4bbed4e59df37967086f60fe92cb1b4504d37
        git remote add linux-review https://github.com/0day-ci/linux
        git fetch --no-tags linux-review Pavel-Skripkin/staging-r8188eu-remove-read-write-_macreg/20210824-162756
        git checkout d4e4bbed4e59df37967086f60fe92cb1b4504d37
        # save the attached .config to linux build tree
        mkdir build_dir
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross O=build_dir ARCH=arm SHELL=/bin/bash drivers/staging/r8188eu/

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

>> drivers/staging/r8188eu/hal/usb_halinit.c:2022:3: error: expected expression
                   u8 tmp;
                   ^
   1 error generated.

Kconfig warnings: (for reference only)
   WARNING: unmet direct dependencies detected for QCOM_SCM
   Depends on (ARM || ARM64) && HAVE_ARM_SMCCC
   Selected by
   - ARM_QCOM_SPM_CPUIDLE && CPU_IDLE && (ARM || ARM64) && (ARCH_QCOM || COMPILE_TEST && !ARM64 && MMU


vim +2022 drivers/staging/r8188eu/hal/usb_halinit.c

  1450	
  1451	static void SetHwReg8188EU(struct adapter *Adapter, u8 variable, u8 *val)
  1452	{
  1453		struct hal_data_8188e	*haldata = GET_HAL_DATA(Adapter);
  1454		struct dm_priv	*pdmpriv = &haldata->dmpriv;
  1455		struct odm_dm_struct *podmpriv = &haldata->odmpriv;
  1456		int error;
  1457		u8 tmp;
  1458	
  1459		switch (variable) {
  1460		case HW_VAR_MEDIA_STATUS:
  1461			{
  1462				u8 val8;
  1463	
  1464				error = rtw_read8(Adapter, MSR, &val8);
  1465				if (error)
  1466					return;
  1467	
  1468				val8 &= 0x0c;
  1469				val8 |= *((u8 *)val);
  1470				rtw_write8(Adapter, MSR, val8);
  1471			}
  1472			break;
  1473		case HW_VAR_MEDIA_STATUS1:
  1474			{
  1475				u8 val8;
  1476	
  1477				error = rtw_read8(Adapter, MSR, &val8);
  1478				if (error)
  1479					return;
  1480	
  1481				val8 &= 0x03;
  1482				val8 |= *((u8 *)val) << 2;
  1483				rtw_write8(Adapter, MSR, val8);
  1484			}
  1485			break;
  1486		case HW_VAR_SET_OPMODE:
  1487			hw_var_set_opmode(Adapter, variable, val);
  1488			break;
  1489		case HW_VAR_MAC_ADDR:
  1490			hw_var_set_macaddr(Adapter, variable, val);
  1491			break;
  1492		case HW_VAR_BSSID:
  1493			hw_var_set_bssid(Adapter, variable, val);
  1494			break;
  1495		case HW_VAR_BASIC_RATE:
  1496			{
  1497				u16 BrateCfg = 0;
  1498				u8 RateIndex = 0;
  1499	
  1500				/*  2007.01.16, by Emily */
  1501				/*  Select RRSR (in Legacy-OFDM and CCK) */
  1502				/*  For 8190, we select only 24M, 12M, 6M, 11M, 5.5M, 2M, and 1M from the Basic rate. */
  1503				/*  We do not use other rates. */
  1504				HalSetBrateCfg(Adapter, val, &BrateCfg);
  1505				DBG_88E("HW_VAR_BASIC_RATE: BrateCfg(%#x)\n", BrateCfg);
  1506	
  1507				/* 2011.03.30 add by Luke Lee */
  1508				/* CCK 2M ACK should be disabled for some BCM and Atheros AP IOT */
  1509				/* because CCK 2M has poor TXEVM */
  1510				/* CCK 5.5M & 11M ACK should be enabled for better performance */
  1511	
  1512				BrateCfg = (BrateCfg | 0xd) & 0x15d;
  1513				haldata->BasicRateSet = BrateCfg;
  1514	
  1515				BrateCfg |= 0x01; /*  default enable 1M ACK rate */
  1516				/*  Set RRSR rate table. */
  1517				rtw_write8(Adapter, REG_RRSR, BrateCfg & 0xff);
  1518				rtw_write8(Adapter, REG_RRSR + 1, (BrateCfg >> 8) & 0xff);
  1519	
  1520				error = rtw_read8(Adapter, REG_RRSR + 2, &tmp);
  1521				if (error)
  1522					return;
  1523	
  1524				rtw_write8(Adapter, REG_RRSR + 2, tmp & 0xf0);
  1525	
  1526				/*  Set RTS initial rate */
  1527				while (BrateCfg > 0x1) {
  1528					BrateCfg = (BrateCfg >> 1);
  1529					RateIndex++;
  1530				}
  1531				/*  Ziv - Check */
  1532				rtw_write8(Adapter, REG_INIRTS_RATE_SEL, RateIndex);
  1533			}
  1534			break;
  1535		case HW_VAR_TXPAUSE:
  1536			rtw_write8(Adapter, REG_TXPAUSE, *((u8 *)val));
  1537			break;
  1538		case HW_VAR_BCN_FUNC:
  1539			hw_var_set_bcn_func(Adapter, variable, val);
  1540			break;
  1541		case HW_VAR_CORRECT_TSF:
  1542			{
  1543				u64	tsf;
  1544				struct mlme_ext_priv	*pmlmeext = &Adapter->mlmeextpriv;
  1545				struct mlme_ext_info	*pmlmeinfo = &pmlmeext->mlmext_info;
  1546	
  1547				tsf = pmlmeext->TSFValue - do_div(pmlmeext->TSFValue,
  1548								  pmlmeinfo->bcn_interval * 1024) - 1024; /* us */
  1549	
  1550				if (((pmlmeinfo->state & 0x03) == WIFI_FW_ADHOC_STATE) || ((pmlmeinfo->state & 0x03) == WIFI_FW_AP_STATE))
  1551					StopTxBeacon(Adapter);
  1552	
  1553				/* disable related TSF function */
  1554				error = rtw_read8(Adapter, REG_BCN_CTRL, &tmp);
  1555				if (error)
  1556					return;
  1557	
  1558				rtw_write8(Adapter, REG_BCN_CTRL, tmp & (~BIT(3)));
  1559	
  1560				rtw_write32(Adapter, REG_TSFTR, tsf);
  1561				rtw_write32(Adapter, REG_TSFTR + 4, tsf >> 32);
  1562	
  1563				/* enable related TSF function */
  1564				error =  rtw_read8(Adapter, REG_BCN_CTRL, &tmp);
  1565				if (error)
  1566					return;
  1567	
  1568				rtw_write8(Adapter, REG_BCN_CTRL, tmp | BIT(3));
  1569	
  1570				if (((pmlmeinfo->state & 0x03) == WIFI_FW_ADHOC_STATE) || ((pmlmeinfo->state & 0x03) == WIFI_FW_AP_STATE))
  1571					ResumeTxBeacon(Adapter);
  1572			}
  1573			break;
  1574		case HW_VAR_CHECK_BSSID:
  1575			if (*((u8 *)val)) {
  1576				rtw_write32(Adapter, REG_RCR, rtw_read32(Adapter, REG_RCR) | RCR_CBSSID_DATA | RCR_CBSSID_BCN);
  1577			} else {
  1578				u32 val32;
  1579	
  1580				val32 = rtw_read32(Adapter, REG_RCR);
  1581	
  1582				val32 &= ~(RCR_CBSSID_DATA | RCR_CBSSID_BCN);
  1583	
  1584				rtw_write32(Adapter, REG_RCR, val32);
  1585			}
  1586			break;
  1587		case HW_VAR_MLME_DISCONNECT:
  1588			/* Set RCR to not to receive data frame when NO LINK state */
  1589			/* reject all data frames */
  1590			rtw_write16(Adapter, REG_RXFLTMAP2, 0x00);
  1591	
  1592			/* reset TSF */
  1593			rtw_write8(Adapter, REG_DUAL_TSF_RST, (BIT(0) | BIT(1)));
  1594	
  1595			/* disable update TSF */
  1596			error = rtw_read8(Adapter, REG_BCN_CTRL, &tmp);
  1597			if (error)
  1598				return;
  1599	
  1600			rtw_write8(Adapter, REG_BCN_CTRL, tmp | BIT(4));
  1601			break;
  1602		case HW_VAR_MLME_SITESURVEY:
  1603			if (*((u8 *)val)) { /* under sitesurvey */
  1604				/* config RCR to receive different BSSID & not to receive data frame */
  1605				u32 v = rtw_read32(Adapter, REG_RCR);
  1606	
  1607				v &= ~(RCR_CBSSID_BCN);
  1608				rtw_write32(Adapter, REG_RCR, v);
  1609				/* reject all data frame */
  1610				rtw_write16(Adapter, REG_RXFLTMAP2, 0x00);
  1611	
  1612				/* disable update TSF */
  1613				error = rtw_read8(Adapter, REG_BCN_CTRL, &tmp);
  1614				if (error)
  1615					return;
  1616				rtw_write8(Adapter, REG_BCN_CTRL, tmp | BIT(4));
  1617			} else { /* sitesurvey done */
  1618				struct mlme_ext_priv	*pmlmeext = &Adapter->mlmeextpriv;
  1619				struct mlme_ext_info	*pmlmeinfo = &pmlmeext->mlmext_info;
  1620	
  1621				error = rtw_read8(Adapter, REG_BCN_CTRL, &tmp);
  1622				if (error)
  1623					return;
  1624	
  1625				if ((is_client_associated_to_ap(Adapter)) ||
  1626				    ((pmlmeinfo->state & 0x03) == WIFI_FW_ADHOC_STATE)) {
  1627					/* enable to rx data frame */
  1628					rtw_write16(Adapter, REG_RXFLTMAP2, 0xFFFF);
  1629	
  1630					/* enable update TSF */
  1631					rtw_write8(Adapter, REG_BCN_CTRL, tmp & (~BIT(4)));
  1632				} else if ((pmlmeinfo->state & 0x03) == WIFI_FW_AP_STATE) {
  1633					rtw_write16(Adapter, REG_RXFLTMAP2, 0xFFFF);
  1634					/* enable update TSF */
  1635					rtw_write8(Adapter, REG_BCN_CTRL, tmp & (~BIT(4)));
  1636				}
  1637	
  1638				if ((pmlmeinfo->state & 0x03) == WIFI_FW_AP_STATE) {
  1639					rtw_write32(Adapter, REG_RCR, rtw_read32(Adapter, REG_RCR) | RCR_CBSSID_BCN);
  1640				} else {
  1641					if (Adapter->in_cta_test) {
  1642						u32 v = rtw_read32(Adapter, REG_RCR);
  1643						v &= ~(RCR_CBSSID_DATA | RCR_CBSSID_BCN);/*  RCR_ADF */
  1644						rtw_write32(Adapter, REG_RCR, v);
  1645					} else {
  1646						rtw_write32(Adapter, REG_RCR, rtw_read32(Adapter, REG_RCR) | RCR_CBSSID_BCN);
  1647					}
  1648				}
  1649			}
  1650			break;
  1651		case HW_VAR_MLME_JOIN:
  1652			{
  1653				u8 RetryLimit = 0x30;
  1654				u8 type = *((u8 *)val);
  1655				u8 tmp;
  1656				struct mlme_priv	*pmlmepriv = &Adapter->mlmepriv;
  1657	
  1658				if (type == 0) { /*  prepare to join */
  1659					/* enable to rx data frame.Accept all data frame */
  1660					rtw_write16(Adapter, REG_RXFLTMAP2, 0xFFFF);
  1661	
  1662					if (Adapter->in_cta_test) {
  1663						u32 v = rtw_read32(Adapter, REG_RCR);
  1664						v &= ~(RCR_CBSSID_DATA | RCR_CBSSID_BCN);/*  RCR_ADF */
  1665						rtw_write32(Adapter, REG_RCR, v);
  1666					} else {
  1667						rtw_write32(Adapter, REG_RCR, rtw_read32(Adapter, REG_RCR) | RCR_CBSSID_DATA | RCR_CBSSID_BCN);
  1668					}
  1669	
  1670					if (check_fwstate(pmlmepriv, WIFI_STATION_STATE))
  1671						RetryLimit = (haldata->CustomerID == RT_CID_CCX) ? 7 : 48;
  1672					else /*  Ad-hoc Mode */
  1673						RetryLimit = 0x7;
  1674				} else if (type == 1) {
  1675					/* joinbss_event call back when join res < 0 */
  1676					rtw_write16(Adapter, REG_RXFLTMAP2, 0x00);
  1677				} else if (type == 2) {
  1678					/* sta add event call back */
  1679					/* enable update TSF */
  1680					error = rtw_read8(Adapter, REG_BCN_CTRL, &tmp);
  1681					if (error)
  1682						return;
  1683	
  1684					rtw_write8(Adapter, REG_BCN_CTRL, tmp & (~BIT(4)));
  1685	
  1686					if (check_fwstate(pmlmepriv, WIFI_ADHOC_STATE | WIFI_ADHOC_MASTER_STATE))
  1687						RetryLimit = 0x7;
  1688				}
  1689				rtw_write16(Adapter, REG_RL, RetryLimit << RETRY_LIMIT_SHORT_SHIFT | RetryLimit << RETRY_LIMIT_LONG_SHIFT);
  1690			}
  1691			break;
  1692		case HW_VAR_BEACON_INTERVAL:
  1693			rtw_write16(Adapter, REG_BCN_INTERVAL, *((u16 *)val));
  1694			break;
  1695		case HW_VAR_SLOT_TIME:
  1696			{
  1697				u8 u1bAIFS, aSifsTime;
  1698				struct mlme_ext_priv	*pmlmeext = &Adapter->mlmeextpriv;
  1699				struct mlme_ext_info	*pmlmeinfo = &pmlmeext->mlmext_info;
  1700	
  1701				rtw_write8(Adapter, REG_SLOT, val[0]);
  1702	
  1703				if (pmlmeinfo->WMM_enable == 0) {
  1704					if (pmlmeext->cur_wireless_mode == WIRELESS_11B)
  1705						aSifsTime = 10;
  1706					else
  1707						aSifsTime = 16;
  1708	
  1709					u1bAIFS = aSifsTime + (2 * pmlmeinfo->slotTime);
  1710	
  1711					/*  <Roger_EXP> Temporary removed, 2008.06.20. */
  1712					rtw_write8(Adapter, REG_EDCA_VO_PARAM, u1bAIFS);
  1713					rtw_write8(Adapter, REG_EDCA_VI_PARAM, u1bAIFS);
  1714					rtw_write8(Adapter, REG_EDCA_BE_PARAM, u1bAIFS);
  1715					rtw_write8(Adapter, REG_EDCA_BK_PARAM, u1bAIFS);
  1716				}
  1717			}
  1718			break;
  1719		case HW_VAR_RESP_SIFS:
  1720			/* RESP_SIFS for CCK */
  1721			rtw_write8(Adapter, REG_R2T_SIFS, val[0]); /*  SIFS_T2T_CCK (0x08) */
  1722			rtw_write8(Adapter, REG_R2T_SIFS + 1, val[1]); /* SIFS_R2T_CCK(0x08) */
  1723			/* RESP_SIFS for OFDM */
  1724			rtw_write8(Adapter, REG_T2T_SIFS, val[2]); /* SIFS_T2T_OFDM (0x0a) */
  1725			rtw_write8(Adapter, REG_T2T_SIFS + 1, val[3]); /* SIFS_R2T_OFDM(0x0a) */
  1726			break;
  1727		case HW_VAR_ACK_PREAMBLE:
  1728			{
  1729				u8 regTmp;
  1730				u8 bShortPreamble = *((bool *)val);
  1731				/*  Joseph marked out for Netgear 3500 TKIP channel 7 issue.(Temporarily) */
  1732				regTmp = (haldata->nCur40MhzPrimeSC) << 5;
  1733				if (bShortPreamble)
  1734					regTmp |= 0x80;
  1735	
  1736				rtw_write8(Adapter, REG_RRSR + 2, regTmp);
  1737			}
  1738			break;
  1739		case HW_VAR_SEC_CFG:
  1740			rtw_write8(Adapter, REG_SECCFG, *((u8 *)val));
  1741			break;
  1742		case HW_VAR_DM_FLAG:
  1743			podmpriv->SupportAbility = *((u8 *)val);
  1744			break;
  1745		case HW_VAR_DM_FUNC_OP:
  1746			if (val[0])
  1747				podmpriv->BK_SupportAbility = podmpriv->SupportAbility;
  1748			else
  1749				podmpriv->SupportAbility = podmpriv->BK_SupportAbility;
  1750			break;
  1751		case HW_VAR_DM_FUNC_SET:
  1752			if (*((u32 *)val) == DYNAMIC_ALL_FUNC_ENABLE) {
  1753				pdmpriv->DMFlag = pdmpriv->InitDMFlag;
  1754				podmpriv->SupportAbility =	pdmpriv->InitODMFlag;
  1755			} else {
  1756				podmpriv->SupportAbility |= *((u32 *)val);
  1757			}
  1758			break;
  1759		case HW_VAR_DM_FUNC_CLR:
  1760			podmpriv->SupportAbility &= *((u32 *)val);
  1761			break;
  1762		case HW_VAR_CAM_EMPTY_ENTRY:
  1763			{
  1764				u8 ucIndex = *((u8 *)val);
  1765				u8 i;
  1766				u32 ulCommand = 0;
  1767				u32 ulContent = 0;
  1768				u32 ulEncAlgo = CAM_AES;
  1769	
  1770				for (i = 0; i < CAM_CONTENT_COUNT; i++) {
  1771					/*  filled id in CAM config 2 byte */
  1772					if (i == 0)
  1773						ulContent |= (ucIndex & 0x03) | ((u16)(ulEncAlgo) << 2);
  1774					else
  1775						ulContent = 0;
  1776					/*  polling bit, and No Write enable, and address */
  1777					ulCommand = CAM_CONTENT_COUNT * ucIndex + i;
  1778					ulCommand = ulCommand | CAM_POLLINIG | CAM_WRITE;
  1779					/*  write content 0 is equall to mark invalid */
  1780					rtw_write32(Adapter, WCAMI, ulContent);  /* delay_ms(40); */
  1781					rtw_write32(Adapter, RWCAM, ulCommand);  /* delay_ms(40); */
  1782				}
  1783			}
  1784			break;
  1785		case HW_VAR_CAM_INVALID_ALL:
  1786			rtw_write32(Adapter, RWCAM, BIT(31) | BIT(30));
  1787			break;
  1788		case HW_VAR_CAM_WRITE:
  1789			{
  1790				u32 cmd;
  1791				u32 *cam_val = (u32 *)val;
  1792				rtw_write32(Adapter, WCAMI, cam_val[0]);
  1793	
  1794				cmd = CAM_POLLINIG | CAM_WRITE | cam_val[1];
  1795				rtw_write32(Adapter, RWCAM, cmd);
  1796			}
  1797			break;
  1798		case HW_VAR_AC_PARAM_VO:
  1799			rtw_write32(Adapter, REG_EDCA_VO_PARAM, ((u32 *)(val))[0]);
  1800			break;
  1801		case HW_VAR_AC_PARAM_VI:
  1802			rtw_write32(Adapter, REG_EDCA_VI_PARAM, ((u32 *)(val))[0]);
  1803			break;
  1804		case HW_VAR_AC_PARAM_BE:
  1805			haldata->AcParam_BE = ((u32 *)(val))[0];
  1806			rtw_write32(Adapter, REG_EDCA_BE_PARAM, ((u32 *)(val))[0]);
  1807			break;
  1808		case HW_VAR_AC_PARAM_BK:
  1809			rtw_write32(Adapter, REG_EDCA_BK_PARAM, ((u32 *)(val))[0]);
  1810			break;
  1811		case HW_VAR_ACM_CTRL:
  1812			{
  1813				u8 acm_ctrl = *((u8 *)val);
  1814				u8 AcmCtrl;
  1815	
  1816				error = rtw_read8(Adapter, REG_ACMHWCTRL, &AcmCtrl);
  1817				if (error)
  1818					return;
  1819	
  1820				if (acm_ctrl > 1)
  1821					AcmCtrl = AcmCtrl | 0x1;
  1822	
  1823				if (acm_ctrl & BIT(3))
  1824					AcmCtrl |= AcmHw_VoqEn;
  1825				else
  1826					AcmCtrl &= (~AcmHw_VoqEn);
  1827	
  1828				if (acm_ctrl & BIT(2))
  1829					AcmCtrl |= AcmHw_ViqEn;
  1830				else
  1831					AcmCtrl &= (~AcmHw_ViqEn);
  1832	
  1833				if (acm_ctrl & BIT(1))
  1834					AcmCtrl |= AcmHw_BeqEn;
  1835				else
  1836					AcmCtrl &= (~AcmHw_BeqEn);
  1837	
  1838				DBG_88E("[HW_VAR_ACM_CTRL] Write 0x%X\n", AcmCtrl);
  1839				rtw_write8(Adapter, REG_ACMHWCTRL, AcmCtrl);
  1840			}
  1841			break;
  1842		case HW_VAR_AMPDU_MIN_SPACE:
  1843			{
  1844				u8 MinSpacingToSet;
  1845				u8 SecMinSpace;
  1846				u8 tmp;
  1847	
  1848				MinSpacingToSet = *((u8 *)val);
  1849				if (MinSpacingToSet <= 7) {
  1850					switch (Adapter->securitypriv.dot11PrivacyAlgrthm) {
  1851					case _NO_PRIVACY_:
  1852					case _AES_:
  1853						SecMinSpace = 0;
  1854						break;
  1855					case _WEP40_:
  1856					case _WEP104_:
  1857					case _TKIP_:
  1858					case _TKIP_WTMIC_:
  1859						SecMinSpace = 6;
  1860						break;
  1861					default:
  1862						SecMinSpace = 7;
  1863						break;
  1864					}
  1865					if (MinSpacingToSet < SecMinSpace)
  1866						MinSpacingToSet = SecMinSpace;
  1867	
  1868					error = rtw_read8(Adapter, REG_AMPDU_MIN_SPACE, &tmp);
  1869					if (error)
  1870						return;
  1871	
  1872					rtw_write8(Adapter, REG_AMPDU_MIN_SPACE, (tmp & 0xf8) |
  1873						  MinSpacingToSet);
  1874				}
  1875			}
  1876			break;
  1877		case HW_VAR_AMPDU_FACTOR:
  1878			{
  1879				u8 RegToSet_Normal[4] = {0x41, 0xa8, 0x72, 0xb9};
  1880				u8 FactorToSet;
  1881				u8 *pRegToSet;
  1882				u8 index = 0;
  1883	
  1884				pRegToSet = RegToSet_Normal; /*  0xb972a841; */
  1885				FactorToSet = *((u8 *)val);
  1886				if (FactorToSet <= 3) {
  1887					FactorToSet = (1 << (FactorToSet + 2));
  1888					if (FactorToSet > 0xf)
  1889						FactorToSet = 0xf;
  1890	
  1891					for (index = 0; index < 4; index++) {
  1892						if ((pRegToSet[index] & 0xf0) > (FactorToSet << 4))
  1893							pRegToSet[index] = (pRegToSet[index] & 0x0f) | (FactorToSet << 4);
  1894	
  1895						if ((pRegToSet[index] & 0x0f) > FactorToSet)
  1896							pRegToSet[index] = (pRegToSet[index] & 0xf0) | (FactorToSet);
  1897	
  1898						rtw_write8(Adapter, (REG_AGGLEN_LMT + index), pRegToSet[index]);
  1899					}
  1900				}
  1901			}
  1902			break;
  1903		case HW_VAR_RXDMA_AGG_PG_TH:
  1904			{
  1905				u8 threshold = *((u8 *)val);
  1906				if (threshold == 0)
  1907					threshold = haldata->UsbRxAggPageCount;
  1908				rtw_write8(Adapter, REG_RXDMA_AGG_PG_TH, threshold);
  1909			}
  1910			break;
  1911		case HW_VAR_SET_RPWM:
  1912			break;
  1913		case HW_VAR_H2C_FW_PWRMODE:
  1914			{
  1915				u8 psmode = (*(u8 *)val);
  1916	
  1917				/*  Forece leave RF low power mode for 1T1R to prevent conficting setting in Fw power */
  1918				/*  saving sequence. 2010.06.07. Added by tynli. Suggested by SD3 yschang. */
  1919				if ((psmode != PS_MODE_ACTIVE) && (!IS_92C_SERIAL(haldata->VersionID)))
  1920					ODM_RF_Saving(podmpriv, true);
  1921				rtl8188e_set_FwPwrMode_cmd(Adapter, psmode);
  1922			}
  1923			break;
  1924		case HW_VAR_H2C_FW_JOINBSSRPT:
  1925			{
  1926				u8 mstatus = (*(u8 *)val);
  1927				rtl8188e_set_FwJoinBssReport_cmd(Adapter, mstatus);
  1928			}
  1929			break;
  1930	#ifdef CONFIG_88EU_P2P
  1931		case HW_VAR_H2C_FW_P2P_PS_OFFLOAD:
  1932			{
  1933				u8 p2p_ps_state = (*(u8 *)val);
  1934				rtl8188e_set_p2p_ps_offload_cmd(Adapter, p2p_ps_state);
  1935			}
  1936			break;
  1937	#endif
  1938		case HW_VAR_INITIAL_GAIN:
  1939			{
  1940				struct rtw_dig *pDigTable = &podmpriv->DM_DigTable;
  1941				u32 rx_gain = ((u32 *)(val))[0];
  1942	
  1943				if (rx_gain == 0xff) {/* restore rx gain */
  1944					ODM_Write_DIG(podmpriv, pDigTable->BackupIGValue);
  1945				} else {
  1946					pDigTable->BackupIGValue = pDigTable->CurIGValue;
  1947					ODM_Write_DIG(podmpriv, rx_gain);
  1948				}
  1949			}
  1950			break;
  1951		case HW_VAR_TRIGGER_GPIO_0:
  1952			rtl8192cu_trigger_gpio_0(Adapter);
  1953			break;
  1954		case HW_VAR_RPT_TIMER_SETTING:
  1955			{
  1956				u16 min_rpt_time = (*(u16 *)val);
  1957				ODM_RA_Set_TxRPT_Time(podmpriv, min_rpt_time);
  1958			}
  1959			break;
  1960		case HW_VAR_ANTENNA_DIVERSITY_SELECT:
  1961			{
  1962				u8 Optimum_antenna = (*(u8 *)val);
  1963				u8 Ant;
  1964				/* switch antenna to Optimum_antenna */
  1965				if (haldata->CurAntenna !=  Optimum_antenna) {
  1966					Ant = (Optimum_antenna == 2) ? MAIN_ANT : AUX_ANT;
  1967					ODM_UpdateRxIdleAnt_88E(&haldata->odmpriv, Ant);
  1968	
  1969					haldata->CurAntenna = Optimum_antenna;
  1970				}
  1971			}
  1972			break;
  1973		case HW_VAR_EFUSE_BYTES: /*  To set EFUE total used bytes, added by Roger, 2008.12.22. */
  1974			haldata->EfuseUsedBytes = *((u16 *)val);
  1975			break;
  1976		case HW_VAR_FIFO_CLEARN_UP:
  1977			{
  1978				struct pwrctrl_priv *pwrpriv = &Adapter->pwrctrlpriv;
  1979				u8 trycnt = 100;
  1980	
  1981				/* pause tx */
  1982				rtw_write8(Adapter, REG_TXPAUSE, 0xff);
  1983	
  1984				/* keep sn */
  1985				Adapter->xmitpriv.nqos_ssn = rtw_read16(Adapter, REG_NQOS_SEQ);
  1986	
  1987				if (!pwrpriv->bkeepfwalive) {
  1988					/* RX DMA stop */
  1989					rtw_write32(Adapter, REG_RXPKT_NUM, (rtw_read32(Adapter, REG_RXPKT_NUM) | RW_RELEASE_EN));
  1990					do {
  1991						if (!(rtw_read32(Adapter, REG_RXPKT_NUM) & RXDMA_IDLE))
  1992							break;
  1993					} while (trycnt--);
  1994					if (trycnt == 0)
  1995						DBG_88E("Stop RX DMA failed......\n");
  1996	
  1997					/* RQPN Load 0 */
  1998					rtw_write16(Adapter, REG_RQPN_NPQ, 0x0);
  1999					rtw_write32(Adapter, REG_RQPN, 0x80000000);
  2000					mdelay(10);
  2001				}
  2002			}
  2003			break;
  2004		case HW_VAR_CHECK_TXBUF:
  2005			break;
  2006		case HW_VAR_APFM_ON_MAC:
  2007			haldata->bMacPwrCtrlOn = *val;
  2008			DBG_88E("%s: bMacPwrCtrlOn=%d\n", __func__, haldata->bMacPwrCtrlOn);
  2009			break;
  2010		case HW_VAR_TX_RPT_MAX_MACID:
  2011			{
  2012				u8 maxMacid = *val;
  2013				DBG_88E("### MacID(%d),Set Max Tx RPT MID(%d)\n", maxMacid, maxMacid + 1);
  2014				rtw_write8(Adapter, REG_TX_RPT_CTRL + 1, maxMacid + 1);
  2015			}
  2016			break;
  2017		case HW_VAR_H2C_MEDIA_STATUS_RPT:
  2018			rtl8188e_set_FwMediaStatus_cmd(Adapter, (*(__le16 *)val));
  2019			break;
  2020		case HW_VAR_BCN_VALID:
  2021			/* BCN_VALID, BIT(16) of REG_TDECTRL = BIT(0) of REG_TDECTRL+2, write 1 to clear, Clear by sw */
> 2022			u8 tmp;
  2023	
  2024			error = rtw_read8(Adapter, REG_TDECTRL + 2, &tmp);
  2025			if (error)
  2026				return;
  2027	
  2028			rtw_write8(Adapter, REG_TDECTRL + 2, tmp | BIT(0));
  2029			break;
  2030		default:
  2031			break;
  2032		}
  2033	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202108251911.Vwmzl4rI-lkp%40intel.com.

--dDRMvlgZJXvWKvBx
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
xQsyGvrIIZmIYmobQAGJB9gkxJymAGqQA4Bh0qkCIrQhX1xZHBGdarKOqHKgN/VwR2a3Z7vt
Zne3IRTP7m6RZp/mRO4z6OsxJstb2xYzLx1UcsHnxhXx8kVXSnYm/Gb5FdP9wTPzEiPfAN/O
6y1NUnOCEUltyQ3J5Nk1pJZRKVYsijaL20Aa01tH97JGlpg0s+SlXAek+xSDYzh7dADlHp8y
+bXffEKeCqBOZVSUcHpfmQggTvNs70ngUobRhjSoL1UQkLGEZ4YwioO+OBPqyqWKyBUO6BFN
j8OA3L1TyL1dVGSgdoimWG1Ekts16YfJYIg9ScaRR1iA3D9aQBYyLqfBsKE0aqRThrmiEyrb
dDOeonvSoc4ZkE4Z34ruk8Jm81YVN4T2jPQtudIDsg3Wbx7XDWz3Jxr1JICu0C7wVch5REAw
UFMA0qntQ6RT6rqi022wo9ZypNNnPQp5syfuNvc0L2TYEpOxontqRW2dqaCIntruPLXdefLd
EfOponvKsyPVFoXcV/kUy33p7ALqxBfpdG13G8qQRXpIti3Q6e4oGIYXuFv89+VqSzsxHznK
ar2NPRt9G8rGVABlHKptOMoKXISqnoAySkJK91OBnKmdUB36maZTZVX0nmVZXhD3/AAmzeWa
nbYr+qgHoXhNv/83ebYeT3gWT3RvJdMchHA0QHQh2bIkXAWM6EVli14ioMfgk6+OOG3VDOcZ
X26pK47uqjnu9SjFKK9GUuNrd+tCj/WdNix9V5sN2Ab03aRDx9ojeaX5zDvJqcJOz/yGu0ZH
ni9vRALRfH0LP/tU3YG6gUnWFfVBHslGBsaOUUb/CVP8YiRvvNPU103/fP7w8vRZFWdx8Qn5
2Ro9GNppQPc+KceCLrkz7fSJ1O/3hrcDpLat7Zd3InLKFbFChflCUlFO+PLTTSUtykdO+3zW
sGxaKI8nl5Qf0qLG8lq1yI7oTdGlcfh1s8uUNZ1gvHM4m9OBOTToqawsb27p267J+WNxoyxv
ldTila6igiAkR88VaeBMFSbXbXwlan0MHefQ1Oip0vNdUQndgNZnRcn8UsYIvg31pkCDzSKx
91BnD/uhqFLe5bacD/uucqVwKJuON+QDQYSPjftKXFOczmAleeZnVuaUTqcylMl21bl1gZqo
oeH56PFW2D3hlKFjr8wmXlgJ/dSmnXlxUf4/nfF865RXA1ccPGM5/UxZodKP/YulHe1VFlF5
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
eBuntrdk26sU7xxlzU0R2bmz/R8FQimTFYsCAA==

--dDRMvlgZJXvWKvBx--
