Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBPELYLWQKGQETPVS3WA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x540.google.com (mail-pg1-x540.google.com [IPv6:2607:f8b0:4864:20::540])
	by mail.lfdr.de (Postfix) with ESMTPS id 86C48E2115
	for <lists+clang-built-linux@lfdr.de>; Wed, 23 Oct 2019 18:54:22 +0200 (CEST)
Received: by mail-pg1-x540.google.com with SMTP id r25sf15513735pga.20
        for <lists+clang-built-linux@lfdr.de>; Wed, 23 Oct 2019 09:54:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1571849661; cv=pass;
        d=google.com; s=arc-20160816;
        b=qjF6x7C2l2HvuIANd5jVKwq5OXbbz/XY16lTb/ctQmX6+FzkBlWo8bYNT+mXfkX8b1
         om0L7lFzzwjj/rfcSds+xiMFdLDT2GUp3gP8ukvP/UaSX8y/g0bsdnxhlaGyuk7Z4kVc
         a2EyVn3NLxRFxzesvscTxk27rlsZx0FgMR2EVuEJjUmnEVNGpRqwhZ0PyL/huHI3PDVZ
         teUofLkvRCSNdjUvQVs6chYAgtmYKcCIhQQ1TuZYFJXygyd3fVO7t2PSlTjeV/Tni6hP
         5+YJ3LmzJsAz9E9mqNUITZ7uac4RjHsZ6i0Bs61DWSsISUMSj33qWK+LCgkttaIu3AVK
         PQ0A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=8INyY3zoNdedK4VqrITc/2GuqSH6dzF0Ho5hfn+hAp8=;
        b=fFB2W0QQ/tZC1Ti4bNljmtWGdfafbFQeAI3uAACYLjDZUjAiD3dWUdRNpui9gb5DQD
         lodpz0wylfkmdYo+AQZK2WYUcS35tyXL/+mJN0sLrvgLU29YDfgGARqsb39ydeFbnWn3
         MUuOnDrbQWWgByaofunDCKGwAlLTIhX8aUJC0qq5gQIQLImOFV3jvxCie3LWnw7tRMub
         +VUDkmntmIZ95IKqqmj0qjqrHL//4nsU4CQDtiuCLaIERLXxJDEyHrq98jIVKlgh+zze
         DoJ+CHCVg11UvboF04P+BnTw4eWY+1i6N86dAXeA25Zgkxzna6vN+2MEGHe71fHeNniV
         SmIQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=XwqTEbh8;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::244 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=8INyY3zoNdedK4VqrITc/2GuqSH6dzF0Ho5hfn+hAp8=;
        b=DJNZMKCcxjlKS1jyCXeRx/yrY/bU/3zqZ/1LdtkFqmFtevWEQf61Y/zRj+7T8/B8ff
         HrTJYcXum4P8LlhnlHfm/hpy0xYJe5Pb0Sw7ax21rceQsBsb3lp/w+xyPYkLSamO0vEl
         ajACf62oNUrPp4OyFoC6zvzzSeB5fwDZ7JbdawoeFDWXxE/F9Uj7286VOzVZl4soHmyy
         IzBBj9jUHyDjMDrzy68xxeTxUoVON39ufk7aQYisRQYNgS1nU0E/4j5voaq/XFFnQ6Ue
         SL1A/Q9s9OZDzU8GSQZRTx5RTchtHLWRkaiVjqj0O2XJvgL48Kdg+GlOyqwKN+jwRlra
         C3QA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=8INyY3zoNdedK4VqrITc/2GuqSH6dzF0Ho5hfn+hAp8=;
        b=knY/iRvk8cC002KZxn3PSeerH/woWY9wOM0BiGf/YMemlTXGt+WjUOitn4CZVLYMzM
         ENiMBPlLsShTInf/1lA7Dq82cR3yu9KdTuz42KiSY37sAjyjZHy6mG+mDW1uncEx1uI6
         wR37T9yMl7ENr35HaZ6JUkJFqCzivAnTcPkxcQqqtPhlXw/409g7Hlqqepd9LXi9IpO3
         3JlIZ0WQXmAM+4MR5uaalo4jjKu/lOC35+lTqc83S24uYZgKjUQN4kR6SGm8/3ymckRF
         /uaV2G3Fi9dSDVfW/wW+62l/o021f+5t+zsClFIAsXzECs6uQRH2mCNz57efg2oax8d/
         TgJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=8INyY3zoNdedK4VqrITc/2GuqSH6dzF0Ho5hfn+hAp8=;
        b=qlqT5AkKVsxg9jVkkEhh+L2dKb+Ss3fsgmQm1Y28r7UpTsRw0XeZ3mpG22bgMHl2wG
         1LAJHC63/7mQaGAbk4csiSMClhrmFvExdDHlbhdzXSHBkvNQgGPvo+6cXZPVMGEf2d8U
         0H7mukYRKLbwnFpRyuA6jkIGm8jz90Ik10U90JHoVbMFRc9eq9omfLqPp4MdJx2L2x8K
         VpMvxorElYhnhA2fkZPtDle831XQgzMJVbp9uM6h9Zk2041gBDm2FYNkGdbVpJQLdmrv
         ZteQKzXWfoeKDo1Ke3xG1jZOPIYBlQF3YrNmMdhM9GwUajGlrYISKZqVy7l3Y8c1nUGt
         HfCA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAW0nUSLi+O13hcKeNh5on7qNWWW3vT13a6Jh1mrPigNCE0N3wbU
	PTdeK7cT081FJPF/avVMnBI=
X-Google-Smtp-Source: APXvYqxGjCutYbNqcjKbP9wGu3l3FJw6yDTTgnzMW3cz49VXoc2tIrV2al5K2Olv3i2u8ZwTIBnDGw==
X-Received: by 2002:a65:5b02:: with SMTP id y2mr11499033pgq.365.1571849660756;
        Wed, 23 Oct 2019 09:54:20 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:7f93:: with SMTP id m19ls1020819pjl.2.gmail; Wed, 23
 Oct 2019 09:54:20 -0700 (PDT)
X-Received: by 2002:a17:90a:234d:: with SMTP id f71mr1204237pje.134.1571849660344;
        Wed, 23 Oct 2019 09:54:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571849660; cv=none;
        d=google.com; s=arc-20160816;
        b=JLV0WZDoWgt8cLxtAmSBhRemLPsFq0Dr+sfP3TiNvKa8BricQnGNV/JnsbElm+nYOW
         9U8biZeeJb1sVI8W4VTIyFcp+MNpKf6djaN7SPv1yeRAqOEhVTwYRC61fFG+mm2GEc3F
         IzltvpB9KuVs42ZdjCcET1ZkDfCcdjBLNH12U3/s2VOUzFSXmylzYjlc8PxZr/E32cTx
         zP0BCn+WLvkHq0YL8Olb2Mpr44Jjh7CNw+aAelfA572DbVXWOiIrB5xyT7nCknS/zHjC
         NqrVypcgYwyTtX1NhXIp6cdxZ87TWztHODd2HnN4e6TDeHb4sQZ+a5lUS8RC8CpR8eIx
         ukUA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=EQ6HtKFRVKwkx70dv6lhY5+sv55++939i+kxJIbYQOk=;
        b=GkwT1XOAju21hn/tE+Mg6udZYuNaXfWMIhQzv+f6jqAoz4ZhFUer9KLvTdT0+C+ptX
         RjImiZ/qBSN7by6raVN/oupKGSlgy8Ru/atm+jpkAdWYcumcmBvs/2Fj8MS8QF6xjiDX
         TN+OcViUVDEVFFYmqBad+5RkypdjN1RL5NWOg1hcHK2Dk3Ni0qsNDOhq4eSFs6ncvPnA
         9bcfI65eFeG1RP31EWWgfi+SwDWrJITs8v/hDrbT5Gu6sPXCDa1gvUeOlJRYmV4IrlSI
         /h+ITSxseXfqx9r2Ee5kxC5ynF6wkquz/LJwFRETWZcHcY4Mr+IVVrjPcOf3fnIqPsNA
         tv0Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=XwqTEbh8;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::244 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-oi1-x244.google.com (mail-oi1-x244.google.com. [2607:f8b0:4864:20::244])
        by gmr-mx.google.com with ESMTPS id x13si968110pll.1.2019.10.23.09.54.20
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 23 Oct 2019 09:54:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::244 as permitted sender) client-ip=2607:f8b0:4864:20::244;
Received: by mail-oi1-x244.google.com with SMTP id i185so17976907oif.9
        for <clang-built-linux@googlegroups.com>; Wed, 23 Oct 2019 09:54:20 -0700 (PDT)
X-Received: by 2002:aca:5007:: with SMTP id e7mr736105oib.123.1571849659358;
        Wed, 23 Oct 2019 09:54:19 -0700 (PDT)
Received: from ubuntu-m2-xlarge-x86 ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id y16sm6186987otg.7.2019.10.23.09.54.18
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 23 Oct 2019 09:54:18 -0700 (PDT)
Date: Wed, 23 Oct 2019 09:54:17 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Mark Brown <broonie@kernel.org>
Cc: Viresh Kumar <viresh.kumar@linaro.org>, Kukjin Kim <kgene@kernel.org>,
	Krzysztof Kozlowski <krzk@kernel.org>,
	"Rafael J. Wysocki" <rjw@rjwysocki.net>,
	linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org, linux-pm@vger.kernel.org,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH] cpufreq: s3c64xx: Remove pointless NULL check in
 s3c64xx_cpufreq_driver_init
Message-ID: <20191023165417.GA15082@ubuntu-m2-xlarge-x86>
References: <20191023000906.14374-1-natechancellor@gmail.com>
 <20191023032302.tu5nkvulo2yoctgr@vireshk-i7>
 <20191023104304.GA5723@sirena.co.uk>
 <20191023162628.GA10997@ubuntu-m2-xlarge-x86>
 <20191023163656.GH5723@sirena.co.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20191023163656.GH5723@sirena.co.uk>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=XwqTEbh8;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::244 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Wed, Oct 23, 2019 at 05:36:56PM +0100, Mark Brown wrote:
> On Wed, Oct 23, 2019 at 09:26:28AM -0700, Nathan Chancellor wrote:
> > On Wed, Oct 23, 2019 at 11:43:04AM +0100, Mark Brown wrote:
> 
> > > The driver should also have supported s3c6400 as well.
> 
> > Kconfig says otherwise, unless I am missing something.
> 
> > config ARM_S3C64XX_CPUFREQ
> >         bool "Samsung S3C64XX"
> >         depends on CPU_S3C6410
> >         default y
> >         help
> >           This adds the CPUFreq driver for Samsung S3C6410 SoC.
> > 
> >           If in doubt, say N.
> 
> Note the XX in the config option.

But what about the depends and the help text?

If I just enable the following config options in multi_v7_defconfig and
remove that depends, the driver will not build because the {dvfs,freq}_table
definitions only get added to the final source file when CONFIG CPU_S3C6410 is
set...

CONFIG_ARCH_MULTI_V6=y
CONFIG_ARCH_S3C64XX=y
CONFIG_MACH_SMDK6400=y

  CC      drivers/cpufreq/s3c64xx-cpufreq.o
../drivers/cpufreq/s3c64xx-cpufreq.c:61:13: error: use of undeclared identifier 's3c64xx_freq_table'
        new_freq = s3c64xx_freq_table[index].frequency;
                   ^
../drivers/cpufreq/s3c64xx-cpufreq.c:62:29: error: use of undeclared identifier 's3c64xx_freq_table'
        dvfs = &s3c64xx_dvfs_table[s3c64xx_freq_table[index].driver_data];
                                   ^
../drivers/cpufreq/s3c64xx-cpufreq.c:62:10: error: use of undeclared identifier 's3c64xx_dvfs_table'
        dvfs = &s3c64xx_dvfs_table[s3c64xx_freq_table[index].driver_data];
                ^
...
14 errors generated.

So maybe it _should_ support s3c6400 but it does not appear to, which
is why there is this clang warning that my patch is trying to address.

If I am missing something critical, please let me know.

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191023165417.GA15082%40ubuntu-m2-xlarge-x86.
