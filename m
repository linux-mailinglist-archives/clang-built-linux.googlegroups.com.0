Return-Path: <clang-built-linux+bncBDLYD555WYHBBLNRYSBAMGQEA7GDVDA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63d.google.com (mail-pl1-x63d.google.com [IPv6:2607:f8b0:4864:20::63d])
	by mail.lfdr.de (Postfix) with ESMTPS id 99D9033DF48
	for <lists+clang-built-linux@lfdr.de>; Tue, 16 Mar 2021 21:44:31 +0100 (CET)
Received: by mail-pl1-x63d.google.com with SMTP id w10sf16248041plc.20
        for <lists+clang-built-linux@lfdr.de>; Tue, 16 Mar 2021 13:44:31 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1615927470; cv=pass;
        d=google.com; s=arc-20160816;
        b=ZYruhBxjLl59Z1u/2plN+FtmTzz3xFs+yrDjuBeI5tVDlocXvl0dkV8PaQQx084KPL
         N33uVco59M5s666i/Oco3CJZ5IYKLZYPFyyGI5IpOVEjnZp5+LG2Wn/FtMhuhG73d7iE
         nsGgJA2YrXHC1uuT5SsGJjPZC3EHDUMibHG5WLP0NbBSlC9YlkwIZUPWqbhOIkjkR2WO
         HATzybJMWMEamT0sCyCWUIgqpakW8hJf+Im1UVpDr+2hDpYpkODJnjPfK20wFZaCwVFr
         dUnwKhIr/YUBYYgVR5NbK9B9p75k3jAd2dI3f9DFFlP7XVLSA7TRcPCMI61oBjyzxPRk
         fjww==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:organization:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=6kQf+q6aA5YfD1IohtJd6JuI93IrbumG8/viuMznPeM=;
        b=0wzxt5RGRfWHm0iBiy/ITPjTxUxtBAPJSckI8ewgnecFTBazVImkNmzlOHLrcprAkr
         /dkRVvy85bgiVDXhU2s7KGoAJkiNLvYi8R1nqu5E2NmosNsjcyF6hSmuLS/MH6v60RA5
         htaME9xB6SP7l55/If63hQsIw5YsaE2/yz1n3ZZz6G3ax101ikl4Jdq5vSGqcCd2IRGP
         L0vIn3OF1G4Au+Y7EHb1REbRa6P0ivtia6XCj5e4ZCgt/rMXJ39SvXoGJsVe+2qlmSSl
         YG6do+Igp9pTAS0N19EW+rx7jtUb3+KaZOWI31frtZZPJta9tr9GJW9wz6xlSEo8tdEj
         f4ow==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of andriy.shevchenko@intel.com designates 134.134.136.126 as permitted sender) smtp.mailfrom=andriy.shevchenko@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :organization:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6kQf+q6aA5YfD1IohtJd6JuI93IrbumG8/viuMznPeM=;
        b=MiFk0LTgzGCBlwlzmWQ3vdOgyoHdQEpxatAUtLToh8fMCSGvFJnhIbNLgzseFxDc1c
         uS8c95Xhi+dUDBXjjAVsxcPbLM0JiZjChIGljg+9rGT8ZBcNnIZSiyX845/TaBaa9o5k
         ynGcztIMBwmH6d5Dd3zlmficUxNkvwWeNGRdBIbhzBl/RSgvy1uetWFrPbPkIniaec3m
         mDV2Vt/jlyBHwckz7ZeioG84uYgqH+shVlpTskiPDkQ7Ds0Qmy+I9b2ON1LizIGd4iji
         Ml/RnIqM2oudBEGTVIYoQnN2BviidvdjxefaVWYHx8Tdfd3t43mjFcUsmgTTIoYqLtuu
         GPfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:references:mime-version:content-disposition
         :in-reply-to:organization:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6kQf+q6aA5YfD1IohtJd6JuI93IrbumG8/viuMznPeM=;
        b=ogaeo8L/55oITgjfs9Zb+T8aMcjY7rs95JN7P6xjHXgYf2pdc04D6xulCMUDjTdAqu
         IGYjj3bqs9rl5a4U2BZ4O2ltQ2ivreczsUTKbtCUj8hP/84CTqayqgK/YxN9ZWXoSd+A
         qAIQx/khmiaaGvixno2ACkdNGiFWjoNkYk5tqaBiMOZs1uPocJCfTZhmtJ1Q7jlBYoBF
         FwjgLEdYEx6igr++jgCRcClRSXhZPnzbgZEzKPvE6y/lvVNs/kmRUt0k2SHltbjWAoMU
         eFCZXFDyl6y+2bNkRSj9LAhzIa3Nubtx/d1+A1gZvxCzpVsMiJU3SNoLsJ4ZXEK3c2of
         seRQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533bj6hrD22yFIih1Q1LGOTMs40eHBwxOjpLbbUMJK3PnVBxPFiR
	uE3u1sWjr08f2qA4Mmog6eA=
X-Google-Smtp-Source: ABdhPJzEJy6jZFaJMK33SEvT49Dpxka6zz9hC7uJ93Da5C3Jr1E9bk0hH36Y4R7eCuwLBA9TVEcVVw==
X-Received: by 2002:a63:5044:: with SMTP id q4mr1330759pgl.178.1615927469709;
        Tue, 16 Mar 2021 13:44:29 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:8241:: with SMTP id w62ls4637754pfd.8.gmail; Tue, 16 Mar
 2021 13:44:28 -0700 (PDT)
X-Received: by 2002:aa7:8a19:0:b029:1f6:6839:7211 with SMTP id m25-20020aa78a190000b02901f668397211mr1293809pfa.40.1615927468403;
        Tue, 16 Mar 2021 13:44:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1615927468; cv=none;
        d=google.com; s=arc-20160816;
        b=Jqg4YKHGLv3f0UMHWLsb0KPWMSERBiKpKXb9QHeYWlFeyriCt9j/ZjzIlY8uNKbgA7
         M1gR0hbZMyGbsq3n59/HHQxxfULrTopW1ag1NYX/NrQ9pcQ9yH9cKeJynGO6utqpd3BY
         3p/wb+R9MkiMA+PiqBP8pZHC8d01Jsm2vGpbxh5g5jlHCBPSS8RLs1aFHxOzNbfHxEj9
         s5aYicByfJ1bPp6yfUyBlm6OTZwqScHjS69bcYWvCNCBzSKG2X/etxO7F705JKboilfx
         FAkQ3xWpZOjat5PNAhrno4uXwlz1nflDmRXRN8KZEeqeE29nVglG5/UHqOrBLgZa5tVX
         PhMQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=organization:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr;
        bh=TpqsviHeaFG+cHTFIH8/l9rXqobX/M3C7wsoOet6E10=;
        b=qE7l1mBRJ2d1ba2xZy7Ah8OwSrI0z03QLCAiE4epPcNv+ytUkN9Jqm7arSHUYE9SJs
         ntocB8tWdmdGlkdqKvjRV1JioxGxPtDy6i56g3ncl8rbiO2ZhR5hV3/92+W1lLXCL7JB
         g0vW/NdOv8JiT7ozYbg4BTeKKKOICsNIYEaChl3lRbvz7Z2er6OsCsV4nhbcxPP70Wws
         Kfq12mDpSS3rP7+H/Vo/uSlSJnEOGn265iJ811moDa2dJ0DUWQydrpX5EEjUXK+Y+Acr
         Ed5CQe5U6ml0StrCduHJULTtFSlf/1BVU0PVK3qD6BLxJgXEmgIa0F6c22FkT5kV4FPh
         SaCA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of andriy.shevchenko@intel.com designates 134.134.136.126 as permitted sender) smtp.mailfrom=andriy.shevchenko@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga18.intel.com (mga18.intel.com. [134.134.136.126])
        by gmr-mx.google.com with ESMTPS id z16si40905pju.0.2021.03.16.13.44.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 16 Mar 2021 13:44:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of andriy.shevchenko@intel.com designates 134.134.136.126 as permitted sender) client-ip=134.134.136.126;
IronPort-SDR: VZbiKk9bLWCNjQ7/9kjJBXHUKx38rUgTPSlizyLYN60C4zEs81kSF6IJsg2jegK/zm48QTuVqK
 S13VjFSMrsGw==
X-IronPort-AV: E=McAfee;i="6000,8403,9925"; a="176928586"
X-IronPort-AV: E=Sophos;i="5.81,254,1610438400"; 
   d="scan'208";a="176928586"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
  by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 16 Mar 2021 13:44:27 -0700
IronPort-SDR: 1SKK8UYfs0yG4AQ634nG7+GwP1fusGgEvnmv94dohFPSUe6+1uLGXilYOcN4QmnPDynrg5x6G0
 UlnmrvOyFpYA==
X-IronPort-AV: E=Sophos;i="5.81,254,1610438400"; 
   d="scan'208";a="511502109"
Received: from smile.fi.intel.com (HELO smile) ([10.237.68.40])
  by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 16 Mar 2021 13:44:24 -0700
Received: from andy by smile with local (Exim 4.94)
	(envelope-from <andriy.shevchenko@intel.com>)
	id 1lMGY9-00D4TP-MQ; Tue, 16 Mar 2021 22:44:21 +0200
Date: Tue, 16 Mar 2021 22:44:21 +0200
From: Andy Shevchenko <andriy.shevchenko@intel.com>
To: kernel test robot <lkp@intel.com>
Cc: Claudius Heine <ch@denx.de>, johannes hahn <johannes-hahn@siemens.com>,
	Alessandro Zummo <a.zummo@towertech.it>,
	Alexandre Belloni <alexandre.belloni@bootlin.com>,
	"open list:REAL TIME CLOCK (RTC) SUBSYSTEM" <linux-rtc@vger.kernel.org>,
	open list <linux-kernel@vger.kernel.org>, kbuild-all@lists.01.org,
	clang-built-linux@googlegroups.com,
	werner zeh <werner.zeh@siemens.com>,
	henning schild <henning.schild@siemens.com>,
	martin mantel <martin.mantel@siemens.com>,
	val krutov <val.krutov@erd.epson.com>
Subject: Re: [PATCH v4] rtc: rx6110: add ACPI bindings to I2C
Message-ID: <YFEYpVwUEygNoPzv@smile.fi.intel.com>
References: <20210316144819.4130622-1-ch@denx.de>
 <202103170225.yRvbPVxM-lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <202103170225.yRvbPVxM-lkp@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-Original-Sender: andriy.shevchenko@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of andriy.shevchenko@intel.com designates 134.134.136.126
 as permitted sender) smtp.mailfrom=andriy.shevchenko@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
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

On Wed, Mar 17, 2021 at 03:04:36AM +0800, kernel test robot wrote:
> Hi Claudius,
> 
> Thank you for the patch! Perhaps something to improve:
> 
> [auto build test WARNING on abelloni/rtc-next]
> [also build test WARNING on v5.12-rc3 next-20210316]
> [If your patch is applied to the wrong git tree, kindly drop us a note.
> And when submitting patch, we suggest to use '--base' as documented in
> https://git-scm.com/docs/git-format-patch]
> 
> url:    https://github.com/0day-ci/linux/commits/Claudius-Heine/rtc-rx6110-add-ACPI-bindings-to-I2C/20210316-225026
> base:   https://git.kernel.org/pub/scm/linux/kernel/git/abelloni/linux.git rtc-next
> config: powerpc-randconfig-r006-20210316 (attached as .config)
> compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 50c7504a93fdb90c26870db8c8ea7add895c7725)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install powerpc cross compiling tool for clang build
>         # apt-get install binutils-powerpc-linux-gnu
>         # https://github.com/0day-ci/linux/commit/ec344b93b1b5f4c2c77ce68b7bde7ec380e356a8
>         git remote add linux-review https://github.com/0day-ci/linux
>         git fetch --no-tags linux-review Claudius-Heine/rtc-rx6110-add-ACPI-bindings-to-I2C/20210316-225026
>         git checkout ec344b93b1b5f4c2c77ce68b7bde7ec380e356a8
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=powerpc 
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
> 
> All warnings (new ones prefixed by >>):
> 
> >> drivers/rtc/rtc-rx6110.c:450:36: warning: unused variable 'rx6110_i2c_acpi_match' [-Wunused-const-variable]
>    static const struct acpi_device_id rx6110_i2c_acpi_match[] = {
>                                       ^
>    1 warning generated.

Precisely!

This happens due to ACPI_PTR() presence. Either ACPI_PTR() _and_ ifdeffery or
none of them should be in the code.


-- 
With Best Regards,
Andy Shevchenko


-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YFEYpVwUEygNoPzv%40smile.fi.intel.com.
