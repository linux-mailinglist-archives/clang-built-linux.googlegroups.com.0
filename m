Return-Path: <clang-built-linux+bncBCRIZROPVQPBBG4PX7WQKGQE54WKPOQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa39.google.com (mail-vk1-xa39.google.com [IPv6:2607:f8b0:4864:20::a39])
	by mail.lfdr.de (Postfix) with ESMTPS id 70A45E1079
	for <lists+clang-built-linux@lfdr.de>; Wed, 23 Oct 2019 05:23:08 +0200 (CEST)
Received: by mail-vk1-xa39.google.com with SMTP id i20sf8496843vkk.21
        for <lists+clang-built-linux@lfdr.de>; Tue, 22 Oct 2019 20:23:08 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1571800987; cv=pass;
        d=google.com; s=arc-20160816;
        b=aF5++HEo3q29BGkvHYvb3Klz0Q3mV14sKWlgQ0lJ1Ag1iwBgOmxkADy9FYgFXHv55+
         s42v0t6d921X9o/P0YhFsUNhW4OTKH/2JuInWZu15vIQbuev03nU8S6MXTiX7nZfi5fV
         7n88eCxVBFV+76KejZ/vzJtYzDYgV5ynZmt/ZjFmxmnsXmNXK/OMmf7M8c9ckupL7vq4
         VXVYIlPzQIrzLAcPq2w38ctVoaoJuPicPlGGMfj7bGFuN1r6O8x+Uxd6c4qtBIahpRfD
         x4zizwOzxoZ3uw+HjOOgXet7KK8jkuG6ZpB+WUgujtAUGGE/P05pP3nY8gA3upyKmYqh
         BzXw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=Ywe3SrzHHmgpNh7IF9fFy8J5AZAaLPV4EgIp6YITUo0=;
        b=0/GPkvpFeyEyfW3NnDN1GEGO14iqHBnNSBPHJegSMBuJuizjdSpwlSj/GkAp+plj35
         DVpBHGQ+OZBs9i1e8uxubQovDc3MY3zASCuwNkBR6cd8bkDvws087AESa/NKAbiC6VP8
         8QwFLZ/IrI24D35kFS3Mk3fVLxfjQCPfCUVWv1/klr8m8eWxEHHJowcjwqwz4q2HnWEG
         uaVSTMIJ2EdeKOYGtYOkh+yZPWA+Vd6MBniRKFNxJQjnV29WxzFBjiw+aVkWoVOkWdhJ
         oFdIf+4nswUk9idAHKhGCsQKlKTaMVNnbnvUxnT863E4LELLwDw7yEIu+bXuF6FsSW3Y
         ARJQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=LXsEOBqK;
       spf=pass (google.com: domain of viresh.kumar@linaro.org designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=viresh.kumar@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Ywe3SrzHHmgpNh7IF9fFy8J5AZAaLPV4EgIp6YITUo0=;
        b=to+e8RYpGBf/qmcATKfcdzObnjOx4jflLsxTUXdDgT3M/5t19EHewk2MvZhF5dOhyA
         c9eYavQ5078gNppJDlgWJOXn4Op+lp1/iIJWoZ99GNZ2zOERi3njBi2YfDlu6AbowQK0
         aV/S5eF6McXlm2tiv1PwRG9uYpj+D3Kor1B1mu9BrnU/4sezcM851W74FjXwhdq86quo
         NhCuLQ9pIPUqn8FWXlegmeg9OqBxjzuYdJf4RCklDEvk6WJpAYiI70DXISejZcuQTEX9
         +OYJMU2r9BYTXKLsG6GVb91Uwekk9pjrMifUHgezEIX7f2B9hc027ZhVqER2ZtTXz8c0
         4wbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Ywe3SrzHHmgpNh7IF9fFy8J5AZAaLPV4EgIp6YITUo0=;
        b=oaE119IdKa/cj7NzOesmoh/b2t0+cYImg57ZjiisdtKJYTwD07xPZPZwxIOyJ0apV8
         w3e5u2ZNWel46l7JGnAC8cKNSvFJUb6MXxV3CA/a2C9+4cRRsT2Z6a0N+u5dhjhfzbv/
         U1vR7SWF21bABTxjQ6hauPynrDsEMjtlQGwyDaFyZz9k2A8pb49bOg3ucz556pBNh5s6
         E7trru9+47blhrSEbOrhsRxBOpTZzBQRMQe6/XEibaAppSy7XtDIfRU6jqwa/FVB8X6Z
         VXiCOTyVyb6i1UH8lotLRSm/BpcDji9i8/FvFzNelcf532fJtJTLkCwZ8qipb/xNQRNu
         wPog==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXHkZQefZCSezKNrmEJpvUowhgDsR23JR2pF5iqk5CX6g3qUOUh
	A8w5g7JX70oU5f7PEwFWi84=
X-Google-Smtp-Source: APXvYqzXdACxnRUghM85IgBjLYpPbpVzpTIhVnt0PPtDamKmn2UDWNtGhZxB5Kg1pKrqHCG+5YLXtg==
X-Received: by 2002:a67:f288:: with SMTP id m8mr4117830vsk.223.1571800987227;
        Tue, 22 Oct 2019 20:23:07 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:c883:: with SMTP id v3ls103199vsk.2.gmail; Tue, 22 Oct
 2019 20:23:06 -0700 (PDT)
X-Received: by 2002:a67:1643:: with SMTP id 64mr4191503vsw.62.1571800986806;
        Tue, 22 Oct 2019 20:23:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571800986; cv=none;
        d=google.com; s=arc-20160816;
        b=FBIyp8HaKJ/5WaG29wlryQnYe7xr1aJXPQabkHXxMafRrM/Ogr9hrWjqUJ7bZEeWQG
         dTvmJJwIMpCSy3yTm3rPQxzLPogscNRwl94RjVvDHZ6hwi8Jm83yUPzR7se4tvG/LcBM
         NE+8qTRU+9MWca0JUd0+MOhTOFMj2bxWnZARInrcyenZHqsU6DjkXdf5r6C1bdg8hXAz
         3dWrESpwvpxwQcYOwfvZvzxjCidiK/cXgvOa9M1sOeOxkJohuOV/WDhETuU2S9mqaHHf
         fTbiU2xMVFCsBUFMOPiAW67nHvMENmyL2wvuB9h3E6q5TIori8wCMEhII9sUE4lpuN5Q
         WuuQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=vG1wlSoVjAH3TslkWdryreWfIFyS6PFtkukPqp6iu6k=;
        b=F4MXg7nwMMMhW/5Ac7w0un9OJSOzGDACbXZQZJ63vt8u1wtlwtHIRyYc7Gul6JIaYZ
         uz/zCOWCG6aXONrSlzCsLguaVEUjmbSvrBvep3+bY+1zOI8v/xgunmO2OGX+sdzUj+2z
         UFBj4kfVQQEkxvJRudunNkfjrrbm1xJ7/ij+5Z3wnEXFGRXCYqupVoD+Zzknjdr8uE8V
         RMrHT3N6psR0F/9xl35MMvDwhtVHbnshwUDP2n/Hr18GRhOR63fQWT8KHUkWm1pvZuW+
         ng/1Xj6p8n5efYg74OKlhyQxZbjSkuAvvvF78j9YlE4i8NUSM8qVcI2FmnQ/KO+tOd0m
         /1VA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=LXsEOBqK;
       spf=pass (google.com: domain of viresh.kumar@linaro.org designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=viresh.kumar@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com. [2607:f8b0:4864:20::544])
        by gmr-mx.google.com with ESMTPS id y14si976739vsj.2.2019.10.22.20.23.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 22 Oct 2019 20:23:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of viresh.kumar@linaro.org designates 2607:f8b0:4864:20::544 as permitted sender) client-ip=2607:f8b0:4864:20::544;
Received: by mail-pg1-x544.google.com with SMTP id l24so6313443pgh.10
        for <clang-built-linux@googlegroups.com>; Tue, 22 Oct 2019 20:23:06 -0700 (PDT)
X-Received: by 2002:a17:90a:ac12:: with SMTP id o18mr8782943pjq.93.1571800985488;
        Tue, 22 Oct 2019 20:23:05 -0700 (PDT)
Received: from localhost ([122.172.151.112])
        by smtp.gmail.com with ESMTPSA id f15sm19700257pfd.141.2019.10.22.20.23.04
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 22 Oct 2019 20:23:04 -0700 (PDT)
Date: Wed, 23 Oct 2019 08:53:02 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Nathan Chancellor <natechancellor@gmail.com>, broonie@kernel.org
Cc: Kukjin Kim <kgene@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>,
	"Rafael J. Wysocki" <rjw@rjwysocki.net>,
	linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org, linux-pm@vger.kernel.org,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH] cpufreq: s3c64xx: Remove pointless NULL check in
 s3c64xx_cpufreq_driver_init
Message-ID: <20191023032302.tu5nkvulo2yoctgr@vireshk-i7>
References: <20191023000906.14374-1-natechancellor@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20191023000906.14374-1-natechancellor@gmail.com>
User-Agent: NeoMutt/20180716-391-311a52
X-Original-Sender: viresh.kumar@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=LXsEOBqK;       spf=pass
 (google.com: domain of viresh.kumar@linaro.org designates 2607:f8b0:4864:20::544
 as permitted sender) smtp.mailfrom=viresh.kumar@linaro.org;       dmarc=pass
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

On 22-10-19, 17:09, Nathan Chancellor wrote:
> When building with Clang + -Wtautological-pointer-compare:
> 
> drivers/cpufreq/s3c64xx-cpufreq.c:152:6: warning: comparison of array
> 's3c64xx_freq_table' equal to a null pointer is always false
> [-Wtautological-pointer-compare]
>         if (s3c64xx_freq_table == NULL) {
>             ^~~~~~~~~~~~~~~~~~    ~~~~
> 1 warning generated.
> 
> The definition of s3c64xx_freq_table is surrounded by an ifdef
> directive for CONFIG_CPU_S3C6410, which is always true for this driver
> because it depends on it in drivers/cpufreq/Kconfig.arm (and if it
> weren't, there would be a build error because s3c64xx_freq_table would
> not be a defined symbol).
> 
> Resolve this warning by removing the unnecessary NULL check because it
> is always false as Clang notes. While we are at it, remove the
> unnecessary ifdef conditional because it is always true.
> 
> Fixes: b3748ddd8056 ("[ARM] S3C64XX: Initial support for DVFS")

+broonie, who wrote this patch to see his views on why he kept it like
this.

> Link: https://github.com/ClangBuiltLinux/linux/issues/748
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
> ---
>  drivers/cpufreq/s3c64xx-cpufreq.c | 7 -------
>  1 file changed, 7 deletions(-)
> 
> diff --git a/drivers/cpufreq/s3c64xx-cpufreq.c b/drivers/cpufreq/s3c64xx-cpufreq.c
> index af0c00dabb22..c6bdfc308e99 100644
> --- a/drivers/cpufreq/s3c64xx-cpufreq.c
> +++ b/drivers/cpufreq/s3c64xx-cpufreq.c
> @@ -19,7 +19,6 @@
>  static struct regulator *vddarm;
>  static unsigned long regulator_latency;
>  
> -#ifdef CONFIG_CPU_S3C6410
>  struct s3c64xx_dvfs {
>  	unsigned int vddarm_min;
>  	unsigned int vddarm_max;
> @@ -48,7 +47,6 @@ static struct cpufreq_frequency_table s3c64xx_freq_table[] = {
>  	{ 0, 4, 800000 },
>  	{ 0, 0, CPUFREQ_TABLE_END },
>  };
> -#endif
>  
>  static int s3c64xx_cpufreq_set_target(struct cpufreq_policy *policy,
>  				      unsigned int index)
> @@ -149,11 +147,6 @@ static int s3c64xx_cpufreq_driver_init(struct cpufreq_policy *policy)
>  	if (policy->cpu != 0)
>  		return -EINVAL;
>  
> -	if (s3c64xx_freq_table == NULL) {
> -		pr_err("No frequency information for this CPU\n");
> -		return -ENODEV;
> -	}
> -
>  	policy->clk = clk_get(NULL, "armclk");
>  	if (IS_ERR(policy->clk)) {
>  		pr_err("Unable to obtain ARMCLK: %ld\n",
> -- 
> 2.23.0

-- 
viresh

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191023032302.tu5nkvulo2yoctgr%40vireshk-i7.
