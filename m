Return-Path: <clang-built-linux+bncBDIK5VOGT4GRBNNXYH5QKGQEHB2KAMQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x739.google.com (mail-qk1-x739.google.com [IPv6:2607:f8b0:4864:20::739])
	by mail.lfdr.de (Postfix) with ESMTPS id 364E327A041
	for <lists+clang-built-linux@lfdr.de>; Sun, 27 Sep 2020 11:30:31 +0200 (CEST)
Received: by mail-qk1-x739.google.com with SMTP id w64sf5062508qkc.14
        for <lists+clang-built-linux@lfdr.de>; Sun, 27 Sep 2020 02:30:31 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601199030; cv=pass;
        d=google.com; s=arc-20160816;
        b=gkNwAvUlfAvwCV1Oh1MLDieg5m0RUSAZAjbRzpmMRfUs+jqho315VUirPprtI9Gfwj
         /dnfKr0nxVP/FFvZWCytzQD7GEGW++kNAxIXBfE7f4CUTpifP1gYK7/+jdz0Gm9MeZO8
         8CUNOPO6WQzViXRo/2uz6EuhMPXA9WeMIYEKzxHw1nQy+2V/FmHvklGe8vQKNG0Eb0mS
         6mqwjm1FhPga7etxcbEzUVB/QrmSni879jSvQf2oNOKpQ+JmyHoQdgCY013TkXbIZ31n
         3GYlNnG/vPIrI0p+/HiAuEMSFdLcjJ6ZqxoG9mJ34JrrdjWcQ6wakAQ32rEn89/vAzLj
         nNIw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:references:cc:to:from
         :subject:sender:dkim-signature;
        bh=mNDqNw5k3CRAluur4sNjyFGeY0bCLWlQX7R5tk06w2c=;
        b=qZ9OQmzRlZ3RC6I371Q0NZPS5G6WlB4lS1w/tODub1wVXCeR000H5/uuAH25atsxxg
         YB6r6J5JmO14NxpoHPJ+QPXDRkuL+tq2t5mEjGJOeQzQG6rZFQX4wlKA5bhmJ5KWHMJd
         MWGuAnbCMqVfcQZU2jt9fQt8MK7tGHvAjTXKEsZTsrzPO/dqm68FZf3AYEMHeMRxGNKz
         mKvlcwDU/JcCD/6ItRVJQntNV41iIvndjTx8ASzXh9zss3132T0/TiA8bAJ/AmMLyrqt
         BYFG8r/48CJLMTidTb4nH3srEkqUYflCMZyLXyVN1S2k5LfDZOmxARzIXIGjBy29HK1j
         oGUw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of thunder.leizhen@huawei.com designates 45.249.212.35 as permitted sender) smtp.mailfrom=thunder.leizhen@huawei.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:from:to:cc:references:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=mNDqNw5k3CRAluur4sNjyFGeY0bCLWlQX7R5tk06w2c=;
        b=SdGb07zXvhnB95N35e7cbcd5dFX77VUjNi78SNgv8fe+UPiz4BL1GuxLkzJQN3FE03
         +YNjK7Du6KYkfrqwfNfbN7JwiyvdGYrKVAinRHYS/Cx8Ua+3S69HczdCnvc90TuvurBd
         dMZ5XYgHzpstTU5R7ddTjM35xCauJoyHFR576nsjiS+8lV5sSrBTsBVIgLlPVJFqEpuT
         tdUc3Ian3Tp0tFW6bvLIIHY3Q33cS0Kw5YGYGSv4Fa1AQDgrlzod2fTWy/xRLe/rodtQ
         qFVmKyxnpjzf3XPmGtGyHZ4IIHpGTKFSruPPZmaFPxxD5rvhGsM+Fu1fhHRo1toImSvu
         47BQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:from:to:cc:references:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=mNDqNw5k3CRAluur4sNjyFGeY0bCLWlQX7R5tk06w2c=;
        b=m+U3/h6Bq+Ypsoh7TqCmIQKhMNt1c90dq0W3qmMZP+9uBt9O2zsXxmjm95iR9wMH4G
         3al5IDK7A1FsNUw5GdBJ8eQfzNI/gXmpDNwbFoWhyRIeuZEgFous8Vwvj5djEOYC1AtS
         qZ8gb6hVAzKZuweTSnE59hUwSKM0T7re6c2KDSuwizHFxhaR6TueXrDUqgEt3GV2e3ZD
         ey0MWNAZsi69rjjLbJXXOJqHvvNQVabwRScIMJ6tAeDa1WwHmzF4bN9rmg/IhMcd9oNZ
         MN+EpqbTEqNTVQZw5AZZVQWRi+oOsoPUl/x9r9uvJ73O+d/iKmE0GCe2rimRcD+Xiols
         FLTA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533C/voG430A5zCFaikvqa+IbdIWrio+PUknTWINervX/faBR6hi
	GIpwXC6sV84DucOnUpFBaCY=
X-Google-Smtp-Source: ABdhPJxsWneBht1ALJRgeS1Qm7hv/61BP4TFBYR7v35LtgKDL+zKKQoK8UHbo0norkKURqCAI7DACA==
X-Received: by 2002:ac8:6a06:: with SMTP id t6mr820967qtr.1.1601199030040;
        Sun, 27 Sep 2020 02:30:30 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:4e90:: with SMTP id 16ls2881966qtp.11.gmail; Sun, 27 Sep
 2020 02:30:29 -0700 (PDT)
X-Received: by 2002:aed:2e26:: with SMTP id j35mr7710670qtd.377.1601199029618;
        Sun, 27 Sep 2020 02:30:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601199029; cv=none;
        d=google.com; s=arc-20160816;
        b=WPBQsso5UfD9dDxBaxQ2AURCTSo2vvu5dUUh/P76UBgY4kMX6995f07rsgy96w1mzA
         M1FO93rKwdysuQWFH1474oTmGy93cSk1dfumcBT2JMR2BX9/TMjRuqe4204MO/tK+Nl9
         C+eZxCMosv4ot28ygLA2B3esFjxQxRL0nrIvdDciJn70TWZ8L38sTbpcO/ETSGt2Faao
         zA5TDGgKAhfKGGbsdrxAkFihbaJxdN4a52udlLa8G+yNiUrUn6OmnoCnpw+FE80At3/T
         4bhFSju9XPsJ2KAv46U1RpGVBlOg5kIyhcU8EbeGg2ZS7k5WVB/J9FhbibXwDdXCJ7s2
         s4rQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:references:cc:to:from:subject;
        bh=bahcbk4cCJoG29+hFJZdS+p8AUa1wroQUBaW+R4+vpo=;
        b=Xh5RMSQmCrN90MqaNwHTSHREgzHlbn1y9SYLKFaHyngjx9x0TO7EUufJd6sVUbmTgx
         RRjw5DpNqe14A41A1yTnBKgv1bNtvDTBoD2HVY/K6vVDNMRbOfYhKCgd26qRNkQzYNHE
         X/YA5wQdWUfw1ntbc9PAJjrqw88lF8Vwkva7JlqriTo94emezNxYdgirH8CCngKnrsU3
         VNc53pwnlJDdM+v2qPo1tanBTbWpUjts0ZHGNxJ8PkeIcx7JSWwhC54RDqJToIrYnuKL
         MnZvox8v36GdO+dS3/utuosa/E74Bd1IndyhXrypOiNS3G4WT/nLOXgi+Cr1+7PQiJ8Y
         224Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of thunder.leizhen@huawei.com designates 45.249.212.35 as permitted sender) smtp.mailfrom=thunder.leizhen@huawei.com
Received: from huawei.com (szxga07-in.huawei.com. [45.249.212.35])
        by gmr-mx.google.com with ESMTPS id q5si378575qkc.2.2020.09.27.02.30.29
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 27 Sep 2020 02:30:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of thunder.leizhen@huawei.com designates 45.249.212.35 as permitted sender) client-ip=45.249.212.35;
Received: from DGGEMS409-HUB.china.huawei.com (unknown [172.30.72.60])
	by Forcepoint Email with ESMTP id 946428CFFE384C2260D2;
	Sun, 27 Sep 2020 17:30:26 +0800 (CST)
Received: from [127.0.0.1] (10.174.177.253) by DGGEMS409-HUB.china.huawei.com
 (10.3.19.209) with Microsoft SMTP Server id 14.3.487.0; Sun, 27 Sep 2020
 17:30:21 +0800
Subject: Re: [linux-next:master 8690/11173]
 drivers/clocksource/timer-sp804.c:68:12: warning: no previous prototype for
 function 'sp804_clocksource_and_sched_clock_init'
From: "Leizhen (ThunderTown)" <thunder.leizhen@huawei.com>
To: kernel test robot <lkp@intel.com>
CC: <kbuild-all@lists.01.org>, <clang-built-linux@googlegroups.com>, "Daniel
 Lezcano" <daniel.lezcano@linaro.org>
References: <202009261037.OYybN2j9%lkp@intel.com>
 <0e408466-9919-ebc1-4427-5497db11a288@huawei.com>
Message-ID: <a1ffce62-a33c-9b72-0347-29f8301d2193@huawei.com>
Date: Sun, 27 Sep 2020 17:30:20 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <0e408466-9919-ebc1-4427-5497db11a288@huawei.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Originating-IP: [10.174.177.253]
X-CFilter-Loop: Reflected
X-Original-Sender: thunder.leizhen@huawei.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of thunder.leizhen@huawei.com designates 45.249.212.35 as
 permitted sender) smtp.mailfrom=thunder.leizhen@huawei.com
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



On 2020/9/27 15:51, Leizhen (ThunderTown) wrote:
> 
> 
> On 2020/9/26 10:51, kernel test robot wrote:
>> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git master
>> head:   20dc779fdefc40bf7dd9736cea01704f29228fae
>> commit: a3ed934843af074bfde722b8a8574b3eb4f08480 [8690/11173] clocksource: sp804: delete the leading "__" of some functions
>> config: arm64-randconfig-r035-20200923 (attached as .config)
>> compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project d6ac649ccda289ecc2d2c0cb51892d57e8ec328c)
>> reproduce (this is a W=1 build):
>>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>>         chmod +x ~/bin/make.cross
>>         # install arm64 cross compiling tool for clang build
>>         # apt-get install binutils-aarch64-linux-gnu
>>         # https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?id=a3ed934843af074bfde722b8a8574b3eb4f08480
>>         git remote add linux-next https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git
>>         git fetch --no-tags linux-next master
>>         git checkout a3ed934843af074bfde722b8a8574b3eb4f08480
>>         # save the attached .config to linux build tree
>>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=arm64 
>>
>> If you fix the issue, kindly add following tag as appropriate
>> Reported-by: kernel test robot <lkp@intel.com>
>>
>> All warnings (new ones prefixed by >>):
>>
>>>> drivers/clocksource/timer-sp804.c:68:12: warning: no previous prototype for function 'sp804_clocksource_and_sched_clock_init' [-Wmissing-prototypes]
>>    int __init sp804_clocksource_and_sched_clock_init(void __iomem *base,
>>               ^
>>    drivers/clocksource/timer-sp804.c:68:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
>>    int __init sp804_clocksource_and_sched_clock_init(void __iomem *base,
>>    ^
>>    static 
>>>> drivers/clocksource/timer-sp804.c:162:12: warning: no previous prototype for function 'sp804_clockevents_init' [-Wmissing-prototypes]
>>    int __init sp804_clockevents_init(void __iomem *base, unsigned int irq,
>>               ^
>>    drivers/clocksource/timer-sp804.c:162:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
>>    int __init sp804_clockevents_init(void __iomem *base, unsigned int irq,
>>    ^
>>    static 
>>    2 warnings generated.
> 
> Hi, Daniel:
>   I forgot adding static for sp804_clockevents_init() and sp804_clocksource_and_sched_clock_init()
> in patch "clocksource: sp804: remove unused sp804_timer_disable() and timer-sp804.h".
>   Have you written a fix? Or I send a fix patch.

I just sent it. If you have already written, please ignore my patch.

> 
>>
>> vim +/sp804_clocksource_and_sched_clock_init +68 drivers/clocksource/timer-sp804.c
>>
>>     67	
>>   > 68	int __init sp804_clocksource_and_sched_clock_init(void __iomem *base,
>>     69							  const char *name,
>>     70							  struct clk *clk,
>>     71							  int use_sched_clock)
>>     72	{
>>     73		long rate;
>>     74	
>>     75		rate = sp804_get_clock_rate(clk, name);
>>     76		if (rate < 0)
>>     77			return -EINVAL;
>>     78	
>>     79		/* setup timer 0 as free-running clocksource */
>>     80		writel(0, base + TIMER_CTRL);
>>     81		writel(0xffffffff, base + TIMER_LOAD);
>>     82		writel(0xffffffff, base + TIMER_VALUE);
>>     83		writel(TIMER_CTRL_32BIT | TIMER_CTRL_ENABLE | TIMER_CTRL_PERIODIC,
>>     84			base + TIMER_CTRL);
>>     85	
>>     86		clocksource_mmio_init(base + TIMER_VALUE, name,
>>     87			rate, 200, 32, clocksource_mmio_readl_down);
>>     88	
>>     89		if (use_sched_clock) {
>>     90			sched_clock_base = base;
>>     91			sched_clock_register(sp804_read, 32, rate);
>>     92		}
>>     93	
>>     94		return 0;
>>     95	}
>>     96	
>>     97	
>>     98	static void __iomem *clkevt_base;
>>     99	static unsigned long clkevt_reload;
>>    100	
>>    101	/*
>>    102	 * IRQ handler for the timer
>>    103	 */
>>    104	static irqreturn_t sp804_timer_interrupt(int irq, void *dev_id)
>>    105	{
>>    106		struct clock_event_device *evt = dev_id;
>>    107	
>>    108		/* clear the interrupt */
>>    109		writel(1, clkevt_base + TIMER_INTCLR);
>>    110	
>>    111		evt->event_handler(evt);
>>    112	
>>    113		return IRQ_HANDLED;
>>    114	}
>>    115	
>>    116	static inline void timer_shutdown(struct clock_event_device *evt)
>>    117	{
>>    118		writel(0, clkevt_base + TIMER_CTRL);
>>    119	}
>>    120	
>>    121	static int sp804_shutdown(struct clock_event_device *evt)
>>    122	{
>>    123		timer_shutdown(evt);
>>    124		return 0;
>>    125	}
>>    126	
>>    127	static int sp804_set_periodic(struct clock_event_device *evt)
>>    128	{
>>    129		unsigned long ctrl = TIMER_CTRL_32BIT | TIMER_CTRL_IE |
>>    130				     TIMER_CTRL_PERIODIC | TIMER_CTRL_ENABLE;
>>    131	
>>    132		timer_shutdown(evt);
>>    133		writel(clkevt_reload, clkevt_base + TIMER_LOAD);
>>    134		writel(ctrl, clkevt_base + TIMER_CTRL);
>>    135		return 0;
>>    136	}
>>    137	
>>    138	static int sp804_set_next_event(unsigned long next,
>>    139		struct clock_event_device *evt)
>>    140	{
>>    141		unsigned long ctrl = TIMER_CTRL_32BIT | TIMER_CTRL_IE |
>>    142				     TIMER_CTRL_ONESHOT | TIMER_CTRL_ENABLE;
>>    143	
>>    144		writel(next, clkevt_base + TIMER_LOAD);
>>    145		writel(ctrl, clkevt_base + TIMER_CTRL);
>>    146	
>>    147		return 0;
>>    148	}
>>    149	
>>    150	static struct clock_event_device sp804_clockevent = {
>>    151		.features		= CLOCK_EVT_FEAT_PERIODIC |
>>    152					  CLOCK_EVT_FEAT_ONESHOT |
>>    153					  CLOCK_EVT_FEAT_DYNIRQ,
>>    154		.set_state_shutdown	= sp804_shutdown,
>>    155		.set_state_periodic	= sp804_set_periodic,
>>    156		.set_state_oneshot	= sp804_shutdown,
>>    157		.tick_resume		= sp804_shutdown,
>>    158		.set_next_event		= sp804_set_next_event,
>>    159		.rating			= 300,
>>    160	};
>>    161	
>>  > 162	int __init sp804_clockevents_init(void __iomem *base, unsigned int irq,
>>    163					  struct clk *clk, const char *name)
>>    164	{
>>    165		struct clock_event_device *evt = &sp804_clockevent;
>>    166		long rate;
>>    167	
>>    168		rate = sp804_get_clock_rate(clk, name);
>>    169		if (rate < 0)
>>    170			return -EINVAL;
>>    171	
>>    172		clkevt_base = base;
>>    173		clkevt_reload = DIV_ROUND_CLOSEST(rate, HZ);
>>    174		evt->name = name;
>>    175		evt->irq = irq;
>>    176		evt->cpumask = cpu_possible_mask;
>>    177	
>>    178		writel(0, base + TIMER_CTRL);
>>    179	
>>    180		if (request_irq(irq, sp804_timer_interrupt, IRQF_TIMER | IRQF_IRQPOLL,
>>    181				"timer", &sp804_clockevent))
>>    182			pr_err("%s: request_irq() failed\n", "timer");
>>    183		clockevents_config_and_register(evt, rate, 0xf, 0xffffffff);
>>    184	
>>    185		return 0;
>>    186	}
>>    187	
>>
>> ---
>> 0-DAY CI Kernel Test Service, Intel Corporation
>> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
>>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/a1ffce62-a33c-9b72-0347-29f8301d2193%40huawei.com.
