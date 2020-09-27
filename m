Return-Path: <clang-built-linux+bncBDIK5VOGT4GRBA4JYH5QKGQEG5IWE2Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x640.google.com (mail-pl1-x640.google.com [IPv6:2607:f8b0:4864:20::640])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F419279F6E
	for <lists+clang-built-linux@lfdr.de>; Sun, 27 Sep 2020 09:51:33 +0200 (CEST)
Received: by mail-pl1-x640.google.com with SMTP id u14sf1456885plq.0
        for <lists+clang-built-linux@lfdr.de>; Sun, 27 Sep 2020 00:51:33 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601193091; cv=pass;
        d=google.com; s=arc-20160816;
        b=Vw0KvFTqjwXE3zu8D73O4Rkm7qy8QqaqRFAcXMuz9wJKjsERn52kGcl0keQfEFxYX4
         bDfj+6KghRVdTVIKNEleuWJN9ktKRsxjl/p7anWBOVatsdXEWBU7P8bE+JEBJOMXzsDU
         fcTmZTfN8JFl1nRSv31lYTdNEylwZLe6CSE0pbrB0pYl3D4eCsFRzEUmFsFocVTCmLl2
         /d2OsVg8rqfKh4RSDmovS/sYqy7kihX+DqZ5KtkajNj2o5l87ExBbV+lorjoQ9abK5bE
         nzPM7ouRltC4BeI+ePWxA0mkCet5zWgMbRaEZ0NvsFlHIJK7/EC3C2tYsBbT9HdAPvVM
         b+2g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=uZ+i/+js8V9TYi+u+PEwzD6r9rXEYX+1biIvPnU3wpk=;
        b=oD137MHrNIHGJPcLMIdnatuyaBp+5TLAAqeKUugx/tdWcIFtguodFNk8uar++oUtY2
         YMJ8IU8VZ2MjRRlKzUH70IXMYukhLFYjVb9/E7rV7Z8/Zt00Smzax2ByM6zYHZyzADfW
         k0Dh0aduDG+6yUh+31Nrrzu4Fvy/FSUgd81Eg9nQvNg/owazhB3t4+lv1G6W/5r/To7M
         6YmVNGiKiFwYaPb1Ebd3YAi02+4Hno/KplIxQLBe/YxAouLRx3TEWXN3zKwFk6vtFoq4
         mqHWJQWi8uO5n9DwiKGSivzBySwRAf2BIc1D/YFBHxiOwEhjamMTjqdbOHaEFIpN2wnV
         rfPA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of thunder.leizhen@huawei.com designates 45.249.212.190 as permitted sender) smtp.mailfrom=thunder.leizhen@huawei.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=uZ+i/+js8V9TYi+u+PEwzD6r9rXEYX+1biIvPnU3wpk=;
        b=meKGEXjPpxn5pdm8q7sgVf2zldGn7XyzaMdcmh7iRXlcc0+9chBEr4OGjWIGVWwEna
         0VLwQXw36evPKKidV7ii8QRYA8ei751BRPzgCPcJTKS83BLqfTP447/NCIlbLNKJ4NZB
         U7WiRi7Z6CK3BmE6NJKK3ccZAQPhKXW9P44PS2OZkj6BqLlNw/XXk37fC/6N/ziC6KGT
         fi/BjKMc0UOh+3o1DrcWrE7HzOM2M2WEbyH1s9k6chaC3zzJAP3ghB+AfdHK7uWqaYe/
         JsQULeCTDkmQh4rmZ+onlrkBs8eE46NvQrAvnEoNP6EypwuszvlgudUvZBtusbgcpaCP
         C0qw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=uZ+i/+js8V9TYi+u+PEwzD6r9rXEYX+1biIvPnU3wpk=;
        b=TMuuH3oDgp/mToIJYzUCBTFQvdOe17ThSaq4WVRLcO/IW7/xb/iBj7VypNXufmugtH
         xXb8/EnyRTe4i6sh+NaWAt5aMT7eBCq7BYKFB4nKomYF5fSZLidRflxfcJsWXYQBJjd+
         QUAdS521H0PuaDUMknYAa9lFfEt0H5XVu00cmbTHmk15JnJ/y6DzSld04PdgSAmri+1A
         xYL6bYzR+jhBGz2uo4m670DX1DvgDsvF4Rse3tERrhXvk/0EF+Z4l3DlxLOy+KCTacf0
         EYtx4l6OQr3cN6soImx8/Ol/12etPiwUGGfCvBkWXH8awIQTefGPcF/dR+uFnSIcZoyO
         1U8Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530tEilAHdVqyueh8R19uepzfjWzA9AIOdZ6g1Bh5DUmNGxt3KYp
	v/r7VdXxKTITBb4KSQahGDU=
X-Google-Smtp-Source: ABdhPJx+KIo3ve6NnjbAYwZWxl7wIjIjejt7iqX23C1joe32o/3ApKoj6zwx2FHFnomHdb9nn8ginQ==
X-Received: by 2002:a17:90a:4cc6:: with SMTP id k64mr4637613pjh.103.1601193091393;
        Sun, 27 Sep 2020 00:51:31 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:3855:: with SMTP id f82ls2657583pfa.10.gmail; Sun, 27
 Sep 2020 00:51:30 -0700 (PDT)
X-Received: by 2002:a05:6a00:1585:b029:142:2501:35ed with SMTP id u5-20020a056a001585b0290142250135edmr6428868pfk.77.1601193090824;
        Sun, 27 Sep 2020 00:51:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601193090; cv=none;
        d=google.com; s=arc-20160816;
        b=CNl3ROv4W1nbIWJs/NMWi2lbbKXX77Nffzy1b5j5fYvGpluuUI0ZpYxP7XCcgGCShM
         ls6zEVGMbJ98pn8R69ZKLPA5cpF/duP0hZowgdCUYtaHwguorCcux/Qz4YqjFr1418cI
         pmkg5kc6td/0UDv4U6NrxgEf6k+c9y8T1xWqaRnh81LrsrVrLoFNoHNYDNlX9SQjCXxJ
         kuxYLwBb2nkl/uZRwyWY5WCahqOtplXW+ftT3VXidkYURaDSjpOkPPkLKpPX6UUDfN9s
         OKZo+WJFTu5ZlKz/ODFWwZPnCwsPFXB6asP2mfOJwdq/BIi8qRZGqMC+NJ91L++ukFQD
         6keg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=57jfeLyzRkWTGvIxhLEdTGWXUGi5CRdKF/csVKOFw5M=;
        b=oQSYaSjoyGWUvh8Tk7vXpiCFMF0N/iT/wVS8b+guLozQ7NLeDY6lK6b/ZWk8UG3tM7
         AwPJkrUuzEsZO7v2Z8jBWEIKO1azNu6TuaGwVH9S8pc4BophvC8Ei7jf0Xdro/AX4k04
         X6K0ZusdKbY0bWQoDR5F2qECvs5ti2P/WwyV8IAcqWjdFBLpTi5lQBfdimmIJjSA1F3T
         fO4gEgTWxwjsuoorVdG8IrSsnYvePuCtNXFD8TuS92Lyep63tP28x5tYtd/adnsJ/lzx
         ShkGnYaBlKU2ZgefOZx9FgeZVDAN18llUGMwA5k4/bGoTA0BDpsw/7DySpflXbc6vGzg
         ZNqw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of thunder.leizhen@huawei.com designates 45.249.212.190 as permitted sender) smtp.mailfrom=thunder.leizhen@huawei.com
Received: from huawei.com (szxga04-in.huawei.com. [45.249.212.190])
        by gmr-mx.google.com with ESMTPS id k65si505618pfd.1.2020.09.27.00.51.30
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 27 Sep 2020 00:51:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of thunder.leizhen@huawei.com designates 45.249.212.190 as permitted sender) client-ip=45.249.212.190;
Received: from DGGEMS409-HUB.china.huawei.com (unknown [172.30.72.59])
	by Forcepoint Email with ESMTP id A13CFB5D319B3E7B93F6;
	Sun, 27 Sep 2020 15:51:28 +0800 (CST)
Received: from [127.0.0.1] (10.174.177.253) by DGGEMS409-HUB.china.huawei.com
 (10.3.19.209) with Microsoft SMTP Server id 14.3.487.0; Sun, 27 Sep 2020
 15:51:28 +0800
Subject: Re: [linux-next:master 8690/11173]
 drivers/clocksource/timer-sp804.c:68:12: warning: no previous prototype for
 function 'sp804_clocksource_and_sched_clock_init'
To: kernel test robot <lkp@intel.com>
CC: <kbuild-all@lists.01.org>, <clang-built-linux@googlegroups.com>, "Daniel
 Lezcano" <daniel.lezcano@linaro.org>
References: <202009261037.OYybN2j9%lkp@intel.com>
From: "Leizhen (ThunderTown)" <thunder.leizhen@huawei.com>
Message-ID: <0e408466-9919-ebc1-4427-5497db11a288@huawei.com>
Date: Sun, 27 Sep 2020 15:51:27 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <202009261037.OYybN2j9%lkp@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Originating-IP: [10.174.177.253]
X-CFilter-Loop: Reflected
X-Original-Sender: thunder.leizhen@huawei.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of thunder.leizhen@huawei.com designates 45.249.212.190
 as permitted sender) smtp.mailfrom=thunder.leizhen@huawei.com
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



On 2020/9/26 10:51, kernel test robot wrote:
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git master
> head:   20dc779fdefc40bf7dd9736cea01704f29228fae
> commit: a3ed934843af074bfde722b8a8574b3eb4f08480 [8690/11173] clocksource: sp804: delete the leading "__" of some functions
> config: arm64-randconfig-r035-20200923 (attached as .config)
> compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project d6ac649ccda289ecc2d2c0cb51892d57e8ec328c)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install arm64 cross compiling tool for clang build
>         # apt-get install binutils-aarch64-linux-gnu
>         # https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?id=a3ed934843af074bfde722b8a8574b3eb4f08480
>         git remote add linux-next https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git
>         git fetch --no-tags linux-next master
>         git checkout a3ed934843af074bfde722b8a8574b3eb4f08480
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=arm64 
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
> 
> All warnings (new ones prefixed by >>):
> 
>>> drivers/clocksource/timer-sp804.c:68:12: warning: no previous prototype for function 'sp804_clocksource_and_sched_clock_init' [-Wmissing-prototypes]
>    int __init sp804_clocksource_and_sched_clock_init(void __iomem *base,
>               ^
>    drivers/clocksource/timer-sp804.c:68:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
>    int __init sp804_clocksource_and_sched_clock_init(void __iomem *base,
>    ^
>    static 
>>> drivers/clocksource/timer-sp804.c:162:12: warning: no previous prototype for function 'sp804_clockevents_init' [-Wmissing-prototypes]
>    int __init sp804_clockevents_init(void __iomem *base, unsigned int irq,
>               ^
>    drivers/clocksource/timer-sp804.c:162:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
>    int __init sp804_clockevents_init(void __iomem *base, unsigned int irq,
>    ^
>    static 
>    2 warnings generated.

Hi, Daniel:
  I forgot adding static for sp804_clockevents_init() and sp804_clocksource_and_sched_clock_init()
in patch "clocksource: sp804: remove unused sp804_timer_disable() and timer-sp804.h".
  Have you written a fix? Or I send a fix patch.

> 
> vim +/sp804_clocksource_and_sched_clock_init +68 drivers/clocksource/timer-sp804.c
> 
>     67	
>   > 68	int __init sp804_clocksource_and_sched_clock_init(void __iomem *base,
>     69							  const char *name,
>     70							  struct clk *clk,
>     71							  int use_sched_clock)
>     72	{
>     73		long rate;
>     74	
>     75		rate = sp804_get_clock_rate(clk, name);
>     76		if (rate < 0)
>     77			return -EINVAL;
>     78	
>     79		/* setup timer 0 as free-running clocksource */
>     80		writel(0, base + TIMER_CTRL);
>     81		writel(0xffffffff, base + TIMER_LOAD);
>     82		writel(0xffffffff, base + TIMER_VALUE);
>     83		writel(TIMER_CTRL_32BIT | TIMER_CTRL_ENABLE | TIMER_CTRL_PERIODIC,
>     84			base + TIMER_CTRL);
>     85	
>     86		clocksource_mmio_init(base + TIMER_VALUE, name,
>     87			rate, 200, 32, clocksource_mmio_readl_down);
>     88	
>     89		if (use_sched_clock) {
>     90			sched_clock_base = base;
>     91			sched_clock_register(sp804_read, 32, rate);
>     92		}
>     93	
>     94		return 0;
>     95	}
>     96	
>     97	
>     98	static void __iomem *clkevt_base;
>     99	static unsigned long clkevt_reload;
>    100	
>    101	/*
>    102	 * IRQ handler for the timer
>    103	 */
>    104	static irqreturn_t sp804_timer_interrupt(int irq, void *dev_id)
>    105	{
>    106		struct clock_event_device *evt = dev_id;
>    107	
>    108		/* clear the interrupt */
>    109		writel(1, clkevt_base + TIMER_INTCLR);
>    110	
>    111		evt->event_handler(evt);
>    112	
>    113		return IRQ_HANDLED;
>    114	}
>    115	
>    116	static inline void timer_shutdown(struct clock_event_device *evt)
>    117	{
>    118		writel(0, clkevt_base + TIMER_CTRL);
>    119	}
>    120	
>    121	static int sp804_shutdown(struct clock_event_device *evt)
>    122	{
>    123		timer_shutdown(evt);
>    124		return 0;
>    125	}
>    126	
>    127	static int sp804_set_periodic(struct clock_event_device *evt)
>    128	{
>    129		unsigned long ctrl = TIMER_CTRL_32BIT | TIMER_CTRL_IE |
>    130				     TIMER_CTRL_PERIODIC | TIMER_CTRL_ENABLE;
>    131	
>    132		timer_shutdown(evt);
>    133		writel(clkevt_reload, clkevt_base + TIMER_LOAD);
>    134		writel(ctrl, clkevt_base + TIMER_CTRL);
>    135		return 0;
>    136	}
>    137	
>    138	static int sp804_set_next_event(unsigned long next,
>    139		struct clock_event_device *evt)
>    140	{
>    141		unsigned long ctrl = TIMER_CTRL_32BIT | TIMER_CTRL_IE |
>    142				     TIMER_CTRL_ONESHOT | TIMER_CTRL_ENABLE;
>    143	
>    144		writel(next, clkevt_base + TIMER_LOAD);
>    145		writel(ctrl, clkevt_base + TIMER_CTRL);
>    146	
>    147		return 0;
>    148	}
>    149	
>    150	static struct clock_event_device sp804_clockevent = {
>    151		.features		= CLOCK_EVT_FEAT_PERIODIC |
>    152					  CLOCK_EVT_FEAT_ONESHOT |
>    153					  CLOCK_EVT_FEAT_DYNIRQ,
>    154		.set_state_shutdown	= sp804_shutdown,
>    155		.set_state_periodic	= sp804_set_periodic,
>    156		.set_state_oneshot	= sp804_shutdown,
>    157		.tick_resume		= sp804_shutdown,
>    158		.set_next_event		= sp804_set_next_event,
>    159		.rating			= 300,
>    160	};
>    161	
>  > 162	int __init sp804_clockevents_init(void __iomem *base, unsigned int irq,
>    163					  struct clk *clk, const char *name)
>    164	{
>    165		struct clock_event_device *evt = &sp804_clockevent;
>    166		long rate;
>    167	
>    168		rate = sp804_get_clock_rate(clk, name);
>    169		if (rate < 0)
>    170			return -EINVAL;
>    171	
>    172		clkevt_base = base;
>    173		clkevt_reload = DIV_ROUND_CLOSEST(rate, HZ);
>    174		evt->name = name;
>    175		evt->irq = irq;
>    176		evt->cpumask = cpu_possible_mask;
>    177	
>    178		writel(0, base + TIMER_CTRL);
>    179	
>    180		if (request_irq(irq, sp804_timer_interrupt, IRQF_TIMER | IRQF_IRQPOLL,
>    181				"timer", &sp804_clockevent))
>    182			pr_err("%s: request_irq() failed\n", "timer");
>    183		clockevents_config_and_register(evt, rate, 0xf, 0xffffffff);
>    184	
>    185		return 0;
>    186	}
>    187	
> 
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/0e408466-9919-ebc1-4427-5497db11a288%40huawei.com.
