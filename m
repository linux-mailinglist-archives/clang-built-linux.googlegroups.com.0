Return-Path: <clang-built-linux+bncBCX2JBVY5MBBB4PBYKDAMGQE2WJZUQA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63f.google.com (mail-pl1-x63f.google.com [IPv6:2607:f8b0:4864:20::63f])
	by mail.lfdr.de (Postfix) with ESMTPS id EA7363AEC70
	for <lists+clang-built-linux@lfdr.de>; Mon, 21 Jun 2021 17:32:02 +0200 (CEST)
Received: by mail-pl1-x63f.google.com with SMTP id x17-20020a1709027c11b0290122d280f05bsf1619885pll.8
        for <lists+clang-built-linux@lfdr.de>; Mon, 21 Jun 2021 08:32:02 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1624289521; cv=pass;
        d=google.com; s=arc-20160816;
        b=hdi2riB3F0+euxR62LGpYSg/zrtpcOwGYH8SIFsiHwmwFu95VQduWKDTkSYC6AZ7u8
         UQNNDYAE8rQSEt/kidFeH/TB6kaDenskXRnafjGgOI+CgsT+13h8WqWYSs85vwFBHVr9
         /VSmfRwNdUuwCffd8zHQYvTSEc4Any4fTRGR0e5h0d+RNezTGehZ9RJnbTHXVOZyQ2Q2
         /OhgpQg8KgnMs3enbjK7N2fdWQwIdfCUYayDkt0Q+A6vc8/aa5chYn0I6EwAgFbgdhyw
         Soalq8iQo2JolE3Gd90Cx43nJvHejIxVZrf19+IzrQgdhEugMNUAq2q4oZLLhTGaaAIK
         b4hw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=1FvUMfQYhgzdvX4dTD6rNiexo1EJcCFsUCoIkSVvX88=;
        b=kKxzwrjfLek2qsX8iVCXNmszJstfHN0bbpU3rvfoqY6QHcmSl/3WCgJ1tf9A/Zm3cF
         i9gqptSUJJCtYeL5Ls8qzFEvYzsVrVgRO7IBx5S2Jy0T9l+M/h//DizeTUYWnwEvaF/S
         za4WpgLFbSayCtjfkIvZgpfHM87/8WfbMEAFQ2JP0sbe965+HF5T0dt7QWeTvP1Rt340
         o9d5SXPPuKjpBID6xLyGxsywd02kDKHa8qq1tgUDC1m4EpYO3ip2T/4G+O7loUv/Rx1Z
         9a1mxF8eHgHcum1tBrr4mDGQbQj1fwoR0tYzWBGC5ekBjdUj/5IePDFGvz1YhBzhDSU9
         Wazw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of philip.li@intel.com designates 134.134.136.65 as permitted sender) smtp.mailfrom=philip.li@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1FvUMfQYhgzdvX4dTD6rNiexo1EJcCFsUCoIkSVvX88=;
        b=QvFlZWYCwOlD2Efz3o4Sou8VYLRmUoXpDK44m2djxbUOnGiPDXk3WcCEzRjqwu+lZ4
         VXRnGHPTsqhlEFLyw7mFiHxp6hLrDDjTbmhufTSvBVDTA3sRhDDOQ+71jwv+/UuBHH4D
         HV6OfDW9uGvXyrqP66hbBWc2jFjc9h2s/1egvmWBRnRDOJ5dlS/W1ubB51t5bU/ftCPy
         bIh4BwCU1iLrWV5dgrhq0IThpFNojrDuKe+hyehXuUklmnS+WrgYwjEz8y4TYThCQfQU
         BDqLFW5+o3vf9gy91uaFcvR4/agVbuLzM2820tvl9Zhw/1kqCnSGbAA1O2rPG0xoZfH8
         DEBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:references:mime-version:content-disposition
         :in-reply-to:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=1FvUMfQYhgzdvX4dTD6rNiexo1EJcCFsUCoIkSVvX88=;
        b=MWhKysnS+SaTSPcb8hGk4XHsZG9q1ENVrLr/EefSSvI96m6o+LEgsQYjK8Ie4vgudo
         Gbw/aKbkvjHoP+FNO9Rh+4tQUw1WzCb6EIcsCfthXDZr1F5xCgyoQxayPigiXiYNii3n
         Kfj+VW1dGKEoWVp9ZK1fjaq4kONG/I8DKr2yefi/5r1UqYjoYN2ml99Wz2nOXCMEdM9q
         4Fc70/T7mbkmg26kVPaKCBGSrRZwT+vEKW5Ae/by/MLKSMTjHnoQzZd/+PRPg4LQclFf
         VFAOC+l3dB25K17eE48N4dP5QuR1OZ19BFkWluJPd8aHD74S6bJ9k0NSZnqpV+GVRuCb
         n9+Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533VEmZDVD04BAp84KvBT1GHUtQEF2nH2X+h8i2lBJCYSwdU/WkT
	vWIqP01PgGOEcpvQBNcWmqA=
X-Google-Smtp-Source: ABdhPJwtaRhqT1Mwy9qTwl0FzqtNlwtO1yYE7YPGCl/DJFPAAhGmhcY4xo0mjN0uzY937aPCX8e3qg==
X-Received: by 2002:a63:ff14:: with SMTP id k20mr5509859pgi.390.1624289521608;
        Mon, 21 Jun 2021 08:32:01 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:501b:: with SMTP id e27ls8574399pgb.2.gmail; Mon, 21 Jun
 2021 08:32:01 -0700 (PDT)
X-Received: by 2002:a63:471f:: with SMTP id u31mr24535558pga.85.1624289520940;
        Mon, 21 Jun 2021 08:32:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1624289520; cv=none;
        d=google.com; s=arc-20160816;
        b=NtuplD3iVndoh54JEhx0SHCdvtv+BJF+uKL7ES+yweDHnEQ2UxtY670ixLvGwwppET
         8/gh/pe5cJsmfCPfWE4cVPbmuRECl0TyPbZWGTkYHtIuU9R2dbwUM4JrYsMFOTDaCof8
         o/HOp5vtIdvPJrZ8P4WtM9rkT48+5qDkxeQXrnHxXU0awCsC3GoymFjGmf+0iBwZwbsl
         ehcFMrbJbox+D/QzJpKTy5RccvCuv+yINadOn02jrrx28agetr6ny4RcmL3uS8wsJ8Lk
         3u36IR02X5Zf8E7/JK2OOBaEE2tQWIgovrxt/+vFNR/rrNdJh1VUiaNTkDc5M2G9CxEC
         yHnA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:ironport-sdr:ironport-sdr;
        bh=7UsCYKTlJwE1RfE1vN7IXXkW4eK+VeedMDRkifPpnLo=;
        b=L1dxEFbBDBVFzT1bllRqWOZfMV683aW2a00/HxvddLFzGZ21aCLCmWlX3w006VE+o0
         0J8y7hg6b4Tu013koxHVnCRFqyDGNGdSUGiV6fFhJstBLm1mS6YHBdGNbQswlvPUbvbo
         6pmUV1wTCqtvCOqaottEgeTtHEm9GxCg6ugUcx7hLwQloS8IaYuX7ZylbT51T1DkA4+G
         +G3IQxSzyv6xW5f2D23ODtjnXYva8G3jsZb1zw1V+3XlBagkPnh/lGSVu9NEeeXYadvy
         0P2m/1Y6/zo0l/CpsGMOeTH5UV8jZmB6GJg8im6bOJyxYH6fb/2qvoWpn0c9TaDizRDo
         LcLg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of philip.li@intel.com designates 134.134.136.65 as permitted sender) smtp.mailfrom=philip.li@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga03.intel.com (mga03.intel.com. [134.134.136.65])
        by gmr-mx.google.com with ESMTPS id gc23si536696pjb.3.2021.06.21.08.32.00
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 21 Jun 2021 08:32:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of philip.li@intel.com designates 134.134.136.65 as permitted sender) client-ip=134.134.136.65;
IronPort-SDR: LHaAdk8U31FvPPbHik78PxUMNWAT+Ip2Zy90yvt1ksHX4kv9INqYr3TXZqNNG5Mjr/u38umZ6w
 QSfatoj5QeMA==
X-IronPort-AV: E=McAfee;i="6200,9189,10022"; a="206910198"
X-IronPort-AV: E=Sophos;i="5.83,289,1616482800"; 
   d="scan'208";a="206910198"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
  by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 21 Jun 2021 08:32:00 -0700
IronPort-SDR: GqPy5gAMEATWp+3kVxyawtHRICMqrpM6qxhAYmb3LHj9iEtZ8QRXG/M0/e4ZsnY3yDljdaVe1+
 w5Vifa+bM70w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,289,1616482800"; 
   d="scan'208";a="641355390"
Received: from pl-dbox.sh.intel.com (HELO pl-dbox) ([10.239.159.39])
  by fmsmga005.fm.intel.com with ESMTP; 21 Jun 2021 08:31:58 -0700
Date: Mon, 21 Jun 2021 23:24:30 +0800
From: Philip Li <philip.li@intel.com>
To: kernel test robot <lkp@intel.com>
Cc: Dmitry Osipenko <digetx@gmail.com>, kbuild-all@lists.01.org,
	clang-built-linux@googlegroups.com, linux-hwmon@vger.kernel.org,
	Guenter Roeck <linux@roeck-us.net>
Subject: Re: [kbuild-all] [hwmon:hwmon-next 47/47] make[2]: *** No rule to
 make target
 '/tmp/kernel/x86_64-randconfig-a012-20210621/clang-13/4c7f85a321a1ac265159c22a6998ef4f2a60c21d/lib/modules/5.13.0-rc6+/kernel/crypto/cmac.ko',
 needed by '__modinst'.
Message-ID: <20210621152430.GI158568@pl-dbox>
References: <202106212044.6cWpzKdG-lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <202106212044.6cWpzKdG-lkp@intel.com>
X-Original-Sender: philip.li@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of philip.li@intel.com designates 134.134.136.65 as
 permitted sender) smtp.mailfrom=philip.li@intel.com;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=intel.com
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

On Mon, Jun 21, 2021 at 08:37:51PM +0800, kernel test robot wrote:
> Hi Dmitry,
> 
> First bad commit (maybe != root cause):
> 
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/groeck/linux-staging.git hwmon-next
> head:   4c7f85a321a1ac265159c22a6998ef4f2a60c21d
> commit: 4c7f85a321a1ac265159c22a6998ef4f2a60c21d [47/47] hwmon: (lm90) Disable interrupt on suspend
> config: x86_64-randconfig-a012-20210621 (attached as .config)
> compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project e1adf90826a57b674eee79b071fb46c1f5683cd0)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install x86_64 cross compiling tool for clang build
>         # apt-get install binutils-x86-64-linux-gnu
>         # https://git.kernel.org/pub/scm/linux/kernel/git/groeck/linux-staging.git/commit/?id=4c7f85a321a1ac265159c22a6998ef4f2a60c21d
>         git remote add hwmon https://git.kernel.org/pub/scm/linux/kernel/git/groeck/linux-staging.git
>         git fetch --no-tags hwmon hwmon-next
>         git checkout 4c7f85a321a1ac265159c22a6998ef4f2a60c21d
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64 
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
> 
> All errors (new ones prefixed by >>):
Sorry for the broken report, kindly ignore this, we will fix
this asap.

> 
>    arch/x86/Makefile:148: CONFIG_X86_X32 enabled but no binutils support
> >> make[2]: *** No rule to make target '/tmp/kernel/x86_64-randconfig-a012-20210621/clang-13/4c7f85a321a1ac265159c22a6998ef4f2a60c21d/lib/modules/5.13.0-rc6+/kernel/crypto/cmac.ko', needed by '__modinst'.
> >> make[2]: *** No rule to make target '/tmp/kernel/x86_64-randconfig-a012-20210621/clang-13/4c7f85a321a1ac265159c22a6998ef4f2a60c21d/lib/modules/5.13.0-rc6+/kernel/crypto/md5.ko', needed by '__modinst'.
> >> make[2]: *** No rule to make target '/tmp/kernel/x86_64-randconfig-a012-20210621/clang-13/4c7f85a321a1ac265159c22a6998ef4f2a60c21d/lib/modules/5.13.0-rc6+/kernel/crypto/sha512_generic.ko', needed by '__modinst'.
> >> make[2]: *** No rule to make target '/tmp/kernel/x86_64-randconfig-a012-20210621/clang-13/4c7f85a321a1ac265159c22a6998ef4f2a60c21d/lib/modules/5.13.0-rc6+/kernel/drivers/net/net_failover.ko', needed by '__modinst'.
> >> make[2]: *** No rule to make target '/tmp/kernel/x86_64-randconfig-a012-20210621/clang-13/4c7f85a321a1ac265159c22a6998ef4f2a60c21d/lib/modules/5.13.0-rc6+/kernel/drivers/net/virtio_net.ko', needed by '__modinst'.
> >> make[2]: *** No rule to make target '/tmp/kernel/x86_64-randconfig-a012-20210621/clang-13/4c7f85a321a1ac265159c22a6998ef4f2a60c21d/lib/modules/5.13.0-rc6+/kernel/fs/cifs/cifs.ko', needed by '__modinst'.
> >> make[2]: *** No rule to make target '/tmp/kernel/x86_64-randconfig-a012-20210621/clang-13/4c7f85a321a1ac265159c22a6998ef4f2a60c21d/lib/modules/5.13.0-rc6+/kernel/fs/nfs/nfsv4.ko', needed by '__modinst'.
> >> make[2]: *** No rule to make target '/tmp/kernel/x86_64-randconfig-a012-20210621/clang-13/4c7f85a321a1ac265159c22a6998ef4f2a60c21d/lib/modules/5.13.0-rc6+/kernel/lib/crypto/libarc4.ko', needed by '__modinst'.
> >> make[2]: *** No rule to make target '/tmp/kernel/x86_64-randconfig-a012-20210621/clang-13/4c7f85a321a1ac265159c22a6998ef4f2a60c21d/lib/modules/5.13.0-rc6+/kernel/net/core/failover.ko', needed by '__modinst'.
> >> make[2]: *** No rule to make target '/tmp/kernel/x86_64-randconfig-a012-20210621/clang-13/4c7f85a321a1ac265159c22a6998ef4f2a60c21d/lib/modules/5.13.0-rc6+/kernel/net/dns_resolver/dns_resolver.ko', needed by '__modinst'.
> >> make[2]: *** No rule to make target '/tmp/kernel/x86_64-randconfig-a012-20210621/clang-13/4c7f85a321a1ac265159c22a6998ef4f2a60c21d/lib/modules/5.13.0-rc6+/kernel/net/sunrpc/auth_gss/auth_rpcgss.ko', needed by '__modinst'.
>    make[2]: Target '__modinst' not remade because of errors.
>    make[1]: *** [Makefile:1770: modules_install] Error 2
>    make: *** [Makefile:215: __sub-make] Error 2
>    make: Target 'modules_install' not remade because of errors.
> 
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org


> _______________________________________________
> kbuild-all mailing list -- kbuild-all@lists.01.org
> To unsubscribe send an email to kbuild-all-leave@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210621152430.GI158568%40pl-dbox.
