Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBE4G67WQKGQE5HXH2DA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73e.google.com (mail-qk1-x73e.google.com [IPv6:2607:f8b0:4864:20::73e])
	by mail.lfdr.de (Postfix) with ESMTPS id 37C1BED00B
	for <lists+clang-built-linux@lfdr.de>; Sat,  2 Nov 2019 18:55:32 +0100 (CET)
Received: by mail-qk1-x73e.google.com with SMTP id 22sf8713998qka.23
        for <lists+clang-built-linux@lfdr.de>; Sat, 02 Nov 2019 10:55:32 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1572717331; cv=pass;
        d=google.com; s=arc-20160816;
        b=wlsNNzdmrTCL57UwIfcHTmqTIGNQrYN22hvltgvc3UIoZRloW8jOTRK2sLmGQLDI4c
         Dp0NVQe2f1graVkWSVVKxycbbdCcp2sYHWIEMDigAfw15hEZkqCTUP0Mkv55va/o6jmv
         Jdh1HDM3wPpo7+FFUELQ/EGd/NLY4KP9YkE9Vu76kzXG/G7O4lROlPZhfvKWvt7hsXXq
         cm222+kq1/SN/mv1OOSz05r14YMq+5ceGDhvz4cO2FhwOeiXgZsV3DTQunU2WNa0bsI6
         M7OvchraWyD1YnC4Rdw/6aK1Tw+omjwo0TBNPkT4e52xVoMjJOuLRWrMs8twDiehl1MK
         i5Rg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=iB2f1eDTxF78cD4hWCPsGRkyAb1fvZygxZKvNoFtSzs=;
        b=a2+IdthpuZb+Px6jbj9R059XCKswKY21K7fUP9c1OSyCFsX9M534iya37yjfBuE/t0
         SphOFMl26OLIWSJFq4eeArsPP2HcIBGwtp4zz3RzYlu1oaJRHcnQsKOKyj/mM1p+phfJ
         cXapLVZk+gxdZZv8U2TB7xYPgGIQsLVBRPYS4LSf4+5ZWj8wIcQ+qy05xWDPDtx0nyUf
         7x6GbzJq5t+XPvPMeE7xDFyFNthbndHDeqoISLeBmMNTXd7t0mfPFb1Q5Loxk2loUcJv
         NmrkbQ4UrqTPnblUtsczDOmHnCo+Y43X4kBqv0Quo727U/4igargGSGz4NR9xDeRpxMp
         V45A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=i7YzdzCL;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::241 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=iB2f1eDTxF78cD4hWCPsGRkyAb1fvZygxZKvNoFtSzs=;
        b=cbiF9u72PItoW7B0IYJQRNed58zZ8JR7psk2szMPpmHXT7vw85sLdekSuJ54LVPebx
         TnaV0IGk3dTYLvQkyycmk1f+KwGwfInjvdkNjOZb0MlMDOENF/YBVnqimiS7nbMQZtZT
         hosqy5xz2dnxVKCEo0RCWqwaJgEK2+4cMEBKF2hmdkB/AaCtyOkOZCmLXk+SI8fTfjhu
         EC0wMsKtFQ5/LaSzcPE/7pyPMLbeNW/byMDutvJ68MIcecnZ7Zixh8RM1I9PS/FqoWqI
         tfrkxY0nzjABK+GvxxW0TJBB8N//28mNMEUz9qXYEYTFo9yb9Y7MIatBwUc0Y7YJPHiG
         NzyQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=iB2f1eDTxF78cD4hWCPsGRkyAb1fvZygxZKvNoFtSzs=;
        b=g3oDOgjXzWBiL03FW6+oQAuYsiYwVNAn/mRiTpPaHJ3FjioHunTjG7G7glhuPfBFlf
         GZe7QLjLljDQJ6NF4Uy42aJV+MvzV3BjmVkueMfA88Mi024IoS2IxADXbmUdUFocSB38
         iepIR+kwfCOV0jYr1YwsWk/mJlmzWjuvcGkMTMx9TDotkNjjZ6UZmfbfezpkk0faOA9+
         vPmZl7HdEqTSP6LCcAolgwB5mHMV2jeZWPTyle0/a/ZeKxHatDQRsp4Oy2uUrn34TPyW
         e6pZh8sjgT5IvLiS90sphWSbQv62Eox3QgYtqlFsbk1JR7FJ0RrRkHUwAOHZUpPk9va5
         nu3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=iB2f1eDTxF78cD4hWCPsGRkyAb1fvZygxZKvNoFtSzs=;
        b=REFSDcV0UwMbVCycCOGfVbKI9SM5xxBp8k2Ho1St8jw/ajZbgtatApWikkNblfT0GY
         9Jfmyl5kCKQ3iRan/oVDcX/GeeIZygFnOLur38KwuCIL4BOdcVaQU8wQWUF91MHVcEyq
         UP46bZMfBZX2FxfvR4mYiQnZzDZXouWUQlKHos+9mIFSYCIxph7F7Om1O4zBtvfNtQiC
         7zM50pT3RMQ/bVmGhfmS5V3cddInHuZfDfmkr8gx7xUdxKBiR+PHGDLNcBJ0lSblNfAF
         0PZ4/SRyWE2E7K0GX5WGPriUG4BVj6sB7gNSzKaLHK4eNJgwc4eZ+ESQMxyIGW0Sxh1A
         Vu5g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVmKcFXE8VccpCZFpGSbZUVK1mGf+i3D8k3Drlk/2i7u8zjqA9L
	UXIN2waj9YrsjV6ijZj3Ry0=
X-Google-Smtp-Source: APXvYqyHAGOUjogyQbliNO4WAZt40uyjGxeFfqCYOGKXfFLNArK2BWT63FQxhEjX7tVjhBpPfNeQDA==
X-Received: by 2002:ac8:344a:: with SMTP id v10mr5584206qtb.323.1572717331268;
        Sat, 02 Nov 2019 10:55:31 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:2786:: with SMTP id n128ls3268474qkn.0.gmail; Sat, 02
 Nov 2019 10:55:30 -0700 (PDT)
X-Received: by 2002:ae9:d8c2:: with SMTP id u185mr9433175qkf.120.1572717330878;
        Sat, 02 Nov 2019 10:55:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572717330; cv=none;
        d=google.com; s=arc-20160816;
        b=ezhyDJg8m9XvapABcz48aFI7xtZpJCf91/Y2L1hZ09LFH/JBFVAFQ1IIbkINogj1x7
         cUo0o6syUTZsLSLTXSIcrh+xvHQORvLuSOjbQin40wE081HiRJUSyxA1QNZM75hmJjlh
         Tz9tEs8gzmfm5PWz2bQ+F2QcWVCnCsF/BGMmZSvfzQNZ8kIi/WcN0JqB/7aP3/bu8ThX
         9A0/G5nKq7BFrOllS9BgqDBD88Mfuua+1NHPZnL8dTUZHVKOiXoNTEp1PcDcnZHCFjNg
         RltwxWpjxH/YZIqBcDe/nBZGI17Us84dJSx2gdUPaB5JEVbDZoQXsue+OWmuYVAvyg9P
         BYyA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=qc/XxeNXikMtgiT/ASZ7Nxj06lRJPuYP0nqRpKc4K74=;
        b=aadRjXrpUH6aKA7hMpOU/OczWX0kZSEr5ZvAooxUYTQ/RV1+e0OkC7SZln4Y3Q4Rd+
         zbKwzdcMez14dJrFy//8mkW8i6bu5Os3NT/63RgEPb2A8l3Liku9qgREgplGQqeKT/OM
         aAKm1ATkj2t5rH5dLDmmMj5+M6Tl0esO1q8oLRkWE4I3qNj+6euthFx5qlVLdWpToh5i
         gKR24eVvaPCSXj/L9AeVyWWr6gwVtEYtiQhktKCAOYOQGkNCk5DB4dh3VVxl2y6UzOIy
         VihB1NP0enSL94MC8sac8mV3zk23shHlJnmfABYvjSstpwzi8bxGEWeLvuOfYkOGIN6Y
         AIZw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=i7YzdzCL;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::241 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-oi1-x241.google.com (mail-oi1-x241.google.com. [2607:f8b0:4864:20::241])
        by gmr-mx.google.com with ESMTPS id z90si699147qtc.3.2019.11.02.10.55.30
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 02 Nov 2019 10:55:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::241 as permitted sender) client-ip=2607:f8b0:4864:20::241;
Received: by mail-oi1-x241.google.com with SMTP id e9so6908737oif.8
        for <clang-built-linux@googlegroups.com>; Sat, 02 Nov 2019 10:55:30 -0700 (PDT)
X-Received: by 2002:aca:2104:: with SMTP id 4mr13293152oiz.130.1572717329982;
        Sat, 02 Nov 2019 10:55:29 -0700 (PDT)
Received: from ubuntu-m2-xlarge-x86 ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id e93sm3451035otb.60.2019.11.02.10.55.29
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Sat, 02 Nov 2019 10:55:29 -0700 (PDT)
Date: Sat, 2 Nov 2019 10:55:28 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Matti Vaittinen <matti.vaittinen@fi.rohmeurope.com>
Cc: kbuild@lists.01.org, Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com,
	kbuild test robot <lkp@intel.com>
Subject: Re: [RFC PATCH v3 14/15] gpio: Add definition for GPIO direction
Message-ID: <20191102175528.GA49760@ubuntu-m2-xlarge-x86>
References: <201911030009.jfBGqgTX%lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <201911030009.jfBGqgTX%lkp@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=i7YzdzCL;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::241 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Sun, Nov 03, 2019 at 12:44:35AM +0800, kbuild test robot wrote:
> CC: kbuild-all@lists.01.org
> In-Reply-To: <f08d265c12ebf185c0e1dbbfe0a3f86de4907194.1572606437.git.matti.vaittinen@fi.rohmeurope.com>
> References: <f08d265c12ebf185c0e1dbbfe0a3f86de4907194.1572606437.git.matti.vaittinen@fi.rohmeurope.com>
> TO: Matti Vaittinen <matti.vaittinen@fi.rohmeurope.com>
> 
> Hi Matti,
> 
> [FYI, it's a private test report for your RFC patch.]
> [auto build test WARNING on ljones-mfd/for-mfd-next]
> [also build test WARNING on v5.4-rc5 next-20191031]
> [if your patch is applied to the wrong git tree, please drop us a note to help
> improve the system. BTW, we also suggest to use '--base' option to specify the
> base tree in git format-patch, please see https://stackoverflow.com/a/37406982]
> 
> url:    https://github.com/0day-ci/linux/commits/Matti-Vaittinen/Support-ROHM-BD71828-PMIC/20191102-222004
> base:   https://git.kernel.org/pub/scm/linux/kernel/git/lee/mfd.git for-mfd-next
> config: arm64-defconfig (attached as .config)
> compiler: clang version 10.0.0 (git://gitmirror/llvm_project cecc0d27ad58c0aed8ef9ed99bbf691e137a0f26)
> reproduce:
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # save the attached .config to linux build tree
>         make.cross ARCH=arm64 
> 
> If you fix the issue, kindly add following tag
> Reported-by: kbuild test robot <lkp@intel.com>
> 
> All warnings (new ones prefixed by >>):
> 
> >> drivers//gpio/gpio-tegra.c:35:9: warning: 'GPIO_OUT' macro redefined [-Wmacro-redefined]
>    #define GPIO_OUT(t, x)          (GPIO_REG(t, x) + 0X20)
>            ^
>    include/linux/gpio/driver.h:26:9: note: previous definition is here
>    #define GPIO_OUT        0
>            ^
> >> drivers//gpio/gpio-tegra.c:36:9: warning: 'GPIO_IN' macro redefined [-Wmacro-redefined]
>    #define GPIO_IN(t, x)           (GPIO_REG(t, x) + 0x30)
>            ^
>    include/linux/gpio/driver.h:25:9: note: previous definition is here
>    #define GPIO_IN         1
>            ^
>    2 warnings generated.
> 
> vim +/GPIO_OUT +35 drivers//gpio/gpio-tegra.c
> 
> 3c92db9ac0ca3e arch/arm/mach-tegra/gpio.c Erik Gilling    2010-03-15  29  
> b546be0db95584 drivers/gpio/gpio-tegra.c  Laxman Dewangan 2016-04-25  30  #define GPIO_REG(tgi, x)	(GPIO_BANK(x) * tgi->soc->bank_stride + \
> 5c1e2c9dc684f2 drivers/gpio/gpio-tegra.c  Stephen Warren  2012-03-16  31  					GPIO_PORT(x) * 4)
> 3c92db9ac0ca3e arch/arm/mach-tegra/gpio.c Erik Gilling    2010-03-15  32  
> b546be0db95584 drivers/gpio/gpio-tegra.c  Laxman Dewangan 2016-04-25  33  #define GPIO_CNF(t, x)		(GPIO_REG(t, x) + 0x00)
> b546be0db95584 drivers/gpio/gpio-tegra.c  Laxman Dewangan 2016-04-25  34  #define GPIO_OE(t, x)		(GPIO_REG(t, x) + 0x10)
> b546be0db95584 drivers/gpio/gpio-tegra.c  Laxman Dewangan 2016-04-25 @35  #define GPIO_OUT(t, x)		(GPIO_REG(t, x) + 0X20)
> b546be0db95584 drivers/gpio/gpio-tegra.c  Laxman Dewangan 2016-04-25 @36  #define GPIO_IN(t, x)		(GPIO_REG(t, x) + 0x30)
> b546be0db95584 drivers/gpio/gpio-tegra.c  Laxman Dewangan 2016-04-25  37  #define GPIO_INT_STA(t, x)	(GPIO_REG(t, x) + 0x40)
> b546be0db95584 drivers/gpio/gpio-tegra.c  Laxman Dewangan 2016-04-25  38  #define GPIO_INT_ENB(t, x)	(GPIO_REG(t, x) + 0x50)
> b546be0db95584 drivers/gpio/gpio-tegra.c  Laxman Dewangan 2016-04-25  39  #define GPIO_INT_LVL(t, x)	(GPIO_REG(t, x) + 0x60)
> b546be0db95584 drivers/gpio/gpio-tegra.c  Laxman Dewangan 2016-04-25  40  #define GPIO_INT_CLR(t, x)	(GPIO_REG(t, x) + 0x70)
> 3737de42afb8d7 drivers/gpio/gpio-tegra.c  Laxman Dewangan 2016-04-25  41  #define GPIO_DBC_CNT(t, x)	(GPIO_REG(t, x) + 0xF0)
> 3737de42afb8d7 drivers/gpio/gpio-tegra.c  Laxman Dewangan 2016-04-25  42  
> b546be0db95584 drivers/gpio/gpio-tegra.c  Laxman Dewangan 2016-04-25  43  
> 
> :::::: The code at line 35 was first introduced by commit
> :::::: b546be0db955840e2c14aae5d8e5f93a456f9982 gpio: tegra: Get rid of all file scoped global variables
> 
> :::::: TO: Laxman Dewangan <ldewangan@nvidia.com>
> :::::: CC: Linus Walleij <linus.walleij@linaro.org>
> 
> ---
> 0-DAY kernel test infrastructure                Open Source Technology Center
> https://lists.01.org/pipermail/kbuild-all                   Intel Corporation
> 

Hi Matti,

The 0day team has been doing clang builds for us and sending them to our
mailing list for triage; this one popped up from one of your patches. It
appears that some drivers define this macro already. Mind taking a look
to see how you could resolve this? I did not CC any mailing lists aside
from our own because your patch cc'd six mailing lists and I am not sure
they would find this interesting.

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191102175528.GA49760%40ubuntu-m2-xlarge-x86.
