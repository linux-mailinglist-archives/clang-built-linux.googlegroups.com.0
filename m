Return-Path: <clang-built-linux+bncBCUJ7YGL3QFBBQPD7GEAMGQESBUZNUY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb38.google.com (mail-yb1-xb38.google.com [IPv6:2607:f8b0:4864:20::b38])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B9AC3F1C15
	for <lists+clang-built-linux@lfdr.de>; Thu, 19 Aug 2021 16:59:14 +0200 (CEST)
Received: by mail-yb1-xb38.google.com with SMTP id s205-20020a252cd6000000b0059449776539sf6682482ybs.22
        for <lists+clang-built-linux@lfdr.de>; Thu, 19 Aug 2021 07:59:14 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629385153; cv=pass;
        d=google.com; s=arc-20160816;
        b=TLmy0cZuWDj1CyDOpqoYZstWJynD1WQAo745SttnaYA/pCqPAZX63kUt/usyDLrnzd
         U56sHWTX3Py9t5TQgrqNcqdyHsgouVTfQRhFTc9tlou8aFZwkzSPrrmbWgVujbSfXHpM
         5jhS1tzWjhy5hbC9d7SCgEb+Y6p4Uvk4malQNOK76lJsH6/JMlpRBi4kGlHkfBuo2Y+0
         cmuqXgypnA8dy+h4a7f84/8gSz/4mVAjGB5XjMyxgpWXpoJBmz5pc1ea2X524+634Szu
         8BdnD5LkS+rDdDt9p0beX3W+jng3Xq3nvQhpUbwnLQ7Ph4OZ9k9X1B3gmVL2oGi8aR/9
         5orA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=1uEKMfk7tiF8Gu5D6vLve6EWRDW6nyqNYfnKJ/DCEWQ=;
        b=O3gZwyxpTlUmMEiPlVRuplJ42Z1AdwHWFKq8YT69j8QtGMykGyb11CDQx5wh4CE+uK
         oxCqJ5Z/ABREU5jFjKxx+5ooyCVejGgMbKklJkcRwqSNIfyxe8hGE+kJ7htwa1kctcO9
         9xqQyf79Yt0qW7Fe0nyPQ6QpT1UctPm2ZBfepN1zWvatTamIY24GA63BqcJLx+ilSWoN
         1NPM46F83tc7fJGhZzeAHnN7Sv1ACPEHbl5YOQz1i3QaBr6pOYsPYO9zxfRfPjdUeMY/
         eKe2SsjX2Whfx97/vwYNhFyrPP+ItgP9/m6nV51qTScJmerr9uLl5BKisRh80tZoDK7/
         p1IA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=AXUYZCBi;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=1uEKMfk7tiF8Gu5D6vLve6EWRDW6nyqNYfnKJ/DCEWQ=;
        b=qOM18bJqGh5aPZMU4QgyOYreKMvYwlrucFjIPhgc4wD+/c6aTZ0BrfsL3RliEue6KL
         VzU/tRZmWPI4B0cWP6HjbRxRAZj6Ru8DVRjisssB++xWZCGnmrBl5emCSWzYKg1Y4l/s
         IG6DSGrgM2uRPmG7LziXy8SOVFbyoNog1asFATzTvEH+Upgs70PuxYQbmJlf7PFkyWki
         0KpPZqBAhoT1SwoY6l8Vp5V+F2BGKpvBVc2667QYVzksNs441Xe6hKaMs/4SQ5I3izNW
         q2HK1L6Iw945alX9L0lvVnF5f9xDTYLqEC+R7LITLru5rqSZvYAGgZ8yjQnnIZuIQSif
         qmxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=1uEKMfk7tiF8Gu5D6vLve6EWRDW6nyqNYfnKJ/DCEWQ=;
        b=Iehf5aQkzk0sPrwM8ySETgSyWuXGaeKRltSBR6OaVS11ru9QMceioExiRnXWWHTetu
         ZbosMyMovP5b2MBV8q1rEE1U0Btmb52pntrBx/2bZHjoX8Xp3PvzmF4J41fOUceDZFy3
         cjcGuUysp+G876IIRYTGNp2EyyUBV/C/IaDsNPPNTLRTyHlkdg/LyK6l+NFG8H0lmIBP
         F+7t2WgKEe2Efadd6Q5cIXsC17ZbvaJxPy1pwmILNTUGmvt3VuupuuoSn0LbMb4iZCZM
         Ih0cb6H88+wTTgNPofIa9NvE+O0lkmL7rZRUDES0TTL0j5MQWJNke9tWEv68CoQ+EnJu
         2YMQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532fbuG+wCnK4h3INQb0r7UWcYDXDCdjfenKWrCMD0LwBggv6l4I
	7hi6dZouEiqA9EXFOO54sAM=
X-Google-Smtp-Source: ABdhPJy1/Ae9as1t//UzuAQZBkNJTdjeZEauDWDpWqrRC2E2IWb7Kj0kT6C+SLMnlufrkicxbupKhw==
X-Received: by 2002:a25:c7d1:: with SMTP id w200mr20455927ybe.161.1629385153277;
        Thu, 19 Aug 2021 07:59:13 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:7bc7:: with SMTP id w190ls1735729ybc.2.gmail; Thu, 19
 Aug 2021 07:59:12 -0700 (PDT)
X-Received: by 2002:a25:31c5:: with SMTP id x188mr19195783ybx.185.1629385152791;
        Thu, 19 Aug 2021 07:59:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629385152; cv=none;
        d=google.com; s=arc-20160816;
        b=Kwv+5NaKxvYyn1ol2O8yZpJdqugEIAP8Y1j/06vKgNVE6vOKzhRjrZh2Bq0fki9qIn
         6Yp26wDgS6ml+HzP3NTpiih+WpGw4vLkREVovI8K0gkd7eBKoouwAZdqZwSFdmWjWvKF
         xM4btUkDJH6lSZSjr1iYXIhmJjv5Uuw5U3B6HKKeOuy7M+8dmV4/Uh058iOHphH1Kx5M
         wc24fMa26iTJjtmD3QCiCytyOT6nHHqAXgTYf1q/3cQ1Z40ilK8bXOPeBmzz5geNOtPU
         zq65r/rvGSC7SKaPKYhqzLDG86cHzP23v319ysv0uzCFQQ7kImcjdvhdCX1dCM4NiGYd
         74bA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=XJmVRw5VASf5LRGUeh+/T07P5knYY7O6J/BHO00kUEM=;
        b=fptCn1cPjQQh6ala6i8JdTNKCqwFqyr5CgW0MhuPsWRg9/mn7CBUMUaKjVFf815fFZ
         yshSQc/B/ZwjiX4qibh2aZddT4bf7r9pFQ66aVxcOsxD/O7/rKhGHs+bhNsbEbQPynd8
         R0yn5/h/OdMIEVv8fiaBd1jTDww1M8ZIN7gA1l4GDSIoZBSPYn2jVQV8mEh7uHK4ypJR
         pmkyO6G+lEyoMMquLsP3r/oEdTV3ZbOXOMqEqMlo0Oo5qS3pdWCVHv93mXaAtUq0shfB
         QH5UgKVJDxu9NBv2gvVyA0W4MkwKkP2ipN55OdTtamxXOiRuIhs9lIjQgZFS2JgABxY1
         UQvw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=AXUYZCBi;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id q62si288471ybc.4.2021.08.19.07.59.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 19 Aug 2021 07:59:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 004DE61053;
	Thu, 19 Aug 2021 14:59:10 +0000 (UTC)
Date: Thu, 19 Aug 2021 16:59:04 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Rui Miguel Silva <rui.silva@linaro.org>
Cc: kernel test robot <lkp@intel.com>, clang-built-linux@googlegroups.com,
	kbuild-all@lists.01.org, linux-usb@vger.kernel.org
Subject: Re: [usb:usb-testing 54/97] drivers/usb/isp1760/isp1760-hcd.c:735:2:
 warning: Value stored to 'scratch' is never read
 [clang-analyzer-deadcode.DeadStores]
Message-ID: <YR5xuManlukIAf3L@kroah.com>
References: <202108190619.wLK5u4fO-lkp@intel.com>
 <CDNBNHH65Z6Z.3P3H9W04XAHDB@arch-thunder>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CDNBNHH65Z6Z.3P3H9W04XAHDB@arch-thunder>
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linuxfoundation.org header.s=korg header.b=AXUYZCBi;       spf=pass
 (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
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

On Thu, Aug 19, 2021 at 08:47:37AM +0100, Rui Miguel Silva wrote:
> Hi,
> On Wed Aug 18, 2021 at 11:09 PM WEST, kernel test robot wrote:
> 
> > tree:   https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/usb.git usb-testing
> > head:   e4788edc730a0d2b26e1ae1f08fbb3f635b92dbb
> > commit: 7de14c88272c05d86fce83a5cead36832ce3a424 [54/97] usb: isp1760: remove debug message as error
> > config: riscv-randconfig-c006-20210818 (attached as .config)
> > compiler: clang version 14.0.0 (https://github.com/llvm/llvm-project d2b574a4dea5b718e4386bf2e26af0126e5978ce)
> > reproduce (this is a W=1 build):
> >         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
> >         chmod +x ~/bin/make.cross
> >         # install riscv cross compiling tool for clang build
> >         # apt-get install binutils-riscv64-linux-gnu
> >         # https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/usb.git/commit/?id=7de14c88272c05d86fce83a5cead36832ce3a424
> >         git remote add usb https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/usb.git
> >         git fetch --no-tags usb usb-testing
> >         git checkout 7de14c88272c05d86fce83a5cead36832ce3a424
> >         # save the attached .config to linux build tree
> >         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=riscv clang-analyzer 
> >
> > If you fix the issue, kindly add following tag as appropriate
> > Reported-by: kernel test robot <lkp@intel.com>
> >
> >
> > clang-analyzer warnings: (new ones prefixed by >>)
> >                    ^      ~
> >    drivers/target/target_core_configfs.c:2627:23: warning: Value stored to 'alua_lu_gp_cg' during its initialization is never read [clang-analyzer-deadcode.DeadStores]
> >            struct config_group *alua_lu_gp_cg = &lu_gp->lu_gp_group;
> >                                 ^~~~~~~~~~~~~   ~~~~~~~~~~~~~~~~~~~
> >    drivers/target/target_core_configfs.c:2627:23: note: Value stored to 'alua_lu_gp_cg' during its initialization is never read
> >            struct config_group *alua_lu_gp_cg = &lu_gp->lu_gp_group;
> >                                 ^~~~~~~~~~~~~   ~~~~~~~~~~~~~~~~~~~
> >    drivers/target/target_core_configfs.c:2731:2: warning: Value stored to 'alua_lu_gp_ci' is never read [clang-analyzer-deadcode.DeadStores]
> >            alua_lu_gp_ci = &alua_lu_gp_cg->cg_item;
> >            ^               ~~~~~~~~~~~~~~~~~~~~~~~
> >    drivers/target/target_core_configfs.c:2731:2: note: Value stored to 'alua_lu_gp_ci' is never read
> >            alua_lu_gp_ci = &alua_lu_gp_cg->cg_item;
> >            ^               ~~~~~~~~~~~~~~~~~~~~~~~
> >    drivers/target/target_core_configfs.c:2748:25: warning: Value stored to 'lu_gp' during its initialization is never read [clang-analyzer-deadcode.DeadStores]
> >            struct t10_alua_lu_gp *lu_gp = container_of(to_config_group(item),
> >                                   ^~~~~
> >    drivers/target/target_core_configfs.c:2748:25: note: Value stored to 'lu_gp' during its initialization is never read
> >            struct t10_alua_lu_gp *lu_gp = container_of(to_config_group(item),
> >                                   ^~~~~
> >    drivers/target/target_core_configfs.c:3026:23: warning: Value stored to 'alua_tg_pt_gp_cg' during its initialization is never read [clang-analyzer-deadcode.DeadStores]
> >            struct config_group *alua_tg_pt_gp_cg = &tg_pt_gp->tg_pt_gp_group;
> >                                 ^~~~~~~~~~~~~~~~   ~~~~~~~~~~~~~~~~~~~~~~~~~
> >    drivers/target/target_core_configfs.c:3026:23: note: Value stored to 'alua_tg_pt_gp_cg' during its initialization is never read
> >            struct config_group *alua_tg_pt_gp_cg = &tg_pt_gp->tg_pt_gp_group;
> >                                 ^~~~~~~~~~~~~~~~   ~~~~~~~~~~~~~~~~~~~~~~~~~
> >    drivers/target/target_core_configfs.c:3163:2: warning: Value stored to 'alua_tg_pt_gp_ci' is never read [clang-analyzer-deadcode.DeadStores]
> >            alua_tg_pt_gp_ci = &alua_tg_pt_gp_cg->cg_item;
> >            ^                  ~~~~~~~~~~~~~~~~~~~~~~~~~~
> >    drivers/target/target_core_configfs.c:3163:2: note: Value stored to 'alua_tg_pt_gp_ci' is never read
> >            alua_tg_pt_gp_ci = &alua_tg_pt_gp_cg->cg_item;
> >            ^                  ~~~~~~~~~~~~~~~~~~~~~~~~~~
> >    drivers/target/target_core_configfs.c:3179:28: warning: Value stored to 'tg_pt_gp' during its initialization is never read [clang-analyzer-deadcode.DeadStores]
> >            struct t10_alua_tg_pt_gp *tg_pt_gp = container_of(to_config_group(item),
> >                                      ^~~~~~~~
> >    drivers/target/target_core_configfs.c:3179:28: note: Value stored to 'tg_pt_gp' during its initialization is never read
> >            struct t10_alua_tg_pt_gp *tg_pt_gp = container_of(to_config_group(item),
> >                                      ^~~~~~~~
> >    Suppressed 4 warnings (4 in non-user code).
> >    Use -header-filter=.* to display errors from all non-system headers. Use -system-headers to display errors from system headers as well.
> >    6 warnings generated.
> >    drivers/misc/eeprom/at24.c:334:2: warning: Value stored to 'client' is never read [clang-analyzer-deadcode.DeadStores]
> >            client = at24_client->client;
> >            ^        ~~~~~~~~~~~~~~~~~~~
> >    drivers/misc/eeprom/at24.c:334:2: note: Value stored to 'client' is never read
> >            client = at24_client->client;
> >            ^        ~~~~~~~~~~~~~~~~~~~
> >    drivers/misc/eeprom/at24.c:397:2: warning: Value stored to 'client' is never read [clang-analyzer-deadcode.DeadStores]
> >            client = at24_client->client;
> >            ^        ~~~~~~~~~~~~~~~~~~~
> >    drivers/misc/eeprom/at24.c:397:2: note: Value stored to 'client' is never read
> >            client = at24_client->client;
> >            ^        ~~~~~~~~~~~~~~~~~~~
> >    Suppressed 4 warnings (4 in non-user code).
> >    Use -header-filter=.* to display errors from all non-system headers. Use -system-headers to display errors from system headers as well.
> >    4 warnings generated.
> >    Suppressed 4 warnings (4 in non-user code).
> >    Use -header-filter=.* to display errors from all non-system headers. Use -system-headers to display errors from system headers as well.
> >    4 warnings generated.
> >    Suppressed 4 warnings (4 in non-user code).
> >    Use -header-filter=.* to display errors from all non-system headers. Use -system-headers to display errors from system headers as well.
> >    4 warnings generated.
> >    Suppressed 4 warnings (4 in non-user code).
> >    Use -header-filter=.* to display errors from all non-system headers. Use -system-headers to display errors from system headers as well.
> >    4 warnings generated.
> >    Suppressed 4 warnings (4 in non-user code).
> >    Use -header-filter=.* to display errors from all non-system headers. Use -system-headers to display errors from system headers as well.
> >    4 warnings generated.
> >    Suppressed 4 warnings (4 in non-user code).
> >    Use -header-filter=.* to display errors from all non-system headers. Use -system-headers to display errors from system headers as well.
> >    4 warnings generated.
> >    Suppressed 4 warnings (4 in non-user code).
> >    Use -header-filter=.* to display errors from all non-system headers. Use -system-headers to display errors from system headers as well.
> >    4 warnings generated.
> >    Suppressed 4 warnings (4 in non-user code).
> >    Use -header-filter=.* to display errors from all non-system headers. Use -system-headers to display errors from system headers as well.
> >    4 warnings generated.
> >    Suppressed 4 warnings (4 in non-user code).
> >    Use -header-filter=.* to display errors from all non-system headers. Use -system-headers to display errors from system headers as well.
> >    4 warnings generated.
> >    Suppressed 4 warnings (4 in non-user code).
> >    Use -header-filter=.* to display errors from all non-system headers. Use -system-headers to display errors from system headers as well.
> >    4 warnings generated.
> >    Suppressed 4 warnings (4 in non-user code).
> >    Use -header-filter=.* to display errors from all non-system headers. Use -system-headers to display errors from system headers as well.
> >    4 warnings generated.
> >    Suppressed 4 warnings (4 in non-user code).
> >    Use -header-filter=.* to display errors from all non-system headers. Use -system-headers to display errors from system headers as well.
> >    5 warnings generated.
> >    drivers/usb/isp1760/isp1760-core.c:490:2: warning: Value stored to 'udc_enabled' is never read [clang-analyzer-deadcode.DeadStores]
> >            udc_enabled = ((devflags & ISP1760_FLAG_ISP1763) ||
> >            ^             ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> >    drivers/usb/isp1760/isp1760-core.c:490:2: note: Value stored to 'udc_enabled' is never read
> >            udc_enabled = ((devflags & ISP1760_FLAG_ISP1763) ||
> >            ^             ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> >    Suppressed 4 warnings (4 in non-user code).
> >    Use -header-filter=.* to display errors from all non-system headers. Use -system-headers to display errors from system headers as well.
> >    4 warnings generated.
> >    Suppressed 4 warnings (4 in non-user code).
> >    Use -header-filter=.* to display errors from all non-system headers. Use -system-headers to display errors from system headers as well.
> >    9 warnings generated.
> > >> drivers/usb/isp1760/isp1760-hcd.c:735:2: warning: Value stored to 'scratch' is never read [clang-analyzer-deadcode.DeadStores]
> >            scratch = isp1760_hcd_read(hcd, HC_CHIP_ID_HIGH);
> >            ^         ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> 
> yeah, this is desired behaviour, this read is only to make sure  that
> we make something different than the pattern to test go over the bus.
> However I will take a look to this warning and other clang warnings
> that I am seeing in this report.

This is why I hate this type of warning, doing a read like this is
totally normal for drivers.  Compilers that think this is something they
can ignore or warn about are just wrong.

greg k-h

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YR5xuManlukIAf3L%40kroah.com.
