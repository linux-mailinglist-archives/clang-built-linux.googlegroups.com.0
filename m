Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBGGMXH5AKGQEXSE6IVI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x240.google.com (mail-oi1-x240.google.com [IPv6:2607:f8b0:4864:20::240])
	by mail.lfdr.de (Postfix) with ESMTPS id C776F2592DA
	for <lists+clang-built-linux@lfdr.de>; Tue,  1 Sep 2020 17:17:45 +0200 (CEST)
Received: by mail-oi1-x240.google.com with SMTP id h26sf595129oie.10
        for <lists+clang-built-linux@lfdr.de>; Tue, 01 Sep 2020 08:17:45 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598973464; cv=pass;
        d=google.com; s=arc-20160816;
        b=Ct1/9jfjs2OZTVWnaj7iJ1ycIhGOHZSWmf/r0YRzoR2hTDuyYT0Nz9+Fouv7CoHAVC
         3EeWGxPTObximw64WgGwyhgrqnLhYjZ6BoeJyOXZ0jylGMDcLEs88hBOHe6IZ5G2c73H
         Fcijs+7IvAnFiT6sT2s8SOZVA9ErUaf/x48Fj8GkQ+F1s81NOD4GMM4UIHqEnJj7UYUM
         h4mMjPa1bpg22slrzaEHn3PNSLkVIXzfg2WFzVmjNoLkhEvnIMo+Ij2gCkVOZdJv5Eaj
         FAokYLcHvs5DVjjMp5wh9FpZ3Pxf8DfdOc9F5YD+6Vmb7ZEtdVs3OhuJcDD+RV8dQG+j
         C0oQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=B1mDUU8WNutX8MgAEMyhCHOXDMhiMgN4ftnUhLCqAUQ=;
        b=006pidI7bcGYNaPO8p37bEEF2BQYkuq1ItFUaTij6ZCxbgJM2bkG1WGqly5Z17FgWt
         DEqcufiuokaN1/zvwXfhkjj9MRGRAq5T9aTFp0ScYRT9XhEYg4biSuCOZH6vrjHFSsYW
         /1GowV6BUfjEBVa4Ae3xsQ3sS/xzGNt2YmbG8aNuKSy8tB4EybTVOMsaPUmF8go743u9
         q0SdE1lEGa2wMtvcz1mU4WBNCFFa0QWWx3nAt2BD+KfreIm7iyY33YnASjuEHinK7nKh
         TlBBUZy1CKqsdP3XgRVbI68H1s/VUfgB6gVNE/IzUht4cxzXmm5vT6ktMrvjl5OU1oP9
         JJwA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.136 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=B1mDUU8WNutX8MgAEMyhCHOXDMhiMgN4ftnUhLCqAUQ=;
        b=TVEDgUODcyfUUbu5ocoNAoplLDwM3WGVMEizb+NGcmTP0Tf02VuBgdMmMrsbsxwmkI
         grBXicchVy6khJnsdXoXJGY/12jqyGz2Ka3i3Mn1C5YPv7qSSSiWhTKbonSN78LPCVXq
         r0wMrvBu3ZP5w08w+BuRKZVr3OFhtmDshkWnEqKmBnwuRcbDOamX3KisvbIl1PPMek8L
         4237FXEN72aedLqMS+0tBgd6m4Z/PNzOzxx2Yrt8iSj2moo5IrsGEVqZbClaugbvvpgY
         gvjLBJ5q0JIBdq85vRa8XkLZFG1gWNLVipDG67MleiFqIoNWb7ujEEVorPjfFW19e6Fp
         MQ/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:references:mime-version:content-disposition
         :in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=B1mDUU8WNutX8MgAEMyhCHOXDMhiMgN4ftnUhLCqAUQ=;
        b=R5LzTvzxhZb4nqso/yCEUm17+94ZNKPCsSKqLxN7jAi6iiNNxLi8Z8J8JauQzEc1Id
         njDWKUc2hbGAZ6hRrIEHu5s4SVjjGlMGfyJ52g1uIWDfFMvMVotsD3fvDXgb21Noi7G4
         UuTo4CPtwEnz3YC3mwo4jf1QFDDAtCtq2OyhFUduj845fG2/ikAgKUk+JfHZ9DoKocIF
         hib/yYb0Lgudz5RQxlTROnhfVkRiugrHF0+GbA+X+5qcnsNg3cY7i62kyLWLQNhn8sRW
         2XpHFttu8kZxKunoqJHzPbSj30IlpuGUpHoiwQIuu0HxgNPwa0gpVDaaN03HnJc1VGun
         7iOQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533NOdUpWWwjJOqlKXcW6eUcxhISMUjSomthX/LYAu5kHWsPUmTD
	Kq51nJKQb0pwRbicHTIR/aA=
X-Google-Smtp-Source: ABdhPJz2selczskC1BH/MPpUX3GpZ2KfePp0cEBIr+/mmrXxPdqsFWBVvnhY3Vu5o/rskDNfXix/mw==
X-Received: by 2002:aca:2813:: with SMTP id 19mr1398135oix.94.1598973464298;
        Tue, 01 Sep 2020 08:17:44 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:d888:: with SMTP id p130ls338173oig.11.gmail; Tue, 01
 Sep 2020 08:17:43 -0700 (PDT)
X-Received: by 2002:aca:4b95:: with SMTP id y143mr1469826oia.121.1598973463853;
        Tue, 01 Sep 2020 08:17:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598973463; cv=none;
        d=google.com; s=arc-20160816;
        b=ChNS/E0YgEtQzgN/A2QJFNoqVhzgzs0wFpHDlZSbQ1kxi+uQ1aL4iTswMH8JO9pE64
         E51bpe/abmkT5GsOuAKLsVOFHLylYrP8SK6/AWLxeLgJfp/B52Og4abj6hU2W5G/ufhk
         8F6TSCNrcqOFf9MiHDBVfKWqyoyvs9RaVNZMqGCJ02cthrirg9zKiQXsybfohPoZx5Gl
         LE5S2l626y4l30l85St315csAz1XbmoCjxXmd+WZotRRj3+SANI93AEAFEgke+6GpgUT
         sfxHG0omnbLDCrNfVzz5/nqzs3/O5/9hyxT2g0vZMUpp8xlru+7JA6IGDUDFaJGHcz6v
         Lzwg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:ironport-sdr:ironport-sdr;
        bh=5fP/FV7abMC+O/7XI//t7SOhJOKxjPEq/gPZq8uCdso=;
        b=vNEQMHGfui+83S8fyVzLweJyHSwprEnmalkki2Zq+EhQrO5u5ox+hiT7wdIhJS87pc
         0mpiWIueFSxvT+WGFUQazWkkDyHe9QcHGccN7Y6JTeoySU8At3Nj99YfPSUHBg8Nu7ns
         ROlrZoJBrIfpUE60kCB0G9RQJ5ETX+DKZ0bsfxerSnnKw+dEezYwkitqcsMa1lAWJXP/
         gAKoHUMNkO3RLK/mMXK3EpMas4v2XHoNId2+uo2lNtFg0NTSHusIizLnBrCJ7qxLGMGo
         T9lbGsxTpHo0jul/rnY4eE8L8uRSUddjZbhMLXhIk8wIiuBCtg55ZEwR2ZpuxfNwlKeB
         xsAQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.136 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga12.intel.com (mga12.intel.com. [192.55.52.136])
        by gmr-mx.google.com with ESMTPS id b6si114262ooq.2.2020.09.01.08.17.43
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 01 Sep 2020 08:17:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.136 as permitted sender) client-ip=192.55.52.136;
IronPort-SDR: V9clcFIsZUthIEWaORe5a1rlkjfRWKLk1qzRarJtyqQUcoJgeuHtzfiZtFOaSQOEQMn2F2/IES
 W0OgMDLpNH7w==
X-IronPort-AV: E=McAfee;i="6000,8403,9730"; a="136703092"
X-IronPort-AV: E=Sophos;i="5.76,379,1592895600"; 
   d="gz'50?scan'50,208,50";a="136703092"
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
  by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 01 Sep 2020 08:14:47 -0700
IronPort-SDR: 1MsIkpVs+Ui5Uo5VsOU+69x5IQZWn/q6lzcIyFUrFkIaYIB6QLJTdjDFeREvKwxl9GdHfOJSZM
 AnhWcRHWeVtw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,379,1592895600"; 
   d="gz'50?scan'50,208,50";a="331096361"
Received: from lkp-server01.sh.intel.com (HELO 6fed54b23e67) ([10.239.97.150])
  by orsmga008.jf.intel.com with ESMTP; 01 Sep 2020 08:14:43 -0700
Received: from kbuild by 6fed54b23e67 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1kD7ze-0000BL-F6; Tue, 01 Sep 2020 15:14:42 +0000
Date: Tue, 1 Sep 2020 23:14:23 +0800
From: kernel test robot <lkp@intel.com>
To: JC Kuo <jckuo@nvidia.com>, gregkh@linuxfoundation.org,
	thierry.reding@gmail.com, robh@kernel.org, jonathanh@nvidia.com,
	kishon@ti.com
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	linux-tegra@vger.kernel.org, linux-usb@vger.kernel.org,
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
	nkristam@nvidia.com
Subject: Re: [PATCH v2 08/12] phy: tegra: xusb: t210: support wake and
 sleepwalk
Message-ID: <202009012322.ECyJxITw%lkp@intel.com>
References: <20200831044043.1561074-9-jckuo@nvidia.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="J/dobhs11T7y2rNN"
Content-Disposition: inline
In-Reply-To: <20200831044043.1561074-9-jckuo@nvidia.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 192.55.52.136 as permitted
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


--J/dobhs11T7y2rNN
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi JC,

I love your patch! Perhaps something to improve:

[auto build test WARNING on tegra/for-next]
[also build test WARNING on robh/for-next usb/usb-testing char-misc/char-misc-testing staging/staging-testing driver-core/driver-core-testing v5.9-rc3 next-20200828]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch]

url:    https://github.com/0day-ci/linux/commits/JC-Kuo/Tegra-XHCI-controller-ELPG-support/20200831-124234
base:   https://git.kernel.org/pub/scm/linux/kernel/git/tegra/linux.git for-next
config: arm64-randconfig-r014-20200901 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project c10e63677f5d20f18010f8f68c631ddc97546f7d)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install arm64 cross compiling tool for clang build
        # apt-get install binutils-aarch64-linux-gnu
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=arm64 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

>> drivers/phy/tegra/xusb-tegra210.c:1368:5: warning: no previous prototype for function 'tegra_pmc_utmi_enable_phy_sleepwalk' [-Wmissing-prototypes]
   int tegra_pmc_utmi_enable_phy_sleepwalk(struct phy *phy,
       ^
   drivers/phy/tegra/xusb-tegra210.c:1368:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   int tegra_pmc_utmi_enable_phy_sleepwalk(struct phy *phy,
   ^
   static 
>> drivers/phy/tegra/xusb-tegra210.c:1527:5: warning: no previous prototype for function 'tegra_pmc_utmi_disable_phy_sleepwalk' [-Wmissing-prototypes]
   int tegra_pmc_utmi_disable_phy_sleepwalk(struct phy *phy)
       ^
   drivers/phy/tegra/xusb-tegra210.c:1527:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   int tegra_pmc_utmi_disable_phy_sleepwalk(struct phy *phy)
   ^
   static 
>> drivers/phy/tegra/xusb-tegra210.c:1577:5: warning: no previous prototype for function 'tegra_pmc_hsic_enable_phy_sleepwalk' [-Wmissing-prototypes]
   int tegra_pmc_hsic_enable_phy_sleepwalk(struct phy *phy)
       ^
   drivers/phy/tegra/xusb-tegra210.c:1577:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   int tegra_pmc_hsic_enable_phy_sleepwalk(struct phy *phy)
   ^
   static 
>> drivers/phy/tegra/xusb-tegra210.c:1680:5: warning: no previous prototype for function 'tegra_pmc_hsic_disable_phy_sleepwalk' [-Wmissing-prototypes]
   int tegra_pmc_hsic_disable_phy_sleepwalk(struct phy *phy)
       ^
   drivers/phy/tegra/xusb-tegra210.c:1680:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   int tegra_pmc_hsic_disable_phy_sleepwalk(struct phy *phy)
   ^
   static 
>> drivers/phy/tegra/xusb-tegra210.c:3036:5: warning: no previous prototype for function 'tegra210_xusb_padctl_remote_wake_detected' [-Wmissing-prototypes]
   int tegra210_xusb_padctl_remote_wake_detected(struct phy *phy)
       ^
   drivers/phy/tegra/xusb-tegra210.c:3036:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   int tegra210_xusb_padctl_remote_wake_detected(struct phy *phy)
   ^
   static 
   5 warnings generated.

# https://github.com/0day-ci/linux/commit/85501cb657fc0bbb792dc08358e31fad69c8b13c
git remote add linux-review https://github.com/0day-ci/linux
git fetch --no-tags linux-review JC-Kuo/Tegra-XHCI-controller-ELPG-support/20200831-124234
git checkout 85501cb657fc0bbb792dc08358e31fad69c8b13c
vim +/tegra_pmc_utmi_enable_phy_sleepwalk +1368 drivers/phy/tegra/xusb-tegra210.c

  1366	
  1367	/* T210 USB2 SLEEPWALK APIs */
> 1368	int tegra_pmc_utmi_enable_phy_sleepwalk(struct phy *phy,
  1369						enum usb_device_speed speed)
  1370	{
  1371		struct tegra_xusb_lane *lane = phy_get_drvdata(phy);
  1372		struct tegra_xusb_padctl *padctl = lane->pad->padctl;
  1373		struct tegra210_xusb_padctl *priv = to_tegra210_xusb_padctl(padctl);
  1374		struct device *dev = padctl->dev;
  1375		unsigned int port = lane->index;
  1376		u32 val, tctrl, pctrl, rpd_ctrl;
  1377	
  1378		if (speed > USB_SPEED_HIGH)
  1379			return -EINVAL;
  1380	
  1381		dev_dbg(dev, "phy enable sleepwalk usb2 %d speed %d\n", port, speed);
  1382	
  1383		val = padctl_readl(padctl, XUSB_PADCTL_USB2_BIAS_PAD_CTL1);
  1384		tctrl = TCTRL_VALUE(val);
  1385		pctrl = PCTRL_VALUE(val);
  1386	
  1387		val = padctl_readl(padctl, XUSB_PADCTL_USB2_OTG_PADX_CTL1(port));
  1388		rpd_ctrl = RPD_CTRL_VALUE(val);
  1389	
  1390		/* ensure sleepwalk logic is disabled */
  1391		val = padctl_pmc_readl(priv, PMC_UTMIP_UHSIC_SLEEP_CFG(port));
  1392		val &= ~UTMIP_MASTER_ENABLE(port);
  1393		padctl_pmc_writel(priv, val, PMC_UTMIP_UHSIC_SLEEP_CFG(port));
  1394	
  1395		/* ensure sleepwalk logics are in low power mode */
  1396		val = padctl_pmc_readl(priv, PMC_UTMIP_MASTER_CONFIG);
  1397		val |= UTMIP_PWR(port);
  1398		padctl_pmc_writel(priv, val, PMC_UTMIP_MASTER_CONFIG);
  1399	
  1400		/* set debounce time */
  1401		val = padctl_pmc_readl(priv, PMC_USB_DEBOUNCE_DEL);
  1402		val &= ~UTMIP_LINE_DEB_CNT(~0);
  1403		val |= UTMIP_LINE_DEB_CNT(0x1);
  1404		padctl_pmc_writel(priv, val, PMC_USB_DEBOUNCE_DEL);
  1405	
  1406		/* ensure fake events of sleepwalk logic are desiabled */
  1407		val = padctl_pmc_readl(priv, PMC_UTMIP_UHSIC_FAKE(port));
  1408		val &= ~(UTMIP_FAKE_USBOP_VAL(port) | UTMIP_FAKE_USBON_VAL(port) |
  1409				UTMIP_FAKE_USBOP_EN(port) | UTMIP_FAKE_USBON_EN(port));
  1410		padctl_pmc_writel(priv, val, PMC_UTMIP_UHSIC_FAKE(port));
  1411	
  1412		/* ensure wake events of sleepwalk logic are not latched */
  1413		val = padctl_pmc_readl(priv, PMC_UTMIP_UHSIC_LINE_WAKEUP);
  1414		val &= ~UTMIP_LINE_WAKEUP_EN(port);
  1415		padctl_pmc_writel(priv, val, PMC_UTMIP_UHSIC_LINE_WAKEUP);
  1416	
  1417		/* disable wake event triggers of sleepwalk logic */
  1418		val = padctl_pmc_readl(priv, PMC_UTMIP_UHSIC_SLEEP_CFG(port));
  1419		val &= ~UTMIP_WAKE_VAL(port, ~0);
  1420		val |= UTMIP_WAKE_VAL_NONE(port);
  1421		padctl_pmc_writel(priv, val, PMC_UTMIP_UHSIC_SLEEP_CFG(port));
  1422	
  1423		/* power down the line state detectors of the pad */
  1424		val = padctl_pmc_readl(priv, PMC_USB_AO);
  1425		val |= (USBOP_VAL_PD(port) | USBON_VAL_PD(port));
  1426		padctl_pmc_writel(priv, val, PMC_USB_AO);
  1427	
  1428		/* save state per speed */
  1429		val = padctl_pmc_readl(priv, PMC_UTMIP_UHSIC_SAVED_STATE(port));
  1430		val &= ~SPEED(port, ~0);
  1431		if (speed == USB_SPEED_HIGH)
  1432			val |= UTMI_HS(port);
  1433		else if (speed == USB_SPEED_FULL)
  1434			val |= UTMI_FS(port);
  1435		else if (speed == USB_SPEED_LOW)
  1436			val |= UTMI_LS(port);
  1437		else
  1438			val |= UTMI_RST(port);
  1439		padctl_pmc_writel(priv, val, PMC_UTMIP_UHSIC_SAVED_STATE(port));
  1440	
  1441		/* enable the trigger of the sleepwalk logic */
  1442		val = padctl_pmc_readl(priv, PMC_UTMIP_UHSIC_SLEEPWALK_CFG(port));
  1443		val |= UTMIP_LINEVAL_WALK_EN(port);
  1444		padctl_pmc_writel(priv, val, PMC_UTMIP_UHSIC_SLEEPWALK_CFG(port));
  1445	
  1446		/* reset the walk pointer and clear the alarm of the sleepwalk logic,
  1447		 * as well as capture the configuration of the USB2.0 pad
  1448		 */
  1449		val = padctl_pmc_readl(priv, PMC_UTMIP_UHSIC_TRIGGERS);
  1450		val |= (UTMIP_CLR_WALK_PTR(port) | UTMIP_CLR_WAKE_ALARM(port) |
  1451			UTMIP_CAP_CFG(port));
  1452		padctl_pmc_writel(priv, val, PMC_UTMIP_UHSIC_TRIGGERS);
  1453	
  1454		/* program electrical parameters read from XUSB PADCTL */
  1455		val = padctl_pmc_readl(priv, PMC_UTMIP_TERM_PAD_CFG);
  1456		val &= ~(TCTRL_VAL(~0) | PCTRL_VAL(~0));
  1457		val |= (TCTRL_VAL(tctrl) | PCTRL_VAL(pctrl));
  1458		padctl_pmc_writel(priv, val, PMC_UTMIP_TERM_PAD_CFG);
  1459	
  1460		val = padctl_pmc_readl(priv, PMC_UTMIP_PAD_CFGX(port));
  1461		val &= ~RPD_CTRL_PX(~0);
  1462		val |= RPD_CTRL_PX(rpd_ctrl);
  1463		padctl_pmc_writel(priv, val, PMC_UTMIP_PAD_CFGX(port));
  1464	
  1465		/* setup the pull-ups and pull-downs of the signals during the four
  1466		 * stages of sleepwalk.
  1467		 * if device is connected, program sleepwalk logic to maintain a J and
  1468		 * keep driving K upon seeing remote wake.
  1469		 */
  1470		val = padctl_pmc_readl(priv, PMC_UTMIP_SLEEPWALK_PX(port));
  1471		val = (UTMIP_USBOP_RPD_A | UTMIP_USBOP_RPD_B | UTMIP_USBOP_RPD_C |
  1472			UTMIP_USBOP_RPD_D);
  1473		val |= (UTMIP_USBON_RPD_A | UTMIP_USBON_RPD_B | UTMIP_USBON_RPD_C |
  1474			UTMIP_USBON_RPD_D);
  1475		if (speed == USB_SPEED_UNKNOWN) {
  1476			val |= (UTMIP_HIGHZ_A | UTMIP_HIGHZ_B | UTMIP_HIGHZ_C |
  1477				UTMIP_HIGHZ_D);
  1478		} else if ((speed == USB_SPEED_HIGH) || (speed == USB_SPEED_FULL)) {
  1479			/* J state: D+/D- = high/low, K state: D+/D- = low/high */
  1480			val |= UTMIP_HIGHZ_A;
  1481			val |= UTMIP_AP_A;
  1482			val |= (UTMIP_AN_B | UTMIP_AN_C | UTMIP_AN_D);
  1483		} else if (speed == USB_SPEED_LOW) {
  1484			/* J state: D+/D- = low/high, K state: D+/D- = high/low */
  1485			val |= UTMIP_HIGHZ_A;
  1486			val |= UTMIP_AN_A;
  1487			val |= (UTMIP_AP_B | UTMIP_AP_C | UTMIP_AP_D);
  1488		}
  1489		padctl_pmc_writel(priv, val, PMC_UTMIP_SLEEPWALK_PX(port));
  1490	
  1491		/* power up the line state detectors of the pad */
  1492		val = padctl_pmc_readl(priv, PMC_USB_AO);
  1493		val &= ~(USBOP_VAL_PD(port) | USBON_VAL_PD(port));
  1494		padctl_pmc_writel(priv, val, PMC_USB_AO);
  1495	
  1496		usleep_range(50, 100);
  1497	
  1498		/* switch the electric control of the USB2.0 pad to PMC */
  1499		val = padctl_pmc_readl(priv, PMC_UTMIP_UHSIC_SLEEP_CFG(port));
  1500		val |= (UTMIP_FSLS_USE_PMC(port) | UTMIP_PCTRL_USE_PMC(port) |
  1501				UTMIP_TCTRL_USE_PMC(port));
  1502		padctl_pmc_writel(priv, val, PMC_UTMIP_UHSIC_SLEEP_CFG(port));
  1503	
  1504		val = padctl_pmc_readl(priv, PMC_UTMIP_UHSIC_SLEEP_CFG1);
  1505		val |= (UTMIP_RPD_CTRL_USE_PMC_PX(port) |
  1506				UTMIP_RPU_SWITC_LOW_USE_PMC_PX(port));
  1507		padctl_pmc_writel(priv, val, PMC_UTMIP_UHSIC_SLEEP_CFG1);
  1508	
  1509		/* set the wake signaling trigger events */
  1510		val = padctl_pmc_readl(priv, PMC_UTMIP_UHSIC_SLEEP_CFG(port));
  1511		val &= ~UTMIP_WAKE_VAL(port, ~0);
  1512		val |= UTMIP_WAKE_VAL_ANY(port);
  1513		padctl_pmc_writel(priv, val, PMC_UTMIP_UHSIC_SLEEP_CFG(port));
  1514	
  1515		/* enable the wake detection */
  1516		val = padctl_pmc_readl(priv, PMC_UTMIP_UHSIC_SLEEP_CFG(port));
  1517		val |= UTMIP_MASTER_ENABLE(port);
  1518		padctl_pmc_writel(priv, val, PMC_UTMIP_UHSIC_SLEEP_CFG(port));
  1519	
  1520		val = padctl_pmc_readl(priv, PMC_UTMIP_UHSIC_LINE_WAKEUP);
  1521		val |= UTMIP_LINE_WAKEUP_EN(port);
  1522		padctl_pmc_writel(priv, val, PMC_UTMIP_UHSIC_LINE_WAKEUP);
  1523	
  1524		return 0;
  1525	}
  1526	
> 1527	int tegra_pmc_utmi_disable_phy_sleepwalk(struct phy *phy)
  1528	{
  1529		struct tegra_xusb_lane *lane = phy_get_drvdata(phy);
  1530		struct tegra_xusb_padctl *padctl = lane->pad->padctl;
  1531		struct tegra210_xusb_padctl *priv = to_tegra210_xusb_padctl(padctl);
  1532		struct device *dev = padctl->dev;
  1533		unsigned int port = lane->index;
  1534		u32 value;
  1535	
  1536		dev_dbg(dev, "phy disable sleepwalk usb2 %d\n", port);
  1537	
  1538		/* disable the wake detection */
  1539		value = padctl_pmc_readl(priv, PMC_UTMIP_UHSIC_SLEEP_CFG(port));
  1540		value &= ~UTMIP_MASTER_ENABLE(port);
  1541		padctl_pmc_writel(priv, value, PMC_UTMIP_UHSIC_SLEEP_CFG(port));
  1542	
  1543		value = padctl_pmc_readl(priv, PMC_UTMIP_UHSIC_LINE_WAKEUP);
  1544		value &= ~UTMIP_LINE_WAKEUP_EN(port);
  1545		padctl_pmc_writel(priv, value, PMC_UTMIP_UHSIC_LINE_WAKEUP);
  1546	
  1547		/* switch the electric control of the USB2.0 pad to XUSB or USB2 */
  1548		value = padctl_pmc_readl(priv, PMC_UTMIP_UHSIC_SLEEP_CFG(port));
  1549		value &= ~(UTMIP_FSLS_USE_PMC(port) | UTMIP_PCTRL_USE_PMC(port) |
  1550				UTMIP_TCTRL_USE_PMC(port));
  1551		padctl_pmc_writel(priv, value, PMC_UTMIP_UHSIC_SLEEP_CFG(port));
  1552	
  1553		value = padctl_pmc_readl(priv, PMC_UTMIP_UHSIC_SLEEP_CFG1);
  1554		value &= ~(UTMIP_RPD_CTRL_USE_PMC_PX(port) |
  1555				UTMIP_RPU_SWITC_LOW_USE_PMC_PX(port));
  1556		padctl_pmc_writel(priv, value, PMC_UTMIP_UHSIC_SLEEP_CFG1);
  1557	
  1558		/* disable wake event triggers of sleepwalk logic */
  1559		value = padctl_pmc_readl(priv, PMC_UTMIP_UHSIC_SLEEP_CFG(port));
  1560		value &= ~UTMIP_WAKE_VAL(port, ~0);
  1561		value |= UTMIP_WAKE_VAL_NONE(port);
  1562		padctl_pmc_writel(priv, value, PMC_UTMIP_UHSIC_SLEEP_CFG(port));
  1563	
  1564		/* power down the line state detectors of the port */
  1565		value = padctl_pmc_readl(priv, PMC_USB_AO);
  1566		value |= (USBOP_VAL_PD(port) | USBON_VAL_PD(port));
  1567		padctl_pmc_writel(priv, value, PMC_USB_AO);
  1568	
  1569		/* clear alarm of the sleepwalk logic */
  1570		value = padctl_pmc_readl(priv, PMC_UTMIP_UHSIC_TRIGGERS);
  1571		value |= UTMIP_CLR_WAKE_ALARM(port);
  1572		padctl_pmc_writel(priv, value, PMC_UTMIP_UHSIC_TRIGGERS);
  1573	
  1574		return 0;
  1575	}
  1576	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202009012322.ECyJxITw%25lkp%40intel.com.

--J/dobhs11T7y2rNN
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--J/dobhs11T7y2rNN--
