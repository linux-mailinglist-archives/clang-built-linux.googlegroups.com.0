Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBQXJXWDQMGQEHFI377Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83e.google.com (mail-qt1-x83e.google.com [IPv6:2607:f8b0:4864:20::83e])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E3E73C948F
	for <lists+clang-built-linux@lfdr.de>; Thu, 15 Jul 2021 01:35:31 +0200 (CEST)
Received: by mail-qt1-x83e.google.com with SMTP id d9-20020ac84e290000b0290256a44e9034sf2870288qtw.22
        for <lists+clang-built-linux@lfdr.de>; Wed, 14 Jul 2021 16:35:31 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1626305730; cv=pass;
        d=google.com; s=arc-20160816;
        b=PDd9NKYYmrCJO5T9gK1hDj5309HCKezzZF2Lm351tWsBqY41b1HkArk9b9FVg/XzOP
         kK5A7zPCIL9n21Ga/1Ov0bCRxGJ5MeG5x9ijmpCTJRNc367GnMfeTOJJIvEHGac7guWI
         bnTMYrRvrxeSxTObs4wXOf8LVdXtcRyLimBTk+HvsYysT1lskXihoXPxY4gVBviwi90v
         hluR7Efw8Txl6Hr2z23bnAlt+mrsL0hoHhwleJPU66cux2R1+aotN9a36eBohDzX0O5w
         jhwUsPklpL6OsAoug+J18YWID73nliRk0Fx+62uUFKe9aBZYARV23MTw5hNk76DRvNG+
         Ki2w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=8+iMAAU11UjPBS8Aa8OUhiYDGPuCli26j+4w6ySWvv8=;
        b=njI0rs5Xba/9/h76sjwmrfskkAh/62PAhE3ioKAHFlOQc4eWAn/RohYxywYZRl2gFk
         yhhF8Pb/5gr3of4gClaZV8og1f1At895ogA1/2qAy3l11PObWbncHrINL6kGonIZ6NFW
         JXNATq44NBqG5AHJI5BlEi7ZRiJCOwflXl5qG2CNN2CRJFAUiXEapQLYy+pTpmiWtgdZ
         bhF/6xmBHwDFr59crI0GoWLmEMljNd3mcTn1DoEJGgY5ANgXdzpe2KPp+KcWru5ovbFd
         BsIDD0VbeJiSoMAJaJzd21N9pLywFynifWC//W41yRLQawxnghtuJz1xBhoxnKCxOy4k
         AoFg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.120 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :user-agent:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8+iMAAU11UjPBS8Aa8OUhiYDGPuCli26j+4w6ySWvv8=;
        b=l31r/X3TVn7dqBojciVsMCVaVFCUbdSdlPmlFdrV91teNybELaH5ABZvbMkm2RD0oU
         DXMEFQ1tc8laO5O0KqdGYu5KCk6ZkZtCsHMw2CBrjMnvEXA8LwquSfc4cRW4gZp8JU8X
         rBtwGH1wqEDtXsD62P8LxMfqqGWVp0he3ZfivqUDUloUqwqzIA7XYqDKTEU2b2pydQe5
         hSXwuo63F356LGEd/LlSQ2dUj+ETZy5oS5T1sihYNS+0A5Cf0gqFldPYCKf4mLatlsUQ
         HkMJ7D63X8rdPoZHP8vfaSS6daoYQaxZk2Ad5RgAiq6fXYulRCUX5poid9cSst2d3akI
         izzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8+iMAAU11UjPBS8Aa8OUhiYDGPuCli26j+4w6ySWvv8=;
        b=qjDHtINcTP075nX0UMuCnVG5VqYNtvJ/tdefXkeADNVK2ruGdt/OLBgo9igK/FQzCJ
         46sh1mjvIKBQzeTIO0mbW4uSk3gR2qa0HIkHKacCn3LpYeAG5tzIvcdc+Xzx0mRMw57g
         p3UgPtPUFFg2J4Ee43Mb2J08yLpxEfVkENcAQJ3HDpW9YMGF1NUL28opGSVzA/TJriWL
         FuDXpmN5Zwsmx1Cq6dW3chY3m/VjsAxnQzeuAvBc4VvPq84uQ55G+0L/jmI6ui+SOBn0
         6cKkSKwucfwWx6CHtRiQjmOjWHJ71OPbJco6vTTQ7yB1JoYtsH3CmD6rH/cNRGYbbLs0
         GKZA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533fjOLEW044OIAjUAlzlMsv45WHMxYfxCogPiNeOGHPTWfaGCbF
	NNN9RCTbSvV89Wz1oBPtzpg=
X-Google-Smtp-Source: ABdhPJxOHrrifFI6jrb8HRYPwoyqQosSwhdZHz1cuxXl9H/PLPS3kuXwqI40A37/hqBXf+VTrm5yZA==
X-Received: by 2002:a37:a8d1:: with SMTP id r200mr484321qke.360.1626305730569;
        Wed, 14 Jul 2021 16:35:30 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:622a:38d:: with SMTP id j13ls2791383qtx.5.gmail; Wed, 14
 Jul 2021 16:35:30 -0700 (PDT)
X-Received: by 2002:ac8:670f:: with SMTP id e15mr580852qtp.291.1626305729825;
        Wed, 14 Jul 2021 16:35:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1626305729; cv=none;
        d=google.com; s=arc-20160816;
        b=guByghVuTats5ulj6JofDp8FEjFfk0bGiHmGRa4D5nFf+4Ve4NvFn89QFhDao96mdU
         LrNVCVskTSDV8xQJUb9IQ1bPKJnSYS9Muav+tlfQZw0Fc/MHr4XVlHlpS9u8ZSGYee4W
         VFMjRpH8Q/W4oIQnglLCDFNSU7fxwlAq8M7f7yRhe0ACI4cfKMOVBjUSEgmHZRF995vV
         KKzG8sNSCS1kFWdp9b4GnmpSeTwlnWgwsl+DcamdgOx44BUuA9pks0kuHChD7xUtw00A
         uNNAz0fWNeKQHCUQoeZ0+J7Nk3Tbh1aTecpPQ5cKTgXbnJzRuKGai6m3ulY/kNexg2KC
         mUEA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date;
        bh=pjdjqPD34vCO10/OQurMxMOA72sv3V+RTRLe1fv2U8g=;
        b=zrvZVGXeMn2/87kXkV8Y3Av/fvAzGPLeKw7Wgglvy+HkL9vvJ/btS8eOvgsNR5Zqkr
         rUF+fPvogkxIoaztgTYSp44t+wkJhvB8KL3wvXn4NQhu+Csj40irRwEeVs7F0eOYyeJc
         YJMk18sLUAvCjqMUDfbF2DUtHobW7FKaCJG5S4g540nBvqoS4hduxN6Edv4HYPUOW3JW
         KuEk7m+avH+kfuCsXBUYmP+QMb88aCv71sHM00g+MwsoulDJzYf3vROi/Kywe+wnGEoH
         1sSMPtg6Ksku8VJG+xYWS1MOWshRGMZsm0r8secZk1sqR7CiarKldNzWEgwhOclbyE76
         U6OA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.120 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga04.intel.com (mga04.intel.com. [192.55.52.120])
        by gmr-mx.google.com with ESMTPS id f6si338402qko.3.2021.07.14.16.35.29
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Jul 2021 16:35:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.120 as permitted sender) client-ip=192.55.52.120;
X-IronPort-AV: E=McAfee;i="6200,9189,10045"; a="208629062"
X-IronPort-AV: E=Sophos;i="5.84,240,1620716400"; 
   d="gz'50?scan'50,208,50";a="208629062"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
  by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 14 Jul 2021 16:35:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,240,1620716400"; 
   d="gz'50?scan'50,208,50";a="428521135"
Received: from lkp-server01.sh.intel.com (HELO 4aae0cb4f5b5) ([10.239.97.150])
  by fmsmga007.fm.intel.com with ESMTP; 14 Jul 2021 16:35:23 -0700
Received: from kbuild by 4aae0cb4f5b5 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1m3oPS-000J9C-E0; Wed, 14 Jul 2021 23:35:22 +0000
Date: Thu, 15 Jul 2021 07:34:48 +0800
From: kernel test robot <lkp@intel.com>
To: Jim Cromie <jim.cromie@gmail.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
	Zhenyu Wang <zhenyuw@linux.intel.com>,
	Zhi Wang <zhi.a.wang@intel.com>,
	Jani Nikula <jani.nikula@linux.intel.com>,
	Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
	Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: clang-built-linux@googlegroups.com, kbuild-all@lists.01.org
Subject: Re: [Intel-gfx] [PATCH v3 4/5] drm/print: move conditional deref
 into macro defn
Message-ID: <202107150708.BTBJCBjy-lkp@intel.com>
References: <20210714175138.319514-5-jim.cromie@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="KsGdsel6WgEHnImy"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20210714175138.319514-5-jim.cromie@gmail.com>
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


--KsGdsel6WgEHnImy
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Jim,

I love your patch! Yet something to improve:

[auto build test ERROR on drm-intel/for-linux-next]
[also build test ERROR on drm-tip/drm-tip linus/master v5.14-rc1 next-20210=
714]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch]

url:    https://github.com/0day-ci/linux/commits/Jim-Cromie/drm-use-dyndbg-=
in-drm_print/20210715-015347
base:   git://anongit.freedesktop.org/drm-intel for-linux-next
config: x86_64-randconfig-a015-20210714 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 8d6963=
5ed9ecf36fd0ca85906bfde17949671cbe)
reproduce (this is a W=3D1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/=
make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install x86_64 cross compiling tool for clang build
        # apt-get install binutils-x86-64-linux-gnu
        # https://github.com/0day-ci/linux/commit/4a3dcdd418da090977ab9fa22=
5818e5ad142288d
        git remote add linux-review https://github.com/0day-ci/linux
        git fetch --no-tags linux-review Jim-Cromie/drm-use-dyndbg-in-drm_p=
rint/20210715-015347
        git checkout 4a3dcdd418da090977ab9fa225818e5ad142288d
        # save the attached .config to linux build tree
        mkdir build_dir
        COMPILER_INSTALL_PATH=3D$HOME/0day COMPILER=3Dclang make.cross O=3D=
build_dir ARCH=3Dx86_64 SHELL=3D/bin/bash drivers/gpu/drm/bridge/ drivers/g=
pu/drm/exynos/

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

>> drivers/gpu/drm/bridge/nwl-dsi.c:229:2: error: no member named 'dev' in =
'struct device'; did you mean 'devt'?
           DRM_DEV_DEBUG_DRIVER(dsi->dev, "DSI Lanes %d\n", dsi->lanes);
           ^
   include/drm/drm_print.h:439:2: note: expanded from macro 'DRM_DEV_DEBUG_=
DRIVER'
           drm_dev_dbg(dev, cDRM_UT_DRIVER, fmt, ##__VA_ARGS__)
           ^
   include/drm/drm_print.h:330:30: note: expanded from macro 'drm_dev_dbg'
           _drm_dev_dbg((drm) ? (drm)->dev : NULL, cls, fmt, ##__VA_ARGS__)
                                       ^
   include/linux/device.h:544:10: note: 'devt' declared here
           dev_t                   devt;   /* dev_t, creates the sysfs "dev=
" */
                                   ^
   drivers/gpu/drm/bridge/nwl-dsi.c:242:2: error: no member named 'dev' in =
'struct device'; did you mean 'devt'?
           DRM_DEV_DEBUG_DRIVER(dsi->dev, "cfg_t_pre: 0x%x\n", cycles);
           ^
   include/drm/drm_print.h:439:2: note: expanded from macro 'DRM_DEV_DEBUG_=
DRIVER'
           drm_dev_dbg(dev, cDRM_UT_DRIVER, fmt, ##__VA_ARGS__)
           ^
   include/drm/drm_print.h:330:30: note: expanded from macro 'drm_dev_dbg'
           _drm_dev_dbg((drm) ? (drm)->dev : NULL, cls, fmt, ##__VA_ARGS__)
                                       ^
   include/linux/device.h:544:10: note: 'devt' declared here
           dev_t                   devt;   /* dev_t, creates the sysfs "dev=
" */
                                   ^
   drivers/gpu/drm/bridge/nwl-dsi.c:245:2: error: no member named 'dev' in =
'struct device'; did you mean 'devt'?
           DRM_DEV_DEBUG_DRIVER(dsi->dev, "cfg_tx_gap (pre): 0x%x\n", cycle=
s);
           ^
   include/drm/drm_print.h:439:2: note: expanded from macro 'DRM_DEV_DEBUG_=
DRIVER'
           drm_dev_dbg(dev, cDRM_UT_DRIVER, fmt, ##__VA_ARGS__)
           ^
   include/drm/drm_print.h:330:30: note: expanded from macro 'drm_dev_dbg'
           _drm_dev_dbg((drm) ? (drm)->dev : NULL, cls, fmt, ##__VA_ARGS__)
                                       ^
   include/linux/device.h:544:10: note: 'devt' declared here
           dev_t                   devt;   /* dev_t, creates the sysfs "dev=
" */
                                   ^
   drivers/gpu/drm/bridge/nwl-dsi.c:247:2: error: no member named 'dev' in =
'struct device'; did you mean 'devt'?
           DRM_DEV_DEBUG_DRIVER(dsi->dev, "cfg_t_post: 0x%x\n", cycles);
           ^
   include/drm/drm_print.h:439:2: note: expanded from macro 'DRM_DEV_DEBUG_=
DRIVER'
           drm_dev_dbg(dev, cDRM_UT_DRIVER, fmt, ##__VA_ARGS__)
           ^
   include/drm/drm_print.h:330:30: note: expanded from macro 'drm_dev_dbg'
           _drm_dev_dbg((drm) ? (drm)->dev : NULL, cls, fmt, ##__VA_ARGS__)
                                       ^
   include/linux/device.h:544:10: note: 'devt' declared here
           dev_t                   devt;   /* dev_t, creates the sysfs "dev=
" */
                                   ^
   drivers/gpu/drm/bridge/nwl-dsi.c:250:2: error: no member named 'dev' in =
'struct device'; did you mean 'devt'?
           DRM_DEV_DEBUG_DRIVER(dsi->dev, "cfg_tx_gap: 0x%x\n", cycles);
           ^
   include/drm/drm_print.h:439:2: note: expanded from macro 'DRM_DEV_DEBUG_=
DRIVER'
           drm_dev_dbg(dev, cDRM_UT_DRIVER, fmt, ##__VA_ARGS__)
           ^
   include/drm/drm_print.h:330:30: note: expanded from macro 'drm_dev_dbg'
           _drm_dev_dbg((drm) ? (drm)->dev : NULL, cls, fmt, ##__VA_ARGS__)
                                       ^
   include/linux/device.h:544:10: note: 'devt' declared here
           dev_t                   devt;   /* dev_t, creates the sysfs "dev=
" */
                                   ^
   drivers/gpu/drm/bridge/nwl-dsi.c:259:2: error: no member named 'dev' in =
'struct device'; did you mean 'devt'?
           DRM_DEV_DEBUG_DRIVER(dsi->dev, "cfg_twakeup: 0x%x\n", cycles);
           ^
   include/drm/drm_print.h:439:2: note: expanded from macro 'DRM_DEV_DEBUG_=
DRIVER'
           drm_dev_dbg(dev, cDRM_UT_DRIVER, fmt, ##__VA_ARGS__)
           ^
   include/drm/drm_print.h:330:30: note: expanded from macro 'drm_dev_dbg'
           _drm_dev_dbg((drm) ? (drm)->dev : NULL, cls, fmt, ##__VA_ARGS__)
                                       ^
   include/linux/device.h:544:10: note: 'devt' declared here
           dev_t                   devt;   /* dev_t, creates the sysfs "dev=
" */
                                   ^
   drivers/gpu/drm/bridge/nwl-dsi.c:281:2: error: no member named 'dev' in =
'struct device'; did you mean 'devt'?
           DRM_DEV_DEBUG_DRIVER(dsi->dev, "hfront_porch =3D %d\n", hfront_p=
orch);
           ^
   include/drm/drm_print.h:439:2: note: expanded from macro 'DRM_DEV_DEBUG_=
DRIVER'
           drm_dev_dbg(dev, cDRM_UT_DRIVER, fmt, ##__VA_ARGS__)
           ^
   include/drm/drm_print.h:330:30: note: expanded from macro 'drm_dev_dbg'
           _drm_dev_dbg((drm) ? (drm)->dev : NULL, cls, fmt, ##__VA_ARGS__)
                                       ^
   include/linux/device.h:544:10: note: 'devt' declared here
           dev_t                   devt;   /* dev_t, creates the sysfs "dev=
" */
                                   ^
   drivers/gpu/drm/bridge/nwl-dsi.c:282:2: error: no member named 'dev' in =
'struct device'; did you mean 'devt'?
           DRM_DEV_DEBUG_DRIVER(dsi->dev, "hback_porch =3D %d\n", hback_por=
ch);
           ^
   include/drm/drm_print.h:439:2: note: expanded from macro 'DRM_DEV_DEBUG_=
DRIVER'
           drm_dev_dbg(dev, cDRM_UT_DRIVER, fmt, ##__VA_ARGS__)
           ^
   include/drm/drm_print.h:330:30: note: expanded from macro 'drm_dev_dbg'
           _drm_dev_dbg((drm) ? (drm)->dev : NULL, cls, fmt, ##__VA_ARGS__)
                                       ^
   include/linux/device.h:544:10: note: 'devt' declared here
           dev_t                   devt;   /* dev_t, creates the sysfs "dev=
" */
                                   ^
   drivers/gpu/drm/bridge/nwl-dsi.c:283:2: error: no member named 'dev' in =
'struct device'; did you mean 'devt'?
           DRM_DEV_DEBUG_DRIVER(dsi->dev, "hsync_len =3D %d\n", hsync_len);
           ^
   include/drm/drm_print.h:439:2: note: expanded from macro 'DRM_DEV_DEBUG_=
DRIVER'
           drm_dev_dbg(dev, cDRM_UT_DRIVER, fmt, ##__VA_ARGS__)
--
>> drivers/gpu/drm/exynos/exynos_drm_fbdev.c:112:2: error: no member named =
'dev' in 'struct device'; did you mean 'devt'?
           DRM_DEV_DEBUG_KMS(dev->dev,
           ^
   include/drm/drm_print.h:447:2: note: expanded from macro 'DRM_DEV_DEBUG_=
KMS'
           drm_dev_dbg(dev, cDRM_UT_KMS, fmt, ##__VA_ARGS__)
           ^
   include/drm/drm_print.h:330:30: note: expanded from macro 'drm_dev_dbg'
           _drm_dev_dbg((drm) ? (drm)->dev : NULL, cls, fmt, ##__VA_ARGS__)
                                       ^
   include/linux/device.h:544:10: note: 'devt' declared here
           dev_t                   devt;   /* dev_t, creates the sysfs "dev=
" */
                                   ^
   1 error generated.
--
>> drivers/gpu/drm/exynos/exynos_drm_fimc.c:188:2: error: no member named '=
dev' in 'struct device'; did you mean 'devt'?
           DRM_DEV_DEBUG_KMS(ctx->dev, "enable[%d]\n", enable);
           ^
   include/drm/drm_print.h:447:2: note: expanded from macro 'DRM_DEV_DEBUG_=
KMS'
           drm_dev_dbg(dev, cDRM_UT_KMS, fmt, ##__VA_ARGS__)
           ^
   include/drm/drm_print.h:330:30: note: expanded from macro 'drm_dev_dbg'
           _drm_dev_dbg((drm) ? (drm)->dev : NULL, cls, fmt, ##__VA_ARGS__)
                                       ^
   include/linux/device.h:544:10: note: 'devt' declared here
           dev_t                   devt;   /* dev_t, creates the sysfs "dev=
" */
                                   ^
   drivers/gpu/drm/exynos/exynos_drm_fimc.c:203:2: error: no member named '=
dev' in 'struct device'; did you mean 'devt'?
           DRM_DEV_DEBUG_KMS(ctx->dev, "enable[%d]\n", enable);
           ^
   include/drm/drm_print.h:447:2: note: expanded from macro 'DRM_DEV_DEBUG_=
KMS'
           drm_dev_dbg(dev, cDRM_UT_KMS, fmt, ##__VA_ARGS__)
           ^
   include/drm/drm_print.h:330:30: note: expanded from macro 'drm_dev_dbg'
           _drm_dev_dbg((drm) ? (drm)->dev : NULL, cls, fmt, ##__VA_ARGS__)
                                       ^
   include/linux/device.h:544:10: note: 'devt' declared here
           dev_t                   devt;   /* dev_t, creates the sysfs "dev=
" */
                                   ^
   drivers/gpu/drm/exynos/exynos_drm_fimc.c:227:2: error: no member named '=
dev' in 'struct device'; did you mean 'devt'?
           DRM_DEV_DEBUG_KMS(ctx->dev, "flag[0x%x]\n", flag);
           ^
   include/drm/drm_print.h:447:2: note: expanded from macro 'DRM_DEV_DEBUG_=
KMS'
           drm_dev_dbg(dev, cDRM_UT_KMS, fmt, ##__VA_ARGS__)
           ^
   include/drm/drm_print.h:330:30: note: expanded from macro 'drm_dev_dbg'
           _drm_dev_dbg((drm) ? (drm)->dev : NULL, cls, fmt, ##__VA_ARGS__)
                                       ^
   include/linux/device.h:544:10: note: 'devt' declared here
           dev_t                   devt;   /* dev_t, creates the sysfs "dev=
" */
                                   ^
   drivers/gpu/drm/exynos/exynos_drm_fimc.c:249:2: error: no member named '=
dev' in 'struct device'; did you mean 'devt'?
           DRM_DEV_DEBUG_KMS(ctx->dev, "cfg[0x%x]\n", cfg);
           ^
   include/drm/drm_print.h:447:2: note: expanded from macro 'DRM_DEV_DEBUG_=
KMS'
           drm_dev_dbg(dev, cDRM_UT_KMS, fmt, ##__VA_ARGS__)
           ^
   include/drm/drm_print.h:330:30: note: expanded from macro 'drm_dev_dbg'
           _drm_dev_dbg((drm) ? (drm)->dev : NULL, cls, fmt, ##__VA_ARGS__)
                                       ^
   include/linux/device.h:544:10: note: 'devt' declared here
           dev_t                   devt;   /* dev_t, creates the sysfs "dev=
" */
                                   ^
   drivers/gpu/drm/exynos/exynos_drm_fimc.c:271:2: error: no member named '=
dev' in 'struct device'; did you mean 'devt'?
           DRM_DEV_DEBUG_KMS(ctx->dev, "present[%d]before[%d]\n",
           ^
   include/drm/drm_print.h:447:2: note: expanded from macro 'DRM_DEV_DEBUG_=
KMS'
           drm_dev_dbg(dev, cDRM_UT_KMS, fmt, ##__VA_ARGS__)
           ^
   include/drm/drm_print.h:330:30: note: expanded from macro 'drm_dev_dbg'
           _drm_dev_dbg((drm) ? (drm)->dev : NULL, cls, fmt, ##__VA_ARGS__)
                                       ^
   include/linux/device.h:544:10: note: 'devt' declared here
           dev_t                   devt;   /* dev_t, creates the sysfs "dev=
" */
                                   ^
   drivers/gpu/drm/exynos/exynos_drm_fimc.c:281:2: error: no member named '=
dev' in 'struct device'; did you mean 'devt'?
           DRM_DEV_DEBUG_KMS(ctx->dev, "buf_id[%d]\n", buf_id);
           ^
   include/drm/drm_print.h:447:2: note: expanded from macro 'DRM_DEV_DEBUG_=
KMS'
           drm_dev_dbg(dev, cDRM_UT_KMS, fmt, ##__VA_ARGS__)
           ^
   include/drm/drm_print.h:330:30: note: expanded from macro 'drm_dev_dbg'
           _drm_dev_dbg((drm) ? (drm)->dev : NULL, cls, fmt, ##__VA_ARGS__)
                                       ^
   include/linux/device.h:544:10: note: 'devt' declared here
           dev_t                   devt;   /* dev_t, creates the sysfs "dev=
" */
                                   ^
   drivers/gpu/drm/exynos/exynos_drm_fimc.c:290:2: error: no member named '=
dev' in 'struct device'; did you mean 'devt'?
           DRM_DEV_DEBUG_KMS(ctx->dev, "enable[%d]\n", enable);
           ^
   include/drm/drm_print.h:447:2: note: expanded from macro 'DRM_DEV_DEBUG_=
KMS'
           drm_dev_dbg(dev, cDRM_UT_KMS, fmt, ##__VA_ARGS__)
           ^
   include/drm/drm_print.h:330:30: note: expanded from macro 'drm_dev_dbg'
           _drm_dev_dbg((drm) ? (drm)->dev : NULL, cls, fmt, ##__VA_ARGS__)
                                       ^
   include/linux/device.h:544:10: note: 'devt' declared here
           dev_t                   devt;   /* dev_t, creates the sysfs "dev=
" */
                                   ^
   drivers/gpu/drm/exynos/exynos_drm_fimc.c:305:2: error: no member named '=
dev' in 'struct device'; did you mean 'devt'?
           DRM_DEV_DEBUG_KMS(ctx->dev, "fmt[0x%x]\n", fmt);
           ^
   include/drm/drm_print.h:447:2: note: expanded from macro 'DRM_DEV_DEBUG_=
KMS'
           drm_dev_dbg(dev, cDRM_UT_KMS, fmt, ##__VA_ARGS__)
           ^
   include/drm/drm_print.h:330:30: note: expanded from macro 'drm_dev_dbg'
           _drm_dev_dbg((drm) ? (drm)->dev : NULL, cls, fmt, ##__VA_ARGS__)
                                       ^
   include/linux/device.h:544:10: note: 'devt' declared here
           dev_t                   devt;   /* dev_t, creates the sysfs "dev=
" */
                                   ^
   drivers/gpu/drm/exynos/exynos_drm_fimc.c:370:2: error: no member named '=
dev' in 'struct device'; did you mean 'devt'?
           DRM_DEV_DEBUG_KMS(ctx->dev, "fmt[0x%x]\n", fmt);
           ^
   include/drm/drm_print.h:447:2: note: expanded from macro 'DRM_DEV_DEBUG_=
KMS'
           drm_dev_dbg(dev, cDRM_UT_KMS, fmt, ##__VA_ARGS__)


vim +229 drivers/gpu/drm/bridge/nwl-dsi.c

44cfc6233447cb Guido G=C3=BCnther 2020-04-09  220 =20
44cfc6233447cb Guido G=C3=BCnther 2020-04-09  221  static int nwl_dsi_confi=
g_host(struct nwl_dsi *dsi)
44cfc6233447cb Guido G=C3=BCnther 2020-04-09  222  {
44cfc6233447cb Guido G=C3=BCnther 2020-04-09  223  	u32 cycles;
44cfc6233447cb Guido G=C3=BCnther 2020-04-09  224  	struct phy_configure_op=
ts_mipi_dphy *cfg =3D &dsi->phy_cfg.mipi_dphy;
44cfc6233447cb Guido G=C3=BCnther 2020-04-09  225 =20
44cfc6233447cb Guido G=C3=BCnther 2020-04-09  226  	if (dsi->lanes < 1 || d=
si->lanes > 4)
44cfc6233447cb Guido G=C3=BCnther 2020-04-09  227  		return -EINVAL;
44cfc6233447cb Guido G=C3=BCnther 2020-04-09  228 =20
44cfc6233447cb Guido G=C3=BCnther 2020-04-09 @229  	DRM_DEV_DEBUG_DRIVER(ds=
i->dev, "DSI Lanes %d\n", dsi->lanes);
44cfc6233447cb Guido G=C3=BCnther 2020-04-09  230  	nwl_dsi_write(dsi, NWL_=
DSI_CFG_NUM_LANES, dsi->lanes - 1);
44cfc6233447cb Guido G=C3=BCnther 2020-04-09  231 =20
44cfc6233447cb Guido G=C3=BCnther 2020-04-09  232  	if (dsi->dsi_mode_flags=
 & MIPI_DSI_CLOCK_NON_CONTINUOUS) {
44cfc6233447cb Guido G=C3=BCnther 2020-04-09  233  		nwl_dsi_write(dsi, NWL=
_DSI_CFG_NONCONTINUOUS_CLK, 0x01);
44cfc6233447cb Guido G=C3=BCnther 2020-04-09  234  		nwl_dsi_write(dsi, NWL=
_DSI_CFG_AUTOINSERT_EOTP, 0x01);
44cfc6233447cb Guido G=C3=BCnther 2020-04-09  235  	} else {
44cfc6233447cb Guido G=C3=BCnther 2020-04-09  236  		nwl_dsi_write(dsi, NWL=
_DSI_CFG_NONCONTINUOUS_CLK, 0x00);
44cfc6233447cb Guido G=C3=BCnther 2020-04-09  237  		nwl_dsi_write(dsi, NWL=
_DSI_CFG_AUTOINSERT_EOTP, 0x00);
44cfc6233447cb Guido G=C3=BCnther 2020-04-09  238  	}
44cfc6233447cb Guido G=C3=BCnther 2020-04-09  239 =20
44cfc6233447cb Guido G=C3=BCnther 2020-04-09  240  	/* values in byte clock=
 cycles */
44cfc6233447cb Guido G=C3=BCnther 2020-04-09  241  	cycles =3D ui2bc(dsi, c=
fg->clk_pre);
44cfc6233447cb Guido G=C3=BCnther 2020-04-09  242  	DRM_DEV_DEBUG_DRIVER(ds=
i->dev, "cfg_t_pre: 0x%x\n", cycles);
44cfc6233447cb Guido G=C3=BCnther 2020-04-09  243  	nwl_dsi_write(dsi, NWL_=
DSI_CFG_T_PRE, cycles);
44cfc6233447cb Guido G=C3=BCnther 2020-04-09  244  	cycles =3D ps2bc(dsi, c=
fg->lpx + cfg->clk_prepare + cfg->clk_zero);
44cfc6233447cb Guido G=C3=BCnther 2020-04-09  245  	DRM_DEV_DEBUG_DRIVER(ds=
i->dev, "cfg_tx_gap (pre): 0x%x\n", cycles);
44cfc6233447cb Guido G=C3=BCnther 2020-04-09  246  	cycles +=3D ui2bc(dsi, =
cfg->clk_pre);
44cfc6233447cb Guido G=C3=BCnther 2020-04-09  247  	DRM_DEV_DEBUG_DRIVER(ds=
i->dev, "cfg_t_post: 0x%x\n", cycles);
44cfc6233447cb Guido G=C3=BCnther 2020-04-09  248  	nwl_dsi_write(dsi, NWL_=
DSI_CFG_T_POST, cycles);
44cfc6233447cb Guido G=C3=BCnther 2020-04-09  249  	cycles =3D ps2bc(dsi, c=
fg->hs_exit);
44cfc6233447cb Guido G=C3=BCnther 2020-04-09  250  	DRM_DEV_DEBUG_DRIVER(ds=
i->dev, "cfg_tx_gap: 0x%x\n", cycles);
44cfc6233447cb Guido G=C3=BCnther 2020-04-09  251  	nwl_dsi_write(dsi, NWL_=
DSI_CFG_TX_GAP, cycles);
44cfc6233447cb Guido G=C3=BCnther 2020-04-09  252 =20
44cfc6233447cb Guido G=C3=BCnther 2020-04-09  253  	nwl_dsi_write(dsi, NWL_=
DSI_CFG_EXTRA_CMDS_AFTER_EOTP, 0x01);
44cfc6233447cb Guido G=C3=BCnther 2020-04-09  254  	nwl_dsi_write(dsi, NWL_=
DSI_CFG_HTX_TO_COUNT, 0x00);
44cfc6233447cb Guido G=C3=BCnther 2020-04-09  255  	nwl_dsi_write(dsi, NWL_=
DSI_CFG_LRX_H_TO_COUNT, 0x00);
44cfc6233447cb Guido G=C3=BCnther 2020-04-09  256  	nwl_dsi_write(dsi, NWL_=
DSI_CFG_BTA_H_TO_COUNT, 0x00);
44cfc6233447cb Guido G=C3=BCnther 2020-04-09  257  	/* In LP clock cycles *=
/
44cfc6233447cb Guido G=C3=BCnther 2020-04-09  258  	cycles =3D us2lp(cfg->l=
p_clk_rate, cfg->wakeup);
44cfc6233447cb Guido G=C3=BCnther 2020-04-09  259  	DRM_DEV_DEBUG_DRIVER(ds=
i->dev, "cfg_twakeup: 0x%x\n", cycles);
44cfc6233447cb Guido G=C3=BCnther 2020-04-09  260  	nwl_dsi_write(dsi, NWL_=
DSI_CFG_TWAKEUP, cycles);
44cfc6233447cb Guido G=C3=BCnther 2020-04-09  261 =20
44cfc6233447cb Guido G=C3=BCnther 2020-04-09  262  	return nwl_dsi_clear_er=
ror(dsi);
44cfc6233447cb Guido G=C3=BCnther 2020-04-09  263  }
44cfc6233447cb Guido G=C3=BCnther 2020-04-09  264 =20

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/202107150708.BTBJCBjy-lkp%40intel.com.

--KsGdsel6WgEHnImy
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

H4sICG1q72AAAy5jb25maWcAjDzLdts4svv+Cp30pmfRieU47uTe4wVIghJaJMEAoB7e8Di2
nPYdPzKy3ZP8/a0CQBIAQaWzSEJU4VWoNwr69ZdfZ+T15enh6uXu+ur+/sfs6/5xf7h62d/M
bu/u9/87y/is4mpGM6beAnJx9/j6/d33j+ft+dnsw9v52duT3w/X89lqf3jc38/Sp8fbu6+v
MMDd0+Mvv/6S8ipnizZN2zUVkvGqVXSrLt5c3189fp39vT88A95s/v7tyduT2W9f717+5907
+Pvh7nB4Ory7v//7of12ePq//fXL7OPN+afz9x/2N5/217fvz29vTq6vPn74dHL+5fZmP//j
09mn8z/m11/2/3rTzboYpr04cZbCZJsWpFpc/Ogb8bPHnb8/gT8djEjssKiaAR2aOtzT9x9O
Trv2IhvPB23QvSiyoXvh4PlzweJSUrUFq1bO4obGViqiWOrBlrAaIst2wRWfBLS8UXWjBrji
vJCtbOqaC9UKWohoX1bBtHQEqnhbC56zgrZ51RKlnN5MfG43XDgbSBpWZIqVtFUkgS4SpnRW
shSUAJGqnMNfgCKxK/DOr7OF5sX72fP+5fXbwE2sYqql1bolAojJSqYu3vdnkPKyxnUpKp1J
GlKzdgnzUBFACp6SojuNN2+8NbeSFMppXJI1bVdUVLRoF5esHkZxIQlATuOg4rIkccj2cqoH
nwKcxQGXUiGv/TqzMGe9s7vn2ePTC9JzBNerPoaAaz8G314e782Pg89csA+0O7KNGc1JUyjN
Bc7ZdM1LLlVFSnrx5rfHp0dHG8idXLPakR3bgP+mqhjaay7Zti0/N7Sh8dZRlw1R6bLtevSb
SwWXsi1pycUOpYSky8guG0kLlrj9SAPaNoKpj5kImEpj4CpIUXTSAoI3e3798vzj+WX/MEjL
glZUsFTLJQht4uzJBckl38QhNM9pqhhOnedtaeQzwKtplbFKC398kJItBKgukDGHaUUGINBC
G1BAEkaId02XrqRhS8ZLwiq/TbIyhtQuGRVIsp0PLSVrGS/LZmK5RAk4bqAuqAfFRRwLVy3W
elttyTPqT5FzkdLM6jfmmhtZEyGpJVZ/6u7IGU2aRS59kdk/3syeboNzHkwYT1eSNzCnYceM
OzNqpnFRtPT8iHVek4JlRNG2IFK16S4tIhyjtfl6YMAArMeja1opeRTYJoKTLCWuQo6hlXCQ
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
AgA=

--KsGdsel6WgEHnImy--
