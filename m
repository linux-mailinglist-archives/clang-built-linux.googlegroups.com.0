Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBSF4SCCAMGQEGE2VYVA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe37.google.com (mail-vs1-xe37.google.com [IPv6:2607:f8b0:4864:20::e37])
	by mail.lfdr.de (Postfix) with ESMTPS id BD86336A162
	for <lists+clang-built-linux@lfdr.de>; Sat, 24 Apr 2021 15:34:01 +0200 (CEST)
Received: by mail-vs1-xe37.google.com with SMTP id k28-20020a67c29c0000b02902257833d490sf301678vsj.20
        for <lists+clang-built-linux@lfdr.de>; Sat, 24 Apr 2021 06:34:01 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1619271240; cv=pass;
        d=google.com; s=arc-20160816;
        b=xnOlehsRPw+sNTHz8a01UWyYGa95My7+oB7ngc+plzMYbglKr/2KGIm+mW2AkJQY4L
         q3Js67Tp031axG7agPcwWpZrhEv+pTLKDHYnTraMsiEac6KOHGrucBeKFKb8kbqcIo4m
         U9sMrt8l3dMF7i8hk8eexr2XWRRdL+Joqfgd33N68t63EOnuYW9+9/u9D3GohsspPv14
         sN3hKNNYjAvxdIhOgzAxo6eyw984LCPEpNjK/Q8n2S6z0B1g5Iag4T+hfs9JDQSJl24u
         CP7aG/SQRfBXhCd+qHbfAcWXmsbufPGaYdWFoyEJi5yXRFOyQe74CaP+OKpPkWijlqPx
         Pu6Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=+rMInkNCUhhcIIfmS5km5H6shmlx9rf9z4qqCiqUc+U=;
        b=m09HY/KiVTqVYzUSzHn0la0IVj59a2sqQruS8lUlM4eQmwOKlM0a6+5Y2OaKwHV3w9
         +RGvESb2+KCUWHng/ndvQcSUflmnw/caM/W0xKUbWTVVZoUzahdE/F6OaOikYQyv9iaJ
         hv/HLlhCTh+id2UBykHc5AKM6uOFqCOCxY3/HnfvnljzBNzmu9hyVjzu+nfcwTtg8k+Q
         tDJDy+Hauw7NIgbHWFl/3Hv3jiM5Da/huIP1l/IiR6p5Nk86zuc3hqxKCVk5lgE+nhJT
         7OaA8lWRMxqkzZm4RHH78GcmWGekSiW9ZDB3gVsStYotlxZ2l72o3viTEHcr2+DwhvA7
         dioA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.31 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=+rMInkNCUhhcIIfmS5km5H6shmlx9rf9z4qqCiqUc+U=;
        b=aRQV0A+3dtj6wTW5XoJ/ibzvm7WwV4RnIwRPF/XrYnHJCfPvVzjVrM3+YSThloDRj4
         DPDv+SxWYGHJGFOf//TDnZRBQb2yOkcrGrOsD843ML/yIiuSLqmGT+H5P9H1Eq0VHsEo
         +nQAu8MJPKjrIOVbRgJKAP7+4UMcYZja6GMpK4lEpIyEN59W/7vPVB637eMtMzJFEw/i
         To99jv2cPPenpehQghRU+Ay4ZKnpt7vwc1vf4SyHQjhYuIEsPNo8dyawL55A/4iCUwnP
         tVES+K6aj4Hby3KYBxx0NK4YvrWc5ZDcrhIqNJUUDfMu5fYMvv1TCNWTtVJg1Z7rGUUe
         0W6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=+rMInkNCUhhcIIfmS5km5H6shmlx9rf9z4qqCiqUc+U=;
        b=mgM8B60UG/tFpxRUtfuIss6nFfjuV09STQUesm2CmTPM6sfP6LdZymOXugsjUrhEhJ
         H9c2D7Nj3H7iqZ7U3fw1gaVmQGkA9JSz2aatLHVD/VvLJ/06mBMbNvgkZWbXrgPrkBPb
         9E4VRGWSvb/iDrJMp8ZIR2R/ZSSfs0ymt9+xePZR2XmN3h2crIjJzfzAnYs5DTUAj822
         E18FN9FYVf7/oV0Tvp8QBFQLA8Xuiy8bJ4elIu3EHPfM5Cnnfvz9gSE+71BrI+SMx05F
         uThZIUwUb7038hjWQpLl9u65xgpjSx1y3EOXpi6ZoG4jPO+wAr2HeTyYpwB+7Bxi98AA
         Cx4g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5304U8LckACmo77SmN2iveP/UV0HF1mqE5OUVQ51Bl0R7WfdaCGr
	bdeedFPf3hRoXjxRk5nhHhE=
X-Google-Smtp-Source: ABdhPJy4TL1SiUNieRWm7og9fyCltcJX8w46g+qFPmeaBVFbyqyMjYnqrNHS4SvtSCFcw6Ydjr5uGQ==
X-Received: by 2002:ab0:7616:: with SMTP id o22mr6543203uap.126.1619271240566;
        Sat, 24 Apr 2021 06:34:00 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9f:2c95:: with SMTP id w21ls1156733uaj.3.gmail; Sat, 24 Apr
 2021 06:34:00 -0700 (PDT)
X-Received: by 2002:ab0:6030:: with SMTP id n16mr6951223ual.87.1619271239891;
        Sat, 24 Apr 2021 06:33:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619271239; cv=none;
        d=google.com; s=arc-20160816;
        b=WeJMUyuxadlTF+95jos6+NW0/0i3K/RynnqLQsx9xfceo7J2BAT8AsXB/1U9xxMlNY
         t76lD/o5c9SXcNZXP3vcZUyG1SXtfDN1ogLv2hwpn+lKT2sJb1pywYdo6qdKv6UDb+fw
         jtc3WBYXXQ7ZdVTqPLq8qpl6bxLRiAgrdVb6g8PmY7GXzhI6vyc6Wigb8lKHL9CAkhWo
         4fpHs+iyUNBIjzWHMFVxVr8sHryl0Pb6uw0oylrakZstg5eciYooqCzaEqHioa/MAOx/
         nGAabH1amHDRb55w0orYnp4RbbpAu6slA0aVb5MrIqZ9eUa46XDl1GdGvw3iOyAygbN8
         /GZQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :from:date:ironport-sdr:ironport-sdr;
        bh=VJ2+Jrw6CC948zywHaw9kGvAiDNbUSzMYaPUsdq9TTY=;
        b=w4gkmnYmrEMK8DHUz1PiHfGT6m4HjC0nR1DMy+utf8copOOfgEO5bfm0pfSZdorTX1
         4tdkfrbbAOYI5y7O+SlEMZVHiDM//JqOIEsd458+/61W5xvFlXwy7uPSmfaq1tEvf+e8
         99uXacKPMHJxyKmSvU7+xT3wF07/y2a+Gq+a6vPMgd5k11fBiEf4GWEzs1x5Z/kqjrvd
         NNLRSekYmVE0gK2UH2c0XADzyYBSp8zN4qg4mPFJfS+wN/IZDM2ikvK99DOYals7oDSm
         R7sciY97L43hMd907GhbpdtTJmd5NpW8gJ8ZP9bKDkpQN+sdGzVP7/X1nyp5NHZ8K437
         je0w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.31 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga06.intel.com (mga06.intel.com. [134.134.136.31])
        by gmr-mx.google.com with ESMTPS id h19si1325632vkf.5.2021.04.24.06.33.58
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 24 Apr 2021 06:33:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.31 as permitted sender) client-ip=134.134.136.31;
IronPort-SDR: +Q1EaT4LKgGAVjcOwslOf/embSdRMEtqD1bLoD1GhACnFeAFocxqv+cMX/FoW3Qq3k1/KzSkvZ
 aXqdYzxzolQA==
X-IronPort-AV: E=McAfee;i="6200,9189,9964"; a="257485266"
X-IronPort-AV: E=Sophos;i="5.82,248,1613462400"; 
   d="gz'50?scan'50,208,50";a="257485266"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
  by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 24 Apr 2021 06:33:55 -0700
IronPort-SDR: jd2f3+hm5B5OcfsFP6+/adxnAn9pDMQJft2/db4vc6ErEGw7wbetsKlk55mqzj0+oxatzHP4Sk
 GX6C2ReNGnYw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,248,1613462400"; 
   d="gz'50?scan'50,208,50";a="428747740"
Received: from lkp-server01.sh.intel.com (HELO a48ff7ddd223) ([10.239.97.150])
  by orsmga008.jf.intel.com with ESMTP; 24 Apr 2021 06:33:53 -0700
Received: from kbuild by a48ff7ddd223 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1laIPx-00059J-4p; Sat, 24 Apr 2021 13:33:53 +0000
Date: Sat, 24 Apr 2021 21:33:35 +0800
From: kernel test robot <lkp@intel.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com
Subject: error: unknown target CPU 'r4300'
Message-ID: <202104242129.GGaKJI8F-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="vkogqOf2sHV7VnPd"
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


--vkogqOf2sHV7VnPd
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

CC: linux-kernel@vger.kernel.org
TO: Lauri Kasanen <cand@gmx.com>
CC: Thomas Bogendoerfer <tsbogend@alpha.franken.de>

Hi Lauri,

FYI, the error/warning still remains.

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
head:   8db5efb83fa99e81c3f8dee92a6589b251f117f3
commit: baec970aa5ba11099ad7a91773350c91fb2113f0 mips: Add N64 machine type
date:   3 months ago
config: mips-randconfig-r013-20210424 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 3d1aecbd285709f58168b3ad65c06da4b42132a9)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install mips cross compiling tool for clang build
        # apt-get install binutils-mips-linux-gnu
        # https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=baec970aa5ba11099ad7a91773350c91fb2113f0
        git remote add linus https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
        git fetch --no-tags linus master
        git checkout baec970aa5ba11099ad7a91773350c91fb2113f0
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross W=1 ARCH=mips 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

>> error: unknown target CPU 'r4300'
   note: valid target CPU values are: mips1, mips2, mips3, mips4, mips5, mips32, mips32r2, mips32r3, mips32r5, mips32r6, mips64, mips64r2, mips64r3, mips64r5, mips64r6, octeon, octeon+, p5600
--
>> error: unknown target CPU 'r4300'
   note: valid target CPU values are: mips1, mips2, mips3, mips4, mips5, mips32, mips32r2, mips32r3, mips32r5, mips32r6, mips64, mips64r2, mips64r3, mips64r5, mips64r6, octeon, octeon+, p5600
>> error: unknown target CPU 'r4300'
   note: valid target CPU values are: mips1, mips2, mips3, mips4, mips5, mips32, mips32r2, mips32r3, mips32r5, mips32r6, mips64, mips64r2, mips64r3, mips64r5, mips64r6, octeon, octeon+, p5600
   make[2]: *** [scripts/Makefile.build:117: scripts/mod/devicetable-offsets.s] Error 1
>> error: unknown target CPU 'r4300'
   note: valid target CPU values are: mips1, mips2, mips3, mips4, mips5, mips32, mips32r2, mips32r3, mips32r5, mips32r6, mips64, mips64r2, mips64r3, mips64r5, mips64r6, octeon, octeon+, p5600
   make[2]: *** [scripts/Makefile.build:279: scripts/mod/empty.o] Error 1
   make[2]: Target '__build' not remade because of errors.
   make[1]: *** [Makefile:1205: prepare0] Error 2
   make[1]: Target 'modules_prepare' not remade because of errors.
   make: *** [Makefile:185: __sub-make] Error 2
   make: Target 'modules_prepare' not remade because of errors.
--
>> error: unknown target CPU 'r4300'
   note: valid target CPU values are: mips1, mips2, mips3, mips4, mips5, mips32, mips32r2, mips32r3, mips32r5, mips32r6, mips64, mips64r2, mips64r3, mips64r5, mips64r6, octeon, octeon+, p5600
>> error: unknown target CPU 'r4300'
   note: valid target CPU values are: mips1, mips2, mips3, mips4, mips5, mips32, mips32r2, mips32r3, mips32r5, mips32r6, mips64, mips64r2, mips64r3, mips64r5, mips64r6, octeon, octeon+, p5600
   make[2]: *** [scripts/Makefile.build:117: scripts/mod/devicetable-offsets.s] Error 1
>> error: unknown target CPU 'r4300'
   note: valid target CPU values are: mips1, mips2, mips3, mips4, mips5, mips32, mips32r2, mips32r3, mips32r5, mips32r6, mips64, mips64r2, mips64r3, mips64r5, mips64r6, octeon, octeon+, p5600
   make[2]: *** [scripts/Makefile.build:279: scripts/mod/empty.o] Error 1
   make[2]: Target '__build' not remade because of errors.
   make[1]: *** [Makefile:1205: prepare0] Error 2
   make[1]: Target 'prepare' not remade because of errors.
   make: *** [Makefile:185: __sub-make] Error 2
   make: Target 'prepare' not remade because of errors.

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202104242129.GGaKJI8F-lkp%40intel.com.

--vkogqOf2sHV7VnPd
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--vkogqOf2sHV7VnPd--
