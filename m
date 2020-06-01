Return-Path: <clang-built-linux+bncBCX2JBVY5MBBBT5U2L3AKGQEKCHPYOQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93a.google.com (mail-ua1-x93a.google.com [IPv6:2607:f8b0:4864:20::93a])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E8471E9DCE
	for <lists+clang-built-linux@lfdr.de>; Mon,  1 Jun 2020 08:04:00 +0200 (CEST)
Received: by mail-ua1-x93a.google.com with SMTP id g2sf2093758ual.7
        for <lists+clang-built-linux@lfdr.de>; Sun, 31 May 2020 23:04:00 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590991439; cv=pass;
        d=google.com; s=arc-20160816;
        b=muMPqGANlyU1WASpGvq7o2YvyL6eF7A/z5IIhu5XdloRTNRegFrP9WrtOvzo9R8Isq
         3XJZHyc6YoU12kqW1/JpDeLeGUTWfqXVDfhOUV6tVnnHKDiQOfeD7xFybTstQMUVxhUi
         tM6hcKyBKd6gijTp0VA96KTMQj0eTI9eKgtlCMgdkvJ+iUUB4foNThyIr8M3t7KGSNbY
         L0L82bIPzX0XPtQw+xOtMhceHNmQnbv+AoYALs954hXEijGKWDnITKtU1L6wh3t/5gJq
         YlIelqlIt5C+Mk6BrFUZPtz9m4HlD6gZCDsFfnpqmqOBE9goJGrQpaSsKrSxA6RxgBeA
         PVUw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=mrizvfzHGtXB9YtPcl/KmOE8pfeVI71C81la3epGCiE=;
        b=q4+XcsuCM3UywIH/ME/dykvnx2NVy/CmLgnVj5kG5KIMBQabrzWIZ2lZws3hB3zHM2
         lyyBfOVcsfimon2aJVK7ZWKw/TnqTcYHSL/bOmHEtpvqXI1MSHoNZn6/sCHBXiM2+xTL
         qmCkLFMJhotxZ1PmhOP/msYY9+UMjrgma3jXjGs+mG01dXU22sffoWJReAHdoUqJ4U1N
         y04G/jlvfxk16NkMAZGrhfuuMYO3rRwB/60HafHCUlUvYu2LjAf5ExsWii56MK6JY21B
         teSG2yNcyJDxA2XXWo9ZSqla5VXWe/K2L4j/DI/OeDiKt/Ky7o5hmXurDsM4i1P03OBQ
         yZAA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of philip.li@intel.com designates 134.134.136.65 as permitted sender) smtp.mailfrom=philip.li@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=mrizvfzHGtXB9YtPcl/KmOE8pfeVI71C81la3epGCiE=;
        b=EMs/Ug80kmK34Pqa2yjQ9RAHyRxVC94xph6xyUaT4I8IjO6JWDllQB4V4jGK9et+M3
         6oXNV4XNPKyOZMjZMezGh8TSKU2b3uJSKPNDVmyNwOcgzJ1lDS9F3YSjT2OL99L/PTkM
         lRLzhXMlFNVqdTyLsecss/6K9WumDuWusiKG3V7R/y/iL6hU6U+1u2+6Dn1cKGsgIrkl
         jgRzeefhPTnWLnqU5vitOME6jvBDdmTy/BgRKFhQ6lDCz3AYWjs/AdkbgVOSK/E79oz4
         v7HVODpvU/AsH5XJPZgbWjfoPEKEkPmuRbgqZdjc/GjIIj+eWO+I5IV2NhtUR9OmB5MN
         BD9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:references:mime-version:content-disposition
         :in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=mrizvfzHGtXB9YtPcl/KmOE8pfeVI71C81la3epGCiE=;
        b=AuH/QKHeLkim9shaVufx1Z86IsLwSxmi9RrFsx4i6x4cZu3RL4rwPX9ULHp0oMl5qm
         KOX4+5wa3Y8bAyiBhj+KCSBb047ySGBgCK3tZrsC1wFMfU/s3ThneV9hSN7xVNQUCAWB
         5KnKO1pHjCig6svUTTImYT5C1zkBnDo0+WnBvjbDrQkIWirvNMnWiLFtC/5V4fdntMdR
         5HTrr+gin8CLuF9CHExcqJOQR0dByVOT3qfJIPoakfitPE48lVzX2owLoW1FTp9Zhjgd
         6++E9LWAvLejU2EzEboQioNdIxM484D2/3NzZpuesprgtrLc3Ez05uB6Vuplbb1gB1JC
         DxHw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5333No2RfH7kOMIj6BG/fB1kSFCHrFKpzYqr2kTCmL8DhNy3hdHo
	bgCRQeu7d/HNDJy6tETzFxA=
X-Google-Smtp-Source: ABdhPJyW9TkvLzmCyQt7zOim+BGUDQxkk4SSjN4rDtwk7MckrYhVdPoyj9/sr5/pW6r/tTCVUPeZ0Q==
X-Received: by 2002:a1f:9a16:: with SMTP id c22mr627242vke.83.1590991439673;
        Sun, 31 May 2020 23:03:59 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:386:: with SMTP id 6ls826338uau.11.gmail; Sun, 31 May
 2020 23:03:59 -0700 (PDT)
X-Received: by 2002:a9f:2204:: with SMTP id 4mr13554645uad.40.1590991439207;
        Sun, 31 May 2020 23:03:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590991439; cv=none;
        d=google.com; s=arc-20160816;
        b=0+4sobqOPbA0iKL2OhHUjNKmXzXB3Hw9G54s9B98AFOId/N7BKhxucnr3qUV2/hzHc
         C+fWRUHgFIPYg2aZh/ZZJ8/YAZnKfm2dXO5GO4QUwMkkzJY7YRZJ7VzS1YQfD45Gm3Hk
         YFW92f5DGC/Mn1Zu5Je20CmLbPbq8AI3t9YG+77bpH5khNCDabKdNS5iTRvKiPhlEOlD
         NYQkoi7vKxdN3Xtis1uCV/l1dLI4yOw6/1B/o/146wxkMoYEtb4Fu7TnpjLZJ6FFHbbP
         LgzpODQmZ2oue7UcEIophVem/2/ETAZIq9zOiFbJU7QCjmMNvISrXcib49ie3x4LnQ/y
         SE0g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:ironport-sdr:ironport-sdr;
        bh=A4LgR7MumJZvWSijbYawoqqidnh2liQ3i3WIzjHCg+M=;
        b=PGdWIb4Zgcxy0n9O5on5g0NMS6DHYZ9zB9Ath6yq+KQUwd30/vgp4txrr5e3SQfK6T
         SLi2jDCBvnqKeUsAs+QLA7Yx/oNqMSJJTjcSmfWmxIDeLHy7lMvw9ubLiZfm12pFF1Xp
         QHPf/RbWHe+AHfa1rZvTj1JsHkgN4REM5aK4HINWOcg/AhNf/ETqips2kPvU2llq1c75
         U1YAnRaof/Fkf+ppbOsRuXQsJDanapXEHmVXyZJS5iIY9DaXQAxU/Ma87tpysmbZtbsH
         vhIMYz9gboXjNq01s0zYQigWn0iPo+btnBGZuv/AxY3i6YU8DxnQlnedPRsSpj2iU/2X
         z8/w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of philip.li@intel.com designates 134.134.136.65 as permitted sender) smtp.mailfrom=philip.li@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga03.intel.com (mga03.intel.com. [134.134.136.65])
        by gmr-mx.google.com with ESMTPS id q20si302842uas.1.2020.05.31.23.03.58
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 31 May 2020 23:03:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of philip.li@intel.com designates 134.134.136.65 as permitted sender) client-ip=134.134.136.65;
IronPort-SDR: qPqRp27Du14ksay6BEG+xV3Y3iA+rEdG+xOC0VLl76BIyWF/ztvmdJfA5d5bNxRz8/NVUM9WzC
 dckpEsUY9Dmg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
  by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 31 May 2020 23:03:57 -0700
IronPort-SDR: wsSICHzBQ5LDy5N+oVj9qRNOjjytQlziDaATEim2C6cEF5HkIncf/ExLEnTTBRkEIXAVBMfY85
 2iFls75YMO5A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,459,1583222400"; 
   d="scan'208";a="415694870"
Received: from pl-dbox.sh.intel.com (HELO intel.com) ([10.239.159.39])
  by orsmga004.jf.intel.com with ESMTP; 31 May 2020 23:03:53 -0700
Date: Mon, 1 Jun 2020 14:02:59 +0800
From: Philip Li <philip.li@intel.com>
To: kbuild test robot <lkp@intel.com>
Cc: "Amit, Daniel, Kachhap," <amit.kachhap@arm.com>,
	kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org,
	Catalin Marinas <catalin.marinas@arm.com>
Subject: Re: [kbuild-all] sh: 1: scripts/ld-version.sh: Permission denied
Message-ID: <20200601060259.GA10102@intel.com>
References: <202006011327.VZKhJeiu%lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <202006011327.VZKhJeiu%lkp@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
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

On Mon, Jun 01, 2020 at 01:54:29PM +0800, kbuild test robot wrote:
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
> head:   3d77e6a8804abcc0504c904bd6e5cdf3a5cf8162
> commit: 9553d16fa671b9621c5e2847d08bd90d3be3349c init/kconfig: Add LD_VERSION Kconfig
> date:   9 weeks ago
> config: x86_64-allyesconfig
> compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project 2388a096e7865c043e83ece4e26654bd3d1a20d5)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install x86_64 cross compiling tool for clang build
>         # apt-get install binutils-x86-64-linux-gnu
>         git checkout 9553d16fa671b9621c5e2847d08bd90d3be3349c
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64  allyesconfig
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64 
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kbuild test robot <lkp@intel.com>
> 
> All errors (new ones prefixed by >>, old ones prefixed by <<):
kindly ignore this report, which looks like an environment problem,
we will look into to solve the issue.

> 
> sh: 1: scripts/gcc-version.sh: Permission denied
> sh: 1: scripts/gcc-version.sh: Permission denied
> init/Kconfig:18: syntax error
> init/Kconfig:17: invalid statement
> init/Kconfig:18: invalid statement
> >> sh: 1: scripts/ld-version.sh: Permission denied
> init/Kconfig:23: syntax error
> init/Kconfig:22: invalid statement
> sh: 1: scripts/clang-version.sh: Permission denied
> init/Kconfig:30: syntax error
> init/Kconfig:29: invalid statement
> sh: 1: scripts/gcc-plugin.sh: Permission denied
> make[2]: *** [scripts/kconfig/Makefile:75: allyesconfig] Error 1
> make[1]: *** [Makefile:567: allyesconfig] Error 2
> make: *** [Makefile:179: sub-make] Error 2
> --
> sh: 1: scripts/gcc-version.sh: Permission denied
> sh: 1: scripts/gcc-version.sh: Permission denied
> init/Kconfig:18: syntax error
> init/Kconfig:17: invalid statement
> init/Kconfig:18: invalid statement
> >> sh: 1: scripts/ld-version.sh: Permission denied
> init/Kconfig:23: syntax error
> init/Kconfig:22: invalid statement
> sh: 1: scripts/clang-version.sh: Permission denied
> init/Kconfig:30: syntax error
> init/Kconfig:29: invalid statement
> sh: 1: scripts/gcc-plugin.sh: Permission denied
> make[2]: *** [scripts/kconfig/Makefile:75: oldconfig] Error 1
> make[1]: *** [Makefile:567: oldconfig] Error 2
> make: *** [Makefile:179: sub-make] Error 2
> --
> sh: 1: scripts/gcc-version.sh: Permission denied
> sh: 1: scripts/gcc-version.sh: Permission denied
> init/Kconfig:18: syntax error
> init/Kconfig:17: invalid statement
> init/Kconfig:18: invalid statement
> >> sh: 1: scripts/ld-version.sh: Permission denied
> init/Kconfig:23: syntax error
> init/Kconfig:22: invalid statement
> sh: 1: scripts/clang-version.sh: Permission denied
> init/Kconfig:30: syntax error
> init/Kconfig:29: invalid statement
> sh: 1: scripts/gcc-plugin.sh: Permission denied
> make[2]: *** [scripts/kconfig/Makefile:75: olddefconfig] Error 1
> make[1]: *** [Makefile:567: olddefconfig] Error 2
> make: *** [Makefile:179: sub-make] Error 2
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200601060259.GA10102%40intel.com.
