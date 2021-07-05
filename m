Return-Path: <clang-built-linux+bncBCJZRXGY5YJBBZGGRSDQMGQECJLMVBQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1037.google.com (mail-pj1-x1037.google.com [IPv6:2607:f8b0:4864:20::1037])
	by mail.lfdr.de (Postfix) with ESMTPS id 705583BBECC
	for <lists+clang-built-linux@lfdr.de>; Mon,  5 Jul 2021 17:21:10 +0200 (CEST)
Received: by mail-pj1-x1037.google.com with SMTP id p22-20020a17090a9316b029016a0aced749sf7064461pjo.9
        for <lists+clang-built-linux@lfdr.de>; Mon, 05 Jul 2021 08:21:10 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1625498469; cv=pass;
        d=google.com; s=arc-20160816;
        b=LM6wOZ0Cq/IoLBUhZ0gT3zcZR1FvpVYLMd79Vi2LEwOHwFL9d5JYw/zotyUmugqqel
         VuAgOxEd2RfOfhAXY7n1wHlX4C7hXvVYOyc0/qLrsTbS0IV6BLNw96ifVu0plEV5NazB
         Lfsog+4HjUybSjRfaHzTZ4zZ/xUJkNBIbVSY+P/Chu7raqGWpLK/8WFsiquGhvfQoMu0
         f1YVoe/okNhCu2NyffQ8DLIHG78PKia5ckTdub0fzh1eS2gz0Sw62vi6T4CxHQLHhP9Y
         WhIhFb6BsoqoZEug1OlhmxPSBO6mTwDQy//LoytteYphq4LKFnd/NReGlwra9hwAeSlE
         BzJg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:reply-to:message-id:subject:cc:to:from:date
         :sender:dkim-signature;
        bh=Un47EG6WIJvHU0sCVEml+3o3/PSXqZwOoOpXNFZAT6Y=;
        b=uiyGTsgG5ghaAbej0wT6ypOi0E+o5q4LIp1w9J/hzP0ZVOfG7WPqhgCHNaBh8IFLjN
         HgWFAxeqjkQlcz3Z9UUudiz/VJ00JfLZAsnFN41UefPMbL0MQvZmeiMpRv+FDftOHOSC
         G2BTM9pgGpD3T1YjyTNUDBN2FyAO/QbyLx61ZFS9SIQcYrwhYUTEL5MUB1qjuj83Utyu
         rnYdcM3IKIxhTkY3gWULUdzBhFWTbVYfd+lFUswW4D0qp46XR04llKVFO1ZAop6POzSz
         UJN+4jQ3huNmPeCsK29AqXlluAWPZPUjufhdEl5ftOP7eWhOKwbiEk4lzR8I0sqxHzT1
         +VmQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=gs9stn9C;
       spf=pass (google.com: domain of srs0=wxgq=l5=paulmck-thinkpad-p17-gen-1.home=paulmck@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=wXGQ=L5=paulmck-ThinkPad-P17-Gen-1.home=paulmck@kernel.org";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:reply-to:references
         :mime-version:content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Un47EG6WIJvHU0sCVEml+3o3/PSXqZwOoOpXNFZAT6Y=;
        b=Fbpqx3SuC5Wti0t6RTlqhGduFwTn8NGZnk+Kmx1B+ypBYoM5uqZvaKJXfKg7nwawh6
         O0V7FaiVAL0dPcNL+P7j1DvJMiClg8nq2M3BK3OSE67OFHntdOKZFtKH+nBPXKIzQ0Pv
         FZCrzfgoUTLD7W5lsZ57uwxAWukWRufS0R6cu0CHZ1PiwtQylqa6cVStekgkbc/hsVxd
         qW7H4uLXQzGqUOdfYWTlKr6o89KQigMmgh8x+r01g3vB7ELNQp7DLqhTZzY7vbzxOzsb
         2C8UEZRFYC4x2sVLhHzmBXfPc4XgkLJU83SIAz1KMq8dAKNJhOa3rRQVMYB5aPDfXGhh
         5dIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :reply-to:references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Un47EG6WIJvHU0sCVEml+3o3/PSXqZwOoOpXNFZAT6Y=;
        b=Yoa7cWErMPXYxLaX8zVEaYxtYgAIQK6hm4PmzjmzT62BhEY1rpYJbZmZdN5zOcRNC0
         Zj7KtVZQHIjZEnhzQDEuUIrNMwo7ooFOZFpRNkRryxnjdeR5NqIu6O6p9jLXQANmcV4M
         qtD7NF2ta9ff1Z7zvDg344AQ7bytNGTvGcFQOttsMX40TDMZj87Im1BMxtLIkMEJGeRq
         JCEFOPgUkRfFyzOEh+q5V2pi1fGW135ubEEboo68Tp3u1lzFG55Gs/UdJqrNdB/qlxEM
         BHS8rLoKaAJtycYLjHNLLUYaHq6WP/50burQXQ6AMdQBD73ZKYdeCq3YiuMUK14roFvH
         PtEw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531Q1vY7+7O3+LF9YtWclc40nvH5klN25IKNIKFLbXuYcyYEXifE
	DXxrEMyxszAy+Nfn6A7wFPY=
X-Google-Smtp-Source: ABdhPJyFIYXgqoTdnbzANat86T6rKq+gTf2WbHcOhJMfqivEtRi3DjV0t4yAc26iR7hzmbMsgm2TRQ==
X-Received: by 2002:a63:2258:: with SMTP id t24mr16205486pgm.357.1625498469060;
        Mon, 05 Jul 2021 08:21:09 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:8994:: with SMTP id v20ls10547505pjn.3.canary-gmail;
 Mon, 05 Jul 2021 08:21:08 -0700 (PDT)
X-Received: by 2002:a17:90a:e795:: with SMTP id iz21mr15872979pjb.153.1625498468498;
        Mon, 05 Jul 2021 08:21:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1625498468; cv=none;
        d=google.com; s=arc-20160816;
        b=T4UvGystvXr0D/7S5o5m0DsrRDqd7gH5CPylwKyqhekPmCI9MHvah7/IQNgaT18SeS
         ek/QlV0P4lpbyPDaSU2p7Q/wUyovCKP7QNoJljrcAHWPDZY5LPBn5fWIMn5JJHMLhc1j
         OhzzNNQ3UJbb0EmsvnLW5bnelby8kK6OVXZAdkR3NHTmIlBIdcTcNbV4SVxGaQxnICsm
         E4huTR81ze9wDiCtWgM2wz0kYx84cagQfdSbqa84nRyGBkw8RYh22NQmov7nrr2baRuy
         YDpvY4PKbEjWkCVsycOumXL+uceOg47OwagGzhbDg4P6dN19xg4zps+84uAtBHh49x+y
         aJqw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:reply-to
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=ZaK+38OZsCSEDhbM+54w2PwWvcTglBHlEcBmL5+dvXw=;
        b=poiul2dQQ15kZkkFauOKqSGFce6AIfoDZF0FjYnv+bX7rQJsSrz4tcgby6ic3HwYFE
         bis6XYu68wGry5vEn3I8cH+Q5DmCx4us0CPp3KnQkZkZn7tykxSYa2L602TtuRExBWxU
         9UY/9Bz9kzg7hSeXk8v/BNleaVGZTJ2HIn9fbYS8FFmDhWGhvTx84l6FmoaG0buyI+d7
         hmhzkDKdA1bjHAPAg8647hGUnxySygecr1sIshQx949GuGr4fgEL0WRf8bPrS4J0kkrW
         0egoAJFOVWuSZq4FZGpKDWws0de9Zj7yCymRjN7Rf3yKH5ckW0qbf5SYp8ARNrcRIy93
         uwbA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=gs9stn9C;
       spf=pass (google.com: domain of srs0=wxgq=l5=paulmck-thinkpad-p17-gen-1.home=paulmck@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=wXGQ=L5=paulmck-ThinkPad-P17-Gen-1.home=paulmck@kernel.org";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id f12si15243pjh.1.2021.07.05.08.21.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 05 Jul 2021 08:21:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of srs0=wxgq=l5=paulmck-thinkpad-p17-gen-1.home=paulmck@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 30D7561946;
	Mon,  5 Jul 2021 15:21:08 +0000 (UTC)
Received: by paulmck-ThinkPad-P17-Gen-1.home (Postfix, from userid 1000)
	id 002415C016B; Mon,  5 Jul 2021 08:21:07 -0700 (PDT)
Date: Mon, 5 Jul 2021 08:21:07 -0700
From: "Paul E. McKenney" <paulmck@kernel.org>
To: Rong Chen <rong.a.chen@intel.com>
Cc: kernel test robot <lkp@intel.com>, clang-built-linux@googlegroups.com,
	kbuild-all@lists.01.org, linux-kernel@vger.kernel.org,
	Thomas Gleixner <tglx@linutronix.de>
Subject: Re: [kbuild-all] Re: kernel/time/clocksource-wdtest.c:47:22:
 warning: signed shift result (0x27BC86B00) requires 35 bits to represent,
 but 'long' only has 32 bits
Message-ID: <20210705152107.GV4397@paulmck-ThinkPad-P17-Gen-1>
Reply-To: paulmck@kernel.org
References: <202107040532.wqL30yFp-lkp@intel.com>
 <20210704174310.GR4397@paulmck-ThinkPad-P17-Gen-1>
 <254ab0ec-2c25-29fd-cbe1-eaf2bc135326@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <254ab0ec-2c25-29fd-cbe1-eaf2bc135326@intel.com>
X-Original-Sender: paulmck@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=gs9stn9C;       spf=pass
 (google.com: domain of srs0=wxgq=l5=paulmck-thinkpad-p17-gen-1.home=paulmck@kernel.org
 designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=wXGQ=L5=paulmck-ThinkPad-P17-Gen-1.home=paulmck@kernel.org";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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

On Mon, Jul 05, 2021 at 03:47:09PM +0800, Rong Chen wrote:
> 
> 
> On 7/5/21 1:43 AM, Paul E. McKenney wrote:
> > On Sun, Jul 04, 2021 at 05:42:36AM +0800, kernel test robot wrote:
> > > tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
> > > head:   303392fd5c160822bf778270b28ec5ea50cab2b4
> > > commit: 1253b9b87e42ab6a3d5c2cb27af2bdd67d7e50ff clocksource: Provide kernel module to test clocksource watchdog
> > > date:   11 days ago
> > > config: mips-randconfig-r015-20210702 (attached as .config)
> > > compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 9eb613b2de3163686b1a4bd1160f15ac56a4b083)
> > > reproduce (this is a W=1 build):
> > >          wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
> > >          chmod +x ~/bin/make.cross
> > >          # install mips cross compiling tool for clang build
> > >          # apt-get install binutils-mips-linux-gnu
> > >          # https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=1253b9b87e42ab6a3d5c2cb27af2bdd67d7e50ff
> > >          git remote add linus https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
> > >          git fetch --no-tags linus master
> > >          git checkout 1253b9b87e42ab6a3d5c2cb27af2bdd67d7e50ff
> > >          # save the attached .config to linux build tree
> > >          COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=mips
> > > 
> > > If you fix the issue, kindly add following tag as appropriate
> > > Reported-by: kernel test robot <lkp@intel.com>
> > > 
> > > All warnings (new ones prefixed by >>):
> > > 
> > > > > kernel/time/clocksource-wdtest.c:47:22: warning: signed shift result (0x27BC86B00) requires 35 bits to represent, but 'long' only has 32 bits [-Wshift-overflow]
> > >             .mult                   = TICK_NSEC << JIFFIES_SHIFT, /* details above */
> > >                                       ~~~~~~~~~ ^  ~~~~~~~~~~~~~
> > >     1 warning generated.
> > You have CONFIG_HZ_24=y and this test module assumes HZ > 100, as noted
> > just above the excerpt below:
> > 
> > /* Assume HZ > 100. */
> > #define JIFFIES_SHIFT   8
> > 
> > So this is expected behavior.
> > 
> > Would it help if I gave that comment some teeth, for example, as
> > shown at the end of this email?
> 
> Hi Paul,
> 
> I have confirmed that the below change can avoid the warning.

Very good, and thank you!  May I add your Tested-by?

							Thanx, Paul

> Best Regards,
> Rong Chen
> 
> > 
> > ------------------------------------------------------------------------
> > 
> > diff --git a/lib/Kconfig.debug b/lib/Kconfig.debug
> > index e1856030fa66..8f0ad6e4183c 100644
> > --- a/lib/Kconfig.debug
> > +++ b/lib/Kconfig.debug
> > @@ -2573,6 +2573,7 @@ config TEST_FPU
> >   config TEST_CLOCKSOURCE_WATCHDOG
> >   	tristate "Test clocksource watchdog in kernel space"
> >   	depends on CLOCKSOURCE_WATCHDOG
> > +	depends on HZ >= 100
> >   	help
> >   	  Enable this option to create a kernel module that will trigger
> >   	  a test of the clocksource watchdog.  This module may be loaded
> > _______________________________________________
> > kbuild-all mailing list -- kbuild-all@lists.01.org
> > To unsubscribe send an email to kbuild-all-leave@lists.01.org
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210705152107.GV4397%40paulmck-ThinkPad-P17-Gen-1.
