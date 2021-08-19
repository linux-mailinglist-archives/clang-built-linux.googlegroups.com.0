Return-Path: <clang-built-linux+bncBCCMHRGGVMEBBG4Z7CEAMGQEA4ERU3Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ej1-x640.google.com (mail-ej1-x640.google.com [IPv6:2a00:1450:4864:20::640])
	by mail.lfdr.de (Postfix) with ESMTPS id 68F1F3F1483
	for <lists+clang-built-linux@lfdr.de>; Thu, 19 Aug 2021 09:47:40 +0200 (CEST)
Received: by mail-ej1-x640.google.com with SMTP id m24-20020a17090607d800b005c18a22567fsf717958ejc.3
        for <lists+clang-built-linux@lfdr.de>; Thu, 19 Aug 2021 00:47:40 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629359260; cv=pass;
        d=google.com; s=arc-20160816;
        b=KK3kJJPtEUS3dVziAmdl7D6MWKpA8gtKPF2JdtBFdLy5N837evJUukleqUrCGcakqg
         ox3wmRrCAVG+jsCzVHbwiN+2WhKghNdSFlUVHen5tDkdnftufSezCkvUBksxEhIK3Ugz
         Scx4TGNheRJn5beu5ozJeB4GWUK2ktoijjBNRDr4k0E7wdAZr0Wba4ksF86mUnwgZjPF
         0M1gcON53jYlgvyoZAkA1Fk89GoFV7f9zs/ERtIHRTDc5Kq8t0POEx0ocnF9K2lQGrQ+
         GuAfaaS/7NzcCnlQxLuzwJv72GUciflgdrSgpOMVfHvH4Z+fFjsX/QWYOnhGk+TPTkSN
         8rXQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:references:to:from
         :subject:cc:message-id:date:mime-version:sender:dkim-signature;
        bh=PiVq11QbR8/UBxG7sD5GTTdg7VP3LF8sT31iovvCKa4=;
        b=LxF8atTt2bdBsg00cvHLuGy+mb0pKgcXkYvYhT1FUirAWI9o8td85LmHzh7W0K/XkD
         OJjk2Gvj9/a5npnJT49K+53+AhEvs17AIiPFqTGXk4bf8jjPB91CQSC9WOFxfKbxyQx1
         HDcRoY41AWGtg1Ilwr6aMoLVGK4LNgB5OnxfnnoeBHqhFkmmxF6pTSR1IKfZwa/qo0li
         J/krJBb7hpMvvM18chvWhyRWvDzcLwHgFZ3EHp7fOrn1Z9Lqm5PL3B/71YaXzyvMTHlw
         E0SQlwHIKyaKtucQaJOWL4XSswpSDTLuc800zOf1Y26VIYPyR/lebeCtOxpLwSskal6F
         ZHLA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=Pw+AR7aF;
       spf=pass (google.com: domain of rui.silva@linaro.org designates 2a00:1450:4864:20::431 as permitted sender) smtp.mailfrom=rui.silva@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:mime-version:date:message-id:cc:subject:from:to:references
         :in-reply-to:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=PiVq11QbR8/UBxG7sD5GTTdg7VP3LF8sT31iovvCKa4=;
        b=ZWr/O0Nr6wFP9O8Odrdsl7ZS4XPGUnZoXZge+beerUUgtS3/dM1OJvY3NCSQraMTu1
         SmpaoqShd13KR0wEgmE6RKsCEOs6hBRHHzrbNt5kRJoNxegzbGOpY+I/2CLCop+OaJzq
         3MtwuHNAD/R13VvZnVNo9CHzY9Oqua4kf+werDMj5atLMKQ8Bj8ADD8FaXifVuEtY279
         4+VDa2Mii6H9PeexjGJNEfrbAoB/aaVmUeYHOGbZskX74tXCnP4nrasloIXtmpm4iE6/
         /pwwx49wmcotmalq9YCsV/5Uv9uAgbaK6cM/bvOU1LQStjvdZzG4YtwpSo/pDpvCuSjk
         8Lfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:date:message-id:cc:subject
         :from:to:references:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=PiVq11QbR8/UBxG7sD5GTTdg7VP3LF8sT31iovvCKa4=;
        b=VxQxpMSY1rtFIyDpC+6DO4bmrqSRBbJEPd74rXMz4s1V29CsEB7qN30VQ9IZuYvlWr
         j8Cl9++K0mzFZs92p1AmWyl6VZLhxLKfvDzzpnuAcU3r5qsDbMxDE6ddpPKxq1KIDlUh
         XzB0IU4DRWmSFpRyllCiAbnbTB1KVFNbgGvRrhBdJk3WntvbVGneXC4dTlM/ZDanSN0a
         /UlyGR/DDvodR7EUa8z/N0jFOhg1p7MhmPNOHBZNF2k9qw725bWf8rXSTULosSs+XQiQ
         p/IyOmVCi7Fv1DJWhF/U8sAwqXYiCqLOFzTcM777THG7IEx+fD94scutPGFcs6JOkv4X
         g+6Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533G30OzvtcGIfv/Of4HcDEAS49N7Pnm4Pj4TNpJXWyW8K2JAfMs
	3ju0pMF2odK0Ns7L+mva404=
X-Google-Smtp-Source: ABdhPJwjX1pZ001kJk9/3YOMdi9YNPJ78cpvtL4AXEH87pVtf69ZEf/A8ia19aBzqIT4dZYPDYaswQ==
X-Received: by 2002:aa7:cb19:: with SMTP id s25mr15211087edt.194.1629359260152;
        Thu, 19 Aug 2021 00:47:40 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:7e4f:: with SMTP id z15ls2185251ejr.1.gmail; Thu, 19
 Aug 2021 00:47:39 -0700 (PDT)
X-Received: by 2002:a17:906:fa11:: with SMTP id lo17mr14569986ejb.432.1629359259204;
        Thu, 19 Aug 2021 00:47:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629359259; cv=none;
        d=google.com; s=arc-20160816;
        b=0S+/tUGqX7Ycwv85WNZ2RRNZLAxCnqpW/aaSWhg6B2rKKdIxgMZx04m8XB50ZmWC6h
         S2RLlUtsGTbED3WdJm/0nZ+yiUEgwmF0WKIuzocE6pnlq1u5+HltPYVb/D4rKGd/pZ/o
         HtiVyk1ysHirjvIPwO5JjXDfBEFjnmF3tw9Q6H/NamwgHffp+2iTWZfgmOTjBJJc0ReJ
         linkdeIBLqPyTSiGXf4ZTcDXz8ymvEBZf+rF30/rFI5RbniNuMoZIg7ahuTIrKqKs/dz
         7/LvM5j8RE3BKOP1qkHkWsqF0UUjLCRJRFTT5q1iXx+p2CteUuT0rshhDO0DCCmRREsf
         6uNg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:dkim-signature;
        bh=FudC1LQQgorqgCvY4YmEWsg2a7D4yTzNn6OmCaRWFF8=;
        b=zJi0zrM62VvFxgXre/yuIsX27is9OjYIQabLU+uOp7SFgUDPNhwkHnOU0L/WK5mpRV
         oKig8h+c3NFIumpOna4f9wY32PFuspV64NNCs7VY9g31PQEkJ3Vdw7Kpn0XJakJQoFAh
         dgItd6CeAB8eb2moBw+IRaGgBWqzTdM+exrIPSYFZk5OxydVpVy8mlPXtdsByEEKLuq9
         SOnzyKOCFElL0drHtoe9YRcikugu2vqZlNvmZrhjvtb80Hz6I5cK+nC5atcBstcxvbE4
         7QVSTvUb0uhvYsv7Mh6dcvZblknlBwqAhhAT8hJu27aosGoMDoOWYP8PndnQ09XQqCJg
         tvSw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=Pw+AR7aF;
       spf=pass (google.com: domain of rui.silva@linaro.org designates 2a00:1450:4864:20::431 as permitted sender) smtp.mailfrom=rui.silva@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com. [2a00:1450:4864:20::431])
        by gmr-mx.google.com with ESMTPS id s18si151071ejo.1.2021.08.19.00.47.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 19 Aug 2021 00:47:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of rui.silva@linaro.org designates 2a00:1450:4864:20::431 as permitted sender) client-ip=2a00:1450:4864:20::431;
Received: by mail-wr1-x431.google.com with SMTP id u16so7582534wrn.5
        for <clang-built-linux@googlegroups.com>; Thu, 19 Aug 2021 00:47:39 -0700 (PDT)
X-Received: by 2002:adf:fb8d:: with SMTP id a13mr2150945wrr.164.1629359258835;
        Thu, 19 Aug 2021 00:47:38 -0700 (PDT)
Received: from localhost (a109-49-46-234.cpe.netcabo.pt. [109.49.46.234])
        by smtp.gmail.com with ESMTPSA id 2sm1802717wmo.38.2021.08.19.00.47.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Aug 2021 00:47:38 -0700 (PDT)
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Date: Thu, 19 Aug 2021 08:47:37 +0100
Message-Id: <CDNBNHH65Z6Z.3P3H9W04XAHDB@arch-thunder>
Cc: <clang-built-linux@googlegroups.com>, <kbuild-all@lists.01.org>,
 <linux-usb@vger.kernel.org>, "Greg Kroah-Hartman"
 <gregkh@linuxfoundation.org>
Subject: Re: [usb:usb-testing 54/97]
 drivers/usb/isp1760/isp1760-hcd.c:735:2: warning: Value stored to 'scratch'
 is never read [clang-analyzer-deadcode.DeadStores]
From: "Rui Miguel Silva" <rui.silva@linaro.org>
To: "kernel test robot" <lkp@intel.com>
References: <202108190619.wLK5u4fO-lkp@intel.com>
In-Reply-To: <202108190619.wLK5u4fO-lkp@intel.com>
X-Original-Sender: rui.silva@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=Pw+AR7aF;       spf=pass
 (google.com: domain of rui.silva@linaro.org designates 2a00:1450:4864:20::431
 as permitted sender) smtp.mailfrom=rui.silva@linaro.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=linaro.org
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

Hi,
On Wed Aug 18, 2021 at 11:09 PM WEST, kernel test robot wrote:

> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/usb.git usb-testing
> head:   e4788edc730a0d2b26e1ae1f08fbb3f635b92dbb
> commit: 7de14c88272c05d86fce83a5cead36832ce3a424 [54/97] usb: isp1760: remove debug message as error
> config: riscv-randconfig-c006-20210818 (attached as .config)
> compiler: clang version 14.0.0 (https://github.com/llvm/llvm-project d2b574a4dea5b718e4386bf2e26af0126e5978ce)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install riscv cross compiling tool for clang build
>         # apt-get install binutils-riscv64-linux-gnu
>         # https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/usb.git/commit/?id=7de14c88272c05d86fce83a5cead36832ce3a424
>         git remote add usb https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/usb.git
>         git fetch --no-tags usb usb-testing
>         git checkout 7de14c88272c05d86fce83a5cead36832ce3a424
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=riscv clang-analyzer 
>
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
>
>
> clang-analyzer warnings: (new ones prefixed by >>)
>                    ^      ~
>    drivers/target/target_core_configfs.c:2627:23: warning: Value stored to 'alua_lu_gp_cg' during its initialization is never read [clang-analyzer-deadcode.DeadStores]
>            struct config_group *alua_lu_gp_cg = &lu_gp->lu_gp_group;
>                                 ^~~~~~~~~~~~~   ~~~~~~~~~~~~~~~~~~~
>    drivers/target/target_core_configfs.c:2627:23: note: Value stored to 'alua_lu_gp_cg' during its initialization is never read
>            struct config_group *alua_lu_gp_cg = &lu_gp->lu_gp_group;
>                                 ^~~~~~~~~~~~~   ~~~~~~~~~~~~~~~~~~~
>    drivers/target/target_core_configfs.c:2731:2: warning: Value stored to 'alua_lu_gp_ci' is never read [clang-analyzer-deadcode.DeadStores]
>            alua_lu_gp_ci = &alua_lu_gp_cg->cg_item;
>            ^               ~~~~~~~~~~~~~~~~~~~~~~~
>    drivers/target/target_core_configfs.c:2731:2: note: Value stored to 'alua_lu_gp_ci' is never read
>            alua_lu_gp_ci = &alua_lu_gp_cg->cg_item;
>            ^               ~~~~~~~~~~~~~~~~~~~~~~~
>    drivers/target/target_core_configfs.c:2748:25: warning: Value stored to 'lu_gp' during its initialization is never read [clang-analyzer-deadcode.DeadStores]
>            struct t10_alua_lu_gp *lu_gp = container_of(to_config_group(item),
>                                   ^~~~~
>    drivers/target/target_core_configfs.c:2748:25: note: Value stored to 'lu_gp' during its initialization is never read
>            struct t10_alua_lu_gp *lu_gp = container_of(to_config_group(item),
>                                   ^~~~~
>    drivers/target/target_core_configfs.c:3026:23: warning: Value stored to 'alua_tg_pt_gp_cg' during its initialization is never read [clang-analyzer-deadcode.DeadStores]
>            struct config_group *alua_tg_pt_gp_cg = &tg_pt_gp->tg_pt_gp_group;
>                                 ^~~~~~~~~~~~~~~~   ~~~~~~~~~~~~~~~~~~~~~~~~~
>    drivers/target/target_core_configfs.c:3026:23: note: Value stored to 'alua_tg_pt_gp_cg' during its initialization is never read
>            struct config_group *alua_tg_pt_gp_cg = &tg_pt_gp->tg_pt_gp_group;
>                                 ^~~~~~~~~~~~~~~~   ~~~~~~~~~~~~~~~~~~~~~~~~~
>    drivers/target/target_core_configfs.c:3163:2: warning: Value stored to 'alua_tg_pt_gp_ci' is never read [clang-analyzer-deadcode.DeadStores]
>            alua_tg_pt_gp_ci = &alua_tg_pt_gp_cg->cg_item;
>            ^                  ~~~~~~~~~~~~~~~~~~~~~~~~~~
>    drivers/target/target_core_configfs.c:3163:2: note: Value stored to 'alua_tg_pt_gp_ci' is never read
>            alua_tg_pt_gp_ci = &alua_tg_pt_gp_cg->cg_item;
>            ^                  ~~~~~~~~~~~~~~~~~~~~~~~~~~
>    drivers/target/target_core_configfs.c:3179:28: warning: Value stored to 'tg_pt_gp' during its initialization is never read [clang-analyzer-deadcode.DeadStores]
>            struct t10_alua_tg_pt_gp *tg_pt_gp = container_of(to_config_group(item),
>                                      ^~~~~~~~
>    drivers/target/target_core_configfs.c:3179:28: note: Value stored to 'tg_pt_gp' during its initialization is never read
>            struct t10_alua_tg_pt_gp *tg_pt_gp = container_of(to_config_group(item),
>                                      ^~~~~~~~
>    Suppressed 4 warnings (4 in non-user code).
>    Use -header-filter=.* to display errors from all non-system headers. Use -system-headers to display errors from system headers as well.
>    6 warnings generated.
>    drivers/misc/eeprom/at24.c:334:2: warning: Value stored to 'client' is never read [clang-analyzer-deadcode.DeadStores]
>            client = at24_client->client;
>            ^        ~~~~~~~~~~~~~~~~~~~
>    drivers/misc/eeprom/at24.c:334:2: note: Value stored to 'client' is never read
>            client = at24_client->client;
>            ^        ~~~~~~~~~~~~~~~~~~~
>    drivers/misc/eeprom/at24.c:397:2: warning: Value stored to 'client' is never read [clang-analyzer-deadcode.DeadStores]
>            client = at24_client->client;
>            ^        ~~~~~~~~~~~~~~~~~~~
>    drivers/misc/eeprom/at24.c:397:2: note: Value stored to 'client' is never read
>            client = at24_client->client;
>            ^        ~~~~~~~~~~~~~~~~~~~
>    Suppressed 4 warnings (4 in non-user code).
>    Use -header-filter=.* to display errors from all non-system headers. Use -system-headers to display errors from system headers as well.
>    4 warnings generated.
>    Suppressed 4 warnings (4 in non-user code).
>    Use -header-filter=.* to display errors from all non-system headers. Use -system-headers to display errors from system headers as well.
>    4 warnings generated.
>    Suppressed 4 warnings (4 in non-user code).
>    Use -header-filter=.* to display errors from all non-system headers. Use -system-headers to display errors from system headers as well.
>    4 warnings generated.
>    Suppressed 4 warnings (4 in non-user code).
>    Use -header-filter=.* to display errors from all non-system headers. Use -system-headers to display errors from system headers as well.
>    4 warnings generated.
>    Suppressed 4 warnings (4 in non-user code).
>    Use -header-filter=.* to display errors from all non-system headers. Use -system-headers to display errors from system headers as well.
>    4 warnings generated.
>    Suppressed 4 warnings (4 in non-user code).
>    Use -header-filter=.* to display errors from all non-system headers. Use -system-headers to display errors from system headers as well.
>    4 warnings generated.
>    Suppressed 4 warnings (4 in non-user code).
>    Use -header-filter=.* to display errors from all non-system headers. Use -system-headers to display errors from system headers as well.
>    4 warnings generated.
>    Suppressed 4 warnings (4 in non-user code).
>    Use -header-filter=.* to display errors from all non-system headers. Use -system-headers to display errors from system headers as well.
>    4 warnings generated.
>    Suppressed 4 warnings (4 in non-user code).
>    Use -header-filter=.* to display errors from all non-system headers. Use -system-headers to display errors from system headers as well.
>    4 warnings generated.
>    Suppressed 4 warnings (4 in non-user code).
>    Use -header-filter=.* to display errors from all non-system headers. Use -system-headers to display errors from system headers as well.
>    4 warnings generated.
>    Suppressed 4 warnings (4 in non-user code).
>    Use -header-filter=.* to display errors from all non-system headers. Use -system-headers to display errors from system headers as well.
>    4 warnings generated.
>    Suppressed 4 warnings (4 in non-user code).
>    Use -header-filter=.* to display errors from all non-system headers. Use -system-headers to display errors from system headers as well.
>    5 warnings generated.
>    drivers/usb/isp1760/isp1760-core.c:490:2: warning: Value stored to 'udc_enabled' is never read [clang-analyzer-deadcode.DeadStores]
>            udc_enabled = ((devflags & ISP1760_FLAG_ISP1763) ||
>            ^             ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>    drivers/usb/isp1760/isp1760-core.c:490:2: note: Value stored to 'udc_enabled' is never read
>            udc_enabled = ((devflags & ISP1760_FLAG_ISP1763) ||
>            ^             ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>    Suppressed 4 warnings (4 in non-user code).
>    Use -header-filter=.* to display errors from all non-system headers. Use -system-headers to display errors from system headers as well.
>    4 warnings generated.
>    Suppressed 4 warnings (4 in non-user code).
>    Use -header-filter=.* to display errors from all non-system headers. Use -system-headers to display errors from system headers as well.
>    9 warnings generated.
> >> drivers/usb/isp1760/isp1760-hcd.c:735:2: warning: Value stored to 'scratch' is never read [clang-analyzer-deadcode.DeadStores]
>            scratch = isp1760_hcd_read(hcd, HC_CHIP_ID_HIGH);
>            ^         ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

yeah, this is desired behaviour, this read is only to make sure  that
we make something different than the pattern to test go over the bus.
However I will take a look to this warning and other clang warnings
that I am seeing in this report.

------
Cheers,
     Rui

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CDNBNHH65Z6Z.3P3H9W04XAHDB%40arch-thunder.
