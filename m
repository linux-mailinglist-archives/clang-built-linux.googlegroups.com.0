Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBIUYTKBQMGQEXKW4INQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33e.google.com (mail-ot1-x33e.google.com [IPv6:2607:f8b0:4864:20::33e])
	by mail.lfdr.de (Postfix) with ESMTPS id EAD7335259D
	for <lists+clang-built-linux@lfdr.de>; Fri,  2 Apr 2021 05:14:43 +0200 (CEST)
Received: by mail-ot1-x33e.google.com with SMTP id 8sf3411946otj.11
        for <lists+clang-built-linux@lfdr.de>; Thu, 01 Apr 2021 20:14:43 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1617333282; cv=pass;
        d=google.com; s=arc-20160816;
        b=Bl3O63T8UNjt0YF/J7eabEvnNcLb1ZiYcD57cbG85wAgkCQBQQPVGs7d9fVIzX9uk8
         R902E7FKcZn9DoCW1IV3qWqawzARGxZZMDj1E80MmCHDJF4XdzgU1/HcQi9ll01U90mu
         qYpdwHosXOmHlhL3ERJCxCFVCu8HCdTnTphnIraf/+2Y3Qir9GS+iFbOueltCpDnrhjO
         5SKPvY/u0ZMlpq1NDmLfhM2RlOIwn/AB2NBtOcN0wUTM8plkUvIyDRizk+XqGErLuEP3
         Y7CnZy58HiZ7U/XzTmyfMUcV3//MmcOLlZ+QoNwnCNTol6Y3Mw2LKtHMuE7AMoWudIlO
         q8fg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=5u1MGgaCuihGy+kAuBCIenReSQpU73rDA7MlIbzKtsI=;
        b=anUXWBxym0JUwMSldivdld3XpQgsKjsIsRi5L5N0YgP6eV6J3Wrl7S+PS6yQVmDssD
         +q9S0kYZBMccTwiGbeB/z61NJNoBAyi+hO7SxrJNp2MAhzj3fzxQ6m58jBbQr1/f2g7q
         6KXfqoqbZFSvsRhQJr3n7KEKYXauHkbG/Ixx956Lo7ihvI3ymgScOc2aOGLzq56onyPS
         4MHSzhi3lIppe6CPY8sAjETTQ4gWyWM31pcxOQXjkzbMm1PV5VqkrAf5sR5sGCvNX4ej
         9h5UaIbY8ur8lYtzLiLaeRt+IbPfTQqsG3hYz5h1NvkCUJPbL4II1IRaY18nAlT7V94j
         UuKQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.151 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=5u1MGgaCuihGy+kAuBCIenReSQpU73rDA7MlIbzKtsI=;
        b=d4FIcOz3JaSuAEoxoR3TLRZYSMKN8eE3kTc3+xBICS9/7V0MMfyFr6nIGk6aTa4JOT
         e4Y+3tniO2aUOWJkTc/hV/jsHWktP3/i3PfSOrcOer5BW1L/aGo41zDMzh+zs89vCAyY
         IkoyPdgm16L5oh7FZk14UJwAsLaJ4QzuE119Uy0YKB+PuNMvprzw33Ht+heLeEbCcyL0
         +NFblZAeMMZdsyrc3RwQWllow03f4TyPHCg4B8JOfUn9hNo186BsWj/belRby+mY5CXj
         USmZfLuQZvM0BZvmREp0jla5ZVjV/bKiHYZ03WwJqfe91MMR/0lIsKwOv+xgxoO8BLna
         YRcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=5u1MGgaCuihGy+kAuBCIenReSQpU73rDA7MlIbzKtsI=;
        b=i8gBaB5AdMXpAtvvNj7+todREyUHIMvBAmMDnKO+Wk0dflpTc44TsZAxOPuDdKPRq2
         1DaXl62M/1wzd0GqxlgVTujstrYJmVN/Io/nhwvcyfO13bmVU5BlQ2/MJT9ismJCDCqZ
         CFTd1mvvwMkbFnGs4cXhljzrMzySfVJYXmTn5kNJQVx3yF13Ehi5XhijL4OB0456VFrz
         e12gxrCzzL9e192dFPGFcsR2QqHy2ophe59/qPNOXsHi8ZEgYOkaDnvWqfoiTDpLnVoN
         rvv47bnpO5wwJ4wn4kn9Byse7Mf1oacolo5WN5JNdP0MN/WBEo3LJpQ12AYCnakBlD/m
         uM5Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532V/Y/FnEksqJVh94di2Ch8IxiQw7451mFUaT+j9XjsjHw+bPCD
	6f1dM2hlCdQXCgFNwdFPYw4=
X-Google-Smtp-Source: ABdhPJxlVZTgwxtxuI60lYRq7cu4ky5CDZyxXxOixyZ5u+3Q5zPWIM4p+g7gXuCxQhCMhFuRsPk8iQ==
X-Received: by 2002:aca:b9c1:: with SMTP id j184mr8159816oif.5.1617333282659;
        Thu, 01 Apr 2021 20:14:42 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:d54d:: with SMTP id m74ls1718170oig.11.gmail; Thu, 01
 Apr 2021 20:14:42 -0700 (PDT)
X-Received: by 2002:aca:5602:: with SMTP id k2mr8477934oib.10.1617333282146;
        Thu, 01 Apr 2021 20:14:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617333282; cv=none;
        d=google.com; s=arc-20160816;
        b=qqhsu7YGqkzdImwcVjlplhEioxOuFro+jz2Kf0FiEy2/JVm9oKKOuVYB++JFRFvo6p
         y3nuAppkUHESScXCi+xlb+WLbYmR7vc0ytDMkZKymvrMA3IU5aeDIiIh0UEQAHx2Ija+
         ZJsEzXJ4j5+lKwajXouslvtZ/BUmOOP4bM+sO1D4KDK/1womi7D/R9vAYfrX7ll+WUnt
         ohrWWxmUDWf11Gk/GWTszepJPNBZyVYNdCGGu8+PaODJN6fHh/y8+T/SGaOErPJ3KsQL
         RS5hjtgnJ0iSIzKYvuppgAc+SXldeNxdkpygBt7aoRNcZv+pwvfRQ6w9ZXaGTPud8N8e
         cXNA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=7IWJzWS+iHkHHQ0r7MWOPnWmrmju9kALCXcSxPXADRA=;
        b=zm7WBVx/WctLtN8DzDIuXBLmBKYhFHmdZeL8HXdCgFCFihGy4neOoeaRPLA8r6cT34
         d436aBnZ7cMzJJfcdLrvmSj+ZHvD0gQNdDz7K8Y0Vg/hTgKnMTyhCngLznU+BKsZf15K
         s4bPPE78VlVrCPu4wIXlm4KhbXQG312uPhfZRiTh0EyJAI0PDeDWyrzSvtnIlHldxA44
         o2ejZF99ozMEC6Cg3ZuVN63LOC12PbojmpKW0QzquKMQzmipFj7dy4wjq1356jljN2k1
         T6jRGrV78dIkSU9+lv4YI6B/ds04kJirX01sJrlMSA3SeeHsoFY5h37ELEdHOTOAykuO
         ZO/A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.151 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga17.intel.com (mga17.intel.com. [192.55.52.151])
        by gmr-mx.google.com with ESMTPS id y26si975434ooy.1.2021.04.01.20.14.41
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 01 Apr 2021 20:14:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.151 as permitted sender) client-ip=192.55.52.151;
IronPort-SDR: /9+vkRUFJkX2jjFW8nBHCpy1vFfO5TPIkEXCDJhGb7e5P4GSTOz1J0AYu36B5zUwDahp+i+1WI
 JXDs63TdyqkQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9941"; a="172409707"
X-IronPort-AV: E=Sophos;i="5.81,298,1610438400"; 
   d="gz'50?scan'50,208,50";a="172409707"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
  by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 01 Apr 2021 20:14:40 -0700
IronPort-SDR: O1BvEI6eyTzBt1F5Q7qyLjXaRCU1JMexPg5U/ALEHIZbj2NWpfMpa3/HSPzYTLViZQNnizv3b9
 v13HfNrovZOw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,298,1610438400"; 
   d="gz'50?scan'50,208,50";a="517602914"
Received: from lkp-server01.sh.intel.com (HELO 69d8fcc516b7) ([10.239.97.150])
  by fmsmga001.fm.intel.com with ESMTP; 01 Apr 2021 20:14:37 -0700
Received: from kbuild by 69d8fcc516b7 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1lSAGa-0006s7-VO; Fri, 02 Apr 2021 03:14:36 +0000
Date: Fri, 2 Apr 2021 11:14:24 +0800
From: kernel test robot <lkp@intel.com>
To: Anurag Kumar Vulisha <anurag.kumar.vulisha@xilinx.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	linux-arm-kernel@lists.infradead.org,
	Michal Simek <monstr@monstr.eu>,
	Mayank Adesara <mayank.adesara@xilinx.com>,
	Piyush Mehta <piyush.mehta@xilinx.com>
Subject: [xlnx:xlnx_rebase_v5.4 913/1701] drivers/usb/dwc3/core.c:977:5:
 warning: no previous prototype for function 'dwc3_core_init'
Message-ID: <202104021115.DELqrT8i-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="fUYQa+Pmc3FrFX/N"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 192.55.52.151 as permitted
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


--fUYQa+Pmc3FrFX/N
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://github.com/Xilinx/linux-xlnx xlnx_rebase_v5.4
head:   8540825db3d5519ef205a710515b7819b95eeb4f
commit: 526f56822f971265d67428fe61e40fe18f95ac81 [913/1701] usb: dwc3: Add hibernation support when operating as gadget
config: x86_64-randconfig-a004-20210401 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 1c268a8ff4e90a85d0e634350b1104080614cf2b)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install x86_64 cross compiling tool for clang build
        # apt-get install binutils-x86-64-linux-gnu
        # https://github.com/Xilinx/linux-xlnx/commit/526f56822f971265d67428fe61e40fe18f95ac81
        git remote add xlnx https://github.com/Xilinx/linux-xlnx
        git fetch --no-tags xlnx xlnx_rebase_v5.4
        git checkout 526f56822f971265d67428fe61e40fe18f95ac81
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

   In file included from drivers/usb/dwc3/core.c:36:
   drivers/usb/dwc3/core.h:1444:6: warning: no previous prototype for function 'dwc3_simple_wakeup_capable' [-Wmissing-prototypes]
   void dwc3_simple_wakeup_capable(struct device *dev, bool wakeup)
        ^
   drivers/usb/dwc3/core.h:1444:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void dwc3_simple_wakeup_capable(struct device *dev, bool wakeup)
   ^
   static 
   drivers/usb/dwc3/core.h:1446:6: warning: no previous prototype for function 'dwc3_set_simple_data' [-Wmissing-prototypes]
   void dwc3_set_simple_data(struct dwc3 *dwc)
        ^
   drivers/usb/dwc3/core.h:1446:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void dwc3_set_simple_data(struct dwc3 *dwc)
   ^
   static 
   drivers/usb/dwc3/core.h:1448:6: warning: no previous prototype for function 'dwc3_simple_check_quirks' [-Wmissing-prototypes]
   void dwc3_simple_check_quirks(struct dwc3 *dwc)
        ^
   drivers/usb/dwc3/core.h:1448:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void dwc3_simple_check_quirks(struct dwc3 *dwc)
   ^
   static 
   drivers/usb/dwc3/core.h:1450:5: warning: no previous prototype for function 'dwc3_set_usb_core_power' [-Wmissing-prototypes]
   int dwc3_set_usb_core_power(struct dwc3 *dwc, bool on)
       ^
   drivers/usb/dwc3/core.h:1450:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   int dwc3_set_usb_core_power(struct dwc3 *dwc, bool on)
   ^
   static 
   drivers/usb/dwc3/core.h:1451:5: warning: non-void function does not return a value [-Wreturn-type]
   { ; }
       ^
   drivers/usb/dwc3/core.c:386:6: warning: no previous prototype for function 'dwc3_free_event_buffers' [-Wmissing-prototypes]
   void dwc3_free_event_buffers(struct dwc3 *dwc)
        ^
   drivers/usb/dwc3/core.c:386:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void dwc3_free_event_buffers(struct dwc3 *dwc)
   ^
   static 
   drivers/usb/dwc3/core.c:403:5: warning: no previous prototype for function 'dwc3_alloc_event_buffers' [-Wmissing-prototypes]
   int dwc3_alloc_event_buffers(struct dwc3 *dwc, unsigned length)
       ^
   drivers/usb/dwc3/core.c:403:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   int dwc3_alloc_event_buffers(struct dwc3 *dwc, unsigned length)
   ^
   static 
>> drivers/usb/dwc3/core.c:977:5: warning: no previous prototype for function 'dwc3_core_init' [-Wmissing-prototypes]
   int dwc3_core_init(struct dwc3 *dwc)
       ^
   drivers/usb/dwc3/core.c:977:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   int dwc3_core_init(struct dwc3 *dwc)
   ^
   static 
   8 warnings generated.


vim +/dwc3_core_init +977 drivers/usb/dwc3/core.c

   970	
   971	/**
   972	 * dwc3_core_init - Low-level initialization of DWC3 Core
   973	 * @dwc: Pointer to our controller context structure
   974	 *
   975	 * Returns 0 on success otherwise negative errno.
   976	 */
 > 977	int dwc3_core_init(struct dwc3 *dwc)
   978	{
   979		u32			reg;
   980		int			ret;
   981	
   982		/*
   983		 * Write Linux Version Code to our GUID register so it's easy to figure
   984		 * out which kernel version a bug was found.
   985		 */
   986		dwc3_writel(dwc->regs, DWC3_GUID, LINUX_VERSION_CODE);
   987	
   988		/* Handle USB2.0-only core configuration */
   989		if (DWC3_GHWPARAMS3_SSPHY_IFC(dwc->hwparams.hwparams3) ==
   990				DWC3_GHWPARAMS3_SSPHY_IFC_DIS) {
   991			if (dwc->maximum_speed == USB_SPEED_SUPER)
   992				dwc->maximum_speed = USB_SPEED_HIGH;
   993		}
   994	
   995		ret = dwc3_phy_setup(dwc);
   996		if (ret)
   997			goto err0;
   998	
   999		if (!dwc->ulpi_ready) {
  1000			ret = dwc3_core_ulpi_init(dwc);
  1001			if (ret)
  1002				goto err0;
  1003			dwc->ulpi_ready = true;
  1004		}
  1005	
  1006		if (!dwc->phys_ready) {
  1007			ret = dwc3_core_get_phy(dwc);
  1008			if (ret)
  1009				goto err0a;
  1010			dwc->phys_ready = true;
  1011		}
  1012	
  1013		ret = dwc3_core_soft_reset(dwc);
  1014		if (ret)
  1015			goto err0a;
  1016	
  1017		dwc3_core_setup_global_control(dwc);
  1018		dwc3_core_num_eps(dwc);
  1019	
  1020		if (dwc->scratchbuf == NULL) {
  1021			ret = dwc3_alloc_scratch_buffers(dwc);
  1022			if (ret) {
  1023				dev_err(dwc->dev,
  1024					"Not enough memory for scratch buffers\n");
  1025				goto err1;
  1026			}
  1027		}
  1028	
  1029		ret = dwc3_setup_scratch_buffers(dwc);
  1030		if (ret) {
  1031			dev_err(dwc->dev, "Failed to setup scratch buffers: %d\n", ret);
  1032			goto err1;
  1033		}
  1034	
  1035		/* Adjust Frame Length */
  1036		dwc3_frame_length_adjustment(dwc);
  1037	
  1038		dwc3_set_incr_burst_type(dwc);
  1039	
  1040		ret = dwc3_config_soc_bus(dwc);
  1041		if (ret)
  1042			goto err1;
  1043	
  1044		usb_phy_set_suspend(dwc->usb2_phy, 0);
  1045		usb_phy_set_suspend(dwc->usb3_phy, 0);
  1046		ret = phy_power_on(dwc->usb2_generic_phy);
  1047		if (ret < 0)
  1048			goto err2;
  1049	
  1050		ret = phy_power_on(dwc->usb3_generic_phy);
  1051		if (ret < 0)
  1052			goto err3;
  1053	
  1054		ret = dwc3_event_buffers_setup(dwc);
  1055		if (ret) {
  1056			dev_err(dwc->dev, "failed to setup event buffers\n");
  1057			goto err4;
  1058		}
  1059	
  1060		/*
  1061		 * ENDXFER polling is available on version 3.10a and later of
  1062		 * the DWC_usb3 controller. It is NOT available in the
  1063		 * DWC_usb31 controller.
  1064		 */
  1065		if (!dwc3_is_usb31(dwc) && dwc->revision >= DWC3_REVISION_310A) {
  1066			reg = dwc3_readl(dwc->regs, DWC3_GUCTL2);
  1067			reg |= DWC3_GUCTL2_RST_ACTBITLATER;
  1068			dwc3_writel(dwc->regs, DWC3_GUCTL2, reg);
  1069		}
  1070	
  1071		/* When configured in HOST mode, after issuing U3/L2 exit controller
  1072		 * fails to send proper CRC checksum in CRC5 feild. Because of this
  1073		 * behaviour Transaction Error is generated, resulting in reset and
  1074		 * re-enumeration of usb device attached. Enabling bit 10 of GUCTL1
  1075		 * will correct this problem
  1076		 */
  1077		if (dwc->enable_guctl1_resume_quirk) {
  1078			reg = dwc3_readl(dwc->regs, DWC3_GUCTL1);
  1079			reg |= DWC3_GUCTL1_RESUME_QUIRK;
  1080			dwc3_writel(dwc->regs, DWC3_GUCTL1, reg);
  1081		}
  1082	
  1083		/* SNPS controller when configureed in HOST mode maintains Inter Packet
  1084		 * Delay (IPD) of ~380ns which works with most of the super-speed hubs
  1085		 * except VIA-LAB hubs. When IPD is ~380ns HOST controller fails to
  1086		 * enumerate FS/LS devices when connected behind VIA-LAB hubs.
  1087		 * Enabling bit 9 of GUCTL1 enables the workaround in HW to reduce the
  1088		 * ULPI clock latency by 1 cycle, thus reducing the IPD (~360ns) and
  1089		 * making controller enumerate FS/LS devices connected behind VIA-LAB.
  1090		 */
  1091		if (dwc->enable_guctl1_ipd_quirk) {
  1092			reg = dwc3_readl(dwc->regs, DWC3_GUCTL1);
  1093			reg |= DWC3_GUCTL1_IPD_QUIRK;
  1094			dwc3_writel(dwc->regs, DWC3_GUCTL1, reg);
  1095		}
  1096	
  1097		if (dwc->revision >= DWC3_REVISION_250A) {
  1098			reg = dwc3_readl(dwc->regs, DWC3_GUCTL1);
  1099	
  1100			/*
  1101			 * Enable hardware control of sending remote wakeup
  1102			 * in HS when the device is in the L1 state.
  1103			 */
  1104			if (dwc->revision >= DWC3_REVISION_290A)
  1105				reg |= DWC3_GUCTL1_DEV_L1_EXIT_BY_HW;
  1106	
  1107			if (dwc->dis_tx_ipgap_linecheck_quirk)
  1108				reg |= DWC3_GUCTL1_TX_IPGAP_LINECHECK_DIS;
  1109	
  1110			dwc3_writel(dwc->regs, DWC3_GUCTL1, reg);
  1111		}
  1112	
  1113		if (dwc->dr_mode == USB_DR_MODE_HOST ||
  1114		    dwc->dr_mode == USB_DR_MODE_OTG) {
  1115			reg = dwc3_readl(dwc->regs, DWC3_GUCTL);
  1116	
  1117			/*
  1118			 * Enable Auto retry Feature to make the controller operating in
  1119			 * Host mode on seeing transaction errors(CRC errors or internal
  1120			 * overrun scenerios) on IN transfers to reply to the device
  1121			 * with a non-terminating retry ACK (i.e, an ACK transcation
  1122			 * packet with Retry=1 & Nump != 0)
  1123			 */
  1124			reg |= DWC3_GUCTL_HSTINAUTORETRY;
  1125	
  1126			dwc3_writel(dwc->regs, DWC3_GUCTL, reg);
  1127		}
  1128	
  1129		/*
  1130		 * Must config both number of packets and max burst settings to enable
  1131		 * RX and/or TX threshold.
  1132		 */
  1133		if (dwc3_is_usb31(dwc) && dwc->dr_mode == USB_DR_MODE_HOST) {
  1134			u8 rx_thr_num = dwc->rx_thr_num_pkt_prd;
  1135			u8 rx_maxburst = dwc->rx_max_burst_prd;
  1136			u8 tx_thr_num = dwc->tx_thr_num_pkt_prd;
  1137			u8 tx_maxburst = dwc->tx_max_burst_prd;
  1138	
  1139			if (rx_thr_num && rx_maxburst) {
  1140				reg = dwc3_readl(dwc->regs, DWC3_GRXTHRCFG);
  1141				reg |= DWC31_RXTHRNUMPKTSEL_PRD;
  1142	
  1143				reg &= ~DWC31_RXTHRNUMPKT_PRD(~0);
  1144				reg |= DWC31_RXTHRNUMPKT_PRD(rx_thr_num);
  1145	
  1146				reg &= ~DWC31_MAXRXBURSTSIZE_PRD(~0);
  1147				reg |= DWC31_MAXRXBURSTSIZE_PRD(rx_maxburst);
  1148	
  1149				dwc3_writel(dwc->regs, DWC3_GRXTHRCFG, reg);
  1150			}
  1151	
  1152			if (tx_thr_num && tx_maxburst) {
  1153				reg = dwc3_readl(dwc->regs, DWC3_GTXTHRCFG);
  1154				reg |= DWC31_TXTHRNUMPKTSEL_PRD;
  1155	
  1156				reg &= ~DWC31_TXTHRNUMPKT_PRD(~0);
  1157				reg |= DWC31_TXTHRNUMPKT_PRD(tx_thr_num);
  1158	
  1159				reg &= ~DWC31_MAXTXBURSTSIZE_PRD(~0);
  1160				reg |= DWC31_MAXTXBURSTSIZE_PRD(tx_maxburst);
  1161	
  1162				dwc3_writel(dwc->regs, DWC3_GTXTHRCFG, reg);
  1163			}
  1164		}
  1165	
  1166		return 0;
  1167	
  1168	err4:
  1169		phy_power_off(dwc->usb3_generic_phy);
  1170	
  1171	err3:
  1172		phy_power_off(dwc->usb2_generic_phy);
  1173	
  1174	err2:
  1175		usb_phy_set_suspend(dwc->usb2_phy, 1);
  1176		usb_phy_set_suspend(dwc->usb3_phy, 1);
  1177	
  1178	err1:
  1179		usb_phy_shutdown(dwc->usb2_phy);
  1180		usb_phy_shutdown(dwc->usb3_phy);
  1181		phy_exit(dwc->usb2_generic_phy);
  1182		phy_exit(dwc->usb3_generic_phy);
  1183	
  1184	err0a:
  1185		dwc3_ulpi_exit(dwc);
  1186	
  1187	err0:
  1188		return ret;
  1189	}
  1190	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202104021115.DELqrT8i-lkp%40intel.com.

--fUYQa+Pmc3FrFX/N
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--fUYQa+Pmc3FrFX/N--
