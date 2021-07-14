Return-Path: <clang-built-linux+bncBC4LXIPCY4NRB754XWDQMGQEAHQQVCY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13d.google.com (mail-il1-x13d.google.com [IPv6:2607:f8b0:4864:20::13d])
	by mail.lfdr.de (Postfix) with ESMTPS id C05C03C937B
	for <lists+clang-built-linux@lfdr.de>; Thu, 15 Jul 2021 00:00:32 +0200 (CEST)
Received: by mail-il1-x13d.google.com with SMTP id s7-20020a92cb070000b02902021736bb95sf1955368ilo.5
        for <lists+clang-built-linux@lfdr.de>; Wed, 14 Jul 2021 15:00:32 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1626300031; cv=pass;
        d=google.com; s=arc-20160816;
        b=HIk4fSQRuTaARWiIwS39lIbMz+0vvR9dJC1K8FeM/yMgyfmd+Fi7E3f3uU/S3m4g6v
         //bB0xxhaYmiG92mmrkG+4J96tlcPNzHDnqizRQPon2SHZ25+REwjA3bfz85okJay9Fv
         h4OoqjaQIYSvh8uOBFp2c/jJ4I36fnxUKPaAXhRULzDKVfrbbVJQFlQ5rJ1XZg0alBas
         vAnRBYRDkr01Se9gLQb67EpW9uq660HVd/Y67DMaykZU+k9LrOxbZ4qOefT4pRPHPkLC
         nXKpVN57B0GOkmNrctHxfFfyn85z5lLNoIF5fdjJJ4s/oKmFwJCdliGeBpNDCEs1t3s5
         idUA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=949RvorxpvpRpstQXtZEWwN1ViMsiWK4cACCu43Prek=;
        b=E0skPQpHC7FzVVR4of2j9RjV5B2usFxSq/RlhoAmOEiVareuBujzYhRe0VxGZLAkF2
         LwUjMtp6z5+rowCNPiD1c1/E81BjRUJ5m3gk5e3/ABb7vmHTwqjDSOZT21q+vOaDwrOI
         k9UUibiEf2BxKD1bdRE4VxaJid/IMWK2lmb2O/x7PjJ4bfa7h1ixyi8x/8aMuv4qmSiz
         NwNqrsDATGoU9Se5S2jomPqfXthKPYvlvvLeOZJTCMi0TsXiSVRhsQ4uG5y233N3C9I8
         sPiDN+4QkD9XDYtyYR5BOefg0C0nDN2WbPbfrvosfUvo7x2fYovr/XmEs9tsp6W5c8Qx
         MG3A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.31 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :user-agent:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=949RvorxpvpRpstQXtZEWwN1ViMsiWK4cACCu43Prek=;
        b=YY4+a9IwSKTJs8m2lbpPluKrD09gWO62yuvYmg8lZN/isLeJHhBNT8Rk+nWARk0qQ5
         OsJrq40m6+wu9PIPd6ON2MfPPbA3RgHHIx4K7vsLDIFHsFYGGM/+gplOAh7pAvjopL51
         uyiHxCFnagtV4zD7x8aNhNvWY+dns0OUT0x0UBNDdh6RA5nWWZvC2zA8IF3/b6jE1Pha
         rY5WckxQAfDStOXZGvWUdmEBHdNcclOHzzQUtP4EldP88OTFMdGsLH8uRNYZpXJtxsBm
         dPzwzD2fTaS9wXI4k5j5ofaNhRVV96yttcY7VMg9QH7IJ1sV7NO+4B/3PIR0S5O4JN8U
         hDUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=949RvorxpvpRpstQXtZEWwN1ViMsiWK4cACCu43Prek=;
        b=Ry3fsGDD7p70t4Xs1QK18KctBI8h5sONV6ZYjdHbMNchvt4cXYDo5pAzpY+EAA6m88
         9W8ywOTSWUyDi65vzym1spwFnuJ+jo+y+TxffONyBRrtuCNorj0hOBd3CXkATY9mJo44
         rv+01E8PBrSTIGwBrHxVkHLg+SNPmjf9+jrB8BWjlECiwtEr2NWJrPQuzATjcUnSlSg4
         xTzEoNAypRC+eRz6mK7JUqhIq67FAqXCBi0SUV3YY/N+8oiEnnJLO5zHYmBKRQhHNQie
         H+lbYYBbR9bFG9K4UhCmsuZQ+Yj+6JMTt9fsINd9y2YoOZ8gfKrMTC8Oeh1T5m7/cPj6
         NwDg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530qcPQSXp5cV0hTEkli3RaS0Y0ww6bog39i3+Y7GQWVOI2/XQjZ
	euSPIosGWUU+QUkmLzZkE5o=
X-Google-Smtp-Source: ABdhPJysQMmHYGbixeLHJFUuvZAkCrk4QwQMOQAXr0DqykIUu0jOt63vooOZ+gATkdYiZYgh9f55AA==
X-Received: by 2002:a6b:2b44:: with SMTP id r65mr193881ior.99.1626300031296;
        Wed, 14 Jul 2021 15:00:31 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a02:3b69:: with SMTP id i41ls823672jaf.3.gmail; Wed, 14 Jul
 2021 15:00:30 -0700 (PDT)
X-Received: by 2002:a02:3845:: with SMTP id v5mr324914jae.119.1626300030723;
        Wed, 14 Jul 2021 15:00:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1626300030; cv=none;
        d=google.com; s=arc-20160816;
        b=qvbHTtG4o9wQs0jQwIhb3dKzexh4zBQ1/j5BNKSC8XZxJOamVrQsL47b5NB3zAEBa+
         q/+XRxYyz3TQlQkCFzqN3ZgwoDRlLykX2+a4/P/2SYLH7nA6yq7AG3mPWH3VmlbhuHyb
         lvZn3D0Bh/PB3fukOc/CfhI8ugHKeT5Zk6LqXdDZWrkUD0Iv6oI/XHLvL89XBe63Jnmv
         VEULUatIH712pSge+6sq4mEhnROsbRa/E/zIyecvPIo0PVCLJB8tMPdHAq18WudE7CV8
         kUSbeTH8GudD+ndtnPVSD9Zig0KtlhXdKqCH0ZjasjXm8U8/auy86t4+/lvPP+QasguP
         EW4Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date;
        bh=4GFpmIVbZemFUwirT2eHPAvoTNQgmsEyYingYbmzDw8=;
        b=aGlC/HIjL7aD4rlIDYSxgi3065PxQ3uEa4gKTkW7PfKvouIav2bXe90q7ZLf2Yq0EI
         eOfMoW2MSGCsF1QlSh30UP8vN9aphPjgn9GSbcZ0Bln6oEJ6pPkPj3TkMENnoz+TWlix
         E4T2xKBYH1XEJ93shOLrgm3s1b2pyTFbZJX4CuQSU3Yy+ZcDTuccPOq9uyP+/RZv/3hD
         VC5iHEwr8Ai0AmPjrDUXhJ1N2HpM7d1diD+xIJwz515KgTbVsxKPPEfrrn3zKNVYttzt
         4WzO/R5e1XYe2mKprbWDL6+JnyUPWqOwerqKqYvPj2n1HzToUqA0/5hudVuL42IsQgWx
         9vIQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.31 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga06.intel.com (mga06.intel.com. [134.134.136.31])
        by gmr-mx.google.com with ESMTPS id e16si329174ilm.3.2021.07.14.15.00.29
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Jul 2021 15:00:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.31 as permitted sender) client-ip=134.134.136.31;
X-IronPort-AV: E=McAfee;i="6200,9189,10045"; a="271545022"
X-IronPort-AV: E=Sophos;i="5.84,240,1620716400"; 
   d="gz'50?scan'50,208,50";a="271545022"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
  by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 14 Jul 2021 15:00:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,240,1620716400"; 
   d="gz'50?scan'50,208,50";a="630522252"
Received: from lkp-server01.sh.intel.com (HELO 4aae0cb4f5b5) ([10.239.97.150])
  by orsmga005.jf.intel.com with ESMTP; 14 Jul 2021 15:00:19 -0700
Received: from kbuild by 4aae0cb4f5b5 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1m3mvT-000J4z-7t; Wed, 14 Jul 2021 22:00:19 +0000
Date: Thu, 15 Jul 2021 06:00:06 +0800
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
Message-ID: <202107150530.OX5WoZHM-lkp@intel.com>
References: <20210714175138.319514-5-jim.cromie@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="lrZ03NoBR/3+SXJZ"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20210714175138.319514-5-jim.cromie@gmail.com>
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


--lrZ03NoBR/3+SXJZ
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
config: arm-randconfig-r004-20210714 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 8d6963=
5ed9ecf36fd0ca85906bfde17949671cbe)
reproduce (this is a W=3D1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/=
make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install arm cross compiling tool for clang build
        # apt-get install binutils-arm-linux-gnueabi
        # https://github.com/0day-ci/linux/commit/4a3dcdd418da090977ab9fa22=
5818e5ad142288d
        git remote add linux-review https://github.com/0day-ci/linux
        git fetch --no-tags linux-review Jim-Cromie/drm-use-dyndbg-in-drm_p=
rint/20210715-015347
        git checkout 4a3dcdd418da090977ab9fa225818e5ad142288d
        # save the attached .config to linux build tree
        mkdir build_dir
        COMPILER_INSTALL_PATH=3D$HOME/0day COMPILER=3Dclang make.cross O=3D=
build_dir ARCH=3Darm SHELL=3D/bin/bash drivers/gpu/drm/bridge/

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
clang-built-linux/202107150530.OX5WoZHM-lkp%40intel.com.

--lrZ03NoBR/3+SXJZ
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
IhdL/wAJqGUqP4YBAA==

--lrZ03NoBR/3+SXJZ--
