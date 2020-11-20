Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBBU34D6QKGQE77MDY6A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x339.google.com (mail-ot1-x339.google.com [IPv6:2607:f8b0:4864:20::339])
	by mail.lfdr.de (Postfix) with ESMTPS id B44342BB3E9
	for <lists+clang-built-linux@lfdr.de>; Fri, 20 Nov 2020 19:40:07 +0100 (CET)
Received: by mail-ot1-x339.google.com with SMTP id r13sf859919oti.19
        for <lists+clang-built-linux@lfdr.de>; Fri, 20 Nov 2020 10:40:07 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605897606; cv=pass;
        d=google.com; s=arc-20160816;
        b=GVPy09UD3UpQHBxJ5yUHdgb/LZUdNpypeAYcBj6fOEf5x+nCGVQ0FuIZKu5CLA7lEr
         Lqbrk3IWvZMdFhcdZpZrwMDAnFUtGQi9wFS7IG2Ed9AWet1kuADfCkDrRXI8NydsbKGL
         AdtQAfITBkSm3vjUqDuv2mIJ9Vz8renpBQ0c1zEEEYk+d9uvvIq6XF4enK4ETpiiQFV2
         2UGOuajrKucxGP0UokDyUkH4yXC7a0xVfCpXJ3x1+v9JY2Zz6yfy+WpU/1ah9cNzBqEE
         raXecuApWpBFbypccyiqMew4Qw4oahs3xJWx1ih3YMVj31o320hCafpaSCl3Xk3ghKya
         Yw6w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=EDyS+WqUQc7vFhVb0/x8JoXTzjwbL+taaOigQMrF+iM=;
        b=QU1aQpyFg6C4SxI0SYBGYtMbiryoJ0gdXHk4ZRK0h1QtM2k/VeX1gxd2We2w6lplId
         znBiMQi3MlBylgytSOj6Epg1Pj/1dSReoE+qe+X/e7ZBZ0wrbd048Ynw7plx1VZGO3qj
         Wkd6Rw/VJGcTaJ0wbEsGG3W+Nn0LA17NhULskSWa+qQ7D71/j2mI8pjL0yemPLHpPCm+
         D4+8OHQanO6LqGc/NvwCrbvFqvhZmA7A7tuNiH7T2rPG6KRmmHY6S8Tz0XlM4CNCjzxX
         URA5OYSiHsjgL24NdIg1p2OhjjPRNq6luH/vGxZXZeBuziOxuBvfi71Ewqe0LNRLMeIU
         C+Pw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.31 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=EDyS+WqUQc7vFhVb0/x8JoXTzjwbL+taaOigQMrF+iM=;
        b=ZrIRKkeWwjpXy/Lt9K+ju1Ajc63VlyOVtNHkJIUINUvhn7JrK4ckwJwCaRstIkcJGK
         1BoVn2rkvvYidGULaziphXBn5X8BD9HAleMSn+3dOtvWCXAlKUlzULM6PMIW+U5mQz+F
         KGuyFPXMc80DJIbppZ6OQ37FTZBu3UE2tsWUu0keaLZdyiaHwUa1BKafmmhoJaIZ2jTU
         6StLK4OhZ4WTEFaGOayBKZ/yV7W+zuU1pf3NGNfMghUEPjHrCmWeIyXVoM2eywovxDtw
         FuhnTkQt5T9jQQZA8UvJN2kAjx9Aappt+O0zyy4/fihYx51U1CffRkORTaXpSM+e9Gx0
         LQyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=EDyS+WqUQc7vFhVb0/x8JoXTzjwbL+taaOigQMrF+iM=;
        b=SlQYP38P9U4nJRoELeYgIZCCtmDRMivglRptWm7PNtTzTwHTUrBaGDdcW6YRCnWcTk
         lk5mdE9o7fLr5dMTW24RGjItR+0RwqNaiUp3jUYnpIqS7vXDgupjh3yYfGfVF5tW6jzn
         Wh8ev86Zh70yoBfNWV3G96LH9C1vCnBt9cs6ZZTfW94gizfXKO9plX/+e6UEXBBOUUVj
         wxBgP0q7nakWnKrV4nrkJZqlcydbswmKj8MQqbBq7lCM2noTKXapii6whAmfbhFy2whr
         nLWRVWM9Ya/JmW0xSgkuudjhnjo0+4QqXxTL99euq39qpMNJq0NITTsAPSAcFs1PzGcx
         rqUQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532chb2UREJfStP9SUyh5aCiaKddi25mzhphnPxD0HiJvYZp2ML5
	Gj0ldZtH/SMkkqBZRvb3ccM=
X-Google-Smtp-Source: ABdhPJzWb8hR2fEmLHmMKl/5gkiG9jfX+ngcsmzvMk9I3IHZp+vWr3t1Kh6m2CguRIcVfgqbyrPncQ==
X-Received: by 2002:a05:6830:11cc:: with SMTP id v12mr15275269otq.363.1605897606571;
        Fri, 20 Nov 2020 10:40:06 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:4fd0:: with SMTP id d199ls1784643oib.5.gmail; Fri, 20
 Nov 2020 10:40:06 -0800 (PST)
X-Received: by 2002:aca:f346:: with SMTP id r67mr7327076oih.21.1605897605967;
        Fri, 20 Nov 2020 10:40:05 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605897605; cv=none;
        d=google.com; s=arc-20160816;
        b=T5dw9oWQzrnd3lyKa1gp8+pvaysTKXuzt0v1lkYq8Ah9ZjQZKFg8Kqk/wsutr3AZy4
         zdEouVx9ix05OwAvqr9T3sKvo2utJtjwFjNLbfzHJV2dzCnEJrg47XsAwadTEl73mqeW
         6LkiYUrXMYBYnTyZ6bNU0How3+zipOuALoQgNyjFJGXqH9ailSLdye0soEBKdzYSesYa
         5u31P4XR+v6ERsuQDuDSFkm8XQy3B5vBDFKEMEA1yIWziiH2tqXeLDZcg5wZ0RY/4NSz
         YMMnkl+yHrvQgE7V4Igk0Vju7nd581OxImS5710Nw4bAmNpwf/jKAYJgyT0p1BLiS57X
         tM+g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=hfaDWIDsKDZvAjx1LhTJg0jVotbbc8GoJ6GtNtcWfdM=;
        b=cJExxAaHZ+kO0slHG9gHm3WJ/fhTCBnc5i7Lp/FDzluAy1So3yD/inO8rtA4XCzDuv
         nWDiwDYRD/7zDFhbTrolKbhq5jbgLG8LauIRt0+jz4f9224Gm8OSCNOGMIjpRP4KufR9
         otG+cLfi+6f12j4axvPpLpsN/Mf6/hOWMIK9OrCv3lKvYL0ENf9bySDbdYp4zAAMAIaY
         KnlEHiKJhCLU6GeshZ30f97w4oP0jNEyVGzhCdg6TjjKvK+PGlgzHgU2lCcCWTpx8Q3W
         pLNYAAfyRCoy9F9Cf0naOObqoTG9/+/WWu11h4c8hMNZgTcAJ1ng/6JC/kgA8VEruJ64
         DYfg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.31 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga06.intel.com (mga06.intel.com. [134.134.136.31])
        by gmr-mx.google.com with ESMTPS id o23si207327oic.4.2020.11.20.10.40.05
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 20 Nov 2020 10:40:05 -0800 (PST)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.31 as permitted sender) client-ip=134.134.136.31;
IronPort-SDR: Aq6BTEsHZcVKMzFMCfea3dZk0HJQ0qJhjXUdhT9PExvkUunVo3tNkMS3zc3HR393ZRw4b0yg/a
 nyID/qCWsnHA==
X-IronPort-AV: E=McAfee;i="6000,8403,9811"; a="233139345"
X-IronPort-AV: E=Sophos;i="5.78,357,1599548400"; 
   d="gz'50?scan'50,208,50";a="233139345"
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
  by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 20 Nov 2020 10:40:04 -0800
IronPort-SDR: n1E7FGV7vPu0fR89QVJjDaLowWrt1BeQKcCYDrapFRDAFduXayvVAS2MgBJ1P8mHLn6HGN1T0B
 b2z/Y4SY+5eQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,357,1599548400"; 
   d="gz'50?scan'50,208,50";a="357779148"
Received: from lkp-server01.sh.intel.com (HELO 00bc34107a07) ([10.239.97.150])
  by orsmga008.jf.intel.com with ESMTP; 20 Nov 2020 10:40:00 -0800
Received: from kbuild by 00bc34107a07 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1kgBKB-00003t-VJ; Fri, 20 Nov 2020 18:39:59 +0000
Date: Sat, 21 Nov 2020 02:39:22 +0800
From: kernel test robot <lkp@intel.com>
To: Steen Hegelund <steen.hegelund@microchip.com>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	Vinod Koul <vkoul@kernel.org>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	Steen Hegelund <steen.hegelund@microchip.com>,
	Alexandre Belloni <alexandre.belloni@bootlin.com>,
	Lars Povlsen <lars.povlsen@microchip.com>,
	Bjarni Jonasson <bjarni.jonasson@microchip.com>,
	Microsemi List <microsemi@lists.bootlin.com>,
	Microchip UNG Driver List <UNGLinuxDriver@microchip.com>,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v4 2/4] phy: Add ethernet serdes configuration option
Message-ID: <202011210218.eUYhiOps-lkp@intel.com>
References: <20201120150359.2041940-3-steen.hegelund@microchip.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="X1bOJ3K7DJ5YkBrT"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20201120150359.2041940-3-steen.hegelund@microchip.com>
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


--X1bOJ3K7DJ5YkBrT
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Steen,

I love your patch! Yet something to improve:

[auto build test ERROR on robh/dt/next]
[also build test ERROR on linus/master robh/for-next linux/master 3cea11cd5=
e3b00d91caf0b4730194039b45c5891 v5.10-rc4 next-20201120]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch]

url:    https://github.com/0day-ci/linux/commits/Steen-Hegelund/Adding-the-=
Sparx5-Serdes-driver/20201120-230836
base:   https://git.kernel.org/pub/scm/linux/kernel/git/robh/linux.git dt/n=
ext
config: powerpc64-randconfig-r015-20201120 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project 3ded92=
7cf80ac519f9f9c4664fef08787f7c537d)
reproduce (this is a W=3D1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/=
make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install powerpc64 cross compiling tool for clang build
        # apt-get install binutils-powerpc64-linux-gnu
        # https://github.com/0day-ci/linux/commit/e184a313fca4f75b4f4f8abca=
27c8c2f1fb29540
        git remote add linux-review https://github.com/0day-ci/linux
        git fetch --no-tags linux-review Steen-Hegelund/Adding-the-Sparx5-S=
erdes-driver/20201120-230836
        git checkout e184a313fca4f75b4f4f8abca27c8c2f1fb29540
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=3D$HOME/0day COMPILER=3Dclang make.cross ARCH=
=3Dpowerpc64=20

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

   drivers/phy/freescale/phy-fsl-imx8-mipi-dphy.c:110:12: error: conflictin=
g types for 'phy_write'
   static int phy_write(struct phy *phy, u32 value, unsigned int reg)
              ^
   include/linux/phy.h:987:19: note: previous definition is here
   static inline int phy_write(struct phy_device *phydev, u32 regnum, u16 v=
al)
                     ^
>> drivers/phy/freescale/phy-fsl-imx8-mipi-dphy.c:292:12: error: incompatib=
le pointer types passing 'struct phy *' to parameter of type 'struct phy_de=
vice *' [-Werror,-Wincompatible-pointer-types]
           phy_write(phy, priv->cfg.m_prg_hs_prepare, DPHY_M_PRG_HS_PREPARE=
);
                     ^~~
   include/linux/phy.h:987:48: note: passing argument to parameter 'phydev'=
 here
   static inline int phy_write(struct phy_device *phydev, u32 regnum, u16 v=
al)
                                                  ^
   drivers/phy/freescale/phy-fsl-imx8-mipi-dphy.c:293:12: error: incompatib=
le pointer types passing 'struct phy *' to parameter of type 'struct phy_de=
vice *' [-Werror,-Wincompatible-pointer-types]
           phy_write(phy, priv->cfg.mc_prg_hs_prepare, DPHY_MC_PRG_HS_PREPA=
RE);
                     ^~~
   include/linux/phy.h:987:48: note: passing argument to parameter 'phydev'=
 here
   static inline int phy_write(struct phy_device *phydev, u32 regnum, u16 v=
al)
                                                  ^
   drivers/phy/freescale/phy-fsl-imx8-mipi-dphy.c:294:12: error: incompatib=
le pointer types passing 'struct phy *' to parameter of type 'struct phy_de=
vice *' [-Werror,-Wincompatible-pointer-types]
           phy_write(phy, priv->cfg.m_prg_hs_zero, DPHY_M_PRG_HS_ZERO);
                     ^~~
   include/linux/phy.h:987:48: note: passing argument to parameter 'phydev'=
 here
   static inline int phy_write(struct phy_device *phydev, u32 regnum, u16 v=
al)
                                                  ^
   drivers/phy/freescale/phy-fsl-imx8-mipi-dphy.c:295:12: error: incompatib=
le pointer types passing 'struct phy *' to parameter of type 'struct phy_de=
vice *' [-Werror,-Wincompatible-pointer-types]
           phy_write(phy, priv->cfg.mc_prg_hs_zero, DPHY_MC_PRG_HS_ZERO);
                     ^~~
   include/linux/phy.h:987:48: note: passing argument to parameter 'phydev'=
 here
   static inline int phy_write(struct phy_device *phydev, u32 regnum, u16 v=
al)
                                                  ^
   drivers/phy/freescale/phy-fsl-imx8-mipi-dphy.c:296:12: error: incompatib=
le pointer types passing 'struct phy *' to parameter of type 'struct phy_de=
vice *' [-Werror,-Wincompatible-pointer-types]
           phy_write(phy, priv->cfg.m_prg_hs_trail, DPHY_M_PRG_HS_TRAIL);
                     ^~~
   include/linux/phy.h:987:48: note: passing argument to parameter 'phydev'=
 here
   static inline int phy_write(struct phy_device *phydev, u32 regnum, u16 v=
al)
                                                  ^
   drivers/phy/freescale/phy-fsl-imx8-mipi-dphy.c:297:12: error: incompatib=
le pointer types passing 'struct phy *' to parameter of type 'struct phy_de=
vice *' [-Werror,-Wincompatible-pointer-types]
           phy_write(phy, priv->cfg.mc_prg_hs_trail, DPHY_MC_PRG_HS_TRAIL);
                     ^~~
   include/linux/phy.h:987:48: note: passing argument to parameter 'phydev'=
 here
   static inline int phy_write(struct phy_device *phydev, u32 regnum, u16 v=
al)
                                                  ^
   drivers/phy/freescale/phy-fsl-imx8-mipi-dphy.c:298:12: error: incompatib=
le pointer types passing 'struct phy *' to parameter of type 'struct phy_de=
vice *' [-Werror,-Wincompatible-pointer-types]
           phy_write(phy, priv->cfg.rxhs_settle, priv->devdata->reg_rxhs_se=
ttle);
                     ^~~
   include/linux/phy.h:987:48: note: passing argument to parameter 'phydev'=
 here
   static inline int phy_write(struct phy_device *phydev, u32 regnum, u16 v=
al)
                                                  ^
   drivers/phy/freescale/phy-fsl-imx8-mipi-dphy.c:314:12: error: incompatib=
le pointer types passing 'struct phy *' to parameter of type 'struct phy_de=
vice *' [-Werror,-Wincompatible-pointer-types]
           phy_write(phy, CM(priv->cfg.cm), DPHY_CM);
                     ^~~
   include/linux/phy.h:987:48: note: passing argument to parameter 'phydev'=
 here
   static inline int phy_write(struct phy_device *phydev, u32 regnum, u16 v=
al)
                                                  ^
   drivers/phy/freescale/phy-fsl-imx8-mipi-dphy.c:315:12: error: incompatib=
le pointer types passing 'struct phy *' to parameter of type 'struct phy_de=
vice *' [-Werror,-Wincompatible-pointer-types]
           phy_write(phy, CN(priv->cfg.cn), DPHY_CN);
                     ^~~
   include/linux/phy.h:987:48: note: passing argument to parameter 'phydev'=
 here
   static inline int phy_write(struct phy_device *phydev, u32 regnum, u16 v=
al)
                                                  ^
   drivers/phy/freescale/phy-fsl-imx8-mipi-dphy.c:316:12: error: incompatib=
le pointer types passing 'struct phy *' to parameter of type 'struct phy_de=
vice *' [-Werror,-Wincompatible-pointer-types]
           phy_write(phy, CO(priv->cfg.co), DPHY_CO);
                     ^~~
   include/linux/phy.h:987:48: note: passing argument to parameter 'phydev'=
 here
   static inline int phy_write(struct phy_device *phydev, u32 regnum, u16 v=
al)
                                                  ^
   drivers/phy/freescale/phy-fsl-imx8-mipi-dphy.c:333:12: error: incompatib=
le pointer types passing 'struct phy *' to parameter of type 'struct phy_de=
vice *' [-Werror,-Wincompatible-pointer-types]
           phy_write(phy, 0x00, DPHY_LOCK_BYP);
                     ^~~
   include/linux/phy.h:987:48: note: passing argument to parameter 'phydev'=
 here
   static inline int phy_write(struct phy_device *phydev, u32 regnum, u16 v=
al)
                                                  ^
   drivers/phy/freescale/phy-fsl-imx8-mipi-dphy.c:334:12: error: incompatib=
le pointer types passing 'struct phy *' to parameter of type 'struct phy_de=
vice *' [-Werror,-Wincompatible-pointer-types]
           phy_write(phy, 0x01, priv->devdata->reg_tx_rcal);
                     ^~~
   include/linux/phy.h:987:48: note: passing argument to parameter 'phydev'=
 here
   static inline int phy_write(struct phy_device *phydev, u32 regnum, u16 v=
al)
                                                  ^
   drivers/phy/freescale/phy-fsl-imx8-mipi-dphy.c:335:12: error: incompatib=
le pointer types passing 'struct phy *' to parameter of type 'struct phy_de=
vice *' [-Werror,-Wincompatible-pointer-types]
           phy_write(phy, 0x00, priv->devdata->reg_auto_pd_en);
                     ^~~
   include/linux/phy.h:987:48: note: passing argument to parameter 'phydev'=
 here
   static inline int phy_write(struct phy_device *phydev, u32 regnum, u16 v=
al)
                                                  ^
   drivers/phy/freescale/phy-fsl-imx8-mipi-dphy.c:336:12: error: incompatib=
le pointer types passing 'struct phy *' to parameter of type 'struct phy_de=
vice *' [-Werror,-Wincompatible-pointer-types]
           phy_write(phy, 0x02, priv->devdata->reg_rxlprp);
                     ^~~
   include/linux/phy.h:987:48: note: passing argument to parameter 'phydev'=
 here
   static inline int phy_write(struct phy_device *phydev, u32 regnum, u16 v=
al)
                                                  ^
   drivers/phy/freescale/phy-fsl-imx8-mipi-dphy.c:337:12: error: incompatib=
le pointer types passing 'struct phy *' to parameter of type 'struct phy_de=
vice *' [-Werror,-Wincompatible-pointer-types]
           phy_write(phy, 0x02, priv->devdata->reg_rxcdrp);
                     ^~~
   include/linux/phy.h:987:48: note: passing argument to parameter 'phydev'=
 here
   static inline int phy_write(struct phy_device *phydev, u32 regnum, u16 v=
al)
                                                  ^
   drivers/phy/freescale/phy-fsl-imx8-mipi-dphy.c:338:12: error: incompatib=
le pointer types passing 'struct phy *' to parameter of type 'struct phy_de=
vice *' [-Werror,-Wincompatible-pointer-types]
           phy_write(phy, 0x25, DPHY_TST);
                     ^~~
   include/linux/phy.h:987:48: note: passing argument to parameter 'phydev'=
 here
   static inline int phy_write(struct phy_device *phydev, u32 regnum, u16 v=
al)
                                                  ^
   drivers/phy/freescale/phy-fsl-imx8-mipi-dphy.c:361:12: error: incompatib=
le pointer types passing 'struct phy *' to parameter of type 'struct phy_de=
vice *' [-Werror,-Wincompatible-pointer-types]
           phy_write(phy, PWR_OFF, DPHY_PD_PLL);
                     ^~~
   include/linux/phy.h:987:48: note: passing argument to parameter 'phydev'=
 here
   static inline int phy_write(struct phy_device *phydev, u32 regnum, u16 v=
al)

vim +292 drivers/phy/freescale/phy-fsl-imx8-mipi-dphy.c

f4c8116e294b12c Guido G=C3=BCnther 2019-06-20  109 =20
f4c8116e294b12c Guido G=C3=BCnther 2019-06-20 @110  static int phy_write(st=
ruct phy *phy, u32 value, unsigned int reg)
f4c8116e294b12c Guido G=C3=BCnther 2019-06-20  111  {
f4c8116e294b12c Guido G=C3=BCnther 2019-06-20  112  	struct mixel_dphy_priv=
 *priv =3D phy_get_drvdata(phy);
f4c8116e294b12c Guido G=C3=BCnther 2019-06-20  113  	int ret;
f4c8116e294b12c Guido G=C3=BCnther 2019-06-20  114 =20
f4c8116e294b12c Guido G=C3=BCnther 2019-06-20  115  	ret =3D regmap_write(p=
riv->regmap, reg, value);
f4c8116e294b12c Guido G=C3=BCnther 2019-06-20  116  	if (ret < 0)
f4c8116e294b12c Guido G=C3=BCnther 2019-06-20  117  		dev_err(&phy->dev, "F=
ailed to write DPHY reg %d: %d\n", reg,
f4c8116e294b12c Guido G=C3=BCnther 2019-06-20  118  			ret);
f4c8116e294b12c Guido G=C3=BCnther 2019-06-20  119  	return ret;
f4c8116e294b12c Guido G=C3=BCnther 2019-06-20  120  }
f4c8116e294b12c Guido G=C3=BCnther 2019-06-20  121 =20
f4c8116e294b12c Guido G=C3=BCnther 2019-06-20  122  /*
f4c8116e294b12c Guido G=C3=BCnther 2019-06-20  123   * Find a ratio close t=
o the desired one using continued fraction
f4c8116e294b12c Guido G=C3=BCnther 2019-06-20  124   * approximation ending=
 either at exact match or maximum allowed
f4c8116e294b12c Guido G=C3=BCnther 2019-06-20  125   * nominator, denominat=
or.
f4c8116e294b12c Guido G=C3=BCnther 2019-06-20  126   */
f4c8116e294b12c Guido G=C3=BCnther 2019-06-20  127  static void get_best_ra=
tio(u32 *pnum, u32 *pdenom, u32 max_n, u32 max_d)
f4c8116e294b12c Guido G=C3=BCnther 2019-06-20  128  {
f4c8116e294b12c Guido G=C3=BCnther 2019-06-20  129  	u32 a =3D *pnum;
f4c8116e294b12c Guido G=C3=BCnther 2019-06-20  130  	u32 b =3D *pdenom;
f4c8116e294b12c Guido G=C3=BCnther 2019-06-20  131  	u32 c;
f4c8116e294b12c Guido G=C3=BCnther 2019-06-20  132  	u32 n[] =3D {0, 1};
f4c8116e294b12c Guido G=C3=BCnther 2019-06-20  133  	u32 d[] =3D {1, 0};
f4c8116e294b12c Guido G=C3=BCnther 2019-06-20  134  	u32 whole;
f4c8116e294b12c Guido G=C3=BCnther 2019-06-20  135  	unsigned int i =3D 1;
f4c8116e294b12c Guido G=C3=BCnther 2019-06-20  136 =20
f4c8116e294b12c Guido G=C3=BCnther 2019-06-20  137  	while (b) {
f4c8116e294b12c Guido G=C3=BCnther 2019-06-20  138  		i ^=3D 1;
f4c8116e294b12c Guido G=C3=BCnther 2019-06-20  139  		whole =3D a / b;
f4c8116e294b12c Guido G=C3=BCnther 2019-06-20  140  		n[i] +=3D (n[i ^ 1] *=
 whole);
f4c8116e294b12c Guido G=C3=BCnther 2019-06-20  141  		d[i] +=3D (d[i ^ 1] *=
 whole);
f4c8116e294b12c Guido G=C3=BCnther 2019-06-20  142  		if ((n[i] > max_n) ||=
 (d[i] > max_d)) {
f4c8116e294b12c Guido G=C3=BCnther 2019-06-20  143  			i ^=3D 1;
f4c8116e294b12c Guido G=C3=BCnther 2019-06-20  144  			break;
f4c8116e294b12c Guido G=C3=BCnther 2019-06-20  145  		}
f4c8116e294b12c Guido G=C3=BCnther 2019-06-20  146  		c =3D a - (b * whole)=
;
f4c8116e294b12c Guido G=C3=BCnther 2019-06-20  147  		a =3D b;
f4c8116e294b12c Guido G=C3=BCnther 2019-06-20  148  		b =3D c;
f4c8116e294b12c Guido G=C3=BCnther 2019-06-20  149  	}
f4c8116e294b12c Guido G=C3=BCnther 2019-06-20  150  	*pnum =3D n[i];
f4c8116e294b12c Guido G=C3=BCnther 2019-06-20  151  	*pdenom =3D d[i];
f4c8116e294b12c Guido G=C3=BCnther 2019-06-20  152  }
f4c8116e294b12c Guido G=C3=BCnther 2019-06-20  153 =20
f4c8116e294b12c Guido G=C3=BCnther 2019-06-20  154  static int mixel_dphy_c=
onfig_from_opts(struct phy *phy,
f4c8116e294b12c Guido G=C3=BCnther 2019-06-20  155  	       struct phy_conf=
igure_opts_mipi_dphy *dphy_opts,
f4c8116e294b12c Guido G=C3=BCnther 2019-06-20  156  	       struct mixel_dp=
hy_cfg *cfg)
f4c8116e294b12c Guido G=C3=BCnther 2019-06-20  157  {
f4c8116e294b12c Guido G=C3=BCnther 2019-06-20  158  	struct mixel_dphy_priv=
 *priv =3D dev_get_drvdata(phy->dev.parent);
f4c8116e294b12c Guido G=C3=BCnther 2019-06-20  159  	unsigned long ref_clk =
=3D clk_get_rate(priv->phy_ref_clk);
f4c8116e294b12c Guido G=C3=BCnther 2019-06-20  160  	u32 lp_t, numerator, d=
enominator;
f4c8116e294b12c Guido G=C3=BCnther 2019-06-20  161  	unsigned long long tmp=
;
f4c8116e294b12c Guido G=C3=BCnther 2019-06-20  162  	u32 n;
f4c8116e294b12c Guido G=C3=BCnther 2019-06-20  163  	int i;
f4c8116e294b12c Guido G=C3=BCnther 2019-06-20  164 =20
f4c8116e294b12c Guido G=C3=BCnther 2019-06-20  165  	if (dphy_opts->hs_clk_=
rate > DATA_RATE_MAX_SPEED ||
f4c8116e294b12c Guido G=C3=BCnther 2019-06-20  166  	    dphy_opts->hs_clk_=
rate < DATA_RATE_MIN_SPEED)
f4c8116e294b12c Guido G=C3=BCnther 2019-06-20  167  		return -EINVAL;
f4c8116e294b12c Guido G=C3=BCnther 2019-06-20  168 =20
f4c8116e294b12c Guido G=C3=BCnther 2019-06-20  169  	numerator =3D dphy_opt=
s->hs_clk_rate;
f4c8116e294b12c Guido G=C3=BCnther 2019-06-20  170  	denominator =3D ref_cl=
k;
f4c8116e294b12c Guido G=C3=BCnther 2019-06-20  171  	get_best_ratio(&numera=
tor, &denominator, 255, 256);
f4c8116e294b12c Guido G=C3=BCnther 2019-06-20  172  	if (!numerator || !den=
ominator) {
f4c8116e294b12c Guido G=C3=BCnther 2019-06-20  173  		dev_err(&phy->dev, "I=
nvalid %d/%d for %ld/%ld\n",
f4c8116e294b12c Guido G=C3=BCnther 2019-06-20  174  			numerator, denominat=
or,
f4c8116e294b12c Guido G=C3=BCnther 2019-06-20  175  			dphy_opts->hs_clk_ra=
te, ref_clk);
f4c8116e294b12c Guido G=C3=BCnther 2019-06-20  176  		return -EINVAL;
f4c8116e294b12c Guido G=C3=BCnther 2019-06-20  177  	}
f4c8116e294b12c Guido G=C3=BCnther 2019-06-20  178 =20
f4c8116e294b12c Guido G=C3=BCnther 2019-06-20  179  	while ((numerator < 16=
) && (denominator <=3D 128)) {
f4c8116e294b12c Guido G=C3=BCnther 2019-06-20  180  		numerator <<=3D 1;
f4c8116e294b12c Guido G=C3=BCnther 2019-06-20  181  		denominator <<=3D 1;
f4c8116e294b12c Guido G=C3=BCnther 2019-06-20  182  	}
f4c8116e294b12c Guido G=C3=BCnther 2019-06-20  183  	/*
f4c8116e294b12c Guido G=C3=BCnther 2019-06-20  184  	 * CM ranges between 1=
6 and 255
f4c8116e294b12c Guido G=C3=BCnther 2019-06-20  185  	 * CN ranges between 1=
 and 32
f4c8116e294b12c Guido G=C3=BCnther 2019-06-20  186  	 * CO is power of 2: 1=
, 2, 4, 8
f4c8116e294b12c Guido G=C3=BCnther 2019-06-20  187  	 */
f4c8116e294b12c Guido G=C3=BCnther 2019-06-20  188  	i =3D __ffs(denominato=
r);
f4c8116e294b12c Guido G=C3=BCnther 2019-06-20  189  	if (i > 3)
f4c8116e294b12c Guido G=C3=BCnther 2019-06-20  190  		i =3D 3;
f4c8116e294b12c Guido G=C3=BCnther 2019-06-20  191  	cfg->cn =3D denominato=
r >> i;
f4c8116e294b12c Guido G=C3=BCnther 2019-06-20  192  	cfg->co =3D 1 << i;
f4c8116e294b12c Guido G=C3=BCnther 2019-06-20  193  	cfg->cm =3D numerator;
f4c8116e294b12c Guido G=C3=BCnther 2019-06-20  194 =20
f4c8116e294b12c Guido G=C3=BCnther 2019-06-20  195  	if (cfg->cm < 16 || cf=
g->cm > 255 ||
f4c8116e294b12c Guido G=C3=BCnther 2019-06-20  196  	    cfg->cn < 1 || cfg=
->cn > 32 ||
f4c8116e294b12c Guido G=C3=BCnther 2019-06-20  197  	    cfg->co < 1 || cfg=
->co > 8) {
f4c8116e294b12c Guido G=C3=BCnther 2019-06-20  198  		dev_err(&phy->dev, "I=
nvalid CM/CN/CO values: %u/%u/%u\n",
f4c8116e294b12c Guido G=C3=BCnther 2019-06-20  199  			cfg->cm, cfg->cn, cf=
g->co);
f4c8116e294b12c Guido G=C3=BCnther 2019-06-20  200  		dev_err(&phy->dev, "f=
or hs_clk/ref_clk=3D%ld/%ld ~ %d/%d\n",
f4c8116e294b12c Guido G=C3=BCnther 2019-06-20  201  			dphy_opts->hs_clk_ra=
te, ref_clk,
f4c8116e294b12c Guido G=C3=BCnther 2019-06-20  202  			numerator, denominat=
or);
f4c8116e294b12c Guido G=C3=BCnther 2019-06-20  203  		return -EINVAL;
f4c8116e294b12c Guido G=C3=BCnther 2019-06-20  204  	}
f4c8116e294b12c Guido G=C3=BCnther 2019-06-20  205 =20
f4c8116e294b12c Guido G=C3=BCnther 2019-06-20  206  	dev_dbg(&phy->dev, "hs=
_clk/ref_clk=3D%ld/%ld ~ %d/%d\n",
f4c8116e294b12c Guido G=C3=BCnther 2019-06-20  207  		dphy_opts->hs_clk_rat=
e, ref_clk, numerator, denominator);
f4c8116e294b12c Guido G=C3=BCnther 2019-06-20  208 =20
f4c8116e294b12c Guido G=C3=BCnther 2019-06-20  209  	/* LP clock period */
f4c8116e294b12c Guido G=C3=BCnther 2019-06-20  210  	tmp =3D 1000000000000L=
L;
f4c8116e294b12c Guido G=C3=BCnther 2019-06-20  211  	do_div(tmp, dphy_opts-=
>lp_clk_rate); /* ps */
f4c8116e294b12c Guido G=C3=BCnther 2019-06-20  212  	if (tmp > ULONG_MAX)
f4c8116e294b12c Guido G=C3=BCnther 2019-06-20  213  		return -EINVAL;
f4c8116e294b12c Guido G=C3=BCnther 2019-06-20  214 =20
f4c8116e294b12c Guido G=C3=BCnther 2019-06-20  215  	lp_t =3D tmp;
f4c8116e294b12c Guido G=C3=BCnther 2019-06-20  216  	dev_dbg(&phy->dev, "LP=
 clock %lu, period: %u ps\n",
f4c8116e294b12c Guido G=C3=BCnther 2019-06-20  217  		dphy_opts->lp_clk_rat=
e, lp_t);
f4c8116e294b12c Guido G=C3=BCnther 2019-06-20  218 =20
f4c8116e294b12c Guido G=C3=BCnther 2019-06-20  219  	/* hs_prepare: in lp c=
lock periods */
f4c8116e294b12c Guido G=C3=BCnther 2019-06-20  220  	if (2 * dphy_opts->hs_=
prepare > 5 * lp_t) {
f4c8116e294b12c Guido G=C3=BCnther 2019-06-20  221  		dev_err(&phy->dev,
f4c8116e294b12c Guido G=C3=BCnther 2019-06-20  222  			"hs_prepare (%u) > 2=
.5 * lp clock period (%u)\n",
f4c8116e294b12c Guido G=C3=BCnther 2019-06-20  223  			dphy_opts->hs_prepar=
e, lp_t);
f4c8116e294b12c Guido G=C3=BCnther 2019-06-20  224  		return -EINVAL;
f4c8116e294b12c Guido G=C3=BCnther 2019-06-20  225  	}
f4c8116e294b12c Guido G=C3=BCnther 2019-06-20  226  	/* 00: lp_t, 01: 1.5 *=
 lp_t, 10: 2 * lp_t, 11: 2.5 * lp_t */
f4c8116e294b12c Guido G=C3=BCnther 2019-06-20  227  	if (dphy_opts->hs_prep=
are < lp_t) {
f4c8116e294b12c Guido G=C3=BCnther 2019-06-20  228  		n =3D 0;
f4c8116e294b12c Guido G=C3=BCnther 2019-06-20  229  	} else {
f4c8116e294b12c Guido G=C3=BCnther 2019-06-20  230  		tmp =3D 2 * (dphy_opt=
s->hs_prepare - lp_t);
f4c8116e294b12c Guido G=C3=BCnther 2019-06-20  231  		do_div(tmp, lp_t);
f4c8116e294b12c Guido G=C3=BCnther 2019-06-20  232  		n =3D tmp;
f4c8116e294b12c Guido G=C3=BCnther 2019-06-20  233  	}
f4c8116e294b12c Guido G=C3=BCnther 2019-06-20  234  	cfg->m_prg_hs_prepare =
=3D n;
f4c8116e294b12c Guido G=C3=BCnther 2019-06-20  235 =20
f4c8116e294b12c Guido G=C3=BCnther 2019-06-20  236  	/* clk_prepare: in lp =
clock periods */
f4c8116e294b12c Guido G=C3=BCnther 2019-06-20  237  	if (2 * dphy_opts->clk=
_prepare > 3 * lp_t) {
f4c8116e294b12c Guido G=C3=BCnther 2019-06-20  238  		dev_err(&phy->dev,
f4c8116e294b12c Guido G=C3=BCnther 2019-06-20  239  			"clk_prepare (%u) > =
1.5 * lp clock period (%u)\n",
f4c8116e294b12c Guido G=C3=BCnther 2019-06-20  240  			dphy_opts->clk_prepa=
re, lp_t);
f4c8116e294b12c Guido G=C3=BCnther 2019-06-20  241  		return -EINVAL;
f4c8116e294b12c Guido G=C3=BCnther 2019-06-20  242  	}
f4c8116e294b12c Guido G=C3=BCnther 2019-06-20  243  	/* 00: lp_t, 01: 1.5 *=
 lp_t */
f4c8116e294b12c Guido G=C3=BCnther 2019-06-20  244  	cfg->mc_prg_hs_prepare=
 =3D dphy_opts->clk_prepare > lp_t ? 1 : 0;
f4c8116e294b12c Guido G=C3=BCnther 2019-06-20  245 =20
f4c8116e294b12c Guido G=C3=BCnther 2019-06-20  246  	/* hs_zero: formula fr=
om NXP BSP */
f4c8116e294b12c Guido G=C3=BCnther 2019-06-20  247  	n =3D (144 * (dphy_opt=
s->hs_clk_rate / 1000000) - 47500) / 10000;
f4c8116e294b12c Guido G=C3=BCnther 2019-06-20  248  	cfg->m_prg_hs_zero =3D=
 n < 1 ? 1 : n;
f4c8116e294b12c Guido G=C3=BCnther 2019-06-20  249 =20
f4c8116e294b12c Guido G=C3=BCnther 2019-06-20  250  	/* clk_zero: formula f=
rom NXP BSP */
f4c8116e294b12c Guido G=C3=BCnther 2019-06-20  251  	n =3D (34 * (dphy_opts=
->hs_clk_rate / 1000000) - 2500) / 1000;
f4c8116e294b12c Guido G=C3=BCnther 2019-06-20  252  	cfg->mc_prg_hs_zero =
=3D n < 1 ? 1 : n;
f4c8116e294b12c Guido G=C3=BCnther 2019-06-20  253 =20
f4c8116e294b12c Guido G=C3=BCnther 2019-06-20  254  	/* clk_trail, hs_trail=
: formula from NXP BSP */
f4c8116e294b12c Guido G=C3=BCnther 2019-06-20  255  	n =3D (103 * (dphy_opt=
s->hs_clk_rate / 1000000) + 10000) / 10000;
f4c8116e294b12c Guido G=C3=BCnther 2019-06-20  256  	if (n > 15)
f4c8116e294b12c Guido G=C3=BCnther 2019-06-20  257  		n =3D 15;
f4c8116e294b12c Guido G=C3=BCnther 2019-06-20  258  	if (n < 1)
f4c8116e294b12c Guido G=C3=BCnther 2019-06-20  259  		n =3D 1;
f4c8116e294b12c Guido G=C3=BCnther 2019-06-20  260  	cfg->m_prg_hs_trail =
=3D n;
f4c8116e294b12c Guido G=C3=BCnther 2019-06-20  261  	cfg->mc_prg_hs_trail =
=3D n;
f4c8116e294b12c Guido G=C3=BCnther 2019-06-20  262 =20
f4c8116e294b12c Guido G=C3=BCnther 2019-06-20  263  	/* rxhs_settle: formul=
a from NXP BSP */
f4c8116e294b12c Guido G=C3=BCnther 2019-06-20  264  	if (dphy_opts->hs_clk_=
rate < MBPS(80))
f4c8116e294b12c Guido G=C3=BCnther 2019-06-20  265  		cfg->rxhs_settle =3D =
0x0d;
f4c8116e294b12c Guido G=C3=BCnther 2019-06-20  266  	else if (dphy_opts->hs=
_clk_rate < MBPS(90))
f4c8116e294b12c Guido G=C3=BCnther 2019-06-20  267  		cfg->rxhs_settle =3D =
0x0c;
f4c8116e294b12c Guido G=C3=BCnther 2019-06-20  268  	else if (dphy_opts->hs=
_clk_rate < MBPS(125))
f4c8116e294b12c Guido G=C3=BCnther 2019-06-20  269  		cfg->rxhs_settle =3D =
0x0b;
f4c8116e294b12c Guido G=C3=BCnther 2019-06-20  270  	else if (dphy_opts->hs=
_clk_rate < MBPS(150))
f4c8116e294b12c Guido G=C3=BCnther 2019-06-20  271  		cfg->rxhs_settle =3D =
0x0a;
f4c8116e294b12c Guido G=C3=BCnther 2019-06-20  272  	else if (dphy_opts->hs=
_clk_rate < MBPS(225))
f4c8116e294b12c Guido G=C3=BCnther 2019-06-20  273  		cfg->rxhs_settle =3D =
0x09;
f4c8116e294b12c Guido G=C3=BCnther 2019-06-20  274  	else if (dphy_opts->hs=
_clk_rate < MBPS(500))
f4c8116e294b12c Guido G=C3=BCnther 2019-06-20  275  		cfg->rxhs_settle =3D =
0x08;
f4c8116e294b12c Guido G=C3=BCnther 2019-06-20  276  	else
f4c8116e294b12c Guido G=C3=BCnther 2019-06-20  277  		cfg->rxhs_settle =3D =
0x07;
f4c8116e294b12c Guido G=C3=BCnther 2019-06-20  278 =20
f4c8116e294b12c Guido G=C3=BCnther 2019-06-20  279  	dev_dbg(&phy->dev, "ph=
y_config: %u %u %u %u %u %u %u\n",
f4c8116e294b12c Guido G=C3=BCnther 2019-06-20  280  		cfg->m_prg_hs_prepare=
, cfg->mc_prg_hs_prepare,
f4c8116e294b12c Guido G=C3=BCnther 2019-06-20  281  		cfg->m_prg_hs_zero, c=
fg->mc_prg_hs_zero,
f4c8116e294b12c Guido G=C3=BCnther 2019-06-20  282  		cfg->m_prg_hs_trail, =
cfg->mc_prg_hs_trail,
f4c8116e294b12c Guido G=C3=BCnther 2019-06-20  283  		cfg->rxhs_settle);
f4c8116e294b12c Guido G=C3=BCnther 2019-06-20  284 =20
f4c8116e294b12c Guido G=C3=BCnther 2019-06-20  285  	return 0;
f4c8116e294b12c Guido G=C3=BCnther 2019-06-20  286  }
f4c8116e294b12c Guido G=C3=BCnther 2019-06-20  287 =20
f4c8116e294b12c Guido G=C3=BCnther 2019-06-20  288  static void mixel_phy_s=
et_hs_timings(struct phy *phy)
f4c8116e294b12c Guido G=C3=BCnther 2019-06-20  289  {
f4c8116e294b12c Guido G=C3=BCnther 2019-06-20  290  	struct mixel_dphy_priv=
 *priv =3D phy_get_drvdata(phy);
f4c8116e294b12c Guido G=C3=BCnther 2019-06-20  291 =20
f4c8116e294b12c Guido G=C3=BCnther 2019-06-20 @292  	phy_write(phy, priv->c=
fg.m_prg_hs_prepare, DPHY_M_PRG_HS_PREPARE);
f4c8116e294b12c Guido G=C3=BCnther 2019-06-20  293  	phy_write(phy, priv->c=
fg.mc_prg_hs_prepare, DPHY_MC_PRG_HS_PREPARE);
f4c8116e294b12c Guido G=C3=BCnther 2019-06-20  294  	phy_write(phy, priv->c=
fg.m_prg_hs_zero, DPHY_M_PRG_HS_ZERO);
f4c8116e294b12c Guido G=C3=BCnther 2019-06-20  295  	phy_write(phy, priv->c=
fg.mc_prg_hs_zero, DPHY_MC_PRG_HS_ZERO);
f4c8116e294b12c Guido G=C3=BCnther 2019-06-20  296  	phy_write(phy, priv->c=
fg.m_prg_hs_trail, DPHY_M_PRG_HS_TRAIL);
f4c8116e294b12c Guido G=C3=BCnther 2019-06-20  297  	phy_write(phy, priv->c=
fg.mc_prg_hs_trail, DPHY_MC_PRG_HS_TRAIL);
f4c8116e294b12c Guido G=C3=BCnther 2019-06-20  298  	phy_write(phy, priv->c=
fg.rxhs_settle, priv->devdata->reg_rxhs_settle);
f4c8116e294b12c Guido G=C3=BCnther 2019-06-20  299  }
f4c8116e294b12c Guido G=C3=BCnther 2019-06-20  300 =20

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/202011210218.eUYhiOps-lkp%40intel.com.

--X1bOJ3K7DJ5YkBrT
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--X1bOJ3K7DJ5YkBrT--
