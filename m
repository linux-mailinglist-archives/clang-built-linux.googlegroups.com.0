Return-Path: <clang-built-linux+bncBCRIZROPVQPBB2NNYTWQKGQEFH73PFY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13e.google.com (mail-il1-x13e.google.com [IPv6:2607:f8b0:4864:20::13e])
	by mail.lfdr.de (Postfix) with ESMTPS id B0633E28AD
	for <lists+clang-built-linux@lfdr.de>; Thu, 24 Oct 2019 05:13:46 +0200 (CEST)
Received: by mail-il1-x13e.google.com with SMTP id f17sf14282769ilc.8
        for <lists+clang-built-linux@lfdr.de>; Wed, 23 Oct 2019 20:13:46 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1571886825; cv=pass;
        d=google.com; s=arc-20160816;
        b=XqfQfh9zp0FcQqPS9lV3vh+OalzjTczQLZNRyG88arzrE+1SNpACxg4rG31lH4GGv0
         ZDvtvapQRfGssjk3yxs5Q4IGZmTWbiqhityIpHpkyY2F19Zyyj5FFTFmRuu1GZNfHnBm
         IkQIFM2g3ZFwLdY7EqlK+w7tYVhcp0+OKzEo368Oxw4SXo7fg12byUH4PzXPbFyH+HAO
         tUIAgg52zSxMOcFjE68c59VGWR7Bi3sbi+HKnWAMp1lJmTh7bjjsxYa1SbgTtxOyGYWI
         CVR2oZOVwZXqOJWHqm1Z1QWYPayGLTXft+I6LR2NtgNDe37jirCjiQ5lqEcccocClHAW
         sbGQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=hchMouf97C7uwEwO+jq1wYS9x/igAH6EeqzMTF5j9Lg=;
        b=ASkpgr2GMCy2Ke0PCfX8ClRt79lHrQ3bozVjt/w6/sBY9oPx0NSNt+atEnEVg21Vw2
         Q2o0XZsh4R8o5/QHkMIJLmTX+oAWVa0V5taYYFw8ymA01yVek2K20bPHt9jMwzZ1iEay
         51P1lwu09xW1SezdtK6IK+3Cwh2WNMaaKqClHgH3yUjucneqY5q2GjRm7BQDRU4RckGh
         OjO9iwj0SI7zEOh6AmXQysYp6lrLK9SWMzU81DUL3YUzbkRDF3XcOHVqawCknVV6Fv3a
         cB2rgI5Tn5vG7DbNB7Vg6UX3LbOgFIqvHgtwmqvhn09Mykey1aGI4RMI7/huH9hmz8M/
         8sVw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=sKQkrmUm;
       spf=pass (google.com: domain of viresh.kumar@linaro.org designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=viresh.kumar@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=hchMouf97C7uwEwO+jq1wYS9x/igAH6EeqzMTF5j9Lg=;
        b=iN//AYSP1RGP4SYQy1frVovxs9kmtaK+hGANLOTYt3tHLNX7N3kay6b2J0joqtQy05
         MbjvejIqgGkNJEusSdG5P8Sc8zc+eFETL5ievaqkQBdaBWfcqkgrV7xtU1vA+I7as9hQ
         AHBUpDeFDjtBzSNgnHj6NF0br48YRwG8WDb86SZB/Fm6PTy24vIICDQQuhtUqiicfqiU
         03p1eHhI54zldY08BQaIfvlV+fauYSxvbkRjPcbQb36YAYVmWHqL2dKRgMykrGwlo11g
         aYrjOQ1cZySmSLatpN3PCs3x9/8pIodDwmfQCPStlQJCcJ/6CM3//8f0wN3G/Sk5nDwk
         7KHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=hchMouf97C7uwEwO+jq1wYS9x/igAH6EeqzMTF5j9Lg=;
        b=ZCNeaQgfk8+oQTlapiklnBl4eZUqdkxo5lbZlmtWlaudbmCqSr/WKw0noCt1Isighp
         eE+7dsN5ENbaHqf6uD2VLUoeiVhxEHJEvfUJS6EbMK6VvehHSGcry8eavN/K0pmyo1Yx
         qkRrQvFIjW7D7czWsqtYbI2+LWTwyVRqOhtyhngHFzG/fdq4tesGFdfKQGURHlihmA6v
         1LckWLxWz0/LF2wwrxK1fQrLRC1aXQ9ELuk4VGluShqwINwvcdXv5hd9jScvZgdy1Ty8
         mJHmxYAnd/NVgDoZ7VFsYpbohG0caEzu+DvEMU4czCglEcc559MnkqImk0Sewys/mkEO
         XARg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWS/iSEyrmVcyNM0WDqY9mzci6GsqhlMo9f+Im93Uk7cA20fc4m
	9sSwhEmc+BHKvqBmi8kdC34=
X-Google-Smtp-Source: APXvYqypu5tE++k7BfRaCTUocSi5XcQmXks+R6KNEC1aC/1E2397RN97/Rkg0vN3mRBGq/8CK+T4/Q==
X-Received: by 2002:a5e:8f42:: with SMTP id x2mr6747612iop.243.1571886825276;
        Wed, 23 Oct 2019 20:13:45 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:9719:: with SMTP id h25ls731101iol.16.gmail; Wed, 23 Oct
 2019 20:13:44 -0700 (PDT)
X-Received: by 2002:a6b:ec11:: with SMTP id c17mr7126321ioh.114.1571886824737;
        Wed, 23 Oct 2019 20:13:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571886824; cv=none;
        d=google.com; s=arc-20160816;
        b=uecckQj0E1dc1tWHXRxcK05zgi9h4I6CO/TR/KPIS+h6ZjdsLFsFk43+xMP57PIM4E
         kVxinFc6rRfJKcG540fzp59EGj60/1uSBBgQwNxOnYmEF8/+OmmyLeneUQqBPS6+BvPr
         od/rph6ORZaMjtrN299gQSMRWx2Bgy7vaG+CfiA5PRUdXmCzlSLfC5PwTNZM/HoxcG2g
         KRVqIAiipMkkAz70voCCyadNq7+7c9Oq9ekfJviOzGfk0hT/aZ9mvffS6w8treAilkS9
         6PcP5Gu0ntPZ9vyblHrCkPKTT16Pcm3MruBxGcRf57amGUuYp+wCSUazyns5wtDxrT1N
         6UHA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=/FvSWUTwb3VLZA0Xf0z7RcCEXwmqXYbk21bOLI6Ind8=;
        b=Dp7sqnqwyYvHDVg3HB4p7L5IXcO4ElnRssXDRzNPRF7n4I2mkaLe0xvMw6oZu7mqlZ
         ZN8lbsYOgf+HQi5FTahf5Ek1RD+7QSvCt+J3+FbzU7YuT9kkQbnFSNz77tFmMnVVZhNL
         LJ3YkbBf4UwTN7k0f1uYV7FAf00f9KKur8nVrvoAyEpnaWNozLm0VrAZcLT8L4txO2a2
         Br962XrRNjJ823gz2sqX9p6Ba9uFOe+p39aKDjxvYGRhidACX8542Sw4beh5rcoYVH2g
         jM8QFcnnCv7DX5LQ35vK4dx0+rx4P7IcWNgmha1uHNrEWHFBpYdh/k/d2q4Y/s9aOqJT
         Qs5w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=sKQkrmUm;
       spf=pass (google.com: domain of viresh.kumar@linaro.org designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=viresh.kumar@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-pf1-x444.google.com (mail-pf1-x444.google.com. [2607:f8b0:4864:20::444])
        by gmr-mx.google.com with ESMTPS id 75si526570ilw.3.2019.10.23.20.13.44
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 23 Oct 2019 20:13:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of viresh.kumar@linaro.org designates 2607:f8b0:4864:20::444 as permitted sender) client-ip=2607:f8b0:4864:20::444;
Received: by mail-pf1-x444.google.com with SMTP id c184so4661105pfb.0
        for <clang-built-linux@googlegroups.com>; Wed, 23 Oct 2019 20:13:44 -0700 (PDT)
X-Received: by 2002:a63:1b59:: with SMTP id b25mr13990872pgm.267.1571886823938;
        Wed, 23 Oct 2019 20:13:43 -0700 (PDT)
Received: from localhost ([122.172.151.112])
        by smtp.gmail.com with ESMTPSA id x12sm23593463pfm.130.2019.10.23.20.13.42
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 23 Oct 2019 20:13:43 -0700 (PDT)
Date: Thu, 24 Oct 2019 08:43:39 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Kukjin Kim <kgene@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>,
	"Rafael J. Wysocki" <rjw@rjwysocki.net>,
	linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org, linux-pm@vger.kernel.org,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH] cpufreq: s3c64xx: Remove pointless NULL check in
 s3c64xx_cpufreq_driver_init
Message-ID: <20191024031339.qaoh3p5efmaawslq@vireshk-i7>
References: <20191023000906.14374-1-natechancellor@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20191023000906.14374-1-natechancellor@gmail.com>
User-Agent: NeoMutt/20180716-391-311a52
X-Original-Sender: viresh.kumar@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=sKQkrmUm;       spf=pass
 (google.com: domain of viresh.kumar@linaro.org designates 2607:f8b0:4864:20::444
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
> Link: https://github.com/ClangBuiltLinux/linux/issues/748
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
> ---
>  drivers/cpufreq/s3c64xx-cpufreq.c | 7 -------
>  1 file changed, 7 deletions(-)

Applied. Thanks.

-- 
viresh

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191024031339.qaoh3p5efmaawslq%40vireshk-i7.
