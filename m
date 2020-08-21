Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBAMFQD5AKGQEEAWSFZA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x240.google.com (mail-oi1-x240.google.com [IPv6:2607:f8b0:4864:20::240])
	by mail.lfdr.de (Postfix) with ESMTPS id EEE9224DDA1
	for <lists+clang-built-linux@lfdr.de>; Fri, 21 Aug 2020 19:21:06 +0200 (CEST)
Received: by mail-oi1-x240.google.com with SMTP id 17sf866194oij.19
        for <lists+clang-built-linux@lfdr.de>; Fri, 21 Aug 2020 10:21:06 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598030466; cv=pass;
        d=google.com; s=arc-20160816;
        b=X6AlhFnMCmQCA1gbQKqZMYEnuUK0/1O4QMCWI5toE6zLaPFRpLl1zrfkH+k0+IsfhH
         4FzsFLPoQUnsX1tQD47rY6+dp8MvBDyqUkHc1l5vSwREK5yiv7wxvikdtFh/ze8vpzcs
         gRrMhGlb6F+OYdFDXxaZmdViIYxIMYvCsCpuIr0OKUwTWFg0dY3ucH861D+Ejg5Lzpsq
         yxfxDDwsh9nAjJKAu0Y48u/VzlpMlZKS9qPJQZIunBwNXAP/DYWQW8BVjzx+4gsoTnWL
         JSW0aEBVKfz/RT5CvDyWLKMiezvAOPHqxx53NsC4f1P21kmMEHnYKcWLON0HoAWHqSae
         8KMw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=YhBt4fJp496UlWS8/DUIo0kF4BHa/89ZIZWfen+6lnw=;
        b=LAiKawXbvPdNA8NK60u9eoMRqlLvnV5YfRMGXOyTOYnC1zANC19vBe/Jmo0vFxzrJJ
         m9IiX1NH62sSNS5sYOHhccstYgLyeJe2h25CnAKmHvOUn0aPbx6jCgKchgKglunfGln4
         6SgcFBCCAC+BF87V9ni0vtC65ZlSP/JpooUY2m6Njb9mzv/5c6nRz4eONLdzWWRGFgFo
         Xri88a6Q+x2AMcO/R2pQoOsACS+vxo6CTF3RW0uhREK/IHzJfdOYFpE4ccmnjH8w2OCG
         vbZirscFezkNVyYvZUt/Gn9oTfMzwItMt5Lg6loglYWmsIfwq3IQ9tUPSSMt/oA4WreE
         8nhQ==
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
        bh=YhBt4fJp496UlWS8/DUIo0kF4BHa/89ZIZWfen+6lnw=;
        b=qvFZy7vYzKH+gXbawoVJz6yc0XV7k0vAmGVfr4oJNcJ4FrnyUufuX6EGZSld0uOYD2
         oyTqYr290WxjKqUuH1f7z312XdZ3JmsJdmOYsVhYOCEEEsBLP/7vMYhUSVMoYkhy63jF
         ib56iaDU9MphzJQxwqsLbz3YE6LI3OuKK52YgOeLktYwVRGDm8mr/rm9xJl1XgjnhcY9
         zokvDFLNZzz9QHkCUNpSIgRqqJPZPbJgg5ITH7Lzjpszhrc54IpKyEZqALReAh6KEcoG
         swFwpi8oLGjw6FDhfpF8Tcl/GZST/xoGS1RuVpBP97sJ6HRF7HKJMSNEvFw2Gn4vWqdH
         aDrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=YhBt4fJp496UlWS8/DUIo0kF4BHa/89ZIZWfen+6lnw=;
        b=GDmJaKrGmtrzz2sZZPf5SvGym0nJvWXMuDZV+LPgAIuLS5xwTLAFM87XbbAm18opiK
         WXrtZkf0B3lKJUam+s3mMwkIiEr4naIfecTsblrDk2yWH3MQIXTBYToFeyxViXCuZVR+
         angaxChBGp3d4YQiqHdaCcQ7GLCbq3Qmif3KLfvyJIU8t8Yzv6onrAglEux2A7s58pGh
         ul8228+VXELoU9fiMANE/4AYlolShPiDdEfC6LyfUVwU9JrEyBEc3fb7PH4aX/qCIAbj
         K9EsROGgPFtjtBbjnDJH24dMRxXyZwuvU3LMRgRg8WJ43xv6zu6koAUi0A1T+sxdi9JG
         gbwQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530cJtE3cvEj5ovUjaBr71QH+6+4/wIFouVVNy0hcpxlAeOT4uc6
	/R98rnlx7ZRYD3jsbVEghDQ=
X-Google-Smtp-Source: ABdhPJwA5qwURe03IqYbtIBfSeWStBppP+A0WyTA0Et/4siByY6qwVTn3NVCLG/zX4eROOjeJU53WQ==
X-Received: by 2002:a9d:5786:: with SMTP id q6mr2686551oth.258.1598030465853;
        Fri, 21 Aug 2020 10:21:05 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:744a:: with SMTP id p10ls624380otk.5.gmail; Fri, 21 Aug
 2020 10:21:05 -0700 (PDT)
X-Received: by 2002:a05:6830:18c7:: with SMTP id v7mr2688578ote.186.1598030465410;
        Fri, 21 Aug 2020 10:21:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598030465; cv=none;
        d=google.com; s=arc-20160816;
        b=u9dljNTe3jH+SrtB1eOjdsa92yA8/a5VvozrL9Gdn1KB73xKjtcVZ8+/Pk48cAVLte
         Jt/0M1wS4mbOIZdxccyKxF0GR/hMQLXXsgMdJJqpZgSpRAzU+S3X8m8PvuzjrZTTzExt
         RkJ6jdpXykKDg6HSxT7hfk4Iphv2KMKwBQar0RlJT8Ti0qReOwHkig6hylWBGLC9GLSZ
         ZIrIo0FHCr64YNbGKYWJDbN5suHAOz0iST4zoIxjCLPcnJZAKk1pZpQJ8M9ia8+nyErr
         zz5VrKmUP/VI7U07ZTJglYQhVJ/0ymUlbCrEKPabeoN6ocjnABWl4Sk5PVC3xX/M5epi
         OVLg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=1RGkS42xhWyoNZ33GKgkpdckkwsTM13Y0X2tNAlVVOc=;
        b=XCrUwEAQkp5DmUSPAuli5uIa8Urgewt+duQHHciUEOaX0dFwupep+L4Q+Rta0qRnQ+
         A1lSYYZ0J7eS+mT5UCdFd4Vzu2XVQKih5VBGGQ3vT6zHucFN8qKxBtM/W4ve56y23jte
         IcDIbyuz6f4tUgK4aH6N7shYVvXzoZZ/s3F5TbrSTdZNXtPH2tngDVDZShzRVElvNMRA
         xnbeqdEDMS3e+hNn49IBbiWQkx4/w8AOGbP0idEx0STd347HWdqUjTYRAnJgYjJU+MIP
         pfSDTqx+zwrcBwGHWWP9eZBsK1R55pfvyzDL+y3UTIoNd542Bbc2gWTv+9nKTgYcjPMI
         CFXg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.31 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga06.intel.com (mga06.intel.com. [134.134.136.31])
        by gmr-mx.google.com with ESMTPS id 22si121458oiy.5.2020.08.21.10.21.05
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 21 Aug 2020 10:21:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.31 as permitted sender) client-ip=134.134.136.31;
IronPort-SDR: J4FiouInA12eFK2+irHKNG+QDt+BIZVKdJ/ew9OjppHfmPVfFJcgt7mt4UnseuByHjEx76pDX/
 7mzWirP1/7vg==
X-IronPort-AV: E=McAfee;i="6000,8403,9720"; a="217130368"
X-IronPort-AV: E=Sophos;i="5.76,338,1592895600"; 
   d="scan'208";a="217130368"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
  by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 21 Aug 2020 10:21:04 -0700
IronPort-SDR: LHdu62qyqt0eng3KmoaeVx//hy//ABIL7iweTfJJ/3XMD+/oBtI/2ljW3aSOtsW1I98ymV31T8
 KjVCvuLN401g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,338,1592895600"; 
   d="scan'208";a="498041036"
Received: from lkp-server01.sh.intel.com (HELO 91ed66e1ca04) ([10.239.97.150])
  by fmsmga006.fm.intel.com with ESMTP; 21 Aug 2020 10:21:00 -0700
Received: from kbuild by 91ed66e1ca04 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1k9Aiq-0001GR-7C; Fri, 21 Aug 2020 17:21:00 +0000
Date: Sat, 22 Aug 2020 01:20:16 +0800
From: kernel test robot <lkp@intel.com>
To: =?iso-8859-1?Q?K=E9vin_L'h=F4pital?= <kevin.lhopital@bootlin.com>,
	linux-media@vger.kernel.org
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	mchehab@kernel.org, robh+dt@kernel.org, mark.rutland@arm.com,
	mripard@kernel.org, wens@csie.org, yong.deng@magewell.com,
	p.zabel@pengutronix.de, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 3/7] media: i2c: Add support for the OV8865 image sensor
Message-ID: <202008220159.zlX8y0F3%lkp@intel.com>
References: <20200821145935.20346-4-kevin.lhopital@bootlin.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20200821145935.20346-4-kevin.lhopital@bootlin.com>
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

Hi "K=C3=A9vin,

Thank you for the patch! Yet something to improve:

[auto build test ERROR on linuxtv-media/master]
[also build test ERROR on sunxi/sunxi/for-next robh/for-next v5.9-rc1 next-=
20200821]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch]

url:    https://github.com/0day-ci/linux/commits/K-vin-L-h-pital/Support-of=
-MIPI-CSI-2-for-A83T-and-OV8865-camera/20200821-230356
base:   git://linuxtv.org/media_tree.git master
config: x86_64-randconfig-a002-20200820
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project b587ca=
93be114d07ec3bf654add97d7872325281)
reproduce (this is a W=3D1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/=
make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install x86_64 cross compiling tool for clang build
        # apt-get install binutils-x86-64-linux-gnu
        COMPILER_INSTALL_PATH=3D$HOME/0day COMPILER=3Dclang make.cross ARCH=
=3Dx86_64  randconfig
        COMPILER_INSTALL_PATH=3D$HOME/0day COMPILER=3Dclang make.cross ARCH=
=3Dx86_64=20

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

>> drivers/media/i2c/Kconfig:741:error: recursive dependency detected!
   drivers/media/i2c/Kconfig:741: symbol VIDEO_IMX214 depends on V4L2_FWNOD=
E
   drivers/media/v4l2-core/Kconfig:71: symbol V4L2_FWNODE is selected by VI=
DEO_OV8865
   drivers/media/i2c/Kconfig:1036: symbol VIDEO_OV8865 depends on VIDEO_V4L=
2_SUBDEV_API
   drivers/media/v4l2-core/Kconfig:19: symbol VIDEO_V4L2_SUBDEV_API depends=
 on MEDIA_CONTROLLER
   drivers/media/Kconfig:168: symbol MEDIA_CONTROLLER is selected by VIDEO_=
IMX214
   For a resolution refer to Documentation/kbuild/kconfig-language.rst
   subsection "Kconfig recursive dependency limitations"

# https://github.com/0day-ci/linux/commit/aef022e7b2b7fca2cecab96bcbd6bca99=
1163ab4
git remote add linux-review https://github.com/0day-ci/linux
git fetch --no-tags linux-review K-vin-L-h-pital/Support-of-MIPI-CSI-2-for-=
A83T-and-OV8865-camera/20200821-230356
git checkout aef022e7b2b7fca2cecab96bcbd6bca991163ab4
vim +741 drivers/media/i2c/Kconfig

32a363d0b0b142f Mauro Carvalho Chehab 2020-03-25  718 =20
5c57ae64e8bccc6 Mauro Carvalho Chehab 2020-04-15  719  menu "Camera sensor =
devices"
5c57ae64e8bccc6 Mauro Carvalho Chehab 2020-04-15  720  	visible if MEDIA_CA=
MERA_SUPPORT
f48fd1514212b5c Mauro Carvalho Chehab 2020-03-25  721 =20
f48fd1514212b5c Mauro Carvalho Chehab 2020-03-25  722  config VIDEO_APTINA_=
PLL
f48fd1514212b5c Mauro Carvalho Chehab 2020-03-25  723  	tristate
f48fd1514212b5c Mauro Carvalho Chehab 2020-03-25  724 =20
f48fd1514212b5c Mauro Carvalho Chehab 2020-03-25  725  config VIDEO_SMIAPP_=
PLL
f48fd1514212b5c Mauro Carvalho Chehab 2020-03-25  726  	tristate
f48fd1514212b5c Mauro Carvalho Chehab 2020-03-25  727 =20
e62138403a841e4 Shawn Tu              2019-11-01  728  config VIDEO_HI556
e62138403a841e4 Shawn Tu              2019-11-01  729  	tristate "Hynix Hi-=
556 sensor support"
32a363d0b0b142f Mauro Carvalho Chehab 2020-03-25  730  	depends on I2C && V=
IDEO_V4L2
32a363d0b0b142f Mauro Carvalho Chehab 2020-03-25  731  	select MEDIA_CONTRO=
LLER
32a363d0b0b142f Mauro Carvalho Chehab 2020-03-25  732  	select VIDEO_V4L2_S=
UBDEV_API
e62138403a841e4 Shawn Tu              2019-11-01  733  	select V4L2_FWNODE
e62138403a841e4 Shawn Tu              2019-11-01  734  	help
e62138403a841e4 Shawn Tu              2019-11-01  735  	  This is a Video4L=
inux2 sensor driver for the Hynix
e62138403a841e4 Shawn Tu              2019-11-01  736  	  Hi-556 camera.
e62138403a841e4 Shawn Tu              2019-11-01  737 =20
e62138403a841e4 Shawn Tu              2019-11-01  738  	  To compile this d=
river as a module, choose M here: the
e62138403a841e4 Shawn Tu              2019-11-01  739  	  module will be ca=
lled hi556.
e62138403a841e4 Shawn Tu              2019-11-01  740 =20
4361905962417ef Ricardo Ribalda       2018-10-05 @741  config VIDEO_IMX214
4361905962417ef Ricardo Ribalda       2018-10-05  742  	tristate "Sony IMX2=
14 sensor support"
32a363d0b0b142f Mauro Carvalho Chehab 2020-03-25  743  	depends on GPIOLIB =
&& I2C && VIDEO_V4L2
4361905962417ef Ricardo Ribalda       2018-10-05  744  	depends on V4L2_FWN=
ODE
32a363d0b0b142f Mauro Carvalho Chehab 2020-03-25  745  	select MEDIA_CONTRO=
LLER
32a363d0b0b142f Mauro Carvalho Chehab 2020-03-25  746  	select VIDEO_V4L2_S=
UBDEV_API
6de18fa3bd1dd51 Ian Kumlien           2020-02-26  747  	select REGMAP_I2C
4361905962417ef Ricardo Ribalda       2018-10-05  748  	help
4361905962417ef Ricardo Ribalda       2018-10-05  749  	  This is a Video4L=
inux2 sensor driver for the Sony
4361905962417ef Ricardo Ribalda       2018-10-05  750  	  IMX214 camera.
4361905962417ef Ricardo Ribalda       2018-10-05  751 =20
4361905962417ef Ricardo Ribalda       2018-10-05  752  	  To compile this d=
river as a module, choose M here: the
4361905962417ef Ricardo Ribalda       2018-10-05  753  	  module will be ca=
lled imx214.
4361905962417ef Ricardo Ribalda       2018-10-05  754 =20

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/202008220159.zlX8y0F3%25lkp%40intel.com.
