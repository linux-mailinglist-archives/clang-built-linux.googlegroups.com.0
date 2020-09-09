Return-Path: <clang-built-linux+bncBCRIZROPVQPBB5WU4P5AKGQEWGI6N3Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x839.google.com (mail-qt1-x839.google.com [IPv6:2607:f8b0:4864:20::839])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FD9E262FF1
	for <lists+clang-built-linux@lfdr.de>; Wed,  9 Sep 2020 16:45:11 +0200 (CEST)
Received: by mail-qt1-x839.google.com with SMTP id 7sf1901597qtp.18
        for <lists+clang-built-linux@lfdr.de>; Wed, 09 Sep 2020 07:45:11 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1599662710; cv=pass;
        d=google.com; s=arc-20160816;
        b=jYfxOhpL+NAnt1ZtoRrBYIs3fzSxftxiftY8OagkkeRJpeUFqAUei2VsI/MvxWYUDw
         fxmus+fma8ztn5xVyp6RR36t2ufrycjeuI7ZwFSOSZDRYQ4yuHxs+HbzSZSR42IMNrGe
         m30OkstfZsH3VKQ2wcZWyffoFbze0dwLjYyWZoaJOW8fRyXSogSj/JqVLjpmEkyh5Bc/
         cWv9svYQjGomCvfsC2Sj0xoZ/FXKpBIuuotpXn67myy3KW7FjZRHQRfztDMexf82mit4
         OY2I1q6UwHguWWxK+8AfnsYgcEcmkDMX9mlnckmYtZ5WFs3SWNnB53ouDSLJDhQE298G
         Tifg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=L78yVen0G45ksVCyUKqdGIh3ZZ9xhAWuym0olZwoZO8=;
        b=Yty67hvf+6XZiYt7hLfs7osKqL8hTTblCP7Jmt34Bi0+H9jhgTRxNd2Mh0WI49aQHq
         fV+lDE5YZqKIGidzI64rMkFwnB8UVwzYEUEVQb9yjCX+uinZzl9s37+Rw025Fvhxbtkq
         lMDKrF1uSLikQFwf7TAuG7zGhwOhN3q4dB5z/7w8ufjigag7HzorzYaK7+JvlNBntcA4
         2igy5CxCOiZQDxLkJITXNCPsWPht0ewJ/ctEJ25RSXWNLegSR5lBtNWRSB+UqOQ8sPNw
         Je+YOcRhtQKfhuw7brN6AyQlW8AJmT7zZAZQf3PwqHPTVK9Kzq1bCvFb0HRHgBHgKVVP
         ibhw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=FtkCvfeG;
       spf=pass (google.com: domain of viresh.kumar@linaro.org designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=viresh.kumar@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=L78yVen0G45ksVCyUKqdGIh3ZZ9xhAWuym0olZwoZO8=;
        b=bhY1PcFFysvHLRP6A1pa2/jbZR6rIDl6hH+53aCNOmrYEB7WsmsCb6qZdaxnLdLkW/
         JfvdlsKGJ1NvhpOss3BXZ2aiUfcpamkvmTHkRS9Z/NQQTsfNRYtrLm13xhvIY70bzmdw
         CoIC36wLvXZB3oeFj1ryajsgz76hnTMbXtTEoWc68voD0bU1+6DlBW7Y/xKQqseogtru
         m68NtlCN6HLS/rehFWxxWo0ZonK/IHX30Sm6sVvBTY9/F1WxvjfFoSKKQb7l+6Mi1ZNj
         M0XvlGt9jUQ9wQ8u6ymqf2dwBQ2AWiY4XRIxvioU2SRANIqvLAwcogcB7z/zMxfZMKF6
         mI/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=L78yVen0G45ksVCyUKqdGIh3ZZ9xhAWuym0olZwoZO8=;
        b=ra/BrUHPnL5MHJLvu8uddkknRta32dCE/0reXlgcqYm/zNRYniHm/oDqU5/cBjmQ1s
         LyqQ1DwAEFCV57y++GQ2C/pAl4gNnS+qzKBkBKUEN/68E6upX53V5a+lx0iBymOuCJ9X
         9AptJGDfd1Pb3j9dqjDAg/zSC3Bvc+KgCz/EY0o2l+tzOP1L2BSTzTjOw5AwC0fI7c6l
         JtKclqZDn084orrD2+oktum4nnoeQtiS9bPsn9NMf7O7BUaP8CQkGALX63bg5TVFsPzM
         +3OkHI3LA4gAGNPGL5nAGgqIiNxI9Pr0mfxHEbxpin3Gar1ygiu9T1Lm12dgQD3eCicW
         EKaA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533HL6c2heJgqV+sQ1sH6aJufSp4KnTRBAv2N4+/HTwJ5xT+Zlqb
	RiR4q/smkZY6YEwp0Idzrrk=
X-Google-Smtp-Source: ABdhPJyUm9KbvE/SmbZVB0i+CjIVFP7uUwarJWMFAY49hygMLb2TQKhC4L7BPRVdhpfKwO8LG2wCtQ==
X-Received: by 2002:a05:6214:292:: with SMTP id l18mr4559407qvv.5.1599662710697;
        Wed, 09 Sep 2020 07:45:10 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ae9:c20d:: with SMTP id j13ls1435092qkg.2.gmail; Wed, 09 Sep
 2020 07:45:10 -0700 (PDT)
X-Received: by 2002:a37:381:: with SMTP id 123mr3545236qkd.320.1599662710182;
        Wed, 09 Sep 2020 07:45:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1599662710; cv=none;
        d=google.com; s=arc-20160816;
        b=KmUH7dJlLkD98BiLSJMtL8grHuECiXsmYR0MEHQauX2OUmFte34Uwm5alWqCeBlemO
         YeRqcNzFtVxVycGOmGusCpRqJbUfdaSfDdmAkbcuDeaZ2cMqcWsmZ0r79AN10Q0p+BTX
         7uNsKC+dPK5yJmEVXGRJU9tEJGQD7pjZUFvYK4yd1FB8njGhhoMGd3n1sHnRtDJJqSAF
         eiu10isUBZJoLy5s72tKZl/42krM6I8fJz4H8aYUGjJUDmA41u32AGxyvvEAaDvTMfA1
         7SNIysqSycHYHFZFWLUpml2U4oSDlMF/2tKOILDeIhRHcJQNDHg/8/KSS1F1hkWBflwG
         l9DA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=1eIMoF4/mm2KJ73I2SXL/rSII7dUn1phVnO8Oz+7tkw=;
        b=pchQ8Wv0o5yIURuvNzoJq6BGoMWy95fwXVJVf+cAibM+j0DxSxfN2IinB6RN6Aqsx2
         2yXLYxBW5QxnRIdMfrw/dvie7SzZTH+R3P9TfW/xOiJEqaRfP4AcriIPxwA4kMCmTc60
         Lo8fXpM1yABWzY6kOBO6whMHf0WmLsHLBuE/wqvBfgTXImnjp4kBtD0sjHpnqo4FIPfu
         wRlJefoFnYaeFqTTx83cHWSG4aU6GBje1wS1+/7z9u00+Tm2AYiez1JDlaCKG0JdNCbt
         QCh6vIltKQb0I/kzRkyDonP+EShCOXPocprlJW+3NaXJxB5QxCyrLoIWUWEyRETomziM
         TfXA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=FtkCvfeG;
       spf=pass (google.com: domain of viresh.kumar@linaro.org designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=viresh.kumar@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com. [2607:f8b0:4864:20::542])
        by gmr-mx.google.com with ESMTPS id a2si158603qkl.4.2020.09.09.07.45.10
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 09 Sep 2020 07:45:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of viresh.kumar@linaro.org designates 2607:f8b0:4864:20::542 as permitted sender) client-ip=2607:f8b0:4864:20::542;
Received: by mail-pg1-x542.google.com with SMTP id 34so2201150pgo.13
        for <clang-built-linux@googlegroups.com>; Wed, 09 Sep 2020 07:45:10 -0700 (PDT)
X-Received: by 2002:a17:902:bcc2:: with SMTP id o2mr1119626pls.87.1599662709159;
        Wed, 09 Sep 2020 07:45:09 -0700 (PDT)
Received: from localhost ([122.181.54.133])
        by smtp.gmail.com with ESMTPSA id q190sm3104975pfc.176.2020.09.09.07.45.08
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 09 Sep 2020 07:45:08 -0700 (PDT)
Date: Wed, 9 Sep 2020 20:14:56 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: kernel test robot <lkp@intel.com>
Cc: Pali =?utf-8?B?Um9ow6Fy?= <pali@kernel.org>, kbuild-all@lists.01.org,
	clang-built-linux@googlegroups.com, Andrew Lunn <andrew@lunn.ch>
Subject: Re: [vireshk-pm:cpufreq/arm/linux-next 10/11]
 drivers/cpufreq/armada-37xx-cpufreq.c:487:34: warning: unused variable
 'armada37xx_cpufreq_of_match'
Message-ID: <20200909144456.fqtfxgb65wklpotk@vireshk-i7>
References: <202009092246.dXN320DE%lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <202009092246.dXN320DE%lkp@intel.com>
User-Agent: NeoMutt/20180716-391-311a52
X-Original-Sender: viresh.kumar@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=FtkCvfeG;       spf=pass
 (google.com: domain of viresh.kumar@linaro.org designates 2607:f8b0:4864:20::542
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

On 09-09-20, 22:39, kernel test robot wrote:
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/vireshk/pm.git cpufreq/arm/linux-next
> head:   01a6fc5a1d89da732cce368c12c390fddefba4b0
> commit: 04d40f6ba24553fb85b5462d61e73d007d9900c6 [10/11] cpufreq: armada-37xx: Add missing MODULE_DEVICE_TABLE
> config: arm64-randconfig-r011-20200909 (attached as .config)
> compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project 8893d0816ccdf8998d2e21b5430e9d6abe7ef465)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install arm64 cross compiling tool for clang build
>         # apt-get install binutils-aarch64-linux-gnu
>         git checkout 04d40f6ba24553fb85b5462d61e73d007d9900c6
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=arm64 
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
> 
> All warnings (new ones prefixed by >>):
> 
> >> drivers/cpufreq/armada-37xx-cpufreq.c:487:34: warning: unused variable 'armada37xx_cpufreq_of_match' [-Wunused-const-variable]
>    static const struct of_device_id armada37xx_cpufreq_of_match[] = {
>                                     ^
>    1 warning generated.
> 
> # https://git.kernel.org/pub/scm/linux/kernel/git/vireshk/pm.git/commit/?id=04d40f6ba24553fb85b5462d61e73d007d9900c6
> git remote add vireshk-pm https://git.kernel.org/pub/scm/linux/kernel/git/vireshk/pm.git
> git fetch --no-tags vireshk-pm cpufreq/arm/linux-next
> git checkout 04d40f6ba24553fb85b5462d61e73d007d9900c6
> vim +/armada37xx_cpufreq_of_match +487 drivers/cpufreq/armada-37xx-cpufreq.c
> 
>    486	
>  > 487	static const struct of_device_id armada37xx_cpufreq_of_match[] = {
>    488		{ .compatible = "marvell,armada-3700-nb-pm" },
>    489		{ },
>    490	};
>    491	MODULE_DEVICE_TABLE(of, armada37xx_cpufreq_of_match);
>    492	

Fixed and pushed again, thanks.

-- 
viresh

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200909144456.fqtfxgb65wklpotk%40vireshk-i7.
