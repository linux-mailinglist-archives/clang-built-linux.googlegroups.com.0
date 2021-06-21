Return-Path: <clang-built-linux+bncBCX2JBVY5MBBBNHBYKDAMGQE3K7JGJY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x738.google.com (mail-qk1-x738.google.com [IPv6:2607:f8b0:4864:20::738])
	by mail.lfdr.de (Postfix) with ESMTPS id 949103AEC67
	for <lists+clang-built-linux@lfdr.de>; Mon, 21 Jun 2021 17:31:01 +0200 (CEST)
Received: by mail-qk1-x738.google.com with SMTP id 142-20020a370d940000b02903b12767b75asf10671955qkn.6
        for <lists+clang-built-linux@lfdr.de>; Mon, 21 Jun 2021 08:31:01 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1624289460; cv=pass;
        d=google.com; s=arc-20160816;
        b=0u5vmDqcOfZKQlLDsf+2p9EUJ03DN8p27ar/TEk60s/72Ky0vQNHw8mfK0w2V1PA0A
         saMcRXOi5m0PpBpeeHEOQxK2XYfWziQ5pxHYe22NWjjPXSiSis/wrbINioqzIAZh7qmD
         GUd6CJ9ZtCJw4iIXTJrxDmQ+7WQpnEDtuA+PE3J4YkYnADFip/DxBppT0NSvHwLGFYhO
         nlHkLtPzG7gCuSD8opn9xG74fPBpvuk8vMRhh59EhUSq4LVDokVYPgiwTGTLWtM9LHVt
         zFYTrgnHu31g4rusFkELWoCCKxNKPOOM+oKF88Syh5IupfDcWpY20+T0gx6kjv2789T4
         AcWQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=7VRryPpV2DarRqytfH1teuTlhQmxR6GNbPjeHYtHfXY=;
        b=UXNoIhxeE+Pk4EOv7xt0eofiRFCXXVAqPAauqDQjvAqwYKqhNAsJViMGIl2ebSbQtE
         CeIMQOxwIIb47twl0+IF2F2qDldKIyNPBg1oDORiJHH4N1Ld8cPNlJXBoxpZIi97nYcy
         3fBUdbWLASQV7LynldtROVH+aEO7KYm/yLV93eWS5b56SrWpfzYQr0/R9S222Aj/S9dR
         uRgMIP1d06sdsORJc8RNoz8WRakN3jycX536GrsStOqLqJBqyOnGjiOzHD6RplgIuMhr
         cqfi9PhKoTkGTZ8ZzwXzLo9gNicYc9Uyx4ZaEBO4t2kUeDjGE0whtPh+yNLBDJwGE1bU
         XsrA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of philip.li@intel.com designates 192.55.52.120 as permitted sender) smtp.mailfrom=philip.li@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=7VRryPpV2DarRqytfH1teuTlhQmxR6GNbPjeHYtHfXY=;
        b=D89VuR1Uq7OndbRTrx0bA79zwLAd3fUdDuXWP6Oq9dl/+BNLqj48fw7+6jqytU6Nkf
         FSHdswDgxODg9ESw8FBNHtwNYfTM3ChPRclStec/cdZwMJSvIbTA6M/2qYuLNXd112ZW
         Onbl5u2oYWDJB/MuQA92rJ23rBecmx8vVCMG+Xld5Oq2mKjSELXs5D0e26ObKspcS0u1
         5wJq5MMiBWJBQcN7t6wtvFW+8AahO8Sfenf95uFr7EL/nAAetKf4JwbX4XtMEuTeQyfc
         UBsc+dble3pqphlYq6cKgAUEIcUTEl14Mdw96GcunoZjL7KCGl48hVMNem1OuWXRXKxJ
         rYZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:references:mime-version:content-disposition
         :in-reply-to:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=7VRryPpV2DarRqytfH1teuTlhQmxR6GNbPjeHYtHfXY=;
        b=LlQ74IiK3L0mBkWp3159F4a8MuBzjnpXsaiMd8GQ/rYhznREfVc+O1YK13gmB+Dqxa
         zazWAoIDx5WUqlnzx9UuaUmLzktADNphBiojduxiaowW/Q5dE09oIhnl+yaYtg5c7IGc
         9HTKOHj+6FJGv4F5zvGJi8oskrOFKEzu0B/vCJP31dEvuWKa8kt8WkfWrQOMM9Ah915h
         AeBbZVNwtKB/jy3P3KxfX/EUm6MROWKB3bMj54ag4twCaak3iXmOA+mPkKTRuXoELlBz
         kjDE1Fy08e+/Q8xRwsZU7DUvm4Zej3YePGsqMohD/+/IhuChOMsI5qYodoTYF/nHJONu
         xZzw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532Cas1Tqz5BqRgV0oGhGJy3UNYv1LKLBo90IqdhyxChUwyoww2P
	Hi1CSIbuO5+hlRAbRBob0TQ=
X-Google-Smtp-Source: ABdhPJwWVVFAnGQsJqeYhfNbmkAvL5hj8UkCrTt8Ut45ZXYi4E2x8XWXjhlPp+Vea+4A5oe4cfc/mQ==
X-Received: by 2002:a37:a703:: with SMTP id q3mr23590721qke.269.1624289460496;
        Mon, 21 Jun 2021 08:31:00 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0c:9042:: with SMTP id o60ls6228591qvo.7.gmail; Mon, 21 Jun
 2021 08:31:00 -0700 (PDT)
X-Received: by 2002:a0c:b752:: with SMTP id q18mr3658529qve.6.1624289459938;
        Mon, 21 Jun 2021 08:30:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1624289459; cv=none;
        d=google.com; s=arc-20160816;
        b=lZU6wZ9QB4eRyq9ooTr2A9RIBSgp0cdzVxbSYqDZdLrGgvAATRdKsx+k0K598myP+C
         xnh+UmgSCLZRN8E3D80Yn9C0H64il9HIAVsgU3qUX35slFBUN3L+dbph/SEIMzFilNGL
         DtRTAp5JpEy7Pg2nx540yA7RMHXaxl7LMqsAgHWWkxEuMwDiKR09Wm2geg2RCXyViezu
         EaqGkurRZYVZORvVWU9GdAz45YI3V/+Ueg7irot+/ZwrJ0QTue+i+ZIjvSwrA6XdkSAp
         bfV3tbDGMJ0E55zJa4PsUTcERztRW4PCWYEC2lvSbnzEUbsz1sknmvPlAy8y4e7qWNaN
         HzXw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:ironport-sdr:ironport-sdr;
        bh=piXRrUD1tpy0Kkp02vmRuGvAsFgmyQ7SAbqabSKJIFQ=;
        b=pmnefSZWlzUyAr6fACmyLRK5GDgN9YpMt1YHBm/7gLndRxJQR4ygYWfJJz2hu2J7/q
         E/JvH6AzT5SZjqNE+4wQ0ZekfiO7olzFYeZqpANKDrsRAPAlkcE8p55fdW1hhho7/f7B
         Gng+KdJ4IAS71+sVGtXTZLzmSuN0d27yvSd7BBWSEk7ukOFwBc/eV5TUXJbSqtLfGGnX
         8crXou7vGEXz4Ovbaix0Tuz7Aikq517VlotzEUtaWr8/hDu/7/rVl9JYPMNvhWLMC7YD
         xDLeTFaG68QHoCPUXPRzE7uTTxlpWS/tWljwrARlQlqtJkCmlKYwCsxOZbYigLxR10iF
         nDzw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of philip.li@intel.com designates 192.55.52.120 as permitted sender) smtp.mailfrom=philip.li@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga04.intel.com (mga04.intel.com. [192.55.52.120])
        by gmr-mx.google.com with ESMTPS id m6si1055011qkg.2.2021.06.21.08.30.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 21 Jun 2021 08:30:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of philip.li@intel.com designates 192.55.52.120 as permitted sender) client-ip=192.55.52.120;
IronPort-SDR: A85VhXeRv+SpECnVaKryFtRgH3KdR6gYZ/VaKxoFhfcGbbHAXdp+nmsZ+HGyAkZ25aupAJZBGe
 Ybaic5yN9CKw==
X-IronPort-AV: E=McAfee;i="6200,9189,10022"; a="205043270"
X-IronPort-AV: E=Sophos;i="5.83,289,1616482800"; 
   d="scan'208";a="205043270"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
  by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 21 Jun 2021 08:30:58 -0700
IronPort-SDR: UQt4g0r2BIYDIQP9fQBfiW9LRM4QNZjHrvxjN18XNUvcAXMfVu6yW5vflt09PH3/iCdkk/nTF+
 2OS0RkN7wufA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,289,1616482800"; 
   d="scan'208";a="641355129"
Received: from pl-dbox.sh.intel.com (HELO pl-dbox) ([10.239.159.39])
  by fmsmga005.fm.intel.com with ESMTP; 21 Jun 2021 08:30:56 -0700
Date: Mon, 21 Jun 2021 23:23:28 +0800
From: Philip Li <philip.li@intel.com>
To: kernel test robot <lkp@intel.com>
Cc: Colin Ian King <colin.king@canonical.com>, kbuild-all@lists.01.org,
	clang-built-linux@googlegroups.com,
	Vignesh Raghavendra <vigneshr@ti.com>,
	Michael Walle <michael@walle.cc>, Pratyush Yadav <p.yadav@ti.com>
Subject: Re: [kbuild-all] [mtd:spi-nor/next 13/13] make[2]: *** No rule to
 make target
 '/tmp/kernel/x86_64-randconfig-r012-20210621/clang-13/c17e5c85b32f8809135f3211ba2525fb98b5c09f/lib/modules/5.13.0-rc3+/kernel/drivers/net/net_failover.ko',
 needed by '__modinst'.
Message-ID: <20210621152328.GF158568@pl-dbox>
References: <202106212109.xQ3nKUuC-lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <202106212109.xQ3nKUuC-lkp@intel.com>
X-Original-Sender: philip.li@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of philip.li@intel.com designates 192.55.52.120 as
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

On Mon, Jun 21, 2021 at 09:43:16PM +0800, kernel test robot wrote:
> Hi Colin,
> 
> First bad commit (maybe != root cause):
> 
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/mtd/linux.git spi-nor/next
> head:   c17e5c85b32f8809135f3211ba2525fb98b5c09f
> commit: c17e5c85b32f8809135f3211ba2525fb98b5c09f [13/13] mtd: spi-nor: remove redundant continue statement
> config: x86_64-randconfig-r012-20210621 (attached as .config)
> compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project e1adf90826a57b674eee79b071fb46c1f5683cd0)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install x86_64 cross compiling tool for clang build
>         # apt-get install binutils-x86-64-linux-gnu
>         # https://git.kernel.org/pub/scm/linux/kernel/git/mtd/linux.git/commit/?id=c17e5c85b32f8809135f3211ba2525fb98b5c09f
>         git remote add mtd https://git.kernel.org/pub/scm/linux/kernel/git/mtd/linux.git
>         git fetch --no-tags mtd spi-nor/next
>         git checkout c17e5c85b32f8809135f3211ba2525fb98b5c09f
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
> >> make[2]: *** No rule to make target '/tmp/kernel/x86_64-randconfig-r012-20210621/clang-13/c17e5c85b32f8809135f3211ba2525fb98b5c09f/lib/modules/5.13.0-rc3+/kernel/drivers/net/net_failover.ko', needed by '__modinst'.
> >> make[2]: *** No rule to make target '/tmp/kernel/x86_64-randconfig-r012-20210621/clang-13/c17e5c85b32f8809135f3211ba2525fb98b5c09f/lib/modules/5.13.0-rc3+/kernel/drivers/net/virtio_net.ko', needed by '__modinst'.
> >> make[2]: *** No rule to make target '/tmp/kernel/x86_64-randconfig-r012-20210621/clang-13/c17e5c85b32f8809135f3211ba2525fb98b5c09f/lib/modules/5.13.0-rc3+/kernel/kernel/locking/locktorture.ko', needed by '__modinst'.
> >> make[2]: *** No rule to make target '/tmp/kernel/x86_64-randconfig-r012-20210621/clang-13/c17e5c85b32f8809135f3211ba2525fb98b5c09f/lib/modules/5.13.0-rc3+/kernel/kernel/rcu/rcuscale.ko', needed by '__modinst'.
> >> make[2]: *** No rule to make target '/tmp/kernel/x86_64-randconfig-r012-20210621/clang-13/c17e5c85b32f8809135f3211ba2525fb98b5c09f/lib/modules/5.13.0-rc3+/kernel/kernel/rcu/rcutorture.ko', needed by '__modinst'.
> >> make[2]: *** No rule to make target '/tmp/kernel/x86_64-randconfig-r012-20210621/clang-13/c17e5c85b32f8809135f3211ba2525fb98b5c09f/lib/modules/5.13.0-rc3+/kernel/kernel/torture.ko', needed by '__modinst'.
> >> make[2]: *** No rule to make target '/tmp/kernel/x86_64-randconfig-r012-20210621/clang-13/c17e5c85b32f8809135f3211ba2525fb98b5c09f/lib/modules/5.13.0-rc3+/kernel/net/core/failover.ko', needed by '__modinst'.
>    make[2]: Target '__modinst' not remade because of errors.
>    make[1]: *** [Makefile:1765: modules_install] Error 2
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210621152328.GF158568%40pl-dbox.
