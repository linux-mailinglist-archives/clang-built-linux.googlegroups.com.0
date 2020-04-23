Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBQ73QT2QKGQEAQYVASA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb37.google.com (mail-yb1-xb37.google.com [IPv6:2607:f8b0:4864:20::b37])
	by mail.lfdr.de (Postfix) with ESMTPS id 02AB81B5519
	for <lists+clang-built-linux@lfdr.de>; Thu, 23 Apr 2020 09:03:33 +0200 (CEST)
Received: by mail-yb1-xb37.google.com with SMTP id g17sf5445618ybk.4
        for <lists+clang-built-linux@lfdr.de>; Thu, 23 Apr 2020 00:03:32 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1587625412; cv=pass;
        d=google.com; s=arc-20160816;
        b=jPxnxxH3bPaFQyvqRwqHv6pMwf7ep2LcFCq/6tWt1oUF4U58uD4kOiFlOLa8ofxiRP
         tocNdm7+b4Azgc7LH5A6iOnPgQeNXsVbRc98XKIWnxYk4pn8WxRE5Gc5tbsDxIwUcUja
         Y4KLndAxLp9hRDN9Evn0396FWsYSSri1tIrVulqvam+EhXToAeQeKz4p2iK6gm0CnZee
         gJ6gkl2zl/zHn8BTWeCxTjmzQXaQVtD7JHU08/d6abrnHAKMAqsiXGCBp1WRYHrUFA+/
         MD5Wx10hGWRQ/IC5TzvZi0KMtehkYfZArqZfWKfhzVmNOPe9MNc5MbHjcP4nIXgzdsHP
         M7ww==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=vJtP/EcUxh+3YA/nk7KgHOPRYtD2bIViVIhKdF6vDwI=;
        b=KVfe2M0x9dsRb+LBVc0wd1X5vPRe0yeDSW7qGXBcUW3O8jk31bZKip1KUujZVuQcML
         n1a5CGTYWCsyo0ZaPOKaD3W+96Z3QTR+qPX0zBQX/IpU0AbKdDNRpRz7hq4xZM1j85yl
         66SsV6t6z139c3ZGq31oFXKsZHr8jCLfLwxIOVemzUeab06a1ShsFWv94vboBOjYg4Fi
         XTYxXT5oDij7HX/lWH7L0dPRSPhrz0OUHFBTSXSx3zHdMwF6y4OrYbp+DsiU/CYuvLxx
         TVkPYJ4JUP0V4Sq8ztkZ4bCAdvnQpIovhEKCEA2t2KXDe1I6CviwiA6/RbzFYmZQYquj
         qmQQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.120 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=vJtP/EcUxh+3YA/nk7KgHOPRYtD2bIViVIhKdF6vDwI=;
        b=SPAbe4/SWHXcQX0mVnevm9wbmzTXXIq3yzqt44YQcnZbSU0jCa4p6yK46HuTpP5jO2
         Dq6zB18XpxHWFT0OIMrvKWCOau8Mn13y3MWkPatHo76/rV9bavFUrjvhLS4C9m1Ra/yU
         jTzn1h7e7ycJQO4MyPUG8hxWSKEaSrBBK5yZei+cohiBoM8JT/rSliWbiJnrt/VuDyh5
         fEXVK6Kq+DYJ99WVW3ER/fZJ/3nbdSxQc7AE1YiXR/IxSwcoH+OegIfOBbmds7w7uWkB
         6M6eehWjfzmsupv61Yru6eWRA6+NvD78DIajzKGcdEWzCyu6GIOQq+/hhM5qT8rFo2ZS
         pSxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=vJtP/EcUxh+3YA/nk7KgHOPRYtD2bIViVIhKdF6vDwI=;
        b=FsSywp379W6jhij6+WL5F/gAEGN1P+NgFeCvOntTvp/5f3/GfLAkBwMqvmy/8R+9Gg
         r+3H4drD+Et02tbEbHAy3/AzLJd2rZme8WPgBGYP/Vc0NXMdMD++qAevOMMI7XlqnMNn
         cKm+jKftR8MlGOt4FOEid4t9RKlyjnHGDB6jlzkzNVJfOUTkynDCqSZfj9DciLcwG582
         2/jNA9wZJ1lUYTZl9bmO9Vm10m44JxJLY9/qY72GueFB0p4Hb2UfjPz86XmHLmy7Xj9U
         /txsXUcnUxvJdlNqUlRSfNH8wfBH4aWZTnfgJTEFuEGHUqrMD5WM0XN/V8oFolx2I+S3
         0F3Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PubKckeGG/Rr9zj7lYuPQw9rzSVdILh9xP7PQt+7y9DH3CAaFJBz
	OrVYFfkTrPMql8Th4Fm6X98=
X-Google-Smtp-Source: APiQypLN7/bWIQ17GWPp1B33yPzmtX7ceyxNmVp8y7Q7JMvTnPU9gHSgCRaUfa0AzHWZE9J68c32Hw==
X-Received: by 2002:a25:7c84:: with SMTP id x126mr4203409ybc.168.1587625411880;
        Thu, 23 Apr 2020 00:03:31 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:d0c1:: with SMTP id h184ls1696478ybg.10.gmail; Thu, 23
 Apr 2020 00:03:31 -0700 (PDT)
X-Received: by 2002:a25:bb49:: with SMTP id b9mr4968809ybk.172.1587625411386;
        Thu, 23 Apr 2020 00:03:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1587625411; cv=none;
        d=google.com; s=arc-20160816;
        b=LOK0y2s3a4dZ0uJLUKS4k2UVK9Ua3E5KTenYgDz/fJw6W95k0jUwjCI7DBcrLHPDAi
         MNo24iuOkk+8kmpaq5c4UXHAGth6545mMCjgLvJs36NRnOvXpz7OAc483q0ngH2ox2zo
         rRBIT0ON9ne2rQNxDnB6fs7wjMLgh2Wj41sw8mXNkJQQMOCsToNOUr5atxR06lapRYLa
         50KdCh1ZV2Z/m4GW+GR9a1AImUyihgsoU+Ne3t2mNHxpPv7+B+Rn4kVNekD8ClxyYeA3
         gkDNToOe4lA/9r7Lq6gPNdKjUgc4Dx9KTqcpzJn2+verw5RF4n+nh2V+fJMXl+GkLNn9
         gdWg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=z2BDJP5OCN4LAzUQlzlu9XxFNoTpw+lSw8Tja17KqoY=;
        b=semoC3o2o3foEGkY+SKGvzex26k3LL1z8n24jtB9OYjhFw6P6CnPjRA3b8LqPtphKi
         ew2bBEBldfexhiCxqwvchUaHM652lqDgz2eTX8xdTIneoWQwn6pMHJ6Dx6B/hBWawFXv
         MzMpxasYWoeGw2viaAsk6p80vB6DwVuFwqciLTwYtg094w+LwvDlgtqrJiAM2k+/mx22
         Wr4d1QGrOH9DEnBOZV7I1KzqtqtYjzyYhntRoZqXaLhyoQR7v26gPpyB+QmJiw4SApRw
         7zXly/eO3t6t9CfKfflzuP5B8cZLgDxG2Yk2qJ3SPbFsYy2YNlj8ha/ylTxx1T1FrB9V
         mLIQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.120 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga04.intel.com (mga04.intel.com. [192.55.52.120])
        by gmr-mx.google.com with ESMTPS id s10si180965ybk.0.2020.04.23.00.03.31
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 23 Apr 2020 00:03:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.120 as permitted sender) client-ip=192.55.52.120;
IronPort-SDR: 9zylJQkoy57FUzubLtTVgMp9bHGexRFRcmtEiNPcd6RXE2QDFeGKDWC5IYO37gntLsQpNVrGyP
 bMgE3u6ljIfQ==
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
  by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 23 Apr 2020 00:03:29 -0700
IronPort-SDR: 1d7A3+a2BX1KYWepgmHnVwoiZq/yLLeryddQBP15KtCBl2EV8VI+ifuF9rOqdYbTIvMhzSysKw
 XpGv6mnk8BHQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,306,1583222400"; 
   d="gz'50?scan'50,208,50";a="259330106"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
  by orsmga006.jf.intel.com with ESMTP; 23 Apr 2020 00:03:27 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
	(envelope-from <lkp@intel.com>)
	id 1jRVtO-000DcJ-NS; Thu, 23 Apr 2020 15:03:26 +0800
Date: Thu, 23 Apr 2020 15:02:27 +0800
From: kbuild test robot <lkp@intel.com>
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org,
	Masahiro Yamada <masahiroy@kernel.org>
Subject: drivers/usb/gadget/udc/s3c2410_udc.c:255:11: warning: comparison of
 address of 'ep->queue' equal to a null pointer is always false
Message-ID: <202004231508.Yo0J11ax%lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="ReaqsoxgOBHFXBhH"
Content-Disposition: inline
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


--ReaqsoxgOBHFXBhH
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
head:   c578ddb39e565139897124e74e5a43e56538cb33
commit: afe956c577b2d5a3d9834e4424587c1ebcf90c4c kbuild: Enable -Wtautological-compare
date:   2 weeks ago
config: arm-tct_hammer_defconfig (attached as .config)
compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project 2de52422acf04662b45599f77c14ce1b2cec2b81)
reproduce:
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install arm cross compiling tool for clang build
        # apt-get install binutils-arm-linux-gnueabi
        git checkout afe956c577b2d5a3d9834e4424587c1ebcf90c4c
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=arm 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kbuild test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

>> drivers/usb/gadget/udc/s3c2410_udc.c:255:11: warning: comparison of address of 'ep->queue' equal to a null pointer is always false [-Wtautological-pointer-compare]
           if (&ep->queue == NULL)
                ~~~~^~~~~    ~~~~
   1 warning generated.

vim +255 drivers/usb/gadget/udc/s3c2410_udc.c

3fc154b6b8134b drivers/usb/gadget/s3c2410_udc.c Arnaud Patard 2007-06-06  250  
3fc154b6b8134b drivers/usb/gadget/s3c2410_udc.c Arnaud Patard 2007-06-06  251  static void s3c2410_udc_nuke(struct s3c2410_udc *udc,
3fc154b6b8134b drivers/usb/gadget/s3c2410_udc.c Arnaud Patard 2007-06-06  252  		struct s3c2410_ep *ep, int status)
3fc154b6b8134b drivers/usb/gadget/s3c2410_udc.c Arnaud Patard 2007-06-06  253  {
3fc154b6b8134b drivers/usb/gadget/s3c2410_udc.c Arnaud Patard 2007-06-06  254  	/* Sanity check */
3fc154b6b8134b drivers/usb/gadget/s3c2410_udc.c Arnaud Patard 2007-06-06 @255  	if (&ep->queue == NULL)
3fc154b6b8134b drivers/usb/gadget/s3c2410_udc.c Arnaud Patard 2007-06-06  256  		return;
3fc154b6b8134b drivers/usb/gadget/s3c2410_udc.c Arnaud Patard 2007-06-06  257  
3fc154b6b8134b drivers/usb/gadget/s3c2410_udc.c Arnaud Patard 2007-06-06  258  	while (!list_empty(&ep->queue)) {
3fc154b6b8134b drivers/usb/gadget/s3c2410_udc.c Arnaud Patard 2007-06-06  259  		struct s3c2410_request *req;
3fc154b6b8134b drivers/usb/gadget/s3c2410_udc.c Arnaud Patard 2007-06-06  260  		req = list_entry(ep->queue.next, struct s3c2410_request,
3fc154b6b8134b drivers/usb/gadget/s3c2410_udc.c Arnaud Patard 2007-06-06  261  				queue);
3fc154b6b8134b drivers/usb/gadget/s3c2410_udc.c Arnaud Patard 2007-06-06  262  		s3c2410_udc_done(ep, req, status);
3fc154b6b8134b drivers/usb/gadget/s3c2410_udc.c Arnaud Patard 2007-06-06  263  	}
3fc154b6b8134b drivers/usb/gadget/s3c2410_udc.c Arnaud Patard 2007-06-06  264  }
3fc154b6b8134b drivers/usb/gadget/s3c2410_udc.c Arnaud Patard 2007-06-06  265  

:::::: The code at line 255 was first introduced by commit
:::::: 3fc154b6b8134b98bb94d60cad9a46ec1ffbe372 USB Gadget driver for Samsung s3c2410 ARM SoC

:::::: TO: Arnaud Patard <arnaud.patard@rtp-net.org>
:::::: CC: Greg Kroah-Hartman <gregkh@suse.de>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202004231508.Yo0J11ax%25lkp%40intel.com.

--ReaqsoxgOBHFXBhH
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
V+8M0LgAAA==

--ReaqsoxgOBHFXBhH--
