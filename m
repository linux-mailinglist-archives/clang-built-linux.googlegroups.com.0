Return-Path: <clang-built-linux+bncBC4LXIPCY4NRB5NG3GBQMGQERSQLR6Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23c.google.com (mail-oi1-x23c.google.com [IPv6:2607:f8b0:4864:20::23c])
	by mail.lfdr.de (Postfix) with ESMTPS id EF8A635EAD3
	for <lists+clang-built-linux@lfdr.de>; Wed, 14 Apr 2021 04:29:10 +0200 (CEST)
Received: by mail-oi1-x23c.google.com with SMTP id w4-20020a0568081404b0290102a1fd05b2sf5741574oiv.6
        for <lists+clang-built-linux@lfdr.de>; Tue, 13 Apr 2021 19:29:10 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1618367350; cv=pass;
        d=google.com; s=arc-20160816;
        b=xJ8YVCbnUg81kzO1Yk3C5y2tTs0usdgCgmp6y74ZOCHc8hrfQG+nVQw1dUf/brluK1
         zOL2kUgyhn3xjWkCnV1rNBAlEwelAr+eqEmnKYhBMGZ4FVnaHm7tNqQ2UiSXGWV9HpTp
         qggx394Z/+lxT+FxWm9b9xWB/VcXpA0UVYsmzTMy98mZ2/mpxXtcl2kXUYRS84qod4Lx
         wB6HJNHAAcgDi5OCjyAxP6JHXT2oiYza0mLGGSbTyH7ND44xTYAHSEZc3+qy04Xt4syP
         Le1WBqFNFl0FaKtVSFz+hmZpCSDlXtbLA+SeVq2Wwt7L7Uw2jNVoH6KnlRCFLTzmGkdN
         6vZg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=UufiHcZ6Kj5nBrk/O2+2y6QMFz+PckzxSC79Lc4xJaY=;
        b=M2vWFpEzrvLmu1nGk05leEkO8njye/irFbJtx2rwFcmjMwvoEh1zdLSKfcbXJj4Aqf
         uoL49nPx2xLFAm05gDJcy15BTqf6aIwc3TQ4VECm7kEoX2g5rVkm05qXlcFyVL3RZvlI
         esz005m8s93d8zpdPffLVuKhH5PhBbbAeoCBA+yDOHOFexEv4rFXfmhjNHZZ+4YDV41q
         Wp04Gj6Dzb2UeUIzbjd5M4yAnZnV3lV4shQrUIqGK4vctEo0fgvLqMqQvNeOR+m8ekGw
         rrUD0eAnch+JxKSDP9GO2GwDRCMtIXIwNrbHq9weyt2esETNonvkJoG++6Hz39IQdqTG
         mGOA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.31 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=UufiHcZ6Kj5nBrk/O2+2y6QMFz+PckzxSC79Lc4xJaY=;
        b=hUH3i1Qc6/O4MPf95AFtf5GkkBnQ0eBoKGB+mTTdXimkdRF8NOpt2GpWpqLMXQABAL
         8DGRwfZLG84pH2Z5tWtu3UBJ4+QGHwlx8GAyDCUvooSa7PSG6XliG003z3Rb27jIgwXO
         Am6M9OowsLVtYKrhETZp6VuwPD0QZeo9GpbNrsBPMc2mh59BQ7vjrDtjigpB0AdJAWTp
         uJfxKiBkFRVaSw8qKO0j7Tyvfy62Fdl959MA7eV2SseKMCfSslGnIGXVRXt/NYkr6pKT
         6O5VnF4HbHigpqzs2t8wFcbTui7/dVw+uHeriSb3YP8wOQ/Ic967mxxh+2DdOuk95eAI
         LTQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=UufiHcZ6Kj5nBrk/O2+2y6QMFz+PckzxSC79Lc4xJaY=;
        b=ghh4JLBSw9gtRFE5EcZ5mr1Q2XV07rvzL3EALBY1dIElViLOG1t70JvDcqiGJunyXY
         Kxw3KBxKGoRFW7Dfh0yRrdmVcvfQ6njEBMeEpKba+CVm2z9GNjjjNkl+G5xTfoVoe8kH
         VHqP8ic7FBtcMI7wlE1ZH6y1QgbXm4IkszwcwRv+HMQwJOrsQc8smyS0BQnq4Nff5uVU
         iDzfVvJmL6ilLZ7QLa8SKdvj+mmvyC5pxcc3UTkfRh74DAQBzCA0+Pnw7edRuC5AZ8X9
         I+TLD/Legvai2xXRVWHptcJ1jyua1YRPnI2EgM8W+tL0hxmj9OIar3DDFedQduZJZpbu
         /pkw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533DoehPT1JhEQGTsIJyDQ8m4UOWI1acE/tmLdFkXRy+b5hF/gQ6
	BFdlktNB4NlOafSM3G6knd4=
X-Google-Smtp-Source: ABdhPJzgCY3BOHo2Sl3TuVWFMnshBvVPXRaMoMdyebsBTtH1TaZ961iQ3hRZBUl2C3GRCI9kpLNpqQ==
X-Received: by 2002:a05:6830:70a:: with SMTP id y10mr14343307ots.101.1618367349865;
        Tue, 13 Apr 2021 19:29:09 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6808:f0d:: with SMTP id m13ls158684oiw.4.gmail; Tue, 13
 Apr 2021 19:29:09 -0700 (PDT)
X-Received: by 2002:a05:6808:1383:: with SMTP id c3mr639012oiw.42.1618367349306;
        Tue, 13 Apr 2021 19:29:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618367349; cv=none;
        d=google.com; s=arc-20160816;
        b=dE+lZHnSLmHeYngi0fTSiWsTLfBXi274x+CmT6xd7nhGJGkR2be5VSgDZLj2t5E0eh
         dDRLfjNLQ0va5Cv4AMjr8O0K7/hS11RM6jALjd1P7f4atUQ6l/WziTAd8mr0TCtTOou+
         IsRizuRX6GrbbMOGaBPtzelOBT33MsC8c9HGz8i587jVceJC0FdHxyBHQ+dAoyRZCFGM
         +Sm5t1RHoc4D0kCks6PGWV8AMU/AeHvX4kTSbmkufm6r7WaFLVdWaOqh50u8PB3qIuVm
         m30VTKY97PEgZ9MPZFssJ34HWCW2vvrycyc8MalUxuHnzpt5r+0PwyZDXwaiIPkOi1S1
         anZQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=v36kabPO99eJQ5L9huvlBntySv4P9LV3PR3+LWj71Ks=;
        b=v5FyezLPKISCmhjkfkl0pMgauOayHUI1tY4JmxZDcHApyWPkoTyEb43E+f2U+yOptb
         GKGdzsMbNnBzPdN+TOrhZIRclUhL2wG20aqG4CjNopnKTGmab7rj8zAV+FfCiinHt2Vl
         DPNEBPaWsiv6SXAIB76ns/ocThbCV3yTm1ZhXh1xZ1zeWgUl6gRV4Vd/erdDn1eCf8wO
         JQ2W54f90BigCO4K5hwDXAC6FRbTQpDTt7gqQv0fvzFbMQkZ4Akkt4VGcMb4gEGwNRz6
         dXo5QV4iQZnCIx0sAmFzHeEqBvGDLprZxCU4bDZFGFtOZgWTslcotR+WglzNWavT3X7g
         wnhg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.31 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga06.intel.com (mga06.intel.com. [134.134.136.31])
        by gmr-mx.google.com with ESMTPS id v31si866684ott.5.2021.04.13.19.29.09
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Apr 2021 19:29:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.31 as permitted sender) client-ip=134.134.136.31;
IronPort-SDR: zHhk3byUnEZhnL1WdRN5LJqAOWoZFIEjnbXvQ5WJTvUcseWkH77IWr880qk5AlG5MWwAMPjp2h
 iQbI67XGfHSg==
X-IronPort-AV: E=McAfee;i="6200,9189,9953"; a="255867213"
X-IronPort-AV: E=Sophos;i="5.82,221,1613462400"; 
   d="gz'50?scan'50,208,50";a="255867213"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
  by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 13 Apr 2021 19:29:07 -0700
IronPort-SDR: cPc24iIS26mto1wZVOq9fp7iWb1kXQdwJ1lNJByWe12QoakjnFSFZ0cgXIZDH/gm1oNTkt+0Qn
 6YtSM8tGSHDQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,221,1613462400"; 
   d="gz'50?scan'50,208,50";a="382191801"
Received: from lkp-server01.sh.intel.com (HELO 69d8fcc516b7) ([10.239.97.150])
  by orsmga003.jf.intel.com with ESMTP; 13 Apr 2021 19:29:05 -0700
Received: from kbuild by 69d8fcc516b7 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1lWVH6-0001Tk-H8; Wed, 14 Apr 2021 02:29:04 +0000
Date: Wed, 14 Apr 2021 10:28:02 +0800
From: kernel test robot <lkp@intel.com>
To: Thierry Reding <treding@nvidia.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com
Subject: [thierryreding:for-5.13/work 38/47]
 drivers/memory/tegra/tegra186.c:125:24: error: no member named 'ids' in
 'struct iommu_fwspec'
Message-ID: <202104141056.uSQgNEFO-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="TB36FDmn/VVEgNH/"
Content-Disposition: inline
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


--TB36FDmn/VVEgNH/
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://github.com/thierryreding/linux for-5.13/work
head:   b2ea517f55a84b7036d299279e4fc672fd91c156
commit: 95f8d102ec805060169853c20fa75db5b429421d [38/47] memory: tegra: Implement SID override programming
config: arm64-randconfig-r022-20210413 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 9829f5e6b1bca9b61efc629770d28bb9014dec45)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install arm64 cross compiling tool for clang build
        # apt-get install binutils-aarch64-linux-gnu
        # https://github.com/thierryreding/linux/commit/95f8d102ec805060169853c20fa75db5b429421d
        git remote add thierryreding https://github.com/thierryreding/linux
        git fetch --no-tags thierryreding for-5.13/work
        git checkout 95f8d102ec805060169853c20fa75db5b429421d
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=arm64 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

>> drivers/memory/tegra/tegra186.c:125:24: error: no member named 'ids' in 'struct iommu_fwspec'
                                           u32 sid = fwspec->ids[0] & MC_SID_STREAMID_OVERRIDE_MASK;
                                                     ~~~~~~  ^
   1 error generated.


vim +125 drivers/memory/tegra/tegra186.c

   111	
   112	static int tegra186_mc_probe_device(struct tegra_mc *mc, struct device *dev)
   113	{
   114		struct iommu_fwspec *fwspec = dev_iommu_fwspec_get(dev);
   115		struct of_phandle_args args;
   116		unsigned int i, index = 0;
   117	
   118		while (!of_parse_phandle_with_args(dev->of_node, "interconnects", "#interconnect-cells",
   119						   index, &args)) {
   120			if (args.np == mc->dev->of_node && args.args_count != 0) {
   121				for (i = 0; i < mc->soc->num_clients; i++) {
   122					const struct tegra_mc_client *client = &mc->soc->clients[i];
   123	
   124					if (client->id == args.args[0]) {
 > 125						u32 sid = fwspec->ids[0] & MC_SID_STREAMID_OVERRIDE_MASK;
   126	
   127						tegra186_mc_client_sid_override(mc, client, sid);
   128					}
   129				}
   130			}
   131	
   132			index++;
   133		}
   134	
   135		return 0;
   136	}
   137	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202104141056.uSQgNEFO-lkp%40intel.com.

--TB36FDmn/VVEgNH/
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
wO1/AFqmycXXiwEA

--TB36FDmn/VVEgNH/--
