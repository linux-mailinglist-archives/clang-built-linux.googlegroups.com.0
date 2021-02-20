Return-Path: <clang-built-linux+bncBCX2JBVY5MBBBI5QYOAQMGQEOY33SPI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73a.google.com (mail-qk1-x73a.google.com [IPv6:2607:f8b0:4864:20::73a])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DE183204BD
	for <lists+clang-built-linux@lfdr.de>; Sat, 20 Feb 2021 10:36:36 +0100 (CET)
Received: by mail-qk1-x73a.google.com with SMTP id v128sf5283978qkc.12
        for <lists+clang-built-linux@lfdr.de>; Sat, 20 Feb 2021 01:36:36 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1613813795; cv=pass;
        d=google.com; s=arc-20160816;
        b=KPSGNjk8KCp0mZov4R1lXfSym9qh2LsiWp6V7hA9szi0fkAw5Ev1Rn0FMc6BM9mcrj
         N0AzpF6Z6wnwu7uExZppCcF5a6wfNq6ZPexFdOrRD+cQ9pa6GU7vHhYqyb8StGdgx4sN
         C80FPzfw7USv4FvrKTGe7Lpu2N3vaT3pvlLerptFXI8nLVP4qD87bs4XS0HCuhNIAF6v
         A+OxBDZL8TA/wFxmwVLLkdxy2FrtfvqOW1XWbdFD5vyppNIDgkEbgQYLgazW6joZetjy
         641/HLSmsiJA0H5CypSA82XyAvnflnkyyXsPUqyF/kJaHE8WSQQxzBif9X0j201M5mGz
         WiCQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=YVpYV1DWv5xopnXTCzQ5yBNT/kDd0lJfmp7dJ4fuxPE=;
        b=RumzLy7tVvQyX1dTM2rreKIjRBE9ZrAiOcX2+DrigsVdupaB/Xb0+ZOQp6Dh1b9c6M
         eHJHCeDS6MBLqPIOKHKrDcOqV/UYNlfgErV7oErcYT13V/O9+AYPSZRXNxaM35ETjiqE
         ol/Gt7C/Ry3LEYZf9rXc0HkN7UHLbjx4IHIyJz5QFRRjCOVT4siHn9wEHKV3ALnJr5JL
         icw9EL1U/YjuY7IzeabglNW6knhAI3PpW0RFqBjgQpNGNQUuuGVcZIUfvR2f9WL/103E
         deVduGNg/sjtmYRnRlSG5m1NJDCf760ES8Gt8yqHm0EyVWXzR3oAoiXr2Dqk9bL2Lw0P
         PpKA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of philip.li@intel.com designates 134.134.136.20 as permitted sender) smtp.mailfrom=philip.li@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=YVpYV1DWv5xopnXTCzQ5yBNT/kDd0lJfmp7dJ4fuxPE=;
        b=BB/XyA03UVzIBTS3L++R1S/kgOPYVWWLjJQ4l4OPQYahUKO1W/YB9OPJ0hNQEtMjX/
         IUscxkRxCYBvZf2Y+Bnxwu0R/tH+O0NjfMncMWMm0Cbf9SkDV7mMQjzrcYKPkcCsXaFW
         g90D2m/9bFagTiHa309bptiFrKMm1/S0iQOLBQueQLW4ApAFDw4j9MLmRGjybCNilF5i
         Zz2busJR4pr9juszrvnQcDrGdJXyNpD9kZC27MhZC9r7bvmX0p03Fxyg8LoN+Sfh29EH
         E3IeBCs4/VRuuADExiLg/Pp2NAZtW82gVvOAWNGptAuTPV5qkYaqMMAnJGgYvGBCsRJS
         W17w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:references:mime-version:content-disposition
         :in-reply-to:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=YVpYV1DWv5xopnXTCzQ5yBNT/kDd0lJfmp7dJ4fuxPE=;
        b=IfRgh4hjJcG5GqboTa4QyuEHFjsAdgyEUvopFTmisDwGObKgPNjvUOOJxS2lAzgoWB
         Dw6gUSFvAdqq817I4S+Pa3ZrwrvZxrHivHijLJhHnmL17NcDW1KYcs+VT6PocO8BL0h1
         thlHMS0+5e6edk3vbRKbYOAAuKww9k6ioJr7jM8YcwGd/VPq/V46bPMQjLN/4ZvT6pNq
         pU/IlxGm1250AxQV+Vh4hL6vhnSp5ER9Ja1P/dGijBYOxT1KCYkLrZCjGvQhss1wE627
         b3TGQIj1VEF7M3lVnpS0TAKtko7FRrPuRJv0rKkYsGrkupW7L+EZJ6dp2m7cyXIh51Bs
         NfQQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532rvMEf2SnUp23hWSnb8W55gwXK9Tx5YyFNMKoqhjlS69T7aNJo
	nIAWoZvTvQh1x5W4yensauU=
X-Google-Smtp-Source: ABdhPJwqu/UynZTupKPNmMMF93w7tK6yoHtTgZU7aJ6UNTcsxALmH7oXhz6gYKn6KwZ7EHMR0A7BtQ==
X-Received: by 2002:a37:6788:: with SMTP id b130mr13355897qkc.197.1613813795524;
        Sat, 20 Feb 2021 01:36:35 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6214:13d2:: with SMTP id cg18ls2959462qvb.7.gmail; Sat,
 20 Feb 2021 01:36:35 -0800 (PST)
X-Received: by 2002:a0c:e5c9:: with SMTP id u9mr13000958qvm.55.1613813795151;
        Sat, 20 Feb 2021 01:36:35 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1613813795; cv=none;
        d=google.com; s=arc-20160816;
        b=EcgrdIXWTRH1i5dQ1/icQTbZ+dp06oG/Jfmn2C/HYiPxmPQ5EyvMIahfRZu67pQ4df
         2CmQe9qbb6HkC9ew2tVJ7GRBiR+hz5XecTFfd7qelbd+sMGuuB/kJNBJzQd7fMRu+mfn
         krNhNyjLwM9lZiG9vrD/C5eJAnNX4MVT8G+tNOnR0EiazB0KVAylQUbFezqNR4H0DKle
         +I5djdh7cGx3wLU0yhmfQ/6/CGoNPphWNvkNrGasuugUQbNkRyq/JWqP7TVvwtVsFxHV
         836r4s1GRssBU6edxVYR/eKgNWazFJFIUYehQfxUd+Zxtl+Gb2DgYHtDHTiF1y7GAHBU
         lKQw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:ironport-sdr:ironport-sdr;
        bh=r9KOTRc9wL7fkg9QzDl0oN9k2u24hRAcP+GL4CPakrc=;
        b=N4ABMfKbvw09ylPVCep3BnS9mZpkPuOLwFkWavMUj7WeAm1G+PVkAd3YzAF4uysc8b
         7ZDlJ/013H1JHAlpJ/9cgBrznc0CtJ/1jOiZYUDQ+3WmunHhtMYNSKm39YOM1dJTFfQr
         tnmIvjJZ9sUF7+m0sXt2cY0bamkiIRneRVpVu9f+ljYjPjgE+qF8zqzXqr6aotce+mlb
         41CktLzKXtAZxkEnPHYAiTUXGo2HfWBZc2QuC5/V57y7FcOHnYryITdTnzL0niM6pTV/
         OxMOUhGq86MH9mm5XVo0+iQj0fnHv9gtPRwAVdbiBqm3OQ2qeBwng96nJSs4V1SmYtRU
         9XEg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of philip.li@intel.com designates 134.134.136.20 as permitted sender) smtp.mailfrom=philip.li@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga02.intel.com (mga02.intel.com. [134.134.136.20])
        by gmr-mx.google.com with ESMTPS id d12si602060qkn.0.2021.02.20.01.36.34
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 20 Feb 2021 01:36:34 -0800 (PST)
Received-SPF: pass (google.com: domain of philip.li@intel.com designates 134.134.136.20 as permitted sender) client-ip=134.134.136.20;
IronPort-SDR: z++RMDOoojbTKdjwJXb8WH8RA8EAyucnr8+4ost/pw/lBbNbYmgC5UfJAeFBeij3TfQt4Fmy9u
 T05oCAHtoX8g==
X-IronPort-AV: E=McAfee;i="6000,8403,9900"; a="171191527"
X-IronPort-AV: E=Sophos;i="5.81,192,1610438400"; 
   d="scan'208";a="171191527"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
  by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 20 Feb 2021 01:36:32 -0800
IronPort-SDR: mFzJ7a2JziSroRUajwcOW1F660SWFCANNvl3pQWPubhVa5UKMGE7YTFrH+N+cVtY3Tbfkxl6ak
 rFRS7vfIMhhA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,192,1610438400"; 
   d="scan'208";a="496891001"
Received: from pl-dbox.sh.intel.com (HELO pl-dbox) ([10.239.159.39])
  by fmsmga001.fm.intel.com with ESMTP; 20 Feb 2021 01:36:31 -0800
Date: Sat, 20 Feb 2021 17:30:29 +0800
From: Philip Li <philip.li@intel.com>
To: kernel test robot <lkp@intel.com>
Cc: Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
	kbuild-all@lists.01.org, clang-built-linux@googlegroups.com
Subject: Re: [kbuild-all] [linux-rt-devel:linux-5.10.y-rt 180/279]
 kernel/time/hrtimer.c:2000:6: warning: no previous prototype for function
 'cpu_chill'
Message-ID: <20210220093029.GA69268@pl-dbox>
References: <202102201625.yt6cYNku-lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <202102201625.yt6cYNku-lkp@intel.com>
X-Original-Sender: philip.li@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of philip.li@intel.com designates 134.134.136.20 as
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

On Sat, Feb 20, 2021 at 04:27:35PM +0800, kernel test robot wrote:
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/rt/linux-rt-devel.git linux-5.10.y-rt
> head:   822f2ce254f44f8e65ccb2cdbd7cf4cf2208a3ff
> commit: d8f742a94a343c1e55119961ef3bc669d3aa3c00 [180/279] ARM: Allow to enable RT
> config: arm-randconfig-r031-20210220 (attached as .config)
> compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project c9439ca36342fb6013187d0a69aef92736951476)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install arm cross compiling tool for clang build
>         # apt-get install binutils-arm-linux-gnueabi
>         # https://git.kernel.org/pub/scm/linux/kernel/git/rt/linux-rt-devel.git/commit/?id=d8f742a94a343c1e55119961ef3bc669d3aa3c00
>         git remote add linux-rt-devel https://git.kernel.org/pub/scm/linux/kernel/git/rt/linux-rt-devel.git
>         git fetch --no-tags linux-rt-devel linux-5.10.y-rt
>         git checkout d8f742a94a343c1e55119961ef3bc669d3aa3c00
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=arm 
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
kindly ignore this report, we will remove the testing of 5.x.y-rt per
early feedback.

Thanks

> 
> All warnings (new ones prefixed by >>):
> 
>    kernel/time/hrtimer.c:120:21: warning: initializer overrides prior initialization of this subobject [-Winitializer-overrides]
>            [CLOCK_REALTIME]        = HRTIMER_BASE_REALTIME,
>                                      ^~~~~~~~~~~~~~~~~~~~~
>    kernel/time/hrtimer.c:118:27: note: previous initialization is here
>            [0 ... MAX_CLOCKS - 1]  = HRTIMER_MAX_CLOCK_BASES,
>                                      ^~~~~~~~~~~~~~~~~~~~~~~
>    kernel/time/hrtimer.c:121:22: warning: initializer overrides prior initialization of this subobject [-Winitializer-overrides]
>            [CLOCK_MONOTONIC]       = HRTIMER_BASE_MONOTONIC,
>                                      ^~~~~~~~~~~~~~~~~~~~~~
>    kernel/time/hrtimer.c:118:27: note: previous initialization is here
>            [0 ... MAX_CLOCKS - 1]  = HRTIMER_MAX_CLOCK_BASES,
>                                      ^~~~~~~~~~~~~~~~~~~~~~~
>    kernel/time/hrtimer.c:122:21: warning: initializer overrides prior initialization of this subobject [-Winitializer-overrides]
>            [CLOCK_BOOTTIME]        = HRTIMER_BASE_BOOTTIME,
>                                      ^~~~~~~~~~~~~~~~~~~~~
>    kernel/time/hrtimer.c:118:27: note: previous initialization is here
>            [0 ... MAX_CLOCKS - 1]  = HRTIMER_MAX_CLOCK_BASES,
>                                      ^~~~~~~~~~~~~~~~~~~~~~~
>    kernel/time/hrtimer.c:123:17: warning: initializer overrides prior initialization of this subobject [-Winitializer-overrides]
>            [CLOCK_TAI]             = HRTIMER_BASE_TAI,
>                                      ^~~~~~~~~~~~~~~~
>    kernel/time/hrtimer.c:118:27: note: previous initialization is here
>            [0 ... MAX_CLOCKS - 1]  = HRTIMER_MAX_CLOCK_BASES,
>                                      ^~~~~~~~~~~~~~~~~~~~~~~
> >> kernel/time/hrtimer.c:2000:6: warning: no previous prototype for function 'cpu_chill' [-Wmissing-prototypes]
>    void cpu_chill(void)
>         ^
>    kernel/time/hrtimer.c:2000:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
>    void cpu_chill(void)
>    ^
>    static 
>    kernel/time/hrtimer.c:428:20: warning: unused function 'debug_hrtimer_free' [-Wunused-function]
>    static inline void debug_hrtimer_free(struct hrtimer *timer)
>                       ^
>    kernel/time/hrtimer.c:621:19: warning: unused function 'hrtimer_hres_active' [-Wunused-function]
>    static inline int hrtimer_hres_active(void)
>                      ^
>    kernel/time/hrtimer.c:1726:20: warning: unused function '__hrtimer_peek_ahead_timers' [-Wunused-function]
>    static inline void __hrtimer_peek_ahead_timers(void) { }
>                       ^
>    8 warnings generated.
> 
> 
> vim +/cpu_chill +2000 kernel/time/hrtimer.c
> 
> edbeda46322fbc Al Viro         2017-06-07  1995  
> ca2a97742c3689 Thomas Gleixner 2012-03-07  1996  #ifdef CONFIG_PREEMPT_RT
> ca2a97742c3689 Thomas Gleixner 2012-03-07  1997  /*
> ca2a97742c3689 Thomas Gleixner 2012-03-07  1998   * Sleep for 1 ms in hope whoever holds what we want will let it go.
> ca2a97742c3689 Thomas Gleixner 2012-03-07  1999   */
> ca2a97742c3689 Thomas Gleixner 2012-03-07 @2000  void cpu_chill(void)
> ca2a97742c3689 Thomas Gleixner 2012-03-07  2001  {
> ca2a97742c3689 Thomas Gleixner 2012-03-07  2002  	unsigned int freeze_flag = current->flags & PF_NOFREEZE;
> ca2a97742c3689 Thomas Gleixner 2012-03-07  2003  	struct task_struct *self = current;
> ca2a97742c3689 Thomas Gleixner 2012-03-07  2004  	ktime_t chill_time;
> ca2a97742c3689 Thomas Gleixner 2012-03-07  2005  
> ca2a97742c3689 Thomas Gleixner 2012-03-07  2006  	raw_spin_lock_irq(&self->pi_lock);
> ca2a97742c3689 Thomas Gleixner 2012-03-07  2007  	self->saved_state = self->state;
> ca2a97742c3689 Thomas Gleixner 2012-03-07  2008  	__set_current_state_no_track(TASK_UNINTERRUPTIBLE);
> ca2a97742c3689 Thomas Gleixner 2012-03-07  2009  	raw_spin_unlock_irq(&self->pi_lock);
> ca2a97742c3689 Thomas Gleixner 2012-03-07  2010  
> ca2a97742c3689 Thomas Gleixner 2012-03-07  2011  	chill_time = ktime_set(0, NSEC_PER_MSEC);
> ca2a97742c3689 Thomas Gleixner 2012-03-07  2012  
> ca2a97742c3689 Thomas Gleixner 2012-03-07  2013  	current->flags |= PF_NOFREEZE;
> ca2a97742c3689 Thomas Gleixner 2012-03-07  2014  	schedule_hrtimeout(&chill_time, HRTIMER_MODE_REL_HARD);
> ca2a97742c3689 Thomas Gleixner 2012-03-07  2015  	if (!freeze_flag)
> ca2a97742c3689 Thomas Gleixner 2012-03-07  2016  		current->flags &= ~PF_NOFREEZE;
> ca2a97742c3689 Thomas Gleixner 2012-03-07  2017  
> ca2a97742c3689 Thomas Gleixner 2012-03-07  2018  	raw_spin_lock_irq(&self->pi_lock);
> ca2a97742c3689 Thomas Gleixner 2012-03-07  2019  	__set_current_state_no_track(self->saved_state);
> ca2a97742c3689 Thomas Gleixner 2012-03-07  2020  	self->saved_state = TASK_RUNNING;
> ca2a97742c3689 Thomas Gleixner 2012-03-07  2021  	raw_spin_unlock_irq(&self->pi_lock);
> ca2a97742c3689 Thomas Gleixner 2012-03-07  2022  }
> ca2a97742c3689 Thomas Gleixner 2012-03-07  2023  EXPORT_SYMBOL(cpu_chill);
> ca2a97742c3689 Thomas Gleixner 2012-03-07  2024  #endif
> ca2a97742c3689 Thomas Gleixner 2012-03-07  2025  
> 
> :::::: The code at line 2000 was first introduced by commit
> :::::: ca2a97742c368981d127fcaf7699756da6233d97 rt: Introduce cpu_chill()
> 
> :::::: TO: Thomas Gleixner <tglx@linutronix.de>
> :::::: CC: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210220093029.GA69268%40pl-dbox.
