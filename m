Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBE7M47WQKGQEVGTZ7HA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83d.google.com (mail-qt1-x83d.google.com [IPv6:2607:f8b0:4864:20::83d])
	by mail.lfdr.de (Postfix) with ESMTPS id A6FB0EA4EC
	for <lists+clang-built-linux@lfdr.de>; Wed, 30 Oct 2019 21:44:04 +0100 (CET)
Received: by mail-qt1-x83d.google.com with SMTP id k9sf3756815qtg.2
        for <lists+clang-built-linux@lfdr.de>; Wed, 30 Oct 2019 13:44:04 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1572468243; cv=pass;
        d=google.com; s=arc-20160816;
        b=f8TsZhv3tOgl+6xMZHhibRwvlpY/e6Or6a/0/qS73hmEt9mc67OvnDSxSfH6cGJ3l3
         KT/VEjiUQXGo68xZ+FQfPYakPa8y4ttIZfNTInd4qYs/hAVc1O67ubITfFdSsh2th2nG
         1B3Wc/0Whgljhrwr0cWJ7SeiUtPpWixopixrcPqcVx8p66zm2JqvfnSzJrDCk5IyXolU
         y0CumJGyPisqqOo58479wbcv9RQgh/7e4O8EBQmslGTJANhZC3L9w9oG9Vk+3pDdv7Hm
         55RiLT4KVcTAqOkQ8GJrQiA73CS6VGEE46aHzvcumrL07PTMhN/7ASYDJFqNg0HcPi+p
         Mfgw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=xGI8clkRfmgPo4hn062P3owGT2j3grx+/ng2KypGuNo=;
        b=B/UctJxnpEsH3KFagpZESnhbu9BW5+vX0roodqaK9Ih+6VttU6srzQSvx6+2GpTXw5
         S55MP9uR01+75a0YQcEEEZ2mtB1tKCcpEEYObTptEp9k+O0gk/On+RlVqamM57NTH/IO
         f4YAH5jMYOINvJtCXLz0AUZfg/FAJbugiD2aV0vEEd/4lPWRqCaN2m/fwcjcYj6Dv/Cc
         vrGH/Yhf6Wqozj9FB5zpnB+jEtwNXPAcKuCdSwxmt3XTauAoe70jImMk79LW7tdfpoqz
         FPOpbDPRtlKqJJ1Uipn7PEcSR3+d6DtAJhHPd/z3dYRknE8kYW0TgQPZNerPNnL1NcG8
         bTEg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.93 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=xGI8clkRfmgPo4hn062P3owGT2j3grx+/ng2KypGuNo=;
        b=poR0dxGvy+ggtbJAlMiUOvyutH5xq0oG7nvEDjd5h6XTD03xRjgXoUwAV5DaqJHxDx
         djQnJ0Xh7PTZSDY4joONjhGonu64rGUfiTbfAe7k38lkdtgt9OBpLCtHdZSEaVaQljZ3
         25blRehA/0GBLk4qu3MHKj0d0sO0JGDzVNV421cAaUrDxQYwC2Bfw59C8NLLEwW/keD5
         YZT+LPEiLL44p5P0y6MP0MtfF87QljJ09G3EfckoLdHQkqaUruwq3i+u/guYRUhXmnmF
         3a3yEpY/s9+tDxzByS3A/aKsZwwq4ArtHtjGT8BYnqxUmFjAssqVDhUnju/pdV9Wx9rv
         Nz5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=xGI8clkRfmgPo4hn062P3owGT2j3grx+/ng2KypGuNo=;
        b=bTQtyIL3xn5LCUETRE/oDGMjAZ+wCbdFIfRci2oyZyNKoKmSHXSlAObwPqCBFQz3fH
         /JRqUwLUIouW9BzP0rKPqj4CfcaiKbUbySsNAIquyeyUwmMUOjQYVfV5x/jzmkYu8ZYE
         3nKu4xPnCjP/irLBA75J2dv4msSQ4hdWKIKf1xFRHTuXWrlnil+Uig4bAEK1wVK/7V4i
         NHEGnVN9Vwie5ZoTJOGZ+iFH5pBDFOg/mVvnSsz4vryWN0mTOpbysatk4fC5E8Xu8LPo
         hhtKoI4YLkTTS791nkk4r8M5cz8rIcxg1zCm753DgeOk1/Xp4WewS2iluJeoB5xYVpoU
         rqUw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWVQzaVJgNGs92nQ8/AGCWv4SKksV+VzHg4JqZwmGNIMovK2tBb
	8zPd8oKBdYgGGs0baPiPbrg=
X-Google-Smtp-Source: APXvYqyCQw/NPlopY6yp1RP4VAfQm5XZR7JgcsiF2VMd2glLlVzR+ToJB3i2vDKOh+wwc8GK/MqOCA==
X-Received: by 2002:ac8:ac4:: with SMTP id g4mr2094011qti.326.1572468243305;
        Wed, 30 Oct 2019 13:44:03 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:7359:: with SMTP id q25ls138496qtp.1.gmail; Wed, 30 Oct
 2019 13:44:02 -0700 (PDT)
X-Received: by 2002:aed:3ef2:: with SMTP id o47mr2129085qtf.107.1572468242924;
        Wed, 30 Oct 2019 13:44:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572468242; cv=none;
        d=google.com; s=arc-20160816;
        b=OB4HQqwD9ArgUlQKYEdatKOM1RQC0v8wKooJKYdWlOP2upYkmRinZ8MBtk+9iA73XE
         UaX4Ge/IKtj3O3Z4hPmAVsAFzSL7EE4GrX3UFJAMy8hbFdubNkReD8DPohSQLDR7kLkA
         xEK1D8l7kC/M2c+NlJ7wre04ZuQns4hElMYWsLgS40zt9T7QyX5dQ8PpH6awbbLUCdNx
         8GbMA+w0MnRnXZsTEJKj/4c97BiWkwAGRUDuV4iHobK9zcqLreAlMNIVbbWJtK108T6n
         9dd711qM9rrOVM4gmdW5SJV/FoS1ejl3DNMDwosLzTB6BBdFOGJptAatTFkWzWkxxwd/
         E4HQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date;
        bh=kvxUjmn0BC9FzpwGctVsK+s8gbXJMbZ0IbqTpbvyvZQ=;
        b=KM06/5Hw9+Lj2bBNSMg0LCAfUK7MYO8oHBWKZQ+GOV6Wkwm9L+Fdy6ErMWRvTDnu4B
         guBv7Jmk6cCf0IfbHYSVVCKQ+MW1n4Trbhdy8N87KuTFoOJq3areMyg7AVxC2831L+tg
         iaWI/RZFpWkMlvo2nFkYwn+Sz9wrU7hpaXtSfpMHzy377M6rXh9Zz53hEtinW7KpvzDg
         qn+X6yCqmR6dWeigLBclxk0LYFGnLlS/fHZUiKx9mMnW2IGZCBPqKsl8XXSrBZdDewpQ
         dLE65LBIsJZBJrnJKxm+uXPMFI5iVLUhXtnRhKbJwgf4NlyX8GRKOLR6t4o0wjygHijt
         0RCw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.93 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga11.intel.com (mga11.intel.com. [192.55.52.93])
        by gmr-mx.google.com with ESMTPS id w140si209045qka.6.2019.10.30.13.44.02
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 30 Oct 2019 13:44:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.93 as permitted sender) client-ip=192.55.52.93;
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
  by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 30 Oct 2019 13:44:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,248,1569308400"; 
   d="scan'208";a="283666710"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
  by orsmga001.jf.intel.com with ESMTP; 30 Oct 2019 13:43:59 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
	(envelope-from <lkp@intel.com>)
	id 1iPuox-000FuY-AS; Thu, 31 Oct 2019 04:43:59 +0800
Date: Thu, 31 Oct 2019 04:43:16 +0800
From: kbuild test robot <lkp@intel.com>
To: kbuild@lists.01.org
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH v1] hi556: Add support for Hi-556 sensor
Message-ID: <201910310442.YfF8nh6X%lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
X-Patchwork-Hint: ignore
User-Agent: NeoMutt/20170113 (1.7.2)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 192.55.52.93 as permitted
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

CC: kbuild-all@lists.01.org
In-Reply-To: <1572338943-1855-1-git-send-email-shawnx.tu@intel.com>
References: <1572338943-1855-1-git-send-email-shawnx.tu@intel.com>
TO: Shawnx Tu <shawnx.tu@intel.com>
CC: linux-media@vger.kernel.org, sakari.ailus@linux.intel.com, andy.yeh@intel.com, shawnx.tu@intel.com, sakari.ailus@linux.intel.com, andy.yeh@intel.com, shawnx.tu@intel.com
CC: sakari.ailus@linux.intel.com, andy.yeh@intel.com, shawnx.tu@intel.com

Hi Shawnx,

I love your patch! Yet something to improve:

[auto build test ERROR on linuxtv-media/master]
[cannot apply to v5.4-rc5]
[if your patch is applied to the wrong git tree, please drop us a note to help
improve the system. BTW, we also suggest to use '--base' option to specify the
base tree in git format-patch, please see https://stackoverflow.com/a/37406982]

url:    https://github.com/0day-ci/linux/commits/Shawnx-Tu/hi556-Add-support-for-Hi-556-sensor/20191031-033403
base:   git://linuxtv.org/media_tree.git master
config: powerpc-defconfig
compiler: clang version 10.0.0 (git://gitmirror/llvm_project eb535d23418c7259cac85bdb13197263b2cee056)
reproduce:
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        make.cross ARCH=powerpc  defconfig
        make.cross ARCH=powerpc 

If you fix the issue, kindly add following tag
Reported-by: kbuild test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

>> drivers/media/i2c/Kconfig:582: syntax error
   drivers/media/i2c/Kconfig:581:warning: ignoring unsupported character ','
   drivers/media/i2c/Kconfig:581:warning: ignoring unsupported character ':'
>> drivers/media/i2c/Kconfig:581: unknown statement "To"
   drivers/media/i2c/Kconfig:582:warning: ignoring unsupported character '.'
>> drivers/media/i2c/Kconfig:582: unknown statement "module"
   make[2]: *** [defconfig] Error 1
   make[1]: *** [defconfig] Error 2
   make: *** [sub-make] Error 2
   2 real  0 user  1 sys  101.78% cpu 	make defconfig
--
>> drivers/media/i2c/Kconfig:582: syntax error
   drivers/media/i2c/Kconfig:581:warning: ignoring unsupported character ','
   drivers/media/i2c/Kconfig:581:warning: ignoring unsupported character ':'
>> drivers/media/i2c/Kconfig:581: unknown statement "To"
   drivers/media/i2c/Kconfig:582:warning: ignoring unsupported character '.'
>> drivers/media/i2c/Kconfig:582: unknown statement "module"
   make[2]: *** [oldconfig] Error 1
   make[1]: *** [oldconfig] Error 2
   make: *** [sub-make] Error 2
   2 real  0 user  1 sys  102.60% cpu 	make oldconfig
--
>> drivers/media/i2c/Kconfig:582: syntax error
   drivers/media/i2c/Kconfig:581:warning: ignoring unsupported character ','
   drivers/media/i2c/Kconfig:581:warning: ignoring unsupported character ':'
>> drivers/media/i2c/Kconfig:581: unknown statement "To"
   drivers/media/i2c/Kconfig:582:warning: ignoring unsupported character '.'
>> drivers/media/i2c/Kconfig:582: unknown statement "module"
   make[2]: *** [olddefconfig] Error 1
   make[1]: *** [olddefconfig] Error 2
   make: *** [sub-make] Error 2
   2 real  1 user  1 sys  102.29% cpu 	make olddefconfig

vim +582 drivers/media/i2c/Kconfig

   570	
   571	config VIDEO_HI556
   572		tristate "Hynix Hi-556 sensor support"
   573		depends on I2C && VIDEO_V4L2 && VIDEO_V4L2_SUBDEV_API
   574		depends on MEDIA_CAMERA_SUPPORT
   575		depends on MEDIA_CONTROLLER
   576		select V4L2_FWNODE
   577		help
   578		  This is a Video4Linux2 sensor driver for the Hynix
   579		  Hi-556 camera.
   580	
 > 581		To compile this driver as a module, choose M here: the
 > 582		module will be called hi556.
   583	

---
0-DAY kernel test infrastructure                Open Source Technology Center
https://lists.01.org/pipermail/kbuild-all                   Intel Corporation

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/201910310442.YfF8nh6X%25lkp%40intel.com.
