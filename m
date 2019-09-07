Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBV4BZ7VQKGQE6JBIGRA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53e.google.com (mail-pg1-x53e.google.com [IPv6:2607:f8b0:4864:20::53e])
	by mail.lfdr.de (Postfix) with ESMTPS id 81B6EAC6F8
	for <lists+clang-built-linux@lfdr.de>; Sat,  7 Sep 2019 16:38:17 +0200 (CEST)
Received: by mail-pg1-x53e.google.com with SMTP id d19sf5161789pgh.3
        for <lists+clang-built-linux@lfdr.de>; Sat, 07 Sep 2019 07:38:17 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567867096; cv=pass;
        d=google.com; s=arc-20160816;
        b=aTbZsbe/F8t/M/f4lKrDtRPpgDMfsg96C8bbQ8hEmGbiYxdHv2+JPc41epLsk/jjQ/
         NEYvWaBQo9FatT435BTCpNzI6q0f4l/dRx0cp0TbIjFID41OC7/86ZFcIPi0ETxaVeLu
         nJ1CNBZftyjmeDi0cGpLRdyyjJU89TSEUKcpv/HphPDtArbjvLcft5r70qq/n3OmR2uX
         WgNonFORn+zOvD6akMFiv4tsOI0RsyFsaWZjJBz8v6XcTKPPRrPNCgHoEXtACw50oNSM
         DGjYYk8DjXkomsX1em2T1Zm/ZzZcX8dSWmlZ3pmYwS3oz3eyi57SLmcZVRx3NpYh5Scj
         ih7g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=95PxTX/AScsh9DL2DKBv+2CkDUI8LfYzZCt4PKkOTo4=;
        b=i8EDganN/Iwy4/1iFKtu0SUODem722cToCzt+MDxPjQFruEOEEsfDy8weczoLGXcmU
         Wb0qEjLlMeEBKUCldfPv589gJx4OFTr8ampuGQcSEFY4HzC3oRIz6gWENgGU8Qbkjo8x
         l83TB80uAGtM4to1rJPN72xL0plwFvFs2y2yAOs/hCYBHuO2KJZ3cmKq8AdTGGDKdLrg
         9/5t+LwWBVFmmgZBQh+82xxIETb8SSv1yE2Aimd0K9Vwss3Ny5c677SRUoBac9zj/Vj2
         eQ44FtkSBd2zQ9ZuxlAg35iXOnvpS7inqDAGJX1Z3b2rotRGSM55Hkifl24KK1kZvj08
         AfTw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.24 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=95PxTX/AScsh9DL2DKBv+2CkDUI8LfYzZCt4PKkOTo4=;
        b=ULgxzMPkAAkio5zCkuezbQal6vDx/X/ZThlK+mkM7Sr/BmokGqhizmSgEwM+VXkqMa
         wuzc89ZKnFMCNM14lvbFMvK26kCipyrpRPEBigRt6YUgyVhn0Og8sTj2Z3HTASXkWuwh
         lZoyJum4eaAIThB0/Y/uIlgYhPKmOKkZ81fN/SD1jWOqvw3nRoW8q2f1ZV5E19ZAtKiD
         mMlKVB1t6yLoyMGyx7DcrgsO/TSJVSa+zrjo9ouUGS50UqGamgtKaGTEEbDgn6Fmt3YI
         KH0rQLOKwGAdY5S+lWcho6Kmq2bQ0kyLueo30eirZLMkUn8980GLRPoKmcaoarYD7ZZ4
         ZzNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=95PxTX/AScsh9DL2DKBv+2CkDUI8LfYzZCt4PKkOTo4=;
        b=jeY57onfW3fVO3bRTJbCgwSQyyCiAsq8Ejm5tRU9Q4wQtjidlzE5UUEuWZjcAdTi8D
         92Z//sErCKEbJjl1mOU9y2jwLmJ0bfMCcnyiamI1J2+7w5/ClppOCXphe7Ij42pi6dAm
         4WZKD3KyXV8PIsS5CsEd3HBmZGmvnUwVzCgQ8v7/sDUDP4ZH8j09XXdkfY9fUGDpCpSW
         36j95r60WwfbJ7Kdha5Rz5OnfMTK7zsLM0bh+ZX22NVq4DPrtFkNNnNyg1vH/RyHQqZW
         SlPjNbiFwT9zVINKaJ04UIETPZbfhc+NjfbR3GLuyrjp3DfJmG+ud8izyVk17xNNAWgb
         3ovw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVUUERL9iYKFaakJKnsJ42+oqOaaNrF45ISOXkJAp75JLqUuNrN
	GVJElKxPZE42hij1SfA5fn4=
X-Google-Smtp-Source: APXvYqwOITVI86JdrZAX12tLaQgadwVLRJUC1nCLkhApAYi3XOgG4ISyH1ExQPE8S4zA9Eb62z/bGQ==
X-Received: by 2002:a17:902:7685:: with SMTP id m5mr14996761pll.218.1567867095637;
        Sat, 07 Sep 2019 07:38:15 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:8e86:: with SMTP id bg6ls1894656plb.5.gmail; Sat, 07
 Sep 2019 07:38:15 -0700 (PDT)
X-Received: by 2002:a17:90b:f0a:: with SMTP id br10mr5757067pjb.93.1567867095203;
        Sat, 07 Sep 2019 07:38:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567867095; cv=none;
        d=google.com; s=arc-20160816;
        b=E4FgELfJUlJtBM4OvL/wOfd6m3/v3FHaRUnTDtkQ41jNTA44hFAKYNLeVXZqugPcps
         G+xpt6TzSPz537DJA8xMAFRAbuCvbrpwU5nDT2fz+tQST5W9k5NY0VAebV1uQeqhXUEF
         qdxL5uP+jqKBwuvM79UmgsJQ9Jhw6I2LGh+zJ7E13aaJEa0YxaAoAXVP6hMpWR4KhnYH
         h9xxB0CUHjQ6C0RIF6zZl7KgyAXJGQtBjXzY52AM9W3OMABS5xA+EeLTyPVNOI3BeiY4
         H0pT3R2hvb8qtpfDXDDqyiEyeO1nWU/Ao8yaNMT4uEHXyECgEsQxi2fBWDVwAp1XI07K
         vGIA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date;
        bh=072ne+uSMG5v0VirztPShIcAaUbRsjpcdBObJZlXHwQ=;
        b=PxwIz7JxJD4A1wQva/K5ozRkKUfd0fXJduSnF7HQUwMcaipJ6JsIgv0tjvvQS4xgfD
         WT8g4VMfv7Szw0odsqxBbIjcLvcFwjAKuv0IXTKbXatpvGUPiXH869NwaaImBjVACumR
         yM4kg1lzEerbgDL0iq0P1fVkU1dTPXhmgjA2njrHtCqgyXX59gMYgLEVeK+TYn19JnCl
         lGBax/RIuerSsI1hvT55M/U0nA05ra+OXaq0936adiNSPlvZUTVJxqxh+b1C0iSEBuYf
         FsNWjD+kcW/sBzlrUUaH4nG4F0Z58zzmpGbnet6lELcYbxYzBBqOM1rlsoZd4cLpbxMx
         t2ig==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.24 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga09.intel.com (mga09.intel.com. [134.134.136.24])
        by gmr-mx.google.com with ESMTPS id 85si424863pgb.2.2019.09.07.07.38.15
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 07 Sep 2019 07:38:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.24 as permitted sender) client-ip=134.134.136.24;
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
  by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 07 Sep 2019 07:38:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,477,1559545200"; 
   d="gz'50?scan'50,208,50";a="208523154"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
  by fmsmga004.fm.intel.com with ESMTP; 07 Sep 2019 07:38:12 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
	(envelope-from <lkp@intel.com>)
	id 1i6bqu-000GPC-1X; Sat, 07 Sep 2019 22:38:12 +0800
Date: Sat, 7 Sep 2019 22:38:08 +0800
From: kbuild test robot <lkp@intel.com>
To: kbuild@01.org
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH] net: stmmac: socfpga: re-use the `interface` parameter
 from platform data
Message-ID: <201909072211.APqRUnNQ%lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="j2dzkihafer6kv27"
Content-Disposition: inline
X-Patchwork-Hint: ignore
User-Agent: NeoMutt/20170113 (1.7.2)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 134.134.136.24 as permitted
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


--j2dzkihafer6kv27
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

CC: kbuild-all@01.org
In-Reply-To: <20190906123054.5514-1-alexandru.ardelean@analog.com>
References: <20190906123054.5514-1-alexandru.ardelean@analog.com>
TO: Alexandru Ardelean <alexandru.ardelean@analog.com>
CC: netdev@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com, linux=
-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, peppe.cavall=
aro@st.com, alexandre.torgue@st.com, joabreu@synopsys.com, mcoquelin.stm32@=
gmail.com, davem@davemloft.net, Alexandru Ardelean <alexandru.ardelean@anal=
og.com>
CC: peppe.cavallaro@st.com, alexandre.torgue@st.com, joabreu@synopsys.com, =
mcoquelin.stm32@gmail.com, davem@davemloft.net, Alexandru Ardelean <alexand=
ru.ardelean@analog.com>

Hi Alexandru,

I love your patch! Yet something to improve:

[auto build test ERROR on linus/master]
[cannot apply to v5.3-rc7 next-20190904]
[if your patch is applied to the wrong git tree, please drop us a note to h=
elp improve the system]

url:    https://github.com/0day-ci/linux/commits/Alexandru-Ardelean/net-stm=
mac-socfpga-re-use-the-interface-parameter-from-platform-data/20190907-1906=
27
config: arm64-defconfig (attached as .config)
compiler: clang version 10.0.0 (git://gitmirror/llvm_project 45a3fd206fb06f=
77a08968c99a8172cbf2ccdd0f)
reproduce:
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/=
make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # save the attached .config to linux build tree
        make.cross ARCH=3Darm64=20

If you fix the issue, kindly add following tag
Reported-by: kbuild test robot <lkp@intel.com>

All error/warnings (new ones prefixed by >>):

>> drivers/net/ethernet/stmicro/stmmac/dwmac-socfpga.c:264:44: error: use o=
f undeclared identifier 'phymode'; did you mean 'phy_modes'?
                   dev_err(dwmac->dev, "bad phy mode %d\n", phymode);
                                                            ^~~~~~~
                                                            phy_modes
   include/linux/device.h:1499:32: note: expanded from macro 'dev_err'
           _dev_err(dev, dev_fmt(fmt), ##__VA_ARGS__)
                                         ^
   include/linux/phy.h:131:27: note: 'phy_modes' declared here
   static inline const char *phy_modes(phy_interface_t interface)
                             ^
   drivers/net/ethernet/stmicro/stmmac/dwmac-socfpga.c:284:6: error: use of=
 undeclared identifier 'phymode'; did you mean 'phy_modes'?
               phymode =3D=3D PHY_INTERFACE_MODE_MII ||
               ^~~~~~~
               phy_modes
   include/linux/phy.h:131:27: note: 'phy_modes' declared here
   static inline const char *phy_modes(phy_interface_t interface)
                             ^
>> drivers/net/ethernet/stmicro/stmmac/dwmac-socfpga.c:284:14: warning: com=
parison between pointer and integer ('const char *(*)(phy_interface_t)' and=
 'int') [-Wpointer-integer-compare]
               phymode =3D=3D PHY_INTERFACE_MODE_MII ||
               ~~~~~~~ ^  ~~~~~~~~~~~~~~~~~~~~~~
   drivers/net/ethernet/stmicro/stmmac/dwmac-socfpga.c:285:6: error: use of=
 undeclared identifier 'phymode'; did you mean 'phy_modes'?
               phymode =3D=3D PHY_INTERFACE_MODE_GMII ||
               ^~~~~~~
               phy_modes
   include/linux/phy.h:131:27: note: 'phy_modes' declared here
   static inline const char *phy_modes(phy_interface_t interface)
                             ^
   drivers/net/ethernet/stmicro/stmmac/dwmac-socfpga.c:285:14: warning: com=
parison between pointer and integer ('const char *(*)(phy_interface_t)' and=
 'int') [-Wpointer-integer-compare]
               phymode =3D=3D PHY_INTERFACE_MODE_GMII ||
               ~~~~~~~ ^  ~~~~~~~~~~~~~~~~~~~~~~~
   drivers/net/ethernet/stmicro/stmmac/dwmac-socfpga.c:286:6: error: use of=
 undeclared identifier 'phymode'; did you mean 'phy_modes'?
               phymode =3D=3D PHY_INTERFACE_MODE_SGMII) {
               ^~~~~~~
               phy_modes
   include/linux/phy.h:131:27: note: 'phy_modes' declared here
   static inline const char *phy_modes(phy_interface_t interface)
                             ^
   drivers/net/ethernet/stmicro/stmmac/dwmac-socfpga.c:286:14: warning: com=
parison between pointer and integer ('const char *(*)(phy_interface_t)' and=
 'int') [-Wpointer-integer-compare]
               phymode =3D=3D PHY_INTERFACE_MODE_SGMII) {
               ~~~~~~~ ^  ~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/net/ethernet/stmicro/stmmac/dwmac-socfpga.c:304:6: error: use of=
 undeclared identifier 'phymode'; did you mean 'phy_modes'?
           if (phymode =3D=3D PHY_INTERFACE_MODE_SGMII) {
               ^~~~~~~
               phy_modes
   include/linux/phy.h:131:27: note: 'phy_modes' declared here
   static inline const char *phy_modes(phy_interface_t interface)
                             ^
   drivers/net/ethernet/stmicro/stmmac/dwmac-socfpga.c:304:14: warning: com=
parison between pointer and integer ('const char *(*)(phy_interface_t)' and=
 'int') [-Wpointer-integer-compare]
           if (phymode =3D=3D PHY_INTERFACE_MODE_SGMII) {
               ~~~~~~~ ^  ~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/net/ethernet/stmicro/stmmac/dwmac-socfpga.c:340:6: error: use of=
 undeclared identifier 'phymode'; did you mean 'phy_modes'?
               phymode =3D=3D PHY_INTERFACE_MODE_MII ||
               ^~~~~~~
               phy_modes
   include/linux/phy.h:131:27: note: 'phy_modes' declared here
   static inline const char *phy_modes(phy_interface_t interface)
                             ^
   drivers/net/ethernet/stmicro/stmmac/dwmac-socfpga.c:340:14: warning: com=
parison between pointer and integer ('const char *(*)(phy_interface_t)' and=
 'int') [-Wpointer-integer-compare]
               phymode =3D=3D PHY_INTERFACE_MODE_MII ||
               ~~~~~~~ ^  ~~~~~~~~~~~~~~~~~~~~~~
   drivers/net/ethernet/stmicro/stmmac/dwmac-socfpga.c:341:6: error: use of=
 undeclared identifier 'phymode'; did you mean 'phy_modes'?
               phymode =3D=3D PHY_INTERFACE_MODE_GMII ||
               ^~~~~~~
               phy_modes
   include/linux/phy.h:131:27: note: 'phy_modes' declared here
   static inline const char *phy_modes(phy_interface_t interface)
                             ^
   drivers/net/ethernet/stmicro/stmmac/dwmac-socfpga.c:341:14: warning: com=
parison between pointer and integer ('const char *(*)(phy_interface_t)' and=
 'int') [-Wpointer-integer-compare]
               phymode =3D=3D PHY_INTERFACE_MODE_GMII ||
               ~~~~~~~ ^  ~~~~~~~~~~~~~~~~~~~~~~~
   drivers/net/ethernet/stmicro/stmmac/dwmac-socfpga.c:342:6: error: use of=
 undeclared identifier 'phymode'; did you mean 'phy_modes'?
               phymode =3D=3D PHY_INTERFACE_MODE_SGMII) {
               ^~~~~~~
               phy_modes
   include/linux/phy.h:131:27: note: 'phy_modes' declared here
   static inline const char *phy_modes(phy_interface_t interface)
                             ^
   drivers/net/ethernet/stmicro/stmmac/dwmac-socfpga.c:342:14: warning: com=
parison between pointer and integer ('const char *(*)(phy_interface_t)' and=
 'int') [-Wpointer-integer-compare]
               phymode =3D=3D PHY_INTERFACE_MODE_SGMII) {
               ~~~~~~~ ^  ~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/net/ethernet/stmicro/stmmac/dwmac-socfpga.c:360:6: error: use of=
 undeclared identifier 'phymode'; did you mean 'phy_modes'?
           if (phymode =3D=3D PHY_INTERFACE_MODE_SGMII) {
               ^~~~~~~
               phy_modes
   include/linux/phy.h:131:27: note: 'phy_modes' declared here
   static inline const char *phy_modes(phy_interface_t interface)
                             ^
   drivers/net/ethernet/stmicro/stmmac/dwmac-socfpga.c:360:14: warning: com=
parison between pointer and integer ('const char *(*)(phy_interface_t)' and=
 'int') [-Wpointer-integer-compare]
           if (phymode =3D=3D PHY_INTERFACE_MODE_SGMII) {
               ~~~~~~~ ^  ~~~~~~~~~~~~~~~~~~~~~~~~
   8 warnings and 9 errors generated.

vim +264 drivers/net/ethernet/stmicro/stmmac/dwmac-socfpga.c

40ae25505fe834 Dinh Nguyen        2019-06-05  255 =20
40ae25505fe834 Dinh Nguyen        2019-06-05  256  static int socfpga_gen5_=
set_phy_mode(struct socfpga_dwmac *dwmac)
40ae25505fe834 Dinh Nguyen        2019-06-05  257  {
40ae25505fe834 Dinh Nguyen        2019-06-05  258  	struct regmap *sys_mgr_=
base_addr =3D dwmac->sys_mgr_base_addr;
40ae25505fe834 Dinh Nguyen        2019-06-05  259  	u32 reg_offset =3D dwma=
c->reg_offset;
40ae25505fe834 Dinh Nguyen        2019-06-05  260  	u32 reg_shift =3D dwmac=
->reg_shift;
40ae25505fe834 Dinh Nguyen        2019-06-05  261  	u32 ctrl, val, module;
40ae25505fe834 Dinh Nguyen        2019-06-05  262 =20
6169afbe4a340b Alexandru Ardelean 2019-09-06  263  	if (socfpga_set_phy_mod=
e_common(dwmac, &val)) {
801d233b7302ee Dinh Nguyen        2014-03-26 @264  		dev_err(dwmac->dev, "b=
ad phy mode %d\n", phymode);
801d233b7302ee Dinh Nguyen        2014-03-26  265  		return -EINVAL;
801d233b7302ee Dinh Nguyen        2014-03-26  266  	}
801d233b7302ee Dinh Nguyen        2014-03-26  267 =20
b4834c86e11baf Ley Foon Tan       2014-08-20  268  	/* Overwrite val to GMI=
I if splitter core is enabled. The phymode here
b4834c86e11baf Ley Foon Tan       2014-08-20  269  	 * is the actual phy mo=
de on phy hardware, but phy interface from
b4834c86e11baf Ley Foon Tan       2014-08-20  270  	 * EMAC core is GMII.
b4834c86e11baf Ley Foon Tan       2014-08-20  271  	 */
b4834c86e11baf Ley Foon Tan       2014-08-20  272  	if (dwmac->splitter_bas=
e)
b4834c86e11baf Ley Foon Tan       2014-08-20  273  		val =3D SYSMGR_EMACGRP=
_CTRL_PHYSEL_ENUM_GMII_MII;
b4834c86e11baf Ley Foon Tan       2014-08-20  274 =20
70cb136f773083 Joachim Eastwood   2016-05-01  275  	/* Assert reset to the =
enet controller before changing the phy mode */
bc8a2d9bcbf1ca Dinh Nguyen        2018-06-19  276  	reset_control_assert(dw=
mac->stmmac_ocp_rst);
70cb136f773083 Joachim Eastwood   2016-05-01  277  	reset_control_assert(dw=
mac->stmmac_rst);
70cb136f773083 Joachim Eastwood   2016-05-01  278 =20
801d233b7302ee Dinh Nguyen        2014-03-26  279  	regmap_read(sys_mgr_bas=
e_addr, reg_offset, &ctrl);
801d233b7302ee Dinh Nguyen        2014-03-26  280  	ctrl &=3D ~(SYSMGR_EMAC=
GRP_CTRL_PHYSEL_MASK << reg_shift);
801d233b7302ee Dinh Nguyen        2014-03-26  281  	ctrl |=3D val << reg_sh=
ift;
801d233b7302ee Dinh Nguyen        2014-03-26  282 =20
013dae5dbc07aa Stephan Gatzka     2017-08-22  283  	if (dwmac->f2h_ptp_ref_=
clk ||
013dae5dbc07aa Stephan Gatzka     2017-08-22 @284  	    phymode =3D=3D PHY_=
INTERFACE_MODE_MII ||
013dae5dbc07aa Stephan Gatzka     2017-08-22  285  	    phymode =3D=3D PHY_=
INTERFACE_MODE_GMII ||
013dae5dbc07aa Stephan Gatzka     2017-08-22  286  	    phymode =3D=3D PHY_=
INTERFACE_MODE_SGMII) {
43569814fa35b2 Phil Reid          2015-12-14  287  		ctrl |=3D SYSMGR_EMACG=
RP_CTRL_PTP_REF_CLK_MASK << (reg_shift / 2);
734e00fa02eff5 Phil Reid          2016-04-07  288  		regmap_read(sys_mgr_ba=
se_addr, SYSMGR_FPGAGRP_MODULE_REG,
734e00fa02eff5 Phil Reid          2016-04-07  289  			    &module);
734e00fa02eff5 Phil Reid          2016-04-07  290  		module |=3D (SYSMGR_FP=
GAGRP_MODULE_EMAC << (reg_shift / 2));
734e00fa02eff5 Phil Reid          2016-04-07  291  		regmap_write(sys_mgr_b=
ase_addr, SYSMGR_FPGAGRP_MODULE_REG,
734e00fa02eff5 Phil Reid          2016-04-07  292  			     module);
734e00fa02eff5 Phil Reid          2016-04-07  293  	} else {
43569814fa35b2 Phil Reid          2015-12-14  294  		ctrl &=3D ~(SYSMGR_EMA=
CGRP_CTRL_PTP_REF_CLK_MASK << (reg_shift / 2));
734e00fa02eff5 Phil Reid          2016-04-07  295  	}
43569814fa35b2 Phil Reid          2015-12-14  296 =20
801d233b7302ee Dinh Nguyen        2014-03-26  297  	regmap_write(sys_mgr_ba=
se_addr, reg_offset, ctrl);
734e00fa02eff5 Phil Reid          2016-04-07  298 =20
70cb136f773083 Joachim Eastwood   2016-05-01  299  	/* Deassert reset for t=
he phy configuration to be sampled by
70cb136f773083 Joachim Eastwood   2016-05-01  300  	 * the enet controller,=
 and operation to start in requested mode
70cb136f773083 Joachim Eastwood   2016-05-01  301  	 */
bc8a2d9bcbf1ca Dinh Nguyen        2018-06-19  302  	reset_control_deassert(=
dwmac->stmmac_ocp_rst);
70cb136f773083 Joachim Eastwood   2016-05-01  303  	reset_control_deassert(=
dwmac->stmmac_rst);
fb3bbdb859891e Tien Hock Loh      2016-07-07  304  	if (phymode =3D=3D PHY_=
INTERFACE_MODE_SGMII) {
fb3bbdb859891e Tien Hock Loh      2016-07-07  305  		if (tse_pcs_init(dwmac=
->pcs.tse_pcs_base, &dwmac->pcs) !=3D 0) {
fb3bbdb859891e Tien Hock Loh      2016-07-07  306  			dev_err(dwmac->dev, "=
Unable to initialize TSE PCS");
fb3bbdb859891e Tien Hock Loh      2016-07-07  307  			return -EINVAL;
fb3bbdb859891e Tien Hock Loh      2016-07-07  308  		}
fb3bbdb859891e Tien Hock Loh      2016-07-07  309  	}
70cb136f773083 Joachim Eastwood   2016-05-01  310 =20
801d233b7302ee Dinh Nguyen        2014-03-26  311  	return 0;
801d233b7302ee Dinh Nguyen        2014-03-26  312  }
801d233b7302ee Dinh Nguyen        2014-03-26  313 =20

:::::: The code at line 264 was first introduced by commit
:::::: 801d233b7302eeab94750427a623c10c044cb0ca net: stmmac: Add SOCFPGA gl=
ue driver

:::::: TO: Dinh Nguyen <dinguyen@altera.com>
:::::: CC: David S. Miller <davem@davemloft.net>

---
0-DAY kernel test infrastructure                Open Source Technology Cent=
er
https://lists.01.org/pipermail/kbuild-all                   Intel Corporati=
on

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/201909072211.APqRUnNQ%25lkp%40intel.com.

--j2dzkihafer6kv27
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
aXA/S9XV6EzW4RvQUd8oSEH/C0BsArOiCgMA

--j2dzkihafer6kv27--
