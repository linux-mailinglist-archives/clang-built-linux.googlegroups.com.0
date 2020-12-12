Return-Path: <clang-built-linux+bncBCX2JBVY5MBBBWUD2L7AKGQEVY362ZA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53a.google.com (mail-pg1-x53a.google.com [IPv6:2607:f8b0:4864:20::53a])
	by mail.lfdr.de (Postfix) with ESMTPS id 452DB2D8547
	for <lists+clang-built-linux@lfdr.de>; Sat, 12 Dec 2020 09:39:56 +0100 (CET)
Received: by mail-pg1-x53a.google.com with SMTP id i6sf8251495pgg.10
        for <lists+clang-built-linux@lfdr.de>; Sat, 12 Dec 2020 00:39:56 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607762395; cv=pass;
        d=google.com; s=arc-20160816;
        b=ZvrVl4lVND3q6iL9pHWYa47AMGyEQ2Kz092RAGu1k+/LSZfRRHbiMvn/h1uRwNWpTY
         2vE6bpw1F4HYVr19fhQX4o3Q2kIaGM9Dqnd+UFRbCZ5niBwPEsl2LWUX1mh4Gnc9+CE4
         qhmHX9Hsn11LGaRWDXWkf8ZUil/dUqcMkTSQEqbsS3Gkn6OoOemBKPj0jk4fy9KQnXXV
         laYXWN6vaWS1MFScTR3Zls2v5pqvdF2xvTjHWetKDuLj2k36DloY6QdhPZz4uZZJlvTL
         XQ0QW5JpkwVKTi1GVeppxeiJ1ZeUZU5i3aUnZ1S0LYbXfD4HkskNWp6zRZhPxoEkphS2
         7PXg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=t6lfJDDUpcYemBSpjToTvxJAmwxwDdJTYpqIGUSttCo=;
        b=Wr2SVB3IJeTlG0RstNx68BNx0SP/LyQ4sS6ck8ksEGY/I/n6EzWrwk0/2J3wWVAl17
         KGBVTbSqJC9LU0ruMJ1C/o0nJWYUWbgj0ypmJI9UNpV1jP8+E2aCM/irqWHas1ciSDjm
         fWPwxe30mbxruUY6KSiakKlylkaJXQsPgIHoLpkQp7xoVgrI6u6s+FU6kljk2QtBfAOu
         lOmBNg7u7cWRxSl9iaFgGmyY1ERQBIJqK211S3cebfu2nsqqUeAfUzr2KT2NmXUpwOJS
         8AquCRX7GYAiDRDi8P02Be/CzDzuU8OOBs+hMymi707t8aLxMUBhtD5te4ZFz7kc652J
         yrZQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of philip.li@intel.com designates 134.134.136.126 as permitted sender) smtp.mailfrom=philip.li@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=t6lfJDDUpcYemBSpjToTvxJAmwxwDdJTYpqIGUSttCo=;
        b=AsjBldHZrkZNuRr7AbLCmIzFXIIiKYIvFuv2XBwYlUIb2lQDnbasjZR+8mWFNC8BGX
         SYGxTRLS9KdwIBKQ5CtMDJBC7qbUtRmrJ5FqJ5re8GpP5Q4pyNRZ5GRVst71skOwLYhs
         XhEXr7cQWhOqouqaVG6bLsENirQLe/x4VQ0ubpa5CFA2Lzo9Er57zH3BSRc6pVGBR39N
         rhcrG9Sw3LbZHKlHXvsptXwiahyJb5rWz+j3ZhHF5g3DWMpB0mOypNIzYjwBQk9Avf7d
         NYdaLhU19laJ1oittbLYIcUduuy2xx+doPLvzqsmEBU5PQTbO8QBiQvBc6imwMDIWACt
         UwJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:references:mime-version:content-disposition
         :in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=t6lfJDDUpcYemBSpjToTvxJAmwxwDdJTYpqIGUSttCo=;
        b=BhaE4XxVTd3/kACzDD8o9bnKjJqyaO3ox6d1XUJfVv9WpL5dQh5b7AjJva2l8x651i
         XpylYTbMCmOm+G21cMlWRqOsyzd67+Cawy+1Itv6mx/Qa4ReGlaHvNBipljy/biVmJqP
         m7fHWr+t7H0KZCamTk8OFm3vYoe8NbYWy56opWp3VH5IEo3aJcl5Ys7W+p+Xuo3W0iSW
         FM6n7ASZsmLYT159L29R/AXubrcAEllL+g9XEgSSXoRSyA9nWk4/KqO5PTyBNjJpV/It
         tpyhNdOqebVJYytaw5l78eFxxgr1EpsnRuW4fT77hbOeGKbVUwtNFBitUW/13zxWnKN5
         mhSA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533Q23wUIUJofNJMLdNdRCMoh0vb+kOBdqGe06YM62wWGycw3FTW
	plR6/3UXqIYOw6hPLf4oayo=
X-Google-Smtp-Source: ABdhPJw8MwkobbuUhGoHqYVJHkJrBCk9dRDl4nCXBou7YBiXNlnlWv6CLo7EwcA2ZFs3DAou/l35bg==
X-Received: by 2002:a63:4520:: with SMTP id s32mr15643062pga.212.1607762395008;
        Sat, 12 Dec 2020 00:39:55 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:f601:: with SMTP id m1ls4525457pgh.4.gmail; Sat, 12 Dec
 2020 00:39:54 -0800 (PST)
X-Received: by 2002:a63:fc5b:: with SMTP id r27mr15603974pgk.100.1607762394286;
        Sat, 12 Dec 2020 00:39:54 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607762394; cv=none;
        d=google.com; s=arc-20160816;
        b=jfMfOPeUQ4XHWvDv7JmoWjb/xLhv7cMJiUZpwTcA+SnkcmhkZ6RHz7ZKBx0vYbHSyb
         s/bSPoc353LP7P86B7Ku6GvkXJ+4JU/CIudQ7XYQ3jyjijxl/KUagTIvt0DSQAdzvku/
         mFFYvnfBmyEj42lL21peSu5XTqbanl0ioL482cqT6z9eny8nWHLYc5kgX8T37IePbbZ/
         lio/qq/Eqm4QQjGxBWGB1Q7ph/gG1Y7NrjTJ9bYoJ6UmwPvuamLlvbj49t6xLsbo+1Pc
         7D63LBSetLaUcBbUKAhntZx6GPR+r+uxX3/PqD7U7lpFVRlFqS2hqxH0jaHrcThOnB+6
         4bqA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:ironport-sdr:ironport-sdr;
        bh=zL9Q2I/R/HOqoWo7dsaWJZe0paTAce58mZf8IrmHCTU=;
        b=kMLpqbSmQ1xvBGPbq8tkOHh5a7bJZf20Vf8uEQug5RATiWYBYajDW+KaXaF/aQN2kx
         CQStTAl8V9xxfRu0eHeSlCX5T2zcgmFA1PmQpk8foxIT7aPq5kKElcDsgulhM3Sl5BIg
         u5YmLA1Gqe9lUcFrV/mLWLbkcLxCFPnjGwhQ+4B7QbbvHTBwB9ezZvl0WPhmcTfz/RQl
         3muU+bwFzuUS+ihqz+205yWd2tWfe06uJE0asnnyCdAjLAPOcv95bhp8thyVmqEpDn8k
         URuR9Vnwg34F1n+YN1KFHO43hM6+jlitUnIY/qK4oYoSwOFlBr6P4YGOFewkZmq5R2dL
         ZQtw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of philip.li@intel.com designates 134.134.136.126 as permitted sender) smtp.mailfrom=philip.li@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga18.intel.com (mga18.intel.com. [134.134.136.126])
        by gmr-mx.google.com with ESMTPS id y13si994220pgr.2.2020.12.12.00.39.54
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 12 Dec 2020 00:39:54 -0800 (PST)
Received-SPF: pass (google.com: domain of philip.li@intel.com designates 134.134.136.126 as permitted sender) client-ip=134.134.136.126;
IronPort-SDR: c/zxqkfVAXQN67Rn8nxWymwLUQIvXzMJOOhz67qcX6mlGqjJX8QO0Zw3Lo5p6VGaMXCtQ0hD2W
 DOb8IelYWaZw==
X-IronPort-AV: E=McAfee;i="6000,8403,9832"; a="162293416"
X-IronPort-AV: E=Sophos;i="5.78,413,1599548400"; 
   d="scan'208";a="162293416"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
  by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 12 Dec 2020 00:39:53 -0800
IronPort-SDR: sU5z9WFGXenQBU8SUXs0lIASGhDByzftooHWj/tzUjUQIwJ2kIamc4fqeFoh2Kcwp8TkXoEuio
 dtDRCSvMr0Qw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,413,1599548400"; 
   d="scan'208";a="376119968"
Received: from pl-dbox.sh.intel.com (HELO intel.com) ([10.239.159.39])
  by fmsmga002.fm.intel.com with ESMTP; 12 Dec 2020 00:39:51 -0800
Date: Sat, 12 Dec 2020 16:35:55 +0800
From: Philip Li <philip.li@intel.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: kbuild-all@lists.01.org,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	kernel test robot <lkp@intel.com>
Subject: Re: [lee-linaro:android-3.18-preview 213/310] clang-12clang-12:
 error: unknown argument: '-mtraceback=no'
Message-ID: <20201212083555.GD31146@intel.com>
References: <202012101717.BwzOJEiz-lkp@intel.com>
 <CAKwvOdkOuEck7BB_-4_NkcJkDB8PsSjAsP0GjVvLMV3ECZheEw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOdkOuEck7BB_-4_NkcJkDB8PsSjAsP0GjVvLMV3ECZheEw@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: philip.li@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of philip.li@intel.com designates 134.134.136.126 as
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

On Thu, Dec 10, 2020 at 11:09:08AM -0800, Nick Desaulniers wrote:
> Hi Philip,
> We only supported kernel builds with Clang since v4.4.y; would you
> mind disabling clang builds for Lee's 3.18 branch?
Got it, we will avoid testing clang on old kernel. Want to consult how
about mainline, does clang support start from v4.4 or v4.5?

Thanks

> 
> On Thu, Dec 10, 2020 at 1:58 AM kernel test robot <lkp@intel.com> wrote:
> >
> > TO: Lee Jones <lee.jones@linaro.org>
> >
> > tree:   https://git.linaro.org/people/lee.jones/linux.git android-3.18-preview
> > head:   83102d5e212965387f1db5eef72bf3bf0d322b15
> > commit: cdf2b03a6f4efd138211f1c38b0103031f7a62c1 [213/310] regulator: fan53555: fix I2C device ids
> > config: powerpc64-randconfig-r036-20201209 (attached as .config)
> > compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project 1968804ac726e7674d5de22bc2204b45857da344)
> > reproduce (this is a W=1 build):
> >         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
> >         chmod +x ~/bin/make.cross
> >         # install powerpc64 cross compiling tool for clang build
> >         # apt-get install binutils-powerpc64-linux-gnu
> >         git remote add lee-linaro https://git.linaro.org/people/lee.jones/linux.git
> >         git fetch --no-tags lee-linaro android-3.18-preview
> >         git checkout cdf2b03a6f4efd138211f1c38b0103031f7a62c1
> >         # save the attached .config to linux build tree
> >         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=powerpc64
> >
> > If you fix the issue, kindly add following tag as appropriate
> > Reported-by: kernel test robot <lkp@intel.com>
> >
> > All errors (new ones prefixed by >>):
> >
> > >> clang-12clang-12: error: unknown argument: '-mtraceback=no'
> >    clang-12: error: unknown argument: '-mcall-aixdesc'
> >    clang-12: error: unknown argument: '-mtraceback=no'
> >    clang-12: error: unknown argument: '-mno-string'
> >    : error: unknown argument: '-mcall-aixdesc'
> >    make[3]: *** [scripts/Makefile.build:153: scripts/mod/devicetable-offsets.s] Error 1
> >    clang-12: error: unknown argument: '-mno-string'
> >    clang-12: error: unsupported argument '-maltivec' to option 'Wa,'
> >    make[3]: *** [scripts/Makefile.build:258: scripts/mod/empty.o] Error 1
> >    make[3]: Target '__build' not remade because of errors.
> >    make[2]: *** [scripts/Makefile.build:402: scripts/mod] Error 2
> >    /usr/bin/ld: scripts/dtc/dtc-parser.tab.o:(.bss+0x28): multiple definition of `yylloc'; scripts/dtc/dtc-lexer.lex.o:(.bss+0x58): first defined here
> >    clang-12: error: linker command failed with exit code 1 (use -v to see invocation)
> >    make[3]: *** [scripts/Makefile.host:100: scripts/dtc/dtc] Error 1
> >    make[3]: Target '__build' not remade because of errors.
> >    make[2]: *** [scripts/Makefile.build:402: scripts/dtc] Error 2
> >    make[2]: Target '__build' not remade because of errors.
> >    make[1]: *** [Makefile:560: scripts] Error 2
> >    clang-12: error: unknown argument: '-mtraceback=no'
> >    clang-12: error: unknown argument: '-mcall-aixdesc'
> >    clang-12: error: unknown argument: '-mno-string'
> >    make[2]: *** [./Kbuild:36: kernel/bounds.s] Error 1
> >    make[2]: Target '__build' not remade because of errors.
> >    make[1]: *** [Makefile:1022: prepare0] Error 2
> >    make[1]: Target 'modules_prepare' not remade because of errors.
> >    make: *** [Makefile:149: sub-make] Error 2
> >    make: Target 'modules_prepare' not remade because of errors.
> >
> > ---
> > 0-DAY CI Kernel Test Service, Intel Corporation
> > https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
> >
> > --
> > You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202012101717.BwzOJEiz-lkp%40intel.com.
> 
> 
> 
> -- 
> Thanks,
> ~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201212083555.GD31146%40intel.com.
